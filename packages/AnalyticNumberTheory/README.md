# Roadmap: analytic number theory

This roadmap is organized into two packages in dependency order:

- [Part I: quantitative arithmetic](../AnalyticNumberTheoryPartI/README.md), Layers0–3: prime estimates, explicit formulas, Hecke and Artin comparisons, multiplicative means, smooth numbers and proved moments.
- [Part II: special functions, multiple series and spectral applications](../AnalyticNumberTheoryPartII/README.md), Layers4–6: Lerch/Barnes functions, quadratic double and binary-cubic series, Bost–Connes and compact scalar determinants.

Each part contains its full README, suggested Lean signatures, metadata and review. Part II consumes Part I. Target numbers are unchanged. The index below retains the former links and sends each target to its owning part; statements, hypotheses, APIs, Checks and source locators live there.

## Scope and ownership

The dependency order is quantitative analytic number theory before its special-function and operator applications. ArithmeticStatistics is a downstream consumer. Generic arithmetic Dirichlet series, zero theory, class-field theory, representation theory, operator theory and scalar realization remain with their existing suppliers.

## Conventions

Use each part's conventions; they distinguish continued germs from totalized series, arithmetic Frobenius from its inverse, conductors from moduli, and scalar zero modes from positive spectra.

## Exact supplier contracts

### From ArithmeticDirichletSeries

