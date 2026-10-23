# Complex Shimura varieties and canonical models, Part II: integral reduction and Frobenius classes

This continuation connects the canonical Shimura tower to integral reduction and to a rational conjugacy-quotient class for geometric Frobenius. It imports the normalized interior model, develops its canonical tensors and corrected local geometry, constructs abelian-type descent with conjugated levels, and proves ordinary special lifting and same-residue-field curve comparison. Generic local models, tensor displays and companion theorems remain explicit supplier contracts. Independent Honda–Tate classification, mod-p uniformization, orthogonal cycles and cohomology directions receive separate ownership proposals.

This is a target-level design, not an implementation. Every target below has implementation status unchecked. All eight layers are planned; the 27 exact supplier contracts remain open, so no layer is labelled closed. The full dependency graph and machine-readable route audit accompany this reader in the packet.

## Scope and conventions

The endpoint is Kisin–Zhou Theorem 5.1.4: for a strongly acceptable triple and a special-fibre F_q-point, the exact geometric q-Frobenius determines one point of Conj(G)(Q), compatible with every ℓ≠p. The general abelian-type integral-model construction has a wider range than that endpoint. General Honda–Tate classification, all-isogeny-class CM lifts, arithmetic gerbs, Langlands–Rapoport, nearby cycles, orthogonal special divisors and automorphic cohomology have the separate owners listed below. The existing RG3.5 abelian-variety application imports this geometric theorem; it is not a prerequisite.

Fix an odd prime p, an embedding into Q_p-bar, and a place v of the reflex field E. Write O_E for its local ring, k_E for its residue field, k for an algebraic closure, L=Frac W(k), and σ for Witt Frobenius. Finite fields F_q are finite extensions of k_E with the chosen embedding. All tensor isomorphisms respect their coefficient fields. All local-model statements use the actual stated parahoric and Hodge embedding.

Notation translation is essential: KZ writes its script G for the connected parahoric and tilde G for the full fixer; KP and KPZ write script G for the full fixer and script G° for the connected parahoric. Here these are G^fix and G°. A very-special point becomes special after base change to the completed maximal unramified field. A good lattice embedding and a very-good tensor-compatible embedding are separate certificates. Very-good means the precise first-order tensor-compatible trivialization of the corrected display theory, not simply closed immersion or smoothness of the group.

A good integral embedding is a closed immersion of the stabilizer into GL(Λ) whose generic representation is minuscule, contains the scalar group, and carries the Hodge cocharacter to the standard one, together with a closed immersion M_loc→Gr(Λ) extending the generic filtration map (KZ Definition 3.1.6, p.19). At a geometric point, use the universal filtration display over the completed local-model ring A_G, its Frobenius-image module M̃₁, and its constant counterpart Ũ₁. Very-good means that the canonical comparison c between these modules over the first-order quotient A_G/(m²+π_E A_G) fixes a tensor family cutting out the stabilizer; equivalently c is an isomorphism of the tensor-frame torsors. This condition is independent of the generating tensor family (KZ §3.2.5, p.23). These are imported local-model/display notions; the GS0 and R07.6 contracts own their general construction.

Corrected Hodge setup (KPZ 7.1.2): p>2; G^fix is the stabilizer at a point generic in its facet; K_p=G^fix(Z_p); G_Qp is R-smooth and p does not divide |π₁(G_der,Qp)|; the Hodge embedding extends to a very-good integral embedding G^fix→GL(Λ), with Λ contained in its symplectic dual. Prime-to-p levels are sufficiently small and compatible with the Siegel embedding. Condition (D): for C=ker(G_sc→G_der), every class c∈H¹(Q,C) whose localization is trivial at every finite ℓ≠p has trivial localization at p. Condition (E): Z_G is an R-smooth torus. Conditions (D) and (E) are imposed where the component-descent target states them, not on the broader lattice-chain strict-henselian theorem. An abelian-type target uses an auxiliary Hodge cover satisfying these conditions; it does not assert that the target group itself has a very-good Hodge embedding.

Use H¹ cohomology, dual to the Tate module. Its Hodge types are (1,0),(0,1); h acts on type (a,b) by z^(−a) zbar^(−b). The scalar cocharacter is the inverse Hodge weight. Geometric q-Frobenius on H¹ has Weil weight one and polarization multiplier q. Local models use {μ_h}; contravariant Dieudonné Newton admissibility uses {μ_h inverse}. Frobenius norms are δσ(δ)…σ^(r−1)(δ), never δ^r without a fixedness hypothesis.

Conj(G) is the affine invariant quotient for conjugation, imported from RG3.0. Its geometric points classify semisimple geometric conjugacy classes. A rational quotient point need not have a rational representative, and rational conjugacy is finer. A residue extension F_q→F_(q^m) replaces Frobenius by its m-th power; a theorem about that power does not settle the original point.

## Baseline and imported interfaces

Pins: Tau Ceti f790474821cf4256814db967cb154e7af3d0c369; Mathlib 082e2d37e8b0463410cdb532e111cd43d5a66174. The reviewed ShimuraVarieties audit was read before planning. The current library and current upstream roadmaps were also checked for work newer than the atlas snapshot. No integral Shimura or tensor-family carrier was found. Three exact declarations were read at the pins:

- **tauceti:TauCeti.AlgebraicGeometry.AbelianVariety** (TauCeti/AlgebraicGeometry/AbelianVariety/Basic.lean): An abelian variety over a field as a proper geometrically integral group scheme; does not supply integral abelian schemes or Shimura models.
- **tauceti:TauCeti.AlgebraicGeometry.AbelianVariety.End** (TauCeti/AlgebraicGeometry/AbelianVariety/End/Basic.lean): The integral endomorphism ring of a pinned abelian variety, using the Additive wrapper on its categorical endomorphisms; rationalization and tensor constraints are additional inputs.
- **mathlib:WittVector.Isocrystal** (Mathlib/RingTheory/WittVector/Isocrystal.lean): A module over Frac W(k) with Frobenius-semilinear equivalence for a perfect characteristic-p domain; pointwise coefficient carrier, not G-tensors, families or Newton classification.

The normalized Hodge interior itself is already planned at ShimuraCompactificationsPartII:C7/normalized-interior-model; Zarhin’s self-dual enlargement is C7/zarhin-self-dual-replacement. They are imports, not duplicate constructions here. A4 supplies Tate/de Rham/Dieudonné objects, Serre–Tate and polarized effectivity through the exact nodes named in the packet; A6 supplies Rosati positivity, Frobenius semisimplicity and abelian torsor twisting. The endpoint imports the exact RG3.0 quotient/character/finite-map nodes and RG3.1 degree-one-residue descent. The ordinary and B(G) notions are exact BG0/BG1 imports, not new definitions of isocrystals or reductive groups.

Current upstream ReductiveGroupsPartII already owns Lang’s finite-field and pro-connected-group theorems and connected parahorics. Its README explicitly excludes R-smoothness and the general adjoint association needed below. Those extension requests are recorded separately. Current OrthogonalSpinGroups owns the generic Clifford/Spin structures, and current ProfiniteArithmetic owns its profinite arithmetic foundations. None is re-planned here.

The following layer order is a build order. Each target gives its direct prerequisites; exact external nodes are distinguished from stage-level requests in the packet. Proof sketches cite results rather than reproducing source prose.

## SV2.0: Canonical tensors on the integral tower

**Status:** planned; supplier contracts listed in the closure register remain open.

**Layer prerequisites:** `AbelianSchemesAndArithmeticModuli:A4`, `AlgebraicModuliForArithmeticGeometry:R09.3`, `AlgebraicModuliForArithmeticGeometry:R09.4`, `AutomorphicBundles:B2`, `BunGAndNewtonStrata:BG0`, `CrystallineCohomology:CR.7`, `FiniteFlatGroupsAndIntegralPadicHodgeTheory:R07.2`, `MotivesAndAlgebraicCycles:MC.6`, `PELModuli:M4`, `ReductiveGroupsPartII:RG2.3`, `ShimuraCompactificationsPartII:C7`, `ShimuraVarieties:V8`.

### Integral Hodge data

**Target:** `ShimuraVarietiesPartII:SV2.0/integral-hodge-data` (definition). **Planet:** Integral Hodge data.

Fix p>2, a Hodge-type datum (G,X), v|p of E(G,X), and a symplectic embedding with a Z_(p)-lattice Λ. Integral Hodge data consist of a point of the extended building, its full fixer G^fix and connected parahoric G°, a closed lattice realization of the required model, a finite tensor family cutting out that model, and compatible sufficiently small prime-to-p Siegel levels. Record whether the embedding is good or very good; neither adjective is implicit. The associated normal model S is the imported C7 normalization of the Hodge closure, at the actual induced p-level.

**Construction/proof.**
1. KZ specifies the global lattice and tensor setup; KPZ supplies the corrected distinction between good and very good embeddings.
2. Use the imported normalization, retaining both full-fixer and connected levels as separate data.

**Direct prerequisites:** `ShimuraVarieties:V8`, `PELModuli:M4`, `ReductiveGroupsPartII:RG2.3`, `ShimuraCompactificationsPartII:C7/normalized-interior-model`, `tauceti:TauCeti.AlgebraicGeometry.AbelianVariety`.

**Consumers.** `ShimuraVarietiesPartII:SV2.0/integral-shimura-stack`, `ShimuraVarietiesPartII:SV2.0/prime-to-p-tower`, `ShimuraVarietiesPartII:SV2.1/adapted-branch-interface`, `ShimuraVarietiesPartII:SV2.1/weaker-strict-comparison`.

**API.**

- `IntegralHodgeData.model` (projection): Return S and its generic-fibre identification with Sh_K(G,X).
- `IntegralHodgeData.levels` (data): Expose G^fix, G°, K_p and their inclusion; translate KZ’s connected G-script to KPZ’s G-script-degree-zero.
- `IntegralHodgeData.changePrimeToPLevel` (functoriality): Compatible neat levels give the same normalized tower after finite étale pullback.

**Discriminating checks.**

- `IntegralHodgeData.siegel`: For G=GSp and the standard self-dual lattice, the normalized interior agrees with the corresponding Siegel moduli space.
- `IntegralHodgeData.iwahori`: For a Siegel Iwahori chain the connected model is not relabelled as a hyperspecial stabilizer.
- `IntegralHodgeData.goodNotVeryGood`: A closed lattice embedding with no tensor-compatible first-order trivialization supplies good data only; the very-good projection is unavailable.

**Acceptance:** A parahoric label alone must not certify the tensor-compatible deformation theorem.

**Source:** KZ, §4.1.2–4.1.7, pp.29–31; KPZ §7.1.2, p.72.

### Integral Shimura stacks

**Target:** `ShimuraVarietiesPartII:SV2.0/integral-shimura-stack` (construction). **Planet:** Integral Shimura stack.

For a possibly non-neat K^p, choose neat normal K_1^p inside it and form the quotient stack [S_(K_p K_1^p)/(K^p/K_1^p)]. Comparison through a common neat normal subgroup makes this independent up to canonical equivalence. The generic fibre is the Shimura stack, and the construction carries the compatible prime-to-p Hecke action. A coarse quotient is not substituted for this stack.

**Construction/proof.**
1. KZ permits arbitrary prime-to-p level by taking a quotient of a neat model.
2. Pull the normalized models to a common finite étale level and apply quotient-stack descent.

**Direct prerequisites:** `ShimuraVarietiesPartII:SV2.0/integral-hodge-data`, `AlgebraicModuliForArithmeticGeometry:R09.4`, `AlgebraicModuliForArithmeticGeometry:R09.3`.

**Consumers.** `ShimuraVarietiesPartII:SV2.7/intrinsic-tower-local-system`.

**API.**

- `IntegralShimuraStack.neatComparison` (equivalence): At neat K^p the stack is represented by the imported normal scheme S_K.
- `IntegralShimuraStack.refine` (functoriality): A normal refinement realizes the forgetful map as the corresponding finite étale quotient-stack cover.
- `IntegralShimuraStack.hecke` (functoriality): Prime-to-p right translations compose with the tower convention and commute with generic-fibre restriction.

**Discriminating checks.**

- `IntegralShimuraStack.trivialQuotient`: For K_1^p=K^p neat, quotient by the trivial group returns S_K.
- `IntegralShimuraStack.inertia`: An automorphism of a polarized abelian point preserving the level occurs in its stack inertia.
- `IntegralShimuraStack.refinementSquare`: Two neat normal refinements give equivalent quotients via their intersection, including inertia, not just equal coarse point sets.

**Acceptance:** Stabilizers at non-neat points remain visible.

**Source:** KZ, §4.1.1 and §4.1.5, pp.28–30.

### Prime-to-p integral tower

**Target:** `ShimuraVarietiesPartII:SV2.0/prime-to-p-tower` (theorem).

For a fixed admissible p-level and nested sufficiently small prime-to-p levels K_1^p normal in K_2^p, the transition S_(K_pK_1^p)→S_(K_pK_2^p) is finite étale with the expected finite level action; the pro-object carries a continuous G(A_f^p)-action. On normal components the promoted tensor-compatible level sections are uniquely determined by their generic restrictions.

**Construction/proof.**
1. HT constructs the prime-to-p tower and extends its tensor-compatible sections across the normal model.
2. Use the finite étale Siegel level maps and normalization to transfer the transition maps; extend equality of sections by normality.

**Direct prerequisites:** `ShimuraVarietiesPartII:SV2.0/integral-hodge-data`, `AbelianSchemesAndArithmeticModuli:A4/etale-tate-module`, `AlgebraicModuliForArithmeticGeometry:R09.3`.

**Acceptance:** Keep pro-level extension statements separate from finite-level statements.

**Source:** HT, §2.1.1–2.1.2, pp.20–21; KZ §4.1.5, p.30.

### Integral étale Hodge tensors

**Target:** `ShimuraVarietiesPartII:SV2.0/etale-tensors` (construction).

Pull the universal abelian scheme from the chosen Siegel model to a neat Hodge model. The absolute Hodge tensors give prime-to-p étale tensor sections on H¹, invariant under the arithmetic fundamental group and compatible with Hecke maps and base change; the tensor frame sheaf is the G(Q_ℓ)-torsor determined by the tower, for every ℓ≠p. Dualize the Tate module consistently: geometric q-Frobenius on H¹ has Weil weight 1.

**Construction/proof.**
1. KZ identifies the tower frame torsor with the étale realizations of the defining Hodge tensors.
2. Use the generic absolute-Hodge realization and normal extension of prime-to-p sections, then descend from neat covers.

**Direct prerequisites:** `ShimuraVarietiesPartII:SV2.0/prime-to-p-tower`, `AbelianSchemesAndArithmeticModuli:A4/etale-tate-module`, `AutomorphicBundles:B2`.

**Consumers.** `ShimuraVarietiesPartII:SV2.0/lift-independent-crystalline-tensors`, `ShimuraVarietiesPartII:SV2.3/adjoint-twisting-action`, `ShimuraVarietiesPartII:SV2.4/tensor-isogeny-group`, `ShimuraVarietiesPartII:SV2.7/intrinsic-tower-local-system`.

**API.**

- `ShimuraEtaleTensors.frame` (characterisation): A tensor frame identifies the representation space with H¹_ét and its stabilizer with G_Qℓ.
- `ShimuraEtaleTensors.pullback` (functoriality): Étale tensors pull back along prime-to-p Hecke and integral datum maps when those maps are established.
- `ShimuraEtaleTensors.tateDual` (compatibility): Identify H¹_ét with the dual of the A4 Tate module; specify the induced pairing and Tate-line action.

**Discriminating checks.**

- `ShimuraEtaleTensors.siegelMultiplier`: For a polarized Siegel point over F_q, geometric Frobenius has multiplier q on H¹ in the chosen pairing convention.
- `ShimuraEtaleTensors.projection`: On a product, the projection idempotents are among the tensors; off-diagonal automorphisms fail to be tensor frames.
- `ShimuraEtaleTensors.level`: Changing a tensor frame conjugates Frobenius in G(Q_ℓ); changing ℓ does not identify the coefficient fields.

**Acceptance:** The polarization is a similitude tensor with its Tate line; its scalar multiplier is not forced to one.

**Source:** KZ, §4.1.6–4.1.7, pp.30–31; §5.1.1, p.47.

### Lift-independent crystalline tensors

**Target:** `ShimuraVarietiesPartII:SV2.0/lift-independent-crystalline-tensors` (theorem).

For a geometric special-fibre point x of the normal Hodge model, every characteristic-zero lift through x gives the same rational Frobenius-invariant tensors in D(A_x[p∞])[1/p]^⊗, under the crystalline–de Rham comparisons. This independence holds across the lifts belonging to that normalization point; equality of underlying Siegel points alone does not identify different normalization branches. Integrality is a separate assertion requiring the integral embedding input.

**Construction/proof.**
1. HT uses horizontal transport on the connected normal formal neighbourhood to compare the realizations from different lifts.
2. Apply crystalline–de Rham compatibility for absolute Hodge cycles and uniqueness of parallel sections on the rigid generic fibre.

**Direct prerequisites:** `ShimuraVarietiesPartII:SV2.0/etale-tensors`, `AbelianSchemesAndArithmeticModuli:A4/abelian-h1-de-rham`, `FiniteFlatGroupsAndIntegralPadicHodgeTheory:R07.2`, `CrystallineCohomology:CR.7`.

**Acceptance:** Do not deduce integral tensors solely from rational comparison.

**Source:** HT, Proposition 1.3.7, pp.17–18.

### Universal crystalline tensor functor

**Target:** `ShimuraVarietiesPartII:SV2.0/global-crystalline-realization` (construction). **Planet:** Crystalline realization.

On the geometric special fibre of a neat normal Hodge model, the universal abelian p-divisible group determines a convergent F-isocrystal D together with global Frobenius-invariant defining tensors. Their fibres are the lift-independent tensors. Tensor frames give an exact faithful Q_p-linear tensor functor Rep(G_Qp)→F-Isoc(S_k), with scalar-extended fibre functors over L=Frac W(k). The Tannakian group of the subcategory generated by D is the monodromy envelope H⊂G_L; it need not equal G_L.

**Construction/proof.**
1. HT globalizes the crystalline tensor sections using semistable alterations and proper descent.
2. Import the general log-Dieudonné comparison, alteration descent and convergent-isocrystal full faithfulness; specialize them to the universal Hodge family.
3. Construct the Rep(G)-functor through the tensor frame torsor. Restriction to H explains why generated-category equivalence with all Rep(G) is unnecessary.

**Direct prerequisites:** `ShimuraVarietiesPartII:SV2.0/lift-independent-crystalline-tensors`, `CrystallineCohomology:CR.7`, `MotivesAndAlgebraicCycles:MC.6`, `BunGAndNewtonStrata:BG0/families-of-g-isocrystals`.

**Consumers.** `ShimuraVarietiesPartII:SV2.4/point-newton-class`, `ShimuraVarietiesPartII:SV2.4/newton-semicontinuity`.

**API.**

- `ShimuraCrystallineRealization.fibre` (compatibility): The fibre at x is the pointwise G-isocrystal cut out by its canonical rational tensors.
- `ShimuraCrystallineRealization.tensor` (structure): Preserve unit, duals, tensor products and exact sequences; compare the standard representation with D.
- `ShimuraCrystallineRealization.baseChange` (functoriality): Pullback of the universal abelian scheme and of global tensor sections commutes with extension of the residue field.

**Discriminating checks.**

- `ShimuraCrystallineRealization.constant`: A constant abelian family produces a constant isocrystal; its geometric monodromy subgroup can be proper in G.
- `ShimuraCrystallineRealization.slopeConvention`: For the contravariant Dieudonné realization, an ordinary elliptic fibre has slopes 0 and 1, with Newton bound from μ_h inverse.
- `ShimuraCrystallineRealization.tensorStabilizer`: Removing a tensor enlarges the allowed structure group; it cannot create an equivalence of the generated category with the unchanged Rep(G).

**Acceptance:** A constant family has trivial geometric monodromy even when G is positive dimensional.

**Source:** HT, Proposition 1.3.12–1.3.13, p.19; Appendix A.4–A.7, pp.38–39.

## SV2.1: Corrected local geometry

**Status:** planned; supplier contracts listed in the closure register remain open.

**Layer prerequisites:** `AbelianSchemesAndArithmeticModuli:A4`, `AlgebraicModuliForArithmeticGeometry:R09.6`, `FiniteFlatGroupsAndIntegralPadicHodgeTheory:R07.2`, `FiniteFlatGroupsAndIntegralPadicHodgeTheory:R07.4`, `FiniteFlatGroupsAndIntegralPadicHodgeTheory:R07.6`, `GeometricSatakeAndFusion:GS0:Witt-geometry`, `GeometricSatakeAndFusion:GS0:loop-geometry`, `HeckeStacksAndLocalShtukas:HS2`, `PELModuli:M4`, `ReductiveGroupsPartII:RG2.3`, `ShimuraCompactificationsPartII:C7`, `ShimuraVarietiesPartII:SV2.0`.

### Adapted normalization branches

**Target:** `ShimuraVarietiesPartII:SV2.1/adapted-branch-interface` (theorem). **Planet:** Adapted normalization branch.

At x above a point of the Siegel closure, assume the embedding is very good and the corrected tensor-display deformation theorem applies. The completion of the chosen normalization component identifies with the versal (G,μ)-adapted deformation ring R_G. An integral lift belongs to this branch exactly when its p-divisible group with the specified tensors is adapted. The condition uses the integral Frobenius tensors and the G-split Hodge filtration, not only the rational Newton class.

