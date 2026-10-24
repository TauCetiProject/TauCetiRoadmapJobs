# Roadmap: algebraic topology, part II

**Summary.** Build configuration-space cohomology and its arithmetic traces, the rational homotopy of sphere bouquets and their double loops, and the equivariant topology of real loci and ramified covers. This continues AlgebraicTopology: its eight stages supply ordinary chains, CW methods, finite-cover descent, products, manifold duality and Whitehead. The endpoints here are the stable configuration diagonal and double-loop Betti identity, canonical support splittings built from semialgebraic equivariant purity, a self-dual localization sequence, affine and Lefschetz applications, and the integral trace-lifting and circle-obstruction theorems for covers. The configuration strand and the real-locus strand have separate comparison dependencies.

## Scope and ownership

This roadmap owns arrangement purity, signed integer Euler exponents, Hilton and rational-loop calculations, the Fermat retraction, the rank-one-local-system refinement of integral fixed-locus coordinates, real-locus self-intersection coordinates, the support splittings and duality, and the cover and transport calculations of Layers 14–16.

The following objects have one owner and are consumed here.

- TauCetiRoadmap.AlgebraicTopology Stages 2–8 own ordinary relative chains, CW pairs, cofibrations, covering transfer, local systems, products, the ordinary Serre spectral-sequence interface of Stage 5 item 5, cohomology and manifold duality, Euler characteristic, Hurewicz and Whitehead. The new results concern configuration cohomology, rational homotopy and formulas on the supplied semialgebraic site.
- TauCetiRoadmap.SchemeAndStackFoundations §2.23 owns generic equivariant sheaves, derived invariants, supports and Ext. Its §§2.7 and 2.19 own the generic support and right-adjoint operations. MotivesAndAlgebraicCycles §§7.6a–7.6b owns their semialgebraic cohomology, orientation and purity specialization; this roadmap proves the additional fixed-locus and cover formulas; it does not introduce a second generic derived category.
- TauCetiRoadmap.ComplexComparisonPartII §C−1.1 owns scheme analytification, and TauCetiRoadmap.EtaleDualityAndPerverseSheaves §§3.5–3.8 and §6.5 own coefficient/trace comparison and the compact Frobenius trace interface. Only Layers 1–3 use those comparisons. Section 4.7 of that supplier owns complete-intersection Betti numbers, including the ordinary quartic number used in §13.3.
- The full Frobenius-root factorization theorem is already in the library as `TauCeti.FiniteField.fullCycleType_eq_map_natDegree_normalizedFactors`, in `TauCeti/FieldTheory/GaloisGroups/FrobeniusOrbits.lean`. Its full cycle partition is `Equiv.Perm.fullCycleType`, in `TauCeti/GroupTheory/Perm/Partition.lean`. Both the root-cycle theorem and its fixed-point bookkeeping are supplied, rather than targets here.
- General tensor-character multiplicativity and averaging invariants are already in the library as `Representation.char_tensor` and `Representation.card_inv_mul_sum_char_eq_finrank` in `Mathlib/RepresentationTheory/Character.lean`; the permutation-cycle specialization in §2.3 is the new theorem.
- Native `GenLoop`, `TauCeti.WedgeSum`, singular cohomology, ordinary pair sequences, and the cyclic projective resolution are used directly. The acceptance abbreviations for spheres, bouquets and Fermat fibres are specializations of those carriers.
- TauCetiRoadmap.RealAlgebraicGeometry Layers 3 and 6 own polynomial semialgebraic sets, projection and definability. The finite triangulation and dimension extension required here is its supplier contract. The native `TauCeti.IsSemialgebraic` supplies the predicate over ordered rings; the locus gluing, sites and cohomological specialization are supplied by MotivesAndAlgebraicCycles §7.6a.
- TauCetiRoadmap.DifferentialGeometry Layers 2, 3 and 10 own orientation covers, finite-dimensional flows and their stated Sard theorem; TauCetiRoadmap.GeometricTopology Layer 1 owns the manifold bridge. TauCetiRoadmap.SmoothBundlesConnections §B1 item 5 owns ordinary Ehresmann transport. Section 16.1 adds finite-involution equivariance, and §12.4 owns the relative surface-curve perturbation needed here.
- TauCetiRoadmap.QWittVectors §1.4a owns the big Witt coordinate/power-series comparison. The exponents in §3.1 are signed integer powers of the factors 1−Tʳ; they are a different transform from the Witt coordinates in factors 1−a_rTʳ.

- TauCetiRoadmap.InverseGaloisAndArithmeticFundamentalGroups §IG.5.1 owns ordered/unordered configurations, their discriminant-open schemes, permutation torsors and complex comparison; TauCetiRoadmap.MotivesAndAlgebraicCycles §§7.6a–7.6b owns the semialgebraic cohomology, duality, purity and Steenrod foundations. Their API facts and discriminating checks are retained in the supplier contracts. TauCetiRoadmap.CharacteristicClasses §C3 owns the topological Stiefel–Whitney engine; §12.3 is the self-intersection comparison.

The supply direction of the real-locus strand is generic sheaf carriers → the semialgebraic foundations of MotivesAndAlgebraicCycles §§7.6a–7.6b → the additional formulas here → arithmetic applications. Algebraic Picard comparisons, Brauer classes, cycle-class construction, arithmetic vanishing cycles and mapping-space analytic comparisons belong to their algebraic or analytic owners. No such comparison is used to prove the affine topology in Layer 11.

## Conventions

Write X≃Y for homotopy equivalence, with base points specified on homotopy groups and transported when needed. Spaces, groups and coefficient categories live in fixed universes; all finite indexing types are small in the same universe. The acceptance file uses small topological spaces, and its ordinary cohomology is on the pinned native singular-cochain carrier. Ordered configurations use the product topology and then the subspace topology; their orbit spaces use the quotient topology. Permutations act on the left by (σ·x)(i)=x(σ⁻¹i). With σ=(123), τ=(12), and x=(a,b,c), σ·(τ·x)=(c,b,a)=(στ)·x; using σ instead of σ⁻¹ would reverse this multiplication convention. A constant tuple is excluded for m≥2. (BS §1, p.894, BS line 55; the action law is a direct computation.)

The integers n,N,m are nonnegative unless a stronger bound is stated. Write ε_n=(n+1) mod 2 and s_n=(−1)^(n+1), so s_n is −1 for even n and +1 for odd n, including n=0. The sign representation is raised to ε_n. This is the parity meant by n−1, never truncated natural-number subtraction: n=0 gives s_n=−1 and n=1 gives +1. Cohomological indices and dimension shifts are integers; ordinary negative-degree groups and direct sums over empty windows are zero. Every Möbius quotient has positive denominator r. All formal products stabilize coefficient by coefficient; the bivariate product uses finite coefficients in each U-degree. In the double-loop product, n≥4 and the exponent r(n−2)−1 is positive. (BS Definition 7.3 and equation (7.2), pp.941–942, BS line 2199; §7, BS line 2354.)

For finite-field traces q is a prime power with q≥2, and ℓ is a prime different from the residue characteristic. Frobenius on cohomology is geometric: its value on ℚ_ℓ(−1) is q, whereas arithmetic Frobenius has value q⁻¹. The inverse permutations have the same cycle type, so the root-factor degree comparison is compatible with this convention. On 𝔾_m ordinary degrees 0,1 have eigenvalues 1,q and compact degrees 1,2 have eigenvalues 1,q; the compact alternating trace is q−1. (CEF Proposition 3.3, pp.19–20, CEF line 860.)

All semialgebraic spaces here have finite semialgebraic atlases and finite compatible triangulations; locally complete means the semialgebraic local-completeness condition, not compactness. The orientation statements use pure-dimensional homology manifolds with finite admissible chart covers, as in the semialgebraic duality supplier contract. In Layers 6–15, R is any real closed field, C=R(i), and G=C₂ with generator σ the conjugation involution. Schemes over R are separated and of finite type; smoothness, properness and pure dimension are imposed in each theorem that needs them. Ordinary singular comparison is asserted only for R=ℝ. Put U=X(C)∖X(R). Cohomology H_G is the right-derived functor of invariant sections on the finite-cover semialgebraic site. Supported cohomology H_G,X(R) and pair cohomology H_G(X(C),X(R);F)=H_G(X(C),j!F), for j:U→X(C), are distinct: at X=Spec R the supported group is the whole equivariant group and the pair group is zero. (BW v3 §§1.1.1–1.1.3, pp.8–10, BW lines 310, 336, 372.)

The lattice ℤ(j) has σ=(-1)^j, for every integer j; a coefficient twist is F(j)=F⊗ℤ(j) with diagonal action. The contragredient action on Hom(M,ℚ/ℤ(d)) sends a homomorphism h to the homomorphism m↦σ(h(σ⁻¹m)). Complex conjugation on a complex line reverses its real orientation; on two complex coordinates its determinant is +1. Hence a complex d-fold has orientation ℤ(d). A real codimension-c Gysin map shifts by c, a complex codimension-c map by 2c, with the source coefficient twist −c for a fixed target coefficient. (BW v3 equations (1.1)–(1.2), pp.8–9, BW line 297; equations (1.18)–(1.22), pp.13–14, BW line 475.)

Use the native cyclic differential σ−1 in even cochain degree and 1+σ in odd degree. The comparison with 1−σ multiplies degree q by (−1)^(q(q+1)/2); the first four scalars are 1,−1,−1,1. A coefficient Bockstein is obtained by lifting a cocycle and taking its coboundary, with the kernel identified by its positive inclusion. The sign and monodromy witnesses are given in §§7.3, 7.6 and 15.4. Every ordinary degree used in fixed-locus coordinates is retained; integral coordinates include their degree-zero ℤ summand. (B19 equation (2.6), p.73, B19 line 399; BW v3 §§1.2.2–1.2.3, pp.15–16, BW line 553.)

## Exact supplier contracts

### From Mathlib

Use `GenLoop` in `Mathlib/Topology/Homotopy/HomotopyGroup.lean`, with its actual boundary condition on continuous cubical maps and its native higher homotopy groups. The definition imposes neither Hausdorffness nor a CW hypothesis. `ContinuousMap.HomotopyEquiv` supplies actual continuous maps and both homotopies. Use `Metric.sphere`, `EuclideanSpace`, `MvPolynomial`, `Polynomial.Monic`, `Squarefree` and `UniqueFactorizationMonoid.normalizedFactors` for the native geometric and polynomial carriers.

Use `ArithmeticFunction.moebius` and `ArithmeticFunction.sum_eq_iff_sum_smul_moebius_eq` in `Mathlib/NumberTheory/ArithmeticFunction/Moebius.lean` for positive-index divisor inversion; `PowerSeries.binomialSeries` in `Mathlib/RingTheory/PowerSeries/Binomial.lean`, and `PowerSeries.subst` for formal factors. The acceptance quotient is not used as an exponent before divisibility is established. Use `Representation.char_tensor` and `Representation.card_inv_mul_sum_char_eq_finrank` in `Mathlib/RepresentationTheory/Character.lean` for tensor multiplicativity and averaging invariants over a finite group whose order is invertible in the coefficient field; the cycle-basis trace calculation is the configuration specialization in §2.3.

Use `CategoryTheory.Sheaf.H` in `Mathlib/CategoryTheory/Sites/SheafCohomology/Basic.lean` as the site cohomology interface. Use `Rep.FiniteCyclicGroup.homResolutionIso`, `Rep.FiniteCyclicGroup.groupCohomologyIsoOdd` and `Rep.FiniteCyclicGroup.groupCohomologyIsoEven` in `Mathlib/RepresentationTheory/Homological/GroupCohomology/FiniteCyclic.lean`. Their inputs are a commutative coefficient ring, a finite commutative group, a chosen generator with its generation proof, and a native representation; the even isomorphism also requires a nonzero even degree. They compute the alternating native complex, not the semialgebraic supported theory.

### From Tau Ceti

Use `TauCeti.WedgeSum` and `TauCeti.WedgeSum.base` in `TauCeti/Topology/WedgeSum.lean`, with its quotient topology and added wedge point, including the empty wedge. Use `TopCat.singularCohomology` in `TauCeti/AlgebraicTopology/Cohomology/Basic.lean` and `TopPair.singularCohomology` with its connecting maps in `TauCeti/AlgebraicTopology/Cohomology/Relative.lean`. The absolute acceptance groups have coefficient category `ModuleCat` and chain and target coefficients ℚ. Use `HomotopyGroup.zerothHomotopyEquiv`, `HomotopyGroup.loopSpaceEquiv` and `HomotopyGroup.piLoopSpaceMulEquiv` in `TauCeti/Topology/Homotopy/HomotopyGroup/LoopSpace.lean`, preserving their constant-loop base point.

For a finite field F and an algebraic extension E in which f splits, use `TauCeti.FiniteField.fullCycleType_eq_map_natDegree_normalizedFactors` in `TauCeti/FieldTheory/GaloisGroups/FrobeniusOrbits.lean`: f is squarefree and the chosen permutation acts as x↦x^card(F) on every root. Use `Equiv.Perm.fullCycleType` in `TauCeti/GroupTheory/Perm/Partition.lean` for all cycle lengths, including 1. Its cardinality is the number of irreducible factors; it equals the cardinality of the Mathlib nontrivial cycle multiset plus the number of fixed points.

**Checks.**

- The identity on m roots has m full cycles, including m=0 where there are zero. The permutation (12)(3) has cycle lengths 2,1, hence two cycles.
- Over 𝔽₂, T²+T factors into two distinct linear factors and its full cycle partition is 1,1. The irreducible T²+T+1 gives the partition 2. The monic constant 1 has empty root and factor sets.
- A polynomial with a repeated root fails the squarefree hypothesis: T² in characteristic two has one geometric root, so counting two degree-one factors with multiplicity would disagree with its root permutation.

Use `TauCeti.IsSemialgebraic` in `TauCeti/Geometry/RealAlgebraic/Semialgebraic/Basic.lean`, the Boolean algebra generated by polynomial zero sets and strict positivity sets over a commutative linearly ordered ring. That definition does not impose real closedness, topology, local completeness or finite dimension; those hypotheses enter the site geometry separately.

### From TauCetiRoadmap.AlgebraicTopology

Consume Stage 2 ordinary pair/triple chains and their maps, Stage 4 Hausdorff CW models, cellular comparison, cofibration quotients, wedges and suspensions, Stage 5 covering transfer, local systems and product/fibration spectral sequences, Stage 6 ordinary products, local coefficients, orientation and duality, Stage 7 finite-CW Euler characteristic, and Stage 8 relative homotopy, Hurewicz, Whitehead and homotopy-equivalence transport. The ordinary spectral sequence is Stage 5 item 5's explicit Serre-fibration, monodromy and filtration interface, with its cohomological pairing form. The homological construction and the foundational cochain/cup inputs have the ordering stated there.

What AlgebraicTopology must provide (gap:finite-cw-fixed-point-trace): For a self-map of a Hausdorff finite CW complex with no fixed point, the alternating rational homology trace is zero, naturally under finite-CW models and the singular/cellular comparison. This extends the Euler-characteristic direction of Stage 7 and supplies the fixed-point-free trace in §13.3; it does not use any real/étale comparison.

### From TauCetiRoadmap.SchemeAndStackFoundations

Use §0.7 for dimensions of finite-type schemes, §§0.1–0.2 for the relative-spectrum algebra interfaces, the scheme topology and morphism properties retained in Layer 0, §2.7 for supports, §2.19 for derived right adjoints, and §2.23 for equivariant sheaves, derived invariants, supported cohomology, Hochschild–Serre and equivariant Ext. The action category must allow an action moving the base. A generic theorem about a free abelian acting group does not specialize to C₂; the topological specialization uses the semialgebraic theory of MotivesAndAlgebraicCycles §§7.6a–7.6b.

What SchemeAndStackFoundations must provide (gap:semialgebraic-equivariant-sites): Extend §2.23 to abelian sheaves on finite-cover semialgebraic Grothendieck sites, with derived supported sections and extension by zero, quotient and Hochschild–Serre spectral sequences with their injective acyclicity, and regular induced-coefficient comparison.

What SchemeAndStackFoundations must provide (gap:semialgebraic-derived-adjunction): Extend §§2.7, 2.19 and 2.23 to the generic proper-support/right-adjoint and triangle-replacement interfaces on the semialgebraic sites, including exact-adjoint criteria for finite-free coefficient tensor functors and the finite-group Borel approximation comparison.

What SchemeAndStackFoundations must provide (gap:finite-group-ext-stalk): For a finite group acting trivially on a base site with exact filtered stalks, identify the stalk of the sheaf Ext from the constant integral equivariant sheaf with group cohomology of the coefficient stalk, naturally in restrictions, using a degreewise finite-rank resolution.

The two spectral sequences specialize to the same invariant-section functor. At a fixed point the sign lattice has H¹=𝔽₂ and H²=0; a regular lattice has no positive cohomology. These values fix the supplier/consumer convention. (BW v3 equations (1.3)–(1.5), p.9, BW line 336; B19 Lemma 7.5 proof, p.99, B19 line 1484.)

### From TauCetiRoadmap.RealAlgebraicGeometry

Consume Layer 3's polynomial semialgebraic description and Layer 6's projection/definability interface through the native predicate. The topology needed here uses arbitrary real closed fields and finite semialgebraic admissible covers.

What RealAlgebraicGeometry must provide (gap:real-closed-semialgebraic-geometry): Extend the geometry direction of Layers 3 and 6 with finite compatible semialgebraic triangulation, dimension, locally complete chart gluing and finite free quotients over arbitrary real closed fields, support cohomological dimension bounded by dimension, and natural comparison with ordinary topology over ℝ.

Finite triangulation means a finite simplicial model compatible with each member of a specified finite family of subsets; a noncompact locally closed set may be a union of open simplices, rather than a closed finite complex. For R=ℝ, a line has dimension 1 and an interval has a contractible finite model; a point has dimension 0. Over a non-Archimedean R, the site still uses finite semialgebraic covers. (BW v3 §1.1.1 and §1.1.3, pp.8–10, BW lines 310, 372.)

### From TauCetiRoadmap.ComplexComparisonPartII

Consume §C−1.1 scheme analytification and its open-subspace/chart description for the algebraic configuration discriminant open. The plane/disc comparison is topological and uses no analytic or algebraic structure on the disc boundary.

