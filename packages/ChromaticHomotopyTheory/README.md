# Roadmap: chromatic homotopy theory

**Summary.** Build the chromatic interfaces from finite p-local spectra and oriented theories to periodic detection, Bousfield–Kuhn functors, telescopic Tate vanishing, finite-local blueshift and commutative-ring height. The applications compare real K-theory, topological modular forms and James-filtered Thom rings at every prime. The library is general in the height, the prime, the coefficient spectrum and the coherent finite-group action wherever these parameters occur. Algebraic K-theory purity and redshift use these interfaces as consumers.

## Scope and ownership

This roadmap owns unstable periodic homotopy, the Bousfield–Kuhn construction, the all-spectra p-inversion convention for finite localization, the ring-spectrum acyclicity comparison, generalized fiberwise homology, the extension of Morava realization to arbitrary finite height, telescopic Tate vanishing and blueshift, Hahn’s height theorem, elliptic spectral affineness and the chromatic Thom-family comparisons.

The following constructions are stated by their named owners and are consumed here by section, including the Checks that compare their conventions with these applications.

- GeneralizedCohomology G2–G3 and G5.1 own spectra, stable smash and mapping objects, spectral limits, localization at integers, connective covers and finite duality. The p-local finite/compact and duality specialization is the exact additional contract below.
- GeneralizedCohomology G4.1 and BordismFormalGroups F1–F3/F5 own orientations, native formal groups, multiplication series and height, MU, Quillen universality, BP and its truncations, k(n), K(n), E(n), regular coefficient cofibers, Landweber realization and algebraic Lubin–Tate deformations. The pointwise geometric-height criterion used in Layer 8 is the spectral locality consequence, rather than a second algebraic height invariant.
- BordismFormalGroups F6.1–F6.4 own homological Bousfield localization, its class order, Morava nilpotence, type, thick classification, periodicity and eventual centrality, positive-height telescope independence, p-local finite localization and its kernel, Ravenel’s class identities, Hopkins–Ravenel smashing and chromatic fracture. Layer 4 extends the finite tower to all spectra with S[1/p] at its bottom. Layer 8 compares telescopic localization on chromatically local objects.
- BordismFormalGroups F6.5 owns coherent Borel actions, norms, generic Tate cofibers, lax monoidal and module structures, and K(n)-local Tate vanishing. Layer 9 proves the corresponding telescopic and finite-local conclusions. Generic norm and action carriers keep that owner.
- StableHomotopyKTheory §3.18 owns space Postnikov sections and their convergent towers; §§7.21–7.27 own filtered-spectrum spectral sequences and convergence comparisons. AlgebraicTopology Stages 4–5 and 8 supply CW geometry, ordinary twisted Serre theory and homotopy exact sequences. HomotopySpheres §§3A–3B own convenient pointed spaces, Freudenthal stabilization, the James equivalence and its stable splitting.
- TopologicalKTheory T7 owns real Bott coefficients and complexification; GeneralizedCohomology G5.4 owns ko, KO, ku, KU and multiplicative Bott inversion. Layer 11 proves their positive-height telescopic consequences.
- EllipticCohomology E1–E3 own elliptic moduli and its nodal compactification, elliptic cohomology triples, the topological structure sheaf, tmf, Tmf and TMF, and height-one/two Morava realization and its coherent actions. E4 owns the surviving discriminant class Δ²⁴ and its localization comparison. E6 owns the spectral level covers. Layer 7 extends the realization and action to heights at least three using the supplied obstruction machinery; Layer 12 owns spectral affineness, the resulting chromatic comparisons and the faithful spectral Galois assertions.
- ModularCurves §§4B–4C and 7E own the smooth Weierstrass groupoid, the ordered full-level-three torsor, elliptic formal heights and the specified Serre–Tate comparisons. The compactified moduli carrier enters through EllipticCohomology E1, including its nodal boundary.

Mathlib already supplies `FormalGroup`, `FormalGroup.IsComm`, `FormalGroup.Point`, `FormalGroup.map`, `FormalGroup.𝔾ₐ`, `FormalGroup.𝔾ₘ` and `CategoryTheory.ObjectProperty.isLocal`. Tau Ceti already supplies `WeierstrassCurve.formalGroup`. These are the native algebraic carriers; the ordinary precomposition predicate does not itself construct a spectral reflector. No formal-group point calculation is a substitute for a chromatic headline theorem.

## Conventions

Fix a prime p. Work in explicitly fixed nested universes: spaces and diagram index sets are small in the first universe, spectra and their presentable categories in the next; finite spectra are essentially small. Include comparison along universe enlargement. Tensor products, mapping objects, fibers, cofibers and (co)limits are derived. S is the integral sphere, 0 the zero spectrum and Σ∞ the reduced suspension spectrum of a pointed space; a subscript + adds a disjoint basepoint. Homotopy and homology have integer homological grading, π_kΣX=π_(k−1)X, while Eʳ(X)=[Σ∞X,ΣʳE]. The symmetry on degrees a,b has sign (−1)^(ab). In the cofiber triangle X→Y→C→ΣX the boundary lowers homological degree by one.

Finite p-local means compact in Sp_(p), including retracts of finite p-local sphere-cell spectra. A p-local dual has tensor–Hom comparison only against a p-local target. Set K(0)=Hℚ and K(∞)=H𝔽_p. For n≥1 use the supplied type-n self-map telescope T(n), retaining its chosen source when discussing periodic groups; only its Bousfield class is choice independent. Set T(0)=S[1/p] on all spectra. Write L_n=L_(K(0)∨⋯∨K(n)), L_n^f=L_(Hℚ∨T(1)∨⋯∨T(n)) and L_n^(p,f)=L_(S[1/p]∨T(1)∨⋯∨T(n)). Their bottom terms differ on all spectra. The Bousfield order ⟨E⟩≤⟨F⟩ means that every F-acyclic spectrum is E-acyclic.

An m-connective space has π_i=0 for i<m, including the appropriate component condition, so it is (m−1)-connected. A map is m-connective when all its homotopy fibers are m-connective; it induces isomorphisms in degrees below m and a surjection in degree m. For r≥1, X⟨r⟩=fib(X→τ_≤(r−1)X). In particular the fiber of a simply connected space’s degree-two Postnikov section is X⟨3⟩. Space Postnikov sections are taken componentwise and retain fundamental-group transport; only the trivial-action stages are treated as principal fibrations.

Use geometric formal-group height only at characteristic-p field points, with height∞ for the zero p-series and height 0 when p is invertible. A geometric height bound is uniform over all points. It is distinct from the ring height of Layer 10. Graded p-typical coefficients use v₀=p and |v_i|=2(pⁱ−1); fix Hazewinkel generators and the supplied coordinate conversions. For Morava E-theory write π_*E=π₀E[u,u⁻¹] with |u|=−2 after choosing a trivialization. For elliptic sheaves π_(2r)Otop=ωʳ; weight 12 for Δ therefore gives spectral degree 24, and Δ²⁴ has degree 576. Even periodicity on a chart includes a degree-two unit after trivializing its line and does not assert even global homotopy.

A finite-group action is a coherent functor from BG, not merely an action on homotopy groups. Tate always means the cofiber of the normalized Borel norm. A localized Tate conclusion names the localization explicitly. p-complete Thom spectra use the p-complete symmetric monoidal category: its tensor and colimits are the completions of ambient tensor and colimits.

**Checks.**

- ΣS has π₁=ℤ; swapping two degree-one sphere factors acts by −1. For S→S→0, the cofiber of the identity is 0, and the cofiber of 0→S is S.
- With q≠p, S[1/p]∧S/q=S/q while Hℚ∧S/q=0. With X=S_(p), both bottom finite-local conventions give Hℚ.
- K(A,2)⟨3⟩=* and τ_≤2K(A,2)=K(A,2); using cover index2 would retain π₂=A.
- For the native multiplicative coordinate, [2](X)=2X+X² and [3](X)=3X+3X²+X³, reducing to X² and X³ in the respective characteristics. This pins the plus sign in X+Y+XY.
- At height 1 and odd p, ψ_(−1)(u)=−u with ψ_(−1)²(u)=u; its action on π₀ is the identity. For elliptic sheaves, Δ²⁴ has weight 288 and degree 576.

## Exact supplier contracts

### From Mathlib

Use `FormalGroup`, `FormalGroup.IsComm`, `FormalGroup.map`, `FormalGroup.Point`, `FormalGroup.𝔾ₐ` and `FormalGroup.𝔾ₘ` from `Mathlib/RingTheory/FormalGroup/Basic.lean`. The formal law is a two-variable power series with the unit and associativity laws; commutativity is a separate class. Its point carrier imposes the actual substitution condition on a multivariable series, rather than representing every element of every topological algebra. Use `CategoryTheory.ObjectProperty.isLocal` from `Mathlib/CategoryTheory/Localization/Bousfield.lean` only for the ordinary-category comparison: it says that precomposition with a morphism is bijective into each object of a specified property. Spectral locality uses derived mapping spaces and every shift.

### From Tau Ceti

Use `WeierstrassCurve.formalGroup` from `TauCeti/AlgebraicGeometry/EllipticCurve/FormalGroup/Basic.lean`. Its carrier is the native Mathlib formal law obtained from the Weierstrass addition series by the specified two-variable reindexing. The coordinate convention is transported through the elliptic and oriented comparisons; no new elliptic formal law is introduced.

### From TauCetiRoadmap.GeneralizedCohomology

Consume G2’s actual symmetric spectral model, derived monoidal and module categories, commutative rings and algebra localization; G3.4/G3.7/G3.9’s homotopy-colimit, compact-object and integer-localization comparisons; G3.8’s multiplicative connective covers and spectral Postnikov sections; G4.1’s complex orientations; G5.1’s finite duality and G5.4’s real and complex Bott spectra. In particular retain the unit maps of Bott inversion and connective covers, not just their coefficient groups.

What GeneralizedCohomology must provide (gap:p-local-finite-duality): For every prime p, identify compact p-local spectra with retracts of finite p-local cell spectra, present every p-local spectrum as their filtered colimit, and prove p-local Spanier–Whitehead duality with p-local targets.

### From TauCetiRoadmap.BordismFormalGroups

Consume F1’s multiplication series, morphisms and geometric height, F2’s Quillen comparison and orientation-coordinate convention, F3’s actual BP-module cofibers and their associative-product qualifications, and F5’s invariant ideals and marked algebraic deformations. F6.1 supplies L_E with its mapping-space universal property, exactness, unit and class comparisons. F6.2–F6.3 supply all-prime nilpotence including the H𝔽_p endpoint, type, thick classification, periodicity, central powers, positive-height telescopes and the p-local compactly generated finite quotient. F6.3–F6.4 supply the Ravenel class identities and L_n smashing, including the pro-constancy content of the Adams tower. F6.5 supplies coherent actions, generic transfer/norm and Tate/module naturality, and general marked straightening and Kan extensions. The ring-acyclicity and telescopic Tate theorems below use these generic constructions.

Apply F6.5’s pointwise comma-category Kan-extension formula and composition theorem to a map f:X→Y of spaces and a spectrum-valued local system D: its left Kan extension at y is the colimit on fib_y(f), and taking the colimit over Y gives colim_XD. The slice is the homotopy fiber because X and Y are groupoids; all comparisons retain their naturality.

What BordismFormalGroups must provide (gap:sphere-segal-comparison): For every prime p, prove that the specified trivial-action comparison from S to its C_p Tate spectrum identifies that Tate spectrum with the p-complete sphere.

What BordismFormalGroups must provide (gap:completed-ku-locality): For every prime p, prove that the derived p-completion of the supplied complex KU spectrum is K(1)-local, with the standard Bott orientation and completion map.

### From TauCetiRoadmap.EnhancedDerivedSheaves

Consume E0.4–E0.5’s stable-category and space-indexed colimit comparison and E5’s stable monoidal enhancements. The spectral elliptic module category has the following additional exact contract, beyond ordinary derived modules on a ringed site.

What EnhancedDerivedSheaves must provide (gap:spectral-ringed-sites): For an algebraic stack with an étale sheaf of E∞ rings, construct quasicoherent spectral modules with affine-chart base change, étale descent, tensoring by spectra and the global-sections adjunction.

### From TauCetiRoadmap.StableHomotopyKTheory

Consume §3.18’s space Postnikov sections and compatible convergent towers, with the twisted obstruction data of §3.21 for componentwise use; §§7.21–7.27’s coherent filtered spectra, exact couples, homological spectral sequences and their finite-filtration, bounded-below and derived-limit convergence criteria. A displayed E² page does not imply strong convergence for an arbitrary periodic coefficient spectrum.

### From TauCetiRoadmap.AlgebraicTopology

Consume Stages 4–5’s based Hausdorff CW geometry, cofibrations, cellular and twisted ordinary homology, bundles and fibration comparisons, and Stage 8’s homotopy-fiber exact sequence, Hurewicz and Whitehead with their connectivity hypotheses. Generalized Serre coefficients are constructed in Layer 6, with monodromy retained.

### From TauCetiRoadmap.HomotopySpheres

Consume §3A’s convenient pointed suspension–loop adjunction, finite-complex stable-range comparison and Freudenthal bounds, and §3B’s word filtration J_rW, its connected James equivalence and reduced stable splitting. The comparison J∞W≃ΩΣW requires connected W. The r-th word quotient is W^∧r and the reduced stable wedge begins at r=1.

### From TauCetiRoadmap.TopologicalKTheory

Consume T7’s real Bott theorem and Clifford-module coefficient comparison, with α²=4β, complexification α↦2b² and β↦b⁴. GeneralizedCohomology G5.4 supplies the corresponding coherent spectrum models.

### From TauCetiRoadmap.EllipticCohomology

Consume E1’s stable one-pointed genus-one compactification and Hodge line; E2’s height-one/two marked Morava realizations, obstruction machinery and coherent automorphism actions; E3’s Otop sheaf, elliptic formal-group comparison and global spectra tmf→Tmf→TMF; E4’s actual surviving δ=Δ²⁴∈π₅₇₆Tmf with TMF≃Tmf[δ⁻¹]; E6’s level-three sheaf and deck-group descent. Layer 7 supplies the higher-height extension of E2. The affine chart objects used in Layer 12 retain their formal-group identification, including nodal height 1, and their integral treatment at 2 and 3.

### From TauCetiRoadmap.ModularCurves

Consume §4B’s smooth Weierstrass presentation and effective descent, §4C’s full ordered level-three torsor over ℤ[1/3], and §7E’s ordinary/supersingular formal heights, connected p-divisible comparison and stated Serre–Tate deformation interface. No primitive cube root is fixed in the full-level problem; at 2 its deck group is GL₂(𝔽₃), of order 48.

### From TauCetiRoadmap.GeneralAlgebraicKTheory

Consume Layer 11’s enhanced Waldhausen and nonconnective comparison machinery for the K-theoretic witnesses of §8.3. The needed spectral perfect-module extension is a foundational K-theory input independent of the chromatic applications.

What GeneralAlgebraicKTheory must provide (gap:spectral-perfect-k-theory): For each associative unital ring spectrum A, construct the small idempotent-complete stable category Perf(A) of perfect right A-modules and its functorial nonconnective K-theory spectrum, with extension of scalars, exact-sequence localization and the comparison with Waldhausen models, independently of chromatic localization or purity.

### From TauCetiRoadmap.RefinedTraceMethods

The cyclotomic carriers and trace are inputs to §8.3; the chromatic non-hyperdescent and separating witness are targets of that subsection.

What RefinedTraceMethods must provide (gap:cyclotomic-trace-carriers): For each associative unital ring spectrum A, supply THH(A), its coherent cyclotomic Frobenius and TC(A), and the natural trace from nonconnective K(A) with the descent comparison maps on homotopy-fixed-point diagrams used to formulate the cyclotomic non-hyperdescent target.

