# Roadmap: algebraic modular forms and Serre weights, Part II — Siegel forms modulo prime powers

**Summary.** This continuation develops integral genus-two Siegel forms with arbitrary module coefficients, including finite torsion and K/O, from the modular-curve theory of AlgebraicModularFormsAndSerreWeights R15.1–R15.6. It builds the primary and secondary rank geometry, all-component Fourier coordinates, integral coefficient and geometric Hecke actions, characteristic-p theta operators with low-weight injectivity, and the comparison with full-frame ordinary p-adic functions. Its end theorems retain ramified coefficient rings, boundary terms, central transports and tame-level orientation. README.md is the roadmap; Suggested.lean states the headline result expressible on the pinned native carriers.

## Scope and ownership

The base roadmap AlgebraicModularFormsAndSerreWeights R15.1–R15.6 supplies the modular-curve direction, elliptic Hasse and theta theory, Serre weights and classical residual witnesses. This Part II owns the genus-two specializations and comparisons in Layers 1–9. It does not duplicate the elliptic theory or the independent generic GL₃ weight-and-lattice direction.

Generic tensor, symmetric-power, determinant and dual bundle constructions are stated by AlgebraicVectorBundles §§L0A–L0C and AutomorphicBundles B2–B3. Canonical and subcanonical extensions and their generic vector expansion principle are stated by AutomorphicBundles §§B3.2–B3.4, B5.14–B5.15; §§1.1–1.4 below specialize them to binary Fourier indices and all geometric components. The generic componentwise coefficient-recognition proof is imported. Generic double-coset independence and index-p lattice counting are stated by ModularForms Layer 2; §5.2 owns its normalized binary-index integrality and arbitrary prime-to-p congruence-level extension. The projective-zero theorem is stated by ClassicalArithmeticCompletion §1.17; §6.2 applies it to labeled neighbor occurrences.

The primary semiabelian Hasse section and its ordinary and minimal-model comparisons are stated by HodgeTateAndCanonicalSubgroups §§0.12–0.16. General BT₁ filtration, Hasse–Witt complexes and Fargues determinant duality are stated by FiniteFlatGroupsAndIntegralPadicHodgeTheory §§R07.2.2, R07.2.21–R07.2.23. Layers 2–3 own the genus-two reducedness, secondary invariant, rank-one flags and its global extension and root. The split subgroup recipes use these imported carriers; they introduce no second BT₁ or primary-Hasse theory.

Integral parahoric compactification and universal-isogeny interfaces belong to ShimuraCompactifications §C5, with their exact extension recorded below. General coherent duality, Hartogs, ample vanishing and formal functions belong to SchemeAndStackFoundations §§0.6, 2.6, 2.7, 2.19–2.20 and 4.9. Krull intersection is already in the library as Mathlib `Ideal.iInf_pow_smul_eq_bot_of_isLocalRing`. Layer 7 owns the genus-two integral factorizations and corrected Q₂ correspondence, which differ from the generic rational Hecke action of AutomorphicBundles §§B5.10–B5.11.

The ordinary full-frame tower belongs to HodgeTateAndCanonicalSubgroups §§5.1–5.2 with the Siegel extension below. Layer 9 owns its function weight spaces, saturated expansions and coefficient comparisons. Analytic coefficient sheaves, overconvergent Hecke actions and their analytic comparisons belong to OverconvergentAutomorphicForms Layers 5–6; the integral ordinary interface here is the algebraic comparison target for those constructions.

## Conventions

Fix a prime p, neat tame level Kᵖ and a complete DVR O finite over ℤ_p, uniformizer ϖ, fraction field K and residue field k₀. Unless specified otherwise, X is a spherical genus-two smooth toroidal compactification over O with projective smooth fan, D its relative Cartier boundary, G the universal semiabelian family, E=e*Ω¹_G/X and λ=det E. All connected components are retained. At Klingen or paramodular level use the specified flat normal lci models and their own universal family. All assertions carry their displayed prime hypotheses: integral constructions treat p=2,3 whenever their formulas are defined; discriminant and theta statements state their odd-prime bounds explicitly.

For integers j≥k let d=j−k and ω(j,k)=SymᵈE⊗λᵏ=Ω(d,k). Tensor coefficients into the sheaf before taking H⁰. Negative determinant weights use dual line powers, whereas the symmetric degree is always nonnegative. A common tame cyclotomic faithfully flat extension splits the chosen cusp on each geometric component. Scalar changes of field or level retain the induced coefficient, determinant and cusp transports. The elementary acceptance signature uses a coefficient field in Type, as required by the pinned Tau Ceti symmetric-power representation API; geometric sheaves live in a fixed universe containing their bases and the countable level towers.

Write S=V(h), the closed nonordinary divisor, Z_red for the reduced rank-zero curve, and SS for the finite superspecial set in the interior. The rank-one open is S minus Z_red. The secondary zero scheme is V_S(h′), with h′ of weight p²−1. It has the same support as Z_red but generically twice its multiplicity at odd p. Denote its spherical root by b₀; the sign and descent datum are retained. The coefficient operator Z₂ is unrelated to this zero-scheme notation.

At a marked split cusp, Q=(m,r,n) denotes mx²+rxy+ny² and, when 2 is invertible, the symmetric matrix [[m,r/2],[r/2,n]]. Set Δ=r²−4mn=−4det Q. The normalized action is M·Q=(det M)⁻¹MQMᵗ. Its discriminant identity uses every invertible matrix, whereas semidefinite support is preserved only when det M>0. Indices have a fixed tame denominator bound prime to p, and coefficient functions are extended by zero at inadmissible indices. At p=2 use the binary polynomial without r/2; do not silently interpret division by zero.

The rational Hecke normalization is the similitude character to power −3. Write T for β₁=diag(1,1,p,p), T₂ for β₂=diag(1,p,p,p²), and S_c for the central pI₄ operator when confusion with the divisor S is possible. These are Pilloni’s T_(p,2), T_(p,1), T_(p,0), respectively. C_r denotes Pilloni’s composite T of §7. A displayed central scalar assumes the trivial central/diamond sector with specified component identifications; otherwise retain the actual central map. No negative power of p acts on torsion coefficients. The finite sum Z₂=UZ is distinct from the diagonal U₂=−1+pX₂.

For the ordinary tower, the right frame change ψ↦ψg induces the left action (g·f)(ψ)=f(ψg), and the differential frame changes by g⁻ᵗ. Use the upper unipotent U⁺ and the diagonal character χ(diag(t₁,t₂))=κ(t₁)(t₁t₂)ʳ for κ:ℤ_pˣ→Oˣ. For κ(t)=tᵈ the weight is (d+r,r). Coefficients of a U⁺-invariant function are functions on the right quotient GL₂(ℤ_p)/U⁺. The limit order is lim_m colim_n, with m the coefficient depth and n the Igusa level.

## Exact supplier contracts

### From Mathlib

Use `Matrix.det` and `Matrix.det_mul` in Mathlib/LinearAlgebra/Matrix/Determinant/Basic.lean, lines 63 and 141, over commutative rings and finite square matrices; the half-integral binary matrix interpretation additionally requires 2 invertible. Use `legendreSym` in Mathlib/NumberTheory/LegendreSymbol/Basic.lean, line 109, with its prime parameter, integer argument and values 0,±1. For p-integral rational discriminants use their residue, independent of a prime-to-p denominator presentation.

Use `Matrix.SpecialLinearGroup.map` and `Matrix.SpecialLinearGroup.toLin'` in Mathlib/LinearAlgebra/Matrix/SpecialLinearGroup.lean, lines 225 and 192; `LinearEquiv.automorphismGroup.toLinearMapMonoidHom` in Mathlib/Algebra/Module/Equiv/Basic.lean, line 111; and `Representation.IsIrreducible` in Mathlib/RepresentationTheory/Irreducible.lean, line 29. The latter means a nontrivial representation with no proper nonzero invariant subspace. Use `ZMod.castHom` in Mathlib/Data/ZMod/Basic.lean, line 331, with its divisibility and characteristic hypotheses.

For a finite module over a Noetherian local ring and a proper ideal, use `Ideal.iInf_pow_smul_eq_bot_of_isLocalRing` in Mathlib/RingTheory/Filtration.lean, line 425. This imports the intersection of all ideal powers applied to the module as zero; the unit ideal is excluded.

### From Tau Ceti

Use `Representation.symmetricPower` in TauCeti/RepresentationTheory/SymmetricPower.lean, line 47, for the diagonal induced action on the native symmetric tensor power over a commutative semiring and a monoid. Use `Module.Basis.symmetricPower` in TauCeti/LinearAlgebra/SymmetricPower/Basis.lean, line 167, for the rank-two monomial description indexed by multisets. The native symmetric power is a quotient of the tensor power, not an unverified polynomial lattice; polynomial notation below is its basis description. The only Tau Ceti module imported by Suggested.lean is TauCeti.RepresentationTheory.SymmetricPower.

### From TauCetiRoadmap.AlgebraicModularFormsAndSerreWeights

R15.1–R15.3 fix the sheaf-first integral form and Hasse/theta conventions in genus one; R15.4–R15.6 retain local Serre weights and residual modularity. Their genus-one constructions specify the parent boundary; no genus-two carrier is inferred from them.

### From TauCetiRoadmap.AlgebraicVectorBundles

§§L0A–L0C supply finite locally free sheaf tensor, dual, symmetric and determinant constructions and their scalar and pullback functoriality. Use the induced operations on E and λ through the automorphic-bundle interfaces.

### From TauCetiRoadmap.AutomorphicBundles

B2.1 supplies the automorphic vector bundle; B3.2–B3.4 its canonical and subcanonical extensions; B3.10 the integral Levi coefficient; B4.19–B4.20 sheaf-first module coefficients and qcqs section colimits. B5.14–B5.15 supply vector Fourier–Jacobi expansion, joint injectivity and coefficient-submodule recognition under fibrewise component detection at every prime, flat charts and the actual relative boundary tensor sequence. B5.10–B5.11 and B5.19 supply rational pullback–trace Hecke actions and Fourier–Jacobi compatibility for the actual coefficient realization and multiplicative unit-valued normalization after p is inverted. Layer 5 computes the GSp₄ specializations with similitude power −3.

### From TauCetiRoadmap.ModularForms

Layer 2 supplies double-coset representative independence and the correspondence between index-p lattices and ℙ¹(𝔽_p), including the full-group p+1 count. §5.2 identifies the binary integrality condition and proves any additional prime-to-p congruence-level specialization.

### From TauCetiRoadmap.ClassicalArithmeticCompletion

§1.17 supplies the projective-zero count for a nonzero binary quadratic form over 𝔽_p, p odd, with discriminant r²−4mn, and the separate p+1 count for the zero form. §6.2 transports this theorem through its labeled-coset bijection.

### From TauCetiRoadmap.FiniteFlatGroupsAndIntegralPadicHodgeTheory

§R07.2.2 supplies the multiplicative–connected–étale filtration, compatible with its stated base changes and splitting over perfect fields. §R07.2.21 supplies the BT₁ Hasse determinant and Fargues map LF on determinant powers. §§R07.2.22–R07.2.23 supply the exact crystalline Hasse–Witt complexes, equal coranks for dual groups, and odd-prime quasi-polarization compatibility. In height four and dimension two the equal dimensions give equal ranks; height three at the boundary is treated only by the connected recipe.

### From TauCetiRoadmap.ShimuraCompactifications

§§C3.8–C3.9 supply boundary-ideal pushforward and coherent-cohomology comparison under refinements. §§C5.3–C5.4, C5.10 and C5.12 supply spherical integral toroidal models, formal cusp charts, fibrewise component detection and logarithmic Kodaira–Spencer. §§C5.16–C5.20 supply minimal models and normalization interfaces; C5.17 supplies ample Hodge powers on the minimal model; C5.23 supplies Siegel Koecher with arbitrary coefficients. The Hodge line is not assumed ample on the toroidal model.

What ShimuraCompactifications must provide (gap:siegel-parahoric-models): Provide the spherical, Klingen and paramodular genus-two toroidal and minimal models of Pilloni Theorem 6.1.5.1, their flat normal local-complete-intersection properties, the universal semiabelian isogeny chains, the compactified minuscule correspondence, and coefficient-sensitive refinement and boundary comparisons for these parahoric models.

The parahoric model extension uses P20 Theorem 6.1.5.1, pp. 29–30 (P20 line 1272), and the compactified minuscule correspondence of §14.9.2, p. 104 (P20 line 4738).

### From TauCetiRoadmap.AbelianSchemesAndArithmeticModuli

§A4.3 supplies the abelian de Rham Hodge filtration, connection and polarized pairing on its specified domain. §§A4.7 and A4.9 supply polarized Grothendieck–Messing and Serre–Tate deformation equivalences with their PD and nilpotence hypotheses. §§A4.10–A4.11 supply ordinary bilinear Serre–Tate coordinates, the integral weighted polarization equations and canonical Frobenius action. The rank-one chart and trace ideals below are additional specified interfaces.

What AbelianSchemesAndArithmeticModuli must provide (gap:siegel-rank-one-deformations): Provide the polarized genus-two rank-one deformation chart with Frobenius basis and tangent constraints X=Z at principal level and Z=0 or X=0 at paramodular level, compatible with the chosen moduli-to-crystal comparison.

What AbelianSchemesAndArithmeticModuli must provide (gap:siegel-isogeny-trace-ideals): Provide the integral trace ideals for the ordinary genus-two Lagrangian and degree-p³/degree-p isogeny charts, including the trace divisibilities 1,p,p³ and p²,p with their semiabelian boundary compatibility.

What AbelianSchemesAndArithmeticModuli must provide (gap:siegel-logarithmic-de-rham): Provide the genus-two semiabelian logarithmic de Rham connection and polarized pairing, ordinary unit-root splitting and first-order superspecial Hasse–Witt matrix, compatible with the logarithmic Kodaira–Spencer isomorphism of ShimuraCompactifications C5.12.

### From TauCetiRoadmap.HodgeTateAndCanonicalSubgroups

§0.12 supplies normalized multiplicative determinant pullback on the character ℤ_p-lattice before tensoring. §§0.14–0.16 supply the semiabelian primary Hasse section, ordinary-locus criterion, and toroidal/minimal descent. §§5.1–5.2 supply the ordinary Igusa framework; the full genus-two finite-frame and component-detection extension is specified below.

What HodgeTateAndCanonicalSubgroups must provide (gap:siegel-igusa-full-frames): Provide the finite étale full ordinary genus-two Igusa GL₂(ℤ/pⁿ)-torsors over all coefficient thickenings and toroidal boundary charts, with transitions, frame actions and the component-detection or monodromy theorem required for saturated all-frame expansions.

### From TauCetiRoadmap.HilbertModularVarietiesAndShimuraCurves

Use the integral Hilbert total-Hasse ideal (p,det V*) of §H2.7, with its polarization, ramification and local-trivialization hypotheses; only this determinant ideal enters the comparison in §2.4. No equality with an individual partial Hasse invariant is assumed.

### From TauCetiRoadmap.SchemeAndStackFoundations

§0.6 supplies coherent Hartogs for depth at least two along the omitted locus. §2.6 supplies ample Serre vanishing on proper Noetherian models. §2.7 supplies local-cohomology vanishing below depth. §§2.19–2.20 supply proper coherent duality, relative dualizing complexes and the Cohen–Macaulay dualizing module and Gorenstein invertibility criterion, with the stated Noetherian and boundedness conditions. §2.5 supplies qcqs filtered-colimit cohomology with its finite-cover and Čech-product hypotheses; apply it to quasi-compact opens of the Noetherian models here. §4.9 supplies proper coherent formal functions. The open Milnor and lci boundary interfaces below are separate requirements.

What SchemeAndStackFoundations must provide (gap:open-formal-milnor): Provide the functorial Milnor short exact sequence for coherent cohomology on qcqs open formal schemes and the comparison with derived inverse limits of their nilpotent thickenings needed for H⁰ isomorphisms and H¹ injections.

What SchemeAndStackFoundations must provide (gap:lci-fundamental-class): Provide the determinant-of-cotangent-complex identification and fundamental class for projectively embeddable proper maps between flat lci schemes of equal relative dimension, with perfect-coefficient projection formula, finite-flat trace comparison, logarithmic boundary ideal compatibility and integral derived reduction even for nonflat correspondence maps.

What SchemeAndStackFoundations must provide (gap:reduced-section-propagation): Provide injectivity of restriction of a locally free sheaf on a reduced scheme to an open dense in every irreducible component, with componentwise propagation from neighborhoods meeting those components.

## How to read the build

Layers 1–2 construct the binary expansion interface and its rank geometry. Layer 3 constructs the secondary determinant section, its extension and the spherical root with its descent data. Layer 4 gives integral lifts and torsion shifts. Layers 5–6 build coefficient actions and oriented neighbor relations; the residual finite-coset expression is part of the integral theorem. Layer 7 constructs geometric normalized correspondences before reducing coefficients and uses finite and formal Hartogs. Layer 8 gives the contraction, characteristic-p theta maps, local nonvanishing and global injectivity. Layer 9 completes the ordinary full-frame comparison. Each Needs sentence distinguishes statement inputs and proof inputs; an alternative proof uses the same statement hypotheses without acquiring unrelated geometric dependencies.

## Layer 1: Integral forms and Fourier expansions

### 1.1 Integral Siegel forms and cusp forms

Fix neat tame level K^p and hyperspecial level at p. On the imported smooth toroidal Siegel threefold X over O, let E=e*Ω¹_G/X and λ=det E. For integers j≥k put ω(j,k)=Sym^(j−k)E⊗λ^k and ω(j,k)^sub=ω(j,k)⊗I_D, using the imported bundles. For every O-module M define M_(j,k)(M)=H⁰(X,ω(j,k)⊗_O M) and S_(j,k)(M)=H⁰(X,ω(j,k)^sub⊗_O M). All components are retained. Ω(d,r)=ω(d+r,r). The notation H⁰ with M=K/O means the sheaf tensor product, not a tensor of H⁰ with K/O. (CG20, §5.2, internal pp. 21–22 (journal 821–822); §8.2, pp. 56–57 (856–857); CG20 line 877; P20, §6.2.1, p. 30; P20 line 1307).

