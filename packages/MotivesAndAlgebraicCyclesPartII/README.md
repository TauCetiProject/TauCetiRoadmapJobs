# Roadmap: algebraic cycles, pure and mixed motives, Part II: Berkovich motives

**Summary.** This roadmap builds integral étale motivic sheaves on Banach rings, archimedean and nonarchimedean alike, and on small arc-stacks, following Scholze's *Berkovich motives*. Its inputs are the Berkovich spectrum and the Banach-ring toolkit of TropicalAndBerkovichArithmetic, the enhanced sheaf theory and higher algebra of EnhancedDerivedSheaves, algebraic K-theory from GeneralAlgebraicKTheory and its successors, and the diamond formalism. It constructs the arc-topology on Banach rings, finitary derived arc-sheaves, the ball-invariant subcategory of effective motives, the Tate object, transfers and the stable category `Dmot(X)` obtained by inverting the Tate twist. The end theorems are: the cancellation theorem over every small arc-stack; finitarity of motivic K-theory and its canonical rational Adams decomposition `Kmot ⊗ ℚ ≃ ⊕_{n≥0} ℚ(n)[2n]`; the explicit description of motivic K-theory on strictly totally disconnected rings by the cofibre of the K-theory of the ideal of topologically nilpotent elements; the torsion and tilting comparisons; the six-functor formalism with proper base change; rigidity of `Dmot` over analytic bases of finite cohomological dimension; the equivalence of `Dmot(k)` with integral étale motives over an algebraically closed discrete field; and, over the completed algebraic closure `C` of `k((T))` with `k = 𝔽̄_p`, the nearby-cycle equivalence of `Dmot(C)` with motives over `k` carrying a locally nilpotent monodromy operator. A final layer compares prime-to-`p` torsion motives in characteristic `p` with overconvergent étale sheaves on v-stacks.

The base roadmap MotivesAndAlgebraicCycles stops at Nisnevich motives over fields: finite correspondences, Nisnevich sheaves with transfers, effective and geometric motives, cancellation over perfect fields and the higher-Chow comparison (its §§4.1–4.18). It contains no étale motives, no analytic geometry and no arc-topology. This Part II continues it in two directions: it constructs the presentable category of integral étale motives over a field (Layer 10), and it builds the whole Berkovich theory (Layers 0–9, 11, 12) over Banach rings.

## Scope and ownership

This roadmap owns: the arc-topology on Banach rings, small arc-stacks and their strictly totally disconnected basis (Layer 0); finitary derived arc-sheaves, finitary maps, open immersions, cohomological dimension and finitary proper base change (Layer 1); effective motivic sheaves, the ball localization, free motivic sheaves and their left adjoints (Layer 2); one-units, the reduced multiplicative group, the Tate object and its compactness (Layer 3); Banach presheaves with transfers, the curve and line-domain lemmas, the explicit free motive, the torsion and tilting comparisons and the integral homotopy t-structure (Layer 4); cancellation and projective cells (Layer 5); motivic K-theory and its Adams decomposition (Layer 6); the one-unit K-cofibre and its identifications (Layer 7); stable motives, projective-line duality and six operations (Layer 8); rigidity, quasi-pro-étale monadicity, weak Künneth and pointwise Artin–Tate motives (Layer 9); integral étale motives over a field and their comparison with Berkovich motives over algebraically closed discrete fields (Layer 10); nearby cycles, the motivic Galois stacks over `𝔽̄_p` and the monodromy equivalence (Layer 11); and the comparison of arc-stacks with partially proper v-stacks and of torsion motives with overconvergent étale sheaves (Layer 12).

It leaves to named roadmaps:

- The Berkovich spectrum of a seminormed ring, its compactness and nonemptiness, completed residue fields, contractive colimits and completed tensor products, uniform Gelfand representations, idempotents and clopen subsets, archimedean Banach fields, affinoid algebras and analytic spaces, the Berkovich line, its types of points, hyperbolic metric and integral slopes, belong to **TropicalAndBerkovichArithmetic**, Layers 0–1 and §3.7.
- Enhanced sheaves of spaces and of complexes, hypercompleteness, Postnikov towers and the inverse-limit theory of replete topoi belong to **EnhancedDerivedSheaves**, Layers E1–E3 and E2; stable, symmetric monoidal and presentable ∞-categories, formal inversion of an object, Barr–Beck–Lurie, descendable algebras, compact morphisms, dualizable and rigid categories, spectra and animation belong to its Layers E0, E5:abstract, E5:presentability, E5:descent, E5:spectra-comparison and E5:animation.
- The abstract six-functor construction principle, its extension to sheaves, cohomologically smooth, étale and proper maps, and derived quasi-coherent categories of algebraic stacks with the comodule description of classifying stacks belong to **AnalyticStacks**, §§0.4–0.6, 0.9–0.10 and 1.1–1.5. That roadmap assigns to this one the identification of representations of the stacks `MG_k` and `MG_C` with monodromy operators (§11.6 here).
- Connective, nonconnective and nonunital K-theory of rings, Suslin's excision criterion, filtered continuity and Quillen's finite-field computation belong to **GeneralAlgebraicKTheory**, §§3.2, 8.3, 8.10, 10.10, 13.4–13.5 and 13.8c; the E∞ group-completion model and multiplicativity belong to **GeneralAlgebraicKTheoryPartII**, KII.1 and KII.4; K-theory with supports, Thomason–Trobaugh excision, Adams operations and their weight shifts belong to **SchemeKTheoryOperations**, Layers 3 and 6; henselian rigidity and the K-theory of perfect fields belong to **KTheoryFiniteLocalFields**, §§1.5–1.6 and 2.1; the continuous K-theory of almost modules belongs to **RefinedTraceMethods**, §4.20.
- The ordinary Picard scheme, Jacobian and abelian-variety multiplication belong to **JacobianChallenge**, Layers A, B, D and E. The generalized Jacobian of a reduced boundary in characteristic zero is **AnabelianGeometryAndNonabelianChabauty**, target "Generalized Jacobian of a reduced boundary"; §4.3 here keeps a variant that differs in one clause: the ground field is algebraically closed of arbitrary characteristic and only divisibility on points is asserted.
- Perfectoid rings, tilting and almost acyclicity of `O⁺` belong to **PerfectoidSpaces**, Layers P1–P3; v-descent of functions, small v-stacks, cutoff cardinals and analytic diamondification belong to **DiamondsAndVStacks**, Layers D0, D2, D4 and D6; the étale derived category of v-stacks, partially proper maps and canonical compactification, base-field invariance and compact generation belong to **DiamondEtaleCohomology**, Layers C0, C2, C4, C6 and C9; the exceptional direct image of eligible maps and cohomological smoothness belong to **DiamondSixOperations**, Layers S2 and S4.
- Alterations with normal-crossing boundary belong to **AdicCoefficientsAndComparisons**, Layer L5. Continuous cohomology and cohomological dimension of profinite groups belong to **ProfiniteCohomology**, Layers 10–11. Tsen's theorem belongs to **SchemeAndStackFoundations**, §2.16. Finite correspondences, Nisnevich motives, cancellation over perfect fields and the higher-Chow comparison belong to **MotivesAndAlgebraicCycles**, §§4.1–4.18; the identification of rational higher Chow groups with Adams-weight pieces of K-theory belongs to **MotivicEtaleKTheory**, §2.2.
- The cohomology of the complex flag manifold uses **RepresentationTheory** (LieGroups, Layer 8: Bruhat cells), **CharacteristicClasses**, §C5 (the Euler characteristic of `G/T`) and **MorseNovikov** (the Lefschetz fixed-point formula).

The comparison of `Dmot(X)` with Ayoub's rigid-analytic motives is not a statement of this roadmap; Scholze's paper does not prove it.

## Conventions

All rings are commutative and unital. A seminormed ring is a ring with a submultiplicative seminorm satisfying the triangle inequality, `|0| = 0` and `|−1| ≤ 1`; maps are contractive ring maps; a Banach ring is a complete one (Scholze, Definitions 2.1–2.2, p. 7). Completed tensor products are the pushouts and completed filtered colimits the filtered colimits in the category of Banach rings, as in TropicalAndBerkovichArithmetic §0.16. `M(A)` is the Berkovich spectrum (TropicalAndBerkovichArithmetic §0.1) and `K(x)` the completed residue field at `x ∈ M(A)` (TropicalAndBerkovichArithmetic §0.15). A Banach field is a Banach ring whose underlying ring is a field and whose norm is multiplicative; it is discrete when its norm takes only the values 0 and 1. A geometric Banach point is a nondiscrete algebraically closed Banach field. A Banach ring is *analytic* when finitely many topologically nilpotent elements generate the unit ideal, and *uniform* when its Gelfand transform is an isometric embedding (Scholze, Definition 2.20, p. 12).

Fix a universe and, for every construction on large sites, an uncountable cutoff cardinal κ in the sense of DiamondsAndVStacks §D0.23; constructions are compatible with enlarging κ, and "small" means κ-small for some κ. `Marc(A)` is the arc-sheafification of the representable functor of `A`; the arc-site of all Banach rings is not subcanonical, so `Marc(A)(B)` is not the set of maps `A → B`. "Strict" abbreviates "strictly totally disconnected" (§0.4).

Categories of sheaves and of complexes are ∞-categories in the sense of EnhancedDerivedSheaves: `D(ℤ)` is the stable ∞-category of complexes of abelian groups and `D(X_arc, ℤ)` the enhanced derived category of abelian arc-sheaves on `X`. Every equivalence, adjunction and tensor product in this roadmap is one of ∞-categories; a homotopy category appears only where a statement says so. Shifts are cohomological: an abelian group `M` placed in degree zero gives `M[−1]` in degree one, and for a mapping spectrum `π_i Map(A, B) = Hom(A[i], B)`.

The first Tate twist is `ℤ(1) = cofib(ℤmot[∗] → ℤmot[G_m])[−1]`, using the unit section. It is `ℤ` at the complex point, the sign representation of complex conjugation at the real point, and `Ḡ_m[−1]` on the nonarchimedean locus, where `Ḡ_m = G_m/(1 + O_{<1})` (§3.2). Negative twists exist only after stabilization (Layer 8). `Kmot` is a sheaf of spectra; its rational Tate decomposition lives in the rational category. The residue-characteristic exponent at a nonarchimedean point is the characteristic `p` of the residue field when that is positive, and `p = 1` when the residue field has characteristic zero; inverting `p` and completing away from `p` always refer to this exponent. A prime `ℓ` satisfies `|ℓ| ≥ 1` at a point exactly when the point is archimedean or `ℓ` is invertible in its residue field.

The rational mapping formula over a discrete algebraically closed field is normalized by `Map(ℤmot[X](−j), ℤ)_ℚ ≃ K(X)_ℚ^{(j)}[−2j]`, that is `π_i = K_{i+2j}(X)_ℚ^{(j)}`, where `K(X)_ℚ^{(j)}` is the Adams-weight-`j` summand (§10.5; witness `X = ℙ¹`, `j = 1`).

## Exact supplier contracts

### From Mathlib

Mathlib at the pin supplies the categorical sites used as carriers of topologies: `CategoryTheory.GrothendieckTopology` (Mathlib/CategoryTheory/Sites/Grothendieck.lean), with its top, pullback and transitivity axioms, is the structure of the arc-topology on the opposite category of Banach rings (§0.2); its sheaf categories are ordinary, and every ∞-categorical sheaf category comes from EnhancedDerivedSheaves. `NormedField` (Mathlib/Analysis/Normed/Field/Basic.lean) and `IsUltrametricDist` (Mathlib/Topology/MetricSpace/Ultra/Basic.lean) are the carriers for valued fields in the one-unit calculations of §3.1. `SSet.Quasicategory` (Mathlib/AlgebraicTopology/Quasicategory/Basic.lean) is the model of ∞-categories through EnhancedDerivedSheaves. Mathlib at the pin has no Berkovich spectrum, no Banach-ring site, no stable or presentable ∞-category of sheaves and no algebraic K-theory spectrum.

### From Tau Ceti

Tau Ceti at the pin contributes no Banach-ring, motivic or K-theoretic carrier. Its comodule categories and Hopf-algebra modules enter only through AnalyticStacks §1.5.

### From TauCetiRoadmap.TropicalAndBerkovichArithmetic

Layer 0: §0.1 (Berkovich spectrum `Spectrum`), §0.7 (compactness), §0.8 (Hausdorffness), §0.12 (seminormed Banach rings and separated completion), §0.13 (nonemptiness for `|1| = 1`), §0.14 (units, spectral radius and spectral uniformization), §0.15 (completed residue fields), §0.16 (contractive colimits and completed tensor products, with the spectrum of a pushout surjecting onto the fibre product and the spectrum of a filtered colimit the inverse limit), §0.17 (affinoid algebras), §0.20 (affinoid structure sheaf and acyclicity for finite modules), §0.21–0.22 (analytic spaces and analytification), §0.24 (uniform Gelfand representation), §0.25 (idempotents and clopen subsets of `M(A)`), §0.26 (archimedean Banach fields are `ℝ` or `ℂ` with a power of the absolute value), §0.27 (uniform units), §0.32 (surjectivity detected by residue fields). Layer 1: §1.1 (Gauss points, discs and the Berkovich projective line), §1.2 (the four types of points), §1.3 (paths and hyperbolic metric), §1.6 (integral slopes of analytic units on annuli); §3.7 (slope formula and harmonicity). These are assumed with the hypotheses stated there.

What TropicalAndBerkovichArithmetic must provide (gap:affinoid-line-bundles): the one-variable Tate algebra `K⟨T⟩` over a complete nonarchimedean field is a principal ideal domain, and finite projective modules over a strictly affinoid algebra satisfy effective descent along finite affinoid coverings, so that analytic line bundles on the closed unit disc are trivial (§§0.17, 0.20).

### From TauCetiRoadmap.EnhancedDerivedSheaves

§E0.4 (stable ∞-categories), §E1.3 (the enhanced derived category of module sheaves on a site), §E2.1–E2.3 (replete topoi, derived limits, Postnikov completion and left completeness), §E2.4 (`postnikov_converges_of_finiteDimension`), §E2.6 (hypercovers and descent), §E2.7 (`spaceSheaves`, `hypercompleteSpaceSheaves`, `spacePostnikovTower`), §E3.2 (representability, adjoints and accessible localizations), §E3.4 (`cutoffRightAdjoint_compat`, `ringedDiagramDerived`, `coherentMate`), §E5:abstract.1–5 (symmetric monoidal ∞-categories, algebras and modules, monoidal localizations, stable monoidal structures and the small Verdier quotient, `barrBeckLurie`), §E5:presentability.2 (`presentableTensor`, `categoricalModuleBaseChange`, `tensorInversion`, `spectra`), §E5:presentability.3 (`indVerdierLocalization`), §E5:presentability.4 (`IsCompactMorphism`, `IsDualizablePresentable`, `dualizable_filteredColimit`, `IsTraceClass`, `IsRigid`), Layer E5:descent (`IsDescendable`, `moduleDescent`), §E5:animation.1 (`nonabelianDerived`, `animationExtension`).

What EnhancedDerivedSheaves must provide (gap:replete-postnikov): for a replete topos (one in which limits of countable towers of epimorphisms are epimorphisms), the hypercomplete ∞-topos of sheaves of spaces on it is Postnikov complete (§E2.7).

What EnhancedDerivedSheaves must provide (gap:compact-hausdorff-dimension): for a compact Hausdorff space of covering dimension at most `d`, the sheaf cohomology of every abelian sheaf vanishes above degree `d` and the ∞-topos of sheaves of spaces is Postnikov complete (§E2.4).

What EnhancedDerivedSheaves must provide (gap:animated-group-completion): free animated commutative monoids and their group completions; the Breen–Deligne resolution of the group completion of a sheaf of animated commutative monoids by classifying spaces of products of its terms; and the augmentation-ideal filtration of the group algebra of a 1-connective animated abelian group, with graded pieces of increasing connectivity and convergence (§E5:animation).

What EnhancedDerivedSheaves must provide (gap:einfty-fracture-square): the arithmetic fracture square for E∞-algebras over an E∞-ring `R`: for a prime `p`, every E∞-`R`-algebra `A` is the pullback of `A[1/p] → A^∧_p[1/p] ← A^∧_p` in E∞-`R`-algebras (§E5:spectra-comparison).

### From TauCetiRoadmap.AnalyticStacks

§0.4–0.6 (six-functor formalisms, the construction principle from a suitable decomposition `E = P ∘ I` with base change and projection formulas, and the extension theorem to sheaves and hypersheaves on a subcanonical site), §0.9–0.10 (cohomologically smooth, étale and proper maps), §1.1–1.5 (derived quasi-coherent categories of algebraic stacks in the !-topology, tensor descent along !-covers, and the identification of `D(BG)` with comodules for a flat affine group `G = Spec R` over a static ring whose counit has finite Tor amplitude).

### From TauCetiRoadmap.GeneralAlgebraicKTheory, GeneralAlgebraicKTheoryPartII and SchemeKTheoryOperations

GeneralAlgebraicKTheory §3.2 (`KSpace.ofRing`), §8.3 (`nonunitalK`), §8.10 (`AbsoluteExcision`, `absoluteExcision_iff_tor`, `TorUnital`: absolute excision in all degrees is equivalent to Tor-unitality), §10.10 (`bassSpectrum`), §13.4–13.5 (`bassSpectrum_filteredColimit`, `NonunitalBass.filteredColimit`), §13.8c (`finiteFieldKGroups`). GeneralAlgebraicKTheoryPartII KII.1/additive-k (connective K-theory as the group completion of the E∞ space of finite projective modules) and KII.4/multiplicative-k (K-theory of an E∞-ring is an E∞-ring). SchemeKTheoryOperations §3.1 (`supportKTheory`), §3.3 (localization sequences), §3.4 and §3.8 (invariance of supported K-theory under maps inducing an equivalence on derived closed fibres, including completion), §6.4 (`TauCeti.KTheory.LambdaOperations.adams` on `K_m(A)` of every commutative ring), §6.8 (Adams operations on regular schemes with `ψ^k[L] = [L^k]`), §6.11 (the weight shift `ψ^k j_* = k^c j_* ψ^k` for a regular closed immersion of pure codimension `c` with trivial conormal bundle).

What SchemeKTheoryOperations must provide (gap:kh-excision-cdh-descent): homotopy K-theory `KH(R) = |K(R ⊗ ℤ[Δ^•])|` of rings and qcqs schemes, its extension to nonunital rings, excision for arbitrary ideals, and descent for abstract blowup squares on noetherian schemes of finite Krull dimension (Layer 5).

What SchemeKTheoryOperations must provide (gap:valuation-ring-k-regularity): for a valuation ring `V`, `K(V) → K(V[T₁, …, T_n])` is an equivalence and `K_{−i}(V) = 0` for `i > 0`, so `K(V) ≃ KH(V)`; and `K(R) ≃ KH(R)` for every smooth algebra `R` over a valuation ring (Layer 5).

### From TauCetiRoadmap.KTheoryFiniteLocalFields and RefinedTraceMethods

KTheoryFiniteLocalFields §1.5 (`perfect_positiveK_uniqueDivisible`: the positive K-groups of a perfect `𝔽_p`-algebra are uniquely `p`-divisible), §1.6 (`completed`: the K-groups of `𝔽̄_p` are zero in positive even degrees and torsion in odd degrees), §2.1 (rigidity for henselian pairs with finite coefficients prime to the residue characteristic). RefinedTraceMethods §4.20 (for a flat idempotent ideal `I` of a unitization `B`, the kernel of `D(B) → D(B/I)` is the dualizable category of almost modules, its continuous K-theory is `fib(K(B) → K(B/I))`, and both depend only on `I`).

What KTheoryFiniteLocalFields must provide (gap:suslin-rigidity): for an extension `F ⊂ E` of algebraically closed fields and `n` invertible in `F`, the map `K(F; ℤ/n) → K(E; ℤ/n)` is an equivalence (§2.1).

What KTheoryFiniteLocalFields must provide (gap:padic-k-integers-oc): for a complete algebraically closed nonarchimedean field `C` of residue characteristic `p`, the map `K(O_C)^∧_p → K(C)^∧_p` is an equivalence, including `p = 2` (§6.5).

### From TauCetiRoadmap.JacobianChallenge and AnabelianGeometryAndNonabelianChabauty

JacobianChallenge Layer A (Weil and Cartier divisors, rational sections, `classGroupAddEquivLineBundleClass`), Layer B (coherent cohomology, genus, Riemann–Roch), Layer D (`pointedCurvePicard_representable`, the identity component `Pic⁰`), Layer E (`multiplication_isogeny`: for `n ≠ 0`, multiplication by `n` on an abelian variety is finite locally free and surjective). AnabelianGeometryAndNonabelianChabauty, target "Generalized Jacobian of a reduced boundary", is the characteristic-zero construction compared in §4.3.

### From TauCetiRoadmap.PerfectoidSpaces, DiamondsAndVStacks, DiamondEtaleCohomology and DiamondSixOperations

PerfectoidSpaces §P1.4 (the tilt), §§P1.19–P1.22 (untilts and marked untilts), §P1.27 (the tilting equivalence), §P2.3 (rational localization of perfectoid affinoids), §P2.7 (almost acyclicity of `O⁺` on rational coverings), §P2.12 (tilting equivalence of perfectoid spaces), §P3.20 (tilting identifies étale sites). DiamondsAndVStacks §D0.23 (`IsCutoffCardinal`), §D1.4 (strictly totally disconnected perfectoid spaces), §D2.7 (v-descent of `O` and `O⁺`, `vTopology_subcanonical`), §D4.7 (small v-sheaves and v-stacks), §D4.9 (isomorphism criteria on geometric points), §§D6.1, D6.3 (`Perf.Spd`, diamonds of Tate Huber pairs). DiamondEtaleCohomology §C0.19 (the étale topos of a strictly totally disconnected space is sheaves on `|X|`), §C0.24 (unbounded comparison), §C2.2 and §C2.12 (`Det`, `enhancedEt`), §C4.5 (`IsPartiallyProper`), §§C4.13–C4.14 (`canonicalCompactification` and its universal property), §C6.1 (base-field invariance with coefficients prime to `p`), §C9.8 (compact generation of `D_et(Y, Λ)` for spatial `Y` of bounded cohomological dimension). DiamondSixOperations §S2.4 (`lowerShriek`, `lowerShriek_baseChange`, `lowerShriek_projection`), §§S4.2–S4.3 (cohomologically smooth maps and the dualizing complex).

