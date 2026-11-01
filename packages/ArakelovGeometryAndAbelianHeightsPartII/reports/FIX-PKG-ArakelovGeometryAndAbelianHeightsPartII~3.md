# Repair report

All package paths below are relative to the board repository. Mathematical locators use the source identifiers in `packages/ArakelovGeometryAndAbelianHeightsPartII/sources.toml`.

## F01 (P1) — applied

§10.13: D̂iv(S/k) → D̂iv(S/ℤ), using arithmetic w and λ̄ even for S/ℚ. Named the geometric forgetful map and its E+Δ image, and specified the inverse Noether section. Added Spec ℚ as a negative control. Evidence: yuan-2026 line 3041, line 3047 and lines 3070–3074. Traced the carrier through §§10.14 and 13.8.

## F02 (P1) — applied

Supplier contract and §4.6: equality with h_K → h_K/[K:ℚ] over number fields; retained equality over the fixed geometric constant field. The quadratic Check computes (2 log 2)/2 = log 2. Evidence: HeightsRationalPointsAndObstructions §0.11 and yuan-2026 lines 2164–2170. Preserved the correct degree factors in §4.9, Layer 6 and the worked example.

## F03 (P2) — applied

§4.9: direct metric/measure equality → pullback/pushforward along p_v : X_Cv^an → X_Kv^an, including the real quotient and boundary limits. Updated the supplier summary, §2.6 carrier, §4.9 Checks/dependencies and §5.3 route. Evidence: ArithmeticDynamics §§4.1–4.1a, TropicalAndBerkovichArithmetic §6.2 and GrossZagierAndArithmeticHeights §2.13. The half-sum of conjugate Diracs pushes to one unit Dirac.

## F04 (P1) — applied

ArithmeticDynamics contract: arbitrary signed mixed products → positive projective top powers. §2.6 owns polarization, signed decomposition independence and boundary extension, importing finite-place mixed theory and the existing complex pluripotential gap. §4.9 first compares positive powers, then the mixed extension. Added mixed-degree tests: 1 and −1. Corrected supplier Checks and both layers' dependencies. Evidence: yuan-zhang-2025 lines 823–827.

## F05 (P1) — applied

§8.6: unrestricted E → integrable E in both equivalent divisor descriptions and the trivialization API. Retained the principal-trivialization quotient and ambient continuous metrics. Added a continuous elliptic Fourier metric whose Laplacian coefficients −2π²8ⁿ are unbounded, excluding integrability. Constant metric shift 1 has curvature 0 and remains vertical. Evidence: yuan-2026 lines 1153–1154 and the Fourier calculation below.

## F06 (P2) — applied

§1.5: rational scaling in the integral group → integer scaling there and a separately defined rationalized nef cone. On trivially valued ℙ¹, ½O(1) has rational degree 1/2 and no integral preimage. Traced rational combinations through §§0.3, 4.3 and 9.3; these already use rational bundles. Evidence: yuan-zhang-2025 lines 1508–1532 and the degree homomorphism Pic(ℙ¹) ≅ ℤ.

## F07 (P3) — applied differently

Two Checks without API lists → prose APIs and four Checks in §6.3, three in §8.5; no Lean padding. Clarified section-pullback domains in the adjunction route. §6.1's API now distinguishes nef polarization from big polarization, agreeing with its definition and zero-polarization test. Values: (0,a,4a), 2a/2=a, zero height on nontorsion; section degree 1, base shift 1, adjunction −1.

## F08 (P3) — applied

Both stale yuan-2026 line 2131 pointers in §§4.6 and 4.9 → lines 2146–2170, retaining §4.1.2, pp. 63–64. The text there distinguishes the denominators [K(x):ℚ] and [K(x):K]; line 2131 belongs to the relative-power proof. Searched the whole README: no occurrence of 2131 remains.

## Validation and supplier boundaries

- Required elaboration of `packages/ArakelovGeometryAndAbelianHeightsPartII/Suggested.lean`, using `lake env lean` from the pinned content checkout: **exit 0, empty stdout/stderr**. There are no TauCeti imports, so no module build was needed. No broad build or dependency update was run.
- Mechanical signature audit: zero declarations, hence zero `#check @name` entries. Elaborated the scratch audit module once: **exit 0, empty stdout/stderr**. There are no silently discarded binders, changed Lean names, one-tactic surrogates or new definitions. `Suggested.lean` is unchanged; its module docstring records every missing headline carrier.
- The exact dependency-check output was:

```text
depcheck: 51 roadmaps, 591 edges, 0 problem(s)
```

There was no UPWARD, CYCLE or moved line. The merge order was not edited.

- `git diff --check`: **exit 0, no output**. Structural comparison of `design/plan.json` before/after with the top-level `gaps` key removed: **equal**. Only the permitted `gaps` list changed in that file. The changed definitions' Check counts are §1.5: 6, §2.6: 7, §6.3: 4, §8.5: 3, §8.6: 6, §10.13: 5. README/Lean own-name audit: zero new backticked names and zero Lean declarations.
- No gate failures were separately enumerated in the brief. Its supplied citation lead was verified: StableReductionPartII is absent from the content main checkout, the board's packages and the open-roadmap index. `roadmaps show StableReductionPartII` confirmed the absence. The final resolver still reports that same missing roadmap and no missing Lean names. This is **not actionable in this package as a supplier implementation**: added `gap:curve-moduli-noether-positivity` to the top-level plan gaps and the matching “What StableReductionPartII must provide” contract. The required MC.4–MC.6 labels describe requested interfaces, not asserted existing targets. No supplier targets or merge-order changes were invented. The pre-existing `gap:singular-pluripotential-products` remains open and unchanged.
- The resolver ran against main 8888d45 and 363 open pull requests, index dated 2026-10-25T11:18:21Z. Its final note says that it did not inspect pinned Lake packages; the pinned library inspection below was performed directly.

