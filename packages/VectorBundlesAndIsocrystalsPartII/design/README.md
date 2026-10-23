# Isocrystals, vector bundles and Banach–Colmez spaces, Part II

This roadmap specifies the arithmetic Hom/Ext toolkit and the topological enlargement of classical Banach–Colmez spaces. Its main targets are the disc extension class, full faithfulness for reasonable period Pairs and qBC morphisms, and the period-valued height formula. It builds on `VectorBundlesAndIsocrystals`; it does not reconstruct its classical category or its curve correspondence.

This continuation owns the Hom/Ext and topological enlargement of classical Banach–Colmez spaces needed by p-adic cohomology comparisons. The definitive document is research/blueprint/readmes/VectorBundlesAndIsocrystalsPartII.md. Its mathematical specifications include hypotheses, APIs, tests and exact proof boundaries. The companion compact suggested file contains only statements whose carriers exist at the pinned libraries.

Use covariant functors in sympathetic algebras. Write B=B_dR^+(C), B_m=B/t^m, V_1(Λ)=Λ and U_d=(B_cris^+)^{φ=p^d}. A capitalized Module or Pair denotes a functor, while lower-case topological module or pair denotes its C-valued presentation. All Pairs are left-heart objects represented by a continuous injection, which need not be strict. Algebraic quotient and Hausdorff quotient are distinct.

K is complete discretely valued of characteristic zero with perfect residue field and C the completed algebraic closure. The arithmetic Ext theory requires finite K/Q_p. The arbitrary-K rigidity statements are labeled separately. The sympathetic/qBC theory also requires the countability assumptions in CN25: the residue field and O_C/p are countable. There is no Galois action in the qBC calculations unless explicitly introduced. Height uses dim(V_2)−dim(V_1) in an almost presentation.

The parent roadmap owns classical BC, Dimension, curvature, affine finite-length realization and the curve correspondence. PadicHodgeTheory owns period rings, almost C objects and Sen theory. LocallyAnalyticDistributions L0 owns nonarchimedean locally convex spaces, strictness, left hearts and completed projective tensors. None is rebuilt. The independent Fargues–Fontaine schematic/positive-Frobenius targets and Colmez’s classical skew field are precisely routed in the packet’s restructure proposals; the schematic and positive-Frobenius proposals are independent of this continuation. Its arithmetic fundamental theorem needs the exact analytic lemma assigned to the classical-correspondence proposal, recorded as G-FUNDAMENTAL until that supplier exists.

No general qBC splitting, qBC abelianness, Pair Ext equivalence, all-degree topological-module comparison or identification of VS Ext with TVS Ext without a theorem is asserted. Planned proof obligations are recorded in coverage and gaps rather than disguised as axioms or formal carriers.

## Baseline and ownership

Finite-K Fontaine full faithfulness (CN25 Theorem 2.1) is imported from `PadicHodgeTheory:R06.2/almost-c-representation-category`, whose statement and Sen proof already include it. The coefficient-field refinement in Remark 2.2 is requested from P7 as an input to general-base rigidity; no second finite-K theorem is planned here.

The baseline is Mathlib `082e2d37e8b0463410cdb532e111cd43d5a66174` and Tau Ceti `f790474821cf4256814db967cb154e7af3d0c369`. All implementation statuses are unchecked. A planned stage means its targets and proof boundaries are specified, not that their proofs have been completed.

Read the current main of TauCetiRoadmap, including AlgebraicVectorBundles README/Suggested, AdicSpaces, AlgebraicCurves scope and Layer 12, LocalGaloisGroups and relevant OperatorTheory boundaries. The new algebraic vector-bundle roadmap owns the sheaf/geometric carrier and generic sheaf tensor/duals; none is recreated here.

Searched current Tau Ceti source and pinned Tau Ceti f790474 for Banach–Colmez, sympathetic, Fargues, almost C, isocrystal and qBC declarations, and read the reviewed library audit. No dedicated implementation was found. Native functors, topological modules, linear maps, Banach open mapping and scalar torsion submodules are reused.

| Existing declaration | Reuse and limit |
| --- | --- |
| `mathlib:CategoryTheory.Functor` | Functor with object/map operations and identity/composition laws; does not supply sympathetic algebras or boundedness. |
| `mathlib:TopModuleCat` | Bundled topological modules and continuous linear maps; local convexity, completeness, strictness and the left heart come from L0, not this structure. |
| `mathlib:ContinuousLinearMap.isOpenMap` | Surjective continuous linear map of Banach spaces over a nontrivially normed field is open; completeness of both spaces is required. |
| `mathlib:ContinuousLinearMap.exists_preimage_norm_le` | For a surjective continuous linear map of Banach spaces there is C>0 giving a preimage of y of norm at most C times norm y; this is not a linear section. |
| `mathlib:Submodule.torsionBy` | Native submodule of elements killed by a scalar; W[t^d] below uses this existing object. |
| `mathlib:LinearMap` | Native semilinear maps; the compact suggested statement uses ordinary linear endomorphisms over a field, without constructing the missing generalized-invariant spaces. |

Native scalar torsion is `Submodule.torsionBy`: W[t^d] means the kernel of multiplication by t^d. Morphisms in a localized Pair category are morphisms after bicartesian localization, not just squares of a chosen pair of presentations. No C-algebra section of B_m→C is chosen.

The current upstream AlgebraicVectorBundles roadmap supplies finite locally free sheaves and their geometric realization, tensor/duals and pullback; generic sheaf bundles are not new targets here. AlgebraicCurves supplies its function-field theory in its stated finite-type setting. The proposed non-finite-type complete-curve extension must respect that boundary.

## Layer order and milestones

| Layer | Targets | Status |
| --- | --- | --- |
| `AC.0` | Rigidity of arithmetic period representations | planned |
| `AC.1` | Extensions and duality for almost C-representations | planned |
| `TVS.0` | Topological Vector Spaces and period Pairs | planned |
| `TVS.1` | The perfectoid disc extension class | planned |
| `TVS.2` | Reasonable period modules and comparison | planned |
| `QBC.0` | Quasi–Banach–Colmez spaces and their intrinsic filtration | planned |
| `H.0` | The period-valued height functor | planned |

The build order is AC.0→AC.1 and TVS.0→TVS.1→TVS.2→QBC.0, while H.0 proceeds independently from the parent classical BC and period inputs plus the requested derived-limit contract. H.0 is stated in VS, not silently in TVS. Every prerequisite below is a pinned declaration, another target, an existing supplier target, or a supplier stage with an explicit request.

## AC.0 — Rigidity of arithmetic period representations

Use the almost C-representation category and dimension–height invariant of PadicHodgeTheory R06.2. Equip all Banach Galois representations with strict short exact sequences; import finite-K Fontaine full faithfulness from R06.2, request the coefficient/Sen-weight refinement from P7, and prove the arbitrary perfect-residue-field Hom formulas for C, B_dR^+ and B_dR. Separate these two base-field regimes.

**Layer dependencies.** `PadicHodgeTheory:R06.1`, `PadicHodgeTheory:R06.2`, `PadicHodgeTheory:P7`, `ArithmeticGaloisRepresentations:R01.1`.

**Planets.** General-base period rigidity, Period Hom vanishing.

### Strict Banach Galois representations

**Target:** `VectorBundlesAndIsocrystalsPartII:AC.0/banach-galois-exact-category` (definition).

For a profinite G_K, B(G_K) has Q_p-Banach spaces up to equivalent norms with jointly continuous linear action, and continuous equivariant linear maps. A conflation is an algebraically exact sequence 0→W_1→W→W_2→0 of these maps; equivalently the first map identifies the closed kernel topologically and the second is an open surjection. This is an exact category. The imported almost C category is its full subcategory, with the same strict sequences.

**Hypotheses and conventions.**

- K satisfies the general base convention; no finiteness over Q_p is needed for this ambient exact category.

**Inputs.** `mathlib:TopModuleCat`, `mathlib:ContinuousLinearMap.isOpenMap`, `ArithmeticGaloisRepresentations:R01.1/continuous-representation`, `PadicHodgeTheory:R06.2/almost-c-representation-category`.

**Proof plan.**

1. Use continuous linear maps on Banach carriers, with continuous action as extra structure; import the finite-dimensional representation category from R01.1.
2. Apply the native Banach open mapping theorem to the surjection and the bijection onto its closed kernel. Kernels are closed and complete. Pullbacks of open surjections and pushouts of closed embeddings give the exact-category axioms.

**Planning API.**

| Name | Role | Contract |
| --- | --- | --- |
| `BanachGaloisRep` | data | Objects, continuous equivariant maps, forgetful functor to topological Q_p-modules. |
| `BanachGaloisRep.strictExact` | characterisation | Algebraic exactness of three Banach terms equals strict exactness. |
| `BanachGaloisRep.pullbackPushout` | compatibility | Pullbacks and pushouts give the exact structure, compatible with the almost C embedding. |

**Unit tests.**

- `BanachGaloisRep.zero` (degenerate): The zero representation is a zero object.
- `BanachGaloisRep.finite` (compatibility): Finite-dimensional Q_p representations retain their usual short exact sequences.
- `BanachGaloisRep.nonsplit` (non-example): The log χ extension of Q_p by Q_p is a conflation although it need not split equivariantly.

**Consumers.**

- `VectorBundlesAndIsocrystalsPartII:AC.1/almost-split-extensions`: Yoneda extensions are formed with this exact structure.
- `PadicHodgeTheory:R06.2/almost-c-representation-category`: Full faithfulness forgets period scalars into this category.

**Check.**

- A short exact sequence of finite-dimensional representations has its usual exact structure.

**Sources.**

- CN25, §2.1, pp. 8–9.

### Rigidity and density over a general base field

**Target:** `VectorBundlesAndIsocrystalsPartII:AC.0/general-base-rigidity-inputs` (theorem).

For every complete discretely valued K of characteristic zero with perfect residue field, End_cont,Q_p,G_K(C)=K. The canonical embedding of the algebraic closure Kbar into B_dR^+ has dense image for the usual inverse-limit Banach topology. For every finite L/K, C(j) has no nonzero G_L-invariants if j≠0; consequently smooth vectors in the period quotients used in Proposition 2.14 come from Kbar. These are separate inputs from the finite-K almost C theory.

**Hypotheses and conventions.**

- General K convention; Kbar denotes the algebraic closure, not K itself.

**Inputs.** `PadicHodgeTheory:R06.1`, `PadicHodgeTheory:P7`, `PadicHodgeTheory:R06.2/period-functors-perfect-residue-base`.

**Proof plan.**

1. Use the general-base Sen rigidity proof cited by CN25 Proposition 2.13(i); the finite-K class-field proof does not establish this generality.
2. Use the period-ring embedding and density result cited in Proposition 2.13(ii); identify Tate-twisted graded pieces and their invariant vanishing over every finite L/K.
3. The general-base Sen, density and invariant refinements are requested from R06.1/P7 and recorded as G-GENERAL until their exact contracts are verified.

**Check.**

- K is closed in C; substituting K for Kbar in either density statement fails.
- The identity of C corresponds to the scalar 1∈K.

**Sources.**

- CN25, Remark 2.2, p. 9; Proposition 2.13 and proof of Proposition 2.14, pp. 11–12.

### Continuous equivariant Hom in de Rham periods

**Target:** `VectorBundlesAndIsocrystalsPartII:AC.0/period-hom-rigidity` (theorem).

All Hom here means continuous Q_p-linear G_K-equivariant maps. For general K: Hom(C,C(j)) is K if j=0 and zero otherwise. For N≥0 and k≥1, Hom(B_dR^+,t^(−N)B_dR^+/t^kB_dR^+)=K via scalar multiplication followed by reduction, compatibly in k. End(B_dR^+)=End(B_dR)=K. For integers j<k, Hom(t^jB_dR^+/t^kB_dR^+,B_dR)=0. For 1≤k<ell, Hom(B_dR^+/t^k,B_dR^+/t^ell)=0.

**Hypotheses and conventions.**

- General K; maps are not assumed B_dR^+-linear.
- The period quotients and B_dR carry their natural topologies and Galois actions.

**Inputs.** `VectorBundlesAndIsocrystalsPartII:AC.0/general-base-rigidity-inputs`, `PadicHodgeTheory:R06.1/plan/de-rham-invariants`.

**Proof plan.**

1. Using VectorBundlesAndIsocrystalsPartII:AC.0/general-base-rigidity-inputs, a map on C(j) kills dense Kbar when j≠0. For the truncated target, smooth vectors and density first place the image in B_dR^+/t^k.
2. Reduce by θ to obtain a unique K-scalar; the difference vanishes on Kbar, and hence everywhere. Pass to the inverse limit to treat B_dR^+.
3. For B_dR conjugate by t^N, applying the positive-ring result to x↦t^N f(t^(−N)x); compare scalars on a common lattice.
4. For torsion sources choose elements of Kbar tending to t^k in B_dR^+ and to zero in the source. Continuity forces the K-scalar to vanish.

**Check.**

- Hom(B_1,B_2)=0 in this Galois category even though B_dR^+-linear maps C→B_2 exist without equivariance.
- The condition ell>k matters: End(B_k) contains the identity.

**Sources.**

- CN25, Proposition 2.14(i)–(iv), pp. 11–12.

**Layer acceptance.** All targets above have the stated API and checks; the following obligations must be discharged before proof closure: G-GENERAL.

## AC.1 — Extensions and duality for almost C-representations

Build almost-split extension and Yoneda comparison tools, the three-term generalized-invariant complex with its cyclotomic twist, the Ext table for B_dR^+/t^k against C(j), truncation vanishing, finite-dimensionality and Euler–Poincaré duality in degrees 0–2. Include the fundamental surjectivity theorem and the equivariant analytic-realization boundary.

**Layer dependencies.** `VectorBundlesAndIsocrystalsPartII:AC.0`, `ArithmeticGaloisDuality:R02.1`, `ArithmeticGaloisDuality:D7`, `VectorBundlesAndIsocrystals:VB3:general-BC`.

**Planets.** Arithmetic Ext comparison, Cyclotomic generalized invariants, Generalized-invariant Ext complex, Euler–Poincaré duality.

### Almost-split extensions

**Target:** `VectorBundlesAndIsocrystalsPartII:AC.1/almost-split-extensions` (theorem).

For finite K/Q_p, an extension in B(G_K) of two almost C-representations has almost C middle term if and only if it is almost split: there is a finite-dimensional stable Q_p-subspace Z of the kernel such that the pushed-out sequence after quotienting by Z admits a continuous equivariant splitting. In particular every short exact sequence in C(G_K) is almost split. Use this to construct resolutions comparing the finite-period and finite-Q_p subcategories with C(G_K).

**Hypotheses and conventions.**

- Finite K/Q_p; a splitting after a finite scalar extension alone is not the meaning of almost split.

**Inputs.** `VectorBundlesAndIsocrystalsPartII:AC.0/banach-galois-exact-category`, `PadicHodgeTheory:R06.2/almost-c-representation-category`, `PadicHodgeTheory:R06.2`.

**Proof plan.**

1. Use finite-dimensional modifications of almost presentations and Fontaine03 Theorem D: mod out a finite stable kernel to obtain a split extension of C-representations.
2. For the converse, recover the middle term by adjoining that finite kernel; the almost C presentation is stable under finite modifications.
3. Use Fontaine03 Propositions 5.5–5.6 to move extension classes to the finite-period or finite-Q_p subcategory. These resolution results are proof inputs of VectorBundlesAndIsocrystalsPartII:AC.1/yoneda-ext-comparison.

**Check.**

- An equivariantly nonsplit extension can still be almost split; this must not collapse the Ext table to zero.

**Sources.**

- CN25, §2.2.1 and Proposition 2.5, pp. 9–10; Fontaine03 Theorem D, pp. 291–292, and §§5.2, 5.4–5.5.
- Fontaine03, Theorem D, pp. 291–292; §§5.2, 5.4–5.5.

### Yoneda Ext comparison for arithmetic period objects

**Target:** `VectorBundlesAndIsocrystalsPartII:AC.1/yoneda-ext-comparison` (theorem).

For finite K/Q_p, both inclusions Rep_Qp(G_K)→C(G_K) and Rep_{B_dR^+}^{finite length}(G_K)→C(G_K) induce natural isomorphisms on Ext^i for every i≥0 between objects of the respective source category. The two source categories have their own exact structures. The comparison preserves Yoneda products, connecting maps and Tate twists.

**Hypotheses and conventions.**

- Finite K/Q_p; the statement does not identify Ext between mixed types by simply forgetting all scalar structure.

**Inputs.** `VectorBundlesAndIsocrystalsPartII:AC.1/almost-split-extensions`, `PadicHodgeTheory:R06.2/almost-c-representation-category`.

**Proof plan.**

1. Use full faithfulness PadicHodgeTheory:R06.2/almost-c-representation-category and almost-split resolutions VectorBundlesAndIsocrystalsPartII:AC.1/almost-split-extensions to show that source extensions represent all target classes and that equivalences of extensions can be taken in the source.
2. Apply the all-degree effacement argument of Fontaine03 Propositions 6.4–6.5, using Propositions 5.5–5.6. Keep it distinct from the degree-one full-subcategory observation.
3. Naturality of inclusion on Yoneda representatives supplies products and boundaries.

**Check.**

- Degree zero recovers Fontaine full faithfulness.
- Degree one for C,C(1) contains the nonsplit B_2 extension.

**Sources.**

- CN25, Proposition 2.5, pp. 9–10; Fontaine03 Propositions 6.4–6.5, pp. 357–359.
- Fontaine03, Propositions 6.4–6.5, pp. 357–359.

### Cyclotomic data and generalized invariants

**Target:** `VectorBundlesAndIsocrystalsPartII:AC.1/cyclotomic-generalized-invariants` (definition).

Fix compatible primitive p-power roots, χ, the cyclotomic Z_p-extension K_infty/K, a generator γ of its Galois group, and Fontaine’s finite-character correction π_t. Put t′=t/π_t, a uniformizer fixed by G_{K_infty}, with γ(t′)=χ(γ)t′. For a finite-length period representation W define W_(0) as the union over r≥1 of vectors killed by every product (g_1−1)…(g_r−1). Set W_(1)=t′((t′)^(−1)W)_(0), where (t′)^(−1)W denotes the Tate/period-twisted module, not an inverse operator on a torsion module.

**Hypotheses and conventions.**

- Finite K/Q_p; include the finite torsion part of the cyclotomic character when choosing π_t.
- The generalized-invariant subspaces are K-vector spaces.

**Inputs.** `PadicHodgeTheory:R06.2/almost-c-representation-category`, `PadicHodgeTheory:P7/plan/sen-module`, `PadicHodgeTheory:R06.1`.

**Proof plan.**

1. Import χ, t and cyclotomic descent from R06.1/P7; apply Fontaine03 §2.1 to normalize the torsion part.
2. Form the increasing union of simultaneous nilpotence kernels and transport by the period twist; verify functoriality and the Γ action.

**Planning API.**

| Name | Role | Contract |
| --- | --- | --- |
| `CyclotomicData.twistedUniformizer` | data | π_t, t′ and their finite-character/Galois transformation equations. |
| `GeneralizedInvariants` | constructor | Union of simultaneous nilpotence kernels, functorial in equivariant maps. |
| `GeneralizedInvariants.twist` | compatibility | W_(1)=t′((t′)^(−1)W)_(0) with induced t′ and χ(γ)^(−1)γ operators. |

**Unit tests.**

- `GeneralizedInvariants.zero` (degenerate): Both spaces vanish for the zero representation.
- `GeneralizedInvariants.B1` (computation): For W=C, W_(0)=K and W_(1)=0.
- `GeneralizedInvariants.B2` (computation): For W=B_2, W_(0)=K and W_(1)=Kt′; multiplication t′ between them is an isomorphism.

**Consumers.**

- `VectorBundlesAndIsocrystalsPartII:AC.1/generalized-invariant-complex`: These are the carriers and operators of the Ext-computing complex.

**Check.**

- The definition of W_(1) remains meaningful when t acts nilpotently.

**Sources.**

- CN25, §2.2.2 and footnote 3, p. 10; Fontaine03 §§2.1–2.2, pp. 297–311.
- Fontaine03, §§2.1–2.2, pp. 297–311.

### The twisted three-term Ext complex

**Target:** `VectorBundlesAndIsocrystalsPartII:AC.1/generalized-invariant-complex` (theorem).

For finite K/Q_p and a finite-length B_dR^+-representation W, Ext^i_{C(G_K)}(C,W) is naturally the degree-i cohomology of W_(0) → W_(1)⊕W_(0) → W_(1), in degrees 0,1,2, with d0(z)=(t′z,(γ−1)z) and d1(x,y)=t′y−(χ(γ)^(−1)γ−1)x. The composition is zero because γ∘t′=χ(γ)t′∘γ. All other degrees vanish.

**Hypotheses and conventions.**

- The two generalized-invariant spaces and γ are those of VectorBundlesAndIsocrystalsPartII:AC.1/cyclotomic-generalized-invariants.

**Inputs.** `VectorBundlesAndIsocrystalsPartII:AC.1/yoneda-ext-comparison`, `VectorBundlesAndIsocrystalsPartII:AC.1/cyclotomic-generalized-invariants`, `PadicHodgeTheory:P7/plan/sen-module`, `ArithmeticGaloisDuality:R02.2`, `mathlib:LinearMap`.

**Proof plan.**

1. Use VectorBundlesAndIsocrystalsPartII:AC.1/yoneda-ext-comparison to work in finite-length period representations.
2. Apply Fontaine03 Theorem 2.14: finite Galois/cyclotomic descent produces small representations and the two-operator Lie algebra complex; compare its cohomology with the displayed generalized-invariant model.
3. Check d1d0 using the commutation relation; omitting χ(γ)^(−1) changes the complex. The suggested Lean file records precisely this algebraic check on native carriers.

**Check.**

- For W=C the complex is K→K with zero differential in degrees 0,1, and H²=0.
- For W=C(1) the only nonzero pieces are K in degrees 1 and 2.

**Sources.**

- CN25, Proposition 2.7 and equation (2.8), p. 10; Fontaine03 Theorem 2.14 and proof, pp. 309–311.
- Fontaine03, Theorem 2.14 and proof, pp. 309–311.

### Euler–Poincaré and Ext duality

**Target:** `VectorBundlesAndIsocrystalsPartII:AC.1/euler-poincare-duality` (theorem).

For finite K/Q_p and X,Y∈C(G_K), all Ext^i(X,Y) are finite-dimensional Q_p-spaces and vanish for i≥3. Their alternating Euler characteristic is −[K:Q_p] ht(X)ht(Y). There is a natural trace Ext²(X,X(1))→Q_p such that Yoneda composition gives a perfect pairing Ext^i(X,Y)×Ext^(2−i)(Y,X(1))→Q_p for 0≤i≤2.

**Hypotheses and conventions.**