**Additional hypotheses:** Corrected Hodge setup (KPZ 7.1.2): p>2; G^fix is the stabilizer at a point generic in its facet; K_p=G^fix(Z_p); G_Qp is R-smooth and p does not divide |π₁(G_der,Qp)|; the Hodge embedding extends to a very-good integral embedding G^fix→GL(Λ), with Λ contained in its symplectic dual. Prime-to-p levels are sufficiently small and compatible with the Siegel embedding.

**Construction/proof.**
1. KZ identifies the completed branch using the tensor-compatible adapted deformation ring.
2. Apply corrected integral comparison and Serre–Tate to the normalized Hodge closure; use the integral point criterion in both directions.

**Direct prerequisites:** `ShimuraVarietiesPartII:SV2.0/integral-hodge-data`, `ShimuraVarietiesPartII:SV2.0/lift-independent-crystalline-tensors`, `FiniteFlatGroupsAndIntegralPadicHodgeTheory:R07.6`, `AbelianSchemesAndArithmeticModuli:A4/serre-tate-equivalence`, `AlgebraicModuliForArithmeticGeometry:R09.6`, `ShimuraVarietiesPartII:SV2.1/integral-crystalline-frames`.

**Acceptance:** The adapted-ring comparison must name a particular normalization branch.

**Source:** KZ, Propositions 3.2.7 and 4.1.9, pp.23–24 and 31–32; KPZ Proposition 7.1.6, p.74.

### Integral crystalline tensor frames

**Target:** `ShimuraVarietiesPartII:SV2.1/integral-crystalline-frames` (theorem).

Let p>2, x be a geometric point of the normalized Hodge model, and choose a lift over O_K for a finite extension K/breve Q_p. Assume its integral p-adic Hodge tensors are Galois invariant and their stabilizer is the prescribed smooth Bruhat–Tits full-fixer model with reductive generic fibre. Under the corrected integral comparison of KZ 3.3.2, the canonical rational tensors at x lie in D(A_x[p∞])^⊗, their integral stabilizer is that model, and a tensor frame over W(k) identifies the Hodge filtration of the lift with a G-cocharacter filtration conjugate to μ_h inverse. Tensor triviality and Frobenius compatibility are conclusions of the comparison, without assuming a very-good embedding.

**Construction/proof.**
1. KZ derives integral tensor frames from Breuil–Kisin comparison and the torsor extension result cited there.
2. Transfer to Dieudonné tensors and their filtrations, preserving the contravariant convention.

**Direct prerequisites:** `ShimuraVarietiesPartII:SV2.0/lift-independent-crystalline-tensors`, `FiniteFlatGroupsAndIntegralPadicHodgeTheory:R07.4`, `FiniteFlatGroupsAndIntegralPadicHodgeTheory:R07.2`.

**Acceptance:** Rationally equal tensors with different integral lattices do not pass this statement.

**Source:** KZ, Proposition 3.3.2, pp.24–25; §4.1.7, p.31.

### Tensors distinguish normalization points

**Target:** `ShimuraVarietiesPartII:SV2.1/tensor-separation` (theorem).

Suppose two geometric points of the normal Hodge model have the same image in the Siegel closure and the induced identification of their abelian varieties identifies all their crystalline tensors. Under the adapted-branch hypotheses, the two normalization points are equal. No assertion is made from equality of the underlying abelian varieties without the tensors.

**Construction/proof.**
1. KZ detects the normalization branch by its adapted tensor deformation ring.
2. The common tensors select the same completed component; use finiteness of normalization and the branch criterion to identify the points.

**Direct prerequisites:** `ShimuraVarietiesPartII:SV2.1/adapted-branch-interface`, `ShimuraVarietiesPartII:SV2.1/integral-crystalline-frames`.

**Acceptance:** The identity on a Siegel fibre must still be tested on the complete tensor family.

**Source:** KZ, Proposition 4.1.9(3), pp.31–32.

### Hodge local-model diagram

**Target:** `ShimuraVarietiesPartII:SV2.1/de-rham-frame-diagram` (construction). **Planet:** Hodge local-model diagram.

For the very-good full-fixer Hodge model of KPZ 7.1.2, the scheme of integral de Rham tensor frames is a G^fix-torsor π:S̃→S. Sending a frame to the Hodge filtration gives an equivariant smooth map q:S̃→M_loc(G,{μ_h}) of relative dimension dim G. The local model is the imported canonical flat closure. The smooth action morphism G^fix×M_loc→M_loc is not asserted to be a torsor.

**Additional hypotheses:** Corrected Hodge setup (KPZ 7.1.2): p>2; G^fix is the stabilizer at a point generic in its facet; K_p=G^fix(Z_p); G_Qp is R-smooth and p does not divide |π₁(G_der,Qp)|; the Hodge embedding extends to a very-good integral embedding G^fix→GL(Λ), with Λ contained in its symplectic dual. Prime-to-p levels are sufficiently small and compatible with the Siegel embedding.

**Construction/proof.**
1. KPZ repairs the tensor-compatible local-model comparison and proves smoothness of the frame-to-filtration map.
2. Glue local tensor frames and identify the deformation map with the local-model action chart using the very-good trivialization.

**Direct prerequisites:** `ShimuraVarietiesPartII:SV2.1/adapted-branch-interface`, `ShimuraVarietiesPartII:SV2.1/integral-crystalline-frames`, `AbelianSchemesAndArithmeticModuli:A4/abelian-h1-de-rham`, `GeometricSatakeAndFusion:GS0:loop-geometry`.

**Consumers.** `ShimuraVarietiesPartII:SV2.1/same-field-henselizations`, `ShimuraVarietiesPartII:SV2.1/special-fibre-geometry`, `ShimuraVarietiesPartII:SV2.3/connected-normalization-cover`.

**API.**

- `HodgeLocalModelDiagram.frame` (characterisation): Sections of π are integral tensor-compatible trivializations of H¹_dR.
- `HodgeLocalModelDiagram.filtration` (projection): q sends a frame to the transported Hodge filtration and is G^fix-equivariant.
- `HodgeLocalModelDiagram.baseChange` (functoriality): The frame diagram pulls back under residue-field and reflex-base extensions and finite prime-to-p level maps.

**Discriminating checks.**

- `HodgeLocalModelDiagram.siegel`: The standard Siegel frame diagram recovers its usual Lagrangian filtration map.
- `HodgeLocalModelDiagram.dimension`: The relative dimension of q equals dim G, whereas dim S equals dim M_loc; q is not assigned relative dimension zero.
- `HodgeLocalModelDiagram.stabilizer`: In the Siegel case, a frame change outside the filtration stabilizer moves q while fixing π. Thus q is not invariant for the frame-torsor action; smooth equivariance is its correct property.

**Acceptance:** Separate the torsor map π from the smooth map q.

**Source:** KPZ, Theorem 7.1.3, pp.72–73; §7.3.1(1), p.85.

### Same-field henselization comparison

**Target:** `ShimuraVarietiesPartII:SV2.1/same-field-henselizations` (theorem). **Planet:** Same-field local comparison.

Under KPZ 7.1.2 and G^fix=G°, for every x∈S(k′) with k′/k_E a finite residue-field extension there exists y∈M_loc(k′) for which the ordinary henselizations of the local rings at x and y are isomorphic as local base algebras. The residue field remains k′. Strict henselizations alone do not supply this assertion.

**Additional hypotheses:** Corrected Hodge setup (KPZ 7.1.2): p>2; G^fix is the stabilizer at a point generic in its facet; K_p=G^fix(Z_p); G_Qp is R-smooth and p does not divide |π₁(G_der,Qp)|; the Hodge embedding extends to a very-good integral embedding G^fix→GL(Λ), with Λ contained in its symplectic dual. Prime-to-p levels are sufficiently small and compatible with the Siegel embedding.

**Construction/proof.**
1. KPZ gives the henselized comparison with a local-model point over the same residue field when the frame group is connected.
2. Use smoothness and the connected-frame lifting argument in the corrected diagram.

**Direct prerequisites:** `ShimuraVarietiesPartII:SV2.1/de-rham-frame-diagram`, `ReductiveGroupsPartII:RG2.3`, `AlgebraicModuliForArithmeticGeometry:R09.6`.

**Acceptance:** For finite k′, the local-model comparison point must be k′-rational.

**Source:** KPZ, Theorem 7.1.3(3), p.73.

### Strict comparison with lattice-chain level

**Target:** `ShimuraVarietiesPartII:SV2.1/weaker-strict-comparison` (theorem).

Assume p>2 and a Hodge embedding into a Siegel datum with a self-dual periodic lattice chain L such that G^fix(breve Z_p)=G(breve Q_p)∩GSp(L)(breve Z_p). Take K_p=G^fix(Z_p) and the normalized Hodge closure in that chain-level Siegel model. At every geometric special point x there is a geometric local-model point y for which the strict henselizations, and their completions, are isomorphic. This model is canonical in the PR24 sense and independent of the embedding and lattice within this scope. No global very-good embedding or R-smoothness hypothesis is imposed on the given datum; the modern shtuka comparison imports the corrected very-good auxiliary theory in its proof. The result does not yield a rational local-model point over a prescribed finite residue field.

**Construction/proof.**
1. KPZ derives the strict-henselian comparison through canonical integral-model and shtuka methods.
2. Use the revised PR24/PR26/DvHKZ canonical-model comparison cited in KPZ 7.1.8–7.1.9. The older embedding-independence proof corrected in §7.3.2 cannot be used without its very-good restriction. Keep strict and ordinary henselizations distinct.

**Direct prerequisites:** `ShimuraVarietiesPartII:SV2.0/integral-hodge-data`, `HeckeStacksAndLocalShtukas:HS2`, `GeometricSatakeAndFusion:GS0:loop-geometry`, `AlgebraicModuliForArithmeticGeometry:R09.6`.

**Acceptance:** The source gate for canonical-model uniqueness remains an explicit supplier request.

**Source:** KPZ, Theorem 7.1.8 and Remark 7.1.9, p.74; §7.3.2, p.87.

### Pro-level DVR extension

**Target:** `ShimuraVarietiesPartII:SV2.1/pro-dvr-property` (theorem).

For the normalized Hodge tower at fixed p-level and every discrete valuation O_E-algebra R of mixed characteristic (0,p), restriction gives a bijection lim_(K^p) S_(K_pK^p)(R)→Sh_(K_p)(R[1/p]). The proof uses the complete prime-to-p level system to force good reduction and then the normalization criterion. It does not assert that every finite-level generic point has good reduction.

**Additional hypotheses:** Corrected Hodge setup (KPZ 7.1.2): p>2; G^fix is the stabilizer at a point generic in its facet; K_p=G^fix(Z_p); G_Qp is R-smooth and p does not divide |π₁(G_der,Qp)|; the Hodge embedding extends to a very-good integral embedding G^fix→GL(Λ), with Λ contained in its symplectic dual. Prime-to-p levels are sufficiently small and compatible with the Siegel embedding.

**Construction/proof.**
1. KPZ proves the extension property for the full prime-to-p tower.
2. Apply the Siegel pro-level good-reduction criterion and lift to the normalization using its generic-fibre identification.

**Direct prerequisites:** `ShimuraVarietiesPartII:SV2.0/prime-to-p-tower`, `PELModuli:M4`, `ShimuraCompactificationsPartII:C7/normalized-interior-model`.

**Acceptance:** A finite-level abelian variety with bad reduction is not a counterexample to the pro-level statement.

**Source:** KPZ, Theorem 7.1.3(1), p.73; HT Proposition 1.3.6, p.17.

### Special fibre and very-special geometry

**Target:** `ShimuraVarietiesPartII:SV2.1/special-fibre-geometry` (theorem).

With the corrected local-model hypotheses, reducedness and normality of geometric irreducible components of the local-model special fibre transfer to the Hodge model. At very special parahoric level the relevant local-model special fibre is geometrically integral, and the Shimura special fibre is locally integral. This does not assert local integrality at an arbitrary parahoric crossing.

**Additional hypotheses:** Corrected Hodge setup (KPZ 7.1.2): p>2; G^fix is the stabilizer at a point generic in its facet; K_p=G^fix(Z_p); G_Qp is R-smooth and p does not divide |π₁(G_der,Qp)|; the Hodge embedding extends to a very-good integral embedding G^fix→GL(Λ), with Λ contained in its symplectic dual. Prime-to-p levels are sufficiently small and compatible with the Siegel embedding.

**Construction/proof.**
1. KZ uses the unique extremal Schubert component at very special level to obtain local integrality.
2. Transfer reducedness, component normality and the very-special integral case through the smooth torsor diagram.

**Direct prerequisites:** `ShimuraVarietiesPartII:SV2.1/de-rham-frame-diagram`, `GeometricSatakeAndFusion:GS0:loop-geometry`, `GeometricSatakeAndFusion:GS0:Witt-geometry`.

**Acceptance:** An Iwahori special-fibre crossing must not be declared locally integral.

**Source:** KZ, Theorem 4.4.4, p.43; KPZ Theorem 7.2.21(2), pp.84–85.

## SV2.2: Auxiliary Hodge covers

**Status:** planned; supplier contracts listed in the closure register remain open.

**Layer prerequisites:** `FiniteFlatGroupsAndIntegralPadicHodgeTheory:R07.6`, `ReductiveGroupsPartII:RG2.1`, `ReductiveGroupsPartII:RG2.3`, `ShimuraCompactificationsPartII:C7`, `ShimuraData:D4`.

### Strongly acceptable Shimura triples

**Target:** `ShimuraVarietiesPartII:SV2.2/strongly-acceptable-triple` (definition). **Planet:** Strongly acceptable triple.

A strongly acceptable triple is (G,X,G°) with (G,X) of Hodge type, G_der,Qp a product of restrictions of scalars of split reductive groups over finite extensions of Q_p, and Z_G^c generated by the maximal compact real central subtorus and Z_(G_der), such that Z_G^c,Qp is a product of induced tori. Its level model is the connected parahoric at a very-special building point: after base change to the completed maximal unramified field it is a special parahoric. The group-level adjective alone does not specify a parahoric.

**Construction/proof.**
1. KZ isolates these local derived and central conditions for integral functoriality and the ordinary-lifting argument.
2. Package the conditions with the datum and the chosen connected parahoric, exposing each hypothesis separately.

**Direct prerequisites:** `ShimuraData:D4`, `ReductiveGroupsPartII:RG2.3`, `ReductiveGroupsPartII:RG2.1`.

**Consumers.** `ShimuraVarietiesPartII:SV2.2/strong-auxiliary-cover`, `ShimuraVarietiesPartII:SV2.4/ordinary-locus`, `ShimuraVarietiesPartII:SV2.5/matched-multiplier-datum`, `ShimuraVarietiesPartII:SV2.6/kr-stratification`.

**API.**

- `StronglyAcceptableTriple.derivedFactors` (projection): Expose the split restriction-of-scalars decomposition after Q_p base change.
- `StronglyAcceptableTriple.compactCenter` (data): Expose Z_G^c and its induced-torus description, retaining its inclusion of the derived centre.
- `StronglyAcceptableTriple.level` (projection): Return the connected parahoric and its verified very-special building point.

**Discriminating checks.**

- `StronglyAcceptableTriple.splitUnitary`: For the PEL datum GU(1,1) of an imaginary quadratic field split at p, the local derived group is SL₂ and Z_G^c,Qp is the split norm-one torus G_m. A hyperspecial vertex therefore gives a strongly acceptable triple.
- `StronglyAcceptableTriple.siegelNonexample`: For GSp_(2g), g≥1, the maximal compact central subtorus is trivial and Z_G^c=μ₂. This finite group is not an induced torus, so a split group and hyperspecial level alone do not establish strong acceptability.
- `StronglyAcceptableTriple.levelDistinction`: For the split-at-p unitary example, a hyperspecial vertex supplies a very-special triple, while an Iwahori does not.

**Acceptance:** A strongly acceptable datum at an Iwahori does not define a strongly acceptable triple.

**Source:** KZ, Definition 4.2.2, p.34.

### Reflex splitting for auxiliary covers

**Target:** `ShimuraVarietiesPartII:SV2.2/reflex-splitting-cover` (theorem).

For an abelian-type datum (G_2,X_2) and p>2, the auxiliary Hodge cover can be chosen so that every v_2|p of E_2 splits completely in E E_2/E_2. The CM scalar field is chosen to split at all the prescribed p-adic places while satisfying the archimedean Hodge choices. Consequently a chosen local reflex field for the target is unchanged on passing to the composite cover field.

**Construction/proof.**
1. KPZ combines Deligne’s Hodge lifting with prescribed p-adic splitting of the CM scalar field.
2. Import the generic torus approximation and Hodge-cover construction; impose all places over p simultaneously.

**Direct prerequisites:** `ShimuraData:D4`, `ReductiveGroupsPartII:RG2.1`.

**Acceptance:** Specifying one embedding into Q_p-bar must not be replaced by an arbitrary place over v_2.

**Source:** KPZ, §7.2.2–7.2.3, pp.77–78; Proposition 7.2.19(2), p.83.

### Non-exceptional very-good Hodge cover

**Target:** `ShimuraVarietiesPartII:SV2.2/nonexceptional-cover` (construction). **Planet:** Very-good Hodge cover.

Suppose G_2^ad is Q-simple and its local adjoint pair has neither a D^H factor nor a type-A factor Res_(F/Qp) PGL_m(D) with p dividing the index of D. Construct a Hodge cover G with G_der=Res_(F0/Q) H^sharp, the same adjoint datum, split local reflex composite, a self-dual very-good lattice embedding for the stabilizer lifting the prescribed target parahoric, R-smooth torus centre, quasi-tame Z_G^c, and torsion-free inertia coinvariants of Z_G^c/Z_(G_der).

**Construction/proof.**
1. KPZ modifies Deligne’s fundamental Hodge cover by central tori and builds a corrected self-dual very-good embedding.
2. Use the generic fundamental representation and invariant-form inputs, the corrected tensor-lattice theorem, and Zarhin’s imported self-dual enlargement.
3. Check the centre and inertia coinvariants independently of the representation embedding.

**Direct prerequisites:** `ShimuraVarietiesPartII:SV2.2/reflex-splitting-cover`, `ShimuraData:D4`, `ReductiveGroupsPartII:RG2.1`, `ReductiveGroupsPartII:RG2.3`, `FiniteFlatGroupsAndIntegralPadicHodgeTheory:R07.6`, `ShimuraCompactificationsPartII:C7/zarhin-self-dual-replacement`.

**Consumers.** `ShimuraVarietiesPartII:SV2.2/general-abelian-cover`.

**API.**

- `AuxiliaryHodgeCover.adjoint` (projection): Return the isomorphism of adjoint Shimura data and the central isogeny of derived groups.
- `AuxiliaryHodgeCover.veryGood` (projection): Return the chosen self-dual lattice and very-good tensor-compatible embedding, with its stabilizer model.
- `AuxiliaryHodgeCover.localField` (compatibility): Identify the local reflex composite at each target p-place with the target local field.

**Discriminating checks.**

- `AuxiliaryHodgeCover.splitA`: For a split type-A local datum the non-exceptional path is available.
- `AuxiliaryHodgeCover.divisionIndex`: A type-A division algebra of index divisible by p cannot use this constructor’s non-exceptional certificate.
- `AuxiliaryHodgeCover.selfDual`: A perfect alternating form on the enlarged lattice must identify Λ with its dual; an arbitrary integral lattice fails.

**Acceptance:** All five cover properties must be exported together, with the source’s non-exceptional restriction.

**Source:** KPZ, Proposition 7.2.10, pp.78–80.

### Exceptional very-good Hodge covers

**Target:** `ShimuraVarietiesPartII:SV2.2/exceptional-cover` (construction).

For a Q-simple abelian-type datum with D^H factors or a type-A local division algebra of index divisible by p, construct the Hodge cover with the properties of the preceding node except that torsion-free coinvariants of Z_G^c/Z_(G_der) are not promised in the exceptional type-A case. Use the appropriate fundamental symplectic representation and the self-dual lattice construction from KPZ §§6.2–6.3. Passing from the enlarged group to GSp requires smoothness of the scheme-theoretic intersection, R-smoothness, equal derived group and a lifting cocharacter.

**Construction/proof.**
1. KPZ treats the D^H and wild-index type-A representations separately and identifies the extra smooth-intersection hypotheses.
2. Import the corresponding corrected local lattice theorems and the fundamental invariant-form classification.
3. Use smooth multiplier maps at odd p to verify the intersection hypothesis rather than assuming it for an arbitrary closed subgroup.

**Direct prerequisites:** `ShimuraVarietiesPartII:SV2.2/reflex-splitting-cover`, `ShimuraData:D4`, `ReductiveGroupsPartII:RG2.1`, `ReductiveGroupsPartII:RG2.3`, `FiniteFlatGroupsAndIntegralPadicHodgeTheory:R07.6`, `ShimuraCompactificationsPartII:C7/zarhin-self-dual-replacement`.

**Consumers.** `ShimuraVarietiesPartII:SV2.2/general-abelian-cover`.

**API.**

