# Patched modules and density in local deformation rings

This roadmap proves that a patched automorphic module detects the entire unrestricted local deformation ring. From that faithful local action it obtains three density theorems: crystalline lifts with regular weights varying; potentially crystabelline lifts with one regular weight fixed; and potentially crystalline supercuspidal lifts with that same fixed weight and an unramified degree-d inducing extension. The ambient space is the scheme spectrum of a framed local deformation ring. The results apply to finite extensions of Q_p and arbitrary rank d under p∤2d.

The starting point is the parent **CompletedCohomologyAndLocalGlobalCompatibility**, not an unconstructed higher-rank analogue of its patching layer. Its current R31.5 packet already owns the general GL_d(F) construction of Caraiani–Emerton–Gee–Geraghty–Paškūnas–Shin (CEGGPS), its type-specialised modules, fixed-central-character projectivity and the support theorem of Emerton–Paškūnas (EP). Those objects are imported once. This continuation supplies the arithmetic component detection and the application to density in Böckle–Iyengar–Paškūnas (BIP), Theorems 6.8 and 6.1, pp. 46–50. It also resolves the scope of the three variants in BIP Remark 6.2.

The proof has two distinct uses of algebraic representations. First, fixing a crystalline determinant turns the centre into an algebraic character. A nonzero projective in that fixed-centre category has an algebraic test. This provides a point on each local determinant-torsion component and proves local faithfulness. Second, a capturing family of algebraic or locally algebraic tests detects a scalar that vanishes at all arithmetic points in the desired set. Reduced, O-flat faithful test quotients turn vanishing at points into zero action. These two arguments must remain distinct: a single nonzero test does not capture the module, and a capturing family alone does not cover all local components without faithfulness.

## Conventions and imported interfaces

Fix F/Q_p finite, d≥1, and a continuous residual representation ρ̄:G_F→GL_d(k). The finite coefficient field L contains the images of embeddings F→Q̄_p and the roots needed for the representations under discussion. Enlarge it finitely when necessary so that residual Jordan–Hölder factors are absolutely irreducible. Write O for its integers, ϖ for its uniformizer, and k for its residue field. R means R□_{ρ̄}, X□ means Spec R, G means GL_d(F), K means GL_d(O_F), and Z means the scalar centre. All assertions using patching retain p∤2d. The character-root theorem explicitly has no such restriction.

An arithmetic point of X□ means the image of a closed point of Spec R[1/p], equivalently a continuous O-algebra specialisation into the integers of a finite extension of L, viewed in its fraction field. These are generally not closed points of Spec R itself. Density is taken in Spec R, including its special fibre. It is not rigid Zariski density. In particular, fixed-weight principal-series and supercuspidal points are not claimed dense in the rigid generic fibre (BIP Remark 6.10, p. 50).

Use HT(ε)=−1 and order the labelled weights decreasingly. For k_{σ,1}>⋯>k_{σ,d}, put a_{σ,i}=k_{σ,i}−(d−i). CEGGPS associates the algebraic representation πalg(k)=L_a^d⊗L, of highest weight −a_{σ,d+1−i}; the dual is essential. Their local Langlands normalization is r_p(π)=rec_p(π⊗|det|^{(1−d)/2}), independent of the auxiliary complex isomorphism, and their Artin map sends a uniformizer to geometric Frobenius (§1.8, pp. 12–15). Tau Ceti ClassFieldTheory Layer 7 uses arithmetic reciprocity and provides the geometric map by inversion. The R06.2 crystalline-character interface is transported through that inversion. DPS uses the opposite Hodge–Tate sign in Remark 5.14, pp. 37–38, so its weights are converted before comparing highest weights.

The notation A^d denotes the Schikhof dual Hom_cont,O(A,O) when its compact topology is relevant; V* is the L-linear contragredient of a finite-dimensional representation. Π(M)=Hom_cont,O(M,L) has its supremum norm and contragredient action. A centre acting by δ^{-1} on M acts by δ on Π(M). Compact torsion-free biduality is imported from `CompletedCohomologyPartII:CC.3/qualified-biduality`; the torsion-free hypothesis is never suppressed. ST Corollary 2.2, author pp. 10–11, identifies Π(O[[H]]) with continuous functions on H. The finite-Iwasawa-module/admissible-Banach anti-equivalence is imported from `LocallyAnalyticDistributionsPartII:ND.6/banach-iwasawa-duality`; it is not applied to the whole M∞ as though that module were finite over O[[K]].

The principal imported nodes are:

| Supplier | Exact interface used |
| --- | --- |
| `CompletedCohomologyAndLocalGlobalCompatibility:R31.5/ceggps-patched-module` | R∞, S∞, M∞, commuting G-action, finite projectivity over S∞[[K]], finite generation over R∞[[K]], and nonzero fixed-centre projectivity after determinant specialisation. |
| `CompletedCohomologyAndLocalGlobalCompatibility:R31.5/type-specialised-patched-modules` | Finite locally algebraic tests, reduced O-flat faithful quotients, crystalline support on components, Hecke interpolation and local–global compatibility. |
| `CompletedCohomologyAndLocalGlobalCompatibility:R31.5/patched-support-is-a-union-of-components` | V(Ann_{R∞}M∞) is a union of components; the support convention is necessary because M∞ is not finite over R∞. |
| `PadicHodgeTheory:R06.2/crystalline-character-lift-interface` | A crystalline determinant lifting detρ̄ with any specified compatible restriction to μ_{p∞}(F), including the corrected residual unramified factor. |
| `LocalGaloisDeformationRings:R08.3/pst-deformation-ring` and `pcris-generic-smooth` | Potentially crystalline N=0 quotients with prescribed Hodge/inertial data, reducedness, O-flatness and crystalline generic smoothness. |
| `DeformationAndDerivedPatchingAlgebra:R03.1/completed-tensor-products` and `R03.4/completed-tensor-domains-and-components` | Complete local tensor products and geometrically integral component pairs; the additional splitting/reducedness interface is requested explicitly. |
| `TriangulineVarietyAndItsLocalModel:G/refined-crystalline-space` | Eigenvalue orderings, Hodge flags and noncritical refinements; benign generic-position refinements are requested. |

Local class field theory, finite-dimensional rational group representations, smooth induction and local Langlands retain their existing owners. In particular LieHighestWeight alone does not provide rational GL_d representations over L, and SR.5 integral Whittaker theory does not supply crystalline or simple-stratum types. The precise additional statements needed from the owners appear in the dependency boundaries below.

The mathematical plan has six layers. Each item below gives its packet slug, exact target, proof or construction, source locators and checks. All items have implementation status **unchecked**.

## PD.0. Arithmetic points and patching inputs

Define the arithmetic point sets Σcris, Σprnc_k and Σspcd_k in Spec R□, with labelled regular Hodge–Tate weights, finite residue extensions and the CEGGPS dual highest-weight convention. Import the parent general GL_d(F) patched module, its central projectivity, specialisations and EP support; use Emerton–Gee Theorem 1.2.2 as the source-bound lift-existence input that removes the extra potential-diagonalizability hypothesis. Keep p∤2d for patching.

### Potentially semistable point sets

Packet target: `PD.0/local-point-sets` (definition).

Let F/Q_p be finite, d≥1, L/Q_p a sufficiently large finite coefficient field with integers O and residue k, and ρ̄:G_F→GL_d(k) continuous, with absolutely irreducible Jordan–Hölder factors after the allowed coefficient enlargement. Put R=R□_{ρ̄} and X=Spec R. Points mean kernels of O-algebra maps R→L′ for finite L′/L, equivalently closed points of Spec R[1/p], mapped into X. Label Hodge–Tate weights decreasingly, k_{σ,1}>⋯>k_{σ,d}; use HT(ε)=−1. Σcris consists of crystalline points of any regular labelled weight. Σ_k consists of potentially semistable points of the fixed regular weight k. Σprnc_k is its potentially crystabelline subset (crystalline after a finite abelian extension). Σspcd_k consists of those x∈Σ_k with N=0 and WD(ρ_x) irreducible, induced from a character of the Weil group of the unramified degree-d extension. Local Langlands uses CEGGPS r_p(π)=rec_p(π⊗|det|^{(1−d)/2}), with geometric Artin reciprocity. The algebraic test representation is πalg(ρ)=L_a^d⊗L for a_{σ,i}=k_{σ,i}−(d−i); thus its highest weight is −a_{σ,d+1−i}.

**Argument.** Use the local lifting-ring point functor, then define the subsets by the stated p-adic Hodge and Weil–Deligne conditions. Read weights through CEGGPS §1.8: the lattice L_a is dualised in πalg. Compare DPS Remark 5.14 only after reversing its HT(ε)=+1 convention. Factor out embeddings of residue fields: changing a field of definition preserves the underlying prime and the predicates.

**API.**

- **LocalPoint.fieldExtension** (functoriality): A finite coefficient extension carries each of the three sets to the corresponding base-changed set and preserves its point predicate.
- **LocalPoint.crystabelline_weilDeligne** (compatibility): For x∈Σprnc_k, the Frobenius-semisimplified Weil–Deligne representation has N=0 and is a direct sum of characters of W_F. Under the normalized local Langlands correspondence its smooth representation has principal-series cuspidal support; the full induced principal series need not be irreducible.
- **LocalPoint.unramifiedInduction_supercuspidal** (compatibility): An irreducible induced Weil representation in Σspcd_k has N=0 and corresponds to a supercuspidal representation.
- **LocalPoint.weight_to_algebraic** (compatibility): The ordered weights k correspond to the dual of L_a, with a_{σ,i}=k_{σ,i}−(d−i).
- **LocalPoint.prime_in_genericFibre** (projection): Every arithmetic point avoids p and has residue field finite over L.

**Definition tests.**

- **LocalPoint.rankOne** (computation): For d=1, regularity is vacuous; the unramified degree-one extension is F itself, so Σspcd_k=Σprnc_k=Σ_k.
- **LocalPoint.steinberg** (non-example): A semistable noncrystalline two-dimensional representation with N≠0 is in Σ_k for its regular weights but is in neither Σprnc_k nor Σspcd_k.
- **LocalPoint.weightZeroGL2** (compatibility): For d=2 and weights (1,0) at each embedding, the test algebraic representation has highest weight (0,0).
- **LocalPoint.coefficients** (characterisation): Two maps into finite extensions differing by a coefficient-field embedding define the same point and the same membership predicates.

**Uses.** BIP Theorem 6.1, p. 46: Supplies the three density targets. PD.4: Separates fixed-weight families from varying crystalline weights.

**Checks.** For d=2 and weights (1,0), a=(0,0) and πalg is trivial. The fixed-weight density conclusion is made in Spec R; it is not a claim about the rigid generic fibre.

**Sources.** BIP, §6, p. 46, definitions preceding Theorem 6.1; CEGGPS, §1.8, pp. 12–15; DPS, Remark 5.14, pp. 37–38.

**Direct inputs.** `LocalGaloisDeformationRings:R08.1/local-lifting-ring`, `PadicHodgeTheory:R06.2/rank-one-de-rham-crystalline-classification`, `EndoscopicTransferAndUnitaryTraceComparison:ET.6/full-wd-correspondence`, `tauceti:TauCetiRoadmap/ClassFieldTheory#layer-7-the-absolute-local-artin-map-its-normalizations-and-conductors`, `tauceti:TauCetiRoadmap/RepresentationTheory/ClassicalGroups#layer-3-maximal-torus-weights-and-the-highest-weight-classification`.

