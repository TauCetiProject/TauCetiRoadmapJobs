# PORT-AbelianSurfacesModularity

Branch: `roadmap/abelian-surfaces-modularity`.
Head commit: `3acab1bb80604a2d3f0275bef6dd464d1302ec53`.
Base: `c994070`; initial worktree status was empty. Only the three files in `TauCetiRoadmap/AbelianSurfacesModularity/` enter the commit.

## Draft pull request body

Builds the arithmetic of the 2–3 switch for abelian surfaces, combining finite symplectic image theory, ordinary local realizations at 2 and 3, residual A₅ automorphy and approximation in marked genus-two moduli. The endpoints are fifteen-image modularity, Theorems A and B, and bad-at-2 modularity, with all-place L-function comparisons; the complements cover density, 32 Galois endomorphism types and ordinary residual modularity modulo 2. Generic moduli, deformation, lifting and transfer theory remain with their named suppliers, and their classification and proof premises are explicit.

AI assistance: Codex (GPT-6) performed the port and the documented self-review.

## Validation

- Exact build outcome: `Build completed successfully (8954 jobs).`
- Module outcome: `✔ [8954/8954] Built TauCetiRoadmap.AbelianSurfacesModularity.Suggested (1.5s)`.
- Exit status 0; warnings: **0**, including 0 sorry warnings. The acceptance file contains no declarations because none of the actual headline theorems is statable on the pinned carriers.
- Gate: `gate AbelianSurfacesModularity: set_option=0 blob=0 latex=0 tex=0 prnum=0 sorry-data=0 sorry-examples=0 residue=0 private-paths=0 imports=0 mathlib-subimports=0 no-import-mathlib=0 lean-lines=0 forbidden=0 dropped=0 readme-ids-missing=0 empty-sections=0 round-labels=0 long-fences=0 layer-ids=0 target-ids=0 depcheck=0 metadata=0 stray-files=0 dirty=0 outside-folder=0 source-material=0 OK`
- `git diff --check` and staged whitespace check: exit 0.
- Dependency check, exact output:

```text
depcheck: 200 roadmaps, 1307 edges, 0 problem(s)
```

There is no UPWARD, CYCLE or moved line. The order and tooling were not edited.

## Accepted decisions and port repairs

The accepted review in `packages/AbelianSurfacesModularity/review.json` has zero findings and no non-blocking note requiring a change. Its 19 supplier contracts and the inherited classification/lifting proof gates remain intact. All 46 target sections, definition API lists, Checks, layer Examples and Dependencies, worked examples, and source locators are preserved.

The complete README was read as a mathematical specification, including each API and Check. The following repairs resulted:

1. In §1.5, changed the false element equality 3=(1−ζ₃)² to the true equality of principal ideals (3)=((1−ζ₃)²). Direct expansion gives (1−ζ₃)²=−3ζ₃. Added that computation as a negative-control Check. This agrees with the ideal notation in BCGP25 line 6847.
2. In §2.1, named W=U⁰/L where the quotient is introduced, resolving the free W used by the subsequent API.
3. In §8.3, replaced the ambiguous “no finite character twist” by “no character twist with finite image,” matching §8.2 and the unequal Hodge–Tate weight argument.
4. In §6.2, deleted the sentence describing the geometric switch as an automorphic conclusion subject to classification and lifting premises. Its actual local-neighbourhood, finite-model, approximation and endomorphism contracts remain; automorphic conclusions elsewhere retain their proof gates. Layer 6's dependency paragraph explicitly needs no lifting theorem.
5. Resolved the HyperellipticCurves weighted-projective model citation to §0.2, “The model and the weighted-projective curve,” in both Scope and ownership and Exact supplier contracts. Section 0.1 is the binary-form discriminant; §0.3 remains the smoothness supplier.
6. Replaced the dangling `sources.toml` link in References. The target folder intentionally has only the three required files; the versioned bibliography and exact theorem/page/line locators remain self-contained. The source manifest remains read-only at `packages/AbelianSurfacesModularity/sources.toml`.

## Lean content and mechanical signature audit

`Suggested.lean` and `metadata.toml` are byte-for-byte identical to the accepted package. Nothing moved from Lean to README during the port, and no theorem, definition or example was dropped or added. The already empty acceptance file explains each missing headline carrier and imports only `Mathlib`.

The declaration inventory was computed mechanically: **0 definitions, 0 instances, 0 theorems, 0 structures, 0 opaque declarations**. Consequently the list of `#check @name` commands is empty. The module containing that empty inventory was elaborated by the successful module build above. There is no elaborated binder to compare, no silently dropped hypothesis, and no signature change. No scratch Lean command outside the authorized build was needed.

The pin audit used Mathlib `f6090c7095e1e56b3464c1daba5f24631f1290d2` and Tau Ceti `358314d4ab97483df4fc4cb8adcc02e74a8d9f5a`, matching this worktree's manifest and actual dependency heads. These differ from the package review's older pins. Searches by mathematical object still find no cuspidal GSp₄/spin-transfer, ordinary attachment, framed odd-theta moduli or abelian-surface compatible-system realization carriers on which the headline conclusions could be stated. The native abelian-variety scheme and algebraic Hecke characters do not supply those missing structures; no free predicate or matrix-only substitute was introduced.

Native declarations inspected at those pins include:

| Native supplier | Exact source locator and boundary |
| --- | --- |
| `Matrix.J`, `Matrix.symplecticGroup` | `Mathlib/LinearAlgebra/SymplecticGroup.lean` lines 58, 101: `Matrix.fromBlocks 0 (-1) 1 0` and carrier `A * J * Aᵀ = J`; no arbitrary multiplier. |
| `Matrix.charpoly`, `Matrix.IsSymm` | `Mathlib/LinearAlgebra/Matrix/Charpoly/Basic.lean` line 132 and `Mathlib/LinearAlgebra/Matrix/Symmetric.lean` line 33. |
| `alternatingGroup`, `card_alternatingGroup`, `alternatingGroup.isSimpleGroup` | `Mathlib/GroupTheory/SpecificGroups/Alternating.lean` lines 72, 136 and `Mathlib/GroupTheory/SpecificGroups/Alternating/Simple.lean` line 203: sign kernel, nontrivial finite carrier for the count, at least five letters for simplicity. |
| `MulAction.stabilizer`, `Representation` | `Mathlib/GroupTheory/GroupAction/Defs.lean` line 515 and `Mathlib/RepresentationTheory/Basic.lean` line 48: the latter is `G →* (V →ₗ[k] V)`, with no topology or finite dimension built in. |
| `groupCohomology.H1`, `Polynomial.aroots` | `Mathlib/RepresentationTheory/Homological/GroupCohomology/LowDegree.lean` line 965 and `Mathlib/Algebra/Polynomial/Roots.lean` line 479: cohomology in degree one and multiset roots of the mapped polynomial. |
| `TauCeti.AlgebraicGeometry.AbelianVariety` | `TauCeti/AlgebraicGeometry/AbelianVariety/Basic.lean` line 95: fields `toOver`, `grpObj`, `isProper`, `geometricallyIntegral`; no polarization or dimension constraint is bundled. |
| `TauCeti.schurMultiplier` | `TauCeti/RepresentationTheory/ProjectiveRepresentation/SchurMultiplier.lean` line 148: `H2 (Rep.ofMulDistribMulAction G kˣ)`, not the integral Schur multiplier. |
| `TauCeti.GlobalNumberFields.HeckeCharacter` and `IsAlgebraic` | `TauCeti/NumberTheory/NumberField/Global/HeckeCharacter/Basic.lean` line 70 and `HeckeCharacter/Algebraic.lean` line 60: continuous idele-class homomorphism, integer infinity exponents on the identity component, unrestricted real sign parity. |
| `TauCeti.GlobalNumberFields.HeckeCharacter.add_conjugate_eq_add_conjugate` | `TauCeti/NumberTheory/NumberField/Global/HeckeCharacter/Purity.lean` line 98: equality of conjugate exponent sums with explicit real/complex exponent-agreement hypotheses; no maximal-CM-subfield factorization theorem. |
| `Representation.exists_ne_zero_apply_eq_self_of_forall_pow_eq_one` | `TauCeti/RepresentationTheory/PGroupInvariants.lean` line 161: commutative characteristic-p coefficients, p prime, finite group, nontrivial module and p-power-order operators; no finite-dimensionality assumption. |