- `ExceptionalHodgeCover.toCover` (projection): Expose all cover data except the unproved torsion-free property in the type-A branch.
- `ExceptionalHodgeCover.smoothIntersection` (data): Return the verified smooth scheme intersection needed to restrict the very-good embedding.
- `ExceptionalHodgeCover.typeDcoinvariants` (characterisation): In the D^H branch the quotient coinvariants are torsion-free; in the wild-index type-A branch no such conclusion is supplied.

**Discriminating checks.**

- `ExceptionalHodgeCover.typeD`: For the D^H centre described by the split-at-p CM norm-one torus, its inertia-coinvariant quotient is free.
- `ExceptionalHodgeCover.typeA`: A wild-index type-A input keeps the missing torsion-free assertion absent even after self-dual enlargement.
- `ExceptionalHodgeCover.badIntersection`: Without smoothness of G′∩GSp(Λ), restriction of a very-good embedding is rejected.

**Acceptance:** The type-A output must not expose a torsion-free-coinvariant field.

**Source:** KPZ, Proposition 7.2.16 and Lemmas 7.2.13–7.2.14, pp.81–83.

### Auxiliary cover for every abelian-type datum

**Target:** `ShimuraVarietiesPartII:SV2.2/general-abelian-cover` (construction). **Planet:** Abelian-type Hodge cover.

For any abelian-type (G_2,X_2), p>2 and connected target parahoric, construct a Hodge cover (G,X) with the same adjoint datum and a central derived isogeny, satisfying: π₁(G_der) is a 2-group and is trivial without D^H factors; the local-to-global central-kernel condition (D); all target p-places split in E E_2; the centre is an R-smooth torus; Z_G^c is quasi-tame; and the lifting stabilizer has a self-dual very-good embedding. If no local adjoint factor involves a division algebra of index divisible by p, X_*(G_ab)_I is additionally torsion-free. Combine simple factors with a common similitude multiplier.

**Construction/proof.**
1. KPZ assembles the simple-factor covers using a fibre product of their multiplier maps.
2. Check the adjoint and derived maps factor by factor; central products control the centre and the 2-primary fundamental group.
3. Retain the stated restriction on the torsion-free conclusion and the splitting at every target p-place.

**Direct prerequisites:** `ShimuraVarietiesPartII:SV2.2/nonexceptional-cover`, `ShimuraVarietiesPartII:SV2.2/exceptional-cover`, `ReductiveGroupsPartII:RG2.1`, `ReductiveGroupsPartII:RG2.3`.

**Consumers.** `ShimuraVarietiesPartII:SV2.2/strong-auxiliary-cover`, `ShimuraVarietiesPartII:SV2.3/reflex-units`, `ShimuraVarietiesPartII:SV2.3/abelian-integral-model`.

**API.**

- `GeneralAbelianCover.conditionD` (projection): For C=ker(G_sc→G_der), any global H¹(Q,C) class trivial at every finite ℓ≠p is trivial at p.
- `GeneralAbelianCover.pinnedLocalModel` (compatibility): The cover and target local models identify through the adjoint minuscule datum using the imported central-isogeny comparison.
- `GeneralAbelianCover.coinvariants` (projection): Expose torsion-free X_*(G_ab)_I only under the explicitly verified absence of p-divisible division indices.

**Discriminating checks.**

- `GeneralAbelianCover.multiplier`: Two factors with unequal similitude multipliers do not define a symplectic direct-sum similitude.
- `GeneralAbelianCover.productField`: Every p-place of each target reflex factor must split in the composite; a choice at only one place is insufficient.
- `GeneralAbelianCover.pi1`: The D^H branch permits 2-primary π₁ but cannot claim simply connected derived group.

**Acceptance:** The output applies to every connected parahoric at odd p, including the exceptional factors, without adding the non-exceptional hypothesis.

**Source:** KPZ, Proposition 7.2.19, pp.83–84.

### Strongly acceptable auxiliary cover

**Target:** `ShimuraVarietiesPartII:SV2.2/strong-auxiliary-cover` (theorem).

For a strongly acceptable target triple, choose the KZ auxiliary Hodge cover with derived group mapping centrally to the target, the reflex splitting and very-good lattice properties, compact centre Z_G^c a product of restrictions of tame tori, and torsion-free X_*(G_ab)_I. At the corresponding very-special building point the cover fixer is connected. The last coinvariant hypothesis is torsion-free, not torsion.

**Construction/proof.**
1. KZ strengthens the cover for strongly acceptable triples so that the full fixer agrees with the connected parahoric.
2. Use the split restriction-of-scalars derived factors and induced central tori to verify the Kottwitz-kernel and torsion-free-coinvariant criterion.

**Direct prerequisites:** `ShimuraVarietiesPartII:SV2.2/strongly-acceptable-triple`, `ShimuraVarietiesPartII:SV2.2/general-abelian-cover`, `ReductiveGroupsPartII:RG2.3`, `ReductiveGroupsPartII:RG2.1`.

**Acceptance:** A zero coinvariant group is allowed; a nonzero finite torsion group cannot satisfy the freeness argument.

**Source:** KZ, Proposition 4.2.3 and Lemma 4.2.4, pp.34–35.

## SV2.3: Integral component descent

**Status:** planned; supplier contracts listed in the closure register remain open.

**Layer prerequisites:** `AbelianSchemesAndArithmeticModuli:A6`, `AlgebraicModuliForArithmeticGeometry:R09.3`, `GeometricSatakeAndFusion:GS0:loop-geometry`, `HeckeStacksAndLocalShtukas:HS2`, `ReductiveGroupsPartII:RG2.0`, `ReductiveGroupsPartII:RG2.3`, `ShimuraCompactificationsPartII:C7`, `ShimuraVarieties:V6`, `ShimuraVarietiesPartII:SV2.0`, `ShimuraVarietiesPartII:SV2.1`, `ShimuraVarietiesPartII:SV2.2`.

### Integral component-action groups

**Target:** `ShimuraVarietiesPartII:SV2.3/integral-component-groups` (definition). **Planet:** Integral component symmetries.

Import the characteristic-zero groups A(G), A(G)° and their actions from V6. Set A_int(G)=G(A_f^p)/closure(Z°(Z_(p))) *_(G°(Z_(p))_+/Z°(Z_(p))) G_ad°(Z_(p))_+ and define A_int(G)° by replacing the adelic numerator with the closure of G°(Z_(p))_+ in G(A_f^p). Here the star denotes the quotient of the semidirect product by the diagonal relation, with the integral adjoint parahoric group used in the gluing theorem. Retain the auxiliary tilde groups that also carry the p-adic parahoric factor when comparing kernels and cosets.

**Additional hypotheses:** Corrected Hodge setup (KPZ 7.1.2): p>2; G^fix is the stabilizer at a point generic in its facet; K_p=G^fix(Z_p); G_Qp is R-smooth and p does not divide |π₁(G_der,Qp)|; the Hodge embedding extends to a very-good integral embedding G^fix→GL(Λ), with Λ contained in its symplectic dual. Prime-to-p levels are sufficiently small and compatible with the Siegel embedding. Condition (D): for C=ker(G_sc→G_der), every class c∈H¹(Q,C) whose localization is trivial at every finite ℓ≠p has trivial localization at p. Condition (E): Z_G is an R-smooth torus.

**Construction/proof.**
1. KP constructs integral analogues of the adelic component symmetries from parahoric arithmetic subgroups.
2. Apply the imported generic star-product construction and topological closure/completion formalism to these specific groups.

**Direct prerequisites:** `ShimuraVarieties:V6`, `ReductiveGroupsPartII:RG2.3`, `ReductiveGroupsPartII:RG2.0`.

**Consumers.** `ShimuraVarietiesPartII:SV2.3/reflex-units`, `ShimuraVarietiesPartII:SV2.3/adjoint-twisting-action`, `ShimuraVarietiesPartII:SV2.3/component-galois-extension`.

**API.**

- `IntegralComponentGroups.relations` (characterisation): The pairs (γ,φ(γ) inverse) act trivially; expose the resulting quotient homomorphism.
- `IntegralComponentGroups.neutral` (projection): Expose A_int°→A_int and the maps to A(G)°→A(G), with their topologies.
- `IntegralComponentGroups.derivedCompletion` (compatibility): A_int° is the completion of the integral rational adjoint group for the congruence topology coming from the connected derived parahoric.

**Discriminating checks.**

- `IntegralComponentGroups.torus`: For a torus the derived congruence completion is trivial; the full adelic component group need not be.
- `IntegralComponentGroups.diagonalRelation`: A rational integral element represented simultaneously in the two semidirect factors maps to the identity.
- `IntegralComponentGroups.integralClosure`: Replacing the closure in G(A_f^p) by the closure in G(A_f) must require the tilde comparison and cannot be a definitional equality.

**Acceptance:** The groups are topological quotients; the integral and full adelic closures are taken in different ambient groups.

**Source:** KP, §4.5.6 and §4.6.1–4.6.4, pp.195–199.

### Reflex units and unramified components

**Target:** `ShimuraVarietiesPartII:SV2.3/reflex-units` (theorem).

The reflex norm induced by μ_h inverse maps local reflex units to the connected parahoric modulo the simply connected derived image. Together with canonical reciprocity on components this shows that the geometric connected components at fixed connected p-level are defined over the maximal reflex extension unramified above p. Under condition (D), sufficiently small prime-to-p level has rational stabilizers in the connected p-level.

**Additional hypotheses:** Corrected Hodge setup (KPZ 7.1.2): p>2; G^fix is the stabilizer at a point generic in its facet; K_p=G^fix(Z_p); G_Qp is R-smooth and p does not divide |π₁(G_der,Qp)|; the Hodge embedding extends to a very-good integral embedding G^fix→GL(Λ), with Λ contained in its symplectic dual. Prime-to-p levels are sufficiently small and compatible with the Siegel embedding. Condition (D): for C=ker(G_sc→G_der), every class c∈H¹(Q,C) whose localization is trivial at every finite ℓ≠p has trivial localization at p. Condition (E): Z_G is an R-smooth torus.

**Construction/proof.**
1. KP computes the reflex norm on local units and uses it to control inertia on connected components.
2. Use Néron connected torus units and reciprocity; use condition (D) for the small-level rational-stabilizer assertion.

**Direct prerequisites:** `ShimuraVarietiesPartII:SV2.3/integral-component-groups`, `ShimuraVarieties:V6`, `ShimuraVarietiesPartII:SV2.2/general-abelian-cover`, `ReductiveGroupsPartII:RG2.3`.

**Acceptance:** Unramified component definition is weaker than a model over the original reflex field without descent data.

**Source:** KP, Lemma 4.3.2, Lemma 4.3.5 and Corollary 4.3.9, pp.189–191; KPZ §7.1.10–7.1.11, pp.74–75.

### Connected-parahoric normalization cover

**Target:** `ShimuraVarietiesPartII:SV2.3/connected-normalization-cover` (theorem). **Planet:** Connected-level cover.

For the full-fixer Hodge model satisfying the corrected (A)–(D) assumptions, normalize it in the generic connected-parahoric cover. The resulting morphism is finite étale; at sufficiently small prime-to-p level it splits after an unramified extension. Its component closures are the integral models used for the actual conjugate levels in descent.

**Additional hypotheses:** Corrected Hodge setup (KPZ 7.1.2): p>2; G^fix is the stabilizer at a point generic in its facet; K_p=G^fix(Z_p); G_Qp is R-smooth and p does not divide |π₁(G_der,Qp)|; the Hodge embedding extends to a very-good integral embedding G^fix→GL(Λ), with Λ contained in its symplectic dual. Prime-to-p levels are sufficiently small and compatible with the Siegel embedding. Condition (D): for C=ker(G_sc→G_der), every class c∈H¹(Q,C) whose localization is trivial at every finite ℓ≠p has trivial localization at p.

**Construction/proof.**
1. KPZ retains the finite étale connected-level passage after repairing the Hodge construction.
2. Use the small-level splitting from rational stabilizers, extend over the unramified base, and descend along prime-to-p finite étale level change.

**Direct prerequisites:** `ShimuraVarietiesPartII:SV2.1/de-rham-frame-diagram`, `ShimuraVarietiesPartII:SV2.3/reflex-units`, `ShimuraCompactificationsPartII:C7/normalized-interior-model`, `AlgebraicModuliForArithmeticGeometry:R09.3`.

**Acceptance:** Finiteness is obtained from normalization in the finite generic cover, not from étaleness alone.

**Source:** KPZ, Proposition 7.1.11, p.75; KP Proposition 4.3.7, pp.190–191.

### Integral adjoint twisting action

**Target:** `ShimuraVarietiesPartII:SV2.3/adjoint-twisting-action` (construction).

For γ in the positive integral rational adjoint group, let P_γ be its central torsor. Twist the universal abelian object using the imported A6 construction, transport its weak polarization and conjugated prime-to-p level, and use normalization to obtain the integral γ-action. Together with prime-to-p Hecke maps this gives the A_int action; the diagonal rational relation acts trivially. Lift it to the adjoint tensor-frame torsor by quotienting out the central ambiguity of a lift of γ.

**Additional hypotheses:** Corrected Hodge setup (KPZ 7.1.2): p>2; G^fix is the stabilizer at a point generic in its facet; K_p=G^fix(Z_p); G_Qp is R-smooth and p does not divide |π₁(G_der,Qp)|; the Hodge embedding extends to a very-good integral embedding G^fix→GL(Λ), with Λ contained in its symplectic dual. Prime-to-p levels are sufficiently small and compatible with the Siegel embedding. Condition (D): for C=ker(G_sc→G_der), every class c∈H¹(Q,C) whose localization is trivial at every finite ℓ≠p has trivial localization at p. Condition (E): Z_G is an R-smooth torus.

**Construction/proof.**
1. KP extends the adjoint symmetry by central twisting of the universal abelian moduli point and its tensor frames.
2. Check descent after a finite torsor trivialization, including conjugation of the prime-to-p level.
3. Apply the normalization universal property and verify the diagonal relation on frames.

**Direct prerequisites:** `ShimuraVarietiesPartII:SV2.3/integral-component-groups`, `ShimuraVarietiesPartII:SV2.0/etale-tensors`, `AbelianSchemesAndArithmeticModuli:A6/abelian-torsor-twist`, `AbelianSchemesAndArithmeticModuli:A6/twist-realizations-polarizations-and-level`, `ShimuraCompactificationsPartII:C7/normalized-interior-model`.

**Consumers.** `ShimuraVarietiesPartII:SV2.3/conjugate-level-gluing`, `ShimuraVarietiesPartII:SV2.3/free-descent-kernel`, `ShimuraVarietiesPartII:SV2.3/adjoint-local-model-diagram`.

**API.**

- `IntegralAdjointAction.generic` (compatibility): On the generic Shimura tower this agrees with V6’s adjoint action.
- `IntegralAdjointAction.compose` (functoriality): The contracted-product law P_(γδ) gives the right-action composition law on models and adjoint frames.
- `IntegralAdjointAction.localModel` (compatibility): The frame-to-filtration map is invariant under the arithmetic action and equivariant under the adjoint group scheme.

**Discriminating checks.**

- `IntegralAdjointAction.lifted`: If γ lifts to integral g∈G, the twist trivializes and the action is the usual g-action.
- `IntegralAdjointAction.centralAmbiguity`: Two lifts differing by the centre yield the same adjoint frame action, not necessarily the same raw G-frame.
- `IntegralAdjointAction.levelConjugation`: Transport sends K^p to γK^pγ inverse in the lifted description; keeping K^p fixed without normality fails.

**Acceptance:** A rational adjoint element need not admit a rational lift in G; the central torsor is essential.

**Source:** KP, Lemmas 4.5.2, 4.5.4, 4.5.7 and 4.5.9, pp.194–197.

### Galois component-stabilizer extension

**Target:** `ShimuraVarietiesPartII:SV2.3/component-galois-extension` (construction).

Fix a connected component over the maximal extension unramified at p. Its stabilizer E_int in A_int×Gal(E^p/E) fits into 1→A_int°→E_int→Gal(E^p/E)→1. After restricting to a composite reflex field, a derived cover induces the compatible map of these extensions. The star amalgamation with A_int recovers A_int×Gal(E^p/E), encoding the semilinear descent action on the induced model.

**Additional hypotheses:** Corrected Hodge setup (KPZ 7.1.2): p>2; G^fix is the stabilizer at a point generic in its facet; K_p=G^fix(Z_p); G_Qp is R-smooth and p does not divide |π₁(G_der,Qp)|; the Hodge embedding extends to a very-good integral embedding G^fix→GL(Λ), with Λ contained in its symplectic dual. Prime-to-p levels are sufficiently small and compatible with the Siegel embedding. Condition (D): for C=ker(G_sc→G_der), every class c∈H¹(Q,C) whose localization is trivial at every finite ℓ≠p has trivial localization at p. Condition (E): Z_G is an R-smooth torus.

**Construction/proof.**
1. KP organizes reciprocity on connected components as an extension compatible with central derived covers.
2. Import the generic component torsor, apply the reflex-unit calculation and verify the induced extension maps through the common connected datum.

**Direct prerequisites:** `ShimuraVarietiesPartII:SV2.3/reflex-units`, `ShimuraVarietiesPartII:SV2.3/integral-component-groups`, `ShimuraVarieties:V6`.

**Consumers.** `ShimuraVarietiesPartII:SV2.3/conjugate-level-gluing`.

**API.**

- `IntegralComponentExtension.kernel` (characterisation): The kernel of projection to Galois is exactly A_int°.
- `IntegralComponentExtension.coverMap` (functoriality): A compatible derived cover induces a map after pullback to the common reflex field, preserving kernel and Galois quotient.
- `IntegralComponentExtension.amalgamation` (universal-property): The star product of A_int and E_int over A_int° identifies with the product action group.

**Discriminating checks.**

- `IntegralComponentExtension.identityCover`: The identity derived cover gives the identity extension map.
- `IntegralComponentExtension.inertia`: Inertia above p acts trivially on components by the reflex-unit calculation.
- `IntegralComponentExtension.nontrivialComponents`: A datum with several components retains the nontrivial A_int/A_int° action; the extension is not replaced by A_int° alone.

**Acceptance:** The construction keeps the semilinear Galois action; an abstract disjoint union without it is insufficient.

**Source:** KP, §4.6.5, Lemmas 4.6.6 and 4.6.9, pp.199–202.

### Gluing at conjugate parahoric levels

**Target:** `ShimuraVarietiesPartII:SV2.3/conjugate-level-gluing` (construction). **Planet:** Conjugate-level gluing.

For a Hodge cover with a central isogeny G_der→G_2,der identifying adjoint data, as in the corrected descent theorem, choose coset representatives J in G_2(Q_p) for the image of A_int(G_2) in A(G)°∖A(G_2)/K_2,p°. For each j use the connected component containing (j,X⁺); it is identified with the connected Shimura variety at jK_p°j inverse, not uniformly with the component at K_p°. Form the disjoint union over j of [S_(K_p°)^(j,+)×A_int(G_2)]/A_int(G)°. Its generic fibre is Sh_(K_2,p°)(G_2,X_2) and its semilinear action gives descent over the composite reflex field.

**Additional hypotheses:** Corrected Hodge setup (KPZ 7.1.2): p>2; G^fix is the stabilizer at a point generic in its facet; K_p=G^fix(Z_p); G_Qp is R-smooth and p does not divide |π₁(G_der,Qp)|; the Hodge embedding extends to a very-good integral embedding G^fix→GL(Λ), with Λ contained in its symplectic dual. Prime-to-p levels are sufficiently small and compatible with the Siegel embedding. Condition (D): for C=ker(G_sc→G_der), every class c∈H¹(Q,C) whose localization is trivial at every finite ℓ≠p has trivial localization at p. Condition (E): Z_G is an R-smooth torus.

**Construction/proof.**
1. The published KPZ erratum replaces the repeated fixed-level connected piece by the pieces at conjugate parahoric levels.
2. Use the Cartesian component-group square and its stabilizers to compute each j-piece before taking the quotient.
3. Identify the generic induced variety and descend the semilinear action; apply the freeness argument separately to the integral action.

**Direct prerequisites:** `ShimuraVarietiesPartII:SV2.3/connected-normalization-cover`, `ShimuraVarietiesPartII:SV2.3/adjoint-twisting-action`, `ShimuraVarietiesPartII:SV2.3/component-galois-extension`, `AlgebraicModuliForArithmeticGeometry:R09.3`, `ShimuraVarieties:V6`.

**Consumers.** `ShimuraVarietiesPartII:SV2.3/free-descent-kernel`, `ShimuraVarietiesPartII:SV2.3/abelian-integral-model`, `ShimuraVarietiesPartII:SV2.4/ordinary-density`, `ShimuraVarietiesPartII:SV2.5/matched-integral-comparison`, `ShimuraVarietiesPartII:SV2.5/ordinary-strong-special-lift`.

**API.**

- `ConjugateLevelGluing.genericFibre` (compatibility): The generic-fibre identification is equivariant for G_2(A_f^p) and the Galois action.
- `ConjugateLevelGluing.changeRepresentative` (equivalence): Changing J or its representatives induces the canonical equivariant isomorphism through the computed stabilizers.
- `ConjugateLevelGluing.chart` (projection): Expose the j-indexed component chart together with its conjugated p-level and quotient action.

**Discriminating checks.**

- `ConjugateLevelGluing.identity`: For the identity cover and the trivial coset, recover the original connected model and its component induction.
- `ConjugateLevelGluing.nonNormalizer`: If jK_p°j inverse differs from K_p°, the j-piece cannot be identified with a fixed-level piece without a supplied Hecke comparison.
- `ConjugateLevelGluing.representatives`: Equivalent representatives give isomorphic pieces via their actual stabilizer groups, including integral descent data.

