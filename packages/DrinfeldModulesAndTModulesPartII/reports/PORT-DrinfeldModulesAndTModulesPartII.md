# Port: DrinfeldModulesAndTModulesPartII

Branch: `roadmap/drinfeld-modules-and-t-modules-part-ii`.
Head commit: `58a2def0fdbd5e6277ccd9f2cd753d467ff43709`.
Base: `3ec8d5f`; the initial worktree was clean. The parent-relative guidance links were absent in this checkout, so the repository-root `README.md` and `CONTRIBUTING.md` were read. Style models were ClassFieldTheory, ModularCurves and Completed/ProfiniteArithmetic; RestrictedPowerSeries was also read as a supplier.

## Validation

Build command: `lake build TauCetiRoadmap.DrinfeldModulesAndTModulesPartII.Suggested`.

Exact outcome: `Build completed successfully (8954 jobs).`
Warnings: 23, all “declaration uses `sorry`”; no other warnings or errors.

Gate: `gate DrinfeldModulesAndTModulesPartII: set_option=0 blob=0 latex=0 tex=0 prnum=0 sorry-data=0 sorry-examples=0 residue=0 private-paths=0 imports=0 mathlib-subimports=0 no-import-mathlib=0 lean-lines=0 forbidden=0 dropped=0 readme-ids-missing=0 empty-sections=0 round-labels=0 long-fences=0 layer-ids=0 target-ids=0 depcheck=0 metadata=0 stray-files=0 dirty=0 outside-folder=0 source-material=0 OK`.

Dependency check output:

```text
depcheck: 163 roadmaps, 1154 edges, 0 problem(s)
```

There is no UPWARD, CYCLE or moved line.

The full `#check @name` audit elaborated all 40 declarations in one scratch module, exit 0. Every type was compared with its README statement. All field, finite-field, equality, character-root, positive-weight, support, weight-range, algebra and scalar-tower hypotheses are retained. No section binder disappeared; no binder repair was needed. The full-tree support and positive-weight restriction of twisted rigidity, the Eulerian exception in two-row rigidity, and both common-overfield scalar towers were checked explicitly. The file has 17 definitions with real bodies and 23 admitted headline theorems, with one Mathlib import (`public import Mathlib` in the pinned module system), no Tau Ceti imports because none of its declarations is used by these signatures, no `set_option`, no admitted data and no examples.

## Draft pull request body

Develop the multiple-depth Carlitz special-value library over every finite field, from power sums and alternating multiple polylogarithms through Brown generation and Frobenius difference systems to Thakur’s basis theorem, Todd’s dimension formula and the alternating Hoffman-like basis. The roadmap also constructs the Carlitz and arithmetic Frobenius foundations its proofs need, describes all linear relations, and builds finite-place specialisation and its dimension bound, retaining both the direct small-weight and general CMPL proof routes.

Prepared with Codex (GPT-6).

## Suppliers, ownership and merge order

Proof suppliers still represented by new roadmap pull requests are **PeriodsAndSpecialValues** §PS.9.2, **PadicDifferentialEquationsAndRigidCohomology** §RD.0.33, and **ReductiveGroupsPartII** §RG2.3.7. **RestrictedPowerSeries** is on main. The ownership-only citations **FunctionFieldArithmetic** Layers 0–5 and **GlobalShtukasAndFunctionFieldLanglands** §2.7 / Layers 0–3 are also new roadmap pull requests; they delimit the global-field, elliptic-sheaf and shtuka boundaries and supply no input to the special-value proofs.

The accepted review has no non-blocking findings. Its 14 conditional interfaces were verified rather than treated as instructions. The putative supplier DrinfeldModulesAndTModules has no folder on main, no indexed open roadmap, no local board package, and no entry in the supplied board-package index. `roadmaps show` confirms its absence from main and open roadmaps. The port cannot cite absent DM sections as exact existing suppliers. It preserves every mathematical requirement and assigns concrete ownership as follows.

| Accepted interface | Owner in the port | Source anchor / substantive repair |
| --- | --- | --- |
| parent-carlitz-products | §0.0, Carlitz products | AT09 line 84; signed products, recursions, nonzero factors, both norms. |
| parent-period-analytic-field | §0.0, analytic field and exponential/logarithm | PAP08 line 119; generic completed algebraic closure supplied by PadicDifferentialEquationsAndRigidCohomology §RD.0.33, not reconstructed. |
| parent-carlitz-omega | §0.0, Omega and period | PAP08 line 572; entire product, coefficient field, twist, kernel normalization and valuation. |
| parent-effective-dual-motives | §0.0, effective dual t-motives | IKLNDP24 line 3454; finite σ-generation is a separate hypothesis for the Anderson dual-motive construction. |
| parent-twisted-analytic-rings | §0.0, arithmetic series and twist | PAP08 line 325 and PAP08 line 564; arithmetic E extends the supplied entire-series ring. |
| parent-abp-interface | §0.0, entireness and lifting | ABP04 line 346; complete determinant, entire-vector and prescribed-specialisation hypotheses. |
| abp-entire-from-equation | §0.0, entireness and lifting | ABP04 line 409; the proof’s matrix Lang step consumes ReductiveGroupsPartII §RG2.3.7. |
| frobenius-constant-denominator | §0.0, rational Frobenius comparisons | CPY19 line 245; rational intertwiners, monic denominator, both determinants. |
| frobenius-fundamental-matrix | §0.0, rational Frobenius comparisons | PAP08 line 1033; unique constant on the right. |
| parent-small-power-sums | §0.2 | IKLNDP24 line 453; exact bound 1 ≤ n ≤ q. The multiple-depth consequence stays in §0.8. |
| general-power-sum-degree | §0.2 | THAKUR09P line 354 and THAKUR09P line 455; exact admissible tuples, unique minimum and general-q degree descent. |
| anderson-thakur-generating-series | §3.2 | AT90 line 750; the equations on printed pp. 185–186 were read on the page images. |
| v-adic-mzv-specialisation | §5.14, with general t-module foundations in §0.0 | CM21 line 1404, CM21 line 1691, CM21 line 1766 and CCM-ALG line 176; actual continued star values and logarithmic points, not a quotient used as replacement values. |
| integral-positive-index-stuffle | §1.3, extending PeriodsAndSpecialValues §PS.9.2 | The supplier’s ordered merges and integer multiplicities are retained. Only integral coefficient extension from its rational presentation is new; no fictitious map ℚ → F is used. |