### Potentially diagonalizable lift input

Packet target: `PD.0/unconditional-patching-input` (application).

For every ρ̄ in the standing setup, the source-bound Emerton–Gee existence theorem supplies, after a finite extension of coefficients, a potentially crystalline, regular, potentially diagonalizable lift. Consequently the imported CEGGPS construction and its R31.5 properties apply without an additional lift-existence hypothesis when p∤2d. This is an application of an external theorem, not a plan of the Emerton–Gee stack or its proof.

**Argument.** Take EG Theorem 1.2.2 in exactly the potentially diagonalizable form stated there and compare Definition 6.4.2 and Theorem 6.4.4. Supply its finite coefficient witness to the potential-diagonalizability parameter of the parent patched-module node. The adequate CM globalisation and Taylor–Wiles construction remain imported, including the parent supplier boundaries. Use faithful flatness of O′/O to descend a zero annihilator and Zariski density proved after enlargement.

**Checks.** Semisimple ρ̄ also has the elementary induced-character construction of CEGGPS Lemma 2.2. No theorem here removes p∤2d from the patching argument.

**Sources.** EG, Theorem 1.2.2, p. 3; Definition 6.4.2 and Theorem 6.4.4, pp. 168–169; BIP, §6, p. 46, paragraph before Lemma 6.3.

**Direct inputs.** `CompletedCohomologyAndLocalGlobalCompatibilityPartII:PD.0/local-point-sets`, `PotentialAutomorphyInfrastructurePartII:PL.1`, `CompletedCohomologyAndLocalGlobalCompatibility:R31.5/ceggps-patched-module`.

**Layer acceptance.** Discharge the finite-coefficient algebraic interface and the inherited parent globalisation leaves; retain Emerton–Gee as the authorized source-bound input. All targets are planned; the layer is not declared closed.

## PD.1. Components and central characters

Compute R∞≅R□⊗̂_O A and the minimal-prime pairs (χ,𝔭) after geometric splitting of the auxiliary factors. The local reducedness and determinant-torsion components are requested from their owning local-ring extension. Prove d-th roots for characters trivial on G_F^ab torsion, without a prime restriction. Derive algebraicity of the fixed-determinant central character from the imported crystalline-character classification, with geometric/arithmetic Artin inversion explicit.

### Patched deformation components

Packet target: `PD.1/patched-components` (theorem).

For the imported CEGGPS module and ring, R∞≅R□_{ρ̄}⊗̂_O A as R□_{ρ̄}-algebras, with A complete local noetherian, O-flat, reduced and equidimensional. Hence R∞ is reduced, O-flat and flat over R□_{ρ̄}. After finite coefficient enlargement making each A/𝔭 geometrically integral, its minimal primes are indexed bijectively by (χ,𝔭), where χ:μ_{p∞}(F)→O× and 𝔭∈Min(A). The associated component ring is R□,χ_{ρ̄}⊗̂_O A/𝔭; distinct pairs are distinct and contraction to R□_{ρ̄} is its χ-component prime. Here R□,χ fixes the determinant on μ_{p∞}(F), not the whole determinant.

**Argument.** Separate the selected p-place factor from the auxiliary local factors in the parent construction; absorb formally smooth variables in A. Apply the requested completed-tensor reducedness, flatness and finite-splitting statements to auxiliary Kisin rings. Import the BIP determinant-torsion component theorem from the local-ring owner. Geometric integrality identifies exactly the pairs of minimal primes under completed tensor product.

**Checks.** When A is a domain there is one patched component over each χ; multiple auxiliary components are retained when A is reducible. Fixing χ imposes no choice of unramified determinant value.

**Sources.** BIP, Lemma 6.3, p. 47; Corollaries 4.19, 4.21–4.22 as supplier inputs.

**Direct inputs.** `CompletedCohomologyAndLocalGlobalCompatibilityPartII:PD.0/unconditional-patching-input`, `CompletedCohomologyAndLocalGlobalCompatibility:R31.5/ceggps-patched-module`, `LocalGaloisDeformationRings:R08.1`, `LocalGaloisDeformationRings:R08.3/pst-deformation-ring`, `DeformationAndDerivedPatchingAlgebra:R03.1/completed-tensor-products`, `DeformationAndDerivedPatchingAlgebra:R03.4/completed-tensor-domains-and-components`.

### Roots of torsion-free characters

Packet target: `PD.1/torsion-free-character-root` (theorem).

If ψ:G_F→O× is continuous and trivial on the torsion subgroup of G_F^ab, then for every integer d≥1 there is, after a finite extension L′/L, a continuous η:G_F→O_{L′}× with η^d=ψ. No assumption p∤2d is used in this lemma.

**Argument.** Use the torsion-free quotient G_F^ab/tors≅Ẑ×Z_p^{[F:Q_p]}. Split off an unramified Teichmüller character whose d-th power matches the residue on the Ẑ generator. The remaining character factors through Z_p^{[F:Q_p]+1} with principal-unit values. Choose finitely many d-th roots 1+y_i after one finite coefficient extension, and use the convergent binomial powers (1+y_i)^x for x∈Z_p. Multiply by the Teichmüller root and inflate. The torsion hypothesis is what makes the quotient construction possible.

**Checks.** d=1 gives η=ψ. The identity character on a finite torsion subgroup need not admit a compatible d-th root; the quotient hypothesis cannot be dropped.

**Sources.** BIP, Lemma 6.4, p. 47.

**Direct inputs.** `tauceti:TauCetiRoadmap/ClassFieldTheory#layer-7-the-absolute-local-artin-map-its-normalizations-and-conductors`, `LocalGaloisDeformationRings:R08.1/rank-one-ring`.

### Algebraic central character

Packet target: `PD.1/algebraic-central-character` (comparison).

Let ψ:G_F→O× be a crystalline lift of detρ̄ and xψ:R_{detρ̄}→O. On Mψ=M∞⊗̂_{R_{detρ̄},xψ}O, the centre acts by δ^{-1}, where δ=(ε^{d(d−1)/2}ψ)∘Art_F for geometric Art_F. The parent supplies that Mψ is nonzero projective in the compact fixed-central-character category. The restriction δ|_{Z∩K}, identified on O_F×, is the evaluation of an algebraic character θ of (Res_{F/Q_p}G_m)_L. The sign of θ is obtained by converting the arithmetic reciprocity convention of R06.2 to geometric reciprocity.

**Argument.** Use parent central projectivity, CEGGPS §4.22 and Corollary 4.26; do not reconstruct the fixed-centre module. The product ε^{d(d−1)/2}ψ is crystalline. Apply the rank-one crystalline classification to its restriction through the geometric Artin map, obtained by inversion from the supplied arithmetic map. The algebraic exponents determine θ. Keep the inverse on Mψ and δ on its contragredient Banach dual.

**Checks.** For d=1 and ψ=1, δ=1; both module and Banach central characters are trivial. Contragredient duality changes δ^{-1} to δ.

**Sources.** BIP, Lemma 6.6, p. 48; CEGGPS, §4.22 and Corollary 4.26, pp. 67–70.

**Direct inputs.** `CompletedCohomologyAndLocalGlobalCompatibility:R31.5/ceggps-patched-module`, `PadicHodgeTheory:R06.2/crystalline-character-lift-interface`, `PadicHodgeTheory:R06.2/rank-one-de-rham-crystalline-classification`, `tauceti:TauCetiRoadmap/ClassFieldTheory#layer-7-the-absolute-local-artin-map-its-normalizations-and-conductors`.

**Layer acceptance.** Supply local component/reducedness and completed-tensor splitting refinements through their owners. All targets are planned; the layer is not declared closed.

## PD.2. Capture and algebraic testing

Define capture by continuous equivariant testing kernels and extend the parent testing module to finite-dimensional continuous representations of compact open H⊆K. Give its finite-generation, lattice-independence, dual-Hom and induction API. Prove algebraic capture, nonzero tensor stability, and capture by the imported principal-series and minimal-stratum families. State DPS fixed-centre evaluation density with its Banach analytic-vector bridge and prove detection of nonzero fixed-centre projectives by irreducible algebraic representations.

### Capture

Packet target: `PD.2/capture` (definition).

For a compact group H with an open pro-p subgroup, compact linear-topological O[[H]]-module M, and finite-dimensional continuous L-representations (V_i) of H, the family captures M when the intersection of the kernels of all continuous O[[H]]-linear maps M→V_i* is zero. The dual V_i* is the L-linear contragredient, restricted to O; no finite-generation assumption on M is part of this definition.

**Argument.** Define the closed common kernel using continuous equivariant maps, and compare with the smallest quotient preserving all Hom spaces. Schikhof duality on O-torsion-free modules identifies capture with density of the evaluation map into Π(M). Any O-torsion lies in every kernel. Products are captured exactly when their factors are, and capture of O[[H]] is equivalent to capture of every compact projective, using products of indecomposable projectives.

**API.**

- **Capture.quotient_iff** (universal-property): Capture is equivalent to saying that any quotient preserving all continuous Hom(M,V_i*) is an isomorphism.
- **Capture.evaluation_dense** (characterisation): For O-torsion-free M, capture is equivalent to density of ⊕_i Hom_H(V_i,Π(M))⊗V_i→Π(M).
- **Capture.torsionFree** (structure): A captured M is O-torsion free.
- **Capture.product_iff** (compatibility): The family captures ∏_j M_j if and only if it captures each M_j.
- **Capture.projective_iff_regular** (characterisation): Capture of O[[H]], of every indecomposable projective, and of every projective are equivalent.
- **Capture.endomorphism_zero** (relation): A continuous O[[H]]-endomorphism killed by every testing map is zero.
- **Capture.coefficientExtension** (functoriality): Finite coefficient extension preserves the common kernel after flat base change and permits families individually defined over finite extensions.

**Definition tests.**

- **Capture.trivialGroup** (computation): For H={1}, the trivial representation L captures M=O, since the inclusion O→L has zero kernel.
- **Capture.emptyFamily** (degenerate): The empty family captures M exactly when M=0; its common kernel is M.
- **Capture.torsionInvisible** (non-example): For M=O/ϖ≠0 all maps to every V_i* vanish, so even the family of all characteristic-zero representations fails to capture M.
- **Capture.quotientCharacter** (non-example): For a cyclic group H of order prime to p and a nontrivial O-valued character χ, the trivial representation alone does not capture the rank-one compact module O(χ).

**Uses.** EP Proposition 2.11, p. 345: Converts testing annihilators to density. BIP proof of Theorem 6.1, pp. 49–50: Algebraic and smooth-type families detect scalar actions on M∞.

**Checks.** Continuous maps, rather than arbitrary algebraic maps, are required. The characterization must apply to projectives that are not finite over O[[H]].

**Sources.** EP, Definition 2.1 and Lemmas 2.2–2.8, pp. 342–344.

**Direct inputs.** `CompletedCohomologyPartII:CC.3/qualified-biduality`, `mathlib:LinearMap.ker`.

### Patched testing modules