## How to read the build

Layers 0–2 fix the supplied finite, oriented and nilpotence interfaces and their distinguishing examples. Layer 3 develops periodic groups and ring acyclicity; Layer 4 extends finite localization to the all-spectra convention. Layer 5 constructs Bousfield–Kuhn functors and Layer 6 applies them to connective spaces and generalized homology. Layer 7 extends marked Morava realization to every finite height. Layer 8 proves chromatic comparisons and their exact range, Layer 9 telescopic Tate vanishing and blueshift, and Layer 10 the commutative-ring height results. Layers 11–13 give the real, elliptic and Thom-family applications. Each Needs line lists statement carriers and proof-route inputs separately enough that a different proof can use the same statement. `README.md` is the roadmap; `Suggested.lean` contains only headline target signatures that can be expressed on the pinned APIs.

## Layer 0: Finite spectra and homological localization

The finite category, p-local dual and localization unit enter through the exact supplier contracts. The following examples pin their use in every later layer.

### Examples

For finite p-local spectra, The p-local sphere has π₀=ℤ_(p) and is compact in Sp_(p); S/p has π₀=𝔽_p and q acts invertibly for q≠p; the identity of ⋁_(j≥0)S_(p) cannot factor through a finite subwedge. (hs, Preliminaries, p.9; Theorem 7, p.3; hs line 129).

**Checks.**

- S_(p) is finite p-local, even though its underlying integral spectrum need not be compact.

- S/p lies in FinSp_(p) and multiplication by any q different from p is invertible.

- An infinite wedge of nonzero copies of S_(p) is not compact in Sp_(p).

For Spanier–Whitehead duality, D(S/p)=Σ⁻¹S/p and D(S_(p))=S_(p). With V=S_(p), X=Hℤ, the two integral π₀ values are 0 and ℤ_(p), respectively. (hs, §1.4, p.14; proof of Theorem 7 in §2.2, p.19; hs line 129).

**Checks.**

- D(S/p)≃Σ^(-1)S/p.

- D(S_(p))≃S_(p).

- The p-locality of X matters: for V=S_(p) and X=Hℤ, π₀F(V,Hℤ)=Hom(ℤ_(p),Z)=0, whereas π₀(D V⊗Hℤ)=ℤ_(p).

For homological bousfield localization, L_0S=0, L_SS=S and L_HℚS=Hℚ. For q≠p, Hℚ∧S/q=0 but S[1/p]∧S/q=S/q≠0. (lmmt, Definition 2.5 and Lemma 2.8, p.8; lmmt line 301).

**Checks.**

- L_(zero spectrum) X≃0, whereas L_S X≃X.

- L_Hℚ S≃Hℚ and S/p is Hℚ-acyclic.

- For q different from p, S[1/p]⊗S/q is nonzero although Hℚ⊗S/q is zero.

### Dependencies

GeneralizedCohomology G2–G3 and G5.1; gap:p-local-finite-duality; BordismFormalGroups F6.1; AlgebraicTopology Stage 4.

## Layer 1: Oriented coefficient spectra and height

The oriented theories and their native formal-law comparisons enter through the exact supplier contracts. Keep completed projective-space cohomology and the specified p-typical generators throughout.

### Examples

For complex orientations, For Hℤ, F(X,Y)=X+Y; for the degree-zero KU coordinate [L]−1, F=X+Y+XY. At p=2 its 2-series is 2X+X², reducing to X², so replacing this coordinate by its negative changes the displayed cross term. (behrens, Definitions 1.2.1, 1.2.6, Proposition 1.2.10, pp.4–6; behrens line 1160).

**Checks.**

- Hℤ with its standard orientation gives the additive law.

- KU with the degree-zero coordinate [L]−1 gives X+Y+XY.

- Changing coordinate does not change the geometric height; a random power series with nonunit linear term is not an orientation coordinate.

For geometric height of an orientation, Over 𝔽₂, [2]_add=0 and [2]_mult=X²; over 𝔽₃, [3]_mult=X³. Ordinary and supersingular elliptic formal heights are 1 and 2; a square-zero coefficient does not replace a field in the height definition. (behrens, §1.5, p.21; §1.6, pp.27–28; behrens line 1160; goerss, §3.3, pp.238–239; goerss line 688).

**Checks.**

- Over 𝔽_p, the additive law has infinite height since [p]=0.

- Over 𝔽_p, the multiplicative law has [p](X)=X^p and height one.

- An ordinary elliptic formal group has height one and a supersingular elliptic formal group has height two; neither height is assigned to an arbitrary law merely because it has dimension one.

For complex cobordism and brown–peterson theory, v₀=p has degree 0; |v₁|=2 at p=2 and 4 at p=3. At p=3, π₂BP=0 and π₂MU_(3)=ℤ_(3). (ravenel, §2, p.360; ravenel line 401; behrens, §1.2, pp.4–8; behrens line 1160).

**Checks.**

- The p-typical v₀ convention is p, of degree zero.

- |v₁|=2p−2, including degree two at p=2.

- At p=3, π₂BP=0 whereas π₂MU_(3)=Z_(3); the p-typical retract is not all of MU_(3).

For morava k-theory and johnson–wilson spectra, K(0)_0=ℚ and K(0)_2=0; K(1) at 2 has 𝔽₂ in every even degree and zero in odd degrees; H𝔽₂ has only degree 0 coefficients. (ravenel, §2, p.360 and Theorem 2.1, pp.361–363; ravenel line 401).

**Checks.**

- K(0) has Q in degree zero and no other homotopy groups.

- For n≥1, K(n)_* is a graded field with a nonzero class precisely in degrees divisible by 2(p^n−1).

- K(∞)=H𝔽_p is distinct from every periodic K(n).

For connective periodic cofiber sequences, At p=2,n=1, the degree 2 v₁ quotient of BP⟨1⟩ has π₀=ℤ_(2), while that of k(1) has π₀=𝔽₂. The p-cofiber of Hℤ_(p) has π₀=𝔽_p. K(0)∧K(1)=0. (ravenel, Theorem 2.1(e),(f),(h),(i) and proof, pp.361–363; ravenel line 401).

**Checks.**

- At n=1 the quotient of BP⟨1⟩ by v₁ is Hℤ_(p), whereas the quotient of k(1) is H𝔽_p.

- At n=0 the relevant self-map is p, with degree zero.

### Dependencies

GeneralizedCohomology G4.1/G5.3; BordismFormalGroups F1–F3/F5; ModularCurves §7E.

## Layer 2: Nilpotence, type and periodicity

The supplied nilpotence, type and periodicity interfaces apply at every prime and every finite type. The mod-p endpoint is retained in nilpotence on arbitrary targets.

### Examples

For chromatic type, type(S_(p))=0, type(S/p)=1 and type(0)=∞; max(0,1)=1 gives type(S_(p)∧S/p)=1, whereas max(1,∞)=∞ gives type((S/p)∧0)=∞. (hs, Theorem 7 and nested supports, p.3; Lemma 2.1, p.15; hs line 129).

**Checks.**

- S_(p) has type zero.

- S/p has type one.

- The zero spectrum is in every C_n and must not be assigned any finite exact type.

For nilpotence theorem, For R=H𝔽_p, K(i)∧R=0 at every finite i but H𝔽_p∧R≠0; the unit is not nilpotent. For R=0 the unit is zero and its first power is zero. (hs, Theorem 3, pp.2–3; its reduction in §2.1, pp.15–17; hs line 129; lmmt, Remark 2.4, p.8; lmmt line 301).

**Checks.**

- The unit of a nonzero ring spectrum cannot be nilpotent.

- Testing only one fixed finite height does not give the stated criterion.

For thick subcategory theorem, thick(S_(p))=C₀, thick(S/p)=C₁ and thick(0)={0}. Hℚ∧S_(p)=Hℚ≠0, while Hℚ∧S/p=0; hence C₁≠C₀. (hs, Theorem 7, p.3; proof in §2.2, pp.17–19; hs line 129).

**Checks.**

- A type-one object does not thickly generate the p-local sphere.

- C_n strictly contains C_(n+1) for every finite n.

For periodic self-maps, p acts as 0 on K(1)_*(S/p), so it is not invertible there. A degree-d v-map has its a-th power in degree ad for a≥1. At height 0, π₀S[1/p]=ℤ[1/p], not ℚ. (lmmt, §2.1, p.6; lmmt line 301).

**Checks.**

- Multiplication by p on S/p is not a v₁ self-map since it is zero on K(1)-homology.

- A positive power of a v_n self-map is again a v_n self-map, with degree multiplied by the exponent.

- For the height-zero sphere, inverting the degree-zero p map gives S[1/p], not its rationalization on all spectra.

For periodicity and asymptotic centrality, For f=id and identical v-maps choose powers a=b=1; replacing v by v² is matched by (a,b)=(2,1), with degree 2d on both sides. A sign −1 in graded interchange has even power +1. (hs, Theorems 9 and 11, pp.4–6; Lemmas 3.5–3.6 and Corollaries 3.7–3.8, p.21; hs line 129; lmmt, Lemma 2.2(vii), p.7; lmmt line 301).

**Checks.**

- A stable map between two type-n complexes becomes compatible after powers; the original maps need not commute.

- The existence assertion is for all finite types n and every prime.

### Dependencies

BordismFormalGroups F6.2–F6.3; GeneralizedCohomology G5.1; Layers 0–1’s supplied interfaces.

## Layer 3: Telescopes and periodic homotopy

### 3.1 Periodic homotopy groups

For n≥1 and a fixed unstable representative v:Σ^dV→V, define v_n⁻¹π_k(X;V) as colim_r π_(k+rd)Map_*(V,X) under precomposition with v, taking a tail where k+rd≥2 for spaces. For spectra use the stable mapping spectrum and integer grading. A v_n-periodic equivalence induces isomorphisms in every degree. At height zero, for spectra and simple spaces use π_*(X)[1/p]; it is a separate convention. (lmmt, Definition 2.1 and Lemma 2.2(i),(ii),(viii), pp.6–7; lmmt line 248).

The construction has the following API.

- A pointed map induces maps on every periodic homotopy group, preserving identity and composition.

- The groups for a spectrum X and for Ω∞X agree at positive height.

- The transition induced by v gives an isomorphism from degree k to degree k+d in the colimit, with the corresponding source suspension identification.

- A v_n-periodic equivalence is exactly an isomorphism on all displayed colimits.

*Proof route.* Precomposition increases mapping-space homotopy degree by d; the positive degree makes a cofinal abelian tail available. Compare unstable mapping into Ω∞X with the mapping spectrum out of Σ∞V through adjunction. Keep dependence on V in the groups; only the equivalence condition is independent after the telescope comparison.

**Checks.**

- Periodic groups of a contractible pointed space vanish.

- A bounded Postnikov spectrum has zero positive-height periodic groups.

- The p-inverted groups of S/q with q≠p can be nonzero at height zero.

- For X=* each colimit group is 0. For Hℤ in degree k, the stable mapping groups from Σ^(k+rd)V are eventually 0. At height 0, (ℤ/q)[1/p]=ℤ/q when q≠p.

*Needs:* GeneralizedCohomology G2 (mapping spectra and suspension–loop adjunction); HomotopySpheres §3A (stable-range finite representatives); BordismFormalGroups F6.3 (v_n maps and telescope classes).

### 3.2 Telescope acyclicity criteria

For n≥1: (a) X and Ω∞X have the same v_n-periodic groups; (b) any integer connective cover of a spectrum, and any finite connected cover of a space, is a v_n-periodic equivalence; (c) K(i)⊗T(n)=0 for i≠n, including i=0,∞; (d) T(n)-acyclicity implies K(n)-acyclicity; (e) S/p-acyclicity implies T(n)-acyclicity; (f) X→X_p^∧ is a T(n)-equivalence, for arbitrary spectra with the imported derived p-completion; (g) the Bousfield class of T(n) is independent of (V_n,v_n); (h) X is T(n)-acyclic exactly when all its v_n-periodic groups vanish. At n=0 use the separate p-inversion convention of Layer 4. (lmmt, Lemma 2.2(i)–(viii) and proof, pp.6–7; lmmt line 257).

*Proof route.* Use positive-degree suspension tails for cover invariance. Apply graded-field Künneth to the telescope; use finite p-power annihilation for the S/p comparison and the S/p-equivalence of derived completion. Dualize the finite source, then use eventually commuting powers and thick generation to compare detector classes. This identifies acyclicity, rather than an equivalence T(n)≃K(n).

**Checks.**

- The p-completion map need not be a T(0)-equivalence.

- The criterion is acyclicity, not an identification of T(n) with K(n) as spectra.

- At positive n, T(n)∧Hℚ=0 and T(n)∧H𝔽_p=0; K(n)∧T(n)≠0. The completion S→S_p^∧ has height 0 π₀ map ℤ[1/p]→ℚ_p, which is not an isomorphism.

*Needs:* §3.1 (periodic mapping groups); GeneralizedCohomology G5.1 (finite duality) and G3.9 (derived p-completion); BordismFormalGroups F6.3 (central powers, source independence and finite p-power annihilation).

### 3.3 Ring-spectrum acyclicity comparison

For n≥1 and any associative unital ring spectrum R, T(n)⊗R=0 if and only if K(n)⊗R=0. No such comparison is asserted for an arbitrary spectrum or for T(0) versus K(0). (lmmt, Lemma 2.3, p.7; Remark 2.4, p.8; lmmt line 301).

*Proof route.* One direction is telescope detection. For the other replace the finite source by its endomorphism ring D V⊗V and take a central power of the self-map. The resulting telescope can be made a unital ring, so its tensor with R has a unit. All Morava theories, including H𝔽_p, kill this tensor if K(n) kills R. Nilpotence of the unit forces it to be zero. Retain the ring hypothesis on the object whose unit is tested; an arbitrary module does not acquire such a unit.

**Checks.**

- The criterion applies to E₁ rings at p=2.

- At height zero the ring HF_q, q≠p, separates S[1/p] from Hℚ.

- R=0 gives both smash products 0; R=K(n) gives both nonzero by field Künneth. At height 0 and q≠p, S[1/p]∧H𝔽_q=H𝔽_q but Hℚ∧H𝔽_q=0.

*Needs:* BordismFormalGroups F6.2–F6.3 (Morava unit nilpotence, finite duality, central-power self-maps and telescope classes); GeneralizedCohomology G2 (associative ring localization).

### Examples

For telescopes, Tel(0)=0 and Tel(id_V)=V. For q≠p, Tel(p:S→S)∧S/q=S/q, since p is a unit mod q; its rational alternative is 0. (lmmt, §2.1 and Lemma 2.2(vii), pp.6–7; lmmt line 301).

**Checks.**

- Inverting a nilpotent map gives zero.

- Replacing v_n by a positive power gives an equivalent telescope.

- For q≠p, T(0)⊗S/q≠0 whereas Hℚ⊗S/q=0.

### Dependencies

GeneralizedCohomology G2 (mapping spectra and suspension–loop adjunction); HomotopySpheres §3A (stable-range finite representatives); BordismFormalGroups F6.3 (v_n maps and telescope classes). §3.1 (periodic mapping groups); GeneralizedCohomology G5.1 (finite duality) and G3.9 (derived p-completion); BordismFormalGroups F6.3 (central powers, source independence and finite p-power annihilation). BordismFormalGroups F6.2–F6.3 (Morava unit nilpotence, finite duality, central-power self-maps and telescope classes); GeneralizedCohomology G2 (associative ring localization).

## Layer 4: Finite localization and fracture

### 4.1 Finite chromatic localizations

