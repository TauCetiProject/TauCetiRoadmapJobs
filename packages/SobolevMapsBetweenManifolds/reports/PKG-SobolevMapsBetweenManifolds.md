# Package report: SobolevMapsBetweenManifolds

The package expands the accepted eight-layer design without changing its direction or target
numbering. It retains all 29 targets, all 104 design Checks, every layer example and all three
worked examples. There is one additional negative-control Check, for extended Jacobian
variation bounds, giving 105 Check bullets in total. The skeleton was generated from `design/plan.json` before prose was written;
the accepted design supplied the prose baseline. `design/plan.json` is unchanged, including its
empty gaps list. No new supplier gap is needed.

## Headline theorems listed before the Lean file

All seven mathematical headlines are statable at the pins. The list was written before the
signatures; the following table gives the final declarations. Each is a theorem with `sorry`.
The five definitions are compact-local Lp membership, Euclidean local Sobolev membership,
vector-valued chart membership, continuous manifold-valued chart membership, and the genuine
weak derivative relation in charts. They have real bodies on native carriers. There is no data
construction admitted with `sorry`, no free predicate standing for missing mathematics, and no
boundary-case theorem or API catalogue in the acceptance file.

| Headline | Status and Lean declaration |
|---|---|
| T1: arbitrary open-cover locality | stated: `memW1pLoc_iUnion` |
| T1: local-diffeomorphism chain rule | stated: `precomp_localDiffeomorph` |
| T1: bounded-derivative chain rule without continuity | stated: `postcomp_boundedDerivative` |
| T1: local C¹ chain rule for continuous maps | stated: `postcomp_continuous` |
| T2: chartwise nullity equals Riemannian nullity | stated: `isNullSet_iff_riemannianVolume_eq_zero` |
| T2: independence of covering atlases | stated: `memManifoldW1pLoc_iff_atlases` |
| T2: existence and null-set uniqueness of a weak differential | stated: `exists_hasWeakMDeriv` |
| T2: classical compatibility | stated: `contMDiff_memManifoldW1pLoc` |
| T3: local operator-norm criterion | stated: `memManifoldW1pLoc_iff_norm` |
| T4: oriented Jacobian characterization, Hadamard and positive-dimensional integrability | stated: `jacobian_hadamard_integrability` |
| T4: Jacobian density change of variables for open embeddings | stated: `jacobian_changeOfVariables` |
| T5: immersion comparison and weak chain rule | stated: `immersion_comparison` |
| T5: isometric immersion norm identity | stated: `isometric_immersion_norm` |
| T6: Euclidean class and weak-differential compatibility | stated: `euclidean_compatibility` |
| T7: independence of embedding for compact boundaryless targets | stated: `embedding_independence` |

No headline is unstatable. Pointwise linear algebra in T4 applies also in dimension zero;
its quotient-exponent assertion is stated for positive dimension, with the zero-dimensional
Lp∞ fact retained in the README. T4's change-of-variables signature uses the absolute density;
the README gives the positive/negative measures and both orientation cases. The signatures
quantify over actual weak differential fields rather than constructing a total choice. T5's
norm identity for the transported field is pointwise linear algebra; the equality between
independently chosen differentials is almost everywhere.

## Corrections to the design wording

1. Applied the accepted review's Lindelöf note to every identity involving a chosen total
   differential, explicitly in §§4.1, 4.4–4.6 and 8.2 and globally in Conventions. In source
   precomposition both sources must be Lindelöf. Membership and transport of supplied fields
   retain their countability-free statements. Open submanifolds of a Lindelöf finite-dimensional
   manifold are Lindelöf: countably many second-countable chart sources give a countable base.
2. Fixed the conflicting totality conventions. The choice is zero when no weak differential
   exists, independently of p. It cannot be zero whenever p-membership fails: the square-root
   example has a weak differential at p = 1 and fails at p = 2. The vector-valued choice is
   likewise defined by existence, not by membership at a chosen exponent.
3. In §1.2, log norm is locally Lp for every finite p, and fails local Lp∞ at the origin.
   Its weak derivative still has the claimed threshold p < 2. In §1.1 the identity's failure
   of global Lp is qualified by 1 ≤ p: at the native p = 0 its seminorm is zero.
4. The Cantor-function argument uses integrability on the compact interval [0,1] supplied by
   membership on all of ℝ. Membership only locally on (0,1) would not itself supply that
   endpoint bound. The interior [1/4,3/4] negative control remains.
5. Restored the sign in the derivative of the exotic-chart representative:
   D(|y|^(1/3)) = sign(y)|y|^(−2/3)/3. Its integrability threshold remains p < 3/2.
6. Made p/n an explicitly positive-dimensional assertion; in dimension zero the Jacobian has
   absolute value one and belongs locally to Lp∞. Identity and local-isometry norms are zero
   in dimension zero, while their orientation-preserving Jacobian is one.
7. In the bump example of §6.3 the divergent quantity is the positive Jacobian integral, hence
   also its absolute integral. A signed integral need not exist. Specified k ≥ 1, a smooth
   cut-off, and centres (4·2^(−k),0), which really give disjoint discs accumulating at zero.
8. The measures in §6.4 have ENNReal densities. Their signed difference is defined on relatively
   compact Borel sets as a locally finite signed measure, without asserting global finiteness
   or subtracting two infinite values on arbitrary sets.
9. Added λ ≥ 0 to the conformal equality written with λ^n and c > 0 to positive metric
   rescaling. Restricted the displayed complex power formula to k ≥ 1 and computed the constant
   k = 0 case separately. Inversion is displayed in positive dimension.
10. Defined the sphere-valued singular examples at the origin by a fixed sphere point. Replaced
    sign at zero in the S⁰-valued example by the actual map taking +1 for x₁ ≥ 0 and −1 otherwise;
    native sign(0) = 0 does not belong to S⁰.
11. A chosen weak differential has an operator norm equal almost everywhere to the classical
    continuous norm; its arbitrary null-set values need not be continuous. Corrected Layer 5's
    example accordingly. Qualified the Whitney example by compact Hausdorff smooth N.
12. The density statement assigned to Part II has compact smooth source and closed target and
    finite exponent dim M < p < ∞, or p = dim M ≥ 1. Strong W1∞ density of smooth maps is not
    asserted. The cited chapter only uses finite exponents. A closed target explicitly means
    compact without boundary, not merely an embedding with closed image.
13. In §7.1, separated the normed-space membership/differential identities from the flat
    inner-product-space metric, measure and determinant identities. This matches the actual
    generality of the acceptance signature without changing the end theorem.
14. Supplied the native source-restricted extended-chart measurable embedding in §3.1, including
    boundary models. An open embedding into the ambient model space would not suffice there:
    a boundary chart target need not be open in that space.
15. The measurable extrinsic interpretation in §8.3 is qualified by an embedding; for arbitrary
    ι the definition only tests the composite. Compact embedded targets give a.e. measurability
    of the manifold-valued map using the inverse on the compact image.

16. The total-variation bound in §6.4 uses an extended nonnegative integral, not a real
    Bochner integral that becomes zero for nonintegrable data. For f(x,y) = (√|x|,y) on
    [−1,1]² the left side is 4 and the right side is infinity; a real integral would
    produce the false inequality 4 ≤ 0. Added a convention and a negative-control Check.

The three design Checks that were not separate bullets in the design prose (empty Lp set,
empty Sobolev domain, identity manifold map) are explicit bullets. The two final Checks of
§4.3 are separate bullets. No design Check or example was cut.

## Scope, ownership and duplication sweep

Main was read at `4ec889e8f0480e2cdb21a524eb76e48215c9ad94`. Mathlib and Tau Ceti checkouts
were verified at `1b1ccf4b088b32fa3f23f2de1127433254a81e1e` and
`2fd255d997f47c0b5d834ee416c7015d55444ce5`, matching the manifest. Three style examples read
before writing were PDE, PseudoholomorphicCurveAnalysis and RiemannianGeometry. The source
sweep searched by local Lp, weak derivative, local Sobolev map, chart nullity, Riemannian
volume, operator norm, oriented determinant, immersion retraction and ambient extension,
not only the proposed declaration names. It used `roadmaps grep` across main and open heads,
read the matching owners with `roadmaps show`, and searched the board's packages and both pins.

