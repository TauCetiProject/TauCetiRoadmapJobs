# Roadmap: arithmetic K-theory of number fields and S-integers, Part II

**Summary.** Build the arithmetic Galois action on symplectic K-theory of the integers, compute it on CM Bott classes, and identify its even groups as universal extensions of odd cyclotomic twists by trivial modules. Starting with ArithmeticKTheory’s arithmetic groups and descent edges, the construction passes through polarized CM coefficient lines, principally polarized abelian moduli, relative group homology and compact limits. Its end theorems are finite, p-adic, locally split and Bott-inverted universality, triviality in degree 4k−1, and Bernoulli divisibility of Hodge characteristic numbers.

The companion [Suggested.lean](Suggested.lean) tests headline statements against the pinned APIs; its module documentation identifies the mathematical carriers needed to state the remaining headlines.

## Scope and ownership

ArithmeticKTheory §§3.1–3.5 supplies arithmetic finite generation and hermitian finiteness; §§5.2, 6.11, 6.15–6.16 supplies mixed-characteristic descent, cyclotomic H² coinvariant descent, all-integer Adams-sign tables and the ordinary/Bott comparison including the degree-one exception. Its §§7.1–7.5 supplies Bernoulli indexing, regular-prime consequences and conditional arithmetic tables. This Part II starts with geometric classes and their arithmetic action. The tables and the general descent theorem stated by ArithmeticKTheory are imported, rather than restated as new targets. The Picard–Bott and Artin–Bott comparisons here additionally identify specified maps on explicit cyclotomic classes.

GeneralAlgebraicKTheory §§7.1–7.7 owns coherent products, their units and restriction-of-scalars transfer. StableHomotopyKTheory §§4.21–4.27 owns Picard/symplectic group completion, §5.19 the 1-truncated spectrum comparison and §§7.1–7.17, 7.28 coefficients, completion and safe products. GeneralizedCohomology G2 and G5.4–G5.6 owns the spectrum model, Γ-machine, spectral adjunction and ku/KU. The two projective and symplectic selected-factor Γ models are specializations of these constructions. ChromaticHomotopyTheory CH.2–CH.3 owns generic periodic self-maps and their telescope comparison. This roadmap owns the specialization to arithmetic KSp and the compatibility of its arithmetic action.

GeometryOfNumbersAndQuadraticArithmetic §§6.5–6.8a, 6.10a–6.11 and HermitianKTheoryOfPoincareCategories Layers 4–6 own higher Grothendieck–Witt carriers, GW–L comparisons and the integer L-theory inputs. Their generic fiber sequence is used here with skew integer forms and a specified factor-two normalization. ComplexMultiplicationAndExplicitReciprocity §§1.3, 2.1–2.2 owns polarized CM lattices, Serre tensor and the main reciprocity theorem; the coefficient-line formulation and stable Bott-linearity here compare those supplied objects. PELModuli §§M2.4, M3.9, M6.2–M6.3 and AbelianSchemesAndArithmeticModuli §§A5.5, A5.8 own the ppav stack, isomorphism schemes, uniformization and Hodge algebraization. The graded selected-factor Čech model here specializes them.

ClassFieldTheory Layers 11–13 and Chebotarev Layer 10 own Artin reciprocity, full and narrow class fields and prime existence. ArithmeticGaloisDuality R02.1, R02.2, R02.4 owns compact coefficients, Hochschild–Serre and arithmetic duality. EtaleHomotopyTypes EH.5–EH.6 owns Betti/étale realization and its automorphism comparison. BorelRegulators §2.1 concerns the number-field SL regulator and supplies no symplectic stability theorem. The stable symplectic integral calculation and rational Hodge generators belong to §§8.4–8.5 here, together with their arithmetic action. ArithmeticLocallySymmetricSpaces §§ALS.1.5–ALS.1.6, ALS.2.3–ALS.2.4 supplies the finite arithmetic quotient models used for integral finite generation. IntegralIwasawaTheory §§7.4, 12.3 owns Vandiver propagation and arithmetic-weight specialization. KTheoryFiniteLocalFields §§1.1–1.2 owns finite-field Bott and unit comparisons. None of these theories is reconstructed here.

Mathlib’s representations, invertible modules, Picard group, number fields, CM conjugation, absolute group homology and undercategories are already in the library. Tau Ceti’s finite-dimensional compatible symplectic structure and arithmetic ideal Artin map are already in the library. Their exact interfaces are listed below; no alternative carriers for them are introduced. The universe of each categorical construction is fixed by an essentially small model, and changing that model induces an equivalence.

## Conventions

For finite arithmetic coefficients p is an odd rational prime, n ≥ 1, q = pⁿ and Λ_q = ℤ/q. Put K_q = ℚ(ζ_q), ζ_q = exp(2πi/q), O_q = ℤ[ζ_q], O′_q = O_q[1/p] and ℤ′ = ℤ[1/p]. H_q is the maximal everywhere-unramified abelian p-extension of K_q inside ℂ, and H_∞ is the union of these compatible fields. Write G_q = Gal(H_q/ℚ) and Γ = Gal(H_∞/ℚ). The full Hilbert field H of a CM field and the narrow Hilbert field of K_q⁺ are different objects. The local theorem uses G = Gal(ℚ(p)/ℚ), where ℚ(p) is maximal unramified outside p, with its chosen decomposition subgroup G_𝔭. No unramified or regular-prime assumption is imposed on p; the prime 3 is included. Division by 2 restricts the arithmetic universal-extension statements to odd p. (FGV §1.4, p. 7, FGV line 271; §7.5, p. 44, FGV line 2022.)

Representations are left representations. M_q(j) = μ_q(ℂ)^(⊗j) carries χ_cycʲ; negative twists are dual powers. Compact ℤ_p(j) has its p-adic topology. Arithmetic Artin reciprocity sends an unramified prime to arithmetic Frobenius. For example, Frobenius at 2 on μ₅ sends ζ₅ to ζ₅², so its odd third twist acts by 2³ = 3 modulo 5. Geometric Frobenius would give 2⁻³ = 2 instead. Ordinary connective degrees are nonnegative; periodic spectrum degrees and twist exponents are integers. Stable homotopy of a space means homotopy of its unreduced suspension spectrum Σ∞₊. On a point this retains the degree-zero unit 1; replacing it by reduced suspension would give 0. (FGV §§2.1, 2.8, pp. 7–8, 16–17; FGV lines 321, 705.)

Write ψ⁻¹ for dualization, and p_± = (1±ψ⁻¹)/2. This operation is distinguished from conjugation of the cyclotomic base and from arithmetic complex conjugation c on the realized KSp groups. The unscaled hyperbolic H has c_B H = 1+ψ⁻¹. Thus a rank-one free module gives c_B H(1) = 2 and (1/2)c_B H(1) = 1. The arithmetic kernel inclusion whose Betti projection is the identity is (1/2)H. At q = 5 its scalar is 3 and 3·2 = 1 modulo 5. At finite q a periodicity map may be iterated; its period may grow with n. No uniform p-adic period is assigned to the inverse limit. (FGV §§3.4, 3.6, pp. 20–22; FGV lines 891, 964.)

Hermitian forms are linear in the first argument. On a skew coefficient line b, use ω = −Tr b and h = −2i Σ_(τ∈Φ) τb, with Im h = ω. If J_H is multiplication by i for that type, then ω(v,J_Hv) = −h(v,v). The positive compatible structure for ω in Tau Ceti’s convention is −J_H. For the Gaussian line with b(1,1) = i/2, h(1,1) = 1 and ω(1,i) = −1; replacing J_H by −J_H gives +1. The map c_H uses the tangent representation Lie(A). For the dual Hodge bundle ω_A = Lie(A)∨ put ĉh_m(ω_A) = (−1)ᵐch_m(ω_A) = ch_m(Lie(A)). A tangent Bott generator pairs to +1 with this normalized class and to −1 with the raw odd Hodge character. This sign is retained through the moduli and characteristic-number comparisons. (FGV §§4.3, 5.1, pp. 25–27, 30–31; FGV lines 1127, 1331.)

Homology is ordinary integral singular homology with the indicated coefficients unless completed continuous group homology is explicitly written. In particular H₁(K(ℤ_p^δ,1);ℤ_p) is ℤ_p ⊗_ℤ ℤ_p, rather than a silently completed ℤ_p. The integral Hurewicz theorem uses a positive integral spectrum of finite type. Pontryagin products and Bocksteins have their usual homological degrees; β_r lowers degree by one. All product factors in the indecomposable denominator have strictly positive degree. A point therefore has indecomposable quotient 0 also in degree zero. (FGV §8.1, pp. 49–50; FGV line 2272.)

## Exact supplier contracts

### From Mathlib

Use `Representation` in `Mathlib/RepresentationTheory/Basic.lean` (a monoid homomorphism into linear endomorphisms) and `LinearMap` in `Mathlib/Algebra/Module/LinearMap/Defs.lean`. The former carries the module action but imposes no topology or continuity. `Module.Invertible` in `Mathlib/RingTheory/PicardGroup.lean` means bijectivity of the dual contraction M∨ ⊗ M → R. Use its finite-projective consequences and `CommRing.Pic`, the group of invertible-module isomorphism classes. Neither the component group nor its multiplication retains the automorphism loops of the Picard groupoid.

`groupHomology` and `groupHomology.inhomogeneousChains` in `Mathlib/RepresentationTheory/Homological/GroupHomology/Basic.lean` use a `Rep` over a commutative ring, natural-number degrees and the native inverse-action bar differential. Their low-degree inverse-action formulas are compared in §5.3; absolute homology is not a relative or continuous carrier. `CategoryTheory.Under` in `Mathlib/CategoryTheory/Comma/Over/Basic.lean` is the ordinary undercategory with its commuting-triangle maps.

For the split-prime headline use `NumberField.maximalRealSubfield`, `NumberField.IsCMField`, `IsCyclotomicExtension`, `NumberField.IsCMField.ringOfIntegersComplexConj`, `Ideal.map`, `Ideal.span` and `Ideal.IsPrime`. The CM predicate says that the field is totally complex and quadratic over its maximal real subfield; it does not assert that a Hilbert class field is CM. The positive integer exponent and odd prime are explicit arguments of `exists_split_prime_with_signs`. The two primes in its factorization are distinct and nonzero; 0, the unit ideal and the ramified p-prime are excluded by its signature.

### From Tau Ceti

Use `TauCeti.SymplecticForm.exists_compatible` in `TauCeti/Geometry/Symplectic/ExistsCompatible.lean` for finite-dimensional real symplectic spaces. The compatible structure requires ω(v,Jv) > 0 for v ≠ 0, so the CM sign conversion above is required. This existence theorem supplies neither contractibility of the space of choices nor the topological K-theory equivalence. Use `TauCeti.NumberFieldArithmetic.artinHomAway` and its arithmetic-Frobenius characterization from `TauCeti/NumberTheory/NumberField/Ideal/ArtinMap.lean`; ClassFieldTheory Layer 11 compares its global map to this ideal-theoretic map.

### From TauCetiRoadmap.ArithmeticKTheory

ArithmeticKTheory §§3.1–3.5, 5.2, 6.11, 6.15–6.16, 7.1–7.5. Consume finite generation, finite even arithmetic groups, coefficient exact sequences, Kummer and Bott descent edges, the four all-integer even Adams-sign slots and the odd H¹ slot. Over O′_q and ℤ′ the ordinary-to-periodic map is an isomorphism at i≥0; over O_q and ℤ it is an isomorphism at i=0 and i≥2. The degree-one valuation summand remains explicit. The Picard edge sends [L]−1 to c₁(L), and transfer is the actual corestriction edge. Bernoulli numbers use B₁=−1/2. The bridge K_(2m)(ℤ;ℤ_p) ≅ H²_et(ℤ[1/p],ℤ_p(m+1)) is consumed with the Iwasawa nonvanishing criterion, not proved a second time.

### From TauCetiRoadmap.GeneralAlgebraicKTheory

GeneralAlgebraicKTheory §§7.1–7.7. Consume spectrum-level tensor/external products induced by biexact functors, their coherent associativity, symmetry and units, the K₀ tensor comparison, and transfer with its projection formula. Restriction to invertible modules gives the tensor-induced Picard class map. Additive group completion supplies no multiplicative coherence by itself.

### From TauCetiRoadmap.SchemeKTheoryOperations

SchemeKTheoryOperations §§6.1, 6.9–6.11. Consume finite-coefficient operations, products, Bott comparison and transfer/Gysin naturality. Integral dualization and its Bott-row signs are ArithmeticKTheory §6.15; the extra inverse-different comparison below is required for transfer on the selected eigenspaces.

What SchemeKTheoryOperations must provide (gap:duality-transfer): Compare integral dualization with finite-projective transfer through the trace-dual inverse different and preserve the Bott descent edges and coefficient maps at every odd prime power.

### From TauCetiRoadmap.StableHomotopyKTheory

StableHomotopyKTheory §§3.20, 3.34–3.37, 4.21–4.27, 5.1–5.19, 7.1–7.17, 7.28. Consume category/classifying-space comparisons, simple-space finite-type theory, Picard and skew-form group completion, the classical symplectic plus component, and finite coefficient/Bockstein/Milnor interfaces. The summing-functor Γ model uses selected-factor isomorphisms; at the one-point set it is contractible, and its zeroth Segal map is group completion ℕ→ℤ. Products on unsafe coefficients are obtained only by the supplied compatible maps or iterates.

What StableHomotopyKTheory must provide (gap:low-postnikov-finite-type): Provide the p-local H-space Postnikov splitting for positive integral finite-type spectra through degree 2p−3 and the free/cyclic Eilenberg–Mac Lane homology and Bockstein calculations in that range.

### From TauCetiRoadmap.GeneralizedCohomology

GeneralizedCohomology G2.1–G2.8, G5.4–G5.6. Consume the shared symmetric spectra, stable smash and adjunction, suspension spectrum/infinite-loop counit and the Γ-machine, together with ku/KU, their unit Bott class and conjugation. Their coefficients are ℤ[β] and ℤ[β,β⁻¹], with ψ⁻¹β=−β. The adjunction is used for symmetric monoidal groupoids without requiring categorical coproducts; CM positive-line tensoring supplies a module pairing distinct from orthogonal addition.

What GeneralizedCohomology must provide (gap:topological-symplectic-hodge): Provide the contractible compatible-complex-structure comparison Sp(ℝ) ← U, its ku/KU realization, tangent-normalized primitive Chern-character pairing, integral lifts for m<p and coefficient-Bockstein compatibility.

### From TauCetiRoadmap.TopologicalKTheory

TopologicalKTheory T4–T5, T7. Consume the numerable complex-bundle and Bott conventions used by GeneralizedCohomology G5.4. The arithmetic Hodge comparison uses the tangent bundle; dualization multiplies its degree-m character by (−1)ᵐ.

### From TauCetiRoadmap.ChromaticHomotopyTheory

ChromaticHomotopyTheory CH.2–CH.3. Consume finite type-one self-maps, telescope independence and the height-one comparison after p-completion. Iteration matches the coefficient tower and cyclotomic character periods. The mod-three case uses maps, without an associative ring structure on its Moore spectrum.

What ChromaticHomotopyTheory must provide (gap:compatible-v1-towers): Provide compatible odd Moore v₁ self-maps and reduction maps after common iteration, telescope independence and their p-completed K(1)-local comparison, including q=3 without an associative Moore product.

### From TauCetiRoadmap.GeometryOfNumbersAndQuadraticArithmetic