No required object was taken from a later roadmap. The earlier merge-order suppliers above were resolved at their indexed heads. Nothing in the merge-order file or tooling was changed.

The duplication sweep used `roadmaps grep` over all indexed open heads and main, local searches over main and completed roadmaps, the board packages, and both pinned libraries. Searches used the objects: Carlitz products, multiple zeta/polylogarithm series, Anderson–Thakur interpolation, stuffle/ordered merges, Frobenius difference equations and coefficient twists, entire series, completed algebraic closures, Lang maps, Anderson t-modules and Yu’s theorem. No competing specialised Carlitz development or fully qualified acceptance declaration was found. Generic series, composition combinatorics, linear algebra, norm extension, completed algebraic closures and Lang’s theorem remain with their verified owners; the scope section records those boundaries. No original multiple-depth target was deleted.

Four additional indexed board heads were readable and searched: AnalyticNumberTheory, AutomorphicCongruences, KatoEulerSystems and LogicAndDefinabilityInNumberTheory. Their matches give no competing owner; Drinfeld–Manin splitting in KatoEulerSystems is a different object. The exact LawrenceVenkateshMethod board-head file returned HTTP 404, so ownership against that package’s contents was not checked. The supplied open roadmap heads and the indexed content corpus were checked; no extra unlisted head checkout was sought.

At the manifest pins, Mathlib is `f6090c7095e1e56b3464c1daba5f24631f1290d2` and Tau Ceti is `358314d4ab97483df4fc4cb8adcc02e74a8d9f5a`. Direct source inspection, rather than the resolver’s library index, verifies the library contracts:

| Contract | Pinned file and line | Boundary checked |
| --- | --- | --- |
| Composition and cardinality | `Mathlib/Combinatorics/Enumerative/Composition.lean:101`, line 1033 | Positive parts, prescribed sum; empty weight zero; natural subtraction gives 2⁰ = 1 there. |
| Infinity valuation and completion | `Mathlib/FieldTheory/RatFunc/Valuation.lean:51`, lines 81, 97, 103, 108, 138 | Zero valuation is the multiplicative zero; nonzero X has exponent +1; additive v∞(θ) is −1. Completion retains equality and derives Field and K-algebra. |
| Finite support and span | `Mathlib/Data/Finsupp/Defs.lean:88`, `Mathlib/Data/Finsupp/Single.lean:47`, `Mathlib/LinearAlgebra/Span/Defs.lean:46` | Singleton with zero coefficient has empty support; span and indexed independence are native. |
| Submodule multiplication | `Mathlib/Algebra/Algebra/Operations.lean:222` | Product is the span of pairwise products; the multiplication headlines concern actual submodules. |
| Independent subspaces / dimension | `Mathlib/Order/SupIndep.lean:328`, `Mathlib/LinearAlgebra/Dimension/Finrank.lean:61` | Natural finrank alone does not assert finite generation; Frobenius dimension explicitly includes Module.Finite. |
| Finite fields and twist | `Mathlib/FieldTheory/Finite/Basic.lean:266`, lines 290, 333 | Positive prime-power cardinality, power sums, q-power F-algebra endomorphism. Polynomial mapping fixes its variable. |
| Algebraic norm extension | `Mathlib/Analysis/Normed/Unbundled/SpectralNorm.lean:573`, lines 699, 828, 882 | Algebraic field extension of complete nonarchimedean field; extension and uniqueness of the norm. |
| Dense algebraic closure | `Mathlib/Analysis/Normed/Field/Dense.lean:44` | CharZero is explicit. Its statement cannot be used for C∞ in characteristic p; RD.0.33 supplies the general theorem. |
| Restricted-series norm | `TauCeti/RingTheory/PowerSeries/TateAlgebra.lean:76`, lines 80, 94, 105, 138 | Positive radius and ultrametric normed ring; norm_X also needs NormOneClass; complete coefficients give complete restricted series. No arithmetic E or Frobenius is supplied. |

Searches of open Mathlib pull requests for Carlitz and stuffle found no matches; the Drinfeld match concerned categorical rigidity, not Drinfeld modules. The public Zulip search gave no relevant module-theory API to adopt. No pending upstream work is used as a reason to omit a target.

## Lean retention and mathematics fixes

All 34 declarations of the supplied acceptance file remain; nothing moved from Lean to README. They are simple definitions needed by the headline theorems and deep statements, without API padding. The report accompanying the accepted review describes three declarations that are absent from the actual supplied file. They are restored: `twisted_system_rigidity`, `two_row_rigidity` and `character_roots_independent`. The other additions are `powerSum`, `powerSum_degree_descent` (the new owned power-sum foundation) and `multiplePolylog_ne_zero` (§0.7). The analytic, period, rewriting and finite-place headlines that require substantial missing carriers are named, with their missing carriers, in the module docstring.

The final upstream reading produced these repairs and clarifications:

- Replaced absent parent supplier sections and process-oriented gap prose with explicit, sourced targets. All 68 original targets, their exact ranges, APIs, examples and Checks remain. Added the general Anderson t-module, dual-motive quotient, coproduct, uniformization, regularity and Yu targets needed for the finite-place route, rather than assuming this machinery.
- Imported the existing owners of general completed algebraic closures and Lang’s theorem. The equal-characteristic limitation of Mathlib’s dense-closure theorem was checked at the pin. The Lang comparison states its coefficient extension and the exact rank-one substitution u = v^q, v^(q−1) = b₀.
- Made the integral stuffle extension explicit and deleted the phantom compound supplier requirement. The ordered-merge construction remains the supplier’s construction.
- Adopted the pinned Lean module header, `public import Mathlib` and `public section`, eliminating the module-system warning while exporting all acceptance declarations. The gate recognizes this single Mathlib import; no submodule import or option override was introduced. Rebuilt and repeated the 40-name signature audit after this visibility change.
- Restored the three absent native headlines identified above and added the other statable nonvanishing and power-sum headlines. The two-row statement retains the nonzero Eulerian line; the twisted-system statement excludes weight zero and includes both vanishing alternatives.
- In §2.7, replaced “for w ≤ q ... compositions other than (q)” with separate statements for w < q and w = q. At w = 1 the family is {(1)}; at q = 3, w = 3 it has three compositions and excludes (3).
- In §0.9, made the composition count explicitly positive-weight, with a separate singleton empty array at weight zero. All four weight-zero spaces are the scalar line.
- Kept the direct AMZV spanning range at 2q−2 and the independent endpoint at 3q−2. Deleted unsupported spanning commentary at 2q−1; no theorem was removed. The q = 2 endpoint and q = 3 count 1040 versus 1042 are preserved.
- Removed the dangling “∈ AZ_w)” in §5.12 and the extraneous parenthesis in §4.5. In §3.4, no longer infer Ω ∈ E from a vector whose first coordinate is only a power of Ω: Ω ∈ E is established independently in §0.0.
- Made the analytic coefficient embedding L → C∞ explicit for t-module exponentials, while the algebraic definition still allows every extension L/K; regularity and its K̄-valued torsion are stated for objects defined over K̄.
- In the finite-place construction, restricted the K_v-valued conclusion to input tuples in K_v^r. At q = 2, v = θ and z = θ²α with α ∈ F₄ ∖ F₂, Li₁(z) = θ²α + higher terms has normalized residue α and is outside K_v. A new negative-control Check excludes the incorrect conclusion for arbitrary algebraic integral inputs.
- Expanded the five depth-one/finite-place references into bibliography entries with their exact accepted source versions and legal links, instead of referring readers to a manifest outside the roadmap folder.

No reported source erratum was reversed: the signed ℓ convention, the D₁ multiplier in BC, the complete prefix tree, the positive-depth cutoff-difference law, the rational denominator matrix, and the base-q digits 0 ≤ n_i < q are retained.

## Adversarial mathematics pass

The computations below were performed independently in this port. Put u = θ⁻¹ and D = θ^q−θ. Exact finite-field coefficient arithmetic enumerated monic polynomials, formed reciprocal Laurent series through u⁶³, and summed degree tuples through degree 8 over F₂ and degree 6 over F₃. Residuals reported as zero through u³⁹ have all forty coefficients zero. The conservative bound v∞S_d(k) ≥ dk+(q−1)d(d+1)/2 makes the omitted degrees irrelevant to that precision, including multiplication by the displayed D factors. Polynomial Frobenius and two-row residuals, finite composition counts, and F₄ arithmetic were exact. These finite probes do not prove general independence or analytic theorems; their general hypotheses and conclusions were also compared with the cited sources.

Each row names a mathematical statement, records concrete inputs and computed values, and says what that probe excludes. Repeated API presentations of the same statement share the corresponding row. The empty object, zero coefficient, wrong sign/field, missing nonzero hypothesis, q = 1, nonprime q, characteristic two, and natural-subtraction boundaries are included. Nonabelian-group tests have no application to this commutative series/linear-algebra development; the matrix order test below supplies the relevant noncommutative control.