O is a complete DVR finite over Z_p, uniformizer ϖ, fraction field K and residue field k₀. A good projective smooth cone decomposition is chosen; tame auxiliary covers are finite étale.

A proof route is as follows. Specialize the imported genus-two sheaf interface, without defining a second symmetric-power or vector-bundle theory. Apply the imported refinement and arbitrary-coefficient Koecher theorems to obtain canonical identifications independent of the fan.

The API records the following facts.

- The form module is the indicated global-section module, with its O-linear structure.
- For every O-module M the inclusion ω(j,k)^sub⊗M→ω(j,k)⊗M induces an injective cusp-to-form map. The boundary D is relative Cartier, so its quotient O_D and the locally free bundle restricted to D are O-flat; tensoring preserves this inclusion.
- An O-linear M→N induces a form map, preserving identities and composition.
- Refinement induces canonical isomorphisms for forms and cusp forms with arbitrary O-module coefficients.
- Tensoring by λ^t changes (j,k) to (j+t,k+t), leaving symmetric degree j−k fixed.

**Checks.**

- ω(0,0)=O_X and its constant section 1 has constant coefficient 1.
- ω(k,k)=λ^k has rank one; ω(k+1,k) has rank two.
- For m≥1 and E₀=ω(j,k) or ω(j,k)^sub, the sequence 0→H⁰(X,E₀)/ϖ^m→H⁰(X,E₀/ϖ^m)→H¹(X,E₀)[ϖ^m]→0 is exact. Thus a nonzero last term detects failure of the premature tensor definition.
- For a zero coefficient module every section is 0. In a local Cartier chart t=0 over O, O[t]/(t)≅O is O-flat and t·(O/ϖ²)[t] injects into (O/ϖ²)[t].

No flatness hypothesis on M is inserted into the definition. Cusp sections use I_D, including after a refinement where the pullback of the boundary ideal need not be an equality.

*Needs:* AutomorphicBundles §§B2.1, B3.2–B3.4, B3.10; ShimuraCompactifications §C5 (gap:siegel-parahoric-models); ShimuraCompactifications §C5 (gap:siegel-parahoric-models); ShimuraCompactifications §C5.23; ShimuraCompactifications §§C3.8–C3.9; Tau Ceti `Representation.symmetricPower`; Tau Ceti `Module.Basis.symmetricPower`; AutomorphicBundles §§B3.2–B3.4, B5.14–B5.15.

### 1.2 Fourier indices and change of variables

At a marked split zero-dimensional cusp with tame denominator bound L^e, use Q=(m,r,n), representing mx²+rxy+ny² and the half-integral matrix [[m,r/2],[r/2,n]]. Here m,r,n∈L^(−e)Z, m,n≥0 and Δ(Q)=r²−4mn≤0. The denominators are prime to p. For M∈GL₂(Q) set M·Q=(det M)^(−1)MQMᵗ; in particular Δ(M·Q)=Δ(Q). Coefficients outside the allowed semidefinite, tame-denominator index lattice are zero. A form is p-primitive precisely when its three p-integral coefficients are not all divisible by p. (CG20, §8.2, internal pp. 56–57 (856–857); Definition 8.7, p. 59 (859); CG20 line 2188).

L is prime to p; formulas involving the matrix entries r/2 are used at odd p. The transformation preserves the relevant cone only for positive determinant; arbitrary GL₂ is used for the algebraic discriminant identity.

A proof route is as follows. Use binary quadratic forms for integral data and matrix notation after inverting 2. Apply determinant multiplicativity to the normalized matrix action; p-primitivity is checked coefficientwise.

The API records the following facts.

- Δ(m,r,n)=r²−4mn=−4det Q.
- M·(N·Q)=(MN)·Q and 1·Q=Q wherever defined.
- Δ(M·Q)=Δ(Q).
- Q is p-primitive iff its reduction is a nonzero binary quadratic form.
- An inadmissible index has coefficient zero, including a transformed index with a p denominator.

**Checks.**

- Q=x² is admissible, primitive at every p, and has Δ=0.
- Q=x² has Δ divisible by p but Q is p-primitive.
- For Q=x²+y², Δ=−4 and det Q=1; at p=3 the two Legendre symbols differ.
- The normalized action of M=diag(2,1) sends x²+y² to 2x²+(1/2)y² and leaves Δ=−4; det M<0 reverses the semidefinite cone and is excluded from admissibility preservation.

No positive-definite-only convention excludes constant or boundary terms. The primitive condition concerns coefficients, not the discriminant alone.

*Needs:* Mathlib `Matrix.det`; Mathlib `Matrix.det_mul`; §1.1; AutomorphicBundles §§B3.2–B3.4, B5.14–B5.15.

### 1.3 Fourier expansions on every component

For a tame cyclotomic faithfully flat extension O′/O, choose a split cusp on every geometric connected component and a Mumford torus frame. Restriction defines coefficients a_c(F,Q)∈Sym^(j−k)(O′²)⊗M, with the determinant factor trivialized by that frame. Their support lies in the preceding index set with one fixed tame denominator bound. For L=1 the ambient series module embeds in (O′⊗M)[ζ,ζ⁻¹][[q,q′]] with finite Laurent support in ζ for each (q,q′) slice. Use the completed cone-monoid modules on charts, glued over faces; do not use a Laurent localization of a three-variable power-series ring. At a cusp stabilizer Γ̄⊂SL₂(Z) of level prime to p, a_c(F,M·Q)=Sym^(j−k)(M)a_c(F,Q). On another marked frame or component, include the induced coefficient transport. (T06, §3.1, pp. 806–808, construction before Proposition 3.2; T06 line 1123; CG20, §8.1–8.2, internal pp. 56–57 (856–857); CG20 line 2188).

The level and cusp charts are those of Layer 1; the coefficient expression for a general module is a module of series. Γ̄ is the actual cusp stabilizer; no global Γ̄-action on the form space is assumed.

A proof route is as follows. Trivialize the imported Hodge bundle on Mumford charts and restrict a section. Glue cone expansions and check the stabilizer covariance using the frame torsor. Use a common refinement for different fan choices and finite étale descent for tame auxiliary levels.

The API records the following facts.

- Each a_c(−,Q) is an O-linear map.
- Equality of every component expansion determines equality of forms, by the expansion principle in §1.4.
- Changing a frame applies the corresponding symmetric-power representation and transports Q.
- Expansion commutes with coefficient maps, tame finite étale pullback and faithfully flat scalar extension.
- A cusp form has zero coefficients at all non-positive-definite indices at every cusp; conversely these vanishings characterize cusp forms using all rational boundary components.

**Checks.**

- The admissible form x²−xy+y² contributes qζ⁻¹q′; arbitrarily negative r occur as m,n grow.
- The constant form 1 has coefficient 1 at Q=0 and zero elsewhere.
- On X=X₁⊔X₂, a section supported on X₂ has zero expansion at every cusp chosen only on X₁.
- At fixed m=n=1, the admissible middle exponents are r=−2,−1,0,1,2; at m=n=N the lower exponent is −2N, so a global Laurent lower bound fails.

The target is O-linear for M=K/O; it is not asserted to be a coefficient ring. Disconnected levels have a family of expansions.

*Needs:* §1.1; §1.2; Tau Ceti `Representation.symmetricPower`; ShimuraCompactifications §§C3.8–C3.9; AutomorphicBundles §§B3.2–B3.4, B5.14–B5.15.

### 1.4 Integral q-expansion principle

The family of expansion maps on one cusp of each geometric connected component is injective for every O-module M. For M=O, a rational section of ω(j,k) or its subcanonical extension whose coefficients at all these cusps are integral belongs to the integral global-section lattice. More generally, divisibility of an integral section by ϖ^m is equivalent to divisibility of all its coefficients. This is a statement about sections and their saturated lattice, not a surjectivity assertion for arbitrary formal series. (T06, Proposition 3.2, p. 808; T06 line 1212; CG20, Theorem 8.1, internal p. 56 (856); Lemma 8.8, p. 60 (860); CG20 line 2188).

The models and coefficient transports are those of Layer 1. Use all relevant components after the tame cyclotomic extension.

A proof route is as follows. Specialize AutomorphicBundles §§B5.14–B5.15 to the genus-two Mumford charts and verify the fibrewise component-detection hypotheses at every prime of O; after the tame faithfully flat cyclotomic extension, one split cusp on each geometric component suffices. For O/ϖ^m use the same chart argument with arbitrary coefficients, then use injectivity of reduction to test divisibility. Clear denominators of a rational section, lower their exponent using mod-ϖ injectivity, and repeat.

**Checks.**

- On X₁⊔X₂, the section (0,1) has expansions (0,1); a single first-component expansion would report 0.
- The constant section ϖ has all coefficients divisible by ϖ and lies in ϖH⁰; the rational constant 1/ϖ has coefficient 1/ϖ and is excluded from the integral lattice.
- For M=0 all coefficients and sections are 0; no nonemptiness condition on M is introduced.

One-cusp injectivity is asserted only after selecting one cusp on every component. At each finite coefficient level, a zero expansion forces a zero section.

*Needs:* §1.3; ShimuraCompactifications §C5.23; AutomorphicBundles §§B5.10–B5.11, B5.19; AutomorphicBundles §§B3.2–B3.4, B5.14–B5.15.

### Examples

At weight (k,k), d=0 and the coefficient is scalar; at (k+1,k), d=1 and it has rank 2. At the split cusp x²−xy+y² gives qζ⁻¹q′ with Δ=−3, whereas Q=0 gives the constant coefficient. These belong to the completed cone module with the support convention of §1.2 (CG20 §8.2, p. 56; CG20 line 2190).

### Dependencies

AutomorphicBundles §§B2.1, B3.2–B3.4, B3.10; ShimuraCompactifications §C5 (gap:siegel-parahoric-models); ShimuraCompactifications §C5 (gap:siegel-parahoric-models); ShimuraCompactifications §C5.23; ShimuraCompactifications §§C3.8–C3.9; Tau Ceti `Representation.symmetricPower`; Tau Ceti `Module.Basis.symmetricPower`; Mathlib `Matrix.det`; Mathlib `Matrix.det_mul`; AutomorphicBundles §§B5.10–B5.11, B5.19.

## Layer 2: Rank strata and the primary Hasse invariant

### 2.1 Rank strata and scheme structures

For X₁=X⊗k₀ and X_par,1 define the rank-r stratum by multiplicative rank r∈{0,1,2} of the semiabelian fiber; rank at most r and rank at least r have their inclusive meanings. On abelian fibers this equals the p-rank. Write S=V(h) for the scheme cut out by the imported primary Hasse section h∈H⁰(X₁,λ^(p−1)); later define Z₂=V_S(h′). Write Z_red for the reduced rank-zero locus and SS for the finite superspecial subset of the abelian interior. The same conventions with subscript par apply to X_par,1. For X_n use the rank loci in its underlying special-fiber space; S itself is a characteristic-p closed subscheme. (P20, §6.4, pp. 34–37; P20 line 1479; CG20, §7.1, internal p. 49 (849); proofs of Theorems 8.10–8.11, pp. 62–63 (862–863); CG20 line 1906).

The semiabelian extensions and primary Hasse invariant are imported. At rank zero the whole fiber is abelian, so the supersingular and superspecial terminology has its usual genus-two meaning.

A proof route is as follows. Define open rank loci by the connected/multiplicative filtration and semicontinuity. Take V(h) as a Cartier zero scheme; keep its reducedness as a theorem, rather than part of the definition.

The API records the following facts.

- X₁^(=2)=D(h).
- S=V(h) with ideal generated by h in local Hodge trivializations.
- Geometric rank strata commute with field extension and tame étale pullback.
- The open X_n^(≥1) has the same topological support as X₁^(≥1) and its inherited O/ϖ^n structure.
- The supports of Z₂ and Z_red agree, but the scheme structures differ for odd p.

**Checks.**

- The rank-two locus is open of dimension three in the special fiber.
- A rank-one point belongs to both ≤1 and ≥1.
- A torus-rank-one degeneration with supersingular elliptic abelian part lies in S and outside Z_red.
- For μ_p²⊕(ℤ/p)² the multiplicative rank is 2; for I_(1,1)² it is 0. The rank-one boundary example has rank 1, not 0.

S is not called the rank-one open stratum. Z₂ and Z_red are separate names.

*Needs:* §1.1; HodgeTateAndCanonicalSubgroups §0.14; HodgeTateAndCanonicalSubgroups §0.15; ShimuraCompactifications §C5 (gap:siegel-parahoric-models); FiniteFlatGroupsAndIntegralPadicHodgeTheory §R07.2.2.

### 2.2 Dimensions and supersingular geometry

At both spherical and paramodular level, the rank-r stratum is dense in its rank-at-most-r closure and has pure dimension r+1. At spherical level X₁ is smooth, S is a pure surface and Z_red is a curve disjoint from the toroidal boundary. SS is finite; V* has rank one on S minus SS. Over an algebraic closure, every irreducible component C of Z_red is P¹, contains p²+1 distinct superspecial points, and has E|_C≅O(−1)⊕O(p), hence λ|_C≅O(p−1). The assertions about this splitting and component counts are for spherical good level; no analogous paramodular splitting is asserted. (P20, §6.4, p. 35 and proof of Lemma 6.4.2, p. 36; P20 line 1530; CG20, Proofs of Theorems 8.10–8.11, internal pp. 62–63 (862–863); CG20 line 2433).

Geometric component statements are over an algebraic closure with neat prime-to-p level. At tame nonprincipal polarization, use a prime-to-p isogeny to the principally polarized model and finite étale descent.

A proof route is as follows. Use polarized genus-two deformation/Dieudonné charts to compute rank strata and identify the rank-zero Newton stratum. A boundary torus contributes multiplicative rank, excluding rank zero from D. For the P¹ components use the supersingular isogeny family and its Hodge filtration, as invoked explicitly in CG20 Theorems 8.10–8.11; count its F_(p²)-points. Identify the polarized Dieudonné charts with these moduli models, including the degeneration charts at the boundary; this genus-two comparison is part of this theorem.

**Checks.**

- For p=3 the three stratum dimensions are 1, 2, 3; dimension r would make the ordinary locus dimension 2.
- At p=3 each spherical supersingular component has 10 superspecial points and Hodge degrees −1,3, so λ has degree 2.
- A torus-rank-one fiber with supersingular elliptic quotient has multiplicative rank 1, whereas a rank-zero fiber has torus rank 0.

Codimension of rank zero in every X_n is two. The largest degree in ω(a,b)|_C is pa−b when a≥b.

*Needs:* §2.1; ShimuraCompactifications §C5 (gap:siegel-parahoric-models); FiniteFlatGroupsAndIntegralPadicHodgeTheory §R07.2.2; AbelianSchemesAndArithmeticModuli §§A4.3, A4.7, A4.9–A4.11 (gaps:siegel-rank-one-deformations,siegel-isogeny-trace-ideals,siegel-logarithmic-de-rham).

### 2.3 Simple Hasse zeros at rank one

The nonordinary zero schemes S and S_par are reduced effective Cartier divisors. In the rank-one crystalline basis e₁,e₂,e₃,e₄ with F e₁=p e₁, F e₂=−p e₃, F e₃=e₂ and F e₄=e₄, choose the alternating pairing with ⟨e₁,e₄⟩=⟨e₂,e₃⟩=1. A first-order Hodge lift generated by columns (1,0,X,W) and (0,1,Y,Z) has Hasse linear term −Y. The principal tangent equation X=Z, and the two paramodular equations Z=0 and X=0, leave Y free. Thus h vanishes simply at every generic point of the nonordinary divisor. Normality of the ambient special fiber and Cohen–Macaulayness give reducedness globally. (P20, Lemma 6.4.1 and proof, pp. 35–36; P20 line 1530).

Use the polarized deformation input AbelianSchemesAndArithmeticModuli Layer A4. The paramodular model is the imported flat local complete intersection, smooth off its finite singular set.

A proof route is as follows. Check ⟨Fe₂,Fe₃⟩=pσ⟨e₂,e₃⟩; this fixes the sign in the source matrix. Compute the quotient Frobenius matrix [[−Y,0],[−Z,1]]. Use the tangent constraints to establish multiplicity one, then the normal/CM criterion to exclude nilpotents and embedded components.

**Checks.**

- The alternating pairing gives ⟨−p e₃,e₂⟩=p; choosing +p e₃ would give −p at odd p.
- In the first-order ring, the quotient determinant is −Y. The point Y=ε, X=Z=W=0 gives −ε≠0; Y=0 gives 0.
- Each of X=Z, Z=0 and X=0 leaves the tangent vector Y=ε; a spurious constraint Y=0 would erase the simple-zero witness.

At odd p, the unsigned source basis would give ⟨Fe₂,Fe₃⟩=−p and fails the pairing identity. The Hasse tangent term is a nonzero linear form at every rank-one point.

*Needs:* §2.2; AbelianSchemesAndArithmeticModuli §§A4.3, A4.7, A4.9–A4.11 (gaps:siegel-rank-one-deformations,siegel-isogeny-trace-ideals,siegel-logarithmic-de-rham); ShimuraCompactifications §C5 (gap:siegel-parahoric-models); HodgeTateAndCanonicalSubgroups §0.14; AbelianSchemesAndArithmeticModuli §A4.7; AbelianSchemesAndArithmeticModuli §A4.9.

### 2.4 Hasse expansion and multiplication

