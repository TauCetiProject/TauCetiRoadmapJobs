# Review of HabiroNahmSeries (pull request #1427 at 7d3aedd)

**Verdict:** needs changes

## R01 (P2) — Replace the fulfilled local-regulator gap with its supplier sections

**Location:** `TauCetiRoadmap/HabiroNahmSeries/README.md:149`, repeated at line 1609: “What PadicHodgeRegulators must provide (gap:local-k3-regulator)”.

**Claim:** The unramified p>3 completed K₃ lattice, Bloch comparison and root generation are requested as missing supplier work.

**Witness:** `TauCetiRoadmap/PadicHodgeRegulators/README.md:1190`, 1215 and 1233 already state respectively the normalized comparison, the isomorphism onto p²𝒪_L, and root generation, at the supplied open head.

**Repair:** Consume PadicHodgeRegulators §§4.7 and 5.6–5.9 by those exact sections, retaining the completed source, admissible roots, unramified finite étale coefficients and p>3. Replace the outstanding request in both locations; do not request another construction. The design's legacy D.1/D.3/D.4 labels are not the present supplier locators. This is the brief's “gap asks for what is already provided” case, not an objection to an unfinished supplier theorem. On L=ℚ₅ the existing contract gives image 25ℤ₅ and the calibrated root value 25 modulo 125; on L=0 it gives 0→0. These are exactly the inputs §6.3 needs.

## R02 (P2) — State the filtered affine-shift identity and its domain

**Location:** `TauCetiRoadmap/HabiroNahmSeries/README.md:1379`: “the affine-shift identity with its exponential factor”; also the affine-completion target at line 651.

**Claim:** The Gaussian API promises an affine-shift operation on its positive-weight completion without specifying the allowed shift, the identity, or the exponential's domain.

**Witness:** F=Σₙ≥₀wⁿ belongs to the stated completion. Substitution w↦w+1 makes its constant coefficient Σₙ≥₀1 undefined. GSW line 459 instead shifts the unscaled variable by G√h.

**Repair:** Name and state the filtered version. With the h-scaled convention, a coefficient vector G and symmetric invertible Λ, use

`⟨exp(−GᵀΛw) F(w+hG,h)⟩_Λ = exp(hGᵀΛG/2) ⟨F(w,h)⟩_Λ`.

Specify that F lies in the stated completion and prove that this substitution and exponential preserve it. Keep arbitrary constant translations only on an appropriate polynomial/exponential domain, stated separately. Add the nonexample above. For Λ=G=1 and F=Σwⁿ, the repaired identity has coefficients `1, 3/2, 29/8` through h² on both sides; for F=1 both sides are exp(h/2). Thus the repair preserves the source's intended identity and excludes the undefined translation.

## R03 (P3) — Give a locator for the general shifted Euler–Maclaurin theorem

**Location:** `TauCetiRoadmap/HabiroNahmSeries/README.md:530`, citing GZ §4.1 and VZ Lemma 2.2 for the arbitrary C^J finite-interval statement at line 520.

**Claim:** Those locators support the displayed uniform shifted Euler–Maclaurin remainder for every complex C^J function.

**Witness:** GZ line 330 expands a Pochhammer logarithm by geometric series; VZ lines 106–140 concern the logarithm of an Euler-product tail. Neither states the general finite-interval theorem.

**Repair:** Cite an exact source for the displayed shifted formula and remainder, or explicitly derive it by repeated integration against periodic Bernoulli polynomials and identify that input. Keep the Pochhammer citations on the later application. The formula passes the linear-function test: for M=1, f(s)=s, the two sides are θ and 1/2+(θ−1/2), with remainder zero; the issue is attribution, not that formula's sign.

## R04 (P3) — Update the scope comparison's saturation locator

**Location:** `TauCetiRoadmap/HabiroNahmSeries/README.md:13`: “ComputationalNumberTheory §3.22”.

**Claim:** The cited section contains the additive-group saturation criterion being distinguished from §6.1.

**Witness:** At the supplied ComputationalNumberTheory head, the relevant target is §3.23, `README.md:1812`; there is no §3.22 heading. Section 4.19a, the nearby Euler–Maclaurin comparison, does exist.

**Repair:** Change this scope-only citation to §3.23. Its example G=ℤ⊆ℤ has V_p=0, whereas G=pℤ⊆ℤ has a nonzero divisibility class. The distinction from a possibly noninjective ring map in §6.1 remains valid. This is not an unowned dependency or an upward supplier edge.

## Verified sound

The review covered both complete files, all seven layers, all 15 seeded source targets, the seven admitted headline theorems and all 16 elaborated declarations. No worktree file was changed. The exact head is the requested head; the diff outside this roadmap folder is empty. The worker's gate reports every check passing, including the targeted build, stray files, imports, source-material and dependency checks. Independent direct elaboration of `Suggested.lean` succeeded with exactly seven `sorry` warnings. A separate scratch copy checked `@name` for all 16 declarations: no needed binder disappeared and no README/signature generality discrepancy was found. The seven theorem bodies were probed separately with `simp`, `rfl` and `infer_instance`; none closed. Object-level library searches found no single existing lemma that directly closes their displayed signatures. No padding finding is raised.

The mechanically repeated dependency check returned:

```text
depcheck: 204 roadmaps, 1494 edges, 0 problem(s)
```

There was no UPWARD, CYCLE or moved line. The citation resolver found no wholly absent roadmap or Lean name; its output explicitly does not check pinned libraries, which were inspected separately below. Its name-level result does not resolve the obsolete section in R04.

The analytic/formal split is substantive: positivity and rationality appear only where needed, while the formal matrix remains any symmetric integral matrix. The integral Bloch and full determinant-algebra conventions are retained. The proof routes do not reduce rationalized Bloch groups modulo n, infer all-order integrality from finitely many coefficients, discard a square-root component, or infer arithmetic descent from analytic asymptotics. Small-prime and p-divisible-order extensions are explicit targets. The source corrections tested below are not findings against the roadmap.

### Seeded source checks

All locators were checked against the legally cached versions named in the references, using printed pagination rather than extraction-page counters. There are no README locators marked unverified. The following records distinguish a theorem in the source from a corrected or derived target here.