Write L_n=L_(K(0)∨⋯∨K(n)). On all spectra write L_n^f=L_(Hℚ∨T(1)∨⋯∨T(n)), so this includes p-localization, and write L_n^(p,f)=L_(S[1/p]∨T(1)∨⋯∨T(n)). For n=0 these are respectively Hℚ-localization and p-inversion. Construct units and tower maps L_n→L_(n−1), L_n^f→L_(n−1)^f and L_n^(p,f)→L_(n−1)^(p,f). The finite kernels and smashing property are theorems, not parts of the notation. (lmmt, Definition 2.5, p.8; lmmt line 321).

The construction has the following API.

- Each tower has natural units from X.

- The truncation maps of the detector wedges induce compatible maps down the towers.

- An object is local exactly for the E-equivalences of the displayed wedge.

- For a smashing tower, the localized sphere is an idempotent commutative algebra and L(X)=L(S)⊗X.

At n=0 a tower map to height −1 is not part of this notation; define L_−1=0 separately only when a fiber formula uses it.

*Proof route.* Use the wedge of the indicated detecting spectra to obtain each reflector. The inclusion of acyclic classes gives natural transition maps compatible with the units.

**Checks.**

- L_0^fS=Hℚ but L_0^(p,f)S=S[1/p].

- For p-local X the two finite towers agree, by the separate comparison theorem.

- L_n^f kills S/q for q≠p while L_n^(p,f) preserves this spectrum.

- L₀^fS=Hℚ and L₀^(p,f)S=S[1/p]. For q≠p and any n, L_n^f(S/q)=0 while L_n^(p,f)(S/q)=S/q.

*Needs:* BordismFormalGroups F6.1 (homological reflectors) and F6.3 (positive-height telescope classes); GeneralizedCohomology G3.9 (p-inversion and p-localization).

### 4.2 Finite localization kernels

For n≥0 the kernel of L_n^(p,f) on all spectra is the localizing subcategory generated by finite p-primary-torsion spectra of type at least n+1. It is smashing. The kernel of L_n^f on all spectra also contains the localizing subcategories at the primes q≠p. Both towers restrict on Sp_(p) to the supplied finite localization with kernel Ind(C_(n+1)), and the quotient functor preserves compact objects into its compact localized category. (lmmt, Lemma 2.6 and proof, p.8; lmmt line 330).

*Proof route.* Extend the supplied finite quotient from Sp_(p) to integral spectra using the finite p-primary generators. Prove that their localizing tensor ideal is the kernel by the localization universal property. Compact dualizable generators make local objects closed under coproducts, and tensoring with the localized sphere realizes the reflector. Add the q-primary generators for the Hℚ-bottom convention.

**Checks.**

- At n=0, the p-finite kernel is generated by S/p.

- On p-local spectra, the n=0 kernel is all rationally acyclic spectra.

- At n=0, the p-finite kernel contains S/p but not S/q for q≠p; its p-local restriction consists of rationally acyclic objects. L₀^f kills both S/p and S/q on all spectra.

*Needs:* §4.1 (all-spectra finite towers); BordismFormalGroups F6.3 (p-local finite kernel and thick classification); GeneralizedCohomology G5.1 and gap:p-local-finite-duality (compact dualizable generators).

### 4.3 Comparison on p-local spectra

If X is p-local then L_n^(p,f)X≃L_n^fX, naturally and compatibly with tower units and transition maps. Both outputs are p-local. Without p-locality the comparison is false, as S/q with q≠p shows. The functor called finite localization in Clausen–Mathew’s p-local convention is the L_n^f specified here. (lmmt, Definition 2.5, p.8; consequence (i) of Lemma 2.8, p.9; lmmt line 356).

*Proof route.* On p-local spectra, tensoring with S[1/p] is rationalization. The positive-height detectors are already p-local. Restrict the two localization universal properties to Sp_(p); their acyclics coincide there.

**Checks.**

- Check X=S_(p), including n=0.

- Check X=S/q, q≠p, to disprove an unrestricted comparison.

- For S_(p), both bottom outputs are Hℚ. For S/q with q≠p, the outputs are S/q and 0, so the unrestricted comparison fails.

*Needs:* §4.1 (two finite towers); §4.2 (smashing and kernels); GeneralizedCohomology G3.9 (p-localization and rationalization).

### 4.4 Chromatic fracture squares

Let E,F be spectra and assume L_E sends F-acyclics to F-acyclics. For every X the natural square L_(E∨F)X→L_FX over L_EX→L_E L_FX is cartesian. The hypothesis holds if L_E is smashing or if L_F kills every E-local spectrum. Apply it for 0≤m<n to E=T(0)∨⋯∨T(m) and F=T(m+1)∨⋯∨T(n), giving the finite-tower fracture square with upper-left L_n^(p,f)X and lower-left L_m^(p,f)X. The analogous p-local Hℚ convention follows by comparison. (lmmt, Lemmas 2.7–2.8 and proof, p.8; lmmt line 344).

*Proof route.* The pullback is local for E∨F because its three other vertices are local for the appropriate detector. Compare its fiber with that of X→L_FX, then use preservation of F-acyclics to see the map from X is also an E-equivalence. Check the two sufficient conditions explicitly; use smashing of the lower finite tower in the application.

**Checks.**

- For m=0 the lower localization is p-inversion, not integral rationalization.

- The condition on L_E is required for the general lemma.

- For E=0,F=S, the square has vertices X,X,0,0 and its pullback is X. For E=S,F=0 the vertices are X,0,X,0 and again the pullback is X. At m=0 the lower detector preserves S/q for q≠p.

*Needs:* BordismFormalGroups F6.1 (L_E and locality); §4.2 (smashing for the finite-tower application).

### 4.5 Bottom finite-local comparison

If X is T(1)-acyclic, then L_1^(p,f)X→X[1/p] is an equivalence, without a p-locality assumption on X. In the p-local subcategory this says L_1^fX≃X⊗Hℚ. (lmmt, Consequences (i)–(ii) of Lemma 2.8, p.9; lmmt line 356).

*Proof route.* Use the height-one fracture square with lower detector S[1/p]. The T(1)-local corner of X is zero, so the pullback is X[1/p].

**Checks.**

- For X=S/q with q≠p, the result is X rather than zero.

- For X=S/q with q≠p, T(1)∧X=0 and both L₁^(p,f)X and X[1/p] equal X≠0; for X=0 both are 0.

*Needs:* §4.4 (fracture with E=S[1/p], F=T(1)); §4.3 (restriction to Sp_(p)).

### Examples

For S_(p), both bottom outputs are Hℚ. For S/q with q≠p, the outputs are S/q and 0, so the unrestricted comparison fails.

### Dependencies

BordismFormalGroups F6.1 (homological reflectors) and F6.3 (positive-height telescope classes); GeneralizedCohomology G3.9 (p-inversion and p-localization). §4.1 (all-spectra finite towers); BordismFormalGroups F6.3 (p-local finite kernel and thick classification); GeneralizedCohomology G5.1 and gap:p-local-finite-duality (compact dualizable generators). §4.1 (two finite towers); §4.2 (smashing and kernels); GeneralizedCohomology G3.9 (p-localization and rationalization). BordismFormalGroups F6.1 (L_E and locality); §4.2 (smashing for the finite-tower application). §4.4 (fracture with E=S[1/p], F=T(1)); §4.3 (restriction to Sp_(p)).

## Layer 5: Bousfield–Kuhn functors

### 5.1 Finite telescopic functors

For a finite pointed complex V and a v_n map v:Σ^d V→V with n≥1, construct a spectrum-valued functor Φ_v on pointed spaces by repeating Map_*(V,−) along the v-induced degree-d structure maps. Its integer homotopy groups are v_n⁻¹π_*(−;V). Transport along compatible powers of self-maps and finite maps is coherently functorial, rather than a choice made only in the homotopy category. (kuhn-guide, §3.1, Lemma 3.1, pp.9–11; Theorem 5.2 and Lemma 5.4, pp.15–17; kuhn-guide line 393).

The construction has the following API.

- π_kΦ_v(X) is the displayed periodic mapping-space colimit.

- Positive powers give canonically compatible equivalent functors.

- For f:V→W intertwining equal-degree powers, precomposition induces Φ_w(Y)→Φ_v(Y), naturally in Y; these maps have rigidified composition and identity.

- On Ω∞X, the construction agrees with periodic localization of the mapping spectrum F(V,X).

*Proof route.* Construct the d-periodic prespectrum from precomposition by v and spectrify it. Identify integer homotopy with the cofinal abelian tails. Construct Kuhn’s cofinal system of finite type-n complexes, cofibration replacements and eventually commuting power maps; rigidify their composition before taking limits. The cofinal comparison must be coherent in finite sources, rather than merely an isomorphism of periodic groups.

**Checks.**

- If X is a finite Postnikov space then Φ_v(X)=0.

- Passing from v to a positive power preserves Φ_v up to the canonical cofinal equivalence.

- The homotopy groups of Φ_v(Ω∞X) agree with the stable periodic groups.

- Φ_v(*)=0; for v and v² the direct systems have the same colimit by the even cofinal subsequence; on Ω∞T(n) the periodic groups are nonzero.

*Needs:* §3.1 (periodic groups); HomotopySpheres §3A (pointed mapping spaces and stable-range representatives); GeneralizedCohomology G2 (prespectra, spectrification and mapping spectra); BordismFormalGroups F6.3 (eventually compatible powers).

### 5.2 Bousfield–Kuhn functor

For each n≥1 construct Φ_n:Spaces_*→Sp_(T(n)) with natural equivalences F(V,Φ_nY)≃Φ_vY for finite type-n V with self-map v, and Φ_nΩ∞X≃L_(T(n))X. The first comparison uses the finite mapping spectrum; the second is natural in every spectrum X. State uniqueness with the finite-source compatibilities, not merely the equality of homotopy groups. (kuhn-guide, Theorem 1.1, pp.3–4; Theorem 5.2, Lemmas 5.4–5.5 and Definition 5.6, pp.15–18; kuhn-guide line 113).

The construction has the following API.

- Every value of Φ_n is T(n)-local.

- The finite-source formula is natural in Y and compatible with powers and finite maps.

- The natural equivalence Φ_nΩ∞≃L_(T(n)) respects maps of spectra.

- T(n)-local-valued functors equipped with the compatible finite-source characterization are equivalent compatibly with that characterization; locality is part of the uniqueness hypothesis.

*Proof route.* Take the homotopy inverse limit over the cofinal, rigidified finite-source system. Finite duality proves the finite-source characterization, and that characterization proves T(n)-locality and the Ω∞ comparison. For uniqueness require T(n)-local values and compatible equivalences on every finite type-n source and its power maps.

**Checks.**

- Φ_nΩ∞ of a T(n)-acyclic spectrum is zero.

- Φ_nΩ∞T(n)≃L_(T(n))T(n) is nonzero.

- There is no height-zero functor with this unrestricted comparison on all spectra, since Ω∞ annihilates strictly negative Eilenberg–Mac Lane spectra.

- Φ_nΩ∞0=0 and Φ_nΩ∞T(n)=L_T(n)T(n)≠0. Ω∞Σ⁻¹Hℚ=* but S[1/p]∧Σ⁻¹Hℚ=Σ⁻¹Hℚ≠0, excluding the unrestricted height 0 formula.

*Needs:* §5.1 (rigidified finite-source functors); §3.2 (telescope acyclicity); gap:p-local-finite-duality; BordismFormalGroups F6.1 (local categories).

### 5.3 Detection by suspension and loops

For n≥1, if Σ∞Ω∞f is a T(n)-equivalence then f is a T(n)-equivalence. Indeed L_(T(n))f is a retract of Φ_nΩ∞Σ∞Ω∞f by the suspension-loop unit and counit. At n=0 the corresponding detection holds for maps of connective spectra with p inverted. The positive-height functor Σ∞Ω∞ does not in general preserve T(n)-equivalences: Hℤ is T(n)-acyclic whereas Σ∞Ω∞Hℤ=Σ∞Z has nonzero sphere summands. (lmmt, Proposition 2.9 and Remark 2.10, p.9; lmmt line 361).

*Proof route.* Apply Φ_n to the suspension-loop triangle identity, giving a natural retract diagram. For the height-zero connective assertion compare the least nonzero p-inverted homotopy group using Hurewicz, and then the fiber. Use Hℤ and its discrete infinite loop space to test the absent preservation direction.

**Checks.**

- The hypothesis is preservation after applying Σ∞Ω∞; the conclusion does not give the converse.

- A negative Eilenberg–Mac Lane spectrum rules out the unrestricted height-zero detection statement.

- T(n)∧Hℤ=0 for n≥1, whereas Σ∞Ω∞Hℤ=Σ∞ℤ has a sphere retract and nonzero T(n)-homology. For Σ⁻¹Hℚ→0, suspension-loop detection at height 0 would send 0→0 to a non-equivalence.

*Needs:* §5.2 (Bousfield–Kuhn equivalence); GeneralizedCohomology G2 (suspension–loop unit and counit); AlgebraicTopology Stage 8 (connective Hurewicz for the height-zero case).

### Examples

Φ_nΩ∞0=0 and Φ_nΩ∞T(n)=L_T(n)T(n)≠0. Ω∞Σ⁻¹Hℚ=* but S[1/p]∧Σ⁻¹Hℚ=Σ⁻¹Hℚ≠0, excluding the unrestricted height 0 formula.

### Dependencies

§3.1 (periodic groups); HomotopySpheres §3A (pointed mapping spaces and stable-range representatives); GeneralizedCohomology G2 (prespectra, spectrification and mapping spectra); BordismFormalGroups F6.3 (eventually compatible powers). §5.1 (rigidified finite-source functors); §3.2 (telescope acyclicity); gap:p-local-finite-duality; BordismFormalGroups F6.1 (local categories). §5.2 (Bousfield–Kuhn equivalence); GeneralizedCohomology G2 (suspension–loop unit and counit); AlgebraicTopology Stage 8 (connective Hurewicz for the height-zero case).

## Layer 6: Connective spaces and generalized homology

### 6.1 Generalized Serre filtration

For a fibration F→X→Y over a CW space and a spectrum E, filter E⊗Σ∞_+X by the inverse images of the skeleta of Y. The resulting homological spectral sequence has E²_(s,t)=H_s(Y; y↦E_t(F_y,+)) and d_r:(s,t)↦(s−r,t+r−1), with the full monodromy local system. Its total-degree target is π_(s+t)(E⊗Σ∞_+X). Assert strong convergence for a finite-dimensional base, or for a uniformly bounded-below fiberwise E-homology system; for arbitrary bases with periodic E state only the filtered object and conditional convergence criterion supplied by H.6. (lmmt, Proof of Proposition 2.11(ii), p.10; lmmt line 398; bhm, §3, Theorem 3.1, p.5; Lemmas 3.2–3.3, p.6; bhm line 225).

The construction has the following API.

- The filtration is natural under maps of fibrations and coefficient spectra.

- Over each s-cell the graded contribution is Σ^s(E⊗Σ∞_+F_y).

- The second page is homology with the full displayed monodromy system.

- The imported exact-couple convergence criteria apply under their explicit boundedness or derived-limit hypotheses.

*Proof route.* Pull back the skeletal filtration of the base. Trivialize over cells and identify its graded terms with sums of shifted fiber E-homology. The cellular boundary retains path transport, producing local coefficients. Apply finite-filtration or degreewise bounded-filtration convergence; use the supplier’s derived-limit criterion in the remaining cases.

**Checks.**

- For Y=* the target is E_*(F_+).

- For E=Hℤ and the mapping torus of a degree −1 map S¹→S¹, monodromy acts by −1 on H₁ of the fiber. The spectral sequence gives H₁=Z⊕Z/2 and H₂=0; constant coefficients would incorrectly give the torus groups Z² and Z.

