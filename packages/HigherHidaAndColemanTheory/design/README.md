# p-adic families, Part II: higher Hida and Coleman theory

This roadmap extends `PadicFamilies` from modular forms to supported coherent cohomology in every degree. Its ordinary output is a perfect Iwasawa complex with derived arithmetic control, finite Hecke image and Serre duality. Its finite-slope output is a family of finite perfect slope complexes, a cohomological eigenvariety and a maximal-dimensional deformation theorem for interior eigenpackets. Positive-degree classes are part of each output: passing to degree zero loses both the modular-curve dual family and the singular Siegel applications.

The integral Hida theorem is stated for Siegel varieties of every genus, as proved by Boxer–Pilloni. Higher Coleman theory is stated for the general abelian-type Shimura datum with quasi-split local group supported by their source. This includes the Hodge/PEL cases satisfying those hypotheses. The requested general integral Hodge/PEL theorem is a genuine missing theorem, recorded as G1; it is not obtained by renaming the Siegel construction. The general Coleman construction uses Bruhat neighborhoods even when there is no ordinary locus.

This is a complete target-level planning pass, with all nine layers **planned**, and no layer claimed closed or implemented. The packet contains 66 nodes and explicit supplier contracts. The source gaps and conjectural extensions at the end are part of the specification. A proof of a target may be conditional on a requested supplier statement; that condition is always visible in its prerequisite list. The Lean companion retains only two light definitions and statements on carriers present at the pins, following the binding 12 October 2026 worker shape rule. The full mathematical specification, APIs and Checks are here.

## Reading the plan

The layers follow the objects a formaliser needs, rather than the order of a source. A0 fixes the weight and operator dictionary. D1 supplies the supported ordinary mechanism; H2 and I3 apply it to integral Siegel geometry and weight interpolation. C4 and F5 construct the general geometric and analytic finite-slope theories. E6 takes their spectral supports and interior images. B7 compares the two theories where integral geometry is available. X8 tests the conventions against explicit calculations and exports the exact consumer contract.

| Layer | Target | Build from |
| --- | --- | --- |
| A0 | Weights, supports and operator conventions | Existing root, bundle and scalar interfaces |
| D1 | Dynamical ordinary cohomology | Existing root, bundle and scalar interfaces |
| H2 | Integral Siegel strata and fixed weights | `A0`, `D1` |
| I3 | Universal higher Hida complexes | `D1`, `H2` |
| C4 | Geometric higher Coleman cohomology | `A0`, `D1` |
| F5 | Analytic coefficients and derived families | `A0`, `C4` |
| E6 | Eigenvarieties and interior deformation | `C4`, `F5` |
| B7 | Ordinary and finite-slope comparison | `C4`, `D1`, `E6`, `F5`, `H2`, `I3` |
| X8 | Modular, Siegel and unitary Checks | `A0`, `B7`, `C4`, `D1`, `E6`, `F5`, `I3` |

Two distinctions govern the whole plan. The boundary parameter ε is 0 for the canonical extension and 1 for the subcanonical extension with −D; Bruhat partial support is independent of this choice. Likewise “ordinary” means the integral analytic localization/direct factor appropriate to a specified normalized operator, while finite slope is the union of finite nonzero-eigenvalue windows. Algebraically inverting an operator over Q_p would retain every nonzero positive slope, so cannot replace the ordinary construction.

Write cohomological complexes in increasing degree, with H^i dual to H^(d−i) after the canonical bundle and boundary twists. All tensor products in control statements are derived unless explicitly described as a coefficient sheaf or a finite-dimensional vector-space operation. “Perfect amplitude [a,b]” means a finite-projective representative in that range, not merely that some displayed cohomology vanishes. A finite slope block has such a representative locally in weight space, while its individual cohomology modules need not be flat.

## Source editions and locators

All statements below are written in this roadmap’s own words. A source reference names the exact theorem/section and printed author-page number. No source passage or section-by-section digest is included. The two Coleman versions have different pagination; every unqualified Coleman locator uses the revised 180-page author PDF.