No TauCeti module is actually used by an acceptance declaration, so adding a TauCeti import would serve no purpose.

## Suppliers, ownership and duplication sweep

Every cross-roadmap citation was resolved against main or the indexed head of the new-roadmap supplier. The relevant sections were opened and compared with the contracts; the one locator correction is recorded above. Citation resolution reports no missing cross-roadmap citation and no missing roadmap Lean name. Its library-name lookup does not inspect these Lake dependencies, so those declarations were checked directly at the pins instead.

The sweep used `roadmaps list`, `roadmaps grep` by object and `roadmaps show` for the cited roadmaps, searching all main roadmaps and all indexed open heads. Separate searches covered the board packages and the supplied sibling checkouts. Queries covered the even-subset torsion model and exceptional isomorphism, odd-theta and Torelli spaces, near/relaxed adequacy and reasonableness, symplectic surface images, ordinary Weil quartics, finite-flat self-dual lifts, level-three monodromy, Galois endomorphism types and singular spin transfer. Existing-roadmap revisions were treated as main dependencies, not as suppliers of unmerged changes.

No new duplicate target required deletion. The existing Scope and ownership already assigns the even-subset realization to AbelianSchemesAndArithmeticModuli A3.12, ordinary residual-point theory to NeronModelsAndSemistableAbelianVarieties §§6.11–6.13, generic adequacy and image theory to ArithmeticGaloisRepresentations, relaxed adequacy to PotentialAutomorphyInfrastructurePartII PL.4, fine curve moduli to AbelianSchemesAndArithmeticModuliPartII B4.1, polynomial Weil theory to CurvesOverFiniteFields, polarized finite-field trichotomy to AbelianVarietiesOverFiniteFields §10.3 and endomorphism-type classification to SatoTateGroups §§8.7, 9.7–9.10. Those are imports by contract; the retained targets are the explicit surface specializations and endpoint comparisons specified there. No supplier theorem was restated in Lean. No construction moved from a later roadmap into this one.

The open FaltingsFinitenessAndIsogenyTheoremsPartII explicitly excludes surface open-image theorems in its Scope and ownership; its quantitative adelic centralizer bounds do not replace the surface-open-image contract here. HilbertModularSurfaces, SiegelModularForms, HyperellipticCurves and AbelianVarietiesOverFiniteFields develop their respective geometric/form carriers rather than the 2–3 switch endpoints. Generic moduli and lifting remain with their existing owners; this roadmap owns the specialized arithmetic assembly, local class tables and comparisons described in its Scope.

Dependencies that are still new-roadmap pull requests, by name:

- AbelianSchemesAndArithmeticModuli
- AbelianSchemesAndArithmeticModuliPartII
- CurvesOverFiniteFields
- AbelianVarietiesOverFiniteFields
- HyperellipticCurves
- SatoTateGroups
- ArithmeticGaloisRepresentations
- FaltingsFinitenessAndIsogenyTheorems
- NeronModelsAndSemistableAbelianVarieties
- ShimuraCompactifications
- LocalGaloisDeformationRings
- FiniteFlatGroupsAndIntegralPadicHodgeTheory
- OrdinaryAutomorphicFormsAndModularityLifting
- InverseGaloisAndArithmeticFundamentalGroups
- EndoscopicTransferAndUnitaryTraceComparison
- AutomorphicLFunctionsAndLocalFactors
- ModularityAndLanglandsExtensions
- ClassicalSerreModularity
- GL2AutomorphicRepresentationsAndTransfer
- AutomorphicGaloisRepresentationsPartII
- AutomorphicGaloisRepresentations
- AutomorphicFormsOnReductiveGroups
- EllipticCurveModularity
- EllipticCurveModularityPartIIGL2TypeAbelianVarieties
- ShimuraVarieties
- AlgebraicModuliForArithmeticGeometry
- RelativeJacobiansAndIntegralCurveModels

PotentialAutomorphyInfrastructurePartII PL.0/PL.4 and GSp4NonregularModularityLifting NR2/NR10/NR11 are earlier entries in the supplied merge order with readable designs under their package directories. They have no indexed open-roadmap head; their exact design sections were read as contracts. They are retained supplier requirements, not asserted pin-level declarations. AlgebraicCurves, PolynomialGaloisGroups and EllipticCurves are consumed as they stand on main.

## Adversarial mathematics pass

These are computed boundary and convention tests, not numerical proofs of automorphy, rationality or lifting. Source class labels and the deep conclusions remain proof targets with their stated hypotheses. Each target has a row below; each definition API law has its own row in the next table. Repeated prose occurrences of the same claim share the same row. The final table covers all 19 accepted supplier-contract boundaries.

Finite-field computations used explicit arithmetic in 𝔽₂, 𝔽₄, 𝔽₃ and 𝔽₉, both projective charts for the curve census, and point counts to recover a,b. The independent A₅ computation used its (2,3,5) presentation and binary matrix ranks. Symplectic matrices came from the specified even-subset basis; all 720 distinct matrices were tested. No fetched code was executed.

