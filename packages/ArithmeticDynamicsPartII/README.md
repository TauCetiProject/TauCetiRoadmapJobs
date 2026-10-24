# Roadmap: markoff dynamics over finite fields

**Summary.** Build the arithmetic of the ordered Markoff move graph over finite fields, from the integral surfaces and descent of ClassicalArithmeticCompletion to prime connectivity, positive integral lifting, oriented trace congruences and simultaneous lifting on the primitive squarefree locus. Penner weights give the divisibility mechanism; conic rotations, sharp curve estimates and order growth give the giant orbit; divisor antichains supply the explicit-bound direction. The squarefree endpoint identifies the entire integral reduction image as the origin together with the primitive locus.

## Scope and ownership

ArithmeticDynamics treats iterated self-maps and projective height, measure and preimage problems; its Layers 1–6 stop before this affine Markoff orbit problem. This Part II owns finite-field move and oriented actions, their conic and orbit arithmetic, maximal-divisor theory and squarefree diagonal independence.

ClassicalArithmeticCompletion §§4.3, 4.23, 4.38, 4.42–4.44, 4.57–4.58 and 4.62 own the surfaces, polynomial involutions, permutations and even sign changes. Its §§4.92, 4.101, 4.103, 4.106, 4.108 and 4.111 own integer root generation, pairwise coprimality, the two integral zero-level orbits, reduction, the coefficient twist and the positive prime approximation predicate. Its §4.76 owns the total finite-field point count. None is reconstructed here. The ordered finite-field graph is a specialization of its integer graph construction to the nonzero residue surface; the new targets are its orbit comparison and finite-field theorems.

Tau Ceti owns the commutator trace identity, `Matrix.SpecialLinearGroup.trace_commutatorElement_fin_two`, over every commutative ring; §6.1 adds the finite-field conjugacy dictionary. Mathlib owns subgroup generation, permutations, graph reachability and components, orbit quotients, element orders, prime factorization, divisors, totients, block predicates and preprimitive actions. InverseGaloisAndArithmeticFundamentalGroups §IG.3.2 owns free-group exterior epimorphisms, Nielsen precomposition and its descent to outer automorphisms; §6.1 adds the SL₂ finite-field trace dictionary. ErdosProgressionPowers, Layer 0, “Explicit totient and divisor bounds”, owns the effective eventual divisor-subpower estimate. The sharp smooth projective curve estimate and its cohomological interpretation are supplied by WeilConjectures, WC.5 and WC.7, through the sections named below. Layer 3 constructs the particular covers and supplies the function-field gcd and low-order arithmetic estimates beyond those contracts.

General scheme, stack, coarse moduli and stable-curve carriers come from SchemeAndStackFoundations. The elliptic finite-group level specialization and its coarse-degree congruence are owned in §6.0, before their finite-field applications and downstream modular geometry. The primitive-group structure and quantitative section theorems needed by the diagonal action are owned in §7.5a. General quotient and action notions retain the library meanings. The Lean predicates on native triples are only notation for acceptance signatures, with comparison to the supplied surface and move definitions; they are not another surface library.

Integral orbit growth, renewal and counting, complex bifurcation and critical-height uniformity are outside these eight layers. All-prime connectivity is a conjectural proposition in §4.4, separate from the eventual and explicit theorems.

## Conventions

Work over arbitrary commutative rings for polynomial surfaces and moves, fields for weights, and finite fields K of cardinality q=pᶠ for traces. A prime-field theorem has p prime. Put M(R)={x²+y²+z²=3xyz} and X(R)={x²+y²+z²=xyz}; a star removes precisely the origin. Coordinates are ordered, indexed by Fin 3 cyclically. The function-valued zero means all three coordinates vanish. The signature predicate `markoffEquation` also permits an arbitrary coefficient c over a commutative ring; the arithmetic endpoints use c=1 or 3. No claim about nonzero points is made over the zero ring.

The supplied twist sends M to X by multiplying each coordinate by 3. Its inverse over R requires 3 to be a unit; its integral bijection uses the separate integral divisibility theorem. Its two-term witness is (1,1,1)↦(3,3,3), followed by (1,1,2)↦(3,3,6). Over 𝔽₃ it is the zero map: M* has eight points and X* is empty. Every use of the twist respects this exception.

V uses only Vieta moves, Γ also uses coordinate permutations, and Δ also uses double sign changes. Reachability is V-reachability. Neither coordinates nor signs are quotiented except in §7.2. The simple graph deletes a fixed-move loop; labelled moves retain it. In the acceptance notation `vietaMove`, `moveStep` and `gammaStep` are respectively the polynomial move, its labelled step relation, and the relation adjoining distinct-coordinate transpositions. Their reflexive transitive closures are the corresponding word relations. At the symmetric root only, normality of V in Γ removes permutations. At p=2 the root has three distinct neighbours and a leaf has a labelled fixed move.

Use the commutator [A,B]=ABA⁻¹B⁻¹. The trace identity is tr[A,B]=x²+y²+z²−xyz−2 for (x,y,z)=(tr A,tr B,tr AB). Thus the Markoff zero level has commutator trace −2. For A=[[1,1],[0,1]], B=[[1,0],[1,1]], the trace triple is (2,2,3) and commutator trace 3; for A=B=I it is (2,2,2) and trace 2. Precomposition is a right action; converting by inversion gives the left action used here. Γ⁺ denotes its determinant-one image, never a faithful copy of the free-group automorphism group. An even word in the reversing Vieta and transposition generators gives the same image.

For odd characteristic, split and nonsplit traces can be distinguished by the nonzero discriminant. In characteristic two use splitting of T²−tT+1. For 𝔽₄=𝔽₂[a]/(a²+a+1), the polynomial T²+aT+1 is irreducible and its companion has order 5; its discriminant a² is nevertheless a square. At trace 2 a noncentral Jordan matrix has order p, and at trace −2 in odd characteristic it has order 2p; the scalar −I has order 2. Rotations act by t↦λt in the conic parameter, with matrix [[0,1],[−1,a]], so (a,b,c)↦(a,c,ac−b).

Positive divisor sets require n≥1; the library divisor finset at zero is empty. Ω counts prime factors with multiplicity. Natural subtraction is truncated; valuation expressions identify the nonnegative difference before using it. Every division in a reduced-integer inequality is between positive integers or positive rationals. Real logarithmic estimates have their stated lower thresholds. A squarefree composite endpoint has n>1 and every prime factor ≥5; the primitive locus requires nonzero reduction at every prime factor. Big-O constants are uniform in the indicated slice parameters; each asymptotic statement means constants and a threshold after its positive exponent is fixed. All native carriers may live in any universe; every finite cardinal used in an arithmetic theorem is supported by actual finiteness.

## Exact supplier contracts

### From Mathlib

Consume `Equiv.Perm` from `Mathlib/Logic/Equiv/Defs.lean:131`, `Subgroup.closure` from `Mathlib/Algebra/Group/Subgroup/Lattice.lean:329`, and `MulAction.orbit` from `Mathlib/GroupTheory/GroupAction/Defs.lean:49`. Closure is the subgroup intersection containing the generators; an orbit is the range of the orbit map, with no transitivity assertion. `SimpleGraph` in `Mathlib/Combinatorics/SimpleGraph/Basic.lean:93` specifies symmetric loopless adjacency. `SimpleGraph.Reachable` and `SimpleGraph.ConnectedComponent` in `Mathlib/Combinatorics/SimpleGraph/Connectivity/Connected.lean:51` and `:389` give nonempty walks, including zero-length walks, and their quotient. `Relation.ReflTransGen` and `Relation.EqvGen.setoid` supply the acceptance word relations and rotation quotient. These definitions do not supply nonemptiness or connectedness.

Consume `ZMod` in `Mathlib/Data/ZMod/Defs.lean:138`, `ZMod.castHom`, `ZMod.natCast_eq_zero_iff` and `ZMod.chineseRemainder` in `Mathlib/Data/ZMod/Basic.lean:331`, `:519` and `:889`. Modulus zero is ℤ; the field instance requires prime modulus, and CRT requires coprime moduli. Use `orderOf` in `Mathlib/GroupTheory/OrderOfElement.lean:181`, whose zero value means no positive period, and `Function.minimalPeriod` for point periods. Use `Nat.divisors`, `Nat.factorization`, `Nat.totient` and `Nat.minFac` in `Mathlib/NumberTheory/Divisors.lean:52`, `Mathlib/Data/Nat/Factorization/Defs.lean:50`, `Mathlib/Data/Nat/Totient.lean:37` and `Mathlib/Data/Nat/Prime/Defs.lean:218`. The least-prime-factor convention is λ(1)=1 and excludes zero arguments.

Consume `MulAction.IsBlock` and `MulAction.IsPreprimitive` in `Mathlib/GroupTheory/GroupAction/Blocks.lean:171` and `Mathlib/GroupTheory/GroupAction/Primitive.lean:91`. Preprimitive does not assert nonemptiness; every classical primitive-group application here has a nontrivial finite faithful action. The normal-subgroup transitivity step uses `MulAction.IsPreprimitive.isQuasiPreprimitive` in the same file at line 287, with faithfulness turning a nontrivial normal subgroup into one acting nontrivially. Generic finite-sum transport uses `Fintype.sum_equiv` in `Mathlib/Algebra/BigOperators/Group/Finset/Defs.lean:739`; the weight argument supplies its own complementarity hypothesis.

The opening argument uses `RingOfIntegers.dvd_norm` in `Mathlib/NumberTheory/NumberField/Norm.lean:76` over finite Galois extensions; `Algebra.norm_eq_prod_embeddings` in `Mathlib/RingTheory/Norm/Transitivity.lean:261` for a finite separable extension and an algebraically closed target; `Algebra.norm_ne_zero_iff` in `Mathlib/RingTheory/Norm/Basic.lean:110` for domains and a finite free extension; and `IsCyclotomicExtension.finrank` in `Mathlib/NumberTheory/Cyclotomic/PrimitiveRoots.lean:177`, with irreducible cyclotomic polynomial. Apply them to a cyclotomic number field over ℚ, retaining those hypotheses. Matrices, special linear groups, free groups, finite quotients and polynomials keep their native carriers.

### From Tau Ceti

Consume `Matrix.SpecialLinearGroup.trace_commutatorElement_fin_two` from `TauCeti/LinearAlgebra/Matrix/Trace/FinTwo.lean:127`: for A,B in SL₂(R), over every commutative ring R, it gives the commutator trace in terms of tr A, tr B and tr AB with the final −2. It uses the commutator ABA⁻¹B⁻¹. The finite-field dictionary uses this identity directly.

For primitive actions, `MulAction.IsBlock.of_le` and `MulAction.IsPreprimitive.of_le` in `TauCeti/GroupTheory/GroupAction/Primitive.lean:54` and `:59` transport blocks and primitivity along subgroup inclusions. `TauCeti.MulAction.fixedPoints_stabilizer_eq_singleton` in that module at line 72 applies only to faithful preprimitive nontrivial actions with nontrivial point stabilizer. These support the local block comparison; they do not supply primitive-group socle structure. The affine-action examples use `TauCeti.AffineGroup.isPreprimitive` and `TauCeti.AffineGroup.natCard_range_toPermHom` in `TauCeti/GroupTheory/SpecificGroups/Affine/Primitive.lean:80` and `:85`. No Tau Ceti import is needed merely to state the acceptance signatures.

### From TauCetiRoadmap.ClassicalArithmeticCompletion

Consume §§4.3 and 4.58 for the two surfaces; §§4.23, 4.42–4.44 and 4.62 for `markoffVieta`, involutivity, preservation, permutation normalization and restriction to the nonzero locus; §§4.38 and 4.57 for `markoffHurwitzMove` and the larger action, selecting its smaller Vieta/permutation generator set explicitly. Consume §4.76 for the exact quadratic-character point count, §4.92 for positive root generation, §4.101 for pairwise coprimality, §4.103 for the two integral zero-level orbits, §4.106 for reduction and equivariance, §4.108 for `markoffTwist` and `markoffTwistEquiv`, and §4.111 for `MarkoffStrongApproximation`. The comparison at 3 is separate; sign generators in the Hurwitz action never become implicit generators of Γ.

### From TauCetiRoadmap.InverseGaloisAndArithmeticFundamentalGroups

Consume §IG.3.2, “Branch tuples, Nielsen classes and braids”, in particular “Exterior epimorphisms and T-systems”, for exterior epimorphisms, simultaneous inner conjugacy and precomposition descending to Out(Fᵣ). The target group is the actual finite image, and an exterior epimorphism is a surjection before taking the quotient. The SL₂ trace dictionary, the punctured-torus determinant-one specialization and its elliptic level comparison are proved in §6.0–§6.1.

### From TauCetiRoadmap.ArithmeticGaloisRepresentations

Consume §4.4, “Dickson’s classification”, for finite projective subgroups, the exceptional A₄, S₄, A₅ cases and the conjugate subfield PSL₂/PGL₂ cases, including genuine finite-field embeddings. Its characteristic-two conclusion identifies every non-dihedral irreducible image with a subfield PSL₂ group. Section 6.0 proves the particular center-containment and normalizer-quotient refinements used in the trace-degree comparison from this classification; it does not repeat the classification theorem.