| Seeded target | Source evidence opened | Outcome and scope |
|---|---|---|
| 1.3 Clearing powers and algebraicity | Zagier line 2210, II.3A (25), printed p.43; CGZ §7.1, pp.35–36; Stacks line 18677, tag 00UO | Nahm equations and Ω=0 criterion match. The Jacobian formula is correctly identified as a derivation here; the pinned finiteness theorem supplies the field argument. |
| 2.2 Bernoulli remainders/Euler factor | GZ lines 76–124 and 330–399, Lemma 2.1 and proof, pp.3,6–7; VZ lines 106–172, Lemma 2.2, pp.2–3 | Pochhammer setting and displacement issue checked. General finite-interval attribution is R03. Dedekind phase is checked independently below. |
| 2.3 Saddle and tails | GZ lines 160–199, 496–588, Proposition 2.2/§4.3, pp.4,9–10; VZ Lemma 2.2 and Theorem 2.3 | README corrects the half, B sign, Euler term and absolute-value treatment. Strict positive definiteness is retained for domination. |
| 2.5 Analytic theorem | GZ Theorem 3.1, lines 283–325, pp.5–6; CGZ Theorem 7.1, pp.35–36 | Rational nontrivial-root data and odd coprime orders are retained; real data are allowed at order one. Corrected covolume and additive errors survive G=0. |
| 2.6 Arithmetic descent | GZ (21), p.6; CGZ Theorem 7.1/(43)–(44), pp.35–36 | Coherent radicals, actual automorphisms, nonzero constant for unit normalization and the extra all-coefficient/Chern identities are explicit obligations. |
| 3.2 Radial Laurent estimate | GZ lines 771–793, Proposition 7.1 proof, pp.13–14; CGZ lines 1945–1950, p.40 | Inverse matrix gives −d/c and c²y. Nonzero meromorphic germ and periodic cusp chart are retained. |
| 4.3 Fixed fields/bounded powers | CGZ lines 1944–1958, Theorem 7.5 proof, p.40; GZ Theorem 3.1 | README repairs the phase sign and retains determinant, C and Gauss factors. Fixed E and a fixed exponent precede varying orders. |
| 4.4 Integral bridge | CGZ Theorem 7.5 and Remarks 7.6–7.7, lines 1935–1973, pp.40–41; Corollary 7.2, pp.36–37 | Modularity of the distinguished solution, not all solutions or a converse. Integral lift before reduction and rational restriction afterwards are explicit. |
| 5.3 Shifts, orbits, potential | GSWZ lines 1088–1187, Lemma 2.6/(83)–(89), pp.23–25; lines 1883–1894, (168)–(169), p.36 | Full column shifts and logarithmic inverse Hessian checked; negative shifts use inverses, not negative-length products. |
| 5.4 Finite support/Dwork | GSWZ lines 1039–1080, Lemma 2.5, p.22; lines 1105–1187, Theorem 6, pp.24–25 | Finite Laurent support is stronger than a formal Euler product. The Dwork identity allows a simple pole and requires p∤m. |
| 5.7 Coefficient scheme/WKB | GSWZ line 596, (37), pp.13–14; (140)–(162), pp.33–35 | Invert δ and 2; retain both T components. Rank-one unsigned WKB substitution, zero constants and negative-A treatment checked. |
| 6.1 Full algebras/divisibility | GSWZ lines 1883–1920, (169)–(170), pp.36–37 | The source's branch argument does not supply full-algebra reduction injectivity. The README makes that a separate target and gives a valid split-component counterexample. |
| 6.2 First jet | GSWZ lines 1440–1488 and (118), pp.28–30; §3.2, pp.39–41 | The displayed Jet is a derived Wick calculation, not a quoted source theorem. Its seven terms and refined denominator hypotheses were checked. |
| 6.6 Descendants/powers/converse | GSWZ line 660, Corollary 1.11, p.15; lines 2269–2284, proof and Remark 3.11, p.44; CGZ §7 | The t^(1/m) variable forces t=q^(mν). Good-order powers, all-root extensions and nonzero constants for the converse are distinguished. |
| 7.1 Symmetrisation/residues | GW Proposition 1.14/(47), lines 526–563, p.11, and proof lines 1491–1540, p.30; GSWZ (215)–(220), pp.44–46 | General symmetric matrices and integer upper binomial indices retained. Residue sign, monomial factors and q^(−c_A) checked against low-degree products. |

Additional checks opened GSW Lemmas 3.1–3.2 (lines 417–499, pp.9–10), Aarhus Proposition 2.13 (line 457, pp.8–9), Wagner Corollary 3.13 (line 1826, printed p.41), GW (182) (line 1602, p.31) and the GSWZ cubic, quartic, knot and Gauss examples. The affine domain issue is R02; Fubini correctly requires an invertible first block as well as the whole matrix.

### Headline coverage and pinned APIs

The statable headlines are positive-solution uniqueness; algebraicity of a nonsingular polynomial zero; analytic convergence; upper-half-plane holomorphy; the full-column formal q-difference equation; the general symmetrised q-binomial product; and the quadratic Gauss norm. All seven are present. Their nine support declarations have real bodies on native carriers.

The other deep targets are radial asymptotics and arithmetic coefficient descent, Andrews–Gordon/Chern calibration, modularity⇒Bloch torsion, plethystic admissibility and Gaussian comparison, Frobenius/Habiro membership and descendants, all-root scalar products, the quartic Bloch/descendant endpoints, canonical figure-eight transport, and degree-zero/higher cohomological exports. The module docstring names their missing integral Bloch, normalized radial, weighted Gaussian, descendant, K₃-Habiro-module or Habiro–Hodge carriers. No free predicate or weakened stand-in replaces them.

Pins inspected: Mathlib `6b7abb3c7686292736be2955bd3eb9ebf63b456a`; Tau Ceti `a91d3aafa8cd3e6bc33dfde0d7677ed0f1625039`. Paths in the next table are relative to the respective pinned library.

| Pinned declaration/object | File and line | Hypothesis/content verified |
|---|---|---|
| `Matrix.PosDef` | `Mathlib/LinearAlgebra/Matrix/PosDef.lean:164` | Hermitian plus positivity on every nonzero finitely supported vector; symmetry is not absent from the uniqueness signature. |
| `Matrix.posDef_iff_dotProduct_mulVec` | `Mathlib/LinearAlgebra/Matrix/PosDef.lean:456` | Finite-dimensional quadratic-form formulation. |
| `IntermediateField.fg_adjoin_of_finite` | `Mathlib/FieldTheory/IntermediateField/Adjoin/Defs.lean:662` | Finite coordinate range gives a finitely generated intermediate field. |
| `IntermediateField.essFiniteType_iff` | `Mathlib/FieldTheory/IntermediateField/Adjoin/Algebra.lean:118` | FG field is essentially of finite type, not necessarily finite before the differential argument. |
| `IntermediateField.finiteDimensional_adjoin` | `Mathlib/FieldTheory/IntermediateField/Adjoin/Basic.lean:612` | Finite set of integral generators; the README supplies algebraicity first. |
| `KaehlerDifferential.span_range_derivation` | `Mathlib/RingTheory/Kaehler/Basic.lean:251` | Differential images span Ω. |
| `Algebra.FormallyUnramified.finite_of_free` | `Mathlib/RingTheory/Unramified/Finite.lean:158` | The section at line 127 retains formal unramifiedness and essential finite type, in addition to module freeness. |
| `MvPowerSeries.rescale` | `Mathlib/RingTheory/MvPowerSeries/Substitution.lean:633` | Coefficient at n is multiplied by ∏a_i^n_i; this matches the column-shift signature. |
| Eta local products and nonvanishing | `Mathlib/NumberTheory/ModularForms/DedekindEta.lean:102`, 114 | Locally uniform product and nonzero eta on the upper half-plane. |
| Strict/projective cusp widths | `Mathlib/NumberTheory/ModularForms/Cusps.lean:317`, 328 | Strict width can totalize to zero; projective width adjoins −1. Positive width needs the arithmetic hypotheses. |
| `HenselianRing.is_henselian`, complete-ring instance | `Mathlib/RingTheory/Henselian.lean:94`, 170 | Monic polynomial, simple residue root, derivative a unit; general complete rings, not just ℤ_p. |
| Gaussian polynomial moments/envelopes | `TauCeti/Probability/Distributions/Gaussian/PolynomialMemLp.lean:81`, 100 | Polynomial moments include zero variance; Lebesgue-envelope result requires nonzero variance. |
| `multivariateGaussian_eq_withDensity` | `TauCeti/Probability/Distributions/Gaussian/Density.lean:171` | Requires `S.PosDef`; arbitrary covariance does not give a Lebesgue density. |
| `gaussSum`, its nondegenerate norm and radical quotient | `TauCeti/LinearAlgebra/FiniteBilinearModule/GaussSum.lean:108`, 172, 284 | Native finite quadratic-module sum, norm under nondegeneracy, and quotient only by quadratic radical. |
| `cuspTranslationOrbitWidth`, positivity | `TauCeti/NumberTheory/ModularForms/Norm/Cusps.lean:148`, 186 | Minimal translation period; positivity under finite relative index. |

These 15 file-level inspection rows cover more than 20 declarations. Searches by objects (Nahm equations, Jacobians, plethysm, Gaussian contraction, saturation, q-Pochhammer, q-binomial and Gauss norm) did not identify another owner of the retained Nahm-specific headlines. The generic prerequisites are consumed rather than rebuilt.

### Ownership and supplier resolution

