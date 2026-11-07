# Port report: AnticyclotomicLocalUnits

Branch: `roadmap/anticyclotomic-local-units`.
Head commit: `b30520acbd779687d2508728c2d1e56ae4b87cb4`.
Base: `4d14cbd5ba21a1804ca78c9989b9ea485bcfad08`.

The initial worktree was clean and detached at the required base. The requested branch already existed at an earlier port commit; it was preserved as `roadmap/anticyclotomic-local-units-previous-port`, and the requested branch was created from the specified base. Only `TauCetiRoadmap/AnticyclotomicLocalUnits/README.md`, `TauCetiRoadmap/AnticyclotomicLocalUnits/Suggested.lean` and `TauCetiRoadmap/AnticyclotomicLocalUnits/metadata.toml` are in this commit. Nothing was pushed and no GitHub write was made.

## Draft pull request body

Build the height-two continuation of ColemanPowerSeries over the unramified quadratic p-adic field: norm-compatible local units, signed Coates–Wiles kernels, arithmetic Kummer duality and annihilators, and a primitive modular formal-point trace system. Independent primitive plus-unit and local-point constructions give Rubin’s integral signed decomposition and nonvanishing of every matching-parity character derivative of every signed generator, together with compatible finite signed Kummer images, for every prime p≥5.

AI assistance: Codex (GPT-6); this port includes the author's mathematical and supplier audit described below.

## Validation

Final module build outcome, verbatim:

```text
Build completed successfully (8954 jobs).
```

Warning count: **1**, entirely the intended admission:

```text
warning: TauCetiRoadmap/AnticyclotomicLocalUnits/Suggested.lean:62:8: declaration uses `sorry`
```

The first elaboration also emitted the module-system import warning. Adding the module header and public visibility removed that warning. The sole dependency remains Mathlib, as `public import Mathlib`; no Tau Ceti import is needed to state the field-existence theorem. All import gate counters are zero.

Final push gate summary:

```text
gate AnticyclotomicLocalUnits: set_option=0 blob=0 latex=0 tex=0 prnum=0 sorry-data=0 sorry-examples=0 residue=0 private-paths=0 imports=0 mathlib-subimports=0 no-import-mathlib=0 lean-lines=0 forbidden=0 dropped=0 readme-ids-missing=0 empty-sections=0 round-labels=0 long-fences=0 layer-ids=0 target-ids=0 depcheck=0 metadata=0 stray-files=0 dirty=0 outside-folder=0 source-material=0 OK
```

The gate requires a clean worktree: its pre-commit runs passed every content counter and failed only its dirty-worktree check. It was therefore rerun after committing.

Explicit dependency-direction check output, verbatim:

```text
depcheck: 159 roadmaps, 1107 edges, 0 problem(s)
```

There is no UPWARD, CYCLE or moved line. All consumed design suppliers occur earlier in the supplied merge order. The citation resolver found no missing cross-roadmap citations or Lean names. Its separate notice that pinned Lake packages were unavailable on its service host was addressed by direct source inspection in this worktree, at the manifest commits below.

The required scratch `#check @TauCetiRoadmap.AnticyclotomicLocalUnits.exists_auxiliaryQuadraticField` was elaborated once after the final Lean edit. The elaborated type includes `Nat.Prime p`, `p ≠ 2`, the existential field and NumberField structures, degree two, total complexity, both distinct prime factors of (2), primality of (p), and the class-number nondivisibility. No section binder disappeared; no signature hypothesis changed. The README and Lean both state this theorem for every odd prime, with the remaining arithmetic layers under their separate p≥5 convention.

## Content preservation and reviewer pass

The package's 50 numbered targets, 18 definition/API blocks, all 103 Check bullets, nine layer examples/dependency summaries, worked examples and exact supplier contracts are retained. Every definition/API block has at least three Checks. The source package was already in the requested prose/layer shape. Models read on main were `TauCetiRoadmap/PadicMeasuresIwasawaAlgebras/README.md`, `TauCetiRoadmap/LocalFieldsRamification/README.md` and `Completed/ProfiniteArithmetic/README.md`; the completed orthogonal-basis roadmap was also consulted. Metadata is the main-folder convention `topic = "math.NT"`.

Nothing moved from Lean to README. The accepted file already contains just the native auxiliary-field headline and a detailed inventory of the headline theorems whose arithmetic carriers are absent at the pins. All those statements and explanations were kept. No artificial replacement theorem, API lemma, admitted example, data admission or option override was added.

The upstream-reader pass made these concrete repairs:

1. The pinned principal-unit compact-open topology and pro-p theorems are now named explicitly in Scope and ownership and the Tau Ceti supplier contract. The defining congruence kernel alone does not bundle these proofs. This clarifies reuse without adding another construction.
2. The one-variable coordinate is explicitly labelled a target of PadicMeasuresIwasawaAlgebras §4.5. `TauCeti.Iwasawa.exists_completedCoordinate` exists there on main, including in that roadmap's Suggested.lean; it is not represented as a pinned Tau Ceti declaration. This resolves the supplied missing-name lead without deleting a valid supplier.
3. The §0.5 generator-change Check now identifies the expansion parameter Z=σ−κ(σ). The constant term (1+p)κ(σ)^p is evaluated in Z; after character twisting and normalization the augmentation is 1+p. Specifying the coordinates prevents these distinct unit values from being mistaken for the same power-series constant coefficient.
4. The References introduction no longer points to a nonexistent source manifest in the new folder. It retains every published locator and source-line locator, and explains their relation to the source text extractions.
5. The Lean module header/public visibility was repaired for the pinned module system, leaving the theorem's mathematical signature unchanged.

No mathematical target was weakened or dropped. In particular the independent optimal-unit argument, the all-finite-base formal-norm shrinking target, the arithmetic nonzero pairing Checks, scheme Riemann–Hurwitz with wild different multiplicities, the small-prime modular construction, the nonexceptional finite-coinvariant target, and the unramified scalar-to-tensor comparison remain intact. The accepted review has no non-blocking findings beyond preserving its stated supplier conditions; those nine conditions remain explicit.

## Suppliers, ownership and duplication

### Pinned source audit

Mathlib is `f6090c7095e1e56b3464c1daba5f24631f1290d2`; Tau Ceti is `358314d4ab97483df4fc4cb8adcc02e74a8d9f5a`, matching this worktree's manifest. Library paths below are relative to their source repositories. Declarations and their bodies/hypotheses were inspected at these pins.