GeometryOfNumbersAndQuadraticArithmetic §§6.5–6.8a, 6.10a–6.11. Consume higher skew Grothendieck–Witt spectra, the coherent duality involution, the GW–L fiber sequence and integer L-groups. Identify the symplectic group completion with its classical connective model before applying the skew integer specialization.

What GeometryOfNumbersAndQuadraticArithmetic must provide (gap:skew-integer-splitting): Specialize the GW–L fiber sequence to integral skew forms and prove the odd-primary positive-factor splitting with unscaled hyperbolic map H, c_B H=1+ψ⁻¹, and retraction (1/2)c_B.

### From TauCetiRoadmap.HermitianKTheoryOfPoincareCategories

HermitianKTheoryOfPoincareCategories Layers 4–6. Consume comparison and surgery interfaces for the supplied Poincaré/Grothendieck–Witt models; GeometryOfNumbersAndQuadraticArithmetic §6.8a performs the classical connective comparison. Integral variants are distinguished before inverting 2.

### From TauCetiRoadmap.ComplexMultiplicationAndExplicitReciprocity

ComplexMultiplicationAndExplicitReciprocity §§1.3, 2.1–2.2. Consume polarized lattices in every dimension, faithful CM actions, their classification, Serre tensor and the polarization/reflex reciprocity dictionary. The translating Hermitian line can have negative signatures; only the acting subgroup used for tensor naturality is positive. A CM algebra has degree 2g inside End⁰(A), which need not itself be a field.

What ComplexMultiplicationAndExplicitReciprocity must provide (gap:cm-arbitrary-automorphism): Provide the arbitrary-automorphism polarized reciprocity dictionary on isometries with conjugation-paired embedding lifts and possibly negative translating signatures, natural for positive-line Serre tensor.

### From TauCetiRoadmap.AbelianSchemesAndArithmeticModuli

AbelianSchemesAndArithmeticModuli §§A5.5, A5.8. Consume the polarized Hodge equivalence and Siegel universal family with tensor and polarization naturality. A rank-[E:ℚ] CM lattice realizes an abelian variety of dimension [E:ℚ]/2.

### From TauCetiRoadmap.PELModuli

PELModuli §§M1.5, M1.12, M2.3–M2.4, M2.8–M2.9, M3.9, M6.2–M6.3, M6.9. Consume all-genus principally polarized stacks, polarized isomorphism descent and represented isomorphism schemes, full level N≥4 atlases over ℂ, and the Hodge bundle. Products and Rosati-selfadjoint idempotents split into principally polarized selected factors. The characteristic-zero classifying maps retain their arithmetic field of definition and the supplied Hodge/fundamental-class comparison.

What PELModuli must provide (gap:ppav-embedding-atlases): Provide the projective-embedding and Hilbert-polynomial pieces of the principally polarized stack atlas, their smooth descent and coherent product/selfadjoint-factor refinements used by the graded Čech model.

### From TauCetiRoadmap.EtaleHomotopyTypes

EtaleHomotopyTypes EH.5, EH.6 and G7. Consume Betti realization of simplicial varieties, smooth Čech descent, componentwise graded p-completion, the Betti–étale zigzag and field-automorphism naturality of discrete points. Require finite-dimensional mod-p cohomology in each degree on each connected grade; the grading is retained as a discrete coproduct after completion.

What EtaleHomotopyTypes must provide (gap:graded-moore-realization): Provide a homotopy-coherent realization of the graded ppav Γ-diagrams preserving products, finite Moore smashing before completion at p=3, automorphisms, coefficient reductions and p-adic homotopy limits.

### From TauCetiRoadmap.ClassFieldTheory

ClassFieldTheory Layers 11–13. Consume the single arithmetic-normalized Artin map, its norm/tower laws, full Hilbert and full narrow Hilbert fields and their class-group/sign dictionaries. At a principal prime, the Hilbert extension splits completely. The prime above p in K_q is generated by 1−ζ_q. Narrow sign classes are taken in the real subfield, where real embeddings exist.

What ClassFieldTheory must provide (gap:cyclotomic-p-class-fields): Identify the maximal unramified abelian p-subfields of cyclotomic Hilbert fields with the native Picard p-parts, compatibly in towers, with principal-p-prime splitting and the local-p-split class-field comparison.

### From TauCetiRoadmap.Chebotarev

Chebotarev Layer 10. Consume prime existence in the compositum with prescribed conjugacy class. The finite-unramified narrow Hilbert extension is disjoint from K_q/K_q⁺, which is ramified at p. For the sphere-unit comparison choose an auxiliary prime whose residue class is primitive modulo p²; its image topologically generates ℤ_p×, and it avoids any prescribed finite set.

### From TauCetiRoadmap.ArithmeticGaloisDuality

ArithmeticGaloisDuality R02.1, R02.2 and §R02.4.3. Consume compact continuous coefficients and exact inverse limits, cohomological Hochschild–Serre, Kummer/Brauer identifications and Poitou–Tate with its compact-support convention. The homological relative-pair and completed-bar extensions are specified below; no homological edge is inferred from a cohomological spectral sequence without its comparison.

What ArithmeticGaloisDuality must provide (gap:relative-homology-edges): Provide relative chain quotients and long exact sequences, the natural inverse-bar comparison and the finite and compact relative homological Hochschild–Serre edges for the arithmetic pairs used here.

What ArithmeticGaloisDuality must provide (gap:compact-relative-cocycles): Provide completed relative bar homology and its continuous universal-cocycle property for finite-free coefficients and finite-type compact targets, with coefficient coinvariants and exact finite inverse limits.

### From TauCetiRoadmap.EtaleCohomologyFoundations

EtaleCohomologyFoundations §§F.0.3, F.4. Consume integral/finite Tate twists and lisse coefficient categories with pullback. The local formulation uses the arithmetic representation/sheaf comparison below on Spec ℤ[1/p], not a KSp-valued sheaf on arbitrary bases.

What EtaleCohomologyFoundations must provide (gap:lisse-integral-extension): Provide the equivalence between finite-type compact continuous ℤ_p-representations of Gal(ℚ(p)/ℚ) and lisse integral coefficient sheaves on Spec ℤ[1/p], compatible with kernels and restriction to Spec ℚ_p.

### From TauCetiRoadmap.IntegralIwasawaTheory

IntegralIwasawaTheory §§3.1, 7.4, 12.3. Consume propagation of the real cyclotomic p-class condition, its comparison with the plus part of the full class group at odd p, and arithmetic-weight Euler characteristics. Vandiver is conditional. The exact small-weight Bernoulli nonvanishing comparison below is required independently of a characteristic-ideal equality.

What IntegralIwasawaTheory must provide (gap:bernoulli-weight-nonvanishing): For every odd 1≤m<p identify nonvanishing of H²_et(ℤ[1/p],ℤ_p(m+1)) with p dividing the numerator of B_(m+1), including twist, duality, control and Euler-factor conventions.

### From TauCetiRoadmap.KTheoryFiniteLocalFields

KTheoryFiniteLocalFields §§1.1–1.2. Consume Quillen finite-field K-groups, Bott classes and coefficient comparisons, retaining Frobenius weight χ^(2k) for degree 4k−1. The sphere-unit surjectivity below is stronger than the order formula alone.

What KTheoryFiniteLocalFields must provide (gap:sphere-unit-finite-field): Provide surjectivity of the p-adic sphere unit onto K_(4k−1)(𝔽_ℓ) at a prime ℓ topologically generating ℤ_p× and its comparison isomorphism from K_(4k−1)(ℤ;ℤ_p), with the χ^(2k) normalization.

### From TauCetiRoadmap.ArithmeticLocallySymmetricSpaces

ArithmeticLocallySymmetricSpaces §§ALS.0.8, ALS.1.5–ALS.1.6, ALS.2.3–ALS.2.4 supplies arithmetic quotient/group cohomology comparison, finite Borel–Serre cell models at neat level and stabilizer resolutions at arbitrary level. For Sp_(2g)(ℤ), a torsion-free congruence subgroup of finite index has the finite model; finite-quotient homology then gives finite generation in each integral degree. This supplies finite type, not the block-stabilization theorem, which is proved in §8.4.

### From TauCetiRoadmap.AlgebraicTopology

AlgebraicTopology Stage 6 (cohomology products and manifold duality). Consume singular products, Künneth, orientations, fundamental classes and cap products with their graded signs and map naturality. All finite and integral coefficient operations used in the indecomposable quotient and in the family argument use the extension below.

What AlgebraicTopology must provide (gap:pontryagin-bockstein-cap): Provide finite-type integral ℤ_p and finite-coefficient Pontryagin/Künneth products, cap and fundamental classes with natural coefficient Bocksteins and mixed Tor representative β_d(xy).

## How to read the build

Layer 0 identifies cyclotomic Picard, Bott and Artin classes using the supplied descent edges. Layer 1 fixes the two comparison maps and their periodic specialization. Layer 2 realizes CM coefficient lines and signs; Layer 3 computes their two images, proves Hodge surjectivity independently, then obtains the splitting and CM generation. Layer 4 constructs the arithmetic action from the graded ppav model. Layer 5 combines CM reciprocity with the universal relative-extension calculation, and Layer 6 identifies that universal cocycle with the finite arithmetic extension. Layer 7 passes to compact limits and the local splitting condition, including negative twists. Layer 8 compares integral indecomposables and Hodge characters and proves the characteristic-number consequence. Each Needs line lists statement data and the inputs for the indicated proof route; another route need not use unrelated parts of a layer.

## Layer 0: Cyclotomic Bott and Picard classes

### 0.1 Universal cyclic Bott class

Assume p is an odd prime, n≥1 and q=p^n; coefficients Λ_q=ℤ/q. ζ_q=exp(2πi/q); twists M(j)=μ_q(ℂ)^(⊗j) carry the left action χ_cyc^j; negative powers mean dual tensor powers.

For odd q, the Bockstein followed by Hurewicz identifies π₂(Σ∞₊B(ℤ/q);ℤ/q) with H₁(B(ℤ/q);ℤ)=ℤ/q. Let β_q correspond to 1. Its image in connective complex K-theory under the tautological character is the Bott generator in degree two. Raising the character to a∈(ℤ/q)× sends β_q to aβ_q. For q>4 its powers generate a split polynomial subalgebra (ℤ/q)[β_q] in stable homotopy; at q=3 only iterated Bott maps from the supplier contract are used. (FGV, §2.1.1 and Lemma 2.3, author copy pp. 8–9; FGV line 350.)

One proof route is as follows. Compute the low-degree stable-homotopy/Bockstein sequence using the absence of odd-primary stable stems in degrees one and two. Compare the tautological cyclic representation with the topological Bott class, and use its powers for the retraction. Use the coefficient supplier’s nonassociative exception at q=3 rather than treating all odd Moore spectra as associative rings. (FGV line 350, with the stated supplier contracts.)

**Checks.**

- For q=5 and a=2, the degree-two class maps to twice the generator; the unit in degree zero is retained because suspension is unreduced.
- At q=3 no assertion of a homotopy-associative Moore multiplication is admitted.
- At q = 5, the Bockstein of β₅ is 1 in ℤ/5 and the trivial character sends its positive-degree image to 0; a class without this normalization is not the Bott class.

*Needs:* StableHomotopyKTheory §7.1; StableHomotopyKTheory §§7.3–7.4; StableHomotopyKTheory §7.28; GeneralizedCohomology G5.4–G5.6 and TopologicalKTheory T4–T5, T7.

### 0.2 Picard-to-K map

Specialize the supplied Picard groupoid of a commutative ring R to its tensor functor into finitely generated projective modules. Its components are Mathlib’s CommRing.Pic R and the automorphisms of its unit are R×. The tensor functor induces the multiplicative map Σ∞₊|Pic(R)| → K(R); coherent multiplicativity is supplied independently of additive group completion. In the Dedekind fractional-ideal presentation an arrow I → J is multiplication by a ∈ Frac(R)× with aI = J. The extension here is the compatibility of this map with cyclotomic Bott classes and trace forms, rather than another Picard group or another group-completion machine. (FGV, §2.4, Definition 2.6 and equations (2.3)–(2.4), author copy pp. 10; FGV line 443.)

The interface has the following laws.

- π₀|Pic(R)|≅CommRing.Pic R, carrying tensor product to multiplication.
- Aut_R(R)≅R×; the map on loops agrees with the unit-to-K₁ map.
- Tensor of lines maps to K-theory multiplication, while direct sum is K-theory addition.
- Ring maps induce a commuting Picard-to-K square with extension of scalars.

One proof route is as follows. Use the existing invertible-module carrier and its tensor equivalences, with Core morphisms. Import the generic additive spectrum adjunction and the distinct coherent tensor-product comparison. Verify the automorphism and component comparisons before forming the induced map. (FGV line 443, with the stated supplier contracts.)

**Checks.**

- For a field F, π₀ is trivial and π₁=F×, so the groupoid is not replaced by its component set.
- Over ℤ, the class of the tensor unit maps to 1∈K₀(ℤ); sending every object to additive zero fails.
- For R=ℤ, the fractional ideals 2Z and 3Z are isomorphic by multiplication by 3/2; restricting morphisms to ℤ× incorrectly removes that arrow.
- Check that a representative decomposition by Pic(R) is natural as a module comparison only after choices, without asserting a canonical product decomposition of ring spectra.

*Needs:* `CommRing.Pic`; `Module.Invertible`; StableHomotopyKTheory §§4.26, 5.19; GeneralAlgebraicKTheory §§7.1–7.7; GeneralizedCohomology G2.1–G2.8 and StableHomotopyKTheory §§5.1–5.19; StableHomotopyKTheory §§4.21–4.27 and GeneralizedCohomology G2.6.

This interface turns β_q times ideal classes into K-theory classes; separates ideal multiplication from symplectic orthogonal addition.

### 0.3 Cyclotomic Picard classes

Assume p is an odd prime, n≥1 and q=p^n; coefficients Λ_q=ℤ/q. ζ_q=exp(2πi/q); twists M(j)=μ_q(ℂ)^(⊗j) carry the left action χ_cyc^j; negative powers mean dual tensor powers.

Put K_q=ℚ(ζ_q), O_q=ℤ[ζ_q] and O′_q=O_q[1/p]. For k≥1 the map (Pic(O_q)/q)⊗μ_q^(⊗(2k−1))→K_(4k−2)(O_q;ℤ/q)^(+) sending [L]⊗ζ_q^(⊗(2k−1)) to β(ζ_q)²ᵏ⁻¹([L]−1) is an isomorphism onto the positive eigensummand. For all k∈ℤ the same formula in Bott-inverted K-theory is an isomorphism. Inverting p does not change this Picard group because the unique prime over p is principal. These identifications are Galois-equivariant; ψ⁻¹ acts by +1 on the target. (FGV, Corollary 2.12 and Remark 2.13, author copy pp. 14–15; FGV line 615.)

One proof route is as follows. Use the arithmetic descent supplier’s even-degree cohomology and comparison contract, including its exceptional degree-one boundary. Identify the H² term by the Kummer exact sequence and vanishing of the relevant Brauer group for O′_q. Compare the Kummer edge with the Picard-to-K map and Bott multiplication; retain conjugation and cyclotomic weights. (FGV line 615, with the stated supplier contracts.)

**Checks.**

- For the trivial ideal L=O_q, [L]−1 maps to zero.
- For k=1 the formula lies in K₂ and uses one Bott factor, not β².

