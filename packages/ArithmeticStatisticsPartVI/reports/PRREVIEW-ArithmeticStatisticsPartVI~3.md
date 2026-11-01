# Review of ArithmeticStatisticsPartVI (pull request #1176 at d854ec8)

**Verdict:** needs changes

🤖 Independent AI review. One blocking supplier/general-library finding and two P3 notes. No pull-request files were changed.

**Previous findings, checked first.** All five findings of the review at d8b9a95 are repaired:

- Previous R01: repaired. `TauCetiRoadmap/ArithmeticStatisticsPartVI/README.md:16` now says “are hypotheses of every analytic, parity and full-family rank target here”; line 17 assigns existence to EllipticCurveModularity. Lines 2316–2328 own twist transport, not modularity lifting. `Suggested.lean:35`–45 explains the conditional headlines' missing comparison carriers. This implements the previous review's expressly offered conditional alternative.
- Previous R02: repaired. `README.md:2193` gives “density(F₃)>966797/1000000” and “density(F₄)>32603/1000000”; the product estimate gives 0.5500527269209383, exceeding 0.55005. `README.md:2211` uses 177/200. At density 0.55005 the mixture is 176997/200000 = 0.884985 < 0.885. The other two constants survive as recorded below.
- Previous R03: repaired. `README.md:60` imports “the soluble-orbit bijection, the stabilizer comparison, localization of coverings, the Selmer-orbit bijection, integral representatives and the invariant comparison” in prose. These six items occur in Part II's Supporting descent and integral realization; the obsolete `GenusOneModel.*` names are gone.
- Previous R04: repaired. `README.md:61` links to the enclosing “Quartics of points and two-descent”, “Integral two-covering representatives”, “Symmetric pencils and Jacobian torsors” and related headings. All 213 cross-folder heading-link occurrences resolve against the supplying files read this round.
- Previous R05: repaired. `README.md:2498`–2548 supplies References 115–127; “Uniform cubic Thue bound” at 2288 and “P-adic change of variables on the nonsingular locus” at 2302 are separate targets. The hyperelliptic import contract is at 53. R02 below concerns the mathematical identity of one cited library input, not the repaired heading split.

## R01 (P1) — Own the nearby local Kummer comparison instead of importing it from Néron-model existence

**Location:** `TauCetiRoadmap/ArithmeticStatisticsPartVI/README.md:1878`: “Import the local point-group comparison (good reduction suffices for this application)”; its supplier is NeronModelsAndSemistableAbelianVarieties §1.7 at line 1880. Line 1876 restricts the comparison to good ordinary curves over Q₅.

**Claim:** The supplier provides identifications of E′(Q₅)/5E′(Q₅) with E(Q₅)/5E(Q₅), preserving the actual rational-torsion images, as coefficients vary in a sufficiently small disc.

**Witness:** `TauCetiRoadmap/NeronModelsAndSemistableAbelianVarieties/README.md:893`–934 constructs a Néron model of one abelian variety; it states no nearby-curve comparison. `bs-rank-one line 441` instead states that comparison for every prime p≥5, every prime ℓ and every elliptic E/Qℓ.

**Why it matters:** Néron existence does not supply the missing identifications or their compatibility with torsion. The quinary orbit labels and the exclusion of bad Selmer lines use precisely those identifications. No matching supplier target was found in the object searches. There is no declared gap. Moreover, limiting the foundational comparison to the good ordinary Q₅ application loses the source's bad-reduction and ℓ≠p cases, contrary to the general-library contract.

**Exact repair:** Make the full Proposition 11 comparison an explicit target here: p≥5 and ℓ arbitrary primes, any nonsingular Weierstrass E/Qℓ, sufficiently close coefficients, an isomorphism of the quotients compatible with nearby points and carrying the images of rational p-torsion onto each other. Cite Néron §1.7 only for model existence. Use EllipticCurves Layer 4's formal/reduction groups and Tate uniformization for the reduction cases, and state the division-polynomial root comparison needed to preserve torsion. Keep the good ordinary Q₅/quinary compatibility as its subsequent specialization (Proposition 12). Alternatively, cite an earlier supplier that actually states this complete comparison, if one is added and precisely identified.

**Repair test:** The split Tate curve with parameter q=11⁵ over Q₁₁ and p=5 has quotient `(Z/5)²`, of order 25; its rational-five-torsion image is the whole quotient. For q′=11⁵(1+11ʰ), h≥1, the unit multiplier is a fifth power, so both orders stay 25. This source-covered bad-reduction, ℓ≠p example is excluded by the present target and must be covered by the repaired comparison. EllipticCurves `README.md:885`–901 explicitly supplies the point-level Tate uniformization used in this test.

## R02 (P3) — Cite the actual inverse-function API

**Location:** `TauCetiRoadmap/ArithmeticStatisticsPartVI/README.md:2306`: “`hensels_lemma` (the p-adic inverse function theorem for polynomial maps)”.

**Claim:** The named Mathlib theorem is the several-variable inverse-function input for the nonsingular coefficient-to-invariant map.

**Witness:** `Mathlib/NumberTheory/Padics/Hensel.lean:459` gives a root of one polynomial in Zₚ under a derivative-norm inequality. `Mathlib/Analysis/Calculus/InverseFunctionTheorem/FDeriv.lean:117` defines `HasStrictFDerivAt.toOpenPartialHomeomorph` over a nontrivially normed field with complete domain.

**Exact repair:** Cite the latter API (and the surjective-derivative neighborhood theorem in the same file) for polynomial local charts over Qₚ, retaining its strict derivative, invertibility/surjectivity and completeness hypotheses. Keep the Jacobian/Haar change-of-variables and null-preimage assertions as the new targets here. Reserve `hensels_lemma` for the one-variable root-lifting steps.

**Repair test:** Over Q₂, squaring maps `1+4Z₂` bijectively to `1+8Z₂`; source and image masses are 1/4 and 1/8, with determinant absolute value |2|₂=1/2. A topological inverse alone does not establish that measure factor.

## R03 (P3) — Give the cubic evaluator its own discriminating API and Checks

**Location:** `TauCetiRoadmap/ArithmeticStatisticsPartVI/README.md:2013`: “Use `ternaryCubicValue` for evaluation in the stated monomial basis”; `Suggested.lean:121` defines the evaluator.

**Claim:** The evaluator is a simple necessary definition, but its README section's three Checks test density denominators and height scaling, not evaluation or monomial order.

**Witness:** Swapping the `xyz` and `xz²` coefficient positions preserves all three Checks at `README.md:2019`–2025. With only coefficient 4 equal to one, evaluation at (1,2,3) changes from 6 to 9.

**Exact repair:** Add a prose API for evaluation, additivity in coefficients and cubic homogeneity, and at least three evaluator Checks. For basis coefficient vectors e₀,e₄,e₉, use `e₀(2,0,0)=8`, `e₄(1,2,3)=6`, `e₉(0,0,2)=8`; also record evaluation at the zero vector as zero and explain its exclusion from projective solubility. Keep these in the README, without padding `Suggested.lean`.

## Verified sound

The following are verification results and finite-instance tests, not a claim that a `sorry` build proves the mathematics. Read the full 2548-line README and 278-line Lean file, the normative repository README and CONTRIBUTING, the previous review, change set, PR description and gate. Read main-branch EllipticCurves and MassFormula as shape/ownership examples. The head is exactly d854ec8273dcf07d4e5e337f85e64c86b8dbd4dc; the initial and final worktree checks are clean, and the diff outside this roadmap folder is empty.