| Pinned source and locator | Input and boundary |
|---|---|
| Mathlib/NumberTheory/NumberField/Basic.lean line 42; line 101; InfinitePlace/TotallyRealComplex.lean line 209; NumberField/ClassNumber.lean line 64 | Native NumberField, integer ring, total complexity and class number; the headline does not encode an imaginary-quadratic field by an arbitrary predicate. |
| Mathlib/RingTheory/PowerSeries/Basic.lean line 76; line 139; Derivative.lean line 49; Inverse.lean line 109 | Coefficients, constant coefficient, formal derivative and constant-coefficient unit criterion. Analytic evaluation at division points is a separate input. |
| Mathlib/FieldTheory/Galois/NormalBasis.lean line 120; line 127 | Finite-dimensional Galois normal basis and its action. |
| Mathlib/RingTheory/LocalRing/Module.lean line 299 | Finite flat modules over a commutative local ring are free; finite projective kernels meet these hypotheses. |
| TauCeti/NumberTheory/LocalField/UnitFiltration/Basic.lean line 99; line 192; line 417; line 437; line 458 | `TauCeti.unitFiltration` is the mapped congruence kernel of integer-ring units; depth one is the native principal-unit group. Compactness, openness and the neighborhood basis are separate theorems. |
| TauCeti/NumberTheory/LocalField/UnitFiltration/ProP.lean line 80; line 90 | `TauCeti.isProP_unitFiltration_succ` and `TauCeti.unitFiltration_one_isProP`, with residue characteristic p. |
| TauCeti/Topology/Algebra/Group/Profinite/ProP/PadicPow.lean line 454; line 473 | `TauCeti.IsProP.module` and `TauCeti.IsProP.continuousSMul_module`; the carrier is Additive of an abelian pro-p group with its topology. |
| TauCeti/Topology/Algebra/Group/Profinite/CompletedGroupAlgebra/Basic.lean line 145; Module.lean line 344; line 387 | Actual finite-quotient inverse-limit carrier and compact-module action. The definition alone does not give compactness for arbitrary coefficients. |
| TauCeti/AlgebraicGeometry/EllipticCurve/FormalGroup/Point/AdicCompletion.lean line 273; line 292; Range.lean line 158; KerReduction.lean line 79; line 87 | Actual formal-point homomorphism/injectivity, range 0 or 1<v(x), and reduction-kernel equivalence. The Dedekind height-one-completion hypotheses are kept. |
| TauCeti/AlgebraicGeometry/AffineGroupScheme/CartierDuality/FiniteLocallyFree.lean line 271; line 331 | `cartierDuality` and `cartierDual` for finite locally free commutative affine group schemes; no self-duality of F[π^k] is inferred. |
| TauCeti/RepresentationTheory/Homological/TateCohomology/LowDegree.lean line 152; line 286; Periodic.lean line 346 | Native degree-zero/minus-one descriptions and `Rep.FiniteCyclicGroup.periodicIso`. |
| TauCeti/RepresentationTheory/Homological/TateCohomology/HerbrandQuotient.lean line 115; line 206; line 223; line 425; line 527 | Quotient definition, finite correction, H²/H¹ form, short-exact multiplicativity and finite-kernel/cokernel invariance. Outer degree-minus-one finiteness for multiplicativity is retained; infinite Nat.card totalization is not used as a classical ratio. |

The congruence-kernel definition is literally the kernel of the integer-unit map to units of the quotient by the maximal-ideal power, mapped into Kˣ. The completed algebra is literally the compatible-family subalgebra of the finite group algebras. Those bodies fix the carriers; the separate topology/pro-p/action theorems are the additional input. Searches by formal modules, division towers, anticyclotomic characters, Coates–Wiles derivatives and signed Kummer objects did not reveal the missing arithmetic carriers at these pins. Generic formal groups, power series, cohomology and elliptic points do not by themselves supply them.

### Citation resolution at main, open heads and earlier designs

Existing-roadmap revisions were not substituted for main. New-roadmap heads were read through the supplied roadmap service; the two design-only suppliers were read in the board packages and confirmed earlier in the supplied order.

| Supplier copy | Sections and contracts inspected |
|---|---|
| Main: LocalFieldsRamification; completed ProfiniteArithmetic | Layers 0–3 and §1.3: native extensions, unit topology/pro-p and continuous scalar powers. |
| Main: PadicMeasuresIwasawaAlgebras | §§1.7, 4.2–4.5, 5.2; its Suggested.lean line 650 declares the one-variable coordinate target. |
| New-roadmap head: SelmerIwasawaCohomology | §3.0: multivariable coordinate, regular sequence, closed subgroup quotient, character twist and generator conventions. |
| New-roadmap head: CompletedCohomologyPartII | §§3.1–3.2: actual continuous Φ/O dual, inverse-precomposition action and qualified biduality. |
| New-roadmap heads: IntegralIwasawaTheory; ColemanPowerSeries | §7.1 and Layer 1: rank-p determinant norm, coefficient Frobenius and actual interpolation/evaluation. The additional general norm-control contract is not asserted already proved or stated there. |
| Earlier design: packages/LubinTateFormalModulesAndQuasiCanonicalLifts/design/README.md | LT.0–LT.2, LT.4–LT.9, including every named field, lattice-neighbor and sign comparison; no duplicate construction here. |
| Main: ClassFieldTheory | §§2.5–2.6 and Layers 5–8: arithmetic Frobenius, Artin units, local invariant, finite duality and norm/restriction. |
| New-roadmap head: ArithmeticGaloisDuality | §§R02.1.2–R02.1.3: inverse-limit cochains with lim¹ and actual torsion coefficient transitions. |
| Earlier design: packages/NonordinaryCMSpecialValues/design/README.md | NCM.0–NCM.5, especially unramified-cm-coefficients and scalar-tensor-character-comparison; no signed freeness input enters their use. |
| New-roadmap head: PadicHodgeRegulators | Conventions, §§1.4, 1.7: positive ordered adjunction, kernel H¹_g, and trace/restriction compatibility. |
| Main: EllipticCurves | Layers 1, 3–5: isogenies, Frobenius, good reduction and twists. The extra trace-class contract is kept separate. |
| Main: ModularCurves; new-roadmap head: ModularCurvesPartII | Layers 5, 8–9; §§3.2, 3.9, 5.2–5.3, 9.9–9.11, 12.1, 13.2, 13.7, 16.6. Weighted mass, composite-level good models, differentials and genuine quotient have distinct roles. |
| Main: ModularForms; SchemeAndStackFoundations | Layer 10B's genus/index formula and §3.2's scheme Riemann–Hurwitz theorem with wild different multiplicities. The analytic formula is not used in place of the scheme theorem. |
| New-roadmap head: EllipticCurveModularity | R29.5–R29.6: genuine cusp-normalized quotient parametrization and unconditional modularity at exact conductor. |
| Main: ImaginaryQuadraticClassNumber | H1.3 and H2.1–H2.3: primitive forms, splitting character, exact class-number constants; the additional upper estimate remains its separate contract. |

Dependencies that are still **new-roadmap pull requests**, by name: ArithmeticGaloisDuality, SelmerIwasawaCohomology, ModularCurvesPartII, EllipticCurveModularity, CompletedCohomologyPartII, IntegralIwasawaTheory, ColemanPowerSeries, PadicHodgeRegulators. LubinTateFormalModulesAndQuasiCanonicalLifts and NonordinaryCMSpecialValues are earlier design suppliers with supplied board files, rather than content-repository pull requests found in the index. HeegnerPointEulerSystems and SelmerIwasawaCohomologyPartII are prospective consumers, not dependencies.