Packet target: `PD.2/testing-modules` (construction).

For a compact open H⊆K, finite-dimensional continuous H-representation V over L and H-stable O-lattice Θ, extend the parent testing construction to M∞,H(Θ)=(Hom_cont,O[[H]](M∞,Θ^d))^d, using Schikhof duals. This is a finite R∞-module. Its rational version M∞,H(V)=M∞,H(Θ)[1/p] is canonically independent of Θ. It is contravariantly tested against V* and its continuous L-linear dual is Hom_H(V,Π(M∞)); scalar actions are by precomposition. For σ=πalg(k)⊗σ(τ) at H=K this is the existing parent type-specialised module, not a new type-theory object.

**Argument.** Restrict the finite R∞[[K]] presentation to H, which has finite index, so it remains finite over R∞[[H]]. The right Θ-module uses g↦g^{-1}. Identify the displayed double dual with the completed balanced tensor Θ⊗̂_{O[[H]]}M∞. A finite presentation makes it a quotient of finitely many copies of R∞⊗_OΘ, proving finiteness. Compare commensurable lattices after inverting p and use torsion-free biduality for the Hom adjunction. Frobenius reciprocity compares H-tests with induced K-tests. Use the imported parent theorem, rather than general finiteness, to obtain reduced O-flat faithful quotients for algebraic and type-specialised tests.

**API.**

- **PatchedTest.lattice_independent** (equivalence): Two stable lattices give canonically isomorphic rational testing modules, compatibly with third-lattice comparison.
- **PatchedTest.dual_hom** (compatibility): The continuous rational dual identifies with Hom_H(V,Π(M∞)), respecting R∞ actions.
- **PatchedTest.directSum** (functoriality): Finite direct sums of V give the corresponding direct sums of testing modules.
- **PatchedTest.scalar_action** (simp): A scalar a acts trivially on the testing module exactly when precomposition by a kills every continuous H-map M∞→V*.
- **PatchedTest.openInduction** (compatibility): For finite-index H⊆K, testing V on H agrees with testing Ind_H^K V on K, by the finite-index Frobenius adjunction.
- **PatchedTest.fibre_nonzero** (characterisation): For the finite integral test, nonzero characteristic-zero fibre at y is equivalent to a nonzero V-map into Π_y; coefficient extension to κ(y) is understood.
- **PatchedTest.parent_type** (compatibility): At H=K and V=πalg(k)⊗σ(τ), this construction agrees canonically with R31.5/type-specialised-patched-modules.

**Definition tests.**

- **PatchedTest.zero** (degenerate): V=0 gives zero integral and rational testing modules.
- **PatchedTest.regularRankOne** (computation): For the model M=O[[H]] and Θ=O with trivial action, the testing module is O via augmentation; its rational version is L.
- **PatchedTest.homothety** (compatibility): Replacing Θ by ϖΘ leaves the rational module unchanged, although the canonical integral lattice map is multiplication by ϖ.
- **PatchedTest.noTorsionBidual** (non-example): For the model M=O/ϖ and Θ=O with trivial H, the testing module is zero; it does not recover the nonzero torsion module.

**Uses.** BIP Theorem 6.8, p. 49: Detects a nonzero algebraic specialisation with fixed determinant. EP Theorem 5.3, p. 365: Detects prescribed smooth families on compact open subgroups. PD.4–PD.5: Attaches finite quotients and their characteristic-zero point sets to capture families.

**Checks.** M∞ need not be finite as an R∞-module or as an O[[H]]-module. Reducedness of the testing quotient is an arithmetic theorem, not a consequence of this definition.

**Sources.** BIP, §6, p. 48, paragraphs after Lemma 6.6; EP, proof of Proposition 2.11, p. 345; Theorem 5.3, pp. 364–365; CEGGPS, §1.8, p. 15; Lemma 4.18, pp. 65–66.

**Direct inputs.** `CompletedCohomologyAndLocalGlobalCompatibility:R31.5/ceggps-patched-module`, `CompletedCohomologyAndLocalGlobalCompatibility:R31.5/type-specialised-patched-modules`, `CompletedCohomologyPartII:CC.3/qualified-biduality`, `SmoothRepresentationsOfLocalGroups:SR.2/frobenius-reciprocity`, `CompletedCohomologyAndLocalGlobalCompatibilityPartII:PD.2/capture`, `LocallyAnalyticRepresentationsOfLocalGroups:LR.0`.

### Testing-module comparisons

Packet target: `PD.2/testing-comparisons` (theorem).

For the integral and rational testing modules of PD.2, stable-lattice comparison after inverting p is canonical; their rational continuous duals identify with Hom_H(V,Π(M∞)), equivariantly for R∞. The finite integral test has nonzero characteristic-zero fibre exactly when Hom_H(V,Π_y) is nonzero, after extension to κ(y). Testing on finite-index H agrees with the induced K-test, using the continuous finite-index adjunction. A scalar annihilates a test exactly when it kills every corresponding continuous map M∞→V*.

**Argument.** Use commensurability of stable lattices and finite direct sums to compare the rational modules. Apply the two Hom adjunctions and torsion-free biduality, then the finite-presentation/base-change description for the characteristic-zero fibre criterion. For finite-index induction sum over a finite set of cosets; impose continuity for nonsmooth algebraic factors.

**Checks.** The statement uses continuous compact duality only under O-torsion-freeness. The algebraic kernel form does not replace a missing representation carrier.

**Sources.** EP, proof of Proposition 2.11, p. 345; Theorem 5.3 and proof, pp. 364–365.

**Direct inputs.** `CompletedCohomologyAndLocalGlobalCompatibilityPartII:PD.2/testing-modules`, `CompletedCohomologyPartII:CC.3/qualified-biduality`, `SmoothRepresentationsOfLocalGroups:SR.2/frobenius-reciprocity`, `LocallyAnalyticRepresentationsOfLocalGroups:LR.0`.

### Scalar detection by testing kernels

Packet target: `PD.2/capture-scalar-detection` (theorem).

Let O and R be commutative rings, M an O-module and an R-module with faithful R-action, and (f_i:M→V_i) an indexed family of O-linear maps to O-modules. If ⋂_i ker f_i=0, then any R-scalar a with f_i(a·m)=0 for every i,m is zero. More generally any O-linear endomorphism u with f_i∘u=0 for every i is zero. Applied to all continuous equivariant maps to V_i*, this is the scalar-detection consequence of capture.

**Argument.** For each m, every f_i kills u(m) or a·m, so the common-kernel hypothesis makes it zero. Extensionality gives u=0; faithful scalar action compares a with zero to give a=0.

**Checks.** The statement uses continuous compact duality only under O-torsion-freeness. The algebraic kernel form does not replace a missing representation carrier.

**Sources.** EP, Lemmas 2.7 and 2.10, pp. 344–345.

**Direct inputs.** `mathlib:LinearMap.ker`, `mathlib:FaithfulSMul`.

### Capture duality and projectives

Packet target: `PD.2/capture-duality-and-projectives` (theorem).

For a family of finite-dimensional continuous H-representations, capture of an O-torsion-free compact M is equivalent to density of the evaluation map into Π(M). Capture is preserved and detected on arbitrary products. Capture of O[[H]] is equivalent to capture of every compact projective and to capture of every indecomposable compact projective; the fixed-centre version uses the corresponding completed regular quotient.

**Argument.** Apply the Hom–tensor adjunction and compact torsion-free biduality for the evaluation criterion. Products of compact modules dualise to completed direct sums of unitary Banach spaces, so evaluation density is equivalent on each factor. Use the requested compact-projective decomposition and the summands of the completed regular module, with its fixed-centre quotient in that category.

**Checks.** The statement uses continuous compact duality only under O-torsion-freeness. The algebraic kernel form does not replace a missing representation carrier.

**Sources.** EP, Lemmas 2.3, 2.5 and 2.8, pp. 343–344.

**Direct inputs.** `CompletedCohomologyAndLocalGlobalCompatibilityPartII:PD.2/capture`, `CompletedCohomologyPartII:CC.3/qualified-biduality`, `PadicMeasuresIwasawaAlgebras:L1`.

### Algebraic capture

Packet target: `PD.2/algebraic-capture` (theorem).

For K=GL_d(O_F), irreducible rational representations ξ of (Res_{F/Q_p}GL_d)_L capture every compact projective O[[K]]-module. If a family captures every compact projective for a compact H, tensoring every member with a fixed nonzero finite-dimensional continuous H-representation W still captures every compact projective. In particular {ξ⊗W}_ξ captures all K-projectives for any nonzero finite-dimensional smooth K-representation W. Finite fields of definition may vary with the family member.

**Argument.** Apply EP Proposition 3.1 to the restriction-of-scalars integral group scheme, with connected split reductive generic fibre. For a stable lattice Θ in nonzero W, untwist the diagonal action on O[[H]]⊗_OΘ to identify it with a positive finite direct sum of O[[H]]. The Hom–tensor adjunction and capture of projectives detect the original quotient; positivity of dim W is essential. Extend coefficients member by member using EP §2.3.

**Checks.** W=0 is excluded: zero testing representations cannot capture O[[K]]. No admissibility of Π(M∞) is assumed; compact projectivity suffices.

**Sources.** EP, Lemma 2.9, p. 344; Proposition 3.1 and Corollary 3.2, p. 351.

**Direct inputs.** `CompletedCohomologyAndLocalGlobalCompatibilityPartII:PD.2/capture`, `tauceti:TauCetiRoadmap/RepresentationTheory/ClassicalGroups#layer-3-maximal-torus-weights-and-the-highest-weight-classification`, `PadicMeasuresIwasawaAlgebras:L1`, `CompletedCohomologyPartII:CC.3/qualified-biduality`, `CompletedCohomologyAndLocalGlobalCompatibilityPartII:PD.2/capture-duality-and-projectives`.

### Capture by smooth types

Packet target: `PD.2/smooth-type-capture` (theorem).

Use the type-theory supplier for the EP families: principal-series Vχ on a sufficiently small torsion-free Iwahori subgroup I_{n0}, and minimal-stratum V(α,θ) on H=U^{m+1}(𝔄) for an embedded degree-d extension E/F containing a minimal element, m sufficiently large that H is torsion free. In the principal family characters have pairwise separated conductors as in EP §3.3; in the supercuspidal family take all distinct isomorphism classes for all n>2m, v_E(α)=−n and θ∈C(m,α). Each family captures every compact projective over its H. Tensoring it with the nonzero fixed algebraic factor πalg(k)|_H preserves capture.

**Argument.** Import the actual induced representations, hereditary-order filtration and simple-character intertwiners from the requested smooth-representation interface. Use EP Proposition 2.23: for the p-power-compatible filtration H_n and pairwise nonisomorphic absolutely irreducible V_i, the growth Σ_i(dim V_i^{H_n})²∼[H:H_n] implies capture. Here ∼ means bounded above and below by positive constants, as used in EP. Principal-series counts are EP Lemma 3.10 and Proposition 3.11; simple-type dimensions and counts are Lemma 3.20 and Proposition 3.25, giving Proposition 3.26. Apply nonzero tensor stability to πalg(k). Restriction of the parent projective module to finite-index H remains projective.

