# Roadmap: nonabelian level structures on elliptic curves

**Summary.** For a finite group G, an elliptic G-level structure is a connected G-torsor over a once-punctured elliptic curve, and its moduli stack M(G) is a finite étale cover of the elliptic moduli stack 𝓜(1) whose geometric fibre is the set Epi^ext(F₂, G) of surjections from the free group of rank two modulo inner automorphisms of G. ArithmeticDynamicsPartII §6.0 constructs these stacks, their admissible compactification and the coarse degree congruence of Chen's Theorem 3.5.1. This roadmap develops the rest of Chen's theory on top of that construction: the ramification and branch data of the level covers, their functoriality and cofinality, the complete description of their cusps by finite group data, the vertical automorphism groups of cuspidal covers, and from these the combinatorial congruence, which says that the order of the commutator class, divided by two explicit cusp and centralizer obstructions, divides the size of every Out⁺(F₂)-orbit on Epi^ext(F₂, G) (Chen, Theorem 4.10.5). It deduces the congruence for nonabelian finite simple groups other than PSL₂(𝔽_q), develops the integral rank-two trace coordinates over every commutative ring, computes the vertical automorphisms of SL₂(𝔽_q)-level structures, and ends with the modular geometry of the trace −2 Markoff level curves: their two components, branch data, genus, finiteness of j-invariants over number fields, large projective monodromy and noncongruence.

## Scope and ownership

This roadmap owns: theorems about the reduced ramification divisor and the Higman invariant of an elliptic admissible G-cover; the branch cycles of the level cover over j = 0, 1728, ∞; boundary deformation and density; functoriality in G and absolute level structures; cofinality; the finite description of cusps (gluing data, precuspidal data, cusp graphs, the invariant set I(G), the standard cusp, classification and inversion); cusp automorphism groups and the representability criterion; the obstruction pair m′_c, d′_c and the combinatorial congruence; the square-subgroup lemma and the simple-group congruence; the integral rank-two character scheme, the outer action in trace coordinates over every commutative ring, the matrix-algebra criterion, trace strata, admissible traces, the diagonal outer group and normalizers of SL_n(𝔽_q); the epimorphic trace −2 locus over prime fields, the branch cycles in trace coordinates, rotation slices at arbitrary level over every finite field, the exact rotation order and the vertical automorphisms of SL₂(𝔽_q)-level structures; and the trace −2 Markoff modular geometry of Layer 7, including the alternating containment at primes congruent to 3 modulo 4 and the composition factors of congruence quotients used for noncongruence.

It leaves the following to named roadmaps.

- ArithmeticDynamicsPartII §6.0 owns the specialization of the admissible-cover stack to (g, n) = (1, 1), written Adm(G) here; the center-rigidified level stack, written M(G) here; its admissible compactification M̄(G); their coarse spaces and forgetful maps to the j-line; the comparison of geometric components with Out⁺(F₂)-orbits on Epi^ext(F₂, G); the cotangent line at a marked ramification point and its character exponent m; the coarse degree congruence `12·ord(c) ∣ m·d·deg(X → P¹_j)` of Chen's Theorem 3.5.1; the vertical automorphism group Z(G) ∩ ⟨c⟩ at a smooth ramification point and the bound of the full character exponent by 12 times the vertical one; the general prime-power degree congruence of Chen's Corollary 4.12.5(a); and the refinements for absolutely irreducible non-dihedral H ≤ SL₂(𝔽_q): center containment, the bound on the diagonal normalizer quotient, `m ∣ 24` or `m ∣ 12`, and the centralizer bounds on d. Its §6.1 owns the finite-field trace dictionary (absolutely irreducible pairs modulo GL₂(𝔽_q) for commutator trace t ≠ 2, and the non-dihedral locus as the triples with at least two nonzero coordinates), §6.2 the trace order n_q(t) as `traceOrder`, §§6.3–6.4 the generalized Markoff orbit congruences, §6.5 the oriented Markoff orbit divisibility and §6.6 oriented transitivity and geometric connectedness of the absolute trace −2 level stack. Its §1.4 owns Chen's divisibility theorem for Vieta-stable sets (Martin's proof), §§2.1–2.2 the rotation slices and their periods on the prime-field zero level, §2.3 the count of X*(𝔽_p), §2.4 the divisor sum Φ and the rotation orbit count, §§3.6–3.7 and 4.2 the giant orbit, the sparse and then finite exceptional set, and §§7.2–7.4a the sign blocks, the Meiri–Puder condition MP(p), primitivity of the block action and alternating containment at primes congruent to 1 modulo 4.
- InverseGaloisAndArithmeticFundamentalGroups §IG.5.4 owns balanced admissible G-covers of marked curves, the proper admissible-cover stack and the equivalence with stable marked G-curves, whose marking over a ramified label is the reduced ramification divisor; §IG.3.2 owns exterior epimorphisms and the action of Out(F_r) on them; §IG.3.1 owns Riemann existence for punctured curves; §§IG.1.2–IG.1.4 own tame tangential fibres, invariance under algebraically closed base extension in characteristic zero and the moduli outer action.
- AnabelianGeometryAndNonabelianChabauty §§1.1–1.2 own tangential fibre functors on P¹ ∖ {0, 1, ∞}, local inertia orbits on branches, good paths and the existence of symmetric good paths.
- StableReduction owns nodes, normalization and dual graphs with loops (Layer 1), the relative dualizing sheaf of nodal curves (Layer 2), and prestable and stable pointed curves with external and self-clutching (Layer 3).
- SchemeAndStackFoundations owns Deligne–Mumford stacks (§1.19), quotient stacks (§1.21), coarse moduli spaces (§1.23), Riemann–Hurwitz for curves (§3.2), versal deformation of a node (§4.6) and the stack of stable pointed curves (§4.15). AlgebraicModuliForArithmeticGeometry §5.1 owns rigidification along inertia subgroups and its vertical-kernel representability criterion, and §§8.2–8.3 framed deformations and completed atlas presentations. ModularCurvesPartII owns full level structures and the Deligne–Rapoport level stacks (§§3.1, 3.12) and the compactified coarse j-line (§3.11).
- ArithmeticGaloisRepresentations owns absolute irreducibility in Burnside's form (§1.7), normal subgroups and automorphisms of PSL₂ and PGL₂ (§4.3) and Dickson's classification (§4.4). ClassicalArithmeticCompletion owns the Markoff level surfaces V_k and the trace-coordinate surface X (§4.58), the Markoff–Hurwitz moves with permutations and even sign changes (§4.57) and the finite-field point count (§4.76). Tau Ceti owns the Fricke identity `Matrix.SpecialLinearGroup.trace_commutatorElement_fin_two`.
- MappingClassGroupsAndCanonicalRepresentations owns the analytic orbifold fundamental group of the moduli stack of pointed curves (C.0/moduli-monodromy). HeightsRationalPointsAndObstructions §4.6 owns Faltings's finiteness theorem. BelyiMaps Layer 10 owns Belyi's theorem. CFSGStatement owns the statement of the classification of finite simple groups.

The stack Hodge degree deg λ = 1/24 and the conormal power isomorphism along a ramified section enter only the proof of Chen's Theorem 3.5.1, which ArithmeticDynamicsPartII §6.0 states; they belong to that proof and are not separate targets here.

## Conventions

G is a finite group. Bases lie over ℤ[1/|G|]; every characteristic-zero or algebraically closed hypothesis is stated in the target that uses it. Right G-actions are used on covers and left fundamental-group actions on fibres. The commutator is [x, y] = x y x⁻¹ y⁻¹, Mathlib's `commutatorElement`. For an element c, |c| is its order (Mathlib `orderOf`); a conjugacy class is named as such. Valuations v_ℓ are taken of positive integers only (Mathlib `Nat.factorization`).

F₂ is free on a, b, identified with the fundamental group of a once-punctured complex torus by a positively oriented basis; with these conventions the positive peripheral loop is [b, a]. A surjection φ : F₂ → G is recorded by its generating pair (φ(a), φ(b)); Epi^ext(F₂, G) is the set of surjections modulo simultaneous conjugation in G (InverseGaloisAndArithmeticFundamentalGroups §IG.3.2). Aut(F₂) acts by precomposition, which is a right action; its polynomial realization in trace coordinates is therefore an anti-homomorphism. Out(F₂) ≅ GL₂(ℤ) through abelianization, and Out⁺(F₂) is the preimage of SL₂(ℤ). The central element γ₋ᵢ : (a, b) ↦ (a⁻¹, b⁻¹) maps to −I. The positive transvections (a, b) ↦ (a, a b) and (a, b) ↦ (b a, b) have abelianization matrices `[[1, 1], [0, 1]]` and `[[1, 0], [1, 1]]` (columns are the images of a and b); they generate SL₂(ℤ).

Adm(G) is the stack of elliptic admissible G-covers before rigidification, Adm⁰(G) its smooth-target locus, M(G) the smooth level stack and M̄(G) its center-rigidified compactification (ArithmeticDynamicsPartII §6.0). A subscript X denotes a connected component; X^coarse its coarse curve. Every j-degree is the generic degree of a map of coarse curves. Admissible covers are finite and balanced at nodes; flatness at a ramified node is not required: the index-two chart has generic rank two and special fibre of length three.

A compatible system of primitive roots of unity (ζ_n) is fixed wherever a Higman invariant is formed; over ℂ it is ζ_n = exp(2πi/n). Changing the system by a coprime power changes the Higman class by that power; no invariance under arbitrary coprime powers is asserted.

The trace-coordinate surface at level t + 2 is `x² + y² + z² − x y z = t + 2` (ClassicalArithmeticCompletion §4.58 with k = t + 2), so the commutator trace t = −2 is the Markoff surface X and X*(R) removes the origin. Γ is generated by the Vieta moves and the coordinate permutations, without sign changes (ArithmeticDynamicsPartII §0.1); the larger group of ClassicalArithmeticCompletion §4.57 also has the even sign changes, and the two are compared explicitly where both occur. A trace t is split semisimple when `X² − t X + 1` has two distinct roots in the field and nonsplit when it is irreducible; this works in characteristic two, where a discriminant-square test does not. Invariants under GL₂ as an algebraic group are invariants of the coaction of the group scheme.

Convention witnesses.

- The Fricke normalization: for A = `[[1, 1], [0, 1]]`, B = `[[1, 0], [1, 1]]` the traces are (2, 2, 3) and tr[A, B] = 4 + 4 + 9 − 12 − 2 = 3; for A = B = I they are (2, 2, 2) and the commutator trace is 2.
- The peripheral orientation: over 𝔽₇, if φ([a, b]) is conjugate to `[[−1, 1], [0, −1]]`, then the Higman element φ([b, a]) = φ([a, b])⁻¹ is conjugate to `[[−1, −1], [0, −1]]`, which lies in the other noncentral trace −2 class because −1 is not a square modulo 7. Choosing [a, b] in place of [b, a] exchanges the two Higman classes.
- The anti-action: precomposition satisfies φ ∘ (α ∘ β) = (φ ∘ α) ∘ β, so the trace transformation of α ∘ β is that of α followed by that of β. For r : (a, b) ↦ (a⁻¹, b) and t : (a, b) ↦ (a⁻¹, a b), with trace transformations (x, y, z) ↦ (x, y, x y − z) and (x, y, z) ↦ (x, z, y), the automorphism r ∘ t sends a ↦ a and b ↦ a⁻¹ b, and the triple (2, 3, 5) of φ becomes (2, 1, 3) for φ ∘ (r ∘ t): first the move of r, (2, 3, 5) ↦ (2, 3, 1), then that of t. Composing the moves in the other order gives (2, 5, 3) ↦ (2, 5, 7).
- The rotation: γ∞ (a, b) ↦ (a, a b) acts on trace coordinates by (x, y, z) ↦ (x, z, x z − y), so (3, 3, 3) ↦ (3, 3, 6).

## Exact supplier contracts

### From Mathlib

`commutatorElement` (`Mathlib/Algebra/Group/Commutator.lean`) is x y x⁻¹ y⁻¹. `orderOf` (`Mathlib/GroupTheory/OrderOfElement.lean`) is zero for elements of infinite order, which do not occur in the finite groups here. `Subgroup.centralizer` (`Mathlib/GroupTheory/Subgroup/Centralizer.lean`) has membership `h * g = g * h` for every h of the given set; the centralizer of a generating set equals that of the generated subgroup. `Subgroup.zpowers` and `Subgroup.closure` are the cyclic and generated subgroups. `Equiv.prodShear`, `Equiv.prodComm` (`Mathlib/Logic/Equiv/Prod.lean`), `Equiv.mulLeft` (`Mathlib/Algebra/Group/Units/Equiv.lean`) and `Equiv.inv` (`Mathlib/Algebra/Group/Equiv/Basic.lean`) give the permutations of pairs used in §3.1. `MulAction.toPermHom` (`Mathlib/Algebra/Group/Action/End.lean`) and the diagonal action of `ConjAct G` on `G × G` give simultaneous conjugation; `MulAction.orbit`, `MulAction.orbitRel` and `MulAction.orbitRel.Quotient` (`Mathlib/GroupTheory/GroupAction/Defs.lean`) give orbits and orbit spaces; an orbit is the range of the orbit map and carries no transitivity assertion. `Finset.lcm` is 1 on the empty finset (`Finset.lcm_empty`, `Mathlib/Algebra/GCDMonoid/Finset.lean`). `Nat.factorization` (`Mathlib/Data/Nat/Factorization/Defs.lean`) is used only on positive integers. `IsSimpleGroup` (`Mathlib/GroupTheory/Subgroup/Simple.lean`) includes nontriviality but not nonabelianness. `Matrix.SpecialLinearGroup`, `Matrix.trace` and `Matrix.ProjectiveSpecialLinearGroup` (`Mathlib/LinearAlgebra/Matrix/ProjectiveSpecialLinearGroup.lean`, the quotient of SL by its center) are the native matrix groups. `FreeGroup`, `Nat.totient`, `Function.minimalPeriod`, `Monoid.exponent` and `Algebra.adjoin` keep their library meanings. `alternatingGroup.isSimpleGroup` (`Mathlib/GroupTheory/SpecificGroups/Alternating/Simple.lean`) requires at least five points; `nat_card_alternatingGroup` (`Mathlib/GroupTheory/SpecificGroups/Alternating.lean`) requires a nontrivial type. `CongruenceSubgroup.Gamma` and `CongruenceSubgroup.IsCongruenceSubgroup` (`Mathlib/NumberTheory/ModularForms/CongruenceSubgroups.lean`) are the principal congruence subgroups and the predicate that a subgroup of SL₂(ℤ) contains one of nonzero level; they are used unchanged.

### From Tau Ceti

`Matrix.SpecialLinearGroup.trace_commutatorElement_fin_two` (`TauCeti/LinearAlgebra/Matrix/Trace/FinTwo.lean`) is the Fricke identity tr[A, B] = x² + y² + z² − x y z − 2 for A, B ∈ SL₂(R) over every commutative ring, with (x, y, z) = (tr A, tr B, tr AB). `TauCeti.PermutationTriple` (`TauCeti/Combinatorics/PermutationTriple/Basic.lean`) is a triple of permutations of `Fin n` with σ∞ σ₁ σ₀ = 1; `TauCeti.PermutationTriple.eulerChar` and `TauCeti.PermutationTriple.genus` (`TauCeti/Combinatorics/PermutationTriple/EulerCharacteristic.lean`) are the sum of the cycle counts minus n and the truncated combinatorial genus, and `TauCeti.PermutationTriple.IsConnected.two_sub_two_mul_genus` gives 2 − 2g = χ for a connected triple; the genus has geometric meaning only for connected triples.

### From TauCetiRoadmap.ArithmeticDynamicsPartII

§6.0: for every finite group H over ℤ[1/|H|], Adm(H), Adm⁰(H), M(H) and M̄(H) with M(H) → 𝓜(1) representable finite étale; coarse formation compatible with the base changes of Chen's Theorem 2.5.2(2); geometric fibres Epi^ext(F₂, H) with components the Out⁺(F₂)-orbits; the coarse degree congruence `12·ord(c) ∣ m·d·deg` on a component with ord(c) > 1 and a chosen component of the reduced ramification divisor; the vertical group Z(H) ∩ ⟨c⟩ at a smooth ramification point, the embedding of boundary vertical automorphisms into the cusp automorphism group and the bound of the full exponent by 12 times the vertical one; Chen's Corollary 4.12.5(a) in degree form; and, for q ≥ 3 and H ≤ SL₂(𝔽_q) absolutely irreducible and not dihedral, Z(SL₂(𝔽_q)) ≤ H, the bound on the diagonal normalizer quotient, `m ∣ 24` (odd q) or `m ∣ 12` (even q) and `d ∣ |C_H(c)/⟨c⟩|`. §6.1: for a finite field and t ≠ 2 the trace map identifies absolutely irreducible pairs modulo GL₂-conjugacy with the points of the level t + 2 surface, the non-dihedral locus is the set of triples with at least two nonzero coordinates, and the Aut⁺(F₂)-image is normal of index at most two in the image of Aut(F₂). §6.2: `traceOrder`, the order of the companion matrix of `X² − t X + 1`, with n_q(2) = p and n_q(−2) = 2p for odd q and the split and nonsplit divisibilities. §§6.3–6.6, §1.4, §§2.1–2.4, §§3.6–3.7, §4.2 and §§7.2–7.4a as listed in Scope and ownership; in particular the predicate MP(p) of §7.3 and the block group Q_p on Y*(p) = X*(𝔽_p)/(even sign changes) of §7.2.