At every split cusp the imported primary Hasse section has Fourier expansion 1. It is a nonzerodivisor on X₁ because the ordinary locus is dense on every component. Multiplication by h therefore injects M_(j,k)(k₀) and S_(j,k)(k₀) into weight (j+p−1,k+p−1), for any j≥k. It commutes with prime-to-p Hecke correspondences under the natural coefficient maps and with tame deck transformations. The determinant Hasse ideal used on an integral Hilbert modular chart is locally (p,h) after specializing the same semiabelian determinant, with its chosen Hodge trivialization; it is not a different invariant. (Y16, Proposition 3.11(2), p. 22; Y16 line 1190; CG20, Lemma 6.2(1), internal p. 36 (836); proof of Lemma 7.4, pp. 48–49 (848–849); CG20 line 1438).

For the Hilbert comparison use the same determinant Hasse ideal, rather than an unproved equality with an individual partial Hasse invariant.

A proof route is as follows. Verschiebung on the split Mumford torus acts as the identity on invariant logarithmic differentials. Density on every smooth component makes h regular; tensoring a vector bundle preserves injectivity. Functoriality of the imported invariant under prime-to-p isogenies and pullback proves Hecke and deck equivariance.

**Checks.**

- On a split two-dimensional torus the Hasse matrix is the 2×2 identity, so its determinant and its Fourier expansion are 1.
- At μ_p⊕I_(1,1)⊕ℤ/p the Hasse matrix has rank 1 and determinant 0; multiplication injectivity concerns sections on the full model, not every fiber.
- At p=5 the nonzero Hasse form has weight 4 and Θh=0; multiplication and theta injectivity are different assertions.

A disconnected smooth model still requires density on each component. For the scalar operator in Layer 8, Θh=0 supplies a counterexample to unrestricted injectivity.

*Needs:* §2.3; §1.3; HodgeTateAndCanonicalSubgroups §0.14; HodgeTateAndCanonicalSubgroups §0.15; HilbertModularVarietiesAndShimuraCurves §H2.7.

### Examples

For p=3, the ordinary, rank-one and rank-zero dimensions are 3,2,1. A supersingular P¹ has 10 superspecial points and λ degree 2. In the first-order principal chart Y=ε,X=Z=0, det F=−ε, fixing the Hasse sign (P20 Lemma 6.4.1, pp. 35–36; P20 line 1550).

### Dependencies

Layers 1 ; HodgeTateAndCanonicalSubgroups §0.14; HodgeTateAndCanonicalSubgroups §0.15; ShimuraCompactifications §C5 (gap:siegel-parahoric-models); FiniteFlatGroupsAndIntegralPadicHodgeTheory §R07.2.2; AbelianSchemesAndArithmeticModuli §§A4.3, A4.7, A4.9–A4.11 (gaps:siegel-rank-one-deformations,siegel-isogeny-trace-ideals,siegel-logarithmic-de-rham); AbelianSchemesAndArithmeticModuli §A4.7; AbelianSchemesAndArithmeticModuli §A4.9; HilbertModularVarietiesAndShimuraCurves §H2.7.

## Layer 3: The secondary Hasse invariant

### 3.1 Secondary Hasse invariant on rank one

Over a reduced F_p-scheme B let G be a height-four, dimension-two BT₁ with constant multiplicative and étale ranks both one. Import G^m⊂G^o⊂G and put G^oo=G^o/G^m. The imported crystal of G^oo gives an isomorphism v:(ω_((G^oo)^D))^∨→(ω_(G^oo))^p induced by V*. Taking v^(p−1) and the Fargues determinant identification LF defines h′(G^oo) in ω_G^oo^(p²−1). Define h′(G)=Ha(G^m)^(p+1)⊗h′(G^oo) in (det ω_G)^(p²−1). It is a unit on B. The same recipe applies to the connected height-three, dimension-two BT₁ with multiplicative rank one and biconnected quotient of height two, to handle the boundary; its duality claim is only made in the height-four case. (P20, §6.3.2, pp. 30–31; §6.4, p. 36; P20 line 1307).

B is reduced, so the pointwise zero restrictions of V* on the two Hodge graded pieces are zero as maps. All occurrences of powers of ω_G in the output mean powers of its determinant.

A proof route is as follows. Use the imported multiplicative-connected filtration and crystal; the induced V* between the quotient and the Hodge line is an isomorphism. Take the indicated tensor powers and use LF to put the result in a single determinant line. Removing the étale quotient changes no invariant differentials, giving the connected-boundary recipe.

The API records the following facts.

- h′(G) is a section of (det ω_G)^(p²−1).
- On the constant rank-one base the section is nowhere zero.
- The section commutes with morphisms of reduced bases preserving the indicated filtration.
- Passing to G^o and using det ω_G≅det ω_G^o leaves the section unchanged.
- In height four LF^(p+1)(h′(G))=h′(G^D), as proved in the duality node.

**Checks.**

- The factor Ha(G^m)^(p+1) has weight (p−1)(p+1)=p²−1 in det ω_G^m.
- For μ_p⊕I_(1,1)⊕Z/p over an algebraically closed field, h=0 and h′ is a unit.
- Deleting the étale Z/p factor yields height three with the same determinant section; demanding height four at the boundary would lose it.
- At p=3 the determinant weight is (3−1)(3+1)=8; deleting the étale rank-one summand changes the height from 4 to 3 and leaves the Hodge rank 2.

An arbitrary height-four BT₁ of rank zero is not an input to this initial definition.

*Needs:* FiniteFlatGroupsAndIntegralPadicHodgeTheory §R07.2.2; FiniteFlatGroupsAndIntegralPadicHodgeTheory §§R07.2.22–R07.2.23; FiniteFlatGroupsAndIntegralPadicHodgeTheory §R07.2.21.

### 3.2 Secondary Hasse duality

For the height-four input above, LF^(p+1):(det ω_G)^(p²−1)≅(det ω_G^D)^(p²−1) sends h′(G) to h′(G^D). An étale isogeny of Barsotti–Tate groups identifies both primary and secondary sections wherever the latter is defined. These equalities survive their unique extensions to reduced normal bases. (P20, Lemma 6.3.2.1, p. 31; §6.3.4, p. 34; P20 line 1352).

The determinant LF map and its quasi-polarization compatibility are imported from FiniteFlatGroupsAndIntegralPadicHodgeTheory §R07.2.

A proof route is as follows. Check the equality after algebraically closed geometric specialization, where a quasi-polarization identifies the two BT₁ types. Apply functoriality and LF∘det(λ*)^(p−1)=id in its correctly typed determinant line. On a reduced base equality of sections is detected at geometric points; unique extension preserves it.

**Checks.**

- On μ_p⊕I_(1,1)⊕ℤ/p, duality exchanges the outside summands; both normalized secondary values are 1.
- Applying duality twice gives the original determinant line and value 1; a map ending in the G rather than Gᴰ line would be ill-typed after the first application.
- A height-three connected boundary group has dual dimension 1 and is excluded from this height-four self-duality assertion.

The comparison is not an identification of ω_G and ω_G^D without their determinant powers.

*Needs:* §3.1; FiniteFlatGroupsAndIntegralPadicHodgeTheory §R07.2.21; FiniteFlatGroupsAndIntegralPadicHodgeTheory §§R07.2.22–R07.2.23.

### 3.3 Canonical subgroup in the Frobenius kernel

Let B be reduced normal, G a height-four dimension-two BT₁, generically of multiplicative and étale ranks one, and suppose ker(V*:ω_G→ω_G^(p)) is an invertible direct summand. Set K=ker(V:G[F]^(p)→G[F]). Then K is finite flat of rank p and H=G[F]^(p)/K embeds as a finite flat rank-p subgroup of G[F], extending G^m from the rank-one open. Apply the same construction to G^D to obtain L. Let N=ω_(G[F]/H) and N_D=ω_(G^D[F]/L). The Hodge diagram defines V_H*:ω_H→ω_H^p, W:N^p→coker(V*), and Z:N_D^∨→coker(V*); all three are maps between line bundles. The source of Z uses coker(F*)≅N_D^∨; Z is an isomorphism, since the full crystalline V* has image ω_G^(p) and kernel im F*. (P20, Lemmas 6.3.3.1–6.3.3.4 and diagrams (6.3.A)–(6.3.B), pp. 31–33; P20 line 1352).

Constant rank one for V* is imposed as a map of bundles, not merely at generic points. The generic rank-one open is dense in every component of B.

A proof route is as follows. Import the dual Hasse–Witt rank equality from the exact sequence of crystal complexes. Use the Hodge–Tate kernel description or the geometric Dieudonné calculation to show K has constant rank p, and construct the quotient H. Read the maps off the Hodge filtration diagrams; duality identifies the stated cokernel.

The API records the following facts.

- H agrees with G^m on the open where both ranks are one.
- The displayed image-of-V construction determines H canonically, hence commutes with its defined base changes.
- Applying the construction to G^D yields L, and the quotient Hodge lines identify coker F* with N_D^∨.
- V_H*, W and Z have the stated line-bundle domains and codomains.
- At codimension-one points the vanishing orders of V_H* and W are equal; their zero set is multiplicative rank zero.

**Checks.**

- Over the rank-one open H=μ_p locally étale and V_H* is a unit.
- If étale rank drops while multiplicative rank stays one, V_H* remains a unit; its zero locus is not the entire complement of the rank-one open.
- For V* with matrix [[0,a],[0,b]], a a unit at a zero of b, the two line maps V_H* and W have the same order ord(b).
- In the DVR chart with matrix [[0,1],[0,t]], the image is a free rank-one summand; both V_H* and W have order 1 at t=0 and Z has order 0.

No arbitrary flat closure of the generic multiplicative group replaces this construction.

*Needs:* §3.1; FiniteFlatGroupsAndIntegralPadicHodgeTheory §§R07.2.22–R07.2.23; FiniteFlatGroupsAndIntegralPadicHodgeTheory §R07.2.21.

### 3.4 Normal-base extension of secondary Hasse

Under the preceding normal-base hypotheses, h′ extends uniquely across B. Its support of zeros is the complement of the open where both multiplicative and étale ranks are one. To construct it, use A=(V_H*)^(p+1)⊗(W⁻¹Z)^(p−1) and the analogous B_D for the dual. A is regular, with zeros exactly where multiplicative rank is zero; B_D has zeros where étale rank is zero. Their product, under LF and determinant identifications, extends (h′)². Normality then extends the rational section h′ itself. If the two ranks agree at every point, both individual zero-locus descriptions reduce to the same rank-zero set. (P20, Lemmas 6.3.3.3–6.3.3.5 and Proposition 6.3.3.1, p. 33; P20 line 1436).

The base is normal and reduced, and V* has rank one everywhere as in the subgroup construction. The squares are compared in their tensor-square line, not as unrelated scalar functions. For the height-one/DVR extension argument the base is locally Noetherian and normal; all moduli applications satisfy this hypothesis.

A proof route is as follows. At each height-one DVR compare orders of V_H* and W; the remaining exponent (p+1)−(p−1)=2 removes every possible pole. Use that Z is an isomorphism, so A has precisely twice the local zero order of V_H*. Repeat for the Cartier dual and multiply the two sections. A rational section whose square is integral is integral over each normal affine trivialization; uniqueness follows from density.

**Checks.**

- Over k[[t]], take the line maps V_H*=t and W=t, Z=1. The displayed A has valuation (p+1)−(p−1)=2.
- If the multiplicative rank drops and the étale rank does not, A vanishes and the dual section is a unit; exchanging the ranks exchanges those values.
- The rational section t⁻¹ has square t⁻² and fails the regular-square test; t has regular square t².

The extension theorem remains valid when the two rank-drop loci differ. A pointwise equality of the two ranks may simplify the proof but is not silently inferred from the generic ranks.

*Needs:* §3.3; §3.2.

### 3.5 Local models of the nonordinary surface

Off SS, the spherical nonordinary surface is smooth and is identified via H⊂G[F] with the indicated rank-one Iwahori strata. In the supplied local-model ring R=F_p[x,y,a,b,c]/(xy,ax+by+abc), its chart is R/(a,y,x+bc)≅F_p[b,c]. For the paramodular surface off SS, the two branches are obtained from R/(x,y+ac)≅F_p[a,b,c] by a=0 and b=0. Their reduced union is Spec F_p[a,b,c]/(ab), with rank-one open D(a)∪D(b). The two branches meet along a=b=0. The initial quotient R/(x,y+ac) alone is the ambient three-space, not the nonordinary surface. (P20, Proof of Lemma 6.4.2, pp. 36–37; P20 line 1588).

Use the spherical, Klingen and paramodular models of gap:siegel-parahoric-models; identify their Iwahori charts and rank strata by the flag morphisms proved in this section. Étale local comparisons may require extending the residue field.

A proof route is as follows. Construct the flag from the canonical rank-p subgroups H and L and the degree-p factors of the paramodular polarization. Check the equations for the two closures in the Iwahori chart, then compute their union using the intersection (a)∩(b)=(ab). Prove that the canonical subgroup flags induce the stated étale local-model comparison on the specified rank strata; the quotient-ring identities alone do not give a moduli comparison.

**Checks.**

- Substitution a=y=0 and x=−bc gives xy=0 and ax+by+abc=0; the resulting spherical ring is k[b,c], of dimension 2.
- Substitution x=0 and y=−ac kills both relations identically and leaves k[a,b,c], of dimension 3; imposing ab=0 gives the surface of dimension 2.
- The nodal point a=b=0 is on both branches; (a,b)=(1,0) and (0,1) are rank-one points, while a=b=1 fails ab=0.

The paramodular union has dimension two and two branches. The spherical quotient is a smooth affine plane.

*Needs:* §3.3; §2.3; ShimuraCompactifications §C5 (gap:siegel-parahoric-models).

### 3.6 Secondary Hasse on both nonordinary divisors

The rank-one secondary sections for G and G′ extend uniquely to h′∈H⁰(S,λ^(p²−1)) and h′_par∈H⁰(S_par,λ_par^(p²−1)). At torus-rank-one boundary points use the connected height-three BT₁ recipe. Off SS, extend on the spherical normal chart; on the paramodular nodal chart extend on each normal branch and glue because both restrictions vanish on their intersection. Across the finite set SS use Cohen–Macaulay Hartogs on the surface. The support of V(h′) is Z_red and likewise at paramodular level. This is the single secondary section used here; CG20’s auxiliary section is compared only after specifying its normalization or power. (P20, Lemma 6.4.2 and Remark 6.4.1, pp. 36–37; P20 line 1588; B15, Theorem 4.5.4(3), pp. 122–123; Theorem 6.2.2, pp. 188–189; B15 line 3091).

S and S_par are reduced CM surfaces; the rank-one locus is dense in every component. The imported coherent Hartogs theorem applies to the locally free determinant power.

A proof route is as follows. Use the connected recipe at the boundary and the normal-base extension off SS. Glue the two nodal branches using their common zero value. Use depth two at SS to extend uniquely, then compare all tame pullbacks by density.

The API records the following facts.

- Restriction to the rank-one open gives the section constructed from G^oo.
- Two extensions agreeing on the dense rank-one open are equal.
- The geometric zero set is exactly the rank-zero set.
- Prime-to-p isogeny pullbacks, tame level maps and deck transformations preserve the section.
- Multiplication by every positive power of h′ is injective on locally free sheaves over S and S_par, because the CM surfaces have no embedded associated points and h′ is generically a unit.

**Checks.**

- On F_p[a,b,c]/(ab), two branch sections zero on a=b=0 glue uniquely.
- The construction remains defined at torus-rank-one points, where the connected BT₁ has height three.
- Injectivity of multiplication by h′ does not imply its zero scheme is reduced; for odd p its generic zero order is two.
- In k[a,b,c]/(ab), the branch values a² and b² glue to a²+b²; branch values 1 and 0 do not glue because their restrictions on the intersection differ.

The extension is not proved by normality of the nodal union.

*Needs:* §3.1; §3.4; §3.5; §2.3; SchemeAndStackFoundations §0.6.

### 3.7 Reduced supersingular divisor and square root

For odd p on the spherical nonordinary surface S, there is a secondary root b∈H⁰(S,λ^((p²−1)/2)), with normalization fixed so that b²=h′; it cuts out Z_red as an effective Cartier divisor. Thus V(h′)=2 Z_red as effective Cartier divisors. Construct the section first over an algebraically closed residue field, together with its sign and transition datum, and prove the specified tame-level descent. At p=2 the half-integer Hodge exponent is unavailable; h′ itself remains defined, and no integral-half-weight root statement is included. No square-root theorem at paramodular level is inferred from the spherical one. (P20, Remark 6.4.1, p. 37; P20 line 1638; K75, §V.11, pp. 192–193; K75 line 1680; CG20, Proof of Theorem 8.10, internal p. 62 (862); CG20 line 2433).

p is odd for the root assertion. The sign and descent of b are retained as part of its datum; they are not supplied by a set-theoretic description of Z_red.

A proof route is as follows. Use Koblitz’s local genus-two rank-one degeneration and the line transition functions of the Hasse–Witt factorization to construct the root. Compute order one for b at generic points of Z_red and extend across SS using CM depth. Compare the square with h′ on the dense rank-one open, and prove the cocycle and tame-level descent identities for the root; even divisor multiplicities alone do not determine those identities.

**Checks.**

- At p=3 the root weight is 4 and the secondary weight is 8; at p=2 the putative weight is 3/2 and is not an integer Hodge power.
- In a DVR chart b=t gives h′=t²; the quotients by t and t² have lengths 1 and 2, respectively.
- On a two-chart overlap a sign change sends b to −b but leaves b² fixed; this tests why a global root requires its actual transition datum.

A local square of a divisor does not by itself prove a global section has a square root. The multiplicity-two scheme is retained for the higher-Hida interface.

*Needs:* §3.6; §2.2; SchemeAndStackFoundations §0.6.

### 3.8 Normalized pullback of Hasse sections