Main-roadmap shapes were compared with ThetaSeries, StandardDistributions and FuchsianOrbifolds. Object searches used the roadmap service on main and the supplied open heads, and also searched the board packages. The open-work check was performed; it was not omitted. No other readable `Suggested.lean` declared this roadmap's fully qualified names. The following are the concrete ownership resolutions; a supplier target is planned work, not a claim that it is already proved in Lean.

| Owner and current location | What was resolved |
|---|---|
| `TauCetiRoadmap/GeometryOfNumbersAndQuadraticArithmetic/README.md:1784`, §4.3 | Analytic q-Pochhammer occurs inside this section despite its broad heading; shift/zero-divisor ownership is valid. |
| `TauCetiRoadmap/HabiroCyclotomicCompletions/README.md:204`, §1.1 | Finite/formal Pochhammer toolkit and scalar-change interfaces. The multivariate finite-support theorem remains here. |
| `TauCetiRoadmap/QSeriesPartitionsAndMockModularForms/README.md:209`, 303, 400, 436, 815 | §§1.6,2.4,3.1,3.3,5.2: prefix convergence, Euler/binomial evaluation, signed lower-index adapter, Rogers–Ramanujan and eta. Additional root/Andrews–Gordon interfaces remain expressly contracted. |
| `TauCetiRoadmap/QuantumEnvelopingAlgebras/README.md:553`, QEA6 | Integer upper-index symmetric Gaussian polynomial; conversion q=v² needs the factor v^(k(r−k)). |
| `TauCetiRoadmap/PolylogarithmFunctions/README.md`, §§1,3,5,6 | Complex Li₂/distribution, Bloch–Wigner and increasing interval Rogers function; the complementary normalization and Nahm applications belong here. |
| `TauCetiRoadmap/K3BlochGroups/README.md:526`, 598, 672, 707, 952, 985, 1045, 1685, 1967, 2023 | Antisymmetric carrier, five-term quotient/boundary, old/new conventions, Suslin comparison, real Rogers detector and relation witnesses. These are not reconstructed here. |
| `TauCetiRoadmap/ColemanIntegration/README.md:1468`, L2.Fb | Consumes the K3BlochGroups carrier and supplies evaluation/projective adapters; ownership direction is K3BlochGroups→ColemanIntegration. |
| `TauCetiRoadmap/Polylogarithms/README.md:136`, 189 | Descended embedding regulators and Borel normalization. Normalization alone is not injectivity. |
| `TauCetiRoadmap/GeneralAlgebraicKTheory/README.md:346`, 372, 418 | §§2.5–2.6,3.2 exact-category/ring K-theory with finite-product and functoriality laws. |
| `TauCetiRoadmap/KTheoryFiniteLocalFields/README.md`, §§1.8,7.4 | Finite coefficients and local comparison inputs with their prime restrictions; no unrestricted integral Chern isomorphism is inferred here. |
| `TauCetiRoadmap/ArithmeticKTheory/README.md:1190`, §3.4 | Positive even K-groups of integer rings finite; field K₂ is not substituted for K₂(𝒪_K). |
| `TauCetiRoadmap/HabiroNumberFields/README.md`, §§0.2,0.9,1.1–1.15,2.1–2.7,3.1–3.12 | Exceptional integer, Chern restrictions, cyclic products, independent normalization premise, all-order Chern square, full Taylor algebras and effective module descent. Its scope explicitly assigns formal Gaussian/Nahm applications to this roadmap. |
| `TauCetiRoadmap/PadicHodgeRegulators/README.md:1188`, 1213, 1231 | Completed K₃ regulator, unramified lattice and generation; fulfilled request is R01. |
| `TauCetiRoadmap/QWittVectors/README.md:841`, §6.1 | Completed étale Frobenius is semilinear over a perfectly covered base. Base-change naturality retains the base Frobenius square. |
| `TauCetiRoadmap/HabiroRings/README.md:1069`, 1102, 1132, 1152–1225 | Relative/arithmetic ring comparison, completed module pullback, transported lines and completion hypotheses; not an arbitrary R-algebra of constant families. |
| `TauCetiRoadmap/HabiroCohomologyFoundations/README.md:1606`, 1974, 2189, 2280 | §4.21 gives degree zero for étale algebras; §5.13 constructs algebraic cohomology; §§6.1–6.3 pose the analytic comparison; §8 contains the particular comparison squares. |
| `TauCetiRoadmap/FuchsianOrbifolds/README.md:263`, 331, Layers 3–5 on main | Cusp quotient/Laurent criterion and descent, including the exponential-growth converse; this roadmap adds scalar radial estimates. |
| `TauCetiRoadmap/ModularForms/README.md:73`, 1052, main | Standing modular conventions and Layer 10A consume the existing cusp geometry. |
| `TauCetiRoadmap/StandardDistributions/README.md`, Layers 1,5; `TauCetiRoadmap/ThetaSeries/README.md`, Layer 1, main | Gaussian moments/covariance and lattice Poisson supply the analytic comparison. The filtered algebraic Wick extension is distinct. |
| `TauCetiRoadmap/ComputationalNumberTheory/README.md:1812`, 2228 | Group saturation and Hurwitz-power remainder are narrower/different interfaces; only the first locator needs R04. |

All seven design gap slugs were compared with `packages/HabiroNahmSeries/design/plan.json` and the exact-contract section. The degree-zero contract has been replaced in the README by the actual §4.21 citation; the design retains its historical slug. The integral-Bloch README request is narrower than its historical design sentence and correctly assigns the algebraic carrier to K3BlochGroups. The finite-Chern, module and higher-comparison interfaces retain their substantive comparison/descent premises; they are not rejected merely because a supplier is unfinished. R01 concerns a request whose specified mathematical content is already all present. No supplier is `none`, and no later roadmap is imported as a prerequisite. ArithmeticQuantumTopology remains a consumer.

### Computed adversarial table

The rows record computations, not claims that finite tests prove a general theorem. Exact rows use rational arithmetic, polynomial quotient reduction, elementary expansions or finite sums. The three radial decimal rows are numerical sanity checks, not rigorous remainder certificates. “Retain” means the displayed instance agrees and no change is proposed. Negative controls test a missing-hypothesis variant, not the theorem with that hypothesis retained.

