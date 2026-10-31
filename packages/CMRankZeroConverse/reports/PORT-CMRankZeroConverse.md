# PORT-CMRankZeroConverse

Branch: `roadmap/cm-rank-zero-converse`.
Head: 5c3c0b58ff03230b36d01140f04d20e2b3d36b9c.

The starting tree was clean at `c994070`. Only `TauCetiRoadmap/CMRankZeroConverse/README.md`, `TauCetiRoadmap/CMRankZeroConverse/Suggested.lean` and `TauCetiRoadmap/CMRankZeroConverse/metadata.toml` are committed. This report is a separate deliverable under `packages/CMRankZeroConverse/reports/`.

## Validation

```text
Build completed successfully (9276 jobs).
```

Warning count: 5, all `declaration uses sorry`; no other warning. There are five admitted headline theorems and four definitions with real bodies. The pinned revisions were verified directly: Mathlib `f6090c7095e1e56b3464c1daba5f24631f1290d2`, Tau Ceti `358314d4ab97483df4fc4cb8adcc02e74a8d9f5a`.

```text
gate CMRankZeroConverse: set_option=0 blob=0 latex=0 tex=0 prnum=0 sorry-data=0 sorry-examples=0 residue=0 private-paths=0 imports=0 mathlib-subimports=0 no-import-mathlib=0 lean-lines=0 forbidden=0 dropped=0 readme-ids-missing=0 empty-sections=0 round-labels=0 long-fences=0 layer-ids=0 target-ids=0 depcheck=0 metadata=0 stray-files=0 dirty=0 outside-folder=0 source-material=0 OK
```

The gate was first run before committing; all content checks passed and its dirty-worktree check failed on the three additions. Its final run above is on the clean commit. No tooling or order file was changed.

The requested dependency check returned exactly:

```text
depcheck: 198 roadmaps, 1259 edges, 0 problem(s)
```

There was no UPWARD, CYCLE or moved line.

A scratch copy elaborated `#check @name` for all nine declarations. Every printed type was compared with its README statement. None lost a binder. Both CM proportion theorems retain Field, NumberField, total complexity, degree two, non-primality of (3), ellipticity, non-scalar endomorphisms and ε>0. The height retains Field and NumberField; descent retains Field and Algebra ℚ. The curve model and all three finite-count limits have the accepted types. The analytic predicate includes actual entire continuation and agreement with the native L-series. No signature was changed.

## Draft pull request body

Develops the all-prime rank-zero converse for CM newforms and CM elliptic curves through rational Poitou–Tate duality, central specialization of the Beilinson–Kato class and the rational cyclotomic CM main conjecture. The resulting library gives exact half-density for congruent-number twists in positive-squarefree and fundamental-discriminant orderings, and a lower half-proportion of nonvanishing CM twists, including those that do not descend to the rationals.

The README also develops rational analytic-order doubling, the Eisenstein CM ring of the cube-sum model, the exceptional-j descent cosets and the square-root bound for descending twists. It specifies all-prime supplier contracts, full bad-prime factors, every CM order, definition APIs and discriminating Checks. The Selmer converse signatures explicitly identify their missing native carriers.

AI-assisted author self-review by Codex (GPT-6); no independent review is claimed for this port.

## Dependencies and verified supplier copies

Dependencies that are open content-roadmap proposals: ArithmeticGaloisDuality, ArithmeticStatisticsPartI, ArithmeticStatisticsPartVII, AutomorphicGaloisRepresentations, ComplexMultiplicationAndExplicitReciprocity, EllipticCurveModularity, GL2AutomorphicRepresentationsAndTransfer, ModularIwasawaMainConjectures, PadicHodgeRegulators and SelmerIwasawaCohomology.

KatoEulerSystems and ModularIwasawaMainConjecturesPartII are also required earlier in the supplied merge order. They are not indexed content-roadmap proposals. KatoEulerSystems was read at board head `9a2ec7c`, using the supplied board index; ModularIwasawaMainConjecturesPartII was read in `packages/ModularIwasawaMainConjecturesPartII/design/README.md`. These explain the resolver's two unresolved roadmap-name leads. The worker must retain their preceding positions when submitting; this port does not assert that their content folders have already merged.