| Object | Single owner and exact boundary |
|---|---|
| Weak Fréchet derivatives, global scalar W1p, mollification and weak limits | Tau Ceti's WeakDeriv, W1p and Mollification modules; the package introduces none of these carriers or their native elementary lemmas. |
| Planar higher-order local spaces and half-discs | PseudoholomorphicCurveAnalysis PH1.1; §§1.1–1.2 here extend compact-local membership to arbitrary finite-dimensional models and first order. No planar-specific carrier is added. |
| Planar composition in the Morrey range | PseudoholomorphicCurveAnalysis PH1.2; §§2.2–2.4 here cover all 1 ≤ p ≤ ∞, arbitrary dimensions, local diffeomorphisms without injectivity and continuous local postcomposition. |
| Surface-to-manifold classes with kp > 2 | PseudoholomorphicCurveAnalysis PH4.1; §4.2 here has arbitrary source dimension, k = 1 and no Morrey threshold. |
| Scalar domain Sobolev spaces | PDE Layer 1; native Tau Ceti W1p is consumed, not reconstructed. |
| All-order scalar local spaces | GeometricCurrents G6, its interior regularity paragraph defining W^(j,p)_loc by restrictions; §1.4 is a comparison at j = 1, not another scalar tower. |
| Global scalar precomposition bounds | SobolevPolynomialApproximation §2.1; no global bounded operator or higher-order chain rule here. |
| Global form pullback | SobolevDifferentialForms §4.1 at its open head; no weak exterior derivative, form carrier or bi-Lipschitz form theorem here. |
| Compact bundle Sobolev spaces | PseudodifferentialOperators §5.2 and ComplexKahlerGeometry K5a; local functions/maps here have no global normed completion. |
| Smooth-metric nullity comparison | RiemannianGeometry R4.6 on main; §3.1 here is the continuous-metric C¹ statement, with boundary models allowed. R4.6 is used only for an agreement Check. |
| Orientations, Riemannian volume and volume forms | DifferentialGeometry §§2.1–2.2, 12.1, 12.4, through their pinned native declarations. |
| Equal-model null-image theorem and unsigned determinant | Mathlib Function/Jacobian and InnerProductSpace/NormDet; no second construction of either. §2.1 combines the image theorems across model spaces and adds preimages under local inverses. |
| Larger-dimensional null images | Tau Ceti Calculus/Sard/LowDimension; this result is imported. |
| Retractions of embedded manifolds and ambient extensions | Tau Ceti SmoothEmbedding/Extension; §8.1's retained variant only requires an immersion on a source patch, allowing self-intersections. |
| General area/coarea formula | GeometricMeasureTheory G2; §6.4 owns only the C¹ open-embedding Jacobian-density comparison. |
| Weak Wirtinger derivatives and quasiconformal maps | TeichmullerGeometry §7.4; none is a target here. |
| Quasiregular maps and locally Lipschitz members | QuasiregularMaps §§2.1, 2.8 and its six supplier contracts; it consumes this package, never supplies it. Its head expressly assigns these Sobolev objects here. |

Duplication removals: no accepted target was an exact duplicate requiring deletion. The
following potential duplicate declarations are absent from the package: a weak-derivative
carrier and its linearity/uniqueness lemmas, W1p and its scalar global composition maps,
chartwise null sets, Riemannian volume, orientations and volume forms, unsigned norm determinant,
the equal-model and dimension-increasing null-image lemmas, the embedding retraction theorem,
the compact ambient extension theorem, Whitney's embedding, planar higher-order spaces,
global scalar/form precomposition operators, compact-bundle Sobolev completions and area/coarea.
Their exact suppliers are the table and README contracts. Definition-file locators in the
README also distinguish MemLp/eLpNorm from Basic, measure restriction from LpSeminorm,
ContMDiff from MFDeriv, and linear determinant from norm determinant. The retained variants are described
there explicitly; no own declaration has another readable roadmap's fully qualified name.

The closest-head checks in the overlap file were verified against DifferentialGeometry,
SobolevDifferentialForms, ComplexKahlerGeometry and SmoothBundlesConnections. Smooth density
measures in SmoothBundlesConnections are not Sobolev map classes. ComplexKahlerGeometry's
bundle completions are global compact-base carriers. The other matching map-space roadmaps
use the PH classes for their analytic Banach-manifold constructions. There is no object with
two owners or mutual delegation. No moved notion from a later roadmap was needed. No supplier
is a forbidden roadmap. No cited identifier was renumbered or dropped. Only an open revision
defines: none. No conflicting open revision changes this package's roadmap. The live overlap command
reports that this candidate is not on main or an open roadmap pull request; the supplied
overlap file and direct reads of the named closest heads were used for the candidate. The open-head
ownership sweep was performed; it is not left unchecked.

## Sources and pinned contracts

The three certified cached texts were read at every cited range:

| Work | Exact locators read | What they support |
|---|---|---|
| HeikkilaPankka2025 | line 20–27, p. 1, Introduction; line 1328–1329, Appendix B, proof of Proposition B.1 | The motivating continuous class, weak differential norm and Jacobian; embedding description in the smooth compact setting. The C¹/local/endpoint generalizations are the package's own theorems. |
| Hajlasz2009 | line 20–28, pp. 185–186; line 37–53, p. 186; line 102–107, p. 187; line 129–141, p. 188 | The extrinsic class and closed-target convention; variational context; compact metric comparability; finite-exponent density context assigned to Part II. |
| MartioRickmanVaisala1969 | line 118–127, p. 6; line 332–340, Definition 2.16 | Classical derivative/Jacobian and ACL conventions, for compatibility; no ACL characterization is claimed here. |

Ziemer1989 Chapter 2 §2.1, Theorems 2.1.11 and 2.2.2; Mazya2011 §1.1;
Rickman1993 Chapter I §1; Lee2012 Chapters 4, 6, 15 and 16; Bethuel1991 Introduction
remain settled as uncertified and are cited by locator only. Their contents were not guessed
or requested again. No new source was needed and no missing-reference request is outstanding.
The manifest retains one key per work and its recorded provenance; version notes now explain
the certified chapter's scope and the composition-order misprint. All claims are written in
our own words. The source's misprint is in HeikkilaPankka2025 line 1328: its written composite
has the wrong order; the correct types require the embedding after the map.

The native definitions were opened, not just matched by name. In particular:

| Pinned declaration/file | Native content and limitation used |
|---|---|
| `Mathlib/MeasureTheory/Function/LpSeminorm/Defs.lean:92,154` | eLpNorm records failure of a.e. strong measurability as infinity; MemLp is the strict finite-seminorm predicate. The p = 0 measurable identity has seminorm zero. |
| `Mathlib/MeasureTheory/Function/LocallyIntegrable.lean:188` | The compact-subset characterization assumes locally compact X, a locally closed set and pseudometrizable codomain. A normed codomain provides the last condition. |
| `TauCeti/Analysis/Sobolev/WeakDeriv/Basic.lean:212,251` | HasWeakLineDerivOn includes completeness and local integrability of value and derivative, plus integration by parts; HasWeakFDerivOn requires it in every direction. It supplies no Lp bound, continuity or Haar hypothesis. The new membership predicate explicitly requires Haar measure. |
| `TauCeti/Analysis/Sobolev/WeakDeriv/Basic.lean:657,747,893` | Basiswise construction; classical-to-weak derivative with local integrability; a.e. agreement with classical derivative. C¹ supplies the required local bounds. |
| `TauCeti/Analysis/Sobolev/WeakDeriv/Interval.lean:302` | Absolute continuity also needs integrability on the entire interval, a continuous representative on its closed endpoints and a.e. equality. |
| `TauCeti/Analysis/Sobolev/WeakDeriv/MeasurePreserving.lean:130` | The supplied chain rule assumes measure preservation and local Lipschitzness; it is used only after the stated linear/Haar reduction. |
| `TauCeti/Analysis/Sobolev/W1p/ChangeOfVariables.lean:302,316` | Value and gradient formulas use finite p, injectivity and the stated differential/determinant bounds from that file's context; the package localizes at p = 1 before recovering every exponent. |
| `TauCeti/Analysis/Sobolev/W1p/ChainRule.lean:375` | Scalar bounded-derivative chain rule requires p ≠ ∞. Vector-valued and endpoint statements are proved through local finite-exponent approximation. |
| `TauCeti/Geometry/Manifold/Measure.lean:36,72` | Chartwise nullity quantifies over every Haar measure and preferred chart; countable unions, not arbitrary unions, are supplied. No measurable structure on M is part of the definition. |
| `TauCeti/Geometry/Manifold/ExtChartAt.lean:374` | Source-restricted charts are measurable embeddings, including boundary models; used for outer-measure statements on arbitrary subsets. |
| `TauCeti/Geometry/Manifold/Riemannian/VolumeDensity/Basic.lean:48,61` and `Measure.lean:113` | Positive chart Gram density and its weighted-Haar comap; density positivity is used only on the chart source. |
| `TauCeti/Geometry/Manifold/Riemannian/VolumeDensity/Volume.lean:82,87,112,179` | Glued volume needs Lindelöf source and Borel structure; chart restriction, coordinate integration and local finiteness are native. No separation axiom or boundarylessness is a hidden assumption. |
| `Mathlib/Topology/VectorBundle/Riemannian.lean:420` | RiemannianBundle installs fibre inner products with the original topology; continuity is a separate class, carried explicitly where needed. |
| `TauCeti/Geometry/Manifold/Riemannian/WithMetric.lean:68` | The copy takes a bundled C^n metric; use n = 0 for continuous metrics on a C¹ manifold. |
| `TauCeti/Geometry/Manifold/Orientation/Preserving.lean:63` | Orientation preservation includes an invertible differential carrying the orientations; positivity is not inferred merely from a possibly singular orientation label. |
| `Mathlib/Analysis/InnerProductSpace/Orientation.lean:148,170,198,223,245,286,290` | Oriented forms, basis values, reversal and vector Hadamard; the oriented orthonormal basis constructor requires positive dimension. |
| `Mathlib/Analysis/InnerProductSpace/NormDet.lean:69,374,389` | Unsigned determinant is defined via an orthonormal basis of the range; at zero source dimension it is one, and in equal-dimensional real endomorphisms it is absolute determinant. |
| `TauCeti/Geometry/Manifold/Riemannian/VolumeForm.lean:55` | Fibrewise oriented volume form, with tangent dimension supplied by the manifold orientation. |
| `TauCeti/Geometry/Manifold/Immersion/Differential.lean:257` | The C^k open-domain immersion criterion requires k ≥ 1 and finite-dimensional target model. |
| `TauCeti/Geometry/Manifold/SmoothEmbedding/Extension.lean:64,201` | Retractions use embedding globally; the retained patch variant drops that global conclusion. Compact extension needs a smooth Hausdorff sigma-compact ambient manifold, met by the finite-dimensional vector-space ambient with n = 1. |
| `Mathlib/Geometry/Manifold/WhitneyEmbedding.lean:132` | Compact Hausdorff smooth manifolds embed into some Euclidean space with injective differential; it is not asserted for arbitrary C¹ N by this citation. |