- The trace and pairing are Q_p-linear; Ext spaces need not have a K-vector-space structure for arbitrary X,Y.

**Inputs.** `VectorBundlesAndIsocrystalsPartII:AC.1/almost-split-extensions`, `VectorBundlesAndIsocrystalsPartII:AC.1/yoneda-ext-comparison`, `VectorBundlesAndIsocrystalsPartII:AC.1/generalized-invariant-complex`, `PadicHodgeTheory:R06.2/almost-c-representation-category`, `ArithmeticGaloisDuality:D7/derived-local-duality`, `ArithmeticGaloisDuality:R02.1/rationalization`.

**Proof plan.**

1. Use VectorBundlesAndIsocrystalsPartII:AC.1/almost-split-extensions and almost presentations to reduce the cohomological δ-functors to finite-dimensional Q_p and finite-length period pieces.
2. For Q_p pieces import local Tate duality with rational coefficients from D7; for period pieces use Fontaine03 §6.3–6.5 and the two-operator computation VectorBundlesAndIsocrystalsPartII:AC.1/generalized-invariant-complex.
3. Extend the trace from the basic cases, verifying compatibility with connecting morphisms; dévissage and the five lemma prove perfectness and finiteness. Euler additivity reduces to rank/height on the same presentations.
4. Fontaine03 Theorem 6.1 gives the global result; use the signed version independently stated in CN25 Theorem 2.6, not the unsigned FF18 display.

**Check.**

- For X=Y=Q_p, the Euler characteristic is −[K:Q_p].
- H²(G_K,Q_p(1))≅Q_p is nonzero: vanishing cannot start at degree 2.
- For X=C,Y=C(j), height zero forces alternating Euler characteristic zero.

**Sources.**

- CN25, Theorem 2.6, p. 10; Fontaine03 Theorem 6.1 and §§6.2–6.5, pp. 355–368; FF18 preface Proposition 2.28, p. 23 (corrected sign).
- Fontaine03, Theorem 6.1 and §§6.2–6.5, pp. 355–368.

### Ext table for truncated periods and Tate twists

**Target:** `VectorBundlesAndIsocrystalsPartII:AC.1/truncated-period-ext-table` (theorem).

For k≥1 and j∈Z, Ext^0(B_k,C(j)) is K for j=0 and zero otherwise; Ext^1 is K for j=0 or j=k and zero otherwise; Ext^2 is K for j=k and zero otherwise. All higher Ext vanish. These are natural K-linear identifications for these particular period objects, in C(G_K). A nonzero extension of B_k by C(k) has middle object isomorphic to B_(k+1); this forgets a specified identification of the two ends and does not make all nonzero extension classes equal.

**Hypotheses and conventions.**

- Finite K/Q_p; k≥1 so the two degree-one cases j=0 and j=k are distinct.

**Inputs.** `VectorBundlesAndIsocrystalsPartII:AC.1/generalized-invariant-complex`, `VectorBundlesAndIsocrystalsPartII:AC.1/euler-poincare-duality`.

**Proof plan.**

1. Use duality VectorBundlesAndIsocrystalsPartII:AC.1/euler-poincare-duality to reduce to Ext(C,B_k(1−j)), then compute VectorBundlesAndIsocrystalsPartII:AC.1/generalized-invariant-complex. The spaces W_(0) and W_(1) occur for 1≤j≤k and 0≤j≤k−1 respectively; where both occur multiplication by t′ is invertible.
2. The remaining endpoint classes yield the displayed table; normalize the j=k class by the sequence 0→C(k)→B_(k+1)→B_k→0.
3. A nonzero scalar multiple changes the framing, while rescaling an end identifies its middle period representation.

**Check.**

- For k=1,j=0 the dimensions in degrees 0,1,2 are (1,1,0); log χ generates degree one.
- For k=1,j=1 they are (0,1,1); B_2 generates degree one.
- For k=2,j=1 all three groups vanish.

**Sources.**

- CN25, Lemma 2.10, pp. 10–11; Remark 2.11 and Example 2.12, p. 11.

### Vanishing into longer truncated periods

**Target:** `VectorBundlesAndIsocrystalsPartII:AC.1/truncation-vanishing` (theorem).

For finite K/Q_p, N≥0 and 1≤i<j, Hom_{C(G_K)}(B_i,t^(−N)B_dR^+/t^jB_dR^+)=0 and Ext^1 in the same category is zero.

**Hypotheses and conventions.**

- These are equivariant maps/extensions of almost C-representations, not all algebraic B_dR^+-module maps.

**Inputs.** `VectorBundlesAndIsocrystalsPartII:AC.1/generalized-invariant-complex`, `VectorBundlesAndIsocrystalsPartII:AC.1/yoneda-ext-comparison`.

**Proof plan.**

1. Devise the source by its successive C(r) quotients.
2. For each twist the two generalized-invariant terms in VectorBundlesAndIsocrystalsPartII:AC.1/generalized-invariant-complex are one-dimensional and t′ is an isomorphism between them, so the complex is acyclic.
3. Apply the long exact sequences to recover B_i.

**Check.**

- N=0,i=1,j=2 gives Hom(C,B_2)=Ext¹(C,B_2)=0.
- i=j is excluded since the identity map survives.

**Sources.**

- CN25, Corollary 2.9 and proof, p. 10.

### The fundamental theorem for an extension of C

**Target:** `VectorBundlesAndIsocrystalsPartII:AC.1/fundamental-arithmetic-surjectivity` (theorem).

Let K/Q_p be finite, V a continuous Q_p-representation of dimension h, and 0→V→E→C→0 a strict Banach G_K extension. If a continuous equivariant Q_p-linear f:E→C satisfies f(E)≠f(V), then f is onto and ker f is a finite-dimensional Q_p-representation of dimension h.

**Hypotheses and conventions.**

- The hypothesis compares images, not merely f≠0.

**Inputs.** `VectorBundlesAndIsocrystalsPartII:AC.0/banach-galois-exact-category`, `PadicHodgeTheory:R06.2/almost-c-representation-category`, `PadicHodgeTheory:R06.2`.

**Proof plan.**

1. Choose the finite-period presentation of the extension in Fontaine03 §4.1; it identifies E with an explicit E_α obtained from fundamental period extensions.
2. The induced additive analytic correspondence is nontrivial exactly when f(E)≠f(V). Use the fundamental correspondence surjectivity/kernel theorem, requested from the classical correspondence owner without using this theorem in reverse.
3. Keep the arithmetic descent and kernel dimension count in Fontaine03 Theorem 4.1; the source proof depends on Colmez’s independent analytic fundamental lemma. This dependency is recorded as G-FUNDAMENTAL.

**Check.**

- For E=V⊕C and f the projection, the kernel is V.
- A map supported only on V is excluded by the image hypothesis.

**Sources.**

- FF18, Preface Theorem 2.25 and proof, pp. 21–22.
- Fontaine03, Theorem 4.1, pp. 328–329; introduction §1.6, pp. 292–294.

### Equivariant analytic realization boundary

**Target:** `VectorBundlesAndIsocrystalsPartII:AC.1/equivariant-analytic-realization` (construction).

For finite K/Q_p, construct an exact faithful analytic realization of almost C-representations as classical BC functors with continuous G_K action, with evaluation at C naturally the original Banach representation. Require functoriality and independence of almost presentation. Forgetting the G_K action gives a faithful functor to BC; full faithfulness of that forgetful functor is not a target. The stronger comparison with the correctly defined equivariant BC category is an explicit comparison obligation, not inferred from the word embedding in FF18.

**Hypotheses and conventions.**

- Almost C and classical BC have different morphism conditions until equivariance is specified; G-ANALYTIC records the precise equivariant morphism/category construction still to verify.

**Inputs.** `VectorBundlesAndIsocrystalsPartII:AC.1/almost-split-extensions`, `VectorBundlesAndIsocrystalsPartII:AC.1/fundamental-arithmetic-surjectivity`, `VectorBundlesAndIsocrystals:VB3:general-BC/exact-banach-points`, `VectorBundlesAndIsocrystals:VB3:general-BC/banach-colmez-presentations`.

**Proof plan.**

1. Realize the explicit E_α extensions used in the fundamental theorem and their finite-dimensional modifications.
2. Use almost-split presentations to construct the functor; prove descent for different presentations and identify evaluation, rather than choose a nonfunctorial BC lift of each object.
3. The cited preface states realizability but does not prove all these functorial comparisons. Retain G-ANALYTIC and the parent BC proof obligations.

**Planning API.**

| Name | Role | Contract |
| --- | --- | --- |
| `AlmostC.analyticRealization` | constructor | Functor to BC with G_K action and natural C-evaluation comparison. |
| `AlmostC.analyticRealization.exact` | compatibility | Strict arithmetic sequences become BC-exact sequences. |
| `AlmostC.analyticRealization.presentationIndependent` | equivalence | Canonical comparison for equivalent almost presentations, satisfying cocycle compatibility. |

**Unit tests.**

- `AlmostC.analyticRealization.finite` (computation): A finite Q_p representation is realized by the corresponding constant BC functor with its action.
- `AlmostC.analyticRealization.C` (compatibility): C is realized by V_1 with semilinear action.
- `AlmostC.analyticRealization.forgetAction` (non-example): End_GK(C)=K while End_BC(V_1)=C; forgetting G_K cannot be full for K≠C.

**Consumers.**

- `FF18 preface Remark 2.26`: Relates almost C objects to classical BC realizations without identifying their nonequivariant Hom groups.

**Check.**

- Evaluation must recover both the action and Banach topology.

**Sources.**

- FF18, Preface Remark 2.26(i), p. 22.
- Fontaine03, Theorem 4.1, pp. 328–329; introduction §1.6, pp. 292–294.

**Layer acceptance.** All targets above have the stated API and checks; the following obligations must be discharged before proof closure: G-FUNDAMENTAL, G-ANALYTIC.

## TVS.0 — Topological Vector Spaces and period Pairs

In the left heart of nonarchimedean locally convex Q_p-spaces construct covariant functors on sympathetic algebras with uniform boundedness on bounded sets, pointwise exactness and Yoneda Ext. Construct uniformly t-power-torsion period Modules by separated completed balanced tensor, and Pairs as injective two-term complexes localized at bicartesian squares; preserve non-strict injections and their algebraic quotients.

**Layer dependencies.** `LocallyAnalyticDistributions:L0`, `PadicHodgeTheory:R06.1`, `VectorBundlesAndIsocrystals:VB3:general-BC`.

**Planets.** Topological Vector Spaces, Period Modules, Period Pairs.

### Topological Vector Spaces

**Target:** `VectorBundlesAndIsocrystalsPartII:TVS.0/topological-vector-spaces` (definition).

A Topological Vector Space is a covariant functor W:Symp_C→LH(C_Qp), with Q_p-linear structure maps, such that for every Λ,Λ′ and bounded subset A of W(Λ), the union of u_*(A) over all continuous C-algebra maps u:Λ→Λ′ is bounded in W(Λ′). Morphisms are natural transformations. Exactness means exactness in the left heart at every Λ. Hom and Ext^i_TVS mean natural maps and Yoneda extensions for this exact structure. Boundedness is interpreted in the classical quotient realization of a left-heart object, retaining its non-Hausdorff quotient topology; verify independence of the injective presentation.

**Hypotheses and conventions.**

- Symp_C is the parent’s separable, C-point-detected sympathetic category, with O_C/p countable.
- C_Qp is the nonarchimedean locally convex category of L0; an object of its left heart is represented by an injection E_1→E_0 in degrees −1,0 and localized at bicartesian squares, not replaced by its Hausdorff cokernel.

**Inputs.** `mathlib:CategoryTheory.Functor`, `LocallyAnalyticDistributions:L0/strict-derived-category-left-heart`, `LocallyAnalyticDistributions:L0/bounded-sets-strong-dual`, `VectorBundlesAndIsocrystals:VB3:general-BC/sympathetic-vector-spaces`.

**Proof plan.**

1. Import L0’s strict derived category and left heart, including the classical embedding and its exactness comparison.
2. Form the full subcategory of the functor category satisfying the stated uniform boundedness. Construct the inherited pointwise exact structure and Yoneda extensions; prove boundedness stable under the finite exact constructions used here.
3. Identify the classical quotient realization under bicartesian localization. The exact-category/boundedness verification is the explicit G-TVS obligation; the plain functor category alone is insufficient.

**Planning API.**

| Name | Role | Contract |
| --- | --- | --- |
| `TVS` | data | Objects, natural transformations, additive structure and C-evaluation. |
| `TVS.uniformBounded` | characterisation | Uniform boundedness over all algebra maps, stronger than continuity of each individual map. |
| `TVS.exact` | compatibility | Pointwise left-heart exact structure and the induced Yoneda Ext δ-functors. |
| `TVS.underlyingVS` | functoriality | Apply the algebraic quotient E_0/E_1 at each Λ to obtain a VS; verify invariance under bicartesian squares. |

**Unit tests.**

- `TVS.zero` (degenerate): The zero functor and zero maps are TVS objects and morphisms.
- `TVS.V1` (compatibility): V_1(Λ)=Λ with its Banach topology is a TVS, since algebra maps preserve the spectral unit ball.
- `TVS.leftHeartQuotient` (non-example): The injection c0(N,C)→c0(N,C), (x_n)↦(p^n x_n), is dense and proper. Its two-term object has a nonzero algebraic quotient in the left heart; Hausdorffization incorrectly kills it.

**Consumers.**

- `VectorBundlesAndIsocrystalsPartII:TVS.0/period-module-realization`: Period tensor realizations take values in this category.
- `VectorBundlesAndIsocrystalsPartII:TVS.1/disc-ext-class`: Disc extension classes are Yoneda Ext in TVS.
- `VectorBundlesAndIsocrystalsPartII:QBC.0/filtered-quasi-banach-colmez-spaces`: qBC is an enlargement inside TVS.

**Check.**

- Pointwise exactness is left-heart exactness, including nonclassical quotients.

**Sources.**

- CN25, Definition 4.1, p. 20; Remarks 4.2–4.3, p. 21; Schneiders99 Corollary 1.2.21, pp. 24–25.
- Schneiders99, Corollary 1.2.21, pp. 24–25.

### Classical BC objects carry the TVS boundedness

**Target:** `VectorBundlesAndIsocrystalsPartII:TVS.0/classical-bc-to-tvs` (comparison).

The parent’s canonical Banach topologies on W(Λ) for a classical BC W make W a TVS; BC morphisms are TVS morphisms, and exact BC sequences are pointwise strict and hence TVS-exact. Evaluation at C retains its topology and detects BC morphisms; this does not assert that arbitrary Banach spaces are BC or that their topology determines Dimension.

**Hypotheses and conventions.**

- Use the parent’s exact Banach point realization, not an arbitrary topology on a VS.

**Inputs.** `VectorBundlesAndIsocrystalsPartII:TVS.0/topological-vector-spaces`, `VectorBundlesAndIsocrystals:VB3:general-BC/exact-banach-points`, `VectorBundlesAndIsocrystals:VB3:general-BC/banach-colmez-presentations`, `VectorBundlesAndIsocrystals:VB3:general-BC/bc-hn-decomposition`.

**Proof plan.**

1. Cover W by finite sums of universal covers of p-divisible groups together with constant finite-dimensional Q_p parts, as in CN25 Remark 4.2.
2. Their natural lattices are functorial for every sympathetic-algebra map, providing the uniform bound. Quotient the bounded presentations and use exactness at sympathetic points.

**Check.**

- The C-points of C/Q_p are a Banach quotient, with BC height −1 rather than zero.

**Sources.**

- CN25, Remark 4.2, p. 21, with decomposition (3.14), pp. 16–17.

### Completed balanced period Modules

**Target:** `VectorBundlesAndIsocrystalsPartII:TVS.0/period-module-realization` (construction).

Put B=B_dR^+(C), B_m=B/t^m, m≥1. For a complete Hausdorff locally convex B_m-module M with continuous scalar action, define Mbold(Λ)=B_m(Λ) completed-balanced-tensor_{B_m} M. The tensor is the separated completion of the projective Q_p tensor, divided by the closed span of (a b)⊗x−a⊗(b x). Regard it as a classical left-heart object. Define the bounded period Module category to consist of these realizations, with natural maps linear over B_m(Λ) at every Λ. Increasing m through B_n→B_m does not change the functor when t^mM=0. Evaluation at C is M. The completeness requirement is necessary for this completed tensor convention; the broader wording for arbitrary topological models in Definition 4.4 requires the completion clarification G-TENSOR.

**Hypotheses and conventions.**

- Period rings are imported from R06.1 as functors, with topology and reductions.
- A Module has a single uniform exponent m, not a different torsion exponent for every vector.
- The reasonable Fréchet and compact-type model comparison below includes the necessary completeness/separation checks.

**Inputs.** `VectorBundlesAndIsocrystalsPartII:TVS.0/topological-vector-spaces`, `PadicHodgeTheory:R06.1`, `LocallyAnalyticDistributions:L0/projective-tensor-product`, `LocallyAnalyticDistributions:L0/c0-completed-tensor`, `LocallyAnalyticDistributions:L0/banach-c0-models`.

**Proof plan.**

1. Use L0’s completed projective tensor, then impose the closed balancing relations and its universal property.
2. For a countable topological Banach basis of Λ/C lift the basis to B_m(Λ); obtain a topological identification with c0(I,B_m). After tensoring the realization is c0(I,M), with the appropriate completed locally convex meaning for non-Banach M.
3. Recover evaluation at C and prove continuity/uniform boundedness using the lattice lifts and their multiplicative structure constants. Basis independence follows from the universal property, not from choosing a canonical basis.

**Planning API.**

| Name | Role | Contract |
| --- | --- | --- |
| `PeriodModule.realize` | constructor | Completed balanced tensor realization, its period action and topology. |
| `PeriodModule.evalC` | equivalence | Natural evaluation isomorphism Mbold(C)≅M for complete separated M. |
| `PeriodModule.uniformExponent` | characterisation | A model killed by t^m remains so after every sympathetic base change. |
| `PeriodModule.changeExponent` | compatibility | For n≥m, realizing a t^m-torsion module via B_n agrees with realization via B_m. |
| `PeriodModule.finiteLength` | compatibility | On finite-length models recover VectorBundlesAndIsocrystals VB3:general-BC/affine-finite-length-equivalence. |

**Unit tests.**

- `PeriodModule.zero` (degenerate): The zero model realizes to the zero TVS.
- `PeriodModule.Bm` (computation): Realization of the regular B_m-module is Λ↦B_m(Λ), and C-evaluation is B_m.
- `PeriodModule.balance` (characterisation): For b∈B_m, the tensors ab⊗x and a⊗bx agree; using an unbalanced Q_p tensor fails this check.
- `PeriodModule.nonUniformTorsion` (non-example): The algebraic direct sum of all B_m with unbounded exponents is not a uniformly t-power-torsion Module.

**Consumers.**

- `VectorBundlesAndIsocrystalsPartII:TVS.0/period-pairs`: The two terms of a Pair are period realizations.
- `VectorBundlesAndIsocrystalsPartII:TVS.2/torsion-source-hom-ext`: Torsion-source calculations evaluate and tensor these models.

**Check.**

- For finite-length M this must agree with the parent affine BC realization.

**Sources.**

- CN25, Definition 4.4(i) and footnote 10, p. 21.

### Period Pairs in the left heart

**Target:** `VectorBundlesAndIsocrystalsPartII:TVS.0/period-pairs` (definition).

A topological period pair is a continuous injective B_m-linear map M_1→M_2 of the model modules just specified, for one m, without a strictness requirement. Its associated capitalized Pair is the pointwise left-heart cokernel [Mbold_1→Mbold_2], in degrees −1,0. Morphisms are period-linear morphisms of these left-heart objects after bicartesian localization, not merely unlocalized commutative squares. Its underlying algebraic C-value is M_2/M_1, with no closure of M_1 taken.

**Hypotheses and conventions.**

- Prove the realized map remains injective, using the countable c0 tensor model; for more general topologies this is included in G-TENSOR.
- A Module is the Pair [0→Mbold].

**Inputs.** `VectorBundlesAndIsocrystalsPartII:TVS.0/period-module-realization`, `LocallyAnalyticDistributions:L0/strict-derived-category-left-heart`, `LocallyAnalyticDistributions:L0/strict-morphisms-quasi-abelian`.

**Proof plan.**

1. Apply the left-heart construction of L0 to topological B_m-modules and to their TVS realizations.
2. Use c0-coordinate injection and period scalar compatibility to obtain a well-defined Pair functor; localize at the same bicartesian squares so equivalent presentations give equivalent Pairs.
3. Construct the forgetful maps on Hom and Yoneda Ext; only the comparison theorems actually proved below may assert they are isomorphisms.

**Planning API.**

| Name | Role | Contract |
| --- | --- | --- |
| `PeriodPair` | constructor | Left-heart object of an injective topological period-module map. |
| `PeriodPair.localize` | equivalence | Bicartesian squares identify presentations; induced morphisms respect identity and composition. |
| `PeriodPair.algebraicValue` | data | Underlying algebraic quotient M_2/M_1, invariant under localization. |
| `PeriodPair.moduleEmbedding` | compatibility | M↦[0→M] and the exact sequence 0→M_1→M_2→Pair→0 in the left heart. |

**Unit tests.**

- `PeriodPair.zero` (degenerate): [M→M] with identity injection represents zero.
- `PeriodPair.module` (compatibility): [0→B_m] is the usual B_m period Module.
- `PeriodPair.nonStrict` (non-example): On c0(N,C), the C-linear injection (x_n)↦(p^n x_n) has dense proper image: finite-support vectors are in the image, but (p^n)_n has no c0 preimage. Its Pair has nonzero algebraic quotient; replacing the image by its closure incorrectly gives zero.

**Consumers.**

- `VectorBundlesAndIsocrystalsPartII:TVS.2/pair-hom-from-torsion`: Pair Hom uses the algebraic quotient.
- `VectorBundlesAndIsocrystalsPartII:QBC.0/filtered-quasi-banach-colmez-spaces`: A Pair is the middle graded term of a qBC.

**Check.**

- The natural maps of Definition 4.4 are defined even when they have not been proved invertible.

**Sources.**

- CN25, Definition 4.4(ii) and Remark 4.3, p. 21.

**Layer acceptance.** All targets above have the stated API and checks; the following obligations must be discharged before proof closure: G-TVS, G-TENSOR.

## TVS.1 — The perfectoid disc extension class

Construct the translation group of the sympathetic disc, normalized exponential characters and a perfectoid Kummer tower. Prove the bounded-denominator analytic cocycle lemma, additive rank and rank-zero splitting. Compute Ext^1_TVS(V_1,V_1)=C with B_2 representing 1, and identify the same class through translation-invariant pro-étale cohomology.