### From TauCetiRoadmap.MotivesAndAlgebraicCycles, MotivicEtaleKTheory and other roadmaps on main

MotivesAndAlgebraicCycles §4.1 (`FiniteCor`), §4.2 (`PST`), §4.3 (`ShNisTr`), §§4.4–4.6 (Suslin complexes, strict homotopy invariance, the effective category `DM_eff`), §4.9 (integral cancellation), §4.11 (geometric motives and stabilization), §§4.15–4.18 (motivic cohomology of smooth schemes over perfect fields as higher Chow groups). MotivicEtaleKTheory §2.2 (rational higher Chow groups as Adams-weight summands of K-theory). AdicCoefficientsAndComparisons Layer L5 (`smoothAlterationPair`). ProfiniteCohomology Layer 10 (`continuousCohomology`) and Layer 11 (`cd_p_le_of_isClosed`, `scd_p_le_cd_p_add_one`). SchemeAndStackFoundations §2.16 (Tsen's theorem). RepresentationTheory (LieGroups) Layer 8, CharacteristicClasses §C5 and MorseNovikov (Lefschetz fixed-point formula) for §6.2.

## How to read the build

Layer 0 constructs the arc-site and its strict basis, Layer 1 the finitary sheaves and their proper base change, Layer 2 the effective motivic category with its ball localization and free motives, and Layer 3 the reduced multiplicative group and the Tate object. Layer 4 develops transfers and uses them to compute free motives explicitly; it gives the torsion and tilting comparisons. Layer 5 proves cancellation and computes projective cells, and Layer 6 builds motivic K-theory and its rational Adams decomposition. From there two branches run in parallel: Layer 7 identifies motivic K-theory through the one-unit cofibre, and Layer 8 inverts the Tate twist and constructs the six operations. Layer 9 proves rigidity at geometric points and over analytic bases. Layer 10 combines rigidity with Layer 7 to compare with algebraic étale motives over discrete algebraically closed fields; Layer 11 builds nearby cycles and the monodromy equivalence on top of Layer 10; Layer 12 branches from Layers 4 and 9 to the v-stack comparison. Each target's *Needs:* line lists what its statement and proof route use, item by item.

## Layer 0: The Banach arc-site

This layer constructs the arc-topology on Banach rings, small arc-stacks, the strictly totally disconnected basis and quasi-pro-étale maps, and proves repleteness of the arc-topos together with the compact assembly of seminormed rings that the finitary theory uses.

### 0.1 Compact assembly of seminormed rings

Call a map `f : X → Y` in a presentable ∞-category *weakly compact* when every map from `Y` to a filtered colimit `colim_i Z_i`, composed with `f`, factors through some `Z_i`; this is the notion of EnhancedDerivedSheaves §E5:presentability.4 (`IsCompactMorphism`), applied without stability. Call a presentable ∞-category *compactly assembled* when filtered colimits commute with finite limits in it and it is generated under colimits by sequential colimits `colim(X₀ → X₁ → ⋯)` whose transition maps are weakly compact (Scholze, Definition 2.7 and Remark 2.8, p. 9). The lifting condition is imposed on the composite from `X`, not on `Y`, and generation is under colimits: an individual object need not have such a presentation.

API:

- If `f` is weakly compact, so are `g ∘ f` and `f ∘ h` for all composable `g`, `h`.
- In a compactly assembled ∞-category, weakly compact, compact and strongly compact maps agree (EnhancedDerivedSheaves §E5:presentability.4).
- A compactly generated presentable ∞-category in which filtered colimits commute with finite limits is compactly assembled: the identity of a compact object is weakly compact, so a compact object is the colimit of the constant sequence along its identity.

Prove that the category of seminormed rings with contractive maps is compactly assembled (Scholze, Proposition 2.9, pp. 9–10). Route: for `r > 0` let `ℤ[T]_r` be the free seminormed ring on an element of norm at most `r`; for `r′ > r` the map `ℤ[T]_{r′} → ℤ[T]_r` is weakly compact because the norm of an element of a filtered colimit is the infimum of its norms at the stages, so `ℤ[T]_r = colim_{r′ > r} ℤ[T]_{r′}` is a sequential presentation along weakly compact maps; these free rings generate under colimits, and filtered colimits commute with finite limits in seminormed rings. The assertion is not made for Banach rings: completion does not transport it.

*Needs:* TropicalAndBerkovichArithmetic §0.12 (seminormed rings) and §0.16 (contractive colimits); EnhancedDerivedSheaves §E5:presentability.4 (weakly compact maps).

**Checks.**

- The map `ℤ[T]_{r′} → ℤ[T]_r` with `r′ > r` is weakly compact, but the identity of `ℤ[T]_r` is not: in the filtered colimit of the rings `ℤ[T]_{r+1/n}`, the element `T` has norm `r` in the colimit but norm `r + 1/n > r` at every stage, so no stage receives a map from `ℤ[T]_r` lifting it.
- A presentation along identity maps does not witness compact assembly: `ℤ[T]_r` is the colimit of the constant sequence on itself, but the identity is not weakly compact (previous check), so the presentation must shrink radii `r_n ↓ r`.
- The analogous statement for Banach rings is false in the form above: a completed filtered colimit can make `|T| = r` exactly, while the stages only bound it by `r + 1/n`; Scholze's warning after Proposition 2.9 records this.

### 0.2 The arc-topology

Define the *arc-topology* on the opposite of the category of Banach rings: a family `{A → B_i}_{i∈I}` with common source covers when some finite subfamily induces a surjection `⨿_i M(B_i) → M(A)` (Scholze, Definition 3.1, p. 14). Put this structure on Mathlib's `CategoryTheory.GrothendieckTopology` through the sieves generated by covering families. For a Banach ring `A` let `Marc(A)` be the arc-sheafification of its representable presheaf. A *small arc-stack* is a sheaf of spaces on the arc-site with cutoff κ that is a small colimit of objects `Marc(A)`; the sheaf categories for different κ are identified along the fully faithful enlargement functors (Scholze, Propositions 3.2–3.3, pp. 14–15).

API:

- Covers are stable under every base change `A → A′` (the completed pushout), and composites of covers are covers; this uses that the spectrum of a completed pushout surjects onto the fibre product of spectra.
- A family covers if and only if some finite subfamily has the following lifting property: every map from `A` to a geometric Banach point `C` lifts, after replacing `C` by a geometric Banach point extending it, to some `B_i`.
- `Marc` sends completed pushouts to fibre products of sheaves and has the universal property of arc-sheafification; enlarging κ does not change `Marc(A)` on κ-small objects.

**Checks.**

- The zero ring has empty spectrum, so the empty family covers it; for a nonzero `A` the spectrum is nonempty (TropicalAndBerkovichArithmetic §0.13), so maps `A → 0` never cover.
- An infinite family that is jointly surjective on spectra but has no finite jointly surjective subfamily is not a cover; a definition by joint surjectivity alone admits it.
- The uniform completion `A → A^u` induces an isomorphism `Marc(A) ≃ Marc(A^u)` even when `A → A^u` is not an isomorphism of rings (§0.3); so `Marc(A)(B)` is not the set of contractive maps `A → B`.

*Needs:* TropicalAndBerkovichArithmetic §§0.1, 0.13, 0.15, 0.16; Mathlib `CategoryTheory.GrothendieckTopology`; EnhancedDerivedSheaves §E2.7 (sheaves of spaces on a small site) and §E3.4 (`cutoffRightAdjoint_compat`); DiamondsAndVStacks §D0.23 (cutoff cardinals).

### 0.3 Uniformization and geometric arc-covers

Prove that analytic covers are arc-covers; that uniform completion induces `Marc(A) ≃ Marc(A^u)`; that for a Banach ring `A` the map to the bounded product of the completed residue fields `K(x)`, `x ∈ M(A)`, is an arc-cover; that in characteristic `p` the uniform perfection with its rescaled norm is arc-equivalent to `A`; and that for a complex Banach algebra the Gelfand transform identifies `Marc(A)` with the compact Hausdorff space `M(A)` regarded as a condensed set, while for a real Banach algebra the same holds after base change to `ℂ` together with complex conjugation (Scholze, Examples 3.4–3.8 and Proposition 3.9, pp. 15–16). The perfection uses the norm `|x^{1/p}| = |x|^{1/p}` after uniformization; an algebraic perfection with an arbitrary norm is not meant. The bounded product of residue fields is not asserted to have algebraically closed residue fields; it becomes strict only after choosing algebraic closures (§0.5).

Route: check the geometric lifting criterion of §0.2 for each map, using that the spectral radius is unchanged by uniformization (TropicalAndBerkovichArithmetic §0.14), Gelfand–Mazur for archimedean Banach fields (TropicalAndBerkovichArithmetic §0.26) and the uniform Gelfand representation (TropicalAndBerkovichArithmetic §0.24).

*Needs:* §0.2; TropicalAndBerkovichArithmetic §§0.14, 0.15, 0.24, 0.26, 0.27.

### 0.4 Strictly totally disconnected Banach rings

Define a Banach ring `A` to be *totally disconnected* when it is analytic, uniform and `M(A)` is a profinite set, and *strictly totally disconnected* when moreover every completed residue field `K(x)` is algebraically closed (Scholze, Definition 3.10, p. 16). Every residue field of a strict ring is then a geometric Banach point: `ℂ` or an algebraically closed nondiscrete nonarchimedean field.

API:

- If `A` is strictly totally disconnected and `U ⊂ M(A)` is clopen, the corresponding factor `A_U` of `A = A_U × A_{M(A)∖U}` (TropicalAndBerkovichArithmetic §0.25) is strictly totally disconnected, and the decomposition is isometric.
- For a strict `A` and `x ∈ M(A)`, the map `A → K(x)` is surjective and `K(x)` is algebraically closed and nondiscrete.
- Finite products of strict rings, and bounded products of nondiscrete algebraically closed Banach fields, are strictly totally disconnected.

**Checks.**

- A nondiscrete complete algebraically closed field, nonarchimedean or `ℂ`, is strictly totally disconnected: its spectrum is one point and its residue field is itself.
- `ℝ` with its absolute value has one-point spectrum and is analytic and uniform, but its residue field is not algebraically closed; it is totally disconnected and not strict. A definition testing only the topology of `M(A)` accepts it.
- For an infinite index set `I` and nondiscrete algebraically closed fields `C_i`, the bounded product has spectrum the Stone–Čech compactification `βI`, including the nonprincipal ultrafilter points, whose residue fields are ultraproducts; it is not the discrete set `I`.
- A discrete algebraically closed field `k` with the trivial norm is not analytic (no element has norm strictly between 0 and 1), hence not strict.

*Needs:* §0.2; TropicalAndBerkovichArithmetic §§0.15, 0.24, 0.25.

### 0.5 The strict basis and restricted subcanonicity

Prove: every Banach ring admits an arc-cover by a strictly totally disconnected ring; the arc-topology on strictly totally disconnected Banach rings is subcanonical; and on perfectoid Banach rings with `|p| < 1` it is subcanonical (Scholze, Proposition 3.11, Corollary 3.12, Theorems 3.13–3.14, pp. 16–18). Subcanonicity of the whole Banach arc-site is not asserted and is false.

Route: choose algebraic closures of the completed residue fields and take their bounded product; describe its spectrum through Banach ultraproducts to see that all its residue fields are algebraically closed. For strict rings, reduce by uniformity and profiniteness of spectra to a cover `K → L` of geometric Banach points and check that the uniform completion of `L ⊗̂_K L` has equalizer `K` (types 2–4 of points of the closed disc). For perfectoid rings, use that completed pushouts of perfectoid rings are perfectoid and v-descent of the structure sheaf after choosing rings of integral elements.

*Needs:* §§0.3–0.4; TropicalAndBerkovichArithmetic §§0.24, 1.2; PerfectoidSpaces §P2.3 (completed tensor products of perfectoid rings); DiamondsAndVStacks §D2.7 (`vTopology_subcanonical`, v-descent of `O` and `O⁺`).

### 0.6 Quasi-pro-étale maps

Define a map of Banach rings `A → B` to be *quasi-pro-étale* when for every map `A → C` to a geometric Banach point, the uniform completion of `B ⊗̂_A C` is isomorphic to `Cont(S, C)` for a profinite set `S`, with the supremum norm (Scholze, Definition 4.3, p. 19). The base change includes uniform completion.

API:

- Quasi-pro-étale maps are stable under base change and composition, and clopen restrictions `A → A_U` are quasi-pro-étale.
- For `A` strictly totally disconnected, the category of quasi-pro-étale `A`-algebras that are themselves strictly totally disconnected is equivalent to the category of profinite sets over `M(A)` (Scholze, Lemmas 4.4–4.6, pp. 19–20); both rings must be strict for this description.
- Analytic covers of strict rings by strict rings are quasi-pro-étale.

**Checks.**

- The identity of a geometric point `C` corresponds to the one-point profinite set.
- For an infinite profinite set `S`, `Cont(S, C)` is strictly totally disconnected and quasi-pro-étale over `C` without being finite étale; a definition by finite étaleness rejects it.
- The closed unit ball `C⟨T⟩₁` over a nonarchimedean geometric point is not quasi-pro-étale: its spectrum, the Berkovich disc, is connected and not profinite.

*Needs:* §0.5; TropicalAndBerkovichArithmetic §§0.16, 0.24, 0.25.

### 0.7 Repleteness of the arc-topos

Prove that the arc-topos is replete: the inverse limit of a countable tower of epimorphisms of arc-sheaves is an epimorphism onto its first term. Consequently its hypercomplete ∞-topos of sheaves of spaces is Postnikov complete (Scholze, proof of Theorem 4.20, p. 24; geometric-point criterion, §3, pp. 14–15). Countable repleteness is not a claim that all limits preserve epimorphisms.

Route: by the finite-subfamily criterion of §0.2, an epimorphism is detected after passing to geometric Banach points; lift a countable tower of covers successively along field extensions and complete the union of the resulting tower of fields, which gives a simultaneous lift. The Postnikov consequence is the theorem that a replete topos has a Postnikov complete hypercomplete ∞-topos; left completeness of the derived category of abelian sheaves (EnhancedDerivedSheaves §E2.3) does not give the space-valued statement.

*Needs:* §§0.2, 0.5; EnhancedDerivedSheaves §§E2.1, E2.3, E2.7 and the replete Postnikov theorem (gap:replete-postnikov).

### Examples

Let `A = ℂ × ℂ` with the maximum norm. Its spectrum consists of two points, and the two projections `A → ℂ` together form an arc-cover; either projection alone misses a point and does not cover. Both factors are strictly totally disconnected and so is the product. Replacing the finite product by a bounded product over an infinite set `I` introduces the ultrafilter points of `βI`; checking only the principal points then fails to describe the spectrum. The zero ring is covered by the empty family because its spectrum is empty.

### Dependencies

TropicalAndBerkovichArithmetic Layers 0–1; EnhancedDerivedSheaves §§E2.1–E2.7, E3.4, E5:presentability.4; PerfectoidSpaces §P2.3; DiamondsAndVStacks §§D0.23, D2.7; Mathlib `CategoryTheory.GrothendieckTopology`.

## Layer 1: Finitary sheaves and proper base change

This layer constructs finitary derived arc-sheaves and proves the hyperdescent criterion on the strict basis, the comparisons at complex and geometric points, finitary adjoints, excision and proper base change for maps of finite cohomological dimension.

### 1.1 The finitary hypersheaf criterion on the strict basis

Prove: every functor from strictly totally disconnected Banach rings to spaces that preserves finite products and filtered colimits (completed filtered colimits of rings) extends uniquely to a hypercomplete arc-sheaf; for such a functor with values in abelian groups, the positive arc-cohomology of a strict ring vanishes; the same holds for functors with values in a compactly assembled ∞-category in which filtered colimits commute with finite limits (Scholze, Theorem 4.1 and Remark 4.2, pp. 19–20; Lemmas 4.7–4.9, pp. 20–22).

Route: extend `n`-truncated functors along quasi-pro-étale maps, which are filtered colimits of finite clopen decompositions (Lemma 4.7). Prove the splitting lemma: an arc-cover of a strict ring is a completed filtered colimit of split maps; by the compact assembly of seminormed rings (§0.1) reduce to finitely many approximate relations, and split a surjective open subset of affine space over a strict ring by algebraic closedness of residue fields and clopen patching. For each `n`, commute the finite descent limits of `n`-truncated functors through the filtered colimit of split maps, then pass to the Postnikov limit; infinite totalizations are exchanged with filtered colimits only after truncation.

*Needs:* §§0.1, 0.5, 0.6; EnhancedDerivedSheaves §§E2.6–E2.7 (hypercovers, sheaves of spaces) and §E3.2 (Kan extension along the basis).

### 1.2 Finitary derived arc-sheaves

For a small arc-stack `X` define `Dfin(X, ℤ)` as the full subcategory of the enhanced derived category of hypercomplete abelian arc-sheaves on `X` consisting of those `M` whose restriction to strict rings over `X` commutes with completed filtered colimits; equivalently, by §1.1, the ∞-category of functors from strict rings over `X` to `D(ℤ)` preserving finite products and filtered colimits (Scholze, Definition 4.10 and Remark 4.11, p. 22; Propositions 4.12–4.13, pp. 22–23). The same definition with coefficients in a ring `Λ` gives `Dfin(X, Λ)`.

API:

- Restriction to the strict basis is an equivalence onto the functors preserving finite products and filtered colimits.
- Pullback along maps of small arc-stacks preserves finitary sheaves, is symmetric monoidal for the derived tensor product, and is coherently functorial.
- `Dfin(X, ℤ)` is closed under all colimits and truncations in the derived category of arc-sheaves, is stable, and is left complete.
- A bounded-below finitary sheaf commutes with completed filtered colimits of all Banach rings over `X`, not only strict ones; for unbounded objects this extension needs a uniform bound on cohomological dimension.

**Checks.**

- On a strict ring, a finitary abelian sheaf in degree zero has vanishing positive cohomology (§1.1). For the non-strict ring of the closed annulus `{r₁ ≤ |T| ≤ r₂}` over a nonarchimedean geometric point, with `ℓ` prime to the residue characteristic, `H¹` of the constant sheaf `ℤ/ℓ` is `ℤ/ℓ`, generated by the Kummer class of `T` (§3.5); so the vanishing is a property of the strict basis.
- At the complex point `Marc(ℂ)` the homotopy category of `Dfin` is the unbounded derived category of abelian groups: the cohomology of `ℤ[0]` is `ℤ` in degree zero and zero elsewhere.
- For `A = Cont(S, C)` with `S` infinite profinite, `A` is the completed filtered colimit of the rings `C^{S_j}` over the finite quotients `S → S_j`. The constant sheaf `ℤ` takes the value `colim_j ℤ^{S_j}` = locally constant functions `S → ℤ` on both sides and is finitary; the presheaf of all functions `M(A) → ℤ` takes the value `ℤ^S` at `A` but `colim_j ℤ^{S_j} ≠ ℤ^S`, so it is not finitary.

*Needs:* §1.1; EnhancedDerivedSheaves §E1.3 (enhanced derived categories of sheaves), §E0.4 (stable ∞-categories), §E5:abstract.1 and §E5:abstract.4 (symmetric monoidal stable structures), §E2.3 (left completeness).

### 1.3 Complex and geometric-point comparisons

Prove: for a complex Banach algebra `A`, `Dfin(Marc(A), ℤ)` is the left completion of the derived category of abelian sheaves on the compact Hausdorff space `M(A)`; for every finitary `M`, every nondiscrete Banach field `K` and a completed algebraic closure `C` of `K`, `M(K) ≃ M(C)^{hG_K}`, the homotopy fixed points for the continuous action of the absolute Galois group, computed by continuous cohomology; and for `A` a Banach ring and `M` bounded below, the stalk at `x ∈ M(A)` of the pushforward of `M` along `ν : Marc(A)_arc → M(A)` to the site of open subsets of `M(A)` is `M(K(x))` (Scholze, Theorem 4.14, Propositions 4.15–4.16, pp. 23–24).

Route: on strict complex rings identify the arc-site with profinite sets over `M(A)` (§0.3), where finitary sheaves are ordinary sheaves, and descend; at a Banach field use the site of profinite `G_K`-sets; for the stalk formula extend bounded-below finitary sheaves to all Banach algebras over `A` and identify neighbourhood germs with the completed residue field.

*Needs:* §§0.3, 0.6, 1.2; EnhancedDerivedSheaves §E2.3 (left completion); ProfiniteCohomology Layer 10 (`continuousCohomology`, filtered colimits of coefficients); DiamondsAndVStacks §D0.22 (ordinary sheaves on profinite sets).

### 1.4 Finitary maps and open immersions

Define a map of small arc-stacks `f : Y → X` to be *finitary* when, for every completed filtered colimit `A = colim A_i` of strict rings, the square with corners `colim Y(A_i)`, `Y(A)`, `colim X(A_i)`, `X(A)` is cartesian; and an *open immersion* to be a map whose pullback to every `Marc(A)` is induced by an open subset of `M(A)` (Scholze, Definitions 4.21–4.22 and Lemma 4.23, pp. 24–25). The condition is relative: it is not filtered continuity of `Y` itself.

API:

- Finitary maps are stable under composition, pullback and colimits in the slice over `X`; if `g` and `g ∘ f` are finitary then so is `f`.
- A monomorphism is finitary if and only if it is an open immersion.
- For `a ∈ A` and `r > 0`, the locus `{|a| < r}` in `Marc(A)` is an open immersion; the locus `{|a| ≤ r}` is not open in general.

**Checks.**

- Every identity is finitary, even when `X` has no absolute continuity property.
- The locus `{|a| < r}` is finitary because the norm of an element of a filtered colimit is the infimum of its norms at the stages. For `a = 0`, or for `r` larger than the spectral radius of `a`, it is the whole space; for `a = 1` and `r ≤ 1` it is empty; both degenerate cases are open immersions (the identity and the empty substack).
- For `A = Cont([0,1], ℂ)`, the inclusion of the point `{0}` is a monomorphism that is not an open immersion, hence not finitary; a definition requiring only injectivity accepts it.

*Needs:* §1.2; TropicalAndBerkovichArithmetic §§0.16, 0.25.

### 1.5 Proper maps and cohomological dimension

For a small arc-stack `X` define its *cohomological dimension* `d(X)` as the cohomological dimension of `M ↦ M(X)` on `Dfin(X, ℤ)`, measured on objects in degree zero. A 0-truncated map `f : Y → X` is *proper* when it is quasi-compact and quasi-separated; its cohomological dimension `d(f)` is the supremum of `d(Y_x)` over geometric points `x` of `X`, and `f` has locally finite cohomological dimension when its pullback to every quasi-compact substack of `X` has finite cohomological dimension (Scholze, Definitions 4.17 and 4.19, Corollary 4.18, pp. 23–24). Dimensions may be infinite; a finite bound is a hypothesis of each theorem that uses it.

API:

- For an analytic Banach ring `A`, `d(Marc(A))` is at most the cohomological dimension of the compact Hausdorff space `M(A)` plus the supremum over `x ∈ M(A)` of the cohomological dimension of `G_{K(x)}` on discrete `ℤ`-modules.
- Properness and the bound `d(f) ≤ n` are preserved by base change.
- Local finiteness of dimension can be checked on quasi-compact charts of the target.

**Checks.**

- A strict affine `Marc(A)` has `d = 0`, by §1.1.
- A profinite set over a geometric point has `d = 0`.
- The map `B(ℤ/2) → ∗` from the classifying stack of the constant group of order two is not 0-truncated, hence not proper in this sense; a definition by quasi-compactness alone accepts it.

*Needs:* §§1.2–1.3; ProfiniteCohomology Layer 11 (`cd_p`, `scd_p`); EnhancedDerivedSheaves §E2.4 and the compact Hausdorff dimension statement (gap:compact-hausdorff-dimension).

### 1.6 Finitary left adjoints and excision

Prove: for finitary `f : Y → X`, the pullback `f^* : Dfin(X, ℤ) → Dfin(Y, ℤ)` has a left adjoint `f_♯` satisfying the projection formula; for an open immersion `j : U → X` with closed complement `i : Z → X`, `j_! = j_♯` and `j_! j^* M → M → i_* i^* M` is a cofibre sequence for every `M ∈ Dfin(X, ℤ)`; the loci `{|2| > 1}` and `{|2| ≤ 1}` decompose every small arc-stack into its archimedean open part and its nonarchimedean closed part (Scholze, Propositions 4.24–4.25, pp. 25–26). The threshold `|2|` separates archimedean from nonarchimedean points; it is not a choice of residue characteristic.

Route: construct the left adjoint in the enhanced slice sheaf category, with finitarity preserved by composition of finitary maps; check the projection formula on free generators; identify the open–closed sequence on strict rings, where it is the sequence for an open subset of a profinite set, and descend.

*Needs:* §§1.2, 1.4; EnhancedDerivedSheaves §E3.2 (adjoints of colimit-preserving functors) and §E3.4 (`coherentMate`).

### 1.7 Proper base change for finitary sheaves

Prove: for a 0-truncated proper map `f : Y → X` of small arc-sheaves with `d(f)` finite, `f_*` preserves finitary sheaves, `f_*` of a sheaf in degree zero is concentrated in degrees `[0, d(f)]`, and `f_*` commutes with every base change along maps of small arc-stacks; if `f` is moreover quasi-pro-étale, `f_*` satisfies the projection formula (Scholze, Theorem 4.20 and Example 4.26, pp. 24, 26). A projection formula for general proper `f` is not part of this statement: it fails before stabilization (§3.3) and holds after it (§§8.4, 9.4). Bounded-below preservation does not use finiteness of `d(f)`; the unbounded statement does.

Route: resolve the qcqs source by affine charts and prove bounded-below finitary preservation using continuity for all Banach algebras (§1.2); pass to unbounded objects using repleteness (§0.7) and finite `d(f)`; compute base change by slices and geometric fibres; for quasi-pro-étale `f` write each fibre as an inverse limit of finite sets and use the finite-set projection formula.

*Needs:* §§0.6, 0.7, 1.2, 1.5; EnhancedDerivedSheaves §§E2.2–E2.4.

### Examples

Let `A = Cont([0,1], ℂ)` with the supremum norm. By §1.3, `Dfin(Marc(A), ℤ)` is the left-completed derived category of sheaves on `[0,1]`. For `U = (0,1]` and `Z = {0}`, the excision sequence `j_! ℤ_U → ℤ → i_* ℤ_Z` has stalks `0 → ℤ → ℤ` at `0` and `ℤ → ℤ → 0` at a positive point, which pins the extension-by-zero convention. The inclusion of `{0}` is not open and not a finitary monomorphism, while the identity of `[0,1]` is finitary because its relative continuity square is trivially cartesian.

### Dependencies

Layer 0; EnhancedDerivedSheaves §§E0.4, E1.3, E2.2–E2.7, E3.2, E3.4, E5:abstract.1, E5:abstract.4; ProfiniteCohomology Layers 10–11; DiamondsAndVStacks §D0.22; TropicalAndBerkovichArithmetic §§0.16, 0.25.

## Layer 2: Effective motives and ball localization

This layer constructs integral effective motivic sheaves, the ball localization, free motivic sheaves of open subsets of affine space and their left adjoints, and proves rational truncation stability and the forward torsion criterion.

### 2.1 Effective motivic sheaves

Let `A⟨T⟩₁` be the free uniform Banach `A`-algebra on an element `T` with `|T| ≤ 1`. For a small arc-stack `X` define `Deff_mot(X)` as the full subcategory of `Dfin(X, ℤ)` of *ball-invariant* objects: those `M` for which `M(A) → M(A⟨T⟩₁)` is an equivalence for every Banach ring `A` over `X` (Scholze, Definitions 5.1–5.2, p. 26). Its tensor product `⊗_mot` is the ball localization (§2.2) of the derived tensor product.

Prove first the dimension bound: for every geometric Banach point `C`, `d(C⟨T⟩₁) ≤ 3` (Scholze, Lemma 5.3, p. 26). For `C = ℂ` the spectrum is the closed unit disc, of covering dimension 2, with trivial residue Galois groups. For nonarchimedean `C` the spectrum is the Berkovich disc, a cofiltered limit of finite trees, of covering dimension 1; the residue field at a `C`-point is `C`, and at a point of type 2, 3 or 4 its absolute Galois group is a closed subgroup of `G_{C(T)}`, which has cohomological dimension at most 1 by Tsen's theorem, hence strict cohomological dimension at most 2 on `ℤ`-modules.

API:

- Ball invariance can be tested at geometric Banach points: a finitary `M` is effective as soon as `M(C) → M(C⟨T⟩₁)` is an equivalence for every geometric Banach point `C` over `X` (Scholze, Corollary 5.4, pp. 26–27).
- Pullback along maps of small arc-stacks preserves effective motives and the localized tensor product.
- `Deff_mot(X)` is closed under all colimits in `Dfin(X, ℤ)` (Scholze, Corollary 5.5, p. 27).

**Checks.**

- At the complex point, `Deff_mot(Marc(ℂ)) = D(ℤ)`: the closed disc is contractible, so every finitary sheaf is ball-invariant (Scholze, Proposition 1.5(i), p. 4).
- On the nonarchimedean locus the reduced multiplicative group `Ḡ_m` of §3.2 is effective (§3.3), whereas `G_m` is not: for `0 < |a| < 1` the element `1 + aT` of `C⟨T⟩₁` is a unit (its Gauss norm distance to 1 is `|a| < 1`) that does not lie in `C^×`, so `G_m(C) → G_m(C⟨T⟩₁)` is not surjective; its class in `Ḡ_m` is trivial because it is a one-unit.
- The construction retains torsion prime to the residue characteristics; it is not defined by tensoring with `ℚ`.

*Needs:* §§1.2, 1.5, 1.7; TropicalAndBerkovichArithmetic §§0.17, 1.1–1.3; SchemeAndStackFoundations §2.16 (Tsen); ProfiniteCohomology Layer 11 (`cd_p_le_of_isClosed`, `scd_p_le_cd_p_add_one`); the compact Hausdorff dimension statement (gap:compact-hausdorff-dimension).

### 2.2 The ball localization

Construct a symmetric monoidal left adjoint `L_B` of the inclusion `Deff_mot(X) ⊂ Dfin(X, ℤ)`. On a strict ring `A`, and more generally on an analytic `A` of finite cohomological dimension, `(L_B M)(A)` is the geometric realization of `[n] ↦ M(A⟨Δⁿ⟩)`, where `Δⁿ` is the `n`-dimensional closed ball with the cosimplicial structure given by ordered coordinates `1 ≥ t₁ ≥ ⋯ ≥ t_n ≥ 0`. The localization is a monoidal Verdier quotient whose kernel is the localizing tensor ideal generated by ball-contractible objects, an object `N` being ball-contractible when the identity and the zero endomorphism of `N` are joined by a homotopy parametrized by the ball (Scholze, Proposition 5.6, Remark 5.7 and Proposition 5.8, pp. 27–28). The ordered-coordinate simplex is used because barycentric coordinates need not be contractive over archimedean rings. The same construction on presheaves gives `L_B^pre`, and on sheaves of spectra the spectral ball localization used in Layer 6.

API:

- Maps `L_B M → N` into a ball-invariant `N` correspond to maps `M → N`.
- On strict rings and on analytic rings of finite cohomological dimension, `L_B` has the realization formula above.
- `L_B(M ⊗ N) ≃ L_B M ⊗_mot L_B N`.

**Checks.**

- For ball-invariant `M` the unit `M → L_B M` is an equivalence, and `L_B L_B ≃ L_B`.
- A ball-contractible object localizes to zero.
- `Δ⁰` is the base and `Δ¹` the unit ball; the two endpoint maps `Δ⁰ → Δ¹` differ before localization and become homotopic after it.

*Needs:* §§1.7, 2.1; EnhancedDerivedSheaves §E3.2 (accessible localizations), §E5:abstract.3 (monoidal localizations) and §E5:abstract.4 (Verdier quotients by tensor ideals).

### 2.3 Rational homotopy t-structure

Prove that `Deff_mot(X, ℚ)` is closed under truncations in `Dfin(X, ℚ)`, so that it inherits the rational homotopy t-structure (Scholze, Proposition 5.10, p. 30). Route: at a nonarchimedean geometric point the rational cohomology of the Berkovich ball has amplitude `[0, 1]`, and the resulting two-column spectral sequence forces each cohomology sheaf of a ball-invariant object to be ball-invariant; at the complex point all finitary sheaves are effective. The integral statement uses the transfer results of Layer 4 and is §4.10.

*Needs:* §§1.3, 2.1; TropicalAndBerkovichArithmetic §1.3 (the disc as a tree).

### 2.4 Étale torsion is ball-invariant

Prove: if `n ≥ 1`, `|n| ≥ 1` everywhere on `X`, and `M ∈ Dfin(X, ℤ/n)` is invariant under every extension of geometric Banach points over `X`, then `M` is ball-invariant (Scholze, Proposition 5.9, pp. 28–30). Route: reduce to a geometric point and the constant sheaf `ℤ/n`; on the complex locus use the contractible disc; on the nonarchimedean disc compute the first direct image by Kummer classes on finite subtrees, with outgoing branch labels summing to zero at each vertex and vanishing on rays that end at the boundary, peel off terminal intervals, and kill higher terms with the bound of §2.1. The condition `|n| ≥ 1` makes one-units `n`-divisible. The converse is §4.8.

*Needs:* §§1.3, 2.1; TropicalAndBerkovichArithmetic §§1.1–1.3; DiamondEtaleCohomology §C6.1 (base-field invariance for coefficients prime to `p`).

### 2.5 Free motivic sheaves of open subsets of affine space

For `U ⊂ Aⁿ_X` open, with `n` finite, define `ℤmot[U]` as the ball localization of the free derived abelian arc-sheaf on `U`. Prove that it is finitary, that `Map(ℤmot[U], M) ≃ M(U)` naturally in effective `M`, that it commutes with base change, that `ℤmot[U ×_X V] ≃ ℤmot[U] ⊗_mot ℤmot[V]`, and that for `X` analytic affine of finite cohomological dimension these objects generate `Deff_mot(X)` under colimits (Scholze, Lemma 5.11, Propositions 5.12–5.13, pp. 30–32). Finitarity of `L_B^pre ℤ[U]` is a theorem, not an assumption on `U`.

API:

- Maps out of `ℤmot[U]` into an effective `M` are the sections `M(U)`.
- Pullback of `ℤmot[U]` along `X′ → X` is `ℤmot[U ×_X X′]`.
- Fibre products of open subsets of affine spaces go to tensor products.

**Checks.**

- `ℤmot[X]`, for `X = A⁰_X`, is the unit.
- `ℤmot[∅] = 0`, not a copy of `ℤ`: the free sheaf on the empty sheaf has no generators.
- The projection from the closed unit ball over `X` induces an equivalence of free motives, although the free sheaves before localization differ.

Route: in the nonarchimedean case exhaust `U` by subsets invariant under small additive balls; in general use uniform approximation to prove finitarity of the singular construction; generation uses bounded closed subsets and continuity at fields of finite topological transcendence degree, then at all geometric fields, with dimensions uniformly bounded before passing to limits.

*Needs:* §§1.3, 1.4, 2.2; TropicalAndBerkovichArithmetic §§0.21–0.22.

### 2.6 Effective left adjoints

Prove: if `f : Y → X` factors as a finitary map `Y → Aⁿ_X` followed by the projection `Aⁿ_X → X`, then `f^* : Deff_mot(X) → Deff_mot(Y)` has a left adjoint `f_♯` that commutes with base change and satisfies the projection formula (Scholze, Theorem 5.14, p. 32). The factorization is a hypothesis; arbitrary maps are not included. Route: by hyperdescent reduce to strict bases and to the projection; on generators put `f_♯ ℤmot[V/Y] = ℤmot[V/X]`, and deduce projection and base change from the product formula of §2.5. For `n = 0` this is the finitary left adjoint of §1.6 followed by `L_B`.

*Needs:* §§1.6, 2.1, 2.5; EnhancedDerivedSheaves §E3.2.

### Examples

Over the complex point the closed unit ball `B` contracts to a point through `(s, t) ↦ st`; hence for every effective `M` the restriction `M(∗) → M(B)` is an equivalence, and `ℤmot[B] ≃ ℤmot[∗] = ℤ`. In the explicit localization the two maps `Δ⁰ → Δ¹ = B` become equal after realization. The empty subset gives the zero object. These computations distinguish ball localization from replacing every free sheaf by a copy of the unit.

### Dependencies

Layers 0–1; EnhancedDerivedSheaves §§E3.2, E5:abstract.3, E5:abstract.4; TropicalAndBerkovichArithmetic §§0.17, 0.21–0.22, 1.1–1.3; SchemeAndStackFoundations §2.16; ProfiniteCohomology Layer 11; DiamondEtaleCohomology §C6.1.

## Layer 3: Reduced units and the Tate object

This layer constructs one-units, the reduced multiplicative group and the Tate object, and proves ball invariance of the reduced group, the identification of the reduced free motive of `G_m`, annulus invariance and compactness of the Tate object on strict bases.

### 3.1 One-units

For a nonarchimedean uniform Banach ring `A` let `A_{<1} = {a : |a| < 1}`, an ideal of the subring `A_{≤1}` of power-bounded elements, and let `U¹(A) = 1 + A_{<1}`, a subgroup of `A^×`. Let `U¹` be the associated arc-sheaf of abelian groups on the nonarchimedean locus (Scholze, §2.3, p. 12, and discussion before Definition 5.15, p. 32). For a field the notion specializes to: an element `u` of a nonarchimedean valued field `K` (Mathlib `NormedField K` with `IsUltrametricDist K`) is a one-unit when `‖u − 1‖ < 1`.

API:

- `1` is a one-unit; products and inverses of one-units are one-units (in a complete uniform ring the inverse of `1 + a` is the geometric series; in a field use `u⁻¹ − 1 = −u⁻¹(u − 1)` and `‖u‖ = 1`).
- In an ultrametric valued field a one-unit has norm exactly 1.
- An isometric map of valued fields preserves and reflects one-units; a contractive ring map preserves them.

**Checks.**

- `1` is a one-unit since `‖1 − 1‖ = 0`.
- A unit `u` with `‖u‖ ≠ 1` is not a one-unit: by the ultrametric inequality `‖u − 1‖ = max(‖u‖, 1) ≥ 1`.
- `−1` is a one-unit exactly when `‖2‖ < 1`: in `ℚ₂`, `‖−1 − 1‖ = ‖2‖ = 1/2`, so it is; in `ℚ₃`, `‖2‖ = 1` and it is not, although `‖−1‖ = 1` in both. This separates the strict threshold `< 1` from the condition `‖u‖ = 1`.

*Needs:* §0.2; TropicalAndBerkovichArithmetic §§0.24, 0.27; Mathlib `NormedField`, `IsUltrametricDist`.

### 3.2 The reduced multiplicative group

On the nonarchimedean locus `{|2| ≤ 1}` of a small arc-stack define `Ḡ_m = G_m/U¹`, the quotient in arc-sheaves of abelian groups (not the presheaf quotient), with its canonical epimorphism from `G_m` (Scholze, Definition 5.15, p. 32).

API:

- Maps out of `Ḡ_m` into an arc-sheaf of abelian groups are the maps out of `G_m` that kill `U¹`.
- `Ḡ_m` commutes with base change of small arc-stacks.
- At a nonarchimedean geometric point `C`, `Ḡ_m(C) = C^×/(1 + C_{<1})`, and `Ḡ_m` is finitary.

**Checks.**

- Every `1 + a` with `|a| < 1` maps to the identity.
- A pseudouniformizer `π`, `0 < |π| < 1`, has nontrivial class: one-units have norm 1, and `|π| ≠ 1`.
- A unit of norm 1 whose residue class is not 1 has nontrivial class; so `Ḡ_m(C)` is an extension of the value group `|C^×|` by the residue units `k^×`, and retains more than the value group.

*Needs:* §§1.2, 3.1; EnhancedDerivedSheaves §E1.3.

### 3.3 Ball invariance and the reduced free motive of `G_m`

Prove that `Ḡ_m` is finitary and ball-invariant, and that the tautological section of `G_m` over `G_m` induces `ℤmot[G_m]/ℤmot[∗] ≃ Ḡ_m` on the nonarchimedean locus, the quotient being taken along the unit section (Scholze, Theorem 5.16 and Proposition 5.17, pp. 32–34; Proposition 1.6, p. 5).

Route: modulo a prime `ℓ`, raising to the `ℓ`-th power is surjective on `Ḡ_m` with kernel the image of `μ_ℓ`, which is trivial when `ℓ` is the residue characteristic and `ℤ/ℓ` otherwise, so §2.4 applies. Rationally, compute the cohomology of `Ḡ_m ⊗ ℚ` on the tree `M(C⟨T⟩₁)`: `H¹` vanishes because analytic line bundles on the disc are trivial; a global section has constant norm because its logarithm is piecewise linear, harmonic at every branch point except possibly the Gauss point, and constant near the ends of rays, and the product formula on `ℙ¹` controls the Gauss point. For the free motive, group-complete the free commutative monoid and use `Symⁿ(G_m) ≃ A^{n−1} × G_m` through characteristic polynomials for the unreduced group, then pass to the reduced quotient through the one-unit homotopies; no such isomorphism is asserted for `Symⁿ(Ḡ_m)`.

The unstabilized projection formula for `ℙ¹ → ∗` fails: the reduced free motive above gives a nonzero obstruction in the effective category (Scholze, Example 4.26, p. 26), which is why §1.7 asserts projection only for quasi-pro-étale maps.

*Needs:* §§2.4, 2.5, 3.2; TropicalAndBerkovichArithmetic §§1.1–1.3, 1.6, 3.7 (slope formula and harmonicity); the triviality of analytic line bundles on the disc (gap:affinoid-line-bundles); the animated group completion (gap:animated-group-completion).

### 3.4 The first Tate twist

For every small arc-stack `X` define `ℤ(1) = cofib(ℤmot[∗] → ℤmot[G_m])[−1]`, using the unit section, and `ℤ(n) = ℤ(1)^{⊗n}` for `n ≥ 0` in `Deff_mot(X)` (Scholze, Definition 5.18, pp. 34–35). Negative twists exist only in the stable category (Layer 8).

API:

- Pullback carries `ℤ(1)` on `X` to `ℤ(1)` on `X′`, coherently.
- On the nonarchimedean locus `ℤ(1)[1] ≃ Ḡ_m`.
- For `m, n ≥ 0`, `ℤ(m) ⊗_mot ℤ(n) ≃ ℤ(m + n)`.

**Checks.**

- Over `ℂ`, `ℤmot[G_m]` is the chain complex of the circle, `ℤ ⊕ ℤ[1]`, so `ℤ(1) = (ℤ[1])[−1] = ℤ` in degree zero, not zero.
- Over `ℝ`, complex conjugation acts on the circle `{|z| = 1}` by reflection, which acts by `−1` on its first homology; so `ℤ(1)` is the sign representation.
- Over a nonarchimedean point `ℤ(1) = Ḡ_m[−1]`, an abelian group in cohomological degree one; the formula without the shift fails the defining cofibre identity.

*Needs:* §§1.3, 2.5, 3.3.

### 3.5 Annulus invariance and compactness of the Tate object

Prove: for an open annulus `T(r₁, r₂) = {r₁ < |T| < r₂} ⊂ G_m` with `0 < r₁ < r₂ < ∞`, the map `ℤmot[T(r₁, r₂)] → ℤmot[G_m]` is an equivalence; and if `X` is strictly totally disconnected, `ℤ(1)` is a compact object of `Deff_mot(X)` (Scholze, Proposition 5.19, pp. 34–35). Compactness is asserted on strict bases; relative rigidity (§9.6) does not give compact generation.

Route: at an archimedean geometric point compare homology of a nonempty complex annulus with that of `ℂ^×`. At a nonarchimedean geometric point rescale so that `r₁ < 1 < r₂`. A monic polynomial `Tⁿ + Σ_{i<n} a_i T^i` with `a₀ ∈ T(r₁ⁿ, r₂ⁿ)` has all its roots in `T(r₁, r₂)` if and only if `|a_i| < min(r₂^{n−i}, |a₀| r₁^{−i})` for `1 ≤ i < n` (Newton polygon: the largest root norm is `max_i |a_i|^{1/(n−i)}` and the smallest is `min_i (|a₀|/|a_i|)^{1/i}`). Hence `Symⁿ(T(r₁, r₂)) → T(r₁ⁿ, r₂ⁿ)`, the constant coefficient, has open-polydisc fibres; ball invariance identifies the motives, and the target annuli exhaust `G_m` as `n` grows. For compactness, evaluation on a closed annulus, which is quasi-compact of finite cohomological dimension, commutes with colimits by §1.7, and finitarity compares open and closed annuli.

*Needs:* §§1.7, 2.5, 3.4; TropicalAndBerkovichArithmetic §§1.1, 1.6.

### Examples

Over `ℚ₂`, `u = −1` satisfies `‖u − 1‖ = ‖−2‖ = 1/2 < 1` and is a one-unit; over `ℚ₃` the same norm is 1 and it is not. In both cases `‖−1‖ = 1`, so norm one alone does not characterize one-units. Over an algebraically closed nonarchimedean `C`, a pseudouniformizer has nontrivial class in `Ḡ_m` since one-units have norm one, and a unit of norm one with nontrivial residue also survives; `Ḡ_m` remembers both valuation and residue information.

For the annulus criterion take `C = ℂ₂`, `r₁ = 1/4`, `r₂ = 4`, `n = 2` and the polynomial `T² + T/2 + 4`. Its constant coefficient has norm `1/4 ∈ (r₁², r₂²) = (1/16, 16)`, and `|a₁| = |1/2| = 2`. The Newton polygon of the points `(0, 2), (1, −1), (2, 0)` (valuations) has slopes `−3` and `1`, so the roots have norms `1/8` and `2`; the root of norm `1/8 < r₁` lies outside the annulus. The criterion with the minimum gives the bound `min(4, (1/4)·4) = 1 < 2` and correctly excludes this polynomial; a bound by the maximum, `max(4, 1) = 4 > 2`, would wrongly admit it (Corrections to the source, E5).

### Dependencies

Layers 1–2; TropicalAndBerkovichArithmetic §§0.24, 0.27, 1.1–1.3, 1.6, 3.7; EnhancedDerivedSheaves §E1.3; gaps affinoid-line-bundles and animated-group-completion.

## Layer 4: Transfers and geometric-point comparisons

This layer constructs Banach presheaves with transfers, the marked generalized Jacobian and the curve homotopies, computes free motives explicitly, and deduces the torsion comparison, invertibility of residue characteristics, effective tilting and the integral homotopy t-structure.

### 4.1 Banach presheaves with transfers

For a strictly totally disconnected `X`, form the category whose objects are uniform Banach algebras `A` over `X` and whose maps from `A` to `B` are maps of arc-sheaves of commutative monoids `ℕ[Marc(A)/X] → ℕ[Marc(B)/X]`, composed as maps of monoid sheaves. A *presheaf with transfers* is an additive functor from the opposite of this category to abelian groups; it is *finitary* when it commutes with completed filtered colimits of all Banach algebras over `X` (Scholze, Definition 6.2, pp. 35–36). Composition is not defined through scheme-theoretic finite correspondences. A map `A → B` of Banach algebras gives the monoid map induced by `Marc(B) → Marc(A)` in the opposite direction, so a presheaf with transfers restricts to an ordinary presheaf contravariantly in `Marc`.

API:

- Restriction along actual Banach maps recovers the underlying presheaf.
- A multiset of maps acts by the sum of the corresponding pullbacks, with multiplicities.
- Composition of multivalued maps corresponds to composition of the induced transfer maps.

**Checks.**

- The singleton multiset of the identity acts as the identity.
- The multiset consisting of `d` copies of the identity acts by multiplication by `d`; for `d = 0` it acts by zero.
- For a finite étale `A → B` of degree `d`, the trace multiset followed by pullback acts by multiplication by `d` on the value at `A`, without choosing an ordering of the fibres.

*Needs:* §§0.2, 1.1; EnhancedDerivedSheaves §E5:animation.1 and the animated group completion (gap:animated-group-completion).

### 4.2 Shrinking and compactifying analytic curves

Prove: for a smooth connected analytic curve `U` over a nondiscrete algebraically closed nonarchimedean field `C` and two points `x, x′ ∈ U(C)`, there is a connected open `U′ ⊂ U` containing `x` and `x′` and an embedding of `U′` into a smooth projective `C`-curve `X̄` whose complement `X̄ ∖ U′` is a finite nonempty disjoint union of closed discs, each containing a chosen `C`-point (Scholze, proof of Lemma 6.4, p. 37). An arbitrary affinoid need not have such a complement without shrinking.

Route: choose a connected affinoid neighbourhood of a path from `x` to `x′`; by van der Put's theorem a normal one-dimensional affinoid embeds into a smooth complete curve whose complement reduces to finitely many nonsingular points (van der Put, Theorem 1.1, pp. 155–158, and Corollary 1.3, p. 159). Refine the residue discs of these points to pairwise disjoint closed discs, away from `x` and `x′`, and remove them.

*Needs:* TropicalAndBerkovichArithmetic §§0.17, 0.21–0.22, 1.1.

### 4.3 The generalized Jacobian with marked trivializations

For a smooth projective geometrically connected curve `X̄` over an algebraically closed field `C` and a set `Z = {z₁, …, z_r}` of `r ≥ 1` distinct `C`-points, construct the semiabelian variety `J_Z` whose `C`-points are isomorphism classes of degree-zero line bundles with a trivialization at each `z_i`, modulo simultaneous scaling of all trivializations, with the tensor-product group law. Prove the exact sequence `1 → G_m^{r−1} → J_Z → Jac(X̄) → 0` and that multiplication by every prime `ℓ`, including `ℓ = char C`, is surjective on `J_Z(C)` (Scholze, proof of Lemma 6.4, p. 37; compare BLR, §9.2, Proposition 3, p. 244, Example 8, pp. 246–247, and Proposition 10, p. 249). In characteristic zero this is the generalized Jacobian of the reduced boundary `Z` of AnabelianGeometryAndNonabelianChabauty; here the field has arbitrary characteristic and only surjectivity on points is used, not étaleness of `[ℓ]`.

API:

- The `C`-points of `J_Z` are the stated isomorphism classes, with the tensor-product group law.
- Forgetting the trivializations is a surjection onto `Pic⁰ = Jac(X̄)` with kernel `G_m^r/G_m ≅ G_m^{r−1}`.
- Every class in `J_Z(C)` has an `ℓ`-th root for every prime `ℓ`.

**Checks.**

- For `r = 1` the torus is trivial and `J_Z = Jac(X̄)`.
- For `X̄ = ℙ¹` and `Z = {0, ∞}`, `J_Z ≅ G_m`: every degree-zero line bundle is trivial, two trivializations give `(a, b) ∈ (C^×)²` up to simultaneous scaling, and the coordinate is `a/b`.
- Multiplying all trivializations by one scalar leaves the class unchanged; without marks the Picard stack retains `G_m` automorphisms and is not this moduli problem.

Route: over the Picard scheme of JacobianChallenge Layer D form the torsor of trivializations along `Z`, of fibre `G_m^r`, and divide by the diagonal `G_m`; divisibility follows from the torus case and from surjectivity of multiplication by `n` on an abelian variety (JacobianChallenge Layer E, `multiplication_isogeny`), which on `C`-points holds for `C` algebraically closed also when `n` is divisible by the characteristic.

*Needs:* JacobianChallenge Layers A, D, E.

### 4.4 Rational motives of line domains with disc complements

Prove: let `C` be a nondiscrete algebraically closed nonarchimedean field and `U, V ⊂ A¹_C` open with complements in `ℙ¹_C` finite disjoint unions of closed discs (including a disc around `∞`). Then `ℚmot[U](V)` is concentrated in degree zero and is the cokernel of `ℕ[U](V × B) ⊗ ℚ → ℕ[U](V) ⊗ ℚ`, the difference of the two endpoint restrictions; and if the complement of `U` has `d + 1` discs, `ℚmot[U] ≃ ℚ ⊕ (Ḡ_m ⊗ ℚ)^d` (Scholze, Lemma 6.5 and proof, pp. 37–39).

Route: excision and annulus invariance split the motive into the unit and one reduced-unit summand per finite boundary disc. For surjectivity use the polynomials `P_t(T) = ∏_i (T − a_i)^{k_i} − t` with `s₁ < |t| < s₂`, choosing each `k_i` with `r₁^{k_i} < s₁` and `n = Σ k_i` with `r₂ⁿ > s₂`: for `|T| ≥ r₂` the product has norm `|T|ⁿ ≥ r₂ⁿ > |t|`, and for `|T − a_i| ≤ r₁` it has norm at most `r₁^{k_i} < |t|`, since the other centres are at distance one; so all roots of `P_t` lie in `U`, and the resulting boundary-degree vectors span all rational slopes. For injectivity interpolate coefficients; the Newton-polygon inequalities keep roots in the domain when the product coordinates agree up to one-units.

**Checks.**

- An open disc has `d = 0` and `ℚmot = ℚ`; an open annulus has `d = 1` and `ℚmot = ℚ ⊕ Ḡ_m ⊗ ℚ`, in agreement with §3.5; the complement of `d + 1 ≥ 2` discs gives a free rank-`d` boundary-degree lattice in each annular source, so `e` annuli contribute `ℚ^{de}` (Corrections to the source, E4).

*Needs:* §§1.6, 3.3, 3.5, 4.1; TropicalAndBerkovichArithmetic §1.6.

### 4.5 Curve homotopies after adding prime multiples

Prove: for a smooth connected curve `U` over a nondiscrete algebraically closed nonarchimedean field `C`, points `x, x′ ∈ U(C)` and a prime `ℓ`, there are `n ≥ 0` and points `x_i, x′_i ∈ U(C)` such that `[x] + ℓ Σ_i [x_i]` and `[x′] + ℓ Σ_i [x′_i]` are ball-homotopic in `ℕ[U]` (Scholze, Lemma 6.4 and proof, pp. 36–37). The prime `ℓ` may equal the residue characteristic.

Route: shrink and compactify by §4.2, choose a `C`-point in each boundary disc, and divide `O(x − x′)` by `ℓ` in the marked Jacobian of §4.3. Choose a divisor of the root line bundle supported away from the boundary discs, with a rational section equal to 1 at each mark and with no zero or pole on any boundary disc (Riemann–Roch on `X̄`, then approximation on the discs); write its positive and negative parts as sums of `C`-points. Interpolate the two tautological sections by `t s₁ + (1 − t) s₂`; their ratio is a one-unit on each boundary disc, so the section never vanishes there and the interpolating effective divisors stay in `U`.

*Needs:* §§3.1, 4.1–4.3; JacobianChallenge Layers A–B (divisors, rational sections, Riemann–Roch); TropicalAndBerkovichArithmetic §§0.21–0.22.

### 4.6 Ball-invariant sheafification of presheaves with transfers

Prove: let `F` be a finitary ball-invariant abelian presheaf with transfers on a strict nonarchimedean base. After inverting every prime `ℓ` with `|ℓ| < 1` somewhere on the base, its derived arc-sheafification is ball-invariant; its reduction modulo `n` is invariant under extensions of geometric Banach points; and rationally its values on open subsets of `A¹_A` with disc complements are unchanged by derived arc-sheafification (Scholze, Theorem 6.3, pp. 35–36).

Route: compute sheafification through the strict basis and quasi-pro-étale sheafification. With torsion coefficients reduce a field extension to topological transcendence degree one and a smooth curve model: a `C`-point gives injectivity, and the homotopy of §4.5 gives surjectivity. Rationally, transfers give finite étale descent, and on the Berkovich line §4.4 splits the Čech sequence of a two-element cover.

*Needs:* §§1.1, 4.1, 4.4, 4.5.

### 4.7 Explicit free motivic sheaves

Prove: for a finitary arc-sheaf of sets `U` over a nonarchimedean small arc-stack `X` and a strict `A` over `X`, the value `ℤmot[U](A)`, after inverting all primes `ℓ` with `|ℓ| < 1` somewhere on `M(A)`, is the group completion of `L_B^pre ℕ[U](A)`; rationally the same formula computes values on open subsets of `A¹_A` with disc complements; and for `n` with `|n| ≥ 1` everywhere on `X`, `ℤmot[U]/n` is invariant under extensions of geometric Banach points (Scholze, Theorem 6.1 and proof, p. 35). The group completion is the animated one, not only on `π₀`, and the integral formula is not asserted without inverting these primes.

Route: the homotopy presheaves of the group-completed singular monoid are finitary presheaves with transfers; §4.6 makes the sheafification ball-invariant, and the universal property identifies it with the free effective motive.

*Needs:* §§2.2, 2.5, 4.6; the animated group completion (gap:animated-group-completion).

### 4.8 Torsion motives and invertibility of residue characteristics

Prove: for `M ∈ Dfin(X, ℤ/n)` with `|n| ≥ 1` everywhere on `X`, ball invariance is equivalent to invariance under extensions of geometric Banach points; for a Banach ring `A` and a prime `p` with `|p|_A < 1`, multiplication by `p` is invertible in `Deff_mot(Marc(A))`; and if `|p| ≥ 1` everywhere on `M(A)`, the subcategory of `p`-power torsion objects of `Deff_mot(Marc(A))` is the left-completed derived category of `p`-power torsion étale sheaves (Scholze, Corollary 6.6 and Theorem 6.7, p. 39; Proposition 1.5, p. 4). The condition `|p|_A < 1` is on the norm of `A` (equivalently, `|p| < 1` at every point of `M(A)`); the second clause has the pointwise condition `|p| ≥ 1`.

Route: one direction is §2.4; for the other, generation by free motives (§2.5) reduces to `ℤmot[U]/n`, handled by §4.7. For `|p| < 1`, reduce to a geometric point, which is perfectoid; its arc-site is invariant under tilting and ball invariance passes to the perfectoid ball, so one may assume characteristic `p`, where the Artin–Schreier sequence `0 → 𝔽_p → B → B → 0`, `x ↦ x^p − x`, and the contractibility of the additive ball give `𝔽_p = 0`. For `|p| ≥ 1`, on strict bases the `p`-power torsion objects are sheaves on a profinite set; descend with left completion.

**Checks.**

- Over a geometric point of residue characteristic `p`, effective motives are `ℤ[1/p]`-linear and the prime-to-`p` torsion subcategory with `ℤ/n` coefficients is `D(ℤ/n)`.
- At the complex point the integral category is `D(ℤ)`, not its rationalization.
- On `Marc(ℤ_p)` with the `p`-adic norm every point of the spectrum is bounded by the norm, so `|p| ≤ 1/p < 1` everywhere and `p` is invertible in `Deff_mot`.
- On `Marc(ℤ)` with the archimedean absolute value the spectrum contains the archimedean points, the trivial norm and the points `|·|_q^s` for primes `q`; `|p| < 1` holds at the points `|·|_p^s` and fails elsewhere, so neither clause applies to `Marc(ℤ)` itself, and excision (§1.6) separates the loci.

*Needs:* §§2.4, 2.5, 4.7; PerfectoidSpaces §§P1.27, P3.20 (tilting of the arc- and étale sites of geometric points); DiamondEtaleCohomology §§C2.2, C2.12 (`Det`, left completion).

### 4.9 Effective motivic tilting

For a small arc-stack `X` with `|p| < 1` everywhere, let `X♭` be its tilt: the arc-stack on perfectoid Banach `𝔽_p`-algebras `R` whose sections are pairs of an untilt `R♯` with `|p| < 1` and a section of `X` over `Marc(R♯)`, sheafified. Prove that tilting induces `Deff_mot(X) ≃ Deff_mot(X♭)` and that both are `ℤ[1/p]`-linear (Scholze, Proposition 6.8 and proof, pp. 39–40).

Route: the arc-sites over `X` and over `X♭` are equivalent through the perfectoid basis (§0.5) and tilting of perfectoid rings. Ordinary ball invariance implies invariance under the perfectoid ball `A⟨T^{1/p^∞}⟩₁` by filtered continuity. Conversely, the map `T ↦ T^p` on the ball induces a split injection `ℤ[1/p] → f_* ℤ[1/p]`, split by the trace divided by `p`; passing up the perfectoid tower gives a sequential colimit of split injections, which is split, so perfectoid-ball invariance implies ball invariance.

*Needs:* §§0.5, 4.1, 4.8; PerfectoidSpaces §§P1.4, P1.19–P1.22, P1.27, P2.12.

### 4.10 The integral homotopy t-structure

Prove: for every small arc-stack `X`, `Deff_mot(X)` is closed under the truncations of `Dfin(X, ℤ)`, so it inherits the integral homotopy t-structure (Scholze, Corollary 6.9, p. 40). Route: use the sequence `M → M ⊗ ℚ → M ⊗ ℚ/ℤ` and §§2.3, 4.8; the remaining point is that the image of a map from a rational effective sheaf in degree zero to a torsion one is effective. A class in that image over a field extension descends by finitarity to a topologically finitely generated algebra over the smaller algebraically closed field, which has a section; so the image is invariant under field extension and §4.8 applies. Separately rationalizing and reducing modulo primes does not control this image.

*Needs:* §§2.3, 2.5, 4.8.

### Examples

Let `X̄ = ℙ¹_C` with marks `0` and `∞`. Every degree-zero line bundle is trivial; two nonzero trivializations give `(a, b) ∈ (C^×)²`, and dividing by simultaneous scaling leaves the coordinate `a/b`, so `J_Z = G_m`, of torus rank `r − 1 = 1`. For `x, y` away from the marks, the rational section `(t − x)/(t − y)` has marked values `1` at `∞` and `x/y` at `0`, so its class has coordinate `x/y`. Every nonzero element of the algebraically closed `C` has an `n`-th root, so multiplication by `n` is surjective on `J_Z(C)`; for `char C = p = n` this still holds although multiplication by `p` is inseparable. The marked Jacobian supplies divisibility of classes, not an étale cover.

### Dependencies

Layers 0–3; JacobianChallenge Layers A, B, D, E; PerfectoidSpaces §§P1.4, P1.19–P1.22, P1.27, P2.12, P3.20; DiamondEtaleCohomology §§C2.2, C2.12; TropicalAndBerkovichArithmetic §§0.17, 0.21–0.22, 1.1, 1.6; gap animated-group-completion.

## Layer 5: Cancellation over every small arc-stack

This layer proves Tate cancellation over arbitrary small arc-stacks and computes symmetric powers, projective cells and the rational motive of `BG_m`.

### 5.1 Permutations of Tate powers

Prove that every permutation acts trivially on `ℤ(1)^{⊗n}` in the homotopy category of `Deff_mot(X)`, for every `n ≥ 0` and every small arc-stack `X` (Scholze, Lemma 7.3 and the discussion before its proof, p. 43). The coherent statement follows after cancellation (§5.3). Since `ℤ(1) = Ḡ_m[−1]`, the swap on `ℤ(1) ⊗ ℤ(1)` and the swap on `Ḡ_m ⊗ Ḡ_m` differ by the Koszul sign `−1`.

Route: identify the reduced motive of `A² ∖ {0}` with `ℤ(2)[3]` using the two standard charts; elementary unipotent matrices act through ball homotopies and generate `SL₂`, which reduces the coordinate interchange to `diag(−1, 1)`; multiplication by `−1` acts trivially on the reduced free motive of `G_m` since total multiplicity is zero; general permutations are products of adjacent transpositions. Cancellation is not used.

*Needs:* §§1.6, 2.5, 3.3, 3.4.

### 5.2 The rational cancellation inverse

Prove: over a nondiscrete algebraically closed nonarchimedean field `C`, for each finitary arc-sheaf of sets `U` and `i ≥ 0`, there is a natural operation from `π_i Hom(ℚmot[(G_m, 1)], ℚmot[U × (G_m, 1)])` to eventually defined sequences in `π_i ℚmot[U]`, whose composite with the Tate unit is the constant sequence, which kills the base-point summand, and whose other composite becomes the identity by Tate interchange (Scholze, proof of Theorem 7.1, pp. 41–43). Sequences are identified when they agree for all sufficiently large `N`.

Route: represent a class on a closed annulus times a subdivided simplicial sphere through §4.7. Form `Y₁` from the discs around the `N`-th roots of unity and `Y₂` from the equation `p₁^N = p₂` in the multivalued graph; for large `N` both fibre over étale spaces with finite geometric fibres and open-ball fibres, and these étale spaces may be nonseparated where points collide. Sum the induced maps to `ℕ[U]` with multiplicities and take the difference. Check independence of representing homotopies and refinements, and use §5.1 twice for the other composite. No single `N` works for all homotopy classes; this is why sequences are eventual.

*Needs:* §§3.5, 4.1, 4.7, 5.1; TropicalAndBerkovichArithmetic §1.1.

### 5.3 Cancellation

Prove: for every small arc-stack `X`, tensoring with `ℤ(1)` is fully faithful on `Deff_mot(X)`; equivalently `M → Hom(ℤ(1), M ⊗_mot ℤ(1))` is an equivalence for every effective `M` (Scholze, Theorem 7.1 and Remark 7.2, pp. 40–43; Theorem 1.9, p. 6). There is no field or smoothness hypothesis on `X`. After cancellation, the symmetric-group actions on Tate powers are homotopy-coherently trivial, because the endomorphism space of the unit is discrete.

Route: by the annulus model and proper base change, compare internal Homs with ambient derived sheaves and reduce to strict bases, where compactness of `ℤ(1)` (§3.5) reduces to geometric points. At the complex point `ℤ(1)` is the unit. With torsion coefficients apply §4.8. In the rational nonarchimedean case apply §5.2 on free generators. Combine rational and torsion statements integrally and descend. The statement is that the unit of the adjunction is an equivalence, not only injectivity on `π₀`.

*Needs:* §§1.7, 2.5, 3.5, 4.8, 5.1, 5.2.

### 5.4 Symmetric powers and projective cells

Prove: for `n ≥ 0`, `Symⁿ(ℚ(1)) ≃ ℚ(n)`; for `n ≥ 1` the cofibre of `ℤmot[ℙ^{n−1}] → ℤmot[ℙⁿ]` is `ℤ(n)[2n]`; and there is a canonical decomposition `ℚmot[BG_m] ≃ ⊕_{n≥0} ℚ(n)[2n]`, with `ℙⁿ` mapping onto the summands `0 ≤ i ≤ n` through the class of `O(1)` (Scholze, Corollaries 8.1–8.2 and proof, p. 44). The cell cofibre is integral; the splitting is rational. Free motives of `BG_m` are defined by left Kan extension from smooth charts.

Route: coherent Tate symmetry after cancellation identifies rational symmetric powers. The cell cofibres come from the affine chart and the `A¹`-bundle over `ℙ^{n−1}`. Animate the augmentation-ideal filtration on the group algebra of the 1-connective `BG_m`; its graded pieces have increasing connectivity, and the projective cells split the filtration and give convergence to the direct sum.

**Checks.**

- `ℙ⁰` maps onto the `n = 0` unit summand.
- `ℤmot[ℙ¹] = ℤ ⊕ ℤ(1)[2]`.
- The result is a direct sum: at the complex point `ℚmot[BG_m]` is the rational homology of `ℂℙ^∞`, `⊕_{n≥0} ℚ[2n]`, which is a sum and not a product.

*Needs:* §§2.5, 3.4, 5.1, 5.3; the animated group completion and augmentation filtration (gap:animated-group-completion).

### Examples

Apply the rational inverse of §5.2 to an element represented on a closed annulus. For large `N`, the two multivalued counting constructions applied to the image of the Tate unit have total multiplicities `N` and `N − 1`, and their difference `N − (N − 1) = 1` recovers the class. A component of multiplicity `p` in residue characteristic `p` contributes `p` to the count; counting distinct roots instead changes the answer. On the base-point summand the two counts agree, and the difference is zero.

### Dependencies

Layers 1–4; TropicalAndBerkovichArithmetic §1.1; gap animated-group-completion.

## Layer 6: Motivic K-theory and Adams weights

This layer constructs motivic K-theory as the universal ball-invariant arc-sheaf of spectra under connective algebraic K-theory, proves it finitary, and identifies its rationalization with `⊕_{n≥0} ℚ(n)[2n]`, canonically split by Adams eigenvalues.

### 6.1 Motivic K-theory

For a Banach ring `A` let `Kcn(A)` be the connective K-theory spectrum of the underlying abstract ring, the group completion of the E∞ space of finite projective `A`-modules under direct sum, an E∞-ring under tensor product. Define `Kmot` as the universal ball-invariant arc-sheaf of spectra under `A ↦ Kcn(A)`: the spectral ball localization (§2.2) of the arc-sheafification. Prove that `Kmot` is finitary and inherits an E∞-ring structure (Scholze, Definition 8.3 and Proposition 8.4, pp. 44–45; Theorem 1.7(i), p. 5). `Kmot` is a sheaf of spectra, not an object of `D(ℤ)`.

API:

- Maps from `Kmot` to a ball-invariant arc-sheaf of spectra correspond to maps from `Kcn`.
- The map `Kcn → Kmot` is a map of E∞-ring presheaves, and `Kmot` is an E∞-ring sheaf.
- On the strict basis, `Kmot` commutes with completed filtered colimits.

**Checks.**

- A free module of rank one maps to the unit and the zero module to zero; on `π₀` at a geometric point the rank gives a map `π₀ Kmot(C) → ℤ`, split by the unit.
- `Kmot(A) → Kmot(A⟨T⟩₁)` is an equivalence, whereas for a nonarchimedean geometric point `C`, `K₁(C) = C^× → K₁(C⟨T⟩₁) ⊇ C⟨T⟩₁^×` is not surjective (the one-unit `1 + aT`, `0 < |a| < 1`), so `Kcn` is not ball-invariant.
- At the complex point `Kmot ⊗ ℚ = ⊕_{n≥0} ℚ[2n]` (rational topological K-theory of a point, by §6.3 and `ℚ(n) = ℚ`), not the rank sheaf `ℚ[0]` alone.

Route: take the multiplicative connective K-theory model of GeneralAlgebraicKTheoryPartII; resolve the sheafified group completion of `⨿_n ∗/GL_n` by classifying spaces of products of `GL_n` through a Breen–Deligne resolution, and these by `GL_n`-charts, whose free ball-invariant sheaves are finitary by §2.5; apply symmetric monoidal spectral localization.

*Needs:* §§2.2, 2.5; GeneralAlgebraicKTheoryPartII KII.1/additive-k and KII.4/multiplicative-k; GeneralAlgebraicKTheory §3.2; EnhancedDerivedSheaves §E5:presentability.2 (`spectra`, stabilization) and §E5:abstract.3; the Breen–Deligne resolution (gap:animated-group-completion).

### 6.2 Rational flag invariants

Prove: for `n ≥ 1`, the `Σ_n`-invariants of `ℚmot[GL_n/G_m^n]`, for the action of the normalizer of the diagonal torus, are `ℚ[0]` (Scholze, proof of Proposition 8.5, pp. 45–46).

Route: induct on `n`; the `Σ_{n−1}`-invariants identify with `ℚmot[ℙ^{n−1}]` through the projection to the first column and the flag fibration, so by §5.4 they are `⊕_{0≤i<n} ℚ(i)[2i]`, and the averaging idempotent `e` of `Σ_n` acts on this sum. By cancellation (§5.3) `Hom(ℚ(i)[2i], ℚ(j)[2j])` vanishes for `i < j` and `End(ℚ(i)[2i]) = H⁰(X, ℚ)`, so `e` is triangular with diagonal entries idempotent locally constant rationals. The objects and the action are pulled back from the terminal arc-sheaf `Marc(ℤ)`, whose spectrum is connected, so the diagonal entries are rational numbers and may be computed at the complex point. There, by §1.3, the realization is the rational cohomology of `GL_n(ℂ)/T(ℂ) ≃ U(n)/T`, which is concentrated in even degrees (Bruhat cells) and has total dimension `χ(U(n)/T) = n!`; each `w ≠ 1` in `Σ_n` acts on `U(n)/T` without fixed points, so its Lefschetz number, which is its trace on cohomology, vanishes. Hence the cohomology is the regular representation of `Σ_n`, its invariants are one-dimensional, and they are `H⁰`. So the diagonal of `e` is `(1, 0, …, 0)` and its image is `ℚ[0]`.

**Checks.**

- For `n = 1` the group is trivial and `ℚmot[G_m/G_m] = ℚ[0]`.
- For `n = 2`, `ℚmot[ℙ¹] = ℚ ⊕ ℚ(1)[2]` and the transposition acts on the complex realization `H*(ℙ¹; ℚ)` by `+1` on `H⁰` and `−1` on `H²` (it is the antipodal map of the sphere `U(2)/T ≅ S²`, of degree `−1`), so the invariants are `ℚ[0]`.
- A claim that arbitrary realizations are conservative is not used: only the computation of rational diagonal entries.

*Needs:* §§1.3, 2.6, 5.3, 5.4; RepresentationTheory (LieGroups) Layer 8 (Bruhat decomposition and the cohomology of the flag manifold); CharacteristicClasses §C5 (the Euler characteristic of `G/T` equals `|W|`); MorseNovikov (the Lefschetz fixed-point formula).

### 6.3 The canonical rational splitting of motivic K-theory

Prove: the map `ℚmot[BG_m] → Kmot ⊗ ℚ` induced by line bundles is an equivalence; the descending motivic filtration on `Kmot ⊗ ℚ` is separated with graded pieces `ℚ(n)[2n]` for `n ≥ 0`; and the endomorphism of `ℚmot[BG_m]` induced by the squaring map of `G_m` acts by `2ⁿ` on the `n`-th graded piece, which splits the filtration canonically and gives `Kmot ⊗ ℚ ≃ ⊕_{n≥0} ℚ(n)[2n]` (Scholze, Proposition 8.5 and Corollary 8.6, pp. 45–46; Theorem 1.7(ii), p. 5). On classes of line bundles the squaring map is the second Adams operation `ψ²[L] = [L²]` of SchemeKTheoryOperations §§6.4 and 6.8, so the summands are the Adams eigenspaces. Multiplication sends weights `(m, n)` to `m + n`.

Route: `Kcn` is the group completion of `⨿_n ∗/GL_n` and the source is the group completion of `⨿_n ∗/(G_m^n ⋊ Σ_n)`; by Breen–Deligne resolutions it suffices that `ℚmot[∗/(G_m^n ⋊ Σ_n)] → ℚmot[∗/GL_n]` is an equivalence, which is §6.2. Transfer the convergent augmentation filtration of §5.4; the distinct eigenvalues `2ⁿ` give canonical projectors on finite stages, and increasing connectivity identifies the colimit with the direct sum.

*Needs:* §§5.4, 6.1, 6.2; SchemeKTheoryOperations §§6.4, 6.8 (`ψ^k[L] = [L^k]`); the animated group completion (gap:animated-group-completion).

### Examples

The rational motive of `ℙ²` is `ℚ ⊕ ℚ(1)[2] ⊕ ℚ(2)[4]`, and the corresponding three-step piece of the filtration has `ψ²`-eigenvalues `1, 2, 4`. Writing `ψ = ψ²`, the projectors on this piece are `(ψ − 2)(ψ − 4)/3`, `−(ψ − 1)(ψ − 4)/2` and `(ψ − 1)(ψ − 2)/6`; evaluated at the eigenvalues `1, 2, 4` they give `(1, 0, 0)`, `(0, 1, 0)` and `(0, 0, 1)`. The denominators `3 = (1−2)(1−4)`, `−2 = (2−1)(2−4)` and `6 = (4−1)(4−2)` are nonzero because the eigenvalues are distinct.

### Dependencies

Layers 1–5; GeneralAlgebraicKTheory §3.2; GeneralAlgebraicKTheoryPartII KII.1, KII.4; SchemeKTheoryOperations §§6.4, 6.8; EnhancedDerivedSheaves §§E5:abstract.3, E5:presentability.2; RepresentationTheory (LieGroups) Layer 8; CharacteristicClasses §C5; MorseNovikov; gap animated-group-completion.

## Layer 7: The K-theory of one-units

This layer identifies motivic K-theory explicitly through the cofibre of the K-theory of the ideal `A_{<1}`, first under a root hypothesis, then on perfectoid rings and for the root-free homotopy K-theory variant, and on strict bases after inverting the necessary primes; it also equips the integral cofibre over a geometric point with an E∞-structure.

### 7.1 The one-unit K-cofibre

Let `A` be a nonarchimedean uniform Banach ring with a topologically nilpotent unit `T` admitting `n_i`-th roots for a strictly increasing sequence of integers `n_i`. Then `I = A_{<1}` is the colimit of a unitization `B ⊃ I` along multiplication by `T^{1/n_i − 1/n_{i+1}}`, hence flat and idempotent over `B` and Tor-unital. Let `K(I)` be its nonunital K-theory, `fib(K(B) → K(B/I))`, which is independent of `B`, and define `E_K(A) = cofib(K(I) → K(A))`, and `E_Kcn(A)` with connective covers (Scholze, discussion before Proposition 8.7, pp. 46–47). Prove that `E_K` and `E_Kcn` commute with completed filtered colimits of Banach rings in this class and agree on totally disconnected rings (Scholze, Proposition 8.8, p. 47). `K(I)` is the nonunital K-theory, not the K-theory of the group `1 + I`.

API:

- A contractive map of rings in this class, compatible with chosen roots, induces a map of cofibre sequences.
- Replacing the unitization `B` by any other unital ring containing `I` as an ideal leaves `K(I)` and `E_K` canonically unchanged.
- `E_K` commutes with completed filtered colimits in the class.

**Checks.**

- For `I = 0` the nonunital term vanishes and `E_K(A) = K(A)`; this is the case of a discrete field, which is excluded from the class because it has no topologically nilpotent unit.
- For a valued field `C` in the class, `K(C_{<1}) = fib(K(O_C) → K(k))` with `k` the residue field, and `E_K(C)` sits in a cofibre sequence `K(O_C) → K(C) ⊕ K(k) → E_K(C)`.
- For `A = ℚ_p`, `I = pℤ_p` has `I/I² ≅ 𝔽_p ≠ 0`, so `Tor₁` of the augmentation over `ℤ ⊕ I` is nonzero and `I` is not Tor-unital; `ℚ_p` has no compatible roots of a pseudouniformizer and lies outside the class.

Route: identify `K(I)` with the continuous K-theory of the dualizable category of almost modules (RefinedTraceMethods §4.20), or with Suslin's nonunital K-theory under Tor-unitality (GeneralAlgebraicKTheory §8.10). For completion invariance write `A = (ℤ ⊕ A_{<1})[1/T]`; the cofibre sequence `K(ℤ ⊕ A_{<1} on T) → K(ℤ ⊕ A_{<1}) → K(A)` has middle term `K(ℤ)` after passing to the cofibre of `K(A_{<1})`, and its left term is unchanged under `T`-adic completion by Thomason–Trobaugh. On totally disconnected rings reduce by finitarity to Banach fields, where `K`, `O_K` and `k` are valuation rings with vanishing negative K-theory.

*Needs:* §3.1; RefinedTraceMethods §4.20; GeneralAlgebraicKTheory §§8.3, 8.10, 10.10, 13.4–13.5; SchemeKTheoryOperations §§3.1, 3.3, 3.8; the K-theory of valuation rings (gap:valuation-ring-k-regularity).

### 7.2 Connective K-theory of one-units vanishes motivically

Prove: the universal ball-invariant arc-sheaf under `A ↦ Kcn(A_{<1})` on the class of §7.1 is zero (Scholze, Proposition 8.7, p. 47). Route: with `B = ℤ ⊕ A_{<1}`, `Kcn(B)` is the group completion of `⨿_n ∗/GL_n(B)`, and `GL_n(B) → GL_n(ℤ)` has ball-contractible fibres by scaling the infinitesimal part of a matrix by `t` in the unit ball, which preserves invertibility since `|ta| < 1` for `|t| ≤ 1`, `|a| < 1`; group-complete and ball-localize.

*Needs:* §§2.2, 6.1, 7.1.

### 7.3 Analytic descent of the K-cofibre on perfectoid rings

Prove: for a perfectoid Banach ring `A` with `|p|_A < 1`, `A ↦ E_K(A)` is a sheaf for the analytic topology; if moreover all sheaves on `M(A)` are Postnikov complete, then `E_K(A) ⊗ ℚ` is the value at `A` of a finitary ball-invariant hypercomplete arc-sheaf and `Kmot(A) ⊗ ℚ ≃ E_K(A) ⊗ ℚ` (Scholze, Theorem 8.11 and Corollary 8.12, pp. 48–49). The Postnikov hypothesis holds when `M(A)` has finite covering dimension. Analytic descent alone does not give arc-hyperdescent of unbounded objects.

Route: `fib(K(A_{<1}) → K(A))` is the continuous K-theory of torsion almost `A_{≤1}`-modules, by the two Verdier sequences `D_tor(A_{≤1})^a → D(A_{≤1})^a → D(A)` and `D(A_{≤1})^a → D(A_{≤1}) → D(A_{≤1}/A_{<1})`. For a closed `Z ⊂ M(A)` the almost algebra `O⁺(Z)^a` is an idempotent complete `A^a_{≤1}`-algebra, by almost acyclicity of `O⁺` on rational coverings; this gives Verdier sequences localizing on `M(A)`, and continuous K-theory turns a cover by two closed subsets into a pullback. Rationally, traces give profinite étale descent; Postnikov completeness on `M(A)` compares with arc-hypersheafification. Perfectoid-ball invariance reduces by excision to `K(O_C[T^{1/p^∞}]) → K(k[T^{1/p^∞}])` and `A¹`-invariance of K-theory over valuation rings; it implies ball invariance by §4.9.

*Needs:* §§1.1, 4.9, 7.1; RefinedTraceMethods §4.20; PerfectoidSpaces §§P2.3, P2.7; TropicalAndBerkovichArithmetic §§0.28, 0.30 (rank-one points of `Spa(A, A°)` and `M(A)`); EnhancedDerivedSheaves §E2.4 and gap:compact-hausdorff-dimension (Postnikov completeness from finite covering dimension); gap:valuation-ring-k-regularity.

### 7.4 The root-free analytic KH-cofibre

Prove: for every analytic nonarchimedean Banach ring `A`, the functor `A ↦ E_KH(A) = cofib(KH(A_{<1}) → KH(A))` is a sheaf for the analytic topology; if all sheaves on `M(A)` are Postnikov complete, `E_KH ⊗ ℚ` is a finitary ball-invariant arc-hypersheaf there and `Kmot(A) ⊗ ℚ ≃ E_KH(A) ⊗ ℚ`; and if `A` is totally disconnected this equals `E_K(A) ⊗ ℚ` (Scholze, Theorem 8.13 and proof, pp. 49–50). Here `KH(A_{<1})` is the homotopy K-theory of the nonunital ring, defined through any unitization because `KH` satisfies excision; no root hypothesis is needed.

Route: by finitarity and noetherian approximation assume `A_{≤1}` noetherian; relate analytic descent to descent along admissible blowups of formal models, which is cdh descent for `KH`. Rationally use trace descent and Postnikov completeness as in §7.3; ball invariance and the replacement of `KH` by `K` on totally disconnected rings use `K`-regularity of valuation rings. An alternative route through pro-cdh descent of `K` followed by ball localization uses the same supplier sections.

*Needs:* §§1.1, 6.1; GeneralAlgebraicKTheory §§10.10, 13.4; EnhancedDerivedSheaves §E2.4 and gap:compact-hausdorff-dimension; gap:kh-excision-cdh-descent; gap:valuation-ring-k-regularity.

### 7.5 Motivic K-theory of smooth formal models

Prove: if `C` is a nondiscrete algebraically closed nonarchimedean field and `A` is a Banach `C`-algebra such that `A_{≤1}` is the `π`-adic completion of a smooth `O_C`-algebra, then `Kmot(A) ⊗ ℚ ≃ cofib(K(A_{<1}) → K(A)) ⊗ ℚ`, naturally in `A`, through the map from `K(A)` (Scholze, Theorem 1.7(iv), p. 5; Proposition 8.8 and Theorem 8.13, pp. 47, 49–50). The hypothesis is on the ring of power-bounded elements itself. The roots required in §7.1 come from the algebraically closed field `C`.

Route: `M(A)` is a finite-dimensional compact space, so §7.4 applies; replace `KH` by `K` in each of `A_{≤1}`, `A_{≤1}/A_{<1}` (a smooth algebra over the residue field) and `A` (a regular ring), and use Thomason–Trobaugh to compare the supported terms through completion.

**Checks.**

- For `A = C`, `A_{≤1} = O_C` is the completion of the smooth `O_C`-algebra `O_C`, and the formula is `Kmot(C) ⊗ ℚ = E_K(C) ⊗ ℚ`, the rational case of §7.6.
- For the closed unit ball `A = C⟨T⟩₁`, `A_{≤1} = O_C⟨T⟩`, and ball invariance gives `Kmot(C⟨T⟩₁) ⊗ ℚ = Kmot(C) ⊗ ℚ`.
- Taking the fibre instead of the cofibre of `K(A_{<1}) → K(A)` fails already for `A = C` on `π₀`: the cofibre has `π₀ = ℤ` (the rank), while the fibre has `π₀ = coker(K₁(C_{<1}) → K₁(C)) = C^×/(1 + C_{<1})`.

*Needs:* §§1.5, 7.4; SchemeKTheoryOperations §3.8; TropicalAndBerkovichArithmetic §0.17; gaps kh-excision-cdh-descent and valuation-ring-k-regularity.

### 7.6 Motivic K-theory on strict bases

Prove: fix a set `S` of primes. On nonarchimedean strictly totally disconnected Banach rings `A` with `|ℓ| ≥ 1` everywhere on `M(A)` for every prime `ℓ ∉ S`, the functor `A ↦ E_K(A)[1/S]` is a finitary ball-invariant arc-sheaf of spectra, hence equals `Kmot[1/S]`. In particular, for a nondiscrete algebraically closed nonarchimedean field `C` of residue-characteristic exponent `p`, `Kmot(C) ≃ E_K(C)[1/p]` (Scholze, Theorem 8.9 and proof, pp. 47–49; Theorem 1.7(iii), p. 5). In residue characteristic zero, `p = 1` and nothing is inverted.

Route: by §7.2 and continuity compare `E_Kcn` with the universal localized object. With torsion coefficients prime to the residue characteristics, `K(C_{<1}; ℤ/n) = 0` by henselian rigidity for `(O_C, C_{<1})`, so `E_K(C)/n = K(C; ℤ/n)`, which is invariant under extensions of algebraically closed fields; hence ball invariance by §2.4. Rationally use §7.3 where `|p| < 1` and §7.4 in equal characteristic zero. Combine rational and torsion statements and apply §1.1.

*Needs:* §§1.1, 4.8, 7.2, 7.3, 7.4; KTheoryFiniteLocalFields §2.1; gap:suslin-rigidity.

### 7.7 The integral E∞-structure on the field cofibre

Prove: for a nondiscrete algebraically closed nonarchimedean field `C`, `E_K(C)`, without inverting the residue characteristic, carries a natural E∞-`K(C)`-algebra structure (Scholze, Corollary 8.10 and proof, pp. 47–48; Remark 1.8, p. 6). The structure is not a formal consequence of `E_K(C)` being a cofibre.

Route: if the residue characteristic is zero, `E_K(C) = Kmot(C)` by §7.6. Otherwise, after inverting `p` use `Kmot(C)` again; after `p`-completion `K(O_C)^∧_p ≃ K(C)^∧_p`, so `E_K(C)^∧_p ≃ K(k)^∧_p`, which is `ℤ_p` because the positive K-groups of the perfect field `k` are uniquely `p`-divisible; `ℤ_p` has a unique E∞-`K(C)`-algebra structure. The overlap map `E_K(C)[1/p] → E_K(C)^∧_p[1/p] = ℚ_p` is the rank `K(C) → ℤ`, trivial on `K(C_{<1})`, followed by `ℤ → ℚ_p`, which is a map of E∞-algebras; glue by the arithmetic fracture square.

**Checks.**

- `π₀ E_K(C)` contains `ℤ` through the rank, and the gluing on `π₀` is `ℤ = ℤ[1/p] ×_{ℚ_p} ℤ_p`.
- For `p = 2` the same argument applies; no odd-prime restriction is made.
- A ring structure given only on homotopy groups does not determine the gluing map as a map of E∞-algebras.

*Needs:* §7.6; KTheoryFiniteLocalFields §1.5 (`perfect_positiveK_uniqueDivisible`); gap:padic-k-integers-oc; gap:einfty-fracture-square.

### Examples

For an algebraically closed nonarchimedean `C` with valuation ring `O_C` and residue field `k`, nonunital excision identifies `K(C_{<1})` with `fib(K(O_C) → K(k))`, so `E_K(C)` sits in the cofibre sequence `K(O_C) → K(C) ⊕ K(k) → E_K(C)`. If `k` has characteristic `p`, the `p`-completed equivalence `K(O_C)^∧_p ≃ K(C)^∧_p` cancels the first two terms after completion and leaves `E_K(C)^∧_p ≃ K(k)^∧_p ≃ ℤ_p`; away from `p`, `E_K(C)` is `Kmot(C)`. The arithmetic fracture square glues the two pieces along the rank map.

### Dependencies

Layers 1–6; RefinedTraceMethods §4.20; GeneralAlgebraicKTheory §§8.3, 8.10, 10.10, 13.4–13.5; SchemeKTheoryOperations §§3.1, 3.3, 3.8; KTheoryFiniteLocalFields §§1.5, 2.1; PerfectoidSpaces §§P2.3, P2.7; TropicalAndBerkovichArithmetic §§0.17, 0.28, 0.30; gaps valuation-ring-k-regularity, kh-excision-cdh-descent, suslin-rigidity, padic-k-integers-oc, einfty-fracture-square, compact-hausdorff-dimension.

## Layer 8: Stable motives and six operations

This layer inverts the Tate twist, proves projective-line duality and the stable affine pushforward, and constructs the six-functor formalism on small arc-stacks, including stable tilting.

### 8.1 Stable motivic sheaves

For a small arc-stack `X` define `Dmot(X) = Deff_mot(X)[ℤ(1)^{⊗−1}]`, the presentably symmetric monoidal stable ∞-category obtained by universally inverting `ℤ(1)` (Scholze, Definition 9.1, p. 50; Definition 1.11, p. 6). Prove that it is the colimit of `− ⊗ ℤ(1)` in presentable ∞-categories and the limit of `Hom(ℤ(1), −)` in ∞-categories, so that an object is a sequence `(M_n)_{n≥0}` with `M_n ≃ Hom(ℤ(1), M_{n+1})`, and that `Deff_mot(X) → Dmot(X)`, `M ↦ (M(n))_n`, is fully faithful.

API:

- A colimit-preserving symmetric monoidal functor out of `Deff_mot(X)` that inverts `ℤ(1)` factors uniquely through `Dmot(X)`.
- For all integers `m, n`, `ℤ(m) ⊗ ℤ(n) ≃ ℤ(m + n)`.
- The functor from effective motives is fully faithful and compatible with pullback.

**Checks.**

- At the complex point `ℤ(1)` is the unit, so stabilization does not change `D(ℤ)`.
- `ℤ(1) ⊗ ℤ(−1) ≃ ℤ`: in the sequence model `ℤ(−1)` has terms `M_n = ℤ(n − 1)` for `n ≥ 1` and `M₀ = Hom(ℤ(1), ℤ)`, and tensoring with `ℤ(1)` shifts the index, giving `(ℤ(n))_n`, the image of the unit.
- An effective `M` has `n`-th term `M(n)`, with bonding maps the cancellation equivalences `M(n) ≃ Hom(ℤ(1), M(n+1))`; bonding by `− ⊗ ℤ(1)` instead of `Hom(ℤ(1), −)` gives the wrong limit.

Route: coherent triviality of the cyclic permutation on `ℤ(1)^{⊗3}` (§5.3) makes the telescope formula of formal inversion apply; cancellation identifies effective `M` with `(M(n))_n`.

*Needs:* §§2.1, 3.4, 5.1, 5.3; EnhancedDerivedSheaves §E5:presentability.2 (`tensorInversion`, `presentableTensor`).

### 8.2 Projective-line duality

Prove: for `f : ℙ¹_X → X`, `f_♯ ≃ f_* ⊗ ℤ(1)[2]` as functors `Dmot(ℙ¹_X) → Dmot(X)`; consequently `f_*` satisfies the projection formula on `Dmot` (Scholze, Proposition 9.3 and proof, pp. 51–52). Before stabilization the projection formula for `f_*` fails (§3.3); the twist becomes invertible only in `Dmot`.

Route: construct the unit from the `G_m`-torsor of `O(Δ)` on `ℙ¹_X ×_X ℙ¹_X`, trivialized off the diagonal, which gives `Δ_* ℤ → ℤ(1)[2]`; construct the counit from the reduced cohomology of `ℙ¹`, which by ball invariance is that of `G_m` and is computed by `ℤmot[G_m]/ℤmot[∗] = Ḡ_m = ℤ(1)[1]`. Check the triangle identities on objects `j_! M` for the affine chart `j : A¹_X → ℙ¹_X` and on geometric fibres, reducing to the unit.

*Needs:* §§1.6, 2.6, 3.4, 5.4, 8.1.

### 8.3 Stable motivic tilting

Prove: if `|p| < 1` everywhere on `X`, tilting induces a symmetric monoidal equivalence `Dmot(X) ≃ Dmot(X♭)`, functorial in `X`, compatible with effective motives and carrying `ℤ(n)` to `ℤ(n)` for all integers `n` (Scholze, Proposition 9.7, pp. 52–53). Route: transport the description `ℤ(1) = Ḡ_m[−1]` through tilting, `C^×/(1 + C_{<1}) ≅ (C♭)^×/(1 + C♭_{<1})` at geometric points, and apply the universal property of tensor inversion to the equivalence of §4.9 and its inverse.

*Needs:* §§3.4, 4.9, 8.1.

### 8.4 The stable affine pushforward

Prove: for a map `f : Marc(B) → Marc(A)` of finite cohomological dimension such that `Marc(B)` embeds into a finite-dimensional closed ball over `Marc(A)`, the functor `f_*` on stable motives preserves all colimits, commutes with every base change and satisfies the projection formula; the same holds for maps that are arc-locally on the target of this form (Scholze, Theorem 9.2 and proof, pp. 50–51). The general proper case is §9.4.

Route: apply §1.7 levelwise in the sequence model of §8.1; reduce the projection formula to geometric points, then to a one-dimensional ball embedded in `ℙ¹`, and apply §8.2 and excision.

*Needs:* §§1.6, 1.7, 8.1, 8.2.

### 8.5 Six operations on small arc-stacks

Prove: the assignment `X ↦ Dmot(X)` extends to a six-functor formalism on small arc-stacks for the class of `!`-able maps produced by the extension theorem from affine maps of finite cohomological dimension (with `f_! = f_*` on those); open immersions are `!`-able with `j_!` left adjoint to `j^*`; étale maps, meaning finitary maps with finite geometric fibres, are `!`-able and cohomologically étale; and for a Banach field `K`, every smooth `K`-analytic space without boundary is cohomologically smooth (Scholze, Propositions 9.4–9.5 and Corollary 9.6, p. 52, and the construction before them). Not every map is `!`-able, and smoothness requires the absence of boundary: the closed disc `f : Marc(C⟨T⟩₁) → Marc(C)` over a nonarchimedean geometric point is proper with `f_* ℤ = ℤ` by ball invariance, whereas a proper cohomologically smooth map of dimension one would have `f_* f^! ℤ = f_* ℤ(1)[2] = ℤ(1)[2]` equal to the dual `(f_* ℤ)^∨ = ℤ`, which fails since `ℤ(1)[2] ⊗ ℚ = (Ḡ_m ⊗ ℚ)[1] ≠ ℚ`.

Route: apply the construction principle of AnalyticStacks §0.5 on the category of affine arc-sheaves `Marc(A)` with `I` the open immersions and `P` the affine maps of finite cohomological dimension, verifying base change and projection formulas from §§1.6, 8.4; extend to small arc-stacks by §0.6 there, on the subcanonical site of small arc-stacks with the arc-topology. Compute `j_!` for `{|a| < 1}` as the colimit over the affine pieces `{|a| ≤ c}`, `c < 1`; reduce étale maps to finite fibres and open immersions, and smooth maps to affine space and `ℙ¹`-duality on charts.

*Needs:* §§1.4, 1.6, 8.2, 8.4; AnalyticStacks §§0.4–0.6, 0.9–0.10; TropicalAndBerkovichArithmetic §§0.21–0.22.

### Examples

At the complex point `ℤ(1) = ℤ`, so `ℤmot[ℙ¹] = ℤ ⊕ ℤ[2]`, and `f_* ℤ = RΓ(ℙ¹, ℤ) = ℤ ⊕ ℤ[−2]`. Projective-line duality predicts `f_♯ ℤ ≃ f_* ℤ ⊗ ℤ(1)[2] = ℤ[2] ⊕ ℤ`, which agrees with the free motive of `ℙ¹` after reordering; the shift `[2]` and the twist are both fixed by this identity. In a nonarchimedean fibre `ℤ(1) = Ḡ_m[−1]`, so omitting the twist would fail the same computation after base change.

### Dependencies

Layers 1–5; EnhancedDerivedSheaves §E5:presentability.2; AnalyticStacks §§0.4–0.6, 0.9–0.10; TropicalAndBerkovichArithmetic §§0.21–0.22.

## Layer 9: Rigidity and mixed Tate sheaves

This layer proves compact generation at geometric points, the general proper projection formula, quasi-pro-étale monadicity, rigidity over analytic bases and weak categorical Künneth, and constructs the pointwise Artin–Tate subcategory with its descent and rigidity.

### 9.1 Compact generators at geometric points

Prove: for a nondiscrete algebraically closed Banach field `C`, `Dmot(C)` is compactly generated, its unit is compact, and its compact objects are exactly its dualizable objects; if `C` has equal characteristic and `k → C` splits its residue field `k`, the objects `ℤmot[X_C](−j)`, for `X` smooth projective over `k` and `j ≥ 0`, form a family of compact generators (Scholze, Proposition 10.1 and proof, p. 53; Theorem 1.12, p. 6). In particular `Dmot(C)` is rigid. The discrete algebraically closed case is §10.3. The description of generators needs equal characteristic and the splitting.

Route: by §8.3 reduce to equal characteristic. Pushforward along smooth proper maps preserves dualizables, and the unit is compact, so the displayed objects are compact. To show they generate, detect a vanishing object by induction on the topological transcendence degree of geometric field extensions: type 4 points reduce to balls, type 3 points to annuli and Tate twists, and the residually transcendental case to smooth finite-type models, compactified with normal-crossing boundary after an alteration, with trace descent and localization reducing the dimension. Torsion objects are detected by the unit (§4.8) before the rational induction. Alterations, not resolution of singularities, are used.

*Needs:* §§2.5, 3.5, 4.8, 8.3, 8.5; AdicCoefficientsAndComparisons Layer L5 (`smoothAlterationPair`); EnhancedDerivedSheaves §E5:presentability.4 (`IsRigid`); TropicalAndBerkovichArithmetic §§1.1–1.2.

### 9.2 Compact morphisms between free motives

Prove: if `X` is analytic affine of finite cohomological dimension, or satisfies the hypotheses of §9.6, and `U ⊂ V ⊂ Aⁿ_X` are open with `U → V` factoring through a quasi-compact subset, then `ℤmot[U] → ℤmot[V]` is a compact morphism in `Dmot(X)`; such maps and their negative Tate twists exhaust generators by compact morphisms, and tensor products of such compact morphisms are compact (Scholze, proof of Proposition 10.3, pp. 54–55). Compact morphism is the notion of EnhancedDerivedSheaves §E5:presentability.4, not compactness of source and target.

Route: the induced map of mapping functors factors through evaluation on the quasi-compact subset, which preserves filtered colimits by §1.7; exhaust each `V` by relatively compact `U`; in the one-point quotient case use the profinite quotient presentation of a geometric point and invariant open domains.

**Checks.**

- For `X = Marc(C)` and `U = {|T| < 1} ⊂ V = {|T| < 2}`, the inclusion factors through the closed disc `{|T| ≤ 1}` and is compact, although `ℤmot[U]` need not be compact over a general base.
- The identity of `ℤmot[{|T| < 1}]` does not factor through a quasi-compact subset of the open disc and is not of this form.
- Over two complex points the unit `(ℤ, ℤ)` is compact and its identity is a compact morphism.

*Needs:* §§1.7, 2.5; EnhancedDerivedSheaves §E5:presentability.4 (`IsCompactMorphism`, `dualizable_filteredColimit`).

### 9.3 Quasi-pro-étale monadicity

Prove: for a proper quasi-pro-étale map `f : Y → X` of small arc-stacks, `f_*` induces `Dmot(Y) ≃ Mod_{f_* ℤ}(Dmot(X))`; and if `Y = lim_i Y_i` is a cofiltered limit of such maps, then `Dmot(Y) ≃ colim_i Dmot(Y_i)` in presentable stable ∞-categories (Scholze, Lemma 10.4, p. 55). No surjectivity is assumed; the conservative functor is `f_*`.

Route: the fibres are profinite sets, so `f` has cohomological dimension zero, `f_*` preserves colimits and satisfies the projection formula (§1.7), and global sections on profinite fibres detect objects of `Dmot(Y)`, so `f_*` is conservative; apply Barr–Beck–Lurie and identify the monad by projection; finitarity gives `f_* ℤ = colim_i f_{i*} ℤ`, and module base change gives the categorical colimit.

**Checks.**

- For `Y = ∅` the algebra `f_* ℤ` is zero and its module category is zero.
- For `Y = X ⨿ X` the algebra is `ℤ × ℤ` and `Mod_{ℤ×ℤ}(Dmot(X)) = Dmot(X) × Dmot(X)`.
- A statement with `f^*` as the conservative functor would require surjectivity of `f`.

*Needs:* §§0.6, 1.7, 8.1; EnhancedDerivedSheaves §E5:abstract.5 (`barrBeckLurie`) and §E5:presentability.2 (`categoricalModuleBaseChange`).

### 9.4 Proper pushforward after geometric rigidity

Prove: for every proper 0-truncated map `f` of small arc-stacks of locally finite cohomological dimension, `f_*` on `Dmot` preserves colimits, commutes with arbitrary base change and satisfies the projection formula; reapplying the extension theorem with this class of proper maps enlarges the class of `!`-able maps of §8.5 (Scholze, Corollary 10.2 and the following discussion, pp. 53–54).

Route: colimits and base change come from §1.7 in the sequence model; the projection formula is checked at geometric points, where by §9.1 the category is generated by dualizables, for which linearity is automatic.

*Needs:* §§1.7, 8.1, 8.5, 9.1; AnalyticStacks §§0.5–0.6.

### 9.5 Pointwise Artin–Tate motives

Define `DMT(X)` as the full subcategory of `Dmot(X)` of objects whose pullback to every geometric Banach point `Marc(C) → X` lies in the localizing subcategory generated by the `ℤ(n)`, `n ∈ ℤ` (closed under colimits, shifts and retracts) (Scholze, Definition 10.7, p. 56). At a general base this is not the localizing subcategory generated by Tate objects.

API:

- Membership is tested at geometric points.
- Pullback preserves `DMT`.
- The unit, all `ℤ(n)` and tensor products of objects of `DMT(X)` lie in `DMT(X)`.

**Checks.**

- Every `ℤ(n)` lies in `DMT(X)`, for `n` positive, zero and negative.
- An object that becomes a sum of Tate objects after a finite étale cover lies in `DMT(X)` even if it is not globally a sum of Tate objects (an Artin motive).
- At a geometric point `DMT(C)` is the localizing Tate subcategory, not all of `Dmot(C)`. Let `C` be the completed algebraic closure of `𝔽̄_p((T))` and `E` an elliptic curve over `𝔽̄_p`. If `ℤmot[E_C]` were in `DMT(C)`, then `Ψ(ℤmot[E_C]) = ℤmot[E]` would lie in `DMT(𝔽̄_p)` (§11.1), whose rational objects are graded `ℚ`-vector spaces (§11.4) with endomorphism algebras products of matrix algebras over `ℚ`; but the rational endomorphisms of the `H¹`-summand contain `End(E) ⊗ ℚ`, a quadratic field or a quaternion division algebra.

*Needs:* §§8.1, 9.1; EnhancedDerivedSheaves §E5:presentability.2.

### 9.6 Rigidity over analytic bases

Prove: if `A` is an analytic Banach ring and `Marc(A)` has finite cohomological dimension, then `Dmot(Marc(A))` is rigid in the sense of EnhancedDerivedSheaves §E5:presentability.4 (`IsRigid`: dualizable, compact unit, multiplication an internal left adjoint); more generally the same holds for a qcqs arc-sheaf `X` of finite cohomological dimension such that every point of `|X|` is the image of a quasi-pro-étale map `Marc(C(x)) → X` from a geometric Banach point (Scholze, Proposition 10.3 and proof, pp. 54–55; Theorem 1.12, p. 6). Compact generation is not asserted.

Route: compact-morphism exhaustions of generators (§9.2) give dualizability; finite cohomological dimension makes the unit compact. At a point `X = Marc(C)/G`, descend compact objects with their duals along finite-level profinite quotients by §9.3 and the strongly continuous filtered-colimit theorem; spread fibrewise dualizables to closed neighbourhoods and extend by zero from countable unions of closed neighbourhoods to obtain trace-class exhaustions; apply the rigidity criterion.

**Checks.**

- For `A = ℂ × ℂ` the category is `D(ℤ) × D(ℤ)`, rigid and compactly generated.
- For `A = Cont([0,1], ℂ)` the category is the left-completed derived category of sheaves on `[0,1]`: rigid, with compact unit `ℤ` (global sections on a compact space commute with filtered colimits), but not compactly generated, since its compact objects are its dualizable objects, the constant perfect complexes, and for `j : (0,1] → [0,1]` the nonzero object `j_! ℤ` has `RΓ([0,1], j_! ℤ) = RΓ_c((0,1], ℤ) = 0`, so it is orthogonal to all of them.
- An infinite-dimensional base, such as a bounded product of copies of `ℂ⟨T⟩₁` over a countable set, violates the finite-dimension hypothesis.

*Needs:* §§1.6, 9.1, 9.2, 9.3; EnhancedDerivedSheaves §E5:presentability.4 (`dualizable_filteredColimit`, `IsTraceClass`, `IsRigid`).

### 9.7 Weak categorical Künneth

Prove: for `X → S ← Y` with `X`, `Y`, `S` qcqs and satisfying the hypotheses of §9.6, the exterior tensor product is a fully faithful functor `Dmot(X) ⊗_{Dmot(S)} Dmot(Y) → Dmot(X ×_S Y)` (Scholze, Corollary 10.6 and proof, pp. 55–56). Only full faithfulness is concluded.

Route: relative tensor products of rigid categories are rigid; full faithfulness reduces to the unit of the adjunction on tensor generators, pushed to `S`, which is the Künneth identity `f_* M ⊗ g_* N ≃ (f ×_S g)_*(M ⊠ N)` given by proper base change and projection (§9.4).

**Checks.**

- For `X = Y = S` the functor is the identity.
- For `X = Y = ℙ¹_S` both sides contain `ℤ ⊠ ℤ(1)[2]` and the map on the four Tate summands is an isomorphism.
- For `X = ∅` both sides are zero.

*Needs:* §§8.5, 9.4, 9.6; EnhancedDerivedSheaves §E5:presentability.2 (`presentableTensor`) and §E5:presentability.4.

### 9.8 Arc-descent and rigidity of Artin–Tate motives

Prove: `X ↦ DMT(X)` is an arc-sheaf of presentably symmetric monoidal stable ∞-categories; on strictly totally disconnected `X`, `DMT(X)` is generated under colimits by the `ℤ(n)`, `n ∈ ℤ`; and for `X` satisfying the hypotheses of §9.6, `DMT(X)` is rigid (Scholze, Propositions 10.8–10.10, pp. 56–57). Global Tate generation is asserted only on strict bases.

Route: for an extension `C′/C` of geometric points, a compact transition that factors through a mixed Tate object over `C′` descends to a finitely generated algebra of finite topological transcendence degree over `C`, which has a section, so the factorization exists over `C`. On strict bases the right adjoint of the Tate-generated inclusion preserves colimits and its counit is an equivalence on stalks. Repeat the compact and trace-class exhaustions inside `DMT`.

*Needs:* §§9.2, 9.5, 9.6; EnhancedDerivedSheaves §E5:presentability.4.

### Examples

Let `X` be the disjoint union of two complex points. Then `Dmot(X) = D(ℤ) × D(ℤ)`, with unit `(ℤ, ℤ)` and componentwise tensor product. The objects `(ℤ, 0)` and `(0, ℤ)`, extensions by zero from the clopen points, are compact dualizable generators, and each is a retract of the unit; so the pointwise mixed Tate condition gives `DMT(X) = Dmot(X)`. This checks Tate generation on a strict base and compactness of the unit for a finite product; relative rigidity over a general analytic base (§9.6) uses trace-class exhaustions and makes no compact-generation claim.

### Dependencies

Layers 1–8; AdicCoefficientsAndComparisons Layer L5; AnalyticStacks §§0.5–0.6; EnhancedDerivedSheaves §§E5:abstract.5, E5:presentability.2, E5:presentability.4; TropicalAndBerkovichArithmetic §§1.1–1.2.

## Layer 10: Integral étale motives over a field

This layer constructs the presentable stable ∞-category of integral étale motives over a field, compares it with the étale motives with transfers, and, for an algebraically closed discrete field `k` with the trivial norm, proves compact generation of `Dmot(k)`, the rational and prime-to-`p` mapping formulas on both sides, and the equivalence of the two categories.

### 10.1 Integral étale motives over a field

For a field `k` define `DM_et(k, ℤ)` as the presentably symmetric monoidal `ℤ`-linear stable ∞-category generated by the motives `M(X)` of smooth finite-type `k`-schemes, with tensor product induced by products of schemes, obtained by imposing étale descent, then `A¹`-invariance (`M(X × A¹) → M(X)` an equivalence), then inverting the reduced motive of `G_m` shifted by `[−1]`, the Tate object `ℤ(1)` (Scholze, Remark 11.2, p. 57). The presentation is transfer-free; it is not the triangulated category of geometric Nisnevich motives of MotivesAndAlgebraicCycles §4.11, and no unrestricted Galois hyperdescent is part of the definition.

API:

- A colimit-preserving symmetric monoidal `ℤ`-linear functor out of `DM_et(k, ℤ)` is the same as a functor out of smooth `k`-schemes satisfying étale descent and `A¹`-invariance and inverting the reduced `G_m`-object.
- `ℤ(1)` is invertible, and `ℤ(1)[1]` is the reduced motive of `G_m`, as in §3.4.
- An extension of fields `k → k′` induces a symmetric monoidal pullback, coherently.

**Checks.**

- `M(A¹_k)` is the unit.
- `M(ℙ¹_k) = ℤ ⊕ ℤ(1)[2]`.
- In characteristic `p > 0`, the Artin–Schreier sequence `0 → ℤ/p → G_a → G_a → 0` is étale exact and `G_a = A¹` is contractible, so `ℤ/p = 0` and `p` is invertible in `DM_et(k, ℤ)`; prime-to-`p` torsion is retained. A Nisnevich category has nonzero `p`-torsion (for example `Hom(ℤ, ℤ/p(1)[1]) = k^×/p ≠ 0` for imperfect `k`), so it cannot replace this category.

Route: start from enhanced presheaves of complexes on smooth `k`-schemes, localize at étale hypercovers and `A¹`-projections (an accessible symmetric monoidal localization), then invert `ℤ(1)`.

*Needs:* EnhancedDerivedSheaves §E1.3, §E3.2, §E5:abstract.3 and §E5:presentability.2 (`tensorInversion`); MotivesAndAlgebraicCycles §4.1 (smooth schemes and finite correspondences, for the comparison in §10.2).

### 10.2 Étale motives with and without transfers

Let `DM_et^tr(k, ℤ)` be the category obtained by the same construction from étale sheaves with transfers on smooth `k`-schemes, built on the finite correspondences and transfer presheaves of MotivesAndAlgebraicCycles §§4.1–4.2 with the étale topology in place of the Nisnevich topology. Prove, for an algebraically closed field `k` of exponent `p`:

- the functor `DM_et(k, ℤ) → DM_et^tr(k, ℤ)` adding transfers is an equivalence;
- for `n` invertible in `k`, `DM_et^tr(k, ℤ/n) ≃ D(ℤ/n)`, with `ℤ/n(1) ≃ μ_n` (rigidity);
- `DM_et(k, ℤ)` is `ℤ[1/p]`-linear;
- rationally `DM_et^tr(k, ℚ)` agrees with the Nisnevich category `DM(k, ℚ)` of MotivesAndAlgebraicCycles §§4.6, 4.11, so that for smooth `X` the rational maps `Hom(M(X), ℚ(j)[m])` are the motivic cohomology groups `H^m(X, ℚ(j)) = CH^j(X, 2j − m)_ℚ`.

(Cisinski–Déglise, Theorem 4.5.2, p. 41 (rigidity with transfers), Corollary 4.5.3, p. 41 (`p`-torsion), Corollary 5.5.5, p. 55 (étale with transfers versus h-motives), Corollary 5.5.7, p. 56 (transfer-free versus h-motives, in characteristic zero or with 2 invertible in the coefficients), Theorem 5.2.2, p. 44 (rational comparison with Beilinson motives).)

API:

- Adding transfers is a colimit-preserving symmetric monoidal functor `DM_et(k, ℤ) → DM_et^tr(k, ℤ)` sending `M(X)` to the motive with transfers of `X` and `ℤ(1)` to `ℤ(1)`.
- For `n` invertible in `k`, étale sheaves of `ℤ/n`-modules carry canonical transfers, giving a symmetric monoidal functor `D(k_et, ℤ/n) → DM_et^tr(k, ℤ/n)`.
- Rationalization commutes with adding transfers and with the comparison to Nisnevich motives.

Route: rationally and with odd torsion coefficients the first item is Cisinski–Déglise Corollary 5.5.7 combined with Corollary 5.5.5. The `p`-torsion vanishes on both sides. For coefficients `ℤ/2^a` in odd positive characteristic, prove the comparison directly: both categories are generated by motives of smooth schemes, and on both the functor from étale sheaves of `ℤ/2^a`-modules is an equivalence by the rigidity argument of Cisinski–Déglise §4.5 run without transfers, which uses the Kummer sequence and the étale cohomological dimension of fields of finite transcendence degree over `k`, not orderings (every field of positive characteristic has `−1` a sum of squares). The rational comparison with Nisnevich motives uses that rational étale and Nisnevich sheaves with transfers have the same `A¹`-local objects (Cisinski–Déglise Theorem 5.2.2 and Corollary 5.5.5) and the higher-Chow identification of MotivesAndAlgebraicCycles §§4.15–4.18.

**Checks.**

- For `X = Spec k` and `j = 1`, `Hom(ℤ, ℚ(1)[1]) = k^× ⊗ ℚ = CH¹(k, 1)_ℚ`, which is `0` for `k = 𝔽̄_p` (all units are roots of unity) and nonzero for `k = ℂ`.
- With `ℤ/ℓ` coefficients, `Hom(ℤ, ℤ/ℓ(1)) = μ_ℓ(k) ≅ ℤ/ℓ` for `ℓ ≠ p`.
- With `ℤ/p` coefficients in characteristic `p` every Hom group is zero.

*Needs:* §10.1; MotivesAndAlgebraicCycles §§4.1–4.6, 4.9, 4.11, 4.15–4.18; EnhancedDerivedSheaves §§E3.2, E5:abstract.3.

### 10.3 Generators over a discrete algebraically closed field

Prove: for an algebraically closed field `k` with the trivial norm, `Dmot(k)` is generated by the compact dualizable objects `ℤmot[X](−j)`, `X` smooth projective over `k`, `j ∈ ℤ`; the unit is compact, so compact and dualizable objects agree (Scholze, Theorem 11.1 and proof, pp. 57–58). The trivial norm makes `k` non-analytic, so §9.1 does not apply directly. The twists range over all integers.

Route: let `K = k((T))` with `|T| = 1/2` and `f : Marc(K) → Marc(k)`. Annulus continuity (§3.5) identifies `f_* ℤ` with `g_* ℤ` for `g : G_{m,k} → Marc(k)`, and `f_* ℤ ≃ ℤ ⊕ ℤ(−1)[−1]`, which is dualizable; its dual represents `M ↦ Hom(1, f_* M)`, so `f_♯` exists on the unit with `f_♯ ℤ = (f_* ℤ)^∨` compact, and `ℤ` is a compact retract of it. By §9.1 over the completed algebraic closure of `K`, descended through finite extensions of `K` (again Laurent-series fields over `k`) together with Artin motives, `f_♯` exists in general; as `f^*` is conservative, the objects `f_♯ f^* ℤmot[X](−j) = ℤmot[X](−j) ⊗ f_♯ ℤ` generate, and the splitting of `f_♯ ℤ` gives the claim.

*Needs:* §§2.6, 3.5, 8.1, 9.1, 9.4.

### 10.4 Mapping formulas for algebraic étale motives

Prove: for an algebraically closed field `k` of exponent `p`, a smooth projective `X/k` and `j ∈ ℤ`, `Map_{DM_et(k,ℤ)}(M(X)(−j), ℤ)_ℚ ≃ K(X)_ℚ^{(j)}[−2j]`, that is `π_i = K_{i+2j}(X)_ℚ^{(j)}`; and after completion away from `p`, the mapping spectrum is `RΓ_proet(X, ℤ̂_{p′}(j))`, the pro-étale cohomology with coefficients in the prime-to-`p` Tate module twisted `j` times (Cisinski–Déglise, Theorem 5.2.2, p. 44, formula `Hom(ℚ_X, ℚ_X(j)[q]) = Gr^j_γ K_{2j−q}(X)_ℚ`; Theorem 4.5.2, p. 41; Scholze, Remark 11.2, p. 57). The objects `M(X)(−j)` are compact dualizable generators of `DM_et(k, ℤ)`.

Route: the rational formula is §10.2 combined with MotivicEtaleKTheory §2.2, which identifies `CH^j(X, n)_ℚ` with the Adams-weight-`j` summand of `K_n(X)_ℚ`; the completed formula is §10.2 rigidity and passage to the limit over `n` prime to `p`. Generation uses étale descent, rigidity and rational alteration traces; the degrees of alterations are inverted only rationally.

**Checks.**

- For `X = ℙ¹_k` and `j = 1`, `π_{−2} = K₀(ℙ¹_k)_ℚ^{(1)} = ℚ` (the class of `O(1) − O`), while `π₀ = K₂(ℙ¹_k)_ℚ^{(1)} = H⁰(ℙ¹_k, ℚ(1)) = 0`; an unshifted K-theory spectrum would put the Picard class in `π₀`.
- For `X = Spec k`, `j = 0`, `π₀ = K₀(k)_ℚ = ℚ`.

*Needs:* §§10.1–10.2; MotivicEtaleKTheory §2.2; SchemeKTheoryOperations §6.8 (Adams weights on regular schemes); AdicCoefficientsAndComparisons Layer L5; EnhancedDerivedSheaves §§E2.2–E2.3 (derived completion and limits).

### 10.5 Motivic mapping formulas over a discrete field

Prove: for an algebraically closed field `k` with the trivial norm, smooth projective `X/k` and `j ∈ ℤ`, `Map_{Dmot(k)}(ℤmot[X](−j), ℤ)_ℚ ≃ K(X)_ℚ^{(j)}[−2j]`, so `π_i = K_{i+2j}(X)_ℚ^{(j)}`; and after profinite completion away from `p`, the mapping spectrum is `RΓ_proet(X, ℤ̂_{p′}(j))` (Scholze, Theorem 11.1 and proof, pp. 57–58). Scholze states the rational formula without the shift `[−2j]`; the shift is forced by §6.3 and by Cisinski–Déglise Theorem 5.2.2 (Corrections to the source, E6).

Route: let `C` be the completed algebraic closure of `k((T))`. By §7.5, `Kmot(X_C)_ℚ = cofib(K(X^m_C) → K(X_C))_ℚ`, with `K(X^m_C) = fib(K(X_{O_C}) → K(X))`, which is the cofibre of `K(X_{O_C} on X)_ℚ → K(X)_ℚ`. Writing `O_C` as a completed filtered colimit of finite extensions of `k[[T]]` and using excision on regular schemes, `K(X_{O_C} on X)_ℚ ≃ K(X)_ℚ` with Adams weights shifted by one (the weight shift for a Cartier divisor with trivial conormal bundle). By induction on weight this extra piece matches the second summand of `f_♯ ℤ = ℤ ⊕ ℤ(1)[1]` of §10.3. The torsion formula follows from §4.8 and inverse limits over finite coefficients.

*Needs:* §§4.8, 6.3, 7.5, 10.3; SchemeKTheoryOperations §§3.8, 6.8, 6.11; EnhancedDerivedSheaves §§E2.2–E2.3.

### 10.6 Berkovich and algebraic étale motives

Prove: for an algebraically closed field `k` with the trivial norm, the symmetric monoidal functor `DM_et(k, ℤ) → Dmot(k)` sending a smooth `k`-scheme to its Berkovich motive is an equivalence, carrying `M(X)` to `ℤmot[X]` and `ℤ(1)` to `ℤ(1)` (Scholze, Remark 11.2 and Theorem 11.1, pp. 57–58; Proposition 1.13, p. 7). A comparison over non-closed fields would need a separate choice between descent and hyperdescent and is not asserted.

Route: the Berkovich functor satisfies étale descent, `A¹`-invariance and `G_m`-stability, so it factors through `DM_et(k, ℤ)` by §10.1. Both sides are generated by the compact dualizable objects attached to smooth projective `X` and `j ∈ ℤ` (§§10.3, 10.4); on these the maps agree rationally (§§10.4, 10.5) and after completion away from `p`, and `p` is invertible on both sides (§§4.8, 10.2); a map of spectra that is an equivalence rationally and modulo every prime is an equivalence, which gives full faithfulness, and generation gives essential surjectivity.

**Checks.**

- `ℤmot[ℙ¹_k] = ℤ ⊕ ℤ(1)[2]` on both sides.
- For `k = 𝔽̄_p`, `Map(ℤ(−j), ℤ)_ℚ` is `ℚ[0]` for `j = 0` and `0` otherwise on both sides, because `K(𝔽̄_p)_ℚ = ℚ[0]`.
- With coefficients `ℤ/ℓ`, `ℓ ≠ p`, both sides are `D(ℤ/ℓ)`.

*Needs:* §§4.8, 10.1–10.5.

### Examples

Put `k = 𝔽̄_p` with the trivial norm and `X = Spec k`. Filtered continuity from finite fields gives `K(k)_ℚ = ℚ[0]` (GeneralAlgebraicKTheory §13.8c; KTheoryFiniteLocalFields §1.6). The rational mapping formula gives `Map(ℤ(−j), ℤ)_ℚ = ℚ[0]` for `j = 0` and `0` for `j ≠ 0`. After completion away from `p`, the same mapping spectra are `ℤ̂_{p′}(j)`, with the Tate twist retained. The rational and finite-coefficient sectors behave differently, and the integral comparison uses both. The projective line, `ℤ ⊕ ℤ(1)[2]` on both sides, fixes the common Tate normalization.

### Dependencies

Layers 3–9; MotivesAndAlgebraicCycles §§4.1–4.6, 4.9, 4.11, 4.15–4.18; MotivicEtaleKTheory §2.2; SchemeKTheoryOperations §§3.8, 6.8, 6.11; GeneralAlgebraicKTheory §13.8c; KTheoryFiniteLocalFields §1.6; AdicCoefficientsAndComparisons Layer L5; EnhancedDerivedSheaves §§E1.3, E2.2–E2.3, E3.2, E5:abstract.3, E5:presentability.2.

## Layer 11: Nearby cycles and motivic monodromy

This layer constructs the motivic nearby-cycle functor, proves it descendable, and over `k = 𝔽̄_p` constructs the motivic Galois stacks `MG_k` and `MG_C`, identifies their quasi-coherent categories with mixed Tate motives, and proves the monodromy description of `Dmot(C)`.

### 11.1 Motivic nearby cycles

Let `k` be algebraically closed with the trivial norm, `C` the completed algebraic closure of `k((T))` with `|T| = 1/2`, and `f : Marc(C) → Marc(k)`. Choose a topologically nilpotent unit `π ∈ C` and compatible roots `π^{1/n}` for all `n` prime to the residue-characteristic exponent `p`; they give a map `Marc(C) → G̃_{m,k} = lim_{x ↦ x^n} G_{m,k}`, and with `g : G̃_{m,k} → Marc(k)` the induced map `f_* ℤ → g_* ℤ` is an equivalence. By §§9.1, 10.3 and Barr–Beck–Lurie, `Dmot(C) ≃ Mod_{f_* ℤ}(Dmot(k))`. Define the *motivic nearby-cycle functor* `Ψ : Dmot(C) → Dmot(k)` as extension of scalars along `f_* ℤ ≃ g_* ℤ → ℤ`, the augmentation given by the point `1 ∈ G̃_{m,k}` (Scholze, Definition 11.3 and the construction before it, pp. 58–59; Theorem 1.14, p. 7). `Ψ` depends on the chosen roots; in characteristic zero `p = 1` and all roots are used.

API:

- Under `Dmot(C) ≃ Mod_{f_* ℤ}(Dmot(k))`, `Ψ` is `− ⊗_{f_* ℤ} ℤ`, symmetric monoidal and colimit-preserving.
- `Ψ` preserves the unit and all Tate twists.
- For `X` smooth projective over `k`, `Ψ(ℤmot[X_C]) ≃ ℤmot[X]`.

**Checks.**

- `Ψ(ℤ) = ℤ`.
- `Ψ(ℤ(n)) = ℤ(n)` for all integers `n`.
- For the good-reduction projective line, `Ψ(ℤmot[ℙ¹_C]) ≃ ℤ ⊕ ℤ(1)[2]`, the summands induced by the unit section and the reduced class of `ℙ¹`.

Route: both `f_* ℤ` and `g_* ℤ` receive the unit with cofibre `ℚ(−1)[−1]` (finite levels and annulus limits); the induced endomorphism of `ℚ(−1)[−1]` is nonzero at a finite level, hence an isomorphism.

*Needs:* §§3.5, 8.1, 9.4, 10.3; EnhancedDerivedSheaves §E5:abstract.5 (`barrBeckLurie`) and §E5:presentability.2 (`categoricalModuleBaseChange`).

### 11.2 Descendability of nearby cycles

Prove: the augmentation `f_* ℤ → ℤ` defining `Ψ` is descendable; hence `Ψ` is conservative (Scholze, Proposition 11.4 and proof, p. 59). Route: the fibre of `g_* ℤ → ℤ` is `ℚ(−1)[−1]`, and its `g_* ℤ`-module structure factors through `ℤ` (rationally, compare with the free E∞-algebra on `ℚ(−1)[−1]`); the two-step filtration by modules inflated from `ℤ` puts `g_* ℤ` in the thick tensor ideal generated by `ℤ`. The module factorization, not only the cofibre computation, is needed.

*Needs:* §§6.3, 11.1; EnhancedDerivedSheaves Layer E5:descent (`IsDescendable`).

### 11.3 The residue-field motivic Galois stack

Let `k = 𝔽̄_p`. Define `MG_k` over `ℤ[1/p]` as the stack classifying a line `L` together with compatible equivalences `L ⊗^L ℤ/n ≃ μ_n(k) ⊗_ℤ R` for all `n` prime to `p`. Prove that `MG_k ≃ B G_m^rat`, where `G_m^rat = Spec(ℚ[t, t⁻¹] ×_ℚ ℤ[1/p])`, the fibre product of `ℚ[t, t⁻¹] → ℚ`, `t ↦ 1`, and `ℤ[1/p] → ℚ`; and that `Dqc(MG_k)` is compactly generated by the powers `L^n`, `n ∈ ℤ` (Scholze, construction before Proposition 11.6, pp. 59–60). The ring is a fibre product, not a product; compatibility includes the transition maps between different `n`.

API:

- The tautological line `L` carries the coherent reductions modulo every `n` prime to `p`.
- The rational fibre of `MG_k` is `BG_m` over `ℚ`, every fibre over `𝔽_ℓ`, `ℓ ≠ p`, is a point, and the fibre over `𝔽_p` is empty.
- All `L^n`, `n ∈ ℤ`, are compact dualizable generators of `Dqc(MG_k)`.

**Checks.**

- Rationally the `L^n` are the distinct characters `t^n` of `G_m`.
- Modulo `ℓ ≠ p` the coordinate ring is `𝔽_ℓ`: the augmentation ideal `(t − 1)ℚ[t^{±1}]` is a `ℚ`-vector space, killed by `− ⊗ 𝔽_ℓ`; so the stack is a point and the category is `D(𝔽_ℓ)`, with `L` the line `μ_ℓ(k)`.
- The stack lies over `ℤ[1/p]`; it has no `p`-torsion Tate sector, in accordance with §4.8.
- The ring `R = ℚ[t^{±1}] ×_ℚ ℤ[1/p]` is torsion-free, hence flat over `ℤ[1/p]`, and its augmentation ideal is `R ⊗_{ℤ[1/p]} ℚ`, flat over `R`; so the counit `R → ℤ[1/p]` has Tor amplitude in `[−1, 0]`, as AnalyticStacks §1.5 requires.

Route: construct the moduli functor in derived quasi-coherent stacks and identify it with the classifying stack; check fibres over `ℚ` and `𝔽_ℓ`; compact generation by the line powers is checked on these fibres, with pushforward preserving colimits.

*Needs:* §9.5; AnalyticStacks §§1.1–1.5.

### 11.4 Mixed Tate motives over `𝔽̄_p` and over `C`

Prove: for `k = 𝔽̄_p` and `C` as in §11.1, `Dqc(MG_k) ≃ DMT(k)`, sending `L` to `ℤ(1)`; `DMT(C) ⊗_{DMT(k)} Dmot(k) ≃ Dmot(C)`; and the t-structures on `DMT(k)` and `DMT(C)` generated by the Tate twists in degree zero make `Ψ` conservative and t-exact (Scholze, Propositions 11.5–11.8, pp. 59–60). The t-structure is on the mixed Tate subcategories only; no motivic t-structure on `Dmot(k)` is asserted.

Route: `K(𝔽̄_p)_ℚ = ℚ[0]` (Proposition 11.5) gives the rational maps between Tate twists, and §10.5 with finite coefficients the torsion maps; compare with maps between powers of `L` rationally and modulo `n`. The algebra `f_* ℤ` lies in `DMT(k)`, and module base change gives the tensor identity. Cover `MG_k` by `Spec ℤ[1/p]`; the augmentation of the free E∞-algebra on `ℚ[−1]` is coconnectively faithfully flat, which together with §11.2 gives t-exactness.

**Checks.**

- Maps between different rational Tate weights vanish: `Hom(ℚ(i), ℚ(j)[m]) = K_{2(j−i)−m}(𝔽̄_p)_ℚ^{(j−i)} = 0` unless `i = j` and `m = 0`.
- With `ℤ/ℓ` coefficients, `Hom(ℤ/ℓ, ℤ/ℓ(1)) = μ_ℓ ≠ 0`, matching the trivialization of `L` modulo `ℓ`.
- The statement concerns `DMT`, and is not a description of all motives over `𝔽̄_p`.

*Needs:* §§9.8, 10.5, 11.2, 11.3; GeneralAlgebraicKTheory §13.8c; KTheoryFiniteLocalFields §1.6; AnalyticStacks §§1.1–1.5; EnhancedDerivedSheaves §E5:presentability.2.

### 11.5 The valued-field motivic Galois gerbe

For `k = 𝔽̄_p` and `C` as above define `MG_C` over `MG_k` by adjoining a map `(C^×/(1 + C_{<1}))[−1] → L` whose reductions modulo every `n` prime to `p` are the given Kummer identifications; equivalently, `MG_C` classifies extensions `L → L̃ → (C^×/(1 + C_{<1})) ⊗ R` with prescribed restriction to the reduced integral units (Scholze, definition of `MG_C` and computation, pp. 60–61). Prove that `h : MG_C → MG_k` is a gerbe banded by `Hom(ℚ, L)`, with `h_* O` having `O` in degree 0 and `L^∨ ⊗ ℚ` in degree 1. The value group `C^×/O_C^×` is identified with `ℚ` through the normalization `|T| = 1/2`, and the restriction to `O_C^×/(1 + C_{<1}) = k^×` is the sequence `L → L ⊗ ℚ → L ⊗ ℚ/ℤ[1/p]`.

API:

- `R`-points of `MG_C` are the displayed extensions with compatible restriction to the integral units.
- The band of `h` is `Hom(ℚ, L)`.
- Compatible roots of `π` give a section of `h`, by splitting the reduced units into value group and integral units.

**Checks.**

- The quotient of reduced units by reduced integral units is `C^×/O_C^× ≅ ℚ` (the value group of an algebraically closed field), not `ℤ`.
- Modulo `n` prime to `p` the gerbe retains the Kummer identifications; a gerbe defined only rationally loses them.
- A compatible system of roots neutralizes the gerbe; the section depends on the roots, the gerbe does not.

Route: construct the extension moduli with all finite-coefficient compatibilities; the quotient by integral reduced units gives the value group `ℚ` and the band; compute quasi-coherent cohomology through the rational additive-group model of the unipotent band, keeping the extension class.

*Needs:* §§3.1, 3.2, 11.3; AnalyticStacks §§1.1–1.5.

### 11.6 Locally nilpotent monodromy pairs

Over `Dmot(k)`, `k = 𝔽̄_p`, define the category of *monodromy pairs* as the category of representations of the unipotent band `Hom(ℚ, ℤ(1))`, the band of the gerbe of §11.5 neutralized by a section, in the comodule model of AnalyticStacks §1.5. Prove that it is equivalent to the category of pairs `(A, N)` with `A ∈ Dmot(k)` and `N : A → A ⊗ ℚ(−1)` locally nilpotent: `A` is the filtered union of subobjects on which a finite iterate of `N` vanishes, with the coherent structure carried by the comodule (Scholze, discussion after Theorem 11.9, pp. 61–62). This identification of representations of the band with operators is owned here (AnalyticStacks assigns it to this roadmap).

API:

- The forgetful functor sends a representation to its underlying object, and the coaction to the twisted operator `N`.
- Morphisms are equivariant maps, with their higher coherences, and commute with `N`.
- On tensor products `N_{A⊗B} = N_A ⊗ 1 + 1 ⊗ N_B`.

**Checks.**

- Every `A` with trivial action gives `(A, 0)`.
- The standard two-step unipotent representation has `N ≠ 0` and `N² = 0`; the category is not the category of objects with zero operator.
- After a rational trivialization of the twist, a nonzero scalar operator on a one-dimensional object has every iterate nonzero and is excluded.

Route: neutralize the gerbe with compatible roots; identify its quasi-coherent category with representations of the band; identify comodules over the coordinate ring of the rational additive group `Hom(ℚ, L)` with objects carrying a locally nilpotent operator, finite stage by finite stage; the band is a rational vector group, so the relevant representations are rational, and the identification includes unbounded derived objects.

*Needs:* §§8.1, 11.5; AnalyticStacks §§1.1–1.5; EnhancedDerivedSheaves §E5:presentability.2.

### 11.7 The Galois-stack description of motives over `C`

Prove: for `k = 𝔽̄_p` and `C` as above, `Dqc(MG_C) ≃ DMT(C)` and `Dmot(C) ≃ Dmot(k) ⊗_{Dqc(MG_k)} Dqc(MG_C)`, as `Dqc(MG_k)`-linear symmetric monoidal equivalences (Scholze, Theorem 11.9 and proof, p. 61). Route: the reduced-unit Tate class gives a map of augmented E∞-algebras `h_* O → f_* ℤ`; both have the unit and a rational degree-one summand, and the induced degree-one map is the identity of the value group `ℚ`, not merely a nonzero scalar; the module descriptions and §11.4 give the first equivalence and module base change the second. An isomorphism of underlying two-term complexes without algebra compatibility does not suffice.

*Needs:* §§11.1, 11.4, 11.5; EnhancedDerivedSheaves §E5:presentability.2.

### 11.8 Nearby cycles and the monodromy equivalence

Prove: for `k = 𝔽̄_p` and `C` the completed algebraic closure of `k((T))`, a pseudouniformizer `π` with compatible roots `π^{1/n}`, `n` prime to `p`, gives a symmetric monoidal equivalence `Dmot(C) ≃ {(A, N) : A ∈ Dmot(k), N : A → A ⊗ ℚ(−1) locally nilpotent}` under which `Ψ` is the forgetful functor; with rational coefficients the choice of `π` alone suffices (Scholze, Corollary 11.10 and proof, pp. 61–62; Theorem 1.14, p. 7). The statement is relative over `Dmot(k)`; it is stated over `𝔽̄_p`, and other residue fields need the base-change argument following Proposition 11.4.

Route: the roots give a section of the gerbe of §11.5; combine the neutral representation description (§11.6) with §11.7, and identify extension of scalars along the section with the forgetful functor, which is `Ψ`. Rationally the ordinary `G_m`-tower already has the needed cohomology and `π` alone defines the augmentation.

**Checks.**

- The Tate objects have zero monodromy.
- The good-reduction projective line has zero monodromy and `Ψ(ℤmot[ℙ¹_C]) = ℤ ⊕ ℤ(1)[2]`.
- A nonzero locally nilpotent `N` occurs: the two-step object of §11.6 corresponds to a motive over `C` that is not pulled back from `k`.

*Needs:* §§11.2, 11.4, 11.6, 11.7.

### Examples

Over `k = 𝔽̄_p` take the rational object `A = ℚ ⊕ ℚ(1)` and let `N : A → A ⊗ ℚ(−1) = ℚ(−1) ⊕ ℚ` send the first summand by the identity to `ℚ(1) ⊗ ℚ(−1) = ℚ` and kill the second. Then `N ≠ 0` and `N² = 0`, since the image of `N` lies in the twist of the second summand, which `N` kills. The associated two-step unipotent coaction is `1 + tN`, with the parameter carrying the dual twist; under §11.8 it is a motive over `C` whose nearby cycles are `A`. By contrast a nonzero scalar on a one-dimensional rational object, after trivializing the twist, has all iterates nonzero and is excluded.

### Dependencies

Layers 3–10; AnalyticStacks §§1.1–1.5; EnhancedDerivedSheaves §§E5:abstract.5, E5:presentability.2, E5:descent; GeneralAlgebraicKTheory §13.8c; KTheoryFiniteLocalFields §1.6.

## Layer 12: The v-stack and overconvergent comparison

This layer compares perfect characteristic-`p` Banach arc-stacks with partially proper v-stacks, describes canonical compactification, identifies prime-to-`p` torsion motives with overconvergent étale sheaves, and exhibits the torsion motivic category of a finite-dimensional spatial diamond as a retract of a compactly generated category.

### 12.1 Normed arc-stacks and partially proper v-stacks

On perfect analytic Banach `𝔽_p`-algebras with a chosen norm, construct `a^* : vStack/N → arcStack` and its fully faithful right adjoint `b^* : arcStack → vStack/N`, where `N` is the v-stack torsor of positive real rescalings of norms: explicitly `(b^* Y)(R, R⁺) = Y(R)`, and `a^* X` is the sheafification of `R ↦ X(R, R°)` (Scholze, Proposition 12.1 and Corollary 12.2, pp. 62–63). Prove that the essential image of `b^*` consists of the partially proper v-stacks, characterized by independence of the ring of integral elements `R⁺`, and that for separated `X`, `b^* a^* X` is its canonical compactification.

API:

- `a^*` is left adjoint to `b^*`, and `b^*` is fully faithful.
- The essential image of `b^*` is the partially proper v-stacks over `N`.
- For separated `X`, the unit `X → b^* a^* X` is the canonical compactification.

**Checks.**

- `b^* Y` takes the same value on `(R, R⁺)` and `(R, R°)`.
- With a chosen norm the target is `vStack/N`; without changing the test category it is not all v-stacks.
- An already partially proper separated `X`, such as the open unit disc `{|T| < 1}` over a perfectoid field (a union of closed discs of radius `< 1`), is unchanged by `b^* a^*`; the closed unit disc `Spa(C⟨T⟩, O_C⟨T⟩)` is not partially proper over `Spa(C, O_C)`, and `b^* a^*` adds the boundary point of its canonical compactification.

Route: on rings use the forgetful functor from Huber pairs and its adjoints `R ↦ (R, R°)` and `R ↦ (R, R⁺_min)`, where `R⁺_min` is the integral closure of `𝔽_p + R°°`; check compatibility with finite limits and covers, then compute unit and counit.

*Needs:* §0.2; DiamondsAndVStacks §§D0.23, D2.7, D4.7, D4.9, D6.1, D6.3; DiamondEtaleCohomology §C4.5 (`IsPartiallyProper`) and §§C4.13–C4.14 (`canonicalCompactification`).

### 12.2 Norm-free Tate arc-stacks

Define `arcStack′` on perfectoid Tate `𝔽_p`-algebras without a chosen norm, with covers given by surjectivity on rank-one points, and functors `a′^* : vStack → arcStack′` and `b′^* : arcStack′ → vStack` as in §12.1; equivalently use Huber pairs with the topology generated by surjectivity on rank-one points, in which `Spa(R, R°) → Spa(R, R⁺)` is a cover, so the choice of `R⁺` disappears after sheafification (Scholze, discussion after Corollary 12.2, p. 63). After choosing a norm on a base, the relative category agrees with §12.1.

API:

- Covers are tested by surjectivity on rank-one points.
- `Spa(R, R°) → Spa(R, R⁺)` is a cover for every ring of integral elements `R⁺`.
- Over a base with a chosen norm, the relative construction agrees with §12.1.

**Checks.**

- For `R⁺ = R°` the cover `Spa(R, R°) → Spa(R, R⁺)` is the identity.
- Replacing `R⁺` by a smaller ring of integral elements changes the adic spectrum but not its sheafification.
- Higher-rank points are ignored for covering purposes, so this is not the v-topology: `Spa(C, O_C) → Spa(C, C⁺)` for a higher-rank `C⁺` is a cover here but not a v-cover.

*Needs:* §§0.2, 12.1; DiamondsAndVStacks §§D2.7, D6.1, D6.3.

### 12.3 Torsion motives as overconvergent étale sheaves

Prove: for a small v-stack `X` of characteristic `p`, `Y = a′^* X` and `n` prime to `p`, there is a fully faithful functor `Dmot(Y, ℤ/n) ≃ Det(Y, ℤ/n) → Det(X, ℤ/n)` whose essential image consists of the overconvergent objects, those whose stalk at every geometric point `Spa(C, C⁺)` maps isomorphically, by the specialization map, to the stalk at its rank-one generization `Spa(C, O_C)`; it is compatible with pullback, tensor product and pushforward along proper maps of finite cohomological dimension (Scholze, Proposition 12.3 and proof, p. 63). All statements use `n` prime to `p`.

Route: reduce by descent to strictly totally disconnected `X`; there the étale topos is sheaves on `|X|`, each connected component is `Spa(C, C⁺)`, and overconvergent sheaves are those pulled back from the profinite set of connected components, which is `Y`; pass from bounded-below to unbounded objects by the strict-base comparison; check the functor compatibilities on the basis and descend. The torsion description of `Dmot(Y, ℤ/n)` is §4.8.

**Checks.**

- The constant sheaf `ℤ/n` is overconvergent: its specialization maps are identities.
- The extension by zero from the rank-one point `Spa(C, O_C)` into `Spa(C, C⁺)` of higher rank has stalk `0` at the closed point and `ℤ/n` at the generization; its specialization map `0 → ℤ/n` is not an isomorphism for `n > 1`, so it is not overconvergent.
- For `n = 1` every object is zero and the statement is empty.

*Needs:* §§4.8, 9.4, 12.2; DiamondEtaleCohomology §§C0.19, C0.24, C2.2, C2.12.

### 12.4 The spatial-diamond retract

Prove: if `X` is a spatial diamond of finite cohomological dimension and `n` is prime to `p`, the fully faithful functor `Det(Y, ℤ/n) → Det(X, ℤ/n)` of §12.3 has a colimit-preserving right adjoint, and `Det(X, ℤ/n)` is compactly generated; hence `Det(Y, ℤ/n)` is a retract, in presentable categories, of a compactly generated category (Scholze, Proposition 12.4 and proof, pp. 63–64). Compact generation of `Det(Y, ℤ/n)` itself is not asserted.

Route: a generating compact morphism `ℤmot[U] → ℤmot[V]` attached to a strict inclusion of domains (§9.2) becomes a map that factors through `f_! f^! ℤ/n` for a quasi-compact smooth diamond `f : W → X`, which is compact in `Det(X, ℤ/n)`; so the inclusion preserves compact morphisms, and its right adjoint preserves colimits; compact generation of the ambient category gives the retract.

**Checks.**

- For the full inclusion `I` and its right adjoint `R`, `R ∘ I ≃ id` exhibits the retract.
- If `X` is a point `Spa(C, O_C)`, `Y = X` and the retract is the identity of `D(ℤ/n)`.
- A retract of a compactly generated category is dualizable, and the statement stops there.

*Needs:* §§9.2, 12.3; DiamondEtaleCohomology §C9.8 (compact generation); DiamondSixOperations §S2.4 (`lowerShriek`, base change, projection) and §§S4.2–S4.3 (cohomologically smooth maps and the dualizing complex); EnhancedDerivedSheaves §E5:presentability.4 (`IsCompactMorphism`, `IsDualizablePresentable`).

### Examples

Fix `n` prime to `p` and a geometric Huber pair `(C, C⁺)` with generic rank-one point `(C, O_C)`. The constant complex `ℤ/n` has the identity as specialization map and is overconvergent; a complex whose specialization map is `0 → ℤ/n` is not, since `n > 1`. Replacing `C⁺` by `O_C` changes the test pair but not the value of an object coming from the arc side. For a finite-dimensional spatial diamond the full inclusion and its right adjoint compose to the identity on the arc side, which gives the categorical retract; nothing further about compact generation of the retract follows.

### Dependencies

Layers 0, 4 and 9; DiamondsAndVStacks §§D0.23, D2.7, D4.7, D4.9, D6.1, D6.3; DiamondEtaleCohomology §§C0.19, C0.24, C2.2, C2.12, C4.5, C4.13–C4.14, C9.8; DiamondSixOperations §§S2.4, S4.2–S4.3; EnhancedDerivedSheaves §E5:presentability.4.

## Downstream consumers

No roadmap in the merge order names this roadmap as a supplier. Its exports to roadmaps further down the merge order are the categories `Dmot(X)` and `Deff_mot(X)` with their six operations (§§8.1, 8.5, 9.4), rigidity (§§9.1, 9.6), the torsion and tilting comparisons (§§4.8, 4.9, 8.3), motivic K-theory and its Adams decomposition (§§6.1, 6.3, 7.6), the comparison with algebraic étale motives over algebraically closed fields (§10.6), the nearby-cycle functor and monodromy equivalence (§§11.1, 11.8), and the overconvergent comparison (§12.3).

## Corrections to the source

The following calculations in Scholze's *Berkovich motives* (arXiv v3; the author's copy of 21 January 2026 has the same expressions at the same places) are corrected where this roadmap uses them.