**Gate and direction.** The worker's gate reports every scanner, dependency check and targeted build passing. The independent dependency run printed:

```text
depcheck: 205 roadmaps, 1473 edges, 0 problem(s)
```

No UPWARD or CYCLE line. All `*Needs:*` lines were read. In particular, modularity is an explicitly unconsumed later owner; the local two-descent and hyperelliptic mass imports point backward. R01 concerns the contents of a supplier section, which a direction check cannot detect. There is no declared-gap contract to excuse that import. No copied source passage, computational algorithm, sorry'd data, forbidden import, `set_option`, or out-of-folder PR edit was found.

**Lean.** Built `TauCeti.AlgebraicGeometry.EllipticCurve.MordellWeil.SelmerGroup`, then elaborated the absolute acceptance-file path from the pinned worktree. The build succeeded and elaboration produced exactly ten `declaration uses sorry` warnings, no other warnings or errors. A scratch copy with `#check @name` for all 25 declarations (15 definitions, ten theorems) elaborated. All explicit family, primality, genus, finite-extension and positivity binders were retained; no signature changed. Every admitted theorem was tested on a scratch copy with closing `rfl`, `infer_instance` and `simp` branches; all ten still required `sorry`. Reading the relevant pinned APIs found no single library theorem that closes one of these statistical headlines. No Lean padding was found.

**Headline coverage.** The README's endpoints are the two-Selmer mean 3, means 4/7/6 for three/four/five-Selmer, upper second moment 15, marked mean ≤6, nonlifting average ≥3/5, rank bounds 3/2, 7/6 and 21/20 with low-rank proportion 19/24; conditional root-balanced refinements 177/200, 67/80 and 1031/5000; hyperelliptic upper Selmer-set mean 2, order-k bounds and genus limits, parity, empty Selmer sets, index two and nontrivial Sha; conditional simultaneous rank one, analytic rank-zero/weak-BSD consequences, and positive plane-cubic solubility from a positive-rank count. The ten statable coefficient/point-group headlines appear in Lean. The module docstring names the missing higher-Selmer/map, Sha, unpointed Jacobian torsor, root-number and modular-comparison carriers for the others. The finite-congruence and acceptable infinite-family second-moment hypotheses are retained. The plane-cubic hypothesis is a real positive-rank count on elliptic curves, not an arbitrary proposition. The conditional full-family bound omission follows the previous repair option, not a new demand to weaken an unconditional statable theorem.

**Pinned objects opened.** Paths below are relative to their respective pinned libraries. The native definition's limitations matter: `selmerGroup₂` intersects the norm kernel with every finite-completion image and the specified additional local images; it does not by its definition assert finiteness. `ProjGenLinGroup` is GL modulo its center, not the rational points of an arbitrary quotient group scheme. `rightRel` uses Γg; `Nat.card` and subgroup indices can be zero for infinite objects.

| Pinned file and line | Declaration/contract checked |
|---|---|
| `TauCeti/AlgebraicGeometry/EllipticCurve/MordellWeil/SelmerGroup.lean:104` | `selmerGroup₂`, including all height-one primes; Lean adds the real completion. |
| Same file, 119, 128, 142 | `range_μ_le_selmerGroup₂`, `card_range_μ` with finite generation, and `pow_rank_le_card_of_range_μ_le` with finiteness of the containing subgroup. |
| `TauCeti/GroupTheory/Index/NSmul.lean:142` | finite-index subgroup index/kernel identity, including its additive translation. |
| `TauCeti/AlgebraicGeometry/EllipticCurve/Affine/FinitePoint.lean:53` | `WeierstrassCurve.Affine.finite_point`: finite commutative coefficient ring suffices, no smoothness assertion is hidden in this instance. |
| `Mathlib/GroupTheory/Coset/Defs.lean:106` | `QuotientGroup.rightRel`, relation characterized by `y*x⁻¹ ∈ Γ`. |
| `Mathlib/GroupTheory/GroupAction/Defs.lean:515` | native stabilizer subgroup. |
| `Mathlib/GroupTheory/GroupAction/Quotient.lean:184` | orbit-stabilizer with finite group/orbit/stabilizer. |
| `Mathlib/GroupTheory/Index.lean:285` and 293 | `index_ker`, `card_mul_index`; infinite-cardinality junk values are not positivity claims. |
| `Mathlib/LinearAlgebra/Matrix/GeneralLinearGroup/Projective.lean:41` | `Matrix.ProjGenLinGroup`. |
| `Mathlib/LinearAlgebra/Matrix/GeneralLinearGroup/Card.lean:120` | `Matrix.card_GL_field`, finite-field product formula. |
| `Mathlib/FieldTheory/Perfect.lean:327` | `PerfectField.separable_iff_squarefree`, with perfect-field context. |
| `Mathlib/RingTheory/Polynomial/Resultant/Basic.lean:913` and 978 | resultant vanishing includes the nonzero-polynomial disjunction; resultant/derivative identity requires positive degree. |
| `Mathlib/RingTheory/Polynomial/RationalRoot.lean:114` | monic integral-root theorem over the supplied UFD/fraction-field setup. |
| `Mathlib/Algebra/CubicDiscriminant.lean:465` | discriminant product requires nonzero leading coefficient and the specified three roots. |
| `Mathlib/NumberTheory/EulerProduct/DirichletLSeries.lean:98` | zeta Euler product requires real part >1. |
| `Mathlib/NumberTheory/LSeries/HurwitzZetaValues.lean:226` | `riemannZeta_two = π²/6`. |
| `Mathlib/NumberTheory/Chebyshev.lean:796` | eventual prime-counting estimate, not a finite-cutoff numerical certificate; repaired tail uses the elementary 1/L estimate. |
| `Mathlib/NumberTheory/Padics/Hensel.lean:459`; `Mathlib/Analysis/Calculus/InverseFunctionTheorem/FDeriv.lean:117` | root lifting versus local inverse charts: R02. |

**Ownership and supplier resolution.** Used the roadmap `grep`, `show` and `resolve` tools, object searches at the pins, main and board packages, and the supplied open-head files. The resolver reported no missing roadmap/name references; its library results were not treated as a substitute for reading the pins. Searches for geometric sieves, coefficient tails, local Kummer comparisons, Selmer self-duality and regulator constants were checked against their hits. No duplicate fully qualified Lean declaration was found.

