# Period and index on real surfaces

This roadmap plans Olivier Benoist's work on the period-index problem for function fields of real algebraic surfaces
(*The period-index problem for real surfaces*, Publ. Math. IHÉS 130 (2019), 63–110), from what Mathlib and Tau Ceti
contain at the pinned commits (Mathlib `082e2d3`, Tau Ceti `f790474`) to the paper's main theorems. It is a new roadmap
in the area *arithmetic geometry*. It plans what is specific to Benoist's argument and the real-function-field theory
that no roadmap owns yet, and imports equivariant topology, real Noether–Lefschetz theory, cycle classes, period-index
arithmetic and purity from the roadmaps that own them.

## The theorems

Let S be a connected smooth projective surface over ℝ, ℝ(S) its function field, and for α ∈ Br(ℝ(S)) let per(α) be its
order and ind(α) its index (the degree of the division algebra in its class; equivalently the least, and the greatest
common divisor, of the degrees of finite splitting fields). De Jong's theorem over ℂ and a norm argument already give
ind(α) ∈ {per(α), 2 per(α)}. The targets are:

- **Theorem 0.3.** If S(ℝ) = ∅, then ind(α) = per(α) for every α ∈ Br(ℝ(S)), ramified or not.
- **Theorem 0.4.** If U is a connected smooth real surface and α ∈ Br(U) evaluates to 0 ∈ Br(ℝ) at every real point of U,
  then ind(α) = per(α).
- **Theorem 0.5.** Let α ∈ Br(S) have period n and let Θ ⊂ S(ℝ) be the union of the components where α evaluates
  nontrivially. If n is odd, or if some lift ξ ∈ H²_G(S(ℂ), 𝔽₂) of (n/2)α in the real Kummer sequence has first real
  component [ξ]₁ vanishing on Θ, then ind(α) = n; otherwise ind(α) = 2n.
- **Theorem 0.6.** A real Enriques surface carries an unramified class with ind ≠ per exactly when S(ℝ) is
  nonorientable and, if exactly one of its two halves is nonempty, S(ℝ) has an odd number of components of odd Euler
  characteristic.
- **Proposition 0.7.** Over the real Puiseux field K = ⋃ ℝ((t^{1/n})) there is a K3 surface S with H¹(S(K), 𝔽₂) = 0 and a
  class of Br(S)[2] of index 4: the topological criterion of Theorem 0.5 fails over non-archimedean real closed fields.
- **Theorem 0.10.** If S(ℝ) = ∅, every quadratic form of rank ≥ 5 over ℝ(S) is isotropic.
- **Theorem 0.12.** Every field of transcendence degree 2 over ℝ has Elman–Lam u-invariant ≤ 4 (the maximal dimension of an
  anisotropic form with zero signature at every ordering), with equality for function fields of real surfaces.
- **Theorem 0.13.** If C is an integral curve over ℝ with C(ℝ) = ∅, every del Pezzo surface of degree 4 over ℝ(C) has a
  rational point.

Lang's conjecture (function fields of i-dimensional real varieties without real points are C_i) and Pfister's
conjecture (u(K) ≤ 2^i in transcendence degree i) are the context of Theorems 0.10 and 0.12; they are stated here only
as context and never used. Lieblich's bound ind | per² over finite fields (Theorem 0.2 of the paper) is background.

## The argument

The core is the case of period 2, Proposition 6.6. Given α of period 2 whose ramification divisor R is SNC, Benoist
builds double covers p : T → S branched along R and a moving curve D, with prescribed real topology, so that
α_{ℝ(T)} is unramified (Proposition 4.2), its topological obstruction in H³_G(T(ℂ), ℤ(1)) vanishes (Proposition 4.4), and
an integral lift β of it can be adjusted so that p_*(β − 2γ) is algebraic (Proposition 4.5). The family of such covers
contains a cover carrying a real-pointless curve C whose Noether–Lefschetz locus has the expected dimension
(Proposition 5.4); the real analogue of Green's infinitesimal criterion then moves β − 2γ into an open cone of classes
that become algebraic on a nearby real fibre, and the real Lefschetz (1,1) theorem kills α on that fibre. An induction
on the period (Proposition 6.7) gives Theorems 0.3, 0.4 and the first half of 0.5. The obstruction (Proposition 7.1, the
second half of Theorem 0.5) comes from a topological analysis of covers of even degree: trace sequences of permutation
sheaves, an alternating double cover and circle double covers detecting the first real component. Pfister's criterion
turns Theorem 0.4 into Theorem 0.12, and Amer–Brumer turns Theorem 0.10 into Theorem 0.13. Section 1 of the paper runs
the same strategy over ℂ, where Voisin's kernel-cone theorem gives a new proof of de Jong's theorem for unramified
classes.

Two of the paper's general statements are planned only in a restricted form. The printed proofs of Propositions 4.4,
4.5 and 6.6 assume, without saying so, that α evaluates nontrivially on all of the avoided set Ψ; the main induction
only ever applies them when the evaluation of the half-period class is constant on Ψ, and that uniform case is proved
here (PI.4, PI.6). The general statements are recorded with gap G1. The final step of Proposition 6.6 also needs the
Kummer representative to be transported together with the pair (T, p⁻¹R); this is gap G3.

## What the libraries contain

Mathlib has Brauer groups of fields (`BrauerGroup`), ring preorderings and orderings (`RingPreordering`,
`RingPreordering.IsOrdering`), semireal and real closed fields (`IsSemireal`, `IsRealClosed`), quadratic forms with
anisotropy, diagonalisation and Sylvester's law over ℝ, quadratic algebras (`QuadraticAlgebra`), Clifford algebras,
Hahn and Laurent series, transcendence degree (`Algebra.trdeg`), and schemes with function fields. Tau Ceti adds the
group structure on the Brauer group of a field, base change of Brauer classes, central division representatives, the
index of a central simple algebra (`TauCeti.Algebra.index`), the Brauer group of ℝ, hyperbolic planes and base change of
quadratic forms. Neither library has the Harrison topology, signatures at arbitrary orderings, the Elman–Lam invariant,
Brauer groups of schemes, equivariant Betti cohomology of real varieties, cycle class maps or variations of Hodge
structure; the roadmap takes those from their owners or plans them in PI.0.

## Ownership

- PI.0 is the real-function-field tranche that QuadraticFormInvariantsPartII proposed as a separate roadmap
  QuadraticFormsRealFunctionFields, which does not exist; it is owned here and moves there unchanged if that roadmap is
  created (see *Structure* at the end). It imports only Tau Ceti, QuadraticFormInvariantsPartII Q2.5 and
  SemisimpleAlgebrasPartII and never imports PI.1–PI.9.
- Equivariant Betti cohomology, its fixed-locus decompositions, twisted Bocksteins, sign local systems of double covers,
  trace sequences, circle extensions, equivariant purity and duality, Ehresmann and stratified transport, and the
  double-cover chase are AlgebraicTopologyPartII (AT2.6–AT2.16).
- Real weight-two variations, the Kodaira–Spencer contraction, Griffiths' formula, the normal-boundary factorisation,
  Green's real open-cone theorem, Voisin's kernel cone, integral weak Lefschetz and Andreotti–Frankel are
  HodgeStructuresPartII H.8.
- Index of a Brauer class, splitting degrees, period divides index, corestriction and index under extension are
  SemisimpleAlgebrasPartII SA.0–SA.1.
- Residues and purity for Brauer groups are PurityForFlatCohomology PF.6; cycle class maps, the topological Brauer
  sequences and primitivity of the Picard image are MotivesAndAlgebraicCycles MC.2, the Lefschetz (1,1) theorems MC.7;
  Kummer and comparison sequences are SchemeAndStackFoundations SF.6; Enriques surfaces are
  EnriquesSurfacesAndIntegralNonexistence E0.
- Owned here: everything specific to Benoist's construction — the double covers and their topology, the Noether–Lefschetz
  locus, the real-locus control, the splitting, the induction, the obstruction and the examples.

## Conventions

ℝ is the real numbers except where an arbitrary real closed field is named (PI.0, PI.1/real-closed-norm-bound, PI.9).
G = Gal(ℂ/ℝ) acts on X(ℂ) with fixed locus X(ℝ). H^i(Y) means H^i(Y, 𝔽₂). ℤ(j) is ℤ with conjugation acting by
(−1)^j (Benoist's i^jℤ); ω ∈ H¹_G(pt, ℤ(1)) is the nonzero class. Equivariant cohomology is Borel/Grothendieck
equivariant sheaf cohomology. Br(X) = H²_ét(X, 𝔾_m) ⊂ Br(k(X)) for smooth integral X. [ξ]_i is the degree-i real component
of an equivariant class: restriction to X(ℝ), canonical decomposition H^k_G(X(ℝ), 𝔽₂) = ⊕ H^i(X(ℝ)), projection. Θ(α) is
the nonzero evaluation locus; Ψ ⊃ Θ the set a cover must avoid; Ξ = S(ℝ) ∖ Ψ. The Elman–Lam invariant counts forms of
zero signature at every ordering; for nonreal fields it is the classical u-invariant. Each target below names its
suggested Lean home; the suggested file `research/blueprint/suggested/RealSurfacePeriodIndex.lean` types the
field-level statements and lists the geometric ones that are README targets.

## Layers

| Layer | Content |
|---|---|
| PI.0 | orderings, real closures, signatures, Elman–Lam invariant, Witt, Springer, Amer–Brumer, Albert, Pfister |
| PI.1 | unramified loci, real evaluation, de Jong's theorem, the norm bound |
| PI.2 | unramified classes on complex surfaces (Section 1) |
| PI.3 | ramified double covers and their topology (Section 3) |
| PI.4 | pulling back a period-two class (Section 4) |
| PI.5 | Noether–Lefschetz loci for double covers (Section 5) |
| PI.6 | real-locus control and the degree-two splitting (§§6.1–6.2) |
| PI.7 | the main theorems and the u-invariant (§§6.3–6.4) |
| PI.8 | the obstruction (Section 7) |
| PI.9 | real Enriques surfaces and the Puiseux counterexample (Section 8) |

Locators refer to the published version (printed pages 63–110), read in full for this design. Each target gives its
statement, hypotheses, a proof or construction outline, its uses, API and unit tests for definitions and constructions,
acceptance checks, direct prerequisites and sources.


## Layer PI.0: Real function fields: orderings, real closures and the Elman–Lam invariant

The space of orderings X\_F of a field with the Harrison topology, its compactness and inverse limits; real closures at a specified ordering (built on upstream RealAlgebraicGeometry Layer 1, `exists_realClosure`); signatures of quadratic forms at orderings; the clopen locus of orderings where a Brauer class survives; the Elman–Lam u-invariant (zero total signature); a C₁ field has trivial Brauer group; the u-invariant of a real curve function field is ≤ 2; Witt's theorem on Brauer classes of real curves (classes vanishing at all real closures, or at a dense set of real points, are zero, ramified or not); Springer's theorem over complete discretely valued fields; the Amer–Brumer theorem; Albert's isotropy criterion for Albert forms; the Elman–Lam bound for fields with u(F(√−1)) ≤ 4; Pfister's criterion (index two for real-closure-trivial classes implies u ≤ 4) in transcendence degree 2. This layer is the real-function-field tranche that QuadraticFormInvariantsPartII proposed as QuadraticFormsRealFunctionFields; it never imports the applications of PI.7.

*Builds on:* `tauceti:TauCetiRoadmap/QuadraticFormInvariants#layer-1-hyperbolic-planes-and-witt-theory`, `tauceti:TauCetiRoadmap/QuadraticFormInvariants#layer-5-the-brauer-valued-invariants`, `QuadraticFormInvariantsPartII:Q2.5`, `SemisimpleAlgebrasPartII:SA.0`, `SchemeAndStackFoundations:SF.2`.

<a id="pi-0-ordering-space"></a>

### The space of orderings with the Harrison topology

`PI.0/ordering-space` · definition — planet: **Space of orderings**

For a field F, the space of orderings X\_F is the set of positive cones P ⊂ F of field orderings, that is the ring preorderings P of F with P ∪ (−P) = F and P ∩ (−P) = {0} (Mathlib's RingPreordering with RingPreordering.IsOrdering). For a ∈ Fˣ write a >\_P 0 when a ∈ P, and H(a) = {P ∈ X\_F : a >\_P 0}. The Harrison topology on X\_F is the topology generated by the sets H(a), a ∈ Fˣ. A field embedding ι : F → L induces the restriction map X\_L → X\_F, Q ↦ ι⁻¹(Q). X\_F is empty exactly when F is nonreal, that is when −1 is a sum of squares in F.

**Hypotheses and conventions.** F is a field; orderings are positive cones of total orders compatible with the field operations. The topology is generated by the subbasis H(a), a ∈ Fˣ; complements H(a)ᶜ = H(−a) are again basic.

**Construction.**

1. Take the subtype of RingPreordering F satisfying RingPreordering.IsOrdering; H(a) is the set of P containing a.
2. The complement of H(a) in X\_F is H(−a), because for a ≠ 0 exactly one of a, −a lies in P; so each H(a) is clopen.
3. Restriction along ι sends an ordering Q of L to ι⁻¹(Q), an ordering of F, and pulls H(a) back to H(ι a); hence it is continuous.
4. Emptiness: an ordering contains all sums of squares and not −1; conversely if −1 is not a sum of squares, the sums of squares form a proper preordering, contained in an ordering by Zorn (the preordering-extension lemma of upstream RealAlgebraicGeometry Layer 1, which uses Mathlib's RingPreordering API).

**Uses.** Benoist 2019, §6.4, pp. 95–96: the sets Z\_i of orderings where a Brauer class survives are closed subsets of the compact space X\_{K\_i}. PI.0/signature-at-ordering: signatures are functions on X\_F. PI.0/elman-lam-u: the Elman–Lam invariant quantifies over all of X\_F. PI.0/brauer-nonvanishing-locus: the nonvanishing locus of a Brauer class is a clopen subset of X\_F.

**API.**

- `RealFunctionField.OrderingSpace` (data): The type of orderings of F, the subtype of RingPreordering F cut out by RingPreordering.IsOrdering.
- `RealFunctionField.OrderingSpace.harrisonSet` (constructor): H(a) = {P : a ∈ P} for a ∈ Fˣ.
- `RealFunctionField.OrderingSpace.instTopologicalSpace` (instance): The Harrison topology, generated by the sets H(a).
- `RealFunctionField.OrderingSpace.isClopen_harrisonSet` (characterisation): Each H(a) is clopen, with complement H(−a).
- `RealFunctionField.OrderingSpace.restrict` (functoriality): A field embedding ι : F →+\* L gives a continuous map X\_L → X\_F, Q ↦ ι⁻¹(Q), with restrict id = id and restrict (ι' ∘ ι) = restrict ι ∘ restrict ι'.
- `RealFunctionField.OrderingSpace.restrict_preimage_harrisonSet` (simp): restrict ι ⁻¹' H(a) = H(ι a).
- `RealFunctionField.OrderingSpace.isEmpty_iff` (characterisation): X\_F is empty iff ¬ IsSemireal F, that is iff −1 is a sum of squares.
- `RealFunctionField.OrderingSpace.sign` (data): sign\_P(a) ∈ {±1} for a ∈ Fˣ, with sign\_P(ab) = sign\_P(a) sign\_P(b) and sign\_P(c²) = 1.
- `RealFunctionField.OrderingSpace.ofLinearOrder` (compatibility): A linear order making F a strictly ordered ring gives the ordering {a : 0 ≤ a}, and every ordering arises this way.

**Unit tests.**

- `RealFunctionField.OrderingSpace.subsingleton_real` (computation): OrderingSpace ℝ has exactly one element, the cone of nonnegative reals.
- `RealFunctionField.OrderingSpace.isEmpty_complex` (degenerate): OrderingSpace ℂ is empty.
- `RealFunctionField.OrderingSpace.card_sqrt_two` (computation): For K = ℚ(√2) (any field with finrank ℚ K = 2 containing a square root of 2), OrderingSpace K has exactly two elements.
- `RealFunctionField.OrderingSpace.sumSq_not_ordering` (non-example): The preordering of sums of squares of the rational function field ℝ(t) is not an ordering: neither t nor −t is a sum of squares.

**Acceptance.** X\_ℝ consists of one point, the cone of nonnegative reals. X\_ℂ is empty, since −1 is a square. X\_{ℚ(√2)} has exactly two points, distinguished by the sign of √2.

**Direct prerequisites:** `RingPreordering` (Mathlib); `RingPreordering.IsOrdering` (Mathlib); `IsSemireal` (Mathlib); `TopologicalSpace.generateFrom` (Mathlib).

**Source:** BCR, Example 7.1.4 a), p. 135: The real spectrum of a field is its set of orderings with the Harrison topology; it is nonempty exactly when the field is real. B19, §6.4, p. 95: The proof of Theorem 0.12 uses the space of orderings of each finite extension K\_i with the Harrison topology. EKM, §33, p. 133: The order space of a formally real field and continuous functions on it, used for the total signature.

*Suggested home:* `TauCeti/FieldTheory/Ordering/RealFunctionField/Harrison`, namespace `TauCeti.RealFunctionField`.

<a id="pi-0-harrison-compact"></a>

### Compactness of the Harrison space and inverse limits

`PI.0/harrison-compact` · theorem

For every field F the space X\_F is compact, Hausdorff and totally disconnected. If F is the directed union of subfields F\_i, the restriction maps identify X\_F with the inverse limit of the X\_{F\_i}; consequently, if Z\_i ⊂ X\_{F\_i} are closed subsets with restriction mapping Z\_j into Z\_i for F\_i ⊂ F\_j, and the inverse limit of the Z\_i is empty, then some Z\_i is empty.

**Hypotheses and conventions.** F is a field; the F\_i form a directed family of subfields with union F.

**Proof.**

1. Embed X\_F into the product {±1}^{Fˣ} by P ↦ (sign\_P(a))\_a; the image is closed, being cut out by the cone axioms, each of which involves finitely many coordinates.
2. Tychonoff gives compactness; the product is Hausdorff and totally disconnected, and so is the closed subspace.
3. An ordering of F is the union of its restrictions to the F\_i, and compatible orderings of the F\_i glue, so X\_F → lim X\_{F\_i} is a continuous bijection of compact Hausdorff spaces, hence a homeomorphism.
4. An inverse limit of nonempty compact Hausdorff spaces is nonempty; so empty limit forces some Z\_i to be empty.

**Acceptance.** For F = ℝ(t) the space X\_F is infinite and compact. For the directed union of the finite extensions K\_i of a finitely generated K\_0 ⊂ K, the limit statement is exactly the Tychonoff step of Benoist p. 96.

**Direct prerequisites:** [The space of orderings with the Harrison topology](#pi-0-ordering-space); `isCompact_univ_pi` (Mathlib); `IsClosed` (Mathlib).

**Source:** BCR, Example 7.1.4 a), p. 135; Proposition 7.1.7, p. 136: The space of orderings with the Harrison topology is compact, totally disconnected and Hausdorff; ring maps induce continuous maps of real spectra. B19, §6.4, p. 96: The closed sets Z\_i are compact and Tychonoff's theorem gives an index with Z\_i empty.

*Suggested home:* `TauCeti/FieldTheory/Ordering/RealFunctionField/Harrison`, namespace `TauCeti.RealFunctionField`.

<a id="pi-0-real-closure-at-ordering"></a>

### Real closure at a specified ordering

`PI.0/real-closure-at-ordering` · definition — planet: **Real closure at an ordering**

For a field F and an ordering P ∈ X\_F, a real closure of F at P is a field R with IsRealClosed R together with a ring homomorphism ι : F → R making R algebraic over F, such that ι(P) is contained in the set of squares of R (equivalently ι is order-preserving for P and the unique ordering of R). Every pair (F, P) has a real closure. A class β ∈ Br(F) vanishes at P if β becomes trivial in Br(R) for every real closure (R, ι) at P; it vanishes at all real closures if this holds for every P.

**Hypotheses and conventions.** F a field, P an ordering of F; R real closed; ι algebraic. No uniqueness of the real closure is used: the vanishing predicates quantify over all real closures at P.

**Construction.**

1. Existence: convert P into a linear order on F with LinearOrder.mkOfAddGroupCone and IsOrderedRing.mkOfCone, then apply the upstream RealAlgebraicGeometry Layer 1 target exists\_realClosure, which gives an algebraic ordered real closure with a strictly monotone embedding.
2. Strict monotonicity sends P into the nonnegative elements of R, which are the squares of R because R is real closed (IsRealClosed.isSquare\_neg\_of\_not\_isSquare).
3. Brauer groups restrict along ι by TauCeti.BrauerGroup.baseChange; for real closed R, Br(R) has two elements, the trivial class and the quaternion class (−1,−1), because R(i) is algebraically closed and Br(R(i)/R) ≅ Rˣ/(R(i)ˣ norms) = Rˣ/R\_{>0}.

**Uses.** Benoist 2019, §6.4, p. 95: the hypothesis of Pfister's criterion: α vanishes over every real closure of K. PI.0/brauer-nonvanishing-locus: the set of orderings where a class survives over a real closure. PI.0/pfister-brauer-criterion: the real-closure vanishing hypothesis. PI.7/real-closure-pointwise-triviality: a real point of a surface gives a real closure of the function field through iterated Puiseux series.

**API.**

- `RealFunctionField.RealClosureAt` (structure): A real closed field R, a ring map ι : F →+\* R with R algebraic over F, and ι(P) ⊆ squares of R.
- `RealFunctionField.RealClosureAt.nonempty` (constructor): Every ordering P of F has a real closure (from upstream exists\_realClosure).
- `RealFunctionField.RealClosureAt.ordering_eq` (characterisation): ι⁻¹ of the cone of squares of R is P.
- `RealFunctionField.RealClosureAt.ofIsRealClosed` (constructor): If F is real closed, (F, id) is a real closure at its unique ordering.
- `RealFunctionField.RealClosureAt.restrict` (functoriality): A real closure of L at Q, composed with F → L, is a real closure of F at the restricted ordering when L/F is algebraic.
- `RealFunctionField.brauerGroup_realClosed` (equivalence): For real closed R, Br(R) ≃\* Multiplicative (ZMod 2), generated by the class of the quaternion algebra (−1,−1); for R = ℝ this is Tau Ceti's TauCeti.Quaternion.brauerGroupMulEquiv.
- `RealFunctionField.VanishesAtRealClosures` (data): The predicate on β ∈ Br(F): for every P and every real closure (R, ι) at P, baseChange ι β = 1.

**Unit tests.**

- `RealFunctionField.RealClosureAt.real_self` (computation): (ℝ, RingHom.id ℝ) is a RealClosureAt of ℝ at the cone of nonnegative reals.
- `RealFunctionField.VanishesAtRealClosures.of_not_isSemireal` (degenerate): If F is nonreal, every β ∈ Br(F) vanishes at all real closures (there are no orderings).
- `RealFunctionField.VanishesAtRealClosures.quaternion_real` (non-example): Over F = ℝ the Hamilton quaternion class does not vanish at all real closures.
- `RealFunctionField.brauerGroup_realClosed_real` (compatibility): For R = ℝ the equivalence brauerGroup\_realClosed agrees with TauCeti.Quaternion.brauerGroupMulEquiv.

**Acceptance.** (ℝ, id) is a real closure of ℝ at its unique ordering. The real algebraic numbers with the inclusion form a real closure of ℚ at its unique ordering. ℂ with an embedding of ℝ is not a real closure: it is not real closed.

**Direct prerequisites:** [The space of orderings with the Harrison topology](#pi-0-ordering-space); `IsRealClosed` (Mathlib); `IsRealClosed.isSquare_neg_of_not_isSquare` (Mathlib); `Algebra.IsAlgebraic` (Mathlib); `TauCeti.BrauerGroup.baseChange` (Tau Ceti); `TauCeti.Quaternion.brauerGroupMulEquiv` (Tau Ceti).

**Source:** B19, §6.4, p. 95: Pfister's criterion is phrased through Brauer classes vanishing over all real closures of K. BCR, §1.3 and Example 7.1.4 a), pp. 9–14, 135: Real closures of ordered fields and orderings as points of the real spectrum of a field.

*Suggested home:* `TauCeti/FieldTheory/Ordering/RealFunctionField/RealClosure`, namespace `TauCeti.RealFunctionField`.

<a id="pi-0-signature-at-ordering"></a>

### Signature of a quadratic form at an ordering

`PI.0/signature-at-ordering` · definition

Let F be a field of characteristic 0, q a nondegenerate quadratic form on a finite-dimensional F-vector space and P ∈ X\_F. The signature sign\_P(q) ∈ ℤ is #{i : a\_i >\_P 0} − #{i : a\_i <\_P 0} for any orthogonal diagonalisation q ≅ ⟨a\_1, …, a\_n⟩. It does not depend on the diagonalisation (Sylvester's law of inertia over an ordered field). The form q has zero total signature if sign\_P(q) = 0 for every P ∈ X\_F; for nonreal F this condition is empty.

**Hypotheses and conventions.** char F = 0 (2 invertible suffices); q nondegenerate on a finite-dimensional space. Diagonalisations are those of Mathlib's QuadraticForm.equivalent\_weightedSumSquares\_units\_of\_nondegenerate'.

**Construction.**

1. Diagonalise q over F (Mathlib, nondegenerate case).
2. Base change to a real closure (R, ι) at P (PI.0/real-closure-at-ordering): positive diagonal entries become squares, so q\_R ≅ ⟨1,…,1,−1,…,−1⟩ with r entries 1 and s entries −1.
3. Sylvester's law over the ordered field R: r is the largest dimension of a subspace on which q\_R is positive definite, so r and s are independent of the diagonalisation; this is the argument of Mathlib's real classification, run over R.
4. Additivity under orthogonal sums, multiplicativity under tensor products and invariance under isometry follow from diagonal calculus (upstream QuadraticFormInvariants Layers 0–1); local constancy in P holds because each sign\_P(a\_i) is constant on H(a\_i) and on H(−a\_i).

**Uses.** Benoist 2019, §0.5 and §6.4, pp. 66, 96: zero-signature forms are the forms counted by the Elman–Lam invariant; the form ⟨1, y₁, −y₂, −y₁y₂⟩ has zero signatures. PI.0/elman-lam-u: definition of the invariant. PI.0/brauer-nonvanishing-locus: the signature of the reduced trace form detects whether a Brauer class survives at P. PI.0/pfister-brauer-criterion: a zero-signature form becomes hyperbolic over every real closure.

**API.**

- `RealFunctionField.signatureAt` (data): sign\_P(q) ∈ ℤ for a nondegenerate quadratic form q and an ordering P.
- `RealFunctionField.signatureAt_weightedSumSquares` (simp): On ⟨a\_1,…,a\_n⟩ with units a\_i, the signature is Σ sign\_P(a\_i).
- `RealFunctionField.signatureAt_congr` (characterisation): Isometric forms have equal signatures (Sylvester's law).
- `RealFunctionField.signatureAt_prod` (relation): sign\_P(q ⊥ q') = sign\_P(q) + sign\_P(q').
- `RealFunctionField.signatureAt_smul` (relation): sign\_P(a·q) = sign\_P(a)·sign\_P(q) for a ∈ Fˣ.
- `RealFunctionField.signatureAt_hyperbolicPlane` (simp): sign\_P(H) = 0.
- `RealFunctionField.signatureAt_baseChange` (compatibility): sign\_P(q) equals the signature of q\_R over a real closure (R, ι) at P.
- `RealFunctionField.signatureAt_continuous` (other): P ↦ sign\_P(q) is locally constant on X\_F.
- `RealFunctionField.signatureAt_modTwo` (relation): sign\_P(q) ≡ dim q (mod 2) and |sign\_P(q)| ≤ dim q.
- `RealFunctionField.HasZeroSignatures` (data): The predicate: sign\_P(q) = 0 for every P ∈ X\_F.

**Unit tests.**

- `RealFunctionField.signatureAt_one_one_real` (computation): Over ℝ, the signature of ⟨1,1⟩ is 2.
- `RealFunctionField.signatureAt_hyperbolic_zero` (degenerate): The hyperbolic plane has signature 0 at every ordering of every real field.
- `RealFunctionField.signatureAt_real_eq_sylvester` (compatibility): Over ℝ, signatureAt agrees with the count of +1 minus −1 weights in QuadraticForm.equivalent\_signType\_weighted\_sum\_squared.
- `RealFunctionField.signatureAt_not_rank` (non-example): ⟨1,1⟩ and ⟨1,−1⟩ have equal rank over ℝ but signatures 2 and 0.

**Acceptance.** sign(⟨1,1⟩) = 2 over ℝ. The hyperbolic plane has signature 0 at every ordering. Over ℝ(t), ⟨1, −t⟩ has signature 0 at orderings with t > 0 and 2 at orderings with t < 0.

**Direct prerequisites:** [The space of orderings with the Harrison topology](#pi-0-ordering-space); [Real closure at a specified ordering](#pi-0-real-closure-at-ordering); `QuadraticForm.equivalent_weightedSumSquares_units_of_nondegenerate'` (Mathlib); `QuadraticForm.equivalent_signType_weighted_sum_squared` (Mathlib); `TauCeti.hyperbolicPlane` (Tau Ceti); Tau Ceti roadmap `TauCetiRoadmap/QuadraticFormInvariants#layer-0-square-classes-diagonal-calculus-and-chain-equivalence`; Tau Ceti roadmap `TauCetiRoadmap/QuadraticFormInvariants#layer-1-hyperbolic-planes-and-witt-theory`; Tau Ceti roadmap `TauCetiRoadmap/QuadraticFormInvariants#layer-4-the-witt-ring-and-the-fundamental-ideal`.

**Source:** EKM, §33, pp. 133–137: Signatures at orderings and the total signature of forms over a formally real field, as continuous functions on the order space. B19, §0.5, p. 66: The Elman–Lam invariant counts anisotropic forms whose signature at every ordering is trivial.

*Suggested home:* `TauCeti/FieldTheory/Ordering/RealFunctionField/Signature`, namespace `TauCeti.RealFunctionField`.

<a id="pi-0-brauer-nonvanishing-locus"></a>

### The locus where a Brauer class survives is clopen

`PI.0/brauer-nonvanishing-locus` · theorem — planet: **Closed nonvanishing locus of a Brauer class**

Let F be a field of characteristic 0 and β ∈ Br(F). For an ordering P, whether β becomes trivial over a real closure at P does not depend on the real closure, and the set Z(β) = {P ∈ X\_F : β does not vanish at P} is clopen in X\_F. For a field extension L/F, Z(β\_L) is the preimage of Z(β) under restriction X\_L → X\_F.

**Hypotheses and conventions.** char F = 0; β ∈ Br(F) represented by a central simple algebra A of degree d.

**Proof.**

1. Let T\_A be the reduced trace form x ↦ Trd(x²) on A, a nondegenerate quadratic form of dimension d² over F.
2. Over a real closed field R, A\_R ≅ M\_d(R) or M\_{d/2}(ℍ\_R); the trace form of M\_d(R) has signature d (symmetric minus antisymmetric matrices), and that of ℍ\_R is 2⟨1,−1,−1,−1⟩ of signature −2, so the trace form of M\_{d/2}(ℍ\_R) has signature −d.
3. Hence β vanishes at P iff sign\_P(T\_A) = d, a condition independent of the real closure (PI.0/signature-at-ordering).
4. P ↦ sign\_P(T\_A) is locally constant, so Z(β) = {P : sign\_P(T\_A) = −d} is clopen.
5. Restriction: (T\_A)\_L = T\_{A\_L} and a real closure of L at Q is one of F at the restricted ordering when composed with F → L, which gives Z(β\_L) = res⁻¹ Z(β).

**Acceptance.** Over ℝ, Z of the quaternion class is the whole one-point space. For β = (−1, t) over ℝ(t), Z(β) = H(−t), the orderings with t < 0.

**Direct prerequisites:** [The space of orderings with the Harrison topology](#pi-0-ordering-space); [Real closure at a specified ordering](#pi-0-real-closure-at-ordering); [Signature of a quadratic form at an ordering](#pi-0-signature-at-ordering); [Compactness of the Harrison space and inverse limits](#pi-0-harrison-compact); `TauCeti.BrauerGroup.baseChange` (Tau Ceti); `TauCeti.BrauerGroup.exists_eq_mk_centralDivisionRing` (Tau Ceti); Tau Ceti roadmap `TauCetiRoadmap/RepresentationTheory/SemisimpleAlgebras#layer-6-the-brauer-group-and-splitting-fields`.

**Source:** B19, §6.4, p. 96, citing Arason 1975, Hilfssatz 2: The set of orderings where the class survives over the associated real closure is closed, hence compact. ARA75, Hilfssatz 2 (not read; cited at Benoist's locator): Closedness of the nonvanishing locus of a mod-2 cohomology class on the space of orderings.

*Suggested home:* `TauCeti/FieldTheory/Ordering/RealFunctionField/BrauerLocus`, namespace `TauCeti.RealFunctionField`.

<a id="pi-0-elman-lam-u"></a>

### The Elman–Lam u-invariant

`PI.0/elman-lam-u` · definition — planet: **Elman–Lam u-invariant**

For a field F of characteristic 0, u(F) ∈ ℕ ∪ {∞} is the supremum of dim q over nondegenerate anisotropic quadratic forms q over F with zero total signature (sign\_P(q) = 0 for every P ∈ X\_F); the zero form counts with dimension 0. For nonreal F the signature condition is empty and u(F) is the classical maximal dimension of an anisotropic form. By definition u(F) ≤ n iff every nondegenerate form of dimension > n with zero total signature is isotropic.

**Hypotheses and conventions.** char F = 0. The supremum is taken in ℕ∞; forms with nonzero signature somewhere are not counted.

**Construction.**

1. Define the set of dimensions of anisotropic zero-signature forms and take its supremum in ℕ∞.
2. The characterisation of u(F) ≤ n is the definition of the supremum; isotropy is the negation of Mathlib's QuadraticMap.Anisotropic.
3. For nonreal F, HasZeroSignatures holds for every form because X\_F is empty (PI.0/ordering-space).

**Uses.** Benoist 2019, Theorems 0.10 and 0.12, p. 66: the bound u(K) ≤ 4 and the equality u(R(S)) = 4. PI.0/pfister-brauer-criterion: the conclusion u(K) ≤ 4. PI.0/elman-lam-c2-bound: the value set {0,1,2,4,6} when u(K(i)) ≤ 4. PI.7/rank-five-isotropy: for nonreal K the invariant is the classical one.

**API.**

- `RealFunctionField.elmanLamU` (data): u(F) : ℕ∞, the supremum of dimensions of anisotropic zero-signature forms.
- `RealFunctionField.elmanLamU_le_iff` (characterisation): u(F) ≤ n iff every nondegenerate zero-signature form of dimension > n is isotropic.
- `RealFunctionField.le_elmanLamU` (constructor): An anisotropic zero-signature form of dimension m gives m ≤ u(F).
- `RealFunctionField.elmanLamU_of_not_isSemireal` (compatibility): For nonreal F, u(F) is the supremum of dimensions of all anisotropic nondegenerate forms.
- `RealFunctionField.elmanLamU_of_isRealClosed` (simp): u(R) = 0 for real closed R.

**Unit tests.**

- `RealFunctionField.elmanLamU_complex` (computation): u(ℂ) = 1.
- `RealFunctionField.elmanLamU_real` (degenerate): u(ℝ) = 0.
- `RealFunctionField.elmanLamU_ratFunc_real` (computation): u(ℝ(t)) = 2: ⟨1, −(1 + t²)⟩ is anisotropic with zero signatures, and EKM Corollary 37.8 bounds u by 2.
- `RealFunctionField.sumSquares_not_counted` (non-example): Over ℝ(t), n⟨1⟩ is anisotropic for every n but has signature n everywhere, so the classical anisotropic-dimension supremum is ∞ while u(ℝ(t)) = 2.

**Acceptance.** u(ℂ) = 1. u(ℝ) = 0: a zero-signature form over ℝ is hyperbolic. u(ℝ(t)) = 2.

**Direct prerequisites:** [Signature of a quadratic form at an ordering](#pi-0-signature-at-ordering); [The space of orderings with the Harrison topology](#pi-0-ordering-space); `QuadraticMap.Anisotropic` (Mathlib); `ENat` (Mathlib).

**Source:** B19, §0.5, p. 66: Elman–Lam's generalisation of the u-invariant to real fields: maximal rank of an anisotropic form whose signature at every ordering is trivial. EKM, §37, p. 165: The u-invariant of a formally real field, defined through anisotropic torsion forms (equivalently, by Pfister's local–global principle, zero total signature). BEC05, §2, p. 2: u(F) is the supremum of dimensions of anisotropic torsion forms (Elman–Lam).

*Suggested home:* `TauCeti/FieldTheory/Ordering/RealFunctionField/UInvariant`, namespace `TauCeti.RealFunctionField`.

<a id="pi-0-ci-brauer-vanishing"></a>

### A C₁ field has trivial Brauer group

`PI.0/ci-brauer-vanishing` · theorem

If F is a C₁ field (every form of degree d in more than d variables over F has a nontrivial zero), then Br(F) = 0. In particular the function field of an integral curve over an algebraically closed field, and every algebraic extension of it, has trivial Brauer group.

**Hypotheses and conventions.** F a field which is C₁ in the sense of QuadraticFormInvariantsPartII:Q2.5/ci.

**Proof.**

1. Let D be a central division algebra of degree d > 1 over F; its reduced norm is a form of degree d in d² > d variables, so it has a nontrivial zero by C₁.
2. A nonzero element of D with reduced norm 0 is not invertible, contradicting that D is a division algebra; so every central division algebra over F is F itself.
3. Every Brauer class has a central division representative (TauCeti.BrauerGroup.exists\_eq\_mk\_centralDivisionRing), so Br(F) = 0.
4. Curve function fields over algebraically closed fields are C₁ by Tsen–Lang (QuadraticFormInvariantsPartII:Q2.5/transcendental-ci), and algebraic extensions of C₁ fields are C₁ (Q2.5/algebraic-ci).

**Acceptance.** Br(ℂ(t)) = 0. Br(F) = 0 for every finite field F (Chevalley's theorem makes finite fields C₁).

**Direct prerequisites:** `QuadraticFormInvariantsPartII:Q2.5/ci`; `QuadraticFormInvariantsPartII:Q2.5/transcendental-ci`; `QuadraticFormInvariantsPartII:Q2.5/algebraic-ci`; `TauCeti.BrauerGroup.exists_eq_mk_centralDivisionRing` (Tau Ceti); Tau Ceti roadmap `TauCetiRoadmap/RepresentationTheory/SemisimpleAlgebras#layer-6-the-brauer-group-and-splitting-fields`.

**Source:** B19, Theorem 0.8, p. 65; Proposition 4.2 proof, p. 80: Tsen–Lang: function fields of integral varieties of dimension i over an algebraically closed field are C\_i; Benoist uses the vanishing of the class over C(Γ′). EKM, §97, Corollary 97.7: Fields of transcendence degree n over an algebraically closed field are C\_n.

*Suggested home:* `TauCeti/FieldTheory/Ordering/RealFunctionField/CiBrauer`, namespace `TauCeti.RealFunctionField`.

<a id="pi-0-curve-u-bound"></a>

### The u-invariant of a real curve function field

`PI.0/curve-u-bound` · theorem

If F has transcendence degree 1 over a real closed field, then u(F) ≤ 2. In particular, for every integral curve C over ℝ, every nondegenerate quadratic form of dimension ≥ 3 over ℝ(C) with zero total signature is isotropic.

**Hypotheses and conventions.** F/R of transcendence degree 1 with R real closed; char 0.

**Proof.**

1. F(√−1) has transcendence degree 1 over the algebraically closed field R(√−1), hence is C₁ by Tsen–Lang, so u(F(√−1)) ≤ 2.
2. Elman–Lam's comparison of u(F) with u(F(√−1)) for the quadratic extension F(√−1)/F, in the refined form EKM proves, gives u(F) ≤ 2.

**Acceptance.** u(ℝ(t)) ≤ 2, attained by ⟨1, −(1 + t²)⟩.

**Direct prerequisites:** [The Elman–Lam u-invariant](#pi-0-elman-lam-u); `QuadraticFormInvariantsPartII:Q2.5/transcendental-ci`.

**Source:** EKM, Corollary 37.8, p. 169: A field of transcendence degree one over a real closed field has u-invariant at most 2. BEC05, §1, p. 1: F(√−1) is C\_n for F of transcendence degree n over a real closed field, and the Elman–Lam bounds follow.

*Suggested home:* `TauCeti/FieldTheory/Ordering/RealFunctionField/UInvariant`, namespace `TauCeti.RealFunctionField`.

<a id="pi-0-witt-real-curve"></a>

### Witt's theorem on Brauer classes of real curves

`PI.0/witt-real-curve` · theorem — planet: **Witt's theorem on real curves**

Let C be a smooth integral curve over ℝ with function field F = ℝ(C). (a) A class β ∈ Br(F) that vanishes at every real closure of F is zero. (b) If β is unramified at the points of a Euclidean-dense subset W of C(ℝ) and β(x) = 0 ∈ Br(ℝ) for x ∈ W, then β vanishes at every real closure, hence β = 0; the class may be ramified elsewhere. (c) If C(ℝ) = ∅, then F is nonreal and Br(F) = 0.

**Hypotheses and conventions.** C smooth, integral, of finite type and separated over ℝ; ramification of β at finitely many points is allowed. W ⊂ C(ℝ) dense for the Euclidean topology; evaluation at x ∈ W uses the unramified locus of PI.1/unramified-locus.

**Proof.**

1. Tsen: Br(ℂ(C)) = 0 (PI.0/ci-brauer-vanishing; SchemeAndStackFoundations §2.16), so β is split by the quadratic extension F(i)/F and equals the quaternion class (−1, f) for some f ∈ Fˣ (cyclic algebras; upstream QuadraticFormInvariants Layers 2 and 5).
2. At an ordering P, β vanishes over the real closure iff f >\_P 0 (PI.0/real-closure-at-ordering, Br(R) = {0, (−1,−1)}).
3. (a) If f is positive at every ordering, the norm form ⟨1, 1, −f, −f⟩ of (−1, f) has zero total signature; by PI.0/curve-u-bound it is isotropic, so (−1, f) splits.
4. (b) Every ordering of F is centred at a real point of the smooth completion of C and is determined by a half-branch there; the sign of f at the ordering is its sign on that half-branch near the centre. Since W is dense, f > 0 near every real point along every half-branch, so f >\_P 0 for every P and (a) applies.
5. (c) If C(ℝ) = ∅, the smooth completion has no real points outside a finite set, so there are no half-branches and no orderings: F is nonreal, and (a) holds vacuously for every β.

**Acceptance.** Br(ℝ(C)) = 0 for the conic C : x² + y² = −1. Over ℝ(t), the class (−1, t) is nonzero: it does not vanish at the orderings with t < 0, matching (a). Over ℝ(t), the class (−1, 1 + t²) is zero, consistent with (b): it evaluates to 0 at every real point.

**Direct prerequisites:** [A C₁ field has trivial Brauer group](#pi-0-ci-brauer-vanishing); [Real closure at a specified ordering](#pi-0-real-closure-at-ordering); [Signature of a quadratic form at an ordering](#pi-0-signature-at-ordering); [The u-invariant of a real curve function field](#pi-0-curve-u-bound); `SchemeAndStackFoundations:SF.2`; Tau Ceti roadmap `TauCetiRoadmap/QuadraticFormInvariants#layer-2-quaternion-algebras-and-the-four-fold-splitting-criterion`; Tau Ceti roadmap `TauCetiRoadmap/QuadraticFormInvariants#layer-5-the-brauer-valued-invariants`.

**Source:** B19, Proposition 4.2 proof, p. 80, citing Witt 1937, Satz 22: A class over the function field of a real curve whose evaluations vanish at general real points is the class of a conic, and the conic is split. WITT37, Satz 22 (not read; cited at Benoist's locator): Witt's local–global statement for quadratic forms over real algebraic function fields of one variable. EKM, Corollary 37.8, p. 169: The bound u ≤ 2 in transcendence degree one over a real closed field. BCR, §10.3, pp. 254–256: Half-branches of real algebraic curves as points of the real spectrum of the function field.

*Suggested home:* `TauCeti/FieldTheory/Ordering/RealFunctionField/WittCurve`, namespace `TauCeti.RealFunctionField`.

<a id="pi-0-springer-complete-dvr"></a>

### Springer's theorem for complete discretely valued fields

`PI.0/springer-complete-dvr` · theorem

Let K be a complete discretely valued field with residue field k of characteristic ≠ 2 and uniformizer π. A diagonal form q = ⟨u\_1, …, u\_r⟩ ⊥ π⟨v\_1, …, v\_s⟩ with units u\_i, v\_j is anisotropic over K iff both residue forms ⟨ū\_1, …, ū\_r⟩ and ⟨v̄\_1, …, v̄\_s⟩ are anisotropic over k. Applied twice, the form ⟨1, y₁, −y₂, −y₁y₂⟩ is anisotropic over the iterated Laurent series field ℂ((y₁))((y₂)).

**Hypotheses and conventions.** K complete for a discrete valuation; char k ≠ 2; all u\_i, v\_j units.

**Proof.**

1. If a residue form is isotropic, Hensel's lemma (completeness, char k ≠ 2) lifts a nonsingular zero to a zero of the corresponding unit form, so q is isotropic.
2. Conversely, if q(x) = 0 with x primitive, compare valuations: the unit part and the π-part cannot cancel unless both reductions have a nontrivial zero; this is the anisotropy of reductions of anisotropic unimodular forms over a complete DVR.
3. The Witt-ring form: the two residue homomorphisms give a split exact sequence identifying W(K) with W(k) ⊕ W(k).
4. For ℂ((y₁))((y₂)): write ⟨1, y₁⟩ ⊥ (−y₂)⟨1, y₁⟩; both residue forms are ⟨1, y₁⟩ up to sign over ℂ((y₁)), which is anisotropic by the same theorem since ⟨1⟩ is anisotropic over ℂ.

**Acceptance.** ⟨1, t⟩ is anisotropic over ℂ((t)) and isotropic over ℂ. ⟨1, −1⟩ is isotropic over every K, and its residue form ⟨1, −1⟩ is isotropic.

**Direct prerequisites:** `QuadraticMap.Anisotropic` (Mathlib); `IsDiscreteValuationRing` (Mathlib); `HenselianLocalRing` (Mathlib); Tau Ceti roadmap `TauCetiRoadmap/QuadraticFormInvariants#layer-1-hyperbolic-planes-and-witt-theory`.

**Source:** EKM, Lemma 19.4, Lemma 19.10 and Exercise 19.15, pp. 80–82: Anisotropic forms over a complete DVR have anisotropic reductions; the two residue homomorphisms of the Witt ring; split exactness for complete DVRs with residue characteristic ≠ 2. B19, §6.4, p. 96, citing Springer 1955: The form ⟨1, y₁, −y₂, −y₁y₂⟩ is anisotropic over C((y₁))((y₂)) by Springer's results. SPR55, Springer 1955 (not read; cited at Benoist's locator): Springer's theorem on quadratic forms over complete discretely valued fields.

*Suggested home:* `TauCeti/FieldTheory/Ordering/RealFunctionField/Springer`, namespace `TauCeti.RealFunctionField`.

<a id="pi-0-amer-brumer"></a>

### The Amer–Brumer theorem

`PI.0/amer-brumer` · theorem

Let F be a field of characteristic ≠ 2 and φ, ψ quadratic forms on the same finite-dimensional F-vector space V. Then φ and ψ have a common nonzero isotropic vector in V iff the form φ + tψ on V ⊗ F(t) over the rational function field F(t) is isotropic.

**Hypotheses and conventions.** char F ≠ 2 (EKM proves it in all characteristics); φ, ψ on the same space V.

**Proof.**

1. A common zero v gives the constant vector v with (φ + tψ)(v) = 0.
2. Conversely take a nonzero polynomial vector v(t) ∈ V\[t] with (φ + tψ)(v) = 0 of minimal degree; a degree-reduction argument (EKM Theorem 17.14) shows deg v = 0, and then the coefficients of 1 and t give φ(v) = ψ(v) = 0.

**Acceptance.** Over ℝ, φ = ⟨1, −1⟩ and ψ = ⟨1, −1⟩ share the isotropic vector (1, 1), and φ + tψ = (1 + t)⟨1, −1⟩ is isotropic over ℝ(t). Over ℝ, φ = ⟨1, 1⟩ and ψ = ⟨1, −1⟩ have no common nonzero zero, and φ + tψ = ⟨1 + t, 1 − t⟩ is anisotropic over ℝ(t), since −(1 + t)/(1 − t) is not a square there. For two forms in five variables over ℝ(C) with C(ℝ) = ∅, isotropy of φ + tψ over ℝ(C)(t) gives a rational point of their intersection.

**Direct prerequisites:** `QuadraticMap.Anisotropic` (Mathlib); `RatFunc` (Mathlib).

**Source:** EKM, Theorem 17.14, p. 74: The form φ + tψ over F(t) is isotropic iff φ and ψ have a common isotropic vector; due to Amer and Brumer, and Leep in all characteristics. B19, §0.5, p. 66, citing Brumer 1978: By the Amer–Brumer theorem, Theorem 0.10 implies that pairs of forms of rank ≥ 5 over the function field of a real curve without real points have a common zero.

*Suggested home:* `TauCeti/FieldTheory/Ordering/RealFunctionField/AmerBrumer`, namespace `TauCeti.RealFunctionField`.

<a id="pi-0-albert-isotropy"></a>

### Albert's isotropy criterion for six-dimensional forms

`PI.0/albert-isotropy` · theorem

Let F be a field of characteristic ≠ 2 and φ a nondegenerate quadratic form of dimension 6 and trivial discriminant (an Albert form). Its Clifford invariant c(φ) ∈ Br(F)\[2] is the class of a central simple algebra of degree 4, and φ is isotropic iff the index of c(φ) is at most 2.

**Hypotheses and conventions.** char F ≠ 2; dim φ = 6; signed discriminant of φ trivial.

**Proof.**

1. Scaling by d = −det⟨x₁,x₂,x₃⟩ puts φ = ⟨x₁,…,x₆⟩ of trivial discriminant into the normal form dφ ≅ ⟨a, b, −ab, −c, −d, cd⟩ (diagonal calculus, upstream QuadraticFormInvariants Layer 0); similarity preserves isotropy and the Clifford invariant of an even-dimensional form of trivial discriminant.
2. For this normal form the even Clifford algebra is A × A with A = (a, b) ⊗ (c, d), so c(φ) = \[A] (upstream QuadraticFormInvariants Layer 5, Clifford invariant).
3. Albert's theorem: ⟨a, b, −ab, −c, −d, cd⟩ is isotropic iff the biquaternion algebra (a, b) ⊗ (c, d) is not a division algebra, that is iff its index is ≤ 2; the isotropic direction comes from a common quadratic subfield of the two quaternion factors and the converse from writing A ≅ M₂(Q).

**Acceptance.** The Albert form ⟨a, b, −ab, −c, −d, cd⟩ over ℝ with a = b = c = d = −1 is isotropic, and (−1,−1) ⊗ (−1,−1) ≅ M₄(ℝ) has index 1. Over a field where (a,b) ⊗ (c,d) is a division algebra, the corresponding Albert form is anisotropic.

**Direct prerequisites:** `CliffordAlgebra.even` (Mathlib); `QuadraticMap.Anisotropic` (Mathlib); Tau Ceti roadmap `TauCetiRoadmap/QuadraticFormInvariants#layer-5-the-brauer-valued-invariants`; `SemisimpleAlgebrasPartII:SA.0/class-index`.

**Source:** BEC05, §2–§3, pp. 2–3: An Albert form is a six-dimensional form of trivial discriminant; the proof of Theorem 3.1 uses that an anisotropic torsion Albert form exists when u(F) = 6. LAM05, Chapter III, Theorem 4.8 (not read; Benoist's reference \[41]): Albert's theorem: a biquaternion algebra is a division algebra iff its Albert form is anisotropic.

*Suggested home:* `TauCeti/FieldTheory/Ordering/RealFunctionField/Albert`, namespace `TauCeti.RealFunctionField`.

<a id="pi-0-elman-lam-c2-bound"></a>

### Elman–Lam: u-invariants when u(F(√−1)) ≤ 4

`PI.0/elman-lam-c2-bound` · theorem

Let F be a field of characteristic ≠ 2 with u(F(√−1)) ≤ 4. Then I³F is torsion-free, u(F) ∈ {0, 1, 2, 4, 6}, and if u(F) = 6 there is an anisotropic Albert form over F with zero total signature. If F ⊇ ℝ has transcendence degree 2 over ℝ, then F(√−1) is C₂, so u(F(√−1)) ≤ 4 and these conclusions apply.

**Hypotheses and conventions.** char F ≠ 2; u(F(√−1)) ≤ 4 (for transcendence degree 2 over ℝ this follows from Tsen–Lang). Becher states the conclusion when u(F(√−1)) = 4, the case of a C₂ field such as ℂ(x, y); for u(F(√−1)) < 4 (for example F real closed, where F(√−1) is algebraically closed) the same conclusion is part of the cited Elman–Lam input (gap RealSurfacePeriodIndex/G6).

**Proof.**

1. F(√−1) of transcendence degree 2 over ℂ is C₂ by Tsen–Lang and its algebraic-extension refinement (QuadraticFormInvariantsPartII:Q2.5), so every form of dimension ≥ 5 over it is isotropic.
2. Elman–Lam's analysis of torsion forms over F whose extension to F(√−1) is isotropic (β-decomposition) gives torsion-freeness of I³F and the possible values of u(F).
3. If u(F) = 6, choose an anisotropic torsion form of dimension 6; Becher's argument (§3) produces from it an anisotropic torsion Albert form, using that I³F is torsion-free.

**Acceptance.** For F = ℝ(x, y), u(F(√−1)) = 4 and the bound gives u(F) ≤ 6 before Benoist's theorem; Theorem 0.12 excludes 6.

**Direct prerequisites:** [The Elman–Lam u-invariant](#pi-0-elman-lam-u); [Albert's isotropy criterion for six-dimensional forms](#pi-0-albert-isotropy); `QuadraticFormInvariantsPartII:Q2.5/transcendental-ci`; `QuadraticFormInvariantsPartII:Q2.5/algebraic-ci`; Tau Ceti roadmap `TauCetiRoadmap/QuadraticFormInvariants#layer-4-the-witt-ring-and-the-fundamental-ideal`.

**Source:** BEC05, §3, p. 3: If u(F(√−1)) = 4 then I³F is torsion-free, u(F) ∈ {0,1,2,4,6}, and u(F) = 6 forces an anisotropic torsion Albert form (citing Elman–Lam). EKM, Theorem 37.4 and Corollary 37.5, pp. 167–168: Comparison of u(F) with u(K) for quadratic extensions K/F and the bound for transcendence degree n over a real closed field. EL73, Elman–Lam 1973 (not read; cited through Becher 2005 and Benoist p. 66): Definition of the u-invariant of a real field and the comparison with F(√−1).

*Suggested home:* `TauCeti/FieldTheory/Ordering/RealFunctionField/UInvariant`, namespace `TauCeti.RealFunctionField`.

<a id="pi-0-pfister-brauer-criterion"></a>

### Pfister's criterion: index two implies u ≤ 4

`PI.0/pfister-brauer-criterion` · theorem — planet: **Pfister's index-two criterion**

Let K be a field extension of ℝ of transcendence degree 2. If every nonzero class α ∈ Br(K)\[2] that vanishes at all real closures of K has index 2, then u(K) ≤ 4 in the Elman–Lam sense. (Pfister proves the equivalence; only this direction is a target.)

**Hypotheses and conventions.** K ⊇ ℝ of transcendence degree 2, not necessarily finitely generated; index as in SemisimpleAlgebrasPartII:SA.0/class-index.

**Proof.**

1. By PI.0/elman-lam-c2-bound, u(K) ∈ {0,1,2,4,6}; suppose u(K) = 6 and take an anisotropic Albert form φ with zero total signature.
2. At every ordering P, φ\_R over a real closure R at P is six-dimensional of signature 0, hence hyperbolic; so c(φ)\_R = c(φ\_R) = 0 (Clifford invariant commutes with base change). Thus c(φ) vanishes at all real closures.
3. By hypothesis c(φ) has index ≤ 2 (index 1 if c(φ) = 0), so φ is isotropic by PI.0/albert-isotropy, a contradiction. Hence u(K) ≤ 4.

**Acceptance.** For nonreal K the hypothesis is that every class of Br(K)\[2] has index ≤ 2, and the conclusion is the classical bound u(K) ≤ 4. Benoist's Theorem 0.4 supplies the hypothesis for every K of transcendence degree 2 over ℝ (PI.7/u-invariant-upper-bound).

**Direct prerequisites:** [Elman–Lam: u-invariants when u(F(√−1)) ≤ 4](#pi-0-elman-lam-c2-bound); [Albert's isotropy criterion for six-dimensional forms](#pi-0-albert-isotropy); [Real closure at a specified ordering](#pi-0-real-closure-at-ordering); [Signature of a quadratic form at an ordering](#pi-0-signature-at-ordering); [The Elman–Lam u-invariant](#pi-0-elman-lam-u); `SemisimpleAlgebrasPartII:SA.0/class-index`; Tau Ceti roadmap `TauCetiRoadmap/QuadraticFormInvariants#layer-5-the-brauer-valued-invariants`.

**Source:** B19, §6.4, p. 95, citing Pfister 1982, Proposition 9: For trdeg 2 over R, u(K) ≤ 4 is equivalent to every nonzero class of Br(K)\[2] trivial at all real closures having index 2. PFI82, Proposition 9 (not read; cited at Benoist's locator): Pfister's link between the u-invariant in transcendence degree 2 and the period-index problem. BEC05, §3, Theorem 3.1 and Remark 3.2, pp. 3–4: Criterion for u(F) ≤ 4 when u(F(√−1)) = 4, refining Pfister's Proposition 6, through anisotropic torsion Albert forms.

*Suggested home:* `TauCeti/FieldTheory/Ordering/RealFunctionField/Pfister`, namespace `TauCeti.RealFunctionField`.


## Layer PI.1: Period, index and real evaluation on real surfaces

The unramified locus U\_α of a class of Br(ℝ(S)) (via purity, PurityForFlatCohomology PF.6); real evaluation and the clopen nonzero-evaluation locus Θ(α), with the degree-zero component of Kummer lifts; de Jong's period-index theorem in characteristic 0 (imported reduction, unramified case from PI.2); the norm bound ind | 2 per over any real closed base; extension of line bundles from dense opens and injectivity of H¹ under removal of finitely many points.

*Builds on:* `RealSurfacePeriodIndex:PI.0`, `PurityForFlatCohomology:PF.6`, `SemisimpleAlgebrasPartII:SA.1`, `SchemeAndStackFoundations:SF.6`, `AlgebraicTopologyPartII:AT2.9`.

<a id="pi-1-unramified-locus"></a>

### Unramified locus of a Brauer class

`PI.1/unramified-locus` · definition

Let X be a smooth integral variety over a field k of characteristic 0, with Br(X) = H²\_ét(X, 𝔾\_m) ⊂ Br(k(X)). For α ∈ Br(k(X)) only finitely many prime divisors Γ ⊂ X have nonzero residue res\_Γ(α) ∈ H¹(k(Γ), ℚ/ℤ); their union is the ramification divisor of α, and its complement U\_α is the largest open subset U ⊂ X with α ∈ Br(U) ⊂ Br(k(X)). For a proper surface S over ℝ and α ∈ Br(ℝ(S)), U\_α is a dense open of S whose complement is a curve.

**Hypotheses and conventions.** X smooth integral over k, char k = 0; residues are those of PurityForFlatCohomology:PF.6/brauer-residue at the DVRs O\_{X,Γ}. Br(U) ↪ Br(k(X)) for open U (injectivity for regular integral schemes).

**Construction.**

1. α lies in Br(V) for a dense open V (a central simple algebra over k(X) spreads out to an Azumaya algebra over some V), so res\_Γ(α) = 0 for every Γ meeting V, and only the finitely many divisors in X ∖ V can carry nonzero residue.
2. On U = X ∖ (ramified divisors), α is unramified at every codimension-one point; purity for regular schemes (PF.6/brauer-purity-regular together with the DVR residue sequence PF.6/dvr-brauer-residue-sequence) puts α in Br(U).
3. Maximality: if α ∈ Br(W) then every residue at a divisor meeting W vanishes by the residue sequence, so W ⊂ U.

**Uses.** Benoist 2019, §0.2 and Theorem 0.4, p. 64: the open U on which α is defined. Benoist 2019, Propositions 6.6–6.7, pp. 93–95: U is the biggest open with α ∈ Br(U); its complement is made SNC after modification. PI.7/period-induction-step: the unramified locus of (n/2)α can be strictly larger than that of α. PI.8/even-degree-splitting-obstruction: the Kummer lift lives on U(ℂ).

**API.**

- `RealSurface.unramifiedLocus` (data): U\_α : X.Opens, the complement of the prime divisors with nonzero residue.
- `RealSurface.mem_brauer_iff_le_unramifiedLocus` (characterisation): For open V ⊂ X, α ∈ Br(V) iff V ⊂ U\_α.
- `RealSurface.ramificationDivisor_finite` (other): Only finitely many prime divisors have nonzero residue.
- `RealSurface.unramifiedLocus_zero` (simp): U\_0 = X.
- `RealSurface.unramifiedLocus_le_nsmul` (relation): U\_α ⊂ U\_{mα} for every integer m.
- `RealSurface.unramifiedLocus_pullback` (functoriality): For a dominant morphism f : Y → X of smooth integral varieties, f⁻¹(U\_α) ⊂ U\_{f\*α}.

**Unit tests.**

- `RealSurface.unramifiedLocus_of_mem_brauer` (degenerate): If α ∈ Br(X) then U\_α = X.
- `RealSurface.unramifiedLocus_quaternion_xy` (computation): For α = (x, y) over ℝ(x, y) on 𝔸², U\_α = 𝔸² ∖ {xy = 0}.
- `RealSurface.unramifiedLocus_two_smul` (non-example): For α = (x, y) on 𝔸², 2α = 0 has U\_{2α} = 𝔸² ≠ U\_α: the locus is not preserved by multiples.
- `RealSurface.unramifiedLocus_field` (compatibility): For X = Spec of a field (dimension 0) U\_α = X and Br(X) is Mathlib's BrauerGroup.

**Acceptance.** If S is a smooth projective real surface and α ∈ Br(S), then U\_α = S. For α = (x, y) ∈ Br(ℝ(x, y)) on the affine plane, U\_α is the complement of the two axes.

**Direct prerequisites:** `PurityForFlatCohomology:PF.6/brauer-residue`; `PurityForFlatCohomology:PF.6/dvr-brauer-residue-sequence`; `PurityForFlatCohomology:PF.6/brauer-purity-regular`; `SchemeAndStackFoundations:SF.2`; `AlgebraicGeometry.Scheme.functionField` (Mathlib).

**Source:** B19, §2.4, p. 75: Residues along integral divisors; finitely many are nonzero; their complement is the largest open on which the class is unramified, by purity. CT95, (3.9) (not read; cited at Benoist's locator): Exposition of residues and purity for Brauer groups of smooth varieties.

*Suggested home:* `TauCeti/AlgebraicGeometry/RealSurface/PeriodIndex/Unramified`, namespace `TauCeti.RealSurface`.

<a id="pi-1-real-evaluation-locus"></a>

### Real evaluation and the nonzero evaluation locus

`PI.1/real-evaluation-locus` · definition — planet: **Real evaluation locus**

Let U be a smooth variety over ℝ and α ∈ Br(U). For x ∈ U(ℝ) the evaluation α\_x ∈ Br(ℝ) ≅ ℤ/2 is the pullback along x : Spec ℝ → U. The nonzero evaluation locus Θ(α) = {x ∈ U(ℝ) : α\_x ≠ 0} is a union of connected components of U(ℝ). If α ∈ Br(U)\[n] and α̃ ∈ H²\_G(U(ℂ), ℤ/n(1)) lifts α in the Kummer sequence, then for n = 2 the degree-zero real component of α̃ is the indicator of Θ(α); for n even, the mod-2 reduction of α̃ lifts (n/2)α and its degree-zero component is (n/2 mod 2)·1\_{Θ(α)}, which vanishes when 4 | n.

**Hypotheses and conventions.** U smooth over ℝ; G = Gal(ℂ/ℝ) acts on U(ℂ) with fixed locus U(ℝ). Real components \[ξ]\_i are those of AlgebraicTopologyPartII:AT2.9/real-coordinate-maps and AT2.7/fixed-mod-two.

**Construction.**

1. Evaluation is a group homomorphism Br(U) → Br(ℝ) for each x, through Tau Ceti's TauCeti.Quaternion.brauerGroupMulEquiv.
2. Local constancy: restriction to U(ℝ) followed by the canonical decomposition H²\_G(U(ℝ), 𝔽₂) ≅ H⁰ ⊕ H¹ ⊕ H² (AlgebraicTopologyPartII:AT2.7/fixed-mod-two, with the real components of AT2.9/real-coordinate-maps) makes x ↦ \[α̃]\_0(x) a locally constant function, and it equals α\_x under H²\_G(pt, 𝔽₂) ≅ Br(ℝ)\[2].
3. For even n, the reduction ℤ/n(1) → ℤ/2 sends a mod-n lift of α to a lift of (n/2)α; at a real point it multiplies the evaluation by n/2, so the degree-zero component is (n/2 mod 2)·1\_Θ.

**Uses.** Benoist 2019, Theorems 0.4–0.5, p. 64: the hypothesis α|\_x = 0 for x ∈ U(ℝ) and the set Θ in the obstruction. PI.4/brauer-cover-hypotheses: the clopen Ψ ⊃ Θ to be avoided by the cover. PI.7/half-period-uniform-evaluation: the degree-zero component of the half-period lift on Ψ = Θ(α). PI.9/real-enriques-criterion: Θ for unramified classes on Enriques surfaces.

**API.**

- `RealSurface.realEvaluation` (data): α\_x ∈ Br(ℝ) for x ∈ U(ℝ), a group homomorphism in α.
- `RealSurface.nonzeroEvaluationLocus` (data): Θ(α) ⊂ U(ℝ).
- `RealSurface.isClopen_nonzeroEvaluationLocus` (characterisation): Θ(α) is open and closed in U(ℝ) with the Euclidean topology.
- `RealSurface.realEvaluation_add` (simp): (α + β)\_x = α\_x + β\_x and 0\_x = 0.
- `RealSurface.nonzeroEvaluationLocus_nsmul` (relation): Θ(mα) = Θ(α) if m is odd and ∅ if m is even.
- `RealSurface.kummerLift_component_zero` (compatibility): For a mod-n Kummer lift α̃ with n even, \[α̃ mod 2]\_0 = (n/2 mod 2)·1\_{Θ(α)}.
- `RealSurface.realEvaluation_pullback` (functoriality): (f\*α)\_y = α\_{f(y)} for f : V → U and y ∈ V(ℝ).

**Unit tests.**

- `RealSurface.nonzeroEvaluationLocus_constant_quaternion` (computation): For α the pullback of the Hamilton quaternion class, Θ(α) = U(ℝ).
- `RealSurface.nonzeroEvaluationLocus_empty_of_no_real_points` (degenerate): If U(ℝ) = ∅ then Θ(α) = ∅.
- `RealSurface.nonzeroEvaluationLocus_two_smul` (non-example): Θ(2α) = ∅ for every α, so the half-period class need not detect Θ(α) when 4 | per α.
- `RealSurface.realEvaluation_point` (compatibility): For U = Spec ℝ, realEvaluation is the identity of Br(ℝ) under TauCeti.Quaternion.brauerGroupMulEquiv.

**Acceptance.** For the constant class (−1,−1) on any real U, Θ = U(ℝ). For α = (−1, x) on 𝔾\_m over ℝ, Θ(α) = {x < 0}. If α has period 4, Θ(2α) = ∅ while Θ(α) can be nonempty.

**Direct prerequisites:** [Unramified locus of a Brauer class](#pi-1-unramified-locus); `TauCeti.Quaternion.brauerGroupMulEquiv` (Tau Ceti); `SchemeAndStackFoundations:SF.6`; `AlgebraicTopologyPartII:AT2.7/fixed-mod-two`; `AlgebraicTopologyPartII:AT2.9/real-coordinate-maps`.

**Source:** B19, §0.3, p. 64; §4, p. 79; §6.3, p. 95: Θ is the set of real points where α evaluates nontrivially; it is a union of components, and the proof of Proposition 6.7 applies the period-2 case to (n/2)α. B19, (2.16), p. 76: The real Kummer sequence 0 → Pic(X)/n → H²\_G(X(ℂ), ℤ/n(1)) → Br(X)\[n] → 0.

*Suggested home:* `TauCeti/AlgebraicGeometry/RealSurface/PeriodIndex/RealEvaluation`, namespace `TauCeti.RealSurface`.

<a id="pi-1-de-jong-period-index"></a>

### De Jong's period-index theorem in characteristic zero

`PI.1/de-jong-period-index` · theorem — planet: **De Jong's period-index theorem**

Let k be an algebraically closed field of characteristic 0 and S a connected smooth projective surface over k. For every α ∈ Br(k(S)), ind(α) = per(α).

**Hypotheses and conventions.** k algebraically closed of characteristic 0; S connected smooth projective of dimension 2; α possibly ramified. Index and period are SemisimpleAlgebrasPartII:SA.0/class-index and the order of α.

**Proof.**

1. Lefschetz principle: S and α are defined over a finitely generated subfield k₀ ⊂ k, which embeds into ℂ. For an extension K ⊃ k of algebraically closed fields, ind of α over K(S) divides ind over k(S) (SemisimpleAlgebrasPartII:SA.0/index-basechange-divides), and a splitting field over K(S) descends to one of the same degree over k(S) by specialisation; with invariance of the period, it suffices to treat k = ℂ. The descent half is part of gap G2.
2. De Jong's reduction (de Jong 2004, §7): a class over ℂ(S) is reduced to an unramified class on a suitable smooth projective model, without changing period or index.
3. For unramified classes on complex surfaces, PI.2/complex-unramified-period-index gives ind = per; this is Benoist's alternative proof of the unramified case.
4. Steps 1–2 are cited inputs (recorded as a gap).

**Acceptance.** For S = ℙ²\_ℂ and α = 0 the index is 1. Every class of Br(ℂ(x, y)) of period 2 is a quaternion class.

**Direct prerequisites:** [Unramified period equals index on complex surfaces](#pi-2-complex-unramified-period-index); `SemisimpleAlgebrasPartII:SA.0/class-index`; `SemisimpleAlgebrasPartII:SA.0/index-basechange-divides`.

**Source:** B19, Theorem 0.1, p. 63; §0.6, p. 68: De Jong's theorem; it reduces to characteristic 0, then to ℂ by the Lefschetz principle, and to the unramified case by \[25, §7]. DJ04, §7 (not read; cited at Benoist's locator): De Jong's reduction of the period-index problem for surfaces to unramified classes.

*Suggested home:* `TauCeti/AlgebraicGeometry/RealSurface/PeriodIndex/DeJong`, namespace `TauCeti.RealSurface`.

<a id="pi-1-real-closed-norm-bound"></a>

### Norm bound over a real closed field

`PI.1/real-closed-norm-bound` · theorem

Let R be a real closed field and F the function field of an integral surface over R. For α ∈ Br(F) of period n, ind(α) divides 2n; hence ind(α) ∈ {n, 2n}, and ind(α) = n if n is odd.

**Hypotheses and conventions.** R real closed (any, including the real Puiseux field); F of transcendence degree 2 over R; char 0.

**Proof.**

1. If √−1 ∈ F, F is the function field of a surface over the algebraically closed field R(√−1), and PI.1/de-jong-period-index gives ind = per.
2. Otherwise L = F(√−1) is the function field of a surface over R(√−1); by de Jong, ind(α\_L) = per(α\_L), which divides n.
3. Reverse index divisibility (SemisimpleAlgebrasPartII:SA.0/index-divides-degree-index): ind(α) divides \[L : F]·ind(α\_L) = 2 ind(α\_L), which divides 2n.
4. Period divides index and both have the same prime divisors (SA.1), so ind(α) ∈ {n, 2n}, and for odd n the factor 2 is excluded.

**Acceptance.** For Albert's class (x, x) + (y, xy) over ℝ(x, y), the period is 2 and the index is 4 = 2n. Every class of odd period over ℝ(S) has index equal to its period.

**Direct prerequisites:** [De Jong's period-index theorem in characteristic zero](#pi-1-de-jong-period-index); `SemisimpleAlgebrasPartII:SA.0/index-divides-degree-index`; `SemisimpleAlgebrasPartII:SA.1/period-divides-index`; `SemisimpleAlgebrasPartII:SA.1/same-prime-divisors`; `SemisimpleAlgebrasPartII:SA.0/class-index`.

**Source:** B19, §0.2, p. 63; §6.3, p. 95; §7.5, p. 104; §8.2, p. 108: De Jong's theorem and a norm argument give ind ∈ {per, 2 per}; odd period gives equality. B19, §0.4, p. 65, citing Albert 1932: The biquaternion class (x, x) + (y, xy) has period 2 and index 4.

*Suggested home:* `TauCeti/AlgebraicGeometry/RealSurface/PeriodIndex/NormBound`, namespace `TauCeti.RealSurface`.

<a id="pi-1-point-removal-extension"></a>

### Removing finitely many points and extending line bundles

`PI.1/point-removal-extension` · theorem

Let S be a smooth integral surface over ℝ and V ⊂ S a dense open. Every line bundle on V extends to S (Pic(S) → Pic(V) is onto). If Z ⊂ S is finite and Σ ⊂ S(ℝ) is a union of connected components, restriction H¹(Σ, 𝔽₂) → H¹(Σ ∖ Z, 𝔽₂) is injective. These are the extension and injectivity steps used to pass from the finite-flat open U₀ to U.

**Hypotheses and conventions.** S smooth, so Weil and Cartier divisors agree; Σ a surface (two-dimensional manifold) and Z finite.

**Proof.**

1. A line bundle on V is O\_V(D) for a Weil divisor D on V; its closure in S is a Weil divisor, Cartier since S is smooth, restricting to D.
2. Σ ∖ Z ⊂ Σ: removing points from a surface does not change H¹ except through H¹ classes supported near the points, and the long exact sequence of the pair with H¹ of a punctured disc neighbourhood shows the restriction is injective (excision gives H¹(Σ, Σ ∖ Z) = ⊕ H¹(D, D ∖ {pt}) = 0).

**Acceptance.** For Σ = S² and Z one point, H¹(S²) = 0 → H¹(ℝ²) = 0 is injective. For Σ a torus and Z a point, H¹ is unchanged.

**Direct prerequisites:** `AlgebraicGeometry.Scheme` (Mathlib); `SchemeAndStackFoundations:SF.5`; Tau Ceti roadmap `TauCetiRoadmap/AlgebraicTopology#stage-6-cohomology-products-and-manifold-duality`.

**Source:** B19, Proof of Proposition 7.1, pp. 103–104; Proposition 4.5 proof, p. 85: Pic(S) → Pic(U₀) is surjective and H¹(Θ) → H¹(Θ₀) is injective because U ∖ U₀ is finite.

*Suggested home:* `TauCeti/AlgebraicGeometry/RealSurface/PeriodIndex/Unramified`, namespace `TauCeti.RealSurface`.


## Layer PI.2: Unramified classes on complex surfaces

Benoist's Hodge-theoretic proof of de Jong's theorem for unramified classes: the hypersurface family in |dnH| on ℙ¹ × S, vanishing of the topological obstruction by weak Lefschetz, the compatible integral lift (reduction equal to p\*α̃) and pushforward adjustment, density of splitting hypersurfaces via Voisin's kernel cone, and ind = per for α ∈ Br(S).

*Builds on:* `HodgeStructuresPartII:H.8`, `MotivesAndAlgebraicCycles:MC.7`, `MotivesAndAlgebraicCycles:MC.2`, `SemisimpleAlgebrasPartII:SA.0`.

<a id="pi-2-complex-hypersurface-family"></a>

### Hypersurfaces in P¹ × S of degree divisible by the period

`PI.2/complex-hypersurface-family` · construction

Let S be a connected smooth projective complex surface, α ∈ Br(S) of period n, and A a very ample line bundle with A² > A·K\_S. Put X = ℙ¹ × S and H = pr₁\*O(1) ⊗ pr₂\*A, very ample on X; then H²·K\_X = 2(A·K\_S − A²) < 0. For d ≥ 1 let B\_d ⊂ |dnH| be the Zariski-open locus of smooth surfaces and T → B\_d the universal family; each fibre T\_b comes with p\_b : T\_b → S, generically finite of degree dn, and its class in H²(X(ℂ), ℤ) is dn·c₁(H), divisible by n.

**Hypotheses and conventions.** S connected smooth projective over ℂ; A very ample with A² > A·K\_S; d ≥ 1.

**Construction.**

1. K\_X = pr₁\*K\_{ℙ¹} + pr₂\*K\_S; expand H²·K\_X with h² = 0 on ℙ¹ and A²·K\_S = 0 on the surface S to get 2(A·K\_S − A²).
2. H is very ample (Segre embedding of very ample bundles; AlgebraicModuliForArithmeticGeometry:R09.1/ample-powers-and-fixed-twists for its powers), and Bertini (SchemeAndStackFoundations §4.13) makes the smooth members of |dnH| a dense Zariski open B\_d; the universal family is the incidence divisor in B\_d × X.
3. The degree of p\_b is the intersection of T\_b with a fibre ℙ¹ × {s}, namely dn.

**Uses.** Benoist 2019, Lemmas 1.3–1.4 and Proposition 1.2, pp. 69–71: the surfaces T\_b on which α is killed. HodgeStructuresPartII:H.8/voisin-product-surface: the family to which Voisin's kernel-cone theorem applies. PI.2/complex-obstruction-vanishes: divisibility of the cycle class of T\_b by n.

**API.**

- `RealSurface.ComplexHypersurfaceFamily` (structure): The data (S, α, A, d) with X, H, B\_d, the universal family and the projections p\_b.
- `RealSurface.ComplexHypersurfaceFamily.canonical_neg` (relation): H²·K\_X = 2(A·K\_S − A²) < 0.
- `RealSurface.ComplexHypersurfaceFamily.degree_proj` (other): p\_b : T\_b → S is generically finite of degree dn.
- `RealSurface.ComplexHypersurfaceFamily.cycleClass_eq` (relation): cl(T\_b) = dn·c₁(H) in H²(X(ℂ), ℤ).
- `RealSurface.ComplexHypersurfaceFamily.isOpen_smooth` (other): B\_d is a nonempty Zariski open of |dnH|.

**Unit tests.**

- `RealSurface.ComplexHypersurfaceFamily.canonical_neg_projectivePlane` (computation): For S = ℙ², A = O(1): H²·K\_X = 2(−3 − 1) = −8.
- `RealSurface.ComplexHypersurfaceFamily.degree_one` (degenerate): For n = d = 1, p\_b has degree 1, and T\_b is the graph-like section family.
- `RealSurface.ComplexHypersurfaceFamily.quintic_excluded` (non-example): For the quintic surface and A = O(1), A² = A·K\_S = 5, so the hypothesis A² > A·K\_S fails.
- `RealSurface.ComplexHypersurfaceFamily.degree_eq_intersection` (compatibility): deg p\_b equals the intersection number T\_b·(ℙ¹ × {s}) of SchemeAndStackFoundations §5.

**Acceptance.** For S = ℙ² and A = O(1), A² = 1 > −3 = A·K\_S. For a quintic surface in ℙ³ with A = O(1), A² = 5 = A·K\_S, so A = O(1) is excluded and A = O(2) is required.

**Direct prerequisites:** `SchemeAndStackFoundations:SF.5`; `SchemeAndStackFoundations:SF.2`; `SchemeAndStackFoundations:SF.4`; `AlgebraicModuliForArithmeticGeometry:R09.1/ample-powers-and-fixed-twists`; `AlgebraicGeometry.Scheme` (Mathlib).

**Source:** B19, §1, p. 69: X = ℙ¹ × S, H = O(1) ⊠ A with A² > K\_S·A, so H²K\_X < 0; B ⊂ |dnH| the smooth surfaces and T → B the universal family.

*Suggested home:* `TauCeti/AlgebraicGeometry/RealSurface/PeriodIndex/ComplexFamily`, namespace `TauCeti.RealSurface`.

<a id="pi-2-complex-obstruction-vanishes"></a>

### The pulled-back class has no topological obstruction

`PI.2/complex-obstruction-vanishes` · theorem

In PI.2/complex-hypersurface-family, for every b ∈ B\_d(ℂ), the image τ of p\_b\*α ∈ Br(T\_b)\[n] in H³(T\_b(ℂ), ℤ)\[n] under the complex topological Brauer sequence 0 → H²(ℤ)/⟨n, Pic⟩ → Br\[n] → H³(ℤ)\[n] → 0 vanishes.

**Hypotheses and conventions.** The setting of PI.2/complex-hypersurface-family.

**Proof.**

1. With i : T\_b ↪ X, the composite i\_\*i\* is cup product with cl(T\_b) = dn c₁(H) (projection formula), hence kills the n-torsion class pr₂\*τ\_S.
2. i\_\* : H³(T\_b, ℤ) → H⁵(X, ℤ) is an isomorphism by integral weak Lefschetz (HodgeStructuresPartII:H.8/ordinary-integral-lefschetz-h3).
3. τ = p\_b\*τ\_S = i\*pr₂\*τ\_S maps to zero under the isomorphism i\_\*, so τ = 0.

**Acceptance.** If H³(S(ℂ), ℤ) has no torsion (S = ℙ²), τ\_S = 0 already.

**Direct prerequisites:** [Hypersurfaces in P¹ × S of degree divisible by the period](#pi-2-complex-hypersurface-family); `HodgeStructuresPartII:H.8/ordinary-integral-lefschetz-h3`; `MotivesAndAlgebraicCycles:MC.2`; Tau Ceti roadmap `TauCetiRoadmap/AlgebraicTopology#stage-6-cohomology-products-and-manifold-duality`.

**Source:** B19, Lemma 1.3, pp. 69–70: The topological component of p\*α vanishes, using the projection formula, n-divisibility of cl(T) and the weak Lefschetz isomorphism.

*Suggested home:* `TauCeti/AlgebraicGeometry/RealSurface/PeriodIndex/ComplexFamily`, namespace `TauCeti.RealSurface`.

<a id="pi-2-compatible-complex-lift"></a>

### Compatible integral lift and pushforward adjustment

`PI.2/compatible-complex-lift` · construction

In PI.2/complex-hypersurface-family fix a Kummer lift α̃ ∈ H²(S(ℂ), ℤ/n) of α. Choose β ∈ H²(T\_b(ℂ), ℤ) whose reduction modulo n is exactly p\_b\*α̃; such β exists because the Bockstein of p\_b\*α̃ is τ = 0. Then p\_{b\*}β is divisible by n, and there is γ ∈ H²(T\_b(ℂ), ℤ) with p\_{b\*}(β − nγ) = 0. The class β − nγ lies in H²(T\_b, ℤ)\_S = ker p\_{b\*} and still induces p\_b\*α in Br(T\_b).

**Hypotheses and conventions.** The setting of PI.2/complex-hypersurface-family; the compatibility β mod n = p\_b\*α̃ is imposed (an arbitrary integral lift of p\_b\*α in the Brauer sequence is not enough).

**Construction.**

1. By PI.2/complex-obstruction-vanishes the integral Bockstein of p\_b\*α̃ vanishes, so it lifts to β ∈ H²(T\_b, ℤ).
2. p\_{b\*}β reduces to p\_{b\*}p\_b\*α̃ = dn·α̃ = 0 modulo n, so p\_{b\*}β = nε for some ε ∈ H²(S, ℤ).
3. H²(T\_b, ℤ) → H⁴(X, ℤ) is onto (HodgeStructuresPartII:H.8/ordinary-integral-lefschetz-h2) and H⁴(ℙ¹ × S, ℤ) → H²(S, ℤ) is onto by the Künneth formula, so ε = p\_{b\*}γ for some γ.
4. β − nγ reduces to p\_b\*α̃ modulo n, so it still induces p\_b\*α.

**Uses.** Benoist 2019, Proof of Proposition 1.2, p. 71: the class β − nγ in ker p\_\* that is moved into the Voisin cone. PI.2/dense-splitting-hypersurfaces: the compatible lift is transported along the family.

**API.**

- `RealSurface.compatibleLift` (constructor): β ∈ H²(T\_b(ℂ), ℤ) with β mod n = p\_b\*α̃.
- `RealSurface.compatibleLift_mod` (simp): (compatibleLift α̃) mod n = p\_b\*α̃.
- `RealSurface.pushforward_compatibleLift_dvd` (relation): n ∣ p\_{b\*}β.
- `RealSurface.kernelAdjust` (constructor): γ with p\_{b\*}(β − nγ) = 0.
- `RealSurface.kernelAdjust_brauer` (compatibility): β − nγ maps to p\_b\*α under H²(T\_b, ℤ) → Br(T\_b)\[n].

**Unit tests.**

- `RealSurface.compatibleLift_zero` (degenerate): For α̃ = 0, β = 0 is a compatible lift.
- `RealSurface.compatibleLift_period_one` (computation): For n = 1 every integral class β is compatible, and kernelAdjust gives γ with p\_{b\*}γ = p\_{b\*}β.
- `RealSurface.arbitraryLift_not_divisible` (non-example): An integral lift β′ of p\_b\*α in the topological Brauer sequence that differs from a compatible lift by cl(L) with p\_{b\*}cl(L) not divisible by n has p\_{b\*}β′ not divisible by n.
- `RealSurface.kernelAdjust_mem_ker` (characterisation): β − nγ lies in ker(p\_{b\*} : H²(T\_b, ℤ) → H²(S, ℤ)).

**Acceptance.** For α = 0 and α̃ = 0 one may take β = γ = 0. Replacing β by β + cl(L) for a line bundle L on T\_b keeps the Brauer class but can destroy n-divisibility of p\_{b\*}β.

**Direct prerequisites:** [The pulled-back class has no topological obstruction](#pi-2-complex-obstruction-vanishes); `HodgeStructuresPartII:H.8/ordinary-integral-lefschetz-h2`; `SchemeAndStackFoundations:SF.6`; Tau Ceti roadmap `TauCetiRoadmap/AlgebraicTopology#stage-6-cohomology-products-and-manifold-duality`.

**Source:** B19, Lemma 1.4, p. 70: Construction of γ with p\_\*(β − nγ) = 0 from the n-divisibility of p\_\*β and the surjectivity of the Gysin maps. B19, Lemma 1.3 and (1.1)–(1.2), p. 69: The Kummer and topological Brauer sequences for complex varieties.

*Suggested home:* `TauCeti/AlgebraicGeometry/RealSurface/PeriodIndex/ComplexFamily`, namespace `TauCeti.RealSurface`.

<a id="pi-2-dense-splitting-hypersurfaces"></a>

### Dense splitting hypersurfaces

`PI.2/dense-splitting-hypersurfaces` · theorem

In PI.2/complex-hypersurface-family, for all sufficiently large d the points b ∈ B\_d(ℂ) with p\_b\*α = 0 ∈ Br(T\_b) are dense in B\_d(ℂ) for the Euclidean topology.

**Hypotheses and conventions.** d large enough for Voisin's theorem (HodgeStructuresPartII:H.8/voisin-product-surface). Transport over contractible opens uses ordinary Ehresmann; the compatible lift is transported as the restriction of the family class pulled back from S, so its reduction stays p\_x\*α̃.

**Proof.**

1. Fix a nonempty Euclidean open W ⊂ B\_d(ℂ); it meets Voisin's Zariski open V; take b ∈ V ∩ W and a contractible neighbourhood Λ ⊂ V ∩ W.
2. PI.2/compatible-complex-lift gives β − nγ in H²(T\_b, ℤ)\_S; its image in H²(T\_b, ℝ)\_S is a lattice coset point modulo n·(lattice).
3. Voisin's open cone Ω ⊂ H²(T\_b, ℝ)\_S (H.8/voisin-kernel-cone) meets the coset β − nγ + n·H²(T\_b, ℤ)\_S (H.8/full-lattice-coset-cone): choose δ with β − nγ − nδ ∈ Ω.
4. Ehresmann transport over the contractible Λ (AlgebraicTopologyPartII:AT2.16/equivariant-ehresmann with trivial involution) identifies the cohomology of the fibres; some x ∈ Λ makes β − nγ − nδ of type (1,1) on T\_x; integral Lefschetz (1,1) (MotivesAndAlgebraicCycles:MC.7/tate-and-hodge-known-cases, entry H1) writes it as c₁ of a line bundle.
5. The transported β still reduces to p\_x\*α̃, so in the topological Brauer sequence p\_x\*α = 0 ∈ Br(T\_x).

**Acceptance.** For α = 0 every b qualifies.

**Direct prerequisites:** [Compatible integral lift and pushforward adjustment](#pi-2-compatible-complex-lift); `HodgeStructuresPartII:H.8/voisin-product-surface`; `HodgeStructuresPartII:H.8/voisin-kernel-cone`; `HodgeStructuresPartII:H.8/full-lattice-coset-cone`; `MotivesAndAlgebraicCycles:MC.7/tate-and-hodge-known-cases`; `AlgebraicTopologyPartII:AT2.16/equivariant-ehresmann`; `MotivesAndAlgebraicCycles:MC.2`.

**Source:** B19, Proposition 1.2 and its proof, pp. 69, 71: For d large, the b with α|\_{T\_b} = 0 are dense; proof by Voisin's cone, the lattice argument and Lefschetz (1,1). B19, Theorem 1.5, pp. 70–71, citing Voisin 2006: Voisin's open cone in the kernel of p\_\* whose classes become (1,1) nearby.

*Suggested home:* `TauCeti/AlgebraicGeometry/RealSurface/PeriodIndex/ComplexFamily`, namespace `TauCeti.RealSurface`.

<a id="pi-2-complex-unramified-period-index"></a>

### Unramified period equals index on complex surfaces

`PI.2/complex-unramified-period-index` · theorem — planet: **Unramified complex period-index theorem**

Let S be a connected smooth projective surface over ℂ and α ∈ Br(S) ⊂ Br(ℂ(S)). Then ind(α) = per(α).

**Hypotheses and conventions.** S connected smooth projective over ℂ; α unramified on S.

**Proof.**

1. Apply PI.2/dense-splitting-hypersurfaces with two consecutive large integers d, d + 1: there are smooth T ∈ |dnH| and T′ ∈ |(d+1)nH| on which α vanishes.
2. Their function fields are splitting fields of α of degrees dn and (d+1)n over ℂ(S), so ind(α) divides both (SemisimpleAlgebrasPartII:SA.0/index-divides-splitting-degree), hence divides n.
3. per(α) divides ind(α) (SA.1/period-divides-index), so ind(α) = n.

**Acceptance.** For S an Enriques surface over ℂ and α the nonzero class of Br(S) ≅ ℤ/2, ind(α) = 2.

**Direct prerequisites:** [Dense splitting hypersurfaces](#pi-2-dense-splitting-hypersurfaces); `SemisimpleAlgebrasPartII:SA.0/index-divides-splitting-degree`; `SemisimpleAlgebrasPartII:SA.1/period-divides-index`; `SemisimpleAlgebrasPartII:SA.0/class-index`.

**Source:** B19, Theorem 1.1 and its proof, p. 69: De Jong's theorem for unramified classes on complex surfaces, from two consecutive degrees.

*Suggested home:* `TauCeti/AlgebraicGeometry/RealSurface/PeriodIndex/ComplexFamily`, namespace `TauCeti.RealSurface`.


## Layer PI.3: Ramified double covers

The finite rank-two cover Spec\_S(O ⊕ L⁻¹(−R)) branched along R ∪ D (normal, ordinary double points over Sing Δ); the incidence model rv² = sw² in ℙ\_S(O ⊕ L), its map to the finite model, its fixed singular centres (w = 0 over Sing R) and resolution, the family in a fixed threefold; local structure and Stein factorisation p\_\*O\_T = O\_S ⊕ L⁻¹(−R); étale and finite-flat strata; p\_\* is an isomorphism on H^{≥3} and onto on H² for L(R) ample; the image of the equivariant pushforward is cut out by the first real component.

*Builds on:* `RealSurfacePeriodIndex:PI.1`, `AlgebraicTopologyPartII:AT2.14`, `HodgeStructuresPartII:H.8`, `AlgebraicModuliForArithmeticGeometry:R09.1`, `SchemeAndStackFoundations:SF.4`.

<a id="pi-3-branch-cover-finite-model"></a>

### The finite double cover branched along R ∪ D

`PI.3/branch-cover-finite-model` · construction — planet: **Finite branched double cover**

Let S be a smooth surface over a field of characteristic 0, R ⊂ S an SNC divisor with equation r ∈ H⁰(S, O(R)), L a line bundle and s ∈ H⁰(S, L²(R)) with smooth zero divisor D meeting R transversally and avoiding Sing R. Put M = L(R) and b = rs ∈ H⁰(S, M²). The finite model is C = Spec\_S(O\_S ⊕ M⁻¹), with multiplication M⁻¹ ⊗ M⁻¹ → O\_S given by b. It is finite locally free of rank 2, locally z² = rs, étale exactly over S ∖ (R ∪ D), normal, with ordinary double points exactly over Sing(R ∪ D); it carries the involution z ↦ −z with invariant subring O\_S.

**Hypotheses and conventions.** char 0; R SNC; D smooth, transverse to R, disjoint from Sing R. If R ∪ D = ∅ the cover is étale and may be disconnected; normality does not assert integrality.

**Construction.**

1. Locally, with M⁻¹ trivialised by z, the algebra is O\_S\[z]/(z² − b): Mathlib's QuadraticAlgebra O b 0, finite free of rank 2 with basis 1, z.
2. The discriminant is 4b, so the cover is étale exactly where rs is a unit, that is off R ∪ D.
3. Normality by Serre's criterion: a hypersurface in a smooth threefold is Cohen–Macaulay, hence S2 (DeformationAndDerivedPatchingAlgebra:R03.3/ci-cohen-macaulay); it is regular in codimension one because rs vanishes to order 1 along each component of R ∪ D.
4. At a point of Sing(R ∪ D), local coordinates make b = xy and z² = xy is an ordinary double point; elsewhere on R ∪ D, b is a coordinate and the cover is smooth.

**Uses.** Benoist 2019, §§3.1–3.3, pp. 76–79: the finite flat part of the double cover over S₀. PI.3/incidence-double-cover: the incidence model maps to this finite model. PI.5/trace-zero-restriction: the two summands O\_S and M⁻¹ restrict to the auxiliary curve.

**API.**

- `RealSurface.branchCover` (data): C = Spec\_S(O\_S ⊕ M⁻¹) with multiplication by b = rs.
- `RealSurface.branchCover_finite_locallyFree` (other): C → S is finite locally free of rank 2.
- `RealSurface.branchCover_etale_iff` (characterisation): C → S is étale over x iff x ∉ R ∪ D.
- `RealSurface.branchCover_normal` (other): C is normal.
- `RealSurface.branchCover_singular` (characterisation): The singular points of C are ordinary double points, one over each point of Sing(R ∪ D).
- `RealSurface.branchCover_involution` (structure): The involution z ↦ −z, with invariants O\_S and anti-invariants M⁻¹.
- `RealSurface.branchCover_local` (compatibility): Over an open where M is trivial with b ↦ a, C is Spec of QuadraticAlgebra O a 0.

**Unit tests.**

- `RealSurface.branchCover_node` (computation): For r = x, s = y on 𝔸², C is Spec k\[x, y, z]/(z² − xy).
- `RealSurface.branchCover_unit` (degenerate): For b = 1, C ≅ S ⊔ S over S.
- `RealSurface.branchCover_quadraticAlgebra` (compatibility): Locally C ≅ Spec (QuadraticAlgebra O b 0), with the basis QuadraticAlgebra.basis.
- `RealSurface.branchCover_not_regular` (non-example): C is not regular over R ∩ D: a finite flat double cover of a smooth surface branched along an SNC divisor need not be smooth.

**Acceptance.** S = 𝔸², R = {x = 0}, D = {y = 0}: C = Spec k\[x, y, z]/(z² − xy), an A₁ singularity at the origin. R = D = ∅ and b = 1: C = S ⊔ S.

**Direct prerequisites:** `QuadraticAlgebra` (Mathlib); `QuadraticAlgebra.basis` (Mathlib); `QuadraticAlgebra.finrank_eq_two` (Mathlib); `QuadraticAlgebra.discr_def` (Mathlib); `DeformationAndDerivedPatchingAlgebra:R03.3/ci-cohen-macaulay`; `DeformationAndDerivedPatchingAlgebra:R03.3`; `SchemeAndStackFoundations:SF.0`; `SchemeAndStackFoundations:SF.4`.

**Source:** B19, §3.1, pp. 76–77: Double covers of S ramified over R ∪ D, defined by rv² = sw² in ℙ\_S(O ⊕ L); finite and of degree two away from the special points, with ordinary double points above Sing R. B19, (5.5), p. 87: The splitting p\_\*O\_T ≅ O\_S ⊕ L⁻¹(−R) induced by the involution.

*Suggested home:* `TauCeti/AlgebraicGeometry/RealSurface/PeriodIndex/DoubleCover`, namespace `TauCeti.RealSurface`.

<a id="pi-3-incidence-double-cover"></a>

### The incidence model and its resolution

`PI.3/incidence-double-cover` · construction — planet: **Ramified double covers**

In PI.3/branch-cover-finite-model, let X̄ = ℙ\_S(O ⊕ L) with tautological sections v ∈ H⁰(O(1)) and w ∈ H⁰(O(1) ⊗ f\*L⁻¹), and T̄ = {rv² = sw²} ⊂ X̄ with projection p̄ : T̄ → S. There is a proper morphism h : T̄ → C, given by z = r v/w where w ≠ 0 and z = s w/v where v ≠ 0, which is an isomorphism away from R ∩ D. The singular points of T̄ are exactly the points over Sing R with w = 0 (that is \[v : w] = \[1 : 0]), ordinary double points whose position in X̄ does not depend on s. T is the blow-up of T̄ at these points, p : T → S is proper and generically of degree 2, and blowing up X̄ at the same fixed points gives a smooth projective threefold X in which the T for s ∈ B form a smooth family π : 𝒯 → B ⊂ B × X. The map p is not finite: its fibres over R ∩ D and over Sing R are ℙ¹.

**Hypotheses and conventions.** B ⊂ H⁰(S, L²(R)) the open set of sections with D smooth, transverse to R and disjoint from Sing R. The fixed singular centres are where w vanishes (the published text says v; see RealSurfacePeriodIndex/E18).

**Construction.**

1. On w ≠ 0 write t = v/w, so T̄ is r t² = s; then z = r t satisfies z² = r²t² = rs. On v ≠ 0 write u = w/v, so r = s u², and z = s u satisfies z² = rs. On v, w ≠ 0 both give z = r v/w = s w/v, so h is well defined.
2. Away from R ∩ D one of r, s is a unit locally and h is an isomorphism; over R ∩ D the fibre of T̄ is the whole ℙ¹ (PI.3/incidence-local-resolution).
3. Jacobian criterion: over Sing R (where s is a unit and r = xy) the only singular point of the fibre is w = 0, an ordinary double point; elsewhere T̄ is smooth. The point w = 0 over Sing R is the same for every s.
4. Blow up these finitely many fixed points of X̄ to get X; strict transforms of the T̄ are the resolved T and form a smooth family over B (blow-ups and blow-up strict transforms: upstream StableReduction Layer 4, as re-exported by SchemeAndStackFoundations:SF.4/strict-transform and §4.11).

**Uses.** Benoist 2019, §§3–6: the double covers p : T → S used in Sections 4–6. PI.3/double-cover-strata: the strata over which p is étale or finite flat. PI.5/curve-lift: the auxiliary curve lifts to T. PI.6/vanishing-variation: the family 𝒯 → B carries the variation of Hodge structure.

**API.**

- `RealSurface.incidenceModel` (data): T̄ = {rv² = sw²} ⊂ ℙ\_S(O ⊕ L) with p̄ : T̄ → S.
- `RealSurface.incidenceModel.toBranchCover` (constructor): h : T̄ → C, proper, an isomorphism off R ∩ D.
- `RealSurface.incidenceModel.singularLocus_eq` (characterisation): Sing T̄ = {points over Sing R with w = 0}, independent of s.
- `RealSurface.resolvedCover` (data): T = Bl\_{Sing T̄} T̄ with p : T → S proper and generically of degree 2.
- `RealSurface.resolvedFamily` (constructor): The smooth projective family 𝒯 → B inside B × X, X the blow-up of X̄ at the fixed points.
- `RealSurface.resolvedCover_involution` (structure): The covering involution v ↦ −v extends to T and commutes with p.

**Unit tests.**

- `RealSurface.incidenceModel_crossing_chart` (computation): At a crossing r = x, s = y, the charts (x, a) with y = xa², z = xa and (y, c) with x = yc², z = yc cover T̄ and glue by c = a⁻¹.
- `RealSurface.incidenceModel_finite_of_disjoint` (degenerate): If R ∩ D = ∅ and R is smooth then p̄ is finite and T̄ = C.
- `RealSurface.incidenceModel_pushforward` (compatibility): p\_\*O\_T ≅ O\_S ⊕ L⁻¹(−R), the structure sheaf of PI.3/branch-cover-finite-model.
- `RealSurface.incidenceModel_not_finite` (non-example): If R ∩ D ≠ ∅, p̄ has a ℙ¹ fibre and is not finite.

**Acceptance.** If R ∩ D = ∅ and R is smooth, T̄ = C is finite over S and T = T̄. Over a node of R, T has a single exceptional ℙ¹, mapping to the node.

**Direct prerequisites:** [The finite double cover branched along R ∪ D](#pi-3-branch-cover-finite-model); `AlgebraicModuliForArithmeticGeometry:R09.1/projective-bundle`; `SchemeAndStackFoundations:SF.5/projective-bundle`; `SchemeAndStackFoundations:SF.4/strict-transform`; Tau Ceti roadmap `TauCetiRoadmap/StableReduction#layer-4-blowups-and-intersection-theory-on-arithmetic-surfaces`.

**Source:** B19, §3.1, pp. 76–77: The incidence surface rv² = sw² in ℙ\_S(O ⊕ L), its ordinary double points above Sing R, the minimal resolution T and the family 𝒯 ⊂ B × X after blowing up fixed points. B19, §5.1–5.2, pp. 85–86: The family of resolved double covers is viewed as a family of surfaces in a fixed smooth projective threefold.

*Suggested home:* `TauCeti/AlgebraicGeometry/RealSurface/PeriodIndex/DoubleCover`, namespace `TauCeti.RealSurface`.

<a id="pi-3-incidence-local-resolution"></a>

### Local structure and Stein factorisation of the incidence model

`PI.3/incidence-local-resolution` · theorem

At a point of R ∩ D the surface T̄ is smooth and h : T̄ → C is the minimal resolution of the node z² = rs, with exceptional ℙ¹ of self-intersection −2 (equivalently the blow-up of the ideal (r, z)). The resolved cover factors as T → C → S, both T → C and T̄ → C satisfy h\_\*O = O\_C, R^i h\_\*O = 0 for i > 0 and have geometrically connected fibres, so C = Spec\_S(p\_\*O\_T) and p\_\*O\_T = O\_S ⊕ L⁻¹(−R) compatibly with the involution.

**Hypotheses and conventions.** The setting of PI.3/incidence-double-cover.

**Proof.**

1. Charts at a crossing: s = r x², z = r x and r = s y², z = s y with y = x⁻¹; both are affine planes, so T̄ is smooth there, and the exceptional curve is ℙ¹ with normal bundle O(−2).
2. The Čech computation on the two charts gives Γ(O) = k\[r, rx, rx²] ≅ k\[r, z, s]/(z² − rs) and vanishing higher cohomology, hence h\_\*O = O\_C and R^i h\_\*O = 0 (SchemeAndStackFoundations §2.2 Čech comparison).
3. Over Sing R the blow-up of the ordinary double point has the same two properties (rational singularity), and h is proper birational onto the normal C, so h\_\*O = O\_C (proper birational maps to normal schemes; SchemeAndStackFoundations §4.9 Stein factorisation).
4. Hence p\_\*O\_T = (C → S)\_\*O\_C = O\_S ⊕ M⁻¹ with M = L(R), and the involution acts by +1 and −1 on the two summands.

**Acceptance.** The exceptional curve over a crossing has self-intersection −2 on T.

**Direct prerequisites:** [The incidence model and its resolution](#pi-3-incidence-double-cover); [The finite double cover branched along R ∪ D](#pi-3-branch-cover-finite-model); `SchemeAndStackFoundations:SF.1`; `SchemeAndStackFoundations:SF.2`.

**Source:** B19, §3.1, p. 76; Lemma 5.3 proof, p. 87: Ordinary double points, the minimal resolution, rational singularities and the splitting of p\_\*O\_T by the involution.

*Suggested home:* `TauCeti/AlgebraicGeometry/RealSurface/PeriodIndex/DoubleCover`, namespace `TauCeti.RealSurface`.

<a id="pi-3-double-cover-strata"></a>

### The étale and finite-flat strata of the double cover

`PI.3/double-cover-strata` · definition

For p : T → S of PI.3/incidence-double-cover put Δ = R ∪ D, S\* = S ∖ Δ, S₀ = S ∖ Sing Δ, T\* = p⁻¹S\*, T₀ = p⁻¹S₀, j₀ : S\* ↪ S₀ and E = p⁻¹(Sing Δ) = T ∖ T₀. Then p : T\* → S\* is finite étale of degree 2, p : T₀ → S₀ is finite locally free of rank 2, E(ℂ) is a disjoint union of copies of ℙ¹(ℂ), one over each point of Sing Δ(ℂ), and the sign local system Z̃ of T\*(ℂ) → S\*(ℂ) is the G-equivariant rank-one local system of AlgebraicTopologyPartII:AT2.14/double-cover-local-system. Over a smooth point of Δ the scheme fibre has length 2 and is nonreduced.

**Hypotheses and conventions.** G = Gal(ℂ/ℝ) when S is defined over ℝ; geometric point counts are not flat degrees.

**Construction.**

1. Over S₀ the map T₀ → S₀ is the finite model C restricted to S₀ (PI.3/incidence-local-resolution: h is an isomorphism off R ∩ D and the fixed centres), hence finite locally free of rank 2.
2. Over S\* it is étale (PI.3/branch-cover-finite-model).
3. Over Sing Δ the fibre of T is ℙ¹: over R ∩ D the incidence fibre, over Sing R the exceptional curve of the blow-up.

**Uses.** Benoist 2019, Propositions 3.2–3.3 and 4.4, pp. 78–84: long exact sequences with supports along E and P, and the triangle on S₀. PI.3/complex-pushforward-iso: the diagram chase with cohomology supported on E and P. PI.4/uniform-obstruction-vanishing: the classes on S\*, S₀ and T₀.

**API.**

- `RealSurface.DoubleCoverStrata` (structure): S\*, S₀, T\*, T₀, E, P = Sing Δ and j₀ for the double cover p.
- `RealSurface.DoubleCoverStrata.etale` (other): p : T\* → S\* is finite étale of degree 2.
- `RealSurface.DoubleCoverStrata.finiteFlat` (other): p : T₀ → S₀ is finite locally free of rank 2.
- `RealSurface.DoubleCoverStrata.exceptional_fibre` (characterisation): E(ℂ) ≅ P(ℂ) × ℙ¹(ℂ) over P(ℂ).
- `RealSurface.DoubleCoverStrata.signLocalSystem` (data): Z̃ on S\*(ℂ), the AT2.14 sign local system of T\* → S\*.

**Unit tests.**

- `RealSurface.DoubleCoverStrata.fibre_smooth_branch` (computation): Over x ∈ R ∖ (Sing R ∪ D), the fibre is Spec κ(x)\[z]/(z²), of length 2 with one geometric point.
- `RealSurface.DoubleCoverStrata.exceptional_empty` (degenerate): If Δ is smooth then E = ∅ and T₀ = T.
- `RealSurface.DoubleCoverStrata.signLocalSystem_compat` (compatibility): Z̃ is coker(ℤ → p\_\*ℤ) on S\*(ℂ), as in AT2.14.
- `RealSurface.DoubleCoverStrata.pointCount_not_degree` (non-example): The number of geometric points in the fibre is 1 over Δ ∖ Sing Δ and 2 over S\*, although the flat degree over S₀ is constantly 2.

**Acceptance.** E is empty iff Δ is smooth. Over a point of R ∖ Sing R the fibre is Spec k\[z]/(z²).

**Direct prerequisites:** [The incidence model and its resolution](#pi-3-incidence-double-cover); [Local structure and Stein factorisation of the incidence model](#pi-3-incidence-local-resolution); `AlgebraicTopologyPartII:AT2.14/double-cover-local-system`.

**Source:** B19, §3.2, p. 77; §3.3, p. 78: S\*, S₀, j₀, the restrictions of p, the sign local system Z̃, P = Sing Δ and E = p⁻¹(P), a disjoint union of copies of ℙ¹(ℂ).

*Suggested home:* `TauCeti/AlgebraicGeometry/RealSurface/PeriodIndex/DoubleCover`, namespace `TauCeti.RealSurface`.

<a id="pi-3-complex-pushforward-iso"></a>

### Pushforward on the complex double cover

`PI.3/complex-pushforward-iso` · theorem

If L(R) is ample, then p\_\* : H^i(T(ℂ), ℤ) → H^i(S(ℂ), ℤ) is an isomorphism for i ≥ 3 and surjective for i = 2.

**Hypotheses and conventions.** L(R) ample (Assumption 3.1), so O\_S(Δ) ≅ L²(2R) is ample and S\*, T\* are affine.

**Proof.**

1. S\* and its finite étale cover T\* are smooth affine surfaces, so their integral cohomology vanishes in degrees ≥ 3 (HodgeStructuresPartII:H.8/affine-integral-vanishing); the sign sequence then kills H^i(S\*, Z̃) for i ≥ 3.
2. The triangle Rj₀\_\*Z̃ → p\_\*ℤ → ℤ on S₀(ℂ) (AlgebraicTopologyPartII:AT2.14/ramified-triangle) gives p\_\* : H^i(T₀) ≅ H^i(S₀) for i ≥ 3 and onto for i = 2.
3. Compare the long exact sequences with supports along E ⊂ T and P ⊂ S; p\_\* : H^j(E) → H^{j−2}(P) is an isomorphism for j ≥ 1 because E is a union of ℙ¹'s over P, and the five lemma concludes.

**Acceptance.** The connected components of T(ℂ) and S(ℂ) correspond (i = 4).

**Direct prerequisites:** [The étale and finite-flat strata of the double cover](#pi-3-double-cover-strata); `HodgeStructuresPartII:H.8/affine-integral-vanishing`; `AlgebraicTopologyPartII:AT2.14/ramified-triangle`; Tau Ceti roadmap `TauCetiRoadmap/AlgebraicTopology#stage-6-cohomology-products-and-manifold-duality`.

**Source:** B19, Assumption 3.1 and Proposition 3.2, p. 78: Under L(R) ample, p\_\* is an isomorphism in degrees ≥ 3 and onto in degree 2, by Andreotti–Frankel, the triangle (3.2) and a diagram chase with supports.

*Suggested home:* `TauCeti/AlgebraicGeometry/RealSurface/PeriodIndex/DoubleCover`, namespace `TauCeti.RealSurface`.

<a id="pi-3-equivariant-pushforward-image"></a>

### Image of the equivariant pushforward

`PI.3/equivariant-pushforward-image` · theorem — planet: **Equivariant pushforward image**

Let S be defined over ℝ and L(R) ample. Put I = im(p\_\* : H¹(T(ℝ), 𝔽₂) → H¹(S(ℝ), 𝔽₂)). For every i ≥ 2 the image of p\_\* : H^i\_G(T(ℂ), ℤ(i−1)) → H^i\_G(S(ℂ), ℤ(i−1)) is exactly {ξ : \[ξ]₁ ∈ I}.

**Hypotheses and conventions.** L(R) ample; real components \[ξ]₁ as in AlgebraicTopologyPartII:AT2.7/fixed-integral.

**Proof.**

1. For i ≥ 5, restriction to the real locus is an isomorphism (AlgebraicTopologyPartII:AT2.6/free-descent, i > 2·dim) and the canonical decomposition identifies both groups with H¹ of the real loci; pushforward acts on real coordinates by the real Gysin map (AT2.9/real-coordinate-maps, AT2.8/equivariant-gysin).
2. Descending induction: the real–complex exact sequences (AT2.7/sign-class) for T and S, connected by pushforwards, with PI.3/complex-pushforward-iso on the ordinary terms and the induction hypothesis in degree i + 1, identify the image with {ξ : \[ξ ∪ ω]₁ ∈ I}.
3. \[ξ ∪ ω]₁ = \[ξ]₁ (invariance of integral components under ω, AT2.7/fixed-integral).

**Acceptance.** If T(ℝ) → S(ℝ) is onto in H¹, every class is a pushforward for i ≥ 2.

**Direct prerequisites:** [Pushforward on the complex double cover](#pi-3-complex-pushforward-iso); `AlgebraicTopologyPartII:AT2.6/free-descent`; `AlgebraicTopologyPartII:AT2.7/fixed-integral`; `AlgebraicTopologyPartII:AT2.7/sign-class`; `AlgebraicTopologyPartII:AT2.8/equivariant-gysin`; `AlgebraicTopologyPartII:AT2.9/real-coordinate-maps`.

**Source:** B19, Proposition 3.3, p. 79: Real substitute for weak Lefschetz: the image of the equivariant pushforward is cut out by the first real component lying in I, by descending induction through real–complex sequences.

*Suggested home:* `TauCeti/AlgebraicGeometry/RealSurface/PeriodIndex/DoubleCover`, namespace `TauCeti.RealSurface`.


## Layer PI.4: Pulling back a period-two class to a double cover

Assumption 4.1 on the cover (avoidance of Ψ ⊃ Θ, kernel generation, H² injectivity); the pulled-back class is unramified; its topological obstruction is killed by ω; uniform-evaluation forms of Propositions 4.4–4.5 (obstruction vanishing, trace-quotient Picard correction, curve adjustment, integral pushforward adjustment); the general Propositions 4.4–4.5 as stated, with their recorded gap.

*Builds on:* `RealSurfacePeriodIndex:PI.3`, `RealSurfacePeriodIndex:PI.0`, `AlgebraicTopologyPartII:AT2.15`, `AlgebraicTopologyPartII:AT2.16`, `MotivesAndAlgebraicCycles:MC.2`.

<a id="pi-4-brauer-cover-hypotheses"></a>

### Hypotheses on a double cover killing a period-two class

`PI.4/brauer-cover-hypotheses` · definition

Let S be a connected smooth projective surface over ℝ, α ∈ Br(ℝ(S)) of period 2 whose ramification divisor R is SNC, U = S ∖ R, Θ = Θ(α) ⊂ U(ℝ), and Ψ ⊂ U(ℝ) a subset open and closed in S(ℝ) with Θ ⊂ Ψ. For a double cover p : T → S of PI.3/incidence-double-cover ramified over R ∪ D, Assumption 4.1 is: (i) p(T(ℝ)) ∩ Ψ = ∅; (ii) the kernel of H¹(S(ℝ), 𝔽₂) → H¹(Ψ, 𝔽₂) is generated by p\_\*H¹(T(ℝ), 𝔽₂) and the Borel–Haefliger classes cl\_R(Γ) of curves Γ ⊂ S with Γ(ℝ) ∩ Ψ = ∅; (iii) p\_\* : H²(T(ℝ), 𝔽₂) → H²(S(ℝ), 𝔽₂) is injective. Since Δ(ℝ) ⊂ p(T(ℝ)), (i) forces Ψ ⊂ S\*(ℝ).

**Hypotheses and conventions.** Cohomology of real loci with 𝔽₂ coefficients; cl\_R is the Borel–Haefliger class of MotivesAndAlgebraicCycles:MC.2.

**Construction.**

1. (i)–(iii) are conditions on the real topology of the cover; their consequences are proved in PI.4 and their verification in PI.6/topology-to-cover-hypotheses.
2. Over a point of Δ(ℝ) the fibre of p has a real point (the ramification point or a real ℙ¹), so Δ(ℝ) ⊂ p(T(ℝ)) and (i) gives Ψ ∩ Δ(ℝ) = ∅.

**Uses.** Benoist 2019, Propositions 4.2–4.5, pp. 80–85: the standing hypotheses of Section 4. PI.6/topology-to-cover-hypotheses: Lemma 6.5 verifies (i)–(iii). PI.6/degree-two-splitting-uniform: the cover in Proposition 6.6 satisfies them.

**API.**

- `RealSurface.BrauerCoverHypotheses` (structure): The three conditions (i)–(iii) for (S, α, Ψ, p).
- `RealSurface.BrauerCoverHypotheses.avoid` (projection): p(T(ℝ)) ∩ Ψ = ∅.
- `RealSurface.BrauerCoverHypotheses.kernel_generated` (projection): ker(H¹(S(ℝ)) → H¹(Ψ)) = p\_\*H¹(T(ℝ)) + span of cl\_R of curves avoiding Ψ.
- `RealSurface.BrauerCoverHypotheses.h2_injective` (projection): p\_\* is injective on H² of real loci.
- `RealSurface.BrauerCoverHypotheses.subset_etale` (other): Ψ ⊂ S\*(ℝ).

**Unit tests.**

- `RealSurface.BrauerCoverHypotheses.of_no_real_points` (degenerate): If S(ℝ) = ∅ the hypotheses hold for Ψ = ∅ and every cover.
- `RealSurface.BrauerCoverHypotheses.of_no_real_cover` (computation): If T(ℝ) = ∅, (i) and (iii) hold for every Ψ, and (ii) says the kernel is spanned by classes of curves avoiding Ψ.
- `RealSurface.BrauerCoverHypotheses.fails_of_branch_in_psi` (non-example): If D(ℝ) ∩ Ψ ≠ ∅, condition (i) fails.
- `RealSurface.BrauerCoverHypotheses.theta_allowed` (compatibility): If Θ(α) is a union of components of S(ℝ) inside U(ℝ), Ψ = Θ(α) is admissible.

**Acceptance.** If S(ℝ) = ∅, then Ψ = ∅ and (i)–(iii) hold for every cover. If D(ℝ) meets Ψ, (i) fails.

**Direct prerequisites:** [The incidence model and its resolution](#pi-3-incidence-double-cover); [The étale and finite-flat strata of the double cover](#pi-3-double-cover-strata); [Real evaluation and the nonzero evaluation locus](#pi-1-real-evaluation-locus); [Unramified locus of a Brauer class](#pi-1-unramified-locus); `MotivesAndAlgebraicCycles:MC.2`.

**Source:** B19, §4 and Assumption 4.1, pp. 79–80: Notation U, Θ, Ψ and the three conditions on p : T → S; Ψ ⊂ S\*(ℝ) follows from (i).

*Suggested home:* `TauCeti/AlgebraicGeometry/RealSurface/PeriodIndex/BrauerCover`, namespace `TauCeti.RealSurface`.

<a id="pi-4-pullback-unramified"></a>

### The pulled-back class is unramified

`PI.4/pullback-unramified` · theorem — planet: **Pullback becomes unramified**

Under Assumption 4.1, α\_{ℝ(T)} ∈ Br(T)\[2] ⊂ Br(ℝ(T))\[2].

**Hypotheses and conventions.** Assumption 4.1 (PI.4/brauer-cover-hypotheses).

**Proof.**

1. Residues vanish along integral curves of T not lying over R, because α is unramified on U and pullback preserves this.
2. Along a curve dominating a component of R, the ramification index is 2 and the residue of the restriction is the ramification index times the restricted residue (residues along a finite extension of DVRs; requested from PurityForFlatCohomology:PF.6), which kills a class of period 2.
3. The remaining curves Γ are ℙ¹'s contracted by p: the exceptional curves over Sing R and the ℙ¹ fibres over R ∩ D of the incidence model (both kinds must be treated). The ramification locus of α\_{ℝ(T)} is then smooth, so by the Gersten complex res\_Γ(α) ∈ H¹(ℝ(Γ), ℤ/2) is unramified on Γ.
4. If Γ ≅ ℙ¹\_ℂ, H¹\_ét(Γ, ℤ/2) = 0. If Γ ≅ ℙ¹\_ℝ, it suffices to show res\_Γ(α)|\_x = 0 at one x ∈ Γ(ℝ): choose a curve Γ′ through x transverse to Γ and meeting T\_U; at general real points y of Γ′, p(y) ∉ Ψ ⊃ Θ by (i), so (p\*α)\_y = 0, and Witt's theorem (PI.0/witt-real-curve (b), which allows ramification of the class on Γ′) gives p\*α|\_{ℝ(Γ′)} = 0, so its residue at x, which is res\_Γ(α)|\_x, vanishes.
5. All residues along curves of T vanish, so α\_{ℝ(T)} ∈ Br(T) by purity for the regular surface T (PurityForFlatCohomology:PF.6/brauer-purity-regular and the DVR residue sequence).

**Acceptance.** If R = ∅ the statement is that α\_{ℝ(T)} is unramified on T, which is immediate.

**Direct prerequisites:** [Hypotheses on a double cover killing a period-two class](#pi-4-brauer-cover-hypotheses); `PurityForFlatCohomology:PF.6/brauer-residue`; `PurityForFlatCohomology:PF.6/dvr-brauer-residue-sequence`; `PurityForFlatCohomology:PF.6/brauer-purity-regular`; `PurityForFlatCohomology:PF.6`; [Witt's theorem on Brauer classes of real curves](#pi-0-witt-real-curve); [Unramified locus of a Brauer class](#pi-1-unramified-locus); [The étale and finite-flat strata of the double cover](#pi-3-double-cover-strata); `SchemeAndStackFoundations:SF.2`.

**Source:** B19, Proposition 4.2 and proof, p. 80: α\_{ℝ(T)} is unramified: residues along curves over R vanish by ramification index 2; on exceptional curves by Gersten and Witt's theorem along a transverse curve. CT95, Proposition 3.3.1 (not read; cited at Benoist's locator): Residues of restrictions along ramified extensions of DVRs.

*Suggested home:* `TauCeti/AlgebraicGeometry/RealSurface/PeriodIndex/BrauerCover`, namespace `TauCeti.RealSurface`.

<a id="pi-4-obstruction-cup-omega"></a>

### The topological obstruction is killed by ω

`PI.4/obstruction-cup-omega` · theorem

Under Assumptions 3.1 and 4.1, let τ ∈ H³\_G(T(ℂ), ℤ(1))\[2] be the image of α\_{ℝ(T)} ∈ Br(T)\[2] in the real topological Brauer sequence 0 → H²\_G(ℤ(1))/⟨2, Pic⟩ → Br\[2] → H³\_G(ℤ(1))\[2] → 0. Then τ ∪ ω = 0 in H⁴\_G(T(ℂ), ℤ).

**Hypotheses and conventions.** Assumptions 3.1 and 4.1; S connected.

**Proof.**

1. The pushforward square from Br(T)\[2] → H³\_G(T, ℤ(1)) → H⁴\_G(T, ℤ) → H⁰ ⊕ H²(T(ℝ)) to the same row for S commutes (equivariant Gysin compatibility).
2. p\_\*(α\_T) = 2α = 0, so p\_\*\[τ ∪ ω]₂ = 0; by (iii) \[τ ∪ ω]₂ = 0. By (i), α evaluates to 0 at p(x) for x ∈ T(ℝ), so \[τ ∪ ω]₀ = 0.
3. The norm sequence H⁴(T(ℂ), ℤ) → H⁴\_G(T(ℂ), ℤ) → H⁰ ⊕ H²(T(ℝ)) is exact: the kernel of ∪ω is the norm image (real–complex sequence, AlgebraicTopologyPartII:AT2.7/sign-class), restriction H⁵\_G(T(ℂ), ℤ(1)) → H⁵\_G(T(ℝ), ℤ(1)) is an isomorphism above twice the dimension (AT2.6/free-descent), and the real components of ξ ∪ ω are those of ξ (AT2.7/fixed-integral). So τ ∪ ω = N(c) for some c; T(ℂ) has one component or two exchanged by conjugation (PI.3/complex-pushforward-iso in degree 4), so τ ∪ ω = m·cl(y + σy) for a point y.
4. Pushing forward to H⁴(S(ℂ), ℤ) kills τ ∪ ω, so m·cl(p(y) + p(σy)) = 0, forcing m = 0.

**Acceptance.** If T(ℝ) = ∅ then the real components vanish trivially and only the norm argument is needed.

**Direct prerequisites:** [The pulled-back class is unramified](#pi-4-pullback-unramified); [Pushforward on the complex double cover](#pi-3-complex-pushforward-iso); `MotivesAndAlgebraicCycles:MC.2`; `AlgebraicTopologyPartII:AT2.9/real-coordinate-maps`; `AlgebraicTopologyPartII:AT2.7/sign-class`; `AlgebraicTopologyPartII:AT2.8/equivariant-gysin`; `AlgebraicTopologyPartII:AT2.6/free-descent`; `AlgebraicTopologyPartII:AT2.7/fixed-integral`.

**Source:** B19, Proposition 4.3 and proof, pp. 80–81: τ ∪ ω = 0, from the pushforward diagram (4.1), Assumption 4.1 (i) and (iii), the norm sequence of BW1 Lemma 2.11(ii) and degrees of zero-cycles.

*Suggested home:* `TauCeti/AlgebraicGeometry/RealSurface/PeriodIndex/BrauerCover`, namespace `TauCeti.RealSurface`.

<a id="pi-4-uniform-first-component"></a>

### The boundary component under constant real evaluation

`PI.4/uniform-first-component` · theorem

In the setting of PI.4/brauer-cover-hypotheses let α̃ ∈ H²\_G(U(ℂ), 𝔽₂) lift α, with components a₀ = \[α̃]₀, a₁ = \[α̃]₁ on Ψ, and let ζ = ∂(α̃|\_{S\*}) ∈ H³\_G(S\*(ℂ), Z̃(1)) for the boundary of 0 → Z̃(1) → Z̃(1) → 𝔽₂ → 0, and e ∈ H¹\_G(S\*(ℂ), 𝔽₂) the class of the double cover. If a₁|\_Ψ = 0 and a₀|\_Ψ is a constant t ∈ 𝔽₂, then \[ζ]₁|\_Ψ = t·\[e]₁|\_Ψ, which equals t·cl\_R(φ)|\_Ψ for any φ ∈ Pic(S) extending the 2-torsion line bundle υ(e) on S\*.

**Hypotheses and conventions.** Ψ ⊂ S\*(ℝ) (consequence of Assumption 4.1 (i)); on Ψ conjugation acts by −1 on Z̃, so the relevant coefficient twist has +1 stalks.

**Proof.**

1. The boundary for the twisted sequence is the twisted Bockstein: Bockstein plus cup with e + ω (AlgebraicTopologyPartII:AT2.14/double-cover-extension, AT2.7/twisted-bockstein).
2. On Ψ, \[e + ω]₀ = 1 + 1 = 0 and \[e + ω]₁ = \[e]₁, so in canonical components (a₀, a₁, a₂) ↦ (0, a₁ + a₀·\[e]₁, β(a₁) + a₁·\[e]₁) (cup-product convolution, AT2.7/fixed-mod-two).
3. With a₁ = 0 and a₀ = t this gives \[ζ]₁ = t·\[e]₁ on Ψ.
4. Lemma 2.1 of the source (cl\_R(υ(e)) = \[e]₁; MotivesAndAlgebraicCycles:MC.2) and surjectivity of Pic(S) → Pic(S\*) give φ.

**Acceptance.** For t = 0 (the case 4 | n in the induction) \[ζ]₁|\_Ψ = 0 and no Picard correction is needed. For t = 1 this recovers the printed formula \[ζ]₁ = \[e]₁ of the source.

**Direct prerequisites:** [Hypotheses on a double cover killing a period-two class](#pi-4-brauer-cover-hypotheses); [The étale and finite-flat strata of the double cover](#pi-3-double-cover-strata); `AlgebraicTopologyPartII:AT2.14/double-cover-extension`; `AlgebraicTopologyPartII:AT2.7/twisted-bockstein`; `AlgebraicTopologyPartII:AT2.7/fixed-mod-two`; `MotivesAndAlgebraicCycles:MC.2`.

**Source:** B19, Proof of Proposition 4.4, (4.8), p. 84: Computation of the diagonal boundary in canonical decompositions; the printed conclusion \[ζ]₁ = \[e]₁ uses a₀ = 1 on Ψ (see RealSurfacePeriodIndex/E3). B19, Lemma 2.1, p. 75: The real class of the 2-torsion line bundle of a double-cover class is its degree-one component.

*Suggested home:* `TauCeti/AlgebraicGeometry/RealSurface/PeriodIndex/BrauerCover`, namespace `TauCeti.RealSurface`.

<a id="pi-4-uniform-obstruction-vanishing"></a>

### Vanishing of the topological obstruction for uniform evaluation

`PI.4/uniform-obstruction-vanishing` · theorem — planet: **Vanishing of the topological obstruction**

Under Assumptions 3.1 and 4.1, suppose α has a Kummer lift α̃ ∈ H²\_G(U(ℂ), 𝔽₂) with \[α̃]₁|\_Ψ = 0 and \[α̃]₀|\_Ψ constant equal to t ∈ 𝔽₂. Then the obstruction τ of PI.4/obstruction-cup-omega vanishes, so α\_{ℝ(T)} lifts to a class β ∈ H²\_G(T(ℂ), ℤ(1)).

**Hypotheses and conventions.** The uniform-evaluation hypothesis on Ψ; this is the restricted form of the source's Proposition 4.4 that the main induction uses. The homological comparison (4.5) is AlgebraicTopologyPartII:AT2.16/double-cover-diagram, whose signed contract is that packet's gap (extraction gap G10).

**Proof.**

1. By PI.4/obstruction-cup-omega and the real–complex sequence, τ = N(γ) with γ ∈ H³(T(ℂ), ℤ); p\_\*γ lifts to δ ∈ H³\_G(S(ℂ), ℤ).
2. Claim: after replacing δ by δ − ξ ∪ ω for some ξ ∈ H²\_G(S(ℂ), ℤ(1)), \[δ]₁|\_Ψ = 0. The double-cover chase comparison (AT2.16/double-cover-diagram) gives η₀ on S₀ with g(δ|\_{S₀}) + ζ ∪ ω = g(η₀ ∪ ω); extend η₀ to S by purity and replace δ by δ − (η + t·cl(φ)) ∪ ω, with φ from PI.4/uniform-first-component.
3. Restricting to Ψ in canonical components, \[g(δ)]₁ = \[δ]₁, \[g(cl(φ) ∪ ω)]₁ = cl\_R(φ) = \[e]₁ and \[ζ ∪ ω]₁ = \[ζ]₁ = t\[e]₁, so the relation gives \[δ]₁|\_Ψ = 0.
4. By Assumption 4.1 (ii) there is θ ∈ Pic(S) with \[δ]₁ − cl\_R(θ) ∈ I, and by PI.3/equivariant-pushforward-image δ = p\_\*ε + cl(θ) ∪ ω; since p\_\* is an isomorphism on H³ (PI.3/complex-pushforward-iso), the diagram chase gives τ = 0.

**Acceptance.** For S(ℝ) = ∅ the hypotheses are empty and τ = 0 for every cover satisfying Assumption 3.1.

**Direct prerequisites:** [The topological obstruction is killed by ω](#pi-4-obstruction-cup-omega); [The boundary component under constant real evaluation](#pi-4-uniform-first-component); [Image of the equivariant pushforward](#pi-3-equivariant-pushforward-image); [Pushforward on the complex double cover](#pi-3-complex-pushforward-iso); `AlgebraicTopologyPartII:AT2.16/double-cover-diagram`; `AlgebraicTopologyPartII:AT2.8/equivariant-gysin`; `MotivesAndAlgebraicCycles:MC.2`.

**Source:** B19, Proposition 4.4 and proof, pp. 81–84: τ = 0 when a lift with vanishing first component on Ψ exists, by the chase (4.2)–(4.8) and Assumption 4.1 (ii). B19, (4.3)–(4.5), pp. 82–83, citing Jannsen 2000, Lemma p. 268: Comparison of the two diagram chases up to a class from H²\_G(S₀, ℤ(1)).

*Suggested home:* `TauCeti/AlgebraicGeometry/RealSurface/PeriodIndex/BrauerCover`, namespace `TauCeti.RealSurface`.

<a id="pi-4-primitive-picard-trace-correction"></a>

### Primitive Picard correction of the trace comparison

`PI.4/primitive-picard-trace-correction` · theorem

Let a ∈ Br(U)\[2] satisfy the hypotheses of PI.4/uniform-obstruction-vanishing, V = U ∩ S₀ the finite-flat part, and let η, ζ be the trace-quotient lift of the Kummer lift on V (AlgebraicTopologyPartII:AT2.15/trace-quotient-lift), with b = p\*η − ψ(ζ) on T\_V (AT2.15/corrected-integral-lift). If β ∈ H²\_G(T(ℂ), ℤ(1)) lifts α\_{ℝ(T)}, write β|\_{T\_V} = b + 2γ₀ + cl(φ₀) and p\_\*β = 2δ + cl(θ₁). Then there is μ ∈ Pic(S) with δ|\_V − η − p\_\*γ₀ = cl(μ|\_V).

**Hypotheses and conventions.** n = 2; V the open where p is finite flat; the minus sign in b is essential.

**Proof.**

1. β|\_{T\_V} and b both lift p\*α in the topological Brauer sequence on T\_V, so they differ by 2γ₀ + cl(φ₀).
2. p\_\*β induces p\_\*p\*α = 2α = 0, so p\_\*β = 2δ + cl(θ₁).
3. Push the first identity forward: p\_\*b = 2η since Tr∘ψ = 0; thus 2(δ|\_V − η − p\_\*γ₀) = cl(p\_\*φ₀ − θ₁|\_V).
4. The cokernel of cl : Pic(V) → H²\_G(V(ℂ), ℤ(1)) is torsion-free (MotivesAndAlgebraicCycles:MC.2, Benoist–Wittenberg Proposition 2.9), and Pic(S) → Pic(V) is onto, which produces μ.

**Acceptance.** If α = 0 one may take η, ζ, β zero and μ = 0.

**Direct prerequisites:** [Vanishing of the topological obstruction for uniform evaluation](#pi-4-uniform-obstruction-vanishing); `AlgebraicTopologyPartII:AT2.15/trace-quotient-lift`; `AlgebraicTopologyPartII:AT2.15/corrected-integral-lift`; `AlgebraicTopologyPartII:AT2.15/trace-zero-operator`; [The étale and finite-flat strata of the double cover](#pi-3-double-cover-strata); `MotivesAndAlgebraicCycles:MC.2`.

**Source:** B19, Proposition 4.5 proof, pp. 84–85: Comparison of β with a lift on T\_U and use of the torsion-free cokernel of Krasnov's cycle class map; the printed proof adds a mod-2 class to integral classes (RealSurfacePeriodIndex/E4). BW20, Proposition 2.9, first assertion: For smooth X over ℝ, the cokernel of cl : Pic(X) → H²\_G(X(ℂ), ℤ(1)) is torsion-free.

*Suggested home:* `TauCeti/AlgebraicGeometry/RealSurface/PeriodIndex/BrauerCover`, namespace `TauCeti.RealSurface`.

<a id="pi-4-curve-adjustment"></a>

### Curve adjustment before the pushforward criterion

`PI.4/curve-adjustment` · theorem

Under Assumption 4.1 (ii), if d ∈ H²\_G(S(ℂ), ℤ(1)) has \[d]₁|\_Ψ = 0, there is ν ∈ Pic(S), an integral combination of curves whose real loci avoid Ψ, such that \[d − cl(ν)]₁ ∈ p\_\*H¹(T(ℝ), 𝔽₂). If moreover L(R) is ample, d − cl(ν) = p\_\*γ for some γ ∈ H²\_G(T(ℂ), ℤ(1)).

**Hypotheses and conventions.** Assumption 4.1 (ii); for the second assertion Assumption 3.1.

**Proof.**

1. \[d]₁ lies in the kernel of H¹(S(ℝ)) → H¹(Ψ), so by (ii) it is a sum of p\_\*c and of cl\_R(Γ\_k) for curves Γ\_k avoiding Ψ.
2. cl\_R(Γ) = \[cl(O(Γ))]₁ (compatibility of Krasnov and Borel–Haefliger classes; MotivesAndAlgebraicCycles:MC.2), so ν = Σ Γ\_k works.
3. PI.3/equivariant-pushforward-image in degree 2 gives γ.

**Acceptance.** If \[d]₁ = 0 on all of S(ℝ), one may take ν = 0.

**Direct prerequisites:** [Hypotheses on a double cover killing a period-two class](#pi-4-brauer-cover-hypotheses); [Image of the equivariant pushforward](#pi-3-equivariant-pushforward-image); `MotivesAndAlgebraicCycles:MC.2`.

**Source:** B19, Proposition 4.5 proof, p. 85, application of Assumption 4.1 (ii) and Proposition 3.3: After making the first component vanish on Ψ, subtract the allowed curve classes before applying Proposition 3.3 (RealSurfacePeriodIndex/E5).

*Suggested home:* `TauCeti/AlgebraicGeometry/RealSurface/PeriodIndex/BrauerCover`, namespace `TauCeti.RealSurface`.

<a id="pi-4-uniform-pushforward-adjustment"></a>

### Integral pushforward adjustment for uniform evaluation

`PI.4/uniform-pushforward-adjustment` · theorem

Under the hypotheses of PI.4/uniform-obstruction-vanishing, for every β ∈ H²\_G(T(ℂ), ℤ(1)) lifting α\_{ℝ(T)} there are γ ∈ H²\_G(T(ℂ), ℤ(1)) and θ ∈ Pic(S) with p\_\*(β − 2γ) = cl(θ) in H²\_G(S(ℂ), ℤ(1)).

**Hypotheses and conventions.** The uniform-evaluation hypothesis; no integral lift of α̃ on U is used.

**Proof.**

1. PI.4/primitive-picard-trace-correction gives δ|\_V = η + p\_\*γ₀ + cl(μ|\_V) with p\_\*β = 2δ + cl(θ₁).
2. Real components on Ψ ∩ V(ℝ): \[p\_\*γ₀]₁ = p\_\*\[γ₀]₁ vanishes on Ψ because Ψ has no real preimage (Assumption 4.1 (i)); \[η]₁ on Ψ is t·cl\_R(λ) by the same component computation as PI.4/uniform-first-component; so δ′ = δ − cl(μ) − t·cl(λ) has \[δ′]₁ = 0 on Ψ ∩ V(ℝ), hence on Ψ by PI.1/point-removal-extension.
3. PI.4/curve-adjustment gives ν and γ with δ′ − cl(ν) = p\_\*γ.
4. Then p\_\*(β − 2γ) = 2δ + cl(θ₁) − 2(δ − cl(μ) − t cl(λ) − cl(ν)) = cl(θ) with θ = θ₁ + 2μ + 2tλ + 2ν.

**Acceptance.** For t = 0 the λ-correction is absent.

**Direct prerequisites:** [Primitive Picard correction of the trace comparison](#pi-4-primitive-picard-trace-correction); [The boundary component under constant real evaluation](#pi-4-uniform-first-component); [Curve adjustment before the pushforward criterion](#pi-4-curve-adjustment); [Removing finitely many points and extending line bundles](#pi-1-point-removal-extension); [Vanishing of the topological obstruction for uniform evaluation](#pi-4-uniform-obstruction-vanishing).

**Source:** B19, Proposition 4.5, pp. 84–85: Existence of γ and θ with p\_\*(β − 2γ) = cl(θ) under the hypotheses of Proposition 4.4; the typed argument replaces the mod-2 summand (RealSurfacePeriodIndex/E4–E5).

*Suggested home:* `TauCeti/AlgebraicGeometry/RealSurface/PeriodIndex/BrauerCover`, namespace `TauCeti.RealSurface`.

<a id="pi-4-obstruction-vanishing-general"></a>

### Proposition 4.4 for an arbitrary clopen Ψ

`PI.4/obstruction-vanishing-general` · theorem

Under Assumptions 3.1 and 4.1, if α has a lift α̃ ∈ H²\_G(U(ℂ), 𝔽₂) with \[α̃]₁|\_Ψ = 0, then τ = 0. Here Ψ ⊃ Θ is arbitrary, so \[α̃]₀ is the indicator of Θ on Ψ and need not be constant.

**Hypotheses and conventions.** As printed in the source; when \[α̃]₀|\_Ψ is constant this is PI.4/uniform-obstruction-vanishing.

**Proof.**

1. The printed proof computes \[ζ]₁|\_Ψ = \[e]₁|\_Ψ; the computation actually gives \[α̃]₀·\[e]₁ (PI.4/uniform-first-component), and the Picard correction cl(φ) must then be replaced by a class whose real component on Ψ is 1\_Θ·cl\_R(φ), which need not be algebraic.
2. For constant \[α̃]₀ the statement is proved by PI.4/uniform-obstruction-vanishing; the nonconstant case is the recorded gap RealSurfacePeriodIndex/G1.

**Acceptance.** Ψ = Θ, or Ψ a union of components on which α evaluates to zero, is the uniform case.

**Direct prerequisites:** [Vanishing of the topological obstruction for uniform evaluation](#pi-4-uniform-obstruction-vanishing); [The boundary component under constant real evaluation](#pi-4-uniform-first-component).

**Source:** B19, Proposition 4.4, pp. 81–84: The statement for any clopen Ψ ⊃ Θ in U(ℝ) with a lift whose first component vanishes on Ψ.

*Suggested home:* `TauCeti/AlgebraicGeometry/RealSurface/PeriodIndex/BrauerCover`, namespace `TauCeti.RealSurface`.

<a id="pi-4-pushforward-adjustment-general"></a>

### Proposition 4.5 for an arbitrary clopen Ψ

`PI.4/pushforward-adjustment-general` · theorem

Under the hypotheses of PI.4/obstruction-vanishing-general, for an integral lift β of α\_{ℝ(T)} there are γ ∈ H²\_G(T(ℂ), ℤ(1)) and θ ∈ Pic(S) with p\_\*(β − 2γ) = cl(θ).

**Hypotheses and conventions.** As printed in the source; for constant \[α̃]₀ on Ψ this is PI.4/uniform-pushforward-adjustment.

**Proof.**

1. The printed proof writes β|\_{T\_U} = p\*α̃ + 2ε + cl(φ) with α̃ a mod-2 class; the typed replacement through the trace quotient (PI.4/primitive-picard-trace-correction) needs the same uniformity as Proposition 4.4.
2. The nonconstant case is the recorded gap RealSurfacePeriodIndex/G1.

**Acceptance.** In the uniform case the conclusion is PI.4/uniform-pushforward-adjustment.

**Direct prerequisites:** [Integral pushforward adjustment for uniform evaluation](#pi-4-uniform-pushforward-adjustment); [Proposition 4.4 for an arbitrary clopen Ψ](#pi-4-obstruction-vanishing-general).

**Source:** B19, Proposition 4.5, pp. 84–85: The statement under the hypotheses of Proposition 4.4.

*Suggested home:* `TauCeti/AlgebraicGeometry/RealSurface/PeriodIndex/BrauerCover`, namespace `TauCeti.RealSurface`.


## Layer PI.5: Noether–Lefschetz loci for double covers

Assumption 5.1 and the real-pointless curve C; the point s = a₁s₀ + a₂c of B and the lift of C to T; restriction of the anti-invariant summand to C; Assumption 5.2; h¹(C, N\_{C/X}) ≤ h²(O\_S) and H²(T, O\_T(C)) = 0; dim coker φ\_λ ≤ h²(O\_S); blowing up points to realise Assumption 5.2.

*Builds on:* `RealSurfacePeriodIndex:PI.3`, `HodgeStructuresPartII:H.8`, `SchemeAndStackFoundations:SF.2`, `SchemeAndStackFoundations:SF.5`.

<a id="pi-5-curve-bearing-parameters"></a>

### Parameters for a curve on the double cover

`PI.5/curve-bearing-parameters` · construction

Let S be a connected smooth projective surface over ℝ, R ⊂ S an SNC divisor with equation r, A very ample and N a line bundle. For an even integer l ≫ 0 put L = A^l ⊗ N(−R); Assumption 5.1 asks H¹(S, A^l) = H¹(S, L) = H¹(S, L ⊗ N) = 0 and L, L ⊗ N very ample. For a basis (u\_i) of H⁰(S, A^{l/2}), Σ u\_i² has no real zeros; a general small deformation c ∈ H⁰(S, A^l) of Σ u\_i² cuts out a smooth curve C = {c = 0} transverse to R in its smooth locus, with C(ℝ) = ∅ and c > 0 on S(ℝ).

**Hypotheses and conventions.** l even and large enough for Serre vanishing and very ampleness simultaneously (AlgebraicModuliForArithmeticGeometry:R09.1/ample-powers-and-fixed-twists, SchemeAndStackFoundations §2.6).

**Construction.**

1. Serre vanishing and very ampleness of high twists give Assumption 5.1 for all large even l.
2. The u\_i have no common zero because A is very ample, so Σ u\_i² is positive on S(ℝ) and has no real zeros.
3. Bertini gives a smooth transverse member among small deformations; having no real zeros and being positive on the compact S(ℝ) are open conditions.

**Uses.** Benoist 2019, Lemma 5.3 and Proposition 5.4, pp. 87–89: the cohomology vanishings used for the normal-bundle bound. PI.5/curve-lift: the curve C and the section c. PI.6/degree-two-splitting-uniform: the parameter choices in Proposition 6.6.

**API.**

- `RealSurface.CurveParameters` (structure): (A, N, l, L, c, C) with Assumption 5.1.
- `RealSurface.CurveParameters.vanishing` (projection): H¹(A^l) = H¹(L) = H¹(L ⊗ N) = 0.
- `RealSurface.CurveParameters.veryAmple` (projection): L and L ⊗ N are very ample.
- `RealSurface.CurveParameters.curve_no_real_points` (projection): C(ℝ) = ∅ and c > 0 on S(ℝ).
- `RealSurface.CurveParameters.curve_transverse` (projection): C is smooth and meets R transversally in its smooth locus.

**Unit tests.**

- `RealSurface.CurveParameters.conic_example` (computation): On ℙ²\_ℝ with A = O(1), l = 2, c = x² + y² + z² is admissible.
- `RealSurface.CurveParameters.no_real_surface` (degenerate): If S(ℝ) = ∅, positivity on S(ℝ) is vacuous and any smooth transverse c works.
- `RealSurface.CurveParameters.odd_l_excluded` (non-example): For odd l, A^{l/2} is undefined and the sum-of-squares section is not available: l must be even.
- `RealSurface.CurveParameters.vanishing_serre` (compatibility): The vanishing for large l is SchemeAndStackFoundations' Serre vanishing theorem applied to A^l, L and L ⊗ N.

**Acceptance.** For S = ℙ²\_ℝ, A = O(1), l = 2: Σ u\_i² = x² + y² + z² defines a real-pointless conic.

**Direct prerequisites:** `AlgebraicModuliForArithmeticGeometry:R09.1/ample-powers-and-fixed-twists`; `SchemeAndStackFoundations:SF.2`; [The incidence model and its resolution](#pi-3-incidence-double-cover).

**Source:** B19, §5.1, Assumption 5.1, pp. 85–86: The choice L = A^l ⊗ N(−R) with the vanishing and very-ampleness conditions, and the curve C as a small deformation of a sum of squares, smooth, transverse to R and without real points.

*Suggested home:* `TauCeti/AlgebraicGeometry/RealSurface/PeriodIndex/NoetherLefschetz`, namespace `TauCeti.RealSurface`.

<a id="pi-5-curve-lift"></a>

### The point of B whose cover contains the curve

`PI.5/curve-lift` · construction

In PI.5/curve-bearing-parameters choose a general g ∈ H⁰(C, L) (reduced zeros, disjoint from R) and lift rg² ∈ H⁰(C, L²(R)) to s₀ ∈ H⁰(S, L²(R)) (possible as H¹(S, L ⊗ N) = 0). For a₁ ∈ ℝ\_{>0} and a₂ ∈ H⁰(S, L ⊗ N) general, s = a₁s₀ + a₂c lies in B: its zero locus D is smooth and transverse to R in its smooth locus (Bertini off the finite base locus {c = s₀ = 0}, and a direct derivative computation there). Over C the incidence equation is rv² = a₁rg²w², and the strict transform of C splits into two copies of C, v = ±√a₁·g·w; the chosen copy C ⊂ T (v = √a₁ g w) avoids the singular points, w does not vanish on it, and w gives L|\_C ≅ O\_X(1)|\_C. The full preimage of C also contains the ℙ¹ fibres over R ∩ C, which are not part of the lifted curve.

**Hypotheses and conventions.** a₁ > 0 real; (a₁, a₂) general; g general.

**Construction.**

1. The restriction H⁰(S, L²(R)) → H⁰(C, L²(R)|\_C) is onto because its kernel twist L²(R)(−C) = L ⊗ N has H¹ = 0.
2. The linear system {a₁s₀ + a₂c} has base locus {c = s₀ = 0}, finite since L ⊗ N is very ample; Bertini applies off it, and at a base point the choice a₁ = 0, a₂(x) ≠ 0 already gives smoothness and transversality, an open condition (SchemeAndStackFoundations §4.13).
3. On C, s = a₁rg², so the equation factors as r(v − √a₁ g w)(v + √a₁ g w) = 0 after removing the R-component; the two graph sections are closed curves isomorphic to C.
4. v and w do not vanish together on X̄, and on the chosen section v = √a₁ g w, so w ≠ 0 there.

**Uses.** Benoist 2019, §5.2, pp. 86–89: λ = class of C in H¹(T, Ω¹\_T) and the normal sequences. PI.5/nl-codimension-bound: the curve C ⊂ T ⊂ X. PI.6/degree-two-splitting-uniform: the real point s ∈ B(ℝ) near which the cover is deformed.

**API.**

- `RealSurface.liftedCurve` (data): The closed curve C ⊂ T given by v = √a₁ g w.
- `RealSurface.liftedCurve_iso` (constructor): p restricts to an isomorphism from the lifted curve to C.
- `RealSurface.liftedCurve_trivialization` (equivalence): w induces L|\_C ≅ O\_X(1)|\_C (display (5.1)).
- `RealSurface.liftedCurve_mem_B` (other): s = a₁s₀ + a₂c lies in B for general (a₁, a₂) with a₁ > 0.
- `RealSurface.liftedCurve_disjoint_sing` (other): The lifted curve avoids Sing T̄ and the exceptional curves of T → T̄.

**Unit tests.**

- `RealSurface.liftedCurve_two_components` (computation): The strict transform of C has exactly two components, v = ±√a₁ g w, meeting over {g = 0}.
- `RealSurface.liftedCurve_a2_zero` (degenerate): For a₂ = 0, s = a₁s₀ restricts to a₁rg² on C, but D may fail to be smooth away from C; generality of a₂ is needed.
- `RealSurface.liftedCurve_not_full_preimage` (non-example): p⁻¹(C) is not the lifted curve: it also contains the other component and the ℙ¹ fibres over R ∩ C.
- `RealSurface.liftedCurve_trivialization_compat` (compatibility): Under the identification of PI.3/incidence-double-cover, w is the tautological section and the trivialisation is its restriction.

**Acceptance.** The two lifted curves meet exactly over the zeros of g. The lifted curve does not meet the exceptional curves over Sing R.

**Direct prerequisites:** [Parameters for a curve on the double cover](#pi-5-curve-bearing-parameters); [The incidence model and its resolution](#pi-3-incidence-double-cover); `SchemeAndStackFoundations:SF.2`.

**Source:** B19, §5.1, pp. 86–87: Construction of s₀, of the linear system a₁s₀ + a₂c, the general member in B, and the component v = √a₁ g w of the strict transform of C, with the isomorphism (5.1).

*Suggested home:* `TauCeti/AlgebraicGeometry/RealSurface/PeriodIndex/NoetherLefschetz`, namespace `TauCeti.RealSurface`.

<a id="pi-5-trace-zero-restriction"></a>

### Restriction of the anti-invariant summand to the curve

`PI.5/trace-zero-restriction` · theorem

For the lifted curve C ⊂ T of PI.5/curve-lift, the restriction p\_\*O\_T = O\_S ⊕ L⁻¹(−R) → O\_C is (a, b) ↦ a + √a₁·r·g·b when the anti-invariant summand is generated by z = r v/w, and (a, b) ↦ a + r g b after rescaling the generator by √a₁; p\_\*O\_T(−C) is its kernel. The same holds on T̄; left exactness of pushforward suffices, without finiteness of p.

**Hypotheses and conventions.** The splitting of p\_\*O\_T is PI.3/incidence-local-resolution.

**Proof.**

1. On the chosen component v = √a₁ g w, the anti-invariant function z = r v/w restricts to √a₁ r g.
2. Pushing forward 0 → O\_T(−C) → O\_T → O\_C → 0 gives a left exact sequence 0 → p\_\*O\_T(−C) → p\_\*O\_T → O\_C.

**Acceptance.** With the rescaled generator z′ = r v/(√a₁ w), the coefficient is rg, as printed in (5.5).

**Direct prerequisites:** [The point of B whose cover contains the curve](#pi-5-curve-lift); [Local structure and Stein factorisation of the incidence model](#pi-3-incidence-local-resolution).

**Source:** B19, (5.5), p. 87: The exact sequence 0 → p\_\*O\_T(−C) → O\_S ⊕ L⁻¹(−R) → O\_C with the map (1, rg), the splitting induced by the involution.

*Suggested home:* `TauCeti/AlgebraicGeometry/RealSurface/PeriodIndex/NoetherLefschetz`, namespace `TauCeti.RealSurface`.

<a id="pi-5-auxiliary-hypotheses"></a>

### The auxiliary cohomological hypotheses on N

`PI.5/auxiliary-hypotheses` · definition

For S, R as in PI.5/curve-bearing-parameters, a line bundle N satisfies Assumption 5.2 if there is η ∈ H¹(S, N) such that ∪η : H⁰(S, K\_S) → H¹(S, N ⊗ K\_S) is injective (then a general η works), and H⁰(S, N ⊗ K\_S) = 0, H⁰(S, N⁻¹ ⊗ K\_S(R)) = 0 and H¹(R, N|\_R) = 0.

**Hypotheses and conventions.** Coherent cohomology of S and of the curve R; injectivity for one η implies it for general η (an open condition on H¹(S, N)).

**Construction.**

1. The four conditions are conditions on coherent cohomology; PI.5/blowup-auxiliary-bundle constructs N after blowing up points off R.

**Uses.** Benoist 2019, Lemma 5.3 and Proposition 5.4, pp. 87–88: the vanishings feeding the normal-bundle bound and H²(T, O\_T(C)) = 0. PI.5/blowup-auxiliary-bundle: Proposition 5.5 realises the hypotheses after blowing up. PI.6/degree-two-splitting-uniform: the choice of N in Proposition 6.6.

**API.**

- `RealSurface.AuxiliaryHypotheses` (structure): N with η and the four conditions of Assumption 5.2.
- `RealSurface.AuxiliaryHypotheses.cup_injective` (projection): ∪η is injective on H⁰(S, K\_S).
- `RealSurface.AuxiliaryHypotheses.vanishing` (projection): H⁰(N ⊗ K\_S) = H⁰(N⁻¹ ⊗ K\_S(R)) = H¹(R, N|\_R) = 0.
- `RealSurface.AuxiliaryHypotheses.generic` (other): If ∪η is injective for one η, it is injective for η in a dense open of H¹(S, N).

**Unit tests.**

- `RealSurface.AuxiliaryHypotheses.rational_surface` (degenerate): If H⁰(S, K\_S) = 0 the cup condition holds for η = 0.
- `RealSurface.AuxiliaryHypotheses.projectivePlane` (computation): On ℙ²\_ℝ with R a line and N = O(−1): H⁰(O(−4)) = 0, H⁰(O(1)⊗O(−3)⊗O(1)) = H⁰(O(−1)) = 0, H¹(ℙ¹, O(−1)) = 0.
- `RealSurface.AuxiliaryHypotheses.trivial_fails` (non-example): N = O\_S fails H⁰(N ⊗ K\_S) = 0 whenever p\_g(S) > 0.
- `RealSurface.AuxiliaryHypotheses.serre_dual` (compatibility): H⁰(N⁻¹ ⊗ K\_S(R)) = 0 iff H²(S, N(−R)) = 0, by Serre duality (SchemeAndStackFoundations §2.20).

**Acceptance.** If h⁰(K\_S) = 0 the injectivity condition is empty. On ℙ²\_ℝ with R a line, N = O(−1) satisfies H⁰(N ⊗ K) = 0.

**Direct prerequisites:** `SchemeAndStackFoundations:SF.2`; `SchemeAndStackFoundations:SF.5`.

**Source:** B19, Assumption 5.2, p. 87: Injectivity of the cup product with some η ∈ H¹(S, N) on H⁰(S, K\_S) and vanishing of H⁰(S, N ⊗ K\_S), H⁰(S, N⁻¹ ⊗ K\_S(R)) and H¹(R, N|\_R).

*Suggested home:* `TauCeti/AlgebraicGeometry/RealSurface/PeriodIndex/NoetherLefschetz`, namespace `TauCeti.RealSurface`.

<a id="pi-5-normal-bundle-bound"></a>

### Normal-bundle cohomology bound

`PI.5/normal-bundle-bound` · theorem

Under Assumptions 5.1 and 5.2, h¹(C, N\_{C/X}) ≤ h²(S, O\_S) for the lifted curve C ⊂ T ⊂ X.

**Hypotheses and conventions.** Assumptions 5.1 and 5.2; X the blown-up threefold, an isomorphism near C.

**Proof.**

1. 0 → T\_{X/S}|\_C → N\_{C/X} → N\_{C/S} → 0 with T\_{X/S} ≅ O\_X(2) ⊗ L⁻¹, so T\_{X/S}|\_C ≅ L|\_C by (5.1), and N\_{C/S} ≅ A^l|\_C.
2. H¹(C, L|\_C) = 0 from H¹(S, L) = 0 and H²(S, N(−R)) = 0, the latter Serre dual to H⁰(N⁻¹ ⊗ K\_S(R)) = 0.
3. H¹(S, A^l) = 0 gives h¹(C, A^l|\_C) ≤ h²(S, O\_S) from 0 → O\_S → A^l → A^l|\_C → 0; the long exact sequence concludes.

**Acceptance.** For a rational surface S, h²(O\_S) = 0 and the bound gives H¹(C, N\_{C/X}) = 0.

**Direct prerequisites:** [The point of B whose cover contains the curve](#pi-5-curve-lift); [The auxiliary cohomological hypotheses on N](#pi-5-auxiliary-hypotheses); [Parameters for a curve on the double cover](#pi-5-curve-bearing-parameters); `SchemeAndStackFoundations:SF.2`; `SchemeAndStackFoundations:SF.5`.

**Source:** B19, Lemma 5.3, first statement, pp. 87–88: h¹(C, N\_{C/X}) ≤ h²(S, O\_S) from (5.3)–(5.4), using T\_{X/S}|\_C ≅ L|\_C and the vanishings.

*Suggested home:* `TauCeti/AlgebraicGeometry/RealSurface/PeriodIndex/NoetherLefschetz`, namespace `TauCeti.RealSurface`.

<a id="pi-5-twisted-curve-vanishing"></a>

### Vanishing of H² after twisting by the curve

`PI.5/twisted-curve-vanishing` · theorem

Under Assumptions 5.1 and 5.2, H²(T, O\_T(C)) = 0.

**Hypotheses and conventions.** As in PI.5/normal-bundle-bound; the rational double points of T̄ avoid C.

**Proof.**

1. The resolution T → T̄ has rational singularities away from C, so H²(T, O\_T(C)) ≅ H²(T̄, O\_{T̄}(C)) (Leray; PI.3/incidence-local-resolution).
2. T̄ is a Cartier divisor in X̄, hence Gorenstein with ω\_{T̄} ≅ p̄\*(K\_S ⊗ L(R)); by Serre duality it suffices that H⁰(T̄, ω(−C)) = 0.
3. Push forward by p̄ using PI.5/trace-zero-restriction: H⁰(ω(−C)) is the kernel of H⁰(K\_S ⊗ L(R)) ⊕ H⁰(K\_S) → H⁰(C, K\_S ⊗ L(R)), (x, y) ↦ x + rg·y.
4. Using H⁰(N ⊗ K\_S) = 0, injectivity reduces to injectivity of H⁰(K\_S) → H¹(S, N ⊗ K\_S), cup with ∂(rg) = r ∪ ∂g; ψ : H⁰(C, L) → H¹(S, N(−R)) → H¹(S, N) is onto by H¹(S, L) = H¹(R, N|\_R) = 0, so for general g, ψ(g) is general and Assumption 5.2 gives injectivity (connecting maps commute with cup products).

**Acceptance.** If H⁰(S, K\_S) = 0 the last step is empty.

**Direct prerequisites:** [Restriction of the anti-invariant summand to the curve](#pi-5-trace-zero-restriction); [The auxiliary cohomological hypotheses on N](#pi-5-auxiliary-hypotheses); [Parameters for a curve on the double cover](#pi-5-curve-bearing-parameters); [Local structure and Stein factorisation of the incidence model](#pi-3-incidence-local-resolution); `SchemeAndStackFoundations:SF.2`.

**Source:** B19, Lemma 5.3, second statement, pp. 87–88: H²(T, O\_T(C)) = 0 via rational singularities, Serre duality on the Gorenstein T̄, the pushforward (5.5) and the cup-product injectivity (5.6) with Bredon II.7.1(c).

*Suggested home:* `TauCeti/AlgebraicGeometry/RealSurface/PeriodIndex/NoetherLefschetz`, namespace `TauCeti.RealSurface`.

<a id="pi-5-nl-codimension-bound"></a>

### Noether–Lefschetz locus of the expected dimension

`PI.5/nl-codimension-bound` · theorem — planet: **Noether–Lefschetz locus of expected dimension**

Under Assumptions 5.1 and 5.2, let λ ∈ H¹(T, Ω¹\_T) be the class of the lifted curve C and φ\_λ : T\_{B,s} → H²(T, O\_T) the Kodaira–Spencer contraction of the family 𝒯 → B at s. Then dim coker φ\_λ ≤ h²(S, O\_S).

**Hypotheses and conventions.** The boundary of the normal sequence lands in H¹(C, N\_{C/T}) (the published (5.7) prints H⁰; see RealSurfacePeriodIndex/E12).

**Proof.**

1. HodgeStructuresPartII:H.8/normal-boundary-factorization writes φ\_λ as T\_{B,s} → H⁰(T, N\_{T/X}) → H⁰(C, N\_{T/X}|\_C) → H¹(C, N\_{C/T}) → H²(T, O\_T).
2. The last map is onto because H²(T, O\_T(C)) = 0 (PI.5/twisted-curve-vanishing); the third has cokernel of dimension ≤ h¹(C, N\_{C/X}) ≤ h²(S, O\_S) (PI.5/normal-bundle-bound).
3. The first two maps compose to H⁰(S, L²(R)) → H⁰(C, L²(R)|\_C) followed by multiplication by w², an isomorphism by (5.1); the restriction is onto since H¹(S, L ⊗ N) = 0.

**Acceptance.** For S rational, φ\_λ is surjective.

**Direct prerequisites:** [Normal-bundle cohomology bound](#pi-5-normal-bundle-bound); [Vanishing of H² after twisting by the curve](#pi-5-twisted-curve-vanishing); [The point of B whose cover contains the curve](#pi-5-curve-lift); `HodgeStructuresPartII:H.8/normal-boundary-factorization`; `HodgeStructuresPartII:H.8/kodaira-spencer-contraction`.

**Source:** B19, Proposition 5.4, pp. 88–89: The cokernel of φ\_λ has dimension at most h²(S, O\_S), by Sernesi's description of Kodaira–Spencer, Benoist 2018 Proposition 2.1 and Lemma 5.3.

*Suggested home:* `TauCeti/AlgebraicGeometry/RealSurface/PeriodIndex/NoetherLefschetz`, namespace `TauCeti.RealSurface`.

<a id="pi-5-blowup-auxiliary-bundle"></a>

### Blowing up points to realise the auxiliary hypotheses

`PI.5/blowup-auxiliary-bundle` · construction — planet: **Blow-up enforcing the auxiliary hypotheses**

Let S be a connected smooth projective surface over ℝ, R an SNC divisor and A₀ an ample line bundle with H¹(R, A₀|\_R) = 0 (a sufficiently positive twist of any ample bundle works). Let μ : S′ → S be the blow-up of two disjoint finite sets P, Q of sufficiently many general closed points off R, with exceptional divisors E = μ⁻¹P, F = μ⁻¹Q, and N = μ\*A₀(2F − 2E). Then there is η ∈ H¹(S′, N) with (i) H⁰(S′, N ⊗ K\_{S′}) = 0, (ii) H⁰(S′, N⁻¹ ⊗ K\_{S′}(R′)) = 0, (iii) H¹(R′, N|\_{R′}) = 0, (iv) ∪η : H⁰(S′, K\_{S′}) → H¹(S′, N ⊗ K\_{S′}) injective, where R′ = μ⁻¹R ≅ R. The same holds after further blow-ups at general points off R. A₀ is unrelated to the very ample A of Proposition 6.6.

**Hypotheses and conventions.** P, Q general and large; A₀ ample with H¹(R, A₀|\_R) = 0.

**Construction.**

1. A₀ exists: a sufficiently high power of an ample bundle has H¹(R, A₀|\_R) = 0 by Serre vanishing on the curve R (AlgebraicModuliForArithmeticGeometry:R09.1/ample-powers-and-fixed-twists, SchemeAndStackFoundations §2.6).
2. (iii): N|\_{R′} ≅ A₀|\_R because the blow-ups avoid R.
3. (i): H⁰(S′, N ⊗ K\_{S′}) = H⁰(S, A₀ ⊗ K\_S ⊗ I\_P) vanishes for P large and general; (ii) likewise with Q.
4. (iv): through the injective Leray edge maps, reduce to ν ∈ H¹(S, A₀ ⊗ I\_P) with ∪ν injective on H⁰(K\_S); take ν = ∂ξ for ξ ∈ H⁰(P, A₀|\_P) vanishing on P₂ but at no point of P₁, where P = P₁ ⊔ P₂ is split so that no nonzero section of K\_S vanishes on P₁ and none of A₀ ⊗ K\_S vanishes on P₂; lift ν to H¹(S, A₀ ⊗ I\_P²) and map it to H¹(S′, N).

**Uses.** Benoist 2019, Proposition 6.6 proof, p. 93: S may be assumed to carry N satisfying Assumption 5.2, stable under further blow-ups. PI.6/degree-two-splitting-uniform: the birational model of S.

**API.**

- `RealSurface.blowupAuxiliary` (constructor): (S′, μ, N, η) from (S, R, A₀) and general P, Q.
- `RealSurface.blowupAuxiliary_hypotheses` (characterisation): N satisfies Assumption 5.2 on S′ with R′ = μ⁻¹R.
- `RealSurface.blowupAuxiliary_restrict` (simp): N|\_{R′} ≅ A₀|\_R.
- `RealSurface.blowupAuxiliary_further` (other): The conclusion persists after blowing up further general points off R.

**Unit tests.**

- `RealSurface.blowupAuxiliary_projectivePlane` (computation): On ℙ²\_ℝ with R a line and A₀ = O(1), (iii) is H¹(ℙ¹, O(1)) = 0 and (iv) is empty.
- `RealSurface.blowupAuxiliary_no_points` (degenerate): With P = Q = ∅, N = A₀ and (i) fails as soon as H⁰(A₀ ⊗ K\_S) ≠ 0.
- `RealSurface.blowupAuxiliary_A0_not_A` (non-example): A₀ need not be very ample and is not the bundle A of PI.5/curve-bearing-parameters; conflating them changes the vanishing conditions.
- `RealSurface.blowupAuxiliary_leray` (compatibility): H¹(S, A₀ ⊗ I\_P) → H¹(S′, μ\*A₀(−E)) is the injective Leray edge map of μ.

**Acceptance.** For S = ℙ²\_ℝ and R a line, H⁰(K\_S) = 0, so (iv) is empty and only (i)–(iii) need blow-ups.

**Direct prerequisites:** [The auxiliary cohomological hypotheses on N](#pi-5-auxiliary-hypotheses); `SchemeAndStackFoundations:SF.2`; `SchemeAndStackFoundations:SF.5`; Tau Ceti roadmap `TauCetiRoadmap/StableReduction#layer-4-blowups-and-intersection-theory-on-arithmetic-surfaces`; `AlgebraicModuliForArithmeticGeometry:R09.1/ample-powers-and-fixed-twists`.

**Source:** B19, Proposition 5.5 and proof, pp. 89–90: After blowing up sufficiently many general points P ∪ Q off R, N = μ\*A(2F − 2E) satisfies (i)–(iv), the cup-injectivity through (5.11)–(5.12).

*Suggested home:* `TauCeti/AlgebraicGeometry/RealSurface/PeriodIndex/NoetherLefschetz`, namespace `TauCeti.RealSurface`.


## Layer PI.6: Real-locus control and the degree-two splitting

Positivity in squared lines; Assumption 6.1 on the real branch locus, its stability and its realisation after blow-ups; Nash approximation (BCR 12.4.11) and Bröcker's real divisors as cited inputs; the signed branch section t with real divisor H − R corrected; Assumption 6.1 implies Assumption 4.1; the vanishing variation and surjectivity of the Gauss–Manin derivative; normalisation and transport of the Kummer lift; Proposition 6.6 in the uniform-evaluation form, and as stated.

*Builds on:* `RealSurfacePeriodIndex:PI.4`, `RealSurfacePeriodIndex:PI.5`, `HodgeStructuresPartII:H.8`, `AlgebraicTopologyPartII:AT2.16`, `MotivesAndAlgebraicCycles:MC.7`.

<a id="pi-6-squared-line-positivity"></a>

### Positivity in a squared real line

`PI.6/squared-line-positivity` · definition

For a one-dimensional real vector space M, the positive elements of M^{⊗2} are those of the form m ⊗ m with m ≠ 0; the notion depends on the presentation as a tensor square. For a real variety X and a line bundle M on X, a section of M^{⊗2} is positive (negative) at x ∈ X(ℝ) if its value is positive (negative) in M\_x^{⊗2}.

**Hypotheses and conventions.** Real points only; the tensor-square presentation is fixed.

**Construction.**

1. m ⊗ m and (−m) ⊗ (−m) agree, and the squares form one of the two half-lines of M^{⊗2}.

**Uses.** Benoist 2019, Lemmas 6.4–6.5, p. 92: the sign of rt and rs on S(ℝ) ∖ Ξ. PI.6/signed-branch-section: negativity of rt off Ξ. PI.6/topology-to-cover-hypotheses: the real points of T lie over the locus where rs ≥ 0.

**API.**

- `RealSurface.IsPositiveAt` (data): Positivity of a section of M^{⊗2} at a real point.
- `RealSurface.isPositiveAt_sq` (constructor): m ⊗ m is positive for m ≠ 0.
- `RealSurface.isPositiveAt_mul` (relation): Products of positive sections of squared bundles are positive.
- `RealSurface.isPositiveAt_or_neg` (characterisation): A nonzero value is either positive or negative, not both.

**Unit tests.**

- `RealSurface.isPositiveAt_trivial` (computation): For the trivial line bundle, positivity is positivity of the real function.
- `RealSurface.isPositiveAt_zero` (degenerate): The zero section is neither positive nor negative.
- `RealSurface.isPositiveAt_presentation` (non-example): Rescaling the identification M^{⊗2} ≅ ℝ by −1 exchanges positive and negative: the notion is not intrinsic to the line M^{⊗2}.
- `RealSurface.isPositiveAt_sumSquares` (compatibility): Σ u\_i² for sections u\_i of M without common real zero is positive on X(ℝ).

**Acceptance.** For M = ℝ, the positive elements of ℝ ⊗ ℝ ≅ ℝ are the positive reals.

**Direct prerequisites:** `TensorProduct` (Mathlib).

**Source:** B19, §6, p. 90: Positive elements of M^{⊗2} for a real line M, and positivity of sections of squared line bundles at real points.

*Suggested home:* `TauCeti/AlgebraicGeometry/RealSurface/PeriodIndex/RealLocus`, namespace `TauCeti.RealSurface`.

<a id="pi-6-branch-locus-conditions"></a>

### Topological conditions on the real branch locus

`PI.6/branch-locus-conditions` · definition — planet: **Real branch-locus conditions**

Let S be a connected smooth projective surface over ℝ, R an SNC divisor and Ξ ⊂ S(ℝ) a union of connected components with R(ℝ) ⊂ Ξ. Assumption 6.1 asks for a compact one-manifold 𝒮 and a C^∞ embedding ι : 𝒮 → Ξ meeting R(ℝ) transversally in its smooth locus with: (i) every component of Ξ meets ι(𝒮); (ii) ι\_\*\[𝒮] = cl\_R(R) in H¹(Ξ, 𝔽₂); (iii) H¹(Ξ, 𝔽₂) is generated by the classes of the components of ι(𝒮) and the Borel–Haefliger classes of curves with real locus in Ξ; (iv) for each component Σ of Ξ, with Σ₀ = Σ ∩ (ι(𝒮) ∪ R(ℝ)) and a decomposition Σ ∖ Σ₀ = Σ₊ ⊔ Σ₋ into open and closed parts, if every point of Σ₀ is in the closures of both Σ₊ and Σ₋ then Σ₊ ∪ Σ₀ is connected.

**Hypotheses and conventions.** Homology classes via Poincaré duality on the compact surface Ξ; cl\_R from MotivesAndAlgebraicCycles:MC.2.

**Construction.**

1. The conditions are topological; PI.6/branch-conditions-blowup realises them on a blow-up and PI.6/topology-to-cover-hypotheses uses them.

**Uses.** Benoist 2019, Lemmas 6.2–6.5, pp. 91–92: the real branch curve D(ℝ) = ι(𝒮) controlling T(ℝ). PI.6/topology-to-cover-hypotheses: conditions (i)–(iv) give Assumption 4.1. PI.6/signed-branch-section: approximation of ι by the real locus of an algebraic curve.

**API.**

- `RealSurface.BranchLocusConditions` (structure): (𝒮, ι) with transversality and (i)–(iv).
- `RealSurface.BranchLocusConditions.meets_components` (projection): (i).
- `RealSurface.BranchLocusConditions.homology_class` (projection): (ii) ι\_\*\[𝒮] = cl\_R(R).
- `RealSurface.BranchLocusConditions.generates` (projection): (iii).
- `RealSurface.BranchLocusConditions.connected_side` (projection): (iv).

**Unit tests.**

- `RealSurface.BranchLocusConditions.empty` (degenerate): Ξ = ∅ with 𝒮 = ∅ satisfies the conditions.
- `RealSurface.BranchLocusConditions.sphere` (computation): On Ξ = S² with R(ℝ) = ∅, one embedded circle satisfies (i)–(iv): H¹(S²) = 0, its class is 0 = cl\_R(R), and both sides are discs.
- `RealSurface.BranchLocusConditions.torus_fails` (non-example): On a torus Ξ with R(ℝ) = ∅, a single null-homotopic circle fails (iii) unless curve classes generate H¹(Ξ).
- `RealSurface.BranchLocusConditions.homology_compat` (compatibility): (ii) is equality of Poincaré duals of ι\_\*\[𝒮] and of the Borel–Haefliger class of R.

**Acceptance.** If Ξ = ∅ (so R(ℝ) = ∅), the empty embedding satisfies Assumption 6.1.

**Direct prerequisites:** `MotivesAndAlgebraicCycles:MC.2`; Tau Ceti roadmap `TauCetiRoadmap/AlgebraicTopology#stage-6-cohomology-products-and-manifold-duality`.

**Source:** B19, Assumption 6.1, pp. 90–91: An embedded compact one-manifold in Ξ, transverse to R(ℝ), meeting every component, with class cl\_R(R), generating H¹(Ξ) with curve classes, and the connectivity condition (iv).

*Suggested home:* `TauCeti/AlgebraicGeometry/RealSurface/PeriodIndex/RealLocus`, namespace `TauCeti.RealSurface`.

<a id="pi-6-branch-conditions-stable"></a>

### Stability of the branch conditions

`PI.6/branch-conditions-stable` · theorem

If ι : 𝒮 → Ξ satisfies Assumption 6.1, so does every ι′ close enough to ι in C^∞(𝒮, Ξ) for the strong C^∞ topology.

**Hypotheses and conventions.** Strong C^∞ topology; 𝒮 compact.

**Proof.**

1. (i)–(iii) are preserved by small isotopies (homology classes are locally constant).
2. Transversality to R(ℝ) at smooth points and (iv) persist because (ι, id) : 𝒮 ⊔ R̃(ℝ) → Ξ, with R̃ the normalisation of R, is a normal-crossings immersion and these are stable (Golubitsky–Guillemin III.3.11).

**Acceptance.** Perturbing ι by a small normal isotopy keeps all four conditions.

**Direct prerequisites:** [Topological conditions on the real branch locus](#pi-6-branch-locus-conditions).

**Source:** B19, Lemma 6.2, p. 91: Stability of Assumption 6.1 under strong C^∞-small perturbations, using stability of normal-crossings immersions.

*Suggested home:* `TauCeti/AlgebraicGeometry/RealSurface/PeriodIndex/RealLocus`, namespace `TauCeti.RealSurface`.

<a id="pi-6-branch-conditions-blowup"></a>

### Blow-ups producing the branch conditions

`PI.6/branch-conditions-blowup` · construction

For S, R, Ξ as in PI.6/branch-locus-conditions there is a blow-up μ : S′ → S at finitely many general real points such that (S′, Ξ′ = μ⁻¹(Ξ)) with R′ the strict transform of R admits an embedding satisfying Assumption 6.1. The exceptional curves contribute Borel–Haefliger classes generating the new part of H¹(Ξ′).

**Hypotheses and conventions.** The points are transverse self-intersection points of an immersed union of loops, general in Ξ and off R.

**Construction.**

1. Choose loops generating H¹(Ξ), add loops so every component is met, and by smooth approximation and transversality get an immersion ι : 𝒮 → Ξ transverse to R(ℝ), injective except at finitely many transverse double points, with ι\_\*\[𝒮] = cl\_R(R) and Σ ∩ (ι(𝒮) ∪ R(ℝ)) connected for each component Σ (AlgebraicTopologyPartII:AT2.12/surface-loop-representatives).
2. Blow up the double points; ι lifts to an embedding into Ξ′; the cohomology of the blow-up gives (ii) and (iii), the exceptional real loci being curve classes.
3. (iv): each exceptional real circle meets ι′(𝒮) in two points separating it into arcs in Σ′₊ and Σ′₋, which forces the required connectedness.

**Uses.** Benoist 2019, Proposition 6.6 proof, p. 93: after this blow-up the embedding ι exists. PI.6/degree-two-splitting-uniform: the birational modification of S.

**API.**

- `RealSurface.branchConditionsBlowup` (constructor): μ : S′ → S and an embedding ι′ satisfying Assumption 6.1 on (S′, Ξ′).
- `RealSurface.branchConditionsBlowup_offR` (other): The centres lie off R, so R′ ≅ R.
- `RealSurface.branchConditionsBlowup_classes` (relation): H¹(Ξ′) = μ\*H¹(Ξ) ⊕ span of the exceptional real circles.
- `RealSurface.branchConditionsBlowup_compose` (functoriality): Further general blow-ups off R preserve the conclusion and PI.5/blowup-auxiliary-bundle.

**Unit tests.**

- `RealSurface.branchConditionsBlowup_sphere` (degenerate): For Ξ = S², R(ℝ) = ∅, μ = id works with one circle.
- `RealSurface.branchConditionsBlowup_torus` (computation): For Ξ a torus with R(ℝ) = ∅, two loops meeting once give one double point; one blow-up makes Ξ′ a torus # ℝℙ² with an embedded pair of circles.
- `RealSurface.branchConditionsBlowup_not_immersion` (non-example): Without blowing up, an immersed family with a double point does not give an embedding, so Assumption 6.1 can fail on S itself.
- `RealSurface.branchConditionsBlowup_class` (compatibility): The real locus of an exceptional curve is a circle whose Borel–Haefliger class is its Poincaré dual in H¹(Ξ′).

**Acceptance.** If H¹(Ξ) = 0 and R(ℝ) = ∅ no blow-up is needed.

**Direct prerequisites:** [Topological conditions on the real branch locus](#pi-6-branch-locus-conditions); `AlgebraicTopologyPartII:AT2.12/surface-loop-representatives`; Tau Ceti roadmap `TauCetiRoadmap/StableReduction#layer-4-blowups-and-intersection-theory-on-arithmetic-surfaces`; `MotivesAndAlgebraicCycles:MC.2`.

**Source:** B19, Lemma 6.3 and proof, p. 91: Blowing up the self-intersection points of an immersed family of loops gives an embedding satisfying Assumption 6.1.

*Suggested home:* `TauCeti/AlgebraicGeometry/RealSurface/PeriodIndex/RealLocus`, namespace `TauCeti.RealSurface`.

<a id="pi-6-nash-approximation-input"></a>

### Algebraic approximation of a hypersurface (cited input)

`PI.6/nash-approximation-input` · theorem

Let X be a compact nonsingular affine real algebraic variety of dimension d and Y ⊂ X a compact C^∞ hypersurface. If the homology class \[Y] ∈ H\_{d−1}(X, ℤ/2) is algebraic (lies in H^alg\_{d−1}), then there is a diffeotopy F of X, with F₁ arbitrarily close to the identity, such that F₁(Y) is a nonsingular algebraic hypersurface of X. For a smooth projective real surface and Y = ι(𝒮) with class cl\_R(R), this gives an algebraic curve H ⊂ S smooth along S(ℝ) with H(ℝ) = ι′(𝒮), ι′ close to ι.

**Hypotheses and conventions.** X compact nonsingular affine (a smooth projective real variety's real locus is affine in this sense); algebraic homology class.

**Proof.**

1. Cited: Bochnak–Coste–Roy, Theorem 12.4.11, via algebraic line bundles realising the class (BCR Theorem 12.4.6) and transversality.

**Acceptance.** On ℝℙ², every embedded circle is isotopic to the real locus of a smooth real algebraic curve.

**Direct prerequisites:** `MotivesAndAlgebraicCycles:MC.2`.

**Source:** BCR, Theorem 12.4.11, p. 318: For a compact nonsingular affine real algebraic variety, a compact C^∞ hypersurface with algebraic homology class has an algebraic approximation by a diffeotopy close to the identity. B19, Lemma 6.4 proof, p. 92: Use of BCR Theorem 12.4.11 to obtain ι′ and a hypersurface H smooth along S(ℝ) with H(ℝ) = ι′(𝒮).

*Suggested home:* `TauCeti/AlgebraicGeometry/RealSurface/PeriodIndex/RealLocus`, namespace `TauCeti.RealSurface`.

<a id="pi-6-brocker-sign-input"></a>

### Bröcker's real divisors and prescribed signs (cited input)

`PI.6/brocker-sign-input` · theorem

On a smooth projective real surface S: (b) if D is a divisor whose Borel–Haefliger class cl\_R(D) ∈ H¹(S(ℝ), 𝔽₂) vanishes, there is h ∈ ℝ(S)ˣ whose divisor agrees with D along S(ℝ) (it has the prescribed orders along the components of D meeting S(ℝ) and no other zeros or poles meeting S(ℝ)); (a) for any locally constant sign function on a union of components of S(ℝ) there is h ∈ ℝ(S)ˣ, invertible along S(ℝ), with those signs.

**Hypotheses and conventions.** Applied to D = H − R, the signed divisor (simple zero along H, simple pole along R).

**Proof.**

1. Cited: Bröcker 1980, Satz a), b).

**Acceptance.** On ℝℙ², a divisor of even degree has trivial Borel–Haefliger class and is the real divisor of a rational function.

**Direct prerequisites:** `MotivesAndAlgebraicCycles:MC.2`; [Algebraic approximation of a hypersurface (cited input)](#pi-6-nash-approximation-input).

**Source:** BRO80, Satz a), b) (not read; cited at Benoist's locator): Real divisors with trivial class are principal along the real locus; signs on components can be prescribed by functions invertible along S(ℝ). B19, Lemma 6.4 proof, p. 92: Bröcker's theorem gives h₁ vanishing to order one along R and H with no other real zeros or poles, and h₂ with the signs of h₁ off Ξ.

*Suggested home:* `TauCeti/AlgebraicGeometry/RealSurface/PeriodIndex/RealLocus`, namespace `TauCeti.RealSurface`.

<a id="pi-6-signed-branch-section"></a>

### A branch section with prescribed real locus and sign

`PI.6/signed-branch-section` · construction

Let A be very ample, N a line bundle, ι : 𝒮 → Ξ as in Assumption 6.1, and 𝒰 a neighbourhood of ι in C^∞(𝒮, Ξ). For every large even l there are ι′ ∈ 𝒰 and t ∈ H⁰(S, A^l ⊗ N²(−R)) such that {t = 0} is smooth along its real locus Z, Z = ι′(𝒮), and rt ∈ H⁰(S, A^l ⊗ N²) is negative on S(ℝ) ∖ Ξ.

**Hypotheses and conventions.** Bröcker is applied to the signed divisor H − R; the printed choice (simple zero along R) leaves an extra factor 2R (RealSurfacePeriodIndex/E22).

**Construction.**

1. PI.6/nash-approximation-input gives ι′ ∈ 𝒰 and H smooth along S(ℝ) with H(ℝ) = ι′(𝒮); cl\_R(H − R) = 0 by Assumption 6.1 (ii).
2. PI.6/brocker-sign-input (b) gives h₁ with a simple pole along R, a simple zero along H and no other real zeros or poles; (a) gives h₂ invertible along S(ℝ) with the sign of h₁ on S(ℝ) ∖ Ξ.
3. Let D′ be the remaining polar divisor of h₁h₂ (disjoint from S(ℝ)); choose l even with A^{l/2} ⊗ N(−R − D′) very ample, a basis (u\_i) of its sections viewed in A^{l/2} ⊗ N(−R) vanishing on D′, and u = Σ u\_i² ∈ H⁰(A^l ⊗ N²(−2R)).
4. t = −h₁h₂ r u is regular, its real zero locus is H(ℝ) (the R-orders cancel: −1 from h₁, +1 from r), and rt = −h₁h₂ r² u is negative off Ξ (PI.6/squared-line-positivity).

**Uses.** Benoist 2019, Proposition 6.6 proof, p. 93: a₂ close to t makes rs negative on Ψ and D(ℝ) = ι(𝒮). PI.6/degree-two-splitting-uniform: the section t.

**API.**

- `RealSurface.signedBranchSection` (constructor): (ι′, t) for large even l.
- `RealSurface.signedBranchSection_realLocus` (characterisation): {t = 0}(ℝ) = ι′(𝒮), smooth along it.
- `RealSurface.signedBranchSection_neg` (relation): rt is negative on S(ℝ) ∖ Ξ.
- `RealSurface.signedBranchSection_mem` (other): ι′ ∈ 𝒰.

**Unit tests.**

- `RealSurface.signedBranchSection_full` (degenerate): If Ξ = S(ℝ), any t with the real locus condition works.
- `RealSurface.signedBranchSection_orders` (computation): ord\_R(t) = ord\_R(h₁) + ord\_R(r) = −1 + 1 = 0 along every component of R.
- `RealSurface.signedBranchSection_printed_fails` (non-example): With h₁ vanishing to order one along R, t = −h₁h₂ru vanishes to order 2 along R and is not a section of A^l ⊗ N²(−R) with real locus ι′(𝒮).
- `RealSurface.signedBranchSection_sumSquares` (compatibility): u is positive on S(ℝ) as a sum of squares of sections without common real zero (PI.6/squared-line-positivity).

**Acceptance.** If Ξ = S(ℝ) the sign condition is empty.

**Direct prerequisites:** [Algebraic approximation of a hypersurface (cited input)](#pi-6-nash-approximation-input); [Bröcker's real divisors and prescribed signs (cited input)](#pi-6-brocker-sign-input); [Topological conditions on the real branch locus](#pi-6-branch-locus-conditions); [Positivity in a squared real line](#pi-6-squared-line-positivity); `AlgebraicModuliForArithmeticGeometry:R09.1/ample-powers-and-fixed-twists`.

**Source:** B19, Lemma 6.4 and proof, p. 92: Construction of ι′ and t with {t = 0} smooth along its real locus ι′(𝒮) and rt negative on S(ℝ) ∖ Ξ, from BCR 12.4.11, Bröcker's theorem and a sum of squares.

*Suggested home:* `TauCeti/AlgebraicGeometry/RealSurface/PeriodIndex/RealLocus`, namespace `TauCeti.RealSurface`.

<a id="pi-6-topology-to-cover-hypotheses"></a>

### The branch conditions imply the cover hypotheses

`PI.6/topology-to-cover-hypotheses` · theorem

Let s ∈ H⁰(S, L²(R)) have smooth zero locus D with rs negative on S(ℝ) ∖ Ξ, let p : T → S be the double cover of PI.3/incidence-double-cover ramified over R ∪ D, and suppose the inclusion ι : 𝒮 = D(ℝ) → Ξ satisfies Assumption 6.1. Then p satisfies Assumption 4.1 with Ψ = S(ℝ) ∖ Ξ.

**Hypotheses and conventions.** Ψ = S(ℝ) ∖ Ξ, the open and closed set to avoid (the published proof says Θ; see RealSurfacePeriodIndex/E24).

**Proof.**

1. (i): the equation rv² = sw² has real solutions over x only if rs(x) ≥ 0, so p(T(ℝ)) ⊂ Ξ.
2. (ii): D lifts to T, so ι lifts to T(ℝ) and the classes of components of ι(𝒮) are pushforwards; Assumption 6.1 (iii) concludes.
3. (iii): for each component Σ of Ξ, p(p⁻¹Σ) = Σ₊ ∪ (Σ ∩ Δ(ℝ)) is connected by Assumption 6.1 (iv), and fibres over Δ(ℝ) are connected; if p⁻¹Σ were disconnected two components would have overlapping images and would meet over a boundary point of Δ(ℝ), a contradiction. Connected preimages give injectivity of p\_\* on H².

**Acceptance.** If Ξ = S(ℝ), Ψ = ∅ and (i) is empty.

**Direct prerequisites:** [Topological conditions on the real branch locus](#pi-6-branch-locus-conditions); [Positivity in a squared real line](#pi-6-squared-line-positivity); [Hypotheses on a double cover killing a period-two class](#pi-4-brauer-cover-hypotheses); [The incidence model and its resolution](#pi-3-incidence-double-cover).

**Source:** B19, Lemma 6.5 and proof, p. 92: If rs < 0 off Ξ and D(ℝ) satisfies Assumption 6.1 then p satisfies Assumption 4.1: avoidance, kernel generation and connectedness of preimages of components.

*Suggested home:* `TauCeti/AlgebraicGeometry/RealSurface/PeriodIndex/RealLocus`, namespace `TauCeti.RealSurface`.

<a id="pi-6-vanishing-variation"></a>

### The vanishing variation of the double-cover family

`PI.6/vanishing-variation` · construction

For the real family π : 𝒯 → B of PI.3/incidence-double-cover, the G-equivariant local system R²π\_\*ℚ on B(ℂ) splits orthogonally for the cup product as p\*H²(S(ℂ), ℚ) ⊕ H²\_{ℚ,van}; both are sub-variations of Hodge structure, the first constant. If λ is the class of the lifted curve C ⊂ T\_s (PI.5/curve-lift) and dim coker φ\_λ ≤ h²(S, O\_S) (PI.5/nl-codimension-bound), then the Gauss–Manin derivative ∇λ : T\_{B(ℂ),s} → H²(T, O\_T)\_van is surjective.

**Hypotheses and conventions.** S connected smooth projective; p of degree 2 so p\_\*p\* = 2 and the pullback is injective rationally. The VHS carrier and real action are HodgeStructuresPartII:H.8/geometric-real-variation over ShimuraData:D3/variation.

**Construction.**

1. p\* : H²(S, ℚ) → H²(T\_b, ℚ) is injective with p\_\*p\* = 2; its image is a constant sub-local system on which the cup pairing is nondegenerate (projection formula), so its orthogonal complement is a sub-variation (HodgeStructuresPartII:H.8/orthogonal-constant-splitting).
2. The derivative of a constant summand vanishes (H.8/constant-symbol-zero); Griffiths' formula identifies ∇λ with φ\_λ (H.8/griffiths-derivative).
3. The codimension bound and H²(T, O\_T) = H²(S, O\_S) ⊕ H²(T, O\_T)\_van give surjectivity onto the vanishing part (H.8/vanishing-rank-criterion).

**Uses.** Benoist 2019, Proposition 6.6 proof, pp. 94–95: the real Green criterion applied to H²\_{ℚ,van}. HodgeStructuresPartII:H.8/vanishing-real-green: the open cone in the vanishing invariant subspace. PI.6/degree-two-splitting-uniform: decomposition (6.1) of β − 2γ.

**API.**

- `RealSurface.vanishingVariation` (data): H²\_{ℚ,van} ⊂ R²π\_\*ℚ, the orthogonal of p\*H²(S, ℚ).
- `RealSurface.vanishingVariation_isSubVariation` (structure): It is a sub-variation of Hodge structure stable under the real action.
- `RealSurface.vanishingVariation_split` (equivalence): R²π\_\*ℚ = p\*H²(S, ℚ) ⊕ H²\_{ℚ,van}, orthogonally.
- `RealSurface.vanishingVariation_derivative_surj` (other): ∇λ : T\_{B(ℂ),s} → H²(T, O\_T)\_van is onto under the codimension bound.

**Unit tests.**

- `RealSurface.vanishingVariation_rank` (computation): rank H²\_{ℚ,van} = b₂(T) − b₂(S).
- `RealSurface.vanishingVariation_constant_part` (degenerate): The summand p\*H²(S, ℚ) is a constant variation with zero Gauss–Manin derivative.
- `RealSurface.vanishingVariation_not_kernel_integral` (non-example): The integral classes of the vanishing part need not form a direct summand of H²(T, ℤ): the splitting is rational.
- `RealSurface.vanishingVariation_compat` (compatibility): The vanishing part is the kernel of p\_\* : R²π\_\*ℚ → H²(S, ℚ).

**Acceptance.** If h²(S, O\_S) = 0 the vanishing part carries all of H²(T, O\_T).

**Direct prerequisites:** [Noether–Lefschetz locus of the expected dimension](#pi-5-nl-codimension-bound); `HodgeStructuresPartII:H.8/geometric-real-variation`; `HodgeStructuresPartII:H.8/orthogonal-constant-splitting`; `HodgeStructuresPartII:H.8/constant-symbol-zero`; `HodgeStructuresPartII:H.8/griffiths-derivative`; `HodgeStructuresPartII:H.8/vanishing-rank-criterion`; `ShimuraData:D3/variation`.

**Source:** B19, Proof of Proposition 6.6, p. 94: The splitting H²\_ℚ = H²(S(ℂ), ℚ) ⊕ H²\_{ℚ,van} into sub-variations, the class λ, Griffiths' computation and surjectivity of ∇(λ) onto H²(T, O\_T)\_van.

*Suggested home:* `TauCeti/AlgebraicGeometry/RealSurface/PeriodIndex/Splitting`, namespace `TauCeti.RealSurface`.

<a id="pi-6-kummer-lift-transport"></a>

### Transport of the chosen Kummer lift along the family

`PI.6/kummer-lift-transport` · construction

Before deforming the fibre T\_s in Proposition 6.6, normalise the integral lift β of the pulled-back class so that (β mod 2)|\_{T\_{s,U}} = p\_s\*α̃ (subtract cl(φ̄) for φ̄ ∈ Pic(T\_s) extending the difference on T\_{s,U}), and reapply PI.4/uniform-pushforward-adjustment to the normalised lift. Over a small G-stable contractible real parameter neighbourhood Λ(ℝ), transport the pair (T, p⁻¹R) equivariantly so that the restriction to T\_U and the pullback of the fixed class α̃ correspond on every fibre: (β\_x mod 2)|\_{T\_{x,U}} = p\_x\*α̃ for x ∈ Λ(ℝ).

**Hypotheses and conventions.** The relative-pair transport requires an invariant Whitney stratification containing the fixed exceptional curves over Sing R and the moving ℙ¹ fibres over R ∩ D, with controlled lifts (AlgebraicTopologyPartII:AT2.16/stratified-pair-transport); verifying these for the family is the recorded gap RealSurfacePeriodIndex/G3. Direct ambient cohomological transport is an admissible alternative route.

**Construction.**

1. The difference of β mod 2 and p\_s\*α̃ on T\_{s,U} is the class of a line bundle there (Kummer sequence on T\_{s,U}); extend it to T\_s and subtract.
2. Ordinary equivariant Ehresmann (AT2.16/equivariant-ehresmann) trivialises 𝒯(ℂ) over Λ(ℝ); to keep track of T\_U, transport the pair (T, p⁻¹R) by the stratified version (AT2.16/stratified-pair-transport) after verifying its hypotheses.
3. The class p\*α̃ is the restriction of a class on the total space over Λ(ℝ) pulled back from U(ℂ), so its transport is the fibrewise pullback; hence the normalisation persists.

**Uses.** Benoist 2019, Proposition 6.6 proof, p. 95: the step 'replacing T with T\_x' needs the transported lift to still induce p\_x\*α. PI.6/degree-two-splitting-uniform: the final splitting on the new fibre.

**API.**

- `RealSurface.normalizedLift` (constructor): β with (β mod 2)|\_{T\_U} = p\*α̃.
- `RealSurface.normalizedLift_mod` (simp): The normalisation equation on T\_U.
- `RealSurface.transportLift` (functoriality): The transported class on T\_x for x ∈ Λ(ℝ).
- `RealSurface.transportLift_mod` (relation): (transportLift β x mod 2)|\_{T\_{x,U}} = p\_x\*α̃, given the pair-transport hypotheses.
- `RealSurface.transportLift_pushforward` (relation): Transport commutes with p\_\* and with the constant summand.

**Unit tests.**

- `RealSurface.normalizedLift_trivial` (degenerate): For α = 0 and α̃ = 0, β = 0 is normalised and transports to 0.
- `RealSurface.transportLift_no_ramification` (computation): If R = ∅, transport is ordinary equivariant Ehresmann on T and the normalisation is automatic.
- `RealSurface.transportLift_ordinary_insufficient` (non-example): A trivialisation of 𝒯(ℂ) that does not preserve p⁻¹R does not identify the restrictions to T\_U, so it does not certify (β\_x mod 2)|\_{T\_{x,U}} = p\_x\*α̃.
- `RealSurface.transportLift_compat` (compatibility): On the constant summand p\*H²(S) transport is the identity.

**Acceptance.** If R = ∅ the pair is (T, ∅) and ordinary Ehresmann suffices.

**Direct prerequisites:** [Integral pushforward adjustment for uniform evaluation](#pi-4-uniform-pushforward-adjustment); `AlgebraicTopologyPartII:AT2.16/equivariant-ehresmann`; `AlgebraicTopologyPartII:AT2.16/stratified-pair-transport`; [The incidence model and its resolution](#pi-3-incidence-double-cover); `SchemeAndStackFoundations:SF.6`.

**Source:** B19, Proof of Proposition 6.6, pp. 94–95, citing Dimca 1985, Lemma 4: A G-equivariant Ehresmann trivialisation over a small contractible real neighbourhood identifies cohomology of nearby fibres; the conclusion replaces T by T\_x. B19, Proposition 1.2 proof, p. 71: The complex analogue, where the transported class is the restriction of the family pullback.

*Suggested home:* `TauCeti/AlgebraicGeometry/RealSurface/PeriodIndex/Splitting`, namespace `TauCeti.RealSurface`.

<a id="pi-6-degree-two-splitting-uniform"></a>

### Degree-two splitting with real-point avoidance under uniform evaluation

`PI.6/degree-two-splitting-uniform` · theorem — planet: **Degree-two splitting cover**

Let S be a connected smooth projective surface over ℝ, a ∈ Br(ℝ(S)) of period 2, U its unramified locus, Θ = Θ(a), and S(ℝ) = Ξ ⊔ Ψ a decomposition into open and closed subsets with Θ ⊂ Ψ ⊂ U(ℝ). Suppose a has a Kummer lift ã ∈ H²\_G(U(ℂ), 𝔽₂) with \[ã]₁|\_Ψ = 0 and \[ã]₀|\_Ψ constant equal to t ∈ 𝔽₂ (t = 0 allowed, so Ψ may contain components where a evaluates to 0). Then there are a connected smooth projective surface T over ℝ and a morphism p : T → S of degree 2 with p(T(ℝ)) ⊂ Ξ and a\_{ℝ(T)} = 0.

**Hypotheses and conventions.** Uniform evaluation on Ψ; the proof uses AlgebraicTopologyPartII:AT2.16/double-cover-diagram (gap of that packet) and the relative-pair transport of PI.6/kummer-lift-transport (gap RealSurfacePeriodIndex/G3).

**Proof.**

1. Replace S by a modification S′ → S that is an isomorphism over U and makes S′ ∖ U an SNC divisor: AlgebraicModuliForArithmeticGeometry:R09.7/snc-compactification applied to the quasi-projective U with closure Y = S produces Ū → S; the ramification divisor of a on Ū is a union of components of Ū ∖ U, hence SNC, and Ψ stays open and closed in Ū(ℝ) since it is compact and open in U(ℝ); then blow up general points off R to obtain N with Assumption 5.2 (PI.5/blowup-auxiliary-bundle) and an embedding ι satisfying Assumption 6.1 (PI.6/branch-conditions-blowup); modifications off U do not change the hypotheses.
2. Choose A very ample, L = A^l ⊗ N(−R) with l large even so that Assumptions 3.1, 5.1 and PI.6/signed-branch-section hold; get t with rt negative on Ψ and real locus ι(𝒮).
3. Take s = a₁s₀ + a₂c (PI.5/curve-lift) with a₁ > 0 small and a₂ near t; then rs < 0 on Ψ, D(ℝ) = ι(𝒮) after moving ι (PI.6/branch-conditions-stable), and p satisfies Assumption 4.1 (PI.6/topology-to-cover-hypotheses).
4. PI.4/pullback-unramified, PI.4/uniform-obstruction-vanishing and PI.4/uniform-pushforward-adjustment give a\_T ∈ Br(T)\[2], an integral lift β normalised as in PI.6/kummer-lift-transport, and γ, θ with p\_\*(β − 2γ) = cl(θ).
5. Split β − 2γ = (ε₁, ε₂) along p\*H²(S) ⊕ H²\_van (PI.6/vanishing-variation); the invariant equivariant classes map to a full lattice of H²(T, ℝ(1))^G\_van (AT2.16/finite-index-lattice); the real Green cone (HodgeStructuresPartII:H.8/vanishing-real-green) meets ε₂ + 2·lattice (H.8/full-lattice-coset-cone): ε₂ = 2δ + ν with ν in the cone.
6. For some x ∈ Λ(ℝ), ν is of type (1,1) on T\_x and ε₁ is of type (1,1) because p\_\*(β − 2γ) = cl(θ); so β − 2γ − 2δ is an integral equivariant (1,1) class and the real Lefschetz (1,1) theorem (MotivesAndAlgebraicCycles:MC.7) writes it as cl(φ) on T\_x.
7. By the transported normalisation, a vanishes on T\_{x,U} in the Kummer sequence, hence in Br(ℝ(T\_x)); replace T by T\_x. p(T\_x(ℝ)) ⊂ Ξ for x near s.

**Acceptance.** If S(ℝ) = ∅ (Theorem 0.3 setting), Ψ = Ξ = ∅ and the conclusion is a degree-2 splitting cover of S. For t = 0 the theorem applies to a = (n/2)α with 4 | n and Ψ = Θ(α).

**Direct prerequisites:** [The pulled-back class is unramified](#pi-4-pullback-unramified); [Vanishing of the topological obstruction for uniform evaluation](#pi-4-uniform-obstruction-vanishing); [Integral pushforward adjustment for uniform evaluation](#pi-4-uniform-pushforward-adjustment); [Blowing up points to realise the auxiliary hypotheses](#pi-5-blowup-auxiliary-bundle); [The point of B whose cover contains the curve](#pi-5-curve-lift); [Noether–Lefschetz locus of the expected dimension](#pi-5-nl-codimension-bound); [Blow-ups producing the branch conditions](#pi-6-branch-conditions-blowup); [Stability of the branch conditions](#pi-6-branch-conditions-stable); [A branch section with prescribed real locus and sign](#pi-6-signed-branch-section); [The branch conditions imply the cover hypotheses](#pi-6-topology-to-cover-hypotheses); [The vanishing variation of the double-cover family](#pi-6-vanishing-variation); [Transport of the chosen Kummer lift along the family](#pi-6-kummer-lift-transport); `AlgebraicModuliForArithmeticGeometry:R09.7/snc-compactification`; `AlgebraicTopologyPartII:AT2.16/finite-index-lattice`; `HodgeStructuresPartII:H.8/vanishing-real-green`; `HodgeStructuresPartII:H.8/full-lattice-coset-cone`; `HodgeStructuresPartII:H.8/real-green-open-cone`; `MotivesAndAlgebraicCycles:MC.7`; `MotivesAndAlgebraicCycles:MC.2`.

**Source:** B19, Proposition 6.6 and proof, pp. 93–95: Existence of a degree-2 cover T → S with p(T(ℝ)) ⊂ Ξ splitting α, by the double-cover family, Propositions 4.2–4.5, Green's real criterion and the real Lefschetz (1,1) theorem. BW20, Proposition 2.8: Real Lefschetz (1,1): integral equivariant classes of type (1,1) are classes of real line bundles.

*Suggested home:* `TauCeti/AlgebraicGeometry/RealSurface/PeriodIndex/Splitting`, namespace `TauCeti.RealSurface`.

<a id="pi-6-degree-two-splitting-general"></a>

### Proposition 6.6 for an arbitrary clopen Ψ

`PI.6/degree-two-splitting-general` · theorem

The statement of PI.6/degree-two-splitting-uniform without the uniform-evaluation hypothesis: for any decomposition S(ℝ) = Ξ ⊔ Ψ with Θ ⊂ Ψ ⊂ U(ℝ) and a lift α̃ with \[α̃]₁|\_Ψ = 0, there is a degree-2 morphism p : T → S with p(T(ℝ)) ⊂ Ξ and α\_{ℝ(T)} = 0.

**Hypotheses and conventions.** As printed; its proof uses PI.4/obstruction-vanishing-general and PI.4/pushforward-adjustment-general, which carry gap RealSurfacePeriodIndex/G1.

**Proof.**

1. The proof of PI.6/degree-two-splitting-uniform goes through verbatim once the general Propositions 4.4–4.5 are available; they are not, outside the uniform case.

**Acceptance.** When \[α̃]₀ is constant on Ψ the statement is PI.6/degree-two-splitting-uniform.

**Direct prerequisites:** [Degree-two splitting with real-point avoidance under uniform evaluation](#pi-6-degree-two-splitting-uniform); [Proposition 4.4 for an arbitrary clopen Ψ](#pi-4-obstruction-vanishing-general); [Proposition 4.5 for an arbitrary clopen Ψ](#pi-4-pushforward-adjustment-general).

**Source:** B19, Proposition 6.6, p. 93: The statement for any open and closed Ψ with Θ ⊂ Ψ ⊂ U(ℝ) and a lift with vanishing first component on Ψ.

*Suggested home:* `TauCeti/AlgebraicGeometry/RealSurface/PeriodIndex/Splitting`, namespace `TauCeti.RealSurface`.


## Layer PI.7: Period equals index: the main theorems and the u-invariant

Uniform evaluation of the half-period class; the induction step and Proposition 6.7; Theorem 0.3 (S(ℝ) = ∅), Theorem 0.4 (zero real evaluation), the sufficient half of Theorem 0.5; real-closure triviality implies pointwise triviality; Theorem 0.12 (u(K) ≤ 4 in transcendence degree 2, u(ℝ(S)) = 4 with the corrected anisotropic witness); Theorem 0.10 (rank ≥ 5 forms isotropic when S(ℝ) = ∅); Theorem 0.13 (degree-four del Pezzo surfaces over ℝ(C) with C(ℝ) = ∅ have points).

*Builds on:* `RealSurfacePeriodIndex:PI.6`, `RealSurfacePeriodIndex:PI.0`, `RealSurfacePeriodIndex:PI.1`.

<a id="pi-7-half-period-uniform-evaluation"></a>

### Uniform evaluation of the half-period class

`PI.7/half-period-uniform-evaluation` · theorem

Let α ∈ Br(ℝ(S)) have even period n, U = U\_α, and Ψ = Θ(α), assumed to be a union of components of S(ℝ) contained in U(ℝ). The period-2 class a = (n/2)α evaluates at every x ∈ Ψ to (n/2 mod 2)·(−1,−1) and to 0 at every x ∈ U(ℝ) ∖ Ψ. Hence any Kummer lift of a restricted to U(ℂ) has \[·]₀|\_Ψ constant equal to t = n/2 mod 2: t = 1 if n ≡ 2 mod 4 and t = 0 if 4 | n; in the latter case Θ(a) = ∅ although Ψ need not be empty.

**Hypotheses and conventions.** n even; Θ(α) a union of components of S(ℝ) inside U(ℝ).

**Proof.**

1. α\_x ∈ Br(ℝ) ≅ ℤ/2 equals the nonzero element on Ψ and 0 off Ψ; multiplying by n/2 gives the stated values.
2. The degree-zero component of a Kummer lift is the evaluation (PI.1/real-evaluation-locus).

**Acceptance.** For n = 2, t = 1 and Θ(a) = Θ(α). For n = 4, t = 0.

**Direct prerequisites:** [Real evaluation and the nonzero evaluation locus](#pi-1-real-evaluation-locus); [Unramified locus of a Brauer class](#pi-1-unramified-locus).

**Source:** B19, Proof of Proposition 6.7, p. 95: Proposition 6.6 is applied to (n/2)α with Ψ = Θ and Ξ = S(ℝ) ∖ Θ.

*Suggested home:* `TauCeti/AlgebraicGeometry/RealSurface/PeriodIndex/Induction`, namespace `TauCeti.RealSurface`.

<a id="pi-7-period-induction-step"></a>

### The induction step on the period

`PI.7/period-induction-step` · theorem

Let α ∈ Br(ℝ(S)) have even period n, with Θ(α) a union of components of S(ℝ) and a lift ξ ∈ H²\_G(U\_α(ℂ), 𝔽₂) of (n/2)α with \[ξ]₁|\_{Θ(α)} = 0. Then there is a degree-2 morphism p : T → S of connected smooth projective real surfaces with p(T(ℝ)) ∩ Θ(α) = ∅ such that α\_{ℝ(T)} has period exactly n/2 and evaluates to 0 at every real point of its unramified locus.

**Hypotheses and conventions.** The setting of PI.7/half-period-uniform-evaluation.

**Proof.**

1. a = (n/2)α has unramified locus U\_a ⊃ U\_α; lift a on U\_a and compare with ξ on U\_α: the difference is the reduction of a Picard class of U\_α, which extends to U\_a (PI.1/point-removal-extension); subtract it to get a lift ã on U\_a restricting to ξ.
2. Ψ = Θ(α) is a union of components inside U\_α(ℝ) ⊂ U\_a(ℝ), Θ(a) ⊂ Ψ by density of U\_α and local constancy, and \[ã]₀|\_Ψ is constant (PI.7/half-period-uniform-evaluation).
3. PI.6/degree-two-splitting-uniform with Ξ = S(ℝ) ∖ Ψ gives p : T → S of degree 2 with a\_{ℝ(T)} = 0 and p(T(ℝ)) ∩ Ψ = ∅.
4. Period: m = per(α\_{ℝ(T)}) divides n/2 since (n/2)α\_T = a\_T = 0; corestriction (SemisimpleAlgebrasPartII:SA.1/corestriction-restriction-degree) gives cor(α\_T) = 2α, of period n/2, so n/2 divides m.
5. Evaluation: for y ∈ V(ℝ), V the unramified locus of α\_T, either y ∈ p⁻¹(U)(ℝ), where α\_T(y) = α(p(y)) = 0 as p(y) ∉ Θ, or y lies in a component of V(ℝ) meeting p⁻¹(U)(ℝ) densely; local constancy gives α\_T(y) = 0.

**Acceptance.** For n = 2, α\_{ℝ(T)} = 0.

**Direct prerequisites:** [Uniform evaluation of the half-period class](#pi-7-half-period-uniform-evaluation); [Degree-two splitting with real-point avoidance under uniform evaluation](#pi-6-degree-two-splitting-uniform); [Removing finitely many points and extending line bundles](#pi-1-point-removal-extension); [Real evaluation and the nonzero evaluation locus](#pi-1-real-evaluation-locus); `SemisimpleAlgebrasPartII:SA.1/corestriction-restriction-degree`; `SemisimpleAlgebrasPartII:SA.1/brauer-corestriction`; `MotivesAndAlgebraicCycles:MC.2`.

**Source:** B19, Proof of Proposition 6.7, p. 95: Apply Proposition 6.6 to (n/2)α with Ψ = Θ; α\_{ℝ(T)} has period n/2 and vanishes at real points, and induction concludes. B19, Proposition 6.7 statement, p. 95: The odd case is handled by de Jong and a norm argument; the half-period lift condition concerns even n (RealSurfacePeriodIndex/E8).

*Suggested home:* `TauCeti/AlgebraicGeometry/RealSurface/PeriodIndex/Induction`, namespace `TauCeti.RealSurface`.

<a id="pi-7-arbitrary-period-sufficiency"></a>

### Sufficient condition for period equals index

`PI.7/arbitrary-period-sufficiency` · theorem — planet: **Sufficient condition for period equals index**

Let S be a connected smooth projective surface over ℝ and α ∈ Br(ℝ(S)) of period n, U = U\_α, Θ = Θ(α), assumed to be a union of components of S(ℝ). If n is odd, ind(α) = n. If n is even and some lift ξ ∈ H²\_G(U(ℂ), 𝔽₂) of (n/2)α has \[ξ]₁|\_Θ = 0, then ind(α) = n.

**Hypotheses and conventions.** The odd case needs no lift condition.

**Proof.**

1. Odd n: PI.1/real-closed-norm-bound.
2. Even n, by induction on n: PI.7/period-induction-step gives p : T → S of degree 2 with α\_T of period n/2 evaluating to 0 at all real points of its unramified locus; then Θ(α\_T) = ∅ and the lift condition holds trivially for α\_T (zero first component on the empty set), so by induction (or by the odd case) ind(α\_T) = n/2.
3. Reverse index divisibility: ind(α) divides 2·ind(α\_T) = n (SemisimpleAlgebrasPartII:SA.0/index-divides-degree-index), and n = per(α) divides ind(α).

**Acceptance.** For α of period 2 with Θ = ∅ and any lift, ind(α) = 2.

**Direct prerequisites:** [The induction step on the period](#pi-7-period-induction-step); [Norm bound over a real closed field](#pi-1-real-closed-norm-bound); `SemisimpleAlgebrasPartII:SA.0/index-divides-degree-index`; `SemisimpleAlgebrasPartII:SA.1/period-divides-index`; `SemisimpleAlgebrasPartII:SA.0/class-index`.

**Source:** B19, Proposition 6.7 and proof, p. 95: If Θ is a union of components and the half-period lift has vanishing first component on Θ, then ind(α) = n, by induction on n.

*Suggested home:* `TauCeti/AlgebraicGeometry/RealSurface/PeriodIndex/Induction`, namespace `TauCeti.RealSurface`.

<a id="pi-7-no-real-points-period-index"></a>

### Period equals index on real surfaces without real points

`PI.7/no-real-points-period-index` · theorem — planet: **Theorem 0.3: no real points**

Let S be a connected smooth projective surface over ℝ with S(ℝ) = ∅. Then ind(α) = per(α) for every α ∈ Br(ℝ(S)), ramified or not.

**Hypotheses and conventions.** S connected smooth projective over ℝ, S(ℝ) = ∅.

**Proof.**

1. Θ = ∅ is a union of components of the empty S(ℝ), and the lift condition is empty; apply PI.7/arbitrary-period-sufficiency.

**Acceptance.** For S the anisotropic quadric x² + y² + z² + w² = 0 in ℙ³\_ℝ, every class of Br(ℝ(S)) has index equal to its period. K = ℝ(x, y, z | x² + y² + z² = −1) is a field of cohomological dimension 2 on which period equals index.

**Direct prerequisites:** [Sufficient condition for period equals index](#pi-7-arbitrary-period-sufficiency).

**Source:** B19, Theorem 0.3, p. 64; §6.3, p. 95: If S(ℝ) = ∅ then ind(α) = per(α) for every α ∈ Br(ℝ(S)); it is the case S(ℝ) = ∅ of Proposition 6.7.

*Suggested home:* `TauCeti/AlgebraicGeometry/RealSurface/PeriodIndex/MainTheorems`, namespace `TauCeti.RealSurface`.

<a id="pi-7-zero-evaluation-period-index"></a>

### Period equals index for classes vanishing at real points

`PI.7/zero-evaluation-period-index` · theorem — planet: **Theorem 0.4: zero real evaluation**

Let U be a connected smooth surface over ℝ and α ∈ Br(U) ⊂ Br(ℝ(U)) with α\_x = 0 ∈ Br(ℝ) for every x ∈ U(ℝ). Then ind(α) = per(α).

**Hypotheses and conventions.** U connected smooth over ℝ, not necessarily proper; U is quasi-projective (a smooth separated surface over a field is, by Nagata compactification, resolution of surface singularities and Zariski's projectivity of smooth proper surfaces).

**Proof.**

1. Compactify U to a connected smooth projective S with ℝ(S) = ℝ(U) (AlgebraicModuliForArithmeticGeometry:R09.7/snc-compactification); then U ⊂ U\_α.
2. Each component of S(ℝ) is a smooth surface and S ∖ U meets it in a set of dimension ≤ 1, so U(ℝ) is dense in S(ℝ) and in U\_α(ℝ); evaluation is locally constant on U\_α(ℝ) (PI.1/real-evaluation-locus) and vanishes on U(ℝ), hence Θ(α) = ∅.
3. Apply PI.7/arbitrary-period-sufficiency with Θ = ∅, a union of (no) components, for which the lift condition is empty.

**Acceptance.** For α = (−1, 1 + x²) on 𝔸², α\_x = 0 everywhere and ind α = per α = 1 (α = 0).

**Direct prerequisites:** [Sufficient condition for period equals index](#pi-7-arbitrary-period-sufficiency); [Real evaluation and the nonzero evaluation locus](#pi-1-real-evaluation-locus); [Unramified locus of a Brauer class](#pi-1-unramified-locus); `AlgebraicModuliForArithmeticGeometry:R09.7/snc-compactification`.

**Source:** B19, Theorem 0.4, p. 64; §6.3, p. 95: If α ∈ Br(U) vanishes at every real point of U then ind(α) = per(α); it is Proposition 6.7 with Θ = ∅.

*Suggested home:* `TauCeti/AlgebraicGeometry/RealSurface/PeriodIndex/MainTheorems`, namespace `TauCeti.RealSurface`.

<a id="pi-7-unramified-odd-or-vanishing"></a>

### Unramified classes: the sufficient half of Theorem 0.5

`PI.7/unramified-odd-or-vanishing` · theorem

Let S be a connected smooth projective surface over ℝ and α ∈ Br(S) of period n. If n is odd, or if some lift ξ ∈ H²\_G(S(ℂ), 𝔽₂) of (n/2)α in the Kummer sequence 0 → Pic(S)/2 → H²\_G(S(ℂ), 𝔽₂) → Br(S)\[2] → 0 satisfies \[ξ]₁|\_Θ = 0, then ind(α) = per(α).

**Hypotheses and conventions.** α unramified on S, so U = S and Θ = Θ(α) is a union of components of S(ℝ).

**Proof.**

1. Apply PI.7/arbitrary-period-sufficiency with U = S.

**Acceptance.** If S(ℝ) is orientable and every class of H¹(S(ℝ)) is algebraic, the condition can be met by a Picard correction.

**Direct prerequisites:** [Sufficient condition for period equals index](#pi-7-arbitrary-period-sufficiency); [Real evaluation and the nonzero evaluation locus](#pi-1-real-evaluation-locus).

**Source:** B19, Theorem 0.5, first statement, p. 64; §6.3, p. 95: Odd period, or existence of a half-period lift with vanishing first component on Θ, implies ind = per; it is Proposition 6.7 with U = S.

*Suggested home:* `TauCeti/AlgebraicGeometry/RealSurface/PeriodIndex/MainTheorems`, namespace `TauCeti.RealSurface`.

<a id="pi-7-real-closure-pointwise-triviality"></a>

### Vanishing at real closures implies vanishing at real points

`PI.7/real-closure-pointwise-triviality` · theorem

Let U be a smooth real surface and α ∈ Br(U)\[2]. If α vanishes at every real closure of ℝ(U), then α\_x = 0 for every x ∈ U(ℝ).

**Hypotheses and conventions.** α unramified on U.

**Proof.**

1. At x ∈ U(ℝ) choose local parameters z₁, z₂; the completion embeds ℝ(U) into ℝ((z₁, z₂)), which embeds into a real closed field K such as the iterated Puiseux field ⋃\_{n₂}(⋃\_{n₁} ℝ((z₁^{1/n₁})))((z₂^{1/n₂})).
2. In Br(ℝ) → Br(ℝ\[\[z₁, z₂]]) → Br(K), the first map is an isomorphism with retraction given by restriction to x (henselian local rings, SchemeAndStackFoundations §2.22 brauer\_henselian\_local), and the composite is an isomorphism because both groups are generated by (−1, −1) (PI.0/real-closure-at-ordering).
3. α\_K = 0 (K is a real closure of ℝ(U) at the induced ordering), so α\_x = 0.

**Acceptance.** For α = (−1, −1) pulled back to U, α does not vanish at real closures when U(ℝ) ≠ ∅, consistently.

**Direct prerequisites:** [Real closure at a specified ordering](#pi-0-real-closure-at-ordering); [Real evaluation and the nonzero evaluation locus](#pi-1-real-evaluation-locus); `SchemeAndStackFoundations:SF.2`; `PowerSeries` (Mathlib); `HahnSeries` (Mathlib).

**Source:** B19, Proof of Theorem 0.12, p. 96: For x ∈ U(ℝ), local parameters and a real closed extension of ℝ((z₁, z₂)) show that α vanishes at x, via Br(ℝ) → Br(ℝ\[\[z₁, z₂]]) → Br(K).

*Suggested home:* `TauCeti/AlgebraicGeometry/RealSurface/PeriodIndex/UInvariant`, namespace `TauCeti.RealSurface`.

<a id="pi-7-u-invariant-upper-bound"></a>

### The Elman–Lam invariant in transcendence degree two

`PI.7/u-invariant-upper-bound` · theorem — planet: **Theorem 0.12: u ≤ 4**

Let K be a field extension of ℝ of transcendence degree 2, not necessarily finitely generated. Then u(K) ≤ 4 (Elman–Lam invariant).

**Hypotheses and conventions.** trdeg\_ℝ K = 2.

**Proof.**

1. By PI.0/pfister-brauer-criterion it suffices that every nonzero α ∈ Br(K)\[2] vanishing at all real closures of K has index 2.
2. Choose a finitely generated K₀ ⊂ K containing a transcendence basis of K/ℝ and over which α is defined (so K/K₀ is algebraic; RealSurfacePeriodIndex/E9), write K as the union of the finite extensions K\_i of K₀, and α\_i ∈ Br(K\_i)\[2]. The sets Z\_i ⊂ X\_{K\_i} of orderings where α\_i survives are closed (PI.0/brauer-nonvanishing-locus) with empty limit, so some Z\_i is empty (PI.0/harrison-compact): replace K by K\_i.
3. Now K = ℝ(S) for an integral surface; let U be an open with α ∈ Br(U); α\_x = 0 for x ∈ U(ℝ) (PI.7/real-closure-pointwise-triviality), so ind(α) = 2 by PI.7/zero-evaluation-period-index (on the smooth locus).

**Acceptance.** u(ℝ(x, y)) ≤ 4, new before Benoist.

**Direct prerequisites:** [Pfister's criterion: index two implies u ≤ 4](#pi-0-pfister-brauer-criterion); [The locus where a Brauer class survives is clopen](#pi-0-brauer-nonvanishing-locus); [Compactness of the Harrison space and inverse limits](#pi-0-harrison-compact); [Vanishing at real closures implies vanishing at real points](#pi-7-real-closure-pointwise-triviality); [Period equals index for classes vanishing at real points](#pi-7-zero-evaluation-period-index).

**Source:** B19, Theorem 0.12, first assertion, p. 66; proof, pp. 95–96: u(K) ≤ 4 for every extension of ℝ of transcendence degree 2, by Pfister's criterion, compactness of orderings and Theorem 0.4.

*Suggested home:* `TauCeti/AlgebraicGeometry/RealSurface/PeriodIndex/UInvariant`, namespace `TauCeti.RealSurface`.

<a id="pi-7-sharp-anisotropic-form"></a>

### A four-dimensional anisotropic zero-signature form

`PI.7/sharp-anisotropic-form` · construction

Let S be an integral surface over ℝ and x a smooth closed point with κ(x) ≅ ℂ. Let w ∈ O\_{S,x} lift √−1 and replace it by w′ = (w² − 1)/(2w), which again lifts √−1 and satisfies w′² + 1 = (w² + 1)²/(4w²) ∈ m\_x². For any regular system of parameters z₁, z₂ at x, y\_j = (1 + z\_j)² + (w′ + z\_j)² (j = 1, 2) is again a regular system of parameters, each y\_j is a sum of two squares (hence positive at every ordering), and q = ⟨1, y₁, −y₂, −y₁y₂⟩ has zero total signature and is anisotropic over ℝ(S).

**Hypotheses and conventions.** x smooth with residue field ℂ (exists on any integral surface over ℝ); the replacement of w is the corrected choice (RealSurfacePeriodIndex/E10).

**Construction.**

1. dy\_j = 2(1 + z\_j)dz\_j + 2(w′ + z\_j)(dw′ + dz\_j) ≡ 2(1 + i)dz\_j modulo m\_x and the differential of w′² + 1 ∈ m\_x², so y₁, y₂ are regular parameters.
2. Completion gives ℝ(S) ⊂ ℂ((y₁))((y₂)) (κ(x) = ℂ); by PI.0/springer-complete-dvr applied twice, q is anisotropic there, hence over ℝ(S) (anisotropy descends to subfields).
3. y\_j is a sum of two squares, so y\_j >\_P 0 at every ordering and sign\_P(q) = 1 + 1 − 1 − 1 = 0.

**Uses.** Benoist 2019, Theorem 0.12 second assertion: the lower bound u(ℝ(S)) ≥ 4. PI.7/u-invariant-equals-four: the witness form.

**API.**

- `RealSurface.sharpForm` (constructor): The form ⟨1, y₁, −y₂, −y₁y₂⟩ over ℝ(S) from (x, w, z₁, z₂).
- `RealSurface.sharpForm_regularParameters` (characterisation): y₁, y₂ is a regular system of parameters at x.
- `RealSurface.sharpForm_anisotropic` (other): sharpForm is anisotropic over ℝ(S).
- `RealSurface.sharpForm_zeroSignature` (other): sharpForm has zero signature at every ordering of ℝ(S).
- `RealSurface.sharpForm_lift_correction` (relation): w′ = (w² − 1)/(2w) lifts √−1 and w′² + 1 ∈ m\_x².

**Unit tests.**

- `RealSurface.sharpForm_affinePlane` (computation): On 𝔸²\_ℝ at the point (x² + 1, y), with w = x and z₁ = x² + 1, z₂ = y, the corrected w′ and the forms y\_j are explicit.
- `RealSurface.sharpForm_dimension` (degenerate): The form has dimension 4 and signature 0 at every ordering, so it witnesses u ≥ 4 and not more.
- `RealSurface.sharpForm_uncorrected_fails` (non-example): With w itself, dw² can be proportional to dz\_j and y₁, y₂ can fail to be regular parameters (the case the source's choice does not exclude).
- `RealSurface.sharpForm_baseChange` (compatibility): Anisotropy over ℂ((y₁))((y₂)) implies anisotropy over ℝ(S) by the contrapositive of QuadraticForm.not\_anisotropic\_baseChange.

**Acceptance.** For S = 𝔸² and x the closed point corresponding to (i, 0), the construction gives an explicit anisotropic form over ℝ(x, y).

**Direct prerequisites:** [Springer's theorem for complete discretely valued fields](#pi-0-springer-complete-dvr); [Signature of a quadratic form at an ordering](#pi-0-signature-at-ordering); `QuadraticMap.Anisotropic` (Mathlib); `QuadraticForm.not_anisotropic_baseChange` (Tau Ceti); `IsLocalRing.maximalIdeal` (Mathlib); `PowerSeries` (Mathlib).

**Source:** B19, Proof of Theorem 0.12, lower bound, p. 96: At a closed point with residue field ℂ, the y\_j built from a lift of √−1 are local parameters and ⟨1, y₁, −y₂, −y₁y₂⟩ is anisotropic over ℂ((y₁))((y₂)) by Springer, with y\_j totally positive.

*Suggested home:* `TauCeti/AlgebraicGeometry/RealSurface/PeriodIndex/UInvariant`, namespace `TauCeti.RealSurface`.

<a id="pi-7-u-invariant-equals-four"></a>

### The u-invariant of a real surface function field is four

`PI.7/u-invariant-equals-four` · theorem

For every integral surface S over ℝ, u(ℝ(S)) = 4, including when S(ℝ) ≠ ∅.

**Hypotheses and conventions.** S integral of dimension 2 over ℝ.

**Proof.**

1. u ≤ 4 by PI.7/u-invariant-upper-bound; u ≥ 4 by PI.7/sharp-anisotropic-form and PI.0/elman-lam-u.

**Acceptance.** u(ℝ(x, y)) = 4.

**Direct prerequisites:** [The Elman–Lam invariant in transcendence degree two](#pi-7-u-invariant-upper-bound); [A four-dimensional anisotropic zero-signature form](#pi-7-sharp-anisotropic-form); [The Elman–Lam u-invariant](#pi-0-elman-lam-u).

**Source:** B19, Theorem 0.12, second assertion, p. 66; proof, p. 96: u(K) = 4 when K = ℝ(S).

*Suggested home:* `TauCeti/AlgebraicGeometry/RealSurface/PeriodIndex/UInvariant`, namespace `TauCeti.RealSurface`.

<a id="pi-7-rank-five-isotropy"></a>

### Quadratic forms of rank five over surfaces without real points

`PI.7/rank-five-isotropy` · theorem — planet: **Theorem 0.10: rank-five isotropy**

Let S be an integral surface over ℝ with S(ℝ) = ∅. Every quadratic form of rank ≥ 5 over ℝ(S) is isotropic.

**Hypotheses and conventions.** S(ℝ) = ∅, so ℝ(S) is nonreal (no orderings) on a smooth projective model, and the Elman–Lam invariant is the classical one.

**Proof.**

1. ℝ(S) is nonreal: by the Artin–Lang theorem the function field of an integral real variety is real iff the variety has a smooth real point, and S has no real points at all.
2. By PI.0/elman-lam-u for nonreal fields and PI.7/u-invariant-upper-bound, every anisotropic form has dimension ≤ 4.

**Acceptance.** Over ℝ(x, y, z | x² + y² + z² = −1), ⟨1, 1, 1, 1, a⟩ is isotropic for every a.

**Direct prerequisites:** [The Elman–Lam invariant in transcendence degree two](#pi-7-u-invariant-upper-bound); [The Elman–Lam u-invariant](#pi-0-elman-lam-u); [The space of orderings with the Harrison topology](#pi-0-ordering-space).

**Source:** B19, Theorem 0.10, p. 66: All quadratic forms of rank ≥ 5 over ℝ(S) are isotropic when S(ℝ) = ∅; this is Lang's conjecture for i = 2, d = 2. BCR, §4.1, Artin–Lang homomorphism theorem (pp. 85–87): Orderings of function fields of real varieties are detected by real points.

*Suggested home:* `TauCeti/AlgebraicGeometry/RealSurface/PeriodIndex/UInvariant`, namespace `TauCeti.RealSurface`.

<a id="pi-7-del-pezzo-point"></a>

### Degree-four del Pezzo surfaces over real curves without real points

`PI.7/del-pezzo-point` · theorem — planet: **Theorem 0.13: del Pezzo points**

Let C be an integral curve over ℝ with C(ℝ) = ∅. Every del Pezzo surface of degree 4 over ℝ(C) has an ℝ(C)-rational point.

**Hypotheses and conventions.** A degree-4 del Pezzo surface over a field F is, through its anticanonical embedding, a smooth complete intersection of two quadrics in ℙ⁴\_F (cited classical input).

**Proof.**

1. Write the surface as {q₁ = q₂ = 0} ⊂ ℙ⁴ over F = ℝ(C).
2. F(t) = ℝ(C × ℙ¹) is the function field of an integral surface without real points, so q₁ + tq₂ (rank 5) is isotropic over F(t) by PI.7/rank-five-isotropy.
3. Amer–Brumer (PI.0/amer-brumer) gives a common nonzero zero of q₁, q₂ over F, a rational point.

**Acceptance.** When C is the anisotropic conic, this is equivalent to the real integral Hodge conjecture for 1-cycles on degree-4 del Pezzo fibrations over C (Benoist–Wittenberg II, Proposition 8.3).

**Direct prerequisites:** [Quadratic forms of rank five over surfaces without real points](#pi-7-rank-five-isotropy); [The Amer–Brumer theorem](#pi-0-amer-brumer).

**Source:** B19, Theorem 0.13, p. 66: Every degree 4 del Pezzo surface over ℝ(C) with C(ℝ) = ∅ has a rational point, from Theorem 0.10 and the Amer–Brumer theorem. VA13, Várilly-Alvarado, Arithmetic of del Pezzo surfaces, §on degree 4 (not read): A del Pezzo surface of degree 4 is a smooth complete intersection of two quadrics in ℙ⁴.

*Suggested home:* `TauCeti/AlgebraicGeometry/RealSurface/PeriodIndex/UInvariant`, namespace `TauCeti.RealSurface`.


## Layer PI.8: The obstruction to period equals index

The finite-flat open U₀ and Θ₀; the alternating double cover and branch multiplicities; the trace-quotient lift and the sign-corrected pullback lift; the circle double cover and its local monodromy correction; the correcting line bundle and algebraicity of the quotient component; Proposition 7.1 (even-degree splitting obstruction) and the obstruction half of Theorem 0.5 (ind = 2 per).

*Builds on:* `RealSurfacePeriodIndex:PI.7`, `AlgebraicTopologyPartII:AT2.15`, `AlgebraicTopologyPartII:AT2.14`, `MotivesAndAlgebraicCycles:MC.2`.

<a id="pi-8-finite-flat-open"></a>

### The finite-flat open and the restricted evaluation locus

`PI.8/finite-flat-open` · definition

Let p : T → S be a generically finite morphism of connected smooth projective real surfaces of even degree n, α ∈ Br(ℝ(S))\[n] with p\*α = 0, U = U\_α and Θ = Θ(α). Let U₀ ⊂ U be the largest open over which p is finite flat with smooth branch locus Δ ∩ U₀; U ∖ U₀ is finite. Put Θ₀ = Θ ∩ U₀(ℝ). Then p(T(ℝ)) ∩ Θ = ∅, and Θ₀ is contained in the étale locus V of the alternating double cover (PI.8/alternating-double-cover).

**Hypotheses and conventions.** n even; p\*α = 0 in Br(ℝ(T)).

**Construction.**

1. If y ∈ T(ℝ) with p(y) ∈ Θ, then α\_{p(y)} = (p\*α)\_y = 0 after restricting to a real point, contradicting p(y) ∈ Θ (evaluation commutes with pullback; p\*α is unramified near y).
2. A finite-type map of smooth surfaces is flat where it is finite (miracle flatness), and the locus where the branch divisor is not smooth or p not finite is finite in U.
3. If x ∈ Δ\_i(ℝ) ∩ Θ₀ with m\_i odd, a general such x has geometric fibre of odd cardinality n − m\_i, so a real preimage, contradicting the first point; hence Θ₀ ⊂ V(ℝ).

**Uses.** Benoist 2019, §§7.2–7.5, pp. 97–104: the open U₀ on which the trace sequence lifts the Kummer class. PI.8/trace-quotient-lift-surface: the finite-flat locus V = U₀. PI.8/quotient-component-algebraicity: the restricted locus Θ₀.

**API.**

- `RealSurface.finiteFlatOpen` (data): U₀ ⊂ U, the largest open where p is finite flat with smooth branch locus.
- `RealSurface.finiteFlatOpen_compl_finite` (other): U ∖ U₀ is finite.
- `RealSurface.avoid_theta` (other): p(T(ℝ)) ∩ Θ = ∅.
- `RealSurface.restrictedTheta` (data): Θ₀ = Θ ∩ U₀(ℝ).
- `RealSurface.restrictedTheta_subset_etale` (other): Θ₀ ⊂ V(ℝ), V the étale locus of the alternating double cover.

**Unit tests.**

- `RealSurface.finiteFlatOpen_etale` (degenerate): If p is finite étale over U, U₀ = U and Θ₀ = Θ.
- `RealSurface.restrictedTheta_double_cover` (computation): For n = 2, V = S ∖ Δ, and Θ₀ ⊂ V(ℝ) says Θ₀ avoids Δ(ℝ), as it must since Δ(ℝ) ⊂ p(T(ℝ)).
- `RealSurface.finiteFlatOpen_not_all` (non-example): At an isolated point where p is not finite (a contracted curve), U₀ ≠ U.
- `RealSurface.restrictedTheta_dense` (compatibility): Θ₀ is dense in Θ and H¹(Θ) ↪ H¹(Θ₀) (PI.1/point-removal-extension).

**Acceptance.** If p is finite étale over U then U₀ = U and Θ₀ = Θ.

**Direct prerequisites:** [Real evaluation and the nonzero evaluation locus](#pi-1-real-evaluation-locus); [Unramified locus of a Brauer class](#pi-1-unramified-locus); `SchemeAndStackFoundations:SF.2`.

**Source:** B19, §7.1, p. 96; §7.2, p. 98: p(T(ℝ)) ∩ Θ = ∅; U₀ the largest open where p is finite flat with smooth ramification locus; Θ₀ = Θ ∩ U₀(ℝ) ⊂ V(ℝ).

*Suggested home:* `TauCeti/AlgebraicGeometry/RealSurface/PeriodIndex/Obstruction`, namespace `TauCeti.RealSurface`.

<a id="pi-8-alternating-double-cover"></a>

### The alternating double cover and branch multiplicities

`PI.8/alternating-double-cover` · construction — planet: **Alternating double cover**

For p : T → S as in PI.8/finite-flat-open with étale locus S\* (degree n), compose the monodromy π₁^ét(S\*) → 𝔖\_n with the sign to get a finite étale double cover Ŝ\* → S\*, independent of the numbering; its normalisation Ŝ → S is a finite double cover. For a branch component Δ\_i with geometric generic fibre F\_i put m\_i = n − |F\_i| = Σ\_{y ∈ F\_i}(e\_y − 1). The maximal open over which Ŝ → S is étale is V = S ∖ ⋃\_{m\_i odd} Δ\_i.

**Hypotheses and conventions.** Purity of the branch locus (Zariski–Nagata) for the normal double cover.

**Construction.**

1. The sign of the monodromy is a homomorphism to ℤ/2, giving the double cover; renumbering conjugates the monodromy and does not change the sign. Étale and topological double covers of S\* correspond through the finite-coefficient comparison (InverseGaloisAndArithmeticFundamentalGroups:IG.3/finite-coefficient-comparison in degree 1).
2. Local monodromy around Δ\_i is a permutation with cycle type given by the ramification indices; it is odd iff m\_i is odd.
3. The branch locus of the normal double cover has pure codimension one, so V is as stated.

**Uses.** Benoist 2019, Lemma 7.6 and proof of Proposition 7.4, pp. 100–103: comparison with the circle double cover. PI.8/correcting-line-bundle: the line bundle attached to the alternating cover over V.

**API.**

- `RealSurface.alternatingCover` (data): The finite double cover Ŝ → S.
- `RealSurface.branchMultiplicity` (data): m\_i = n − |F\_i| for each branch component.
- `RealSurface.branchMultiplicity_eq_sum` (characterisation): m\_i = Σ\_{y ∈ F\_i}(e\_y − 1).
- `RealSurface.alternatingCover_etale_locus` (characterisation): Ŝ → S is étale exactly over S ∖ ⋃\_{m\_i odd} Δ\_i.
- `RealSurface.alternatingCover_class` (data): ê ∈ H¹\_G(V(ℂ), 𝔽₂), the class of the étale part.

**Unit tests.**

- `RealSurface.alternatingCover_degree_two` (degenerate): For n = 2 the sign 𝔖₂ → ℤ/2 is an isomorphism, so the alternating cover is p itself over S\* and V = S ∖ Δ.
- `RealSurface.branchMultiplicity_simple` (computation): For a simple branch point (one ramification point of index 2), m\_i = 1.
- `RealSurface.alternatingCover_even_branch` (non-example): If all m\_i are even, V = S even though p is ramified.
- `RealSurface.alternatingCover_sign` (compatibility): The monodromy of Ŝ\* is the composite of the monodromy of p with Equiv.Perm.sign.

**Acceptance.** For n = 2, m\_i = 1 for every branch component, and V = S ∖ Δ.

**Direct prerequisites:** [The finite-flat open and the restricted evaluation locus](#pi-8-finite-flat-open); `InverseGaloisAndArithmeticFundamentalGroups:IG.3/finite-coefficient-comparison`; `SchemeAndStackFoundations:SF.2`; `Equiv.Perm.sign` (Mathlib).

**Source:** B19, §7.2, pp. 97–98: The alternating double cover from the signature of the monodromy, its normal extension, the multiplicities m\_i and the étale locus V = S ∖ ⋃\_{m\_i odd} Δ\_i.

*Suggested home:* `TauCeti/AlgebraicGeometry/RealSurface/PeriodIndex/Obstruction`, namespace `TauCeti.RealSurface`.

<a id="pi-8-trace-quotient-lift-surface"></a>

### Lifting the Kummer class through the trace sequence

`PI.8/trace-quotient-lift-surface` · theorem

In PI.8/finite-flat-open let α̃ ∈ H²\_G(U(ℂ), ℤ/n(1)) lift α in the Kummer sequence. Then α̃|\_{U₀} = η mod n − φ(ζ) for some η ∈ H²\_G(U₀(ℂ), ℤ(1)) and ζ ∈ H²\_G(U₀(ℂ), Q(1)), where Q = coker(ℤ → p\_\*ℤ) and φ : Q → ℤ/n is induced by the trace.

**Hypotheses and conventions.** p finite over U₀, so the Leray spectral sequence of T\_{U₀} → U₀ degenerates.

**Proof.**

1. The obstruction is the image of α̃|\_{U₀} in H³\_G(U₀(ℂ), p\_\*ℤ(1)) ≅ H³\_G(T\_{U₀}(ℂ), ℤ(1)).
2. Comparing the Kummer sequence with the trace sequence 0 → p\_\*ℤ → ℤ ⊕ Q → ℤ/n → 0, this image is the topological obstruction of p\*α|\_{U₀}, which vanishes since p\*α = 0.
3. Apply AlgebraicTopologyPartII:AT2.15/trace-quotient-lift.

**Acceptance.** If α = 0 one can take η = ζ = 0.

**Direct prerequisites:** [The finite-flat open and the restricted evaluation locus](#pi-8-finite-flat-open); `AlgebraicTopologyPartII:AT2.15/trace-quotient-lift`; `AlgebraicTopologyPartII:AT2.15/permutation-quotient`; `MotivesAndAlgebraicCycles:MC.2`; `SchemeAndStackFoundations:SF.6`.

**Source:** B19, Lemma 7.2 and proof, p. 98: α̃|\_{U₀} is the image under (1, −φ) of (η, ζ), because its boundary vanishes in H³\_G(T\_{U₀}(ℂ), ℤ(1)).

*Suggested home:* `TauCeti/AlgebraicGeometry/RealSurface/PeriodIndex/Obstruction`, namespace `TauCeti.RealSurface`.

<a id="pi-8-corrected-pullback-lift"></a>

### The sign-corrected pullback lift

`PI.8/corrected-pullback-lift` · theorem

With η, ζ from PI.8/trace-quotient-lift-surface and ψ : Q → p\_\*ℤ the trace-zero operator, p\*α̃|\_{U₀} ∈ H²\_G(T\_{U₀}(ℂ), ℤ/n(1)) is the reduction modulo n of p\*η − ψ(ζ). (The published Lemma 7.3 and (7.13) have +ψ(ζ).)

**Hypotheses and conventions.** The minus sign matches the convention (1, −φ); equality of maps Q → p\_\*(ℤ/n) is checked on the target, which injects into j\_\*j\*.

**Proof.**

1. α̃ = η mod n − φ(ζ); p\*(η mod n) = (p\*η) mod n.
2. ψ mod n = p\*∘φ as maps Q → p\_\*(ℤ/n): they agree on étale stalks and p\_\*(ℤ/n) → j\_\*j\*p\_\*(ℤ/n) is injective (AlgebraicTopologyPartII:AT2.15/trace-zero-operator); hence p\*φ(ζ) = ψ(ζ) mod n.
3. This is AlgebraicTopologyPartII:AT2.15/corrected-integral-lift on the surface.

**Acceptance.** Tr(p\*η − ψ(ζ)) = nη, since Tr∘ψ = 0.

**Direct prerequisites:** [Lifting the Kummer class through the trace sequence](#pi-8-trace-quotient-lift-surface); `AlgebraicTopologyPartII:AT2.15/corrected-integral-lift`; `AlgebraicTopologyPartII:AT2.15/trace-zero-operator`.

**Source:** B19, Lemma 7.3 and proof, pp. 98–99: p\*α̃ is the reduction of p\*η + ψ(ζ), via diagrams (7.3)–(7.4); the sign must be minus (RealSurfacePeriodIndex/E6) and the injectivity used concerns the target sheaf (RealSurfacePeriodIndex/E7).

*Suggested home:* `TauCeti/AlgebraicGeometry/RealSurface/PeriodIndex/Obstruction`, namespace `TauCeti.RealSurface`.

<a id="pi-8-circle-double-cover"></a>

### The circle double cover attached to the quotient class

`PI.8/circle-double-cover` · construction

Let ι : 𝕊¹ → Θ₀ be a C^∞ embedding meeting the branch locus of p transversally at general points. On 𝕊¹ the permutation stalks of p\_\*ℤ are free ℤ\[G]-modules (no real sheets). The sheaf 𝒢 = coker\[(φ₂, 1 + σ) : ι\*Q(1) → 𝔽₂ ⊕ (ι\*Q(1))^G] sits in an exact sequence 0 → 𝔽₂ → 𝒢 → 𝔽₂ → 0 (AlgebraicTopologyPartII:AT2.15/circle-extension), with stalks 𝔽₂² if 4 | n and ℤ/4 if n ≡ 2 mod 4. The elements of 𝒢 mapping to 1 form a double cover ρ̃ : 𝕊̃¹ → 𝕊¹ whose class ε̃ ∈ H¹(𝕊¹, 𝔽₂) is the boundary of 1, namely ι\*\[φ(ζ)]₁.

**Hypotheses and conventions.** n even; ι transverse to the branch locus (such embedded circles represent every class of H₁(Θ₀, 𝔽₂): AlgebraicTopologyPartII:AT2.12/surface-loop-representatives); the input ζ has normalised degree-two component 1 because φ(ζ)|\_x = −α̃|\_x ≠ 0 at x ∈ 𝕊¹ ⊂ Θ.

**Construction.**

1. Ext stalks: (Ext^q\_G(ℤ, ι\*p\_\*ℤ))\_x = H^q(G, ℤ\[G]^k) = 0 for q > 0 (AlgebraicTopologyPartII:AT2.14/equivariant-ext-stalk).
2. AT2.15/circle-extension gives exactness and identifies the boundary of 1 with the degree-one component of φζ; the degree-zero normalisation holds because η|\_x = 0 (H²(G, ℤ(1)) = 0) and α̃|\_x ≠ 0 on Θ.
3. The reduction from ℤ/n(1) to 𝔽₂ on the two twisted cyclic degrees is (id, n/2 mod 2) (AT2.15/cyclic-reduction-degrees), which gives the stalk computation and forbids treating both cases as split.

**Uses.** Benoist 2019, Lemma 7.6, p. 101: comparison with the alternating double cover. PI.8/circle-monodromy-correction: the class ε̃.

**API.**

- `RealSurface.circleSheaf` (data): 𝒢 on 𝕊¹ with 0 → 𝔽₂ → 𝒢 → 𝔽₂ → 0.
- `RealSurface.circleCover` (data): The double cover of 𝕊¹ given by the elements of 𝒢 over 1.
- `RealSurface.circleCover_class` (characterisation): Its class is ι\*\[φ(ζ)]₁ ∈ H¹(𝕊¹, 𝔽₂).
- `RealSurface.circleSheaf_stalk` (relation): Stalks are 𝔽₂² if 4 | n and ℤ/4 if n ≡ 2 mod 4.

**Unit tests.**

- `RealSurface.circleSheaf_stalk_two` (computation): For n = 2 every stalk of 𝒢 is ℤ/4.
- `RealSurface.circleSheaf_stalk_four` (computation): For n = 4 every stalk of 𝒢 is 𝔽₂ ⊕ 𝔽₂.
- `RealSurface.circleCover_trivial` (degenerate): If φ(ζ) has zero first component along 𝕊¹, the circle cover is trivial.
- `RealSurface.circleSheaf_not_split` (non-example): For n ≡ 2 mod 4 the extension 𝒢 is not split: its stalk ℤ/4 is not 𝔽₂².

**Acceptance.** For n = 2 the stalks are ℤ/4.

**Direct prerequisites:** [The sign-corrected pullback lift](#pi-8-corrected-pullback-lift); [The finite-flat open and the restricted evaluation locus](#pi-8-finite-flat-open); `AlgebraicTopologyPartII:AT2.15/circle-extension`; `AlgebraicTopologyPartII:AT2.14/equivariant-ext-stalk`; `AlgebraicTopologyPartII:AT2.15/cyclic-reduction-degrees`; `AlgebraicTopologyPartII:AT2.12/surface-loop-representatives`.

**Source:** B19, (7.5)–(7.9) and Lemma 7.5, pp. 99–100: The sheaf 𝒢 on 𝕊¹, the exact sequence (7.6), and the identification of the boundary of 1 with ι\*\[φ(ζ)]₁; stalks 𝔽₂ ⊕ 𝔽₂ if 4 | n and ℤ/4 otherwise. B19, p. 100–101: The double cover of 𝕊¹ defined inside the étalé space of 𝒢.

*Suggested home:* `TauCeti/AlgebraicGeometry/RealSurface/PeriodIndex/Obstruction`, namespace `TauCeti.RealSurface`.

<a id="pi-8-circle-monodromy-correction"></a>

### Local monodromy correction of circle covers

`PI.8/circle-monodromy-correction` · theorem

In PI.8/circle-double-cover let ε̂ ∈ H¹(𝕊¹, 𝔽₂) be the class of the pullback of the alternating double cover ((ι\*ê)). Then ε̃ = ε̂ + Σ\_{4 ∤ m\_i} ι\*cl\_R(Δ\_i) in H¹(𝕊¹, 𝔽₂). On Θ₀ every m\_i met by 𝕊¹ is even, and the local discrepancy at a crossing with Δ\_i is m\_i/2 mod 2.

**Hypotheses and conventions.** ι meets the branch components at general points of Δ\_i(ℝ) ∩ Θ₀.

**Proof.**

1. Off the finitely many crossings, a canonical bijection χ\_x between the fibres of the two covers comes from orderings (a₁, …, a\_{n/2}, σa₁, …, σa\_{n/2}) of p⁻¹(x) up to even permutations and the functions equal to √−1 on the a\_j and 0 on the σa\_j.
2. At a crossing with Δ\_i, the monodromy of a small loop exchanges the a's with conjugates of the b's in a way whose two permutations have the same cycle type, odd iff 4 ∤ m\_i; so χ extends iff 4 | m\_i.
3. Each nonextending crossing contributes ι\*cl\_R(Δ\_i).

**Acceptance.** If no branch component meets 𝕊¹, ε̃ = ε̂.

**Direct prerequisites:** [The circle double cover attached to the quotient class](#pi-8-circle-double-cover); [The alternating double cover and branch multiplicities](#pi-8-alternating-double-cover); `MotivesAndAlgebraicCycles:MC.2`.

**Source:** B19, Lemma 7.6 and proof, pp. 101–102: ε̃ = ε̂ + Σ\_{4∤m\_i} ι\*cl\_R(Δ\_i), by a canonical isomorphism off branch points extending through a crossing iff 4 | m\_i.

*Suggested home:* `TauCeti/AlgebraicGeometry/RealSurface/PeriodIndex/Obstruction`, namespace `TauCeti.RealSurface`.

<a id="pi-8-correcting-line-bundle"></a>

### The line bundle correcting the obstruction

`PI.8/correcting-line-bundle` · construction

Let ê ∈ H¹\_G(V(ℂ), 𝔽₂) be the class of the alternating double cover over V. By Lemma 2.1 of the source there is ϕ ∈ Pic(S) with \[ê]₁ = cl\_R(ϕ)|\_{V(ℝ)}; put θ = ϕ ⊗ O(Σ\_{4 ∤ m\_i} Δ\_i) ∈ Pic(S).

**Hypotheses and conventions.** Pic(S) → Pic(V) onto (PI.1/point-removal-extension); υ(ê) ∈ Pic(V)\[2] extended to S.

**Construction.**

1. cl\_R(υ(ê)) = \[ê]₁ (MotivesAndAlgebraicCycles:MC.2, Lemma 2.1 of the source); extend υ(ê) to ϕ on S.
2. Add the branch components with 4 ∤ m\_i.

**Uses.** Benoist 2019, Proposition 7.4, p. 99: θ ∈ Pic(S) with \[φ(ζ)]₁ = cl\_R(θ) on Θ₀. PI.8/quotient-component-algebraicity: the line bundle θ.

**API.**

- `RealSurface.correctingBundle` (constructor): θ = ϕ ⊗ O(Σ\_{4∤m\_i} Δ\_i).
- `RealSurface.correctingBundle_realClass` (relation): cl\_R(θ)|\_{V(ℝ)} = \[ê]₁ + Σ\_{4∤m\_i} cl\_R(Δ\_i)|\_{V(ℝ)}.
- `RealSurface.correctingBundle_ext` (other): ϕ restricts to υ(ê) on V.

**Unit tests.**

- `RealSurface.correctingBundle_unramified` (degenerate): If p is étale (no Δ\_i) and the alternating cover is trivial, θ = O\_S.
- `RealSurface.correctingBundle_simple_branch` (computation): For a branch component with m\_i = 2, 4 ∤ m\_i and Δ\_i contributes to θ.
- `RealSurface.correctingBundle_multiple_four` (non-example): A component with m\_i = 4 does not contribute, although it is in the branch locus.
- `RealSurface.correctingBundle_lemma21` (compatibility): cl\_R(υ(ê)) = \[ê]₁ is Lemma 2.1 of the source, supplied by MotivesAndAlgebraicCycles:MC.2.

**Acceptance.** For n = 2 the alternating cover is p itself over S\*, every m\_i equals 1, and every branch component contributes to θ.

**Direct prerequisites:** [The alternating double cover and branch multiplicities](#pi-8-alternating-double-cover); [Removing finitely many points and extending line bundles](#pi-1-point-removal-extension); `MotivesAndAlgebraicCycles:MC.2`.

**Source:** B19, Proof of Proposition 7.4, pp. 102–103: Choice of ϕ with \[ê]₁ = cl\_R(ϕ)|\_V and the identity (7.11).

*Suggested home:* `TauCeti/AlgebraicGeometry/RealSurface/PeriodIndex/Obstruction`, namespace `TauCeti.RealSurface`.

<a id="pi-8-quotient-component-algebraicity"></a>

### Algebraicity of the quotient component

`PI.8/quotient-component-algebraicity` · theorem

In PI.8/trace-quotient-lift-surface, \[φ(ζ)]₁|\_{Θ₀} = cl\_R(θ)|\_{Θ₀} in H¹(Θ₀, 𝔽₂) for the θ ∈ Pic(S) of PI.8/correcting-line-bundle (brackets include reduction modulo 2).

**Hypotheses and conventions.** The setting of §7: n even, p\*α = 0.

**Proof.**

1. H¹(Θ₀, 𝔽₂) is detected by smooth embedded circles transverse to the branch locus at general points (AlgebraicTopologyPartII:AT2.12/surface-loop-representatives and duality).
2. For each such ι, ι\*\[φ(ζ)]₁ = ε̃ (PI.8/circle-double-cover) = ε̂ + Σ\_{4∤m\_i} ι\*cl\_R(Δ\_i) (PI.8/circle-monodromy-correction), and ε̂ = ι\*\[ê]₁ = ι\*cl\_R(ϕ).

**Acceptance.** If α evaluates to 0 everywhere, Θ₀ = ∅ and the statement is empty.

**Direct prerequisites:** [The circle double cover attached to the quotient class](#pi-8-circle-double-cover); [Local monodromy correction of circle covers](#pi-8-circle-monodromy-correction); [The line bundle correcting the obstruction](#pi-8-correcting-line-bundle); `AlgebraicTopologyPartII:AT2.12/surface-loop-representatives`; Tau Ceti roadmap `TauCetiRoadmap/AlgebraicTopology#stage-6-cohomology-products-and-manifold-duality`.

**Source:** B19, Proposition 7.4 and proof, pp. 99, 102–103: \[φ(ζ)]₁ = cl\_R(θ) on Θ₀ for some θ ∈ Pic(S), tested on circles through Lemmas 7.5–7.6.

*Suggested home:* `TauCeti/AlgebraicGeometry/RealSurface/PeriodIndex/Obstruction`, namespace `TauCeti.RealSurface`.

<a id="pi-8-even-degree-splitting-obstruction"></a>

### Obstruction to splitting by an even-degree cover

`PI.8/even-degree-splitting-obstruction` · theorem — planet: **Even-degree splitting obstruction**

Let p : T → S be a generically finite morphism of even degree n between connected smooth projective real surfaces, α ∈ Br(ℝ(S))\[n] with p\*α = 0, U = U\_α, Θ = Θ(α), α̃ ∈ H²\_G(U(ℂ), ℤ/n(1)) a Kummer lift and ξ its reduction modulo 2. Then \[ξ]₁|\_Θ = cl\_R(ν)|\_Θ for some ν ∈ Pic(S).

**Hypotheses and conventions.** n even.

**Proof.**

1. PI.8/corrected-pullback-lift: p\*α̃|\_{U₀} = (p\*η − ψ(ζ)) mod n; p\*α|\_{U₀} = 0 gives p\*η − ψ(ζ) = nγ + cl(ϕ) on T\_{U₀} (real topological Brauer sequence, MotivesAndAlgebraicCycles:MC.2).
2. Push forward: p\_\*ψ(ζ) = 0, so n(η − p\_\*γ) = cl(p\_\*ϕ); torsion-freeness of the cokernel of cl on Pic(U₀) and extension to S give μ with η − p\_\*γ = cl(μ|\_{U₀}), hence \[η]₁ − p\_\*\[γ]₁ = cl\_R(μ) on U₀(ℝ).
3. p\_\*\[γ]₁ vanishes on Θ₀ (no real preimages); with PI.8/quotient-component-algebraicity, \[ξ]₁ = \[η]₁ + \[φ(ζ)]₁ = cl\_R(μ + θ) on Θ₀.
4. H¹(Θ) → H¹(Θ₀) is injective (PI.1/point-removal-extension), so the identity holds on Θ.

**Acceptance.** If T(ℝ) = ∅ and Θ = S(ℝ), the conclusion says \[ξ]₁ is algebraic on all of S(ℝ).

**Direct prerequisites:** [The sign-corrected pullback lift](#pi-8-corrected-pullback-lift); [Algebraicity of the quotient component](#pi-8-quotient-component-algebraicity); [The finite-flat open and the restricted evaluation locus](#pi-8-finite-flat-open); [Removing finitely many points and extending line bundles](#pi-1-point-removal-extension); `MotivesAndAlgebraicCycles:MC.2`.

**Source:** B19, Proposition 7.1, p. 96; proof §7.5, pp. 103–104: If p\*α = 0 for an even-degree p then \[ξ]₁|\_Θ = cl\_R(ν)|\_Θ, by Lemma 7.3, pushforward, primitivity of the Picard image and Proposition 7.4.

*Suggested home:* `TauCeti/AlgebraicGeometry/RealSurface/PeriodIndex/Obstruction`, namespace `TauCeti.RealSurface`.

<a id="pi-8-unramified-index-doubling"></a>

### Unramified classes: the obstruction half of Theorem 0.5

`PI.8/unramified-index-doubling` · theorem — planet: **Theorem 0.5: index-doubling obstruction**

Let S be a connected smooth projective surface over ℝ and α ∈ Br(S) of even period n. If no lift ξ ∈ H²\_G(S(ℂ), 𝔽₂) of (n/2)α satisfies \[ξ]₁|\_Θ = 0, then ind(α) = 2n.

**Hypotheses and conventions.** α unramified on S; the criterion is existential in the lift.

**Proof.**

1. ind(α) ∈ {n, 2n} (PI.1/real-closed-norm-bound). Suppose ind(α) = n: take a degree-n splitting field L of ℝ(S) (SemisimpleAlgebrasPartII:SA.0/class-index-attained), the normalisation N of S in L (finite over S), and a resolution T → N with T smooth projective and connected (AlgebraicModuliForArithmeticGeometry:R09.7/snc-compactification with closure Y = N); p : T → S is generically finite of degree n.
2. Let α̃ ∈ H²\_G(S(ℂ), ℤ/n(1)) lift α; its reduction ξ lifts (n/2)α, and PI.8/even-degree-splitting-obstruction gives ν with \[ξ]₁|\_Θ = cl\_R(ν)|\_Θ.
3. ξ′ = ξ − (cl(ν) mod 2) is another lift of (n/2)α with \[ξ′]₁|\_Θ = 0 (compatibility of cl and cl\_R), contradicting the hypothesis.

**Acceptance.** Period-4 classes on real Enriques surfaces have index 4 (PI.9/enriques-period-four), consistent with this dichotomy.

**Direct prerequisites:** [Obstruction to splitting by an even-degree cover](#pi-8-even-degree-splitting-obstruction); [Norm bound over a real closed field](#pi-1-real-closed-norm-bound); `AlgebraicModuliForArithmeticGeometry:R09.7/snc-compactification`; `SemisimpleAlgebrasPartII:SA.0/class-index-attained`; `MotivesAndAlgebraicCycles:MC.2`.

**Source:** B19, Theorem 0.5, second statement, p. 64; proof, p. 104: If ind(α) = n then a degree-n splitting cover gives a lift with vanishing first component on Θ; otherwise ind(α) = 2n.

*Suggested home:* `TauCeti/AlgebraicGeometry/RealSurface/PeriodIndex/MainTheorems`, namespace `TauCeti.RealSurface`.


## Layer PI.9: Real Enriques surfaces and the Puiseux counterexample

The image of the first two real components (Proposition 8.1); real Enriques surfaces and their halves, the Brauer group killed by 4, period-four classes, the real Picard image (cited), the half detector, and Theorem 0.6; the field of real Puiseux series, the sextic double plane and its K3 resolution with four sphere components, a class evaluating to zero on exactly one component, the quaternion sign contradiction, and Proposition 0.7.

*Builds on:* `RealSurfacePeriodIndex:PI.8`, `RealSurfacePeriodIndex:PI.7`, `EnriquesSurfacesAndIntegralNonexistence:E0`, `AlgebraicTopologyPartII:AT2.10`, `AlgebraicTopologyPartII:AT2.6`.

<a id="pi-9-real-locus-image"></a>

### Image of the first two real components

`PI.9/real-locus-image` · theorem

Let S be a connected smooth projective surface over ℝ with total Stiefel–Whitney class w = (w\_i) of S(ℝ). The image of ρ : H²\_G(S(ℂ), 𝔽₂) → H⁰(S(ℝ)) ⊕ H¹(S(ℝ)), restriction followed by the canonical decomposition and projection, is the set of (a₀, a₁) with deg(\[δ]₁ ∪ (a₁ + a₀ ∪ w₁)) = 0 for every δ ∈ H¹\_G(S(ℂ), 𝔽₂) with \[δ]₀ = 0.

**Hypotheses and conventions.** 𝔽₂ coefficients; deg the mod-2 degree on H²(S(ℝ)).

**Proof.**

1. The localisation sequence with supports on S(ℝ) is canonically split (AlgebraicTopologyPartII:AT2.9/mod-two-splitting), giving H²\_G = H²\_{G,S(ℝ)} ⊕ H²\_G(S(ℂ) ∖ S(ℝ)).
2. Equivariant purity identifies H²\_{G,S(ℝ)} with H⁰(S(ℝ)), and its image under ρ is {(a₀, a₀ ∪ w₁)}, since the self-intersection class γ is the total Stiefel–Whitney class (AT2.9/gamma-class, AT2.12/gamma-stiefel-whitney).
3. The image of the complement factor is {(0, a₁)} with a₁ orthogonal to all \[δ]₁ with \[δ]₀ = 0, by the self-duality of the corrected localisation sequence (AT2.10/localization-self-dual).

**Acceptance.** If S(ℝ) = ∅ the image is 0.

**Direct prerequisites:** `AlgebraicTopologyPartII:AT2.9/mod-two-splitting`; `AlgebraicTopologyPartII:AT2.9/gamma-class`; `AlgebraicTopologyPartII:AT2.12/gamma-stiefel-whitney`; `AlgebraicTopologyPartII:AT2.10/localization-self-dual`; `AlgebraicTopologyPartII:AT2.10/corrected-localization`; Tau Ceti roadmap `TauCetiRoadmap/AlgebraicTopology#stage-6-cohomology-products-and-manifold-duality`.

**Source:** B19, Proposition 8.1 and proof, pp. 105–106: Description of the image of ρ through the split localisation sequence, equivariant purity, γ = w and the duality theorem of Benoist–Wittenberg. BW20, Proposition 1.3, Definition 1.4, Remark 1.6(i), Theorem 1.12: Canonical splitting, the class γ, its identification with w and the duality theorem.

*Suggested home:* `TauCeti/AlgebraicGeometry/RealSurface/PeriodIndex/Enriques`, namespace `TauCeti.RealSurface`.

<a id="pi-9-real-enriques-halves"></a>

### Real Enriques surfaces and their two halves

`PI.9/real-enriques-halves` · definition — planet: **Halves of a real Enriques surface**

A real Enriques surface is a smooth projective geometrically connected surface S over ℝ with S\_ℂ an Enriques surface (EnriquesSurfacesAndIntegralNonexistence:E0/is-enriques; in characteristic 0: q = p\_g = 0 and K\_S of order 2). The two lifts of K\_S ∈ Pic(S)\[2] in H¹\_ét(S, μ₂) ≅ H¹\_G(S(ℂ), 𝔽₂) define the two real forms Y₁, Y₂ → S of the canonical K3 double cover; their real images are the halves S₁, S₂ of S, open and closed with S(ℝ) = S₁ ⊔ S₂, either of which may be empty.

**Hypotheses and conventions.** The canonical cover is the étale K3 cover (EnriquesSurfacesAndIntegralNonexistence:E3/etale-canonical-is-k3 in characteristic ≠ 2). The two lifts differ by the constant class of ℝˣ/ℝˣ² in the degree-one Kummer sequence 0 → ℝˣ/ℝˣ² → H¹\_G(S(ℂ), 𝔽₂) → Pic(S)\[2] → 0.

**Construction.**

1. Pic(S) → Pic(S\_ℂ) is injective (Hilbert 90 for H¹(G, ℂˣ)), Pic(S\_ℂ)\[2] = {0, K} by the Enriques invariants (EnriquesSurfacesAndIntegralNonexistence:E0/pic-tau-length), and K\_S is defined over ℝ, so Pic(S)\[2] = {0, K\_S}.
2. Each lift is a finite étale double cover, a real form of the canonical cover; a real point x of S lifts to exactly one of the two forms, which defines the partition of S(ℝ).

**Uses.** Benoist 2019, Theorem 0.6, p. 65: the case distinction 'exactly one half nonempty'. PI.9/enriques-half-detector: the class δ with \[δ]₀ = 0. PI.9/real-enriques-criterion: the statement of the criterion.

**API.**

- `RealSurface.IsRealEnriques` (data): S/ℝ smooth projective geometrically connected with S\_ℂ Enriques.
- `RealSurface.enriquesHalf` (data): The halves S₁, S₂ ⊂ S(ℝ).
- `RealSurface.enriquesHalf_partition` (characterisation): S(ℝ) = S₁ ⊔ S₂ with both open and closed.
- `RealSurface.enriquesHalf_swap` (relation): Changing the lift of K\_S by the constant class exchanges the halves.
- `RealSurface.canonical_torsion` (other): Pic(S)\[2] = {0, K\_S}.

**Unit tests.**

- `RealSurface.enriquesHalf_empty` (degenerate): If S(ℝ) = ∅ both halves are empty.
- `RealSurface.enriquesHalf_union` (characterisation): Every real point lies in exactly one half.
- `RealSurface.enriquesHalf_not_components` (non-example): The halves are unions of components but need not be single components.
- `RealSurface.isRealEnriques_compat` (compatibility): IsRealEnriques S iff EnriquesSurfacesAndIntegralNonexistence's IsEnriques holds for S over ℝ with geometric connectedness.

**Acceptance.** If S(ℝ) = ∅ both halves are empty. Each half is a union of components of S(ℝ).

**Direct prerequisites:** `EnriquesSurfacesAndIntegralNonexistence:E0/is-enriques`; `EnriquesSurfacesAndIntegralNonexistence:E0/pic-tau-length`; `EnriquesSurfacesAndIntegralNonexistence:E3/etale-canonical-is-k3`; `EnriquesSurfacesAndIntegralNonexistence:E0`; `SchemeAndStackFoundations:SF.6`.

**Source:** B19, §0.3, p. 64; §8.1, p. 106: The canonical decomposition S(ℝ) = S₁ ⊔ S₂ into halves, from the two preimages of K\_S in H¹\_ét(S, ℤ/2), following Degtyarev–Kharlamov. DK96, §1.3 (not read; cited at Benoist's locator): Halves of a real Enriques surface.

*Suggested home:* `TauCeti/AlgebraicGeometry/RealSurface/PeriodIndex/Enriques`, namespace `TauCeti.RealSurface`.

<a id="pi-9-enriques-complex-brauer"></a>

### The Brauer group of a real Enriques surface is killed by four

`PI.9/enriques-complex-brauer` · theorem

For a real Enriques surface S, H²(S, O\_S) = 0 and H³(S(ℂ), ℤ)\_tors ≅ ℤ/2, so Br(S\_ℂ) ≅ ℤ/2 by the complex topological Brauer sequence; restriction and corestriction to S\_ℂ show that Br(S) is killed by 4.

**Hypotheses and conventions.** Enriques invariants from EnriquesSurfacesAndIntegralNonexistence:E0/geometric-invariants; π₁ of S(ℂ) is ℤ/2.

**Proof.**

1. In characteristic 0, q = p\_g = 0 (requested from EnriquesSurfacesAndIntegralNonexistence:E0; E0/geometric-invariants gives h¹(O) = h²(O) ≤ 1), so every class of H²(S(ℂ), ℤ) is algebraic by integral Lefschetz (1,1) and Br(S\_ℂ) ≅ H³(S(ℂ), ℤ)\_tors, which is ℤ/2 (Poincaré duality H³ ≅ H₁ and π₁ = ℤ/2).
2. cor ∘ res = 2 on Br(S), and res lands in a group killed by 2.

**Acceptance.** Br(S\_ℂ) has exactly two elements.

**Direct prerequisites:** [Real Enriques surfaces and their two halves](#pi-9-real-enriques-halves); `EnriquesSurfacesAndIntegralNonexistence:E0/geometric-invariants`; `EnriquesSurfacesAndIntegralNonexistence:E0`; `MotivesAndAlgebraicCycles:MC.2`; `MotivesAndAlgebraicCycles:MC.7/tate-and-hodge-known-cases`; `SemisimpleAlgebrasPartII:SA.1/corestriction-restriction-degree`.

**Source:** B19, Proof of Theorem 0.6, p. 106: Br(S\_ℂ) ≅ H³(S(ℂ), ℤ)\_tors = ℤ/2 by (1.2), so Br(S) is 4-torsion; Mangolte–van Hamel compute it precisely.

*Suggested home:* `TauCeti/AlgebraicGeometry/RealSurface/PeriodIndex/Enriques`, namespace `TauCeti.RealSurface`.

<a id="pi-9-enriques-period-four"></a>

### Period-four classes on real Enriques surfaces

`PI.9/enriques-period-four` · theorem

If α ∈ Br(S) has period 4 on a real Enriques surface S, then ind(α) = 4.

**Hypotheses and conventions.** S real Enriques.

**Proof.**

1. α\_ℂ has period 2 (Br(S\_ℂ) ≅ ℤ/2), so index 2 by PI.1/de-jong-period-index.
2. ind(α) divides 2·ind(α\_ℂ) = 4 and is divisible by per(α) = 4.

**Acceptance.** Classes of period 4 exist on some real Enriques surfaces (Mangolte–van Hamel).

**Direct prerequisites:** [The Brauer group of a real Enriques surface is killed by four](#pi-9-enriques-complex-brauer); [De Jong's period-index theorem in characteristic zero](#pi-1-de-jong-period-index); `SemisimpleAlgebrasPartII:SA.0/index-divides-degree-index`; `SemisimpleAlgebrasPartII:SA.1/period-divides-index`.

**Source:** B19, Proof of Theorem 0.6, p. 106: A period-4 class has α\_ℂ of period and index 2, hence index 4.

*Suggested home:* `TauCeti/AlgebraicGeometry/RealSurface/PeriodIndex/Enriques`, namespace `TauCeti.RealSurface`.

<a id="pi-9-enriques-picard-image"></a>

### Real Picard image on Enriques surfaces (cited input)

`PI.9/enriques-picard-image` · theorem

For a real Enriques surface S, the image of cl\_R : Pic(S) → H¹(S(ℝ), 𝔽₂) is the orthogonal complement of w₁(S(ℝ)) under the mod-2 Poincaré duality pairing; in particular cl\_R is onto iff S(ℝ) is orientable.

**Hypotheses and conventions.** Cited: Mangolte–van Hamel 1998, Theorems 1.1 and 4.4.

**Proof.**

1. Cited input; the orientable case uses w₁ = 0.

**Acceptance.** If S(ℝ) is a union of spheres, H¹ = 0 and the statement is empty.

**Direct prerequisites:** [Real Enriques surfaces and their two halves](#pi-9-real-enriques-halves); `MotivesAndAlgebraicCycles:MC.7`; `MotivesAndAlgebraicCycles:MC.2`; `AlgebraicTopologyPartII:AT2.12/gamma-stiefel-whitney`.

**Source:** MVH98, Theorems 1.1 and 4.4 (not read; cited at Benoist's locator): The image of the Borel–Haefliger map on a real Enriques surface is the orthogonal of w₁. B19, Proof of Theorem 0.6, p. 106: Use of Mangolte–van Hamel Theorem 4.4 for the image of cl\_R.

*Suggested home:* `TauCeti/AlgebraicGeometry/RealSurface/PeriodIndex/Enriques`, namespace `TauCeti.RealSurface`.

<a id="pi-9-enriques-half-detector"></a>

### Detecting an empty half

`PI.9/enriques-half-detector` · theorem

Let S be a real Enriques surface with S(ℝ) ≠ ∅. In 0 → ℝˣ/ℝˣ² → H¹\_G(S(ℂ), 𝔽₂) → Pic(S)\[2] → 0 the constant nonzero class has degree-zero component 1. A nonzero δ ∈ H¹\_G(S(ℂ), 𝔽₂) with \[δ]₀ = 0 exists iff exactly one half of S is empty; it is then unique, and \[δ]₁ = cl\_R(K\_S) = w₁(S(ℝ)).

**Hypotheses and conventions.** S(ℝ) ≠ ∅ (if S(ℝ) = ∅ all three nonzero classes have zero restriction and uniqueness fails).

**Proof.**

1. H¹\_G has four elements: 0, the constant class c (with \[c]₀ = 1 on S(ℝ)), and the two lifts of K\_S; \[·]₀ of a lift of K\_S is the indicator of the complement of its half.
2. A lift with \[δ]₀ = 0 exists iff its half is all of S(ℝ), that is iff the other half is empty; it is unique since the two lifts differ by c.
3. \[δ]₁ = cl\_R(υ(δ)) = cl\_R(K\_S) (Lemma 2.1 of the source, MotivesAndAlgebraicCycles:MC.2) and cl\_R(K\_S) = w₁ (Kahn 1987, MotivesAndAlgebraicCycles:MC.2).

**Acceptance.** If both halves are nonempty, no such δ exists.

**Direct prerequisites:** [Real Enriques surfaces and their two halves](#pi-9-real-enriques-halves); `MotivesAndAlgebraicCycles:MC.2`; `SchemeAndStackFoundations:SF.6`.

**Source:** B19, Proof of Theorem 0.6, pp. 106–107: The degree-one Kummer sequence, the two preimages of K\_S, and \[δ]₁ = cl\_R(K\_S) = w₁ by Lemma 2.1 and Kahn's theorem; uniqueness of the nonzero δ (RealSurfacePeriodIndex/E15).

*Suggested home:* `TauCeti/AlgebraicGeometry/RealSurface/PeriodIndex/Enriques`, namespace `TauCeti.RealSurface`.

<a id="pi-9-enriques-orientable-case"></a>

### Orientable or empty real locus

`PI.9/enriques-orientable-case` · theorem

If S is a real Enriques surface with S(ℝ) empty or orientable, every α ∈ Br(S) has ind(α) = per(α).

**Hypotheses and conventions.** S real Enriques.

**Proof.**

1. S(ℝ) = ∅: PI.7/no-real-points-period-index.
2. Br(S) is killed by 4 (PI.9/enriques-complex-brauer); classes of period 4 have index 4 (PI.9/enriques-period-four).
3. For α of period 2 and any lift α̃, cl\_R is onto when S(ℝ) is orientable (PI.9/enriques-picard-image), so \[α̃]₁ = cl\_R(θ) = \[cl(θ)]₁ and α̃ − (cl(θ) mod 2) is a lift with zero first component; PI.7/unramified-odd-or-vanishing gives index 2.

**Acceptance.** Real Enriques surfaces whose real locus is a union of spheres and tori satisfy period = index for all unramified classes.

**Direct prerequisites:** [Real Picard image on Enriques surfaces (cited input)](#pi-9-enriques-picard-image); [Period-four classes on real Enriques surfaces](#pi-9-enriques-period-four); [Unramified classes: the sufficient half of Theorem 0.5](#pi-7-unramified-odd-or-vanishing); [Period equals index on real surfaces without real points](#pi-7-no-real-points-period-index).

**Source:** B19, Proof of Theorem 0.6, p. 106: If S(ℝ) is empty or orientable, every period-2 class has a lift with \[α̃]₁ = 0, so index 2.

*Suggested home:* `TauCeti/AlgebraicGeometry/RealSurface/PeriodIndex/Enriques`, namespace `TauCeti.RealSurface`.

<a id="pi-9-enriques-two-halves"></a>

### Two nonempty halves and a nonorientable real locus

`PI.9/enriques-two-halves` · theorem

If S(ℝ) is nonorientable and both halves of S are nonempty, there is α ∈ Br(S) of period 2 and index 4.

**Hypotheses and conventions.** S real Enriques; both halves nonempty; w₁ ≠ 0.

**Proof.**

1. No nonzero δ with \[δ]₀ = 0 exists (PI.9/enriques-half-detector), so by PI.9/real-locus-image every (1, a₁) is in the image of ρ; choose a₁ ∉ im cl\_R (cl\_R is not onto since w₁ ≠ 0).
2. The induced α has Θ = S(ℝ) and no lift with zero first component: lifts differ by Picard classes, whose components are cl\_R; PI.8/unramified-index-doubling gives index 4.

**Acceptance.** Such surfaces exist (Degtyarev–Itenberg–Kharlamov classification).

**Direct prerequisites:** [Detecting an empty half](#pi-9-enriques-half-detector); [Image of the first two real components](#pi-9-real-locus-image); [Real Picard image on Enriques surfaces (cited input)](#pi-9-enriques-picard-image); [Unramified classes: the obstruction half of Theorem 0.5](#pi-8-unramified-index-doubling).

**Source:** B19, Proof of Theorem 0.6, pp. 106–107: When both halves are nonempty, Proposition 8.1 gives a lift with \[α̃]₀ = 1 and \[α̃]₁ outside im cl\_R; its class has index 4.

*Suggested home:* `TauCeti/AlgebraicGeometry/RealSurface/PeriodIndex/Enriques`, namespace `TauCeti.RealSurface`.

<a id="pi-9-enriques-odd-euler"></a>

### One nonempty half with an odd number of odd-Euler components

`PI.9/enriques-odd-euler` · theorem

If S(ℝ) is nonorientable, exactly one half is nonempty and deg(w₁²) ≠ 0 (equivalently S(ℝ) has an odd number of components of odd Euler characteristic), then there is α ∈ Br(S) of period 2 and index 4.

**Hypotheses and conventions.** deg(w₁(Σ)²) ≡ χ(Σ) mod 2 for each component Σ (AlgebraicTopologyPartII:AT2.12/gamma-stiefel-whitney).

**Proof.**

1. With δ the unique class of PI.9/enriques-half-detector, \[δ]₁ = w₁, and PI.9/real-locus-image gives a lift with components (1, w₁) since deg(w₁ ∪ (w₁ + w₁)) = 0.
2. w₁ ∉ im cl\_R because deg(w₁ ∪ w₁) ≠ 0 (PI.9/enriques-picard-image); conclude by PI.8/unramified-index-doubling.

**Acceptance.** A real Enriques surface with real locus a single ℝℙ² in one half is an example.

**Direct prerequisites:** [Detecting an empty half](#pi-9-enriques-half-detector); [Image of the first two real components](#pi-9-real-locus-image); [Real Picard image on Enriques surfaces (cited input)](#pi-9-enriques-picard-image); [Unramified classes: the obstruction half of Theorem 0.5](#pi-8-unramified-index-doubling); `AlgebraicTopologyPartII:AT2.12/gamma-stiefel-whitney`.

**Source:** B19, Proof of Theorem 0.6, p. 107: With \[δ]₁ = w₁ and deg(w₁²) ≠ 0, the lift with components (1, w₁) gives an index-4 class.

*Suggested home:* `TauCeti/AlgebraicGeometry/RealSurface/PeriodIndex/Enriques`, namespace `TauCeti.RealSurface`.

<a id="pi-9-enriques-even-euler"></a>

### One nonempty half with an even number of odd-Euler components

`PI.9/enriques-even-euler` · theorem

If exactly one half of S is nonempty and deg(w₁²) = 0, every period-2 class α ∈ Br(S) has index 2.

**Hypotheses and conventions.** S real Enriques; S(ℝ) ≠ ∅.

**Proof.**

1. For a lift α̃, PI.9/real-locus-image gives deg(\[α̃]₁ ∪ w₁ + \[α̃]₀ ∪ w₁²) = 0.
2. If deg(\[α̃]₁ ∪ w₁) = 0 take a = \[α̃]₁; otherwise some component Σ of odd Euler characteristic has \[α̃]₀|\_Σ = 0, and a = \[α̃]₁ + w₁(Σ) on Σ, \[α̃]₁ elsewhere.
3. deg(a ∪ w₁) = 0, so a = cl\_R(θ) (PI.9/enriques-picard-image); subtracting θ gives a lift whose first component vanishes on Θ, and PI.7/unramified-odd-or-vanishing gives index 2.

**Acceptance.** Real Enriques surfaces with S(ℝ) a union of two Klein bottles in one half satisfy period = index.

**Direct prerequisites:** [Image of the first two real components](#pi-9-real-locus-image); [Real Picard image on Enriques surfaces (cited input)](#pi-9-enriques-picard-image); [Unramified classes: the sufficient half of Theorem 0.5](#pi-7-unramified-odd-or-vanishing); `AlgebraicTopologyPartII:AT2.12/gamma-stiefel-whitney`.

**Source:** B19, Proof of Theorem 0.6, p. 107: With an even number of odd-Euler components, the first component can be corrected into the image of cl\_R on Θ, so index 2.

*Suggested home:* `TauCeti/AlgebraicGeometry/RealSurface/PeriodIndex/Enriques`, namespace `TauCeti.RealSurface`.

<a id="pi-9-real-enriques-criterion"></a>

### Real Enriques surfaces with period different from index

`PI.9/real-enriques-criterion` · theorem — planet: **Theorem 0.6: real Enriques surfaces**

Let S be a real Enriques surface. There is α ∈ Br(S) with ind(α) ≠ per(α) iff S(ℝ) is nonorientable and, if exactly one half of S is nonempty, S(ℝ) has an odd number of connected components of odd Euler characteristic.

**Hypotheses and conventions.** S real Enriques; Br(S) ⊂ Br(ℝ(S)).

**Proof.**

1. Period-4 classes have ind = per (PI.9/enriques-period-four); for period 2 combine PI.9/enriques-orientable-case, PI.9/enriques-two-halves, PI.9/enriques-odd-euler and PI.9/enriques-even-euler.

**Acceptance.** Many possible real loci (Degtyarev–Itenberg–Kharlamov) satisfy the condition and many do not.

**Direct prerequisites:** [Orientable or empty real locus](#pi-9-enriques-orientable-case); [Two nonempty halves and a nonorientable real locus](#pi-9-enriques-two-halves); [One nonempty half with an odd number of odd-Euler components](#pi-9-enriques-odd-euler); [One nonempty half with an even number of odd-Euler components](#pi-9-enriques-even-euler); [Period-four classes on real Enriques surfaces](#pi-9-enriques-period-four).

**Source:** B19, Theorem 0.6, p. 65; proof §8.1, pp. 106–107: Characterisation of real Enriques surfaces carrying unramified classes with ind ≠ per.

*Suggested home:* `TauCeti/AlgebraicGeometry/RealSurface/PeriodIndex/Enriques`, namespace `TauCeti.RealSurface`.

<a id="pi-9-real-puiseux-field"></a>

### The field of real Puiseux series

`PI.9/real-puiseux-field` · definition — planet: **Real Puiseux field**

K = ⋃\_{n ≥ 1} ℝ((t^{1/n})), the union along the inclusions ℝ((t^{1/n})) ⊂ ℝ((t^{1/m})) for n | m; equivalently the subfield of Hahn series ℝ((t^ℚ)) whose support is contained in (1/n)ℤ and bounded below for some n. It is a real closed field (IsRealClosed K) in which t is positive and infinitesimal; it is non-archimedean. Semialgebraic topology and cohomology over K are those of AlgebraicTopologyPartII:AT2.6.

**Hypotheses and conventions.** Ordering: the sign of the leading coefficient.

**Construction.**

1. Define K inside Mathlib's HahnSeries ℚ ℝ as the union over n of the image of the Laurent series in t^{1/n} (support in (1/n)ℤ, well ordered and bounded below).
2. Real closedness: K(√−1) = ⋃ ℂ((t^{1/n})) is algebraically closed (Newton–Puiseux), and K is ordered by leading coefficients, so K is real closed (Mathlib's isRealClosed from an algebraically closed quadratic extension, via upstream RealAlgebraicGeometry Layer 1).
3. 0 < t < r for every real r > 0, so K is non-archimedean.

**Uses.** Benoist 2019, Proposition 0.7, p. 65: the base field of the counterexample. PI.9/sextic-k3-degeneration: the K3 surface over K. PI.1/real-closed-norm-bound: the norm bound applies over K.

**API.**

- `RealSurface.RealPuiseux` (data): The subfield of HahnSeries ℚ ℝ of series with support in some (1/n)ℤ.
- `RealSurface.RealPuiseux.instField` (instance): Field structure inherited from HahnSeries ℚ ℝ.
- `RealSurface.RealPuiseux.instLinearOrder` (instance): Order by sign of the leading coefficient.
- `RealSurface.RealPuiseux.isRealClosed` (other): IsRealClosed RealPuiseux.
- `RealSurface.RealPuiseux.t_pos` (simp): 0 < t and t < r for every positive real r.
- `RealSurface.RealPuiseux.ofLaurent` (constructor): ℝ((t^{1/n})) ↪ RealPuiseux, compatible for n | m.

**Unit tests.**

- `RealSurface.RealPuiseux.sqrt_t` (computation): t^{1/2} · t^{1/2} = t in RealPuiseux.
- `RealSurface.RealPuiseux.not_archimedean` (non-example): RealPuiseux is not archimedean: n·t < 1 for every natural n.
- `RealSurface.RealPuiseux.real_embedding` (degenerate): ℝ ⊂ RealPuiseux as the constants, an ordered field embedding.
- `RealSurface.RealPuiseux.isRealClosed_compat` (compatibility): IsRealClosed RealPuiseux, in Mathlib's sense, so PI.0/real-closure-at-ordering applies with (RealPuiseux, id).

**Acceptance.** t^{1/2} ∈ K is a square root of t. The polynomial X² − t has two roots in K.

**Direct prerequisites:** `HahnSeries` (Mathlib); `LaurentSeries` (Mathlib); `IsRealClosed` (Mathlib); `AlgebraicTopologyPartII:AT2.6/semialgebraic-loci`.

**Source:** B19, §0.4, p. 65; §8.2, p. 107: K = ⋃\_n ℝ((t^{1/n})) is a real closed field; Theorem 0.5 makes sense there with semialgebraic cohomology. BCR, Example 15.2.2, p. 392: The field of real Puiseux series and a sextic double cover separating semialgebraic components by signs.

*Suggested home:* `TauCeti/AlgebraicGeometry/RealSurface/PeriodIndex/Puiseux`, namespace `TauCeti.RealSurface`.

<a id="pi-9-sextic-k3-degeneration"></a>

### The sextic double plane and its K3 resolution

`PI.9/sextic-k3-degeneration` · construction

Over ℝ\[\[t]] let 𝒳 = {z² = (w² − u² − v²)u²v² − t w⁶}, a double cover of ℙ² branched along a sextic. Its base change to K = RealPuiseux has rational double points only, and the minimal resolution S of 𝒳\_K is a K3 surface over K (smooth projective geometrically connected with K\_S ≅ O\_S and H¹(O\_S) = 0). S(K) has four semialgebraically connected components, distinguished by the signs of u/w and v/w, each semialgebraically homeomorphic to a sphere, so H¹(S(K), 𝔽₂) = 0 (semialgebraic cohomology).

**Hypotheses and conventions.** Verify the K3 property from the equation (double plane branched along a sextic with ADE singularities), not from an unaccepted K3 roadmap.

**Construction.**

1. The branch sextic f = (w² − u² − v²)u²v² − tw⁶ has only ADE singularities over K (for t ≠ 0 the components separate), so the double cover has rational double points and its minimal resolution has trivial canonical bundle and q = 0.
2. Real points: z² = f requires f ≥ 0; BCR Example 15.2.2 shows the semialgebraic set {f ≥ 0} in the affine chart w = 1 has four bounded components, one in each sign quadrant of (u, v), and the double cover over each is a sphere.
3. Semialgebraic cohomology of a semialgebraic sphere vanishes in degree 1 (AlgebraicTopologyPartII:AT2.6).

**Uses.** Benoist 2019, Proposition 0.7: the K3 surface of the counterexample. PI.9/prescribed-evaluation-class: the component Ξ with u/w, v/w > 0.

**API.**

- `RealSurface.sexticDoublePlane` (data): 𝒳 over ℝ\[\[t]] and its generic fibre over K.
- `RealSurface.sexticK3` (constructor): The minimal resolution S of 𝒳\_K.
- `RealSurface.sexticK3_isK3` (other): S is a K3 surface over K.
- `RealSurface.sexticK3_components` (characterisation): S(K) has exactly four semialgebraically connected components, indexed by signs of u/w and v/w.
- `RealSurface.sexticK3_h1` (simp): H¹(S(K), 𝔽₂) = 0.

**Unit tests.**

- `RealSurface.sexticK3_special_fibre` (degenerate): At t = 0 the double plane is z² = (w² − u² − v²)u²v², reducible branch locus, not a K3 surface.
- `RealSurface.sexticK3_component_count` (computation): The number of semialgebraic components of S(K) is 4.
- `RealSurface.sexticK3_real_fibre_differs` (non-example): The four components are not separated by the sign of any rational function on S (BCR Example 15.2.2), unlike real loci of surfaces over ℝ.
- `RealSurface.sexticK3_cohomology_compat` (compatibility): H¹(S(K), 𝔽₂) is computed in the semialgebraic site of AlgebraicTopologyPartII:AT2.6.

**Acceptance.** At t = 0 the special fibre is the double cover z² = (w² − u² − v²)u²v², whose normalisation is the quadric z² = w² − u² − v².

**Direct prerequisites:** [The field of real Puiseux series](#pi-9-real-puiseux-field); `AlgebraicTopologyPartII:AT2.6/semialgebraic-loci`; Tau Ceti roadmap `TauCetiRoadmap/StableReduction#layer-4-blowups-and-intersection-theory-on-arithmetic-surfaces`; `SchemeAndStackFoundations:SF.5`.

**Source:** B19, Proof of Proposition 0.7, p. 107: The sextic double cover of ℙ²\_{ℝ\[\[t]]}, the K3 resolution over K, and the four semialgebraic sphere components of S(K). BCR, Example 15.2.2, pp. 392–393: The bounded set z² = f(x, y) with four semialgebraically connected components that no polynomial separates by sign.

*Suggested home:* `TauCeti/AlgebraicGeometry/RealSurface/PeriodIndex/Puiseux`, namespace `TauCeti.RealSurface`.

<a id="pi-9-prescribed-evaluation-class"></a>

### A class evaluating to zero on exactly one component

`PI.9/prescribed-evaluation-class` · construction

For the K3 surface S of PI.9/sextic-k3-degeneration and the component Ξ ⊂ S(K) where u/w, v/w > 0, there is α ∈ Br(S)\[2] whose evaluation at x ∈ S(K) vanishes iff x ∈ Ξ.

**Hypotheses and conventions.** Cited: Colliot-Thélène–Parimala's realisation of locally constant evaluation functions by 2-torsion Brauer classes on varieties over real closed fields.

**Construction.**

1. Cited input (Colliot-Thélène–Parimala 1990, Proposition 3.1.2; van Hamel 2000, Theorem 2.8): every locally constant function S(K) → Br(K)\[2] constant on semialgebraic components is the evaluation function of a class of Br(S)\[2].

**Uses.** Benoist 2019, Proposition 0.7: the class of index 4. PI.9/quaternion-sign-contradiction: the class α.

**API.**

- `RealSurface.prescribedClass` (constructor): α ∈ Br(S)\[2] with evaluation vanishing exactly on Ξ.
- `RealSurface.prescribedClass_eval` (characterisation): α\_x = 0 iff x ∈ Ξ.
- `RealSurface.prescribedClass_period` (other): per α = 2.

**Unit tests.**

- `RealSurface.prescribedClass_theta` (computation): Θ(α) = S(K) ∖ Ξ, three components.
- `RealSurface.prescribedClass_not_zero` (non-example): α ≠ 0 since it evaluates nontrivially off Ξ.
- `RealSurface.prescribedClass_trivial_on_xi` (degenerate): Restricted to a point of Ξ, α is trivial.
- `RealSurface.prescribedClass_eval_compat` (compatibility): Evaluation at K-points uses Br(K) ≅ ℤ/2 of PI.0/real-closure-at-ordering.

**Acceptance.** Θ(α) is the union of the three components other than Ξ.

**Direct prerequisites:** [The sextic double plane and its K3 resolution](#pi-9-sextic-k3-degeneration); [Real evaluation and the nonzero evaluation locus](#pi-1-real-evaluation-locus); `SchemeAndStackFoundations:SF.6`.

**Source:** CTP90, Proposition 3.1.2 (not read; cited at Benoist's locator): Real components and étale cohomology: realisation of evaluation functions. B19, Proof of Proposition 0.7, p. 107: There is α ∈ Br(S)\[2] trivial at x ∈ S(K) exactly when x ∈ Ξ.

*Suggested home:* `TauCeti/AlgebraicGeometry/RealSurface/PeriodIndex/Puiseux`, namespace `TauCeti.RealSurface`.

<a id="pi-9-quaternion-sign-contradiction"></a>

### The class is not a quaternion class

`PI.9/quaternion-sign-contradiction` · theorem

The class α of PI.9/prescribed-evaluation-class has index ≠ 2, hence index 4.

**Hypotheses and conventions.** Generic-point form of the source's sign argument (RealSurfacePeriodIndex/E13).

**Proof.**

1. If α = (f, g) with f, g ∈ K(S)ˣ, then at points x outside zeros and poles, x ∈ Ξ iff f(x) > 0 or g(x) > 0.
2. Descend f, g to ℝ((t^{1/n})) and multiply by suitable powers of the positive t^{1/n} (preserving signs) so that they specialise to nonzero rational functions f₀, g₀ on the special fibre, viewed on the quadric Q = {z² = w² − u² − v²}.
3. On the divisor D = {u = 0} ⊂ Q, choose general real points on the arc v/w < 0, avoiding zeros and poles of the unit parts of f₀, g₀ after factoring the powers of u; the sign pattern there forces even orders of f₀, g₀ along D.
4. At general points of the arc v/w > 0, the signs of f₀, g₀ are then constant across D, contradicting the required jump between u/w > 0 (in Ξ) and u/w < 0 (not in Ξ).
5. ind(α) divides 4 by PI.1/real-closed-norm-bound (de Jong over K(√−1)), and is not 2, so it is 4.

**Acceptance.** The index of α is 4 while its period is 2.

**Direct prerequisites:** [A class evaluating to zero on exactly one component](#pi-9-prescribed-evaluation-class); [Norm bound over a real closed field](#pi-1-real-closed-norm-bound); [The field of real Puiseux series](#pi-9-real-puiseux-field).

**Source:** B19, Proof of Proposition 0.7, pp. 107–108: Writing α = (f, g), specialising f, g to the quadric Q and comparing signs near u = 0 gives a contradiction; the fixed point used must be replaced by general points avoiding zeros and poles on both arcs.

*Suggested home:* `TauCeti/AlgebraicGeometry/RealSurface/PeriodIndex/Puiseux`, namespace `TauCeti.RealSurface`.

<a id="pi-9-puiseux-counterexample"></a>

### Failure of the criterion over a non-archimedean real closed field

`PI.9/puiseux-counterexample` · theorem — planet: **Proposition 0.7: Puiseux counterexample**

There are a K3 surface S over K = ⋃\_n ℝ((t^{1/n})) with H¹(S(K), 𝔽₂) = 0 (semialgebraic cohomology) and α ∈ Br(S)\[2] with ind(α) = 4. Since every Kummer lift has zero first real component (H¹(S(K)) = 0), the analogue of Theorem 0.5 over K fails.

**Hypotheses and conventions.** K the real Puiseux field.

**Proof.**

1. PI.9/sextic-k3-degeneration, PI.9/prescribed-evaluation-class and PI.9/quaternion-sign-contradiction.

**Acceptance.** Over ℝ the same criterion holds (PI.7/unramified-odd-or-vanishing, PI.8/unramified-index-doubling).

**Direct prerequisites:** [The sextic double plane and its K3 resolution](#pi-9-sextic-k3-degeneration); [A class evaluating to zero on exactly one component](#pi-9-prescribed-evaluation-class); [The class is not a quaternion class](#pi-9-quaternion-sign-contradiction).

**Source:** B19, Proposition 0.7, p. 65; proof §8.2, pp. 107–108: A K3 surface over the real Puiseux field with H¹(S(K), ℤ/2) = 0 and a class of index 4 in Br(S)\[2].

*Suggested home:* `TauCeti/AlgebraicGeometry/RealSurface/PeriodIndex/Puiseux`, namespace `TauCeti.RealSurface`.


## Dependencies on other roadmaps

Each request names a supplier stage and what this roadmap needs from it; node-level imports are listed in each target's prerequisites.

- `DeformationAndDerivedPatchingAlgebra:R03.3`: R03.3: Serre's normality criterion (R1 + S2) for Noetherian rings, used with R03.3/ci-cohen-macaulay for the hypersurface z² = rs. *Needed by:* [PI.3/branch-cover-finite-model](#pi-3-branch-cover-finite-model).
- `EnriquesSurfacesAndIntegralNonexistence:E0`: E0: in characteristic 0, a smooth projective geometrically connected surface is Enriques iff q = p\_g = 0 and K has order 2; H³(S(ℂ), ℤ)\_tors ≅ ℤ/2 for complex Enriques surfaces. *Needed by:* [PI.9/enriques-complex-brauer](#pi-9-enriques-complex-brauer), [PI.9/real-enriques-halves](#pi-9-real-enriques-halves).
- `MotivesAndAlgebraicCycles:MC.2`: MC.2 (source route of PAPER-BENOIST-19): the complex, Krasnov and Borel–Haefliger cycle class maps cl\_ℂ, cl, cl\_R with cl\_R(M) = \[cl(M)]₁ for line bundles; Lemma 2.1 of Benoist 2019 (cl\_R(υ(e)) = \[e]₁); the complex and real topological Brauer sequences 0 → H²(ℤ(1))/⟨n, Pic⟩ → Br\[n] → H³(ℤ(1))\[n] → 0; torsion-freeness of the cokernel of cl : Pic(X) → H²\_G(X(ℂ), ℤ(1)) (Benoist–Wittenberg Proposition 2.9); Kahn's cl\_R(K\_X) = w₁(TX(ℝ)). *Needed by:* [PI.2/complex-obstruction-vanishes](#pi-2-complex-obstruction-vanishes), [PI.2/dense-splitting-hypersurfaces](#pi-2-dense-splitting-hypersurfaces), [PI.4/brauer-cover-hypotheses](#pi-4-brauer-cover-hypotheses), [PI.4/curve-adjustment](#pi-4-curve-adjustment), [PI.4/obstruction-cup-omega](#pi-4-obstruction-cup-omega), [PI.4/primitive-picard-trace-correction](#pi-4-primitive-picard-trace-correction), [PI.4/uniform-first-component](#pi-4-uniform-first-component), [PI.4/uniform-obstruction-vanishing](#pi-4-uniform-obstruction-vanishing), [PI.6/branch-conditions-blowup](#pi-6-branch-conditions-blowup), [PI.6/branch-locus-conditions](#pi-6-branch-locus-conditions), [PI.6/brocker-sign-input](#pi-6-brocker-sign-input), [PI.6/degree-two-splitting-uniform](#pi-6-degree-two-splitting-uniform), [PI.6/nash-approximation-input](#pi-6-nash-approximation-input), [PI.7/period-induction-step](#pi-7-period-induction-step), [PI.8/circle-monodromy-correction](#pi-8-circle-monodromy-correction), [PI.8/correcting-line-bundle](#pi-8-correcting-line-bundle), [PI.8/even-degree-splitting-obstruction](#pi-8-even-degree-splitting-obstruction), [PI.8/trace-quotient-lift-surface](#pi-8-trace-quotient-lift-surface), [PI.8/unramified-index-doubling](#pi-8-unramified-index-doubling), [PI.9/enriques-complex-brauer](#pi-9-enriques-complex-brauer), [PI.9/enriques-half-detector](#pi-9-enriques-half-detector), [PI.9/enriques-picard-image](#pi-9-enriques-picard-image).
- `MotivesAndAlgebraicCycles:MC.7`: MC.7: the real Lefschetz (1,1) theorem (Benoist–Wittenberg Proposition 2.8): for smooth projective X over ℝ, an integral class of H²\_G(X(ℂ), ℤ(1)) whose image is of type (1,1) is cl of a real line bundle; complex integral Lefschetz (1,1) is the existing entry H1 of MC.7/tate-and-hodge-known-cases. *Needed by:* [PI.6/degree-two-splitting-uniform](#pi-6-degree-two-splitting-uniform), [PI.9/enriques-picard-image](#pi-9-enriques-picard-image).
- `PurityForFlatCohomology:PF.6`: PF.6: for a finite extension of discrete valuation rings with ramification index e and residue extension κ′/κ (residue characteristic prime to the order of the class), the residue of the restricted class is e times the restriction of the residue: ∂′(α\_L) = e·res\_{κ′/κ}(∂α) (Colliot-Thélène 1995, Proposition 3.3.1). *Needed by:* [PI.4/pullback-unramified](#pi-4-pullback-unramified).
- `SchemeAndStackFoundations:SF.0`: SchemeAndStackFoundations §0.1 relative Spec of a quasi-coherent algebra (the finite model Spec\_S(O\_S ⊕ M⁻¹)). Import only. *Needed by:* [PI.3/branch-cover-finite-model](#pi-3-branch-cover-finite-model).
- `SchemeAndStackFoundations:SF.1`: SchemeAndStackFoundations: a proper birational morphism from a reduced scheme to a normal integral Noetherian scheme has h\_\*O = O and geometrically connected fibres (Zariski's main theorem / Stein factorisation, §4.9). Import only. *Needed by:* [PI.3/incidence-local-resolution](#pi-3-incidence-local-resolution).
- `SchemeAndStackFoundations:SF.2`: SchemeAndStackFoundations §2.2 (Čech and Leray), §2.6 (quasi-coherent cohomology, Serre vanishing), §2.16 (Tsen's theorem), §2.20 (Serre duality), §2.22 (Brauer groups of schemes: brauer\_regular\_injectivity, brauer\_kummer\_sequence, brauer\_henselian\_local), §2.8 (Cousin/Gersten complexes: for a smooth surface over a field of characteristic 0 and a 2-torsion class whose ramification divisor is smooth, the residue along a component is unramified on it), and connecting maps commuting with cup products. Import only; the Gersten statement is the only target not visibly in the upstream README. *Needed by:* [PI.0/witt-real-curve](#pi-0-witt-real-curve), [PI.1/unramified-locus](#pi-1-unramified-locus), [PI.2/complex-hypersurface-family](#pi-2-complex-hypersurface-family), [PI.3/incidence-local-resolution](#pi-3-incidence-local-resolution), [PI.4/pullback-unramified](#pi-4-pullback-unramified), [PI.5/auxiliary-hypotheses](#pi-5-auxiliary-hypotheses), [PI.5/blowup-auxiliary-bundle](#pi-5-blowup-auxiliary-bundle), [PI.5/curve-bearing-parameters](#pi-5-curve-bearing-parameters), [PI.5/curve-lift](#pi-5-curve-lift), [PI.5/normal-bundle-bound](#pi-5-normal-bundle-bound), [PI.5/twisted-curve-vanishing](#pi-5-twisted-curve-vanishing), [PI.7/real-closure-pointwise-triviality](#pi-7-real-closure-pointwise-triviality), [PI.8/alternating-double-cover](#pi-8-alternating-double-cover), [PI.8/finite-flat-open](#pi-8-finite-flat-open).
- `SchemeAndStackFoundations:SF.4`: SchemeAndStackFoundations §4.11 modifications and strict transforms, §4.13 Bertini and regularity, §4.17 SNC divisors. Import only. *Needed by:* [PI.2/complex-hypersurface-family](#pi-2-complex-hypersurface-family), [PI.3/branch-cover-finite-model](#pi-3-branch-cover-finite-model).
- `SchemeAndStackFoundations:SF.5`: SchemeAndStackFoundations §5.4 projective bundles and §5.10 adjunction, Riemann–Roch and intersection numbers on smooth projective surfaces, over ℝ and ℂ. Import only. *Needed by:* [PI.1/point-removal-extension](#pi-1-point-removal-extension), [PI.2/complex-hypersurface-family](#pi-2-complex-hypersurface-family), [PI.5/auxiliary-hypotheses](#pi-5-auxiliary-hypotheses), [PI.5/blowup-auxiliary-bundle](#pi-5-blowup-auxiliary-bundle), [PI.5/normal-bundle-bound](#pi-5-normal-bundle-bound), [PI.9/sextic-k3-degeneration](#pi-9-sextic-k3-degeneration).
- `SchemeAndStackFoundations:SF.6`: The finite-coefficient comparison H^i\_ét(X, M) ≅ H^i\_G(X(ℂ), M) for real varieties X and torsion G-modules M (Scheiderer Corollary 15.3.1), compatible with Kummer boundaries and cup products, giving the real Kummer sequences 0 → Pic(X)/n → H²\_G(X(ℂ), ℤ/n(1)) → Br(X)\[n] → 0 and 0 → ℝˣ/ℝˣ² → H¹\_G(X(ℂ), 𝔽₂) → Pic(X)\[2] → 0 (X proper geometrically connected), and the complex Kummer sequence 0 → Pic(X)/n → H²(X(ℂ), ℤ/n) → Br(X)\[n] → 0. *Needed by:* [PI.1/real-evaluation-locus](#pi-1-real-evaluation-locus), [PI.2/compatible-complex-lift](#pi-2-compatible-complex-lift), [PI.6/kummer-lift-transport](#pi-6-kummer-lift-transport), [PI.8/trace-quotient-lift-surface](#pi-8-trace-quotient-lift-surface), [PI.9/enriques-half-detector](#pi-9-enriques-half-detector), [PI.9/prescribed-evaluation-class](#pi-9-prescribed-evaluation-class), [PI.9/real-enriques-halves](#pi-9-real-enriques-halves).
- `tauceti:TauCetiRoadmap/AlgebraicTopology#stage-6-cohomology-products-and-manifold-duality`: Existing Tau Ceti roadmap layer; import only, nothing new is requested. *Needed by:* [PI.1/point-removal-extension](#pi-1-point-removal-extension), [PI.2/compatible-complex-lift](#pi-2-compatible-complex-lift), [PI.2/complex-obstruction-vanishes](#pi-2-complex-obstruction-vanishes), [PI.3/complex-pushforward-iso](#pi-3-complex-pushforward-iso), [PI.6/branch-locus-conditions](#pi-6-branch-locus-conditions), [PI.8/quotient-component-algebraicity](#pi-8-quotient-component-algebraicity), [PI.9/real-locus-image](#pi-9-real-locus-image).
- `tauceti:TauCetiRoadmap/QuadraticFormInvariants#layer-0-square-classes-diagonal-calculus-and-chain-equivalence`: Existing Tau Ceti roadmap layer; import only, nothing new is requested. *Needed by:* [PI.0/signature-at-ordering](#pi-0-signature-at-ordering).
- `tauceti:TauCetiRoadmap/QuadraticFormInvariants#layer-1-hyperbolic-planes-and-witt-theory`: Existing Tau Ceti roadmap layer; import only, nothing new is requested. *Needed by:* [PI.0/signature-at-ordering](#pi-0-signature-at-ordering), [PI.0/springer-complete-dvr](#pi-0-springer-complete-dvr).
- `tauceti:TauCetiRoadmap/QuadraticFormInvariants#layer-2-quaternion-algebras-and-the-four-fold-splitting-criterion`: Existing Tau Ceti roadmap layer; import only, nothing new is requested. *Needed by:* [PI.0/witt-real-curve](#pi-0-witt-real-curve).
- `tauceti:TauCetiRoadmap/QuadraticFormInvariants#layer-4-the-witt-ring-and-the-fundamental-ideal`: Existing Tau Ceti roadmap layer; import only, nothing new is requested. *Needed by:* [PI.0/elman-lam-c2-bound](#pi-0-elman-lam-c2-bound), [PI.0/signature-at-ordering](#pi-0-signature-at-ordering).
- `tauceti:TauCetiRoadmap/QuadraticFormInvariants#layer-5-the-brauer-valued-invariants`: Existing Tau Ceti roadmap layer; import only, nothing new is requested. *Needed by:* [PI.0/albert-isotropy](#pi-0-albert-isotropy), [PI.0/pfister-brauer-criterion](#pi-0-pfister-brauer-criterion), [PI.0/witt-real-curve](#pi-0-witt-real-curve).
- `tauceti:TauCetiRoadmap/RepresentationTheory/SemisimpleAlgebras#layer-6-the-brauer-group-and-splitting-fields`: Existing Tau Ceti roadmap layer; import only, nothing new is requested. *Needed by:* [PI.0/brauer-nonvanishing-locus](#pi-0-brauer-nonvanishing-locus), [PI.0/ci-brauer-vanishing](#pi-0-ci-brauer-vanishing).
- `tauceti:TauCetiRoadmap/StableReduction#layer-4-blowups-and-intersection-theory-on-arithmetic-surfaces`: Existing Tau Ceti roadmap layer; import only, nothing new is requested. *Needed by:* [PI.3/incidence-double-cover](#pi-3-incidence-double-cover), [PI.5/blowup-auxiliary-bundle](#pi-5-blowup-auxiliary-bundle), [PI.6/branch-conditions-blowup](#pi-6-branch-conditions-blowup), [PI.9/sextic-k3-degeneration](#pi-9-sextic-k3-degeneration).

Upstream roadmap imported outside the atlas stages: `tauceti:TauCetiRoadmap/RealAlgebraicGeometry`, Layer 1: univariate real algebra, Ordered real-closure existence: exists\_realClosure: every ordered field K has an algebraic ordered real closure R with a strictly monotone embedding K → R.


## Gaps

- **G1. Propositions 4.4, 4.5 and 6.6 for nonconstant real evaluation on Ψ.** The printed proofs need \[α̃]₀ = 1 on Ψ. When Ψ ⊃ Θ contains components where α evaluates to 0, the Picard correction would have to have real class 1\_Θ·\[e]₁ on Ψ, which need not be algebraic. The main theorems use only the uniform case (constant \[α̃]₀ = t on Ψ), proved in PI.4/uniform-obstruction-vanishing, PI.4/uniform-pushforward-adjustment and PI.6/degree-two-splitting-uniform. The general statements remain open. *Needed by:* [PI.4/obstruction-vanishing-general](#pi-4-obstruction-vanishing-general), [PI.4/pushforward-adjustment-general](#pi-4-pushforward-adjustment-general), [PI.6/degree-two-splitting-general](#pi-6-degree-two-splitting-general).
- **G2. De Jong's reduction to unramified classes and the Lefschetz principle.** PI.1/de-jong-period-index rests on two cited inputs that no layer of the atlas plans: the transfer of the index of a class over k(S) along an extension of algebraically closed base fields of characteristic 0 (Lefschetz principle with index base-change invariance), and de Jong 2004 §7, which reduces a ramified class on a complex surface to an unramified one on another model without changing period or index. The unramified complex case is planned in PI.2. Both inputs are needed for every theorem that invokes de Jong (odd periods, the norm bound, Enriques period four, the Puiseux example). *Needed by:* [PI.1/de-jong-period-index](#pi-1-de-jong-period-index).
- **G3. Relative pair transport in the final deformation step.** PI.6/kummer-lift-transport needs either an equivariant stratified trivialisation of the pair (𝒯, p⁻¹R) over a small real parameter neighbourhood, with invariant Whitney stratification containing the fixed exceptional curves over Sing R and the moving ℙ¹ fibres over R ∩ D and invariant control data (the hypotheses of AlgebraicTopologyPartII:AT2.16/stratified-pair-transport), or a direct ambient cohomological transport of the restriction to T\_U. Neither has been verified for this family (extraction gap G13). *Needed by:* [PI.6/kummer-lift-transport](#pi-6-kummer-lift-transport), [PI.6/degree-two-splitting-uniform](#pi-6-degree-two-splitting-uniform).
- **G4. Signed homological comparison of the double-cover chase (inherited).** PI.4/uniform-obstruction-vanishing uses AlgebraicTopologyPartII:AT2.16/double-cover-diagram for Benoist's (4.3)–(4.5), which cites Jannsen 2000, lemma p. 268; that packet records the exact signed contract as its own gap (extraction gap G10). The consumer inherits it; no further input is needed here. *Needed by:* [PI.4/uniform-obstruction-vanishing](#pi-4-uniform-obstruction-vanishing).
- **G5. Cited real-algebraic inputs not reconstructed.** Three cited theorems are used as stated, with no atlas owner and no reconstructed proof: Bröcker 1980 Satz a), b) (PI.6/brocker-sign-input), Mangolte–van Hamel 1998 Theorem 4.4 on the real Picard image of Enriques surfaces (PI.9/enriques-picard-image), and Colliot-Thélène–Parimala 1990 Proposition 3.1.2 on realising evaluation functions (PI.9/prescribed-evaluation-class). Their sources are not freely available; a formaliser must acquire and plan them. *Needed by:* [PI.6/brocker-sign-input](#pi-6-brocker-sign-input), [PI.9/enriques-picard-image](#pi-9-enriques-picard-image), [PI.9/prescribed-evaluation-class](#pi-9-prescribed-evaluation-class).
- **G6. Classical quadratic-form inputs cited through secondary sources.** Albert's theorem on biquaternion algebras (PI.0/albert-isotropy, cited from Lam's book, not read), the Elman–Lam analysis of fields with u(F(√−1)) ≤ 4 (PI.0/elman-lam-c2-bound, stated by Becher 2005 §3 for u(F(√−1)) = 4 with reference to Elman–Lam 1973, not read; the case u(F(√−1)) < 4 is taken from Elman–Lam without a checked locator), and the anticanonical model of a degree-four del Pezzo surface as an intersection of two quadrics (PI.7/del-pezzo-point, cited, not read) are used as stated. The proof outlines name their mechanisms; detailed proofs need the original sources. *Needed by:* [PI.0/albert-isotropy](#pi-0-albert-isotropy), [PI.0/elman-lam-c2-bound](#pi-0-elman-lam-c2-bound), [PI.7/del-pezzo-point](#pi-7-del-pezzo-point).


## Mistakes in the source

Each entry states what Benoist 2019 (published version) has at the locator and the corrected statement the targets use. All were first recorded by the atlas extraction PAPER-BENOIST-19 and rechecked against the published text in this design.

- **E1** (error, §3.1, p. 76 (published version)). The surface T = {rv² = sw²} is called a finite double cover of S ramified over Δ. *Correction:* The incidence model is proper and generically of degree 2 but has ℙ¹ fibres over R ∩ D; it is finite flat only over S₀. The finite flat model is Spec\_S(O\_S ⊕ L⁻¹(−R)) with multiplication by rs (PI.3/branch-cover-finite-model). *Reason:* Over a crossing x of R and D both r and s vanish, so the fibre equation rv² = sw² is identically zero and the fibre is all of ℙ¹. *Affects:* a stated result.
- **E2** (gap, Lemma 1.4, p. 70 (published version)). The proof uses that the reduction of p\*β modulo n is p\*p\*α̃ for an integral β lifting p\*α. *Correction:* Choose β with β mod n = p\*α̃ before Lemma 1.4; Lemma 1.3 kills the Bockstein of p\*α̃, so such β exists (PI.2/compatible-complex-lift). *Reason:* An integral lift of p\*α in (1.2) is determined only up to n·H² + cl(Pic), so its reduction need not be p\*α̃. *Affects:* the proof.
- **E3** (gap, Proposition 4.4, p. 84, after (4.8) (published version)). The computation concludes (\[ζ]₁)|\_Ψ = (\[e]₁)|\_Ψ from (\[α̃]₁)|\_Ψ = 0. *Correction:* The diagonal-arrow formula gives \[ζ]₁ = \[α̃]₀·\[e]₁ on Ψ; with \[α̃]₀ constant equal to t the Picard correction must be multiplied by t (PI.4/uniform-first-component). The nonconstant case is not established (gap G1). *Reason:* Ψ ⊃ Θ may contain components where α evaluates to 0, where \[α̃]₀ = 0; this case occurs in the induction when 4 | n. *Affects:* a stated result.
- **E4** (gap, Proposition 4.5, pp. 84–85 (published version)). The proof writes β|\_{T\_U} = p\*α̃ + 2ε + cl(ϕ), adding the mod-2 class p\*α̃ to integral classes. *Correction:* Use the integral class b = p\*η − ψ(ζ) from the trace quotient and Picard primitivity (PI.4/primitive-picard-trace-correction, PI.4/uniform-pushforward-adjustment). *Reason:* α̃ lies in H²\_G(U(ℂ), 𝔽₂) while β lives in integral equivariant cohomology; the displayed sum is not typed. *Affects:* a stated result.
- **E5** (gap, Proposition 4.5, p. 85, application of Assumption 4.1 (ii) (published version)). δ − cl(θ₂) is fed to Proposition 3.3 after its first component vanishes on Ψ. *Correction:* First subtract cl(ν) for a combination ν of curves avoiding Ψ given by Assumption 4.1 (ii), then apply Proposition 3.3; add 2ν to θ (PI.4/curve-adjustment). *Reason:* Proposition 3.3 needs \[ξ]₁ ∈ I on all of S(ℝ), not only vanishing on Ψ. *Affects:* the proof.
- **E6** (misprint, Lemma 7.3, p. 98, and (7.13), p. 103 (published version)). p\*α̃ is the reduction of p\*η + ψ(ζ). *Correction:* p\*η − ψ(ζ), consistently with the map (1, −φ) in (7.2); (7.14) is unchanged since Tr∘ψ = 0. *Reason:* α̃ = η mod n − φ(ζ) and ψ mod n = p\*φ give p\*α̃ = (p\*η − ψ(ζ)) mod n. *Affects:* nothing.
- **E7** (misprint, Proof of Lemma 7.3, p. 99 (published version)). Equality of the two maps out of Q is deduced from injectivity of Q → j\_\*j\*Q. *Correction:* Use injectivity of the target p\_\*(ℤ/n) → j\_\*j\*p\_\*(ℤ/n). *Reason:* Injectivity of the source does not separate two maps out of it; injectivity of the target does. *Affects:* nothing.
- **E8** (misprint, Proposition 6.7, p. 95 (published version)). The statement imposes a lift of (n/2)α for every n. *Correction:* State the odd case separately and impose the half-period lift only for even n; the restricted period is exactly n/2 by corestriction (PI.7/arbitrary-period-sufficiency, PI.7/period-induction-step). *Reason:* (n/2)α is undefined for odd n. *Affects:* nothing.
- **E9** (gap, Proof of Theorem 0.12, p. 95 (published version)). K is written as the union of all finite extensions of a finitely generated K₀ carrying α. *Correction:* Enlarge K₀ by a transcendence basis of K/ℝ first, so that K/K₀ is algebraic. *Reason:* Otherwise K is not a union of finite extensions of K₀. *Affects:* the proof.
- **E10** (gap, Proof of Theorem 0.12, lower bound, p. 96 (published version)). Parameters z₁, z₂ are chosen with neither proportional to w² + 1 in m/m², and y\_j = (1 + z\_j)² + (w + z\_j)² are claimed to be local parameters. *Correction:* Replace w by w′ = (w² − 1)/(2w), so that w′² + 1 ∈ m²; then for any regular parameters z\_j the y\_j are regular parameters (PI.7/sharp-anisotropic-form). *Reason:* dy\_j = a + 2(1 + i)dz\_j with a the differential of w² + 1; separate non-proportionality conditions do not make the 2×2 determinant nonzero. *Affects:* the proof.
- **E11** (misprint, (2.1), p. 72 (published version)). The source of the Gysin map has coefficient M(−k). *Correction:* M(d′ − d), as in Benoist–Wittenberg (1.22). *Reason:* The twist depends on the codimension, not on the degree k. *Affects:* nothing.
- **E12** (misprint, (5.7), p. 88 (published version)). The normal-sequence boundary in the factorisation of φ\_λ lands in H⁰(C, N\_{C/T}). *Correction:* H¹(C, N\_{C/T}). *Reason:* It is the boundary of 0 → N\_{C/T} → N\_{C/X} → N\_{T/X}|\_C → 0 from H⁰ of the last term (Benoist 2018, Proposition 2.1). *Affects:* nothing.
- **E13** (gap, Proof of Proposition 0.7, p. 108 (published version)). Signs of f₀, g₀ are compared at the fixed point \[0 : −1 : 1 : 0] and near general points avoiding poles only. *Correction:* On both arcs v/w < 0 and v/w > 0 of D = {u = 0} choose general real points avoiding zeros and poles of the unit parts after factoring the D-orders (PI.9/quaternion-sign-contradiction). *Reason:* The fixed point may lie on zeros or poles of f₀, g₀; avoiding poles alone does not make the signs locally constant. *Affects:* the proof.
- **E14** (misprint, Proof of Proposition 0.7, p. 107 (published version)). α = (f, g) is written in Br(R(S)). *Correction:* Br(K(S)) for the real Puiseux field K. *Reason:* S is defined over K, not ℝ. *Affects:* nothing.
- **E15** (misprint, Proof of Theorem 0.6, p. 107 (published version)). The class δ with \[δ]₀ = 0 is called unique. *Correction:* Unique nonzero class, as on p. 106. *Reason:* δ = 0 always satisfies \[δ]₀ = 0. *Affects:* nothing.
- **E17** (misprint, Proof of Theorem 1.5, p. 71 (published version)). Voisin's Proposition 9 is applied with n = dl. *Correction:* Use a separate letter for Voisin's degree, m = dn for surfaces in |dnH|. *Reason:* n is already the period of α. *Affects:* nothing.
- **E18** (misprint, §3.1, p. 77 (published version)). The fixed singular points of T are the points over Sing R where v vanishes. *Correction:* where w vanishes (and v ≠ 0). *Reason:* Over Sing R the equation rv² = sw² with s a unit and r vanishing forces w = 0 at points with r = 0; v and w do not vanish together. *Affects:* nothing.
- **E20** (gap, Proposition 4.2, p. 80 (published version)). After curves over R, the remaining curves are treated as exceptional divisors of the blow-up T → T̄. *Correction:* Treat both the exceptional ℙ¹'s over Sing R and the ℙ¹ fibres over R ∩ D of the incidence model, by the same Gersten and Witt argument (PI.4/pullback-unramified). *Reason:* The ℙ¹ fibres over R ∩ D lie in T̄ already and are not exceptional for T → T̄. *Affects:* the proof.
- **E21** (gap, Proposition 6.6, pp. 94–95 (published version)). The proposition follows by replacing T with T\_x. *Correction:* Normalise the integral lift so that its reduction on T\_U is p\*α̃ and transport the pair (T, p⁻¹R) so that this persists on T\_x; only then does algebraicity modulo 2 give splitting (PI.6/kummer-lift-transport; gap G3). *Reason:* An Ehresmann trivialisation that does not preserve p⁻¹R need not identify the Kummer data on T\_U. *Affects:* the proof.
- **E22** (error, Lemma 6.4, p. 92 (published version)). h₁ is chosen vanishing to order one along R and H, and t = −h₁h₂ru. *Correction:* Choose h₁ with real divisor H − R (simple pole along R, simple zero along H); then t = −h₁h₂ru has real zero locus H(ℝ) (PI.6/signed-branch-section). *Reason:* With a zero of h₁ along R, t vanishes to order 2 along R, so its real zero locus contains R(ℝ) and is not ι′(𝒮). *Affects:* the proof.
- **E23** (misprint, Proof of Proposition 4.5, p. 85 (published version)). \[p\_\*ε]₁ = 0 in H¹(S(ℝ)). *Correction:* \[p\_\*ε]₁ ∈ H¹(U(ℝ)) vanishes on Ψ. *Reason:* ε lives over T\_U; only its restriction to Ψ, which has no real preimage, vanishes. *Affects:* nothing.
- **E24** (misprint, Proof of Lemma 6.5, p. 92 (published version)). p(T(ℝ)) is said to be disjoint from Θ. *Correction:* Disjoint from Ψ = S(ℝ) ∖ Ξ, the set to avoid in Assumption 4.1. *Reason:* Lemma 6.5 concerns Assumption 4.1 with Ψ = S(ℝ) ∖ Ξ; Θ does not occur in its statement. *Affects:* nothing.


## Routing of the paper's items

The paper extraction routes 100 items to this roadmap and ten real-function-field items to the proposed QuadraticFormsRealFunctionFields; this table records where each is realised.

| Item | Realised by | Note |
|---|---|---|
| `14` | `PI.0/elman-lam-u` | Routed to the proposed QuadraticFormsRealFunctionFields (QuadraticFormInvariantsPartII restructure); owned here in PI.0 until that roadmap exists. |
| `15` | `PI.1/real-evaluation-locus` |  |
| `16` | `PI.1/de-jong-period-index` |  |
| `17` | — | Lieblich's finite-field bound ind | per² is background in §0.1 of the source; no target needs it, so it is not planned (it is recorded in the reader's introduction). |
| `18` | `PI.7/no-real-points-period-index` |  |
| `19` | `PI.7/zero-evaluation-period-index` |  |
| `20` | `PI.7/unramified-odd-or-vanishing` |  |
| `21` | `PI.7/unramified-odd-or-vanishing` |  |
| `22` | `PI.8/unramified-index-doubling` |  |
| `23` | `PI.9/real-enriques-criterion` |  |
| `24` | `PI.9/puiseux-counterexample` |  |
| `27` | `PI.7/rank-five-isotropy` |  |
| `28` | `PI.7/u-invariant-upper-bound` |  |
| `29` | `PI.7/u-invariant-equals-four` |  |
| `30` | `PI.7/del-pezzo-point` |  |
| `31` | `PI.2/complex-hypersurface-family` |  |
| `32` | `PI.2/dense-splitting-hypersurfaces` |  |
| `35` | `PI.2/complex-obstruction-vanishes` |  |
| `36` | `PI.2/compatible-complex-lift` |  |
| `39` | `PI.2/complex-unramified-period-index` |  |
| `57` | `PI.3/incidence-double-cover` |  |
| `58` | `PI.3/double-cover-strata` |  |
| `60` | `PI.3/complex-pushforward-iso` |  |
| `61` | `PI.3/complex-pushforward-iso` |  |
| `62` | `PI.3/equivariant-pushforward-image` |  |
| `63` | `PI.4/brauer-cover-hypotheses` |  |
| `64` | `PI.4/pullback-unramified` |  |
| `65` | `PI.4/obstruction-cup-omega` |  |
| `66` | `PI.4/obstruction-vanishing-general` | General statement retained with gap G1; the induction uses PI.4/uniform-obstruction-vanishing. |
| `67` | `PI.4/pushforward-adjustment-general` | General statement retained with gap G1; the induction uses PI.4/uniform-pushforward-adjustment. |
| `68` | `PI.5/curve-bearing-parameters` |  |
| `69` | `PI.5/curve-lift` |  |
| `71` | `PI.5/auxiliary-hypotheses` |  |
| `72` | `PI.5/normal-bundle-bound` |  |
| `73` | `PI.5/twisted-curve-vanishing` |  |
| `74` | `PI.5/nl-codimension-bound` |  |
| `75` | `PI.5/blowup-auxiliary-bundle` |  |
| `76` | `PI.5/blowup-auxiliary-bundle` |  |
| `77` | `PI.5/blowup-auxiliary-bundle` |  |
| `78` | `PI.5/blowup-auxiliary-bundle` |  |
| `79` | `PI.6/squared-line-positivity` |  |
| `80` | `PI.6/branch-locus-conditions` |  |
| `81` | `PI.6/branch-conditions-stable` |  |
| `82` | `PI.6/branch-conditions-blowup` |  |
| `83` | `PI.6/signed-branch-section` |  |
| `84` | `PI.6/topology-to-cover-hypotheses` |  |
| `85` | `PI.6/degree-two-splitting-general` | General statement retained with gap G1; the induction uses PI.6/degree-two-splitting-uniform. |
| `86` | `PI.6/vanishing-variation` |  |
| `92` | `PI.7/arbitrary-period-sufficiency` |  |
| `93` | `PI.7/period-induction-step` |  |
| `94` | `PI.0/pfister-brauer-criterion` | Routed to the proposed QuadraticFormsRealFunctionFields; owned here in PI.0 (sufficiency direction, the only one Benoist uses). |
| `95` | `PI.0/harrison-compact`, `PI.7/u-invariant-upper-bound` | Routed to the proposed QuadraticFormsRealFunctionFields; the compactness is PI.0, the descent step is in the proof of Theorem 0.12. |
| `96` | `PI.7/real-closure-pointwise-triviality` |  |
| `97` | `PI.7/sharp-anisotropic-form` |  |
| `98` | `PI.8/even-degree-splitting-obstruction` |  |
| `101` | `PI.8/alternating-double-cover` |  |
| `102` | `PI.8/finite-flat-open` |  |
| `103` | `PI.8/trace-quotient-lift-surface` |  |
| `104` | `PI.8/corrected-pullback-lift` |  |
| `105` | `PI.8/quotient-component-algebraicity` |  |
| `107` | `PI.8/circle-double-cover` |  |
| `108` | `PI.8/circle-monodromy-correction` |  |
| `109` | `PI.8/correcting-line-bundle` |  |
| `110` | `PI.8/even-degree-splitting-obstruction`, `PI.8/unramified-index-doubling` |  |
| `112` | `PI.9/real-locus-image` |  |
| `114` | `PI.9/real-enriques-halves` |  |
| `115` | `PI.9/enriques-complex-brauer` |  |
| `116` | `PI.9/enriques-period-four` |  |
| `117` | `PI.9/enriques-picard-image` |  |
| `118` | `PI.9/enriques-half-detector` |  |
| `120` | `PI.9/enriques-orientable-case` |  |
| `121` | `PI.9/enriques-two-halves` |  |
| `122` | `PI.9/enriques-odd-euler` |  |
| `123` | `PI.9/enriques-even-euler` |  |
| `124` | `PI.9/real-puiseux-field` |  |
| `125` | `PI.9/sextic-k3-degeneration` |  |
| `126` | `PI.9/sextic-k3-degeneration` |  |
| `127` | `PI.9/prescribed-evaluation-class` |  |
| `128` | `PI.9/quaternion-sign-contradiction` |  |
| `139` | `PI.5/curve-lift` |  |
| `140` | `PI.5/twisted-curve-vanishing` |  |
| `141` | `PI.0/witt-real-curve` | Routed to the proposed QuadraticFormsRealFunctionFields; owned here in PI.0. |
| `142` | `PI.0/springer-complete-dvr` | Routed to the proposed QuadraticFormsRealFunctionFields; owned here in PI.0. |
| `143` | `PI.0/amer-brumer` | Routed to the proposed QuadraticFormsRealFunctionFields; owned here in PI.0. |
| `150` | `PI.1/point-removal-extension` |  |
| `161` | `PI.4/uniform-first-component` |  |
| `162` | `PI.4/uniform-obstruction-vanishing` |  |
| `163` | `PI.4/primitive-picard-trace-correction` |  |
| `164` | `PI.4/curve-adjustment` |  |
| `165` | `PI.4/uniform-pushforward-adjustment` |  |
| `166` | `PI.6/degree-two-splitting-uniform` |  |
| `167` | `PI.7/half-period-uniform-evaluation` |  |
| `174` | `PI.3/branch-cover-finite-model` |  |
| `175` | `PI.3/branch-cover-finite-model` |  |
| `176` | `PI.3/incidence-double-cover` |  |
| `177` | `PI.3/incidence-local-resolution` |  |
| `178` | `PI.3/incidence-double-cover` |  |
| `180` | `PI.3/incidence-local-resolution` |  |
| `181` | `PI.3/double-cover-strata` |  |
| `182` | `PI.3/incidence-double-cover` |  |
| `183` | `PI.5/curve-lift` |  |
| `184` | `PI.5/trace-zero-restriction` |  |
| `186` | — | Lang's C\_i conjecture over ℝ is stated in the reader's introduction as context; it is never a dependency. |
| `187` | — | Pfister's u-invariant conjecture is stated in the reader's introduction as context; it is never a dependency. |
| `188` | `PI.1/real-closed-norm-bound` |  |
| `191` | `PI.0/real-closure-at-ordering` | Routed to the proposed QuadraticFormsRealFunctionFields; owned here in PI.0. |
| `192` | `PI.0/ordering-space`, `PI.0/brauer-nonvanishing-locus` | Routed to the proposed QuadraticFormsRealFunctionFields; owned here in PI.0. |
| `196` | `PI.6/nash-approximation-input` |  |
| `197` | `PI.6/brocker-sign-input` |  |
| `202` | `PI.6/kummer-lift-transport` | The relative-pair verification is gap G3. |


## Structure

- **rescope** (RealSurfacePeriodIndex, QuadraticFormInvariantsPartII, QuadraticFormsRealFunctionFields). QuadraticFormInvariantsPartII (accepted) assigns Benoist's real-function-field items /14, /94, /95, /141, /142, /143, /191, /192 (and the conjecture statements /186, /187) to a proposed roadmap QuadraticFormsRealFunctionFields that has no roadmap, packet or design job. The incorporated brief of this roadmap requires that tranche before its applications. Rather than wait, this design owns exactly what Benoist uses in layer PI.0, which imports only Tau Ceti, QuadraticFormInvariantsPartII Q2.5 and SemisimpleAlgebrasPartII, and never imports PI.1–PI.9. *Proposal:* Keep PI.0 here until the maintainer decides the QuadraticFormInvariantsPartII split. If QuadraticFormsRealFunctionFields is created, move PI.0 there unchanged as its RF.0–RF.3 Benoist portion (ordering space, real closure at an ordering, signatures, Brauer nonvanishing locus, Elman–Lam invariant, Witt, Springer, Amer–Brumer, Albert, the Elman–Lam bound and Pfister's criterion), add the three Benoist–Wittenberg items routed there, and re-point PI.1–PI.9 to it; the node ids can be kept as aliases.
- **rescope** (RealSurfacePeriodIndex, SchemeAndStackFoundations). PAPER-BENOIST-19 routes items /09 and /10 (finite residue support, maximal unramified open, ramification-index formula for residues) as a source of SchemeAndStackFoundations SF.2. SchemeAndStackFoundations is now upstream, and its README assigns purity for the Brauer group to EtaleDualityAndPerverseSheaves; the atlas owner of residues and purity is PurityForFlatCohomology PF.6. *Proposal:* Realise /09–/10 through PurityForFlatCohomology:PF.6/brauer-residue, PF.6/dvr-brauer-residue-sequence, PF.6/brauer-purity-regular and the definition PI.1/unramified-locus; no SF.2 node is needed.


## References

- **B19**: Olivier Benoist, *The period-index problem for real surfaces*, Publications Mathématiques de l'IHÉS 130 (2019), 63–110; published version (Numdam), printed page numbers; arXiv:1804.03642v2 not collated. <https://www.numdam.org/item/10.1007/s10240-019-00108-7.pdf>. Read: All of pp. 63–110 read in full on 2026-10-19: Introduction §§0.1–0.7, §1 (Theorem 1.1, Proposition 1.2, Lemmas 1.3–1.4, Theorem 1.5), §2 (2.1–2.17, Lemma 2.1), §3 (Assumption 3.1, Propositions 3.2–3.3), §4 (Assumption 4.1, Propositions 4.2–4.5), §5 (Assumptions 5.1–5.2, Lemma 5.3, Propositions 5.4–5.5), §6 (Assumption 6.1, Lemmas 6.2–6.5, Propositions 6.6–6.7, §6.4), §7 (Proposition 7.1, Lemmas 7.2–7.6, Proposition 7.4, proof of Theorem 0.5), §8 (Proposition 8.1, Theorem 0.6, Proposition 0.7), references.
- **BCR**: J. Bochnak, M. Coste and M.-F. Roy, *Real Algebraic Geometry*, Ergebnisse der Mathematik und ihrer Grenzgebiete (3) 36, Springer, 1998; maintainer-cleared copy (atlas library), printed page numbers. <https://doi.org/10.1007/978-3-662-03718-8>. Read: Example 7.1.4 a), p. 135; Proposition 7.1.7, p. 136; §10.3, p. 254; Theorem 12.4.11, p. 318; Example 15.2.2, pp. 392–393.
- **EKM**: Richard Elman, Nikita Karpenko and Alexander Merkurjev, *The Algebraic and Geometric Theory of Quadratic Forms*, Free author PDF (final manuscript of AMS Colloquium Publications 56, 2008); printed page numbers. <https://www.math.ucla.edu/~merkurev/Book/Kniga-final/Kniga.pdf>. Read: Theorem 17.14, p. 74; Lemmas 19.4, 19.10 and Exercise 19.15, pp. 80–82; §33 (total signature), pp. 133–137; §37 (u-invariant of formally real fields), Theorem 37.4, Corollaries 37.5 and 37.8, pp. 165–169.
- **BEC05**: Karim Johannes Becher, *On fields of u-invariant 4*, Preprint, 28 February 2005, Linear Algebraic Groups and Related Structures preprint server no. 154. <https://www.math.uni-bielefeld.de/lag/man/154.pdf>. Read: Whole note, §§1–3, pp. 1–6.
- **BW20**: Olivier Benoist and Olivier Wittenberg, *On the integral Hodge conjecture for real varieties, I*, Inventiones Mathematicae 222 (2020), 1–77; author PDF; not read in this job, cited at the locators Benoist gives. <https://www.math.ens.psl.eu/~benoist/articles/hodgereel1.pdf>. Read: Not read in this job; statements as cited by Benoist 2019 (Propositions 1.3, 2.8, 2.9, Theorem 1.12).
- **DJ04**: A. J. de Jong, *The period-index problem for the Brauer group of an algebraic surface*, Duke Mathematical Journal 123 (2004), 71–94. <https://doi.org/10.1215/S0012-7094-04-12313-9>. Read: Not read; §7 cited at Benoist's locator.
- **CT95**: J.-L. Colliot-Thélène, *Birational invariants, purity and the Gersten conjecture*, Proc. Sympos. Pure Math. 58 (1995), 1–64. <https://doi.org/10.1090/pspum/058.1>. Read: Not read; (3.9) and Proposition 3.3.1 cited at Benoist's locators.
- **ARA75**: J. K. Arason, *Primideale im graduierten Wittring und im mod 2 Cohomologiering*, Mathematische Zeitschrift 145 (1975), 139–143. <https://doi.org/10.1007/BF01214778>. Read: Not read; Hilfssatz 2 cited at Benoist's locator; the packet proves the needed closedness by trace forms.
- **WITT37**: E. Witt, *Theorie der quadratischen Formen in beliebigen Körpern*, Journal für die reine und angewandte Mathematik 176 (1937), 31–44. <https://doi.org/10.1515/crll.1937.176.31>. Read: Not read; Satz 22 cited at Benoist's locator; the packet proves the needed statement from EKM Corollary 37.8.
- **SPR55**: T. A. Springer, *Quadratic forms over fields with a discrete valuation. I*, Indagationes Mathematicae 17 (1955), 352–362. <https://doi.org/10.1016/S1385-7258(55)50049-3>. Read: Not read; the statement is taken from EKM §19.
- **LAM05**: T. Y. Lam, *Introduction to Quadratic Forms over Fields*, Graduate Studies in Mathematics 67, AMS, 2005. <https://doi.org/10.1090/gsm/067>. Read: Not read; Albert's theorem on biquaternion algebras (Chapter III) cited.
- **EL73**: R. Elman and T. Y. Lam, *Quadratic forms and the u-invariant. I*, Mathematische Zeitschrift 131 (1973), 283–304. <https://doi.org/10.1007/BF01174904>. Read: Not read; statements as reported by Becher 2005 §3 and EKM §37.
- **PFI82**: A. Pfister, *On quadratic forms and abelian varieties over function fields*, Contemporary Mathematics 8 (1982), 249–264. <https://doi.org/10.1090/conm/008>. Read: Not read; Proposition 9 cited at Benoist's locator; the packet proves the needed direction from EKM, Becher and Albert.
- **BRO80**: L. Bröcker, *Reelle Divisoren*, Archiv der Mathematik 35 (1980), 140–143. <https://doi.org/10.1007/BF01235330>. Read: Not read; Satz a), b) cited at Benoist's locator.
- **MVH98**: F. Mangolte and J. van Hamel, *Algebraic cycles and topology of real Enriques surfaces*, Compositio Mathematica 110 (1998), 215–237. <https://doi.org/10.1023/A:1000243214522>. Read: Not read; Theorems 1.1, 1.3 and 4.4 cited at Benoist's locators.
- **DK96**: A. Degtyarev and V. Kharlamov, *Halves of a real Enriques surface*, Commentarii Mathematici Helvetici 71 (1996), 628–663. <https://doi.org/10.1007/BF02566441>. Read: Not read; §1.3 cited at Benoist's locator.
- **CTP90**: J.-L. Colliot-Thélène and R. Parimala, *Real components of algebraic varieties and étale cohomology*, Inventiones Mathematicae 101 (1990), 81–99. <https://doi.org/10.1007/BF01231497>. Read: Not read; Proposition 3.1.2 cited at Benoist's locator.
- **VA13**: A. Várilly-Alvarado, *Arithmetic of del Pezzo surfaces*, Birational Geometry, Rational Curves, and Arithmetic, Springer, 2013, 293–319. <https://doi.org/10.1007/978-1-4614-6482-2_12>. Read: Not read; the anticanonical model of a degree-four del Pezzo surface as an intersection of two quadrics is cited.