**E1 (proof of Lemma 6.5, p. 38, root containment).** With `r₂ > 1 > r₁` and `n = Σ k_i`, the outer estimate is stated using `|T| ≥ r₁ > 1`, and the estimate inside the `i`-th deleted disc bounds the product by `r₁ⁿ` using `|T − a_j| = |a_i|`. Corrected: for `|T| ≥ r₂` the product has norm `|T|ⁿ ≥ r₂ⁿ`; for `|T − a_i| ≤ r₁` the other centres satisfy `|T − a_j| = |a_i − a_j| = 1`, so the product has norm at most `r₁^{k_i}`. Choose each `k_i` with `r₁^{k_i} < s₁` and `n` with `r₂ⁿ > s₂`. The printed outer threshold contradicts `r₁ < 1`, and in the inner disc only the `i`-th factor is small. Used in §4.4.

**E2 (proof of Lemma 6.5, p. 38, ratio of nearby coordinates).** The difference `(T₁ − a_j)/(T₂ − a_j) − 1` is `(T₁ − T₂)/(T₂ − a_j)`, not `(T₂ − T₁)/(T₂ − a_j)`. The sign does not affect the one-unit estimate. Used in §4.4.

**E3 (proof of Lemma 6.5, p. 38, final containment).** The intended statement is that `0 ⊕ (C^×/(1 + C_{<1}))^d ⊗ ℚ` is contained in the image of `ℕ[U](∗) ⊗ ℚ → ℚ ⊕ (C^×/(1 + C_{<1}))^d ⊗ ℚ`; differences of two point classes have zero rank coordinate. Used in §4.4.