| Statement | Instances and computed values | Result and change |
| --- | --- | --- |
| Conventions: realization | Trace-one elliptic fibre at 3: Q=X²−X+3, L=1−T+3T²; two copies give determinant 9 and (1−T+3T²)²; inverse Frobenius determinant is 1/3. | Geometric H¹ and arithmetic Tate conventions agree; retained. |
| Conventions: sign, duality and variable | J²=−I over ℤ; basis pairings are 1,1,0. Dual weights 0,0,−1,−1 become 3,3,2,2 after ε⁻³; s↦2−s sends 0↦2 and 1↦1. | Retained sign and motivic centre. |
| 0.1 | Elliptic product ranks 2+2=4, normalized exponents −1/2,−1/2, exterior ranks at i=0,…,5 are 1,4,6,4,1,0. [3] has degree 81, is invertible on rational H¹ and zero on A[3]. | Rational isogeny and integral torsion distinguished; r=1 and r=2 supports kept separate. |
| 0.2 | Traces −1,2 at 3 give Q=X⁴−X³+4X²−3X+9, Q(1)=10 and reduction X²(X+1)². Quadratic discriminants −11,−8 and resultant 27 are nonzero; E×E instead has Q_E². | Characteristic-zero distinguishedness holds, residual distinguishedness fails; repeated-product negative control retained. |
| 0.3 | GL₄ exponent (1−4)/2=−3/2; GL₂ exponent −1/2. Motivic fixed point is 1 versus unitary 1/2. An elliptic product has an invariant rank-two summand. | Irreducibility prevents a false cuspidal-product conclusion; classification and all-place premises retained. |
| 1.1 | Sizes 36+540+540+1620+1440+1440+4320+6480+5184+4320=25920; projective group order 51840. Cycle sums are 1+6+20=27, 5+2+20=27, 3+6+12+6=27, 15+12=27; fixed counts 1,5,3,0. | Two permutation actions needed. Lift squares −I and I separate 2C and 2D; retained. |
| 1.2 | Over 𝔽₃, (X²+X+2)² has high-to-low coefficients 1,2,2,1,1; the opposite twist has 1,1,2,2,1. ε⁻¹(F₂)=−1, whereas ν(±I)=1. | Both twists excluded together; scalar identity cannot be an outer lift. |
| 1.3 | Φ₅ has gcd 1 with its derivative over 𝔽₃; a squared irreducible quadratic has derivative gcd of degree 2. The multiplier lists have 3 and 5 classes. | Order eight alone does not establish regularity; retained. |
| 1.4 | Full group order 2·3⁴·8·80=103680, symplectic kernel 51840, index 2. The two order-64 examples have symplectic order 32; failures 4+3+3=10 leave 15 of 25. | Embedded subgroup and cyclotomic restriction retained; no near-adequacy substitution. |
| 1.5 | End dimension 16=10+6; ε in 𝔽₃[ε]/ε² is nonzero with square 0. In ℤ[ζ₃], (1−ζ₃)²=−3ζ₃, whereas 3 has coefficients 3,0. | Corrected element equality to equality of principal ideals and added this negative-control Check. |
| 2.1 | 32 even subsets modulo a line of order 2 give 16 vectors. The generator matrices have orders 2,2,5 and ranks of M−I equal to 2,1,4. All 720 distinct matrices preserve J. Centralizers for transposition, double and triple transposition have orders 48,16,48. | Normalized W=U⁰/L explicitly; no duplicate exceptional-isomorphism construction. |
| 2.2 | Trivial action fixes 6 letters and 15 nonzero torsion points; standard full S₅ fixes 1 letter and transitive full S₅ fixes 0. A separable quintic contributes 5+1=6 branch points. | Both directions of the stabilizer criterion survive; mere containment in the transitive subgroup is insufficient. |
| 2.3 | For I, transvection, double and triple transpositions, rank(g−I)=0,1,2,2 and diag(gJ)=0000,1000,1100,0000. Rank-n class formula gives 2,4,5 at n=1,2,3. | Nonalternation, not rank alone, detects the two odd classes. |
| 2.4 | Simple dimensions 1,2,2,4; 60 has 2-part 4. Order-three lifted traces are 1+1+ω+ω⁻¹=1 and 2ω+2ω⁻¹=−2; the four nontrivial fifth roots sum to −1. | Brauer trace and the two embeddings remain distinct; splitting-field hypothesis retained. |
| 2.5 | A₅ has 60 matrices; its 45 odd-order matrices span all 16 dimensions of End. Presentation a²=b³=(ab)⁵=1 gives cocycle/coboundary dimensions 0/0,15/15,16/15 for k,ad,ad/k, hence H¹=0,0,1. Socle target dimension is 1+4=5. | Imported near/relaxed predicate retained; quotient obstruction survives scalar extension to 𝔽₁₆. |
| 2.6 | An index-at-most-two subgroup has order 60 or 30; simplicity/perfectness excludes 30. Φ₅ gives four distinct eigenvalues; I gives one eigenvalue of multiplicity 4. | CM restriction retains order 60; identity conjugation still fails the oddness test. |
| 3.1 | Sign-kernel extension changes image order 120 to 60 or leaves 60. Sym³ of weights 0,1 has weights 0,1,2,3, whereas the surface has 0,0,1,1. η of order 5 has η³ of order 5; order-3 twists have trivial cube. | Residual matching and Teichmüller untwisting kept; no characteristic-zero equality inferred. |
| 3.2 | Double-transposition sign +1 and order 2 versus transposition sign −1. Polarization type (1,2) has kernel order 4, so its mod-2 pairing need not be perfect. | Explicit symplectic framing, real sign kernel and independent Zariski/enormity contracts retained. |
| 4.1 | Q=X⁴−X²+4 has Q(1)=4 and Q(2)=16=4Q(1); the uncancelled total-division expression at x=0 instead gives 0 versus 16. (X²+2)² has b=4 divisible by 2. Root-parameter test yields 16 quartics at 2 and 40 at 3. | Nonzero evaluation domain and ordinarity retained; q=1 and zero polynomial excluded by prime/monic constant-term hypotheses. |
| 4.2 | Enumerated ordinary dyadic coefficient pairs total 16, with row counts 3+1+4+2+2+4. Coefficients −3 and 3 both reduce to 0 modulo 3; b=−1 reduces to 2. | Integer quartics and possible projective classes kept separate. |
| 4.3 | Direct counts for C₁,C₂,C₃ over 𝔽₂/𝔽₄ are (5,7),(3,7),(3,3), giving (a,b)=(2,3),(0,1),(0,−1) and Q(1)=14,6,4. | Equations and ordinary distinguished polynomials agree; finer class assignment still uses the paired actions. |
| 4.4 | Two-chart census gives 768 smooth dyadic pairs out of 2048, 384 ordinary. h=1,f=x⁵ gives infinity value 1; f=x⁶ gives 0. h=f=0 has gcd ideal 0, not 1. Pointless example counts (0,6), hence (a,b)=(−3,5). Triadic smooth census is 1296/2187. | Infinity, nonreduced and section-free controls retained; supplier model locator corrected to §0.2. |
| 4.5 | Q=X⁴+X³−X²+2X+4 gives Q(1)=7 odd; reference polynomials give 4 and 6. For α²+α+2=0 mod 3, evaluation at −α is α≠0. Weil-restriction F satisfies rank(F²+I)=2 and (F²+I)²=0. | Principal pairing remains required for 6H class; underlying module alone does not fix it. |
| 4.6 | Good nonordinary Y has counts (3,9), Q=X⁴+2X²+4, b=2, Q(1)=7 and t=0. X²+1 takes values 1,2,2 on 𝔽₃. With t+a=2, t>0 and t≠1 force t=2,a=0. | Bad-or-ordinary and principal-polarization hypotheses retained; the degree-121 polarization control cannot be substituted. |
| 4.7 | Product polynomial X⁴+3X²+4 has Q(1)=8. R²=−I. q=8000 has v₂=6 and form values 6,12,0 at (1,0),(1,1),(0,0); q=5 gives 0 and q=8000⁻¹ gives −6 at (1,0). u³=2u+1, u⁶=8u+5 and N(u³)=−1. | Positive coupled periods retained; diagonal-period replacement fails the marking. |
| 4.8 | g=2 gives deg ω=2, h⁰ω=2 and h⁰ω²=3; products 1,x,x² have rank 3. Product-locus dimension 2<3. Cover degrees 720/120=6 and 120/1=120; full-subgroup degree 1 is excluded. −I acts as 2I≠I modulo 3 but I modulo 2. | Fine level-three supplier retained; local density does not put a product point into the open. |
| 4.9 | Conductor exponents for bad X and good Y are 2 and 0. Y has Q(0)=4, not 1. The ordinary values i,−i have squares −1 and difference 2i≠0 in characteristic zero. | Source conductor/torsion theorem retained as target; good nonordinary reference is no toric counterexample to the corrected claim. |
| 4.10 | Good marked distinguished set {4D,6H,6I,10A} has size 4; semistable set adds {2C,2D,6G,8A}, size 8. Both exclude {4C,12C}. Coupled and uncoupled theta-fixed counts are 2 and 0. | Both directions of the complete table retained, including bad-at-2 realizations. |
| 5.1 | Triadic census gives 1296 smooth, 864 ordinary, 10 square-quartic equations with multiplicities 4,1,1,4, and 0 rational branch points among those ten. Distinguished count 854; Weil-quartic count 40. | Equation count, scalar torsion and isogeny class kept distinct. |
| 5.2 | Traces (−1,2) give (a,b)=(−1,4), Q(1)=10 and scalar −1; (1,−2) give (1,4), Q(1)=18 and scalar +1. Each quadratic pair has resultant 27 and distinct roots. | Both signs and the bad-curve/good-Jacobian distinction retained. |
| 5.3 | Four seed count pairs over 𝔽₃/𝔽₉: (7,15),(7,11),(3,13),(5,11), hence (a,b)=(3,7),(3,5),(−1,2),(1,1). Six invertible quadratics give 8 GL₂ classes; I and Jordan fixed-space dimensions are 2 and 1. | Full ordinary module and polarized finite model retained; product seeds use dense Torelli rather than a nonexistent smooth special curve. |
| 6.1 | Excluded pair has 0 distinguished local seeds; 2D has 1 semistable existence entry and 0 good entries. A product theta divisor has 2 components versus 1 for the smooth Torelli locus. | Both directions use only ℚ₂ local input; no triadic condition introduced into the equivalence. |
| 6.2 | x(x²+1)(x²+2) has branch partition [1,1,2,2], sign +1 and order 2; S₅ and A₅ orders are 120 and 60. An anti-symplectic involution mod 3 has ±1 eigenspaces of dimensions 2,2. | Removed the irrelevant automorphic-premise sentence from this geometric conclusion; local-neighbourhood and endomorphism contracts retained. |
| 6.3 | A fixed curve has at most 6·103680=622080 marked/framed choices. Scalar local seed point counts are 10 and 18; a finite locus has dimension 0 inside dimension 3. | Finite fibres justify infinitely many isomorphism classes with no condition at 2. |
| 7.1 | Both H¹ weight lists at p=3 are 0,0,1,1, normalized GL₄ exponent −3/2. xy=0 has 2 components, while the supplier's pure finite-flat component has relative dimension 16. I has four repeated eigenvalues and Zariski dimension 0. | Unique seed component and target membership remain separate from residual equality. |
| 7.2 | Allowed/rejected image counts 15/10; full order 103680. Product algebra ℚ×ℚ has two nonzero orthogonal idempotents, whereas ℤ has only idempotents 0,1. | End=ℤ excludes false cuspidal-product conclusion; spherical seed contract retained. |
| 7.3 | Forbidden squares have coefficient vectors (1,2,2,1,1) and (1,1,2,2,1) over 𝔽₃. Full group index 1, symplectic subgroup index 2. E×E has repeated quadratic factor. | Surjective-image specialization retains polarization, unramifiedness and distinguishedness. |
| 7.4 | The five dyadic good-ordinary curve classes avoid the two forbidden classes. Triadic ordinary census has 10 square quartics out of 864. Product polarization has 2 theta components. | Good curve reduction and ordinary surface reduction remain different hypotheses. |
| 7.5 | Smooth quintic has 5+1=6 distinct branch points; a repeated root gives discriminant 0. Non-distinguished ordinary triadic curves have 0 rational branch points. | Rational marking supplies the required distinguishedness at 3. |
| 7.6 | X²+X+2 takes values 2,1,2 on 𝔽₃; a root has α⁴=−1, α⁸=1. Integral rank-two finite orders are 1,2,3,4,6; order-two twisting cannot yield order 8. | Positive toric rank excludes the forbidden quartic without requiring good reduction at 2. |
| 8.1 | (768−144)/2048=39/128, (864−10)/2187=854/2187, product 5551/46656. Conditional dyadic fraction 624/768=13/16. H^(21/2)log(H)/H¹¹=H^(−1/2)log(H) tends to 0. | Joint mod-6 equidistribution and full monodromy are retained; local marginals alone would not suffice. |
| 8.2 | ab=4 gives (a,b)=(4,1),(2,2),(1,4). For trivial rank-two input, exterior-square trace at the nontrivial coset is 2−4=−2; determinant induction trace 0 and As⁺ trace 2, so its η-twist contributes −2. Parallel weights give 2a_τ=wt at all embeddings. | Asai sign and non-finite-up-to-twist hypotheses retained; irreducibility excludes the reducible 1²⊕ε⁻¹² example. |
| 8.3 | Trivial versus factor-swapping C₂-action on ℝ×ℝ has fixed dimensions 2 versus 1. Two rational idempotents split rank 4 into 2+2; ℚ×ℚ and a real quadratic field both have dimension 2 but different idempotents. | Clarified that no character twist has finite image, rather than saying no finite character twist. |
| 8.4 | 34−2=32. Product ranks 2+2=4; surface weights 0,0,1,1 have 2 values versus 1 for a scalar-twisted finite system. Coefficient primes 5 and 7 cover q=7 and q=5 respectively, both cover q=2,3. | All-place patching by isobaric uniqueness retained; irregular scalar examples excluded. |
| 8.5 | Split θ=(0,1,2,3,4,5) has 15 distinct differences and discriminant 1194393600; θ=0 gives T⁶ and discriminant 0. c=2 is allowed, c=0 excluded. Z and Z⁺ dimensions are 6 and 7. | Leading coefficient retained so quadratic twists with nonsquare c are represented. |
| 8.6 | Six required branch points exceed #ℙ¹(𝔽₃)=4 by 2. The only positive multiple of 4 in [1,7] is 4, giving elliptic trace 0. Partition [2,2,2] fixes 0 branch points. | Curve obstruction and ordinary-product obstruction remain distinct. |
| 8.7 | E/𝔽₉ has 8 points and trace 2; Weil restriction Q=X⁴−2X²+9 has Q(1)=8, b=−2 and derivative values Q(0),Q(±1)=9,8,8. Odd refinements count 1·3+3·1=6, with 0 fixed under interchange. Nine other seeds have (a,b)=(0,−2),(1,2),(2,2),(2,2),(1,2),(1,−1),(2,4),(0,1),(2,5). | Unmarked Weil-restriction seed retained; prescribed integral W cannot be replaced by generic torsion or an arbitrary self-duality. |
| 8.8 | S₆/A₆ orders 720/360. Successive powers of 2 modulo 5 are 2,4,3,1, so Φ₅ has irreducible degree 4 over 𝔽₂ and no rank-two ordinary quotient. Spherical at 2 and 3 means level prime to 6. | Finite flatness alone does not supply an ordinary self-dual W; all lifting/classification premises retained. |