- For an infinite base and a periodic E, no first-quadrant strong-convergence claim follows just from the displayed E² page.

- For the reflection mapping torus of S¹, 1−(−1)=2 on H₁(S¹); ker(2:ℤ→ℤ)=0 and coker(2)=ℤ/2, giving H₂=0 and H₁=ℤ⊕ℤ/2. Constant transport instead gives H₂=ℤ and H₁=ℤ².

*Needs:* StableHomotopyKTheory §§7.21–7.27 (filtered spectra, exact couples and convergence); AlgebraicTopology Stages 4–5 (cellular local systems and fibration transport); GeneralizedCohomology G2 (smash and colimits).

### 6.2 Fiberwise homology comparison

Let f:X→Y be a map of spaces and E a spectrum. If for every y the augmentation E⊗Σ∞_+fib_y(f)→E is an equivalence, then E⊗Σ∞_+f is an equivalence, with no finiteness hypothesis on Y and no boundedness hypothesis on E. For pointed connected fibers the hypothesis says that their reduced E-homology vanishes. This theorem supplies the arbitrary-base comparison even when a periodic Serre spectral sequence has no established strong convergence. (lmmt, Proposition 2.11(ii) proof, p.10; lmmt line 398).

*Proof route.* Unstraighten f as a space-indexed local system of spaces; after applying E⊗Σ∞_+ its colimit over Y is E⊗Σ∞_+X. The fiber augmentations give a natural equivalence to the constant local system E. Take colimits. Compose the left Kan extension along f with that along Y→*; its pointwise fiber formula identifies the first colimit with E⊗Σ∞_+X and the constant-system colimit with E⊗Σ∞_+Y. The unstraightening and space-indexed Fubini comparison are explicit parts of the E3 request.

**Checks.**

- It applies to Y infinite and E periodic.

- The augmentation condition uses unreduced fibers; asserting E_*(F_+)=0 would incorrectly fail even for a point.

- For f=id_Y every fiber is a point and its augmentation is E→E, the identity. For ∅→*, the fiber augmentation is 0→E, which is an equivalence exactly when E=0. For a two-point fiber it is E⊕E→E, the fold, with fiber E.

*Needs:* BordismFormalGroups F6.5 (space-indexed unstraightening); BordismFormalGroups F6.5 (pointwise Kan formulas and composition); GeneralizedCohomology G2 (Σ∞_+ and tensor preserve colimits).

### 6.3 Connective periodic vanishing

For every n≥1, every (n+1)-connective pointed space F with vanishing v_i-periodic homotopy for 0≤i≤n has L_n^(p,f)-acyclic reduced suspension spectrum. If f:X→Y is an (n+1)-connective map and a v_i-periodic equivalence for every 0≤i≤n and every compatible basepoint, then Σ∞f is an L_n^(p,f)-equivalence for every choice of basepoint. The same statements hold with some m≥2 from the finite-nullification proof; the sharper uniform value is m=n+1. (lmmt, Proposition 2.11 and Remark 2.12, pp.9–10; lmmt line 382; bhm, §3, Theorem 3.1, p.5; Lemmas 3.2–3.3, p.6; bhm line 225; csy, Theorem 5.4.4 and Remark 5.4.5, pp.83–84; csy line 4036).

*Proof route.* Construct nullification N_V at a sufficiently suspended finite type-(n+1) complex V: its unit X→N_VX is initial among maps into V-null spaces, meaning Map(V,Z)≃Z by evaluation at the basepoint. Prove the periodic comparison on the connectivity range from the finite-nullification argument, then test maps into Ω∞ of finite-local spectra. For the sharp bound prove T(i)∧Σ∞K(A,r)=0 for every finite abelian p-group A and r>i, using the categorical-height criterion and the telescope’s unital-ring model; extend to p-primary torsion groups by filtered colimits and through finite Postnikov towers by fiberwise comparison. At height 0 use the simply connected p-inversion Hurewicz argument. The nullification unit is idempotent and preserves the periodic groups in heights0 through n.

**Checks.**

- n=1 permits m=2 under the sharpened bound.

- No claim is made for arbitrary disconnected fibers.

- For n=1 the bound m=n+1 is 2; a contractible fiber has zero periodic groups and zero reduced suspension. For K(ℤ/p,n), lower periodic groups vanish but K(n)-homology is nonzero; its connectivity is only n, outside m=n+1.

*Needs:* §3.1–§3.2 (periodic equivalences); §6.2 (fiberwise comparison); StableHomotopyKTheory §3.18 (Postnikov towers); BordismFormalGroups F6.1/F6.3 (localization and finite type spectra); the nullification and Eilenberg–Mac Lane calculation constructed in this subsection.

### 6.4 Connective preservation by suspension and loops

For n≥1, Σ∞Ω∞ preserves m-connective L_n^(p,f)-equivalences of spectra, where m is the bound of connective periodic vanishing, and in particular m=n+1 using the sharp bound. This does not assert preservation of arbitrary T(n)-equivalences. (lmmt, Proposition 2.11(iii) and Remark 2.12, pp.9–10; lmmt line 403).

*Proof route.* Apply Ω∞ to the connective map; the periodic groups agree with the stable periodic groups. Use the space comparison at every basepoint and then apply Σ∞.

**Checks.**

- The Hℤ counterexample in Layer 5 has insufficiently connective fiber and does not contradict this result.

- The conclusion uses the full finite wedge through height n.

- For an identity map all fibers and comparison cofibers are 0. Hℤ→0 has fiber Hℤ with π₀=ℤ, hence is not (n+1)-connective; its suspension-loop image has nonzero T(n)-homology.

*Needs:* §6.3 (the m=n+1 bound and all-basepoint space comparison); §3.2 (agreement of stable and infinite-loop periodic groups); GeneralizedCohomology G2 (Ω∞ preserves homotopy fibers).

### Examples

For postnikov and connected-cover conventions, τ_≤0S¹=*; for the pointed set {a,b}, τ_≤0 is {a,b} and X⟨1⟩={a}. K(A,2)⟨3⟩=* while τ_≤2K(A,2)=K(A,2). (lmmt, Lemma 2.2(ii), p.6; proof of Proposition 2.11, pp.9–10; lmmt line 301; bhm, §3, Theorem 3.1, p.5; Lemmas 3.2–3.3, p.6; bhm line 225).

**Checks.**

- τ_≤0X is the discrete component space, not a connected replacement.

- X⟨1⟩ is the basepoint component of X.

- K(A,r)⟨r+1⟩ is contractible, whereas τ_≤rK(A,r)≃K(A,r).

### Dependencies

StableHomotopyKTheory §§7.21–7.27 (filtered spectra, exact couples and convergence); AlgebraicTopology Stages 4–5 (cellular local systems and fibration transport); GeneralizedCohomology G2 (smash and colimits). BordismFormalGroups F6.5 (space-indexed unstraightening); BordismFormalGroups F6.5 (pointwise Kan formulas and composition); GeneralizedCohomology G2 (Σ∞_+ and tensor preserve colimits). §3.1–§3.2 (periodic equivalences); §6.2 (fiberwise comparison); StableHomotopyKTheory §3.18 (Postnikov towers); BordismFormalGroups F6.1/F6.3 (localization and finite type spectra); the nullification and Eilenberg–Mac Lane calculation constructed in this subsection. §6.3 (the m=n+1 bound and all-basepoint space comparison); §3.2 (agreement of stable and infinite-loop periodic groups); GeneralizedCohomology G2 (Ω∞ preserves homotopy fibers).

## Layer 7: Morava E-theory and stabilizer actions

### 7.1 Morava E-theory

For every perfect field k of characteristic p and one-dimensional commutative formal group G of finite height h≥3, extend the marked height-one/two realization interface to a K(h)-local even-periodic E∞ ring E(k,G) with π₀E=R(k,G), the marked algebraic universal deformation ring, and π_*E≅R(k,G)[u,u⁻¹], |u|=−2 after choosing a coordinate and periodicity generator. Its formal group is the universal deformation of G. The space of realizations together with that deformation identification is contractible. Together with the supplied h=1,2 realizations this gives one interface at every h≥1; neither the coordinate nor the polynomial presentation of R(k,G) is canonical. (goerss, §3.3, Theorem 3.6, pp.238–239; goerss line 688; behrens, Theorem 1.7.6 and discussion, pp.33–34; behrens line 1160).

The construction has the following API.

- The degree-zero ring represents the imported marked deformation problem; the periodic grading has |u|=−2.

- The complex-oriented formal group is isomorphic to the universal deformation under the marking.

- E(k,G) is K(h)-local and even periodic.

- The space of realizations with the specified deformation comparison is contractible.

The height-one/two restriction agrees with the supplied marked realization and action. The higher-height extension preserves its coordinate-change and unit compatibilities.

*Proof route.* Apply the supplied marked obstruction machinery to the arbitrary-height universal deformation. Construct its complete cooperation algebra, the realization obstruction groups and their vanishing, the comparison with Landweber realization, and the contractible marked realization space. Verify the h≥3 coefficient and mapping-space comparisons using the same tower, without identifying algebraic representability alone with an E∞ realization.

**Checks.**

- For h=1 and k=𝔽_p the deformation ring is ℤ_p, with no deformation parameters.

- For h=2 and k=𝔽_(p²), π₀ is W(𝔽_(p²))[[u₁]].

- A height-∞ law is outside this finite-height realization theorem.

- At h=1,k=𝔽_p the ring is ℤ_p and there are 0 parameters; at h=2 it is W(𝔽_(p²))[[u₁]]; at h=3 there are 2 parameters. The additive law has h=∞ and is excluded.

*Needs:* BordismFormalGroups F1/F5 (marked formal groups and universal deformation rings); EllipticCohomology E2.2–E2.3 (the h=1,2 interface and general realization/obstruction machinery); GeneralizedCohomology G2 (E∞ ring and module carriers).

### 7.2 Morava stabilizer actions

Extend the supplied h=1,2 functoriality to h≥3, making E(k,G) functorial on the groupoid of perfect characteristic-p fields with specified isomorphisms of their height-h formal groups after coefficient transport. Aut(k,G) acts coherently through E∞ maps. For a Honda law over 𝔽_(p^h), specify the extended stabilizer G_h=Aut(G/𝔽_(p^h))⋊Gal(𝔽_(p^h)/𝔽_p). Its action on coefficients is continuous for the maximal-ideal topology, and its finite subgroup restrictions are coherent finite actions usable in Tate and homotopy fixed points. A profinite action is not modeled as a discrete finite-quotient action on E_h. (goerss, Theorem 3.6 and following paragraph, p.239; goerss line 688; behrens, §1.6, pp.27–28; behrens line 1160).

The construction has the following API.

- An isomorphism of pairs gives an E∞ equivalence with coherent identity and composition.

- Automorphisms of the pair induce the coherent group action.

- The action on π₀ is the action on marked universal deformations.

- Restriction to a finite subgroup agrees with the coherent finite-action carrier.

The height-one/two restriction agrees with the supplied marked realization and action. The higher-height extension preserves its coordinate-change and unit compatibilities.

*Proof route.* Transport marked deformation morphisms through the realization tower and its mapping-space uniqueness, keeping coherent identity and composition. On coefficients use the maximal-ideal quotients to prove continuity. Restrict to actual finite subgroups to obtain the coherent actions needed below; no arbitrary profinite homotopy-fixed-point construction is required here.

**Checks.**

- At h=1 the stabilizer contains ℤ_p^× and acts through p-adic Adams operations.

- The h=2 residue-field involution is retained in the extended group.

- At odd p and height one, the subgroup {±1} fixes π₀E₁=ℤ_p, while its nonidentity Adams operation sends the periodicity generator u to −u. The action on π₀ alone therefore does not determine the finite action on the spectrum.

- At h=1 and odd p, ψ_(−1) fixes π₀=ℤ_p and sends u to −u; its square fixes u. At h=2 the residue involution has square1 and is not discarded. At h=3 the residue field has Galois group of order 3.

*Needs:* §7.1 (all finite-height realization); BordismFormalGroups F5 (marked deformation automorphisms and their adic topology), F6.5 (coherent finite actions); EllipticCohomology E2.2–E2.3 (functorial obstruction comparison at h=1,2).

### Examples

At h=1 and odd p, ψ_(−1) fixes π₀=ℤ_p and sends u to −u; its square fixes u. At h=2 the residue involution has square1 and is not discarded. At h=3 the residue field has Galois group of order 3.

### Dependencies

BordismFormalGroups F1/F5 (marked formal groups and universal deformation rings); EllipticCohomology E2.2–E2.3 (the h=1,2 interface and general realization/obstruction machinery); GeneralizedCohomology G2 (E∞ ring and module carriers). §7.1 (all finite-height realization); BordismFormalGroups F5 (marked deformation automorphisms and their adic topology), F6.5 (coherent finite actions); EllipticCohomology E2.2–E2.3 (functorial obstruction comparison at h=1,2).

## Layer 8: Chromatic localization and its limits

### 8.1 Finite-height locality

Let R be a p-local even-periodic oriented homotopy commutative ring with geometric height at most n at every point of Spec π₀R. Then R and every R-module are L_n-local. The graded variant assumes the explicit unit-ideal criterion (p,v₁,…,v_n)=π_*R. The pointwise condition in the even-periodic case implies that criterion after converting the coefficients to degree zero. These statements require a uniform finite bound; no bound is inferred merely from having a one-dimensional law. (lmmt, Proof of Corollary 4.21, p.22; lmmt line 904; behrens, §1.6, pp.27–29; behrens line 1160).

*Proof route.* After p-typicalization and a degree-zero periodicity choice, show that the absence of points of height greater than n makes (p,v₁,…,v_n) the unit ideal. Cover by these finitely many principal opens. On each open construct the unital action of the appropriate inverted BP theory and use its Ravenel class and the module mapping adjunction to prove locality. Reconstruct every R-module by the finite Čech limit. A bound on a module’s Bousfield class alone does not prove it local.

**Checks.**

- An even-periodic elliptic theory has bound two.

- The additive characteristic-p theory has infinite height and does not meet a finite bound.

- For the multiplicative height 1 law, v₁ is a unit after choosing periodicity, so (p,v₁)=(1). For the additive characteristic-p law all v_i and p vanish, giving ideal0≠(1) over a nonzero field. For the zero ring, 0=(1) and the conclusion is the zero module.

- For the zero coefficient ring the height-bound ideal is the unit ideal because 0=1, and every module is zero. Over a nonzero characteristic-p field with additive law the same generators give the proper ideal0, so the finite-height conclusion has no hypothesis witness.

*Needs:* BordismFormalGroups F1/F5 (height ideals, coordinate invariance and finite invariant-ideal descent), F6.1 and F6.4 (locality and Ravenel classes); GeneralizedCohomology G2 (module adjunctions and finite Čech reconstruction).

### 8.2 Telescopes on chromatically local spectra

For n≥1, every L_(n−1)-local spectrum is T(n)-acyclic. For every L_n-local X, the canonical comparison L_(T(n))X→L_(K(n))X is an equivalence. Both assertions require the stated chromatic locality and do not prove equality of the two localization functors on all spectra. The p-local chromatic level one agrees with KU_(p)-localization; global KU detects all primes. (lmmt, Proof of Corollary 4.21, p.22; lmmt line 920; behrens, Proposition 1.6.8 and the chromatic fracture square, pp.28–29; behrens line 1160).

*Proof route.* By Hopkins–Ravenel smashing, every L_(n−1)-local X is L_(n−1)S⊗X. Ravenel orthogonality makes the ring L_(n−1)S K(n)-acyclic; ring acyclicity then makes it T(n)-acyclic, and smashing with X proves the first assertion. This uses the ring comparison on the localized sphere, not on an arbitrary module. Apply the chromatic fracture square to L_n-local X; its lower piece is T(n)-acyclic and its height-n piece is detected by K(n). At height one compare the p-local KU Bousfield class with E(1) and Hℚ∨K(1), importing complex Bott theory. The comparison identifies the two natural units on each fracture piece and then on the pullback.