### From TauCetiRoadmap.EtaleDualityAndPerverseSheaves

Consume §§3.5–3.8 for finite/rational coefficient comparison, compact supports, traces, products and supported orientation classes. Consume §6.5's compact-support Frobenius trace formula on separated finite-type finite-field schemes and arithmetically descended finite/rational complexes. It includes the finite-cover local systems on Conf_m; scalar extension of rational characters and finite-cover descent must commute with this comparison. At the affine line the compact trace is q, and the point contributes 1. This is the input to §2.4, rather than a second general trace theorem.

What EtaleDualityAndPerverseSheaves must provide (gap:configuration-cover-comparison): Expose §§3.5–3.8 and §6.5 on the ordered-root S_m torsor and its rational representation local systems, with finite-cover descent, geometric Frobenius, scalar extension, compact supports and Poincaré duality compatible in one comparison diagram.

Consume §4.7's complete-intersection Betti formula for §13.3: at hypersurface degree 4 and dimension 3 the primitive middle rank is (3⁵−3)/4=60, with the remaining even ranks given by its weak Lefschetz input. The sign of conjugation on the even hyperplane powers is retained separately in §13.3. This supplier is used by that late application and by the independent configuration strand; it is not an input to Layers 6–12.

### From TauCetiRoadmap.DifferentialGeometry and TauCetiRoadmap.GeometricTopology

Consume DifferentialGeometry Layer 2's orientation cover, Layer 3's finite-dimensional maximal-flow interface, and Layer 10's stated Sard theorem. GeometricTopology Layer 1 supplies the smooth manifold and tangent bridge. A local integral curve and a flow domain retain their actual time and domain hypotheses. Relative transversality for finite curve families is a target of §12.4, not a consequence of equidimensional Sard alone. The complex-line orientation witness is −1 and the complex-plane witness is +1 on both sides of the orientation comparison.

### From TauCetiRoadmap.SmoothBundlesConnections

Consume §B1 item 5, the complementary horizontal distribution, local horizontal lifts, and the ordinary theorem that a proper surjective smooth submersion is locally a smooth fibre bundle, for finite-dimensional Hausdorff second-countable boundaryless manifolds. A connected base gives a fixed model fibre; local statements apply componentwise. Properness gives complete lifts on a sufficiently small coordinate ball. Section 16.1 supplies the involution-compatible metric and base linearization, and §16.2 requires invariant control data for the stronger pair statement.

### From TauCetiRoadmap.InverseGaloisAndArithmeticFundamentalGroups

Consume §IG.5.1 for the topological and algebraic configuration spaces, the all-characteristic permutation torsor and the complex-point comparison.

What InverseGaloisAndArithmeticFundamentalGroups must provide (gap:configuration-carrier-generality): Extend §IG.5.1 ordered/unordered configuration carriers and their embedding functoriality to every topological space, reserving Hausdorffness for the covering theorem, and represent formal monic degree-m polynomials by coefficient tuples over every ring, including the zero ring.
 The coordinatewise plane/interior-disc identification is the topological transport of its embedding functoriality. The contracts below retain the concrete coordinate laws, APIs and checks needed by the arrangement and trace calculations.

**Ordered and unordered configurations.** For a space X and m≥0, PConf_m(X) is the subspace of injective maps Fin m→X; Conf_m(X) is its orbit quotient for (σ·x)(i)=x(σ⁻¹i). For A¹ over ℤ, use the open locus where every x_i−x_j is invertible, and the unordered locus of monic degree-m polynomials with invertible discriminant. (BS, §1 p.894; §3 proof of Lemma 3.9, p.919, BS line 55.)

The consumed API provides these facts.

- An injective tuple determines a topological ordered configuration; a tuple with unit differences determines an A¹ scheme point.
- A continuous embedding X→Y induces equivariant maps of both configuration spaces.
- The map PConf_m(X)→Conf_m(X) identifies exactly the permutation orbits.
- Ordered configurations agree iff their coordinate evaluations agree; unordered classes agree iff their tuples differ by a permutation.
- (σ·x)(i)=x(σ⁻¹i); identity and multiplication satisfy the left-action laws.
- Embedding maps commute with composition and with the orbit projection.

**Checks.**

- Over fields the points are ordered distinct tuples; over general rings the differences are units.
- PConf_0(X) and Conf_0(X) are singletons, including X empty.
- For a one-point X and m=2 the ordered and unordered topological spaces are empty. Over the zero ring every difference is a unit since 0=1, so the scheme functor has its unique empty-spectrum point; the formal monic degree is carried by the coefficient-space presentation, not by the natural degree of the zero polynomial. This differs from the injective-tuple set functor on the underlying ring.
- PConf_1(X) and Conf_1(X) are naturally homeomorphic to X.
- The tuple (0,2) in ℤ² is distinct but is not an integral point of the discriminant open.

**Configuration permutation torsor.** For Hausdorff X, PConf_m(X)→Conf_m(X) is a free S_m covering. The algebraic A¹ configuration map is a finite étale torsor under the constant group scheme S_m, including residue characteristics dividing m!. (BS, §3 proof of Lemma 3.9, p.919, BS line 1197.)

**Checks.**

- Include m=0 and m=1; no inversion of m! is used.
- For m=0 and m=1 the group is trivial and the projection is the identity of a singleton or X. Over 𝔽₂, the polynomial T²+T has distinct roots 0,1 although 2!=0; its ordered-root torsor still has two sheets.

**Plane and disc configuration comparison.** Complex analytification identifies the algebraic PConf_m(A¹) and Conf_m(A¹) with the corresponding complex-plane configurations, equivariantly before quotient. A chosen homeomorphism ℂ≅int(D²) induces a compatible square of ordered covers and unordered quotients. (BS, §1 p.894; §3 p.919, BS line 55.)

**Checks.**

- The disc is open; no algebraic structure on the disc or assertion about its boundary is introduced.
- The homeomorphism z↦z/(1+|z|) has image the open unit disc and inverse w↦w/(1−|w|). At z=0 both maps give 0; |w|=1 is excluded because its inverse denominator vanishes.


### From TauCetiRoadmap.MotivesAndAlgebraicCycles

Consume §§7.6a–7.6b for semialgebraic loci and sites over every real closed field, derived equivariant cohomology with supports, the pair and support localization sequences, real-complex coefficient sequences, norm/restriction, field-extension invariance, ordinary singular/Borel comparison over ℝ, orientation duality, purity/Gysin and the fixed mod-two decomposition. The rank-one-local-system refinement and explicit Bockstein formula in §§7.5–7.6 extend the constant-coefficient decomposition consumed here.

What MotivesAndAlgebraicCycles must provide (gap:semialgebraic-duality-coefficients): Expose §7.6b on locally complete finite-atlas semialgebraic homology manifolds with arbitrary commutative noetherian coefficient rings, the bounded locally constant orientation formula, definably proper supports and trace adjunction, and two-sided perfect duality for finite-stalk local systems.

What MotivesAndAlgebraicCycles must provide (gap:supported-steenrod-comparison): Expose §7.6b Steenrod squares on ordinary, relative, equivariant and supported semialgebraic cohomology with instability, Adem relations, Sq¹ as reduced integral Bockstein, finite Borel and real-closed-extension compatibility, and the Thom identity.

**Semialgebraic real and complex loci.** For a real closed field R, C=R(i), and a separated finite-type R-scheme X, construct the locally complete semialgebraic spaces X(R) and X(C), using Weil restriction on affine charts and gluing. The site has semialgebraic open subsets and finite open covers. Complex conjugation acts on X(C), and its fixed subspace is X(R). (BW v3, §1.1.1, pp.8–9, BW line 310.)

The consumed API provides these facts.

- An R-morphism induces a continuous semialgebraic conjugation-equivariant map on complex loci and its fixed real map.
- The fixed-point locus of conjugation is naturally X(R).
- Open covers and their intersections produce the same locus after gluing and site restriction.
- For Spec R[x]/I, complex points are the real-coordinate equations for real/imaginary parts in R²ⁿ; chart changes glue.
- Locus maps preserve identities and composition and commute with real-to-complex inclusions.

**Checks.**

- No identification with ordinary singular cohomology is asserted unless R=ℝ.
- A¹(C) is R² with conjugation (x,y)↦(x,−y), fixed locus R.
- x²+1=0 has two conjugate complex points and empty real locus.
- Over a non-Archimedean R use finite semialgebraic admissible covers; arbitrary ordinary open covers are not the defining coverings.

**Equivariant semialgebraic cohomology.** Specialize SchemeAndStackFoundations §2.23 to a locally complete semialgebraic G-space V, G=C₂, an invariant closed semialgebraic Z⊂V and an equivariant abelian sheaf F: H_G,Z^i(V,F)=H^i(R(Γ_Z(V,−)^G)F). Retain derived supported sections, cup products, restriction and finite-G spectral sequences; do not replace derived invariants by invariants of ordinary cohomology. (BW v3, §1.1.1, equations (1.3)–(1.5), p.9, BW line 336.)

The consumed API provides these facts.

- H_G^i(pt,M) identifies with the pinned group-cohomology carrier for the G-module M.
- Restriction to invariant opens and change of supports induce the derived maps and commute with cup products.
- The two displayed spectral sequences are natural in the equivariant sheaf and supports, with named edge maps.
- Degree zero is the group of invariant sections supported in Z; identify it through the imported derived-functor comparison.
- The induced maps preserve identities and composition; coefficient zero maps induce zero in cohomology.

**Checks.**

- At a point this is C₂ group cohomology; on a free two-point orbit it is ordinary cohomology of a point. The generic trivial-group law is imported from SchemeAndStackFoundations §2.23.
- H_G¹(pt,ℤ(1))=ℤ/2, so positive group cohomology is retained.
- H_G,∅^i(V,F)=0 in every degree.
- On the two-point free C₂ orbit with constant integral coefficients, H_G⁰=ℤ and H_G^q=0 for q>0; ordinary invariant cohomology of a fixed point does not pass the point-sign test.

**Cohomology of the real-locus pair.** For j:U=X(C)\X(R)↪X(C), define H_G^i(X(C),X(R);M)=H_G^i(X(C),j!M_U). It sits in …→H_G^i(pair;M)→H_G^i(X(C),M)→H_G^i(X(R),M)→H_Gⁱ⁺¹(pair;M)→…. Supported-on-X(R) cohomology instead occurs in …→H_G,X(R)^i(X(C),M)→H_G^i(X(C),M)→H_G^i(U,M)→…. (BW v3, §1.1.3, p.10, BW line 372.)

The consumed API provides these facts.

- The relative object is RΓ_G(X(C),j!M_U).
- The extension-by-zero triangle gives the pair/ambient/real long exact sequence.
- The support triangle has free complement as its third term and is related naturally to the pair sequence.
- The extension-by-zero object fits the canonical j!j*→id→i*i* distinguished triangle, natural under maps of coefficient objects.
- Successive maps in both long exact sequences compose to zero; name their connecting maps and degree shifts.

**Checks.**

- This distinction is retained throughout corrected localization and complement duality.
- If X(R)=∅, relative cohomology equals ambient equivariant cohomology.
- For a space with U=∅ the pair cohomology is zero.
- A fixed point has nonzero supported cohomology, while its relative pair cohomology is zero.

**Free-action descent and dimension bounds.** For a free finite G-action on a locally complete semialgebraic space V, equivariant sheaves descend to V/G and H_G,Z^i(V,F)≅`H_(Z/G)^i(V/G,F/G)`. For X of dimension d the free complement U and the real-locus pair have cohomology zero for i>2d; hence H_G^i(X(C),M)→H_G^i(X(R),M) is an isomorphism for i>2d and a surjection for i=2d. (BW v3, §1.1.3, equations (1.8)–(1.9), p.10, BW line 378.)

**Checks.**

- Do not assert injectivity in the boundary degree 2d.
- A free C₂-orbit has equivariant H⁰=ℤ and positive groups zero, agreeing with its point quotient. A fixed point with trivial ℤ coefficients instead has H²=𝔽₂, so forgetting the freeness hypothesis gives a false descent statement.

**Comparison over the actual real numbers.** For R=ℝ, semialgebraic sheaf cohomology of a locally complete semialgebraic pair with locally constant coefficients agrees with singular cohomology of that pair; for the equivariant version it agrees with Borel cohomology, naturally in maps, supports and twists. (BW v3, §1.1.1, pp.8–9, BW line 310.)

**Checks.**

- No extension of ordinary singular paths to non-Archimedean R is claimed.

**Parity twists and regular coefficients.** Let ℤ(j) be ℤ with σ acting by (−1)^j and set F(j)=F⊗ℤ(j), with diagonal action. The diagonal and signed-diagonal embeddings in F[G] give natural short exact sequences 0→F→F[G]→F(1)→0 and 0→F(1)→F[G]→F→0; use the regular diagonal representation, which is induced even when F has nontrivial action. (BW v3, §1.1, equations (1.1)–(1.7), pp.8–10, BW line 297.)

The consumed API provides these facts.

- F(j+2)≅F(j), with compatible tensor identifications F(j)(k)≅F(j+k).
- The two exact sequences are natural in F and have forgetful/norm maps after cohomology.
- The regular-coefficient equivariant cohomology identifies with the underlying nonequivariant cohomology.
- Build F(j) by tensoring with the explicit sign lattice; the involution on a local tensor is σ_F⊗(−1)^j.
- F(0)≅F and the double sign twist is naturally F; all identifications commute with coefficient maps.

**Checks.**

- A trivial action on F[G] would fail the induced comparison.
- σ acts as −1 on ℤ(1), and as +1 on ℤ(2).
- Every sign twist of the constant 𝔽₂ sheaf is canonically 𝔽₂.
- At a point H_G^q(ℤ[G])=0 for q>0, whereas H_G²(ℤ⊕ℤ with trivial action)≠0.

**Canonical mod-two fixed-locus coordinates.** For a finite-dimensional semialgebraic Y with trivial G-action, H_G^i(Y,𝔽₂)≅⊕ₚ₌₀^i H^p(Y,𝔽₂), where the p coordinate multiplies ωⁱ⁻ᵖ. Cup product is convolution of coordinates, restriction to a point retains the p=0 coordinate, and multiplication by ω includes the same coordinates one degree higher. (BW v3, §1.2.1, equations (1.25)–(1.28), pp.14–15, BW line 519.)

**Checks.**

- A point has one 𝔽₂ in every nonnegative degree; a circle has two in every positive degree.

**Semialgebraic orientation sheaves.** For a locally complete semialgebraic homology v-manifold V, or_V is the rank-one ℤ-sheaf locally dual to H_c^v of a small oriented chart. Set `or_(V/W)`=Hom(f*or_W,or_V) for f:V→W. Conjugation gives `or_(X(C))`≅ℤ(d) for smooth pure-d X/R. Over ℝ reuse the existing manifold orientation carrier and prove compatibility. (BW v3, §1.1.4–1.1.5, pp.10–14, BW line 387.)

The consumed API provides these facts.

- An orientation on a chart identifies its top compactly supported cohomology with ℤ and or_V with the constant sheaf.
- `or_(V/U)`≅`or_(V/W)`⊗f*`or_(W/U)` for composable maps.
- `or_(X(C))`≅ℤ(d) equivariantly for smooth pure-dimensional X/R.
- Glue local top-compact-cohomology dual generators with the transition orientation signs; compare over ℝ to DifferentialGeometry’s orientation cover.
- `or_(V/V)` is constant ℤ, and tensoring either orientation sheaf with 𝔽₂ is canonically constant 𝔽₂.

**Checks.**

- Over non-Archimedean fields use semialgebraic homology-manifold charts, not ordinary topological local homology.
- Conjugation on ℂ reverses orientation, so or_ℂ=ℤ(1).
- Conjugation on ℂ² preserves orientation, so the twist is ℤ(2).
- The integral orientation sheaf of RP² is nonconstant, although its tensor product with 𝔽₂ is constant.

**Semialgebraic exceptional inverse image.** Let Λ be any commutative noetherian coefficient ring. For a continuous semialgebraic map f:V→W between locally complete spaces in the separated definable category, specialize the generic derived proper-image construction to definably proper supports and obtain the adjunction Rf! ⊣ f!:D⁺(W,Λ)→D⁺(V,Λ). Prove finite cohomological dimension and the bounded-below restriction of the adjunction. In particular this includes ℤ and every finite commutative coefficient ring. (EP, Theorem 4.1, pp.46–47; Theorem 4.7, pp.49–50; BW §1.1.4, p.11, EP line 2127.)

The consumed API provides these facts.

- Hom(Rf!A,B)≅Hom(A,f!B), natural in both objects.
- (g∘f)!≅f!g!, compatibly with the adjunction counits.
- The counit Rf!f!B→B supplies the trace and its composition rule.
- Any other right adjoint is uniquely naturally isomorphic through the adjunction, compatibly with its unit and counit.
- The adjunction unit and counit satisfy the two triangle identities; the identity-map adjunction is the identity.

**Checks.**

- For an open embedding f!=f*; for a closed embedding f! is supported sections followed by restriction.
- For f=id both functors and the counit identify with identity.
- For an open immersion, exceptional inverse image is ordinary restriction.
- For a closed immersion, the exceptional object has the prescribed local support; it is not ordinary restriction in general.

**Orientation formula and finite duality.** For a semialgebraic map f:V→W between pure-dimensional homology manifolds of dimensions v,w, a commutative noetherian ring Λ and F∈Dᵇ(W,Λ) with locally constant cohomology sheaves, prove f!F≅(`or_(V/W)`⊗f*F)[v−w]. For a locally constant sheaf A of finite abelian groups on V, cup product followed by trace is a perfect pairing H_cⁱ(V,A)×Hᵛ⁻ⁱ(V,Hom(A,ℚ/ℤ)⊗or_V)→ℚ/ℤ; both adjoint homomorphisms are isomorphisms. Finite stalks, rather than finite exponent alone, are essential. (BW v3, Proposition 1.1, Fact 1.2 and equation (1.16), pp.11–12, BW line 403.)

**Checks.**