**Acceptance:** A representative j outside the parahoric normalizer must change the connected piece’s level.

**Source:** KPZ, §7.3.1(3), pp.86–87, correcting KP Lemma 4.6.13 and Corollary 4.6.15.

### Freeness of the integral descent kernel

**Target:** `ShimuraVarietiesPartII:SV2.3/free-descent-kernel` (theorem).

For the cover and small-level conditions used in conjugate-level gluing, Δ=ker(A_int(G)°→A_int(G_2)) acts freely on the relevant integral connected tower pieces. The kernel need not be finite at the full tower; the representable finite-level quotients and their descent must be justified by the stated congruence and level conditions, not by an unproved finiteness assumption.

**Additional hypotheses:** Corrected Hodge setup (KPZ 7.1.2): p>2; G^fix is the stabilizer at a point generic in its facet; K_p=G^fix(Z_p); G_Qp is R-smooth and p does not divide |π₁(G_der,Qp)|; the Hodge embedding extends to a very-good integral embedding G^fix→GL(Λ), with Λ contained in its symplectic dual. Prime-to-p levels are sufficiently small and compatible with the Siegel embedding. Condition (D): for C=ker(G_sc→G_der), every class c∈H¹(Q,C) whose localization is trivial at every finite ℓ≠p has trivial localization at p. Condition (E): Z_G is an R-smooth torus.

**Construction/proof.**
1. KP’s twisting argument identifies an element fixing a point with a central integral lift and then with the trivial action.
2. Use rigidity at sufficiently small prime-to-p level, the transported level identity and the connected rational stabilizer criterion.
3. Apply the imported quotient/descent theorem at finite levels; carry the conjugate-level correction throughout.

**Direct prerequisites:** `ShimuraVarietiesPartII:SV2.3/conjugate-level-gluing`, `ShimuraVarietiesPartII:SV2.3/adjoint-twisting-action`, `ShimuraVarietiesPartII:SV2.3/reflex-units`, `AbelianSchemesAndArithmeticModuli:A6/twist-realizations-polarizations-and-level`, `AlgebraicModuliForArithmeticGeometry:R09.3`.

**Acceptance:** The proof must work with the integral moduli object and level, not only with its rational isogeny class.

**Source:** KP, Proof of Corollary 4.6.15 and Corollary 4.6.18, pp.203–205; KPZ §7.3.1(3), pp.86–87.

### Integral models of abelian type

**Target:** `ShimuraVarietiesPartII:SV2.3/abelian-integral-model` (theorem). **Planet:** Abelian-type integral model.

For every abelian-type datum, p>2 and connected parahoric K_2,p°, the corrected auxiliary cover and component gluing produce a normal integral pro-prime-to-p tower over the local reflex ring, with finite étale prime-to-p transitions, the pro-level DVR bijection and étale-local singularities modeled on M_loc(G_2,{μ_h,2}). The cover’s reflex splitting permits descent to the target local reflex field. The model is compared with the canonical model only when the canonical-uniqueness supplier hypotheses are verified.

**Additional hypotheses:** Corrected Hodge setup (KPZ 7.1.2): p>2; G^fix is the stabilizer at a point generic in its facet; K_p=G^fix(Z_p); G_Qp is R-smooth and p does not divide |π₁(G_der,Qp)|; the Hodge embedding extends to a very-good integral embedding G^fix→GL(Λ), with Λ contained in its symplectic dual. Prime-to-p levels are sufficiently small and compatible with the Siegel embedding. Condition (D): for C=ker(G_sc→G_der), every class c∈H¹(Q,C) whose localization is trivial at every finite ℓ≠p has trivial localization at p. Condition (E): Z_G is an R-smooth torus.

**Construction/proof.**
1. KPZ removes the tame restriction by the corrected very-good Hodge cover and integral component descent.
2. Transfer the local-model and extension properties through the free quotient, identify the intrinsic local model, and use the split local reflex composite.

**Direct prerequisites:** `ShimuraVarietiesPartII:SV2.2/general-abelian-cover`, `ShimuraVarietiesPartII:SV2.3/free-descent-kernel`, `ShimuraVarietiesPartII:SV2.3/conjugate-level-gluing`, `ShimuraVarietiesPartII:SV2.1/pro-dvr-property`, `GeometricSatakeAndFusion:GS0:loop-geometry`.

**Acceptance:** The target applies to exceptional type A and D^H; no unproved torsion-free coinvariants are inserted.

**Source:** KPZ, Theorem 7.2.21, pp.84–85; Proposition 7.1.14, pp.75–76.

### Connected adjoint local-model diagram

**Target:** `ShimuraVarietiesPartII:SV2.3/adjoint-local-model-diagram` (construction). **Planet:** Connected adjoint diagram.

For the abelian-type model there is an adjoint frame torsor with a smooth equivariant map to the intrinsic local model of relative dimension dim G_ad. The elementary cover construction reduces the structure group to the connected adjoint parahoric in the non-exceptional case. For all cases the connected reduction is supplied by the integral-shtuka theorem cited in KPZ 7.2.24. These are two proof routes with different required inputs; the general reduction is not derived merely from the elementary quotient construction.

**Additional hypotheses:** Corrected Hodge setup (KPZ 7.1.2): p>2; G^fix is the stabilizer at a point generic in its facet; K_p=G^fix(Z_p); G_Qp is R-smooth and p does not divide |π₁(G_der,Qp)|; the Hodge embedding extends to a very-good integral embedding G^fix→GL(Λ), with Λ contained in its symplectic dual. Prime-to-p levels are sufficiently small and compatible with the Siegel embedding. Condition (D): for C=ker(G_sc→G_der), every class c∈H¹(Q,C) whose localization is trivial at every finite ℓ≠p has trivial localization at p. Condition (E): Z_G is an R-smooth torus.

**Construction/proof.**
1. KPZ distinguishes the elementary non-exceptional connected reduction from the general shtuka-based reduction.
2. Descend the adjoint Hodge frame diagram through the arithmetic action.
3. Use the general integral-shtuka reduction when the elementary connectedness condition is unavailable.

**Direct prerequisites:** `ShimuraVarietiesPartII:SV2.3/abelian-integral-model`, `ShimuraVarietiesPartII:SV2.3/adjoint-twisting-action`, `GeometricSatakeAndFusion:GS0:loop-geometry`, `HeckeStacksAndLocalShtukas:HS2`.

**Consumers.** `ShimuraVarietiesPartII:SV2.6/kr-stratification`, `ShimuraVarietiesPartII:SV2.6/rational-local-model-lift`.

**API.**

- `AbelianLocalModelDiagram.structureGroup` (projection): Return the actual connected adjoint parahoric and the verified route to reduction of structure group.
- `AbelianLocalModelDiagram.filtration` (projection): Expose the smooth equivariant map to M_loc(G_2,{μ_h,2}) and its relative dimension.
- `AbelianLocalModelDiagram.level` (functoriality): Pullback along prime-to-p finite étale level maps preserves the torsor and local-model morphism.

**Discriminating checks.**

- `AbelianLocalModelDiagram.nonExceptional`: For a non-exceptional cover the elementary connected reduction is available without the general shtuka theorem.
- `AbelianLocalModelDiagram.exceptional`: An exceptional type-A cover uses the general reduction and cannot cite a missing torsion-free quotient.
- `AbelianLocalModelDiagram.lang`: Over F_q a torsor under the connected smooth adjoint fibre is trivial by Lang; a disconnected full-fixer fibre cannot use that inference.

**Acceptance:** At a finite-field point the connected structure group is what permits Lang triviality.

**Source:** KPZ, Theorem 7.2.21(3) and Corollary 7.2.24, pp.84–85.

## SV2.4: Newton classes and tensor isogenies

**Status:** planned; supplier contracts listed in the closure register remain open.

**Layer prerequisites:** `AbelianSchemesAndArithmeticModuli:A5`, `AbelianSchemesAndArithmeticModuli:A6`, `ArithmeticGaloisRepresentations:R01.5`, `ArithmeticGaloisRepresentations:R01.6`, `BunGAndNewtonStrata:BG0`, `BunGAndNewtonStrata:BG1`, `FiniteFlatGroupsAndIntegralPadicHodgeTheory:R07.4`, `PELModuli:M4`, `ReductiveGroupsPartII:RG2.0`, `ReductiveGroupsPartII:RG2.1`, `ReductiveGroupsPartIII:RG3.2`, `ReductiveGroupsPartIII:RG3.3`, `ShimuraCompactificationsPartII:C7`, `ShimuraVarieties:V4`, `ShimuraVarietiesPartII:SV2.0`, `ShimuraVarietiesPartII:SV2.1`, `ShimuraVarietiesPartII:SV2.2`, `ShimuraVarietiesPartII:SV2.3`.

### Newton class of an integral point

**Target:** `ShimuraVarietiesPartII:SV2.4/point-newton-class` (construction). **Planet:** Shimura Newton class.

For x on the geometric special fibre of the Hodge model, a tensor frame D_x≅V⊗L writes its semilinear Frobenius as b_xσ. Define the intrinsic map x↦[b_x]∈B(G_Qp), independent of frame and compatible with prime-to-p level and residue-field extension. The Hodge bound is {μ_h inverse} in the contravariant Dieudonné convention. The pointwise isocrystal specializes to Mathlib’s WittVector.Isocrystal after forgetting its G-tensors; that class alone supplies neither a family nor the B(G) classification.

**Construction/proof.**
1. HT trivializes the tensor frame torsor over L and records the resulting Frobenius up to sigma conjugacy.
2. Changing a frame by g replaces b by g inverse b σ(g); apply the imported B(G) quotient.

**Direct prerequisites:** `ShimuraVarietiesPartII:SV2.0/global-crystalline-realization`, `BunGAndNewtonStrata:BG0/g-isocrystals-and-B-of-G`, `mathlib:WittVector.Isocrystal`.

**Consumers.** `ShimuraVarietiesPartII:SV2.4/newton-admissibility`, `ShimuraVarietiesPartII:SV2.4/newton-strata`.

**API.**

- `ShimuraNewtonClass.frameChange` (characterisation): Two tensor frames give sigma-conjugate elements and hence the same B(G) class.
- `ShimuraNewtonClass.standardRealization` (compatibility): Forgetting the tensors gives the Frobenius-semilinear isocrystal on H¹_cris, compatible with WittVector.Isocrystal.
- `ShimuraNewtonClass.hecke` (functoriality): Prime-to-p Hecke pullback and extension of the perfect residue field preserve the class under the canonical base-change maps.

**Discriminating checks.**

- `ShimuraNewtonClass.ordinaryElliptic`: An ordinary elliptic fibre has Newton slopes {0,1} in the standard contravariant realization.
- `ShimuraNewtonClass.supersingularElliptic`: A supersingular elliptic fibre has slopes {1/2,1/2}, distinct from the ordinary class.
- `ShimuraNewtonClass.torus`: For a torus, the class has the Kottwitz invariant of μ_h inverse, not that of μ_h.

**Acceptance:** The local-model cocharacter is μ_h while the Newton admissibility cocharacter is μ_h inverse.

**Source:** HT, §1.3.8, p.18; KZ §4.4.2, p.43.

### Admissibility of reduction

**Target:** `ShimuraVarietiesPartII:SV2.4/newton-admissibility` (theorem).

Every pointwise class from the Hodge model belongs to B(G_Qp,{μ_h inverse}): its integral Kottwitz invariant equals the image of μ_h inverse and its dominant Newton point lies below the Galois average of that class. Both assertions are required. The conclusion follows from the Hodge filtration and crystalline representation of a lift, and is not obtained merely from a rational slope inequality.

**Construction/proof.**
1. HT applies the admissibility theorem for the crystalline Hodge realization, including the Kottwitz condition.
2. Use a characteristic-zero lift, the specified comparison tensors and the imported integral admissibility criterion.

**Direct prerequisites:** `ShimuraVarietiesPartII:SV2.4/point-newton-class`, `BunGAndNewtonStrata:BG1/admissible-pair`, `FiniteFlatGroupsAndIntegralPadicHodgeTheory:R07.4`, `ShimuraVarietiesPartII:SV2.1/integral-crystalline-frames`.

**Acceptance:** A class with correct Newton slopes but wrong integral Kottwitz invariant must fail admissibility.

**Source:** HT, Lemma 1.3.9, p.18.

### Newton strata on the special fibre

**Target:** `ShimuraVarietiesPartII:SV2.4/newton-strata` (definition). **Planet:** Newton strata.

For each admissible [b], let S_[b] be the locus of geometric special-fibre points whose canonical class is [b], endowed with its locally closed reduced structure once semicontinuity is proved. Define S_≤[b] using the dominant Newton order, within the fixed Kottwitz fibre. These loci are compatible with prime-to-p level and descent from perfectification. Nonemptiness is a theorem with a rational-Newton witness, not a field of this definition.

**Construction/proof.**
1. HT applies Newton semicontinuity to the universal G-isocrystal to construct the strata.
2. Use representation-detection of dominance and the generic family semicontinuity contract, then equip the strata with reduced locally closed structures.

**Direct prerequisites:** `ShimuraVarietiesPartII:SV2.4/point-newton-class`, `ShimuraVarietiesPartII:SV2.4/newton-admissibility`, `BunGAndNewtonStrata:BG1`.

**Consumers.** `ShimuraVarietiesPartII:SV2.4/newton-semicontinuity`, `ShimuraVarietiesPartII:SV2.4/ordinary-locus`.

**API.**

- `ShimuraNewtonStratum.mem` (characterisation): A geometric point belongs to S_[b] exactly when its canonical B(G) class equals [b].
- `ShimuraNewtonStratum.level` (functoriality): The strata pull back under finite étale prime-to-p level transitions.
- `ShimuraNewtonStratum.partition` (relation): The admissible strata form a disjoint partition of the geometric special fibre; the lower locus is the union over smaller classes in the fixed Kottwitz fibre.

**Discriminating checks.**

- `ShimuraNewtonStratum.ellipticPartition`: In the modular case, ordinary and supersingular loci are disjoint and exhaust the special fibre.
- `ShimuraNewtonStratum.emptyAllowed`: The definition allows an empty admissible stratum until its nonemptiness hypotheses are verified.
- `ShimuraNewtonStratum.kottwitz`: Equal rational Newton points in different integral Kottwitz fibres do not define one stratum.

**Acceptance:** Closure containment is recorded separately from equality of closures.

**Source:** HT, Theorem 1.3.14, pp.19–20.

### Newton specialization and closure containment

**Target:** `ShimuraVarietiesPartII:SV2.4/newton-semicontinuity` (theorem).

For the universal G-isocrystal on the Hodge special fibre, S_≤[b] is Zariski closed and each Newton stratum is locally closed. The closure of S_[b] is contained in the union of strata with dominant Newton point at most ν_b in the source’s decreasing-slope convention and the same Kottwitz invariant. No converse inclusion or general equality of closures is asserted.

**Construction/proof.**
1. HT reduces the specialization claim to Newton polygon semicontinuity in faithful representations.
2. Use the requested general Grothendieck–Katz family theorem and the representation-detection criterion; combine the finitely many admissible classes to obtain local closedness.

**Direct prerequisites:** `ShimuraVarietiesPartII:SV2.4/newton-strata`, `ShimuraVarietiesPartII:SV2.0/global-crystalline-realization`, `BunGAndNewtonStrata:BG1`.

**Acceptance:** An equality of closures requires additional geometry beyond this node.

**Source:** HT, Theorem 1.3.14(1),(3), pp.19–20.

### Special-point nonemptiness of Newton strata

**Target:** `ShimuraVarietiesPartII:SV2.4/special-reduction-nonempty` (theorem).

If [b]∈B(G_Qp,{μ_h inverse}) has a representative whose Newton cocharacter is defined over Q_p as in HT (1.1.3.1), then S_[b] is nonempty. This holds in particular for quasi-split G_Qp and for basic classes. Use a global special torus realizing the local special pair, its zero-dimensional canonical model, and the place of its reflex field induced by the fixed embedding i_p above v. Reduce that torus point to the normal Hodge model. An arbitrary place above v need not give the prescribed local class.

**Construction/proof.**
1. HT realizes the class through a global special pair and reduces its toric canonical model.
2. Import the rational Newton witness and global torus approximation, use potential good reduction of CM abelian varieties and the Hodge normalization extension criterion.
3. The unique acceptable torus class identifies the reduction’s Newton class.

**Direct prerequisites:** `ShimuraVarietiesPartII:SV2.4/newton-admissibility`, `BunGAndNewtonStrata:BG1/rational-newton-witness`, `BunGAndNewtonStrata:BG1/torus-special-pair`, `ReductiveGroupsPartIII:RG3.2/elliptic-maximal-torus`, `ShimuraVarieties:V4`, `PELModuli:M4`, `ArithmeticGaloisRepresentations:R01.6`.

**Acceptance:** For a non-quasi-split nonbasic class, the rational-witness hypothesis cannot be omitted.

**Source:** HT, Proposition 1.3.10, p.18, with §1.1.3 and §1.2.5.

### Mu-ordinary locus

**Target:** `ShimuraVarietiesPartII:SV2.4/ordinary-locus` (definition). **Planet:** Mu-ordinary locus.

Assume there is an ordinary class [b]_μ∈B(G,{μ_h inverse}), meaning that its dominant Newton point is exactly the Galois average of μ_h inverse. Define the ordinary locus as S_[b]_μ. It is not defined by replacing that equality with the unique maximal acceptable class for an arbitrary inner form. For a strongly acceptable triple the split restriction-of-scalars derived factors provide the required ordinary class.

**Construction/proof.**
1. KZ explicitly assumes the existence of the actual ordinary class before defining its locus.
2. Use the imported ordinary-class criterion and the pointwise Newton stratification.

**Direct prerequisites:** `ShimuraVarietiesPartII:SV2.4/newton-strata`, `BunGAndNewtonStrata:BG1/ordinary-class`, `ShimuraVarietiesPartII:SV2.2/strongly-acceptable-triple`.

**Consumers.** `ShimuraVarietiesPartII:SV2.4/ordinary-density`, `ShimuraVarietiesPartII:SV2.5/ordinary-very-good`.

**API.**

- `ShimuraOrdinaryLocus.mem` (characterisation): x is ordinary exactly when ν_(b_x)=μ inverse diamond in the fixed Kottwitz fibre.
- `ShimuraOrdinaryLocus.level` (functoriality): The ordinary open pulls back along prime-to-p levels and along the proved derived-isogeny maps.
- `ShimuraOrdinaryLocus.elliptic` (compatibility): For the Siegel genus-one datum it agrees with the ordinary elliptic locus, equivalently p-rank one.

**Discriminating checks.**

- `ShimuraOrdinaryLocus.genusOne`: The slopes 0 and 1 give an ordinary point.
- `ShimuraOrdinaryLocus.supersingular`: The supersingular elliptic slope pair is excluded.
- `ShimuraOrdinaryLocus.innerForm`: A non-quasi-split inner form whose maximum has ν≠μ inverse diamond has no supplied ordinary locus certificate from maximality alone.

**Acceptance:** The ordinary equality and the unique-maximal-class assertion must remain distinct.

**Source:** KZ, Definition 4.4.3 and its preceding assumption, p.43; HT §1.3.15, p.20.

### Openness and density of the ordinary locus

**Target:** `ShimuraVarietiesPartII:SV2.4/ordinary-density` (theorem).

Assume an actual ordinary class exists, its rational-Newton witness holds, and the special fibre is locally integral with the connected-component specialization theorem of MP19 Corollary 4.1.11 available. Then the ordinary locus is nonempty open and dense on every component: semicontinuity gives openness, special reduction gives nonemptiness, and the component theorem plus Hecke transport spreads density. In particular the corrected very-special strongly acceptable model has dense ordinary locus. This does not assert density at arbitrary parahoric crossings.

**Construction/proof.**
1. KZ obtains local integrality from the very-special local model and invokes the ordinary-density argument of HT.
2. Use the explicit compactification/component-specialization request to make the step from local integrality to irreducible special fibres of connected components.
3. Transport ordinary points between component pieces using tensor-compatible Hecke quasi-isogenies and the corrected conjugate-level construction.

**Direct prerequisites:** `ShimuraVarietiesPartII:SV2.4/ordinary-locus`, `ShimuraVarietiesPartII:SV2.4/newton-semicontinuity`, `ShimuraVarietiesPartII:SV2.4/special-reduction-nonempty`, `ShimuraVarietiesPartII:SV2.1/special-fibre-geometry`, `ShimuraCompactificationsPartII:C7`, `ShimuraVarietiesPartII:SV2.3/conjugate-level-gluing`.

**Acceptance:** Local integrality by itself is not silently used as a proof of global component irreducibility.

**Source:** KZ, Theorem 4.4.4, p.43; HT Corollary 1.3.16, p.20.

### Tensor-preserving quasi-isogeny group

**Target:** `ShimuraVarietiesPartII:SV2.4/tensor-isogeny-group` (definition). **Planet:** Tensor isogeny group.