**Checks.** Counting the same irreducible representation repeatedly cannot replace the sum over distinct isomorphism classes. Use the p-power-compatible filtration in EP Proposition 2.23; an arbitrary filtration has no such growth theorem.

**Sources.** EP, §2.5, Proposition 2.23, pp. 349–350; §3.3, Proposition 3.11, p. 354; §3.4, Proposition 3.26, pp. 358–359.

**Direct inputs.** `CompletedCohomologyAndLocalGlobalCompatibilityPartII:PD.2/capture`, `CompletedCohomologyAndLocalGlobalCompatibilityPartII:PD.2/algebraic-capture`, `SmoothRepresentationsOfLocalGroups:SR.2/frobenius-reciprocity`, `SmoothRepresentationsOfLocalGroups:SR.3`, `PadicMeasuresIwasawaAlgebras:L1`.

### Fixed-centre algebraic density

Packet target: `PD.2/fixed-centre-evaluation` (theorem).

Let 𝐆/Q_p be connected reductive and split over L, Z its centre and H⊆𝐆(Q_p) compact open. Let T≠0 be a finite-dimensional algebraic L-representation whose central character restricts to δ:H∩Z(Q_p)→O×. If Π is an admissible unitary Banach representation that is a continuous H-equivariant direct summand of Cδ(H,L)^m, m≥1, then the images of Hom_H(T⊗ξ′,Π^la)⊗(T⊗ξ′), for ξ′ irreducible algebraic representations of (𝐆/Z)_L, span a dense subspace of Π^la. They also span a dense subspace of Π, using density of locally analytic vectors in an admissible Banach representation. All analytic vectors here are locally Q_p-analytic.

**Argument.** Use DPS Theorem 7.4 and Corollaries 7.5–7.6 for algebraic matrix coefficients on the compact open of the quotient by the centre. Tensor by T*; the projection formula Cδ(H,L)⊗T*≅C(H/(H∩Z),L)^{dim T} removes the central character. Pass to the continuous direct summand. Apply DPS Corollary 7.8 for density in Π^la. The requested LR.1 Banach analytic-vector-density interface gives density in Π; this additional implication is explicit.

**Checks.** A nonzero bounded projection from Cδ(H,L)^m detects at least one algebraic summand. The theorem is not applied directly to Π(M∞), which need not be admissible.

**Sources.** DPS, Theorem 7.4 and Corollaries 7.5–7.8, pp. 41–43; BIP, proof of Lemma 6.7, p. 49.

**Direct inputs.** `LocallyAnalyticRepresentationsOfLocalGroups:LR.1`, `LocallyAnalyticDistributionsPartII:ND.6/banach-iwasawa-duality`, `tauceti:TauCetiRoadmap/RepresentationTheory/ClassicalGroups#layer-3-maximal-torus-weights-and-the-highest-weight-classification`.

### Algebraic detection of projectives

Packet target: `PD.2/fixed-centre-projective-detection` (theorem).

For K=GL_d(O_F), let θ be an algebraic character of (Res_{F/Q_p}G_m)_L, with evaluation δ on Z∩K. If M is a nonzero projective in the category of compact O[[K]]-modules on which Z∩K acts by δ^{-1}, then Hom_cont,K(M,ξ*)≠0 for some irreducible algebraic ξ of (Res_{F/Q_p}GL_d)_L.

**Argument.** A compact fixed-centre projective is a product of indecomposable projectives. A nonzero factor is a summand of the fixed-centre completed regular module; its Banach dual is a nonzero summand of Cδ(K,L). The requested finite-coefficient highest-weight interface supplies an algebraic T of central character θ, allowing arbitrary integer exponents at each embedding. This is not restricted to determinant powers. Fixed-centre evaluation density supplies ξ′ with a nonzero map T⊗ξ′→Π(M). Complete reducibility over L supplies an irreducible summand ξ with a nonzero map. Schikhof duality converts this to the asserted map M→ξ*. For a product, compose with the projection to the detected factor.

**Checks.** For d=1 this reduces to the one-dimensional algebraic character of the centre. For d=2 a central exponent 1 is realized by the standard representation; determinant powers alone would miss it.

**Sources.** BIP, Lemma 6.7, p. 49.

**Direct inputs.** `CompletedCohomologyAndLocalGlobalCompatibilityPartII:PD.2/capture`, `CompletedCohomologyAndLocalGlobalCompatibilityPartII:PD.2/fixed-centre-evaluation`, `tauceti:TauCetiRoadmap/RepresentationTheory/ClassicalGroups#layer-3-maximal-torus-weights-and-the-highest-weight-classification`, `CompletedCohomologyPartII:CC.3/qualified-biduality`, `CompletedCohomologyAndLocalGlobalCompatibilityPartII:PD.2/capture-duality-and-projectives`.

**Layer acceptance.** Supply compact-projective decomposition, finite-coefficient type theory and both continuous-induction and Banach analytic-vector bridges. All targets are planned; the layer is not declared closed.

## PD.3. Faithfulness of the local deformation action

For every determinant-torsion component choose a crystalline determinant, an algebraic test and a characteristic-zero point. Choose a supported patched component through that point and contract it using PD.1. Reducedness then proves injectivity of R□→End(M∞), BIP Theorem 6.8. Do not assert faithfulness of R∞ when auxiliary components have not been covered.

### Detection of local components

Packet target: `PD.3/hits-each-local-component` (theorem).

For every minimal prime 𝔭χ of R=R□_{ρ̄}, there is a minimal prime 𝔮 of R∞ with 𝔮∩R=𝔭χ and V(𝔮)⊆V(Ann_{R∞}M∞). More precisely, a crystalline determinant ψ restricting to χ on μ_{p∞}(F) and some algebraic ξ give a nonzero characteristic-zero fixed-ψ fibre of M∞(ξ); a point y of that fibre lies on such a component V(𝔮). No containment of the entire support of M∞(ξ) in one component is asserted.

**Argument.** For the chosen χ, import the corrected crystalline-character lift interface to choose ψ lifting detρ̄ and realizing χ. The nonzero fixed-centre projective Mψ has an algebraic test ξ by PD.2. Duality gives a nonzero fixed-ψ rational testing module. Its finite presentation over a characteristic-zero quotient of R∞ gives a closed point y. Every algebraic test is annihilated by Ann_{R∞}M∞, so y∈V(Ann M∞). The parent EP support theorem makes this closed set a union of irreducible components. Choose one such component through y; the algebraic-test closure form of EP Theorem 6.12 gives the same argument. At y, p is invertible; distinct determinant-torsion characters have distinct values, so its χ-component is unique. The component bijection of PD.1 forces 𝔮∩R=𝔭χ. This repairs the whole-support containment step in the printed proof.

**Checks.** If an algebraic test support crosses two auxiliary components, choose one through y rather than claiming the support is contained in just one. Every χ is met, but an arbitrary auxiliary component need not be met.

**Sources.** BIP, proof of Theorem 6.8, p. 49; EP, Theorem 6.12, pp. 369–370, imported through the parent.

**Direct inputs.** `CompletedCohomologyAndLocalGlobalCompatibilityPartII:PD.1/patched-components`, `CompletedCohomologyAndLocalGlobalCompatibilityPartII:PD.1/algebraic-central-character`, `CompletedCohomologyAndLocalGlobalCompatibilityPartII:PD.2/fixed-centre-projective-detection`, `CompletedCohomologyAndLocalGlobalCompatibilityPartII:PD.2/testing-modules`, `PadicHodgeTheory:R06.2/crystalline-character-lift-interface`, `CompletedCohomologyAndLocalGlobalCompatibility:R31.5/patched-support-is-a-union-of-components`, `DeformationAndDerivedPatchingAlgebra:R03.4`, `CompletedCohomologyAndLocalGlobalCompatibilityPartII:PD.2/testing-comparisons`.

### Faithfulness of the local deformation action

Packet target: `PD.3/local-faithfulness` (theorem).

For p∤2d and arbitrary continuous ρ̄ in the standing setup, the structural action R□_{ρ̄}→End_cont,O[[K]](M∞) is injective; equivalently Ann_{R□_{ρ̄}}M∞=0. This asserts faithfulness of the local ring, not of R∞.

**Argument.** If a∈R kills M∞, its image lies in every minimal prime 𝔮 chosen by PD.3 component detection. Contraction puts a in every minimal prime 𝔭χ of R. Their intersection is its nilradical. The local-ring supplier gives reducedness of R, hence a=0. Use the baseline annihilator criterion to express faithfulness. Descend from any coefficient enlargement by faithful flatness.

**Checks.** If A has a single geometrically integral component, the same proof reaches all patched components; without that extra hypothesis it does not. For d=2,F=Q_p,p>2 compare the imported parent module and its local action.

**Sources.** BIP, Theorem 6.8 and Remark 6.9, pp. 49–50.

**Direct inputs.** `CompletedCohomologyAndLocalGlobalCompatibilityPartII:PD.3/hits-each-local-component`, `LocalGaloisDeformationRings:R08.1`, `mathlib:Module.comap_annihilator`, `mathlib:Module.annihilator_eq_bot`.

**Layer acceptance.** Discharge the local-component and inherited globalisation boundaries used in component detection. All targets are planned; the layer is not declared closed.

## PD.4. Three arithmetic density theorems

Prove the capture/testing density criterion using finite reduced O-flat test quotients over R∞ and contraction to R□. Deduce BIP Theorem 6.1: crystalline points with regular weights varying, potentially crystabelline points of any one fixed regular weight, and unramified degree-d induced supercuspidal points of that fixed regular weight are each Zariski dense in Spec R□. The fixed-weight conclusions concern the scheme spectrum, not the rigid generic fibre.

### Density from patched testing

Packet target: `PD.4/density-from-testing` (theorem).

Let R→R∞ act on the imported compact projective M∞, faithfully over R. Let (V_i) capture M∞ on a fixed compact open H⊆K, and let N_i=M∞,H(Θ_i) be the finite integral tests. Suppose each B_i=R∞/Ann_{R∞}N_i is reduced and O-flat (the zero ring is allowed), and the image in Spec R of every closed point of Spec B_i[1/p] lies in a set Σ of arithmetic points. Then the vanishing ideal of Σ in R is zero and Σ is Zariski dense in Spec R. More generally, without local faithfulness its closure is V(Ann_R M∞) if, in addition, Σ⊆V(Ann_R M∞).

**Argument.** A scalar vanishing on Σ vanishes on every characteristic-zero closed point of B_i. Its generic fibre is Jacobson with finite residue extensions; reducedness and O-flatness give that the scalar is zero in B_i. Thus it kills N_i, hence kills every testing map by the dual-Hom comparison. Capture says its endomorphism on M∞ is zero. Capture gives vanishingIdeal(Σ)⊆Ann_R M∞. If Σ⊆V(Ann_R M∞), the reverse inclusion also holds; in the faithful case both are zero. Baseline zero-locus/closure gives the conclusion. This argument takes finite tests over R∞; it never assumes that M∞ is finite over R[[H]]. Equivalently EP Proposition 2.11 may be applied to R∞/Ann M∞ and then contracted.

**Checks.** Without reducedness, the proof only detects a radical; a uniform nilpotence bound is the more general EP hypothesis. The zero test imposes no points and has zero faithful quotient. The result is scheme-theoretic Zariski density in Spec R, not density in a Banach topology.