Let λ_G:G→G′ be an isogeny of Barsotti–Tate groups in characteristic p with constant multiplicative rank, ker λ_G=L⊂G[p], and suppose at every geometric point G[p]=H_x⊕L_x with H_x multiplicative. There is a canonical determinant-line isomorphism λ̃*:det ω_G′→det ω_G. On the multiplicative parts use the imported normalized determinant of the character-lattice isogeny. On the quotient by the multiplicative part write the induced isogeny uniquely as pµ with µ an isomorphism and use µ*. Tensor these two maps. The result preserves h and h′ wherever defined and hence their unique normal extensions. (P20, Lemma 6.3.4.2 and proof, p. 34; P20 line 1479).

These are full Barsotti–Tate groups, so division of the induced isogeny by p on the quotient has the stated meaning. This is not defined by dividing a zero differential in characteristic p.

A proof route is as follows. Intersect L with the multiplicative part; the complement condition makes the quotient kernel its entire p-torsion. Use the unique factorization pµ and the imported multiplicative determinant normalization. Apply functoriality to each factor and the tensor construction of the two invariants.

The API records the following facts.

- λ̃* is an isomorphism of the indicated determinant lines.
- If λ_G is étale, λ̃*=det λ_G*.
- For a purely multiplicative isogeny of degree p^s, use its contravariant character map X*(G′)→X*(G): the normalized determinant is p^(−s) times its determinant, tensored with the appropriate rank power of ω_μ. In cocharacter coordinates the equivalent map is the transpose of the normalized covariant map.
- (λ̃*)^(p−1)h(G′)=h(G), and (λ̃*)^(p²−1)h′(G′)=h′(G).
- The normalized map commutes with base change preserving the constant-rank filtration and with compositions satisfying the same factorization hypotheses.

**Checks.**

- For [p]:μ_(p∞)→μ_(p∞), the normalized determinant map is the identity, while the differential modulo p is zero.
- For the identity isogeny of a multiplicative Barsotti–Tate group G, the complement hypothesis holds with H_x=G[p] and L_x=0; s=0 and the normalized map is identity.
- On G/G^m, an isogeny pµ contributes µ*, not the zero map (pµ)*.
- For [p] on μ_(p∞)², the character determinant is p² and the normalized scalar is p^(−2)p²=1 before tensoring; the characteristic-p differential is 0.

For G=Hom(T,μ_(p∞)), the character lattice T identifies ω_G with T⊗ω_μ. The cocharacter lattice is dual to this character lattice. For a two-dimensional split multiplicative group, det ω_G=(det T)⊗ω_μ²; the exponent is the rank, not 1.

*Needs:* FiniteFlatGroupsAndIntegralPadicHodgeTheory §R07.2.2; HodgeTateAndCanonicalSubgroups §0.12; §3.1; §3.2.

### Examples

In k[a,b,c]/(ab), branch sections a² and b² glue to a²+b², vanishing on their intersection. At p=3 the spherical root has Hodge weight 4, its square weight 8, and local equation t gives secondary equation t² (P20 Lemma 6.4.2 and Remark 6.4.1, pp. 36–37; P20 line 1609).

### Dependencies

Layers 2 ; FiniteFlatGroupsAndIntegralPadicHodgeTheory §R07.2.2; FiniteFlatGroupsAndIntegralPadicHodgeTheory §§R07.2.22–R07.2.23; FiniteFlatGroupsAndIntegralPadicHodgeTheory §R07.2.21; ShimuraCompactifications §C5 (gap:siegel-parahoric-models); SchemeAndStackFoundations §0.6; HodgeTateAndCanonicalSubgroups §0.12.

## Layer 4: Hasse lifts and torsion weight shifts

### 4.1 Characteristic-zero Hasse power lifts

There exist r>0 and A∈H⁰(X,λ^(r(p−1))) reducing to h^r. They are obtained by lifting a sufficiently high Hasse power on the minimal compactification, where an appropriate power of λ is ample, and pulling back. A is a chosen lift, with no canonicality asserted. It pulls back to every tame auxiliary-level model. For prescribed j≥k and m≥1 one may choose arbitrarily large s divisible by p^(m−1); multiplication by A^s then raises both weights by t=rs(p−1) modulo ϖ^m. (CG20, Definition 6.1 and following paragraph, internal pp. 35–36 (835–836); CG20 line 1406; T06, §3.2, p. 810; T06 line 1292).

The chosen exponent r also clears the tensor power needed for descent of the Hodge line. The higher-cohomology vanishing used here is Serre vanishing for a coherent ample twist on the minimal model.

A proof route is as follows. Descend h and a Hodge-line power using the imported minimal interface. Apply the reduction exact sequence and Serre vanishing to lift a sufficiently large power, then pull back to X.

The API records the following facts.

- A mod ϖ=h^r in the indicated determinant line.
- At tame auxiliary levels use the pullback of the same A, so every deck transformation fixes it.
- Two chosen lifts of h^r differ by a section divisible by ϖ.
- For any lower weight-shift bound one can choose s divisible by p^(m−1) giving a larger shift.
- A itself depends on a lift; canonicality appears only after the exponent/congruence in the next section.

**Checks.**

- Every such A has Fourier expansion congruent to 1 modulo ϖ.
- Locally 1 and 1+ϖ give different lifts modulo ϖ².
- A pulled back from X is fixed by the auxiliary deck action even when the group order is divisible by p.
- At p=3,ϖ=3 the two local lifts 1 and 4 differ modulo 9, but their cubes 1 and 64 agree modulo 9. A trivial deck action fixes both values without dividing by the deck-group order.

Ampleness is used on the minimal model, not asserted on the toroidal one.

*Needs:* §2.4; HodgeTateAndCanonicalSubgroups §0.16; ShimuraCompactifications §C5.17; ShimuraCompactifications §§C5.16–C5.20 (gap:siegel-parahoric-models); SchemeAndStackFoundations §2.6.

### 4.2 Canonical powers modulo pⁿ

If two local lifts a,b of the same mod-p section of a line bundle differ by p, then a^(p^(n−1))≡b^(p^(n−1)) mod p^n. Consequently h^(p^(n−1)) has a canonical lift to X⊗Z/p^n in λ^(p^(n−1)(p−1)), obtained by taking local lifts and gluing their powers. Over a ramified O the analogous statement for a−b∈ϖO is a^(p^(m−1))≡b^(p^(m−1)) mod ϖ^m. Thus A^s modulo ϖ^m depends only on h^r whenever p^(m−1) divides s. It commutes with pullback, including prime-to-p isogenies identifying the determinant sections. (P20, Proof of Theorem 11.2.1, p. 70; P20 line 3230; CG20, Lemma 6.4, internal pp. 36–37 (836–837); CG20 line 1438).

n,m≥1 and p is any prime. Local transition functions of the line bundle are included when comparing the lifts; the statement does not give a lift of h itself modulo p².

A proof route is as follows. Induct with (u+p^a v)^p−u^p divisible by p^(a+1), starting with a=1. For ϖ use p∈ϖO and the same binomial argument, which increases the ϖ-adic order by at least one. Apply the congruence on overlaps, with their line-bundle transition factors, then glue.

**Checks.**

- For p=2,n=2, 3²−1²=8 is divisible by 4; for p=3,n=2, 4³−1³=63 is divisible by 9.
- With ϖ²=3 and m=2, (1+ϖ)³−1=3ϖ+3ϖ²+ϖ³ has ϖ-order at least 3, hence at least 2; no replacement of p by ϖ in the exponent is used.
- At n=1 the exponent is 1 and the assertion is exactly a≡b mod p. For n=0 there is no p^(n−1) convention: n≥1 is required.

At p=2, (a+2b)²≡a² mod 4 still verifies the induction base. Over a ramified DVR, the claim uses reduction modulo ϖ^m, not an assertion that p and ϖ have equal valuation.

*Needs:* §4.1; HodgeTateAndCanonicalSubgroups §0.14.

### 4.3 Equivariant torsion weight shifts

For j≥k, m≥1 and the chosen r,A, let s>0 be divisible by p^(m−1), and t=rs(p−1). Multiplication by A^s is injective from M_(j,k)(O/ϖ^m) to M_(j+t,k+t)(O/ϖ^m), and likewise for cusp forms. It is equivariant for prime-to-p Hecke correspondences, their tame-level U operators, and auxiliary deck transformations. Arbitrarily large t of this form are possible. (CG20, Lemmas 6.2 and 6.4, internal pp. 36–37 (836–837); CG20 line 1438).

These are the away-from-p equivariances; the separate at-p theorem is §7.7.

A proof route is as follows. Reduce injectivity first modulo ϖ, where h is a nonzerodivisor. Induct on m using the ϖ-filtration of the locally free sheaf tensored with O/ϖ^m. Use the canonical-power congruence on the two sides of a prime-to-p isogeny; deck equivariance follows because A is pulled back from X.

**Checks.**

- At p=3,m=2,r=1,s=3 the common shift is t=6 and the symmetric degree j−k is unchanged.
- A local multiplier 1+ϖ has inverse 1−ϖ modulo ϖ²; this verifies injection even on the torsion coefficient module O/ϖ².
- A deck group of order p still fixes a section pulled back from the quotient: g*A=A for all g; no averaging scalar 1/p occurs.

No averaging over the auxiliary deck group is used. The statement does not make a characteristic-zero theta operator out of the mod-p one.

*Needs:* §2.4; §4.1; §4.2.

### 4.4 Two affine opens above rank at least one

Let 𝔛* be the formal minimal spherical compactification. Descend h to its special fiber and h′ to the closed nonordinary divisor V(p,h). For sufficiently divisible and sufficiently large N, these supply noncanonical sections s₁,s₂ of the same ample line L=λ^(N(p²−1)) on 𝔛*: s₁ reduces to h^(N(p+1)), and s₂ restricts on V(p,h) to (h′)^N. Their nonzero formal loci cover precisely 𝔛*^(≥1)=D(s₁)∪D(s₂), and each is affine. This construction supplies the spherical cover and its finite pullbacks; analytic overconvergent cohomological resolutions use this cover as an input. (P20, Proof of Lemma 14.8.2, p. 101; P20 line 4601; B15, Theorem 6.2.3 and Corollary 6.2.4, p. 190; B15 line 4765).

Use a Hodge power when λ is a descended rational line; prove the specified power comparison and descent of h′ on the closed nonordinary divisor as part of this construction.

A proof route is as follows. Use primary minimal descent and compare a specified positive power of h′ with the boundary-compatible generalized Hasse section on the nonordinary minimal stratum; prove equality in the identified Hodge line, including its normalization. Use the exact sequences for reduction and for the closed divisor together with Serre vanishing to lift both sections into one high ample power. Their common special-fiber zero support is rank zero; principal nonvanishing opens of an ample section on the proper minimal model are affine.

The API records the following facts.

- s₁ and s₂ lie in the same specified ample tensor power.
- Their common zero support is exactly Z_red.
- D(s₁), D(s₂), and their intersection are affine formal opens.
- A finite morphism to the spherical minimal model pulls the cover back to two affine opens; nonfinite morphisms require a separate argument.
- Different permissible lifts define the same special-fiber open 𝔛*^(≥1), without claiming their individual opens are identical.

**Checks.**

- At a rank-one point h=0 and h′≠0, so s₂ is a unit.
- At rank zero both specializations vanish, so neither formal nonzero locus contains the point.
- (p−1)N(p+1)=(p²−1)N; unequal weights would not be two sections of L.
- At p=3,N=1 both weights are 8. An ordinary point has h=1; a rank-one point has (h,h′)=(0,1); a rank-zero point has (0,0). The union of the two nonzero loci includes exactly the first two.

D(s₂) may contain ordinary points; only its restriction to V(h) is prescribed. A section defined only on V(p,h) is not treated as a section of the whole formal model before the lifting step.

*Needs:* §3.6; §4.2; ShimuraCompactifications §C5.17; HodgeTateAndCanonicalSubgroups §0.16; ShimuraCompactifications §§C5.16–C5.20 (gap:siegel-parahoric-models); SchemeAndStackFoundations §2.6.

### Examples

For p=3,m=2,r=1,s=3, multiplication raises both weights by 6. The two local lifts 1 and 4 have cubes 1 and 64, congruent modulo 9. The two cover sections have common Hodge weight 8N, since 2·4N=8N (P20 §11.2, p. 70, and Lemma 14.8.2, p. 101; P20 line 4603).

### Dependencies

Layers 2, 3 ; HodgeTateAndCanonicalSubgroups §0.16; ShimuraCompactifications §C5.17; ShimuraCompactifications §§C5.16–C5.20 (gap:siegel-parahoric-models); SchemeAndStackFoundations §2.6; HodgeTateAndCanonicalSubgroups §0.14.

## Layer 5: Formal coefficient operators and Q₂

### 5.1 Covariant formal Siegel series

For a coefficient O-module C_d=Sym^d(O²)⊗M, d≥0, a formal Siegel series is a coefficient function Q↦a(Q) on the Layer 1 index lattice, extended by zero outside it, with a(γ·Q)=ρ_d(γ)a(Q) for γ∈Γ̄. Use the actual semidefinite support and fixed tame denominator bound; all-component series carry the source/target cusp transports of the fixed level. This defines a module. A series need not be the expansion of a geometric form. The action ρ_d extends to integral 2×2 matrices via the existing symmetric-power functor; determinant weight is recorded in the operator scalars. (CG20, §8.2, internal pp. 56–57 (856–857); terminology in §8.6–8.9; CG20 line 2188).

d=j−k, and Γ̄ has prime-to-p level. For characteristic-p identities tensor the entire coefficient module with k₀.

A proof route is as follows. Take the submodule of coefficient functions satisfying the support and covariance equations. Import symmetric powers and their matrix functoriality from Tau Ceti; do not replace C_d by an unverified polynomial representation lattice.

The API records the following facts.

- Two formal series are equal iff each coefficient agrees.
- The coefficient maps are linear and define a submodule of all functions on the index set.
- Evaluation at an index outside the allowed lattice is zero.
- Coefficient maps commute with zero extension and the ρ_d-action.
- The Layer 1 q-expansion map lands in this module, injectively for the all-component family.

**Checks.**

- For d=1 and M=diag(p,1), ρ₁(M)x=px and ρ₁(M)y=y; inserting an extra determinant twist would instead give p²x and py. For γ∈SL₂ the determinant factor is 1.
- In the scalar coefficient module K/O, the nonzero class 1/p+O is killed by p. The constant coefficient function with this value is a formal series killed by p, so the definition cannot require a coefficient algebra or a p-torsion-free module.
- At weight (0,0) over a field, the indicator of one Γ̄-orbit of a positive-definite index is a nonzero covariant formal series with zero constant term. On a proper geometrically connected X every global regular function is constant, so this series is not geometric.
- On the zero coefficient module the formal series module is 0. At d=0 the orbit indicator of x²+y² has positive coefficient 1 and constant coefficient 0, excluding it from regular functions on a proper connected model.

Formal operator identities do not by themselves show that their outputs are geometric forms.

*Needs:* §1.2; §1.3; Tau Ceti `Representation.symmetricPower`; Tau Ceti `Module.Basis.symmetricPower`.

### 5.2 Determinant-p cosets and integral neighbors

Let Γ̄ be a congruence subgroup of SL₂(Z) of level prime to p. Import the generic double-coset and index-p lattice machinery from ModularForms Layer 2. The left cosets MΓ̄ in Γ̄ diag(p,1) Γ̄ have p+1 integral representatives M of determinant p and are parametrized by P¹(F_p). For the full group one may take diag(1,p) and [[p,a],[0,1]] for 0≤a<p, with the chosen action on Q; at general level choose compatible lifts by prime-to-p approximation. Only terms with M⁻¹·Q p-integral contribute. The associated projective line is the one on which the reduction of Q must vanish; specify it through this integrality criterion rather than an ambiguous kernel/image convention. (CG20, Lemma 8.3, internal p. 58 (858); Definition 8.19, p. 72 (872); CG20 line 2266).

p is prime and the level of Γ̄ is prime to p. The matrices are representatives of left cosets; the covariance acts on coefficients from the left.

A proof route is as follows. Import the generic double-coset/lattice correspondence and the full-group index-p count from ModularForms Layer 2; specialize its lines to the normalized binary-index transform. For the stated arbitrary prime-to-p congruence subgroup, use Γ(N)⊂Γ̄ and prime-to-p approximation to lift compatible representatives; prove any level extension not covered by the imported Γ₀/Γ₁ interfaces here. Changing M to Mγ, γ∈Γ̄, cancels using a(γ⁻¹·Q)=ρ_d(γ⁻¹)a(Q); then identify the projective line through the integral-transform criterion.

The API records the following facts.

- The representative set has cardinality p+1.
- Its cosets correspond bijectively to projective F_p-lines with the specified integral-transform criterion.
- The coefficient sum defining Z is independent of the representative choice.
- A prime-to-p change of level gives the compatible double-coset correspondence and coefficient transport.
- M⁻¹·Q is p-integral iff Q vanishes at the corresponding projective point.

**Checks.**

- For p=3 and Γ̄=SL₂(Z), there are four left cosets.
- Every coset is admissible for Q≡0 mod p.
- At p=3, Q=x²+y² has no admissible coset, because its reduction has no projective zero.
- At p=3 the zero form permits 4 representatives, x² permits 1 and x²+y² permits 0; these are integrality counts for the chosen orientation.

The source typo replacing M⁻¹·Q by an unnormalized matrix product is not adopted.

*Needs:* §5.1; ModularForms Layer 2.

### 5.3 The formal U, Z and V operators

For formal series define (UF)(Q)=a(F,pQ), (VF)(Q)=a(F,Q/p) with zero extension, and (ZF)(Q)=Σ_M ρ_d(M)a(F,M⁻¹·Q), summed over the determinant-p representatives. Define Z₂=UZ, so (Z₂F)(Q)=Σ_Mρ_d(M)a(F,M⁻¹·pQ). These operators preserve integral coefficient modules and covariance, with the all-component Hecke transport attached when the level has multiple components. They satisfy UV=1, Z₂=UZ, and UZ₂=Z₂U. No identity UZ=ZU is asserted. (CG20, Lemmas 8.3–8.4 and the display after Lemma 8.4, internal pp. 58–59 (858–859); CG20 line 2266).