Additional pairing and period computations: the Weil-restriction F satisfies FᵀBF=2B, (F²+I)²=0 and rank(F²+I)=2. The primitive exterior-square model has 45 q-value-one lines and 27 orthogonal frames; the action 2∧²F has cycle type 3⁵·6² and zero fixed frames, pinning 6H for the descended product pairing. Rosati values 4±√5 are positive and their degree contribution is (16−5)²=121. In the coupled mod-2 basis, exactly the refinements 1100 and 1111 are fixed and each has 6 zeros; the uncoupled model fixes 0 odd refinements. The real framing matrix D=diag(1,1,−1,−1) satisfies DᵀJD=−J, matching ζ₃↦ζ₃⁻¹. These tests are reused in the moduli, realization and approximation layers with the same conventions.

All field hypotheses exclude the zero ring and q=1; all surface realizations have rank four and genus two. Characteristic-zero field extensions are separable. Characteristic two is handled by the two-chart criterion rather than division by 2. The zero polynomial, c=0, identity involution, degree-one subgroup cover, nonordinary special fibre, reducible product and nonprincipal polarization are explicit negative controls. H¹ and integral torsion are not interchanged.

### Definition and construction API laws

| Statement | Instances and computed values | Result and change |
| --- | --- | --- |
| §0.1 API 1: The predicate on an abelian surface over a number field defined above. | E₁×E₂ has ranks 2+2=4 and two GL₂ constituents. | Boundary values agree; retained. |
| §0.1 API 2: If A and B are isogenous over F then A is modular if and only if B is. | Identity isogeny leaves (1−T+3T²)² unchanged; [3] is rationally invertible but zero on 81 geometric torsion points. | Boundary values agree; retained. |
| §0.1 API 3: If E_1, E_2 are elliptic curves over F with E_i modular (a cuspidal GL₂ witness), then E_1 × E_2 is modular with r = 2. | Two trace-one factors give (1−T+3T²)² of degree 4. | Boundary values agree; retained. |
| §0.1 API 4: If ρ_(A,p) ≅ ρ_(π,p) for a weight-2 cuspidal π of GSp₄ of general type, then A is modular with r = 1 (node §0.3). | Irreducible witness has support size 1; elliptic product support size 2. | Boundary values agree; retained. |
| §0.1 API 5: The normalized isobaric representation ⊞_i (π_i ⊗ \|det\|^((1−n_i)/2)) of a witness is unique (AutomorphicLFunctionsAndLocalFactors AL.3, Strong multiplicity one for isobaric sums); in particular a cuspidal GL₄ witness excludes witnesses with r ≥ 2. | Normalized constituents have exponents −1/2,−1/2 for the product, versus −3/2 for rank 4. | Boundary values agree; retained. |
| §0.1 API 6: X is modular if and only if Jac(X) is modular. | Genus 2 gives Jacobian dimension 2 and H¹ rank 4. | Boundary values agree; retained. |
| §0.1 API 7: BCGP21 modularity (§0.1) over ℚ implies modularity in this sense; some products of elliptic curves show that the converse fails. | Product support size 2 versus general-type transfer support size 1. | Boundary values agree; retained. |
| §0.1 API 8: If A is modular, then for 0≤i≤4, L(s,Hⁱ(A))=L(s,∧ⁱH¹(A)) is the L-function of an automorphic representation of GL_(binom(4,i)), by the all-place exterior-transfer contract. For i>4, Hⁱ(A)=0 and L(s,Hⁱ(A))=1 (BCGP25 Definition 1.8.25, p.16, line 755). | At degrees 0,…,5, exterior ranks 1,4,6,4,1,0 and degree-five denominator 1. | Boundary values agree; retained. |
| §0.2 API 1: The predicate on an abelian surface over ℚ_p with ordinary ρ_(B,p). | Traces −1,2 give Q(1)=10 with distinct characteristic-zero roots. | Boundary values agree; retained. |
| §0.2 API 2: For good ordinary reduction: p-distinguished if and only if the two unit roots of Q(x) are distinct. | Discriminants −11,−8 and resultant 27 are nonzero; repeated E×E has two repeated unit roots. | Boundary values agree; retained. |
| §0.2 API 3: For good ordinary reduction: p-distinguished if and only if Q(x) is not a square in ℤ[x]. | Product quartic has a=−1 odd and is not a quadratic square; E×E is Q_E². | Boundary values agree; retained. |
| §0.2 API 4: p-distinguishedness is invariant under unramified quadratic twist. | Replacing a by −a keeps b=4 and gives Q(1)=18 rather than 10. | Boundary values agree; retained. |
| §0.2 API 5: Residual p-distinguishedness (Definition 1.8.10) implies p-distinguishedness; the converse fails. | Reduction X²(X+1)² repeats its unit root, despite characteristic-zero distinction. | Boundary values agree; retained. |
| §0.2 API 6: X is p-distinguished if Jac(X) is. | The four 𝔽₃ seeds have b=7,5,2,1, all prime to 3 and nonsquare Q. | Boundary values agree; retained. |
| §1.2 API 1: The class ⟨ρ̄(Frob₂)⟩ in the set of conjugacy classes of PGSp₄(𝔽₃) ∖ PSp₄(𝔽₃). | Outer class sizes sum to 25920; identity multiplier 1 fails required −1. | Boundary values agree; retained. |
| §1.2 API 2: The class of ρ̄ ⊗ χ, χ unramified quadratic, equals the class of ρ̄. | Twist sends high-to-low coefficients 1,2,2,1,1 to 1,1,2,2,1. | Boundary values agree; retained. |
| §1.2 API 3: Two unramified ρ̄ with similitude ε̄⁻¹ have the same class if and only if they are isomorphic up to unramified quadratic twist. | There are two scalar lifts ±g of each projective element. | Boundary values agree; retained. |
| §1.2 API 4: The characteristic polynomial of a lift, up to x ↦ −x, is the function of the class listed in §1.1. | Lift polynomials number 9 although classes number 10. | Boundary values agree; retained. |
| §1.2 API 5: The class is 4C or 12C if and only if the characteristic polynomial of ρ̄(Frob₂) is (x² + x + 2)² or (x² − x + 2)². | Squared quadratic coefficient vectors are 1,2,2,1,1 and 1,1,2,2,1. | Boundary values agree; retained. |
| §1.2 API 6: The classes of ρ̄ and of its dual (the action on B[3]) coincide. | Duality changes multiplier to its inverse; −1 has inverse −1 modulo 3. | Boundary values agree; retained. |
| §2.1 API 1: The fixed supplier isomorphism in this basis takes the three stated generator values; its source is S₆ and its target is the symplectic group of W. | 720 distinct permutation matrices preserve J on the 16-element quotient. | Boundary values agree; retained. |
| §2.1 API 2: The values of ι on (12)(34)(56), (12) and (12345) in the basis e₁, …, e₄. | The three generator orders are 2,2,5. | Boundary values agree; retained. |
| §2.1 API 3: ι sends transpositions to transvections (rank(A − 1) = 1), and double and triple transpositions to the two classes of involutions with rank(A − 1) = 2 (§2.3). | Ranks after subtracting I are 1 for a transposition, 2 for double and triple transpositions. | Boundary values agree; retained. |
| §2.1 API 4: S₅(a) and S₅(b) are not conjugate in S₆; S₅(a) is transitive on the six points. | The point-stabilizer action has 1 fixed letter; the transitive action has 0. | Boundary values agree; retained. |
| §2.1 API 5: The outer automorphism exchanges S₅(a) with S₅(b), transpositions with triple transpositions, and fixes the class of double transpositions. | Centralizer orders 48,48 for transposition/triple transposition and 16 for double transposition. | Boundary values agree; retained. |
| §2.1 API 6: The basis agrees with the Siegel-parabolic convention consumed from NeronModelsAndSemistableAbelianVarieties §6.13. | Triple-transposition centralizer 48, point-stabilizer intersection 8. | Boundary values agree; retained. |
| §4.1 API 1: The predicate on (p, a, b): X⁴ + aX³ + bX² + paX + p² has all complex roots of absolute value √p and p ∤ b. | At p=2, b=−1 gives Q=X⁴−X²+4; b=4 gives nonordinary (X²+2)². | Boundary values agree; retained. |
| §4.1 API 2: The reciprocity identity X⁴Q(p/X)=p²Q(X) is in the Laurent-polynomial ring ℤ[X,X⁻¹], or in ℤ[X] after formal denominator cancellation. On field elements its displayed rational expression is asserted only for X≠0. | At x=1, Q(2)=16=4Q(1); at x=0 uncancelled total division gives 0≠16. | Boundary values agree; retained. |
| §4.1 API 3: Q(1) is the number of 𝔽_p-points of any abelian surface in the isogeny class. | Reference Q(1) values are 4,6,14. | Boundary values agree; retained. |
| §4.1 API 4: Exactly two roots, counted with multiplicity, are p-adic units; they are the eigenvalues of Frobenius on the étale part of the p-divisible group. | Ordinary rank-four slope multiplicities are 2 unit and 2 nonunit; supersingular example has 0 unit roots. | Boundary values agree; retained. |
| §4.1 API 5: Honda–Tate: ordinary Weil quartics correspond bijectively to 𝔽_p-isogeny classes of ordinary abelian surfaces. | The complete lists have 16 and 40 ordinary coefficient pairs for p=2,3. | Boundary values agree; retained. |
| §4.1 API 6: For ordinary elliptic curves E₁, E₂ over 𝔽_p with traces t₁, t₂, Q_(E₁)Q_(E₂) is an ordinary Weil quartic, with b = t₁t₂ + 2p. | Traces −1,2 at p=3 give b=(−1)·2+6=4. | Boundary values agree; retained. |
| §4.1 API 7: For fixed p there are finitely many, bounded by \|a\| ≤ 4√p and \|b\| ≤ 6p. | At p=2 the enumerated maximum \|a\| is 3<4√2 and maximum \|b\| is 5<12. | Boundary values agree; retained. |
| §4.4 API 1: The criterion detects geometric smoothness on both charts, including degrees below six and characteristic two. | h=1,f=x⁵ has infinity value 1; f=x⁶ has 0. h=f=0 generates ideal 0. | Boundary values agree; retained. |
| §4.4 API 2: Smooth reductions of an integral equation give smooth proper models and good Jacobian reduction. If there is no section, acquire a special-fibre point over a finite unramified extension, lift it by Hensel's lemma, apply RelativeJacobiansAndIntegralCurveModels §§2.2 and 2.4 there, and descend by NeronModelsAndSemistableAbelianVarieties §5.1. The section-independent Jacobian comparison descends with its special fibre. | Pointless smooth dyadic example has counts 0,6; the section-acquiring residue extension has degree 2 and ramification index 1. | Boundary values agree; retained. |
| §4.4 API 3: In odd characteristic completing the square sends the equation to (2y+h)²=h²+4f and preserves smoothness; it is not used in characteristic 2. | At p=3 the change y↦2y+h has invertible coefficient 2; at p=2 its coefficient is 0 and cannot be inverted. | Boundary values agree; retained. |
| §4.7 API 1: A = E_q × Y for a Tate curve E_q and an ordinary curve Y with trivial mod-2 representation. | q=64 has valuation 6 and is a square and cube; Tate rank 2 plus ordinary elliptic rank 2 gives 4. | Boundary values agree; retained. |
| §4.7 API 2: Unramified orthogonal twists of products retain their product principal polarization; the 2C marked seed is the coupled-period quotient, with the principal polarization determined by its symmetric period pairing. | Product principal theta has 2 components; the coupled Gram K has 2 fixed odd refinements. | Boundary values agree; retained. |
| §4.7 API 3: The reduction type: semistable ordinary for factors E_q, good ordinary for Y × Y′. | Product Y×Y′ has toric rank 0; Tate products have positive toric rank. | Boundary values agree; retained. |
| §4.7 API 4: The product seeds have the direct sums of the factors' 3-torsion; the coupled seed has the split toric–period 3-torsion cone and Frobenius diag(−R,R). All are unramified at 2. | Tate mod-3 eigenvalues are −1,1, with product −1; diag(−R,R) squares to −I. | Boundary values agree; retained. |
| §4.7 API 5: The projective Frobenius classes 8A, 4D, 2D, 2C of A, B, C, A_(2C). | The four specified projective classes have orders 8,4,2,2. | Boundary values agree; retained. |
| §4.7 API 6: The three product seeds and the coupled 2C seed have mod-2 image in S₅(b); this assertion excludes the diagonal-period order-four twist. | Product mod-2 action is trivial and fixes 6 letters; coupled action fixes 2 odd theta characteristics. | Boundary values agree; retained. |
| §4.7 API 7: The four surfaces are 2-distinguished, with explicit unit roots. | Unit-value pairs 1,α; α,−α; 1,−1; i,−i are distinct: Q_Y(1)=4 and 2α,2i≠0. | Boundary values agree; retained. |
| §4.8 API 1: A point of P over F is the principally polarized surface with the framing and odd theta characteristic, up to the corresponding marked isomorphism. | An S₅ point stabilizer fixes 1 letter; transitive S₅ fixes 0. | Boundary values agree; retained. |
| §4.8 API 2: The full-level-two cover has group S₆ and degree 720 over B, and P→B has degree 6; over P its group is S₅(b). | Full level-two degree 720 and odd-theta degree 720/120=6. | Boundary values agree; retained. |
| §4.8 API 3: The marked curve maps to its Jacobian with induced theta marking; base change along every extension F→F′ preserves the framing and the Torelli map. | Base change preserves ranks 4 and 2 and the 6 branch points. | Boundary values agree; retained. |
| §4.8 API 4: The unmarked Torelli map identifies framed smooth genus-two curves with geometrically indecomposable framed principally polarized surfaces; forgetting the marking agrees with P→B on the marked Torelli open. | Canonical multiplication has basis 1,x,x² and rank 3; product theta has 2 components. | Boundary values agree; retained. |
| §4.8 API 5: A principally polarized surface with the given 3-torsion framing has an F-point over it in P exactly when its mod-2 image fixes a letter in the chosen six-point action. | Standard S₅ fixes 1 letter and outer full S₅ fixes 0. | Boundary values agree; retained. |
| §4.8 API 6: For G properly contained in S₅(b), the cover P_G→P is geometrically integral and generically finite of degree greater than one; its rational-point image is thin. | Trivial-subgroup cover has degree 120; full-subgroup cover degree 1 is excluded. | Boundary values agree; retained. |
| §5.3 API 1: The seed realizes the prescribed full ordinary generic module, not just V or its semisimplification. | Six étale characteristic polynomials give 8 conjugacy classes; scalar/Jordan fixed dimensions are 2/1. | Boundary values agree; retained. |
| §5.3 API 2: The product seed with traces −1,2 has scalar −1, and twisting both factors gives the scalar +1 seed with traces 1,−2. | The two scalar seeds have Q(1)=10 and 18, with traces −1,2 and 1,−2. | Boundary values agree; retained. |
| §5.3 API 3: All seeds retain a rational marked Weierstrass point, good ordinary Jacobian reduction and distinguishedness on a sufficiently small local open. | The four marked curve seeds have counts (7,15),(7,11),(3,13),(5,11), all ordinary and nonsquare. | Boundary values agree; retained. |
| §5.3 API 4: The construction is compatible with unramified quadratic twist and with the symplectic H¹/torsion dual convention. | Quadratic twist sends a to −a, b to b; dual multiplier ε̄ is inverse to ε̄⁻¹. | Boundary values agree; retained. |
| §8.3 API 1: Base extension restricts the Galois action and can enlarge the fixed endomorphism algebra; geometric End remains fixed. | Fixed dimension for factor-swapping C₂ is 1 versus 2 for trivial action; geometric algebra dimension stays 2. | Boundary values agree; retained. |
| §8.3 API 2: Products with two nonisogenous elliptic factors defined over ℚ have two rational idempotents and reducible rank-four systems. | Projection idempotents (1,0),(0,1) have ranks 2 and 2. | Boundary values agree; retained. |
| §8.3 API 3: In E[D_n] the compatible system is s⊗Ind(ψ⁻¹), with a fixed finite-order character ψ and an odd regular rank-two system s over ℚ. | Tensor ranks 2·2=4; finite-order induction factor has Hodge–Tate weights 0,0. | Boundary values agree; retained. |
| §8.3 API 4: The potentially abelian classes have unequal Hodge–Tate values and no character twist with finite image; type B[C₂] is not absorbed into them. | Surface weights 0,0,1,1 have 2 distinct values; a twisted finite system has only 1. | Boundary values agree; retained. |
| §8.5 API 1: The degree-6 étale algebra K attached to ρ̄ through ι. | Split branch algebra has degree 6=1+1+1+1+1+1. | Boundary values agree; retained. |
| §8.5 API 2: The open subscheme Z(ρ̄) ⊂ A(K) ≅ A⁶ of elements with six distinct conjugates. | There are 15 pairwise-equality hyperplanes; θ=(0,…,5) avoids all of them. | Boundary values agree; retained. |
| §8.5 API 3: For θ ∈ Z(ρ̄)(F), the curve X_θ : y² = χ_θ(x). | Characteristic polynomial for θ=(0,…,5) has discriminant 1194393600. | Boundary values agree; retained. |
| §8.5 API 4: Jac(X_θ)[2] ≅ ρ̄ as G_F-modules. | The six branch points give even-subset quotient size 16=2⁴. | Boundary values agree; retained. |
| §8.5 API 5: Z(ρ̄) is smooth and rational over F. | Z has dimension 6; removing 15 hyperplanes changes neither dimension nor its rational function field. | Boundary values agree; retained. |
| §8.5 API 6: Z(ρ̄\|_(G_F′)) ≅ Z(ρ̄) ×_F F′ for F → F′ an extension or completion. | Extension preserves the 15 nonzero differences and the monic degree 6. | Boundary values agree; retained. |
| §8.5 API 7: For F a local field and ρ̄ unramified, the factorization type of K ⊗ F is the cycle type of ρ̄(Frob). | Partition [2,2,2] has 3 unramified factors of degree 2, total degree 6. | Boundary values agree; retained. |
| §8.5 API 8: Z⁺(ρ̄) = Z(ρ̄) × G_m is smooth and rational; (θ,c) gives y² = cχ_θ(x), recovering X_θ at c = 1. | Z⁺ has dimension 6+1=7, c=1 recovers monic and c=0 is excluded. | Boundary values agree; retained. |
| §8.5 API 9: Over an infinite characteristic-zero field every genus-two curve with a chosen identification of its six-point Galois set with Spec K is isomorphic to X_(θ,c) for some (θ,c) ∈ Z⁺(ρ̄)(F), after a coordinate change on P¹. | A degree-six polynomial has 6 finite branch points after choosing a nonbranch infinity; scalar c retains either square class. | Boundary values agree; retained. |
| §8.5 API 10: Changing c to dc gives the quadratic twist by d without changing the identified Jac[2]. Z⁺ and its curve family commute with extension of scalars. | c=2 keeps all 6 roots and hence 16 torsion vectors; its nonsquare leading coefficient gives 0 rational infinities over ℚ. | Boundary values agree; retained. |
| §8.7 API 1: The principal polarization on A₀ descends from the product polarization, and the lift and deformation preserve it. | Restriction has 2 geometric elliptic factors interchanged by Frobenius and principal polarization degree 1. | Boundary values agree; retained. |
| §8.7 API 2: The nearby Jacobian retains A₀ as its polarized special fibre, so its quartic remains X⁴−2X²+9, with ordinary middle coefficient −2 and no repeated root. | Q=X⁴−2X²+9 has Q(1)=8, b=−2 and derivative-root values 9,8,8. | Boundary values agree; retained. |
| §8.7 API 3: Its finite étale 2-torsion is unramified with the same symplectic Frobenius as A₀[2]; the six odd theta characteristics have three orbits of length two. | Odd refinements number 6 with 0 fixed and 3 orbits of length 2. | Boundary values agree; retained. |
| §8.7 API 4: The seed is unmarked. Its type has no fixed odd theta characteristic, so the construction uses B and its unmarked Torelli open rather than P. | Partition [2,2,2] has 0 fixed branch letters; odd-theta marked cover has no rational point over this seed. | Boundary values agree; retained. |

