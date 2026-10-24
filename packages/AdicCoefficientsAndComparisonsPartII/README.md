# Roadmap: adic coefficients and comparison with schemes, part II — prime-to-degree alterations

**Summary.** This Part II develops alterations with prescribed prime support in their generic degrees. Starting from the scheme and valuation foundations, unrestricted alterations, arbitrary-rank ramification and logarithmic geometry, it builds pointed Riemann–Zariski spaces, tame distillation for fields and schemes, functorial monoidal resolution, stable modification of non-proper relative curves, and degree-controlled desingularization of schemes and morphisms. The end results are Temkin’s char(X)-alterations and desingularization of morphisms, Gabber’s prime-to-ℓ alterations over fields and one-dimensional bases, the prime-to-ℓ variety form used by Jannsen, and the odd-degree model form used by Dittmann–Pop. The projective threefold form carries the precise projective-resolvability requirement of §PA.0.12 (temkin17, Theorems 1.2.5, 1.2.9 and 4.3.1, pp. 99–100 and 123–124; temkin17 lines 108, 149, 1078; ilo14, X Theorems 2.1 and 2.4, pp. 149–152; ilo14 lines 6790, 6985).

A degree prime to ℓ makes the degree scalar invertible on ℓ-primary coefficients; in cohomology theories with restriction and trace whose composite is multiplication by that degree, pullback is consequently injective. This is the application of the degree condition, with the trace identity supplied by the cohomology theory (jannsen16, Theorem 2.11 and its application, p. 24, jannsen16 line 1052; dp23, proof of Proposition 3.4, pp. 8–9, dp23 line 374).

## Scope and ownership

AdicCoefficientsAndComparisons Layer L5 uses alterations in scheme–v-sheaf comparison and does not control their prime support. This Part II owns that extension. Its layers own the noetherian, potentially reducible alteration predicate and prime-degree refinements; pseudo-projectivity and non-separated Chow; finite-type flattening beyond the proper case; support-valued snc boundaries and universal projective resolvability; pointed Riemann–Zariski geometry including non-dominant points; valuation loci and field and alteration distillation, with separable variants; log regular pairs and normalized monoidal blow-up comparisons; the functorial monoidal theorem and inertia specializing extensions of Gabber modification; non-proper multipointed stable modification; and the final alteration theorems.

The following subjects have their own owners and are consumed here.

- SchemeAndStackFoundations §§0.9, 0.16–0.21 supplies scheme limits, noetherian approximation, catenarity, excellence and finite normalization. Its §§4.11–4.20 supplies modifications, strict transforms, proper flattening, separated Chow, regularity, integral alterations, strict normal crossings divisors and de Jong’s field and trait theorems. The alteration and boundary notions here extend those integral/divisor carriers to reducible schemes and reduced supports; their integral and divisor specializations use the supplied objects.
- Normalization in a finite function-field extension is Mathlib’s relative normalization, with finiteness from SchemeAndStackFoundations §0.20. No normalization construction or second normal-scheme carrier is a target here.
- LocalFieldsRamificationPartII GF.0–GF.6 supplies prime-supported integers and extensions, henselization, arbitrary-rank tame and unramified extensions, their tower and base-change laws, and both full and separable prime-supported closed-field tameness. The pointwise tameness export is consumed there; this roadmap owns its compact-set globalization.
- CrystallineCohomology CR.5:log-algebra.1–4 supplies monoids, log structures, charts, fs fibre products, log smoothness, log regularity and logarithmic Abhyankar. The closed-subset log structure contract below extends its divisorial interface. This roadmap’s pair retains its exact boundary, rather than merely a chosen fs log structure.
- LefschetzPencilsAndVanishingCycles §0.10 supplies logarithmic group actions, very tameness, very tame quotients, log blow-ups, regular log resolution and the separated absolute and relative Gabber modification theorems. Those targets are not reconstructed here. PA.4 adds normalized blow-up comparison, functoriality on monoidally smooth maps and the inertia specializing non-separated variants.
- ClassicalAdicEtaleCohomology §2.4 supplies the affine Zariski–Riemann model-limit presentation. PA.1 compares its space with the pointed locally ringed limit, including centres and stalks.
- Tau Ceti supplies the valuation spectrum and its patch compactness, and affine invariant quotients. StableReduction Layer 3 supplies proper semistable pointed curves; PA.5 retains non-proper curves and stability relative to the modification, with ordered markings only after an étale splitting.

The de Jong equivariant field theorem in PA.6 includes the group surjection, purely inseparable invariant extension and G-strict projective compactification, beyond the non-equivariant field theorem of SchemeAndStackFoundations §4.19. The arithmetic theorem there is over a global-field Dedekind base, beyond its §4.20 trait theorem.

## Conventions

Schemes in desingularization statements are noetherian; pointed Riemann–Zariski geometry permits qcqs schemes. A maximal point means the generic point of an irreducible component. An alteration is proper, surjective, maximally dominating and finite over the scheme of generic points. Generic degrees are the positive degrees of the residue extensions at maximal source points. A P-number is a positive integer supported on P; in particular 1 is a P-number and 0 is not. An ℓ′-alteration has all these degrees prime to the prime ℓ. For integral schemes, a degree-one alteration is a modification; this equivalence does not identify arbitrary nonreduced degree-one alterations with modifications (temkin17 §4.1, p. 121, temkin17 line 970; ilo14 X §3.3.1, p. 158, ilo14 line 7288).

Residue characteristic zero contributes no element to char(X). For Spec Z_(2) the set is {2}, and for Spec Q it is empty. The empty scheme also has empty set of residue primes. Universal resolvability requires projective resolving alterations and the exact reduced inverse image of the prescribed nowhere dense subset to be snc. A closed snc support is empty or the reduced support of a strict normal crossings divisor; arbitrary subsets of that support need not be divisors (ilo14 X §3.3.3, p. 159, ilo14 line 7304).

Valuations are Krull valuations, recorded as valuation subrings, with arbitrary rank and trivial valuations included. A valuative point records its centre. Field restriction has direction Val_L → Val_K, O ↦ O ∩ K; for Z[i]_(1+i), restriction is Z_(2). For additive valuations the Artin–Schreier equation u^p − u = t⁻¹ with v(t) = 1 has v(u) = −1/p. Tameness includes separability after henselization; e and residue degree alone do not exclude defect (temkin17 §§2.3, 3.1.5 and 3.2, pp. 105–106 and 114–118, temkin17 lines 686, 772; LocalFieldsRamificationPartII GF.1–GF.2).

Log structures are étale fs log structures unless a fine or non-fs structure is explicitly specified. For a reduced scheme X and nowhere dense closed Z with j : U → X its complement, the boundary log structure is O_X ∩ j_*O_U×; it need not be fine. At a coordinate crossing xy = 0 the characteristic monoid is ℕ². For a trait with uniformizer π and model xy = π, the base chart ℕ → ℕ² sends 1 to (1,1); the total boundary is V(xy), while the horizontal boundary is empty. Unit coordinates have exponent group ℤ^ν and branch coordinates monoid ℕ^μ; their ranks are not interchanged (ilo14 VI §1 and X §2.6, pp. 69–70 and 155, ilo14 lines 3050, 7085).

All diagrams and field embeddings live in fixed universes, enlarged for small indexing categories of models when necessary. Composita are taken in a specified common algebraic closure. Degrees are finite-dimensional field degrees, never the totalized zero value of an infinite-dimensional finrank. No separability is added to the odd-degree model theorem. Locators for ilo14 use arXiv:1207.3648v1 internal pages; temkin10 uses arXiv:0707.3953v3; temkin17 uses the published Annals pages.

## Exact supplier contracts

### From Mathlib

Use `AlgebraicGeometry.Scheme` and `AlgebraicGeometry.Scheme.residueField` (Mathlib/AlgebraicGeometry/ResidueField.lean), `ringChar`, `Module.finrank`, `Nat.primeFactors`, `Algebra.IsSeparable`, `IsGalois` and `IsPurelyInseparable` for residue characteristics and finite generic degrees. The scheme predicates are `AlgebraicGeometry.IsNoetherian`, `AlgebraicGeometry.IsProper`, `AlgebraicGeometry.IsFinite`, `AlgebraicGeometry.IsDominant`, `AlgebraicGeometry.IsOpenImmersion`, `AlgebraicGeometry.IsSeparated`, `AlgebraicGeometry.Flat` and `AlgebraicGeometry.Etale`. IsNoetherian includes local noetherianness and compactness, but does not supply separatedness. Keep that distinction on non-separated bases.

Use `AlgebraicGeometry.Scheme.Hom.normalization`, `AlgebraicGeometry.Scheme.Hom.toNormalization`, `AlgebraicGeometry.Scheme.Hom.fromNormalization` and `AlgebraicGeometry.Scheme.Hom.normalizationObjIso` in Mathlib/AlgebraicGeometry/Normalization.lean for relative normalization and its affine integral-closure comparison. For Spec L → X with X integral and L finite over k(X), denote this object by Nor_L(X). Its function field is L, it is normal, and inclusions of finite extensions and compatible modifications induce maps of normalizations. For X normal, `Nor_{k(X)}(X)` → X is an isomorphism; finiteness uses the Nagata contract below (stacks, tag 0AVK; temkin17 §3.3.3, p. 119, temkin17 line 895).

**Checks.**

- `Nor_{Q(i)}(Spec Z)` is Spec Z[i]; the generic degree is 2, not 1.
- Normalization of Spec k[t²,t³] in k(t) is Spec k[t]; its degree is 1 although the schemes differ.
- Over F_p, normalization in F_p(t^(1/p)) is Spec F_p[t^(1/p)] of degree p; inseparable extensions are included.
- A non-Japanese DVR can have nonfinite normalization in a finite inseparable extension; finiteness cannot be inferred from normality of the DVR alone (SchemeAndStackFoundations §0.22).

The normalization API in this contract includes normality, the marked function-field identification, maps along compatible field inclusions and modifications, and the identity comparison for a normal base; all are used on this same relative-normalization object.

Use `ValuationSubring`, `LocalSubring.exists_le_valuationSubring`, `WithConstructibleTopology` and `compactSpace_withConstructibleTopology` for valuative centres and compactness. The last instance requires a compact, quasi-sober, quasi-separated prespectral space, not an arbitrary topological space (Mathlib/Topology/Spectral/ConstructibleTopology.lean). Use `AlgebraicGeometry.IsProper.eq_valuativeCriterion`, `AlgebraicGeometry.IsSeparated.valuativeCriterion`, `AlgebraicGeometry.Flat.generalizingMap`, `AlgebraicGeometry.isOpenMap_of_generalizingMap` and `AlgebraicGeometry.Scheme.Hom.isConstructible_image` with their quasi-compactness, finite-presentation and target hypotheses. Use `Algebra.IsEtaleAt.exists_isStandardEtale` in Mathlib/RingTheory/Unramified/LocalStructure.lean on a finitely presented algebra étale at the chosen prime; first choose that finite-presentation neighborhood inside the essentially étale valuation-ring extension, and retain the subsequent minimal-polynomial argument. `MulAction.stabilizer` supplies point stabilizers; the residue-field kernel is additional geometric data.

### From Tau Ceti

`TauCeti.ValuationSpectrum` in TauCeti/AlgebraicGeometry/AdicSpace/ValuationSpectrum/Basic.lean is the carrier of valuative relations; `TauCeti.ValuationSpectrum.comap`, `TauCeti.ValuationSpectrum.comap_comp` and `TauCeti.ValuationSpectrum.continuous_comap` provide restriction and its continuity. `TauCeti.ValuationSpectrum.patchTopology` and `TauCeti.ValuationSpectrum.compactSpace_patchTopology` in TauCeti/AlgebraicGeometry/AdicSpace/PatchPresentation.lean provide constructible compactness. Over a field the comparison with valuation subrings is used with its full arbitrary-rank carrier.

`TauCeti.AffineInvariantQuotient.quotient` and `TauCeti.AffineInvariantQuotient.projection` in TauCeti/AlgebraicGeometry/Quotient/Affine.lean give Spec A^G and Spec A → Spec A^G. The finite-group module TauCeti/AlgebraicGeometry/Quotient/FiniteGroup/Affine.lean supplies integral and surjective projection, `TauCeti.AffineInvariantQuotient.projection_eq_iff_exists_smul`, and `TauCeti.AffineInvariantQuotient.isFinite_projection` under finite type over the invariant subring. Its `TauCeti.AffineInvariantQuotient.isFinite_projection_of_finiteType` permits finite type over an invariant base. An arbitrary noetherian ring with finite-group action is not substituted for that finite-type hypothesis.

### From TauCetiRoadmap.SchemeAndStackFoundations

Consume §0.9, limits, noetherian approximation and finite-presentation descent; §§0.16–0.18, regular implies Cohen–Macaulay implies universally catenary; §0.20, Japanese, universally Japanese and Nagata rings and finite normalization in every finite function-field extension; §0.21, quasi-excellent and excellent schemes and quasi-excellent implies Nagata. In §0.20 the Nagata predicate includes noetherianness; universally Japanese alone does not. The regular local rings obtained in PA.0 are therefore excellent when quasi-excellent.

What SchemeAndStackFoundations must provide (gap:finite-type-fp-factorization): Every finite-type quasi-separated morphism X → S with S qcqs factors as a closed immersion X → X₀ followed by a finitely presented morphism X₀ → S, with the factorization compatible with restricting the quasi-compact flat finitely presented locus needed in the flattening argument.

Consume §1.17 finite-group quotients for projective schemes over noetherian bases. Consume §§4.11–4.12 modifications, strict transforms with their dense-open witness, generic flatness, proper flattening by admissible blow-up, domination of modifications and separated Chow. Consume §4.13 regular schemes, curve resolution and Bertini; §§4.16–4.17 integral alterations, their function-field maps and generic degrees, SNC data and passage to subfamilies of components; §§4.18–4.20 split nodal curve families, their resolution and de Jong’s field and trait alteration theorems. The two generalizations in PA.0 keep finite-type, quasi-separated flattening and non-separated Chow at their full stated generality.

### From TauCetiRoadmap.LocalFieldsRamificationPartII

Consume GF.0, prime-supported positive degrees, algebraic extensions, P-closed and separably P-closed fields and maximal P-extensions; GF.1, valued henselization and tensor decomposition by prolongations; GF.2, unramified/tame extensions after henselization, the valuation-ring étale criterion, tower and compositum laws and the separable tame tower under perfection; GF.6, general tameness and the full and separable prime-supported closed-field exports. Full P-closedness implies tameness of every algebraic extension at residue primes in P, and algebraic extensions of that field retain this tameness; separable P-closedness gives only the finite separable conclusion (temkin17 Lemma 3.2.5 and Remark 3.2.6, p. 116, temkin17 line 796).

What LocalFieldsRamificationPartII must provide (gap:maximal-separable-p-extension): Every separable P-extension inside a fixed separable closure is contained in a maximal separable P-extension whose top field is separably P-closed, with every finite subextension separable of P-number degree.

**Checks.**

- For P empty, the maximal separable P-extension is K and the local degree is 1.
- For a separably closed imperfect field K of characteristic 2, adjoining t^(1/2) has degree 2 and is not tame, although every finite separable extension of K is trivial; the separable export cannot assert full tameness.
- For a p-closed field of characteristic p, every algebraic extension is tame; for F_q the extension F_(q^p)/F_q has degree p, so the p-closed hypothesis fails.

### From TauCetiRoadmap.CrystallineCohomology

Consume CR.5:log-algebra.1–4: étale log structures, fine/saturated monoids, characteristic monoids and charts, Kummer morphisms, fs fibre products and saturation, Kato’s log smooth chart criterion, divisorial structures, log regularity, preservation of log regularity under log smooth morphisms, and logarithmic Abhyankar for finite tame covers of a regular SNC pair. The chart criterion retains invertibility of the torsion in the group cokernel. In PA.5, ℕ → ℕ², 1 ↦ (1,1), has cokernel ℤ; replacing it by 1 ↦ (p,p) gives torsion ℤ/p and fails in residue characteristic p.

What CrystallineCohomology must provide (gap:closed-subset-log-structure): For a reduced locally noetherian X and nowhere dense closed Z with complement j : U → X, O_X ∩ j_*O_U× is a log structure, agrees with the supplied divisorial structure for regular SNC pairs, and recovers every log regular fs structure from its triviality locus, including injectivity into O_X.

This contract includes the non-fine boundary structure of the cusp, rather than extending the fs divisorial carrier by assumption (ilo14 VI §1.4 and X §3.2.1, pp. 69 and 158, ilo14 lines 3070, 7271; temkin17 §1.2.7, pp. 99–100, temkin17 line 117).

### From TauCetiRoadmap.LefschetzPencilsAndVanishingCycles

Consume §0.10, the logarithmic action and quotient construction, the very tame quotient theorem, separated absolute and relative Gabber modification and regular log blow-up resolution. An action is very tame at a geometric point when inertia has invertible order, acts trivially on its characteristic monoid, and acts trivially on its strict-local logarithmic stratum. The quotient of an admissible generically free very tame action on a log regular fs scheme is fs log regular and the projection is Kummer étale. The quotient log sheaf is the invariant direct image. The supplied Gabber construction enlarges the boundary to the inverse image of the old boundary and the nonfree locus; its map to the original log scheme need not be log smooth (ilo14 VI §3, VIII Theorem 1.1, X Theorem 1.1, pp. 73–75, 85–86 and 135–136, ilo14 lines 3263, 3681, 6117).

What LefschetzPencilsAndVanishingCycles must provide (gap:very-tame-local-quotient): The §0.10 very tame quotient identifies the invariant log sheaf, has abelian inertia of residue-invertible order and standard Kummer étale strict-local charts, and the very tame locus in a log regular fs scheme is open, compatibly with localization of its Gabber modification.

The fine log blow-up of a coherent log ideal I is universal among maps on which its pullback becomes invertible; its saturated form is the fs saturation. Both maps have source the appropriate blow-up log scheme and target (X, M). The unit ideal and every invertible log ideal give the identity (ilo14 VIII §§3.3.7–3.3.11, pp. 107–108, ilo14 line 4761).

What LefschetzPencilsAndVanishingCycles must provide (gap:log-blowup-universal-property): The log blow-up carrier of §0.10 has the universal property for making a coherent log ideal invertible, and its fs saturation supplies the saturated log blow-up on the same shared log-scheme carrier.

The action API consumed here includes pointwise and global very tameness, implication to tameness, openness of its locus and the stated abelian-inertia conclusion with admissibility and generic freeness (ilo14 VI Theorem 3.2, Corollary 3.3, Proposition 3.5 and Corollary 3.6, pp. 73–75, ilo14 lines 3279, 3290).

**Checks.**

- For the sign action on A²_k with char k ≠ 2 and trivial log structure, inertia at 0 has order 2 and the characteristic monoid is 0, but its action on the whole strict-local surface is nontrivial. The action is tame and not very tame.
- With axes boundary the same action is very tame: at 0 the characteristic is ℕ² and the stratum is a point. Its quotient is (Spec k[u,v,w]/(uw−v²), V(v)), with u = x², v = xy and w = y², and the covering is Kummer étale of group Z/2.
- The trivial group acts very tamely on every fs log scheme, and its quotient is the original log scheme.
- Conjugation on Spec Z₂[i] at the closed log point has inertia order 2 in residue characteristic 2, so it is not very tame.

### From TauCetiRoadmap.ClassicalAdicEtaleCohomology

Consume §2.4, normal models and Zariski–Riemann vanishing, specifically its homeomorphism of the locus of valuation rings of K containing s(A) with the cofiltered limit of integral projective A-models pointed dominantly by Spec K. The centre maps and the spectral topology are part of the contract; its cohomological vanishing theorem is not an input to PA.1.

### From TauCetiRoadmap.StableReduction

Consume Layer 3, proper prestable, semistable and stable pointed curves, the relative dualizing sheaf and the fibrewise ampleness criterion for the stable pointed case. PA.5 uses this after splitting the finite étale marking and only on proper contracted fibres; an identity modification of an unmarked P¹ is permitted despite dualizing degree −2.

### From TauCetiRoadmap.AdicCoefficientsAndComparisons

Consume Layer L2’s compactification refinements on the shared scheme geometry and its §3 supplier contracts. Noetherian approximation and spreading out come directly from SchemeAndStackFoundations §0.9. The alterations in its Layer L5 provide the boundary with this Part II’s degree-controlled geometry, not a source of it.

## How to read the build

PA.0 fixes degrees, boundaries and universal projective resolvability. PA.1 supplies the compact valuative spaces. PA.2 globalizes local tameness on compact valuation sets, and PA.3 passes from fields to alterations. PA.4 compares monoidal and scheme modifications and extends the supplied Gabber construction. PA.5 constructs stable models of relative curves and resolves them with prime-supported base changes. PA.6 uses simultaneous induction on relative dimension to obtain the morphism theorem and inheritance of resolvability, then its absolute, prime-to-ℓ and odd-degree consequences. The perfect-field separable assertion is proved in that same induction; it is not deduced by discarding inseparability afterwards.

## Layer PA.0: Degree-controlled alterations and universal resolvability

### PA.0.1 Residue characteristics of a scheme

For a scheme X, char(X) is the set of prime numbers p for which some point x ∈ X has residue field κ(x) of characteristic p. Equivalently p ∈ char(X) exactly when p is not a unit of Γ(X, O_X), that is when p is not invertible on X. Residue characteristic zero contributes nothing, so char(X) = ∅ exactly when X is a Q-scheme.

Work under these precise hypotheses: X is an arbitrary scheme; no noetherian hypothesis is needed for the definition.

The API records the following facts.

- char(X) ⊆ ℕ, the set of primes p with ringChar κ(x) = p for some x ∈ X.
- For p prime: p ∈ char(X) ⇔ the image of p in Γ(X, O_X) is not a unit.
- char(X) = ∅ ⇔ every prime is a unit of Γ(X, O_X), that is, X is a Q-scheme.
- For any morphism f : X → Y, char(X) ⊆ char(Y), since κ(f(x)) → κ(x) is a field extension.
- If f : X → Y is surjective then char(X) = char(Y).
- For an open U ⊆ X, char(U) ⊆ char(X).
- char(Spec k) = {char k} when char k > 0 and ∅ when char k = 0.
- For f : X → S dominant of finite type with S noetherian, char(S) ∖ char(X) is finite.