**Layer dependencies.** `VectorBundlesAndIsocrystalsPartII:TVS.0`, `PerfectoidSpaces:P3`, `PerfectoidSpaces:P6`, `PerfectoidSpaces:P9`.

**Planets.** Disc translation group, Perfectoid disc cover, Additive rank and splitting, Disc extension class.

### The sympathetic disc and translation characters

**Target:** `VectorBundlesAndIsocrystalsPartII:TVS.1/disc-translations` (construction).

For sympathetic Λ let Λtilde{X} be its sympathetic disc closure and H_Λ the continuous automorphisms over Λ{X}. Let T_Λ consist of continuous Λ-algebra automorphisms restricting to X↦X+x with x∈O_Λ. Then 1→H_Λ→T_Λ→(O_Λ,+)→0 is exact. Fix α_C with α_C(X)=0. For a∈C choose n with p^n a∈2pO_C and the compatible p^n-th root E_a of exp(p^n aX) normalized at zero. Its eigencharacter χ_a:T_C→C^× restricts on H_C to μ_{p∞}, defining ψ_a:H_C→Q_p by the chosen ε. This ψ_a is invariant under conjugation by T_C.

**Hypotheses and conventions.**

- The closure and lifts are not declared uniquely functorial; different lifts are controlled by H_Λ, as in Colmez02 Proposition 5.20.
- Characters χ_a here are disc characters, distinct from the cyclotomic χ.

**Inputs.** `VectorBundlesAndIsocrystalsPartII:TVS.0/topological-vector-spaces`, `VectorBundlesAndIsocrystals:VB3:general-BC/sympathetic-vector-spaces`, `PadicHodgeTheory:R06.1`, `PerfectoidSpaces:P6`.

**Proof plan.**

1. Use the sympathetic closure/lifting theorem of Colmez02 5.20 and 5.23, requested as an extension of the parent sympathetic-algebra API.
2. Take the kernel of the translation map and lift each translation to prove exactness; use normalized compatible roots to define χ_a and ψ_a.
3. Conjugation invariance follows from χ_a being a character; compare choices through H_Λ.

**Planning API.**

| Name | Role | Contract |
| --- | --- | --- |
| `DiscTranslations` | constructor | T_Λ, H_Λ, translation map and their topologies. |
| `DiscTranslations.exact` | characterisation | Kernel H_Λ and surjectivity onto O_Λ. |
| `DiscTranslations.characters` | data | E_a, χ_a, ψ_a with normalization and conjugation invariance. |
| `DiscTranslations.liftIndependence` | compatibility | Changing an algebra-map lift acts through H_Λ; rank-zero expressions descend independently of the choice. |

**Unit tests.**

- `DiscTranslations.zero` (degenerate): E_0=1 and χ_0=1, ψ_0=0.
- `DiscTranslations.exponential` (computation): If a∈2pO_C, E_a is the ordinary convergent exponential on the disc.
- `DiscTranslations.kernel` (characterisation): An automorphism lies in H_Λ iff its translation parameter is zero.

**Consumers.**

- `VectorBundlesAndIsocrystalsPartII:TVS.1/perfectoid-kummer-tower`: The normalized E_(1/p^n) generate the perfectoid tower.
- `VectorBundlesAndIsocrystalsPartII:TVS.1/additive-lifts-and-rank`: H-rank and additive lifting are measured using this group.

**Check.**

- The zero translation maps exactly to H_Λ.

**Sources.**

- CN25, §4.2, pp. 22–23; Colmez02 Propositions 5.20 and 5.23, pp. 30–32.
- Colmez02, Propositions 5.20 and 5.23, pp. 30–32.

### The explicit perfectoid cover of the unit disc

**Target:** `VectorBundlesAndIsocrystalsPartII:TVS.1/perfectoid-kummer-tower` (theorem).

For odd p choose compatible p-power roots of p and set Y_n=(E_(1/p^n)−1)/p^(1/p^(n+1)). The ring O_C{X}[Y_n:n≥0] is integral over O_C{X}; its p-adic completion is perfectoid. Modulo p^(1/p), Y_0^p=X and Y_n^p=Y_(n−1) for n≥1. At p=2 use E_2 instead: set Y_n=(E_(2/2^n)−1)/2^(2/2^(n+1)); then Y_0²+Y_0=X modulo 2 and Y_n²=Y_(n−1) modulo 2^(1/2) for n≥1. The corrected uncompleted tower is integral and its p-adic completion is perfectoid and its character is ψ_2. Compare ψ_2 with ψ_1 after inverting 2 in the rational cohomology calculation.

**Hypotheses and conventions.**

- Use the normalized roots of VectorBundlesAndIsocrystalsPartII:TVS.1/disc-translations; perfectoidness includes completion, not just adjoining symbols.

**Inputs.** `VectorBundlesAndIsocrystalsPartII:TVS.1/disc-translations`, `PerfectoidSpaces:P3/almost-purity-theorem`, `PerfectoidSpaces:P1/frobenius-surjectivity-criterion`.

**Proof plan.**

1. For odd p expand (1+p^(1/p)Y_0)^p=exp(pX), divide by p and read the integral monic equation. This exponential does not belong to C{X} at p=2, which is why a separate normalization is necessary.
2. For successive roots expand (1+p^(1/p^(n+1))Y_n)^p=1+p^(1/p^n)Y_(n−1). At p=2 the first equation is (1+2Y_0)²=exp(4X); divide by 4 to obtain Y_0²+Y_0=(exp(4X)−1)/4. The higher equations give the stated square-root congruences.
3. Frobenius hits every Y_n by the next level. At p=2 it therefore also hits Y_0²+Y_0, hence X; Frobenius hits the constants because O_C is integral perfectoid. Pass to the p-adic completion and use the perfectoid criterion and almost purity from P3. The rational comparison of characters and its norm bound stay in G-DISC.

**Check.**

- Check n=0 separately: its predecessor is X, not a nonexistent Y_(−1).

**Sources.**

- CN25, Lemma 4.9 and footnote 12, p. 23.

### Bounded denominators for additive analytic cocycles

**Target:** `VectorBundlesAndIsocrystalsPartII:TVS.1/bounded-analytic-cocycles` (theorem).

If f∈O_C{Y,Z} satisfies f(Y,Z)−f(X+Y,Z)+f(X,Y+Z)−f(X,Y)=0, there is u∈p^(−1)O_C{X} with f(Y,Z)=u(Y+Z)−u(Y)−u(Z). If f(0,0)=0, u may be normalized by u(0)=0; its linear coefficient is undetermined and may be fixed to zero. The uniform denominator bound is retained for vector-valued Banach coefficients.

**Hypotheses and conventions.**

- The convergence condition is that coefficients tend to zero, not merely that the formal series exists.

**Inputs.** `VectorBundlesAndIsocrystalsPartII:TVS.1/disc-translations`, `LocallyAnalyticDistributions:L0/nonarchimedean-locally-convex-spaces`, `PadicHodgeTheory:R06.1`.

**Proof plan.**

1. Subtract the constant cocycle. Integrate the first Y-derivative to find u formally; the cocycle identity forces the remaining homogeneous pieces to vanish.
2. For each degree k≥2 use the coefficient b_(i,k−i). Choose i=1 when p does not divide k, or i=p^(r−1) for r=v_p(k)≥1; then 1≤i<k and v_p(binomial(k,i))=1 in the latter case. Thus |a_k|≤p |b_(i,k−i)|, including when k is a power of p. This both bounds a_k and proves a_k→0.
3. For a nonnormalized constant c, add −c to the primitive, since the coboundary of a constant is its negative.

**Check.**

- The cocycle f=c is the coboundary of u=−c.
- For f=YZ one may take u=X²/2, displaying the denominator at p=2.
- A formal primitive without coefficients tending to zero is insufficient.

**Sources.**

- CN25, Lemma 4.13 and proof, p. 24.

### Additive lifts and rank-zero splitting

**Target:** `VectorBundlesAndIsocrystalsPartII:TVS.1/additive-lifts-and-rank` (construction).

For a TVS extension 0→V_1→E→V_1→0 and v∈C, a lift of vX to E(Ctilde{X}) can be modified by an analytic element to an additive lift ell_v. Its H_C-differences have the form (σ−1)ell_v=λ_v ψ_1(σ), with λ_v∈C independent of the lift. The additive rank is the Z_p-rank of the image of H_C under σ↦(σ−1)ell_v; it is at most one. If v≠0 and λ_v=0, translations of ell_v define a functorial TVS splitting. The rank is a monodromy rank, not C-dimension.

**Hypotheses and conventions.**

- Fix the endpoint identifications with V_1 and the normalization α_C(ell_v)=0.
- Bounded almost descent of the cocycle, including its norm estimate, is the precise requested P9 input G-DISC.

**Inputs.** `VectorBundlesAndIsocrystalsPartII:TVS.1/disc-translations`, `VectorBundlesAndIsocrystalsPartII:TVS.1/perfectoid-kummer-tower`, `VectorBundlesAndIsocrystalsPartII:TVS.1/bounded-analytic-cocycles`, `VectorBundlesAndIsocrystalsPartII:TVS.0/topological-vector-spaces`, `PerfectoidSpaces:P9`.

**Proof plan.**

1. The Kummer cover VectorBundlesAndIsocrystalsPartII:TVS.1/perfectoid-kummer-tower and almost descent write the initial cocycle as λ_h ψ_1 plus a bounded coboundary. Translation invariance forces λ_h∈C.
2. Construct c_τ=(τ−1)ell−α_Λ(τell), constant along H_Λ cosets. Its defect is an analytic two-cocycle; apply VectorBundlesAndIsocrystalsPartII:TVS.1/bounded-analytic-cocycles to remove the defect (CN25 Lemma 4.11).
3. When rank is zero define s(x)=(τ_(x/v)−1)ell_v for x∈vO_Λ and extend Q_p-linearly. Independence from the chosen lift uses H-invariance; Colmez02 5.20 gives compatibility in Λ.

**Planning API.**

| Name | Role | Contract |
| --- | --- | --- |
| `AdditiveLift` | constructor | Normalized lift and defect-correction construction with bounded denominators. |
| `AdditiveLift.rank` | data | Rank of the Z_p image of the H_C difference character. |
| `AdditiveLift.rankZeroSplitting` | universal-property | Independent translation formula produces a natural continuous splitting. |
| `AdditiveLift.baseChange` | compatibility | Algebra-map lifts differing by H give the same rank-zero descent. |

**Unit tests.**

- `AdditiveLift.split` (computation): The standard lift in V_1⊕V_1 has λ_v=0 and additive rank zero.
- `AdditiveLift.B2` (computation): With injection c↦tc in B_2, the normalized lift has λ_v=v, hence rank one for v≠0.
- `AdditiveLift.zeroVector` (non-example): v=0 has a zero lift in every extension, so a rank-zero lift of zero alone does not imply splitting.

**Consumers.**

- `VectorBundlesAndIsocrystalsPartII:TVS.1/disc-ext-class`: Rank-zero splitting proves injectivity of the disc extension invariant.
- `VectorBundlesAndIsocrystalsPartII:TVS.2/module-hom-ext-comparison`: Vector-valued rank-zero lifts assemble the module comparison splitting.

**Check.**

- A rank-zero lift of a nonzero v must split the whole extension, rather than merely one C-fibre.

**Sources.**

- CN25, Proposition 4.10(i), Lemma 4.11 and Remark 4.14, pp. 23–25.

### The perfectoid disc extension class

**Target:** `VectorBundlesAndIsocrystalsPartII:TVS.1/disc-ext-class` (theorem).

The assignment E↦λ_E with λ_v=vλ_E gives a natural C-linear isomorphism Ext^1_TVS(V_1,V_1)≅C. With endpoints fixed by 0→V_1 --t→ B_2→V_1→0, the class of B_2 maps to 1. The scalar structure uses End_TVS(V_1)=C; an isomorphism of unframed middle objects does not identify all nonzero Ext classes.

**Hypotheses and conventions.**

- Use the exact TVS category VectorBundlesAndIsocrystalsPartII:TVS.0/topological-vector-spaces and the chosen ε, t normalizations.

**Inputs.** `VectorBundlesAndIsocrystalsPartII:TVS.1/additive-lifts-and-rank`, `VectorBundlesAndIsocrystalsPartII:TVS.0/period-module-realization`, `PadicHodgeTheory:R06.1`.

**Proof plan.**

1. Apply VectorBundlesAndIsocrystalsPartII:TVS.1/additive-lifts-and-rank to extract the invariant and show that λ_v=0 for nonzero v exactly when the extension splits.
2. For the period extension use a logarithmic lift in B_2 of the compatible X-roots to compute λ_v=v. This proves surjectivity.
3. Injectivity and scaling of the nontrivial period class give λ_v=vλ_E; Baer sum and pushout supply C-linearity.

**Check.**

- The split class maps to zero; B_2 maps to one.
- Compare with Ext^1_{C(G_K)}(C,C(1))=K: the category and scalar field differ.

**Sources.**

- CN25, Proposition 4.10(ii), pp. 23–25.

### Translation-invariant pro-étale interpretation

**Target:** `VectorBundlesAndIsocrystalsPartII:TVS.1/translation-invariant-proetale-class` (comparison).

There are compatible identifications Ext^1_TVS(V_1,V_1)≅H^0(T_C,H^1_proet(Sp(C{X}),O))≅C, sending the normalized disc class to ψ_1. For every a∈C, ψ_a−aψ_1 is a coboundary with an additive primitive in the sympathetic closure. The coefficient sheaf and completed-cover descent must be specified so that the comparison with continuous H_C-cohomology is valid.

**Hypotheses and conventions.**

- The class is translation-invariant cohomology, not all of H^1_proet of the disc.

**Inputs.** `VectorBundlesAndIsocrystalsPartII:TVS.1/disc-ext-class`, `VectorBundlesAndIsocrystalsPartII:TVS.1/perfectoid-kummer-tower`, `PerfectoidSpaces:P3/almost-purity-theorem`, `PerfectoidSpaces:P6`, `PerfectoidSpaces:P9`, `VectorBundlesAndIsocrystals:VB3:general-BC/sympathetic-vector-spaces`.

**Proof plan.**

1. Use the completed Kummer tower, almost purity and continuous torsor descent to compare its group cohomology with pro-étale O-cohomology.
2. The bounded descent computation identifies H^1 with the analytic-function module; T_C-invariants are its constants. Match the B_2 normalization in VectorBundlesAndIsocrystalsPartII:TVS.1/disc-ext-class.
3. Colmez02 Theorem 10.5 and Proposition 10.18 supply the additive primitive for ψ_a−aψ_1; Remark 10.19 gives a uniform spectral bound for convergent linear combinations. This establishes the character-primitive input, while the completed tower/O-cohomology comparison and its norm estimate remain G-DISC.

**Check.**

- For a=0 the coboundary is zero; for a=1 the difference ψ_1−ψ_1 is zero.
- The invariant subspace is C rather than the full analytic-function ring.

**Sources.**

- CN25, Remark 4.15(i)–(ii), p. 25.
- Colmez02, Theorem 10.5, pp. 76–77; §10.5, Proposition 10.18 and Remark 10.19, pp. 82–83.

**Layer acceptance.** All targets above have the stated API and checks; the following obligations must be discharged before proof closure: G-DISC.

## TVS.2 — Reasonable period modules and comparison

Specify separable Fréchet and compact-type C-spaces, reasonable B_m-modules and same-type Pairs. Prove strict tensor exactness, the normalized pushout class, Hom(B_d,W)=W[t^d] and Ext^1(B_d,W)=W/t^dW, the corrected U_d calculation and module Hom/Ext^1 comparison. Track separately the Fréchet inverse-limit step, separability in the B_m formulation and the compact-type extension supplier gap.

**Layer dependencies.** `VectorBundlesAndIsocrystalsPartII:TVS.1`, `LocallyAnalyticDistributions:L0`, `ArithmeticGaloisDuality:R02.1`.

**Planets.** Reasonable spaces, Reasonable period modules, Period pushout extensions, Torsion-source Hom and Ext, Module Hom and Ext comparison.

### Reasonable C-spaces

**Target:** `VectorBundlesAndIsocrystalsPartII:TVS.2/reasonable-c-spaces` (definition).

A reasonable C-space is a Hausdorff locally convex C-vector space, separable in the sense of a dense C-linear subspace of countable dimension, together with a Fréchet presentation or a countable compact-type presentation. Fréchet means complete and metrizable by a countable family of nonarchimedean seminorms; compact type means the locally convex inductive limit of Banach spaces with injective compact (in the nonarchimedean c-compact/compactoid sense of L0) transition maps. Its TVS realization is Λ↦Λ completed-projective-tensor_C W. The two types are remembered when a same-type theorem is used.

**Hypotheses and conventions.**

- C need not be spherically complete; L0 theorems requiring spherical completeness cannot simply be specialized to C.
- Strict tensor exactness, completeness and the compact-type extension closure needed here are requested in their separable C forms.

**Inputs.** `VectorBundlesAndIsocrystalsPartII:TVS.0/period-module-realization`, `LocallyAnalyticDistributions:L0/nonarchimedean-locally-convex-spaces`, `LocallyAnalyticDistributions:L0/compact-type-spaces`, `LocallyAnalyticDistributions:L0/projective-tensor-product`, `LocallyAnalyticDistributions:L0/banach-c0-models`.

**Proof plan.**

1. Specialize the existing L0 Fréchet/compact-type definitions; add separability rather than create a second topology.
2. Use countable-type Banach models and completed projective tensors to construct the realization. Verify independence from the Banach/seminorm presentation and C-evaluation.
3. Keep the compact-type extension closure gap G-COMPACT and the Fréchet passage G-FRECHET explicit.

**Planning API.**

| Name | Role | Contract |
| --- | --- | --- |
| `ReasonableCSpace` | structure | Existing L0 space plus a separability proof and one of the two topological presentation types. |
| `ReasonableCSpace.realize` | functoriality | Completed scalar extension, natural in Λ and continuous linear maps. |
| `ReasonableCSpace.evalC` | compatibility | C-evaluation agrees with the original complete space and its topology. |
| `ReasonableCSpace.strictTensor` | compatibility | A strict exact sequence of reasonable spaces induces a pointwise strict exact sequence of realizations, with the precise L0 tensor hypotheses. |

**Unit tests.**

- `ReasonableCSpace.zero` (degenerate): The zero space is reasonable of both types.
- `ReasonableCSpace.c0` (computation): c0(N,C) is a separable Banach/Fréchet example and its realization is c0(N,Λ).
- `ReasonableCSpace.denseCountable` (non-example): Separability means countable C-linear span is dense, not that C has a countable underlying set.

**Consumers.**

- `VectorBundlesAndIsocrystalsPartII:TVS.2/hom-ext-from-b1`: The B_1 Hom/Ext computation uses the two type-specific limit arguments.
- `VectorBundlesAndIsocrystalsPartII:TVS.2/reasonable-period-models`: Reasonable period models use this C-case in their t-filtration.

**Check.**

- Separable Banach spaces are in the Fréchet branch; an infinite-dimensional Banach space is not automatically of compact type.

**Sources.**

- CN25, §4.3, p. 25; Appendix A, pp. 58–60.

### Reasonable topological B_m-modules

**Target:** `VectorBundlesAndIsocrystalsPartII:TVS.2/reasonable-period-models` (definition).

For m≥1, a reasonable B_m-model has a topology defined by a countable family of B_m-module seminorms and is Fréchet, or is a c-compact countable inductive limit of B_m-Banach models. Scalars act continuously; use complete separated models for realization. Record separately whether a dense countably generated B_m-submodule exists. CN25 explicitly imposes separability in its C-definition, but does not repeat it in §4.3.2: the full B_m generality is a target, and G-SEPARABILITY records the missing extension of the proof beyond countable-type graded pieces. Reduction to t-kernels and quotients must preserve the topological type with the strict structures actually used.

**Hypotheses and conventions.**

- A single m kills the whole model. No C-algebra section C→B_m is chosen.
- Statements below quantify over the full printed B_m class; proofs for the separable subclass are distinguished from the remaining generality.

**Inputs.** `VectorBundlesAndIsocrystalsPartII:TVS.2/reasonable-c-spaces`, `VectorBundlesAndIsocrystalsPartII:TVS.0/period-module-realization`, `mathlib:TopModuleCat`, `LocallyAnalyticDistributions:L0/c0-completed-tensor`.

**Proof plan.**

1. Use L0 Banach/Fréchet/compact-type notions with B_m-module seminorms and the existing native topological module carrier.
2. Check t-stable closed subobjects, the induced strict quotient topology, and the separated completed realization VectorBundlesAndIsocrystalsPartII:TVS.0/period-module-realization.
3. Prove strict tensor exactness using the t-filtration and the countable basis of B_m(Λ), not an assumed flatness of every completed tensor. Handle m=1 as the C-case, not a module over B_0.

**Planning API.**

| Name | Role | Contract |
| --- | --- | --- |
| `ReasonablePeriodModel` | structure | Topological B_m-module with Fréchet or compact-type presentation and explicit countable-type flag. |
| `ReasonablePeriodModel.realize` | functoriality | The period Module realization, independent of exponent and chosen presentation. |
| `ReasonablePeriodModel.tFiltration` | relation | Successive t-kernels/images and their induced topologies, with strictness established where used. |
| `ReasonablePeriodModel.strictTensor` | compatibility | Strict exact sequences of reasonable models give exact period Modules as in Remark 4.20. |

**Unit tests.**

- `ReasonablePeriodModel.regular` (computation): B_m and finite direct sums of B_m are reasonable.
- `ReasonablePeriodModel.torsion` (compatibility): W[t^d] is the native Submodule.torsionBy W (t^d), with its induced topology.
- `ReasonablePeriodModel.uniformBound` (non-example): A colimit of B_m over unbounded m is not made a reasonable bounded period Module by pointwise torsion alone.

**Consumers.**

- `VectorBundlesAndIsocrystalsPartII:TVS.2/torsion-source-hom-ext`: The target of the torsion-source Hom/Ext table.
- `VectorBundlesAndIsocrystalsPartII:TVS.2/module-hom-ext-comparison`: The source and target of module comparison require topological models, not merely algebraic modules.

**Check.**

- B_m is a reasonable Banach model; t^m=0 acts uniformly.

**Sources.**

- CN25, §4.3.2 and Remark 4.20, p. 26.

### Reasonable Pairs and same type

**Target:** `VectorBundlesAndIsocrystalsPartII:TVS.2/reasonable-pairs` (definition).

A reasonable Pair is represented by an injective continuous map M_1→M_2 of reasonable period models of the same topological type. A pair of such Pairs is of the same type when one common branch, Fréchet or compact type, works for all four terms, with one common torsion exponent after increasing it. Use the localized left-heart object, while retaining a reasonable presentation to apply the comparisons. Prove that the conclusions are independent of the selected same-type presentation.

**Hypotheses and conventions.**

- No strictness is imposed on M_1→M_2, and M_2/M_1 below means the algebraic quotient.