**Sources.** EP, Lemmas 2.7, 2.10 and Proposition 2.11, pp. 344–345; Remark 2.13, pp. 345–346; BIP, proof of Theorem 6.1, pp. 49–50.

**Direct inputs.** `CompletedCohomologyAndLocalGlobalCompatibilityPartII:PD.2/capture`, `CompletedCohomologyAndLocalGlobalCompatibilityPartII:PD.2/testing-modules`, `mathlib:Module.mem_annihilator`, `mathlib:Module.comap_annihilator`, `mathlib:PrimeSpectrum.vanishingIdeal`, `mathlib:PrimeSpectrum.zeroLocus_vanishingIdeal_eq_closure`, `DeformationAndDerivedPatchingAlgebra:R03.4`, `CompletedCohomologyAndLocalGlobalCompatibilityPartII:PD.2/testing-comparisons`, `CompletedCohomologyAndLocalGlobalCompatibilityPartII:PD.2/capture-scalar-detection`.

### Density of crystalline points

Packet target: `PD.4/crystalline-density` (theorem).

If p∤2d, then Σcris is Zariski dense in X□=Spec R□_{ρ̄}. The labelled regular weights vary; coefficients are allowed finite extensions of L.

**Argument.** For every algebraic ξ, take the K-test M∞(ξ); these ξ capture the compact projective M∞. The parent crystalline specialisation theorem identifies its faithful quotient with a reduced O-flat union of components of the appropriate crystalline deformation ring, including the auxiliary factors. All characteristic-zero points map to Σcris. Apply PD.4 testing density with PD.3 faithfulness.

**Checks.** For d=1 this agrees with the algebraic-character interpolation from local class field theory. For d=2,F=Q_p,p>2 it specializes to the known framed crystalline-density theorem; no claim at p=2 is made by this proof.

**Sources.** BIP, Theorem 6.1 and proof, pp. 46, 49–50; CEGGPS, Lemma 4.18, pp. 65–66.

**Direct inputs.** `CompletedCohomologyAndLocalGlobalCompatibilityPartII:PD.0/local-point-sets`, `CompletedCohomologyAndLocalGlobalCompatibilityPartII:PD.0/unconditional-patching-input`, `CompletedCohomologyAndLocalGlobalCompatibilityPartII:PD.3/local-faithfulness`, `CompletedCohomologyAndLocalGlobalCompatibilityPartII:PD.4/density-from-testing`, `CompletedCohomologyAndLocalGlobalCompatibilityPartII:PD.2/algebraic-capture`, `CompletedCohomologyAndLocalGlobalCompatibility:R31.5/type-specialised-patched-modules`, `LocalGaloisDeformationRings:R08.3/pst-deformation-ring`.

### Density of principal-series points

Packet target: `PD.4/principal-series-density` (theorem).

For p∤2d and every fixed regular labelled Hodge–Tate weight k, the potentially crystabelline subset Σprnc_k is Zariski dense in X□.

**Argument.** Fix ξ=πalg(k) with the dual highest-weight convention in PD.0. Restrict M∞ to the small Iwahori subgroup of EP §3.3. The principal-series smooth family, tensored with this fixed ξ, captures the restriction of M∞. Use EP Theorem 5.3 and its principal-series proof, with the requested type recognition and parent local–global compatibility: the faithful test quotients are reduced O-flat, and every characteristic-zero point is potentially crystabelline of weight k. The testing criterion and local faithfulness transfer the annihilator-supported statement to all X□.

**Checks.** Vary the smooth conductors while keeping ξ fixed. Fixing one inertial type as well is not this theorem. The assertion is not rigid Zariski density; BIP Remark 6.10 distinguishes those topologies.

**Sources.** BIP, Theorem 6.1 and proof, pp. 46, 50; EP, proof of Theorem 5.1, pp. 362–363; Theorem 5.3 and proof, pp. 364–365.

**Direct inputs.** `CompletedCohomologyAndLocalGlobalCompatibilityPartII:PD.0/local-point-sets`, `CompletedCohomologyAndLocalGlobalCompatibilityPartII:PD.0/unconditional-patching-input`, `CompletedCohomologyAndLocalGlobalCompatibilityPartII:PD.3/local-faithfulness`, `CompletedCohomologyAndLocalGlobalCompatibilityPartII:PD.4/density-from-testing`, `CompletedCohomologyAndLocalGlobalCompatibilityPartII:PD.2/smooth-type-capture`, `CompletedCohomologyAndLocalGlobalCompatibilityPartII:PD.2/testing-modules`, `SmoothRepresentationsOfLocalGroups:SR.3`, `CompletedCohomologyAndLocalGlobalCompatibility:R31.5/type-specialised-patched-modules`.

### Density of supercuspidal points

Packet target: `PD.4/unramified-supercuspidal-density` (theorem).

For p∤2d and every fixed regular labelled weight k, Σspcd_k, with its unramified degree-d inducing extension and irreducible induced Weil representation, is Zariski dense in X□.

**Argument.** Use E/F unramified of degree d and its EP §3.4 minimal-stratum family, tensored with the fixed ξ=πalg(k). Unramified E admits a minimal element. EP Proposition 3.19 recognizes these types, and local–global compatibility gives the reduced O-flat faithful quotients used in Theorem 5.3. For unramified E the corresponding Weil representation is irreducible character induction. Apply the capture criterion on the small hereditary-order subgroup, then contract by local faithfulness.

**Checks.** For d=1 the extension is F and the supercuspidal/principal distinction is vacuous. The wildly ramified generalization in PD.5 uses simple strata, not arbitrary character induction.

**Sources.** BIP, Theorem 6.1, p. 46; proof, p. 50; EP, Proposition 3.19, pp. 355–356; Theorem 5.3, pp. 364–365.

**Direct inputs.** `CompletedCohomologyAndLocalGlobalCompatibilityPartII:PD.0/local-point-sets`, `CompletedCohomologyAndLocalGlobalCompatibilityPartII:PD.0/unconditional-patching-input`, `CompletedCohomologyAndLocalGlobalCompatibilityPartII:PD.3/local-faithfulness`, `CompletedCohomologyAndLocalGlobalCompatibilityPartII:PD.4/density-from-testing`, `CompletedCohomologyAndLocalGlobalCompatibilityPartII:PD.2/smooth-type-capture`, `CompletedCohomologyAndLocalGlobalCompatibilityPartII:PD.2/testing-modules`, `SmoothRepresentationsOfLocalGroups:SR.3`, `EndoscopicTransferAndUnitaryTraceComparison:ET.6/cuspidal-weil-bijection`, `CompletedCohomologyAndLocalGlobalCompatibility:R31.5/type-specialised-patched-modules`.

**Layer acceptance.** Discharge the supplier quotient-recognition, tensor/Jacobson and capture interfaces; all three final density statements are planned. All targets are planned; the layer is not declared closed.

## PD.5. Benign, prescribed-type and ramified variants

Define benign points by distinct φ^f eigenvalues, all refinements noncritical and ratios avoiding p^{±f}; prove their density with regular weights varying. Define prescribed-type support Cτ by the intersection of patched test annihilators, prove density on Cτ for compatible N=0 type data, and isolate the nonempty capture/component certificate needed for Cτ=X□. Define the minimal-stratum supercuspidal set and prove fixed-weight density for totally ramified E/F and more generally E admitting a minimal element, retaining simple types in the wild case. Keep p∤2d throughout.

### Benign crystalline points

Packet target: `PD.5/benign-points` (definition).

A crystalline representation of G_F with regular labelled weights is benign when (i) its φ^f eigenvalues on Dcris, after splitting coefficients, are pairwise distinct; (ii) every ordering of those eigenlines gives a noncritical refinement, in the sense imported from the refined crystalline space; and (iii) for distinct eigenvalues α_i,α_j one has α_i/α_j≠p^f and p^{−f}. Here f=[F_0:Q_p]. A benign point is an arithmetic point with this property, and its weights may vary.

**Argument.** Use the imported Dcris, labelled filtrations and refinement construction. Require all d! refinements to be noncritical, not just one. The predicate is invariant under a splitting-field extension and eigenvalue permutation, so it descends to arithmetic points. The spectral ratio restriction is additional to regularity and noncriticality; it ensures irreducibility of the associated unramified principal series.

**API.**

- **Benign.crystalline_regular** (projection): A benign point is crystalline and has regular labelled weights.
- **Benign.every_refinement** (projection): Every eigenvalue ordering at a benign point is a noncritical refinement.
- **Benign.coefficientExtension_iff** (functoriality): Benignness is equivalent before and after any finite splitting coefficient extension.
- **Benign.permutation_invariant** (compatibility): The definition is independent of the ordering of Frobenius eigenlines.
- **Benign.irreducible_unramified_principal** (relation): Under the pinned local Langlands normalization, the smooth factor of a benign representation is an irreducible unramified principal series.

**Definition tests.**

- **Benign.rankOne** (degenerate): Every crystalline rank-one representation is benign: regularity and all pairwise conditions are vacuous.
- **Benign.repeatedEigenvalue** (non-example): A regular crystalline rank-two representation with repeated φ^f eigenvalue is not benign, even if a chosen filtration is in general position.
- **Benign.ratioPF** (non-example): For d=2, distinct eigenvalues with ratio p^f fail benignness, independently of filtration.
- **Benign.criticalRefinement** (characterisation): If one of two rank-two refinements is critical, the representation is not benign even when the other is noncritical and the eigenvalue ratios avoid p^{±f}.

**Uses.** EP Proposition 6.9, p. 368: Provides open dense benign loci on crystalline components. PD.5 benign density: Refines the arithmetic points used by crystalline capture.

**Checks.** Use φ^f, which is linear on each F_0-component, rather than treating the semilinear φ as an ordinary matrix.

**Sources.** EP, Definition 6.8, p. 368; BIP, Remark 6.2, p. 46.

**Direct inputs.** `CompletedCohomologyAndLocalGlobalCompatibilityPartII:PD.0/local-point-sets`, `TriangulineVarietyAndItsLocalModel:G/refined-crystalline-space`.

### Benign open locus

Packet target: `PD.5/benign-open` (theorem).

For a fixed regular labelled weight k, every nonempty irreducible component of the crystalline generic fibre occurring in a parent algebraic test contains a nonempty relatively Zariski open locus of benign points; this locus is dense in that component. This is a relative statement on each crystalline component, including its formally smooth auxiliary factors.

**Argument.** Use Nakamura Lemma 4.2, as invoked by EP Proposition 6.9. On a fixed-weight crystalline chart, relative Dcris and the filtration commute with finite coefficient base change. The Frobenius discriminant and the finitely many eigenvalue-ratio conditions define open loci. On a splitting chart the noncritical conditions are nonvanishing of the appropriate flag-position minors. Formal crystalline deformation parameters vary eigenvalues and filtrations independently enough to show these functions are not identically zero on a component; weak admissibility is open. Finite intersection gives the nonempty dense open. Transport to the test support using its union-of-crystalline-components theorem and the formally smooth auxiliary factors. The exact relative-period-module interface is requested from the refined-space owner.

**Checks.** Empty crystalline components provide no nonemptiness claim. Open means relative to a crystalline component; it does not mean an open subset of the unrestricted local deformation space.