**Checks.**

- KU_(p) is L₁-local, but its p-completion must still be distinguished from global KU.

- An arbitrary T(n)-local spectrum at n≥2 need not be K(n)-local.

- For X=L_(n−1)S the T(n) localization and K(n) localization are both 0. For X=K(n) both are K(n). At n=1, KU_(p) has coefficient ℤ_(p) while its completion has ℤ_p.

*Needs:* §3.3 (ring acyclicity on the localized sphere); BordismFormalGroups F6.4 (smashing, orthogonality and chromatic fracture); §8.1 (module locality); GeneralizedCohomology G5.4 and BordismFormalGroups F3 (KU and Adams-summand class comparison).

### 8.3 Separation above height one

At height one and every prime, ⟨T(1)⟩=⟨K(1)⟩. At every prime and every n≥2 there is a T(n)-local spectrum X which is not K(n)-local. More precisely, for every n≥2 and k≥0 construct the associative truncated Brown–Peterson model with its coherent Adams action of ℤ and set X(p,n,k)=L_(T(n))K(BP⟨n−1⟩^(h pᵏℤ)); prove that X(p,n,k) is not K(n)-local. The choice of multiplicative model and Adams action is part of this construction. Its cyclotomic non-hyperdescent argument is independent of the ring-acyclicity proof in Layer 3. Thus the restricted comparison of §8.2 cannot be extended to every spectrum. (bhls, Introduction, Theorem A, pp.2–4; bhls line 98).

*Proof route.* At height 1 compare Miller’s odd-prime and Mahowald’s prime-two Adams computations with the supplied telescope and Morava detectors. At n≥2 construct the BHLS T(n)-localized algebraic K-theory witness and the Adams-operation homotopy-fixed-point comparison, and prove the cyclotomic non-hyperdescent separating its T(n) and K(n) localizations. The algebraic K-theory and cyclotomic carriers are the supplier contract below; the non-hyperdescent construction and its all-prime, all-height argument are part of this target.

**Checks.**

- The equality at height one is not described as an open conjecture.

- The higher-height failure does not contradict the acyclicity criterion for unital rings.

- For n=1 there is 0 separation between the two acyclic classes; for each p and n≥2 the BHLS witness has L_T(n)X=X and L_K(n)X≠X. For a ring, acyclicity comparison concerns zero localizations and does not identify these two nonzero outputs.

*Needs:* BordismFormalGroups F6.1/F6.3 (the two local categories and T(n)); gap:spectral-perfect-k-theory (GeneralAlgebraicKTheory, Layer 11) and gap:cyclotomic-trace-carriers (RefinedTraceMethods, RT.2–RT.3); the Adams-operation and non-hyperdescent arguments of this subsection.

### 8.4 Chromatic support of BP truncations

For n≥0 and i>n, BP⟨n⟩ is K(i)-acyclic and T(i)-acyclic. For n≥1 the map BP⟨n⟩→E(n) is a T(n)-equivalence, and is also a T(i)-equivalence for i>n because both objects are acyclic there. It is not an L_n^f-equivalence in general: the rational homotopy of BP⟨n⟩ is connective, whereas E(n) has negative rational classes for n≥1. (ravenel, Theorem 2.1(d)–(f), pp.361–363; ravenel line 401; lmmt, Corollary 4.12 and Remark 4.13, p.20; lmmt line 811).

*Proof route.* Smash Ravenel’s class formula ⟨BP⟨n⟩⟩=⟨E(n)∨H𝔽_p⟩ with T(i), i>n. The class of E(n) is the join of K(0),…,K(n), and each of those, as well as H𝔽_p, annihilates T(i) by telescope orthogonality. This proves the T(i)-vanishing without choosing a ring structure on BP⟨n⟩; the K(i)-vanishing follows from the same class formula. The successive v_n-cofibers are shifts of BP⟨n−1⟩. They are T(n)-acyclic, so the sequential inversion map is a T(n)-equivalence. At n=1, rationalization preserves the distinction between the connective polynomial coefficient ring and its Laurent localization, disproving the stronger routed assertion.

**Checks.**

- For n=1 the inversion map is a T(1)-equivalence but fails to be a rational equivalence.

- For n=0, BP⟨0⟩=Hℤ_(p) has no positive finite-height support.

- At n=1, (BP⟨1⟩⊗Hℚ)_−(2p−2)=0, whereas (E(1)⊗Hℚ)_−(2p−2)=ℚ. Its v₁-inversion cofiber is T(1)-acyclic; Hℤ_(p) has K(i)- and T(i)-homology0 for i≥1.

*Needs:* BordismFormalGroups F3 and F6.3–F6.4 (BP truncations, cofibers and Ravenel classes); §3.2 (telescope orthogonality); GeneralizedCohomology G2 (filtered v_n inversion).

### Examples

For ravenel’s bousfield class formula, BP[p⁻¹] and Hℚ have equal acyclics, though π_(2p−2)BP[p⁻¹] contains ℚ and π_(2p−2)Hℚ=0. At n=1 the H𝔽_p term survives for BP⟨1⟩ and dies on v₁ inversion. (ravenel, Theorem 2.1(b),(d),(e),(f), pp.361–363; ravenel line 401; lmmt, Proof of Corollary 4.21, p.22; lmmt line 301).

**Checks.**

- At n=0 the inverted BP class is rational, although BP[p⁻¹] has many rational homotopy groups.

- The H𝔽_p summand is essential before v_n inversion.

For hopkins–ravenel smashing theorem, At n=0, L₀S=Hℚ and L₀S∧X=Hℚ∧X. For X=S/p both outputs are 0. An inverse tower with growing filtration can converge without a uniform retraction; convergence is not used as that retraction. (mm, Theorems 4.6–4.7 and Corollary 4.8, pp.26–27; mm line 1729; lmmt, Proof of Corollary 4.21, p.22; lmmt line 301).

**Checks.**

- The theorem is for L_n; it does not assert that L_(K(n)) is smashing on all spectra.

- A convergent tower need not be pro-constant, so convergence alone is insufficient.

### Dependencies

BordismFormalGroups F1/F5 (height ideals, coordinate invariance and finite invariant-ideal descent), F6.1 and F6.4 (locality and Ravenel classes); GeneralizedCohomology G2 (module adjunctions and finite Čech reconstruction). §3.3 (ring acyclicity on the localized sphere); BordismFormalGroups F6.4 (smashing, orthogonality and chromatic fracture); §8.1 (module locality); GeneralizedCohomology G5.4 and BordismFormalGroups F3 (KU and Adams-summand class comparison). BordismFormalGroups F6.1/F6.3 (the two local categories and T(n)); gap:spectral-perfect-k-theory (GeneralAlgebraicKTheory, Layer 11) and gap:cyclotomic-trace-carriers (RefinedTraceMethods, RT.2–RT.3); the Adams-operation and non-hyperdescent arguments of this subsection. BordismFormalGroups F3 and F6.3–F6.4 (BP truncations, cofibers and Ravenel classes); §3.2 (telescope orthogonality); GeneralizedCohomology G2 (filtered v_n inversion).

## Layer 9: Norms, Tate spectra and blueshift

### 9.1 Localized norms and Tate spectra

Use the coherent finite-group norm and Tate construction of the supplier contracts. For an E-local spectrum X with coherent G-action, the norm in Sp_E is L_E(X_hG)→X^hG, and its cofiber is L_E(X^tG). The fixed points are already E-local because local objects are closed under limits. The imported Tate module structure is compatible with this comparison. The comparison here is the passage to an arbitrary homological localization. (cm-tate, Definition 2.2 and Proposition 2.3, pp.2–3; cm-tate line 70).

*Proof route.* Compute colimits in Sp_E by applying L_E to ambient colimits, and limits by the fully faithful inclusion. Apply the exact functor L_E to the imported norm cofiber sequence; identify its target with X^hG. Transport the imported multiplicative and module structures through the symmetric monoidal localization.

**Checks.**

- For G trivial both localized norm and ambient norm are identities.

- For rational-local inputs, averaging by |G| gives norm equivalence.

- For G=1 the norm is id_X and its cofiber is 0. For a rational trivial C₂-action the degree 0 norm is multiplication by 2 on ℚ, with inverse 1/2; for H𝔽₂ it is 0 and the raw Tate object is nonzero.

*Needs:* BordismFormalGroups F6.1 (exact homological localization) and F6.5 (Borel norm, Tate cofiber and lax monoidal module structure).

### 9.2 Localized transfer splitting

For a homological localization L and finite G, these are equivalent: every G-object in LSp has norm equivalence; L((LS)^tG)=0 for the trivial action on LS; the transfer Σ∞_+BG→S admits a section after L. If these properties hold for prime-order groups they hold for every finite group. The transfer Σ∞_+BC_p→S admits a section after Ω^(∞+1), by Kahn–Priddy in its cyclic-group form. (cm-tate, Lemma 2.1, Proposition 2.3, Lemma 2.4 and Theorem 2.5, pp.2–3; cm-tate line 75).

*Proof route.* Construct the cyclic Kahn–Priddy section after Ω^(∞+1), including the suspension shift. For a homological localization L, use the module action on Tate to reduce all local G-objects to the Tate algebra of LS. Relate a transfer section to a norm class restricting to1, then prove that class is a unit by the connected-space cohomology argument. Use subgroup transfers and induction to reduce finite groups to prime-order groups; do not average at a noninvertible prime.

**Checks.**

- The map is the transfer, not the augmentation whose section exists trivially.

- For rational localization the section follows by dividing by |G|.

- On rational degree 0 classes the C₂ transfer is 2 and a section is 1/2; at C₃ the values are 3 and 1/3. The augmentation has its basepoint section before localization, while the integral transfer has degree |G| and has no integral degree 0 section for |G|>1.

- For rational trivial actions of C₂ and S₃, the transfer on degree-zero constants is2 and6, with sections1/2 and1/6. The S₃ case tests a nonabelian group; averaging is used here only because these integers are invertible.

*Needs:* §9.1 (localized norms); BordismFormalGroups F6.5 (transfer, module action and subgroup functoriality); the cyclic Kahn–Priddy section and prime-order reduction constructed in this subsection.

### 9.3 Kuhn’s telescopic Tate vanishing

For n≥1, every finite group G and every T(n)-local spectrum X with coherent G-action, L_(T(n))(X^tG)=0. Equivalently L_(T(n))(X_hG)→X^hG is an equivalence. In particular the norm sequence becomes split after T(n)-localization. A raw Tate spectrum of a T(n)-local object need not vanish. (cm-tate, Theorem 2.6 and Corollary 2.7, pp.3–4; cm-tate line 118; kuhn-tate, Theorem 1.5 and Corollary 1.7, manuscript pp.4–5; kuhn-tate line 151).

*Proof route.* Apply the Bousfield–Kuhn functor, with one suspension shift as required, to the unstable Kahn–Priddy section. Obtain a localized stable transfer section at every prime-order group, then use the transfer criterion and finite-group reduction. Use the local-category cofiber convention to state the conclusion; raw Tate vanishing is not inferred.

**Checks.**

- At height zero in a p-local rational category norm equivalence is elementary averaging.

- For X=KU_p^∧ and G=C_p with trivial action, raw Tate can be nonzero while its T(1)-localization vanishes.

- For X=KU_p^∧ with trivial C_p-action the raw π₀ is ℚ_p(ζ_p)≠0 while L_T(1) of the Tate spectrum is 0. For G=1 the raw cofiber is 0. At a prime q≠p, q is invertible on p-local coefficients and the norm is invertible by averaging.

- For G=C₂ or S₃ and X=Ind_1^G L_(T(n))S, Shapiro identifies both localized orbits and fixed points with L_(T(n))S. The norm is the identity under these identifications and its raw Tate cofiber is0; no inversion of |G| enters this induced-object Check.

*Needs:* §9.2 (transfer criterion, Kahn–Priddy and prime-order reduction); §5.2 (Bousfield–Kuhn with suspension shift); §9.1 (localized cofiber comparison).

### 9.4 Finite-local Tate blueshift

For n≥1, if X is L_n^(p,f)-local with a coherent C_p-action, then its raw Tate spectrum X^tC_p is L_(n−1)^(p,f)-local. The p-local Hℚ finite convention satisfies the corresponding statement. This lowers the upper finite-height bound by one and permits a further drop; it asserts neither zero Tate nor exact height n−1 for every X. (cmnn, Introduction preceding Theorem C, p.3; proof of Theorem 4.10, p.21; cmnn line 99; lmmt, Remark 3.9, p.16; lmmt line 625).

*Proof route.* First prove the raw Tate vanishing lemma for a trivial-action v_n telescope by Kuhn’s module argument, in addition to localized vanishing. Finite dualizable smash commutes with Tate. Apply this to finite type-n test objects and use the Tate algebra of the finite-local sphere and its unital action on every coherent equivariant module. Its finite-type cofiber/telescope filtration gives an actual lower-local sphere Tate algebra, hence lower-locality of its modules. Verify the finite-local mapping-space criterion on every shifted compact generator. This is stronger than the vanishing of the top localized Tate object, which alone does not imply lower-locality.

**Checks.**

- An input of lower height is permitted; exact height loss is not guaranteed.

- The n=1 output is p-inverted, or rational when the input is p-local.

- At n=1 the raw KU_p^∧ Tate output has p invertible and is rational, so it is L₀^f-local. For X=0 the output is 0, demonstrating a drop beyond exact height n−1.

*Needs:* §9.3 (telescopic Tate vanishing); §4.1–§4.3 (finite towers and kernels); BordismFormalGroups F6.3/F6.5 (finite dualizability and Tate module action); the raw-telescope Tate lemma and lower-locality argument of this subsection.

### 9.5 Nonzero raw Tate spectra

For the trivial C_p-action on KU_p^∧, identify π₀((KU_p^∧)^tC_p) with ℚ_p(ζ_p), including ℚ₂ at p=2. This is nonzero, whereas its T(1)-localization vanishes. Compare the specified trivial-action sphere Tate spectrum with S_p^∧ through the supplier’s Segal comparison: the sphere is not a T(n)-local input to the telescopic vanishing theorem. (greenlees-sadofsky, Corollary 2.4, p.400; greenlees-sadofsky line 343; hesselholt-ku, p.844; hesselholt-ku line 1658; cm-tate, Remark 2.8, p.4; cm-tate line 129).

*Proof route.* Apply the cyclic Tate comparison with the inverse Thom tower of the faithful complex line, and prove its completed KU Euler-inversion identification, with the inverse-limit and periodicity convergence conditions. Compare with the uncompleted KU formula in hesselholt-ku line 1658; the completed comparison is proved using the same oriented tower, rather than assuming Tate commutes with completion. In KU⁰(BC_p) the relation is (1+z)^p−1=0. After inverting z it becomes ((1+z)^p−1)/z=0. Weierstrass preparation identifies the resulting quotient with ℤ_p[ζ_p][1/(ζ_p−1)]=ℚ_p(ζ_p). Use the supplier’s K(1)-locality before invoking telescopic vanishing, and use the Segal comparison only for the separate sphere example.

**Checks.**

- At p=2 the displayed field is nonzero.

- After T(1)-localization the KU example vanishes, agreeing with Kuhn’s theorem.

- At p=2, ((1+z)²−1)/z=2+z, so z=−2 and inverting z gives ℚ₂. At p=3 the equation is z²+3z+3=0, an Eisenstein polynomial, and the result is ℚ₃(ζ₃). Both are nonzero; their positive finite-height localizations are 0.