*Needs:* §0.1; §0.2; KTheoryFiniteLocalFields §§1.1–1.2; ArithmeticKTheory §§6.11, 6.15–6.16; ArithmeticKTheory §§5.2, 6.15–6.16; SchemeKTheoryOperations §§6.1, 6.9–6.11.

### 0.4 Cyclotomic transfer descent

Assume p is an odd prime, n≥1 and q=p^n; coefficients Λ_q=ℤ/q. ζ_q=exp(2πi/q); twists M(j)=μ_q(ℂ)^(⊗j) carry the left action χ_cyc^j; negative powers mean dual tensor powers.

Use the supplied top-degree corestriction descent and the Bott edge comparison. For every k∈ℤ, transfer induces an isomorphism (K^(β)_(4k−2)(O′_q;ℤ/q)^(+))_(Gal(K_q/ℚ))≅K^(β)_(4k−2)(ℤ[1/p];ℤ/q)^(+). There is the parallel isomorphism in degree 4k for the negative eigensummand. In the positive comparison range these identify ordinary groups over O_q and ℤ. Transfer commutes with the duality involution here after accounting for the inverse different, whose ideal class is principal. (FGV, Proposition 2.15 and Remark 2.16, author copy pp. 15–16; FGV line 667.)

One proof route is as follows. Use Poitou–Tate to dualize the transfer into restriction on compactly supported H¹. Apply the compact-support Hochschild–Serre edge to the finite étale cyclotomic cover: H⁰_c is the kernel of the injective global-to-p-local root restriction, hence is zero and kills both outside terms. Compare duality with transfer using the trace-dual line and its principal ideal class. (FGV line 667, with the stated supplier contracts.)

**Checks.**

- The source is coinvariants, not invariants; the degree-4k companion uses the negative sign.
- No ordinary degree-one Bott comparison is inferred.

*Needs:* §0.3; ArithmeticKTheory §§6.11, 6.15–6.16; ArithmeticGaloisDuality §R02.4.3 (Poitou–Tate); ArithmeticGaloisDuality R02.2 (Hochschild–Serre and transgression); ClassFieldTheory Layer 11; SchemeKTheoryOperations §§6.1, 6.9–6.11.

### 0.5 Artin–Bott transfer square

Assume p is an odd prime, n≥1 and q=p^n; coefficients Λ_q=ℤ/q. ζ_q=exp(2πi/q); twists M(j)=μ_q(ℂ)^(⊗j) carry the left action χ_cyc^j; negative powers mean dual tensor powers.

Let H_q/K_q be the maximal everywhere-unramified abelian p-extension inside ℂ, and G_q=Gal(H_q/ℚ). Arithmetic Artin reciprocity identifies Pic(O_q)⊗ℤ_p with Gal(H_q/K_q). For every k∈ℤ and M_q=μ_q^(⊗(2k−1)), the Artin/Bott identifications and transfer give a commuting square from H₁(Gal(H_q/K_q);M_q) to K^(β)_(4k−2)(O_q;ℤ/q)^(+) and from H₁(G_q;M_q) to K^(β)_(4k−2)(ℤ;ℤ/q)^(+). Its vertical arrows are group-homology pushforward and K-transfer. The bottom map is an isomorphism; H₁(G_q;M_q)≅H₁(G_q,⟨c⟩;M_q), where c is complex conjugation. (FGV, §2.8 and Proposition 2.17, author copy pp. 16–17; FGV line 734.)

One proof route is as follows. Compare Picard classes with the unramified p-class field using arithmetic Frobenius consistently. The homological Hochschild–Serre sequence identifies H₁(G_q;M_q) with twisted class-group coinvariants: the quotient’s homology with the odd twist vanishes by central c. Use the vanishing of H₀ and H₁ of ⟨c⟩ on M_q, since c acts by −1 and 2 is a unit. (FGV line 734, with the stated supplier contracts.)

**Checks.**

- Replacing arithmetic reciprocity by its inverse requires changing both horizontal maps.
- For a regular prime with trivial p-class groups the bottom H₁ and arithmetic kernel are zero.

*Needs:* §0.4; ClassFieldTheory Layer 13; ClassFieldTheory Layer 11; ArithmeticGaloisDuality R02.2 (Hochschild–Serre and transgression); `groupHomology`.

### Examples

At q=5, the character a=2 sends β to 2β. The trivial ideal has [O_q]−1=0, hence Picard–Bott image 0. For ℤ, multiplication by 3/2 gives the arrow 2ℤ→3ℤ even though 3/2 is not a ring unit. These distinguish tensor components, their loops and additive K-classes.

### Dependencies

StableHomotopyKTheory §7.1; StableHomotopyKTheory §§7.3–7.4; StableHomotopyKTheory §7.28; GeneralizedCohomology G5.4–G5.6 and TopologicalKTheory T4–T5, T7; `CommRing.Pic`; `Module.Invertible`; StableHomotopyKTheory §§4.26, 5.19; GeneralAlgebraicKTheory §§7.1–7.7; GeneralizedCohomology G2.1–G2.8 and StableHomotopyKTheory §§5.1–5.19; StableHomotopyKTheory §§4.21–4.27 and GeneralizedCohomology G2.6; KTheoryFiniteLocalFields §§1.1–1.2; ArithmeticKTheory §§6.11, 6.15–6.16; ArithmeticKTheory §§5.2, 6.15–6.16; SchemeKTheoryOperations §§6.1, 6.9–6.11; ArithmeticGaloisDuality §R02.4.3 (Poitou–Tate); ArithmeticGaloisDuality R02.2 (Hochschild–Serre and transgression); ClassFieldTheory Layer 11; ClassFieldTheory Layer 13; `groupHomology`. 

## Layer 1: Betti, Hodge and periodic symplectic K-theory

### 1.1 Betti and Hodge maps

Use the group-completion supplier’s symplectic group completion of finite free unimodular alternating ℤ-modules, with basepoint component BSp∞(ℤ)⁺, as KSp(ℤ). Define c_B:KSp(ℤ)→K(ℤ) by forgetting the form. Define c_H:KSp(ℤ)→ku using Sp(ℤ)→Sp(ℝ)^top←U^top and the homotopy equivalence on the right. On topological complex K-theory ψ⁻¹ is complex conjugation. Hermitian forms are linear in their first variable; the Hodge complex structure is fixed by the condition that its imaginary Hermitian pairing equals the supplied alternating form. (FGV, §§3.1–3.2, author copy pp. 18–19; FGV line 806.)

The interface has the following laws.

- c_B preserves orthogonal addition and scalar extension.
- On a positive Hermitian vector space c_H is its unitary class with the stated imaginary-part convention.
- For unscaled hyperbolic H, c_B H=1+ψ⁻¹; on the positive summand its value is twice the identity.
- Conjugating the complex structure induces ψ⁻¹ on ku.

One proof route is as follows. Import the KSp carrier and its plus/group-completion equivalence; apply forgetful and scalar-extension functors. Use the compatible-complex-structure space and its contractibility to identify topological symplectic and unitary classifying spaces. Compare the Hodge structure sign with the existing compatible-form theorem; do not choose a discontinuous arbitrary inverse. (FGV line 806, with the stated supplier contracts.)

**Checks.**

- A symplectic plane has Betti rank 2 and Hodge rank 1. For b(1,1)=i/2 on the Gaussian line, ω(1,i)=−1 and ω(1,−i)=+1, so the Hodge structure J_H and the native compatible structure differ by sign.
- In degree 4k−2 complex conjugation is −1 on ku; in degree 4k it is +1.
- For a rank-one module, c_B H([ℤ])=2[ℤ] even after inverting 2; an unscaled retraction c_B H=id is rejected.
- The standard rank-two symplectic lattice maps to 2 in K₀(ℤ) and 1 in π₀ku.
- The two maps are maps of spectra before any Galois action is imposed; c_B is not declared Galois-equivariant on all KSp groups.

*Needs:* StableHomotopyKTheory §4.27; GeometryOfNumbersAndQuadraticArithmetic §§6.5–6.8a, 6.10a–6.11; GeneralizedCohomology G5.4–G5.6 and TopologicalKTheory T4–T5, T7; `TauCeti.SymplecticForm.exists_compatible`.

This interface provides the two detecting maps; c_H is the quotient and c_B singles out the conjugation splitting.

### 1.2 Bott-inverted symplectic K-theory

For q = pⁿ choose a compatible Adams v₁ self-map on the mod-q Moore spectrum, of degree 2pⁿ⁻¹(p−1), or a common positive multiple when coefficient compatibility requires iteration. Let T_q be its telescope and define KSpᵝ(ℤ;ℤ/q) = KSp(ℤ) ∧ T_q, with its ordinary-to-periodic map. Define the p-adic spectrum by the homotopy inverse limit of the coefficient tower. Extend the Betti and Hodge maps to Kᵝ and KU. At q = 3 use iterated self-maps without an associative Moore-ring hypothesis. Generic v₁ maps, telescopes and height-one localization are supplied by ChromaticHomotopyTheory CH.2–CH.3; this is their symplectic specialization. (FGV, Remark 2.8 and §3.6, author copy pp. 11–12, 22; FGV line 964.)

The interface has the following laws.

- The comparison is natural in coefficient reduction and the imported symplectic spectrum.
- At level q the self-map gives a degree-m periodic equivalence.
- c_H extends to KU and agrees with the connective map in its comparison range.
- The ℤ_p object is holim_n of the q-level objects, with its Milnor exact sequence.

One proof route is as follows. Import the compatible telescope and change-of-coefficients contract. Smash with KSp and extend the detection maps through the telescope. Form the p-adic homotopy limit, retaining the Milnor sequence until finiteness eliminates its derived limit. (FGV line 964, with the stated supplier contracts.)

**Checks.**

- For q=5, m=8; this definition does not give a degree-two Bott class over ℤ without adjoining ζ₅.
- At q=3 an iterated v₁ self-map is allowed, whereas associativity of S/3 is not.
- The coefficient reduction from pⁿ⁺¹ to p^n intertwines telescope maps after compatible iteration; independently chosen periodicity isomorphisms do not suffice.
- Finite coefficients admit the stated v₁-periodicity. No fixed-period assertion is made for the inverse-limit ℤ_p groups.

*Needs:* §1.1; StableHomotopyKTheory §§7.1–7.17, 7.28 and ChromaticHomotopyTheory CH.2–CH.3; StableHomotopyKTheory §7.7; GeneralizedCohomology G5.4–G5.6 and TopologicalKTheory T4–T5, T7.

Its downstream uses are: extends the Betti–Hodge computation to all integer degrees; realizes negative odd cyclotomic twists.

### Examples

The symplectic plane gives Betti rank 2 and Hodge rank 1. Its hyperbolic origin has normalized retraction (1/2)·2=1. At q=5 a v₁ period is 8, at q=25 it is 40, so the coefficient tower does not license one fixed period.

### Dependencies

StableHomotopyKTheory §4.27; GeometryOfNumbersAndQuadraticArithmetic §§6.5–6.8a, 6.10a–6.11; GeneralizedCohomology G5.4–G5.6 and TopologicalKTheory T4–T5, T7; `TauCeti.SymplecticForm.exists_compatible`; StableHomotopyKTheory §§7.1–7.17, 7.28 and ChromaticHomotopyTheory CH.2–CH.3; StableHomotopyKTheory §7.7. 

## Layer 2: CM coefficient lines and prescribed signs

### 2.1 Hermitian coefficient-line groupoids

For a CM field E, maximal order O with conjugation, and an invertible O-module ω with semilinear involution ι, let P(O,ω,ι) have invertible O-modules L with a perfect O-linear pairing b:L⊗_O bar L≅ω such that swapping the two factors agrees with ι. Arrows are O-linear isometries. Set P⁺=P(O,O,conjugation) and P⁻=P(O,ω_(O/ℤ),−conjugation), where the inverse different is the trace-dual line. Tensoring coefficient lines gives P⁺ an action on P⁻. A P⁻ object has a CM type determined by the signs of Im τ(b(x,x)), x≠0. This specializes the CM supplier’s polarized lattices; it is not another definition of CM lattices. (FGV, §4.2, Definitions 4.2–4.4, author copy pp. 24–25; FGV line 1078.)

The interface has the following laws.

- An isometry is determined by its underlying O-linear equivalence.
- Tensoring takes coefficient lines (ω,ι),(η,κ) to (ω⊗η,ι⊗κ), with the standard associativity and unit isometries.
- Aut(L,b)≅{u∈O× | u bar u=1}.
- A totally positive P⁺ line preserves type on P⁻; (O,−1) changes Φ to bar Φ.

One proof route is as follows. Reuse invertible modules, conjugate scalar action and the trace-dual inverse-different interface. Impose perfectness and the coefficient-line swap condition; isometries form the Core groupoid. Tensor forms and coefficient lines, and compare the skew form with the existing polarized-lattice sign convention. (FGV line 1078, with the stated supplier contracts.)

**Checks.**

- For E=ℚ(i), O=ℤ[i], the standard positive line has automorphisms {±1,±i}, not every nonzero element of E.
- For odd q, the norm-one units of O_q include μ_(2q); identifying the automorphism group with μ_q loses −1.
- Tensor of two skew coefficient-line objects changes the coefficient involution to a positive one; declaring P⁻ closed under the same tensor law fails.
- The full automorphism group of an object is the norm-one unit group; μ_q is only a specified subgroup when E=K_q.

*Needs:* ComplexMultiplicationAndExplicitReciprocity §§2.1–2.2; `Module.Invertible`; §0.2.

This interface tracks underlying ideal classes without losing polarization; supplies μ_q automorphisms and the coefficient-line tensor functors.

### 2.2 Trace polarization and CM realization

There is a functor ST:P⁻_E→A_g(ℂ) with g=[E:ℚ]/2. It sends (L,b) to the principally polarized CM abelian variety obtained from the symplectic lattice (L_Z,−Tr_(E/ℚ)b) and its unique compatible complex structure of type Φ(L,b). The positive Hermitian form is h(x,y)=−2i Σ_(τ∈Φ)τ b(x,y), with Im h=−Tr b. For this linear-first convention, ω(v,J_H v)=−h(v,v); hence the compatible almost-complex structure in Tau Ceti’s convention is −J_H for ω=Im h. Equivalently J_H is compatible with −ω. This sign adapter is required before invoking exists_compatible. The O-action is faithful and its Rosati involution restricts to conjugation. ST identifies P⁻ with the rank-one projective O-homology locus of the CM supplier’s classification. For a positive Hermitian O-line X, ST(L⊗X)≅ST(L)⊗_O X compatibly with polarization; (O,−1) gives complex conjugation. (FGV, §4.3 and Remark 4.6, author copy pp. 25–27; FGV line 1127.)

The interface has the following laws.

- Isometries induce polarized O-linear isomorphisms, and composition is preserved.
- Positive Hermitian-line tensoring agrees with polarized Serre tensor on the realized abelian varieties.
- The realized O-action is faithful, and its Rosati involution is conjugation.
- Conjugating the CM line reverses its type with the stated alternating-form sign.

One proof route is as follows. Check perfection of −Tr b against the inverse different and compare the sign with the CM supplier’s ξ convention. Apply the imported polarized Hodge equivalence and CM classification, rather than reproving algebraization. Use the existing Serre tensor functor and show its polarization agrees with tensoring coefficient lines. (FGV line 1127, with the stated supplier contracts.)

**Checks.**

