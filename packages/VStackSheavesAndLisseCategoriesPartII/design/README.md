# Roadmap: artin v-stacks, solid and lisse coefficient categories, part II — decent v-stacks, cohomological correspondences and the Lefschetz–Verdier trace formula

**Summary.** This Part II of Artin v-stacks, solid and lisse coefficient categories constructs the exceptional functors Rf_! and Rf^! for fine maps between decent v-stacks, the stacky maps such as classifying stacks of locally pro-p groups that the parent roadmap cannot treat, and builds on them the symmetric monoidal 2-category of cohomological correspondences, dualizability as universal local acyclicity, characteristic classes on inertia stacks, the relative Lefschetz–Verdier trace formula, local terms and their base change, trace distributions of admissible representations, a Künneth formula for characteristic classes and universal local terms for group actions, after Gulotta–Hansen–Weinstein, Lu–Zheng and Hansen–Kaletha–Weinstein.

This roadmap starts where *Artin v-stacks, solid and lisse coefficient categories* (`VStackSheavesAndLisseCategories`) stops. That roadmap defines Artin v-stacks, descends étale coefficients along smooth charts, constructs exceptional pullback for cohomologically smooth stacky maps and partial compact-support functors (its VS0), and develops universally locally acyclic (ULA) sheaves with their duality theory (its VS1). It does not construct an exceptional pushforward Rf_! for non-representable maps such as the structure map [S/G] → S of a classifying stack. Here the exceptional functors are constructed for all fine maps of decent v-stacks, following Gulotta–Hansen–Weinstein, and the Lefschetz–Verdier trace formalism of Hansen–Kaletha–Weinstein §4 and §5.3 is built on them, following Lu–Zheng's symmetric monoidal 2-category of cohomological correspondences. The end theorems are the relative Lefschetz–Verdier trace formula for v-stacks (Layer VS10), the identification of characteristic classes of admissible objects on classifying stacks with trace distributions, the Künneth formula for characteristic classes, and the identification of characteristic classes on quotient stacks [X/G] with universal local terms (Layer VS11).

## Scope and ownership

This roadmap owns: decent v-stacks, fine and proper nice maps and classifying stacks of group diamonds as v-stacks (VS6); the exceptional functors Rf_!, Rf^! for fine maps, the six-functor identities, relative dualizing complexes and integration (VS7); the description of sheaves on constant locally profinite diamonds and on classifying stacks of locally pro-p groups, with their four operations, distributions and the module of Haar measures (VS8); dualizable objects and categorical traces in symmetric monoidal 2-categories, the 2-categories of correspondences and of cohomological correspondences of decent v-stacks, trace classes and characteristic classes (VS9); the Lefschetz–Verdier trace formula, local terms and their base change and perfect-scheme comparison (VS10); admissibility, trace distributions, based cohomological correspondences, the Künneth formula and universal local terms (VS11).

It leaves to other roadmaps, and imports from them:

- Artin v-stacks, smooth descent of D_ét, exceptional pullback for smooth stacky maps, ULA sheaves and their duality (Fargues–Scholze IV.1–IV.2), and the identification of sheaves on [∗/G] with smooth representations (Fargues–Scholze V.1.1): *Artin v-stacks, solid and lisse coefficient categories*, VS0, VS1, VS4, VS5.
- Scholze's six operations for maps representable in locally spatial diamonds, cohomological smoothness, dualizing complexes, Haar-normalised averaging for profinite quotients: *Six operations, cohomological smoothness and biduality* (`DiamondSixOperations`), S0–S5.
- Diamonds, small v-stacks, spatial and locally spatial diamonds, relative representability and the diamond of an analytic adic space: *Diamonds and v-stacks* (`DiamondsAndVStacks`), D4–D6.
- Quasicategories, derived ∞-categories of sheaves, hypercover descent, coherent diagrams, mates and adjoint functor theorems, symmetric monoidal ∞-categories, and perfect = compact = dualizable modules: *Enhanced derived categories of sheaves* (`EnhancedDerivedSheaves`), E0–E3 and E5.
- Smooth representations, the derived smooth category, derived invariants, derived smooth duality and admissible complexes, compact generation by compact induction, C_c^∞, ring-valued Haar measures, integration and convolution, smooth and compact induction, the modulus character: the Tau Ceti roadmap *Smooth representations of local groups*, layers SR.0, SR.0d, SR.1 and SR.2 (cited by the identifiers of its atlas plan).
- Cohomological correspondences of schemes, their trace maps and local terms: *Étale duality, cycle classes and perverse sheaves* (`EtaleDualityAndPerverseSheaves`), EDC.8.
- The functor from perfect schemes to v-sheaves and the comparison c_X^* of Scholze §27: *Adic coefficients and comparison with schemes* (`AdicCoefficientsAndComparisons`), L1 and L3; perfection as a universal homeomorphism with étale invariance: *Scheme, stack, cohomology and intersection foundations*, SF.0.

Not in scope: the computation of local terms of Satake sheaves on affine Grassmannians and the Kottwitz conjecture (Hansen–Kaletha–Weinstein §§5–6), which consume this roadmap; ℓ-adic sheaf theory on algebraic stacks; and the general ∞-categorical machinery of Liu–Zheng (enhanced operation maps, gluing of restricted nerves, DESCENT), which is general ∞-category theory and is listed under *Open inputs* below with its proposed owner.

## Conventions

- Perf is the category of perfectoid spaces of characteristic p with the v-topology; p is fixed and ℓ ≠ p.
- Λ is a commutative ring with nΛ = 0 for an integer n prime to p. D_ét(X, Λ) is Scholze's category for a small v-stack X, with its symmetric monoidal ∞-categorical enhancement; H^0(X, A) means Hom(Λ_X, A).
- Cohomologically smooth means ℓ-cohomologically smooth for every prime ℓ ≠ p (Scholze Definition 23.8), and for maps of decent v-stacks the chart-wise notion of Gulotta–Hansen–Weinstein Definition 1.3(ii).
- Decency follows the public version of Gulotta–Hansen–Weinstein (arXiv:2202.12467v1, Definition 1.1): surjective charts from locally separated locally spatial diamonds that are locally separated and cohomologically smooth. Hansen–Kaletha–Weinstein restate it with different wording and numbering; see *Corrections to the sources*.
- Proper means proper in the sense of Scholze Definition 18.1; proper maps of v-stacks are 0-truncated. Proper 2-morphisms of correspondences and proper pushforwards are taken among proper nice maps: proper, representable in locally spatial diamonds and locally of finite dim.trg (Layer VS6 *proper-nice-maps*). This covers every use in Hansen–Kaletha–Weinstein.
- Duality data follow Mathlib's orientation: coev : 1 → X ⊗ X^∨ and ev : X^∨ ⊗ X → 1, and tr(e) = ev ∘ σ ∘ (e ⊗ id) ∘ coev with σ the symmetry. A 2-category is a bicategory (weak 2-category); ΩC = End(1).
- In a correspondence X ← C → X′ the left leg is c₁ and the right leg c₂; a cohomological correspondence is u : c₁^*A → c₂^!A′. Fix(c) = C ×_{X ×_S X} X, In_S(X) = X ×_{X ×_S X} X.
- For a locally profinite set T and discrete Λ, C(T, Λ) is the ring of locally constant functions and C_c(T, Λ) its ideal of compactly supported ones. For a locally profinite group G, Haar(G, Λ) is the module of left Haar measures, on which G acts by the modulus character. G_S, T_S are constant diamonds over S, and S denotes a geometric point Spd C or Spd k when Layer VS8 or VS11 says so.

## Exact supplier contracts

### From Mathlib

- `CategoryTheory.MonoidalCategory` (Mathlib/CategoryTheory/Monoidal/Category.lean): Monoidal categories with tensor product, unit, associator and unitors.
- `CategoryTheory.SymmetricCategory` (Mathlib/CategoryTheory/Monoidal/Braided/Basic.lean): Symmetric monoidal categories: a braiding whose square is the identity.
- `CategoryTheory.ExactPairing` (Mathlib/CategoryTheory/Monoidal/Rigid/Basic.lean): An exact pairing of X and Y: coevaluation 𝟙 ⟶ X ⊗ Y and evaluation Y ⊗ X ⟶ 𝟙 satisfying the two triangle identities; this is the 1-categorical duality datum of Lu–Zheng Definition 1.1 with Y the dual of X.
- `CategoryTheory.ExactPairing.coevaluation` (Mathlib/CategoryTheory/Monoidal/Rigid/Basic.lean): The coevaluation 𝟙 ⟶ X ⊗ Y of an exact pairing (notation η_).
- `CategoryTheory.ExactPairing.evaluation` (Mathlib/CategoryTheory/Monoidal/Rigid/Basic.lean): The evaluation Y ⊗ X ⟶ 𝟙 of an exact pairing (notation ε_).
- `CategoryTheory.HasRightDual` (Mathlib/CategoryTheory/Monoidal/Rigid/Basic.lean): A chosen right dual of an object together with an exact pairing.
- `CategoryTheory.Bicategory` (Mathlib/CategoryTheory/Bicategory/Basic.lean): Bicategories (weak 2-categories): the carrier for Lu–Zheng's 2-categories, without monoidal structure.
- `CategoryTheory.Bicategory.Adjunction` (Mathlib/CategoryTheory/Bicategory/Adjunction/Basic.lean): Adjunctions between 1-morphisms of a bicategory: unit 𝟙 ⟶ f ≫ g, counit g ≫ f ⟶ 𝟙 and the two triangle identities; this is Lu–Zheng's right adjointability (§1.2).
- `CategoryTheory.Pseudofunctor` (Mathlib/CategoryTheory/Bicategory/Functor/Pseudofunctor.lean): Pseudofunctors between bicategories, used for the pseudo-functoriality of the exceptional functors.
- `LocallyConstant` (Mathlib/Topology/LocallyConstant/Basic.lean): Locally constant functions X → Y; with Y a ring, LocallyConstant X Λ is the ring C(X, Λ) of continuous functions to the discrete ring Λ.
- `LocallyConstant.charFn` (Mathlib/Topology/LocallyConstant/Algebra.lean): The characteristic function of a clopen set as a locally constant function with values in a MulZeroOneClass; this is 1_U for U compact open in a Hausdorff space.
- `TopologicalSpace.CompactOpens` (Mathlib/Topology/Sets/Compacts.lean): The type of compact open subsets of a topological space.
- `Module.Dual` (Mathlib/LinearAlgebra/Dual/Defs.lean): The dual module Hom_R(M, R).
- `Module.Dual.eval` (Mathlib/LinearAlgebra/Dual/Defs.lean): The canonical map M → M** sending v to evaluation at v.
- `IsDiscreteValuationRing` (Mathlib/RingTheory/DiscreteValuationRing/Basic.lean): Discrete valuation rings: local principal ideal domains that are not fields.
- `IsLocalRing.maximalIdeal` (Mathlib/RingTheory/LocalRing/MaximalIdeal/Defs.lean): The maximal ideal of a local ring.
- `Module.Finite` (Mathlib/RingTheory/Finiteness/Defs.lean): Finitely generated modules.
- `LinearMap.trace` (Mathlib/LinearAlgebra/Trace.lean): The trace of an endomorphism of a module with a finite basis (zero otherwise).
- `FGModuleCat` (Mathlib/Algebra/Category/FGModuleCat/Basic.lean): The category of finitely generated modules, a full monoidal subcategory of ModuleCat.
- `FGModuleCat.rightRigidCategory` (Mathlib/Algebra/Category/FGModuleCat/Basic.lean): Finite-dimensional vector spaces over a field form a right rigid monoidal category (the dual is the linear dual).
- `DerivedCategory` (Mathlib/Algebra/Homology/DerivedCategory/Basic.lean): The derived category of an abelian category; the 1-categorical carrier of D(Λ) (without its monoidal structure at the pin).

### From Tau Ceti

- `TauCeti.IsSmoothDiscrete` (TauCeti/RepresentationTheory/Homological/ContCohomology/SmoothDiscrete.lean): Smoothness of a representation of a topological group on a discrete module (open stabilisers), the Tau Ceti carrier the smooth-representation layers use.

### From AdicCoefficientsAndComparisons (Adic coefficients and comparison with schemes)

- `L1/char-p-scheme-diamond-and-comparison-functor` — used by VS10 *diamondification-of-scheme-correspondences*.
- `L1/comparison-pullback` — used by VS10 *diamondification-of-scheme-correspondences*.
- `L3/commutation-and-adjoints-27-1-27-3` — used by VS10 *diamondification-of-scheme-correspondences*.
- `L3/full-faithfulness-27-2` — used by VS10 *diamondification-of-scheme-correspondences*.
- `L3/internal-Hom-right-adjoint` — used by VS10 *diamondification-of-scheme-correspondences*.
- `L3/rf-shriek-comparison-27-4` — used by VS10 *diamondification-of-scheme-correspondences*, VS10 *local-terms-perfect-schemes*.

### From DiamondSixOperations (Six operations, cohomological smoothness and biduality)

- `S0/compactifiable-base-change` — used by VS6 *fine-morphism*, VS6 *fine-permanence*, VS7 *weakly-compactifiable-shriek*.
- `S0/compactifiable-cancellation` — used by VS6 *fine-morphism*, VS6 *fine-permanence*.
- `S0/compactifiable-composition` — used by VS6 *fine-morphism*, VS7 *weakly-compactifiable-shriek*.
- `S0/compactifiable-iff-separated-open` — used by VS6 *proper-nice-maps*, VS7 *prespatial-diamond*.
- `S0/compactifiable-morphism` — used by VS6 *fine-morphism*, VS7 *weakly-compactifiable-shriek*.
- `S0/eligible-morphism` — used by VS6 *proper-nice-maps*.
- `S1/compactification-cd-bound` — used by VS7 *prespatial-cohomological-amplitude*.
- `S1/lower-shriek-base-change-qc` — used by VS7 *weakly-compactifiable-shriek*.
- `S1/lower-shriek-composition-qc` — used by VS7 *weakly-compactifiable-shriek*.
- `S1/lower-shriek-direct-sums-qc` — used by VS7 *weakly-compactifiable-shriek*.
- `S1/lower-shriek-quasicompact` — used by VS6 *proper-nice-maps*, VS7 *weakly-compactifiable-shriek*, VS7 *proper-nice-shriek-is-pushforward*.
- `S1/projection-formula-qc` — used by VS7 *weakly-compactifiable-shriek*.
- `S1/proper-dim-zero-classification` — used by VS8 *constant-locally-profinite-diamond-operations*.
- `S1/proper-dim-zero-topological-comparison` — used by VS8 *constant-locally-profinite-diamond-operations*.
- `S1/spatial-compactification-cd-bound` — used by VS7 *prespatial-cohomological-amplitude*.
- `S2/exchange-pasting-coherence` — used by VS7 *proper-nice-shriek-is-pushforward*.
- `S2/lower-shriek` — used by VS7 *fine-shriek-functors*, VS7 *proper-nice-shriek-is-pushforward*, VS8 *constant-locally-profinite-diamond-operations*.
- `S2/lower-shriek-base-change` — used by VS7 *fine-shriek-functors*.
- `S2/projection-formula` — used by VS7 *fine-shriek-functors*.
- `S3/adjunction-calculus` — used by VS7 *fine-six-functor-identities*.
- `S3/upper-shriek` — used by VS7 *fine-shriek-functors*, VS8 *constant-locally-profinite-diamond-operations*.
- `S3/upper-shriek-internal-hom` — used by VS7 *fine-six-functor-identities*.
- `S3/upper-shriek-pushforward-exchange` — used by VS7 *fine-six-functor-identities*.
- `S3/verdier-duality-lower-shriek` — used by VS7 *fine-six-functor-identities*.
- `S4/cohomologically-smooth` — used by VS6 *decent-v-stack*, VS6 *fine-cohomologically-smooth*.
- `S4/dualizing-complex` — used by VS7 *relative-dualizing-complex*.
- `S4/invertible-object` — used by VS7 *fine-smoothness-and-dualizing-objects*, VS7 *shriek-and-invertible-objects*.
- `S4/smooth-base-change` — used by VS7 *fine-smoothness-and-dualizing-objects*.
- `S4/smooth-composition` — used by VS6 *decent-fibre-products*, VS6 *fine-cohomologically-smooth*.
- `S4/smooth-descent-along-smooth-surjection` — used by VS6 *fine-cohomologically-smooth*.
- `S4/smooth-stable-under-base-change` — used by VS6 *decent-fibre-products*, VS6 *fine-cohomologically-smooth*.
- `S4/smooth-twisted-pullback` — used by VS7 *enhanced-operations-for-qcqs-v-sheaves*, VS7 *fine-smoothness-and-dualizing-objects*.
- `S4/smooth-universally-open` — used by VS6 *fine-morphism*, VS6 *fine-permanence*.
- `S4/smooth-upper-shriek-base-change` — used by VS7 *fine-smoothness-and-dualizing-objects*.
- `S5/analytic-smooth-is-cohomologically-smooth` — used by VS6 *decent-v-stack-examples*.
- `S5/free-quotient-smooth` — used by VS8 *classifying-stack-is-decent*, VS8 *classifying-stack-structure-map*.
- `S5/profinite-quotient-upper-shriek` — used by VS8 *constant-locally-profinite-diamond-operations*.

### From DiamondsAndVStacks (Diamonds and v-stacks)

- `D4/compact-hausdorff-diamonds` — used by VS8 *constant-locally-profinite-diamond-operations*.
- `D4/diamond` — used by VS6 *locally-separated-representability*, VS7 *prespatial-diamond*.
- `D4/small-quotients-and-underlying-spaces` — used by VS6 *classifying-stack-of-group-diamond*.
- `D4/small-v-sheaves-and-small-v-stacks` — used by VS6 *locally-separated-representability*, VS6 *decent-v-stack*, VS6 *classifying-stack-of-group-diamond*, VS6 *two-morphism-adjunction-compatibility*.
- `D5/berkovich-quotient` — used by VS7 *prespatial-cohomological-amplitude*.
- `D5/injection-and-finite-etale-permanence` — used by VS6 *locally-separated-representability*, VS7 *prespatial-diamond*.
- `D5/relative-representability` — used by VS6 *locally-separated-representability*, VS6 *decent-v-stack*, VS6 *classifying-stack-of-group-diamond*, VS6 *proper-nice-maps*.
- `D5/spatial-diamond` — used by VS6 *locally-separated-representability*, VS6 *decent-v-stack*, VS7 *prespatial-diamond*.
- `D6/etale-site-comparison` — used by VS6 *decent-v-stack-examples*.
- `D6/gluing-and-the-diamond-functor` — used by VS6 *decent-v-stack-examples*.

### From EnhancedDerivedSheaves (Enhanced derived categories of sheaves)

- `E1/derived-internal-hom` — used by VS7 *fine-six-functor-identities*.
- `E2/unbounded-hypercover-descent` — used by VS6 *two-morphism-adjunction-compatibility*, VS7 *enhanced-operations-for-qcqs-v-sheaves*.
- `E3/adjoint-functor-theorem-and-localisations` — used by VS7 *enhanced-operations-for-qcqs-v-sheaves*, VS7 *fine-shriek-functors*.
- `E3/coherent-diagrams-of-ringed-topoi` — used by VS7 *enhanced-operations-for-qcqs-v-sheaves*.
- `E3/mates-and-beck-chevalley` — used by VS6 *two-morphism-adjunction-compatibility*, VS7 *fine-six-functor-identities*.
- `E5:abstract/symmetric-monoidal-infinity-category` — used by VS7 *enhanced-operations-for-qcqs-v-sheaves*, VS9 *dualizable-object-and-trace*.
- `E5:spectra-comparison/perfect-modules` — used by VS9 *perfect-complexes-are-dualizable*.

### From EtaleDualityAndPerverseSheaves (Étale duality, cycle classes and perverse sheaves)

- `EDC.8/cohomological-correspondence-lifting` — used by VS10 *diamondification-of-scheme-correspondences*.
- `EDC.8/correspondence-pullback-and-restriction` — used by VS10 *local-terms-perfect-schemes*.
- `EDC.8/scheme-correspondence` — used by VS10 *diamondification-of-scheme-correspondences*.
- `EDC.8/trace-map-and-local-terms` — used by VS10 *local-terms-perfect-schemes*.

### From SchemeAndStackFoundations (Scheme, stack, cohomology and intersection foundations)

- `SF.0/perfection-universal-homeomorphism` — used by VS10 *local-terms-perfect-schemes*.

### From TauCetiRoadmap.SmoothRepresentationsOfLocalGroups (Smooth representations of local groups)

- `SR.0:abelian-category/averaging-projector` — used by VS11 *trace-distribution*.
- `SR.0:abelian-category/compact-open-invariants` — used by VS11 *trace-distribution*.
- `SR.0:abelian-category/unit-pro-order` — used by VS8 *haar-module*.
- `SR.0:derived-extension/compact-generation` — used by VS11 *admissible-objects-on-classifying-stacks*.
- `SR.0:derived-extension/derived-invariants` — used by VS8 *classifying-stack-structure-map*, VS11 *admissible-objects-on-classifying-stacks*.
- `SR.0:derived-extension/derived-smooth-dual` — used by VS11 *admissible-objects-on-classifying-stacks*.
- `SR.1/a-valued-haar-measure` — used by VS8 *haar-module*.
- `SR.1/convolution-algebra` — used by VS11 *trace-distribution*.
- `SR.1/integration` — used by VS11 *trace-distribution*.
- `SR.1/locally-constant-compact-support` — used by VS8 *smooth-and-complete-modules*, VS8 *locally-profinite-distributions*, VS8 *haar-module*.
- `SR.2/compact-induction` — used by VS8 *classifying-stack-operations*, VS8 *restriction-and-induction-as-operations*.
- `SR.2/frobenius-reciprocity` — used by VS8 *classifying-stack-operations*, VS8 *restriction-and-induction-as-operations*.
- `SR.2/modulus-character` — used by VS8 *haar-module*.
- `SR.2/smooth-induction` — used by VS8 *classifying-stack-operations*, VS8 *restriction-and-induction-as-operations*.

### From VStackSheavesAndLisseCategories (Artin v-stacks, solid and lisse coefficient categories)

- `VS0/artin-v-stack-definition` — used by VS6 *decent-is-artin*.
- `VS0/enhanced-smooth-descent` — used by VS6 *two-morphism-adjunction-compatibility*, VS7 *fine-shriek-functors*.
- `VS0/point-to-classifying-stack-not-smooth` — used by VS6 *fine-cohomologically-smooth*.
- `VS0/shriek-pullback-for-smooth-stacky-maps` — used by VS6 *fine-cohomologically-smooth*, VS7 *fine-smoothness-and-dualizing-objects*.
- `VS1/smooth-ula-criterion` — used by VS7 *fine-smoothness-and-dualizing-objects*, VS9 *dualizable-iff-ula*, VS11 *admissible-objects-on-classifying-stacks*.
- `VS1/ula-definition-with-constructibility` — used by VS9 *dualizable-iff-ula*.
- `VS1/ula-descent-and-smooth-locality` — used by VS9 *dualizable-iff-ula*, VS9 *characteristic-class-open-restriction*, VS11 *universal-local-term*.
- `VS1/ula-dualizability-criterion` — used by VS9 *dualizable-iff-ula*.
- `VS1/ula-for-artin-v-stacks` — used by VS9 *dualizable-iff-ula*.
- `VS1/ula-relative-adjoints-and-calculus` — used by VS9 *dualizable-iff-ula*.
- `VS4/classifying-stack-equivalence` — used by VS8 *classifying-stack-operations*.
- `VS5/ula-equals-admissibility` — used by VS11 *admissible-objects-on-classifying-stacks*.

## How to read the build

VS6 fixes the geometric objects: decent v-stacks, fine, smooth and proper nice maps, classifying and quotient stacks. VS7 constructs the exceptional functors on them: prespatial diamonds make canonical compactifications available, an enhanced operation map is built on qcqs v-sheaves and extended to decent v-stacks by Liu–Zheng's DESCENT, and the resulting functors satisfy the full six-functor calculus, with relative dualizing complexes and integration. VS8 makes the formalism concrete on the two basic examples, constant locally profinite diamonds and classifying stacks of locally pro-p groups, where the operations become operations on smooth modules and smooth representations twisted by Haar measures. VS9 is partly general category theory (traces in symmetric monoidal 2-categories, after Lu–Zheng) and partly geometric (the 2-categories Corr_S and CoCorr_S, dualizability as ULA-ness, trace and characteristic classes). VS10 proves the relative Lefschetz–Verdier trace formula and develops local terms. VS11 applies everything to classifying stacks (admissibility and trace distributions) and to quotient stacks (Künneth formula and universal local terms). VS8 and VS9 can be built in parallel once VS7 is available.

## Layer VS6: decent v-stacks and fine morphisms

Define maps representable in locally separated locally spatial diamonds and decent v-stacks (diagonal representable in locally separated locally spatial diamonds and a surjective, locally separated, cohomologically smooth chart from a locally separated locally spatial diamond), with clean charts. Prove that decent v-stacks are Artin v-stacks in the parent's sense (VS0), that fibre products of decent v-stacks are decent, and that locally separated locally spatial diamonds, diamonds of analytic adic spaces, Spd Z_p, Div¹ and the geometric points Spd C, Spd k are decent.

Define fine morphisms (charts with a locally compactifiable finite-dim.trg top map) and cohomologically smooth fine morphisms; prove stability under composition, base change and cancellation, and that a separated map representable in locally spatial diamonds is fine iff it is compactifiable of locally finite dim.trg. Construct classifying stacks [S/G] of group diamonds with their maps (torsors with commuting actions) and 2-morphisms, and quotient stacks [X/G]. Prove the compatibility of f^* ⊣ Rf_* with 2-morphisms. Define proper nice maps (proper maps of v-stacks are 0-truncated; proper nice maps are moreover representable in locally spatial diamonds), the class used for proper 2-morphisms and proper pushforwards.

Key definitions and theorems shown in the atlas: Decent v-stack, Fine morphism.

<a id="VS6-locally-separated-representability"></a>

### VS6.1 Maps representable in locally separated locally spatial diamonds (*locally-separated-representability*, definition)

A locally spatial diamond is locally separated if it has an open cover by separated locally spatial diamonds. A map f : X → Y of small v-stacks is representable in locally separated locally spatial diamonds if for every locally separated locally spatial diamond T with a map T → Y the fibre product X ×_Y T is a locally separated locally spatial diamond. It suffices to test separated spatial diamonds T. Such maps are representable in diamonds; the class is stable under composition and base change; quasicompact injections belong to it; and if g ∘ f belongs to it with g 0-truncated and quasiseparated, then f belongs to it.

*Hypotheses.*

- X, Y are small v-stacks.
- Everything lives over the category Perf of perfectoid spaces of characteristic p with its v-topology.

*Construction or proof.*

1. Reduce the test objects to separated spatial T: a locally separated locally spatial T is covered by separated spatial opens, and both properties of the fibre product are local on T (GHW22 remark after Definition 4.1).
2. Representability in diamonds: test against affinoid perfectoid T, which are separated spatial diamonds, so X ×_Y T is a diamond (GHW22 Proposition 4.3(i), first claim).
3. Composition and base change are formal from the definition (GHW22 Proposition 4.3(ii)).
4. Quasicompact injections into a locally spatial diamond have locally spatial source (Sch17 Proposition 11.20, recorded by DiamondsAndVStacks D5); separatedness passes to subobjects (GHW22 Proposition 4.3(iii)).
5. For g 0-truncated and quasiseparated, X ×_Y T → X ×_Z T is a base change of the quasicompact injection Y → Y ×_Z Y, so the previous step applies (GHW22 Proposition 4.3(iv)).

*Source.* Gulotta–Hansen–Weinstein, Definition 4.1 and the paragraph after it, p. 19: Defines representability in locally separated locally spatial diamonds by testing against locally separated locally spatial diamonds, and notes that separated spatial test objects suffice. Gulotta–Hansen–Weinstein, Warning 4.2 and Proposition 4.3, pp. 19–20: Records the permanence properties (representability in diamonds, composition, base change, quasicompact injections, cancellation against 0-truncated quasiseparated maps); the claim that a quasiseparated such map is representable in locally spatial diamonds is left as an exercise there.

*Needs:* DiamondsAndVStacks D4 *small-v-sheaves-and-small-v-stacks*; DiamondsAndVStacks D4 *diamond*; DiamondsAndVStacks D5 *spatial-diamond*; DiamondsAndVStacks D5 *relative-representability*; DiamondsAndVStacks D5 *injection-and-finite-etale-permanence*.

*Uses.*

- GHW22 Definition 1.1(1): the diagonal condition defining decent v-stacks.
- GHW22 Propositions 4.4–4.5: permanence used to show decent v-stacks are Artin and stable under fibre products.
- HKW22 Definition 4.1.7, p. 23: the diagonal condition in the definition of decent v-stacks.

*API.*

- `RepresentableInLSepLSpat.of_separatedSpatial` (constructor): If X ×_Y T is a locally separated locally spatial diamond for every separated spatial diamond T → Y, then f is representable in locally separated locally spatial diamonds.
- `RepresentableInLSepLSpat.comp` (functoriality): The class is closed under composition.
- `RepresentableInLSepLSpat.baseChange` (functoriality): The class is closed under base change along any map of small v-stacks.
- `RepresentableInLSepLSpat.of_qcInjection` (other): A quasicompact injection of small v-stacks is representable in locally separated locally spatial diamonds.
- `RepresentableInLSepLSpat.of_comp` (other): If g ∘ f has the property and g is 0-truncated and quasiseparated, then f has it.
- `RepresentableInLSepLSpat.representableInDiamonds` (compatibility): A map with the property is representable in diamonds in the sense of DiamondsAndVStacks D5.

**Checks.**

- `RepresentableInLSepLSpat.id` (degenerate): The identity of a small v-stack is representable in locally separated locally spatial diamonds.
- `RepresentableInLSepLSpat.openImmersion` (computation): The inclusion of an open subdiamond U ⊂ X of a locally spatial diamond is representable in locally separated locally spatial diamonds.
- `RepresentableInLSepLSpat.not_classifyingStack` (non-example): For a nontrivial locally profinite group G, the structure map [S/G_S] → S is not representable in locally separated locally spatial diamonds, although it is fine (VS6/fine-morphism).
- `RepresentableInLSepLSpat.representableInDiamonds_of` (compatibility): Every map with the property is representable in diamonds, so the definition refines DiamondsAndVStacks D5's relative representability.

<a id="VS6-decent-v-stack"></a>

### VS6.2 Decent v-stacks (*decent-v-stack*, definition)

A small v-stack X is decent if (1) its diagonal X → X × X is representable in locally separated locally spatial diamonds, and (2) there is a locally separated locally spatial diamond U and a surjective map U → X that is representable in locally spatial diamonds and, locally on U, separated and cohomologically smooth (ℓ-cohomologically smooth for every prime ℓ ≠ p). Such U → X is a chart; it is a clean chart if U is separated and U → X is separated and cohomologically smooth, and every decent v-stack has a clean chart. For locally separated locally spatial diamonds T → X ← T′ the fibre product T ×_X T′ is a locally separated locally spatial diamond.

*Hypotheses.*

- X is a small v-stack.
- Everything lives over the category Perf of perfectoid spaces of characteristic p with its v-topology.
- Cohomological smoothness is that of DiamondSixOperations S4 for maps representable in locally spatial diamonds.

*Construction or proof.*

1. Clean charts: refine U by an open cover by separated spatial pieces on which the chart is separated and smooth and take the disjoint union (GHW22 Remark 1.2(ii)).
2. Fibre products of test diamonds: T ×_X T′ = (T × T′) ×_{X×X} X, and T × T′ is a locally separated locally spatial diamond (GHW22 Remark 1.2(i)).
3. Hansen–Kaletha–Weinstein's restatement (HKW22 Definition 4.1.7) asks for a strictly surjective chart that is locally compactifiable of finite dim.trg; the plan uses the public GHW22 Definition 1.1 and records the difference in sourceIssues.

*Source.* Gulotta–Hansen–Weinstein, Definition 1.1 and Remark 1.2, p. 2: Defines decent v-stacks by the diagonal condition and the existence of a surjective, locally separated and cohomologically smooth chart from a locally separated locally spatial diamond, and introduces clean charts. Hansen–Kaletha–Weinstein, Definition 4.1.7, p. 23: Restates decency (with charts that are strictly surjective and locally compactifiable of finite dim.trg) as the class of geometric objects for the stacky six-functor formalism.

*Needs:* Layer VS6 *locally-separated-representability*; DiamondsAndVStacks D4 *small-v-sheaves-and-small-v-stacks*; DiamondsAndVStacks D5 *spatial-diamond*; DiamondsAndVStacks D5 *relative-representability*; DiamondSixOperations S4 *cohomologically-smooth*.

*Uses.*

- HKW22 Definitions 4.3.3–4.3.4, pp. 28–30: objects of the correspondence 2-categories Corr_S and CoCorr_S are decent S-v-stacks fine over S.
- HKW22 Examples 4.2.2–4.2.5, pp. 25–27: classifying stacks [S/G_S] and quotients [T_S/G_S] are decent.
- GHW22 Theorem 1.4, p. 3: the domain of the exceptional functors.
- VStackSheavesAndLisseCategories:VS0 (Artin v-stacks): decent v-stacks are the Artin v-stacks on which genuine exceptional functors exist.

*API.*

- `DecentVStack.chart` (data): A chosen chart U → X from a locally separated locally spatial diamond.
- `DecentVStack.cleanChart` (constructor): Every decent v-stack admits a clean chart U → X with U separated and the chart separated and cohomologically smooth.
- `DecentVStack.of_locallySeparatedLocallySpatial` (constructor): A locally separated locally spatial diamond is decent.
- `DecentVStack.fiberProduct_testDiamonds` (other): For maps T → X ← T′ from locally separated locally spatial diamonds, T ×_X T′ is a locally separated locally spatial diamond.
- `DecentVStack.isArtin` (compatibility): A decent v-stack is an Artin v-stack in the sense of the parent VS0 (VS6/decent-is-artin).
- `DecentVStack.pullback` (functoriality): Fibre products of decent v-stacks are decent (VS6/decent-fibre-products).

**Checks.**