## Citation, ownership and pin inspection

Read the main roadmaps `TauCetiRoadmap/AlgebraicVectorBundles/README.md` and `TauCetiRoadmap/StableReduction/README.md` for shape. Resolved supplier section labels against main or the tool's open-head texts: SchemeAndStackFoundations §§0.3, 0.20–0.21, 3.5, 4.11–4.12, 5.1–5.6 and 5.12; ArakelovGeometryAndAbelianHeights §§1.1–1.15, 2.1, 2.7–2.8, 3.4, 5.0b, 5.3–5.4, 5.9 and 6.5; HeightsRationalPointsAndObstructions §§0.11, 0.16, 0.18–0.20, 0.26–0.29 and 5.17a–5.17f; ArithmeticDynamics §§4.1, 4.1a, 4.3, 4.3a, 4.4 and 4.40; ComplexComparisonPartII §C5.4; TropicalAndBerkovichArithmetic §§0.1, 0.12, 0.15, 0.22–0.23, 2.7, 2.13, 3.1, 3.3 and 6.1–6.8; GrossZagierAndArithmeticHeights §§2.2–2.4, 2.8, 2.10, 2.12–2.13; JacobianChallengePartII Layers 1–6; NeronModelsAndSemistableAbelianVarieties §§3.3, 3.9–3.12; MotivesAndAlgebraicCycles §§2.2–2.3. StableReductionPartII is the gap described above.

The open heads inspected for the changed interfaces were ArithmeticDynamics #1335, TropicalAndBerkovichArithmetic and GrossZagierAndArithmeticHeights; the other supplier texts were resolved by the same tool. Object searches used `roadmaps grep` across main/open heads and `rg` across the board packages, including the supplied sibling packages. The projective positive measure belongs to ArithmeticDynamics; finite-place mixed local measures and scalar descent belong to TropicalAndBerkovichArithmetic; real canonical metric descent belongs to GrossZagierAndArithmeticHeights; the singular complex products remain the named ComplexComparisonPartII gap. This package owns the mixed global boundary extension and the comparison between the two actual global adelic carriers, and the relative admissible/Noether extensions beyond the parent. No supplier construction was duplicated. Ownership against open heads was checked where the roadmap tools supplied files; no unavailable pull-request files were inferred.

The manifest pins are Mathlib 6b7abb3c7686292736be2955bd3eb9ebf63b456a and Tau Ceti a91d3aafa8cd3e6bc33dfde0d7677ed0f1625039. Direct object searches through both pinned trees found no adelic-bundle, metrized Deligne-pairing, canonical admissible-metric or polarized metrized-graph carrier on which the omitted headlines could be stated. In particular, ordinary measures or functions would not name the roadmap's objects. Read these native declarations at the pins:

| Declaration | Pinned location | Boundary of supplied data |
| --- | --- | --- |
| NumberField.prod_abs_eq_one | Mathlib/NumberTheory/NumberField/ProductFormula.lean:98 | Nonzero element; infinite-place multiplicities retained. |
| Projectivization.logHeight | Mathlib/NumberTheory/Height/Projectivization.lean:51 | Relative logarithmic height, with the field, finite index and admissible-absolute-value assumptions of its context. |
| TauCeti.AlgebraicGeometry.InvertibleSheaf | TauCeti/AlgebraicGeometry/LineBundle/Basic.lean:112 | Rank-one locally free module sheaves; morphisms are module maps, without metrics or an isomorphism requirement. |
| TauCeti.AlgebraicGeometry.AbelianVariety | TauCeti/AlgebraicGeometry/AbelianVariety/Basic.lean:95 | Proper geometrically integral group object; dimension zero permitted; no canonical height. |
| InvertibleSheaf.eulerDegree; LineBundleClass.eulerDegree | TauCeti/AlgebraicGeometry/LineBundle/Degree.lean:70 and :126 | Euler-characteristic algebraic degree; no arithmetic metric or intersection. |
| InvertibleSheaf.eulerDegree_canonicalBundle | TauCeti/AlgebraicGeometry/LineBundle/SerreDuality.lean:168 | Proper curve, integral/Noetherian/separated and codimension-one DVR conditions, valuative existence, dimension, function-field and constant-field hypotheses; degree 2g−2. |

No source fetch was required: the changed claims use already cached legal texts or the elementary computations recorded here. Source keys, versions and certification states remain unchanged. The two settled uncertified sources, moret-bailly-1989 and faltings-1984, were not requested again; their primary proofs are not certified by this report. The Noether normalization was read in yuan-2026 lines 2992–3074. No extra inaccessible source was found.

## Adversarial mathematics record

Each row concerns the stated mathematical assertion, including its repetitions in the API, Checks and layer examples. Separate rows distinguish independent identities in the same subsection. These are computed boundary tests and source/interface audits, not formal proofs or an acceptance verdict. All finite-degree divisions below have positive degree; zero-degree probability normalization is excluded. The unchanged targets retain their standing hypotheses.