- Finite exponent alone is insufficient: an infinite direct sum of 𝔽₂ at a point does not satisfy the algebraic bidual statement.
- For V=pt and A=ℤ/4 the pairing sends (1,1) to 1/4 mod ℤ and has zero kernel on both sides. For the infinite direct sum ⊕_ℕ𝔽₂, the algebraic dual is ∏_ℕ𝔽₂ and the evaluation into the double dual is not onto. For ℝ→pt the dualizing object is ℤ[1], so H_c¹(ℝ,ℤ)=ℤ.

**Semialgebraic Gysin and trace.** For a proper semialgebraic f:V→W between homology manifolds and c=w−v, the orientation formula and counit give f_*:H^a(V,`or_(V/W)`⊗f*F)→Hᵃ⁺ᶜ(W,F). It is functorial, obeys the projection formula and agrees with supported purity for closed embeddings. (BW v3, equations (1.13)–(1.15), pp.11–12, BW line 420.)

**Checks.**

- For pt→S¹ the shift is one; for identity it is zero.
- For pt→S¹, 1∈H⁰(pt) maps to the degree-one generator. For S¹→pt, the oriented H¹ generator integrates to 1 in degree 0. The identity map has shift 0 and sends each class to itself.

**Equivariant purity and proper Gysin.** Finite Borel approximation gives equivariant purity for closed homology-manifold embeddings and proper Gysin maps with relative orientation. For a proper map of smooth pure-dimensional R-varieties f:Y→X and c=dim X−dim Y, its complex-locus map is H_G^a(Y(C),M(−c))→H_Gᵃ⁺²ᶜ(X(C),M), whereas its real-locus map has shift c and relative real orientation. (BW v3, §1.1.5, equations (1.18)–(1.23), pp.13–14, BW line 475.)

**Checks.**

- pt→P¹ has complex degree shift two and real degree shift one; do not use the same shift.
- For pt→ℙ¹, the complex target degree is 2 and the real target degree is 1; the complex source twist is −1. In a complex line, conjugation has orientation −1, matching that twist.

**Semialgebraic Steenrod squares.** Construct natural Sq^a:H^b(V,𝔽₂)→Hᵃ⁺ᵇ(V,𝔽₂), and their equivariant/support versions on locally complete semialgebraic spaces over R, satisfying Sq⁰=id, instability, Sq^b(x)=x², Cartan, Adem and Sq¹ equal to mod-two integral Bockstein. Their finite Borel comparison agrees with ordinary squares over ℝ. (BW v3, §1.6.3–1.6.4, pp.27–31, BW line 1060.)

The consumed API provides these facts.

- Semialgebraic pullback and change of supports commute with each Sq^a.
- `Sq^a(xy)=sum_(b+c=a) Sq^b(x) Sq^c(y)`, with the relevant support intersection.
- Sq^a x=0 for a>deg x, `Sq^(deg x)(x)=x^2`, and Sq¹ is the mod-two integral Bockstein.
- Each Sq^a is an additive operation on cohomology with its named support target.
- Sq^0=id and Sq^a(0)=0; the degree-zero unit has no positive squares.

**Checks.**

- Finite sums define total Sq in each bounded degree; its inverse as a filtered additive operation is determined recursively.
- On RP², Sq¹(a)=a² and Sq²(a)=0 for its degree-one generator.
- Sq⁰(1)=1 and Sq^a(1)=0 for a>0.
- The degree-one generator of S¹ squares to zero, so Sq¹ is zero there.


### From TauCetiRoadmap.CharacteristicClasses

Consume §C3 item 2 for the topological mod-two Stiefel–Whitney classes of arbitrary finite-rank real bundles, their Whitney and pullback laws, and their relation to orientation and Euler classes, using §C2 for the native Thom and Gysin comparisons. Section 12.3 identifies the supplied tangent class with the real self-intersection γ and specializes its evaluation to surfaces; it does not construct a second characteristic-class theory.

## How to read the build

Layers 1–3 construct configuration covers, identify their cohomology and traces, and extract the weighted stable diagonal. Layers 4–5 construct the rational-homotopy and Fermat routes to the same double-loop product. Layers 6–8 consume the independent semialgebraic site and purity suppliers and establish the additional coefficient and finite-approximation conventions. Layers 9–10 use self-intersection to split support sequences and reconcile real and complement duality. Layers 11–13 supply affine, Lefschetz, Steenrod and near-top consequences. Layers 14–16 build cover sign systems, the corrected integral trace lift and circle obstruction, then equivariant transport and the common-lift chase. Each *Needs* line distinguishes the statement's carriers from the extra inputs to the displayed proof route. All theorem targets include their construction requirements; a proof by another route consumes only the inputs that route uses.


## Layer 1: configuration spaces and permutation covers

Use InverseGaloisAndArithmeticFundamentalGroups §IG.5.1 for configurations, discriminant opens, permutation torsors and complex comparison. Its ring-valued functor uses invertible differences; the supplier contract fixes the action and disc conventions for the subsequent cohomology calculations.

### Examples

For m=2 over ℂ the ordered space is ℂ×ℂ*, via (z₁,z₂)↦(z₁,z₂−z₁). Over ℤ, the distinct tuple (0,2) is excluded from the discriminant open since 2 is not a unit; over 𝔽₂ the tuple (0,1) is allowed. (BS §3, proof of Lemma 3.9, p.919, BS line 1197.)

### Dependencies

TauCetiRoadmap.InverseGaloisAndArithmeticFundamentalGroups §IG.5.1.

## Layer 2: arrangement cohomology and arithmetic traces

Split arrangement purity, root Frobenius cycle types, tensor characters and the configuration trace formula, with explicit compact-support and degree conventions.

### 2.1 Split arrangement purity

Let A be a finite arrangement of proper affine hyperplanes defined over 𝔽_q and split over 𝔽_q. For ℓ≠char 𝔽_q, H^a((A^m\⋃A)_Fqbar,ℚ_ℓ) is generated by logarithmic degree-one classes, vanishes for a>m, and geometric Frobenius acts as q^a. For PConf_m(A¹), m≥1, H_c^a vanishes outside m+1≤a≤2m. For m=0 only a=0 survives. The arrangement is split over 𝔽_q and ℓ is invertible in 𝔽_q. The configuration support assertion separates m=0 from m≥1. (CEF, Proposition 3.3, pp.19–20; BS proof of Lemma 2.8, p.907, CEF line 860.)

A proof can proceed as follows. Use deletion–restriction and residue maps to generate arrangement cohomology in degree one. The dlog classes are ℚ_ℓ(−1); products give Frobenius q^a. For configurations split off translation A¹ and use the dimension m−1 normalized complement, then duality.

**Checks.**

- The compact-support range differs from the ordinary range; m=1 has H_c² only.
- For the empty arrangement in affine m-space, ordinary H⁰=ℚ_ℓ and H_c²ᵐ=ℚ_ℓ(−m); no positive ordinary degree survives. For PConf₂≅ℂ×ℂ*, the ordinary ranks are 1,1 in degrees 0,1 and compact ranks are 1,1 in degrees 4,3. Geometric Frobenius on H¹(𝔾_m) is q, whereas arithmetic Frobenius is q⁻¹.

*Needs:* TauCetiRoadmap.InverseGaloisAndArithmeticFundamentalGroups §IG.5.1; TauCetiRoadmap.AlgebraicTopology Stage 6; TauCetiRoadmap.EtaleDualityAndPerverseSheaves §§3.5–3.8.

### 2.3 Signed tensor permutation character

For a characteristic-zero field E, an N-dimensional E-space V, and σ∈S_m, the character of V^⊗m⊗sgn^ε_n is `N^(c(sigma))`sgn(σ)^ε_n, with full cycle count c. Apply the supplied invariants-character identity to any additional finite-dimensional S_m-module W; the new calculation here is the permutation-tensor character. (BS, Lemma 7.4 proof, p.942, BS line 2279.)

A proof can proceed as follows. Use a tensor basis: fixed tensors have one freely chosen basis index per cycle. Average the diagonal action to project onto invariants; use real-valued self-dual S_m characters.

**Checks.**

- Check the identity, a transposition, and m=0; N=0,m=0 gives the tensor unit.
- For m=2 and N=2 the identity trace is 4 and the transposition trace is 2s_n. For a 3-cycle it is 2, while the identity on three letters has trace 8. For m=N=0 the tensor unit has trace 0⁰=1.

*Needs:* Tau Ceti `TauCeti.FiniteField.fullCycleType_eq_map_natDegree_normalizedFactors`; TauCetiRoadmap.AlgebraicTopology Stage 5.

### 2.4 Twisted configuration trace formula

For a finite-dimensional characteristic-zero S_m representation T with character χ, `sum_(f monic squarefree,deg f=m) chi(Frob_f)=sum_a (-1)^a q^(m-a) <chi,H^a(PConf_m(CC),QQ)>=sum_i (-1)^(m-i) q^i <chi,H_c^(m+i)(PConf_m(CC),QQ)>`. Interpret rational characters after scalar extension to ℚ_ℓ; all sums are finite. T is a finite-dimensional characteristic-zero S_m representation. All arithmetic-to-Betti comparisons respect the finite-cover local system. (CEF, Theorem 3.7, pp.21–22; BS Lemma 7.4 proof, p.942, CEF line 964.)

A proof can proceed as follows. Descend the ordered torsor representation to the unordered finite-field configuration local system. Apply the compact trace formula and finite-cover descent; use purity and Poincaré duality to obtain the ordinary formula. Reindex compact degree a=m+i only after duality.

**Checks.**

- m=1 and trivial T gives q; m=0 gives 1. The first displayed cohomology is ordinary.
- For trivial coefficients, m=0 gives 1, m=1 gives q, and m=2 gives q²−q (values 2 and 6 at q=2 and q=3) from ordinary ranks 1,1. Using compact H² in the m=1 ordinary-weight formula would give q⁻¹ instead of q.

*Needs:* §2.1; Tau Ceti `TauCeti.FiniteField.fullCycleType_eq_map_natDegree_normalizedFactors`; §2.3; TauCetiRoadmap.EtaleDualityAndPerverseSheaves §§3.5–3.8; TauCetiRoadmap.EtaleDualityAndPerverseSheaves §6.5.

### Examples

With m=2 and trivial coefficients the count is q²−q, from ordinary degrees 0 and 1. With m=0 the empty tensor and constant polynomial both contribute 1. Fixed points of Frobenius count as linear irreducible factors. (CEF Theorem 3.7, pp.21–22, CEF line 964; BS Lemma 7.4, pp.942–943, BS line 2250.)

### Dependencies

TauCetiRoadmap.InverseGaloisAndArithmeticFundamentalGroups §IG.5.1; TauCetiRoadmap.AlgebraicTopology Stage 6; TauCetiRoadmap.EtaleDualityAndPerverseSheaves §§3.5–3.8; Tau Ceti `TauCeti.FiniteField.fullCycleType_eq_map_natDegree_normalizedFactors`; TauCetiRoadmap.AlgebraicTopology Stage 5; §2.1; §2.3; TauCetiRoadmap.EtaleDualityAndPerverseSheaves §6.5.

## Layer 3: euler exponents and stable configuration diagonals

Integral Euler factorization, Möbius inversion, weighted squarefree products and the stable diagonal identity in locally finite formal power series.

### 3.1 Signed Witt–Euler exponents

Define the signed Euler exponents for n,N≥0 by constructing the unique sequence of integers e_r(n,N), indexed by r≥1, for which `prod_(r>=1) (1-T^r)^(-e_r)=1+s_n*N*T` in ℤ[[T]]. Here s_n=−1 for even n and +1 for odd n, including n=0. Products mean stabilization of each coefficient. The simple acceptance definition `eulerExponent` is the integral Möbius quotient; prove its divisibility and agreement with this integral factorization before using that quotient as an exponent. (BS, Definition 7.3, p.941, BS line 2199.)

A proof can proceed as follows. At degree r the new factor changes the coefficient by exactly e_r. Successive coefficient cancellation constructs integers without division, and the first differing coefficient proves uniqueness. Compare its logarithmic derivative with the Möbius formula of §3.2.

The construction has the following API, with the hypotheses of this section.

- The Euler product is the stated linear series, in ℤ[[T]].
- Any integer sequence with the same product agrees at every positive index.
- e_1,…,e_s depend only on coefficients through degree s; parity n+2 gives the same sequence.
- Solve the degree-r coefficient after fixing e_1,…,eᵣ₋₁; the new exponent is an integer and removes that coefficient uniquely.
- e_1=s_nN; only positive indices enter the product.

**Checks.**

- Never define an integer sequence by a rational quotient without proving divisibility.
- N=0 implies all e_r=0.
- For even n and N=1, e_1=−1 and e_r=0 for r>1.
- For odd n and N=1, e_1=1,e_2=−1, and all higher terms vanish.

*Needs:* Mathlib `ArithmeticFunction.sum_eq_iff_sum_smul_moebius_eq`.

### 3.2 Möbius formula for Euler exponents

For r≥1, `e_r(n,N)=-(1/r) sum_(a | r) mu(a)((-1)^n*N)^(r/a)`, as an equality in Q whose right side is integral. (BS, Equation (7.2), pp.941–942, BS line 2242.)

A proof can proceed as follows. Take formal logarithmic derivatives to obtain `sum_(d | r) d*e_d=-((-1)^n*N)^r`. Use the pinned divisor-sum Möbius inversion and uniqueness of the integral recursion.

**Checks.**

- Check r=1,2,3 for both parities, e.g. n even,N=2 gives −2,−1,−2.
- For even n and N=2, the Möbius numerators at r=1,2,3 are −2,−2,−6, giving exponents −2,−1,−2. For odd n they are 2,−6,6, giving 2,−3,2. The index r=0 is excluded from the quotient identity; `eulerExponent` assigns zero there.

*Needs:* §3.1; Mathlib `ArithmeticFunction.sum_eq_iff_sum_smul_moebius_eq`.

### 3.3 Weighted squarefree Euler product

With c=s_nN and formal U, `sum_(f monic squarefree) c^(#irreducible factors(f))*U^(deg f)=prod_(P monic irreducible) (1+c*U^(deg P))=prod_(r>=1) (1-q*U^r)^(-e_r(n,N))` over 𝔽_q. Each coefficient uses finitely many factors. (BS, Lemma 7.4 proof, p.943, BS line 2288.)

A proof can proceed as follows. Unique monic factorization identifies the squarefree sum with ∏_P(1+s_nNU^deg P). Substitute the one-variable exponent identity into each prime factor. Count degree-a monic polynomials by their a coefficients, obtaining qᵃ; this gives `prod_P (1-T^(deg P))^(-1)=sum_(a>=0) q^a*T^a=(1-q*T)^(-1)`. Rearrangement is justified coefficientwise by finiteness of monic polynomials in each degree.

**Checks.**

- The weight counts linear factors too; N=0 leaves only the constant polynomial; n even,N=1 gives 1−qU.
- For c=1 the product is (1−qU²)/(1−qU), with first coefficients 1,q,q²−q. For c=−1 it is 1−qU. For c=0 only the monic constant 1 contributes, with weight 0⁰=1.

*Needs:* §3.1; Tau Ceti `TauCeti.FiniteField.fullCycleType_eq_map_natDegree_normalizedFactors`; Mathlib `Polynomial.Monic`; the monic-polynomial coefficient count in §3.3; Mathlib `UniqueFactorizationMonoid.normalizedFactors`; Tau Ceti `TauCeti.FiniteField.fullCycleType_eq_map_natDegree_normalizedFactors`.

### 3.4 Twisted configuration multiplicities

For n,N,m≥0 and integer i, let T=V^⊗m⊗sgn^ε_n, dim V=N. Then `dim((H_c^(m+i)(PConf_m(CC),QQ) tensor T)^(S_m))=(-1)^(mn+i)[q^i*U^m] prod_(r>=1) (1-q*U^r)^(-e_r(n,N))`; interpret coefficients with i<0 as zero. (BS, Lemma 7.4, pp.942–943, BS line 2250.)

A proof can proceed as follows. The twisted root character is `(-1)^((n-1)*m)*c^(c(sigma))`. Compare coefficients of the polynomial identity in q from the trace formula, varying q over prime powers to identify coefficients.

**Checks.**

- The result is nonnegative despite the signed product; m=0 gives degree zero only.
- For m=1, the only compact group is degree 2 of dimension N; the coefficient of qU is s_nN and the external sign is s_n, giving N. For m=0, i=0 both sides are 1, and for i≠0 both are 0.

*Needs:* §2.4; §2.3; §3.3.

### 3.5 Stable configuration diagonal

Let n≥4,j,d,N≥0 and d(n−3)≥j. Then `sum_(m=0)^d dim((H_c^(mn-m-j)(PConf_m(CC),QQ) tensor V^(tensor m) tensor sgn^(epsilon_n))^(S_m))=[t^j] prod_(r>=1) (1-(-t)^(r*(n-2)-1))^(-e_r(n,N))`. n≥4 and j,d,N≥0. d(n−3)≥j. (BS, Corollary 7.5 and equation (7.3), pp.943–944, BS line 2322.)

A proof can proceed as follows. Take the weighted diagonal i=m(n−2)−j of the bivariate identity. The support lower bound excludes m(n−3)>j; hence truncating at d does not change the coefficient. Use t=q⁻¹ only on the extracted diagonal; the positive exponents r(n−2)−1 make the resulting product locally finite.

**Checks.**

- This is an equality after diagonal extraction, not equality of the full bivariate series. Check j=0 and d=0.
- For n=4, N=1 the series is 1+t, so the j=1 diagonal has value 1 already at d=1. For n=5,N=1 it begins 1+t²+t⁴+t⁵; for j=2,d=1 both sides are 1. For j=d=0 both sides are 1.

*Needs:* §3.4; §2.1.

### Examples

For even n,N=2, e₁,e₂,e₃=−2,−1,−2; for odd n,N=2 they are 2,−3,2. At n=4,N=1 the stable series is 1+t; at n=5,N=1 it is (1+t⁵)/(1−t²). (BS equation (7.2), pp.941–942, BS line 2242; Corollary 7.5, pp.943–944, BS line 2322.)

### Dependencies