The tame denominator bound can be enlarged within the same fixed level lattice when required by its marked cusp; p-denominators remain forbidden. The coefficients carry the symmetric-power matrix action ρ_d.

A proof route is as follows. Define U and V by reindexing and Z by its finite sum. Check covariance by permuting cosets, then prove the identities coefficientwise; scalar multiplication of Q commutes with the normalized matrix action. For UZ₂=Z₂U both coefficient formulas evaluate a(F,p²M⁻¹·Q), with the same zero-extension convention.

The API records the following facts.

- a(UF,Q)=a(F,pQ).
- a(VF,Q)=a(F,Q/p), with inadmissible indices zero.
- a(ZF,Q)=Σ_Mρ_d(M)a(F,M⁻¹·Q).
- a(Z₂F,Q)=Σ_Mρ_d(M)a(F,M⁻¹·pQ).
- UV=1 on the coefficient module; VU is the projection retaining indices divisible by p.
- UZ₂=Z₂U; integrality is preserved by all four operators.

**Checks.**

- At every Q, a(UVF,Q)=a(F,Q).
- For p-primitive Q, a(VUF,Q)=0, even if a(F,Q)≠0.
- For d=0, a(ZF,n,r,m)=a(F,pn,r,m/p)+Σ_(0≤a<p)a(F,(n+ar+a²m)/p,r+2ma,pm), with nonintegral terms zero.
- For the scalar constant series at p=3, U and V have constant value 1 while Z and Z₂ have value 4. A primitive index with coefficient 1 is killed by VU, whereas UV retains it.

For d=0 recover the two scalar formulas recorded in the worked examples. The source’s ordinary U_(p,2) is Z₂ in the congruences; it is not the diagonal U₂.

*Needs:* §5.1; §5.2.

### 5.4 Discriminant diagonal operator X₂

Assume p odd. Over O, define X₂ on the Q-coefficient by the integer scalar ε(Q): if Q is p-primitive, ε(Q)=legendreSym(p,Δ(Q)); if Q≡0 mod p, ε(Q)=p. Define U₂=−1+pX₂. Thus its scalar is −1+p legendreSym(p,Δ(Q)) on primitive Q and −1+p² on nonprimitive Q. On characteristic-p coefficients X₂ reduces everywhere to multiplication by legendreSym(p,Δ(Q)). The sign convention is Δ=r²−4mn=−4det Q. (CG20, Lemma 8.4, Definition 8.5, internal p. 59 (859); CG20 line 2315).

For Δ(Q), clear the common prime-to-p denominator of m,r,n; the resulting discriminant numerator differs from Δ(Q) by a square unit, so its Legendre symbol is independent of that presentation. p odd avoids the half-integral matrix denominator and the characteristic-two quadratic classification.

A proof route is as follows. Apply the existing Legendre symbol to the reduced discriminant and use the primitive/nonprimitive coefficient test. Show invariance under the normalized Γ̄-action; the operator is coefficientwise linear.

The API records the following facts.

- On a primitive Q the multiplier is legendreSym(p,Δ(Q)).
- On Q≡0 mod p the integral multiplier is p.
- U₂=−1+pX₂ as integral operators.
- Over k₀ the multiplier is the reduced discriminant Legendre symbol for every Q.
- X₂ and U₂ are coefficient-linear and preserve Γ̄ covariance.

**Checks.**

- For p=3,Q=x²+y², X₂ has scalar −1 and U₂ has scalar −4.
- For Q=3(x²+y²) at p=3, X₂ has scalar 3 and U₂ has scalar 8 before reduction.
- For Q=x², X₂ has scalar 0 and U₂ has scalar −1.
- At p=3 the triples of (X₂,U₂) scalars for x²+y²,3(x²+y²),x² are (−1,−4),(3,8),(0,−1). Their reductions are (2,2),(0,2),(0,2).

The discriminant and matrix determinant give opposite signs when −1 is nonsquare.

*Needs:* §5.1; §1.2; Mathlib `legendreSym`.

### 5.5 Characteristic-p formal relations

Over k₀ and for odd p, UX₂=0, X₂³=X₂ and Z₂X₂=0. The first holds because pQ is nonprimitive; the second because the reduced multipliers are 0,1,−1. In Z₂X₂, every contributing index R=M⁻¹·pQ has det R=p²det Q, hence Δ(R) is divisible by p, so its X₂ coefficient vanishes. This only uses congruence of the discriminant, not det R=0 as a rational number. (CG20, Lemma 8.6, internal p. 59 (859); uses in §§8.6–8.7, pp. 68–73 (868–873); CG20 line 2315).

Formal series and zero extension are those of Layer 5.

A proof route is as follows. Compute every identity on one coefficient. When a transformed index is nonintegral its summand is zero; otherwise its discriminant is divisible by p.

**Checks.**

- At p=3,Q=x²+y² the X₂ multiplier is −1 and its cube is −1; at Q=x² the two values are 0.
- The index 3Q is nonprimitive and its integral X₂ multiplier 3 reduces to 0; thus the coefficient of UX₂ is 0.
- For M=diag(3,1) and Q=x²+y², M⁻¹·3Q=x²+9y² has discriminant −36, nonzero over ℚ but 0 modulo 3.

The relation UX₂=0 need not hold over O. At a p-primitive nonsingular index the possible X₂ eigenvalues are ±1.

*Needs:* §5.3; §5.4.

### 5.6 Rational Hecke decomposition and residual V₂

Fix j≥k≥2, d=j−k, and the CG20 similitude^(−3) normalization of the rational spherical double cosets T=[diag(1,1,p,p)], T₂=[diag(1,p,p,p²)] and S=[pI₄]. In the trivial central/diamond sector with its chosen component identifications, S=p^(j+k−6). Their coefficient operators satisfy T=U+p^(k−2)Z+p^(j+k−3)V and T₂=p^(j+k−6)U₂+p^(k−3)Z₂+p^(j+2k−6)V₂. Define the rational residual V₂ by the second equality, using the rational T₂ and the other defined terms. The finite-coset calculation must show it preserves the integral formal lattice by finite O-linear coefficient formulas natural in all coefficient modules. At a disconnected adelic level retain the central and cusp transport actions; the displayed scalar S formula requires the stated trivial sector. (CG20, §5.5 and Remark 5.10, internal pp. 33–34 (833–834); Lemmas 8.3–8.4, p. 58 (858); CG20 line 1315; P20, §5.1.3, p. 21; §14.9.2, p. 104; P20 line 900).

p is odd, as required for the discriminant and X₂ interface. Negative p-exponents in these rational identities are interpreted only after inverting p. The second equality is the characterization of V₂, not a definition of integral T₂ on torsion forms.

A proof route is as follows. Use the imported prime-to-p/rational automorphic-bundle Hecke pullback-and-trace convention with similitude^(−3). Compute the rational double-coset action at the split cusp and group terms as the three displayed summands. Establish an explicit finite-sum expression for the residual determinant-p² cosets with integral symmetric-power weights, natural in all coefficient modules; rational lattice preservation alone does not give this natural transformation.

The API records the following facts.

- T=U+p^(k−2)Z+p^(j+k−3)V on rational expansions.
- T₂=p^(j+k−6)U₂+p^(k−3)Z₂+p^(j+2k−6)V₂ on rational expansions.
- The second identity uniquely specifies V₂ after p is inverted.
- The determinant-p² coset calculation gives an integral coefficient operator whose scalar extension is the characterized V₂.
- A nontrivial central/diamond action is retained rather than replaced by its scalar trivial-character specialization.

**Checks.**

- Modulo p, T=U+Z at k=2 and T=U at k≥3.
- At (j,k)=(3,3), T₂=−1+pX₂+Z₂+p³V₂, hence T₂≡Z₂−1 mod p.
- At (2,2), S=p^(−2) is a rational normalization; it cannot be separately applied as a scalar on O/ϖ^m.
- At p=3,(j,k)=(3,3), the four coefficients in T₂=−1+pX₂+Z₂+p³V₂ are −1,3,1,27; at (2,2) the central scalar is 1/9.

The integral normalized output constructed in Layer 7 is T and Q₂, not unnormalized T₂ in all weights.

*Needs:* §5.3; §5.4; AutomorphicBundles §§B5.10–B5.11, B5.19.

### 5.7 Integral corrected Q₂ operator

For j≥k≥2 in the normalization just fixed, cancel negative powers in (pT₂+(p+p³)S)p^(2−k) before reducing coefficients. The result is the integral formal operator Q₂=p^(j−2)X₂+Z₂+p^(j+k−3)V₂+p^(j−1)·1. Thus Q₂≡Z₂ mod p except at (j,k)=(2,2), where Q₂≡Z₂+X₂. The extra identity term comes from p³S and is retained in the exact integral identity. In particular at (3,3) Q₂≡Z₂ even though T₂≡Z₂−1. (CG20, Definition at start of §8.4, internal p. 59 (859); Lemma 8.12, p. 64 (864); CG20 line 2315).

The displayed scalar expression is in the trivial central/diamond sector; retain central transport on other sectors. Use the integral natural coefficient operator supplied by §5.6, with its explicit residual finite-sum formula.

A proof route is as follows. Substitute the T₂ decomposition and S=p^(j+k−6). The U₂ and pS terms combine as p^(j−3)(U₂+1)=p^(j−2)X₂. The p³S term becomes p^(j−1), and the remaining coefficients have nonnegative exponents. Reduce only after this cancellation.

The API records the following facts.

- Q₂=p^(j−2)X₂+Z₂+p^(j+k−3)V₂+p^(j−1).
- After p is inverted it equals (pT₂+(p+p³)S)p^(2−k).
- Q₂≡Z₂ unless (j,k)=(2,2), where the extra term is X₂.
- The cancelled integral formula commutes with all coefficient maps.
- A positive simultaneous Hasse shift preserves d and gives Q₂≡Z₂ at the shifted weight.

**Checks.**

- At (2,2), Q₂=X₂+Z₂+pV₂+p, so its mod-p value is X₂+Z₂.
- At (3,3), Q₂=pX₂+Z₂+p³V₂+p².
- Dropping the pS term before combining U₂+1 would leave a spurious p^(−1) at (2,2).
- At p=3 the exact coefficient tuples of (X₂,Z₂,V₂,1) are (1,1,3,3) at (2,2) and (3,1,27,9) at (3,3); reduction gives (1,1,0,0) and (0,1,0,0).

No multiplication by p^(−1) is performed on a torsion coefficient module.

*Needs:* §5.6; §5.5.

### Examples

At (2,2), Q₂=X₂+Z₂+pV₂+p, and at (3,3), Q₂=pX₂+Z₂+p³V₂+p². At p=3 and Q=x²+y², X₂=−1 and U₂=−4 on its coefficient; at 3Q those values are 3 and 8. The corresponding reductions separate all branches (CG20 Lemmas 8.4, 8.12, pp. 58–59,64; CG20 lines 2306,2501).

### Dependencies

Layers 1 ; Tau Ceti `Representation.symmetricPower`; Tau Ceti `Module.Basis.symmetricPower`; ModularForms Layer 2; Mathlib `legendreSym`; AutomorphicBundles §§B5.10–B5.11, B5.19.

## Layer 6: Binary quadratic neighbors

### 6.1 Binary-form neighbor multiset

Fix the oriented double coset Δ_p=Γ̄ diag(p,1)Γ̄ from Layer 5. For a p-integral index Q, let ℱ_Δ([Q]) (abbreviated ℱ([Q])) be the multiset of Γ̄-equivalence classes [M⁻¹·Q] contributed by the determinant-p left cosets whose transform is p-integral. Count each contributing coset once, including when different cosets give the same class. The construction depends only on [Q]. Its coefficient realization retains, for each contributing M and its transformed representative P, the intertwiner ρ_d(M): a(ZF,Q)=Σ_Mρ_d(M)a(F,P). It is not an unweighted sum of abstract orbit coefficients. (CG20, Definition 8.19 and the coefficient identity following it, internal p. 72 (872); CG20 line 2770).

Γ̄, indices and zero extension are as in Layer 5. For statements about positive discriminant classes use Δ as defined in Layer 1; semidefinite Fourier indices have Δ≤0.

A proof route is as follows. Use the determinant-p coset parametrization and covariance to pass from a representative Q to its class. Keep a labeled multiset before taking classes; this remembers multiplicity and the coefficient transport.

The API records the following facts.

- Equivalent Q give the same multiset of classes by permutation of left cosets.
- Its multiset cardinality counts all admissible projective points.
- A labeled occurrence consists of a determinant-p M and P=M⁻¹·Q, not just an unlabelled orbit.
- Z is the sum of ρ_d(M)a(F,P) over those occurrences.
- Every neighbor occurrence has Δ(P)=Δ(Q).

**Checks.**

- For p=5,Q=x²+y²,Γ̄=SL₂(Z), the two isotropic projective points give the same discriminant −4 class twice.
- If Q≡0 mod p, every one of the p+1 cosets contributes.
- For d=1 and M=diag(p,1), a contributing coefficient x is weighted to px, whereas a coefficient y is weighted to y. Replacing ρ₁(M) by the scalar 1 loses the first value and cannot define the same neighbor operator.
- At Γ̄=Γ(5), p=3 and Q=x², each M in Δ_p is diag(3,1) modulo 5, so its integral neighbor is 2x² modulo 5. A second forward neighbor is 4x² modulo 5, not Q; the reverse double coset is necessary.
- At p=5, the two roots [2:1],[3:1] of x²+y² give multiset cardinality 2 even if the support has cardinality 1. The zero form has multiset cardinality 6.

Equal classes contributed by two different projective points are not deduplicated.

*Needs:* §1.2; §5.2; §5.3.

### 6.2 Projective-zero count of neighbors

If Q is p-primitive and p odd, |ℱ([Q])|=1+legendreSym(p,Δ(Q)), giving 0,1,2 according as the discriminant is nonsquare, zero or a nonzero square modulo p. If Q≡0 mod p the cardinality is p+1. The bijection is between labeled admissible determinant-p cosets and zeros of Q in P¹(F_p), so the count is a multiset count. (CG20, Lemma 8.21 and preceding paragraph, internal pp. 72–73 (872–873); CG20 line 2770).

Q is p-integral and p odd; the primitive branch requires the nonzero reduction of Q.

A proof route is as follows. Use the coset integrality/projective-zero equivalence. Apply the imported binary-quadratic projective-zero theorem; the zero form is its separate p+1-point case.

**Checks.**

- At p=3, x²+y² has 0 projective zeros, x² has 1 and xy has 2; the three Legendre values are −1,0,1.
- The zero reduction at p=3 has all 4 projective points as zeros; substituting the primitive formula would incorrectly give 1.
- At p=5, x²+y² has zeros [2:1] and [3:1], counted twice even when their neighbor classes agree.

At p=3 the positive form x²+y² has no neighbor. For x² the count is one, despite Δ=0.

*Needs:* §6.1; ClassicalArithmeticCompletion §1.17; Mathlib `legendreSym`.

### 6.3 Reciprocity of neighbor classes

Let Δ_p^∨={pM⁻¹:M∈Δ_p}. If [P] occurs in ℱ_Δ([Q]), then [Q] occurs in ℱ_(Δ^∨)([P]). For Q=M·P the reverse action uses pM⁻¹, an integral determinant-p matrix. If Δ_p^∨=Δ_p, in particular for Γ̄=SL₂(Z), this is the symmetric relation [P]∈ℱ([Q]) iff [Q]∈ℱ([P]). At general tame level keep the reverse correspondence and cusp/diamond transport; prime-to-p level alone does not imply equality of the two double cosets. No inverse of ρ_d(M) on torsion coefficients is asserted. (CG20, Lemma 8.20 and proof, internal p. 72 (872); CG20 line 2770).

Fix the equivalence classes and oriented double cosets of Layers 5–6. The same-coset equivalence requires equality of the reverse and forward double cosets, or an explicitly proved diamond/cusp identification; use oriented reciprocity without that extra hypothesis.

A proof route is as follows. Conjugate within Γ̄ to an index-p lattice normal form. Use (pM⁻¹)·Q=P, since the normalized action of scalar pI is identity on quadratic forms. The reverse matrix belongs to Δ_p^∨ by definition. Identify it with the forward double coset only under the stated self-duality hypothesis; prime-to-p congruence lifting does not supply that identification.

**Checks.**

- For M=diag(3,1), its adjugate is diag(1,3), and their product is 3I; the normalized action of 3I on x² is x².
- At Γ(5),p=3 the forward coefficients change x² to 2x² and then to 4x² modulo 5; the reverse changes 2x² to x².
- For d=1, the coefficient map diag(3,1) sends x to 3x=0 in characteristic 3, so reciprocity cannot assert an inverse coefficient map.

No inverse of a determinant-p coefficient matrix is used modulo p.

*Needs:* §6.1; §5.2.

### Examples

For p=5, Q=x²+y² has roots [2:1],[3:1], yielding two labeled neighbor occurrences. At Γ(5),p=3, the two successive forward coefficient reductions are 2x² and 4x², so reciprocity uses the adjugate orientation (CG20 Definition 8.19 and Lemmas 8.20–8.21, pp. 72–73; CG20 line 2773).

### Dependencies

Layers 1, 5 ; ClassicalArithmeticCompletion §1.17; Mathlib `legendreSym`.

## Layer 7: Integral geometric Hecke actions

### 7.1 Finiteness of the spherical correspondence

Restrict the imported compactified C_(p,2) isogeny correspondence (Pilloni indexing; CG20 β₁) to the formal locus X^(≥1). Both relevant projections are proper and quasi-finite, hence finite, and are generically étale. In the interior they classify isotropic Lagrangian rank-p² kernels. At a geometric ordinary or rank-one point, only finitely many such subgroups occur; positive-dimensional families of α_p-subgroups arise only on the excluded rank-zero locus. At the boundary use the imported degeneration chart. This is a restriction of the existing correspondence, not a new Hilbert-scheme construction. (CG20, Proof of Lemma 8.8, internal p. 60 (860); CG20 line 2364; P20, Spherical part of §14.9.2, p. 104; P20 line 4733).