- Part I §§0.1–0.4, 0.9, 0.12 and 0.14 supplies family/counting conventions, invariant height, quartics, squarefree counts and coefficient boxes. Part II §§1.6–1.7, 1.12, 1.14, 1.16 and Supporting descent and integral realization supplies the six covering/dictionary items; its §1.6 starts at `README.md:867`, and the support section's six-item contract is at 2061. Part III §§2.3, 2.5, 2.7, 2.17–2.21 supplies the required orbit counts; Part V supplies the totally ramified cubic-field tail. All 213 explicit cross-folder anchors resolve, including AnalyticNumberTheoryPartII §§5.4–5.7.
- `ReductiveGroupsPartII/README.md:6213` supplies split hyperspecial Cartan decomposition and line 6662 its rank-one indices. `AdelicAlgebraicGroups/README.md:3073` supplies GLₙ finite class number one over Q and the integral intersection. The PGL₂ transport here is additional work, not a second Cartan theorem.
- `HeightsRationalPointsAndObstructions/README.md:829` supplies local doubling; §§3.18–3.18c at 1835, 1849, 1869 and 1895 supply the divisor obstruction, pencil transport, coefficient sieve, local masses, Tamagawa 2 and finite four-twist parity. The present number-field lattice sieve adds prime ideals and coordinate height to the Z-coefficient theorem; it does not merely rename it. The isogeny Q/Euler formula is imported, with only period/local-factor comparison owned here.
- `SchemeAndStackFoundations/README.md:4905` and 4937 supplies unpointed Picard/Abel and Brauer-obstruction statements. `SelmerIwasawaCohomology/README.md:675` supplies Kummer/Sha interfaces; §4.29 at 2508 contains the general Cassels–Tate pairing and reduced-primary conclusions despite its narrower section title. ArithmeticGaloisDuality D7.6–D7.7, AbelianSchemesAndArithmeticModuli A3 and Néron reduction/monodromy sections supply the corresponding inputs. The defect is specifically Néron §1.7's alleged varying-curve comparison, not those other contracts.
- ArithmeticGaloisRepresentations §§1.7–1.9/2.1–2.3, ModularSymbolsPadicLFunctions §§1.1/1.3/2.5, ShimuraVarieties §§8.1–8.5/8.18–8.19, GL2AutomorphicRepresentationsAndTransfer R17.3.1/R17.3.10 and SmallRamificationAndAbelianVarietyBaseCases §5.0c give realizations, interpolation, transfers and marked factors, not the newly owned analytic divisibilities.
- `HeegnerPointEulerSystems/README.md:21` and 173–177 explicitly imports this roadmap's marked CM/Heegner and character-level results. GrossZagierAndArithmeticHeights §8.8 retains its comparison with this roadmap's marked scope. Those supplied open heads confirm that this part owns the specialized inputs; their general developments are not replanned. EllipticCurveModularity owns existence of modular comparison data. No later roadmap has been made a supplier by this review.

**Source sample.** No locator is explicitly flagged unverified in the README. The 15 seeded targets were read at their locators, including the two separately named “From soluble orbits to Selmer numerators” sections. Source identifiers below name the service's line-numbered extractions. All retrievals used the sources service from legal arXiv, author or publisher copies; unavailable supporting works are listed separately. Published Skinner pagination is distinguished from arXiv pagination. Corrections in the README were tested rather than attributed to the source as printed.

| Seeded target | Source locator and extraction witness | Verification |
|---|---|---|
| 4.2 Local translates/product | bs-quartic Prop. 3.6, pp.24–25, line 1335; Prop.3.18, pp.32–33, line 1914 | Right-coset product, local finite support, and all-prime square-divisibility half agree. |
| 4.3 Finite-field quartics | bs-quartic Lemma 3.15, pp.30–31, line 1786; Prop.3.18 proof | Count and odd-prime solubility agree; the direct p=3 treatment retains the bad-characteristic invariant scaling. |
| 4.4 Local constancy/real solubility | bs-quartic §2.7 p.19, line 1006; Thm.3.19 proof p.33, line 1942; real component discussion §2 | Null-boundary hypotheses and nonsingular locus are retained; the explicit congruence-ball bound is checked from the Cartan argument, not quoted as a numbered source theorem. |
| 4.5 Jacobians/masses | bs-quartic Prop.2.8 p.13, line 671; Prop.3.7/Cor.3.8 p.25, lines 1382/1405; Prop.3.12 p.29, line 1701 | 1/27, 2¹⁰ and the actual scaled invariant domain agree. |
| 4.6 Local Kummer indices | bs-quartic Lemma 3.20 p.34, line 1990 | Odd p ratio 1, p=2 ratio 2, real ratio 1/2; generalized local indices are imported with their hypotheses. |
| 4.7 First orbit/Selmer passage | bs-quartic §3.2 pp.23–25, lines 1276–1369 | Nonidentity classes, rational stabilizer weights and torsion exceptional contribution remain distinct. |
| 4.9 Sieve/orbit numerator | bs-quartic Thm.2.21 p.19, line 1012; Thm.3.19 proof p.33, line 1942 | Finite-prime truncation before infinite sieve; nonnegative weights and matching family denominator. |
| 4.10 Mean two-Selmer | bs-quartic Thm.3.19 pp.33–34, line 1942; Lemma3.20 line1990 | Positive denominator, Tamagawa 2, identity restored to obtain 3. |
| 4.11 Rank/torsion | bs-quartic Cor.1.2 pp.1–2, line50; rational-root count in roadmap | Upper average, not existence of a rank-average limit; zero torsion-density is not alone a weighted-tail estimate. |
| 4.14 Means/moments | bs-three Thm.27 p.15, line756; bs-four Thm.2 p.1, line22 and Thm.25; bs-five Thm.31 p.21; bss-second Thm.1.1 pp.1–2, lines55–59, §7 lines2185–2222 | Family hypotheses, means 4/7/6, second-moment upper bound 15; fixed-invariant marked dictionary and the restored classes give 6. The infinite-family assertion is an upper bound, not a conjectured equality. |
| 4.16 Hyperelliptic masses | bgw Thms.40–41 pp.32–33, lines1329/1393 | 2⁻ᵍ, 2ᵍ, 1 and Tamagawa2; one-sided count and actual local divisor conditions. |
| 4.18 Four-twist parity | bgw A.3–A.8 pp.36–39, lines1554,1566,1584,1640,1653 | Corank versus finite dimension, full decomposition places, and reduced-primary Sha retained; exponent/coprimality slips corrected. |
| 4.22 Rank-one/local labels | bs-rank-one Thms.3–4 pp.2–3, lines72/82; Props.11–12 pp.11–13, lines441/494; skinner B–C printed pp.331–332, lines110–153 | Converse hypotheses match. The quotient comparison has wider source generality and a missing supplier claim: R01. The corrected dyadic family has an explicit good integral model. |
| 4.26 Nonlifting | bs-four Thm.3 p.1, line30; pp.21–22, lines1147–1166 | 3/5 is a mean number; division by the Selmer mean gives 1/5 of elements, not curves. |
| 4.27 Five-Selmer bounds | bs-five Props.34–38, Tables3–4, pp.23–28, lines1218–1478; Prop.40 p.29, line1494 | Recomputed dyadic/triadic sums, Euler factors, tail and all three mixtures; finite-height argument avoids adding separate limsups. |

**Adversarial table.** R means a line in `TauCetiRoadmap/ArithmeticStatisticsPartVI/README.md`; L means a line in its `Suggested.lean`. Each numbered target below has a numerical or explicit finite-object witness. For asymptotic/analytic theorems the row tests a normalization, boundary or proof implication; it is not experimental evidence for the theorem's asymptotic truth. “Retain” means no change from that test. Inapplicable cases (zero ring, q=1, inseparable characteristic-two double covers, non-number-field parity) are excluded by the stated carriers, rather than silently tested as arithmetic examples.