Mathlib `ArithmeticFunction.sum_eq_iff_sum_smul_moebius_eq`; §3.1; Tau Ceti `TauCeti.FiniteField.fullCycleType_eq_map_natDegree_normalizedFactors`; Mathlib `Polynomial.Monic`; the monic-polynomial coefficient count in §3.3; Mathlib `UniqueFactorizationMonoid.normalizedFactors`; Tau Ceti `TauCeti.FiniteField.fullCycleType_eq_map_natDegree_normalizedFactors`; §2.4; §2.3; §3.3; §3.4; §2.1.

## Layer 4: tame fibres and rational homotopy

Tameness, sphere-bouquet topology, Hilton basic products, rational spheres and a finite-type loop model. Homotopy groups and loop shifts use their native carriers.

### 4.1 Tame complex polynomial

For a complex polynomial f:ℂⁿ→ℂ use the complex-coordinate gradient (∂f/∂z_i) with its Euclidean norm. Define tameness by requiring that there are a compact neighbourhood K of its critical locus and ε>0 with ‖∇f(z)‖≥ε outside K. If its degree k≥2 leading homogeneous part cuts out a smooth projective hypersurface, then for sufficiently large ‖z‖ one has ‖∇f(z)‖≥c‖z‖ᵏ⁻¹ for some c>0, so f is tame. (BROUGHTON, Definition 3.1, p.225; Proposition 3.2(b), p.226; BS p.944, BROUGHTON line 354.)

A proof can proceed as follows. Take the positive minimum of the norm of the leading gradient on the unit sphere, using Euler’s homogeneous identity and projective smoothness. Bound the lower-degree gradient terms uniformly and absorb them for large radius.

The construction has the following API, with the hypotheses of this section.

- Tameness is the stated eventual positive gradient lower bound with a compact critical neighbourhood.
- Replacing f by f−a preserves tameness.
- The projective leading-part condition supplies an explicit positive bound outside a ball.
- Pointwise equal polynomial functions have equivalent tameness predicates; the compact witness is not part of the polynomial object.
- A compact critical neighbourhood and an exterior positive gradient bound prove tameness.

**Checks.**

- A nonconstant affine linear polynomial is handled separately, with constant nonzero gradient.
- ∑z_i^k−1 is tame for k≥2.
- A nonconstant linear f is tame and has contractible fibres.
- f(x,y)=x²y−x has no critical point but is not tame: x=t,y=1/(2t) gives gradient (0,t²) while ‖(x,y)‖→∞ as t→0.

*Needs:* TauCetiRoadmap.GeometricTopology Layer 1; TauCetiRoadmap.DifferentialGeometry Layers 2–3.

### 4.2 Tame fibre bouquet theorem

For tame f:ℂ^n→ℂ, n≥2, and a regular value a, the fibre f⁻¹(a) has the homotopy type of a finite wedge of N spheres Sⁿ⁻¹, with N the total sum of local Milnor numbers of f. A nonconstant linear f gives N=0. f is tame and a is a regular value; n≥2. (BROUGHTON, Theorem 1.2, p.219; §4, pp.228–232; BS Lemma 7.6 proof, p.944, BROUGHTON line 115.)

A proof can proceed as follows. Use the gradient-controlled flow to exclude changes at infinity, and semialgebraic local retractions near the finitely many critical fibres. Construct the local Milnor fibre at each isolated critical point and its Milnor number, using a sufficiently small ball and a nearby regular value. Prove the local fibration, conic-neighbourhood and Morse perturbation results, then attach the vanishing thimbles along paths to critical values and identify the resulting cell ranks with the sum of those local numbers. Tameness makes the critical locus compact algebraic, hence finite. Use connectivity, cellular homology and Whitehead to obtain the wedge equivalence.

**Checks.**

- Conclude a homotopy equivalence, not just an isomorphism of homology.

*Needs:* §4.1; TauCetiRoadmap.AlgebraicTopology Stage 4; TauCetiRoadmap.AlgebraicTopology Stage 8; TauCetiRoadmap.RealAlgebraicGeometry Layer 3 and Layer 6 (the semialgebraic-geometry supplier contract); TauCetiRoadmap.DifferentialGeometry Layer 3; local Milnor fibres, thimbles and controlled attachment in this section.

### 4.3 Hilton decomposition of a sphere wedge

For n≥3, N≥0 and i≥2, the homotopy group π_i(∨_N Sⁿ⁻¹) is the direct sum, over basic Whitehead words of weight r≥1, of π_i(Sʳ⁽ⁿ⁻²⁾⁺¹). The number of weight-r words is `L_r(N)=(1/r) sum_(a | r) mu(a)*N^(r/a)`. Only finitely many summands contribute in each degree. The wedge is connected and simply connected, so its degree-one group is trivial. (HILTON, Theorem A, pp.154–155, and Corollary 4.10, p.162 (uncertified publisher locator).)

Use `sphereBouquet` for the specialization of native `TauCeti.WedgeSum` to N copies of a specified pointed unit sphere. Its carrier is the supplied quotient, including the extra point for N=0.

- The wedge point is the common image of the chosen sphere points; a non-base point keeps its summand index.
- A family of pointed continuous maps induces a pointed map of bouquets and respects composition.
- For N=1 the inclusion is a pointed homeomorphism; for N=0 the carrier is a singleton.

A proof can proceed as follows. Construct the basic Whitehead products and their characteristic sphere maps, and compare the resulting weak product of looped spheres with the looped wedge. Connectivity makes the comparison finite in each homotopy degree. Count the basic words by the Möbius identity. The ordinary loop-fibration spectral sequence is the AlgebraicTopology Stage 5 item 5 supplier.

**Checks.**

- N=1 gives only weight one, so the model is the original sphere.
- N=0 gives the single wedge point and zero positive homotopy groups.
- Two S² summands give two degree-two homology generators; their smash S⁴ has no degree-two homology.
- For N=2 the basic-word counts in weights 1,2,3 are 2,1,2. With n=3 the weight-two bracket has sphere dimension 3; a smash of two S² would have dimension 4 and the wrong π₃ rank.

*Needs:* §4.2; TauCetiRoadmap.AlgebraicTopology Stage 8; §3.2; TauCetiRoadmap.AlgebraicTopology Stage 5 item 5.

### 4.4 Rational homotopy of spheres

For s≥2 and i≥2, π_i(S^s)⊗ℚ is ℚ for i=s, additionally Q for i=2s−1 when s is even, and zero otherwise. (SERRE, Chapter V §3 Proposition 3, pp.492–494; §6 Corollary 2, p.498.)

The acceptance abbreviation `unitSphere` is the subspace sphere of radius 1 centered at 0 in real Euclidean space of dimension s+1.

- Membership is the native norm-one condition; the topology is the native subspace topology.
- Orthogonal linear isometries restrict to sphere homeomorphisms.
- The same sphere is used in the bouquet and Fermat homotopy equivalences, so the index s is its topological dimension.

**Checks.**

- For s=0 the norm-one equation in ℝ has exactly the points −1 and 1; using ambient dimension s would give an empty sphere.
- For s=1, (1,0) has norm 1 and (0,0) has norm 0, separating membership from the unit ball.
- For s=2 the native sphere is S², with rational π₂ and π₃ both of rank 1; its one-point suspension has the S³ ranks of this theorem.

The native unit-sphere specialization is `rationalSphereRanks`, for sphere dimension s+2 and homotopy degree k+2 with s,k≥0; it asserts finite dimensionality as well as the complete rank formula.

A proof can proceed as follows. Apply the ordinary loop-fibration spectral sequence and rational Hurewicz to the odd-sphere calculation. For even sphere dimension use the unit-tangent sphere fibration to identify the additional degree 2s−1. Prove finite generation, so the rational groups have the stated finite dimensions.

**Checks.**

- S² has ranks one in degrees 2 and 3; S³ has rank one only in degree 3.
- For the native `unitSphere`, S⁰ has two points and S¹ is a circle, fixing the dimension convention. S² has rational ranks 1 in degrees 2,3; S³ has rank 1 only in degree 3; in both cases all larger degrees outside the stated list have rank 0.

*Needs:* §4.3; TauCetiRoadmap.AlgebraicTopology Stage 8; TauCetiRoadmap.AlgebraicTopology Stage 5 item 5.

### 4.5 Rational wedge ranks in Euler notation

For X≃∨_N Sⁿ⁻¹, n≥3, set k=n−2. At i=rk+1 (r≥1), dim_ℚ(π_i(X)⊗ℚ)=(−1)ʳᵏ⁻¹e_r(n,N), and all remaining degrees i≥2 have rank zero. (BS, Lemma 7.6 proof, pp.944–945, BS line 2359.)

The acceptance theorem `rationalBouquetRanks` takes a homotopy equivalence from an arbitrary space Y to the native bouquet and any base point of Y, and states the full divisibility/rank formula with finite dimensionality.

A proof can proceed as follows. Sum the Hilton sphere contributions. If k is odd, include the extra rational class of every even-dimensional sphere in the twice-weight-minus-one degree. Rewrite the resulting Witt sums in signed Euler notation, separating odd and even divisors.

**Checks.**

- n=3,N=1 has ranks one in degrees 2 and 3; n=4,N=1 only in degree 3.
- For n=3,N=2, ranks in degrees 2,3,4 are 2,3,2. For N=0 all rational groups vanish. The native empty `sphereBouquet` is a point; a single summand gives the same sphere, and two S² summands have H² of rank 2 rather than rank 1.

*Needs:* §4.3; §4.4; §3.2.

### 4.6 Finite-type rational double-loop model

If X is simply connected of finite rational type and Ω²X is connected, then the rational cohomology of Ω²X is the free graded-commutative algebra on `directSum_(i>=1) (pi_(i+2)(X) tensor QQ)^dual` placed in degree i, provided the loop spaces have nilpotent finite-type CW models. X is simply connected and of finite rational type. Ω²X is connected and both loop spaces admit nilpotent finite-type CW models. (SULLIVAN, Introduction pp.269–270; §11, pp.311–312; BS p.945.)

A proof can proceed as follows. Construct minimal models for nilpotent finite-type CW spaces and identify their indecomposables with dual rational homotopy. A connected rational H-space has a model with zero differential. Apply this to the based double loop, retaining its connectedness and the specified finite-type nilpotent models; no assertion that an arbitrary space itself has zero differential is used.

**Checks.**

- The generator space is dual; connectivity of Ω²X is a hypothesis.
- For X=S³ the double-loop cohomology is exterior on one degree-one generator. For X=S⁴ it is polynomial on a degree-two generator tensored with exterior on a degree-five generator. X=S² has π₀Ω²X=ℤ and fails the connectedness hypothesis.

*Needs:* §4.5; Tau Ceti `HomotopyGroup.zerothHomotopyEquiv`; Tau Ceti `HomotopyGroup.piLoopSpaceMulEquiv`; TauCetiRoadmap.AlgebraicTopology Stage 4.

### Examples

The polynomial x²y−x has gradient (2xy−1,x²). On x=t,y=1/(2t), for nonzero real t tending to 0, the gradient is (0,t²) while the point escapes every compact set. It is not tame despite having no critical point. In contrast, ∑z_iᵏ−1 has smooth leading projective hypersurface for k≥2. (BROUGHTON Definition 3.1 and following examples, pp.225–226, BROUGHTON line 354.)

### Dependencies

TauCetiRoadmap.GeometricTopology Layer 1; TauCetiRoadmap.DifferentialGeometry Layers 2–3; §4.1; TauCetiRoadmap.AlgebraicTopology Stage 4; TauCetiRoadmap.AlgebraicTopology Stage 8; TauCetiRoadmap.RealAlgebraicGeometry Layer 3 and Layer 6 (the semialgebraic-geometry supplier contract); TauCetiRoadmap.DifferentialGeometry Layer 3; local Milnor fibres, thimbles and controlled attachment in this section; §4.2; §3.2; TauCetiRoadmap.AlgebraicTopology Stage 5 item 5; §4.3; §4.4; §4.5; Tau Ceti `HomotopyGroup.zerothHomotopyEquiv`; Tau Ceti `HomotopyGroup.piLoopSpaceMulEquiv`.

## Layer 5: double loops and fermat comparisons

The full double-loop Betti formula, finite joins, the explicit Fermat retraction and the homotopy-group vanishing needed for the mapping-space comparison.

### 5.1 Double-loop Betti series

For n≥4 and X≃∨_N Sⁿ⁻¹, `sum_(j>=0) dim_QQ H^j(Omega^2 X,QQ)*t^j=prod_(r>=1) (1-(-t)^(r*(n-2)-1))^(-e_r(n,N))`. In the range d(n−3)≥j its coefficient is the stable configuration diagonal in Layer 3. n≥4, N≥0 and X≃∨_N Sⁿ⁻¹. (BS, Lemma 7.6, pp.944–945, BS line 2354.)

For n≥4 and r≥1, define `doubleLoopFactor` by substituting (−1)^(r(n−2))t^(r(n−2)−1) in the integral binomial series with exponent −e_r(n,N), then extending its coefficients to ℚ.

- In the range n≥4,r≥1 its constant coefficient is 1 and its first possible positive degree is r(n−2)−1.
- It is the formal integer-power expansion of 1−(−t)^(r(n−2)−1), with exponent −e_r, including positive, negative and zero exponents.
- A coefficient of degree j in the infinite product equals that in its first j factors; no analytic convergence or evaluation at a scalar is involved.

The acceptance theorem `doubleLoopBetti` takes an actual homotopy equivalence of a space Y with `sphereBouquet`, an arbitrary base point of Y, n=s+4 and any j≥0. It includes finite dimensionality. The coefficient is taken from the finite product of `doubleLoopFactor` for 1≤r≤j: every later factor starts above degree j.

A proof can proceed as follows. Connectivity follows from π₂X=0. Use the preceding model and ranks: an even-degree generator gives (1−t^a)⁻¹, an odd-degree generator gives 1+t^a. Multiply degreewise; the growth of degrees ensures each coefficient is finite.

**Checks.**

- n=4,N=1 gives 1+t; n=5,N=1 gives (1+t⁵)/(1−t²). For n=3,N>0 the full double loop has infinitely many components, so this formula is not asserted.
- The factors `doubleLoopFactor` for n=4,N=1 give 1+t at r=1 and 1 for r>1.
- For n=5,N=1 the first two factors are (1−t²)⁻¹ and 1+t⁵.
- At n=4,r=2 the first possible degree is 3, so it cannot change degree 2. The definition takes the hypotheses n≥4 and r≥1 explicitly, excluding substitution at a nonzero constant after truncated subtraction.

*Needs:* §4.6; §3.5.

### 5.2 Finite joins and sphere bouquets

For n≥2 and nonempty finite discrete sets A_1,…,A_n with cardinalities k_i, their topological join has the homotopy type of a wedge of ∏ᵢ(k_i−1) copies of Sⁿ⁻¹; consequently it is (n−2)-connected. A singleton factor makes it contractible. Empty factors are outside this statement. (PHAM, Part I §2, pp.337–338; finite CW join deduction from its simplex model, PHAM line 183.)

A proof can proceed as follows. Realize the join as a finite CW complex of simplices with at most one vertex of each colour. Induct on the number of colours: collapse one cone and use the cofibration quotient to get a wedge of k_n−1 suspensions of the previous join. Use Whitehead and cellular homology, including n=2 where the join is a connected complete bipartite graph.

**Checks.**

- For two two-point sets the join is S¹; three give S²; a singleton factor is contractible.

*Needs:* TauCetiRoadmap.InverseGaloisAndArithmeticFundamentalGroups §IG.5.1; TauCetiRoadmap.AlgebraicTopology Stage 4; TauCetiRoadmap.AlgebraicTopology Stage 8.

### 5.3 Fermat fibre and finite join

For k≥2,n≥2, X={z∈ℂ^n:∑z_i^k=1} deformation retracts onto the subspace {z: z_i^k≥0 real for every i}, canonically homeomorphic to the join of n copies of μ_k. Moreover {z:∑z_i^k∈(0,∞)}≅X×(0,∞) by positive-real scaling. (PHAM, Part I §2, deformation-retraction lemma, pp.337–338, PHAM line 207.)

The elementary carrier abbreviations have the following APIs, with topology inherited from ℂⁿ and then from the fibre.

- A tuple belongs to `fermatFiber` exactly when its sum of kth powers is 1; equality is coordinate equality.
- Coordinate permutations and multiplication of a coordinate by a kth root of unity preserve the fibre.
- The inclusion of the fibre in ℂⁿ is continuous, and the same inclusion is used in the retraction theorem.
- Membership in `fermatSkeleton` additionally requires zero imaginary part and nonnegative real part for every coordinate power.
- Skeleton coordinates give nonnegative barycentric weights summing to 1; positive weights retain a kth-root phase and zero weights identify all phases.
- The retraction fixes every skeleton point, and its inclusion followed by retraction is the identity of the skeleton.

**Checks.**

- At n=2,k=2, (1,0) has power sum 1 and belongs to both fibre and skeleton; (0,0) has power sum 0 and belongs to neither.
- The point (√2,i) has powers 2,−1 with sum 1. It belongs to the fibre and fails the skeleton's nonnegativity law.
- For n=0 the sum is 0, so the fibre is empty. For k=0,n=2 the sum is 2 and the fibre is empty; these total-definition values lie outside the k≥2,n≥2 theorem.

The native subtype is `fermatFiber`; `fermatSkeleton` is its subset of points whose coordinate powers are real and nonnegative. The full strong retraction is `fermatDeformationRetraction`, and its bouquet consequence with N=(k−1)ⁿ is `fermatBouquet`.

A proof can proceed as follows. View X as the branched root cover of ∑u_i=1. Retract that hyperplane with its coordinate hyperplanes onto the positive simplex with its faces. Lift the compatible retraction continuously through the coordinate kth-root branches, obtaining the μ_k-equivariant finite simplicial join. Scale z by (∑z_i^k)^(−1/k) for the positive-value product homeomorphism.

**Checks.**

- A face with z_i=0 collapses the phase in precisely the join coordinate; no global choice of complex kth root is made.
- For `fermatFiber`, n=k=2 gives z₁²+z₂²=1 and a circle skeleton; the point (1,0) lies in it, while (√2,i) lies in the fibre but outside the skeleton since i²=−1. For n=3,k=2 the fibre has the type of S²; for n=2,k=3 the bouquet has (3−1)²=4 circles. At a zero coordinate all k phase choices give the same skeleton point, as required by the join relation.

*Needs:* §5.2; §4.1.

### 5.4 Fermat double-loop simple connectivity