The rank loci are defined by the underlying special fiber; finiteness is over the inherited nilpotent thickening/formal open. The finite-fiber statement requires the full genus-two BT₁ classification, including nonordinary rank one, and the toroidal chart comparison.

A proof route is as follows. Classify the possible isotropic kernels at rank two and rank one using the BT₁ Dieudonné module. Use the imported proper compactification and the boundary subgroup description to obtain quasi-finiteness on all of the stated open. Apply proper plus quasi-finite and generic characteristic-zero étaleness. 

**Checks.**

- For an ordinary surface over an algebraic closure, Lagrangian p-torsion kernels have geometric-point counts 1,p+1,1 by multiplicative, mixed and étale type; at p=3 these are 1,4,1, summing to 6. The characteristic-zero correspondence degree is 40; inseparable multiplicities distinguish degree from the special-fiber point count.
- At a rank-one almost ordinary fiber the a-number is 1, so its α_p subgroup is unique; at a superspecial fiber the lines in α_p² form ℙ¹(k), an infinite set.
- A boundary torus-rank-one fiber with supersingular elliptic quotient has rank 1, so it remains inside the finite-correspondence open.

The complete proper correspondence is not asserted to be finite over rank zero.

*Needs:* ShimuraCompactifications §C5 (gap:siegel-parahoric-models); §2.2; FiniteFlatGroupsAndIntegralPadicHodgeTheory §R07.2.2; FiniteFlatGroupsAndIntegralPadicHodgeTheory §§R07.2.22–R07.2.23.

### 7.2 Ordinary trace divisibility

For the finite correspondence over X^(≥1), write d=j−k≥0 and r=k≥2. On the formal neighborhood of an ordinary point the kernel types are multiplicative, mixed and étale. The differential on Ω(d,r) factors respectively through p^(d+2r), p^r and 1; the trace factors respectively through 1, p and p³. Thus the raw pullback followed by trace lands in p³Ω(d,r), including the subcanonical boundary twist. For r=2 these are the source’s p^(d+4),p²,1 differential bounds. The trace bounds are ideals/divisibility statements, not merely the degrees of maps. (P20, Spherical part of §14.9.2, p. 104; P20 line 4733; CG20, Lemma 8.3, internal p. 58 (858); CG20 line 2266).

Use the polarized Serre–Tate charts supplied by AbelianSchemesAndArithmeticModuli Layer A4 and the semiabelian boundary charts. The bound on the symmetric-power part in the mixed case is only integrality; it is not assumed divisible by p^d.

A proof route is as follows. On a multiplicative kernel the differential on E is p times an isomorphism, yielding p^d from Sym^d and p^(2r) from det^r. For a mixed kernel use a basis with differential diag(p,1), yielding the determinant factor p^r and an integral symmetric-power map. For an étale kernel the differential is an isomorphism; compute trace ideals in Serre–Tate coordinates as p and p³ for the ramified covers. Each product has p-order at least three when r≥2. The source’s r=2 computation is extended by the stated determinant factors.

**Checks.**

- At d=0,r=2 the three differential and trace p-orders add to 4+0=4, 2+1=3 and 0+3=3.
- At d=1,r=3 they add to 7,4,3; every term is still at least 3.
- At r=1 the mixed order is 1+1=2, so the claimed p³ normalization is excluded.

At r=1 the mixed product gives only p², so the same divisibility theorem is not asserted. The three kernel types remain separately tested.

*Needs:* §7.1; AbelianSchemesAndArithmeticModuli §§A4.3, A4.7, A4.9–A4.11 (gaps:siegel-rank-one-deformations,siegel-isogeny-trace-ideals,siegel-logarithmic-de-rham); §3.8; AutomorphicBundles §§B2.1, B3.2–B3.4, B3.10; ShimuraCompactifications §C5 (gap:siegel-parahoric-models); AbelianSchemesAndArithmeticModuli §§A4.10–A4.11 (gap:siegel-isogeny-trace-ideals).

### 7.3 Integral normalized minuscule operator

The raw finite-correspondence sheaf map T′_(p,2):(p₁)*p₂*Ω(d,r)(−D)→Ω(d,r)(−D) has image in p³Ω(d,r)(−D) over the formal rank-at-least-one locus for d≥0,r≥2. Define T=p^(−3)T′ by the unique factorization through multiplication by p³ on the torsion-free target. This defines an integral cohomological correspondence on RΓ(𝔛^(≥1),Ω(d,r)(−D)), compatible with finite coefficients and rationalization; the same construction applies to the canonical bundle without the boundary twist. For O/ϖ^m, reduce the integral correspondence after its construction, without dividing by p on the quotient. (P20, Lemma 14.9.1, spherical half, p. 103; proof §14.9.2, p. 104; P20 line 4690).

The formal base is smooth and normal, and p-torsion-free before reduction. Divisibility is checked at every relevant height-one point; all vertical generic points are ordinary by density in the special fiber.

A proof route is as follows. The ordinary trace node checks divisibility at the vertical height-one points; at horizontal points p is a unit. Use normality and local freeness of the target to extend the p³ factorization across the remaining locus. Use the finite trace and projection formula to form the cohomological correspondence, then reduce the integral map to finite coefficients.

The API records the following facts.

- p³T=T′ on the integral torsion-free target, uniquely.
- The integral correspondence reduces compatibly modulo ϖ^m and extends scalars to K.
- Canonical and subcanonical coefficient maps preserve their specified boundary ideals.
- A common toroidal refinement intertwines the correspondence, so the induced cohomology map is fan-independent.
- After p is inverted, the operator is CG20 T, which is Pilloni T_(p,2).

**Checks.**

- At d=0,r=2 the differential contributes p⁴ and trace contributes a unit, so division by p³ is integral.
- At r=2, p² from the differential times p from trace gives exactly the required p³ bound.
- For an étale kernel all p³ divisibility comes from the trace, not the differential.
- At p=3,d=0,r=2 the normalized divisibilities are 3⁴/3³=3, 3²·3/3³=1, and 3³/3³=1; all are integral before reduction.

The formula at weight (d+r,r) agrees with U+p^(r−2)Z+p^(d+2r−3)V. No analogous RΓ construction is claimed for the nonminuscule β₂ generator.

*Needs:* §7.2; §7.1; ShimuraCompactifications §C5 (gap:siegel-parahoric-models); ShimuraCompactifications §§C3.8–C3.9.

### 7.4 Hartogs across supersingular curves

Let E₀=Ω(d,r) or Ω(d,r)(−D), with d≥0 and r any integer. For n≥1, restriction H⁰(X,E₀/ϖ^n)→H⁰(X_n^(≥1),E₀/ϖ^n) is an isomorphism and H¹ is injective. The same holds for n=∞, interpreted as coherent formal cohomology over 𝔛, and for the corresponding K/O sheaves by filtered colimits. The closed complement Z_red has codimension two in every CM thickening X_n and is disjoint from D. No H²-injectivity assertion follows. (P20, §8.2, p. 53; Lemma 14.9.2, spherical half, p. 103; P20 line 2423; CG20, Proof of Lemma 8.8, internal p. 60 (860); CG20 line 2364).

At n=∞, coherent cohomology on the proper formal scheme and derived inverse-limit cohomology on its open are compared using the Milnor sequence. The finite-level locally free sheaf is over O/ϖ^n; CM excludes depth-one points on the complement.

A proof route is as follows. Apply the imported coherent Hartogs theorem to the CM thickening at every finite n. The same local-depth calculation gives local-cohomology H⁰_Z=H¹_Z=0, yielding H¹ injectivity in the localization sequence. At the formal limit use the compatible H⁰ isomorphisms to identify the lim¹ terms, and the left-exact inverse limit of the finite-level H¹ injections; use proper coherent formal functions on the source. On qcqs schemes coherent sheaf cohomology commutes with the needed filtered colimits, giving K/O coefficients.

**Checks.**

- For k[x,y], sections on the punctured plane are k[x,y], while deleting 0 from the line gives k[t,t⁻¹], strictly larger than k[t].
- For the punctured plane H²_(x,y)(k[x,y]) contains the nonzero class of 1/(xy); depth 2 kills local cohomology in degrees 0,1, not degree 2.
- For an inverse system with H⁰ restrictions equal, both Milnor lim¹H⁰ terms are identical; setting every H⁰ to 0 gives both terms 0 and the H¹ comparison becomes the inverse limit of the finite-level injections.

The codimension-two locus is the complement of rank at least one. The formal n=∞ step is not replaced by a claim that H¹ always commutes with ordinary inverse limits.

*Needs:* §2.2; §2.3; SchemeAndStackFoundations §0.6; SchemeAndStackFoundations §§2.19–2.20 (gap:lci-fundamental-class), §4.9 (gap:open-formal-milnor); SchemeAndStackFoundations §2.7; SchemeAndStackFoundations §4.9.

### 7.5 Integral paramodular composite correspondence

Write d=j−k≥0 and r=k≥2. On the imported spherical, Klingen and paramodular lci models, form the degree-p³ and degree-p isogeny correspondences. Their differential maps tensored with fundamental classes have integral factorizations by p^(r+2) and p respectively. Normalize these integral maps before passing to coefficients, then compose to obtain C_r on integral coherent cohomology. Rationally, in the CG20 normalization, C_r=p^(3−r)(T₂+(1+p+p²+p³)S). In the trivial central sector Q₂=C_r−(1+p²)p^(j−2)·1. This difference is integral for every j≥k≥2, and its finite-coefficient and K/O actions are obtained from the integral derived correspondence, without lifting torsion sections. Here C_r is Pilloni’s operator T in §7; it is distinct from CG20 T and from either source’s individual numbered generators. (P20, §4.1–4.3, pp. 16–19; §7 and Lemmas 7.1.1–7.1.2, pp. 37–40; P20 line 673).

The models, maps, normality and lci hypotheses are imported from ShimuraCompactifications §C5 with gap:siegel-parahoric-models; the fundamental class and trace require gap:lci-fundamental-class. The central scalar formula is restricted as in Layer 5. At general central character, keep the corresponding central transport and prove the same cancellation before reducing.

A proof route is as follows. Apply coherent duality to the two projections of the Klingen-to-paramodular diagram, obtaining maps into their relative dualizing lines. At the ordinary generic points the first map has differential/trace orders (r,2) or (d+2r,0); d+r≥2 gives order at least r+2. For the second map the orders are (0,1) or (r,0), giving order at least one. Extend both factorizations by normality from the smooth ordinary generic points, using local freeness of the dualizing line and the boundary fundamental-class comparison. The composite double coset has one noncentral component β₂, and the central component has multiplicity 1+p+p²+p³, the number of Klingen lines. With the total normalization p^(−r−3), this gives the stated rational C_r. Subtract (1+p²)p^(j−2), since p^(3−r)S=p^(j−3), to obtain exactly the Layer 5 cancelled Q₂ formula. Reduce the integral derived maps only after their construction.

The API records the following facts.

- The raw two maps factor by p^(r+2) and p; division is performed in their torsion-free integral Hom sheaves.
- C_r=p^(3−r)(T₂+(1+p+p²+p³)S) over K.
- Q₂=C_r−(1+p²)p^(j−2) in the specified trivial central sector.
- Derived tensor with O/ϖ^m and filtered coefficient colimits give compatible actions on finite coefficients and K/O.
- The fundamental class carries the subcanonical boundary ideals, so the construction also acts on cusp cohomology.

**Checks.**

- At (2,2), C₂−Q₂=1+p² is integral although p^(3−2)S=p^(−1) is not.
- At (3,3), C₃−Q₂=p+p³, so C₃ and Q₂ have the same mod-p action.
- A nonzero H¹(ω)[ϖ^m] can obstruct lifting a torsion form; the derived integral map still acts on that form, whereas a rational-lattice map alone would not.
- At p=3, C₂−Q₂=10 and C₃−Q₂=30, reducing to 1 and 0. The first raw orders at d=0,r=2 are 4 in both ordinary cases, and the second is at least 1.

The difference C_r−Q₂ is (1+p²)p^(j−2), including a unit term when j=2. Integral derived coefficient reduction constructs an action on every torsion section, even a section obstructed from lifting to O.

*Needs:* ShimuraCompactifications §C5 (gap:siegel-parahoric-models); AutomorphicBundles §§B2.1, B3.2–B3.4, B3.10; ShimuraCompactifications §C5 (gap:siegel-parahoric-models); ShimuraCompactifications §§C3.8–C3.9; SchemeAndStackFoundations §§2.19–2.20 (gap:lci-fundamental-class), §4.9 (gap:open-formal-milnor); §5.6; §5.7; AbelianSchemesAndArithmeticModuli §§A4.3, A4.7, A4.9–A4.11 (gaps:siegel-rank-one-deformations,siegel-isogeny-trace-ideals,siegel-logarithmic-de-rham); SchemeAndStackFoundations §2.20.

### 7.6 Integral T and Q₂ on global forms

For j≥k≥2, T and Q₂ act O-linearly on M_(j,k)(O/ϖ^m), S_(j,k)(O/ϖ^m), and their K/O versions. T is the restriction of the integral minuscule correspondence, extended by Hartogs. Q₂ is the integral paramodular composite C_k minus (1+p²)p^(j−2). Its rational comparison and all-component expansion identify it with Layer 5. The actions commute with coefficient transitions, tame deck transformations, prime-to-p Hecke operators and common fan refinements. Rationally they have the prescribed spherical normalization. No action of bare T₂ on these torsion spaces is inferred. (CG20, Lemma 8.8, internal p. 60 (860); Lemma 8.12, p. 64 (864); CG20 line 2364; P20, §7, pp. 37–40; P20 line 1638).

Use the trivial central/diamond sector for the scalar Layer 5 expression, or retain and verify the full central transport operator before generalizing. The integral correspondence, including gap:lci-fundamental-class, is constructed before coefficient reduction.

A proof route is as follows. Construct T on the formal open using its normalized integral sheaf correspondence, then transport H⁰ through Hartogs. Construct Q₂ by the paramodular composite and integral central subtraction. Take derived tensor with O/ϖ^m; the derived projection formula identifies the cohomology of the coefficient sheaf because the models and bundles are O-flat. Check the rational coefficient formula on every component. The integral correspondence gives the finite-level map itself, rather than a claim that every torsion form lifts. Take the filtered colimit along O/ϖ^m→K/O and use uniqueness plus disjoint-support correspondence composition to prove commutation.

The API records the following facts.

- Their expansions are exactly the Layer 5 formulas with every component transport included.
- The all-component expansion principle determines each operator uniquely.
- The actions commute with reduction and the maps to K/O.
- They commute with prime-to-p Hecke actions, tame U actions and deck transformations.
- Over K they are the normalized spherical double cosets T and (pT₂+(p+p³)S)p^(2−k).

**Checks.**

- Applying the integral operator then reducing mod ϖ gives the same coefficients as the characteristic-p formula.
- Testing only an untransported cusp on one component does not determine a global Hecke action.
- In weight (2,2), the Q₂ coefficient has X₂+Z₂ modulo p, so replacing Q₂ by Z₂ fails.
- At p=3,(j,k)=(2,2), the formal constant coefficient has X₂=3 and Z₂=4, hence Q₂≡1, while a primitive anisotropic index tests X₂≡−1. Coefficient reduction sends the integral operator values to the same residues.

A torsion form need not lift to characteristic zero; the proof works by reduction of an integral derived correspondence. The exact central subtraction agrees at weights (2,2) and (3,3).

*Needs:* §7.3; §7.5; §7.4; §1.4; §5.7; AutomorphicBundles §§B5.10–B5.11, B5.19.

### 7.7 Hasse equivariance at p

In characteristic p, multiplication by h commutes with T and Q₂ for weights j≥k≥3. The source and target symmetric degrees agree, and h has expansion 1. T reduces to U in both weights; Q₂ reduces to Z₂ in both, including weight (3,3). For k=2, T initially reduces to U+Z and Q₂ has the additional X₂ term at (2,2), so no such unrestricted commutation claim is made. (CG20, Lemma 6.2(2), internal p. 36 (836); Lemma 8.12, p. 64 (864); CG20 line 1438).

Operators are those of the global H⁰ action, with matching cusp/component transports.

A proof route is as follows. Use the exact Layer 5 formulas to reduce modulo p before comparing the two weights. At (3,3), retain the cancellation in Q₂; bare T₂ has an extra −1 and does not justify the conclusion. Apply the all-component expansion principle.

**Checks.**

- For p=5 and weight (3,3), T reduces to U and Q₂ to Z₂; after the Hasse shift to (7,7) the same two values occur.
- At weight (2,2), T reduces to U+Z while the shifted T reduces to U; on the constant formal scalar series Z has value p+1≡1, detecting the difference.
- At (3,3), bare T₂ reduces to Z₂−1 while Q₂ reduces to Z₂; the constant correction cannot be omitted.

The proof explicitly includes (3,3). No p-adic lifting of theta is used in this comparison.

*Needs:* §2.4; §7.6; §5.6; §5.7.

### Examples

At d=0,r=2 the minuscule raw p-orders are 4,3,3; dividing by p³ is integral in each case. For p=3, C₂−Q₂=10 but C₃−Q₂=30; their reductions are 1 and 0. The distinct values test the central subtraction (P20 Lemmas 7.1.1–7.1.2, pp. 38–40, and §14.9.2, p. 104; P20 lines 1721,4780).

### Dependencies