**Inputs.** `VectorBundlesAndIsocrystalsPartII:TVS.0/period-pairs`, `VectorBundlesAndIsocrystalsPartII:TVS.2/reasonable-period-models`.

**Proof plan.**

1. Combine VectorBundlesAndIsocrystalsPartII:TVS.0/period-pairs and VectorBundlesAndIsocrystalsPartII:TVS.2/reasonable-period-models and transport by bicartesian comparison squares.
2. Export exact presentation sequences in the left heart; type compatibility is a hypothesis of Hom comparison, not a theorem for arbitrary pairs of types.

**Planning API.**

| Name | Role | Contract |
| --- | --- | --- |
| `ReasonablePeriodPair` | constructor | Injection of two same-type reasonable period models, with its Pair realization. |
| `ReasonablePeriodPair.sameType` | characterisation | A common Fréchet or compact-type branch for all source/target terms. |
| `ReasonablePeriodPair.presentation` | compatibility | Localized comparison and exact sequences are independent of reasonable presentation. |

**Unit tests.**

- `ReasonablePeriodPair.zero` (degenerate): The identity pair is zero in the left heart.
- `ReasonablePeriodPair.closed` (compatibility): For a strict closed inclusion the Pair agrees with the classical quotient module, with its quotient topology.
- `ReasonablePeriodPair.dense` (non-example): For a dense proper same-type inclusion the Pair is still nonzero although its Hausdorff quotient is zero.

**Consumers.**

- `VectorBundlesAndIsocrystalsPartII:TVS.2/pair-hom-comparison`: Supplies the exact hypotheses of Pair full faithfulness.
- `VectorBundlesAndIsocrystalsPartII:QBC.0/intrinsic-curvature-filtration`: Reasonableness is required for extremal characterization.

**Check.**

- Cross-type fullness is not obtained by removing the common-type witness.

**Sources.**

- CN25, §4.4, p. 27; Theorem 4.30, p. 31.

### Normalized period pushout extensions

**Target:** `VectorBundlesAndIsocrystalsPartII:TVS.2/normalized-pushout-extensions` (construction).

For a topological B_m-model W, d≥1 and w∈W, push out 0→B_m --t^d→B_(m+d)→B_d→0 along c↦cw. The resulting E_w is (B_(m+d)⊕W)/{(t^d c,−cw):c∈B_m}, with the quotient topology and its period action. The sign is the usual pushout convention, so E_1 for W=C,d=m=1 is B_2 with its specified endpoints. The class depends on w modulo t^dW and induces Ext^1_B(B_d,W)≅W/t^dW; for the topological exact structure prove the indicated classes are strict and all extensions admit the compatible topology. This proof is separate from TVS essential surjectivity.

**Hypotheses and conventions.**

- The Ext group on the algebraic side is over B=B_dR^+, not over the quotient ring B_m; an extension can have exponent m+d.
- For d=1 and W killed by t this is the construction in Remark 4.17.

**Inputs.** `VectorBundlesAndIsocrystalsPartII:TVS.2/reasonable-period-models`, `VectorBundlesAndIsocrystalsPartII:TVS.0/period-module-realization`, `LocallyAnalyticDistributions:L0/strict-morphisms-quasi-abelian`, `VectorBundlesAndIsocrystalsPartII:TVS.1/disc-ext-class`.

**Proof plan.**

1. Construct the pushout using the displayed closed relation graph (the first coordinate has closed image), giving a strict model extension.
2. Resolve B_d by multiplication t^d on the free B-module and calculate the cokernel of t^d on W. Changing w by t^d w′ changes the lift by w′ and yields an equivalent framed extension.
3. Check continuity for the finitely generated source and quotient topologies before comparison with TVS.

**Planning API.**

| Name | Role | Contract |
| --- | --- | --- |
| `PeriodExtension.pushout` | constructor | Strict pushout extension with framed ends and the stated sign. |
| `PeriodExtension.class` | equivalence | Class map W/t^dW≅Ext^1_B(B_d,W). |
| `PeriodExtension.natural` | functoriality | A continuous B-linear W→W′ carries E_w to E_f(w), compatibly with Baer sum. |
| `PeriodExtension.split` | characterisation | The framed class vanishes iff w∈t^dW. |

**Unit tests.**

- `PeriodExtension.zero` (degenerate): w=0 gives the split framed extension.
- `PeriodExtension.unit` (computation): m=d=1,W=C,w=1 gives B_2 and the disc class 1.
- `PeriodExtension.changeLift` (characterisation): w and w+t^d w′ define the same class, even if their displayed lifts differ.

**Consumers.**

- `VectorBundlesAndIsocrystalsPartII:TVS.2/torsion-source-hom-ext`: Provides the Ext class and its normalization for the torsion-source table.
- `VectorBundlesAndIsocrystalsPartII:TVS.2/hom-ext-from-b1`: For d=m=1 it identifies the Ext invariant with a vector w.

**Check.**

- The split condition is w∈t^dW, not w=0 for arbitrary d.

**Sources.**

- CN25, Remarks 4.17 and 4.21, pp. 25–27.

### A profinite cocycle lies in one compact-type step

**Target:** `VectorBundlesAndIsocrystalsPartII:TVS.2/profinite-cocycle-one-step` (lemma).

If H is profinite, W=ind_n W_n is a compact-type inductive limit of C-Banach spaces, and H acts compatibly and isometrically on every W_n, every continuous 1-cocycle H→W has image in a single W_N. The assertion concerns cocycles with these invariant steps, not every continuous map to an arbitrary inductive limit.

**Hypotheses and conventions.**

- The compact/c-compact closure properties of unit balls must hold for the chosen presentation.

**Inputs.** `VectorBundlesAndIsocrystalsPartII:TVS.2/reasonable-c-spaces`, `LocallyAnalyticDistributions:L0/compact-type-spaces`.

**Proof plan.**

1. Let B_n be the closed image of the unit ball and form the increasing closed subgroups U_n=Σ_(i≤n) p^(i−n) B_i covering W.
2. The inverse images H_n of U_n under the cocycle are closed subgroups, by the isometric action and cocycle equation. Baire gives one H_n with nonempty interior, hence finite index.
3. Adjoin finitely many coset representatives’ cocycle values and use the cocycle equation to find one common W_N.

**Check.**

- A constant zero cocycle lies in every step; nonisometric, noninvariant steps do not meet the hypotheses.

**Sources.**

- CN25, Lemma 4.19 and proof, p. 26.

### Hom and extensions from B_1

**Target:** `VectorBundlesAndIsocrystalsPartII:TVS.2/hom-ext-from-b1` (theorem).

For a reasonable C-space W with realization Wbold, evaluation at 1 identifies Hom_TVS(B_1,Wbold) with W, and the normalized pushout w↦E_w identifies Ext^1_TVS(B_1,Wbold) with W. Both identifications are C-linear and natural in W.

**Hypotheses and conventions.**

- The C-space is separable; both Fréchet and compact-type branches are targets.
- For the full Fréchet claim G-FRECHET records the source’s passage from its nuclear-Fréchet argument to the unqualified statement.

**Inputs.** `VectorBundlesAndIsocrystalsPartII:TVS.2/reasonable-c-spaces`, `VectorBundlesAndIsocrystalsPartII:TVS.1/disc-ext-class`, `VectorBundlesAndIsocrystalsPartII:TVS.1/bounded-analytic-cocycles`, `VectorBundlesAndIsocrystalsPartII:TVS.2/normalized-pushout-extensions`, `VectorBundlesAndIsocrystalsPartII:TVS.2/profinite-cocycle-one-step`, `LocallyAnalyticDistributions:L0/banach-c0-models`, `ArithmeticGaloisDuality:R02.1`.

**Proof plan.**

1. For Hom, apply continuous C-linear functionals on W and End_TVS(B_1)=C; separation forces f(a)=a f(1). Use the separable nonarchimedean separation result, not spherical completeness of C.
2. For separable Banach W use VectorBundlesAndIsocrystalsPartII:TVS.1/disc-ext-class coordinatewise: the bounds in VectorBundlesAndIsocrystalsPartII:TVS.1/bounded-analytic-cocycles let the primitives and λ-values converge in the Banach model.
3. For Fréchet W pass through Banach quotients and retain the derived inverse-limit term until a topological Mittag–Leffler theorem proves its vanishing (G-FRECHET).
4. For compact type use VectorBundlesAndIsocrystalsPartII:TVS.2/profinite-cocycle-one-step on the disc cocycle and the bounded corrections; reduce to a Banach step. Normalize using VectorBundlesAndIsocrystalsPartII:TVS.2/normalized-pushout-extensions.

**Check.**

- For W=C the two groups are C, with B_2 representing 1.
- For W=0 both groups vanish.
- For W=c0(N,C), the extension parameter is a null sequence, not an arbitrary bounded sequence.

**Sources.**

- CN25, Proposition 4.18 and proof, p. 26.

### Hom and Ext from B_d

**Target:** `VectorBundlesAndIsocrystalsPartII:TVS.2/torsion-source-hom-ext` (theorem).

For every reasonable B_m-model W and d≥1, the natural comparison maps identify Hom_TVS(B_d,Wbold) with Hom_B(B_d,W)=W[t^d] and Ext^1_TVS(B_d,Wbold) with Ext^1_B(B_d,W)=W/t^dW, with topology-sensitive model interpretation as above. W[t^d] is native scalar torsion, and W/t^dW denotes the algebraic cokernel used in the Ext group, not an unproved Hausdorffization. The Ext parameter is the pushout VectorBundlesAndIsocrystalsPartII:TVS.2/normalized-pushout-extensions.

**Hypotheses and conventions.**

- No general Ext^i comparison for i≥2 is asserted.
- The all-reasonable B_m generality carries G-SEPARABILITY; the Fréchet input carries G-FRECHET.

**Inputs.** `VectorBundlesAndIsocrystalsPartII:TVS.2/hom-ext-from-b1`, `VectorBundlesAndIsocrystalsPartII:TVS.2/normalized-pushout-extensions`, `VectorBundlesAndIsocrystalsPartII:TVS.2/reasonable-period-models`, `mathlib:Submodule.torsionBy`.

**Proof plan.**

1. Use VectorBundlesAndIsocrystalsPartII:TVS.2/hom-ext-from-b1 for m=d=1. For m≥2 use 0→W[t]→W→W/W[t]→0 and verify type/separation and the strict exactness required by VectorBundlesAndIsocrystalsPartII:TVS.2/reasonable-period-models.
2. Compare the algebraic and TVS long exact sequences; naturality of pushouts supplies the connecting maps. The remaining Hom and Ext^1 comparison is the five-lemma diagram of CN25 p. 27.
3. Then induct on d using 0→B_1 --t^(d−1)→B_d→B_(d−1)→0. Retain all boundary maps rather than claiming a blanket Ext² vanishing.

**Check.**

- For W=B_m, Hom has length min(d,m) and Ext^1=W/t^dW has the same length.
- For d≥m, both groups are W; for d=0, if B_0 is separately defined to be zero, both groups are zero.

**Sources.**

- CN25, Proposition 4.22 and proof, p. 27.

### Constant-source evaluation and projectivity

**Target:** `VectorBundlesAndIsocrystalsPartII:TVS.2/constant-source-hom-ext` (theorem).

For a period Module Wbold, Hom_TVS(Q_p,Wbold)=Wbold(C)=W and Ext^1_TVS(Q_p,Wbold)=0. For a reasonable Pair [M_1→M_2], Hom_TVS(Q_p,Pair)=M_2/M_1 as an algebraic vector space. Tate/period-scaled constant lines Q_p t^d have the corresponding normalized evaluation identifications; there is no G_K action here.

**Hypotheses and conventions.**

- Q_p denotes the constant functor; C is initial in Symp_C.

**Inputs.** `VectorBundlesAndIsocrystalsPartII:TVS.0/topological-vector-spaces`, `VectorBundlesAndIsocrystalsPartII:TVS.0/period-module-realization`, `VectorBundlesAndIsocrystalsPartII:TVS.0/period-pairs`, `LocallyAnalyticDistributions:L0/finite-rank-strict-splitting`, `LocallyAnalyticDistributions:L0/left-heart-classical-extensions`.

**Proof plan.**

1. A natural map from the constant one-dimensional functor is determined by its value at 1 over C and transported along C→Λ.
2. Use projectivity of the finite-dimensional Q_p space in the quasi-abelian left heart and pointwise exactness to lift the C-value of 1 in an extension; transport it to obtain a TVS splitting.
3. Apply Hom(Q_p,−) to the Pair presentation sequence. The degree-one module vanishing identifies the cokernel with the algebraic quotient. The required left-heart projectivity is an exact L0 request, not an inference that every object is projective.

**Check.**

- For W=C, evaluation gives all of C and no Ext^1.
- This is not the arithmetic category: H¹(G_K,Q_p) need not vanish.

**Sources.**

- CN25, Proof of Lemma 4.24(i), p. 28; Remark 4.8(ii), p. 22.

### Torsion-source Hom into a Pair

**Target:** `VectorBundlesAndIsocrystalsPartII:TVS.2/pair-hom-from-torsion` (theorem).

For a reasonable same-type Pair P=[M_1→M_2] and d≥1, Hom_TVS(B_d,P)≅(M_2/M_1)[t^d], naturally. The quotient is algebraic; no closed-image hypothesis is added to the Pair.

**Hypotheses and conventions.**

- M_1,M_2 are realized as in VectorBundlesAndIsocrystalsPartII:TVS.2/reasonable-pairs.

**Inputs.** `VectorBundlesAndIsocrystalsPartII:TVS.2/reasonable-pairs`, `VectorBundlesAndIsocrystalsPartII:TVS.2/torsion-source-hom-ext`, `VectorBundlesAndIsocrystalsPartII:TVS.0/period-pairs`.

**Proof plan.**

1. Compare the algebraic long exact sequence for 0→M_1→M_2→M_2/M_1→0 with the left-heart/TVS sequence.
2. The four outside Hom/Ext¹ maps are isomorphisms by VectorBundlesAndIsocrystalsPartII:TVS.2/torsion-source-hom-ext. Apply the five lemma to the five-term diagram, keeping the middle quotient in the left heart.

**Check.**

- For P=[0→B_m] recover the torsion submodule B_m[t^d].
- For a dense proper inclusion the result uses its nonzero algebraic quotient.

**Sources.**

- CN25, Lemma 4.23 and its diagram, pp. 27–28.

### Hom and Ext from U_d, with the corrected vanishing

**Target:** `VectorBundlesAndIsocrystalsPartII:TVS.2/fundamental-source-hom-ext` (theorem).

For d≥0, U_d=(B_cris^+)^{φ=p^d}, a reasonable period Module Wbold and a reasonable Pair P=[M_1→M_2], Hom_TVS(U_d,Wbold)≅W, Ext^1_TVS(U_d,Wbold)=0, and Hom_TVS(U_d,P)≅M_2/M_1. The Ext^1 value is zero, correcting the contradictory displayed value in CN25 Lemma 4.24(i). The identifications use U_d↪B_(m+d) when t^mW=0 and 0→Q_p t^d→U_d→B_d→0.

**Hypotheses and conventions.**

- No Ext¹ assertion for arbitrary Pair targets is included.
- For d=0 interpret U_0=Q_p and B_0=0.

**Inputs.** `VectorBundlesAndIsocrystalsPartII:TVS.2/torsion-source-hom-ext`, `VectorBundlesAndIsocrystalsPartII:TVS.2/constant-source-hom-ext`, `VectorBundlesAndIsocrystalsPartII:TVS.2/pair-hom-from-torsion`, `VectorBundlesAndIsocrystals:VB3:general-BC/standard-dimension-examples`, `PadicHodgeTheory:R06.1`, `VectorBundlesAndIsocrystals:VB3:general-BC/nonpositive-curvature-extensions`.

**Proof plan.**

1. Use the parent fundamental BC sequence and the injection into B_(m+d). Compare Hom/Ext¹ against the sequence 0→t^dB_m→B_(m+d)→B_d→0.
2. By VectorBundlesAndIsocrystalsPartII:TVS.2/torsion-source-hom-ext and VectorBundlesAndIsocrystalsPartII:TVS.2/constant-source-hom-ext, the map Hom(Q_p t^d,Wbold)→Ext¹(B_d,Wbold) is the quotient W→W/t^dW and is onto; the next term therefore vanishes.
3. The same diagram identifies Hom with W; apply the Pair presentation and its long exact sequence for the quotient formula.

**Check.**

- For d=1,W=C, Ext¹(U_1,C)=0 although Ext¹(B_1,C)=C.
- For d=0 this is constant-source evaluation.

**Sources.**

- CN25, Lemma 4.24 and proof, p. 28; parent fundamental sequence.

### Linearity of rank-zero additive lifts

**Target:** `VectorBundlesAndIsocrystalsPartII:TVS.2/linear-additive-lifts` (lemma).

In the split-on-C extension situation of CN25 Proposition 4.27, let v↦ell_v be the continuous rank-zero additive lift map, with ell_v(1)=v and its transported C-module structure. For every sympathetic Λ, x↦ell_v(x) on O_Λ is a continuous additive map and ell_v(cx)=ell_(cv)(x) for c∈O_C. This includes nonunits and zero, not only c∈O_C^×.

**Hypotheses and conventions.**

- Both endpoint Modules are killed by t and are reasonable of the same type.
- Continuity of the lift map requires that evaluation ell↦ell(1) be a topological isomorphism; this is part of the type-specific extension argument G-COMPACT/G-FRECHET.

**Inputs.** `VectorBundlesAndIsocrystalsPartII:TVS.1/additive-lifts-and-rank`, `VectorBundlesAndIsocrystalsPartII:TVS.2/reasonable-c-spaces`, `VectorBundlesAndIsocrystalsPartII:TVS.2/reasonable-pairs`, `VectorBundlesAndIsocrystalsPartII:TVS.0/topological-vector-spaces`, `VectorBundlesAndIsocrystals:VB3:general-BC/sympathetic-vector-spaces`.

**Proof plan.**

1. Descend (τ−1)ell_v to the translation parameter using H-invariance. C-point detection of sympathetic algebras proves the descended map is additive.
2. For units c use the lift X↦cX and its conjugation action to identify the normalized additive elements ell_v and ell_(cv).
3. For a nonunit c, both 1 and 1+c are units, so additivity applied to c=(1+c)−1 extends the identity; handle c=0 directly.

**Check.**

- The identity holds for c=0 and c=p, not just for units.
- Changing a lift by H does not change the descended function.

**Sources.**

- CN25, Lemma 4.29 and proof, p. 30.

### Period-module Hom and Ext comparison

**Target:** `VectorBundlesAndIsocrystalsPartII:TVS.2/module-hom-ext-comparison` (theorem).

For reasonable topological period models W_1,W_2 of the same type, the natural maps from continuous B-linear model Hom to period Module Hom to TVS Hom are isomorphisms. The analogous maps on Yoneda Ext¹ are also isomorphisms, computed in topological B-modules with strict sequences, period Modules, and TVS respectively. The exponent may increase for an extension. This is a degree-one comparison, not an equivalence on all derived Ext groups.

**Hypotheses and conventions.**

- Common Fréchet or compact-type branch; one common bound m after increasing exponents.
- Compact-type middle-term closure is not discharged by a spherical-complete theorem applied to C; retain G-COMPACT.
- Nonseparable B_m models and the full Fréchet inverse-limit step retain G-SEPARABILITY/G-FRECHET.

**Inputs.** `VectorBundlesAndIsocrystalsPartII:TVS.2/reasonable-period-models`, `VectorBundlesAndIsocrystalsPartII:TVS.2/reasonable-pairs`, `VectorBundlesAndIsocrystalsPartII:TVS.2/torsion-source-hom-ext`, `VectorBundlesAndIsocrystalsPartII:TVS.1/additive-lifts-and-rank`, `VectorBundlesAndIsocrystalsPartII:TVS.2/linear-additive-lifts`, `VectorBundlesAndIsocrystalsPartII:TVS.0/topological-vector-spaces`, `LocallyAnalyticDistributions:L0/left-heart-classical-extensions`, `LocallyAnalyticDistributions:L0/banach-open-mapping-lifts`, `LocallyAnalyticDistributions:L0/compact-type-extension-duality`.

**Proof plan.**

1. For Hom, restrict to finitely generated submodules decomposed into B_d blocks. VectorBundlesAndIsocrystalsPartII:TVS.2/torsion-source-hom-ext forces period linearity on these; continuity and density extend it to the completed tensor at every Λ.
2. For Ext¹, recover a B-action on E(C) by the same finite-block restriction. Compare an extension split on C to its space of rank-zero additive elements.
3. The evaluation ell↦ell(1) is bijective. Use Appendix A’s type preservation and the open mapping theorem to prove it is a topological isomorphism; the compact-type proof is exactly the inherited supplier gap.
4. Use VectorBundlesAndIsocrystalsPartII:TVS.2/linear-additive-lifts and a countable approximately orthonormal basis (not a claimed isometric basis over arbitrary C) to define s(Σ e_i v_i)=Σ ell_(v_i)(e_i). Uniform boundedness proves convergence; the double-sum argument proves independence and naturality.
5. Devise on the exponents of W_1 then W_2 to prove the general statement.

**Check.**

- A TVS extension split continuously and B-linearly on C must split naturally at every Λ.
- For W_1=W_2=C the class group is C in all three categories.
- A merely algebraic section of E(C) is not enough for the tensor splitting construction.

**Sources.**

- CN25, Proposition 4.27, equation (4.28), and proof, pp. 29–30; Appendix A, pp. 58–60.

### Full faithfulness for reasonable Pairs

**Target:** `VectorBundlesAndIsocrystalsPartII:TVS.2/pair-hom-comparison` (comparison).

For reasonable same-type topological Pairs P,P′ and their period Pair realizations, continuous B-linear morphisms in the topological left-heart Pair category, morphisms of period Pairs, and TVS morphisms are naturally the same. This theorem concerns Hom only; it does not assert the same comparison for Ext¹ of arbitrary Pairs.

**Hypotheses and conventions.**

- Both Pair presentations are localized at bicartesian squares; this is not an assertion that every TVS map is a literal chain map between the chosen two-term presentations.

**Inputs.** `VectorBundlesAndIsocrystalsPartII:TVS.2/module-hom-ext-comparison`, `VectorBundlesAndIsocrystalsPartII:TVS.2/reasonable-pairs`, `VectorBundlesAndIsocrystalsPartII:TVS.0/period-pairs`.

**Proof plan.**

1. Use the source exact sequence 0→M_1→M_2→P→0 to express Hom(P,P′) as a kernel, reducing to a Module source.
2. Apply the target presentation and compare its five-term Hom/Ext¹ exact sequence in both categories. All outside maps are isomorphisms by VectorBundlesAndIsocrystalsPartII:TVS.2/module-hom-ext-comparison; the middle Hom map is therefore an isomorphism.
3. Check compatibility with bicartesian localization, composition and changing common exponent.