One proof route is as follows. Define char(X) := {p prime : ∃ x ∈ X, ringChar κ(x) = p}, with κ(x) Mathlib's residue field of the scheme at x. For the unit characterisation: p maps to zero in κ(x) exactly when p lies in the maximal ideal of `O_{X,x}`; a global section is a unit exactly when it is a unit in every stalk. For the finiteness statement: if f : X → S is dominant of finite type with S noetherian, its image is constructible (Chevalley) and contains the generic points, hence a dense open U. A prime p with S_p ⊆ S ∖ U is detected by a codimension-one point of an irreducible component T of S of characteristic zero (Krull's principal ideal theorem applied to p on T), or p is the characteristic of a component; S ∖ U has finitely many such points, so char(S) ∖ char(X) is finite (Temkin §4.3.2).

(temkin17, §1.2.1, p. 98; §2.1.1, p. 103 (temkin17 line 71); temkin17, §4.3.2, p. 124 (temkin17 line 1107).)

**Checks.**

- char(Spec Q) = ∅. This excludes inserting 0 into the prime set.
- char(Spec Z_(2)) = {2}. The characteristic of the generic field is 0, so generic characteristic alone gives the wrong set.
- char(Spec Z) is the set of all primes. A singleton obtained from the generic point misses every closed fibre.
- char(Spec Z[1/6]) is the set of primes p ≥ 5; in particular it is not determined by the characteristic of the generic point, which is 0. Invertibility excludes 2 and 3 separately.
- char(∅) = ∅. The empty scheme has no witnessing point.
- char(Spec F_p[t]) = {p}. Adjoining a variable does not add residue primes.

char(Spec Q) = ∅ and char(Spec Z_(2)) = {2} (the two examples printed in Temkin §2.1.1), and char(Spec Z) is the set of all primes. For f : X → Y, char(X) ⊆ char(Y); equality holds when f is surjective.

*Needs:* Mathlib `AlgebraicGeometry.Scheme.residueField`; Mathlib `ringChar`; Mathlib `Nat.primeFactors`; Mathlib `AlgebraicGeometry.Scheme.Hom.isConstructible_image`.

### PA.0.2 Maximal points and maximally dominating morphisms

Let S be a noetherian scheme with maximal points (generic points of irreducible components) η_1, …, η_n. The scheme of generic points is η_S := ⊔_i Spec κ(η_i). A morphism f : X → S of noetherian schemes is maximally dominating if it maps every maximal point of X to a maximal point of S; equivalently, the generic fibre X ×_S η_S is dense in X.

Work under these precise hypotheses: S and X noetherian (so that they have finitely many maximal points).

The API records the following facts.

- x is a maximal point: the closure of {x} is an irreducible component of X.
- Maximal domination means that every maximal source point maps to a maximal target point.
- For noetherian X and S, maximal domination is equivalent to density of the generic fibre in X.
- Composites of maximally dominating morphisms are maximally dominating.
- A dense open immersion is maximally dominating.
- If X and S are irreducible, maximal domination is equivalent to Mathlib’s dominance predicate; for reducible S an irreducible source can dominate one component without being dominant onto S.
- The restriction to an open subscheme of X is maximally dominating.