*Needs:* §9.3 (localized Tate vanishing); §8.3 (height-one class equality); GeneralizedCohomology G5.4 (oriented KU); gap:completed-ku-locality and gap:sphere-segal-comparison; the Euler-inversion calculation in this subsection.

### Examples

At p=2, ((1+z)²−1)/z=2+z, so z=−2 and inverting z gives ℚ₂. At p=3 the equation is z²+3z+3=0, an Eisenstein polynomial, and the result is ℚ₃(ζ₃). Both are nonzero; their positive finite-height localizations are 0.

### Dependencies

BordismFormalGroups F6.1 (exact homological localization) and F6.5 (Borel norm, Tate cofiber and lax monoidal module structure). §9.1 (localized norms); BordismFormalGroups F6.5 (transfer, module action and subgroup functoriality); the cyclic Kahn–Priddy section and prime-order reduction constructed in this subsection. §9.2 (transfer criterion, Kahn–Priddy and prime-order reduction); §5.2 (Bousfield–Kuhn with suspension shift); §9.1 (localized cofiber comparison). §9.3 (telescopic Tate vanishing); §4.1–§4.3 (finite towers and kernels); BordismFormalGroups F6.3/F6.5 (finite dualizability and Tate module action); the raw-telescope Tate lemma and lower-locality argument of this subsection. §9.3 (localized Tate vanishing); §8.3 (height-one class equality); GeneralizedCohomology G5.4 (oriented KU); gap:completed-ku-locality and gap:sphere-segal-comparison; the Euler-inversion calculation in this subsection.

## Layer 10: Commutative rings and chromatic height

### 10.1 Morava power operations

For height-(h+1) Morava E-theory E with π₀E=W(𝔽_(p^(h+1)))[[u₁,…,u_h]] and a K(h+1)-local E∞ E-algebra R, construct the weight-p operation P:π₀R→R⁰(BC_p). It is multiplicative and unital, and becomes additive after quotienting by the transfer. The transfer generator in E⁰(BC_p)=E₀[[z]]/([p](z)) is [p](z)/z. For 1≤k<h, after reducing by I_(k+1)=(p,u₁,…,u_k), define g_(k+1) by [p](z)=z^(p^(k+1))g_(k+1)(z). If x maps to zero in π₀ of the iterated module quotient R/(p,u₁,…,u_k), then P(x) maps to zero in π₀ of R^BC_p/(p,u₁,…,u_k,g_(k+1)). These are module cofibers; no identification with ordinary ring quotients for arbitrary R is assumed. For R=E the regular coefficient case gives the quotient ring operation used in the valuation calculation. Prove the k=0 Bockstein case separately when it is used; the printed theorem with k≥1 is applied only in its stated range. (hahn, §2, pp.3–4; Theorem 1.6, p.2; Theorem 3.3, p.5 and proof pp.7–8; Definition 4.1, p.8; hahn line 198).

The construction has the following API.

- A class x induces the weight-p extended-power class P(x).

- P preserves unit and multiplication.

- The image of P is additive modulo the transfer ideal.

- The quotient operation has the module-cofiber zero-detection property just stated. In the regular even coefficient case it gives the corresponding ring quotient operation; compatibility with the chosen Morava coordinate is explicit.

*Proof route.* Apply the E∞ multiplication to the p-th extended power of a class. Compute the transfer ideal from the oriented p-series. Prove the invariant-ideal divisibility and the equivariant Bockstein section after the g_(k+1) quotient. This proves the stated zero-detection on iterated module cofibers; only regular even coefficients identify those cofibers with ordinary quotient rings. Establish the k=0 case separately with the first Bockstein. For h=0 use the characteristic-p May-nilpotence operation argument.

**Checks.**

- P(1)=1 and P(xy)=P(x)P(y).

- Additivity is required only after quotienting by the transfer, so P(x+y)=P(x)+P(y) is not imposed in the original target.

- The quotient [p](z)/z^(p^(k+1)) is formed only after reducing by I_(k+1), not as an integral power series in the original ring.

- P(1)=1 and P(0)=0; the unquotiented cross term in P(1+1) is a transfer, not declared0. At p=2,h=2, the reduced p-series starts u₁z²+z⁴ (in the chosen p-typical normalization); division by z⁴ is invalid before killing u₁.

*Needs:* §7.1 (Morava realization in every finite height); BordismFormalGroups F6.5 (extended powers and transfers); F1/F5 (p-series and height ideals); GeneralizedCohomology G2 (coherent E∞ algebra and iterated module cofibers).

### 10.2 Hahn’s acyclicity theorem

For an E∞ ring spectrum R and h≥0, K(h)⊗R=0 implies K(h+1)⊗R=0. Consequently T(h)⊗R=0 implies T(h+1)⊗R=0 for h≥0, with T(0)=S[1/p]. For h≥1 translate by the ring-spectrum comparison; at h=0 use S[1/p]-acyclicity⇒Hℚ-acyclicity, not the false equality of these acyclic classes on all spectra. (hahn, Theorems 1.1 and 1.3, p.1; §4, Propositions 4.2–4.5 and Theorem 4.6, pp.8–10; hahn line 19).

*Proof route.* Reduce to a K(h+1)-local E_(h+1)-algebra. For h≥1, prove that K(h)-acyclicity makes a power of u_h zero modulo (p,u₁,…,u_(h−1)); the quotient operation and Eisenstein valuation comparison lower that exponent until1 vanishes. Local completeness then forces the algebra to be0. For h=0 use the characteristic-p power-operation nilpotence argument, with an empty lower-parameter ideal. Translate positive heights through the ring comparison and the bottom height through the implication from S[1/p]-acyclicity to Hℚ-acyclicity.

**Checks.**

- The theorem cannot be extended to an arbitrary E₁ ring by omitting power operations.

- The h=0 implication is valid for H𝔽_p, which is nonzero but acyclic at all finite Morava heights.

- For H𝔽_p, K(0)∧R=0 and K(1)∧R=0 although R≠0. For K(h) at h≥1, K(h−1)∧K(h)=0 but K(h)∧K(h)≠0, showing the conclusion fails for a mere associative ring.

*Needs:* §10.1 (quotient operations and valuation descent, including its h=0 case); §3.3 (ring acyclicity); §7.1 (Morava coefficients); BordismFormalGroups F5 (Weierstrass and regular coefficient comparisons).

### 10.3 Chromatic height of a commutative ring

For an E∞ ring R define ht_p(R)=inf{n∈Z | n≥−1 and T(n+1)⊗R=0}, valued in {−1,0,1,…,∞}; an empty set has infimum ∞. Hahn’s theorem makes the vanishing heights an upper interval. This definition uses T(0)=S[1/p] at the bottom, even for a ring not p-local; it differs from geometric height of an oriented formal group. (lmmt, Introduction, chromatic height discussion, pp.3–4; lmmt line 164; hahn, Theorem 1.1, p.1; hahn line 19).

The construction has the following API.

- For n≥−1, ht_p(R)≤n iff T(n+1)⊗R=0.

- An E∞ map R→S implies ht_p(S)≤ht_p(R).

- The height is ∞ iff every finite-height telescope has nonzero tensor with R.

- Height −1 is T(0)-acyclicity, not a criterion that R itself is zero.

*Proof route.* Use the well-order of integers at least −1 and the upward-closed vanishing set. Obtain threshold characterizations and monotonicity under E∞ maps from the induced module action.

**Checks.**

- ht_p(H𝔽_p)=−1 despite H𝔽_p≠0.

- ht_p(Hℚ)=0.

- For q≠p, ht_p(HF_q)=0 with this all-spectra convention, although its p-localization is zero.

- ht_p(0)=−1, ht_p(H𝔽_p)=−1, ht_p(Hℚ)=0 and ht_p(H𝔽_q)=0 for q≠p. The last two have nonzero T(0)-smash and zero T(1)-smash, so the threshold is exactly0.

*Needs:* §10.2 (Hahn upward acyclicity); §4.1 (all-spectra T(0) convention); GeneralizedCohomology G2 (module actions along E∞ maps).

### 10.4 Tate height converse

For an E∞ ring R with trivial C_p-action and i≥0, if L_(T(i))(R^tC_p)=0 then L_(T(j))R=0 for every j≥i+1. In particular T(i)-acyclicity of the trivial-action Tate spectrum forces T(i+1)-acyclicity of R. The action and coherent commutative structure are part of the hypotheses; no claim is made for an arbitrary group action on an arbitrary spectrum. (cmnn, Theorem 4.6 and Lemma 4.7, pp.19–20; cmnn line 827; hahn, Corollary 4.6.1 and Proposition 4.7, pp.9–10; hahn line 19).

*Proof route.* For i≥1 compute E_(i+1)⁰(BC_p) by Weierstrass preparation, prove finite freeness and the trivial-action comparison E^tC_p⊗_E M≃M^tC_p for K(i+1)-local E-modules. After quotienting by (p,u₁,…,u_(i−1)) and inverting u_i, identify a nonzero faithfully flat algebra over k((u_i)). This reflects K(i)-acyclicity to the input. Combine with Hahn and iterate. Treat i=0 separately by the rational Euler-inversion comparison; there is no negative-index u-parameter or ideal.

**Checks.**

- The conclusion begins one height above i.

- The hypothesis concerns the raw Tate spectrum followed by T(i)-localization.

- For R=Hℚ the C_p Tate spectrum is 0, and all T(j)∧R are 0 for j≥1. For R=KU_p^∧, L_T(1)(R^tC_p)=0 and T(2)∧R=0, but T(1)∧R≠0; the conclusion cannot start at j=i.

*Needs:* §10.1–§10.2 (power operations and Hahn); §3.3 (positive-height ring acyclicity); §7.1 (E_(i+1)); §9.1 (Tate base change); the faithfully flat coefficient calculation of this subsection.

### Examples

ht_p(0)=−1, ht_p(H𝔽_p)=−1, ht_p(Hℚ)=0 and ht_p(H𝔽_q)=0 for q≠p. The last two have nonzero T(0)-smash and zero T(1)-smash, so the threshold is exactly0.

### Dependencies

§7.1 (Morava realization in every finite height); BordismFormalGroups F6.5 (extended powers and transfers); F1/F5 (p-series and height ideals); GeneralizedCohomology G2 (coherent E∞ algebra and iterated module cofibers). §10.1 (quotient operations and valuation descent, including its h=0 case); §3.3 (ring acyclicity); §7.1 (Morava coefficients); BordismFormalGroups F5 (Weierstrass and regular coefficient comparisons). §10.2 (Hahn upward acyclicity); §4.1 (all-spectra T(0) convention); GeneralizedCohomology G2 (module actions along E∞ maps). §10.1–§10.2 (power operations and Hahn); §3.3 (positive-height ring acyclicity); §7.1 (E_(i+1)); §9.1 (Tate base change); the faithfully flat coefficient calculation of this subsection.

## Layer 11: Real topological K-theory

### 11.1 Real Bott coefficients

For every prime p and n≥1, the supplied multiplicative connective-cover map ko→KO is a T(n)-equivalence. For every associative ko-algebra A, the induced map A→A[β⁻¹] is also a T(n)-equivalence, where β is the image of the degree-eight real Bott class and inversion is derived localization over ko. Retain the supplied coefficient ring ℤ[η,α,β]/(2η,η³,ηα,α²−4β) only as its normalization, with degrees1,4,8; these coefficient and real Bott constructions keep their owners. (abs, Theorems 6.9 and 11.5, pp.15–16,28–29; locator-only, uncertified; lmmt, Corollary 4.19 proof, p.21; lmmt line 878).

*Proof route.* The fiber of ko→KO is bounded above; positive-height periodic homotopy is insensitive to that fiber. Then use A[β⁻¹]≃A⊗_koKO and smash the relative tensor comparison with T(n). Real Bott and the Clifford coefficient ring are inputs, rather than additional constructions.

**Checks.**

- At degree four the relation is α²=4β, not α²=β.

- The connective-cover assertion uses n≥1; rationalization detects the negative KO groups.

- α²=4β gives complexification (2b²)²=4b⁴ on both sides; α²=β would give4b⁴=b⁴ over ℤ, which is false. Rational π_−8ko=0 and π_−8KO=ℚ after rationalization, so height 0 inversion is not an equivalence.

*Needs:* GeneralizedCohomology G5.4 (ko→KO and E∞ Bott inversion); TopologicalKTheory T7 (real coefficients); §3.2 (positive-height connective-cover invariance); GeneralizedCohomology G2 (relative tensor base change).

### Examples

For real topological k-theory, π₀ko=π₀KO=ℤ, π₁ko=π₂ko=ℤ/2 and π₃ko=0; π₈KO=ℤ generated by β. Under complexification β maps to b⁴, which has degree 8. (abs, Proposition 6.8, Theorems 6.9 and 11.5, pp.15–16,28–29; locator-only, uncertified; lmmt, Corollary 4.19 and proof, p.21; lmmt line 301).

**Checks.**

- π₀ko=π₀KO=Z, with rank giving the coefficient identification.

- π₁ko=π₂ko=Z/2 and π₃ko=0; replacing ko by complex ku fails this test.

- β has degree eight, while the imported complex Bott class has degree two.

### Dependencies

GeneralizedCohomology G5.4 (ko→KO and E∞ Bott inversion); TopologicalKTheory T7 (real coefficients); §3.2 (positive-height connective-cover invariance); GeneralizedCohomology G2 (relative tensor base change).

## Layer 12: Topological modular forms

### 12.1 Affineness of elliptic spectral geometry

For X=M̄_ell or M_ell equipped with Otop, global sections give a symmetric monoidal equivalence QCoh(X,Otop)≃Mod_(Γ(X,Otop)). In particular Γ on these quasicoherent spectral modules preserves all colimits. Tensoring a fixed spectrum V with a quasicoherent Otop-module is quasicoherent, and V⊗Γ(M)≃Γ(V⊗M). This theorem is specific to these spectral stacks; it is not ordinary affineness of the underlying algebraic moduli stack. (mm, Theorem 7.2, pp.35–37; mm line 1729; lmmt, Corollary 4.21 proof, p.22; lmmt line 1729).

*Proof route.* Prove 0-affineness for the smooth and compactified elliptic spectral stacks by the formal-group moduli comparison and the Mathew–Meier descent argument. Identify the inverse of global sections as extension of scalars along the section algebra. The equivalence is symmetric monoidal and preserves colimits, so tensoring with any spectrum V gives the stated projection comparison for quasicoherent spectral modules.

**Checks.**

- T(2)⊗Tmf≃Γ(T(2)⊗Otop) follows for this quasicoherent module.

- The same conclusion is not inferred for an arbitrary sheaf of spectra.

- For an affine chart Spec A, Γ(O⊗V)=A⊗V. For V=0 both sides are 0; for V=S both are Γ(O); for V=S∨ΣS both are Γ(O)∨ΣΓ(O). Arbitrary sheaves are excluded by quasicoherence.

*Needs:* EllipticCohomology E1–E3 (the two spectral stacks and Otop); gap:spectral-ringed-sites; §8.1 (height-local module comparison); the elliptic 0-affineness argument in this subsection.

### 12.2 Chromatic bounds for modular forms

For each prime, Tmf_(p) and TM𝔽_(p) are L₂-local. The maps tmf→Tmf are T(n)-equivalences for all n≥1, both spectra are T(n)-acyclic for n≥3, and Tmf→TMF is a T(2)-equivalence. Consequently tmf→TMF→L_(K(2))TMF are T(2)-equivalences. These statements concern the input spectra; their algebraic K-theory consequences stay with the purity consumer. (lmmt, Corollary 4.21 proof, p.22; lmmt line 904; behrens, Propositions 1.6.8 and 1.6.12; chromatic fracture, pp.29–32; behrens line 1160).