**E4 (proof of Lemma 6.5, p. 38, domain decomposition).** Each annular domain `V_i` contributes a degree-coordinate factor `ℚ^d`, one boundary degree for each of the `d` boundary coordinates of `U`, so `e` domains give `ℚ^{de}`; the printed factor `ℚ^e` per domain would give `ℚ^{e²}`. Used in §4.4.

**E5 (proof of Proposition 5.19, p. 35, annulus fibre).** For a monic polynomial of degree `n` with constant coefficient `a₀` to have all roots in `T(r₁, r₂)`, the coefficients must satisfy `|a_i| < min(r₂^{n−i}, |a₀| r₁^{−i})`, not the bound with `max`. Witness over `ℂ₂` with `r₁ = 1/4`, `r₂ = 4`: `T² + T/2 + 4` has `|a₀| = 1/4 ∈ (1/16, 16)` and `|a₁| = 2 < max(4, 1) = 4`, but its roots have norms `2` and `1/8`, and `1/8 < r₁`. The bound with `min` equals 1 and excludes it; with it the fibre over fixed `a₀` is still an open polydisc. Used in §3.5.

**E6 (Theorem 11.1, p. 57, rational mapping spectrum).** The rational mapping object from `ℤmot[X](−j)` to `ℤ` is `K(X)_ℚ^{(j)}[−2j]`, with `π_i = K_{i+2j}(X)_ℚ^{(j)}`, not the weight-`j` piece without shift. This follows from `Kmot ⊗ ℚ = ⊕ ℚ(n)[2n]` (Proposition 8.5) and agrees with Cisinski–Déglise, Theorem 5.2.2, p. 44. Witness: for `X = ℙ¹` and `j = 1`, the Picard class lies in `π_{−2}`, while `π₀ = H⁰(ℙ¹, ℚ(1)) = 0`. Used in §§10.4–10.5.