**Check.**

- For Module pairs recover the Hom part of Proposition 4.27.
- The result must retain a non-strict dense inclusion as a nonzero Pair.

**Sources.**

- CN25, Theorem 4.30 and proof, p. 31.

**Layer acceptance.** All targets above have the stated API and checks; the following obligations must be discharged before proof closure: G-TENSOR, G-FRECHET, G-COMPACT, G-SEPARABILITY.

## QBC.0 — Quasi–Banach–Colmez spaces and their intrinsic filtration

Construct filtered qBC objects with positive BC subobject, a period Pair as middle graded object and negative BC quotient, with integer height. For reasonable middle Pairs prove the two extremal characterizations; for same-type reasonable objects prove that all TVS maps preserve the filtration and are period-linear on the middle. Include the dense-injection left-heart example, without asserting a splitting or general abelianness theorem.

**Layer dependencies.** `VectorBundlesAndIsocrystalsPartII:TVS.0`, `VectorBundlesAndIsocrystalsPartII:TVS.2`, `VectorBundlesAndIsocrystals:VB3:general-BC`, `LocallyAnalyticDistributions:L0`, `LocallyAnalyticDistributions:L1`.

**Planets.** Quasi–Banach–Colmez spaces, Positive-to-Pair orthogonality, Intrinsic qBC filtration, Dense-injection left-heart example.

### Filtered quasi–Banach–Colmez spaces

**Target:** `VectorBundlesAndIsocrystalsPartII:QBC.0/filtered-quasi-banach-colmez-spaces` (definition).

A qBC object is a TVS W equipped with subobjects 0⊂W_{>0}⊂W_{≥0}⊂W such that W_{>0} is a classical BC of curvature >0, W_{=0}=W_{≥0}/W_{>0} is a period Pair, and W_{<0}=W/W_{≥0} is a classical BC of curvature <0. A morphism is a TVS map preserving both subobjects and inducing a period-linear Pair map on the middle quotient. Its integer height is ht(W_{>0})+ht(W_{<0}). Curvature >0, ≥0, =0, <0, ≤0 means respectively W=W_{>0}, W=W_{≥0}, the two outer graded pieces vanish, W_{≥0}=0, and W_{>0}=0. A qBC is reasonable when its middle Pair is reasonable; two reasonable qBC objects have the same type when their middle presentations have a common branch as in VectorBundlesAndIsocrystalsPartII:TVS.2/reasonable-pairs.

**Hypotheses and conventions.**

- All subobjects and quotients are in the pointwise left-heart exact structure.
- Intrinsic uniqueness of the filtration is asserted only with reasonableness, by VectorBundlesAndIsocrystalsPartII:QBC.0/intrinsic-curvature-filtration.

**Inputs.** `VectorBundlesAndIsocrystalsPartII:TVS.0/topological-vector-spaces`, `VectorBundlesAndIsocrystalsPartII:TVS.0/period-pairs`, `VectorBundlesAndIsocrystalsPartII:TVS.2/reasonable-pairs`, `VectorBundlesAndIsocrystals:VB3:general-BC/dimension-abelian`, `VectorBundlesAndIsocrystals:VB3:general-BC/canonical-curvature-filtration`, `VectorBundlesAndIsocrystals:VB3:general-BC/affine-finite-length-equivalence`.

**Proof plan.**

1. Use the imported classical BC embedding into TVS and VectorBundlesAndIsocrystalsPartII:TVS.0/period-pairs for the middle piece. Define composition and identities by the filtered maps and Pair morphisms.
2. Height is invariant under filtered isomorphism because the two outer BC pieces are then isomorphic; use the parent invariant, without inventing a finite dimension for the middle Pair.
3. Embed a classical BC using its parent canonical curvature filtration. Its middle affine BC is a finite-length period Module and therefore a Pair [0→M]. The old and new heights agree because affine BCs have height zero.

**Planning API.**

| Name | Role | Contract |
| --- | --- | --- |
| `QuasiBanachColmez` | structure | TVS with the two subobjects, outer classical BC witnesses and middle Pair witness. |
| `QuasiBanachColmez.Hom` | data | Filtration-preserving TVS map with period-linear middle map; identity and composition laws. |
| `QuasiBanachColmez.height` | projection | The sum of the two integer outer heights, invariant under filtered isomorphism. |
| `QuasiBanachColmez.curvature` | characterisation | The five flags given by vanishing or exhaustion of the specified filtration pieces. |
| `QuasiBanachColmez.ofBC` | compatibility | Classical BC embedding via its canonical filtration, preserving height and curvature. |
| `QuasiBanachColmez.ofPair` | constructor | A period Pair with zero outer graded pieces gives a height-zero qBC. |

**Unit tests.**

- `QuasiBanachColmez.zero` (degenerate): Zero is a qBC of height zero; its filtration pieces vanish.
- `QuasiBanachColmez.constant` (computation): Q_p has W_{>0}=W_{≥0}=0, W_{<0}=Q_p and height 1, since the parent regards Q_p as strictly negative curvature.
- `QuasiBanachColmez.pair` (computation): For a reasonable period Module such as the realization of c0(N,C), place the whole object in degree =0; height is zero without assigning finite C-dimension.
- `QuasiBanachColmez.classicalQuotient` (compatibility): For C/Q_p with its parent filtration, height is −1. This excludes replacing height by an unsigned rank.

**Consumers.**

- `VectorBundlesAndIsocrystalsPartII:QBC.0/intrinsic-curvature-filtration`: Reasonableness makes the two filtration steps intrinsic.
- `VectorBundlesAndIsocrystalsPartII:QBC.0/qbc-forgetful-full-faithfulness`: The extra conditions in the definition of a morphism become automatic.
- `CN25 Theorem 1.12 and Proposition 7.10`: The outer height controls kernels and cokernels of cohomological comparison maps; those applications belong to the comparison roadmap.

**Check.**

- Height is invariant under qBC isomorphism; invariance under underlying TVS isomorphisms requires VectorBundlesAndIsocrystalsPartII:QBC.0/qbc-forgetful-full-faithfulness.
- The middle graded piece need not have finite length or a numerical C-dimension.

**Sources.**

- CN25, Definitions 4.5 and 4.7; Remark 4.6, pp. 21–22.

### Positive BC spaces have no maps into a reasonable Pair

**Target:** `VectorBundlesAndIsocrystalsPartII:QBC.0/positive-pair-orthogonality` (theorem).

If Y is a classical BC of curvature >0 and P is a reasonable period Pair, then Hom_TVS(Y,P)=0.

**Hypotheses and conventions.**

- Reasonableness is a hypothesis on the Pair. No common type with Y is required.

**Inputs.** `VectorBundlesAndIsocrystalsPartII:TVS.2/pair-hom-from-torsion`, `VectorBundlesAndIsocrystalsPartII:TVS.2/constant-source-hom-ext`, `VectorBundlesAndIsocrystalsPartII:TVS.2/fundamental-source-hom-ext`, `VectorBundlesAndIsocrystalsPartII:TVS.2/reasonable-pairs`, `VectorBundlesAndIsocrystals:VB3:general-BC/bc-hn-decomposition`, `VectorBundlesAndIsocrystals:VB3:general-BC/curvature-hn-characterisation`.

**Proof plan.**

1. Use the parent HN decomposition and curvature dictionary to reduce to Y=B_d/Q_p^h and Y=U_d/Q_p t_x^d for x≠∞.
2. For B_d/Q_p^h apply VectorBundlesAndIsocrystalsPartII:TVS.2/pair-hom-from-torsion and VectorBundlesAndIsocrystalsPartII:TVS.2/constant-source-hom-ext. Under the evaluation identifications the restriction from Hom(B_d,P) to Hom(Q_p^h,P) is injective, so a map descending to the quotient is zero.
3. For U_d/Q_p t_x^d use VectorBundlesAndIsocrystalsPartII:TVS.2/fundamental-source-hom-ext: restriction is multiplication by t_x^d on the algebraic quotient of the Pair. Since θ(t_x)≠0, this is a unit on every uniformly torsion period model and hence on that quotient.

**Check.**

- The conclusion holds for P=[0→B_m].
- Replacing positive curvature by curvature zero gives nonzero maps B_1→B_1.

**Sources.**

- CN25, Proposition 4.25 and proof, p. 28.

### Intrinsic filtration of a reasonable qBC

**Target:** `VectorBundlesAndIsocrystalsPartII:QBC.0/intrinsic-curvature-filtration` (theorem).

For a reasonable qBC W, W_{>0} is its largest positive-curvature classical BC subobject and W_{<0} its largest negative-curvature classical BC quotient: every such BC monomorphism into W factors through W_{>0}, and every such BC epimorphism from W factors uniquely through W_{<0}. These two universal properties recover W_{>0} and W_{≥0}=ker(W→W_{<0}), independently of a reasonable presentation.

**Hypotheses and conventions.**

- Largest quotient uses the order by factorization of quotient maps, not containment inside W.

**Inputs.** `VectorBundlesAndIsocrystalsPartII:QBC.0/filtered-quasi-banach-colmez-spaces`, `VectorBundlesAndIsocrystalsPartII:QBC.0/positive-pair-orthogonality`, `VectorBundlesAndIsocrystalsPartII:TVS.0/period-module-realization`, `VectorBundlesAndIsocrystals:VB3:general-BC/curvature-hom-orthogonality`, `VectorBundlesAndIsocrystals:VB3:general-BC/torsion-point-realization`.

**Proof plan.**

1. A positive BC subobject maps to zero in W_{<0} by parent BC curvature orthogonality and then to zero in W_{=0} by VectorBundlesAndIsocrystalsPartII:QBC.0/positive-pair-orthogonality.
2. For a negative BC quotient, first kill W_{>0}. Show every TVS map from a reasonable period Pair to a negative BC is zero: reduce its source to the second Module of a Pair presentation, restrict to finite-length period submodules, and use parent curvature orthogonality.
3. The algebraic finite-length submodules span the model; after scalar extension they have dense union in the completed realization. Continuity into the Hausdorff BC values forces the remaining map to vanish.
4. Identify the filtration by its universal subobject and quotient; do not require their extensions to split.

**Check.**

- For a pure Pair both extremal BC pieces are zero.
- An isomorphism of underlying TVS objects of reasonable qBCs transports the recovered filtration.

**Sources.**

- CN25, Proposition 4.26 and proof, pp. 28–29.

### Full faithfulness of reasonable qBCs in TVS

**Target:** `VectorBundlesAndIsocrystalsPartII:QBC.0/qbc-forgetful-full-faithfulness` (comparison).

For reasonable qBC objects W and W′ of the same type, the natural map Hom_qBC(W,W′)→Hom_TVS(W,W′) is bijective. Every TVS map carries W_{>0} into W′_{>0} and W_{≥0} into W′_{≥0}, and the middle map is a morphism of period Pairs. In particular an underlying TVS isomorphism is a qBC isomorphism and preserves height.

**Hypotheses and conventions.**

- The common-type condition concerns the middle Pair presentations and is retained throughout.
- The theorem is a Hom comparison; it does not claim qBC is abelian or that its filtration splits.

**Inputs.** `VectorBundlesAndIsocrystalsPartII:QBC.0/filtered-quasi-banach-colmez-spaces`, `VectorBundlesAndIsocrystalsPartII:QBC.0/intrinsic-curvature-filtration`, `VectorBundlesAndIsocrystalsPartII:QBC.0/positive-pair-orthogonality`, `VectorBundlesAndIsocrystalsPartII:TVS.2/pair-hom-comparison`, `VectorBundlesAndIsocrystals:VB3:general-BC/curvature-hom-orthogonality`.

**Proof plan.**

1. For an arbitrary map, apply the orthogonality arguments of VectorBundlesAndIsocrystalsPartII:QBC.0/intrinsic-curvature-filtration to the source positive piece and the target negative quotient; this proves preservation of both filtration steps without assuming the map injective or surjective.
2. The induced TVS map on middle Pairs is period-linear by VectorBundlesAndIsocrystalsPartII:TVS.2/pair-hom-comparison. Its uniqueness is already the uniqueness of the underlying natural transformation.
3. Apply the same argument to the inverse of a TVS isomorphism; filtered height invariance from VectorBundlesAndIsocrystalsPartII:QBC.0/filtered-quasi-banach-colmez-spaces then applies.

**Check.**

- For pure reasonable Pairs this specializes to Theorem 4.30.
- For classical BC objects it agrees with the parent full subcategory morphisms.

**Sources.**

- CN25, Corollary 4.31 and Remark 4.6(ii), pp. 22, 31.

### A nonzero left-heart object with zero Hausdorff quotient

**Target:** `VectorBundlesAndIsocrystalsPartII:QBC.0/dense-injection-extension-example` (construction).

Over Q_p let E_1=LA(Z_p,Q_p), E_0=C(Z_p,Q_p), and let J be their canonical dense proper continuous inclusion. Its left-heart cokernel X=[E_1→E_0] is nonzero. Hom_LH(X,Q_p)=0 and Ext¹_LH(X,Q_p)=D(Z_p,Q_p)/Mes(Z_p,Q_p), where the quotient is algebraic, or its natural left-heart object if one retains the non-Hausdorff topology. In the induced quotient topology zero is dense. This is a left-heart example, not an assertion that X is a period Pair or a qBC.

**Hypotheses and conventions.**

- Use the standard locally analytic inductive-limit topology, uniform topology on C, and their continuous duals.
- Finite-dimensional strict extensions split over the spherically complete field Q_p; do not apply that result to arbitrary C-spaces.

**Inputs.** `LocallyAnalyticDistributions:L0/strict-derived-category-left-heart`, `LocallyAnalyticDistributions:L0/finite-rank-strict-splitting`, `LocallyAnalyticDistributions:L1`, `LocallyAnalyticDistributions:L1/bounded-inclusion-topology`.

**Proof plan.**

1. Import E_1,E_0, their dense inclusion and the distributions/measure dual identification from L0/L1.
2. The inclusion is not an isomorphism of locally convex spaces and is not strict: its Hausdorff quotient is zero, whereas its left-heart cokernel has nonzero algebraic quotient.
3. Apply Hom(−,Q_p) to the presentation. The Hausdorff E_0 has no degree-one extension by the finite-dimensional target, so the five-term sequence identifies Ext¹ with the displayed cokernel. Density gives Hom(X,Q_p)=0.
4. Use the weak/strong dual topology specified by L1 for the measure inclusion to prove its density; record the exact topology, rather than interpreting the quotient as a Hausdorff vector space.

**Planning API.**

| Name | Role | Contract |
| --- | --- | --- |
| `DenseAnalyticInclusion` | data | Canonical LA→C map with its two fixed topologies. |
| `DenseAnalyticCokernel` | constructor | Its cokernel in the left heart, retaining the algebraic quotient. |
| `DenseAnalyticCokernel.dualExt` | characterisation | Hom to Q_p vanishes and Ext¹ is distributions modulo measures. |
| `DenseAnalyticCokernel.nonzero` | compatibility | Nonzero left-heart cokernel despite zero separated quotient. |

**Unit tests.**

- `DenseAnalyticCokernel.identity` (degenerate): Replacing J by the identity of C gives zero.
- `DenseAnalyticCokernel.nonstrict` (non-example): Dense proper J is not a strict monomorphism; treating it as one would collapse the left-heart object.
- `DenseAnalyticCokernel.dual` (computation): The connecting map sends a distribution to its class modulo measures, and a measure maps to zero.

**Consumers.**

- `VectorBundlesAndIsocrystalsPartII:TVS.0/period-pairs`: Shows why Pair quotients must not be Hausdorffized.
- `VectorBundlesAndIsocrystalsPartII:QBC.0/filtered-quasi-banach-colmez-spaces`: Explains why the qBC definition alone supplies no splitting theorem.

**Check.**

- A quotient construction that gives X=0 fails this example.
- The example does not establish a general Ext² vanishing or qBC splitting statement.

**Sources.**

- CN25, Remark 4.8(ii), p. 22.

**Layer acceptance.** All targets above have the stated API and checks; the following obligations must be discharged before proof closure: .

## H.0 — The period-valued height functor

On classical BC spaces construct the contravariant B_dR-valued functor h(W)=Hom_VS(W,B_dR), its bounded-target localization and the required VS Ext comparisons. Prove Ext^1_VS(W,B_dR)=0 for curvature ≤0, exactness of h there, and the general formula rank h(W)=height(W)+rank Ext^1_VS(W,B_dR). Carry the parent bounded-image and geometric-heart proof obligations explicitly.

**Layer dependencies.** `VectorBundlesAndIsocrystals:VB3:general-BC`, `PadicHodgeTheory:R06.1`, `ArithmeticGaloisDuality:R02.1`.

**Planets.** Period-valued height, Nonpositive period Ext vanishing, Height–rank formula.

### The contravariant period-valued height functor

**Target:** `VectorBundlesAndIsocrystalsPartII:H.0/period-valued-height-functor` (definition).

For a classical BC W define h(W)=Hom_VS(W,B_dR), with B_dR acting by multiplication on the target. Precomposition makes h a contravariant B_dR-linear functor. The canonical comparison identifies h(W) with colim_(k≥0) Hom_VS(W,t^(−k)B_dR^+) and with Hom_VS(W,B_dR^+)⊗_(B_dR^+)B_dR. Finite-dimensionality and the rank formula are the target VectorBundlesAndIsocrystalsPartII:H.0/height-rank-formula, not part of the definition.

**Hypotheses and conventions.**

- VS means the parent category of sympathetic Vector Spaces, with its fixed exact structure. It is neither the arithmetic G_K category nor the new TVS category.
- Bounded-target factorization is the parent Corollary 3.18 obligation; its open G-HOM is inherited here.

**Inputs.** `VectorBundlesAndIsocrystals:VB3:general-BC/sympathetic-vector-spaces`, `VectorBundlesAndIsocrystals:VB3:general-BC/torsion-vs-hom-vanishing`, `PadicHodgeTheory:R06.1`.

**Proof plan.**

1. Use the parent VS period functors B_dR^+,B_dR and its morphism groups; define scalar multiplication on natural transformations and verify functor laws.
2. Import the bounded-target/factorization theorem from the parent, including the topology/naturality argument that the parent review left open.
3. Identify t^(−k)-target Hom with the appropriate lattice multiple of the positive-target Hom. Localizing a module along t gives the filtered colimit; this algebraic localization is not itself the missing boundedness proof.

**Planning API.**

| Name | Role | Contract |
| --- | --- | --- |
| `BanachColmez.periodHeight` | data | The B_dR-module Hom_VS(W,B_dR). |
| `BanachColmez.periodHeightMap` | functoriality | Precomposition, preserving identity and reversing composition. |
| `BanachColmez.periodHeightLocalization` | equivalence | The filtered lattice-target colimit and positive-target scalar extension identify canonically with h(W). |
| `BanachColmez.periodHeightTorsion` | compatibility | For affine finite-length period Modules h=0 by the parent torsion-to-B_dR Hom vanishing. |

**Unit tests.**

- `BanachColmez.periodHeightZero` (degenerate): h(0)=0.
- `BanachColmez.periodHeightConstant` (computation): h(Q_p^r)=B_dR^r, functorially in finite-dimensional Q_p-vector spaces.
- `BanachColmez.periodHeightAffine` (computation): h(B_m)=0 for m≥1, although the BC has C-dimension m.
- `BanachColmez.periodHeightNegative` (non-example): h(C/Q_p)=0, whereas ht(C/Q_p)=−1; rank equals height only in the curvature ≤0 range.

**Consumers.**

- `VectorBundlesAndIsocrystalsPartII:H.0/nonpositive-period-ext-vanishing`: Its left exactness becomes exactness using the degree-one vanishing.
- `VectorBundlesAndIsocrystalsPartII:H.0/height-rank-formula`: The finite B_dR rank refines the integer height on the specified subcategory.
- `CN25 Proposition 5.18`: Controls period-valued maps in cohomological comparison; import the result into that roadmap.

**Check.**

- The direction of a map h(W′)→h(W) is opposite to W→W′.
- The identity of Q_p corresponds to the canonical evaluation vector in h(Q_p)=B_dR.

**Sources.**

- CN25, §3.3, p. 19; Corollary 3.18 and its proof, p. 18.

### VS Ext and filtered period localization

**Target:** `VectorBundlesAndIsocrystalsPartII:H.0/vs-ext-and-filtered-localization` (comparison).

For a classical BC W the natural map colim_k Ext¹_VS(W,t^(−k)B_dR^+)→Ext¹_VS(W,B_dR) is an isomorphism of B_dR-vector spaces. Establish Ext¹_VS(Q_p,V_1)=0 and, for every k≥0, Ext¹_VS(V_1,t^(−k)B_dR^+)≅C with connecting map Hom_VS(V_1,t^(−k−1)V_1)→Ext¹_VS(V_1,t^(−k)B_dR^+) an isomorphism. Consequently its transition to the next lattice-target Ext¹ is zero. Prove also Ext¹_VS(Q_p,B_dR^+)=0, including the inverse-limit passage through B_m.

**Hypotheses and conventions.**

- All displayed groups are in VS. A table computed in v-sheaves is used only after a comparison of exact categories and Ext has been proved.
- The filtered-colimit statement requires compactness/pseudocoherence for these BC sources in the relevant sheaf comparison; filtered colimits do not commute with arbitrary Ext by formal category theory.

**Inputs.** `VectorBundlesAndIsocrystalsPartII:H.0/period-valued-height-functor`, `VectorBundlesAndIsocrystals:VB3:general-BC/tilted-coherent-heart`, `VectorBundlesAndIsocrystals:VB3:general-BC/le-bras-equivalence`, `VectorBundlesAndIsocrystals:VB3:general-BC/torsion-vs-hom-vanishing`, `ArithmeticGaloisDuality:R02.1`.

**Proof plan.**

1. Read LeBras18 Theorem 4.1 as a sheaf Ext table on Perf_C,v. In particular Ext¹(Q_p,G_a)=0, Ext¹(G_a,G_a)=C and Ext² between G_a,Q_p vanish there. Import the parent curve/heart construction, but establish the restriction/geometrization comparison to VS for the sources and targets used here (G-VS).
2. AnschutzLeBras25 §3.1 builds Mac Lane/Breen resolutions, computes RHom for E and O^sharp, and establishes pseudocoherence using qcqs representable powers. Corollary 3.11 supplies full faithfulness for perfect complexes on the relative curve. Transport the bounded-period targets and verify filtered-colimit compatibility through the comparison; G-VS retains the missing transport, not the already stated sheaf theorem.
3. For Q_p pass from B_m by successive torsion quotients and use a Milnor/lim¹ argument: identify the degree-zero tower and its surjective transitions before setting lim¹ to zero.
4. For V_1 use 0→t^(−k)B_dR^+→t^(−k−1)B_dR^+→t^(−k−1)V_1→0, the parent torsion-to-positive-period Hom vanishing and the normalized degree-one class. Its boundary is the isomorphism C→C, so the following Ext transition is zero.

