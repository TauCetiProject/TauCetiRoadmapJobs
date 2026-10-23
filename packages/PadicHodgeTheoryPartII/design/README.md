# Roadmap: generic crystalline monodromy

**Summary.** Build a bridge from a generic filtration of a crystalline G-object to a Galois representation whose image meets the rational derived group openly. The inputs are the shared rational p-adic Hodge and reductive-group theories. The main theorem applies to arbitrary connected reductive groups over Q_p: an acceptable Hodge–Newton irreducible datum has such a classical period point over a finite extension of breve Q_p. The argument passes through coefficient lines, lowest-weight inequalities and connected monodromy. Compact-image torsor components and a quasisplit converse are the final applications.

## Why this roadmap

Weak admissibility constrains every Frobenius-stable subspace, while large monodromy asks for control of every algebraic representation. The finite decent-field fibre functor connects these tests. Its rank-one coefficient subobjects can be described by a Newton eigenvalue and a full-period sum of filtration jumps. At a topologically generic flag, highest weights bound those sums. Strict Hodge–Newton positivity then forces every tested line to be fixed by the derived group.

The end theorem is the open-image point of Gleason–Lim–Xu, Proposition 5.9 (p. 844), using their Theorem 5.8 (pp. 842–844). The converse, Proposition 5.11 (p. 845), uses a distinct geometric implication from Theorem 6.1(a). The forward argument does not require the ADLV component classification.

## What is available today

The fixed libraries are Mathlib 082e2d37e8b0463410cdb532e111cd43d5a66174 and Tau Ceti f790474821cf4256814db967cb154e7af3d0c369. Mathlib already has submodules, p-typical Witt coordinates, Teichmüller lifts, Verschiebung, ghost polynomial identities, and algebraic independence. Its `WittVector.isocrystal_classification` is a rank-one result, so it is not a substitute for the full slope classification used here. The existing `TauCeti.Tannaka.fgPointTensorIsoEquiv` is the point reconstruction for finite comodules over a specified commutative Hopf algebra; abstract neutral-category fibre change is a separate input.

The current Tau Ceti library a91d3aafa8cd3e6bc33dfde0d7677ed0f1625039 also has `TauCeti.HopfIdeal.exists_finite_subcomodule_exteriorPower_line_stabilizer` in `Algebra/AlgebraicGroup/Representation/ExteriorStabilizer/Character.lean`. It gives the scheme-theoretic line stabilizer for a finitely generated Hopf ideal over a field, uniformly in value algebras. Reuse this theorem through the representation/comodule adapter. General Chevalley theory, Hopf-point Tannaka and Witt completeness are not new targets here.

## Prerequisites and boundaries

The mathematical supplier contracts are the following. Existing objects keep their original owners.

- **Rational periods and crystalline monodromy:** `PadicHodgeTheory:R06.1` and `PadicHodgeTheory:R06.2`. Use the exact nodes `period-functors-perfect-residue-base`, `weak-admissibility-is-admissibility`, `crystalline-g-fiber-functor`, `bounded-crystalline-g-torsor-triviality`, and `crystalline-monodromy-group-interface`. These supply the perfect-residue-field Colmez–Fontaine equivalence, bounded standard-fibre torsor triviality, and Serre–Sen openness. No second period ring, weak-admissibility category or general monodromy-group definition is introduced.
- **Slopes:** `VectorBundlesAndIsocrystals:VB0/dieudonne-manin-isocrystals` and `tensor-and-dual-slopes`. Supply the full rational slope decomposition, normalized standard blocks, and exact tensor/dual compatibility. The finite fibre functor below is a new arithmetic realization of those shared isocrystals.
- **Tensor categories:** `MotivesAndAlgebraicCycles:MC.6/neutral-tannaka-reconstruction` and `tensor-iso-torsor`. Supply the neutral reconstruction and fibre-isomorphism torsor; the objects and their morphisms are the shared ones.
- **Invariants and decent representatives:** `BunGAndNewtonStrata:BG0` and `BG1`. Use `decent-representative`, `existence-of-decent-representative`, `newton-and-kottwitz-maps`, `admissible-pair`, `galois-average`, and `z-extension-bounded-lifting`. The notation HN-irreducible abbreviates strict positivity in the coroot expansion fixed below; it does not introduce another global HN predicate.
- **Generic filtrations and highest weights:** `ReductiveGroupsPartIII:RG3.0/highest-weight-character-basis` supplies the split geometric starting point. The additional quasisplit contract belongs to the proposed local-generation continuation of reductive groups. For a characteristic-zero field k, quasisplit connected reductive G/k, a dominant cocharacter μ over a finite reflex extension E/k, and a rational representation V, its generic filtration is V∩⋂_{g∈G(E)}g Fil_μ(V_E). It consists of G-subrepresentations and agrees with V∩Fil_η at a topologically generic flag. On a k-isotypic highest-weight orbit O its threshold is the minimum of ⟨w_0 average(C),μ⟩ over all distinct Γ_E-orbits C⊆O. The contract must include Galois descent with multiplicities, transport to a common normal closure for nonnormal E/k, Frobenius transport of isotypic summands, and the criterion that highest weights annihilating all coroots factor through G/G_der. The arithmetic estimates below depend on this full contract; the split character basis alone does not supply it.
- **Algebraic structure and rational points:** the current `tauceti:TauCetiRoadmap/ReductiveGroups#layer-1-representations--comodules` supplies the shared representation dictionary. Its structure layer, `#layer-7-structure-theory`, supplies algebraic images, derived groups and rational cocharacter conjugacy. In particular, for a central torus quotient f:G_tilde→G and a closed subgroup J, f(J°)⊇G_der implies J°⊇G_tilde_der. To see the reduction, intersect with the inverse image of G_der: its connected image is reductive, its unipotent radical maps into a torus and is trivial, and its derived group maps centrally isogenously to G_der. The rational-point consequences needed from `ReductiveGroupsPartII:RG2.0` are Zariski density of nonempty analytic open subsets of connected smooth groups and openness on rational points of a characteristic-zero finite central isogeny. Rational surjectivity is not assumed.
- **Period points:** `HeckeStacksAndLocalShtukas:HS2/classical-period-points`, `admissible-period-torsor`, and `adjoint-period-and-tower-comparison` supply the classical Bialynicki–Birula dictionary and bounded adjoint comparison after reflex-field base change. Only part (b) of `nonemptiness-and-period-connectedness` is used in the forward proof: an acceptable bounded datum has an admissible point over a finite extension of its completed reflex field. Its independent nonemptiness proof precedes generic monodromy. General Hecke or shtuka objects are not rebuilt.
- **Smooth algebraic geometry:** `SchemeAndStackFoundations:SF.0` supplies determinantal rank loci and locally free universal filtration quotients, plus nonempty quasi-compact étale coordinates on a smooth variety, étale openness and base change, and the classification of quasi-compact étale schemes over a field as finite unions of finite separable spectra. The precise geometric inputs are Stacks Tags 054L, 02GL and 02GH.
- **Torsor topology:** `ArithmeticGaloisRepresentations:R01.1/continuous-representation` supplies continuity. `DiamondsAndVStacks:D3/locally-profinite-torsors`, `D6/etale-site-comparison`, `D5/limits-and-finite-stage-comparisons`, and `D0/spectral-components-profinite` supply the torsor and limit interfaces. The D5 restricted-quotient interface must additionally verify compact-coset clopen separation in this application. A conditional quotient theorem is not an unrestricted component formula.
- **The reverse geometric implication:** the GLX ADLV continuation must supply: for quasisplit G/Q_p and [b]∈B(G,μ), existence over finite K/breve Q_p of a crystalline representation of type (b,μ) with open derived intersection implies HN-irreducibility. This is only (4)⇒(3) of GLX Theorem 6.1(a), p. 845. Its proof through components and HN decomposition must be independent of the forward implication imported from this roadmap. The existing He21 dimension continuation does not provide this component theorem. Global transitivity on tower components is another explicit geometric input when applying the final stabilizer result to every component.