The ownership/duplication sweep used roadmap list, grep and show across main and every indexed open roadmap head, then object searches across board packages and both pinned source trees. Searches covered signed local units/Coates–Wiles, generic formal modules, universal formal norms, completed coefficients/coordinates/duals, quasi-canonical lattices, supersingular mass/trace classes, integral Hecke traces and Manin-unit comparison. Broad capped searches were followed by narrower searches for the arithmetic objects. The provided open-head files were read only; no additional unlisted heads were sought.

The board's `packages/ColemanPowerSeriesPartII/design/README.md` explicitly identifies AnticyclotomicLocalUnits as the alternate identifier for the same height-two continuation. It is an overlapping design, not a second supplier. The accepted package owns this continuation under AnticyclotomicLocalUnits; its Scope and ownership already assigns the rank-p parent, the generic formal modules and the CM coefficient theory to their proper owners. No second roadmap folder or duplicate declaration was added. Ordinary split anticyclotomic material in SelmerIwasawaCohomology, EulerSystemsAndKolyvaginSystems and HeegnerPointEulerSystems does not state this inert supersingular local-unit decomposition.

Supplier replacements in the port are the explicit pinned topology/pro-p references and the clarified roadmap-level coordinate reference described above. All prior supplier substitutions in the accepted package were preserved. There were no newly deleted theorem statements or duplication-removal stubs; existing deferrals remain solely in Scope and ownership. No declaration receives another roadmap's fully qualified name.

## Accepted conditions and limitations

All nine accepted obligations remain explicit exact supplier contracts, without being silently certified:

- PadicMeasuresIwasawaAlgebras: compact-coefficient-duality.
- SelmerIwasawaCohomology: quadratic-coefficient-coordinates.
- IntegralIwasawaTheory: general-unit-norm-control.
- LubinTateFormalModulesAndQuasiCanonicalLifts: formal-point-completion-realization.
- EllipticCurves: supersingular-trace-classes.
- ModularCurvesPartII: mixed-level-disk-comparison, good-model-hecke-comparison, integral-congruence-comparison.
- ImaginaryQuadraticClassNumber: quadratic-class-number-upper-bound.

No unresolved port, build or gate issue remains. The accepted planning obligations are not disguised as pinned theorems. Wiles78 and Kato93 remain explicitly uncertified bibliographic references as in the accepted package; the trace formula is sourced through Rubin87 and BKO21, and the dual-exponential normalization through the named roadmap contract. BKO21's published text, Win80's §4 and §§5.2–5.5.3, Haz77's Theorem 1.3 and proof, and AU96's Theorem A and relevant proof passages were fetched from their institutional/repository sources and inspected. The downloaded Rubin87 scan has no mathematical searchable text; its original proof was not newly certified in this port. Its formulas used here were compared with BKO21's explicit retelling and independently tested below. This is a roadmap port and signature check, not a claim to prove the admitted theorem or complete those supplier contracts.

No suspicious instruction was found in the source package or fetched material. Repository process examples were treated as data when outside this job's authorization; no credential was accessed, no fetched code was executed, and no external write was made.
## Adversarial mathematics pass

These are independently recomputed finite witnesses and countermodels, not proofs of the general targets. A statement number refers to `TauCetiRoadmap/AnticyclotomicLocalUnits/README.md`; API rows spell out the additional defining laws. Write V=V∞*, π=−p, and D=F(Ψ∞)⊗Φ/O. Values in Φ/O are residue classes. Every row retains the stated claim unless its change column says otherwise.