For k≥2,n≥5 and X={∑z_i^k=1}, π₂X=π₃X=0. Therefore Ω²X is connected and simply connected, using the existing path-component and homotopy-shift equivalences. (BS, §7, Lemma 7.2, pp.940–941; connectivity deduction from PHAM Part I §2, BS line 2174.)

The acceptance theorem is `fermatDoubleLoopSimplyConnected`, on native generalized double loops at every point of `fermatFiber`.

A proof can proceed as follows. The join is (n−2)-connected with n−2≥3. Transport vanishing across the fibre homotopy equivalence. Apply the pinned zeroth-homotopy equivalence and π₁(Ω²X)≃π₃X.

**Checks.**

- n=4,k=2 gives X≃S³ and π₁Ω²X≅ℤ, so n≥5 is required for simple connectivity.

*Needs:* §5.3; Tau Ceti `HomotopyGroup.zerothHomotopyEquiv`; Tau Ceti `HomotopyGroup.piLoopSpaceMulEquiv`; TauCetiRoadmap.AlgebraicTopology Stage 8.

### Examples

The joins of two and three two-point sets are S¹ and S². Fermat fibres with k=2 therefore have the type of Sⁿ⁻¹. At n=4 their double loop has π₁=ℤ; n≥5 is needed for simple connectivity. (PHAM Part I §2, pp.337–338, PHAM lines 175, 207.)

### Dependencies

§4.6; §3.5; TauCetiRoadmap.InverseGaloisAndArithmeticFundamentalGroups §IG.5.1; TauCetiRoadmap.AlgebraicTopology Stage 4; TauCetiRoadmap.AlgebraicTopology Stage 8; §5.2; §4.1; §5.3; Tau Ceti `HomotopyGroup.zerothHomotopyEquiv`; Tau Ceti `HomotopyGroup.piLoopSpaceMulEquiv`.

## Layer 6: semialgebraic equivariant carriers

Use the semialgebraic loci, equivariant derived cohomology, pair/support sequences, free descent, dimension bound and real comparison from MotivesAndAlgebraicCycles §7.6a with the exact conventions and checks of its supplier contract.

### Examples

For Spec R the pair group is zero and supported cohomology is the whole group. For Spec C considered over R, the complex locus is a free orbit of two points and the real locus is empty. Its equivariant cohomology is that of a point. (BW v3 §1.1.3, p.10, BW line 372.)

### Dependencies

TauCetiRoadmap.MotivesAndAlgebraicCycles §7.6a.

## Layer 7: sign twists and fixed-locus coordinates

Sign coefficients, the real-complex sequence, the sign class, pinned periodic cochains, canonical real-locus coordinates and their Bockstein formulas.

### 7.2 Fundamental conjugation class

Let ω∈H_G¹(pt,ℤ(1))≅𝔽₂ be the nonzero class and pull it back to every G-space. The connecting maps in the real-complex sequences are cup product by ω, with twists incremented by one; 2ω=0. Its mod-two powers generate H_G^*(pt,𝔽₂)=𝔽₂[ω]. (BW v3, §1.1.2, p.10; §1.2.5, p.16, BW line 363.)

A proof can proceed as follows. Identify the extension class of the regular sequence in Ext¹. Use the derived/Yoneda composition convention for the connecting map and compute the cyclic resolution.

**Checks.**

- At a point ω and all its mod-two powers are nonzero.

*Needs:* TauCetiRoadmap.MotivesAndAlgebraicCycles §7.6a; the native cyclic resolution and the coefficient sequences of this layer.

### 7.3 Periodic C₂ cochain convention

Reuse the pinned cyclic cochain complex with differentials σ−1 in even degrees and 1+σ in odd degrees. Benoist’s 1−σ convention is chain isomorphic via multiplication `u_q=(-1)^(q(q+1)/2)` in degree q. For q>0, H^q(G,ℤ(j))=𝔽₂ when q≡j mod 2 and zero otherwise; H⁰ is ℤ for even j and zero for odd j. (B19, Equation (2.6), p.73; BW v3 §1.2.2, p.15, B19 line 399.)

A proof can proceed as follows. Check `u_(q+1)`(σ−1)=(1−σ)u_q in even degrees and `u_(q+1)`(1+σ)=(1+σ)u_q in odd degrees. Compute kernels and images of multiplication by 0 and ±2, then use the existing cyclic cohomology isomorphisms.

**Checks.**

- u_0,u_1,u_2,u_3 are 1,−1,−1,1; the comparison reduces to identity modulo 2.

*Needs:* TauCetiRoadmap.MotivesAndAlgebraicCycles §7.6a; Mathlib `Rep.FiniteCyclicGroup.homResolutionIso`; Mathlib `Rep.FiniteCyclicGroup.groupCohomologyIsoEven`; Mathlib `Rep.FiniteCyclicGroup.groupCohomologyIsoOdd`.

### 7.5 Twisted integral fixed-locus coordinates

Extend the supplied constant integral coordinates to every locally constant rank-one free ℤ-sheaf L on Y with trivial G-action: `H_G^i(Y,L(j))`≅`directSum_(p+q=i) H^p(Y,L tensor H^q(G,ZZ(j)))`. Reduction modulo two followed by projection to p≡i−j mod 2 is an isomorphism if j is odd or i>dim Y. The q=0 term for even j is integral. Multiplication by ω preserves every reduced component in its allowed parity as i,j both increase by one. G acts trivially on Y and on the untwisted rank-one free local system L. The parity-projection isomorphism additionally assumes odd j or i>dim Y. (BW v3, §1.2.2, equations (1.29)–(1.32), p.15, BW line 553.)

A proof can proceed as follows. Split the integral periodic complex into its rank-one and two-term multiplication-by-two blocks. Tensor with L and compare the resulting cohomology and reduction maps; naturality gives the ω compatibility.

**Checks.**

- At a point i=0,j=0 yields ℤ, not 𝔽₂. Do not infer an integral ring convolution formula from this additive decomposition.

*Needs:* §7.3; TauCetiRoadmap.MotivesAndAlgebraicCycles §7.6b; the native cyclic resolution and the coefficient sequences of this layer.

### 7.6 Twisted Bockstein and component formula

For the same L, let β_L:H^p(Y,𝔽₂)→Hᵖ⁺¹(Y,𝔽₂) be the boundary of 0→𝔽₂→L/4→𝔽₂→0. For a∈H_G^k(Y,𝔽₂) with components a_p, the ordinary equivariant integral Bockstein followed by mod-two reduction has component b_i=β_ℤ(aᵢ₋₁)+(k−i)a_i, with absent components zero. Reduction of integral L(j) classes is recovered from its parity coordinates using 1+β_L. (B19, Equation (2.8), p.74; BW v3 §1.2.3, equation (1.33), pp.15–16, B19 line 430.)

A proof can proceed as follows. Calculate the boundary using a mod-four lift in the periodic double complex. Separate the ordinary coefficient boundary from the cyclic differential contribution k−i, then compare with the L-twisted decomposition.

The construction has the following API, with the hypotheses of this section.

- β_L is the connecting map of the rank-one mod-four coefficient extension.
- Pullback of L and cohomology classes commutes with β_L.
- The displayed component formula and 1+β_L formula fix the boundary and reduction conventions.
- For a mod-two cocycle, lift locally to L/4, take the coboundary and divide by the kernel inclusion; changing lifts changes the result by a coboundary.
- β_L is additive and sends zero to zero; with trivial L it is the ordinary mod-four Bockstein.

**Checks.**

- For Y=pt the reduction of the integral Bockstein of ω^k is k·ωᵏ⁺¹; β_L is retained when L has nontrivial monodromy.
- β_ℤ on ordinary H⁰(pt,𝔽₂) is zero; equivariant β of ω has nonzero reduction ω².
- For trivial L on S¹, β_L(1)=0.
- For the nontrivial rank-one L on S¹, β_L(1) is its nonzero mod-two monodromy class.

*Needs:* §7.5; TauCetiRoadmap.MotivesAndAlgebraicCycles §7.6b; the native cyclic resolution and the coefficient sequences of this layer.

### Examples

At a point the untwisted integral groups in degrees 0,1,2 are ℤ,0,𝔽₂; the sign groups are 0,𝔽₂,0. Modulo two there is one 𝔽₂ in each nonnegative degree. On a circle, a nontrivial sign local system has β_L(1) equal to the nonzero degree-one class. (BW v3 §§1.2.1–1.2.3, pp.14–16, BW lines 519, 553, 581; B19 §2.2, pp.72–73, B19 line 362.)

### Dependencies

TauCetiRoadmap.MotivesAndAlgebraicCycles §7.6a; the native cyclic resolution and the coefficient sequences of this layer; Mathlib `Rep.FiniteCyclicGroup.homResolutionIso`; Mathlib `Rep.FiniteCyclicGroup.groupCohomologyIsoEven`; Mathlib `Rep.FiniteCyclicGroup.groupCohomologyIsoOdd`; §7.3; TauCetiRoadmap.MotivesAndAlgebraicCycles §7.6b; §7.5.

## Layer 8: orientation, exceptional image and gysin maps

Use the supplied semialgebraic orientation, duality, exceptional image and purity maps. This layer proves their finite Borel approximation formula with the descended coefficient system retained.

### 8.5 Semialgebraic finite Borel approximation

Let G=C₂ act on a semialgebraic V and antipodally on S^s. Descend the pullback of F to F_s on V_s=(V×S^s)/G. For invariant closed Z and Z_s=(Z×S^s)/G, H_G,Z^i(V,F)≅`H_(Z_s)^i(V_s,F_s)` for i<s, compatibly as s increases. This specializes the SchemeAndStackFoundations §2.23 finite-G Borel carrier; F_s need not be constant. (BW v3, §1.1.5, equation (1.17), pp.12–13, BW line 456.)

A proof can proceed as follows. Use the free quotient to descend the pulled-back sheaf. The sphere’s reduced cohomology vanishes below s, giving the stable comparison through the relative spectral sequence. Keep descent and orientation data when applying manifold duality to V_s.

**Checks.**

- For V=pt, V_s=RP^s; stability is claimed strictly below s, and a sign module descends to the nonconstant rank-one local system.
- At V=pt and s=1, the quotient is RP¹=S¹, whose integral H¹ is ℤ, while H¹(C₂,ℤ)=0. Agreement is therefore strict below s, not at s.

*Needs:* TauCetiRoadmap.MotivesAndAlgebraicCycles §7.6a; TauCetiRoadmap.MotivesAndAlgebraicCycles §7.6b; TauCetiRoadmap.SchemeAndStackFoundations §2.23; TauCetiRoadmap.RealAlgebraicGeometry Layer 3 and Layer 6 (the semialgebraic-geometry supplier contract).

### Examples

A real point included in ℙ¹ has real degree shift 1 and complex degree shift 2. Conjugation on one complex coordinate has determinant −1, and on two coordinates determinant +1. The sphere approximation at a point is RPˢ and agrees with group cohomology strictly below s. (BW v3 equations (1.17)–(1.22), pp.12–14, BW line 456.)

### Dependencies

TauCetiRoadmap.MotivesAndAlgebraicCycles §7.6a; TauCetiRoadmap.MotivesAndAlgebraicCycles §7.6b; TauCetiRoadmap.SchemeAndStackFoundations §2.23; TauCetiRoadmap.RealAlgebraicGeometry Layer 3 and Layer 6 (the semialgebraic-geometry supplier contract).

## Layer 9: fixed-locus maps and canonical splittings

Coordinate formulas, the real self-intersection class, its inverse, component separators and the canonical mod-two and parity-restricted integral support splittings.

### 9.1 Real-locus norm and pushforward coordinates

For trivial G-action, forgetting equivariance projects mod-two degree-i coordinates to H^i(Y,𝔽₂), the norm from ordinary cohomology is zero, and the connecting cup-ω map includes the existing coordinates. For a proper real map Y(R)→X(R) of dimension difference c, the equivariant mod-two pushforward acts by the ordinary real Gysin H^p(Y(R),𝔽₂)→Hᵖ⁺ᶜ(X(R),𝔽₂) on each coordinate. (BW v3, §1.2.4–1.2.6, pp.16–17, BW line 604.)

A proof can proceed as follows. Represent the real-complex maps on the periodic resolution and take the zero-differential mod-two decomposition. Use finite Borel pushforward with trivial action on the base to identify coordinatewise real Gysin.

**Checks.**

- The target real variety is X; the indexing uses c, not the complex shift 2c.
- On a fixed point, forgetful H_G⁰→H⁰ is the identity and the norm is multiplication by 2=0 modulo 2. Cup by ω sends 1 in degree 0 to ω in degree 1. For pt→RP¹ the real Gysin sends the p=0 coordinate to p=1, leaving the ω exponent fixed.

*Needs:* TauCetiRoadmap.MotivesAndAlgebraicCycles §7.6b; §7.2.

### 9.2 Real-locus self-intersection class

For smooth pure-d X/R and i:X(R)↪X(C), let s=i_*(1)∈H_G,X(R)^d(X(C),𝔽₂). Define γ_X=(γ_0,…,γ_d)∈⊕ₚ₌₀^dH^p(X(R),𝔽₂) as the coordinates of i*s after forgetting supports. Then γ_0=1 and γ_X is invertible in total ordinary cohomology; extend its inverse by zero beyond the finite cohomological dimension. (BW v3, Definition 1.4, Lemma 1.5 and Remark 1.6, pp.17–18, BW line 663.)

A proof can proceed as follows. Define the supported fundamental class by equivariant purity. Evaluate at every real point to compute its zeroth coordinate as the local normal fundamental class. The positive-degree ideal is nilpotent, so the finite geometric series gives a canonical inverse.

The construction has the following API, with the hypotheses of this section.

- The supported class s is the purity image of the unit on X(R).
- Restriction of s to real coordinates is γ_X and has zeroth coordinate the unit.
- γ_X·γ_X⁻¹=1 in total H*(X(R),𝔽₂), with finite sums in each coordinate.
- Two total classes agree iff all ordinary-degree coordinates agree; this makes the defining self-intersection characterization unique.
- γ_0=(γ⁻¹)_0=1; higher inverse coordinates are recursively the sums forced by γγ⁻¹=1.

**Checks.**

- The class is intrinsic; its total-degree convention is fixed by the equivariant degree d.
- For empty X(R), the total cohomology is the zero ring and the construction is its unique class.
- For a real point γ=1.
- For X=P² over ℝ, γ=1+a+a² on RP², so replacing γ by 1 loses the positive-degree self-intersection terms.

*Needs:* TauCetiRoadmap.MotivesAndAlgebraicCycles §7.6b.

### 9.3 Canonical mod-two support splitting

For every i≥0 and smooth pure-d X/R, 0→H_G,X(R)^i(X(C),𝔽₂)→H_G^i(X(C),𝔽₂)→H_G^i(U,𝔽₂)→0 is canonically split. The support retraction is: restrict to real coordinates, multiply by γ_X⁻¹, keep coordinates p≤i−d, and invert purity; negative cutoffs yield zero. For each semialgebraically connected real component V the resulting class s_V∈H_G^d(X(C),𝔽₂) restricts at a real point to its component’s indicator. (BW v3, Proposition 1.3 and equation (1.40), pp.17–18, BW line 653.)

A proof can proceed as follows. The composite of purity, restriction and multiplication by γ⁻¹ is identity on the support group. A retraction makes the support map injective and forces adjacent localization boundaries to vanish. Apply purity to the componentwise degree-zero indicator to obtain s_V.

**Checks.**

- The section of the complement quotient is the kernel of this retraction; disconnected real loci give distinct indicators.

*Needs:* §9.2; TauCetiRoadmap.MotivesAndAlgebraicCycles §7.6a; §9.1.

### 9.4 Parity-restricted integral support splitting

For j≡d−1 mod 2, 0→H_G,X(R)^i(X(C),ℤ(j))→H_G^i(X(C),ℤ(j))→H_G^i(U,ℤ(j))→0 has a canonical splitting compatible with mod-two reduction and the low-coordinate γ⁻¹ retraction. No such integral assertion is made in the other parity. X is smooth pure-d over R and j≡d−1 mod 2. (BW v3, Proposition 1.7, p.19, BW line 721.)

A proof can proceed as follows. Use purity to convert the support coefficients to an odd sign twist on the real locus. That support group is detected by its parity coordinates after reduction; build the retraction from the mod-two one. Check naturality of Bockstein and reduction to obtain the integral splitting.

**Checks.**

- For X=A¹, i=j=1 the wrong parity allows an infinite support group mapping into order-two ambient cohomology, ruling out an unrestricted splitting.

*Needs:* §9.3; §7.5; §7.6.

### 9.5 Low real-coordinate surjectivity

For smooth pure-d X/R and any i,j, the restriction followed by the fixed-integral parity projection surjects from H_G^i(X(C),ℤ(j)) onto `directSum_(0<=p<i-d, p == i-j (mod 2)) H^p(X(R),F_2)`. The cutoff is strict. In the derived support calculation the integral self-intersection is represented by x↦x·γ̄+β_or(x)·β_or(γ̄), with γ=γ̄+β_or(γ̄), on the parity/truncation objects of Proposition 1.8. (BW v3, Proposition 1.8 and Remark 1.9, pp.19–20, BW line 749.)

A proof can proceed as follows. Use the derived support morphism and its truncation to reduce to the fixed-locus Bockstein diagram. The positive-degree γ correction is triangular with identity leading term, hence invertible on the indicated finite window. Verify the barred-γ formula on that derived diagram; do not promote it to an unrestricted identity on an integral cohomology ring.

**Checks.**

- For i≤d the displayed direct sum is zero; the endpoint p=i−d is excluded.
- For i≤d the target is the zero group. At i=d+1 only p=0 can occur, and it occurs only if i−j is even. For d=2,i=4,j=1 the target has the p=1 coordinate but excludes p=2.

*Needs:* §9.4; §7.6; §9.2.

### Examples

On RP², H*(RP²,𝔽₂)=𝔽₂[a]/(a³), γ=1+a+a² and γ⁻¹=1+a. Their product is 1 modulo a³. The real affine line in its complexification has support H_G,ℝ¹(ℂ,ℤ(1))=ℤ but ambient H_G¹(ℂ,ℤ(1))=𝔽₂; this rules out an integral injection in the other parity. (BW v3 Remark 1.6 and §1.3.2, pp.18–19, BW lines 699, 717.)