- `DecentVStack.of_diamond` (degenerate): A separated spatial diamond, e.g. Spa(C, O_C)^♢, is decent with the identity as clean chart.
- `DecentVStack.spdZp` (computation): Spd Z_p is decent with chart Spd Z_p × Spd F_p((t^{1/p^∞})) → Spd Z_p, although Spd Z_p is not a diamond.
- `DecentVStack.classifyingStack_chart` (characterisation): For G = GL_n(Z_p) and S = Spd C, the map GL_n^♢ × S / G_S → [S/G_S] is a chart of the classifying stack.
- `DecentVStack.point_not_chart` (non-example): For G = Z_p, the point S → [S/Z_p] is surjective and representable but is not a chart: it is not cohomologically smooth (its dualizing object is the noninvertible sheaf of distributions; parent VS0/point-to-classifying-stack-not-smooth).
- `DecentVStack.isArtin_of` (compatibility): Every decent v-stack satisfies the parent's definition of an Artin v-stack (VS0/artin-v-stack-definition).

<a id="VS6-decent-is-artin"></a>

### VS6.3 Decent v-stacks are Artin v-stacks (*decent-is-artin*, theorem)

A decent v-stack X is an Artin v-stack in the sense of Fargues–Scholze Definition IV.1.1 (the parent's VS0/artin-v-stack-definition); in particular its diagonal is quasiseparated and representable in locally spatial diamonds.

*Hypotheses.*

- X is a decent v-stack.

*Construction or proof.*

1. Pick a chart U → X. Fargues–Scholze Remark IV.1.4(ii) shows the diagonal of X is quasiseparated and reduces representability in locally spatial diamonds to representability in diamonds.
2. Representability of the diagonal in diamonds is the first claim of GHW22 Proposition 4.3(i), applied to the diagonal (VS6/locally-separated-representability).
3. Refining the chart to a clean chart (VS6/decent-v-stack) gives a separated cohomologically smooth surjection from a locally spatial diamond, as the parent's definition requires (GHW22 Proposition 4.4).

*Source.* Gulotta–Hansen–Weinstein, Proposition 4.4 and proof, p. 20: Shows decent v-stacks are Artin v-stacks in the sense of Fargues–Scholze, with quasiseparated diagonal representable in locally spatial diamonds. Hansen–Kaletha–Weinstein, §4.1, list after Definition 4.1.7, p. 24: Records that decent v-stacks are Artin v-stacks.

*Needs:* Layer VS6 *decent-v-stack*; Layer VS6 *locally-separated-representability*; VStackSheavesAndLisseCategories VS0 *artin-v-stack-definition*.

**Checks.**

- The classifying stack [S/G_S] of HKW22 Example 4.2.2 is an Artin v-stack.
- A locally separated locally spatial diamond is Artin with the identity chart.

<a id="VS6-decent-fibre-products"></a>

### VS6.4 Fibre products of decent v-stacks (*decent-fibre-products*, theorem)

If X₂ → X₁ ← X₃ are maps of decent v-stacks, then X₂ ×_{X₁} X₃ is decent; in particular absolute products of decent v-stacks are decent. If U_i → X_i are charts, U₂ ×_{X₁} U₃ → X₂ ×_{X₁} X₃ is a chart.

*Hypotheses.*

- X₁, X₂, X₃ are decent v-stacks with maps X₂ → X₁ ← X₃.

*Construction or proof.*

1. Charts: U₂ ×_{X₁} U₃ is a locally separated locally spatial diamond by decency of X₁ (VS6/decent-v-stack), and U₂ ×_{X₁} U₃ → X₂ ×_{X₁} X₃ factors as two base changes of charts, hence is a chart (DiamondSixOperations S4 smoothness stable under base change and composition).
2. Diagonal: the map u : X₂ ×_{X₁} X₃ → X₂ × X₃ is a base change of the diagonal of X₁, hence representable in locally separated locally spatial diamonds and quasiseparated (VS6/decent-is-artin).
3. The composite of the diagonal of the fibre product with u × u equals the diagonal of X₂ × X₃ composed with u; cancel u × u, which is 0-truncated and quasiseparated, using the cancellation property of VS6/locally-separated-representability (GHW22 Proposition 4.5).

*Source.* Gulotta–Hansen–Weinstein, Proposition 4.5 and proof, pp. 20–21: Proves fibre products of decent v-stacks are decent, building charts from charts and handling the diagonal by cancellation. Hansen–Kaletha–Weinstein, §4.1, list after Definition 4.1.7, p. 24: Records that absolute products and fibre products of decent v-stacks are decent.

*Needs:* Layer VS6 *decent-v-stack*; Layer VS6 *decent-is-artin*; Layer VS6 *locally-separated-representability*; DiamondSixOperations S4 *smooth-stable-under-base-change*; DiamondSixOperations S4 *smooth-composition*.

**Checks.**

- For decent S, products X ×_S Y of decent S-v-stacks are decent, as the tensor product of Corr_S requires.
- The inertia stack In_S(X) = X ×_{X ×_S X} X of a decent X is decent.

<a id="VS6-decent-v-stack-examples"></a>

### VS6.5 Basic examples of decent v-stacks (*decent-v-stack-examples*, theorem)

(i) Every locally separated locally spatial diamond is decent; for an analytic adic space X over Spa Z_p the diamond X^♢ is decent. (ii) If X is a locally separated small v-sheaf admitting a surjective cohomologically smooth map from a separated locally spatial diamond, X is decent; this applies to Spd Z_p and Div¹, with chart X × Spd F_p((t^{1/p^∞})) → X. (iii) For a geometric point S = Spd C (C algebraically closed perfectoid) or S = Spd k (k algebraically closed discrete of characteristic p), S is decent, with chart S × Spd F_p((t^{1/p^∞})) → S in the second case.

*Hypotheses.*

- In (i) X is an analytic adic space over Spa Z_p.
- In (iii) C is an algebraically closed perfectoid field, or k an algebraically closed discrete field of characteristic p.

*Construction or proof.*

1. (i): the identity is a clean chart; diamonds of analytic adic spaces are locally spatial (DiamondsAndVStacks D6) and locally separated, affinoid opens being separated.
2. (ii): for a locally separated v-sheaf the diagonal is an injection, and the stated chart gives condition (2); GHW22 p. 3 records that the products with Spd F_p((t^{1/p^∞})) are analytic adic spaces cohomologically smooth over the base (DiamondSixOperations S5/analytic-smooth-is-cohomologically-smooth).
3. (iii): Spd C is a separated spatial diamond; for Spd k the diagonal condition is checked directly and the displayed map is a chart (HKW22 §4.2, opening paragraph).

*Source.* Gulotta–Hansen–Weinstein, Discussion after Definition 1.1, p. 3: States that locally separated locally spatial diamonds, diamonds of analytic adic spaces, Spd Z_p and Div¹ are decent, with the stated charts. Hansen–Kaletha–Weinstein, §4.1, list after Definition 4.1.7, p. 24; §4.2 opening paragraph, p. 25: Records the same examples and that the geometric points Spd C and Spd k are decent.

*Needs:* Layer VS6 *decent-v-stack*; DiamondsAndVStacks D6 *gluing-and-the-diamond-functor*; DiamondsAndVStacks D6 *etale-site-comparison*; DiamondSixOperations S5 *analytic-smooth-is-cohomologically-smooth*.

**Checks.**

- Spa(C, O_C)^♢ and the open unit disc over C are decent.
- Spd Z_p is decent but not a diamond.

<a id="VS6-fine-morphism"></a>

### VS6.6 Fine morphisms of decent v-stacks (*fine-morphism*, definition)

A map f : X → Y of decent v-stacks is fine if there is a commutative square with charts a : V → Y and b : W → X and a map g : W → V that is, locally on W, compactifiable of finite dim.trg. Equivalently, there is such a square with clean charts and g compactifiable of locally finite dim.trg; equivalently, with V → Y a chart, U = X ×_Y V and a chart W′ → U such that W′ → V is locally compactifiable of finite dim.trg. For every square of charts over a fine f the top map is locally compactifiable of finite dim.trg.

*Hypotheses.*

- X, Y are decent v-stacks.

*Construction or proof.*

1. Clean form: refine V and W as in VS6/decent-v-stack and use Sch17 Proposition 22.3 to pass compactifiability through separated local isomorphisms (GHW22 Remark 4.6).
2. Cartesian form: given a square, set U = X ×_Y V and W′ = W ×_Y V; decency of Y makes W′ a locally separated locally spatial diamond and W′ → U a chart; W′ → V is a base change of f ∘ b (GHW22 Remark 4.7).
3. Independence of charts: compare two squares through W ×_X W′ using Sch17 Proposition 22.3(ii),(iv),(vii),(viii) and universal openness of smooth charts (GHW22 Proposition 4.8(o)).

*Source.* Gulotta–Hansen–Weinstein, Definition 1.3(i), p. 3; Remarks 4.6–4.7, pp. 21–23; Proposition 4.8(o), p. 23: Defines fine morphisms through charts with a locally compactifiable finite-dim.trg top map, shows clean and Cartesian charts suffice, and that the condition holds for every square of charts. Hansen–Kaletha–Weinstein, Definition 4.1.7 (second paragraph), p. 23: Restates fine morphisms as the maps for which exceptional functors exist.

*Needs:* Layer VS6 *decent-v-stack*; DiamondSixOperations S0 *compactifiable-morphism*; DiamondSixOperations S0 *compactifiable-base-change*; DiamondSixOperations S0 *compactifiable-composition*; DiamondSixOperations S0 *compactifiable-cancellation*; DiamondSixOperations S4 *smooth-universally-open*.

*Uses.*

- HKW22 Theorem 4.1.8, p. 24: the exceptional functors Rf_!, Rf^! exist for fine f.
- HKW22 Definition 4.3.3, p. 28: objects of Corr_S are fine over S and the right leg of a correspondence is fine.
- HKW22 Definition 4.1.9, p. 24: the relative dualizing complex K_{X/S} is defined for fine X → S.

*API.*

- `Fine.of_cleanCharts` (constructor): A square of clean charts with top map compactifiable of locally finite dim.trg witnesses fineness.
- `Fine.of_representable` (constructor): A map representable in locally spatial diamonds, compactifiable and locally of finite dim.trg is fine.
- `Fine.comp` (functoriality): Composites of fine maps are fine.
- `Fine.baseChange` (functoriality): Base changes of fine maps along maps of decent v-stacks are fine.
- `Fine.of_comp` (other): If X → Z and Y → Z are fine, every map X → Y over Z is fine.
- `Fine.iff_compactifiable` (characterisation): A separated map representable in locally spatial diamonds is fine iff it is compactifiable of locally finite dim.trg.
- `Fine.anyCharts` (characterisation): For a fine map every square of charts has locally compactifiable finite-dim.trg top map.

**Checks.**

- `Fine.id` (degenerate): The identity of a decent v-stack is fine.
- `Fine.of_eligible` (compatibility): A map that is eligible in the sense of DiamondSixOperations S0 between locally separated locally spatial diamonds is fine, so fine maps extend the eligible class.
- `Fine.classifyingStack` (computation): For G = GL_n(Z_p) the structure map [S/G_S] → S is fine (HKW22 Example 4.2.4).
- `Fine.not_infiniteBall` (non-example): The structure map of the infinite-dimensional perfectoid ball Spa(C⟨T_1^{1/p^∞}, T_2^{1/p^∞}, …⟩) → Spa C is not fine: it has infinite dim.trg at every point.

<a id="VS6-fine-permanence"></a>

### VS6.7 Permanence of fine morphisms (*fine-permanence*, theorem)

(i) Fine maps are stable under composition. (ii) Base changes of fine maps along maps of decent v-stacks are fine. (iii) If h : X → Z and g : Y → Z are fine, every map f : X → Y with g ∘ f = h is fine. (iv) A separated map of decent v-stacks representable in locally spatial diamonds is fine iff it is compactifiable of locally finite dim.trg. In particular, for a correspondence X ← C → X′ of decent S-v-stacks with C → X′ fine and X, X′ fine over S, both legs and C → S are fine.

*Hypotheses.*

- All v-stacks are decent.

*Construction or proof.*

1. (i): compose squares through T = V ×_{X₂} V′ (GHW22 Proposition 4.8(i)).
2. (ii): pull back a witnessing square along a chart of the new base and choose a chart of the base-changed source (GHW22 Proposition 4.8(ii)).
3. (iii): use clean charts of Y and X over Z and Sch17 Proposition 22.3(viii) for cancellation of compactifiability (GHW22 Proposition 4.8(iii)).
4. (iv): with clean charts, f is fine iff the top map is compactifiable of locally finite dim.trg, and compactifiability and dim.trg descend along universally open charts (GHW22 Proposition 4.8(iv)).

*Source.* Gulotta–Hansen–Weinstein, Proposition 4.8 and proof, pp. 23–26: Proves composition, base change, cancellation and the separated-representable criterion for fine maps. Hansen–Kaletha–Weinstein, §4.1 list after Definition 4.1.7, p. 24, and footnote 4, p. 28: Uses composition and cancellation to see that both legs of a correspondence are fine.

*Needs:* Layer VS6 *fine-morphism*; Layer VS6 *decent-fibre-products*; DiamondSixOperations S0 *compactifiable-cancellation*; DiamondSixOperations S0 *compactifiable-base-change*; DiamondSixOperations S4 *smooth-universally-open*.

**Checks.**

- The left leg of every 1-morphism of Corr_S is fine (HKW22 footnote 4, p. 28).
- Fine maps include all maps representable in nice diamonds.

<a id="VS6-fine-cohomologically-smooth"></a>

### VS6.8 Cohomologically smooth fine morphisms (*fine-cohomologically-smooth*, definition)

A map f : X → Y of decent v-stacks is ℓ-cohomologically smooth if there is a commutative square of charts with top map g : W → V locally compactifiable of finite dim.trg and ℓ-cohomologically smooth (DiamondSixOperations S4). This agrees with Fargues–Scholze's smoothness of maps of Artin v-stacks (Definition IV.1.11, the parent's convention in VS0/shriek-pullback-for-smooth-stacky-maps). Smooth fine maps are stable under composition and base change.

*Hypotheses.*

- X, Y are decent v-stacks; ℓ ≠ p is prime.

*Construction or proof.*

1. Agreement with Fargues–Scholze: refine charts as in GHW22 Remark 4.6 and use that smoothness is smooth-local on source and target (DiamondSixOperations S4/smooth-descent-along-smooth-surjection).
2. Composition and base change: combine VS6/fine-permanence with DiamondSixOperations S4/smooth-composition and S4/smooth-stable-under-base-change.
3. The intrinsic characterisation through exceptional functors is VS7/fine-smoothness-and-dualizing-objects.

*Source.* Gulotta–Hansen–Weinstein, Definition 1.3(ii), p. 3; Remark 4.6, last paragraph, p. 22: Defines ℓ-cohomologically smooth maps of decent v-stacks through charts and notes agreement with Fargues–Scholze Definition IV.1.11. Hansen–Kaletha–Weinstein, Paragraph after Theorem 4.1.8, p. 24: Recalls the extrinsic and intrinsic notions of smoothness for fine maps.

*Needs:* Layer VS6 *fine-morphism*; Layer VS6 *fine-permanence*; DiamondSixOperations S4 *cohomologically-smooth*; DiamondSixOperations S4 *smooth-composition*; DiamondSixOperations S4 *smooth-stable-under-base-change*; DiamondSixOperations S4 *smooth-descent-along-smooth-surjection*; VStackSheavesAndLisseCategories VS0 *shriek-pullback-for-smooth-stacky-maps*; VStackSheavesAndLisseCategories VS0 *point-to-classifying-stack-not-smooth*.

*Uses.*

- HKW22 Lemma 4.1.11, p. 24: smooth fine maps have invertible relative dualizing complexes.
- HKW22 Definition 4.5.1 and Lemma 4.5.2, pp. 36–37: smooth bases T → S with smooth diagonal in the Künneth theorem.
- HKW22 Example 4.2.4, p. 27: the structure map of a classifying stack is smooth.

*API.*

- `FineSmooth.of_charts` (constructor): A square of charts with ℓ-cohomologically smooth top map witnesses smoothness.
- `FineSmooth.iff_fargues_scholze` (compatibility): For maps of decent v-stacks the notion agrees with Fargues–Scholze Definition IV.1.11.
- `FineSmooth.comp` (functoriality): Composites of smooth fine maps are smooth.
- `FineSmooth.baseChange` (functoriality): Base changes of smooth fine maps are smooth.
- `FineSmooth.of_representable` (compatibility): For maps representable in locally spatial diamonds, compactifiable of locally finite dim.trg, the notion is that of DiamondSixOperations S4.

**Checks.**

- `FineSmooth.id` (degenerate): Identities are ℓ-cohomologically smooth.
- `FineSmooth.classifyingStack` (computation): For G = GL_n(Z_p) and ℓ ≠ p, [S/G_S] → S is ℓ-cohomologically smooth.
- `FineSmooth.not_point` (non-example): For G = Z_p, the point S → [S/G_S] is fine but not ℓ-cohomologically smooth.
- `FineSmooth.openImmersion` (compatibility): Open immersions of decent v-stacks are ℓ-cohomologically smooth, in agreement with DiamondSixOperations S4/etale-maps-smooth.

<a id="VS6-classifying-stack-of-group-diamond"></a>

### VS6.9 Classifying stacks of group diamonds and their 2-morphisms (*classifying-stack-of-group-diamond*, construction)

For a diamond S and a group diamond G → S, BG = [S/G] is the small v-stack of right G-torsors, with S ×_{BG} S ≅ G. For group diamonds G, H over S, the groupoid of S-maps BG → BH is equivalent to the groupoid of right H-torsors P on S with a commuting left G-action (equivalently homomorphisms G → Aut_H(P)), with equivariant torsor isomorphisms as arrows; the map sends Q to Q ×^G P. A homomorphism f : G → H induces φ_f : BG → BH (P the trivial torsor), and 2-morphisms φ_{f₁} ⇒ φ_{f₂} are the h ∈ H(S) with f₁ = ad(h) ∘ f₂. For G acting on a diamond X over S, [X/G] is the quotient stack. In the notation [T_S/G_S] for a locally profinite set T with an action of a locally profinite group G, T_S and G_S are the constant diamonds over S.

*Hypotheses.*

- S is a diamond; G, H are group diamonds over S.
- This corrects HKW22 Example 4.1.1, which identifies all maps BG → BH with homomorphisms (sourceIssues).

*Construction or proof.*

1. Torsor description: an S-map BG → BH is determined by the image P of the trivial G-torsor, an H-torsor with a commuting G-action given by the automorphisms of the trivial G-torsor (descent along S → BG, DiamondsAndVStacks D4 small v-stacks).
2. A chosen trivialisation P ≅ H turns the G-action into a homomorphism G → H; changing the trivialisation conjugates it.
3. For maps induced by specified homomorphisms, a 2-morphism is an H-equivariant automorphism of the trivial torsor intertwining the actions, i.e. left multiplication by h ∈ H(S) with f₁ = ad(h) ∘ f₂.

*Source.* Hansen–Kaletha–Weinstein, Example 4.1.1, p. 22: Introduces BG = [S/G], notes S ×_{BG} S ≅ G, and describes 2-morphisms between maps induced by homomorphisms through conjugating elements; its identification of all maps with homomorphisms is corrected here.

*Needs:* DiamondsAndVStacks D4 *small-v-sheaves-and-small-v-stacks*; DiamondsAndVStacks D4 *small-quotients-and-underlying-spaces*; DiamondsAndVStacks D5 *relative-representability*.

*Uses.*