### Supplier-contract boundaries

| Contract | Instances and computed values | Result and change |
| --- | --- | --- |
| surface-open-image | End⁰(E₁×E₂)=ℚ×ℚ has 2 idempotent summands and a rank-2+2 representation; scalar End=ℚ is required before the Sp₄ conclusion. | Independent Zariski input retained; finite residual regularity is not substituted. |
| surface-residual-endomorphisms | The five-point A₅ module has dimension 4 and its 45 semisimple matrices span dimension 16; the full symplectic mod-3 group has order 51840. | Very-simple module adapter retained, not inferred from the Jacobian-only Zarhin theorem. |
| near-adequacy-reasonableness | Trivial rank-four symplectic image over 𝔽₃ has dual Lie H⁰ dimension 10, not 0, despite H¹=0; A₅ has H¹(k)=0 while C_p has dimension 1. | Eventual H⁰, conditional H¹ and cyclotomic stabilization remain distinct requirements. |
| integral-enormity | I has one repeated eigenvalue of multiplicity 4; Φ₅ in the A₅ module has 4 distinct eigenvalues. Identity Zariski dimension 0 differs from dim Sp₄=10. | No residual-only shortcut to integral enormousness. |
| finite-tate-lift-local-control | Rank-four, level-one torsion has group-scheme order p⁴=81 at p=3 and 16 at p=2; the ordinary étale quotient has rank 2, not 4. | Retained through finite-flat/component supplier contracts; the special-fibre point count is not the group-scheme order. |
| dyadic-weight-one-change | Weight-one Artin input has both weights 0,0; weight-two GL₂ input has 0,1; its symmetric cube has 0,1,2,3. | Dyadic extension remains explicit; p≥5 supplier is not applied at p=2. |
| local-neighbourhoods | For dyadic Tate q=64, v₂(q)=6, while q=5 has valuation 0; a change preserving positive valuation cannot be read as equality of full 2-adic extension classes. The section-free smooth example has N₁=0,N₂=6. | Finite generic torsion, reduction data and integral W-openness are separate requirements. |
| unramified-lift-rigidity | For α²+α+2=0 mod 3, evaluation of that polynomial at −α is α≠0; the forbidden ratio −1 does not occur. Dual numbers have ε²=0 with ε≠0. | Nonreduced coefficient algebras retained in the statement. |
| genus-two-level-three-monodromy | \|Sp₄(𝔽₃)\|=51840 and \|GSp₄(𝔽₃)\|=103680; the multiplier accounts for index 2. Proper-subgroup covers have degree at least 2. | Monodromy supplied independently of Hilbert irreducibility. |
| ordinary-spherical-attachment | At p=2,3, a spherical local member has level exponent 0 at each place, hence prime-to-6 level. Its ordinary stabilization is additional data. | Attachment prime can change only with the specified compatible-system comparison. |
| forward-singular-spin-transfer | Surface H¹ weights are 0,0,1,1, so two repeats remain; GL₄ normalization is −3/2. Product support has size 2, not cuspidal size 1. | Singular attachment, irreducibility and classification premises retained. |
| all-place-exterior-transfers | Rank-four exterior dimensions are 1,4,6,4,1; beyond 4 the rank is 0 and L-function 1. At an omitted attaching prime, good-prime equality alone provides 0 local comparisons there. | Separate every-place transfer contract retained. |
| odd-rank-two-system-modularity | Regular H¹ constituent weights 0,1 give newform weight 2 and determinant −1 at complex conjugation; weights 0,0 fail regularity. | ClassicalSerreModularity R27.6 supplies the regular theorem; local-factor completion is separate. |
| induced-character-client | For ψ=ψ₀∘Norm from a quadratic extension, induction splits into 2 rank-one constituents; ψ≠ψ^σ is required for cuspidality. Quartic induction degree is 2·2=4. | Quadratic induction and cyclic all-place comparison remain supplied; Clifford/algebraicity adapter remains here. |
| dyadic-selfdual-polarized-lift | Split W=(ℤ/2)²⊕μ₂² has group-scheme order 16 and étale rank 2. Its hyperbolic pairing has diagonal value 1 and λ^∨=λ=−λ. | Specified W is retained; arbitrary self-duality and diagonal alternation are not equated. |
| strong-odd-symplectic-criterion | Rank(g−I) values 0,1,2,2 give diagonal tests 0000,1000,1100,0000; involution counts n+1+floor(n/2) give 2,4,5 at n=1,2,3. | General criterion supplied; explicit rank-four matrix specialization remains here. |
| ordinary-polarized-three-model | Ordinary model order 3⁴=81, étale quotient order 9 and multiplicative dual order 9; I versus Jordan has fixed dimension 2 versus 1. | Compatible polarized truncated BT structure is required, not just a characteristic polynomial. |
| all-place-surface-comparison | Coefficient prime 5 covers local q=7; coefficient prime 7 covers q=5; both cover q=2,3. GL₄ twist exponent is −3/2 and conductor exponent can be 2 at bad reduction. | All finite factors, conductor and infinity normalization remain explicit. |
| siegel-prime-to-level-monodromy | At g=2,N=3,ℓ=2 the cover group has order 720, odd-theta quotient degree 6 and subgroup-cover degree 120 for the trivial subgroup. | Connected fixed-pairing chart and prime-to-level hypotheses retained. |