For x with abelian fibre A_x over F_p-bar, define I_x as the closed Q-subgroup of (End⁰(A_x))^× preserving the canonical crystalline tensors and all prime-to-p étale tensors; use the rational realization actions after scalar extension, so the functor is imposed on every Q-algebra. Define I_(x/Fq) similarly using End⁰_(Fq)(A_x). The polarization is included with its similitude/Tate line. Integral automorphisms are I_x(Q)∩Aut(A_x), not I_x(Q_p)∩Aut(A_x). This extends the pinned TauCeti abelian endomorphism ring by rationalization and tensor conditions.

**Construction/proof.**
1. HT defines the rational algebraic isogeny group through all realizations of the Hodge tensors.
2. Use finite-dimensional End⁰ and the scheme-theoretic tensor stabilizer equations after coefficient extension; Noetherianity reduces the intersection of conditions to finitely many equations.
3. Distinguish geometric endomorphisms, fixed-field endomorphisms and integral automorphisms.

**Direct prerequisites:** `ShimuraVarietiesPartII:SV2.0/etale-tensors`, `ShimuraVarietiesPartII:SV2.0/lift-independent-crystalline-tensors`, `AbelianSchemesAndArithmeticModuli:A6/frobenius-semisimplicity`, `tauceti:TauCeti.AlgebraicGeometry.AbelianVariety.End`, `AbelianSchemesAndArithmeticModuli:A5`.

**Consumers.** `ShimuraVarietiesPartII:SV2.4/isogeny-realizations`, `ShimuraVarietiesPartII:SV2.4/rosati-reductivity`, `ShimuraVarietiesPartII:SV2.4/hecke-orbit-tensor-injectivity`.

**API.**

- `TensorIsogenyGroup.realization` (projection): The Q-group maps to each étale tensor stabilizer and to the crystalline twisted centralizer.
- `TensorIsogenyGroup.fixedField` (characterisation): The F_q-defined subgroup consists of tensor automorphisms commuting with the q-Frobenius endomorphism.
- `TensorIsogenyGroup.changeTensors` (compatibility): Equivalent generating tensor families with the same realization stabilizers define the same subgroup of End⁰ units.

**Discriminating checks.**

- `TensorIsogenyGroup.siegel`: With only the Siegel polarization tensors, recover the Rosati-similitude subgroup of End⁰ units.
- `TensorIsogenyGroup.product`: Adding projection tensors on A_1×A_2 excludes off-diagonal quasi-endomorphisms.
- `TensorIsogenyGroup.integral`: A rational quasi-isogeny with a nonintegral denominator is in I_x(Q) when it preserves the tensors, but need not lie in Aut(A_x).

**Acceptance:** All-prime tensor preservation is stronger than merely preserving the polarization.

**Source:** HT, §2.1.3–2.1.5, pp.21–22; KZ §4.1.10, p.32.

### Isogeny-group realization maps

**Target:** `ShimuraVarietiesPartII:SV2.4/isogeny-realizations` (construction).

For x/F_q, geometric q-Frobenius gives γ_x∈I_(x/Fq)(Q). At ℓ≠p its realization is semisimple Frobenius. At p descend D_x to W(F_q)[1/p], with Frobenius δσ and tensor frame, and form δσ(δ)⋯σ^(r−1)(δ), r=[F_q:F_p]. After a sufficiently divisible extension F_(q^m), all geometric endomorphisms descend and the stable groups are Z_G(γ_ℓ^m) at ℓ and the finite-period twisted centralizer I_p inside J_δ at p. This finite-period subgroup need not equal J_δ.

**Construction/proof.**
1. HT descends the canonical crystalline tensors and identifies the finite-field Frobenius with its twisted norm in a tensor frame.
2. Use Frobenius invariance and uniqueness of the tensors for descent; apply the imported finite-period norm-centralizer theorem.
3. Pass to a sufficiently divisible m to stabilize the endomorphism field and centralizers.

**Direct prerequisites:** `ShimuraVarietiesPartII:SV2.4/tensor-isogeny-group`, `BunGAndNewtonStrata:BG0/finite-frobenius-norm-centralizer`, `AbelianSchemesAndArithmeticModuli:A6/frobenius-semisimplicity`, `ReductiveGroupsPartIII:RG3.3/cyclic-torus-and-neatness`.

**Consumers.** `ShimuraVarietiesPartII:SV2.4/auxiliary-prime-rank`, `ShimuraVarietiesPartII:SV2.4/all-prime-tate-comparison`, `ShimuraVarietiesPartII:SV2.5/ordinary-hodge-special-lift`, `ShimuraVarietiesPartII:SV2.5/ordinary-rational-frobenius`.

**API.**

- `TensorIsogenyRealizations.frobenius` (compatibility): The rational γ_x maps to the exact q-Frobenius in every realization, with the contravariant convention translated explicitly.
- `TensorIsogenyRealizations.power` (functoriality): Extension F_q→F_(q^m) replaces the linear Frobenius by γ_x^m and the twisted norm by the corresponding longer product.
- `TensorIsogenyRealizations.pInclusion` (projection): Expose I_p→J_δ, the finite-period centralizer comparison and the maps I_x,Qp→I_p.

**Discriminating checks.**

- `TensorIsogenyRealizations.rankOneNorm`: For G=G_m, the q-Frobenius is the product of the r conjugates of δ, not δ raised to r without a fixedness hypothesis.
- `TensorIsogenyRealizations.fieldExtension`: Passing from F_q to F_(q²) squares γ_x; it does not leave the Frobenius element unchanged.
- `TensorIsogenyRealizations.JDistinction`: For the GL₂ isocrystal over F₅ with δ=[[0,−1],[5,0]], δ²=−5. Before extending the residue field, its finite-period automorphisms form Q₅(√−5)^×, whereas J_δ is the quaternion division group. Over F₂₅ the Frobenius square is scalar and the finite-period group enlarges.

**Acceptance:** Use the iterated twisted product, and use the same chosen power in each realization.

**Source:** HT, §2.1.5–2.1.7, pp.22–24; Kisin 2017 §2.1.2, p.29.

### Rosati compactness of tensor isogenies

**Target:** `ShimuraVarietiesPartII:SV2.4/rosati-reductivity` (theorem).

The tensor isogeny group lies in the Rosati-similitude group. Its real points modulo the scalar weight group are compact; its identity component is reductive. After the all-prime comparison establishes connectedness, I_x is a connected reductive Q-group. The compactness assertion concerns a group modulo the weight scalars, not compactness of I_x(R) itself.

**Construction/proof.**
1. The Rosati positivity argument in HT and Kisin makes the tensor-preserving subgroup compact modulo scalars.
2. Use positive definiteness to exclude a nontrivial real unipotent radical; retain a possible finite component group until the realization comparison.

**Direct prerequisites:** `ShimuraVarietiesPartII:SV2.4/tensor-isogeny-group`, `AbelianSchemesAndArithmeticModuli:A6/rosati-positivity`, `ReductiveGroupsPartII:RG2.1`.

**Acceptance:** Positive scalar quasi-isogenies show why compactness cannot be asserted before quotienting scalars.

**Source:** HT, §2.1.3 and Proposition 2.1.6, pp.21–23; Kisin 2017 Corollary 2.1.7, p.31.

### Tensor detection on a prime-to-p Hecke orbit

**Target:** `ShimuraVarietiesPartII:SV2.4/hecke-orbit-tensor-injectivity` (theorem).

For the neat integral Hodge tower, two points obtained from the same A_x by prime-to-p tensor-compatible quasi-isogenies are equal exactly when the quasi-isogeny relating their complete prime-to-p level structures also identifies the canonical crystalline tensors. Thus the Hecke-orbit relation injects into the tensor-quasi-isogeny quotient relation. This is the prime-to-p statement needed in the rank argument; it is not a classification of all geometric isogeny classes or an ADLV uniformization theorem.

**Construction/proof.**
1. HT uses the promoted prime-to-p level structure and crystalline tensors to detect equality in the normalization.
2. Apply the Siegel moduli comparison and then tensor separation of normalization points.

**Direct prerequisites:** `ShimuraVarietiesPartII:SV2.4/tensor-isogeny-group`, `ShimuraVarietiesPartII:SV2.0/prime-to-p-tower`, `ShimuraVarietiesPartII:SV2.1/tensor-separation`.

**Acceptance:** Equality in the Siegel moduli space alone must not prove equality in the Hodge normalization.

**Source:** HT, §2.1.4, p.22; Proposition 2.1.6, pp.22–23.

### Auxiliary-prime comparison and full rank

**Target:** `ShimuraVarietiesPartII:SV2.4/auxiliary-prime-rank` (theorem). **Planet:** Full-rank tensor isogenies.

Choose ℓ_0≠p where G splits and the characteristic polynomial of γ_x splits. After taking a sufficiently divisible finite-field power so the stable centralizer is connected, I_x,Qℓ0 identifies with that stable Frobenius centralizer, and rank I_x=rank G. The proof uses finiteness of the relevant finite-field Hecke orbit to make the quotient of local centralizer points compact, the split-group compact-quotient criterion, and Rosati reductivity. It uses no common Frobenius class from SV2.7.

**Construction/proof.**
1. HT generalizes Kisin’s finite-field orbit argument to the normal integral Hodge model.
2. Use the split auxiliary prime to make the stable centralizer a split Levi; compactness forces the subgroup to contain a Borel.
3. The homogeneous quotient is then proper and affine, so the connected centralizer equals the isogeny group after scalar extension.

**Direct prerequisites:** `ShimuraVarietiesPartII:SV2.4/hecke-orbit-tensor-injectivity`, `ShimuraVarietiesPartII:SV2.4/isogeny-realizations`, `ShimuraVarietiesPartII:SV2.4/rosati-reductivity`, `ReductiveGroupsPartII:RG2.0`, `ArithmeticGaloisRepresentations:R01.5`.

**Acceptance:** The existence of a suitable split auxiliary prime and the compact-quotient criterion are explicit requested inputs.

**Source:** HT, Proposition 2.1.6, pp.22–23; Kisin 2017 Corollary 2.1.7, p.31.

### Tate comparison with tensors

**Target:** `ShimuraVarietiesPartII:SV2.4/all-prime-tate-comparison` (theorem). **Planet:** Tate theorem with tensors.

After the finite-field extension fixing all geometric endomorphisms and stable centralizers, the natural realization maps identify I_x,Qℓ with Z_G(γ_x,ℓ) for every ℓ≠p and I_x,Qp with the finite-period crystalline group I_p. Hence I_x is connected reductive of full rank. The remaining comparison of centralizer dimensions uses Noot’s coarser Conj′ Frobenius comparison and the type-D outer-orbit analysis, not the full Conj(G) independence theorem being proved here.

**Construction/proof.**
1. HT compares every realization with the split auxiliary prime using its independently established coarser Frobenius conjugacy theorem.
2. Import Noot’s accommodating-embedding comparison, neat-power step and the Conj′ dimension invariance with the precise orthogonal outer action.
3. Compare dimensions of the realization inclusions; descend connectedness and reductivity from the identified connected centralizer.

**Direct prerequisites:** `ShimuraVarietiesPartII:SV2.4/auxiliary-prime-rank`, `ShimuraVarietiesPartII:SV2.4/isogeny-realizations`, `ArithmeticGaloisRepresentations:R01.6`, `ReductiveGroupsPartII:RG2.1`.

**Acceptance:** No dependency from this theorem to SV2.7/common-frobenius-class is allowed.

**Source:** HT, Theorem 2.1.9, pp.24–25.

## SV2.5: Ordinary special lifts and integral comparison

**Status:** planned; supplier contracts listed in the closure register remain open.

**Layer prerequisites:** `AbelianSchemesAndArithmeticModuli:A4`, `AutomorphicBundles:B2`, `BunGAndNewtonStrata:BG1`, `FiniteFlatGroupsAndIntegralPadicHodgeTheory:R07.6`, `GeometricSatakeAndFusion:GS0:loop-geometry`, `HeckeStacksAndLocalShtukas:HS2`, `PELModuli:M4`, `ReductiveGroupsPartII:RG2.1`, `ReductiveGroupsPartII:RG2.3`, `ShimuraCompactificationsPartII:C7`, `ShimuraData:D1`, `ShimuraData:D4`, `ShimuraVarietiesPartII:SV2.0`, `ShimuraVarietiesPartII:SV2.1`, `ShimuraVarietiesPartII:SV2.2`, `ShimuraVarietiesPartII:SV2.3`, `ShimuraVarietiesPartII:SV2.4`.

### Integral maps under derived isomorphisms

**Target:** `ShimuraVarietiesPartII:SV2.5/integral-datum-maps` (theorem). **Planet:** Integral derived comparison.

Let f:(G_1,X_1)→(G_2,X_2) be a morphism of Hodge data inducing an isomorphism of derived groups, with associated parahorics, compatible good embeddings and the level hypotheses of KZ 4.3.1. Over the composite local reflex base, its generic map extends to the normalized integral models. At corresponding geometric points the completed local rings are isomorphic. On the chosen neutral pro-components the induced comparison is an isomorphism in the situation of KZ 4.3.4. A central derived isogeny is not substituted for the derived isomorphism hypothesis of this statement.

**Construction/proof.**
1. KZ extends derived-isomorphic Hodge maps by the local shtuka/canonical-model comparison and identifies their formal neighbourhoods.
2. Use the integral comparison contract at associated parahorics, then compare the neutral towers using finite étale level normalizations.

**Direct prerequisites:** `ShimuraVarietiesPartII:SV2.1/adapted-branch-interface`, `ShimuraVarietiesPartII:SV2.0/prime-to-p-tower`, `HeckeStacksAndLocalShtukas:HS2`, `GeometricSatakeAndFusion:GS0:loop-geometry`, `ShimuraCompactificationsPartII:C7/normalized-interior-model`.

**Acceptance:** An arbitrary pair of models with isomorphic derived groups does not give a chosen integral map without the compatible datum and level data.

**Source:** KZ, Propositions 4.3.2 and 4.3.4, pp.37–40.

### Matched-multiplier comparison datum

**Target:** `ShimuraVarietiesPartII:SV2.5/matched-multiplier-datum` (construction). **Planet:** Matched-multiplier datum.

Let the auxiliary Hodge cover (G_1,X_1) and strongly acceptable target (G_2,X_2) share the adjoint datum and carry symplectic embeddings with characters c_1,c_2. Define G_3=(G_1×_(G_ad×G_m)G_2)°, matching both the adjoint image and c_1=c_2, with the induced Shimura conjugacy class. Its direct-sum representation on V_1⊕V_2 is symplectic because the multipliers agree. The projection to G_1 is derived-isomorphic in the source’s cover setup; the projection to G_2 is the corresponding central derived cover.

**Construction/proof.**
1. KZ uses the common-adjoint, common-multiplier fibre product to compare an arbitrary target Hodge embedding with the auxiliary one.
2. Use generic fibre-product and centre calculations from the group supplier; check the Hodge homomorphism factors through the identity component.
3. The block direct-sum form has one similitude factor exactly when the two nonzero blocks have the same multiplier.

**Direct prerequisites:** `ShimuraVarietiesPartII:SV2.2/strong-auxiliary-cover`, `ShimuraVarietiesPartII:SV2.2/strongly-acceptable-triple`, `ReductiveGroupsPartII:RG2.1`, `ShimuraData:D4`.

**Consumers.** `ShimuraVarietiesPartII:SV2.5/matched-integral-comparison`.

**API.**

- `MatchedMultiplierDatum.proj` (projection): Expose the two datum maps, their common adjoint image and their common multiplier.
- `MatchedMultiplierDatum.blockScale` (characterisation): For nonzero alternating forms ψ_i and similitudes g_i of factors with c_i, the block operator scales ψ_1⊕ψ_2 by c exactly when c_1=c=c_2.
- `MatchedMultiplierDatum.reflex` (compatibility): The reflex field lies in E_1E_2; at the chosen p-place the auxiliary reflex splitting identifies the composite local field with E_2,v.

**Discriminating checks.**

- `MatchedMultiplierDatum.equalFactors`: Two copies of one symplectic similitude with the same multiplier give a direct-sum similitude with that multiplier.
- `MatchedMultiplierDatum.unequalMultipliers`: On two standard symplectic Q-planes, diag(2,1) and diag(3,1) have multipliers 2 and 3; their block sum is not a similitude.
- `MatchedMultiplierDatum.projections`: Projection tensors on V_1⊕V_2 exclude a matrix mixing the two summands, even if it preserves their total symplectic form.

**Acceptance:** The plain product of two GSp groups does not act by similitudes on the direct-sum form.

**Source:** KZ, §4.3.7–Lemma 4.3.8, pp.40–42; §4.4.6–4.4.7, pp.43–44.

### Integral geometry of the matched datum

**Target:** `ShimuraVarietiesPartII:SV2.5/matched-integral-comparison` (theorem).

For the matched datum of the strongly acceptable setup, the compact-centre exact sequences and torsion-free coinvariants yield the required connected fixer and a good integral lattice embedding. Its projection to G_1 gives the integral map and completed-local-ring comparison of the derived-isomorphism theorem. Its map to G_2 is constructed by neutral-component descent. In this setup both comparison maps induce isomorphisms on completed local rings at corresponding geometric special points, and ordinary classes correspond under the derived maps.

**Construction/proof.**
1. KZ checks the centre of the matched fibre product and uses the resulting integral maps to transport ordinary lifts.
2. Use the corrected integral embedding contract and the group connected-fixer criterion.
3. Distinguish the derived-isomorphism projection from the derived-cover projection and apply the appropriate descent comparison.

**Direct prerequisites:** `ShimuraVarietiesPartII:SV2.5/matched-multiplier-datum`, `ShimuraVarietiesPartII:SV2.5/integral-datum-maps`, `ShimuraVarietiesPartII:SV2.3/conjugate-level-gluing`, `BunGAndNewtonStrata:BG1/ordinary-derived-isogeny`, `ReductiveGroupsPartII:RG2.3`, `FiniteFlatGroupsAndIntegralPadicHodgeTheory:R07.6`.

**Acceptance:** The two projection maps must not be justified by the same derived-isomorphism assertion unless their hypotheses are checked.

**Source:** KZ, Lemma 4.3.8, pp.40–42; proof of Theorem 4.4.6, pp.45–46.

### Integral Siegel map for a chosen Hodge embedding

**Target:** `ShimuraVarietiesPartII:SV2.5/arbitrary-siegel-map` (theorem).

Given a strongly acceptable target and any Hodge embedding into a Siegel datum with a suitable self-dual lattice and compatible levels, the generic Siegel map extends over its constructed integral model. Use the auxiliary cover and matched datum to define and descend the map. The universal abelian scheme pulled back by this map is therefore available even when that embedding was not used to define the model.

**Construction/proof.**
1. KZ extends the arbitrary Hodge embedding by comparison with the very-good auxiliary embedding.
2. Build the matched integral diagram and descend the Siegel map through the integral component action.

**Direct prerequisites:** `ShimuraVarietiesPartII:SV2.5/matched-integral-comparison`, `ShimuraVarietiesPartII:SV2.3/free-descent-kernel`, `PELModuli:M4`, `ShimuraCompactificationsPartII:C7/zarhin-self-dual-replacement`.

**Acceptance:** Changing the defining embedding is an asserted comparison theorem, not a redefinition of the integral model.

**Source:** KZ, Proposition 4.3.6, p.40, with §4.3.7–4.3.8, pp.40–42.

### Product comparison of abelian fibres

**Target:** `ShimuraVarietiesPartII:SV2.5/product-abelian-comparison` (theorem).

The integral matched-multiplier diagram maps to the moduli space of pairs of polarized abelian schemes with a common similitude scalar. Pullback of the universal objects gives A_3≅j_1^*A_1×j_2^*A_2 over the common local base, and identifies the projection tensors, polarizations and all étale and crystalline realizations. This is a product of abelian schemes with specified tensors, not merely an isogeny of unstructured fibres.

**Construction/proof.**
1. KZ realizes the common-multiplier Siegel diagram by the product moduli problem.
2. Apply normalization to the finite map from the common-multiplier moduli model and pull back the universal abelian schemes.

**Direct prerequisites:** `ShimuraVarietiesPartII:SV2.5/arbitrary-siegel-map`, `ShimuraVarietiesPartII:SV2.5/matched-integral-comparison`, `PELModuli:M4`, `AbelianSchemesAndArithmeticModuli:A4/etale-tate-module`, `AbelianSchemesAndArithmeticModuli:A4/abelian-h1-de-rham`.

**Acceptance:** The two projection idempotents must be retained in every realization.

**Source:** KZ, Proposition 4.4.8 and equation (4.4.9.1), pp.44–45.

### Exact sequences of tensor isogeny groups

**Target:** `ShimuraVarietiesPartII:SV2.5/isogeny-group-exact-sequences` (theorem).

At corresponding geometric points x_i of the matched integral diagram, let C_i=ker(G_3→G_i). Then 1→C_i→I_(x_3)→I_(x_i)→1 is an exact sequence of Q-algebraic groups for i=1,2. Projection tensors make the map on abelian products well-defined. Exactness can be checked at a prime using the all-prime tensor Tate theorem and compatible semisimple centralizers; it is not inferred solely from surjectivity of G_3→G_i.

**Construction/proof.**
1. KZ identifies the tensor-isogeny group maps through the product abelian scheme and checks exactness in a realization.
2. Use the projection tensors, realize the central kernels through specialization of their generic actions, and apply the compatible centralizer comparison.

**Direct prerequisites:** `ShimuraVarietiesPartII:SV2.5/product-abelian-comparison`, `ShimuraVarietiesPartII:SV2.4/all-prime-tate-comparison`, `ReductiveGroupsPartII:RG2.1`.