- HKW22 Examples 4.2.2–4.2.5, pp. 25–27: classifying stacks [S/G_S] and quotients [T_S/G_S] and the actions of g ∈ G through 2-morphisms α_g : q ⇒ q.
- HKW22 §4.4, p. 35: the inertia stack of [S/G_S] is the adjoint quotient [G_S//G_S].
- HKW22 §4.6, pp. 41–43: quotient stacks [X/G] for cohomologically smooth group diamonds G.

*API.*

- `ClassifyingStack.ofHom` (constructor): A homomorphism of group diamonds f : G → H induces φ_f : BG → BH.
- `ClassifyingStack.mapEquivTorsor` (equivalence): S-maps BG → BH correspond to H-torsors on S with commuting G-action.
- `ClassifyingStack.twoMorphism_ofHom` (characterisation): 2-morphisms φ_{f₁} ⇒ φ_{f₂} correspond to h ∈ H(S) with f₁ = ad(h) ∘ f₂.
- `ClassifyingStack.pointFiber` (simp): S ×_{BG} S ≅ G.
- `ClassifyingStack.quotient` (constructor): For an action of G on a diamond X over S, the quotient stack [X/G] with its map to BG.
- `ClassifyingStack.actionTwoMorphism` (other): Each g ∈ G(S) gives a 2-morphism α_g : q ⇒ q of the point q : S → BG, inducing the action of g on q^*M.

**Checks.**

- `ClassifyingStack.trivialGroup` (degenerate): For G = 1, BG = S.
- `ClassifyingStack.geometricPoint` (computation): For S = Spd C and finite constant groups G, H, the set of isomorphism classes of S-maps BG → BH is Hom(G, H)/H-conjugacy.
- `ClassifyingStack.not_all_homs` (non-example): For S = Spd Q_p, G = 1, H = Z/2 constant, the nontrivial H-torsor from the unramified quadratic extension gives a map BG → BH not of the form φ_f.
- `ClassifyingStack.twoMorphism_conj` (characterisation): For f₁ = f₂ = id_H, the 2-automorphisms of id_{BH} are the elements of the centre of H(S).

<a id="VS6-two-morphism-adjunction-compatibility"></a>

### VS6.10 Compatibility of pullback and pushforward with 2-morphisms (*two-morphism-adjunction-compatibility*, theorem)

For maps f, g : Y → X of small v-stacks and a 2-morphism α : f ⇒ g there are natural isomorphisms α^* : f^* ≅ g^* and α_* : Rf_* ≅ Rg_* such that α_* α^* carries the unit id → Rf_* f^* to the unit id → Rg_* g^* and the counit f^* Rf_* → id to the counit g^* Rg_* → id; these isomorphisms are compatible with vertical and horizontal composition of 2-morphisms.

*Hypotheses.*

- X, Y are small v-stacks; Λ is a commutative ring with nΛ = 0 for an integer n prime to p.

*Construction or proof.*

1. D_ét(−, Λ) is a v-sheaf of ∞-categories on small v-stacks (Sch17 §17, recorded in DiamondEtaleCohomology and EnhancedDerivedSheaves E2), so f ↦ f^* is a pseudo-functor out of the (2,1)-category of small v-stacks; α^* is its value on α.
2. α_* is the mate of (α^{-1})^* under the adjunctions f^* ⊣ Rf_*, g^* ⊣ Rg_*; the two stated diagrams are the defining identities of a mate (EnhancedDerivedSheaves E3/mates-and-beck-chevalley).

*Source.* Hansen–Kaletha–Weinstein, Remark 4.1.2, p. 22: States that the pullback/pushforward adjunction is compatible with a 2-morphism through the unit and counit diagrams. Hansen–Kaletha–Weinstein, Definition 4.3.4, verification on p. 30: Uses the two diagrams to show 2-morphisms of cohomological correspondences are well defined.

*Needs:* DiamondsAndVStacks D4 *small-v-sheaves-and-small-v-stacks*; EnhancedDerivedSheaves E3 *mates-and-beck-chevalley*; EnhancedDerivedSheaves E2 *unbounded-hypercover-descent*; VStackSheavesAndLisseCategories VS0 *enhanced-smooth-descent*.

**Checks.**

- For q : S → [S/G_S] and the 2-morphisms α_g, the induced automorphisms of q^*M give the G-action on the underlying Λ-module (HKW22 Example 4.2.2).
- The 2-morphisms of CoCorr_S are well defined on equivalence classes (VS9/cohomological-correspondence-bicategory) using exactly these two diagrams.

<a id="VS6-proper-nice-maps"></a>

### VS6.11 Proper nice maps of decent v-stacks (*proper-nice-maps*, definition)

A map of small v-stacks is proper if it is quasicompact, separated and universally closed (Sch17 Definition 18.1); separated maps of v-stacks have closed immersions, hence injections, as diagonals, so proper maps are 0-truncated. A map f : X → Y of decent v-stacks is proper nice if it is proper, representable in locally spatial diamonds and locally of finite dim.trg. Proper nice maps are fine, stable under composition and base change, and their exceptional pushforward in the sense of DiamondSixOperations S2 is defined and equals Rf_*. Throughout this roadmap the word proper, for maps between decent v-stacks that serve as 2-morphisms of correspondences or as proper pushforwards, means proper nice.

*Hypotheses.*

- f : X → Y is a map of decent v-stacks.
- Proper is in the sense of Sch17 Definition 18.1.

*Construction or proof.*

1. 0-truncation: Sch17 Definition 10.7(iii) and Remark 10.8 (separated maps are 0-truncated), and Definition 18.1 (proper maps are separated).
2. A proper map is compactifiable (it is its own canonical compactification, DiamondSixOperations S0/compactifiable-iff-separated-open); for a separated map representable in locally spatial diamonds, fineness is compactifiability of locally finite dim.trg (VS6/fine-permanence (iv)).
3. Composition and base change: properness, representability in locally spatial diamonds and finiteness of dim.trg are each stable (Sch17 Proposition 18.3 and §13, DiamondSixOperations S0).
4. Rf_! = Rf_* for proper f in the eligible class (DiamondSixOperations S1/lower-shriek-quasicompact).
5. Whether every proper fine map of decent v-stacks is representable in locally spatial diamonds is not settled by the sources: decent 0-truncated v-sheaves need not be diamonds (Spd Z_p), and Gulotta–Hansen–Weinstein Proposition 4.3(i) leaves the relevant representability claim as an exercise; the general case is recorded as a gap and is not needed by any target here.

*Source.* Scholze, Étale cohomology of diamonds, Definition 10.7(iii), Remark 10.8 and Proposition 10.9, pp. 51–52: Separated maps of v-stacks have closed-immersion diagonals and are therefore 0-truncated. Scholze, Étale cohomology of diamonds, Definition 18.1 and Proposition 18.3, pp. 100–101: Proper maps of v-stacks are quasicompact, separated and universally closed, hence 0-truncated. Gulotta–Hansen–Weinstein, Proposition 4.3(i), p. 20: States that a quasiseparated map representable in locally separated locally spatial diamonds is representable in locally spatial diamonds, leaving the proof as an exercise. Hansen–Kaletha–Weinstein, Theorem 4.1.8 and Definitions 4.3.3–4.3.4, pp. 24, 28–30: Uses proper maps of decent v-stacks with Rf_! ≅ Rf_* as 2-morphisms of correspondences; in every use (Example 4.3.10, Corollary 4.3.9, §§4.4–4.6, §5) the proper maps are representable in nice diamonds.

*Needs:* Layer VS6 *fine-permanence*; Layer VS6 *fine-morphism*; DiamondSixOperations S0 *compactifiable-iff-separated-open*; DiamondSixOperations S0 *eligible-morphism*; DiamondSixOperations S1 *lower-shriek-quasicompact*; DiamondsAndVStacks D5 *relative-representability*.

*Uses.*

- HKW22 Definition 4.3.3, p. 29: 2-morphisms of Corr_S are proper maps p with p_* = p_!.
- HKW22 Theorem 4.3.8 and Corollary 4.3.9, pp. 32–33: proper pushforward of dualizable objects and of characteristic classes.
- HKW22 Definition 4.1.9, p. 24: integration along proper maps.

*API.*

- `ProperNice.isFine` (other): A proper nice map is fine.
- `ProperNice.zeroTruncated` (other): A proper map of v-stacks is 0-truncated.
- `ProperNice.comp` (functoriality): Composites of proper nice maps are proper nice.
- `ProperNice.baseChange` (functoriality): Base changes of proper nice maps along maps of decent v-stacks are proper nice.
- `ProperNice.shriek_eq_pushforward` (compatibility): For proper nice f, Rf_! = Rf_* (VS7/proper-nice-shriek-is-pushforward).
- `ProperNice.closedImmersion` (constructor): Closed immersions of decent v-stacks are proper nice.

**Checks.**

- `ProperNice.id` (degenerate): The identity of a decent v-stack is proper nice.
- `ProperNice.projectiveLine` (computation): (P¹_C)^♢ → Spd C is proper nice.
- `ProperNice.not_classifyingStack` (non-example): [S/G_S] → S is not proper for G = Z_p: its diagonal is not injective.
- `ProperNice.not_openDisc` (non-example): The open unit disc over Spd C is fine but not proper over Spd C.
- `ProperNice.compat_scholze` (compatibility): For f proper nice between locally spatial diamonds, the notion is Scholze's proper map in the eligible class of DiamondSixOperations S0.

### Examples

- The inclusion of an open subdiamond U ⊂ X of a locally spatial diamond is representable in locally separated locally spatial diamonds.
- Spd Z_p is decent with chart Spd Z_p × Spd F_p((t^{1/p^∞})) → Spd Z_p, although Spd Z_p is not a diamond.
- For G = GL_n(Z_p) the structure map [S/G_S] → S is fine (HKW22 Example 4.2.4).
- For G = GL_n(Z_p) and ℓ ≠ p, [S/G_S] → S is ℓ-cohomologically smooth.
- For S = Spd C and finite constant groups G, H, the set of isomorphism classes of S-maps BG → BH is Hom(G, H)/H-conjugacy.
- (P¹_C)^♢ → Spd C is proper nice.

### Dependencies

This layer uses `VStackSheavesAndLisseCategories:VS0`, `VStackSheavesAndLisseCategories:VS1`, `DiamondSixOperations:S0`, `DiamondSixOperations:S4`, `DiamondsAndVStacks:D4`, `DiamondsAndVStacks:D5`, `DiamondsAndVStacks:D6`.

## Layer VS7: exceptional functors for fine maps

Define prespatial diamonds and maps representable in them, prove their stability under canonical compactification and the 3·dim.trg amplitude bound, and construct Rf_! for weakly compactifiable maps between coproducts of qcqs v-sheaves. Construct the enhanced operation map on coproducts of qcqs v-sheaves (Gulotta–Hansen–Weinstein Theorem 3.14) with its ⊗-descent and !-codescent, and extend it by three iterations of Liu–Zheng's DESCENT to decent v-stacks with fine maps.

Targets: for fine f of decent v-stacks, Rf_! and its right adjoint Rf^!, agreeing with Scholze's on maps representable in locally spatial diamonds, pseudo-functorial in the 2-category of decent v-stacks, with the projection formula, proper base change, (P1)–(P5), (BC1)–(BC2) and the Künneth formula; Rf_! ≅ Rf_* for proper nice f; the intrinsic characterisation of cohomological smoothness with smooth base change and Rf^! ≅ Rf^!Λ ⊗ f^*; the relative dualizing complex K_{X/S} with integration and proper pushforward of its sections; Rf^! commuting with twists by invertible objects; and K_{Y/Y×_XY} ≅ K_{Y/X}^{-1} for smooth f.

Key definitions and theorems shown in the atlas: !-functors for fine maps, Relative dualizing complex.

<a id="VS7-prespatial-diamond"></a>

### VS7.1 Prespatial diamonds (*prespatial-diamond*, definition)

A qcqs diamond X is prespatial if it contains a spatial subdiamond X₀ ⊂ X with X₀(K, O_K) = X(K, O_K) for every perfectoid field K; a diamond X is locally prespatial if it contains a locally spatial subdiamond X₀ with X₀ → X quasicompact and the same equality of (K, O_K)-points. A map of v-stacks is representable in (locally) prespatial diamonds if it is 0-truncated and its base change to every (locally) prespatial diamond is (locally) prespatial. Prespatial diamonds are exactly the qcqs locally prespatial ones; open subdiamonds of locally prespatial diamonds are locally prespatial; (locally) spatial diamonds are (locally) prespatial; fibre products of (locally) prespatial diamonds are (locally) prespatial; and the canonical compactification of a separated map representable in prespatial diamonds is proper and representable in prespatial diamonds.

*Hypotheses.*

- Everything lives over the category Perf of perfectoid spaces of characteristic p with its v-topology.

*Construction or proof.*

1. Pairs: for a prespatial pair (X₀, X) and a locally prespatial pair (Y₀, Y) over a map X → Y, (X₀ ×_Y Y₀, X) is again a pair, since quasicompact injections into locally spatial diamonds have locally spatial source (GHW22 Lemma 3.2; DiamondsAndVStacks D5).
2. The sanity checks (i)–(vi) follow from the pair calculus (GHW22 Lemma 3.4).
3. Compactifications: the canonical compactification X̄^{/Y} → Y is proper (Sch17 Proposition 18.7(vii), recorded in DiamondSixOperations S0/compactifiable-iff-separated-open) and has the same (K, O_K)-points as X, hence as X₀ (GHW22 Proposition 3.6).

*Source.* Gulotta–Hansen–Weinstein, Definitions 3.1 and 3.3, Lemmas 3.2 and 3.4, Proposition 3.6, pp. 13–14: Introduces (locally) prespatial diamonds and pairs, maps representable in them, their permanence, and stability under canonical compactification.

*Needs:* DiamondsAndVStacks D5 *spatial-diamond*; DiamondsAndVStacks D5 *injection-and-finite-etale-permanence*; DiamondSixOperations S0 *compactifiable-iff-separated-open*; DiamondsAndVStacks D4 *diamond*.

*Uses.*

- GHW22 §3.2 Theorem 3.14: the enhanced operation map on qcqs v-sheaves uses proper maps representable in prespatial diamonds.
- GHW22 Corollary 3.9: cohomological amplitude bounds for Rf_! of separated maps representable in prespatial diamonds.

*API.*

- `PrespatialDiamond.of_spatial` (constructor): A spatial diamond is prespatial with X₀ = X.
- `PrespatialDiamond.iff_locally_qcqs` (characterisation): A diamond is prespatial iff it is locally prespatial and qcqs.
- `PrespatialDiamond.open` (other): Open subdiamonds of locally prespatial diamonds are locally prespatial.
- `PrespatialDiamond.fiberProduct` (other): Fibre products of (locally) prespatial diamonds are (locally) prespatial.
- `RepresentableInPrespatial.comp_baseChange` (functoriality): Maps representable in (locally) prespatial diamonds are stable under composition and base change.
- `PrespatialDiamond.canonicalCompactification` (other): For f separated and representable in prespatial diamonds, the canonical compactification is proper and representable in prespatial diamonds.

**Checks.**

- `PrespatialDiamond.spatial` (degenerate): Spa(C, O_C)^♢ is prespatial with X₀ = X.
- `PrespatialDiamond.compactification` (computation): For a separated spatial diamond X over Spa(C, C⁺), the canonical compactification X̄^{/Spa(C,C⁺)} is prespatial, with X₀ = X (the two have the same (K, O_K)-points), and proper over Spa(C, C⁺).
- `PrespatialDiamond.points_determine` (characterisation): If (X₀, X) is a prespatial pair then |X₀ ×_{Spd(C,C⁺)} Spd(C,O_C)|^h → |X|^h is a homeomorphism of maximal Hausdorff quotients.
- `PrespatialDiamond.not_nonqcqs` (non-example): An infinite disjoint union of points is locally prespatial but not prespatial, since it is not quasicompact.

<a id="VS7-prespatial-cohomological-amplitude"></a>

### VS7.2 Cohomological amplitude for prespatial maps (*prespatial-cohomological-amplitude*, theorem)

If f : X → Y is proper and representable in prespatial diamonds, Rf_* has cohomological amplitude at most 3·dim.trg f. If f is separated, representable in prespatial diamonds with dim.trg f < ∞, then Rf_* has amplitude at most 3·dim.trg f, and if moreover f is compactifiable, so does Rf_! = Rf̄_* ∘ j_!. For a separated spatial diamond X with |X| of Krull dimension d, the maximal Hausdorff quotient |X|^h has cohomological dimension at most d; quasicompact injections have pushforward of amplitude zero.

*Hypotheses.*

- Λ is a commutative ring with nΛ = 0 for an integer n prime to p.
- f is a map of small v-stacks as stated.

*Construction or proof.*

1. Reduce to Y = Spd(C, C⁺) and X separated prespatial proper over Y with a sheaf A in degree 0 vanishing on the generic fibre, as in the proof of Sch17 Theorem 22.5 (DiamondSixOperations S1/compactification-cd-bound).
2. Factor f through |X|^h × Y; the first map is proper and representable in spatial diamonds, with amplitude ≤ 2·dim.trg f (DiamondSixOperations S1/spatial-compactification-cd-bound).
3. Bound the cohomology of |X|^h by the Krull dimension of the spatial X₀ (GHW22 Lemma 3.8, via Scheiderer's theorem for spectral spaces whose generizations form chains), giving the remaining dim.trg f.
4. Separated case: factor through the canonical compactification and use that quasicompact injections have exact pushforward (GHW22 Corollary 3.9, Lemma 3.10).

*Source.* Gulotta–Hansen–Weinstein, Proposition 3.7, Lemma 3.8, Corollary 3.9, Lemma 3.10, pp. 14–15: Proves the 3·dim.trg amplitude bound for proper and separated maps representable in prespatial diamonds and the auxiliary bound for maximal Hausdorff quotients.

*Needs:* Layer VS7 *prespatial-diamond*; DiamondSixOperations S1 *compactification-cd-bound*; DiamondSixOperations S1 *spatial-compactification-cd-bound*; DiamondsAndVStacks D5 *berkovich-quotient*.

**Checks.**

- For a proper prespatial curve over Spd C the amplitude of Rf_* is at most 3.
- A quasicompact open immersion has Rj_* of amplitude zero.

<a id="VS7-weakly-compactifiable-shriek"></a>

### VS7.3 Exceptional pushforward for weakly compactifiable maps (*weakly-compactifiable-shriek*, construction)

A map of small v-stacks is strongly compactifiable if it is compactifiable, representable in prespatial diamonds and locally of finite dim.trg, and weakly compactifiable if it is compactifiable, representable in locally prespatial diamonds and its source has an open cover by pieces strongly compactifiable over the target. Both classes are stable under composition and base change; a map is strongly compactifiable iff it is weakly compactifiable and quasicompact; a proper weakly compactifiable map is strongly compactifiable; a strongly compactifiable f factors as a quasicompact open immersion j followed by a proper strongly compactifiable f̄. For weakly compactifiable f between coproducts of qcqs v-sheaves, Rf_! = h_! ∘ Rp_* ∘ j_! (j an open immersion, p proper strongly compactifiable, h a local isomorphism) is defined and satisfies composition, base change, the projection formula and commutes with colimits; it agrees with Scholze's Rf_! when f is representable in locally spatial diamonds.

*Hypotheses.*

- Λ is a commutative ring with nΛ = 0 for an integer n prime to p.
- Everything lives over the category Perf of perfectoid spaces of characteristic p with its v-topology.

*Construction or proof.*

1. Permanence (i)–(iv): base change and composition of compactifiability (DiamondSixOperations S0) and of representability in prespatial diamonds (VS7/prespatial-diamond); the factorisation is through the canonical compactification. GHW22 Lemma 3.12 leaves (i)–(iv) to the reader; they are planned here.
2. Base change on unbounded complexes and commutation with colimits for Rf_* and Rf̄_*: repeat the arguments of Sch17 §§21–22 with the amplitude bound of VS7/prespatial-cohomological-amplitude (GHW22 Lemma 3.12(v)).
3. Composition, base change and projection formula of Rf_! = Rf̄_* ∘ j_!: as in DiamondSixOperations S1 for spatial-eligible maps (S1/lower-shriek-base-change-qc, S1/projection-formula-qc, S1/lower-shriek-composition-qc), with prespatial in place of spatial.
4. Only the case of maps between coproducts of qcqs v-sheaves is needed; GHW22 Scholium 3.13 claims the full extension of Sch17 §§22–24 without details, and that general claim is not a target here.

*Source.* Gulotta–Hansen–Weinstein, Definition 3.11, Lemma 3.12, Scholium 3.13 and the following paragraph, p. 16: Defines strongly and weakly compactifiable maps, states their permanence (proofs of (i)–(iv) left to the reader) and the properties of Rf_! = h_! ∘ Rp_* ∘ j_!.

*Needs:* Layer VS7 *prespatial-diamond*; Layer VS7 *prespatial-cohomological-amplitude*; DiamondSixOperations S0 *compactifiable-morphism*; DiamondSixOperations S0 *compactifiable-base-change*; DiamondSixOperations S0 *compactifiable-composition*; DiamondSixOperations S1 *lower-shriek-quasicompact*; DiamondSixOperations S1 *lower-shriek-base-change-qc*; DiamondSixOperations S1 *projection-formula-qc*; DiamondSixOperations S1 *lower-shriek-composition-qc*; DiamondSixOperations S1 *lower-shriek-direct-sums-qc*.

*Uses.*

- GHW22 Theorem 3.14: the class W of weakly compactifiable maps marks the !-direction of the enhanced operation map on qcqs v-sheaves.
- GHW22 §4.3: on coproducts of separated spatial diamonds weakly compactifiable maps are exactly the fine maps.

*API.*

- `StronglyCompactifiable.factor` (constructor): f = f̄ ∘ j with j a quasicompact open immersion and f̄ proper strongly compactifiable.
- `WeaklyCompactifiable.comp_baseChange` (functoriality): Weakly and strongly compactifiable maps are stable under composition and base change.
- `WeaklyCompactifiable.shriek` (data): Rf_! = h_! ∘ Rp_* ∘ j_! for maps between coproducts of qcqs v-sheaves.
- `WeaklyCompactifiable.shriek_baseChange` (relation): g^* Rf_! ≅ Rf′_! g̃^* for Cartesian squares.
- `WeaklyCompactifiable.shriek_projection` (relation): Rf_!(A ⊗ f^*B) ≅ Rf_!A ⊗ B.
- `WeaklyCompactifiable.shriek_eq_scholze` (compatibility): For f representable in locally spatial diamonds, Rf_! agrees with DiamondSixOperations S2/lower-shriek.

**Checks.**

- `WeaklyCompactifiable.proper` (degenerate): For a proper strongly compactifiable f, Rf_! = Rf_*.
- `WeaklyCompactifiable.openImmersion` (computation): For a quasicompact open immersion j, Rj_! is extension by zero.
- `WeaklyCompactifiable.agree_spatial` (compatibility): For f representable in spatial diamonds, compactifiable of finite dim.trg, Rf_! is DiamondSixOperations S1/lower-shriek-quasicompact.
- `WeaklyCompactifiable.not_infiniteDimension` (non-example): The infinite-dimensional perfectoid ball over Spa C is not weakly compactifiable over Spa C: it is not locally of finite dim.trg.

<a id="VS7-enhanced-operations-for-qcqs-v-sheaves"></a>

### VS7.4 Enhanced operations for coproducts of qcqs v-sheaves (*enhanced-operations-for-qcqs-v-sheaves*, construction)

On the category Vsh_qcqs of small coproducts of qcqs v-sheaves, with the class W of weakly compactifiable maps, there is a Liu–Zheng enhanced operation map whose value on X is the symmetric monoidal ∞-category D_ét(X, Λ), whose ∗-direction is Scholze's pullback and whose !-direction on g ∈ W is the Rg_! of VS7/weakly-compactifiable-shriek. Proper weakly compactifiable maps and separated local isomorphisms are admissible classes whose restricted multisimplicial nerve is categorically equivalent to that of W. Every surjection in Vsh_qcqs is of universal ⊗-descent, and every surjection that is weakly compactifiable, representable in locally spatial diamonds and cohomologically smooth is of universal !-codescent.

*Hypotheses.*

- Λ is a commutative ring with nΛ = 0 for an integer n prime to p.
- Everything lives over the category Perf of perfectoid spaces of characteristic p with its v-topology.

*Construction or proof.*

1. Categorical gluing: show that proper weakly compactifiable maps P and separated local isomorphisms I are admissible and that every strongly compactifiable map factors as p ∘ q with p ∈ P, q quasicompact in I; deduce the equivalences of restricted nerves as in Liu–Zheng's gluing of restricted nerves (GHW22 Proposition 3.15).
2. Start from the map encoding X ↦ D_ét(X, Λ) with symmetric monoidal ∗-pullbacks (EnhancedDerivedSheaves E3/coherent-diagrams-of-ringed-topoi and E5:abstract/symmetric-monoidal-infinity-category).
3. Pass to right adjoints in the proper direction (adjointability from proper base change and projection formula, VS7/weakly-compactifiable-shriek) and to left adjoints in the local-isomorphism direction, by Liu–Zheng's partial adjoint theorem; transport along the equivalence of nerves (GHW22 Theorem 3.14).
4. Descent: D_ét is a v-sheaf of closed symmetric monoidal stable ∞-categories; codescent for smooth surjections follows by twisting !-pullbacks into ∗-pullbacks with the invertible Rf_n^!Λ (GHW22 Proposition 3.16).
5. The Liu–Zheng machinery (enhanced operation maps, multisimplicial nerves, the partial adjoint theorem, gluing of restricted nerves) has no owner in the atlas; it is recorded as a gap.

*Source.* Gulotta–Hansen–Weinstein, Theorem 3.14, Proposition 3.15 and proof of Theorem 3.14, pp. 17–18: Constructs the enhanced operation map on coproducts of qcqs v-sheaves by categorical gluing and passage to adjoints, following Liu–Zheng. Gulotta–Hansen–Weinstein, Proposition 3.16, p. 19: Proves universal ⊗-descent for surjections and universal !-codescent for weakly compactifiable smooth surjections.

*Needs:* Layer VS7 *weakly-compactifiable-shriek*; Layer VS7 *prespatial-diamond*; EnhancedDerivedSheaves E3 *coherent-diagrams-of-ringed-topoi*; EnhancedDerivedSheaves E5:abstract *symmetric-monoidal-infinity-category*; EnhancedDerivedSheaves E3 *adjoint-functor-theorem-and-localisations*; EnhancedDerivedSheaves E2 *unbounded-hypercover-descent*; DiamondSixOperations S4 *smooth-twisted-pullback*.

*Uses.*

- GHW22 §4.3: Input I of the first iteration of DESCENT.
- GHW22 Proposition 4.13: identifies the resulting !-functors with Scholze's on representable maps.

*API.*

- `QcqsEnhancedOperations.value` (data): The value on X is D_ét(X, Λ) with its symmetric monoidal structure.
- `QcqsEnhancedOperations.star` (compatibility): The ∗-direction is Scholze's pullback.
- `QcqsEnhancedOperations.shriek` (compatibility): The !-direction on g ∈ W is the Rg_! of VS7/weakly-compactifiable-shriek.
- `QcqsEnhancedOperations.descent` (other): Surjections are of universal ⊗-descent.
- `QcqsEnhancedOperations.codescent` (other): Weakly compactifiable cohomologically smooth surjections representable in locally spatial diamonds are of universal !-codescent.

**Checks.**

- `QcqsEnhancedOperations.point` (degenerate): At X = Spa(C, O_C)^♢ the value is the derived ∞-category of Λ-modules.
- `QcqsEnhancedOperations.shriek_spatial` (compatibility): For a map of separated spatial diamonds that is compactifiable of finite dim.trg, the !-functor is Scholze's Rf_!.
- `QcqsEnhancedOperations.codescent_ball` (computation): For the surjective smooth map from the perfectoid unit ball over Spa C to Spa C, !-codescent holds: D_ét(Spa C, Λ) is the limit of the !-pullback diagram on the Čech nerve.
- `QcqsEnhancedOperations.not_codescent_profinite` (non-example): For an infinite profinite set T, the surjection T × Spa C → Spa C is weakly compactifiable but not cohomologically smooth (its dualizing object is the noninvertible sheaf of distributions), so the codescent statement does not cover it; a version requiring only surjectivity would be wrong.

<a id="VS7-fine-shriek-functors"></a>

### VS7.5 Exceptional functors for fine maps of decent v-stacks (*fine-shriek-functors*, theorem)

For a fine map f : X → Y of decent v-stacks there is a functor Rf_! : D_ét(X, Λ) → D_ét(Y, Λ) with right adjoint Rf^!, such that (1) Rf_! agrees with Scholze's when f is separated and representable in locally spatial diamonds; (2) f ↦ Rf_! is a pseudo-functor from the 2-category of decent v-stacks and fine maps to triangulated categories, so 2-morphisms α : f ⇒ g of fine maps induce isomorphisms α_! : Rf_! ≅ Rg_! and α^! : Rf^! ≅ Rg^! compatible with composition; (3) the projection formula Rf_!(A ⊗ f^*B) ≅ Rf_!A ⊗ B holds; (4) proper base change g^* Rf_! ≅ Rf′_! g̃^* holds for every Cartesian square of decent v-stacks with f fine; the whole structure is encoded by an enhanced operation map on decent v-stacks whose ∗-part is D_ét(−, Λ) with its symmetric monoidal pullbacks.

*Hypotheses.*

- Λ is a commutative ring with nΛ = 0 for an integer n prime to p.
- f is a fine map of decent v-stacks.

*Construction or proof.*

1. First iteration of DESCENT: from coproducts of separated spatial diamonds to quasiseparated locally separated locally spatial diamonds, with surjections as atlases, étale and smooth maps as the auxiliary classes and fine maps as the !-class; the fibre-product condition is GHW22 Lemma 4.10 (VS7/enhanced-operations-for-qcqs-v-sheaves gives Input I).
2. Second iteration: to all locally separated locally spatial diamonds (GHW22 Lemma 4.11). Third iteration: to decent v-stacks with fine maps, atlases being surjections and the auxiliary class the smooth maps (GHW22 §4.5).
3. Each iteration is the DESCENT extension theorem of Liu–Zheng (GHW22 Theorem 4.9), whose hypotheses P0–P5bis follow from proper and smooth base change and the codescent of Proposition 3.16; the theorem itself belongs to the unowned Liu–Zheng machinery (gap).
4. Identify the values with D_ét(X, Λ), compatibly with tensor products and pullbacks, using that every atlas is a v-cover (GHW22 Proposition 4.12); identify g_! with Scholze's Rg_! for representable g by hypercover and quasicompact-open exhaustion (GHW22 Proposition 4.13).
5. Pass to homotopy categories for (1)–(5) of GHW22 Theorem 1.4; Rf_! preserves colimits between presentable categories, so Rf^! exists (EnhancedDerivedSheaves E3/adjoint-functor-theorem-and-localisations).

*Source.* Gulotta–Hansen–Weinstein, Theorem 1.4, pp. 3–4; Theorem 2.6, p. 12: States the existence of Rf_! for fine maps of decent v-stacks with agreement, pseudo-functoriality, projection formula, proper base change and a right adjoint, from an enhanced operation map. Gulotta–Hansen–Weinstein, §§4.2–4.6, Theorem 4.9, Lemmas 4.10–4.11, Propositions 4.12–4.13, pp. 26–30: Runs three iterations of Liu–Zheng's DESCENT and identifies the result with D_ét and Scholze's functors. Hansen–Kaletha–Weinstein, Theorem 4.1.8, p. 24: Recalls the theorem as the input for stacky maps.

*Needs:* Layer VS7 *enhanced-operations-for-qcqs-v-sheaves*; Layer VS6 *fine-morphism*; Layer VS6 *fine-permanence*; Layer VS6 *decent-fibre-products*; DiamondSixOperations S2 *lower-shriek*; DiamondSixOperations S2 *lower-shriek-base-change*; DiamondSixOperations S2 *projection-formula*; DiamondSixOperations S3 *upper-shriek*; EnhancedDerivedSheaves E3 *adjoint-functor-theorem-and-localisations*; VStackSheavesAndLisseCategories VS0 *enhanced-smooth-descent*.

**Checks.**

- For f : [S/G_S] → S, Rf_! is group homology twisted by Haar measures (VS8/classifying-stack-structure-map).
- For f representable in nice diamonds the functors are those of DiamondSixOperations S2–S3.

<a id="VS7-fine-six-functor-identities"></a>

### VS7.6 The six-functor identities for fine maps (*fine-six-functor-identities*, theorem)

For a fine map f : Y → X of decent v-stacks and A, B ∈ D_ét: (P1) f^*A ⊗ f^*B ≅ f^*(A ⊗ B); (P2) Rf_* RHom(f^*A, B) ≅ RHom(A, Rf_*B); (P3) Rf_!(A ⊗ f^*B) ≅ Rf_!A ⊗ B; (P4) RHom(Rf_!A, B) ≅ Rf_* RHom(A, Rf^!B); (P5) Rf^! RHom(A, B) ≅ RHom(f^*A, Rf^!B). For a Cartesian square with f fine, (BC1) g^* Rf_! ≅ Rf′_! g̃^* and, when g is fine, (BC2) Rg^! Rf_* ≅ Rf′_* Rg̃^!. For fine X₁ → S, X₂ → S and correspondences, the Künneth formula (c₂ ×_S d₂)_!(B₁ ⊠_S B₂) ≅ c₂!B₁ ⊠_S d₂!B₂ holds, and the exterior product ⊠_S is compatible with !-pullback by a natural map c₂^!A′₁ ⊠_S d₂^!A′₂ → (c₂ ×_S d₂)^!(A′₁ ⊠_S A′₂).

*Hypotheses.*

- Λ is a commutative ring with nΛ = 0 for an integer n prime to p.
- All maps are maps of decent v-stacks; the shriek operations are those of VS7/fine-shriek-functors.

*Construction or proof.*

1. (P1), (P2) hold for all maps of small v-stacks (Sch17 Theorem 1.8).
2. (P3) and (BC1) are parts (3) and (4) of VS7/fine-shriek-functors.
3. (P4) and (P5) follow from (P3) and the adjunctions by the Yoneda lemma; (BC2) is the right adjoint of (BC1) applied to g (EnhancedDerivedSheaves E3/mates-and-beck-chevalley).
4. Künneth: factor c₂ ×_S d₂ as (c₂ × id) ∘ (id × d₂), apply (BC1) and (P3) twice; the !-pullback comparison is adjoint to the Künneth isomorphism.
5. GHW22 Theorem 1.4 states only agreement, pseudo-functoriality, (P3), (BC1) and the right adjoint; the remaining identities attributed to it by HKW22 Theorem 4.1.8 are derived here (sourceIssues).

*Source.* Hansen–Kaletha–Weinstein, Theorems 4.1.4–4.1.5, pp. 22–23; Theorem 4.1.8, p. 24: Lists (P1)–(P5) and (BC1)–(BC2) for maps representable in nice diamonds and asserts them for fine maps. Gulotta–Hansen–Weinstein, Theorem 1.4, pp. 3–4: Provides the projection formula, proper base change and the right adjoint from which the rest is derived. Hansen–Kaletha–Weinstein, Definition 4.3.4, tensor product of 1-morphisms, p. 30: Uses the Künneth isomorphism for !-pushforward to define tensor products of cohomological correspondences.

*Needs:* Layer VS7 *fine-shriek-functors*; DiamondSixOperations S3 *adjunction-calculus*; DiamondSixOperations S3 *upper-shriek-internal-hom*; DiamondSixOperations S3 *upper-shriek-pushforward-exchange*; DiamondSixOperations S3 *verdier-duality-lower-shriek*; EnhancedDerivedSheaves E3 *mates-and-beck-chevalley*; EnhancedDerivedSheaves E1 *derived-internal-hom*.

**Checks.**

- For f = [S/G_S] → S and B = Λ, (P4) identifies the dual of group homology with group cohomology twisted by Haar(G, Λ)^∗.
- For f representable in nice diamonds the identities are those of DiamondSixOperations S2–S4 (HKW22 Theorems 4.1.4–4.1.5).

<a id="VS7-proper-nice-shriek-is-pushforward"></a>

### VS7.7 Exceptional and ordinary pushforward agree for proper nice maps (*proper-nice-shriek-is-pushforward*, theorem)

For proper nice maps f of decent v-stacks (VS6/proper-nice-maps) there is an isomorphism Rf_! ≅ Rf_*, pseudo-natural in f with respect to composition and 2-morphisms; in particular p_* p^! ≅ p_! p^! and the counit p_!p^! → id gives a trace map Rp_*Rp^! → id.

*Hypotheses.*

- Λ is a commutative ring with nΛ = 0 for an integer n prime to p.
- f is proper nice.

*Construction or proof.*

1. By VS7/fine-shriek-functors (1), Rf_! is Scholze's exceptional pushforward, which equals Rf_* for proper f (DiamondSixOperations S1/lower-shriek-quasicompact and S2/lower-shriek).
2. Pseudo-naturality: both pseudo-functor structures restrict on proper nice maps to Scholze's, and Scholze's comparison is compatible with composition (DiamondSixOperations S2/exchange-pasting-coherence); 2-morphisms between 0-truncated maps are identities up to unique isomorphism.
3. Hansen–Kaletha–Weinstein Theorem 4.1.8 asserts this for all proper fine maps; the restriction to proper nice maps is the convention of VS6/proper-nice-maps (sourceIssues).

*Source.* Hansen–Kaletha–Weinstein, Theorem 4.1.8, p. 24: Asserts a pseudo-natural isomorphism Rf_! → Rf_* on proper morphisms, used throughout §4.3 for 2-morphisms of correspondences. Scholze, Étale cohomology of diamonds, Definition 10.7, Remark 10.8, Definition 18.1, pp. 51–52 and 100: Proper maps of v-stacks are 0-truncated, which reduces the comparison to the representable case.

*Needs:* Layer VS6 *proper-nice-maps*; Layer VS7 *fine-shriek-functors*; DiamondSixOperations S1 *lower-shriek-quasicompact*; DiamondSixOperations S2 *lower-shriek*; DiamondSixOperations S2 *exchange-pasting-coherence*.

**Checks.**

- For a closed immersion i, Ri_! = Ri_* = i_*.
- For p : X → S proper smooth of dimension d over S = Spd C, the trace Rp_*Rp^!Λ → Λ is the trace map in degree 2d.

<a id="VS7-fine-smoothness-and-dualizing-objects"></a>

### VS7.8 Intrinsic cohomological smoothness for fine maps (*fine-smoothness-and-dualizing-objects*, theorem)

For a fine map f : X → Y of decent v-stacks, the following are equivalent: (1) f is ℓ-cohomologically smooth (VS6/fine-cohomologically-smooth); (2) Rf^!F_ℓ is invertible, Rf^!F_ℓ ⊗ f^*(−) → Rf^!(−) is an isomorphism, and both statements hold after every decent base change; (3) Rf^!F_ℓ is invertible and its formation commutes with every decent base change. For smooth f and Λ with nΛ = 0, Rf^!Λ is invertible, Rf^!Λ ⊗ f^* ≅ Rf^!, smooth base change g̃^*Rf^! ≅ Rf′^! g^* and f′^*Rg_! ≅ Rg̃_! f^* hold, and the twisted pullback agrees with the parent's exceptional pullback for smooth stacky maps (VS0/shriek-pullback-for-smooth-stacky-maps).

*Hypotheses.*

- Λ is a commutative ring with nΛ = 0 for an integer n prime to p.
- f is a fine map of decent v-stacks; ℓ ≠ p prime.

*Construction or proof.*

1. (1) ⇒ (2): with charts a, b and a smooth top map g, b^*Rf^!F_ℓ is a twist of Rg^!Ra^!F_ℓ by invertible objects, hence invertible; invertibility is v-local (DiamondSixOperations S4/invertible-object, S4/smooth-twisted-pullback).
2. (2) ⇒ (1): pull back a chart of Y; the top map g composed with a chart h of the source has R(g∘h)^! = R(g∘h)^!F_ℓ ⊗ (g∘h)^*, so g ∘ h is smooth (GHW22 Proposition 4.14).
3. (1) ⇔ (3): reduce to compactifiable maps of locally spatial diamonds and use Fargues–Scholze Proposition IV.2.33 (smooth iff F_ℓ is ULA with invertible dualizing object, iff the dualizing object is invertible and commutes with base change).
4. Smooth base change follows from (2) and (BC1); agreement with the parent's construction: both are the twisted pullback along smooth charts.

*Source.* Gulotta–Hansen–Weinstein, Proposition 4.14 and proof, p. 31: Characterises ℓ-cohomological smoothness of fine maps intrinsically through Rf^!F_ℓ. Fargues–Scholze, Proposition IV.2.33, p. 129: Characterises cohomological smoothness of representable compactifiable maps by ULA-ness of F_ℓ and invertibility of the dualizing object. Hansen–Kaletha–Weinstein, Paragraph after Theorem 4.1.8 and equation (4.1.2), pp. 23–24: Uses the twisted-pullback isomorphism and smooth base change for smooth fine maps.

*Needs:* Layer VS6 *fine-cohomologically-smooth*; Layer VS7 *fine-shriek-functors*; Layer VS7 *fine-six-functor-identities*; DiamondSixOperations S4 *invertible-object*; DiamondSixOperations S4 *smooth-twisted-pullback*; DiamondSixOperations S4 *smooth-upper-shriek-base-change*; DiamondSixOperations S4 *smooth-base-change*; VStackSheavesAndLisseCategories VS1 *smooth-ula-criterion*; VStackSheavesAndLisseCategories VS0 *shriek-pullback-for-smooth-stacky-maps*.

**Checks.**

- For f : [S/G_S] → S, Rf^!Λ = Haar(G, Λ)^∗ is invertible (VS8/classifying-stack-structure-map).
- For G = Z_p and the point q : S → [S/G_S], Rq^!Λ = Haar(Z_p, Λ) is invertible but Rq^!Λ ⊗ q^*M → Rq^!M fails to be an isomorphism for the regular smooth representation M = C(Z_p, Λ), so q is not smooth.

<a id="VS7-relative-dualizing-complex"></a>

### VS7.9 Relative dualizing complexes and integration (*relative-dualizing-complex*, definition)

For a fine map f : X → S of decent v-stacks, K_{X/S} := Rf^!Λ ∈ D_ét(X, Λ); H^0(X, A) denotes Hom(Λ_X, A). For a proper nice p : X → X′ over S, pushforward p_∗ : H^0(X, K_{X/S}) → H^0(X′, K_{X′/S}) is induced by the counit p_!p^!K_{X′/S} → K_{X′/S}. When S is connected and f is proper nice, integration ∫_X : H^0(X, K_{X/S}) → H^0(S, Λ) = Λ is pushforward along f.

*Hypotheses.*

- Λ is a commutative ring with nΛ = 0 for an integer n prime to p.
- f : X → S is fine; for integration f is proper nice (VS6/proper-nice-maps) and S connected.

*Construction or proof.*

1. K_{X/S} is defined by VS7/fine-shriek-functors; p_∗ uses Rp_∗ = Rp_! for proper nice p (VS7/proper-nice-shriek-is-pushforward) and K_{X/S} = p^!K_{X′/S}.
2. Integration is the special case X′ = S with H^0(S, Λ) = Λ for connected S.

*Source.* Hansen–Kaletha–Weinstein, Definition 4.1.9, p. 24: Defines K_{X/S} = Rf^!Λ and the integration map for proper f over connected S, with H^0 meaning Hom from the constant sheaf. Hansen–Kaletha–Weinstein, Description of ΩCoCorr_S, p. 31: Defines pushforward of sections of dualizing complexes along proper maps over S.

*Needs:* Layer VS7 *fine-shriek-functors*; Layer VS7 *proper-nice-shriek-is-pushforward*; DiamondSixOperations S4 *dualizing-complex*.

*Uses.*

- HKW22 Definition 4.3.6, p. 32: characteristic classes are sections of K_{In_S(X)/S}.
- HKW22 equation (4.3.5), p. 33: the trace formula integrates the trace class over Fix(c).
- HKW22 equation (4.2.1), p. 27, and §4.4, p. 35: H^0 of the dualizing complex of [T_S/G_S] is the module of invariant distributions.
- HKW22 §5.3, p. 48: local terms are images of trace classes under integration over clopen pieces.

*API.*

- `dualizingComplex` (data): K_{X/S} = Rf^!Λ.
- `dualizingComplex_comp` (relation): For X → Y → S fine, K_{X/S} ≅ g^!K_{Y/S}.
- `dualizingComplex_smooth` (characterisation): For smooth fine f, K_{X/S} is invertible and Rf^! ≅ K_{X/S} ⊗ f^*.
- `dualizingComplex_baseChange_smooth` (relation): For smooth fine f, formation of K_{X/S} commutes with decent base change.
- `properPushforward` (functoriality): p_∗ : H^0(X, K_{X/S}) → H^0(X′, K_{X′/S}) for proper nice p over S, with (q ∘ p)_∗ = q_∗ ∘ p_∗.
- `integral` (data): ∫_X : H^0(X, K_{X/S}) → Λ for proper nice X over connected S.
- `integral_additive` (relation): For X = X₁ ⊔ X₂, ∫_X ω = ∫_{X₁} ω|_{X₁} + ∫_{X₂} ω|_{X₂}.

**Checks.**

- `dualizingComplex_self` (degenerate): K_{S/S} = Λ_S and ∫_S is the identity of Λ.
- `dualizingComplex_projectiveLine` (computation): For S = Spd C and X = (P¹_C)^♢, K_{X/S} ≅ Λ(1)[2] and ∫_X is the trace isomorphism H²(P¹, Λ(1)) → Λ.
- `dualizingComplex_classifyingStack` (computation): For G = Z_p and S = Spd C, K_{[S/G_S]/S} = Haar(Z_p, Λ)^∗, free of rank one.
- `dualizingComplex_profinite_not_invertible` (non-example): For T = Z_p as a profinite set, K_{T_S/S} is not invertible: H^0(T_S, K) = Dist(Z_p, Λ) is not a rank-one locally free C(Z_p, Λ)-module.
- `dualizingComplex_compat_scholze` (compatibility): For f representable in nice diamonds and smooth, K_{X/S} is the dualizing complex of DiamondSixOperations S4/dualizing-complex.

<a id="VS7-shriek-and-invertible-objects"></a>

### VS7.10 Upper shriek commutes with twisting by invertible objects (*shriek-and-invertible-objects*, theorem)

For a fine map f : Y → X of decent v-stacks and A, I ∈ D_ét(X, Λ) with I invertible, the natural map Rf^!A ⊗ f^*I → Rf^!(A ⊗ I) of equation (4.1.2) is an isomorphism.

*Hypotheses.*

- Λ is a commutative ring with nΛ = 0 for an integer n prime to p.
- f is fine; I is invertible (étale locally L[n] for an invertible Λ-module L).

*Construction or proof.*

1. Write w_{A,I} for the map. The map w_{A⊗I, I^{-1}} twisted by f^*I gives Rf^!(A ⊗ I) → Rf^!A ⊗ f^*I.
2. The two composites are identities by naturality and the unit/counit identities of the adjunction Rf_! ⊣ Rf^! together with the projection formula (VS7/fine-six-functor-identities (P3)).

*Source.* Hansen–Kaletha–Weinstein, Lemma 4.1.10 and proof, p. 24: Proves that upper shriek commutes with tensoring by an invertible object, by exhibiting the inverse map.

*Needs:* Layer VS7 *fine-six-functor-identities*; DiamondSixOperations S4 *invertible-object*.

**Checks.**

- For f : [S/G_S] → S and I = Haar(G, Λ), the isomorphism moves the Haar twist through Rf^!.
- For I = Λ the map is the identity.

<a id="VS7-diagonal-dualizing-complex"></a>

### VS7.11 The dualizing complex of the relative diagonal (*diagonal-dualizing-complex*, theorem)

For a fine cohomologically smooth f : Y → X of decent v-stacks there is a canonical isomorphism RΔ^!_{Y/X}Λ_{Y×_XY} ⊗ Rf^!Λ_X ≅ Λ_Y; hence K_{Y/Y×_XY} ≅ K_{Y/X}^{-1} is invertible.

*Hypotheses.*

- Λ is a commutative ring with nΛ = 0 for an integer n prime to p.
- f is fine and cohomologically smooth.

*Construction or proof.*

1. Λ_Y ≅ R id^! Λ_Y ≅ RΔ^! Rpr₁^! Λ_Y, and pr₁ is smooth, so RΔ^!Rpr₁^!Λ_Y ≅ RΔ^!Λ ⊗ Δ^*Rpr₁^!Λ_Y (VS7/shriek-and-invertible-objects).
2. Smooth base change gives Δ^*Rpr₁^!f^*Λ_X ≅ Δ^*pr₂^*Rf^!Λ_X ≅ Rf^!Λ_X (VS7/fine-smoothness-and-dualizing-objects).

*Source.* Hansen–Kaletha–Weinstein, Lemma 4.1.11, equation (4.1.3) and proof, pp. 24–25: Proves the diagonal dualizing complex is inverse to the relative dualizing complex for smooth fine maps.

*Needs:* Layer VS7 *shriek-and-invertible-objects*; Layer VS7 *fine-smoothness-and-dualizing-objects*.

**Checks.**

- For f : [S/G_S] → S, K_{[S/G]/[S/G]×_S[S/G]} ≅ Haar(G, Λ).
- For f the identity both sides are Λ.

### Examples

- For a separated spatial diamond X over Spa(C, C⁺), the canonical compactification X̄^{/Spa(C,C⁺)} is prespatial, with X₀ = X (the two have the same (K, O_K)-points), and proper over Spa(C, C⁺).
- For a quasicompact open immersion j, Rj_! is extension by zero.
- For the surjective smooth map from the perfectoid unit ball over Spa C to Spa C, !-codescent holds: D_ét(Spa C, Λ) is the limit of the !-pullback diagram on the Čech nerve.
- For S = Spd C and X = (P¹_C)^♢, K_{X/S} ≅ Λ(1)[2] and ∫_X is the trace isomorphism H²(P¹, Λ(1)) → Λ.
- For G = Z_p and S = Spd C, K_{[S/G_S]/S} = Haar(Z_p, Λ)^∗, free of rank one.

### Dependencies

This layer uses `VStackSheavesAndLisseCategoriesPartII:VS6`, `VStackSheavesAndLisseCategories:VS0`, `DiamondSixOperations:S1`, `DiamondSixOperations:S2`, `DiamondSixOperations:S3`, `DiamondSixOperations:S4`, `EnhancedDerivedSheaves:E2`, `EnhancedDerivedSheaves:E3`, `EnhancedDerivedSheaves:E5:abstract`.

## Layer VS8: locally profinite sets and classifying stacks

Define smooth and complete modules over C(T, Λ) for a locally profinite set T and prove that they are equivalent to each other and to sheaves of modules on T. Define distributions Dist(T, Λ) and the module Haar(G, Λ) of Haar measures of a locally profinite group.

Targets: for a geometric point S, D_ét(T_S, Λ) is the derived category of smooth C(T, Λ)-modules with explicit four operations and H^0(T_S, f^!Λ) = Dist(T, Λ); for G locally pro-p (closed in GL_n(E)), [S/G_S] is decent, the point q has q^*, Rq_*, Rq_!, Rq^! equal to forgetting, smooth induction, compact induction and Hom_G(C_c(G, Λ), −) with Rq^!Λ = Haar(G, Λ); for H ⊂ G closed, [S/H_S] → [S/G_S] realises restriction, smooth and compact induction; [S/G_S] → S is fine and smooth with Rf_* group cohomology, Rf_! twisted group homology and K = Haar(G, Λ)^∗; [T_S/G_S] is decent and fine with H^0 of its dualizing complex the Haar-twisted invariant distributions.

Key definitions and theorems shown in the atlas: Smooth modules on locally profinite sets, Sheaves on constant locally profinite diamonds, Operations on classifying stacks.

<a id="VS8-smooth-and-complete-modules"></a>

### VS8.1 Smooth and complete modules over locally constant functions (*smooth-and-complete-modules*, definition)

Let C(T, Λ) be the ring of locally constant functions T → Λ and C_c(T, Λ) the ideal of those with compact support; for a compact open U ⊂ T, 1_U is its characteristic function and 1_U·M ≅ C(U, Λ)⊗M is a C(T, Λ)-module. A C(T, Λ)-module M is smooth if M ⊗_{C(T,Λ)} C_c(T, Λ) → M is an isomorphism, equivalently colim_U 1_U·M → M is an isomorphism over compact opens U ordered by inclusion (every m equals 1_U·m for some compact open U); M is complete if M → lim_U 1_U·M is an isomorphism, with transition maps multiplication by 1_V. The functors M^s := colim_U 1_U·M and M^c := lim_U 1_U·M are projectors onto smooth and complete modules and restrict to mutually inverse equivalences between them.

*Hypotheses.*

- T is a locally profinite set (Hausdorff, locally compact, totally disconnected); Λ is a discrete commutative ring.

*Construction or proof.*

1. 1_U·M is both a submodule of colim_U 1_U·M and of lim_U 1_U·M, and equals 1_U applied to either (HKW22 Lemma B.2.2): the transition maps are inclusions, respectively projections, compatible with multiplication by idempotents.
2. Hence (M^s)^s = M^s and (M^c)^c = M^c, and (M^s)^c ≅ M^c, (M^c)^s ≅ M^s (HKW22 Lemma B.2.3).

*Source.* Hansen–Kaletha–Weinstein, Appendix B.2, Definition B.2.1, Lemmas B.2.2–B.2.3, pp. 73–74: Defines smooth and complete C(S, Λ)-modules for a locally profinite set S, the projectors M ↦ M^s, M ↦ M^c, and the equivalence between the two categories.

*Needs:* Mathlib `LocallyConstant`; Mathlib `LocallyConstant.charFn`; Mathlib `TopologicalSpace.CompactOpens`; SmoothRepresentationsOfLocalGroups SR.1 *locally-constant-compact-support*.

*Uses.*

- HKW22 Example 4.2.1, p. 25: D_ét(T_S, Λ) is the derived category of smooth C(T, Λ)-modules; f_* sends M to M^c and f^! to RHom(C_c(T,Λ), M)^s.
- HKW22 Example 4.2.5 and equation (4.2.1), p. 27: G-equivariant smooth C(T, Λ)-modules describe sheaves on [T_S/G_S].

*API.*

- `IsSmoothModule` (data): M is smooth iff every m ∈ M satisfies 1_U • m = m for some compact open U ⊆ T.
- `smoothVectors` (constructor): The set of m ∈ M fixed by some 1_U; as a submodule it is the smooth part M^s = colim_U 1_U·M.
- `add_mem_smoothVectors` (structure): Smooth vectors are closed under addition (use 1_{U ∪ V}), and under scalars, so they form a submodule.
- `isSmoothModule_iff_smoothVectors_eq_univ` (characterisation): M is smooth iff every vector is smooth.
- `completion` (constructor): M^c = lim_U 1_U·M with projections given by multiplication by idempotents.
- `smoothCompleteEquiv` (equivalence): M ↦ M^c and M ↦ M^s are inverse equivalences between smooth and complete C(T, Λ)-modules; (M^s)^s = M^s and (M^c)^c = M^c.
- `isSmoothModule_iff_tensor` (characterisation): M is smooth iff M ⊗_{C(T,Λ)} C_c(T, Λ) → M is an isomorphism.
- `isSmoothModule_of_compactSpace` (other): If T is compact, every C(T, Λ)-module is smooth.

**Checks.**

- `isSmoothModule_finite` (computation): For T a finite discrete set, every C(T, Λ)-module is smooth (and complete).
- `isSmoothModule_empty` (degenerate): For T empty, C(T, Λ) = 0 and the only module is 0, which is smooth.
- `not_isSmoothModule_regular` (non-example): For T = ℕ discrete and Λ = ℤ, the regular module C(ℕ, ℤ) = ℤ^ℕ is not smooth: the constant function 1 is not 1_U·1 for any finite U.
- `compactSupport_isSmooth` (characterisation): C_c(T, Λ) is a smooth C(T, Λ)-module for every locally profinite T.
- `smoothVectors_regular` (compatibility): For T = ℕ, the smooth vectors of Λ^ℕ are the finitely supported sequences, Λ^{(ℕ)} = C_c(ℕ, Λ).

<a id="VS8-sheaves-on-locally-profinite-sets"></a>

### VS8.2 Sheaves on a locally profinite set as smooth modules (*sheaves-on-locally-profinite-sets*, theorem)

Let R be the sheaf of rings U ↦ C(U, Λ) on T. For an R-module sheaf F and compact open U, restriction F(T) → F(U) is surjective, restricts to an isomorphism 1_U·F(T) ≅ F(U), and F(T) = lim_U F(U). The functors M ↦ F_M (F_M(U) = 1_U·M) and F ↦ M^s_F = colim_U F(U) (respectively M^c_F = lim_U F(U)) are mutually inverse equivalences between smooth (respectively complete) C(T, Λ)-modules and R-module sheaves on T, compatible with the equivalence of VS8/smooth-and-complete-modules, and F_M(T) = M^c. In particular sheaves of Λ-modules on T are smooth C(T, Λ)-modules, the constant sheaf Λ corresponding to C_c(T, Λ).

*Hypotheses.*

- T is a locally profinite set (Hausdorff, locally compact, totally disconnected); Λ is a discrete commutative ring.

*Construction or proof.*

1. Compact opens form a basis closed under finite unions and intersections, so sheaves on T are sheaves on that basis.
2. A compact open U is clopen, so T = U ⊔ (T ∖ U) and F(T) = F(U) × F(T ∖ U); 1_U acts as the projection, giving surjectivity and 1_U·F(T) ≅ F(U) (HKW22 Lemma B.2.4).
3. The sheaf condition along the cover by compact opens gives F(T) = lim_U F(U); combine with VS8/smooth-and-complete-modules to get the two equivalences (HKW22 Lemma B.2.5).

*Source.* Hansen–Kaletha–Weinstein, Appendix B.2, Lemmas B.2.4–B.2.5, p. 74: Shows restriction to compact opens is surjective with 1_U·F(S) ≅ F(U), F(S) = lim F(U), and that smooth or complete modules are equivalent to R-module sheaves with F_M(S) = M^c.

*Needs:* Layer VS8 *smooth-and-complete-modules*; Mathlib `TopologicalSpace.CompactOpens`.

**Checks.**

- For T finite discrete, sheaves are Λ^T-modules.
- The constant sheaf Λ corresponds to the smooth module C_c(T, Λ), with global sections C(T, Λ) = C_c(T, Λ)^c.

<a id="VS8-locally-profinite-distributions"></a>

### VS8.3 Distributions on a locally profinite set (*locally-profinite-distributions*, definition)

The Λ-module of Λ-valued distributions on T is Dist(T, Λ) := Hom_Λ(C_c(T, Λ), Λ). It is a C(T, Λ)-module by (φ·μ)(h) = μ(φh); its smooth part is the module of distributions supported on compact sets; for a group G acting continuously on T, G acts by translation and Dist(T, Λ)^G is the module of invariant distributions.

*Hypotheses.*

- T is a locally profinite set (Hausdorff, locally compact, totally disconnected); Λ is a discrete commutative ring.

*Construction or proof.*

1. Dist(T, Λ) is the algebraic Λ-dual of the smooth module C_c(T, Λ) (VS8/smooth-and-complete-modules).
2. C_c(T, Λ) is spanned by the 1_U·a for compact open U and a ∈ Λ (SmoothRepresentationsOfLocalGroups SR.1/locally-constant-compact-support), so a distribution is a finitely additive Λ-valued function on compact opens.

*Source.* Hansen–Kaletha–Weinstein, Example 4.2.1, p. 25: Identifies H^0(T_S, f^!Λ) with Dist(T, Λ), the module of Λ-valued distributions on T. Hansen–Kaletha–Weinstein, Example 4.2.5 and equation (4.2.1), p. 27: Interprets H^0 of the dualizing complex of [T_S/G_S] as invariant distributions with values in Haar(G, Λ)^∗.

*Needs:* Layer VS8 *smooth-and-complete-modules*; SmoothRepresentationsOfLocalGroups SR.1 *locally-constant-compact-support*; Mathlib `Module.Dual`.

*Uses.*

- HKW22 Example 4.2.1, p. 25: H^0(T_S, f^!Λ) ≅ Dist(T, Λ).
- HKW22 §4.4, equation (4.4.1), p. 35: trace distributions are G-invariant distributions on G twisted by Haar measures.
- DiamondSixOperations:S5/profinite-quotient-upper-shriek: the exceptional pullback for a profinite quotient is a sheaf of distributions.

*API.*

- `Dist` (data): Dist(T, Λ) = Hom_Λ(C_c(T, Λ), Λ).
- `Dist.dirac` (constructor): The Dirac distribution δ_x(h) = h(x).
- `Dist.ofAdditive` (equivalence): Distributions correspond to finitely additive Λ-valued functions on compact open subsets.
- `Dist.module` (instance): Dist(T, Λ) is a C(T, Λ)-module by (φ·μ)(h) = μ(φh).
- `Dist.translate` (functoriality): A continuous action of G on T induces an action on Dist(T, Λ); the invariants Dist(T, Λ)^G are the invariant distributions.
- `Dist.pushforward_proper` (functoriality): A proper map T → T′ induces Dist(T, Λ) → Dist(T′, Λ) by μ ↦ μ ∘ pullback.

**Checks.**

- `Dist.finite` (computation): For T = Fin 3 discrete, Dist(T, Λ) ≅ Λ³ with basis the Dirac masses.
- `Dist.empty` (degenerate): For T empty, Dist(T, Λ) = 0.
- `Dist.haar_invariant` (compatibility): For G = Z_p and p ∈ Λ^×, the normalised Haar measure of SmoothRepresentationsOfLocalGroups SR.1/a-valued-haar-measure is a Z_p-invariant element of Dist(Z_p, Λ).
- `Dist.not_functions` (non-example): For T = Z_p and Λ = F_ℓ (ℓ ≠ p), the Haar distribution is not of the form h ↦ Σ_x a_x h(x) for finitely many Dirac masses, so Dist(T, Λ) is strictly larger than the span of Dirac masses.

<a id="VS8-constant-locally-profinite-diamond-operations"></a>

### VS8.4 Operations on a constant locally profinite diamond (*constant-locally-profinite-diamond-operations*, theorem)

For S a geometric point, T locally profinite and f : T_S = T × S → S, the map f is representable in nice diamonds and D_ét(T_S, Λ) is equivalent to the derived category of smooth C(T, Λ)-modules, the constant sheaf Λ corresponding to C_c(T, Λ). Under this identification f^*M = C_c(T, Λ) ⊗_Λ M, Rf_*M is the derived functor of M ↦ M^c, Rf_!M is the underlying Λ-module of M, and Rf^!M = RHom_Λ(C_c(T, Λ), M)^s; in particular H^0(T_S, Rf^!Λ) ≅ Dist(T, Λ).

*Hypotheses.*

- S = Spd C for an algebraically closed perfectoid field C, or S = Spd k for an algebraically closed discrete field k of characteristic p; D_ét(S, Λ) is identified with D(Λ).
- T is a locally profinite set (Hausdorff, locally compact, totally disconnected); Λ is a discrete commutative ring.
- Λ is a commutative ring with nΛ = 0 for an integer n prime to p.

*Construction or proof.*

1. T_S → S is representable in nice diamonds: T_S is locally a proper diamond of dim.trg 0 over S (DiamondsAndVStacks D4/compact-hausdorff-diamonds, DiamondSixOperations S1/proper-dim-zero-classification).
2. T_S has locally cohomological dimension zero, so D_ét(T_S, Λ) = D(T_{S,ét}, Λ), and the étale site of T_S is the site of the topological space T (DiamondSixOperations S1/proper-dim-zero-topological-comparison); apply VS8/sheaves-on-locally-profinite-sets.
3. f^* is the constant sheaf functor; Rf_* is global sections, M ↦ M^c by HKW22 Lemma B.2.5; Rf_! is compactly supported sections, colim over compact opens of F(U) = M^s = M.
4. Rf^! is the right adjoint of Rf_!: Hom_Λ(N, M) = Hom_{C(T,Λ)}(N, Hom_Λ(C_c(T, Λ), M)) for smooth N, and maps from a smooth module land in the smooth part; at M = Λ, H^0 = Hom_Λ(C_c(T, Λ), Λ) = Dist(T, Λ) (VS8/locally-profinite-distributions).

*Source.* Hansen–Kaletha–Weinstein, Example 4.2.1, p. 25: Identifies D_ét(T_S, Λ) with the derived category of smooth C(T, Λ)-modules and computes the four operations of T_S → S, with H^0(T_S, f^!Λ) = Dist(T, Λ).

*Needs:* Layer VS8 *sheaves-on-locally-profinite-sets*; Layer VS8 *locally-profinite-distributions*; DiamondsAndVStacks D4 *compact-hausdorff-diamonds*; DiamondSixOperations S1 *proper-dim-zero-classification*; DiamondSixOperations S1 *proper-dim-zero-topological-comparison*; DiamondSixOperations S2 *lower-shriek*; DiamondSixOperations S3 *upper-shriek*; DiamondSixOperations S5 *profinite-quotient-upper-shriek*; Layer VS6 *decent-v-stack-examples*.

**Checks.**

- For T finite, all four operations are the identity on Λ^T-modules up to the obvious identifications.
- For T = Z_p, Rf^!Λ is the sheaf of distributions of DiamondSixOperations S5/profinite-quotient-upper-shriek.

<a id="VS8-haar-module"></a>

### VS8.5 The module of Haar measures (*haar-module*, definition)

For a locally profinite group G and a commutative ring Λ, Haar(G, Λ) is the Λ-module of left-invariant Λ-valued Haar measures, i.e. Hom_G(C_c(G, Λ), Λ) for the left-translation action; G acts on it through right translation, by the modulus character. If G has a compact open subgroup of pro-order invertible in Λ (for instance G locally pro-p and p ∈ Λ^×), Haar(G, Λ) is free of rank one, generated by the measure normalised on such a subgroup; its dual is Haar(G, Λ)^∗.

*Hypotheses.*

- G is a locally profinite group; Λ is a commutative ring.

*Construction or proof.*

1. A left-invariant distribution is determined by its values on translates of a compact open subgroup U₀; finite additivity and invariance give μ(gU) = [U₀ : U]^{-1} μ(U₀) for U ≤ U₀ when [U₀ : U] is invertible (SmoothRepresentationsOfLocalGroups SR.1/a-valued-haar-measure, existence and uniqueness of the normalised measure).
2. Right translation by g multiplies a left Haar measure by the modulus δ(g) (SR.2/modulus-character).

*Source.* Hansen–Kaletha–Weinstein, Example 4.2.2, p. 26: Identifies q^!Λ for the point of [S/G_S] with Haar(G, Λ), the module of left-invariant Haar measures. Hansen–Kaletha–Weinstein, Example 4.2.4, p. 27, and equation (4.4.1), p. 35: Uses Haar(G, Λ)^∗ as the relative dualizing complex of [S/G_S] → S, with G acting on Haar(G, Λ) by the modular character.

*Needs:* SmoothRepresentationsOfLocalGroups SR.1 *a-valued-haar-measure*; SmoothRepresentationsOfLocalGroups SR.1 *locally-constant-compact-support*; SmoothRepresentationsOfLocalGroups SR.2 *modulus-character*; SmoothRepresentationsOfLocalGroups SR.0:abelian-category *unit-pro-order*; Layer VS8 *locally-profinite-distributions*.

*Uses.*

- HKW22 Examples 4.2.2 and 4.2.4, pp. 26–27: q^!Λ = Haar(G, Λ) and K_{[S/G_S]/S} = Haar(G, Λ)^∗.
- HKW22 Proposition 4.4.1, p. 34: the dual of an admissible object is Haar(G, Λ)^∗ ⊗ M^∨.
- HKW22 equation (4.4.1), p. 35: trace distributions take values on C_c(G, Λ) ⊗ Haar(G, Λ).

*API.*

- `HaarModule` (data): Haar(G, Λ) = Hom_G(C_c(G, Λ), Λ) for the left-translation action.
- `HaarModule.free_rank_one` (characterisation): If G has a compact open subgroup of pro-order invertible in Λ, Haar(G, Λ) is free of rank one, generated by the measure with value 1 on that subgroup.
- `HaarModule.rightTranslate` (functoriality): Right translation by g acts on Haar(G, Λ) by the modulus character δ_G(g).
- `HaarModule.toDist` (coercion): Haar(G, Λ) ⊂ Dist(G, Λ)^G.
- `HaarModule.integrate` (other): The pairing C_c(G, Λ) ⊗ Haar(G, Λ) → Λ, (h, μ) ↦ ∫ h dμ.

**Checks.**

- `HaarModule.finite` (computation): For G = Z/3 and Λ = Z[1/3], Haar(G, Λ) is free of rank one generated by counting measure.
- `HaarModule.zp_free` (computation): For G = Z_p and Λ = F_ℓ (ℓ ≠ p), Haar(G, Λ) is free of rank one, generated by μ with μ(Z_p) = 1 and μ(p^nZ_p) = p^{-n}.
- `HaarModule.zp_modp_zero` (non-example): For G = Z_p and Λ = F_p, Haar(G, Λ) = 0: the invertibility hypothesis cannot be dropped.
- `HaarModule.borel_modulus` (characterisation): For G the group of upper triangular matrices [[a, b], [0, 1]] in GL₂(Q_p), right translation by diag(p, 1) acts on Haar(G, Λ) by the scalar |p|^{±1} given by the modulus character, which is nontrivial.

<a id="VS8-classifying-stack-is-decent"></a>

### VS8.6 Classifying stacks of locally pro-p groups are decent (*classifying-stack-is-decent*, theorem)

For G as in HKW22 Example 4.2.2 and S a geometric point, the classifying v-stack [S/G_S] is decent with chart X/G_S → [S/G_S], the quotient q : S → [S/G_S] is representable in nice diamonds, and for every closed subgroup H ⊂ G the map [S/H_S] → [S/G_S] is representable in nice diamonds and [S/H_S] is decent.

*Hypotheses.*

- S = Spd C for an algebraically closed perfectoid field C, or S = Spd k for an algebraically closed discrete field k of characteristic p; D_ét(S, Λ) is identified with D(Λ).
- G is a locally pro-p group admitting a free action on a separated locally spatial diamond X with a strictly surjective cohomologically smooth map X → S (for instance G closed in GL_n(E) for E finite over Q_p or F_p((t)), with X = GL_{n,E}^♢ × S).

*Construction or proof.*

1. Diagonal: S ×_{[S/G_S]} S ≅ G_S, and more generally the diagonal of [S/G_S] has fibres G-torsors, which are locally separated locally spatial diamonds (VS6/classifying-stack-of-group-diamond).
2. Chart: X → X/G_S is a G_S-torsor, so X/G_S ×_{[S/G_S]} S ≅ X, which is strictly surjective and cohomologically smooth over S; hence X/G_S → [S/G_S] is a chart.
3. q is a G_S-torsor, representable in nice diamonds; for H closed, [S/H_S] → [S/G_S] has fibres (G/H)_S, constant locally profinite diamonds (VS8/constant-locally-profinite-diamond-operations).

*Source.* Hansen–Kaletha–Weinstein, Example 4.2.2 and footnote 3, pp. 25–26: States that [S/G_S] is decent with chart X/G_S → [S/G_S] for a free G_S-action on a separated locally spatial diamond smooth over S, satisfied for G closed in GL_n(E). Hansen–Kaletha–Weinstein, Example 4.2.3, p. 26: States that [S/H_S] is decent and [S/H_S] → [S/G_S] representable in nice diamonds for H closed in G.

*Needs:* Layer VS6 *classifying-stack-of-group-diamond*; Layer VS6 *decent-v-stack*; Layer VS6 *decent-v-stack-examples*; Layer VS8 *constant-locally-profinite-diamond-operations*; DiamondSixOperations S5 *free-quotient-smooth*.

**Checks.**

- For G = GL_n(Z_p), [S/G_S] is decent.
- For G = Q_p^× ⊂ GL₁(Q_p), [S/G_S] is decent.

<a id="VS8-classifying-stack-operations"></a>

### VS8.7 The four operations of the point of a classifying stack (*classifying-stack-operations*, theorem)

For q : S → [S/G_S], q^* identifies D_ét([S/G_S], Λ) with the derived category of smooth G-representations on Λ-modules (the parent's VS4/classifying-stack-equivalence), the action of g ∈ G on q^*M coming from the 2-morphism α_g : q ⇒ q. Under it: q^*M is M with the action forgotten; Rq_*M = C(G, M)^{G-sm} (smooth induction from the trivial group); Rq_!M = C_c(G, Λ) ⊗ M (compact induction); Rq^!M = Hom_G(C_c(G, Λ), M); in particular Rq^!Λ = Haar(G, Λ).

*Hypotheses.*

- S = Spd C for an algebraically closed perfectoid field C, or S = Spd k for an algebraically closed discrete field k of characteristic p; D_ét(S, Λ) is identified with D(Λ).
- G is a locally pro-p group admitting a free action on a separated locally spatial diamond X with a strictly surjective cohomologically smooth map X → S (for instance G closed in GL_n(E) for E finite over Q_p or F_p((t)), with X = GL_{n,E}^♢ × S).
- Λ is a commutative ring with nΛ = 0 for an integer n prime to p.

*Construction or proof.*

1. q^* is the parent's equivalence (Fargues–Scholze Theorem V.1.1) with g acting via α_g (VS6/two-morphism-adjunction-compatibility).
2. Rq_* is the right adjoint of restriction to the trivial group, i.e. smooth induction (SmoothRepresentationsOfLocalGroups SR.2/smooth-induction, SR.2/frobenius-reciprocity).
3. Rq_!: base change along q (BC1) identifies q^*Rq_!M with the compactly supported sections of the constant sheaf on G_S, i.e. C_c(G, M) (VS8/constant-locally-profinite-diamond-operations); this is compact induction from the trivial group (SR.2/compact-induction).
4. Rq^! is the right adjoint of compact induction: Hom_G(C_c(G, Λ), M); at M = Λ it is Haar(G, Λ) (VS8/haar-module).

*Source.* Hansen–Kaletha–Weinstein, Example 4.2.2, pp. 25–26: Computes q^*, Rq_*, Rq_!, Rq^! for the point of [S/G_S] in terms of smooth representations, with Rq^!Λ = Haar(G, Λ). Fargues–Scholze, Theorem V.1.1, p. 168: Identifies D_ét([∗/G], Λ) with the derived category of smooth representations for locally pro-p G, the same after base change to Spa C.

*Needs:* Layer VS8 *classifying-stack-is-decent*; Layer VS8 *constant-locally-profinite-diamond-operations*; Layer VS8 *haar-module*; VStackSheavesAndLisseCategories VS4 *classifying-stack-equivalence*; Layer VS6 *two-morphism-adjunction-compatibility*; Layer VS7 *fine-six-functor-identities*; SmoothRepresentationsOfLocalGroups SR.2 *smooth-induction*; SmoothRepresentationsOfLocalGroups SR.2 *compact-induction*; SmoothRepresentationsOfLocalGroups SR.2 *frobenius-reciprocity*.

**Checks.**

- For G finite, Rq_* = Rq_! = Λ[G] ⊗ − and Rq^! = q^* up to Haar(G, Λ) ≅ Λ.
- For G = Z_p and M = Λ, Rq_*Λ = C(Z_p, Λ) and Rq^!Λ = Haar(Z_p, Λ).

<a id="VS8-restriction-and-induction-as-operations"></a>

### VS8.8 Restriction, induction and compact induction as operations (*restriction-and-induction-as-operations*, theorem)

For H ⊂ G closed and q : [S/H_S] → [S/G_S]: q^* is restriction from G to H, Rq_* is smooth induction Ind_H^G, Rq_! is compact induction c-Ind_H^G; Rq^! equals restriction when H is open, and Rq^!M = Hom_{H′}(C_c(H′, Λ), M)^{H-sm} when G = H × H′.

*Hypotheses.*

- S = Spd C for an algebraically closed perfectoid field C, or S = Spd k for an algebraically closed discrete field k of characteristic p; D_ét(S, Λ) is identified with D(Λ).
- G is a locally pro-p group admitting a free action on a separated locally spatial diamond X with a strictly surjective cohomologically smooth map X → S (for instance G closed in GL_n(E) for E finite over Q_p or F_p((t)), with X = GL_{n,E}^♢ × S).
- Λ is a commutative ring with nΛ = 0 for an integer n prime to p.
- H ⊂ G is a closed subgroup.

*Construction or proof.*

1. Underlying modules: q_H^*q^* = q_G^* and α_h = id_q ∗ β_h, so q^* is restriction (VS6/two-morphism-adjunction-compatibility); Rq_* is its right adjoint, smooth induction.
2. Rq_!: base change along q_G gives the descent of M along G → G/H as compactly supported H-equivariant functions, i.e. c-Ind_H^G M, with the G-action identified through the compatibility of base change with α_g (VS8/constant-locally-profinite-diamond-operations, SR.2/compact-induction).
3. H open: q is étale, Rq^! = q^*. Direct factor: c-Ind_H^G M ≅ M ⊠ C_c(H′, Λ), whose right adjoint is the stated smooth part of Hom_{H′}(C_c(H′, Λ), −).

*Source.* Hansen–Kaletha–Weinstein, Example 4.2.3, p. 26: Computes q^*, Rq_*, Rq_! as restriction, smooth and compact induction for [S/H_S] → [S/G_S], and Rq^! for H open or a direct factor.

*Needs:* Layer VS8 *classifying-stack-operations*; Layer VS8 *classifying-stack-is-decent*; SmoothRepresentationsOfLocalGroups SR.2 *smooth-induction*; SmoothRepresentationsOfLocalGroups SR.2 *compact-induction*; SmoothRepresentationsOfLocalGroups SR.2 *frobenius-reciprocity*; Layer VS6 *two-morphism-adjunction-compatibility*.

**Checks.**

- For H = 1 the statements reduce to VS8/classifying-stack-operations.
- For G = H × H′ with H′ finite, Rq^!M = M as an H-representation (Haar(H′) ≅ Λ).

<a id="VS8-classifying-stack-structure-map"></a>

### VS8.9 The structure map of a classifying stack (*classifying-stack-structure-map*, theorem)

f : [S/G_S] → S is fine and ℓ-cohomologically smooth; under VS8/classifying-stack-operations, f^*M is M with trivial action, Rf_*M is derived G-invariants RΓ(G, M) (smooth group cohomology), Rf_!M = (M ⊗ Haar(G, Λ))_G is derived coinvariants (group homology twisted by Haar measures), Rf^!M = Haar(G, Λ)^∗ ⊗ M with trivial action twisted by the dual Haar character, and K_{[S/G_S]/S} = Haar(G, Λ)^∗.

*Hypotheses.*

- S = Spd C for an algebraically closed perfectoid field C, or S = Spd k for an algebraically closed discrete field k of characteristic p; D_ét(S, Λ) is identified with D(Λ).
- G is a locally pro-p group admitting a free action on a separated locally spatial diamond X with a strictly surjective cohomologically smooth map X → S (for instance G closed in GL_n(E) for E finite over Q_p or F_p((t)), with X = GL_{n,E}^♢ × S).
- Λ is a commutative ring with nΛ = 0 for an integer n prime to p.

*Construction or proof.*

1. Fine and smooth: the chart X/G_S → [S/G_S] composed with f is X/G_S → S. For a compact open pro-p subgroup K, X/K_S → S is cohomologically smooth (DiamondSixOperations S5/free-quotient-smooth, K having pro-order prime to ℓ), and X/K_S → X/G_S is étale and surjective (its base change to X is X × G/K → X), so X/G_S → S is smooth; the square with the chart witnesses smoothness of f (VS6/fine-cohomologically-smooth).
2. Rf_* is right adjoint to f^*, the trivial-representation functor: derived invariants (SmoothRepresentationsOfLocalGroups SR.0:derived-extension/derived-invariants).
3. Smoothness gives Rf^!M ≅ f^*M ⊗ Rf^!Λ (VS7/fine-smoothness-and-dualizing-objects); since f ∘ q = id, M = Rq^!Rf^!M = Haar(G, Λ) ⊗ Rf^!M, so Rf^!M = Haar(G, Λ)^∗ ⊗ M.
4. Rf_! is the left adjoint of Rf^!, i.e. derived coinvariants of the Haar twist.

*Source.* Hansen–Kaletha–Weinstein, Example 4.2.4, p. 27: Shows [S/G_S] → S is fine and cohomologically smooth and computes f^*, Rf_*, Rf_!, Rf^!, with K = Haar(G, Λ)^∗.

*Needs:* Layer VS8 *classifying-stack-operations*; Layer VS8 *haar-module*; Layer VS6 *fine-cohomologically-smooth*; Layer VS7 *fine-smoothness-and-dualizing-objects*; Layer VS7 *relative-dualizing-complex*; SmoothRepresentationsOfLocalGroups SR.0:derived-extension *derived-invariants*; DiamondSixOperations S5 *free-quotient-smooth*.

**Checks.**

- For G finite of order invertible in Λ, Rf_* = Rf_! = (−)^G.
- For G = Z_p and M = Λ, Rf_*Λ = Λ in degree 0 (p invertible) and K = Haar(Z_p, Λ)^∗ ≅ Λ.

<a id="VS8-quotients-of-locally-profinite-sets"></a>

### VS8.10 Quotients of locally profinite sets by locally pro-p groups (*quotients-of-locally-profinite-sets*, theorem)

For T locally profinite with a continuous G-action, [T_S/G_S] is decent and fine over S (not cohomologically smooth in general); D_ét([T_S/G_S], Λ) is the derived category of G-equivariant smooth C(T, Λ)-modules; and there is a natural isomorphism H^0([T_S/G_S], K_{[T_S/G_S]/S}) ≅ Hom_G(C_c(T, Λ) ⊗ Haar(G, Λ), Λ), the G-invariant distributions on T with values in Haar(G, Λ)^∗; for G unimodular with a chosen Haar measure this is Dist(T, Λ)^G.

*Hypotheses.*

- S = Spd C for an algebraically closed perfectoid field C, or S = Spd k for an algebraically closed discrete field k of characteristic p; D_ét(S, Λ) is identified with D(Λ).
- G is a locally pro-p group admitting a free action on a separated locally spatial diamond X with a strictly surjective cohomologically smooth map X → S (for instance G closed in GL_n(E) for E finite over Q_p or F_p((t)), with X = GL_{n,E}^♢ × S).
- T is a locally profinite set (Hausdorff, locally compact, totally disconnected); Λ is a discrete commutative ring.
- G acts continuously on T.

*Construction or proof.*

1. [T_S/G_S] → [S/G_S] is representable in nice diamonds (base change along q is T_S → S), so [T_S/G_S] is decent and fine over S by VS6/fine-permanence and VS8/classifying-stack-is-decent.
2. Descend VS8/sheaves-on-locally-profinite-sets along T_S → [T_S/G_S]: sheaves on the quotient are G-equivariant smooth modules.
3. K_{[T_S/G_S]/S} = r^!K_{[S/G_S]/S} for r : [T_S/G_S] → [S/G_S]; combine VS8/constant-locally-profinite-diamond-operations with VS8/classifying-stack-structure-map and take G-invariants.

*Source.* Hansen–Kaletha–Weinstein, Example 4.2.5 and equation (4.2.1), p. 27: Shows [T_S/G_S] is decent and fine over S, describes its sheaves as G-equivariant smooth modules and computes H^0 of its dualizing complex as invariant distributions twisted by Haar measures.

*Needs:* Layer VS8 *classifying-stack-is-decent*; Layer VS8 *sheaves-on-locally-profinite-sets*; Layer VS8 *constant-locally-profinite-diamond-operations*; Layer VS8 *classifying-stack-structure-map*; Layer VS8 *locally-profinite-distributions*; Layer VS6 *fine-permanence*; Layer VS7 *relative-dualizing-complex*.

**Checks.**

- For T = G with the conjugation action, H^0 is Hom_G(C_c(G, Λ) ⊗ Haar(G, Λ), Λ), the home of trace distributions (VS11/trace-distribution).
- For T a point, H^0 = Haar(G, Λ)^∗ invariants.

### Examples

- For T a finite discrete set, every C(T, Λ)-module is smooth (and complete).
- For T = Fin 3 discrete, Dist(T, Λ) ≅ Λ³ with basis the Dirac masses.
- For G = Z/3 and Λ = Z[1/3], Haar(G, Λ) is free of rank one generated by counting measure.
- For G = Z_p and Λ = F_ℓ (ℓ ≠ p), Haar(G, Λ) is free of rank one, generated by μ with μ(Z_p) = 1 and μ(p^nZ_p) = p^{-n}.

### Dependencies

This layer uses `VStackSheavesAndLisseCategoriesPartII:VS6`, `VStackSheavesAndLisseCategoriesPartII:VS7`, `VStackSheavesAndLisseCategories:VS4`, `SmoothRepresentationsOfLocalGroups:SR.0`, `SmoothRepresentationsOfLocalGroups:SR.1`, `SmoothRepresentationsOfLocalGroups:SR.2`, `DiamondSixOperations:S1`, `DiamondSixOperations:S5`.

## Layer VS9: categorical traces and cohomological correspondences

Define dualizable objects, traces, pairings and dimensions in symmetric monoidal 2-categories, the functoriality of traces along right-adjointable morphisms (Lu–Zheng Constructions 1.7–1.8) and the symmetric monoidal Grothendieck construction. Prove that dualizable objects of D(Λ) are perfect complexes with Euler-characteristic traces, and the reflexivity criterion over R/𝔪^k.

Construct the symmetric monoidal 2-category Corr_S of correspondences of decent S-v-stacks fine over S with proper 2-morphisms, and CoCorr_S of cohomological correspondences (u : c₁^*A → c₂^!A′), with its tensor product, internal Hom and Grothendieck-construction description. Prove the dualizability criterion (𝔻A ⊠ A ≅ RHom(pr₁^*A, pr₂^!A)) and that dualizable means ULA for fine maps. Construct the trace class tr_c(u, A) ∈ H^0(Fix(c), K_{Fix(c)/S}), inertia stacks and characteristic classes cc_{X/S}(A), and prove their compatibility with open restriction.

Key definitions and theorems shown in the atlas: Categorical trace, Correspondences of v-stacks, Cohomological correspondences, Dualizable equals ULA, Fixed-point trace class, Characteristic class.

<a id="VS9-dualizable-object-and-trace"></a>

### VS9.1 Dualizable objects and categorical traces (*dualizable-object-and-trace*, definition)

Let (C, ⊗, 1) be a symmetric monoidal 2-category (a symmetric monoidal bicategory). An object X is dualizable if there are an object X^∨ and 1-morphisms ev_X : X^∨ ⊗ X → 1 and coev_X : 1 → X ⊗ X^∨ whose two zig-zag composites are isomorphic to the identities of X and X^∨. ΩC := End(1) is a 1-category. For an endomorphism e of a dualizable X, the trace is tr(e) := ev_X ∘ σ ∘ (e ⊗ id_{X^∨}) ∘ coev_X ∈ ΩC (σ the symmetry); for u : X → Y, v : Y → X the pairing is ⟨u, v⟩ := tr(v ∘ u), and dim(X) := tr(id_X). In a symmetric monoidal 1-category this is the trace of an endomorphism of an object with an exact pairing, valued in End(1).

*Hypotheses.*

- (C, ⊗, 1) is a symmetric monoidal bicategory; in the 1-categorical case, a symmetric monoidal category.

*Construction or proof.*

1. The dual is unique up to equivalence, X^∨ is dualizable with dual X, and X ⊗ Y is dualizable with dual X^∨ ⊗ Y^∨ (LZ22 Remark 1.2).
2. − ⊗ X^∨ is right and left adjoint to − ⊗ X, so Hom(X, Y) exists and is Y ⊗ X^∨ (LZ22 Remark 1.3); conversely X is dualizable iff Hom(X, 1) and Hom(X, X) exist and X ⊗ Hom(X, 1) → Hom(X, X) is split epi (LZ22 Lemma 1.4).
3. Duals of morphisms u^∨ and the squares (1.1) give ⟨u, v⟩ ≅ ⟨v, u⟩ when X, Y are both dualizable (LZ22 Construction 1.6).
4. In the 1-categorical case the data are Mathlib's ExactPairing X X^∨ and the trace is a morphism 𝟙 ⟶ 𝟙.

*Source.* Lu–Zheng, §1.1, Definition 1.1, Remarks 1.2–1.3, Lemma 1.4, Notation 1.5, Construction 1.6, pp. 3–5: Defines dualizable objects, ΩC, traces, pairings and dimensions in symmetric monoidal 2-categories (bicategories), and their basic properties. Hansen–Kaletha–Weinstein, Definition 4.3.1, pp. 27–28: Recalls dualizability and the categorical trace tr(f) ∈ ΩC = End(1) after Lu–Zheng.

*Needs:* Mathlib `CategoryTheory.MonoidalCategory`; Mathlib `CategoryTheory.SymmetricCategory`; Mathlib `CategoryTheory.ExactPairing`; Mathlib `CategoryTheory.ExactPairing.coevaluation`; Mathlib `CategoryTheory.ExactPairing.evaluation`; Mathlib `CategoryTheory.HasRightDual`; Mathlib `CategoryTheory.Bicategory`; EnhancedDerivedSheaves E5:abstract *symmetric-monoidal-infinity-category*.

*Uses.*

- HKW22 §4.3, pp. 31–32: the trace of an endomorphism of a dualizable object of CoCorr_S is the pair (Fix(c), tr_c(u, A)).
- HKW22 Definition 4.3.6, p. 32: the characteristic class is the trace of the identity.
- HKW22 Example 4.3.2, p. 28: traces in D(Λ) are Euler-characteristic traces.
- LZ22 Construction 1.6: pairings ⟨u, v⟩ and their symmetry, used for relative Lefschetz–Verdier pairings.

*API.*

- `categoricalTrace` (data): tr(e) = ev_X ∘ σ ∘ (e ⊗ id) ∘ coev_X ∈ End(1) for an endomorphism e of a dualizable X.
- `categoricalTrace_comp_comm` (relation): For u : X → Y, v : Y → X with X, Y dualizable, tr(v ∘ u) ≅ tr(u ∘ v) (equality in a 1-category).
- `categoricalTrace_id_tensorUnit` (simp): tr(id_1) = id_1.
- `categoricalTrace_tensor` (relation): tr(e ⊗ e′) = tr(e) ∘ tr(e′) in End(1) for dualizable X, X′.
- `categoricalTrace_eq_of_exactPairing` (characterisation): The trace does not depend on the chosen dual: two duality data for X give the same trace.
- `Dualizable.internalHom` (characterisation): If X is dualizable, Hom(X, Y) exists and is Y ⊗ X^∨.
- `Dualizable.dual_dualizable` (other): X^∨ is dualizable with dual X; X ⊗ Y is dualizable with dual X^∨ ⊗ Y^∨.
- `categoricalTrace_monoidalFunctor` (compatibility): A symmetric monoidal functor preserves duals and carries tr(e) to tr(F(e)) (VS9/trace-functoriality).

**Checks.**

- `categoricalTrace_fgModule` (compatibility): In FGModuleCat K for a field K with the linear dual, the trace of e : V → V, as the scalar End(K) ≅ K, is LinearMap.trace K V e.
- `categoricalTrace_id_fgModule` (computation): In FGModuleCat K, tr(id_V) = finrank K V.
- `categoricalTrace_unit` (degenerate): tr(id_𝟙) = 𝟙 for the unit object with its canonical self-duality.
- `not_dualizable_infinite` (non-example): In ModuleCat K the module K^(ℕ) admits no exact pairing with any object, so it has no trace; a definition assigning it the dimension ∞ is wrong.
- `categoricalTrace_perfect` (computation): In D(Λ), for M = Λ ⊕ Λ[1] and e = id, tr(e) = 1 − 1 = 0.

<a id="VS9-trace-functoriality"></a>

### VS9.2 Functoriality of traces in symmetric monoidal 2-categories (*trace-functoriality*, theorem)

For a square e′ ∘ f ⇒ f ∘ e in C (e, e′ endomorphisms of dualizable X, X′, a 2-morphism filling the square) with f right adjointable, there is a morphism tr(e) → tr(e′) in ΩC built from the unit and counit of f ⊣ f^! and the duality data; more generally pairings ⟨u, v⟩ → ⟨u′, v′⟩ for squares (1.2), and, for squares equipped with a splitting, without adjointability. These morphisms are compatible with vertical composition, so tr is a functor from the (2,1)-category of endomorphisms of dualizable objects with right-adjointable morphisms to ΩC. A symmetric monoidal functor preserves duals, traces, pairings and these morphisms.

*Hypotheses.*

- C is a symmetric monoidal bicategory; f is right adjointable (Mathlib's Bicategory.Adjunction) where stated.

*Construction or proof.*

1. Construct the morphism by pasting coev_X ⇒ (f ⊗ f^{!∨}) ∘ coev_{X′} (from the counit of f), the given 2-morphism, and ev_{X′} ∘ (f ⊗ f^{!∨}) ⇒ ev_X (from the unit) (LZ22 Construction 1.7, equations (1.3)–(1.4)).
2. Without adjointability, decompose a split square and use the case f = id twice (LZ22 Construction 1.8).
3. Functoriality in vertical composition is the coherence of mates (Mathlib's bicategorical mates; LZ22 cites Hoyois–Scherotzke–Sibilla §2.1).
4. Symmetric monoidal functors preserve all the data since they preserve the duality equations (LZ22 Remark 1.9).

*Source.* Lu–Zheng, §1.2, Constructions 1.7–1.8 and Remark 1.9, pp. 5–7: Constructs the morphism of traces attached to a lax-commuting square with right-adjointable vertical maps, its split variant, functoriality, and preservation by symmetric monoidal functors. Hansen–Kaletha–Weinstein, Proof of Theorem 4.3.8, p. 33: Applies Lu–Zheng Construction 1.7 to obtain tr(p̃) : tr(f) ⇒ tr(f′).

*Needs:* Layer VS9 *dualizable-object-and-trace*; Mathlib `CategoryTheory.Bicategory.Adjunction`; Mathlib `CategoryTheory.Pseudofunctor`.

**Checks.**

- For a 1-category C every square with invertible 2-cell gives an equality tr(e) = tr(e′) when f is an isomorphism.
- Applied to a symmetric monoidal base change functor it gives the base change of local terms (VS10/local-terms-base-change).

<a id="VS9-symmetric-monoidal-grothendieck-construction"></a>

### VS9.3 The symmetric monoidal Grothendieck construction (*symmetric-monoidal-grothendieck-construction*, construction)

For a symmetric monoidal 2-category B and a right-lax symmetric monoidal functor F : B → Cat^co (Cat with 2-morphisms reversed), with unit e_F ∈ F(1) and exterior products ⊠ : F(X) × F(X′) → F(X ⊗ X′), the Grothendieck construction C_F has objects (X, L) with L ∈ F(X), morphisms (c, u) with c : X → Y and u : F(c)L → M, 2-morphisms p : c ⇒ d compatible with u, v through F(p), and tensor (X, L) ⊗ (X′, L′) = (X ⊗ X′, L ⊠ L′). For a 2-morphism p from c to a square g ∘ c ⇒ c′ ∘ f and (c, u) above c, there is a unique (c′, u′) above c′ such that p is a 2-morphism (X, L) → (Y′, F(g)M) in C_F. If f : X → X′ is right adjointable in B, so is f♮ = (f, id) : (X, L) → (X′, F(f)L); if moreover the F_{c,c′} are isomorphisms, (X, L) is dualizable in C_F and X′ is dualizable in B, then (X′, F(f)L) is dualizable with dual (X′^∨, F(f^{!∨})L^∨). Right-lax symmetric monoidal transformations and functors induce right-lax symmetric monoidal functors of Grothendieck constructions.

*Hypotheses.*

- B is a symmetric monoidal bicategory; F is right-lax symmetric monoidal.

*Construction or proof.*

1. Objects, morphisms, 2-morphisms and tensor products are as in LZ22 Construction 1.10.
2. Uniqueness of the pushed morphism: u′ is forced to be F(c′)F(f)L ≅ F(c′f)L → F(gc)L ≅ F(g)F(c)L → F(g)M (LZ22 Lemma 1.11).
3. Adjointability and dualizability transfer: write the unit and counit of f♮ from those of f and the duality data of (X, L) through F (LZ22 Remark 1.12).
4. Functoriality in F: LZ22 Constructions 1.13–1.16 and Lemma 1.14.

*Source.* Lu–Zheng, §1.3, Construction 1.10, Lemma 1.11, Remark 1.12, Constructions 1.13–1.16, pp. 7–10: Defines the symmetric monoidal Grothendieck construction of a right-lax functor to Cat^co, the unique lift of morphisms over 2-morphisms, adjointability and dualizability transfer, and functoriality.

*Needs:* Layer VS9 *dualizable-object-and-trace*; Layer VS9 *trace-functoriality*; Mathlib `CategoryTheory.Bicategory`; Mathlib `CategoryTheory.Pseudofunctor`.

*Uses.*

- LZ22 Remark 2.7: the category of cohomological correspondences is the Grothendieck construction over correspondences.
- HKW22 Theorem 4.3.8, p. 32: existence and uniqueness of f′ ∈ End(X′) over C′ and dualizability of (X′, q_∗A).
- HKW22 Definition 4.5.4, p. 39: based cohomological correspondences combine two such constructions.

*API.*

- `GrothendieckConstruction.obj` (constructor): Objects (X, L) with L ∈ F(X).
- `GrothendieckConstruction.hom` (constructor): Morphisms (c, u) with u : F(c)L → M.
- `GrothendieckConstruction.tensor` (structure): (X, L) ⊗ (X′, L′) = (X ⊗ X′, L ⊠ L′), unit (1, e_F).
- `GrothendieckConstruction.liftAlong` (universal-property): For a 2-morphism p and (c, u) there is a unique (c′, u′) making p a 2-morphism (LZ22 Lemma 1.11).
- `GrothendieckConstruction.forget` (projection): The forgetful symmetric monoidal functor C_F → B.
- `GrothendieckConstruction.dualizable_pushforward` (other): Dualizability of (X′, F(f)L) for right-adjointable f with X′ dualizable (LZ22 Remark 1.12(b)).
- `GrothendieckConstruction.map` (functoriality): Right-lax symmetric monoidal transformations F → G induce right-lax symmetric monoidal functors C_F → C_G.

**Checks.**

- `GrothendieckConstruction.terminal` (degenerate): For B terminal, C_F ≅ F(∗) with ⊠ as tensor.
- `GrothendieckConstruction.forget_faithfulOnObjects` (characterisation): The fibre of C_F → B over X is F(X)^op-enriched in the sense that endomorphisms of (X, L) over id_X are Hom(L, L).
- `GrothendieckConstruction.cohomological` (compatibility): For B = Corr_S and F = (c ↦ c₂!c₁^*), the morphisms of C_F over c are Hom(c₁^*L, c₂^!M) by adjunction, recovering HKW22 Definition 4.3.4.
- `GrothendieckConstruction.not_strict` (non-example): If some F_{c,c′} is not an isomorphism, the transfer of dualizability along right-adjointable f can fail; the isomorphism hypothesis is part of the statement.

<a id="VS9-perfect-complexes-are-dualizable"></a>

### VS9.4 Dualizable objects of D(Λ) and their traces (*perfect-complexes-are-dualizable*, theorem)

For any commutative ring Λ and M ∈ D(Λ) with 𝔻M := RHom(M, Λ[0]), the following are equivalent: (a) M → 𝔻𝔻M and 𝔻M ⊗ M → 𝔻(M ⊗ 𝔻M) are isomorphisms; (b) M ⊗ 𝔻M → RHom(M, M) is an isomorphism; (c) M is strongly dualizable, i.e. N ⊗ 𝔻M → RHom(M, N) is an isomorphism for all N; (d) M is compact; (e) M is perfect. Then 𝔻M is a dual of M, and the categorical trace of an endomorphism f of M is its Euler-characteristic trace Σ_i (−1)^i tr(f^i | P^i) for any bounded complex P of finitely generated projective modules representing M with a chain endomorphism lifting f.

*Hypotheses.*

- Λ is a commutative ring; ⊗ is the derived tensor product.

*Construction or proof.*

1. (a) ⇒ (b): RHom(M, M) ≅ RHom(M, 𝔻𝔻M) ≅ 𝔻(M ⊗ 𝔻M) ≅ 𝔻M ⊗ M.
2. (b) ⇒ (c): the identity gives a coevaluation Λ → M ⊗ 𝔻M, from which the inverse of N ⊗ 𝔻M → RHom(M, N) is built (HKW22 Lemma B.1.2(2)).
3. (c) ⇔ (d) ⇔ (e): EnhancedDerivedSheaves E5:spectra-comparison/perfect-modules (perfect = compact = dualizable).
4. (e) ⇒ (a): compute on a bounded complex of finitely generated projectives, localising to free modules of finite rank.
5. Trace: with P as stated, the categorical trace of the chain map is computed degreewise with the Koszul sign of the symmetry, giving the alternating sum of the traces of the f^i (LinearMap.trace on each P^i after localisation to free modules).

*Source.* Hansen–Kaletha–Weinstein, Example 4.3.2, p. 28; Lemma B.1.2(2), p. 73: States that dualizable objects of D(Λ) are the perfect complexes with dual RHom(M, Λ[0]) and trace the Euler characteristic, and proves the equivalence of (a)–(e).

*Needs:* EnhancedDerivedSheaves E5:spectra-comparison *perfect-modules*; Mathlib `LinearMap.trace`; Mathlib `DerivedCategory`; Layer VS9 *dualizable-object-and-trace*.

**Checks.**

- For M = Λ^n[0] and f a matrix, tr(f) is the matrix trace.
- For M = Λ ⊕ Λ[1] and f = id, tr(f) = 0 = χ(M).

<a id="VS9-double-duals-over-truncated-dvr"></a>

### VS9.5 Reflexivity over truncated discrete valuation rings (*double-duals-over-truncated-dvr*, theorem)

Let R be a discrete valuation ring with maximal ideal 𝔪 and Λ = R/𝔪^k (k ≥ 1). For a Λ-module M the canonical map M → M^∗∗ (M^∗ = Hom_Λ(M, Λ)) is an isomorphism iff M is finitely generated. Consequently, for M ∈ D(Λ) the map M → 𝔻𝔻M is an isomorphism iff every H^i(M) is finitely generated.

*Hypotheses.*

- R is a discrete valuation ring; k ≥ 1; Λ = R/𝔪^k.

*Construction or proof.*

1. If M is finitely generated it is a finite sum of cyclic Λ-modules, each reflexive.
2. Converse by induction on k: Λ is self-injective (Artinian serial), so dualizing is exact; compare the sequences 0 → 𝔪M → M → M/𝔪M → 0 and their double duals; M/𝔪M is reflexive over κ = R/𝔪, hence finite-dimensional; the snake lemma makes 𝔪M reflexive over R/𝔪^{k−1} (HKW22 Lemma B.1.1, with the index corrected in sourceIssues).
3. Derived version: self-injectivity gives H^i(𝔻M) ≅ H^{−i}(M)^∗, so H^i(𝔻𝔻M) ≅ H^i(M)^∗∗ (HKW22 Lemma B.1.2(1)).

*Source.* Hansen–Kaletha–Weinstein, Lemma B.1.1 and Lemma B.1.2(1), pp. 72–73: Proves that over R/𝔪^k a module is reflexive iff finitely generated, and the derived consequence for the biduality map.

*Needs:* Mathlib `IsDiscreteValuationRing`; Mathlib `IsLocalRing.maximalIdeal`; Mathlib `Module.Dual`; Mathlib `Module.Dual.eval`; Mathlib `Module.Finite`; Mathlib `DerivedCategory`.

**Checks.**

- For Λ = Z/ℓ² and M = Z/ℓ ⊕ Z/ℓ², M ≅ M^∗∗.
- For Λ = Z/ℓ and M = Λ^(ℕ), M → M^∗∗ is injective but not surjective.
- The module-level statement is the suggested declaration `bijective_dual_eval_iff_finite`, with Module.Dual.eval over R ⧸ 𝔪^k.

<a id="VS9-correspondence-bicategory"></a>

### VS9.6 The symmetric monoidal 2-category of correspondences (*correspondence-bicategory*, definition)

For a decent v-stack S, Corr_S has objects the decent S-v-stacks X with fine structure map; 1-morphisms X → X′ are correspondences X ← C → X′ (c₁, c₂) of decent v-stacks over S with c₂ fine (then c₁ and C → S are fine), composed by fibre product C ×_{X′} D; 2-morphisms c ⇒ d are equivalence classes of triples (p, α₁, α₂) with p : C → D proper nice (VS6/proper-nice-maps) and 2-isomorphisms α_i : c_i ⇒ d_i ∘ p, two triples being equivalent when a 2-isomorphism γ : p ⇒ q satisfies β_i = (id_{d_i} ∗ γ) ∘ α_i. The tensor product is X ⊗ Y = X ×_S Y with unit S, and c ⊗ d = c ×_S d. ΩCorr_S is the 1-category of decent v-stacks fine over S with proper nice maps over S.

*Hypotheses.*

- S is a decent v-stack.
- Proper 2-morphisms are proper nice maps (VS6/proper-nice-maps): proper in the sense of Sch17 Definition 18.1, hence 0-truncated, and representable in locally spatial diamonds.

*Construction or proof.*

1. Compositions and tensor products stay in Corr_S by VS6/decent-fibre-products and VS6/fine-permanence; associativity and unit constraints come from the universal property of fibre products of stacks.
2. Well-definedness of the equivalence relation on 2-morphisms and their compositions uses the strict (2,1)-category structure of v-stacks (HKW22 §4.1, p. 22).
3. For a proper nice q : X → X′ over S, the 1-morphism q♮ = (id, q) : X → X′ is right adjointable, with right adjoint (q, id), unit given by the diagonal X → X ×_{X′} X (proper since q is separated) and counit by q itself (the analogue of LZ22 Lemma 2.9).

*Source.* Hansen–Kaletha–Weinstein, Definition 4.3.3 and footnote 4, pp. 28–29: Defines the symmetric monoidal 2-category Corr_S of correspondences of decent S-v-stacks fine over S, with proper 2-morphisms up to 2-isomorphism and tensor product the fibre product over S. Lu–Zheng, Remark 2.7 and Lemma 2.9, pp. 13–14: Gives the scheme version B_S and the right adjoint of the correspondence attached to a proper morphism.

*Needs:* Layer VS6 *decent-v-stack*; Layer VS6 *decent-fibre-products*; Layer VS6 *fine-morphism*; Layer VS6 *fine-permanence*; Layer VS6 *proper-nice-maps*; Layer VS9 *dualizable-object-and-trace*.

*Uses.*

- HKW22 Definition 4.3.4, p. 29: CoCorr_S lies over Corr_S.
- HKW22 §4.3, p. 31: tr(c) ∈ ΩCorr_S is the fixed-point correspondence Fix(c) → S.
- HKW22 Theorem 4.3.8, p. 32: proper p, q give 2-morphisms and right-adjointable 1-morphisms.

*API.*

- `Corr.comp` (structure): Composition of correspondences by fibre product (HKW22 (4.3.2)).
- `Corr.twoMorphism` (constructor): A proper p : C → D with α_i : c_i ⇒ d_i ∘ p gives a 2-morphism c ⇒ d.
- `Corr.tensor` (structure): X ⊗ Y = X ×_S Y, c ⊗ d = c ×_S d, unit S, symmetric.
- `Corr.ofProper` (constructor): A proper nice q : X → X′ over S gives q♮ = (id_X, q) : X → X′.
- `Corr.ofProper_rightAdjoint` (universal-property): q♮ is right adjointable with right adjoint (q, id_X), unit the relative diagonal and counit q.
- `Corr.omega` (characterisation): ΩCorr_S is the 1-category of decent v-stacks fine over S with proper S-maps.
- `Corr.fixedPoints` (other): For c : C → X ×_S X, tr(c) = Fix(c) = C ×_{X ×_S X} X when X is dualizable in Corr_S (every object is, with X^∨ = X).

**Checks.**

- `Corr.unit` (degenerate): The unit object is S and the identity of X is the correspondence X ← X → X.
- `Corr.trace_identity` (computation): For X a decent S-v-stack, tr(id_X) in ΩCorr_S is the inertia stack In_S(X) = X ×_{X ×_S X} X.
- `Corr.trace_classifyingStack` (computation): For S a geometric point and X = [S/G_S], tr(id_X) = [G_S//G_S], the adjoint quotient.
- `Corr.not_nonproper_twoMorphism` (non-example): An open immersion p : C → D compatible with the legs is not a 2-morphism unless it is proper (e.g. the inclusion of the open disc into the closed disc), since the definition of CoCorr_S needs p_* = p_!.

<a id="VS9-cohomological-correspondence-bicategory"></a>

### VS9.7 The symmetric monoidal 2-category of cohomological correspondences (*cohomological-correspondence-bicategory*, construction)

CoCorr_S has objects (X, A) with X ∈ Corr_S and A ∈ D_ét(X, Λ); 1-morphisms (X, A) → (X′, A′) are pairs (c, u) with c a correspondence and u : c₁^*A → c₂^!A′, composed as (d′₁)^*c₁^*A → (d′₁)^*c₂^!A′ → (c′₂)^!d₁^*A′ → (c′₂)^!d₂^!A″ (the middle map adjoint to base change); 2-morphisms (c, u) ⇒ (d, v) are the 2-morphisms (p, α₁, α₂) of Corr_S for which the composite d₁^*A → p_*p^*d₁^*A ≅ p_*c₁^*A → p_*c₂^!A′ ≅ p_*p^!d₂^!A′ ≅ p_!p^!d₂^!A′ → d₂^!A′ equals v. The tensor product is (X, A) ⊗ (X′, A′) = (X ×_S X′, A ⊠_S A′) with unit (S, Λ_S), and (c, u) ⊗ (d, v) uses the Künneth map into (c₂ ×_S d₂)^!(A′₁ ⊠_S A′₂). The monoidal structure is closed with Hom((X₁, A₁), (X₂, A₂)) = (X₁ ×_S X₂, RHom(pr₁^*A₁, pr₂^!A₂)). Equivalently, CoCorr_S is the Grothendieck construction of the right-lax symmetric monoidal functor Corr_S → Cat^co, X ↦ D_ét(X, Λ), c ↦ c₂!c₁^*. ΩCoCorr_S has objects (X, ω) with X fine over S and ω ∈ H^0(X, K_{X/S}), and morphisms proper p with p_∗ω = ω′.

*Hypotheses.*

- S is a decent v-stack; Λ is a commutative ring with nΛ = 0 for an integer n prime to p.
- The exceptional functors are those of VS7/fine-shriek-functors; proper 2-morphisms use Rp_∗ = Rp_! (VS7/proper-nice-shriek-is-pushforward).

*Construction or proof.*

1. Composition and its associativity: base change (BC1) and its compatibility with composition (VS7/fine-six-functor-identities).
2. 2-morphisms depend only on the equivalence class of (p, α₁, α₂): the five squares of HKW22 p. 30 commute by VS6/two-morphism-adjunction-compatibility, by β_i = (id ∗ γ) ∘ α_i with the pseudo-functor structures, and by γ_∗ = γ_! for proper maps.
3. Tensor products: the Künneth isomorphism (c₂ ×_S d₂)_!(B₁ ⊠_S B₂) ≅ c₂!B₁ ⊠_S d₂!B₂ (VS7/fine-six-functor-identities); the target is (c₂ ×_S d₂)^!(A′₁ ⊠_S A′₂) (HKW22 misprint E14 corrected).
4. Closedness: Hom from (X, A) ⊗ (Y, B) to (Z, C) and from (X, A) to (Y ×_S Z, RHom(pr^*B, pr^!C)) agree through RHom(a ⊗ b, c) ≅ RHom(a, RHom(b, c)) and (P5) (the analogue of LZ22 Lemma 2.8).
5. Grothendieck construction: the functor X ↦ D_ét(X, Λ), c ↦ c₂!c₁^*, p ↦ counit, is right-lax symmetric monoidal with Künneth isomorphisms; apply VS9/symmetric-monoidal-grothendieck-construction (LZ22 Remark 2.7).

*Source.* Hansen–Kaletha–Weinstein, Definition 4.3.4, pp. 29–30: Defines CoCorr_S with objects (X, A), 1-morphisms (c, u) with u : c₁^*A → c₂^!A′, 2-morphisms given by proper maps compatible with u and v, checks well-definedness, and gives the tensor product and internal Hom. Hansen–Kaletha–Weinstein, §4.3, description of ΩCoCorr_S, p. 31: Describes End of the unit as pairs (X, ω) with ω ∈ H^0(X, K_{X/S}) and proper pushforwards. Lu–Zheng, Construction 2.6, Remark 2.7, Lemma 2.8, pp. 13–14: Constructs the scheme version, its Grothendieck-construction description and closed monoidal structure.

*Needs:* Layer VS9 *correspondence-bicategory*; Layer VS9 *symmetric-monoidal-grothendieck-construction*; Layer VS7 *fine-shriek-functors*; Layer VS7 *fine-six-functor-identities*; Layer VS7 *proper-nice-shriek-is-pushforward*; Layer VS7 *relative-dualizing-complex*; Layer VS6 *two-morphism-adjunction-compatibility*.

*Uses.*

- HKW22 Proposition 4.3.5, p. 31: dualizable objects of CoCorr_S.
- HKW22 Theorem 4.3.8, p. 32: the relative Lefschetz–Verdier trace formula is a statement about traces in CoCorr_S.
- HKW22 Proposition 5.3.1, p. 49: base change CoCorr_S → CoCorr_T is symmetric monoidal.
- HKW22 Theorem 4.6.1, p. 42: the universal local term is a trace in CoCorr_G.

*API.*

- `CoCorr.hom` (constructor): A 1-morphism (X, A) → (X′, A′) over c is u ∈ Hom(c₁^*A, c₂^!A′).
- `CoCorr.comp` (structure): Composition through the base change map (d′₁)^*c₂^! → (c′₂)^!d₁^*.
- `CoCorr.twoMorphism` (constructor): A 2-morphism of Corr_S whose induced composite carries u to v.
- `CoCorr.tensor` (structure): (X, A) ⊗ (X′, A′) = (X ×_S X′, A ⊠_S A′), unit (S, Λ_S).
- `CoCorr.internalHom` (characterisation): Hom((X₁, A₁), (X₂, A₂)) = (X₁ ×_S X₂, RHom(pr₁^*A₁, pr₂^!A₂)).
- `CoCorr.pushAlongProper` (universal-property): For proper q, p with a correspondence C′ → X′ ×_S X′ compatible with c, an endomorphism over c induces a unique endomorphism of (X′, q_∗A) over C′ with p a 2-morphism (VS9/symmetric-monoidal-grothendieck-construction, liftAlong).
- `CoCorr.forget` (projection): The symmetric monoidal forgetful functor CoCorr_S → Corr_S.
- `CoCorr.omega` (characterisation): ΩCoCorr_S has objects (X, ω ∈ H^0(X, K_{X/S})) and morphisms proper p with p_∗ω = ω′.

**Checks.**

- `CoCorr.point` (computation): For S = Spd C, the endomorphisms of (S, A) over the identity correspondence are End_{D(Λ)}(A).
- `CoCorr.unit` (degenerate): The unit is (S, Λ_S) and ΩCoCorr_S(S, ω) has ω ∈ H^0(S, Λ).
- `CoCorr.tensor_target` (characterisation): The tensor product of (c, u) and (d, v) is a map (c₁ ×_S d₁)^*(A₁ ⊠ A₂) → (c₂ ×_S d₂)^!(A′₁ ⊠_S A′₂), with the primed objects in the target.
- `CoCorr.not_starPullback` (non-example): For a G-equivariant A on X with action α : X × G → X, the equivariance isomorphism A|_{X×G} → α^*A is not a 1-morphism of CoCorr_S over (pr, α), because α^* ≠ α^!; working over the base G repairs this (VS11/universal-local-term).
- `CoCorr.forget_compat` (compatibility): The forgetful functor to Corr_S is strict symmetric monoidal and identity on 2-morphisms.

<a id="VS9-dualizability-criterion"></a>

### VS9.8 Dualizability in cohomological correspondences (*dualizability-criterion*, theorem)

For X fine over S and A ∈ D_ét(X, Λ), (X, A) is dualizable in CoCorr_S iff the natural map m : 𝔻_{X/S}A ⊠_S A → RHom(pr₁^*A, pr₂^!A) on X ×_S X is an isomorphism, where 𝔻_{X/S}A = RHom(A, K_{X/S}). Then the dual is (X, 𝔻_{X/S}A), evaluation lies over (Δ_{X/S}, π) with Δ^*(𝔻A ⊠ A) ≅ 𝔻A ⊗ A → K_{X/S}, and coevaluation lies over (π, Δ_{X/S}) with Λ_X → RHom(A, A) ≅ Δ^!RHom(pr₁^*A, pr₂^!A) followed by m^{-1}.

*Hypotheses.*

- S is a decent v-stack; Λ is a commutative ring with nΛ = 0 for an integer n prime to p.
- π : X → S is fine.

*Construction or proof.*

1. The candidate evaluation 𝔢 induces 𝔛′ ⊗ 𝔜 → Hom(𝔛, 𝔜) for every 𝔜; for 𝔜 = 𝔛 it is m (VS9/cohomological-correspondence-bicategory, internal Hom).
2. If 𝔛 is dualizable, 𝔛^∨ ⊗ 𝔜 → Hom(𝔛, 𝔜) is an isomorphism for all 𝔜 (VS9/dualizable-object-and-trace); 𝔜 = 1 identifies 𝔛^∨ with (X, 𝔻A) and 𝔜 = 𝔛 makes m an isomorphism.
3. Conversely define the coevaluation through (P5) and m^{-1} and check the triangle identities by a diagram chase (HKW22 Proposition 4.3.5).

*Source.* Hansen–Kaletha–Weinstein, Proposition 4.3.5 and proof, p. 31: Characterises dualizable objects of CoCorr_S by invertibility of 𝔻A ⊠_S A → RHom(pr₁^*A, pr₂^!A), with explicit evaluation and coevaluation.

*Needs:* Layer VS9 *cohomological-correspondence-bicategory*; Layer VS9 *dualizable-object-and-trace*; Layer VS7 *relative-dualizing-complex*; Layer VS7 *fine-six-functor-identities*.

**Checks.**

- (S, A) is dualizable iff A is perfect (VS9/perfect-complexes-are-dualizable).
- (X, Λ_X) for X smooth fine over S is dualizable with dual (X, K_{X/S}).

<a id="VS9-dualizable-iff-ula"></a>

### VS9.9 Dualizable objects are the universally locally acyclic ones (*dualizable-iff-ula*, theorem)

For π : X → S fine and A ∈ D_ét(X, Λ), (X, A) is dualizable in CoCorr_S iff A is π-universally locally acyclic (ULA, in the parent's sense for Artin v-stacks, VS1/ula-for-artin-v-stacks). For π representable in nice diamonds this is Fargues–Scholze Theorem IV.2.23; in general ULA-ness and the criterion of VS9/dualizability-criterion are both cohomologically-smooth-local on the source. Duals of ULA objects are ULA and the biduality map is an isomorphism; exterior products over S of ULA objects are ULA.

*Hypotheses.*

- S is a decent v-stack; Λ is a commutative ring with nΛ = 0 for an integer n prime to p.
- π : X → S is fine.

*Construction or proof.*

1. Representable case: the criterion of VS9/dualizability-criterion is condition (ii) of Fargues–Scholze Theorem IV.2.23, equivalent to ULA (the parent's VS1/ula-dualizability-criterion).
2. General fine π: choose a clean chart g : U → X; g^* commutes with both sides of m up to the invertible twist Rg^!Λ (smooth base change, VS7/fine-smoothness-and-dualizing-objects) and detects isomorphisms; ULA-ness is defined and detected through charts (VS1/ula-for-artin-v-stacks, VS1/ula-descent-and-smooth-locality).
3. Duals and exterior products: dual and tensor product of dualizable objects are dualizable (VS9/dualizable-object-and-trace), or directly the parent's VS1/ula-relative-adjoints-and-calculus.

*Source.* Hansen–Kaletha–Weinstein, §4.3, paragraph after Proposition 4.3.5, p. 31: States that for maps representable in nice diamonds dualizability in CoCorr_S is ULA-ness (Fargues–Scholze IV.2.24) and that this extends to fine maps of decent v-stacks by smooth locality on the source. Fargues–Scholze, Theorem IV.2.23 and Proposition IV.2.24, pp. 124–126: Proves that ULA-ness is equivalent to the Künneth-type isomorphism and to being a left adjoint in the kernel category, and the relative version for proper Y/S. Fargues–Scholze, Proposition IV.2.32, p. 129: Characterises ULA objects for smooth maps of Artin v-stacks by an isomorphism p₁^*RHom(A, Λ) ⊗ p₂^*A ≅ RHom(p₁^*A, p₂^*A).

*Needs:* Layer VS9 *dualizability-criterion*; VStackSheavesAndLisseCategories VS1 *ula-definition-with-constructibility*; VStackSheavesAndLisseCategories VS1 *ula-for-artin-v-stacks*; VStackSheavesAndLisseCategories VS1 *ula-dualizability-criterion*; VStackSheavesAndLisseCategories VS1 *ula-descent-and-smooth-locality*; VStackSheavesAndLisseCategories VS1 *ula-relative-adjoints-and-calculus*; VStackSheavesAndLisseCategories VS1 *smooth-ula-criterion*; Layer VS7 *fine-smoothness-and-dualizing-objects*.

**Checks.**

- Constant sheaves on smooth fine X → S are ULA, hence dualizable.
- On the closed disc over Spd C, j_!Λ for the open unit disc j is not ULA over S, so (D, j_!Λ) is not dualizable.

<a id="VS9-trace-in-cohomological-correspondences"></a>

### VS9.10 The trace class of a cohomological correspondence (*trace-in-cohomological-correspondences*, construction)

Let (X, A) be dualizable in CoCorr_S and (c, u) an endomorphism with c : C → X ×_S X. Its trace is (Fix(c), tr_c(u, A)) ∈ ΩCoCorr_S, where Fix(c) = C ×_{X ×_S X, Δ} X and tr_c(u, A) ∈ H^0(Fix(c), K_{Fix(c)/S}) is the image of u under H^0(C, RHom(c₁^*A, c₂^!A)) ≅ H^0(C, c^!RHom(pr₁^*A, pr₂^!A)) ≅ H^0(C, c^!(𝔻A ⊠_S A)) → H^0(C, c^!Δ_∗(𝔻A ⊗ A)) → H^0(C, c^!Δ_∗K_{X/S}) ≅ H^0(C, Δ′_∗c′^!K_{X/S}) ≅ H^0(Fix(c), K_{Fix(c)/S}), using (P5), the dualizability isomorphism, the evaluation and (BC2).

*Hypotheses.*

- S is a decent v-stack; Λ is a commutative ring with nΛ = 0 for an integer n prime to p.
- (X, A) is dualizable, i.e. A is ULA over S (VS9/dualizable-iff-ula).

*Construction or proof.*

1. Unwind tr = ev ∘ σ ∘ (f ⊗ id) ∘ coev with the explicit evaluation and coevaluation of VS9/dualizability-criterion: the composite of correspondences is Fix(c) → S, and the sheaf-theoretic part is the displayed chain (HKW22 pp. 31–32).
2. Each displayed map is an instance of VS7/fine-six-functor-identities and the dualizability isomorphism m.

*Source.* Hansen–Kaletha–Weinstein, §4.3, pp. 31–32 and footnote 5: Describes the trace of an endomorphism of a dualizable object of CoCorr_S as the fixed-point locus with the class tr_c(u, A) ∈ H^0(Fix(c), K_{Fix(c)/S}) given by the displayed chain. Lu–Zheng, Notation 2.20, p. 18: Writes the scheme version as the relative Lefschetz–Verdier pairing.

*Needs:* Layer VS9 *dualizability-criterion*; Layer VS9 *dualizable-iff-ula*; Layer VS9 *cohomological-correspondence-bicategory*; Layer VS7 *fine-six-functor-identities*; Layer VS7 *relative-dualizing-complex*.

*Uses.*

- HKW22 Theorem 4.3.8, p. 32: traces of endomorphisms lying over correspondences.
- HKW22 Definition 4.3.11 and §5.3, pp. 33, 47–48: local terms are restrictions of tr_c(u, A).
- HKW22 Theorem 4.6.1, p. 42: the universal local term tr_{c̃}(ũ, A|_{X_G}).

*API.*

- `traceClass` (data): tr_c(u, A) ∈ H^0(Fix(c), K_{Fix(c)/S}).
- `traceClass_eq_categoricalTrace` (characterisation): (Fix(c), tr_c(u, A)) is the categorical trace of (c, u) in CoCorr_S.
- `traceClass_linear` (simp): u ↦ tr_c(u, A) is Λ-linear.
- `traceClass_restrict_open` (functoriality): For an open U ⊂ X with c^{-1}(U × U) → U × U, the class restricts to that of the restricted correspondence on Fix ∩ U.
- `traceClass_point` (example): For X = S, tr_c(u, A) = tr(u | A).

**Checks.**

- `traceClass_point` (computation): For S = X = C = Spd C, A = Λ² and u a 2×2 matrix, tr_c(u, A) is the matrix trace in H^0(S, Λ) = Λ.
- `traceClass_zero` (degenerate): For u = 0, tr_c(u, A) = 0.
- `traceClass_finiteSet` (computation): For X = T_S with T finite and c the graph of a permutation σ of T, Fix(c) = (T^σ)_S and tr_c(u, Λ) is the function x ↦ tr(u_x) on fixed points.
- `traceClass_not_defined_nonULA` (non-example): For A = j_!Λ on the closed disc over Spd C with j the inclusion of the open disc, (X, A) is not dualizable and no trace class is defined; the naive formula fails (HKW extraction brief).

<a id="VS9-inertia-and-characteristic-class"></a>

### VS9.11 Inertia stacks and characteristic classes (*inertia-and-characteristic-class*, definition)

For X fine over S, the inertia stack In_S(X) := X ×_{X ×_S X} X is the fixed-point locus of the identity correspondence; its points are pairs (x, g) with g ∈ Aut(x). For (X, A) dualizable, the characteristic class cc_{X/S}(A) := tr(id_A) ∈ H^0(In_S(X), K_{In_S(X)/S}).

*Hypotheses.*

- S is a decent v-stack; Λ is a commutative ring with nΛ = 0 for an integer n prime to p.
- (X, A) is dualizable in CoCorr_S.

*Construction or proof.*

1. In_S(X) is decent and fine over S (VS6/decent-fibre-products, VS6/fine-permanence).
2. cc_{X/S}(A) is the trace class of (Δ_{X/S}, id_A) (VS9/trace-in-cohomological-correspondences).

*Source.* Hansen–Kaletha–Weinstein, Definition 4.3.6, p. 32: Defines the inertia stack as tr(Δ_{X/S}) and the characteristic class as tr(id_A). Lu–Zheng, Notation 2.20 and Remark 2.24, pp. 18–20: Defines characteristic classes for schemes and notes they live on the inertia stack for Artin stacks.

*Needs:* Layer VS9 *trace-in-cohomological-correspondences*; Layer VS6 *decent-fibre-products*; Layer VS6 *fine-permanence*.

*Uses.*

- HKW22 Corollary 4.3.9, p. 33: characteristic classes push forward along proper maps.
- HKW22 Proposition 4.4.3, p. 35: the characteristic class of an admissible object on [S/G_S] is its trace distribution.
- HKW22 Theorem 4.5.3 and Theorem 4.6.1: Künneth and universal-local-term properties of characteristic classes.
- HKW22 Corollary 5.4.2, p. 50: characteristic classes on [Gr_{G,≤μ}/L^+_mG] compute local terms of Satake sheaves.

*API.*

- `inertiaStack` (data): In_S(X) = X ×_{X ×_S X} X with its projection to X.
- `inertiaStack_of_sheaf` (simp): For 0-truncated X, In_S(X) = X.
- `inertiaStack_prod` (relation): In_S(X₁ ×_T X₂) ≅ In_S(X₁) ×_{In_S(T)} In_S(X₂).
- `charClass` (data): cc_{X/S}(A) ∈ H^0(In_S(X), K_{In_S(X)/S}).
- `charClass_additive` (relation): cc is additive in distinguished triangles of ULA objects.
- `charClass_point` (example): For X = S, cc_{S/S}(A) = χ(A), the Euler characteristic of the perfect complex A.

**Checks.**

- `charClass_point` (computation): For S = X = Spd C and A = Λ³ ⊕ Λ[1], cc_{S/S}(A) = 3 − 1 = 2.
- `charClass_zero` (degenerate): cc_{X/S}(0) = 0.
- `inertia_classifying` (computation): For S a geometric point and G a finite group, In_S([S/G]) = [G/G] with conjugation, and, identifying H^0 with class functions on G by counting measure, cc of the trivial representation Λ is the constant function 1.
- `inertia_not_identity` (non-example): For X = [S/(Z/2)], In_S(X) ≠ X: it has two components (the identity and the nontrivial element).
- `charClass_integral_euler` (compatibility): For X smooth proper over S = Spd C and A = Λ, ∫_X cc_{X/S}(Λ) = χ(RΓ(X, Λ)) (VS10/proper-pushforward-of-characteristic-classes with X′ = S).

<a id="VS9-characteristic-class-open-restriction"></a>

### VS9.12 Characteristic classes restrict to open substacks (*characteristic-class-open-restriction*, theorem)

For an open immersion i : U → X of decent S-v-stacks fine over S, In_S(i) : In_S(U) → In_S(X) is an open immersion; if A ∈ D_ét(X, Λ) is ULA over S then so is i^*A, and cc_{U/S}(i^*A) = In_S(i)^*cc_{X/S}(A).

*Hypotheses.*

- S is a decent v-stack; Λ is a commutative ring with nΛ = 0 for an integer n prime to p.
- i is an open immersion; A is ULA over S.

*Construction or proof.*

1. In_S(U) = In_S(X) ×_X U, an open substack.
2. ULA-ness is local on X (parent VS1/ula-descent-and-smooth-locality), and every construction in the trace class is local on X (HKW22 Lemma 4.3.7).

*Source.* Hansen–Kaletha–Weinstein, Lemma 4.3.7, p. 32: States that inertia stacks and characteristic classes are compatible with restriction to open substacks.

*Needs:* Layer VS9 *inertia-and-characteristic-class*; Layer VS9 *dualizable-iff-ula*; VStackSheavesAndLisseCategories VS1 *ula-descent-and-smooth-locality*.

**Checks.**

- For X = [S/G_S] and U the preimage of an open conjugation-invariant subset of G in the inertia, characteristic classes restrict accordingly.
- For U = X the statement is trivial.

### Examples

- In FGModuleCat K, tr(id_V) = finrank K V.
- In D(Λ), for M = Λ ⊕ Λ[1] and e = id, tr(e) = 1 − 1 = 0.
- For X a decent S-v-stack, tr(id_X) in ΩCorr_S is the inertia stack In_S(X) = X ×_{X ×_S X} X.
- For S a geometric point and X = [S/G_S], tr(id_X) = [G_S//G_S], the adjoint quotient.
- For S = Spd C, the endomorphisms of (S, A) over the identity correspondence are End_{D(Λ)}(A).
- For S = X = C = Spd C, A = Λ² and u a 2×2 matrix, tr_c(u, A) is the matrix trace in H^0(S, Λ) = Λ.
- For X = T_S with T finite and c the graph of a permutation σ of T, Fix(c) = (T^σ)_S and tr_c(u, Λ) is the function x ↦ tr(u_x) on fixed points.
- For S = X = Spd C and A = Λ³ ⊕ Λ[1], cc_{S/S}(A) = 3 − 1 = 2.

### Dependencies

This layer uses `VStackSheavesAndLisseCategoriesPartII:VS6`, `VStackSheavesAndLisseCategoriesPartII:VS7`, `VStackSheavesAndLisseCategories:VS1`, `EnhancedDerivedSheaves:E5:spectra-comparison`.

## Layer VS10: the lefschetz–verdier trace formula and local terms

Prove the relative Lefschetz–Verdier trace formula for v-stacks (Hansen–Kaletha–Weinstein Theorem 4.3.8): proper pushforward of a dualizable object along compatible proper maps is dualizable and carries the trace of an endomorphism to the trace of the pushed endomorphism. Deduce that characteristic classes commute with proper pushforward and the Lefschetz trace formula for proper nice diamonds over Spd C (with the correspondence proper over the base).

Define local terms loc_β(u, F) for clopen pieces of the fixed locus proper over S and at isolated fixed points, with additivity. Construct base change of cohomological correspondences and diamondification of cohomological correspondences of perfect schemes; prove that local terms commute with base change and agree with the scheme-theoretic local terms of perfect schemes.

Key definitions and theorems shown in the atlas: Relative Lefschetz–Verdier trace formula, Proper pushforward of characteristic classes, Lefschetz trace formula for proper diamonds, Local term.

<a id="VS10-relative-lefschetz-verdier"></a>

### VS10.1 The relative Lefschetz–Verdier trace formula for v-stacks (*relative-lefschetz-verdier*, theorem)

Let 𝔛 = (X, A) be dualizable in CoCorr_S and 𝔣 ∈ End(𝔛) lie over c : C → X ×_S X. Suppose given proper nice maps q : X → X′ and p : C → C′ over S and a correspondence C′ → X′ ×_S X′ such that the square formed by c, c′, p and q × q commutes. Then 𝔛′ = (X′, Rq_∗A) is dualizable; there is a unique 𝔣′ ∈ End(𝔛′) lying over C′ such that p defines a 2-morphism p̃ filling the square 𝔣′ ∘ 𝔮 ⇒ 𝔮 ∘ 𝔣 (𝔮 the 1-morphism over q); and there is a unique 2-morphism tr(p̃) : tr(𝔣) ⇒ tr(𝔣′) lying over tr(p) : Fix(c) → Fix(c′). Concretely, the induced proper map Fix(c) → Fix(c′) pushes tr_c(u, A) to tr_{c′}(u′, Rq_∗A).

*Hypotheses.*

- S is a decent v-stack; Λ is a commutative ring with nΛ = 0 for an integer n prime to p.
- q : X → X′ and p : C → C′ are proper nice maps over S (VS6/proper-nice-maps) compatible with the correspondences.

*Construction or proof.*

1. Uniqueness and existence of 𝔣′: lift (c, u) along the 2-morphism given by p (VS9/symmetric-monoidal-grothendieck-construction, Lu–Zheng Lemma 1.11; VS9/cohomological-correspondence-bicategory, pushAlongProper).
2. Dualizability of (X′, Rq_∗A): q♮ is right adjointable in Corr_S (VS9/correspondence-bicategory) and X′ is dualizable in Corr_S, so Lu–Zheng Remark 1.12(b) applies; equivalently (X′, Rq_∗A) has dual (X′, Rq_∗𝔻_{X/S}A) by the internal-Hom argument of Lu–Zheng Proposition 2.23.
3. The two triangles coev_{𝔛′} ⇒ (𝔮 ⊗ 𝔮^∨) ∘ coev_𝔛 and ev_𝔛 ⇒ ev_{𝔛′} ∘ (𝔮 ⊗ 𝔮^∨) and the square p̃ ⊗ id_{𝔮^∨} paste to tr(p̃) (VS9/trace-functoriality, Lu–Zheng Construction 1.7); uniqueness holds because 2-morphisms in CoCorr_S over a given proper map are unique.
4. The concrete form reads off the 2-morphism in ΩCoCorr_S (VS9/cohomological-correspondence-bicategory, omega).

*Source.* Hansen–Kaletha–Weinstein, Theorem 4.3.8 and proof, pp. 32–33: States and proves the relative Lefschetz–Verdier trace formula in CoCorr_S: dualizability of (X′, q_∗A), the unique pushed endomorphism and the 2-morphism tr(f) ⇒ tr(f′) over tr(p). Lu–Zheng, Theorem 2.21, Corollary 2.22, Proposition 2.23, pp. 18–19: Proves the scheme version, of which the v-stack proof is formally the same.

*Needs:* Layer VS9 *cohomological-correspondence-bicategory*; Layer VS9 *correspondence-bicategory*; Layer VS9 *trace-functoriality*; Layer VS9 *symmetric-monoidal-grothendieck-construction*; Layer VS9 *trace-in-cohomological-correspondences*; Layer VS7 *proper-nice-shriek-is-pushforward*.

**Checks.**

- For X′ = C′ = S and q, p the structure maps (X, C proper over S) this is the Lefschetz formula of VS10/lefschetz-for-proper-diamonds.
- For c = id and p = q it gives VS10/proper-pushforward-of-characteristic-classes.

<a id="VS10-proper-pushforward-of-characteristic-classes"></a>

### VS10.2 Characteristic classes commute with proper pushforward (*proper-pushforward-of-characteristic-classes*, theorem)

For (X, A) dualizable in CoCorr_S and p : X → X′ proper nice over S, (X′, Rp_!A) is dualizable, In_S(p) : In_S(X) → In_S(X′) is proper, and In_S(p)_∗ cc_{X/S}(A) = cc_{X′/S}(Rp_!A).

*Hypotheses.*

- S is a decent v-stack; Λ is a commutative ring with nΛ = 0 for an integer n prime to p.
- p is proper and fine; X, X′ are fine over S.

*Construction or proof.*

1. Apply VS10/relative-lefschetz-verdier with c = id_X, c′ = id_{X′}, q = p and C → C′ equal to p: the pushed endomorphism of (X′, Rp_∗A) is the identity and tr(p) = In_S(p).
2. In_S(p) is a base change of p and of the diagonal, hence proper; Rp_! = Rp_∗ (VS7/proper-nice-shriek-is-pushforward).

*Source.* Hansen–Kaletha–Weinstein, Corollary 4.3.9, p. 33: Deduces that characteristic classes commute with proper pushforward and that In_S(p) is proper. Lu–Zheng, Corollary 2.22, p. 19: The scheme version.

*Needs:* Layer VS10 *relative-lefschetz-verdier*; Layer VS9 *inertia-and-characteristic-class*; Layer VS7 *proper-nice-shriek-is-pushforward*.

**Checks.**

- For X′ = S and X proper over S = Spd C: ∫_{In_S(X)} cc_{X/S}(A) = χ(RΓ(X, A)).
- For p an isomorphism the statement is the transport of structure.

<a id="VS10-lefschetz-for-proper-diamonds"></a>

### VS10.3 The Lefschetz trace formula for proper diamonds (*lefschetz-for-proper-diamonds*, theorem)

Let S = Spd C for C algebraically closed perfectoid, q : X → S a proper nice diamond, A ∈ D_ét(X, Λ) ULA over S, and 𝔣 = (c, u) an endomorphism of (X, A) over a fine correspondence c : Y → X ×_S X with Y → S proper (equivalently c₁ proper, X being proper). Then RΓ(X, A) is a perfect complex, q_∗(c, u) is an endomorphism of it, and tr(q_∗(c, u) | RΓ(X, A)) = ∫_{Fix(c)} tr_c(u, A). If 𝔣 comes from an automorphism g of X with u : g^*A → A and Fix(g) consists of finitely many isolated S-points x₁, …, x_n, then tr(g | RΓ(X, A)) = Σ_i loc_{x_i}(g, A).

*Hypotheses.*

- S = Spd C with C algebraically closed perfectoid; Λ is a commutative ring with nΛ = 0 for an integer n prime to p.
- q : X → S is proper and representable in nice diamonds; A is ULA over S.
- Y → S is proper (this hypothesis is omitted in the source; sourceIssues).

*Construction or proof.*

1. Apply VS10/relative-lefschetz-verdier with X′ = C′ = S, q the structure map and p : Y → S, both proper.
2. Dualizability of (S, q_∗A) means RΓ(X, A) is perfect (VS9/perfect-complexes-are-dualizable); its trace is the Euler-characteristic trace.
3. tr(p) : Fix(c) → S, and the 2-morphism says p_∗tr_c(u, A) = tr(q_∗𝔣), i.e. the integral (VS7/relative-dualizing-complex).
4. For isolated fixed S-points, H^0(Fix(g), K) = ⊕ Λ and the integral is the sum of the local terms (VS10/local-terms).

*Source.* Hansen–Kaletha–Weinstein, Example 4.3.10, equation (4.3.5), Definition 4.3.11 and the display on p. 34, pp. 33–34: Deduces the Lefschetz trace formula for proper nice diamonds over Spd C from Theorem 4.3.8 and the sum-of-local-terms formula for isolated fixed points; the hypothesis that the correspondence is proper over S is missing there. Lu–Zheng, Theorem 2.21, p. 18: The scheme version with both c and d proper over the base.

*Needs:* Layer VS10 *relative-lefschetz-verdier*; Layer VS9 *perfect-complexes-are-dualizable*; Layer VS9 *dualizable-iff-ula*; Layer VS7 *relative-dualizing-complex*; Layer VS10 *local-terms*.

**Checks.**

- For X = P¹ over Spd C, A = Λ and g(z) = 2z: Fix(g) = {0, ∞}, both local terms are 1, and tr(g | RΓ(P¹, Λ)) = 2.
- For g = id on a finite set X = T_S, the formula counts points.
- Properness is needed: for C of characteristic 0, the closed unit disc D over Spd C (not proper) and g(T) = T + p, Fix(g) = ∅ while tr(g | RΓ(D, Λ)) = 1, since RΓ(D, Λ) = Λ.

<a id="VS10-local-terms"></a>

### VS10.4 Local terms (*local-terms*, definition)

For a correspondence c over S with fixed-point locus Fix(c), an endomorphism (c, u) of a dualizable (X, F), and a clopen β ⊂ Fix(c) proper over S with g : β → S, the local term loc_β(u, F) ∈ H^0(S, Λ) is the image of tr_c(u, F) under H^0(Fix(c), K) → H^0(β, Rg^!Λ) ≅ H^0(S, Rg_∗Rg^!Λ) ≅ H^0(S, Rg_!Rg^!Λ) → H^0(S, Λ); for S connected it lies in Λ. For an isolated fixed point x with x → S an isomorphism, loc_x(𝔣) is the restriction of tr_c(u, F) to x; for 𝔣 coming from an automorphism g and u : g^*F → F it is written loc_x(g, F). Local terms are additive: loc_{β₁ ⊔ β₂} = loc_{β₁} + loc_{β₂}.

*Hypotheses.*

- S is a decent v-stack; Λ is a commutative ring with nΛ = 0 for an integer n prime to p.
- β ⊂ Fix(c) is open and closed and proper over S.

*Construction or proof.*

1. H^0(β, K_{β/S}) is a direct summand of H^0(Fix(c), K_{Fix(c)/S}) since β is clopen; the integration map is VS7/relative-dualizing-complex.
2. Additivity: H^0 of a disjoint union is the product and the counit is additive.
3. For an isolated S-point x, K_{x/S} = Λ and the integral is evaluation.

*Source.* Hansen–Kaletha–Weinstein, Definition 4.3.11, p. 33: Defines the local term at an isolated fixed point x with x → S an isomorphism, and loc_x(g, A) for automorphisms. Hansen–Kaletha–Weinstein, §5.3, pp. 47–48: Defines loc_β(u, F) for a clopen β ⊂ Fix(c) proper over S through integration, notes additivity and the trace formula as a sum over π₀(Fix(c)).

*Needs:* Layer VS9 *trace-in-cohomological-correspondences*; Layer VS7 *relative-dualizing-complex*; Layer VS7 *proper-nice-shriek-is-pushforward*.

*Uses.*

- HKW22 equation (4.3.5) and p. 34: the Lefschetz formula as a sum of local terms.
- HKW22 Theorem 5.1.3 and Corollary 5.4.2, pp. 45–50: local terms of Satake sheaves at fixed points of strongly regular elements on the affine Grassmannian.
- HKW22 Propositions 5.3.1–5.3.2, p. 49: base change and perfect-scheme comparison of local terms.
- EtaleDualityAndPerverseSheaves:EDC.8/trace-map-and-local-terms: the scheme-theoretic local terms that the v-sheaf local terms extend.

*API.*

- `localTerm` (data): loc_β(u, F) ∈ H^0(S, Λ).
- `localTerm_isolated` (characterisation): For an isolated fixed S-point x, loc_x is the value of tr_c(u, F) at x.
- `localTerm_additive` (relation): loc_{β₁ ⊔ β₂} = loc_{β₁} + loc_{β₂}.
- `localTerm_sum` (relation): If Fix(c) is proper over S with finitely many components, Σ_β loc_β(u, F) = ∫_{Fix(c)} tr_c(u, F).
- `localTerm_baseChange` (compatibility): Local terms commute with base change (VS10/local-terms-base-change).
- `localTerm_scheme` (compatibility): For perfect schemes, local terms agree with the scheme-theoretic ones (VS10/local-terms-perfect-schemes).

**Checks.**

- `localTerm_identityPoint` (computation): For S = Spd C, X = S, c = id and F = Λⁿ, loc_S(id, F) = n.
- `localTerm_empty` (degenerate): loc_∅(u, F) = 0.
- `localTerm_projectiveLine` (computation): For g(z) = 2z on P¹ over Spd C and F = Λ, loc_0(g, Λ) = loc_∞(g, Λ) = 1, and their sum is tr(g | RΓ(P¹, Λ)) = 2.
- `localTerm_not_value` (non-example): For a non-isolated fixed locus (g = id on P¹), there is no pointwise local term: the class lives in H^0(P¹, K) and only its integral χ(P¹) = 2 is a number.
- `localTerm_scheme_compat` (compatibility): For X a perfect scheme separated and perfectly of finite type over k, loc_β agrees with the local term of EtaleDualityAndPerverseSheaves EDC.8/trace-map-and-local-terms after diamondification.

<a id="VS10-base-change-of-cohomological-correspondences"></a>

### VS10.5 Base change of cohomological correspondences (*base-change-of-cohomological-correspondences*, construction)

For a map a : T → S of decent v-stacks, base change X ↦ X_T, (c, u) ↦ (c_T, u_T), p ↦ p_T defines a symmetric monoidal functor CoCorr_S → CoCorr_T, where u_T is the image of u under Hom(c₁^*F, c₂^!F) → Hom(a_C^*c₁^*F, a_C^*c₂^!F) → Hom(c₁,T^*a_X^*F, c₂,T^!a_X^*F), using the natural transformation a_C^*Rc₂^! → Rc₂,T^!a_X^* adjoint to proper base change. Fix(c)_T = Fix(c_T), and the induced map H^0(Fix(c), K_{Fix(c)/S}) → H^0(Fix(c)_T, K_{Fix(c)_T/T}) is compatible with H^0(S, Λ) → H^0(T, Λ).

*Hypotheses.*

- S is a decent v-stack; Λ is a commutative ring with nΛ = 0 for an integer n prime to p.
- a : T → S is a map of decent v-stacks.

*Construction or proof.*

1. Base change preserves decency and fineness (VS6/decent-fibre-products, VS6/fine-permanence) and properness.
2. The transformation a_C^*Rc₂^! → Rc₂,T^!a_X^* is the mate of proper base change (VS7/fine-six-functor-identities, BC1); compatibility with composition and tensor products follows from the coherence of base change (HKW22 §5.3, p. 48).
3. Symmetric monoidality: (X ×_S Y)_T = X_T ×_T Y_T and a^*(A ⊠_S B) = a^*A ⊠_T a^*B.

*Source.* Hansen–Kaletha–Weinstein, §5.3, pp. 48–49, and proof of Proposition 5.3.1: Defines the base change u_T of a cohomological correspondence through the natural transformation f̃^*Rg^! → Rg̃^!f^* and uses that base change CoCorr_S → CoCorr_T is symmetric monoidal.

*Needs:* Layer VS9 *cohomological-correspondence-bicategory*; Layer VS7 *fine-six-functor-identities*; Layer VS6 *decent-fibre-products*; Layer VS6 *fine-permanence*.

*Uses.*

- HKW22 Proposition 5.3.1, p. 49: local terms commute with base change.
- HKW22 §4.6, p. 42: restriction of the universal local term to g ∈ G(S).

*API.*

- `CoCorr.baseChange` (functoriality): The symmetric monoidal functor a^* : CoCorr_S → CoCorr_T.
- `CoCorr.baseChange_fix` (simp): Fix(c_T) = Fix(c)_T.
- `CoCorr.baseChange_dualizable` (other): a^* preserves dualizable objects and traces (VS9/trace-functoriality).
- `CoCorr.baseChange_comp` (functoriality): (b ∘ a)^* ≅ a^* ∘ b^* coherently.
- `CoCorr.baseChange_traceClass` (compatibility): The trace class of (c_T, u_T) is the base change of tr_c(u, F).

**Checks.**

- `CoCorr.baseChange_id` (degenerate): For a = id_S, a^* is the identity functor.
- `CoCorr.baseChange_point` (computation): For S = Spd C, T = Spd C′ with C ⊂ C′ algebraically closed, a^* on (S, A) is A ↦ A on D(Λ).
- `CoCorr.baseChange_trace` (characterisation): Base change preserves categorical traces: tr(a^*𝔣) = a^*tr(𝔣).
- `CoCorr.not_starShriek` (non-example): Without the mate a_C^*Rc₂^! → Rc₂,T^!a_X^*, the pullback of u is a map a_C^*c₁^*F → a_C^*c₂^!F, which is not a cohomological correspondence over c_T; the mate is needed even though it need not be an isomorphism.

<a id="VS10-local-terms-base-change"></a>

### VS10.6 Local terms commute with base change (*local-terms-base-change*, theorem)

Let f : X → S be representable in nice diamonds, c : C → X ×_S X a correspondence representable in nice diamonds with c₁ proper, β ⊂ Fix(c) clopen and proper over S, F ∈ D_ét(X, Λ) f-ULA with a cohomological correspondence u over c, and a : T → S. Then H^0(S, Λ) → H^0(T, Λ) sends loc_β(u, F) to loc_{β_T}(u_T, F_T); in particular they are equal in Λ when S and T are connected.

*Hypotheses.*

- S is a small v-sheaf (decent), T → S a map; Λ is a commutative ring with nΛ = 0 for an integer n prime to p.
- The maps are representable in nice diamonds; F is f-ULA.

*Construction or proof.*

1. Reduce to a map H^0(Fix(c), K_{Fix(c)/S}) → H^0(Fix(c)_T, K_{Fix(c)_T/T}) compatible with H^0(S, Λ) → H^0(T, Λ) and sending tr_c(u, F) to tr_{c_T}(u_T, F_T): apply H^0 to K_{Fix(c)/S} → Ra_∗a^*K_{Fix(c)/S} → Ra_∗K_{Fix(c)_T/T}.
2. The trace classes match because base change CoCorr_S → CoCorr_T is symmetric monoidal (VS10/base-change-of-cohomological-correspondences) and symmetric monoidal functors preserve duals and traces (VS9/trace-functoriality).
3. Integration over β commutes with base change by proper base change for g : β → S.

*Source.* Hansen–Kaletha–Weinstein, Proposition 5.3.1 and proof, p. 49: Proves local terms commute with arbitrary base change using that base change is symmetric monoidal on cohomological correspondences.

*Needs:* Layer VS10 *base-change-of-cohomological-correspondences*; Layer VS10 *local-terms*; Layer VS9 *trace-functoriality*; Layer VS9 *dualizable-iff-ula*.

**Checks.**

- For T → S the inclusion of a geometric point, the local terms over S are determined by those at geometric points.
- For a = id the statement is trivial.

<a id="VS10-diamondification-of-scheme-correspondences"></a>

### VS10.7 Diamondification of cohomological correspondences of perfect schemes (*diamondification-of-scheme-correspondences*, construction)

For a perfect field k of characteristic p and the category PSch^ft_k of perfect schemes separated and perfectly of finite type over k, X ↦ X^♢ ((Spec R)^♢(A, A⁺) = Hom_k(R, A)) commutes with finite limits, carries separated perfectly finite type maps to maps representable in locally spatial diamonds, compactifiable of finite dim.trg, and the fully faithful symmetric monoidal c_X^* : D_ét(X, Λ) → D_ét(X^♢, Λ) with comparisons c^*RHom → RHom(c^*, c^*) and c^*Rf^! → Rf^{♢!}c^* turns a scheme cohomological correspondence (c, u) into (c^♢, u^♢) with Fix(c)^♢ = Fix(c^♢); this is a symmetric monoidal functor from scheme cohomological correspondences over Spec k to CoCorr_{Spd k}.

*Hypotheses.*

- k is a perfect field of characteristic p; Λ is a commutative ring with nΛ = 0 for an integer n prime to p.

*Construction or proof.*

1. (−)^♢ commutes with finite limits and has the stated representability (AdicCoefficientsAndComparisons L1/char-p-scheme-diamond-and-comparison-functor).
2. c_X^* is fully faithful and symmetric monoidal, compatible with f^* and Rf_! (AdicCoefficientsAndComparisons L3/full-faithfulness-27-2, L3/rf-shriek-comparison-27-4, L3/commutation-and-adjoints-27-1-27-3), and the comparisons for RHom and Rf^! are the adjoint transformations (L3/internal-Hom-right-adjoint).
3. u^♢ is the image of u under Hom(c₁^*F, Rc₂^!F) → Hom(c_C^*c₁^*F, c_C^*Rc₂^!F) → Hom(c₁^{♢*}c_X^*F, Rc₂^{♢!}c_X^*F); compatibility with composition and tensor products follows from the compatibility of c^* with base change (HKW22 §5.3, p. 49).

*Source.* Hansen–Kaletha–Weinstein, §5.3, discussion before Proposition 5.3.2, p. 49: Introduces (−)^♢ on perfect schemes, the fully faithful comparison c_X^* of Sch17 §27 with its RHom and Rf^! comparisons, and the induced correspondence u^♢.

*Needs:* AdicCoefficientsAndComparisons L1 *char-p-scheme-diamond-and-comparison-functor*; AdicCoefficientsAndComparisons L1 *comparison-pullback*; AdicCoefficientsAndComparisons L3 *full-faithfulness-27-2*; AdicCoefficientsAndComparisons L3 *rf-shriek-comparison-27-4*; AdicCoefficientsAndComparisons L3 *commutation-and-adjoints-27-1-27-3*; AdicCoefficientsAndComparisons L3 *internal-Hom-right-adjoint*; EtaleDualityAndPerverseSheaves EDC.8 *scheme-correspondence*; EtaleDualityAndPerverseSheaves EDC.8 *cohomological-correspondence-lifting*; Layer VS9 *cohomological-correspondence-bicategory*.

*Uses.*

- HKW22 Proposition 5.3.2, p. 49: comparison of scheme and v-sheaf local terms.
- HKW22 §5.5–5.6: degeneration of local terms on the affine Grassmannian to the Witt-vector affine Grassmannian.

*API.*

- `PerfectScheme.diamondCoCorr` (functoriality): The symmetric monoidal functor (c, u) ↦ (c^♢, u^♢).
- `PerfectScheme.diamond_fix` (simp): Fix(c)^♢ = Fix(c^♢).
- `PerfectScheme.diamond_ula` (other): c_X^* carries f-ULA objects to f^♢-ULA objects.
- `PerfectScheme.diamond_traceClass` (compatibility): The trace class of (c^♢, u^♢) is the image of the scheme trace class.

**Checks.**

- `PerfectScheme.diamond_point` (degenerate): For X = Spec k the functor is the identity on (Spec k, A) ↦ (Spd k, A).
- `PerfectScheme.diamond_affineLine` (computation): For X the perfection of A¹_k and c the graph of x ↦ x + 1, Fix(c) = ∅ (char p) and Fix(c^♢) = ∅.
- `PerfectScheme.diamond_fullyFaithful` (characterisation): Hom_{CoCorr}((X, F), (X, F)) over a correspondence c injects into the corresponding Hom over c^♢, by full faithfulness of c^*.
- `PerfectScheme.not_nonseparated` (non-example): For a non-separated perfect scheme (the line with doubled origin) the correspondence category of PSch^ft_k does not contain it, and the representability statement used for c₂^♢ fails.

<a id="VS10-local-terms-perfect-schemes"></a>

### VS10.8 Local terms of perfect schemes agree with those of their v-sheaves (*local-terms-perfect-schemes*, theorem)

Let k be perfect, X ∈ PSch^ft_k with f : X → Spec k, c : C → X ×_k X a correspondence in PSch^ft_k with c₁ and f ∘ c′ perfectly proper, F ∈ D_ét(X, Λ) f-ULA with a cohomological correspondence u over c, and β ⊂ Fix(c) clopen. Then c_X^*F is f^♢-ULA and loc_β(u, F) = loc_{β^♢}(u^♢, c_X^*F) in Λ.

*Hypotheses.*

- k is a perfect field of characteristic p; Λ is a commutative ring with nΛ = 0 for an integer n prime to p.
- c₁ and f ∘ c′ are perfectly proper; F is f-ULA.
- The scheme-theoretic local term is that of EtaleDualityAndPerverseSheaves EDC.8 for the finite-type models, after base change to an algebraic closure of k.

*Construction or proof.*

1. Reduce to k algebraically closed by base change of local terms on both sides (VS10/local-terms-base-change and the scheme analogue of EDC.8/correspondence-pullback-and-restriction); perfect schemes perfectly of finite type are perfections of schemes of finite type, with the same étale sites, so EDC.8's trace maps apply (SchemeAndStackFoundations SF.0/perfection-universal-homeomorphism).
2. Diamondification is symmetric monoidal on cohomological correspondences (VS10/diamondification-of-scheme-correspondences), hence preserves dualizable objects and traces (VS9/trace-functoriality); ULA-ness is preserved in particular.
3. Integration over β commutes with c^* because c^* is compatible with Rf_! (proper support comparison).

*Source.* Hansen–Kaletha–Weinstein, Proposition 5.3.2 and proof, pp. 49–50: Proves that local terms of perfect schemes agree with those of their associated v-sheaves, by the symmetric monoidality of diamondification on cohomological correspondences.

*Needs:* Layer VS10 *diamondification-of-scheme-correspondences*; Layer VS10 *local-terms*; Layer VS10 *local-terms-base-change*; Layer VS9 *trace-functoriality*; EtaleDualityAndPerverseSheaves EDC.8 *trace-map-and-local-terms*; EtaleDualityAndPerverseSheaves EDC.8 *correspondence-pullback-and-restriction*; AdicCoefficientsAndComparisons L3 *rf-shriek-comparison-27-4*; SchemeAndStackFoundations SF.0 *perfection-universal-homeomorphism*.

**Checks.**

- For X = Spec k and c = id, both sides are the Euler characteristic of F.
- For Frobenius correspondences on perfect varieties, the v-sheaf local terms recover the scheme local terms.

### Examples

- For S = Spd C, X = S, c = id and F = Λⁿ, loc_S(id, F) = n.
- For g(z) = 2z on P¹ over Spd C and F = Λ, loc_0(g, Λ) = loc_∞(g, Λ) = 1, and their sum is tr(g | RΓ(P¹, Λ)) = 2.
- For S = Spd C, T = Spd C′ with C ⊂ C′ algebraically closed, a^* on (S, A) is A ↦ A on D(Λ).
- For X the perfection of A¹_k and c the graph of x ↦ x + 1, Fix(c) = ∅ (char p) and Fix(c^♢) = ∅.

### Dependencies

This layer uses `VStackSheavesAndLisseCategoriesPartII:VS9`, `VStackSheavesAndLisseCategoriesPartII:VS7`, `EtaleDualityAndPerverseSheaves:EDC.8`, `AdicCoefficientsAndComparisons:L1`, `AdicCoefficientsAndComparisons:L3`, `SchemeAndStackFoundations:SF.0`.

## Layer VS11: characteristic classes on classifying and quotient stacks

For G locally pro-p, prove that on [S/G_S] dualizability, ULA-ness and perfectness of all pro-p invariants coincide (admissible objects), identify In_S([S/G_S]) with [G_S//G_S], define the trace distribution of an admissible object and prove that it is its characteristic class.

Construct the modified Künneth map and based cohomological correspondences BCoCorr_S with fibre products over a base, and prove their functoriality and monoidality; prove that the characteristic class of (T, Λ_T) trivialises K_{In_S(T)/S} for T with smooth structure map and diagonal, and the Künneth formula for characteristic classes over such T. For a cohomologically smooth group diamond G acting on a nice diamond X, identify In_S([X/G]) with [Fix(c)/G], construct the universal local term in CoCorr_G, prove that the characteristic class on [X/G] is the universal local term (Theorem 4.6.1), and that over a conjugation-invariant open on which the fixed locus is étale it is the function (x, g) ↦ loc_x(g, A).

Key definitions and theorems shown in the atlas: Admissible objects, Trace distribution, Characteristic class equals trace distribution, Based cohomological correspondences, Künneth formula for characteristic classes, Universal local terms on [X/G].

<a id="VS11-admissible-objects-on-classifying-stacks"></a>

### VS11.1 Admissible objects on classifying stacks (*admissible-objects-on-classifying-stacks*, theorem)

For M ∈ D_ét([S/G_S], Λ) the following are equivalent: (1) ([S/G_S], M) is dualizable in CoCorr_S, with dual ([S/G_S], 𝔻M), 𝔻M = Haar(G, Λ)^∗ ⊗ M^∨, where M^∨ = RHom(M, Λ) is the derived smooth dual; (2) M is ULA over S; (3) for every compact open pro-p subgroup K ⊂ G the derived invariants M^K form a perfect complex of Λ-modules. Such M are called admissible.

*Hypotheses.*

- S is a geometric point (Spd C or Spd k); Λ is a commutative ring with nΛ = 0 for an integer n prime to p.
- G is a locally pro-p group as in HKW22 Example 4.2.2 (e.g. closed in GL_n(E)); D_ét([S/G_S], Λ) is the derived category of smooth G-representations.

*Construction or proof.*

1. (1) ⇔ (2): VS9/dualizable-iff-ula, since [S/G_S] → S is fine and smooth.
2. The Verdier dual is RHom(M, f^!Λ) with f^!Λ = Haar(G, Λ)^∗ (VS8/classifying-stack-structure-map), and RHom(M, Λ) is the derived smooth dual (Fargues–Scholze Corollary V.1.4; SmoothRepresentationsOfLocalGroups SR.0:derived-extension/derived-smooth-dual).
3. (2) ⇔ (3): adapt Fargues–Scholze's proof of Theorem V.7.1 from Bun_G to [S/G_S], as HKW22 indicate: by Fargues–Scholze Proposition IV.2.32, ULA-ness is the isomorphism p₁^*RHom(M, Λ) ⊗ p₂^*M ≅ RHom(p₁^*M, p₂^*M) on [S/G_S] ×_S [S/G_S] = [S/(G × G)_S]. Test it against the compact generators c-Ind_{K×K}^{G×G}Λ, K pro-p open (SR.0:derived-extension/compact-generation): the left side gives (M^∨)^K ⊗ M^K = RHom(M^K, Λ) ⊗ M^K (invariants of pro-p groups are exact, and 𝔻(V)^K ≅ RHom(V^K, Λ) by SR.0:derived-extension/derived-smooth-dual), the right side gives Hom(M_K, M^K) = RHom(M^K, M^K) (coinvariants equal invariants for pro-p K), so the comparison at level K is the map of VS9/perfect-complexes-are-dualizable (b), an isomorphism iff M^K is perfect. The parent proves the Bun_G case (VS5/ula-equals-admissibility).
4. Direct proof of (3) ⇒ (1): the coevaluation over (f, Δ_f) is the G × G-equivariant integration map I : C_c(G, Λ) ⊗ Haar(G, Λ) → H^0(M ⊗ M^∨), I(h ⊗ μ) = ∫ h(g) g dμ(g), which factors through End(M^K) for K small; the explicit description of Δ_f^! uses VS8/restriction-and-induction-as-operations (G is a direct factor of G × G via the diagonal).

*Source.* Hansen–Kaletha–Weinstein, Proposition 4.4.1 and proof, pp. 34–35; Definition 4.4.2, p. 35: Proves the equivalence of dualizability, ULA-ness and perfectness of pro-p invariants on [S/G_S], with dual Haar(G, Λ)^∗ ⊗ M^∨, sketches a direct proof of (3) ⇒ (1) through the integration map, and calls such M admissible. Fargues–Scholze, Theorem V.7.1, p. 183; Corollary V.1.4, p. 170; Proposition IV.2.32, p. 129: The Bun_G version of the admissibility criterion, the identification of RHom(−, Λ) with derived smooth duality, and the ULA criterion for smooth maps of Artin v-stacks.

*Needs:* Layer VS9 *dualizable-iff-ula*; Layer VS9 *dualizability-criterion*; Layer VS9 *perfect-complexes-are-dualizable*; Layer VS8 *classifying-stack-structure-map*; Layer VS8 *restriction-and-induction-as-operations*; Layer VS8 *haar-module*; VStackSheavesAndLisseCategories VS1 *smooth-ula-criterion*; VStackSheavesAndLisseCategories VS5 *ula-equals-admissibility*; SmoothRepresentationsOfLocalGroups SR.0:derived-extension *derived-smooth-dual*; SmoothRepresentationsOfLocalGroups SR.0:derived-extension *compact-generation*; SmoothRepresentationsOfLocalGroups SR.0:derived-extension *derived-invariants*.

**Checks.**

- A smooth representation M placed in degree 0 whose invariants M^K are finite projective Λ-modules for all open pro-p K is admissible.
- The regular representation C_c(G, Λ) of a noncompact G is not admissible: its K-invariants are not finitely generated.

<a id="VS11-inertia-of-classifying-stack"></a>

### VS11.2 The inertia stack of a classifying stack (*inertia-of-classifying-stack*, theorem)

In_S([S/G_S]) ≅ [G_S//G_S], the quotient of G_S by conjugation: a Y-point is a G_S-torsor Ỹ → Y with a G-equivariant automorphism y ↦ φ(y)·y, φ(gy) = gφ(y)g^{-1}. Combined with VS8/quotients-of-locally-profinite-sets for the conjugation action this gives H^0(In_S([S/G_S]), K_{In_S([S/G_S])/S}) ≅ Hom_G(C_c(G, Λ) ⊗ Haar(G, Λ), Λ), with G acting on C_c(G, Λ) by conjugation and on Haar(G, Λ) by the modulus character.

*Hypotheses.*

- S is a geometric point (Spd C or Spd k); Λ is a commutative ring with nΛ = 0 for an integer n prime to p.
- G is a locally pro-p group as in HKW22 Example 4.2.2 (e.g. closed in GL_n(E)); D_ét([S/G_S], Λ) is the derived category of smooth G-representations.

*Construction or proof.*

1. Unwind In_S(X) = X ×_{X ×_S X} X for X = [S/G_S] through VS6/classifying-stack-of-group-diamond: an automorphism of a torsor commuting with the action is given by a conjugation-equivariant map to G.
2. [G_S//G_S] = [T_S/G_S] for T = G with the conjugation action; apply VS8/quotients-of-locally-profinite-sets.

*Source.* Hansen–Kaletha–Weinstein, §4.4, p. 35: Identifies the inertia stack of [S/G_S] with the stack of conjugacy classes [G_S//G_S] and its H^0 of the dualizing complex with Hom_G(C_c(G, Λ) ⊗ Haar(G, Λ), Λ) via Example 4.2.5.

*Needs:* Layer VS9 *inertia-and-characteristic-class*; Layer VS6 *classifying-stack-of-group-diamond*; Layer VS8 *quotients-of-locally-profinite-sets*; Layer VS8 *classifying-stack-is-decent*.

**Checks.**

- For G finite, In_S([S/G]) = ⊔ over conjugacy classes of [S/Z_G(g)].
- For G abelian, In_S([S/G_S]) = G_S × [S/G_S].

<a id="VS11-trace-distribution"></a>

### VS11.3 Trace distributions of admissible objects (*trace-distribution*, definition)

For M admissible on [S/G_S], h ∈ C_c(G, Λ) and μ ∈ Haar(G, Λ), the operator I_{h,μ}(v) = ∫_G h(g) g v dμ(g) on M factors through the perfect complex M^K for K pro-p open with h bi-K-invariant; the trace distribution tr.dist(M) ∈ Hom_G(C_c(G, Λ) ⊗ Haar(G, Λ), Λ) sends h ⊗ μ to the Euler-characteristic trace of I_{h,μ} on M^K, independent of K. G acts on C_c(G, Λ) by conjugation and on Haar(G, Λ) by the modulus character, and tr.dist(M) is invariant.

*Hypotheses.*

- S is a geometric point (Spd C or Spd k); Λ is a commutative ring with nΛ = 0 for an integer n prime to p.
- G is a locally pro-p group as in HKW22 Example 4.2.2 (e.g. closed in GL_n(E)); D_ét([S/G_S], Λ) is the derived category of smooth G-representations.
- M is admissible (VS11/admissible-objects-on-classifying-stacks).

*Construction or proof.*

1. For K pro-p, M^K is a direct summand of M via averaging with a normalised Haar measure (SmoothRepresentationsOfLocalGroups SR.0:abelian-category/averaging-projector).
2. Integration against h dμ is the action of the Hecke algebra (SR.1/integration, SR.1/convolution-algebra); for bi-K-invariant h it preserves M^K and is zero on its complement.
3. Independence of K: for K′ ⊂ K, the trace on M^{K′} equals that on M^K since I_{h,μ} has image in M^K (cyclicity of traces, VS9/dualizable-object-and-trace).
4. Invariance: conjugating h by g and translating μ intertwines I_{h,μ} with g I g^{-1}.

*Source.* Hansen–Kaletha–Weinstein, §4.4, equation (4.4.1), p. 35; proof of Proposition 4.4.1, pp. 34–35: Defines the trace distribution of an admissible object as h ⊗ μ ↦ Euler characteristic of I_{h,μ}, which factors through the perfect complex M^K.

*Needs:* Layer VS11 *admissible-objects-on-classifying-stacks*; Layer VS8 *haar-module*; Layer VS9 *perfect-complexes-are-dualizable*; SmoothRepresentationsOfLocalGroups SR.0:abelian-category *averaging-projector*; SmoothRepresentationsOfLocalGroups SR.1 *integration*; SmoothRepresentationsOfLocalGroups SR.1 *convolution-algebra*; SmoothRepresentationsOfLocalGroups SR.0:abelian-category *compact-open-invariants*.

*Uses.*

- HKW22 Proposition 4.4.3, p. 35: trace distributions are characteristic classes.
- HKW22 §6, pp. 62–68: trace distributions of ρ ∈ Rep G_b(F) and of RΓ(G, b, μ)[ρ] enter the Kottwitz conjecture through the transfer T^{G_b→G}_{b,μ}.
- SmoothRepresentationsOfLocalGroups:SR.3: for admissible finite-length representations the trace distribution is the Harish-Chandra distribution character.

*API.*

- `traceDistribution` (data): tr.dist(M) ∈ Hom_G(C_c(G, Λ) ⊗ Haar(G, Λ), Λ).
- `traceDistribution_apply` (simp): tr.dist(M)(h ⊗ μ) = tr(I_{h,μ} | M^K) for K pro-p with h bi-K-invariant.
- `traceDistribution_additive` (relation): tr.dist is additive in distinguished triangles of admissible objects.
- `traceDistribution_invariant` (characterisation): tr.dist(M) is invariant under conjugation twisted by the modulus character.
- `traceDistribution_shift` (simp): tr.dist(M[1]) = −tr.dist(M).
- `traceDistribution_eq_charClass` (compatibility): tr.dist(M) = cc_{[S/G_S]/S}(M) (VS11/characteristic-class-is-trace-distribution).

**Checks.**

- `traceDistribution_finite` (computation): For G = Z/2, Λ = Z[1/2], M the sign representation and μ counting measure, tr.dist(M)(1_{{1}} ⊗ μ) = 1 and tr.dist(M)(1_{{σ}} ⊗ μ) = −1.
- `traceDistribution_zero` (degenerate): tr.dist(0) = 0.
- `traceDistribution_trivial_compact` (computation): For G = Z_p, M = Λ trivial and μ normalised on Z_p, tr.dist(Λ)(h ⊗ μ) = ∫ h dμ.
- `traceDistribution_not_regular` (non-example): For G = Q_p and M = C_c(Q_p, Λ), M^K is not finitely generated for K = Z_p, so M is not admissible and has no trace distribution.
- `traceDistribution_shift_sign` (characterisation): tr.dist(Λ[1]) = −tr.dist(Λ) for G compact.

<a id="VS11-characteristic-class-is-trace-distribution"></a>

### VS11.4 The characteristic class of an admissible object is its trace distribution (*characteristic-class-is-trace-distribution*, theorem)

For M admissible on [S/G_S], under the identification of VS11/inertia-of-classifying-stack, cc_{[S/G_S]/S}(M) = tr.dist(M).

*Hypotheses.*

- S is a geometric point (Spd C or Spd k); Λ is a commutative ring with nΛ = 0 for an integer n prime to p.
- G is a locally pro-p group as in HKW22 Example 4.2.2 (e.g. closed in GL_n(E)); D_ét([S/G_S], Λ) is the derived category of smooth G-representations.
- M is admissible.

*Construction or proof.*

1. cc(M) = ev ∘ coev applied to id_M (VS9/inertia-and-characteristic-class).
2. Under H^0(RHom(M, M)) ≅ End_G(M), H^0(Δ_f^!(𝔻M ⊠ M)) ≅ Hom_{G×G}(C_c(G, Λ) ⊗ Haar(G, Λ), M^∨ ⊠ M) and H^0(K_{In}) ≅ Hom_G(C_c(G, Λ) ⊗ Haar(G, Λ), Λ), coevaluation sends id to the integration map I and evaluation sends I to h ⊗ μ ↦ tr(I_{h,μ}) (HKW22 proof of Proposition 4.4.3, using the explicit coevaluation of VS11/admissible-objects-on-classifying-stacks).

*Source.* Hansen–Kaletha–Weinstein, Proposition 4.4.3 and proof, pp. 35–36: Proves that the characteristic class of an admissible object on [S/G_S] equals its trace distribution through a commutative diagram comparing evaluation and coevaluation.

*Needs:* Layer VS11 *trace-distribution*; Layer VS11 *inertia-of-classifying-stack*; Layer VS11 *admissible-objects-on-classifying-stacks*; Layer VS9 *inertia-and-characteristic-class*; Layer VS9 *dualizability-criterion*.

**Checks.**

- For G finite, cc(M) is the character of M.
- For M = Λ and G compact pro-p, cc(Λ) is the Haar distribution.

<a id="VS11-modified-kunneth-map"></a>

### VS11.5 The modified Künneth map (*modified-kunneth-map*, construction)

Let U → T be a cohomologically smooth map of decent S-v-stacks and f_i : Y_i → X_i (i = 1, 2) fine maps fitting in 2-commutative squares over U → T, with f : Y₁ ×_U Y₂ → X₁ ×_T X₂ and g : Y₁ ×_U Y₂ → U. For A_i ∈ D_ét(X_i, Λ), κ_{U/T} : f₁^!A₁ ⊠_U f₂^!A₂ → f^!(A₁ ⊠_T A₂) ⊗ g^*K_{U/T} is the composite of (Δ′_{U/T})^*(f₁^!A₁ ⊠_T f₂^!A₂), the Künneth map into (Δ′)^*(f₁ ×_T f₂)^!(A₁ ⊠_T A₂), the identification g^*(Δ_{U/T})^!Λ ⊗ g^*K_{U/T} ≅ Λ of Lemma 4.1.11, the map (Δ′)^* ⊗ (Δ′)^!Λ → (Δ′)^! of (4.1.2), and (Δ′)^!(f₁ ×_T f₂)^! = f^!. For X₁ = X₂ = T = S it is κ_{U/S} : K_{Y₁/S} ⊠_U K_{Y₂/S} → K_{Y₁×_UY₂/S} ⊗ g^*K_{U/S}.

*Hypotheses.*

- S is a decent v-stack; Λ is a commutative ring with nΛ = 0 for an integer n prime to p.
- U → T is cohomologically smooth; f₁, f₂ are fine.

*Construction or proof.*

1. The Cartesian square Y₁ ×_U Y₂ → Y₁ ×_T Y₂ over Δ_{U/T} : U → U ×_T U identifies ⊠_U with (Δ′)^* of ⊠_T.
2. Each displayed map is an instance of VS7/fine-six-functor-identities (Künneth), VS7/diagonal-dualizing-complex and the natural transformation (4.1.2) (VS7/fine-smoothness-and-dualizing-objects).

*Source.* Hansen–Kaletha–Weinstein, Definition 4.5.1 and equation (4.5.1), pp. 36–37: Defines the modified Künneth map through base change along the relative diagonal of U over T and Lemma 4.1.11.

*Needs:* Layer VS7 *fine-six-functor-identities*; Layer VS7 *diagonal-dualizing-complex*; Layer VS7 *fine-smoothness-and-dualizing-objects*; Layer VS7 *relative-dualizing-complex*.

*Uses.*

- HKW22 equation (4.5.2), p. 38: the Künneth pairing of sections of dualizing complexes over In_S(T).
- HKW22 equation (4.5.7), p. 40: the fibre product of morphisms of based cohomological correspondences.

*API.*

- `modifiedKunneth` (data): κ_{U/T} : f₁^!A₁ ⊠_U f₂^!A₂ → f^!(A₁ ⊠_T A₂) ⊗ g^*K_{U/T}.
- `modifiedKunneth_same_base` (simp): For U = T, κ is the Künneth map of VS7/fine-six-functor-identities.
- `modifiedKunneth_comp` (relation): κ is compatible with composition of the squares, up to the canonical isomorphisms K_{U′/T} ≅ K_{U′/U} ⊗ K_{U/T}.
- `modifiedKunneth_dualizing` (example): For X_i = T = S: K_{Y₁/S} ⊠_U K_{Y₂/S} → K_{Y₁×_UY₂/S} ⊗ g^*K_{U/S}.

**Checks.**

- `modifiedKunneth_trivial` (degenerate): For U = T = S and f_i = id, κ is the identity of A₁ ⊠_S A₂.
- `modifiedKunneth_point` (computation): For S = T = Spd C, U = [S/G_S] with G = Z_p and Y_i = U, κ_{U/S} : K_{U/S} ⊗ K_{U/S} → K_{U/S} ⊗ K_{U/S} is an isomorphism of free rank-one twists by Haar(Z_p, Λ)^∗.
- `modifiedKunneth_twist_needed` (non-example): Without the twist by g^*K_{U/T}, there is no natural map f₁^!A₁ ⊠_U f₂^!A₂ → f^!(A₁ ⊠_T A₂) when U → T is smooth of nonzero dimension: for U = T × B (B a perfectoid ball) the two sides differ by Λ(1)[2].
- `modifiedKunneth_compat` (compatibility): For U = T, κ agrees with the Künneth map used to define tensor products in CoCorr_S.

<a id="VS11-smooth-base-dualizing-trivialization"></a>

### VS11.6 Canonical trivialisation over the inertia of a smooth base (*smooth-base-dualizing-trivialization*, theorem)

If T is a decent S-v-stack whose structure map π : T → S and diagonal Δ_{T/S} are both cohomologically smooth (e.g. T = [S/G] for a cohomologically smooth locally spatial group diamond G), then (T, Λ_T) is dualizable in CoCorr_S, In_S(T) → S is cohomologically smooth, and cc_{T/S}(Λ_T), viewed as a map Λ_{In_S(T)} → K_{In_S(T)/S}, is an isomorphism.

*Hypotheses.*

- S is a decent v-stack; Λ is a commutative ring with nΛ = 0 for an integer n prime to p.
- π and Δ_{T/S} are cohomologically smooth.

*Construction or proof.*

1. In_S(T) is a base change of Δ_{T/S}, so smooth over T and hence over S.
2. The coevaluation map π^*Λ ≅ Δ^!pr₁^!π^*Λ ≅ Δ^!pr₂^*π^!Λ is an isomorphism by smoothness of π (VS7/fine-smoothness-and-dualizing-objects); the evaluation Δ^*pr₂^*K_{T/S} → π^!Λ is an isomorphism with no hypotheses.
3. cc_{T/S}(Λ_T) = h^*Δ^!pr₂^*K ≅ h^!Δ^*pr₂^*K ≅ h^!K_{T/S} ≅ K_{In_S(T)/S}, the middle isomorphism by smooth base change for the smooth Δ (HKW22 Lemma 4.5.2).

*Source.* Hansen–Kaletha–Weinstein, Lemma 4.5.2 and proof, pp. 37–38, with the preceding diagram: Proves dualizability of (T, Λ_T) and that its characteristic class canonically trivialises K_{In_S(T)/S} when π and Δ_{T/S} are smooth.

*Needs:* Layer VS9 *inertia-and-characteristic-class*; Layer VS9 *dualizability-criterion*; Layer VS7 *fine-smoothness-and-dualizing-objects*; Layer VS6 *fine-cohomologically-smooth*.

**Checks.**

- For T = [S/G] with G finite étale, In_S(T) is a finite union of classifying stacks and K is trivial.
- For T = S, the statement is cc_{S/S}(Λ) = 1.

<a id="VS11-based-cohomological-correspondences"></a>

### VS11.7 Based cohomological correspondences (*based-cohomological-correspondences*, construction)

BCoCorr_S has objects (X → T, A, B) with X → T a fine map of decent S-v-stacks fine over S, T → S cohomologically smooth, A ∈ D_ét(X, Λ) and B ∈ D_ét(T, Λ) invertible; morphisms (q♮, α, β) with q♮ = (p, q, p′) a morphism of correspondences C → X ×_U X′ over U → T ×_S T′ (u′ : U → T′ cohomologically smooth), α : c^*A → c′^!A′ and β : u^*B ≅ u′^!B′ an isomorphism; 2-morphisms pairs of proper maps C → D and U → V compatible as in Definition 4.3.4; tensor (X → T, A, B) ⊗ (X′ → T′, A′, B′) = (X ×_S X′ → T ×_S T′, A ⊠_S A′, B ⊠_S B′). Base and source functors 𝔅(X → T, A, B) = (T, B) and 𝔖(X → T, A, B) = (X, A) are symmetric monoidal to CoCorr_S. For objects with a common base 𝔗 = (T, B), 𝔛₁ ⊠_𝔗 𝔛₂ := (X₁ ×_T X₂ → T, (A₁ ⊠_T A₂) ⊗ p^*B^{-1}, B); on morphisms lying over a common morphism of bases it uses (α₁ ⊠_U α₂) ⊗ β, the modified Künneth map κ_{U/T′} and Lemma 4.1.10 (equation (4.5.7)).

*Hypotheses.*

- S is a decent v-stack; Λ is a commutative ring with nΛ = 0 for an integer n prime to p.

*Construction or proof.*

1. Composition of morphisms as in VS9/cohomological-correspondence-bicategory, with smoothness of u′ preserved under composition (VS6/fine-cohomologically-smooth).
2. The fibre product on morphisms is the composite (4.5.7) built from VS11/modified-kunneth-map and VS7/shriek-and-invertible-objects.
3. Its functoriality and monoidality (4.5.8)–(4.5.9) are VS11/based-fibre-product-coherence.

*Source.* Hansen–Kaletha–Weinstein, Definition 4.5.4 and equations (4.5.3)–(4.5.7), pp. 38–40: Defines based cohomological correspondences, the base and source functors and the fibre product over a common base on objects and morphisms.

*Needs:* Layer VS9 *cohomological-correspondence-bicategory*; Layer VS9 *symmetric-monoidal-grothendieck-construction*; Layer VS11 *modified-kunneth-map*; Layer VS7 *shriek-and-invertible-objects*; Layer VS6 *fine-cohomologically-smooth*.

*Uses.*

- HKW22 proof of Theorem 4.5.3, pp. 40–41: dualizability and traces of fibre products over a smooth base.
- HKW22 proof of Theorem 4.6.1, pp. 42–43: the objects 𝔜, 𝔊, 𝔊′ and morphisms coev_G, ev_G, α₀ relating cc_{Y/S}(A) to the universal local term.

*API.*

- `BCoCorr.obj` (constructor): Objects (X → T, A, B) with T smooth over S and B invertible.
- `BCoCorr.base` (projection): 𝔅 : BCoCorr_S → CoCorr_S, (X → T, A, B) ↦ (T, B), symmetric monoidal.
- `BCoCorr.source` (projection): 𝔖 : BCoCorr_S → CoCorr_S, (X → T, A, B) ↦ (X, A), symmetric monoidal.
- `BCoCorr.fiberProduct` (structure): 𝔛₁ ⊠_𝔗 𝔛₂ = (X₁ ×_T X₂ → T, (A₁ ⊠_T A₂) ⊗ p^*B^{-1}, B).
- `BCoCorr.fiberProduct_map` (functoriality): Fibre products of morphisms lying over a common morphism of bases, by (4.5.7).
- `BCoCorr.dual` (other): If 𝔖(𝔛) and 𝔅(𝔛) are dualizable, so is 𝔛, with dual (X → T, 𝔻_{X/S}A, K_{T/S} ⊗ B^{-1}).

**Checks.**

- `BCoCorr.base_unit` (degenerate): 𝔅 and 𝔖 send the unit (S → S, Λ_S, Λ_S) to (S, Λ_S).
- `BCoCorr.fiberProduct_trivialBase` (computation): For T = S and B = Λ, 𝔛₁ ⊠_𝔗 𝔛₂ = (X₁ ×_S X₂, A₁ ⊠_S A₂), the tensor product of CoCorr_S.
- `BCoCorr.fiberProduct_twist` (characterisation): For 𝔛_i = (X_i → T, A_i, Λ_T), 𝔛₁ ⊠_𝔗 𝔛₂ has sheaf A₁ ⊠_T A₂, with no twist.
- `BCoCorr.not_without_B` (non-example): Without the invertible object B, the naive fibre product (X₁ ×_T X₂, A₁ ⊠_T A₂) is not functorial in morphisms lying over a morphism of bases, because of the twist g^*K_{U/T} in the modified Künneth map (HKW22 p. 38).

<a id="VS11-based-fibre-product-coherence"></a>

### VS11.8 Functoriality and monoidality of fibre products over a base (*based-fibre-product-coherence*, theorem)

The fibre product ⊠_𝔗 is a functor BCoCorr_S ×_{𝔅, CoCorr_S} BCoCorr_S → BCoCorr_S: there are coherent 2-isomorphisms (𝔣′₁ ⊠_{e′} 𝔣′₂) ∘ (𝔣₁ ⊠_e 𝔣₂) ≅ (𝔣′₁ ∘ 𝔣₁) ⊠_{e′∘e} (𝔣′₂ ∘ 𝔣₂), and it is monoidal: (𝔛₁ ⊠_𝔗 𝔛₂) ⊗ (𝔛′₁ ⊠_{𝔗′} 𝔛′₂) ≅ (𝔛₁ ⊗ 𝔛′₁) ⊠_{𝔗⊗𝔗′} (𝔛₂ ⊗ 𝔛′₂), compatibly with the symmetry and the 𝔅- and 𝔖-images.

*Hypotheses.*

- S is a decent v-stack; Λ is a commutative ring with nΛ = 0 for an integer n prime to p.

*Construction or proof.*

1. Composition: the composite of two diagrams (4.5.6) is the diagram for the composite; the 2-isomorphism compares the two composites of (4.5.7) using compatibility of the Künneth maps with base change (VS7/fine-six-functor-identities), compatibility of κ_{U/T} with composition of smooth maps U″ → U′ → T (VS11/modified-kunneth-map, comp), and the identification K_{U″/T} ≅ K_{U″/U′} ⊗ K_{U′/T}.
2. Monoidality: (X₁ ×_T X₂) ×_S (X′₁ ×_{T′} X′₂) ≅ (X₁ ×_S X′₁) ×_{T ×_S T′} (X₂ ×_S X′₂), with the sheaves matched by the symmetric monoidal structure of ⊠ and B^{-1} ⊠ B′^{-1} = (B ⊠ B′)^{-1}.
3. Coherence (associativity of the 2-isomorphisms) reduces to the coherence of base change isomorphisms in the enhanced operation map (VS7/fine-shriek-functors).
4. The source states these as straightforward but tedious and omits them; they are planned here as proof obligations.

*Source.* Hansen–Kaletha–Weinstein, Equations (4.5.8)–(4.5.9) and the sentence after them, p. 40: States that ⊠_𝔗 is functorial and monoidal up to the displayed 2-isomorphisms and that the details are straightforward but tedious; no proof is given.

*Needs:* Layer VS11 *based-cohomological-correspondences*; Layer VS11 *modified-kunneth-map*; Layer VS7 *fine-six-functor-identities*; Layer VS7 *fine-shriek-functors*.

**Checks.**

- For trivial bases the statement is the functoriality of the tensor product of CoCorr_S.
- Applied to coev and ev of dualizable objects with common base it gives the dualizability of 𝔛₁ ⊠_𝔗 𝔛₂ (VS11/kunneth-for-characteristic-classes).

<a id="VS11-kunneth-for-characteristic-classes"></a>

### VS11.9 A Künneth formula for characteristic classes (*kunneth-for-characteristic-classes*, theorem)

Let T be a decent S-v-stack with π : T → S and Δ_{T/S} cohomologically smooth, X₁, X₂ → T fine, and A_i ∈ D_ét(X_i, Λ) ULA over S. Then A₁ ⊠_T A₂ is ULA over S, In_S(X₁ ×_T X₂) ≅ In_S(X₁) ×_{In_S(T)} In_S(X₂), and cc_{X₁/S}(A₁) ⊠_{In_S(T)} cc_{X₂/S}(A₂) = cc_{X₁×_TX₂/S}(A₁ ⊠_T A₂), where ⊠_{In_S(T)} is the Künneth pairing (4.5.2) built from κ_{In_S(T)/S} and the trivialisation of VS11/smooth-base-dualizing-trivialization.

*Hypotheses.*

- S is a decent v-stack; Λ is a commutative ring with nΛ = 0 for an integer n prime to p.
- π and Δ_{T/S} are cohomologically smooth; A_i is ULA over S.

*Construction or proof.*

1. Set 𝔛_i = (X_i → T, A_i, Λ_T) in BCoCorr_S; each is dualizable with dual (X_i → T, 𝔻_{X_i/S}A_i, K_{T/S}), the base (T, Λ_T) being dualizable by VS11/smooth-base-dualizing-trivialization.
2. 𝔛 = 𝔛₁ ⊠_𝔗 𝔛₂ is dualizable with coev and ev obtained from those of 𝔛₁, 𝔗, 𝔛₂ through the monoidality isomorphism (VS11/based-fibre-product-coherence); hence 𝔖(𝔛) = (X₁ ×_T X₂, A₁ ⊠_T A₂) is dualizable, i.e. ULA (VS9/dualizable-iff-ula).
3. The functoriality 2-isomorphism identifies tr(1_𝔛) with tr(1_{𝔛₁}) ⊠_{tr(1_𝔗)} tr(1_{𝔛₂}); unwinding (4.5.7) the section is the image of cc(A₁) ⊗ cc(A₂) under κ_{In_S(T)/S} followed by the inverse of cc_{T/S}(Λ_T) (HKW22 proof of Theorem 4.5.3, with the misprint In_S(T₁) corrected to In_S(T)).

*Source.* Hansen–Kaletha–Weinstein, Theorem 4.5.3, equation (4.5.2) and proof, pp. 36–41: States and proves the Künneth formula for characteristic classes over a base T with smooth structure map and diagonal, through based cohomological correspondences.

*Needs:* Layer VS11 *based-fibre-product-coherence*; Layer VS11 *based-cohomological-correspondences*; Layer VS11 *smooth-base-dualizing-trivialization*; Layer VS11 *modified-kunneth-map*; Layer VS9 *dualizable-iff-ula*; Layer VS9 *inertia-and-characteristic-class*; Layer VS9 *trace-functoriality*.

**Checks.**

- For T = S, cc_{X₁/S}(A₁) ⊠_S cc_{X₂/S}(A₂) = cc_{X₁×_SX₂/S}(A₁ ⊠_S A₂), the analogue of tr(A ⊗ B) = tr(A)tr(B).
- For X₁ = X₂ = T and A_i = Λ, both sides are cc_{T/S}(Λ_T).

<a id="VS11-inertia-of-quotient-stack"></a>

### VS11.10 The inertia stack of a quotient stack (*inertia-of-quotient-stack*, theorem)

Let X be a nice diamond over S with an action α : X ×_S G → X of a cohomologically smooth S-group diamond G, and Y = [X/G]. For the correspondence c = (pr_X, α) : X ×_S G → X ×_S X, Fix(c) = {(x, g) : g(x) = x} is G-stable for h·(x, g) = (h(x), hgh^{-1}) and In_S(Y) ≅ [Fix(c)/G]; the map In_S(Y) → In_S([S/G]) ≅ [G//G] is the quotient of the projection Fix(c) → G, and the square Fix(c̃) → G over In_S(Y) → [G//G] is Cartesian, where c̃ = (id, α̃) on X_G = X ×_S G over G, α̃(x, g) = (g(x), g), Fix(c̃) ≅ Fix(c), and the fibre of Fix(c̃) over g ∈ G(S) is Fix(g).

*Hypotheses.*

- S is a decent v-stack; Λ is a commutative ring with nΛ = 0 for an integer n prime to p.
- X is a nice diamond over S; G is a cohomologically smooth S-group diamond acting on X.

*Construction or proof.*

1. Y is decent and fine over S (VS6/decent-fibre-products, VS6/fine-permanence; [X/G] → [S/G] is representable in nice diamonds).
2. Unwind In_S(Y) = Y ×_{Y ×_S Y} Y on the G-torsor X → Y, as for classifying stacks (VS11/inertia-of-classifying-stack).
3. Fix(c̃) is the fibre product of the graph of α̃ with the diagonal of X_G over G, which is Fix(c).

*Source.* Hansen–Kaletha–Weinstein, §4.6, pp. 41–42: Presents In_S([X/G]) as [Fix(c)/G], the map to [G//G], the correspondence c̃ over G with Fix(c̃) ≅ Fix(c), its fibres Fix(g), and the Cartesian square used for (4.6.1).

*Needs:* Layer VS9 *inertia-and-characteristic-class*; Layer VS11 *inertia-of-classifying-stack*; Layer VS6 *classifying-stack-of-group-diamond*; Layer VS6 *decent-fibre-products*; Layer VS6 *fine-permanence*.

**Checks.**

- For X = S, In_S([S/G]) = [G//G].
- For G acting trivially, In_S([X/G]) = X × [G//G].

<a id="VS11-universal-local-term"></a>

### VS11.11 The universal local term of a group action (*universal-local-term*, construction)

For A ∈ D_ét([X/G], Λ) ULA over S, A_{X_G} = A|_{X_G} is ULA over G, and the G-equivariance of A gives ũ : A_{X_G} → α̃^*A_{X_G} = α̃^!A_{X_G} (α̃ is an isomorphism), so (c̃, ũ) is an endomorphism of the dualizable object (X_G, A_{X_G}) of CoCorr_G. Its trace tr_{c̃}(ũ, A_{X_G}) ∈ H^0(Fix(c̃), K_{Fix(c̃)/G}) is the universal local term: for every g ∈ G(S), restriction along g carries it to tr(g, u_g) ∈ H^0(Fix(g), K_{Fix(g)/S}), where u_g : A_X → g^*A_X is the equivariance isomorphism at g.

*Hypotheses.*

- S is a decent v-stack; Λ is a commutative ring with nΛ = 0 for an integer n prime to p.
- X, G as in VS11/inertia-of-quotient-stack; A is ULA over S.

*Construction or proof.*

1. A_X is ULA over S because G → S is smooth (parent VS1/ula-descent-and-smooth-locality); A_{X_G} is ULA over G by base change.
2. α̃ is an automorphism of X_G over G, so α̃^* ≅ α̃^! and (c̃, ũ) is a 1-morphism of CoCorr_G; this is why one works over the base G (HKW22 p. 41).
3. Restriction to g ∈ G(S) is the base change of cohomological correspondences along g : S → G (VS10/base-change-of-cohomological-correspondences), which preserves traces.

*Source.* Hansen–Kaletha–Weinstein, §4.6, pp. 41–42: Constructs the endomorphism (c̃, ũ) of (X_G, A|_{X_G}) in CoCorr_G, calls its trace the universal local term, and states that it restricts at g ∈ G(S) to tr(g, u_g).

*Needs:* Layer VS11 *inertia-of-quotient-stack*; Layer VS9 *trace-in-cohomological-correspondences*; Layer VS9 *cohomological-correspondence-bicategory*; Layer VS10 *base-change-of-cohomological-correspondences*; VStackSheavesAndLisseCategories VS1 *ula-descent-and-smooth-locality*; Layer VS9 *dualizable-iff-ula*.

*Uses.*

- HKW22 Theorem 4.6.1, p. 42: compared with the characteristic class of A on [X/G].
- HKW22 §5.4, Corollary 5.4.2, p. 50: local terms of Satake sheaves at fixed points of strongly regular elements are independent of g.

*API.*

- `universalLocalTerm` (data): tr_{c̃}(ũ, A_{X_G}) ∈ H^0(Fix(c̃), K_{Fix(c̃)/G}).
- `universalLocalTerm_restrict` (characterisation): Its restriction along g ∈ G(S) is tr(g, u_g).
- `universalLocalTerm_additive` (relation): Additive in distinguished triangles of G-equivariant ULA objects.
- `universalLocalTerm_one` (simp): Its restriction along the identity section is cc_{X/S}(A_X).

**Checks.**

- `universalLocalTerm_trivialAction` (degenerate): For G acting trivially on X and A pulled back from X with its trivial equivariant structure, Fix(c̃) = X_G and the universal local term is the pullback of cc_{X/S}(A_X) along X_G → X.
- `universalLocalTerm_finite` (computation): For G = Z/2 acting on X = {a, b}_S by swapping and A = Λ, the universal local term is supported over the identity, with value 1 at (a, 1) and (b, 1).
- `universalLocalTerm_restrict_identity` (characterisation): Restricting along 1 ∈ G(S) gives cc_{X/S}(A_X).
- `universalLocalTerm_not_over_S` (non-example): The pair (pr_X, α) with the equivariance isomorphism is not an endomorphism in CoCorr_S, since α^* ≠ α^!; only over G is the trace defined.

<a id="VS11-characteristic-class-of-quotient-is-universal-local-term"></a>

### VS11.12 Characteristic classes on [X/G] are universal local terms (*characteristic-class-of-quotient-is-universal-local-term*, theorem)

With notation as above, let ι : H^0(In_S(Y), K_{In_S(Y)/S}) → H^0(Fix(c̃), K_{Fix(c̃)/G}) be the composite of the isomorphism K_{In_S(Y)/[G//G]} ≅ p^!Λ ≅ p^!K_{[G//G]/S} ≅ K_{In_S(Y)/S} (from the trivialisation of VS11/smooth-base-dualizing-trivialization for T = [S/G]) with the pullback (4.6.1) along the Cartesian square of VS11/inertia-of-quotient-stack. Then ι(cc_{Y/S}(A)) = tr_{c̃}(ũ, A_{X_G}).

*Hypotheses.*

- S is a decent v-stack; Λ is a commutative ring with nΛ = 0 for an integer n prime to p.
- X, G, A as in VS11/universal-local-term.

*Construction or proof.*

1. Introduce 𝔗 = ([S/G], Λ), 𝔜 = (Y → [S/G], A, Λ) in BCoCorr_S, 𝔛_G = (X_G, A_{X_G}) in CoCorr_G and α = (c̃, ũ); add 𝔊 = (G → S, Λ_G, Λ_S), 𝔊′ = (G → [S/G] ×_S [S/G], Λ_G, Λ ⊠ K_{[S/G]/S}) with morphisms coev_G, ev_G and the automorphism α₀ from (x, g, h) ↦ (x, gx, h).
2. tr_G = ev_G ∘ α₀ ∘ coev_G is an endomorphism of 𝔊 over tr(id_T) whose middle map sends g to its conjugacy class.
3. The functoriality of ⊠ (VS11/based-fibre-product-coherence) gives a 2-isomorphism 𝔖(cc_{Y/S}(A) ⊠_{cc_{[S/G]/S}(Λ)} tr_G(α₀)) ≅ F(tr(α)), F : CoCorr_G → CoCorr_S forgetting the base (HKW22 (4.6.4)); on sections this is the claimed equality (HKW22 proof of Theorem 4.6.1).

*Source.* Hansen–Kaletha–Weinstein, Theorem 4.6.1, equations (4.6.1)–(4.6.4) and proof, pp. 42–43: Proves that the characteristic class of A on [X/G], transported by ι, is the universal local term, using based cohomological correspondences and the functoriality of fibre products.

*Needs:* Layer VS11 *universal-local-term*; Layer VS11 *inertia-of-quotient-stack*; Layer VS11 *smooth-base-dualizing-trivialization*; Layer VS11 *based-cohomological-correspondences*; Layer VS11 *based-fibre-product-coherence*; Layer VS9 *inertia-and-characteristic-class*.

**Checks.**

- For X = S, the theorem identifies cc_{[S/G]/S}(Λ) with the canonical trivialisation.
- Restricting to g ∈ G(S) gives the local terms tr(g, u_g) from the characteristic class on [X/G].

<a id="VS11-isolated-fixed-point-local-term-function"></a>

### VS11.13 On an étale locus of fixed points the characteristic class is the local-term function (*isolated-fixed-point-local-term-function*, theorem)

Let U ⊂ G be an open conjugation-invariant subset and In_S([X/G])_U the preimage of [U//G]. Assume Fix(c̃)_U → U is étale (for instance, the fixed points vary locally constantly over U, as for strongly regular elements acting on affine Grassmannians). Then In_S([X/G])_U → [U//G] is étale, K_{In_S([X/G])_U/S} ≅ Λ canonically, and cc_{[X/G]/S}(A) restricted over U is the continuous function (x, g) ↦ loc_x(g, A) on {(x, g) ∈ X ×_S U : g(x) = x}.

*Hypotheses.*

- S is a decent v-stack; Λ is a commutative ring with nΛ = 0 for an integer n prime to p.
- X, G, A as in VS11/universal-local-term; U ⊂ G open and conjugation invariant; Fix(c̃)_U → U is étale.
- The étaleness hypothesis replaces the source's assumption that elements of U have only isolated fixed points, which does not imply it (sourceIssues).

*Construction or proof.*

1. Étaleness descends along the smooth surjection U → [U//G] from the Cartesian square of VS11/inertia-of-quotient-stack.
2. K_{[U//G]/S} ≅ Λ canonically by VS11/smooth-base-dualizing-trivialization (restricted to the open [U//G] by VS9/characteristic-class-open-restriction), and étale pullback preserves it.
3. By VS11/characteristic-class-of-quotient-is-universal-local-term and VS11/universal-local-term, the restriction at g ∈ U(S) is tr(g, u_g), whose value at an isolated fixed point x is loc_x(g, A) (VS10/local-terms).

*Source.* Hansen–Kaletha–Weinstein, §4.6, closing remark, p. 44: States that over a conjugation-invariant open U whose elements have only isolated fixed points, the inertia is étale over [U//G], the dualizing complex is trivial and cc is the local-term function; étaleness is asserted without proof and fails in general (sourceIssues). Hansen–Kaletha–Weinstein, Proposition 5.4.1 and Corollary 5.4.2, p. 50: For the positive loop group acting on Schubert cells and strongly regular elements, identifies the inertia explicitly, which provides the étaleness in the application.

*Needs:* Layer VS11 *characteristic-class-of-quotient-is-universal-local-term*; Layer VS11 *universal-local-term*; Layer VS11 *inertia-of-quotient-stack*; Layer VS11 *smooth-base-dualizing-trivialization*; Layer VS9 *characteristic-class-open-restriction*; Layer VS10 *local-terms*.

**Checks.**

- For G a smooth group acting on P¹ with U the hyperbolic elements (two distinct fixed points), the function is identically 1 for A = Λ.
- Counterexample to the source's hypothesis: for the smooth group of matrices [[a, b], [0, 1]] (a ∈ 1 + pO, b ∈ O) over C acting on P¹ and U = G ∖ {1}, every element of U has isolated fixed points, but the reduced fixed locus over U is two sections meeting along a = 1, not étale over U.

### Examples

- For G = Z/2, Λ = Z[1/2], M the sign representation and μ counting measure, tr.dist(M)(1_{{1}} ⊗ μ) = 1 and tr.dist(M)(1_{{σ}} ⊗ μ) = −1.
- For G = Z_p, M = Λ trivial and μ normalised on Z_p, tr.dist(Λ)(h ⊗ μ) = ∫ h dμ.
- For S = T = Spd C, U = [S/G_S] with G = Z_p and Y_i = U, κ_{U/S} : K_{U/S} ⊗ K_{U/S} → K_{U/S} ⊗ K_{U/S} is an isomorphism of free rank-one twists by Haar(Z_p, Λ)^∗.
- For T = S and B = Λ, 𝔛₁ ⊠_𝔗 𝔛₂ = (X₁ ×_S X₂, A₁ ⊠_S A₂), the tensor product of CoCorr_S.
- For G = Z/2 acting on X = {a, b}_S by swapping and A = Λ, the universal local term is supported over the identity, with value 1 at (a, 1) and (b, 1).

### Dependencies

This layer uses `VStackSheavesAndLisseCategoriesPartII:VS8`, `VStackSheavesAndLisseCategoriesPartII:VS9`, `VStackSheavesAndLisseCategoriesPartII:VS10`, `VStackSheavesAndLisseCategories:VS1`, `VStackSheavesAndLisseCategories:VS5`, `SmoothRepresentationsOfLocalGroups:SR.0`, `SmoothRepresentationsOfLocalGroups:SR.1`.

## Corrections to the sources

The statements above use corrected versions of the following points of the sources. Each is described in our own words at its locator.

- **Hansen–Kaletha–Weinstein, §4.6, closing remark, p. 44 (published version; the same in arXiv v4)** (error). The source asserts that if every element of a conjugation-invariant open U ⊂ G has only isolated fixed points on X, then the restricted inertia In_S([X/G])_U is étale over [U//G], so its dualizing complex is canonically trivial and the characteristic class is the function (x, g) ↦ loc_x(g, A). Correction: Add the hypothesis that the fixed locus Fix(c̃)_U → U is étale (equivalently that In_S([X/G])_U → [U//G] is étale); the conclusion then holds. In the paper's application (§5.4) this étaleness is supplied by the explicit description of the inertia in Proposition 5.4.1. Reason: Let G be the smooth rigid group of matrices [[a, b], [0, 1]] with a ∈ 1 + pO_C, b ∈ O_C acting on P¹ over C, and U = G ∖ {1}. Elements with a ≠ 1 fix ∞ and b/(1 − a); elements with a = 1, b ≠ 0 fix only ∞. All fixed points are isolated, but the reduced fixed locus over U is two sections of P¹ × U → U meeting along a = 1, a double cover branched there, not étale over U; for A = Λ the local term at the parabolic fixed point is 2 while nearby hyperbolic elements have two fixed points with local term 1.
- **Hansen–Kaletha–Weinstein, Theorem 4.1.8, p. 24 (published version; the same in arXiv v4)** (gap). The source attributes to Gulotta–Hansen–Weinstein Theorem 1.4 the properties (P1)–(P5), (BC1)–(BC2) for fine maps and a pseudo-natural isomorphism Rf_! ≅ Rf_* on proper fine maps. Correction: Gulotta–Hansen–Weinstein Theorem 1.4 (arXiv v1, the public version) gives agreement with Scholze, pseudo-functoriality, the projection formula, proper base change and the right adjoint. (P4), (P5) and (BC2) follow formally (VS7/fine-six-functor-identities). The proper comparison holds for proper maps representable in locally spatial diamonds, since proper maps of v-stacks are 0-truncated (Scholze Definition 10.7(iii) and Remark 10.8) and Gulotta–Hansen–Weinstein's functor agrees with Scholze's there; for a general proper fine map the representability is not established (gap VS-PII/G-lsep-representability), and the plan restricts to proper nice maps, which covers every use in the paper. Reason: Comparison of HKW22 Theorem 4.1.8 with GHW22 Theorem 1.4 (pp. 3–4). For a stacky proper map such as [S/G] → S with G finite of order divisible by ℓ, Rf_! is group homology and Rf_* group cohomology, which differ; such maps are excluded only because Scholze's proper maps are 0-truncated.
- **Hansen–Kaletha–Weinstein, Definition 4.1.7, p. 23; footnote 4, p. 28; Example 4.2.5, p. 27; paragraph after Theorem 4.1.8, p. 24** (misprint). The source cites [GHW22, Definition 4.3], [GHW22, Definition 4.1] (strictly surjective), [GHW22, Proposition 4.10], [GHW22, Proposition 4.11] and [GHW22, Proposition 4.17], and defines charts as strictly surjective and locally compactifiable of finite dim.trg. Correction: In arXiv:2202.12467v1, the only public version, these are Definition 4.1 (representability in locally separated locally spatial diamonds), Definition 1.1 (decent v-stacks, with surjective charts that are locally separated and cohomologically smooth), Proposition 4.8 (iii) and (i) (cancellation and composition of fine maps), Proposition 4.8 (iv) with Proposition 4.5, and Proposition 4.14 (intrinsic smoothness). The plan follows v1's definitions. Reason: The cited numbers do not exist or point to other statements in arXiv v1; the content matches the statements listed.
- **Hansen–Kaletha–Weinstein, Example 4.1.1, p. 22 (published version; the same in arXiv v4)** (error). The source identifies the morphisms [S/G] → [S/H] with S-homomorphisms G → H. Correction: Morphisms correspond to H-torsors on S with a commuting G-action; homomorphisms arise after choosing a trivialisation, and the conjugation description of 2-morphisms holds for maps induced by specified homomorphisms (VS6/classifying-stack-of-group-diamond). Reason: For S = Spd Q_p, G = 1 and H the constant group Z/2, the unramified quadratic extension gives a nontrivial H-torsor, hence a map B1 → BH not induced by a homomorphism.
- **Hansen–Kaletha–Weinstein, Example 4.3.10, p. 33 (published version; the same in arXiv v4)** (error). The source applies Theorem 4.3.8 to an endomorphism over an arbitrary correspondence Y → X ×_S X of a proper nice diamond X over Spd C, assuming only X proper. Correction: Also require Y → S proper (equivalently c₁ proper, X being proper), so that p : Y → S is a proper map as Theorem 4.3.8 needs; for automorphisms Y = X this is automatic (VS10/lefschetz-for-proper-diamonds). Reason: Theorem 4.3.8 needs p : C → C′ = S proper; without it neither the pushed endomorphism nor the integral over Fix(c) is defined.
- **Hansen–Kaletha–Weinstein, Definition 4.3.4, tensor product of 1-morphisms, p. 30** (misprint). The composite defining (c, u) ⊗ (d, v) ends in (c₂ ×_S d₂)^!(A₂ ⊠ A′₂). Correction: The target is (c₂ ×_S d₂)^!(A′₁ ⊠_S A′₂). Reason: The previous term is c₂^!A′₁ ⊠_S d₂^!A′₂ and the Künneth map preserves the sheaves.
- **Hansen–Kaletha–Weinstein, Proof of Theorem 4.5.3, p. 41** (misprint). The source writes the fixed locus of the composite as In_S(X₁) ×_{In_S(T₁)} In_S(X₂). Correction: In_S(X₁) ×_{In_S(T)} In_S(X₂). Reason: There is a single base T in the theorem.
- **Hansen–Kaletha–Weinstein, Proof of Lemma B.1.1, pp. 72–73** (misprint). The source uses an isomorphism 𝔪^{m−1}Λ ≅ κ and applies induction to 𝔪M as a Λ/𝔪^{m−1}-module. Correction: 𝔪^{k−1}Λ ≅ κ, and induction applies to 𝔪M as an R/𝔪^{k−1}-module. Reason: The lemma's exponent is k (Λ = R/𝔪^k); m is undefined.
- **Hansen–Kaletha–Weinstein, §5.3, p. 48** (misprint). The source refers to the description of the trace map Hom(c₁^*F, Rc₂^!F) → H^0(Fix(c), K_{Fix(c)/S}) as the discussion immediately before Definition 4.3.5. Correction: The discussion immediately before Definition 4.3.6 (pp. 31–32); 4.3.5 is a proposition. Reason: Numbering of §4.3 in the published version and in arXiv v4.
- **Hansen–Kaletha–Weinstein, Equations (4.5.8)–(4.5.9) and the sentence after them, p. 40** (gap). The source states that the fibre product over a base is functorial and monoidal up to 2-isomorphism and that the details are straightforward but tedious, giving no proof. Correction: The coherence must be proved; VS11/based-fibre-product-coherence plans it from the compatibility of Künneth maps with base change and of the modified Künneth map with composition. Reason: Theorems 4.5.3 and 4.6.1 rest on these 2-isomorphisms.

## Open inputs

- **Liu–Zheng enhanced operation maps and DESCENT have no owner.** Gulotta–Hansen–Weinstein build the stacky exceptional functors from Liu–Zheng's enhanced operation maps δ*_{2,{2}}(C^∐)^cart_{F,all} → Cat_∞ (Liu–Zheng, Enhanced six operations and base change theorem for higher Artin stacks, arXiv:1211.5948, §§1, 3–4), their partial adjoint theorem (Proposition 1.4.4 there), the gluing of restricted nerves (Liu–Zheng, Gluing restricted nerves of ∞-categories, arXiv:1211.5294, Theorem 5.4 and Corollary 0.4) and the DESCENT extension theorem (arXiv:1211.5948, Theorem 4.1.8(1); Gulotta–Hansen–Weinstein Theorem 4.9). EnhancedDerivedSheaves E3 owns only the coherent ringed-topos diagrams of §2 of the first paper; no layer of the atlas plans the rest. These are general ∞-categorical statements needed also by ℓ-adic sheaf theory on Artin stacks (the proposed stacks Part II of EtaleDualityAndPerverseSheaves). Restructure proposal 2 places them in EnhancedDerivedSheaves, Part II. The Liu–Zheng papers were read here only as cited by Gulotta–Hansen–Weinstein. Needed by: Layer VS7 *enhanced-operations-for-qcqs-v-sheaves*, Layer VS7 *fine-shriek-functors*.
- **Are proper fine maps of decent v-stacks representable?.** Hansen–Kaletha–Weinstein Theorem 4.1.8 asserts Rf_! ≅ Rf_* for every proper fine map of decent v-stacks. Proper maps are 0-truncated (Scholze Definitions 10.7, 18.1), but it is not established that a proper fine map is representable in locally spatial diamonds: 0-truncated decent v-sheaves need not be diamonds (Spd Z_p), Scholze Proposition 13.4(v) reduces local spatiality to representability in diamonds plus quasiseparatedness, and Gulotta–Hansen–Weinstein Proposition 4.3(i) leaves the related representability claim as an exercise. The plan therefore takes proper 2-morphisms and proper pushforwards to be proper nice (proper and representable in locally spatial diamonds), which covers every use in Hansen–Kaletha–Weinstein; extending VS6–VS10 to all proper fine maps needs this representability. Needed by: Layer VS6 *proper-nice-maps*.

## Boundaries with neighbouring roadmaps

- The generic prefix of the trace formalism (dualizable objects and traces in symmetric monoidal 2-categories, their functoriality along right-adjointable morphisms, the symmetric monoidal Grothendieck construction; Lu–Zheng §1) is needed both here and by the relative-traces continuation of EtaleDualityAndPerverseSheaves proposed by the Abe and Yang–Zhao extractions (PAPER-ABE-25 items A01–A03), whose briefs say it should have one home. That continuation does not exist yet (both extractions are under revision), so the prefix is planned here as VS9/dualizable-object-and-trace, VS9/trace-functoriality and VS9/symmetric-monoidal-grothendieck-construction, on Mathlib's ExactPairing and Bicategory carriers, with no v-stack content. Keep these three nodes as the single owner of the generic prefix. When EtaleDualityAndPerverseSheavesPartIIRelativeTraces is designed, it imports them and plans only the scheme-specific correspondences, the Lu–Zheng Noetherian ULA criterion and base change. If the maintainer prefers a category-theory home, move the three nodes there unchanged and point both roadmaps at it.
- Liu–Zheng's enhanced operation maps, multisimplicial nerves, partial adjoints, gluing of restricted nerves and the DESCENT extension theorem (gap VS-PII/G-liu-zheng) are general ∞-category theory. EnhancedDerivedSheaves E3 cites Liu–Zheng §2 only. Add 'Enhanced derived categories of sheaves, Part II: enhanced operation maps and DESCENT' with EnhancedDerivedSheaves as first prerequisite, owning Liu–Zheng arXiv:1211.5948 §§1, 3–4 and arXiv:1211.5294; this roadmap's VS7 and the proposed stacks Part II of EtaleDualityAndPerverseSheaves import it.
- The Hansen–Kaletha–Weinstein route HeckeStacksAndLocalShtukasKottwitzPartII (Hecke transfer, local terms of Satake sheaves, the Kottwitz conjecture) consumes VS9–VS11; it is not planned here. When that Part II is designed, it imports VS10/local-terms, VS10/local-terms-base-change, VS10/local-terms-perfect-schemes, VS11/trace-distribution, VS11/kunneth-for-characteristic-classes and VS11/characteristic-class-of-quotient-is-universal-local-term.

## Downstream consumers

- The computation of local terms of Satake sheaves on the B_dR-affine Grassmannian and the Kottwitz conjecture for local shtuka spaces (Hansen–Kaletha–Weinstein §§5–6) use VS10 *local-terms*, *local-terms-base-change*, *local-terms-perfect-schemes* and VS11 *trace-distribution*, *kunneth-for-characteristic-classes*, *characteristic-class-of-quotient-is-universal-local-term*.
- Hecke operators and excursion operators on Bun_G with stacky Hecke correspondences use the exceptional functors of VS7 and the cohomological correspondences of VS9.
- The relative-traces continuation of *Étale duality, cycle classes and perverse sheaves* imports the generic trace formalism of VS9 (*dualizable-object-and-trace*, *trace-functoriality*, *symmetric-monoidal-grothendieck-construction*).

## Suggested Lean file

The suggested file [VStackSheavesAndLisseCategoriesPartII.lean](../suggested/VStackSheavesAndLisseCategoriesPartII.lean) states what has carriers at the pinned Mathlib and Tau Ceti: the categorical trace of an endomorphism of a dualizable object in a symmetric monoidal category (on Mathlib's `ExactPairing`) with cyclicity, unit, multiplicativity and independence of the dual, and its comparison with `LinearMap.trace` in `FGModuleCat`; smooth modules over `LocallyConstant T Λ` with their smooth vectors; and the reflexivity criterion over R/𝔪^k. Everything about v-stacks is stated in this document only, because small v-stacks are not yet in the libraries. The file elaborates against Mathlib `082e2d3` and Tau Ceti `f790474` with proof placeholders as its only warnings.

## References

- David Hansen, Tasho Kaletha and Jared Weinstein, *On the Kottwitz conjecture for local shtuka spaces*. Forum of Mathematics, Pi 10 (2022), e13, 79 pp., published version (open access, CC BY); numbering and pages are those of the published article. Cross-checked against arXiv:1709.06651v4 (17 March 2022), whose section and statement numbering agree. https://doi.org/10.1017/fmp.2022.7
- Daniel Gulotta, David Hansen and Jared Weinstein, *An enhanced six-functor formalism for diamonds and v-stacks*. arXiv:2202.12467v1 (25 February 2022), the only public version; its numbering differs from the numbering Hansen–Kaletha–Weinstein cite (see sourceIssues). https://arxiv.org/abs/2202.12467v1
- Qing Lu and Weizhe Zheng, *Categorical traces and a relative Lefschetz–Verdier formula*. Forum of Mathematics, Sigma 10 (2022), e10; read in arXiv:2005.08522v4 (9 January 2022). Locators give the arXiv v4 numbering and PDF pages. https://arxiv.org/abs/2005.08522v4
- Peter Scholze, *Étale cohomology of diamonds*. arXiv:1709.07343v3; locators give its numbering and printed pages. https://arxiv.org/abs/1709.07343v3
- Laurent Fargues and Peter Scholze, *Geometrization of the local Langlands correspondence*. arXiv:2102.13459v4 (27 November 2024); locators give its numbering and printed pages (which equal the PDF pages). https://arxiv.org/abs/2102.13459v4
- Yifeng Liu and Weizhe Zheng, *Enhanced six operations and base change theorem for higher Artin stacks*, arXiv:1211.5948, and *Gluing restricted nerves of ∞-categories*, arXiv:1211.5294 (cited through Gulotta–Hansen–Weinstein).