The pinned defining formula at WeakDeriv/Basic:251 is
`HasWeakFDerivOn μ Ω u U = (∀ v, HasWeakLineDerivOn μ Ω u (fun x => U x v) v)`.
In particular, it does not assert continuity, a local Lp bound or that μ is Haar.

The other native supplier names were located in their stated modules at these same pins.
Generated additive names and names inside namespaces were followed to their actual declarations,
including Haar uniqueness (Haar/Unique:919), source-chart comap (Measure/Restrict:877),
open-embedding measurability (BorelSpace/Basic:687), model orientation (Orientation/Basic:235),
open restriction (Orientation/OpenSubset:49), and the inverse-function chart
(InverseFunctionTheorem/ContDiff:31). This source-level verification is necessary because the
citation tool reports that its own native-package lookup is unavailable on this host.

## Adversarial mathematics pass

Every design Check is recorded separately below. Formula values are recalculated; predicates
are recorded by the numerical threshold, integral, derivative or image that decides them.
Norms without an indicated Hilbert–Schmidt subscript are operator norms. All singular derivative
values are a.e. values. Changes mentioned here have been made in the README.

| Statement | Instances tried | Computed values | Result | Change or discriminant |
|---|---|---|---|---|
| §1.1 Check 1 | id on ℝ, p ≥ 1 and p = 0 | On [−R,R], integral = 2R^(p+1)/(p+1); on ℝ it diverges; essential supremum is ∞. At p = 0 the measurable Lp seminorm is 0. | Pass with stated hypotheses | global failure qualified by p ≥ 1 |
| §1.1 Check 2 | \|x\|^(−1/2) | Integral on [−1,1] = 4/(2−p) for p < 2, = 4 at p = 1, = ∞ at p = 2; away from 0 essential supremum ≤ dist(K,0)^(−1/2). | Pass with stated hypotheses | correct threshold, excludes missing derivative-independent bounds |
| §1.1 Check 3 | 1/x on (0,1) | Supremum on [a,b] = 1/a; integral on (0,1) = ∞. | Pass with stated hypotheses | compact rather than bounded subsets |
| §1.1 Check 4 | empty set | Only compact subset is ∅; restricted measure and Lp seminorm are 0. | Pass with stated hypotheses | separate empty-set Check retained |
| §1.1 Check 5 | plane against PH1.1 | For g(z) = \|z\| on the unit disc, integral = 2π/(p+2) and compact-local requirements are identical. | Pass with stated hypotheses | same planar specialization |
| §1.2 Check 1 | id in nonzero E | Du = id, norm = 1; on E the value is unbounded, and finite-p value integral is ∞. | Pass with stated hypotheses | local/global distinction |
| §1.2 Check 2 | log r in ℝ² | Value moment on unit disc = 2π∫₀∞ t^p e^(−2t)dt < ∞ for finite p; essential supremum = ∞; derivative moment = 2π/(2−p) for p < 2, ∞ at 2. | Pass with stated hypotheses | corrected finite-p value claim |
| §1.2 Check 3 | Heaviside | Distributional derivative pairs with φ as φ(0); candidate classical derivative 0 gives 0, while φ(0) = 1 is possible. | Pass with stated hypotheses | jump excluded |
| §1.2 Check 4 | Cantor function | Classical derivative = 0 a.e.; c(1/4) = 1/3 and c(3/4) = 2/3, so difference = 1/3 ≠ integral of derivative = 0. | Pass with stated hypotheses | compact-interval argument corrected |
| §1.2 Check 5 | empty Ω | All test integrals = 0; U = 0 has restricted seminorm 0. | Pass with stated hypotheses | separate empty-domain Check retained |
| §1.2 Check 6 | E = ℂ against PH1.1 | For u(z) = \|z\|, first derivative has norm 1 a.e.; both first-order conditions hold for every p ≥ 1. | Pass with stated hypotheses | same first-order specialization |
| §1.3 Check 1 | sign x₁ on two half-planes | Derivative = 0 on each; union misses x₁ = 0; global derivative pairs with a test as twice its trace on that line. | Pass with stated hypotheses | null-cover gluing excluded |
| §1.3 Check 2 | log r and the punctured-plane/unit-ball cover | Punctured part: bounded gradient on each compact; ball: derivative integral 2π/(2−p) or ∞. Both and the union have threshold p < 2. | Pass with stated hypotheses | both directions of gluing |
| §1.3 Check 3 | empty index type | Union = ∅; left membership holds and the right universal quantifier has no instances. | Pass with stated hypotheses | empty cover allowed |
| §1.4 Check 1 | x₁ on B(0,1/2) in ℝ² | Gradient = e₁, norm = 1; Du(v) = v₁; finite-p derivative moment = π/4. | Pass with stated hypotheses | scalar graph-space agreement |
| §1.4 Check 2 | log r at p = 2 on B(0,1/2) | Derivative moment = 2π∫₀^(1/2) dr/r = ∞. | Pass with stated hypotheses | both local formulations reject |
| §1.4 Check 3 | \|x\| at p = ∞ | On (−R,R), value supremum = R and derivative supremum = 1; on ℝ value supremum = ∞. | Pass with stated hypotheses | relative compactness needed |
| §2.1 Check 1 | projection ℝ² → ℝ | Area of ℝ×{0} = 0; image = ℝ has infinite length. | Pass with stated hypotheses | dimension inequality needed |
| §2.1 Check 2 | constant ℝ² map | Target singleton area = 0; its preimage is all ℝ² of infinite area; derivative = 0. | Pass with stated hypotheses | invertibility needed |
| §2.1 Check 3 | Cantor function on Cantor set | Domain measure = 0; image [0,1] has length 1. | Pass with stated hypotheses | differentiability on the set needed |
| §2.2 Check 1 | θ(y) = 2y, u = \|x\| | Du(2y)(2h) = 2⟨y,h⟩/\|y\| = D(2\|y\|)h. | Pass with stated hypotheses | correct chain direction |
| §2.2 Check 2 | θ(z) = z² on punctured ℂ | ⟨z²,2zh⟩/\|z\|⁴ = 2⟨z,h⟩/\|z\|² = D(2 log\|z\|)h. | Pass with stated hypotheses | non-injective local diffeomorphism included |
| §2.2 Check 3 | θ(y) = (y₁,0), u = log r | Original derivative moment at p = 1 is 2π; pullback derivative moment on [−1,1]² is 2∫₋₁¹ dt/\|t\| = ∞. | Pass with stated hypotheses | singular differential excluded |
| §2.2 Check 4 | θ(y) = y³+y, u = \|x\| | Derivative = (3y²+1)sign y; supremum on [−R,R] ≤ 3R²+1, global supremum = ∞. | Pass with stated hypotheses | no global bound inferred |
| §2.2 Check 5 | scalar W1p comparison, θ = 2 id | Dθ*∇u(2y) = 2∇u(2y), equal to the proposed operator on each direction. | Pass with stated hypotheses | global finite-p native hypotheses retained |
| §2.2 Check 6 | PH1.2 diffeomorphism, θ = 2 id on ℂ | Coordinate derivative = 2Du(2z); covering z² has two preimages, so lies outside the diffeomorphism subcase. | Pass with stated hypotheses | planar overlap distinguished |
| §2.3 Check 1 | scalar G = sin, finite p | D(G∘u) = cos(u)Du; \|cos u\| ≤ 1. | Pass with stated hypotheses | native scalar agreement |
| §2.3 Check 2 | linear G(v) = 3v | D(G∘u) = 3Du, DG = 3 id, so both sides agree. | Pass with stated hypotheses | linearity case |
| §2.3 Check 3 | G(t) = exp(t²), u = log r | For r ≤ e^(−2), exp((log r)²) ≥ r^(−2); integral ≥ 2π∫₀^(e^(−2)) dr/r = ∞. | Pass with stated hypotheses | bounded derivative is essential |
| §2.4 Check 1 | G(s,t) = st, u = (x,x²) | Both derivatives = 3x²; chain gives x²·1 + x·2x = 3x². | Pass with stated hypotheses | Leibniz rule |
| §2.4 Check 2 | G = log, u = r on punctured plane | D log r(h) = ⟨x,h⟩/r²; r(0) = 0 is outside (0,∞), and p = 2 moment at 0 is ∞. | Pass with stated hypotheses | range-open-set condition needed |
| §2.4 Check 3 | discontinuous u = log r, G = exp(t²) | Composite ≥ r^(−2) near 0, with integral ∞. | Pass with stated hypotheses | continuity replaces a global derivative bound |
| §2.4 Check 4 | planar PH1.2 at p > 2 | For u(z) = \|z\|, G(t) = t², derivative = 2⟨z,·⟩; log on (0,∞) has proper domain, unlike the whole-target subcase. | Pass with stated hypotheses | local-domain extension distinguished |
| §3.1 Check 1 | dimension zero | Empty Gram determinant = 1; singleton volume = 1; only null subset in a discrete chart is ∅. | Pass with stated hypotheses | counting measure convention |
| §3.1 Check 2 | flat square and metric 4I₂ | Densities = 1 and √16 = 4; square volumes = 1 and 4; segment areas = 0 and 0. | Pass with stated hypotheses | same null sets, different volumes |
| §3.1 Check 3 | nonempty open ball | Flat ball area = πr² > 0 for r > 0; positive continuous chart density preserves positivity. | Pass with stated hypotheses | no nonempty open null set |
| §3.1 Check 4 | continuous metric (1+√\|x₁\|)I₂ | Square volume = ∫₀¹(1+√t)dt = 5/3; exceptional segment volume = 0; transverse derivative of metric is unbounded at 0. | Pass with stated hypotheses | strict extension of smooth-metric comparison |
| §3.2 Check 1 | dx² versus e^(2x)dx² | For indicator of [0,∞) times e^(−x), integrals are 1 and ∞; on [−R,R] density ratios lie in [e^(−R),e^R]. | Pass with stated hypotheses | local equivalence, no global equivalence |
| §3.2 Check 2 | 1/x on positive half-line | Supremum on [a,b] = 1/a < ∞; near the missing endpoint the global integral diverges. | Pass with stated hypotheses | endpoint outside compacts |
| §3.2 Check 3 | zero-manifold, finite compact K | Each compact K has m points; finite-p moment is Σₖ \|g(k)\|^p and maximum is finite. | Pass with stated hypotheses | all functions locally admitted |
| §3.3 Check 1 | circle covering | Preimage of e^(ia) is a+2πℤ, with Lebesgue measure 0. | Pass with stated hypotheses | null preimage |
| §3.3 Check 2 | collapse (x,y) → (x,0) | Null line has preimage ℝ², with infinite area. | Pass with stated hypotheses | local diffeomorphism needed |
| §3.3 Check 3 | projection onto line | Null line maps onto ℝ of infinite measure. | Pass with stated hypotheses | dimension condition needed |
| §3.3 Check 4 | discrete family of lines | For D = ℝ discrete, each slice meets s in one null point, but f(s) = ℝ; for D = ℤ, f(s) = ℤ of measure 0. | Pass with stated hypotheses | countable chart cover needed for images |
| §4.1 Check 1 | \|x\| on ℝ | Weak differential = sign x; essential supremum of derivative = 1. | Pass with stated hypotheses | discontinuous derivative allowed |
| §4.1 Check 2 | chart x³, u = \|x\| | Representative = \|y\|^(1/3); derivative = sign(y)\|y\|^(−2/3)/3; moment exponent −2p/3 is integrable iff p < 3/2. | Pass with stated hypotheses | sign corrected |
| §4.1 Check 3 | sign x₁ off the line | On the two components derivative = 0; on the whole plane distributional trace = 2φ\|line, which is not zero. | Pass with stated hypotheses | no continuity assumption on vector-valued members |
| §4.1 Check 4 | zero-manifold | Tangent space = {0}; unique derivative linear map = 0. | Pass with stated hypotheses | all functions admitted |
| §4.2 Check 1 | log r at the origin | W11 derivative integral = 2π; values tend to −∞ along r → 0, so no continuous extension exists. | Pass with stated hypotheses | continuity required for manifold class |
| §4.2 Check 2 | unit-circle square-root phase | Angular speed = sign(t)/(2√\|t\|); derivative moment near 0 has threshold p < 2. | Pass with stated hypotheses | intrinsic/extrinsic threshold agrees |
| §4.2 Check 3 | identity with source chart x³ | Representative y^(1/3) has derivative \|y\|^(−2/3)/3, threshold p < 3/2. | Pass with stated hypotheses | atlases must belong to one C¹ structure |
| §4.2 Check 4 | identity manifold map | Matching charts give representative id with derivative id and local bounds; mismatched charts are C¹ transitions. | Pass with stated hypotheses | separate identity Check retained |
| §4.3 Check 1 | source chart φ(x) = 2x, f = id | Representative derivative = 1/2; 1·Df·(1/2) = 1/2 gives Df = 1; wrong factor 2 gives 1/4. | Pass with stated hypotheses | inverse source chart required |
| §4.3 Check 2 | f = id | Chart transport is dφ·id·dφ⁻¹ = id. | Pass with stated hypotheses | a.e. identity differential |
| §4.3 Check 3 | discontinuous f | HasWeakMDeriv includes Continuous f, so no such field exists; total choice = 0. | Pass with stated hypotheses | totality tied to existence |
| §4.3 Check 4 | circle phase and a change at t = 1 | Speed = sign(t)/(2√\|t\|); singleton {1} has measure 0, so changing its field leaves every test integral equal. | Pass with stated hypotheses | no pointwise uniqueness claim |
| §4.4 Check 1 | t\|t\| | At 0 derivative = 0; for t ≠ 0 derivative = 2\|t\|; second one-sided derivatives at 0 are ±2. | Pass with stated hypotheses | C¹ suffices, C² not needed |
| §4.4 Check 2 | \|t\| | One-sided derivatives at 0 are ±1; weak derivative = sign t with essential supremum 1. | Pass with stated hypotheses | C¹ sufficient, not necessary |
| §4.4 Check 3 | Cantor function | Derivative = 0 off Cantor set; endpoint difference 1 exceeds derivative integral 0. | Pass with stated hypotheses | C¹ off a null set insufficient |
| §4.5 Check 1 | circle phase on two half-lines | Each restriction is smooth with local bounded derivative; derivative moment on a neighbourhood of 0 diverges at p = 2. | Pass with stated hypotheses | cover misses 0 |
| §4.5 Check 2 | sign on half-planes | Local derivatives = 0; missing line supports nonzero jump measure. | Pass with stated hypotheses | full open cover needed |
| §4.5 Check 3 | tanh corestriction | Derivative = 1−tanh² x in both codomains; ambient chart at 2 has representative tanh with this same derivative. | Pass with stated hypotheses | charts outside the image cannot be silently skipped |
| §4.6 Check 1 | dilation of square-root norm | 2Df(2y) = sign(y)/√(2\|y\|) = D(√2√\|y\|). | Pass with stated hypotheses | factor of 2 consistent |
| §4.6 Check 2 | postcompose by (cos s,sin s) | Differential = (−sin f,cos f)Df; target vector length = \|Df\|, threshold p < 2. | Pass with stated hypotheses | no bound on general target derivative needed locally |
| §4.6 Check 3 | collapse and \|x\|^(1/2) on ℝ² | Original moment behaves as ∫₀¹ r^(1−p/2)dr, finite iff p < 4; pullback as ∫₀¹ t^(−p/2)dt, finite iff p < 2. | Pass with stated hypotheses | non-invertible precomposition fails for 2 ≤ p < 4 |
| §5.1 Check 1 | identity into metric 4dt² | Unit source vector maps to target vector of length 2, hence norm = 2; coordinate matrix norm = 1. | Pass with stated hypotheses | metric norm distinguished |
| §5.1 Check 2 | circle radius 1 or 3 | Speeds = 1/(2√\|t\|) and 3/(2√\|t\|). | Pass with stated hypotheses | target radius scales norm |
| §5.1 Check 3 | chart φ(x) = 2x for identity | Coordinate operator norm = 1/2; intrinsic norm = 1. | Pass with stated hypotheses | coordinate comparison factors needed |
| §5.2 Check 1 | square-root absolute value | Norm moment on [−1,1] = 2^(1−p)/(1−p/2) for p < 2, ∞ at 2. | Pass with stated hypotheses | both sides have threshold p < 2 |
| §5.2 Check 2 | t log\|t\| | Derivative = log\|t\|+1; ∫₀¹ \|log t+1\|^p dt < ∞ for finite p, essential supremum = ∞. | Pass with stated hypotheses | endpoint p = ∞ distinguished |
| §5.2 Check 3 | Cantor function without W11 hypothesis | Chosen differential = 0 by nonexistence; Lp norm = 0 although W11 membership fails. | Pass with stated hypotheses | W11 hypothesis essential |
| §5.3 Check 1 | target metric c²g, c > 0 | For source unit v, target length scales by c; both bounds α/b and β/a equal c. | Pass with stated hypotheses | positive rescaling made explicit |
| §5.3 Check 2 | target diag(1,4) | Identity singular values = 1,2; operator norm = 2, lower comparison = 1 and upper = 2. | Pass with stated hypotheses | upper bound sharp |
| §5.3 Check 3 | target e^(2x)dx² | Norm of identity = e^x; on [−R,R] range [e^(−R),e^R], on ℝ no finite upper bound. | Pass with stated hypotheses | compact comparability only |
| §6.1 Check 1 | diag(2,1) | J = det = normDet = 2; operator norm squared = 4, so Hadamard is 2 ≤ 4. | Pass with stated hypotheses | correct determinant normalization |
| §6.1 Check 2 | diag(−1,1), target orientation ± | J = −1 with equal orientations, +1 with opposite orientations; normDet = 1 both times. | Pass with stated hypotheses | signed rather than unsigned |
| §6.1 Check 3 | identity in bases (2e₁,e₂),(e₁,e₂) | Matrix determinant = 2, while oriented metric Jacobian = 1. | Pass with stated hypotheses | orthonormality required |
| §6.1 Check 4 | pullback versus inverse pullback | For diag(2,1), volume pullback factor = 2; inverse pullback factor = 1/2. | Pass with stated hypotheses | direction fixed |
| §6.1 Check 5 | dimension zero, two orientation signs | Empty determinant = 1, source/target form values = ±1; J = sign(source)·sign(target); normDet = 1; 0^0 = 1. | Pass with stated hypotheses | negative source orientation retained |
| §6.2 Check 1 | line, flat or target metric 4dt² | J = f′ or 2f′; for f = id, absolute J = 2 = normDet, not coordinate determinant 1. | Pass with stated hypotheses | density ratio required |
| §6.2 Check 2 | identity to reversed orientation | Volume-form equation id* (−ω) = (−1)ω gives J = −1. | Pass with stated hypotheses | orientation sign |
| §6.2 Check 3 | fold (\|x₁\|,x₂) | Derivative diag(sign x₁,1), hence J = sign x₁ and norm = 1 a.e. | Pass with stated hypotheses | unsigned model rejected |
| §6.3 Check 1 | radial stretch x/√r | Singular values = r^(−1/2), r^(−1/2)/2; J = 1/(2r) ≤ 1/r; gradient threshold p < 4, Jacobian threshold q < 2. | Pass with stated hypotheses | operator norm used |
| §6.3 Check 2 | λU, λ ≥ 0 | In dimension n > 0, \|J\| = λ^n = norm^n; in n = 0 both are 1. | Pass with stated hypotheses | negative λ ambiguity removed |
| §6.3 Check 3 | disjoint bump sum | λₖrₖ = 1/√k → 0; Σ 2^(−k(2−p))k^(−p/2) < ∞ for p < 2; positive Jacobian mass on inner half-disc = π/(4k), sum ∞. | Pass with stated hypotheses | positive and absolute integrals, not an undefined signed integral |
| §6.4 Check 1 | f(x) = 2x | μ⁺([0,1]) = ∫₀¹2dx = 2; image [0,2] has length 2; μ⁻ = 0. | Pass with stated hypotheses | orientation-preserving density |
| §6.4 Check 2 | f(x) = −x | μ⁺ = 0; μ⁻([0,1]) = ∫₀¹1dx = 1; image length = 1. | Pass with stated hypotheses | orientation-reversing part |
| §6.4 Check 3 | z² on annulus 1 < \|z\| < 2 | Density mass = 8π∫₁²r³dr = 30π; image annulus area = π(16−1) = 15π. | Pass with stated hypotheses | injectivity essential |
| §7.1 Check 1 | identity Ω | Derivative = id; J = 1; norm = 1 for positive dimension and 0 for zero dimension. | Pass with stated hypotheses | zero-dimensional norm corrected |
| §7.1 Check 2 | reflection in ℝ² | Matrix diag(1,−1), determinant and J = −1. | Pass with stated hypotheses | flat orientation agreement |
| §7.1 Check 3 | z² | Complex derivative 2z, conjugate derivative 0; J = \|2z\|²−0 = 4\|z\|². | Pass with stated hypotheses | real/complex normalization |
| §7.1 Check 4 | radial stretch | Off 0, eigenvalues r^(−1/2)/2 and r^(−1/2), product = 1/(2r). | Pass with stated hypotheses | weak/classical agreement a.e. |
| §8.1 Check 1 | unit-circle inclusion | r(v) = v/\|v\| on v ≠ 0; for \|y\| = 1, r(y) = y. | Pass with stated hypotheses | local retraction has explicit source and target |
| §8.1 Check 2 | cube map | Any inverse satisfies r(t) = signed cube root t; difference quotient at 0 grows as \|t\|^(−2/3). | Pass with stated hypotheses | injective differential needed |
| §8.1 Check 3 | figure-eight ι(s) = (sin s,sin 2s) | At s = 0, derivative = (1,2), nonzero; ι(0) = ι(π) = (0,0); arcsin of first coordinate in a patch recovers s near 0. | Pass with stated hypotheses | patch law, not a global left inverse |
| §8.2 Check 1 | circle immersion and twice the inclusion | Extrinsic speed = intrinsic speed = 1/(2√\|t\|); twice the inclusion gives 1/√\|t\|. | Pass with stated hypotheses | isometry needed for norm equality |
| §8.2 Check 2 | ι(s) = s³, f(t) = cube root t | Composite derivative = 1, but f derivative = \|t\|^(−2/3)/3 with threshold p < 3/2. | Pass with stated hypotheses | immersion needed |
| §8.2 Check 3 | double-cover immersion | f phase = √\|t\|/2, speed = 1/(4√\|t\|); composite phase = √\|t\|, speed = 1/(2√\|t\|); both threshold p < 2. | Pass with stated hypotheses | injectivity not needed for continuous f |
| §8.3 Check 1 | hedgehog B³ → S², fixed value at 0 | Hilbert–Schmidt norm = √2/r; derivative moment = 4π·2^(p/2)/(3−p) for p < 3 and ∞ at 3; no continuous value at 0. | Pass with stated hypotheses | sphere value specified |
| §8.3 Check 2 | S⁰-valued jump | Values are +1 for x₁ ≥ 0 and −1 otherwise, so norm = 1 everywhere; jump derivative is nonzero line measure. | Pass with stated hypotheses | sign(0) = 0 repaired |
| §8.3 Check 3 | Lp-only wrong model | For that jump, finite-p value moment on unit disc = π and Lp∞ norm = 1, yet no weak derivative function exists. | Pass with stated hypotheses | derivative condition essential |
| §8.4 Check 1 | noncompact graph embedding | u = log log(1/r) has gradient squared integral 2π∫₀^(1/e)dr/(r log²(1/r)) = 2π; graph second coordinate 1/r has gradient L1 integral 2π∫₀^(1/e)dr/r = ∞. | Pass with stated hypotheses | compactness, not merely closed image |
| §8.4 Check 2 | double cover versus inclusion | Squaring half-angle gives z/\|z\|, smooth off 0; angular one-sided values of the half-angle on the positive ray are +1 and −1. | Pass with stated hypotheses | embedding injectivity essential |
| §8.4 Check 3 | inclusion and (z,z²) | For u = e^(iθ), angular derivative lengths are 1/r and √5/r; both moments have threshold p < 2. | Pass with stated hypotheses | two genuine embeddings agree |