| Statement | Instances tried | Values computed on each side, or countermodel | Result; change |
|---|---|---|---|
| Conventions: characteristic, unramified quadratic coefficients and size | p=5; rank 0,1,2 coefficient modules | O/π has 25 elements; ranks 0,1,2 give sizes 1,25,625. A ramified quadratic extension has residue size 5 instead. | Pass; retain unramified O. |
| Conventions: allowed primes | p=2,3,5 | Standing arithmetic admits 5 and excludes 2,3; the field headline separately admits 3. At 2 the splitting and inertness clauses contradict one another. | Pass; no good-prime restriction added. |
| Conventions: π-adic basis and formal negation | n=0,1,2 | [−p][−1]w₁=w₀ and [−p]w₁=[−1]w₀; signs of vₙ/wₙ are 1,−1,1. | Pass; retain alternating formal scalars. |
| Conventions: reciprocity and inverse twist | Artin unit 6 at p=5 | κ gives 1/6; inverse twist gives 6; product 1. Cyclotomic character gives 1/36. | Pass; retain inverse action. |
| Conventions: conjugation | Norm-one u and c²=1 | c u c⁻¹=u⁻¹ and u·u⁻¹=1; identity direction instead gives u², generally not 1. | Pass; retain anticyclotomic direction. |
| Conventions: finite fields and two tame groups | p=5, n=0,1,2 | [Θₙ:Φ]=1,25,625; [Ψₙ:Φ]=1,5,25; tame degrees 24 versus 6. | Pass. |
| Conventions: quotient and dual topologies | O; O/5O; noncompact Φ/O | D_t(O)=Φ/O; D_t(O/5O) has 25 elements; O-valued dual of O/5O is 0. (Φ/O)/5=0 although Φ/O≠0. | Pass; compactness and the coefficient target are essential. |
| Conventions: trace different | θ²=2 versus θ²=5 at p=5 | Trace matrices diag(2,4), diag(2,10) have determinants 8≡3 and 20≡0 modulo 5. | Pass; no ramified transport of the unramified trace form. |
| Conventions: Fourier normalizations | p=5, levels 0,1 | Unit factors −1/5,1/25; point factors 1,1/5. Trivial derivative factor 1−(−1/5)=6/5. | Pass. |
| Conventions: universe, total functions, denominators | n=0; s=0; k=0 | Θ₀=Ψ₀=Φ; primed degree at zero is 1, not the formal expression 6/5; y⊗1=0 in D. Unit-series value and invariant differential are nonzero. | Pass; keep separate base cases. |
| §0.1 conductor definition | Characters of order 1,5,25 | Conductors 0,2,3; signs +,+,−. Order exponents 0,1,2 would give +,−,+. | Pass. |
| §0.1 API: minimum conductor, partition, inversion and embedding | Primitive order-25 χ and χ⁻¹ | Both first appear at quotient order 25, both have exponent 3; membership in (+,−) is (0,1) for each. | Pass in both directions. |
| §0.2 principal-unit carrier | 1+ϖ versus residue-2 unit | Residues 1 versus 2; membership at depth one is yes versus no. At zero additive input, multiplicative coordinate is 1. | Pass; use pinned principal-unit API. |
| §0.2 norm inverse limit and tensor comparison | Fixed scalar a in degree 25; two coefficient coordinates | N(a)=a²⁵; N(u⊗b)=N(u)⊗b; the two-coordinate tensor has transition (N(u),N(v)). N(1)=1. | Pass. |
| §0.2 API: projections, extensionality, constructor | Identity family; a family failing one norm square | Every coordinate of the identity family is 1; 1=1 in each square. A chosen mismatch a²⁵≠b fails that square and cannot enter the limit. | Pass. |
| §0.2 API: tame membership and idempotent | ω versus η≠ω at p=5 | e_ω acts by 24/24=1 versus 0/24=0; e_ω² has the same values 1,0. | Pass; normalized inverse weight retained. |
| §0.2 API: completed and finite action | Identity group element and zero vector | Both actions give x at 1 and 0 on the zero vector; finite projections preserve these values. | Pass; supplied completed action retained. |
| §0.3 rank-two freeness | p=5, n=0,1,2 | Finite O-ranks 2·5^(2n)=2,50,1250; π-torsion sizes all 1. | Pass. |
| §0.3 general nonexceptional coinvariant freeness | Rank parameter d=1,2; n=0,1 | A_ψ-ranks d,25d give 1,25 and 2,50. The ω exponent is 1, the tame cyclotomic exponent 6 modulo 24. | Pass; general target retained. |
| §0.3 exceptional and trivial components | Cyclotomic ℤ₅-extension; scalar module with γ acting by 6 | Reciprocity cokernel is ℤ₅, whose nontrivial tame component is 0. Scalar coinvariants O/(6−1)=O/5O have 25 elements, so arbitrary scalar modules do not satisfy finite freeness. | Pass; retain exact norm-control contract and exceptions. |
| §0.4 inverse twist definition | h(v)=b; g with κ(g)=2 | Evaluation of g h on v is (1/2)g(b); direct twisting would give 2g(b). | Pass. |
| §0.4 API: basis equivalence and extensionality | v,−v,5v | Evaluation gives b,−b,5b. First two maps are bijective; last misses 1 when M=O. | Pass. |
| §0.4 API: tame invariants | ω eigenline and another η line | Twisted factors ω·ω⁻¹=1 and ηω⁻¹≠1; Δ-invariants select exactly the former. | Pass. |
| §0.4 API: functoriality and topology | Postcomposition by ×2, then ×3; identity | On h(v)=b, composition gives 6b on either route; identity gives b. Multiplication by these scalars is continuous. | Pass. |
| §0.5 quotient definition and rank | Λ₂²; plus coordinate S | Setting S=0 gives Λ², with ranks 2 versus the wrong rank 1. | Pass. |
| §0.5 API: twist and quotient relation | σ acts by κ(σ) | Inverse twisting gives κ⁻¹κ−1=0; reusing σ−κ gives 1−κ instead. | Pass. |
| §0.5 API: generator independence | p=5, a=6, κ(σ)=6 | In Z=σ−6 the quotient constant is 6·6⁵=46656. After twist and division by 6⁵ the augmentation is 6; (1+S)⁶−1 has coefficients 6,15,20,15,6,1. | Pass; expansion center clarified in the README. |
| §0.5 API: universal property, surjection and equality | Quotient by S on O[[S,T]] | S and 0 have the same image 0; 1 maps to 1; evaluation S=0 kills exactly the closed ideal (S), so every T-series lifts. | Pass in both directions. |
| §0.5 API: action and continuity | q(σx), q(x); compact source | Both images equal q(x); on a basis vector e both have coordinate 1. Closed specialization has Hausdorff compact quotient. | Pass. |
| §1.1 height-two interpolation | p=5; identity norm system | Reduction of [π] is X²⁵ and scalar rank is 25; N_F(1)=product of 25 ones=1. Parent multiplicative rank is 5. | Pass; arithmetic height-two construction remains here. |
| §1.1 API: evaluation, fixedness and uniqueness | Identity family and interpolant 1 | All evaluations are 1; N_F(1)=1; an interpolant with a different torsion value fails the defining evaluation. | Pass. |
| §1.1 API: multiplication and continuity | Identity times any actual system u | f_1 f_u=f_u; coordinate products 1·uₙ=uₙ. Identity is preserved by all finite projections. | Pass. |
| §1.1 API: basis and coordinate transport | v′=[−1]v; Z=X+X² | f([−1]v′ₙ)=uₙ; formal inverse in Z starts −Z+2Z², whereas coordinate negation has quadratic coefficient 0. | Pass. |
| §1.1 API: coefficient extension | f=1 and native embedding O→W | Evaluating either extended or original f gives 1; constant coefficient remains 1. | Pass. |
| §1.2 derivative definition | f=1; differential rescaled by 2 | f′/(fλ′)=0; for coordinate rescaling both numerator and λ′ gain factor 2, giving 2a/(2b)=a/b. | Pass. |
| §1.2 API: ambient linearity and restrictions | Zero and projected ω/η vectors | δ̃(0)=δ̃ₙ(0)=0; projection multipliers are 1 and 0. | Pass; tensor recipe stays on the ambient module. |
| §1.2 API: projected generator formula | Order-3 ζ in O at p=5 | z=(1⊗1+ζ⊗ζ⁻¹+ζ²⊗ζ⁻²)/3 has multiplication image 1 and dz=ζz; individual summands do not have that eigencondition. | Pass; no pure-eigenvector assumption. |
| §1.2 API: balancedness and basis independence | Basis multiplier −1 | Scalar and derivative each gain −1; their product is 1 times the original. | Pass. |
| §1.2 API: equivariance, augmentation and zero | r=γ−1, input 0 | δ((γ−1)x)=(1−1)δ(x)=0; δ(0)=δₙ(0)=0. | Pass. |
| §1.2 API: derivative trace relation | p=5, δₙ=1 | Tr δₙ₊₁=πδₙ=−5; +5 has the wrong sign. | Pass. |
| §1.3 character derivative definition and covariance | Order-5 χ(g)=ζ | Reindexing the χ-weighted sum gives ζ⁻¹=ζ⁴; ζ⁴≠ζ. | Pass. |
| §1.3 API: level independence | n=0→1, weighted numerator A→−5A | A/(−5)=(−5A)/25=−A/5. | Pass. |
| §1.3 API: character scalar action, embedding and descent | r=γ−χ(γ)⁻¹; coefficient embedding ζ↦ζ² | Specialization of r is 0; embedding sends covariance factor ζ⁴ to ζ⁸=ζ³=(ζ²)⁻¹. | Pass. |
| §1.3 API: linearity and zero | Numerators A,B,0 | (A+B)/(−5)=−A/5−B/5; 0/(−5)=0. | Pass. |
| §1.4 Euler factor and quotient descent | p=5, δ=1; plus relation | δ₁=6/5; δ₁((σ−1)x)=0 and δ((σ−1)x)=0 since 6/5≠0. | Pass. |
| §1.5 signed-unit definition | χ=1, order 5, order 25 | Minus kills first two derivative slots; plus kills third; zero lies in both. | Pass in both directions. |
| §1.5 API: closed submodules and δ on minus | x,y in opposite-parity kernels | δχ(x+y)=0+0=0, δχ(rx)=r(χ⁻¹)·0=0; δ₁=0 implies δ=0. | Pass; closedness uses actual continuous kernels. |
| §1.5 API: finite free tensor kernels | W=O² | δχ,W(x,y)=(δχ(x),δχ(y)); output (0,0) iff both entries are 0. | Pass in both directions. |
| §1.5 API: scalar multiplication countermodel | E=Φ(ζ₅), W=O[ζ₅] | ζ₅⊗1−1⊗ζ₅≠0 in E⊗W but scalar image is ζ₅−ζ₅=0. | Pass; canonical unramified comparison retained. |
| §1.5 API: inherited operations and equality | Zero, x and −x | Their ambient sum is 0, with all derivatives 0; inherited equality is ambient equality. | Pass. |
| §2.1 finite Kummer sequence | Base primitive Q; k=1,2 at p=5 | Sizes of pO/p²O and pO/p³O are 25,625; Q mod π is nonzero while [π]Q mod π=0. | Pass. |
| §2.1 API: connecting kernel and obstruction | Q and [π]Q | Kummer classes are nonzero and 0 respectively; their obstruction images are 0 by exactness. | Pass. |
| §2.1 API: torsion transitions | Q mod π→[π]Q mod π²→reduction mod π | First image is nonzero, second is 0; replacing the inclusion transition by unscaled Q gives the wrong reduction. | Pass. |
| §2.1 API: restriction and corestriction | Identity and degree-5 extension, base point Q | Identity sends Q to Q; trace of base Q is [5]Q on both Kummer/corestriction routes. | Pass. |
| §2.1 API: Cartier evaluation and coefficient trace | O/5O, inputs 1 and 3 | Tr(1)=2 and Tr(3)=6=1 modulo 5; pair (1,1) gives 2, not 1. | Pass. |
| §2.2 universal formal norms and obstruction limit | Height 2, n=1,2,3,4; n=0 | Depths 1,2,2,3; at zero the trace is identity on depth-one points. Height-one cyclotomic norm cokernel sizes are 1,5,25 at levels 0,1,2. | Pass; all finite ramified bases still have their own shrinking target. |
| §2.3 arithmetic perfect pairing | Q⊗π⁻² and Q⊗π⁻¹ at p=5 | Actual compatible dual coordinate gives 1/25 and −1/5, both nonzero modulo O; zero pairing gives 0,0 and fails. | Pass. |
| §2.3 API: finite comparison, bilinearity and actions | Multiply first point by π twice; identity extension | Values become −1/5 and 1=0 modulo O; identity restriction/norm gives −1/5 on both sides. Twisted factors κ⁻¹κ=1. | Pass. |
| §2.3 API: receiving O-dual | Order-π class; coefficient trace | O-dual sees 25 elements, with 1/5↦2/5 and 3/5↦1/5 after trace to ℚ₅/ℤ₅. | Pass; no identity scalar substitution. |
| §2.4 anticyclotomic duality | Scalar σ-action κ(σ); primitive base order-π class | Quotient relation after twisting is 0; the base class has order π and pairs nontrivially, rather than mapping to 0. | Pass. |
| §2.5 Wiles trace reciprocity | Adjacent admissible m; zero point; k=0 | A/(−5)=(−5A)/25; zero gives 0 on both sides; y⊗1=0 forces integral trace output at admissible m. | Pass; numerical m=0 example tests normalization only. |
| §3.1 Fourier logarithm definition | Base logarithm a, levels 0,1 | a=5a/5; for nontrivial order-5 χ, a(1+ζ+ζ²+ζ³+ζ⁴)/5=0. | Pass. |
| §3.1 API: covariance and higher-character vanishing | Order-5 character value ζ; base point | Point covariance is ζ, not ζ⁴; base higher-character value is 0. | Pass. |
| §3.1 API: trivial character, linearity and inclusions | Base logarithms a,b,0 | λ₁=a, λ₁(y+z)=a+b, λχ(0)=0; repeated sums at the next level divide 5(a+b) by 5. | Pass. |
| §3.2 signed-point definition | p=5, n=0,1,2 | (plus,minus) ranks (0,1),(0,5),(20,5). Primitive base Q is minus and is not plus. | Pass. |
| §3.2 API: membership, saturation and tensor injection | a=5; unsaturated inclusion 5O⊂O | 5λχ(y)=0 iff λχ(y)=0 in characteristic zero; unsaturated tensor map has kernel 5⁻¹O/O of size 25. | Pass in both directions. |
| §3.2 API: inherited operations and finite-level intersection | Base Q,−Q and level 0→1 | Both remain minus, their sum is 0; plus rank stays 0 through level 1. | Pass. |
| §3.2 API: traces and field inclusions | Base Q in degree 5 | Inclusion preserves λ₁(Q)=a; formal trace gives 5a. Every higher-character zero stays zero. | Pass. |
| §3.3 rational Fourier and integral containment | p=5, n=0,1,2 | Orbit dimensions 1; 1+4=5; 1+4+20=25; projector denominators divide 1,5,25 respectively. | Pass; no integral normal-basis assertion. |
| §3.4 signed sum, intersection and unbounded ranks | p=5, n=2,3,4 | Rank sums 20+5=25,20+105=125,520+105=625; 5ⁿD=D by divisibility. A⁺∩A⁻ has all logarithms 0, hence rank 0 and equals 0. | Pass; no premature claim that D⁺∩D⁻=0. |
| §3.5 finite-level saturation | [π]z fixed by g; comparison with 5O⊂O | [π](gz−z)=0 and the actual tower's π-torsion has size 1, giving gz−z=0; comparison tensor kernel has size 25. | Pass. |
| §3.6 annihilator equality and quotient dual | A plus point and plus unit; a nonzero slot of valuation r | Vanishing slot product is 0; nonzero product divided by π^(r+1) has valuation −1 and nonzero class. | Pass in both directions; zero pairing fails the second. |
| §3.7 disjointness and rank bounds | Ambient Λ-rank 2; finite signed coranks | Two quotient ranks ≥1 force each kernel rank ≤1; minus coranks 5,105,105,2605 are unbounded. Common annihilator of D⁺+D⁻ is 0. | Pass; finite generation and O-torsion-freeness retained. |
| §4.1 field existence; Lean headline | D=−7, p=3,5; bad D=−15 at 5 | X²−X+2 splits as X(X−1) mod 2; discriminants mod 3,5 are 2,3, both nonsquares. h(−7)=1; D=−15 has discriminant 0 mod 5 and ramifies. | Pass; odd-prime generality agrees with Lean. |
| §4.1 small-prime coverage | Every odd prime ≤47 | Euler residues equal p−1 for all chosen D; reduced-form counts 1,2,3; h mod p is respectively 1,2,3, always nonzero. Full values follow below. | Pass. |
| §4.1 upper bound and boundary | p=47,53,59 | B=48.9434676059,52.7611867782,56.4092687768. B/p=1.04135,0.99549,0.95609; derivative of B/p is negative. | Pass; analytic bound starts at 53. |
| §4.1 assembly with canonical CM data | p=5, inert φ(p)=−5 | Deleted Euler factor 1−(−5)/25=6/5; canonical sign + selects plus. A φ(p)=+5 substitute gives 4/5. | Pass; canonical-character suppliers retained. |
| §4.2 projection composite | Identity group ring and exact-order-l character | [1]↦1; each [h] augments to 1; conductor is l², not l. At p=5 normalized Δ multiplier is 24/24=1. | Pass. |
| §4.2 API: actual finite image and norm compatibility | Zero and identity finite localization | Zero maps to 0 at every arrow; the identity coordinate has norm 1; commuting adjacent arrows give that same 1. | Pass; all arithmetic arrows retained. |
| §4.2 API: evaluation, coefficient extension and transport | [g], ν(g)=ζ_l; [1] | Values ζ_l and 1; extension embeds ζ_l to its specified conjugate. Using inverse evaluation gives ζ_l⁻¹ instead. | Pass. |
| §4.2 API: anticyclotomic quotient and linearity | σx−x; x+(−x) | Quotient images 0 and 0; normalized projection is additive. | Pass. |
| §4.3 finite dual-exponential comparison | p=5, n=0,1; trivial representation | Multipliers −1/5,1/25; exp*(log χ_cyc)=1. | Pass. |
| §4.3 ordered adjunction and geometric conversion | u=6; log₅6 mod 25 | log₅6≡5 mod25; +2log₅6≡10 and −2log₅6≡15 mod25, distinct. Supplier ordered pairing and de Rham trace give +10; reversed pairing and arithmetic character give 15. | Pass; reciprocal sign conversion remains explicit. |
| §4.4 values, Euler deletion, root signs and tensor membership | p=5; conductors 0,2,3 | Euler factor 6/5; root signs +,+,−; minus-root central value is 0. Ramified tensor countermodel multiplies to 0 despite being nonzero. | Pass; retain unramified scalar-to-tensor comparison. |
| §4.5 unit-valued plus element | Two unramified coefficient coordinates | If coordinate valuations ≥1, sum lies in 5W with valuation ≥1; target valuation is 0, forcing a coordinate valuation 0. | Pass; no signed freeness used. |
| §5.1 auxiliary rational curve | p=5,7,11 | Point counts 6,8,12 and traces 0,0,0; square-field traces −10,−14,−22, counts 36,64,144. | Pass; every p≥5 remains in scope. |
| §5.2 Manin unit, extension and separability | t+t² and t⁵ in characteristic 5 | Derivatives 1 at 0 and 0 everywhere; Manin valuation 0 gives nonzero reduced differential. | Pass; good reduction alone is not separability. |
| §5.3 subgroup descent and Honda sign | p=5, Frobenius ±5, torsion 6 or 7 | Traces ±10 give point counts 16,36; −5≡1 mod6, ≡2 mod7. Second action preserves subgroup but moves its generator. Type at scalar −5 is p+X². | Pass. |
| §5.4 mass and twist-count application | p=5,7,11,23,47 | Masses 1/3,1/2,5/6,11/6,23/6; N(±2p) values 1,1,2,3,5; exceptional counts as in computed values below. | Pass; distinguish twists from j-invariants. |
| §5.5 scheme ramification bound | N=27,32; identity; Frobenius; local t↦t² | μ=36,48; g=1; different 0≤6,8. Identity different 0; Frobenius derivative 0 excludes it. Tame double-map different at 0 is 1. | Pass; SchemeAndStackFoundations §3.2 retained. |
| §5.6 generic supersingular count | p=13,23,29,47,5 | Counts μ,μ,2μ,3μ,0; first four exceed μ/6. Source's weaker expression at 47 is 0, whereas actual count is 3μ. | Pass; retain stronger bound. |
| §5.7 exceptional counts | (p,N)=(5,27),(7,32); p=13 | Bounds 12>6 and 24>8; neither exceptional supersingularity condition holds at 13. | Pass. |
| §5.8 fine disk construction | p=5,7,11 | M=6,8,12; φ(M)=2,4,4, each prime to p. Scalar −p acts as 1 modulo M, giving a rational marked generator. | Pass. |
| §5.8 API: marking, forgetful disk and actual family | j=0,N=27; j=1728,N=32 | Residual order-3 and order-2 stabilizers are eliminated by their respective cyclic levels; without those levels their orders are 3 and 2. | Pass; exact mixed-level contract retained. |
| §5.8 API: unramified extension and reduction | Residue field 𝔽₂₅→𝔽₆₂₅ | Point order remains 6, cyclic marking order remains 27, and source and target disk parameter has linear coefficient 1. | Pass. |
| §5.9 primitive formal CM point | p=5; primitive Q, [5]Q; multiplier 36 versus 5 | Log valuations 1 versus 2; derivatives scale to 36≡1 versus 5≡0 modulo 5. | Pass. |
| §5.9 API: image, disk isomorphism and preimage | Disk parameter map with unit linear term | Linear term is 1 after normalization, versus 0 for the ×5 countermodel; Q maps to the specified elliptic point and its reduction is 0. | Pass; height-one realization retained. |
| §5.9 API: markings and formal parameter | Scalar Frobenius −5 | Chosen LT parameter −5, not +5; primitive class Q mod [5] has 25-element ambient quotient and is nonzero. | Pass. |
| §6.1 actual quasi-canonical modular images | p=5; s=0,1,2 | C_s orders 1,5,25; primed field degrees 1,6,30; orders ℤ₅+5^sO. Unit-index ratios 24/4=6 and 600/20=30. | Pass. |
| §6.1 API: base point and formal range | s=0; all x_s reductions | x₀=Q, C₀=0; each reduction is 0. Wrong tame-trace base gives y₀=0≠Q. | Pass. |
| §6.1 API: marking transport and Galois equivariance | p-isogeny, prime-to-p N=27 | Kernel has order 5 and intersection with order-27 subgroup has order 1; subgroup transport retains order 27. | Pass. |
| §6.2 optimal system definition | p=5; s=0 | y=6Q is primitive, y₀=Tr_Δ′x₁=0; sum has 6 terms rather than 24. | Pass. |
| §6.2 API: fixedness and correct level | s=0,1; Δ′ sum | Galois transport permutes 6 summands, leaving their sum unchanged; target degrees are 1,5. | Pass. |
| §6.2 API: primitivity | Q primitive; 6Q,5Q,0 | Residual coefficients are 1,0,0 in O/5O, so only 6Q remains primitive. | Pass. |
| §6.2 API: linearity, trace transitivity and extensionality | Base Q; tame degree 6 then wild degree 5 | Both trace routes give [30]Q; trace of 0 is 0. Coordinate equality at every s is equality of systems. | Pass. |
| §6.3 modular Hecke comparison of supplied neighbors | Six lines in 𝔽₅² | Five (1,a) plus (0,1); determinants b−a≠0 for distinct a,b. Replacing θ by 1 collapses five candidates to one. | Pass; no duplicate lattice classification. |
| §6.4 trace recurrence and boundary | p=5, s=0,1,2 | y₀=0, Tr y₁=−6Q, Tr y₂=0; boundary −6Q≠−y₀. | Pass. |
| §6.5 parity and total trace | p=5, n=1,2,3,5 | Odd total traces −y,5y,−25y; even y₂ has trace 0. Signed ranks at n=1 are plus 0 and minus 5. | Pass. |
| §7.1 Herbrand quotient and finite groups | p=5, odd n=1,3,5 | Quotients 1,25,625; n=3 calculation 5⁴·5⁻²=25. Using residue size 5 gives the wrong value 5. | Pass; finiteness precedes cardinal ratios. |
| §7.2 finite H¹ and continuous H¹ vanishing | n=3; primitive y versus 5y | Primitive bound #Ĥ⁰≤25 and h=25 force #H¹=1; nonprimitive bound 625 allows #H¹≤25. A finite subgroup of a torsion-free lattice has size 1. | Pass; discrete topology retained. |
| §7.3 divisible invariants | Base lattice 5O; π-torsion | 5O⊗Φ/O≃Φ/O has 25 elements killed by π; zero module would have 1. Inclusion-induced ×5 on Φ/O has kernel of size 25 and is not an injection into O⊗Φ/O. | Pass. |
| §7.4 free minus quotient and kernel | Coinvariants O; countermodel Λ/(T) | Residual size 25 and dimension 1 in both cases; actual quotient has rank 1, countermodel rank 0. Split kernel rank 2−1=1. | Pass. |
| §8.1 generation via augmentation derivative | f=T,1+5T,5+T | f(0)=0,1,5; unit flags no,yes,no. Coefficient-of-T map takes T to 1 but augmentation takes it to 0. | Pass; supplied unit criterion used. |
| §8.2 integral decomposition | Signed basis; e₁ and e₁+5e₂ | Determinants 1 versus 5; bad cokernel 𝔽₂₅[[T]], with 25-element T-coinvariants and independent 1,T. | Pass; rational complement insufficient. |
| §8.3 full-module derivative nonvanishing | χ=1 and exact order 25 | δ₁(ξ*)=6δ(ξ*)/5≠0; order-25 rational orbit dimension 20 and division by π^(r+1) gives nonzero point class when log valuation is r. | Pass. |
| §8.4 every signed generator and parity | v₊,−v₊; order-25 χ | δ-values have valuations 0,0; δ(v₋)=0. At order 25 plus derivative is 0 and minus derivative nonzero. | Pass. |
| §8.5 finite signed Kummer images | p=5, n=0,1,2 | Signed coranks (0,1),(0,5),(20,5); at n=2 their sum is 25. Primitive base Q⊗π⁻¹ is nonzero in the minus image. | Pass. |
| §8.5 API: membership, linearity and injectivity | Q⊗π⁻¹, zero and sum with negative | Kummer values nonzero,0,0 respectively; zero class has zero signed source because the map is injective. | Pass in both directions. |
| §8.5 API: restriction, corestriction and trace | Base log a, degree 5; identity extension | λ₁(Tr y)=5a=5λ₁(y), not −5a; identity restriction and trace each give a. | Pass. |
| Examples in Layers 0–8 and worked examples | p=5,7,47; field discriminants; final f(T) | Field, mass, rank, trace and unit values above agree simultaneously: at p=5 the point trace −6Q coexists with unit Euler factor +6/5, and neither replaces the other. | Pass; no conflicting example found. |