What ArithmeticDynamicsPartII must provide (gap:markoff-alternating-three-mod-four): for primes p ≡ 3 (mod 4) with Q_p transitive on Y*(p) and MP(p), the block group Q_p contains the alternating group of Y*(p) (Meiri–Puder, Theorem 1.4, from the primitivity of ArithmeticDynamicsPartII §7.4 and the Guralnick–Magaard classification of primitive groups containing an element with at least half the points fixed).

### From TauCetiRoadmap.InverseGaloisAndArithmeticFundamentalGroups

§IG.5.4, "Admissible G-covers of marked curves" and "Admissible stacks and stable marked G-curves": balanced admissible G-covers over ℤ[1/|G|], their base change, the connected and smooth loci, inverse node characters, the proper Deligne–Mumford admissible stack for 2g − 2 + n > 0, the equivalence with stable marked G-curves marking the reduced ramification divisor over a ramified label and the whole étale fibre over an unramified one, and the vertical automorphism group Z(G) of a connected smooth cover. §IG.3.2, "Exterior epimorphisms and T-systems": `ExteriorEpi`, the action of Out(F_r) after the inner quotient, and generating tuples as surjections. §IG.3.1, "Riemann existence for punctured curves", with ramification indices read from cycle lengths. §IG.1.2, "Tame tangential fibres at a boundary point", with the cyclic inertia and its peripheral character convention. §IG.1.3, "Invariance under algebraically closed base extension in characteristic zero". §IG.1.4, "Exactness in families and the moduli outer action", including the generic stabilizer ±1 of 𝓜(1,1).

What InverseGaloisAndArithmeticFundamentalGroups must provide (gap:gaschutz-generating-pairs): for every surjection f : G₁ → G₂ of finite groups with G₁ generated by two elements, every generating pair of G₂ lifts along f to a generating pair of G₁, so that postcomposition with f maps Epi^ext(F₂, G₁) onto Epi^ext(F₂, G₂) compatibly with the Out(F₂)-actions.

### From TauCetiRoadmap.AnabelianGeometryAndNonabelianChabauty

§1.1, "Tangential fibre functors and their analytic comparison": the fibre functor F_t at a tangent vector, its inertia generator γ_t for a compatible root system, the positively oriented loop over ℂ, and the involution ι(z) = 1/z exchanging the functors at t₀ and ι*t₀. §1.2, "Local inertia orbits on branches", "Good path between tangential basepoints", "Symmetric tangential path" and "Existence of symmetric good paths": a good path δ : t₀ → t∞ makes γ₀ and δ⁻¹γ∞δ topological generators of π₁(P¹ ∖ {0, 1, ∞}) with the ordered relation through γ₁, and symmetric good paths exist for t∞ = ι(t₀).

### From TauCetiRoadmap.StableReduction

Layer 1: normalization, the conductor and the dual graph of a nodal curve with loops allowed and valence counted by half-edges. Layer 2: the relative dualizing sheaf of nodal curves and effective Cartier divisors in the smooth locus. Layer 3: pointed prestable and stable families, their smooth locus and normalization, and external and self-clutching with their dual-graph and pushout universal properties.

### From TauCetiRoadmap.SchemeAndStackFoundations

§1.19 Deligne–Mumford stacks; §1.21 quotient stacks; §1.23 coarse moduli spaces, Keel–Mori and their base-change hypotheses; §3.2 `scheme_riemann_hurwitz` for finite morphisms of smooth proper curves, with equality in the tame case; §4.6 `node_versal_deformation`, the hull Λ[[t]] of the split node with versal family u v = t; §4.15 the proper Deligne–Mumford stack of stable pointed curves.

What SchemeAndStackFoundations must provide (gap:equivariant-node-smoothing): for a stable marked G-curve over an algebraically closed field of characteristic prime to |G| with tame balanced action, whose target has a single node with stabilizer of order r, the equivariant deformation functor is unobstructed and its framed elliptic deformation map on hulls is Λ[[T]] → Λ[[t]], T ↦ t^r, with r = 1 for a smooth object.

### From TauCetiRoadmap.AlgebraicModuliForArithmeticGeometry

§5.1, "Inertia subgroups and rigidification": `ArithmeticModuli.Rigidification.stack` for a flat finitely presented subgroup of inertia, and `ArithmeticModuli.Rigidification.vertical_kernel`: when the vertical inertia kernel of X → Y is such a subgroup, the rigidification factors X → Y through a representable morphism. §8.2: the smoothing family x y = t of the node. §8.3, "Exact completion and tangent interfaces": `schemeFramedCompletionEquiv` and `completedAtlasPresentation_equivalence`.

What AlgebraicModuliForArithmeticGeometry must provide (gap:geometric-point-completion): at a geometric point of a locally Noetherian Deligne–Mumford stack whose residue field is algebraically closed but not finite over the residue field of a Cohen ring Λ, the universal framed deformation ring over Λ is identified with the completed strictly henselian local ring, retaining the point identification and the residual automorphism group.

### From TauCetiRoadmap.ModularCurvesPartII

§3.1 integral full level structures and §3.12 the Deligne–Rapoport level-H stack: the compactified full level (ℤ/n)² problem over ℤ[1/n] with its Weil-pairing components. §3.11, "The compactified coarse j-line": j : X(1) → P¹ is the coarse space of the compactified elliptic stack.

### From TauCetiRoadmap.ArithmeticGaloisRepresentations

§1.7 absolute irreducibility over a field in Burnside's form: the k-span of the image is the full endomorphism algebra. §4.3: normal subgroups of GL₂(𝔽_q), PSL₂ and PGL₂, and Aut PSL₂(𝔽_q) = PGL₂(𝔽_q) ⋊ Gal(𝔽_q/𝔽_p) for q ≥ 4. §4.4, "Dickson's classification": a finite subgroup of PGL₂(k̄) fixes a point of P¹, or is conjugate to a subfield PSL₂ or PGL₂, or is dihedral, or is A₄, S₄ or A₅, with genuine subfield embeddings.

### From TauCetiRoadmap.LanglandsParameterStacks

LP2e.1 coarse parameter quotients `Spec A^Ĥ` and LP2c.7 the generation of invariant functions on tuples by trace functions over fields.

What LanglandsParameterStacks must provide (gap:integral-rank-two-invariants): for every commutative ring R, the invariants of the GL₂-scheme coaction on the coordinate ring of pairs of 2 × 2 matrices are generated by traces of words and determinants, their formation commutes with arbitrary base change R → S, and restriction to pairs in SL₂ × SL₂ is surjective on invariants.

### From TauCetiRoadmap.ClassicalArithmeticCompletion

§4.58: `markoffPoly`, `markoffLevelSet` and `markoffTraceSurface`, with X*(R) = X(R) ∖ {0}. §4.57: `markoffHurwitzMove` and `markoffHurwitzGroup`, the group generated by the moves, the coordinate permutations and the even sign changes. §4.76: the point count of x₁² + x₂² + x₃² − α x₁ x₂ x₃ = β over 𝔽_p.

### From TauCetiRoadmap.MappingClassGroupsAndCanonicalRepresentations

C.0/moduli-monodromy: for 2g − 2 + n > 0 the analytic orbifold fundamental group of the ordered moduli stack M(g, n) is the pure mapping class group, as an orbifold group rather than the fundamental group of a coarse space.

What MappingClassGroupsAndCanonicalRepresentations must provide (gap:punctured-torus-nielsen): Nielsen's isomorphism Out(F₂) ≅ GL₂(ℤ) through abelianization with Out⁺(F₂) the preimage of SL₂(ℤ), the identification of the orbifold fundamental group of 𝓜(1,1)^an with Out⁺(F₂) for a positively oriented basis (a, b) of the punctured torus with boundary loop [b, a], and the images in Out⁺(F₂) of the standard loops of the j-line around j = 0, 1728, ∞, namely the classes of (a, b) ↦ (a b⁻¹, a), (a, b) ↦ (b⁻¹, a) and (a, b) ↦ (a, a b).

What MappingClassGroupsAndCanonicalRepresentations must provide (gap:asada-cofinality): Asada's theorem that every connected finite étale cover of 𝓜(1)_ℚ̄ is dominated by a connected component of M(G)_ℚ̄ for some finite group G generated by two elements, together with the strengthening of Bell–Booher–Chen–Liu, Theorem 2.2.3, that for every smooth projective geometrically connected curve X over ℚ̄ there are a nonempty open U ⊆ X and such a component N with a finite étale Galois morphism N → U.

### From TauCetiRoadmap.HeightsRationalPointsAndObstructions

§4.6, "Mordell over number fields": `Curve.finite_rationalPoints`, finiteness of the rational points of a smooth projective geometrically connected curve of genus at least two over a number field.

### From TauCetiRoadmap.BelyiMaps

Layer 10, §10.4: a curve over ℚ̄ admits a Belyi map.

### From TauCetiRoadmap.CFSGStatement

A0: `ClassificationStatement`, every finite simple group is isomorphic to a group on the list.

### From TauCetiRoadmap.CFSGBasicProperties

A0, the assembled list properties: every group on the CFSG list is finite and simple.

What CFSGBasicProperties must provide (gap:vdovin-abelian-subgroups): every nonabelian group on the CFSG list that is not isomorphic to PSL₂(𝔽_q) for any prime power q has every abelian subgroup of order strictly less than the cube root of its order (Vdovin, Theorem A).

## How to read the build

Layer 0 proves the ramification, Higman, branch-cycle, deformation and functoriality properties of the level stacks of ArithmeticDynamicsPartII §6.0, and their cofinality. Layer 1 describes the cusps of these stacks completely by finite group data and Layer 2 computes their automorphism groups, including the criterion for the rigidified compactification to be representable over the elliptic stack. Layer 3 combines the cusp automorphism groups with the coarse degree congruence of ArithmeticDynamicsPartII §6.0 to obtain the combinatorial congruence on Out⁺(F₂)-orbits, stated in `combinatorial_congruence`. Layer 4 bounds the two obstructions group-theoretically and proves `simple_group_congruence`. Layer 5 builds the rank-two trace coordinates over every commutative ring and the finite-field trace data. Layer 6 specializes to SL₂(𝔽_q): the epimorphic trace −2 locus, the branch cycles and rotations in trace coordinates, and vertical automorphisms. Layer 7 combines these with the Markoff dynamics of ArithmeticDynamicsPartII to describe the trace −2 Markoff level curves. A target's *Needs:* line lists what its statement and its indicated proof route use.

## Layer 0: ramification, branch cycles and functoriality of elliptic level structures

All objects of this layer are those of ArithmeticDynamicsPartII §6.0 and InverseGaloisAndArithmeticFundamentalGroups §IG.5.4; this layer proves properties of them.

### 0.1 The reduced ramification divisor and its monodromy

For an elliptic admissible G-cover π : C → E over S, the reduced ramification divisor R_π is the marking of the stable marked G-curve attached to π over the origin (InverseGaloisAndArithmeticFundamentalGroups §IG.5.4). Prove the following description and properties. For a nontrivial cyclic H ≤ G let Δ(H) be the fixed locus of H in the smooth locus C^sm minus the fixed loci of all strictly larger cyclic subgroups; then R_π is the disjoint union of the Δ(H), with the induced fixed-locus scheme structures. It is an effective Cartier divisor in C^sm, finite étale over S, compatible with every base change, and its geometric points are the points over the origin with nontrivial inertia. On a connected base the ramification index e at the origin is constant; if e ≥ 2 then R_π has degree |G|/e over S and is the fibrewise reduced origin fibre, while if e = 1 it is empty and the marking is the whole étale origin fibre. If S is reduced then R_π is reduced; conversely, if R_π → S is surjective (in particular if e ≥ 2 and S is nonempty and connected) and R_π is reduced, then S is reduced. (Chen, §2.2, pp. 322–325, Proposition 2.2.3 and Remark 2.2.4; Definition 3.2.1, pp. 351–352.) The converse without surjectivity, asserted in Chen's Remark 2.2.4, is false (Checks below).

Monodromy. Let S be connected and e ≥ 2, and let x be a geometric ramified point with inertia group H. Then all connected components of R_π are isomorphic finite étale Galois covers of S, and their deck groups embed in N_G(H)/H. If S is regular and integral and contains a primitive e-th root of unity, they embed in C_G(H)/H. For a connected component X of Adm(G) over ℤ[1/|G|, ζ_e] the same holds for the universal reduced ramification divisor; consequently the degree d_X of a connected component of the universal divisor over X^coarse divides |C_G(⟨c⟩)/⟨c⟩| for the Higman element c. (Chen, Proposition 2.2.5, pp. 325–326; Proposition 3.2.2, pp. 352–353.)