*Proof route.* On each affine chart the formal group has geometric height at most two, including the height-one nodal boundary; apply finite-height locality and take the descent limit. Use connective-cover invariance at positive heights. For Tmf→TMF commute T(2) with global sections by affineness. Height-two support lies in the smooth open, so Δ inversion is already an equivalence on T(2)-localized sections. Apply the comparison between T(2) and K(2) on L₂-local spectra. Prove this support assertion on each chart: the discriminant-zero locus is nodal of formal height 1, so its T(2)-localized contribution is zero; apply the actual surviving discriminant localization to the quasicoherent module and then global sections.

**Checks.**

- The T(2)-equivalence is not a claim that Tmf and TMF are equivalent spectra.

- There is no assertion that the connective tmf spectrum itself is L₂-local.

- For n≥3, T(n)∧Tmf=0 and T(n)∧tmf=0. At height 2, inversion of Δ²⁴ gives the same localization on both sides; at height 0 the connective cover loses negative rational modular-form classes.

*Needs:* EllipticCohomology E3–E4 (tmf→Tmf→TMF and actual Δ²⁴ inversion); §12.1 (spectral affineness); §8.1–§8.2 (height locality and restricted telescope comparison); §3.2 (connective-cover invariance); ModularCurves §7E (formal-height strata).

### 12.3 Level-three Galois extension

For a finite group G, a faithful G-Galois extension A→B of E∞ rings consists of a coherent G-action by A-algebra maps such that A→B^hG and B⊗_A B→∏_G B are equivalences, and tensoring with B is conservative on A-modules. Using the supplied full-level-three elliptic moduli cover, prove that TMF[1/3]→TMF(3) as a faithful GL₂(𝔽₃)-Galois extension. Its p=2 localization has that same group, including determinant and residue-field components. (mm, Theorem 7.6, p.38; mm line 1801).

The construction has the following API.

- A is recovered as B^hG with its actual coherent action.

- B⊗_A B identifies with the product indexed by G via b₁⊗b₂↦(b₁g(b₂))_g.

- If B⊗_A M=0 then M=0.

- Localization of the elliptic torsor and section rings gives the specified prime-local extension.

This notion of faithful spectral Galois extension is used with the actual base and target algebras and their coherent action; the two displayed comparison maps and conservativity are independent requirements.

*Proof route.* Take Otop sections on the finite étale full-level cover and identify the Čech nerve with the finite group torsor. Use spectral affineness to identify Čech descent with the two Galois comparison maps and to reflect zero modules. Keep all group components in the action; restricting to a geometric automorphism subgroup changes the extension. Prove the relative tensor comparison on the torsor’s affine charts and descend it; cover-surjectivity reflects the zero module, giving faithfulness.

**Checks.**

- For a trivial finite torsor the extension is A→∏_G A and is faithful.

- The zero A-algebra cannot be faithful unless A is zero.

- At p=2 the group has order 48, not 24, and the level-three cover is étale because 3 is invertible.

- For G=C₂ and B=A×A, B⊗_A B=A⁴=∏_G B and B^hG=A. For B=0,A=Hℤ, the map M↦B⊗_AM kills Hℤ≠0, so it is not conservative. |GL₂(𝔽₃)|=(9−1)(9−3)=48.

- For the trivial S₃-torsor, B=∏_(S₃)A has6 factors, B⊗_A B has36 factors and ∏_(S₃)B has36 factors. Homotopy fixed points recover A and projection to one factor makes base change conservative.

*Needs:* EllipticCohomology E3/E6 (level-three sections and deck-group descent); ModularCurves §4C (the full ordered torsor); §12.1 (spectral affineness and module base change).

### 12.4 Supersingular Morava comparison

At p=2, L_(K(2))TMF(3)≃E(𝔽₄,Ĉ) for a supersingular elliptic curve with a chosen full level-three marking, equivariantly for the induced GL₂(𝔽₃) action, and L_(K(2))TMF≃E₂^hGL₂(𝔽₃). At p=3, L_(K(2))TMF≃E₂^hG₂₄, where G₂₄ is the automorphism group of the supersingular pair over 𝔽₃, including the order-two residue-field Galois factor. Here |Aut(C/𝔽₉)|=12 and the extended group has order 24. Choices of curve and marking give compatible equivalences, not an unmarked canonical coefficient-coordinate identification. (behrens, §1.6, Proposition 1.6.12, pp.30–31; behrens line 1160; lmmt, Corollary 4.21 proof, pp.22–23; lmmt line 1160).

*Proof route.* Identify the formal completion of the supersingular elliptic moduli stack with the quotient of its Lubin–Tate deformation space by the extended automorphism group, using the imported Serre–Tate comparison. At two, full level three rigidifies the supersingular object to one formal deformation chart with residue field 𝔽₄. Apply Otop realization and finite-group descent; prove base change on the marked formal chart, retain the residue-field automorphism in its action, and identify the actual descent maps.

**Checks.**

- At two the unmarked extended automorphism group has order 48.

- At three dropping Gal(𝔽₉/𝔽₃) changes the homotopy fixed-point spectrum.

- At 2, the geometric automorphism order 24 times residue degree 2 gives 48. At 3, geometric order 12 times residue degree 2 gives 24. Omitting the residue involution divides each required group order by 2.

*Needs:* EllipticCohomology E1–E3/E6 (formal supersingular charts and level sheaves); ModularCurves §7E (Serre–Tate comparison) and §4C (ordered level-three marking); §7.1–§7.2 (marked realization and finite actions); §12.3 (Galois descent).

### Examples

For elliptic cohomology theories, For an ordinary elliptic fiber the height is 1 and for a supersingular fiber it is 2. The additive law over 𝔽_p has infinite height and cannot be the completion of a smooth elliptic curve. (behrens, Definition 1.2.11, Remark 1.2.12 and Corollary 1.2.15, p.7; behrens line 1160).

**Checks.**

- An ordinary geometric fiber has formal height one.

- A supersingular fiber has formal height two by ModularCurves 7E.

- An even-periodic ring with additive characteristic-p law cannot be elliptic cohomology of a smooth elliptic curve.

For topological structure sheaf, At a nodal one-gon the identity formal group is multiplicative of height 1; at a supersingular smooth fiber it has height 2. A descent class of bidegree(s,2r) contributes degree 2r−s, which is odd when s is odd. (goerss, Theorem 1.2, pp.224–225; goerss line 688; mm, Theorem 7.1, p.35; mm line 1729).

**Checks.**

- The smooth affine restriction yields the elliptic cohomology triple, including its formal comparison.

- The nodal boundary is retained on M̄_ell but excluded on M_ell.

- Even homotopy sheaves do not force Tmf to have no odd homotopy, because higher étale cohomology contributes.

For topological modular forms, π_−1tmf=0 by the connective cover; Tmf retains negative degrees and TMF inverts the cusp discriminant. At 2, Δ has weight 12 and spectral degree 24, but the integral uniform lift is Δ²⁴ in degree 576. (lmmt, §4.3 preceding Corollary 4.21, p.22; lmmt line 301; behrens, §1.3, pp.9–13; §1.6, pp.31–32; behrens line 1160).

**Checks.**

- tmf has no negative homotopy groups by construction.

- Tmf uses the compactified stack, whereas TMF discards the nodal boundary.

- At primes two and three no degree-24 Bott class is assumed solely from the algebraic modular form Δ.

For discriminant localization, weight(Δ²⁴)=12·24=288 and spectral degree is 2·288=576; at 2 the smaller surviving Δ⁸ has degree 192 and at 3 Δ³ has degree 72. The common exponent24 is divisible by 8 and 3. (behrens, §1.3, p.13; §1.5, Theorem 1.5.6, p.23; behrens line 1160; lmmt, §4.3 preceding Corollary 4.21 and its proof, p.22; lmmt line 301).

**Checks.**

- At two the unpowered algebraic Δ is not assumed to be a degree-24 homotopy class.

- The chosen uniform class has degree 24·24=576 and its inversion agrees with the global periodic TMF presentation, before prime localization.

### Dependencies

EllipticCohomology E1–E3 (the two spectral stacks and Otop); gap:spectral-ringed-sites; §8.1 (height-local module comparison); the elliptic 0-affineness argument in this subsection. EllipticCohomology E3–E4 (tmf→Tmf→TMF and actual Δ²⁴ inversion); §12.1 (spectral affineness); §8.1–§8.2 (height locality and restricted telescope comparison); §3.2 (connective-cover invariance); ModularCurves §7E (formal-height strata). EllipticCohomology E3/E6 (level-three sections and deck-group descent); ModularCurves §4C (the full ordered torsor); §12.1 (spectral affineness and module base change). EllipticCohomology E1–E3/E6 (formal supersingular charts and level sheaves); ModularCurves §7E (Serre–Tate comparison) and §4C (ordered level-three marking); §7.1–§7.2 (marked realization and finite actions); §12.3 (Galois descent).

## Layer 13: James filtrations and Thom spectra

### 13.1 Units and Thom spectra

For an E∞ ring R, GL₁R is the union of the unit components in Ω∞R with its multiplicative group-like E∞ structure, and BGL₁R→Mod_R classifies the R-lines equivalent to R. For f:X→BGL₁R, define Mf=colim_X L_f in Mod_R. For n≥1, a based n-fold loop map yields an E_n R-algebra structure on Mf by the monoidal Thom construction. Preserve the actual twist and coherent multiplicative data. (thom, Definition 3.1 and Corollary 3.2, p.10; Theorem 3.5 and Corollary 3.9, p.11; Lemma 3.15 and Proposition 3.16, pp.13–14; thom line 400; akq, §2.1, p.5; akq line 632).

The construction has the following API.

- The map to BGL₁R supplies a functor X→Mod_R whose values are free rank-one R-lines up to equivalence.

- R-linear maps out of Mf are coherent compatible sections of maps out of its classified lines.

- An E∞ map R→R′ carries Mf to the Thom R′-module of the transported line system.

- For a coherent n-fold loop input the Thom module has the corresponding E_n algebra structure.

*Proof route.* Inside the multiplicative Ω∞R take precisely the components with unit π₀ class and deloop the resulting grouplike E∞ space. Construct its functor to Mod_R with value an R-line and identify maps out of its colimit with coherent cocones. Prove monoidal-colimit compatibility for a specified n-fold loop map, giving the E_n R-algebra and its orientation universal property. This extends vector-bundle Thom spectra to arbitrary R-line local systems.

**Checks.**

- For X=* and its trivial line, Mf≃R.

- For a trivial map on X, Mf≃R⊗Σ∞_+X.

- GL₁H𝔽_p has discrete component group 𝔽_p^×; it is not the full additive infinite loop space of H𝔽_p.

- For X=* and the trivial line, Mf=R; for a trivial line on {a,b}, Mf=R⊕R. GL₁H𝔽₂ has one component while Ω∞H𝔽₂ has two; GL₁H𝔽₃ has two unit components, excluding0.

*Needs:* GeneralizedCohomology G2 (E∞ rings, module categories and monoidal colimits); BordismFormalGroups F6.5 (coherent local systems and monoidal rectification).

### 13.2 Hopkins–Mahowald Thom theorem

Let (S³)_p^∧ be the p-completion of the nilpotent space S³ and let f_p:Ω²(S³)_p^∧→BGL₁(S_p^∧) be the E₂ map extending the class 1−p∈π₁BGL₁(S_p^∧)=ℤ_p^× in the p-complete convention. Its p-complete Thom E₂ ring is H𝔽_p. Set C_p=fib((S³)_p^∧→K(ℤ_p,3)), with the map inducing the identity on π₃. Restriction along Ω²C_p gives the p-complete Thom E₂ ring Hℤ_p. Here C_p is the fiber killing homotopy through degree 3 (the cover indexed4 under these conventions); using an uncompleted S³ with target K(ℤ_p,3) would give π₂=ℤ_p/Z instead. Thom tensor products and colimits in these assertions are taken in the p-complete symmetric monoidal category. (thom, Theorems 5.1 and 5.7, pp.19–22; thom line 768).

*Proof route.* Construct nilpotent p-completion of the source space and compare fib((S³)_p^∧→K(ℤ_p,3)) with the completion of fib(S³→K(ℤ,3)). Apply the Thom universal property to identify the first Thom ring with the versal E₂ algebra killing p. Compute its mod-p homology and Dyer–Lashof operations and prove the map to H𝔽_p is an equivalence. For the connected-cover variant use the intermediate S¹ Thom construction and its characteristic-p quotient to obtain Hℤ_p. Every tensor and colimit in this comparison is taken in p-complete spectra.

**Checks.**

- At p=2 the selected unit is −1.

- The H𝔽_p Thom ring has π₀=𝔽_p, while the connected-cover integral variant has π₀=ℤ_p.

- The completed-source cover C_p has π_i=0 for i≤3. The fiber of the uncompleted-domain map S³→K(ℤ_p,3) fails this check in degree two.

- At 2, 1−p=−1 is a unit. π₀ of the two Thom rings is 𝔽_p and ℤ_p. For completed-domain C_p, π₃ and π₂ are both 0 since ℤ_p→ℤ_p is id; for the uncompleted domain, coker(ℤ→ℤ_p)=ℤ_p/ℤ occurs in π₂.

*Needs:* §13.1 (units, multiplicative Thom colimits and their universal property); GeneralizedCohomology G3.9 (spectral p-completion); StableHomotopyKTheory §3.18 and AlgebraicTopology Stage 8 (connected covers); the nilpotent space-completion and free E₂ operation calculation in this subsection.

### 13.3 James-filtered Thom spectra

For m≥0 restrict f_p along ΩJ_(p^m−1)S²→Ω²S³→Ω²(S³)_p^∧ and denote the resulting p-complete E₁ Thom ring by y(m). All colimits in this family are colimits in p-complete spectra, formed by completing ordinary spectral colimits. Then y(0)=S_p^∧, there are E₁ maps y(m)→y(m+1), and colim_m y(m)≃H𝔽_p. For m≥1, π₀y(m)=𝔽_p. At p=2 and m≥1 define z(m) by restricting along Ω(J_(2^m−1)S²⟨3⟩), where the inner connected cover is the fiber of J_(2^m−1)S²→K(Z,2), followed by completion in the p-complete convention. These E₁ rings map to y(m), and colim z(m)≃Hℤ₂. (lmmt, Thom construction preceding Lemma 4.15, p.20; lmmt line 837; akq, Construction 2.1 and Lemma 2.2, pp.5–6; akq line 210).

The construction has the following API.

- James inclusions induce E₁ maps compatible with the maps to the colimit Thom ring.

- The y(0) object is S_p^∧ by the trivial Thom-line computation.

- For m≥1, π₀y(m)=𝔽_p; the completed integral family has π₀=Z₂.

- The z(m)→y(m) square agrees with Hℤ₂→HF₂ after passing to the colimit.

*Proof route.* Restrict the specified unit-classifying map along the looped finite James inclusions before taking the Thom colimit. Their connectivity proves the filtered loop comparison, and monoidal Thom functoriality gives the E₁ transition maps. Compute π₀ at the first nontrivial stage and carry it through the tower. For z(m), compare the integral degree-two Postnikov fiber before and after nilpotent completion. Complete the ambient filtered colimit; do not interchange this completion with arbitrary operations without that comparison.

**Checks.**

- m=0 uses J₀ and gives S_p^∧; it does not have π₀=𝔽_p.

- At p=2,m=1 the finite stage is J₁S²=S².

- z(m) keeps its integral π₀ and is not obtained by merely taking y(m) with a different label.

- p^0−1=0 gives y(0)=S_p^∧ and π₀=ℤ_p; at 2,m=1 the index is 1 and y(1) has π₀=𝔽₂. The integral z(1) has π₀=ℤ₂. The fiber of J₁S²→K(ℤ,2) kills π₂, so it is the cover indexed3 in these conventions.