**Check.**

- A reference to sheaf Ext alone does not close this node.
- The C→C boundary must be proved nonzero using the normalized extension; equality of dimensions alone would not show the transition is zero.

**Sources.**

- CN25, §3.3 and Lemma 3.26 proof, pp. 19–20; LeBras18 Theorem 4.1, pp. 26–28; AnschutzLeBras25 §3.1, pp. 3670–3681.
- LeBras18, Theorem 4.1 and proof setup, pp. 26–28.
- AnschutzLeBras25, §3.1, Theorems 3.1, 3.2 and 3.9; Corollary 3.11, pp. 3670–3681.
- TVS25, Theorem 4.1, Corollary 4.7, pp. 24–26; Proposition 4.21 and Corollary 4.25, pp. 28–30.

### Vanishing and exactness in nonpositive curvature

**Target:** `VectorBundlesAndIsocrystalsPartII:H.0/nonpositive-period-ext-vanishing` (theorem).

If a classical BC W has curvature ≤0, then Ext¹_VS(W,B_dR)=0. Therefore every exact sequence 0→W_1→W→W_2→0 of such BC objects gives an exact sequence 0→h(W_2)→h(W)→h(W_1)→0.

**Hypotheses and conventions.**

- The h functor is contravariant. These are BC exact sequences interpreted in VS, not arbitrary period Pairs.

**Inputs.** `VectorBundlesAndIsocrystalsPartII:H.0/vs-ext-and-filtered-localization`, `VectorBundlesAndIsocrystalsPartII:H.0/period-valued-height-functor`, `VectorBundlesAndIsocrystals:VB3:general-BC/nonpositive-curvature-extensions`, `VectorBundlesAndIsocrystals:VB3:general-BC/affine-finite-length-equivalence`.

**Proof plan.**

1. For Q_p use the positive-ring vanishing and filtered localization in VectorBundlesAndIsocrystalsPartII:H.0/vs-ext-and-filtered-localization. For V_1 the lattice Ext transitions are zero by VectorBundlesAndIsocrystalsPartII:H.0/vs-ext-and-filtered-localization, so their filtered colimit vanishes.
2. Devise a finite-length affine BC along its t-filtration to obtain the vanishing for every affine object.
3. Import the parent characterization 0→V→W→M→0, with V finite-dimensional Q_p and M affine, for curvature ≤0. The long exact Ext sequence then proves the remaining case.
4. Apply Hom_VS(−,B_dR) to a short exact sequence in this subcategory to obtain the displayed contravariant exactness.

**Check.**

- For W=C and W=Q_p, Ext¹ is zero.
- The claim is not extended to C/Q_p, whose period Ext¹ has rank 1 by VectorBundlesAndIsocrystalsPartII:H.0/height-rank-formula.

**Sources.**

- CN25, Lemma 3.26 and its proof, pp. 19–20.

### Height and period Hom/Ext ranks

**Target:** `VectorBundlesAndIsocrystalsPartII:H.0/height-rank-formula` (theorem).

For every classical BC W, h(W) and Ext¹_VS(W,B_dR) have finite B_dR-dimension and rank_B_dR h(W)=ht(W)+rank_B_dR Ext¹_VS(W,B_dR). If W has curvature ≤0, the Ext¹ term vanishes and rank h(W)=ht(W).

**Hypotheses and conventions.**

- Height has the parent signed convention; no formula equating a nonnegative rank to an arbitrary negative height is asserted.

**Inputs.** `VectorBundlesAndIsocrystalsPartII:H.0/nonpositive-period-ext-vanishing`, `VectorBundlesAndIsocrystalsPartII:H.0/period-valued-height-functor`, `VectorBundlesAndIsocrystals:VB3:general-BC/banach-colmez-presentations`, `VectorBundlesAndIsocrystals:VB3:general-BC/nonpositive-curvature-extensions`, `VectorBundlesAndIsocrystals:VB3:general-BC/dimension-abelian`.

**Proof plan.**

1. For curvature ≤0 use 0→F→W→M→0 from the parent, h(M)=0 from torsion vanishing, and VectorBundlesAndIsocrystalsPartII:H.0/nonpositive-period-ext-vanishing. Obtain h(W)≅h(F) and rank equal to dim_Q_p F=ht(W).
2. For general W use the parent BC presentation 0→F_2→Y→W→0, where Y fits 0→F_1→Y→G_a^d→0 with F_1,F_2 constant finite-dimensional Q_p spaces and G_a(Λ)=Λ.
3. Y has curvature ≤0 by the parent extension criterion. The long exact sequence is 0→h(W)→h(Y)→h(F_2)→Ext¹(W,B_dR)→0 by VectorBundlesAndIsocrystalsPartII:H.0/nonpositive-period-ext-vanishing. Both middle terms have finite ranks dim_Q_p F_1 and dim_Q_p F_2. Take the alternating rank identity and use ht(W)=dim_Q_p F_1−dim_Q_p F_2.

**Check.**

- W=Q_p gives ranks (1,0) and height 1; W=C gives (0,0) and height 0.
- W=C/Q_p gives ranks (0,1) and height −1, verifying the sign of the correction term.
- The argument proves finiteness of Ext¹ as a quotient of a finite-rank B_dR space, not by assuming it in advance.

**Sources.**

- CN25, Proposition 3.27 and proof, p. 20.

**Layer acceptance.** All targets above have the stated API and checks; the following obligations must be discharged before proof closure: G-VS, G-HOM.

## Dependency requests and proof obligations

These records specify work at its existing owner. They are contracts in the plan, not messages sent to other workers. Each supplier must prove the actual application hypotheses; matching a theorem name alone is insufficient.

### Request 1 — PadicHodgeTheory:R06.1

Export the period-ring functors on the parent sympathetic category, with their locally convex topologies, θ, uniformly t-torsion quotients, countable topological B_m-basis lifts and completed-balanced-tensor compatibility. Supply the torsion correction π_t for the cyclotomic Z_p-extension, and the arbitrary-perfect-residue-field density Kbar⊂B_dR^+ and twist-invariant vanishing. Existing R06.1/algebraic-closure-in-bdr-plus supplies the embedding and finite-dimensional closedness, not this density statement.

Used by `VectorBundlesAndIsocrystalsPartII:AC.0/general-base-rigidity-inputs`, `VectorBundlesAndIsocrystalsPartII:AC.1/cyclotomic-generalized-invariants`, `VectorBundlesAndIsocrystalsPartII:TVS.0/period-module-realization`, `VectorBundlesAndIsocrystalsPartII:TVS.1/disc-translations`, `VectorBundlesAndIsocrystalsPartII:TVS.1/bounded-analytic-cocycles`, `VectorBundlesAndIsocrystalsPartII:TVS.1/disc-ext-class`, `VectorBundlesAndIsocrystalsPartII:TVS.2/fundamental-source-hom-ext`, `VectorBundlesAndIsocrystalsPartII:H.0/period-valued-height-functor`.

### Request 2 — PadicHodgeTheory:P7

Refine the existing P7/plan/sen-module contract to the E-linear algebraic-Sen-weight full-faithfulness argument of CN25 Remark 2.2, including allowed complete coefficient fields and the general-K scalar endomorphism statement. Its finite-K descent assertion alone does not prove these refinements.

Used by `VectorBundlesAndIsocrystalsPartII:AC.0/general-base-rigidity-inputs`.

### Request 3 — PadicHodgeTheory:R06.2

Supply the explicit finite-period presentations of extensions of C by finite-dimensional Q_p representations used in Fontaine03 §4.1 and their compatibility with the imported almost C category. The analytic fundamental lemma itself is not supplied by the category definition; its independent correspondence source is G-FUNDAMENTAL.

Used by `VectorBundlesAndIsocrystalsPartII:AC.1/almost-split-extensions`, `VectorBundlesAndIsocrystalsPartII:AC.1/fundamental-arithmetic-surjectivity`.

### Request 4 — ArithmeticGaloisDuality:R02.2

Continuous Hochschild–Serre and cyclotomic descent with finite/torsion coefficient correction, convergence and edge morphisms in the representation topologies used in Fontaine03 Theorem 2.14; compare the two-operator complex before any Lie-algebra simplification.

Used by `VectorBundlesAndIsocrystalsPartII:AC.1/generalized-invariant-complex`.

### Request 5 — ArithmeticGaloisDuality:R02.1

Apply the existing lim-one, Mittag–Leffler, Milnor-sequence and carrier-comparison APIs to the Banach/Fréchet inverse systems in CN25 Propositions 4.18 and Lemma 3.26. Prove the actual surjectivity/ML hypotheses of the Hom tower and retain the derived-limit term otherwise; algebraic surjectivity alone must not erase a topological lim¹.

Used by `VectorBundlesAndIsocrystalsPartII:TVS.2/hom-ext-from-b1`, `VectorBundlesAndIsocrystalsPartII:H.0/vs-ext-and-filtered-localization`.

### Request 6 — PerfectoidSpaces:P6

Provide the affinoid completed pro-étale presentation for the sympathetic disc closure/Kummer tower, compatible with its translation automorphisms and C-valued points. P6/canonical-pro-etale-presentation supplies the pro-category framework; the disc-specific completion is not a consequence of its name alone.

Used by `VectorBundlesAndIsocrystalsPartII:TVS.1/disc-translations`, `VectorBundlesAndIsocrystalsPartII:TVS.1/translation-invariant-proetale-class`.

### Request 7 — PerfectoidSpaces:P9

Refine P9/almost-cohomology-of-tower and function-descent-along-tower to the sympathetic completed closed-disc tower over C: identify exactly O versus completed O, perform rationalization/decompletion, and prove H¹_cts(H,C{X}tilde)=C{X}·ψ_1 with the uniform p-denominator correction bound of CN25 Proposition 4.10. Include the p=2 rescaling of the Kummer tower. Degree-zero function descent or almost cohomology alone does not give this normed isomorphism.

Used by `VectorBundlesAndIsocrystalsPartII:TVS.1/additive-lifts-and-rank`, `VectorBundlesAndIsocrystalsPartII:TVS.1/disc-ext-class`, `VectorBundlesAndIsocrystalsPartII:TVS.1/translation-invariant-proetale-class`.

### Request 8 — LocallyAnalyticDistributions:L0

Supply the separable nonspherically-complete C versions of strict completed-tensor exactness, continuous-functional separation and compact-type extension closure, using the actual stereotypical/strong dual comparison required in CN25 Appendix A.4. Retain the accepted L0 compact-type-extension-duality conditions until proved. For arbitrary separable Fréchet targets, justify the passage through Banach quotients in Proposition 4.18. Prove the finite-dimensional Q_p projectivity in the left heart used for constant-source TVS evaluation.

Used by `VectorBundlesAndIsocrystalsPartII:TVS.0/topological-vector-spaces`, `VectorBundlesAndIsocrystalsPartII:TVS.2/reasonable-c-spaces`, `VectorBundlesAndIsocrystalsPartII:TVS.2/reasonable-period-models`, `VectorBundlesAndIsocrystalsPartII:TVS.2/constant-source-hom-ext`, `VectorBundlesAndIsocrystalsPartII:TVS.2/hom-ext-from-b1`, `VectorBundlesAndIsocrystalsPartII:TVS.2/module-hom-ext-comparison`.

### Request 9 — LocallyAnalyticDistributions:L1

Use the existing L1/bounded-inclusion-topology density theorem and the L0 locally analytic function spaces to identify the dual exact sequence of the dense LA(Z_p,Q_p)→C(Z_p,Q_p) inclusion with distributions modulo measures, retaining its non-Hausdorff quotient topology in the left heart.

Used by `VectorBundlesAndIsocrystalsPartII:QBC.0/dense-injection-extension-example`.

### Request 10 — VectorBundlesAndIsocrystals:VB3:general-BC

Discharge the parent G-HOM bounded-target VS factorization and G-LEBRAS geometric-heart comparison precisely for Hom/Ext into the period-ring tower; give the VS↔v-sheaf exact/derived comparison needed by VectorBundlesAndIsocrystalsPartII:H.0/vs-ext-and-filtered-localization. The present packet imports the parent category and curve equivalence instead of replanning them.

Used by `VectorBundlesAndIsocrystalsPartII:H.0/period-valued-height-functor`, `VectorBundlesAndIsocrystalsPartII:H.0/vs-ext-and-filtered-localization`, `VectorBundlesAndIsocrystalsPartII:H.0/nonpositive-period-ext-vanishing`, `VectorBundlesAndIsocrystalsPartII:H.0/height-rank-formula`.

### G-GENERAL — General-base Sen rigidity and density

Verify the full coefficient-field hypotheses of CN25 Remark 2.2 and prove the arbitrary-K density and twist-invariant statements requested from R06.1/P7. The source attributes these to Sen and the construction of B_dR; finite K theory alone is not a proof for an infinite residue field.

Affects `VectorBundlesAndIsocrystalsPartII:AC.0/general-base-rigidity-inputs`, `VectorBundlesAndIsocrystalsPartII:AC.0/period-hom-rigidity`.

### G-FUNDAMENTAL — Independent analytic fundamental lemma

Fontaine03 Theorem 4.1 uses Colmez’s surjectivity/finite-kernel theorem for nonzero analytic correspondences. The parent BC packet does not own that classical skew-field construction. Split proposal CCB.0–CCB.1 must supply it, or a proof of the exact lemma must be added without circularly using the arithmetic fundamental theorem.

Affects `VectorBundlesAndIsocrystalsPartII:AC.1/fundamental-arithmetic-surjectivity`.

### G-ANALYTIC — Functorial equivariant analytic realization

FF18 Remark 2.26 states existence of BC realizations of almost C objects; the claimed exact faithful functor with G_K action requires an explicit category, presentation independence, natural C-evaluation and comparison of equivariant morphisms. The nonequivariant functor cannot be full since End_GK(C)=K whereas End_BC(V_1)=C.

Affects `VectorBundlesAndIsocrystalsPartII:AC.1/equivariant-analytic-realization`.

### G-TVS — Boundedness on nonclassical left-heart objects

Specify the quotient/bornological realization of LH(C_Qp), prove boundedness invariant under bicartesian localization, and prove the uniform-bounded functor subcategory has the pointwise exact structure used by Yoneda Ext. CN25 Definition 4.1 does not spell out this foundational verification. TVS25 Definition 3.32 instead uses condensed enriched presheaves on strictly totally disconnected perfectoids; adopting it would require an explicit comparison/restructure, not a silent change of definition.

Affects `VectorBundlesAndIsocrystalsPartII:TVS.0/topological-vector-spaces`, `VectorBundlesAndIsocrystalsPartII:TVS.0/period-module-realization`, `VectorBundlesAndIsocrystalsPartII:TVS.0/period-pairs`.

### G-TENSOR — Completion and injective base change

CN25 Definition 4.4 allows a topological model and asserts evaluation recovers it, although the completed-balanced tensor recovers a completion unless the model is complete separated. Prove completeness for the reasonable models, identify the exact completed tensor convention, and establish injection/strict exactness and uniform boundedness for the countable c0 realization. The plan explicitly uses complete models while recording the full printed generality as this obligation.

Affects `VectorBundlesAndIsocrystalsPartII:TVS.0/period-module-realization`, `VectorBundlesAndIsocrystalsPartII:TVS.0/period-pairs`, `VectorBundlesAndIsocrystalsPartII:TVS.2/reasonable-period-models`, `VectorBundlesAndIsocrystalsPartII:TVS.2/reasonable-pairs`, `VectorBundlesAndIsocrystalsPartII:TVS.2/module-hom-ext-comparison`.

### G-DISC — Normed descent and the completed-disc comparison

Make the standard almost-descent/decompletion step in CN25 Proposition 4.10 precise, including its p-bound and the O versus completed-O distinction. Check uniformity/integral-perfectoid completion of the concrete tower using the actual P1 hypotheses. At p=2 replace the nonconvergent exp(2X) equation by the E_2 tower in VectorBundlesAndIsocrystalsPartII:TVS.1/perfectoid-kummer-tower and compare its rational character with ψ_1, controlling norms. Colmez02 Theorem 10.5/Proposition 10.18 supplies additive character primitives, not this cohomological comparison.

Affects `VectorBundlesAndIsocrystalsPartII:TVS.1/perfectoid-kummer-tower`, `VectorBundlesAndIsocrystalsPartII:TVS.1/additive-lifts-and-rank`, `VectorBundlesAndIsocrystalsPartII:TVS.1/disc-ext-class`, `VectorBundlesAndIsocrystalsPartII:TVS.1/translation-invariant-proetale-class`.

### G-FRECHET — The full Fréchet passage

CN25 Proposition 4.18 is stated for all reasonable Fréchet spaces, whereas its brief proof explicitly invokes nuclear Fréchet spaces at the inverse-limit step. Establish the topological Hom/Ext inverse-limit comparison and vanishing of the relevant lim¹ for the stated separable Fréchet class, or identify the precise necessary restriction and propagate it. Do not silently replace the printed target by its nuclear subclass.

Affects `VectorBundlesAndIsocrystalsPartII:TVS.2/reasonable-c-spaces`, `VectorBundlesAndIsocrystalsPartII:TVS.2/hom-ext-from-b1`, `VectorBundlesAndIsocrystalsPartII:TVS.2/torsion-source-hom-ext`, `VectorBundlesAndIsocrystalsPartII:TVS.2/module-hom-ext-comparison`, `VectorBundlesAndIsocrystalsPartII:TVS.2/pair-hom-comparison`.

### G-COMPACT — Compact-type extensions over C

The accepted L0 plan retains conditions on strong-dual strict exactness and bidual continuity in compact-type-extension-duality. CN25 Appendix A.4 uses stereotypical duals; identify them with the needed duals and prove these hypotheses for separable C endpoints. C is not spherically complete. Also verify the topological evaluation isomorphism of additive lifts used in Proposition 4.27.

Affects `VectorBundlesAndIsocrystalsPartII:TVS.2/reasonable-c-spaces`, `VectorBundlesAndIsocrystalsPartII:TVS.2/reasonable-period-models`, `VectorBundlesAndIsocrystalsPartII:TVS.2/hom-ext-from-b1`, `VectorBundlesAndIsocrystalsPartII:TVS.2/linear-additive-lifts`, `VectorBundlesAndIsocrystalsPartII:TVS.2/module-hom-ext-comparison`, `VectorBundlesAndIsocrystalsPartII:TVS.2/pair-hom-comparison`.

### G-SEPARABILITY — Full B_m-model generality

CN25 §4.3 requires a separable C-space, but §4.3.2 does not repeat separability for B_m models. The proof of Proposition 4.22 reduces to the C case. Extend it to the full printed B_m class, or prove that the relevant presentations have separable graded pieces; otherwise record the exact restriction as a mathematical refinement. The packet exposes the countable-type flag instead of asserting it follows from being Fréchet.

Affects `VectorBundlesAndIsocrystalsPartII:TVS.2/reasonable-period-models`, `VectorBundlesAndIsocrystalsPartII:TVS.2/torsion-source-hom-ext`, `VectorBundlesAndIsocrystalsPartII:TVS.2/module-hom-ext-comparison`, `VectorBundlesAndIsocrystalsPartII:TVS.2/pair-hom-comparison`.

### G-VS — Transport of sheaf Ext and filtered colimits to VS

LeBras18 Theorem 4.1 and AnschutzLeBras25 §3.1 compute Ext/RHom in sheaves on a v-site and for curve perfect complexes. Prove the required exact/derived comparison with the parent sympathetic VS category, then verify pseudocoherence/filtered-colimit and inverse-limit hypotheses for the B_dR lattice tower. Neither the new TVS comparison nor a citation of the sheaf Ext table alone proves the VS statement. TVS25 Theorem 4.1 and Corollary 4.7 provide the enriched derived comparison in the condensed setting, with boundedness and nuclear compatibility in Proposition 4.21. Establishing its relation to the CN25 category remains necessary.

Affects `VectorBundlesAndIsocrystalsPartII:H.0/vs-ext-and-filtered-localization`, `VectorBundlesAndIsocrystalsPartII:H.0/nonpositive-period-ext-vanishing`, `VectorBundlesAndIsocrystalsPartII:H.0/height-rank-formula`.

### G-HOM — Inherited parent bounded-period Hom obligation

The parent torsion-vs-hom-vanishing node explicitly retains G-HOM: an arbitrary natural VS map into B_dR must factor through one t^(−N)B_dR^+ target. The h localization formula uses its full BC-source bounded-factorization extension. Import and resolve it in the parent owner, rather than assume every natural transformation is automatically bounded.

Affects `VectorBundlesAndIsocrystalsPartII:H.0/period-valued-height-functor`, `VectorBundlesAndIsocrystalsPartII:H.0/vs-ext-and-filtered-localization`, `VectorBundlesAndIsocrystalsPartII:H.0/nonpositive-period-ext-vanishing`, `VectorBundlesAndIsocrystalsPartII:H.0/height-rank-formula`.

## Complete routing and split boundaries

The two extractions route 293 items here: 49 from Colmez–Nizioł and 244 from Fargues–Fontaine. The packet contains one ledger entry for every item, with its locator and precise destination. The counts are 22 import, 10 import-refinement, 52 planned, 209 split. Import-refinement means the named existing owner needs the stated additional theorem; it does not mean its current contract already proves it.

The tables below group identical ownership decisions; ranges are only shorthand for the explicitly enumerated item ids. The reader’s 44 targets merge overlapping source results rather than repeating them. The split records are assignment briefs for independent directions, not mathematical proof plans for their full inventories.