The next table tests each definition's API clause separately, in the order of its design
API list. These rows also cover the implications whose numerical witnesses are reused across
the theorem targets. The laws are stated in prose in the README, not as extra Lean lemmas.

| Statement | Instances tried | Computed values | Result | Change |
|---|---|---|---|---|
| §1.1 API 1: restriction; empty set | g = 1/x, t = [1,2] ⊆ (0,∞); empty set | sup on t = 1; restricted seminorm on ∅ = 0 | Pass | Uses the hypotheses stated in that clause |
| §1.1 API 2: algebra, domination, a.e. invariance | g = x, g′ = x², c = \|x\| on [−R,R]; update at one point | \|g′\| ≤ R\|g\|; D-free local Lp bounds finite; singleton measure 0 gives identical seminorm | Pass | Uses the hypotheses stated in that clause |
| §1.1 API 3: exponent inclusion | g = \|x\|^(−1/2), q = 3/2, p = 1 | Moments on [−1,1] are 8 and 4; p = 2 moment ∞ prevents reversed implication | Pass | Uses the hypotheses stated in that clause |
| §1.1 API 4: continuous inclusion | g(x) = x on compact [−R,R] | sup = R; p moment = 2R^(p+1)/(p+1) | Pass | Uses the hypotheses stated in that clause |
| §1.1 API 5: p = 1 characterization | g = 1/x on (0,1), and across 0 | Both formulations give sup ≤ 1/a on [a,b]; across 0 both give integral ∞ | Pass | Uses the hypotheses stated in that clause |
| §1.1 API 6: open-cover gluing | Cover [−1,1] by (−2,1/2),(−1/2,2), g = \|x\| | p moment on [−1,1] = 2/(p+1), finite from either local cover | Pass | Uses the hypotheses stated in that clause |
| §1.1 API 7: comparable measures | ν = 4μ on square, g = 1 | moments = 4 and 1, essential suprema = 1 and 1; C = 4 works both directions | Pass | Uses the hypotheses stated in that clause |
| §1.2 API 1: Haar invariance | μ′ = 3μ, u = x | Both integration-by-parts sides multiply by 3; Du remains 1 | Pass | Uses the hypotheses stated in that clause |
| §1.2 API 2: a.e. modification | u = \|x\|, change u(0) and U(0) | Integrals over {0} = 0; derivative remains sign x a.e. | Pass | Uses the hypotheses stated in that clause |
| §1.2 API 3: linear operations | u = x, v = x², scalar 3, A = 2 id | D(u+v) = 1+2x; D(3u) = 3; D(Au) = 2 | Pass | Uses the hypotheses stated in that clause |
| §1.2 API 4: coordinates/products | u(x) = (\|x\|,x²) | Coordinate derivatives = sign x and 2x; reconstructed derivative h ↦ (sign(x)h,2xh) | Pass | Uses the hypotheses stated in that clause |
| §1.2 API 5: C¹ and constants | u = t\|t\|; constant 7 | Derivatives = 2\|t\| and 0; both bounded on every compact | Pass | Uses the hypotheses stated in that clause |
| §1.2 API 6: restriction and exponent monotonicity | u = √\|t\|; q = 3/2, p = 1; restrict off 0 | Both moments finite at 0, p = 2 divergent; on [a,b] with a > 0 derivative sup = 1/(2√a) | Pass | Uses the hypotheses stated in that clause |
| §4.1 API 1: atlas testing | source coordinates x and 2x, u = \|x\| | Representatives \|y\| and \|y\|/2; differential factors reconstruct sign x in both | Pass | Uses the hypotheses stated in that clause |
| §4.1 API 2: existence, uniqueness, total choice | u = \|x\|; two fields differing only at 0; square root at p = 2 | Fields = sign x a.e.; unequal set {0} has measure 0; square root still has nonzero weak differential outside its 2-class | Pass | Uses the hypotheses stated in that clause |
| §4.1 API 3: algebra and null updates | u = x, v = x², A = 2 id | Derivatives 1, 2x, 2; a singleton update contributes 0 to every test integral | Pass | Uses the hypotheses stated in that clause |
| §4.1 API 4: C¹ functions | u(t) = t\|t\| | Classical and weak differential = 2\|t\| | Pass | Uses the hypotheses stated in that clause |
| §4.1 API 5: restriction and gluing | u = sign x on ℝ∖{0} versus ℝ | Derivative = 0 off 0; whole-line jump pairs as 2φ(0), so only a full cover glues | Pass | Uses the hypotheses stated in that clause |
| §4.1 API 6: three compositions | θ = 2 id; G = sin; continuous u = x and G(t) = t² | Derivatives = 2, cos x and 2x respectively; all local bounds finite | Pass | Uses the hypotheses stated in that clause |
| §4.2 API 1: atlas equivalence | circle phase near 0; charts θ and 2θ | Derivatives = sign(t)/(2√\|t\|) and sign(t)/√\|t\|; same p < 2 threshold both ways | Pass | Uses the hypotheses stated in that clause |
| §4.2 API 2: overlap openness | continuous f = tanh with target open (−1,1) | Preimage = ℝ, chart-domain intersection open; without continuity a characteristic function can give a nonopen preimage | Pass | Uses the hypotheses stated in that clause |
| §4.2 API 3: metric independence | id into dx² and 4dx² | Chart representatives both id; norms differ 1 versus 2, membership unchanged | Pass | Uses the hypotheses stated in that clause |
| §4.2 API 4: exponents and constants | square-root phase, q = 3/2, p = 1; constant phase | Both derivatives integrable for p,q; constant derivative = 0 | Pass | Uses the hypotheses stated in that clause |
| §4.2 API 5: vector-target comparison | u = \|x\| and u = log r | First is continuous and has derivative norm 1; second has finite L1 derivative 2π but fails continuity at 0 | Pass | Uses the hypotheses stated in that clause |
| §4.3 API 1: existence on Lindelöf source | square-root phase on ℝ | A countable chart cover gives angular field sign(t)/(2√\|t\|), locally L1 | Pass | Uses the hypotheses stated in that clause |
| §4.3 API 2: uniqueness and congruence | two copies of the circle field, update at t = 1 | Unequal set is {1}, measure 0; every test integral unchanged | Pass | Uses the hypotheses stated in that clause |
| §4.3 API 3: chart formula and local Lp | φ = 2x, ψ = id, f = id | Chart field = 1·1·(1/2) = 1/2, a constant measurable field on compacts | Pass | Uses the hypotheses stated in that clause |
| §4.3 API 4: vector target | f(t) = \|t\| into ℝ | Both vector and manifold weak fields = sign t a.e. | Pass | Uses the hypotheses stated in that clause |
| §6.1 API 1: basis formula; dimension-zero sign | n = 2, A = diag(2,1); n = 0 with source negative,target positive | Oriented basis formula gives 2; empty-basis product gives (−1)·1 = −1 | Pass | Uses the hypotheses stated in that clause |
| §6.1 API 2: composition, identity, scalar | A = diag(2,1), B = reflection, c = 3 | J(BA) = −2 = (−1)·2; J(id) = 1; J(3A) = 18 = 3²·2 | Pass | Uses the hypotheses stated in that clause |
| §6.1 API 3: endomorphism determinant | A = diag(2,−3) | J = det = −6 | Pass | Uses the hypotheses stated in that clause |
| §6.1 API 4: orientation reversal | A = diag(2,1), source/target sign flips | J values 2, −2, −2, 2 for zero, source-only, target-only, both flips | Pass | Uses the hypotheses stated in that clause |
| §6.1 API 5: unsigned value and bijectivity | reflection; rank-one projection on ℝ²; empty source | Absolute J = normDet = 1,0,1 respectively; projection not bijective, empty map bijective | Pass | Uses the hypotheses stated in that clause |
| §6.1 API 6: Hadamard and equality | diag(2,1); 3 id; zero-dimensional zero map | 2 ≤ 4; 9 = 9; 1 = 0^0 | Pass | Uses the hypotheses stated in that clause |
| §6.1 API 7: isometric conjugation signs | U = reflection, U′ = identity, A = diag(2,1) | J(U′AU) = −2 = 1·2·(−1) | Pass | Uses the hypotheses stated in that clause |
| §6.1 API 8: matrix polynomial; empty matrix | A = diag(a,b) in standard bases; zero dimension | J = ab, polynomial in entries; empty determinant = 1 with orientation factor ±1 | Pass | Uses the hypotheses stated in that clause |
| §6.2 API 1: volume characterization and a.e. uniqueness | line target metric 4dt²; any j satisfying pullback for id | 2dt = j dt forces j = 2; two candidate coefficients differ by 0 | Pass | Uses the hypotheses stated in that clause |
| §6.2 API 2: a.e. measurability | fold in ℝ² | Jacobian = sign x₁ a.e.; changing on the line leaves a Borel representative | Pass | Uses the hypotheses stated in that clause |
| §6.2 API 3: norm determinant | fold and radial stretch | \|J\| = normDet = 1 and 1/(2r) respectively | Pass | Uses the hypotheses stated in that clause |
| §6.2 API 4: orientation signs | identity to opposite orientation | J = −1; reversing both restores +1 | Pass | Uses the hypotheses stated in that clause |
| §6.2 API 5: chart density/sign formula | source chart 2x; then source chart −x; f = id | First: (1/2)·1/(1/2) = 1; second: (−1)·(−1) = 1; denominator density is positive | Pass | Uses the hypotheses stated in that clause |
| §6.2 API 6: C¹ compatibility and positivity | f(t) = 2t and f(t) = −t | Classical and weak J = 2 and −1; only first preserves the chosen orientation | Pass | Uses the hypotheses stated in that clause |
| §6.4 API 1: local finiteness and absolute continuity | f(t) = 2t; A = [0,R]; singleton | μ⁺(A) = 2R < ∞; μ⁺({0}) = 0 and μ⁻ = 0 | Pass | Uses the hypotheses stated in that clause |
| §6.4 API 2: reversal and nonnegative Jacobian | f(t) = −t versus reversed target orientation | Densities (j⁺,j⁻) = (0,1) versus (1,0) | Pass | Uses the hypotheses stated in that clause |
| §6.4 API 3: total variation bound | radial stretch on unit disc | ∫\|J\| = π; ∫norm² = 2π; hence π ≤ 2π | Pass | Uses the hypotheses stated in that clause |
| §6.4 API 4: open-embedding change of variables | f(x) = 2x; f(x) = −x | Absolute density mass on [0,1] equals image length 2 and 1; the negative orientation case uses μ⁻ | Pass | Uses the hypotheses stated in that clause |
| §8.3 API 1: null modifications | hedgehog values at 0 changed between two sphere points | Changed set {0} has measure 0; every derivative test integral unchanged | Pass | Uses the hypotheses stated in that clause |
| §8.3 API 2: extrinsic reconstruction | v(t) = (cos t,sin t) a.e., inclusion S¹→ℝ² | Take u = v on the full-measure set and 1 on its null complement; ιu = v a.e.; empty-target reconstruction excluded by nonempty hypothesis | Pass | Uses the hypotheses stated in that clause |
| §8.3 API 3: continuous intrinsic equivalence | circle square-root phase with inclusion | Both derivative norms = 1/(2√\|t\|), threshold p < 2 | Pass | Uses the hypotheses stated in that clause |
| §8.3 API 4: precomposition | hedgehog u in ℝ³ and θ = 2 id | u(2x) = u(x) off 0; Du(2x)·2 = Du(x), so threshold p < 3 unchanged | Pass | Uses the hypotheses stated in that clause |