### Dependencies

TauCetiRoadmap.MotivesAndAlgebraicCycles §7.6b; §7.2; §9.2; TauCetiRoadmap.MotivesAndAlgebraicCycles §7.6a; §9.1; §9.3; §7.5; §7.6; §9.4.

## Layer 10: complement duality and corrected localization

Relative/free-complement Poincaré duality, integral profinite duality, γ-corrected localization windows and their self-duality, with a named boundary trace.

### 10.1 Relative and complement duality

For smooth proper pure-d X/R, U=X(C)\X(R), and a finite G-module M, there is a trace H_G²ᵈ(X(C),X(R);ℚ/ℤ(d))→ℚ/ℤ and a perfect pairing H_G^i(X(C),X(R);M)×H_G²ᵈ⁻ⁱ(U,Hom(M,ℚ/ℤ(d)))→ℚ/ℤ. The Hom has the contragredient diagonal G-action. X is smooth proper pure-d and M is a finite G-module. (BW v3, Proposition 1.10, p.21, BW line 809.)

A proof can proceed as follows. Descend U to its free quotient and identify relative extension-by-zero sections with compact support there, using properness of X. Apply the finite-coefficient orientation duality to the 2d-dimensional quotient and identify its orientation twist as d. Obtain the trace from the same counit, ensuring the pairing is cup product followed by trace.

**Checks.**

- For X(R)=∅ this reduces to duality on the compact quotient X(C)/G.

*Needs:* TauCetiRoadmap.MotivesAndAlgebraicCycles §7.6a; TauCetiRoadmap.MotivesAndAlgebraicCycles §7.6b; §8.5.

### 10.2 Profinite integral complement duality

For a finitely generated G-module M and X as above, the profinite completion of H_G^i(X(C),X(R);M) is canonically the Pontryagin dual of the torsion group H_G²ᵈ⁻ⁱ(U,Hom(M,ℚ/ℤ(d))). Take the inverse system over finite-index G-submodules of M. The same smooth proper hypotheses hold and M is finitely generated. (BW v3, Remark 1.11(ii), p.21, BW line 829.)

A proof can proceed as follows. Apply finite duality to M/nM, use the coefficient exact sequences, and pass to the cofinal finite-index inverse/direct systems. Use finite generation to control the transition systems and identify the completion, retaining its topology.

**Checks.**

- For M=ℤ the completion is profinite; the statement does not identify an infinite ℤ group with its algebraic bidual.

*Needs:* §10.1.

### 10.3 Real-locus corrected localization sequence

Let X be smooth proper of pure dimension d, and put Hᵖ=Hᵖ(X(R),𝔽₂), with Hᵖ=0 for p<0. Construct the exact sequence `... -> directSum_(p=i-d)^(i-1) H^p --u_i--> H_G^i(X(C),X(R);F_2) --v_i--> H_G^i(U,F_2) --w_i--> directSum_(p=i-d+1)^i H^p -> ...`. The map v_i is pair→ambient→U. For w_i, lift by the canonical complement section, restrict to real coordinates, multiply by γ_X⁻¹ and project to the right window. For u_i, include the left window in total real cohomology, multiply by γ_X, project back to that same left window, identify it inside H_Gⁱ⁻¹(X(R),𝔽₂), then apply the pair boundary. (BW v3, §1.4, equation (1.46), p.22, BW line 848.)

A proof can proceed as follows. Compare the pair and support localization sequences in one diagram. Use the canonical splitting to eliminate the support summands, identifying the remaining real-coordinate quotient with the stated finite windows. Define u,v,w as the named composites and read exactness from that diagram.

The construction has the following API, with the hypotheses of this section.

- u_i,v_i,w_i are the displayed composites, with their γ and γ⁻¹ factors.
- Image u_i=ker v_i, image v_i=ker w_i, and image w_i=ker uᵢ₊₁.
- The degree-i left window pairs with the degree-(2d−i) right window by deg(xyγ).
- u_i is the pair boundary after γ, v_i is pair→ambient→free complement, and w_i uses the canonical complement section; equivalent purity identifications give the same maps.
- v_i∘u_i=0, w_i∘v_i=0 and uᵢ₊₁∘w_i=0 with the displayed distinct windows.

**Checks.**

- For i<d all negative-degree summands are omitted; u_i and w_i have shifted, different windows.
- Empty X(R) makes both windows zero, and v_i is an isomorphism.
- For d=1 the windows at degree i are Hⁱ⁻¹ and H^i, rather than identical copies.
- For RP² the high projection after γ⁻¹ differs from uncorrected restriction; a=degree-one class and γ=1+a+a² detect the difference.

*Needs:* §9.3; TauCetiRoadmap.MotivesAndAlgebraicCycles §7.6a; §9.2.

### 10.4 Real boundary trace formula

For smooth proper geometrically connected pure-d X/R, d≥1, the pair-boundary H_G²ᵈ⁻¹(X(R),𝔽₂)→H_G²ᵈ(X(C),X(R);𝔽₂), followed by trace, sends z to deg(z·γ_X⁻¹), with coordinates taken in the total real cohomology ring and degree selecting the real top component. (BW v3, Lemma 1.13, pp.23–24, BW line 901.)

A proof can proceed as follows. Use local purity and the trace adjunction near each component to reduce the boundary to real integration. The self-intersection correction from the support retraction contributes γ⁻¹; evaluate the resulting degree-d coordinate.

**Checks.**

- For empty real locus both sides vanish; coefficient field is 𝔽₂ so no orientation choice remains.
- For X=ℙ¹, d=1, γ=1 on RP¹ and the real degree-one generator has boundary trace 1; the real unit has boundary trace 0. For X=ℙ², γ⁻¹=1+a and the class z=a has degree(zγ⁻¹)=degree(a²)=1, while degree(z)=0.

*Needs:* §10.3; §10.1.

### 10.5 Self-duality of corrected localization

The sequence of Layer 10 is self-dual under i↔2d−i: the adjoints of u_i,v_i,w_i are respectively `w_(2d-i)`,`v_(2d-i)`,`u_(2d-i)`. Pair relative and complement groups by complement duality, and pair their real windows by (x,y)↦deg(xyγ_X). (BW v3, Theorem 1.12, pp.22–24, BW line 876.)

A proof can proceed as follows. Use trace compatibility to compare the central v maps. Calculate the boundary adjunction via the boundary-trace formula and cancel γ⁻¹ against the window pairing correction. Check the two other adjunctions with the exact degree windows.

**Checks.**

- Do not use the uncorrected real Poincaré pairing; for X=P² over ℝ the γ terms are nontrivial.
- On RP², γ=1+a+a² and at d=i=2 take x=1 in the left window H⁰⊕H¹ and y=a in the right window H¹⊕H². Then degree(xyγ)=degree(a+a²)=1, whereas uncorrected degree(xy)=degree(a)=0. In these complementary degree windows, the products with γ and γ⁻¹ cancel since (1+a+a²)(1+a)=1 modulo a³.

*Needs:* §10.3; §10.4; §10.1.

### Examples

For d=1 the left and right windows at degree i are Hⁱ⁻¹ and Hⁱ. For d=2,i=2 they are H⁰⊕H¹ and H¹⊕H². On RP², the correction γ⁻¹=1+a sends a to a+a², so projection to H² distinguishes corrected restriction from raw restriction. (BW v3 equation (1.46), p.22, BW line 848; Lemma 1.13, pp.23–24, BW line 901.)

### Dependencies

TauCetiRoadmap.MotivesAndAlgebraicCycles §7.6a; TauCetiRoadmap.MotivesAndAlgebraicCycles §7.6b; §8.5; §10.1; §9.3; §9.2; §10.3; §10.4.

## Layer 11: affine restriction and equivariant lefschetz

Topological affine vanishing feeds restriction and Gysin criteria for smooth ample divisors. The proof must avoid importing the downstream the downstream real/étale comparison étale comparison into the real-locus prefix.

### 11.1 Affine high-degree real restriction

For an affine R-variety U of dimension d and any G-module M used as constant complex-locus coefficients, restriction H_G^i(U(C),M)→H_G^i(U(R),M) is an isomorphism for i>d. (BW v3, Lemma 1.16, p.25, BW line 978.)

A proof can proceed as follows. Prove the semialgebraic affine-complex dimension bound Hⁱ(U(C),M)=0 for i>d, for finitely generated coefficients, using the affine Morse/finite-CW dimension argument and real-closed-field transfer on finite semialgebraic models. Combine it with Hⁱ(U(R),M)=0 for i>d and the high-degree free-complement bound, then descend degree by degree through the two real-complex exact sequences while varying M. Extend to all G-modules by the filtered-colimit comparison. The affine dimension theorem and its field comparison are targets of this section; no real/étale comparison is an input.

**Checks.**

- The cutoff is strict: degree d is not included.
- For U=𝔾_m over ℝ, d=1, ordinary H¹(ℂ*,ℤ)=ℤ, so the affine ordinary bound cannot include degree d. For the real-empty affine dimension-zero scheme Spec ℂ over ℝ, the complex locus is a free orbit: degree 0 restriction is ℤ→0, whereas every positive-degree map is 0→0.

*Needs:* TauCetiRoadmap.MotivesAndAlgebraicCycles §7.6a; §7.5; TauCetiRoadmap.RealAlgebraicGeometry Layer 3 and Layer 6 (the semialgebraic-geometry supplier contract).

### 11.2 Real-empty equivariant weak Lefschetz

Let X be smooth projective pure-d over R and Y⊂X a smooth ample divisor with X(R)=∅. Gysin H_Gⁱ⁻²(Y(C),ℤ(j−1))→H_G^i(X(C),ℤ(j)) is an isomorphism for i>d+1 and a surjection for i=d+1. (BW v3, Proposition 1.14, p.24, BW line 951.)

A proof can proceed as follows. The complement U=X\Y is affine and real-empty. Apply affine restriction to make its high equivariant groups vanish. Use the supported localization sequence and purity of the divisor.

**Checks.**

- In the boundary degree only surjectivity is asserted.
- For d=1 take a real-empty conic and a smooth ample degree-two divisor. Its free quotient is RP²; above degree 2 the groups vanish. At degree 2 the Gysin source H⁰ of the divisor with the appropriate sign twist surjects onto the top quotient group, without forcing an isomorphism.

*Needs:* §11.1; TauCetiRoadmap.MotivesAndAlgebraicCycles §7.6b; TauCetiRoadmap.MotivesAndAlgebraicCycles §7.6a.

### 11.3 Real-locus criterion for Lefschetz image

Under the same smooth projective divisor hypotheses without assuming X(R)=∅, fix i≥d+1,j. If Hᵖ⁻¹(Y(R),𝔽₂)→H^p(X(R),𝔽₂) is onto for every p≥1 with p≡i−j mod 2, then the complex equivariant Gysin image consists exactly of classes in H_G^i(X(C),ℤ(j)) whose restrictions to every real point vanish. (BW v3, Proposition 1.15, p.25, BW line 971.)

A proof can proceed as follows. Compare divisor localization with its real counterpart. Use high-degree affine restriction and the fixed-integral coordinate map to identify the obstruction to lifting as the real Gysin cokernel. The assumed positive-degree surjectivity leaves only the degree-zero point-evaluation obstruction.

**Checks.**

- The condition concerns p≥1; it does not assume degree-zero real Gysin is surjective.
- For X=ℙ¹ and a real rational-point divisor, real Gysin H⁰(pt,𝔽₂)→H¹(RP¹,𝔽₂) is 1↦1. The positive-coordinate obstruction is zero. For a real-empty divisor on the same X that map is 0→𝔽₂, so the hypothesis fails; the fixed-point evaluation obstruction cannot be discarded.

*Needs:* §11.1; TauCetiRoadmap.MotivesAndAlgebraicCycles §7.6b; §7.5; §9.1.

### 11.4 Injective equivariant Lefschetz criterion

For the same divisor, i>d+1, suppose, for every p≥1, real Gysin is injective in degrees p≡i−j mod 2 and surjective in the opposite parity (with its source Hᵖ⁻¹(Y(R),𝔽₂) and target H^p(X(R),𝔽₂)). Then complex equivariant Gysin in degree i with twist j is injective. (BW v3, Remark 1.17(i), pp.25–26, BW line 1006.)

A proof can proceed as follows. Use the preceding-degree boundary in the localization diagram and parity coordinates. The opposite-parity surjectivity removes the boundary obstruction and the matching-parity injectivity kills the kernel.

**Checks.**

- Keep i>d+1, not the surjectivity boundary i=d+1.
- When every relevant real source and target group vanishes, both parity conditions read 0→0 and the high-degree complex map is injective. At i=d+1 the adjacent affine boundary need not vanish, so this injectivity target retains i>d+1.

*Needs:* §11.3; §11.1; §7.5.

### 11.5 Affine relative torsion vanishing

For an affine R-variety U of dimension d and a torsion G-module M, H_G^i(U(C),U(R);M)=0 for i>d. This is stronger than high-degree restriction alone in its first vanishing degree. (BW v3, Remark 1.17(ii), p.26, BW line 1012.)

A proof can proceed as follows. Prove the relative affine bound for finite torsion coefficients, including degree d+1. The relative finite-model argument must control the cokernel of degree-d restriction, which the isomorphism for i>d alone does not control. Pass to arbitrary torsion G-modules using finite invariant submodules and exact filtered-colimit comparison on the finite-cover site.

**Checks.**

- State the torsion hypothesis; i=d+1 needs a boundary-degree argument.
- For U=ℝ-affine line, the pair (ℂ,ℝ) is equivariantly contractible onto its fixed line, so all relative groups vanish. For U=𝔾_m with 𝔽₂ coefficients, choose the ambient degree-one classes ω and the equivariant class of the square cover z↦z². Their evaluations on positive and negative real components are (1,1) and (0,1), so restriction has matrix [[1,0],[1,1]], determinant 1, cokernel 0 and relative H²=0. Isomorphisms in degrees >1 alone do not compute that cokernel.

*Needs:* TauCetiRoadmap.MotivesAndAlgebraicCycles §7.6a; §11.1; TauCetiRoadmap.RealAlgebraicGeometry Layer 3 and Layer 6 (the semialgebraic-geometry supplier contract).

### Examples

A real-empty affine zero-dimensional variety has degree-zero equivariant cohomology ℤ while its real restriction is zero; every positive-degree group vanishes. This separates i>d from i≥d. The relative bound requires its own degree-d boundary argument. (BW v3 Lemma 1.16 and Remark 1.17(ii), pp.25–26, BW lines 978, 1012.)

### Dependencies

TauCetiRoadmap.MotivesAndAlgebraicCycles §7.6a; §7.5; TauCetiRoadmap.RealAlgebraicGeometry Layer 3 and Layer 6 (the semialgebraic-geometry supplier contract); §11.1; TauCetiRoadmap.MotivesAndAlgebraicCycles §7.6b; §9.1; §11.3.

## Layer 12: steenrod operations and real characteristic classes

Semialgebraic Steenrod squares, their Wu formula for real proper maps, the identification of γ over ℝ, and tangent-bundle parity for compact surfaces.

### 12.2 Steenrod-conjugated real pushforward

For a proper map f:Y→X of smooth R-varieties, extend the supplied compatibility on admissible cycle degrees to every equivariant mod-two cohomology degree: under total fixed-locus coordinates, restriction of complex equivariant Gysin equals Sq∘`f_(R,*)`∘Sq⁻¹ applied to restricted coordinates. Complex shift is twice the dimension difference; the ordinary real Gysin inside the formula has the real dimension shift. (BW v3, Proposition 1.22, pp.29–31, BW line 1130.)

A proof can proceed as follows. Use the Thom identity for the normal orientation class to compute the self-intersection and proper-map square correction. Express the total equivariant restriction as fixed-locus coordinates and conjugate by the total square operation. For nonproper varieties use the graph embedding into a product with a sphere. Use the supported-operation comparison and extension of real closed fields from MotivesAndAlgebraicCycles §7.6b to transport the Thom and proper-map identities. This is the field-extension step of BW v3 Proposition 1.22, pp.30–31.

**Checks.**

- For identity f the expression is identity; for a real point inclusion it reproduces the normal class.
- For the identity, Sq∘id∘Sq⁻¹=id. For pt→ℙ¹, real Gysin gives the top degree-one class a of RP¹ and Sq(a)=a because a²=0; the complex degree-two restriction has ordinary coordinate a, rather than an ordinary degree-two class on RP¹.

*Needs:* TauCetiRoadmap.MotivesAndAlgebraicCycles §7.6b; §9.1; §9.2.

### 12.3 Real self-intersection and Stiefel–Whitney

Over R=ℝ, γ_X is w(TX(ℝ)), the total Stiefel–Whitney class of the real tangent bundle. For a compact smooth real surface S, w₁(TS)=0 exactly when S is orientable, and deg(w₁(TS)²)=χ(S) mod 2. The tangent classes are the topological bundle classes of CharacteristicClasses §C3; the new result is their equality with γ and the surface evaluation. (BW v3, Remark 1.6(i), p.18; Proposition 1.22, pp.29–31, BW line 699.)

A proof can proceed as follows. Use the supplied characteristic-class, orientation and Euler comparisons and the Thom-square comparison with the semialgebraic operations; for compact surfaces apply ordinary Poincaré duality to evaluate w₁²=w₂. The normal bundle of X(ℝ)⊂X(ℂ) is TX(ℝ) by multiplication by i; its equivariant Euler class gives γ_X.

**Checks.**

- RP² has deg w₁²=1; torus has w₁=0 and parity zero; Klein bottle has nonzero w₁ but deg w₁²=0.

*Needs:* TauCetiRoadmap.CharacteristicClasses §§C2–C3; §9.2; TauCetiRoadmap.MotivesAndAlgebraicCycles §7.6b; TauCetiRoadmap.AlgebraicTopology Stage 6; TauCetiRoadmap.AlgebraicTopology Stage 7; TauCetiRoadmap.GeometricTopology Layer 1.

### 12.4 Transverse mod-two surface loops