| Statement | Instances tried | Computed values on the two sides or separating values | Result and change |
| --- | --- | --- | --- |
| Conventions: unsquared Green function and tensor sign | Norms e⁻¹,e⁻²; f=2 | Green 1+2=3; tensor norm e⁻³; principal degree log 2−log 2=0 | Consistent; retained. |
| Conventions: absolute versus relative arithmetic height | Degree-two K; constant metric shift 1 | Raw degree 2; relative height 2; absolute 2/2=1 | F02 made both comparisons explicit. |
| Conventions: geometric ground field and representing field | t=u²; fixed-base extra representation of x | h(t)=1 over k(t), 2 over k(u); raw point degree and denominator both multiply under representation | Retained fixed constant field. |
| Conventions: Faltings/Deligne norms | g=1,2 | Squared norm ratio π⁻ᵍ; shifts (log π)/2 and log π | Consistent; retained. |
| Conventions: twice theta and dual | Elliptic fibre, multiplication by 2 | deg Θ=2, deg nondual diagonal Poincaré=−2; height a→4a | Consistent; retained. |
| Conventions: graph scaling | Unit loop, unramified/ramified quadratic | Length 1→1 or 2; τ=1/12→1/12 or 1/6 | Consistent; retained. |
| Native invertible sheaf and abelian variety | Trivial line, zero sheaf, trivial group variety | Ranks 1 versus 0; dimension-zero group has dimension 0 and identity 0+0=0 | No metric implied by native carriers. |
| Native canonical algebraic degree | g=1,2 | 2g−2=0,2 | Retained native supplier, no duplicate theorem. |
| Projective intersection supplier: degrees and shift | Spec 𝔽₂, Spec 𝔽₃; degree-one horizontal cycle | Degrees log 2,log 3; metric shift c adds c·1=c | Consistent; retained. |
| Projective intersection supplier: normalization | Spec O_K, [K:ℚ]=2; FS ℙ¹_ℤ | O(1) raw degree 2; FS square 1/2 | Retained raw pairing. |
| Positive local-measure supplier | O(2), O(−1), dimension-zero point | Positive mass 2; O(−1) degree −1 disallows semipositivity; empty product mass 1 | F04 narrowed supplier attribution only. |
| Local scalar-extension supplier | Three geometric points over a degree-three field point | Upstairs 1+1+1=3, downstairs 3δ_x has mass 3 | No scalar-extension degree divisor. |
| Real canonical metric descent supplier | z=i and its conjugate | Invariant norms r,r descend to r at their single orbit | F03 uses quotient pullback. |
| Graph Laplacian supplier | Segment [0,1], f(t)=t | Δf=−δ₀+δ₁, total −1+1=0; curvature change δ₀−δ₁ | Retained sign. |
| Moduli/Noether supplier normalization | xy=t^m, m=1, ramification 2 | Boundary thickness 1→2; 12λ−⟨ω,ω⟩=Δ | Required interface remains a supplier gap. |
| §0.1 continuous hermitian group and divisors | Constant metrics e⁻¹,e⁻²; inverse e | Tensor degree 3; inverse degree −1; e⁻ᵍ recovers e⁻¹ at g=1 | Consistent. |
| §0.1 semipositive, integrable and nef distinctions | Spec ℤ with metric e | Curvature 0 but arithmetic degree −1 | Semipositive does not imply nef. |
| §0.2 norm/Deligne pairing, base change and projection | Finite flat degree 2 then 3 | N(f*O(1))=O(2); iterated norm O(6)=composite norm O(6) | Consistent. |
| §0.2 pairing metric shift and curvature | Fibre degree 3; shift 1 | Pairing shift 1·3=3, norm factor e⁻³; constant curvature change 0 | Consistent. |
| §0.3 arithmetic volume and Hilbert–Samuel | Spec ℤ, c=−1,0,1 | Small-section counts for m≫0: 1,3,2⌊eᵐ⌋+1; volume 0,0,1 | Nef equality used only at c≥0. |
| §0.3 arithmetic Siu and zero mixed degree | Degrees A=2,B=1 or 0 | vol(A−B)=1=2−1; for B=0, vol=2 without division | Consistent. |
| §0.3 geometric volume and Siu | ℙ¹, O(2),O(1),O(−1) | h⁰(O(am))=am+1 for a≥0; vol O(1)=1=2−1; vol O(−1)=0≠−1 | Consistent. |
| §1.1 mixed-coefficient model divisors, order and colimit | Spec ℤ, [2], ½[2], constants 1,2 | Integral coefficient 1 allowed, 1/2 excluded; (0,1)+(0,2)=(0,3) | Integral restriction retained. |
| §1.2 boundary norm, scaling and completion | E₀=(0,1), (0,c), 2E₀ | Norms |c| and 2; norm of a nonzero integral open divisor ∞ | Consistent. |
| §1.2 projective-field boundary and torsion exception | E₀=0; nonzero torsion open divisor D of order 2 | Norm at 0 is 0; nonzero open D has ∞, but norm(2D)=0 | Extended norm and integer inequality retained. |
| §1.3 adelic objects and isometric morphisms | O(1),O(2); irrational boundary coefficient √2 | Tensor O(3); rational-model coordinate cannot equal √2 modulo ℤ | Continuous completion exceeds model group. |
| §1.4 principal quotient | f=2, O(1) on Spec ℤ | Principal degree log 2−log 2=0; O(1) degree 1 | Kernel and nonprincipal class separated. |
| §1.5 positivity definitions and implications | Constants −1,0,1 on Spec ℤ | Nef degrees 0,1; −1 is integrable and not nef | Consistent. |
| §1.5 integral closure versus rationalized cone | ℙ¹, O(1), ½O(1), 2O(1) | Degrees 1,1/2,2; no integer degree equals 1/2 | F06 separates carriers. |
| §1.6 model colimits and geometric forgetting | Spec ℚ, O(1), identity model | Arithmetic degree 1, geometric image 0; identity keeps 1 | Consistent; input to F01. |
| §1.7 complex-base completion | Point; ℂ× approaching 0 | Constant Green values 1+2=3; (log r)²/|log r|→∞ | Boundary completion excludes quadratic-log growth. |
| §1.8 arithmetic-curve exact sequence | ℚ, removing 2, all primes | Unit-quotient ranks 0,1,⊕ₚℤ give 0,ℝ/ℤ,⊕ₚℝ/ℤ | Consistent. |
| §1.9 domination in both signs | D=([2],0), D′=([2],c), c≥0 | D′−D=(0,c), D′+D=(2[2],c); deg D′=log 2+c≥0 | Both inequalities hold. |
| §1.9 constant negative divisor control | D=(0,−1), D′=(0,1) or (0,1/2) | −1≤−1≤1; −1/2≤−1 is false | Smaller candidate excluded. |
| §2.1 global analytification, fibres and functoriality | Spec k; real/2-adic rays; identity | One point over trivially valued k; |2|=2,√2,1/2; identity composes seminorm with identity | Consistent. |
| §2.2 metric/divisor inverse and norm equivariance | div(2); O(1) at exponents 1,1/2 | exp(−(−log 2))=2, not √2; Green 1→1/2 | Sign and scale fixed. |
| §2.3 injectivity and full faithfulness | O(1),O(2) on Spec ℤ | Ordinary archimedean Green 1 versus 2, p-adic values 0 for both | Analytic norms distinguish classes. |
| §2.4 divisorial density and dimension-zero exception | ord₀,ord∞ on k(t); exponent a→0 | |t|=e⁻¹,e; e⁻ᵃ→1; constants stay 1 | Consistent. |
| §2.5 effectivity iff nonnegative Green | Constants −1,0,1 | Archimedean values −1,0,1, giving false,true,true; finite-place values 0 | Both directions consistent. |
| §2.6 signed mixed measure, model agreement and mass | Good reduction ℙ¹, O(1),O(2),O(−1) | Measures δζ,2δζ,−δζ; masses 1,2,−1; constant twist curvature 0 | F04 gives signed extension its owner. |
| §2.6 polarization including n=0 | Product surface; empty product | (O(1,1)²−O(1,0)²−O(0,1)²)/2 has mass (2−0−0)/2=1; n=0 gives 1/0!=1 | Formula has correct factorial. |
| §2.6 decomposition independence | O(−1,0) paired with O(0,1) | O−O(1,0) yields 0−1=−1; O(1,0)−O(2,0) yields 1−2=−1 | Added discriminating Check. |
| §2.6 boundary limit and no mass loss | Fixed O(2) semipositive approximants | Every approximant has mass 2; tight limit mass 2; probability mass 2/2=1 | Positivity/tightness required, not arbitrary signed uniform limits. |
| §2.7 prescribed trivial-base metric | Trivial line over characteristic-zero trivially valued field | Model frame and scalar 2 have norms 1,1; rescaling gives e, violating frame norm 1 | Consistent. |
| §3.1 multilinearity, projection and raw intersection | Spec ℤ→Spec O_K, degree 2; nondominant equal dimensions | O(1) raw 1→2; nondominant degree 0 gives 0 | Consistent. |
| §3.2 adelic pairing and projection | Finite flat degree 2; relative degree 3 | Pairing f*O(1) gives O(2); twisting one curve entry by O(1) adds O(3) | Consistent. |
| §3.3 composition and projection formulas | Finite flat degrees 2,3; degree-three curve line | O(1)→O(6) by either norm route; ⟨L,π*O(2)⟩=O(6) | Consistent. |
| §3.4 injectivity and constant descent | Identity; elliptic Frobenius over 𝔽₅ | Identity keeps degree 1; E has points O,(1,±1),(2,±1), cardinal 5; nonzero order-five class pulls to 0 | Geometrically reduced hypothesis retained. |
| §4.1 effective sections and finiteness | Spec ℤ, c=−1,0,1 | Counts 1,3,5; logarithms 0,log 3,log 5 | Zero section included, norm bound correct. |
| §4.2 adelic volume, homogeneity and bigness | Spec ℤ constants −1,0,2 | Volumes 0,0,2; vol(mO(2))=2m; generic-fibre degree identical | Arithmetic bigness separated from generic bigness. |
| §4.3 Hilbert–Samuel and Siu | A degree 2, B degree 1 or 0 | 1=2−1; B=0 gives 2 for all ε>0 | Denominator-zero case computed without division. |
| §4.4 positivity of relative pairing | ℙ¹×S, L=O(1)+π*M, deg M=1 | Fibre O(1)²=0, base square 0, two cross terms give deg⟨L,L⟩=2 | Positive coefficient correct. |
| §4.5 bigness under finite surjective covers | Degree-two cover, top degrees 3 and 0 | Pullbacks 6 and 0; positivity iff 3>0 or 0>0 respectively | Both directions consistent. |
| §4.6 scalar and vector-valued height definitions | ℚ, quadratic K, constant O(1) | h([1:2])=log 2; quadratic h_K=2log 2, h=log 2; constant raw 2 divided by 2 gives 1 | F02 and F08. |
| §4.6 geometric extension and field independence | t=u²; fixed K and point represented in degree r extension | Moving height 1→2; fixed-base raw/denominator multiply r/r=1 | Retained distinction. |
| §4.6 Moriwaki condition | Model dimension d=1; d>1 with H̄ᵈ=0 | d=1 requires no extra product; for d>1 arithmetic top 0 while required geometric top remains >0 | No 0/0 normalization introduced. |
| §4.7 height inequality | ℙ¹ identity with standard O(1); trivial line | h(2)=log 2=1·h(2); trivial height 0 cannot dominate log n→∞ | Bigness/open-set hypotheses retained. |
| §4.8 fundamental inequality | Spec K, degree 2, O(1), n=0 | h(X)=2/(2·1·1)=1=e₁; omitted field factor would give 2≤1 | Existing degree adapter retained. |
| §4.9 completion isomorphism and model metric | ℙ¹/ℚ max metric versus FS | Max self-intersection 0=0; FS 1/2≠0; underlying lines equal | Metric comparison needs actual metric data. |
| §4.9 local metric transport | Real ℙ¹, i,−i; constant frame norm e⁻¹ | Two upstairs points, one orbit q; pulled-back frame norms e⁻¹=e⁻¹ | F03 names p_v, not a homeomorphism. |
| §4.9 measure transport and normalization | Conjugate Diracs; standard O(2) | p_*((δ_i+δ_−i)/2)=δ_q, masses 1=1; mass 2 remains 2 until division by 2 | F03/F04. |
| §4.9 mixed signed comparison | Product surface with O(−1,0),O(0,1) | Both sides after pushforward have mass −1; no positive-supplier input O(−1) | F04 comparison uses owned extension. |
| §4.9 intersection and height adapters | Spec quadratic K; k(t) moving/constant points | Raw 2/a_K=1; absolute height 1; geometric heights 1 and 0 on both sides | F02 does not alter these factors. |
| §5.1 invariant extension and uniqueness | z², q=2; identity q=1 | max(1,|z²|)=max(1,|z|)²; h(2)=log 2; q=1 keeps all constant twists | q>1 necessary. |
| §5.1 even/odd abelian eigenmetrics | Constant twist c=1 | Even defect 1−4=−3; odd defect 1−2=−1; normalized origin norm 1 | Constants excluded by invariance. |
| §5.2 non-degeneracy and Betti rank | Constant elliptic family over a curve; torsion section; base point | Total rank 2<4, section rank 0<2; over point ample top degree >0 while arithmetic canonical height 0 | Geometric and arithmetic bigness distinct. |
| §5.3 height inequality and equidistribution | Generic torsion on constant abelian variety over a point; repeated 0 | Point heights 0, 0≤h(Y)≤e₁=0; probability mass 1; repetition lies in one proper point | F03 route explicitly pushes orbit and limit measures. |
| §5.4 Hodge metric and stable height | Quadratic K, stable height h; g=1,2 norm comparison | Raw Hodge degree 2h→height h; Deligne shifts (log π)/2, log π | Consistent. |
| §6.1 polarization and Moriwaki relative height | Empty tuple over ℚ; quadratic field; zero factor over ℚ(t) | h([1:2])=log 2 or 2log 2; zero factor yields 0 | F07 API now says nef, with big as separate condition. |
| §6.1 transport by field isomorphism | t↦t+1 with transported polarization | Heights before/after are the same intersection divided by the same residue degree | Equality has factor 1, not a new normalization. |
| §6.2 height machine and Northcott | [1:n] on ℙ¹_ℚ; zero polarization | O(1): log n, O(2):2log n, O:0; zero polarization gives infinitely many degree-one height-zero points | Big polarization necessary for finiteness. |
| §6.3 canonical limit and bounded errors | Order-two point; error bounded by C | [2ⁿ]P=0 for n≥1; normalized bounded error ≤C/4ⁿ→0 | Definition independent of representative. |
| §6.3 quadratic law and torsion | P of height a, multiples 0,1,2 | 0,a,4a, not 0,a,2a; torsion height 0 | F07 prose API/Checks. |
| §6.3 normalization and kernel | Quadratic K; constant nontorsion point over ℚ(t) with zero polarization | Relative/absolute 2a/2=a; zero-polarized height 0 for nontorsion | Torsion converse only for big polarization. |
| §6.4 specialization slope and finite cover | Degree-two parameter cover; generic height 3 | Upstairs height 6, comparison base ratio 2; slope 6/2=3 | Relative normalization retained. |
| §7.1 admissibility and rigidification | Even/odd bundles, constant twist 1 | [2] eigenvalues 4,2; defects −3,−1 | Unique after origin normalization. |
| §7.1 semipositivity/model comparison | Good reduction and Tate elliptic O(e) | Curvature masses 1,1; first is δζ, second Haar circle rather than atomic model mass | Equal mass does not identify metrics. |
| §7.2 curve/square admissibility | Unit genus-two banana; genus-one Abel map | Model canonical mass 1+1=2, admissible density (2/3) on each of three edges totals 2; elliptic theta pullback degree 1 | Curvature measures, not just degree, distinguish. |
| §7.3 canonical probability and curvature iff | Three unit edges with complementary resistance 1/2 | Each density (1/2)/(1+1/2)=1/3; sum of edge masses 1 | Canonical probability fixed. |
| §7.4 canonical pair, uniqueness and adjunction | g=2; constant Green shift c=1 | Canonical mass 2, mean 0, residue norm 1; shifted mean 1 | Wrong normalization excluded. |
| §7.4 genus-one positive-degree route | g=1; admissible bundle degree e=1; differential norm shift e | ω degree 0 gives zero coefficient; L degree 1 gives coefficient 1; norm changes 1→e | Positive-degree input fixes otherwise invisible constant. |
| §7.5 explicit graph corrections | Good reduction; elliptic circle length 12 | gμ diagonal 0 or 12/12=1; ω metric factors 1 or e_v | Correct sign and diagonal dependence. |
| §7.5 section intersection normalization | Length-one intersection after unramified quadratic | Length/e=1/1=1; length/[K′:K]=1/2 is wrong | Ramification denominator retained. |
| §7.6 rescaling and trivial valuation | Exponent 2; proper trivial model | Green 1→2, norm e⁻¹→e⁻²; model generator at trivial valuation norm 1 | Consistent. |
| §7.7 global bundles and normalized square | Raw square W, degree-two extension; g=1 | Raw 2W, number-field normalized W fixed; geometric square doubles; genus-one square 0 | Arithmetic/geometric factors retained. |
| §8.1 fibrewise admissibility | Base metric e⁻¹; banana model ω | Base curvature 0 and constant norm; banana atomic 2 versus edge-distributed 2 | Nonadmissible model rejected by measure equality. |
| §8.2 admissible-extension torsor | Base shifts 1 and 2 over Spec ℚ | Ratio e⁻¹; difference class O(1) has degree 1≠0 | Underlying L alone does not fix extension. |
| §8.3 canonical family pair | g=2 and g=1 | deg w=2 or 0; deg Δ*D=−2 or 0; Δ*D+w=0 | Adjunction dual sign retained. |
| §8.3 canonical family normalization and genus-one route | Relative positive degree e=1 versus canonical degree 0 | Defect twist coefficient 1 versus 0; circle length 12 gives e_v, good reduction 1 | Existing positive-degree repair retained. |
| §8.4 twice-theta/Poincaré invariant extension | Θ̄+O(1); zero rigidification | [2]* gives 4Θ̄+O(1), fourfold tensor 4Θ̄+O(4); discrepancy O(−3); origin norm 1 | Rescaled candidate fails invariance. |
| §8.5 section definition | (x∘π,id_X), geometric fibre | Pullback diagonal is point divisor of degree 1; trivial line degree 0 | F07 corrects explicit map domain. |
| §8.5 evaluation | L̄=π*O(c), c=1 | Pairing O(c) and evaluation O(c), shifts 1=1; trivial-line pairing shift 0 | Added independent Check. |
| §8.5 adjunction | x*w degree 1 | Self-pairing −1, pairing with w +1 | Added independent sign Check. |
| §8.6 vertical kernel and principal trivializations | Constants 1,0; section line | Underlying degrees 0,0,1; curvatures 0,0 for constants | Integrable constants vertical, section excluded. |
| §8.6 ambient continuous metric versus integrability | f=Σ2⁻ⁿcos(2π4ⁿx), square torus | Sum of amplitude bounds 1; Fourier coefficients of flat Δf at n=1,2,3 are −16π²,−128π²,−1024π² | F05 excludes unbounded-measure curvature from both kernel descriptions. |
| §8.7 vertical orthogonality | Admissible degree-zero M, base constant c | ⟨M,π*O(c)⟩=deg(M)c=0 | Zero fibre curvature route unchanged. |
| §8.7 Hodge-index sign | Principal theta height a; torsion a=0 | Twice-theta height 2a, self-pairing −2a; torsion 0=0 | Negative sign retained. |
| §9.1 arbitrary-degree theta pullback | Fibre degree d; g=2,d=1; d=0 | Degree d²(2g−2)+2d²=2gd²; values 4 and 0 | Domain and arbitrary degree retained. |
| §9.1 first self-pairing/section formula | g=2,d=1, A=⟨w,w⟩, b=x*w | A+4b−4(−b)=A+8b=A+4gb | Consistent with §8.5. |
| §9.1 second self-pairing, genus one | g=1, w base pullback, ι zero | 0·self-pairing=0; right side 0+e*Θ̄=0; section formula gives 4b | No division by g−1 here. |
| §9.2 canonical theta identities | g=2,3 | Pullback coefficients 8,24; pairing coefficients 32,384 | Consistent. |
| §9.2 difference theta identities | g=2,3 | Relative pairings 8w+P,12w+P | Consistent. |
| §9.2 universal-shift identity | g=2,3 | Pairings 16Θ̄+32P,128Θ̄+384P | Consistent. |
| §9.3 rational nef decomposition | g=2,3; prohibited g=1 | Base coefficients −1/8+32/256=0, −1/24+384/9216=0; g=1 denominator 0 | Uses §1.5 rationalized cone, with g>1. |
| §10.1 pm-graph genus/canonical divisor | Loop q=1; elliptic bridge; genus-one circle | Canonical divisors 2v,v₁+v₂,0; degrees 2,2,0=2g−2 | Effective divisor and loop valency retained. |
| §10.1 epsilon, phi, tau definitions | g=2 unit loop; g=3 length-two loop | (ε,φ,τ)=(1/6,1/12,1/12), (4/9,2/9,1/6) | Definitions and length homogeneity consistent. |
| §10.1 zero graph and edge types | Edgeless genus-two vertex; loop/bridge | All invariants 0; loop type-zero length 1; bridge separating length 1 | Distinct graph types retained. |
| §10.2 resistance/epsilon bounds | Elliptic bridge length 1 | Maximum r=1=δ; ε=1≤(2g−2)δ=2 | Consistent. |
| §10.2 Cinkir constants | g=2,3,4; unit K₄ | t=1/27, approximately 0.05447,3/88; K₄ φ/δ=17/288≈0.05903 | Positive constants and weaker 1/39 valid. |
| §10.2 tau and de Jong identity | Unit loop, elliptic bridge | Loop: 1+1/6−2/12=1=3/2−6/12; bridge:1+1−2=0=3/2−6/4 | Signs and nonnegative τ consistent. |
| §10.3 local phi and rescaling | Genus-two unit node; ramified/unramified quadratic; good reduction | 1/12→1/6 or 1/12; good reduction 0 | Ramification factor retained. |
| §10.3 complex spectral formula | Positive eigenvalue λ; zero eigenvalue | Each included contribution (2/λ)·|I|²≥0; λ=0 omitted | No zero-eigenvalue denominator; strict positivity uses g>1. |
| §10.4 geometric epsilon divisor | g=2 type-zero unit node; smooth model | Green 1/6 or 0; pairing defect model−admissible=ε | Sign retained. |
| §10.5 effective boundary bound | Same unit node; no edges | 2δ−ε=11/6≥0; no edges gives 0 | Consistent. |
| §10.6 global phi divisor and integral domain | Unit node; good reduction; curve square | Green 1/12,0; c₁(D)² has degree 2 on dimension 2, not 1 | Correct square domain retained. |
| §10.7 auxiliary triple products | g=2; diagonal adjunction | D³=P−Φ, D²w=−P, Dwᵢwⱼ=P, wᵢ²wⱼ=2P, wᵢ³=0 | Signs agree with §8.3. |
| §10.7 difference-map triple pairing | g=2,3 | 8−24+24+12(g−1)=20,32; Φ coefficient −8 | Consistent. |
| §10.8 effective phi boundary bound | g=2 unit loop; edgeless graph | 1/12−1/39=3/52>0; 0−0=0 | Consistent. |
| §10.9 Hodge decomposition coefficient | g=2 | 1+(39/2)·15=587/2≤300; 12/300=1/25 | Positive coefficient retained. |
| §10.10 modified diagonal homological degree | Degree-one ξ, point-divisor pullback from each factor | Intersection degrees 1−2+1=0 for each such pullback | Rational coefficient convention retained. |
| §10.10 Gross–Schoen height and variation | Hyperelliptic genus 2, φ=5; quadratic extension | 0=(5/2)·2−5; after extension 0=(5/2)·4−10; normalized height 0 | No general cycle-height conjecture assumed. |
| §10.11 delta/theta definition | g=1, φ=0; theta norm multiplied by e | δ=−24I−8log(2π); new I=I+1 would change δ by −24 | Specified norm excludes arbitrary rescaling. |
| §10.12 arithmetic Noether identity | g=2, K=ℚ and degree-two extension | W_Ar=12h−δ+8log(2π); every raw term doubles | Correct [K:ℚ] retained. |
| §10.13 arithmetic Noether divisor and sign | Unit genus-two node; good reduction; s↦−s | δ+ε=7/6 or 0; Green difference −log|−s|+log|s|=0 | F01 correct carrier and inverse section. |
| §10.13 geometric image | S=Spec ℚ | Arithmetic local value 7/6 may be nonzero; geometric divisor group 0 and image 0 | F01 negative control excludes geometric carrier. |
| §10.13 archimedean Noether value | g=2 | δ−8log(2π); Wilms gives lower bound −4log(2π⁴)−8log(2π) | Arithmetic metric retained until forgetting. |
| §10.14 hybrid obstruction | t=e⁻ⁿ, absolute-value exponent 1/n | |t|^(1/n)=e⁻¹; proposed ε at complex points 0, limiting graph ε=1/6 | Continuity obstruction remains after F01. |
| §11.1 archimedean phi coercivity | Boundary error 1/156, t=e⁻ⁿ | 1/39−2/156=1/78; lower Green bound n/78+O(1)→∞ | Uniform positive minimum for fixed genus. |
| §11.2 geometric bigness | g=2 maximal-variation curve, deg λ=1; constant family | deg P≥1/25>0; constant family deg λ=deg P=0 | Maximal variation necessary. |
| §11.3 arithmetic bigness | g=2, [K:ℚ]=2, model dimension 1 | Normalized lower 2c₀/5; raw lower 4c₀/5 | Field factor retained. |
| §11.4 canonical bundle bigness | g=2, dim S=1 | Abel fibre degree 16; positive expansion term 2·16P=32P>0 | Denominators positive; no g=1 application. |
| §12.1 relative products and potential bigness | Y=S; curve fibre and L=π*M | m⊠L=mL for Y=S; on curve powers every top degree of base pullback 0 | m≥1 and positive fibre degree retained. |
| §12.2 relative-pairing exponent identity | e=1,m=2 | Exponents (2,1),(1,2) yield aM; (3,0),(0,3) yield 0 | Consistent. |
| §12.2 selected top intersection | d=2,a=2,M²=3,m=3 | a^(m−d)Mᵈ=2·3=6 | Consistent. |
| §12.3 potential-bigness equivalences | Base dimension 0, e=1,a=2; e=0,Y=S | Top fibre degree m!2ᵐ>0; for e=0 volume of mL is m^dvol(L) | Both implications have positive coefficients. |
| §12.4 grid bound | Finite subsets of ℙ¹; 3×3 grid | m=1 degree 3 gives 3; m=2 codimension 2 degree 9 gives √9=3 | Correct codimension exponent; empty Σ cardinal 0. |
| §12.5 theta potential bigness | g=2, Abel degree 1 | Pairings 2P+ι*Θ̄, 8w+P,16Θ̄+32P | Every required base coefficient positive. |
| §12.6 characteristic restriction | ℙ¹_ℤ at 2,3; Spec ℤ[x]/(x²−2) at 2 | O(1) fibre degree 1, base constant shift 0; ring 𝔽₂[x]/(x²) has x²=0, integral test 𝔽₂ | Does not claim whole fibre integral. |
| §13.1 geometric stable Faltings height | Constant family; extension degree 2 and Hodge degree 3 | Heights 0 and 3/2; further extension multiplies numerator/denominator equally | Extension independence retained. |
| §13.1 characteristic-dependent lower bounds | g=2, characteristics ≠3 and 3 | Constants 3⁻¹⁶ and 4⁻¹⁶, both positive | Non-isotriviality retained. |
| §13.2 weighted raw local invariants | One unit type-zero node, g=2; quadratic extension | (δ,ε,φ)=(1,1/6,1/12)→(2,1/3,1/6); ε∞=0 | Raw scaling and archimedean conventions consistent. |
| §13.3 canonical-square correction | h=1/10,δ=1,ε=1/6 | W_model=1/5; W_a=1/5−1/6=1/30 | Same ε sign as §10.13. |
| §13.4 lower phi bound and hyperelliptic identity | g=2, φ=1/12 | Hyperelliptic W=(2/5)φ=1/30; weaker lower (1/5)φ=1/60≤1/30 | Consistent. |
| §13.4 comparison constants | g=3,4,5; g=2 hyperelliptic | A≈96.9412,139,109.625; improved g=2 A=107.25; limiting A=47 | All bounds <144 in the stated ranges. |
| §13.5 function-field two-sided bound | h=1,δ=ε=0; worst A=139 | W=12, so 1/12≤12≤12; 12/139>1/12 | Consistent. |
| §13.6 Wilms delta lower bound | g=1,2 | Bounds approximately −10.5441,−21.0883 | Correct strict inequality. |
| §13.7 positive comparison height | g=1, lowest allowed h=−log(2π²)/2 | c=log(2π²)/2+1, hence h+c=1; at h=1, h+c>h | Correct Faltings normalization. |
| §13.8 coercive divisor/geometric image | Unit K₄, c=17/288 | D=107/48; D−δ=−181/48; D−cδ=15/8 | F01 leaves E+Δ computation unchanged. |
| §13.9 logarithmic upper constant | g=1 algebraic check, then g=2 | 2g log(2π⁴)+4g log(2π)=6g log(2π²), approximately 17.8956g | No genus-one theorem inferred. |
| §13.9 lower-bound route coefficients | g=2,3,4,5, sharp admissible constants | Coefficients 109.75, approximately 100.4412,142,≤112.375, all <144 | Gives coefficient 12/144=1/12. |
| §13.10 fixed-genus uniform comparison | g=2,3; h≤1 and h≥24|c₅| | c₃=4⁻¹⁶/12≈1.9403·10⁻¹¹, 4⁻³⁶/12≈1.7647·10⁻²³; max(h,1)=1 or h; h/12+c₅≥h/24 in large range | Constants depend on g. |
| §13.10 non-isotrivial hypothesis | Constant genus-two function-field curve | h=0,W=0 but max(h,1)=1 | Excluded: otherwise positive lower bound would read c₃≤0. |