| Supplier | Copy and exact interfaces read |
| --- | --- |
| ModularForms | Main Layer 7: analytic L-function, Euler product, Fricke equation; the central coefficient-conjugation/partial-factor export remains an explicit contract. |
| EllipticCurves | Main Layers 1–2, 5 and 7: isogenies, rational Tate modules, pointed twists, Kummer Selmer groups. All-prime corank invariance follows using SelmerIwasawaCohomology §4.26. |
| AlgebraicCurves | Main Layer 10: genus-one function fields, plane curves, degree-one places and point–place dictionary; the marked projective-linear comparison remains explicit. |
| PadicMeasuresIwasawaAlgebras | Main §§4.3, 4.6: regular O⟦T⟧, distinguished primes, rational character components and characteristic ideals. |
| AutomorphicGaloisRepresentations | Indexed head §§1.5, 3.15, 4.4–4.8, 6.1, 6.4, 7.2: realization/dual dictionary, CM predicate, oddness, irreducibility, local compatibility and purity. |
| ArithmeticGaloisDuality | Indexed head R02.4.3–R02.4.4, D7.3 and D7.5–D7.7: finite/rational duality, real terms, compact Shapiro and local conditions. The precise Kato j_* export remains an explicit contract. |
| SelmerIwasawaCohomology | Indexed head §§2.10–2.12a, 2.15, 2.19–2.20, 3.0, 3.6–3.7, 3.10, 3.13–3.16, 4.9, 4.26, 4.29: corank/Kummer, twists, control, unramified j_* classes and parity. |
| PadicHodgeRegulators | Indexed head §§0.1, 1.1–1.8: φ=p⁻¹ on Q_p(1), H_f⊆H_g, kernel of exp*, dimensions and finite-condition local Shapiro. |
| ModularIwasawaMainConjectures | Indexed head §§0.6–0.7: actual Kato complex, KMC_rational and KMC.changeLattice, with dyadic lengths only away from two. |
| KatoEulerSystems | Board head `9a2ec7c`, Conventions and §§2.2, 4.4, 4.6, 5.1, 5.3, 7.2: literal duals, admissibility, rational structure, unrestricted twisting and admissible zeta/interpolation. |
| ModularIwasawaMainConjecturesPartII | Board design CZ.4 rational-equivariant-main-conjecture; CZ.5 cm-contained-descent, cm-h2-torsion; CZ.6 cm-kato-main-conjecture, cm-kato-normalization-dictionary. |
| GL2AutomorphicRepresentationsAndTransfer | Indexed head R17.4.16: quadraticInduction, local parameters at all places and full L-identity. |
| ComplexMultiplicationAndExplicitReciprocity | Indexed head §§1.1–1.2, 4.1–4.2: actual endomorphisms, rational self-twist, coefficient components and full factors. Its cmInductionComparison assumes A/Q; the arbitrary-A/K extension remains explicit. |
| ArithmeticStatisticsPartI | Indexed head §§0.1–0.2, 0.5–0.7, 0.15: identical squareclass height, finite fibres, six residue counts, piecewise discriminant weights and positive linear denominator. |
| ArithmeticStatisticsPartVII | Indexed head §§5.9–5.11: corank consequences, three-isogeny averages retaining C, maximal-order reduction and CM numerator; unconditional exports remain explicit. |

Every named native supplier was opened in the pinned source files, including the full types and section assumptions. The source locations in the README match the pins. Particularly relevant definitions are Mathlib Weierstrass.lean line 366 (unit discriminant), EllipticCurve/LFunction.lean line 79 (formal Euler product) and line 84 (total raw series); DedekindDomain/Factorization.lean line 309 (zero ideal count is zero), and Tau Ceti SquareClassGroup/Basic.lean line 45 (quotient of units), QuadraticTwist/Basic.lean line 169 (parameter t²−4n), Newforms/Newform.lean line 104 (normalized newspace eigenform), and Isogeny/Hom/Basic.lean line 106 with Hom/Ring.lean line 174 (actual pointed algebraic endomorphisms, composition multiplication). Their definitions do not include holomorphic continuation, Selmer groups or a Galois realization. Object searches at the pins find finite two-descent groups, not the classical p-infinity or modular Bloch–Kato Selmer carriers. The missing-carrier explanation remains valid at these pins.

## Changes, supplier replacements and ownership

The full package README, including the opening Summary, every target and hypothesis, definition API, Check, example, locator and layer dependency, is preserved. Its title is lower case. The metadata matches main: `topic = "math.NT"`.

Applied the accepted review's nonblocking F01 after verifying the admissibility convention at the supplied board head: the full-range zeta request now extends §§5.1 and 5.3 only at inadmissible coefficient pairs. Every CM pair is admissible, and §4.6's twist compatibility is not restricted by admissibility. The local-dimension request and the independent module-structure hypotheses were retained.

No statement moved from Lean to the README during this port. `Suggested.lean` is byte-for-byte the accepted file: five density/proportion headline theorems and four real definitions. The accepted review's earlier explicit decision classifies analytic-order doubling, cube-sum full CM, the two-coset theorem and the square-root descent count as input targets; those remain fully specified in the README. The same holds for sign identities, discriminant identities, APIs and Checks. No headline was missing under that accepted classification.