**Sources.** EP, Proposition 6.9 and paragraph before Lemma 6.11, p. 368; NAK, Lemma 4.2 and proof, pp. 120–122.

**Direct inputs.** `CompletedCohomologyAndLocalGlobalCompatibilityPartII:PD.5/benign-points`, `TriangulineVarietyAndItsLocalModel:G/refined-crystalline-space`, `LocalGaloisDeformationRings:R08.3/pcris-generic-smooth`, `CompletedCohomologyAndLocalGlobalCompatibility:R31.5/type-specialised-patched-modules`.

### Density of benign points

Packet target: `PD.5/benign-density` (theorem).

For p∤2d, benign crystalline points with regular labelled weights varying are Zariski dense in X□.

**Argument.** For each algebraic test quotient, benign points are dense in every component of its characteristic-zero support by the benign-open theorem. A local scalar vanishing on all benign points therefore vanishes on every reduced integral test quotient. Algebraic capture and local faithfulness give zero vanishing ideal, exactly as in crystalline density.

**Checks.** Weights vary. A single fixed crystalline weight is not asserted dense in the unrestricted ring. The prime restriction remains in force although a different stack-based proof gives stronger crystalline results.

**Sources.** BIP, Remark 6.2, p. 46; EP, Proposition 6.9 and its use preceding Lemma 6.11, p. 368.

**Direct inputs.** `CompletedCohomologyAndLocalGlobalCompatibilityPartII:PD.5/benign-open`, `CompletedCohomologyAndLocalGlobalCompatibilityPartII:PD.3/local-faithfulness`, `CompletedCohomologyAndLocalGlobalCompatibilityPartII:PD.4/density-from-testing`, `CompletedCohomologyAndLocalGlobalCompatibilityPartII:PD.2/algebraic-capture`, `CompletedCohomologyAndLocalGlobalCompatibility:R31.5/type-specialised-patched-modules`.

### Prescribed-type support

Packet target: `PD.5/prescribed-type-support` (construction).

Let τ be a compatible inertial type and W=σ(τ) a specified finite-dimensional smooth crystalline K-type over a finite extension of L, with the CEGGPS N=0 recognition theorem. For each algebraic ξ let N_{ξ,τ}=M∞(ξ⊗W) using its integral stable lattice for annihilators, and put Jτ=⋂_ξ Ann_R N_{ξ,τ}, Cτ=V(Jτ)⊆Spec R. Define Στ to be the potentially crystalline arithmetic points of inertial type τ and arbitrary regular weight, and Στ^patch to be images of the characteristic-zero closed points of the faithful quotients of the tests. Their type recognition is part of the specified datum. Nonempty type support means at least one rational N_{ξ,τ} is nonzero. For a degenerate testing datum W=0 take Jτ=R and Cτ=∅.

**Argument.** Build the tests using the specified smooth K-type, not merely a name for τ. Contract each finite-test annihilator from R∞ to R before intersecting. Use parent reduced O-flat faithful type quotients to see that Jτ is radical and p-saturated. Their characteristic-zero closed-point images have vanishing ideal Jτ. Compare their points with potentially crystalline N=0 deformations using the requested inertial local Langlands interface. No type is inferred just from potentially semistable membership.

**API.**

- **TypeSupport.ideal_radical** (structure): Under reduced O-flat test quotients, Jτ is radical and p-saturated.
- **TypeSupport.points_in_type** (compatibility): The type-recognition certificate gives Στ^patch⊆Στ∩Cτ with N=0.
- **TypeSupport.vanishingIdeal** (characterisation): The vanishing ideal in R of Στ^patch equals Jτ.
- **TypeSupport.nonempty_iff** (characterisation): Cτ is nonempty precisely when some integral test is nonzero, equivalently some rational test is nonzero under O-flatness.
- **TypeSupport.full_iff_ideal_zero** (characterisation): Because R is reduced, Cτ=X□ exactly when Jτ=0.
- **TypeSupport.capture_certificate** (relation): If the family {ξ⊗W}_ξ captures M∞, then Jτ=Ann_R M∞; local faithfulness then certifies full component coverage.

**Definition tests.**

- **TypeSupport.zeroType** (degenerate): For W=0 every test is zero, Jτ=R and Cτ=∅.
- **TypeSupport.crystallineTrivialType** (compatibility): For the trivial crystalline K-type, Cτ is the closure of the union of the algebraic test supports after contraction; crystalline density makes it X□.
- **TypeSupport.fixedWeightIsDifferent** (non-example): For d=1,F=Q_p, the unramified crystalline type and weight zero force the inertia character to be trivial; that fixed-weight locus is proper in the unrestricted character component. It is not Cτ, which ranges over all regular weights.
- **TypeSupport.singleTest** (characterisation): Restricting the construction to one ξ gives the closed set cut out by its contracted annihilator; it need not cover other local components.

**Uses.** BIP Remark 6.2, p. 46: Provides a precise supported target for prescribed inertia. PD.5 prescribed-type density: Separates density on this support from a verified full-component certificate.

**Checks.** Cτ is defined by test annihilators, independently of taking the closure of the desired point set. A universal all-types coverage assertion is not part of the definition.

**Sources.** BIP, Remark 6.2, p. 46; proof of Theorem 6.1, pp. 49–50; CEGGPS, Theorem 3.7, p. 41; Lemma 4.18, pp. 65–66; EP, Proposition 2.11, p. 345; Theorem 5.3, p. 365.

**Direct inputs.** `CompletedCohomologyAndLocalGlobalCompatibilityPartII:PD.2/testing-modules`, `CompletedCohomologyAndLocalGlobalCompatibilityPartII:PD.0/local-point-sets`, `SmoothRepresentationsOfLocalGroups:SR.3`, `CompletedCohomologyAndLocalGlobalCompatibility:R31.5/type-specialised-patched-modules`, `mathlib:Module.annihilator`, `mathlib:PrimeSpectrum.zeroLocus`.

### Density on prescribed-type support

Packet target: `PD.5/prescribed-type-density` (theorem).

For a prescribed-type datum of PD.5 with reduced O-flat faithful test quotients and the N=0 point-recognition certificate, Στ^patch is Zariski dense in Cτ, and Στ∩Cτ is dense there as well. Require nonempty type support for a nonvacuous assertion. A sufficient full-component certificate is that {ξ⊗σ(τ)}_ξ captures M∞: then Jτ=Ann_R M∞=0 by local faithfulness. Algebraic capture supplies such a certificate when its nonzero finite-quotient type hypotheses and all type-compatibility inputs are verified. The theorem does not assert unrestricted density for an arbitrary symbol τ, and it does not keep a single Hodge type fixed.

**Argument.** A scalar vanishing on Στ^patch is zero in every reduced O-flat faithful test quotient by the Jacobson argument. Thus its ideal is exactly the intersection Jτ. Apply the baseline vanishing-ideal/closure theorem to obtain closure Cτ. Type recognition gives the same density for Στ∩Cτ. For the separate full-component conclusion, verify capture of the stated nonzero smooth K-type family. This is an explicit algebraic coverage certificate; without it the conclusion stays on Cτ.

**Checks.** An incompatible or zero type datum has empty support and cannot imply nonempty density on X□. A fixed τ and fixed k only supplies a potentially crystalline quotient, generally a proper closed locus.

**Sources.** BIP, Remark 6.2, p. 46; proof of Theorem 6.1, pp. 49–50; EP, Corollary 3.2, p. 351; Proposition 2.11, p. 345.

**Direct inputs.** `CompletedCohomologyAndLocalGlobalCompatibilityPartII:PD.5/prescribed-type-support`, `CompletedCohomologyAndLocalGlobalCompatibilityPartII:PD.2/algebraic-capture`, `CompletedCohomologyAndLocalGlobalCompatibilityPartII:PD.3/local-faithfulness`, `CompletedCohomologyAndLocalGlobalCompatibilityPartII:PD.4/density-from-testing`.

### Minimal-stratum supercuspidal points

Packet target: `PD.5/minimal-stratum-supercuspidal-set` (definition).

Fix an embedded extension E/F of degree d containing an element minimal over F. Write e=e(E/F), v_E normalized and ϖ_F a uniformizer. Minimal means gcd(e,v_E(α))=1 and the residue of ϖ_F^{−v_E(α)}α^e generates k_E/k_F. Let 𝔄 be the hereditary order of End_F(E) preserving the chain (𝔭_E^i). For regular weight k, Σsc_{k,E} consists of potentially semistable points of that weight whose local Langlands representation is supercuspidal and contains a simple stratum [𝔄,n,0,α] with F[α]=E and α minimal, v_E(α)=−n<0. Simple strata, simple characters and their occurrence are imported from the smooth-representation owner. No induced-character description is imposed for wild E/F.

**Argument.** Apply the supplied minimal-stratum/type occurrence predicate to the local Langlands representation. The field embedding and lattice chain are specified up to conjugacy. The numerical minimality condition is the EP §3.4 input; it implies F[α]=E. The filtration and type constructors remain the supplier’s definitions. Use type recognition to see that such supercuspidal points have N=0. Character induction is available only under the extra tame hypothesis of EP Proposition 3.19.

**API.**

- **MinimalStratumSet.conjugation** (functoriality): Changing the embedding E↪End_F(F^d) by conjugation gives the same point predicate.
- **MinimalStratumSet.potentiallyCrystalline** (projection): Every point of this set is potentially crystalline, with N=0.
- **MinimalStratumSet.type_detection** (characterisation): Membership is detected by occurrence of some V(α,θ) of the EP §3.4 family in the corresponding smooth representation, with the specified k.
- **MinimalStratumSet.tame_induction** (compatibility): For tame E/F the type condition is equivalent to the character-induction description with the restricted character matching θ; no such equivalence is asserted for wild E.
- **MinimalStratumSet.coefficientExtension** (functoriality): Finite coefficient extension does not change the underlying arithmetic point predicate.

**Definition tests.**

- **MinimalStratumSet.totallyRamified** (computation): For a totally ramified E/F, any uniformizer α has v_E(α)=1 prime to e and its required residue lies in k_F; hence α is minimal. Suitable negative powers prime to e give the negative valuations used in strata.
- **MinimalStratumSet.unramified** (compatibility): For unramified E/F choose a unit whose residue generates k_E/k_F and multiply by ϖ_F^{−n}; it is minimal for suitable n>0 and gives the unramified supercuspidal type family.
- **MinimalStratumSet.noMinimalElement** (non-example): For F=Q_p, even f, e=p^{f/2}+1, and E the compositum of the unramified degree-f extension with Q_p(p^{1/e}), every e-th power in k_E lies in k_{p^{f/2}}, so E has no minimal element and is excluded.
- **MinimalStratumSet.wildDistinction** (characterisation): For a wild totally ramified E the point predicate asks for a simple stratum, not for WD=Ind_{W_E}^{W_F}χ.

**Uses.** EP Theorem 5.3, pp. 364–365: Supplies the fixed-weight density target on annihilator support. PD.5 ramified supercuspidal density: Transfers this target to the unrestricted local ring.

**Checks.** All totally ramified and all unramified degree-d extensions admit minimal elements.