| Statement | Instances and computed values on both sides | Result / change |
|---|---|---|
| Rational orbit weight, R77 | S₃ acting on three points, Γ=1, Y={0}: transporter size 2, w=2, orbit count n=1. Γ=G gives w=n=1; empty Y gives both 0. | Retain; stabilizer factor is necessary. |
| Soluble forms/family, R127 | `x³y−16xy³`: I=48,J=0, scaled invariants (3,0), curve A=−1,B=0; (x,y,z)=(1,0,0) is a projective point. | Retain scale 16/64. |
| Local masses, R165 | Full family: odd p≠3 mass 1−p⁻¹⁰; at 3, 3⁻⁴(1−3⁻¹⁰); real positive/negative discriminant volumes 8/5 and 32/5, total 8. Empty invariant set gives integral 0. | Retain factor 1/81 and zero-mass guard. |
| Average, R211 | Values 1,3 on a two-element sublevel give sum 4/card2=2; empty cutoff gives 0/0=0 in Lean. Constant c on a nonempty sublevel gives c. | Retain eventual nonempty hypothesis for limiting identities. |
| Stabilizer sum, R259 | S₃ example: one Γ-orbit, stabilizer ratio 2/1=2=w. Free C₆ action, Γ of order2: each summand 1 and w=n=3 for Y=all. | Retain both nonabelian and cyclic controls. |
| Cartan, R281 | p=2, k=0,1,2: indices 1,3,6; p=3,k=1,2: 4,12. Scalar pI has valuation difference 2−2=0. | Retain k=0 separately and PGL scalar invariance. |
| Nonintegral translates, R301 | f=p²x⁴+y⁴ has Δ=256p⁶; diag(p⁻¹,1) under det⁻² action sends it to x⁴+p²y⁴, integral. For p=3, v₃Δ=6≥2. | Retain determinant twist and square divisibility. |
| PGL₂ class number one, R319 | Finite adelic lattice pZₚ⊕Zₚ at one prime is matched by diag(p,1) over Q. A scalar pI gives the identity in PGL₂. | Retain GL₂ lift and rational integral intersection. |
| Global weight product, R339 | Only local weights 2 and 3 nontrivial: product 6, six independent coset choices. Empty exceptional set: product 1, one choice. | Retain restricted product/finiteness. |
| Finite quartic count, R359 | Exhaustive coefficient enumeration: q=2,3,5,7 gives 12,144,2400,14112; q²(q+1)(q−1)² gives exactly those four numbers. | Retain q>1; characteristic-two count does not assert a smooth double cover. |
| Finite-field solubility, R377 | Enumerated nonsingular quartics at p=3,5,7: soluble counts 144,2400,14112 equal total counts. Group doubling for C₂×C₂: quotient4/torsion4=1. | Retain odd characteristic and separate p=3 argument. |
| Away from square discriminant, R397 | x⁴−y⁴ has Δ=−256, v₃Δ=0 and point (1,1,0). The stated insoluble ternary-residue example has Δ=28116, v₃Δ=2≥2. | Retain hypothesis; obstruction is outside good locus. |
| Local constancy, R419 | For f₀=2x⁴+4x²y²+3xy³+2y⁴ over F₃, all four projective directions have value2 up to fourth-power scaling; squares are {0,1}. Same values persist modulo3. | Retain insoluble ball; Δ≠0 needed for finite weights. |
| Real quartics, R437 | x⁴+y⁴ is everywhere positive and soluble; −x⁴−y⁴ is negative on every nonzero vector and insoluble; x⁴−y⁴ has real zeros. | Retain positive/negative definite distinction. |
| Orbit Jacobian, R457 | At the stated section, the 5×5 determinant is −1/27; real absolute value1/27 and 3-adic absolute value27. | Retain absolute-value normalization. |
| PGL₂(Zₚ) volume, R475 | p=2: #PGL₂(F₂)=6, 6/2³=3/4. p=3: #PGL₂(F₃)=24, 24/3³=8/9. | Equals 1−p⁻². |
| p-adic change of measure, R493 | At p=3, test invariant mass3⁻⁵ gives 27·(8/9)·3⁻⁵=8/81; coefficient count gives 24/3⁵=8/81. | Retain the p=3 Jacobian factor. |
| Weighted measure, R513 | Two integral representatives in a rational orbit with equal stabilizer ratios give m=2; weights1/2+1/2=1. Omitting weights gives2. | Retain rational-orbit weighting. |
| Local soluble mass, R531 | Constant local quotient/torsion ratio2 at p=2 gives 2 times invariant mass; at p=3 ratio1 gives the same mass. A zero invariant mass gives zero on both sides. | Retain support and integral domain. |
| Finite-index Zₚ subgroup, R551 | G=Z₂×C₂: quotient4,torsion2,ratio2. G=Z₃×C₂²: quotient4,torsion4,ratio1. | Retain prime-dependent factor. |
| Local two-descent, R571 | Dimension-one p=2 gives |2|₂⁻¹=2; p=3 gives |2|₃⁻¹=1. Dimension g=2 would give4 at2, not2. | Retain dimension-one specialization of supplier. |
| Real index, R591 | Two components: quotient2/torsion4=1/2. One component: quotient1/torsion2=1/2. | Retain both real types. |
| Mass ratios, R611 | At all finite odd primes factor1; at2 factor2; at∞ factor1/2. Combined exceptional factor2·1/2=1. | Retain; no omitted dyadic prime. |
| Solubility by local conditions, R633 | A rational projective point maps to all local points; f=−x⁴−y⁴ fails the real condition and global condition simultaneously. Empty required local set makes the intersection empty. | Retain real completion and intersection direction. |
| Selmer/orbit numerator, R651 | E:y²=x³−x has N=4, hence N−1=3. Its identity cover has a rational linear factor, hence contributes0 to the irreducible numerator. | Retain exceptional torsion error, not equality curve by curve. |
| Bad forms, R669 | f₀ above: insoluble at3 and Δ=28116=9·3124 with3 not dividing3124, so v₃Δ=2. At p≥5 a nonsquare-divisible discriminant has valuation0 or1. | Retain square-divisibility conclusion. |
| Real orbit count, R687 | Δ>0: 2·(1/27)·2ζ(2)·(8/5)/4=(8/135)ζ(2). Δ<0: (1/27)·2ζ(2)·(32/5)/2=(32/135)ζ(2). | Both equal the stated mass expression. |
| Invariant lattice count, R707 | L=3Z×27Z: k=9,m=27 gives k/m²=1/81. Full lattice signs: 8/5+32/5=8. | Retain area and lattice index. |
| Square-discriminant tail, R725 | A=B=0 has D=0 and infinitely many square divisors, so is excluded. For nonzero D, p² divides D implies p≤√abs(D); at M=10000 the elementary tail is ≤1/10000. | Retain nonzero D and finite prime range. |
| Short cubic uniformity, R743 | x³−5y³ has Disc=−675; x³−40y³ has Disc=−43200=8²·(−675), index8, unchanged maximality at5. | Retain suborders nonmaximal away from p. |
| Elliptic uniformity, R759 | x³−x has Disc=4 and is counted at2 despite reducibility. For p² greater than the discriminant cutoff, both the source count and the restricted count are0. | Retain reducible contribution and nonzero discriminant. |
| Large-family denominator, R779 | Full invariants: area8 times density1/(81ζ(10)) gives 8/(81ζ(10)). A zero local Haar mass gives constant0; no division by that constant is used. | Retain positivity for consumers. |
| Soluble orbit sieve, R803 | If only primes2,3 have nonunit factors a,b, truncations beyond3 have product ab; for all weights1, product1. A weight identically0 at one prime gives total0. | Retain nonnegative truncation and same family. |
| Selmer mass product, R823 | Nonidentity mean: (real/finite index product1)·Tamagawa2=2; total mean1+2=3. | Retain separate identity class. |
| PGL₂ Tamagawa, R841 | 2ζ(2)·∏ₚ(1−p⁻²)=2·ζ(2)/ζ(2)=2; local p=2 factor3/4. | Retain ζ(2)≠0 and normalized measures. |
| Mean two-Selmer, R859/L138 | Positive denominator cX^(5/6): numerator (3c)X^(5/6), ratio3. With c=0 the same formal division is0/0, not3. | Lean excludes the zero-mass case. |
| Positive masses, R885 | Minimal pair (−1,0) is nonsingular with H=4; any compatible fixed residue cylinder has positive p-adic measure. Empty cylinder has measure0 and fails nonemptiness. | Retain actual congruence union, not marginal product. |
| Congruence-family mean, R905/L146 | A disjoint union of counts c₁X^(5/6),c₂X^(5/6) and Selmer sums3c₁X^(5/6),3c₂X^(5/6) gives ratio3; c₁=1,c₂=2 gives9/3=3. | Retain actual denominator weights. |
| Rational 2-torsion density, R927 | Monic cubic x³−x has roots−1,0,1, all integral; x³+x+1 has no integral root (possible roots ±1 give1,−1). | Rational-root route discriminates the torsion locus. |
| Rank from mean2, R945/L155 | r=0,1,2,3: 2r=0,2,4,6 versus2ʳ=1,2,4,8. Mean2ʳ≤3 gives mean r≤3/2. | Retain finite-cutoff inequality. |
| Sha two-rank, R967 | Selmer dimension s=r+t+a: (r,t,a)=(0,2,0) gives s=2; (0,0,2) also s=2. In either case2a≤2ˢ, respectively0≤4 and4=4. | Retain Sha/torsion correction; s alone is not rank. |
| Height moments, R987 | Indicator of evens has both densities1/2. Alternating dyadic blocks have lower1/3,upper2/3; complement upper2/3, sum4/3>1. Constant2 has moment m=2 equal4. | Retain limsup subadditivity, not linearity. |
| Rational p-torsion density, R1041 | Zero group has p-torsion dimension0; C₃ at p=3 has dimension1, quotient order3, while rank remains0. | Retain torsion correction and density-one restriction. |
| Mean three-Selmer, R1063 | σ(3)=1+3=4. For finite E(Fp), #E/3E divided by#E[3]=1, including C₃ (3/3) and C₂ (1/1). | Retain stack mass, not one isomorphism class per j. |
| Rank7/6, R1083/L167 | r=0,1,2,3: 6r−3=−3,3,9,15 versus3ʳ=1,3,9,27; (4+3)/6=7/6. | Retain. |
| Mean four-Selmer, R1103 | σ(4)=1+2+4=7; not second moment15. In C₄, element2 has order2 and reduction0; rational two-torsion can instead map nontrivially under the curve's Kummer comparison. | Retain induced-cover criterion and torsion exception. |
| Mean five-Selmer, R1123 | σ(5)=1+5=6; nonidentity mean5. Scalars (λI₅,λ⁻²I₅) satisfy (det g₁)²det g₂=λ¹⁰λ⁻¹⁰=1. | Retain central quotient and correct group. |
| Marked factorial bound, R1143 | N=1,2,4 gives (N−1)(N−2)=0,0,6; N(N−1)=0,2,12. Bound8 plus2·mean(N−1)=4 gives12. | Retain removed/restored classes and ≤, not equality. |
| Second moment, R1176/L192 | N²=(N−1)(N−2)+3N−2: N=1 gives1=0+3−2; N=4 gives16=6+12−2. Bound8+9−2=15. | Retain large OR finite-congruence family. |
| Admissibility, R1198 | A fixed local forbidden set away from all soluble reductions violates admissibility if it excludes a soluble model; the all-model condition accepts every soluble model and has local mass1 before smoothness. | Retain actual local solubility and positive masses. |
| Degree-one comparison, R1226 | Effective degrees1 and2 have gcd1; only even degrees have gcd2. A rational degree-one Picard point need not be an actual divisor until the Brauer obstruction0 is proved. | Retain obstruction and index-divides-two hypothesis. |
| Generic Weierstrass class, R1236 | If J(Q)[2]=0 and W[2]≠0 lies in J(Q)/2J(Q), rank0 would give quotient1 and no nonzero class; rank1 gives quotient2. | Retain generic exceptions and nonzero class. |
| Pencil global weight, R1254 | Local weights2,3 give global6, reciprocal1/6; an insoluble local component has weight0. | Retain exact local/global product and no inversion of0. |
| Pencil/Selmer count, R1270 | Empty torsor has0 elements; trivial group has1. A torsor under a four-element group, if nonempty, has4 elements. | Retain torsor rather than group identity convention. |
| Hyperelliptic local ratios, R1282 | g=1: real1/2,dyadic2; g=2: real1/4,dyadic4; products both1. | Retain dimension-dependent factors. |
| Pencil measure comparison, R1296 | Rescaling a rational top form by3 multiplies its real norm by3 and its 3-adic norm by1/3; global product1. | Retain all places and the same invariant form. |
| Central quotient Tamagawa, R1306 | n=2g+2: g=1 gives n=4, even; supplied τ=2. Split adjoint PSO₄ has τ=2·2=4, different from this quotient. | Retain group-scheme quotient distinctions. |
| Hyperelliptic upper count, R1320 | Product of local ratios1 timesτ2 gives upper mean2; dropping a nonnegative tail can prove ≤2 but cannot prove ≥2. | Retain one-sided conclusion. |
| Restricted Selmer set, R1338 | S={0,1,2}: one image{0,2} yields2 elements; images{0,1},{1,2} yield intersection{1}, card1; no places yields3, empty image yields0. | Retain intersection, monotonicity and empty-index case. |
| Odd component bound, R1372 | S₃(1)=3<4; S₅(3)=5+10=15<16; S₃(9)=4; S₁(1)=1; S₀(0)=0 whereas2^(0−1)=1 in Nat. | Retain m>0 for saturation. |
| Real effective image, R1410 | m=4,k=1:4/8=1/2; k=3:8/8=1. A conjugate pair contributes parity0, not two independent real components. | Retain upper bound and separate m=0 case. |
| Number-field count, R1428 | K=Q,N=5,T=1,unit ideal:3⁵=243 vectors. One residue at normq has density q⁻⁵; quadratic K has exponent10, not5. Empty residues give0. | Retain coordinate degree rN. |
| Number-field tail, R1447 | Empty Z gives0 at every cutoff. Z={a₁=a₂=0} has residue proportionq⁻²; divisor{a₁=0} hasq⁻¹ and does not meet codimension2. | Retain fixed envelope and excluded finite vertical fibres. |
| Twist height, R1465 | K=Q, α=1/2,t=2 givesβ=2 and H(βf)=2H(f); direct αf can have half-integral coefficients. α=1 gives both bounds1. | Retain square denominator clearing. |
| Isogeny quotient, R1483 | Identity has Q=1 and quotient1. For [5], rank1 plus one divisible Sha summand gives Q=5²=25; omitting the latter gives5. | Retain divisible kernel and reduced-primary terms. |
| Selmer dual, R1502 | Trivial group acting on Qp² gives dual dimension2. A finite p-primary Sha group tensors to0; one Qp/Zp summand contributes dimension1. | Retain without assuming finite full Sha. |
| Regulator parity, R1522 | Zero Brauer relation gives constant1, valuation0, empty multiplicity sum0. Exponents2 contribute even valuation, while exponent1 contributes the valuation itself. | Retain nᵢ and p=2 Sha factor. |
| Biquadratic parity, R1540 | Trivial character: 1·(1/2)⁻³·(1/4)²=1/2, square class2. Each nontrivial character gives2. Quotient1/2 has valuation−1≡1. | Retain all four characters and inversion parity. |
| Four-twist local parity, R1556 | Split toric rank1 contributes local quotient1/2, odd valuation; good full-decomposition place contributes square class1, even valuation0. | Retain extra twist-point condition for finite Selmer dimension. |
| Mod-eight family, R1573 | x² coefficient under twists1,−1,2,−2 is1,7,2,6 modulo8: four distinct classes. At n=3, reduced equation is Y²+xY=x³. | Retain corank conclusion, not automatic finite-dimension parity. |
| Odd-residue models, R1583 | f̄=x(x−1)(x−2) overF₅ has three simple roots. Split node f̄=x²(x−1)(x−4): h(0)=4 square, h has roots1,4. h(0)=2 would be nonsquare. | Retain simple-root and split-node conditions. |
| Full corank parity densities, R1597 | n=3:8⁻⁴2⁻⁴=2⁻¹⁶=1/65536; n=4:8⁻⁵2⁻⁵=2⁻²⁰. Four residue blocks are disjoint. | Retain lower density and Sha-dependent rank identification. |
| Admissible parities, R1607 | Four twist multiplicity≤4 with height factorC gives a positive density times C⁻ʳᴺ/4. Identity twist has factor1; no positive-density claim follows from mass0. | Retain prime-ideal and fixed-envelope hypotheses. |
| Hyperelliptic mean2, R1625 | For g=1,2, factors(1/2)·2·2 and(1/4)·4·2 both give2. Empty Selmer sets contribute0. | Retain ≤2 and locally actual Div¹-soluble family. |
| Strict order-k mean, R1643 | m=4,k=1 real fraction1/2; on that stratum mean upper contribution is2·1/2=1<2. At k=3 fraction1 gives no strictness from that stratum. | Retain k<g and positive strict strata. |
| Vanishing order-k mean, R1653 | Fixed k=1: m=4 ratio4/8=1/2; m=8 ratio8/128=1/16; m=16 ratio16/32768=1/2048. | Retain height limit before genus limit. |
| Bounded odd-degree points, R1669/L261 | A point over degree1 meets every m≥1; no degree can satisfy1≤degree≤0. −x⁴−1 has no real point, hence no point over an odd-degree number field. | Retain m>0 and smooth coefficient denominator. |
| Empty Selmer sets, R1729 | Counts N=100,E=20,B=0 imply T≥240−4Z. Upper average2 means T≤200 asymptotically, hence Z≥10=E/2. | Retain δ/2 and exceptional-count error. |
| Positive index2, R1739/L270 | Hyperelliptic degree2 map gives index dividing2; no odd degree rules out1, leaving2. A rational point would give degree1 and index1. | Retain actual local-point family. |
| Nontrivial Sha[2], R1751 | A nonzero torsor class x with2x=0 has order2; zero class has rational trivialization. Empty Pic¹(Q) selects the former. | Retain locally trivial class and no full-Sha finiteness. |
| Empty or infinite Pic¹, R1761 | Finite odd group C₃ has quotient by2 of order1; Z has quotient order2 and infinitely many points. | Retain nonzero Kummer class as rank witness. |
| Two-prime criterion, R1771 | p=5,q=3: (5/3)=−1 and (3/5)=−1. Their distinct nonsquare Q₂ square classes generate degree4, so two has one prime above it. | Retain added dyadic hypotheses. |
| Rank-one criterion, R1792 | F₅ line with injective quotient restriction has kernel dimension0; zero restriction has kernel dimension1. Only the former meets local non-torsion condition. | Retain local-image test and modular data. |
| Twisted criterion, R1808 | D=−39: D≡1 mod8, D≡1 mod5, D≡3 mod7; 2 and5 split,7 inert. Selmer dimensions0+1 give K-dimension1. | Retain theorem over E/K, not squarefree-conductor claim for twist. |
| Rank-one family, R1824 | (−208,464): d=117901=7·16843, Δ₀ mod39=10=7²,864B mod7=6 nonsquare,#E(F₅)=7. (−208,656): corresponding residue1 square. | First accepted, second excluded as stated. |
| Family properties, R1858 | Good integral model y²+y=x³−13x+7 has discriminant117901. Dyadic cylinder mass1/(32·64)=1/2048. (−136,16) has v₂c₄=7,v₂Δ=12 and is excluded. | Retain corrected v₂A=4. |
| Local five quotient, R1874 | Good example with no local5-torsion: quotient5,torsion1. Split Tate q=11⁵ overQ₁₁: quotient25 and torsion image25; nearby q′ as in R01 has the same values. | R01: include source generality and own comparison. |
| Local label equidistribution, R1890 | #Q=5: singleton mean1; #Q=25: singleton mean1/5; all labels mean5; empty labels mean0. | Retain nonidentity mean5, not6. |
| Trapped-line count, R1909 | Onto F₅ map from F₅² has kernel5, hence4 nonzero; from F₅³ kernel25, hence24 nonzero. Dividing by4 gives coefficients1 and6. | Retain dimension thresholds2 and3. |
| Saturated count, R1926 | p=5 gives1−2/(5−1)=1/2; p=3 gives0. Original dimensions1 and0 are disjoint. | Retain p=5 in positive bound. |
| Simultaneous rank one, R1943 | Height factor39⁶ gives count factor(39⁶)^(5/6)=39⁵=90224199; bound(cF/cE)/(2·90224199)>0. | Retain height loss and conditional analytic conclusion. |
| Soluble generic three classes, R1961 | Rank-one Z modulo3 has three classes, two nonzero. Rank-zero trivial group has one class, zero nonidentity classes. | Retain positive-rank hypothesis. |
| Cubic height transport, R1977 | A=−1,B=0: H_AB=1,H_IJ=27. A=0,B=1: H_AB=1,H_IJ=729/4. Scalar λ substitution contributesλ³·λ⁻³=1. | Retain bounded, not constant, height comparison. |
| Soluble fundamental count, R1994 | Total retained weighted mass c₃t¹⁰/2 and multiplicity boundM yields at least c₃t¹⁰/(2M) vectors. For c₃=M=1,r=1, cube proportion lower coefficient1/2048. | Retain cusp-count control, not volume alone. |
| Plane-cubic density, R2011/L214 | T=1 cube has3¹⁰=59049 coefficient tuples. e₄ at(1,2,3)=6; swapped xz² convention gives9. All cubics evaluate0 at zero, which is excluded. | R03 adds evaluator API/Checks. |
| Balanced3 rank0, R2029 | With parity halves, minimal Selmer costs are1,9 on even part and3 on odd: mean≥6−8p₀; mean4 forces p₀≥1/4. | Retain finite-height reasoning. |
| Balanced3 rank1, R2046 | Odd dimensions1,≥3 cost3,≥27; even minimum1 gives mean≥14−24p₁. Mean4 forces p₁≥5/12. | Retain finite Selmer rank versus algebraic rank distinction. |
| Positive3 ranks, R2063 | A family of densityδ>0 with within-family bound1/4 gives full lower densityδ/4>0; δ=0 gives0 and is insufficient. | Retain positive family denominator. |
| Analytic rank0 criterion, R2080 | Sel₃=0 implies corank0; ordinary divisibility implication L(1)=0⇒corank≥1 then rules out L(1)=0. | Retain ordinary/residual-ramification hypotheses. |
| Positive analytic rank0, R2097 | Intersecting densityδ/4 with a density-one residual-irreducible locus keeps lower densityδ/4; arbitrary zero-density exceptional weighted sums would not suffice elsewhere. | Retain the supplied family and density-zero exception. |
| Positive weak BSD, R2114 | Rank0 and L(1)≠0 give ord₁L=0=rank; this is not the full leading-coefficient formula. | Retain stated weak conclusion. |
| Nonlifting, R2133 | a=0,1,2,3: 5·2ᵃ−8=−3,2,12,32 versus4ᵃ−2ᵃ=0,2,12,56. Lift mean≤12/5; 3−12/5=3/5; (3/5)/3=1/5. | Retain element denominator. |
| Basic5 bounds, R2149/L178 | r=0,1,2,3:20r−15=−15,5,25,45 versus5ʳ=1,5,25,125. (6+15)/20=21/20; 1·(19/24)+25·(5/24)=6. | Retain rank and low-rank bounds. |
| Balanced5 bounds, R2168 | Distribution (r0,r1,r2)=(3/8,1/2,1/8): mean size3/8+5/2+25/8=6; mean rank3/4; low-rank7/8. | All three bounds attained by the extremal distribution. |
| Dyadic balanced-family masses, R2185 | Four column sums:2336,1153,370,215 in4096ths; total4074/4096=2037/2048. Missing mass9/2048. | Matches stated Table3 aggregation. |
| Triadic balanced-family masses, R2185 | Column numerators257831,972,43083,52186 over354294; sum354072/354294=59012/59049. | Matches stated Table4 aggregation. |
| Finite labels F₁,F₂, R2185 | After minimality normalization: F₁=71495761/120812208≈.591793; F₂=48711683/120812208≈.403202. | Retain actual label rule. |
| Prime factors/tail, R2185 | p=7: a=2358/2401,b=42/2401,total2400/2401. Cutoff10000: finite F₃=.9668939841114075,F₄=.03260631699033738; multiply.9999 gives.9667972947129964,.03260305635863834. | Both exceed repaired rational lower bounds. Separately, a ceiling-rounded cutoff10⁶ and r-tail≤2/10⁶ gives full F₃<.966889459<.96689, confirming the source numerical slip. |
| Balanced union density, R2185 | F₁·.966797+F₂·.032603=55377570379783/100676840000000=.5500527269209383>.55005. | Previous R02 repaired with explicit margin. |
| Full mean rank, R2209 | .75·.55005+1.05·.44995=176997/200000=.884985<177/200. | Retain conditional conclusion and strict margin. |
| Full low-rank, R2226 | (7/8)·.55005+(19/24)·.44995=201001/240000≈.83750417≥67/80=.8375. | Retain. |
| Full rank0, R2243 | (3/8)·.55005=33003/160000=.20626875≥1031/5000=.2062. | Retain. |
| Marked Jacobian mean, R2262/L202 | Marked numerator N(N−1), denominator N−1: N=1 gives0/0 only at empty marking; N=4 gives12/3=4. Asymptotic bound12/2=6. | Retain family-of-pairs denominator. |
| Cubic Thue bound, R2288 | v=x(x−y)(x+y): v(a,b)=1 forces integer factor triple all±1 with product1; solutions(1,0) only, count1≤12. v=x³ is excluded by Disc0. | Retain reducible nonsingular cubics. |
| p-adic submersion/nullity, R2302 | Q₂ square map on1+4Z₂: masses1/4→1/8,det norm1/2; constant map to0 pulls null{0} back to mass1. | R02; submersion and Jacobian are indispensable. |
| Modular data/twists, R2316 | Twist byD multiplies A,B byD²,D³ and height byabs(D)⁶; D=−39 gives39⁶. Isogeny differential scaleu changes log byu, squared formula byu². | Retain supplied isogeny and all Euler factors. |
| Ordinary divisibility, R2330 | In Λ[1/p], (T²)⊆(T): vanishing of generatorT at augmentation forces vanishing ofT². Reverse inclusion would permit (T)⊆(1), whose right generator is nonzero. | Retain containment direction and control hypotheses. |
| Anticyclotomic implication, R2346 | One-dimensional Selmer space injects into both local spaces: each restriction kernel0. A zero restriction instead has kernel dimension1. | Retain strict local group, not dimension alone. |
| Heegner logarithm/low rank, R2362 | Nonzero logarithm squared times nonzero constant is nonzero; logarithm0 gives0. A product of L-functions with vanishing orders0 and1 has order1. | Retain isogeny factors and exact hypotheses; auxiliary source limitation below. |
| Real-root support, R2380 | Uniform[−1,1] variance1/3; √3 scaling gives1 and identical roots. Degree4 cannot have exactly3 simple real roots: probability0 by conjugation. | Retain compatible fixed counts; not growing endpoint count. |
| Character nonvanishing, R2384 | p=3,n=1: primitive character of cyclic order9 has order9, not3. A character factoring through the preceding order3 layer is excluded. | Retain primitive/tame distinction and all odd p. |
| Character Selmer multiplicity, R2400 | p=3,n=1: rational primitive dimension(3−1)·3=6; D₆ two-dimensional constituent occurs3 times, an odd multiplicity. Extra divisible Sha line would change1 to2. | Algebra checked; Nekovář text unavailable below. |
| Elliptic p-parity, R2416 | (s,t)=(0,0) gives even0; rational3-torsion with corank0 gives(s,t)=(1,1), still even0. Dropping t would give odd1. | Retain torsion correction and conditional modular data. |
| Brauer constants, R2430 | Zero relation constant1. C₂×C₂ relation: trivial character constant1/2 and each other character2, all square class2. Pairing rescaleu changes product byu^(1−3+2)=1. | Retain pairing independence and dual-pair square class. |