**Acceptance:** Omitting projection tensors can allow off-diagonal endomorphisms and invalidates the proposed sequence.

**Source:** KZ, Proposition 4.4.10, p.45.

### Ordinary points are very good

**Target:** `ShimuraVarietiesPartII:SV2.5/ordinary-very-good` (theorem).

For the good Hodge embedding used in the special Hodge model, an ordinary point lies in the smooth extremal local-model locus and is a very-good point. Consequently the corrected adapted deformation comparison applies to its formal branch even if the embedding has only been assumed good globally. This is a pointwise conclusion on the actual ordinary locus.

**Construction/proof.**
1. KZ locates ordinary points in the top smooth Schubert locus and applies the very-good trivialization criterion there.
2. Use the ordinary integral-conjugacy and local-model smoothness inputs to verify the tensor-compatible first-order condition.

**Direct prerequisites:** `ShimuraVarietiesPartII:SV2.4/ordinary-locus`, `GeometricSatakeAndFusion:GS0:loop-geometry`, `FiniteFlatGroupsAndIntegralPadicHodgeTheory:R07.6`, `ShimuraVarietiesPartII:SV2.0/integral-hodge-data`, `BunGAndNewtonStrata:BG1/ordinary-integral-conjugacy`.

**Acceptance:** A nonordinary singular local-model point is not certified very good by this theorem.

**Source:** KZ, Remark 4.1.13, p.33, and §3.2.4–3.2.7, pp.22–24.

### Ordinary Hodge special lift with isogeny action

**Target:** `ShimuraVarietiesPartII:SV2.5/ordinary-hodge-special-lift` (theorem). **Planet:** Ordinary special lift.

At an ordinary point x of the special Hodge model where the embedding is very good, there is a finite extension K/breve Q_p and an integral lift with special generic point such that the entire I_x(Q)-action on A_x lifts in the isogeny category. Apply the ordinary p-divisible-group lifting theorem preserving J_b(Q_p), then Serre–Tate and polarized effectivity. Full rank of I_x forces the lifted Mumford–Tate group into a torus. Existence and the lifted action are asserted; no uniqueness or unramified field of definition is asserted.

**Construction/proof.**
1. KZ lifts an ordinary tensor p-divisible group with its Newton automorphisms and realizes it in the Hodge branch.
2. Use the exact ordinary lifting contract from R07.6, the adapted branch identification and algebraic effectivity.
3. The lifted I_x(Q)-action centralizes the Mumford–Tate group; full rank places that group in the centralizer of a maximal torus, proving specialness.

**Direct prerequisites:** `ShimuraVarietiesPartII:SV2.5/ordinary-very-good`, `ShimuraVarietiesPartII:SV2.4/auxiliary-prime-rank`, `ShimuraVarietiesPartII:SV2.4/isogeny-realizations`, `BunGAndNewtonStrata:BG1/ordinary-integral-conjugacy`, `FiniteFlatGroupsAndIntegralPadicHodgeTheory:R07.6`, `AbelianSchemesAndArithmeticModuli:A4/serre-tate-equivalence`, `AbelianSchemesAndArithmeticModuli:A4/polarized-effectivity`, `ShimuraData:D1/mumford-tate-group`.

**Acceptance:** A lift preserving only one Frobenius endomorphism does not satisfy the full I_x(Q)-action requirement.

**Source:** KZ, Theorems 3.4.5 and 4.1.11, pp.27–28 and 32–33.

### Ordinary special lifts for strongly acceptable triples

**Target:** `ShimuraVarietiesPartII:SV2.5/ordinary-strong-special-lift` (theorem). **Planet:** Strongly acceptable special lift.

For every ordinary geometric point x on a strongly acceptable triple’s integral model, there exists an integral lift over a finite extension of breve Q_p whose generic point is special and whose abelian fibre carries a lift of I_x(Q) in the isogeny category. First transport a Hodge lift through the matched datum and the exact isogeny-group sequences; then reach every component using the corrected conjugate-level gluing, prime-to-p quasi-isogenies and the required p-power quasi-isogenies. All defining realizations are preserved.

**Construction/proof.**
1. KZ carries the ordinary lift and its full isogeny action from the auxiliary model to the target.
2. Use the formal comparison and exact isogeny-group sequences for points in the comparison image.
3. For other component pieces use the actual conjugated p-level and transport the lift by the tensor-compatible quasi-isogenies.

**Direct prerequisites:** `ShimuraVarietiesPartII:SV2.5/ordinary-hodge-special-lift`, `ShimuraVarietiesPartII:SV2.5/isogeny-group-exact-sequences`, `ShimuraVarietiesPartII:SV2.5/matched-integral-comparison`, `ShimuraVarietiesPartII:SV2.3/conjugate-level-gluing`, `BunGAndNewtonStrata:BG1/ordinary-derived-isogeny`.

**Acceptance:** The construction must preserve the exact finite-field q-Frobenius endomorphism through the lifted rational isogeny action.

**Source:** KZ, Theorem 4.4.6 and proof §4.4.11, pp.43–46.

### Rational Frobenius at an ordinary point

**Target:** `ShimuraVarietiesPartII:SV2.5/ordinary-rational-frobenius` (theorem). **Planet:** Ordinary rational Frobenius.

For an F_q-point x in the ordinary locus of a strongly acceptable triple, there is γ_0∈G(Q) whose image is G(Q_ℓ)-conjugate to the exact geometric q-Frobenius for every ℓ≠p. Moreover γ_0 is elliptic over R. Realize the rational q-Frobenius γ_x∈I_x(Q) on the Betti cohomology of the special lift preserving I_x(Q); compare with étale cohomology and use Rosati compactness modulo the weight scalars. No finite power replaces q-Frobenius in the conclusion.

**Construction/proof.**
1. KZ embeds the lifted rational isogeny group into the Betti G and sends q-Frobenius to a rational representative.
2. Use Betti–étale tensor comparison for each ℓ, and compactness of a containing torus modulo the weight group for ellipticity.

**Direct prerequisites:** `ShimuraVarietiesPartII:SV2.5/ordinary-strong-special-lift`, `ShimuraVarietiesPartII:SV2.4/rosati-reductivity`, `ShimuraVarietiesPartII:SV2.4/isogeny-realizations`, `AutomorphicBundles:B2`.

**Acceptance:** The result is for the chosen F_q-point, so replacing it by F_(q^m) would prove a different statement.

**Source:** KZ, Corollary 4.4.13 and Remark 4.4.14, p.46.

## SV2.6: Curves over the original residue field

**Status:** planned; supplier contracts listed in the closure register remain open.

**Layer prerequisites:** `AlgebraicModuliForArithmeticGeometry:R09.1`, `AlgebraicModuliForArithmeticGeometry:R09.4`, `GeometricSatakeAndFusion:GS0:Witt-geometry`, `GeometricSatakeAndFusion:GS0:loop-geometry`, `ReductiveGroupsPartII:RG2.3`, `ShimuraVarietiesPartII:SV2.2`, `ShimuraVarietiesPartII:SV2.3`, `ShimuraVarietiesPartII:SV2.4`.

### Kottwitz–Rapoport strata at very special level

**Target:** `ShimuraVarietiesPartII:SV2.6/kr-stratification` (construction). **Planet:** Kottwitz–Rapoport strata.

For the strongly acceptable very-special model, pull back the Schubert stratification of the intrinsic local model through the connected adjoint frame diagram. The index set is the dominant inertia-coinvariant coweights λ≤μ_h, with Bruhat closure order and unique extremal index μ_h. The extremal KR stratum is open dense and smooth. Each stratum descends over the finite residue extension given by the Frobenius orbit of its index; do not assign all geometric strata individually to the base residue field.

**Construction/proof.**
1. KZ identifies the very-special admissible Schubert indices and transfers them through the adjoint diagram.
2. Use the imported affine flag closure and descent results; equivariance makes the inverse-image stratification independent of a frame.

**Direct prerequisites:** `ShimuraVarietiesPartII:SV2.3/adjoint-local-model-diagram`, `ShimuraVarietiesPartII:SV2.2/strongly-acceptable-triple`, `GeometricSatakeAndFusion:GS0:Witt-geometry`, `GeometricSatakeAndFusion:GS0:loop-geometry`.

**Consumers.** `ShimuraVarietiesPartII:SV2.6/rational-local-model-lift`, `ShimuraVarietiesPartII:SV2.6/same-field-curves`.

**API.**

- `ShimuraKRStratum.mem` (characterisation): A framed point lies in index λ exactly when its local-model image lies in the corresponding Schubert orbit.
- `ShimuraKRStratum.closure` (relation): The closure is the union of strata with indices below λ in the very-special Bruhat order.
- `ShimuraKRStratum.frobenius` (functoriality): Residue Frobenius sends index λ to σλ; an orbit descends over its orbit field.

**Discriminating checks.**

- `ShimuraKRStratum.top`: The index μ_h gives the unique dense open Schubert stratum at very special level.
- `ShimuraKRStratum.newtonDifferent`: On the split-at-p GU(1,1) hyperspecial curve, the minuscule local model has one KR stratum, while both ordinary and basic Newton classes occur. A basic point is therefore top KR and nonordinary.
- `ShimuraKRStratum.orbitDescent`: A non-fixed geometric index is transported to a different index by residue Frobenius; individual descent requires its orbit field.

**Acceptance:** The KR extremal stratum and the ordinary Newton locus are different stratifications.

**Source:** KZ, §5.2.1, pp.48–49.

### Rational lifting to the local-model diagram

**Target:** `ShimuraVarietiesPartII:SV2.6/rational-local-model-lift` (theorem).

For x∈S(F_q), a fibre of the connected adjoint tensor-frame torsor has an F_q-point by Lang’s theorem for its smooth connected special-fibre group. Its image is a local-model point over the same F_q in the corresponding KR stratum. The statement uses the actual connected reduction of the diagram; it does not follow from a disconnected full-fixer torsor or from strict-henselian comparison.

**Construction/proof.**
1. KZ trivializes the connected adjoint frame torsor over the finite field before constructing the comparison curve.
2. Apply Lang to the fibre, then the equivariant local-model map.

**Direct prerequisites:** `ShimuraVarietiesPartII:SV2.3/adjoint-local-model-diagram`, `ShimuraVarietiesPartII:SV2.6/kr-stratification`, `ReductiveGroupsPartII:RG2.3`.

**Acceptance:** Both the framing point and its local-model image must be defined over F_q.

**Source:** KZ, Proof of Proposition 5.2.7, pp.52–53.

### Curves over the original residue field

**Target:** `ShimuraVarietiesPartII:SV2.6/same-field-curves` (construction). **Planet:** Same-field comparison curve.

For x∈S_(K,λ)(F_q) with λ below the top KR index, construct a smooth geometrically connected curve C/F_q, a rational point c∈C(F_q), and a map f:C→S with f(c)=x such that a dense open of C maps into a strictly higher KR stratum. Use the same-field local-model root-curve theorem, pull it through a smooth stack presentation retaining the rational point, and apply finite-field Bertini with prescribed point and prescribed nonempty open intersection. For a point already in the top stratum, use a curve meeting the dense ordinary open inside its smooth component. Throughout the residue field stays F_q.

**Construction/proof.**
1. KZ first supplies local-model curves through rational points with a dense higher-stratum intersection, then transports them to the Shimura stack.
2. Import the full same-field root-curve contract, including the ramified rank-one cases and the Lang argument for orbit representatives.
3. Use the rational-point smooth stack presentation and Poonen’s finite-field Bertini with the required local condition and open intersection; shrink to a smooth geometrically connected curve.

**Direct prerequisites:** `ShimuraVarietiesPartII:SV2.6/rational-local-model-lift`, `ShimuraVarietiesPartII:SV2.6/kr-stratification`, `ShimuraVarietiesPartII:SV2.4/ordinary-density`, `GeometricSatakeAndFusion:GS0:loop-geometry`, `AlgebraicModuliForArithmeticGeometry:R09.4`, `AlgebraicModuliForArithmeticGeometry:R09.1`.

**Consumers.** `ShimuraVarietiesPartII:SV2.7/representationwise-independence`.

**API.**

- `ShimuraComparisonCurve.markedPoint` (projection): Return c, f and the equality f(c)=x over F_q.
- `ShimuraComparisonCurve.higherOpen` (data): Return the nonempty dense open meeting a higher KR stratum, or the ordinary open in the top-stratum step.
- `ShimuraComparisonCurve.pullback` (functoriality): Pullback of every tower representation is lisse on C and has the original q-Frobenius at c.

**Discriminating checks.**

- `ShimuraComparisonCurve.sameField`: For x/F_q the marked point has degree one over F_q; a curve whose marked point has degree m>1 fails.
- `ShimuraComparisonCurve.notConstant`: At a lower-stratum x, a constant map C→{x} fails the required dense higher-stratum condition.
- `ShimuraComparisonCurve.topNotOrdinary`: At a top-KR basic point on the split-at-p GU(1,1) hyperspecial curve, the comparison curve must meet ordinary points; top-KR membership alone cannot be the induction base.

**Acceptance:** The q-Frobenius at c is the same q-Frobenius as at x, not a power coming from field extension.

**Source:** KZ, Propositions 5.2.3 and 5.2.7, pp.49–53.

## SV2.7: A rational common Frobenius class

**Status:** planned; supplier contracts listed in the closure register remain open.

**Layer prerequisites:** `AbelianSchemesAndArithmeticModuli:A4`, `AbelianSchemesAndArithmeticModuli:A6`, `ArithmeticGaloisRepresentations:R01.5`, `ArithmeticGaloisRepresentations:R01.6`, `AutomorphicBundles:B2`, `GlobalShtukasAndFunctionFieldLanglands:GS.6`, `ReductiveGroupsPartII:RG2.1`, `ReductiveGroupsPartIII:RG3.0`, `ReductiveGroupsPartIII:RG3.1`, `ShimuraVarietiesPartII:SV2.0`, `ShimuraVarietiesPartII:SV2.5`, `ShimuraVarietiesPartII:SV2.6`.

### Intrinsic group-valued tower local systems

**Target:** `ShimuraVarietiesPartII:SV2.7/intrinsic-tower-local-system` (construction). **Planet:** Tower local system.

For ℓ≠p, refine the ℓ-component of the prime-to-p Shimura tower to obtain its pro-étale K_ℓ-cover, then extend structure group to G(Q_ℓ). On the special fibre this defines a G(Q_ℓ)-local system L_ℓ. At neat level it agrees with the tensor-frame torsor of the abelian H¹ realization; it descends as a local system on the non-neat Shimura stack. A path or frame changes the associated fundamental-group homomorphism only by G(Q_ℓ)-conjugation.

**Construction/proof.**
1. KZ defines the group-valued local system intrinsically from the integral tower and identifies its tensor-frame realization.
2. Extend structure group from the compact-level cover and descend along a neat normal quotient.

**Direct prerequisites:** `ShimuraVarietiesPartII:SV2.0/prime-to-p-tower`, `ShimuraVarietiesPartII:SV2.0/integral-shimura-stack`, `ShimuraVarietiesPartII:SV2.0/etale-tensors`, `AutomorphicBundles:B2`.

**Consumers.** `ShimuraVarietiesPartII:SV2.7/frobenius-quotient-point`.

**API.**

- `ShimuraTowerLocalSystem.frameComparison` (compatibility): An available Hodge embedding identifies L_ℓ with Isom_tensor(V_Qℓ,H¹_ét(A)).
- `ShimuraTowerLocalSystem.representation` (functoriality): An algebraic G-representation gives a lisse coefficient sheaf, preserving tensor, dual and coefficient extension.
- `ShimuraTowerLocalSystem.level` (functoriality): Prime-to-p level maps pull back the local system compatibly with the pro-étale tower.

**Discriminating checks.**

- `ShimuraTowerLocalSystem.trivialRep`: The trivial representation gives the constant rank-one sheaf with Frobenius 1.
- `ShimuraTowerLocalSystem.frameChange`: A new frame conjugates the fundamental-group image; character values remain unchanged.
- `ShimuraTowerLocalSystem.pExcluded`: The construction does not present the characteristic-p p-divisible group’s geometric points as an étale rank-2g local system.

**Acceptance:** The local system is defined before choosing an auxiliary Hodge embedding.

**Source:** KZ, §5.1.1–5.1.2, p.47.

### Frobenius point in the conjugacy quotient

**Target:** `ShimuraVarietiesPartII:SV2.7/frobenius-quotient-point` (construction). **Planet:** Frobenius quotient point.

For an F_q-point y on the special-fibre Shimura stack, define γ_(y,ℓ)=χ_G(ρ_ℓ(Frob_q,geom))∈Conj(G)(Q_ℓ), where the conjugacy quotient χ_G is imported from RG3.0. The point is independent of paths, frames and the chosen neat cover. For every algebraic representation its characteristic polynomial is that of geometric Frobenius on the associated local-system fibre. A Q-rational quotient point is not by definition represented by an element of G(Q).

**Construction/proof.**
1. KZ sends the Frobenius of the intrinsic group-valued local system to the conjugacy quotient.
2. Apply the imported quotient universal property and tensor-frame comparison to remove the choices.

**Direct prerequisites:** `ShimuraVarietiesPartII:SV2.7/intrinsic-tower-local-system`, `ReductiveGroupsPartIII:RG3.0/conjugacy-quotient`, `AbelianSchemesAndArithmeticModuli:A6/frobenius-semisimplicity`.

**Consumers.** `ShimuraVarietiesPartII:SV2.7/representation-unit-eigenvalues`, `ShimuraVarietiesPartII:SV2.7/algebraic-common-class`.

**API.**

- `ShimuraFrobeniusPoint.representation` (compatibility): Evaluation by a representation’s invariant characteristic-polynomial map gives its Frobenius characteristic polynomial.
- `ShimuraFrobeniusPoint.residueExtension` (functoriality): Extension from F_q to F_(q^m) gives the quotient of the m-th power of the original Frobenius.
- `ShimuraFrobeniusPoint.frameIndependent` (characterisation): Changing a path or tensor frame gives the same quotient point.

**Discriminating checks.**

- `ShimuraFrobeniusPoint.GLn`: For G=GL_n the coordinates are the coefficients of the monic Frobenius polynomial, including its nonzero constant coefficient.
- `ShimuraFrobeniusPoint.elliptic`: For an elliptic F_q-point the standard H¹ polynomial has constant term q, not q inverse.
- `ShimuraFrobeniusPoint.power`: The F_(q²) point has eigenvalues α_i²; it need not have the same quotient point as over F_q.

**Acceptance:** Use geometric Frobenius consistently, with multiplier q in the H¹ convention.

**Source:** KZ, §5.1.2–5.1.3, pp.47–48.

### Unit eigenvalues in every representation

**Target:** `ShimuraVarietiesPartII:SV2.7/representation-unit-eigenvalues` (theorem).

For every finite-dimensional algebraic representation θ of G over an algebraic coefficient field of characteristic zero and every special-fibre F_q-point, all Frobenius eigenvalues of θ are units at every finite place away from p. The faithful abelian H¹ realization has algebraic Weil eigenvalues and these are such units; θ occurs as a subquotient of sums of tensor products of that realization and its dual, so the unit property persists. No finite-order determinant hypothesis is imposed on θ itself.

**Construction/proof.**
1. KZ propagates the prime-to-p unit property from the faithful abelian realization to all algebraic representations.
2. Use the abelian Weil polynomial and its integral roots, duality, tensor products and the tensor-generator theorem for algebraic representations.

**Direct prerequisites:** `ShimuraVarietiesPartII:SV2.7/frobenius-quotient-point`, `AbelianSchemesAndArithmeticModuli:A4/etale-tate-module`, `AbelianSchemesAndArithmeticModuli:A6/frobenius-semisimplicity`, `ArithmeticGaloisRepresentations:R01.6`, `ReductiveGroupsPartII:RG2.1`.

**Acceptance:** A determinant with nonzero Weil weight must be handled by coefficient twisting in the companion theorem, not falsely declared finite order.

**Source:** KZ, Lemma 5.3.3, pp.53–54.

### Representation-wise Frobenius independence

**Target:** `ShimuraVarietiesPartII:SV2.7/representationwise-independence` (theorem). **Planet:** Representation-wise independence.

Fix y/F_q, primes ℓ,ℓ′≠p, algebraic closures and embeddings of a common algebraic coefficient field into them. For every algebraic representation θ of G over a number field large enough for the two algebraic Frobenius classes, the characteristic polynomials of θ(γ_(y,ℓ)) and θ(γ_(y,ℓ′)) agree under these embeddings. On a comparison curve use companions for semisimple algebraic lisse sheaves on a smooth open curve, allowing a constant twist and finite coefficient extension, and Chebotarev on its dense open. Start with ordinary points, then the top-KR curve meeting the ordinary locus, and descend through the finite KR order. Never extend F_q in this comparison.

**Construction/proof.**
1. KZ uses companions and Chebotarev on same-field curves to move the ordinary Frobenius equality down the KR order.
2. Use the unit-eigenvalue lemma to check the open-curve companion hypotheses, allowing coefficient extension without residue-field extension.
3. Identify the companion with the other pulled-back local system by equality on the dense higher-stratum open, then specialize to the rational marked point.