| Statement/interface | Instances tried | Computed left side | Computed right side / wrong model | Result; change |
|---|---|---|---|---|
| 1.1 quadraticExponent | A=2,B=1,C=11/60,n=1; N=0,C=2 | 131/60; 2 | 1+1+11/60; empty sums+2 | Equal; retain |
| 1.1 datum permutation/block sum | A=diag(1,2), n=(1,1), B=C=0; swap coordinates | 3/2 before and after | 1/2+1 | Equal; singular A=0 rejected analytically |
| 1.1 analytic/formal distinction | A=((1,1),(1,1)), v=(1,−1) | vᵀAv=0 | Strict positivity would require >0 | Formal admissible, analytic excluded; retain |
| 1.2 unsigned NahmEq | A=1, x=1/2; x=0,1 | 1−x=1/2,1,0 | x=1/2,0,1 | Positive example; endpoints fail |
| 1.2 positive uniqueness headline | N=0; A=1; A=2 | One empty tuple; x=1/2; x=(√5−1)/2 | Empty equations; 1−x=x; 1−x=x² | Equal; retain real positive-definite scope |
| 1.2 signed convention | A=3,z=3 in 𝔽₅ | 1−3=3 | −3³=3; unsigned 3³=2 | Signed equation holds; wrong sign fails |
| 1.2 discriminant/nondegeneracy | A=2,z=2 in 𝔽₅, unsigned | 1−z=z²=4; H=2+2/(−1)=0 | δ=0 | Solution is degenerate and excluded from étale claims |
| 1.2 symmetric coupled equations | A=((0,1),(1,0)), x=(u,1−u) | (1−u,u) | (x₂,x₁)=(1−u,u) | Family of solutions; A not positive definite, so no uniqueness claim |
| 1.3 clearing polynomial | d=1,M=2; d=1,M=−1 | 1−Y−Y²; Y−Y²−1 | Torus equations 1−Y=Y²; 1−Y=Y⁻¹ | Equal on units; negative-power factor necessary |
| 1.3 torus restriction | M=((-1,1),(1,−1)), y=(0,0) | Cleared polynomials (0,0) | Unit-coordinate condition false | Extraneous affine zero excluded |
| 1.3 cleared Jacobian | d=1,A=2, y²=1−y | P′=−1−2y | −(1−y)(2+y/(1−y))/y=−1−2y | Equal; determinant sign retained |
| 1.3 algebraicity headline | P=X²−2, x=√2; empty system | J=2√2, degree 2; det(empty)=1 | ℚ(√2) finite; coordinate field ℚ, degree 1 | Equal; no global zero-dimensionality assumption needed |
| 1.3 inseparable negative control | k=𝔽_p(a), P=X^p−a | P′=0 | Required determinant ≠0 | Excluded; field-general bridge does not silently assume separability |
| 1.3 positive root lifts | x=1/4,d=2; x=1/16,d=4 | y=1/2 in both cases | y²=1/4; y⁴=1/16; negative lift fails positivity | Equal; retain |
| 1.3 denominator compatibility | x=1/16, denominators 4→2 | (1/2)²=1/4 | Positive square root of 1/16=1/4 | Equal |
| 1.3 coordinate fields | A=1/2,d=2 | x=(3−√5)/2, y=(√5−1)/2 | x=y², y=1−x; both degrees 2 | Equal; principal-root reselection not used under embeddings |
| 1.4 exterior boundary | Symmetric 2×2 A with off-diagonal b | b(x₁∧x₂+x₂∧x₁)=0 | Expected unsigned exterior boundary 0 | Equal; antisymmetric diagonal issue kept separate |
| 1.4 signed diagonal obstruction | Formal signed tuple, diagonal product u | Boundary u∧(−1); twice it=u∧1=0 | Doubled class has boundary 0 | Equal; no unwarranted unmultiplied integral class |
| 1.4 rationalization/mod n | G=ℤ, n=5 | (G⊗ℚ)/5=0 | G/5G=ℤ/5, five elements | Distinct; integral lift before reduction is necessary |
| 1.5 complementary Rogers convention | x=1/2 | L_CGZ=π²/12 | π²/6−L_increasing=π²/12 | Equal; endpoints complement 0 and π²/6 |
| 1.5 real/conjugate regulators | Real x=1/2; z=ζ₆ and conjugate | D(1/2)=0; D(z̄)=−D(z) | Zero real row; opposite conjugate rows | Equal; one representative per conjugate pair |
| 1.5 circle-valued division control | Period P, purported division by 2 | Representatives 0,P give 0,P/2 | Same original circle class, different halves | No canonical division; lift requirement retained |
| 2.1 finite Pochhammer and branch | n=0; q=1/2,n=2; C=1/2, τ→τ+1 | 1; (1/2)(3/4)=3/8; numerator changes sign | Empty product; 3/8; same q alone loses sign | Equal; τ branch retained |
| 2.1 logarithmic product | w=0; w=1, initial factor | Sum log(1)=0; log(0) undefined | Product 1; product 0 | Correct zero-free domain |
| 2.1 convergence headline | A=2,B=C=0,q=1/2 | n=0,1,2 terms: 1,1,1/6 | q^(n²)/(q;q)_n; same values | Denominators nonzero; Gaussian decay supplies summability |
| 2.1 rank-zero sum/holomorphy | N=0,C=2,q=1/2 | Sum over singleton=1/4 | exp(4πiτ)=1/4 | Holomorphic singleton sum; not the constant-one stand-in |
| 2.1 domain negative control | q=1,n=1 | Denominator 1−q=0 | Im τ>0 fails | Totalized division outside the theorem causes no false claim |
| 2.2 shifted Euler–Maclaurin | f(s)=s,M=1,a=0; θ=0,1/2,1 | 0,1/2,1 | 1/2+B₁(θ)=0,1/2,1; remainder 0 | Formula agrees; locator R03 |
| 2.2 empty interval/constant | M=0; f=3,M=2 | 0; 6 | Integral/corrections 0; 6+0 | Equal |
| 2.2 Bernoulli remainder | m=1,ν=0,w=1/2 | ε coefficient −Li₀(1/2)/12=−1/12 | −1/12; omitted B₂ gives 0 | Equal |
| 2.2 shifted zero control | m=1,w=e^(−ε),ν=−2 | qw e^(−νε)=1 | Initial factor 0; guard requires 2ε≤ε/2, false | Excluded |
| 2.2 Dedekind phase | (a,m)=(1,3),(2,5); m=1 | s=1/18,0; empty sum 0 | χ=e^(πi/18),1,1 | Equal; printed binomial phase at (2,5) is e(1/5)≠1 |
| 2.2 Euler correction | m=1, inverse Euler after normalization | exp(−ε/24)=1−ε/24+… | Linear coefficient −1/24 | Equal |
| 2.3 saddle Gaussian | H=1,m=2 | Covariance m/H=2 | Dropping half gives 1 | Half retained |
| 2.3 B sign | B=v=m=1, n=s/ε+1/√ε | −εBn=−s−√ε | Stated constant/linear terms −s,−√ε | Equal |
| 2.3 saddle polynomial parity | exp(v³√ε), unit covariance | Odd term integrates 0; ε term=15/2 | Wick moment ⟨v⁶⟩/2=15/2 | Equal |
| 2.3 Euler contribution to first coefficient | A=2,B=C=0,m=1 | −1/60 | Without Euler: −1/60+1/24=1/40 | README uses correct coefficient |
| 2.3 finite-product modulus | n=0; n→∞ | log(empty)=0; leading −π²/(6mε) | Li₂(1)−π²/6=0; Li₂(0)−π²/6=−π²/6 | Equal leading terms |
| 2.3 complex-tail control | q=ζ₃/2,n=1 | 1/(1−q)=5/7+i√3/7 | Nonreal, although modulus is real | Absolute-value bound does not assume positivity |
| 2.4 normalized Gaussian | M=1, monomials 1,v,v²,v⁴ | 1,0,1,3 | Wick values 1,0,1,3 | Equal |
| 2.4 mixed Wick contraction | Covariance ((2,1),(1,2)) | ⟨v₁v₂⟩=1; ⟨v₁²v₂²⟩=6 | 1; 2·2+2·1²=6; diagonal-only answer 4 | Equal; full covariance necessary |
| 2.4 lattice covolume | N=1,H=1,m=2, spacing 2√ε | Density 1/(2√ε) | Integral 2√π; prefactors combine to 1/√2 | Equal; printed m^(+1/2) would give √2 |
| 2.4 additional congruence spacing | Replace spacing h by 3h | Density divided by 3 | D⁻¹=1/3 | Equal |
| 2.5 CRT Gauss factor | Q=n²/2,m=3,a=1,D=2 and 4 | Averages (1−1)/2=0; (1−1+1−1)/4=0 | Same G=0 | Equal; refinement safe |
| 2.5 branch-dependent phase | Same Q,m, a=2 and 4 | G=1 and 1 | a=1 gives 0 although a=4 has same q-root | Integer representative retained |
| 2.5 radial asymptotic headline | A=2,B=C=0,m=1, ε=.05,.02,.01 | Normalized sums .849942228,.850367305,.850509045 | Limit .850650808; relative slopes −.016659724,−.016663889,−.016665278→−1/60 | Numerical agreement; not a remainder proof |
| 2.5 cancellation case | A=1,m=3,a=1, ε=.1,.05,.02 | Normalized absolute sums 3.7869e−4,1.0151e−7,2.6268e−14 | Dominant coefficient 0 | Numerical agreement; no division by G |
| 2.5 rank-zero/C factor | N=0,C=2,m=1 | exp(−2ε)=1−2ε+2ε²+… | I=S=c=G=1 times C factor | Equal |
| 2.6 coherent Kummer fields | x=1/4,d=2,m=3 | η³=1/2, θ=η² | σ(η)=ζη gives σ(θ)=ζ²θ | Correct rotation; treating rational powers as fixed fails |
| 2.6 unit-series descent | Φ=√2(1+3ε),m=2 | Φ²=2+12ε+18ε² | Φ/Φ₀=1+3ε∈ℚ[[ε]] | Equal |
| 2.6 characteristic/m guards | char 2, Φ=1+√s ε over 𝔽₂(s); m=0 | Φ²=1+sε²; Φ⁰=1 | Φ not over base; arbitrary Φ passes m=0 power test | Both excluded by char 0 and m>0 |
| 2.6 constant nonvanishing | Φ=ε | Φ₀=0 | Φ/Φ₀ undefined as unit normalization | Excluded; additive radial theorem still meaningful |
| 2.7 trigonometric calibration | r=0,n=3; r=1,n=5 | Λ=0; Λ=π²/15 | Empty sum; Rogers value π²/15 | Equal |
| 2.7 root change/3-primary term | n=9,a=2 | Fourth-power e(5/9); correction e(4/3) | e(10/9+4/3)=e(4/9)=ζ² | Equal; fixed e(−1/3) would fail |
| 2.7 good Chern vs eta domain | n=5,F=ℚ(√5) | gcd(n,disc F)=5; gcd(n,w_F)=1 | Generic good-order test fails; eta cyclic test passes | Distinct interfaces retained |
| 3.1 width-normalized order | w=2,k=3; replace w by 6 | v=3/2; new k=9 | 9/6=3/2 | Equal |
| 3.1 leading coefficient/change of chart | w=2,k=3, shift ℓ=1 | Multiplier e(3/2)=−1 | Order remains 3/2 | Coefficient depends on chart, order does not |
| 3.1 multiplication/cancellation | Germs q²,q⁻¹; q+(−q+q²) | Product order 1; sum order 2 | 2+(−1)=1; minimum alone gives only ≥1 | Equal with cancellation caveat |
| 3.2 radial Laurent formula | σ=((2,1),(5,3)) | σ⁻¹(2/5+iy)=−3/5+i/(25y) | Phase e(−3v/5), scale exp(−2πv/(25y)) | Equal |
| 3.2 sign/growth comparison | σ=S,v=±1 | exp(∓2π/y) | v=−1 requires M≥2π; v=1 decays | Equal; pole/zero signs fixed |
| 4.1 every-root majorant | q=−r, n=1,0<r<1 | ∣1−q∣=1+r | ≥1−r; at r=1/2: 3/2≥1/2 | Correct inequality, including even root |
| 4.2 modular order conversion | y=t/(2π), c=1,v=−λ | exp(4π²λ/t) | exp(Λ/t), Λ=4π²λ | Equal |
| 4.2 modular linear correction | A=2, B=0, C=−1/60 | −1/60−C=0 | Required nonconstant modular power-series coefficient 0 | Equal |
| 4.3 inverse-transformation sign | Λ=4π²λ, ε=dh/(1−ich/(2π)) | Λ/ε=Λ/(dh)−2πiλc/d | Phase e(−λc/d), not e(+λc/d) | Equal |
| 4.3 bounded power | First Rogers–Ramanujan datum; s=120 | C,λ denominator contributions divide 120 | u^120 loses the specified fractional powers | Fixed exponent, not one depending on d |
| 4.3 unbounded good orders | L=6,k=1,2 | Matrices ((1,6),(6,37)), ((1,12),(6,73)); determinants 1 | d=37,73; both coprime to 6 | Equal; no primality theorem needed |
| 4.4 integral divisibility bridge | G=ℤ, element 6; G=ℤ/5, element 1 | Divisible by positive n only n=1,2,3,6; in torsion group by every n≡1 mod5 | First set bounded; second unbounded | Torsion conclusion passes; finite generation matters |
| 4.4 non-finite-generation control | G=ℚ, element 1 | 1=n·(1/n) for every n | 1 has infinite order | Excluded; no finite-generation assertion for algebraic closure |
| 4.4 modularity endpoint | A=2 Rogers–Ramanujan, distinguished x | Complementary regulator π²/15; rational Bloch image torsion→0 | Integral torsion need not itself be zero | Compatible; no converse or all-solutions claim |
| 5.1 plethystic logarithm | F=1; F=(t;q)_∞ | log1=0; −Σt^ℓ/(ℓ(1−q^ℓ)) | L_n=0; L₁=1, higher L_n=0 | Equal |
| 5.1 root expansion residue | F=(t;q)_∞, m=1 | Residue of logF at q=1 is Li₂(t) | Coefficient tⁿ/n² | Equal; sign opposite for reciprocal |
| 5.2 formalExponent | A=3,n=0,1,2; A=−1,n=2 | 0,3,9; −3 | A·n(n+1)/2 | Equal; negative exponents retained |
| 5.2 formal series | A=3,q=2,n=0,1,2 | 1,8,512/3 | (−1)^(3n)2^(3n(n+1)/2)/(2;2)_n | Equal |
| 5.2 q-difference headline | A=3,q=2, degree t | (1−2)·8=−8 | (−2)³·1=−8 | Equal |
| 5.2 coupled column shift | A=((2,1),(1,1)),q=2,j=1,k=(1,1) | (1−2)(−16)=16 | 4·2·2=16 | Equal; diagonal-only shift gives 8 |
| 5.2 general q-difference probes | Three 2×2 matrices used below and A=3; each degree ≤2 | 57 tested operator coefficients | Same 57 recurrence coefficients | Exact equality; includes singular/negative-entry matrices |
| 5.2 inversion | A=3,n=1 | F_A(t,q⁻¹) coefficient=q⁻²/(1−q) | F_(1−A) coefficient=q⁻²/(1−q) | Equal; retain inversion identity |
| 5.3 integral shift ratios | A=0 | R₁=1−t; R₋₁=(1−q⁻¹t)⁻¹ | R₁σR₋₁=1 | Equal |
| 5.3 root orbit | A=0,m=2,q=−1 | (1−t)(1+t)=1−t² | z(t²)=1−t² | Equal |
| 5.3 potential and Euler derivative | A=3 | V=t+5t²/4+28t³/9+… | ΘV=t+5t²/2+28t³/3=log z | Equal |
| 5.3 critical-value formula | A=0,z=1−t | V=−Li₂(t) | ΘV=log(1−t) | Equal |
| 5.3 logarithmic Hessian | A=0,t=1/3,z=2/3 | Θ²V=−t/(1−t)=−1/2 | Λ=−2; Λ⁻¹=−1/2 | Equal; Λ itself is wrong |
| 5.4 finite support | A=0,1,3 | L₁=−1,q,q³; A=3:L₂=q⁷,L₃=q¹⁰+q¹¹+q¹³ | Finite Laurent polynomials | Equal; not merely an infinite product expansion |
| 5.4 mixed plethystic term | A=((2,1),(1,1)), q=2 | c₁₁−c₁₀c₀₁=−16−(−4)(2)=−8 | −L₁₁/(1−q)=−8, L₁₁=−q³ | Equal; independent rank-one model gives 0 |
| 5.4 Dwork identity | F=(t;q)_∞,p=2, degree t | 0−2(−1/(1−q))=2/(1−q) | RHS 2/(1−q) | Equal; at q=1+x residue −2, not a regular series |
| 5.5 restricted Adams coefficients | F=1+t₁t₂,m=2 | L₁₁=−(1−q²), L₂₂=(1−q²)/2 | At q=−1 both 0 | Equal |
| 5.5 enlarged localization | A=0,m=2,k=0; Φ₄ pole | Numerator at q=i is i−1≠0 | Φ₄(−1)=2; allowed at level 2 | README enlargement necessary |
| 5.5 congruence initial condition | m=2,k=1,H=t+… | (1−σ)(1−q⁻¹σ)t=0 | Initial RHS has higher degree | Equal |
| 5.5 order-m sign | A=1,m=3 and 2 | (−1)^3=−1; (−1)^2=+1 | Printed m(m+1)/2 sign at m=3 is +1 | Corrected sign retained |
| 5.6 weighted Gaussian completion | ⟨w²⟩, ⟨w⁶/h²⟩, Λ=1 | h; 15h | Weights 1 and 1 | Finite contractions at each weight |
| 5.6 affine-shift domain | F=Σwⁿ, w→w+1 | Constant coefficient partial sums 1,2,3,… | No formal limit; w→w+h instead gives 1,3/2,29/8 in identity | R02 |
| 5.6 Fubini block condition | Λ=((0,1),(1,0)) | detΛ=−1; first block A=0 | Whole integral exists; A⁻¹ does not | Iterated formula correctly excluded |
| 5.6 Pochhammer subtraction | m=2, expand Li₂(Z e^(2w))/(4h) | Linear Li₁(Z)w/(2h); quadratic Li₀(Z)w²/(2h) | Denominators m and 2, not both m² | Correct README remainder |
| 5.6 positive weight vs x ideal | Cubic term w³/h | Weight 1/2>0 | h-adic exponent −1, not in x times whole completion | README correctly permits it |
| 5.6 normalization/root term | A=0,m=2 | Normalized root factor starts 1−T/2+… | (1+T)⁻¹/²=1−T/2+…; reversed power gives +T/2 | Correct sign |
| 5.7 coefficient algebra | N=0 | ℤ[T]/(T²−1) | After 2: two factors, T=(1,−1); derivative at p=2 is 0 | Full algebra and exclusion retained |
| 5.7 Kummer étaleness | w^m=z, p=5,m=3 and 5 | Derivative 3w² a unit; 5w⁴=0 mod5 | First étale, second not | Correct p∤m restriction |
| 5.7 WKB sign | A=1 | Unsigned z₀=(1+t)⁻¹=1−t+… | Signed z=(1−t)⁻¹=1+t+… | Change of variables necessary |
| 5.7 WKB Euler derivation | A=0, X=−t/(1−t) | ΘX=−t/(1−t)² | X(1−X)=−t/(1−t)² | Equal |
| 5.7 WKB polynomial | A=3 | z₀=1−t+3t²−12t³; X=−t+5t²−28t³ | b₁=3X² | Correct first coefficient and sign |
| 6.1 saturation/iteration | Identity ℤ₅→ℤ₅, a=25 | v₅(a)=2 | Image valuation 2 | Equal |
| 6.1 necessity of p regularity | ℤ→𝔽₂,p=2,a=2 | Reduction map is 2-saturated; image(a)=0∈4𝔽₂ | 2∉4ℤ | Higher transfer excluded without regularity |
| 6.1 full determinant algebra | A=5,p=5 | δ=z⁻⁴, T=±z²; δT²=1 | T−z² evaluates 0 and −2z² | One branch is not faithful |
| 6.1 Frobenius base square | t→2,p=5; t→1 | 2⁵−2=30≠0 in ℤ₅; 1⁵−1=0 | Only second commutes with specified base Frobenius | Correct naturality restriction |
| 6.2 first jet, cubic contraction | C=T₃=1, others 0 | ⟨w⁶/(72h²)⟩=15h/72 | Jet=1/8+1/12=5/24 | Equal |
| 6.2 mixed first jet | C=b=T₃=1, others 0 | 1/2+1/2+15/72=29/24 | Jet=29/24; omit mixed term→17/24 | Equal |
| 6.2 quartic/linear/empty jet | U₄=C=1; b=C=1; N=0 | 3/24=1/8; 1/2; c | Jet=1/8,1/2,c | Equal |
| 6.2 refined denominator units | p=5,m=2, root ζ=−1 | 1−ζ=2 a unit; (1−w)(1+w)=1−z | Required 1−z is a unit | Both conjugate factors units; m=p case excluded |
| 6.3 local regulator contract | L=ℚ₅; L=0 | Image lattice 25ℤ₅; 0 | Supplier §§5.7–5.9 gives same | R01: cite supplied input |
| 6.3 modified potential sign | At t=1, log(1−z)=A log z | −Li₂(1−z)−A(log z)²/2 | Li₂(z)+log z log(1−z)/2 | Equal by reflection; positive regulator sign |
| 6.3 intrinsic W_p boundary | η=0, hence β=0 | W_p=pΣℓ₂(y) | All remaining displayed terms 0 | Equal; negative leading sign would fail |
| 6.4 specialization | t=1; attempted z=0 | Base square 1^p=1 | Unit z cannot map to 0 in a nonzero target | Valid finite-presentation map, invalid zero coordinate |
| 6.4 determinant orientation | Split B and involution T→−T | Full collection leading components (a,−a) | Diagonal (a,a) has wrong involution law for a≠0 | Both components retained |
| 6.4 constant cancellation | Two refined leading constants 1 and −1 | Sum 0 | Neither individual constant is 0 | Membership does not imply generator/nonvanishing |
| 6.5 powered/unpowered products | γ=2,q=2,F⁺=t,F⁻=1,μ=(1,1) | Ψ=16t⁴; P=16t² | Reversed operator composition gives 256t⁴ | Equal to stated order of operations |
| 6.5 signed shifts | γ=1,q=2,F⁺=1,F⁻=t,ν=1 | t/2 | F⁻(q⁻¹t)=t/2 | Equal |
| 6.5 uniqueness hypothesis | q=(2,1) in K×K | q−1=(1,0); (q−1)(0,1)=0 | Nonzero but not regular | Incorrect nonvanishing-only variant excluded |
| 6.5 principal-part cancellation | A=0,γ=2 | Ψ pole numerator −Li₂(t²)+Li₂(t), coefficient t=1 | P numerator −Li₂(t)+Li₂(t)=0 | Only P used for gluing |
| 6.5 invert γ | A=0,γ=5,m=1 | t coefficient 3−2x+x²+x³/5+… | x³ valuation at 5 is −1 | Need 1/5; README includes it |
| 6.5 all-order descent/edge | p=5,m=5,γ=1 | 1/5∈C₅[1/5], v₅=−1; families 1→0 give 1≠0 | C₅ excludes 1/5; gluing requires 1=φ₅(1) | Correct integral-before-localization requirement |
| 6.6 descendant curve | m=2,ν=1,q=−1+x | t=q²=1−2x+x² | t^(1/2)=q; naive t=q starts at −1 | Equal; correct base point |
| 6.6 inverse/zero descendants | m=1,ν=−1 and 0 | 1−x+x²−…; 1 | Full prefactor t has derivatives −1;0 | Varying prefactors retained |
| 6.6 torsion powers | Class ξ of order 3, n=3 | nξ=0 | Tensor cube has index 0 | Correct on specified orders; no automatic new prime edges |
| 6.6 converse nonzero condition | f=0, arbitrary n>0 | f^n=0 belongs to every ring | No nonzero Kummer constant | Explicitly excluded |
| 7.1 generalized binomial | (r,k)=(−1,1),(0,1),(0,0) | −q⁻¹,0,1 | Quotient definition yields same | Negative upper index not truncated |
| 7.1 symmetric-parameter conversion | r=−1,k=1,q=v² | Standard coefficient −v⁻² | v^(−2)·symmetric coefficient(−1) | Equal |
| 7.1 product headline, singular coupling | A=((0,1),(1,0)),q=2, k=(1,0),(1,1),(2,2) | 1,0,0 | q-binomial formula 1,0,0 | Exact equality |
| 7.1 product headline, positive coupling | A=((2,1),(1,1)),q=2,k=(1,0),(1,1),(2,2) | −7/2,−45/4,93345/128 | Same values from q-binomial formula | Exact equality |
| 7.1 product headline, negative entries | A=((-1,2),(2,−3)),q=2,k=(1,1),(2,1),(2,2) | 31/4,−49/4,0 | Same values from q-binomial formula | Exact equality |
| 7.1 product headline, rank one | A=3,q=2,k=0,1,2 | 1,31/4,10795/64 | Same values from q-binomial formula | Exact equality; 30 coefficients checked over four matrices |
| 7.1 residue sign | A=0,m=1 | Unnormalized residue −1/(1−t) | Corrected prefactor gives +1/(1−t)=δ⁻¹ | Sign retained |
| 7.1 root residue normalization | A=0,m=2,T=3/5,t=9/25 | Product 1/(1−T)=5/2 | Correct finite root sum 5/2 | T and Jacobian factors necessary |
| 7.2 cubic discriminant/inverse | z³−z+1=0 | disc=−23; (−z²−z−2)(2z²+3z−9)/23=1 | Unsigned discriminant −31; expected inverse product 1 | Exact quotient reduction |
| 7.2 cubic product at roots | k=1: q⁻²+q⁻¹+1+q+q² | q=1:5; q=−1:1 | Same finite evaluations | Equal |
| 7.2 corrected cubic numerator | m=2,T²=t | (z⁻¹+T)/δ=1+T+4T²+5T³+… | Printed (1+T)/δ gives T² coefficient 5 | README correction valid |
| 7.2 cubic DT/product | s₁,s₂,s₃=1,1,3 | ∏(1−tⁿ)^(−ns_n)=1+t+3t²+12t³+… | z=1+tz³ gives same | Equal; finite check not positivity proof for all n |
| 7.2 small-prime scope | First coefficients denominators powers of 23 | v₂,v₃ of those denominators 0 | No value supplied for arbitrary order/degree | Only finite evidence; all-order local targets retained |
| 7.3 quartic equations | Mod u⁴+u³+3u²−3u−1, specified v | Remainders of both Nahm equations 0 | Expected (0,0) | Exact rational polynomial reduction |
| 7.3 quartic δ inverse | Same quotient | δδ⁻¹ remainder 1 | Expected 1; det A=7 is a different element | Exact equality |
| 7.3 quartic coordinate norms | u,v,1−u,1−v,δ | −1,1,1,−1,9025 | Stated unit norms and 5²19² | Exact determinants |
| 7.3 integral basis candidate | e=(u³−u²+2)/5 | e²−3e+1=0; Gram determinant −475 | Polynomial discriminant −11875; ratio 25 | Index 5; maximality remains separately required |
| 7.3 analytic/formal normalization | A diagonal entries 8,4; shift (−4,−2) | Linear formal contribution 4n₁+2n₂ cancels | Zero-B analytic exponent nᵀAn/2 | Equal; canonical unshifted series differs |
| 7.3 change h→x | h=log(1+x) | h=x−x²/2+x³/3; h²=x²−x³ | a₂=c₂−c₁/2, a₃=c₃−c₂+c₁/3 | Equal |
| 7.3 torsion/rank endpoints | Proposed 60ξ=0; eight descendants | Relation would give tensor index 0; rank witness must have rank 8 | Regulator zero alone also holds for the zero class; ≤8 alone allows rank 0 | Explicit relation and independence targets necessary, retained |
| 7.4 figure-eight coordinates | z=(1+i√3)/2, s=2z−1 | z²−z+1=0; δ=−s, norm 3 | det A=0 does not imply δ=0 | Nondegenerate formal solution |
| 7.4 determinant root | r²=s, T=i/r | δT²=(−s)(−1/s)=1 | δ(1/r)²=−1 | Correct embedding retained |
| 7.4 canonical/knot first jet | a=−1/24−11s/216 | a+1/24=−11s/216 | Knot coefficient 11/(72s)=−11s/216 | Equal; scalar and q-factor both matter |
| 7.4 q-inverted product | Canonical a,b; knot a_g,b_g | 2b−a²=−1/27; 2b_g−a_g²=−1/27 | Same relative coefficient, leading scalars opposite | Equal |
| 7.4 completed Pochhammer transport | z=(1+s)/2,s²=−3 | 11s/216−1/24+Li₀(z²)/4=−1/6+5s/54 | (5z−7)/27=−1/6+5s/54 | Equal; omit conjugation→−1/6−s/108 |
| 7.4 polar/constant-log cancellation | Completed transport times Pochhammer cube | −3Li₂(z²)/h+3Li₂(z²)/h=0 | Constant after log cancellation=1 | Equal |
| 7.4 cubic-pair scalar | α³−α²+1=0 | Actual denominator square=392−532α+284α² | Printed simplified denominator square=26−32α+24α² | Unequal; README retains both square roots |
| 7.5 simple-root/Hensel scope | P=X²−1 at 1 modulo 5 and 2 | Derivative 2 unit at 5; 0 at 2 | Simple-root theorem applies only first | Correct general-ring hypotheses |
| 7.5 Gauss norm headline | m=1,2,3,4 | Gauss sums 1,0,i√3,2+2i | Norms/m=1,0,1,2 | Equal to rationalGaussTaylor |
| 7.5 additional Gauss orders | m=5,6,8 | Norms/m=1,0,2 | Formula 1,0,2 | Equal |
| 7.5 totalized m=0 control | Empty Gauss sum, division by 0 in Lean | RHS=0 | rationalGaussTaylor(0)=2 | m>0 hypothesis correctly excludes false equality |
| 7.5 square companion | m=1,2,3,4 | iG_m²/m=i,0,−i,−2 | Printed polynomial gives i,0,−i,+2 | README correction valid |
| 7.5 odd-prime gluing | m=1→3 and m=2→6 | Norm family 1→1; 0→0 | Companion i→−i=φ₃(i) | Correct Frobenius; p=2 edge 1→0 fails |
| 7.5 Rogers–Ramanujan scalar relation | F=(−5±√5)/10 | −5F²−5F=1 | F=0 or −1 gives 0 | Both branches/order domains distinguished |
| 7.6 degree-zero export | Rational Gauss family at orders 1,2,4 | Values 1,0,2 | Difference from unit 0,−1,1; q=1 completion 0 | Global class is not its q=1 completion |
| 7.6 scalar extension/Picard direction | R→R×R, trivial line | Extended ranks (1,1) | Restriction has R-rank 2 | Correct pullback; not restriction |
| 7.6 completed trivialization | Bases 1 and 1+h | Both reduce to 1 modulo h | Distinct bases, ratio unit 1+h | No uniqueness inferred from trivial Picard class |
| 7.7 analytic-radius condition | Σp^(−n)Xⁿ | Radius p⁻¹; at ∣X∣=p⁻¹ terms have norm 1 | Positive radius but not whole open unit disc | Stronger H(V) hypothesis retained |
| 7.7 cohomological degree | Empty frame N=0; one top differential N=1 | Degree 0; degree 1 | Scalar export does not supply a degree-1 geometric form | Separate geometric comparison retained |