**Direct checks of every kept Lean definition.** These also test total-function and carrier boundary cases separately from the headline arguments.

| Definition | Computed positive/negative or junk-value test | Result / change |
|---|---|---|
| `minimalShortPairs`, L58 | (−1,0): D=−4≠0, minimal; (0,0): D=0 excluded; (−16,0) fails p=2 because16 divides A and64 divides0. | Retain. |
| `localPairClosure`, L63 | Empty F gives closure∅; singleton minimal pair gives one closed point in Zₚ², Haar mass0. | Retain; nonempty is not positive mass. |
| `pairHaar`, L69 | Whole compact group mass1; p² residue classes modulo p each mass p⁻², summing1. At p=2:4·1/4=1. | Retain normalization and prime binder. |
| `IsLargeFamily`, L76 | Empty family fails nonempty sign/positive mass; singleton minimal pair has mass0 at each prime. Full minimal family has local complement massp⁻¹⁰. | Retain all-prime closure/saturation and eventual square-discriminant condition. |
| `shortCurve`, L93 | Pair(−1,0) gives coefficients(0,0,0,−1,0), discriminant64; (0,0) gives discriminant0. | Retain nonsingularity filtering. |
| `shortPairSublevel`, L98 | Pair(−1,0) has H=4: excluded at X=4, included at X=5. Empty F gives zero-card sublevel at all X. | Retain strict cutoff. |
| `shortPairAverage`, L104 | Two weights1,3 give2; empty cutoff gives0 by total division. Constant weight1 on nonempty cutoff gives1. | Retain eventual positivity in limits. |
| `twoSelmerSize`, L111 | Singular pair(0,0) gives explicit junk0; curve y²=x³−x gives4, not its rank0 or torsion-free quotient1. | Retain real and all finite local images. |
| `ternaryCubicValue`, L121 | e₀(2,0,0)=8,e₄(1,2,3)=6,e₉(0,0,2)=8; zero input gives0 for all coefficients. | R03. |
| `IsFiniteCongruenceFamily`, L129 | N=1 with all allowed sign/residue values accepts full minimal family; empty allowed set fails the witness; N=0 is expressly excluded. | Retain coupled sign/residue classes. |
| `hyperellipticPolynomial`, L229 | g=1,a=(1,0,0,0,1) givesX⁴+1; a=(0,0,0,0,1) gives1 and fails leading-coefficient test. Zero vector gives0. | Retain descending coefficient convention. |
| `hyperellipticSublevel`, L233 | X⁴+1 atT=1 is admitted (derivative4X³ coprime); (X²−1)² is excluded as repeated-root polynomial. T=0 gives empty set. | Retain actual degree and separability. |
| `hyperellipticHasPoint`, L240 | X⁴+1 has affine point(0,1) and square leading coefficient1; −X⁴−1 has neither overR. 2X⁴+3 has noQ₃ point: unit x gives residue2, v₃x>0 gives valuation1, negative valuation leaves nonsquare leading unit2. | Retain affine OR infinity; smooth-char0 interpretation supplied by sublevel. |
| `hasOddDegreePoint`, L247 | For X⁴+1,K=Q degree1≤m gives true for m≥1; m=0 gives false. −X⁴−1 has no point over any odd-degree extension, which has a real embedding. | Retain finite-extension and degree guards. |
| `locallySolubleHyperelliptic`, L253 | X⁴+1's point(0,1) works overR and everyQₚ; −X⁴−1 failsR; 2X⁴+3 failsQ₃. | Retain all completions, not good primes only. |