**Sources.** EP, Definition 3.12 and Example 3.15, p. 354; Proposition 3.19, pp. 355–356; §5.3, p. 364; BIP, Remark 6.2, p. 46.

**Direct inputs.** `CompletedCohomologyAndLocalGlobalCompatibilityPartII:PD.0/local-point-sets`, `SmoothRepresentationsOfLocalGroups:SR.3`, `EndoscopicTransferAndUnitaryTraceComparison:ET.6/cuspidal-weil-bijection`.

### Density of ramified supercuspidal points

Packet target: `PD.5/minimal-stratum-density` (theorem).

Assume p∤2d. For every fixed regular k and every degree-d extension E/F containing a minimal element, the set Σsc_{k,E} is Zariski dense in X□. In particular the theorem applies to every totally ramified degree-d extension, including wild extensions. The conclusion for wild E is expressed by simple strata; an induced-character formulation is asserted only in the tame case with its character restrictions.

**Argument.** Choose m making H=U^{m+1}(𝔄) torsion free and use the minimal-stratum capture family, tensored with πalg(k). Existence of one minimal element supplies arbitrarily negative minimal elements by EP Lemma 3.16. Use EP Proposition 3.19, and the reduced type-quotient argument in Theorem 5.3, to recognize all characteristic-zero test points in Σsc_{k,E}. EP gives density on V(Ann_{R∞}M∞). Contract through local faithfulness to obtain density in X□. No assertion of Ann_{R∞}M∞=0 enters.

**Checks.** The mixed extension of EP Example 3.15 is excluded, not silently covered. For unramified E the theorem recovers the unramified simple-type density and its induced-character interpretation.

**Sources.** EP, §3.4, pp. 354–359; Theorem 5.3, pp. 364–365; BIP, Remark 6.2, p. 46.

**Direct inputs.** `CompletedCohomologyAndLocalGlobalCompatibilityPartII:PD.5/minimal-stratum-supercuspidal-set`, `CompletedCohomologyAndLocalGlobalCompatibilityPartII:PD.2/smooth-type-capture`, `CompletedCohomologyAndLocalGlobalCompatibilityPartII:PD.3/local-faithfulness`, `CompletedCohomologyAndLocalGlobalCompatibilityPartII:PD.4/density-from-testing`, `CompletedCohomologyAndLocalGlobalCompatibilityPartII:PD.0/unconditional-patching-input`, `CompletedCohomologyAndLocalGlobalCompatibilityPartII:PD.2/testing-modules`, `SmoothRepresentationsOfLocalGroups:SR.3`, `CompletedCohomologyAndLocalGlobalCompatibility:R31.5/type-specialised-patched-modules`.

**Layer acceptance.** Discharge the relative crystalline chart and smooth-type interfaces. For each prescribed τ verify the nonempty type and capture/component certificate before asserting full support. All targets are planned; the layer is not declared closed.

## Dependency boundaries and source corrections

The plan is complete at target level: each stated target has a node and every prerequisite chain reaches a pinned declaration, an existing node or a precisely recorded supplier boundary. This does not make the plan closed. All six layers have status **planned**; the following seven gaps and ten requests are retained for independent review and the owning roadmaps.

**G1. Unrestricted local components need their owning extension.** The BIP component and reducedness theorems are read through their application in Lemma 6.3; their proofs and formal interfaces belong to the proposed local-ring components/normality extension. R08.1 does not yet supply them. Do not replace these by the tame Part II or Kisin fixed-type components. Consuming targets: `1/patched-components`, `3/local-faithfulness`.

**G2. Finite-coefficient algebraic representations.** ClassicalGroups Layer 3 is over C and LieHighestWeight is a Lie-algebra roadmap. Neither alone supplies rational GL_d representations and semisimplicity over finite L, or central-character realization for all labelled integer exponents. This transport must be added by the representation-theory owner. Consuming targets: `0/local-point-sets`, `2/algebraic-capture`, `2/fixed-centre-evaluation`, `2/fixed-centre-projective-detection`.

**G3. Smooth crystalline and minimal-stratum types.** The Bernstein and induction framework exists as a plan, but no exact supplier node was found for the CEGGPS/EP types, finite coefficient descent and arithmetic recognition. The Bushnell–Kutzko book proofs behind EP are not read in this run and are not silently treated as established. Keep the precise source-bound request and commission its owning Part II. Consuming targets: `2/smooth-type-capture`, `4/principal-series-density`, `4/unramified-supercuspidal-density`, `5/prescribed-type-support`, `5/minimal-stratum-supercuspidal-set`, `5/minimal-stratum-density`.

**G4. Compact projectives and analytic-vector bridge.** The general and fixed-centre projective decomposition used by EP/BIP needs the L1 categorical interface. DPS Corollary 7.8 needs LR.1 density of Π^la in Π before its application in Lemma 6.7; its statement alone does not give Banach density. Continuous nonsmooth finite-index induction is also requested from LR.0. Consuming targets: `2/capture`, `2/testing-modules`, `2/fixed-centre-evaluation`, `2/fixed-centre-projective-detection`.

**G5. Completed tensor and generic-fibre refinements.** The existing completed-tensor node covers geometric-domain pairs. Its finite splitting, reduced equidimensional tensor-product and generic Jacobson interfaces must be checked in the algebra owner against the citations in BIP Lemma 6.3 and EP Proposition 2.11. No independent proof of those extension inputs is claimed here. Consuming targets: `1/patched-components`, `3/hits-each-local-component`, `4/density-from-testing`.

**G6. Relative crystalline chart interface.** The refined-space node provides orderings and a smooth flag map; the explicit relative-period-module base-change interface used in Nakamura Lemma 4.2 has not been matched to a supplier node. Benign openness is planned with that exact request, not declared closed. Consuming targets: `5/benign-open`.

**G7. Inherited globalisation boundary.** The parent R31.5 module is imported as planned, including its stated suitable adequate CM globalisation and definite-unitary completed-homology suppliers. Its uninspected globalisation leaves remain a boundary of this plan. The Emerton–Gee lift-existence theorem is explicitly source-bound and does not itself discharge those parent leaves. Consuming targets: `0/unconditional-patching-input`, `1/patched-components`, `3/local-faithfulness`.

**Supplier requests.**

- `tauceti:TauCetiRoadmap/ClassFieldTheory#layer-7-the-absolute-local-artin-map-its-normalizations-and-conductors`: Use the existing arithmetic Artin map, geometricArtinMap=Art∘inversion, the valuation/Frobenius normalization and local unit decomposition. Identify G_F^ab/tors with Ẑ×Z_p^{[F:Q_p]}; no new local class field theory is planned here.
- `tauceti:TauCetiRoadmap/RepresentationTheory/ClassicalGroups#layer-3-maximal-torus-weights-and-the-highest-weight-classification`: Supply the characteristic-zero finite-coefficient transport needed for split (Res_{F/Q_p}GL_d)_L: rational irreducibles indexed by dominant integral labelled weights, complete reducibility, tensor products and duals, and existence of an irreducible with any prescribed algebraic central character. The existing ClassicalGroups roadmap is over C; a finite-coefficient interface or its Part II is a recorded gap, not claimed present in that stage.
- `PotentialAutomorphyInfrastructurePartII:PL.1`: Take Emerton–Gee Theorem 1.2.2 (author copy p. 3, checked against Definition 6.4.2 and Theorem 6.4.4, pp. 168–169) as the explicit source-bound existence of a finite-coefficient potentially diagonalizable regular potentially crystalline lift of arbitrary ρ̄. PL.1 already owns the connecting/diagonalizability predicates; the stack proof is not replanned here.
- `LocalGaloisDeformationRings:R08.1`: Needed local-component extension: R□_{ρ̄} is reduced O-flat equidimensional; after coefficients contain the relevant roots, its minimal primes are exactly the determinant restrictions χ on μ_{p∞}(F), with geometrically integral R□,χ_{ρ̄} (BIP Corollaries 4.19, 4.21–4.22). The proposed LocalGaloisDeformationRingsPartIIComponentsAndNormality route owns this extension; no suitable node currently exists, and the existing LocalGaloisDeformationRingsPartII has a different tame/Kisin-chart scope.
- `DeformationAndDerivedPatchingAlgebra:R03.4`: Extend the existing completed-tensor node by the precise BIP Lemma 6.3 inputs: completed tensor products of complete local O-flat reduced equidimensional factors remain reduced O-flat equidimensional; after finite coefficient extension each auxiliary minimal-prime quotient becomes geometrically integral. Also expose the Jacobson generic-fibre theorem for complete local noetherian O-algebras and finiteness of its closed-point residue extensions. Geometrically integral component pairs and contraction use the already named tensor node.
- `SmoothRepresentationsOfLocalGroups:SR.3`: Provide source-bound finite-coefficient type interfaces: CEGGPS Theorem 3.7 and §3.13 for the crystalline K-type σ(τ), with N=0 recognition and coefficient descent; EP §3.3 principal-series Vχ and §3.4 hereditary orders, simple characters C(m,α), η(θ), V(α,θ), their distinct-isomorphism indexing, intertwiners, dimensions and type recognition Proposition 3.19 (wild simple-stratum statement; tame induction only). Together with the parent local–global compatibility, supply the reduced O-flat faithful testing quotients of EP Theorem 5.3. SR.3 provides the Bernstein framework but does not yet plan these types; the extension is recorded as a supplier gap, not attributed to the unrelated SR.5 integral Whittaker layer.
- `PadicMeasuresIwasawaAlgebras:L1`: Use completed group rings for general compact p-adic analytic H, their continuous action universal property and finite-index restriction. Supply the compact-projective categorical interface used in EP Lemma 2.8: projectives are products of indecomposable summands of O[[H]], with its fixed-central-character quotient version. Existing ring/measure construction is imported; the categorical addition is a recorded gap.
- `LocallyAnalyticRepresentationsOfLocalGroups:LR.1`: For an admissible unitary Banach representation of a compact p-adic analytic group, define its locally Q_p-analytic vectors and prove they are dense in the Banach space. Apply it only to finite summands of Cδ(K,L)^m; DPS Corollary 7.8 itself concludes density in Π^la. LR.1 currently does not state this Banach-to-analytic density bridge, so it remains a supplier gap.
- `LocallyAnalyticRepresentationsOfLocalGroups:LR.0`: Supply continuous finite-index induction and the Frobenius adjunction for finite-dimensional continuous H-representations, including nonsmooth algebraic V; this is not inferred solely from the smooth SR.2 adjunction. Use it in comparing general H-testing modules with K-tests.
- `TriangulineVarietyAndItsLocalModel:G`: Extend the existing refined-crystalline-space interface with relative Dcris and filtration base change on fixed-weight crystalline charts and the flag-map generic-position argument of Nakamura Lemma 4.2, pp. 120–122, yielding EP Proposition 6.9 benign density on each nonempty component. The refined space and noncriticality themselves are already imported by node id.

The source corrections change the argument where it is used, rather than adding hypotheses to the final density theorem:

**E1. BIP, Proof of Lemma 6.5, pp. 47–48, published 2023 PDF.** The explicit algebraic-on-units character takes value 1 on ϖ_F; the proof then asserts ψκ^{-1}≡1 modulo ϖ, including at the uniformizer. Multiply that crystalline character by the unramified character taking ϖ_F to κ(ϖ_F). Its unit restriction and torsion matching stay the same, and its residual uniformizer value now matches κ. Use the already corrected PadicHodgeTheory crystalline-character-lift-interface. For F=Q_5 and an unramified κ with κ(5) the Teichmüller lift of 2, the printed construction has ψ(5)=1 whereas κ(5) mod 5=2. Matching torsion fixes the residue character on units but not its unramified factor. The lemma remains valid. Status: Already recorded and confirmed as PAPER-BOCKLE-IYENGAR-PASKUNAS-23/E7 in the atlas extraction review; no mathematical published correction located.

**E2. BIP, Proof of Theorem 6.8, p. 49, published 2023 PDF.** From the closure of a union of algebraic test supports being a union of components, the proof places the entire support of one chosen test inside a single irreducible component. Choose a characteristic-zero point y of its nonzero fixed-ψ fibre and then choose a component of V(Ann M∞) through y, using the imported EP support theorem. The uniqueness of the χ-component at y gives the needed contraction. No whole-support containment is needed. A subset of a union of components can meet more than one component; for example Spec L[x,y]/(xy) itself is not contained in either component. The stated union conclusion alone does not justify the stronger containment. The component-through-y argument proves the theorem with the available inputs. Status: new

**E3. EP, Lemma 2.6, pp. 343–344; Lemma 2.9, p. 344; Corollary 3.2, p. 351, published 2020 PDF.** Tensor stability of capture is stated for a finite-dimensional W without excluding W=0. Require W≠0 in each assertion deducing capture of M or of all projectives after tensoring the test family by W. Take nonzero M=O and H={1}. The trivial L-representation captures O, but tensoring with W=0 gives only zero testing spaces and common kernel O. In Lemma 2.6, the premise with M⊗0=0 is vacuous; concluding M=Q requires the positive rank of the lattice. Status: new

The BIP affiliation corrigendum (DOI 10.1017/fmp.2024.3) does not make a mathematical change. The two newly recorded issues require independent verification; no finding has been sent to the authors. The plan does not claim that R∞ acts faithfully. If every auxiliary factor is geometrically integral, the component argument can give that stronger conclusion; BIP Remark 6.9, p. 50, explains why arbitrary auxiliary components are a different problem. The stack-based sequel removing the prime restriction for crystalline density is outside this patched argument and remains with its local/stack owners.

## Ownership of the other continuations

The issue combines five paper routes, but they do not form one construction chain. The BIP patched-density route is the first independent direction and is fully planned here. The packet retains an item-by-item map of its twenty routed items: general patching and EP support go to parent R31.5, the corrected crystalline-character result goes to R06.2, and the genuinely new density applications go to PD.0–PD.5.

The Ding-25, Newton–Thorne-21 and Breuil–Hellmann–Schraen-19 routes retain the separate owner **LocalGlobalCompatibilityPartIIEigenvarietyCompanions**. Their combined direction includes patched locally analytic constituents, local-model companion points and classicality; Ding’s universal and minimal constituents with their Hodge-parameter action; and Newton–Thorne’s Jacquet eigenvarieties without an Iwahori restriction at p. Its design must reconcile all three briefs and import parent R31.5 patching. None of those targets is claimed planned by this density document. The packet preserves all 64 routed item ids and the exact extraction paths.

The Pan-26 route retains **LocallyAnalyticCompletedCohomology**, whose existing LA.0–LA.12 layers own modular-curve locally analytic vectors, the Hodge–Tate-period-map geometry and the resulting classicality and finiteness statements. The packet retains its 216 item ids. This respects the existing routing correction and avoids constructing the same geometry here. Those four companion/Pan source papers have not been read for a mathematical design in this run; their extraction briefs are used only to preserve ownership and scope.

The purely local BIP components/normality extension and a finite-coefficient smooth-type extension are also proposed under their existing local and smooth-representation parents. Their structures are never recreated as automorphic definitions here. The published source statements used at the boundary are identified exactly so that independent review can distinguish a sourced theorem from a completed supplier plan.

## Pinned-library comparison and suggested signatures

The baseline is Mathlib `082e2d37e8b0463410cdb532e111cd43d5a66174` and Tau Ceti `f790474821cf4256814db967cb154e7af3d0c369`. The reviewed AUDIT-31 marks the parent patching, completed cohomology and arithmetic support targets absent at those pins. Its audit was checked against the actual pinned source trees, and current Tau Ceti was also searched. Neither tree contains these compact Iwasawa-module, Galois-deformation, p-adic Hodge or capture constructions. Unrelated occurrences of density in measure theory or of capture in geometry do not supply them.

The current upstream roadmaps were checked in addition to the atlas snapshot, including the nine post-snapshot Suggested.lean files listed by WORKERS.md. LocalGaloisGroups supplies the roots-of-unity and cyclotomic infrastructure relevant to determinant torsion, and is reused. Current ClassFieldTheory and ClassicalGroups were read at the specific stages named above. The existing general group-theoretic and arithmetic infrastructure is not planned twice.

The following native declarations have their actual statements read at the pins. `Module.annihilator`, `Module.mem_annihilator`, `Module.comap_annihilator` and `Module.annihilator_eq_bot` in Mathlib/RingTheory/Ideal/Maps.lean supply annihilator ideals, scalar detection and contraction. `PrimeSpectrum.zeroLocus` and `PrimeSpectrum.vanishingIdeal` in Mathlib/RingTheory/Spectrum/Prime/Basic.lean supply the closed set and its ideal. The existing `PrimeSpectrum.zeroLocus_vanishingIdeal_eq_closure` in the corresponding Topology.lean supplies the closure comparison; `zeroLocus_eq_univ_iff` identifies the nilradical obstruction. `LinearMap.ker` in Mathlib/Algebra/Module/Submodule/Ker.lean and `FaithfulSMul` in Mathlib/Algebra/Group/Action/Faithful.lean supply the algebraic kernel and faithful-action vocabulary. These baseline results are imported, not counted as new arithmetic results.

The suggested file follows the compact shape required by WORKERS.md. It contains no new data definitions. It states the two algebraic forms of `PD.2/capture-scalar-detection` as **endomorphism_eq_zero_of_test_kernels** and **scalar_eq_zero_of_test_kernels**. Its **dense_image_of_comap_vanishingIdeal_eq_annihilator** is the geometric conclusion of PD.4 once the arithmetic argument has computed the contracted vanishing ideal. Four native-carrier examples check identity/zero kernels, the empty family and the existing vanishing-ideal density comparison. These are signature checks, not a formalisation of BIP.

The omission ledger is exhaustive, including every API and test attached to an omitted object:

| README targets | Missing pinned carriers; treatment in Suggested.lean |
| --- | --- |
| PD.0, both targets | Universal framed deformations, Galois point specialisations and potentially diagonalizable lifts; full statements stay here. |
| PD.1, all three targets | Patched rings, determinant components and crystalline characters; no replacement by abstract proposition fields. |
| PD.2 except scalar detection | Compact continuous Iwasawa modules, Schikhof/representation categories, algebraic and smooth types, and locally analytic Banach vectors. The associated API/test lists and key comparison theorems stay here. |
| PD.3, both targets | M∞ and its actual deformation action are unavailable; the local faithfulness theorem stays here. |
| PD.4, all four full arithmetic targets | The arithmetic testing criterion and three point sets need those carriers. Only its contracted-ideal geometric conclusion is stated in Lean. |
| PD.5, all seven targets | Refined crystalline periods, types and simple-stratum occurrence are unavailable; the definitions, APIs, tests and qualified density statements stay here. |

Every statement in the Lean file uses genuine pinned carriers. The six mathematical objects with APIs have 35 API items and 24 discriminating tests in this document and the packet. Their absence from Lean follows the shape requirement and the missing carriers, not a weakening of their specifications.

## References read

Source locators above use published pagination for BIP, EP and Nakamura, and the explicitly identified author/preprint pagination for CEGGPS, DPS, EG and ST. Public files were read on 2026-10-19; their SHA-256 hashes are recorded in the packet. No source passages are reproduced in this document.

- **BIP.** Gebhard Böckle, Ashwin Iyengar and Vytautas Paškūnas, [On local Galois deformation rings](https://www.cambridge.org/core/services/aop-cambridge-core/content/view/24192052AB575F076F7D40B4AFF4862E/S2050508623000252a.pdf/on_local_galois_deformation_rings.pdf). Forum of Mathematics, Pi 11 (2023), e30, published PDF, pp. 1–54. Read: §6, pp. 45–50; Corollaries 4.19, 4.21–4.22 used through the local-ring supplier.
- **EP.** Matthew Emerton and Vytautas Paškūnas, [On the density of supercuspidal points of fixed regular weight in local deformation rings and global Hecke algebras](https://www.numdam.org/item/10.5802/jep.119.pdf). Journal de l’École polytechnique — Mathématiques 7 (2020), pp. 337–371, published PDF. Read: §§2.1–2.2, pp. 342–346; §2.5, pp. 349–350; §§3.1, 3.3–3.4, pp. 351–358; §§5.2–6, pp. 362–370.
- **CEGGPS.** Ana Caraiani, Matthew Emerton, Toby Gee, David Geraghty, Vytautas Paškūnas and Sug Woo Shin, [Patching and the p-adic local Langlands correspondence](https://arxiv.org/pdf/1310.0831v5). arXiv:1310.0831v5, 1 July 2016, author pagination; published Camb. J. Math. 4 (2016), pp. 197–287. Read: §1.8, pp. 12–15; §2.1, pp. 15–17; Theorem 3.7, p. 41; §4, pp. 49–50; Lemma 4.18, pp. 65–66; §4.22 through Corollary 4.26, pp. 67–70.
- **DPS.** Gabriel Dospinescu, Vytautas Paškūnas and Benjamin Schraen, [Infinitesimal characters in arithmetic families](https://arxiv.org/pdf/2012.01041v1). arXiv:2012.01041v1, 2 December 2020, author pagination. Read: Example 5.13 and Remark 5.14, pp. 37–38; §7, Theorem 7.4 and Corollaries 7.5–7.8, pp. 40–43.
- **EG.** Matthew Emerton and Toby Gee, [Moduli stacks of étale (phi, Gamma)-modules and the existence of crystalline lifts](https://www.math.uchicago.edu/~emerton/pdffiles/moduli.pdf). Author copy of Annals of Mathematics Studies 215 (2023). Read: Theorem 1.2.2, p. 3; Definition 6.4.2 and Theorem 6.4.4, pp. 168–169; source-bound existence input only.
- **ST.** Peter Schneider and Jeremy Teitelbaum, [Banach space representations and Iwasawa theory](https://arxiv.org/pdf/math/0005066v1). arXiv:math/0005066v1, author pagination; published Israel J. Math. 127 (2002), pp. 359–380. Read: Lemma 2.1, Corollary 2.2 and Theorem 2.3, pp. 10–12.
- **NAK.** Kentaro Nakamura, [Zariski density of crystalline representations for any p-adic field](https://www.ms.u-tokyo.ac.jp/journal/pdf/jms210103.pdf). J. Math. Sci. Univ. Tokyo 21 (2014), pp. 79–127, published PDF. Read: Lemma 4.2 and its proof, pp. 120–122; restricted use for the benign-open input.