Layers 1, 2, 3, 5 ; ShimuraCompactifications §C5 (gap:siegel-parahoric-models); FiniteFlatGroupsAndIntegralPadicHodgeTheory §R07.2.2; FiniteFlatGroupsAndIntegralPadicHodgeTheory §§R07.2.22–R07.2.23; AbelianSchemesAndArithmeticModuli §§A4.3, A4.7, A4.9–A4.11 (gaps:siegel-rank-one-deformations,siegel-isogeny-trace-ideals,siegel-logarithmic-de-rham); AutomorphicBundles §§B2.1, B3.2–B3.4, B3.10; ShimuraCompactifications §C5 (gap:siegel-parahoric-models); AbelianSchemesAndArithmeticModuli §§A4.10–A4.11 (gap:siegel-isogeny-trace-ideals); ShimuraCompactifications §§C3.8–C3.9; SchemeAndStackFoundations §0.6; SchemeAndStackFoundations §§2.19–2.20 (gap:lci-fundamental-class), §4.9 (gap:open-formal-milnor); SchemeAndStackFoundations §2.7; SchemeAndStackFoundations §4.9; SchemeAndStackFoundations §2.20; AutomorphicBundles §§B5.10–B5.11, B5.19.

## Layer 8: Theta operators and low-weight injectivity

### 8.1 Integral symmetric-power contraction

Let d≥2 and let R be an algebra in which 2d(d+1) is invertible, in particular a characteristic-p algebra with p>d+2. For a free rank-two module E define con_d:Sym^d E⊗Sym²E→Sym^(d−2)E⊗(det E)² by the normalized second transvectant. In a frame x,y, con_d(f⊗g)=(f_xx g_yy−2f_xy g_xy+f_yy g_xx)/(2d(d+1)), with the indicated determinant-square tensor. This frame formula glues by GL₂-equivariance; changing to another source convention rescales by its explicitly identified unit. Under the chosen highest-weight inclusion, the vector x^d⊗y²−2x^(d−1)y⊗xy+x^(d−2)y²⊗x² maps to x^(d−2)⊗(x∧y)². (Y16, Decomposition (3.31), p. 22; Proposition 3.12 and the Fourier computation, pp. 23–24; Y16 line 1190; CG20, Proposition 8.9(2), internal p. 61 (861); CG20 line 2400).

The polynomial expression describes the existing symmetric-power basis; it does not replace the imported symmetric-power carrier. The determinant square is part of the GL₂ statement, even though it disappears on SL₂.

A proof route is as follows. Define the bilinear map in the monomial basis supplied by Tau Ceti. Check the second-transvectant transformation under generators of GL₂ and its determinant-square factor. Compute the highest-weight inclusion to fix the scalar 2d(d+1); its invertibility gives the projection normalization.

The API records the following facts.

- The coefficient formula is the normalized second transvectant in every frame.
- con_d intertwines GL₂ with the target determinant-square action.
- The map commutes with scalar extension preserving invertibility of 2d(d+1).
- On the displayed highest-weight inclusion its value is x^(d−2)⊗(x∧y)².
- The map lowers symmetric degree by two and raises determinant exponent by two.

**Checks.**

- For d=2, con₂(x²⊗y²)=(1/3)(x∧y)².
- For d=2 and Q=x², con₂(y²⊗Q)=(1/3)(x∧y)² although det Q=0.
- The three-term highest-weight tensor in the statement has unnormalized transvectant 2d(d+1)x^(d−2).
- At d=2, the three highest-weight transvectant terms have values 4,4,4; their sum 12 divided by 2·2·3 is 1. Each rank-one mixed tensor x²⊗y² or y²⊗x² gives 4/12=1/3.

The map is nonzero on some tensors with a rank-one quadratic factor.

*Needs:* Tau Ceti `Representation.symmetricPower`; Tau Ceti `Module.Basis.symmetricPower`; §5.1; ShimuraCompactifications §C5.12.

### 8.2 Scalar and vector theta operators

Over k₀ of characteristic p>3 there is a scalar map Θ:M_(k,k)(k₀)→M_(k+p+1,k+p+1)(k₀), k≥2, whose Fourier coefficient is det(Q)a(F,Q). For d=j−k≥2 with p>d+2 and k≥2 there is a map θ₁:M_(j,k)(k₀)→M_(j+p−1,k+p+1)(k₀), whose coefficient is con_d(a(F,Q)⊗Q). Normalize the source differential operators by the unit making these exact formulas hold. The vector formula has no extra det(Q). Both preserve cusp forms. They are defined by the Gauss–Manin/Kodaira–Spencer construction with Hasse multiplication removing poles, and descend from principal neat tame level by étale descent. These are characteristic-p operators, with scalar extension to characteristic-p coefficient algebras; no construction modulo p² is asserted. (Y16, Propositions 3.9, 3.11, 3.12, pp. 21–24; Y16 line 1150; CG20, Proposition 8.9, internal p. 61 (861); CG20 line 2400).

For the vector formula Q corresponds to m x²+rxy+n y² in Sym²E in the chosen cusp frame. The principal level N≥3 is prime to p; descent uses equivariance, not division by a cover degree.

A proof route is as follows. Import the Hodge bundle, Gauss–Manin connection and Kodaira–Spencer map with their polarization compatibility. Use the unit-root splitting on the ordinary open, project via con_d (or the scalar second differential), and multiply by h to remove the poles. Verify regularity in the superspecial first-order charts following Yamauchi, then compute at the Mumford cusp; extend over the boundary using Koecher. Use étale descent and q-expansion uniqueness to compare the chosen unit normalization.

The API records the following facts.

- a(ΘF,Q)=det(Q)a(F,Q).
- a(θ₁F,Q)=con_d(a(F,Q)⊗Q).
- Both operators carry cusp forms to cusp forms.
- They commute with tame-level étale pullback and descent, retaining the marked cusp transports.
- For scalar forms, Θ(hF)=hΘF by their coefficient formulas and equal target weights.
- The construction commutes with extension of characteristic-p coefficient fields, and with flat scalar extension where the section/cohomology base-change comparison is available.

**Checks.**

- The nonzero form h of weight p−1 has Θh=0.
- A coefficient y² at Q=x² can give nonzero θ₁ even though its scalar Θ coefficient is zero.
- At p=7 and Q=x²+y², the scalar theta coefficient equals a(F,Q), since det Q=1; using Δ(Q)=−4 would instead multiply it by 3.
- At p=7,d=2 and Q=x², the vector coefficient y² gives 1/3=5 in the determinant-square line, while scalar det Q=0. At Q=x²+y² scalar det Q=1 but Δ=3 modulo 7.

Θ(h)=0 follows from the constant expansion of h. The vector target symmetric degree is d−2, agreeing with con_d.

*Needs:* §8.1; §2.4; §1.4; ShimuraCompactifications §C5.23; AbelianSchemesAndArithmeticModuli §§A4.3, A4.7, A4.9–A4.11 (gaps:siegel-rank-one-deformations,siegel-isogeny-trace-ideals,siegel-logarithmic-de-rham); AbelianSchemesAndArithmeticModuli §A4.3 (gap:siegel-logarithmic-de-rham); ShimuraCompactifications §C5.12.

### 8.3 Small symmetric powers of SL₂(F_p)

For 0≤d≤p−1 and a field k in Type of characteristic p, the natural representation Sym^d(k²) of SL₂(F_p) is irreducible. In the range d<p−1 needed here, every nonzero homogeneous polynomial P has a nonzero value at a primitive vector of F_p²; hence an SL₂(F_p) change of local frame can make its chosen extreme coefficient nonzero. The change is in a geometric fiber and is not a global action on the modular-form space. The pinned acceptance theorem is `smallSymmetricPower_irreducible`, on the standard coefficient-field representation `standardSL2`; its field and characteristic hypotheses occur in both declaration signatures. (CG20, Proof of Theorem 8.11, internal p. 63 (863); CG20 line 2469; Y16, Theorem 4.9 and proof, p. 39; Y16 line 2112).

p is prime; only d<p−1 is needed for the exceptional vector-theta frame step.

Define the standard representation `standardSL2` by extending the entries of g∈SL₂(𝔽_p) through the canonical map 𝔽_p→k and letting that matrix multiply column vectors in k². It preserves identity and matrix multiplication and is compatible with extensions of coefficient fields. For p=3 the upper unipotent [[1,1],[0,1]] sends the basis vectors x,y to x,x+y, while the lower unipotent sends them to x+y,y; their product sends y to x+y and x to 2x+y. These values fix the column-action convention.

The API for the standard representation records these facts.

- The identity element acts as the identity linear map on k².
- The action of a product g₁g₂ is the composite action, with g₂ acting first.
- Extending the coefficient field intertwines the action through entrywise extension of the same finite-field matrices.

A proof route is as follows. The upper and lower unipotent subgroup operators are polynomials in t∈F_p of degree at most d<p. Interpolation isolates their divided-power coefficients. On a nonzero invariant subspace, an appropriate highest nonzero coefficient and the raising operator produce x^d; lowering operators then produce every monomial, since binomial(d,i) is nonzero modulo p for d<p. For the frame assertion restrict P to P¹(F_p): a nonzero degree-d binary form has at most d distinct projective zeros, fewer than p+1. Complete a vector where P is nonzero to an SL₂(F_p) matrix.

**Checks.**

- At d=0 the representation is the nonzero one-dimensional trivial representation, with invariant subspaces 0 and k. At p=2,d=1 the two unipotents send basis vectors to x+y and exchange the one-dimensional candidates.
- At p=3,d=2 the binomial coefficients 1,2,1 are all nonzero; upper and lower unipotent coefficients reach all three monomials. At d=3 the span of x³,y³ is a proper two-dimensional invariant subspace of the four-dimensional cubic space.
- The degree-p+1 form x^p y−xy^p is nonzero but takes value 0 on every vector in 𝔽_p²; it is excluded from the small-degree value-detection assertion.

The interpolation uses degrees <p, including d=p−1. For d=p+1, x^p y−xy^p vanishes on all F_p-vectors, so the frame assertion would fail.

*Needs:* Tau Ceti `Representation.symmetricPower`; Tau Ceti `Module.Basis.symmetricPower`.

### 8.4 Theta nonvanishing at superspecial points

If a scalar form of weight k≥2 is nonzero on SS and p does not divide k(2k−1), then ΘF≠0. For vector weight (j,k) with d=j−k≥2, p>d+2, a nonzero superspecial value gives θ₁F≠0 when j−3k is nonzero modulo p. In weight (6,2), the same conclusion holds for p>7 by choosing a local SL₂(F_p) frame in which the coefficient F₂ is nonzero; the local linear term has nonzero coefficient j−3=3. This is a change of fiber frame at the fixed point, not a Γ̄-action on global modular forms. (Y16, Theorem 4.7 and proof, p. 38; Theorem 4.9 and proof, p. 39; Y16 line 2044; CG20, Proof of Theorem 8.11, internal p. 62 (862); CG20 line 2433).

The superspecial point and its coefficients may be taken over an algebraic closure. For the exceptional frame argument, 0≤d<p makes Sym^d of the natural SL₂(F_p) representation irreducible; prove the needed coordinate-detection statement by unipotent interpolation.

A proof route is as follows. Use the generic first-order superspecial deformation to evaluate the scalar constant term as a nonzero unit times k(2k−1)F|_x. For vectors compute the three linear coefficients involving (j−3k)F₀/2, (j−3k)F₁/2 and (j−3)F₂. When j=6,k=2, use the nonzero symmetric-power orbit to arrange F₂≠0 in the local frame, then use the last coefficient. For frame detection, vary upper and lower unipotents and use a polynomial of degree <p that vanishes on all of F_p only when all its coefficients vanish.

**Checks.**

- At p=7,k=2 and superspecial value 1, the factor k(2k−1) is 6≠0. In Yamauchi’s local normalization multiplication by 1/9 gives 3 modulo 7, still nonzero.
- At p=11,(j,k)=(6,2), j−3k=0 but j−3=3; a frame with F₂=1 has a nonzero t₂₂ coefficient −3.
- At k=p the scalar factor k(2k−1) is 0 modulo p, so the numerical hypothesis deliberately fails.

The exceptional case requires only a local frame change. The irreducibility check is in the stated small-degree characteristic-p range.

*Needs:* §8.2; Tau Ceti `Representation.symmetricPower`; AbelianSchemesAndArithmeticModuli §§A4.3, A4.7, A4.9–A4.11 (gaps:siegel-rank-one-deformations,siegel-isogeny-trace-ideals,siegel-logarithmic-de-rham); §8.3; ShimuraCompactifications §C5.12.

### 8.5 Negative-weight section vanishing

At spherical good level over an algebraic closure, if a≥b and pa−b<0, then H⁰(Z_red,ω(a,b))=H⁰(S,ω(a,b))=H⁰(X₁,ω(a,b))=0; the same holds for their cusp subsheaves. On each P¹ component of Z_red, every summand of ω(a,b) has degree at most pa−b. A section zero on Z_red is divisible on S by its Cartier equation b₀ of weight m₀=(p²−1)/2; iterating decreases pa−b by (p−1)m₀ and Krull intersection forces zero. On X₁ repeat with the primary equation h, decreasing pa−b by (p−1)². The relevant divisors meet every component, and reducedness/density then propagates vanishing. (CG20, Proofs of Theorems 8.10–8.11, internal pp. 62–63 (862–863); CG20 line 2433).

p>3; use the spherical Cartier-root target, with its descent over an algebraic closure. The letter b₀ here denotes the secondary root, not the second weight b.

A proof route is as follows. Compute the split Hodge-bundle degrees on every supersingular P¹. Use the Cartier exact sequence on S and inductively divide by b₀, then apply Krull intersection at its generic divisor points. Use the same argument with h on each component of X₁. Verify the divisors meet every component via the positive Hodge power on the minimal model; no empty divisor is allowed in the argument.

**Checks.**

- At p=5,(a,b)=(−1,−1), pa−b=−4; the restricted line is O(−4) and has no sections. At (0,0) the maximum degree is 0 and the constant 1 is a negative control.
- At p=5,(a,b)=(1,2) is excluded by a≥b; no natural subtraction is used to turn its symmetric degree −1 into 0.
- At p=7, the root weight is 24 and each division lowers pa−b by 144; division by the primary Hasse form lowers it by 36.

A negative second weight alone is not used as a vanishing criterion. After either division step the strict inequality remains strict.

*Needs:* §2.2; §3.7; §2.3; Mathlib `Ideal.iInf_pow_smul_eq_bot_of_isLocalRing`; SchemeAndStackFoundations §0.6 (gap:reduced-section-propagation); ShimuraCompactifications §C5.12.

### 8.6 Scalar theta injectivity in low weight

Let p>3, 2≤k≤p+1, k≠p−1 and p∤k(2k−1). Then Θ:M_(k,k)(k₀)→M_(k+p+1,k+p+1)(k₀) is injective, and so is its restriction to cusp forms. The exclusion k=p−1 is essential because h is nonzero with Θh=0. The result is over characteristic p, not an asserted injection modulo arbitrary powers of ϖ. (CG20, Theorem 8.10 and proof, internal pp. 61–62 (861–862); CG20 line 2400; Y16, Theorem 4.7(2), p. 38; Y16 line 2044).

All components and auxiliary tame levels are retained; prove after a faithfully flat algebraic closure and descend.

A proof route is as follows. If ΘF=0, superspecial nonvanishing gives F|_SS=0. On each supersingular P¹ its degree k(p−1)<p²+1 forces F|_Zred=0. The Cartier sequence and negative-weight criterion then give F|_S=0, hence F=hG. For k≤p−2 the residual weight k−p+1 is negative, so G=0. The case k=p is excluded by p∤k. At k=p+1, G has weight 2 and ΘF=hΘG, so the already proved weight-two case gives G=0. The excluded weight p−1 would instead leave a constant G.

**Checks.**

- At p=5 the permitted scalar weights are 2 and 6: k=3 fails 5∤k(2k−1), k=4 is the excluded Hasse weight, and k=5 fails 5∤k.
- At p=5,k=6 the restricted degree is 24, smaller than the 26 superspecial points; division by h leaves weight 2.
- At p=5,k=4 the nonzero h has Θh=0, so reinstating that weight would make the theorem false.

At p=5, k=4 is excluded despite 5∤4·7. The k=p+1 step reduces to weight two instead of discarding the residual Hasse factor.

*Needs:* §8.2; §8.4; §8.5; §3.7; §2.2; ShimuraCompactifications §C5.12.

### 8.7 Vector theta injectivity in weight (j,2)

Let p>3 and 4≤j<p−1. Then θ₁:M_(j,2)(k₀)→M_(j+p−1,p+3)(k₀) is injective, also on cusp forms. This includes j=6 whenever the range permits it. The proof uses the closed nonordinary divisor S, not just its rank-one open, and does not infer that θ₁ annihilates every coefficient of singular Q. (CG20, Theorem 8.11 and proof, internal pp. 62–63 (862–863); CG20 line 2433; Y16, Theorem 4.9 and proof, p. 39; Y16 line 2112).

The weight range gives d=j−2<p−2, so the contraction normalization is integral at p.

A proof route is as follows. If θ₁F=0, use the superspecial nonvanishing theorem and its exceptional j=6 frame argument to show F|_SS=0. On each supersingular P¹, the largest degree of ω(j,2) is pj−2<p²+1, hence F|_Zred=0. On S divide by b₀ of weight m₀. The new weights (j−m₀,2−m₀) satisfy pa−b<0, so F|_S=0 by the negative-weight theorem. Then F=hG with weights (j−p+1,3−p), again satisfying pa−b<0; therefore G=0.

**Checks.**

- At p=7 only j=4,5 occur; their largest degrees on a supersingular component are 26,33, both below 50.
- At p=11,j=6 the exceptional frame coefficient is 3≠0; after division by h the weights are (−4,−8) and pa−b=−36.
- At p=5 the interval 4≤j<4 is empty. At p=7,j=6 lies outside j<6, so that endpoint is not inferred.

At j=6 the frame argument uses p≥11 under j<p−1. No Lan–Suh vanishing or Serre-dual weight computation is needed after the explicit negative-weight argument.

*Needs:* §8.2; §8.4; §8.5; §2.2; §3.7; §8.3; ShimuraCompactifications §C5.12.

### Examples