The table contains 139 rows: 124 target/convention computations and 15 direct definition checks. Exhaustive finite-field enumeration, finite prime products and the rank-one coefficient calculations were independently recomputed; asymptotic rows deliberately identify the finite algebra they test. No finite test replaces the legal-source or supplier check.

## Not verifiable

Five supporting works could not be read through the required sources service. None is silently certified from a secondary quotation. The seeded statistical papers were accessible; these limitations concern supporting proof routes, and do not create a new request to park this review.

- **nekovar**, Reference 121, Theorem 3.2, used at `README.md:2400` for primitive-character Selmer multiplicity one. The cited IMJ author PDF returned HTTP 403. The character-dimension arithmetic and the matching Dokchitser–Dokchitser deduction were checked, but the original theorem's full hypotheses remain unverified.
- **fh**, Reference 123, Theorem B, used at `README.md:2366` for an auxiliary twist with specified local conditions and nonzero central value. DOI 10.2307/2118638 resolved to a JSTOR landing page without an accessible legal full text through the service. Skinner and Bhargava–Skinner's use of the result is visible, but the original locator was not certified.
- **dh**, Reference 127, Proposition 1, used at `README.md:755` for the all-cubic estimate. DOI 10.1098/rspa.1971.0075 reached the Royal Society host with HTTP 403. The short-representative/suborder arithmetic was checked, but the cited original proposition was not read.
- **monsky**, Reference 122, modular-curve two-parity input at `README.md:2418`. The service marked the publisher citation uncertified/paywalled. Retained as an uncertified citation, not a fresh missing-source request.
- **ps-density**, Reference 125, pp.241–244, used at `README.md:1457`. The service marked the publisher text uncertified/paywalled. The fixed codimension-two hypothesis and the accessible Cassels–Tate paper's density lemmas were checked; the four-page density paper itself was not certified.