*Needs:* HomotopySpheres §3B (James filtration and connected equivalence); §13.1–§13.2 (actual classifying map, completed Thom theorem and nilpotent source-space completion); StableHomotopyKTheory §3.18 (Postnikov section defining the cover).

### 13.4 Chromatic acyclicity of Thom spectra

For m≥1, y(m) is L_(m−1)^(p,f)-acyclic: T(i)⊗y(m)=0 for 0≤i<m. At p=2, z(m) is K(i)-acyclic and hence T(i)-acyclic for 1≤i<m; its rational homology is nonzero, so do not add i=0 to that range. (lmmt, Lemma 4.15 and Corollary 4.18 proof, p.21; lmmt line 848; akq, Proposition 2.22, p.15; akq line 632).

*Proof route.* For y(m), π₀=𝔽_p and the unital connective ring action makes p zero on all homotopy groups, so p-inversion is 0. At 2 compute the dual Steenrod comodule and Margolis homology of the specified Thom family and use the localized Adams spectral sequence of Angelini-Knoll–Quigley Proposition2.22. At odd p construct the corresponding Adams vanishing line with slope1/(2p^m−2), establish its convergence, and compare it with the slope1/(2p^i−2) of v_i for i<m. This forces v_i-torsion. For the completed family prove the comparison with the ordinary-source model is an S/p-equivalence, so positive-height telescope homology agrees; handle p-inversion of y(m) separately by its coefficient action. Preserve the rational class in z(m).

**Checks.**

- At m=1, y(1) is p-inversion acyclic.

- The stated z(m) range is empty at m=1 and excludes rational acyclicity.

- At m=1 the y-range is {0}, and π₀y(1)=𝔽_p forces y(1)[1/p]=0. The z-range 1≤i<1 is empty, and π₀z(1)⊗ℚ=ℚ₂≠0. At m=2 the positive z-range is {1}.

- The slope denominator is2p^m−2≥2 for p prime and m≥1; at (p,m)=(2,1) it is2 and at (3,1) it is4. A v_i slope is used only for i≥1. The degree-zero v₀=p case is the separate p-inversion argument, not division by |v₀|=0.

*Needs:* §13.3 (completed y(m), z(m) and coefficient comparisons); §3.3 (ring acyclicity); BordismFormalGroups F6.3 (v_i detection); the Margolis-homology and localized Adams vanishing-line calculations in this subsection.

### 13.5 Acyclicity under the James splitting

Let W be a connected pointed CW space and let E=T(n)∨T(n−1), with n≥1. If E⊗Σ∞W=0 then E⊗Σ∞ΩΣW=0. In particular a connected finite p-local complex of type m>n meets this hypothesis; for n=1 its reduced rational triviality and p-locality also imply S[1/p]-acyclicity. This is the stable input for the corresponding Waldhausen A-theory purity application; no A-theory comparison is re-proved here. (lmmt, Corollary 4.14 proof, p.20; lmmt line 823).

*Proof route.* Smash the stable James splitting with E. Every positive smash power of W is E-acyclic because tensoring is associative. Tensor and coproduct commute; all terms of the wedge vanish.

**Checks.**

- The wedge starts at k=1, so no sphere summand invalidates the vanishing.

- For n=1 the lower detector is S[1/p], with its specified convention.

- For W=*, all positive smash powers have zero reduced suspension. For W=S², the wedge has cells in degrees2,4,6,… and no degree 0 sphere. Adding a spurious r=0 term contributes E≠0 and would refute the vanishing argument.

*Needs:* HomotopySpheres §3B (reduced stable James splitting); §3.2 (telescope/type orthogonality); GeneralizedCohomology G2 (tensor and coproduct comparison).

### Examples

For the James construction, J₀S²=*; J₁S²=S²; J₂S² has reduced cells in degrees2 and 4. For S⁰, π₀J∞S⁰=ℕ whereas π₀ΩS¹=ℤ, so the disconnected comparison fails. (lmmt, Corollary 4.14 proof and following Thom-spectrum construction, p.20; lmmt line 301; akq, §2.1, p.5; akq line 632).

**Checks.**

- J₀W=* has zero reduced suspension spectrum.

- For W=S², the filtration adds one cell in each even dimension through 2r.

- For W=S⁰ the connected-space comparison fails: the free monoid is not the full loop group of S¹.

### Dependencies

GeneralizedCohomology G2 (E∞ rings, module categories and monoidal colimits); BordismFormalGroups F6.5 (coherent local systems and monoidal rectification). §13.1 (units, multiplicative Thom colimits and their universal property); GeneralizedCohomology G3.9 (spectral p-completion); StableHomotopyKTheory §3.18 and AlgebraicTopology Stage 8 (connected covers); the nilpotent space-completion and free E₂ operation calculation in this subsection. HomotopySpheres §3B (James filtration and connected equivalence); §13.1–§13.2 (actual classifying map, completed Thom theorem and nilpotent source-space completion); StableHomotopyKTheory §3.18 (Postnikov section defining the cover). §13.3 (completed y(m), z(m) and coefficient comparisons); §3.3 (ring acyclicity); BordismFormalGroups F6.3 (v_i detection); the Margolis-homology and localized Adams vanishing-line calculations in this subsection. HomotopySpheres §3B (reduced stable James splitting); §3.2 (telescope/type orthogonality); GeneralizedCohomology G2 (tensor and coproduct comparison).

## Downstream consumers

The chromatic purity and redshift applications in GeneralAlgebraicKTheoryPartII consume the finite-local, ring-acyclicity, Tate and input-spectrum comparisons. The periodic detection and height interfaces also support chromatic trace applications. Waldhausen A-theory applications use §13.5’s reduced James acyclicity. Neither the purity theorem nor a redshift theorem is a target of this roadmap.

## Worked examples

For q≠p, multiplication by p is invertible on S/q, so S[1/p]∧S/q=S/q. Rationalization instead gives 0. For a p-local X, every q≠p is invertible already and then p-inversion gives X⊗Hℚ. Thus the two finite towers agree exactly on the stated p-local domain. (lmmt, Definition2.5 and the consequences of Lemma2.8, pp.8–9; lmmt line 321.)

For an additive law over a characteristic-p field, [p](X)=pX=0. For the native multiplicative law, [p](X)=(1+X)^p−1=X^p. At 2 these are 0 and X², and at 3 they are 0 and X³. They distinguish infinite height from height 1 on the actual formal-law carriers. A rescaling with nonunit derivative is not a coordinate isomorphism. (behrens, §1.5, p.21; behrens line 761.)

For trivial-action completed KU at 2, Euler inversion imposes 2+z=0 and z invertible, yielding ℚ₂. At 3 it imposes z²+3z+3=0 and z invertible, yielding the ramified field ℚ₃(ζ₃). Its uniformizer is ζ₃−1, whose square is −3ζ₃. This proves that inverting that element in the integer ring inverts3; the spectral Euler-inversion theorem is the additional target of §9.5. (cm-tate, Remark2.8, p.4; cm-tate line 129, for nonzero lower-height Tate; the displayed field calculation is the oriented specialization proved in §9.5.)

For real Bott coefficients, complexification sends α to2b² and β to b⁴, so α²=4β becomes 4b⁴=4b⁴. The alternative α²=β would give4=1 after canceling the nonzero Bott unit over ℤ. Rational π_−8 distinguishes ko and KO, whereas their positive-height periodic groups agree. (abs, Theorems6.9 and 11.5, pp.15–16,28–29, locator-only, uncertified; lmmt, Corollary4.19 proof, p.21; lmmt line 878.)

For the reflection mapping torus of S¹, fiber monodromy on H₁ is −1. Its cellular differential is 1−(−1)=2; the kernel is 0 and cokernel isℤ/2. Together with the base class this gives H₁=ℤ⊕ℤ/2 and H₂=0. Constant transport would instead produce H₁=ℤ² and H₂=ℤ. This is the two-term witness fixing the Serre local-system convention in §6.1. (lmmt, Proposition2.11(ii) proof, p.10; lmmt line 398; the integral calculation is the example of §6.1.)

For the completed-domain fiber of (S³)_p^∧→K(ℤ_p,3), the degree-three map is id:ℤ_p→ℤ_p, hence its kernel and cokernel are 0. With uncompleted domain the cokernel isℤ_p/ℤ in degree 2. For the finite James stage, the map J₁S²→K(ℤ,2) is an isomorphism on π₂, so its fiber kills π₂ and is indexed by 3 under the cover convention here. (thom, Theorem5.7 and preceding fiber sequence, pp.21–22; thom line 837.)

## References

The keys below identify the legally retrieved versions in `sources.toml`; source line numbers refer to those versions’ numbered extractions. Numbering follows the version read. The single locator-only source is marked explicitly.

- **lmmt** — Markus Land, Akhil Mathew, Lennart Meier, Georg Tamme, [Purity in chromatically localized algebraic K-theory](https://arxiv.org/abs/2001.10425v5), 2020. Introduction, pp.3–4, for the commutative-ring height convention.; §2.1–2.2, pp.6–10; Remark 3.9, pp.15–16; §4.2, pp.19–21; §4.3 and Corollary 4.21 with proof, pp.21–22.
- **hs** — Michael J. Hopkins and Jeffrey H. Smith, [Nilpotence and stable homotopy theory II](https://www.sas.rochester.edu/mth/sites/doug-ravenel/otherpapers/HS.pdf), 1998. Theorems 3,7,9,11, pp.2–6; preliminaries, p.9; §1.1–1.4, pp.10–14; Lemma 2.1 and §2.1–2.2, pp.15–19; Lemmas 3.5–3.6 and Corollaries 3.7–3.8, p.21. The §4 periodicity construction is not audited (G2).
- **ravenel** — Douglas C. Ravenel, [Localization with respect to certain periodic homology theories](https://www.sas.rochester.edu/mth/sites/doug-ravenel/mypapers/loc.pdf), 1984. §2, definitions and Theorem 2.1 with proof, pp.360–363.
- **kuhn-guide** — Nicholas J. Kuhn, [A guide to telescopic functors](https://arxiv.org/abs/0802.0510v1), 2008. Theorem 1.1, pp.3–4; §2.3, pp.7–9; §3.1 and Lemma 3.1, pp.9–11; §5, Theorem 5.2 and Lemmas 5.4–5.5, pp.15–18.
- **kuhn-tate** — Nicholas J. Kuhn, [Tate cohomology and periodic localization of polynomial functors](https://arxiv.org/abs/math/0307173v1), 2003. Introduction, Theorem 1.5 and Corollaries 1.6–1.7, manuscript pp.4–6; §4 and Lemma 4.1, pp.15–17.
- **cm-tate** — Dustin Clausen, Akhil Mathew, [A short proof of telescopic Tate vanishing](https://arxiv.org/abs/1608.02063v2), 2016. Entire paper, pp.1–4; Proposition 2.3, Lemma 2.4, Theorems 2.5–2.6 and Corollary 2.7.
- **hahn** — Jeremy Hahn, [On the Bousfield classes of H_\infty-ring spectra](https://arxiv.org/abs/1612.04386v2), 2016. §1–2, pp.1–4; §3, Theorem 3.3, p.5, Bockstein section Lemma 3.7, pp.6–7, and proof pp.7–8; §4 valuation argument and Proposition 4.7, pp.8–10.
- **cmnn** — Dustin Clausen, Akhil Mathew, Niko Naumann, Justin Noel, [Descent and vanishing in chromatic algebraic K-theory via group actions](https://arxiv.org/abs/2011.08233v2), 2020. §4.2, Theorem 4.6 and Lemma 4.7, manuscript pp.19–20. The numbering differs from the Lemma 4.5 cited in LMMT. Introduction, p.3, and Theorem 4.10 proof, p.21, for the finite-local blueshift input.
- **csy** — Shachar Carmeli, Tomer M. Schlank, Lior Yanovski, [Ambidexterity in Chromatic Homotopy Theory](https://arxiv.org/abs/1811.02057v3), 2018. Introduction, Theorem E; §5.4, Theorem 5.4.4 and Remark 5.4.5, pp.83–84.
- **bhm** — Tobias Barthel, Gijs Heuts, Lennart Meier, [A Whitehead theorem for periodic homotopy groups](https://arxiv.org/abs/1811.04030v2), 2018. §3, Theorem 3.1, p.5, and Lemmas 3.2–3.3, p.6.
- **mm** — Akhil Mathew, Lennart Meier, [Affineness and chromatic homotopy theory](https://arxiv.org/abs/1311.0514v5), 2013. §4, Theorems 4.5–4.7 and Corollary 4.8, pp.26–27; §7, Theorems 7.1–7.2, pp.35–37, and Theorem 7.6, p.38.
- **behrens** — Mark Behrens, [Topological modular and automorphic forms](https://arxiv.org/abs/1901.07990v2), 2019. §1.2, pp.4–8; Theorem 1.3.2, pp.9–10; §1.3 discriminant localization, p.13; §1.4 permanent cycles, pp.16,21; §1.5, pp.21,23; §1.6 chromatic localizations, pp.27–32; Theorem 1.7.6, pp.33–34.
- **goerss** — Paul G. Goerss, [Topological modular forms [after Hopkins, Miller, and Lurie]](https://numdam.org/item/AST_2010__332__221_0.pdf), 2010. Theorem 1.2 and Definition 1.3, pp.224–225; §3.3 and Theorem 3.6, pp.238–239.
- **abs** — M.F. Atiyah, R. Bott, A. Shapiro, [Clifford modules](https://doi.org/10.1016/0040-9383(64)90003-5), 1964. §6, Propositions 6.8 and Theorem 6.9, pp.15–16; §11, Theorem 11.5, pp.28–29 Locator-only, uncertified.
- **thom** — Omar Antolín-Camarena, Tobias Barthel, [A simple universal property of Thom ring spectra](https://arxiv.org/abs/1411.7988v4), 2014. §3, Definition 3.1/Corollary 3.2, p.10; Theorem 3.5/Corollary 3.9, p.11; Lemma 3.15 and Proposition 3.16, pp.13–14; §5, Theorem 5.1, pp.19–20, and Theorem 5.7, pp.21–22.
- **akq** — Gabriel Angelini-Knoll, J. D. Quigley, [A homological approach to chromatic complexity of algebraic K-theory](https://arxiv.org/abs/1908.09164v3), 2019. §2.1, Construction 2.1 and Lemma 2.2, pp.5–6; Proposition 2.22 and its proof, p.15.
- **bhls** — Robert Burklund, Jeremy Hahn, Ishan Levy, Tomer M. Schlank, [K-theoretic counterexamples to Ravenel's telescope conjecture](https://arxiv.org/abs/2310.17459v1), 2023. Introduction, Theorem A and the three localization categories, pp.2–5.

- **greenlees-sadofsky** — J. P. C. Greenlees and Hal Sadofsky, [The Tate spectrum of v_n-periodic complex oriented theories](https://www.sas.rochester.edu/mth/sites/doug-ravenel/otherpapers/greenlees-sadofsky.pdf), 1996. Corollary2.4, p.400, and Corollary1.4, p.395, with proof p.402; greenlees-sadofsky line 343 and line 413.
- **hesselholt-ku** — Jonas McCandless, [Topological Hochschild homology of E∞-rings](https://www.sas.rochester.edu/mth/sites/doug-ravenel/otherpapers/hesselholt-scholze.pdf), in Arbeitsgemeinschaft: Topological Cyclic Homology, Oberwolfach Report15/2018, pp.838–845, especially p.844; hesselholt-ku line 1658. The KU calculation is for uncompleted KU; §9.5 proves the completed comparison through the oriented Tate tower.