The independent Simpson correspondence, relative crystalline local-system theory and equivariant Fargues–Fontaine curve proofs have their own directions. They share the rational period inputs, but no target below requires those correspondences.

## Conventions

Fix a prime p, F=breve Q_p=Frac W(overline F_p), and a finite extension K/F. Write σ for the arithmetic Witt Frobenius and Q_{p^s} for the unramified degree-s subfield of F, with s>0. G is connected reductive over Q_p. For b∈G(F) and a filtration of type μ, the filtered-isocrystal functor sends ρ to (V⊗F,ρ(b)σ,Fil_μ). The filtration is decreasing and contains the μ-weight spaces of weight at least i in Fil^i. The Hodge degree is Σ_i i dim gr^i and the Newton degree uses v_p(det φ). Thus the covariant crystalline realization of Q_p(1) has φ=p^(-1)σ and filtration jump −1, while its cyclotomic Hodge–Tate weight in the parent convention is +1. This fixes the sign without identifying the two weight conventions.

Use the GLX period orientation: [b]∈B(G,μ) means κ(b)=μ^natural and ν_b≤μ^diamond. The Berkeley-oriented HS2 nodes are used with μ replaced by μ^(-1), including the Kottwitz sign. No minuscule hypothesis is silently added to their finite-classical-point dictionary.

An s-decent representative satisfies (bσ)^s=(sν_b)(p)σ^s, with exactly s factors on the left, and b,ν_b defined over Q_{p^s}. Increase s to make G_{Q_{p^s}} quasisplit, its splitting extension totally ramified, sν_b integral, and σ_0^s=1 on the chosen based root datum. The dominant Newton cocharacter is arranged by a translation defined over a finite algebraic coefficient field. An arbitrary translating element in G(F) need not preserve genericity over the original reflex field. Such translations are used only to transport the final period point.

For dominant μ and ν_b use one positive absolute root system Δ. HN-irreducibility means μ^diamond−ν_b=Σ_{α∈Δ}c_αα∨ with every c_α>0, together with [b]∈B(G,μ). For a torus Δ is empty and the derived group is trivial. Every average below is over a nonempty finite orbit, and every expression k/s uses s>0.

Write H for full Zariski monodromy and MT=H° for its identity component. The tensor group of the generated category is H. Its crystalline finite-field partner is also the full group. The period comparison is compatible with conjugation in the ambient G, which is stronger than a bare assertion that two groups are inner forms. A finite disconnected image illustrates why the full group cannot be silently replaced by MT. In the compact torsor application, G(Q_p) acts on the left, Γ_K acts by right multiplication through ξ, components are right cosets gC, and their stabilizers are gCg^(-1).

## Layer overview

| Layer | New mathematical output |
| --- | --- |
| GM0 | Decent arithmetic fibres, nonzero degree equations, coefficient-line tests and ambient comparison |
| GM1 | Weighted orbit, full-period Frobenius, Newton and strict-positive-coroot estimates |
| GM2 | Uniform subobject descent, generic admissibility and derived monodromy |
| GM3 | Infinite transcendence, actual generic classical flags, open-image points and central lifting |
| GM4 | Compact torsor components, ambient stabilizers and the quasisplit converse |

The short Lean companion contains the two light definitions `DegreeAt` and `frobeniusDegreeSum`, their directly usable signatures and sample calculations, and the finite rational positivity milestone `positive_sum_forces_zero`. The remaining declarations require the shared filtered-isocrystal, group-scheme or diamond carriers and retain their full mathematical signatures here.

## Layer 0: decent fibres and crystalline invariant lines

### The jump of a nonzero filtered vector

For a field K, a K-vector space V and a decreasing, exhaustive and separated integer filtration F, DegreeAt(F,v,d) means v ∈ F^d and v ∉ F^(d+1). Every nonzero v has a unique such integer. The predicate itself is defined for any family of submodules; existence and uniqueness require the filtration hypotheses. No integer degree is assigned to zero.

K is a field; V is a K-vector space. The filtration is bounded above and below for the existence assertion.