Skinner's publisher-open Annals text and Dembo–Poonen–Shao–Zeitouni arXiv text were successfully retrieved after their initial service failures; they are not missing sources. The missing-reference scratch record retains only nekovar, fh and dh. No source manifest or repository file was edited.

## Source issues

These concern the versions actually read. The roadmap already avoids most of them; they are recorded separately from its findings.

- **Error** in bs-three at Lemma 33 proof, printed page 17, bs-three line 869: the source says each finite-field j-invariant determines one isomorphism class of genus-one curve with degree-three line bundle; it should use automorphism-weighted mass, including twists and line-bundle translation orbits; affects the proof.
- **Misprint** in bgw at Lemma A.5(3) proof, printed page 37, bgw line 1598: the source says the squarefree part and square factor can be chosen coprime; it should omit coprimality, as f=x³ has squarefree part x and square factor x²; affects the proof.
- **Misprint** in bgw at Theorem A.7, printed page 38, bgw line 1647: the source says to multiply the local/Sha factors without the Brauer coefficients as exponents; it should raise each factor to its coefficient nᵢ; affects a stated result.
- **Gap** in bgw at Theorem 44 and its use of A.3, printed pages 34–35, bgw line 1495: the source says the two specified odd primes provide the required parity conditions; it should also handle the dyadic full-decomposition place when it exists, for example p=5,q=3; affects the proof.
- **Error** in bs-rank-one at the coefficient family in §2, printed page 3, bs-rank-one line 99: the source says v₂(A)=3 yields the displayed good dyadic reduction family; it should use v₂(A)=4 and the compatible B modulo64 condition for that integral model; affects the proof.
- **Misprint** in bs-rank-one at Proposition 11, equations (5) and (6), printed page 11, bs-rank-one lines 443 and 446: the source says the Weierstrass left side includes a₃ alone; it should include a₃y; affects nothing.
- **Misprint** in bs-rank-one at Lemma 16 proof, printed page 16, bs-rank-one line 621: the source says an odd-dimensional nonzero Selmer group has at least p³ elements; it should exclude dimension one rather than only dimension zero; affects the proof.
- **Misprint** in bs-five at Lemma 36 proof, printed page 26, bs-five line 1400: the source says split multiplicative reduction has local root number +1; it should have local root number −1; affects nothing, since the product-of-two-signs argument is unchanged.
- **Misprint** in bs-five at Proposition 37(3), printed page 27, bs-five line 1409: the source says its constructed F₃ has density greater than 96.689%; it should use a smaller bound such as 96.688%, since the product is below 0.96689; affects a stated result.
- **Gap** in bs-five at Proposition 40 proof, equation (33), printed page 29, bs-five line 1502: the source says one total mean bounds separately taken even and odd conditional limsups; it should combine finite-height inequalities before taking limits; affects the proof.