## Sources and remaining conditions

Legal cached texts were read at the locators used by the statements, including BCGP25 line 499 (ordinary characters), line 750 (modularity), lines 6750–6855 (images), lines 8274–8581 (A₅ and dyadic modularity), lines 8625–9712 (local geometry and switch endpoints), and lines 9714–10332 (complements). BCGP21 lines 12966–13072 fix the odd-theta moduli, equivariant rationality and twist obstruction. ZARHIN00 lines 113 and 186 distinguish the general endomorphism-algebra argument from the Jacobian-only theorem. The finite-field counts and normalization witnesses above independently test those interfaces; the source's unqualified good-reduction/class assertions are not reinstated over the package's corrected hypotheses.

The accepted 19 conditional supplier requirements remain explicit: 16 have gap slugs in the README, while finite-tate-lift-local-control, induced-character-client and odd-rank-two-system-modularity are expressed through the named finite-flat/component, induction and ClassicalSerreModularity contracts. These requirements remain mathematical inputs, and the nonregular-lifting/classification proof gates still propagate to the automorphic conclusions. These are the accepted conditional scope, not claims of completed supplier implementations. KIS99, THORNE17 and FC90 remain uncertified, cited by locator alone; no stronger result is attributed to unseen text. There is no unresolved port/build/gate defect, no missing named Lean declaration, no new ownership cycle and no new reference request. No suspicious instruction-bearing passage required action, and there was no push or external write.


Pull request: #1746 (roadmap/abelian-surfaces-modularity at 3acab1b)