The source is [Gleason–Lim–Xu](https://link.springer.com/content/pdf/10.1007/s00222-025-01386-1.pdf), §5.1, equation (5.2), p. 836.

Define DegreeAt by membership and nonmembership in the existing Submodule carrier.

For v ≠ 0, the set of indices containing v is a nonempty proper lower subset of the integers; its largest member is the required jump. Antitonicity proves uniqueness.

The proposed declaration is `DegreeAt`.

Its usable interface consists of:

- `DegreeAt.mem`: DegreeAt(F,v,d) implies v ∈ F^d.
- `DegreeAt.not_mem_succ`: DegreeAt(F,v,d) implies v ∉ F^(d+1).
- `DegreeAt.unique`: For antitone F, DegreeAt(F,v,d) and DegreeAt(F,v,e) imply d=e.
- `DegreeAt.exists_of_nonzero`: For a bounded exhaustive filtration and v ≠ 0, there exists d with DegreeAt(F,v,d).
- `DegreeAt.smul`: Multiplication of v by a nonzero scalar preserves DegreeAt.

**Checks.**

- `degreeAt_rankOne`: For F^i=K when i≤a and F^i=0 otherwise, DegreeAt(F,1,a).
- `degreeAt_zero`: DegreeAt(F,0,a) is false for every F and a.
- `degreeAt_twoJumps`: For K e1 ⊕ K e2 with jumps 2 and -1, e1+e2 has degree -1; e1 has degree 2.
- `degreeAt_not_grading`: The preceding vector e1+e2 is not homogeneous, but still has a unique filtration degree.

### The full-period Frobenius degree sum

For a set X of nonzero vectors, a degree d:X→ℤ and a self-map φ:X→X, frobeniusDegreeSum(d,φ,s,v)=Σ_{0≤i<s} d(φ^i(v)). In the crystalline application X is the nonzero subtype of V⊗F, φ=ρ(b)σ is bijective, s>0 is a decency period, and d is the μ-filtration jump over K. The summands need not be equal.

s is a natural number; positivity is required only in the arithmetic application.

The source is [Gleason–Lim–Xu](https://link.springer.com/content/pdf/10.1007/s00222-025-01386-1.pdf), §5.1, equation (5.4), p. 837.

Take the finite sum over Finset.range s, using ordinary iteration.

Instantiate the nonzero subtype using bijectivity of the isocrystal Frobenius; extend vectors to K only to evaluate the filtration.

The proposed declaration is `frobeniusDegreeSum`.

Its usable interface consists of:

- `frobeniusDegreeSum_zero`: The sum for period zero equals 0.
- `frobeniusDegreeSum_one`: The sum for period one equals d(v).
- `frobeniusDegreeSum_succ`: The (s+1)-sum is the s-sum plus d(φ^s(v)).
- `frobeniusDegreeSum_map`: A map intertwining φ and ψ and preserving degrees preserves all full-period sums.

**Checks.**

- `degreeSum_zero`: A zero-length orbit has sum 0 for every degree function.
- `degreeSum_fixed`: For φ=id, the sum equals s·d(v).
- `degreeSum_unequalCycle`: For the involution of a two-element set with degrees 1,-1, the 2-sum is 0 at either element.
- `degreeSum_not_firstJump`: For that cycle starting at degree 1, the 2-sum is 0 and differs from 2 times its first jump.

### Vectors satisfying the Newton and Hodge equations

Fix an s-decent b, s>0, K/F finite, a filtration μ and a rational representation ρ:G→GL(V). For k∈ℤ let V^{s,k}_{b,μ} be the set of nonzero v∈V⊗Q_p Q_{p^s} for which ρ((sν_b)(p))v=p^k v and d_s(v)=k. This is a set, not a declared subspace. The Frobenius sum is computed in V⊗F, where F=breve Q_p.

b and ν_b descend to Q_{p^s}; sν_b is integral. All degree summands are evaluated on nonzero vectors using the μ-filtration over K.

The source is [Gleason–Lim–Xu](https://link.springer.com/content/pdf/10.1007/s00222-025-01386-1.pdf), §5.1, equations (5.3)–(5.5), pp. 836–837.

Use the imported decency identity to define the Newton operator on V⊗Q_{p^s}.

Intersect its nonzero p^k-eigenvectors with the level set k of the degree sum; do not close under addition.

The proposed declaration is `newtonHodgeVectors`.

Its usable interface consists of:

- `newtonHodgeVectors_mem`: Membership is equivalent to nonzero, the Newton eigenvalue equation, and the Hodge equality.
- `newtonHodgeVectors_smul`: Multiplication by Q_{p^s}^× preserves membership and the represented line.
- `newtonHodgeVectors_tensorMap`: A representation morphism preserving the filtered isocrystal sends a member to a member with the same k whenever its image is nonzero.

**Checks.**

- `newtonHodge_rankOne`: For φ=p^aσ and μ of weight h, a nonzero rational vector belongs to V^{s,k} exactly when k=sa=sh.
- `newtonHodge_zeroExcluded`: For the zero representation every V^{s,k} is empty.
- `newtonHodge_wrongHodge`: For φ=σ and a rank-one filtration of jump 1, every nonzero vector satisfies the k=0 Newton equation but none satisfies both equations.
- `newtonHodge_cyclicCoefficient`: For the coefficient object with jumps d_i and wrap p^k, its distinguished cyclic vector belongs exactly when Σ_i d_i=k.

### The finite decent-field crystalline fibre functor

On the full tensor subcategory of isocrystals whose slopes have denominators dividing s, define ω_s(N)=⊕_λ {x∈N_λ | φ^s(x)=p^{sλ}x}, a Q_{p^s}-vector space. This is an exact faithful tensor functor, with ω_s(N)⊗_{Q_{p^s}}F≅N. Restrict it to the subcategory C_{b,μ} generated by F_{b,μ}(Rep G), closed under subquotients. If b is s-decent, its composite with F_{b,μ} identifies canonically with V↦V⊗Q_{p^s}; hence the full group H_cris,s=Aut^⊗(ω_s|C_{b,μ}) embeds in G_{Q_{p^s}}.

s>0 clears the slopes of a faithful representation, and therefore all tensor constructions and subquotients. The unfiltered ω_s is constructed without any admissibility assumption. Only its restriction to the admissible generated category and the named tensor group require an admissible pair.

The source is [Chen](https://smf.emath.fr/system/files/2017-08/ens_ann-sc_47_723-764.pdf), §3.1, pp. 738–740; Definition 3.3.1 and Lemma 3.3.2, p. 742; [Gleason–Lim–Xu](https://link.springer.com/content/pdf/10.1007/s00222-025-01386-1.pdf), §5.1 ¶14, p. 836.

Apply Dieudonné–Manin to each slope summand and take its normalized φ^s-fixed vectors.

Use tensor/dual slope addition and the scalar-extension comparison to prove exactness, faithfulness and the tensor constraints.

Apply s-decency to the representations of G, then neutral Tannaka to the generated subcategory. Keep the full group; identity components are separate.

The proposed declaration is `decentCrystallineFibreFunctor`.

Its usable interface consists of:

- `decentCrystallineFibreFunctor_scalarExtension`: The natural scalar extension of ω_s(N) to F is the underlying isocrystal vector space N.
- `decentCrystallineFibreFunctor_tensor`: The canonical maps ω_s(N)⊗ω_s(M)→ω_s(N⊗M) and Q_{p^s}→ω_s(1) are isomorphisms with the tensor coherences.
- `decentCrystallineFibreFunctor_decent`: For s-decent b, ω_s(F_{b,μ}(V))≅V⊗Q_{p^s}, naturally in V and respecting tensors.
- `decentCrystallineFibreFunctor_subobject`: A filtered-isocrystal subobject induces the corresponding injective Q_{p^s}-linear map on fibres.

**Checks.**

- `decentFibre_unit`: ω_s(F,σ)=Q_{p^s}, with unit tensor constraint the identity.
- `decentFibre_slopeHalf`: The rank-two standard isocrystal of slope 1/2 has a two-dimensional ω_2-fibre over Q_{p^2}.
- `decentFibre_scalarRecovery`: For any standard block of slope a/h with h|s, extension of ω_s to F recovers that block, including its full rank.
- `decentFibre_not_naiveFixed`: For the rank-one object φ=pσ the unnormalized φ^s-fixed space is zero, while ω_s has dimension one.

### Rank-one coefficient objects and the degree equality

A rank-one object after scalar extension of the admissible filtered-isocrystal category to Q_{p^s} is represented, up to isomorphism, by integers d_0,…,d_{s-1}, k=Σ_i d_i, an F-basis e_0,…,e_{s-1}, φ(e_i)=e_{i+1} for i<s−1 and φ(e_{s−1})=p^k e_0, with coefficient a acting on e_i by σ^i(a), and filtration jump d_i on K e_i. Conversely these objects are weakly admissible. Inside F_{b,μ}(V)⊗Q_{p^s}, their fibre lines are precisely Q_{p^s}v for v∈V^{s,k}_{b,μ}, allowing all k.

K/F finite and s>0. The scalar-extension category includes the coefficient action, not just a larger ground field.

The source is [Chen](https://smf.emath.fr/system/files/2017-08/ens_ann-sc_47_723-764.pdf), §3.3, Lemma 3.3.5 and Proposition 3.3.6, pp. 744–745.

Decompose the coefficient action using Q_{p^s}⊗F≅F^s. Frobenius cycles its factors; normalize the wraparound scalar by rank-one isocrystal classification.

Each one-dimensional coefficient factor has one filtration jump. Total Hodge and Newton degrees are Σd_i and k.

For the converse, the maximal destabilizing subobject is stable under the coefficient field. A proper nonzero coefficient-stable φ-subobject cannot occur because Frobenius cycles the rank-one factors; hence total degree equality implies weak admissibility.

Identify a map into F_{b,μ}(V) by its first coefficient eigenvector. Strictness of morphisms gives jumps d_i=deg_μ(φ^iv); the two equations are exactly the existence criterion.

**Checks.**

- For s=1 this is t_H=t_N for an ordinary crystalline line.
- For s=2, jumps 1 and −1 with k=0 give a rank-one coefficient object; equality of individual jumps is not required.
- The same jumps with k=1 fail total degree equality.

### Chen’s invariant-line criterion for full monodromy

As closed subgroup schemes of G_{Q_{p^s}}, H_cris,s is the intersection, over all rational representations V, integers k and v∈V^{s,k}_{b,μ}, of the stabilizers of the lines Q_{p^s}v. Consequently any subgroup scheme acting trivially on every such vector is contained in H_cris,s. The stabilizer condition permits nontrivial scalar action on a line.

The admissible pair and finite fibre functor are those of GM0. The category is closed under subquotients. No connectedness is assumed.

The source is [Chen](https://smf.emath.fr/system/files/2017-08/ens_ann-sc_47_723-764.pdf), Proposition 3.3.4(1), pp. 743–744; Proposition 3.3.6, p. 745; [Gleason–Lim–Xu](https://link.springer.com/content/pdf/10.1007/s00222-025-01386-1.pdf), §5.1 ¶15, p. 837.

Every tensor automorphism preserves all rank-one coefficient subobjects, so it lies in the stated intersection.

For the reverse containment use Chevalley’s line-stabilizer theorem for H_cris,s over Q_{p^s}. Restrict scalars on its ambient representation and retain the coefficient action to realize this line in the scalar-extended generated category.

Apply rank-one coefficient objects and the degree equality to identify the defining line with one of the tested lines. Work functorially over value algebras, rather than equating only rational points.

**Checks.**

- For a torus, preserving a weight line does not require acting as the identity on it.
- A finite disconnected algebraic monodromy group is not replaced by the trivial identity component in this criterion.
- Use all representations; do not assume every representation embeds in a single mixed tensor power of a faithful one.

### Ambient period comparison and derived containment

Let H be the full Zariski closure of ξ_{b,μ}(Γ_K), and H_cris,s the full finite-field tensor group. The period Isom^⊗ torsor identifies H⊗B_cris and H_cris,s⊗B_cris by conjugation inside G_{B_cris}, compatibly with the standard fibres. Thus G_der,Q_{p^s}⊆H_cris,s implies G_der⊆H°, the parent Mumford–Tate group. The comparison is for full groups before passing to identity components.

[b]∈B(G,μ) and the bounded period-fibre torsor has the parent’s trivialization. Both groups use the same generated tensor category under crystalline comparison.

The source is [Chen](https://smf.emath.fr/system/files/2017-08/ens_ann-sc_47_723-764.pdf), Proposition 3.3.3 and proof, pp. 742–743; [Gleason–Lim–Xu](https://link.springer.com/content/pdf/10.1007/s00222-025-01386-1.pdf), §5.1 ¶14, p. 836.

Apply the period comparison isomorphism to all tensor objects and subquotients, producing the fibre-functor torsor and the full-group conjugation.

Its compatibility with the ambient standard G-fibres is essential: G_der is normal in G, so conjugation by the period element preserves it.

Containment descends along the faithfully flat coefficient extensions; connectedness of G_der then places it in H°. An abstract inner-form isomorphism by itself is insufficient.

**Checks.**

- Changing a chosen G-fibre trivialization conjugates both embedded groups.
- For G a torus the derived containment is vacuous; no assertion that H is connected is produced.

### Examples

For the rank-two coefficient object with s=2, φ(e_0)=e_1, φ(e_1)=e_0 and filtration jumps 1,−1, the distinguished vector has full-period degree 0 and Newton exponent k=0. The individual jumps differ. For a rank-one object φ=p^aσ with jump h, the two equations require k=sa and k=sh, so h=a. For Q_p(1), both are −1. A torus may act nontrivially by a character on a preserved line; the invariant-line test must allow that scalar action.

### Dependencies

The vector jump and Frobenius degree sum precede the coefficient-line criterion. The external interfaces used here are:

- `BunGAndNewtonStrata:BG0/decent-representative`.
- `MotivesAndAlgebraicCycles:MC.6/neutral-tannaka-reconstruction`.
- `MotivesAndAlgebraicCycles:MC.6/tensor-iso-torsor`.
- `PadicHodgeTheory:R06.2/bounded-crystalline-g-torsor-triviality`.
- `PadicHodgeTheory:R06.2/crystalline-g-fiber-functor`.
- `PadicHodgeTheory:R06.2/crystalline-monodromy-group-interface`.
- `PadicHodgeTheory:R06.2/filtered-isocrystal-harder-narasimhan`.
- `PadicHodgeTheory:R06.2/plan/weakly-admissible-category-abelian`.
- `VectorBundlesAndIsocrystals:VB0/dieudonne-manin-isocrystals`.
- `VectorBundlesAndIsocrystals:VB0/tensor-and-dual-slopes`.
- `mathlib:Submodule`.
- `tauceti:TauCetiRoadmap/ReductiveGroups#layer-1-representations--comodules`.

## Layer 1: lowest weights and strict Hodge–Newton estimates

### The corrected weighted orbit bound

Let k=Q_{p^s}, G_k be quasisplit and split over a finite totally ramified extension, and μ be dominant over its finite reflex extension E/k. For a nonzero v∈V_k, let O be any Γ_k-orbit of geometric highest weights occurring in v. Partition O into its distinct Γ_E-orbits C and put q_C=|C|^−1Σ_{λ∈C}λ. For a generic flag η, deg_η(v)≤m_O:=min_C⟨w_0q_C,μ⟩≤Σ_C(|C|/|O|)⟨w_0q_C,μ⟩=⟨w_0λ,bar μ⟩ for λ∈O, where bar μ is the inertia average. The component v_O itself has degree m_O.

Use the generic-filtration and quasisplit highest-weight contracts stated in Prerequisites and boundaries. Every geometrically occurring highest-weight component of v in O is nonzero by Galois descent. E/k is not assumed normal.

The source is [Gleason–Lim–Xu](https://link.springer.com/content/pdf/10.1007/s00222-025-01386-1.pdf), Proposition 5.7, pp. 840–841; equations (5.23)–(5.29), pp. 842–843.

Use the supplier’s generic-filtration identity on k-rational vectors and its isotypic threshold m_O. A vector may meet several isotypic components; its degree is the minimum of their thresholds.

A minimum is at most a convex average. Weight the distinct refined orbits by their sizes; this recombines to the uniform average on O.

Pairing equivariance identifies the full highest-weight orbit average with the inertia average of μ. The splitting field is totally ramified, so retain the residual unramified action for the full-period estimate.

**Checks.**

- For the nonnormal cubic reflex extension of a restriction-of-scalars torus, the refined orbit sizes are 1 and 2; the minimum sees both.
- With refined pairings 0 and 3 and sizes 1 and 2, the bound is 0≤2, not an unweighted average of 3/2.
- An orbit with repeated refinements is counted once in the partition, even for a Galois reflex field.

### The full-period Galois-average inequality

In the s-decent setup, choose s also so that G_{Q_{p^s}} is quasisplit, b and ν_b are defined there, the based root datum has σ_0^s=1, and the splitting extension is totally ramified. For generic η and every highest weight λ occurring in a nonzero v∈V⊗Q_{p^s}, d_s(v)≤s⟨w_0λ,μ^diamond⟩. Here μ^diamond=(1/s)Σ_{i=0}^{s−1}σ_0^i(bar μ), with repetitions permitted when s is enlarged.

Use a common finite normal closure for all weight/reflex embeddings. All iterates φ^iv are nonzero and their occurring highest-weight orbits are σ_0^i-translates of those of v.

The source is [Gleason–Lim–Xu](https://link.springer.com/content/pdf/10.1007/s00222-025-01386-1.pdf), Theorem 5.8 proof, equations (5.30)–(5.36), p. 843.

The factor ρ(b) preserves G-isotypic summands over Q_{p^s}; the semilinear Frobenius transports them by σ_0.

Apply the corrected weighted orbit bound to the transported λ at each iterate and sum.

Move σ_0 across the pairing using its inverse. Only after summing the entire s-period reindex inverse powers to positive powers and identify μ^diamond. This does not assert a termwise positive-power identity.

**Checks.**

- For period two with unequal individual jumps, only their sum is compared with the average.
- Enlarging a decency period by a positive multiple multiplies both sides by that multiple.

### The Newton lowest-weight inequality

Suppose ν_b is dominant and v∈V^{s,k}_{b,η}. Every torus weight χ with nonzero component in v has ⟨χ,ν_b⟩=k/s. For every geometric highest weight λ occurring in v one has ⟨w_0λ,ν_b⟩≤k/s.

s>0 and the Newton operator is ρ((sν_b)(p)). The dominant representative ν_b and the highest weights use the same positive roots.

The source is [Gleason–Lim–Xu](https://link.springer.com/content/pdf/10.1007/s00222-025-01386-1.pdf), Theorem 5.8 proof, equations (5.37)–(5.38), p. 844.

Extend to a splitting field and decompose v into torus-weight spaces. The p^k-eigenvalue equation forces p^{s⟨χ,ν_b⟩}=p^k on every nonzero component, hence equality of integral exponents.

The lowest weight w_0λ is below each weight χ in its highest-weight summand; pair their positive-root difference with dominant ν_b.

**Checks.**

- For GL_2 with dominant ν=(a,b), a≥b, the standard lowest weight has value b; every eigenvector has slope at least b.
- The zero vector would not determine any occurring weight; its exclusion is essential.

### Strict Hodge–Newton positivity kills derived weights

Let Δ be the absolute simple roots, ν≤μ^diamond dominant, and μ^diamond−ν=Σ_{α∈Δ}c_α α∨ with every c_α>0. If λ is dominant and ⟨w_0λ,ν⟩≤q≤⟨w_0λ,μ^diamond⟩, then ⟨λ,α∨⟩=0 for every α∈Δ. Every irreducible of highest weight λ therefore factors through G/G_der. For Δ empty the conclusion about the derived group is vacuous.

All pairings and coefficients are rational; no strict numerical hypothesis is dropped on a simple factor. The highest-weight representation is over a splitting field of characteristic zero.

The source is [Gleason–Lim–Xu](https://link.springer.com/content/pdf/10.1007/s00222-025-01386-1.pdf), End of the proof of Theorem 5.8(2), p. 844.

Antidominance gives a_α:=⟨w_0λ,α∨⟩≤0. The displayed sandwich gives 0≤Σ c_α a_α≤0. Strict positivity of the coefficients forces every a_α=0.

Apply w_0 to the coroot system and use the supplier’s highest-weight criterion for a representation trivial on the derived group.

**Checks.**

- For SL_2, c>0 and an antidominant nonzero weight give a strict negative pairing, contradicting the sandwich.
- If a simple-coroot coefficient is zero, a noncentral weight on that factor need not vanish.
- The compact Lean milestone checks the finite positive-sum argument over rational numbers.

### Examples

For a refinement with two orbits of sizes 1 and 2 and respective pairings 0 and 3, the minimum is 0 and the full average is 2. An equal-weight average of the two refined pieces would give 3/2 and is not the orbit average. In root system A_1, a strict coefficient c>0 and an antidominant value a≤0 give ca=0 only when a=0. Setting c=0 destroys that conclusion.

### Dependencies

Internal inputs are the definitions and coefficient-line results of GM0. The external interfaces used here are:

- `BunGAndNewtonStrata:BG0/decent-representative`.
- `BunGAndNewtonStrata:BG1/admissible-pair`.
- `BunGAndNewtonStrata:BG1/galois-average`.
- `BunGAndNewtonStrata:BG1/newton-and-kottwitz-maps`.
- `ReductiveGroupsPartIII:RG3.0/highest-weight-character-basis`.

The generic-filtration and descent contract in Prerequisites and boundaries is required for the derived-monodromy branch.

## Layer 2: generic admissibility and derived monodromy

### Uniform decent-field descent of isocrystal subobjects

For s-decent b and a rational representation V, every φ-stable F-subspace D′⊆V⊗F is the scalar extension of a Q_{p^s}-subspace of ω_s(V⊗F)=V⊗Q_{p^s}. The descended subspace is stable under ρ(b)σ and under the slope decomposition. In particular every subobject used to test weak admissibility is defined over one common finite coefficient field Q_{p^s}, independent of D′.

s>0 clears the slopes and b,ν_b descend to Q_{p^s}.

The source is [Chen](https://smf.emath.fr/system/files/2017-08/ens_ann-sc_47_723-764.pdf), §3.1, pp. 738–740, and proof of Theorem 5.0.6(1), pp. 750–751.

Apply the exact finite-field fibre functor to the subisocrystal D′. Its inclusion gives a Q_{p^s}-subspace of the standard fibre.

The scalar-recovery isomorphism recovers D′. Functoriality of the slope decomposition and φ shows stability; no countable enumeration of subobjects is used.

**Checks.**

- For b=1, a φ-stable line is generated by a Q_p-rational vector.
- For a slope a/h block with h|s, descent retains its rank and slope rather than replacing it by a rank-one space.

### Generic flags minimize subobject Hodge degree

Let E/Q_p be finite and contain Q_{p^s}, b and the reflex data. For a fixed descended subisocrystal D′, the function x↦t_H(D′_K,Fil_x∩D′_K) on the flag variety Fl_μ/E is upper semicontinuous. Thus if η maps to the generic point, its value is at most the value at any geometric flag x. The total Hodge degree of the ambient representation is constant.

D′ has constant rank and is defined over E. Fil_x is the universal bounded decreasing filtration of type μ. Hodge degree means Σ_i i·dim gr^i; Newton degree uses v_p(det φ).

The source is [Chen](https://smf.emath.fr/system/files/2017-08/ens_ann-sc_47_723-764.pdf), Proof of Theorem 5.0.6(1), pp. 750–751; [Gleason–Lim–Xu](https://link.springer.com/content/pdf/10.1007/s00222-025-01386-1.pdf), Theorem 5.8(1) proof, p. 842.

Choose uniform bounds A≤i≤B for the filtration jumps. Express t_H as A·rank(D′)+Σ_{i=A+1}^B dim(D′∩Fil_x^i).

Each intersection dimension is upper semicontinuous by determinantal rank loci for the map D′⊗O→(V⊗O)/Fil^i. The finite sum is therefore upper semicontinuous.

An upper closed rank locus containing the generic point contains the integral flag variety; the value there is minimal. Fixed μ fixes the ambient graded ranks.

**Checks.**

- For a filtered plane with jumps 1,0, a fixed line has Hodge degree 1 on its incidence point and 0 on the generic complement.
- For the whole plane the Hodge degree remains 1.

### Generic acceptable decent pairs are admissible

Let G/Q_p be connected reductive, b∈G(F) decent, [b]∈B(G,μ), K/F finite, and η:Spec K→Fl_μ map to the generic point over the finite reflex field. Then F_{b,η} takes every rational representation to a weakly admissible filtered isocrystal, and hence to an admissible one. This assertion needs no HN-irreducibility.

F=breve Q_p and K contains the reflex field; use the GLX orientation κ(b)=μ^natural and ν_b≤μ^diamond. Genericity persists under the required finite algebraic coefficient extensions.

The source is [Gleason–Lim–Xu](https://link.springer.com/content/pdf/10.1007/s00222-025-01386-1.pdf), Theorem 5.8(1) and proof, p. 842; [Chen](https://smf.emath.fr/system/files/2017-08/ens_ann-sc_47_723-764.pdf), Theorem 5.0.6(1), pp. 750–751.

Choose a common finite E containing the decency field and reflex data. Descend all subisocrystals using uniform decent-field descent of isocrystal subobjects.

Import only part (b) of HS2/nonemptiness-and-period-connectedness, after changing the Berkeley sign by μ↦μ^−1. Its finite classical admissible point is obtained from bounded nonemptiness and does not use this generic-monodromy theorem. Apply HS2/classical-period-points to obtain a weakly admissible flag x.

For each representation and each φ-subobject D′, the Hodge-degree specialization inequality gives t_H,η(D′)≤t_H,x(D′)≤t_N(D′). Total equality follows from the fixed Hodge type and admissible-pair invariants. This handles all subobjects without an infinite-intersection argument.

Apply the parent’s perfect-residue-field weakly-admissible/admissible equivalence. The conclusion is the exact tensor functor, not yet a chosen trivialization of the standard-fibre torsor.

**Checks.**

- For a torus there are no flag-incidence variations; total degree equality controls the rank-one cases.
- An unstable nongeneric filtered plane can fail weak admissibility even with the correct total degree.
- The proof has no edge from the GM4 converse or from an ADLV component classification.

### Generic monodromy contains the derived group

Let (b,η) be a generic acceptable decent pair as above, and suppose μ^diamond−ν_b has strictly positive coefficients on all absolute simple coroots. Then the connected Mumford–Tate group MT(b,η)=H° contains G_der. The theorem holds for arbitrary connected reductive G/Q_p, including ramified and nonquasisplit groups.

b is decent; [b]∈B(G,μ); η is topologically generic over the reflex field. Fix an enlarged decency period and compatible dominant Newton point as in the estimates. Use the full generic-filtration and descent contract stated in Prerequisites and boundaries.

The source is [Gleason–Lim–Xu](https://link.springer.com/content/pdf/10.1007/s00222-025-01386-1.pdf), Theorem 5.8(2) and proof, pp. 842–844.

Prove generic admissibility before constructing the coefficient-line category. Enlarge s so G_{Q_{p^s}} is quasisplit, its splitting extension is totally ramified and all slope/root periods divide s.

Arrange the dominant Newton cocharacter by conjugation defined over a finite algebraic coefficient field. This preserves genericity. Do not claim that arbitrary G(F)-translation preserves a generic flag over the original reflex field.

For every v∈V^{s,k}, the full-period Galois-average inequality and the Newton lowest-weight inequality give the sandwich at q=k/s for each occurring λ. The strict Hodge–Newton positivity argument makes each corresponding geometric summand trivial on G_der, so G_der fixes v.

Apply Chen’s invariant-line criterion for full monodromy to obtain G_der⊆H_cris,s. The ambient period comparison then gives G_der⊆H° over Q_p.

**Checks.**

- For G=GL_2 and a strictly interior Newton polygon, the connected group contains SL_2.
- For a torus the conclusion says 1⊆MT and adds no spurious claim about central monodromy.
- If the HN difference vanishes on one simple factor, this argument gives no full derived containment on that factor.

### Examples

Take G=GL_2, μ=(1,0) and b=diag(p,1). If Fil^1 is the slope-zero line, that subobject has t_H=1 and t_N=0, so the flag is not weakly admissible although the ambient total degrees agree. Moving the flag to its generic point makes that fixed line have Hodge degree 0. For the basic slope-(1/2,1/2) isocrystal, μ−ν=(1/2)α∨ is strictly positive. The standard representation has no tested coefficient line with Newton exponent 1 and full-period Hodge sum 0; the general representation argument yields SL_2 inside monodromy.

### Dependencies

Internal inputs are the preceding layers in the order displayed above. The external interfaces used here are:

- `BunGAndNewtonStrata:BG0/decent-representative`.
- `BunGAndNewtonStrata:BG0/existence-of-decent-representative`.
- `BunGAndNewtonStrata:BG1/admissible-pair`.
- `HeckeStacksAndLocalShtukas:HS2/classical-period-points`.
- `HeckeStacksAndLocalShtukas:HS2/nonemptiness-and-period-connectedness`.
- `PadicHodgeTheory:R06.2/crystalline-g-fiber-functor`.
- `PadicHodgeTheory:R06.2/plan/weak-admissibility`.
- `PadicHodgeTheory:R06.2/weak-admissibility-is-admissibility`.
- `ReductiveGroupsPartIII:RG3.0/highest-weight-character-basis`.
- `SchemeAndStackFoundations:SF.0`.
- `VectorBundlesAndIsocrystals:VB0/dieudonne-manin-isocrystals`.

The generic-filtration and descent contract in Prerequisites and boundaries is required for the derived-monodromy branch.

## Layer 3: finite-extension period points and central lifting

### The leading sparse Witt-coordinate term

Work in the universal p-typical Witt vectors over F_p[X_i,Y_{k,j}], with A_m=Σ_{j≥r}V^j[Y_{m,j}], A_k=Σ_{j≥0}V^j[Y_{k,j}] for k<m, and X=Σ_{i≥0}V^i[X_i]. Write Σ_{k=0}^m A_k X^k=Σ_{n≥0}V^n[P_n], with m>0. For b≤n<bm+r, deg_{X_b}P_n<m p^{n−b}; at n=bm+r its degree is m p^{n−b}, with leading coefficient Y_{m,r}^{p^{bm}}. For n<b the polynomial is independent of X_b.

p is prime; r,b are natural numbers. The degree of zero is treated as minus infinity. These are Witt coordinates, not coefficients of an ordinary power series.

The source is [Chen](https://smf.emath.fr/system/files/2017-08/ens_ann-sc_47_723-764.pdf), Lemma 2.0.4 and proof, pp. 735–737.

Lift universal Witt operations to integer polynomial coordinates and apply the n-th ghost polynomial.

Induct on n. Terms from lower Witt coordinates have strictly smaller X_b-degree; at n=bm+r only the leading coefficient of A_m and the m-th power of the b-th variable contribute to the extremal degree.

Reduce the ghost identity modulo p^{n+1}, divide its p^n term, and then reduce modulo p. Keep the factor m outside the exponent: the degree is m·p^{n−b}.

**Checks.**

- For b=r=0, the extremal degree is m and the leading coefficient is Y_{m,0}.
- For m=1, r=0, X=V^b[u] and A_1=[a], the b-th coordinate is a^{p^b}u.
- The expression m p^{n−b} must not be parsed as p^{n−bm}.

### Infinite transcendence of the completed unramified field

For every prime p, F=Frac W(overline F_p)=breve Q_p has infinite transcendence degree over Q_p. Equivalently it contains an algebraically independent sequence indexed by ℕ over Q_p. For every finite E/Q_p embedded in an algebraic closure of F, the finite extension FE/F still contains arbitrarily large finite families algebraically independent over E.

Use the canonical embedding Q_p→F from the complete unramified Witt construction. The assertion concerns Q_p, not merely Q.

The source is [Chen](https://smf.emath.fr/system/files/2017-08/ens_ann-sc_47_723-764.pdf), Proposition 2.0.3 and its proof, pp. 734–735; Lemma 2.0.4, pp. 735–737.

Following Chen, choose Witt vectors x_i supported at factorial digit positions. At a supported position b, use a residue digit of finite-field degree growing like (b^{i+1})!, while previous vectors and earlier digits lie in fields of much smaller degree.

Assume a polynomial relation for x_i over Z_p[x_0,…,x_{i−1}], after clearing coefficient denominators. Let r be the first nonzero Witt digit of its leading coefficient and m its degree. Choose a supported b with no later support through n=bm+r.

Choose a common finite-field degree M for the earlier digits and all coefficient digits through n. Require the new residue degree N to exceed M·m·p^{n−b}; the factorial growth permits this stronger bound, including the factor p^r.

Apply the leading sparse Witt-coordinate estimate: the n-th output digit is a nonzero polynomial of degree m p^{n−b} over F_{p^M} in an element of degree greater than that bound. This contradicts the relation.

Induct to obtain the sequence. Algebraic base extension from Q_p to E does not change transcendence degree, giving the final assertion.

**Checks.**

- A single vector with unbounded residue-field degrees is transcendental, but this alone does not prove a sequence is algebraically independent.
- For every fixed flag dimension n, only n independent parameters are needed.

### Generic flags over finite extensions of breve Q_p

For a finite reflex field E/Q_p and its smooth geometrically integral flag variety Fl_μ/E, there is a finite extension K/F containing E and a map Spec K→Fl_μ whose underlying point is generic. More generally the same assertion holds for a nonempty smooth geometrically integral E-variety.

F=breve Q_p; the embedding E→K is part of the conclusion. Choose a nonempty affine open and a quasi-compact étale coordinate chart of relative dimension n.

The source is [Gleason–Lim–Xu](https://link.springer.com/content/pdf/10.1007/s00222-025-01386-1.pdf), Lemma 5.10 and proof, pp. 844–845; [Stacks](https://stacks.math.columbia.edu), Tags 054L (Lemma 29.37.21), 02GL (Lemma 29.37.7), and 02GH (§29.37).

Pass to FE/F finite. Infinite-transcendence supplies n algebraically independent parameters over E, giving a map Spec FE→A_E^n landing at the generic point.

The image of a nonempty étale coordinate chart is open and contains that generic point. Its pullback is therefore a nonempty quasi-compact étale FE-scheme.

By the field-fibre classification it is a finite disjoint union of spectra of finite separable extensions of FE. Choose one component, with field K. An étale coordinate map preserves the required generic point.

For dimension zero the nonempty integral chart is already finite separable; the argument also covers a torus flag, which is a point.

**Checks.**

- A projective-line flag acquires a point with transcendental affine coordinate over E.
- A zero-dimensional flag needs no transcendental parameter.
- A merely dense collection of closed points would not give the topologically generic point required by GM2.

### A crystalline period point with open derived image

Let (G,b,μ) be a local shtuka datum in GLX orientation, with [b]∈B(G,μ) and μ^diamond−ν_b strictly positive on every absolute simple coroot. There are a finite extension K/F containing the reflex field and x∈Gr_μ^b(K) whose crystalline representation ξ_x:Γ_K→G(Q_p) satisfies ξ_x(Γ_K)∩G_der(Q_p) open in G_der(Q_p). No minuscule or quasisplit hypothesis is required.

G is connected reductive over Q_p; F=breve Q_p. The monodromy theorem uses the full generic-filtration contract stated in Prerequisites and boundaries.

The source is [Gleason–Lim–Xu](https://link.springer.com/content/pdf/10.1007/s00222-025-01386-1.pdf), Proposition 5.9 and proof, p. 844; Theorem 5.2, p. 836.

Replace b by a σ-conjugate decent representative using BG0 and choose a common decency/coefficient field. This replacement is used to construct an open-image point, not to assert arbitrary F-translations preserve genericity.

Use infinite transcendence, étale coordinates and generic admissibility to obtain a generic admissible filtration for the decent datum. The bounded parent torsor-triviality theorem produces ξ after choosing its standard-fibre point.

The derived-monodromy theorem gives G_der⊆MT. The parent crystalline-monodromy-group-interface supplies Serre–Sen openness in MT; intersect its open subgroup with G_der(Q_p).

Use HS2/classical-period-points, with the explicit GLX/Berkeley sign dictionary, to lift the admissible flag to the Schubert-cell period point. Transport it back along σ-conjugacy to the original b.

**Checks.**

- The image is compact; openness concerns its intersection with G_der, not equality with a noncompact group.
- After any finite extension of K, the restricted image has finite index in the original image and its derived intersection remains open.
- For a torus the derived group is trivial and the open-intersection assertion is automatic.

### Open derived image through a z-extension

Let f:G_tilde→G be a z-extension with central induced-torus kernel. Fix bounded lifted data [b_tilde]∈B(G_tilde,μ_tilde) mapping to [b]∈B(G,μ). Existence of a crystalline period point of this type with open intersection of its Galois image with the rational derived group is equivalent upstairs and downstairs, allowing a finite extension containing the lifted reflex field. This compares existence for the specified lifted data, not arbitrary continuous representations.

Use the common admissible Grassmannian after base change of reflex fields. The derived morphism G_tilde_der→G_der is a finite central isogeny. It is not asserted surjective on Q_p-points.

The source is [Gleason–Lim–Xu](https://link.springer.com/content/pdf/10.1007/s00222-025-01386-1.pdf), Proposition 6.7, crystalline step, p. 851; Proposition 6.6(1), pp. 849–850.

The HS2 adjoint period comparison identifies the admissible loci and the extension-of-structure-group torsors. Therefore a downstairs point lifts after finite reflex-field base extension, and the corresponding crystalline representations satisfy f∘ξ_tilde=ξ|Γ_L up to conjugacy.

Let H_tilde and H be full algebraic monodromy groups. Their connected groups satisfy f(H_tilde°)=H° by density and closedness of homomorphism images. An open subgroup of a connected reductive group’s Q_p-points is Zariski dense.

If f(ξ_tilde(Γ_L)) has open derived intersection, H° contains G_der. The algebraic central-lifting contract then forces H_tilde° to contain G_tilde_der. Apply the parent Serre–Sen theorem to ξ_tilde, giving an open derived intersection upstairs.

Conversely the image of an upstairs open derived subgroup is open downstairs because a finite central isogeny in characteristic zero is étale on rational points. Restriction to a finite extension preserves openness by finite index.

**Checks.**

- For SL_2→PGL_2, the rational image is open of finite index; its possible properness does not obstruct openness.
- For G_tilde=G×G_m, a central character can change the lift; the conclusion concerns its derived intersection rather than containment of the entire image in G_tilde_der.

### Examples

A projective-line flag requires one parameter transcendental over its reflex field, not a limit of rational closed points. A torus flag has dimension zero and requires no such parameter. For the central isogeny SL_2→PGL_2, the rational-point image can be a proper open subgroup. For G×G_m→G a lift may carry an extra central character; openness must be tested on intersection with the derived factor.

### Dependencies

Internal inputs are the preceding layers in the order displayed above. The external interfaces used here are:

- `BunGAndNewtonStrata:BG0/existence-of-decent-representative`.
- `BunGAndNewtonStrata:BG1/z-extension-bounded-lifting`.
- `HeckeStacksAndLocalShtukas:HS2/adjoint-period-and-tower-comparison`.
- `HeckeStacksAndLocalShtukas:HS2/admissible-period-torsor`.
- `HeckeStacksAndLocalShtukas:HS2/classical-period-points`.
- `PadicHodgeTheory:R06.2/bounded-crystalline-g-torsor-triviality`.
- `PadicHodgeTheory:R06.2/crystalline-monodromy-group-interface`.
- `PadicHodgeTheory:R06.2/period-functors-perfect-residue-base`.
- `ReductiveGroupsPartII:RG2.0`.
- `SchemeAndStackFoundations:SF.0`.
- `mathlib:AlgebraicIndependent`.
- `mathlib:WittVector.ghostComponent`.
- `mathlib:WittVector.teichmuller`.
- `mathlib:WittVector.verschiebung`.
- `tauceti:TauCetiRoadmap/ReductiveGroups#layer-7-structure-theory`.

The generic-filtration and descent contract in Prerequisites and boundaries is required for the derived-monodromy branch.

## Layer 4: compact torsor stabilizers and the quasisplit converse

### Compact crystalline-image torsor components

Let ξ:Γ_K→G(Q_p) be continuous, K/F finite, and let T_ξ→Spd K be its associated locally profinite G(Q_p)-torsor. Put C=ξ(Γ_K), a compact closed subgroup. Choose the convention in which G(Q_p) acts on the geometric fibre on the left and Γ_K acts by right multiplication through ξ. Then π_0(T_ξ)≅G(Q_p)/C equivariantly, and the component indexed by gC has stabilizer gCg^−1. This identifies actual connected components, not an unrestricted orbit quotient for an arbitrary group action.

G(Q_p) has its locally compact totally disconnected point topology. Use the étale/Galois classification over the analytic field K and its diamond.

The source is [Gleason–Lim–Xu](https://link.springer.com/content/pdf/10.1007/s00222-025-01386-1.pdf), Proof of Lemma 6.12, pp. 855–856.

Compactness of Γ_K makes C compact and closed. Each geometric Galois orbit gC is compact and descends to a closed subdiamond T_{gC}.

Present C as an inverse limit of finite transitive Γ_K-sets C/U. Their descended finite étale K-covers are connected fields. The qcqs inverse-limit comparison and the spectral clopen criterion show T_{gC} is connected.

Use compactness of C and compact open subgroups of G(Q_p) to separate distinct cosets by C-invariant clopens. Their descended clopens separate distinct orbit subdiamonds, so every T_{gC} is a maximal connected subset.

Compute the left-action stabilizer of gC. No use is made of a universal formula π_0(X/H)=π_0(X)/H.

**Checks.**

- If ξ is trivial, each component is one copy of Spd K and its stabilizer is trivial.
- For finite image C, each orbit descends to a finite connected étale K-cover with stabilizer C.
- For an infinite compact image, approximate by finite transitive quotients; declaring geometric fibre points to be components would give an incorrect trivial stabilizer.

### Open derived stabilizers in the ambient tower

Let y∈Gr_μ^b(K) be a crystalline period point with open derived image, T_y its period torsor and j:T_y→Y a G(Q_p)-equivariant map to a locally spatial diamond. Every connected component of Y containing the image of a component of T_y has stabilizer whose intersection with G_der(Q_p) is open. If G(Q_p) acts transitively on π_0(Y), the assertion holds for every component.

K/F finite; all groups and actions have the conventions of compact crystalline-image torsor components. For application to the whole local-shtuka tower, transitivity is a separate geometric supplier assumption.

The source is [Gleason–Lim–Xu](https://link.springer.com/content/pdf/10.1007/s00222-025-01386-1.pdf), Lemma 6.12 and its proof, pp. 855–856.

A continuous map sends a connected component into a connected component. Equivariance includes the source component stabilizer in the target component stabilizer.

Use the compact torsor component theorem to identify the source stabilizer with a conjugate of ξ_y(Γ_K). Its derived intersection is open by the chosen period point and normality of G_der.

Under the stated transitivity hypothesis every component is a translate of one reached in this way; conjugate the inclusion. Do not infer transitivity merely from connectedness of a quotient.

**Checks.**

- The source stabilizer is equal to the compact image, while the ambient stabilizer is only asserted to contain it.
- Without transitivity, the conclusion is restricted to components reached from the torsor.

### The quasisplit converse as a component-theorem consumer

Let G/Q_p be quasisplit, [b]∈B(G,μ), and η an admissible flag over a finite extension K/F for which the standard crystalline-fibre torsor is trivialized. If MT(b,η) contains G_der, then μ^diamond−ν_b is strictly positive on every absolute simple coroot. In particular, for a generic decent pair, derived containment is equivalent to HN-irreducibility using the reverse geometric implication stated in Prerequisites and boundaries.

The reverse implication (4)⇒(3) of GLX Theorem 6.1(a), with full hypotheses, is the independent component/HN-decomposition contract stated in Prerequisites and boundaries. No quasisplit converse is claimed for arbitrary inner forms.

The source is [Gleason–Lim–Xu](https://link.springer.com/content/pdf/10.1007/s00222-025-01386-1.pdf), Proposition 5.11, p. 845; Theorem 6.1(a), equivalence of (3) and (4), p. 845.

Apply the parent’s crystalline-monodromy-group-interface to obtain an open intersection ξ(Γ_K)∩G_der(Q_p). No new genericity choice is needed for this implication.

Invoke only the reverse component/HN supplier (existence of such a crystalline representation ⇒ HN-irreducibility). Its proof may use the component argument, HN decomposition and group generation, but must not invoke this converse or the forward generic theorem as a prerequisite of the reverse implication.

Combine with the derived-monodromy theorem to state the final equivalence for generic decent pairs. The forward proof remains entirely in GM0–GM3.

**Checks.**

- The dependency graph has no edge from GM0–GM3 back to GM4.
- For a torus the simple-root set is empty; both the derived condition and strict-coroot condition are vacuous.

### Examples

If ξ is trivial, the torsor is a product with the locally profinite fibre and every component stabilizer is trivial. If its image C is finite, a C-orbit descends to a finite connected field cover and its stabilizer is C. Infinite compact C is recovered from finite transitive quotients and can give a nontrivial stabilizer even though each geometric fibre point is separate. For an ambient component, only inclusion of this source stabilizer is asserted; equality would be an extra claim.

### Dependencies

Internal inputs are the preceding layers in the order displayed above. The external interfaces used here are:

- `ArithmeticGaloisRepresentations:R01.1/continuous-representation`.
- `DiamondsAndVStacks:D0/spectral-components-profinite`.
- `DiamondsAndVStacks:D3/locally-profinite-torsors`.
- `DiamondsAndVStacks:D5`.
- `DiamondsAndVStacks:D5/limits-and-finite-stage-comparisons`.
- `DiamondsAndVStacks:D6/etale-site-comparison`.
- `HeckeStacksAndLocalShtukas:HS2/admissible-period-torsor`.
- `PadicHodgeTheory:R06.2/crystalline-monodromy-group-interface`.
- `ReductiveGroupsPartII:RG2.0/points-topological-group`.

The reverse geometric contract is used only by the final converse. The ambient stabilizer theorem requires transitivity only for its assertion about every component.

## Downstream consumers

The crystalline period point with open derived image is the arithmetic input to the GLX connected-component argument for local shtuka towers and affine Deligne–Lusztig varieties. The compact torsor theorem identifies the subgroup that stabilizes a component in a period fibre, and its equivariant application embeds that subgroup in an ambient stabilizer. Those statements do not provide the separate global transitivity, normalizer or isotropic-generation arguments of the component classification.

The final converse imports only the reverse geometric implication; it does not make that implication a prerequisite of generic admissibility, the weighted estimates or the construction of the open-image point. In the quasisplit case it completes the equivalence between strict HN positivity and generic derived monodromy. No converse is asserted for arbitrary inner forms.

## References

- Ian Gleason, Dong Gyu Lim and Yujie Xu, [The connected components of affine Deligne–Lusztig varieties](https://doi.org/10.1007/s00222-025-01386-1), Inventiones mathematicae 243 (2026), 805–861. The locators above use the published text, not an older arXiv pagination.
- Miaofen Chen, [Composantes connexes géométriques de la tour des espaces de modules de groupes p-divisibles](https://smf.emath.fr/system/files/2017-08/ens_ann-sc_47_723-764.pdf), Annales scientifiques de l’École normale supérieure (4) 47 (2014), 723–764. The coefficient-line and sparse-Witt arguments above are stated with the full tensor group and the strengthened residue-degree bound.
- The Stacks Project, [Tag 054L](https://stacks.math.columbia.edu/tag/054L), [Tag 02GL](https://stacks.math.columbia.edu/tag/02GL), and [Tag 02GH](https://stacks.math.columbia.edu/tag/02GH), for smooth étale coordinates and their field fibres.