On a compact smooth surface S without boundary, possibly disconnected, every class in H₁(S,𝔽₂) is represented by a finite disjoint union of smooth embedded circles. Given finitely many smooth immersed closed curves with a finite singular set and a finite subset of S to avoid, representatives can be chosen to avoid both finite sets and be transverse to all their smooth branches. S is a compact smooth boundaryless surface, possibly disconnected. The prescribed immersed closed curves have only finitely many singular points; these points and the additional forbidden set are finite. (B19, Applications pp.91,99,103, B19 line 1118.)

A proof can proceed as follows. Start from a finite simplicial mod-two cycle: every vertex has even valence. Smooth its edges and resolve crossings in pairs, preserving homology. Prove the finite-family relative perturbation theorem using smooth approximation and parametric transversality, retaining disjoint embedded circles and avoiding both finite forbidden sets. The manifold, orientation and flow inputs are the DifferentialGeometry suppliers; the relative surface perturbation is part of this target.

**Checks.**

- Do not assert that a representative must be one connected circle; disconnected surfaces already prevent that.
- The zero class can use the empty union. On disconnected S, classes supported on two components need two components of the representative.

*Needs:* §12.3; TauCetiRoadmap.AlgebraicTopology Stage 4; TauCetiRoadmap.AlgebraicTopology Stage 6; TauCetiRoadmap.GeometricTopology Layer 1; TauCetiRoadmap.DifferentialGeometry Layers 2, 3 and 10; relative surface perturbation in this section.

### Examples

On RP², Sq¹(a)=a² and Sq²(a)=0. The projective plane has degree w₁²=1; the torus has w₁=0 and Euler parity 0; the Klein bottle has w₁≠0 but degree w₁²=0. Thus vanishing of the square does not characterize orientability. (BW v3 §1.6.3–1.6.4, pp.27–31, BW line 1060; B19 §8.1, pp.104–107.)

### Dependencies

TauCetiRoadmap.MotivesAndAlgebraicCycles §7.6b; §9.1; §9.2; TauCetiRoadmap.AlgebraicTopology Stage 6; TauCetiRoadmap.AlgebraicTopology Stage 7; TauCetiRoadmap.GeometricTopology Layer 1; §12.3; TauCetiRoadmap.AlgebraicTopology Stage 4; TauCetiRoadmap.DifferentialGeometry Layers 2, 3 and 10; relative surface perturbation in this section.

## Layer 13: near-top equivariant applications

The free-complement description of admissible topological classes, near-top cup-ω maps and a real-empty quartic rank calculation. Algebraic Picard and cycle-class comparisons remain downstream the downstream real/étale comparison/MC.2 work.

### 13.1 Admissible classes on the free complement

For smooth proper pure-d X/R, d≥2, let A⊂H_G²ᵈ⁻²(X(C),ℤ(d−1)) consist of classes whose mod-two real coordinates α_p vanish for p<d−1 with p≡d−1 mod 2. Restriction induces A≅H_G²ᵈ⁻²(U,ℤ(d−1)). This is a topological admissibility condition; no algebraicity of cycles is asserted. (BW v3, Lemma 3.5, pp.41–42, BW line 1659.)

A proof can proceed as follows. Use the parity-restricted splitting with i=2d−2,j=d−1. The support summand is detected by the indicated low coordinates; its canonical complementary kernel is A.

**Checks.**

- Keep the integral class and its reduced coordinate condition separate.
- For d=2 the allowed low parity set is empty and the source is the entire H_G² with twist 1; the support summand is H_G⁰(X(R),or(1))=0. For d=3, the condition is α₀=0; the degree-zero coordinate detects the possible support summand.

*Needs:* §9.4; §9.5.

### 13.2 Cup-ω near the top degree

Let X/R be smooth proper geometrically connected pure-d, d≥2, with ordinary H²ᵈ⁻¹(X(C),ℤ) finite of odd order. Cup by ω maps H_G²ᵈ⁻²(X(C),ℤ(d−1)) onto H_G²ᵈ⁻¹(X(C),ℤ(d))[2] with kernel the ordinary norm image, and gives an isomorphism from that 2-torsion group to H_G²ᵈ(X(C),ℤ(d+1)). If X(R)≠∅, the next cup-ω map to H_G²ᵈ⁺¹(X(C),ℤ(d+2)) is also an isomorphism. X is smooth proper geometrically connected, d≥2. Ordinary penultimate integral cohomology is finite of odd order; the last map additionally needs a real point. (BW v3, Lemma 3.15, pp.46–47, BW line 1838.)

A proof can proceed as follows. Read kernels and images from the two real-complex long exact sequences. Use odd-order ordinary penultimate cohomology and ordinary top-degree orientation/norm calculations to identify the 2-primary parts. For the last map use evaluation at a real point and high-degree restriction. The algebraic implication from absence of Picard 2-torsion belongs to the downstream comparison; this theorem assumes the ordinary-cohomology condition itself.

**Checks.**

- A real point is required only for the last isomorphism; the algebraic Picard comparison is not used as a prerequisite here.
- For X=ℙ², H³(ℂP²,ℤ)=0 has odd order 1. In the fixed-locus coordinates, cup by ω carries the degree-one 𝔽₂ coordinate in H_G³(ℂP²,ℤ(2))[2] identically into H_G⁴(ℂP²,ℤ(3)); the next map preserves it. Zero is a finite group of odd order, so it is included.

*Needs:* §7.2; TauCetiRoadmap.MotivesAndAlgebraicCycles §7.6a; §9.4.

### 13.3 Real-empty quartic middle rank

For a smooth quartic threefold X/ℝ with X(ℝ)=∅, assume the ordinary quartic data b₀=b₂=b₄=b₆=1, b₃=60, all other Betti numbers zero, and conjugation (−1)ʳ on H²ʳ(X(ℂ),ℚ), for 0≤r≤3. Prove rank_ℤ H_G³(X(ℂ),ℤ(2))=30. This is the general invariant-rank deduction on those explicit inputs; the complete-intersection Betti computation belongs to its named supplier. (BW v3, Lemma 5.9, p.62, BW line 2471.)

A proof can proceed as follows. Rational averaging identifies equivariant rank with invariant rank of ordinary H³. The fixed-point-free involution has Lefschetz number zero; its even-degree alternating traces sum to zero, so its trace on H³ is zero. A 60-dimensional involution with trace zero has invariant dimension 30.

**Checks.**

- This determines rank only; it does not assert that integral H_G³ is torsion free.
- The alternating even traces are 1−1+1−1=0. Fixed-point-free Lefschetz gives −Tr(σ∣H³)=0. With a+b=60 and a−b=0, the invariant and anti-invariant dimensions both equal 30. This calculation gives no information about integral 2-torsion.

*Needs:* TauCetiRoadmap.MotivesAndAlgebraicCycles §7.6a; TauCetiRoadmap.AlgebraicTopology Stage 7; §7.3; TauCetiRoadmap.EtaleDualityAndPerverseSheaves §4.7; the fixed-point trace supplier contract.

### Examples

For the quartic example, the even traces sum to 1−1+1−1=0, the fixed-point-free Lefschetz number forces the middle trace to be 0, and (60+0)/2=30 is the invariant rank. For d=2 the admissibility condition has no low odd coordinate to kill. (BW v3 Lemmas 3.5 and 5.9, pp.41–42,62, BW lines 1659,2471.)

### Dependencies

§9.4; §9.5; §7.2; TauCetiRoadmap.MotivesAndAlgebraicCycles §7.6a; TauCetiRoadmap.AlgebraicTopology Stage 7; §7.3; TauCetiRoadmap.EtaleDualityAndPerverseSheaves §4.7; the fixed-point trace supplier contract.

## Layer 14: double covers and ramified coefficient triangles

Rank-one sign local systems, equivariant covering classification, twisted Bockstein, ramified trace triangles and the distinction between stabilizer action and ordinary monodromy.

### 14.1 Sign local system of a double cover

For an equivariant two-sheeted covering p:T→S, let L=coker(ℤ_S→p_*ℤ_T) with diagonal injection. It is a rank-one free integral local system with sheet-swap monodromy −1, and fits into 0→ℤ→p_*ℤ→L→0 and 0→L→p_*ℤ→ℤ→0, the last map being trace. Equivariant double covers are classified by H_G¹(S,𝔽₂), using the Borel/site torsor notion. (B19, §2.2, equations (2.2)–(2.5), pp.72–73, B19 line 362.)

A proof can proceed as follows. Compute the two exact sequences on a trivializing cover with stalk ℤ². Glue through the signed transition functions and identify the mod-two torsor class through Čech cocycles on the equivariant site. Keep the algebraic étale-cover comparison for the downstream real/étale comparison downstream.

The construction has the following API, with the hypotheses of this section.

- With an ordering of the sheets, (a,b)↦a−b identifies the diagonal cokernel L with ℤ; the class of (1,0) is a generator.
- The trace kernel identifies with L, with a consistent sign choice under sheet interchange.
- Its mod-two sign cocycle classifies the equivariant double cover up to isomorphism.
- An equivariant map p*ℤ→F annihilating the diagonal factors uniquely through L.
- Swapping the ordered sheets sends the local generator [(1,0)] to its negative; twice the sign twist restores it.

**Checks.**

- The same local system can have nontrivial ordinary monodromy even when its point stabilizer action is trivial.
- A globally split cover has constant ordinary L.
- The connected two-sheeted cover of S¹ gives nontrivial sign monodromy.
- Two conjugate points over a fixed real point give stabilizer action −1 on L; twisting by ℤ(1) makes it +1 without trivializing ordinary monodromy elsewhere.

*Needs:* TauCetiRoadmap.MotivesAndAlgebraicCycles §7.6a; TauCetiRoadmap.AlgebraicTopology Stage 5.

### 14.2 Double-cover extension and twisted Bockstein

For the sign system L of a double cover, the trace sequence has extension class e_L∈H_G¹(S,L), killed by 2. If e is its mod-two image, then β_L(x)=β_ℤ(x)+e∪x for mod-two cohomology. The real-complex sequence is the particular covering S×G→S, whose equivariant sign system is ℤ(1). (B19, §2.2, equations (2.4)–(2.5), pp.72–73, B19 line 362.)

A proof can proceed as follows. Represent the sign cocycle by local ±1 transitions and lift mod-two cochains modulo four. The difference between the two coefficient boundaries is the transition cocycle cup product; the trace extension is twice split.

**Checks.**

- On a circle with nontrivial sign L, β_L(1) detects the covering.
- For the split cover of a circle, e=0 and β_L(1)=0. For the connected double cover, the sign monodromy is −1, e is the nonzero element of H¹(S¹,𝔽₂), and β_L(1)=e. At a fixed point with sign stabilizer, the integral extension class has order 2.

*Needs:* §14.1; §7.6.

### 14.3 Ramified double-cover trace triangle

Let p:T₀→S₀ be a double cover of smooth complex surfaces, equivariant for conjugation, ramified along a smooth divisor, locally z²=t transverse to that divisor. For j:S*↪S₀ the unramified locus and L its sign local system, there is a distinguished triangle Rj_*L —κ→ p_*ℤ —Tr→ ℤ→Rj_*L[1]. The trace is canonical; κ and its compatible mod-two triangle may require choices. The branch divisor is smooth on the finite-flat locus under consideration. Locally transverse to it the cover is z²=t. (B19, §3.2, diagrams (3.1)–(3.3), pp.77–78, B19 line 559.)

A proof can proceed as follows. On a punctured transverse disk compute j_*ℤ=ℤ, j_*p_*ℤ=p_*ℤ and the isomorphism R¹j_*p_*ℤ→R¹j_*ℤ; higher images vanish. Apply the octahedral axiom to the two truncation triangles and the unramified trace sequence. Use TR3 for a compatible reduction-mod-two morphism of triangles; do not claim uniqueness of κ.

The construction has the following API, with the hypotheses of this section.

- The middle arrow uniquely extends the unramified sum-of-sheets trace.
- The three named objects and arrows form a distinguished triangle, restricting to the trace sequence over S*.
- There exists a compatible morphism to the reduction-mod-two triangle whose restriction over S* is the natural coefficient map.
- An isomorphism of branched-cover diagrams identifies the trace and distinguished triangle; transport the chosen κ together with its compatibility proof.
- The triangle induces a long exact hypercohomology sequence with named boundary, whose restriction agrees with the unramified sign sequence.

**Checks.**

- The local model is on the finite-flat smooth branch locus; singular branch crossings must first be removed or resolved.
- When the branch is empty the triangle is the ordinary sign trace exact sequence.
- For z↦z² the punctured-disk monodromy is sheet swap and only R⁰,R¹ of j_* can occur.
- The interface retains a chosen κ and compatibility proof; it does not identify all possible choices by definitional equality.
- At the branch point of z↦z², Tr on the single integral stalk is multiplication by 2. On the punctured disc the sign local system has H⁰=0 and H¹=ℤ/2, agreeing with the cone of multiplication by 2. For an empty branch, trace is (a,b)↦a+b.

*Needs:* §14.1; TauCetiRoadmap.MotivesAndAlgebraicCycles §7.6a; TauCetiRoadmap.SchemeAndStackFoundations §2.23.

### 14.4 Cyclic Ext-stalk comparison for the circle construction

For the equivariant abelian sheaves restricted to a real circle C with trivial C₂-action, specialize SchemeAndStackFoundations §2.23’s finite-group sheaf-Ext stalk comparison to obtain (Ext̲_G^q(ℤ,F))_x≅H^q(G,F_x). If F_x≅ℤ[G]^k, these stalks vanish for q>0. Generic equivariant Ext and its finite-group stalk theorem remain at the reserved SchemeAndStackFoundations §2.23 owner; this target identifies the periodic cochain comparison used by the circle construction. (B19, Lemma 7.5 proof, p.99, citing Tôhoku §4.4, B19 line 1484.)

A proof can proceed as follows. Specialize the generic finite-group sheaf-Ext stalk theorem from SchemeAndStackFoundations §2.23. Identify the C₂ periodic model with the native cyclic complex by the sign comparison, and apply regular-module Shapiro. Carry naturality on subarcs; this is not a global Ext=stalk assertion.

**Checks.**

- A trivial ℤ stalk has nonzero degree-two C₂ cohomology, whereas a regular ℤ[C₂] stalk has none in positive degrees. This concerns sheaf Ext stalks, not global Ext.
- At a point, a trivial ℤ stalk has H¹=0 and H²=𝔽₂; a sign ℤ stalk has H¹=𝔽₂ and H²=0. A regular ℤ[C₂] stalk has both groups zero. Thus sheaf-Ext vanishing uses regular stalks, not merely free abelian stalks.

*Needs:* TauCetiRoadmap.MotivesAndAlgebraicCycles §7.6a; §7.3; TauCetiRoadmap.SchemeAndStackFoundations §2.23.

### Examples

On a transverse disc the branched trace is multiplication by 2 at the origin; the punctured-disc sign system has H⁰=0 and H¹=ℤ/2. The split double cover has ordinary constant sign system, but two conjugate sheets over a real point have sign stabilizer. (B19 §2.2 and §3.2, pp.72–73,77–78, B19 lines 362,559.)

### Dependencies

TauCetiRoadmap.MotivesAndAlgebraicCycles §7.6a; TauCetiRoadmap.AlgebraicTopology Stage 5; §14.1; §7.6; TauCetiRoadmap.SchemeAndStackFoundations §2.23; §7.3.

## Layer 15: permutation quotients and integral lifts

Permutation sheaves for generically finite covers, their trace quotient, a trace-zero operator, the corrected integral lift and the circle extension detecting its real obstruction.

### 15.1 Permutation quotient and integral trace

Let p:T→S be a proper generically finite degree-n map, n≥1, of smooth connected complex surfaces with conjugation, j:S*↪S its finite étale locus. Put P=p_*ℤ and Q=coker(ℤ_diag→P). Assume ℤ≅j_*ℤ and P≅j_*j*P (as holds by local non-disconnection here). Trace extends from S*, satisfies Tr∘diag=n, induces φ:Q→ℤ/n, and 0→P —(Tr,π)→ℤ⊕Q —(1,−φ)→ℤ/n→0 is exact. Also Q→j_*j*Q is injective. (B19, §7.1, equations (7.1)–(7.2), p.97, B19 line 1354.)

A proof can proceed as follows. Construct the diagonal cokernel in equivariant sheaves and extend trace using the target ℤ adjunction isomorphism. Use the snake lemma on the diagonal/trace square to prove exactness and the adjunction monomorphism for Q. Verify the two adjunction assumptions using local non-disconnection for the stated smooth-surface map; retain them explicitly for broader topological use.

The construction has the following API, with the hypotheses of this section.

- Q is the equivariant diagonal cokernel and π:P→Q is its epimorphism.
- Tr:P→ℤ extends sum of sheet coordinates and φ([a])=∑a_i mod n.
- The displayed mixed trace/quotient sequence is exact and natural under restriction.
- Any equivariant P→F killing the diagonal factors uniquely through Q.
- π of a diagonal vector is zero, Tr of that vector is n times its entry, and φπ=Tr mod n.

**Checks.**

- At an étale stalk this is ℤⁿ modulo the diagonal, not the augmentation kernel without an identified comparison.
- For n=1, Q=0 and P≅ℤ.
- For n=2 the sheet swap negates the quotient generator.
- Replacing a by a+(b,…,b) changes its sum by nb, so φ is well-defined.

*Needs:* TauCetiRoadmap.MotivesAndAlgebraicCycles §7.6a; §14.1; TauCetiRoadmap.AlgebraicTopology Stage 5.

### 15.2 Trace-zero permutation operator

There is a natural ψ:Q→P, on étale stalks ψ([a])=(∑a_j−na_i)_i. It is well-defined, Trψ=0, and its reduction modulo n is diag∘φ:Q→p_*(ℤ/n). To extend this last equality globally require the target map p_*(ℤ/n)→j_*j*p_*(ℤ/n) to be monic; monicity of Q alone is insufficient. (B19, §7.1 p.97; diagram (7.4) proof p.99, B19 line 1382.)

A proof can proceed as follows. Check the stalk formula is unchanged on adding a diagonal vector and is equivariant under permutation. Extend ψ with the P adjunction isomorphism and test trace in the constant target. Prove target restriction is monic by local non-disconnection upstairs for finite locally constant coefficients, then compare the two maps modulo n.

**Checks.**