- For E=ℚ(i), the lattice rank is two and the resulting abelian variety has dimension one.
- An isometry of CM lines induces a polarized O-linear isomorphism; an arbitrary isogeny is not such an arrow.
- For E = ℚ(i), take b(x,y) = (i/2)x·bar(y) on ℤ[i] and the identity CM type. Then −Tr b(1,i) = −1, h(1,1) = 1 and h(1,i) = −i. Thus Im h(1,i) = −1 and the native positive compatible structure is multiplication by −i.
- Multiplication by 2 on this lattice has determinant 4 and pulls its alternating form back to four times that form; it is an isogeny, not a polarization-preserving arrow.

*Needs:* §2.1; ComplexMultiplicationAndExplicitReciprocity §§2.1–2.2; ComplexMultiplicationAndExplicitReciprocity §1.3; AbelianSchemesAndArithmeticModuli §§A5.5, A5.8; `TauCeti.SymplecticForm.exists_compatible`.

### 2.3 Split primes with prescribed signs

Assume p is an odd prime, n≥1 and q=p^n; coefficients Λ_q=ℤ/q. ζ_q=exp(2πi/q); twists M(j)=μ_q(ℂ)^(⊗j) carry the left action χ_cyc^j; negative powers mean dual tensor powers.

For E=K_q and E⁺ its real subfield, any sign function on the real embeddings of E⁺ is realized by t∈O_(E⁺) whose principal ideal is a prime away from p splitting in E, so (t)O_E=x bar x for a prime ideal x of O_E. The narrow Hilbert class field used in the proof is the full narrow class field of E⁺, distinct from the p-Hilbert field H_q. The headline `exists_split_prime_with_signs` uses any native realization K of this cyclotomic field, its maximal real subfield, and a sign function valued in ℤ×. It explicitly requires a nonzero principal prime away from p and a factorization into two distinct conjugate nonzero prime ideals. (FGV, Lemma 4.8 and its proof, author copy pp. 28–29; FGV line 1263.)

One proof route is as follows. Encode the prescribed sign pattern by a narrow ideal class, using the existing narrow class-group/sign exact sequence. The narrow Hilbert class field is unramified at finite places, whereas E/E⁺ is ramified at the prime above p; hence their intersection is E⁺. Apply Chebotarev to the desired class and trivial Frobenius in E/E⁺, and choose a generator with the specified signs. (FGV line 1263, with the stated supplier contracts.)

**Checks.**

- For a real field with one embedding, both positive and negative sign patterns must be supported.
- The proof refers to embeddings of E⁺ into ℝ, not to nonexistent real embeddings of E.
- At q = 3 the real field is ℚ. The generators 7 and −7 realize both signs, and 7 = (3+ζ₃)(3+bar(ζ₃)) splits in ℚ(ζ₃). The prime 2 is inert and cannot be used instead.

*Needs:* ClassFieldTheory Layer 13; Chebotarev Layer 10.

### 2.4 CM types and ideal differences

Assume p is an odd prime, n≥1 and q=p^n; coefficients Λ_q=ℤ/q. ζ_q=exp(2πi/q); twists M(j)=μ_q(ℂ)^(⊗j) carry the left action χ_cyc^j; negative powers mean dual tensor powers.

For q odd, every CM type Φ on K_q and every invertible ideal L of O_q admit B₁,B₂∈P⁻_(K_q), both of type Φ, whose underlying ideal classes satisfy [B₁][B₂]⁻¹=[L][bar L]⁻¹. Thus all types occur, while prescribed anti-conjugate ideal differences can be realized without changing the Hodge type. (FGV, Proposition 4.7 and its proof, author copy pp. 27–29; FGV line 1232.)

One proof route is as follows. Use a purely imaginary generator δ of the inverse different to start with underlying modules O_q and L/bar L. Apply the prescribed-sign split-prime theorem to correct each polarization sign while keeping their ratio of ideal classes unchanged. Verify the resulting pairings are perfect and the types equal Φ. (FGV line 1232, with the stated supplier contracts.)

**Checks.**

- For L=O_q the two underlying classes have equal ratio one.
- Changing a single conjugate pair in Φ must be realizable without changing the requested ideal ratio.
- At q = 5 the pairs {1,4} and {2,3} give four CM types. The types {1,2} and {4,2} differ in one pair; both must be realized while preserving the prescribed anti-conjugate ratio.

*Needs:* §2.1; §2.3.

### Examples

For ℚ(i), b(x,y)=(i/2)x·bar(y) gives ω(1,i)=−1 and h(1,1)=1. The realized lattice has rank 2 and abelian dimension 1; the native positive compatible J is −i. For K₃ the real field is ℚ and ±7 provide both sign patterns at a split prime away from 3.

### Dependencies

ComplexMultiplicationAndExplicitReciprocity §§2.1–2.2; `Module.Invertible`; §0.2; ComplexMultiplicationAndExplicitReciprocity §1.3; AbelianSchemesAndArithmeticModuli §§A5.5, A5.8; `TauCeti.SymplecticForm.exists_compatible`; ClassFieldTheory Layer 13; Chebotarev Layer 10. 

## Layer 3: CM calculations and generation

### 3.1 CM Bott classes

For (L,b)∈P⁻_(K_q) and k≥1, let z_(L,b)=β_q²ᵏ⁻¹[L,b]∈KSp_(4k−2)(ℤ;ℤ/q). Here β acts through the specified μ_q subgroup of norm-one automorphisms, the unreduced stable nerve of P⁻, and its trace-form map to KSp. Products are supplied as iterated maps at q=3. Tensoring positive lines acts through this stable construction; a class [L,b] is in degree zero and its Bott translate has degree 4k−2. (FGV, §5, equations (5.1)–(5.3), author copy pp. 29; FGV line 1294.)

The interface has the following laws.

- Isometric CM lines define the same z class.
- Its Betti image is the K-transfer of the corresponding Bott/ideal class.
- Its Hodge image depends on the CM type through the type character sum.
- Reduction of coefficients and restriction of roots of unity commute with the class map through the compatible Bott tower.

One proof route is as follows. Use μ_q→Aut(L,b) to obtain the cyclic stable source. Apply the trace-form functor and the additive spectrum adjunction, importing the compatible tensor/module pairing. Fix Bott powers and coefficient maps before passing between different CM objects. (FGV line 1294, with the stated supplier contracts.)

**Checks.**

- At k=1 the output lies in degree two; replacing β²ᵏ⁻¹ by β^k fails for k=2.
- At q=5, the types {1,2} and {−1,2} give Hodge scalars 3 and 1 in F₅ for k=1.
- For two CM lines of the same type Φ their Hodge images agree. Their Betti difference is tr(β²ᵏ⁻¹([L₁]−[L₂])); a nonzero transfer therefore gives distinct classes with equal Hodge images.
- The construction keeps the degree-zero component rather than replacing the stable nerve by reduced homology.

*Needs:* §0.1; §2.1; §2.2; §1.1; GeneralAlgebraicKTheory §§7.1–7.7; GeneralizedCohomology G2.6 (the Γ-machine and its adjunction); GeneralizedCohomology G2.1–G2.8 and StableHomotopyKTheory §§5.1–5.19.

This interface builds arithmetic-kernel and Hodge-quotient generators; computes Galois differences on explicit geometric classes.

### 3.2 Hodge type character formula

Assume p is an odd prime, n≥1 and q=p^n; coefficients Λ_q=ℤ/q. ζ_q=exp(2πi/q); twists M(j)=μ_q(ℂ)^(⊗j) carry the left action χ_cyc^j; negative powers mean dual tensor powers.

If Φ⊂(ℤ/q)× is the type of (L,b), then c_H(β_q^i[L,b])=(Σ_(a∈Φ)a^i)·bott^i in π_(2i)(ku;ℤ/q). For odd i, the span of these scalars as Φ varies is all ℤ/q: changing the choice in one conjugate pair changes the sum by ±2a^i, a unit. Consequently c_H:KSp_(4k−2)(ℤ;ℤ/q)→ℤ/q is onto for k≥1, independently of the Betti–Hodge splitting theorem. (FGV, Proposition 5.2 and the final surjectivity argument of §5.1, author copy pp. 30–31; FGV line 1378.)

One proof route is as follows. Decompose the CM Hodge representation into characters indexed by Φ. Apply the universal Bott character formula to each summand. Change one conjugate pair and use that 2 and a are units. This proves surjectivity without using Theorem 3.5. (FGV line 1378, with the stated supplier contracts.)

**Checks.**

- For q=5, i=1, changing {1,2} to {−1,2} changes 3 to 1, a unit difference.
- For even i conjugate-pair switching has zero difference; the oddness hypothesis is essential.
- At q = 5 and i = 2, both {1,2} and {4,2} give 0 modulo 5. For i = 1 they give 3 and 1; oddness supplies the unit difference 2.

*Needs:* §3.1; §2.4; GeneralizedCohomology G5.4–G5.6 and TopologicalKTheory T4–T5, T7.

### 3.3 Betti transfer formula

Assume p is an odd prime, n≥1 and q=p^n; coefficients Λ_q=ℤ/q. ζ_q=exp(2πi/q); twists M(j)=μ_q(ℂ)^(⊗j) carry the left action χ_cyc^j; negative powers mean dual tensor powers.

For (L,b) ∈ P⁻_(K_q) and k ≥ 1, prove c_B(z_(L,b)) = tr_(O_q/ℤ)(β(ζ_q)²ᵏ⁻¹([L]−1)). The result depends only on the underlying invertible module L. The un-reduced calculation first gives the transfer of β²ᵏ⁻¹[L]. Its unit term vanishes: the trace of an odd cyclotomic Bott power is the sum of its Galois translates, and pairing a with −a makes that sum zero at odd q. Equivalently, dualization places the unit term in the negative eigensummand whereas the trace-form image is positive. These are two distinct involutions in the argument, not an identification of base-field conjugation with dualization. (FGV, §5.2, diagram (5.7), Corollary 5.4 and Remark 5.5, author copy pp. 31–32; FGV line 1428.)

One proof route is as follows. Compare the trace-form forgetful functor with restriction of scalars of the underlying O_q-module. Use Picard-to-K multiplicativity for the ideal factor. Remove the unit term by conjugation and the invertibility of 2. (FGV line 1428, with the stated supplier contracts.)

**Checks.**

- If L=O_q the Betti image is zero even when its Hodge image is nonzero.
- The exponent is 2k−1 throughout, including the Galois difference calculation.

*Needs:* §3.1; §0.3; §0.4.

### 3.4 Betti–Hodge splitting theorem

Assume p is an odd prime, n≥1 and q=p^n; coefficients Λ_q=ℤ/q. ζ_q=exp(2πi/q); twists M(j)=μ_q(ℂ)^(⊗j) carry the left action χ_cyc^j; negative powers mean dual tensor powers.

For i≥0 and q odd, (p_+c_B,p_-c_H):KSp_i(ℤ;ℤ/q)≅K_i(ℤ;ℤ/q)^(+)⊕π_i(ku;ℤ/q)^(−), where p_±=(1±ψ⁻¹)/2. In degree 4k−2, k≥1, this is K_(4k−2)(ℤ;ℤ/q)⊕ℤ/q, with the arithmetic term identified with H²_et(ℤ[1/p];μ_q^(⊗2k)). For i>0 the p-adic groups vanish for i≡0,1 mod4, are K_i(ℤ;ℤ_p)⊕ℤ_p for i≡2 mod4, and are K_i(ℤ;ℤ_p) for i≡3 mod4. The direct-sum splitting is an abelian-group assertion, not a Galois-equivariant splitting of the main extension. (FGV, Theorem 3.5, Corollary 3.6 and §3.4, author copy pp. 20–21; FGV line 871.)

One proof route is as follows. Import the Karoubi fiber sequence and odd-primary Witt calculation with the unscaled-H normalization. Compute its Betti–Hodge composite: the hyperbolic part maps by 1+ψ⁻¹, hence by 2 on the positive factor. Use the Hodge-unit calculation to identify the other factor, then pass to the p-adic limit using finite generation. (FGV line 871, with the stated supplier contracts.)

**Checks.**

- Degree zero is ℤ/q→ℤ/q via p_+c_B, multiplication by 2 on a symplectic-plane generator, hence an isomorphism for odd q.
- For p=3 the p-adic degree-three group agrees with K₃(ℤ;ℤ₃)=ℤ/3; the Hodge factor is zero.

*Needs:* §1.1; §3.2; GeometryOfNumbersAndQuadraticArithmetic §§6.5–6.8a, 6.10a–6.11; ArithmeticKTheory §§6.11, 6.15–6.16; GeneralizedCohomology G5.4–G5.6 and TopologicalKTheory T4–T5, T7; StableHomotopyKTheory §§7.9–7.13.

### 3.5 CM classes generate symplectic K-theory

Assume p is an odd prime, n≥1 and q=p^n; coefficients Λ_q=ℤ/q. ζ_q=exp(2πi/q); twists M(j)=μ_q(ℂ)^(⊗j) carry the left action χ_cyc^j; negative powers mean dual tensor powers.

For every odd q and k≥1, the map π^s_(4k−2)(|P⁻_(K_q)|;ℤ/q)→KSp_(4k−2)(ℤ;ℤ/q) is onto. For an ideal L, choose pairs of CM lines for L and O_q having a common type. The four-class difference has zero Hodge image and Betti image 2·tr(β²ᵏ⁻¹([L]−1)). The arithmetic transfer is onto and 2 is a unit; combine these kernel generators with one Hodge-unit combination. (FGV, Proposition 5.1 and §5.3, author copy pp. 29, 32–33; FGV line 1447.)

One proof route is as follows. Use the Betti–Hodge isomorphism, proved using the independent type-sum surjectivity argument, to detect all classes. Evaluate the four CM classes with the preceding Hodge and Betti formulas. Generate the arithmetic kernel by transfer and obtain the quotient by the independent Hodge-surjectivity calculation. (FGV line 1447, with the stated supplier contracts.)

**Checks.**

- The four-class Betti image contains the factor 2; removing it before division by its unit is an error.
- Hodge surjectivity precedes the splitting; CM generation uses that splitting and is not used to prove it.
- At q = 5 a transfer value 1 yields the four-class Betti value 2; multiplication by 3 recovers 1 because 2·3 = 1 modulo 5.

*Needs:* §3.2; §3.3; §2.4; §0.4; GeometryOfNumbersAndQuadraticArithmetic §§6.5–6.8a, 6.10a–6.11; §3.4.

### 3.6 Periodic and K(1)-local comparison

Assume p is an odd prime, n≥1 and q=p^n; coefficients Λ_q=ℤ/q. ζ_q=exp(2πi/q); twists M(j)=μ_q(ℂ)^(⊗j) carry the left action χ_cyc^j; negative powers mean dual tensor powers.

The Betti–Hodge map for KSp^(β) gives KSp^(β)_i(ℤ;ℤ/q)≅K^(β)_i(ℤ;ℤ/q)^(+)⊕π_i(KU;ℤ/q)^(−) for every integer i. For i≥0 it agrees with connective KSp. After p-completion this periodic spectrum is L_(K(1))KSp(ℤ), with the localization comparison specified by ChromaticHomotopyTheory CH.2–CH.3’s telescope contract. The analogous comparison for algebraic K-theory is imported; the exceptional degree-one comparison over ℤ is retained there. (FGV, Corollary 3.10 and Remark 3.11, author copy pp. 22; FGV line 989.)

One proof route is as follows. Apply compatible telescopes to the odd-primary splitting. Use the imported connective ku→KU range and arithmetic comparison theorem. Apply the height-one localization comparison, not a formal assertion that every telescope is a K(1)-localization. (FGV line 989, with the stated supplier contracts.)

**Checks.**