**Direct prerequisites:** `ShimuraVarietiesPartII:SV2.5/ordinary-rational-frobenius`, `ShimuraVarietiesPartII:SV2.6/same-field-curves`, `ShimuraVarietiesPartII:SV2.7/representation-unit-eigenvalues`, `GlobalShtukasAndFunctionFieldLanglands:GS.6`, `ArithmeticGaloisRepresentations:R01.5`, `ReductiveGroupsPartIII:RG3.0/faithful-quotient-finite`.

**Acceptance:** The companion contract must cover smooth nonproper curves and semisimplifications; the projective finite-determinant statement in GS.6 alone is insufficient.

**Source:** KZ, Proposition 5.3.5 and proof, p.54.

### A common algebraic conjugacy class

**Target:** `ShimuraVarietiesPartII:SV2.7/algebraic-common-class` (theorem).

For a strongly acceptable triple and y/F_q, all representation characters identify the semisimple Frobenius quotient points over algebraic closures with one point in Conj(G)(Q-bar). Algebraicity of each local quotient point follows from the faithful abelian characteristic polynomial and the finite map of conjugacy quotients; equality follows from all algebraic characters, not the faithful characteristic polynomial alone.

**Construction/proof.**
1. KZ combines representation-wise equality with invariant characters to identify the algebraic semisimple class.
2. Use RG3.0’s finite faithful-quotient map for algebraicity and its full character separation for equality.

**Direct prerequisites:** `ShimuraVarietiesPartII:SV2.7/frobenius-quotient-point`, `ShimuraVarietiesPartII:SV2.7/representationwise-independence`, `ReductiveGroupsPartIII:RG3.0/character-separation`, `ReductiveGroupsPartIII:RG3.0/faithful-quotient-finite`.

**Acceptance:** A faithful representation alone can merge distinct orthogonal conjugacy classes; all characters remove that ambiguity.

**Source:** KZ, Proof of Theorem 5.1.4, §5.3.6, p.55.

### Rational common Frobenius class

**Target:** `ShimuraVarietiesPartII:SV2.7/common-frobenius-class` (theorem). **Planet:** Common Frobenius class.

Let p>2, let (G,X,G°) be a strongly acceptable triple (including very-special level), and let y∈S_K(F_q) for a finite extension of the reflex residue field. There is a unique γ_y∈Conj(G)(Q) whose image in Conj(G)(Q_ℓ) is γ_(y,ℓ) for every ℓ≠p. Descend the common algebraic point using its rational local realizations at almost all primes and the degree-one-residue criterion of RG3.1. This theorem supplies a quotient point; a rational representative in G(Q) requires additional group hypotheses and belongs to the already planned RG3.5 arithmetic application.

**Construction/proof.**
1. KZ descends the common algebraic class to Q by using its realization in Q_ℓ for every ℓ≠p.
2. Apply the imported degree-one residue-field descent theorem to the field of definition of the common quotient point; separatedness gives uniqueness.

**Direct prerequisites:** `ShimuraVarietiesPartII:SV2.7/algebraic-common-class`, `ReductiveGroupsPartIII:RG3.1/degree-one-residue-descent`.

**Acceptance:** The exact q-Frobenius is retained throughout; uniqueness is in the conjugacy quotient, not in G(Q).

**Source:** KZ, Theorem 5.1.4, p.48; proof §5.3.6, p.55.

## Closure register

All internal chains terminate in a pinned declaration, an exact external node, or one of these explicit requested contracts. There are no unassigned mathematical gaps in the design, and there are 27 open requests. This is planned coverage, not a claim that the suppliers have already proved the inputs. The named extensions in the ownership proposals must be allocated before calling the graph closed.

### AbelianSchemesAndArithmeticModuli:A5

Finite-dimensional rational geometric endomorphism algebra and quasi-isogenies of abelian varieties, finite extension of definition of every geometric endomorphism, product/projector compatibility, and comparison of its ℓ-adic/crystalline realization actions. The pinned integral endomorphism ring is the baseline carrier; rationalization and these arithmetic results are imported here.

**Needed by:** `ShimuraVarietiesPartII:SV2.4/tensor-isogeny-group`.

### AlgebraicModuliForArithmeticGeometry:R09.1

Finite-field Bertini with a prescribed rational smooth point, prescribed tangent/local condition and intersection with a chosen dense open, producing a smooth geometrically connected curve over the original F_q after shrinking. Projective parameter spaces alone do not prove this; propose AlgebraicModuliForArithmeticGeometryFiniteFieldCurvesPartII.

**Needed by:** `ShimuraVarietiesPartII:SV2.6/same-field-curves`.

### AlgebraicModuliForArithmeticGeometry:R09.3

Representable finite-level quotient and normal descent for the actual integral arithmetic group actions. The tower kernel Δ need not be finite; identify finite-level representable quotients, finite étale transitions and effectiveness over the target local reflex ring under the specified small-level hypotheses.

**Needed by:** `ShimuraVarietiesPartII:SV2.0/integral-shimura-stack`, `ShimuraVarietiesPartII:SV2.0/prime-to-p-tower`, `ShimuraVarietiesPartII:SV2.3/connected-normalization-cover`, `ShimuraVarietiesPartII:SV2.3/conjugate-level-gluing`, `ShimuraVarietiesPartII:SV2.3/free-descent-kernel`.

### AlgebraicModuliForArithmeticGeometry:R09.4

Quotient stacks by the finite neat-level quotient with inertia and refinement independence. For a finite-field point of a smooth algebraic stack, supply a smooth presentation with a rational lift over that same finite field (LMB Theorem 6.3 as used by KZ 5.2.7); a presentation after finite extension is insufficient.

**Needed by:** `ShimuraVarietiesPartII:SV2.0/integral-shimura-stack`, `ShimuraVarietiesPartII:SV2.6/same-field-curves`.

### AlgebraicModuliForArithmeticGeometry:R09.6

Effectivity/approximation and comparison of the chosen normal formal branch, ordinary henselizations and completed strict henselizations. The same-field theorem requires a rational local-model point; preserve this distinction when transferring local geometry.

**Needed by:** `ShimuraVarietiesPartII:SV2.1/adapted-branch-interface`, `ShimuraVarietiesPartII:SV2.1/same-field-henselizations`, `ShimuraVarietiesPartII:SV2.1/weaker-strict-comparison`.

### ArithmeticGaloisRepresentations:R01.5

Chebotarev gives auxiliary primes splitting the group and the finitely generated Frobenius eigenvalue field, without assuming common G-conjugacy classes. On a smooth open finite-field curve, equality of semisimple lisse characteristic polynomials at closed points of a dense open determines the semisimplification by Chebotarev/Brauer–Nesbitt.

**Needed by:** `ShimuraVarietiesPartII:SV2.4/auxiliary-prime-rank`, `ShimuraVarietiesPartII:SV2.7/representationwise-independence`.

### ArithmeticGaloisRepresentations:R01.6

Independently of SV2.7, supply Noot’s coarser Conj′ Frobenius comparison for accommodating Hodge embeddings and the sufficiently neat/power step used in HT 2.1.9. R01.6/noot-specialization concerns characteristic-zero torsion specialization and does not discharge this contract. Also supply CM potential good reduction/Néron–Ogg–Shafarevich and the abelian Weil-polynomial prime-to-p-unit property. The coarser comparison is essential to avoid a cycle with the full Conj(G) theorem.

**Needed by:** `ShimuraVarietiesPartII:SV2.4/special-reduction-nonempty`, `ShimuraVarietiesPartII:SV2.4/all-prime-tate-comparison`, `ShimuraVarietiesPartII:SV2.7/representation-unit-eigenvalues`.

### AutomorphicBundles:B2

Tensor-compatible Betti–étale and absolute-Hodge specialization for the full G representation, including the Tate/similitude line and pullback to ordinary special lifts; flat full-G local systems rather than only automorphic Levi bundles. Supplies the rational I_x action on Betti H¹ used in SV2.5.

**Needed by:** `ShimuraVarietiesPartII:SV2.0/etale-tensors`, `ShimuraVarietiesPartII:SV2.5/ordinary-rational-frobenius`, `ShimuraVarietiesPartII:SV2.7/intrinsic-tower-local-system`.

### BunGAndNewtonStrata:BG1

Grothendieck–Katz Newton semicontinuity for the universal convergent G-isocrystal over the possibly singular finite-type special fibre, local constancy of integral Kottwitz invariant, representation-detection of dominance, and descent of the reduced strata from perfectification. State closure containment only. This extends pointwise B(G) classification and must cover the actual family.

**Needed by:** `ShimuraVarietiesPartII:SV2.4/newton-strata`, `ShimuraVarietiesPartII:SV2.4/newton-semicontinuity`.

### CrystallineCohomology:CR.7

Absolute Hodge crystalline–de Rham compatibility and horizontal transport on normal formal branches. Globalize the canonical tensors as convergent F-isocrystal sections by semistable alteration, log-Dieudonné comparison and proper descent, exactly in the possibly singular/nonproper family scope of HT Appendix A. Generic smooth proper comparison alone is insufficient; extend through CrystallineCohomologyIntegralFamiliesPartII.

**Needed by:** `ShimuraVarietiesPartII:SV2.0/lift-independent-crystalline-tensors`, `ShimuraVarietiesPartII:SV2.0/global-crystalline-realization`.

### FiniteFlatGroupsAndIntegralPadicHodgeTheory:R07.2

Contravariant Dieudonné theory for the universal abelian p-divisible group, Frobenius-semilinear comparison over W(k), descent from a finite residue field and filtration/dual/polarization compatibility. Ordinary elliptic slopes are 0,1. Rational J_b actions live in the isogeny category.

**Needed by:** `ShimuraVarietiesPartII:SV2.0/lift-independent-crystalline-tensors`, `ShimuraVarietiesPartII:SV2.1/integral-crystalline-frames`.

### FiniteFlatGroupsAndIntegralPadicHodgeTheory:R07.4

Integral Breuil–Kisin to Dieudonné comparison for the exact Hodge lattice and tensors, with torsor purity/extension as in KZ 3.3.2 and its Ans22 input; integrality and tensor frames, not merely a rational comparison. Include admissibility with the integral Kottwitz invariant and the inverse Hodge cocharacter.

**Needed by:** `ShimuraVarietiesPartII:SV2.1/integral-crystalline-frames`, `ShimuraVarietiesPartII:SV2.4/newton-admissibility`.

### FiniteFlatGroupsAndIntegralPadicHodgeTheory:R07.6

Corrected integral tensor-display deformation rings R_G with G-split filtration, tensor-compatible very-good trivialization modulo m²+π, normality and the adapted-point criterion. Include KPZ 7.3.1(2)’s τ-topology repair: prove p-adic completeness and logarithmic-tail convergence in the existing coefficient ring. Supply KZ 3.4.5: an ordinary tensor p-divisible group has an adapted lift over a finite extension of breve Q_p preserving the whole J_b(Q_p)-action in the isogeny category. No uniqueness or unramified lifting claim.

**Needed by:** `ShimuraVarietiesPartII:SV2.1/adapted-branch-interface`, `ShimuraVarietiesPartII:SV2.2/nonexceptional-cover`, `ShimuraVarietiesPartII:SV2.2/exceptional-cover`, `ShimuraVarietiesPartII:SV2.5/matched-integral-comparison`, `ShimuraVarietiesPartII:SV2.5/ordinary-very-good`, `ShimuraVarietiesPartII:SV2.5/ordinary-hodge-special-lift`.

### GeometricSatakeAndFusion:GS0:Witt-geometry

Witt-vector affine flag Schubert stratifications, finite admissible indexing and Bruhat closure, Frobenius action/descent on indices, and the very-special dominant-coweight description. Keep mixed-characteristic perfect geometry distinct from the finite-type local model and justify transfer to its reduced strata.

**Needed by:** `ShimuraVarietiesPartII:SV2.1/special-fibre-geometry`, `ShimuraVarietiesPartII:SV2.6/kr-stratification`.

### GeometricSatakeAndFusion:GS0:loop-geometry

Canonical flat local models M_loc(G,{μ}) for the actual odd-p parahoric data, including ramified and non-quasi-tame cases used in KPZ; adjoint/central-isogeny comparison under its exact hypotheses; reduced special fibre with normal Schubert components, the geometrically integral very-special case, and smooth extremal orbit. Supply same-F_q root curves through rational points into higher Schubert strata, including ramified SL2/SU3 rank-one cases (KZ 5.2.3). This is the existing GeometricSatakeLocalModelsPartII continuation, not just split affine Grassmannian geometry.

**Needed by:** `ShimuraVarietiesPartII:SV2.1/de-rham-frame-diagram`, `ShimuraVarietiesPartII:SV2.1/weaker-strict-comparison`, `ShimuraVarietiesPartII:SV2.1/special-fibre-geometry`, `ShimuraVarietiesPartII:SV2.3/abelian-integral-model`, `ShimuraVarietiesPartII:SV2.3/adjoint-local-model-diagram`, `ShimuraVarietiesPartII:SV2.5/integral-datum-maps`, `ShimuraVarietiesPartII:SV2.5/ordinary-very-good`, `ShimuraVarietiesPartII:SV2.6/kr-stratification`, `ShimuraVarietiesPartII:SV2.6/same-field-curves`.

### GlobalShtukasAndFunctionFieldLanglands:GS.6

Companions for semisimple algebraic lisse sheaves on smooth geometrically connected OPEN curves over F_q with all eigenvalues units away from p, allowing finite coefficient extension and constant twists to finite determinant (Chin 4.6 as used in KZ 5.3.5). Preserve the original F_q and rational marked point. GS.6/companions-on-curves currently states only a projective finite-determinant version, so it does not discharge this contract.

**Needed by:** `ShimuraVarietiesPartII:SV2.7/representationwise-independence`.

### HeckeStacksAndLocalShtukas:HS2

Integral canonical Shimura-model uniqueness and datum functoriality in precisely the scope used by KPZ 7.1.8–7.1.9 and KZ 4.3.2: PR24, revised PR26 and DvHKZ yield strict local comparison and canonicity for a lattice-chain stabilizer without assuming the given embedding globally very good or G R-smooth. This modern route uses corrected auxiliary very-good theory; the older P23 proof in KPZ 7.3.2 retains its very-good restriction and is not a substitute. Supply the general connected adjoint local-model torsor reduction of KPZ Corollary 7.2.24; the elementary non-exceptional proof does not establish it. Owner: HeckeStacksAndLocalShtukasIntegralPartII.

**Needed by:** `ShimuraVarietiesPartII:SV2.1/weaker-strict-comparison`, `ShimuraVarietiesPartII:SV2.3/adjoint-local-model-diagram`, `ShimuraVarietiesPartII:SV2.5/integral-datum-maps`.

### MotivesAndAlgebraicCycles:MC.6

Neutral Tannakian tensor-frame reconstruction over the coefficient field: the subcategory generated by a realization has group H⊂G, giving restriction Rep(G)→Rep(H), not an automatic equivalence with Rep(G). Exact faithful functors preserve the specified tensors and scalar extension.

**Needed by:** `ShimuraVarietiesPartII:SV2.0/global-crystalline-realization`.

### PELModuli:M4

Integral Siegel moduli and the universal polarized abelian scheme at neat prime-to-p level, finite étale level transitions, and pro-level DVR good-reduction criterion. Where polarization degree is divisible by p, use the M6 finite-flat polarization stack, not a false étale-kernel or smoothness assertion.

**Needed by:** `ShimuraVarietiesPartII:SV2.0/integral-hodge-data`, `ShimuraVarietiesPartII:SV2.1/pro-dvr-property`, `ShimuraVarietiesPartII:SV2.4/special-reduction-nonempty`, `ShimuraVarietiesPartII:SV2.5/arbitrary-siegel-map`, `ShimuraVarietiesPartII:SV2.5/product-abelian-comparison`.

### ReductiveGroupsPartII:RG2.0

Topological closures, congruence completions and the quotient maps used in integral component star-products; a split reductive subgroup with compact quotient in a split connected centralizer contains a Borel, and a proper affine homogeneous quotient is finite. The latter group theorem is an extension contract, not part of the point-topology scope.

**Needed by:** `ShimuraVarietiesPartII:SV2.3/integral-component-groups`, `ShimuraVarietiesPartII:SV2.4/auxiliary-prime-rank`.

### ReductiveGroupsPartII:RG2.1

Import the existing valued-root and Kottwitz interfaces. Additional contracts: Deligne fundamental Hodge representations for types A and D^H; central fibre-product and centre calculations with matched multipliers; invariant symplectic forms; tensor generation by a faithful representation; the precise Conj′ orthogonal outer action and centralizer-dimension invariance. These unvalued/arithmetic extensions must have their own owner; they are not assertions about current RG2.1.

**Needed by:** `ShimuraVarietiesPartII:SV2.2/strongly-acceptable-triple`, `ShimuraVarietiesPartII:SV2.2/reflex-splitting-cover`, `ShimuraVarietiesPartII:SV2.2/nonexceptional-cover`, `ShimuraVarietiesPartII:SV2.2/exceptional-cover`, `ShimuraVarietiesPartII:SV2.2/general-abelian-cover`, `ShimuraVarietiesPartII:SV2.2/strong-auxiliary-cover`, `ShimuraVarietiesPartII:SV2.4/rosati-reductivity`, `ShimuraVarietiesPartII:SV2.4/all-prime-tate-comparison`, `ShimuraVarietiesPartII:SV2.5/matched-multiplier-datum`, `ShimuraVarietiesPartII:SV2.5/isogeny-group-exact-sequences`, `ShimuraVarietiesPartII:SV2.7/representation-unit-eigenvalues`.

### ReductiveGroupsPartII:RG2.3

Import full-fixer and connected parahoric schemes, Lang surjectivity and its pro-connected version, and split-kernel exactness from current upstream. Additional local-integral contracts: associated parahorics for identified adjoint groups; R-smooth tori and fixer closed immersions; R-smooth central-extension exactness; connected-fixer criteria from torsion-free inertia coinvariants; triviality of finite-field torsors under the connected smooth fibre. Current upstream explicitly excludes the R-smooth extensions; see the Part IV proposal.

**Needed by:** `ShimuraVarietiesPartII:SV2.0/integral-hodge-data`, `ShimuraVarietiesPartII:SV2.1/same-field-henselizations`, `ShimuraVarietiesPartII:SV2.2/strongly-acceptable-triple`, `ShimuraVarietiesPartII:SV2.2/nonexceptional-cover`, `ShimuraVarietiesPartII:SV2.2/exceptional-cover`, `ShimuraVarietiesPartII:SV2.2/general-abelian-cover`, `ShimuraVarietiesPartII:SV2.2/strong-auxiliary-cover`, `ShimuraVarietiesPartII:SV2.3/integral-component-groups`, `ShimuraVarietiesPartII:SV2.3/reflex-units`, `ShimuraVarietiesPartII:SV2.5/matched-integral-comparison`, `ShimuraVarietiesPartII:SV2.6/rational-local-model-lift`.

### ShimuraCompactificationsPartII:C7

Connected-component specialization at very-special normal integral Hodge level as used in MP19 Corollary 4.1.11: local integrality plus the compactification/connectedness input gives geometrically irreducible special fibres of the connected pieces; state the exact base and level hypotheses. The already planned normalized interior is imported separately. This input is not proved by local integrality alone.

**Needed by:** `ShimuraVarietiesPartII:SV2.4/ordinary-density`.

### ShimuraData:D4

Import connected Hodge lifting. Supply its auxiliary Hodge-cover refinement with fundamental type-A/D^H representations, CM scalar field split at every prescribed p-place, and Hodge cocharacters factoring through the matched-multiplier identity component. Global torus approximation comes from RG3.2; this request must not reprove it.

**Needed by:** `ShimuraVarietiesPartII:SV2.2/strongly-acceptable-triple`, `ShimuraVarietiesPartII:SV2.2/reflex-splitting-cover`, `ShimuraVarietiesPartII:SV2.2/nonexceptional-cover`, `ShimuraVarietiesPartII:SV2.2/exceptional-cover`, `ShimuraVarietiesPartII:SV2.5/matched-multiplier-datum`.

### ShimuraVarieties:V4

Toric canonical models with reciprocity and the reduction at the reflex place induced by the fixed p-adic embedding. Combined with the CM good-reduction contract, identify the resulting torus isocrystal.

**Needed by:** `ShimuraVarietiesPartII:SV2.4/special-reduction-nonempty`.

### ShimuraVarieties:V6

Generic connected-component action groups A(G), A(G)° and the star-product construction, their topologies, reciprocity and change-of-datum maps. Supply the generic construction only; SV2.3 defines its integral specialization and corrects conjugated levels.

**Needed by:** `ShimuraVarietiesPartII:SV2.3/integral-component-groups`, `ShimuraVarietiesPartII:SV2.3/reflex-units`, `ShimuraVarietiesPartII:SV2.3/component-galois-extension`, `ShimuraVarietiesPartII:SV2.3/conjugate-level-gluing`.

### ShimuraVarieties:V8

Canonical generic-fibre tower with right adelic action and its finite-level descent and reciprocity compatibility. Integral extension and tensor specializations are owned by SV2.0, not assumed here.

**Needed by:** `ShimuraVarietiesPartII:SV2.0/integral-hodge-data`.

## Route boundaries and ownership proposals

Every routed identifier from the thirteen issue briefs is retained exactly once. This is a boundary and ownership audit of the extractions. Only the five sources and readSections in this packet support the core mathematical design; the other papers are design inputs to the independent continuations, not sources falsely reported as read.