### Supplier-law witnesses

The following rows also test each generic contract on the objects actually consumed. They test the contracts, not completed implementations.

| Statement | Instances tried | Values computed on each side, or countermodel | Result; change |
|---|---|---|---|
| Principal-unit topology/pro-p and scalar action | Depth one at p=5; exponent 0,1,2 | Residue of 1+ϖ is 1; powers give 1,u,u²; finite positive-depth graded quotients have 5-power order. | Pass; exact pinned topology and pro-p names added. |
| Completed action and coefficient extension | O²; identity finite quotient | Scalar a acts as (ax,ay); both tensor/limit routes have coordinates (x,y); identity element acts as 1. | Pass; finite free coefficient hypothesis retained. |
| Multivariable coordinate, twist and specialization | p=5; S=0; generator power 6 | Dimensions 3→2; Tw_κ(σ−κ)=κ(σ−1); remaining T generator transforms to 6T+15T²+20T³+15T⁴+6T⁵+T⁶. | Pass; existing one-variable coordinate is a supplier. |
| Compact/discrete biduality | M=O and O/π | Double torsion dual recovers O and a 25-element module; double O-valued dual of O/π is 0 instead. | Pass. |
| Multiplicative parent norm | p=5, constants c and unit 1 | Norm c=c⁵; trace c=5c; N(1)=1. Height-two target instead has 25 translates. | Pass; no rank-p/rank-p² conflation. |
| General unit norm-control contract | Trivial tame character versus nontrivial ψ | Cokernel is ℤ₅ on the trivial character and 0 on nontrivial ψ. Level-zero nonexceptional coinvariant rank 2 gives no π-torsion. | Pass; exact general contract retained as accepted obligation. |
| Lubin–Tate parameter, field and trace comparisons | p=5; levels s=0,1,2 | Parameter −5; primed degrees 1,6,30; unprimed degrees 1,5,25; adjacent trace rectangle has degree 5 on each vertical side. | Pass; generic foundations remain supplied. |
| Formal-point completion realization and native range | Formal zero and a nonzero small parameter t | Zero maps to elliptic 0; v(x(t))≈v(t⁻²)>1 for 0<v(t)<1 multiplicatively. Wrong inequality v(x)<1 selects the wrong region. | Pass; height-one completion contract retained. |
| Finite Cartier/local Tate duality and limits | Order π and π²; identity extension | Formal quotient sizes 25 and 625; restriction/corestriction identity value −1/5; evaluation distinguishes zero pairing. | Pass. |
| Unramified CM coefficients and tensor injection | Unramified quadratic θ²=2; ramified ζ₅ example | Unramified/totally ramified intersection degree 1; ramified tensor ζ₅⊗1−1⊗ζ₅ multiplies to 0 while nonzero. | Pass. |
| PadicHodgeRegulators ordered normalization | u=6, p=5 | Ordered Kummer/log pairing +2log₅6≡10 mod25; reversed pairing −2log₅6≡15; dual exponential sends log χ to 1. | Pass. |
| Elliptic Frobenius and trace classes | p=5,7,11 | Rational traces 0 yield square traces −10,−14,−22; counts 36,64,144. Trace ±2p class counts are 1,1,2. | Pass; extra finite-field contract retained. |
| Fine/coarse modular curve and mass interfaces | p=5; N=27; M=6 | μ=36, exceptional fibre ≥12, mass 1/3, φ(6)=2; coarse j=0 has order-3 residual stabilizer without cyclic-level removal. | Pass; mixed-level and integral contracts retained. |
| Hecke trace and genuine modular quotient | p=5, a₅=0; boundary | Six neighbors map to total 0; after tame descent Tr y₁=−6Q, while y₀=0. | Pass. |
| Integral differential/congruence input | Good p=5, optimal quotient; rescaling by 5 | Manin valuation 0 gives derivative nonzero modulo 5; multiplying differential by 5 gives derivative 0 and loses separability. | Pass; exact integral comparison retained. |
| Scheme Riemann–Hurwitz and genus comparison | Genus-one identity; local t²; Frobenius | Different degrees 0; local contribution 1; Frobenius differential 0 fails generic étaleness. | Pass. |
| Unconditional modularity and optimality | Conductor-27 and conductor-32 classes | μ=36,48 and genus 1 for both; good-prime traces at 5 and 7 are 0. | Pass. |
| Quadratic forms, splitting and class-number upper bound | D=−7,−15,−31; p=53 | Form counts 1,2,3; all D mod8=1; B(53)=52.7611867782<53. | Pass; extra upper estimate retained. |
| Finite cyclic Tate/Herbrand API | Trivial group; C₅ on trivial O; finite O/π | Trivial group Tate groups have size 1 and quotient 1. C₅ on O has #Ĥ⁰=25,#H¹=1, quotient25. On O/π both groups have size25 and quotient1. | Pass; no infinite Nat.card ratio used. |
| Normal basis and local finite flat freeness | Trivial extension; rank 0,1 | Normal basis dimension1; zero module free rank0; O free rank1. | Pass; source hypotheses kept. |
| Power-series unit criterion | Zero, 1+5T,5+T over O | Constant coefficients 0,1,5; units no,yes,no; no division by zero occurs in a Coleman unit. | Pass; supplier result consumed. |