- At i=−2 the KU-negative factor occurs; it is absent in degree −4.
- The positive-degree comparison for KSp does not imply that K₁(ℤ)→K₁^(β)(ℤ) is an isomorphism.

*Needs:* §1.2; §3.4; StableHomotopyKTheory §§7.1–7.17, 7.28 and ChromaticHomotopyTheory CH.2–CH.3; ArithmeticKTheory §§5.2, 6.15–6.16.

### Examples

For q=5, k=1, types {1,2} and {−1,2} have Hodge values 3 and 1. Their difference is 2, whose inverse is 3 modulo 5. At k=2 the exponent is 3 and the degree is 6. A same-type four-class combination has Hodge value 0 and Betti value twice its transferred reduced ideal class.

### Dependencies

§0.1; §2.1; §2.2; §1.1; GeneralAlgebraicKTheory §§7.1–7.7; GeneralizedCohomology G2.6 (the Γ-machine and its adjunction); GeneralizedCohomology G2.1–G2.8 and StableHomotopyKTheory §§5.1–5.19; §2.4; GeneralizedCohomology G5.4–G5.6 and TopologicalKTheory T4–T5, T7; §0.3; §0.4; GeometryOfNumbersAndQuadraticArithmetic §§6.5–6.8a, 6.10a–6.11; ArithmeticKTheory §§6.11, 6.15–6.16; StableHomotopyKTheory §§7.9–7.13; §1.2; StableHomotopyKTheory §§7.1–7.17, 7.28 and ChromaticHomotopyTheory CH.2–CH.3; ArithmeticKTheory §§5.2, 6.15–6.16. The Hodge type-sum calculation precedes the splitting, and CM generation uses both; there is no circular generation argument.

## Layer 4: The ppav realization and arithmetic action

### 4.1 Polarized abelian Γ-groupoid

For a finite pointed set T, define A(T) from principally polarized abelian varieties (A,λ) and a unital ring map φ:ℤ^T→End(A) whose image is fixed by the Rosati involution defined by λ. Put e=1−e_* and select eA. Arrows are polarized isomorphisms of selected factors commuting with the ℤ^T-action. For f:T→U, restriction along f*:ℤ^U→ℤ^T defines the Γ map. The stack is equivalent to (∐_(g≥0)A_g)^(T ∖ {*}). This is a ppav specialization of the group-completion supplier’s Γ construction and the imported ppav moduli stack, not a second generic Γ-space. (FGV, Appendix A.4, equation (A.12), author copy pp. 59–60; FGV line 2729.)

The interface has the following laws.

- Pointed-set composition gives restriction functors with the specified coherent identifications.
- Projection to the non-basepoint factors identifies A(T) with A(S⁰)^(T ∖ {*}).
- Grades are dimension vectors (g_t); a pointed map sums entries in each non-basepoint fiber.
- Integral homology with the polarization gives the imported symplectic Γ model.

One proof route is as follows. Use the imported ppav stack and split Rosati-selfadjoint idempotents into orthogonal polarized factors. Define restriction using f* and compare its selected factor to the product over non-basepoint fibers. Verify coherence of the product decompositions using the generic Γ-space supplier. (FGV line 2729, with the stated supplier contracts.)

**Checks.**

- For T={*,a,b}, two non-basepoint factors of dimensions 1 and 2 have grade (1,2).
- Folding a and b to one non-basepoint gives their product, dimension 3; sending b to * removes that selected factor.
- For T={*}, all ambient ppav objects have selected factor zero and unique selected-factor morphisms; the nerve is contractible rather than literally one point.
- A({*}) is equivalent to the terminal groupoid, so its nerve is contractible; a chosen strict terminal model is a further equivalence.

*Needs:* GeneralizedCohomology G2.6; StableHomotopyKTheory §§4.24–4.25; PELModuli §§M1.5, M1.12, M6.2–M6.3, M6.9; PELModuli §§M2.3–M2.4, M2.8–M2.9, M3.9; AbelianSchemesAndArithmeticModuli §§A5.5, A5.8.

Its downstream uses are: algebraizes coherent orthogonal addition; ensures the Galois action respects the infinite-loop structure.

### 4.2 Rigidified ppav simplicial model

Rigidify the selected factor in A(T) by a projective embedding from the third power of the ample line bundle Δ*L, where L represents the principal polarization correspondence. Let U(T) be the coproduct of the resulting quasi-projective parameter schemes over embedding dimension and Hilbert polynomial. Its Čech nerve ℤ(T)_r has r+1 embeddings together with compatible isomorphisms of their ppav objects. It is a specified coproduct of quasi-projective simplicial schemes over ℚ, graded by dimension vectors. The construction is Γ-functorial through the imported product/rigidification coherence contract; it does not claim the entire unbounded coproduct is one quasi-projective scheme. (FGV, Appendix A.4, the atlas preceding Proposition A.13, author copy pp. 60; FGV line 2773.)

The interface has the following laws.

- Faces omit one embedding and compose its adjacent isomorphisms; degeneracies repeat an embedding.
- Every face and degeneracy preserves the dimension vector, and Γ maps push it forward by summing fibers.
- Changing projective embedding gives a common atlas refinement and an equivalent realized groupoid.
- Betti realization computes the analytic ppav stack by EH.5 smooth descent.

One proof route is as follows. Use the ample polarization line to obtain embeddings on each finite Hilbert-polynomial piece. Take the isomorphism schemes and form the Čech nerve in the smooth stack atlas. Retain the explicit dimension grading and coherent product maps when changing embeddings. (FGV line 2773, with the stated supplier contracts.)

**Checks.**

- The zero-dimensional ppav is represented and gives the monoidal unit.
- At simplicial degree one the data contain two embeddings and one isomorphism, not one embedding.
- For T=S⁰, arbitrarily large genera occur in different grades; replacing U(T) by a single fixed finite-type parameter scheme omits objects.
- For r=0 the nerve is U(T), not a double fiber product; all descent is applied on smooth atlas pieces.

*Needs:* §4.1; PELModuli §§M1.5, M1.12, M6.2–M6.3, M6.9; PELModuli §§M2.3–M2.4, M2.8–M2.9, M3.9; EtaleHomotopyTypes EH.5 (Betti realization and analytic descent).

Its downstream uses are: compares algebraic moduli with BSp; provides a ℚ-defined graded simplicial object for étale realization.

### 4.3 Betti model of symplectic K-theory

The analytic ppav stack of genus g is H_g//Sp_(2g)(ℤ), where Siegel space H_g is contractible. Its Betti realization is therefore weakly equivalent to BSp_(2g)(ℤ). Level N≥4 gives a smooth finite-level atlas; quotient singular complexes are compared by weak equivalences, not literal simplicial isomorphisms. For every finite pointed T, Sing_an Z_C(T)≃N SP_T(ℤ) naturally as special Γ-spaces; at S⁰ this is ∐_g BSp_(2g)(ℤ). Applying the existing Segal machine gives KSp(ℤ). (FGV, Appendix A.3–A.4, Proposition A.13, author copy pp. 58–60; FGV line 2786.)

One proof route is as follows. Import polarized complex uniformization and contractibility of Siegel space. Use the level cover and smooth descent to identify the analytic stack quotient. Compare the homology lattice functor on each selected factor and use the group-completion supplier’s group-completion comparison. (FGV line 2786, with the stated supplier contracts.)

**Checks.**

- For g=0 the analytic component is a point; for g=1 its homotopy type retains SL₂(ℤ) isotropy. A tangent-normalized degree-two Bott class pairs to +1 with ch₁(Lie A), and to −1 with ch₁(Lie A∨), as in the Gaussian sign convention.
- A special Γ-space has Ω-equivalences in levels n≥1. Its zeroth replacement is group completion: N→ℤ on genus components, not an equivalence before completion.

*Needs:* §4.2; StableHomotopyKTheory §4.27; GeneralizedCohomology G2.6; AbelianSchemesAndArithmeticModuli §§A5.5, A5.8; EtaleHomotopyTypes EH.5 (Betti realization and analytic descent); PELModuli §§M2.3–M2.4, M2.8–M2.9, M3.9; GeneralizedCohomology G2.1–G2.8 and StableHomotopyKTheory §§5.1–5.19; StableHomotopyKTheory §§4.21–4.27 and GeneralizedCohomology G2.6.

### 4.4 Galois action on the symplectic spectrum

Algebraic conjugation sends a complex ppav with structure map φ to the same underlying scheme with structure map Spec(σ⁻¹)∘φ, and transports its polarization and arrows. This gives a left Aut(ℂ)-action: σ·(τ·A)=(στ)·A. For an odd prime p, use componentwise graded p-completed étale realization of the ℚ-defined ℤ(T), with EH.6’s comparison, to obtain a homotopy-coherent Aut(ℂ)-action by spectrum maps on KSp(ℤ)^∧_p and compatible mod-p^n spectra. For p>3 the vanishing of H₁(A_g;𝔽_p) allows the direct finite-type comparison on each genus. For p=3 first smash each connected component, pointed by a rational ppav, with the simply connected Moore space M(ℤ/p^n,2), realize this simplicially, compare, then desuspend twice and pass through the tower. Naturality includes the discrete complex-point map. The action is independent, up to the supplied coherent equivalences, of rigidifications and basepoint choices. (FGV, Appendix A.5 and Remark A.14; Proposition 6.2, author copy pp. 34, 61–62; FGV line 2811.)

The interface has the following laws.

- Algebraic conjugation uses Spec(σ⁻¹)∘φ and satisfies σ·(τ·A)=(στ)·A; the induced spectral action respects composition with coherent homotopies.
- The discrete ppav-to-KSp map is equivariant for algebraic conjugation.
- All coefficient reduction maps and the p-adic limit are equivariant.
- Complex conjugation satisfies c_B∘c=c_B, using its continuous analytic comparison; this is not asserted for arbitrary σ.

One proof route is as follows. Check finite-dimensional mod-p cohomology separately on each dimension vector; do not p-complete the infinite component set as one object. Apply EH.6 automorphism naturality to discrete points and its Betti comparison. For p=3 use the Moore-smash construction before invoking simple-connectivity. Apply the homotopy-coherent Segal and coefficient-tower interface. Use the graded Moore realization contract for the coherent spectrum action. (FGV line 2811, with the stated supplier contracts.)

**Checks.**

- Check the inverse in the structure-map formula by composing σ then τ. The discrete groupoid A_g(ℂ) has many isomorphism-class components, while its analytic realization is connected for fixed g; those models must not be identified.
- For the coproduct ∐_N Spec ℂ the construction preserves the discrete N grading; ungraded profinite completion of components fails.
- At p=3, the genus-one H₁ obstruction prevents direct use of the H¹=0 comparison. Moore smashing must precede it.
- All q-level actions commute with reduction, so the p-adic action is defined on the spectrum, not merely separately on groups.

*Needs:* §4.3; EtaleHomotopyTypes EH.6 (p-completion and Betti–étale comparison); GeneralizedCohomology G2.6; StableHomotopyKTheory §§7.1–7.17, 7.28 and ChromaticHomotopyTheory CH.2–CH.3.

Its downstream uses are: transports explicit geometric CM conjugation to stable classes; gives compatible finite and p-adic actions.

### 4.5 Finite-genus detection of the action

Assume p is an odd prime, n≥1 and q=p^n; coefficients Λ_q=ℤ/q. ζ_q=exp(2πi/q); twists M(j)=μ_q(ℂ)^(⊗j) carry the left action χ_cyc^j; negative powers mean dual tensor powers.

For q odd, k≥1 and g≥φ(q), the map π^s_(4k−2)(|A_g(ℂ)^δ|;ℤ/q)→KSp_(4k−2)(ℤ;ℤ/q) is onto and equivariant for the action just constructed. This conservative bound suffices: CM objects have genus φ(q)/2 and can be stabilized to g by a rational principally polarized abelian variety. The q-level action is uniquely determined by equivariance of all discrete ppav maps in these degrees. Complex conjugation fixes c_B; the Hodge twist is established by CM formulas in Layer 5. (FGV, Propositions 6.1–6.2 and Lemma 6.4, author copy pp. 34–35; FGV line 1533.)

One proof route is as follows. Use CM generation and the ST functor, which lands in genus φ(q)/2. Stabilize by a rational ppav of the remaining dimension. The larger bound permits a rational stabilization of nonnegative dimension. Existence comes from the spectrum action; surjectivity proves uniqueness, without assuming the kernel of a surjection is Galois-stable. (FGV line 1533, with the stated supplier contracts.)

**Checks.**

- For q=5 a CM lattice has genus 2, and the stated surjection applies at g=4 by adding a rational genus-2 factor.
- The zero-rank rational stabilizer is allowed; its class must be the orthogonal unit.

*Needs:* §4.4; §3.5; §2.2.

### Examples

With T={*,a,b}, genus vector (1,2) folds to genus 3, whereas sending b to * selects genus 1. Čech degrees 0,1,2 have 1,2,3 embeddings. For q=5 the CM genus is 2 and a rational genus-2 factor puts it in the stated genus-4 range.

### Dependencies

GeneralizedCohomology G2.6; StableHomotopyKTheory §§4.24–4.25; PELModuli §§M1.5, M1.12, M6.2–M6.3, M6.9; PELModuli §§M2.3–M2.4, M2.8–M2.9, M3.9; AbelianSchemesAndArithmeticModuli §§A5.5, A5.8; EtaleHomotopyTypes EH.5 (Betti realization and analytic descent); StableHomotopyKTheory §4.27; GeneralizedCohomology G2.1–G2.8 and StableHomotopyKTheory §§5.1–5.19; StableHomotopyKTheory §§4.21–4.27 and GeneralizedCohomology G2.6; EtaleHomotopyTypes EH.6 (p-completion and Betti–étale comparison); StableHomotopyKTheory §§7.1–7.17, 7.28 and ChromaticHomotopyTheory CH.2–CH.3; §3.5; §2.2. The coherent Γ/product/coefficient realization contract is required to construct the action before finite-genus surjectivity is used to characterize it.

## Layer 5: CM reciprocity and relative extensions

### 5.1 Groupoid CM reciprocity formula

Let E/ℚ be a Galois CM field and H its full Hilbert class field. For each embedding τ:E → ℂ choose an extension w_τ:H → ℂ, with w_(cτ) = c ∘ w_τ; here τc = cτ as embeddings of E. This does not assert that w_τ commutes with a fixed conjugation of H. Transport by σ ∈ Aut(ℂ) sends type Φ to σΦ. On each source type fiber the induced map on isometry classes is tensoring by a line (X,h) ∈ P⁺_E determined by σ and Φ; its signatures may be negative, and σ = c uses (O,−1). Arithmetic Artin reciprocity sends [X] to the product over τ ∈ Φ of w_(στ)⁻¹ σ w_τ in Gal(H/E). Transport is naturally compatible with Serre tensor by positive Hermitian lines. For E = K_q the induced stable map sends β_qʲ[L,b] to β_qʲF_σ[L,b], using compatible iterated Bott maps at q = 3. This is the stable Bott-linearity that permits the reciprocity formula to be evaluated on the spanning CM classes. The full H is distinguished from its p-subfield H_q. (FGV, Theorem 6.6 and equations (6.3)–(6.4), author copy pp. 35–36; FGV line 1624.)

One proof route is as follows. Invoke the CM owner’s polarization/reflex reciprocity dictionary with arithmetic Artin normalization. Translate its idelic expression to the chosen conjugation-compatible lifts and the ideal class of X; the arbitrary-automorphism supplier contract fixes this dictionary. Use the Serre-tensor comparison and the discrete-point equivariance to transport the formula to stable CM classes. Use positive-line Serre tensor naturality to obtain a module map on stable nerves, then the Bott-linearity of Theorem 6.6(ii); positivity is used for this acting subgroup, not for the translating line X. (FGV line 1624, with the stated supplier contracts.)