The packet retains all 594 routed identifiers in 13 inventories. Each has exactly one core target, existing owner, supplier contract or independent continuation. This preserves the issue’s full scope without treating unread independent papers as verified core sources.

- **PAPER-KISIN-ZHOU-25**: 56 items; 46 core-specialization, 10 existing-owner.
- **PAPER-KISIN-MADAPUSIPERA-SHIN-22**: 82 items; 36 core-specialization, 3 existing-owner, 25 independent-continuation, 18 supplier-contract.
- **PAPER-KISIN-PAPPAS-ZHOU-26**: 53 items; 37 core-specialization, 3 existing-owner, 13 supplier-contract.
- **PAPER-KISIN-PAPPAS-18**: 84 items; 62 core-specialization, 8 existing-owner, 3 independent-continuation, 11 supplier-contract.
- **PAPER-KISIN-17**: 141 items; 24 core-specialization, 10 existing-owner, 106 independent-continuation, 1 supplier-contract.
- **PAPER-VANHOFTEN-24**: 57 items; 5 core-specialization, 1 existing-owner, 50 independent-continuation, 1 supplier-contract.
- **PAPER-GLEASON-LIM-XU-26**: 10 items; 2 core-specialization, 8 independent-continuation.
- **PAPER-BOXER-PILLONI-26**: 4 items; 4 existing-owner.
- **PAPER-PILLONI-20**: 7 items; 7 existing-owner.
- **PAPER-ANDREATTA-GOREN-HOWARD-ETAL-18**: 37 items; 37 independent-continuation.
- **PAPER-SHANKAR-SHANKAR-TANG-ETAL-22**: 21 items; 21 independent-continuation.
- **PAPER-ICHINO-PRASANNA-23**: 7 items; 7 independent-continuation.
- **PAPER-RICHARD-YAFAEV-25**: 35 items; 35 independent-continuation.

**ShimuraVarietiesPartII, ShimuraVarietiesHondaTatePartII.** Thirteen extraction routes used several titles for one reduction continuation, and also include independent developments. Keep one owner for their shared integral, tensor and component descent inputs. Use ShimuraVarietiesPartII, stages SV2.0–SV2.7, for the proof from canonical towers to KZ 5.1.4. Treat ShimuraVarietiesHondaTatePartII as the old candidate alias, not as another prerequisite or a second integral-model construction. Keep the C7 normalized interior and existing C13/C14 Siegel level models at their current owners.

**ShimuraVarietiesPartII, ShimuraVarietiesHondaTateAndCMPartIII.** General CM lifting and Honda–Tate classification require new global cohomological obstructions and are not needed to prove the geometric common-class theorem. Propose ShimuraVarietiesHondaTateAndCMPartIII: HT3.0 tensor isogeny torsors and all realizations; HT3.1 global special pairs and general CM lifts with their precise hypotheses; HT3.2 rational versus geometric conjugacy, Hasse obstruction and conditional Honda–Tate classification. Import SV2.0, SV2.4, SV2.5 and RG3.0–RG3.4. Keep conjectural statements explicitly conditional. Do not duplicate the generic arithmetic tori or the abelian-variety application in RG3.5.

**ShimuraVarietiesPartII, ShimuraVarietiesModPPointsPartIII.** Gerbs, admissible morphisms, Kottwitz triples, ADLV uniformization and the full Langlands–Rapoport point formula are independent of ordinary lifting and curve comparison. Propose ShimuraVarietiesModPPointsPartIII: MP3.0 arithmetic gerbs/admissible morphisms; MP3.1 tensor quasi-isogeny classes and ADLV maps; MP3.2 isogeny-class uniformization and connected components; MP3.3 EKOR/almost-product geometry; MP3.4 Langlands–Rapoport/Kottwitz point formula with source restrictions retained. Import SV2.0–SV2.4, the existing ADLV component continuation and integral local-shtuka continuation; generic gerbs belong to the arithmetic-gerb supplier. K17, VH and GLX routes go here except their shared integral/tensor inputs.

**ShimuraVarietiesPartII, ShimuraVarietiesNearbyCyclesPartIII.** Nearby cycles, Bernstein central functions and the Kottwitz test-function theorem require sheaf and Hecke theory absent from the common-class proof. Propose ShimuraVarietiesNearbyCyclesPartIII: NC3.0 integral local-model nearby cycles with the exact tame source hypotheses; NC3.1 inertia and semisimple trace; NC3.2 Bernstein/Kottwitz test functions and Shimura comparison. Import SV2.1/SV2.3, local models and the Hecke owner. Route KP’s nearby-cycle items here; do not extend the tame theorem to every KPZ model without a new source.

**ShimuraVarietiesPartII, OrthogonalIntegralModelsAndKugaSatake.** The orthogonal/special-divisor routes include prime 2 and special endomorphism geometry, whereas the present integral comparison assumes p>2. Retain the named OrthogonalIntegralModelsAndKugaSatake candidate: OI.0 orthogonal datum and Clifford realization using current upstream OrthogonalSpinGroups; OI.1 all-prime integral models and Kuga–Satake extension; OI.2 special endomorphisms and special divisors with local equations; OI.3 the total-reflex embedding and the exact intersection/Picard-rank applications. Import odd-prime SV2.0–SV2.3 where applicable. Plan the prime-2 inputs at their proper suppliers. Keep all 58 AGHMP/Shankar-route items assigned; this proposal does not certify their extracted statements.

**ShimuraVarietiesPartII, ShimuraVarietiesPartIIAutomorphicCohomology.** Automorphic-local-system cohomology and its Hodge realizations need cohomological comparison beyond the intrinsic lisse tower here. Keep ShimuraVarietiesPartIIAutomorphicCohomology: AC.0 coefficient systems and Hecke conventions, importing SV2.7 and AutomorphicBundles; AC.1 Betti/étale cohomology and comparison; AC.2 Hodge structures, cycle classes and the IP Jacquet–Langlands use. Reuse existing proper/compact-support cohomology suppliers. All seven IP-route items remain in this direction.

**ShimuraVarietiesPartII, HeckeOrbitsAndAndrePinkZannier.** The RY route is an orbit-closure and unlikely-intersection argument, not a consequence needed for the integral Frobenius theorem. Keep HeckeOrbitsAndAndrePinkZannier: HO.0 generalized Hecke orbits and precise conjectures; HO.1 geometric/arithmetic orbit invariants; HO.2 height/degree/Galois bounds at their existing owners; HO.3 the stated conditional and unconditional André–Pink–Zannier results. Import ShimuraVarieties and ShimuraData. All 35 routed items are retained as design inputs, with no claim that their conjectures are proved.

**ShimuraVarietiesPartII, ReductiveGroupsPartII, ReductiveGroupsPartIII, ReductiveGroupsPartIV.** Current upstream Part II explicitly excludes R-smoothness, arbitrary-adjoint parahoric association and R-smooth central-extension exactness. Part III already owns arithmetic conjugacy, so naming another Part III would conflict. Propose ReductiveGroupsPartIV: RG4.0 associated parahorics for common adjoint data; RG4.1 R-smooth torus and Néron-closure criteria; RG4.2 fixer immersions and R-smooth exact central extensions; RG4.3 the centre/coinvariant consequences needed for auxiliary covers. Route the extension portions of the RG2.1/RG2.3 contracts there after maintainer allocation. Import current Part II and RG3 arithmetic tori; never edit or replan current upstream targets. The generic fundamental Hodge-representation portions belong to ShimuraData, not valued-root theory.

**ShimuraVarietiesPartII, FiniteFlatGroupsWithTensorsPartII, GeometricSatakeLocalModelsPartII, HeckeStacksAndLocalShtukasIntegralPartII.** The integral model proof needs more than generic displays, affine Grassmannians and local shtuka definitions. Retain these three extraction candidates as separate suppliers: tensor-display deformation and ordinary J_b-action lifting; canonical flat local models and same-field root curves; integral canonical-model uniqueness and connected adjoint torsor reduction. The exact contracts are the R07.6, GS0 and HS2 requests. They precede SV2.1/SV2.2/SV2.6. No generic theory is reconstructed inside this roadmap.

**ShimuraVarietiesPartII, CrystallineCohomologyIntegralFamiliesPartII, AlgebraicModuliForArithmeticGeometryFiniteFieldCurvesPartII.** Two actual uses exceed the stated supplier stages: convergent tensors on singular/nonproper families, and rational-point-preserving finite-field curve construction. Create the named Part II extensions with stages for alteration/log-Dieudonné descent and absolute-Hodge horizontal transport, respectively same-field smooth stack presentations and finite-field Bertini with local/open conditions. Contracts CR.7, R09.4 and R09.1 state exactly what SV2.0/SV2.6 require. Keep requests routed to existing owner stages until these continuations are allocated.

**ShimuraVarietiesPartII, ArithmeticGaloisRepresentationsFrobeniusComparisonsPartII, GlobalShtukasPartIICrystallineCompanions.** The existing arithmetic Noot-specialization node is a characteristic-zero statement, and the existing curve-companion node is projective. Neither supplies the precise finite-field comparison used here. Allocate the coarser Conj′ Frobenius theorem and its neat/power refinement to ArithmeticGaloisRepresentationsFrobeniusComparisonsPartII, independently of SV2.7. Extend the already proposed GlobalShtukasPartIICrystallineCompanions with the open-curve l-adic companion and constant-twist interface in the GS.6 request. Reuse Lafforgue/Chin inputs there; this is not a new copy of global Langlands or the existing Ramanujan/Arthur Part II. Keep these exact requests at R01.6 and GS.6 until the continuations receive stages.

## Corrections and source versions

KZ findings refer only to arXiv v2; HT findings refer only to the dated author copy. Published KP and KPZ were read, including the published correction section. No claim is made about wording of the uncollated Annals or Duke versions. Independent review should collate the version-scoped findings before attributing them to a published text.

**ShimuraVarietiesPartII/E1 — misprint; KZ, arXiv v2 Proposition 4.2.3(5), p.34, compared with Lemma 4.2.4 and its use on p.41.** The auxiliary cover is said to have torsion inertia coinvariants X_*(G_ab)_I. The intended assertion is torsion-free inertia coinvariants. Check: The proof excludes the wild-index factor to invoke freeness, and the immediately following connected-fixer criterion requires torsion-free coinvariants. KPZ 7.2.19 supplies the free condition. Correction status: The proof and subsequent uses in the same preprint have the intended torsion-free condition; Annals version not collated.

**ShimuraVarietiesPartII/E2 — error; KZ, arXiv v2 §5.1.3, p.47.** The F-points of a reductive conjugacy quotient are identified with semisimple H(F)-conjugacy classes for an arbitrary characteristic-zero field F. Geometric points classify semisimple geometric conjugacy classes. Rational quotient points encode Galois-stable geometric classes; they need not classify rational conjugacy or have an F-rational representative. Check: In SL₂(R), rotations by θ and −θ with sin θ nonzero have the same characteristic polynomial and geometric semisimple class, but no determinant-one real conjugator. A conjugator reverses the complex structure and has negative determinant. Correction status: Also noted by the existing ReductiveGroupsPartIII plan; no separate published correction identified. Finding scoped to arXiv v2, not to uncollated Annals text.

**ShimuraVarietiesPartII/E3 — error; HT, Author PDF Corollary 1.3.13 proof, p.19.** The tensor category generated by the single isocrystal is identified with representations of the group preserving just the prescribed Hodge tensors. Use its actual Tannaka group H and its inclusion into G. Restriction of G-representations followed by the generated-category equivalence gives the required exact faithful functor. No equality H=G is required. Check: Extra horizontal/Frobenius-invariant tensors may shrink H. For a trivial rank-two isocrystal with no imposed extra tensors, its generated category has trivial group while the unconstrained tensor stabilizer is GL₂. The same formal issue persists for families with proper monodromy. Correction status: No separate correction identified on the author pages. Finding scoped to the dated author copy; the functor conclusion is retained with corrected reconstruction.

**ShimuraVarietiesPartII/E4 — error; KP, Published KP local-model diagram, as corrected in published KPZ §7.3.1(1), p.85.** An action map used in the local-model smoothness argument is described as a torsor. It is a smooth group-action map. The frame projection is the torsor; the filtration map is smooth of the stated relative dimension. Check: For the natural action on tensor frames, q_loc transports the filtration and is not invariant, whereas the frame projection is invariant. The action map is smooth by composing (g,m)↦(g,gm) with projection; this is exactly the property needed. Correction status: Published KPZ §7.3.1(1), p.85.

**ShimuraVarietiesPartII/E5 — gap; KP, Published KP Lemma 3.1.17 argument, corrected in published KPZ §7.3.1(2), pp.85–86.** The logarithm argument treats the τ-topologized display coefficient ring as complete for the limiting calculation. Prove that the existing ring W-hat(A)[1/p] is already complete and separated for its p-adic topology. Use Zink logarithmic coordinates to prove the shifted tails tend to zero in that topology. Check: Convergence in a noncomplete τ-topology does not justify the limit. The correction proves p-adic completeness and uses divisibility plus the logarithmic tail shift to establish the required convergence. Correction status: Published KPZ §7.3.1(2), pp.85–86.

**ShimuraVarietiesPartII/E6 — error; KP, Published KP Corollary 4.6.15 and Corollary 4.6.18, corrected in published KPZ §7.3.1(3), pp.86–87.** The gluing formula uses the same connected p-level component for every coset representative j. The component associated with j has p-level jK_p°j^(-1). Glue the corresponding conjugated-level connected pieces with the transported actions. Check: Changing the p-component of a double-coset representative conjugates its stabilizer. The original identification only works uniformly if those representatives normalize the level. Correction status: Published KPZ §7.3.1(3), pp.86–87.

**ShimuraVarietiesPartII/E7 — gap; KPZ, Published KPZ §7.3.2, p.87, correcting the cited Pappas embedding-independence proof.** The earlier embedding-independence argument was used without the very-good tensor-compatible embedding restriction. Use the theorem only for very-good embeddings in the stated local-model scope, unless a stronger independent canonical-model theorem is supplied. Check: The integral tensor/display comparison needs the first-order tensor-compatible trivialization; a closed good lattice embedding alone does not provide it. Correction status: The restriction and repaired use are stated explicitly in published KPZ §7.3.2.

**ShimuraVarietiesPartII/E8 — gap; KP, Published KP local-model theorem and earlier KZ versions, as corrected by published KPZ Remark 7.1.4(1), p.73.** The local-model argument was applied to good lattice embeddings without requiring the tensor-compatible very-good condition. For that display-based local-model diagram require a very-good embedding, including the first-order tensor trivialization. Keep KPZ 7.1.8’s separate modern shtuka proof for the broader strict-henselian result. Check: The display comparison needs its canonical first-order identification to fix the defining tensors. A closed Grassmannian embedding alone does not establish that equality. Correction status: Published KPZ Remark 7.1.4(1), p.73; KZ arXiv v2 §3.2.5 includes the corrected hypothesis.

**ShimuraVarietiesPartII/E9 — error; HT, Author PDF §1.3.15 and Corollary 1.3.16, p.20; compare KZ Definition 2.2.4 and Remark 2.2.5, p.10.** Ordinary-class existence is asserted for the inner-form setup without an additional existence hypothesis. Define the ordinary locus only after specifying an actual class with Newton point equal to the averaged inverse Hodge cocharacter. Quasi-splitness guarantees existence; general inner forms need not have such a class. Keep the separate local-integrality hypothesis for density. Check: For the quaternion division group, transfer to GL₂ over the unramified completion shifts both slopes by one half. Putative ordinary slopes (0,−1) would yield slopes (1/2,−1/2), each once, contradicting the denominator-divisibility constraint for isocrystals. This diagnoses a missing existence premise, not a counterexample to density under local integrality. Correction status: Previously confirmed at BunGAndNewtonStrata/E06, inherited from PAPER-KISIN-MADAPUSIPERA-SHIN-22/E8. The author-copy assertion and KZ’s explicit existence caveat were re-read for this design; the Duke edition is not collated.

## Suggested Lean scope

The suggested file follows the 2026-10-12 shape: light definitions with real bodies over pinned carriers, milestone statements that can actually be stated there, and a few concrete tests. It is not an exhaustive declaration checklist. Its matched-multiplier calculation is the linear-algebra specialization of SV2.5/matched-multiplier-datum. It tests the common multiplier, including the unequal-multiplier counterexample. It does not substitute an assumption record or an arbitrary predicate for a Shimura datum.

Every geometric target SV2.0–SV2.7 remains a README target: integral Shimura stacks/towers, global tensor realizations, very-good embeddings, adapted deformations, local models, auxiliary covers, component descent, tensor quasi-isogeny groups, Newton/KR strata, ordinary lifts, same-field curves and group-valued Frobenius quotient points all need carriers not present at the pins. Their full specifications, APIs and checks above are definitive. The pinned pointwise isocrystal, abelian variety and integral endomorphism ring do not make those geometric carriers available. No heavy target is replaced by an uninterpreted proposition in the suggested file.

The small pinned signatures are a check of the direct-sum multiplier condition only. The global common-class theorem is stated in full above, and intentionally has no artificial Lean signature over invented carriers.

The light predicate `TauCetiRoadmap.ShimuraVarietiesPartII.HasMultiplier ψ g c` means ∀x,y, ψ(gx,gy)=cψ(x,y). It asserts scaling only; nondegeneracy, alternation and invertibility are separate geometric hypotheses. Its API signatures are `HasMultiplier.identity` (identity scales by 1), `HasMultiplier.comp` (multipliers multiply under composition), `HasMultiplier.unique` (a nonzero form over a domain has at most one specified multiplier), and `block_hasMultiplier_iff` (the block sum scales by c exactly when both blocks do, assuming the stated zero conditions). Its three examples are `identityPlane`, `diagonalTwo`, and `unequalBlocks`: the standard Q-plane has identity multiplier 1, diag(2,1) has multiplier 2, and block diag(diag(2,1),diag(3,1)) has no common multiplier. These checks use existing product/rational carriers and are the pinned specialization of the matched-multiplier target, not an additional general-theory roadmap.

## Sources actually read

- **KZ: Mark Kisin; Rong Zhou, Independence of ℓ for Frobenius conjugacy classes attached to abelian varieties.** arXiv:2103.09945v2; printed preprint pagination, 63 pages; not collated with Annals 202 (2025). [Public text](https://arxiv.org/pdf/2103.09945v2). Read 2026-10-19: Introduction pp.1–6; §§2.1–2.4.3 pp.6–13; §§3–5 pp.18–55, including all proofs of the integral, ordinary-lifting and geometric common-class results. SHA-256 `62d26eb931f271404c333c4b9a929e85239222788834cf16dcec1dff230c34c8`.
- **HT: Mark Kisin; Keerthi Madapusi Pera; Sug Woo Shin, Honda–Tate theory for Shimura varieties.** Author PDF dated 27 January 2021, 41 pages; published Duke Math. J. 171 (2022); author pagination. [Public text](https://math.berkeley.edu/~swshin/HT.pdf). Read 2026-10-19: Introduction pp.1–4; §1.3.1–1.3.18 pp.15–20; §2.1 pp.21–25; Appendix A pp.37–39. SHA-256 `fd22990bc3eff8a726375cf8f0c9015828c39f1c32b0717347a9ef23ce9b52db`.
- **KPZ: Mark Kisin; Georgios Pappas; Rong Zhou, Integral models of Shimura varieties with parahoric level structure, II.** Published Forum Math. Pi 14 (2026), e14; 89-page publisher PDF. [Public text](https://www.cambridge.org/core/services/aop-cambridge-core/content/view/6C2640CC5856BDF975AF97EE30CA7906/S2050508626100316a.pdf/div-class-title-integral-models-of-shimura-varieties-with-parahoric-level-structure-ii-div.pdf). Read 2026-10-19: §§7.1–7.3 pp.72–87, including every published correction in §7.3. SHA-256 `d0438498fbe4501e6d9c0cc7cf3ea9fc02ba5e11d326f2d77dd42715658a198b`.
- **KP: Mark Kisin; Georgios Pappas, Integral models of Shimura varieties with parahoric level structure.** Published Publ. Math. IHÉS 128 (2018), 121–218; journal pagination. [Public text](https://www.numdam.org/item/10.1007/s10240-018-0100-0.pdf). Read 2026-10-19: §4.2.6–4.2.12 pp.186–188, checked against the action-map correction; §§4.3–4.6.20 pp.189–205, including the integral component actions and abelian-type descent. SHA-256 `e2b4a0763f216be82da950f4c0dd2800adea8a0d911b12bfacf2b7e493b4618b`.
- **K17: Mark Kisin, Mod p points on Shimura varieties of abelian type.** Author manuscript dated 27 August 2016; published J. Amer. Math. Soc. 30 (2017); internal pagination. [Public text](https://people.math.harvard.edu/~kisin/dvifiles/lr.pdf?download=1). Read 2026-10-19: §§2.1.1–2.1.7 pp.28–31, tensor isogeny groups and the auxiliary-prime comparison. SHA-256 `d3c19cddc9e8b073428de559a7215aae4f793490227b6c71d87477ccdb5d994a`.

The local display/model theorems, semistable descent, finite-field Bertini and open-curve companions are exact supplier contracts. Their references inside the five read sources motivate those contracts; the underlying technical papers have not all been independently read in this design run. The independent orthogonal, cohomological and orbit papers were triaged from the issue’s extraction records only. No private reference-library source was used.