The new Mathlib pin requires module visibility for public target signatures. The accepted package's `module`, `public import Mathlib`, four individual `public import TauCeti.*` lines and public section were therefore retained. Plain imports in a module make those imported names private and fail the public signatures; removing `module` emits a warning. The final form has no warning except sorry and is accepted by the import gate. No submodule Mathlib import, roadmap import, root TauCeti import or unused TauCeti import was added.

The upstream mathematical reread made these repairs/clarifications, with no change to theorem hypotheses or conclusions:

- Applied the accepted nonblocking zeta-range note, distinguishing all CM/admissible pairs from the extension requested for inadmissible pairs.
- Renamed the descent proof-route ratio to s=t/t₀, distinguishing the twist ratio from the square witness u in the preceding theorem. The j=0 exponent-three and j=1728 exponent-two arguments now use s consistently.
- Added the source of pointed descent explicitly at BT line 279, the literal-dual supplier at KatoEulerSystems §2.2 explicitly, and the positive-weight/nonzero-level/width-one hypotheses of the Fricke supplier explicitly.

The final reread found no additional false identity, vacuous target or missing denominator hypothesis. The computed table below includes negative controls for precisely those failure modes.

No new supplier replacement or duplicate target deletion was needed. The accepted package already assigns KMC_rational, statistical counts, full cyclotomic CM equality, general theta induction and classical Kummer theory to their owners. `squareclassHeight` remains only a simple native formula required to state the headline counts; ArithmeticStatisticsPartI §0.5 owns its theory, as specified in Scope and ownership. The cube-sum target specializes the supplier's general CM theorem to its explicit model; the descent bounds are general in A but are the model-classification/counting results assigned to this package by its design.

Ownership searches used `roadmaps list`, `roadmaps grep` by mathematical object, `roadmaps show`, all supplied readable sibling heads, all main roadmaps including Completed, and board packages. Searches covered the rank-zero CM converse, actual zeta morphism/central specialization, global line, full cyclotomic equality, Selmer coranks, twist density/orderings, odd-support height, cube-sum model/full CM, pointed descent and exceptional-j cosets. No competing owner states the new analytic application or the two descent bounds. ArithmeticStatisticsPartVII's similarly titled CM support develops reciprocity and ideal-isogeny comparisons, not the descending-twist coset/count theorem. RankZeroOneBSDPartII consumes the converse and retains distinct BSD/density claims. The fully qualified namespace and its theorem names have no match in another readable Suggested.lean. No ownership moved across the merge order. Ownership against unprovided/unindexed open files was not checked; no such head was sought independently.

## Sources and unresolved obligations

Read the legal cached source extractions, including BT line 224 through line 282, Kato line 4039 through line 4073, line 4740 through line 4850 and line 5704 through line 5772, and BKLOS line 80 through line 98, line 654 through line 661 and line 831 through line 880. Source locators remain the seven-page BT arXiv v2 and the BKLOS author version. The source package's sources.toml is unchanged. Kato's extracted interpolation formula contains OCR corruption; its sign and specialization convention were cross-checked against BT line 235 and line 240 and the supplier's critical-interpolation statement. The large Kato PDF could not be rendered by the available browser/PDF tools, so no new visual verification of that OCR passage is claimed.

The accepted supplier obligations remain substantive, not proved by this port: the inadmissible-pair zeta extension, central modular local dimensions, rational Kato j_* duality/control, finite-condition global Shapiro, central conjugation/partial-factor identities, full quadratic analytic factorization and congruent-number root numbers, arbitrary-CM-curve theta induction, full j=0 CM over the coefficient field, and the two unconditional statistical corank exports. Isogeny corank invariance itself needs no separate export: the rational Tate-module isomorphism and supplied Kummer comparison give it at every prime. These preserve the accepted decisions rather than narrowing to good primes or maximal orders. The two unresolved content-index names are explained above; there are no unresolved local build, type, gate or dependency-order failures. No suspicious fetched instruction was followed. No push or GitHub write was performed.

## Adversarial mathematics pass

The following table records one row per mathematical assertion or definition/API assertion. Numerical and finite-count arithmetic was recomputed independently; the projective substitutions were also evaluated on 128 forward and 128 inverse integer tuples, including n=0. These are counterexample probes and normalization witnesses, not proofs of the admitted theorems. For conditional supplier statements, computations verify the stated boundary and do not discharge their proof obligations. A zero-dimensional rational correction is distinguished from a nonzero finite integral group throughout.