**Checks.**

- For σ=1 all factors are identity with normalized identical lifts.
- For E=K_q, σ sends the type subset to χ_cyc(σ)Φ while the transported O-action remains the specified one.
- For σ=c the line (O,−1) changes Φ to its conjugate. A positive translating line would preserve Φ and contradict this case.
- If the class kernel has a minus element a of order 3, then in the semidirect product c a c⁻¹ = a⁻¹, and (a c a⁻¹) ≠ c. Requiring all lifted embeddings to commute with c would eliminate valid embeddings.

*Needs:* ComplexMultiplicationAndExplicitReciprocity §§2.1–2.2; ComplexMultiplicationAndExplicitReciprocity §1.3; §2.2; §4.4; ClassFieldTheory Layer 11; ClassFieldTheory Layer 13.

### 5.2 Split extension category

For a commutative ring Λ, group G, subgroup H and left Λ[G]-module M, let C_Λ(G,H;M) have objects (V,π,s) with π:V→M a surjective G-linear map, trivial G-action on T=ker π, and an H-linear section s:M→V with π∘s=id_M. A morphism f is G-linear, satisfies π′f=π and fs=s′, and may induce any Λ-linear map on kernels. The unsectioned category C_Λ(G;M) remembers only (V,π). The H-split subcategory of that category forgets the chosen section. (FGV, Definition 7.3 and equations (7.4)–(7.6), author copy pp. 37–38; FGV line 1695.)

The interface has the following laws.

- Every element of G fixes every vector in ker π.
- α(g,m)=g·s(m)−s(g·m) lies in ker π, vanishes on H and satisfies α(gg′,m)=α(g,g′·m)+α(g′,m).
- A morphism is exactly a G-linear map over M preserving the section; its kernel map need not be an identity.
- (m,t)↦s(m)+t identifies V with M⊕T over Λ[H], with G-action (g·m,t+α(g,m)).

One proof route is as follows. Define the category on existing module and representation carriers with the displayed section equation. Kernels use the inherited representation; demand that each group element act identically there. Compose the underlying maps; the commuting equations are stable under identity and composition. (FGV line 1695, with the stated supplier contracts.)

**Checks.**

- With H=G, every object is a G-split M⊕T; the object M→M with zero kernel is initial as well as terminal.
- For G=1, M=Λ and T=Λ, projection and the inclusion section satisfy πs=id_M, while sπ≠id_V.
- The map M⊕T→M killing T is a valid morphism to the terminal object; requiring identity on kernels would wrongly exclude it.
- Distinguish C_Λ(G,{1};M), with a chosen Λ-linear section, from the unsectioned category.

*Needs:* `Representation`; `LinearMap`; `CategoryTheory.Under`.

This interface defines the category whose kernel is relative H₁; makes initiality a precise assertion with its allowed kernel maps.

### 5.3 Relative bar convention comparison

For the relative chain complex C_*(G,H;M)=C_*(G;M)/C_*(H;Res M) imported from R02.2, construct its FGV left-coefficient presentation and comparison. It has C₀=0 and H₁ presented by generators [g]⊗m, linear in m, relations [h]⊗m=0 for h∈H and [gg′]⊗m=[g]⊗g′m+[g′]⊗m. Supply an explicit natural chain equivalence with Mathlib’s inhomogeneous-chain convention, whose differential uses inverse actions, before invoking its groupHomology. The canonical α_univ(g,m)=[g]⊗m is a relative 1-cycle class. (FGV, §7.1, equations (7.5)–(7.8), author copy pp. 38; FGV line 1735.)

The interface has the following laws.

- H₀(G,H;M)=0 because the degree-zero relative chains vanish.
- A Λ-linear map H₁(G,H;M)→T is equivalent to a linear-in-m function obeying the H-vanishing and cocycle relations.
- The natural chain comparison has T₀=id, T₁([g]⊗m)=[g⁻¹]⊗m and T₂([g,g′]⊗m)=[g′⁻¹,g⁻¹]⊗m. These formulas intertwine the low differentials and descend to the pair quotient; the full comparison identifies the imported absolute and relative homology.
- A map of pairs and an equivariant coefficient map send [g]⊗m to [f(g)]⊗u(m).

One proof route is as follows. In degrees zero, one and two use T₀=id, T₁([g]⊗m)=[g⁻¹]⊗m and T₂([g,g′]⊗m)=[g′⁻¹,g⁻¹]⊗m. Check d_native T₁=T₀ d_FGV and d_native T₂=T₁ d_FGV using the actual inverse-action differential. Extend this to a natural comparison in all degrees through the relative homology contract. Pass to the quotient by H-chains, whose degree-zero inclusion is the identity. Read the degree-two boundary as the cocycle relation. Compare its long exact sequence and subgroup functoriality with the imported relative homology interface. (FGV line 1735, with the stated supplier contracts.)

**Checks.**

- For H=G every relative chain group is zero, hence H₁=0.
- For G=ℤ, H=1 and trivial M=ℤ, H₁≅ℤ with [r]⊗m↦rm.
- For G=C₂, H=1 and M=ℤ/5 with sign action, the relation [c²]⊗m=[c]⊗(−m)+[c]⊗m imposes zero; H₁(G,1;M)≅ℤ/5. Omitting the coefficient action would incorrectly force it to vanish.
- For G=C₃=⟨g⟩ and M=𝔽₇ with g·m=2m, d_FGV([g]⊗1)=1, while d_native([g]⊗1)=3 since g⁻¹ acts by 4. After T₁ the native boundary of [g⁻¹]⊗1 is 1. A sign C₂ test alone cannot distinguish these inverse conventions.
- For the nonabelian group S₃ and M=ℤ/5 with sign action, put a(g,m)=(1−sgn(g))m/2. For a transposition s and a 3-cycle r, a(sr,1)=1=a(s,r·1)+a(r,1); for s²=1 the two sides are 0=−1+1. Thus the left-coefficient relation survives noncommuting inputs.
- The target presentation must retain the coefficient action in the [gg′] relation.

*Needs:* `groupHomology`; `groupHomology.inhomogeneousChains`; `Representation`; ArithmeticGaloisDuality R02.2 (Hochschild–Serre and transgression).

This interface represents all possible extension cocycles; identifies the canonical kernel map including its sign convention.

### 5.4 Universal relative extension

There is an equivalence C_Λ(G,H;M)≃(H₁(G,H;M)↓Mod_Λ). Its initial object has underlying module M⊕H₁(G,H;M), projection to M, section m↦(m,0), and action g·(m,t)=(g·m,t+[g]⊗m). Every extension is its pushout through the unique cocycle-induced kernel map. For Λ-projective M, if H₀(H;M)=H₁(H;M)=0, forgetting the section is an equivalence to C_Λ(G;M); if only H₀ vanishes, it is an equivalence to its H-split subcategory. In this roadmap these forgetful assertions are used for finite free M and H=⟨c⟩ with c acting by −1 over an odd-primary coefficient ring. (FGV, Lemmas 7.4 and 7.6, author copy pp. 38–39; FGV line 1747.)

One proof route is as follows. Extract α from an extension and factor it through the relative bar presentation. Conversely use a map from H₁ to define the displayed action; check associativity by the bar boundary relation. Forgetting a section uses the Hom/Ext vanishing from the subgroup homology groups, checked over Λ rather than ℤ. In the conjugation case the idempotent (1−c)/2 gives the unique section. (FGV line 1747, with the stated supplier contracts.)

**Checks.**

- For G=H=C₂ and M a sign ℤ/5 module, H₁(G,H;M)=0 and the initial extension is M itself.
- For an initial object of the unsectioned extension category, a nonzero kernel precludes a G-equivariant splitting: a section would give distinct identity and kernel-killing endomorphisms. This argument requires the unsectioned category or the section-forgetting equivalence.
- For G = C₂, H = 1, M = ℤ/5 with sign action, the relative kernel is ℤ/5. Its universal action is c(m,t) = (−m,t+m), and c²(m,t) = (m,t); absolute H₁ here is zero. The G-equivariant section m ↦ (m,2m) exists modulo 5, but differs from the chosen H-section (m,0); this distinguishes initiality with section data from unsectioned initiality.

*Needs:* §5.2; §5.3; `CategoryTheory.Under`.

### Examples

For G=C₂, H=1 and the sign module ℤ/5, the relative kernel is ℤ/5 and c(m,t)=(−m,t+m); applying c twice gives (m,t). For H=G it is 0. For C₃ acting on ℤ/7 by 2, the FGV boundary of [g]⊗1 is 1 while the native boundary is 3; inversion of g changes the latter to 1.

### Dependencies

ComplexMultiplicationAndExplicitReciprocity §§2.1–2.2; ComplexMultiplicationAndExplicitReciprocity §1.3; §2.2; §4.4; ClassFieldTheory Layer 11; ClassFieldTheory Layer 13; `Representation`; `LinearMap`; `CategoryTheory.Under`; `groupHomology`; `groupHomology.inhomogeneousChains`; ArithmeticGaloisDuality R02.2 (Hochschild–Serre and transgression). 

## Layer 6: Finite universal arithmetic extensions

### 6.1 Finite arithmetic Galois action

Assume p is an odd prime, n≥1 and q=p^n; coefficients Λ_q=ℤ/q. ζ_q=exp(2πi/q); twists M(j)=μ_q(ℂ)^(⊗j) carry the left action χ_cyc^j; negative powers mean dual tensor powers.

For q odd and k≥1, the spectrum action on V_q=KSp_(4k−2)(ℤ;ℤ/q) factors through G_q=Gal(H_q/ℚ). The Hodge map gives an exact G_q-sequence 0→T_q→V_q→M_q→0 with M_q=μ_q^(⊗(2k−1)), trivial action on T_q, and T_q≅K_(4k−2)(ℤ;ℤ/q). The restriction c_H:ker c_B→M_q is an isomorphism and its inverse is the unique ⟨c⟩-equivariant splitting. The Hodge map has weight 2k−1; the Betti map is only conjugation-invariant on V_q. (FGV, Lemma 7.7 and its proof, author copy pp. 39–40; FGV line 1805.)

One proof route is as follows. Compute Galois transport on the spanning CM Bott classes using reciprocity and the type character formula. If σ fixes H_q then its CM type is fixed and its Hermitian tensor line has zero p-primary ideal class. Its ideal class therefore vanishes modulo q, so both detection differences vanish; the full ideal class need not be principal. Differences between classes of a fixed CM type give fixed arithmetic-kernel generators. Complex conjugation gives the unique splitting because it is −1 on M_q and +1 on T_q. (FGV line 1805, with the stated supplier contracts.)

**Checks.**

- For σ in Gal(C/H_q), every CM generator is fixed in V_q although its geometric ppav representative need not be fixed.
- Under the abelian-group coordinates T_q⊕M_q the action may have a nonzero off-diagonal cocycle; it is not declared diagonal.
- At q = 5, conjugation has eigenvalues +1 on T_q and −1 on M_q. Thus (1−c)/2 selects the section and (1+c)/2 selects the kernel.

*Needs:* §3.4; §3.5; §5.1; §4.5.

### 6.2 CM reciprocity identifies the universal cocycle

Assume p is an odd prime, n≥1 and q=p^n; coefficients Λ_q=ℤ/q. ζ_q=exp(2πi/q); twists M(j)=μ_q(ℂ)^(⊗j) carry the left action χ_cyc^j; negative powers mean dual tensor powers.

Give the extension V_q the ⟨c⟩-section s=(c_H|ker c_B)⁻¹. Its cocycle α(σ,m)=σs(m)−s(σm) defines H₁(G_q,⟨c⟩;M_q)→T_q. Under the Artin–Bott transfer isomorphism of Layer 0 this map is the identity. Explicitly a CM type Φ supplies the coefficient (Σ_(a∈Φ)a²ᵏ⁻¹) and reciprocity supplies the product of lift differences; their relative-bar class is [σ] times that coefficient. Equality is in homology modulo boundaries and the ⟨c⟩-chains. (FGV, §7.3, equations (7.12)–(7.19), author copy pp. 41–42; FGV line 1874.)

One proof route is as follows. Write the projection V_q→T_q along the conjugation section as the appropriately normalized (1+c) operator. Use reciprocity to express the CM Galois difference as the transfer of β²ᵏ⁻¹([X]−1), retaining that exponent. Apply the cocycle relation to the chosen w_τ and pair conjugate embeddings; the correction terms cancel as relative boundaries, not as raw bar generators. A type-sum unit combination identifies the induced homomorphism on every m∈M_q. (FGV line 1874, with the stated supplier contracts.)

**Checks.**

- At k=2 every Bott term has exponent 3 and the coefficient has χ³ weight.
- Changing the compatible lifts changes representatives by boundaries and leaves the homology map unchanged.
- For σ = c, both α(c,m) and [c] ⊗ m in the relative quotient are 0. For χ(σ) = 2 at k = 2, the coefficient weight is 2³ = 3 modulo 5, rather than 2² = 4.

*Needs:* §6.1; §0.5; §5.3; §5.1; §3.2; §3.3.

### 6.3 Finite-coefficient universal extension theorem

Assume p is an odd prime, n≥1 and q=p^n; coefficients Λ_q=ℤ/q. ζ_q=exp(2πi/q); twists M(j)=μ_q(ℂ)^(⊗j) carry the left action χ_cyc^j; negative powers mean dual tensor powers.

For odd p, q=p^n and k≥1, the arithmetic sequence 0→K_(4k−2)(ℤ;ℤ/q)→KSp_(4k−2)(ℤ;ℤ/q)→μ_q^(⊗(2k−1))→0 is initial in C_(ℤ/q)(G_q,⟨c⟩;μ_q^(⊗(2k−1))) and in the unsectioned category C_(ℤ/q)(G_q;μ_q^(⊗(2k−1))). Its kernel is canonically H₁(G_q,⟨c⟩;μ_q^(⊗(2k−1))) through Artin–Bott transfer. The inclusion of the arithmetic K group is the inverse of c_B on the Hodge kernel; relative to the standard hyperbolic H on this positive summand it is (1/2)H. (FGV, Theorem 7.1, Remark 7.2 and §7.3, author copy pp. 37, 41–42; FGV line 1668.)

One proof route is as follows. Use the explicit cocycle identification to compare the universal relative extension with the KSp extension. The resulting kernel map is an isomorphism and so is the map of extensions. Forget the uniquely determined conjugation section using vanishing for the sign module. (FGV line 1668, with the stated supplier contracts.)

**Checks.**

- If the arithmetic kernel is zero, the Hodge map is an isomorphism and initiality reduces to the zero-kernel case.
- If the kernel is nonzero, the extension cannot have a G_q-equivariant section even though it splits as a ℤ/q-module.
- At q = 5 the normalized inclusion sends a positive-factor element x by (1/2)H = 3H, and c_B(3H(x)) = 6x = x.

*Needs:* §6.2; §5.4; §6.1.

### Examples

At q=5, conjugation has eigenvalues (+1,−1) on kernel and quotient. The kernel projection is (1+c)/2 and the section projection is (1−c)/2. The inclusion 3H has Betti composite 6=1 modulo 5. At k=2, Frobenius value χ=2 has quotient weight 2³=3.

### Dependencies

§3.4; §3.5; §5.1; §4.5; §0.5; §5.3; §3.2; §3.3; §5.4. 