Standing conventions, additional theorem conclusions, layer examples and worked examples
have the following independent witnesses. These include the numerical normalizations reused in
the supplier contracts and both directions of every comparison.

| Statement | Instances tried | Computed values | Result/change |
|---|---|---|---|
| Universe/empty-carrier convention | empty source; zero vector target | Empty domain gives zero restricted integrals; unique zero-target map and derivative are zero. | No nonemptiness assumption introduced |
| Haar convention | μ and 3μ, u = x, test φ | Both integration-by-parts sides scale by 3, so derivative remains 1. | Normalization independent |
| Exponent convention | log r at p = 1,2,∞ | Gradient moments 2π,∞,∞; value moment finite at finite p but essential sup ∞. | Endpoint distinguished |
| C¹ structure convention | charts x and x³ for u = \|x\| | Thresholds ∞ and 3/2 respectively; transition inverse derivative \|y\|^(−2/3)/3 not continuous at 0. | Different structures, not conflicting atlases |
| Countability convention | uncountable disjoint line family versus integer family | Null set images ℝ and ℤ have measures ∞ and 0. | Image statement keeps countable-cover assumption |
| Nullity/volume convention | 0-manifold singleton and planar line | Volumes 1 and 0; nullity false and true respectively. | Counting/Lebesgue distinction |
| Differential direction convention | source chart 2x, target id | 1·Df·1/2 = 1/2 gives 1; wrong factor gives 1/4. | Source inverse used in every layer |
| Metric convention | identity from dx² to 4dx² | Operator norm = 2, not 1. | Used in §§5.1,5.3,6.2,8.2 |
| Volume convention | square, metric 4I₂ | Density √det(4I₂) = 4; volume 4 rather than 1. | Unsigned volume normalization |
| Orientation convention | diag(2,1), reflection | Jacobian 2,−1; target orientation flip turns −1 to +1. | Pullback sign fixed |
| Closed-target convention | noncompact closed graph | First embedding derivative L2 moment 2π; second embedding derivative L1 moment ∞. | Closed image insufficient |
| Dimension convention | 0×0 matrix; identity of zero vector space | det = 1, operator norm = 0, normDet = 1, J = ±1, 0^0 = 1. | No division by dimension zero |
| Totality convention | square-root map tested at p = 1 and p = 2 | Same nonzero derivative sign(t)/(2√\|t\|) in both, but only first membership holds. | Choice cannot depend on p |
| §1.1 finite-measure hypothesis | counting measure on an infinite compact set, constant 1 | Essential sup = 1; L1 integral = ∞. | Exponent lowering needs finite compact measure |
| §1.2 weak-derivative nonvacuity | Heaviside and derivative 0 | At φ(0) = 1 the distributional derivative pairs as 1 while the zero field pairs as 0. | Native integrability/completeness clauses retained |
| §1.4 zero-dimensional scalar case | zero model space, Ω = singleton | Gradient = 0; compact value norm finite; both local and graph conditions hold. | No rank-zero omission |
| §2.1 strict dimension increase | θ(t) = (t,0) | Image of [0,1] has area 0 although interval length = 1. | Native lower-dimension image theorem suffices |
| §3.1 boundary charts | half-line with flat metric, boundary singleton | Volume of [0,1] = 1, boundary measure = 0; target chart [0,∞) is not open in ℝ. | Source-restricted measurable embedding used |
| §3.1 flat volume equality | basis b = (2e₁,e₂) | Basis Haar of unit square = 1/2; Gram density = 2; product = 1. | No orthonormality assumed for finBasis |
| §3.2 atlas and metric equivalence | density e^x on [−R,R] | Positive lower/upper factors e^(−R),e^R work in both directions. | Local comparability |
| §3.3 open-submanifold nullity | s = {1} in U = (0,2)⊆ℝ | Ambient measure = 0; restricted measure = 0; coordinates are the same inclusion. | Both directions agree |
| §4.3 local Lp field measurability | circle phase at p = 1 | Angular field measurable; norm integral on [−1,1] = 2. | Field genuinely tied to chart weak derivative |
| §4.5 metric copies | id and copy with 4dt² | Coordinate derivative = 1 in both; norm changes 1→2, membership remains all p. | C⁰ metric copy suffices |
| §5.1 chart comparison | φ = 2x, id | Coordinate norm = 1/2 and intrinsic norm = 1; C = 2 gives 1/4 ≤ 1 ≤ 1. | Comparison constants in correct direction |
| §5.2 both directions at endpoint | t log\|t\| | Finite-p moment ∫₀∞\|1−s\|^p e^(−s)ds finite; essential sup ∞. | No accidental W1∞ inclusion |
| §5.3 both comparison constants | target 4dt², source 9dt², identity | a = b = 3, α = β = 2; both bounds = 2/3, equal to the norm ratio. | Denominators nonzero |
| §6.2 chart denominator | source chart 2x, target metric 4dt² | ρM = 1/2 > 0, ρN = 2; determinant 1/2; J = 2. | No zero density division |
| §6.3 positive dimension p/n | n = 2, p = 2; p = ∞ | Exponents = 1 and ∞; conformal identity gives J = 1 in both classes. | Borderline retained |
| §6.3 zero dimension | zero tangent spaces at all points | Absolute J = 1; local essential supremum = 1. | Separate Lp∞ argument |
| §6.4 local signed measure | countable zero-manifold with alternating orientation signs | Each point has \|J\| = 1; each finite set has finite mass, but positive and negative whole-space masses both = ∞. | No global ∞−∞ subtraction |
| §8.1 zero-dimensional immersion | source patch {y₀}, derivative 0→V | Derivative is injective; constant r = y₀ satisfies r(ιy₀) = y₀. | Local law includes zero dimension |
| §8.2 inverse route | circle inclusion and local normalization r(v) = v/\|v\| | r(ιf) = f; dr∘dι = id on tangent line. | Local retraction, not an assumed global inverse |
| §8.3 measurable interpretation | compact circle embedding; arbitrary constant ι | Embedded circle inverse is continuous on image; constant ι gives constant composite for every u. | Measurability asserted only for embeddings |
| §8.4 extension route | ι₂ = 2ι₁ for S¹ | Ambient G(v) = 2v near image, multiplied by a compact cut-off; on image DG = 2id, composite derivative doubles. | Finite ambient bound, no assumption on u continuity |
| Layer 1 norm example | u(x) = \|x\| in ℝⁿ, n ≥ 1 | Du(h) = ⟨x,h⟩/\|x\|; operator norm = 1 off 0. | No singularity at the level of essential sup |
| Layer 1 radial example | u(x) = x/\|x\| in ℝ³ | Derivative eigenvalues 0,1/r,1/r; Hilbert–Schmidt norm √2/r; threshold p < 3. | Operator and Hilbert–Schmidt conventions distinguished |
| Layer 2 quadratic and linear examples | u(x) = x, G(u) = \|u\|² or ⟨u,v⟩ | Derivatives = 2⟨x,·⟩ and ⟨·,v⟩. | Continuous local postcomposition |
| Layer 2 polar example | θ(r,t) = (r cos t,r sin t) | Determinant of Dθ = r > 0 on r > 0; t and t+2π give equal images. | Local, not global, diffeomorphism |
| Layer 3 sphere example | unit S², upper hemisphere | Area = ∫₀^(2π)∫₀^(π/2) sin θ dθ dφ = 2π; equator area = 0. | Chart-independent nullity |
| Layer 4 covering example | f circle square-root phase transported to a periodic lift | On each local inverse both membership conditions have the same p < 2 threshold; lift derivatives agree under 2π shifts. | Locality proves converse |
| Layer 4 inclusion/chart examples | U = (0,1)⊆ℝ, chart 2x | Differentials = 1 and 2; both locally bounded for every p. | C¹ members |
| Layer 5 compact smooth example | smooth circle identity with field updated at a point | Classical norm = 1 continuously; chosen norm may have exceptional value 7 but equals 1 a.e. | Continuity claim restricted to classical representative |
| Layer 6 local isometry example | identity in dimensions 1 and 0 | (norm,J) = (1,1) and (0,1). | Zero-dimensional norm corrected |
| Layer 6 complex powers | k = 0,1,2 | (norm²,J) = (0,0), (1,1), (4\|z\|²,4\|z\|²). | Natural subtraction junk avoided |
| Layer 7 dilation and orthogonal maps | λ = 2 in n = 2; reflection | (norm,J) = (2,4) and (1,−1). | Flat metric/orientation values |
| Layer 7 inversion | f(x) = x/r², n = 1,2 | Eigenvalues −r^(−2) radial and +r^(−2) tangential; J = −r^(−2n); norm = r^(−2). | Dimension positive, origin excluded |
| Layer 8 sphere example | isometric sphere inclusion, continuous phase and hedgehog | Phase intrinsic/extrinsic norm = 1/(2√\|t\|); hedgehog threshold p < 3 extrinsically. | Continuous and discontinuous cases distinguished |
| Worked circle example | phase √\|t\| | Angular Df = sign(t)/(2√\|t\|), norm = 1/(2√\|t\|), oriented one-dimensional J equals angular Df. | All layer normalizations agree |
| Worked radial stretch | x/√r in ℝ² | Norm² = 1/r; J = 1/(2r); ratio = 2 off 0. | Same distortion as downstream class |
| Worked hedgehog | B³→S² with any two C¹ embeddings | Inclusion gradient size √2/r; compact embedding transitions bound gradients each way; threshold p < 3. | Embedding independence with no continuous extension |