The Fourier negative control uses the complex Fourier coefficient of cos(2πkx), namely 1/2 at frequency k. With k=4ⁿ, applying the flat Laplacian gives −(2π4ⁿ)²·2⁻ⁿ/2 = −2π²8ⁿ. Chern curvature for the metric exp(−f) is a fixed nonzero multiple of that Laplacian distribution. A finite signed measure ν satisfies |ν̂(k)| ≤ |ν|(E), so these coefficients preclude integrability. Complex conjugation acts by (x,y)↦(x,−y), preserving f; uniform convergence follows from the amplitude sum 1. Thus the example satisfies the ambient continuous-metric definition before failing the integrable subcondition.

The polarization computation uses the same metrics in every occurrence, not merely their algebraic classes. For n=2 it subtracts the two self-products from the top power of their sum and divides by 2. The signed examples are obtained from differences of positive inputs; no negative-degree bundle is fed to the positive supplier. Scalar extension and real quotient pushforward preserve these equalities, and §2.6 supplies the boundary-limit/mass-control step. These checks cover the new intermediate assertions used to repair F03–F04.

No original Lean names were added, deleted or renamed, and no downstream consumer needs a name migration. Consumers do need the explicit arithmetic degree adapter and the local pullback/pushforward comparison, rather than direct identification of the two analytic spaces. The unresolved supplier gaps require their owners' work; this report makes no claim that either has been supplied. No commit, push or external write was performed.