One proof route is as follows. Define maximal points as generic points of irreducible components (Mathlib's irreducible components and generic points of irreducible closed subsets). Equivalence with density of X ×_S η_S: the maximal points of X lying over maximal points of S are exactly the maximal points of the generic fibre. The generic fibre is stable under generization in X, and a generization-stable subset of a noetherian space is dense exactly when it contains every maximal point (an arbitrary dense subset, such as the set of closed points of A^1_k, need not contain one).

(temkin17, §4.1.1, pp. 120–121 (temkin17 line 970); ilo14, Exposé X, §2 opening paragraph, arXiv v1 p. 148 (citing Exposé II 1.1.2) (ilo14 line 1150).)

**Checks.**

- 𝔾_m → A^1_k is maximally dominating. The generic point survives despite missing the origin.
- Spec k → A^1_k at the origin is not maximally dominating. Its sole maximal point maps to a nonmaximal point.
- A^1_k ⊔ Spec k → A^1_k (extra point to the origin) is surjective and dominant but not maximally dominating. Dominance alone admits the extra vertical component.
- The identity of a noetherian scheme is maximally dominating, and so is ∅ → S. The empty source tests the universal quantifier over maximal points.

The inclusion of a dense open subscheme is maximally dominating. X = A^1_k ⊔ Spec k → A^1_k, mapping the extra point to the origin, is dominant and surjective but not maximally dominating.

*Needs:* Mathlib `AlgebraicGeometry.IsDominant`; Mathlib `AlgebraicGeometry.IsNoetherian`.

### PA.0.3 Alterations of noetherian schemes

A morphism f : X → S of noetherian schemes is an alteration if it is proper, surjective, maximally dominating and generically finite, the last meaning that X ×_S η_S → η_S is finite. For X and S integral this is the alteration of SchemeAndStackFoundations §4.16 (proper, dominant, finite over a nonempty open).

Work under these precise hypotheses: X, S noetherian.

The API records the following facts.

- The alteration predicate is the conjunction of properness, surjectivity, maximal domination and finiteness over the generic-point scheme.
- For X, S integral noetherian: The noetherian alteration predicate agrees with the supplied integral alteration predicate.
- A composite of alterations is an alteration.
- For S quasi-excellent noetherian, Nor(S_red) → S is an alteration.
- X_red → X is an alteration.
- A modification of integral noetherian schemes is an alteration.

One proof route is as follows. Use the stated conjunction to define the alteration predicate. Comparison with the integral case: for X, S integral, a proper dominant morphism is surjective; finiteness of the generic fibre spreads out to finiteness over a nonempty open (limits, SchemeAndStackFoundations §0.9), and conversely. Normalization example: if S is quasi-excellent, it is Nagata (SchemeAndStackFoundations §0.20, Excellence.IsQuasiExcellentRing.isNagata), so the normalization of S_red is finite, hence proper and surjective, and it is an isomorphism over the generic points.

(temkin17, §4.1.2, p. 121 (temkin17 line 976); ilo14, Exposé X, §3.3.1, arXiv v1 p. 158 (ilo14 line 7288).)

**Checks.**

- Spec k[t] → Spec k[t², t³] is an alteration of generic degree 1. Birationality permits changing the local ring.
- The absolute Frobenius of `A^1_{F_p}` is an alteration of generic degree p. Generic finiteness does not imply separability.
- P^1_k → Spec k is not an alteration (its generic fibre is not finite). Properness and surjectivity do not imply generic finiteness.
- A^1_k ⊔ Spec k → A^1_k is proper on each piece and surjective but not an alteration: it is not maximally dominating. Generic degree alone fails to exclude a vertical component.
- The identity of a noetherian scheme is an alteration. The degree is 1 on each component.

For a quasi-excellent noetherian S, the normalization of S_red is an alteration (Temkin §4.1.2). P^1_k → Spec k is proper and surjective but not an alteration.

*Needs:* Mathlib `AlgebraicGeometry.IsProper`; Mathlib `AlgebraicGeometry.IsFinite`; §PA.0.2; TauCetiRoadmap.SchemeAndStackFoundations §§0.9, 0.16–0.21; TauCetiRoadmap.SchemeAndStackFoundations §§4.11–4.20.

### PA.0.4 P-alterations, ℓ′-alterations and separable alterations

Let f : X → S be an alteration and P a set of primes. For a maximal point x of X the generic degree is deg_x f := [κ(x) : κ(f(x))]. Then f is a P-alteration if every deg_x f is a P-number (every prime divisor lies in P; LocalFieldsRamificationPartII GF.0), an ℓ′-alteration if it is a P-alteration for P = {ℓ}′ (all degrees prime to ℓ), and separable if every κ(x)/κ(f(x)) is separable. For X and S integral there is one degree, [k(X) : k(S)].

Work under these precise hypotheses: f is an alteration of noetherian schemes; P is any set of prime numbers (possibly empty or all primes).

The API records the following facts.

- For a maximal point x of X, deg_x f = finrank κ(f(x)) κ(x) ∈ `ℕ_{>0}`.
- A P-alteration is an alteration whose generic degrees are positive P-numbers.
- If f : X → Y and g : Y → S are P-alterations, so is g ∘ f.
- P ⊆ P′ and f a P-alteration ⇒ f a P′-alteration.
- For integral X, S: f is a ∅-alteration ⇔ f is a modification.
- A separable alteration is an alteration for which every residue extension at a maximal source point is separable.
- Composites of separable alterations are separable.
- f is an ℓ′-alteration ⇔ ℓ does not divide any deg_x f.
- Every alteration is a P-alteration for P the set of all primes.

One proof route is as follows. Define the generic degrees from the finite residue extensions at maximal points (finiteness: the generic fibre is finite). Composition: maximal points map to maximal points and residue degrees multiply in towers, so a composite of P-alterations is a P-alteration (P-numbers are closed under products, GF.0). Degree one at every maximal point, for integral X and S, is SchemeAndStackFoundations' criterion for a modification.

(temkin17, §1.2.1, p. 98 (temkin17 line 71); ilo14, Exposé X, §2 opening paragraph, arXiv v1 p. 148; §3.3.1, p. 158 (ilo14 line 6790).)

**Checks.**

- Frobenius of `A^1_{F_p}` is a {p}-alteration, not separable, and not a p′-alteration. For p = 2 and 3 the degrees are 2 and 3, respectively.
- Spec Z[i] → Spec Z is a separable {2}-alteration and a 3′-alteration. Generic separability does not assert étaleness at 2.
- The identity of a noetherian scheme is a ∅-alteration (degree 1 has no prime factors); conversely a ∅-alteration of integral schemes has generic degree 1. Positive degree 1 has empty prime support; degree 0 is excluded.
- Spec Z[i] → Spec Z is not a ∅-alteration: its degree is 2. The degree is 2 rather than 1.
- t ↦ t² on A^1_Q is an alteration of degree 2 that is not a char(A^1_Q)-alteration, since char(A^1_Q) = ∅. Separability alone does not give the required prime support.
- Every alteration is a P-alteration when P is the set of all primes. There is still a positive finite degree at each generic point.

The absolute Frobenius of `A^1_{F_p}` is a {p}-alteration that is not separable. For P = ∅ a P-alteration of integral schemes is a modification. For X a Q-scheme, char(X) = ∅, so a char(X)-alteration of an integral X has degree 1.

*Needs:* §PA.0.3; TauCetiRoadmap.LocalFieldsRamificationPartII GF.0/prime-supported-degree; Mathlib `Algebra.IsSeparable`; Mathlib `Nat.primeFactors`.

### PA.0.5 Pseudo-projective morphisms

A finite-type morphism f : X → S is pseudo-projective if it factors as X → X̄ → S where X̄ → S is projective and X → X̄ is a local isomorphism (X has an open cover on whose members X → X̄ restricts to open immersions). For separated f this is quasi-projectivity, and for proper f projectivity.

Work under these precise hypotheses: f of finite type; S quasi-compact and quasi-separated.

The API records the following facts.

- Pseudo-projectivity consists of a factorization f = g ∘ h with h a local isomorphism and g projective.
- Quasi-projective morphisms are pseudo-projective.
- For separated f: pseudo-projective ⇔ quasi-projective; for proper f: ⇔ projective.
- Pseudo-projectivity is stable under base change.
- Composition does not preserve pseudo-projectivity: the blow-up example of ILO X 3.1.7(i).

One proof route is as follows. Define the property by the existence of the factorisation. If f = g ∘ h is separated, then h : X → X̄ is separated, of finite type and étale (a local isomorphism), hence quasi-finite. By Zariski’s main theorem (stacks, tag 05K0, More on Morphisms line 6247) h factors as a quasi-compact open immersion into a scheme T finite over X̄; T → X̄ → S is projective over the qcqs S, so f is quasi-projective. A separated local isomorphism need not be an open immersion (two disjoint copies of an open subscheme of X̄ map to X̄), so this step cannot use the open-immersion criterion of ILO X 3.1.9, which needs an open embedding on a dense open. If f is moreover proper, the image of X in T is also closed, so X is open and closed in a scheme projective over S and f is projective (ILO X Remark 3.1.7(ii)).

(ilo14, Exposé X, §3.1.6 and Remark 3.1.7, arXiv v1 p. 157 (ilo14 line 7223); temkin17, §4.2, p. 121 (temkin17 line 992).)

**Checks.**

- An open subscheme of P^n_S is pseudo-projective over S. The factorization uses the given open immersion.
- The affine plane with doubled origin over k, mapped by its two charts into P^2_k, is pseudo-projective over k. A local isomorphism need not be a globally injective open immersion.
- Blowing up one origin of the doubled-origin plane gives a scheme that is not pseudo-projective over k: two k-maps from the spectrum of the DVR at the exceptional curve's generic point agree generically but differ at the closed point. This also tests failure under composition.
- The identity S → S is pseudo-projective. The factorization has two identity arrows.

The affine plane with doubled origin is pseudo-projective over k, but its blow-up at one of the origins is not (ILO X 3.1.7(i)). A separated pseudo-projective morphism is quasi-projective.

*Needs:* Mathlib `AlgebraicGeometry.IsOpenImmersion`; Mathlib `AlgebraicGeometry.IsSeparated`; TauCetiRoadmap.SchemeAndStackFoundations §§0.9, 0.16–0.21.

### PA.0.6 Flattening of finite-type morphisms by admissible blow-ups

Let S be quasi-compact and quasi-separated and U ⊆ S a quasi-compact open. (i) If f : X → S is of finite type and quasi-separated and X_U → U is flat and locally of finite presentation, there is a U-admissible blow-up S′ → S (centre disjoint from U, cut out by a finite-type ideal) such that the strict transform of X is flat and of finite presentation over S′ (Stacks 081R). (ii) If X is quasi-compact and locally of finite presentation over S and F is a quasi-coherent O_X-module of finite type with F_U of finite presentation and flat over U, there is a U-admissible blow-up S′ → S such that the strict transform of F is of finite presentation and flat over S′ (Stacks 0815). For noetherian integral S and dense U, (i) extends SchemeAndStackFoundations' flattening_by_blowup from proper to arbitrary finite-type f.

Work under these precise hypotheses: S qcqs; U ⊆ S quasi-compact open; in (i) f of finite type and quasi-separated with X_U → U flat and locally of finite presentation; in (ii) X quasi-compact and locally of finite presentation over S, F of finite type with F_U flat and of finite presentation.

One proof route is as follows. (ii) is the module flattening theorem in the precise form of Stacks 0815. For separated f, (i) reduces to (ii) through a closed immersion of X into a separated finitely presented S-scheme and noetherian approximation (SchemeAndStackFoundations §0.9); Stacks 081R treats quasi-separated finite-type f directly. The blow-ups are U-admissible and are descended from the local constructions; no finite presentation of f itself is needed in (i), only over U. Strict transforms along modifications are those of SchemeAndStackFoundations §4.11; generic flatness (§4.12) gives the dense U when S is integral (Stacks 052A).

(stacks, Tag 081R (Lemma 38.31.1) and Tag 0815 (Theorem 38.30.7) (stacks, More on Flatness, lines 4197 and 4250); temkin17, proof of Lemma 3.1.6, p. 115; proof of Theorem 3.3.6, p. 120 (temkin17 line 744); ilo14, Exposé X, proof of Theorem 3.4, Steps 2 and 7, arXiv v1 pp. 160–161 (ilo14 line 7373).)

For f proper, S noetherian integral and U dense, this is SchemeAndStackFoundations' flattening_by_blowup. Bl_0 A^2 → A^2 is flattened by the blow-up of the origin itself, with strict transform an isomorphism.

*Needs:* TauCetiRoadmap.SchemeAndStackFoundations §§4.11–4.20; TauCetiRoadmap.SchemeAndStackFoundations §§0.9, 0.16–0.21; TauCetiRoadmap.SchemeAndStackFoundations §0.9, noetherian approximation and finite-presentation descent; TauCetiRoadmap.SchemeAndStackFoundations §0.9, finite-type factorization contract.

### PA.0.7 Chow's lemma for non-separated morphisms

Let f : X → S be a finite-type morphism of quasi-compact quasi-separated schemes with X having finitely many maximal points. Then there is a projective modification g : X′ → X, which may be taken to be a blow-up along a finitely generated ideal with nowhere dense support, such that X′ → S is pseudo-projective.

Work under these precise hypotheses: X, S qcqs; f of finite type; X has finitely many maximal points.

One proof route is as follows. By the flattening construction used in ILO X proof of Proposition 3.1.8 there is a modification X′ → X with X′ → S factoring as an étale X′ → X̄, an isomorphism on dense opens, followed by a projective X̄ → S. An étale morphism which is an open embedding on a dense open is a local isomorphism (ILO X 3.1.9: on separated pieces the diagonal is open and closed, so the morphism is an étale monomorphism, hence an open immersion). For separated f this recovers SchemeAndStackFoundations' chow_lemma.

(ilo14, Exposé X, Proposition 3.1.8 and Lemma 3.1.9, arXiv v1 pp. 157–158 (ilo14 line 7246).)

For separated f, X′ → S is quasi-projective (SchemeAndStackFoundations §4.12).

*Needs:* §PA.0.6; §PA.0.5; TauCetiRoadmap.SchemeAndStackFoundations §§4.11–4.20.

### PA.0.8 Strict normal crossings supports

Let X be a regular noetherian scheme. A closed subset Z ⊆ X is an snc support ("Z is an snc divisor" in the convention of ILO X §3.3.3) if Z = ∅ or Z is the support of a divisor D on X satisfying SchemeAndStackFoundations' IsStrictNormalCrossings (§4.17): D is the reduced sum of components D_i with every nonempty partial intersection D_J regular of codimension |J|.

Work under these precise hypotheses: X regular and noetherian (SchemeAndStackFoundations §4.13 IsRegular).

The API records the following facts.

- Z = ∅ or Z is the support of a strict normal crossings divisor of SchemeAndStackFoundations §4.17.
- ∅ is an snc support of every regular noetherian X.
- A union of irreducible components of an snc support is an snc support.
- If Z′ is an snc support and Z ⊆ Z′ is the support of an effective Cartier divisor, then Z is an snc support.
- Every irreducible component of a nonempty snc support has codimension one.
- Restriction to an open subscheme preserves snc supports.
- The preimage of an snc support under a smooth morphism of regular schemes is an snc support.

One proof route is as follows. Use existence of a strict normal crossings divisor with support Z, allowing the empty divisor. Sub-divisors: a union of irreducible components of an snc support is an snc support (the subfamily theorem of §4.17). Cartier sub-supports: if Z′ is an snc support and Z ⊆ Z′ is the support of an effective Cartier divisor, every irreducible component of Z has codimension one (Krull's principal ideal theorem in the regular, hence normal, local rings) and is contained in Z′, so it is a component of Z′; hence Z is an snc support.

(ilo14, Exposé X, §3.3.3, arXiv v1 p. 159 (ilo14 line 7304); temkin17, Theorems 1.2.5, 1.2.9, 4.2.1, 4.3.1, pp. 99–124 (temkin17 line 1083).)

**Checks.**

- V(xy) ⊆ A^2_k is an snc support with two components. The two branches meet in codimension 2.
- ∅ ⊆ X is an snc support. The empty divisor is allowed.
- The origin of A^2_k is not an snc support: it has codimension two. Being a closed subset of a boundary is insufficient.
- For char k ≠ 2, V(y² − x²(x+1)) ⊆ A^2_k is not an snc support: its only component is singular at the node. Étale normal crossings and strict normal crossings differ.
- V(xy(x − y)) ⊆ A^2_k is not an snc support. Three branches cannot be three parameters in dimension 2.

V(xy) ⊆ A^2_k is an snc support; the origin of A^2_k is not. The nodal cubic V(y² − x²(x+1)) ⊆ A^2_k (char k ≠ 2) is not an snc support.

*Needs:* TauCetiRoadmap.SchemeAndStackFoundations §§4.11–4.20; Mathlib `IsRegularLocalRing`.

### PA.0.9 Universal P-resolvability

Let X be a noetherian scheme and P a set of primes. X is universally P-resolvable if for every alteration Y → X and every nowhere dense closed Z ⊆ Y there is a projective P-alteration f : Y′ → Y with Y′ regular and f⁻¹(Z) an snc support; universally separably P-resolvable if f can moreover be chosen separable. Universally resolvable means P = ∅, so all resolving generic degrees are 1. The resolution factors through Y_red; on reduced integral components it is a projective modification, while no generic isomorphism to a generically nonreduced Y is asserted. The projectivity follows ILO Exposé X §3.3.3; Temkin §4.1.4 omits it (the projective convention).

Work under these precise hypotheses: X noetherian; P a set of primes.

The API records the following facts.

- ∀ alteration Y → X, ∀ nowhere dense closed Z ⊆ Y, ∃ projective P-alteration f : Y′ → Y with Y′ regular and f⁻¹(Z) an snc support.
- The same with f separable.
- P ⊆ P′ ⇒ universally P-resolvable implies universally P′-resolvable.
- If X is universally P-resolvable, so is every alteration of X (alterations compose).
- Universally resolvable (P = ∅) implies universally P-resolvable for every P.
- Spec k is universally resolvable: an alteration of Spec k is finite, its reduction is regular and every nowhere dense closed subset is empty.

One proof route is as follows. Quantify over all alterations Y → X of §PA.0.3 and nowhere dense closed Z. Monotonicity: a P-alteration is a P′-alteration for P ⊆ P′. Universal ℓ′-resolvability of ILO X §3.3.3 is the case P = {ℓ}′ for ℓ invertible on X.

(temkin17, §4.1.4, p. 121 (temkin17 line 987); ilo14, Exposé X, §3.3.3 and Remark 3.3.4, arXiv v1 p. 159 (ilo14 line 7304).)

**Checks.**

- Spec k is universally resolvable for every field k. Reducing a finite zero-dimensional scheme gives fields; a nowhere dense subset is empty.
- Universally {2}-resolvable implies universally {2,3}-resolvable. Enlarging P allows more degrees, never fewer.
- The regular DVR A of K = k(x, y^p) ⊆ k((x)) (y transcendental) is not universally P-resolvable: the finite purely inseparable K′ = k(x, y) gives an alteration with non-finite normalization (ILO X 3.3.4(iv)). Regularity of the base alone does not give universal resolvability.
- The empty scheme is universally P-resolvable for every P. There are no nonempty schemes mapping to the empty base.

Spec of a field is universally resolvable. A regular but non-quasi-excellent DVR (ILO X 3.3.4(iv)) is not universally P-resolvable for any P.

*Needs:* §PA.0.3; §PA.0.4; §PA.0.8; Mathlib `AlgebraicGeometry.IsProper`.

### PA.0.10 Universal resolvability in dimension at most one

Every noetherian quasi-excellent scheme S of dimension at most one is universally resolvable, hence universally P-resolvable for every P.

Work under these precise hypotheses: S noetherian, quasi-excellent, dim S ≤ 1.

One proof route is as follows. An alteration Y → S is proper over S, so Y is noetherian quasi-excellent of dimension ≤ 1 (finite type over qe; dimension does not grow under generically finite proper maps). Y qe ⇒ Nagata (SchemeAndStackFoundations §0.20), so the normalization Y′ of Y_red is finite; by resolution_of_curves (§4.13) Y′ is regular and Y′ → Y is a finite, hence projective, degree-one alteration, induced by modifications of the reduced components. A nowhere dense closed Z ⊆ Y is a finite set of closed points; its preimage in the regular one-dimensional Y′ is a finite set of closed points, a reduced divisor whose components are disjoint regular points, hence an snc support (or empty).

(ilo14, Exposé X, Remark 3.3.4(ii), arXiv v1 p. 159 (ilo14 line 7310); stacks, Tag 0C45 (Lemma 33.41.1) and Tag 0BI4 (Lemma 54.15.1) (stacks, Varieties line 4034; Resolution of Surfaces line 1918).)

Spec of an excellent Dedekind domain and every curve over a field are universally resolvable.

*Needs:* §PA.0.9; TauCetiRoadmap.SchemeAndStackFoundations §§0.9, 0.16–0.21; TauCetiRoadmap.SchemeAndStackFoundations §§4.11–4.20.

### PA.0.11 Universal resolvability of excellent surfaces

Every noetherian excellent scheme S of dimension at most two is universally resolvable: for every alteration Y → S and nowhere dense closed Z ⊆ Y there is a projective degree-one alteration Y′ → Y with Y′ regular and the preimage of Z an snc support, factoring through a projective modification of the reduction on each integral component.

Work under these precise hypotheses: S noetherian, excellent, dim S ≤ 2.

One proof route is as follows. Y is excellent of dimension ≤ 2, being of finite type and generically finite over S. By Cossart–Jannsen–Saito Theorem 0.1, Y_red has a canonical resolution by a finite sequence of blow-ups in permissible centres inside the singular locus, so Y₁ → Y_red is a projective modification with Y₁ regular and Y₁ → Y is a projective degree-one alteration. Let D ⊆ Y₁ be the reduced preimage of Z, nowhere dense because Y₁ → Y_red is an isomorphism over a dense open. Cossart–Jannsen–Saito Corollary 0.4, applied to the regular excellent Y₁ and the reduced closed subscheme D of dimension ≤ 1, gives a projective surjective π : Y′ → Y₁, an isomorphism off D, with Y′ regular and π⁻¹(D)_red a strict normal crossings divisor (its proof applies Theorem 0.3 with empty boundary and then blows up the regular strict transform). The composite Y′ → Y is a projective degree-one alteration with Y′ regular, and the preimage of Z is π⁻¹(D), an snc support (§PA.0.8).

(cjs, Theorems 0.1–0.3 and Corollary 0.4, arXiv v2 pp. 3–4 (cjs line 53); ilo14, Exposé X, Remark 3.3.4(ii), arXiv v1 p. 159 (ilo14 line 7310).)

For S = Spec of a two-dimensional excellent regular local ring and Z its closed point, the blow-up of the closed point is a resolution with Z′ the exceptional curve.

*Needs:* §PA.0.9; §PA.0.8; TauCetiRoadmap.SchemeAndStackFoundations §§0.9, 0.16–0.21; TauCetiRoadmap.SchemeAndStackFoundations §§4.11–4.20.

### PA.0.12 Universal resolvability of quasi-excellent threefolds

For a noetherian quasi-excellent S with dim S ≤ 3, develop universal projective resolvability as defined in §PA.0.9, including every alteration Y → S and nowhere dense closed Z ⊆ Y. The established input is a proper regular resolution for separated Y, projective over every member of a specified finite affine cover, followed by embedded resolution of the reduced inverse image of Z. A projective resolving morphism follows when Y is affine. The full universal projective assertion requires the global projectivity and non-separated extension described below; all uses of it retain that requirement.

Work under these precise hypotheses: S noetherian, quasi-excellent, dim S ≤ 3.

One proof route is as follows. Y is quasi-excellent of dimension ≤ 3. By Cossart–Piltant Theorem 1.1 the reduced separated pieces of Y admit a proper birational π : Y₁ → Y_red with Y₁ regular, π an isomorphism over the regular locus and π⁻¹(Sing Y) snc; π is projective over each member of a chosen finite affine cover. Let D ⊆ Y₁ be the reduced preimage of Z, nowhere dense of dimension ≤ 2. A regular quasi-excellent scheme is Cohen–Macaulay, hence universally catenary, hence excellent (SchemeAndStackFoundations §§0.16–0.21), so Cossart–Jannsen–Saito Corollary 0.4 gives a projective π : Y′ → Y₁, an isomorphism off D, with Y′ regular and π⁻¹(D)_red a strict normal crossings divisor, as in §PA.0.11. Global projectivity of the composite: the Cossart–Piltant step is projective over each member of a chosen finite affine cover, hence globally projective when Y is affine (it is then the blow-up of an ideal, Cossart–Piltant Remark 1.4); the Corollary 0.4 step is projective. The remaining conclusion is global projectivity for non-affine Y, with the non-separated case included. The additional target is to construct, for every such Y and Z, a globally projective degree-one alteration Y′ → Y, obtained from modifications of its reduced components, with Y′ regular and reduced preimage of Z snc, without assuming Y separated. This is a proof obligation here, not a consequence attributed to Cossart–Piltant Theorem 1.1.

(cp19, Theorem 1.1, arXiv v2 pp. 3–4; Corollary 1.2 and Remark 1.4, p. 4 (cp19 line 93); temkin17, Remark 1.2.3, p. 99; §4.3.2, p. 124 (temkin17 line 94); cjs, Corollary 0.4 (with Theorem 0.3), arXiv v2 p. 4 (cjs line 131).)

For S = Spec of a reduced complete noetherian local ring of dimension three, Cossart–Piltant Corollary 1.2 gives a projective good resolution.

*Needs:* §PA.0.9; §PA.0.11; TauCetiRoadmap.SchemeAndStackFoundations §§0.9, 0.16–0.21; TauCetiRoadmap.SchemeAndStackFoundations §§4.11–4.20.

### Examples

For the cusp Spec k[t²,t³], normalization has degree 1. Frobenius on A¹ over F₂ has degree 2 and over F₃ degree 3; each is a singleton-prime alteration and neither is separable. The origin in A² has codimension 2, whereas V(xy) has two codimension-one branches (temkin17 line 71; ilo14 line 7304).

### Dependencies

The statements and routes use Mathlib `AlgebraicGeometry.Scheme.residueField`; Mathlib `ringChar`; Mathlib `Nat.primeFactors`; Mathlib `AlgebraicGeometry.Scheme.Hom.isConstructible_image`; Mathlib `AlgebraicGeometry.IsDominant`; Mathlib `AlgebraicGeometry.IsNoetherian`; Mathlib `AlgebraicGeometry.IsProper`; Mathlib `AlgebraicGeometry.IsFinite`; TauCetiRoadmap.SchemeAndStackFoundations §§0.9, 0.16–0.21; TauCetiRoadmap.SchemeAndStackFoundations §§4.11–4.20; TauCetiRoadmap.LocalFieldsRamificationPartII GF.0/prime-supported-degree; Mathlib `Algebra.IsSeparable`; Mathlib `AlgebraicGeometry.IsOpenImmersion`; Mathlib `AlgebraicGeometry.IsSeparated`; TauCetiRoadmap.SchemeAndStackFoundations §0.9, noetherian approximation and finite-presentation descent; TauCetiRoadmap.SchemeAndStackFoundations §0.9, finite-type factorization contract; Mathlib `IsRegularLocalRing`.

## Layer PA.1: Riemann–Zariski spaces of pointed schemes

### PA.1.1 Pointed schemes and their modifications

A pointed scheme is a morphism ε : Spec K → X with K a field and X quasi-compact and quasi-separated. A morphism (Spec K′ → X′) → (Spec K → X) is a compatible pair j : Spec K′ → Spec K, f : X′ → X; it is a modification if j is an isomorphism and f is proper (not necessarily surjective), and a modification is tight if Spec K → X′ is schematically dominant. The point need not be dominant: char K may differ from the generic characteristic of X.

Work under these precise hypotheses: X quasi-compact and quasi-separated; K any field.

The API records the following facts.

- A field K, a qcqs scheme X and ε : Spec K ⟶ X.
- Pairs (j, f) with ε ∘ j = f ∘ ε′.
- A pointed modification requires j to be an isomorphism and f to be proper.
- Tightness means schematic dominance of Spec K → X′.
- Modifications of a fixed pointed scheme form a cofiltered category.
- Every modification is dominated by a tight one (the schematic image of the point).

One proof route is as follows. Define the category of pointed schemes and the full subcategory of modifications of a fixed ε. Filteredness: two modifications X_1, X_2 of ε are dominated by the schematic image of Spec K in X_1 ×_X X_2, which is again proper over X. Tight modifications are cofinal: any modification is dominated by the schematic image of Spec K in it (a closed subscheme, hence proper over X).

(temkin17, §3.1.1, pp. 112–113; §3.1.5, p. 114 (temkin17 line 645); temkin10, §3.2, arXiv v3 (temkin10 line 665).)

**Checks.**

- The identity of ε is a tight modification when ε is schematically dominant. A non-dominant point need not make its identity tight.
- 𝔾_m → A^1_k with the generic point is not a modification (not proper). A dense open immersion alone does not satisfy properness.
- For ε : Spec F_p → Spec Z at (p), the closed immersion Spec F_p → Spec Z is a tight modification. Pointed modifications need not be surjective onto X.
- Bl_0 A^2_k → A^2_k with the generic point is a tight modification. The exceptional fibre does not change the marked function field.

For X integral and ε the generic point, tight modifications are exactly the modifications of SchemeAndStackFoundations §4.11 that are birational onto their image.

*Needs:* Mathlib `AlgebraicGeometry.IsProper`; Mathlib `AlgebraicGeometry.QuasiCompact`; Mathlib `AlgebraicGeometry.QuasiSeparated`; TauCetiRoadmap.SchemeAndStackFoundations §§4.11–4.20.

### PA.1.2 Riemann–Zariski space of a pointed scheme

For a pointed scheme ε : Spec K → X, RZ_K(X) := lim_i X_i, the limit in locally ringed spaces over all modifications X_i → X of ε. Its underlying space is lim |X_i| with projections π_i, its structure sheaf is colim π_i⁻¹ `O_{X_i}`, so `O_{RZ,x}` = colim `O_{X_i,π_i(x)}`. Constructible subsets are the preimages π_i⁻¹(C) of constructible C ⊆ X_i, and they generate the constructible topology.

Work under these precise hypotheses: ε a pointed scheme.

The API records the following facts.

- The locally ringed space lim_i X_i over modifications of ε.
- π_i : RZ_K(X) → X_i, compatible with transition maps.
- `O_{RZ,x}` ≅ colim_i `O_{X_i, π_i(x)}`.
- U ⊆ RZ_K(X) is constructible ⇔ U = π_i⁻¹(C) for some i and constructible C ⊆ X_i.
- A morphism of pointed schemes induces RZ_L(Y) → RZ_K(X) (PA.1/rz-functoriality).

One proof route is as follows. Index by the cofiltered category of modifications (or the cofinal tight ones). Form the limit of underlying spaces and the colimit of pulled-back structure sheaves; each stalk is a filtered colimit of local rings along local homomorphisms, hence local. Define the constructible topology from constructible subsets of the X_i (Mathlib's constructible topology on spectral spaces).

(temkin17, §3.1.1, pp. 112–113 (temkin17 line 645).)

**Checks.**

- If X is a point Spec K with ε the identity, RZ_K(X) is a single point with stalk K. Valuations must contain all of K, excluding nontrivial valuation rings.
- For X = Spec R, R a DVR with fraction field K and ε generic, RZ_K(X) = Spec R as a locally ringed space (tight modifications of the generic point over Spec R are isomorphisms; arbitrary pointed modifications may have extra components). Extra components in a non-tight modification do not add compatible limit points.
- For X = A^1_k and ε generic, the points of `RZ_{k(t)}(X)` are the valuation rings of k(t) containing k[t]: the trivial one and the local rings at closed points. A valuation at infinity fails the condition t ∈ O.
- For X = A^2_k and ε generic, `RZ_{k(x,y)}(X)` has a point whose stalk is a valuation ring of rank two (value group Z² ordered lexicographically), which is not noetherian; so RZ_K(X) is not a noetherian scheme, unlike every X_i. A noetherian valuation domain has rank at most 1.

For ε dominant with X = Spec A, RZ_K(Spec A) is the Riemann–Zariski space of K over A (comparison node of this layer).

*Needs:* §PA.1.1; Mathlib `WithConstructibleTopology`.

### PA.1.3 Valuative points of a pointed scheme

For a pointed scheme ε : Spec K → X, Val_K(X) is the set of isomorphism classes of morphisms Spec O → X extending ε, where O ⊆ K is a valuation ring of K (with Spec K → Spec O the generic point). By the valuative criterion of separatedness the morphism is determined by O when X is separated.

Work under these precise hypotheses: ε a pointed scheme.

The API records the following facts.

- Pairs (O : ValuationSubring K, g : Spec O ⟶ X) extending ε.
- Forget the centre: Val_K(X) → Val_K.
- Injective when X is separated (valuative criterion of separatedness); no converse for a fixed pointed scheme is asserted.
- If X is proper over Spec A and A ⊆ O, the point extends (valuative criterion of properness).
- The centre g(closed point) ∈ X.

One proof route is as follows. Define Val_K(X) as pairs (O, g) with O a valuation subring of K and g : Spec O → X with g restricted to Spec K equal to ε, modulo isomorphism (O is a subring of K, so isomorphisms are identities). Topologies on Val_K(X) are transported from RZ_K(X) along the bijection of §PA.1.4.

(temkin17, §3.1.2, p. 113 (temkin17 line 663); temkin10, §3.2, arXiv v3 (temkin10 line 665).)

**Checks.**

- For X = Spec Z_(p) and K = Q, Val_Q(X) has two elements: Q and Z_(p). A prime different from p cannot be a closed centre on this localization.
- For X = P^1_k and K = k(t) with ε generic, Val_K(X) is the set of all valuation rings of k(t) containing k. Only valuations containing k are eligible for the fixed generic k-point.
- For K = F_p every valuation ring of K is F_p itself, so Val_K(X) is the set of F_p-points of X lying under ε, a single element. A finite field has no proper valuation subring.
- For the doubled-origin line over k with ε generic, the valuation k[t]_(t) has two centres, so Val_K(X) → Val_K is not injective. The centre must be retained in the data.

For X proper over Spec Z (or separated), Val_K(X) is the set of valuation rings O of K for which ε extends to Spec O.

*Needs:* Mathlib `ValuationSubring`; Mathlib `AlgebraicGeometry.IsSeparated.valuativeCriterion`; §PA.1.1.

### PA.1.4 Compactness and the valuative description of RZ spaces

Let ε : Spec K → X be a pointed scheme and 𝔛 = RZ_K(X). (i) 𝔛 is compact in the constructible topology and quasi-compact in the Zariski topology. (ii) Every stalk `O_{𝔛,x}` is a valuation ring of K, and x ↦ (Spec `O_{𝔛,x}` → X) is a bijection 𝔛 → Val_K(X).

Work under these precise hypotheses: ε a pointed scheme (X qcqs).

One proof route is as follows. (i) Each X_i is a qcqs scheme, hence a spectral space, compact in its constructible topology (Mathlib compactSpace_withConstructibleTopology); a cofiltered limit of compact Hausdorff spaces along continuous maps is compact; the Zariski topology is coarser. (ii) For f, g ∈ `O_{𝔛,x}`, blowing up the ideal (f, g) on some X_i shows one divides the other in a further modification, so the stalk is a valuation ring (Temkin 2010, Cors. 3.2.4–3.2.5). Bijectivity: given (O, Spec O → X), the valuative criterion of properness (Mathlib IsProper.eq_valuativeCriterion) lifts the centre uniquely to every proper X_i, giving a compatible family of points; injectivity because the stalk determines O.

(temkin17, Lemma 3.1.3 and proof, p. 113 (temkin17 line 667); temkin10, Corollaries 3.2.4–3.2.5, arXiv v3 (temkin10 line 735).)

For X = Spec A and ε dominant this recovers the classical compactness of the Zariski–Riemann space.

*Needs:* §PA.1.2; §PA.1.3; Mathlib `compactSpace_withConstructibleTopology`; Mathlib `AlgebraicGeometry.IsProper.eq_valuativeCriterion`; Mathlib `LocalSubring.exists_le_valuationSubring`.

### PA.1.5 Functoriality of Riemann–Zariski spaces

A morphism of pointed schemes (j : Spec L → Spec K, f : Y → X) induces ψ : Val_L(Y) → Val_K(X), sending Spec O → Y to the factorisation of Spec O → Y → X through Spec(O ∩ K), and a compatible morphism of locally ringed spaces RZ_L(Y) → RZ_K(X).

Work under these precise hypotheses: (j, f) a morphism of pointed schemes.

The API records the following facts.

- ψ : Val_L(Y) → Val_K(X), (O, g) ↦ (O ∩ K, induced centre).
- ψ is functorial: `ψ_{(j,f)∘(j′,f′)}` = `ψ_{(j,f)}` ∘ `ψ_{(j′,f′)}`.
- ψ of the identity is the identity.
- The limit map RZ_L(Y) → RZ_K(X) corresponds to ψ under the bijections of Lemma 3.1.3.

One proof route is as follows. Restriction: the generic point of Spec O maps into Spec K, so Spec O → X factors through Spec(O ∩ K) by the valuative property of O ∩ K ⊆ K. Limit map: for every modification X_i → X of ε_K there is a tight modification Y_j → Y of ε_L through which Y_j → Y → X factors via Y_j → X_i, uniquely because ε_L is schematically dominant in Y_j and X_i → X is separated; these assemble to RZ_L(Y) → RZ_K(X). Compatibility of the two maps with the bijections of §PA.1.4 follows from the valuative criterion of properness.

(temkin17, §3.1.5, pp. 113–114 (temkin17 line 686).)

**Checks.**

- For L = Q(i), K = Q: the valuation ring Z[i]_(1+i) restricts to Z_(2). The value of 2 is positive on both sides.
- The trivial valuation ring L restricts to K. The direction is L to K.
- For L = Q(i), K = Q, the two valuation rings of L over 5 restrict to the same Z_(5): ψ need not be injective. The fibre has size 2 rather than 1.
- For M/L/K, (O ∩ L) ∩ K = O ∩ K. Both restrictions give the same subring of K.

For L/K a field extension and X = Y = Spec Z, ψ is restriction of valuation rings O ↦ O ∩ K.

*Needs:* §PA.1.2; §PA.1.3; §PA.1.4.

### PA.1.6 Openness of the restriction map

Let (Spec L → Y) → (Spec K → X) be a morphism of pointed schemes with Y → X of finite type. Then ψ : Val_L(Y) → Val_K(X) is open and continuous for both the Zariski and the constructible topologies; in particular it takes constructible sets to constructible sets.

Work under these precise hypotheses: Y → X of finite type; X, Y qcqs.

One proof route is as follows. Continuity: basic opens (constructibles) pulled back from X_i have preimage pulled back from a tight Y_j mapping to X_i. Openness: reduce to K = k(X_i) by writing K as the union of finitely generated subextensions of K/k(X_i) and choosing modifications with function field K_l; RZ_K(X) = lim_l `RZ_{K_l}(X)`. Flatten Y_j → X_i by a blow-up of X_i (§PA.0.6, using generic flatness, Stacks 052A, over the integral X_i); then f is flat of finite presentation, hence open in both topologies (Mathlib Flat.generalizingMap, isOpenMap_of_generalizingMap, and Chevalley isConstructible_image). Flatness lifts valuations: for O centred at x ∈ X_i and y over x, `O ⊗_{O_{X_i,x}} O_{Y_j,y}` embeds in k(Y_j) after the reduction to k(X_i) = K and flatness; a valuation ring of k(Y_j) dominating a localization over y extends O, and it is prolonged to L (Mathlib `LocalSubring.exists_le_valuationSubring`). Hence ψ(V) = π_i⁻¹(f(V_j)).

(temkin17, Lemma 3.1.6 and proof, pp. 114–115 (temkin17 line 707).)

For L/K finite and X = Y = Spec Z, `ψ_{L/K}` : Val_L → Val_K is open and continuous (Temkin §3.1.7).

*Needs:* §PA.1.5; §PA.1.4; §PA.0.6; Mathlib `AlgebraicGeometry.Flat.generalizingMap`; Mathlib `AlgebraicGeometry.isOpenMap_of_generalizingMap`; Mathlib `AlgebraicGeometry.Scheme.Hom.isConstructible_image`; Mathlib `LocalSubring.exists_le_valuationSubring`.

### PA.1.7 Absolute Riemann–Zariski spaces and centres

For a field K, Val_K := Val_K(Spec Z) is the set of all valuation rings of K, identified with Tau Ceti's valuation spectrum of K (equivalence classes of valuations). For a pointed scheme ε : Spec K → X let Val_K(X)′ ⊆ Val_K be the image of Val_K(X) → Val_K: the valuation rings of K with a centre on X extending ε. For a field extension L/K, `ψ_{L/K}` : Val_L → Val_K is O ↦ O ∩ K. If X is separated, Val_K(X) → Val_K is injective (the converse fails, the separatedness implication).

Work under these precise hypotheses: K a field; ε a pointed scheme for Val_K(X)′.

The API records the following facts.

- Val_K, the type of valuation subrings of K (Mathlib ValuationSubring K).
- Val_K ≃ the points of Tau Ceti's ValuationSpectrum K.
- Val_K(X)′ := {O | ∃ g : Spec O ⟶ X extending ε}.
- `ψ_{L/K}(O)` = O ∩ K, i.e. ValuationSubring.comap along K → L.
- `ψ_{M/K}` = `ψ_{L/K}` ∘ `ψ_{M/L}`.
- Val_K(X)′ is compact in the constructible topology.
- `ψ_{L/K}` is open and continuous (Lemma 3.1.6).
- For L/K algebraic, `ψ_{L/K}` is surjective (Chevalley extension of valuations).

One proof route is as follows. Identify Val_K with the points of Tau Ceti's ValuationSpectrum K of the field (a valuation up to equivalence is determined by its valuation ring), and transport its spectral topology; its patch topology is compact (ValuationSpectrum.compactSpace_patchTopology). Val_K(X)′ is the image of the constructibly compact Val_K(X) (Lemma 3.1.3) under a continuous map, hence constructibly compact and Zariski quasi-compact. `ψ_{L/K}` is the restriction map of §PA.1.5 for X = Y = Spec Z, so it is continuous and open by §PA.1.6; it agrees with Tau Ceti's ValuationSpectrum.comap along K → L. Injectivity for separated X is the valuative criterion of separatedness.

(temkin17, §3.1.7, p. 115 (temkin17 line 760).)

**Checks.**

- Val_Q = {Q} ∪ {Z_(p) : p prime}. No archimedean absolute value defines a valuation ring.
- `Val_{F_q}` = {F_q}. The space has one point, not zero.
- Val_K(Spec Z)′ = Val_K: every valuation ring contains the image of Z. The prime ring lies in every valuation ring.
- For X = Spec Z[1/p] and K = Q, Val_Q(X)′ = Val_Q ∖ {Z_(p)}. Inverting p removes precisely its nontrivial p-adic valuation.
- `ψ_{Q(i)/Q}` is not injective: Z_(5) has two preimages. At 2 the fibre has size 1 and at 5 it has size 2.

Val_Q consists of Q and the Z_(p); `ψ_{Q(i)/Q}` is surjective with fibres of size 1 or 2.

*Needs:* §PA.1.3; §PA.1.4; §PA.1.6; Tau Ceti `TauCeti.ValuationSpectrum`; Tau Ceti `TauCeti.ValuationSpectrum.continuous_comap`; Tau Ceti `TauCeti.ValuationSpectrum.compactSpace_patchTopology`; Mathlib `ValuationSubring`.

### PA.1.8 Comparison with the affine Zariski–Riemann limit

For a ring A, a field K and a dominant point ε : Spec K → Spec A (s : A → K with schematically dominant image), the Riemann–Zariski space RZ_K(Spec A) of PA.1/riemann-zariski-space is homeomorphic, compatibly with centres, to the subspace {V ∈ Spv K : s(A) ⊆ V} of the Zariski–Riemann space, presented as the limit of projective integral models (ClassicalAdicEtaleCohomology §2.4). Both are built on Tau Ceti's ValuationSpectrum carrier; no second Zariski–Riemann carrier is introduced.

Work under these precise hypotheses: A a ring; K a field; ε dominant (schematically dominant point).

One proof route is as follows. Projective integral models (X, f, g) with f projective and g dominant are tight modifications of ε and are cofinal among all modifications (Chow's lemma for the proper, separated modifications of the affine scheme, SchemeAndStackFoundations §4.12 chow_lemma). Hence the two limits agree on underlying spaces; under the bijection of Lemma 3.1.3 both correspond to the valuation rings V of K containing s(A).

(temkin17, §3.1.1, pp. 112–113 (temkin17 line 645); temkin10, §3.2, arXiv v3 (temkin10 line 665).)

For A = Z and K = Q both sides are Val_Q.

*Needs:* §PA.1.2; §PA.1.4; §PA.1.7; TauCetiRoadmap.ClassicalAdicEtaleCohomology §2.4, normal models and the Zariski–Riemann limit; TauCetiRoadmap.SchemeAndStackFoundations §§4.11–4.20.

### Examples

For K = Q(i), restriction sends the unique valuation above 2 to Z_(2) and the two valuations above 5 to Z_(5). For the doubled-origin line with generic point k(t), k[t]_(t) has two centres, so the valuative point retains more information than its ring (temkin17 line 663).

### Dependencies

The statements and routes use §PA.0.6; Mathlib `AlgebraicGeometry.IsProper`; Mathlib `AlgebraicGeometry.QuasiCompact`; Mathlib `AlgebraicGeometry.QuasiSeparated`; TauCetiRoadmap.SchemeAndStackFoundations §§4.11–4.20; Mathlib `WithConstructibleTopology`; Mathlib `ValuationSubring`; Mathlib `AlgebraicGeometry.IsSeparated.valuativeCriterion`; Mathlib `compactSpace_withConstructibleTopology`; Mathlib `AlgebraicGeometry.IsProper.eq_valuativeCriterion`; Mathlib `LocalSubring.exists_le_valuationSubring`; Mathlib `AlgebraicGeometry.Flat.generalizingMap`; Mathlib `AlgebraicGeometry.isOpenMap_of_generalizingMap`; Mathlib `AlgebraicGeometry.Scheme.Hom.isConstructible_image`; Tau Ceti `TauCeti.ValuationSpectrum`; Tau Ceti `TauCeti.ValuationSpectrum.continuous_comap`; Tau Ceti `TauCeti.ValuationSpectrum.compactSpace_patchTopology`; TauCetiRoadmap.ClassicalAdicEtaleCohomology §2.4, normal models and the Zariski–Riemann limit.

## Layer PA.2: Tame distillation for field extensions

### PA.2.1 Tame, wild and unramified loci

Let L/K be an algebraic extension of fields. For x ∈ Val_L, L/K is x-tame if it is tame (LocalFieldsRamificationPartII GF.2) for the valuation of L given by x and the valuation `ψ_{L/K}(x)` of K. The tame locus is `Val^t_{L/K}` := {x ∈ Val_L : L/K is x-tame}, the wild locus `Val^w_{L/K}` := Val_L ∖ `Val^t_{L/K}`, and the unramified locus `Val^u_{L/K}` is defined in the same way with 'unramified' (GF.2) in place of 'tame'.

Work under these precise hypotheses: L/K algebraic; tameness and unramifiedness in the sense of LocalFieldsRamificationPartII GF.2 (after henselization).

The API records the following facts.

- `Val^t_{L/K}` ⊆ Val_L.
- `Val^w_{L/K}` = the complement of the tame locus.
- `Val^u_{L/K}` ⊆ Val_L.
- `Val^u_{L/K}` ⊆ `Val^t_{L/K}`.
- x ∈ `Val^t_{L/K}` ⇔ (L, O_x)/(K, O_x ∩ K) is tame in the sense of GF.2.
- `Val^t_{K/K}` = Val_K.

One proof route is as follows. Pull back the valued-field notions of GF.2 pointwise along x ↦ (O_x, O_x ∩ K). `Val^u_{L/K}` ⊆ `Val^t_{L/K}`, since unramified extensions are tame.

(temkin17, §3.2.1, p. 115; §3.2.7, p. 116 (temkin17 line 772).)

**Checks.**

- For L = Q(i), K = Q: Z[i]_(1+i) ∈ `Val^w_{L/K}` and Z[i]_(2+i) ∈ `Val^u_{L/K}`. At 2 the ramification index is 2; at 5 it is 1.
- The trivial valuation of L lies in `Val^t_{L/K}` exactly when L/K is separable. An inseparable extension is excluded even when the value groups are trivial.
- For K = F_p(t) and L = K(u) with u^p − u = t⁻¹, the point of Val_L over the t-adic valuation is wild although L/K is separable. The additive valuation of u is −1/p and e = p.
- `Val^t_{K/K}` = Val_K. The local degree is 1 and the wild locus is empty.

If char K = 0 then the residue characteristic of the trivial valuation is 0 and the trivial valuation lies in `Val^t_{L/K}`. For K = Q, L = Q(i), the point Z[i]_(1+i) lies in `Val^w_{L/K}`.

*Needs:* §PA.1.7; TauCetiRoadmap.LocalFieldsRamificationPartII GF.2/tame-extension; TauCetiRoadmap.LocalFieldsRamificationPartII GF.2/unramified-extension.

### PA.2.2 S-tameness and P-tameness

Let L/K be algebraic and S ⊆ Val_L. L/K is S-tame if S ⊆ `Val^t_{L/K}`; X-tame for a pointed scheme Spec L → X if it is Val_L(X)′-tame; absolutely tame if `Val^t_{L/K}` = Val_L. For S ⊆ Val_L, char(S) is the set of nonzero residue characteristics of the elements of S. For a set of primes P, L/K is P-tame if `char(Val^w_{L/K})` ∩ P = ∅, and a field K is P-tame if K^a/K is. Separable P-tameness of K asks this for K^s/K.

Work under these precise hypotheses: L/K algebraic; S ⊆ Val_L; P a set of primes.

The API records the following facts.

- S ⊆ the tame locus of L/K.
- Tameness on the valuations of L centred on the pointed scheme X.
- char(S) ⊆ ℕ, the nonzero residue characteristics occurring in S.
- P-tameness means that no wild valuation has residue characteristic in P.
- If char K = 0 or char K ∈ P, L/K is P-tame exactly when it is tame on the valuations centred on Spec `Z_{P′}`.
- X-tameness depends only on the modification class of the pointed scheme.
- S ⊆ S′ and S′-tame ⇒ S-tame.
- If L/K is S-tame and K ⊆ M ⊆ L then M/K is `ψ_{L/M}(S)`-tame (subextensions of tame extensions are tame).

One proof route is as follows. Define the predicates from §PA.2.1. When char K = 0 or char K belongs to P, Spec L has its canonical point over Spec `Z_{P′}`, where primes outside P are inverted; P-tameness then equals tameness for this pointed scheme, since its centred valuations have residue characteristic zero or in P. Without that characteristic hypothesis use only the locus definition, since the required point need not exist. X-tameness is invariant under modifications of the pointed scheme: modifications do not change Val_L(X)′ (valuative criterion of properness).

(temkin17, §3.2.2–3.2.4, p. 116 (temkin17 line 778).)

**Checks.**

- Every algebraic extension is ∅-tame. No residue prime is tested; this condition does not force separability.
- Q(i)/Q is 3-tame and not 2-tame. The residue prime 2 is detected independently of char Q = 0.
- Every L/K is ∅-tame (S = ∅). No valuation is tested.
- char(Val_Q) is the set of all primes. Using char Q = 0 would miss every nontrivial valuation.
- F_p(t)(u)/F_p(t), u^p − u = t⁻¹, is not p-tame. Here v(u) = −1/p and e = p, for p = 2 and p = 3.
- For K = F₂(t), L = K(t^(1/2)) and P = ∅, P-tameness holds vacuously, but Spec L has no map to Spec Q. The pointed-scheme comparison therefore needs its characteristic hypothesis.

At every valuation of residue characteristic zero, every algebraic extension is tame for each prolongation; this is a statement at that valuation, rather than at valuations of other residue characteristics. Q^a/Q is not 2-tame.

*Needs:* §PA.2.1; §PA.1.7; §PA.1.1.

### PA.2.4 Tame and unramified loci in towers and composita

(i) For a tower of algebraic extensions L/l/k: `Val^t_{L/k}` = `Val^t_{L/l}` ∩ `ψ_{L/l}⁻¹(Val^t_{l/k})`, and the same for unramified loci. (ii) If l/k and K/k are subextensions of L/k with L = Kl, then `ψ_{L/l}⁻¹(Val^t_{l/k})` ⊆ `Val^t_{L/K}` and `ψ_{L/l}⁻¹(Val^u_{l/k})` ⊆ `Val^u_{L/K}`.

Work under these precise hypotheses: All fields inside one algebraic extension.

One proof route is as follows. (i) A valued extension L/k is tame (unramified) iff L/l and l/k are (GF.2/tower-laws). (ii) Tameness and unramifiedness are preserved by base change: if l/k is tame then lK/K is tame (LocalFieldsRamificationPartII GF.2, tame base change).

(temkin17, Lemma 3.2.8 and proof, p. 116 (temkin17 line 803).)

For k = Q, l = Q(i), L = Q(i, √3): the point over 3 lies in `Val^t_{L/k}`, and the point over 2 does not.

*Needs:* §PA.2.1; TauCetiRoadmap.LocalFieldsRamificationPartII GF.2/tower-laws; TauCetiRoadmap.LocalFieldsRamificationPartII GF.2/tame-extension.

### PA.2.5 Openness of the tame and unramified loci

For a finite extension L/K, the tame locus `Val^t_{L/K}` and the unramified locus `Val^u_{L/K}` are open subsets of Val_L.

Work under these precise hypotheses: L/K finite.

One proof route is as follows. Unramified locus: for y ∈ Val^u with x = ψ(y), O_y/O_x is essentially étale (GF.2/unramified-etale-criterion), so by Chevalley's local structure theorem (Mathlib `Algebra.IsEtaleAt.exists_isStandardEtale`) O_y is a localization of O_x[t]/(f) with f monic and f′(a) a unit at the image a of t. replace f by the minimal polynomial g of a over K; since O_x is integrally closed, g ∈ O_x[t] and f = gh in O_x[t], and f′(a) = g′(a)h(a) makes g′(a) a unit. The set V of valuation rings O of L containing the coefficients of g, containing a and with g′(a) ∈ O^× is an open neighbourhood of y. For y′ ∈ V with x′ = ψ(y′): A = `O_{x′}[t, g′(t)⁻¹]/(g)` is étale over `O_{x′}` and embeds in L (g is the minimal polynomial), A is integrally closed and its localizations are valuation rings (Prüfer, GF.1), so `O_{y′}` is a localization of A and `O_{y′}/O_{x′}` is essentially étale. Tame locus: after finite unramified L′/L and K′/K, L′ = `K′(x_1^{1/n_1}, …, x_r^{1/n_r})` with n_i invertible in the residue field; `Val^t_{L′/K′}` contains all valuations of residue characteristic prime to the n_i, an open set; combine with the openness of `Val^u_{K′/K}` (the first part of this same lemma) via Lemma 3.2.8(i), and push down along the open map `ψ_{L′/L}` (§PA.1.6).

(temkin17, Lemma 3.2.10 and proof, p. 117 (temkin17 line 817).)

For L = Q(i), K = Q the tame locus is Val_L minus the single point over 2, which is open.

*Needs:* §PA.2.1; §PA.2.4; §PA.1.6; TauCetiRoadmap.LocalFieldsRamificationPartII GF.2/unramified-etale-criterion; TauCetiRoadmap.LocalFieldsRamificationPartII GF.1/normalization-and-prolongations; Mathlib `Algebra.IsEtaleAt.exists_isStandardEtale`.

### PA.2.6 Tame distillation for finite field extensions

Let L/K be a finite field extension, S ⊆ Val_L compact in the constructible topology, and P := char(S ∩ `Val^w_{L/K}`) the wild primes set of S. Then there are a finite extension L′/L and a tower L′/K′/K with K′/K a P-extension and L′/K′ S′-tame, where S′ := `ψ_{L′/L}⁻¹(S)`. Moreover for any maximal P-extension K̄/K one can take K′ ⊆ K̄ and L′ = LK′.

Work under these precise hypotheses: L/K finite; S ⊆ Val_L constructibly compact.

One proof route is as follows. Fix a maximal P-extension K̄/K (GF.0/maximal-p-extension) and a composite L̄ = LK̄; S̄ := `ψ_{L̄/L}⁻¹(S)` is constructibly compact. L̄/K̄ is S̄-tame: by Lemma 3.2.8(ii) the wild part of S̄ maps into the wild part of S, so its residue characteristics lie in P; but K̄ is P-closed, hence P-tame (LocalFieldsRamificationPartII GF.6, general-tameness and separable-p-closed-tameness), so the wild part of S̄ is empty. For each x ∈ S̄ there is a finite K_x/K inside K̄ with LK_x/K_x tame at x; the tame locus of LK_x/K_x is open (§PA.2.5), so its preimage is an open neighbourhood of x in `Val_{L̄}`. By quasi-compactness of S̄ finitely many `K_{x_1}`, …, `K_{x_n}` suffice; let K′ be their composite and L′ = LK′. Lemma 3.2.8(ii) gives S′ ⊆ `Val^t_{L′/K′}`.

(temkin17, Theorem 3.2.12 and proof, pp. 117–118 (temkin17 line 858).)

If S ⊆ `Val^t_{L/K}` then P = ∅ and one may take K′ = K, L′ = L. For L = Q(i), K = Q and S = Val_L, P = {2}: K′ = Q(i) itself (a 2-extension) and L′ = K′ give L′/K′ trivially tame.

*Needs:* §PA.2.5; §PA.2.4; LocalFieldsRamificationPartII GF.6, general-tameness and separable-p-closed-tameness; §PA.1.7; TauCetiRoadmap.LocalFieldsRamificationPartII GF.0/maximal-p-extension; TauCetiRoadmap.LocalFieldsRamificationPartII GF.0/p-extensions.

### PA.2.7 Separable tame distillation for finite separable extensions

Let L/K be finite separable, S ⊆ Val_L constructibly compact and P = char(S ∩ `Val^w_{L/K}`). For any maximal separable P-extension K̄^s/K there is a finite separable P-extension K′/K with K′ ⊆ K̄^s such that L′ = LK′ is S′-tame over K′, S′ = `ψ_{L′/L}⁻¹(S)`. In particular L′/K is separable.

Work under these precise hypotheses: L/K finite separable; S constructibly compact.

One proof route is as follows. a maximal unrestricted P-extension may contain purely inseparable subextensions when char K ∈ P, so Theorem 3.2.12 does not give a separable K′. A maximal separable P-extension K̄^s of K exists by Zorn's lemma inside K^s, as for maximal P-extensions (GF.0/maximal-p-extension), and it is separably P-closed (GF.0/separably-p-closed): a finite separable P-extension of it is a separable P-extension of K. Separable P-closedness of K̄^s is P-closedness of its perfection (GF.2/perfection-tame-tower), and the separable tame tower is unchanged by the purely inseparable base change to the perfection, so L K̄^s/K̄^s is S̄-tame at all points of residue characteristic in P (LocalFieldsRamificationPartII GF.6, general-tameness and separable-p-closed-tameness, separable part). Repeat the compactness argument of Theorem 3.2.12 with finite separable K_x ⊆ K̄^s.

(temkin17, Theorem 3.2.12, pp. 117–118; Theorem 4.2.1 Step 4, p. 122 (temkin17 line 858).)

If char K = 0 the statement coincides with Theorem 3.2.12.

*Needs:* §PA.2.6; LocalFieldsRamificationPartII GF.6, general-tameness and separable-p-closed-tameness; TauCetiRoadmap.LocalFieldsRamificationPartII GF.0/separably-p-closed; TauCetiRoadmap.LocalFieldsRamificationPartII GF.2/perfection-tame-tower; TauCetiRoadmap.LocalFieldsRamificationPartII GF.0/maximal-p-extension.

### Examples

For Q(i)/Q and S all valuations, the wild prime set is {2}; K′ = Q(i) and L′ = K′ give relative degree 1. For u^p − u = t⁻¹ over F_p(t), v(u) = −1/p and e = p, for p = 2 as well as p = 3 (temkin17 line 858).

### Dependencies

The statements and routes use §PA.1.1; §PA.1.6; §PA.1.7; TauCetiRoadmap.LocalFieldsRamificationPartII GF.2/tame-extension; TauCetiRoadmap.LocalFieldsRamificationPartII GF.2/unramified-extension; TauCetiRoadmap.LocalFieldsRamificationPartII GF.2/tower-laws; TauCetiRoadmap.LocalFieldsRamificationPartII GF.2/unramified-etale-criterion; TauCetiRoadmap.LocalFieldsRamificationPartII GF.1/normalization-and-prolongations; Mathlib `Algebra.IsEtaleAt.exists_isStandardEtale`; TauCetiRoadmap.LocalFieldsRamificationPartII GF.0/maximal-p-extension; TauCetiRoadmap.LocalFieldsRamificationPartII GF.0/p-extensions; TauCetiRoadmap.LocalFieldsRamificationPartII GF.0/separably-p-closed; TauCetiRoadmap.LocalFieldsRamificationPartII GF.2/perfection-tame-tower.

## Layer PA.3: Tame distillation for alterations

### PA.3.1 Inertia, tame actions and inertia specialization

Let a finite group G act on a scheme X by automorphisms. For x ∈ X the decomposition group D_x is the stabilizer of the point x, and the inertia group G_x ⊆ D_x consists of the g ∈ D_x acting trivially on κ(x). The action is tame if |G_x| is invertible in κ(x) for every x, inertia specializing if G_x ⊆ G_y whenever y specializes x, and admissible if every orbit lies in a G-stable affine open (so that X/G exists by gluing the affine invariant quotients). For H ≤ G the fixed-point subscheme X^H is the simultaneous equalizer of h and the identity, h ∈ H; on a non-separated scheme its immersion need not be closed.

Work under these precise hypotheses: G finite acting on X by automorphisms (over a base where relevant).

The API records the following facts.

- D_x := stabilizer of x in G.
- G_x := {g ∈ D_x | g acts trivially on κ(x)}.
- Tameness means that each inertia order is nonzero, hence invertible, in its residue field.
- Inertia specialization means G_x ≤ G_y whenever y specializes x.
- Inertia specializing ⇔ X^H closed for every H ≤ G.
- Admissibility means that every orbit lies in a G-stable affine open.
- For admissible actions, glue X/G from affine invariant quotients; q : X → X/G is integral and surjective with `O_{X/G}` = (q_* O_X)^G, and is finite when the affine coordinate rings are finite type over their invariant subrings, in particular in the finite-type situations over a noetherian invariant base used here.
- If |G| is invertible on X the action is tame.

One proof route is as follows. Define D_x via Mathlib's `MulAction.stabilizer` for the action on points and G_x as the kernel of D_x → Aut κ(x). Inertia specializing ⇔ every X^H is closed (ILO X 3.1.3); separated X, or X covered by G-stable separated opens, gives an inertia specializing action (X 3.1.4(i)). Admissible actions have quotients: glue the affine invariant quotients (Tau Ceti’s affine invariant quotient modules); for Y projective over a noetherian S this is SchemeAndStackFoundations §1.17 finiteGroupQuotient_projective.

(temkin17, §3.3.2, p. 118 (temkin17 line 889); ilo14, Exposé X, Example 3.1.1, §3.1.2, Lemma 3.1.3 and Remark 3.1.4, arXiv v1 p. 156 (ilo14 line 7160); ilo14, Exposé VI, §3.1, arXiv v1 p. 73 (ilo14 line 7160).)

**Checks.**

- For ±1 on A^2_k, char k ≠ 2: the inertia group at the origin is {±1} and is trivial at every other point. Inertia tests the residue action, not just whether the scheme point is fixed.
- Complex conjugation on Spec Z[i] has inertia of order 2 at the prime (1+i) with residue field F_2: the action is not tame. The scalar 2 equals 0 in that residue field.
- The trivial group acts tamely, admissibly and inertia specializingly on every scheme. Every inertia order is 1.
- For char k ≠ 2, Z/2 acting on the plane with doubled origin by y ↦ −y and swapping the origins is not inertia specializing: X^G is not closed (ILO X 3.1.1). The generic point of the fixed axis has inertia 2, while either origin has inertia 1.
- The identity element lies in the decomposition group of every point. Its residue action is also the identity.
- `Gal(F_{p²}/F_p)` acting on Spec `F_{p²}`: the decomposition group of the unique point is the whole group, the inertia group is trivial. The two group orders are 2 and 1, respectively.
- For S₃ acting freely on six disjoint copies of Spec F₂ by left multiplication, the group has order 6 but every inertia group has order 1, so the action is tame. The order of the whole group is not the tame-action test.

±1 acting on A^2_k (char k ≠ 2) has inertia G at the origin and trivial inertia elsewhere; the action is tame. Z/p acting on `A^1_{F_p}` by t ↦ t + 1 has trivial inertia everywhere, while for a ∈ F_p with a ≠ 0 the irreducible closed point t^p − t − a has decomposition group Z/p; Z/2 acting on Spec Z[i] by conjugation has inertia of order 2 at (1+i), so it is not tame.

*Needs:* Mathlib `MulAction.stabilizer`; Mathlib `AlgebraicGeometry.Scheme.residueField`; TauCetiRoadmap.SchemeAndStackFoundations §1.17; Tau Ceti `TauCeti.AffineInvariantQuotient.projection` and its finite-group API.

### PA.3.2 Galois alterations and tame Galois coverings

Let f : Y → X be an alteration of integral schemes and G = Aut_X(Y). f is Galois (de Jong) if Y/G → X is generically radicial, equivalently k(Y)/k(X) is a purely inseparable K/k(X) followed by a Galois k(Y)/K with Aut_X(Y) = Gal(k(Y)/K); separable Galois if moreover f is generically étale. A Galois covering is a finite separable Galois alteration, and it is tame if the action of Aut_X(Y) on Y is tame. ILO X 3.3.1 calls a G-equivariant alteration with trivial action on X, free action on the generic points and η_Y/G ≅ η_X a separable G-alteration.

Work under these precise hypotheses: X, Y integral noetherian; f an alteration.

The API records the following facts.

- The Galois alteration predicate requires a purely inseparable extension followed by a Galois extension with precisely the geometric automorphism group.
- A separable Galois alteration is a Galois alteration which is generically étale.
- A Galois covering is a finite separable Galois alteration.
- A tame Galois covering is one for which the geometric automorphism action is tame.
- For a Galois covering with X normal, Y/Aut_X(Y) → X is an isomorphism.
- For X normal integral noetherian with finite normalizations and L/k(X) finite Galois, Nor_L(X) → X is a Galois covering with group Gal(L/k(X)).
- A Galois covering whose group order is invertible on X is tame.

One proof route is as follows. Define via the function-field factorisation: Mathlib IsPurelyInseparable for K/k(X) and IsGalois for k(Y)/K, with Aut_X(Y) → Gal(k(Y)/K) an isomorphism. For Galois coverings use finiteness and generic étaleness; the quotient Y/G exists (finite morphisms are affine) and Y/G → X is a finite birational map, an isomorphism when X is normal.

(temkin17, §3.3.1, p. 118; §3.3.3, p. 119 (temkin17 line 884); ilo14, Exposé X, §3.3.1 and Remark 3.3.2, arXiv v1 p. 158 (ilo14 line 7288); dejong96, §7, p. 88 (dejong96 line 1447).)

**Checks.**

- Spec Z[i] → Spec Z is a Galois covering with group Z/2 that is not tame (inertia of order 2 at (1+i)). A Galois covering need not be tame.
- Spec Z[1/2, i] → Spec Z[1/2] is a tame Galois covering. Removing the fibre at 2 removes its wild inertia.
- The Frobenius of `A^1_{F_p}` is a Galois alteration (purely inseparable, trivial Galois part) but not a separable Galois alteration. The degrees for p = 2 and p = 3 are 2 and 3 despite automorphism group order 1.
- The identity of X is a tame Galois covering with trivial group. Its degree and inertia order are 1.
- Spec Z[∛2] → Spec Z is a finite separable alteration with Aut = 1 ≠ Gal of a Galois closure; it is not Galois. A nonnormal separable field extension is excluded.

Nor_L(X) → X is a Galois covering for X normal integral and L/k(X) finite Galois (G = Gal(L/k(X))).

*Needs:* §PA.0.3; §PA.3.1; Mathlib `IsGalois`; Mathlib `IsPurelyInseparable`; Mathlib `Algebra.IsSeparable`.

### PA.3.4 Wild primes set of an alteration

For an alteration f : Y → X of integral noetherian schemes, `P^w_{Y/X}` := `char(Val_{k(Y)}(X)′ ∩ Val^w_{k(Y)/k(X)})`, the residue characteristics of the valuations of k(Y) centred on X at which k(Y)/k(X) is wild. It is contained in char(X), and every element is at most deg f.

Work under these precise hypotheses: f an alteration of integral noetherian schemes (so k(Y)/k(X) is finite).

The API records the following facts.

- `P^w_{Y/X}` ⊆ ℕ.
- `P^w_{Y/X}` ⊆ char(X).
- p ∈ `P^w_{Y/X}` ⇒ p ≤ deg f.
- `P^w_{Y/X}` = ∅ ⇔ k(Y)/k(X) is X-tame.
- P^w is unchanged by modifications of Y and of X.

One proof route is as follows. Define from §PA.1.7 and §PA.2.1. Bound: if k(Y)/k(X) is wild at a point of residue characteristic p, the corresponding factor L_x^h/K^h of k(Y) ⊗ K^h is a henselian extension that is not tame, so its degree is divisible by p (a henselian extension of degree prime to the residue characteristic is tame); as [L_x^h : K^h] ≤ [k(Y) : k(X)], p ≤ deg f. The degree [k(Y) : k(X)] itself need not be divisible by p. And p is a residue characteristic of a valuation centred on X, hence of a point of X.

(temkin17, §3.3.5, p. 120 (temkin17 line 936); temkin17, §3.2.11, p. 117 (temkin17 line 936).)

**Checks.**

- For Spec Z[i] → Spec Z, P^w = {2}. The whole degree is not the definition of the wild set.
- For a modification, P^w = ∅. Its valued function-field extension has degree 1.
- For the Frobenius of `A^1_{F_p}`, P^w = {p} (purely inseparable extensions are wild at the trivial valuation). The trivial valuation already detects inseparability.
- For t ↦ t² on A^1_Q, P^w = ∅ even though the degree is 2: char(A^1_Q) = ∅. Every centred valuation contains Q and has residue characteristic 0.
- For the cubic field defined by T³ − T − 2, the discriminant is −104 and the reduction modulo 2 is T(T+1)². Its local degrees above 2 are 1 and 2, and the quadratic branch is wild; hence the wild prime 2 is at most the global degree 3 but does not divide 3. Replacing the degree bound by divisibility would fail.

Spec Z[i] → Spec Z has P^w = {2}.

*Needs:* §PA.1.7; §PA.2.1; §PA.2.2; §PA.0.3; §PA.0.1.

### PA.3.5 Tame Galois coverings after modification

Let X be a noetherian universally Japanese integral scheme and L/k(X) a finite Galois extension that is X-tame. Then there is a modification X′ → X such that Nor_L(X′) → X′ is a tame Galois covering.

Work under these precise hypotheses: X noetherian, universally Japanese, integral; L/k(X) finite Galois and X-tame.

One proof route is as follows. For every modification X_i of X, Y_i := Nor_L(X_i) → X_i is a G-Galois covering, G = Gal(L/k(X)) (Mathlib Scheme.Hom.normalization and SchemeAndStackFoundations §0.20). Let T_i ⊆ Y_i be the non-tame locus. T_i is closed: covering Y_i by G-stable affines, T_i = `⋃_{(H,p)}` Y_i^H ∩ Y_i(p) over subgroups H and primes p dividing |H|, a finite union of closed subschemes (§PA.3.1). If every T_j were nonempty, their preimages in RZ_L(Y), Y = Nor_L(X), would be nonempty closed and directed, so by quasi-compactness (§PA.1.4) some y lies over every T_j; the inertia groups at its centres stabilize to G′ with p | |G′|. But L/k(X) is y-tame, so the inertia of Spec O_y has order invertible in k(y) = colim k(y_j), contradicting p | |G′| = |G_y|.

(temkin17, Lemma 3.3.4 and proof, p. 119 (temkin17 line 902).)

If L/k(X) has degree invertible on X, X′ = X works.

*Needs:* Mathlib Scheme.Hom.normalization and SchemeAndStackFoundations §0.20; §PA.3.1; §PA.3.2; §PA.1.4; §PA.2.2.

### PA.3.6 Galois closures preserve S-tameness

Let L/K be a finite separable extension with Galois closure L′/K, T ⊆ Val_K, S := `ψ_{L/K}⁻¹(T)` and S′ := `ψ_{L′/K}⁻¹(T)`. Then L/K is S-tame if and only if L′/K is S′-tame.

Work under these precise hypotheses: L/K finite separable; L′ a Galois closure.

One proof route is as follows. S′-tame ⇒ S-tame: subextensions of tame extensions are tame. S-tame ⇒ S′-tame: let L_1, …, L_n ⊆ L′ be the K-conjugates of L. For a valuation of L′ in S′, the induced valuation of K lies in T, so for every K-isomorphism L_i ≅ L the induced valuation of L_i corresponds to a point of S; hence each L_i/K is tame there. The composite of tame extensions is tame, and L′ is the composite of the L_i, so L′/K is tame.

(temkin17, Lemma 3.3.7 and proof, p. 120 (temkin17 line 960).)

For K = Q, L = Q(∛2), T = Val_Q ∖ {Z_(2), Z_(3)}: L/K is S-tame and so is its Galois closure Q(∛2, ω).

*Needs:* §PA.2.2; §PA.2.4; Mathlib `IsGalois`.

### PA.3.7 Tame distillation of alterations

Let X be a noetherian universally Japanese integral scheme, Y → X an alteration and P = `P^w_{Y/X}` its wild primes set. Then there is an alteration Y′ → Y such that the composite Y′ → X factors as a tame Galois covering Y′ → X′ followed by a P-alteration X′ → X.

Work under these precise hypotheses: X noetherian, universally Japanese, integral; Y → X an alteration (Y integral).

One proof route is as follows. Put K = k(X), L = k(Y). Flatten Y → X by a blow-up X₁ → X (SchemeAndStackFoundations flattening_by_blowup); the strict transform is a flat alteration of X₁, hence finite, so Nor_L(X₁) is a modification of Y. Replace X, Y by X₁, Nor_L(X₁): Y = Nor_L(X). Apply tame distillation for fields (§PA.2.6) to L/K and the constructibly compact S = Val_L(X)′ (§PA.1.7): get L′/L and L′/K′/K with K′/K a P-extension and L′/K′ X-tame. X-tameness includes the trivial valuation, so L′/K′ is separable; replace L′ by its Galois closure over K′, still X-tame (§PA.3.6). L′/K′ is `Nor_{K′}(X)`-tame, so §PA.3.5 gives a modification X′ → `Nor_{K′}(X)` with Y′ = `Nor_{L′}(X′)` → X′ a tame Galois covering; X′ → X has degree [K′ : K], a P-number; Y′ → X factors through Y = Nor_L(X).

(temkin17, Theorem 3.3.6 and proof, p. 120 (temkin17 line 939); temkin17, §1.3.4, p. 102 (temkin17 line 219).)

If Y → X is tame (P = ∅) then X′ → X is a modification.

*Needs:* §PA.3.5; §PA.3.6; Mathlib Scheme.Hom.normalization and SchemeAndStackFoundations §0.20; §PA.3.4; §PA.2.6; §PA.1.7; §PA.0.4; TauCetiRoadmap.SchemeAndStackFoundations §§4.11–4.20.

### PA.3.8 Separable tame distillation of alterations

Let X be a noetherian universally Japanese integral scheme, Y → X a separable alteration and P = `P^w_{Y/X}`. Then there is a separable alteration Y′ → Y such that Y′ → X factors as a tame Galois covering Y′ → X′ followed by a separable P-alteration X′ → X.

Work under these precise hypotheses: X noetherian, universally Japanese, integral; Y → X a separable alteration.

One proof route is as follows. As in Theorem 3.3.6, but distil with §PA.2.7 inside a maximal separable P-extension, so K′/K is separable; then X′ → X is a separable P-alteration and Y′ → X is separable. The flattening, Galois-closure and Lemma 3.3.4 steps preserve separability.

(temkin17, Theorem 3.3.6, p. 120; Theorem 4.2.1 Step 4, p. 122 (temkin17 line 939).)

For X over a field of characteristic zero this is Theorem 3.3.6.

*Needs:* §PA.3.7; §PA.2.7; §PA.0.4.

### Examples

For the cover Spec Z[i] → Spec Z, inertia at (1+i) has order 2 and residue characteristic 2. Over Z[1/2] the cover is tame. Frobenius over F₃ has trivial automorphism group and purely inseparable degree 3, so the Galois alteration convention includes it but the Galois covering convention excludes it (temkin17 line 884).

### Dependencies

The statements and routes use §PA.0.1; §PA.0.3; §PA.0.4; §PA.1.4; §PA.1.7; §PA.2.1; §PA.2.2; §PA.2.4; §PA.2.6; §PA.2.7; Mathlib `MulAction.stabilizer`; Mathlib `AlgebraicGeometry.Scheme.residueField`; TauCetiRoadmap.SchemeAndStackFoundations §1.17; Tau Ceti `TauCeti.AffineInvariantQuotient.projection` and its finite-group API; Mathlib `IsGalois`; Mathlib `IsPurelyInseparable`; Mathlib `Algebra.IsSeparable`; TauCetiRoadmap.SchemeAndStackFoundations §§4.11–4.20.

## Layer PA.4: Log regular pairs and functorial modifications

### PA.4.1 Log regular pairs

A pair (X, Z), X a reduced locally noetherian scheme and Z ⊆ X closed with complement j : U → X, is log regular if the log structure `M_{(X,Z)}` := O_X ∩ j_*O_U^× associated with Z (the log structure of a closed subset, supplied by CrystallineCohomology CR.5:log-algebra) is fine and saturated, the fs log scheme (X, `M_{(X,Z)}`) is log regular (CR.5 log-regularity), and Z is exactly the complement of the triviality locus of `M_{(X,Z)}`. Conversely every log regular fs log scheme is of this form, with U its triviality locus (ILO VI §1.4).

Work under these precise hypotheses: X reduced locally noetherian; Z closed.

The API records the following facts.

- The log regular pair predicate requires `M_{(X,Z)}` fs, logarithmic regularity and Z exactly its nontriviality locus.
- X regular and Z an snc support ⇒ (X, Z) log regular.
- (X, ∅) is log regular ⇔ X is regular.
- If (X, Z) is log regular then X ∖ Z is dense and X is normal.
- A log regular fs log scheme (X, M) is (X, `M_{(X,Z)}`) for Z the non-triviality locus of M.
- The rank stratification X(i) by rank M̄^gp consists of regular locally closed subschemes of codimension i.

One proof route is as follows. Build `M_{(X,Z)}` from CR.5's log structures; for X regular and Z an snc support it is CR.5's divisorial-log structure, with étale-local charts N^s. Log regularity is CR.5's definition at geometric points: O_x/I_x regular and dim O_x = dim O_x/I_x + rank M̄_x^gp. If X is regular and Z an snc support, (X, Z) is log regular; if (X, ∅) is log regular then X is regular (CrystallineCohomology CR.5:log-algebra.4, trivial-log comparison).

(ilo14, Exposé VI, §§1.2–1.4, arXiv v1 p. 69 (ilo14 line 3050); ilo14, Exposé X, §3.2.1, arXiv v1 p. 158 (ilo14 line 7271); temkin17, §1.2.7, pp. 99–100 (temkin17 line 117).)

**Checks.**

- (A^2_k, V(xy)) is log regular, with M̄ ≅ N² at the origin. The dimension formula is 2 = 0 + 2.
- (X, ∅) is log regular for X regular, e.g. (Spec Z, ∅). The rank term is 0.
- (Spec k[x², x³], {x = 0}) is not log regular: the associated log structure is not fine. A boundary does not automatically give an fs chart.
- For Y = Spec k[u, v, w]/(uw − v²), the quotient of A^2_k by ±1 with u = x², v = xy, w = y² (char k ≠ 2), the pair (Y, V(v)) is log regular although Y is singular at the vertex; V(v) is the image of the axes V(xy). At the vertex the log dimension formula is 2 = 0 + 2, while the embedding dimension is 3.
- (A^2_k, {0}) is not log regular: the non-triviality locus of a log regular structure has pure codimension one. The point has codimension 2.

For the cusp over an infinite field k the classes of x² + a x³, a ∈ k, already give infinitely many indecomposable boundary sections modulo units; the boundary log structure is not fine. The cusp fails log regularity over any field, since log regular schemes are normal (temkin17 §1.2.7, temkin17 line 117; ilo14 VI §1.6).

*Needs:* TauCetiRoadmap.CrystallineCohomology CR.5:log-algebra.1–4 (log-structure); TauCetiRoadmap.CrystallineCohomology CR.5:log-algebra.1–4 (divisorial-log); TauCetiRoadmap.CrystallineCohomology CR.5:log-algebra.1–4 (log-regularity); TauCetiRoadmap.CrystallineCohomology CR.5:log-algebra.1–4 (saturated-monoid); TauCetiRoadmap.CrystallineCohomology CR.5:log-algebra.1–4 (fine-monoid); TauCetiRoadmap.CrystallineCohomology CR.5:log-algebra.1–4 (closed-subset log structure contract); §PA.0.8.

### PA.4.4 Normalized blow-ups of monoidal ideals

For a log regular fs scheme (X, M), prove that log ideals I ⊆ M correspond bijectively to the ideals I O_X they generate. Identify the underlying schemes of the supplied fine log blow-up and saturated log blow-up with `Bl_{I O_X}(X)` and its normalization, respectively, compatibly with strict morphisms of log regular fs schemes. The source and target of both comparison isomorphisms are over X.

Work under these precise hypotheses: (X, M) log regular fs and I a coherent log ideal; strict comparison maps have log regular fs source and target. The projectivity conclusion additionally assumes X quasi-excellent noetherian.

The API records the following facts.

- For (X, M) log regular fs: the underlying scheme of the saturated log blow-up I is `Bl_{I O_X}(X)^{nor}`.
- For strict f, the (saturated) log blow-up of f⁻¹I is the pullback of that of I.
- Saturated log blow-ups of log regular fs log schemes are log regular and log étale over the base.
- If X is quasi-excellent and noetherian, the normalized blow-up is a projective modification: normalization is finite.

One proof route is as follows. Use the log blow-up and saturation of LefschetzPencilsAndVanishingCycles §0.10 and the shared chart and fs-fibre-product carriers of CrystallineCohomology CR.5:log-algebra. On a chart P, compare the Rees algebra of the monoidal ideal with its pullback to O_X; logarithmic regularity gives the required Tor vanishing (ILO VIII Lemma 3.4.6). For quasi-excellent noetherian X, normalization is finite, so the resulting morphism is a projective modification.

(ilo14, Exposé VIII, §§3.3.7–3.3.11, arXiv v1 pp. 107–108 (ilo14 line 4761); ilo14, Exposé VIII, Lemma 3.4.3, §3.4.5 and Lemma 3.4.6, arXiv v1 pp. 110–111 (ilo14 line 4910).)

**Checks.**

- For (A^2_k, V(xy)) and the ideal (x, y) of N², the log blow-up is Bl_0 A^2 with the divisorial log structure of the total transform. In the x-chart, y = xv and the boundary is xv = 0.
- The log blow-up of the unit ideal M is the identity. The unit ideal is already invertible.
- The log blow-up of an invertible log ideal is the identity. Universality gives the identity on both sides.
- For the A_1 monoid P ⊂ Z² generated by (2,0), (1,1), (0,2) (Spec k[P] = Spec k[u, v, w]/(uw − v²)) and the ideal of P generated by (2,0) and (0,2), the unsaturated log blow-up, which is the ordinary blow-up along (u, w), has the non-normal chart Spec k[u, v, s]/(v² − u²s) with s = w/u; its saturation adjoins v/u and is the normalized blow-up, with regular chart Spec k[u, v/u]. The integral element v/u is absent from the ordinary blow-up chart and present in its normalization.

For (A^2_k, V(xy)) and I the maximal ideal of N², the log blow-up is the blow-up of the origin with its divisorial log structure.

*Needs:* §PA.4.1; TauCetiRoadmap.CrystallineCohomology CR.5:log-algebra.1–4 (log-chart); TauCetiRoadmap.CrystallineCohomology CR.5:log-algebra.1–4 (saturated-monoid); TauCetiRoadmap.CrystallineCohomology CR.5:log-algebra.1–4 (integral-log-fiber-product); TauCetiRoadmap.SchemeAndStackFoundations §§4.11–4.20; TauCetiRoadmap.LefschetzPencilsAndVanishingCycles §0.10.

### PA.4.5 Functorial saturated monoidal desingularization

There is a saturated monoidal desingularization functor F̃^log: to every log regular fs log scheme (X, M) (more generally every monoidally torsion-free fine log scheme) it assigns a tower of saturated log blow-ups X′ → X, finite on quasi-compact sources, after which every stalk of M̄ is free; for a log regular source, X′ is regular and its non-triviality locus is a normal crossings divisor (snc when the log structure is Zariski). It is functorial for monoidally smooth morphisms: for monoidally smooth φ : Y → X, F̃^log(Y) is the contraction of the strict transform of F̃^log(X), and for strict φ it is the pullback. For quasi-excellent noetherian X the underlying morphism X′ → X is a projective modification. On arbitrary log regular schemes retain the normalized tower and its functoriality, without inferring finite normalization. For a non-quasi-compact fine log scheme the tower is locally finite; a quasi-compact source has a finite tower. Freeness of characteristic monoids implies underlying regularity only under the log-regular hypothesis, not for arbitrary fine log schemes. For a non-quasi-compact fine log scheme the tower is locally finite; a quasi-compact source has a finite tower. Freeness of characteristic monoids implies underlying regularity only under the log-regular hypothesis, not for arbitrary fine log schemes.

Work under these precise hypotheses: (X, M) log regular fs, or a fine log scheme whose characteristic groups are torsion free. A map is monoidally smooth when its maps of characteristic monoid stalks are locally of the form P → P ⊕ ℕ^r; strict maps have r = 0.

One proof route is as follows. Resolve fans: a functorial saturated desingularization of fine torsion-free fans (ILO VIII §3.1–3.2, toric resolution through characteristic-zero functorial resolution of toric varieties, VIII §2). Descend to log schemes with fan charts by pullback, uniquely and functorially for monoidally smooth morphisms (VIII 3.3.15). For log regular log schemes the tower is a normalized blow-up tower of X (§PA.4.4), giving the desingularization F̃ with the stated functoriality (VIII 3.4.9); M̄ free means X regular with normal crossings boundary (VIII 3.4.4, VI 1.7).

(ilo14, Exposé VIII, Theorem 3.3.15, arXiv v1 p. 109 (ilo14 line 4849); ilo14, Exposé VIII, §3.4.8 and Theorem 3.4.9, arXiv v1 p. 111 (ilo14 line 4967); temkin17, proof of Theorem 4.2.1, Step 10, p. 123; Remark 4.3.4, p. 124 (temkin17 line 1074).)

**Checks.**

- With trivial characteristic monoid, the singular cusp remains singular under every monoidal blow-up. Freeness alone gives regularity only for a log regular source.

For X regular with snc boundary, F̃^log(X) is the identity. For the log regular pair (Spec k[u, v, w]/(uw − v²), V(v)), F̃^log is the toric resolution given by subdividing the cone of the A_1 singularity, whose underlying morphism is the blow-up of the vertex. (ILO VIII 1.2(b) identifies the log blow-up of the vertex with the canonical resolution of this toric singularity.)

*Needs:* §PA.4.4; §PA.4.1; TauCetiRoadmap.CrystallineCohomology CR.5:log-algebra.1–4 (log-chart); TauCetiRoadmap.CrystallineCohomology CR.5:log-algebra.1–4 (saturated-monoid); TauCetiRoadmap.LefschetzPencilsAndVanishingCycles §0.10.

### PA.4.6 Gabber modification for inertia specializing actions

Extend the Gabber modification of LefschetzPencilsAndVanishingCycles §0.10 from separated schemes to a noetherian quasi-excellent log regular fs scheme X with a finite, tame, generically free, inertia specializing G-action. With Z the logarithmic boundary and T the nonfree locus, construct a G-equivariant projective modification h : X′ → X with X′ log regular, boundary h⁻¹(Z ∪ T), and very tame action. Require compatibility under the localizations used to glue the modification; the map h itself need not be log smooth.

Work under these precise hypotheses: X noetherian, quasi-excellent, log regular fs; G finite, tame, generically free and inertia specializing.

One proof route is as follows. Use the separated modification and its localization compatibility from LefschetzPencilsAndVanishingCycles §0.10. The ILO X Theorem 3.1.5(i) proof checks the construction at local schemes, compatibility under specialization, descent of the resulting normalized blow-up tower, and a uniform normalization bound. Each specialization uses precisely the inclusion of inertia groups; this replaces separatedness.

(ilo14, Exposé VIII, Theorem 1.1, arXiv v1 p. 85; proof §§4–5, pp. 116–130 (ilo14 line 3681); ilo14, Exposé X, Theorem 3.1.5(i), arXiv v1 p. 156 (ilo14 line 7194); ilo14, Exposé VIII, §1.2, arXiv v1 p. 86 (ilo14 line 7194).)

For ±1 on (A^2_k, ∅), k algebraically closed of characteristic ≠ 2: the blow-up f : X′ → A^2_k of the origin satisfies all the conclusions, with (X′, Z′) log regular for Z′ the exceptional line and the action very tame. The morphism f is not log smooth (its fibre over the origin is Z′ with the log structure of N sending 1 to 0), although (X′, Z′) is log smooth over k (ILO VIII 1.2(a)).

*Needs:* §PA.4.5; LefschetzPencilsAndVanishingCycles §0.10, very tame quotients; LefschetzPencilsAndVanishingCycles §0.10, logarithmic actions; §PA.4.1; §PA.3.1; TauCetiRoadmap.SchemeAndStackFoundations §§4.11–4.20; TauCetiRoadmap.LefschetzPencilsAndVanishingCycles §0.10.

### PA.4.7 Gabber's preparation lemma for equivariant log smooth maps

Let f : X → Y be a G-equivariant log smooth map of fine log schemes, x a geometric point with image y, G the inertia group at x of order invertible on Y, acting trivially on M̄_x and M̄_y, and a : Y → Spec Λ[Q] an equivariant chart at y modelled on χ : G^ab ⊗ Q^gp → μ_N, with Q fine and Λ = Z[1/N, μ_N]. Then, étale-locally at x, a extends to an equivariant chart b : X → Spec Λ[P] with Q^gp → P^gp injective, torsion of the cokernel annihilated by an integer invertible on X, `X → Y ×_{Spec Λ[Q]} Spec Λ[P]` smooth, and after shrinking an equivariant étale map X → `(Y ×_{Λ[Q]} Λ[P])` ×_Λ Spec Sym_Λ(V) for a finitely generated projective Λ[G]-module V. If X, Y and Q are fs with Q sharp, P may be chosen fs with P^× torsion free.

Work under these precise hypotheses: G finite of order invertible on Y; f equivariant log smooth between fine log schemes; equivariant chart at y.

One proof route is as follows. Decompose `k(x) ⊗ Ω¹_{X/Y,x}` = V₀ ⊕ (k(x) ⊗ `M̄^gp_{X/Y,x}`) G-equivariantly (tameness), lift a basis of the second summand to elements t_i of M_x^gp with characters ψ_i. Build F as the push-out making the m-th powers of generators of M̄_x^gp land in Z ⊕ Q^gp (m invertible), set P := v⁻¹(M_x); Kato's chart extension gives b, and the Jacobian criterion (the chart Jacobian argument in ilo14, proof of Proposition X 1.2) shows smoothness of the strict map b′. Lift V₀ to a projective Λ[G]-module (the equivariant lifting in that same proof) to get the étale map to the polynomial factor; saturate and split off the torsion of P^× for the fs refinement.

(ilo14, Exposé X, Proposition 1.2 and proof, arXiv v1 pp. 136–139 (ilo14 line 6149).)

For G = 1, Y a field with trivial log structure and X log smooth with X regular: X is smooth over Y and the boundary is a relative snc divisor (used in ILO X 2.3 Step 3).

*Needs:* TauCetiRoadmap.CrystallineCohomology CR.5:log-algebra.1–4 (log-smooth); TauCetiRoadmap.CrystallineCohomology CR.5:log-algebra.1–4 (log-smooth-chart-criterion); TauCetiRoadmap.CrystallineCohomology CR.5:log-algebra.1–4 (log-chart); TauCetiRoadmap.CrystallineCohomology CR.5:log-algebra.1–4 (saturated-monoid); LefschetzPencilsAndVanishingCycles §0.10, logarithmic actions.

### PA.4.8 The relative Gabber modification without separatedness

For a G-equivariant log smooth map f : (X, Z) → (S, W) of noetherian quasi-excellent log regular fs pairs, with G finite and trivial on S and its action on X tame, generically free and inertia specializing, extend the relative Gabber modification of LefschetzPencilsAndVanishingCycles §0.10 to this non-separated setting. Construct a G-equivariant projective h : X′ → X, with Z′ = h⁻¹(Z ∪ T) for the nonfree locus T, such that X′ is log regular, G acts very tamely, and (X′, Z′) → (S, W) is log smooth; when G acts admissibly, its quotient pair is log smooth over (S, W).

Work under these precise hypotheses: G finite, trivial on S; X, S noetherian, qe, log regular; f log smooth; G tame and generically free on X; G-action separated or inertia specializing.

One proof route is as follows. Use the absolute extension and the preparation lemma. The separated relative theorem is supplied by LefschetzPencilsAndVanishingCycles §0.10; its log smoothness checks are local on X and extend to the inertia specializing tower (ILO X Theorem 3.1.5(ii)). Kummer étale descent of log smoothness gives the quotient statement (ILO X Theorem 1.11).

(ilo14, Exposé X, Theorem 1.1, arXiv v1 pp. 135–136; proof §§1.3–1.8, pp. 139–148 (ilo14 line 6117); ilo14, Exposé X, Theorem 1.11, p. 148; Theorem 3.1.5(ii), p. 156 (ilo14 line 6778); temkin17, §1.3.5, p. 102; proof of Theorem 4.2.1, Step 10, p. 123 (temkin17 line 221).)

For S = Spec k with trivial log structure and X smooth over k with snc Z, the conclusion gives a very tame model whose quotient is log smooth over k, the input to Gabber's ℓ′ theorem over a field.

*Needs:* §PA.4.6; §PA.4.7; LefschetzPencilsAndVanishingCycles §0.10, very tame quotients; TauCetiRoadmap.CrystallineCohomology CR.5:log-algebra.1–4 (log-smooth); TauCetiRoadmap.CrystallineCohomology CR.5:log-algebra.1–4 (kummer-morphism); TauCetiRoadmap.CrystallineCohomology CR.5:log-algebra.1–4 (log-smooth-over-log-regular); TauCetiRoadmap.LefschetzPencilsAndVanishingCycles §0.10.

### PA.4.9 Log smoothness for intermediate boundaries

Let X and S be regular, W ⊆ S and Z ⊆ X snc supports, and f : X → S with f⁻¹(W) ⊆ Z such that (X, Z) → (S, W) is log smooth. Then for every snc support Z′ with f⁻¹(W) ⊆ Z′ ⊆ Z that is a union of components of Z, (X, Z′) → (S, W) is log smooth.

Work under these precise hypotheses: X, S regular; Z, W snc supports; f⁻¹(W) ⊆ Z′ ⊆ Z, Z′ a union of components of Z.

One proof route is as follows. Work étale-locally at a geometric point; take the chart N^r of (S, W) and by Gabber's preparation lemma (G = 1) an fs chart Q → P of f with X → `S ×_{Z[Q]} Z[P]` smooth, P^× torsion free, torsion of Coker φ^gp killed by n invertible. Localize P so that P ≅ N^t ⊕ Z^u with the N^t factor given by the branches of Z; the image of Q lands in the factor P′ of the branches of Z′ (since f⁻¹(W) ⊆ Z′). Spec Z[P] → Spec Z[P′ ⊕ P^×] is smooth, so the chart φ′ : Q → P′ ⊕ P^× satisfies Kato's criterion (CR.5 log-smooth-chart-criterion).

(ilo14, Exposé X, Lemma 3.5.2 and proof, arXiv v1 p. 165 (ilo14 line 7655).)

Taking Z′ = Z recovers the hypothesis; Z′ = f⁻¹(W) gives the minimal boundary when that support is itself a union of components of Z and is snc.

*Needs:* §PA.4.7; TauCetiRoadmap.CrystallineCohomology CR.5:log-algebra.1–4 (log-smooth-chart-criterion); §PA.0.8.

### PA.4.10 Local forms of log smooth maps to points and traits

Let f : (X̃, Ẽ) → (S′, W′) be log smooth with X̃ regular and Ẽ an snc support. (i) If S′ = Spec k′ is a field with W′ = ∅, then X̃ is smooth over k′ and Ẽ is a relative strict normal crossings divisor. (ii) If S′ is a regular one-dimensional scheme and W′ = Σ a finite set of closed points with Ẽ ⊇ f⁻¹(Σ), then outside Σ, X̃ → S′ is smooth with Ẽ a relative normal crossings divisor, and étale-locally at a point over s′ ∈ Σ the pair (X̃, Ẽ) is (`S′[u_1^{±1}, …, u_s^{±1}, t_1, …, t_n]/(u^b t^a − π)`, V(t_1 ⋯ t_m)), 1 ≤ r ≤ m ≤ n, with gcd(p, a_1, …, a_r, b_1, …, b_s) = 1 for p the characteristic exponent of k(s′) and π a uniformizer. Here t₁,…,t_r cut out the reduced special fibre, and `V(t_{r+1} ⋯ t_m)` is only the horizontal boundary; an empty product is 1. The a_i are positive, the unit exponents b_j are integers, and the invertibility condition concerns the torsion of the chart cokernel. Here t₁,…,t_r cut out the reduced special fibre, and `V(t_{r+1} ⋯ t_m)` is only the horizontal boundary; an empty product is 1. The a_i are positive, the unit exponents b_j are integers, and the invertibility condition concerns the torsion of the chart cokernel.

Work under these precise hypotheses: f log smooth; X̃ regular; Ẽ snc; base a field or a regular one-dimensional scheme.

One proof route is as follows. Apply Gabber's preparation lemma with G = 1: (i) Q = {1}, P^× torsion free, gives X̃ étale over an affine space times Spec Λ[P] with P free on the branches, i.e. smooth with relative snc boundary. (ii) Q = N with 1 ↦ π, and P = P^× ⊕ P₁ with P^× free abelian and P₁ ≅ N^m (the branches of Ẽ through the point); the image of 1 in P gives the exponents (b_j) on the unit coordinates and (a_i) on the branches, the invertibility of the torsion of Coker(Z → P^gp) gives gcd(p, a, b) = 1, and the horizontal part of Ẽ is cut out by further coordinates t_j. ILO prints the two ranks inconsistently (the unit/branch rank convention).

(ilo14, Exposé X, Step 3 of §2.3, arXiv v1 p. 152; end of §2.6, pp. 154–155; §3.5.3, pp. 165–166 (ilo14 line 6965).)

**Checks.**

- For xy = π over a trait, the total boundary is V(xy), the horizontal boundary is empty, and the chart is ℕ → ℕ², 1 ↦ (1,1), with cokernel ℤ. Deleting the vertical branches would give the wrong source log structure.
- For a trait in residue characteristic p and the unit-coordinate chart π = u t^p, the exponents are (p,1), so the cokernel has no torsion and the log morphism is smooth despite p dividing the vertical exponent. A condition using only gcd(p,a_i) would fail.

For X̃ = Spec Z_p[x, y]/(xy − p) over Spec Z_p with Ẽ the special fibre, the local form has a_1 = a_2 = 1.

*Needs:* §PA.4.7; TauCetiRoadmap.CrystallineCohomology CR.5:log-algebra.1–4 (log-smooth-chart-criterion).

### Examples

For the sign action on A² with axes boundary, the invariant ring is k[u,v,w]/(uw−v²); its closed log stratum has dimension 0 and characteristic rank 2. Blowing up the vertex resolves the underlying surface. On a trait chart xy = π, the total boundary has both x and y branches and the chart cokernel is ℤ (ilo14 lines 3681, 4910 and 6985).

### Dependencies

The statements and routes use §PA.0.8; §PA.3.1; TauCetiRoadmap.CrystallineCohomology CR.5:log-algebra.1–4 (log-structure); TauCetiRoadmap.CrystallineCohomology CR.5:log-algebra.1–4 (divisorial-log); TauCetiRoadmap.CrystallineCohomology CR.5:log-algebra.1–4 (log-regularity); TauCetiRoadmap.CrystallineCohomology CR.5:log-algebra.1–4 (saturated-monoid); TauCetiRoadmap.CrystallineCohomology CR.5:log-algebra.1–4 (fine-monoid); TauCetiRoadmap.CrystallineCohomology CR.5:log-algebra.1–4 (closed-subset log structure contract); TauCetiRoadmap.CrystallineCohomology CR.5:log-algebra.1–4 (log-chart); TauCetiRoadmap.CrystallineCohomology CR.5:log-algebra.1–4 (integral-log-fiber-product); TauCetiRoadmap.SchemeAndStackFoundations §§4.11–4.20; TauCetiRoadmap.CrystallineCohomology CR.5:log-algebra.1–4 (log-smooth); TauCetiRoadmap.CrystallineCohomology CR.5:log-algebra.1–4 (log-smooth-chart-criterion); TauCetiRoadmap.CrystallineCohomology CR.5:log-algebra.1–4 (kummer-morphism); TauCetiRoadmap.CrystallineCohomology CR.5:log-algebra.1–4 (log-smooth-over-log-regular).

## Layer PA.5: Stable modification and resolution of relative curves

### PA.5.1 Multipointed curves and their stable modifications

Let S be a scheme. A multipointed S-curve (C, D) is a pair of flat finitely presented morphisms C → S and D → S of pure relative dimensions one and zero with a closed immersion D → C over S; C need not be proper or separated over S. It is semistable if C → S is flat with geometric fibres having at most ordinary double points, D → S is étale and D misses the non-smooth locus of C → S. A modification (C′, D′) → (C, D) is a pair of modifications (proper, isomorphisms on schematically dense opens); it is semistable if (C′, D′) is, and stable if moreover no geometric fibre C′_s has an exceptional component (a P^1 meeting D′_s ∪ `(C′_s)^{sing}` in at most two points and contracted to a point of C_s). For S integral with generic point η, an η-modification is one that is an isomorphism over η.

Work under these precise hypotheses: S a scheme (integral, quasi-compact and quasi-separated for η-modifications).

The API records the following facts.

- (C → S, D → S, D ↪ C) flat finitely presented of relative dimensions 1 and 0.
- Semistability means nodal geometric fibres, with D étale and disjoint from the nonsmooth locus.
- Pairs of modifications compatible with D ↪ C.
- A stable modification is semistable and has no contracted exceptional component in any geometric fibre.
- Semistability is stable under arbitrary base change S′ → S.
- (C, D) is semistable ⇔ all geometric fibres are semistable multipointed curves.
- For C → S proper with geometrically connected fibres, after an étale base change splitting the finite étale marking D into ordered sections, the semistable pair gives a semistable pointed curve of StableReduction Layer 3.

One proof route is as follows. Define the predicates fibrewise; semistability is a property of geometric fibres by the fibre criterion of étaleness for D. For proper C with geometrically connected fibres, D is finite étale in the semistable case. After an étale cover splitting D into n ordered sections, compare with the semistable pointed curves of StableReduction Layer 3. Stability of a modification concerns only contracted components and differs from stability of a pointed curve: the identity of an unmarked P¹ is a stable modification. For a semistable pair, define the invertible sheaf `ω_{(C,D)/S}` = `ω_{C/S}(D)` locally from the relative complete-intersection description; it commutes with base change.

(temkin10, §1.2, arXiv v3 pp. 2–3 (temkin10 line 57); ilo14, Exposé X, §3.2.2, arXiv v1 p. 158 (ilo14 line 7276).)

**Checks.**

- (A^1_S, ∅) is a semistable multipointed S-curve and the identity is a stable modification. Stability of a modification tests only contracted components.
- Over a DVR R with uniformizer π, (Spec R[u, v]/(uv − π), ∅) is semistable, with a node in the special fibre. The special fibre has two branches and the generic fibre is smooth.
- (Spec k[x, y]/(y² − x³), ∅) over k is not semistable: the cusp is not an ordinary double point. The tangent cone is a double line, not two transverse branches.
- Blowing up a smooth point of the special fibre of A^1_R over a DVR gives a semistable modification that is not stable: the exceptional P^1 meets the rest of the fibre in one point and is contracted. The exceptional dualizing degree is −2 + 1 = −1.
- A marking D through the node of Spec R[u, v]/(uv − π) is not allowed. A marking must be étale and lie in the smooth locus.
- For C = P¹_k and D = ∅, the identity is a stable modification although deg ω_C = −2 and C is not a stable pointed curve. Relative ampleness for the identity imposes no positive-degree condition on C itself.

(A^1_S, ∅) with A^1 → S is a semistable multipointed curve; (Spec O_S[u, v]/(uv − π), ∅) over a DVR is semistable but not smooth.

*Needs:* TauCetiRoadmap.StableReduction Layer 3; Mathlib `AlgebraicGeometry.Flat`; Mathlib `AlgebraicGeometry.Etale`; TauCetiRoadmap.SchemeAndStackFoundations §§4.11–4.20.

### PA.5.2 Stable modification theorem: projectivity

For a multipointed S-curve (C, D) with a semistable modification (C′, D′), the sheaf `ω_{(C′,D′)/S}` is C-ample if and only if the modification is stable. In particular every stable modification C^st → C is projective.

Work under these precise hypotheses: (C, D) a multipointed S-curve; (C′, D′) → (C, D) a semistable modification.

One proof route is as follows. Relative ampleness is checked on fibres C′_x over points x ∈ C closed in their S-fibre (the fibrewise ampleness argument in temkin10, proof of Theorem 1.1); pass to a geometric point and use base change of ω. The reduced fibre Z over x is a proper connected semistable curve; with E the points smooth in Z but singular in C′_s, non-exceptionality of its components is classical stability of (Z, D ⊔ E), so ω restricted to Z, which is `ω_{(Z, D ⊔ E)}`, is ample. If the modification is not stable, ω has degree ≤ 0 on an exceptional component, so it is not C-ample.

(temkin10, Theorem 1.1 and proof, arXiv v3 p. 3 (temkin10 line 104).)

For a semistable (C, D) the identity is a stable modification, and `ω_{(C,D)/S}` is C-ample relative to the identity.

*Needs:* §PA.5.1; TauCetiRoadmap.StableReduction Layer 3.

### PA.5.3 Stable modification theorem: existence and uniqueness

Let S be integral, quasi-compact and quasi-separated with generic point η. (Uniqueness) If S is normal and (C, D) admits a stable η-modification (C^st, D^st), it is minimal: every semistable modification of (C, D) factors uniquely through it; so it is unique up to unique isomorphism and an isomorphism over the semistable locus. (Existence) For every multipointed S-curve (C, D) whose generic fibre (C_η, D_η) is semistable there are a generically étale alteration S′ → S and a stable η-modification (C′^st, D′^st) → (C, D) ×_S S′.

Work under these precise hypotheses: S integral qcqs (normal for uniqueness); (C, D) a multipointed S-curve with semistable generic fibre.

One proof route is as follows. Include as an auxiliary target the following valued-field uniformization: if K/k is finitely generated of transcendence degree one, k is separably closed, and the coarsened valuation ring k K° has centre on a smooth point of the normal projective k-model of K, there is x ∈ K transcendental over k such that K/k(x) is finite unramified (temkin10, Theorem 2.1.8, pp. 9–10, temkin10 line 445). Its proof includes the analytic uniformization of Theorem 6.3.1: a one-dimensional analytic k-field satisfying Assumption 6.2.1 has an unramified topological generator; in positive residue characteristic over algebraically closed k, every special coset has a moderately ramified generator, and types 2 and 3 are stable, meaning every finite extension is defectless. Assumption 6.2.1 means either k algebraically closed, or the field is type 4 and k-split, k is its own maximal moderately ramified extension, and, for positive residue characteristic p, k° = p k° + (k°)^p. The terms one-dimensional analytic field, type and special coset have the exact definitions of temkin10 §§2.1, 6.1–6.2; these auxiliary objects are included in this target (temkin10 lines 2031, 2333). Include as an auxiliary target the following valued-field uniformization: if K/k is finitely generated of transcendence degree one, k is separably closed, and the coarsened valuation ring k K° has centre on a smooth point of the normal projective k-model of K, there is x ∈ K transcendental over k such that K/k(x) is finite unramified (temkin10, Theorem 2.1.8, pp. 9–10, temkin10 line 445). Its proof includes the analytic uniformization of Theorem 6.3.1: a one-dimensional analytic k-field satisfying Assumption 6.2.1 has an unramified topological generator; in positive residue characteristic over algebraically closed k, every special coset has a moderately ramified generator, and types 2 and 3 are stable, meaning every finite extension is defectless. Assumption 6.2.1 means either k algebraically closed, or the field is type 4 and k-split, k is its own maximal moderately ramified extension, and, for positive residue characteristic p, k° = p k° + (k°)^p. The terms one-dimensional analytic field, type and special coset have the exact definitions of temkin10 §§2.1, 6.1–6.2; these auxiliary objects are included in this target (temkin10 lines 2031, 2333). The one-dimensional valued-field uniformization input below gives stable modification over spectra of finite-height valuation rings with separably closed fraction field (§4), glued from non-proper pieces using uniqueness. Globalize over an integral base by the Riemann–Zariski space of S (quasi-compactness, §PA.1.4): finitely many generically étale alterations S′_i → S with opens U_i centring the valuations, glued by uniqueness of stable modifications over a common generically étale alteration (Temkin 2010 §5).

(temkin10, Theorem 1.2, Corollary 1.3 and Theorem 1.5, arXiv v3 pp. 3–4; proofs §§4–5 (temkin10 line 140).)

For S the spectrum of a DVR and C proper smooth over η of genus ≥ 2 this is the Deligne–Mumford stable reduction theorem after a finite separable extension.

*Needs:* §PA.5.1; §PA.5.2; §PA.1.4; §PA.0.3.

### PA.5.4 Equivariance of stable modification

In the existence theorem, if S′ is normal, the natural action of Aut_S(C, D) × Aut_S(S′) on (C, D) ×_S S′ lifts equivariantly to the stable modification (C′^st, D′^st).

Work under these precise hypotheses: As in PA.5/stable-modification-existence, with S′ normal.

One proof route is as follows. Each automorphism carries the stable η-modification to a stable η-modification of the same curve; by uniqueness over the normal base S′ it is the unique isomorphism, and the cocycle condition follows from uniqueness.

(temkin10, Corollary 1.6, arXiv v3 p. 4 (temkin10 line 156).)

For a G-Galois generically étale S′ → S the G-action on (C, D) ×_S S′ lifts to the stable model; used in ILO X 3.4 Step 5.

*Needs:* §PA.5.3.

### PA.5.5 Semistable multipointed curves are log smooth

Let (S, W) be a log regular pair and (C, D) a semistable multipointed S-curve with f : C → S smooth over S ∖ W. Then (C, D ∪ f⁻¹(W)) is a log regular pair and (C, D ∪ f⁻¹(W)) → (S, W) is log smooth.

Work under these precise hypotheses: (S, W) log regular; (C, D) semistable; f smooth over S ∖ W.

One proof route is as follows. The question is local on C and trivial on the smooth locus and over S ∖ W. At a non-smooth geometric point x over y, the strict henselization of `O_{C,x}` is `O_{S,y}{u, v}/(uv − h)` with h invertible on S ∖ W, hence h ∈ `M_{S,y}` (log regularity); write h = εa with a in the characteristic monoid P. The push-out Q of N² ← N → Z × P (1 ↦ (1,1), 1 ↦ (1, a)) gives a chart of f; the map Z × P → Q is injective with cokernel Z, so Kato's criterion (CR.5 log-smooth-chart-criterion) gives log smoothness, and log regularity of C follows from CrystallineCohomology CR.5:log-algebra.4, preservation of log regularity. The boundary is the boundary over a non-trivially logged base: a nodal curve over a trivially logged field is not log smooth with its marking alone.

(ilo14, Exposé X, §3.2.1 and Proposition 3.2.3, arXiv v1 p. 158 (ilo14 line 7271); ilo14, Exposé VI, Proposition 1.9 and proof, arXiv v1 p. 70 (ilo14 line 3126).)

(Spec Z_p[u, v]/(uv − p), V(p)) → (Spec Z_p, V(p)) is log smooth.

*Needs:* §PA.5.1; §PA.4.1; TauCetiRoadmap.CrystallineCohomology CR.5:log-algebra.1–4 (log-smooth-chart-criterion); TauCetiRoadmap.CrystallineCohomology CR.5:log-algebra.1–4 (log-smooth-over-log-regular).

### PA.5.6 Resolution of relative curves by P-alterations

Let S be a noetherian quasi-excellent scheme with scheme of generic points η, f : X → S a maximally dominating morphism of finite type and Z ⊆ X nowhere dense closed, with X_η a smooth curve over η and Z_η étale over η. Let P be a set of primes with char(S) ⊆ P, and assume S universally P-resolvable (resp. universally separably P-resolvable). Then there are a projective P-alteration (resp. separable projective P-alteration) a : S′ → S, a projective modification b : X′ → `(X ×_S S′)^{pr}` of the proper transform, and snc supports W′ ⊆ S′, Z′ ⊆ X′ with S′, X′ regular, f′ : X′ → S′ pseudo-projective, (X′, Z′) → (S′, W′) log smooth and Z′ = c⁻¹(Z) ∪ f′⁻¹(W′), c : X′ → X. 

The same conclusion also holds with char(X) ⊆ P in place of char(S) ⊆ P, retaining universal P-resolvability of S and, for the separable choice of a, universal separable P-resolvability. The shrinking and extension argument below supplies this full variant.

Work under these precise hypotheses: S noetherian qe; f maximally dominating of finite type; X_η smooth curve, Z_η étale; char(S) ⊆ P; S universally (separably) P-resolvable.

One proof route is as follows. Step 0–2: reduce to S integral normal, f flat quasi-projective (§PA.0.7, §PA.0.6), Z = Z^h ∪ Z^v with Z^h flat. Step 3: stable modification (§PA.5.3, §PA.5.2) after a separable alteration S̄ → S makes (X̄, Z̄^h) a semistable multipointed S̄-curve, X̄ → X ×_S S̄ projective. Step 4: enlarge S̄ (semistability is preserved by base change) and apply tame distillation of alterations (§PA.3.7; separable variant §PA.3.8 in the separable case) so that S̄ → S′ is a tame Galois covering and S′ → S a P-alteration — here `P^w_{S̄/S}` ⊆ char(S) ⊆ P; replace S by S′. Steps 5–9: lift the Galois group G to X̄ (§PA.5.4); the action is inertia specializing (G-stable separated covers, §PA.3.1); flatten S̄ → S to make it finite and normalize; choose W ⊊ S with S̄ → S étale off W, f(Z^v) ⊆ W and f smooth off W; resolve (S, W) by universal P-resolvability. Step 10: (S̄, W̄) → (S, W) is Kummer étale (CR.5 log-abhyankar); with T̄ = Z̄ ∪ f̄⁻¹(W̄), (X̄, T̄) → (S̄, W̄) is log smooth (§PA.5.5), so (X̄, T̄) → (S, W) is log smooth and (X̄, T̄) log regular (CR.5; the composite log smooth map); apply Gabber's log smooth modification theorem (§PA.4.8) to the tame inertia-specializing G-action and take the quotient, then monoidal desingularization (§PA.4.5). The char(X) ⊆ P form also belongs to this target. Work over each normalized irreducible component of S hit by a component of X, so the induced finite-type map is dominant; an unused base component is resolved using universal P-resolvability with empty source, and the empty-source case is treated directly. On each active component set S₀ equal to S minus the fibres at char(S) ∖ char(X); the difference is finite for the resulting dominant map, and f factors through S₀. Run distillation over S₀, extend its finite field extensions by normalization over S, extend modifications by closure of their blow-up centres, and use universal P-resolvability over S. Tameness is required only over f(X). This supplies the full source generality without treating wild primes on empty fibres as elements of P. The char(X) ⊆ P form also belongs to this target. Work over each normalized irreducible component of S hit by a component of X, so the induced finite-type map is dominant; an unused base component is resolved using universal P-resolvability with empty source, and the empty-source case is treated directly. On each active component set S₀ equal to S minus the fibres at char(S) ∖ char(X); the difference is finite for the resulting dominant map, and f factors through S₀. Run distillation over S₀, extend its finite field extensions by normalization over S, extend modifications by closure of their blow-up centres, and use universal P-resolvability over S. Tameness is required only over f(X). This supplies the full source generality without treating wild primes on empty fibres as elements of P.

(temkin17, Theorem 4.2.1 and proof, pp. 121–123 (temkin17 line 999); ilo14, Exposé X, Theorem 3.4 and proof, arXiv v1 pp. 159–162 (ilo14 line 7345).)

**Checks.**

- Let S = Spec Z_(2) ⊔ Spec Q and let X = A¹_Q map to the second component, with Z empty and P empty. Then char(S) = {2} and char(X) = ∅, so the char(X) variant applies while the char(S) condition fails. The identity alterations, with X′ = X, give the conclusion; the unused component of S is regular and needs no alteration. This detects discarding the full variant or applying a dominant-image argument to every base component.

For P = {ℓ}′ with ℓ invertible on S this is ILO X Theorem 3.4. For S = Spec k, X a smooth quasi-projective curve over k and Z ⊆ X finite étale over k, one may take a = id, X′ = X, W′ = ∅ and Z′ = Z: (X, Z) → (Spec k, ∅) is already log smooth.

*Needs:* §PA.0.9; §PA.0.4; §PA.0.5; §PA.0.7; §PA.0.6; §PA.0.8; §PA.3.7; §PA.3.8; §PA.3.1; Mathlib Scheme.Hom.normalization and SchemeAndStackFoundations §0.20; §PA.5.3; §PA.5.2; §PA.5.4; §PA.5.5; §PA.4.8; §PA.4.5; §PA.4.1; TauCetiRoadmap.CrystallineCohomology CR.5:log-algebra.1–4 (log-abhyankar); TauCetiRoadmap.CrystallineCohomology CR.5:log-algebra.1–4 (log-smooth-over-log-regular); TauCetiRoadmap.SchemeAndStackFoundations §§4.11–4.20.

### Examples

Blowing up a smooth special-fibre point on A¹_R creates an exceptional P¹ meeting the other component once; its dualizing degree is −1, so the modification is semistable and fails stability. At a node uv = π the logarithmic chart 1 ↦ (1,1) has torsion-free cokernel (temkin10 line 104; ilo14 line 3126).

### Dependencies

The statements and routes use Mathlib Scheme.Hom.normalization and SchemeAndStackFoundations §0.20; §PA.0.3; §PA.0.4; §PA.0.5; §PA.0.6; §PA.0.7; §PA.0.8; §PA.0.9; §PA.1.4; §PA.3.1; §PA.3.7; §PA.3.8; §PA.4.1; §PA.4.5; §PA.4.8; TauCetiRoadmap.StableReduction Layer 3; Mathlib `AlgebraicGeometry.Flat`; Mathlib `AlgebraicGeometry.Etale`; TauCetiRoadmap.SchemeAndStackFoundations §§4.11–4.20; TauCetiRoadmap.CrystallineCohomology CR.5:log-algebra.1–4 (log-smooth-chart-criterion); TauCetiRoadmap.CrystallineCohomology CR.5:log-algebra.1–4 (log-smooth-over-log-regular); TauCetiRoadmap.CrystallineCohomology CR.5:log-algebra.1–4 (log-abhyankar).

## Layer PA.6: Prime-to-degree desingularization

### PA.6.1 P-altered desingularization of morphisms

Let f : X → S be a maximally dominating morphism of finite type between noetherian quasi-excellent schemes, Z ⊆ X nowhere dense closed, and P a set of primes with char(S) ⊆ P such that S is universally P-resolvable. Then there are projective P-alterations a : S′ → S and b : X′ → X with regular sources, a pseudo-projective f′ : X′ → S′ with f ∘ b = a ∘ f′, and snc supports W′ ⊆ S′, Z′ ⊆ X′ with Z′ = b⁻¹(Z) ∪ f′⁻¹(W′) and (X′, Z′) → (S′, W′) log smooth.

Work under these precise hypotheses: f maximally dominating of finite type; X, S noetherian qe; char(S) ⊆ P; S universally P-resolvable.

One proof route is as follows. Steps 1–2: normalize reduced components. Use non-separated Chow (§PA.0.7) to obtain a projective modification whose map to S factors through a local isomorphism into an S-projective scheme; carry that factorization through the argument, since a non-separated source cannot simply be made projective over S by a surjective modification. Step 3: it suffices to get Z′ ⊇ b⁻¹(Z) ∪ f′⁻¹(W′); then Z″ := b⁻¹(Z) ∪ f′⁻¹(W′) — after first replacing Z by the support of the Cartier divisor obtained by blowing up X along Z, so that b⁻¹(Z) is a Cartier support — is a union of components of Z′ (§PA.0.8), and (X′, Z″) → (S′, W′) is log smooth by §PA.4.9. For the perfect-field assertion, Step 4: if S = Spec k with k finite, pass to an infinite P-extension k̄/k (P ∋ char k is nonempty) and descend from k̄ by limits (SchemeAndStackFoundations §0.9 finite-presentation descent). Induction on d = trdeg(k(X)/k(S)), d = 0 trivial. Step 5: after a projective modification factor X → Y → S with Y → S projective, X → Y maximally dominating of relative dimension one; make X_η, Z_η smooth (étale) over η = generic point of Y, by a Bertini argument over an infinite perfect k (SchemeAndStackFoundations §4.13 bertini_smoothness, §4.18 generic_projection) or in general by a purely inseparable alteration of Y. Step 6: Y is universally P-resolvable by the induction hypothesis (statement (i) in relative dimension d − 1, §PA.6.2 argument); apply resolution of relative curves (§PA.5.6) to X → Y, then the induction hypothesis to Y″ → S, and take the fs fibre product (CR.5 integral-log-fiber-product) of (X″, Z″) → (Y″, V″) with (Y′, V′) → (Y″, V″): it is log smooth over (Y′, V′), hence log regular (CR.5 log-smooth-over-log-regular), and its saturation is finite over the ordinary fibre product; the further alteration degree comes from the base-change alteration, not from a finite map to X″ without base change. Apply monoidal desingularization (§PA.4.5) to get X′ regular with snc Z′ (Zariski log structure); X′ → X is a projective P-alteration (generically a base change of the P-alteration Y′ → Y″).

(temkin17, Theorem 4.3.1(ii) and proof, pp. 123–124 (temkin17 line 1078); ilo14, Exposé X, Theorem 3.5 and proof, arXiv v1 pp. 162–165 (ilo14 line 7486).)

For P = {ℓ}′ and ℓ invertible on S this is ILO X Theorem 3.5(ii). For S = Spec Q (char(S) = ∅, P = ∅) the generic degrees are 1; for integral schemes the alterations are projective modifications, giving desingularization of morphisms of Q-varieties. For f = id_S with S regular and Z an snc support, a = b = id, W′ = Z′ = Z.

*Needs:* §PA.0.9; §PA.0.4; §PA.0.7; §PA.0.8; §PA.0.5; §PA.5.6; §PA.4.9; §PA.4.5; TauCetiRoadmap.CrystallineCohomology CR.5:log-algebra.1–4 (integral-log-fiber-product); TauCetiRoadmap.CrystallineCohomology CR.5:log-algebra.1–4 (log-smooth-over-log-regular); TauCetiRoadmap.SchemeAndStackFoundations §0.9, noetherian approximation and finite-presentation descent; TauCetiRoadmap.SchemeAndStackFoundations §§4.11–4.20.

### PA.6.2 Inheritance of universal P-resolvability

Let f : X → S be a maximally dominating morphism of finite type between noetherian quasi-excellent schemes and P a set of primes with char(S) ⊆ P. If S is universally P-resolvable, then X is universally P-resolvable.

Work under these precise hypotheses: As in PA.6/morphism-p-desingularization.

One proof route is as follows. Let Y → X be an alteration and Z ⊆ Y nowhere dense closed. Y → S is maximally dominating of finite type (an alteration is proper and maximally dominating). blow up Y along Z; Bl_Z Y → Y is a projective modification and the preimage of Z is the support D of an effective Cartier divisor. Apply §PA.6.1 to Bl_Z Y → S and D: b : Y′ → Bl_Z Y is a projective P-alteration with Y′ regular and b⁻¹(D) ⊆ Z′ snc. b⁻¹(D) is the support of an effective Cartier divisor on the regular Y′ (b is maximally dominating, so local equations stay nonzerodivisors), contained in the snc support Z′; by §PA.0.8 it is an snc support. The composite Y′ → Y is a projective P-alteration (composites of projective morphisms over a noetherian base; degrees multiply).

(temkin17, Theorem 4.3.1(i), p. 123 (temkin17 line 1078); ilo14, Exposé X, proof of Theorem 3.5, first paragraph, arXiv v1 p. 162 (ilo14 line 7486).)

Spec of a field is universally P-resolvable for every P, so every scheme of finite type over a field k is universally P-resolvable for every P ∋ char k. Without the blow-up the argument fails: for S = X = Y = Spec of a regular two-dimensional excellent local ring, Z the closed point, the identity with W′ = Z′ = V(xy) satisfies the conclusion of Theorem 4.3.1(ii), but b⁻¹(Z) is a point, not an snc support (the projective convention).

*Needs:* §PA.6.1; §PA.0.9; §PA.0.8; §PA.0.3; TauCetiRoadmap.SchemeAndStackFoundations §§4.11–4.20.

### PA.6.3 Separable desingularization over a perfect field

In PA.6/morphism-p-desingularization assume S = Spec k with k perfect (so char(S) ⊆ P means P ∋ char k when char k > 0). Then one can take a to be an isomorphism and b separable. In particular every scheme of finite type over k is universally separably P-resolvable.

Work under these precise hypotheses: S = Spec k, k perfect; P ∋ char k (any P when char k = 0).

One proof route is as follows. In the proof of §PA.6.1, Step 5 needs no inseparable alteration over an infinite perfect field (Bertini, SchemeAndStackFoundations §4.13 bertini_smoothness), and Step 4 passes from a finite field to an infinite P-extension, still perfect. In the relative-curve step use the separable alternative of §PA.5.6, whose Step 4 uses separable tame distillation (§PA.3.8); the base Y is universally separably P-resolvable by induction. Over S = Spec k the statement is proved inside the same induction on relative dimension: the base alterations produced at each stage are those of the perfect-field statement in lower relative dimension, hence isomorphisms, and the relative-curve step uses its separable alternative, so a = id and b is separable.

(temkin17, Theorem 4.3.1(iii), p. 123 (temkin17 line 1094); ilo14, Exposé X, Theorem 3.5(iii) and Remark 3.5.1, arXiv v1 pp. 162–165 (ilo14 line 7486).)

For k = F_p and P = {p}: every F_p-variety has a separable projective p-power-degree alteration by a smooth F_p-variety with snc boundary.

*Needs:* §PA.6.1; §PA.3.8; §PA.5.6; TauCetiRoadmap.SchemeAndStackFoundations §§4.11–4.20.

### PA.6.4 Desingularization by char(X)-alterations

Let X be a scheme with a nowhere dense closed subset Z, admitting a morphism of finite type to a noetherian quasi-excellent scheme S with dim S ≤ 3. Then there is a projective char(X)-alteration b : X′ → X with X′ regular and b⁻¹(Z) an snc support. If S = Spec k with k perfect, b can be chosen separable. When S is handled through the Cossart–Piltant input (dimension three, or dimension two and not excellent), the projectivity of b rests on the projective threefold target of §PA.0.12. For bases whose universal projective resolvability is obtained through the threefold input, the projectivity conclusions are conditional on the full projective assertion of §PA.0.12, including its non-separated case. For bases whose universal projective resolvability is obtained through the threefold input, the projectivity conclusions are conditional on the full projective assertion of §PA.0.12, including its non-separated case.

Work under these precise hypotheses: X → S of finite type; S noetherian, quasi-excellent, dim S ≤ 3; Z ⊆ X nowhere dense closed. Through Cossart–Piltant the proof uses S separated; the projective threefold target of §PA.0.12 covers the non-separated case and global projectivity.

One proof route is as follows. Replace X by the disjoint union of its irreducible components with reduced structure (an alteration of X, so resolving it suffices) and treat each separately; each maps dominantly, hence maximally dominantly, to the closure of its image in S, which is again noetherian, quasi-excellent and of dimension ≤ 3. Then replace S by an open subscheme containing the image of X with char(S) = char(X): char(S) ∖ char(X) is finite for a dominant finite-type map (§PA.0.1), and take the complement of the fibres over those primes. S is universally resolvable (§PA.0.12; for dim S ≤ 2 excellent, §PA.0.11; dim ≤ 1, §PA.0.10), hence universally char(S)-resolvable. By §PA.6.2 with P = char(S) = char(X), X is universally char(X)-resolvable; apply it to the alteration id_X. Over a perfect field use §PA.6.3.

(temkin17, Theorem 1.2.5, p. 99; proof §4.3.2, p. 124 (temkin17 line 108); temkin17, Remark 1.2.6(i), p. 99 (temkin17 line 108).)

**Checks.**

- For X = Spec Q[ε]/(ε²) and Z = ∅, reduction gives a projective degree-one alteration with regular source Spec Q. A degree-one alteration of nonreduced schemes need not be a modification.

For integral X of finite type over Q, char(X) = ∅ and b is a projective modification; for general X it is a degree-one alteration of the reduced components. For X regular and Z an snc support, b = id works; for X a surface over F_p, b has p-power degree.

*Needs:* §PA.6.2; §PA.6.3; §PA.0.1; §PA.0.10; §PA.0.11; §PA.0.12; §PA.0.9.

### PA.6.5 Desingularization of morphisms by char(S)-alterations

Let f : X → S be a maximally dominating morphism of finite type, Z ⊆ X nowhere dense closed, X separated and S of finite type over a noetherian quasi-excellent scheme of dimension at most three. (i) There are char(S)-alterations a : S′ → S and b : X′ → X with regular sources, both projective, a quasi-projective f′ : X′ → S′ compatible with f, and snc supports W′ ⊆ S′, Z′ ⊆ X′ with Z′ = b⁻¹(Z) ∪ f′⁻¹(W′) and (X′, Z′) → (S′, W′) log smooth. (ii) If S = Spec k with k perfect, a can be taken an isomorphism and b separable. Without separatedness of X the same holds with f′ pseudo-projective. For bases whose universal projective resolvability is obtained through the threefold input, the projectivity conclusions are conditional on the full projective assertion of §PA.0.12, including its non-separated case. For bases whose universal projective resolvability is obtained through the threefold input, the projectivity conclusions are conditional on the full projective assertion of §PA.0.12, including its non-separated case.

Work under these precise hypotheses: f maximally dominating of finite type; X separated; S of finite type over a noetherian quasi-excellent scheme T of dimension ≤ 3. When T is handled through Cossart–Piltant (dimension three, or dimension two and not excellent), T is taken separated and the projectivity of a and b rests on the projective threefold target of §PA.0.12.

One proof route is as follows. S is universally char(S)-resolvable by the argument of §PA.6.4 (Temkin §4.3.2): work componentwise, replace T by the closure of the image of S and then by an open subscheme containing it with char(T) = char(S); T is universally resolvable (§PA.0.12, or §PA.0.10 and §PA.0.11 in low dimension), and §PA.6.2 applies to S → T with P = char(T). Apply §PA.6.1 with P = char(S); f′ is pseudo-projective, and quasi-projective because X′ is separated (§PA.0.5). (ii) is §PA.6.3.

(temkin17, Theorem 1.2.9, p. 100; §4.3.3, p. 124 (temkin17 line 149).)

For S = Spec k and X a variety, (i) gives a regular X′ with an snc boundary that is log smooth over k, i.e. X′ smooth with relative snc boundary after the local forms of PA.4.

*Needs:* §PA.6.1; §PA.6.2; §PA.6.3; §PA.0.12; §PA.0.5; §PA.6.4.

### PA.6.6 Refinement: char(X)-alterations of the source

In the situation of PA.6/char-s-desingularization-of-morphisms, one may in addition require X′ to be a char(X)-alteration of a closed subscheme of X ×_S S′ (rather than only a char(S)-alteration of X). For bases whose universal projective resolvability is obtained through the threefold input, the projectivity conclusions are conditional on the full projective assertion of §PA.0.12, including its non-separated case. For bases whose universal projective resolvability is obtained through the threefold input, the projectivity conclusions are conditional on the full projective assertion of §PA.0.12, including its non-separated case.

Work under these precise hypotheses: As in PA.6/char-s-desingularization-of-morphisms.

One proof route is as follows. After passing to the active reduced components of S and resolving the unused components separately, factor f through an open S₀ with char(S₀) = char(X) (§PA.0.1) and resolve X → S₀ by X″ → S″₀ using only char(X)-alterations (§PA.6.5 over S₀). Using universal char(S)-resolvability of S, choose a char(S)-alteration S′₀ → S₀ factoring through S″₀ that embeds in an alteration S′ → S with S′ regular; replace X′ by `X″ ×_{S″₀} S′₀` and apply monoidal desingularization (§PA.4.5). Divisors are handled as in the main theorem.

(temkin17, Remark 4.3.4, p. 124 (temkin17 line 1121).)

If char(X) = char(S) the refinement is the theorem itself.

*Needs:* §PA.6.5; §PA.6.2; §PA.0.1; §PA.4.5.

### PA.6.7 Gabber's prime-to-ℓ alteration theorem over a field

Let k be a field, ℓ a prime different from char k, X a separated scheme of finite type over k and Z ⊆ X nowhere dense closed. Then there are a finite extension k′/k of degree prime to ℓ and a projective ℓ′-alteration h : X̃ → X over Spec k′ → Spec k, with X̃ smooth and quasi-projective over k′ and h⁻¹(Z) the support of a relative strict normal crossings divisor over k′.

Work under these precise hypotheses: k a field; ℓ ≠ char k; X separated of finite type over k; Z nowhere dense closed.

One proof route is as follows. Use the uniform equivariant construction of ILO X §§2.2–2.3, or the morphism theorem with P = {ℓ}′ and the field base. In the integral case one may select a component of the regular zero-dimensional base S′ = Spec k′. For reducible X use the simultaneous construction, retaining all target components; selecting one base component without a domination argument would lose surjectivity. The Cartier-boundary reduction makes h⁻¹(Z) a union of boundary components; the field local form gives smoothness and relative snc boundary. No common extension is justified merely by multiplying prime-to-ℓ degrees.

(ilo14, Exposé X, Theorem 2.1 and proof §2.3, arXiv v1 pp. 149–152 (ilo14 line 6790); ilo14, Exposé X, §3.5.3, arXiv v1 pp. 165–166 (ilo14 line 7691).)

Taking ℓ = 2 and k = F_3, every F_3-variety has an odd-degree alteration by a smooth variety over an odd-degree extension of F_3. If char k = 0 one may instead take P = ∅ in §PA.6.1 (char(Spec k) = ∅ and Spec k is universally resolvable), which gives k′ = k and generic degrees 1; for integral X, h is a projective modification.

*Needs:* §PA.6.1; §PA.6.2; §PA.0.9; §PA.4.10; §PA.0.4.

### PA.6.8 Gabber's prime-to-ℓ alteration theorem over a one-dimensional base

Let S be a separated integral noetherian excellent regular scheme of dimension one with generic point η, X a separated flat S-scheme of finite type, ℓ a prime invertible on S and Z ⊆ X nowhere dense closed. Then there are a finite extension η′/η of degree prime to ℓ, with S′ the normalization of S in η′, a projective ℓ′-alteration h : X̃ → X over S′ → S with X̃ regular and quasi-projective over S′, an snc divisor T̃ on X̃ and a finite set Σ of closed points of S′ such that: (i) outside Σ, X̃ → S′ is smooth and T̃ is a relative normal crossings divisor; (ii) étale-locally at every geometric point of a fibre over s′ ∈ Σ, (X̃, T̃) is (`S′[u^{±1}, t]/(u^b t^a − π)`, `V(t_{r+1} ⋯ t_m)`) with gcd(p, a, b) = 1 (§PA.4.10); (iii) h⁻¹(Z)_red is a sub-divisor of `⋃_{s′ ∈ Σ}` `(X̃_{s′})_red` ∪ T̃.

Work under these precise hypotheses: S separated integral noetherian excellent regular, dim S = 1; X separated flat of finite type over S; ℓ invertible on S.

One proof route is as follows. Use ILO X §§2.5–2.6, or the morphism theorem over the universally resolvable one-dimensional base with P = {ℓ}′. For integral X choose a dominating component: the regular one-dimensional S′ is proper and quasi-finite over S, hence finite and the normalization in its generic field. For reducible X keep the simultaneous construction, not a component that misses an irreducible component of X. Set Σ to the finite vertical boundary and separate the horizontal divisor T̃ from the total logarithmic boundary; the chart of §PA.4.10 gives (i)–(iii).

(ilo14, Exposé X, Theorem 2.4 and proof §2.6, arXiv v1 pp. 152–155 (ilo14 line 6985); ilo14, Exposé X, §3.5.3, arXiv v1 pp. 165–166 (ilo14 line 7691).)

For S = Spec Z_p and ℓ ≠ p, the regular strict semistable model xy = p is already in the required local form with Σ = {(p)}, exponents (1,1) and empty horizontal boundary.

*Needs:* §PA.6.1; §PA.0.10; §PA.4.10; §PA.0.4.

### PA.6.9 Prime-to-ℓ alterations of varieties with snc boundary

Let X be separated and integral of finite type over a field L, ℓ a prime invertible in L and Y ⊂ X a proper closed subscheme. Then there are a finite extension L′/L of degree prime to ℓ, a connected smooth quasi-projective variety X′ over L′ and a proper surjective L-morphism π : X′ → X with L′(X′)/L(X) finite of degree prime to ℓ, such that π⁻¹(Y)_red is a strict normal crossings divisor on X′.

Work under these precise hypotheses: X separated integral of finite type over L; ℓ invertible in L; Y ⊊ X closed.

One proof route is as follows. Apply §PA.6.7 to X and Z = Y (nowhere dense since X is integral) and take a connected component X′ of X̃; it dominates X (h is maximally dominating) with degree prime to ℓ, π = `h|_{X′}` is proper and surjective, and π⁻¹(Y)_red is a union of components of the relative snc divisor. L′ := k′ has degree prime to ℓ; X′ is smooth and quasi-projective over L′.

(jannsen16, Theorem 2.11, p. 24 (jannsen16 line 1052); ilo14, Exposé X, Theorem 2.1, arXiv v1 p. 149 (ilo14 line 6790).)

For Y = ∅ the statement gives a smooth quasi-projective X′ of degree prime to ℓ over X. Jannsen's Hasse-principle proof restricts cohomology classes along π; injectivity of restriction on ℓ-primary coefficients is the reason for the degree condition (HigherLocalFieldsAndHigherClassFieldTheory HL.6).

*Needs:* §PA.6.7.

### PA.6.10 Odd-degree regular alterations of models over a henselian DVR

Let R be an excellent henselian discrete valuation ring with residue characteristic different from 2, S = Spec R, and X an integral projective flat S-scheme with nonempty generic fibre. Then there are a finite extension η′/Frac(R) of odd degree, with S′ the normalization of S in η′, and a projective alteration h : Y → X of odd degree with Y regular, integral and projective over S′ (and over S). No separability of η′/Frac(R) or of k(Y)/k(X) is asserted.

Work under these precise hypotheses: R excellent henselian DVR, residue characteristic ≠ 2; X integral projective flat over R with X_η ≠ ∅.

One proof route is as follows. 2 is invertible on S (it is a unit of R since the residue characteristic is not 2). Apply §PA.6.8 with ℓ = 2 and Z = ∅: η′/η of odd degree, S′ the normalization of S in η′ (a DVR: R is henselian), h : X̃ → X a projective 2′-alteration with X̃ regular and quasi-projective over S′. Take an integral component Y of X̃ (degree odd); Y is projective over S as h and X are, hence proper over the separated S′, and quasi-projective over S′, hence projective over S′.

(dp23, Proposition 3.4 and its proof, arXiv v2 p. 8 (dp23 line 374); ilo14, Exposé X, Theorem 2.4 and proof 2.6, arXiv v1 pp. 152–155 (ilo14 line 6985).)

For X already regular, h = id and η′ = Frac(R). An alteration of even degree, such as the base change to a ramified quadratic extension, does not satisfy the conclusion: the odd-degree condition is what keeps mod-2 restriction maps injective.

*Needs:* §PA.6.8.

### PA.6.11 de Jong's equivariant (Galois) alteration theorem

Let k be an algebraically closed field, X a variety over k, G ⊆ Aut_k(X) a finite subgroup and Z ⊊ X a G-stable closed subset. There are an alteration φ₁ : X₁ → X, an open immersion j₁ : X₁ → X̄₁ and a finite subgroup G₁ ⊆ Aut X̄₁ such that: (i) G₁ preserves X₁, there is a surjection G₁ → G for which φ₁ is equivariant, and k(X)^G ⊆ `k(X₁)^{G₁}` is purely inseparable; (ii) X̄₁ is a projective nonsingular variety over k; (iii) j₁(φ₁⁻¹(Z)) ∪ (X̄₁ ∖ j₁(X₁)) is a G₁-strict normal crossings divisor. For G = 1 this makes φ₁ a Galois alteration in the sense of PA.3/galois-alteration.

Work under these precise hypotheses: k algebraically closed; X a variety over k; G finite; Z ⊊ X G-stable closed.

One proof route is as follows. Follow the proof of de Jong's Theorem 4.1 (SchemeAndStackFoundations §4.19) equivariantly: reduce to X projective, Z a divisor and X normal (dJ96 7.7–7.9). Apply the fibration lemma 4.11 to X/G and the branch locus, take the G-equivariant fibration of X, use Lemma 4.13 for the three-point divisor, and the equivariant stable curve and nodal resolution steps (dJ96 7.10–7.16, SchemeAndStackFoundations §4.18), with G-strict normal crossings (dJ96 7.1–7.2).

(dejong96, Theorem 7.3, p. 88; proof 7.5–7.16, pp. 88–90 (dejong96 line 1447); temkin17, §1.1.1, p. 98 (temkin17 line 43).)

For G = 1 this is de Jong's Theorem 4.1 over an algebraically closed field with a Galois alteration.

*Needs:* §PA.3.2; §PA.3.1; TauCetiRoadmap.SchemeAndStackFoundations §§4.11–4.20.

### PA.6.12 de Jong's alteration theorem over a Dedekind base

Let K be a global field, R ⊆ K a Dedekind ring with fraction field K and S = Spec R; let X be an S-variety (integral, separated, flat and of finite type over S) and Z ⊊ X closed. There are a finite extension of Dedekind schemes S₁ → S (S₁ = Spec of the integral closure of R in a finite K₁/K), an alteration φ₁ : X₁ → X over S₁ → S and an open immersion j₁ : X₁ → X̄₁ with X̄₁ projective over S₁ such that X̄₁ is regular, j₁(φ₁⁻¹(Z)) ∪ (X̄₁ ∖ j₁(X₁)) is a strict normal crossings divisor, over a nonempty open U₁ ⊆ S₁ the scheme X̄₁ is smooth and this boundary is a relative normal crossings divisor, and for s₁ ∉ U₁ the pair (X̄₁, boundary ∪ X̄₁,s₁) is strict semistable over the completion of S₁ at s₁.

Work under these precise hypotheses: K a global field; R ⊆ K Dedekind with fraction field K; X an S-variety; Z ⊊ X closed.

One proof route is as follows. Reduce to X projective over S with Z the support of a divisor by Chow's lemma and blowing up Z, then make the generic fibre geometrically reduced and irreducible by a finite extension of K (dJ96 8.3–8.4). At the finitely many bad points choose finite extensions of the completed DVRs making the normalized special fibres generically reduced, and realise them all by one finite extension K′/K, which exists because K is a global field (dJ96 8.5). Include the arithmetic section and projection existence statement used in de Jong §8.6: after a finite extension of the global base and the proper modifications in §§8.3–8.5, there are disjoint smooth sections and a base-defined linear projection making the altered projective model finite over projective space, with its prescribed boundary carried along. This is an auxiliary existence target of the arithmetic theorem, with the exact hypotheses of §8.1 and the reductions in §§8.3–8.5; continue with the trait semistable argument (dJ96 8.6 onwards; SchemeAndStackFoundations §§4.18–4.20).

(dejong96, §8.1 and Theorem 8.2, p. 91; proof 8.3–8.8, pp. 91–92 (dejong96 line 1551); temkin17, §1.1.1, p. 98 (temkin17 line 43).)

For X smooth projective over S with Z = ∅, S₁ = S and φ₁ = id work.

*Needs:* TauCetiRoadmap.SchemeAndStackFoundations §§4.11–4.20; §PA.0.3.

### Examples

For X regular and Z snc the identity has degree 1. Over Q, char(X) = ∅ and an integral resolving alteration has degree 1. Over F₃, a char(X)-alteration has degree 3^n, hence odd; over a henselian trait with residue characteristic 3, the ℓ = 2 theorem also has odd degree without asserting separability (temkin17 line 108; ilo14 line 6985; dp23 line 374).

### Dependencies

The statements and routes use §PA.0.1; §PA.0.10; §PA.0.11; §PA.0.12; §PA.0.3; §PA.0.4; §PA.0.5; §PA.0.7; §PA.0.8; §PA.0.9; §PA.3.1; §PA.3.2; §PA.3.8; §PA.4.10; §PA.4.5; §PA.4.9; §PA.5.6; TauCetiRoadmap.CrystallineCohomology CR.5:log-algebra.1–4 (integral-log-fiber-product); TauCetiRoadmap.CrystallineCohomology CR.5:log-algebra.1–4 (log-smooth-over-log-regular); TauCetiRoadmap.SchemeAndStackFoundations §0.9, noetherian approximation and finite-presentation descent; TauCetiRoadmap.SchemeAndStackFoundations §§4.11–4.20.

## Downstream consumers

HigherLocalFieldsAndHigherClassFieldTheory HL.6 consumes the prime-to-ℓ variety alteration in Jannsen’s Hasse-principle argument. LogicAndDefinabilityInNumberTheoryPartII FG.2 consumes the odd-degree regular model for Dittmann–Pop’s Pfister-form argument. AdicCoefficientsAndComparisons Layers L5–L6 and EtaleDualityAndPerverseSheavesPartII EQ.0–EQ.2 consume the alteration geometry with its precise coefficient and boundary hypotheses. These are outgoing interfaces: no theorem from those consumers is a prerequisite of the geometric construction here.

## Worked examples

For X = A²_k, Z = {0}, the identity and the enlarged boundary V(xy) give log smoothness over k but do not make the inverse image of Z a divisor: its codimension is 2. Blowing up Z first gives an exceptional P¹ of codimension 1; in the chart y = xv its support is x = 0. When a subsequent regular alteration carries this Cartier support into an snc boundary, the inverse image is a union of boundary components. This is the exact-boundary argument used both in the morphism theorem and in inheritance of resolvability (ilo14 X proof of Theorem 3.5, Step 3, p. 163, ilo14 line 7530).

For the A₁ toric surface uw = v², blowing up the monoidal ideal (u,w) has chart v² = u²s with s = w/u. The element v/u satisfies z² = s and is integral over the chart ring, but is not in it. Saturation adjoins z = v/u, producing the regular chart k[u,z], with v = uz and w = uz². Thus the ordinary and normalized blow-ups differ, even when the starting toric scheme is normal (ilo14 VIII Lemmas 3.4.3 and 3.4.6, pp. 110–111, ilo14 lines 4910, 4937).

For an excellent henselian DVR R with residue characteristic 3 and integral projective flat X/R, the ℓ = 2 theorem yields generic degrees 2m+1, so multiplication by the degree acts as 1 on Z/2. A ramified quadratic base change has degree 2 and multiplication by the degree acts as 0 on Z/2; it cannot replace that alteration in the restriction–trace argument. Odd degree does not imply a separable function-field extension in positive characteristic (ilo14 X Theorem 2.4, pp. 152–155, ilo14 line 6985; dp23 proof of Proposition 3.4, pp. 8–9, dp23 line 374).

## References

- temkin17: Michael Temkin, *Tame distillation and desingularization by p-alterations*, Annals of Mathematics 186 (2017), 97–126, Theorems 1.2.5, 1.2.9, 3.2.12, 3.3.6, 4.2.1 and 4.3.1. [Open journal text](https://annals.math.princeton.edu/wp-content/uploads/annals-v186-n1-p03-p.pdf).
- ilo14: Luc Illusie, Yves Laszlo and Fabrice Orgogozo, editors, *Travaux de Gabber sur l’uniformisation locale et la cohomologie étale des schémas quasi-excellents*, Astérisque 363–364 (2014); [arXiv:1207.3648v1](https://arxiv.org/abs/1207.3648v1), Exposés VI, VIII and X, cited by this version’s internal pages 69–170.
- temkin10: Michael Temkin, *Stable modification of relative curves*, Journal of Algebraic Geometry 19 (2010), 603–677; [arXiv:0707.3953v3](https://arxiv.org/abs/0707.3953v3), Theorems 1.1, 1.2, 1.5, Corollaries 1.3–1.6 and §3.2, pp. 2–4 and 15–17.
- dejong96: A. J. de Jong, *Smoothness, semi-stability and alterations*, Publications Mathématiques de l’IHÉS 83 (1996), 51–93, Theorem 7.3 and §§7.5–7.16, Theorem 8.2 and §§8.3–8.8, pp. 87–92. [Numdam](https://www.numdam.org/item/PMIHES_1996__83__51_0/).
- cp19: Vincent Cossart and Olivier Piltant, *Resolution of singularities of arithmetical threefolds*, Journal of Algebra 529 (2019), 268–535; [arXiv:1412.0868v2](https://arxiv.org/abs/1412.0868v2), Theorem 1.1, Corollaries 1.2–1.3 and Remark 1.4, pp. 3–4.
- cjs: Vincent Cossart, Uwe Jannsen and Shuji Saito, *Canonical embedded and non-embedded resolution of singularities for excellent two-dimensional schemes*, [arXiv:0905.2191v2](https://arxiv.org/abs/0905.2191v2), Theorems 0.1–0.3 and Corollary 0.4, pp. 3–4; published in *Desingularization: invariants and strategy*, Lecture Notes in Mathematics 2270 (2020).
- dp23: Philip Dittmann and Florian Pop, *Characterizing finitely generated fields by a single field axiom*, Annals of Mathematics 198 (2023), 1203–1227; [arXiv:2012.01307v2](https://arxiv.org/abs/2012.01307v2), Proposition 3.4 and its proof, pp. 8–9.
- jannsen16: Uwe Jannsen, *Hasse principles for higher-dimensional fields*, Annals of Mathematics 183 (2016), 1–71, Theorem 2.11 and its application, p. 24. [Open journal text](https://annals.math.princeton.edu/wp-content/uploads/annals-v183-n1-p01-p.pdf).
- stacks: The Stacks project authors, *The Stacks project*, tags [081R](https://stacks.math.columbia.edu/tag/081R), [0815](https://stacks.math.columbia.edu/tag/0815), [052A](https://stacks.math.columbia.edu/tag/052A), [0AVK](https://stacks.math.columbia.edu/tag/0AVK), [0C45](https://stacks.math.columbia.edu/tag/0C45), [0BI4](https://stacks.math.columbia.edu/tag/0BI4) and [05K0](https://stacks.math.columbia.edu/tag/05K0). For the chapter extractions, line locators are qualified by chapter: More on Flatness lines 4197 and 4250 give 0815 and 081R.