At p=7,d=2, con₂(y²⊗x²)=1/3=5 while det(x²)=0. At p=5 the Hasse weight is 4 and Θh=0; the injective scalar weights in the stated interval are 2 and 6. At p=11,(j,k)=(6,2), the exceptional frame coefficient j−3 is 3 (Y16 Propositions 3.11–3.12, Theorems 4.7,4.9; Y16 lines 1192,1243,2055,2129).

### Dependencies

Layers 1, 2, 3, 5 ; Tau Ceti `Representation.symmetricPower`; Tau Ceti `Module.Basis.symmetricPower`; ShimuraCompactifications §C5.23; AbelianSchemesAndArithmeticModuli §§A4.3, A4.7, A4.9–A4.11 (gaps:siegel-rank-one-deformations,siegel-isogeny-trace-ideals,siegel-logarithmic-de-rham); AbelianSchemesAndArithmeticModuli §A4.3 (gap:siegel-logarithmic-de-rham); Mathlib `Ideal.iInf_pow_smul_eq_bot_of_isLocalRing`; SchemeAndStackFoundations §0.6 (gap:reduced-section-propagation).

## Layer 9: Ordinary p-adic forms and coefficient comparison

### 9.1 Degree-zero p-adic Siegel forms

Use the imported full ordinary genus-two Igusa tower Ig_(m,n) over X_m^ord. Put V_m=colim_n H⁰(Ig_(m,n),O) and V=lim_m V_m, with its p-adic topology and left function action (g·f)(ψ)=f(ψ∘g). Let U⁺ be the upper triangular unipotent subgroup of GL₂(Z_p). For a continuous character κ:Z_p×→O× and integer r, put χ_(κ,r)(diag(t₁,t₂))=κ(t₁)(t₁t₂)^r, and define V_(κ,r)={f∈V^(U⁺):t·f=χ_(κ,r)(t)f for every diagonal t}. Cusp forms use the inverse-image boundary ideal before taking colimits and inverse limits. Thus the algebraic specialization κ(t)=t^d has classical weight (d+r,r). This is Pilloni’s upper-unipotent convention: his weights are indexed from the bottom diagonal entry, κ′=(−k,−j), and −κ′ in those coordinates is exactly t₁^j t₂^k. The inverse-transpose frame map accounts for this character. An opposite-Borel convention must also reverse the two diagonal exponents. (P12, Definition 4.3, p. 352; frame comparison §4.2.1, pp. 353–354; P12 line 717; T06, §3.2, pp. 808–810; T06 line 1212).

Limits are in the order inverse coefficient level, direct Igusa level; the character action is continuous. For scalar extensions to O, use the corresponding ϖ-adic completed tower functions with the same order of limits.

A proof route is as follows. Form the specified direct and inverse limits, using the imported tower action. Take the invariant submodule and character equations as a closed weight submodule of the complete function module. Use ω(ψg)=ω(ψ)g^(−t). Evaluating the highest-coordinate algebraic coefficient gives upper-unipotent invariance and character t₁^(d+r)t₂^r; check against Pilloni’s bottom-to-top weight indexing.

The API records the following facts.

- f(ψ∘u)=f(ψ) for u∈U⁺ and f(ψ∘t)=χ_(κ,r)(t)f(ψ).
- V and its closed weight submodules are separated and complete for the coefficient-adic topology.
- Multiplication sends weights (κ,r),(κ′,r′) to (κκ′,r+r′); cusp forms form an ideal.
- Tower pullbacks and coefficient reductions are equivariant and define the indicated limits.
- With source coordinates κ=(j,k) indexed from the bottom, κ′=(−k,−j) and the source character −κ′ equals χ=t₁^j t₂^k for the fixed upper unipotent.

**Checks.**

- The constant function 1 has weight (κ=1,r=0).
- For κ(t)=t^d the diagonal character is t₁^(d+r)t₂^r, giving weight (d+r,r).
- At n=1 the full tower has group GL₂(F_p), rather than F_p× or (F_p×)²; using only diagonal frames changes the space.
- At p=3 the first full-frame group has order (9−1)(9−3)=48; its diagonal subgroup has order 4. For d=2,r=1, the value at diag(2,1) is 2³=8, while the reversed character gives 2.

A Hilbert (O_F/p^n)× torsor is not substituted for the full GL₂ torsor. The Borel, frame map and bottom-to-top source character indexing are fixed together.

*Needs:* HodgeTateAndCanonicalSubgroups §§5.1–5.2 (gap:siegel-igusa-full-frames); §1.1; HodgeTateAndCanonicalSubgroups §0.14.

### 9.2 p-adic q-expansion and saturation

The canonical multiplicative trivialization of the split Mumford torus lifts each marked cusp to the full Igusa tower. For f∈V evaluate every g-translate at this lift, obtaining coefficients a_c(f,Q)(g) continuous in g∈GL₂(Z_p), locally constant at each finite coefficient level. For U⁺-invariant f these functions factor through GL₂(Z_p)/U⁺ with the stated left/right action convention. The family over every component and all frame translates is injective and saturated: f∈V[1/p] is integral iff all these coefficients are integral. The analogous finite-level statement has injective coefficient map with flat cokernel after the tower’s component-detection hypothesis, supplied by HodgeTateAndCanonicalSubgroups §§5.1–5.2, is verified. (T06, Proposition 3.3 and preceding construction, pp. 808–809; T06 line 1212; P12, §4.2.1, pp. 353–354; P12 line 760).

Do not infer connectedness of an arbitrary full-level Igusa cover without the monodromy input. For a single connected principal-level tower with its proved irreducibility, one marked canonical lift can detect sections; the all-frame formulation accommodates the general tame setting.

A proof route is as follows. Evaluate on the canonical multiplicative torus frame and its g-translates and check compatibility in both indices. Use finite-level component detection/irreducibility and the toroidal chart expansion to obtain injectivity. Use injectivity after every finite coefficient reduction to prove saturation, then pass in the stated limit order.

The API records the following facts.

- Each coefficient is a continuous function on GL₂(Z_p), with the U⁺ quotient in the invariant subspace.
- All component/frame coefficients determine f uniquely.
- Their integrality is equivalent to f belonging to the integral function lattice.
- Translation of the frame is the corresponding translation of the coefficient function.
- Cusp functions have support only at positive-definite indices, with every boundary component tested.

**Checks.**

- The constant function 1 has constant coefficient function 1 at Q=0.
- The expansion of g·f at the canonical frame is the expansion of f at the frame translated by g.
- A coefficient 1/p at one marked frame prevents f from lying in the integral lattice even when coefficients at other frames vanish.
- For f=1, the coefficient function at Q=0 is identically 1 on the 48 frames modulo 3 and all positive coefficients are 0. For f=1/3 the constant coefficient is 1/3 on every frame and is not integral.

For nonparallel weights evaluating only the identity frame need not record the entire coefficient representation.

*Needs:* §9.1; §1.3; HodgeTateAndCanonicalSubgroups §§5.1–5.2 (gap:siegel-igusa-full-frames).

### 9.3 Classical-to-p-adic comparison

Restriction to the ordinary formal locus followed by evaluation on its Igusa-induced differential frames defines an injective map M_(d+r,r)(O)→V_(t↦t^d,r), and similarly for cusp forms. It is compatible with classical and continuous-function-valued Fourier expansions under the algebraic symmetric-power coefficient inclusion. At finite coefficient level the analogous evaluation map is defined, but its injectivity is a separate property and is not inferred from the integral limit: integer-valued polynomial functions can vanish on all finite-level frames in characteristic p. The inverse limit map is injective by the expansion principle and the density of p-adic frames in the algebraic representation. (P12, §4.2.1, pp. 353–354; P12 line 760; T06, Comparison diagram, pp. 809–810; T06 line 1249).

d≥0; the Hodge–Tate differential frame is taken at n sufficiently large for the coefficient level m. Use ω(ψ∘g)=ω(ψ)∘g^(−t), fixing the Borel/sign convention of the definition.

A proof route is as follows. Use the Igusa trivialization to produce the differential frame and evaluate a classical bundle section on the frame torsor. Check the inverse-transpose character law and use the classical expansion map to prove injectivity over O. Compare expansions as functions on the full p-adic group, not by evaluating one coordinate of a nonparallel coefficient.

The API records the following facts.

- The map sends the algebraic weight (d+r,r) to χ=t₁^(d+r)t₂^r.
- The integral inverse-limit map has zero kernel.
- Its expansion equals the classical coefficient under the algebraic-function embedding into continuous frame functions.
- Tame level pullbacks and prime-to-p Hecke actions commute with evaluation.
- Finite-level maps commute with reduction, but their kernels are not assumed zero without a degree or representation-theoretic hypothesis.

**Checks.**

- For d=0, the diagonal character is det^r and its coefficient is scalar.
- An Igusa frame change ψ→ψg sends the differential frame to ω(ψ)g^(−t).
- The nonzero characteristic-p homogeneous polynomial x^p y−xy^p vanishes on every F_p-frame column; finite-level evaluation cannot be declared injective in arbitrary algebraic degree.
- At p=3 the polynomial x³y−xy³ is nonzero of degree 4 and vanishes at all 9 vectors of 𝔽₃². Over ℤ₃ its value at (1,3) is −24≠0, so the integral full-frame comparison does detect it.

No finite-level injectivity theorem is obtained merely by reducing the integral injection.

*Needs:* §9.1; §9.2; §1.4; HodgeTateAndCanonicalSubgroups §§5.1–5.2 (gap:siegel-igusa-full-frames).

### 9.4 Klingen ordinary coefficient operator

On the ordinary genus-two Igusa function space, normalize the Klingen degree-zero operator U_(p,2)^ord so that its formal coefficient action is Z₂=UZ: a(U_(p,2)^ord f,Q)=Σ_Mρ_d(M)a(f,M⁻¹·pQ) at an algebraic weight of symmetric degree d, and the corresponding finite-coset action on continuous frame functions at continuous weight. It preserves integral expansions and hence the integral function lattice by saturation. This operator is distinct from the diagonal formal U₂=−1+pX₂. Its comparison interface records the rational normalization p^(3−r)U_(Kli(p),1), including the central and cusp transports, for analytic consumers to compare with their own operator. (T06, §3.2, p. 810; T06 line 1292; CG20, §5.5, internal p. 33 (833); Lemmas 8.3–8.4, pp. 58–59 (858–859); CG20 line 1315; P20, §13.3.1, p. 89; P20 line 4070).

Construct the ordinary correspondence on the full Igusa frames and prove its stated finite-sum formula before inferring integrality from saturation. At a continuous weight use the induced correspondence on full-frame functions; the character κ has domain ℤ_pˣ and is never evaluated at p.

A proof route is as follows. Lift the ordinary Klingen correspondence to the full Igusa tower and express its finite cosets in the frame functions. Match the algebraic specialization with the Z₂ coefficient identity from Layer 5; the p-powers are determined by the rational Hecke normalization. Use the saturated full-frame expansion principle to prove lattice preservation, retaining the source and target weight characters of each correspondence map.

**Checks.**

- On scalar constant full-frame functions at p=3, the finite sum defining Z₂ has value p+1=4; the diagonal U₂ at Q=0 has value p²−1=8.
- At algebraic degree 1 and M=diag(3,1), the transported coefficients x,y have values 3x,y, agreeing with the integral symmetric-power action.
- For κ:ℤ₃ˣ→Oˣ, κ(1)=1 is defined while κ(3) has no domain value; the full-frame correspondence must supply the action instead.

A continuous character of Z_p× is never evaluated at p. The diagonal U₂ is not silently substituted for Z₂.

*Needs:* §9.2; §9.3; §5.3; §5.5; HodgeTateAndCanonicalSubgroups §§5.1–5.2 (gap:siegel-igusa-full-frames).

### Examples

At p=3,n=1, GL₂(𝔽₃) has 48 elements; its diagonal subgroup has 4. The weight (3,1) character at diag(2,1) is 8 and the differential frame scales its first vector by 1/2. The polynomial x³y−xy³ vanishes at every 𝔽₃-vector but has ℤ₃-value −24 at (1,3) (P12 §4.2.1, pp. 353–354; P12 line 788).

### Dependencies

Layers 1, 5 ; HodgeTateAndCanonicalSubgroups §§5.1–5.2 (gap:siegel-igusa-full-frames); HodgeTateAndCanonicalSubgroups §0.14.

## Downstream consumers

Subsequent higher Hida and Coleman comparison theorems consume the integral ordinary coefficient target, full-frame expansion and algebraic specialization of Layer 9; any analytic-to-Igusa map must identify the rational normalization p^(3−r)U_(Kli(p),1). Torsion and ordinary automorphic applications consume Layer 7 with all finite and K/O coefficient maps, and Layer 8 with its exact prime and weight bounds. A consumer using a symmetric binary-neighbor relation at arbitrary tame level must supply the explicit diamond/cusp identification of the two orientations; §6.3 supplies the general oriented relation. The independent generic GL₃ Serre-weight and Breuil-lattice continuation imports no genus-two result merely from sharing the parent roadmap.

## Worked examples

At (j,k)=(2,2), the separate rational terms contain negative p-powers. Combining U₂+1 first gives Q₂=X₂+Z₂+pV₂+p. The integral paramodular composite has C₂−Q₂=1+p². Thus its construction acts on torsion forms and the coefficient reduction is Q₂=X₂+Z₂ modulo p.

At (3,3), T₂=−1+pX₂+Z₂+p³V₂ and Q₂=pX₂+Z₂+p³V₂+p². Therefore T₂ reduces to Z₂−1 and Q₂ to Z₂. Also C₃−Q₂=p+p³. Hasse equivariance at this weight uses the corrected Q₂ congruence.

For p=3 and Q=x²+y², Δ=−4≡2, so the projective-zero count is zero, X₂ has integral multiplier −1 and U₂ has multiplier −4. For Q=3(x²+y²), the zero reduction has four projective zeros and X₂ has multiplier 3, not the Legendre value zero until reduction. For p=5 and the primitive form x²+y², the two isotropic lines give two neighbor occurrences even though their integral SL₂(Z) classes coincide.

For the tame-orientation check take Γ̄=Γ(5), p=3, Q=x² and M=[[3,5],[30,51]]. Then M=[[1,5],[10,51]]diag(3,1), with the left factor in Γ(5), and the normalized inverse image is 3(17x−10y)². Its coefficients reduce to (2,0,0) modulo 5. Every determinant-three matrix in the forward double coset reduces to diag(3,1), so a second forward neighbor has coefficients (4,0,0) modulo 5. Γ(5) preserves these reductions. Thus it cannot recover the Γ(5)-class of Q; the reciprocal relation must use the reverse double coset unless level transport identifies the two.

For the normalized contraction at d=2, con₂(x²⊗y²)=1/3 and con₂(y²⊗x²)=1/3 in the determinant-square target. The second input has rank one, showing why the vector theta coefficient has no extra det Q. In the scalar case the Hasse invariant has expansion 1 and Θh=0. At p=5 its weight k=4 satisfies the other numerical conditions from the uncorrected injectivity statement; the excluded Hasse weight is therefore essential.

A formal H¹ comparison requires the Milnor sequence. The finite-level H⁰ restriction isomorphisms identify the lim¹H⁰ terms, and finite-level H¹ injections then give an injection on their inverse limits. This yields the formal H¹ injection by the diagram of short exact Milnor sequences; it does not rely on a general identity H¹(lim F_n)=lim H¹(F_n).


These computations use CG20 Lemmas 8.3–8.6,8.12 and Definition 8.19, internal pp. 58–59,64,72 (CG20 lines 2273,2306,2347,2501,2773); P20 §§7,14.9, pp. 38–40,103–104 (P20 lines 1721,1785,4712); and Y16 Propositions 3.11–3.12, pp. 22–24 (Y16 lines 1192,1243).

## References

- **CG20.** Frank Calegari and David Geraghty, *Minimal modularity lifting for nonregular symplectic representations*. Duke Mathematical Journal 169 (2020), 801–896; author typeset copy, internal page N = journal page 800+N. [Legal text](https://www.math.uchicago.edu/~fcale/papers/Siegel.pdf). Locators use this version and the extracted line numbers cited above.

- **P20.** Vincent Pilloni, *Higher coherent cohomology and p-adic modular forms of singular weights*. Duke Mathematical Journal 169 (2020), 1647–1807; author version 17 June 2019, 113 pp.. [Legal text](https://www.imo.universite-paris-saclay.fr/~pilloni/complexhidatheorygsp4.pdf). Locators use this version and the extracted line numbers cited above.

- **Y16.** Takuya Yamauchi, *The weight reduction of mod p Siegel modular forms for GSp4*. arXiv:1410.7894v5, 30 August 2016; locators refer to v5. [Legal text](https://arxiv.org/pdf/1410.7894v5). Locators use this version and the extracted line numbers cited above.

- **T06.** Jacques Tilouine, *Siegel varieties and p-adic Siegel modular forms*. Documenta Mathematica, Extra Volume Coates (2006), 781–817. [Legal text](https://ems.press/content/book-chapter-files/27485?nt=1). Locators use this version and the extracted line numbers cited above.

- **P12.** Vincent Pilloni, *Sur la théorie de Hida pour le groupe GSp2g*. Bulletin de la Société Mathématique de France 140 (2012), 335–400. [Legal text](https://www.numdam.org/article/BSMF_2012__140_3_335_0.pdf). Locators use this version and the extracted line numbers cited above.

- **K75.** Neal Koblitz, *p-adic variation of the zeta-function over families of varieties defined over finite fields*. Compositio Mathematica 31 (1975), 119–218. [Legal text](https://www.numdam.org/article/CM_1975__31_2_119_0.pdf). Locators use this version and the extracted line numbers cited above.

- **B15.** George Boxer, *Torsion in the coherent cohomology of Shimura varieties and Galois representations*. Harvard PhD thesis, 2015; public author copy, printed pagination seven below PDF page. [Legal text](https://www.ma.imperial.ac.uk/~gboxer/thesis.pdf). Locators use this version and the extracted line numbers cited above.