## Layer 7: Continuous and locally split universal extensions

### 7.1 Continuous universal extensions

Let Γ be a profinite group, H a closed subgroup and M a finite free ℤ_p-module with continuous action. In C^cts_(ℤ_p)(Γ,H;M), objects and morphisms are the continuous counterparts of Layer 5 with finitely generated p-complete kernel and middle module and a continuous H-section. Completed relative homology is computed by the completed bar complex, equivalently the inverse system over open normal U and coefficient powers p^n with the induced pair and coefficient coinvariants. For the Γ and G occurring below, finite-coefficient homology is finite and the resulting H₁ is finitely generated; thus its completed universal extension is initial in this category. Surjective finite towers remove the relevant lim¹ obstruction. (FGV, §7.4 and the compact limit in §7.5, author copy pp. 43–46; FGV line 1968.)

The interface has the following laws.

- For finite-free M the reduction 0→T/p^nT→V/p^nV→M/p^nM→0 is exact, with induced continuous action and H-section. Freeness removes the Tor term; this is not asserted for arbitrary torsion quotients M.
- Continuous cocycles factor uniquely through completed H₁, with the finite quotient coefficient coinvariants included.
- Compatible universal finite extensions give the continuous universal extension under the stated compact finite-type and limit hypotheses.
- For odd sign action by c, the unique section is continuous and forgetting it is an equivalence.

One proof route is as follows. Use the compact continuous module and completed homology contract from the cohomology owner. Reduce a finite-type compact extension modulo p^n, also quotienting the group by an open subgroup that acts trivially on the finite data. Pass the universal maps and their uniqueness through compact inverse limits. Verify finiteness and derived-limit vanishing for the actual groups rather than for arbitrary profinite Γ. (FGV line 1968, with the stated supplier contracts.)

**Checks.**

- For Γ=H=1 and M=ℤ_p the initial object has zero kernel, not a free extra kernel.
- For Γ=C₂=⟨c⟩, H=1 and M=ℤ_p with sign action, completed relative H₁ is ℤ_p. The universal object is ℤ_p⊕ℤ_p with c(m,t)=(−m,t+m). Reducing modulo p^n gives the nonzero-kernel §5.2 object over ℤ/p^n; its kernel is ℤ/p^n, not zero.
- For Γ=ℤ_p, H=1 and M=ℤ_p trivial, the completed H₁ is ℤ_p; replacing Γ by a discrete group or forgetting its topology is not the defining construction.
- Continuity of a ℤ_p-module homomorphism is retained in the categorical statement.

*Needs:* §5.4; ArithmeticGaloisDuality R02.1 (compact coefficients and limits); ArithmeticGaloisDuality R02.2 (Hochschild–Serre and transgression); StableHomotopyKTheory §§7.1–7.17, 7.28 and ChromaticHomotopyTheory CH.2–CH.3.

Its downstream uses are: specifies the topological category for p-adic initiality; allows a closed decomposition subgroup and completed relative homology.

### 7.2 p-adic universal extension theorem

Assume p odd prime; k≥1; the finite-type compact coefficient category is fixed as in §7.1.

Let H_∞=∪_(n≥1)H_(p^n) and Γ=Gal(H_∞/ℚ). For k≥1 the spectrum action gives a continuous exact sequence 0→K_(4k−2)(ℤ;ℤ_p)→KSp_(4k−2)(ℤ;ℤ_p)→ℤ_p(2k−1)→0. The arithmetic kernel is finite with trivial Γ-action. With its unique conjugation-equivariant section it is initial in C^cts_(ℤ_p)(Γ,⟨c⟩;ℤ_p(2k−1)); forgetting that section gives initiality in the unsectioned category of finite-type compact continuous extensions. Its kernel is H₁^cts(Γ,⟨c⟩;ℤ_p(2k−1)). (FGV, Theorem 7.8 and its proof, author copy pp. 43–44; FGV line 2009.)

One proof route is as follows. Use the compatible finite G_q actions and universal extensions, and the nesting of the p-Hilbert fields. The K-theory coefficient tower has finite groups; its inverse-limit comparison has no lim¹ term. The underlying arithmetic group in this degree is finite. Apply the continuous completed-bar universal property and preserve the unique c-section through the limit. (FGV line 2009, with the stated supplier contracts.)

**Checks.**

- The acting group here is Γ, not the unramified-outside-p group introduced in the local theorem.
- At a regular prime the kernel vanishes; at an irregular degree with nonzero kernel, a Γ-equivariant section is impossible.
- For p = 3, k = 1, K₂(ℤ;ℤ₃) = 0 and c_H identifies the extension with ℤ₃(1).

*Needs:* §6.3; §7.1; StableHomotopyKTheory §§7.9–7.13; ArithmeticKTheory §§3.1–3.5; §4.4; ArithmeticKTheory §§7.1–7.5.

### 7.3 Local splitting and relative homology

Assume p is an odd prime, n≥1 and q=p^n; coefficients Λ_q=ℤ/q. ζ_q=exp(2πi/q); twists M(j)=μ_q(ℂ)^(⊗j) carry the left action χ_cyc^j; negative powers mean dual tensor powers.

Let ℚ(p) be the maximal extension of ℚ unramified outside p and G=Gal(ℚ(p)/ℚ). First choose a compatible c-fixed prime above p in H_∞. Extend that place arbitrarily to ℚ(p), obtaining G_𝔭, and let D_q⊂G_q be its image. The subgroup D_q contains c; the extended place itself is not required to be c-fixed and no assertion c∈G_𝔭 is used. The natural map of pairs (G,G_𝔭)→(G_q,D_q) induces H₁^cts(G,G_𝔭;M_q)≅H₁(G_q,D_q;M_q)≅H₁(G_q,⟨c⟩;M_q). The second displayed isomorphism is the inverse of the map induced by ⟨c⟩⊂D_q. Here D_q≅Gal(K_q/ℚ) because the principal prime above p splits in H_q/K_q. The KSp extension is uniquely D_q-split and its section has image ker c_B. (FGV, §7.5, Lemmas 7.12–7.13, author copy pp. 44–46; FGV line 2067.)

One proof route is as follows. The finite prime sets in the p-Hilbert tower have odd size, so each has a c-fixed member. Compactness of the inverse system gives compatible fixed members; extend the resulting place arbitrarily to ℚ(p). Use the principal cyclotomic prime to identify D_q and its action. Its central conjugation kills homology of the odd coefficient twist. Apply the relative Hochschild–Serre edge to the kernels of the cyclotomic quotients. Class field theory identifies the maximal abelian p-extension unramified everywhere and split at p with H_q. (FGV line 2067, with the stated supplier contracts.)

**Checks.**

- The c-fixed condition is imposed in H_∞. Its image puts c in every D_q and identifies ker c_B with the local section, even if the extended place in ℚ(p) is not fixed by c.
- D_q is the cyclotomic quotient, while Gal(H_q/K_q) is the p-class-group kernel; they must not be interchanged.
- At q = 3 the class kernel is 0 and D_q = C₂. Both H₁(C₂,C₂;ℤ/3(1)) and H₁(C₂,⟨c⟩;ℤ/3(1)) are 0.

*Needs:* §6.1; §5.3; §7.1; ClassFieldTheory Layer 13; ArithmeticGaloisDuality R02.2 (Hochschild–Serre and transgression).

### 7.4 Universal locally split Galois extension

For odd p and k≥1, the sequence of §7.2, inflated to G, has a unique G_𝔭-equivariant splitting with image ker c_B and is initial in C^cts_(ℤ_p)(G,G_𝔭;ℤ_p(2k−1)). Equivalently its associated lisse ℤ_p-sheaf on Spec ℤ[1/p] is the universal extension of ℤ_p(2k−1) by a constant finite-type ℤ_p-sheaf whose pullback to Spec ℚ_p is split. Its kernel is H₁^cts(G,G_𝔭;ℤ_p(2k−1)). All object maps and the chosen local section are continuous. (FGV, Theorem 7.10 and Remark 7.11, author copy pp. 44–46; FGV line 2044.)

One proof route is as follows. At finite coefficients compare the universal kernel with relative H₁ for the local pair. Take the compatible inverse limit; uniqueness follows from an element of G_𝔭 with χ=−1. Translate continuous finite-free/finite-type representations and their extension sheaves through the existing lisse-sheaf supplier. (FGV line 2044, with the stated supplier contracts.)

**Checks.**

- The global extension need not split although its ℚ_p pullback does.
- The sheaf formulation uses arithmetic descent and the specified local pullback, not a newly defined KSp sheaf at every scheme.
- At p = 3, k = 1 the zero-kernel extension is the twist itself; its local section is the identity.

*Needs:* §7.3; §7.2; §7.1; ArithmeticGaloisDuality R02.1 (compact coefficients and limits); EtaleCohomologyFoundations §§F.0.2, F.4.1–F.4.6 (lisse integral coefficients and restriction).

### 7.5 Bott-inverted universal extension theorem

For every integer k, including k≤0, replace the K and KSp groups in the finite, p-adic and local universal extensions by their Bott-inverted versions. Their quotients remain μ_q^(⊗(2k−1)) or ℤ_p(2k−1), and all three initiality statements hold in the same coefficient categories. At finite q one may move k to a positive integer using a compatible period for both the group and cyclotomic twist. Then pass to the p-adic limit; this passage does not make the ℤ_p groups periodic. (FGV, Theorem 7.14 and Remark 7.15, author copy pp. 46–47; FGV line 2133.)

One proof route is as follows. Use the finite v₁-period and the matching χ-power period to compare with a positive k. Transport the universal property through the resulting equivariant extension isomorphism. Use coefficient compatibility to pass to Γ and the local G pair, without choosing one period independent of n. (FGV line 2133, with the stated supplier contracts.)

**Checks.**

- At k=0 the quotient has twist −1 and the group is in degree −2.
- A degree shift chosen solely from topological KU periodicity is insufficient unless its cyclotomic twist is unchanged.
- At q = 5, k = 0 has exponent −1 ≡ 3 modulo 4, so its coefficient character agrees with k = 2; the group degrees −2 and 6 differ by the finite period 8.

*Needs:* §3.6; §6.3; §7.2; §7.4.

### 7.6 Trivial action in degree 4k−1

For p odd and k≥1, Aut(ℂ) acts trivially on KSp_(4k−1)(ℤ;ℤ_p). The sphere-unit map π^s_(4k−1)(S;ℤ_p)→K_(4k−1)(ℤ;ℤ_p) is onto, by Quillen’s finite-field comparison at an auxiliary prime ℓ topologically generating ℤ_p×. The symplectic unit made from a rational elliptic curve maps under c_B to twice that unit. Since c_B is an isomorphism in this degree and 2 is invertible, the rational symplectic unit is onto and is Galois-fixed. (FGV, §7.7 and Remark 7.16, author copy pp. 47–48; FGV line 2154.)

One proof route is as follows. Invoke the precise sphere-unit/finite-field contract the sphere-unit contract and the norm-residue comparison. Check the local invariants have cyclotomic exponent 2k, not 2k−1. Use an elliptic curve defined over ℚ to make the symplectic unit map equivariant for the trivial sphere action. (FGV line 2154, with the stated supplier contracts.)

**Checks.**

- For p=3,k=1 the ℤ/3 group in degree three has trivial action even though adjacent degree two may carry a nontrivial extension.
- For p = 5, k = 1 the 5-primary part of K₃(ℤ), of order dividing 48, is 0. The trivial action statement includes this zero case.
- At p = 3 the Betti composite of the rational symplectic unit is multiplication by 2, which is invertible; replacing that factor by 0 would lose the nonzero ℤ/3 quotient.

*Needs:* §3.4; §4.4; KTheoryFiniteLocalFields §§1.1–1.2; ArithmeticKTheory §§6.11, 6.15–6.16; Chebotarev Layer 10.

### 7.7 Vandiver and conjugation-fixed primes

For q=p^n, the primes of H_q above p form a torsor under Gal(H_q/K_q). After choosing a c-fixed prime, c acts on this torsor by its action on that p-class group. Thus there is exactly one c-fixed prime precisely when its plus part is zero; under the Iwasawa control interface this is equivalent to Vandiver(p). This assertion concerns c-fixed primes. The entire prime set is a singleton only when the full p-class group vanishes, the regular-prime condition. (FGV, Remark 7.9, author copy pp. 44; FGV line 2036.)

One proof route is as follows. Identify the prime torsor because p is principal and splits in H_q/K_q. Translate c-fixed points to the plus part of the odd p-group. Use the Iwasawa owner’s finite-level/tower Vandiver comparison; retain its hypothesis as a condition, not a theorem for all primes. (FGV line 2036, with the stated supplier contracts.)

**Checks.**

- A nonzero minus class group gives multiple primes above p but only one c-fixed prime; it must not be called a failure of Vandiver.
- For a minus torsor ℤ/3, c(x) = −x fixes exactly 0 among three primes. For a plus torsor ℤ/3, c(x) = x fixes all three. These distinguish Vandiver from a singleton prime set.
- A zero class group gives one prime, fixed by conjugation, so both uniqueness statements hold in the regular case.

*Needs:* §7.3; IntegralIwasawaTheory §§3.1, 7.4; ClassFieldTheory Layer 13.

### Examples

For p=3,k=1, the arithmetic K₂ kernel is 0 and c_H identifies KSp₂(ℤ;ℤ₃) with ℤ₃(1); the degree-three group is ℤ/3 with trivial action. A minus class torsor ℤ/3 has three primes and one c-fixed prime. At q=5, twists −1 and 3 agree modulo the character period 4, matching group degrees −2 and 6.

### Dependencies

§5.4; ArithmeticGaloisDuality R02.1 (compact coefficients and limits); ArithmeticGaloisDuality R02.2 (Hochschild–Serre and transgression); StableHomotopyKTheory §§7.1–7.17, 7.28 and ChromaticHomotopyTheory CH.2–CH.3; §6.3; StableHomotopyKTheory §§7.9–7.13; ArithmeticKTheory §§3.1–3.5; §4.4; ArithmeticKTheory §§7.1–7.5; §6.1; §5.3; ClassFieldTheory Layer 13; §3.6; §3.4; KTheoryFiniteLocalFields §§1.1–1.2; ArithmeticKTheory §§6.11, 6.15–6.16; Chebotarev Layer 10; IntegralIwasawaTheory §§3.1, 7.4. 

## Layer 8: Integral indecomposables and Hodge characteristic numbers

### 8.1 Integral homology indecomposables

For a connected H-space X of finite type, let I=H_(>0)(X;ℤ_p) be the augmentation ideal and I_r=H_(>0)(X;ℤ/p^r). Let β_r:H_j(X;ℤ/p^r)→H_(j−1)(X;ℤ_p) be the coefficient Bockstein. Put D=I²+Σ_(r≥1)β_r(I_r²), the ℤ_p-submodule of integral decomposables, and Qᶦⁿᵗ_*(X)=I/D. Products in the squares have both factors in strictly positive degree; D is not the indecomposable quotient itself. Coefficients here are ordinary singular homology with ℤ_p on an integral finite-type X. (FGV, §8.1, equation (8.3) and Example 8.3, author copy pp. 49–50; FGV line 2272.)

The interface has the following laws.

- H-maps preserve D and induce maps on Qᶦⁿᵗ.
- Qᶦⁿᵗ_0=0; positive-degree products and Bocksteins of products vanish in the quotient.
- An integral primitive cohomology class that also kills the Bockstein products pairs through Qᶦⁿᵗ.
- The ordinary Hurewicz map π_i(X)⊗ℤ_p→H_i(X;ℤ_p) composes with the quotient for i≥1.