### From TauCetiRoadmap.SchemeAndStackFoundations

Consume §§1.18–1.19 for stacks in groupoids, stackification, representability and Deligne–Mumford stacks; §1.21 for quotient stacks; §1.23 for coarse spaces and their precise base-change hypotheses; §4.15 for stable pointed curves; §§3.1–3.3 and 5.9–5.11 for genus, degrees, intersections and the graph-of-Frobenius curve bound. Elliptic G-level structures and their ramification/cotangent congruence are the specialization constructed in §6.0, with their own compactification and degree comparison.

### From TauCetiRoadmap.WeilConjectures

Consume WC.5, “Compatibility with curve and elliptic bounds”, WC.5, “The independent surface route to curve bounds”, and WC.7, “Curves and their Jacobians”: for every smooth projective geometrically connected genus-g curve over 𝔽_q and every r≥1, |#C(𝔽_(qʳ))−qʳ−1|≤2gq^(r/2), with genus equal to half the first cohomological dimension. Removing b geometric points changes the count by at most b. Layer 3 proves irreducibility, smooth-model genus and puncture bounds for each cover before applying this theorem; the constant is controlled by those bounds.

### From TauCetiRoadmap.ErdosProgressionPowers

Consume Layer 0, “Explicit totient and divisor bounds”: for every ε>0 an effective N_ε bounds τ(n)≤n^ε for all n≥N_ε. For n≥1 the elementary Euler factors give n/φ(n)≤τ(n), hence the same subpower control without another analytic theorem. The explicit-bound route needs the following quantitative export.

What ErdosProgressionPowers must provide (gap:explicit-divisor-constants): Explicit positive rational C and a natural N such that τ(n)≤C·n^(1/16) for every integer n≥N, together with proved values and domains sufficient to bound n/φ(n)≤τ(n) and produce a finite numerical endpoint for the two repaired order intervals.

## How to read the build

Layer 0 distinguishes word actions and graph components. Layer 1 produces divisibility from weights including singular slices and fixed moves. Layer 2 parametrizes every conic type and counts rotation orbits. Layer 3 supplies the three order-growth ranges and a giant orbit. Layer 4 joins that orbit to the symmetric integer root. Layer 5 develops general maximal-divisor and antichain theory before its explicit-bound application. Layer 6 constructs the nonabelian-level degree and trace interfaces before the oriented arithmetic and geometric consequences. Layer 7 proves independence of the diagonal prime actions and lifts sign blocks to actual triples. Each theorem lists its statement inputs and the additional inputs of its indicated proof route separately where these differ.
## Layer 0: actions and ordered move graphs

Separate the ordered graph, the move group and its permutation extension.

### 0.1 Vieta and Markoff groups

On the imported ordered coefficient-three nonzero surface, form V as the subgroup of permutations generated by the three labelled Vieta involutions, and Γ by adjoining coordinate permutations. On the coefficient-one surface use its own polynomial moves, conjugate to these when 3 is a unit. Let Δ adjoin the double sign changes. Prove that coordinate permutations normalize V; Γ does not acquire sign generators by this definition. (M25, §1, p. 623; §2, p. 625; locator-only citation; BGS16, §1, pp. 1–2; BGS16 line 8.)

The defining API is:

- V=closure{R₀,R₁,R₂}.
- Γ=closure(V∪{coordinate permutations}).
- `sigma R_i sigma^(-1) = R_(sigma(i))`, hence V is normal in Γ.
- The CA.4 factor-three equivalence intertwines V and Γ whenever 3 is a unit.

**Checks.**

- On coefficient-three M over F₅, R₂(1,1,1)=(1,1,2).
- The permutation swapping coordinates 0 and 1 fixes the root; it is included in Γ by construction, without identifying it with a named Vieta generator.
- Over F₃ the coefficient-one X* is empty but coefficient-three M* has eight points; no twist equivalence is asserted.

One proof route is as follows. Restrict the imported involutions to the nonzero locus; each fixes the origin and is bijective. Use Subgroup.closure in the permutation group, and conjugate R_i by coordinate permutations to obtain normality of V in Γ.

*Needs:* ClassicalArithmeticCompletion §§4.23, 4.42–4.44, 4.62; ClassicalArithmeticCompletion §4.57; Mathlib `Subgroup.closure`; Mathlib `Equiv.Perm`.

### 0.2 Markoff graph

Define the finite-field ordered move graph on M*(𝔽_p) by adjacency of distinct triples related by one Vieta move. The three labelled moves remain separate from the loopless graph. In particular a fixed move is a legal word step even though it supplies no edge. (M25, §1, pp. 623–624; §2, p. 625; locator-only citation.)

The defining API is:

- G_p.Adj x y ↔ x≠y ∧ ∃i, R_i x=y.
- Every R_i x is reachable from x, including R_i x=x.
- For p≠3 the CA.4 twist is a graph isomorphism to the coefficient-one move graph.

**Checks.**

- For p=2 the vertices are 111,011,101,110; 111 is adjacent to the other three.
- Over F₂ the move R₁ fixes 011, so Adj(011,011) is false despite a labelled fixed move.
- The origin is not a vertex; including it adds an isolated component and breaks connectivity.

One proof route is as follows. Use involutivity for adjacency symmetry and the explicit inequality for looplessness. Graph vertices remain ordered; no quotient by permutations or signs is taken.

*Needs:* §0.1; Mathlib `SimpleGraph`; Mathlib `ZMod`.

### 0.3 Components and move orbits

For every prime p and x,y∈M*(F_p), G_p.Reachable x y iff y∈MulAction.orbit V(p) x. Thus native SimpleGraph.ConnectedComponent is equivalent to the V(p)-orbit quotient. Each component is finite, nonempty and invariant under each labelled move. (M25, §1, p. 623; §2, p. 625; locator-only citation.)

One proof route is as follows. Turn a walk into a word using adjacency witnesses. Turn a word into a walk, omitting fixed steps; use the universal property of subgroup closure to cover inverses. Descend the equivalence to the two quotients.

*Needs:* §0.1; §0.2; Mathlib `SimpleGraph.Reachable`; Mathlib `SimpleGraph.ConnectedComponent`; Mathlib `MulAction.orbit`.

### 0.4 Small prime graphs

The coefficient-three graphs G₂ and G₃ are connected with respectively 4 and 8 vertices. M*(F₃)={±1}³ and each move flips one sign. For p∈{5,7,13}, Γ and V are transitive, with respectively 40,28,208 vertices. The coefficient-one nonzero locus at 3 is empty. (M25, §1, pp. 623–624; locator-only citation.)

**Checks.**

- The sizes at p=2,3,5,7,13 are 4,8,40,28,208, and the root reaches all of each set.
- The coefficient-one p=3 count is 0, so no nonempty connectedness assertion transfers there.
- At p=2 the labelled fixed step at (0,1,1) has zero graph length.

One proof route is as follows. At 2 identify the four-vertex star; at 3 each move changes one sign, giving the eight-vertex cube. For 5,7,13 prove that the finite root-reachable set exhausts the solution set. These finite identities say nothing about arbitrary primes.

*Needs:* §0.2; §0.3; ClassicalArithmeticCompletion §4.108; ClassicalArithmeticCompletion §4.76.

### Examples

The coefficient-three root (1,1,1) has third move (1,1,2); its coefficient-one images are (3,3,3) and (3,3,6). Over 𝔽₃ the same third move changes 1 to −1, generating a cube rather than a singleton.

### Dependencies

ClassicalArithmeticCompletion §§4.23, 4.42–4.44, 4.62; ClassicalArithmeticCompletion §4.57; Mathlib `Subgroup.closure`; Mathlib `Equiv.Perm`; Mathlib `SimpleGraph`; Mathlib `ZMod`; Mathlib `SimpleGraph.Reachable`; Mathlib `SimpleGraph.ConnectedComponent`; Mathlib `MulAction.orbit`; ClassicalArithmeticCompletion §4.108; ClassicalArithmeticCompletion §4.76.

## Layer 1: Penner weights and divisibility

Extend the weights over their singular denominators, then average over invariant finite sets.

### 1.1 Extended Penner weights

Let K be a field with 2≠0 and 3≠0. For x∈M*(K), if all coordinates are nonzero set w_i(x)=x_i/(3x_jx_k), where {i,j,k}={0,1,2}. If the unique zero coordinate is i₀, set wᵢ₀=0 and w_i=1/2 for i≠i₀. A nonzero solution has at most one zero coordinate, so these cases exhaust the carrier. Raw formulas outside M* carry no assertion. (M25, §2, equation (2.1), pp. 624–625; locator-only citation.)

The defining API is:

- If x_jx_k≠0 then w_i=x_i/(3x_jx_k), including x_i=0.
- If x_i=0 then w_i=0 and the other two weights are 1/2.
- `w_(sigma(i))(sigma x) = w_i(x)`.
- Σ_i w_i(x)=1 on M*.

**Checks.**

- At the coefficient-three root over Q, all three weights are 1/3.
- At (0,1,2) over F₅ the weights are (0,3,3).
- At the excluded origin the all-nonzero formula and singular branch do not define weights summing to one; the carrier hypothesis is essential.

One proof route is as follows. If two coordinates vanish the equation forces the third square, hence the third coordinate, to vanish. Define by the indicated finite case distinction; prove independence of the order of j,k using commutativity.

*Needs:* ClassicalArithmeticCompletion §4.3; Mathlib `ZMod`.

### 1.2 Penner weight identities

For x∈M*(K) in the preceding characteristic range, Σ_i w_i(x)=1 and w_i(x)+w_i(R_i x)=1 for every i. In particular R_i x=x implies w_i(x)=1/2. (M25, §2, p. 625; locator-only citation.)

One proof route is as follows. When the product is nonzero divide the Markoff equation by 3x₀x₁x₂ to obtain the total. For edge complementarity, if x_jx_k≠0 substitute 3x_jx_k−x_i; the same expression applies when the changed coordinate becomes zero. If a different coordinate is zero, both i-weights are 1/2. Use 2≠0 for fixed points.

*Needs:* §1.1; ClassicalArithmeticCompletion §§4.23, 4.42–4.44, 4.62.

### 1.3 Finite involution balance