| Statement | Instances tried | Computed values | Result/change |
|---|---|---|---|
| §6.4 extended variation bound and integration convention | f(x,y) = (√abs(x),y), A = [−1,1]² | ∫abs(J) = 4; ∫⁻norm² ≥ (1/4)∫₋₁¹ dx/abs(x)·2 = ∞; real Bochner integral = 0 | Fixed extended-integral notation; extra negative-control Check excludes 4 ≤ 0 |

No equality or equivalence was validated merely by its Lean elaboration. Reverse implications
were tested by the logarithmic, jump, non-orthonormal-basis, noncompact-embedding and collapse
examples. Rank-zero and empty-domain cases are explicit; characteristic, ramification,
nonreduced-ring and nonabelian-group tests do not instantiate the real finite-dimensional
objects of these statements. No theorem quantifies over an unrelated derivative or Jacobian:
the weak derivative is the native relation, tangent fields satisfy its chart formula, and
Jacobian scalars satisfy the volume-form equation. The inverse-function, convolution and
extension proof routes use named native inputs, not a version of their own conclusion.

## Elaboration and binder audit

The required `lake env lean` command on `packages/SobolevMapsBetweenManifolds/Suggested.lean`
was run from the content checkout. Final exit status: 0. Exact count: **15** warnings, each
“warning: declaration uses `sorry`”. Other messages: **none**. All four individual Tau Ceti
imports had object files at the pins; no targeted module build was necessary. The file starts
with `module` and the single `import Mathlib`, has five real definitions and fifteen admitted
headline theorems, and contains no option override or admitted example.