| Statement | Instances tried | Values computed on the two sides | Result | Change |
| --- | --- | --- | --- | --- |
| Conventions: cohomological dual and Frobenius | k=2, ℓ=3, trace −1 | Geometric polynomial X²+X+3; same-M arithmetic polynomial X²+X/3+1/3 | Directions agree | None |
| Conventions: central twist | k=2, αβ=3, h=1 | Geometric determinant 3/3²=1/3; inverse arithmetic determinant 3 | Twist essential | None |
| Conventions: conjugate dual | k=4, h=2 | 1−k+h=−1=1−h; using h−1 gives −2 | Matches W′ | None |
| Conventions: modular quotient size | Levels 11 and 37, weight two | Whole Jacobian Tate dimensions 2 and 4; individual rational-form component dimension 2 | Component distinction required | None |
| Conventions: Kummer versus torsion tensor | Sel=(Q_p/Z_p)^r⊕finite, r=0,1 | T_p Sel⊗Q_p dimensions 0,1; Sel⊗Q_p dimensions 0,0 | Correct Tate-module carrier | None |
| Conventions: finite coefficient extension | [L:E]=2, Selmer dimensions 0,1 | E-dimensions after extension 0,2; zero reflected in both cases | No embedding E→C needed | None |
| Conventions: p=2 real terms | Integral Z/2 versus rationalization | Integral cardinality 2; rational dimension 0 | Rational exactness preserved | None |
| Conventions: Tate φ | Q_p(1), p=2,3 | φ scalars 1/2,1/3; neither equals 1 | Supplier convention agrees | None |
| Conventions: squareclass versus model parameter | Native twist (0,−a), a=1,2 | D=4,8; short coefficients 16A,64B and 64A,512B | D=4a, class a | None |
| 0.1 rank-r p-converse definition | (corank,rank)=(0,0),(0,1), r=0,1 | Implication values at (0,1): false for r=0, true for r=1 | Not a converse proof | None |
| 0.1 rank-zero API | r=0 with finite analytic order m | m=0 gives nonzero value; m=1 gives zero | Analytic order equivalence appropriate | None |
| 0.1 transport API | Two equal pairs (c,a)=(1,2) | Both rank-one implications false; negations c=r and a≠r both true | Transport and failure criterion agree | None |
| 0.1 ellipticLNonvanishingAtOne definition | Matching entire continuation F, zero function, 2F | First coefficients 1,0,2; only F can agree on the half-plane | Rescaling excluded | None |
| 0.1 uniqueness API | Two matching continuations F,G | F−G=0 on an open half-plane; global difference 0 | Value at one unique | None |
| 0.1 finite analytic order API | First coefficient 1 versus zero function | Limit along positive reals 1 versus 0; F is not identically zero | Natural order has no top-to-zero ambiguity | None |
| 0.1 isomorphic-curve API | Short forms scaled by u=2 | A′=A/16, B′=B/64; local L-coefficients unchanged | Predicate invariant | None |
| 0.1 finite Sel₂ negative control | Full rational two-torsion and p∞ corank zero | dim Sel₂≥2, rational p∞ rank 0 | Finite Sel₂ need not vanish | None |
| 0.2 central sign definition | k=0,1,2,3,4,6,7 | Signs 1,1,1,1,−1,1,1; h=0,0,1,1,2,3,3 | Natural subtraction boundary retained | None |
| 0.2 sign square API | Same seven weights | Every square 1 | Includes total-function junk domain | None |
| 0.2 arithmetic sign relation | k=0,2,4,6 | ε(−1)^h=1,−1,−1,−1 | Relation restricted to even k≥2 | None |
| 0.2 four-weight periodicity API | k=2,3,4 and k+4 | Signs (1,1),(1,1),(−1,−1) | Period four | None |
| 0.2 rational projection definition | c=diag(1,−1), v=(1,−1) | P₊v=(1,0), P₋v=(0,−1) | Correct eigenspaces | None |
| 0.2 projection eigenvalue/idempotence API | Previous vectors | cP₊v=P₊v; cP₋v=−P₋v; P₊²v=P₊v | No sign reversal | None |
| 0.2 complementary projection API | Previous vectors | P₊v+P₋v=(1,−1); P₋P₊v=0 | Direct sum over characteristic zero | None |
| 0.2 integral exclusion | Swapping c on Z₂², v=(1,0) | P₊v=(1/2,1/2), outside Z₂² | Rationalization essential | None |
| 0.3 realization dictionary | k=2 and k=4 | W′ twist exponents 0 and −1 relative to M_f dual; each sign dimension 1 | Matches conjugate realization | None |
| 0.4 ev_h definition | p=3, h=1, κ(γ)=4 | ev(γ)=1/4, ev(T)=−3/4, not 4 or 3 | Inverse character fixed | None |
| 0.4 kernel/membership API | T+3/4 and p=3 | Evaluations 0 and 3 | p not in rational central prime | None |
| 0.4 quotient/DVR API | O⟦T⟧/(T+3/4), then invert 3 | Quotients O then Q₃; localized uniformizer T+3/4 has order 1 | Height-one quotient | None |
| 0.4 semilinear twist API | σ₄ at h=1 | Aug(Tw σ₄)=1/4=ev(σ₄) | Same convention as supplier | None |
| 0.4 finite-character component API | p=2, h=1,2 | ev(σ₋₁)=−1,+1; ev(σ₋₁+1)=0,2 | Component switches with h | None |
| 0.4 rational dyadic idempotent | κ(γ)=5, h=1 | ev(T)=−4/5; ev((1−σ₋₁)/2)=1 | No integral idempotent asserted | None |
| 1.1 global invariants | Irreducible rank two; reducible 1⊕χ | h⁰=0 versus 1; an invariant nonzero vector gives dimension-one stable line | Reducible control excluded | None |
| 1.2 dual Poitou–Tate step | Local dimensions (2,1), dual global h⁰=h²=0 | Global h¹=1; quotient 2−1=1; finite kernel 1−1=0 | Both duality applications needed | None |
| 1.2 forward Poitou–Tate step | Dual finite Selmer zero and local H²=0 | Global H² embeds in 0, so dimension 0 | No unproved self-duality identification | None |
| 1.2 j_* Euler correction | Finite-field Frobenius acting by scalar 1 or 2 | h⁰−h¹=1−1=0 or 0−0=0 | Correction has Euler value zero | None |
| 1.3 global central line | Odd rank two; zero representation | Euler 0−h¹+0=−1 gives h¹=1; zero representation gives h¹=0 | Oddness required | None |
| 1.4 central H_g=H_f | p=2,3, central crystalline eigenvalues | Moduli 1/√2,1/2,1/3 are all <1; φ-fixed dimension 0; dim difference 0 | No φ=1 exception | None |
| 1.4 dual-exponential injection | Central local dimensions (2,1) | Quotient dimension 2−1=1; kernel modulo H_f has dimension 0 | Injective on required quotient | None |
| 1.4 noncentral de Rham control | V=Q_p(1) | dim H_g=2, dim H_f=1, dual-twist φ-fixed dimension 1 | General de Rham equality false | None |
| 2.1 derived control Tor term | DVR complex R→R by π in degrees 1,2 | H¹=0, H²=R/π; specialized H¹ has dimension 1=dim Tor₁ | Premature Tor deletion false | None |
| 2.1 Nakayama step | H² localized finite with zero residue quotient | Number of minimal generators 0; localized H²=0 | Finite generation necessary | None |
| 2.1 degree-two amplitude | H³=0 versus H³=R/π | Tor₁(H³,E) dimensions 0 versus 1 | Higher correction retained until amplitude applied | None |
| 2.2 central zeta map definition | γ=0 and a nonzero vector | z(0)=0; nonzero input alone can still have z=0 | Actual supplied map needed | None |
| 2.2 additivity/scalar API | Scalar 2 and 1/2 over E | z(2γ)=2z(γ), z(γ/2)=z(γ)/2; nonzero z differs from 2z | Scalar normalization not forgotten | None |
| 2.2 lattice independence API | T⊂p⁻¹T | Lattice index p² for rank two; rational quotient dimension 0 | Rational class unchanged | None |
| 2.2 control-map API | κ(γ)=4, h=1 | Twist/evaluation uses 1/4 in both routes | Same central specialization | None |
| 2.2 conjugation API | h=1,2 | z(cγ)=+z(γ),−z(γ) | Surviving signs +,− | None |
| 2.2 projection API | Wrong eigenspace at h=1 and h=2 | z=−z implies 2z=0, hence z=0 over Q₂ too | Only Pε contributes | None |
| 2.3 central basis theorem | DVR quotients R/π and 0 | Lengths 1 and 0; characteristic ideals (π) and R | Equality, not one divisibility, forces basis | None |
| 2.3 generating-vector condition | Pεγ=0 versus nonzero in a line | Specialization 0 versus a nonzero one-dimensional generator | Correct-sign hypothesis essential | None |
| 2.4 nonfinite localization | Basis z≠0; zero class | A nonzero vector cannot lie in {0}; zero is finite at all places | Global finite conditions used | None |
| 3.1 central reciprocity | k=2,4,6 | h=1,2,3; 1≤h≤k−1; period powers 1,2πi,(2πi)² | Critical signs +,−,+ | None |
| 3.1 omitted-factor implication | Euler factor P=0 and P=2 | P·L=0 if P=0; P·L≠0 forces L≠0 without division | No inverse of zero | None |
| 3.1 rational period input | E-linear map nonzero on γ=aγ₁+bγ₂ | If both basis images 0 then image γ=0; contrapositive supplies F-rational input | No E→C embedding | None |
| 3.2 conditional converse | z replaced by 2z over A=Λ[1/p] | Quotient ideals unchanged since 2 is a unit; period doubles | Equality does not fix reciprocity normalization | None |
| 3.3 all-prime CM converse | Q(i),p=2; Q(√−2),p=2; Q(ζ₃),p=3; Q(√−7),p=7 | ζ₈+ζ₈³ has square −2; all four fields contained in their indicated cyclotomic towers | Contained cases retained | None |
| 4.1 typed CM decomposition | Split coefficient extension, two rank-one characters | Dimensions 1+1=2; ηη̄=χ; central twist multiplies determinant by χ² | Correct Kummer summands | None |
| 4.1 finite-condition Shapiro | Quadratic res/cor at p=2 | Composites [2], inverse [1/2] on rational spaces | No integral dyadic splitting | None |
| 4.2 elliptic converse over K | Two nonzero central factors, say 2 and 3 | Product 6≠0; coefficient-prime/order-index choices do not change dimension-two rational carrier | Full factorization used | None |
| 4.3 rational corank doubling | Coranks r=0,1,2 | Over K the dimensions r+r=0,2,4=2r | No rank bound | None |
| 4.3 dyadic lattice control | Swap involution on Z₂² | Plus/minus lattice generators (1,1),(1,−1); determinant −2, index 2 | Rational equality not integral splitting | None |
| 4.4 analytic-order doubling | F=(s−1)^r times unit, r=0,1,2 | ord F²=0,2,4=2 ord F | Full functions tied to actual curves | Retained in README |
| 4.4 finite-order safeguard | Zero function versus Dirichlet first coefficient 1 | ord zero=top but positive-real limit 0; actual continuation limit 1 | Zero function cannot satisfy agreement | Retained in README |
| 4.5 rational CM converse | p=2 and corank r=0 | 2r=0 in N gives r=0, unlike reduction mod 2 | All-prime implication retained | None |
| 5.1 even Goldfeld definition | Limiting ratios 0,1,3/4,1/2 | Equality with 1/2 false,false,false,true | Lower bound not substituted | None |
| 5.1 analytic-rank API | Finite central orders 0,1,2 | Nonzero central-value indicators 1,0,0 | Rank-zero subset agrees | None |
| 5.1 finite-change API | Add one parameter to denominator cX+o(X) | Change bounded by 1/(cX+o(X))→0 | Trivial character harmless | None |
| 5.1 twistwise equality API | Equal L-functions with numerator count M | Both ratios M/N | Property transports | None |
| 5.2 congruentTwist definition/coefficient API | n=0,1,2,−1 | a₄=0,−1,−4,−1; a₁=a₂=a₃=a₆=0 | Squared parameter required | None |
| 5.2 discriminant/ellipticity API | n=0,1,2,3 | Δ=0,64,4096,46656; elliptic exactly at nonzero n | Singular zero excluded | None |
| 5.2 j/sign API | n=1,−1; n=2 | Same signed models; c₄=48n² so c₄³/Δ=1728 | Both-sign isomorphism | None |
| 5.2 Smith hypothesis control | Roots 0,1,−1 | Products −1,2,2, none rational squares | Full two-torsion allowed | None |
| 5.2 congruentNumber_densityOne | X=0,1,3,8 finite parameter filters | Even-family denominators 0,1,3,3; X=0 ratio uses total division 0/0=0 | No assertion about small cutoffs | None |
| 5.2 corank-zero-to-nonvanishing route | Zero-corank subset density 1 inside S | Lower ratio 1 and upper ratio 1 give limit 1 | Requires unconditional corank law | None |
| 5.3 congruentNumber_half_positive | Residues 1,2,3 versus 5,6,7 | Three of six equal masses; 3/6=1/2 | Exact positive-order limit | None |
| 5.3 functional-equation sign | Signs −1 and +1 | −1 forces 2Λ(1)=0; +1 gives tautology Λ(1)=Λ(1) | Positive sign alone not nonvanishing | None |
| 5.4 fundamental-discriminant filter | X=0,1,3,5,8 | Counts 0,1,2,4,7; at X=8 set {−8,−7,−4,−3,1,5,8} | Zero,4,9 excluded | None |
| 5.4 discriminant/model comparison | n=1,2,3 | Discriminants (1,−4),(8,−8),(12,−3); d=8 has a₄=−64=16·(−4) | Square factor handled by isomorphism | None |
| 5.4 congruentNumber_half_discriminants | Residues 1,2,3,5,6,7 | Cutoff weights 5/4,1/2,5/4,5/4,1/2,5/4; allowed sum 3, all sum 6 | Limit 3/6=1/2 | None |
| 6.1 squareclassHeight definition | Rational representatives 2 and 1/2 | Valuations +1 and −1 both odd; H=2 in both cases | Negative valuations counted | None |
| 6.1 representative-independence API | Multiply 5 by 2² in Q(i) | Valuation increments even; H([5])=25=H([20]) | Square multiplication excluded as change | None |
| 6.1 finiteness/positivity API | Trivial class and unit i in Q(i) | Supports empty, products 1,1; H<1 count 0; H<2 count at least 2 | Height one not trivial class | None |
| 6.1 denominator boundary | X=0,1 and X→∞ | Initial counts 0,0; eventual denominator c_KX+o(X), c_K>0 | ncard never used to justify infinite counting | None |
| 6.1 CM and non-inert hypotheses | Q(i),Q(√−2),Q(ζ₃) modulo 3 | Quotients F₉, F₃×F₃, F₃[e]/e² | (3) prime only in first case | None |
| 6.1 cmTwists_nonvanishing_lowerHalf | ε=1/4,1; limiting ratio 3/4 | Required thresholds 1/4,−1/2; 3/4 satisfies both | Lower bound not exact half | None |
| 6.1 CM order passage | Isogeny degree 3 at p=3 | Dual composite [3] invertible with inverse [1/3] on V₃ | Maximal order not imposed | None |
| 6.2 cube-sum coefficient definition | n=0,1,−1,3 | B=0,−27,−27,−243; first four coefficients 0 | Real body on native curves | Retained in README |
| 6.2 cube-sum discriminant/ellipticity API | Same n | Δ=0,−314928,−314928,−25509168 | n⁴ scaling; zero excluded | None |
| 6.2 cube-sum j/sign API | n=1,−1 | c₄=0, Δ≠0, j=0; equal coefficients | Both signs agree | None |
| 6.2 forward projective identity | n=1,(x,y,z)=(1,0,1) | F=−1; forward (6,9,1), G=−108=108F | Correct coefficient 108n² | None |
| 6.2 inverse projective identity | n=1,(X,Y,Z)=(0,0,1) | G=27; inverse (9,9,0), F=1458=54G | Correct coefficient 54n | None |
| 6.2 both composites API | n=1 and n=0 | Scalars 18 and 0; only first gives projective inverse | n≠0 necessary | None |
| 6.2 pointed/origin API | Source [1:−1:0], n=1 | Image [0:18:0]=[0:1:0]; inverse [1:−1:0] up to scalar | Origins preserved | None |
| 6.2 marked-place API | Parameter z near source origin | Pullback X/Y=2z/(3(x−y)), x−y=2 at origin, leading term z/3 | Valuation one | None |
| 6.2 affine chart API | n=1,(x,y)=(1,1); n=−1,(−1,−1) | Both map to (3,0); target 0=27−27 | Chart and sign agree | None |
| 6.2 base-change/scaling API | Rational n=1, scale X by 4,Y by 8 | B′=64·(−27)=−1728; Δ′=2¹²Δ | Distinct from x³+y³=n model | None |
| 6.3 cube-sum full CM | n=1, primitive ζ₃; identity endomorphism | α³=1, 1+α+α²=0; identity instead gives 3≠0 | Full algebraic ring, not point maps | Retained in README |
| 6.3 coefficient-field boundary | Q versus Q(ζ₃) | Endomorphism Z-ranks 1 versus 2 | CM field required | None |
| 6.3 ramified-three application | T²+T+1 and prime (ζ₃−1) | Discriminant 1−4=−3; norm 3; squared ideal norm 9 | Hypothesis of lower-half theorem holds | None |
| 6.4 descendsToRat definition | Rational base change, identity coordinate change | Identity acts as E_K=E_K | Actual pointed descent | None |
| 6.4 pointed-isomorphism API | Change C and inverse C⁻¹ | C⁻¹C=1, so both descent implications | Invariance in both directions | None |
| 6.4 j necessary condition API | A=1,B=1+i in Q(i) | Δ=−64−864i; j=6912/733−(93312/733)i, not rational | Explicit non-descent example | Locator clarified |
| 6.4 square-parameter API | Replace t by 4t | Short coefficients multiply by 16 and 64; inverse coordinate scaling u=1/2 | Same pointed class | None |
| 6.4 descent-coset theorem, generic branch | t=t₀ | q=u=1 gives equality t=t₀ | Nonempty-set reference not forced to 1 | Retained in README |
| 6.4 j=0 exceptional branch | Exponent-two quotient class s | [s]³=[s]; [s]³=1 iff [s]=1 | One coset sufficient | Ratio renamed s |
| 6.4 j=1728 exceptional branch | K=Q(√−2), s=θ=√−2 | θ²=−2; twist of A=−1 has short coefficient 2 | Second coset necessary | Retained in README |
| 6.4 second coset nonrationality | θ=q(a+bθ)² with q,a,b rational | Rational part zero forces a²=2b²; nonzero rational solution impossible | θ outside rational squareclass image | None |
| 6.4 empty descent set | D_A empty | Count 0 and number of cosets used 0 | No arbitrary t₀ assumed | None |
| 6.5 square-root descent count | Split 5 and inert 3 in Q(i) | H([5])=5·5=25; H([3])=9=3² | Both give square support growth | Retained in README |
| 6.5 ramified-prime exclusion | Rational 2 in Q(i) | (2)=unit·(1+i)²; parity 0; H([2])=1≠4 | Fixed ramified support separated | None |
| 6.5 finite-union bound | Two cosets with bounds C₁√X,C₂√X | Sum ≤(C₁+C₂)√X | No logarithmic loss | None |
| 6.5 empty-case constant | D_A empty, C=1, X≥0 | 0≤√X | Eventual bound valid | None |
| 6.5 density-zero consequence | X=Y², denominator cX+o(X) | C√X/X=C/Y→0 | Positive linear denominator essential | None |
| 6.6 cmTwists_nondescending_nonvanishing_lowerHalf | Numerator ≥(1/2−ε/2)N, lost count ≤εN/2 | Remaining ≥(1/2−ε)N | Epsilon budgets give eventual statement | None |
| 6.6 stronger restricted denominator | Lost set O(√X), N∼cX | N_non-desc/N=1−O(X⁻¹/²)→1 | Same lower half-bound | None |
| 6.6 non-exactness/empty boundary | Original ratio 3/4 or descent set empty | After density-zero deletion limit 3/4; empty loss gives exactly original ratio | No equality claim | None |
| Supplier: full-range zeta extension | CM pair at p=2; inadmissible non-CM pair | Admissibility true versus false; §§5.1,5.3 apply directly only in first case | Gap requests only missing range | Applied accepted P3 |
| Supplier: local weight-two exception | κ(c)=4 on 1+3Z₃ | κ⁻¹(c)=1/4; κ⁻²(c)=1/16; ratio 4 has infinite order | Not a finite-character coincidence | None |
| Supplier: BKLOS Selmer ratio | Maximal CM norm-three isogeny over quadratic K | Archimedean factor 1/3, factor above three 3, product 1 | Nonmaximal case uses isogeny instead | None |
| Supplier: even Selmer average argument | Even reduced ranks 0 or ≥2 with mean ≤1 | 2·P(rank≥2)≤1, so P(rank=0)≥1/2 | Corank bound, not just MW rank | None |
| Supplier: all-prime isogeny invariance | Degree 2 at p=2 | Composite [2], inverse [1/2] rationally | Uses existing owner contracts | None |
| Supplier: finite-condition Shapiro | Identity and quadratic extensions | Ind dimension multipliers 1,2; res/cor composites [1],[2] | Finite conditions must be matched placewise | None |
| Supplier: quadratic analytic factorization | Local central factors (s−1),(s−1) | Product order 1+1=2 | Full bad factors retained | None |
| Supplier: Fricke normalization | Weight 2 companion eigenvalue −1 | i²·(−1)=(−1)(−1)=+1 | Positive sign convention agrees | Width/weight hypotheses clarified |
| Supplier: pointed projective comparison | Identity map versus shifted marking (1,1) | Identity preserves degree-one origin; (1,1) maps to (3,0)≠O | Mark part of contract | None |
| Supplier: Newform normalization | q-expansion first coefficients 1 and 2 | f admitted by normalization; 2f fails 2=1 | Parent eigenform is insufficient | None |
| Supplier: native ellipticity boundary | Δ=0 over Q; zero ring | 0 not a unit in Q; 0=1 is a unit in zero ring | Nonzero-discriminant equivalence restricted to fields | None |
| Supplier: characteristic ideals | H²=0 versus R/π; z=e versus πe | Lengths 0,1 and z-quotient lengths 0,1 | Equality fixes localized quotient, not integral μ | None |
| Supplier: squareclass denominator | Over Q both signs versus positive sign | Leading constants 12/π² versus 6/π², ratio 2 | Count each native class once | None |


Pull request: #1744 (roadmap/cm-rank-zero-converse at 5c3c0b5)