The table has 163 rows. The exact coefficient probes include all 30 symmetrisation coefficients with each coordinate ≤2 for the four displayed matrices, and all 57 corresponding q-difference coefficients. The quartic reductions, five norms, basis relation and Gram determinant were recomputed with rational polynomial arithmetic. The Gaussian first-jet numbers use the actual pairings, rather than matching the printed expression by definition.

## Not verifiable

- No cited text was inaccessible: all ten recorded works were available in the legal source cache. No new reference request or manifest edit was needed. R03 is a locator mismatch within readable sources, not a paywall problem.
- The source passages do not themselves prove the strengthened full-component integrality, mixed Gaussian regularity or all-order descent obligations that this README explicitly adds to repair the source arguments. The review checked their domains, counterexamples to the shortcuts and separation from their consumers; it does not certify new proofs of those research targets.
- No exact integral 60-torsion relation, eight-descendant independence witness, or all-order small-prime cubic certificate is supplied by the finite example data. They remain named construction/proof targets, as the README says. The displayed finite arithmetic and the distinction between those finite checks and the endpoints were checked.
- Higher analytic Habiro comparison remains the declared geometric supplier contract, with its radius and degree requirements. The algebraic degree-zero comparison does not establish it. Acceptance after repairs would still be conditional on the remaining declared supplier contracts, not on an unproved equivalence being silently available.