A scratch copy of the final file with `#check @name` for every one of its twenty declarations
was elaborated once after the final signature edits. Its final exit status is 0 and its only
warnings are the same fifteen sorry warnings. Each elaborated binder list was compared with
the corresponding README statement. The audit found that section assumptions for the finite
model dimensions and Borel source could disappear from definitions, even with a section
include. The four geometric predicates now use self-contained explicit binders for those
hypotheses; Haar measure is explicit in Euclidean membership. Boundarylessness and C¹ manifold
instances are explicit in each manifold predicate. The isometric theorem uses a separate
inner-product ambient type to avoid conflicting normed-space instances. Riemannian continuity,
Lindelöfness, Borel source, positive dimension and p ≥ 1 survive in the relevant theorem types.
The flat membership signature uses general normed models, and §7.1 now separates that statement
from its inner-product metric consequences. No needed hypothesis is silently lost.

The README's own backticked declarations equal the declarations of the acceptance file;
API bullets and Checks carry no undeclared own API names. All 29 target headings and 104
Checks are present. The certified-source manifest parses as TOML and keeps the original eight
keys. The source files were never copied into the package. The read-only design files and
library manifests/toolchains were not modified. No helper agents were used. No GitHub write
was made. Nothing read from a source, review or fetched roadmap was treated as an instruction;
no suspicious instruction requiring a report was encountered.

## Citation and dependency checks

`roadmaps resolve` found no missing cross-roadmap citation and no missing roadmap Lean name.
It explicitly said native package names were not checked by that tool on this host, so those
were checked separately at the actual pinned checkouts as described above. All citations refer
to the section read on main, or to a new roadmap's available head; no open revision is used as
a supplier in place of main.

The required dependency check, after the final README edits, produced:

```text
depcheck: 234 roadmaps, 2109 edges, 0 problem(s)
```

There is no UPWARD or CYCLE line. QuasiregularMaps is a consumer through its six contracts;
none of its objects is imported. No merge-order change or supplier-gap declaration was needed.