Two further conventions are respected: the line-domain computation of Lemma 6.5 takes place in `ℙ¹_C`, and the bounded product of completed residue fields is called totally disconnected only after analytic reduction and strictly totally disconnected only after choosing algebraic closures (§§0.3, 0.5).

## References

- **[Scholze]** Peter Scholze, *Berkovich motives*, arXiv:2412.03382v3 (22 January 2026); J. Amer. Math. Soc. 39 (2026), 697–764. Locators use the internal pagination of arXiv v3: Definitions 2.1–2.2, 2.7, 2.20, Proposition 2.9 (pp. 7–12); Definitions 3.1, 3.10, Propositions 3.2–3.3, 3.9, 3.11, Examples 3.4–3.8, Corollary 3.12, Theorems 3.13–3.14 (pp. 14–18); Theorem 4.1, Definitions 4.3, 4.10, 4.17, 4.19, 4.21–4.22, Lemmas 4.4–4.9, 4.23, Propositions 4.12–4.16, 4.24–4.25, Corollary 4.18, Theorem 4.20, Example 4.26 (pp. 19–26); Definitions 5.1–5.2, 5.15, 5.18, Lemmas 5.3, 5.11, Corollaries 5.4–5.5, Propositions 5.6, 5.8–5.10, 5.12–5.13, 5.17, 5.19, Theorems 5.14, 5.16 (pp. 26–35); Theorems 6.1, 6.3, 6.7, Definition 6.2, Lemmas 6.4–6.5, Corollaries 6.6, 6.9, Proposition 6.8 (pp. 35–40); Theorem 7.1, Lemma 7.3 (pp. 40–43); Corollaries 8.1–8.2, 8.6, 8.10, 8.12, Definition 8.3, Propositions 8.4–8.5, 8.7–8.8, Theorems 8.9, 8.11, 8.13 (pp. 44–50); Definition 9.1, Theorem 9.2, Propositions 9.3–9.5, 9.7, Corollary 9.6 (pp. 50–53); Propositions 10.1, 10.3, 10.8–10.10, Corollaries 10.2, 10.6, Lemma 10.4, Definition 10.7 (pp. 53–57); Theorem 11.1, Remark 11.2, Definition 11.3, Propositions 11.4–11.8, Theorem 11.9, Corollary 11.10 (pp. 57–62); Propositions 12.1, 12.3–12.4, Corollary 12.2 (pp. 62–64); §1, Propositions 1.5–1.6, 1.13, Theorems 1.7, 1.9, 1.12, 1.14 (pp. 4–7).
- **[vdP]** Marius van der Put, *The class group of a one-dimensional affinoid space*, Ann. Inst. Fourier 30 (1980), no. 4, 155–164: Theorem 1.1 (pp. 155–158), Corollary 1.3 (p. 159, proof pp. 159–161).
- **[BLR]** Siegfried Bosch, Werner Lütkebohmert and Michel Raynaud, *Néron Models*, Ergebnisse der Mathematik und ihrer Grenzgebiete (3) 21, Springer, 1990: §9.2, Proposition 3 (p. 244), Example 8 (pp. 246–247), Proposition 10 (p. 249). Cited by locator as background for the torus–abelian extension pattern of §4.3.
- **[CD]** Denis-Charles Cisinski and Frédéric Déglise, *Étale motives*, arXiv:1305.5361v4 (5 December 2014); Compositio Math. 152 (2016), 556–666. Locators use arXiv v4 pagination: Theorem 4.5.2 and Corollary 4.5.3 (p. 41), Theorem 5.2.2 (p. 44), Theorem 5.5.3 (p. 54), Corollaries 5.5.5 and 5.5.7 (pp. 55–56).