## Source issues

These are errors in the versions actually inspected; most are already corrected or isolated as additional obligations in this README. They are not extra findings against this pull request.

- **Error** in GZ at Proposition 2.2, (10)–(11), printed p.4 (GZ line 188): the source says the saddle uses a full quadratic coefficient, positive B term and multiplicative logarithmic remainders; it should be a half quadratic, negative B term, exponential remainders and the Euler correction; affects the proof.
- **Misprint** in GZ at the discussion after (14), printed p.4 (GZ line 239): the source says coefficient valuations tend to zero; it should be valuations tend to infinity for this filtered summation; affects the proof.
- **Error** in GZ at Theorem 3.1, (18), printed p.5: the source says the volume factor is m^(N/2); it should be m^(−N/2) with the stated residue lattice and Gaussian normalization; affects a stated result.
- **Error** in GZ at Theorem 3.1, the phase preceding (18), printed p.5: the source says the displayed binomial phase gives the required Euler phase for every primitive root; it should be the Dedekind phase, or an explicit compensating rescaling of the coefficient series; affects a stated result.
- **Misprint** in GZ at §4.1, the r=1 calculation, printed p.6 (GZ line 385): the source says the logarithmic expansion contains D_ζ(w)/m; it should be log D_ζ(w)/m; affects the proof.
- **Error** in GZ at §4.3 opening, printed p.8 (GZ line 446): the source says fixing congruence classes makes summands positive real; it should be Euler denominators still carry complex phases, so tail estimates must use absolute values; affects the proof.
- **Error** in GZ at (30), printed p.8 (GZ line 482): the source says summing all D-residue subsums gives 1/D times the full m-class sum; it should be their sum equals the full class exactly; individual refined classes have asymptotic density D^(−N); affects the proof.
- **Error** in GZ at Claim 4, (34), printed p.9 (GZ line 559): the source says the density is (mε)^(−N/2), with different quadratic factors on the two sides; it should be m^(−N)ε^(−N/2) and the same half-quadratic Gaussian on both sides; affects the proof.
- **Misprint** in GZ at the Poisson discussion before (35), printed p.10 (GZ line 571): the source says faster-than-polynomial decay is expressed using positive powers of ∣x∣; it should be negative powers, with suitable derivative decay for the stated Fourier argument; affects the proof.
- **Error** in GZ at the Poisson discussion after (36), printed p.10 (GZ line 586): the source says smooth rapid decay gives exponentially small nonzero Fourier contributions; it should be Schwartz estimates give errors smaller than every power; polynomial Gaussians supply the stronger bounds used here; affects the proof.
- **Error** in CGZ at Theorem 7.5 proof, printed p.40 (CGZ lines 1949–1950): the source says the inverse-transformation constant has positive λ phase and drops prefactors from the compared expansion; it should be negative λ phase, retaining determinant normalization and the C phase; affects the proof.
- **Error** in GSWZ at (67), printed p.21 (GSWZ line 937): the source says the first L_n(1) contribution has coefficient −(m−1)/(2m); it should be +(m−1)/(2m) in this normalization; affects a stated result.
- **Misprint** in GSWZ at (70), printed p.21 (GSWZ line 973): the source says the residue equals V(t^m)/m²; it should be ζ_m V(t^m)/m²; affects the proof.
- **Error** in GSWZ at (89), printed p.25: the source says the multivariate shift can be expressed using only the single-coordinate ratio; it should be the ratio for the entire matrix column, including off-diagonal entries; affects the proof.
- **Error** in GSWZ at Definition 2.8/(93) and Theorem 7, printed pp.26–27 (GSWZ line 1242): the source says the stated congruence sums satisfy a localization excluding every Φ_d with m dividing d; it should be enlarged to admit the additional m-smooth quotient factors; A=0,m=2 forces Φ₄; affects a stated result.
- **Error** in GSWZ at (114), printed p.29 (GSWZ lines 1486–1488): the source says both linear and quadratic subtractions have denominator m² and the remainder lies in 1+x times the completion; it should be denominators m and 2, the opposite constant-log subtraction, and positive weighted order allowing w³/h; affects a stated result.
- **Error** in GSWZ at (132)–(135), printed pp.31–32 (GSWZ line 1639): the source says the dilogarithm contribution to the Frobenius potential defect has the displayed positive sign; it should be computed from the negative Li₂ critical potential, giving pΣℓ₂ when η=0; affects the proof.
- **Error** in GSWZ at (139), (165)–(166), printed pp.32,35–36 (GSWZ line 1867): the source says the order-m sign is (−1)^(Am(m+1)/2); it should be (−1)^(Am), with the corresponding initial-residue factors retained; affects a stated result.
- **Gap** in GSWZ at Theorem 8 proof, printed p.36 (GSWZ lines 1875–1878): the source says a determinant-order observation gives regularity and the multivariate proof is identical; it should be a coefficientwise mixed-contraction regularity argument on the specified completion; affects the proof.
- **Error** in GSWZ at (169), printed p.36: the source says the Hessian identification uses Λ in the displayed coordinate interpretation; it should be Θ_iΘ_jV=(Λ⁻¹)_ij for logarithmic t derivatives; affects the proof.
- **Gap** in GSWZ at the proof of (170), printed pp.36–37 (GSWZ lines 1904–1920): the source says the chosen formal branch detects coefficient integrality in the full square-root algebra; it should be jointly faithful reduction on all components, or an intrinsic full-algebra integrality proof; affects the proof.
- **Error** in GSWZ at (213), printed pp.43–44 (GSWZ lines 2235–2237): the source says the shifted product satisfies differences without parameter factors and the displayed covariance; it should be the shift-dependent q factors and covariance appropriate to the powered or unpowered product; affects the proof.
- **Gap** in GSWZ at Theorem 5 proof after (214), printed p.44: the source says formal q-difference uniqueness completes integral gluing; it should be preceded by integral coefficient descent and convergent reexpansion at all required prime edges, including p-divisible orders; affects the proof.
- **Error** in GSWZ at the unrestricted scalar product condition used in Theorem 5, printed pp.43–44: the source says the auxiliary γ-product has the asserted integrality without the necessary γ localization; it should be over coefficients with γ inverted; A=0,γ=5 has coefficient x³/5 at t-degree one; affects a stated result.
- **Error** in GSWZ at (216), (218)–(220), printed pp.45–46: the source says the ambient localization and unweighted residue give the stated product normalization; it should be the larger factor localization and the sign, monomial, root and q^(−c_A) factors tracked in §7.1; affects a stated result.
- **Error** in GW at (182), printed p.31 (GW line 1602): the source says the displayed finite numerator suffices for the cubic root expansion; it should be (z⁻¹+T)/δ at m=2, rather than (1+T)/δ; affects the proof.
- **Error** in GSWZ at (280), printed p.56 (GSWZ line 2780): the source says the product of the two determinant square roots has the displayed simplified reciprocal; it should be the original two-root product, whose squared denominator is 392−532α+284α²; affects a stated result.
- **Error** in GSWZ at (290), printed p.57 (GSWZ lines 2849–2863): the source says iG_m²/m equals +2 when four divides m; it should be −2; already G₄=2+2i distinguishes them; affects a stated result.