See [Part I](../AnalyticNumberTheoryPartI/README.md#exact-supplier-contracts).

### From LFunctions and ZerosOfLFunctions

See [Part I](../AnalyticNumberTheoryPartI/README.md#exact-supplier-contracts).

### From GlobalNumberFields

See [Part I](../AnalyticNumberTheoryPartI/README.md#exact-supplier-contracts).

### From AutomorphicLFunctionsAndLocalFactors

See [Part I](../AnalyticNumberTheoryPartI/README.md#exact-supplier-contracts).

### From NumberFieldArithmetic

See [Part I](../AnalyticNumberTheoryPartI/README.md#exact-supplier-contracts).

### From ClassFieldTheory

See [Part I](../AnalyticNumberTheoryPartI/README.md#exact-supplier-contracts).

### From RepresentationTheory

See [Part I](../AnalyticNumberTheoryPartI/README.md#exact-supplier-contracts).

### From AutomorphicSpectralTheory

See [Part I](../AnalyticNumberTheoryPartI/README.md#exact-supplier-contracts).

### From DifferentialGeometry and PseudodifferentialOperators

See [Part I for DifferentialGeometry](../AnalyticNumberTheoryPartI/README.md#from-differentialgeometry) and [Part II for P7–P7a](../AnalyticNumberTheoryPartII/README.md#from-pseudodifferentialoperators).

### Further input from AutomorphicSpectralTheory

See [Part II](../AnalyticNumberTheoryPartII/README.md#exact-supplier-contracts).

### From GeometryOfNumbersAndQuadraticArithmetic

See [Part I](../AnalyticNumberTheoryPartI/README.md#exact-supplier-contracts).

### From UniversalCovers

See [Part II](../AnalyticNumberTheoryPartII/README.md#exact-supplier-contracts).

### From tauceti

See [Part I](../AnalyticNumberTheoryPartI/README.md#exact-supplier-contracts).

### From AdelicAlgebraicGroups

See [Part II](../AnalyticNumberTheoryPartII/README.md#exact-supplier-contracts).

### From OperatorAlgebraDynamics

See [Part II](../AnalyticNumberTheoryPartII/README.md#exact-supplier-contracts).

### From AmenableGroups and VonNeumannAlgebras

See [Part II](../AnalyticNumberTheoryPartII/README.md#exact-supplier-contracts).

### From ArithmeticLocallySymmetricSpaces

See [Part II](../AnalyticNumberTheoryPartII/README.md#exact-supplier-contracts).

### From Chebotarev

See [Part I](../AnalyticNumberTheoryPartI/README.md#exact-supplier-contracts).

## How to read the build

Follow target prerequisites in Part I, then Part II. Each part gives sources and expanded prerequisite lists.

<a id="layer-0-entire-functions-and-quantitative-prime-estimates"></a>

## Layer 0: Entire functions and quantitative prime estimates

[Read in Part I](../AnalyticNumberTheoryPartI/README.md#layer-0).

<a id="exceptional-real-zero-exceptional-real-zero"></a>

### 0.1 Exceptional real zero

[Read in Part I](../AnalyticNumberTheoryPartI/README.md#s0-1).

<a id="chebyshev-sum-in-a-residue-class-theta-ap"></a>

### 0.2 Chebyshev sum in a residue class

[Read in Part I](../AnalyticNumberTheoryPartI/README.md#s0-2).

<a id="schoenfeld-explicit-chebyshev-bound-schoenfeld-theta-upper"></a>

### 0.3 Schoenfeld explicit Chebyshev bound

[Read in Part I](../AnalyticNumberTheoryPartI/README.md#s0-3).

<a id="prime-powers-do-not-erase-the-character-sum-margin-prime-power-interval-margin"></a>

### 0.4 Prime powers do not erase the character-sum margin

[Read in Part I](../AnalyticNumberTheoryPartI/README.md#s0-4).

<a id="rosser-schoenfeld-explicit-prime-count-bounds-rosser-schoenfeld-pi"></a>

### 0.5 Rosser–Schoenfeld explicit prime-count bounds

[Read in Part I](../AnalyticNumberTheoryPartI/README.md#s0-5).

<a id="bounded-height-landau-page-theorem-landau-page-bounded-height"></a>

### 0.6 Bounded-height Landau–Page theorem

[Read in Part I](../AnalyticNumberTheoryPartI/README.md#s0-6).

<a id="quadratic-real-zero-separation-from-one-quadratic-effective-zero-gap"></a>

### 0.7 Quadratic real-zero separation from one

[Read in Part I](../AnalyticNumberTheoryPartI/README.md#s0-7).

<a id="weighted-prime-sum-input-to-the-factorial-estimate-explicit-weighted-prime-sum"></a>

### 0.8 Weighted-prime sum input to the factorial estimate

[Read in Part I](../AnalyticNumberTheoryPartI/README.md#s0-8).

<a id="siegel-s-theorem-siegel-quadratic-lvalue"></a>

### 0.9 Siegel's theorem

[Read in Part I](../AnalyticNumberTheoryPartI/README.md#s0-9).

<a id="prime-number-input-prime-interval-three-x"></a>

### 0.10 Prime-number input

[Read in Part I](../AnalyticNumberTheoryPartI/README.md#s0-10).

<a id="mertens-s-first-theorem-and-p-n-log-p-p-o-log-log-n-mertens-first-theorem"></a>

### 0.11 Mertens's first theorem and Σ_{p | N} log p/p = O(log log N)

[Read in Part I](../AnalyticNumberTheoryPartI/README.md#s0-11).

<a id="effective-distance-of-a-quadratic-real-zero-from-one-effective-quadratic-zero-separation"></a>

### 0.12 Effective distance of a quadratic real zero from one

[Read in Part I](../AnalyticNumberTheoryPartI/README.md#s0-12).

<a id="exceptional-quadratic-squareclasses-exceptional-squareclasses"></a>

### 0.13 Exceptional quadratic squareclasses

[Read in Part I](../AnalyticNumberTheoryPartI/README.md#s0-13).

<a id="pole-cancelled-riemann-xi-riemann-xi"></a>

### 0.14 Pole-cancelled Riemann xi

[Read in Part I](../AnalyticNumberTheoryPartI/README.md#s0-14).

<a id="elementary-canonical-factors-of-every-genus-canonical-factor"></a>

### 0.15 Elementary canonical factors of every genus

[Read in Part I](../AnalyticNumberTheoryPartI/README.md#s0-15).

<a id="mod-eight-prime-mass-mod-eight-interval-mass"></a>

### 0.16 Mod-eight prime mass

[Read in Part I](../AnalyticNumberTheoryPartI/README.md#s0-16).

<a id="two-real-zero-inequality-two-real-zero-separation"></a>

### 0.17 Two-real-zero inequality

[Read in Part I](../AnalyticNumberTheoryPartI/README.md#s0-17).

<a id="effective-character-prime-number-estimate-character-weighted-pnt"></a>

### 0.18 Effective character prime-number estimate

[Read in Part I](../AnalyticNumberTheoryPartI/README.md#s0-18).

<a id="explicit-reciprocal-prime-estimate-explicit-prime-reciprocal"></a>

### 0.19 Explicit reciprocal-prime estimate

[Read in Part I](../AnalyticNumberTheoryPartI/README.md#s0-19).

<a id="weighted-prime-sum-on-an-interval-weighted-prime-interval"></a>

### 0.20 Weighted prime sum on an interval

[Read in Part I](../AnalyticNumberTheoryPartI/README.md#s0-20).

<a id="mertens-sum-and-product-inputs-mertens-prime-reciprocal"></a>

### 0.21 Mertens's second theorem: the reciprocal-prime sum

[Read in Part I](../AnalyticNumberTheoryPartI/README.md#s0-21).

<a id="hadamard-factorization-in-order-at-most-one-order-one-hadamard"></a>

### 0.22 Origin-zero adapter for Hadamard factorization

[Read in Part I](../AnalyticNumberTheoryPartI/README.md#s0-22).

<a id="finite-order-hadamard-factorization-finite-order-hadamard"></a>

### 0.23 Finite-order Hadamard factorization

[Read in Part I](../AnalyticNumberTheoryPartI/README.md#s0-23).

<a id="proof-gamma-sector-remainder"></a>

[§0.23a: Higher derivatives of the Gamma remainder](../AnalyticNumberTheoryPartI/README.md#s0-23a).

<a id="repulsion-of-exceptional-conductors-exceptional-conductor-repulsion"></a>

### 0.24 Repulsion of exceptional conductors

[Read in Part I](../AnalyticNumberTheoryPartI/README.md#s0-24).

<a id="explicit-prime-euler-product-bound-explicit-plus-euler-product"></a>

### 0.25 Explicit prime Euler-product bound

[Read in Part I](../AnalyticNumberTheoryPartI/README.md#s0-25).

<a id="mertens-sum-and-product-inputs-mertens-prime-product"></a>

### 0.26 Mertens's third theorem: the Euler product

[Read in Part I](../AnalyticNumberTheoryPartI/README.md#s0-26).

<a id="landau-repulsion-for-exceptional-squareclasses-squareclass-exceptional-repulsion"></a>

### 0.27 Landau repulsion for exceptional squareclasses

[Read in Part I](../AnalyticNumberTheoryPartI/README.md#s0-27).

<a id="quadratic-prime-character-interval-estimate-quadratic-prime-character-interval"></a>

### 0.28 Quadratic prime-character interval estimate

[Read in Part I](../AnalyticNumberTheoryPartI/README.md#s0-28).

<a id="strict-derivative-positivity-requires-nonpolynomiality-paired-product-strict-derivatives"></a>

### 0.29 Strict derivative positivity requires nonpolynomiality

[Read in Part I](../AnalyticNumberTheoryPartI/README.md#s0-29).

<a id="proof-paired-imaginary-factors"></a>

[§0.29a: Pairing imaginary zeros](../AnalyticNumberTheoryPartI/README.md#s0-29a).

<a id="proof-paired-product-nonnegative-coefficients"></a>

[§0.29b: Nonnegative coefficients of the paired product](../AnalyticNumberTheoryPartI/README.md#s0-29b).

<a id="dirichlet-ray-dictionary"></a>

### 0.30 Rational Dirichlet-to-ray-class dictionary

[Read in Part I](../AnalyticNumberTheoryPartI/README.md#s0-30).

<a id="proof-primitive-character-unit-height-zero-count"></a>

[§0.30a: Conductor-uniform rational logarithmic-derivative adapter](../AnalyticNumberTheoryPartI/README.md#s0-30a).

<a id="mertens-product-input-mertens-product-comparison"></a>

### 0.31 Mertens product input

[Read in Part I](../AnalyticNumberTheoryPartI/README.md#s0-31).

<a id="proof-dirichlet-near-one-derivative"></a>

[§0.31a: Near-one Dirichlet derivative bounds](../AnalyticNumberTheoryPartI/README.md#s0-31a).

<a id="proof-quadratic-zero-gap-from-lvalue"></a>

[§0.31b: Quadratic zero separation from an L-value](../AnalyticNumberTheoryPartI/README.md#s0-31b).

<a id="siegel-walfisz-theorem-siegel-walfisz"></a>

### 0.32 Siegel–Walfisz theorem

[Read in Part I](../AnalyticNumberTheoryPartI/README.md#s0-32).

<a id="zero-free-zeta-strip-and-logarithmic-bounds-green-tao-zeta-strip"></a>

### 0.33 Zero-free zeta strip and logarithmic bounds

[Read in Part I](../AnalyticNumberTheoryPartI/README.md#s0-33).

<a id="layer-1-explicit-formulas-mean-values-and-conditional-prime-estimates"></a>

## Layer 1: Explicit formulas, mean values and conditional prime estimates

[Read in Part I](../AnalyticNumberTheoryPartI/README.md#layer-1).

<a id="reciprocal-zeta-on-the-line-one-reciprocal-zeta-line-one"></a>

### 1.1 Reciprocal zeta on the line one

[Read in Part I](../AnalyticNumberTheoryPartI/README.md#s1-1).

<a id="davenport-uniform-m-bius-exponential-cancellation-davenport-mobius-cancellation"></a>

### 1.2 Davenport uniform Möbius exponential cancellation

[Read in Part I](../AnalyticNumberTheoryPartI/README.md#s1-2).

<a id="proof-mobius-major-minor"></a>

[§1.2a: Uniform Möbius major/minor arcs](../AnalyticNumberTheoryPartI/README.md#s1-2a).

<a id="admissible-weil-test-function-weil-test-function"></a>

### 1.3 Admissible Weil test function

[Read in Part I](../AnalyticNumberTheoryPartI/README.md#s1-3).

<a id="half-interval-explicit-formula-and-low-zero-safe-bound-character-half-interval-formula"></a>

### 1.4 Half-interval explicit formula and low-zero-safe bound

[Read in Part I](../AnalyticNumberTheoryPartI/README.md#s1-4).

<a id="proof-character-subtracted-perron"></a>

[§1.4a: Primitive-character subtracted Perron contour](../AnalyticNumberTheoryPartI/README.md#s1-4a).

<a id="proof-zeta-log-derivative-right"></a>

[§1.4b: Bounded right-edge logarithmic derivative](../AnalyticNumberTheoryPartI/README.md#s1-4b).

<a id="proof-low-zero-safe-interval-kernel"></a>

[§1.4c: Low-zero-safe interval kernel](../AnalyticNumberTheoryPartI/README.md#s1-4c).

<a id="proof-zero-weight-sum"></a>

[§1.4d: Logarithmic-square sum of zero weights](../AnalyticNumberTheoryPartI/README.md#s1-4d).

<a id="mean-square-of-a-dirichlet-polynomial-dirichlet-polynomial-mean-square"></a>

### 1.5 Mean square of a Dirichlet polynomial

[Read in Part I](../AnalyticNumberTheoryPartI/README.md#s1-5).

<a id="proof-weighted-hilbert-inequality"></a>

[§1.5a: Weighted finite Hilbert inequality](../AnalyticNumberTheoryPartI/README.md#s1-5a).

<a id="riemann-and-generalized-riemann-hypotheses-as-statements-generalized-riemann-hypothesis"></a>

### 1.6 Riemann and generalized Riemann hypotheses as statements

[Read in Part I](../AnalyticNumberTheoryPartI/README.md#s1-6).

<a id="selberg-zero-density-input-selberg-zero-density"></a>

### 1.7 Selberg zero-density input

[Read in Part I](../AnalyticNumberTheoryPartI/README.md#s1-7).

<a id="weil-s-explicit-formula-mestre-s-formalism-mestre-weil-explicit-formula"></a>

### 1.8 Weil's explicit formula (Mestre's formalism)

[Read in Part I](../AnalyticNumberTheoryPartI/README.md#s1-8).

<a id="prime-error-terms-under-rh-and-grh-conditional-prime-error-terms"></a>

### 1.9 Prime error terms under RH and GRH

[Read in Part I](../AnalyticNumberTheoryPartI/README.md#s1-9).

<a id="layer-2-hecke-and-artin-comparisons-and-quantitative-number-field-estimates"></a>

## Layer 2: Hecke and Artin comparisons and quantitative number-field estimates

[Read in Part I](../AnalyticNumberTheoryPartI/README.md#layer-2).

<a id="hecke-series-and-tate-integral-comparison-hecke-L-function-euler-product-comparison"></a>

### 2.3 Hecke series and Tate integral comparison

[Read in Part I](../AnalyticNumberTheoryPartI/README.md#s2-3).

<a id="hecke-boundary-adapter-for-landau-positivity-landau-nonnegative-logarithm"></a>

### 2.4 Hecke boundary adapter for Landau positivity

[Read in Part I](../AnalyticNumberTheoryPartI/README.md#s2-4).

<a id="dedekind-continuation-and-real-side-comparison-dedekind-zeta-continuation-and-residue"></a>

### 2.5 Dedekind continuation and real-side comparison

[Read in Part I](../AnalyticNumberTheoryPartI/README.md#s2-5).

<a id="sufficient-conductor-discriminant-estimate-artin-conductor-bound"></a>

### 2.6 Sufficient conductor-discriminant estimate

[Read in Part I](../AnalyticNumberTheoryPartI/README.md#s2-6).

<a id="quadratic-zeta-factorization-and-the-residue-quotient-quadratic-zeta-factorization"></a>

### 2.7 Quadratic zeta factorization and the residue quotient

[Read in Part I](../AnalyticNumberTheoryPartI/README.md#s2-7).

<a id="partial-ideal-zeta-series-partial-ideal-zeta"></a>

### 2.8 Partial ideal zeta series

[Read in Part I](../AnalyticNumberTheoryPartI/README.md#s2-8).

<a id="lemma-4-4-zaman-s-effective-lower-bound-for-prime-ideals-effective-prime-ideal-lower"></a>

### 2.9 Lemma 4.4 (Zaman's effective lower bound for prime ideals)

[Read in Part I](../AnalyticNumberTheoryPartI/README.md#s2-9).

<a id="proof-zaman-35-19"></a>

[§2.9a: The exact 35/19 prime-ideal adapter](../AnalyticNumberTheoryPartI/README.md#s2-9a).

<a id="imaginary-quadratic-genus-character-classification-imaginary-genus-character-dictionary"></a>

### 2.10 Imaginary quadratic genus-character classification

[Read in Part I](../AnalyticNumberTheoryPartI/README.md#s2-10).

<a id="artin-local-polynomial-artin-local-polynomial"></a>

### 2.11 Artin local polynomial

[Read in Part I](../AnalyticNumberTheoryPartI/README.md#s2-11).

<a id="primitive-hecke-functional-equation-normalization-hecke-primitive-functional-equation"></a>

### 2.12 Primitive Hecke functional-equation normalization

[Read in Part I](../AnalyticNumberTheoryPartI/README.md#s2-12).

<a id="ideal-character-hecke-l-function-class-character-lseries-comparison"></a>

### 2.13 Ideal-character Hecke L-function

[Read in Part I](../AnalyticNumberTheoryPartI/README.md#s2-13).

<a id="siegel-lower-bound-and-regulator-conversion-real-quadratic-class-regulator-lower"></a>

### 2.14 Siegel lower bound for real quadratic class number times regulator

[Read in Part I](../AnalyticNumberTheoryPartI/README.md#s2-14).

<a id="siegel-lower-bound-and-regulator-conversion-imaginary-quadratic-class-number-lower"></a>

### 2.15 Siegel lower bound for imaginary quadratic class numbers

[Read in Part I](../AnalyticNumberTheoryPartI/README.md#s2-15).

<a id="explicit-residue-bound-for-dedekind-zeta-functions-louboutin-louboutin-dedekind-residue-upper"></a>

### 2.16 Explicit residue bound for Dedekind zeta functions (Louboutin)

[Read in Part I](../AnalyticNumberTheoryPartI/README.md#s2-16).

<a id="proof-louboutin-positive-mellin"></a>

[§2.16a: Positive Mellin comparison with the sharp residue constant](../AnalyticNumberTheoryPartI/README.md#s2-16a).

<a id="imaginary-quadratic-completion-and-root-number-imaginary-quadratic-root-number-one"></a>

### 2.17 Imaginary quadratic completion and root number

[Read in Part I](../AnalyticNumberTheoryPartI/README.md#s2-17).

<a id="proof-dedekind-completed-functional-equation"></a>

[§2.17a: Dedekind completed-functional-equation comparison](../AnalyticNumberTheoryPartI/README.md#s2-17a).

<a id="imaginary-quadratic-class-number-value-at-one-imaginary-quadratic-lvalue-one"></a>

### 2.18 Imaginary quadratic class-number value at one

[Read in Part I](../AnalyticNumberTheoryPartI/README.md#s2-18).

<a id="proof-quadratic-residue-quotient"></a>

[§2.18a: Quadratic Hecke value as residue quotient](../AnalyticNumberTheoryPartI/README.md#s2-18a).

<a id="artin-euler-series-artin-euler-series"></a>

### 2.19 Artin Euler series

[Read in Part I](../AnalyticNumberTheoryPartI/README.md#s2-19).

<a id="negative-even-zeros-of-the-continuation-dedekind-negative-even-zero"></a>

### 2.20 Negative even zeros of the continuation

[Read in Part I](../AnalyticNumberTheoryPartI/README.md#s2-20).

<a id="canonical-ray-character-comparison-and-the-quadratic-endpoint-hecke-nonvanishing-on-line-one"></a>

### 2.21 Canonical ray-character comparison and the quadratic endpoint

[Read in Part I](../AnalyticNumberTheoryPartI/README.md#s2-21).

<a id="proof-ray-class-product-nonvanishing"></a>

[§2.21a: Ray-class product has no boundary zeros](../AnalyticNumberTheoryPartI/README.md#s2-21a).

<a id="proof-ray-character-log-coefficients"></a>

[§2.21b: Nonnegative ray-character logarithmic coefficients](../AnalyticNumberTheoryPartI/README.md#s2-21b).

<a id="proof-nonreal-hecke-at-one"></a>

[§2.21c: Nonreal Hecke characters are nonzero at one](../AnalyticNumberTheoryPartI/README.md#s2-21c).

<a id="proof-quadratic-auxiliary-positive-factors"></a>

[§2.21d: Positive quadratic auxiliary Euler factors](../AnalyticNumberTheoryPartI/README.md#s2-21d).

<a id="proof-quadratic-auxiliary-holomorphy"></a>

[§2.21e: Auxiliary holomorphy under vanishing at one](../AnalyticNumberTheoryPartI/README.md#s2-21e).

<a id="proof-quadratic-landau-contradiction"></a>

[§2.21f: Landau contradiction for a quadratic character](../AnalyticNumberTheoryPartI/README.md#s2-21f).

<a id="uniform-finite-order-hecke-convexity-primitive-hecke-convexity"></a>

### 2.22 Explicit degree-uniform Hecke convexity

[Read in Part I](../AnalyticNumberTheoryPartI/README.md#s2-22).

<a id="logarithmic-functional-equation-at-zero-and-one-quadratic-hecke-log-functional-equation"></a>

### 2.23 Logarithmic functional equation at zero and one

[Read in Part I](../AnalyticNumberTheoryPartI/README.md#s2-23).

<a id="hecke-cm-partial-zeta-identity-cm-partial-zeta-period"></a>

### 2.24 Hecke CM partial-zeta identity

[Read in Part I](../AnalyticNumberTheoryPartI/README.md#s2-24).

<a id="hecke-positive-sign-real-quadratic-formula-real-even-partial-zeta-period"></a>

### 2.25 Hecke positive-sign real quadratic formula

[Read in Part I](../AnalyticNumberTheoryPartI/README.md#s2-25).

<a id="genus-hecke-factorization-genus-lseries-factorization"></a>

### 2.26 Genus Hecke factorization

[Read in Part I](../AnalyticNumberTheoryPartI/README.md#s2-26).

<a id="hecke-negative-sign-real-quadratic-formula-real-odd-partial-zeta-period"></a>

### 2.27 Hecke negative-sign real quadratic formula

[Read in Part I](../AnalyticNumberTheoryPartI/README.md#s2-27).

<a id="imaginary-quadratic-class-number-value-at-zero-imaginary-quadratic-lvalue-zero"></a>

### 2.28 Imaginary quadratic class-number value at zero

[Read in Part I](../AnalyticNumberTheoryPartI/README.md#s2-28).

<a id="global-meromorphic-artin-continuation-brauer-meromorphic-continuation"></a>

### 2.29 Global meromorphic Artin continuation

[Read in Part I](../AnalyticNumberTheoryPartI/README.md#s2-29).

<a id="proof-artin-absolute-convergence"></a>

[§2.29a: Absolute convergence of Artin factors](../AnalyticNumberTheoryPartI/README.md#s2-29a).

<a id="proof-artin-induction-factor"></a>

[§2.29b: Induction identity including ramification](../AnalyticNumberTheoryPartI/README.md#s2-29b).

<a id="proof-artin-linear-hecke-comparison"></a>

[§2.29c: Linear Artin factors are Hecke factors](../AnalyticNumberTheoryPartI/README.md#s2-29c).

<a id="proof-artin-local-reciprocal-bound"></a>

[§2.29d: Uniform finite Artin factor bound](../AnalyticNumberTheoryPartI/README.md#s2-29d).

<a id="proof-artin-ramified-induction-polynomial"></a>

[§2.29e: Ramified local Artin induction identity](../AnalyticNumberTheoryPartI/README.md#s2-29e).

<a id="imprimitive-hecke-deleted-factors-imprimitive-hecke-factors"></a>

### 2.30 Imprimitive Hecke deleted factors

[Read in Part I](../AnalyticNumberTheoryPartI/README.md#s2-30).

<a id="sign-of-the-quadratic-gauss-sum-from-the-dedekind-functional-equation-quadratic-gauss-sum-sign"></a>

### 2.31 Sign of the quadratic Gauss sum from the Dedekind functional equation

[Read in Part I](../AnalyticNumberTheoryPartI/README.md#s2-31).

<a id="artin-continuation-near-the-line-one-artin-induction-versus-artin-holomorphy"></a>

### 2.32 Artin continuation near the line one

[Read in Part I](../AnalyticNumberTheoryPartI/README.md#s2-32).

<a id="proof-mth-root-gluing"></a>

[§2.32a: Gluing m-th roots across the line Re s = 1](../AnalyticNumberTheoryPartI/README.md#s2-32a).

<a id="proof-artin-direct-sum-factor"></a>

[§2.32b: Direct sums of Artin local factors](../AnalyticNumberTheoryPartI/README.md#s2-32b).

<a id="proof-analytic-root-on-disc"></a>

[§2.32c: Analytic root on a nonvanishing disc](../AnalyticNumberTheoryPartI/README.md#s2-32c).

<a id="proof-boundary-disc-overlap"></a>

[§2.32d: Overlaps of boundary-centred discs](../AnalyticNumberTheoryPartI/README.md#s2-32d).

<a id="proof-normal-closure-conductors"></a>

[§2.32e: Normal-closure discriminants and conductor budgets](../AnalyticNumberTheoryPartI/README.md#s2-32e).

<a id="proof-bounded-degree-residue-lower"></a>

[§2.32f: Fixed-degree residue lower bound, including nonnormal fields](../AnalyticNumberTheoryPartI/README.md#s2-32f).

<a id="proof-regularized-hecke-endpoint-family"></a>

[§2.32g: Uniform regularized finite-order Hecke endpoints](../AnalyticNumberTheoryPartI/README.md#s2-32g).

<a id="bounded-degree-brauer-siegel-bounded-degree-brauer-siegel"></a>

### 2.33 Bounded-degree Brauer-Siegel

[Read in Part I](../AnalyticNumberTheoryPartI/README.md#s2-33).

<a id="two-sided-subpolynomial-values-at-one-artin-value-one-subpower"></a>

### 2.34 Two-sided subpolynomial values at one

[Read in Part I](../AnalyticNumberTheoryPartI/README.md#s2-34).

<a id="a-fixed-small-circle-gives-a-subpolynomial-derivative-quadratic-hecke-cauchy-derivative"></a>

### 2.35 A fixed small circle gives a subpolynomial derivative

[Read in Part I](../AnalyticNumberTheoryPartI/README.md#s2-35).

<a id="theorem3-negative-factors-negative-genus-core-period"></a>

### 2.36 Theorem3 negative factors

[Read in Part I](../AnalyticNumberTheoryPartI/README.md#s2-36).

<a id="theorem3-positive-factors-positive-genus-geodesic-period"></a>

### 2.37 Theorem3 positive factors

[Read in Part I](../AnalyticNumberTheoryPartI/README.md#s2-37).

<a id="theorem3-cm-factors-mixed-genus-cm-period"></a>

### 2.38 Theorem3 CM factors

[Read in Part I](../AnalyticNumberTheoryPartI/README.md#s2-38).

<a id="ray-class-l-function-zero-density-estimate-ray-class-zero-density"></a>

### 2.39 Ray-class L-function zero-density estimate

[Read in Part I](../AnalyticNumberTheoryPartI/README.md#s2-39).

<a id="heilbronn-s-theorem-on-real-zeros-of-dedekind-zeta-functions-heilbronn-simple-real-zero"></a>

### 2.40 Heilbronn's theorem on real zeros of Dedekind zeta functions

[Read in Part I](../AnalyticNumberTheoryPartI/README.md#s2-40).

<a id="proof-aramata-positive-cyclic-decomposition"></a>

[§2.40a: Positive cyclic decomposition of the augmentation character](../AnalyticNumberTheoryPartI/README.md#s2-40a).

<a id="proof-aramata-entire-quotient"></a>

[§2.40b: Aramata entire quotient](../AnalyticNumberTheoryPartI/README.md#s2-40b).

<a id="eisenstein-series-at-a-cm-point-equals-a-partial-zeta-function-gross-zagier-cm-eisenstein-comparison"></a>

### 2.41 Eisenstein series at a CM point equals a partial zeta function

[Read in Part I](../AnalyticNumberTheoryPartI/README.md#s2-41).

<a id="artin-holomorphy-as-a-hypothesis-artin-holomorphy-hypothesis"></a>

### 2.42 Artin holomorphy as a hypothesis

[Read in Part I](../AnalyticNumberTheoryPartI/README.md#s2-42).

<a id="extended-riemann-hypothesis-for-dedekind-and-hecke-l-functions-extended-riemann-hypothesis"></a>

### 2.43 Extended Riemann hypothesis for Dedekind and Hecke L-functions

[Read in Part I](../AnalyticNumberTheoryPartI/README.md#s2-43).

<a id="zero-free-regions-for-dedekind-zeta-and-hecke-l-functions-dedekind-hecke-zero-free-region"></a>

### 2.44 Explicit exceptional-zero region for an abelian character product

[Read in Part I](../AnalyticNumberTheoryPartI/README.md#s2-44).

<a id="logarithmic-functional-equation-artin-log-functional-equation"></a>

### 2.45 Logarithmic functional equation

[Read in Part I](../AnalyticNumberTheoryPartI/README.md#s2-45).

<a id="factorwise-logarithmic-derivative-at-one-artin-log-derivative-one"></a>

### 2.46 Factorwise logarithmic derivative at one

[Read in Part I](../AnalyticNumberTheoryPartI/README.md#s2-46).

<a id="uniform-subpolynomial-dedekind-residues-bounded-degree-residue-bounds"></a>

### 2.47 Uniform subpolynomial Dedekind residues

[Read in Part I](../AnalyticNumberTheoryPartI/README.md#s2-47).

<a id="eisenstein-weyl-sums-bounded-by-dirichlet-l-values-eisenstein-weyl-lvalue-bound"></a>

### 2.48 Eisenstein Weyl sums bounded by Dirichlet L-values

[Read in Part I](../AnalyticNumberTheoryPartI/README.md#s2-48).

<a id="many-split-primes-outside-a-small-quadratic-exception-set-most-quadratic-many-split-primes"></a>

### 2.49 Many split primes outside a small quadratic exception set

[Read in Part I](../AnalyticNumberTheoryPartI/README.md#s2-49).

<a id="effective-chebotarev-density-theorem-effective-chebotarev"></a>

### 2.50 Effective Chebotarev density theorem

[Read in Part I](../AnalyticNumberTheoryPartI/README.md#s2-50).

<a id="two-sided-quadratic-hecke-value-bound-quadratic-hecke-value-one"></a>

### 2.51 Two-sided quadratic Hecke value bound

[Read in Part I](../AnalyticNumberTheoryPartI/README.md#s2-51).

<a id="subpolynomial-logarithmic-derivative-at-one-quadratic-hecke-log-derivative-one"></a>

### 2.52 Subpolynomial logarithmic derivative at one

[Read in Part I](../AnalyticNumberTheoryPartI/README.md#s2-52).

<a id="layer-3-multiplicative-means-smooth-numbers-and-moments"></a>

## Layer 3: Multiplicative means, smooth numbers and moments

[Read in Part I](../AnalyticNumberTheoryPartI/README.md#layer-3).

<a id="explicit-divisor-subpower-bound-explicit-divisor-subpower-bound"></a>

### 3.1 Explicit divisor subpower bound

[Read in Part I](../AnalyticNumberTheoryPartI/README.md#s3-1).

<a id="proof-prime-power-log-bound"></a>

[§3.1a: Uniform prime-power divisor bound](../AnalyticNumberTheoryPartI/README.md#s3-1a).

<a id="proof-large-prime-power-bound"></a>

[§3.1b: Large-prime divisor factor bound](../AnalyticNumberTheoryPartI/README.md#s3-1b).

<a id="proof-divisor-bound-from-local-bounds"></a>

[§3.1c: Divisor bounds from local factors](../AnalyticNumberTheoryPartI/README.md#s3-1c).

<a id="largest-prime-factor-of-a-quadratic-conductor-quadratic-conductor-largest-prime"></a>

### 3.2 Largest prime factor of a quadratic conductor

[Read in Part I](../AnalyticNumberTheoryPartI/README.md#s3-2).

<a id="uniform-coefficient-bound-by-a-divisor-function-ideal-coefficient-divisor-majorant"></a>

### 3.3 Uniform coefficient bound by a divisor function

[Read in Part I](../AnalyticNumberTheoryPartI/README.md#s3-3).

<a id="subpolynomial-fixed-order-divisor-function-fixed-order-divisor-subpower"></a>

### 3.4 Subpolynomial fixed-order divisor function

[Read in Part I](../AnalyticNumberTheoryPartI/README.md#s3-4).

<a id="products-of-distinct-medium-primes-medium-prime-products"></a>

### 3.5 Products of distinct medium primes

[Read in Part I](../AnalyticNumberTheoryPartI/README.md#s3-5).

<a id="inverse-totient-counting-input-inverse-totient-count"></a>

### 3.6 Inverse-totient counting input

[Read in Part I](../AnalyticNumberTheoryPartI/README.md#s3-6).

<a id="maximal-order-divisor-upper-bound-divisor-maximal-order"></a>

### 3.7 Maximal-order divisor upper bound

[Read in Part I](../AnalyticNumberTheoryPartI/README.md#s3-7).

<a id="proof-divisor-small-prime-log-bound"></a>

[§3.7a: Small-prime divisor logarithm](../AnalyticNumberTheoryPartI/README.md#s3-7a).

<a id="proof-divisor-large-prime-log-bound"></a>

[§3.7b: Large-prime divisor logarithm](../AnalyticNumberTheoryPartI/README.md#s3-7b).

<a id="proof-divisor-small-prime-loss"></a>

[§3.7c: Vanishing small-prime contribution](../AnalyticNumberTheoryPartI/README.md#s3-7c).

<a id="even-von-mangoldt-function-even-von-mangoldt"></a>

### 3.8 Even von Mangoldt function

[Read in Part I](../AnalyticNumberTheoryPartI/README.md#s3-8).

<a id="coprime-m-bius-sums-from-the-prime-number-theorem-3-6-coprime-mobius-log-sum"></a>

### 3.9 Coprime Möbius sums weighted by log t/t

[Read in Part I](../AnalyticNumberTheoryPartI/README.md#s3-9).

<a id="gamma-euler-product-truncation-gamma-prime-product-tail"></a>

### 3.10 Gamma Euler-product truncation

[Read in Part I](../AnalyticNumberTheoryPartI/README.md#s3-10).

<a id="size-of-1-n-and-of-the-divisor-function-3-7-totient-reciprocal-bound"></a>

### 3.11 Size of 1/φ(n) and of the divisor function (3.7)

[Read in Part I](../AnalyticNumberTheoryPartI/README.md#s3-11).

<a id="coprime-m-bius-sums-from-the-prime-number-theorem-3-6-coprime-mobius-reciprocal-sum"></a>

### 3.12 Coprime Möbius sums weighted by 1/t

[Read in Part I](../AnalyticNumberTheoryPartI/README.md#s3-12).

<a id="proof-compact-selberg-delange"></a>

[§3.12a: Compact-parameter multiplicative transfer](../AnalyticNumberTheoryPartI/README.md#s3-12a).

<a id="proof-eisenstein-norm-criterion"></a>

[§3.12b: Eisenstein norm criterion](../AnalyticNumberTheoryPartI/README.md#s3-12b).

<a id="landau-ramanujan-count-of-sums-of-two-squares-landau-sum-two-squares-count"></a>

### 3.13 Landau–Ramanujan count of sums of two squares

[Read in Part I](../AnalyticNumberTheoryPartI/README.md#s3-13).

<a id="landau-upper-bound-for-shifted-eisenstein-norms-landau-three-square-form-count"></a>

### 3.14 Landau upper bound for shifted Eisenstein norms

[Read in Part I](../AnalyticNumberTheoryPartI/README.md#s3-14).

<a id="elementary-shifted-square-count-shifted-square-count"></a>

### 3.15 Elementary shifted-square count

[Read in Part I](../AnalyticNumberTheoryPartI/README.md#s3-15).

<a id="counts-supported-on-half-the-reduced-prime-classes-half-density-prime-support-count"></a>

### 3.16 Counts supported on half the reduced prime classes

[Read in Part I](../AnalyticNumberTheoryPartI/README.md#s3-16).

<a id="logarithmic-weight-of-prime-divisors-prime-divisor-log-weight"></a>

### 3.17 Logarithmic weight of prime divisors

[Read in Part I](../AnalyticNumberTheoryPartI/README.md#s3-17).

<a id="pretentious-distance-pretentious-distance"></a>

### 3.18 Pretentious distance

[Read in Part I](../AnalyticNumberTheoryPartI/README.md#s3-18).

<a id="proof-pretentious-product-triangle"></a>

[§3.18a: Triangle inequality for pretentious products](../AnalyticNumberTheoryPartI/README.md#s3-18a).

<a id="proof-pretentious-square-nonnegative"></a>

[§3.18b: Squared pretentious-distance formula](../AnalyticNumberTheoryPartI/README.md#s3-18b).

<a id="proof-unit-disc-product-distance"></a>

[§3.18c: Unit-disc product distance inequality](../AnalyticNumberTheoryPartI/README.md#s3-18c).

<a id="logarithmic-derivative-coefficient-class-halasz-coefficient-class"></a>

### 3.19 Logarithmic-derivative coefficient class

[Read in Part I](../AnalyticNumberTheoryPartI/README.md#s3-19).

<a id="smooth-number-counting-function-smooth-count"></a>

### 3.20 Smooth-number counting function

[Read in Part I](../AnalyticNumberTheoryPartI/README.md#s3-20).

<a id="dickman-function-dickman-function"></a>

### 3.21 Dickman function

[Read in Part I](../AnalyticNumberTheoryPartI/README.md#s3-21).

<a id="dirichlet-divisor-average-dirichlet-divisor-average"></a>

### 3.22 Dirichlet divisor average

[Read in Part I](../AnalyticNumberTheoryPartI/README.md#s3-22).

<a id="proof-harmonic-euler-remainder"></a>

[§3.22a: Harmonic sum remainder](../AnalyticNumberTheoryPartI/README.md#s3-22a).

<a id="proof-divisor-hyperbola-identity"></a>

[§3.22b: Divisor hyperbola identity](../AnalyticNumberTheoryPartI/README.md#s3-22b).

<a id="second-moment-of-zeta-zeta-second-moment"></a>

### 3.23 Second moment of zeta

[Read in Part I](../AnalyticNumberTheoryPartI/README.md#s3-23).

<a id="fourth-moment-of-zeta-zeta-fourth-moment"></a>

### 3.24 Fourth moment of zeta

[Read in Part I](../AnalyticNumberTheoryPartI/README.md#s3-24).

<a id="beurling-prime-system-beurling-prime-system"></a>

### 3.25 Beurling prime system

[Read in Part I](../AnalyticNumberTheoryPartI/README.md#s3-25).

<a id="uniform-divisor-subpower-bound-uniform-divisor-subpower-bound"></a>

### 3.26 Uniform divisor subpower bound

[Read in Part I](../AnalyticNumberTheoryPartI/README.md#s3-26).

<a id="uniform-bounded-norm-ideal-count-bounded-norm-ideal-count"></a>

### 3.27 Uniform bounded-norm ideal count

[Read in Part I](../AnalyticNumberTheoryPartI/README.md#s3-27).

<a id="cardinality-of-medium-prime-products-medium-prime-cardinality"></a>

### 3.28 Cardinality of medium-prime products

[Read in Part I](../AnalyticNumberTheoryPartI/README.md#s3-28).

<a id="proof-medium-prime-product-card"></a>

[§3.28a: Distinct-product cardinality](../AnalyticNumberTheoryPartI/README.md#s3-28a).

<a id="truncated-von-mangoldt-function-truncated-von-mangoldt"></a>

### 3.29 Truncated von Mangoldt function

[Read in Part I](../AnalyticNumberTheoryPartI/README.md#s3-29).

<a id="shifted-coprime-m-bius-sum-shifted-coprime-mobius-sum"></a>

### 3.30 Shifted coprime Möbius sum

[Read in Part I](../AnalyticNumberTheoryPartI/README.md#s3-30).

<a id="asymptotic-count-of-the-three-exceptional-families-landau-exception-union"></a>

### 3.31 Asymptotic count of the three exceptional families

[Read in Part I](../AnalyticNumberTheoryPartI/README.md#s3-31).

<a id="proof-norm-family-intersection"></a>

[§3.31a: Shifted norm intersection sieve](../AnalyticNumberTheoryPartI/README.md#s3-31a).

<a id="restricted-squarefree-landau-asymptotic-restricted-squarefree-landau-count"></a>

### 3.32 Restricted squarefree Landau asymptotic

[Read in Part I](../AnalyticNumberTheoryPartI/README.md#s3-32).

<a id="pretentious-hal-sz-mean-bound-halasz-classical"></a>

### 3.33 Pretentious Halász mean bound

[Read in Part I](../AnalyticNumberTheoryPartI/README.md#s3-33).

<a id="dickman-fixed-u-asymptotic-dickman-fixed-u"></a>

### 3.34 Dickman fixed-u asymptotic

[Read in Part I](../AnalyticNumberTheoryPartI/README.md#s3-34).

<a id="proof-smooth-largest-prime-decomposition"></a>

[§3.34a: Largest-prime-factor smooth decomposition](../AnalyticNumberTheoryPartI/README.md#s3-34a).

<a id="rankin-smooth-number-upper-bound-smooth-rankin-bound"></a>

### 3.35 Rankin smooth-number upper bound

[Read in Part I](../AnalyticNumberTheoryPartI/README.md#s3-35).

<a id="proof-smooth-finite-euler-series"></a>

[§3.35a: Finite-prime smooth Dirichlet series](../AnalyticNumberTheoryPartI/README.md#s3-35a).

<a id="zeta-function-of-an-indexed-beurling-system-beurling-zeta"></a>

### 3.36 Zeta function of an indexed Beurling system

[Read in Part I](../AnalyticNumberTheoryPartI/README.md#s3-36).

<a id="proof-beurling-count-growth"></a>

[§3.36a: Beurling counting growth from summability](../AnalyticNumberTheoryPartI/README.md#s3-36a).

<a id="proof-shiu-rough-progression"></a>

[§3.36b: Rough progression sieve with its remainder](../AnalyticNumberTheoryPartI/README.md#s3-36b).

<a id="shiu-bound-for-the-hal-sz-coefficient-class-shiu-short-interval-bound"></a>

### 3.37 Shiu bound for the Halász coefficient class

[Read in Part I](../AnalyticNumberTheoryPartI/README.md#s3-37).

<a id="eventual-unit-constant-divisor-bound-eventual-divisor-subpower-bound"></a>

### 3.38 Eventual unit-constant divisor bound

[Read in Part I](../AnalyticNumberTheoryPartI/README.md#s3-38).

<a id="proof-absorb-divisor-bound-constant"></a>

[§3.38a: Absorption of the divisor-bound constant](../AnalyticNumberTheoryPartI/README.md#s3-38a).

<a id="von-mangoldt-truncation-error-mangoldt-truncation-error"></a>

### 3.39 Von Mangoldt truncation error

[Read in Part I](../AnalyticNumberTheoryPartI/README.md#s3-39).

<a id="wintner-type-mean-over-prime-divisors-prime-divisor-product-mean"></a>

### 3.40 Wintner-type mean over prime divisors

[Read in Part I](../AnalyticNumberTheoryPartI/README.md#s3-40).

<a id="proof-prime-divisor-integrated-mean"></a>

[§3.40a: Integrated prime-divisor mean](../AnalyticNumberTheoryPartI/README.md#s3-40a).

<a id="restricted-squarefree-sathe-selberg-bounds-restricted-sathe-selberg-count"></a>

### 3.41 Restricted squarefree Sathe–Selberg bounds

[Read in Part I](../AnalyticNumberTheoryPartI/README.md#s3-41).

<a id="beurling-pnt-with-all-logarithmic-remainders-beurling-all-log-remainders"></a>

### 3.42 Beurling PNT with all logarithmic remainders

[Read in Part I](../AnalyticNumberTheoryPartI/README.md#s3-42).

<a id="proof-beurling-smooth-remainder"></a>

[§3.42a: Smooth Laplace boundary and one-sided remainder](../AnalyticNumberTheoryPartI/README.md#s3-42a).

<a id="proof-beurling-zeta-product"></a>

[§3.42b: Beurling zeta and Euler product](../AnalyticNumberTheoryPartI/README.md#s3-42b).

<a id="proof-beurling-prime-power-correction"></a>

[§3.42c: Beurling higher-prime-power correction](../AnalyticNumberTheoryPartI/README.md#s3-42c).

<a id="mangoldt-weight-in-a-fourier-window-mangoldt-short-window-bound"></a>

### 3.43 Mangoldt weight in a Fourier window

[Read in Part I](../AnalyticNumberTheoryPartI/README.md#s3-43).

<a id="uniform-cancellation-of-the-truncation-error-e-z-corollary-3-3-positive-truncation-error-cancellation"></a>

### 3.44 Uniform cancellation of the truncation error E_z (Corollary 3.3)

[Read in Part I](../AnalyticNumberTheoryPartI/README.md#s3-44).

<a id="proof-two-sided-truncation-error"></a>

[§3.44a: Two-sided error and the zero term](../AnalyticNumberTheoryPartI/README.md#s3-44a).

<a id="hal-sz-integral-mean-bound-halasz-integral-bound"></a>

### 3.45 Halász integral mean bound

[Read in Part I](../AnalyticNumberTheoryPartI/README.md#s3-45).

<a id="proof-mangoldt-polynomial-mean-square"></a>

[§3.45a: Prime-weighted Dirichlet-polynomial mean bound](../AnalyticNumberTheoryPartI/README.md#s3-45a).

<a id="layer-4-lerch-continuation-complex-hurwitz-zeta-and-barnes-g"></a>

## Layer 4: Lerch continuation, complex Hurwitz zeta and Barnes G

[Read in Part II](../AnalyticNumberTheoryPartII/README.md#layer-4).

<a id="lerch-transcendent-lerch-transcendent"></a>

### 4.1 Lerch transcendent

[Read in Part II](../AnalyticNumberTheoryPartII/README.md#s4-1).

<a id="complex-parameter-hurwitz-series-complex-hurwitz-series"></a>

### 4.2 Complex-parameter Hurwitz series

[Read in Part II](../AnalyticNumberTheoryPartII/README.md#s4-2).

<a id="barnes-g-function-barnes-g-function"></a>

### 4.3 Barnes G-function

[Read in Part II](../AnalyticNumberTheoryPartII/README.md#s4-3).

<a id="proof-barnes-full-sector-remainder"></a>

[§4.3a: Barnes full-sector remainder](../AnalyticNumberTheoryPartII/README.md#s4-3a).

<a id="lerch-differential-equation-lerch-pde"></a>

### 4.4 Lerch differential equation

[Read in Part II](../AnalyticNumberTheoryPartII/README.md#s4-4).

<a id="proof-lerch-compact-series-bound"></a>

[§4.4a: Lerch compact convergence](../AnalyticNumberTheoryPartII/README.md#s4-4a).

<a id="proof-lerch-z-derivative"></a>

[§4.4b: Lerch lowering relation](../AnalyticNumberTheoryPartII/README.md#s4-4b).

<a id="proof-lerch-c-derivative"></a>

[§4.4c: Lerch raising relation](../AnalyticNumberTheoryPartII/README.md#s4-4c).

<a id="lerch-continuation-on-a-covering-lerch-cover-continuation"></a>

### 4.5 Lerch continuation on a covering

[Read in Part II](../AnalyticNumberTheoryPartII/README.md#s4-5).

<a id="proof-lerch-parameter-shift"></a>

[§4.5a: Lerch shift identity](../AnalyticNumberTheoryPartII/README.md#s4-5a).

<a id="proof-lerch-integral-representation"></a>

[§4.5b: Lerch integral representation](../AnalyticNumberTheoryPartII/README.md#s4-5b).

<a id="proof-complex-gamma-laplace"></a>

[§4.5c: Complex Gamma–Laplace adapter](../AnalyticNumberTheoryPartII/README.md#s4-5c).

<a id="proof-lerch-contour-cells"></a>

[§4.5d: Lerch contour cells and path continuation](../AnalyticNumberTheoryPartII/README.md#s4-5d).

<a id="proof-lerch-c-monodromy"></a>

[§4.5e: Monodromy around c=−n](../AnalyticNumberTheoryPartII/README.md#s4-5e).

<a id="proof-lerch-a-monodromy"></a>

[§4.5f: Monodromy around a=n](../AnalyticNumberTheoryPartII/README.md#s4-5f).

<a id="nonpositive-lerch-special-values-lerch-nonpositive-special-values"></a>

### 4.6 Nonpositive Lerch special values

[Read in Part II](../AnalyticNumberTheoryPartII/README.md#s4-6).

<a id="proof-lerch-zero-order-value"></a>

[§4.6a: Lerch at order zero](../AnalyticNumberTheoryPartII/README.md#s4-6a).

<a id="comparison-with-the-circle-valued-hurwitz-function-circle-hurwitz-import"></a>

### 4.7 Comparison with the circle-valued Hurwitz function

[Read in Part II](../AnalyticNumberTheoryPartII/README.md#s4-7).

<a id="periodic-zeta-and-lerch-normalization-exp-zeta-lerch-comparison"></a>

### 4.8 Periodic zeta and Lerch normalization

[Read in Part II](../AnalyticNumberTheoryPartII/README.md#s4-8).

<a id="even-lerch-functional-relation-lerch-even-functional-equation"></a>

### 4.9 Even Lerch functional relation

[Read in Part II](../AnalyticNumberTheoryPartII/README.md#s4-9).

<a id="proof-lerch-fourier-mellin"></a>

[§4.9a: Real Lerch Fourier–Mellin relation](../AnalyticNumberTheoryPartII/README.md#s4-9a).

<a id="odd-lerch-functional-relation-lerch-odd-functional-equation"></a>

### 4.10 Odd Lerch functional relation

[Read in Part II](../AnalyticNumberTheoryPartII/README.md#s4-10).

<a id="lerch-boundary-degeneration-lerch-boundary-degeneration"></a>

### 4.11 Lerch boundary degeneration

[Read in Part II](../AnalyticNumberTheoryPartII/README.md#s4-11).

<a id="complex-hurwitz-continuation-complex-hurwitz-continuation"></a>

### 4.12 Complex Hurwitz continuation

[Read in Part II](../AnalyticNumberTheoryPartII/README.md#s4-12).

<a id="proof-hurwitz-taylor-subtraction"></a>

[§4.12a: Uniform complex Hurwitz continuation by subtraction](../AnalyticNumberTheoryPartII/README.md#s4-12a).

<a id="arithmetic-and-barnes-factors-in-the-zeta-moment-conjecture-zeta-moment-constants"></a>

### 4.13 Arithmetic and Barnes factors in the zeta moment conjecture

[Read in Part II](../AnalyticNumberTheoryPartII/README.md#s4-13).

<a id="moment-model-as-a-conditional-comparison-moment-model-comparison"></a>

### 4.14 Moment model as a conditional comparison

[Read in Part II](../AnalyticNumberTheoryPartII/README.md#s4-14).

<a id="dirichlet-character-hurwitz-specialization-dirichlet-hurwitz-finite-sum"></a>

### 4.15 Dirichlet character Hurwitz specialization

[Read in Part II](../AnalyticNumberTheoryPartII/README.md#s4-15).

<a id="hurwitz-bernoulli-values-complex-hurwitz-bernoulli-values"></a>

### 4.16 Hurwitz Bernoulli values

[Read in Part II](../AnalyticNumberTheoryPartII/README.md#s4-16).

<a id="lerch-solvable-cover-descent-lerch-solvable-descent"></a>

### 4.17 Lerch solvable-cover descent

[Read in Part II](../AnalyticNumberTheoryPartII/README.md#s4-17).

<a id="proof-lerch-z-monodromy-shift"></a>

[§4.17a: Lerch z-loop monodromy and shifts](../AnalyticNumberTheoryPartII/README.md#s4-17a).

<a id="layer-5-double-dirichlet-series-and-binary-cubic-zeta-functions"></a>

## Layer 5: Double Dirichlet series and binary-cubic zeta functions

[Read in Part II](../AnalyticNumberTheoryPartII/README.md#layer-5).

<a id="the-four-real-characters-modulo-eight-characters-mod-eight"></a>

### 5.1 The four real characters modulo eight

[Read in Part II](../AnalyticNumberTheoryPartII/README.md#s5-1).

<a id="swap-of-double-series-variables-double-affine-swap"></a>

### 5.2 Swap of double-series variables

[Read in Part II](../AnalyticNumberTheoryPartII/README.md#s5-2).

<a id="quadratic-reflection-of-double-series-variables-double-affine-reflection"></a>

### 5.3 Quadratic reflection of double-series variables

[Read in Part II](../AnalyticNumberTheoryPartII/README.md#s5-3).

<a id="proof-cubic-lattice-majorant"></a>

[§5.3a: Unbounded-coordinate Schwartz lattice estimate](../AnalyticNumberTheoryPartII/README.md#s5-3a).

<a id="proof-cubic-wright-measures"></a>

[§5.3b: Wright GL₂ measure and reduction adapter](../AnalyticNumberTheoryPartII/README.md#s5-3b).

<a id="proof-cubic-local-distribution-continuation"></a>

[§5.3c: Local orbital distributions and their continuation boundary](../AnalyticNumberTheoryPartII/README.md#s5-3c).

<a id="proof-cubic-real-fourier-matrix"></a>

[§5.3d: Real binary-cubic Fourier matrix](../AnalyticNumberTheoryPartII/README.md#s5-3d).

<a id="proof-cubic-complex-fourier-factor"></a>

[§5.3e: Complex binary-cubic Fourier factor](../AnalyticNumberTheoryPartII/README.md#s5-3e).

<a id="cubic-action-discriminant"></a>

### 5.4 Binary-cubic action, discriminant and local orbit data

[Read in Part II](../AnalyticNumberTheoryPartII/README.md#s5-4).

<a id="proof-cubic-projective-parametrization"></a>

### 5.5 Cubic algebras and projective forms

[Read in Part II](../AnalyticNumberTheoryPartII/README.md#s5-5).

<a id="cubic-coefficient-finiteness"></a>

### 5.6 Discriminant fibres and weighted cubic coefficients

[Read in Part II](../AnalyticNumberTheoryPartII/README.md#s5-6).

<a id="cubic-uniform-field-count"></a>

### 5.7 Uniform small-degree field-discriminant count

[Read in Part II](../AnalyticNumberTheoryPartII/README.md#s5-7).

<a id="binary-cubic-local-zeta-integrals-pvs-local-zeta"></a>

### 5.8 Binary-cubic local zeta integrals

[Read in Part II](../AnalyticNumberTheoryPartII/README.md#s5-8).

<a id="signature-refined-cubic-shintani-zeta-functions-cubic-shintani-series"></a>

### 5.9 Signature-refined cubic Shintani zeta functions

[Read in Part II](../AnalyticNumberTheoryPartII/README.md#s5-9).

<a id="local-density-and-coefficient-conventions-agree-local-density-coefficient-comparison"></a>

### 5.10 Local density and coefficient conventions agree

[Read in Part II](../AnalyticNumberTheoryPartII/README.md#s5-10).

<a id="proof-local-measure-normalization"></a>

[§5.10a: Self-dual versus integral-normalized measures](../AnalyticNumberTheoryPartII/README.md#s5-10a).

<a id="proof-local-orbit-jacobian"></a>

[§5.10b: Binary cubic orbital Jacobian](../AnalyticNumberTheoryPartII/README.md#s5-10b).

<a id="the-selected-adelic-binary-cubic-zeta-integral-cubic-adelic-zeta"></a>

### 5.11 The selected adelic binary-cubic zeta integral

[Read in Part II](../AnalyticNumberTheoryPartII/README.md#s5-11).

<a id="ordinary-cubic-continuation-data-cubic-continuation-data"></a>

### 5.12 Ordinary cubic continuation data

[Read in Part II](../AnalyticNumberTheoryPartII/README.md#s5-12).

<a id="orders-in-a-fixed-tale-cubic-algebra-cubic-orders-generating-series"></a>

### 5.13 Orders in a fixed étale cubic algebra

[Read in Part II](../AnalyticNumberTheoryPartII/README.md#s5-13).

<a id="proof-local-split-orbit-factor"></a>

[§5.13a: Split local factor](../AnalyticNumberTheoryPartII/README.md#s5-13a).

<a id="proof-local-unramified-quadratic-factor"></a>

[§5.13b: Unramified quadratic local factor](../AnalyticNumberTheoryPartII/README.md#s5-13b).

<a id="proof-local-ramified-quadratic-factor"></a>

[§5.13c: Ramified quadratic local factor](../AnalyticNumberTheoryPartII/README.md#s5-13c).

<a id="proof-local-unramified-cubic-factor"></a>

[§5.13d: Unramified cubic local factor](../AnalyticNumberTheoryPartII/README.md#s5-13d).

<a id="proof-local-ramified-cubic-factor"></a>

[§5.13e: Ramified cubic local factor](../AnalyticNumberTheoryPartII/README.md#s5-13e).

<a id="proof-local-orbital-euler-factor"></a>

[§5.13f: Five local orbital Euler factors](../AnalyticNumberTheoryPartII/README.md#s5-13f).

<a id="the-selected-quadratic-double-dirichlet-series-quadratic-double-series"></a>

### 5.14 The selected quadratic double Dirichlet series

[Read in Part II](../AnalyticNumberTheoryPartII/README.md#s5-14).

<a id="quadratic-reciprocity-matrix-double-functional-system"></a>

### 5.15 Quadratic reciprocity matrix

[Read in Part II](../AnalyticNumberTheoryPartII/README.md#s5-15).

<a id="proof-characters-hadamard-orthogonality"></a>

[§5.15a: Mod-eight character matrix orthogonality](../AnalyticNumberTheoryPartII/README.md#s5-15a).

<a id="primitive-quadratic-twist-data-double-primitive-twist-data"></a>

### 5.16 Primitive quadratic twist data

[Read in Part II](../AnalyticNumberTheoryPartII/README.md#s5-16).

<a id="imprimitive-odd-quadratic-twist-quadratic-twist-character"></a>

### 5.17 Imprimitive odd quadratic twist

[Read in Part II](../AnalyticNumberTheoryPartII/README.md#s5-17).

<a id="iterated-continuation-tubes-double-iterated-tube-bases"></a>

### 5.18 Iterated continuation tubes

[Read in Part II](../AnalyticNumberTheoryPartII/README.md#s5-18).

<a id="the-binary-cubic-archimedean-functional-equation-matrix-cubic-archimedean-matrix"></a>

### 5.19 The binary-cubic archimedean functional-equation matrix

[Read in Part II](../AnalyticNumberTheoryPartII/README.md#s5-19).

<a id="from-arithmetic-cubic-orbits-to-analytic-coefficients-cubic-orbit-to-coefficient"></a>

### 5.20 From arithmetic cubic orbits to analytic coefficients

[Read in Part II](../AnalyticNumberTheoryPartII/README.md#s5-20).

<a id="the-two-cubic-poles-and-their-residues-cubic-residues-and-entire-clearance"></a>

### 5.21 The two cubic poles and their residues

[Read in Part II](../AnalyticNumberTheoryPartII/README.md#s5-21).

<a id="proof-cubic-adelic-convergence"></a>

[§5.21a: Adelic binary cubic convergence](../AnalyticNumberTheoryPartII/README.md#s5-21a).

<a id="proof-cubic-adelic-unfolding"></a>

[§5.21b: Adelic orbital unfolding](../AnalyticNumberTheoryPartII/README.md#s5-21b).

<a id="proof-cubic-class-group-components"></a>

[§5.21c: All class-group components in unfolding](../AnalyticNumberTheoryPartII/README.md#s5-21c).

<a id="proof-cubic-truncated-entire"></a>

[§5.21d: Entire truncated cubic integral](../AnalyticNumberTheoryPartII/README.md#s5-21d).

<a id="proof-cubic-poisson-decomposition"></a>

[§5.21e: Poisson decomposition of the global integral](../AnalyticNumberTheoryPartII/README.md#s5-21e).

<a id="proof-cubic-smoothing-residue"></a>

[§5.21f: Rank-one smoothing extracts the quotient integral](../AnalyticNumberTheoryPartII/README.md#s5-21f).

<a id="proof-cubic-rank-one-fourier"></a>

[§5.21g: Normalized rank-one Fourier bound](../AnalyticNumberTheoryPartII/README.md#s5-21g).

<a id="proof-cubic-zero-singular-term"></a>

[§5.21h: Zero-orbit contribution](../AnalyticNumberTheoryPartII/README.md#s5-21h).

<a id="proof-cubic-compact-average-laws"></a>

[§5.21i: Compact averaging and Fourier](../AnalyticNumberTheoryPartII/README.md#s5-21i).

<a id="proof-cubic-singular-tate-restrictions"></a>

[§5.21j: Singular distributions from Tate integrals](../AnalyticNumberTheoryPartII/README.md#s5-21j).

<a id="proof-cubic-triple-root-unfolding"></a>

[§5.21k: Unfold the triple-root orbit](../AnalyticNumberTheoryPartII/README.md#s5-21k).

<a id="proof-cubic-triple-root-residue"></a>

[§5.21l: Triple-root contour residues](../AnalyticNumberTheoryPartII/README.md#s5-21l).

<a id="proof-cubic-double-root-unfolding"></a>

[§5.21m: Unfold the double-root orbit](../AnalyticNumberTheoryPartII/README.md#s5-21m).

<a id="proof-cubic-double-root-residue"></a>

[§5.21n: Double-root contour residues](../AnalyticNumberTheoryPartII/README.md#s5-21n).

<a id="proof-cubic-singular-cancellation"></a>

[§5.21o: Cancel the extra smoothing poles](../AnalyticNumberTheoryPartII/README.md#s5-21o).

<a id="proof-cubic-singular-rational-term"></a>

[§5.21p: Integrate the singular radial powers](../AnalyticNumberTheoryPartII/README.md#s5-21p).

<a id="proof-cubic-adelic-meromorphic-equation"></a>

[§5.21q: Adelic cubic continuation and equation](../AnalyticNumberTheoryPartII/README.md#s5-21q).

<a id="proof-local-finite-fourier-dual"></a>

[§5.21r: Fourier transform of the integral lattice](../AnalyticNumberTheoryPartII/README.md#s5-21r).

<a id="proof-cubic-meromorphic-continuation"></a>

[§5.21s: Cubic meromorphic continuation](../AnalyticNumberTheoryPartII/README.md#s5-21s).

<a id="proof-cubic-entire-order-bound"></a>

[§5.21t: Order-one bound for cubic clearance](../AnalyticNumberTheoryPartII/README.md#s5-21t).

<a id="proof-cubic-residue-one"></a>

[§5.21u: Cubic residue at one](../AnalyticNumberTheoryPartII/README.md#s5-21u).

<a id="proof-cubic-residue-five-sixths"></a>

[§5.21v: Cubic secondary residue](../AnalyticNumberTheoryPartII/README.md#s5-21v).

<a id="continued-odd-quadratic-l-function-quadratic-L-continuation"></a>

### 5.22 Continued odd quadratic L-function

[Read in Part II](../AnalyticNumberTheoryPartII/README.md#s5-22).

<a id="local-quadratic-reflection-ratio-double-local-reflection-ratio"></a>

### 5.23 Local quadratic reflection ratio

[Read in Part II](../AnalyticNumberTheoryPartII/README.md#s5-23).

<a id="the-cubic-global-matrix-functional-equation-cubic-global-functional-equation"></a>

### 5.24 The cubic global matrix functional equation

[Read in Part II](../AnalyticNumberTheoryPartII/README.md#s5-24).

<a id="proof-cubic-archimedean-fourier-comparison"></a>

[§5.24a: Archimedean Fourier comparison](../AnalyticNumberTheoryPartII/README.md#s5-24a).

<a id="pole-cleared-quadratic-l-function-quadratic-pole-clearance"></a>

### 5.25 Pole-cleared quadratic L-function

[Read in Part II](../AnalyticNumberTheoryPartII/README.md#s5-25).

<a id="quadratic-reflection-matrix-double-reflection-matrix"></a>

### 5.26 Quadratic reflection matrix

[Read in Part II](../AnalyticNumberTheoryPartII/README.md#s5-26).

<a id="the-degree-dependent-zero-at-the-origin-cubic-zero-at-origin"></a>

### 5.27 The degree-dependent zero at the origin

[Read in Part II](../AnalyticNumberTheoryPartII/README.md#s5-27).

<a id="proof-cubic-absolute-convergence"></a>

[§5.27a: Absolute convergence of cubic Shintani series](../AnalyticNumberTheoryPartII/README.md#s5-27a).

<a id="proof-arch-entry-vanishing-at-one"></a>

[§5.27b: Archimedean coefficients vanish to degree order](../AnalyticNumberTheoryPartII/README.md#s5-27b).

<a id="proof-gamma-unit-at-one"></a>

[§5.27c: The global prefactor is a unit at one](../AnalyticNumberTheoryPartII/README.md#s5-27c).

<a id="proof-cubic-dual-simple-poles"></a>

[§5.27d: Simple poles of the dual cubic Shintani series](../AnalyticNumberTheoryPartII/README.md#s5-27d).

<a id="pole-aware-cubic-convexity-bound-cubic-pole-cleared-convexity"></a>

### 5.28 Pole-aware cubic convexity bound

[Read in Part II](../AnalyticNumberTheoryPartII/README.md#s5-28).

<a id="proof-cubic-reducible-and-field-coefficient-bound"></a>

[§5.28a: The weighted cubic-coefficient bound](../AnalyticNumberTheoryPartII/README.md#s5-28a).

<a id="proof-cubic-reflected-bound"></a>

[§5.28b: Reflected vertical bound from the matrix equation](../AnalyticNumberTheoryPartII/README.md#s5-28b).

<a id="quadratic-large-sieve"></a>

### 5.29 Quadratic large sieve and primitive real-character moment

[Read in Part II](../AnalyticNumberTheoryPartII/README.md#s5-29).

<a id="meromorphic-continuation-and-the-three-polar-hyperplanes-double-series-continuation"></a>

### 5.30 Meromorphic continuation and the three polar hyperplanes

[Read in Part II](../AnalyticNumberTheoryPartII/README.md#s5-30).

<a id="proof-double-normal-convergence"></a>

[§5.30a: Normal convergence in the first tube](../AnalyticNumberTheoryPartII/README.md#s5-30a).

<a id="proof-odd-double-sum-absolute"></a>

[§5.30b: Absolute convergence in the initial double tube](../AnalyticNumberTheoryPartII/README.md#s5-30b).

<a id="proof-odd-squarefree-factorization"></a>

[§5.30c: Unique odd squarefree factorization](../AnalyticNumberTheoryPartII/README.md#s5-30c).

<a id="proof-quadratic-primitive-adapter"></a>

[§5.30d: Quadratic conductor and root number](../AnalyticNumberTheoryPartII/README.md#s5-30d).

<a id="proof-double-denominator-unit"></a>

[§5.30e: Nonzero squarefree-series denominator](../AnalyticNumberTheoryPartII/README.md#s5-30e).

<a id="proof-squarefree-square-decomposition"></a>

[§5.30f: Separating square factors of the discriminant index](../AnalyticNumberTheoryPartII/README.md#s5-30f).

<a id="proof-quadratic-fourth-moment"></a>

[§5.30g: Quadratic fourth moment](../AnalyticNumberTheoryPartII/README.md#s5-30g).

<a id="proof-quadratic-holder-first-moment"></a>

[§5.30h: Primitive quadratic first moment](../AnalyticNumberTheoryPartII/README.md#s5-30h).

<a id="proof-quadratic-square-factor-sum"></a>

[§5.30i: Imprimitive square-factor bound](../AnalyticNumberTheoryPartII/README.md#s5-30i).

<a id="proof-quadratic-mean-bound-import"></a>

[§5.30j: The first-moment input for the wider convergence tube](../AnalyticNumberTheoryPartII/README.md#s5-30j).

<a id="proof-quadratic-pole-aware-strip-moment"></a>

[§5.30k: Pole-aware strip first moment](../AnalyticNumberTheoryPartII/README.md#s5-30k).

<a id="proof-double-R1-convergence"></a>

[§5.30l: Locally uniform convergence in R1](../AnalyticNumberTheoryPartII/README.md#s5-30l).

<a id="proof-reciprocity-swap-equation"></a>

[§5.30m: The swap functional equation](../AnalyticNumberTheoryPartII/README.md#s5-30m).

<a id="proof-quadratic-reflection-equation"></a>

[§5.30n: The reflection functional equation](../AnalyticNumberTheoryPartII/README.md#s5-30n).

<a id="proof-reflect-holomorphy-and-zero"></a>

[§5.30o: The zero block that removes a false pole](../AnalyticNumberTheoryPartII/README.md#s5-30o).

<a id="proof-double-overlap-identity"></a>

[§5.30p: Functional branches agree on overlaps](../AnalyticNumberTheoryPartII/README.md#s5-30p).

<a id="proof-double-reflected-pole-cancellation"></a>

[§5.30q: Cancellation of spurious reflected poles](../AnalyticNumberTheoryPartII/README.md#s5-30q).

<a id="proof-tube-overlap-gluing"></a>

[§5.30r: Gluing the four continued tubes](../AnalyticNumberTheoryPartII/README.md#s5-30r).

<a id="proof-tube-bochner-extension"></a>

[§5.30s: Bochner tube extension](../AnalyticNumberTheoryPartII/README.md#s5-30s).

<a id="proof-tube-entire-approximation"></a>

[§5.30t: Entire approximation on a connected tube](../AnalyticNumberTheoryPartII/README.md#s5-30t).

<a id="proof-tube-analytic-disc"></a>

[§5.30u: Analytic discs joining two real points](../AnalyticNumberTheoryPartII/README.md#s5-30u).

<a id="proof-tube-reciprocal-bound"></a>

[§5.30v: Bound survives tube extension](../AnalyticNumberTheoryPartII/README.md#s5-30v).

<a id="proof-double-affine-dihedral"></a>

[§5.30w: Affine dihedral action](../AnalyticNumberTheoryPartII/README.md#s5-30w).

<a id="proof-double-shell-hull"></a>

[§5.30x: Real shell convex hull](../AnalyticNumberTheoryPartII/README.md#s5-30x).

<a id="proof-double-gamma-quotient-growth"></a>

[§5.30y: Gamma reflection block growth](../AnalyticNumberTheoryPartII/README.md#s5-30y).

<a id="proof-double-shell-normalizer"></a>

[§5.30z: Bounded normalization on the shell tube](../AnalyticNumberTheoryPartII/README.md#s5-30z).

<a id="proof-tube-hull-extension"></a>

[§5.30aa: Filling the remaining real twelve-gon](../AnalyticNumberTheoryPartII/README.md#s5-30aa).

<a id="proof-double-growth"></a>

[§5.30ab: Polynomial growth of cleared double series](../AnalyticNumberTheoryPartII/README.md#s5-30ab).

<a id="layer-6-the-bost-connes-system-and-compact-spectral-determinants"></a>

## Layer 6: The Bost–Connes system and compact spectral determinants

[Read in Part II](../AnalyticNumberTheoryPartII/README.md#layer-6).

<a id="the-positive-rational-ax-b-subgroup-ax-plus-b-pair"></a>

### 6.1 The positive rational ax+b subgroup

[Read in Part II](../AnalyticNumberTheoryPartII/README.md#s6-1).

<a id="the-finite-adele-scaling-measure-bc-adelic-scaling-measure"></a>

### 6.2 The finite-adele scaling measure

[Read in Part II](../AnalyticNumberTheoryPartII/README.md#s6-2).

<a id="proof-bc-local-density-normalization"></a>

[§6.2a: Normalize the local scaling density](../AnalyticNumberTheoryPartII/README.md#s6-2a).

<a id="eisenstein-recurrence-polynomials-bc-eisenstein-polynomials"></a>

### 6.3 Eisenstein recurrence polynomials

[Read in Part II](../AnalyticNumberTheoryPartII/README.md#s6-3).

<a id="positive-spectrum-zeta-and-heat-series-spectral-zeta-series"></a>

### 6.4 Positive-spectrum zeta and heat series

[Read in Part II](../AnalyticNumberTheoryPartII/README.md#s6-4).

<a id="proof-spectral-continuation-output"></a>

[§6.4a: Spectral continuation output](../AnalyticNumberTheoryPartII/README.md#s6-4a).

<a id="ratio-set-of-a-nonsingular-action-bc-ratio-set"></a>

### 6.5 Ratio set of a nonsingular action

[Read in Part II](../AnalyticNumberTheoryPartII/README.md#s6-5).

<a id="finite-spectral-determinant-benchmark-shifted-finite-determinant"></a>

### 6.6 Finite spectral determinant benchmark

[Read in Part II](../AnalyticNumberTheoryPartII/README.md#s6-6).

<a id="integral-translation-subgroup-axb-integral-translations"></a>

### 6.7 Integral translation subgroup

[Read in Part II](../AnalyticNumberTheoryPartII/README.md#s6-7).

<a id="translations-and-positive-dilations-axb-named-matrices"></a>

### 6.8 Translations and positive dilations

[Read in Part II](../AnalyticNumberTheoryPartII/README.md#s6-8).

<a id="ergodicity-of-positive-rationals-on-finite-adeles-bc-critical-ergodicity"></a>

### 6.9 Ergodicity of positive rationals on finite adeles

[Read in Part II](../AnalyticNumberTheoryPartII/README.md#s6-9).

<a id="proof-bc-finite-prime-projection"></a>

[§6.9a: Finite-prime orbit projection](../AnalyticNumberTheoryPartII/README.md#s6-9a).

<a id="proof-bc-local-character-density"></a>

[§6.9b: Local characters form a dense family](../AnalyticNumberTheoryPartII/README.md#s6-9b).

<a id="proof-bc-prime-progression-divergence"></a>

[§6.9c: Reciprocal primes in progressions](../AnalyticNumberTheoryPartII/README.md#s6-9c).

<a id="proof-bc-nontrivial-character-projection"></a>

[§6.9d: Nontrivial characters are annihilated in the critical interval](../AnalyticNumberTheoryPartII/README.md#s6-9d).

<a id="proof-bc-decreasing-projections"></a>

[§6.9e: Decreasing orthogonal projections](../AnalyticNumberTheoryPartII/README.md#s6-9e).

<a id="all-normalized-scaling-measures-bc-scaling-measure-space"></a>

### 6.10 All normalized scaling measures

[Read in Part II](../AnalyticNumberTheoryPartII/README.md#s6-10).

<a id="the-scalar-selberg-primitive-geodesic-product-selberg-primitive-product"></a>

### 6.11 The scalar Selberg primitive-geodesic product

[Read in Part II](../AnalyticNumberTheoryPartII/README.md#s6-11).

<a id="spectral-zeta-is-regular-at-zero-spectral-regularity-zero"></a>

### 6.12 Spectral zeta is regular at zero

[Read in Part II](../AnalyticNumberTheoryPartII/README.md#s6-12).

<a id="proof-scalar-hyperbolic-heat-kernel"></a>

[§6.12a: Explicit scalar hyperbolic heat kernel](../AnalyticNumberTheoryPartII/README.md#s6-12a).

<a id="proof-compact-spectrum-and-weyl"></a>

[§6.12b: The compact discrete-spectrum input](../AnalyticNumberTheoryPartII/README.md#s6-12b).

<a id="proof-gaussian-scalar-trace"></a>

[§6.12c: Gaussian scalar trace and primitive multiplicities](../AnalyticNumberTheoryPartII/README.md#s6-12c).

<a id="proof-scalar-full-heat-expansion"></a>

[§6.12d: Full scalar heat expansion with remainder](../AnalyticNumberTheoryPartII/README.md#s6-12d).

<a id="proof-scalar-weyl-counting"></a>

[§6.12e: Scalar Weyl counting from heat](../AnalyticNumberTheoryPartII/README.md#s6-12e).

<a id="proof-spectral-weyl-summability"></a>

[§6.12f: Weyl bounds imply spectral summability](../AnalyticNumberTheoryPartII/README.md#s6-12f).

<a id="proof-heat-mellin-on-right-half-plane"></a>

[§6.12g: Heat Mellin identity](../AnalyticNumberTheoryPartII/README.md#s6-12g).

<a id="proof-heat-large-time-tail"></a>

[§6.12h: Exponential heat decay after zero subtraction](../AnalyticNumberTheoryPartII/README.md#s6-12h).

<a id="proof-heat-small-time-subtraction"></a>

[§6.12i: Subtracting small-time heat coefficients](../AnalyticNumberTheoryPartII/README.md#s6-12i).

<a id="proof-heat-subtracted-holomorphy"></a>

[§6.12j: Holomorphic remainder after heat subtraction](../AnalyticNumberTheoryPartII/README.md#s6-12j).

<a id="entire-shifted-determinant-shifted-entire-determinant"></a>

### 6.13 Entire shifted determinant

[Read in Part II](../AnalyticNumberTheoryPartII/README.md#s6-13).

<a id="proof-shifted-zeta-holomorphic"></a>

[§6.13a: Two-parameter shifted spectral zeta](../AnalyticNumberTheoryPartII/README.md#s6-13a).

<a id="proof-shifted-genus-one-product"></a>

[§6.13b: Genus-one determinant product](../AnalyticNumberTheoryPartII/README.md#s6-13b).

<a id="positive-diagonal-homomorphism-axb-diagonal-map"></a>

### 6.14 Positive diagonal homomorphism

[Read in Part II](../AnalyticNumberTheoryPartII/README.md#s6-14).

<a id="the-regularized-scalar-laplace-determinant-spectral-regularized-determinant"></a>

### 6.15 The regularized scalar Laplace determinant

[Read in Part II](../AnalyticNumberTheoryPartII/README.md#s6-15).

<a id="p-p-is-a-hecke-pair-ax-plus-b-hecke-triple"></a>

### 6.16 (P⁺_ℚ, P⁺_ℤ) is a Hecke pair

[Read in Part II](../AnalyticNumberTheoryPartII/README.md#s6-16).

<a id="proof-axb-conjugation"></a>

[§6.16a: Conjugation of translations](../AnalyticNumberTheoryPartII/README.md#s6-16a).

<a id="the-compact-selberg-determinant-comparison-selberg-determinant-comparison"></a>

### 6.17 The compact Selberg determinant comparison

[Read in Part II](../AnalyticNumberTheoryPartII/README.md#s6-17).

<a id="proof-selberg-geodesic-majorant"></a>

[§6.17a: Compact geodesic-series majorant](../AnalyticNumberTheoryPartII/README.md#s6-17a).

<a id="proof-selberg-log-product"></a>

[§6.17b: Logarithmic derivative of the primitive product](../AnalyticNumberTheoryPartII/README.md#s6-17b).

<a id="proof-scalar-heat-trace-formula"></a>

[§6.17c: The compact scalar heat trace input](../AnalyticNumberTheoryPartII/README.md#s6-17c).

<a id="proof-selberg-laplace-integral"></a>

[§6.17d: Elementary half-order Laplace integral](../AnalyticNumberTheoryPartII/README.md#s6-17d).

<a id="proof-selberg-transform-normal-convergence"></a>

[§6.17e: Normal convergence of the hyperbolic transform](../AnalyticNumberTheoryPartII/README.md#s6-17e).

<a id="proof-hyperbolic-laplace-mellin"></a>

[§6.17f: Hyperbolic transform is the Selberg logarithm](../AnalyticNumberTheoryPartII/README.md#s6-17f).

<a id="proof-identity-barnes-transform"></a>

[§6.17g: Identity contribution and Barnes normalization](../AnalyticNumberTheoryPartII/README.md#s6-17g).

<a id="proof-selberg-identity-germ"></a>

[§6.17h: Branch-independent identity factor](../AnalyticNumberTheoryPartII/README.md#s6-17h).

<a id="the-bost-connes-hecke-algebra-bost-connes-hecke-algebra"></a>

### 6.18 The Bost–Connes Hecke algebra

[Read in Part II](../AnalyticNumberTheoryPartII/README.md#s6-18).

<a id="proof-coset-coordinate-bijection"></a>

[§6.18a: Double-coset coordinate bijection](../AnalyticNumberTheoryPartII/README.md#s6-18a).

<a id="proof-double-cosets-and-degrees"></a>

[§6.18b: Double cosets of the ax+b pair and their degrees](../AnalyticNumberTheoryPartII/README.md#s6-18b).

<a id="the-compact-selberg-functional-equation-selberg-functional-equation"></a>

### 6.19 The compact Selberg functional equation

[Read in Part II](../AnalyticNumberTheoryPartII/README.md#s6-19).

<a id="selberg-zeros-and-scalar-spectral-parameters-selberg-spectral-zero-comparison"></a>

### 6.20 Selberg zeros and scalar spectral parameters

[Read in Part II](../AnalyticNumberTheoryPartII/README.md#s6-20).

<a id="proof-shifted-zero-divisor"></a>

[§6.20a: Exact shifted determinant zero divisor](../AnalyticNumberTheoryPartII/README.md#s6-20a).

<a id="proof-spectral-quarter-double-root"></a>

[§6.20b: Spectral quadratic pullback multiplicity](../AnalyticNumberTheoryPartII/README.md#s6-20b).

<a id="proof-selberg-identity-nonvanishing"></a>

[§6.20c: Identity factor at spectral points](../AnalyticNumberTheoryPartII/README.md#s6-20c).

<a id="the-presentation-of-the-rational-bost-connes-algebra-rational-presentation"></a>

### 6.21 The presentation of the rational Bost–Connes algebra

[Read in Part II](../AnalyticNumberTheoryPartII/README.md#s6-21).

<a id="proof-bc-relation-left-inverse"></a>

[§6.21a: For n≥1, x′n xn=n·1](../AnalyticNumberTheoryPartII/README.md#s6-21a).

<a id="proof-bc-relation-coprime"></a>

[§6.21b: For coprime n,m≥1, xn x′m=x′m xn](../AnalyticNumberTheoryPartII/README.md#s6-21b).

<a id="proof-bc-relation-dilations"></a>

[§6.21c: For n,m≥1, x(nm)=xn xm](../AnalyticNumberTheoryPartII/README.md#s6-21c).

<a id="proof-bc-relation-inverse-dilations"></a>

[§6.21d: For n,m≥1, x′(nm)=x′n x′m](../AnalyticNumberTheoryPartII/README.md#s6-21d).

<a id="proof-bc-gcd-cancellation"></a>

[§6.21e: Cancellation of common dilation factors](../AnalyticNumberTheoryPartII/README.md#s6-21e).

<a id="proof-bc-relation-preimage-sum"></a>

[§6.21f: For n≥1 and γ∈ℚ/ℤ, xn e(γ)x′n=Σnδ=γ e(δ); the fiber has n elements](../AnalyticNumberTheoryPartII/README.md#s6-21f).

<a id="proof-bc-preimage-finite"></a>

[§6.21g: Finite translation fibres](../AnalyticNumberTheoryPartII/README.md#s6-21g).

<a id="proof-bc-normal-form-gcd-reduction"></a>

[§6.21h: Reduction to coprime normal forms](../AnalyticNumberTheoryPartII/README.md#s6-21h).

<a id="proof-bc-relation-transport"></a>

[§6.21i: For n≥1 and γ∈ℚ/ℤ, e(γ)xn=xn e(nγ)](../AnalyticNumberTheoryPartII/README.md#s6-21i).

<a id="proof-bc-relation-translation-add"></a>

[§6.21j: For γ,δ∈ℚ/ℤ, e(γ+δ)=e(γ)e(δ)](../AnalyticNumberTheoryPartII/README.md#s6-21j).

<a id="proof-bc-normal-form-product"></a>

[§6.21k: Normal-form multiplication and common-divisor reduction](../AnalyticNumberTheoryPartII/README.md#s6-21k).

<a id="proof-bc-normal-form-support"></a>

[§6.21l: Normal-form support](../AnalyticNumberTheoryPartII/README.md#s6-21l).

<a id="proof-bc-normal-form-independent"></a>

[§6.21m: The corrected double-coset basis is independent](../AnalyticNumberTheoryPartII/README.md#s6-21m).

<a id="proof-bc-relation-translation-zero"></a>

[§6.21n: e(0)=1](../AnalyticNumberTheoryPartII/README.md#s6-21n).

<a id="the-bost-connes-time-evolution-time-evolution"></a>

### 6.22 The Bost–Connes time evolution

[Read in Part II](../AnalyticNumberTheoryPartII/README.md#s6-22).

<a id="the-reduced-bost-connes-c-algebra-bc-cstar-completion"></a>

### 6.24 The reduced Bost–Connes C*-algebra

[Read in Part II](../AnalyticNumberTheoryPartII/README.md#s6-24).

<a id="proof-inverse-coset-degree"></a>

[§6.24a: Inverse double-coset degree](../AnalyticNumberTheoryPartII/README.md#s6-24a).

<a id="proof-bc-convolution-row-column"></a>

[§6.24b: Finite convolution row and column counts](../AnalyticNumberTheoryPartII/README.md#s6-24b).

<a id="proof-bc-convolution-schur"></a>

[§6.24c: Schur estimate for one double coset](../AnalyticNumberTheoryPartII/README.md#s6-24c).

<a id="proof-bc-convolution-norm-bound"></a>

[§6.24d: Bounded faithful left convolution](../AnalyticNumberTheoryPartII/README.md#s6-24d).

<a id="proof-bc-convolution-faithful"></a>

[§6.24e: Coefficient recovery and faithfulness](../AnalyticNumberTheoryPartII/README.md#s6-24e).

<a id="proof-bc-convolution-adjoint"></a>

[§6.24f: Convolution preserves the adjoint](../AnalyticNumberTheoryPartII/README.md#s6-24f).

<a id="coefficient-state-on-the-hecke-core-bc-core-base-state"></a>

### 6.25 Coefficient state on the Hecke core

[Read in Part II](../AnalyticNumberTheoryPartII/README.md#s6-25).

<a id="first-trigonometric-eisenstein-function-bc-trigonometric-eisenstein"></a>

### 6.26 First trigonometric Eisenstein function

[Read in Part II](../AnalyticNumberTheoryPartII/README.md#s6-26).

<a id="proof-bc-eisenstein-finite-fourier"></a>

[§6.26a: Finite cotangent Fourier identity](../AnalyticNumberTheoryPartII/README.md#s6-26a).

<a id="the-two-rational-forms-of-the-bost-connes-algebra-rational-forms-comparison"></a>

### 6.27 The two rational forms of the Bost–Connes algebra

[Read in Part II](../AnalyticNumberTheoryPartII/README.md#s6-27).

<a id="the-representation-on-1-and-its-hamiltonian-regular-representation"></a>

### 6.28 The representation on ℓ²(ℕ≥1) and its Hamiltonian

[Read in Part II](../AnalyticNumberTheoryPartII/README.md#s6-28).

<a id="proof-bc-complex-rescaling"></a>

[§6.28a: Rational and isometric generator conventions](../AnalyticNumberTheoryPartII/README.md#s6-28a).

<a id="proof-bc-regular-shift-bounds"></a>

[§6.28b: Isometries and phase unitaries on l²(N+)](../AnalyticNumberTheoryPartII/README.md#s6-28b).

<a id="kms-states-on-the-bost-connes-algebra-kms-states"></a>

### 6.29 KMS_β states on the Bost–Connes algebra

[Read in Part II](../AnalyticNumberTheoryPartII/README.md#s6-29).

<a id="completed-kms-states-and-the-bounded-strip-condition-bc-completed-kms"></a>

### 6.30 Completed KMS states and the bounded strip condition

[Read in Part II](../AnalyticNumberTheoryPartII/README.md#s6-30).

<a id="proof-bc-analytic-core-strip"></a>

[§6.30a: Entire spectral core to bounded-strip KMS](../AnalyticNumberTheoryPartII/README.md#s6-30a).

<a id="higher-trigonometric-eisenstein-functions-bc-eisenstein-higher"></a>

### 6.31 Higher trigonometric Eisenstein functions

[Read in Part II](../AnalyticNumberTheoryPartII/README.md#s6-31).

<a id="bc-diagonal-heat-operator-bc-diagonal-heat-operator"></a>

### 6.32 BC diagonal heat operator

[Read in Part II](../AnalyticNumberTheoryPartII/README.md#s6-32).

<a id="completed-coefficient-state-bc-completed-coefficient-state"></a>

### 6.33 Completed coefficient state

[Read in Part II](../AnalyticNumberTheoryPartII/README.md#s6-33).

<a id="proof-bc-gns-generator-bounds"></a>

[§6.33a: Algebraic GNS generator estimates](../AnalyticNumberTheoryPartII/README.md#s6-33a).

<a id="proof-bc-universal-norm"></a>

[§6.33b: Universal C*-norm of the BC core](../AnalyticNumberTheoryPartII/README.md#s6-33b).

<a id="proof-bc-adelic-endomorphism"></a>

[§6.33c: Division endomorphisms on the existing profinite ring](../AnalyticNumberTheoryPartII/README.md#s6-33c).

<a id="proof-bc-adelic-dilation"></a>

[§6.33d: Minimal finite-adele dilation](../AnalyticNumberTheoryPartII/README.md#s6-33d).

<a id="proof-bc-crossed-product-full-corner"></a>

[§6.33e: BC algebra as a full crossed-product corner](../AnalyticNumberTheoryPartII/README.md#s6-33e).

<a id="proof-bc-foelner-compression"></a>

[§6.33f: Full and reduced BC crossed products](../AnalyticNumberTheoryPartII/README.md#s6-33f).

<a id="proof-bc-universal-reduced"></a>

[§6.33g: Universal and reduced BC norms agree](../AnalyticNumberTheoryPartII/README.md#s6-33g).

<a id="proof-bc-completion-dense"></a>

[§6.33h: Dense isometric core embedding](../AnalyticNumberTheoryPartII/README.md#s6-33h).

<a id="proof-bc-bounded-state-extension"></a>

[§6.33i: Positive Hecke states extend boundedly](../AnalyticNumberTheoryPartII/README.md#s6-33i).

<a id="kms-states-and-scaling-measures-bc-kms-scaling-correspondence"></a>

### 6.34 KMS states and scaling measures

[Read in Part II](../AnalyticNumberTheoryPartII/README.md#s6-34).

<a id="proof-bc-dynamics-entire-core"></a>

[§6.34a: Entire Hecke orbit maps](../AnalyticNumberTheoryPartII/README.md#s6-34a).

<a id="proof-bc-strip-core-bound"></a>

[§6.34b: Uniform correlation bound on the closed strip](../AnalyticNumberTheoryPartII/README.md#s6-34b).

<a id="proof-bc-real-dynamics-extension"></a>

[§6.34c: Extending real dynamics to the C*-completion](../AnalyticNumberTheoryPartII/README.md#s6-34c).

<a id="proof-bc-dynamics-continuous"></a>

[§6.34d: Point-norm continuous completed dynamics](../AnalyticNumberTheoryPartII/README.md#s6-34d).

<a id="proof-bc-analytic-core-strip-equivalence"></a>

[§6.34e: The analytic core and the strip KMS condition](../AnalyticNumberTheoryPartII/README.md#s6-34e).

<a id="proof-bc-corner-expectation"></a>

[§6.34f: Diagonal expectation in the full corner](../AnalyticNumberTheoryPartII/README.md#s6-34f).

<a id="proof-bc-measure-to-kms"></a>

[§6.34g: Scaling measure produces a KMS state](../AnalyticNumberTheoryPartII/README.md#s6-34g).

<a id="proof-bc-kms-to-measure"></a>

[§6.34h: KMS restriction reconstructs a scaling measure](../AnalyticNumberTheoryPartII/README.md#s6-34h).

<a id="the-symmetry-group-aut-symmetry-action"></a>

### 6.35 The symmetry group Ẑ^× = Aut(ℚ/ℤ)

[Read in Part II](../AnalyticNumberTheoryPartII/README.md#s6-35).

<a id="kms-states-and-upper-half-plane-ground-states-bc-kms-infinity-and-ground"></a>

### 6.36 KMS∞ states and upper-half-plane ground states

[Read in Part II](../AnalyticNumberTheoryPartII/README.md#s6-36).

<a id="proof-bc-kms-limit-ground"></a>

[§6.36a: KMS-infinity limits are ground states](../AnalyticNumberTheoryPartII/README.md#s6-36a).

<a id="proof-bc-trivial-dynamics-test"></a>

[§6.36b: Ground and KMS-infinity differ for trivial dynamics](../AnalyticNumberTheoryPartII/README.md#s6-36b).

<a id="the-trigonometric-arithmetic-algebra-equals-the-bc-rational-form-bc-arithmetic-algebra-generation"></a>

### 6.37 The trigonometric arithmetic algebra equals the BC rational form

[Read in Part II](../AnalyticNumberTheoryPartII/README.md#s6-37).

<a id="proof-bc-eisenstein-mobius-divisibility"></a>

[§6.37a: Möbius divisibility identities](../AnalyticNumberTheoryPartII/README.md#s6-37a).

<a id="proof-bc-eisenstein-division"></a>

[§6.37b: The Eisenstein division formula](../AnalyticNumberTheoryPartII/README.md#s6-37b).

<a id="proof-bc-eisenstein-prime-projections"></a>

[§6.37c: Recovering prime-power divisibility projections](../AnalyticNumberTheoryPartII/README.md#s6-37c).

<a id="proof-bc-eisenstein-corner-power-sums"></a>

[§6.37d: Rational power sums in a prime corner](../AnalyticNumberTheoryPartII/README.md#s6-37d).

<a id="proof-bc-eisenstein-newton-rationality"></a>

[§6.37e: Newton identities in the reduced corner](../AnalyticNumberTheoryPartII/README.md#s6-37e).

<a id="proof-bc-eisenstein-cotangent-roots"></a>

[§6.37f: Roots of the reduced polynomial](../AnalyticNumberTheoryPartII/README.md#s6-37f).

<a id="proof-bc-eisenstein-bezout-cayley"></a>

[§6.37g: Polynomial recovery of the Cayley transform](../AnalyticNumberTheoryPartII/README.md#s6-37g).

<a id="proof-bc-eisenstein-semigroup-preservation"></a>

[§6.37h: Eisenstein algebra is stable under semigroup endomorphisms](../AnalyticNumberTheoryPartII/README.md#s6-37h).

<a id="proof-bc-eisenstein-prime-level-induction"></a>

[§6.37i: Reassembly of the prime-power components](../AnalyticNumberTheoryPartII/README.md#s6-37i).

<a id="proof-bc-eisenstein-roots-recovery"></a>

[§6.37j: Recovering roots of unity from Eisenstein functions](../AnalyticNumberTheoryPartII/README.md#s6-37j).

<a id="proof-bc-eisenstein-isometry-generation"></a>

[§6.37k: Arithmetic generation after adjoining isometries](../AnalyticNumberTheoryPartII/README.md#s6-37k).

<a id="proof-bc-eisenstein-complexification"></a>

[§6.37l: Complexification of the arithmetic form](../AnalyticNumberTheoryPartII/README.md#s6-37l).

<a id="ground-state-at-an-invertible-lattice-bc-vector-ground-state"></a>

### 6.38 Ground state at an invertible lattice

[Read in Part II](../AnalyticNumberTheoryPartII/README.md#s6-38).

<a id="the-partition-function-is-the-riemann-zeta-function-partition-function"></a>

### 6.39 The partition function is the Riemann zeta function

[Read in Part II](../AnalyticNumberTheoryPartII/README.md#s6-39).

<a id="critical-regime-kms-uniqueness-bc-low-temperature-uniqueness"></a>

### 6.40 Critical-regime KMS uniqueness

[Read in Part II](../AnalyticNumberTheoryPartII/README.md#s6-40).

<a id="proof-bc-canonical-extreme"></a>

[§6.40a: Ergodic scaling measure is extreme](../AnalyticNumberTheoryPartII/README.md#s6-40a).

<a id="proof-bc-unit-average"></a>

[§6.40b: Unit average of a scaling measure](../AnalyticNumberTheoryPartII/README.md#s6-40b).

<a id="proof-bc-extreme-average-rigidity"></a>

[§6.40c: Extreme unit average is constant](../AnalyticNumberTheoryPartII/README.md#s6-40c).

<a id="bc-measured-operator-comparison"></a>

### 6.41 The measured operator algebra and factor classification

[Read in Part II](../AnalyticNumberTheoryPartII/README.md#s6-41).

<a id="the-critical-kms-factors-have-type-iii-bc-type-three-one"></a>

### 6.42 The critical KMS factors have type III₁

[Read in Part II](../AnalyticNumberTheoryPartII/README.md#s6-42).

<a id="proof-bc-prime-pair-ratio"></a>

[§6.42a: Prime pairs with prescribed ratio and divergent weights](../AnalyticNumberTheoryPartII/README.md#s6-42a).

<a id="proof-bc-valuation-tail-ratio"></a>

[§6.42b: Valuation-tail cylinder ratios](../AnalyticNumberTheoryPartII/README.md#s6-42b).

<a id="proof-bc-prime-pairs-congruence"></a>

[§6.42c: Prime pairs with controlled unit residues](../AnalyticNumberTheoryPartII/README.md#s6-42c).

<a id="proof-bc-asymptotic-ratio-inclusion"></a>

[§6.42d: Independent tail swaps give essential ratios](../AnalyticNumberTheoryPartII/README.md#s6-42d).

<a id="proof-bc-ratio-unit-lifting"></a>

[§6.42e: Ratio witnesses lift through unit cylinders](../AnalyticNumberTheoryPartII/README.md#s6-42e).

<a id="proof-bc-full-positive-ratio-set"></a>

[§6.42f: All positive numbers belong to the ratio set](../AnalyticNumberTheoryPartII/README.md#s6-42f).

<a id="proof-bc-ergodic-crossed-product-factor"></a>

[§6.42g: Ergodicity makes the group-measure algebra a factor](../AnalyticNumberTheoryPartII/README.md#s6-42g).

<a id="proof-bc-ratio-factor-type"></a>

[§6.42h: Full positive ratio set determines type III1](../AnalyticNumberTheoryPartII/README.md#s6-42h).

<a id="proof-bc-full-corner-type"></a>

[§6.42i: A nonzero full corner preserves factor type](../AnalyticNumberTheoryPartII/README.md#s6-42i).

<a id="the-gibbs-states-u-gibbs-states"></a>

### 6.43 The Gibbs states φ_{β,u}

[Read in Part II](../AnalyticNumberTheoryPartII/README.md#s6-43).

<a id="proof-bc-gibbs-absolute-convergence"></a>

[§6.43a: Absolute Gibbs diagonal summability](../AnalyticNumberTheoryPartII/README.md#s6-43a).

<a id="completed-gibbs-state-bc-completed-gibbs"></a>

### 6.44 Completed Gibbs state

[Read in Part II](../AnalyticNumberTheoryPartII/README.md#s6-44).

<a id="the-gibbs-states-are-kms-states-gibbs-states-are-kms"></a>

### 6.45 The Gibbs states are KMS_β states

[Read in Part II](../AnalyticNumberTheoryPartII/README.md#s6-45).

<a id="proof-bc-gibbs-strip-series"></a>

[§6.45a: Gibbs strip correlations](../AnalyticNumberTheoryPartII/README.md#s6-45a).

<a id="gibbs-barycentre-of-a-probability-measure-bc-completed-barycentre"></a>

### 6.46 Gibbs barycentre of a probability measure

[Read in Part II](../AnalyticNumberTheoryPartII/README.md#s6-46).

<a id="proof-bc-unit-qmodz-adapter"></a>

[§6.46a: Profinite units act on rational torsion](../AnalyticNumberTheoryPartII/README.md#s6-46a).

<a id="cyclotomic-values-and-galois-action-on-extremal-kms-states-galois-action-on-ground-states"></a>

### 6.47 Cyclotomic values and Galois action on extremal KMS∞ states

[Read in Part II](../AnalyticNumberTheoryPartII/README.md#s6-47).

<a id="proof-bc-cyclotomic-restrictions"></a>

[§6.47a: Compatible finite cyclotomic restrictions](../AnalyticNumberTheoryPartII/README.md#s6-47a).

<a id="high-extremal-states-and-unique-barycentres-bc-high-beta-barycentres"></a>

### 6.48 High-β extremal states and unique barycentres

[Read in Part II](../AnalyticNumberTheoryPartII/README.md#s6-48).

<a id="proof-bc-high-beta-unit-orbits"></a>

[§6.48a: Unit-orbit decomposition above the critical temperature](../AnalyticNumberTheoryPartII/README.md#s6-48a).

<a id="proof-bc-high-beta-unit-measure"></a>

[§6.48b: High-beta unit-mass reconstruction](../AnalyticNumberTheoryPartII/README.md#s6-48b).

<a id="proof-bc-high-beta-affine-homeomorphism"></a>

[§6.48c: Probability measures parameterize high-beta KMS states](../AnalyticNumberTheoryPartII/README.md#s6-48c).

<a id="proof-bc-high-beta-extremes"></a>

[§6.48d: High-beta extreme states](../AnalyticNumberTheoryPartII/README.md#s6-48d).

<a id="arithmetic-values-and-symmetry-intertwining-bc-arithmetic-values-and-symmetry"></a>

### 6.49 Arithmetic values and symmetry intertwining

[Read in Part II](../AnalyticNumberTheoryPartII/README.md#s6-49).

<a id="proof-bc-gibbs-tail-limit"></a>

[§6.49a: The Gibbs limit and its uniform tail bound](../AnalyticNumberTheoryPartII/README.md#s6-49a).

<a id="the-bost-connes-phase-transition-kms-classification"></a>

### 6.50 The Bost–Connes phase transition

[Read in Part II](../AnalyticNumberTheoryPartII/README.md#s6-50).

<a id="proof-bc-kms-symmetry-transitive"></a>

[§6.50a: Symmetry on the high-beta extreme boundary](../AnalyticNumberTheoryPartII/README.md#s6-50a).

## Downstream consumers

Consumers can retain the links above or cite the owning part directly. Part I supplies quantitative arithmetic; Part II supplies special functions, multiple zeta series, operator equilibrium and scalar determinants.

## References

The full references and theorem/section/page locators are in the two package READMEs.