| Statement | Instances tried | Values computed on the two sides / wrong model | Result and change |
| --- | --- | --- | --- |
| Finite-field convention | F₂, F₃, F₄; q = 1; zero ring | Cardinals 2,3,4; F₄ has p = 2 and 4 ∤ 2 while 2 divides 2; no field has 0 = 1 or cardinal 1. | Keeps every prime power and excludes junk q. |
| Infinity valuation normalization | θ, θ⁻¹, 0 | Native values exp(1), exp(−1), 0; additive valuations −1,+1,+∞. | Correct reversal between degree and additive valuation. |
| Polynomial degree at zero | 0, 1, monic θ | Degree −∞,0,1; natural degree of 0 is 0. | Natural degree used only for monic nonzero summands. |
| Universe / empty composition | Weight zero and an enlarged coefficient universe | One composition with length 0 and sum 0; cardinal formula 2^(0−1) = 1 in ℕ. | No nonempty or small-coefficient assumption is introduced. |
| ℓ and D definitions | q = 3; d = 0,1,2 | ℓ₀ = D₀ = 1; ℓ₁ = −D; norm exponents at d = 2 are 12 and 18. | Discriminates the two products. |
| Product recursions | q = 3,d = 1 | ℓ₂/ℓ₁ = θ−θ⁹; D₂/D₁³ = θ⁹−θ. | Both nonzero; signs agree. |
| Completion / norm embedding | θ and θ^(1/q), q = 3 | Valuations −1 and −1/3; the second is outside K∞. | Uses the general completed-closure supplier. |
| Exponential linear coefficient | z = 0 and first two terms | e_C(0) = log_C(0) = 0; coefficient of z is 1, not 0. | Excludes the zero map. |
| Carlitz functional equation | Coefficient of z^q | θ^q/D = θ/D+1; difference (θ^q−θ−D)/D = 0. | Fixes denominator and action. |
| Logarithm convergence boundary | Norm ∣z∣ = q^(q/(q−1)) | Every term has norm q^(q/(q−1)), versus terms tending to 0 strictly inside. | Open boundary is necessary. |
| Exponential kernel generator | q = 3; π̃,−π̃,θπ̃ | π̃A = (−π̃)A; π̃ ∉ θπ̃A since 1/θ ∉ A. | Excludes nonunit rescaling. |
| Twist direction | a+bt; f = t | Forward twist a^q+b^qt, while q-th power a^q+b^qt^q; t versus t^q. | Fixes the coefficient variable in all layers. |
| Inverse twist domain | t+θ | t+θ^(1/q), coefficient valuation −1/q; not a coefficient in K. | Uses K̄ rather than pretending K is perfect. |
| E and fixed restricted rings | t+θ; Σt^n | Polynomial coefficients generate a finite extension; fixed infinite series has infinitely many coefficients of norm 1 and is not restricted. | Excludes formal fixed series from T. |
| Fixed rational field | 1/t; 1/(t−θ) | First is fixed; second twists to 1/(t−θ^(1/q)). | Distinguishes F_q(t) from K(t). |
| Ω inverse twist | Constant and first new product factor | ρ^(q−1)(1−t/θ) = (−θ)(1−t/θ) = t−θ. | Fixes sign of the functional equation. |
| Ω and period specialization | q = 3; θ,θ^q | Ω(θ) = π̃⁻¹ ≠ 0; Ω(θ^q) = 0; Ω^(1)(θ) = −π̃⁻¹/D. | Excludes constant Ω and wrong ℓ sign. |
| Period scaling and valuation | q = 3; ρ ↦ −ρ | π̃ ↦ −π̃; π̃² unchanged; valuation −3/2. | Distinguishes period from a K∞ element. |
| Effective dual motive | Ranks 0,1; Φ = 1,t−θ,0,t | Determinants 1,1,t−θ,0,t; allowed first three nonzero cases are rank 0, Φ=1 and Φ=t−θ; Φ=0 noninjective, Φ=t has support at 0. | Retains exact cokernel condition. |
| σ-finiteness distinction | Rank-one Φ = 1 | σ fixes basis vector, so its K̄[σ]-span is K̄ times that vector and omits t times it. | No false finite σ-generation. |
| Basis change | Rank one B = b | Φ′ = b^(1/q)Φ/b, Ψ′ = bΨ; both new equation sides are b^(1/q)ΦΨ. | Matrix/trivialisation convention fixed. |
| Anderson t-module differential | n = 1,2; d = 0 | θ+τ; differential ((θ,1),(0,θ)) has nonzero square-zero nilpotent part; zero object has one point. | General carrier includes zero object. |
| Tensor t-module torsion | n = 1,a = t | θx+x^q = 0 has q simple roots; derivative θ ≠ 0. | Rank-one F_q torsion module, not zero. |
| Dual-motive quotient coordinate | y = aσν | Image a^q; for y = σν−ν image 1−1 = 0. | Fixes the forward power in the quotient. |
| Coproduct universal relation | N and N over N | (x,y) ↦ x+y kills (n,−n), and (N⊕N)/relations has rank rank(N), not twice that rank. | Identifies the common subobject. |
| Uniformization / regularity | Carlitz module; a = t | Lattice π̃A has rank 1; (1/θ)π̃A/π̃A has q elements. | Checks the torsion-rank convention. |
| Yu subspace theorem | Z = 0 on a regular module | Minimal invariant subspace 0; H = 0; exp(0) = 0. | Correct degenerate case. |
| Entireness determinant | Φ = ((t−θ,0),(t−θ,1)); Φ = 0 | Determinants t−θ and 0; at t = 0, −θ ≠ 0 versus 0. | Exact determinant hypothesis retained. |
| ABP relation lift | Φ = I₂,ψ = (1,1),ρ = (1,−1) | ρψ = 0; P = ρ gives P(θ) = ρ and Pψ = 0. | Checks prescribed evaluation and matrix sizes. |
| Lang normalization | b₀ = −θ; v = ρ,u = ρ^q | u^(1/q)b₀/u = ρ(−θ)/ρ^q = 1. | Correct inverse-twist parametrisation. |
| Lang connectedness | Constant groups C₂ and S₃, Frobenius identity | Images have cardinal 1 for groups of orders 2 and 6; S₃ image is {identity}, missing (12) and (123). | Supplier connectedness hypothesis retained; nonabelian and cyclic controls. |
| Constant denominator | Φ_i = 1,U = 1/t | Denominator t; Uσ = U. With U = 1/(t−θ), Uσ−U ≠ 0. | Rational rather than polynomial intertwiner. |
| Fundamental matrix order | Ψ = ((Ω,0),(L,1)), C = ((1,1),(0,1)) | Top-right of ΨC is Ω; top-right of CΨ is 1; Ω ≠ 1. | Unique constant multiplies on the right. |
| §0.1 positive indices | (2,1,3),∅,(0) | Weight/depth 6/3 and 0/0; (0) has a zero part and is excluded. | Native Composition retained. |
| §0.1 prefix dominance | (1,2) and (2,1) | Prefix sums (1,3) ≤ (2,3); reverse fails at 2 ≤ 1. | Both directions tested. |
| §0.1 incomparable orders | (1,3),(2,1,1) | Padded prefixes (1,4,4),(2,3,4); inequalities fail in opposite positions. | Lexicographic and prefix orders kept distinct. |
| §0.1 collapse | T₁(∅),T₃(1,2) | ∅ and (3); weight 0 and 3 preserved. | No out-of-range part or spurious zero. |
| §0.1 Init and admissibility | (q),(q,1),(q+1,1) | Init q, (q,1), ∅; first not 1-admissible, second is. | Terminal-q exception fixed. |
| §0.1 array character | q = 3; characters (−1,−1) | Total 1; multiplying with (−1) gives total −1. | Multiplication, not character addition. |
| §0.2 finite power sum | d = 0,1; F₂,F₃ | S₀(k)=1; S₁(1)=1/(θ²+θ) and −1/(θ³−θ). | Tests actual native powerSum. |
| §0.2 negative cutoff | d = −1; empty/nonempty | Fixed nonempty sum 0; truncated nonempty 0; truncated empty 1. | Uniform empty-cutoff convention. |
| §0.2 factorization | d = 0,1; depth one/two | S₀(1)=1·1; S₁(1,1)=S₁(1)·S₀(1)=S₁(1). | Wrong empty truncation 0 gives wrong result. |
| §0.2 degree characters | q = 3,d = 1,ε = −1 | S₁(−1;1)=−S₁(1), leading u³ versus 2u³. | Character power is degree, not q-power. |
| §0.2 small exponent | q = 3,d = 1;n = 2,4 | S₁(2)=D⁻²; S₁(4)=D⁻⁴−D⁻² ≠ ℓ₁⁻⁴. | Bound n ≤ q necessary. |
| §0.2 no-carry minimum | q = 2,k = 1,d = 2 | (2,1) weight 4 versus (1,2) weight 5; degree −2−4 = −6. | Matches enumerated S₂(1). |
| §0.2 no-carry membership | q = 2,k = 2; q = 4,k = 2 | (1,2) fails due to carry with k−1=1; at q=4 the least one-part multiple is 6, giving degree −8. | Distinguishes p digits from q divisibility. |
| §0.2 degree descent | F₂,k = 1; F₃,k = 4 | Degrees 0,−2,−6 and 0,−6,−24. | Strict in both prime-field probes. |
| §0.2 positive exponent hypothesis | k = 0,d = 0,1 | S₀(0)=1; S₁(0)=q=0. | Added headline explicitly requires k > 0. |
| §0.3 MZV definition/convergence | ∅,(1),(1,1),F₂ | Values 1, 1+u²+u³+…, u²+u³+…; fixed-degree norms tend to 0. | Leading entry 1 is allowed. |
| §0.3 logarithm comparison | F₂; index (1) | Both begin 1+u²+u³+u⁴+u⁵ and agree through u³⁹. | Uses signed ℓ denominators. |
| §0.4 alternating definition | F₂; F₃,ε = −1 | F₂ has one character; at F₃ twisted minus ordinary starts u³+u⁵+u⁷. | Nontrivial degree twist retained. |
| §0.5 MZV nonvanishing | ∅; F₂,(1,1); F₃,(1,1) | Leading terms 1,u²,2u³, all nonzero. | Empty and positive depths agree with headline. |
| §0.6 CMPL definition | ∅,(1),F₂ | Values 1 and 1+u²+u³+…; agreement with logarithm. | Actual denominator body, not a free predicate. |
| §0.6 full convergence domain | q=3,s=(2,2),z=(1,θ⁴) | Exponent −3·3^d₁+3^d₂ ≤ −8·3^d₂ for d₁>d₂; tail exponent +3^d₂. | Full tuple converges although last tail diverges. |
| §0.6 zero coordinate | z₂=0 | Every product term 0; whole series 0. | Whole-tuple decay alone cannot force prefixes. |
| §0.6 constant-root factor | q=3,γ²=−1; d=1,2 | γ³/γ=−1; γ⁹/γ=1, equal ε and ε². | Keeps product γ normalization. |
| §0.7 CMPL nonvanishing | F₂; z=1 versus z=0 | Leading term 1, next norm 2⁻²; zero input gives value 0. | Nonzero-coordinate condition retained for general points. |
| §0.8 bounded-entry comparison | q=3,s=(1,2) versus (4) | First Z and Li agree through u³⁹; Li₄−ζ₄ = u⁶+2u⁸+u¹²+…. | No pointwise identity outside the entry bound. |
| §0.9 four spaces | w=0; F₃,w=1 | Four scalar lines at w=0, dimension 1; ordinary line one generator, alternating family two. | Scalar field and finite generation correct. |
| §0.9 K versus K̄ | q=3,ρζ(1) | Valuation −1/2, while elements of K∞ have integral nonzero valuation. | Algebraic-closure span is not a subspace of K∞. |
| §0.10 Thakur family | q=2,w=3; q=3,w=4 | 2 and 6 indices; (q,1) admitted but its prefix (q) excluded. | Family is not prefix-closed. |
| §0.10 IND and block bijection | q=2,(3); q=3,(4) | Maps (3)↦(2,1), (4)↦(3,1), preserving weight 3 and 4. | Different index families with equal counts. |
| §0.10 small entries | q=3,w=4 | Five compositions; Thakur has six, extra (3,1). | No identification of small and Thakur families in general. |
| §0.11 d sequence | q=2,weights 0–5 | 1,1,1,2,3,5; exceptional initial d(2)=1, not 2. | Native count and recurrence agree. |
| §0.11 s sequence | q=3,weights 1–5 | 2,6,16,46,130. | Correct coefficients q−1 for the first q−1 terms. |
| §0.11 t sequence | q=3,weights 4,5 | 48,140 versus s=46,130. | Characters on q-entries are not silently restricted. |
| §0.11 c sequence | q=4,w=5 | 13 versus d(5)=14. | Small-entry count retained separately. |
| §0.12 family counts | q=3,w=4 | Thakur 6, IND 6, AS 46, AT 48. | All four counts distinguished. |
| §0.13 zeta evaluation | q=2,3 | ζ₁/π̃=−D⁻¹; ζ₂/π̃²=−D⁻¹. Exponential coefficient gives −1/D on both sides. | Period sign fixed by explicit coefficient. |
| §0.13 generating exponential identity | Coefficient z^(q−1) | z/e_C(z) coefficient −D⁻¹; ζ(q−1)/π̃^(q−1)=−D⁻¹. | Denominator D ≠ 0. |
| §0.14 Eulerian predicate | q=3; weights 1,2; z=0 | Nonzero weight-one ratio has half-integral valuation; ζ₂/π̃²=−D⁻¹∈K; zero ratio=0. | Nonzero qualification essential. |
| §0.14 coefficient field | q=3,ρ⁻¹π̃ | Valuation −1 and element in K∞; coefficient ρ⁻¹ is outside constant rational field. | General K̄-coefficient version would be false. |
| §1.1 Chen coefficient | q=2,(1,2),j=1,2; q=3,(2,2),j=2 | 1,0 and 1; q=3,j=1 cutoff gives 0 though binomial expression is 1. | Exact range and divisibility retained. |
| §1.2 equal-degree formula | d=−1,0,1,2; (1,1),(1,2),(2,2); F₂,F₃ | All residuals zero through u³⁹; at d=0 both sides=1. | Checks negative degree and correction term. |
| §1.3 ordered-merge extension | [1]*[1] over ℤ,F₂,F₃ | 2[1,1]+[2]; [2]; 2[1,1]+[2]. | Coefficient extension preserves multiplicity. |
| §1.3 q-shuffle | q=2,[1],[2] | [1,2]+[2,1]+[3]+[2,1]=[1,2]+[3]. | Extra correction cancels exactly one doubled term. |
| §1.3 unit / box-plus | Empty input; (2)⊞(1,1) | Empty harmonic product returns input; empty box-plus is 0; nonempty output (3,1) has weight 4. | Distinct operations and units. |
| §1.3 support depths | [1]*[1] | Depths 2 and 1 lie between max(1,1)=1 and 1+1=2. | Support bounds respected. |
| §1.4 realisations | Empty; s=(1),d=0 | Full empty=1; fixed empty δ₀; for positive depth cutoff difference 1−0=1. | Source/target and cutoff convention fixed. |
| §1.4 empty difference control | Empty at d=0 | Fixed value 1 but truncated difference 1−1=0. | Difference law stays positive-depth only. |
| §1.5 algebra homomorphism | F₃,[1]^2; F₂,[1]*[2] | ζ₁²−ζ₂−2ζ₁₁ and Li₁Li₂−Li₁₂−Li₂₁−Li₃ have residual 0 through u³⁹. | Both realisations tested with their own products. |
| §1.6 controlled products | F₃,d=1 | S₁(1)²=D⁻²=S₁(2); mixed product S₁(1)S₀(1)=−D⁻¹=S₁(1,1). | Weights 2, depths 1/2 and dominated prefixes agree. |
| §1.7 value-algebra product | F₃; weight zero | ζ₁²=ζ₂+2ζ₁₁ through u³⁹; K·1 times K·1=K·1. | Both graded multiplication and unitality. |
| §1.7 alternating product | F₃; ε=−1 twice | Squared character is 1; direct nested-sum partition gives ζ₂+2ζ(−1,−1;1,1). | Total character multiplicative. |
| §1.8 period powers | q=3,m=0,1,2 | 1,−Dζ₂,D²ζ₂²; weights 0,2,4. | Sign disappears only on the even power. |
| §2.1 binary relation definition | Empty pair ([∅],−[∅]) | Residual at −1 is −1 and at 0 is 1, although summed value=0. | Both directions distinguished; converse is false. |
| §2.1 fixed subspace | Zero pair; R₁ | Zero pair residual 0 at every d, shifted coefficients 0; R₁ has shifted coefficient D ≠ 0. | Fixedness is not automatic. |
| §2.2 fundamental relation | F₂,F₃,d=0 and full values | d=0 gives 1+D/ℓ₁=0; full Laurent residual zero through u³⁹. | D multiplier and sign preserved. |
| §2.3 B*, C, BC | q=2,d=1 | Fixed parts B*=0, C=D⁻³, desired=D⁻²; 0−D·D⁻³=D⁻², while 0−D⁻³ differs. | Accepted correction retained. |
| §2.3 identity/head boundary | Empty index; head 0 | B*_∅ and C_∅ return R; head 0 is outside positive indices. | No totalized zero-head operation introduced. |
| §2.4 controlled C relation | W=(1),d=0 | Leading S₀(q+1)=1; shifted contribution Dℓ₁⁻¹=−1; residual 0. | Leading index and coefficient correct. |
| §2.5 bad-index reduction | q=2,s=(3) | U(3)=D[1,2]; second iterate D²([1,1,1]+[2,1]); residual 0 through u³⁹. | Keeps the box-plus term. |
| §2.6 admissible reduction | q=2,w=k=3 | Final support (1,1,1),(2,1), both 3-admissible, depths 3 and 2 ≥1. | Weight and depth preserved in the probe. |
| §2.7 Brown spanning | q=2,w=3; w=0 | ζ₃=D²(ζ₁₁₁+ζ₂₁) through u³⁹; empty span K·1=K. | Nontrivial reduction plus boundary. |
| §2.7 low-weight family wording | q=3,w=1 and 3 | {(1)} and {(1,1,1),(1,2),(2,1)}. | Separated w<q and w=q wording. |
| §2.8 bridge | q=3,w=4 | Both spanning presentations use six bounded-entry values; singleton Li₄−ζ₄ starts u⁶. | Equality is of spans, not pointwise maps. |
| §2.9 decomposition | (q−1,q,q,q+1,1) | sT=(q−1),m=2,s′=(q+1,1),s″=(1,1). | Unique parsing; sT differs from Init. |
| §2.9 U fixes allowed family | Empty; q=2,(2,1) | U[∅]=[∅]; U[2,1]=[2,1], as m=0,s′=∅ and box-plus with empty is 0. | No zero-versus-empty-basis confusion. |
| §2.10 rewriting theorem | q=2,(3) | Second iterate has two allowed indices; ζ residual 0 through u³⁹. | Finite support and value preservation. |
| §2.11 IND generation | q=2,w=3 | IND=(1,1,1),(3), Thakur=(1,1,1),(2,1); ι(3)=(2,1), residue determinant ±1. | Bases indexed by different families. |
| §2.12 strong Brown contraction | q=3,w=4 | (3,1) contracts to (4); characters over 3 and 1 have four choices but only two products. | Repeated left sides permitted; no false larger-family basis. |
| §2.13 sharp relation | q=2,3 | At d=0, 1+D/ℓ₁=0; full ζ(2q−1)+Dζ(1,2q−2) residual zero through u³⁹. | Sharp obstruction preserved. |
| §3.1 factorial | n=1,q,q+1; q=3 | Γ₁=Γ₃=1; Γ₄=D. Digits of n−1=3 are (0,1), not (3,0). | Ordinary base-q digits fixed. |
| §3.1 Anderson–Thakur polynomial | q=3,n=1,3,4,5 | 1,1,2t³−t−θ³,θ³−t. For n=5 degreeθ=3 ≤6. | Index shift and degree bound agree. |
| §3.2 generating series | d=0,1 | (1−x)⁻¹; (ℓ₁+x^q−x)⁻¹, with initial coefficients ℓ₁⁻¹,ℓ₁⁻². | Formal inverse has constant denominator 1. |
| §3.2 vanishing γ_j | d=1,j=2 | Factor θ^(q²)−(θ^q)^q=0. | No spurious high-j term. |
| §3.2 interpolation | s=1,d=0,1 | Both sides π̃⁻¹ and −π̃⁻¹/D. | Twist fixes evaluation variable. |
| §3.3 deformation denominator | d=0,1 | L₀=1; L₁(θ)=θ−θ^q=ℓ₁. | Signed specialization correct. |
| §3.3 deformation recursion | s=(1),Q=1 | Lσ−L=(t−θ)Ω. | Includes essential t−θ factor. |
| §3.3 subtuple bound | q=3,s=(2,2),Q=(1,θ⁴) | Tuple exponents −3,+1, combined at adjacent degrees −8·3^d; final tail grows 3^(3^d). | Termwise hypothesis for full matrix retained. |
| §3.4 entireness | Empty tuple; q=2,s=(1),Q=1 | Empty=1; values at θ,θ² are −D⁻¹,D⁻². | Evaluation at θ uses entire ring, not radius one. |
| §3.4 whole-tuple prefix implication | Nonzero tuple versus Q₂=0 | Nonzero tuple norm is positive constant times a q-power of prefix norm; with Q₂=0 full norm=0 for every prefix. | Nonzero-coordinate hypothesis necessary. |
| §3.5 Frobenius specialization | q=2,s=(1),j=1 | (−D⁻¹)²=D⁻², matching value at θ². | Correct forward Frobenius. |
| §3.5 weaker domain | q=3,Q=(1,t+θ⁴); Q=(1,0) | First tuple exponent at d₁=d₂+1 is −8·3^d₂; zero tuple gives both sides 0. | No unnecessary tail bound imposed. |
| §3.6 matrix construction | s=(1), then (2,1) | Matrix product second row Qσ(t−θ)Ω+L; determinant exponents 1 and 3+1=4. | Lower-triangular and column conventions. |
| §3.6 zero depth | ∅ | Φ=Ψ=(1), determinant 1, cokernel 0. | Trivial motive preserved. |
| §3.7 MZ property | Li(1),0 | Witness at θ has (π̃⁻¹,Li₁/π̃); at θ^q first entry 0; zero excluded. | Last and first coordinates determine normalization. |
| §3.7 product/scale | Weight-one witness squared; scalar −1 | First coordinate π̃⁻², weight 2; c changes by −1 under Z↦−Z. | Weight addition and K× scaling agree. |
| §3.8 MZ realization | q=3,s=(2) | H₂=Γ₂=1; normalized value ζ₂/π̃²=−D⁻¹. | Correct ordinary realization. |
| §3.8 character normalization | q=3,χ=−1 or 1 | γ²=−1 gives γ∉F₃; product of two such roots is −1∈F₃. | General array needs γ-product normalization. |
| §3.9 grading | q=3,weights 0 and normalized 2 | Normalized ζ₂ line equals K̄·(−D⁻¹)=K̄, so its intersection with weight-zero scalars has dimension 1. | Tests why unnormalized actual MZVs are in headline. |
| §3.9 scalar towers | Weight-zero empty value in E | Either K-embedding sends 1 to 1; K̄-span is K̄·1 with dimension 1. | Both tower hypotheses retained. |
| §3.10 merged prefix set | No pairs; (1,2),(3); two polynomial prefixes | Sizes 1,2 and 4 in the specified examples; augmented empty vector (1,Ω^w,0). | Keeps root and distinguishes polynomial data. |
| §3.10 determinant | Single depth-one pair | det Φ=(t−θ)^w; last row a₁(t)Qσ(t−θ)^w. | Correct block and coefficient direction. |
| §3.11 ABP criterion | q=2,ζ₂+Dζ₁₁ relation | f_empty(θ)=0; f_(1)(θ)=DLi₁/π̃=1. | A missing suffix row loses a nonzero rational coordinate. |
| §3.12 Eulerian suffix | q=2; q=3 isolated weight-one suffix | At q=2 modulus q−1=1 imposes none; at q=3 weight-one period valuation −3/2 is nonintegral. | Tests empty obstruction and nontrivial obstruction. |
| §4.1 ring and prefix tree | q=3,w=2; w=0 | IND°₂={(2)}, tree {∅,(2)}; weight zero tree {∅}. | Full leaves and root retained. |
| §4.1 residual scalar field | w=0,f=1,t,θ | Residuals 0,0,θ^q−θ. | F(t)-linear, not K(t)-linear. |
| §4.1 zero extension | One coordinate outside tree assigned 1 | Outside-tree residual=1, so it is not a solution; zero assignment residual=0. | Kernel has no extra outside coordinates. |
| §4.2 descent | B=F₂,F=G=1,α²=α+1 | Both equation sides α+1, but α∉F₂[t]. | Positive degree hypothesis necessary. |
| §4.3 degree bound | Leaf; q=3,w=1 | Leaf constant degree 0; root bound 1/2 forces degree ≤0 and equation a=(a+b)(t−θ) forces a=b=0. | No bounded carrier replaces the actual kernel. |
| §4.4 relation-to-solution | q=2,w=1 | Root t²−θ, leaf t−t² give root sum t−θ, both sides t²−θ². | Actual rational/polynomial system, leaf coefficient fixed. |
| §4.5 solution dimension | w=0; q=3,w=1; w=q−1 | Scalar solutions 1; zero pair only in weight one; at q−1 root t^q−θ, leaf t−t^q, both sides t^q−θ^q. | Dimension 1,0,1 probes; Module.Finite explicit. |
| §4.5 coefficient-system size | q=3,ℓ=7,m=2 | ℓ+(ℓ−m)=7+5=12; 2(ℓ−m)=10. | Keeps corrected variable count. |
| §4.6 twisted rigidity | q=3,w=2,γ=1 versus γ²=−1 | Root t³−θ³, leaf t−t³; residual 0 for γ=1 and (1−γ)(t−t³)(t−θ³)² for γ²=−1. | Nontrivial character excluded. |
| §4.6 positive-weight boundary | w=0,δ_empty=1 | Equation 1=1 for every ε; nonzero solution. | Headline explicitly requires w>0. |
| §4.7 two-row exception | q=3,k=2 | δ₁=(t−θ)⁶,a₁=t³−t,δ₂=a₂=0; exact polynomial residual 0. | Eulerian line retained. |
| §4.7 forbidden extension of line | q=3,k=3; same candidate | First-row residual has θ²¹ coefficient 1; cannot vanish. | Endpoint is not given the k=2 line. |
| §5.1 small-entry independence | q=2,w=1 and w=0 | Singleton values ζ₁ with leading 1, and empty value 1; both nonzero. | Non-vacuous singleton tests. |
| §5.2 low-weight basis | q=2,w=1,2 | Dimensions 1,1; weight-two relation ζ₂=Dζ₁₁ with nonzero ζ₁₁. | Includes q=2. |
| §5.3 bounded IND independence | q=3,w=0 and w=5 | Empty family value 1; at w=5, ζ₅+Dζ₁₄ has residual 0 through u³⁹ and two distinct IND indices. | Upper bound 2q−2 retained. |
| §5.4 bounded Thakur basis | q=3,w=4 | Six bounded-entry indices; all have weight 4; IND also has six. | Correct finite cardinal comparison. |
| §5.5 CMPL basis | q=2,w=0 and 1 | Li_empty=1 and Li₁ leading 1; each span is a one-dimensional scalar line. | Actual values in basis statement. |
| §5.6 Thakur basis / Todd | q=2,w=0,1,2; q=3,w=5 | First dimensions 1,1,1; independent count d(5)=6+3+2=11. | Boundary and recurrence consistent. |
| §5.6 algebraic-closure basis | w=0 in common overfield | algebraMap(1)=1; span K̄·1 and independent singleton. | Scalar-extension normalization fixed. |
| §5.7 all relations | q=2,w=1,2,3 | Kernel dimensions 1−1=0,2−1=1,4−2=2; weight-three two relation pivots form identity matrix. | R_w is not all of H_w. |
| §5.8 character roots | q=2,3; γ²=−1 | At q=2 sole root 1; at q=3 1,γ are basis of a quadratic constant extension, γ∉F₃((u)). | Indexed roots and character splitting consistent. |
| §5.9 normalized period relations | q=2,w=1 | 1+D𝔏𝔦₁(θ)=1+D(−D⁻¹)=0; constant coefficient 1 ≠0. | No false homogeneous relation. |
| §5.10 alternating basis | w=0; q=3,w=1 | One empty value; q−1=2 degree-character values. | K and weight conventions consistent. |
| §5.11 alternating dimension | q=2,w=3; q=3,w=4 | d(3)=2=s(3) at q=2; weighted count 46 at q=3,w=4. | Does not confuse 46 with AT count 48. |
| §5.12 ordinary lower bound | q=3,w=4 | Six trivial-character IND indices versus 46 alternating arrays; ordinary lower count=6. | Bound uses CMPLs, not unsupported unrestricted IND MZV independence. |
| §5.13 direct family | q=3,w=4,5,6 | Array counts 46,130,368; (2,3,1) accepted, (3,2,1) rejected. | Adjacency and character restriction correct. |
| §5.13 endpoint | q=3,w=7 | 37 indices,1040 arrays; s(7)=1042; (4,3),(2,5) admitted, (7),(2,2,3) excluded. | Independence is not a basis claim at endpoint. |
| §5.13 characteristic-two endpoint | q=2,w=4 | Exactly (2,1,1),(1,2,1),(1,3); obsolete family relation residual 0 through u³⁹. | Keeps corrected family. |
| §5.14 star versus strict | Depth 2; degrees (0,0) | Star summand xy; strict has none; merged depth-one value contributes xy. At x=y=0 all vanish. | Inclusion–exclusion sign fixed. |
| §5.14 finite-place normalization | Depth 1,n≤q | H_n=Γ_n=1; expression equals continued Li⋆_n(1)_v. For n=q−1 it is 0. | Actual continuation, not infinity evaluation. |
| §5.14 coefficient-field control | q=2,v=θ,z=θ²α,α∈F₄∖F₂ | d=0 term θ²α; next term valuation 4−1=3; scaled residue α∉F₂. | K_v-valued claim now requires inputs in K_v^r; added Check. |
| §5.14 bad integral unit control | q=2,v dividing D | D≠0 in field K_v, so Dζ₁₁,v=0 implies ζ₁₁,v=0 even though D is not an integral unit. | No good-place restriction. |
| §5.14 dimension bound | q=3,w=1,2,3,4; q=2,w=1,2,3 | 1,1,2,4 and 0,0,1, using d(negative)=0 and d(0)=1. | Correct integer index subtraction. |
| Worked examples | q=2,w=3; q=3,w=4 | Thakur/IND counts 2/2 and 6/6; alternating AS/AT counts 46/48 at q=3. | Examples agree with all dimension and generation targets. |

## Unresolved items and limits

No build, gate, citation, dependency-order or mathematical-content defect remains identified. The constructions omitted from Suggested.lean are explicit README targets and are named as not statable in its docstring; their absence is not covered by replacement predicates. The LawrenceVenkateshMethod exact board head was unreadable as noted above. Finite Laurent computations are probes, not proofs of infinite identities or the basis theorems. No push, pull-request write, issue write or comment was performed.


Pull request: #1697 (roadmap/drinfeld-modules-and-t-modules-part-ii at 58a2def)