One proof route is as follows. Import the Pontryagin product and coefficient Bockstein with their naturality. Form the positive augmentation ideal, the products in each coefficient ring, and the sum of their Bockstein images. Take a quotient of graded ℤ_p-modules. Do not apply this convention to arbitrary discrete p-complete homotopy groups without a coefficient comparison. (FGV line 2272, with the stated supplier contracts.)

**Checks.**

- For X=point the ideal and quotient are both zero, including degree zero.
- For X=S¹×S¹, the product of its two degree-one generators vanishes in Qᶦⁿᵗ_2, while the degree-one quotient is ℤ_p².
- For X=RP∞ and p=2, Qᶦⁿᵗ_i is ℤ/2 precisely in degrees 2^a−1, a≥1, and zero in other positive degrees; quotienting only by I² incorrectly leaves every odd degree.
- Retain the finite-type hypotheses used by the product and Hurewicz comparisons.

*Needs:* StableHomotopyKTheory §§7.3–7.4; AlgebraicTopology Stage 6 (cohomology products and manifold duality).

Its downstream uses are: removes the Tor generators that ordinary indecomposables retain; transfers an integral Hodge pairing from homology to homotopy.

### 8.2 Product formula for integral indecomposables

For connected H-spaces X,Y with finitely generated integral homology in every degree, inclusions and projections give Qᶦⁿᵗ_i(X×Y)≅Qᶦⁿᵗ_i(X)⊕Qᶦⁿᵗ_i(Y). Positive tensor products vanish in I². A Künneth Tor generator from p^r- and p^s-torsion factors is β_d(xy), d=min(r,s), and vanishes in the enlarged denominator. This is an integral product assertion, not a rationalization argument. (FGV, Lemma 8.5, author copy pp. 50–51; FGV line 2318.)

One proof route is as follows. Use inclusions and projections to obtain a split injection on the quotient. Apply integral Künneth and decompose finite-type ℤ_p-modules into free and cyclic torsion summands. Represent each mixed Tor class as a Bockstein of a positive product to obtain surjectivity. (FGV line 2318, with the stated supplier contracts.)

**Checks.**

- The product of two K(ℤ/p,1) factors has mixed Tor classes before quotienting; their images must vanish after taking Qᶦⁿᵗ.
- For S¹ × S¹ the degree-one quotient is ℤ_p ⊕ ℤ_p and the mixed degree-two generator is 0 in the quotient.
- For two K(ℤ/p,1) factors the mixed Tor group in degree 3 is ℤ/p. Its Bockstein representative maps to 0 in the enlarged denominator, whereas quotienting tensor products alone can retain it.

*Needs:* §8.1; AlgebraicTopology Stage 6 (cohomology products and manifold duality); StableHomotopyKTheory §§7.3–7.4.

### 8.3 Low-range integral Hurewicz theorem

Let p be odd and E an integral spectrum with π_i(E) = 0 for i ≤ 0 and finitely generated integral homotopy groups in each degree. Put X = Ω∞E. For 1 ≤ i ≤ 2p−3, prove that the Hurewicz quotient π_i(E) ⊗ ℤ_p → Qᶦⁿᵗ_i(X) is an isomorphism. Ordinary singular ℤ_p-homology is meant. A discrete Eilenberg–Mac Lane spectrum on ℤ_p does not satisfy the integral finite-generation hypothesis. The theorem stops before degree 2p−2, where the first reduced-power extension in a delooping requires a separate argument; no splitting across that extension is asserted. (FGV, Theorem 8.4 and its Postnikov proof, restricted range, author copy pp. 50; FGV line 2295.)

One proof route is as follows. Use StableHomotopyKTheory §§3.20, 3.34–3.37 and the low Postnikov contract: below 2p−2 the needed delooped truncation splits as an H-space into Eilenberg–MacLane factors. For finite-type cyclic/free integral factors, compute homology and Bocksteins in this range; the quotient is generated by the fundamental class. Apply the product formula and Postnikov homology invariance. Do not extend the H-space splitting across the possible P¹ k-invariant at the endpoint degree 2p−2. (FGV line 2295, with the stated supplier contracts.)

**Checks.**

- For E=ΣHℤ and p=3, the theorem identifies π₁⊗ℤ₃=ℤ₃ with Qᶦⁿᵗ_1(S¹), and does not claim the endpoint degree four.
- E=ΣHℤ_p with ℤ_p treated as a discrete integral group fails finite generation and is outside the hypotheses.
- For E = ΣH(ℤ/3) and p = 3, the degree-one map is ℤ/3 → ℤ/3, identity on its fundamental class; no degree-zero unit survives in the quotient.

*Needs:* §8.2; §8.1; StableHomotopyKTheory §§3.20, 3.34–3.37; GeneralizedCohomology G2.8 (Postnikov covers).

### 8.4 Integral stable symplectic comparison

For every i≥0 and g>2i+5, prove that block stabilization on H_i(Sp_(2g)(ℤ);ℤ) is an isomorphism and that the stable group is finitely generated. Apply plus-construction homology invariance and simple-space finite-type theory to obtain finite generation of the positive integral KSp homotopy groups. Let p be odd. For 1≤i≤2p−3, the stable Hurewicz quotient KSp_i(ℤ)⊗ℤ_p→Qᶦⁿᵗ_i(BSp∞(ℤ)) is an isomorphism and is Aut(ℂ)-equivariant for the arithmetic action from the ppav model. Stabilization is used in the conservative range g>2i+5. In even degree i=2m in this range, put ω=Lie(A)^∨ and define ĉh_m(ω)=(−1)^m ch_m(ω)=ch_m(Lie(A)). For m<p this primitive integral class pairs through the quotient and agrees with c_H. For odd m it evaluates to 1 on a c_H-normalized Bott lift; for even m the negative ku summand and the pairing on KSp are zero. The unnormalized ch_m(ω) evaluates as (−1)^m c_H. The primitive condition kills products; its integral lift and Bockstein compatibility kill the enlarged denominator. (FGV, §8, equation (8.2), and Theorem 8.4, restricted range, author copy pp. 49–50; FGV line 2237. Integral stability: Charney, Corollary 4.5, cited by locator; its range is also stated in FGV §1.1, p. 1, FGV line 32.)

One proof route is as follows. Prove integral symplectic homology stability and finite generation of stable arithmetic-group homology, then apply StableHomotopyKTheory §§3.34–3.37’s simple-space finite-type theorem, to show that the positive connected cover of integral KSp has finitely generated homotopy groups. Use the finite Borel–Serre model at a torsion-free congruence subgroup and the finite-index homology spectral sequence; both the finite quotient and the subgroup have finitely generated homology in each degree. The finite-generation assertion is integral. Use this symplectic stability comparison, retaining its conservative explicit rank bound, and use the plus-construction homology invariance. Apply the Hurewicz theorem of §8.3 and primitive Hodge/Bockstein compatibility; spectrum-level naturality makes the isomorphism equivariant. (FGV line 2237, with the stated supplier contracts.)

**Checks.**

- In degree zero the indecomposable quotient is zero, so no isomorphism with KSp₀⊗ℤ_p is asserted.
- At an even application degree 2m, m<p gives 2m≤2p−4, strictly within the proven range.
- For m odd, dualizing the tangent representation negates its Chern character. The normalized class ĉh_m pairs to 1 on a c_H-normalized Bott generator; ch_m(ω) pairs to −1.

*Needs:* §8.3; §3.4; §4.4; StableHomotopyKTheory §§3.34–3.37, 4.27; ArithmeticLocallySymmetricSpaces §§ALS.0.8, ALS.1.5–ALS.1.6, ALS.2.3–ALS.2.4; GeneralizedCohomology G5.4–G5.6 and TopologicalKTheory T4–T5, T7.

### 8.5 Rational stable Hodge generators

The stable rational p-adic cohomology of Sp_(2g)(ℤ) is ℚ_p[x₂,x₆,x₁₀,…], with primitive generator x_(4k−2) represented by ĉh_(2k−1)(ω)=−ch_(2k−1)(ω)=ch_(2k−1)(Lie(A)). Using the unnormalized Hodge character instead changes only the generator sign. Its arithmetic action is cyclotomic weight 2k−1 in cohomology with the convention that x_(4k−2) is fixed as a class in H⁴ᵏ⁻²(−;ℚ_p(2k−1)); the untwisted class therefore has inverse cyclotomic character. Products have the sum of the weights. The stable polynomial calculation is a symplectic target here, and its generators are identified with the ppav action by the tangent Hodge comparison. (FGV, §1.1 and the Hodge interpretation in §§1.2, 8, author copy pp. 1–4, 48–49; FGV line 40. The stable real calculation is Borel 1974, §10.6, Theorem 11.1 and §11.4, pp. 265–267; borel1974 lines 1154, 1194, 1246.)

One proof route is as follows. Prove the stable rational symplectic comparison with the compact dual and identify its polynomial primitive generators in degrees 4k−2. Identify the generators with rational Hodge Chern characters via the topological map. Their real scalar extensions generate by the compact-dual calculation; algebraic independence and spanning descend to ℚ in each finite-dimensional degree, after which extend scalars to ℚ_p. Apply algebraic Chern-class naturality in the Tate-twisted cohomology group to determine the action and its weight convention. (FGV line 40, with the stated supplier contracts.)

**Checks.**

- On the untwisted degree-two generator the action is χ⁻¹; on its square it is χ⁻². Confusing homology with cohomology reverses these weights.
- In degrees 2 and 4 the polynomial algebra has bases {x₂} and {x₂²}. At χ = 2 over ℚ₅ their eigenvalues are 1/2 and 1/4, whereas the corresponding homology weights are 2 and 4.
- The degree-zero class is 1 with weight zero; changing the sign of each odd Hodge generator leaves the polynomial algebra and its weights unchanged.

*Needs:* §4.4; §3.4; §8.4; GeneralizedCohomology G5.4–G5.6 and TopologicalKTheory T4–T5, T7.

### 8.6 Bernoulli divisibility for ppav families

Let X/ℚ be smooth projective of dimension d, and A→X a principally polarized abelian scheme with Hodge bundle ω=Lie(A/X)^∨. For a partition d=n₁+⋯+n_r into positive odd integers and an odd prime p with n_j<p for every j, suppose p divides the numerator of the arithmetic Bernoulli number B_(n_i+1) for some i. Then s=∫_(X(ℂ))∏_j ch_(n_j)(ω) belongs to pℤ_(p). The strict prime inequality makes all Chern-character factorial denominators units. The conclusion is asserted under the strict inequality; at p = max n_j a Chern-character factorial can fail to be a p-unit. (FGV, Theorem 8.1 and its proof, strict prime inequality, author copy pp. 48–49; FGV line 2217.)

One proof route is as follows. The algebraic classifying map and fundamental class give an equivariant ℤ_p(d)→H_(2d)(A_g(ℂ);ℤ_p). Cap with the integral Chern characters other than the chosen part to obtain ℤ_p(n_i)→H_(2n_i). If s were a p-adic unit this would split the Hodge pairing. Stabilize by a rational ppav and pass through integral indecomposables and the safe-range Hurewicz comparison. Multiply the chosen odd Hodge pairing by −1 to identify it with c_H on tangent K-theory. A unit splitting remains a unit splitting, so this yields a global Galois section with quotient ℤ_p(n_i). The Iwasawa/Bernoulli contract makes its arithmetic kernel nonzero, contradicting initiality. (FGV line 2217, with the stated supplier contracts.)

**Checks.**

- For the one-part partition n₁=11 and p=691, B₁₂=−691/2730 gives s∈691ℤ_(691).
- A partition containing the part p falls outside the theorem even if a different Bernoulli factor is divisible by p. No integral cap product with ch_p is inferred.
- For d = 0 the empty partition has characteristic number 1 and contains no Bernoulli factor. Its antecedent is false, so divisibility by every prime is not asserted.

*Needs:* §8.4; §7.4; IntegralIwasawaTheory §12.3 (specialization at arithmetic weights); ArithmeticKTheory §§7.1–7.5; GeneralizedCohomology G5.4–G5.6 and TopologicalKTheory T4–T5, T7; AlgebraicTopology Stage 6 (cohomology products and manifold duality); PELModuli §§M1.5, M1.12, M6.2–M6.3, M6.9.

### Examples

For S¹×S¹ the positive degree-one indecomposables are ℤ_p² and the degree-two product dies. For p=3 the Hurewicz range is 1≤i≤3; its first omitted endpoint is 4. The one-part partition 11 at p=691 uses B₁₂=−691/2730 and gives a characteristic number in 691ℤ_(691).

### Dependencies

ArithmeticLocallySymmetricSpaces §§ALS.0.8, ALS.1.5–ALS.1.6, ALS.2.3–ALS.2.4; StableHomotopyKTheory §§3.20, 3.34–3.37, 7.3–7.4; AlgebraicTopology Stage 6 (cohomology products and manifold duality); §3.4; §4.4; StableHomotopyKTheory §4.27; GeneralizedCohomology G5.4–G5.6 and TopologicalKTheory T4–T5, T7; §7.4; IntegralIwasawaTheory §12.3 (specialization at arithmetic weights); ArithmeticKTheory §§7.1–7.5; PELModuli §§M1.5, M1.12, M6.2–M6.3, M6.9. The integral finite-type and strict prime hypotheses put every even application degree at most 2p−4; the endpoint 2p−2 and the equality p=max n_j are outside these theorem statements.

## Downstream consumers

The finite and compact universal-extension theorems supply arithmetic actions and their local sections to regulators and arithmetic characteristic classes. The ppav model exports the action together with its coefficient and product naturality; it is the input for stable symplectic homology and the family divisibility theorem, rather than a new moduli theory for downstream consumers. The all-twist theorem supplies negative odd twists through Bott-inverted KSp. The degree-4k−1 theorem supplies trivial arithmetic action on the odd positive groups. Integral indecomposables are available for connected finite-type H-spaces beyond the symplectic application.

## References

- **FGV.** Tony Feng, Søren Galatius and Akshay Venkatesh, [The Galois action on symplectic K-theory](https://math.berkeley.edu/~fengt/Galois_action_on_KSp.pdf), 64-page author copy with printed pages 1–64. The theorem numbers used here agree with the named results in *Inventiones Mathematicae* 230 (2022), 225–319, [publication record](https://doi.org/10.1007/s00222-022-01127-8). Page and line locators throughout this roadmap refer to the author copy, including its §8 and Appendix A. The restricted integral Hurewicz range, strict characteristic-number prime bound, factor-two normalization and conjugation-paired lift condition are part of the statements above. External generic inputs used inside FGV proofs are consumed through the exact supplier contracts, rather than claimed to have been independently established by a citation.

- **charney1987.** Ruth Charney, *A generalization of a theorem of Vogtmann*, Journal of Pure and Applied Algebra 44 (1987), 107–125, Corollary 4.5, [publication record](https://doi.org/10.1016/0022-4049(87)90019-3). Cited by its locator; FGV §1.1 also records the conservative symplectic stability range.
- **borel1974.** Armand Borel, [Stable real cohomology of arithmetic groups](https://www.numdam.org/item/ASENS_1974_4_7_2_235_0.pdf), Annales scientifiques de l’École Normale Supérieure 7 (1974), 235–272, §10.6, Theorem 11.1 and §11.4, pp. 265–267; borel1974 lines 1154–1253. The extension from the real calculation to rational Hodge generators is specified in §8.5.