- **BP-Hida**: George Boxer and Vincent Pilloni, [Higher Hida theory for Siegel modular forms](https://www.imo.universite-paris-saclay.fr/~vincent.pilloni/higherhidaSiegel.pdf). Author PDF read 2026-10-16, 65 printed pages; published Inventiones mathematicae 244 (2026), 45–141, DOI 10.1007/s00222-025-01393-2. Locators below refer to the author PDF, not journal pagination. No public arXiv identifier was located. SHA-256: `af70d084612b1b75761694923ef2395752d23b41e0b8b458910d096df4c8c3c6`.
- **BP-Coleman**: George Boxer and Vincent Pilloni, [Higher Coleman theory](https://www.imo.universite-paris-saclay.fr/~vincent.pilloni/HigherColeman.pdf). Revised author PDF, 180 pages, read 2026-10-16; file metadata created 2025-03-03, identified by SHA-256 below. This is the normative edition for all Coleman locators. SHA-256: `d340c9a020cc5fdbca781a8630b6fae35e14607142bed700d6ab82334faa80ae`.
- **BP-Coleman-v1**: George Boxer and Vincent Pilloni, [Higher Coleman theory](https://arxiv.org/pdf/2110.10251v1). arXiv:2110.10251v1 [math.NT], 19 October 2021, 174 pages; checked against the revised author version. Never interchange its theorem/page numbering with the normative edition. SHA-256: `85526b90c48d0955f2a042f63d619a22584e3801391934504563994733d58596`.
- **Pilloni-Singular**: Vincent Pilloni, [Higher coherent cohomology and p-adic modular forms of singular weights](https://www.imo.universite-paris-saclay.fr/~vincent.pilloni/complexhidatheorygsp4.pdf). Duke Mathematical Journal 169 (2020), no. 12, 2511–2659; cleared author PDF, 113 pages, file metadata created 2019-06-17. Locators refer to its printed author-page numbers. Read 2026-10-16. SHA-256: `4c05724efeab1dbbb108f980ec9a722127d2a8cd2abf6e8c2a6a2251cf0f9f58`.
- **BP-GL2**: George Boxer and Vincent Pilloni, [Higher Hida and Coleman theories on the modular curve](https://arxiv.org/pdf/2002.06845v2). arXiv:2002.06845v2 [math.NT], 11 September 2022; Épijournal de Géométrie Algébrique 6 (2022), article 16; read 2026-10-16. SHA-256: `2db66ee969c5030f2b24b09ff9321d6ea582dd725e10c31de9ac76e1ab47f47e`.

For Higher Hida, the author PDF and journal publication are identified precisely; a public arXiv identifier was not located in the author listings or title searches. No identifier is guessed. Pilloni’s singular-weight source was read from the maintainer-cleared author edition; the citation gives its public bibliographic location without redistributing the file.

## Baseline and ownership

The baseline is Mathlib `082e2d37e8b0463410cdb532e111cd43d5a66174` and Tau Ceti `f790474821cf4256814db967cb154e7af3d0c369`. Actual declarations and surrounding assumptions were read before citing the following small existing interfaces:

- `mathlib:Module.End` in `Mathlib/Algebra/Module/LinearMap/End.lean`: The ring of linear endomorphisms M →ₗ[R] M; suffices for scalar normalization prototypes.
- `mathlib:zpow_sub₀` in `Mathlib/Algebra/GroupWithZero/Units/Basic.lean`: For nonzero a in a group with zero, a^(m−n)=a^m/a^n.
- `mathlib:DerivedCategory` in `Mathlib/Algebra/Homology/DerivedCategory/Basic.lean`: The derived category of an abelian category, using localization at quasi-isomorphisms; this alone supplies neither solid six functors nor completed tensor products.
- `mathlib:CondensedMod` in `Mathlib/Condensed/Module.lean`: Condensed R-modules as sheaves on compact Hausdorff spaces, with the abelian instance; not a general solid-module formalism.

The reviewed `data/library-coverage.json` records for the suppliers were consulted before adding targets. In particular the PEL model, automorphic torsor/extension and p-adic-family targets are absent or partial at these pins; the existing classical modular-form and general algebraic interfaces are imported. Condensed modules plus an ordinary derived category do not give solid analytic localization, continuous completed group cohomology or a six-functor formalism.

The read-only current [TauCetiRoadmap main](https://github.com/TauCetiProject/TauCetiRoadmap/tree/0d144d044dacebca17b654695b6f1ad58f159b27) and [Tau Ceti library](https://github.com/TauCetiProject/TauCeti/tree/a91d3aafa8cd3e6bc33dfde0d7677ed0f1625039) were also searched. The current AlgebraicVectorBundles and ReductiveGroups reader documents were read for their existing general bundle and root-data interfaces. The nine roadmap additions that postdate the atlas snapshot, including OperatorTheory’s nested suggested files, were checked for overlap. Those results stay with their owners. This roadmap introduces neither a second algebraic-vector-bundle library nor a second compact-operator/Fredholm machine.

A generic ingredient needed beyond an existing owner becomes that owner’s Part II. Exact supplier-node references are used for the derived ordinary projector, four finite-slope-complex interfaces, complex spectral support, Bruhat tubes, finite-level groups, toroidal period maps and Levi reductions. Remaining stage-level imports have explicit contracts below; none means that the present supplier stage already proves its full requested strengthening.

## Global data

For C4–E6, unless a target narrows the setting:

- (G,X) is an abelian-type Shimura datum; G over Q_p is quasi-split. Fix B,T over Q_p and a finite extension F/Q_p splitting G and defining µ, P_µ and the coefficient representations.
- Fix neat tame level K^p, compatible smooth admissible toroidal fans and sufficiently deep Iwahori-decomposed K_{p,m,b}, m≥b≥0 and m>0. All coefficient fields contain the required finite characters and cyclotomic extension for torsor reduction.
- Automorphic weights factor through T^c=T/Z_s, where Z_s is the largest R-split central subtorus with no Q-split subtorus. Finite-slope means the union of finite nonzero-eigenvalue slope windows, never all cohomology.

For H2–I3 and B7:

- G=GSp_{2g}/Q, g≥1, with hyperspecial good reduction at p, neat prime-to-p level and compatible integral toroidal data. Let d=g(g+1)/2.
- Use polarized ordinary Igusa quotients at the cofinal admissible P-levels, with coefficient lattices and their normalized Hecke correspondences specified. For p=2 use the source cofinal subgroup construction rather than an automatic Levi splitting.

D1 uses its separately stated finite-type-over-Z solid input, with Artinian Z_p/p^s coefficient instances. General larger-base six operations are a supplier extension, not an assumption that every noetherian base lies in the existing formalism. In X8 each Check states its additional group, weight and level conventions.

## A0. Weights, supports and operator conventions

Fix the abelian-type Coleman datum, quotient torus, relative slope order, shifted Weyl chambers, and integral Siegel datum. Specify the two classicality tests and the scalar normalization check that every comparison must respect.

### A0/weight-dictionary — The cohomological weight dictionary

**Definition.** Write M=M_µ, W_M for its Weyl group, w0M for its longest element and MW for minimal representatives of W_M\W. Let Φ+ have noncompact roots in g/p_std and compact roots in Lie(M); ρ is half their sum and ρ_nc half the noncompact sum. Put d=dim Sh, ℓ+(w)=ℓ(w), ℓ−(w)=d−ℓ(w), Cκ+={w∈MW: −w⁻¹w0M(κ+ρ) is G-dominant}, and Cκ−={w: w⁻¹(κ+ρ) is G-dominant}. Set ν_w(κ)=−w⁻¹w0M(κ+ρ)−ρ, κ_w(ν)=−w0M w(ν+ρ)−ρ, and κ∨=−w0Mκ−2ρ_nc. These are algebraic lattice formulas; no action of absolute W on arbitrary analytic characters of T^c(Z_p) is asserted.

Hypotheses: the global Coleman datum above.

Direct inputs: `ShimuraData:D3`, `AutomorphicBundles:B4`.

Proof/construction route:

1. Import the root datum and highest-weight labels, retaining the left-coset convention.
2. Check the inverse formulas by cancelling w and w0M; restrict algebraic weights to the actual quotient torus.

Source: **BP-Coleman**, §§1.1–1.3, pp. 2–9; §4.1, pp. 50–51; §5.11, pp. 129–130; §6.5.4, p. 160. Fixes the shifted chambers, duality weight and change from coherent to family weights.

Uses that determine the API: **BP-Coleman, Theorem 6.9.3**: Identifies the algebraic weight at a family point. **BP-Hida, Theorem 5.3.5**: Chooses the integral fixed-weight complex.

Planning API:

- `TauCeti.HigherHidaColeman.weightOfFamily` (data): κ_w(ν)=−w0M w(ν+ρ)−ρ.
- `TauCeti.HigherHidaColeman.familyWeight_inverse` (compatibility): ν_w(κ_w(ν))=ν on the algebraic character lattice.
- `TauCeti.HigherHidaColeman.compatibleChambers` (characterisation): w∈Cκ+ exactly when −w⁻¹w0M(κ+ρ) is dominant, without a further −ρ inside this test.
- `TauCeti.HigherHidaColeman.serreWeight_involutive` (relation): (κ∨)∨=κ; Serre duality exchanges ℓ+ and ℓ−.

Discriminating unit tests:

- **A0.weight-dictionary.regular** (example): For GL2, k≥2 selects the degree-zero chamber; k≤0 selects the degree-one chamber.
- **A0.weight-dictionary.singular** (example): For GSp4 κ=(k+2,2), k≥0, κ+ρ=(k+1,0) and Cκ+ contains the first two representatives.
- **A0.weight-dictionary.inverse** (characterisation): In the C2 convention of X8, ν=(0,−2) gives κ_w=(5,3),(5,1),(2,−2),(0,−2); substituting each returns ν.

Acceptance: A regular κ+ρ gives one compatible w; singular κ can give several. The canonical bundle has weight −2ρ_nc with boundary twist −D.

Atlas planet: **Cohomological weight dictionary**.

### A0/slope-conditions — Relative slopes and geometric classicality regions

**Definition.** Let T^d be the maximal Q_p-split subtorus of T, and record the valuation of a smooth torus eigencharacter as λ∈X*(T^d)_R, normalized by v_p(p)=1. The order a≤b means b−a lies in the nonnegative relative simple-root cone (equivalently its evaluation on every positive cocharacter is nonnegative); central components must agree. For + set A_w=w⁻¹w0M(κ+ρ)+ρ and a_w=w⁻¹w0Mκ. A geometric small slope excludes λ≥A_w for every w∉Cκ+; a proved geometric strongly small slope excludes at least one of λ≥a_w and λ≥a_w+w⁻¹2ρ_nc for every such w. For − use B_w=w⁻¹(κ+ρ)−ρ and b_w=w⁻¹κ, reverse ≥ to ≤ and Cκ+ to Cκ−. Negation of a cone inequality is logical negation, not a coordinatewise strict inequality.

Hypotheses: the global Coleman datum above.

Direct inputs: `A0/weight-dictionary`, `ShimuraData:D3`.

Proof/construction route:

1. Use the relative valuation map and the root-cone description.
2. Define the exclusions as finite conjunctions over the wrong chambers; leave equality on the forbidden side.

Source: **BP-Coleman**, §5.9, pp. 121–124; Definitions 5.11.2 and 5.11.14, pp. 130, 134. Separates the conjectural sharp exclusion region from the region supplied by the proved two slope bounds.

Uses that determine the API: **C4/geometric-classicality**: Removes the unwanted Cousin summands. **E6/classical-points**: States a sufficient region in which an eigenvariety point is classical.

Planning API:

- `TauCeti.HigherHidaColeman.relativeSlope_le_iff` (characterisation): a≤b iff each positive cocharacter evaluates a≤b, including equality of the central component.
- `TauCeti.HigherHidaColeman.geometricStrongSmall` (constructor): For each wrong w, require failure of at least one of the two proved bounds.
- `TauCeti.HigherHidaColeman.geometricStrongSmall_implies_small` (relation): The proved exclusion region implies the sharp exclusion region, by the root-cone comparison of §5.11.
- `TauCeti.HigherHidaColeman.slope_twist` (compatibility): Twisting the eigencharacter by an algebraic η replaces λ by λ+η on T^d.

Discriminating unit tests:

- **A0.slope-conditions.endpoint** (non-example): In GL2 weight k≥2, slope k−1 is outside the strict degree-zero classicality region.
- **A0.slope-conditions.cone_negation** (example): In the cone R≥0², (−1,10) is not ≥(0,0), although its second coordinate is positive.
- **A0.slope-conditions.central** (non-example): Two weights with different central components are not comparable merely because their derived-group projections agree.

Acceptance: The two lower bounds are retained separately; a vector maximum is not substituted for a cone condition.

Atlas planet: **Small slope regions**.

### A0/scalar-normalization — Scalar renormalization check

**Definition.** For a Q_p-linear endomorphism U and integer a, define renorm(p,a,U)=p^(−a)U. An eigenvalue α becomes p^(−a)α, hence its valuation becomes v_p(α)−a when α≠0. This light definition checks operator comparisons; the geometric construction of each U is a separate target.

Direct inputs: `mathlib:Module.End`, `mathlib:zpow_sub₀`.

Proof/construction route:

1. Apply scalar multiplication to the existing linear-map carrier.
2. Evaluate on a vector and use the multiplicative valuation law.

Source: **BP-Coleman**, Example 5.14.2, p. 141; §6.5.4, p. 160. The modular example and analytic/algebraic comparison require explicit scalar shifts.

Uses that determine the API: **X8/modular-check**: Reconciles naive, integral and standard U_p slopes. **F5/analytic-hecke**: Checks the algebraic-character twist on every eigenvalue.

Planning API:

- `TauCeti.HigherHidaColeman.renorm` (constructor): renorm(p,a,U)=p^(−a) • U.
- `TauCeti.HigherHidaColeman.renorm_apply` (simp): renorm(p,a,U)(v)=p^(−a) • U(v).
- `TauCeti.HigherHidaColeman.renorm_add` (compatibility): renorm(p,a,renorm(p,b,U))=renorm(p,a+b,U) for p≠0.
- `TauCeti.HigherHidaColeman.renorm_eigenvector` (relation): U(v)=αv implies renorm(p,a,U)(v)=(p^(−a)α)v.

Discriminating unit tests:

- **A0.scalar-normalization.zero** (example): renorm(p,0,U)=U.
- **A0.scalar-normalization.positive** (example): renorm(3,2,id) acts by 1/9 on Q3.
- **A0.scalar-normalization.negative** (example): renorm(3,−1,id) acts by 3, rather than 1/3.

Acceptance: Normalization always names its original operator, avoiding a slope convention imported from another paper.

Layer status: **planned**. Its targets are represented above, but closure still requires the precise supplier and gap items in the final sections.

## D1. Dynamical ordinary cohomology

Define strict/compact dynamical compactifications and the two orders of partial support. Prove ordinary finite-rank factorization, finiteness, perfectness, discrete derived base change, transposed duality and Hecke-compatible supported Cousin filtrations. Import solid six functors and ordinary projectors.

### D1/dynamic-compactification — Dynamical compactifications

**Definition.** A dynamical compactification consists of proper Xbar,Cbar over S, two maps p1,p2, closed subschemes D+,D− with X=Xbar\(D+∪D−) and C=Cbar\(p1*D+∪p2*D−), and p2*D+⊂p1*D+, p1*D−⊂p2*D− on underlying sets. For ideals I,I′ write D≤(a/b)D′ if (I′)^a⊂I^b for some positive integers a,b. Strict dynamics requires p2*D+≤s p1*D+ and p1*D−≤s p2*D− for some rational 0<s<1. Compact dynamics replaces these by inclusions in the interiors of the right-hand closed subsets in the solid/discrete-adic locale. D+ and D− may intersect. Transposition swaps p1,p2 and D+,D−.

Hypotheses: Work with separated finite-type schemes over a noetherian affine base S, and proper compactifications of the correspondence C→X×_S X. For solid-six-functor imports use the finite-type-over-Z case; extending the formalism to larger bases is a supplier request. The coefficient is coherent, with a cohomological correspondence p2*F→p1!F. Limits, colimits and tensor products here are derived solid operations, not exchanges of ordinary module limits.

Direct inputs: `AnalyticStacks:AS.3`, `SolidAnalyticRings:SA.3`.

Proof/construction route:

1. Use the imported proper correspondence and solid locale.
2. Define ideal-power comparison, then its strict and compact variants; transport them to common refinements.

Source: **BP-Hida**, Definitions 2.1.15, 2.1.19, 2.1.24, 2.1.26, pp. 8–10. Provides the schematic and topological forms of expansion and contraction used for ordinary finiteness.

Uses that determine the API: **D1/ordinary-finiteness**: Strict contraction reduces the support twists to bounded ranges. **H2/stratum-dynamics**: The Siegel correspondence supplies these data on each ordinary stratum.

Planning API:

- `TauCeti.HigherHidaColeman.DynamicCompactification` (constructor): Stores compactifications, both projections, the two labelled boundary pieces and the expansion/contraction proofs.
- `TauCeti.HigherHidaColeman.transposeDynamic` (functoriality): Transposition interchanges the two labels and is involutive.
- `TauCeti.HigherHidaColeman.strictDynamic_iterate` (compatibility): Iterating a strict dynamical correspondence preserves strict dynamics.
- `TauCeti.HigherHidaColeman.strictDynamic_refinement` (relation): Common strict refinements preserve the induced supported-cohomology action.

Discriminating unit tests:

- **D1.dynamic-compactification.frobenius** (example): For p2=Frobenius, p1=id over F_p and D=V(f), p2*D=pD, hence D is strictly contracted with s=1/p.
- **D1.dynamic-compactification.identity** (non-example): For the identity on a regular scheme and a nonempty effective Cartier divisor, D≤sD fails for 0<s<1.
- **D1.dynamic-compactification.empty** (example): D+=D−=∅ satisfies the boundary inequalities, and the open is all of the proper Xbar.

Acceptance: An inclusion of supports alone does not imply strict ideal-power contraction.

Atlas planet: **Dynamical compactifications**.

### D1/partial-support — Two orders of partial support

**Definition.** For j−:X→Xbar\D+ and j+:Xbar\D+→Xbar define K+−(F)=RΓ(Xbar,j+_*j−_!F). For i+:X→Xbar\D− and i−:Xbar\D−→Xbar define K−+(F)=RΓ(Xbar,i−_!i+_*F). If D± are locally principal and Fbar is a coherent extension, these are respectively Rlim_n− colim_n+ RΓ(Fbar(n+D+−n−D−)) and colim_n+ Rlim_n− RΓ(Fbar(n+D+−n−D−)). The comparison K−+→K+− is canonical; it need not be an equivalence before ordinary localization.

Hypotheses: Work with separated finite-type schemes over a noetherian affine base S, and proper compactifications of the correspondence C→X×_S X. For solid-six-functor imports use the finite-type-over-Z case; extending the formalism to larger bases is a supplier request. The coefficient is coherent, with a cohomological correspondence p2*F→p1!F. Limits, colimits and tensor products here are derived solid operations, not exchanges of ordinary module limits.

Direct inputs: `D1/dynamic-compactification`, `AnalyticStacks:AS.3`.

Proof/construction route:

1. Compose the imported ! and * operations for the two open factorizations.
2. Use the coherent principal-divisor limit formulas; common compactifications compare the results.

Source: **BP-Hida**, §2.2, pp. 11–15; Corollary 2.3.11, p. 17. Defines the two support orders and their twist formulas in solid cohomology.

Uses that determine the API: **D1/ordinary-finiteness**: The two orders become the same finite ordinary object. **H2/fixed-complex**: Defines the supported fixed-weight complex on a Siegel stratum.

Planning API:

- `TauCeti.HigherHidaColeman.partialSupport` (constructor): K+− and K−+ with canonical comparison K−+→K+−.
- `TauCeti.HigherHidaColeman.partialSupport_twists` (characterisation): For coherent principal-boundary extensions, compute using the two displayed derived limit orders.
- `TauCeti.HigherHidaColeman.partialSupport_refine` (compatibility): A strict map of compactifications gives equivariant quasi-isomorphisms.
- `TauCeti.HigherHidaColeman.partialSupport_transpose` (relation): Dualizing exchanges the support orders and boundary labels under the smooth vector-bundle hypotheses.

Discriminating unit tests:

- **D1.partial-support.proper** (example): When both D± are empty, both complexes equal ordinary RΓ(X,F).
- **D1.partial-support.star** (example): When D− is empty, K+−=RΓ(Xbar,j_*F), with positive twists along D+.
- **D1.partial-support.shriek** (example): When D+ is empty, K+−=RΓ(Xbar,j_!F), with inverse limits of negative boundary twists, rather than positive twists.

Acceptance: The two displayed limit orders remain distinct until the strict-dynamics theorem.

Atlas planet: **Partial support cohomology**.

### D1/ordinary-localization — Supported ordinary localization

**Definition.** For a chosen T-action on K∈D(A_square), set K^ord=K⊗^L_(A[T],A)_square A[T,T⁻¹]_square. This is an analytic/solid localization, including the specified integral subring A in the source pair. An automorphism on a finite discrete A-complex is unchanged; a topologically nilpotent action on an A[[T]]-complex is killed. When A is Artinian and K has bounded finite cohomology it agrees with the imported Fitting ordinary direct factor; for m-adic towers agreement is asserted only after the relevant finiteness/completeness hypotheses are proved.

Hypotheses: Work with separated finite-type schemes over a noetherian affine base S, and proper compactifications of the correspondence C→X×_S X. For solid-six-functor imports use the finite-type-over-Z case; extending the formalism to larger bases is a supplier request. The coefficient is coherent, with a cohomological correspondence p2*F→p1!F. Limits, colimits and tensor products here are derived solid operations, not exchanges of ordinary module limits.

Direct inputs: `D1/partial-support`, `mathlib:DerivedCategory`, `mathlib:CondensedMod`, `SolidAnalyticRings:SA.2`, `SolidAnalyticRings:SA.3`, `PadicFamilies:L0a/locally-finite-ordinary-projector`.

Proof/construction route:

1. Apply the imported analytic localization, retaining the chosen action rather than merely a cohomology endomorphism.
2. Compare on finite discrete complexes by Fitting decomposition; use the annihilation of A[[T]] by the target analytic algebra.

Source: **BP-Hida**, Definition 2.4.2 and Lemmas 2.4.3–2.4.4, pp. 18–19. Defines the ordinary localization used even before the supported complex has been shown finite.

Uses that determine the API: **D1/ordinary-finiteness**: Extracts the finite ordinary part from supported complexes. **I3/universal-complex**: Compares the finite-level localization with the classical factorial projector.

Planning API:

- `TauCeti.HigherHidaColeman.supportedOrdinary` (constructor): The displayed solid derived tensor defines the localized supported complex.
- `TauCeti.HigherHidaColeman.supportedOrdinary_universal` (universal-property): It is initial for maps of analytic modules to the target analytic-algebra category.
- `TauCeti.HigherHidaColeman.supportedOrdinary_fitting` (compatibility): For Artinian A and bounded finite discrete K it equals the ordinary direct factor.
- `TauCeti.HigherHidaColeman.supportedOrdinary_exact` (functoriality): The localization preserves distinguished triangles and commutes with the tower operations justified by the analytic-ring localization theorem.

Discriminating unit tests:

- **D1.ordinary-localization.unit** (example): T=1 on finite discrete A in degree zero leaves A unchanged.
- **D1.ordinary-localization.nilpotent** (example): T=0 on A is killed.
- **D1.ordinary-localization.adic** (example): Over Z/p^s, T=p on A is killed; the compatible inverse system has zero ordinary part, although p becomes an algebraic unit after tensoring Q_p.

Acceptance: Do not replace this with ordinary algebraic inversion over Q_p: a positive-slope scalar is algebraically invertible there.

Atlas planet: **Supported ordinary localization**.

### D1/ordinary-finiteness — Finiteness from strict dynamics

**Theorem.** For a strict dynamical compactification and coherent F, the canonical comparison (K−+)^ord→(K+−)^ord is an equivalence, and the resulting object is independent of the chosen strict compactification. If A is Artinian it has bounded finite discrete A-cohomology. The proof factors a sufficiently iterated cohomological correspondence through cohomology of finitely many bounded coherent twists on a proper model; arbitrary exchanges of inverse limits and filtered colimits are unnecessary.

Hypotheses: Work with separated finite-type schemes over a noetherian affine base S, and proper compactifications of the correspondence C→X×_S X. For solid-six-functor imports use the finite-type-over-Z case; extending the formalism to larger bases is a supplier request. The coefficient is coherent, with a cohomological correspondence p2*F→p1!F. Limits, colimits and tensor products here are derived solid operations, not exchanges of ordinary module limits.

Direct inputs: `D1/ordinary-localization`, `D1/dynamic-compactification`, `AnalyticStacks:AS.3`.

Proof/construction route:

1. Use the ideal-power inequalities to make high iterates improve both twist indices.
2. Clear the bounded coefficient poles using Proposition 2.3.13 and factor the iterate through a finite set of coherent proper cohomology objects.
3. Invert T in this factorization; compare refinements and the two support orders.

Source: **BP-Hida**, Theorem 2.5.1 and Proposition 2.5.4, pp. 19–21. Strict expansion/contraction bounds the twists and gives finite ordinary cohomology.

Acceptance: Over an Artinian base the output is finite and bounded, not automatically termwise free.

Atlas planet: **Ordinary finiteness theorem**.

### D1/discrete-base-change — Discrete derived coefficient change

**Theorem.** Assume F is A-flat and M is a finite discrete A-module. For the strict dynamical ordinary object, RΓ^ord(X,F)⊗^L_A M≃RΓ^ord(X,F⊗_A M). For finite A→A′ the geometric base-change formula additionally requires X and Spec A′ to be Tor independent over A. Neither assertion is an arbitrary completed Banach coefficient change.

Hypotheses: Work with separated finite-type schemes over a noetherian affine base S, and proper compactifications of the correspondence C→X×_S X. For solid-six-functor imports use the finite-type-over-Z case; extending the formalism to larger bases is a supplier request. The coefficient is coherent, with a cohomological correspondence p2*F→p1!F. Limits, colimits and tensor products here are derived solid operations, not exchanges of ordinary module limits.

Direct inputs: `D1/ordinary-finiteness`, `AnalyticStacks:AS.3`, `DeformationAndDerivedPatchingAlgebra:P7`.

Proof/construction route:

1. Apply the projection formula for the !/* support factorization and the supplied discrete-solid tensor comparison.
2. Use A-flatness to keep the coefficient coherent and bounded below.
3. For geometric change identify the derived and underived fiber products by Tor independence.

Source: **BP-Hida**, Propositions 2.6.2 and 2.6.13, pp. 21–23. Gives the discrete projection-formula and Tor-independence hypotheses.

Acceptance: Derived tensor remains in the conclusion even when the cohomology groups have torsion.

### D1/ordinary-perfectness — Artinian and equivariant perfectness

**Theorem.** Over an Artinian local A, an A-flat coherent F with strict dynamics has RΓ^ord(X,F) perfect over A. More generally, for a finite abelian group Γ commuting with the correspondence, A[Γ]-flat F gives a perfect A[Γ]-complex and augmentation specialization to RΓ^ord(X,F/I_ΓF). A finite étale Γ-torsor over an A-flat X supplies this equivariant flatness for its direct-image structure sheaf.

Hypotheses: Work with separated finite-type schemes over a noetherian affine base S, and proper compactifications of the correspondence C→X×_S X. For solid-six-functor imports use the finite-type-over-Z case; extending the formalism to larger bases is a supplier request. The coefficient is coherent, with a cohomological correspondence p2*F→p1!F. Limits, colimits and tensor products here are derived solid operations, not exchanges of ordinary module limits.

Direct inputs: `D1/discrete-base-change`, `D1/ordinary-finiteness`, `DeformationAndDerivedPatchingAlgebra:P7`.

Proof/construction route:

1. Use discrete base change to compute the residue-field derived fiber.
2. Use ordinary finiteness there and the supplied local perfect-complex criterion.
3. For A[Γ] use torsor descent to prove flatness, then specialize through augmentation without dividing by |Γ|.

Source: **BP-Hida**, Theorem 2.6.8, Theorem 2.6.10 and Lemma 2.6.11, p. 22. Proves perfectness by residue-field amplitude and supplies the finite-torsor group-ring argument.

Acceptance: The equivariant result applies even when p divides |Γ|.

Atlas planet: **Ordinary perfectness theorem**.

### D1/ordinary-duality — Transposed ordinary Serre duality

**Theorem.** Suppose C and X are smooth over Artinian A and F is finite locally free. Put D_XF=RHom(F,p!A), using p!A=Ω^d[d]. Transpose the coefficient correspondence and swap D±. The perfect ordinary complexes satisfy RΓ^ord_C(X,F)≃RHom_A(RΓ^ord_Ct(X,D_XF),A), and conversely. Thus an untwisted dual bundle appears in complementary cohomological degrees after the canonical-bundle and boundary twists are included.

Hypotheses: Work with separated finite-type schemes over a noetherian affine base S, and proper compactifications of the correspondence C→X×_S X. For solid-six-functor imports use the finite-type-over-Z case; extending the formalism to larger bases is a supplier request. The coefficient is coherent, with a cohomological correspondence p2*F→p1!F. Limits, colimits and tensor products here are derived solid operations, not exchanges of ordinary module limits.

Direct inputs: `D1/ordinary-perfectness`, `D1/partial-support`, `AnalyticStacks:AS.3`.

Proof/construction route:

1. Apply six-functor duality to the two open immersions.
2. Transpose p2*F→p1!F using smoothness of C and X.
3. Use ordinary/nonordinary orthogonality and perfectness to restrict the duality.

Source: **BP-Hida**, Propositions 2.7.2–2.7.3 and Theorem 2.7.4, pp. 23–24. The duality interchanges the boundary orders and the two projections of the correspondence.

Acceptance: The shift is fixed by H^i pairing with H^(d−i), not by an ungraded vector-space dual.

### D1/supported-cousin — Hecke-compatible supported Cousin filtration

**Theorem.** For a finite closed filtration ∅=Z_{−1}⊂Z_0⊂⋯⊂Z_d=X and bounded-above solid F, the formal closed supports give E1^(p,q)=H_c^(p+q)(Zhat_p\Zhat_{p−1},F)⇒H^(p+q)(X,F). If p1*Z_j⊂p2*Z_j set-theoretically, the coefficient correspondence acts on this spectral sequence. Distinguish formal-completion support Zhat from scheme-theoretic local cohomology; the former is the idempotent algebra Rlim O/I^n.

Hypotheses: Work with separated finite-type schemes over a noetherian affine base S, and proper compactifications of the correspondence C→X×_S X. For solid-six-functor imports use the finite-type-over-Z case; extending the formalism to larger bases is a supplier request. The coefficient is coherent, with a cohomological correspondence p2*F→p1!F. Limits, colimits and tensor products here are derived solid operations, not exchanges of ordinary module limits.

Direct inputs: `D1/partial-support`, `SolidAnalyticRings:SA.2`, `AnalyticStacks:AS.3`, `DeformationAndDerivedPatchingAlgebra:P7`.

Proof/construction route:

1. Import idempotent completion and its two localization triangles.
2. Form the finite tower of support triangles and its exact couple.
3. Use the given inclusion of pulled-back closed supports to define compatible correspondence maps.

Source: **BP-Hida**, §2.9, especially Theorem 2.9.7 and Proposition 2.9.9, pp. 27–29. Uses formal closed supports and localization triangles to build the enhanced Cousin spectral sequence.

Acceptance: A filtration of length one recovers the localization long exact sequence.

### D1/compact-dynamics — Finite rank and the compact-dynamics bridge

**Theorem.** For compact dynamics, if the coherent coefficient correspondence extends across a neighborhood of Cbar\(int(p1*D+)∪int(p2*D−)), its supported-cohomology endomorphism factors through an object with bounded finite cohomology over the proper core. Shrinking admissible support pairs induces ordinary equivalences. Strict and compact models compare when the coefficient map has the zeros/poles factorization of Theorem 2.11.4; compact containment of supports alone does not give that comparison.

Hypotheses: Work with separated finite-type schemes over a noetherian affine base S, and proper compactifications of the correspondence C→X×_S X. For solid-six-functor imports use the finite-type-over-Z case; extending the formalism to larger bases is a supplier request. The coefficient is coherent, with a cohomological correspondence p2*F→p1!F. Limits, colimits and tensor products here are derived solid operations, not exchanges of ordinary module limits.

Direct inputs: `D1/ordinary-finiteness`, `D1/partial-support`, `AnalyticStacks:AS.3`.

Proof/construction route:

1. Factor the map through cohomology supported on the proper core of the compact containment.
2. After inverting T, the factorization supplies support-shrinking inverses.
3. Verify the coefficient extension and twist inequalities before applying the strict/compact bridge.

Source: **BP-Hida**, Propositions 2.10.3–2.10.4, pp. 30–31; Theorem 2.11.4, pp. 32–33. Separates the finite-rank support argument from the extra coefficient hypothesis needed to compare the two forms of dynamics.

Acceptance: Failure to extend the coefficient map is a real missing hypothesis.

Layer status: **planned**. Its targets are represented above, but closure still requires the precise supplier and gap items in the final sections.

## H2. Integral Siegel strata and fixed weights

Apply the dynamical theory to polarized ordinary Siegel Igusa quotients and their partial toroidal compactifications. Normalize the Hecke correspondences integrally, prove supported fixed-weight perfectness, and derive the integral Cousin and regular-weight rational control theorems with model dependence explicit.

### H2/ordinary-strata — Siegel degree strata and support pairs

**Construction.** On the normalization model at Iwahori level p^n, use the self-dual chain A_g→⋯→A_2g→A_1→⋯→A_g and its graded order-p^n groups Gr_i. The degree divisors D_i satisfy D_i+D_(2g+1−i)=V(p^n). Set Z_i=Σ_(j=1)^i D_(g+j), blow up to separate positive and negative parts of Z_i−V(p^(nj)), and let the w-stratum be the open on which Gr_(w⁻¹(i)) is multiplicative for i=g+1,…,2g. The closed degree filtration F_r=⋃_(ℓ(w)≤r) Z_>w−1 and D_w,+=⋃_i Z_i,<w_i, D_w,−=⋃_i Z_i,>w_i supply the support pairs. Here w_i counts the multiplicative increments among the first i groups Gr_(g+j). These distinguished strata need not exhaust the ordinary locus for n>1.

Hypotheses: the global integral Siegel datum above.

Direct inputs: `A0/weight-dictionary`, `PELModuli:M2`, `ShimuraCompactifications:C5`, `HodgeTateAndCanonicalSubgroups:T5`.

Proof/construction route:

1. Import the integral moduli chain, degree ideals and ordinary Igusa identifications.
2. Normalize the product of polarization moduli spaces, then blow up pairs of degree divisors to separate signs.
3. Use the binary multiplicative/étale increments to index the open strata and assemble the closed filtration.

Source: **BP-Hida**, §§3.4.19–3.4.25, pp. 40–41; §4.1, §4.1.11 and Proposition 4.1.13 and §4.1.16, pp. 41–43. Builds the degree filtration used specifically in the higher-Hida proof, on a model whose choice is recorded.

Uses that determine the API: **H2/stratum-dynamics**: The separated divisors yield strict contraction on each stratum. **H2/integral-cousin**: The closed degree filtration supplies the Cousin terms.

Planning API:

- `TauCeti.HigherHidaColeman.siegelSupportPair` (constructor): Returns the normalized degree model, the w-open and its labelled support pair.
- `TauCeti.HigherHidaColeman.degree_dual` (relation): D_i+D_(2g+1−i)=V(p^n), encoding Cartier duality.
- `TauCeti.HigherHidaColeman.stratum_multiplicative_iff` (characterisation): The graded pieces selected by w are multiplicative, equivalently their dual graded pieces are étale.
- `TauCeti.HigherHidaColeman.stratum_igusa` (compatibility): The open formal stratum equals the supplied partial toroidal Igusa quotient at wK_p,nw⁻¹∩P, with the cyclotomic descent conditions checked.

Discriminating unit tests:

- **H2.ordinary-strata.genus_one** (example): For g=1 the two strata distinguish a multiplicative and an étale cyclic subgroup.
- **H2.ordinary-strata.dual_degree** (example): At an ordinary point a multiplicative Gr_i has degree divisor n and its étale dual has degree zero.
- **H2.ordinary-strata.deep_level** (non-example): For n>1 a noncanonical cyclic filtration can be ordinary without lying in one of these distinguished w-opens.

Acceptance: On n=1 the distinguished strata exhaust the ordinary special fiber; do not generalize this assertion to n>1.

Atlas planet: **Ordinary Siegel strata**.

### H2/integral-normalization — Integrally normalized stratum Hecke action

**Construction.** For a chosen integral highest-weight lattice ωκ from the de Rham M-torsor and t∈T++, set ν=ν_w(κ) and t_w=ν(t)t_naive on the w-Igusa stratum. The trace factor is the character w⁻¹w0Mρ+ρ, calculated from formal torus root coordinates; the resulting coefficient correspondence p2*ωκ→p1!ωκ is integral. Globally choose k′ sufficiently large and tildeωκ=ωκ(−k′Σ_i Z_i) so this normalized correspondence extends to the degree model. It is a construction with a chosen lattice and model, not a canonical integral extension of the rational bundle. With finite character χ retain the same algebraic ν and the finite-character coefficient twist separately.

Hypotheses: the global integral Siegel datum above.

Direct inputs: `H2/ordinary-strata`, `AutomorphicBundles:B2`, `AutomorphicBundles:B3`, `AutomorphicBundles:B5`.

Proof/construction route:

1. Compute trace in each formal multiplicative coordinate and apply the highest-weight character.
2. Prove integrality on the supplied Igusa reduction of the de Rham torsor.
3. Bound the coefficient poles on the normalized degree model and absorb them in k′ΣZ_i.

Source: **BP-Hida**, §4.3, Lemma 4.3.8, Proposition 4.3.9 and Proposition 4.3.13 and Lemma 4.3.14, pp. 46–49. Root-coordinate traces give integral normalization; large negative degree twists extend it globally.

Uses that determine the API: **H2/fixed-complex**: Makes the ordinary localization preserve an integral lattice. **H2/integral-cousin**: Defines the normalized global correspondence on tildeωκ.

Planning API:

- `TauCeti.HigherHidaColeman.normalizedStratumHecke` (constructor): The integral coefficient correspondence for ν(t)t_naive.
- `TauCeti.HigherHidaColeman.normalizedHecke_units` (simp): u∈T(Z_p) acts on fixed-weight cohomology by ν(u)χ(u).
- `TauCeti.HigherHidaColeman.normalizedHecke_product` (compatibility): The correspondence for t1t2 equals composition for t1 and t2 on common level refinements.
- `TauCeti.HigherHidaColeman.modifiedLattice_genericFiber` (compatibility): tildeωκ⊗Q_p=ωκ⊗Q_p, since the degree divisors are vertical.

Discriminating unit tests:

- **H2.integral-normalization.scalar** (example): For ν(t)=p^a, the normalized eigenvalue is p^a times the naive one, not p^(−a) times it.
- **H2.integral-normalization.finite_character** (example): For χ finite and ν_alg fixed, κ depends on ν_alg alone, whereas units act by ν_algχ.
- **H2.integral-normalization.vertical** (example): Changing k′ changes the integral lattice but not its rational generic-fiber bundle.

Acceptance: Record the chosen t before evaluating ν(t); it is not a function of its coset modulo T(Z_p) without the unit character.

Atlas planet: **Integral Hecke normalization**.

### H2/stratum-dynamics — Strict dynamics of Siegel correspondences

**Theorem.** For each distinguished w, every t∈T++ and every mod-p^s thickening, the normalized Igusa correspondence admits a strict dynamical compactification with the H2 degree support labels. The same conclusion holds for each cofinal decomposable compact P′(Q_p)-subgroup used in the universal tower. The coefficient correspondence extends with the prescribed bounded zeros and poles. Here P′ has unipotent part U_P(Q_p)(1); identifying it with an untwisted P requires a cyclotomic trivialization.

Hypotheses: the global integral Siegel datum above.

Direct inputs: `H2/integral-normalization`, `D1/dynamic-compactification`, `HodgeTateAndCanonicalSubgroups:T5`, `ShimuraCompactifications:C5`.

Proof/construction route:

1. Use the degree growth of the universal isogeny to obtain strict ideal-power inequalities modulo p.
2. Lift across nilpotent thickenings, preserving bounded coefficient poles.
3. Use conjugation and cofinal decomposable subgroups to transport the Iwahori argument.

Source: **BP-Hida**, Lemma 4.4.2, Corollary 4.4.3 and Proposition 4.4.4, pp. 50–51; Theorem 5.1.4, p. 53. Proves the integral dynamics and its passage to cofinal Igusa levels.

Acceptance: A general integral PEL or Hodge-type version is not inferred from these Siegel degree calculations.

### H2/fixed-complex — Supported fixed-weight ordinary complexes

**Definition.** For an M-dominant algebraic κ, a finite torus character χ and a fixed w, define C_w(κ,χ,ε)=Rlim_s RΓ^ord(IGtor_w mod p^s, ωκ(χ)⊗O(−εD)), where ε=0 or 1 distinguishes canonical and subcanonical extension. The symbol RΓ^ord includes the two-boundary support construction of D1, not unrestricted cohomology of the Igusa open. Coefficients lie in Z_p[ζ] when χ requires roots of unity. The torus acts by ν_w(κ)χ on integral units.

Hypotheses: the global integral Siegel datum above.

Direct inputs: `H2/stratum-dynamics`, `D1/ordinary-localization`, `AutomorphicBundles:B3`.

Proof/construction route:

1. Form the ordinary partial-support object at each finite coefficient level.
2. Use discrete derived base change to define the compatible p-adic limit and retain the Hecke actions.

Source: **BP-Hida**, §4.4 and Proposition 4.4.5, p. 51; §5.3.1, p. 55. Defines the mod-p^s limit with hidden support made explicit here.

Uses that determine the API: **H2/fixed-perfect**: Proves its integral finiteness and independence. **I3/derived-control**: Identifies the arithmetic derived specialization.

Planning API:

- `TauCeti.HigherHidaColeman.fixedOrdinaryComplex` (constructor): The supported p-complete complex C_w(κ,χ,ε).
- `TauCeti.HigherHidaColeman.fixedOrdinary_mod` (compatibility): Derived reduction modulo p^s returns the supported ordinary finite-coefficient complex.
- `TauCeti.HigherHidaColeman.fixedOrdinary_unit` (characterisation): u∈T(Z_p) acts by (ν_w(κ)χ)(u).
- `TauCeti.HigherHidaColeman.fixedOrdinary_boundary` (functoriality): O(−D)→O induces a Hecke-equivariant map C_w(κ,χ,1)→C_w(κ,χ,0).

Discriminating unit tests:

- **H2.fixed-complex.zero_weight** (example): κ=0, χ=1 gives the supported structure-sheaf complex with trace normalization still present.
- **H2.fixed-complex.units** (example): At a finite character nontrivial on a unit u, the action differs from ν_w(κ)(u) by χ(u).
- **H2.fixed-complex.cusp** (example): For a compact Shimura variety D=∅, the ε=0 and ε=1 maps agree with the identity.

Acceptance: The cuspidal coefficient is ωκ(χ)(−D), with the same w-support, not compact support at every end.

Atlas planet: **Fixed-weight higher Hida complexes**.

### H2/fixed-perfect — Integral fixed-weight perfectness

**Theorem.** C_w(κ,χ,ε) is perfect over Z_p[ζ], independent of the chosen t∈T++ and of the permitted support compactifications, and carries the locally algebraic T(Q_p)-action with unit character ν_w(κ)χ. This statement holds in every genus and does not assert a sharper integral cohomological amplitude than the construction proves.

Hypotheses: the global integral Siegel datum above.

Direct inputs: `H2/fixed-complex`, `D1/ordinary-perfectness`, `D1/discrete-base-change`, `DeformationAndDerivedPatchingAlgebra:P7`.

Proof/construction route:

1. Apply Artinian perfectness at each s and use derived reduction to bound compatible minimal models.
2. Lift the compatible finite projective representatives p-adically.
3. Compare t by common positive products and the normalized commuting correspondences.

Source: **BP-Hida**, Proposition 4.4.5, p. 51. Finite-coefficient ordinary perfectness and compatible derived reduction yield the p-adic perfect object.

Acceptance: Perfectness of the complex does not imply torsion-free cohomology.

### H2/integral-cousin — The integral ordinary Cousin spectral sequence

**Theorem.** On the chosen degree model with sufficiently twisted tildeωκ, there is a Hecke-equivariant spectral sequence E1^(r,q)=⊕_(w∈Cκ+,ℓ(w)=r) H^(r+q)(C_w(κ,1,ε))⇒H^(r+q)(RΓ(Stor,tildeωκ(−εD))^ord), with the analogous finite-nebentypus version. The local supported terms are canonical under the allowed comparisons; the integral global abutment and its differentials can depend on the degree model and tildeωκ. Singular Cκ+ with more than one element is retained.

Hypotheses: the global integral Siegel datum above.

Direct inputs: `H2/fixed-perfect`, `H2/ordinary-strata`, `D1/supported-cousin`, `H2/integral-normalization`.

Proof/construction route:

1. Apply the supported Cousin filtration to the modified integral bundle.
2. Use the coefficient zeros/poles factorization to identify the ordinary formal-support summands with C_w.
3. Eliminate the incompatible weights using the normalized slope/divisibility estimates.

Source: **BP-Hida**, Theorem 4.5.2 and Remark 4.5.3, pp. 51–52. The degree filtration produces the higher-Hida Cousin terms and warns of integral model dependence.

Acceptance: Do not claim that a nontrivial spectral sequence degenerates at a singular weight.

Atlas planet: **Integral ordinary Cousin spectral sequence**.

### H2/regular-control — Regular global ordinary control

**Comparison.** If κ+ρ is regular and Cκ+={w}, the integral Cousin sequence identifies C_w(κ,χ,ε) with the ordinary cohomology of the chosen tildeωκ(χ)(−εD). On the rational generic fiber this becomes C_w(κ,χ,ε)⊗Q_p(ζ)(−ν_w(κ))≃RΓ(Stor_Qp(ζ),ωκ(χ)(−εD))^ord, where the right-hand operator convention is the classical normalized action. The algebraic torus twist in this formula is essential; finite characters remain in the coefficient.

Hypotheses: the global integral Siegel datum above.

Direct inputs: `H2/integral-cousin`, `A0/weight-dictionary`, `A0/scalar-normalization`.

Proof/construction route:

1. Collapse the single nonzero Cousin column.
2. Invert p to remove the vertical modification of the lattice.
3. Reconcile the normalized local and classical torus actions by the character −ν_w(κ).

Source: **BP-Hida**, Corollaries 4.5.4–4.5.5, p. 52. The singleton Cousin support gives integral modified-lattice control and rational untwisted-bundle control.

Acceptance: At a wall the local complex is only one term of the Cousin calculation.

Layer status: **planned**. Its targets are represented above, but closure still requires the precise supplier and gap items in the final sections.

## I3. Universal higher Hida complexes

Pass through finite torus levels and mod-p towers. Prove continuous admissibility, perfect Iwasawa duals, derived arithmetic control with the correct sign of weight, finite Hecke images and integral family Serre duality. State integral amplitude only in proven genera.

### I3/finite-torus-level — Perfectness over finite torus group rings

**Theorem.** For a decomposable compact K_P⊂P′(Q_p) and T_K=w⁻¹(K_P∩T)w⊂T(Z_p), the weight-zero supported ordinary Igusa complex is perfect over Z_p[T(Z_p)/T_K], for canonical and cuspidal coefficients. The normalized correspondence gives an action of T(Q_p). No exactness of invariants of a p-group is assumed.

Hypotheses: the global integral Siegel datum above.

Direct inputs: `H2/fixed-perfect`, `D1/ordinary-perfectness`, `HodgeTateAndCanonicalSubgroups:T5`.

Proof/construction route:

1. Use the finite étale torus torsor to prove group-ring flatness.
2. Apply equivariant Artinian perfectness at each p^s, then take compatible complete models.

Source: **BP-Hida**, Lemma 5.2.2 and Proposition 5.2.3, p. 54. The finite torus cover supplies group-ring flatness and equivariant perfectness.

Acceptance: Finite torus levels can have order divisible by p.

### I3/level-independence — Ordinary independence of unipotent level

**Theorem.** For cofinal decomposable K_P,K′_P with identical torus subgroup T_K=T_K′, the ordinary supported Igusa complexes are canonically quasi-isomorphic, with boundary variant and Hecke actions. For distinct torus subgroups the comparison is a derived torus-invariant/control map, not this same assertion. Iterated-correspondence pullback and trace give inverses after ordinary localization.

Hypotheses: the global integral Siegel datum above.

Direct inputs: `I3/finite-torus-level`, `D1/ordinary-finiteness`, `AnalyticStacks:AS.3`.

Proof/construction route:

1. Form the triangular system of iterated flat correspondences.
2. Identify the composites with powers of an invertible ordinary Hecke operator.
3. Interlace the two cofinal unipotent-level systems at the same torus subgroup.

Source: **BP-Hida**, Proposition 2.8.2, pp. 25–27; Proposition 5.2.5, pp. 54–55. Ordinary inversion makes pullback/trace along iterated correspondences invertible, holding torus level fixed.

Acceptance: An assertion independent of all p-levels would erase the weight variable.

### I3/universal-complex — Universal supported ordinary Igusa complex

**Definition.** Choose cofinal K_(P,n) with torus level tending to 1 and define R_w^ε=Rlim_m colim_n (RΓ_w(K^pK_(P,n),ε)⊗^L Z/p^m). After transport by w this has its fixed T(Q_p)-action. The order is first the filtered level limit modulo p^m, then p-adic completion. It is independent of the initial cofinal decomposable compact. An admissible model means a bounded complex whose terms, on an open pro-p subgroup T′⊂T(Z_p), are finite sums of C^0(T′,Z_p).

Hypotheses: the global integral Siegel datum above.

Direct inputs: `I3/finite-torus-level`, `I3/level-independence`, `PadicFamilies:L0a/locally-finite-derived-endomorphism`, `DeformationAndDerivedPatchingAlgebra:P7`.

Proof/construction route:

1. Use finite-level derived reduction to form the filtered tower modulo p^m.
2. Take the p-complete inverse limit and transport the torus action through w.
3. Compare cofinal towers using level independence.

Source: **BP-Hida**, §5.2.6 and Proposition 5.2.7, p. 55; Definition 1.4.1, p. 4. Specifies the tower, completion order and the admissible continuous-function model.

Uses that determine the API: **I3/admissibility**: Produces the bounded finite-function model. **I3/iwasawa-complex**: Defines its universal Iwasawa coefficient complex.

Planning API:

- `TauCeti.HigherHidaColeman.universalOrdinary` (constructor): The completed filtered Igusa-level complex R_w^ε.
- `TauCeti.HigherHidaColeman.universalOrdinary_cofinal` (compatibility): Changing the starting cofinal decomposable compact gives a canonical compatible equivalence.
- `TauCeti.HigherHidaColeman.universalOrdinary_mod` (characterisation): Its reduction modulo p^m is the corresponding filtered finite-level ordinary object.
- `TauCeti.HigherHidaColeman.universalOrdinary_torus` (structure): The transported continuous T(Z_p)-action extends to the prescribed T(Q_p)-action.

Discriminating unit tests:

- **I3.universal-complex.coinduced** (example): The compatible finite regular-representation tower completes to C^0(T′,Z_p), not the free module on the discrete set T′.
- **I3.universal-complex.level** (example): Replacing the initial torus tower by its tail gives the same object.
- **I3.universal-complex.completion** (non-example): Locally constant Z_p-valued functions without completion omit continuous functions of infinite p-adic image, such as z↦z on a pro-p coordinate.

Acceptance: A bare algebraic colimit over n without p-completion is not the universal object.

Atlas planet: **Universal higher Hida complex**.

### I3/admissibility — Continuous admissibility and perfect duals

**Theorem.** R_w^ε admits the bounded finite-C^0(T′,Z_p) model above; hence its continuous Z_p-linear dual is a perfect Λ′=Z_p[[T′]]-complex, with degrees reversed. The ranks and degree bounds come from compatible minimal finite-level complexes, not from taking invariants of arbitrary completed modules. The duality is the continuous functions/measures duality on the actual profinite torus.

Hypotheses: the global integral Siegel datum above.

Direct inputs: `I3/universal-complex`, `I3/finite-torus-level`, `PadicMeasuresIwasawaAlgebras:L1`, `DeformationAndDerivedPatchingAlgebra:P7`.

Proof/construction route:

1. Choose minimal finite free complexes over the local pro-p finite group rings.
2. Use derived augmentation compatibility to show ranks stabilize degree by degree.
3. Identify the completed direct-limit regular representation with continuous functions, then dualize to completed measures.

Source: **BP-Hida**, Proposition 5.2.7, p. 55; Lemma 5.4.2, p. 57. Compatible minimal group-ring models have fixed finite ranks and limit to finite sums of continuous functions.

Acceptance: Admissibility is a proved property here, not a hypothesis inserted to make perfectness tautological.

Atlas planet: **Admissibility theorem**.

### I3/iwasawa-complex — Perfect universal Iwasawa coefficient complex

**Definition.** Let Λ=Z_p[[T(Z_p)]] and hatΛ its completed regular torus representation. Set M_w^ε=RHom_(T(Z_p))(1,R_w^ε completed-tensor_Zp hatΛ), with the diagonal action. The group cohomology and completion are continuous derived operations. This convention specializes at the character −ν, meaning u↦ν(u)⁻¹, when the Igusa representation has character ν. It is not simply the continuous dual of R_w; the relation is R_w≃RHom_Zp(RHom_Λ(M_w,Λ),Z_p) with the continuous interpretation.

Hypotheses: the global integral Siegel datum above.

Direct inputs: `I3/admissibility`, `PadicMeasuresIwasawaAlgebras:L1`, `DeformationAndDerivedPatchingAlgebra:P7`.

Proof/construction route:

1. Use continuous derived invariants of the diagonal completed tensor.
2. On a C^0(T′,Z_p) term identify the invariants with Λ; handle the finite quotient at the chosen cofinal torus levels.

Source: **BP-Hida**, §5.4 and Lemmas 5.4.1–5.4.2, pp. 56–57. Defines the Iwasawa complex with the contragredient specialization convention and distinguishes the two dual functors.

Uses that determine the API: **I3/derived-control**: The complex that specializes to fixed coherent weights. **I3/family-duality**: The object paired with the complementary cuspidal Iwasawa complex.

Planning API:

- `TauCeti.HigherHidaColeman.iwasawaComplex` (constructor): M_w^ε from continuous diagonal derived invariants.
- `TauCeti.HigherHidaColeman.iwasawaComplex_perfect` (instance): M_w^ε is perfect over Λ.
- `TauCeti.HigherHidaColeman.iwasawaComplex_reconstruct` (compatibility): R_w^ε is the continuous Z_p-dual of the Λ-dual of M_w^ε.
- `TauCeti.HigherHidaColeman.iwasawaComplex_character` (characterisation): The evaluation labeled −ν sends the universal group element [u] to ν(u)⁻¹.

Discriminating unit tests:

- **I3.iwasawa-complex.regular** (example): R=C^0(T′,Z_p)[0] yields M=Λ′[0].
- **I3.iwasawa-complex.sign** (example): For ν(u)=u^k the specialization is [u]↦u^(−k), not u^k.
- **I3.iwasawa-complex.degree** (example): A continuous-function model in degree i reconstructs from the double dual in degree i; a single continuous dual would put it in degree −i.

Acceptance: For p=2 choose T′ and the finite-level equivariant perfect model; do not justify every finite quotient by dividing by its order.

Atlas planet: **Iwasawa cohomology complex**.

### I3/derived-control — Derived arithmetic Hida control

**Theorem.** For ν=ν_algχ with χ finite, κ=κ_w(ν_alg) M-dominant and O=Z_p[ζ] containing χ, the universal and fixed objects satisfy RHom_(T_K)(ν,R_w^ε)≃C_w(κ,χ,ε) at the matching torus level, and M_w^ε⊗^L_(Λ,−ν) O≃C_w(κ,χ,ε). The local statement allows singular κ+ρ. Only when Cκ+={w} does H2 regular control identify this with global classical ordinary cohomology. Derived tensor gives the Tor specialization spectral sequence; no H^i(M_w) is assumed Λ-flat.

Hypotheses: the global integral Siegel datum above.

Direct inputs: `I3/iwasawa-complex`, `H2/fixed-complex`, `I3/level-independence`, `AutomorphicBundles:B2`, `HodgeTateAndCanonicalSubgroups:T5`, `DeformationAndDerivedPatchingAlgebra:P7`.

Proof/construction route:

1. Use the Igusa reduction of the de Rham torsor to project onto the lowest-weight character.
2. Show that the kernel is ordinary-nilpotent by its strictly positive unipotent weights.
3. Exchange the supplied continuous group cohomology and supported cohomology under the admissible model, then apply the character evaluation to M_w.

Source: **BP-Hida**, Proposition 5.3.3, p. 55; Theorem 5.3.5, p. 56; Remark 5.4.3, p. 57. Igusa reduction identifies the lowest-weight quotient; its kernel has zero ordinary cohomology.

Acceptance: The finite character does not enter the algebraic formula for κ.

Atlas planet: **Derived Hida control theorem**.

### I3/finite-hecke — Finite ordinary Hecke images

**Theorem.** The image T_w^ε of the commuting prime-to-p spherical Hecke algebra in End_(D(Λ))(M_w^ε) is a finite Λ-algebra. Its spectrum maps finitely to Spec Λ. Keep nilpotents and all nonzero cohomological degrees; finite flatness, Gorensteinness and concentration in H^0 do not follow from this result.

Hypotheses: the global integral Siegel datum above.

Direct inputs: `I3/iwasawa-complex`, `AutomorphicBundles:B5`, `DeformationAndDerivedPatchingAlgebra:P7`.

Proof/construction route:

1. Compute derived endomorphisms using a bounded finite-projective representative.
2. Use Noetherianity of Λ to show its degree-zero endomorphism module, and hence the Hecke image, is finite.

Source: **BP-Hida**, §5.4, p. 57, paragraph defining T_w. The Hecke algebra is the actual image in the derived endomorphism algebra of the perfect complex.

Acceptance: No replacement of the image by an abstract eigenvalue algebra with the same closed points.

### I3/family-duality — Integral Iwasawa Serre duality

**Theorem.** For w*=w0M w w0 there is a perfect derived pairing M_w^0⊗^L_Λ M_(w*)^1→Λ[−d], with the Λ-action on the second factor transported as in the source duality. At fixed weight it pairs C_w(κ,χ,0) with C_(w*)(κ∨,w0χ⁻¹,1) into O[−d]. The adjoint of t is w0(t⁻¹), and prime-to-p double cosets are replaced by their inverses. This is a duality of perfect complexes; individual cohomology modules may have Ext terms integrally.

Hypotheses: the global integral Siegel datum above.

Direct inputs: `I3/iwasawa-complex`, `D1/ordinary-duality`, `I3/derived-control`, `AutomorphicBundles:B3`.

Proof/construction route:

1. Apply the integral supported duality before passing to the tower.
2. Transport the negative torus chamber by w0 and match w*.
3. Use the perfect Iwasawa models to commute duality with arithmetic derived specialization.

Source: **BP-Hida**, Theorems 5.5.1–5.5.2, p. 57. Transposed ordinary duality and torus transport give the complementary cuspidal family.

Acceptance: The cohomological complementary degree and the boundary twist must both match.

Atlas planet: **Iwasawa Serre duality**.

### I3/integral-amplitudes — Proved integral amplitude in genera one and two

**Theorem.** For g=1 or 2, M_w^0 has perfect amplitude [ℓ(w),d] and M_w^1 has perfect amplitude [0,ℓ(w)]. In genus one the stronger concentration holds: the identity chamber lies in degree zero for both boundary variants, and the long chamber in degree one. General-g integral sharp amplitude is Conjecture 5.6.1, not a theorem of this roadmap. Rational all-g amplitude is B7/rational-amplitudes.

Hypotheses: the global integral Siegel datum above.

Direct inputs: `I3/iwasawa-complex`, `I3/family-duality`, `ShimuraCompactifications:C5`.

Proof/construction route:

1. Reduce perfect amplitude to residue fields by the local perfectness criterion.
2. For g=2 use the affine ordinary minimal locus and the two-affine cover of the p-rank≥1 locus, with subcanonical higher-direct-image vanishing.
3. Use duality for the remaining chambers and distinguish this proof from the general-g conjecture.

Source: **BP-Hida**, Conjecture 5.6.1 and Proposition 5.6.3, p. 58. Proves the sharp integral ranges for g≤2 using affine covers of the appropriate minimal-locus images.

Acceptance: The statement includes degree-one Siegel cohomology without asserting that its specialization is flat.

Layer status: **planned**. Its targets are represented above, but closure still requires the precise supplier and gap items in the final sections.

## C4. Geometric higher Coleman cohomology

Use Bruhat tubes and finite-level de Rham torsor reductions to define supported finite-slope coherent cohomology for all Weyl strata. Prove analytic continuation, level invariance, the Bruhat Cousin spectral sequence, cuspidal and noncuspidal vanishing, duality, and regular and singular classicality from proved slope estimates.

### C4/finite-level-geometry — Bruhat geometry at finite level

**Theorem.** Use the general abelian-type toroidal diamond and its Hodge–Tate period map to form finite-level topological inverse images of Bruhat cells and tubes. Their sufficiently small neighborhoods at classical flag points have affinoid inverse images in the minimal compactification. The de Rham Levi torsor admits reductions over the truncated cells compatible with finite Hecke correspondences. The Hodge–Tate Levi torsor is the cyclotomic µ-twist of the de Rham torsor; enlarge F so the relevant cyclotomic image lies in the reducing subgroup. This conclusion does not assert that the general toroidal tower is a perfectoid space, or that the finite-level period map is an algebraic morphism.

Hypotheses: the global Coleman datum above.

Direct inputs: `A0/weight-dictionary`, `PerfectoidShimuraVarieties:S6/general-toroidal-period-map`, `PerfectoidShimuraVarieties:S6/bruhat-cell-tubes`, `PerfectoidShimuraVarieties:S6/bruhat-levi-reduction`, `PerfectoidShimuraVarieties:S4`, `ShimuraCompactifications:C3`.

Proof/construction route:

1. Pass from the diamond period map to the finite-level topological quotient FL/K_p.
2. Pull back the supplied root-coordinate tubes and truncated de Rham reduction.
3. Use the minimal-compactification affinoid basis, and descend from auxiliary Hodge-type covers with matching fans.

Source: **BP-Coleman**, Theorem 4.5.2, p. 88; §4.6, pp. 89–98; Propositions 4.6.12, 4.6.14–4.6.15 and 4.6.19, pp. 94–98. Imports the revised abelian-type and cyclotomic torsor geometry and uses the finite-level affinoid-neighborhood theorem.

Acceptance: No nonempty ordinary locus is required. The nonsplit local case uses relative valuations and does not give an absolute Weyl action on analytic characters.

### C4/allowed-support — Allowed supported Bruhat neighborhoods

**Definition.** Fix t∈T++ with min(t)≥1, C=max(t), w, level and tube depth. Write B(r,s)=π_HT,Kp⁻¹(]C_w,k[r,s K_p), using the supplied extended-index tubes (−1 denotes the one-sided unbounded tube). For + an allowed pair is an open U and closed Z, with U and the complement of Z in the ambient Shimura space finite unions of quasi-Stein opens, for which some m,n,s≥0 satisfy B(m,n+s)⊂U∩Z⊂B(0,Cn) and B(m+s,n)⊂U⊂B(Cm,−1). For − require B(m+s,n)⊂U∩Z⊂B(Cm,0) and B(m,n+s)⊂U⊂B(−1,Cn). Define the local complex by supported cohomology RΓ_(U∩Z)(U,Vκ(−εD)) followed by finite-slope extraction for t (or t⁻¹ in the negative convention).

Hypotheses: the global Coleman datum above.

Direct inputs: `C4/finite-level-geometry`, `AdicSpacesPartII:R3`, `LocallyAnalyticDistributions:L4/finite-slope-perfect-complex`.

Proof/construction route:

1. Pull back the supplied extended Bruhat tubes and choose standard support pairs.
2. Compute partial support by the supplied quasi-Stein Čech cone.
3. Apply finite-slope extraction only to the potent compact Hecke action; retain chosen complex models.

Source: **BP-Coleman**, Definition 5.4.10, pp. 111–112; §5.4.1 and Theorem 5.4.3, pp. 108–109. Gives quantitative tube bounds, quasi-Stein conditions and the finite-slope supported object.

Uses that determine the API: **C4/analytic-continuation**: Compares all allowed pairs after finite slopes. **F5/family-complex**: Uses the same pairs for analytic coefficient sheaves.

Planning API:

- `TauCeti.HigherHidaColeman.allowedSupport` (constructor): A pair (U,Z) with the four inclusions and finite quasi-Stein covers.
- `TauCeti.HigherHidaColeman.standardSupport_plus` (example): U=B(s,−1), Z=B(0,s) is a standard positive pair for sufficiently large depth.
- `TauCeti.HigherHidaColeman.standardSupport_minus` (example): U=B(−1,s), Z=B(s,0) is a standard negative pair.
- `TauCeti.HigherHidaColeman.supportedColeman` (constructor): C_w,κ^±,ε(U,Z)^fs from the supported Čech model.
- `TauCeti.HigherHidaColeman.supportedColeman_hecke` (structure): Its T^± and prime-to-p Hecke actions are compatible on allowed refinements.

Discriminating unit tests:

- **C4.allowed-support.plus** (example): The positive standard pair keeps B(0,s) as the closed constraint and B(s,−1) as the open; swapping them generally fails the open/closed requirements.
- **C4.allowed-support.minus** (example): The negative standard pair reverses the two tube directions, rather than using the positive pair twice.
- **C4.allowed-support.support** (example): For an affinoid disc and closed Z=∅ the supported complex is zero; unrestricted H^0 of the disc is not zero.

Acceptance: Boundary cuspidality and partial Bruhat support are two separate operations.

Atlas planet: **Supported overconvergent cohomology**.

### C4/analytic-continuation — Finite-slope analytic continuation

**Theorem.** All allowed support pairs for fixed w, level and algebraic coefficient produce canonically isomorphic finite-slope cohomology and the corresponding compatible local objects. The normalized t action is potent compact: a power is represented by a compact operator on the bounded projective Banach Čech model. Its finite-slope part is independent of the chosen strictly positive t in the compatible Hecke monoid. The statement applies to finite nebentypus and both boundary variants; full infinite-slope supported cohomology need not be invariant.

Hypotheses: the global Coleman datum above.

Direct inputs: `C4/allowed-support`, `LocallyAnalyticDistributions:L4/compact-homotopy-endomorphism`, `LocallyAnalyticDistributions:L4/cohomology-slope-comparison`, `AdicSpacesPartII:R3`.

Proof/construction route:

1. Use the t-induced root-coordinate contractions to compare a pair and a strictly improved pair.
2. Represent the correspondence by pullback, coefficient map and trace on the finite quasi-Stein cover.
3. Apply compact restriction and invert t on finite slopes to make the support comparison maps invertible.

Source: **BP-Coleman**, Theorem 5.4.3, pp. 108–109; Theorem 5.4.12, p. 112. Hecke dynamics shrinks both tube directions and yields compact restriction and finite-slope continuation.

Acceptance: Compactness is proved for a representative/power, not for every representative in the homotopy class.

Atlas planet: **Finite-slope analytic continuation**.

### C4/level-invariance — Finite-slope level and character control

**Theorem.** For K_{p,m,b}, changing m with b fixed induces finite-slope equivalences: use pullback for + and trace for −. Changing b is governed by invariants for the finite quotient of the torus-unit subgroup, with the chosen finite character. Over F these finite invariants are exact. At arbitrary character conductor choose a sufficiently deep b; no integral division by the finite quotient order is asserted.

Hypotheses: the global Coleman datum above.

Direct inputs: `C4/analytic-continuation`, `AutomorphicBundles:B5`, `PerfectoidShimuraVarieties:S6/bruhat-level-groups`.

Proof/construction route:

1. Factor the two level maps through iterated positive/negative Hecke correspondences.
2. Invert the compact positive torus operator on finite slopes.
3. Apply characteristic-zero finite-group descent for the remaining torus quotient.

Source: **BP-Coleman**, Theorem 5.4.14, p. 113. Gives the m-level maps and finite torus invariants in the b-variable.

Acceptance: The m and b parameters have different control mechanisms.

### C4/bruhat-cousin — The finite-slope Bruhat Cousin spectral sequence

**Theorem.** For each sign and boundary variant there is a Hecke-equivariant spectral sequence E1^(r,q)=⊕_(ℓ±(w)=r) H_w^(r+q)(K^p,κ,χ,ε)^±,fs ⇒ H^(r+q)(K^p,κ,χ,ε)^±,fs, whose target is classical toroidal coherent cohomology at the matching p-level/character. The filtration comes from the length filtration by closed Bruhat unions on the flag quotient. There is no regularity assumption here and every contributing w is kept.

Hypotheses: the global Coleman datum above.

Direct inputs: `C4/analytic-continuation`, `C4/level-invariance`, `D1/supported-cousin`, `ShimuraData:D3`, `AutomorphicBundles:B3`.

Proof/construction route:

1. Pull back the finite closed Bruhat filtration to the toroidal space.
2. Apply the supported localization triangles to obtain the exact couple.
3. Use continuation to identify each finite-slope graded term and verify Hecke compatibility on common fan refinements.

Source: **BP-Coleman**, Theorem 5.5.1, pp. 113–115. Applies the closed Bruhat filtration and supported continuation to recover classical cohomology.

Acceptance: In rank one the two columns give a four-term exact sequence rather than a forced direct sum.

Atlas planet: **Bruhat Cousin spectral sequence**.

### C4/geometric-vanishing — Cuspidal vanishing by Bruhat length

**Theorem.** For each w and either sign the cuspidal finite-slope local cohomology is concentrated in [0,ℓ±(w)]. This uses subcanonical higher-direct-image vanishing to the minimal compactification and the quasi-Stein/affinoid tube cover with its support codimension. The result holds for the supported general abelian-type datum; it is not a statement that every canonical bundle has acyclic pushforward to the minimal compactification.

Hypotheses: the global Coleman datum above.

Direct inputs: `C4/analytic-continuation`, `ShimuraCompactifications:C3`, `AutomorphicBundles:B3`, `AdicSpacesPartII:R3`.

Proof/construction route:

1. Push the subcanonical coefficient to the minimal compactification using the supplied R^iπ_* vanishing.
2. Compute supported cohomology on the finite quasi-Stein cover of affinoid inverse images.
3. Count the length/codimension of the local Bruhat directions and apply finite-slope continuation.

Source: **BP-Coleman**, Theorem 4.1.7, pp. 51–53; Theorem 5.6.1, pp. 115–117. Subcanonical pushforward and the geometry of Bruhat tubes control the cohomological dimension.

Acceptance: The ε=1 hypothesis cannot be dropped at this step.

### C4/geometric-duality — Finite-slope Serre duality and complementary ranges

**Theorem.** There is a nondegenerate pairing H_w^i(κ,χ,1)^±,fs × H_w^(d−i)(κ∨,χ⁻¹,0)^∓,fs→F, adjoint for t and t⁻¹ and inverse prime-to-p double cosets. It is perfect on each matching finite-dimensional generalized eigenblock. Consequently canonical finite-slope cohomology is concentrated in [ℓ±(w),d]. The pairing on the whole finite-slope union is not identified with the unrestricted algebraic dual of that union.

Hypotheses: the global Coleman datum above.

Direct inputs: `C4/geometric-vanishing`, `A0/weight-dictionary`, `AdicSpacesPartII:F1`, `AutomorphicBundles:B3`.

Proof/construction route:

1. Apply the supplied dagger LB/Fréchet support duality to the supported coefficient complex.
2. Use coefficient evaluation and the canonical bundle V_(−2ρ_nc)(−D).
3. Match compact Hecke slope projectors under transposition, then dualize the cuspidal vanishing range.

Source: **BP-Coleman**, Theorems 5.7.1–5.7.3, pp. 117–120; Theorem 2.7.1 and Proposition 2.7.3, pp. 31–32. Dagger Serre duality and the opposite tube directions give perfect pairings on finite slope blocks.

Acceptance: The shift pairs degrees i and d−i and exchanges ε=1 with ε=0.

Atlas planet: **Higher Coleman Serre duality**.

### C4/interior-cousin — Interior cohomology and Cousin subquotients

**Theorem.** Define H_w,!^i as the image of local cuspidal to canonical H_w^i. It vanishes outside i=ℓ±(w). The global interior H_!^i=Im(H_cusp^i→H_can^i) is a subquotient of degree-i cohomology of the interior Cousin complex built from H_w,!^(ℓ±(w)); equality is not asserted for arbitrary boundary. If the Shimura variety is compact, D=∅ and the local cohomology is concentrated exactly at ℓ±(w), so the Cousin complex computes the full cohomology.

Hypotheses: the global Coleman datum above.

Direct inputs: `C4/bruhat-cousin`, `C4/geometric-duality`.

Proof/construction route:

1. Intersect the two local cohomological ranges.
2. Map the cuspidal filtered complex to the canonical one and take the surviving interior terms.
3. Use the induced spectral-sequence filtrations to obtain the subquotient; specialize to identical coefficients when D is empty.

Source: **BP-Coleman**, Corollaries 5.7.5–5.7.7, p. 120; Corollary 5.8.1, pp. 120–121. Uses the two vanishing ranges and the map of Cousin spectral sequences; its general interior conclusion is a subquotient.

Acceptance: Taking images is not an exact functor on general spectral sequences.

### C4/proved-slopes — Proved geometric slope bounds

**Theorem.** A smooth eigencharacter in local canonical or cuspidal + cohomology has valuation λ≥w⁻¹w0Mκ and λ≥w⁻¹w0Mκ+w⁻¹2ρ_nc. In − cohomology it has λ≤w⁻¹κ and λ≤w⁻¹κ+w⁻¹2ρ_nc. The sharper desired + bound λ≥w⁻¹w0M(κ+ρ)+ρ and − bound λ≤w⁻¹(κ+ρ)−ρ are not used here. Their full general noncompact versions remain conjectural. Interior (hence compact) and Siegel improvements are separate downstream E6 and B7 targets.

Hypotheses: the global Coleman datum above.

Direct inputs: `C4/analytic-continuation`, `A0/slope-conditions`, `AutomorphicBundles:B5`, `AdicSpacesPartII:R3`.

Proof/construction route:

1. Choose the integral lattice in the algebraic representation on the reduced torsor.
2. Estimate pullback and trace on the small smooth affinoids, retaining their separate normalization factors.
3. Retain the two proved bounds here; the downstream interior and integral Siegel arguments supply sharp improvements.

Source: **BP-Coleman**, Conjecture 5.9.2 and Theorem 5.9.6, pp. 122–124. Integral structures and two trace estimates give two simultaneous inequalities; no sharp conjectural bound is used at this layer.

Acceptance: Do not use the conjectural sharp bound to prove general full-space classicality.

### C4/geometric-classicality — Geometric classicality in regular and singular weights

**Theorem.** On the geometric strongly small region of A0, all local terms with w∉Cκ± vanish. If κ+ρ is regular and Cκ±={w}, the Cousin edge map is an equivalence between local finite-slope and global classical cohomology in that region, for both boundary variants. For singular κ retain the entire compatible Cousin complex: with l_min=min_(Cκ±)ℓ± and l_max=max_(Cκ±)ℓ±, classical cuspidal cohomology lies in [0,l_max], canonical in [l_min,d] and interior in [l_min,l_max]. The downstream E6 theorem supplies the compact improvement and B7 the Siegel improvement; this target itself uses the proved strongly small region.

Hypotheses: the global Coleman datum above.

Direct inputs: `C4/bruhat-cousin`, `C4/proved-slopes`, `C4/interior-cousin`, `A0/slope-conditions`.

Proof/construction route:

1. Apply the proved inequalities to kill every incompatible w-summand.
2. Use the finite Cousin filtration for the regular equivalence.
3. For a singular chamber set use the local degree ranges without inventing degeneration between the remaining strata.

Source: **BP-Coleman**, Theorems 5.12.3 and 5.12.5, p. 135. Slope exclusions remove wrong chambers and the regular singleton produces the control edge isomorphism.

Acceptance: The equality endpoint of a small-slope threshold is not included.

Atlas planet: **Higher Coleman classicality theorem**.

Layer status: **planned**. Its targets are represented above, but closure still requires the precise supplier and gap items in the final sections.

## F5. Analytic coefficients and derived families

Descend the supplied analytic induction and projective-radius distributions along the de Rham torsor. Normalize torus actions, construct supported family complexes and finite perfect slope blocks, and prove Tor specialization, the automorphic BGG spectral sequence, analytic control and family duality without an unproved flatness assertion.

### F5/analytic-sheaves — Automorphic analytic coefficient sheaves

**Construction.** For an affinoid F-algebra A and n-analytic ν_A:T^c(Z_p)→A×, over the depth-n Bruhat tube descend the supplied analytic induction representation with character κ_A=−w0M wν_A−(w0M wρ+ρ) along the reduced de Rham torsor. This notation means conjugation of the domain torus followed by the displayed algebraic character translation, not an absolute Weyl action on analytic weight space. Denote the resulting sheaf V_(ν_A)^n-an. Its paired distribution sheaf D_(ν_A)^n-an is modeled on the supplied projective-radius distributions of parameter κ_A+2ρ_nc and embeds in (V_(ν_A)^n-an)∨⊗V_(−2ρ_nc). Distribution coefficients use the projective Banach model associated with functions on the open polydisc; arbitrary continuous duals of Banach modules over A need not have property (Pr).

Hypotheses: the global Coleman datum above.

Direct inputs: `C4/finite-level-geometry`, `OverconvergentAutomorphicForms:O0`, `OverconvergentAutomorphicForms:O1`, `AutomorphicBundles:B0`, `AdicSpacesPartII:R3`.

Proof/construction route:

1. Import analytic induction and its projective distribution-radius model from O0.
2. Apply the equivariant-function descent convention on the reduced torsor; for D include the Serre canonical-bundle twist.
3. Use the finite flat local trivialization and characteristic-zero descent to obtain locally projective Banach sheaves.

Source: **BP-Coleman**, §6.2.20, pp. 152–153; §6.3.1 and Proposition 6.3.3, pp. 153–154. Uses the particular distribution-radius model and descends analytic representations on the de Rham reduction.

Uses that determine the API: **F5/family-complex**: Supplies the projective Banach coefficients. **F5/algebraic-maps**: Constructs coefficient comparison and BGG maps.

Planning API:

- `TauCeti.HigherHidaColeman.analyticAutomorphicSheaf` (constructor): V_(ν_A)^n-an on the depth-n tube with the specified character.
- `TauCeti.HigherHidaColeman.distributionAutomorphicSheaf` (constructor): D_(ν_A)^n-an from the projective-radius model with κ_A+2ρ_nc.
- `TauCeti.HigherHidaColeman.analyticSheaf_affinoid` (characterisation): On a trivialized affinoid Spa(R), sections identify with the supplied representation completed-tensor_F R.
- `TauCeti.HigherHidaColeman.analyticSheaf_baseChange` (compatibility): Coefficient change A→B commutes with completed affinoid sections under the supplied projective-Banach tensor comparison.
- `TauCeti.HigherHidaColeman.analyticSheaf_finiteTwist` (compatibility): For conductor(χ)≤n, V_(ν_Aχ)=V_(ν_A)(χ), and the dual distribution specialization has character χ⁻¹.

Discriminating unit tests:

- **F5.analytic-sheaves.trivial_torsor** (example): On a trivial reduced torsor the sheaf recovers its equivariant induction module, not all functions on the total torsor.
- **F5.analytic-sheaves.dual_twist** (example): For algebraic ν giving κ, D_ν maps to V_(−w0Mκ−2ρ_nc), not to V_(−w0Mκ) unless ρ_nc=0.
- **F5.analytic-sheaves.nonsplit** (non-example): An absolute Weyl reflection that does not preserve T^c(Z_p) does not define a self-map of the analytic weight space; the conjugate-torus construction still makes sense.

Acceptance: The de Rham torsor is used for descent; the Hodge–Tate torsor requires its cyclotomic twist.

Atlas planet: **Analytic automorphic coefficient sheaves**.

### F5/algebraic-maps — Locally algebraic coefficient comparison

**Theorem.** For ν=ν_algχ, conductor χ≤n, κ=κ_w(ν_alg) M-dominant, and sufficiently deep m′≥conductor χ with m′>n, there are coefficient maps Vκ(χ)→V_ν^n-an and D_ν^n-an→V_(κ∨)(χ⁻¹). The first arises from locally polynomial vectors with the finite-character twist, the second from distribution evaluation. The coefficient maps alone are not equivariant for the same normalized T-action until the algebraic character twists in F5/analytic-hecke are applied.

Hypotheses: the global Coleman datum above.

Direct inputs: `F5/analytic-sheaves`, `A0/weight-dictionary`, `OverconvergentAutomorphicForms:O0`, `AutomorphicBundles:B2`.

Proof/construction route:

1. Insert the algebraic representation into analytic induction over a trivialized reduced torsor.
2. Identify the finite character as the torus-cover pushout and descend the maps.
3. Evaluate distributions on algebraic vectors with the canonical-bundle twist.

Source: **BP-Coleman**, Propositions 6.3.6–6.3.7 and Corollary 6.3.8, pp. 154–155. Identifies the algebraic and finite-character subrepresentations and the paired dual quotient.

Acceptance: The finite character in the distribution target is inverted.

### F5/analytic-hecke — Normalized analytic torus action

**Construction.** Use the modified torsor map e[t] from the t-conjugation on the reduced unipotent quotient, followed by (w⁻¹w0Mρ+ρ)(t)⁻¹Tr_p1, to act on V_(ν_A)^n-an. Use the transpose inverse action for D_(ν_A)^n-an. Units u∈T(Z_p) act by ν_A(u) on + and ν_A(u)⁻¹ on −. Consequently the algebraic comparison is T-equivariant as C_w(κ,χ)^+→C_w,an(ν)^+(−ν_alg), and C_w,an(ν)^−(ν_alg)→C_w(κ∨,χ⁻¹)^−. This action depends on t itself, including its unit part.

Hypotheses: the global Coleman datum above.

Direct inputs: `F5/analytic-sheaves`, `F5/algebraic-maps`, `AutomorphicBundles:B5`, `A0/scalar-normalization`.

Proof/construction route:

1. Modify the ordinary Hecke torsor map by the actual t-conjugation, before taking associated sections.
2. Insert the displayed trace character and check the action on torus units.
3. Apply duality to distributions and reconcile the algebraic comparison through the algebraic-character twists.

Source: **BP-Coleman**, Lemma 6.3.10 and Lemma 6.3.11, pp. 155–156; §6.5.4, p. 160. The modified torsor map and inverse trace factor give the analytic normalization and the unit characters.

Uses that determine the API: **F5/family-complex**: Produces compact positive operators in every analytic weight. **E6/eigenvariety**: The unit character determines the weight map of eigenpackets.

Planning API:

- `TauCeti.HigherHidaColeman.analyticTorusAction` (constructor): The modified e[t] and inverse trace normalization on analytic coefficients.
- `TauCeti.HigherHidaColeman.analyticTorus_unit` (simp): u acts by ν_A(u) for V, and by its inverse for D.
- `TauCeti.HigherHidaColeman.analyticTorus_mul` (relation): The maps for t1,t2 compose to the map for t1t2 on common allowed levels.
- `TauCeti.HigherHidaColeman.analyticTorus_algebraic` (compatibility): The comparison maps become equivariant after twists −ν_alg on + and +ν_alg on −.

Discriminating unit tests:

- **F5.analytic-hecke.unit** (example): A nontrivial unit character acts nontrivially even though its double coset is the identity.
- **F5.analytic-hecke.dual_unit** (example): If ν_A(u)=c, the paired distribution action is c⁻¹, so the evaluation pairing is invariant.
- **F5.analytic-hecke.slope_shift** (example): For ν_alg(t)=p^a, twisting the analytic + action by −ν_alg subtracts a from the slope.

Acceptance: The T^±/T(Z_p) double-coset operator alone does not carry this analytic unit action.

### F5/family-complex — Supported analytic family cohomology

**Definition.** Choose ν_A n-analytic and m′>n. For an allowed support pair also require U∩Z⊂B(n,n), so the coefficient sheaf is defined on a neighborhood of the support. Use RΓ_(U∩Z)(U,V_(ν_A)^n-an(−εD)) for + and the distribution coefficient D_(ν_A)^n-an(−εD) with opposite support for −, represented by the finite quasi-Stein Čech cone. After extracting finite slopes denote its cohomology by H_w,an^i(ν_A,ε)^±,fs. Complex representatives retain their choices: the source proves canonical independent cohomology groups, not a unique chosen equivariant complex for all compact operators simultaneously.

Hypotheses: the global Coleman datum above.

Direct inputs: `F5/analytic-hecke`, `C4/allowed-support`, `AdicSpacesPartII:R3`, `LocallyAnalyticDistributions:L4/compact-homotopy-endomorphism`.

Proof/construction route:

1. Refine the supports into the depth-n tube on which the sheaves exist.
2. Use the supplied projective Banach acyclicity and finite-cover cone to compute support.
3. Apply the radius-improving compact correspondence, then identify cohomology under changes of radius, support and m′.

Source: **BP-Coleman**, §6.4.1, pp. 156–157; Theorems 6.4.3, 6.4.5, 6.4.8, 6.4.10, pp. 157–159. Supplies the supported projective Banach model, compact Hecke action and choice-independent finite-slope cohomology.

Uses that determine the API: **F5/perfect-slopes**: Gives finite projective representatives on slope windows. **F5/tor-specialization**: Its derived coefficient specialization supplies the spectral sequence.

Planning API:

- `TauCeti.HigherHidaColeman.analyticSupportedModel` (constructor): A chosen supported projective Banach complex and its compact Hecke representative.
- `TauCeti.HigherHidaColeman.analyticCohom_radius` (compatibility): Increasing n through analytic radii gives the canonical finite-slope cohomology isomorphism, with the distribution maps in the opposite direction.
- `TauCeti.HigherHidaColeman.analyticCohom_support` (compatibility): Two allowed pairs inside the coefficient tube give canonically identified finite-slope cohomology.
- `TauCeti.HigherHidaColeman.analyticCohom_level` (functoriality): Increasing m′ gives + pullback and − trace isomorphisms on finite slopes.

Discriminating unit tests:

- **F5.family-complex.empty** (example): Empty allowed local support produces zero cohomology, with the zero slope complex.
- **F5.family-complex.radius** (example): Replacing n by n+1 with m′>n+1 leaves finite-slope cohomology unchanged, while the coefficient modules themselves need not be equal.
- **F5.family-complex.domain** (non-example): A pair with support outside B(n,n) is not an analytic-coefficient model of this definition, even if it is allowed for an algebraic bundle.

Acceptance: Independence concerns finite-slope cohomology, with compatible maps; it is not unrestricted derived canonicality.

Atlas planet: **Higher Coleman family complexes**.

### F5/perfect-slopes — Finite perfect family slope blocks

**Theorem.** Locally on an affinoid weight space and a slope-adapted finite window for a chosen potent compact t, the family cohomology is computed by a bounded finite-projective A-complex. Its H^i is finite over A and commutes with flat affinoid restriction. Quasi-isomorphic compatible models give the same finite-slope cohomology and Hecke support. The unsplit full family complex can have infinite projective Banach terms; a cohomology sheaf on a finite block need not be projective.

Hypotheses: the global Coleman datum above.

Direct inputs: `F5/family-complex`, `LocallyAnalyticDistributions:L4/finite-slope-perfect-complex`, `LocallyAnalyticDistributions:L4/cohomology-slope-comparison`, `LocallyAnalyticDistributions:L4/derived-slope-base-change`.

Proof/construction route:

1. Take a compact representative of a suitable t-power.
2. Apply the imported simultaneous degreewise Riesz projectors on an adapted neighborhood.
3. Use functoriality of the differential and flat affinoid restrictions.

Source: **BP-Coleman**, §6.1.10–6.1.17, pp. 144–147; Proposition 6.1.11, p. 144; Lemma 6.1.15 and Remark 6.1.16, p. 146; Theorem 6.4.3, p. 157. Combines the projective Banach complex with slope-adapted finite-projective summands.

Acceptance: No claim that all cohomology sheaves are locally free over weight space.

### F5/tor-specialization — The weight-specialization Tor spectral sequence

**Theorem.** For x in a weight affinoid and each desired slope h, shrink to Spa(B) containing x and choose an adapted h′≥h. Then E2^(p,q)=Tor_B^(−p)(H_w,an^q(ν_B,ε)^±,≤h′,k(x))⇒H_w,an^(p+q)(ν_x,ε)^±,≤h′. It is compatible with the Hecke action and covers all finite-slope eigenpackets as the windows vary. Higher Tor terms generally survive; identifying H^i⊗k(x) with the fiber cohomology requires extra flatness or amplitude hypotheses.

Hypotheses: the global Coleman datum above.

Direct inputs: `F5/perfect-slopes`, `DeformationAndDerivedPatchingAlgebra:P7`.

Proof/construction route:

1. Use the projective Čech model to identify its derived coefficient fiber.
2. Select the adapted perfect slope block simultaneously before and after specialization.
3. Apply the supplied hyper-Tor spectral sequence and retain its total grading.

Source: **BP-Coleman**, Theorem 6.5.2 and Remark 6.5.3, p. 160. Uses an adapted neighborhood and the hyper-Tor spectral sequence of the perfect slope complex.

Acceptance: For A=F⟨t⟩ and [A --t→ A] in degrees 0,1, the t=0 fiber has H^0=F from Tor_1(A/(t),F), although H^0 of the family is zero.

Atlas planet: **Weight-specialization spectral sequence**.

### F5/automorphic-bgg — The automorphic analytic BGG spectral sequence

**Theorem.** Let ν=ν_algχ, κ=κ_w(ν_alg) M-dominant, u=w0M w, and ν_v=(u⁻¹vu)·ν_alg for v∈W_M, where a·η=a(η+ρ)−ρ. The + spectral sequence has E1^(p,q)=⊕_(v∈W_M,ℓ(v)=p) H_w,an^q(ν_vχ,ε)^+,fs(−ν_v)⇒H_w^(p+q)(κ,χ,ε)^+,fs. Its paired − version has ℓ(v)=−p, twist +ν_v, and target the algebraic coefficient κ∨ with χ⁻¹. The exact locally analytic BGG resolution, including its locally constant factor and finite-slope algebraic comparison, is imported from the analytic-coefficient owner; only its automorphic supported-cohomology application belongs here.

Hypotheses: the global Coleman datum above.

Direct inputs: `F5/algebraic-maps`, `F5/analytic-hecke`, `F5/perfect-slopes`, `OverconvergentAutomorphicForms:O0`, `DeformationAndDerivedPatchingAlgebra:P7`.

Proof/construction route:

1. Apply the analytic BGG resolution after descending to the torsor.
2. Use finite-slope acyclicity of the extra locally constant part to identify the algebraic term.
3. Apply the supported-cohomology double complex, recording every character twist in the E1 page.

Source: **BP-Coleman**, Theorem 6.2.16 and Corollary 6.2.18, pp. 151–152; Theorem 6.5.5, pp. 160–161. The algebraic identity of shifted weights turns the supplied analytic BGG resolution into the supported cohomology spectral sequence.

Acceptance: The dot action is on algebraic weights; it never acts on arbitrary analytic ν_A.

Atlas planet: **Automorphic BGG spectral sequence**.

### F5/bgg-exclusion — A proved BGG exclusion region

**Definition.** For a + algebraic comparison with smooth normalized slope λ and the ν_v of F5/automorphic-bgg, put a_an=−w⁻¹w0Mρ−ρ. Define BGGsafe+(w,κ,λ) by requiring, for every v≠1 in W_M, failure of at least one inequality λ≥a_an−ν_v or λ≥a_an+w⁻¹2ρ_nc−ν_v. These are exactly the two proved analytic lower bounds after the −ν_v twist. Define the − condition by transposed Serre duality: for the comparison with target κ∨ and smooth slope λ−, use BGGsafe+(w,κ,−λ−). This sufficient region is deliberately given its own name; identification with the printed sss_(M,w) formulas is a recorded source gap.

Hypotheses: the global Coleman datum above.

Direct inputs: `F5/automorphic-bgg`, `A0/slope-conditions`.

Proof/construction route:

1. For each nonidentity BGG weight subtract ν_v from the proved + analytic bounds.
2. Negate their conjunction so at least one necessary inequality fails.
3. Transport the exclusion to the − pairing using inversion of eigencharacters.

Source: **BP-Coleman**, Theorem 6.8.3, pp. 167–168, combined with Theorem 6.5.5, pp. 160–161; compare Definition 5.11.14, p. 134. This worker deduction substitutes the stated two analytic bounds into every twisted nonidentity BGG term; it does not silently repair the printed classicality formula.

Uses that determine the API: **F5/analytic-control**: Kills all nonidentity terms and proves the coefficient comparison. **E6/classical-points**: Combines coefficient and geometric exclusions for a sufficient classicality test.

Planning API:

- `TauCeti.HigherHidaColeman.bggSafe` (constructor): The finite conjunction of the explicit cone exclusions over v≠1.
- `TauCeti.HigherHidaColeman.bggSafe_rankZero` (simp): If W_M={1}, the BGG exclusion condition is vacuous.
- `TauCeti.HigherHidaColeman.bggSafe_killsTerm` (characterisation): Under the proved bounds, every nonidentity twisted BGG E1 eigenblock at λ is zero.
- `TauCeti.HigherHidaColeman.bggSafe_dual` (compatibility): The negative comparison uses κ∨ and −λ− in the positive test.

Discriminating unit tests:

- **F5.bgg-exclusion.empty_weyl** (example): For modular curves M is a torus; BGGsafe is true for every λ, and geometric smallness still supplies classicality.
- **F5.bgg-exclusion.threshold** (non-example): If λ equals both applicable thresholds for a nonidentity v, it is not excluded; equality is not a strict classicality conclusion.
- **F5.bgg-exclusion.one_bound** (example): If λ fails the first inequality but satisfies the second, that BGG term is excluded by the disjunction.

Acceptance: This is a sufficient theorem-backed region, with no claim of an optimal converse.

### F5/analytic-control — Analytic coefficient control from proved bounds

**Theorem.** On each eigenblock satisfying BGGsafe, the algebraic-to-analytic + comparison (with twist −ν_alg) is an equivalence on finite-slope cohomology; its Serre-dual − comparison (with twist +ν_alg) is likewise an equivalence. This conclusion uses finite slope blocks and the BGG spectral sequence, not an unproved exactness of unrestricted analytic induction cohomology.

Hypotheses: the global Coleman datum above.

Direct inputs: `F5/bgg-exclusion`, `F5/automorphic-bgg`, `C4/geometric-duality`, `F5/perfect-slopes`.

Proof/construction route:

1. Apply the two slope bounds to each nonidentity shifted BGG term.
2. Use the finite spectral sequence with only its identity column remaining.
3. Apply the dual coefficient comparison for the negative theory.

Source: **BP-Coleman**, Corollary 6.8.4 and Remark 6.8.5, p. 168, via the explicit bound argument in Theorems 6.5.5 and 6.8.3. States the consequence of the proved BGG exclusions without asserting the unreconciled printed region is identical.

Acceptance: Combining this with geometric classicality is a separate step: coefficient classicality alone does not identify local with global cohomology.

### F5/family-vanishing-duality — Family vanishing, pairings and bottom torsion freeness

**Theorem.** Over weight affinoids, cuspidal H_w,an^i is zero outside [0,ℓ±(w)] and canonical H_w,an^i is zero outside [ℓ±(w),d]. Over a domain A the canonical bottom H_w,an^(ℓ±(w)) is A-torsion-free. There are family pairings between complementary ±, cusp/canonical degrees into A, whose coefficient-field instances are nondegenerate and perfect on matching finite-slope blocks. No derived perfect duality of arbitrary full family cohomology modules, or flatness over A, is asserted from nondegeneracy on field fibers alone.

Hypotheses: the global Coleman datum above.

Direct inputs: `F5/perfect-slopes`, `F5/tor-specialization`, `C4/geometric-vanishing`, `C4/geometric-duality`, `ShimuraCompactifications:C3`, `AdicSpacesPartII:F1`.

Proof/construction route:

1. Use the integral local-trivialization form of subcanonical acyclicity for the analytic Banach coefficient.
2. Apply the Bruhat support dimension argument to obtain the cuspidal range.
3. Over fields use finite-block Serre duality; use perfect-family fiber amplitude to obtain the canonical range and bottom-degree torsion freeness.

Source: **BP-Coleman**, Theorem 6.6.1, pp. 161–164; Theorems 6.7.1–6.7.3, pp. 164–167. Proves vanishing using integral local trivializations and subcanonical pushforward, then complementary bounds and pairings.

Acceptance: A torsion-free finite module over a higher-dimensional affinoid need not be projective.

Atlas planet: **Family Serre duality and vanishing**.

Layer status: **planned**. Its targets are represented above, but closure still requires the precise supplier and gap items in the final sections.

## E6. Eigenvarieties and interior deformation

Feed supported family cohomology into the complex spectral machine. Obtain the cohomological eigenvariety, its eigenpacket and Serre-duality interfaces, the torsion-free interior sheaves and equidimensional interior support. Prove maximal-dimensional deformation and sharp interior bounds, separating these from conjectural sharp bounds on full cohomology.

### E6/eigenvariety — The cohomological eigenvariety

**Construction.** Let W represent continuous characters of T^c(Z_p), and let That represent characters of T(Q_p) whose unit restriction factors through T^c. Glue the family finite-slope cohomology sheaves for all w, i, signs and boundary variants. First replace the negative torus action by t↦t⁻¹, so paired torus operators have equal eigencharacters. Let Z⊂That be the common cohomological support, defined by the annihilator of their direct sum, and let E be the relative affinoid spectrum over Z of the coherent algebra generated by the spherical prime-to-S Hecke action on that sum. Thus E→Z is finite; E→W is locally quasi-finite and partially proper. E need not be globally finite, flat, reduced or equidimensional over W.

Hypotheses: the global Coleman datum above.

Direct inputs: `F5/perfect-slopes`, `F5/family-vanishing-duality`, `PadicFamilies:L2a/complex-spectral-variety`, `PadicFamilies:L2a`, `PadicMeasuresIwasawaAlgebras:L0a`, `AutomorphicBundles:B5`.

Proof/construction route:

1. Import the cohomological finite-module version of the complex spectral machine; its extension from finite-projective Banach modules is an explicit supplier request.
2. Glue flat-affinoid restrictions of the supported cohomology sheaves on That.
3. Take the actual spherical Hecke image on their sum and its finite relative spectrum.
4. Apply the machine to obtain the stated local finiteness and partial properness.

Source: **BP-Coleman**, §6.9 and Theorem 6.9.3, pp. 168–170. Uses the common spectral support and finite Hecke-image algebra of all cohomological degrees.

Uses that determine the API: **E6/classical-points**: Locates finite-slope classical eigenpackets. **E6/interior-equidimension**: Its interior support has a stronger dimension theorem.

Planning API:

- `TauCeti.HigherHidaColeman.cohomologicalEigenvariety` (constructor): E is the finite relative spectrum of the spherical Hecke image on the sum of supported cohomology sheaves.
- `TauCeti.HigherHidaColeman.eigenvariety_toSpectral` (projection): The finite map E→Z⊂That and its weight map to W.
- `TauCeti.HigherHidaColeman.eigenvariety_character` (characterisation): A geometric point is a pair (λ_p,λ^S) occurring in one of the specified cohomology supports, with λ_p on T(Q_p).
- `TauCeti.HigherHidaColeman.eigenvariety_sheaf` (data): The graded coherent cohomology sheaves on E, with pushforward equal to those on Z.
- `TauCeti.HigherHidaColeman.eigenvariety_dualAction` (compatibility): After t-inversion on −, paired +/− eigencharacters agree on T(Q_p).

Discriminating unit tests:

- **E6.eigenvariety.no_cohomology** (example): If every supported finite-slope cohomology sheaf vanishes, Z and E are empty.
- **E6.eigenvariety.positive_degree** (example): A nonzero Hecke eigenclass supported only in H^1 still contributes to E.
- **E6.eigenvariety.dual_weight** (example): Before inversion − has unit character ν⁻¹; after inversion it lies over ν in the same W as its + partner.

Acceptance: A degree-zero-only sum is insufficient; nilpotents are retained in the Hecke-image algebra.

Atlas planet: **Cohomological eigenvariety**.

### E6/classical-points — Classical eigenpackets and a sufficient converse

**Theorem.** Every finite-slope eigenpacket in any classical canonical or cuspidal H^i produces a point of E. Its weight is ν=ν_algχ, where ν_alg=−w⁻¹w0M(κ+ρ)−ρ for an element w of the full Weyl group arising from a Bruhat representative and a Levi BGG element; the resulting support is in the Bruhat representative part. Conversely, for regular algebraic ν and a point supported in a fixed w-part, if its smooth normalized λ_pν_alg⁻¹ satisfies both the explicit BGGsafe coefficient exclusion and geometric strongly small exclusion for κ_w(ν_alg), it comes from the corresponding classical finite-slope cohomology. The converse is a sufficient region; no optimality claim relies on the unreconciled printed coefficient condition.

Hypotheses: the global Coleman datum above.

Direct inputs: `E6/eigenvariety`, `F5/tor-specialization`, `F5/automorphic-bgg`, `F5/analytic-control`, `C4/geometric-classicality`.

Proof/construction route:

1. Lift a classical eigenpacket to a nonzero graded term of the finite Bruhat Cousin sequence.
2. Lift again to a Levi BGG term, and then to a Tor term supported on a family cohomology sheaf.
3. For the converse choose maximal nonzero cohomology degree at the packet to survive specialization, then apply the two explicit exclusion theorems.

Source: **BP-Coleman**, Theorem 6.9.3(1)–(2) and proof, pp. 169–170. A classical packet lifts through Cousin, BGG and Tor spectral sequences; the converse uses the two control maps.

Acceptance: Not every classical class occurs at the family weight indexed solely by its initial Bruhat representative.

### E6/interior-sheaf — Interior family cohomology and its support

**Definition.** For each w and sign, let I_w^± be the image of H_w,an^(ℓ±(w))(ν_un,1)^±,fs→H_w,an^(ℓ±(w))(ν_un,0)^±,fs as a coherent sheaf on Z and E. Let Z!_w and E!_w be its supports, retaining the induced faithful image-algebra structure, and take their finite unions Z!,E!. They are the interior support, not an assumption that the image commutes with arbitrary coefficient change.

Hypotheses: the global Coleman datum above.

Direct inputs: `E6/eigenvariety`, `F5/family-vanishing-duality`.

Proof/construction route:

1. Use the common finite-slope model to form the map from subcanonical to canonical cohomology.
2. Take its coherent image on spectral blocks and glue under flat restrictions.
3. Take the support and corresponding Hecke image; use the finite sum over w to define the unions.

Source: **BP-Coleman**, Proposition 6.9.5 and definitions before Theorem 6.9.7, pp. 170–171. Defines the interior coherent image and its eigenvariety support in the only possible local interior degree.

Uses that determine the API: **E6/interior-specialization**: Proves the particular one-sided specialization assertions. **E6/interior-equidimension**: Provides torsion-free support of maximal dimension.

Planning API:

- `TauCeti.HigherHidaColeman.interiorFamily` (constructor): The coherent image sheaf I_w^± in degree ℓ±(w).
- `TauCeti.HigherHidaColeman.interiorFamily_inclusion` (projection): I_w^± injects into the canonical bottom-degree sheaf.
- `TauCeti.HigherHidaColeman.interiorFamily_support` (characterisation): A point lies in E!_w iff the localization of I_w^± there is nonzero.
- `TauCeti.HigherHidaColeman.interiorFamily_restrict` (compatibility): Flat affinoid restriction commutes with this coherent image.
- `TauCeti.HigherHidaColeman.interiorFamily_compact` (compatibility): For D=∅ the cuspidal-to-canonical map is the identity, so I_w^± is the whole local cohomology sheaf.

Discriminating unit tests:

- **E6.interior-sheaf.zero_map** (example): A zero cuspidal-to-canonical map gives empty E!_w even if the full E has points.
- **E6.interior-sheaf.compact** (example): When D=∅ the interior image is all local cohomology, concentrated in ℓ±(w).
- **E6.interior-sheaf.nonflat_image** (non-example): For the map t:A→A over A=F⟨t⟩, its image (t) has a nonzero fiber (t)/t(t) at t=0 whereas the image of the specialized map is zero. Arbitrary image base change is false.

Acceptance: The word interior refers to the image of the boundary map, not compact support along both Bruhat directions.

Atlas planet: **Interior family cohomology**.

### E6/interior-specialization — Torsion freeness and interior specialization

**Theorem.** The interior I_w^± is torsion-free over each domain weight affinoid, and its fiber maps surjectively onto the interior cohomology of the specialized analytic coefficient. At locally algebraic ν the + map from algebraic local interior to analytic interior is injective, and the − map from analytic interior to the Serre-dual algebraic local interior is surjective. The family pairings descend to these images. These are specific one-sided statements, not a general theorem that images commute with all base changes.

Hypotheses: the global Coleman datum above.

Direct inputs: `E6/interior-sheaf`, `F5/family-vanishing-duality`, `F5/tor-specialization`, `F5/automorphic-bgg`.

Proof/construction route:

1. Embed the interior image into the torsion-free bottom canonical sheaf.
2. Use the upper cuspidal amplitude and the Tor sequence to control the specialized image.
3. Use the BGG edge maps and the complementary degree ranges for the stated injectivity/surjectivity directions.

Source: **BP-Coleman**, Proposition 6.9.5(1)–(4), pp. 170–171. Uses the two opposite amplitude bounds to control the bottom interior image and its algebraic comparisons.

Acceptance: The + and − algebraic comparison directions are asymmetric.

### E6/interior-equidimension — Interior eigenvariety dimension and deformation

**Theorem.** Each nonempty E!_w and Z!_w, and their nonempty finite unions, is equidimensional of dimension dim W. Every finite-slope classical interior eigenclass in degree i gives a point of E!_w for some w with ℓ±(w)=i, at ν=ν_w(κ)χ in + (and the Serre-dual coefficient convention in −). It therefore deforms on a component of maximal weight dimension. This theorem applies to the interior support; the entire eigenvariety E can have components of other dimensions.

Hypotheses: the global Coleman datum above.

Direct inputs: `E6/interior-specialization`, `PadicFamilies:L2a`, `C4/interior-cousin`.

Proof/construction route:

1. Apply the requested finite-module support dimension lemma over weight affinoids to I_w.
2. Use interior specialization and the algebraic comparison directions to place local classical packets on E!_w.
3. Use the interior Cousin subquotient to find w with the correct length for a global degree-i packet.

Source: **BP-Coleman**, Theorem 6.9.7(1)–(3), pp. 171–172. Torsion-free interior support gives the dimension theorem and includes every classical interior eigenpacket.

Acceptance: No cuspidal/full-interior equality is presumed in the presence of boundary.

Atlas planet: **Interior eigenvariety deformation theorem**.

### E6/interior-sharp-bounds — Sharp bounds on general interior cohomology

**Theorem.** At locally algebraic weights, analytic interior slopes satisfy λ≥0 in + and λ≤0 in −. Consequently algebraic interior slopes satisfy λ≥w⁻¹w0M(κ+ρ)+ρ in + and λ≤w⁻¹(κ+ρ)−ρ in −. On the geometric small region, global interior H_!^i is confined to [l_min,l_max]. A degree-zero small-slope overconvergent cuspidal class becomes a classical canonical class; the argument alone does not prove its classical cuspidality. When D=∅ the interior map is the identity, so these sharp bounds apply to the whole local and global theory; geometric smallness and the corresponding sharp analytic BGG exclusion then suffice. Sharp bounds on all noninterior general noncompact cohomology remain a separate conjecture.

Hypotheses: the global Coleman datum above.

Direct inputs: `E6/interior-equidimension`, `E6/classical-points`, `C4/proved-slopes`, `C4/interior-cousin`, `F5/analytic-hecke`, `ShimuraData:D3`.

Proof/construction route:

1. Use maximal-dimensional interior support and sufficiently dominant arithmetic weights to find a dense set of regular classical points in an adapted neighborhood: check that the fixed adapted slope window satisfies both geometric strong smallness and the BGGsafe exclusions as the dominant weight increases. This chamber-cone calculation is part of the proof, not density of arbitrary classical weights assumed as input.
2. Apply the optimal bounds at those points and local constancy of eigenvalue valuations.
3. Apply the interior Cousin subquotient and the sharp exclusions; retain the stated boundary limitation for degree zero.

Source: **BP-Coleman**, Theorem 6.10.1, pp. 172–173; Theorems 6.10.2–6.10.3 and Remark 6.10.4, p. 173. Deforms interior packets to regular classical weights, then transports optimal bounds back by local constancy of valuations.

Acceptance: For general data this improves the interior theorem, not every full-cohomology slope bound.

Atlas planet: **Sharp interior slope bounds**.

Layer status: **planned**. Its targets are represented above, but closure still requires the precise supplier and gap items in the final sections.

## B7. Ordinary and finite-slope comparison

Identify Siegel integral ordinary complexes with ordinary overconvergent cohomology, then compare their weight-space families. Deduce rational all-genus amplitudes and sharp Siegel classicality. Retain the genuine obstruction to integral Hida theory for general Hodge/PEL data.

### B7/integral-overconvergent — Integral supported overconvergent model

**Construction.** In the Siegel setting choose w, t∈T++ and 0<ε′<ε<1 rational so the correspondence improves the two degree neighborhoods. Blow up to separate the divisors at w_i and w_i±ε, w_i±ε′. Put U=U_(≥w−ε), and let Z_(<w+ε) be the degree constraint closed in the discrete-adic locale with quasi-compact open complement. Choose tildeωκχ=ωκχ(m(D+−D−)) so the normalized coefficient map factors through p2*tildeωκχ(D+)→p1!tildeωκχ(−D−). Define K_int=Rlim_s RΓ_(Zhat∩U mod p^s)(U mod p^s,tildeωκχ). The hat is formal closed support; it is not ordinary local cohomology at a reduced divisor. Include −ε_b D for the boundary choice ε_b=0,1.

Hypotheses: the global integral Siegel datum above.

Direct inputs: `H2/integral-normalization`, `D1/partial-support`, `D1/compact-dynamics`, `ShimuraCompactifications:C5`, `SolidAnalyticRings:SA.3`.

Proof/construction route:

1. Refine the degree model at the finitely many rational thresholds.
2. Use the strict dynamics to absorb the bounded coefficient poles in m(D+−D−).
3. Apply the formal-support triangle modulo p^s and then derived p-adic completion.

Source: **BP-Hida**, §6.2.1–6.2.8, pp. 61–62. Separates fractional degree divisors and extends the normalized coefficient map with the factorization needed for the support comparison.

Uses that determine the API: **B7/ordinary-comparison**: Its two improving supports sandwich the strict ordinary complex. **B7/sharp-siegel**: Its projected integral images give the slope-bound lattices.

Planning API:

- `TauCeti.HigherHidaColeman.integralOverconvergent` (constructor): K_int is the displayed p-complete supported object with its chosen coefficient extension.
- `TauCeti.HigherHidaColeman.integralOverconvergent_mod` (projection): The compatible p^s-level support triangles define its reduction system.
- `TauCeti.HigherHidaColeman.integralOverconvergent_operator` (structure): The normalized t-map factors through the improving intermediate support.
- `TauCeti.HigherHidaColeman.integralOverconvergent_rational` (compatibility): After inverting p the coefficient extension is the prescribed rational automorphic bundle on the analytic degree neighborhood.

Discriminating unit tests:

- **B7.integral-overconvergent.twist** (example): Inverting p erases the vertical modification m(D+−D−).
- **B7.integral-overconvergent.support** (non-example): Deleting the formal closed support changes the support triangle and need not preserve the ordinary object.
- **B7.integral-overconvergent.poles** (non-example): An arbitrary extension with no improving zeros/poles factorization is not an input to this construction.

Acceptance: The integral object includes its model and lattice choices; only its ordinary comparison is intrinsic.

Atlas planet: **Integral overconvergent cohomology**.

### B7/ordinary-comparison — Ordinary Hida–Coleman comparison

**Theorem.** The normalized t acts on K_int, its ordinary localization is canonically C_w(κ,χ,ε_b), and K_int[1/p] is the analytic supported overconvergent complex. For every finite t-slope window, the image of H^i(K_int) in its finite-dimensional rational slope cohomology is a Z_p-lattice (over the finite coefficient extension when present). Via the comparison of the degree support core with the Hodge–Tate Bruhat core, the rational ordinary part identifies with the ordinary part of C4 supported Coleman cohomology with the same normalized operator. This does not identify all finite slopes with ordinary cohomology.

Hypotheses: the global integral Siegel datum above.

Direct inputs: `B7/integral-overconvergent`, `D1/compact-dynamics`, `H2/fixed-perfect`, `C4/analytic-continuation`, `PerfectoidShimuraVarieties:S6/bruhat-cell-tubes`, `AdicSpacesPartII:R3`.

Proof/construction route:

1. Compare the degree/Bruhat intersections under all positive and transposed iterates.
2. Sandwich the formal supported model between the two compact dynamical support pairs.
3. Use the strict/compact comparison with its coefficient factorization and take the complete limit.
4. Use the finite-cover bounded integral structures to show that the projected image on each finite-dimensional slope block is open and bounded.

Source: **BP-Hida**, Proposition 6.1.7 and Proposition 6.1.11, pp. 59–61; Theorem 6.2.9, p. 62. Compares the degree and Bruhat support cores, and then ordinary and rational supported cohomology.

Acceptance: A lattice here is a cohomology-level projected image, not a claim that the unsplit integral complex is finite.

Atlas planet: **Ordinary Hida–Coleman comparison**.

### B7/family-comparison — Ordinary comparison in weight families

**Theorem.** Let Spa(A[1/p],A) be a quasi-compact weight affinoid and ν_A its universal character, analytic at sufficiently large radius n. The analytically induced coefficient admits an integral extension on a sufficiently small degree neighborhood, with an improving coefficient factorization whose pole bound is independent of p-power reduction. Its integral supported ordinary cohomology is the base change of M_w along the Iwasawa character map matching I3: [u]↦ν_A(u)⁻¹. Equivalently the analytic-weight family is obtained from the Iwasawa family by inversion on weight space. For a fixed continuous character to O_C, rationalization gives the analytic supported cohomology and its projected integral image is a lattice on every finite slope block. The sign convention is part of the comparison contract; the differently written base-change notation in §6.2 is recorded for reconciliation.

Hypotheses: the global integral Siegel datum above.

Direct inputs: `I3/iwasawa-complex`, `I3/derived-control`, `B7/ordinary-comparison`, `F5/analytic-sheaves`, `F5/analytic-hecke`, `HodgeTateAndCanonicalSubgroups:T5`, `ShimuraCompactifications:C5`, `DeformationAndDerivedPatchingAlgebra:P7`.

Proof/construction route:

1. Use radius improvement to kill ordinary cohomology of the analytic-to-topological induction kernel modulo p^r.
2. Extend the torsor over a blow-up away from the ordinary stratum.
3. Bound trace poles independently of r and apply the same supported ordinary comparison as for fixed coefficients.
4. Use the admissible Iwasawa model for derived coefficient change; insert the character inversion fixed by arithmetic specialization.

Source: **BP-Hida**, Propositions 6.2.12–6.2.14 and Theorem 6.2.15, pp. 63–64; Remark 5.4.3, p. 57. Compares analytic and topological induction on the ordinary locus and supplies integral extensions uniform in the reduction exponent.

Acceptance: The explicit character inversion must be checked when identifying a supplier implementation with either printed notation.

Atlas planet: **Family ordinary comparison**.

### B7/rational-amplitudes — All-genus rational amplitude

**Theorem.** For every genus g≥1, M_w^0[1/p] has perfect amplitude [ℓ(w),d] and M_w^1[1/p] has perfect amplitude [0,ℓ(w)]. The complementary universal Igusa complexes have the corresponding dual amplitude. These conclusions are rational: for g≥3 they do not settle the integral sharp amplitude conjecture.

Hypotheses: the global integral Siegel datum above.

Direct inputs: `B7/family-comparison`, `F5/family-vanishing-duality`, `I3/family-duality`.

Proof/construction route:

1. Restrict the analytically normalized family to its ordinary direct factor.
2. Apply the two established boundary-dependent degree ranges.
3. Cover rational weight space and transport through the inversion map; dualize the universal statement.

Source: **BP-Hida**, Corollary 6.2.17 and Remark 6.2.18, p. 64. Transfers family vanishing across ordinary comparison after inverting p.

Acceptance: Inverting p occurs before the all-genus conclusion.

### B7/sharp-siegel — Sharp Siegel bounds and classicality

**Theorem.** For all Siegel strata the sharp geometric + bound is λ≥w⁻¹w0M(κ+ρ)+ρ and the − bound is λ≤w⁻¹(κ+ρ)−ρ. For analytic coefficients the bounds are λ≥0 in + and λ≤0 in −. Thus geometric small slopes suffice in C4 classicality and vanishing. For coefficient comparison the larger proved BGG exclusion is λ not≥−ν_v for every v≠1 in + and its transposed dual in −; combine it with geometric smallness to obtain classical eigenvariety points. This is a theorem in every genus, with integral lattices supplied by B7; no general noncompact abelian-type analogue is asserted.

Hypotheses: the global integral Siegel datum above.

Direct inputs: `B7/ordinary-comparison`, `B7/family-comparison`, `C4/proved-slopes`, `C4/geometric-classicality`, `F5/automorphic-bgg`, `F5/bgg-exclusion`, `E6/classical-points`.

Proof/construction route:

1. Show each normalized potent t preserves a lattice on every finite-dimensional slope block.
2. Read off nonnegative normalized eigenvalue valuations and extend from the potent cone to the required positive cone.
3. Remove the nonidentity BGG terms with the sharp analytic bound, and the unwanted geometric Cousin terms with geometric smallness.

Source: **BP-Hida**, Corollaries 6.2.10 and 6.2.16, pp. 62, 64; BP-Coleman Theorems 5.12.3 and 6.5.5. Integral lattices give the conjectured sharp bounds in the Siegel case, improving the geometric and coefficient exclusions.

Acceptance: At an equality threshold the excluded cone inequality holds; a strict classicality test does not include that boundary.

Atlas planet: **Sharp Siegel classicality**.

Layer status: **planned**. Its targets are represented above, but closure still requires the precise supplier and gap items in the final sections.

## X8. Modular, Siegel and unitary Checks

Compute modular-curve normalizations and two cohomological degrees, all four GSp4 chambers and a strict slope threshold, the singular Klingen two-term complex, and all n+1 split U(n,1) Weyl strata. Export precisely the higher-degree perfect complexes and deformation statements used by potential modularity and Siegel lifting.

### X8/c2-weight-table — The four Siegel threefold weights

**Definition.** In derived C2 coordinates choose G-dominance 0≥ν1≥ν2, M-dominance κ1≥κ2, ρ=(−1,−2) and 2ρ_nc=(−3,−3). The four minimal left representatives act by (a,b), (−a,b), (−b,a), (−b,−a), of lengths 0,1,2,3. Define the light table κ_0=(3−ν2,3−ν1), κ_1=(3−ν2,ν1+1), κ_2=(2−ν1,ν2), κ_3=(ν1,ν2). In full GSp4 coordinates the central coordinate of κ is the negative of that of ν and the parity condition is retained. The two-coordinate table alone does not define a GSp4 weight.

Direct inputs: `A0/weight-dictionary`, `AutomorphicBundles:B4`, `ShimuraData:D3`.

Proof/construction route:

1. Substitute the four displayed Weyl actions in κ_w=−w0M w(ν+ρ)−ρ.
2. Use the actual GSp4 character lattice to restore the central coordinate.

Source: **BP-Hida**, §3.1, pp. 33–34; BP-Coleman §5.14.3, pp. 141–142. Computes the shifted weight dictionary in C2, with the negative-positive-root convention fixed.
Source: **BP-Coleman**, §5.14.3, pp. 141–142. Checks the genus-two chamber and operator convention against the general weight dictionary.

Uses that determine the API: **X8/siegel-check**: Checks all cohomological chambers and the classicality bound. **X8/klingen-complex**: Places the one-variable singular family on its two adjacent chambers.

Planning API:

- `TauCeti.HigherHidaColeman.c2Weight` (constructor): For r∈Fin 4 and ν∈Z² return the displayed κ_r.
- `TauCeti.HigherHidaColeman.c2Weight_zero` (simp): κ_0(ν1,ν2)=(3−ν2,3−ν1).
- `TauCeti.HigherHidaColeman.c2Weight_inverse` (characterisation): Applying ν_w to κ_r returns ν for the matching representative.
- `TauCeti.HigherHidaColeman.c2Weight_serre` (compatibility): Serre duality exchanges r with 3−r and κ with (3−κ2,3−κ1).

Discriminating unit tests:

- **X8.c2-weight-table.regular** (example): ν=(0,−2) gives (5,3),(5,1),(2,−2),(0,−2) in lengths 0,1,2,3.
- **X8.c2-weight-table.wall** (example): ν=(1,1−k), k≥0, gives κ_0=κ_1=(k+2,2), demonstrating the singular wall.
- **X8.c2-weight-table.serre** (example): The dual of κ=(5,3) is (0,−2), and the dual of (5,1) is (2,−2).

Acceptance: Lengths are those of minimal left representatives, not an arbitrary order of signed permutations.

Atlas planet: **Siegel threefold weight table**.

### X8/modular-check — Modular curve normalization and degree-one check

**Application.** For GL2, d=1 and W_M={1}; the geometric finite-slope Cousin sequence reads 0→H^0_class(ω^k)→H^0_id,oc(ω^k)→H^1_long,oc(ω^k)→H^1_class(ω^k)→0. In the Coleman normalization U_naive acts on q-expansions as pΣa_(pn)q^n. Its id slopes are ≥1 and its long slopes ≥k. The integral normalization is p^(−min(1,k))U_naive. For k≥2 the standard degree-zero q-expansion operator U_std=p⁻¹U_naive has classicality slope <k−1. For k≤0 the integral degree-one operator has threshold <1−k. At k=1 neither argument gives an automatic strict-positive window. Ordinary degree-zero families are imported from PadicFamilies; the complementary projective degree-one family specializes for k≥3 to ordinary H^1(ω^(2−k)(−D)) and pairs perfectly with the degree-zero family.

Direct inputs: `A0/scalar-normalization`, `C4/bruhat-cousin`, `C4/geometric-classicality`, `I3/derived-control`, `I3/family-duality`, `PadicFamilies:L0a`, `PadicFamilies:L0`.

Proof/construction route:

1. Specialize the two Bruhat cells and their support long exact sequence.
2. Subtract min(1,k) from both naive slope bounds.
3. Use genus-one ordinary control and Serre duality to recover the complementary family; import the existing degree-zero Hida theorem.

Source: **BP-Coleman**, Example 5.14.2, p. 141; BP-GL2 Theorem 1.2, p. 3. Tests the factor p in the naive operator, the two geometric degrees and the ordinary dual interpolation.
Source: **BP-GL2**, Theorems 1.1–1.4, pp. 2–3; §2.1, pp. 4–5. Checks the two cohomological degrees, derived control and the integral U normalization on the modular curve.

Acceptance: At k=2 the standard threshold is 1; equality slope 1 is not covered. At k=0 the degree-one integral threshold is 1.

### X8/siegel-check — GSp4 chambers, amplitudes and a strict slope test

**Application.** For g=2, d=3, ν=(0,−2;0) is regular and the four κ_r above have compatible + chamber of length r. The cuspidal M_r^1 amplitude is [0,r], canonical M_r^0 amplitude [r,3], and paired negative length is 3−r. For κ=(k1,k2;−k1−k2), evaluate the sharp A_w bounds on t2=diag(p⁻¹,p⁻¹,1,1): they are 3,k2+1,k2+1,k1+k2. On t1=diag(p⁻¹,p⁻²,1,p) they are k2+3,k2+3,k1+2k2,k1+2k2. If k1≥k2>2, a sufficient holomorphic geometric test is v_p(U2_naive)<k2+1. For U2_std=p⁻³U2_naive the test is <k2−2; at k2=3 it is strictly <1. These are the named source operators, not a claimed identification with every convention called U_p in Siegel literature.

Direct inputs: `X8/c2-weight-table`, `A0/scalar-normalization`, `I3/integral-amplitudes`, `B7/sharp-siegel`.

Proof/construction route:

1. Evaluate each of the four A_w weights on the two explicit diagonal elements.
2. Use the compatible chamber table and the genus-two integral amplitude theorem.
3. Subtract three for the specified renormalization and retain strict inequality.

Source: **BP-Coleman**, §5.14.3, pp. 141–142; BP-Hida Proposition 5.6.3, p. 58 and Corollary 6.2.10, p. 62. Checks the four root-coordinate slope evaluations, using the sharp bound established by higher Hida theory.
Source: **BP-Hida**, Proposition 6.1.11, pp. 60–61. Supplies the sharp Siegel slope inequality used in the explicit genus-two thresholds.

Acceptance: The stronger pre-comparison estimate for U2 has k2 in its middle entries; B7 justifies k2+1.

### X8/klingen-complex — Singular Klingen interpolation complex

**Definition.** For the Siegel threefold at Klingen level let X_Kli^≥1 be the formal locus where its distinguished height-one subgroup is multiplicative. Over its height-one tower X_∞, let IG_∞=Isom(µ_(p∞),H_∞), a Z_p× torsor. The tower maps are affine étale, not finite; on p-rank one they are isomorphisms. With Λ1=Z_p[[Z_p×]] form F_κ by descent of O_(IG∞) completed-tensor Λ1 with the diagonal universal character, first colim over Igusa level modulo p^n and then lim_n. It is invertible over the completed scalar extension on X_∞, not asserted finite locally free over the original X_Kli^≥1. Define M_Kli=f RΓ(X_Kli^≥1,F_κ⊗det(ω)^2(−D)), where f is the ordinary projector for Pilloni U=U1U2. On Ω(k,r)=Sym^kω⊗det(ω)^r, this U has raw pullback/trace normalization p^(−3−r) for the correspondence of isogeny type (1,p,p,p²).

Direct inputs: `X8/c2-weight-table`, `PadicMeasuresIwasawaAlgebras:L1`, `PadicFamilies:L0a`, `HodgeTateAndCanonicalSubgroups:T5`, `ShimuraCompactifications:C5`, `AutomorphicBundles:B4`, `AutomorphicBundles:B5`, `DeformationAndDerivedPatchingAlgebra:P7`.

Proof/construction route:

1. Import the polarized Klingen height-one tower and its Igusa torsor, including the nonfinite transition behavior.
2. Descend the universal one-dimensional character and use the prescribed completed level limits.
3. Apply the ordinary projector after local finiteness is proved; compute by the two-term Hasse-invariant resolution.

Source: **Pilloni-Singular**, §9.1–9.4, pp. 54–57; §10.7 and §§11.1–11.3, pp. 66–72. Constructs the one-variable singular coefficient and its partial-ordinary supported complex with its own operator normalization.

Uses that determine the API: **X8/klingen-control**: Obtains a perfect complex in degrees 0,1 across singular weights. **X8/consumer-contract**: Supplies the singular Siegel coefficient in higher-degree modularity applications.

Planning API:

- `TauCeti.HigherHidaColeman.klingenCoefficient` (constructor): The descended completed universal character sheaf F_κ on the specified tower.
- `TauCeti.HigherHidaColeman.klingenCoefficient_weight` (compatibility): At integer k≥0 the highest-weight projection Sym^kω→F^k has ordinary-nilpotent kernel.
- `TauCeti.HigherHidaColeman.klingenComplex` (constructor): The partial-ordinary supported complex M_Kli over Λ1.
- `TauCeti.HigherHidaColeman.klingenComplex_weight` (projection): The derived character-k fiber, with det(ω)^2 and −D retained.

Discriminating unit tests:

- **X8.klingen-complex.highest_weight** (example): Ω(k,2) has highest weight (k+2,2), so ν=(1,1−k) lies on the two-chamber wall.
- **X8.klingen-complex.tower** (non-example): Treating each height-one transition as a finite étale cover contradicts its behavior over the full p-rank-at-least-one locus.
- **X8.klingen-complex.variables** (non-example): Λ1 has one continuous weight variable; it is not the two-derived-variable Siegel Borel weight algebra.

Acceptance: The full-torus Borel-ordinary M_w and this one-variable partial-ordinary object are distinct.

Atlas planet: **Singular Klingen Hida complex**.

### X8/klingen-control — Two-term singular-weight control

**Theorem.** M_Kli is perfect over Λ1 of amplitude [0,1]. For all k≥0, its derived character-k fiber equals f RΓ(X_Kli^≥1,Ω(k,2)(−D)); after inverting p this equals f RΓ(X_Kli(p),Ω(k,2)(−D)). For k>p+1, H^0(M_Kli⊗^L_(Λ1,k) Q_p/Z_p) agrees with the ordinary H^0 at hyperspecial level with Ω(k,2)(−D)⊗Q_p/Z_p. This last assertion has a stricter weight range and a different level; it is not asserted for every k≥0. The same away-p spherical Hecke actions are retained. No equivalence between M_Kli and a sum of the full-torus M_w is supplied by these statements.

Direct inputs: `X8/klingen-complex`, `D1/ordinary-perfectness`, `DeformationAndDerivedPatchingAlgebra:P7`, `ShimuraCompactifications:C5`.

Proof/construction route:

1. Use the two-term Hasse resolution, ordinary-nilpotent highest-weight kernel and complete character specialization for integral perfectness.
2. Use the small-slope extension theorem, Theorem 14.7.1, and the two-term degree bounds.
3. For the singular endpoint use locally constant Euler characteristics and the opposite injection/surjection from the two-affine cover; the weight-large comparison fixes the Euler characteristic.
4. Use codimension-two extension and the ordinary hyperspecial/Klingen comparison for the torsion H^0 assertion in its stated range.

Source: **Pilloni-Singular**, Theorem 11.3.1 and Corollary 11.2.1, p. 71; Theorem 14.8.1 and Lemmas 14.8.2–14.8.4, pp. 100–102; Theorem 1.1, p. 3. Gives integral derived control and the rational global Klingen comparison, with the separate high-weight hyperspecial torsion assertion.

Acceptance: At k=0 the rational Klingen comparison holds, while the hyperspecial Q_p/Z_p assertion is not included. The proof-level inputs for the weight-large starting comparison are an explicit open contract.

Atlas planet: **Singular-weight control theorem**.

### X8/unitary-check — Split U(n,1) and positive-degree families

**Application.** For unitary signature (n,1), n≥1, at a split good prime with neat tame level and the Coleman datum, use derived A_n coordinates and M=GL_n×GL_1, d=n. Minimal left representatives are w_r=(1,…,n−r,n+1,n−r+1,…,n), r=0,…,n, of length r, using (w x)_i=x_(w⁻¹i). Put ρ=(n/2,(n−2)/2,…,−n/2). For dominant regular integral ν the weights κ_r=−w0M w_r(ν+ρ)−ρ are M-dominant and have compatible + chamber r. For n=2 and ν=(4,2,0), they are (−3,−5,2), (0,−5,−1), (0,−2,−4), in degrees 0,1,2 respectively. Finite slope cuspidal ranges [0,r], canonical ranges [r,n], Serre duality and interior maximal-dimensional deformation follow. These are general Coleman conclusions specialized to split unitary data; the plan does not assert an integral unitary Hida complex or replace the ordinary locus by a µ-ordinary locus at inert p.

Direct inputs: `A0/weight-dictionary`, `C4/geometric-vanishing`, `C4/geometric-duality`, `F5/family-vanishing-duality`, `E6/interior-equidimension`, `ShimuraData:D3`, `AutomorphicBundles:B4`.

Proof/construction route:

1. Compute W_M\W by the omitted position of the last coordinate, checking the left-coset and inverse-action conventions.
2. Substitute the A_n half-sum; the final shifted weights are integral despite possible half-integral individual ρ coordinates.
3. Apply the general Coleman theorems in each of the n+1 strata and retain only the supported integral scope.

Source: **BP-Coleman**, §1.1, pp. 2–4; Theorems 5.7.3, 6.7.3 and 6.9.7, pp. 118–120, 166–167, 171–172. This worker computation applies the general root-datum formulas and the proved cohomological range/deformation theorems to signature (n,1).

Acceptance: The unitary result is not a proof of the general integral Hodge/PEL target.

### X8/consumer-contract — Higher-degree modularity input contract

**Application.** Export the supported Siegel perfect Iwasawa complexes with derived arithmetic control and complementary-degree duality, the two-term singular Klingen complex with its restricted torsion control, and the general abelian-type finite perfect slope blocks with Tor specialization and interior eigenpacket deformation. A potential-modularity or Siegel-lifting consumer must specify its Hecke localization, boundary variant, p-normalization, weight inversion and selected cohomological degrees before invoking these contracts. This roadmap supplies those inputs, not a modularity-lifting theorem or a claim that higher cohomology is concentrated in degree zero. These consumers lie outside the Caraiani–Newton order.

Direct inputs: `I3/derived-control`, `I3/family-duality`, `B7/rational-amplitudes`, `F5/tor-specialization`, `E6/interior-equidimension`, `X8/klingen-control`.

Proof/construction route:

1. List the precise complex, ring, normalization, degree and control map delivered by each input theorem.
2. Require the consumer to establish its own localized comparison and patching hypotheses.
3. Use the interior theorem only when the consumer eigenclass is in the cuspidal-to-canonical image.

Source: **BP-Hida**, Introduction §1.4, pp. 4–6; Pilloni-Singular Introduction §1, pp. 2–7; BP-Coleman Theorem 6.9.7, pp. 171–172. Combines the proved outputs used by higher-coherent-cohomology modularity arguments without planning those consumer theorems.
Source: **Pilloni-Singular**, Introduction §1, pp. 2–7; Theorem 11.3.1, p. 71. Supplies the singular-weight two-term input with its distinct torsion control range.
Source: **BP-Coleman**, Theorem 6.9.7, pp. 171–172. Supplies maximal-dimensional deformation for interior eigenpackets in every degree.

Acceptance: A nonzero H^1-only eigenpacket is retained; replacing the complex by H^0 would violate this contract.

Layer status: **planned**. Its targets are represented above, but closure still requires the precise supplier and gap items in the final sections.

## Supplier contracts and Part II boundaries

Each entry is a mathematical input to the named consumers. Stage references retain the owning roadmap’s identifier, and new generic extensions are proposed there. An implementation must satisfy the full contract, including hypotheses and variance; matching a title is insufficient.

### R1. AdicSpacesPartII:F1

Part II: dagger/complementary-support Serre duality for vector bundles and compact-type LB/Fréchet coefficients, with top-degree local-support duality and its finite-slope perfect pairing. Fix cohomological degree d and the top differential Ω^d; the printed derived shift in Proposition 2.7.3 is an explicit source gap. BP-Coleman §2.7, pp. 30–32.

Used by `C4/geometric-duality`, `F5/family-vanishing-duality`.

### R2. AdicSpacesPartII:R3

Part II: coherent and locally projective Banach quasi-Stein acyclicity, finite quasi-Stein supported Čech models, compact restrictions for strict affinoid containment, traces and bounded-p-torsion comparison of integral O+ Čech cohomology on small smooth affinoids. Export the finite-dimensional projected-lattice lemma, not an assumption that every integral sheaf is acyclic. BP-Coleman §§2.4–2.6, pp. 17–30, Lemma 5.9.10, pp. 125–126, Corollary 6.3.4, p. 154.

Used by `C4/allowed-support`, `C4/analytic-continuation`, `C4/geometric-vanishing`, `C4/proved-slopes`, `F5/analytic-sheaves`, `F5/family-complex`, `B7/ordinary-comparison`.

### R3. AnalyticStacks:AS.3

Solid six operations for separated finite-type schemes over Z, proper coherent pushforward, open !/* operations, formal-completion excision, projection formulas and smooth p!A=Ω^d[d]. Give the Artinian Z_p/p^s base instance and its flat coherent coefficients. An extension to arbitrary noetherian bases is an additional Part II contract, not implicit in this request.

Used by `D1/dynamic-compactification`, `D1/partial-support`, `D1/ordinary-finiteness`, `D1/discrete-base-change`, `D1/ordinary-duality`, `D1/supported-cousin`, `D1/compact-dynamics`, `I3/level-independence`.

### R4. AutomorphicBundles:B0

The de Rham M-torsor, associated vector bundles and functorial descent, compatible with change of datum/level and the specified reduced torsors.

Used by `F5/analytic-sheaves`.

### R5. AutomorphicBundles:B2

Integral highest-weight lattices and lowest-weight projection for the split Siegel Levi, and rational algebraic coefficient representations for the Coleman datum. The representation-theoretic positive-weight nilpotence and finite-character twist must be available with their weights.

Used by `H2/integral-normalization`, `I3/derived-control`, `F5/algebraic-maps`.

### R6. AutomorphicBundles:B3

Canonical/subcanonical extensions, boundary D and the formula for Serre dual coefficient κ∨=−w0Mκ−2ρ_nc, including the −D twist and Hecke functoriality. Imports no blanket canonical pushforward acyclicity.

Used by `H2/integral-normalization`, `H2/fixed-complex`, `I3/family-duality`, `C4/bruhat-cousin`, `C4/geometric-vanishing`, `C4/geometric-duality`.

### R7. AutomorphicBundles:B4

Explicit full character-lattice conventions for GL2, GSp4 and split U(n,1), with central/parity restrictions and Ω(k,r)=Sym^kω⊗det(ω)^r of highest weight (k+r,r). Higher-cohomology shifted chamber computations are owned here.

Used by `A0/weight-dictionary`, `X8/c2-weight-table`, `X8/klingen-complex`, `X8/unitary-check`.

### R8. AutomorphicBundles:B5

Prime-to-p and p-level cohomological Hecke pullback/coefficient/trace maps on associated bundles, composition and inverse-double-coset adjoints. Our nodes own the higher-cohomological normalization factors, not this general correspondence formalism.

Used by `H2/integral-normalization`, `I3/finite-hecke`, `C4/level-invariance`, `C4/proved-slopes`, `F5/analytic-hecke`, `E6/eigenvariety`, `X8/klingen-complex`.

### R9. DeformationAndDerivedPatchingAlgebra:P7

Derived completion, hyper-Tor, residue-field perfectness and fiber-amplitude criteria; compatible minimal finite group-ring complexes and continuous derived group cohomology; completed continuous functions/measures duality extended to bounded admissible complexes, with base-change/limit hypotheses. Retain nonzero Tor terms and allow finite p-group levels without averaging. BP-Hida §§2.6, 5.2–5.4, pp. 21–23, 54–57.

Used by `D1/discrete-base-change`, `D1/ordinary-perfectness`, `D1/supported-cousin`, `H2/fixed-perfect`, `I3/universal-complex`, `I3/admissibility`, `I3/iwasawa-complex`, `I3/derived-control`, `I3/finite-hecke`, `F5/tor-specialization`, `F5/automorphic-bgg`, `B7/family-comparison`, `X8/klingen-complex`, `X8/klingen-control`.

### R10. HodgeTateAndCanonicalSubgroups:T5

Part II: polarized full Siegel ordinary Igusa towers for every genus and cofinal decomposable P′ levels, cyclotomic semidirect action, de Rham torsor reduction, and partial toroidal quotient compatibility. Include the Klingen height-one multiplicative tower on p-rank≥1, with affine étale nonfinite transitions and its Z_p× Igusa torsor. The current Hilbert Igusa target does not imply these generalizations. BP-Hida §§3.2–3.4, pp. 34–41; Pilloni-Singular §9, pp. 54–57.

Used by `H2/ordinary-strata`, `H2/stratum-dynamics`, `I3/finite-torus-level`, `I3/derived-control`, `B7/family-comparison`, `X8/klingen-complex`.

### R11. OverconvergentAutomorphicForms:O0

Part II: general split-Levi analytic induction at a projective Banach radius, its compact-radius distribution dual, functorial algebraic/finite-character maps, and the locally analytic BGG resolution with its locally constant factor and finite-slope algebraic comparison. This generic representation theory stays with the coefficient owner. BP-Coleman §6.2, pp. 147–153.

Used by `F5/analytic-sheaves`, `F5/algebraic-maps`, `F5/automorphic-bgg`.

### R12. OverconvergentAutomorphicForms:O1

Descent of analytic/distribution coefficients along reduced de Rham torsors, with locally projective Banach presentations, completed tensor functoriality and coefficient pairing. The automorphic support construction and normalized Hecke action are owned here.

Used by `F5/analytic-sheaves`.

### R13. PELModuli:M2

The good hyperspecial Siegel moduli algebraic space and universal polarized abelian scheme with neat rigidifying tame level; C5 supplies quasi-projectivity and the integral compactified realization. No arbitrary p-level smoothness is assumed.

Used by `H2/ordinary-strata`.

### R14. PadicFamilies:L0

Ordinary modular-curve degree-zero cusp modules and their arithmetic control, with the geometric/q-expansion U normalization and finite-character level recorded; this existing theory is imported in X8, never reproved.

Used by `X8/modular-check`.

### R15. PadicFamilies:L0a

The finite/profinite Fitting ordinary projector and its exactness on the specified complete finite-quotient systems. For Klingen use the locally finite complex variant after proving mod-p local finiteness, not a projector assumed as input.

Used by `X8/modular-check`, `X8/klingen-complex`.

### R16. PadicFamilies:L2a

Part II: the complex cohomology version of eigenvariety gluing. From bounded property-(Pr) complexes and compact homotopy actions, take coherent cohomology support by its annihilator, finite Hecke-image algebras on finite (possibly nonprojective) cohomology modules, flat restriction/gluing, locally quasi-finite partially proper weight maps, and maximal-dimensional support for a nonzero weight-torsion-free interior sheaf. Preserve nilpotents. Existing complex-spectral nodes are used where exact; finite-projective module Hecke charts alone do not supply this contract. Source BP-Coleman §§6.1, 6.9, pp. 142–147, 168–172.

Used by `E6/eigenvariety`, `E6/interior-equidimension`.

### R17. PadicMeasuresIwasawaAlgebras:L0a

Rigid continuous-character weight spaces of the compact quotient torus, their universal characters and affinoid restriction, with inversion and finite-order components.

Used by `E6/eigenvariety`.

### R18. PadicMeasuresIwasawaAlgebras:L1

Completed torus group algebras as integral continuous measures, their continuous function duality, base change and finite-level augmentation. Use O[[T]][1/p] for bounded rational measures, not lim_U Q_p[T/U]. The admissible-complex extension is requested from P7.

Used by `I3/admissibility`, `I3/iwasawa-complex`, `X8/klingen-complex`.

### R19. PerfectoidShimuraVarieties:S4

Part II: the general abelian-type minimal perfectoid tower and affinoid neighborhood basis above classical flag points, compatible with Hodge–Tate maps and descent from Hodge type. BP-Coleman Theorem 4.5.2, p. 88; the S3 Hodge-type affinoid-basis claim alone is insufficient.

Used by `C4/finite-level-geometry`.

### R20. ShimuraCompactifications:C3

Part II: toroidal refinement/cohomology independence and general abelian-type subcanonical acyclicity R^iπ_*Vκ(−nD)=0 for i>0 and n≥1, with the precise minimal compactification and coefficient hypotheses. Supply the integral locally trivialized form required for analytic projective Banach coefficients, including bounded-torsion reductions. BP-Coleman Theorem 4.1.7, pp. 51–53, and Lemma 6.6.2, pp. 162–163.

Used by `C4/finite-level-geometry`, `C4/geometric-vanishing`, `F5/family-vanishing-duality`.

### R21. ShimuraCompactifications:C5

Part II: normalized integral Siegel higher-level models, polarized degree ideals and their separated blow-ups, partial toroidal Igusa quotients and boundary extensions, including non-smooth normalizations. Supply subcanonical higher-direct-image vanishing and affine minimal ordinary/p-rank-at-least-one covers for the Klingen two-term resolution. BP-Hida §§3.3–4.1, pp. 36–43; Pilloni-Singular §§9, 11.3, 14.8, pp. 54–57, 71–72, 100–102.

Used by `H2/ordinary-strata`, `H2/stratum-dynamics`, `I3/integral-amplitudes`, `B7/integral-overconvergent`, `B7/family-comparison`, `X8/klingen-complex`, `X8/klingen-control`.

### R22. ShimuraData:D3

The compact-dual flag variety and parabolic attached to the datum; import its based root datum and minimal left Weyl representatives from the existing reductive-group interface. Supply the split C2 and A_n coordinate identifications used by the Checks. Do not plan root systems a second time.

Used by `A0/weight-dictionary`, `A0/slope-conditions`, `C4/bruhat-cousin`, `E6/interior-sharp-bounds`, `X8/c2-weight-table`, `X8/unitary-check`.

### R23. SolidAnalyticRings:SA.2

Analytic/solid derived tensor and localization for (A[T],A)_square→A[T,T⁻¹]_square, topological-nilpotent annihilation, idempotent algebras for formal completion and their localization triangles. Ordinary algebraic localization does not supply the nilpotent-slope assertion. BP-Hida §§2.2–2.4, 2.9, pp. 11–19, 27–29.

Used by `D1/ordinary-localization`, `D1/supported-cousin`.

### R24. SolidAnalyticRings:SA.3

Discrete-adic Huber-pair/solid structure and the bridge from the source condensed formalism to the selected light/solid universe on the countable towers used here. This universe comparison must be proved, not identified by terminology. BP-Hida §§2.2–2.3, pp. 11–18.

Used by `D1/dynamic-compactification`, `D1/ordinary-localization`, `B7/integral-overconvergent`.

The packet also records seven rescoping proposals: PadicFamilies L2a, ShimuraCompactifications C3/C5, HodgeTateAndCanonicalSubgroups T5, PerfectoidShimuraVarieties S4, OverconvergentAutomorphicForms O0/O1, AdicSpacesPartII R3/F1 and AnalyticStacks AS.3 receive the generic additions described above. The higher supported automorphic applications retain their current layer assignments here. There is no proposed duplication of a current Tau Ceti roadmap.

## Mathematical gaps and closure conditions

### G1. Integral higher Hida theory outside the Siegel case

The general abelian-type Coleman datum is supported by BP-Coleman. BP-Hida constructs integral higher Hida theory for GSp_(2g); a general Hodge/PEL extension requires integral Igusa strata, a trace-integral normalized coefficient map, strict dynamics and a compatible de Rham reduction. Those statements are not supplied for general unitary/Hodge data by the sources read. Do not infer them from the general rational Coleman theorem.

Affected targets: `H2/fixed-complex`, `I3/derived-control`, `X8/unitary-check`.

### G2. Sharp integral amplitude in genus at least three

BP-Hida Conjecture 5.6.1, p. 58 is proved integrally only in genera one and two by Proposition 5.6.3. Corollary 6.2.17 proves the all-genus rational form. Establish the integral residual-fiber degree bounds before upgrading I3 in higher genus.

Affected targets: `I3/integral-amplitudes`, `B7/rational-amplitudes`.

### G3. Sharp slopes on full general noncompact cohomology

BP-Coleman Conjectures 5.9.2 and 6.8.1 remain conjectural for full general noncompact datum. This plan uses the two proved bounds, the sharp interior theorem, or the Siegel integral comparison. Do not replace strongly small by small throughout C4/F5 outside those cases.

Affected targets: `C4/proved-slopes`, `F5/analytic-control`, `E6/interior-sharp-bounds`.

### G4. Reconcile the printed coefficient strongly-small formulas

The nonidentity analytic BGG terms with twist −ν_v give explicit proved bounds a_an−ν_v and a_an+w⁻¹2ρ_nc−ν_v. Identification of their exclusions with the differently written Definition 5.11.14 must be checked. The targets use the sufficient BGGsafe condition derived from Theorems 6.5.5 and 6.8.3, so that identification is not an assumption.

Affected targets: `F5/bgg-exclusion`, `F5/analytic-control`, `E6/classical-points`.

### G5. Family Iwasawa character notation

Remark 5.4.3 specializes at −ν while §6.2 writes the analytic-weight comparison with a universal ν_A and an unlabelled Λ→A map. B7 states the inverse-character pullback explicitly. Verify this convention in the chosen formal regular-representation action and both coefficient sheaves before identifying their full family maps. Arithmetic fibers alone are not a proof of equality of family morphisms.

Affected targets: `B7/family-comparison`.

### G6. Klingen weight-large starting comparison and full-torus boundary

For the all-k rational Klingen comparison, Pilloni Lemma 14.8.3, p. 102, starts at large k using Corollary 14.9.1, pp. 102–103, and Proposition 5.1.5.2/Lemma 5.1.5.2, p. 22. The latter lemma assumes four distinct pair-products, whereas the Satake valuation pattern alone does not guarantee distinctness of the two products of valuation k+1. Before closure, supply a level-comparison lemma for the unique ordinary refinement allowing repeated nonordinary eigenvalues, or prove the needed extension from the distinct-eigenvalue locus. The integral lattice input uses the inverse-different twist I^(−3), codimension-two restriction injective in H^1 and bijective in H^0, and the ordinary-point trace divisibilities of §14.9, pp. 103–106; these cannot be replaced by an unmodified lattice. The Satake product labelling also needs the correction E9. No comparison with a sum of full-torus M_w is stated by the supplied results; one needs a separate partial-ordinary/Hecke-localized comparison if a consumer requests it.

Affected targets: `X8/klingen-control`, `X8/consumer-contract`.

### G7. Solid universe and larger-base comparison

The existing condensed module and derived-category declarations do not supply analytic solid localization or six functors. The SA.3/AS.3 requests must identify the source universe with the selected formal one for these countable towers. General noetherian-base statements beyond the finite-type-over-Z import require a separate extension; D1 is scoped accordingly.

Affected targets: `D1/ordinary-localization`, `D1/discrete-base-change`.

### G8. Topological Serre duality derived-shift convention

In BP-Coleman Proposition 2.7.3 the displayed derived formula has an additional shift on an expression already written as supported RΓ; its following cohomology statement also uses Ω^1 instead of Ω^d. This plan requests the unambiguous degree-zero/top-degree pairing and finite-slope consequences, not that literal shifted formula. A supplier must state and verify its own derived convention.

Affected targets: `C4/geometric-duality`, `F5/family-vanishing-duality`.

## Source findings for independent verification

These findings concern the exact author editions identified above. They are not claims about an unread journal typesetting, and novelty is not asserted. Search of the author listings, the original/revised Coleman files and title-plus-erratum results did not identify a correction. The main statements either use the unambiguous corrected notation or explicitly avoid dependence on the disputed identification.

### E1 — misprint

**BP-Hida**, Introduction §1.1, p. 2, author edition.

Observed assertion, paraphrased: The symbol M_µ is described as the unipotent radical.

Correction or missing check: M_µ is the Levi; the unipotent radical has its separate U notation.

Reason: The representation and character lattices and the explicit setup in §3.1 require a reductive Levi. Reach: nothing.

### E2 — misprint

**BP-Hida**, Proposition 4.3.17, p. 49, author edition.

Observed assertion, paraphrased: The finite-character statement prints a garbled normalized algebraic-weight expression.

Correction or missing check: Use ν=−w⁻¹w0M(κ+ρ)−ρ and retain χ separately.

Reason: Proposition 4.3.9 and the next normalized-operator display fix the root/trace character. Reach: nothing.

### E3 — gap

**BP-Coleman**, Definition 5.11.14, p. 134 and Corollary 6.8.4, p. 168, revised author edition.

Observed assertion, paraphrased: The coefficient strongly-small inequalities include a doubled 2ρ_nc term and inconsistent shifted-weight appearances; the corollary identifies these with BGG exclusion without a calculation.

Correction or missing check: Reconcile the printed condition with Theorems 6.5.5 and 6.8.3. Meanwhile use BGGsafe, explicitly the failure of one necessary bound for each nonidentity BGG term.

Reason: Substitution of the BGG twist −ν_v into the two analytic lower bounds gives the two expressions in F5/bgg-exclusion; it does not directly give the printed pair. Reach: the proof.

### E4 — misprint

**BP-Coleman**, Theorem 6.4.3 proof, p. 157, revised author edition.

Observed assertion, paraphrased: One lemma citation for compactness is unresolved.

Correction or missing check: Supply the root-coordinate contraction from Lemma 3.5.11, the coefficient map of Lemma 6.3.10 and the compact supported-cover argument of Theorem 5.4.3.

Reason: The proof needs both geometric radius improvement and the coefficient action; the unnamed reference alone supplies neither. Reach: the proof.

### E5 — misprint

**BP-Coleman**, Definition 6.4.7, p. 158, revised author edition.

Observed assertion, paraphrased: The first negative-support inclusion uses the coefficient radius n where the geometric second depth l occurs in its positive counterpart.

Correction or missing check: Use B(m+s,l) in that geometric inclusion, retaining B(n,n) as the independent coefficient-domain condition.

Reason: The algebraic negative definition 5.4.10 and all the remaining bounds use the freely chosen depth l; n already has a different fixed role. Reach: nothing.

### E6 — misprint

**BP-Coleman**, Theorem 6.10.2(1), p. 173, revised author edition.

Observed assertion, paraphrased: The theorem header uses the strongly-small subspace, while its proof proves the small subspace.

Correction or missing check: The stronger result with the geometric small condition is justified by Theorem 6.10.1(2) and Corollary 5.8.1.

Reason: The proof explicitly removes the wrong interior Cousin degrees using the sharp bounds; the introduction also advertises that improvement. Reach: nothing.

### E7 — gap

**BP-Coleman**, Proposition 2.7.3, p. 32, revised author edition.

Observed assertion, paraphrased: A displayed supported derived cohomology expression receives an extra shift, and subsequent top-degree duality expressions use Ω^1.

Correction or missing check: Use Ω^d in the degree-d support pairing and reconcile whether the shifted expression denotes the complex or its sole cohomology group.

Reason: Topological Serre duality pairs H^0 with H_c^d; blindly shifting a complex already concentrated in degree d changes that degree. Reach: the proof.

### E8 — gap

**BP-Hida**, Remark 5.4.3, p. 57 versus Propositions 6.2.13 and Theorem 6.2.15, pp. 63–64, author edition.

Observed assertion, paraphrased: The former labels arithmetic specialization by the inverse character, while the family comparison uses an unlabelled base-change map attached to ν_A.

Correction or missing check: Label the Λ→A map explicitly, inserting inversion on analytic weight space when the I3 regular-action convention is used.

Reason: Specializing a group element at u^k versus u^(−k) produces different characters; a shared symbol A cannot determine this convention. Reach: the proof.

### E9 — misprint

**Pilloni-Singular**, §5.1.5, pp. 21–22, author edition, paragraph before Proposition 5.1.5.2.

Observed assertion, paraphrased: The Klingen paragraph imposes equality of the first adjacent product and the last adjacent product, while retaining the spherical eigenvalue labels.

Correction or missing check: Use αδ=βγ, consistently with the spherical ordering on p. 21 and the stated Weyl-orbit eigenvalues.

Reason: The diagonal similitude pairing equates the outer-coordinate product with the middle-coordinate product. The printed alternative would also make the four-distinct-product assumption in Lemma 5.1.5.2 impossible. G6 separately records the unproved extension when only nonordinary products coincide. Reach: the proof.

## Acceptance and formalisation boundary

A completed implementation must recover both modular-curve degrees, all four Siegel chambers and their Serre partners, the singular Klingen amplitude with the restricted torsion range, and all n+1 split-unitary strata. It must pass the scalar normalization, weight inversion, nonflat Tor and noncommuting-image-base-change tests above. The family eigenvariety must retain a Hecke eigenpacket occurring only in positive cohomological degree. Its interior dimension theorem must not be silently applied to the entire cohomological support.

The submitted Lean companion elaborates the scalar normalization and C2 coordinate prototypes on existing carriers; the only warnings are the expected admitted-proof warnings. It is not a formalisation of any supported complex or eigenvariety. The definitive targets and every heavy object’s API and tests remain in this document. Every packet implementation status is unchecked. The packet checker validates its schema and graph references; mathematical correctness and the nine source findings require the independent review prescribed by the worker protocol.

The pass leaves A0, D1, H2, I3, C4, F5, E6, B7 and X8 planned. Closure requires the 24 supplier contracts and the eight precise gaps to be discharged or respecified with mathematical evidence; the coverage records list each layer’s direct obligations. Potential modularity of abelian surfaces and Siegel modular-form lifting consume the explicit output contract in X8 and are outside this roadmap and the Caraiani–Newton order.