One proof route: use the tame smooth chart x = ξ^e to identify each fixed locus with a section after an étale cover, separate loci with different stabilizers (they are disjoint in the smooth locus), descend their union and the Cartier property, and count the geometric fibre G/H. Reducedness of S passes to the finite étale R_π, and the converse uses faithfully flat descent along the surjective finite étale R_π → S. For monodromy, the G-action commutes with finite étale monodromy and is transitive on the geometric fibre G/H; an equivariant permutation is determined by its value at H, and its stabilizer condition gives the normalizer quotient. The faithful inertia character H → μ_e on the cotangent line is constant over a regular integral base containing ζ_e, which forces centralization. For the universal stack the fixed-subgroup loci are open and closed; on each connected component the faithful character takes constant values in the constant group μ_e, monodromy preserves it, so the normalizer image centralizes H; descend this through an étale atlas. Connectedness of pulled-back covers uses that the forgetful configuration maps are smooth and surjective with nonempty geometrically connected fibres; no properness is used (this repairs the proof of Chen's Proposition 3.2.2(b), whose fibres are open curves).

**Checks.**

- Every unramified connected cover has R_π = ∅, although π⁻¹(O) has |G| points; the marking is the whole origin fibre.
- For inertia of order 3 in S₃, R_π has degree 6/3 = 2.
- For the chart x = ξ^e with e ≥ 2, R_π is ξ = 0 with multiplicity one, not the different, which has multiplicity e − 1.
- After base change to S = Spec k[ε]/(ε²), R_π remains finite étale and fibrewise reduced but is not a reduced scheme; replacing it by its reduction would break base change.
- For G = 1 over S = Spec k[ε]/(ε²), R_π is empty, hence reduced, of degree 0 (not |G|/e = 1), while S is not reduced; this refutes the converse without surjectivity.
- The centralizer quotient, not the normalizer quotient, bounds d_X: for odd dihedral G of order 2k and a rotation c of order k, C_G(⟨c⟩)/⟨c⟩ is trivial while N_G(⟨c⟩)/⟨c⟩ has order 2.

*Needs:* InverseGaloisAndArithmeticFundamentalGroups §IG.5.4 (admissible covers, stable marked G-curves); InverseGaloisAndArithmeticFundamentalGroups §IG.1.2 (tame tangential fibres and inertia characters); StableReduction Layer 2 (effective Cartier divisors in the smooth locus); ArithmeticDynamicsPartII §6.0 (Adm(G) and its components); SchemeAndStackFoundations §1.19 (étale atlases).

### 0.2 The Higman invariant and its strata

Fix a compatible system (ζ_n) on a ℤ[1/|G|]-base with every inertia index e dividing n. At a geometric point x over the origin with inertia group H, the action of H on the cotangent line of C at x is a faithful character χ_x : H → μ_e. Define the Higman invariant Hig_ζ(π) as the conjugacy class of the unique c ∈ H with χ_x(c) = ζ_n^(n/e); in the unramified case e = 1 and c = 1. ArithmeticDynamicsPartII §6.0 indexes its components by this ramification class; this section fixes its normalization and proves its invariance properties. (Chen, Definition 2.3.1, p. 327; Proposition 2.3.2 and Definition 2.3.4, pp. 327–328; Situation 2.5.14, pp. 346–347.)

The defining API is:

- Hig_ζ assigns a conjugacy class of G to every geometric object of Adm(G), independent of the chosen point x over the origin, and compatible with base change and isomorphisms.
- The order of a representative of Hig_ζ(π) is the ramification index e at the origin.
- Replacing (ζ_n) by (ζ_n^a) with a coprime to n replaces the class by its a-th power.
- Over ℂ with ζ_n = exp(2πi/n), Hig_ζ(π) is the class of φ([b, a]) for the monodromy φ : F₂ → G in a positively oriented basis (a, b).
- The index e and Hig_ζ are locally constant on Adm(G) and on its smooth locus. After adjoining the needed roots, each conjugacy class c gives an open and closed substack Adm(G)_c, every geometric cover lies in exactly one of them (the unramified ones in Adm(G)_1), the decomposition descends through the central rigidification to M(G) and M̄(G) and agrees on coarse spaces, and changing the root system permutes the strata by the corresponding coprime power map. A stratum is not asserted to be connected. (Chen, Proposition 2.3.2 and Definition 2.3.4, pp. 327–328.)

**Checks.**

- For abelian G every elliptic G-cover has Higman class 1, since every commutator is trivial.
- For the generating pair of two distinct transpositions of S₃, the Higman class is the class of 3-cycles and e = 3.
- Replacing ζ_e by ζ_e⁻¹ inverts the Higman element; in SL₂(𝔽₇) this exchanges the two noncentral trace −2 classes (the peripheral witness of Conventions), so a class need not equal its inverse.
- For G = 1 the only stratum is Adm(1)_1 = M̄(1).

One proof route: the tame chart shows χ_x faithful; changing x conjugates the generator; étale-local charts give base change; the analytic comparison of the chosen root with the oriented peripheral loop uses the tangential fibre functors. Local constancy follows on tame charts and descends along an étale atlas; the clopen preimages are invariant under central rigidification.

*Needs:* §0.1; InverseGaloisAndArithmeticFundamentalGroups §IG.1.2; InverseGaloisAndArithmeticFundamentalGroups §IG.3.2 (exterior epimorphisms); AnabelianGeometryAndNonabelianChabauty §1.1 (positively oriented inertia over ℂ); AlgebraicModuliForArithmeticGeometry §5.1 (rigidification); ArithmeticDynamicsPartII §6.0.

### 0.3 Branch cycles of the level cover

Let k be algebraically closed of characteristic zero. Under the identification of the geometric fibre of M(G) with Epi^ext(F₂, G) of ArithmeticDynamicsPartII §6.0, the local monodromies of M(G) → 𝓜(1) around j = 0, 1728, ∞ and the generic stabilizer act on exterior pairs by right precomposition with γ₀ (a, b) ↦ (a b⁻¹, a), γ₁₇₂₈ (a, b) ↦ (b⁻¹, a), γ∞ (a, b) ↦ (a, a b) and γ₋ᵢ (a, b) ↦ (a⁻¹, b⁻¹). Prove: the generic fibre of a component of M(G)^coarse over the j-line is the quotient of the corresponding Out⁺(F₂)-orbit O by ⟨γ₋ᵢ⟩, so the coarse degree is |O/⟨γ₋ᵢ⟩|, which is |O| or |O|/2; the fibres of the compactified coarse component over j = 0, 1728 and ∞ are respectively the orbit sets of O/⟨γ₋ᵢ⟩ under γ₀, under γ₁₇₂₈, and under the group generated by γ₋ᵢ and γ∞, with ramification indices the orbit lengths. Stack monodromy uses the orbifold fundamental group of 𝓜(1)^an, not that of the coarse affine line. (Chen, Theorem 2.5.2(3)–(5), pp. 335–338; Situation 2.5.14, pp. 346–347.)

One proof route: transport the elliptic universal family through the orbifold identification of 𝓜(1,1)^an with Out⁺(F₂) and the images of the standard loops; apply the exterior-epimorphism fibre description; compute the four words and the stabilizer quotients, distinguishing stack and coarse fibres; transport to every algebraically closed field of characteristic zero by base-change invariance.

**Checks.**

- For G = 1 every fibre has one element and every branch operator acts trivially.
- For G = C₂ the three nonzero pairs form one component of coarse degree 3, and γ₋ᵢ acts trivially since every element is its own inverse.
- The generic stack fibre has twice the size of the coarse fibre exactly when γ₋ᵢ has no fixed point on the orbit: for G = C₃ the orbit O consists of the 8 surjections ℤ² → ℤ/3, γ₋ᵢ (negation) acts freely and the coarse degree is 4, the index in PSL₂(ℤ) of the image of Γ₁(3), not 8; for G = C₂ it acts trivially and the coarse degree is |O| = 3.
- For G = (ℤ/n)² the operators reduce, through Epi^ext(F₂, (ℤ/n)²) = surjections ℤ² → (ℤ/n)², to the standard SL₂(ℤ)-action on full level n bases, matching ModularCurvesPartII §3.1 after fixing the Weil pairing.

*Needs:* ArithmeticDynamicsPartII §6.0 (fibres and components); MappingClassGroupsAndCanonicalRepresentations C.0/moduli-monodromy and gap:punctured-torus-nielsen; InverseGaloisAndArithmeticFundamentalGroups §§IG.3.1, IG.3.2, IG.1.3, IG.1.4; Tau Ceti `TauCeti.CoveringSpace.monodromyFunctor` (topological monodromy of covering spaces, not Riemann existence for stacks).

### 0.4 Boundary deformation and density

At a geometric object of Adm(G) in characteristic prime to |G|, the deformation map of universal rings over the elliptic stack is Λ[[T]] → Λ[[t]], T ↦ t^r, for a Cohen ring Λ and the order r of the node stabilizer; r = 1 for a smooth object. Consequently Adm(G) → M̄(1) is flat, proper and quasi-finite, its smooth-target open is dense, and the whole compactification is empty when G is not generated by two elements. (Chen, Proposition 2.5.3 and Corollary 2.5.4, pp. 338–341; Appendix 6.5, pp. 430–434.)

One proof route: use equivariant nodal deformation theory with the framed comparison at geometric points; specialize to the single target node, where balanced smoothing gives T = t^r; flatness follows from the free ring extension and density because t ≠ 0 is dense; combine with the generation obstruction of the geometric fibre.

**Checks.**

- A node with r = 2 has T = t², so the compactified forgetful morphism is not étale there.
- A smooth cover has r = 1; boundary étaleness is not inferred from the generic point.
- For G = C₂ × C₂ × C₂, which is not generated by two elements, Epi(F₂, G) is empty and so is Adm(G).

*Needs:* gap:equivariant-node-smoothing (SchemeAndStackFoundations §4.6); gap:geometric-point-completion (AlgebraicModuliForArithmeticGeometry §8.3); AlgebraicModuliForArithmeticGeometry §8.2; InverseGaloisAndArithmeticFundamentalGroups §IG.5.4; ArithmeticDynamicsPartII §6.0.

### 0.5 Functoriality under quotients of G

For a surjection f : G₁ → G₂ of finite groups generated by two elements, quotienting a connected torsor by ker f defines M(f) : M(G₁) → M(G₂), which extends to a proper surjective quasi-finite morphism M̄(G₁) → M̄(G₂). On geometric fibres it is postcomposition φ ↦ f ∘ φ on Epi^ext(F₂, −), it maps the Higman class c to f(c), and identities and composites of surjections give canonically isomorphic maps. Surjectivity uses the lifting of generating pairs along f, not surjectivity of f on elements. (Chen, Theorem 2.5.2(6), p. 337; Proposition 2.5.10(f), pp. 344–345; §4.12, p. 389.)

The defining API is:

- M(f₂ ∘ f₁) is canonically isomorphic to M(f₂) ∘ M(f₁), and M(id) to the identity.
- The fibre map is φ ↦ f ∘ φ, equivariant for Out⁺(F₂).
- The Higman class of the quotient cover is the image of the Higman class.
- The map agrees with the proper quasi-finite extension on compactifications.

**Checks.**

- An isomorphism G₁ ≅ G₂ gives an isomorphism of level stacks.
- G → 1 gives the forgetful map to 𝓜(1) and agrees with the coarse j-line.
- A nonsurjective homomorphism is not admitted: for C₂ → C₂ × C₂ the composite of a surjection F₂ → C₂ is not surjective, so it classifies no connected (C₂ × C₂)-torsor.

One proof route: take the quotient cover and extend it over the admissible boundary by the general quotient construction; use the lifting of generating pairs and the fibre dictionary for surjectivity; check identity and composition by the quotient universal property.

*Needs:* §0.3; gap:gaschutz-generating-pairs (InverseGaloisAndArithmeticFundamentalGroups §IG.3.2); InverseGaloisAndArithmeticFundamentalGroups §IG.5.4; ArithmeticDynamicsPartII §6.0.

### 0.6 Absolute and intermediate level structures

For a subgroup A ≤ Out(G), Out(G) acts on M(G) by postcomposing exterior epimorphisms with automorphisms of G, freely on geometric fibres. Define M(G|A) = M(G)/A, the stack of (G|A)-structures, and M(G)^abs = M(G|Out(G)). On compactifications the quotient means the normalization of the coarse quotient, or the stack quotient with its residual stabilizers retained. A fixed Higman stratum is used only when A preserves its class; otherwise it is replaced by the union over its A-orbit. (Chen, Definition 2.5.13 and Situation 2.5.14, pp. 346–347.)

The defining API is:

- A section of M(G) determines a section of M(G|A), with the universal property of the A-quotient.
- The geometric fibre of M(G|A) is Epi^ext(F₂, G)/A.
- Taking A = Out(G) gives absolute level structures.
- For A ≤ B the quotient maps M(G) → M(G|A) → M(G|B) compose naturally.

**Checks.**

- A = 1 recovers M(G).
- For G = C₂, Out(G) = 1 and absolute structures still give the degree-three cover.
- For G = SL₂(𝔽₇) the outer automorphism of conjugation by a matrix of nonsquare determinant exchanges the two noncentral trace −2 Higman classes, so the quotient of one of the two strata alone is undefined; the union of both strata must be taken.
- Freeness: an automorphism of G fixing the exterior class of a surjection agrees with an inner automorphism on a generating pair, hence is inner.

One proof route: postcompose exterior epimorphisms by automorphisms of G; surjectivity shows that an automorphism fixing an exterior class is inner; take the quotient of the finite locally constant sheaf and compare fibres and compactifications.

*Needs:* §0.2; §0.3; ArithmeticDynamicsPartII §6.0; SchemeAndStackFoundations §§1.21, 1.23.

### 0.7 Cofinality of elliptic nonabelian levels

Every connected finite étale cover of 𝓜(1)_ℚ̄ is dominated by a connected component of M(G)_ℚ̄ for some finite group G generated by two elements. Consequently, for every smooth projective geometrically connected curve X over ℚ̄ there are a nonempty open U ⊆ X and a component N of an elliptic nonabelian level curve with a finite étale Galois morphism N → U. The target is the open curve U, not X. (Chen, Theorem 2.5.2(7) and its proof, pp. 337–338; Bell–Booher–Chen–Liu, Theorem 2.2.3; Asada, §7.)

One proof route: apply Asada's theorem through the orbifold fibre dictionary of §0.3; for the curve consequence use Belyi's theorem to present a nonempty open of X as a finite étale cover of P¹ ∖ {0, 1, ∞}, and the Bell–Booher–Chen–Liu strengthening for the Galois domination. A general Galois closure does not by itself produce a level component.

**Checks.**

- A positive-dimensional affine level curve cannot map finite étale onto a projective curve, so the open U is essential.
- For X = P¹ one may take U = P¹ ∖ {0, 1, ∞} and N a component of M(G) whose coarse curve covers it.

*Needs:* gap:asada-cofinality (MappingClassGroupsAndCanonicalRepresentations); BelyiMaps Layer 10 §10.4; §0.3; InverseGaloisAndArithmeticFundamentalGroups §IG.3.1.

### Examples

For G = C₂ the level stack is the Γ₁(2)-curve: one component of coarse degree 3, Higman class 1, empty reduced ramification divisor and γ₋ᵢ acting trivially. For G = S₃ with transpositions u, v, the commutator is a 3-cycle, e = 3, R_π has degree 2 over the base, the Out⁺(F₂)-orbit of (u, v) in Epi^ext(F₂, S₃)/⟨γ₋ᵢ⟩ has 3 elements, and the corresponding coarse component has degree 3.

### Dependencies

InverseGaloisAndArithmeticFundamentalGroups §§IG.1.2, IG.1.3, IG.1.4, IG.3.1, IG.3.2, IG.5.4 and gap:gaschutz-generating-pairs; ArithmeticDynamicsPartII §6.0; AnabelianGeometryAndNonabelianChabauty §1.1; StableReduction Layer 2; SchemeAndStackFoundations §§1.19, 1.21, 1.23 and gap:equivariant-node-smoothing; AlgebraicModuliForArithmeticGeometry §§5.1, 8.2 and gap:geometric-point-completion; ModularCurvesPartII §3.1; MappingClassGroupsAndCanonicalRepresentations C.0/moduli-monodromy, gap:punctured-torus-nielsen and gap:asada-cofinality; BelyiMaps Layer 10; Tau Ceti `TauCeti.CoveringSpace.monodromyFunctor`.

## Layer 1: cusps and their finite data

Throughout this layer k is algebraically closed of characteristic zero, a compatible root system is fixed, E is the nodal genus-one curve over k with origin O, and ν : P¹ → E is a standard normalization sending 1 to O and identifying 0 with ∞. Put P* = P¹ ∖ {0, 1, ∞}, choose tangent vectors t₀ at 0 and t∞ = ι(t₀) at ∞ for ι(z) = 1/z, and a good path δ : t₀ → t∞ (AnabelianGeometryAndNonabelianChabauty §1.2). Write Π = π₁(P*, t₀), freely topologically generated by γ₀ and γ∞^δ = δ⁻¹γ∞δ.

### 1.1 Gluing data at a cusp

A gluing datum is a finite right G-equivariant morphism q : D → P¹ from a possibly disconnected smooth curve, whose restriction over P* is a right G-torsor, together with a G-equivariant bijection α from the reduced fibre D₀ to the reduced fibre D∞. Morphisms are G-equivariant isomorphisms of covers respecting α. A precuspidal cover of E is the finite quotient obtained by gluing, without flatness at its nodes. (Chen, Definitions 4.1.1–4.1.3, pp. 361–362; Definitions 4.4.1–4.4.2, p. 367.)

The defining API is:

- A datum is formed from q and an equivariant bijection of reduced branch fibres.
- The normalization of a precuspidal cover recovers q and α.
- An isomorphism of data is determined by its map on D and its compatibility with α.
- A change of standard normalization transports the datum and its gluing canonically.
- Every geometric fibre of q over P* is a free transitive right G-set, so q has degree |G|.

**Checks.**

- G = 1 with D = P¹ and α(0) = ∞ glues to the nodal genus-one curve itself.
- D need not be connected: for G = C₂ and the generating pair (u, h) = (1, h), D is two copies of P¹ and the glued curve is connected.
- Only reduced branch fibres are identified; identifying a scheme-theoretic branch fibre of length e would create the wrong singularity.
- For G = S₃ and a subgroup H of order 2, the faithful action on (H∖G) × P¹ has quotient P¹ but is not a gluing datum: its fibres over P* have three points with nontrivial stabilizers rather than six torsor points.

*Needs:* StableReduction Layers 1 and 3 (normalization, pointed prestable curves); InverseGaloisAndArithmeticFundamentalGroups §IG.5.4 (admissible G-covers); AnabelianGeometryAndNonabelianChabauty §1.2 (good paths).

### 1.2 The cusp normalization equivalence

Normalization is an equivalence from precuspidal covers of E to gluing data relative to ν. Its inverse is the scheme pushout identifying each x ∈ D₀ with α(x) ∈ D∞; the pushout is prestable, has normalization D, is unchanged away from the glued fibres, and its local functions are those taking equal values at the two points of each glued pair. Connected balanced objects correspond exactly to the cusp fibre Adm(G) ×_(M̄(1)) {E}, and automorphisms over E correspond to vertical automorphisms. (Chen, Proposition 4.1.4, pp. 362–363; Lemma 4.4.4 and Theorem 4.4.5, pp. 369–371.) The equivalence is established through the clutching pushout and the conductor, not through flatness of the quotient at a ramified node, which fails (Chen's Lemma 4.4.4(g) asserts it).

One proof route: apply StableReduction Layer 3 self- and external clutching to the finitely many paired smooth points; descend q to the fixed nodal target and the right G-action by the pushout universal property; prove the two natural inverse isomorphisms by uniqueness of normalization and the conductor; read the balanced node charts from the paired inertia characters.

**Checks.**

- The normalization of a connected glued cover may be disconnected (the C₂ example of §1.1).
- The equivalence preserves automorphism groups over the fixed target E, not all automorphisms of E.
- At the balanced node x = ξ², y = η², ξη = 0 the fibre over x = y = 0 has basis 1, ξ, η of length 3, while the generic rank is 2; the cover is admissible and finite but not flat.

*Needs:* §1.1; StableReduction Layer 3 (clutching); InverseGaloisAndArithmeticFundamentalGroups §IG.5.4 (node characters).

### 1.3 Finite precuspidal data

A precuspidal G-datum is a finite set F with a continuous left Π-action and a commuting free transitive right G-action, together with a G-equivariant bijection α : ⟨γ₀⟩∖F → ⟨γ∞^δ⟩∖F. For x ∈ F define φ_x : Π → G by γ x = x φ_x(γ), and H_(δ,x) = {h : α([x]₀) = [x]∞ h}, a left coset ⟨φ_x(γ∞^δ)⟩h rather than a chosen element. The tangential fibre functor at t₀ is an equivalence from gluing data to precuspidal G-data. (Chen, Definition 4.6.1, p. 373; Proposition 4.4.3, pp. 367–369; §4.5, pp. 371–373.) In Chen's Proposition 4.4.3(d) the loop on the left is based at t₀.

The defining API is:

- A datum bundles the commuting actions and the equivariant bijection of inertia orbit sets.
- φ_x is continuous, and replacing x by x g replaces φ_x by g⁻¹ φ_x g.
- H_(δ,x) is a nonempty left coset of ⟨φ_x(γ∞^δ)⟩.
- The tangential fibre functor is an equivalence from gluing data to these finite data.

**Checks.**

- For F = G with γ∞^δ acting by left multiplication by u, the γ∞^δ-orbit set is ⟨u⟩∖G, a set of left cosets.
- G = 1 gives the singleton datum with its unique α.
- Dropping free transitivity of the right G-action admits disconnected non-torsor generic fibres, as in the last Check of §1.1, and must fail the constructor.

*Needs:* §1.1; AnabelianGeometryAndNonabelianChabauty §1.1 (tangential fibre functors) and §1.2 (local inertia orbits on branches, good paths); Mathlib `Subgroup.zpowers`.

### 1.4 The graph of a glued cover

The graph of a datum (F, α) has vertices Π∖F, half-edges ⟨γ₀⟩∖F ⊔ ⟨γ∞^δ⟩∖F, incidence given by projection to Π-orbits, and the fixed-point-free reversal pairing the two summands through α and α⁻¹. It is identified with the dual graph of the glued cover (StableReduction Layer 1), admits loops and multiple edges, and is connected if and only if ⟨φ_x(Π), h⟩ = G for one, equivalently every, x and h ∈ H_(δ,x). (Chen, Definition 4.7.2 and Propositions 4.7.3–4.7.4, pp. 375–377.)

The defining API is:

- The graph is formed on the half-edge carrier of StableReduction Layer 1.
- Normalization identifies it with the dual graph of the glued curve.
- Connectedness is equivalent to ⟨φ_x(Π), h⟩ = G.
- An isomorphism of data induces a graph isomorphism preserving the pairing of half-edges.

**Checks.**

- G = 1 gives one vertex and one loop: two half-edges and first Betti number one.
- For G = C₂, u = 1 and h the generator, the graph has two vertices joined by two edges forming a cycle; the normalization is disconnected but the graph is connected.
- A simple graph would erase the loop in the trivial-group example and give first Betti number zero, hence arithmetic genus zero instead of one.

One proof route: construct the incidence maps from orbit-set projections; pair the summands through α with no fixed half-edge; translate paths in the graph into products of monodromy elements and h.

*Needs:* §1.2; §1.3; StableReduction Layer 1 (dual graphs with loops).

### 1.5 Balance and connectedness in finite data

The glued cover is balanced if and only if φ_x(γ₀)⁻¹ = h⁻¹ φ_x(γ∞^δ) h for one, equivalently every, x and h ∈ H_(δ,x). Together with connectedness of the graph this is equivalent to the two conditions φ_x(γ₀) = h⁻¹u⁻¹h and ⟨u, h⟩ = G, where u = φ_x(γ∞^δ). The normalization, fibre and gluing equivalences restrict to the full subgroupoids of connected, balanced and cuspidal objects. (Chen, Proposition 4.5.2, pp. 372–373; Definition 4.7.1, p. 375; Propositions 4.7.6 and 4.8.1, pp. 377–378.)

One proof route: balance is inverse matching of the faithful cotangent inertia characters on the two branches; independence of x follows by conjugation and of h by the cyclic inertia ambiguity; combine the balance equation with the generation criterion of §1.4.

**Checks.**

- For u = 1 and h generating a cyclic group, balance holds and the glued graph is a connected polygon.
- Replacing h by u^k h leaves both the balance equation and the generation condition invariant.
- For G = C₂ × C₂ with u = 1 and h of order 2 the balance equation holds but ⟨u, h⟩ ≠ G, so the glued cover is disconnected.

*Needs:* §1.3; §1.4; AnabelianGeometryAndNonabelianChabauty §1.2 (local inertia orbits); InverseGaloisAndArithmeticFundamentalGroups §IG.5.4 (inverse node characters).

### 1.6 The cusp invariant set I(G)

Let Gen₂(G) = {(u, h) : ⟨u, h⟩ = G}. Define I(G) as the quotient of Gen₂(G) by simultaneous conjugation in G and by the commuting ℤ-action (u, h) ↦ (u, u^k h); write [[u, h]] for a class. This set classifies cusps only after a good path and a standard normalization are chosen. (Chen, Definition 4.8.2, p. 378; Theorem 4.8.4, pp. 379–380.)

The defining API is:

- A generating pair determines its class [[u, h]].
- [[u, h]] = [[u′, h′]] if and only if (u′, h′) is simultaneously conjugate to (u, u^k h) for some integer k.
- A function on Gen₂(G) constant along both moves descends uniquely to I(G).
- A group isomorphism induces a bijection of the I-sets.

**Checks.**

- I(1) has exactly one element.
- For C₂ with generator h, the generating pairs (1, h), (h, 1), (h, h) give two classes: (h, 1) and (h, h) are related by the twist, and (1, h) has u = 1.
- The nongenerating pair (1, 1) is not in Gen₂(G) for nontrivial G.

One proof route: restrict the two commuting actions to generating pairs; use the orbit relation of the product action and expose its descent and its explicit criterion.

*Needs:* Mathlib `Subgroup.closure`, `Subgroup.zpowers`, `MulAction.orbitRel`.

### 1.7 The standard cusp of a generating pair

For (u, h) ∈ Gen₂(G) take F = G as a right torsor, let γ∞^δ act by left multiplication by u and γ₀ by left multiplication by h⁻¹u⁻¹h, and put α(⟨h⁻¹u⁻¹h⟩x) = ⟨u⟩hx. This is a connected balanced precuspidal datum. Its normalization monodromy group is M_(u,h) = ⟨u, h⁻¹u⁻¹h⟩ and its glued curve has [G : M_(u,h)] irreducible components, the left M_(u,h)-orbits in G. Simultaneous conjugation and twisting give isomorphic data. (Chen, Definition 4.8.3, pp. 378–379; Theorem 4.10.3(c), p. 385.)

The defining API is:

- The formulas define a cuspidal datum and hence a cuspidal cover.
- The monodromy subgroup at the point 1 is M_(u,h).
- (u, h) and (g u g⁻¹, g u^k h g⁻¹) give isomorphic data.
- The irreducible components correspond to the left M_(u,h)-orbits in G.

**Checks.**

- u = h = 1 in G = 1 gives the nodal elliptic curve.
- For cyclic G generated by h and u = 1, M_(u,h) = 1 and the cover is a |G|-gon.
- For G = S₃, u a 3-cycle and h a transposition, M_(u,h) = C₃ and the normalization has two components.

One proof route: define the two finite left permutations by the free profinite universal property; check that α is well defined on left cosets by conjugation with h; balance is built in and §1.4 gives connectedness.

*Needs:* §1.5; §1.6.

### 1.8 Classification of cusps and their Higman class

The assignment (F, α) ↦ [[φ_x(γ∞^δ), h]] is independent of x ∈ F and h ∈ H_(δ,x) and gives a bijection from the set of isomorphism classes of objects in the cusp fibre of Adm(G) over E to I(G), with inverse the standard construction of §1.7. The Higman class of [[u, h]] is the class of [u⁻¹, h⁻¹], which is conjugate to [u, h] (conjugation by u h). The bijection is on isomorphism classes; the automorphism groups are computed in Layer 2. (Chen, Theorem 4.8.4 and Definition 4.8.5, pp. 379–380; Proposition 4.8.6, p. 380.)

One proof route: changing the torsor point conjugates the pair and changing the gluing representative multiplies h by a power of u; choosing x as the torsor origin identifies every datum with its standard construction; the good-path relation through γ₁ and the inertia-character convention give the Higman word.

**Checks.**

- For G = 1 there is one cusp, with Higman class 1.
- For G = C₂ there are two cusps, [[1, h]] and [[h, 1]], both with Higman class 1, matching the two cusps of the Γ₁(2)-curve.
- (u h)[u⁻¹, h⁻¹](u h)⁻¹ = [u, h] for all u, h; for u = (1 2 3), h = (1 2) in S₃ both sides are 3-cycles.

*Needs:* §1.7; §0.2; AnabelianGeometryAndNonabelianChabauty §1.2 (the ordered relation of a good path).

### 1.9 Inversion of the target at a cusp

Choose a symmetric good path. Pullback along [−1] on the nodal target sends [[u, h]] to [[u⁻¹, h⁻¹]]. The automorphism [−1] of E lifts to an automorphism of the cuspidal cover if and only if these classes agree, equivalently (u⁻¹, h⁻¹) is simultaneously conjugate to (u, u^r h) for some integer r. Existence of a lift does not choose a splitting of the resulting extension of automorphism groups. (Chen, Proposition 4.9.1, pp. 380–382.)

One proof route: use the transformation identities of a symmetric good path rather than a literal reflection of an arbitrary path; compute the two new generators and the gluing coset after inversion; translate equality in I(G) into an isomorphism of the pulled-back cusp.

**Checks.**

- For G = C₃, u = 1 and h a generator, [[1, h⁻¹]] ≠ [[1, h]], because conjugation is trivial and the twist fixes h when u = 1; so [−1] does not lift at this cusp and exchanges it with [[1, h⁻¹]].
- For G = C₂ every class is fixed and [−1] lifts at every cusp.

*Needs:* §1.8; AnabelianGeometryAndNonabelianChabauty §1.2 (existence of symmetric good paths).

### Examples

Enumeration of generating pairs modulo simultaneous conjugation and twisting gives |I(C₂)| = 2, |I(C₃)| = 4, |I(S₃)| = 2 and |I(D₁₀)| = 4. The two classes for S₃ are represented by ((1 2 3), (1 2)), whose cover has M = C₃ and a normalization with [S₃ : C₃] = 2 components, each a cyclic triple cover of P¹, glued into a connected curve whose graph has two vertices; and by ((1 2), (2 3)), for which h⁻¹u⁻¹h = (1 3), M = S₃, the cover is irreducible and its vertical group is Z(S₃) = 1.

### Dependencies

StableReduction Layers 1 and 3; InverseGaloisAndArithmeticFundamentalGroups §IG.5.4; AnabelianGeometryAndNonabelianChabauty §§1.1, 1.2; §0.2; Mathlib `Subgroup.closure`, `Subgroup.zpowers`, `MulAction.orbitRel`.

## Layer 2: cusp automorphism groups

### 2.1 The cusp automorphism group A(G, u, h)

For a finite group G and (u, h) ∈ Gen₂(G) put M = M_(u,h) = ⟨u, h⁻¹u⁻¹h⟩ and A(G, u, h) = {a ∈ C_G(M) : [a, h] ∈ ⟨u⟩}; the condition [a, h] ∈ ⟨u⟩ says a h a⁻¹ = u^k h for some k. Let k_(u,h) be the least positive k such that (u, h) is simultaneously conjugate to (u, u^k h); it exists because k = |u| works. (Chen, (4.15) and Proposition 4.10.1, pp. 383–384; Theorem 4.10.3, pp. 384–386.)

The defining API is:

- Membership in A(G, u, h) is exactly centralizing u and h⁻¹u⁻¹h and having [a, h] ∈ ⟨u⟩; A(G, u, h) is a subgroup of C_G(M).
- k_(u,h) is positive, divides |u|, and the positive twist periods are exactly its multiples.
- z(a) = [a, h] defines a group homomorphism A(G, u, h) → ⟨u⟩.
- Conjugating (u, h) conjugates A(G, u, h) and preserves k_(u,h).

**Checks.**

- For abelian G, A = G, z = 1 and k_(u,h) = |u|.
- For G = S₃, u = (1 2 3), h = (1 2): M = C₃, A = ⟨u⟩, k_(u,h) = 1 and z maps onto ⟨u⟩.
- If M = G then A = Z(G), z = 1 and k_(u,h) = |u|; for G = SL₂(𝔽₃) with u, h of order 3 and 4 generating, M = G and A = {±1}.

*Needs:* §1.6; §1.7; Mathlib `Subgroup.centralizer`, `Subgroup.zpowers`, `commutatorElement`, `orderOf`.

### 2.2 The cusp automorphism exact sequence

The kernel of z is Z(G) and its image is ⟨u^(k_(u,h))⟩, so 1 → Z(G) → A(G, u, h) → ⟨u^(k_(u,h))⟩ → 1 is exact and |A(G, u, h)| = |Z(G)|·|u|/k_(u,h). Evaluation at 1 identifies A(G, u, h) with the automorphism group of the standard datum of §1.7, hence with the vertical automorphism group of its glued cover. (Chen, Proposition 4.10.1, pp. 383–384; Theorem 4.10.3(a), pp. 384–385.)

One proof route: an endomorphism of the torsor G commuting with right multiplication is left multiplication by some a, and Π-equivariance means a centralizes M; respecting α is equivalent to [a, h] ∈ ⟨u⟩; the kernel commutes with u and h, which generate G; the image follows from the twist-period characterization.

**Checks.**

- For G = S₃, u = (1 2 3), h = (1 2): |Z(G)| = 1, |u| = 3, k = 1, so |A| = 3.
- For abelian G: |A| = |G|·|u|/|u| = |G|.
- For dihedral G of order 2k with k odd, u a rotation of order k and h a reflection: Z(G) = 1, k_(u,h) = 1 and |A| = k.

*Needs:* §2.1; §1.2.

### 2.3 Full and marked cusp stabilizers and representability

For a cusp [[u, h]], its vertical automorphism group is A(G, u, h). Its full automorphism group in Adm(G) equals A(G, u, h) if [[u, h]] ≠ [[u⁻¹, h⁻¹]], and otherwise is an extension 1 → A(G, u, h) → Aut → C₂ → 1. The stabilizer of a point over the origin, which equals the vertical automorphism group of the corresponding point of the reduced ramification divisor, is A(G, u, h) ∩ ⟨[u⁻¹, h⁻¹]⟩. The cover is irreducible if and only if M_(u,h) = G, and then its vertical group is Z(G). The rigidified compactification M̄(G) → M̄(1) is representable if and only if k_(u,h) = |u|, equivalently A(G, u, h) = Z(G), for every generating pair (u, h). (Chen, Theorem 4.10.3(a′)–(d), pp. 384–386.)

One proof route: compute the stabilizer of an origin point from the gluing description, through the canonical bijection of the fibre over 1 with the γ₁-orbits on the tangential fibre (the stabilizer condition becomes a ∈ ⟨u⁻¹h⁻¹uh⟩); apply §1.9 for the image in Aut(E) = C₂; apply the vertical-kernel criterion of AlgebraicModuliForArithmeticGeometry §5.1 after rigidifying by Z(G), together with the smooth-locus vertical group Z(G) of InverseGaloisAndArithmeticFundamentalGroups §IG.5.4.

**Checks.**

- For G = S₃, u = (1 2 3), h = (1 2): A ∩ ⟨[u⁻¹, h⁻¹]⟩ = C₃, so the marked stabilizer has order 3 and M̄(S₃) → M̄(1) is not representable.
- For abelian G every cusp has A = G = Z(G), so the rigidified map is representable.
- For G = SL₂(𝔽₅) and every generating pair, k_(u,h) = |u| (Chen, Remark 4.10.2), so M̄(SL₂(𝔽₅)) → M̄(1) is representable; the marked stabilizer at a trace −2 cusp is {±1} ∩ ⟨c⟩ = {±1}, since the element of order 10 has fifth power −1.

*Needs:* §2.2; §1.9; §0.1; AlgebraicModuliForArithmeticGeometry §5.1 (`ArithmeticModuli.Rigidification.vertical_kernel`); InverseGaloisAndArithmeticFundamentalGroups §IG.5.4; ArithmeticDynamicsPartII §6.0 (M̄(G)).

### 2.4 Comparison with abelian full levels

For abelian G every cusp has A(G, u, h) = G = Z(G), so the rigidified forgetful map is representable. For G = (ℤ/n)² with n ≥ 3, the compactified level stack is identified with the Deligne–Rapoport full level n problem over ℤ[1/n], respecting the Weil-pairing components, and its cuspidal objects have no residual automorphisms. This compares with the full level carrier of ModularCurvesPartII; it is not a second construction of modular curves. (Chen, Remark 4.10.4, p. 386.)

One proof route: identify connected abelian punctured-elliptic torsors with étale isogenies and their level duals; use the full marking at unramified origins and the generalized elliptic compactification; check that n ≥ 3 kills residual automorphisms on each pairing component.

**Checks.**

- For G = (ℤ/n)² the number of components over ℚ̄ is φ(n), each of degree |SL₂(ℤ/n)|/2 over the j-line for n ≥ 3 (Chen, p. 306).
- For n = 2, the element −I acts trivially on full level 2 structures, so the comparison requires n ≥ 3 for representability of the fine problem.
- For G = ℤ/n the single component has coarse degree equal to the index of the image of Γ₁(n) in PSL₂(ℤ).

*Needs:* §2.3; ModularCurvesPartII §§3.1, 3.12.

### 2.5 The odd-dihedral obstruction example

For G dihedral of order 2k with k odd and k ≥ 3, a generating pair has commutator of order k, but every compactified coarse component has degree 3 over P¹_j, and there are φ(k)/2 components. The centralizer obstruction is d′ = 1 while the cusp exponent is m′ = k: for a rotation u and a reflection h, M = ⟨u⟩, A = ⟨u⟩ and k_(u,h) = 1. Thus divisibility of the coarse degree by the ramification index fails arbitrarily strongly. (Chen, §4.11, p. 388; Chen 2018, Theorem 4.2.2.) Chen's text gives d′ = 2 here; the centralizer of a primitive rotation c is ⟨c⟩, so d′ = |C_G(⟨c⟩)/⟨c⟩| = 1, while the normalizer quotient has order 2.

One proof route: compute the dihedral generating pairs and their commutators directly; count their exterior Out⁺(F₂)-orbits, giving φ(k)/2 orbits of coarse degree 3; compute C_G(⟨c⟩) = ⟨c⟩.

**Checks.**

- For k = 3, 5, 7 with u a rotation and h a reflection: A = ⟨u⟩ of order 3, 5, 7, trivial center, twist period one.
- For k = 5 there are φ(5)/2 = 2 orbits on Epi^ext(F₂, D₁₀)/⟨γ₋ᵢ⟩, each of size 3, while the commutator has order 5.
- The combinatorial congruence of §3.3 gives modulus 5/gcd(5, 5·1) = 1, consistent with degree 3.

*Needs:* §2.2; §0.3; Mathlib `Nat.totient`.

### Examples

The cusp formulas on D₆, D₁₀, D₁₄ (u a rotation, h a reflection) give A = ⟨u⟩, trivial center and twist period one, so |A| = 3, 5, 7 and the centralizer obstruction is one. For SL₂(𝔽₃) a generating pair of elements of orders 3 and 4 has M = G and A = Z(G) = {±1}.

### Dependencies

§§0.1, 0.3, 1.2, 1.6, 1.7, 1.9; AlgebraicModuliForArithmeticGeometry §5.1; InverseGaloisAndArithmeticFundamentalGroups §IG.5.4; ArithmeticDynamicsPartII §6.0; ModularCurvesPartII §§3.1, 3.12; Mathlib `Subgroup.centralizer`, `Subgroup.zpowers`, `commutatorElement`, `orderOf`, `Nat.totient`.

## Layer 3: the combinatorial congruence

### 3.1 Positive Nielsen orbits on exterior pairs

A surjection φ : F₂ → G is recorded by its generating pair (φ(a), φ(b)). Define the permutations `nielsenRight` (u, v) ↦ (u, u v) and `nielsenLeft` (u, v) ↦ (v u, v) of G × G; they are precomposition with the automorphisms (a, b) ↦ (a, a b) and (a, b) ↦ (b a, b), whose abelianizations generate SL₂(ℤ). Let `positiveNielsenGroup` be the subgroup of permutations of G × G they generate, and `exteriorInversionGroup` the subgroup generated by simultaneous conjugation and the central move γ₋ᵢ : (u, v) ↦ (u⁻¹, v⁻¹). For a pair (u, v), `coarseNielsenOrbit` is the image of its `positiveNielsenGroup`-orbit in the orbit space of `exteriorInversionGroup`. (Chen, §1.1, p. 305, and the paragraph after Theorem 4.10.5, p. 387; InverseGaloisAndArithmeticFundamentalGroups §IG.3.2.)

The defining API is:

- For a generating pair (u, v), the orbit space of `exteriorInversionGroup` on generating pairs is Epi^ext(F₂, G)/⟨γ₋ᵢ⟩, and `coarseNielsenOrbit` is the Out⁺(F₂)-orbit of the class of (u, v) in it: Aut⁺(F₂) is generated by the two transvections and the inner automorphisms, the inner automorphism by a word w acts on pairs by conjugation by φ(w), and γ₋ᵢ is central in Out⁺(F₂).
- Precomposition is a right action, so the map from automorphisms to permutations of pairs is an anti-homomorphism; the image of the subgroup generated by the transvections is the subgroup generated by their images, so orbits are unaffected.
- `nielsenRight` and `nielsenLeft` preserve generating pairs and conjugate the commutator, [u, u v] = u [u, v] u⁻¹ and [v u, v] = v [u, v] v⁻¹, so the commutator class is constant on `positiveNielsenGroup`-orbits; γ₋ᵢ preserves it as well, since (u v)[u⁻¹, v⁻¹](u v)⁻¹ = [u, v].
- The cardinality of `coarseNielsenOrbit` is the coarse degree over the j-line of the corresponding component of M̄(G) (ArithmeticDynamicsPartII §6.0 and §0.3).

**Checks.**

- For G = 1 the orbit is a single point.
- For G = C₂ the orbit of (h, 1) is the three nonzero pairs, of size 3; γ₋ᵢ and conjugation act trivially.
- For G = C₃ the orbit of (h, 1) has 8 pairs and 4 classes modulo γ₋ᵢ; omitting γ₋ᵢ would give 8.
- For G = S₃ the orbit of two transpositions has 3 classes; for D₁₀ there are two orbits of 3 classes each; for A₅ the orbit sizes are 18 and 10 (commutators of orders 3 and 5); for SL₂(𝔽₅) the orbit of a pair with commutator of order 10 has 40 classes, and with commutator of order 6 it has 72.
- The swap (u, v) ↦ (v, u) has abelianization of determinant −1 and sends the commutator to its inverse; adjoining it would replace Out⁺(F₂)-orbits by Out(F₂)-orbits, and in SL₂(𝔽₇) it would merge orbits whose commutators lie in the two different noncentral trace −2 classes.

*Needs:* InverseGaloisAndArithmeticFundamentalGroups §IG.3.2; gap:punctured-torus-nielsen (MappingClassGroupsAndCanonicalRepresentations); Mathlib `Equiv.prodShear`, `Equiv.prodComm`, `Equiv.mulLeft`, `Equiv.inv`, `Subgroup.closure`, `MulAction.toPermHom`, `MulAction.orbit`, `MulAction.orbitRel.Quotient`.

### 3.2 The obstruction pair m′_c and d′_c

For a finite group G and c ∈ G define `cuspVerticalExponent` c = m′_c, the least positive integer killing A(G, u, h) ∩ ⟨[u⁻¹, h⁻¹]⟩ for every generating pair (u, h) with [u, h] conjugate to c; it is the least common multiple of the orders of the elements of these groups, and equals 1 when no such pair exists. Define `centralizerQuotientOrder` c = d′_c = |C_G(⟨c⟩)/⟨c⟩|. Both are invariants of the conjugacy class of c. Each A(G, u, h) ∩ ⟨[u⁻¹, h⁻¹]⟩ is cyclic, and by §2.3 it is the vertical automorphism group of a cuspidal point of the reduced ramification divisor. (Chen, Theorem 4.10.5(a)–(b) and its proof, pp. 386–387.)

The defining API is:

- m′_c is positive and is divisible by the order of every element of A(G, u, h) ∩ ⟨[u⁻¹, h⁻¹]⟩ for every generating pair with [u, h] conjugate to c; it is the least such integer.
- d′_c is a positive integer, since ⟨c⟩ ≤ C_G(⟨c⟩).
- Conjugating c leaves m′_c and d′_c unchanged.
- Every vertical character exponent at a cuspidal point of the reduced ramification divisor of Adm(G)_c divides m′_c, and the degree d_X of §0.1 divides d′_c.

**Checks.**

- For G = 1 and c = 1, both invariants equal 1.
- For D₁₀ and c a nontrivial rotation, m′_c = 5 and d′_c = 1.
- For a class c that is not the commutator class of any generating pair the family is empty and m′_c = 1; this asserts nothing about a nonempty stratum.
- For SL₂(𝔽₅) and c noncentral of trace −2: m′_c = 2 (A = Z(G) = {±1}, which lies in ⟨[u⁻¹, h⁻¹]⟩) and d′_c = 10/10 = 1; the least common multiple of image orders 2 and 4 would be 4, not their product 8.
- For A₄ with c of order 2: m′_c = 2 and d′_c = 4/2 = 2.

*Needs:* §2.1; §2.3; §0.1; Mathlib `Subgroup.centralizer`, `Subgroup.zpowers`, `Finset.lcm`, `orderOf`, `IsConj`.

### 3.3 The combinatorial congruence

Let G be a finite group and (u, v) a generating pair, with c = [u, v]. Then |c|/gcd(|c|, m′_c d′_c) divides the cardinality of the Out⁺(F₂)-orbit of the class of (u, v) in Epi^ext(F₂, G)/⟨γ₋ᵢ⟩; this is `combinatorial_congruence`. Equivalently, for every connected component X of Adm(G)_c over an algebraically closed field of characteristic zero, |c|/gcd(|c|, m′_c d′_c) divides deg(X^coarse → P¹_j). The case c = 1 is included and has modulus 1. The theorem bounds the orbit size, not the number of cusps. (Chen, Theorem 4.10.5 and the paragraph after it, pp. 386–387.) Through the Higman class φ([b, a]) the same congruence holds for orbits of fixed Higman class, since the swap (a, b) ↦ (b, a) induces a bijection of the corresponding orbits (Chen, footnote 28, p. 387).

One proof route. If c = 1 there is nothing to prove; otherwise the ramification index is |c| ≥ 2. On the reduced ramification divisor of the universal family over Adm(G)_c, the vertical automorphism groups at smooth points are Z(G) ∩ ⟨c⟩ (ArithmeticDynamicsPartII §6.0), contained in A(G, u, h) ∩ ⟨[u⁻¹, h⁻¹]⟩ for any generating pair with [u, h] conjugate to c; at cuspidal points they are these groups by §2.3; so every vertical group is killed by m′_c and every full automorphism group by 12 m′_c (ArithmeticDynamicsPartII §6.0). By §0.1 the components of the divisor have degree over X dividing d′_c. The coarse degree congruence `12·|c| ∣ m·d·deg` of ArithmeticDynamicsPartII §6.0, with m ∣ 12 m′_c and d ∣ d′_c, gives |c|/gcd(|c|, m′_c d′_c) ∣ deg after cancelling 12. Translate degree into orbit size through the component–orbit comparison of ArithmeticDynamicsPartII §6.0 and §0.3: the coarse fibre is the orbit modulo ⟨γ₋ᵢ⟩.

**Checks.**

- G = 1 and every abelian G give modulus 1.
- For S₄ with c of order 3: m′_c = 1, d′_c = 1, modulus 3, and the single orbit has 9 classes.
- For SL₂(𝔽₅) with c of trace −2 (order 10): modulus 10/gcd(10, 2) = 5, and the orbit has 40 classes; with c of order 6: m′_c = 2, d′_c = 1, modulus 3, orbit of 72 classes.
- For PSL₂(𝔽₇) the orbits with commutators of orders 3, 4, 7 have 18, 16, 7 classes and moduli 3, 4, 7.
- For dihedral groups of order 2k, k odd, the modulus is 1, consistent with degree 3 (§2.5); a version without the m′ correction would predict k ∣ 3, which is false for k = 5.

*Needs:* §3.1; §3.2; §2.3; §0.1; §0.3; ArithmeticDynamicsPartII §6.0 (Theorem 3.5.1 congruence, vertical groups at smooth points, the 12-fold bound, component–orbit comparison).

### Examples

Brute-force enumeration of generating pairs, the two positive transvections, simultaneous conjugation and γ₋ᵢ on S₃, D₁₀, A₄, S₄, SL₂(𝔽₃), A₅, SL₂(𝔽₅) and PSL₂(𝔽₇) gives the following moduli and orbit sizes, each divisible as asserted: S₃ (1, 3); D₁₀ (1, 3 twice); A₄ (1, 4); S₄ (3, 9); SL₂(𝔽₃) (2, 16); A₅ (3, 18 and 5, 10); SL₂(𝔽₅) (3, 72 and 5, 40); PSL₂(𝔽₇) (3, 18; 4, 16; 7, 7).

### Dependencies

§§0.1, 0.3, 2.1, 2.3; ArithmeticDynamicsPartII §6.0; InverseGaloisAndArithmeticFundamentalGroups §IG.3.2; gap:punctured-torus-nielsen; Mathlib `Equiv.prodShear`, `Equiv.prodComm`, `Equiv.mulLeft`, `Equiv.inv`, `Subgroup.closure`, `Subgroup.centralizer`, `Subgroup.zpowers`, `MulAction.toPermHom`, `MulAction.orbit`, `MulAction.orbitRel.Quotient`, `Finset.lcm`, `orderOf`, `IsConj`.

## Layer 4: group-theoretic bounds

### 4.1 Square subgroups from cusp stabilizers

Let ℓ be prime, G a nonabelian finite group and c ∈ G, with r = v_ℓ(|c|) and r + s = v_ℓ(|G|). Assume that G has no proper normal subgroup of order divisible by ℓ. If k = v_ℓ(m′_c) > 0, then G contains a subgroup isomorphic to C_(ℓ^k) × C_(ℓ^k); hence 2k ≤ r + s. Also v_ℓ(d′_c) ≤ s. Consequently v_ℓ(m′_c) ≤ ⌊(r + s)/2⌋. (Chen, Lemmas 4.12.1–4.12.2 and Corollary 4.12.4(a), pp. 389–390, in the case j = 0.) Chen's Lemma 4.12.2 also asserts, for j > 0, a subgroup C_(ℓ^k) × C_(ℓ^(k−j)) under the weaker hypothesis that no proper normal subgroup has order divisible by ℓ^(j+1); its proof shows only that two cyclic subgroups meet in a subgroup of order at most ℓ^j, which does not yield that product (for k = 2, j = 1 an element of order ℓ² and one of order ℓ inside it satisfy the intersection bound but generate a cyclic group). This section states the case j = 0, where the intersection is trivial.

One proof route. Choose a generating pair (u, h) with [u, h] conjugate to c and z ∈ A(G, u, h) ∩ ⟨[u⁻¹, h⁻¹]⟩ of order ℓ^k. Since |A(G, u, h)| divides |u|·|Z(G)| (§2.2) and Z(G) is a proper normal subgroup, of order prime to ℓ, ℓ^k divides |u|. Put U = ⟨u⟩ and U_h = ⟨h⁻¹uh⟩; their intersection is normalized by h (it and its h-conjugate are subgroups of the same order of the cyclic group U_h; Chen, Lemma 4.12.1, where equal finite index is the correct invariant for infinite cyclic groups) and by u, hence is normal in G and proper, so its order is prime to ℓ. The cyclic groups ⟨z⟩ ∩ U and ⟨z⟩ ∩ U_h cannot both have nontrivial ℓ-part, since their subgroups of order ℓ would coincide inside ⟨z⟩ and lie in U ∩ U_h. Choose the one with trivial ℓ-part; as z centralizes U and U_h, z and the subgroup of order ℓ^k of that cyclic group generate C_(ℓ^k) × C_(ℓ^k). Lagrange gives 2k ≤ r + s. The bound on d′_c follows from |c|·d′_c = |C_G(⟨c⟩)| dividing |G|.

**Checks.**

- For G = SL₂(𝔽₅), ℓ = 5 and c of order 10: r = 1, s = 0, the proper normal subgroups have orders 1 and 2, v₅(m′_c) = v₅(2) = 0 and v₅(d′_c) = 0, consistent with the bounds 0 ≤ ⌊1/2⌋ and 0 ≤ 0.
- For dihedral G of order 2k with k an odd prime and ℓ = k: the rotation subgroup is a proper normal subgroup of order k, so the hypothesis fails, and indeed v_k(m′_c) = 1 although G contains no C_k × C_k.
- For G = A₅, ℓ = 5, c of order 5: r = 1, s = 0 and m′_c = 1, so the lemma asserts nothing, consistent with the absence of C₅ × C₅.

*Needs:* §2.2; §3.2; Mathlib `Nat.factorization`.

### 4.2 The simple-group congruence

Let G be a nonabelian finite simple group not isomorphic to PSL₂(K) for any finite field K, let (u, v) be a generating pair with c = [u, v], let ℓ be a prime and r = v_ℓ(|c|). If ℓ^(r+1) ≥ |G|^(1/3), equivalently |G| ≤ ℓ^(3(r+1)), then ℓ^(⌈r/2⌉) divides the cardinality of the Out⁺(F₂)-orbit of the class of (u, v) in Epi^ext(F₂, G)/⟨γ₋ᵢ⟩, and hence the coarse j-degree of every component of Adm(G)_c; this is `simple_group_congruence`. The order of c need not be a power of ℓ. (Chen, Corollary 4.12.5(b), p. 391, through Corollary 4.12.4(b) and Theorem 4.12.3; Vdovin, Theorem A.)

One proof route. By Vdovin's theorem every abelian subgroup B of G has |B| < |G|^(1/3) ≤ ℓ^(r+1). If v_ℓ(d′_c) > 0, an ℓ-element z ∈ C_G(⟨c⟩) ∖ ⟨c⟩ generates with c an abelian subgroup of order at least ℓ^(r+1), a contradiction; so v_ℓ(d′_c) = 0. If κ = v_ℓ(m′_c) > r/2, §4.1 (whose hypothesis holds because G is simple and nonabelian) gives C_(ℓ^κ) × C_(ℓ^κ), of order ℓ^(2κ) ≥ ℓ^(r+1), the same contradiction; so v_ℓ(m′_c) ≤ ⌊r/2⌋. Hence v_ℓ of |c|/gcd(|c|, m′_c d′_c) is r − min(r, v_ℓ(m′_c d′_c)) ≥ ⌈r/2⌉, and §3.3 applies.

**Checks.**

- For r = 0 the conclusion is divisibility by ℓ⁰ = 1.
- For G = A₇ (order 2520, not a PSL₂), ℓ = 7 and c of order 7: 7^(3·2) = 117649 ≥ 2520, so 7 divides the orbit size.
- For G = A₅ ≅ PSL₂(𝔽₄) ≅ PSL₂(𝔽₅) the theorem does not apply, and A₅ has an abelian subgroup of order 5 ≥ 60^(1/3) ≈ 3.9; the exclusion of PSL₂ is necessary for Vdovin's bound.
- For G = A₆ ≅ PSL₂(𝔽₉) the theorem does not apply.

*Needs:* §4.1; §3.3; gap:vdovin-abelian-subgroups (CFSGBasicProperties); CFSGStatement A0 (`ClassificationStatement`, to transfer Vdovin's bound from the listed groups to every finite simple group); Mathlib `IsSimpleGroup`, `Matrix.ProjectiveSpecialLinearGroup`, `Nat.factorization`.

### Examples

For G = PSU₃(4), of order 62400, and the four rationally conjugate classes c of order 5 with m′_c = 1, Chen reports components of degrees 1 and 184 (Chen, §4.11, pp. 388–389). The component of degree 1 and §3.3 force 5 ∣ d′_c, so the centralizer obstruction, not the cusp exponent, prevents a congruence modulo 5. §4.2 does not apply there: with ℓ = 5 and r = 1, 5^6 = 15625 < 62400.

### Dependencies

§§2.2, 3.2, 3.3; gap:vdovin-abelian-subgroups; CFSGStatement A0; Mathlib `IsSimpleGroup`, `Matrix.ProjectiveSpecialLinearGroup`, `Nat.factorization`.

## Layer 5: rank-two trace coordinates

Coefficient rings are commutative. For A, B ∈ SL₂(R) write x = tr A, y = tr B, z = tr AB; by the Fricke identity tr[A, B] = x² + y² + z² − x y z − 2 (Tau Ceti `Matrix.SpecialLinearGroup.trace_commutatorElement_fin_two`), so the fibre of commutator trace t is the level t + 2 surface of ClassicalArithmeticCompletion §4.58, and the commutator trace −2 fibre is the Markoff surface X.

### 5.1 The integral rank-two character scheme

For every commutative ring R, let GL₂ act on the affine scheme SL₂ × SL₂ over R by simultaneous conjugation, and let the rank-two SL₂ character scheme be the affine invariant quotient Spec of the ring of invariants of the group-scheme coaction. The map (A, B) ↦ (tr A, tr B, tr AB) induces an isomorphism R[x, y, z] ≅ 𝒪(SL₂ × SL₂)^(GL₂), hence an isomorphism of the character scheme with 𝔸³_R, compatible with every ring map R → S, including nonflat ones. (Chen, Theorem 5.2.1 and Definitions 5.2.2–5.2.3, pp. 395–396; Appendix 6.2, Theorem 6.2.2 and Lemma 6.2.3, pp. 426–427.)

The defining API is:

- The quotient is formed from the affine scheme SL₂ × SL₂ and its ring of coaction invariants.
- The trace-coordinate map R[x, y, z] → 𝒪(SL₂ × SL₂)^(GL₂) is an isomorphism for every R.
- The isomorphism commutes with every base change R → S.
- The coordinates are invariant under GL₂-scheme conjugation; orbit statements require the absolutely irreducible locus.

**Checks.**

- The pair (I, I) has coordinates (2, 2, 2) in every R.
- After reduction ℤ → 𝔽₂ the same polynomial algebra is obtained; a proof dividing by 2 (for example through a Reynolds operator) is invalid.
- Reducible pairs with the same semisimplification, such as (I, I) and (`[[1, 1], [0, 1]]`, I), have equal coordinates (2, 2, 2) without being conjugate; the quotient does not classify all orbits.

One proof route: obtain generation of the invariants of pairs of 2 × 2 matrices by traces of words and determinants over every ring, with base change and surjective restriction to SL₂ × SL₂; reduce words in two determinant-one matrices to the three traces by Cayley–Hamilton; prove algebraic independence on a universal three-parameter family.

*Needs:* gap:integral-rank-two-invariants (LanglandsParameterStacks); LanglandsParameterStacks LP2e.1 (coarse quotients); Tau Ceti `Matrix.SpecialLinearGroup.trace_commutatorElement_fin_two`; Mathlib `Matrix.SpecialLinearGroup`, `Matrix.trace`.

### 5.2 Outer automorphisms in trace coordinates

Over every commutative ring R, right precomposition by Aut(F₂) induces an anti-homomorphism from Aut(F₂) to the group of polynomial automorphisms of 𝔸³_R, which factors through Out(F₂)/⟨−I⟩ ≅ PGL₂(ℤ). The Nielsen generators r : (a, b) ↦ (a⁻¹, b), s : (a, b) ↦ (b, a) and t : (a, b) ↦ (a⁻¹, a b) act by (x, y, z) ↦ (x, y, x y − z), (y, x, z) and (x, z, y), and the central element γ₋ᵢ acts trivially. The image is the group generated by the Vieta move and the coordinate permutations, which over a finite field restricts on the punctured Markoff surface to the group Γ of ArithmeticDynamicsPartII §0.1; no faithfulness is asserted. The group of ClassicalArithmeticCompletion §4.57 also contains the even sign changes and is strictly larger. ArithmeticDynamicsPartII §6.1 states the finite-field orientation index; this section states the polynomial action over every ring. (Chen, Proposition 5.2.5, pp. 396–397; Chen's statement that the action is a homomorphism is corrected to an anti-homomorphism.)

One proof route: compute the three trace transformations from tr(AB) + tr(AB⁻¹) = tr A · tr B; check the composition order of the right action explicitly; inner automorphisms act by simultaneous conjugation and fix the coordinates, and γ₋ᵢ fixes them because tr(A⁻¹B⁻¹) = tr(BA) = tr(AB).

**Checks.**

- The composition rule: φ ∘ (r ∘ t) sends a ↦ φ(a), b ↦ φ(a)⁻¹φ(b), with triple (x, x y − z, y); this is the move of r followed by that of t, and differs from the reverse composite (x, z, x z − y) at (2, 3, 5), giving (2, 1, 3) against (2, 5, 7).
- r² = 1 in Aut(F₂) and its move is an involution: (x, y, x y − z) ↦ (x, y, x y − (x y − z)) = (x, y, z).
- γ₋ᵢ is not inner in F₂ but fixes every triple, so the map is not injective on Out(F₂).
- A single sign change (x, y, z) ↦ (−x, y, z) does not preserve the level surfaces in general ((1, 1, 1) has level 2 and (−1, 1, 1) level 4), so it is not in the image.

*Needs:* §5.1; gap:punctured-torus-nielsen (Out(F₂) ≅ GL₂(ℤ)); ClassicalArithmeticCompletion §4.57; ArithmeticDynamicsPartII §0.1; Mathlib `FreeGroup`.

### 5.3 The matrix-algebra criterion

For a commutative ring R and A, B ∈ SL₂(R), the R-subalgebra of M₂(R) generated by A and B is all of M₂(R) if and only if tr[A, B] − 2 = x² + y² + z² − x y z − 4 is a unit of R. Over a field this is equivalent to absolute irreducibility of the representation of F₂ generated by A and B, in the sense of ArithmeticGaloisRepresentations §1.7. Over a general ring the conclusion is the full matrix-algebra condition; no field notion is extended. (Chen, Lemma 5.2.9, p. 398.)

One proof route: by Cayley–Hamilton the generated algebra is the R-span of I, A, B, AB; the determinant of these four elements in the standard basis is, up to sign, tr[A, B] − 2; a surjective endomorphism of R⁴ is an isomorphism exactly when this determinant is a unit; over a field use Burnside's characterization.

**Checks.**

- For A = B = I the quantity is 0 and the algebra is R·I.
- For A = `[[1, 1], [0, 1]]`, B = `[[1, 0], [1, 1]]` the quantity is 1, a unit over every ring, and indeed A − I and B − I are the matrix units E₁₂ and E₂₁.
- For A = `[[1, 2], [0, 1]]`, B = `[[1, 0], [1, 1]]` the triple is (2, 2, 4) and the quantity is 4: over ℤ the generated algebra is the proper sublattice spanned by I, 2E₁₂, E₂₁, 2E₁₁, while over ℚ it is M₂(ℚ).

*Needs:* §5.1; ArithmeticGaloisRepresentations §1.7; Tau Ceti `Matrix.SpecialLinearGroup.trace_commutatorElement_fin_two`; Mathlib `Algebra.adjoin`.

### 5.4 Trace strata of SL₂-covers

For a prime power q and an SL₂(𝔽_q)-cover over ℚ̄, with the roots exp(2πi/n) fixed through a chosen embedding into ℂ, define its trace invariant t = tr(c) ∈ 𝔽_q for a representative c of its Higman class (§0.2). It is independent of the ramification point by conjugation invariance. The t-strata are unions of Higman strata, open and closed, and the invariant descends through central rigidification and GL₂(𝔽_q)-conjugation. Since tr(c⁻¹) = tr(c), the commutator and peripheral conventions give the same t. The root convention is part of the definition: an arbitrary coprime power of c need not have the same trace. (Chen, Definition 5.1.1, p. 392.)

The defining API is:

- t ∈ 𝔽_q is defined for every cover with the fixed root convention.
- The t-locus is exactly the union of the Higman strata of classes of trace t.
- The strata pull back along base change of the coefficient scheme.
- tr(c⁻¹) = tr(c).

**Checks.**

- In odd characteristic −`[[1, 1], [0, 1]]` has trace −2 and order 2p.
- Trace −2 does not force a matrix to equal −I.
- In characteristic 2 the labels 2 and −2 coincide, so they cannot define disjoint strata.
- Over 𝔽₁₁ the element diag(3, 4) has order 5 and trace 7, while its square diag(9, 5), a power with exponent prime to 5, has trace 3; a coprime power need not preserve the trace.

*Needs:* §0.2; Mathlib `Matrix.SpecialLinearGroup`, `Matrix.trace`.

### 5.5 Admissible traces

A conjugacy class, or a trace, of SL₂(𝔽_q) is q-admissible if it is the commutator class, or trace, of a generating pair. The admissible traces are: all t ≠ 2 for q = 2, 4, 8 and q ≥ 13; all t other than 1, 2 for q = 3, 9, 11; all t other than 0, 2, 4 for q = 5; all t other than 0, 1, 2 for q = 7. The trace-t level stack M(SL₂(𝔽_q))_t is nonempty if and only if t is q-admissible. For t ≠ ±2 there is one conjugacy class of trace t. For even q every admissible trace is the trace of a unique admissible class. For odd q there are three classes of trace −2, represented by −I, −`[[1, 1], [0, 1]]` and −`[[1, a], [0, 1]]` with a a nonsquare; when −2 is admissible exactly the two noncentral ones are admissible, and they are exchanged by conjugation by a matrix of nonsquare determinant. (Chen, Definition 5.1.2 and Proposition 5.1.3, pp. 392–393.)

The defining API is:

- Admissibility of a class and of a trace is the existence of a generating pair with that commutator class or trace.
- The trace-t level stack is nonempty exactly for admissible t.
- The admissible traces and the numbers of admissible classes are as listed.
- For odd q with admissible −2, conjugation by a nonsquare-determinant matrix swaps the two noncentral trace −2 classes.

**Checks.**

- For q = 5 exactly the traces 1 and 3 are admissible.
- For q = 3, trace 1 = −2 is excluded and only 0 is admissible; for q = 2 only 1 is admissible.
- For q = 7 the admissible traces are 3, 4, 5, 6.
- Over 𝔽₅ the matrices `[[0, 1], [4, 0]]` and `[[0, 1], [4, 2]]` have traces (0, 2, 3), commutator trace 0 + 4 + 9 − 0 − 2 = 11 = 1, and generate all 120 elements of SL₂(𝔽₅).

One proof route: use the finite-field trace dictionary of ArithmeticDynamicsPartII §6.1 and Dickson's classification to decide which trace fibres contain generating pairs; separate central and noncentral unipotent classes; treat the exceptional fields q ≤ 11 by explicit finite enumeration with q and the admitted set recorded.

*Needs:* §5.4; ArithmeticGaloisRepresentations §4.4; ArithmeticDynamicsPartII §6.1.

### 5.6 The diagonal outer group

For G ≤ SL₂(𝔽_q) define D(q, G) as the image of the normalizer N_(GL₂(𝔽_q))(G) in Out(G), equivalently N_(GL₂(𝔽_q))(G)/(G · C_(GL₂(𝔽_q))(G)). Write D(q) for G = SL₂(𝔽_q). Its orbits on Epi^ext(F₂, G) are the classes of surjections up to GL₂(𝔽_q)-conjugation. ArithmeticDynamicsPartII §6.0 proves |D(q, G)| ≤ 2 for absolutely irreducible non-dihedral G and q ≥ 3; this section defines the group and computes it for G = SL₂(𝔽_q). (Chen, Definition 5.2.12 and Proposition 5.2.13, pp. 400–401; Proposition 6.4.1(b), p. 429, where the quotient N/C is replaced by N/(G·C).)

The defining API is:

- D(q, G) is a subgroup of Out(G).
- D(q, G) is the quotient N/(G · C), not N/C.
- Its orbits on exterior pairs are the GL₂(𝔽_q)-conjugacy classes of surjections.
- |D(q)| = gcd(2, q − 1), and D(p) = Out(SL₂(𝔽_p)) for p prime.

**Checks.**

- For q = 5, D(q) has order 2, whereas N/C contains the inner automorphism group PSL₂(𝔽₅) of order 60.
- For q = 4, D(q) is trivial.
- For a general subgroup G, N/C contains the inner automorphisms and cannot serve as the outer image.

One proof route: map the normalizer to Out(G) by conjugation; its kernel is G · C; for G = SL₂(𝔽_q) the image is detected by determinants modulo squares, with p = 2, 3 treated directly and ArithmeticGaloisRepresentations §4.3 used within its range q ≥ 4.

*Needs:* ArithmeticGaloisRepresentations §4.3; ArithmeticDynamicsPartII §6.0 (the bound for non-dihedral images); Mathlib `Subgroup.centralizer`.

### 5.7 Normalizers of SL_n(𝔽_q)

Let q be a prime power and n ≥ 2. The normalizer of SL_n(𝔽_q) in GL_n(𝔽̄_q) is 𝔽̄_q^× · GL_n(𝔽_q), and the same holds for GL_n(𝔽_q) in place of SL_n(𝔽_q); for n = 1 both sides are 𝔽̄_q^×. Consequently a conjugator over the algebraic closure between the standard groups SL_n(𝔽_q) can be rescaled to an 𝔽_q-rational one. (Chen, Proposition 6.3.1, p. 428.)

One proof route: if A normalizes SL_n(𝔽_q), then A⁻¹ Frob(A) centralizes every elementary matrix over 𝔽_q and is therefore scalar; all ratios of nonzero entries of A are Frobenius-fixed; dividing by a nonzero entry gives a matrix over 𝔽_q.

**Checks.**

- For n = 2, q = 2: diag(ω, 1) with ω ∈ 𝔽₄ ∖ 𝔽₂ does not normalize SL₂(𝔽₂), since it conjugates `[[1, 1], [0, 1]]` to `[[1, ω], [0, 1]]`.
- ω·I normalizes SL₂(𝔽_q) for every ω ∈ 𝔽̄_q^× and is the rescaling ambiguity.
- For n = 1 the group SL₁ is trivial and its normalizer is everything, 𝔽̄_q^×.

*Needs:* Mathlib `Matrix.SpecialLinearGroup`, `Matrix.GeneralLinearGroup`.

### Examples

Over 𝔽₂, 𝔽₃, 𝔽₅, 𝔽₇ the trace map on SL₂(𝔽_q)² attains all 8, 27, 125, 343 triples, while the commutator traces of generating pairs are {1}, {0}, {1, 3}, {3, 4, 5, 6}; this separates admissibility from surjectivity of the unrestricted trace map.

### Dependencies

Tau Ceti `Matrix.SpecialLinearGroup.trace_commutatorElement_fin_two`; gap:integral-rank-two-invariants; LanglandsParameterStacks LP2e.1; gap:punctured-torus-nielsen; ClassicalArithmeticCompletion §4.57; ArithmeticGaloisRepresentations §§1.7, 4.3, 4.4; ArithmeticDynamicsPartII §§0.1, 6.0, 6.1; §0.2; Mathlib `Matrix.SpecialLinearGroup`, `Matrix.trace`, `Matrix.GeneralLinearGroup`, `Algebra.adjoin`, `Subgroup.centralizer`, `FreeGroup`.

## Layer 6: SL₂ level structures

Throughout, q = p^f is a prime power and t ∈ 𝔽_q; X_t(q) is the level t + 2 surface, and its non-dihedral locus X_t*(q) is the set of triples coming from absolutely irreducible pairs whose projective image is neither trivial nor dihedral, equivalently for t ≠ 2 the triples with at least two nonzero coordinates (ArithmeticDynamicsPartII §6.1).

### 6.1 The epimorphic trace −2 locus over a prime field

Let X_t°(q) be the set of triples of pairs generating SL₂(𝔽_q) with commutator trace t. For q ≥ 3 and t ≠ 2, X_t°(q) ⊆ X_t*(q); for q = 2 the non-dihedral locus is empty (SL₂(𝔽₂) ≅ S₃ is dihedral) while X_1°(2) is not. Both loci are empty at t = 2. For an odd prime p and t = −2 both loci equal the punctured Markoff surface X*(𝔽_p), and the trace map is a bijection Epi(F₂, SL₂(𝔽_p))_(−2)/GL₂(𝔽_p) → X*(𝔽_p). This equality is not extended to proper prime powers. (Chen, Definitions 5.2.14–5.2.15 and Propositions 5.2.16–5.2.17, pp. 401–402; (1.2), p. 307.) In the proof of Chen's Proposition 5.2.16(d) the trace is t ≠ 2 (not t ≠ ±2), and the dihedral case with one rotation and one reflection is added: the reflection and the product are involutions, so two traces vanish.

One proof route: a nonzero point of the Markoff surface has at least two nonzero coordinates (if y = z = 0 then x² = 0); a noncentral element of trace −2 has order 2p, so the projective image contains an element of order p; by Dickson's classification over the prime field the image is then PSL₂(𝔽_p), the exceptional A₄, S₄, A₅ arising only for p ∈ {3, 5}, where X*(𝔽₃) is empty and A₅ is PSL₂(𝔽₅); the image contains the center (ArithmeticDynamicsPartII §6.0), so the pair generates SL₂(𝔽_p).

**Checks.**

- The origin is excluded from X*(𝔽_p) for every odd prime p.
- Over 𝔽₂ the punctured zero-level surface has four points, but X_(−2)°(2) = ∅ because −2 = 2.
- At q = 2 the inclusion X_t° ⊆ X_t* fails at t = 1, so no blanket statement for all q holds.
- At p = 5 the epimorphic locus is the set of 40 nonzero zero-level points; no rescaling by 3 is needed for the coefficient-one equation.

*Needs:* §5.5; ArithmeticDynamicsPartII §§6.0, 6.1; ArithmeticGaloisRepresentations §4.4; ClassicalArithmeticCompletion §4.58.

### 6.2 Branch cycles in trace coordinates

Let q ≥ 3 and let φ : F₂ → SL₂(𝔽_q) have absolutely irreducible non-dihedral image G. Under the trace dictionary of ArithmeticDynamicsPartII §§6.0–6.1, the fibre of M(G)/D(q, G) over a geometric elliptic curve is Epi^ext(F₂, G)/D(q, G), identified with the triples whose pairs have image GL₂-conjugate to G; an Out⁺(F₂)-orbit O corresponds to a coarse component of degree |O|, because γ₋ᵢ acts trivially on triples. The branch permutations of §0.3 act by γ₀ (x, y, z) ↦ (x y − z, x, x² y − x z − y), γ₁₇₂₈ (x, y, z) ↦ (y, x, x y − z) and γ∞ (x, y, z) ↦ (x, z, x z − y), with γ∞ ∘ γ₁₇₂₈ ∘ γ₀ = id on triples; the fibres above 0, 1728, ∞ are their cycles and the ramification index at a point is its cycle length. (Chen, Proposition 5.2.20 and Remark 5.2.21, pp. 403–404; in the matrix of Remark 5.2.21 for γ∞ the upper-right entry is +1.)

One proof route: descend the finite-field trace bijection by the normalizer action and restrict to one image type; compute the three trace transformations with the anti-homomorphism convention of §5.2; apply §0.3 for the coarse branch cycles.

**Checks.**

- An absolutely irreducible dihedral image does not give a point of X_t*: over 𝔽₇, diag(2, 4) and `[[0, 6], [1, 0]]` have triple (6, 0, 0) and commutator trace 6 ≠ 2; the non-dihedral hypothesis cannot be dropped.
- γ∞ fixes the first coordinate: (x, y, z) ↦ (x, z, x z − y), so (3, 3, 3) ↦ (3, 3, 6).
- γ₁₇₂₈² is the identity on triples, while its class in Out(F₂) is −I; this accounts for the coarse involution.
- On X*(𝔽₅) (40 points) γ₀ has 14 cycles, γ₁₇₂₈ 20 and γ∞ 8, and γ∞ ∘ γ₁₇₂₈ ∘ γ₀ fixes every point.

*Needs:* §0.3; §5.2; §5.6; §6.1; ArithmeticDynamicsPartII §§6.0, 6.1; ClassicalArithmeticCompletion §4.57.

### 6.3 Rotation slices at arbitrary level

For a, t ∈ 𝔽_q with t ≠ 2 let C₁(a)_t be the slice x = a of X_t(q), the conic y² + z² − a y z + (a² − 2 − t) = 0, and C₁(a)_t* = C₁(a)_t ∩ X_t*(q). The rotation γ∞ acts on (y, z) by L_a = `[[0, 1], [−1, a]]`, whose characteristic polynomial is X² − a X + 1, and every point of C₁(a)_t* has (y, z) ≠ (0, 0). This extends ArithmeticDynamicsPartII §2.1 from the prime-field zero level to every level t ≠ 2 over every finite field. (Chen, proof of Lemma 5.3.1, pp. 406–409.)

The defining API is:

- C₁(a)_t and C₁(a)_t* are the slice of the level surface and its non-dihedral part.
- γ∞ restricts to multiplication by L_a on the slice.
- L_a is classified by X² − a X + 1 over 𝔽_q: split with distinct roots, irreducible, or with a repeated root.
- Formation of the slice and of L_a commutes with finite-field embeddings; orbit lengths need not.

**Checks.**

- For odd q and a = 2 the slice is (y − z)² = t − 2.
- A nonsplit degenerate slice with a² = t + 2 consists of the single point (a, 0, 0), which X_t* removes; the full affine conic is not empty.
- Over 𝔽₄ with a satisfying a² + a + 1 = 0, X² + a X + 1 is irreducible and L_a has order 5, although the discriminant a² is a square.

*Needs:* ClassicalArithmeticCompletion §4.58; ArithmeticDynamicsPartII §§2.1, 6.1; §6.2.

### 6.4 The exact rotation order

For q ≥ 3, t ≠ 2 and P = (a, y, z) ∈ C₁(a)_t*, the γ∞-orbit of P has length n_q(a), the order of a noncentral element of SL₂(𝔽_q) of trace a (ArithmeticDynamicsPartII §6.2, `traceOrder`). Correspondingly, the γ∞-orbit of an absolutely irreducible non-dihedral representation modulo the diagonal outer action and conjugacy has length the order of its first matrix. (Chen, Lemma 5.3.1 and its proof, pp. 405–409.) Chen's Lemma 5.3.1 excludes only the simultaneous vanishing of the last two coordinates; the full non-dihedral hypothesis is used here.

One proof route: for distinct eigenvalues diagonalize L_a over 𝔽_q or 𝔽_q²; a vector with both eigencoordinates nonzero has period the common order of the inverse eigenvalues, and the conic equation with (y, z) ≠ (0, 0) excludes the eigenlines in the degenerate slices; for a = ±2 in odd characteristic use the nontrivial Jordan block, where t ≠ 2 excludes the fixed eigenline; in characteristic 2 with a = 0, L_0 swaps y and z and t ≠ 2 excludes y = z; translate through the trace bijection, a non-dihedral representation having noncentral first matrix.

**Checks.**

- At p = 5 the zero-trace slice of X*(𝔽₅) has 8 points in two 4-cycles, n₅(0) = 4; each ±2 slice has 10 points with periods 5 and 10.
- At a = 2 the eigenvalue is 1 but the period is p, not 1.
- Over 𝔽₄ with X² + a X + 1 irreducible the period is 5, which divides q + 1 = 5 and not q − 1 = 3.

*Needs:* §6.3; ArithmeticDynamicsPartII §§6.1, 6.2; Mathlib `Function.minimalPeriod`, `orderOf`.

### 6.5 Split, nonsplit and parabolic slices

Let q be odd and t ≠ 2. For a = ±2 the full conic C₁(a)_t is empty if t − 2 is a nonsquare and otherwise is two parallel lines with 2q points. If X² − a X + 1 has distinct roots in 𝔽_q, the conic has q − 1 points when a² ≠ t + 2, and 2q − 1 points, two intersecting lines, when a² = t + 2. If X² − a X + 1 is irreducible, it has q + 1 points when a² ≠ t + 2 and exactly the single point (a, 0, 0) when a² = t + 2. For even q and t ≠ 0, C₁(0)_t has q points and its rotation orbits have size 2. These statements concern the full conic; X_t* additionally removes the points with fewer than two nonzero coordinates. This extends the slice classification of ArithmeticDynamicsPartII §2.2 from the prime-field zero level to every level and every finite field. (Chen, proof of Lemma 5.3.1, pp. 406–409; Chen's nonsplit degenerate case is corrected to the single point (a, 0, 0).)

One proof route: for repeated roots complete the square in y ∓ z and use t − 2 ≠ 0; for split distinct roots factor the quadratic form into two independent linear forms; for irreducible X² − a X + 1 identify the form with a multiple of the norm 𝔽_q² → 𝔽_q, whose nonzero fibres have q + 1 elements and whose zero fibre is the origin; in characteristic 2 the squaring map is bijective, y + z is fixed to a nonzero value, and swapping has no fixed point.

**Checks.**

- Over 𝔽₅ with a = 1, t = 4: X² − X + 1 is irreducible and a² = 1 = t + 2, so the full slice is the single point (1, 0, 0) and the non-dihedral slice is empty.
- At p = 5, t = −2, a = 0: X² + 1 splits and a² = 0 = t + 2, so the conic y² + z² = 0 has 2·5 − 1 = 9 points, and removing the origin leaves the 8 points of §6.4.
- At p = 5, t = −2, a = 2: t − 2 = −4 = 1 is a square, giving 10 points.

*Needs:* §6.3; §6.4; ArithmeticDynamicsPartII §2.2.

### 6.6 SL₂ vertical automorphisms and representability

Let q ≥ 3 and G ≤ SL₂(𝔽_q) absolutely irreducible and not dihedral. Then all geometric vertical automorphism groups of Adm(G) in characteristic zero equal Z(G) = Z(SL₂(𝔽_q)), and M̄(G) → M̄(1) is representable. On the reduced ramification divisor of the Higman-c stratum the vertical group is Z(SL₂(𝔽_q)) ∩ ⟨c⟩: trivial for even q, and for odd q of order 2 exactly when n_q(tr c) is even, which includes the noncentral trace −2 case of order 2p. (Chen, Theorem 5.3.2, pp. 405–406; Proposition 6.4.1(a), pp. 428–429.)

One proof route: by §6.4 the γ∞-orbit of the class of a generating pair (u, h) has length |u|, so (u, h) is conjugate to (u, u^k h) only when |u| divides k, that is k_(u,h) = |u|; then A(G, u, h) = Z(G) by §2.2, Z(G) = Z(SL₂(𝔽_q)) by ArithmeticDynamicsPartII §6.0, and §2.3 gives representability; intersect with the inertia group at a marked ramification point.

**Checks.**

- For G = SL₂(𝔽₅) and c of trace −2 (order 10): Z ∩ ⟨c⟩ = {±1}, of order 2, and n₅(−2) = 10 is even.
- Over 𝔽₇, trace 3 has n = 8 (even) and vertical group of order 2, while trace 6 has n = 3 (odd) and trivial vertical group.
- The dihedral group D₁₀ ≤ SL₂(𝔽₄), the normalizer of a nonsplit torus, is absolutely irreducible but dihedral, and its cusps have A = ⟨u⟩ of order 5 ≠ Z = 1, so its compactified map is not representable; the non-dihedral hypothesis is necessary.

*Needs:* §2.2; §2.3; §6.4; ArithmeticDynamicsPartII §§6.0, 6.2; ArithmeticGaloisRepresentations §4.4.

### Examples

At p = 5, X*(𝔽₅) has 40 points; under γ∞ the zero slice splits into two 4-cycles, each ±2 slice into cycles of lengths 5 and 10, and the remaining slices into cycles of the eigenvalue orders, for 8 cycles in total; the fixed point of γ₀ is (3, 3, 1).

### Dependencies

§§0.3, 2.2, 2.3, 5.2, 5.5, 5.6; ArithmeticDynamicsPartII §§2.1, 2.2, 6.0, 6.1, 6.2; ArithmeticGaloisRepresentations §4.4; ClassicalArithmeticCompletion §§4.57, 4.58; Mathlib `Function.minimalPeriod`, `orderOf`.

## Layer 7: Markoff modular geometry

Throughout, p ≥ 5 is prime, X* = X*(𝔽_p), D = |X*| = p(p + 3) for p ≡ 1 (mod 4) and p(p − 3) for p ≡ 3 (mod 4) (ArithmeticDynamicsPartII §2.3), and "transitive" means that Γ acts transitively on X*.

### 7.1 Markoff components and Higman classes

Assume Γ is transitive on X*. Then the orientation-preserving image is transitive (ArithmeticDynamicsPartII §6.6), the stack M(SL₂(𝔽_p))_(−2) has exactly two geometric connected components, distinguished by the two noncentral trace −2 Higman classes and exchanged by the involution of D(p), each coarse component is isomorphic to the coarse absolute level curve M_p of M(SL₂(𝔽_p))_(−2)/D(p) and has j-degree D, and its compactification is a smooth proper geometrically connected curve. (Chen, Theorem 5.5.7(b), p. 416; opening of §5.6 and Theorem 5.6.3, pp. 417–418.) The hypothesis p ≥ 5 is needed: at p = 3 the trace −2 equals 1 and X*(𝔽₃) is empty (Chen's Theorem 1.2.10 omits it).

One proof route: by §6.1 the fibre of M(SL₂(𝔽_p))_(−2)/D(p) is X*; the Γ⁺-orbit is all of X*; the two Higman classes are interchanged freely by D(p), so an orbit on the quotient meets each class in exactly one orbit on exterior pairs; use §6.2 for the coarse degree and the compactification of ArithmeticDynamicsPartII §6.0, and base-change invariance from ℚ̄ to every algebraically closed field of characteristic zero.

**Checks.**

- p = 5: D = 40; p = 7: D = 28; p = 13: D = 208.
- At p = 3 the punctured surface is empty and no connected curve is obtained.
- The coordinate swap fixes (3, 3, 3) and reverses orientation, so Γ-transitivity gives Γ⁺-transitivity; without such a fixed point two Γ⁺-orbits exchanged by Γ could occur.

*Needs:* §§0.6, 5.5, 5.6, 6.1, 6.2; ArithmeticDynamicsPartII §§2.3, 6.0, 6.6; InverseGaloisAndArithmeticFundamentalGroups §IG.1.3.

### 7.2 Branch and cusp counts

Assume Γ is transitive on X*. The fibre of the compactified M_p over j = 0 has (D + 2)/3 points: exactly one fixed triple of γ₀, which is (3, 3, 6) (equal to (3, 3, 1) at p = 5), all other γ₀-cycles having length 3. The fibre over 1728 has (D + f_p)/2 points, where f_p = 2 for p ≡ ±1 (mod 8) and f_p = 0 for p ≡ ±3 (mod 8). The fibre over ∞ has C_p points, where C_p is the number of γ∞-orbits on X*, given by ArithmeticDynamicsPartII §2.4 as C_p = ((p − 1)/2)Φ(p − 1) + ((p + 1)/2)Φ(p + 1) + κ_p with κ_p = (−5p + 11)/4 for p ≡ 1 (mod 4) and (−7p − 1)/4 for p ≡ 3 (mod 4), and Φ(n) = Σ_(d ∣ n) φ(d)/d. (Chen, Propositions 5.6.1–5.6.2 and proof of Theorem 5.6.3, p. 418.) Chen's Proposition 5.6.1(a) prints (D − 3)/3 for the count over 0; the correct count is (D + 2)/3.

One proof route: solve the γ₀ and γ₁₇₂₈ fixed-point equations with the formulas of §6.2 (γ₀ has order 3 and γ₁₇₂₈ order 2 on triples); translate cycles into points of the fibres by §6.2; take C_p from ArithmeticDynamicsPartII §2.4, since γ∞ is the rotation there and γ₋ᵢ acts trivially.

**Checks.**

- p = 5: 14 points over 0, 20 over 1728, 8 cusps; the fixed triple is (3, 3, 1), and (40 − 3)/3 is not an integer.
- p = 7: 10, 15, 5; p = 11: 30, 44, 14.
- f_p distinguishes p = 7 (f = 2, (28 + 2)/2 = 15) from p = 5 (f = 0, 40/2 = 20).

*Needs:* §7.1; §6.2; ArithmeticDynamicsPartII §§2.3, 2.4; Mathlib `Nat.totient`.

### 7.3 The genus formula

Assume Γ is transitive on X*. The common genus of the two compactified trace −2 components is p²/12 − ((p − 1)/4)Φ(p − 1) − ((p + 1)/4)Φ(p + 1) + ε_p, where ε_p = 7p/8 − 29/24, 5p/8 + 19/24, 7p/8 − 17/24, 5p/8 + 7/24 for p ≡ 1, 3, 5, 7 (mod 8). It is 0, 0, 1 for p = 5, 7, 11 and at least 2 for every p ≥ 13 satisfying the hypothesis. (Chen, Theorem 5.6.3 and proof, pp. 418–419.)

One proof route: apply Riemann–Hurwitz (SchemeAndStackFoundations §3.2) to the smooth proper connected coarse curve with its three branch fibres, or equivalently form the connected branch triple (γ₀, γ₁₇₂₈, γ∞) on X*, which satisfies σ∞ σ₁ σ₀ = 1 by §6.2, and use `TauCeti.PermutationTriple.IsConnected.two_sub_two_mul_genus`; substitute D and the counts of §7.2 and simplify by p modulo 8. For the lower bound use Φ(n) ≤ τ(n) ≤ 2√n and ε_p ≥ p/2, which give genus ≥ p²/12 − (p − 1)^(3/2)/2 − (p + 1)^(3/2)/2 + p/2; for p ≥ 2304, (p ± 1)^(3/2) < 3p^(3/2) and √p ≥ 48 make this exceed p^(3/2) + p/2 > 2; for the 337 primes 13 ≤ p < 2304 the formula, evaluated exactly, has minimum 5, attained at p = 13.

**Checks.**

- p = 5: 25/12 − 2 − 15/4 + (35/8 − 17/24) = 0, with Φ(4) = 2 and Φ(6) = 5/2.
- p = 13, 17, 19, 23, 29, 31: genus 5, 10, 9, 18, 35, 38, agreeing with 1 + (D − c₀ − c₁₇₂₈ − c∞)/2 computed from the cycle counts of §7.2.
- The formula takes integer values at every prime 5 ≤ p < 2304; a numerator D − 3 in the count over 0 would make it nonintegral at p = 5.

*Needs:* §7.2; §6.2; SchemeAndStackFoundations §3.2; Tau Ceti `TauCeti.PermutationTriple`, `TauCeti.PermutationTriple.genus`, `TauCeti.PermutationTriple.IsConnected.two_sub_two_mul_genus`.

### 7.4 Finiteness of elliptic j-invariants

Let K be a number field and p ≥ 13 a prime for which Γ is transitive on X*. Then only finitely many j ∈ K are j-invariants of elliptic curves corresponding to K-rational points of either compactified trace −2 component; in particular only finitely many j-invariants occur among elliptic curves E over K carrying a geometrically connected SL₂(𝔽_p)-torsor over E ∖ O with trace invariant −2. Finiteness of K-isomorphism classes of such curves is not asserted: quadratic twists preserve j and can give infinitely many classes. (Chen, Theorem 5.6.4, p. 419, with the conclusion corrected from isomorphism classes to j-invariants.)

One proof route: extend K finitely so that each relevant component is defined and geometrically connected; by §7.3 it has genus at least 2, so Faltings's theorem gives finitely many rational points; map them to the j-line and descend the finite set of j-invariants; an actual torsor gives a rational point of the level stack, hence of the coarse curve.

**Checks.**

- For p = 5, 7 the genus is 0 and for p = 11 it is 1, so no finiteness follows from this argument.
- A K-point of the coarse curve records only j: for j ≠ 0, 1728 an elliptic curve E over K and its quadratic twists by the classes of K^×/K^(×2) have the same j and are pairwise non-isomorphic over K, so the conclusion concerns j-invariants.

*Needs:* §7.3; HeightsRationalPointsAndObstructions §4.6 (`Curve.finite_rationalPoints`); §7.1.

### 7.5 The projective absolute-level quotient

Central twists by Hom(F₂, {±I}) act on X* by the Klein four group (x, y, z) ↦ (ε₁x, ε₂y, ε₁ε₂z), which is the even sign-change action of ClassicalArithmeticCompletion §4.57 and the block structure Y* = X*/(even sign changes) of ArithmeticDynamicsPartII §7.2. It is free on X*. The quotient Y* is the trace fibre of absolute PSL₂(𝔽_p)-structures; under transitivity the associated coarse component N_p has degree d_p = D/4 over the j-line. (Chen, §5.6.2, pp. 419–421; Theorem 5.6.6, p. 420.)

The defining API is:

- Central twists correspond exactly to the even sign changes.
- Every nonidentity element of the Klein four group acts without fixed points on X*.
- The sign quotient is identified with the fibre of the projective absolute level stack.
- The coarse degree of N_p is d_p = p(p ± 3)/4.

**Checks.**

- p = 5: D = 40 and d_p = 10; p = 7: D = 28 and d_p = 7.
- The origin is fixed by the whole sign group and must be excluded before dividing the cardinality by 4.
- A sign change (−x, −y, z) fixing (x, y, z) forces x = y = 0, hence z² = 0 and z = 0; so freeness holds on X*.

One proof route: identify central twists with the even sign action; prove freeness by the fixed-coordinate equations; compare lifts of projective representations and quotient by projective outer automorphisms through the full SL₂ trace fibre and the two Higman classes.

*Needs:* §7.1; §6.1; §0.6; ClassicalArithmeticCompletion §4.57; ArithmeticDynamicsPartII §7.2; ArithmeticGaloisRepresentations §4.3.

### 7.6 Large projective monodromy

Let P_MP be the set of primes p ≥ 5 for which Γ is transitive on X* and MP(p) holds (ArithmeticDynamicsPartII §7.3: p ≡ 1 (mod 4), or p ≡ 3 (mod 4) and the order of a root of X² − 3X + 1 in 𝔽_p²^× is at least 32√(p + 1)). For p ∈ P_MP the geometric monodromy group of N_p → P¹_j is the symmetric group S_(d_p) when p ≡ 5, 7, 9, 11 (mod 16) and the alternating group A_(d_p) when p ≡ 1, 3, 13, 15 (mod 16). (Chen, Theorem 5.6.6, p. 420; condition (5.8) and Theorem 5.5.8, pp. 416–417; Meiri–Puder, Theorems 1.3–1.4.) Meiri and Puder show that the order condition holds for a set of primes p ≡ 3 (mod 4) of density one among them (Meiri–Puder, §1 and Appendix A), so with the finiteness of the non-transitive primes (ArithmeticDynamicsPartII §4.2) P_MP has density one among all primes.

One proof route: the block group Q_p of the full Γ-action on Y* contains A_(d_p), by ArithmeticDynamicsPartII §7.4a for p ≡ 1 (mod 4) and by the alternating containment requested from ArithmeticDynamicsPartII for p ≡ 3 (mod 4); the orientation-preserving image is normal of index at most two in Q_p (ArithmeticDynamicsPartII §6.1), and A_(d_p) has no subgroup of index two, so the orientation-preserving image contains A_(d_p); transfer this image to the geometric fibre through §§7.1 and 7.5; decide between A_(d_p) and S_(d_p) by the signs of the projective γ₀, γ₁₇₂₈ and γ∞.

**Checks.**

- p = 5 (≡ 5 mod 16) is in P_MP and the projective γ₁₇₂₈ and γ∞ act on the 10 blocks as odd permutations, so the monodromy is S₁₀.
- For p = 13, 17, 19, 29, 31 (≡ 13, 1, 3, 13, 15 mod 16) all three projective branch permutations are even, and for p = 23, 37, 41, 43 (≡ 7, 5, 9, 11 mod 16) odd ones occur, matching the residue rule.
- p = 7 is not in P_MP: every element order in 𝔽₄₉^× divides 48, and the roots of X² − 3X + 1 have order dividing 8, far below 32√8.

*Needs:* §7.5; §7.1; ArithmeticDynamicsPartII §§4.2, 6.1, 7.2, 7.3, 7.4, 7.4a and gap:markoff-alternating-three-mod-four; Mathlib `alternatingGroup.isSimpleGroup`.

### 7.7 Composition factors of congruence quotients

For every n ≥ 1, every nonabelian simple composition factor of SL₂(ℤ/n) is isomorphic to PSL₂(𝔽_ℓ) for a prime ℓ ≥ 5 dividing n. Consequently, if a subgroup of SL₂(ℤ) contains the principal congruence subgroup of level n (Mathlib `CongruenceSubgroup.Gamma`), every nonabelian simple composition factor of the permutation group of SL₂(ℤ) on its cosets is of this form. (Chen, proof of Corollary 5.6.8, p. 421.)

One proof route: by the Chinese remainder theorem SL₂(ℤ/n) is the product of the SL₂(ℤ/ℓ^k) over the prime powers dividing n; the kernel of SL₂(ℤ/ℓ^k) → SL₂(𝔽_ℓ) is an ℓ-group; SL₂(𝔽₂) and SL₂(𝔽₃) are solvable, and for ℓ ≥ 5 the composition factors of SL₂(𝔽_ℓ) are C₂ and PSL₂(𝔽_ℓ); composition factors of a quotient occur among those of the group.

**Checks.**

- n = 1: the trivial group has no composition factors.
- n = 6: SL₂(ℤ/6) ≅ SL₂(𝔽₂) × SL₂(𝔽₃) is solvable.
- n = 25: the nonabelian composition factors are a single PSL₂(𝔽₅) ≅ A₅, the kernel to SL₂(𝔽₅) being a 5-group of order 125.

*Needs:* Mathlib `CongruenceSubgroup.Gamma`; ArithmeticGaloisRepresentations §4.3 (simplicity of PSL₂(𝔽_ℓ) for ℓ ≥ 5).

### 7.8 Noncongruence of Markoff levels

For p ∈ P_MP, the finite-index subgroup of SL₂(ℤ) ≅ Out⁺(F₂) stabilizing a point of the fibre of either trace −2 component of M(SL₂(𝔽_p)) is not a congruence subgroup, in the sense of Mathlib `CongruenceSubgroup.IsCongruenceSubgroup`. The obstruction is already visible on N_p, whose monodromy has A_(d_p) as a composition factor with d_p ≥ 10. (Chen, Corollary 5.6.8, pp. 420–421; Definition 5.6.5, p. 419.)

One proof route: if the subgroup were congruence, of level n, the permutation monodromy of the cover and every quotient of it would factor through SL₂(ℤ/n), so A_(d_p), simple by `alternatingGroup.isSimpleGroup`, would be a composition factor of SL₂(ℤ/n) and by §7.7 isomorphic to PSL₂(𝔽_ℓ) with ℓ ≥ 5; equal orders give d_p! = ℓ(ℓ² − 1) (using `nat_card_alternatingGroup`); ℓ divides d_p!, so ℓ ≤ d_p and d_p! < ℓ³ ≤ d_p³, which is false for d_p ≥ 6. The SL₂ level cover has the projective quotient as a quotient, so the conclusion transfers.

**Checks.**

- The argument needs d ≥ 6: A₅ ≅ PSL₂(𝔽₅) shows that d = 5 gives no obstruction.
- For d = 6, 6! = 720 is not ℓ(ℓ² − 1) for any prime ℓ ≤ 6 (the values are 6, 24, 120), consistent with A₆ ≅ PSL₂(𝔽₉), which is not a prime-field PSL₂.
- Γ₁(n) and Γ(n) are congruence subgroups by Mathlib's definition, so the conclusion must fail for abelian levels; for G = (ℤ/n)² the monodromy factors through SL₂(ℤ/n).

*Needs:* §7.6; §7.7; Mathlib `CongruenceSubgroup.IsCongruenceSubgroup`, `CongruenceSubgroup.Gamma`, `alternatingGroup.isSimpleGroup`, `nat_card_alternatingGroup`; gap:punctured-torus-nielsen.

### Examples

Direct enumeration of X* and the three branch permutations of §6.2 gives the table below; for these primes the orientation generators are already transitive. The projective column is the quotient by the free even-sign action, and its branch signs agree with §7.6.

| p | D | Points over 0 | Points over 1728 | Cusps | Genus | d_p |
| ---: | ---: | ---: | ---: | ---: | ---: | ---: |
| 5 | 40 | 14 | 20 | 8 | 0 | 10 |
| 7 | 28 | 10 | 15 | 5 | 0 | 7 |
| 11 | 88 | 30 | 44 | 14 | 1 | 22 |
| 13 | 208 | 70 | 104 | 26 | 5 | 52 |
| 17 | 340 | 114 | 171 | 37 | 10 | 85 |
| 19 | 304 | 102 | 152 | 34 | 9 | 76 |
| 23 | 460 | 154 | 231 | 41 | 18 | 115 |
| 29 | 928 | 310 | 464 | 86 | 35 | 232 |
| 31 | 868 | 290 | 435 | 69 | 38 | 217 |

The genus column is (2 + D − c₀ − c₁₇₂₈ − c∞)/2 for the cycle counts c₀, c₁₇₂₈, c∞, and agrees with the formula of §7.3.

### Dependencies

§§0.6, 5.5, 5.6, 6.1, 6.2; ArithmeticDynamicsPartII §§2.3, 2.4, 4.2, 6.0, 6.1, 6.6, 7.2, 7.3, 7.4, 7.4a and gap:markoff-alternating-three-mod-four; ClassicalArithmeticCompletion §4.57; ArithmeticGaloisRepresentations §4.3; InverseGaloisAndArithmeticFundamentalGroups §IG.1.3; SchemeAndStackFoundations §3.2; HeightsRationalPointsAndObstructions §4.6; gap:punctured-torus-nielsen; Tau Ceti `TauCeti.PermutationTriple`, `TauCeti.PermutationTriple.genus`, `TauCeti.PermutationTriple.IsConnected.two_sub_two_mul_genus`; Mathlib `CongruenceSubgroup.IsCongruenceSubgroup`, `CongruenceSubgroup.Gamma`, `alternatingGroup.isSimpleGroup`, `nat_card_alternatingGroup`, `Nat.totient`.

## Downstream consumers

No roadmap earlier in the merge order consumes this one. Its combinatorial congruence and simple-group congruence are the general finite-group statements behind Nielsen-orbit questions for finite groups, such as Chen's divisibility question recorded in InverseGaloisAndArithmeticFundamentalGroups §IG.3.2; its cusp classification and automorphism groups describe the boundary of elliptic nonabelian level curves for any later study of their moduli; and its Markoff modular geometry (two components, genus, monodromy and noncongruence) is the geometric companion of the finite-field dynamics of ArithmeticDynamicsPartII.

## Worked examples

The combinatorial congruence on SL₂(𝔽₅). Every generating pair of SL₂(𝔽₅) has k_(u,h) = |u|, so A(G, u, h) = Z(G) = {±1} and m′_c = 2 for every commutator class of order divisible by 2. For c of trace −2 (order 10), d′_c = |C(c)|/10 = 1 and the modulus is 10/gcd(10, 2) = 5; the Out⁺(F₂)-orbit has 40 classes, matching the 40 points of X*(𝔽₅) through §6.1. For c of trace 1 (order 6), d′_c = 6/6 = 1 and the modulus is 6/gcd(6, 2) = 3; the orbit has 72 classes.

The conic slices at p = 5. Over 𝔽₅ with a = 1, t = 4 the slice is the single point (1, 0, 0) and its non-dihedral part is empty; over 𝔽₄ = 𝔽₂[a]/(a² + a + 1) the polynomial X² + a X + 1 has no root and `[[0, 1], [1, a]]` has order five although its discriminant a² is a square.

The odd dihedral groups. For D₆, D₁₀, D₁₄ with u a rotation and h a reflection, A = ⟨u⟩ has order 3, 5, 7, the center is trivial, the twist period is one and the centralizer obstruction is one, while every coarse component has degree 3: the cusp exponent m′ alone explains the failure of divisibility by the ramification index.

## References

- **CHEN2024.** William Y. Chen, *Nonabelian level structures, Nielsen equivalence, and Markoff triples*, Annals of Mathematics 199 (2024), 301–443, DOI 10.4007/annals.2024.199.1.5; published copy on the author's site. All Chen locators refer to this text: §§2.1–2.5, Theorem 2.5.2, Proposition 2.5.3, Corollary 2.5.4, Definitions 2.5.9–2.5.13; §§3.1–3.5; §§4.1–4.12, Theorem 4.8.4, Proposition 4.9.1, Proposition 4.10.1, Theorems 4.10.3 and 4.10.5, Lemmas 4.12.1–4.12.2, Corollaries 4.12.4–4.12.5; §§5.1–5.6, Proposition 5.1.3, Theorem 5.2.1, Lemma 5.2.9, Proposition 5.2.20, Lemma 5.3.1, Theorem 5.3.2, Theorems 5.6.3, 5.6.4, 5.6.6, Corollary 5.6.8; Appendix 6.2–6.5.
- **CHEN2018.** William Y. Chen, *Moduli interpretations for noncongruence modular curves*, Mathematische Annalen 371 (2018), 41–126, DOI 10.1007/s00208-017-1575-6; arXiv:1510.05687v5. Theorem 4.2.2 (structure of M(D₂k)) and Theorem 3.4.2.
- **BBCL22.** Renee Bell, Jeremy Booher, William Y. Chen and Yuan Liu, *Tamely ramified covers of the projective line with alternating and symmetric monodromy*, Algebra & Number Theory 16 (2022), 393–446, DOI 10.2140/ant.2022.16.393; arXiv:2007.12299v2. Theorem 2.2.3, Proposition 2.1.2 and Corollary 2.1.3.
- **MP18.** Chen Meiri and Doron Puder, with an appendix by Dan Carmon, *The Markoff group of transformations in prime and composite moduli*, Duke Mathematical Journal 167 (2018), 2679–2720, DOI 10.1215/00127094-2018-0024; arXiv:1702.08358v2. Theorems 1.3–1.4, §4.3 and Appendix A.
- **ASADA2001.** Mamoru Asada, *The faithfulness of the monodromy representations associated with certain families of algebraic curves*, Journal of Pure and Applied Algebra 159 (2001), 123–147, DOI 10.1016/S0022-4049(00)00056-6. §7; cited by locator.
- **VDOVIN1999.** E. P. Vdovin, *Maximal orders of abelian subgroups in finite simple groups*, Algebra i Logika 38 (1999), 131–160, English translation in Algebra and Logic 38, DOI 10.1007/BF02671721. Theorem A; cited by locator.