| CN25 item ids | Owner targets |
| --- | --- |
| 200 | `VectorBundlesAndIsocrystalsPartII:AC.0/banach-galois-exact-category` |
| 201 | `PadicHodgeTheory:R06.2/almost-c-representation-category` |
| 202 | `VectorBundlesAndIsocrystalsPartII:AC.0/general-base-rigidity-inputs` |
| 203 | `PadicHodgeTheory:R06.2/almost-c-representation-category` |
| 204 | `PadicHodgeTheory:R06.2/almost-c-representation-category` |
| 205 | `VectorBundlesAndIsocrystalsPartII:AC.1/almost-split-extensions`, `VectorBundlesAndIsocrystalsPartII:AC.1/yoneda-ext-comparison` |
| 206 | `VectorBundlesAndIsocrystalsPartII:AC.1/euler-poincare-duality` |
| 207 | `VectorBundlesAndIsocrystalsPartII:AC.1/cyclotomic-generalized-invariants` |
| 208 | `VectorBundlesAndIsocrystalsPartII:AC.1/generalized-invariant-complex` |
| 209 | `VectorBundlesAndIsocrystalsPartII:AC.1/truncation-vanishing` |
| 210 | `VectorBundlesAndIsocrystalsPartII:AC.1/truncated-period-ext-table` |
| 211 | `VectorBundlesAndIsocrystalsPartII:AC.1/truncated-period-ext-table` |
| 212 | `VectorBundlesAndIsocrystalsPartII:AC.1/truncated-period-ext-table` |
| 213 | `VectorBundlesAndIsocrystalsPartII:AC.0/general-base-rigidity-inputs` |
| 331 | `VectorBundlesAndIsocrystalsPartII:H.0/period-valued-height-functor`, `VectorBundlesAndIsocrystalsPartII:H.0/vs-ext-and-filtered-localization` |
| 332 | `VectorBundlesAndIsocrystalsPartII:H.0/nonpositive-period-ext-vanishing` |
| 333 | `VectorBundlesAndIsocrystalsPartII:H.0/height-rank-formula` |
| 400 | `VectorBundlesAndIsocrystalsPartII:TVS.0/topological-vector-spaces` |
| 401 | `VectorBundlesAndIsocrystalsPartII:TVS.0/classical-bc-to-tvs` |
| 402 | `VectorBundlesAndIsocrystalsPartII:TVS.0/topological-vector-spaces` |
| 403 | `VectorBundlesAndIsocrystalsPartII:TVS.0/period-module-realization`, `VectorBundlesAndIsocrystalsPartII:TVS.0/period-pairs` |
| 404 | `VectorBundlesAndIsocrystalsPartII:QBC.0/filtered-quasi-banach-colmez-spaces` |
| 405 | `VectorBundlesAndIsocrystalsPartII:QBC.0/filtered-quasi-banach-colmez-spaces` |
| 406 | `VectorBundlesAndIsocrystalsPartII:QBC.0/dense-injection-extension-example`, `VectorBundlesAndIsocrystalsPartII:QBC.0/filtered-quasi-banach-colmez-spaces` |
| 407 | `VectorBundlesAndIsocrystalsPartII:TVS.1/disc-translations` |
| 408 | `VectorBundlesAndIsocrystalsPartII:TVS.1/perfectoid-kummer-tower` |
| 409 | `VectorBundlesAndIsocrystalsPartII:TVS.1/disc-ext-class` |
| 410 | `VectorBundlesAndIsocrystalsPartII:TVS.1/additive-lifts-and-rank` |
| 411 | `VectorBundlesAndIsocrystalsPartII:TVS.1/bounded-analytic-cocycles` |
| 412 | `VectorBundlesAndIsocrystalsPartII:TVS.1/additive-lifts-and-rank` |
| 413 | `VectorBundlesAndIsocrystalsPartII:TVS.1/translation-invariant-proetale-class` |
| 414 | `VectorBundlesAndIsocrystalsPartII:TVS.2/reasonable-c-spaces` |
| 415 | `VectorBundlesAndIsocrystalsPartII:TVS.2/reasonable-c-spaces` |
| 416 | `VectorBundlesAndIsocrystalsPartII:TVS.2/normalized-pushout-extensions` |
| 417 | `VectorBundlesAndIsocrystalsPartII:TVS.2/hom-ext-from-b1` |
| 418 | `VectorBundlesAndIsocrystalsPartII:TVS.2/profinite-cocycle-one-step` |
| 419 | `VectorBundlesAndIsocrystalsPartII:TVS.2/reasonable-period-models` |
| 420 | `VectorBundlesAndIsocrystalsPartII:TVS.2/normalized-pushout-extensions` |
| 421 | `VectorBundlesAndIsocrystalsPartII:TVS.2/torsion-source-hom-ext` |
| 422 | `VectorBundlesAndIsocrystalsPartII:TVS.2/reasonable-pairs` |
| 423 | `VectorBundlesAndIsocrystalsPartII:TVS.2/pair-hom-from-torsion` |
| 424 | `VectorBundlesAndIsocrystalsPartII:TVS.2/fundamental-source-hom-ext` |
| 425 | `VectorBundlesAndIsocrystalsPartII:QBC.0/positive-pair-orthogonality` |
| 426 | `VectorBundlesAndIsocrystalsPartII:QBC.0/intrinsic-curvature-filtration` |
| 427 | `VectorBundlesAndIsocrystalsPartII:TVS.2/module-hom-ext-comparison` |
| 428 | `VectorBundlesAndIsocrystalsPartII:TVS.2/linear-additive-lifts` |
| 429 | `VectorBundlesAndIsocrystalsPartII:TVS.2/pair-hom-comparison` |
| 430 | `VectorBundlesAndIsocrystalsPartII:QBC.0/qbc-forgetful-full-faithfulness` |
| 905 | `VectorBundlesAndIsocrystalsPartII:AC.0/period-hom-rigidity` |

| FF18 item ids | Disposition and owner | Boundary |
| --- | --- | --- |
| 11, 12 | split: `ClassicalBanachColmezCorrespondences:CCB.0` | Constructive sympathetic-disc analytic correspondences and independent fundamental surjectivity; the arithmetic use is G-FUNDAMENTAL, not a circular corollary of it. |
| 13, 14, 15, 16, 17, 26, 32, 53 | split: `ClassicalBanachColmezCorrespondences:CCB.1` | Skew-field multiplication, inverse, graph functors, trace-zero description and the Galois-equivariant D_K variant require a distinct constructive correspondence API. |
| 839 | split: `ClassicalBanachColmezCorrespondences:CCB.2` | Compare the existing U_(h,d) BC objects with Plût’s spectral realization; import the parent objects and prove the new analytic-model comparison. |
| 25 | import: `VectorBundlesAndIsocrystals:VB3:general-BC/sympathetic-vector-spaces`, `VectorBundlesAndIsocrystals:VB3:general-BC/banach-colmez-presentations` | Classical sympathetic algebras, BC objects and presentations are parent-owned. |
| 29, 30 | import: `VectorBundlesAndIsocrystals:VB3:general-BC/dimension-abelian` | These are the positivity clauses of the parent Dimension theorem; no new invariant is introduced. |
| 31 | import: `VectorBundlesAndIsocrystals:VB3:general-BC/exact-banach-points` | Parent C-point detection/exactness supplies this finite-Dimension assertion; it does not imply TVS fullness for arbitrary models. |
| 33, 34, 35, 38, 54 | import-refinement: `PadicHodgeTheory:R06.2`, `VectorBundlesAndIsocrystals:VB3:general-BC/semistable-period-example`, `VectorBundlesAndIsocrystals:VB3:general-BC/positive-range-dimension` | Period realization belongs to R06.2 and its existing BC comparisons. Extend their contracts to general filtered semistable D and the logarithmic-period cocycle assertion; the parent rank-two example alone does not cover that generality. Routing request RR1 records the exact additions. |
| 37 | split: `VectorBundlesAndIsocrystalsPartIV:PPF.0` | The positive logarithmic/rigid-period lattice theorem precedes the positive-period φ-module classification and is not the parent Robba equivalence. |
| 39 | import-refinement: `VectorBundlesAndIsocrystals:VB3:general-BC/dimension-abelian`, `VectorBundlesAndIsocrystals:VB3:general-BC/embedding-height-bound` | The rank bound for BC subobjects of a de Rham lattice is not the existing bound for subobjects of V_N. Extend the parent toolkit by the precise lattice-rank statement in RR2; do not pretend the two bounds have identical hypotheses. |
| 40 | import: `VectorBundlesAndIsocrystals:VB3:general-BC/standard-dimension-examples`, `VectorBundlesAndIsocrystals:VB3:general-BC/nonpositive-curvature-extensions` | Existing Dimension and fundamental exact sequences supply the U_m and B_m examples. |
| 41 | split: `VectorBundlesAndIsocrystalsPartIII:SFB.0` | The coprime-section multiplication criterion belongs to the graded complete-curve/PID argument, consuming the parent BC Dimension computations. |
| 42 | planned: `VectorBundlesAndIsocrystalsPartII:AC.0/general-base-rigidity-inputs` | Merge with the arbitrary-base scalar rigidity input; finite K hypotheses are not silently extended. |
| 43 | import: `PadicHodgeTheory:R06.2/almost-c-representation-category` | R06.2/almost-c-representation-category already states finite-K full faithfulness and cites its Sen proof; import it rather than add a second theorem. |
| 44, 45, 46, 47, 48, 50 | import: `PadicHodgeTheory:R06.2/almost-c-representation-category`, `PadicHodgeTheory:R06.1` | R06.2 already owns the almost C category, Dimension, abelianness and finite-period examples, using the imported fundamental period sequences. |
| 49, 55, 56 | planned: `VectorBundlesAndIsocrystalsPartII:AC.1/euler-poincare-duality`, `VectorBundlesAndIsocrystalsPartII:AC.1/yoneda-ext-comparison` | The arithmetic Ext/cohomology assertions merge into AC.1. Degree ≥3 vanishing and the alternating Euler characteristic use the corrected statements. |
| 51 | planned: `VectorBundlesAndIsocrystalsPartII:AC.1/fundamental-arithmetic-surjectivity` | The arithmetic fundamental theorem is owned here; its independent analytic lemma is precisely G-FUNDAMENTAL. |
| 52 | planned: `VectorBundlesAndIsocrystalsPartII:AC.1/equivariant-analytic-realization` | Strengthen the realization discussion to a reviewable exact faithful equivariant functor contract; presentation independence remains G-ANALYTIC. |
| 57 | import-refinement: `PadicHodgeTheory:R06.5` | The syntomic owner supplies the cohomology complex. Its BC/almost C realization is a precise extra supplier contract RR3; the existence of a fiber formula is not the realization theorem. |
| 96, 97 | import-refinement: `VStackSheavesAndLisseCategories:VS1` | The parent exports finite étale curve algebras to VS1. The Weinstein quotient and Drinfeld product statements extend that diamond/Weil owner in RR4 and are not prerequisites or targets of the qBC continuation. |
| 98 | import-refinement: `VectorBundlesAndIsocrystals:VB1/cohomology-of-twists` | The arbitrary closed-point formula refines the parent negative-twist cohomology target; its current explicit formula only treats λ=−1. RR5 specifies the extension. |
| 99, 100 | import: `VectorBundlesAndIsocrystals:VB3:general-BC/euler-poincare-height`, `VectorBundlesAndIsocrystals:VB3:general-BC/positive-range-dimension`, `VectorBundlesAndIsocrystals:VB2:classification/coherent-sheaf-classification` | Combine the parent first-coordinate degree calculation and Euler-height calculation by coherent-sheaf additivity to obtain Dimension Euler characteristic (degree,rank). This is a derived import, not a new height-only formula. |
| 539, 540, 544, 546, 549, 550, 551, 553, 554, 555, 556, 557, 559, 560, 561, 562, 563, 565, 568, 569, 570, 571, 572, 573, 575, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588 | split: `VectorBundlesAndIsocrystalsPartIII:SFB.0` | General non-finite-type complete curves, almost-Euclidean affine complements, gluing at finitely many DVRs and degree/cohomology compatibility. Import existing scheme divisors, Euclidean domains and finite locally free sheaves instead of recreating them; establish the genuinely broader complete-curve hypotheses. |
| 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602 | split: `AlgebraicVectorBundlesPartII:HN.0` | Degree–rank exact categories with a generic fibre and bounded subobject slopes, HN filtration/polygon, extremal slope subcategories and finite-length fixed-slope category. This generic vector-bundle direction is an explicit continuation of upstream AlgebraicVectorBundles, not a new parallel definition of its sheaf bundles or of L0 quasi-abelian categories. |
| 603, 604, 605, 606, 608, 609, 610, 611, 612 | split: `AlgebraicVectorBundlesPartII:HN.1` | Instantiate the generic HN formalism on complete-curve bundles, filtered spaces, isocrystals, lexicographic bi-degrees and Frobenius sheaves. Import the relevant carriers from existing bundle, Hodge and Robba owners; prove the HN compatibility and actual boundedness hypotheses in each example. |
| 617, 618, 619, 620, 621, 622, 623, 625, 626, 627, 628, 629, 630, 631, 632, 633, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668 | split: `VectorBundlesAndIsocrystalsPartIII:SFB.1` | Abstract complete-curve Riemann spheres and coefficient towers, finite étale degree/determinant calculus and descent, and the conditional degree-one modification classification criterion. Import HN.0–HN.1 and generic sheaf operations; do not reprove geometric Fargues–Fontaine bundle classification already owned by VB2. |
| 722, 798, 804, 841, 842, 843, 844, 845 | split: `VectorBundlesAndIsocrystalsPartIII:SFB.2` | Relate the abstract complete-curve/tower formalism to the parent geometric curve, add explicit graded/gluing comparison and the algebraic coefficient-extension line bundles. The geometric classification and BC modification calculation are imported; only the new schematic/tower interfaces are targets. |
| 810, 813 | import: `VectorBundlesAndIsocrystals:VB2:classification/dieudonne-manin-classification-of-bundles`, `VectorBundlesAndIsocrystals:VB2:classification/bundle-endomorphism-comparison`, `VectorBundlesAndIsocrystals:VB2:classification/fixed-slope-abelian-category` | The parent isoclinic classification and endomorphism comparison imply the fixed-slope categorical equivalence, with the opposite algebra and source slope −λ retained. |
| 840 | import: `VectorBundlesAndIsocrystals:VB3:general-BC/curvature-hom-orthogonality`, `VectorBundlesAndIsocrystals:VB3:general-BC/standard-dimension-examples` | The two zero-Hom assertions specialize existing BC curvature orthogonality and the U_(1,1) block; the classical spectral model itself belongs to CCB.2. |
| 846 | import: `VectorBundlesAndIsocrystals:VB2:classification/finite-etale-constant-algebras` | The parent classifies coefficient-field covers and gives geometric splitting after algebraic coefficient extension; do not re-plan simple connectedness or claim it over nonclosed E. |
| 850, 851, 852, 853, 854, 856, 857, 858, 859, 860, 861, 862, 863, 864, 865, 866, 867, 869, 870, 871, 872, 873, 876, 877, 878, 879 | split: `VectorBundlesAndIsocrystalsPartIII:SFB.3` | For a perfect F, specify continuous profinite actions, tests at the generic and closed points, cocycle twists, Galois descent for bundles and B_e modules, and the perfect-F classification/fundamental group. The parent geometric algebraically closed case and its annular actions are imported, not substituted for this broader descent theorem. |
| 1007, 1008, 1009, 1010, 1011, 1012, 1013, 1014, 1015, 1016, 1017, 1019, 1020, 1021, 1022, 1023, 1024, 1025, 1026, 1027, 1028, 1029, 1030, 1031 | split: `VectorBundlesAndIsocrystalsPartIV:PPF.0` | Positive-period φ-modules over B^+, its reduction and fraction field: exact/tensor/cohomology API, coefficient change, slope blocks, reduction equivalence, Ext and isocrystal descent. Import perfect-k isocrystals from their Hodge/crystalline owners; the arbitrary perfect residue-field extension is an explicit supplier refinement, not a consequence of algebraically closed Dieudonné–Manin. |
| 1032, 1033, 1034, 1035, 1036, 1037, 1038, 1039, 1040, 1041, 1042, 1043 | split: `VectorBundlesAndIsocrystalsPartIV:PPF.1` | Compare positive-period φ-modules with parent bundles through rationally graded coefficient towers and construct the inverse. Exactness is directional: retain the source’s distinction that the inverse equivalence need not preserve the designated exact structures. |
| 1044, 1045, 1046, 1047, 1048, 1049, 1050, 1051 | split: `VectorBundlesAndIsocrystalsPartIV:PPF.2` | Radius/crystalline positive-period variants and convergent F-isocrystals on the valuation quotient. Import the crystalline coefficient categories, specify a, coefficient radius and F hypotheses, and prove the comparison; do not rename the parent Robba category as this category. |
| 1078, 1079, 1080, 1082, 1083, 1085, 1086, 1097, 1098, 1099, 1100 | split: `VectorBundlesAndIsocrystalsPartIV:PPF.1` | Compare origin-adjoined φ-bundles, positive/Fréchet period modules, E^dagger and Robba modules, including finitely generated coherent objects. The parent owns only the punctured finite-projective Robba/bundle equivalence. Preserve essential surjectivity versus full faithfulness of E^dagger→Robba. |
| 1084 | import: `VectorBundlesAndIsocrystals:VB1/robba-bundle-equivalence` | The punctured finite-projective Robba equivalence is parent-owned; its general-E coefficient contract is requested there from RF0, not supplied by the more ambitious origin-adjoined comparison. |

### Proposed split: Classical analytic correspondences and the Colmez skew field

`ClassicalBanachColmezCorrespondences` continues `VectorBundlesAndIsocrystals`. Create the stated continuation, importing the listed existing carriers and theorems. Its assigned extraction items are disjoint from the owned targets of VectorBundlesAndIsocrystalsPartII. These are precise design briefs, not claims that their proof plans have been completed.

| Stage | Assigned target boundary |
| --- | --- |
| `CCB.0` | Construct finite-rank analytic Q_p-linear correspondences in the sympathetic disc closure and prove independently that a nonzero one is onto with finite-dimensional kernel. Export exactly the lemma needed by AC.1, so no proof uses the arithmetic theorem it supplies. |
| `CCB.1` | Construct correspondence composition, its skew field with center Q_p and maximal commutative subfield C, trace-zero character exact sequence, graph realizations and the equivariant D_K variant. |
| `CCB.2` | Compare Plût’s spectral X(d,h) realization with the parent U_(h,d) BC objects and their Hom/Dimension API. |

**Imported owners.**

- VectorBundlesAndIsocrystals:VB3:general-BC/sympathetic-vector-spaces
- VectorBundlesAndIsocrystals:VB3:general-BC/standard-dimension-examples
- PerfectoidSpaces:P6
- PerfectoidSpaces:P9

**Acceptance.**

- Check zero versus nonzero correspondence, scalar correspondences, inverses and graph kernels.
- For a trace-zero tensor prove the primitive/character relation with its uniform bound, not just equality on C-points.

**Assigned extraction ids.** 11, 12, 13, 14, 15, 16, 17, 26, 32, 53, 839.

### Proposed split: Degree–rank categories and Harder–Narasimhan theory

`AlgebraicVectorBundlesPartII` continues `AlgebraicVectorBundles`. Create the stated continuation, importing the listed existing carriers and theorems. Its assigned extraction items are disjoint from the owned targets of VectorBundlesAndIsocrystalsPartII. These are precise design briefs, not claims that their proof plans have been completed.

| Stage | Assigned target boundary |
| --- | --- |
| `HN.0` | Over the existing exact/quasi-abelian category, fix additive rank and degree, a faithful exact generic fibre and saturation axioms, and prove slope boundedness/attainment before constructing the unique HN filtration. Build the polygon and stable/fixed-slope finite-length APIs. |
| `HN.1` | Prove compatibility for complete-curve finite locally free sheaves, filtered spaces, isocrystals, Robba φ-modules, filtered φ-modules with lexicographic degrees and Frobenius sheaves; reuse every input carrier and establish each instance’s slope bounds. |

**Imported owners.**

- UPSTREAM:AlgebraicVectorBundles L0/L0A: finite locally free sheaves, tensor/duals, and pullback
- UPSTREAM:AlgebraicCurves Layer 12 only in its finite-type function-field setting
- LocallyAnalyticDistributions:L0
- PadicHodgeTheory:R06.2
- VectorBundlesAndIsocrystals:VB2:classification

**Acceptance.**

- A rank-one object is semistable; zero is handled without division by rank zero.
- The polygon uses (rank,degree), and split unequal slopes give a concave polygon.
- The abstract existence theorem must include actual boundedness and attainment assumptions; do not infer them from the existence of degree/rank alone.

**Assigned extraction ids.** 590, 591, 592, 593, 594, 595, 596, 597, 598, 599, 600, 601, 602, 603, 604, 605, 606, 608, 609, 610, 611, 612.

### Proposed split: Schematic complete curves, coefficient towers and descent

`VectorBundlesAndIsocrystalsPartIII` continues `VectorBundlesAndIsocrystals`. Create the stated continuation, importing the listed existing carriers and theorems. Its assigned extraction items are disjoint from the owned targets of VectorBundlesAndIsocrystalsPartII. These are precise design briefs, not claims that their proof plans have been completed.

| Stage | Assigned target boundary |
| --- | --- |
| `SFB.0` | For regular connected noetherian dimension-one schemes with the FF completeness/degree data, import scheme divisors and prove the complete-curve exact sequence, almost-Euclidean PID criterion, graded Proj criterion and gluing/cohomology at finitely many DVRs. This generality is not assumed finite type over E. |
| `SFB.1` | Using HN.0–HN.1 and existing sheaf pullback/pushforward, build abstract Riemann spheres and generalized coefficient towers, norm/determinant degree formulas, finite étale descent and the conditional elementary degree-one modification classification criterion. |
| `SFB.2` | Apply the abstract interfaces to the existing geometric FF curve and standard bundles, adding the missing graded/gluing descriptions and algebraic coefficient-extension line-bundle classification. Import GAGA and geometric bundle classification from VB2. |
| `SFB.3` | Extend from algebraically closed F to perfect F through continuous profinite-equivariant coherent sheaves, generic/closed point continuity tests, cocycle twists, Galois descent for B_e modules, perfect-F slope classification and its fundamental group. |

**Imported owners.**

- UPSTREAM:AlgebraicVectorBundles: existing finite locally free sheaves and their descent; no parallel sheaf/geometric bundle category
- UPSTREAM:AlgebraicCurves: function-field divisor interfaces within their stated finite-type range
- JacobianChallenge: scheme Cartier divisors and cohomology within its stated range
- AlgebraicVectorBundlesPartII:HN.0
- AlgebraicVectorBundlesPartII:HN.1
- VectorBundlesAndIsocrystals:VB2:ampleness
- VectorBundlesAndIsocrystals:VB2:classification

**Acceptance.**

- Test the projective line and a generalized Riemann sphere separately.
- Do not use classical function-field RR outside its finite-type hypotheses.
- On an algebraically closed F specialize descent/classification back to the parent without reproducing its proofs.
- The generalized-sphere extension hypothesis is explicit; classification is not asserted without it.

**Assigned extraction ids.** 41, 539, 540, 544, 546, 549, 550, 551, 553, 554, 555, 556, 557, 559, 560, 561, 562, 563, 565, 568, 569, 570, 571, 572, 573, 575, 578, 579, 580, 581, 582, 583, 584, 585, 586, 587, 588, 617, 618, 619, 620, 621, 622, 623, 625, 626, 627, 628, 629, 630, 631, 632, 633, 635, 636, 637, 638, 639, 640, 641, 642, 643, 644, 645, 646, 647, 648, 649, 650, 651, 652, 653, 654, 656, 657, 658, 659, 660, 661, 662, 663, 664, 665, 666, 667, 668, 722, 798, 804, 841, 842, 843, 844, 845, 850, 851, 852, 853, 854, 856, 857, 858, 859, 860, 861, 862, 863, 864, 865, 866, 867, 869, 870, 871, 872, 873, 876, 877, 878, 879.