The zero ring, a field as coefficient ring in place of the mixed-characteristic DVR, equal-characteristic coefficients, rank-zero towers, residue field 𝔽₂ and q=1 fail the standing native arithmetic hypotheses. The generic supplier statements retain their own wider hypotheses. A nonabelian S₃ or Q₈ cannot be Γ≃ℤ_p or ℤ_p²: for transpositions (12),(23) in S₃ the two products are distinct 3-cycles, and in Q₈ one has ij=k, ji=−k. This prevents using abelian character projectors or commutative completed coordinates on those countermodels. Nonreduced/square-zero coefficient rings likewise are not the selected O; the multivariable supplier's wider coefficient version retains ε²=0 rather than claiming a regular domain. Relative Frobenius supplies the explicit inseparability counterexample above. Empty character intersections at finite level give the whole formal-point module, as A₀⁻=F(Φ), whereas the trivial-character condition gives A₀⁺=0. Infinite-cardinality totalization and natural subtraction at zero are never used to derive arithmetic cardinalities or field degrees.

### Recomputed finite values

| Computed value |
|---|
| D=-7, reduced forms=[(1, 1, 2)], class number=1 |
| p=3, D=-7: Euler residue=2=p-1, h=1, h mod p=1 |
| p=5, D=-7: Euler residue=4=p-1, h=1, h mod p=1 |
| p=13, D=-7: Euler residue=12=p-1, h=1, h mod p=1 |
| p=17, D=-7: Euler residue=16=p-1, h=1, h mod p=1 |
| p=19, D=-7: Euler residue=18=p-1, h=1, h mod p=1 |
| p=31, D=-7: Euler residue=30=p-1, h=1, h mod p=1 |
| p=41, D=-7: Euler residue=40=p-1, h=1, h mod p=1 |
| p=47, D=-7: Euler residue=46=p-1, h=1, h mod p=1 |
| D=-15, reduced forms=[(1, 1, 4), (2, 1, 2)], class number=2 |
| p=7, D=-15: Euler residue=6=p-1, h=2, h mod p=2 |
| p=11, D=-15: Euler residue=10=p-1, h=2, h mod p=2 |
| p=29, D=-15: Euler residue=28=p-1, h=2, h mod p=2 |
| p=37, D=-15: Euler residue=36=p-1, h=2, h mod p=2 |
| p=43, D=-15: Euler residue=42=p-1, h=2, h mod p=2 |
| D=-31, reduced forms=[(1, 1, 8), (2, -1, 4), (2, 1, 4)], class number=3 |
| p=23, D=-31: Euler residue=22=p-1, h=3, h mod p=3 |
| j=0, p=5: #E=6, trace=0, square trace=-10, square #=36 |
| j=1728, p=7: #E=8, trace=0, square trace=-14, square #=64 |
| j=0, p=11: #E=12, trace=0, square trace=-22, square #=144 |
| p=5: (m,d,e)=(0, 1, 0), mass=1/3=4/12, N=(±2p,±p,0)=(Fraction(1, 1), 2, 0) |
| p=7: (m,d,e)=(0, 0, 1), mass=1/2=6/12, N=(±2p,±p,0)=(Fraction(1, 1), 0, 2) |
| p=11: (m,d,e)=(0, 1, 1), mass=5/6=10/12, N=(±2p,±p,0)=(Fraction(2, 1), 2, 2) |
| p=13: (m,d,e)=(1, 0, 0), mass=1=12/12, N=(±2p,±p,0)=(Fraction(1, 1), 0, 0) |
| p=23: (m,d,e)=(1, 1, 1), mass=11/6=22/12, N=(±2p,±p,0)=(Fraction(3, 1), 2, 2) |
| p=29: (m,d,e)=(2, 1, 0), mass=7/3=28/12, N=(±2p,±p,0)=(Fraction(3, 1), 2, 0) |
| p=47: (m,d,e)=(3, 1, 1), mass=23/6=46/12, N=(±2p,±p,0)=(Fraction(5, 1), 2, 2) |
| B(47)=48.9434676059, B/p=1.0413503746 |
| B(53)=52.7611867782, B/p=0.9954940902 |
| B(59)=56.4092687768, B/p=0.9560893013 |
| p=5,n=0: signed point ranks (plus,minus)=(0, 1), sum=1 |
| p=5,n=1: signed point ranks (plus,minus)=(0, 5), sum=5 |
| p=5,n=2: signed point ranks (plus,minus)=(20, 5), sum=25 |
| p=5,n=3: signed point ranks (plus,minus)=(20, 105), sum=125 |
| p=5,n=4: signed point ranks (plus,minus)=(520, 105), sum=625 |
| p=5,n=5: signed point ranks (plus,minus)=(520, 2605), sum=3125 |
| n=1: odd trace scalar=-1, Herbrand quotient=1 |
| n=3: odd trace scalar=5, Herbrand quotient=25 |
| n=5: odd trace scalar=-25, Herbrand quotient=625 |
| pi=-5: pi^-2=1/25; pi^-1=-1/5; pi*pi^-2=-1/5; pi*pi^-1=1=0 mod O |
| unramified theta^2=2: trace Gram diag(2,4), det=8 mod 5=3; ramified theta^2=5: diag(2,10), det=20 mod 5=0 |


Pull request: #1692 (roadmap/anticyclotomic-local-units at b30520a)