- For n=4 and a=(1,0,0,0), ψ(a)=(−3,1,1,1), with trace zero and reduction the diagonal unit.

*Needs:* §15.1.

### 15.3 Trace-quotient lifting criterion

On an open V where p is finite and R^qp_*ℤ=0 for q>0, let a∈H_G²(V,ℤ/n(1)). If the integral Bockstein of p*a vanishes in H_G³(p⁻¹V,ℤ(1)), then there exist η∈H_G²(V,ℤ(1)) and ζ∈H_G²(V,Q(1)) with a=η mod n−φ(ζ). (B19, Lemma 7.2 and its proof, p.98, B19 line 1422.)

A proof can proceed as follows. Compare the coefficient Bockstein sequence with the mixed trace/quotient exact sequence. Finite-map Leray identifies the obstruction group with H_G³(p⁻¹V,ℤ(1)); the stated vanishing is precisely the obstruction to lifting through H_G²(ℤ(1)⊕Q(1)).

**Checks.**

- No Brauer class is a hypothesis; its role in the paper is only to supply the Bockstein vanishing.

*Needs:* §15.1; TauCetiRoadmap.MotivesAndAlgebraicCycles §7.6a.

### 15.4 Corrected trace-quotient integral lift

With a=η mod n−φ(ζ) as above, b=p*η−ψ(ζ)∈H_G²(p⁻¹V,ℤ(1)) reduces to p*a and satisfies Tr(b)=nη. The minus sign is essential. (B19, Lemma 7.3, pp.98–99, B19 line 1444.)

A proof can proceed as follows. Reduce b modulo n and use ψ mod n=diagφ to obtain p*(η mod n−φζ). Take trace, use Trψ=0 and Tr p*=n.

**Checks.**

- An n=4 stalk detects the incorrect plus sign; trace alone cannot detect it because ψ is trace zero.
- Set n=4, η=0, ζ=[(1,0,0,0)]. Then φζ=1 and a=−1=3 mod 4. The vector ψζ=(−3,1,1,1) has trace 0; the negative lift (3,−1,−1,−1) reduces to (3,3,3,3), while the positive vector reduces to (1,1,1,1). Both traces are 0, so trace alone misses the error.

*Needs:* §15.2; §15.3.

### 15.5 Cyclic reduction in adjacent sign degrees

For n even and A=ℤ/n with sign action, H¹(G,A)=A/2A and H²(G,A)=A[2]. Under their standard 𝔽₂ identifications, reduction A→𝔽₂ is identity on H¹ and multiplication by (n/2 mod 2) on H². Thus the two truncated-degree reduction maps cannot always both be identities. (B19, Equations (7.7)–(7.9), pp.99–100; direct cyclic-resolution calculation, B19 line 1490.)

A proof can proceed as follows. For sign action the differentials alternate −2 and 0. Represent H¹ by the class of 1 and H² by n/2; reduce those representatives modulo two.

**Checks.**

- n=2: both maps are identity; n=4: H¹ map is identity and H² map is zero; n=6: both are identity.

*Needs:* §7.3; §7.6.

### 15.6 Circle extension and obstruction class

Restrict the preceding degree-n trace data, n even, to an embedded fixed-locus circle C where each permutation stalk P_x is ℤ[G]-free. Set E=coker[(φ₂,1+σ):Q(1)→𝔽₂⊕Q(1)^G], where φ₂ is reduction of φ. Then 0→𝔽₂→E→𝔽₂→0 is exact. If ζ∈H_G²(C,Q(1)) has (φζ)_2=1 under the H_G²(C,ℤ/n(1)) fixed-cochain degree-two projection, the boundary of 1 in this extension is the degree-one component of φζ. n is positive and even; C is a fixed-locus embedded circle. Every P stalk on C is free over ℤ[C₂]. The input ζ has normalized degree-two component in sign-coefficient cyclic cohomology. (B19, Equations (7.5)–(7.9), Lemma 7.5, pp.99–100, B19 line 1472.)

A proof can proceed as follows. Use vanishing of positive cohomology of the free permutation stalks to identify the two-degree truncation of R Hom_G(ℤ,Q(1)). Write the comparison using the actual reduction maps from Layer 15, keeping n modulo four. The cokernel extension’s connecting class is obtained by lifting the quotient unit through those truncated cochains.

The construction has the following API, with the hypotheses of this section.

- E is the stated cokernel in abelian sheaves on C, with named inclusion and projection.
- The inclusion/projection form the stated short exact sequence.
- For a ζ with normalized degree-two component, δ_E(1) equals its degree-one φ component.
- Maps out of E correspond to maps out of 𝔽₂⊕Q(1)^G killing the image of (φ₂,1+σ).
- The composite 𝔽₂→E→𝔽₂ is zero; local normalized stalk generators give the prescribed kernel and quotient, without choosing a global splitting.

**Checks.**

- The extension is a sheaf of abelian groups; its stalk can be ℤ/4 and is not required to split as 𝔽₂².
- H^q(G,ℤ[G]^k)=0 for q>0, as needed for the truncation isomorphism.
- When n=4, reduction of H²(G,ℤ/n(1)) is zero, so the normalization cannot be tested by blindly reducing to 𝔽₂ cohomology.
- δ_E(1)=0 exactly when the quotient unit has a global section lift in E. This does not assert an abelian-sheaf splitting: constant ℤ/4 has such a lift but its extension by 𝔽₂ is nonsplit.
- For n=2 with one regular stalk, E=(𝔽₂⊕ℤ)/⟨(1,2)⟩≅ℤ/4. For n=4 the corresponding stalk is 𝔽₂². In the constant ℤ/4 extension, the quotient unit lifts to the section 1 and its H¹ boundary is zero, but there is no group-homomorphic section 𝔽₂→ℤ/4 of the quotient.

*Needs:* §15.1; §15.5; §7.5; §12.4; §14.4.

### Examples

For n=4 and a=(1,0,0,0), ψ[a]=(−3,1,1,1) and its trace is 0. The negative vector reduces to the constant vector 3 modulo 4; the positive vector reduces to 1. In sign cohomology the H¹ reduction is always 1↦1 for even n, while H² reduction is (n/2) mod 2: values 1,0,1 at n=2,4,6. (B19 §§7.1–7.4, pp.97–100, B19 lines 1382,1444,1490.)

### Dependencies

TauCetiRoadmap.MotivesAndAlgebraicCycles §7.6a; §14.1; TauCetiRoadmap.AlgebraicTopology Stage 5; §15.1; §15.2; §15.3; §7.3; §7.6; §15.5; §7.5; §12.4; §14.4.

## Layer 16: equivariant transport and derived chases

Equivariant smooth transport, its stronger stratified-pair version, finite-index invariant lattices, finite-group Ext stalks and the exact double-cover diagram comparison. Pair preservation and lift normalization remain explicit application checks.

### 16.1 Equivariant Ehresmann transport

For a proper smooth submersion of finite-dimensional Hausdorff second-countable smooth manifolds without boundary f:M→B with involutions commuting with f, with f surjective over the chosen neighbourhood, near a fixed base point b there is a C₂-equivariant local trivialization over a small invariant neighbourhood, relative to the induced base involution. If the base involution is trivial on the chosen real parameter neighbourhood, the fibre diffeomorphisms commute with the involution. This assertion alone does not transport an arbitrary divisor as a pair. Source and base are finite-dimensional Hausdorff second-countable smooth manifolds without boundary; involutions and f are smooth. The map f is a proper surjective submersion over the chosen neighbourhood, and b is fixed by the base involution. (B19, Proposition 6.6 proof, pp.94–95, B19 line 1253.)

A proof can proceed as follows. Use the ordinary proper-submersion and horizontal-lift theorem of SmoothBundlesConnections §B1 item 5. Average source and base metrics over C₂. In an invariant exponential ball about the fixed base point, lift the radial paths with the invariant orthogonal horizontal distribution; properness supplies the uniform existence interval. Smoothness and equivariance of the resulting fibrewise diffeomorphisms give the local trivialization.

**Checks.**

- A product with a nontrivial fibre involution gives the product trivialization; no divisor preservation follows.
- For M=B×F with involution (b,z)↦(−b,τz), radial transport is (b,z)↦(b,z), with fibre action τ. Restricting to the fixed base b=0 makes every fibre map commute with τ. A divisor whose two points collide is not preserved by the product trivialization.

*Needs:* TauCetiRoadmap.GeometricTopology Layer 1; TauCetiRoadmap.AlgebraicTopology Stage 5; TauCetiRoadmap.SmoothBundlesConnections §B1 item 5; TauCetiRoadmap.DifferentialGeometry Layer 3.

### 16.2 Equivariant stratified pair transport

Let M and B be finite-dimensional Hausdorff second-countable smooth manifolds without boundary, and f:M→B smooth. Suppose f is proper on a closed, locally finite Whitney-stratified subset A⊂M, with every stratum mapping submersively to B, an involution preserving all strata and commuting with f, and chosen invariant f-compatible control data. Locally at a fixed b, controlled horizontal lifts give an equivariant homeomorphic trivialization of A preserving every distinguished union of strata. Apply this to a divisor pair only after verifying these hypotheses for that family. M and B are finite-dimensional smooth manifolds without boundary, the stratification of the closed subset A is locally finite and Whitney, and the involutions on M and B are smooth with f equivariant; each stratum restriction of f is smooth. The Whitney strata and distinguished unions are invariant. The stratified map is proper and stratumwise submersive. Invariant f-compatible control data are given, not assumed automatically. (MATHER, §11 Proposition 11.1, original notes p.62 (PDF p.34, left page); B19 Proposition 6.6 proof, pp.94–95, MATHER line 969.)

A proof can proceed as follows. Use the given invariant compatible control data and construct controlled horizontal lifts of radial base fields. Their compatibility equations are linear, so averaging preserves them. Integrate with the properness bounds; the resulting homeomorphisms preserve each stratum and hence every distinguished union. Verification of these hypotheses for a particular divisor family is part of any such application.

**Checks.**

- A family with a changing divisor crossing fails stratified submersivity and is not covered. This does not silently upgrade ordinary Ehresmann.
- The divisor family xy=t changes its node at t=0: the singular-point stratum exists only over 0, and its map to the parameter line has derivative 0 rather than rank 1. It fails the stratumwise submersion hypothesis. A constant divisor pair has product transport preserving both strata.

*Needs:* §16.1.

### 16.3 Finite-index equivariant lattice image

For a compact finite-CW-type G-space T and a finitely generated coefficient system ℤ(j), the forgetful image H_G²(T,ℤ(j))→H²(T,ℤ(j))^G has finite index. Rationally it is an isomorphism onto invariants. (B19, Proposition 6.6 proof, pp.94–95, B19 line 1272.)

A proof can proceed as follows. Use the Hochschild–Serre edge map; all outgoing obstruction groups from bidegree (0,2) are finite because positive C₂ cohomology is killed by two and the ordinary groups are finitely generated. Rational averaging kills every positive-group-degree term, giving full rational span; a full-rank subgroup of a finitely generated abelian group has finite index.

**Checks.**

- Finite index is not integral surjectivity; the proof allows nonzero 2-primary obstructions.
- For T=pt both degree-two groups have target invariants 0, hence index 1. For trivial action on S² and j=0, the forgetful map surjects onto ℤ, also index 1. The algebraic comparison 2ℤ⊂ℤ has full rational span and index 2, illustrating why rational surjectivity alone cannot imply index 1.

*Needs:* TauCetiRoadmap.MotivesAndAlgebraicCycles §7.6a; §7.3; TauCetiRoadmap.AlgebraicTopology Stage 4.

### 16.4 Double-cover chase comparison

For the chosen ramified-cover triangle of §14.3 represented by a short exact sequence of bounded-below injective equivariant complexes, tensor with 0→ℤ→ℤ[G]→ℤ(1)→0 and take equivariant sections. Let γ∈H³(T₀(C),ℤ), let δ∈H_G³(S₀(C),ℤ) have ordinary image Tr(γ), and let ζ∈H_G³(S*(C),L(1)) satisfy κ(ζ)=N(γ)∈H_G³(T₀(C),ℤ(1)), where N is the regular-coefficient norm and κ is the twisted triangle map. For g:H_G³(S₀(C),ℤ)→H_G⁴(S*(C),L) the triangle boundary, there exists η₀∈H_G²(S₀(C),ℤ(1)) with g(δ)+ζ∪ω=g(η₀∪ω). The existence statement is modulo the displayed image; η₀ is not a canonical choice. (B19, §4.2, diagrams (4.3)–(4.5), pp.82–83, B19 line 773.)

A proof can proceed as follows. Represent the triangle by injective equivariant complexes and tensor the two regular-coefficient exact sequences. Their finite-free tensor functors have exact adjoints, preserving the required injectives. In the resulting 3×3 double diagram chase the common ordinary class γ along the two paths. With the stated boundary convention the sum differs by g(η₀∪ω), for a class η₀ of degree two and twist one; changes of cochain lifts alter exactly that image.

**Checks.**

- Both chased terms must have coefficient L in degree four; the conclusion is modulo the image g(−∪ω), not literal equality of arbitrarily chosen chases.
- For the split unramified cover with fixed sheets over a trivial-action base, g=0 and the twisted κ is split injective; the common-lift norm into the sign term is 0, so ζ=0 and both sides of the equality are 0. If γ=δ=ζ=0 one may take η₀=0. Both g(δ) and ζ∪ω have degree 4 and coefficient L, whereas g(η₀∪ω) has degree 2+1+1=4 and the same coefficient.

*Needs:* §14.3; TauCetiRoadmap.MotivesAndAlgebraicCycles §7.6a; §7.2; TauCetiRoadmap.SchemeAndStackFoundations §2.23.

### Examples

A product family with involution (b,z)↦(−b,τz) has the equivariant product chart. The divisor xy=t fails the stratified submersion hypothesis at its node and has no such stratified-pair chart there. A full-rank integral image such as 2ℤ⊂ℤ has index 2, despite becoming an isomorphism after tensoring with ℚ. (B19 Proposition 6.6 proof, pp.94–95, B19 line 1253; MATHER Proposition 11.1, original p.62, MATHER line 969.)

### Dependencies

TauCetiRoadmap.GeometricTopology Layer 1; TauCetiRoadmap.AlgebraicTopology Stage 5; TauCetiRoadmap.SmoothBundlesConnections §B1 item 5; TauCetiRoadmap.DifferentialGeometry Layer 3; §16.1; TauCetiRoadmap.MotivesAndAlgebraicCycles §7.6a; §7.3; TauCetiRoadmap.AlgebraicTopology Stage 4; §14.3; §7.2; TauCetiRoadmap.SchemeAndStackFoundations §2.23.

## Downstream consumers

Configuration covers and the stable diagonal supply configuration and mapping-space applications. The Fermat and double-loop results provide the topological side of those comparisons. Layers 6–10 supply the topological input to real/étale comparison and real cycle classes; those comparisons consume this prefix and do not feed back into it. Layers 11–13 supply real integral-Hodge and near-top restrictions. Layers 14–16 supply the sign systems, trace lifts, circle obstruction and transport used in real-surface period-index applications. The application of §16.2 to a chosen family must prove its Whitney, properness, stratumwise-submersion and invariant-control-data hypotheses and must normalize any transported integral lift on the stated open subset.

## References

All statements are in the author's own words. The BW locators below and throughout the build refer to arXiv:1801.00872v3, whose internal pages differ from the journal pagination; its theorem and equation numbers agree for the cited results. The manifest records one entry for each work. The Hilton journal text is cited by its exact publisher locator with uncertified access; no claim of having read that text is made.

- **BS.** Tim Browning; Will Sawin. [A geometric version of the circle method](https://annals.math.princeton.edu/wp-content/uploads/annals-v191-n3-p04-s.pdf). Annals of Mathematics 191 (2020), 893–948; published PDF.
- **BW.** Olivier Benoist; Olivier Wittenberg. [On the integral Hodge conjecture for real varieties, I](https://arxiv.org/abs/1801.00872v3). arXiv:1801.00872v3, internal pp.8–31,41–42,46–47,62; journal version Inventiones Mathematicae 222 (2020), 1–77.
- **B19.** Olivier Benoist. [The period-index problem for real surfaces](https://www.numdam.org/item/10.1007/s10240-019-00108-7.pdf). Publications Mathématiques de l’IHÉS 130 (2019); published PDF.
- **CEF.** Thomas Church; Jordan S. Ellenberg; Benson Farb. [Representation stability in cohomology and asymptotics for families of varieties over finite fields](https://www.math.uchicago.edu/~farb/papers/Pn-FqT.pdf). Author manuscript; internal pagination.
- **HILTON.** Peter J. Hilton. [On the homotopy groups of the union of spheres](https://doi.org/10.1112/jlms/s1-30.2.154). Journal of the London Mathematical Society 30 (1955), 154–172.
- **SERRE.** Jean-Pierre Serre. [Homologie singulière des espaces fibrés. Applications](https://www.college-de-france.fr/media/jean-pierre-serre/UPL7235285843586540944_Serre_The_se.pdf). Annals of Mathematics 54 (1951), 425–505; author archive scan.
- **SULLIVAN.** Dennis Sullivan. [Infinitesimal computations in topology](https://www.numdam.org/item/10.1007/BF02684341.pdf). Publications Mathématiques de l’IHÉS 47 (1977), 269–331.
- **PHAM.** Frédéric Pham. [Formules de Picard-Lefschetz généralisées et ramification des intégrales](https://www.numdam.org/item/BSMF_1965__93__333_0.pdf). Bulletin de la Société Mathématique de France 93 (1965), 333–367.
- **BROUGHTON.** S. Allen Broughton. [Milnor numbers and the topology of polynomial hypersurfaces](https://gdz.sub.uni-goettingen.de/download/pdf/PPN356556735_0092/LOG_0016.pdf). Inventiones Mathematicae 92 (1988), 217–241; Göttingen scan.
- **EP.** Mário J. Edmundo; Luca Prelli. [The six Grothendieck operations on o-minimal sheaves](https://arxiv.org/pdf/1401.0846v3). arXiv:1401.0846v3; internal pagination, not the published numbering.
- **MATHER.** John Mather. [Notes on Topological Stability](https://web.math.princeton.edu/facultypapers/mather/notes_on_topological_stability.pdf). 1970 notes; Princeton author scan.