### Proposed split: Positive-period Frobenius modules and their curve comparisons

`VectorBundlesAndIsocrystalsPartIV` continues `VectorBundlesAndIsocrystals`. Create the stated continuation, importing the listed existing carriers and theorems. Its assigned extraction items are disjoint from the owned targets of VectorBundlesAndIsocrystalsPartII. These are precise design briefs, not claims that their proof plans have been completed.

| Stage | Assigned target boundary |
| --- | --- |
| `PPF.0` | Build φ-modules over B^+, its reduction and fraction field, their tensor/dual/cohomology and coefficient-change API; prove reduction full faithfulness and classification over algebraically closed and general perfect residue fields. Include the positive rigid/logarithmic-period stable-lattice theorem. |
| `PPF.1` | Construct the positive-module/bundle functor, rationally graded tower inverse, and the origin-adjoined, Fréchet B, E^dagger and punctured Robba comparisons. Import the existing punctured finite-projective Robba equivalence. State exactly which exact structures and which arrows are fully faithful or essentially surjective. |
| `PPF.2` | Develop radius/crystalline positive-period variants, the F-isocrystal valuation-quotient and convergent-isocrystal comparisons; coordinate perfect-residue isocrystals with their existing Hodge/crystalline owners. |

**Imported owners.**

- PadicHodgeTheory:R06.1
- PadicHodgeTheory:R06.2
- CrystallineCohomology: existing isocrystal carriers and coefficient realization (exact stage to be verified in the design)
- VectorBundlesAndIsocrystals:VB1/robba-bundle-equivalence
- VectorBundlesAndIsocrystals:VB2:classification
- VectorBundlesAndIsocrystalsPartIII:SFB.3

**Acceptance.**

- Treat algebraically closed residue fields and arbitrary perfect ones separately.
- Test rank-one slopes, the opposite division algebra and the minus sign between isocrystal and bundle slopes.
- Do not infer exactness of an inverse equivalence or full faithfulness of E^dagger→Robba from essential surjectivity.
- Finitely generated coherent φ-modules need their own torsion treatment, not only the finite-projective equivalence.

**Assigned extraction ids.** 37, 1007, 1008, 1009, 1010, 1011, 1012, 1013, 1014, 1015, 1016, 1017, 1019, 1020, 1021, 1022, 1023, 1024, 1025, 1026, 1027, 1028, 1029, 1030, 1031, 1032, 1033, 1034, 1035, 1036, 1037, 1038, 1039, 1040, 1041, 1042, 1043, 1044, 1045, 1046, 1047, 1048, 1049, 1050, 1051, 1078, 1079, 1080, 1082, 1083, 1085, 1086, 1097, 1098, 1099, 1100.

### Routing-only supplier refinements

These five refinements complete the extraction ledger. They are outside the seven owned layers and add no dependency from this plan to a higher consumer.

- **RR1 — PadicHodgeTheory:R06.2.** For general filtered semistable D in the allowed slope range, construct the BC period eigenspaces, compute both entries of Dimension, identify V_st as the period-map kernel, and prove the t_H=t_N surjectivity criterion and the positive-logarithmic-period cocycle assertion. Existing rank-two examples supply checks, not this general theorem. Items: PAPER-FARGUES-FONTAINE-18/33, PAPER-FARGUES-FONTAINE-18/34, PAPER-FARGUES-FONTAINE-18/35, PAPER-FARGUES-FONTAINE-18/38, PAPER-FARGUES-FONTAINE-18/54.
- **RR2 — VectorBundlesAndIsocrystals:VB3:general-BC/dimension-abelian.** For a BC subobject W⊂(B_dR^+)^d, prove ht(W)≥rank_B_dR^+ of its generated submodule; deduce that B_dR^+ contains no V_1. This is additional to embedding-height-bound for W⊂V_N. Items: PAPER-FARGUES-FONTAINE-18/39.
- **RR3 — PadicHodgeTheory:R06.5.** For the proper smooth algebraic semistable setting of the cited syntomic result, upgrade the existing syntomic complex to its BC realization and compatible almost C Galois C-evaluation. Keep the coefficient twist and truncation ranges from that theorem. Items: PAPER-FARGUES-FONTAINE-18/57.
- **RR4 — VStackSheavesAndLisseCategories:VS1.** Own the Weinstein diamond-quotient fundamental group and the Frobenius quotient product/Drinfeld lemma, with exact bases and coefficient characteristic; import the parent finite étale coefficient-algebra theorem. These exports are outside this continuation’s dependency graph. Items: PAPER-FARGUES-FONTAINE-18/96, PAPER-FARGUES-FONTAINE-18/97.
- **RR5 — VectorBundlesAndIsocrystals:VB1/cohomology-of-twists.** Extend the stated negative-twist cohomology interface to the explicit quotient at an arbitrary classical point y, for each negative rational λ. The current λ=−1 untilt formula is one test case. Items: PAPER-FARGUES-FONTAINE-18/98.

## Source register and corrections

All statements and proof plans here are in our own words. Numbered locators use the exact version below. No published text is inferred from an uncollated preprint.

### CN25 — On the cohomology of p-adic analytic spaces, II: The C_st-conjecture

Pierre Colmez and Wiesława Nizioł. CN5.pdf, authors’ preprint dated 24 November 2024, 61 pages; numbered locators use this pagination. Duke Math. J. 174 (2025), 2203–2301, DOI 10.1215/00127094-2024-0074 is bibliographic metadata only; its text was not collated.

[Source](https://webusers.imj-prg.fr/~wieslawa.niziol/CN5.pdf). Read 2026-10-19; SHA-256 `bb1628cf1f4321243e6070be2abae99f72a41e237e70a7eb1ec1fc03cc2cd52a`.

Read scope: §2, pp. 8–12; §3.3, pp. 19–20; Corollary 3.18, p. 18; §4, pp. 20–31; Appendix A, pp. 58–60.

### FF18 — Courbes et fibrés vectoriels en théorie de Hodge p-adique

Laurent Fargues and Jean-Marc Fontaine; preface by Pierre Colmez. Authors’ courbe.pdf dated 16 April 2017, 399 PDF pages; printed page = PDF page −10. Astérisque 406 (2018), DOI 10.24033/ast.1056 is not collated. The split inventory is routing work, not a claim to have checked all proofs in Chapters 5, 8, 9 and 11.

[Source](https://www.imo.universite-paris-saclay.fr/~fontaine/courbe.pdf). Read 2026-10-19; SHA-256 `cc159f38a3801c736b71ecea363496abe7706550bfb416600718ee9933922ca3`.

Read scope: Preface §§2.2–2.4, printed pp. 12–23; §5.5.1, printed pp. 212–214, ownership boundary only.

### Fontaine03 — Presque C_p-représentations

Jean-Marc Fontaine. Documenta Mathematica, Extra Volume Kato (2003), pp. 285–385; journal PDF, printed pagination.

[Source](https://ftp.gwdg.de/pub/misc/EMIS/journals/DMJDMV/vol-kato/fontaine.dm.pdf). Read 2026-10-19; SHA-256 `379a3c41359063b36c5ef6c5ebae8117a265536d03d583dbe0cccffc9caed44c`.

Read scope: Introduction, pp. 289–294; Theorem 2.14 and proof, pp. 309–311; §3.3, pp. 324–326; §6.1–6.5, pp. 355–368, Ext proof route.

### Colmez02 — Espaces de Banach de dimension finie

Pierre Colmez. Author-hosted jussieucorps.pdf; internal pagination, not the journal pagination 331–439 (JIMJ 1, 2002).

[Source](https://webusers.imj-prg.fr/~pierre.colmez/jussieucorps.pdf). Read 2026-10-19; SHA-256 `3675d316c726cde8f55d3d3582e270e94d2dc1d814196e7cbf7b38d42e3d0c63`.

Read scope: §§5.5–5.6, Propositions 5.20 and 5.23, pp. 30–32; Theorem 10.5, pp. 76–77; §10.5, pp. 82–83.

### Schneiders99 — Quasi-abelian categories and sheaves

Jean-Pierre Schneiders. Mémoires de la SMF 76 (1999), Numdam scan; printed pagination.

[Source](https://www.numdam.org/item/10.24033/msmf.389.pdf). Read 2026-10-19; SHA-256 `47967a3f77b40eb787321878039e1ef8160d7965d7b623d1a55c54a8ad59ffea`.

Read scope: Corollaries 1.2.20–1.2.22, pp. 24–25; generic theory imported from LocallyAnalyticDistributions L0.

### LeBras18 — Espaces de Banach–Colmez et faisceaux cohérents sur la courbe de Fargues–Fontaine

Arthur-César Le Bras. Author-hosted 1801.00422.pdf; internal pagination. The Ext table below is initially a table in sheaves on Perf_C,v, not automatically in sympathetic Vector Spaces.

[Source](https://lebras.perso.math.cnrs.fr/1801.00422.pdf). Read 2026-10-19; SHA-256 `c0f41dcb5eff1ac61bdefa179cd90687c353bf3d1ad4a31d5b1dec754701c7fa`.

Read scope: §4, Theorem 4.1 and its proof setup, pp. 26–28.

### AnschutzLeBras25 — A Fourier transform for Banach–Colmez spaces

Johannes Anschütz and Arthur-César Le Bras. J. Eur. Math. Soc. 27 (2025), 3651–3712; journal PDF, printed pagination.

[Source](https://ems.press/content/serial-article-files/51138). Read 2026-10-19; SHA-256 `e248575b33e487ea9db38b91aa1997b2d49822c167f3016d2efab48b3c761ca4`.

Read scope: §3.1, Theorems 3.1, 3.2, 3.9 and Corollary 3.11, pp. 3670–3681.

### TVS25 — Topological Vector Spaces

Pierre Colmez and Wiesława Nizioł. Author-hosted TVS-arxiv.pdf dated 21 November 2025, 32 pages (author index labels it September 2025). This changes to condensed enriched presheaves and is not an identification with the older left-heart category.

[Source](https://webusers.imj-prg.fr/~wieslawa.niziol/TVS-arxiv.pdf). Read 2026-10-19; SHA-256 `81b8d8e8bba6bcc64180e24ae1c87ba86da5b16e8e63da3862210f0a7c35389a`.

Read scope: Introduction and Theorem 1.1, pp. 1–3; Definition 3.32 and §4.1, pp. 23–26; §4.2.3–4.2.4, Proposition 4.21 and Corollary 4.25, pp. 28–31.

- The publisher DOI and author page identify Duke 174 (2025), 2203–2301. The publisher PDF endpoint returned an HTML access page, so CN25 findings are solely against the dated 61-page author preprint. They do not allege the same text in the 99-page version of record.
- The SMF publication page supplies bibliographic metadata and a sample, not a freely served full version. FF18 findings refer solely to the dated 2017 author copy. No uncleared book copy was used.
- TVS25 supplies an enriched condensed comparison with explicit boundedness/nuclear hypotheses; it is a proof route for the old-category comparison obligation, not evidence that those hypotheses hold automatically.

The following are findings for independent verification, not already adjudicated errata. “Printed” is always a paraphrase or a mathematical formula, never a source passage. The publication/author-page and correction searches are recorded for each finding in the packet.

### E1 — misprint (CN25)

**Locator.** CN5 author preprint, Lemma 2.10 proof, p. 11.

**Observed issue.** The induction range is written with the upper bound j−1 instead of k−1.

**Correction.** Use the range 0≤j≤k−1 in the truncation argument.

**Reason.** The proof varies j while fixing the length k; the printed self-referential upper bound gives an empty range. The Ext table uses the corrected bound.

**Reach.** the proof. **Correction status.** No correction located in the sources searched; independent verification required. This finding is scoped to the version read.

### E2 — misprint (CN25)

**Locator.** CN5 author preprint, Remark 4.3, p. 21.

**Observed issue.** The injective two-term presentation of the left heart is attributed to Schneiders Corollary 1.2.20.

**Correction.** The relevant result is Corollary 1.2.21; 1.2.20 concerns the left cohomology functor.

**Reason.** Read both numbered statements in Schneiders99, pp. 24–25.

**Reach.** nothing. **Correction status.** No correction located in the sources searched; independent verification required. This finding is scoped to the version read.

### E3 — misprint (CN25)

**Locator.** CN5 author preprint, Definition 4.7, p. 22.

**Observed issue.** The curvature≤0 clause refers to W≤0, which the filtration has not defined.

**Correction.** Use W>0=0, as the same clause explains parenthetically.

**Reason.** The displayed filtration has only W>0 and W≥0; this interpretation agrees with the parent curvature convention.

**Reach.** nothing. **Correction status.** No correction located in the sources searched; independent verification required. This finding is scoped to the version read.

### E4 — error (CN25)

**Locator.** CN5 author preprint, Lemma 4.9 proof, p. 23, at p=2.

**Observed issue.** The initial integral equation uses exp(pX) in the closed-disc Tate algebra for every prime.

**Correction.** At p=2 replace the E_1 tower by the E_2 tower of TVS.1/perfectoid-kummer-tower, complete it p-adically, and compare rational characters and norm estimates.

**Reason.** For n=2^r the coefficient 2^n/n! of exp(2X) has valuation 1, so the coefficients do not tend to zero. Thus exp(2X) is not in C{X}. The E_2 equation uses exp(4X), which converges, and gives Y_0²+Y_0=X modulo 2. The proof of uniform completed perfectoidness is retained in G-DISC.

**Reach.** the proof. **Correction status.** No correction located in the sources searched; independent verification required. This finding is scoped to the version read.

### E5 — misprint (CN25)

**Locator.** CN5 author preprint, Lemma 4.13 proof, p. 24.

**Observed issue.** The coefficient used to bound a_k is indexed b_(i,k−1), and the indicated special choice is i=p^r for r=v_p(k).

**Correction.** Use b_(i,k−i); choose i=1 if p does not divide k and i=p^(r−1) if r≥1.

**Reason.** For k=p^r the printed choice gives i=k, outside 1≤i≤k−1, and binomial(k,k)=1 has valuation zero. The corrected interior choice has binomial valuation one and gives the claimed uniform p-denominator bound, including p-powers.

**Reach.** the proof. **Correction status.** No correction located in the sources searched; independent verification required. This finding is scoped to the version read.

### E6 — misprint (CN25)

**Locator.** CN5 author preprint, Lemma 4.13 normalization step, p. 24.

**Observed issue.** After treating a cocycle with zero constant term, the adjustment is described using the positive original constant.

**Correction.** For the convention f(Y,Z)=u(Y+Z)−u(Y)−u(Z), add the negative constant to u; fix the otherwise arbitrary linear coefficient to zero.

**Reason.** For f=c, the constant primitive u=−c gives δu=c, whereas u=c gives δu=−c.

**Reach.** the proof. **Correction status.** No correction located in the sources searched; independent verification required. This finding is scoped to the version read.

### E7 — misprint (CN25)

**Locator.** CN5 author preprint, Lemma 4.24(i), p. 28.

**Observed issue.** The displayed Ext¹_TVS(U_d,W) value is W, although the ensuing proof derives zero.

**Correction.** Ext¹_TVS(U_d,W)=0 for reasonable period Module targets. Hom_TVS(U_d,W)=W remains as stated.

**Reason.** The connecting map W→W/t^dW in the long exact sequence is surjective; the next term is the asserted Ext¹. The source proof explicitly uses this vanishing. The plan uses the vanishing and does not extend it to arbitrary Pair targets.

**Reach.** a stated result. **Correction status.** No correction located in the sources searched; independent verification required. This finding is scoped to the version read.

### E8 — gap (CN25)

**Locator.** CN5 author preprint, Definition 4.4 discussion, p. 21, and Theorem 4.30, p. 31.

**Observed issue.** The discussion asserts agreement of both Hom and Ext for reasonable Pairs and points to Theorem 4.30.

**Correction.** The theorem proves Hom comparison. An Ext comparison for arbitrary Pairs requires a separate theorem and hypotheses; it is not used in this plan.

**Reason.** Theorem 4.30 is a three-way Hom isomorphism. Proposition 4.27 proves Ext¹ for Modules, which does not on its own prove the asserted Pair Ext statement.

**Reach.** a stated result. **Correction status.** No correction located in the sources searched; independent verification required. This finding is scoped to the version read.

### E9 — gap (CN25)

**Locator.** CN5 author preprint, Proposition 4.18 proof, p. 26.

**Observed issue.** The proposition covers reasonable Fréchet spaces, but the limit argument is explicitly described for nuclear Fréchet spaces.

**Correction.** Prove the required topological inverse-limit Hom/Ext comparison for all separable Fréchet spaces or state and propagate the necessary narrower hypothesis.

**Reason.** The definition of reasonable on p. 25 imposes separability and Fréchet or compact type, not nuclearity. Identifying the relevant derived-limit obstruction is G-FRECHET; this is a proof obligation, not a counterexample to the theorem.

**Reach.** the proof. **Correction status.** No correction located in the sources searched; independent verification required. This finding is scoped to the version read.

### E10 — gap (CN25)

**Locator.** CN5 author preprint, §4.3.2 and Proposition 4.22 proof, pp. 26–27.

**Observed issue.** The B_m definition omits the separability condition explicitly imposed on C-spaces, while its proof reduces to the C-space calculation.

**Correction.** Supply the nonseparable extension or verify countable-type graded pieces for the applications; distinguish this flag in the B_m-model API.

**Reason.** Being Fréchet does not imply a dense countably generated submodule. The existing proof contract only accounts for the separable C base case. G-SEPARABILITY records the unproved scope extension.

**Reach.** the proof. **Correction status.** No correction located in the sources searched; independent verification required. This finding is scoped to the version read.

### E11 — gap (CN25)

**Locator.** CN5 author preprint, Definition 4.4 and footnote 10, p. 21.

**Observed issue.** Completed balanced tensor realization is said to recover the topological model at C without an explicit completeness/separation hypothesis on that model.

**Correction.** Use complete separated models and prove evaluation there, or specify a completion convention and its exactness for the larger class.

**Reason.** Tensoring the scalar unit and completing recovers the separated completion of an incomplete model. The roadmap uses complete models and retains the full printed generality and injective base-change verification in G-TENSOR.

**Reach.** the proof. **Correction status.** No correction located in the sources searched; independent verification required. This finding is scoped to the version read.

### E12 — misprint (CN25)

**Locator.** CN5 author preprint, proof of Proposition 4.27, equation (4.28) discussion, p. 30.

**Observed issue.** One convergent expansion repeats i inside the expression defining the coefficient v_i.

**Correction.** Use a separate summation index j when expanding v_i=Σ_j a_(i,j)w_j.

**Reason.** The subsequent double-sum argument keeps i as the index of e_i; binding i again loses that coefficient. The roadmap states the double sum with distinct indices.

**Reach.** nothing. **Correction status.** No correction located in the sources searched; independent verification required. This finding is scoped to the version read.

### E13 — error (FF18)

**Locator.** 2017 author copy, Preface Remark 2.24(i), printed p. 21.

**Observed issue.** Cohomology is claimed to vanish in every degree i≥2 for an almost C-representation.

**Correction.** Use vanishing in degrees i≥3; degree 2 can be nonzero.

**Reason.** For the finite-dimensional almost C object Q_p(1), local Tate duality gives H²(G_K,Q_p(1))≅Q_p. The corrected general range is CN25 Theorem 2.6.

**Reach.** a stated result. **Correction status.** CN25 Theorem 2.6, p. 10, gives the correct degree range, without being identified as an erratum to this preface.

### E14 — misprint (FF18)

**Locator.** 2017 author copy, Preface Proposition 2.28(i), printed p. 23.

**Observed issue.** The Euler characteristic sums Ext dimensions without alternating signs.

**Correction.** Insert (−1)^i in the sum over i=0,1,2.

**Reason.** For W_1=W_2=Q_p over finite K/Q_p the Ext dimensions are 1, [K:Q_p]+1, 0. Their alternating sum is −[K:Q_p], whereas their unsigned sum is positive.

**Reach.** a stated result. **Correction status.** CN25 Theorem 2.6, p. 10, states the signed formula correctly; no dedicated erratum located.

### E15 — misprint (Fontaine03)

**Locator.** Journal PDF, Theorem 6.1, printed p. 355.

**Observed issue.** The Euler-characteristic display lacks alternating signs, contains an extra equality to zero, and uses a different dummy index in the Ext term.

**Correction.** Use Σ_(i=0)^2 (−1)^i dim_Q_p Ext^i(W_1,W_2)=−[K:Q_p]h(W_1)h(W_2), with one consistent index.

**Reason.** The Q_p,Q_p calculation in the preceding finding contradicts the printed unsigned and zero forms; the signed formula agrees with CN25 Theorem 2.6.

**Reach.** a stated result. **Correction status.** CN25 Theorem 2.6, p. 10, records the correct formula; no separate Documenta correction located.

### E16 — misprint (FF18)

**Locator.** 2017 author copy, Theorem 5.5.3, printed p. 213.

**Observed issue.** The coordinate pair for the HN polygon is written in degree–rank order.

**Correction.** Use (rank, degree), consistent with the preceding definition of the polygon and the slope convention.

**Reason.** The horizontal coordinate is rank and the slope of a segment is degree divided by rank. Interchanging them contradicts that definition.

**Reach.** nothing. **Correction status.** No correction located in the sources searched; independent verification required. This finding is scoped to the version read.

### E17 — misprint (CN25)

**Locator.** CN5 author preprint, Appendix A.3, printed p. 59.

**Observed issue.** The proposed metric uses the smallest filtration index at which a difference leaves U_n.

**Correction.** Use the first exit index with an explicit zero-distance convention for a difference contained in every U_n; equivalently use the usual supremum-of-membership filtration metric and assign distance zero at the origin.

**Reason.** At x=y no exit index exists. The left-heart/Fréchet targets import the established L0 metrization rather than using this formula without its zero convention.

**Reach.** nothing. **Correction status.** No correction located in the sources searched; independent verification required. This finding is scoped to the version read.

## Suggested file and completion standard

The companion suggested file elaborates at the pinned Mathlib environment. It contains one genuine native linear-map target testing the inverse cyclotomic scalar in the differential, two special-case examples and three native torsion compatibility examples. All six proof placeholders are theorem/example bodies. It contains no invented period-ring or category carriers. The missing-carrier definitions, API and their mathematical unit tests above are the implementation specification.

The pass has 44 nodes: 9 definitions, 22 theorems, 6 constructions, 5 comparisons and 2 lemmas; 59 API items, 48 mathematical unit tests, 25 planets and 6 cited baseline declarations. All seven stages are planned, with 11 explicit proof obligations and 10 supplier requests. The complete routing ledger also records 5 supplier refinements and 4 split proposals. Proof closure requires resolving the relevant obligations and checking every supplier contract, including the inherited parent gaps.