If C is a finite type, K a field with 2≠0, r:C→C an involution and f:C→K satisfies f(x)+f(r x)=1 for every x, then Σ_x f(x)=(#C:K)/2. The conclusion permits fixed points and an empty C. (M25, §2, equations (2.3)–(2.5), p. 625; locator-only citation.)

One proof route is as follows. Use involutivity to make r a permutation and reindex the finite sum. Add the original and reindexed sums termwise; divide by 2.

*Needs:* Mathlib `Equiv.Perm`.

### 1.4 Chen’s divisibility theorem

For prime p>3, every finite subset S⊆M*(F_p) stable under all R_i satisfies p∣#S. In particular each V-orbit, each Γ-orbit and each graph component has size divisible by p. Together with the p=2 computation this holds for coefficient-three graphs precisely in the asserted range p≠3. It does not hold for their eight-point component at 3. (M25, Theorem 1.4, p. 624; proof §2, pp. 624–625; locator-only citation.)

The headline `stable_card_dvd` quantifies over every finite Vieta-stable subset, with prime p≠3; its p=2 case uses §0.4.

One proof route is as follows. Restrict each R_i to S and apply involution balance separately to each coordinate weight. Sum weight_sum over S: (#S:F_p)=(3/2)(#S:F_p). Rearrange using invertibility of 2 to deduce #S=0 in F_p. Convert the cast equality into divisibility; use the separate p=2 enumeration.

*Needs:* §1.2; §1.3; §0.3; §0.4; Mathlib `ZMod.natCast_eq_zero_iff`.

### Examples

At the rational root the weight vector is (1/3,1/3,1/3). Over 𝔽₅ at (0,1,2) it is (0,3,3), whose sum is 1. Moving the zero coordinate gives (1,1,2) and changes its weight from 0 to 1; moving another coordinate pairs two weights equal to 3, with sum 1.

### Dependencies

ClassicalArithmeticCompletion §4.3; Mathlib `ZMod`; ClassicalArithmeticCompletion §§4.23, 4.42–4.44, 4.62; Mathlib `Equiv.Perm`; §0.3; §0.4; Mathlib `ZMod.natCast_eq_zero_iff`.

## Layer 2: conic sections and rotations

Separate semisimple, zero-trace and repeated-root fibres before counting.

### 2.1 Conic sections and rotations

For odd prime p and a∈F_p set C_i(a)={x∈X*(F_p):x_i=a}. Rotation ρ₀(a,b,c)=(a,c,ac−b) fixes C₀(a), with cyclic analogues. On (b,c) it has matrix [[0,1],[-1,a]] and characteristic polynomial T²−aT+1. For a≠±2 define its order by the order of either root λ in `F_(p^2)^*`; inversion leaves this order unchanged. At a=±2 use the actual unipotent matrix order, not the eigenvalue order. (BGS16, §2, equations (6)–(15), pp. 4–6; BGS16 line 136.)

The defining API is:

- ρ₀(a,b,c)=(a,c,ac−b).
- ρ_i preserves C_i(a).
- If a²≠4, λ+λ⁻¹=a and the matrix diagonalizes over `F_(p^2)`; ord λ divides p−1 or p+1.
- The order is unchanged when λ is replaced by λ⁻¹.

**Checks.**

- At the coefficient-one root, ρ₀(3,3,3)=(3,3,6).
- At a=2 the eigenvalue is 1 but the rotation matrix has order p for odd p.
- At a=0 the eigenvalues have order 4, not 2; a point on a degenerate line must be handled separately.

One proof route is as follows. Restrict the product of a transposition and a Vieta map to the conic. Compute the matrix and characteristic polynomial; split the repeated-root cases before defining order.

*Needs:* ClassicalArithmeticCompletion §4.58; ClassicalArithmeticCompletion §4.57; Mathlib `orderOf`.

### 2.2 Split and nonsplit conic sections

For odd p and a≠0,±2, put κ=a²/(a²−4). If a²−4 is a nonzero square, choose λ∈F_pˣ with λ+λ⁻¹=a: t↦(a,t+κ/t,λt+κ/(λt)) parametrizes C₀(a) bijectively for t∈F_pˣ. In the nonsplit case use t∈`F_(p^2)^*` with `t^(p+1) = kappa`, and the same formula; this parametrizes C₀(a), with rotation t↦λt. Thus the slice sizes are p−1 and p+1 and all periods equal ord λ. At a=0 the nonzero conic has 2(p−1) points if −1 is a square and is empty otherwise. At ±2 it has 2p points if −1 is a square and is empty otherwise; the ±2 rotation periods are p and 2p respectively. (BGS16, §2, pp. 4–6; BGS16 line 150; C24, §5.3, pp. 406–408; C24 line 4191.)

One proof route is as follows. Solve the two eigenline coordinates, using a²−4≠0 and κ≠0. For nonsplit λ^p=λ⁻¹; the coordinates lie in F_p exactly when t^p=κ/t. Treat a=0 and ±2 by factoring the quadratic equation rather than specializing the generic formula.

*Needs:* §2.1.

### 2.3 Nonzero Markoff point counts

Specialize the supplier point count to the coefficient-one zero level and remove the origin. For odd p the resulting sizes are p(p+3) and p(p−3), according as p is 1 or 3 modulo 4. This subsection owns only the slice comparison: Cᵢ(a) is empty exactly when p≡3 modulo 4 and a is 0, 2 or −2. Thus X*(𝔽₃) is empty and X*(𝔽_p) is nonempty for p≥5. (C24, Proposition 5.3.3, pp. 406–408; C24 line 4391.)

One proof route is as follows. Specialize CA.4’s coefficient-one formula to level zero and subtract the origin. Use slice classification to identify the empty fibres, including p=3.

*Needs:* §2.2; ClassicalArithmeticCompletion §4.76.

### 2.4 Rotation orbit count

Define Φ(0)=0 by the empty divisor sum. For n≥1 define `Phi(n) = sum_(d | n) phi(d)/d` as a rational number, using the positive-divisor finset and the totient. Let c_p be the number of orbits of the cyclic subgroup generated by ρ₀ on X*(F_p). For odd p, c_p=((p−1)/2)Φ(p−1)+((p+1)/2)Φ(p+1)+(-5p+11)/4 when p≡1 mod4, and the last term is (-7p−1)/4 when p≡3 mod4. (C24, Definition 5.3.4 and Proposition 5.3.5, pp. 408–410; C24 line 4418.)

The definitions `divisorPhi` and `rotation` support the exact headline `rotation_orbit_count`; the quotient is the equivalence relation generated by the rotation on the actual nonzero surface.

The defining API is:

- `Phi(n) = sum_(d in D(n)) (phi(d):Q)/d` for n≥1.
- For prime ℓ, Φ(ℓ)=2−1/ℓ.
- The displayed rational expression equals the finite orbit quotient cardinality.
- Under the MD.6 moduli dictionary, rotation cycles identify the specified cusp classes, with the supplier’s quotient conventions.

**Checks.**

- Φ(1)=1 and Φ(2)=3/2.
- At p=3 the expression gives c₃=0, matching X*(F₃)=∅.
- At p=5, Φ(4)=2, Φ(6)=5/2, and c₅=8.

One proof route is as follows. Group traces a by the inversion pairs {λ,λ⁻¹} in the split and norm-one tori. Count elements of exact order d by φ(d) and divide each slice size by d. Replace the excluded eigenvalues ±1 and the degenerate slices by their direct cycle counts.

*Needs:* §2.1; §2.2; Mathlib `Nat.divisors`; Mathlib `Nat.totient`; Mathlib `MulAction.orbit`.

### Examples

At p=5 the zero-trace fibre has 8 points in two 4-cycles, while each ±2 fibre has 10 points; the periods are 5 and 10 respectively. The total nonzero surface has 40 points and 8 first-rotation orbits. At p=7 the zero and parabolic fibres are empty, the total is 28 and the first-rotation count is 5.

### Dependencies

ClassicalArithmeticCompletion §4.58; ClassicalArithmeticCompletion §4.57; Mathlib `orderOf`; ClassicalArithmeticCompletion §4.76; Mathlib `Nat.divisors`; Mathlib `Nat.totient`; Mathlib `MulAction.orbit`.

## Layer 3: the giant orbit and sparse exceptions

Obtain the giant orbit from increasing rotation orders and uniform arithmetic estimates.

### 3.0 Finite-field curve estimates

Develop the following general estimates, using the supplier smooth-model and sharp curve bound rather than a point-count constant that depends invisibly on the cover. For odd q and a rational function f on a geometrically connected smooth curve, impose that f is not a square after extending the constant field to its algebraic closure. For the open curve obtained by deleting the s distinct geometric zeros and poles, prove that the quadratic-character sum has absolute value at most (2g−2+s)√q. The bound comes from the anti-invariant part of compactly supported cohomology of the Kummer double cover; even-order zeros and poles are included among the deleted points. For a squarefree degree-d polynomial on the affine line this gives |Σ_x χ(f(x))|≤(d−1)√q. A nonzero constant square gives q and is excluded; f=X over 𝔽₅ gives 0; f=X(X−1) gives −1. Distinct-root and pole divisors, rather than the printed degree alone, govern the rational-function form. (CZ13, §4, pp. 1936–1939; CZ13 line 110; WeilConjectures WC.5 curve-bound comparison.)

For a smooth projective geometrically irreducible curve C in characteristic p and multiplicatively independent rational functions u,v modulo constants with nonzero differentials, let S contain exactly their zeros and poles and χ=2g−2+#S. Prove the sum of min(ord_P(1−u),ord_P(1−v)) over P outside S is at most max(3(2 deg(u)deg(v)χ)^(1/3),12 deg(u)deg(v)/p). Deduce that an absolutely irreducible curve in the two-dimensional torus, not a translate of a subtorus, of bidegree (d₁,d₂), meets μ_m×μ_n in at most max(3(2mn d₁d₂χ)^(1/3),12mn d₁d₂/p). The degrees are degrees of the rational maps on the normalization; χ uses its geometric boundary. Apply this over the algebraic closure to both split and norm-one coordinates. In the Markoff application m,n divide p±1, so the power-function differentials are nonzero. (CZ13, Theorem 2 and Corollary 2, pp. 1929–1930; proof §5, pp. 1939–1942; CZ13 line 123 and line 154.)

For every integer d≥1 and real δ>0, prove that there exist ε>0 and Z such that, for every z≥Z, at most z^δ primes p≤z fail the following property simultaneously for all degree-at-most-d polynomials over 𝔽_p: when f has no translated-subtorus factor over 𝔽̄_p, its torus zeros with ord(x)+ord(y)<p^ε number at most 11d³+d. The same assertion includes norm-one coordinates. The route uses an integral resultant obstruction for all coefficient vectors, bounds the number of prime factors of the resulting nonzero integer, and decreases the exponent to absorb every fixed constant; it does not turn a density-one statement into a subpower estimate without that arithmetic step. (BGS16, Theorem 13, pp. 18–19; BGS16 line 802; CKSZ14, §4, pp. 585–591, equations (4.1), (4.6)–(4.7); CKSZ14 line 286 and line 440.)

**Checks.**

- For the curve x+y=1 over 𝔽₅ and m=n=4, there are 3 torus points; χ=1, d₁=d₂=1 and the bound is max(3·32^(1/3),192/5), which exceeds 3. The two terms have different roles.
- The diagonal x=y meets μ₄×μ₄ in 4 points, but is a subtorus and is excluded from the gcd and low-order statements. The non-square condition also excludes f=X², whose quadratic-character sum over 𝔽₅ is 4 rather than 0.
- For the Markoff curve αx+β/x=y+y⁻¹, the smooth model has g=1 and four boundary points, so χ=4. Taking χ=3 from only the three projective points at infinity gives the wrong constant.

*Needs:* SchemeAndStackFoundations §§3.1–3.3, 5.9–5.11; WeilConjectures WC.5 and WC.7 sharp curve and model comparison; native finite fields, function fields, divisors and resultants. The arithmetic elimination target is: for every degree bound d there exist positive constants A_d,C_d such that, for every T≥2, there is a nonzero integer U(d,T) with at most C_d T^A_d prime divisors, and for every prime not dividing U every degree-at-most-d polynomial with no translated-subtorus factor has at most 11d³+d torus zeros with ord(x)+ord(y)<T. Establish this coefficient-uniform statement from CKSZ14 §4, treating d=1 separately. Choosing T=z^(δ/(2A_d)) and then increasing Z absorbs C_d and gives the claimed subpower exceptional set.

### 3.1 The cage

For sufficiently large odd p, a point of X*(F_p) lies in the cage if some coordinate is a nondegenerate split trace of eigenvalue order p−1 or a nondegenerate nonsplit trace of order p+1; include the nonempty parabolic slices at ±2 as specified by the BGS endgame. The cage is a union of complete rotation cycles, not by definition a Γ-orbit. Its nonemptiness and membership in a single Γ-orbit are theorem obligations. (BGS16, §3.2, p. 11; endgame §3.1, pp. 7–11; BGS16 line 502.)

The defining API is:

- Membership is the disjunction of the maximal-order slice and stated parabolic cases.
- A rotation fixing a selected maximal coordinate preserves its cage slice.
- The eventual giant orbit containing the cage is stable under the Klein four sign action, by uniqueness and commutation/normalization.

**Checks.**

- Having merely a coordinate of order dividing p−1 is insufficient: the required order is p−1.
- For p≡3 mod4 no parabolic point is added, since those slices are empty.
- At a=0 an eigenvalue has order 4; it is not treated as a generic maximal-order nondegenerate trace.

One proof route is as follows. Select maximal-order elements of the two cyclic tori and form their trace slices. Add the parabolic slices only when nonempty; keep membership a finite predicate.

*Needs:* §2.1; §2.2.

### 3.2 Incidence of conic sections

For every sufficiently large prime p, the graph of nonempty conic sections in different coordinate directions, with an edge when the slices meet, has diameter at most two after identifying coincident cases in the BGS construction. More explicitly, for a,b nonexceptional there is c such that C₁(a) meets C₃(c) and C₂(b) meets C₃(c); pairwise intersections are governed by 1+χ(a²b²−4(a²+b²)). (BGS16, Proposition 6 and proof, pp. 6–7; BGS16 line 320.)

One proof route is as follows. Solve the remaining quadratic; treat a zero discriminant with χ(0)=0. Count candidate c with both discriminants squares by expanding products of quadratic characters. Remove exceptional c and common-root cases separately, then apply the cited character bound.

*Needs:* §2.2; §3.0 (the specified finite-field estimate).

### 3.3 Primitive-coordinate intersections

Fix δ>0. For sufficiently large p, any nondegenerate rotation orbit of length L≥p^(1/2+δ) contains a point with another coordinate of maximal order in a split or nonsplit torus; maximal-order conic slices belong to a single Γ-orbit. Uniformly in the parameters occurring here, cycle points whose selected other coordinate is a primitive split trace are counted by Lφ(p−1)/(2(p−1))+O_ε(p^(1/2+ε)); use the analogous norm-one count when required. (BGS16, Proposition 7, Lemma 8 and equations (25)–(33), pp. 7–11; §3.2, p. 11; BGS16 line 338.)

One proof route is as follows. Write the intersection as αt+β/t=y+y⁻¹ with αβ=κ≠1. Use BGS Lemma 8’s factorization argument for irreducibility of the power-cover curves, with uniform genus and puncture bounds, then apply the sharp curve Weil bound in the supplier contract. Use Möbius inclusion-exclusion over divisors of p±1 and `phi(n)/n = n^(-o(1))` to obtain positive primitive counts. The Möbius sum P(H) counts pairs (cycle parameter t, primitive eigenvalue y). Each resulting cycle point has exactly the two inverse choices y,y⁻¹ for a nonparabolic primitive trace. Divide P(H) by 2; the norm-one case has the same factor. Positivity and the eventual endgame are unchanged. Combine primitive intersections to connect maximal slices, including the explicit parabolic adapters.

*Needs:* §3.1; §3.2; §2.2; ErdosProgressionPowers, Layer 0, “Explicit totient and divisor bounds”; WeilConjectures, WC.5, “Compatibility with curve and elliptic bounds”, and WC.5, “The independent surface route to curve bounds”.

### 3.4 The middle game

For every ε>0 there exist δ>0 and P such that for primes p>P, any Γ-orbit containing a coordinate of nondegenerate order L≥p^ε reaches the cage. A non-cage cycle in the middle range admits a point whose coordinate order is strictly larger than L; iteration terminates in the endgame. (BGS16, §4, pp. 11–15; BGS16 line 543; CZ13, Theorem 2 and Corollary 2, pp. 1929–1930; §5, pp. 1939–1942; CZ13 line 123; EFLMT24, Lemma 2.1, pp. 4–5; EFLMT24 line 163.)

One proof route is as follows. Use the Corvaja–Zannier subgroup-intersection theorem of §3.0 for each divisor d≤L of p−1 or p+1. Sum O(max((Ld)^(1/3),Ld/p)) over those divisors, with `tau(p +/- 1) = p^(o(1))`, to obtain fewer than L points when p^ε≤L≤p^(1/2+δ), choosing δ sufficiently small in terms of ε. The remaining point has a larger order; monotone integer growth leads to the endgame. Handle the degenerate slices directly.

*Needs:* §3.3; §2.2; §3.0 (the specified finite-field estimate); ErdosProgressionPowers, Layer 0, “Explicit totient and divisor bounds”.

### 3.5 The opening game

There are c>0 and P such that for every prime p>P every Γ-orbit on X*(F_p) has at least c(log p)^(1/3) points. There is no finite Γ-orbit on X*(ℚ̄). (BGS16, Propositions 11–12 and proofs, pp. 16–17; BGS16 line 722.)

The two headlines are `no_finite_orbit` over the algebraic closure of ℚ and `orbit_log_lower_bound` over prime fields.

One proof route is as follows. A finite characteristic-zero orbit forces all coordinate eigenvalues to be roots of unity; after a complex embedding their traces lie in [-2,2]. For u²+v²+w²=uvw the bound |uvw|≤(2/3)(u²+v²+w²) forces the origin. For a purported small finite-field orbit, bound the three coordinate eigenvalue orders by its size, excluding the already large parabolic cycles. Put N equal to their lcm; p∤N. In Q(ζ_N), choose roots reducing to the given eigenvalues at a prime above p, and form the integral Markoff relation α. The characteristic-zero argument makes α nonzero. RingOfIntegers.dvd_norm shows α divides its integral norm, so reduction at that prime forces p to divide the nonzero integer norm. Algebra.norm_eq_prod_embeddings bounds its absolute value by `20^([Q(zeta_N):Q]) = 20^(phi(N))`. Since N is at most the product of the three orders, obtain the logarithmic lower bound. Treat orders 1,2 and trace zero separately; trace zero has eigenvalue order 4.

*Needs:* §2.1; §2.2; Mathlib `RingOfIntegers.dvd_norm`; Mathlib `Algebra.norm_eq_prod_embeddings`; Mathlib `Algebra.norm_ne_zero_iff`; Mathlib `IsCyclotomicExtension.finrank`.

### 3.6 Bourgain–Gamburd–Sarnak giant orbit

For every real ε>0 there is Pε such that for every prime p>Pε the Γ-action on X*(F_p) has an orbit C(p) with #(X*(F_p)∖C(p))≤p^ε. For large p it is the unique orbit of size greater than half the total. This theorem first concerns Γ, not an arbitrary component of the Vieta graph. (BGS16, Theorem 1, p. 2; §§3–5, pp. 7–17; BGS16 line 35.)

The headline is `giant_orbit`, with ε chosen before its uniform prime threshold.

One proof route is as follows. Every coordinate with order at least p^η enters the cage orbit by the middle game. Count traces with eigenvalue order below p^η by summing φ(d) over d∣p±1, d<p^η, with the subpower divisor bound. Outside the cage orbit all coordinates have small order. Choose η sufficiently small relative to ε, then use the quadratic equation to bound the number of triples. Use the point count to deduce uniqueness of the giant orbit.

*Needs:* §3.4; §2.3; ErdosProgressionPowers, Layer 0, “Explicit totient and divisor bounds”.

### 3.7 Sparse exceptional primes

Let E={p prime : Γ(p) is not transitive on X*(F_p)}, interpreting the empty coefficient-one locus at 3 by the stated vacuous transitivity convention. For every ε>0 there is Tε such that #{p∈E:p≤T}≤T^ε whenever T≥Tε. (BGS16, Theorem 2, p. 2; Theorem 13 and proof, pp. 18–19; BGS16 line 802.)

The headline `sparse_exceptional_primes` uses the equivalent coefficient-three disconnected-prime condition.

One proof route is as follows. Apply the arithmetic low-order curve theorem §3.0 to the degree-four curves obtained by eliminating the fixed Markoff coordinate in eigenvalue variables. Verify that these curves have no component contained in a translate of a subtorus; isolate the finitely many exceptional fixed coordinates. Outside at most T^ε primes, all but boundedly many points on each relevant curve have a coordinate of order at least p^η. The opening-game lower bound eventually exceeds the bounded exceptional set, so every orbit enters the cage.

*Needs:* §3.5; §3.4; §3.0 (the specified finite-field estimate).

### Examples

For a=1 over 𝔽₅, κ=1/(1−4)=3≠1, and the nonsplit slice has 6 points. The inverse-root pair over a nonparabolic primitive trace contributes two eigenvalue choices to one cycle point; dividing by two is essential in the primitive-trace main term. The bound |xyz|≤(2/3)(x²+y²+z²) on the real cube [−2,2]³ forces a real Markoff triple in that cube to be the origin.

### Dependencies

§2.1; §2.2; §3.0 (the specified finite-field estimate); ErdosProgressionPowers, Layer 0, “Explicit totient and divisor bounds”; WeilConjectures, WC.5, “Compatibility with curve and elliptic bounds”, and WC.5, “The independent surface route to curve bounds”; Mathlib `RingOfIntegers.dvd_norm`; Mathlib `Algebra.norm_eq_prod_embeddings`; Mathlib `Algebra.norm_ne_zero_iff`; Mathlib `IsCyclotomicExtension.finrank`; §2.3.

## Layer 4: prime approximation and the symmetric root

Use the symmetric integral root to pass from the larger group to move reachability.

### 4.0 Affine integral approximation

For an affine variety V over ℤ and a positive modulus n, use ordinary surjectivity of the canonical point map V(ℤ)→V(ℤ/nℤ) as the meaning of affine strong approximation modulo n. This uses the supplied variety and point functor. It differs from the positive nonzero Markoff predicate by both source and target. (C24, Definition 5.5.6, p. 415; C24 line 4642.)

The defining API is:

- Every residue point has an integral preimage precisely when this canonical point map is surjective.
- An integral isomorphism of affine varieties preserves the predicate, by its commuting square with reduction.
- Connectedness of the prime Markoff graph implies the affine predicate after adjoining the origin, with the coefficient-three and coefficient-one comparison as in §4.3.

**Checks.**

- On the affine line at modulus 5, the residue 4 has the integral lift 4, and the reduction map is onto.
- For x²+1=0 the residues 2 and 3 modulo 5 satisfy the equation, whereas there is no integer root. The affine predicate is false despite two residue points.
- On the Markoff surface at modulus 65 the mixed point (40,40,40) is a residue point without an integral lift; restricting to the primitive locus changes the assertion.

*Needs:* SchemeAndStackFoundations §§0.1–0.2 relative spectra and base change; ClassicalArithmeticCompletion §§4.3, 4.58 and 4.111; §4.3 for the Markoff comparison.

### 4.1 The symmetric root orbit

For every prime p, on coefficient-three M*(F_p), Γ(p)·(1,1,1)=V(p)·(1,1,1). Hence Γ(p) is transitive iff G_p is connected. The image of the CA.4 positive integer reduction map is exactly this root orbit, so these conditions are equivalent to CA.4’s prime strong-approximation predicate. (M25, §1, pp. 623–624; locator-only citation; BGS16, §1, pp. 1–2; BGS16 line 8.)

One proof route is as follows. Use normality of V to move every coordinate permutation in a Γ-word to the right. Every coordinate permutation fixes the root, so it disappears on evaluation. Use CA.4’s integer generation and equivariance to identify the reduction image.

*Needs:* §0.1; §0.3; ClassicalArithmeticCompletion §4.92; ClassicalArithmeticCompletion §4.106; ClassicalArithmeticCompletion §4.111.

### 4.2 Eventual Markoff connectivity

If p>3 and Γ(p) has an orbit with complement of cardinality <p, then Γ(p) is transitive and G_p is connected. Consequently there is P₀ such that for every prime p>P₀ the coefficient-three reduction from positive integer triples is surjective; the set of disconnected primes is finite. (M25, Theorems 1.2–1.4 and argument following Theorem 1.4, p. 624; locator-only citation.)

The headlines `eventual_connectivity` and `eventual_positive_lifting` express respectively root reachability and positive integral lifts.

One proof route is as follows. The complement is stable under all Vieta moves, so its size is divisible by p. A multiple of p smaller than p is zero. Apply the giant theorem with ε=1/2 and transport coefficients using CA.4 for p>3. Use the root bridge to obtain graph connectivity and the integer lift.

*Needs:* §1.4; §3.6; §4.1.

### 4.3 Prime strong approximation

For every prime p outside the disconnected coefficient-three set, every nonzero coefficient-three solution modulo p lifts to a positive integer Markoff triple. Both full affine integral reduction maps M(Z)→M(F_p) and X(Z)→X(F_p) are surjective: add the origin, and use the factor-three equivalence for p≠3. At p=3 the coefficient-three cube is lifted by the positive root orbit, whereas coefficient-one X(F₃) consists only of the origin. (C24, Definition 5.5.6 and Theorem 5.5.7(c), pp. 415–416; C24 line 4642; M25, §1, pp. 623–624; locator-only citation.)

The headline `prime_affine_lifting` has connectivity as its hypothesis and includes every affine point, in both coefficients 1 and 3.

One proof route is as follows. Lift a nonzero point by a Vieta word applied to the root over Z. Lift the origin by the origin; transport through the twist only when legal. Separate p=3 rather than invert 3.

*Needs:* §4.1; §0.4; ClassicalArithmeticCompletion §4.108; ClassicalArithmeticCompletion §4.58.

### 4.4 All-prime connectivity conjecture

Define the all-prime connectivity proposition as ∀p prime, G_p is connected on coefficient-three M*(F_p). Record it as a conjectural proposition, not a theorem. It is equivalent to positive prime strong approximation for every prime and, for p≠3, to Γ-transitivity on coefficient-one X*(F_p). The empty coefficient-one locus at 3 must not be called a nonempty connected graph. (M25, Conjecture 1.1, p. 624; locator-only citation; C24, Conjecture 1.2.2, p. 307.)

The defining API is:

- ∀ prime p, Connected G_p.
- The proposition is equivalent to surjectivity of positive reduction for every prime.
- Layer 4 proves its restriction to p>P₀, not the proposition itself.

**Checks.**

- Its p=2 specialization is true by the four-vertex graph.
- Its p=3 specialization refers to the eight coefficient-three vertices, not to an empty graph.
- The proposition holds iff the positive root reduction is surjective for every prime, with the same universal quantifier.

One proof route is as follows. Package the universal statement as a proposition over Nat primes. Record the elementary small-prime checks and the eventual theorem as evidence, without proving the universal quantifier.

*Needs:* §0.2; §4.1.

### Examples

The prime 3 has eight positive-root residue points in coefficient three and only the affine origin in coefficient one; full affine lifting uses the zero integral triple in the latter case. The positive locus never lifts the affine origin, even though the full integral locus does.

### Dependencies

§0.1; §0.3; ClassicalArithmeticCompletion §4.92; ClassicalArithmeticCompletion §4.106; ClassicalArithmeticCompletion §4.111; §1.4; §3.6; §0.4; ClassicalArithmeticCompletion §4.108; ClassicalArithmeticCompletion §4.58; §0.2.

## Layer 5: maximal divisors and effective bounds

Build the divisor theory for every positive integer before applying it to p−1 and p+1.

### 5.1 Subgroup intersections on Markoff conics

Let p>3, λ∈`F_(p^2)^*` have order t>2 with a=λ+λ⁻¹∈F_p and a≠0,±2. Parametrize a nondegenerate rotation cycle by `alpha lambda^n + beta lambda^(-n)`, with αβ=a²/(a²−4). For d∣p−1 or d∣p+1, the number of n modulo t whose second coordinate is a nonparabolic trace of order dividing d is at most (3/2) max((32td)^(1/3),16td/p). The stronger inequality with constants (6,4) is an additional local theorem required before using the smaller order intervals. (CZ13, Corollary 2, p. 1930; EFLMT24 Lemma 2.1, pp. 4–5; CZ13 line 154.)

One proof route is as follows. Apply CZ13 Corollary 2 to αx+β/x=y+y⁻¹, a curve of bidegree (2,2), genus 1 and four punctures, with χ=4. For the normalized cubic let A=[1:0:0], B=[0:1:0], C=[0:0:1], D=[1:α:0]. The coordinate divisors are div(x)=B+C−A−D and div(y)=A+C−B−D, so both degrees are 2 and they are multiplicatively independent. At a torus singular point Euler’s identity would force x=βy and then αβ=1, excluded; direct gradients are nonzero at A,B,C,D. Thus the smooth plane cubic has genus 1 and χ=4. Its coordinate functions have degrees 2 and 2; the t,d power functions have degrees 2t and 2d. Their divisors show multiplicative independence. The separating hypotheses hold because p∤td. The bound for pairs is 3 max((32td)^(1/3),16td/p). Excluding y=±1 gives two distinct y-values per trace, so divide by 2. Handle a=0 directly and omit parabolic coordinates only after proving they enter the cage.

*Needs:* §2.2; §3.0 (the specified finite-field estimate).

### 5.2 Maximal divisors

Write D(n) for the positive divisors of n. For n≥1 and real x, M_x(n)={d∈D(n) : (d:ℝ)≤x and ∀e∈D(n), d∣e→(e:ℝ)≤x→e=d}. Maximal refers to divisibility, not numerical size. For a prime p and d≥1 put M_d(p)=#M_d(p−1)+#M_d(p+1), retaining the sum, so a common divisor is counted in both terms. (EFLMT24, Definition 3.1 and Theorem 3.2, p. 7; EFLMT24 line 296.)

The finite filter `maximalDivisors` is the simple definition needed by the domination and rank headlines.

The defining API is:

- d∈M_x(n) iff the displayed divisor, cutoff and maximality conditions hold.
- If d,e∈M_x(n) and d∣e then d=e.
- If d∣n, d>0 and d≤x, then ∃e∈M_x(n), d∣e.
- If x≥n then M_x(n)={n}; if x<1 then M_x(n)=∅.
- The finite carrier is a filter of Mathlib’s positive-divisor finset, with n≥1 excluding its empty-zero convention.

**Checks.**

- M₆(12)={4,6}, not {6}.
- M₃(12)={2,3}; the two numbers need not be coprime in other examples.
- M₀(12)=∅ and M₁(1)={1}.

One proof route is as follows. Filter the finite divisor set by the displayed maximality predicate. Every divisor ≤x lies below some maximal divisor by finiteness; distinct maximal divisors form an antichain.

*Needs:* Mathlib `Nat.divisors`.

### 5.3 The signed complement

For p>3 in the explicit cage range, let C be the Γ-orbit containing the cage, and assume C is invariant under double sign changes. Then 4p divides # (X*(F_p)∖C). The invariance follows either from uniqueness of a giant orbit or from the explicit maximal-order signed points and normalization by Γ. The latter proof is required for an explicit numerical range. (EFLMT24, Lemma 2.2, p. 5; EFLMT24 line 188.)

One proof route is as follows. Double sign changes normalize the action and preserve X*. Their action is free: a fixed nonidentity sign change would force two coordinates to vanish. Cage points of maximal order and their double-sign translates lie in the same cage orbit; propagate using normalization to get sign stability of C. The complement is a disjoint union of four-element sign orbits and a Vieta-stable set; combine divisibility by 4 and p.

*Needs:* §1.4; §3.1; §3.3.

### 5.4 Effective order obstruction

For a prime p>3 in the explicitly proved cage/endgame range, disconnectedness implies the existence of d dividing p−1 or p+1 with either 2√(2p)/M_d(p)<d≤108M_d(p)³, or p/(24M_d(p))≤d≤K_p^±, where K_p^±=8√p(p±1)τ(p±1)/φ(p±1) and the sign matches the chosen torus. Here M_d(p)=#M_d(p−1)+#M_d(p+1), with multiplicity. If the stronger local inequality with constants (6,4) is independently proved, its interval constants are 81/4 and 6. Both alternatives retain their displayed boundary inequalities. The denominators are nonzero: φ(p±1)>0, and M_d(p)≥2 because d≥1 and each positive divisor set below d has a maximal element. (EFLMT24, Proposition 2.4, pp. 5–6; Theorem 3.2, p. 7; Appendix Proposition 6.1, pp. 28–29; EFLMT24 line 301.)

One proof route is as follows. Take the largest order d in the complement; rotations cannot increase it without leaving the complement. Cover its lower coordinate orders by maximal divisors and sum the local intersection estimate: d≤(3/2)M max((32d²)^(1/3),16d²/p). The two terms give d≤108M³ or d≥p/(24M). Count all low-order points and compare with 4p to obtain the lower bound in the first case. Use the explicit endgame cutoff K_p^± for the upper bound in the second. Recheck equality cases instead of importing the source’s strict inequalities unchanged.

*Needs:* §5.1; §5.2; §5.3; §3.3.

### 5.5 Reducing functions

For positive m,n, a reducing map f:D(n)→D(m) satisfies f(d)≤d; (m/f(d))/(n/d)≤min(1,λ(m/f(d))/λ(n/d)); and f(d)/f(e)∈2^Z implies d/e∈2^Z. Quotients are positive rational numbers, D uses positive divisors, λ(1)=1 and λ(k) is the least prime factor for k≥2. Reducing is a predicate on maps, not an assertion that f itself is injective. (EFLMT24, Notation 3.3, Definition 3.4 and Lemmas 3.7–3.8, pp. 8–10; EFLMT24 line 334.)

The defining API is:

- The identity on D(n) is reducing.
- The composite of two reducing maps is reducing.
- Coprime product maps are reducing when both source and target factors are pairwise coprime.
- If n reduces to m, then m≤n.
- The inequalities use λ(1)=1, including d=n.

**Checks.**

- For odd primes 3≤q, q^i↦3^i is reducing D(q^a)→D(3^a).
- D(1)→D(1), 1↦1 is reducing and the ratios are all 1.
- The map D(3)→D(5), 1↦1,3↦5 is not reducing since f(3)>3.
- For quotient pairs (A₁,B₁)=(1,1) and (A₂,B₂)=(3,5), the true least-prime-factor ratio is 3/5, while the ratio of the separate minima is 1. The product proof must discard the terminal pair rather than assert equality or a lower bound by 1.

One proof route is as follows. Express the rational inequalities over positive denominators; give the 2-power condition as equality after multiplying by nonnegative powers of 2. Show identity maps are reducing and composition preserves all three conditions. For coprime source and target factorizations, extend reducing maps by products. For the ratio inequality write A_i=m_i/f_i(d_i), B_i=n_i/d_i. If B_i=1 then A_i=1; discard that pair. If some A_i=1<B_i, the product ratio is at most 1/B_i≤1/λ(B₁B₂)≤λ(A₁A₂)/λ(B₁B₂). If both A_i>1, use the ordinary product/minimum identity and the factor with minimal λ(A_i). The ratio is also at most 1. This handles terminal quotients instead of replacing a ratio of minima by an unsupported inequality.

*Needs:* §5.2; Mathlib `Nat.divisors`; Mathlib `Nat.minFac`.

### 5.6 Padding divisor antichains

If n reduces to m and a is least with 2^a m≥n, then #M_x(n)≤#M_x(2^a m) for every real x. For x<n, send d to the largest 2^i f(d) which divides 2^a m and is at most x; this is maximal and the resulting map is injective. (EFLMT24, Theorem 3.5, pp. 8–9; EFLMT24 line 349.)

One proof route is as follows. Conditions (a),(b) show the image is maximal: its least proper multiple in the divisor set exceeds x. If two images agree, condition (c) makes the preimages comparable by divisibility; antichain maximality then gives equality. Handle x<1 and x≥n separately. Compose reductions before padding, so the factor of two is paid once.

*Needs:* §5.5; §5.2.

### 5.7 Reduced integers

For the primes 2=p₁<p₂<⋯ and positive n=∏pᵢ^aᵢ with finite support, define reducedness by pᵢ^floor((aᵢ+1)/(aⱼ+2))<pⱼ for all i,j≥2, and 2^a₁<8pⱼ² for every absent odd prime pⱼ. The first inequalities are equivalent to floor((aᵢ+1)/(aⱼ+2))<log(pⱼ)/log(pᵢ). The simple predicate `IsReduced` uses all odd primes on Mathlib’s factorization. Odd-prime exponents are nonincreasing, with no gaps in their support; there is no inequality a₁≥a₂. (EFLMT24, Definition 3.11 and Lemmas 3.12–3.13, pp. 12–13; EFLMT24 line 539.)

The defining API is:

- The integer-power comparison is equivalent to the logarithmic condition.
- a₂≥a₃≥… and support has no odd-prime gaps.
- For the first absent odd prime q, `2^(a_1) < 8 q^2`.
- Adjoining the next absent odd prime preserves reducedness.

**Checks.**

- 3 is reduced; its odd exponent vector starts (1,0,…).
- 27 is not reduced: floor((3+1)/(0+2))=2 and 3²<5 fails.
- 2^a·3 is reduced for 0≤a≤7, while 2^8·3 is not, since 256≥8·5².

One proof route is as follows. Use monotonicity of the logarithm to replace each first inequality by an integer power comparison. Prove nonincrease of odd exponents from the condition with i>j. Bound the power of two by the first missing odd prime.

*Needs:* §5.5; Mathlib `Nat.divisors`.

### 5.8 Domination by reduced integers

For each integer n≥2 there is a reduced m with n≤m≤4n−6 and #M_x(n)≤#M_x(m) for every real x. (EFLMT24, Lemmas 3.9–3.10, pp. 10–12; Theorem 3.14, pp. 13–14; EFLMT24 line 602.)

The headline is `reduced_domination`; one m works simultaneously for every real cutoff x.

One proof route is as follows. Use EFLMT Lemma 3.9’s odd-prime exponent exchange: a failure of the reduced inequality gives a reducing map to a strictly smaller odd integer. Compose these reductions by well-founded descent on the target integer; apply padding once. Use Lemma 3.10 to spread surplus powers of two into successive absent primes until the separate two-bound holds. The first padding gives at most 2n−2; the final adjustment gives at most 2(2n−2)−2=4n−6.

*Needs:* §5.7; §5.6.

### 5.9 Divisor rank polynomial

For n≥1 put Ω(n)=Σa_i and C_k(n)=#{d∣n:Ω(d)=k}. The generating polynomial is `prod_i (1 + T + ... + T^(a_i))`; C_k is its k-th coefficient, with zero outside 0≤k≤Ω(n). The carrier D(n) is ordered by divisibility and rank Ω. (EFLMT24, Notation 3.17 and Lemmas 3.18–3.19, pp. 16–17; EFLMT24 line 745.)

The definitions `bigOmega` and `divisorRank` count multiplicity and positive divisors, respectively.

The defining API is:

- `sum_k C_k(n) T^k = prod_i sum_(j=0)^(a_i) T^j`.
- `C_k(n) = C_(Omega(n)-k)(n)` for 0≤k≤Ω(n).
- Σ_k C_k(n)=τ(n)=∏_i(a_i+1).
- For squarefree n, C_k(n)=binom(Ω(n),k).

**Checks.**

- For n=12 the rank polynomial is (1+T+T²)(1+T)=1+2T+2T²+T³.
- For n=1, Ω=0, C₀=1 and C_k=0 for k>0.
- For n=8, C₁=1 although binom(Ω,1)=3; the squarefree formula requires its hypothesis.

One proof route is as follows. Identify positive divisors with the product of exponent intervals [0,a_i]. Count exponent vectors by their sum; multiply the generating polynomials.

*Needs:* §5.2; Mathlib `Nat.divisors`.

### 5.10 Divisor antichain bounds

For n≥1 and x≥1, let [r,s] contain all Ω(d) for d∈M_x(n), and choose an integer k∈[r,s] closest to Ω(n)/2. Then #M_x(n)≤C_k(n). In particular `#M_x(n) <= C_(floor(Omega(n)/2))(n) <= tau(n) * binom(Omega(n),floor(Omega(n)/2))/2^(Omega(n))`. No analogous normalized binomial bound is asserted for every off-central rank. (EFLMT24, Lemmas 3.18–3.19, p. 17; Theorem 3.21 and proof, pp. 19–20; EFLMT24 line 877.)

The headline `central_rank_bound` states the central bound and its denominator-free normalized binomial comparison, for every positive n and every real x, including x<1.

The sharper interval-rank statement keeps x≥1 and an integer rank interval containing every maximal divisor rank; outside that range only the all-real-cutoff central headline is used.

One proof route is as follows. Construct a symmetric-chain decomposition of the finite product of exponent chains, by inducting on the factors and decomposing each rectangle into symmetric chains. Each maximal-divisor antichain meets a chain at most once; move its element along that chain to rank k. Prove this rank exists by symmetry and the choice of k. For the central normalized bound, split a repeated prime factor into a new prime and compare τ-normalized central rank counts; iterate to a squarefree factorization.

*Needs:* §5.9; §5.2.

### 5.11 Finite reduced intervals

For positive A,B, define the finite set of reduced integers n with A<n≤B, together with the unique prime exponent vector of each n. Prove its characterization, the finiteness of the possible exponent prefixes, and an exhaustive partition by admissible prefixes and powers of two. A discarded prefix means a mathematically empty extension set: every extension either violates a reduced inequality or lies outside the interval. All bounds are integer-power inequalities or proved rational enclosures. (EFLMT24, Algorithm 2 and Theorem 4.5, pp. 22–26; EFLMT24 line 1149.)

The defining API is:

- Every integer in the interval set is reduced and has the stated unique prime exponent vector.
- Every reduced integer with A<n≤B lies in the interval set.
- Two distinct prime exponent vectors do not represent the same positive integer.
- The integer-power inequalities define exactly the same reduced factorizations as the logarithmic inequalities.

**Checks.**

- The interval (2,3] contains exactly 3.
- The interval (3,3] is empty, and a false claim of completeness over a nonempty interval is rejected.
- An asserted empty prefix excluding exponent vector (0,1) in the interval (2,3] is false: it would omit 3.

One proof route is as follows. Partition the bounded factorization set by its largest odd prime and its nonincreasing odd exponent prefix. The reduced inequalities bound the missing-prime power of two and every admissible extension; uniqueness is unique factorization. Prove empty-branch equivalences and the disjoint union identity, including B≤A.

*Needs:* §5.7.

### 5.12 Truncated rank polynomials

For a genuine prime factorization n=∏pᵢ^aᵢ and k≥0, prove that the coefficient at Tᵏ of ∏ᵢ(1+T+⋯+T^aᵢ) is unchanged when every intermediate product is reduced modulo T^(k+1). For factors with nonnegative degree, its j-th coefficient is the finite sum of the preceding coefficients with indices j−r for 0≤r≤min(aᵢ,j). This is a polynomial identity and a factorization-to-rank comparison. (EFLMT24, Algorithm 3, pp. 25–26; EFLMT24 line 1204.)

The defining API is:

- The final degree-k coefficient equals C_k(n).
- Reduction modulo T^(k+1) at every finite product leaves the degree-k coefficient unchanged.
- The exponent vector is exactly the prime factorization of n, rather than arbitrary assigned data.

**Checks.**

- Exponents (2,1), k=2 yield coefficient 2.
- An empty factorization gives 1 at k=0 and 0 at k>0.
- An array claiming C₂(12)=3 fails polynomial multiplication against (1+T+T²)(1+T).

One proof route is as follows. Use coefficient truncation on ℕ[T]. Terms of degree greater than k do not contribute to coefficients of degree at most k, and the factorization identity in §5.9 identifies it with C_k(n).

*Needs:* §5.9.

### 5.13 Uniform connectivity intervals

Prove a uniform interval criterion for primes L<p≤U: an explicit cage/endgame range, exclusion of the second order interval, exhaustive coverage of the reduced representatives of p−1 and p+1 in [L,4U−2], and the rank inequalities excluding the first interval imply connectivity throughout that prime interval. With the conservative local bound, every possible first-interval obstruction has n+2<1492992C_k(n)⁸ and a divisor rank represented below d≤864C_k(n)³. The resulting finite descending sequence of rank inequalities must strictly decrease at each refinement; an unresolved representative n excludes all primes ≤n+1 from the claimed lower range. (EFLMT24, Algorithm 1 and Theorem 4.2, pp. 21–22; EFLMT24 line 974.)

The defining API is:

- The stated universal interval inequalities imply connectivity for every prime in (L,U].
- Every interval and divisor cutoff uses the same local geometric inequality.
- The finite reduced interval contains both representatives supplied for p−1 and p+1.
- An unresolved representative n forces the claimed lower endpoint to be at least n+1.

**Checks.**

- Deleting a reduced prefix from the coverage proof invalidates the interval assertion even if all listed ranks are correct.
- Using cutoff 162C³ with the conservative upper interval 108M³ is rejected; 864C³ is the safe cutoff.
- An interval with L≥U carries no assertion about any prime; an interval assertion for it cannot prove the numerical endpoint.

One proof route is as follows. Apply domination separately to p−1 and p+1. The local inequality gives d≤108M³ with M≤2C, hence d≤864C³; its strict lower endpoint implies p<108²(2C)⁸/8=373248C⁸. Since n+2≤4p, this gives n+2<1492992C⁸. Exclude all such pairs by the stated finite rank inequalities, and prove the second interval empty independently.

*Needs:* §5.11; §5.12; §5.10; §5.8; §5.4.

### 5.14 The explicit connectivity endpoint

Prove connectivity and positive integral lifting for every prime p>3489·10^389, equivalently p>3.489·10^392. The acceptance statement is `effective_connectivity`. The arithmetic proof route must establish an explicit cage range, exclude the second interval, and prove the first-interval inequalities uniformly. Its candidate comparison integer is N=(863#)(53#)(13#)(7#)(5#)3³2⁵. Prove N+1<3489·10^389 as an exact integer inequality. The local estimate, the complete finite interval inequalities and the explicit analytic endpoint are separate theorem obligations; this small inequality alone does not establish connectivity. (M25, §1, p. 624; locator-only citation; EFLMT24, Theorem 1.4, p. 3; proof and Algorithm 1, pp. 21–22; Remark 4.6, p. 26; EFLMT24 line 1027.)

One proof route is as follows. Combine the explicit constants supplied below, the uniform interval theorem and the exact integer comparison. Either prove the sharper local bound before using its smaller intervals, or establish every finite inequality with the conservative constants. Both tori and the cage range enter the proof.

*Needs:* §5.13; §4.1; ErdosProgressionPowers, Layer 0, “Explicit totient and divisor bounds” (explicit-constants contract).

### Examples

For 12 the rank polynomial is 1+2T+2T²+T³ and M₆(12)={4,6}. At n=4 the rank-zero proportion is 1/3, greater than the squarefree rank-zero proportion 1/4; the normalized comparison is only central. The candidate integer N has Ω(N)=187 and C₉₃(N)=3013671869689423302959704266406116383317724743440. Its exact primorial product satisfies N+1<3489·10^389; neither identity substitutes for the uniform finite interval inequalities.

### Dependencies

§2.2; §3.0 (the specified finite-field estimate); Mathlib `Nat.divisors`; §1.4; §3.1; §3.3; Mathlib `Nat.minFac`; §4.1; ErdosProgressionPowers, Layer 0, “Explicit totient and divisor bounds” (explicit-constants contract).

## Layer 6: oriented traces and level structures

Construct the geometric degree input, then transport it through actual trace coordinates.

### 6.0 Elliptic finite-group level structures and coarse degrees

For every finite group H, over Spec ℤ[1/#H] and its base changes, construct the stack of connected H-covers of pointed smooth genus-one curves, branched only at the section, and its balanced admissible-cover compactification over stable pointed genus-one curves. A level structure remembers the H-action and exterior epimorphism, so no unmarked isomorphism or arbitrary representation replaces it. Call the cover stack Adm(H). Its center-rigidified smooth stack of exterior H-structures is Level(H). Construct their coarse spaces and the forgetful maps to the elliptic moduli line, and fix a conjugacy class c in H for the ramification invariant. Compare connected components over an algebraic closure with determinant-one outer-free-group orbits on exterior epimorphisms F₂↠H. Retain the actual centralizers and any diagonal normalizer quotient in the degree comparison. (C24, §2.1 and Theorem 2.5.2, pp. 311–320 and 336–339; Theorem 5.2.10 and Proposition 5.2.20, pp. 398–400 and 403–404; C24 line 176 and line 3904.)

The defining API is:

- Pullback is defined from the category of pointed elliptic curves and connected H-covers to the same category after a base change, and respects the marking, H-action and branch section.
- The map from Level(H) to the elliptic stack is representable finite étale. The unrigidified cover stack retains its vertical center and is not substituted for this map. The admissible compactification has the balanced local inertia action. Its coarse map has positive finite degree on each nonempty characteristic-zero component; coarse formation commutes with the base changes covered by C24 Theorem 2.5.2(2), including regular Noetherian bases, rather than every base change without hypotheses.
- The geometric fibre is the quotient of actual epimorphisms by simultaneous inner conjugacy; connected components are determinant-one monodromy orbits. Coarse degree includes the vertical stabilizer and diagonal normalizer factors, rather than merely counting unmarked pairs.
- The ramification index is ord(c). Over an algebraically closed characteristic-zero field, for a component of the reduced ramification divisor above a coarse component X, let d be its coarse degree over X and let m be the least positive exponent killing all local characters of the cotangent line at its marked ramification point. Prove 12 ord(c) divides m d deg(X→ℙ¹_j). The exponent is that of the actual line, with all geometric stabilizers included. (C24, Theorem 3.5.1, pp. 358–359; C24 line 2295.)

**Checks.**

- For H trivial the exterior epimorphism set has one element, ord(c)=d=deg=1, and the elliptic cotangent exponent 12 gives 12∣12. Replacing the full exponent by a generic stabilizer order would lose this witness.
- For H=SL₂(𝔽₅) and noncentral trace −2, ord(c)=10, d=1 and m∣24; the degree 40 of the Markoff component gives 12·10∣24·40, namely 120∣960. The scalar −I has order 2 and is excluded.
- For H=SL₂(𝔽₄), a nonsplit element of order 5 has centralizer order 5 and vertical center 1; its torus quotient is 1. A split-only characteristic-two model would instead use the impossible divisor 5 of 3.

Over an algebraically closed characteristic-zero field, prove also the general finite-group degree congruence. If ℓ is prime, r=v_ℓ(ord c), v_ℓ(#H)=r+s, no proper normal subgroup of H has order divisible by ℓ^(j+1), and r≥3s+j, then ℓ^ceil((r−3s−j)/2) divides the coarse degree of every nonempty c-component. Derive the finite-SL₂ refinement by bounding the actual vertical and cotangent character exponents: m∣24 in odd characteristic and m∣12 in even characteristic; centralizer quotient divides (q−1)/ord(c) or (q+1)/ord(c), according to splitting. For odd prime-field noncentral trace −2, the centralizer has order 2p, hence quotient 1. Prove the corresponding degree divisibility before passing to trace orbits. (C24, Theorem 1.1.1(a), p. 304, Corollary 4.12.5, pp. 389–390, and Theorem 5.4.3, p. 412; C24 line 154, line 2295 and line 4501.)

*Needs:* ArithmeticGaloisRepresentations §4.4 (finite projective subgroup classification); SchemeAndStackFoundations §§1.18–1.19, 1.21, 1.23 and 4.15; InverseGaloisAndArithmeticFundamentalGroups §IG.3.2 exterior epimorphisms; the genus-one punctured-torus comparison and the ramification/cotangent-line construction in this subsection. The ramification and degeneration work has the following outputs: at a smooth marked ramification point its vertical automorphisms are Z(H)∩⟨c⟩; the boundary centralizer action embeds in the corresponding finite-group cusp automorphism group; and the full cotangent-character exponent divides 12 times the vertical exponent. Establish these on the admissible-cover stack before applying the coarse-degree identity. The prime-power automorphism estimate is the general finite-group theorem quantified above, not a hypothesis containing the required congruence. (C24, Propositions 3.5.2 and 4.10.3, Theorem 4.10.5 and Corollary 4.12.5; C24 line 3450 and line 3599.)

### 6.1 Trace coordinates and oriented actions

For a finite field F_q and t≠2, construct the Fricke trace map (A,B)↦(tr A,tr B,tr AB), with tr[A,B]=x²+y²+z²−xyz−2. Absolutely irreducible pairs modulo GL₂(F_q)-conjugacy identify with the F_q-points of this surface. The subset having at least two nonzero coordinates is the non-dihedral irreducible locus used by Chen. Aut(F₂) acts by precomposition, hence the trace rule is an antihomomorphism unless the right action is converted by inversion. Define Γ⁺ to be its Aut⁺(F₂)-image; do not identify Aut⁺ with its generally nonfaithful image. (C24, Theorem 5.2.10, pp. 398–400; Propositions 5.2.16–5.2.20, pp. 401–404; C24 line 3904.)

The elementary signature `orientedStep` consists of two reversing generators; its reflexive transitive closure is the determinant-one trace image.

One proof route is as follows. Use the supplied commutator trace identity and classify the absolutely irreducible pairs modulo GL₂(K). Impose at least two nonzero coordinates to exclude dihedral type, identify reversing Nielsen generators with the Vieta and transposition generators, then use the component and coarse-degree comparison of §6.0. A character point is not automatically epimorphic onto SL₂(K).

*Needs:* Tau Ceti `Matrix.SpecialLinearGroup.trace_commutatorElement_fin_two`; ClassicalArithmeticCompletion §4.58; §6.0 (level structures and coarse degree).

The trace and oriented-action API is:

- The commutator trace is x²+y²+z²−xyz−2, and trace t≠2 is equivalent to absolute irreducibility for these pairs.
- The non-dihedral locus is exactly the triples with at least two nonzero coordinates. A single nonzero coordinate is not enough.
- Converting precomposition to a left action by inversion respects products, and its determinant-one image is the relation generated by pairs of reversing generators. The image is normal of index at most two.

**Checks.**

- The matrices A=[[1,1],[0,1]] and B=[[1,0],[1,1]] give traces (2,2,3) and commutator trace 3, so 4+4+9−12−2=3.
- The identity pair gives (2,2,2) and trace 2: 4+4+4−8−2=2. It is reducible and excluded from the t≠2 dictionary.
- Over 𝔽₇ take A=diag(2,4) and B=[[0,6],[1,0]]. The trace triple is (6,0,0) and the commutator trace is 6≠2. It is absolutely irreducible of dihedral type, excluded by the two-nonzero-coordinate condition.

### 6.2 Trace order

For q=p^f≥3 and t∈F_q, n_q(t) is the order of any noncentral element of SL₂(F_q) with trace t. For t²≠4 it is the order of either root of T²−tT+1; when t=2 it is p, and when t=−2 in odd characteristic it is 2p. In characteristic two these repeated-root cases coincide and give order 2. Only the trace values allowed by the consuming theorem are used. (C24, Definition 5.1.4 and Proposition 5.1.5, pp. 393–394; Theorem 5.4.4, p. 413; C24 line 3726.)

The definition `traceOrder` is the order of the explicit noncentral determinant-one companion matrix [[0,1],[−1,t]], over an arbitrary field.

The defining API is:

- For t²≠4, n_q(t)=orderOf λ for either eigenvalue.
- If the characteristic polynomial has two distinct roots over the field, then n_q(t) divides q−1; in odd characteristic this is equivalent to a nonzero square discriminant.
- If the characteristic polynomial is irreducible over the field, then n_q(t) divides q+1; in odd characteristic this is equivalent to a nonsquare discriminant.
- For odd q=p^f, n_q(2)=p and n_q(−2)=2p.

**Checks.**

- Over F₅, a noncentral trace −2 matrix has order 10, whereas the scalar −I has order 2.
- Over F₄, a nonidentity unipotent trace-zero matrix has order 2.
- In a semisimple slice the trace order agrees with Layer 2’s eigenvalue order, independent of the inverse root.

One proof route is as follows. Use the Jordan forms of noncentral two-by-two determinant-one matrices to prove independence of the chosen element. Use λ↔λ⁻¹ invariance in the semisimple cases. Separate noncentral Jordan matrices from the scalar matrices ±I.

*Needs:* §6.1; Mathlib `orderOf`.

### 6.3 Generalized Markoff orbit congruences

Let K be a finite field with q≥3 elements, characteristic p, and t≠2. On x²+y²+z²−xyz=t+2 take an oriented orbit O containing a point with at least two nonzero coordinates, and put n=n_q(t). When q=p is odd and t=−2, prove p∣#O. When T²−tT+1 has distinct roots, put m=q−1 if it splits over K and m=q+1 if it is irreducible. For odd q prove n/gcd(n,2m/n)∣2#O, equivalently n/gcd(n,4m/n)∣#O. In even characteristic prove n/gcd(n,m/n)∣#O on the epimorphic SL₂ locus, and on the general non-dihedral locus using the characteristic-two subfield classification and its trivial diagonal normalizer quotient. Both split and nonsplit cases occur in even characteristic. The semisimple headline is `semisimple_orbit_congruence`; no prime-power unipotent assertion is made beyond the stated prime-field case. (C24, Theorem 5.4.4 and proof, pp. 413–414; C24 line 4534.)

One proof route is as follows. Use §6.0 on the actual representation image H≤SL₂(K). Compute the vertical character exponent and the split or norm-one centralizer order. The coarse degree is #O or 2#O; in even characteristic the subfield PSL₂ classification gives a trivial diagonal normalizer quotient. Prove this normalizer refinement in §6.0 before using it. Classify by splitting, so the nonsplit order q+1 is retained. In the nonsplit descent proof normalize one eigenvector coordinate to 1 and descend its ratio, rather than asserting that an arbitrary eigenvector is Frobenius-fixed.

*Needs:* §6.1; §6.2; §6.0 (level structures and coarse degree).

### 6.4 Valuation form of the orbit congruence

Let q≥3 be a prime power, ω∈`F_(q^2)^*` with t=ω+ω⁻¹∈F_q∖{2,−2}, and P on the trace-t surface with at least two nonzero coordinates. For an odd prime ℓ put r=v_ℓ(ord ω) and s=v_ℓ(q³−q)−r. Then `ell^(max(r-s,0))` divides the size of its Γ⁺-orbit, and therefore the size of its Γ-orbit. The subtraction is legitimate because ord ω∣q−1 or q+1. (C24, Theorem 5.5.9, p. 417; Theorem 1.2.7, pp. 308–309; C24 line 4697.)

The headline is `valuation_orbit_congruence`, with natural truncated subtraction and the explicit odd-prime hypotheses.

One proof route is as follows. For a semisimple trace, select the appropriate q±1 factor. Take ℓ-valuations in the gcd modulus; 2 has valuation zero because ℓ is odd. Bound the residual valuation of 2(q±1)/ord ω by s, giving the stated possibly weaker exponent. The Γ-orbit is a union of equal-sized Γ⁺-orbits because Γ⁺ is normal of index at most two.

*Needs:* §6.3; §6.2.

### 6.5 Oriented Markoff orbit divisibility

For odd prime p, every Γ⁺-orbit on coefficient-one X*(F_p) has cardinality divisible by p; at p=3 this has no instances because X* is empty. The coefficient-one p=2 oriented action is checked directly and has even orbit sizes. This statement concerns the actual oriented trace image, and is stronger than Martin’s Vieta-stable-set divisibility in a different direction. (C24, Proposition 5.2.17, pp. 402–403; Theorem 5.5.4, p. 415; C24 line 4631.)

The headline is `oriented_card_dvd`, including p=2 and the empty coefficient-one case at 3.

One proof route is as follows. For p odd specialize t=−2 and use the non-dihedral character identification X* at that trace. Apply the unipotent case of the general degree congruence. For p=2 explicitly enumerate the image of the oriented Nielsen generators rather than infer oriented transitivity from Vieta connectivity.

*Needs:* §6.1; §6.3; §0.4.

### 6.6 Oriented transitivity and moduli connectedness

For prime p≥5, if Γ is transitive on X*(F_p), then Γ⁺ is transitive and the absolute trace-(−2) nonabelian-level stack `M(SL_2(F_p))_(-2)/D(p)` is geometrically connected, as is its absolute coarse scheme. Thus this holds for all p outside the finite exceptional set in that range. For p=2,3 the indicated SL₂ epimorphism moduli locus is empty and is not asserted connected. (C24, Theorem 5.5.7(a)–(b) and proof, pp. 415–416; C24 line 4645.)

The finite-action headline is `oriented_transitivity`; the geometric stack statement needs the carrier constructed in §6.0.

One proof route is as follows. The oriented image is normal of index at most two. If it had two orbits, an orientation-reversing element would exchange them without a fixed point. The coordinate swap is orientation reversing and fixes (3,3,3) for p≥5, contradicting two orbits. Apply the exact finite-étale component/orbit dictionary from §6.0, including the D(p) quotient.

*Needs:* §6.1; §4.2; §6.0 (level structures and coarse degree).

### Examples

For noncentral trace −2 in SL₂(𝔽₅), n=10 and the coarse modulus is 10/gcd(10,2)=5; an oriented orbit of size 40 satisfies 5∣40. In 𝔽₄ the nonsplit order is 5 and the even-characteristic modulus is 5/gcd(5,1)=5. The trace triple (2,2,3) fixes the sign and −2 shift of the Fricke formula in this layer as well.

### Dependencies

ClassicalArithmeticCompletion §4.58; Mathlib `orderOf`; §0.4; §4.2.

## Layer 7: squarefree diagonal orbits

Keep the same word at every prime, proving independence before applying integral descent.

### 7.1 Primitive squarefree locus

For `n = prod_(p in S) p` with S a nonempty finite set of distinct primes ≥5, let X_prim(n) be the coefficient-one solutions over ZMod n whose reduction at every p∈S is nonzero. CRT identifies this set with `prod_(p in S) X*(F_p)`. Γ acts diagonally by the same integral word at every prime. The similarly defined M_prim(n) is equivalent by the factor-three twist. This is stricter than merely deleting the global origin. (MP18, §1, pp. 3–4; MP18 line 121; C24, Theorem 5.5.8(a), p. 417; C24 line 4680.)

The predicate `primitivePoint` is the actual local nonvanishing condition using the canonical ring maps to prime factors.

The defining API is:

- X_prim(n)≃∏_p X*(F_p), equivariantly for the diagonal action.
- x∈X_prim(n) iff every local reduction is nonzero.
- The CA.4 twist identifies M_prim(n) and X_prim(n) for 3∤n.
- For at least two factors, X_prim(n) is generally smaller than X(ZMod n)∖{0}.

**Checks.**

- At n=5, X_prim(5)=X*(F₅) has 40 points.
- (55,55,55) mod65 lies on X and is globally nonzero, but is zero mod5 and hence not primitive.
- At n=65 the root (3,3,3) is primitive and corresponds to the local roots at 5 and 13.

One proof route is as follows. Iterate the binary Chinese remainder ring equivalence and restrict it to the polynomial zero locus. Restrict further to nonzero points in every factor; use naturality of the polynomial moves. Keep a single global word action, rather than replacing Γ by an independent product of local Γ-images.

*Needs:* ClassicalArithmeticCompletion §4.58; ClassicalArithmeticCompletion §4.108; Mathlib `ZMod.chineseRemainder`; §0.1.

### 7.2 Sign blocks

For odd p, let K₄ act on X*(F_p) by double sign changes and Y*(p)=X*(F_p)/K₄. Its four-element blocks are [x,y,z]={ (x,y,z),(x,−y,−z),(−x,y,−z),(−x,−y,z) }. Γ normalizes K₄, hence induces a permutation image Q_p on Y*(p). Use Mathlib’s block and preprimitive-action predicates to discuss the Q_p action; Y* itself is a quotient by signs, not the set of Γ-orbits. (MP18, §1, pp. 2–3; §2, pp. 6–8; MP18 line 64.)

The defining API is:

- Every block has exactly four points for odd p.
- The quotient map X*→Y* is Γ-equivariant.
- For p≥5, #Y*=p(p+3)/4 or p(p−3)/4 according to p mod4.
- Primitivity of Q_p means Mathlib MulAction.IsPreprimitive for its finite action.

**Checks.**

- At p=5 the quotient has 10 blocks; at p=7 it has 7.
- The sign block of (3,3,3) has four points, whereas the full Γ-orbit at p=5 has 40.
- At p=2 the four displayed signs coincide; the odd-characteristic four-element statement fails.

One proof route is as follows. Freeness follows because two zero coordinates force the origin. Check conjugation of each Vieta move and coordinate permutation on K₄, then descend the action. Import the existing primitive-action carrier rather than define another general block theory.

*Needs:* §0.1; §7.1; Mathlib `MulAction.IsBlock`; Mathlib `MulAction.IsPreprimitive`.

### 7.3 Meiri–Puder condition

For a prime p≥5 define MP(p) to mean p≡1 mod4, or p≡3 mod4 and ord((3+√5)/2)≥32√(p+1) in `F_(p^2)^*`. Either square root gives the same condition because the two units are inverse. In the second branch this root lies in F_p or its quadratic extension and is nonzero; the p=5 case uses the first branch. (MP18, Theorems 1.3–1.4, p. 3; MP18 line 81; C24, Equation (5.8), p. 416; C24 line 4676.)

The predicate `mpCondition` quantifies over the inverse-paired roots in an algebraic closure; the polynomial and nonzero condition ensure they lie in the quadratic extension.

The defining API is:

- Every prime p≥5 with p≡1 mod4 satisfies MP(p).
- Changing √5 to −√5 leaves MP(p) unchanged.
- For the second branch MP(p) iff (ord ω)²≥1024(p+1).

**Checks.**

- MP(5) and MP(13) hold by the first branch.
- MP(7) fails the order branch: any order divides 6 or 8, while the square threshold is 8192.
- The two roots for p≠5 are inverse, so their computed multiplicative orders must coincide.

One proof route is as follows. Solve T²−3T+1 in `F_(p^2)`; the product of its roots is 1. Use inversion invariance of order. For p≡3 mod4 use the squared exact inequality (ord ω)²≥1024(p+1) to avoid an executable real square root.

*Needs:* §2.1; §7.2; Mathlib `orderOf`.

### 7.4 Primitivity of the Markoff block action

For p≥5, if Γ is transitive on X*(F_p) and MP(p) holds, then Q_p acts primitively on Y*(p). For p≡1 mod4, a nontrivial block containing the parabolic p-cycle must contain all parabolic slices and is Γ-invariant. For p≡3 mod4, any proper block has at least two homogeneous coordinate types and meets a sufficiently long rotation cycle in at most one point of a given signed coordinate. (MP18, §3, p. 9; Theorem 4.1 and Propositions 4.2–4.3, pp. 9–17; MP18 line 485.)

One proof route is as follows. Use the parabolic p-cycle and its intersections for p≡1 mod4; no Jordan or CFSG theorem is needed just for primitivity. For p≡3 mod4 prove the two-homogeneous-coordinate property using the index-at-most-two rotation subgroup. Parametrize two long split or norm-one cycles and count simultaneous type mismatches via quadratic characters. Show the polynomials k₁,k₂,k₁k₂ are not squares by their root divisors, and apply FF.2’s geometric non-square bound. A proper block containing [3,3,3] cannot contain a second point: rotate and interchange coordinates to contradict the no-correlation property.

*Needs:* §7.2; §7.3; §2.2; §3.0 (the specified finite-field estimate).

### 7.5a Finite primitive groups and quantitative section bounds

For a finite faithful primitive permutation group of degree greater than one, form its socle as the subgroup generated by its minimal nontrivial normal subgroups. Prove that it is transitive. Prove the standard alternatives: an elementary abelian regular socle in the affine case; two commuting regular nonabelian minimal normal subgroups; or a unique nonabelian minimal normal subgroup which is a product of isomorphic simple groups. In the latter two cases the socle is a direct product of nonabelian simple groups. The normal-subgroup transitivity step uses the Mathlib contract; the classification of minimal normal factors and the regular-centralizer alternatives are the new group-theoretic work. (DM96, Theorems 4.3B and 4.7A, locator-only; MP18, Theorems 5.9–5.10 and Corollary 5.11, pp. 24–25; MP18 line 1360.)

The defining API is:

- Minimal normal factors are characteristic-simple, and distinct minimal normals commute with trivial intersection.
- The two regular factors centralize one another, and the centralizer of either regular factor in the full symmetric group is the other regular action.
- In the single nonabelian minimal-normal case, its centralizer inside the primitive group is trivial.

 A product of nonabelian simple groups has no subgroup of index 2 or 3: an index-3 action maps it to S₃ and every simple factor maps trivially. The statement is about nonabelian simple factors, not arbitrary simple groups.

**Checks.**

- The regular C₅ socle in AGL₁(𝔽₅) is abelian and the degree is 5; it belongs to the affine alternative and cannot supply a nonabelian-simple conclusion.
- The natural S₃ action of degree 3 has C₃ as its transitive minimal normal subgroup. Its order 3 and index 2 in S₃ prevent an incorrect assertion that every normal subgroup in a nonabelian primitive group is nonabelian.
- For the Markoff block degree at p=7, #Y*=7 is a prime power. The first rotation has a nonidentity power fixing 4 of the 7 blocks; a nonidentity affine map in prime degree fixes at most 1, excluding that alternative without the false non-prime-power argument. A₅ has order 60 and has no subgroups of indices 2 or 3, whereas C₂ has an index-2 trivial subgroup.

For every proper primitive G<S_n with G≠A_n, prove |G|<exp(4√n(log n)²) if G is not two-transitive (`primitive_order_bound`). For n≥2¹⁶, if G is two-transitive and any subgroup of G surjects onto A_k, prove k<6 log n (`primitive_section_bound`). A section here is a quotient of a subgroup, witnessed by that surjection. These are general theorems; their Markoff application also proves the exact finite coincidence exclusion and its exceptional pair in §7.5. (DM96, Theorems 5.3A and 5.5B, locator-only; MP18, Theorem 5.12, p. 25; MP18 line 1369.)

*Needs:* Mathlib primitive actions, normal subgroups, simple groups, quotients, finite permutation groups and real logarithms; the minimal-normal and regular-action targets of this subsection. No assumption of alternating containment is used in place of these general theorems.

### 7.5 Independence of prime actions

For distinct primes p₁,…,pᵣ≥5 with primitive Q_p-actions, order the primes by the order of a slice rotation on Y*(p), with decreasing prime as the tie-break. For Ωⱼ, the kernel of the action on the first j block factors, prove that its image on the next factor contains a transitive direct product of nonabelian simple groups, and hence the full product action is transitive. The two-prime input contains the next socle; the induction uses a transitive product of simple groups, without claiming it equals the socle at every induction step. (MP18, Corollary 5.11, Theorem 5.12 and Lemma 5.13, pp. 25–27; MP18 line 1362.)

One proof route is as follows. Use §7.5a for primitive-group structure and section bounds. Outside p=7 the block degree is not a prime power; at 7 a rotation power fixes more than half the block set and excludes the affine case. Different rotation orders give a nontrivial kernel element; commute it separately with the two simple factors when both occur, keeping the later-prime image throughout. Equal orders require p²−1=q(q²−1): prove the quantitative large-q exclusion and the finite Diophantine exclusion for q<203897, with the pair (11,5) handled separately. Nested commutators give the transitive simple-product subgroup needed for induction.

*Needs:* §7.4; §7.2; §7.5a (primitive-group structure and quantitative section bounds).

### 7.6 Lifting sign blocks simultaneously

Under these local primitivity hypotheses prove that the kernel Λⱼ of the action on the first j full nonzero triple sets acts transitively on the next one. The quotient Ωⱼ/Λⱼ embeds in a product of four-point symmetric groups and is solvable with composition primes 2 and 3. Combine persistence of the required nonabelian simple factors with explicit sign changes from rotation commutators. Include the auxiliary primes 2,5,7,11 and the full finite transitivity theorem at their product 770, then project away auxiliary factors. This is a theorem about the diagonal action on ordered triples, not a consequence of point-set CRT. (MP18, Lemmas 5.4–5.5 and Proposition 5.6, pp. 21–24; MP18 line 1200.)

One proof route is as follows. Nonabelian simple factors survive the solvable sign quotient. Prove the commutator identities with distinct coordinate rotations: the second commutator uses the second rotation in both positions. For p≡3 modulo 4 use a point with two elliptic coordinates of orders divisible by 4; the character count is at least (p−11√p)/4 for p>121. Prove the finite exceptions at primes ≤121 and the product-770 transitivity identity; these are finite mathematical obligations, with no procedure prescribed.

*Needs:* §7.5; §7.2; §2.2; §3.0 (the specified finite-field estimate).

### 7.7 Squarefree Markoff transitivity

Let S be a nonempty finite set of distinct primes p≥5, each with transitive local Γ-action (equivalently outside E) and satisfying MP(p), and n=∏S. Then Γ acts transitively on X_prim(n) and on M_prim(n). Each primitive point lifts to a positive integral Markoff triple, in the respective coefficient convention. This is not a full-affine lifting theorem for n with two or more prime factors. (MP18, Theorem 1.9, p. 4; §5, pp. 19–27; MP18 line 133; C24, Theorem 5.5.8(a), p. 417; C24 line 4680.)

The headlines `squarefree_transitivity` and `squarefree_positive_lifting` use n>1 squarefree, with every prime factor ≥5, locally transitive and satisfying MP.

One proof route is as follows. Induct on the prime factors using the action kernel transitivity at each step. Take a single integral Γ-word carrying the simultaneous root to the target; normality of V and symmetry of the root remove coordinate permutations. Apply the word to the positive integral root and use the CA.4 coefficient comparison.

*Needs:* §7.1; §7.4; §7.5; §7.6; ClassicalArithmeticCompletion §4.92.

### 7.8 The actual squarefree integral image

For n as in squarefree-transitivity, the images of M(Z)→M(Z/n) and X(Z)→X(Z/n) are exactly {0}∪M_prim(n) and {0}∪X_prim(n), respectively. If S has at least two primes, full affine strong approximation generally fails. Explicitly (40,40,40) modulo 65 lies on coefficient-three M, is zero modulo 5 and equals (1,1,1) modulo 13; it has no integral lift. The coefficient-one counterpart is (55,55,55) modulo 65. (C24, Theorem 5.5.8(b) and proof, p. 417; C24 line 4680.)

The headline is `squarefree_integral_image`, for coefficients 1 and 3 with exactly the same local hypotheses.

One proof route is as follows. A nonzero coefficient-three integer solution has no zero coordinate and positive coordinate product; double sign changes make it positive. Pairwise gcd=1 follows from CA.4 and is invariant under the sign changes. Consequently no nonzero integral solution reduces to the origin at any prime. For coefficient-one solutions first divide integrally by 3, using CA.4’s integral twist bijection and p≥5. The primitive image is all of the primitive locus by the simultaneous orbit theorem; the zero image is lifted by the origin. At 65 the mixed point is globally nonzero but zero locally at 5, contradicting the necessary primitivity. Prime 5 and 13 satisfy MP and their transitivity checks are in MD.0.

*Needs:* §7.7; ClassicalArithmeticCompletion §4.101; ClassicalArithmeticCompletion §4.108; ClassicalArithmeticCompletion §4.103.

### Examples

For n=65 the primitive coefficient-three locus has 40·208=8320 points. The globally nonzero point (40,40,40) reduces to the origin at 5 and the root at 13; it is not primitive. Its coefficient-one image is (55,55,55). The two integral image sizes are 8321, including the origin, whereas the full affine surface has 41·209=8569 points.

### Dependencies

ClassicalArithmeticCompletion §4.58; ClassicalArithmeticCompletion §4.108; Mathlib `ZMod.chineseRemainder`; §0.1; Mathlib `MulAction.IsBlock`; Mathlib `MulAction.IsPreprimitive`; §2.1; Mathlib `orderOf`; §2.2; §3.0 (the specified finite-field estimate); ClassicalArithmeticCompletion §4.92; ClassicalArithmeticCompletion §4.101; ClassicalArithmeticCompletion §4.103.

## Downstream consumers

The prime connectivity, reduction image, rotation counts and oriented congruences supply arithmetic questions about Markoff residues. NonabelianLevelStructures consumes §6.0–§6.1 for its elliptic specialization, and Layers 2–4 and §6.6 for modular branch data and geometric connectedness; the direction is from these foundations to that modular geometry. Squarefree arithmetic consumes Layer 7 on the primitive locus, retaining the local transitivity and order hypotheses. Integer orbit-counting and complex bifurcation extensions use their own foundations and do not enter these proofs.

## Worked examples

The elementary weights at p=5 separate field division from extension across a zero coordinate: at (0,1,2) the three naive quotients would contain two zero denominators, whereas the prescribed values are 0,3,3. Complementarity for a fixed labelled move is 2w=1; it never requires the vertex set to split into two-element pairs. At p=3 the actual component size is 8, and 3 does not divide 8, so the characteristic exception is mathematically necessary.

For two primes, point-set CRT and action independence are different statements. A single integral word acts in both factors. At modulus 65 the roots at 5 and 13 lie in their primitive factors, whose sizes multiply to 8320. Mixed patterns contribute 40+208=248 additional nonzero affine points. Every nonzero integral solution is primitive at both primes by the integer coprimality theorem, so precisely those mixed patterns have no lift. The full surface size is 1+8320+248=8569. This establishes both inclusions in the claimed integral image and diagnoses the false full-affine squarefree assertion.

## References

Every statement is phrased independently; locators refer to the versions below. Source extraction locators have the form “source id line N”. Locator-only entries are cited without a claim to have read their text.

- **M25.** Daniel E. Martin, *A new proof of Chen’s theorem for Markoff graphs*, Inventiones mathematicae 241 (2025), 623–626, [published article](https://doi.org/10.1007/s00222-025-01346-9). Theorem 1.4 and §2, pp. 624–625; locator-only. The coefficient-three characteristic-three exception is explicit in Layer 1.
- **BGS16.** Jean Bourgain, Alexander Gamburd and Peter Sarnak, *Markoff Surfaces and Strong Approximation: 1*, [arXiv:1607.01530v1](https://arxiv.org/abs/1607.01530v1), 2016. Theorems 1–2 and 13, Propositions 6–12, §§2–6, pp. 4–19. Coefficients are transported explicitly; the middle game uses the gcd route of §3.0.
- **C24.** William Y. Chen, *Nonabelian level structures, Nielsen equivalence, and Markoff triples*, Annals of Mathematics 199 (2024), 301–443, [published author copy](https://www.williamyunchen.com/s/Chen-Nonabelian-level-structures-Nielsen-equivalence-and-Markoff-triples.pdf). Theorem 1.1.1(a), Theorem 3.5.1 and §§5.1–5.5; Theorems 5.2.10, 5.4.3–5.4.4 and 5.5.4–5.5.9. Characteristic two uses polynomial splitting, and the squarefree conclusion is the primitive image theorem of §7.8.
- **EFLMT24.** Jillian Eddy, Elena Fuchs, Matthew Litman, Daniel Martin and Nico Tripeny, *Connectivity of Markoff mod-p graphs and maximal divisors*, [author revision of 29 July 2024](https://www.math.ucdavis.edu/~efuchs/Markoffconnectivity.pdf), 30 pages. Definition 3.1, Theorems 3.5, 3.14 and 3.21, and §§4 and 6. Locators use this revision, not another version’s numbering. The geometric bound is used with the conservative constants justified in §5.1.
- **MP18.** Chen Meiri and Doron Puder, with an appendix by Dan Carmon, *The Markoff Group of Transformations in Prime and Composite Moduli*, [arXiv:1702.08358v2](https://arxiv.org/abs/1702.08358v2), 2018. Theorems 1.3–1.4, §§3–5, Corollary 5.11, Theorem 5.12 and Lemma 5.13, pp. 3–27.
- **CZ13.** Pietro Corvaja and Umberto Zannier, *Greatest common divisors of u−1, v−1 in positive characteristic and rational points on curves over finite fields*, JEMS 15 (2013), 1927–1942, [publisher open text](https://ems.press/content/serial-article-files/31918?nt=1). Theorem 2 and Corollary 2, pp. 1929–1930, proofs §§4–5, pp. 1936–1942.
- **CKSZ14.** Mei-Chu Chang, Bryce Kerr, Igor Shparlinski and Umberto Zannier, *Elements of large orders on varieties over prime finite fields*, Journal de Théorie des Nombres de Bordeaux 26 (2014), 579–594, [open text](https://www.numdam.org/item/JTNB_2014__26_3_579_0/). Theorem 1.2 and §4, pp. 585–591, especially the uniform resultant integer and its prime factors.
- **DM96.** John D. Dixon and Brian Mortimer, *Permutation Groups*, Springer, 1996, [publisher record](https://doi.org/10.1007/978-1-4612-0731-3). Theorems 1.6A, 4.3B, 4.7A, 5.3A and 5.5B, locator-only. The quantitative statements are also stated in MP18, Theorem 5.12, p. 25.
