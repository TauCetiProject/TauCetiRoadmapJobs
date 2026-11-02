# Review of EllipticCurveModularityWild3Adic (pull request #1484 at de00219)

**Verdict:** needs changes

## R01 (P1) — Name the general abelian inputs to the cross-prime comparison

**Location:** `TauCetiRoadmap/EllipticCurveModularityWild3Adic/README.md:485`, §1.13: “independence of ℓ for endomorphisms of an abelian variety over a finite field”.

**Claim:** The proof uses general endomorphism characteristic polynomials, freeness over the coefficient field, and Frobenius semisimplicity, but no listed supplier section supplies those inputs. ArithmeticGaloisRepresentations §6.3 treats elliptic curves; PadicHodgeTheory §8.3 supplies the covariant period adapter, not these general endomorphism theorems. The citation to CDT is a source, not an ownership contract.

**Witness:** `TauCetiRoadmap/AbelianSchemesAndArithmeticModuli/README.md:3025`, §A6.11, owns independence of ℓ; §A6.12 at line 3042 owns coefficient-field freeness; §A6.21 at line 3343 owns Frobenius semisimplicity. None is cited here.

**Repair:** Add AbelianSchemesAndArithmeticModuli §§A6.10–A6.12 and A6.21 to the scope deferrals, supplier contracts, and §1.13 Needs. Retain the new cross-prime assembly here. Explicitly distinguish the prime-to-p Tate characteristic-polynomial input from the crystalline comparison. This supplier precedes this roadmap. For the existing test A = E × E, E: y² = x³ − x over 𝔽₃, the supplied polynomial is (X² + 3)² and the realization has rank four; the elliptic-only input cannot provide that general theorem. For a CM elliptic curve and its quadratic coefficient field, A6.12 gives rank 2/2 = 1 in each coefficient factor.

## R02 (P1) — Remove the nonexistent ordinary-seed supplier section

**Location:** `TauCetiRoadmap/EllipticCurveModularityWild3Adic/README.md:93`, repeated in §§6.9 and 6.12: “OrdinaryAutomorphicFormsAndModularityLifting §§5.7, 5.10”.

**Claim:** The contract cites §5.7 as a supplier of the selected ordinary residual seed. That section does not exist in the supplier's open head returned by the roadmap service; it is also not a roadmap on main.

**Witness:** `TauCetiRoadmap/OrdinaryAutomorphicFormsAndModularityLifting/README.md:613` begins §5.3, line 634 begins §5.8, and line 683 begins §5.10. Section 5.10 states the required distinguished residual seed; there is no §5.7.

**Repair:** Replace all these pairs of citations by §5.10 alone, retaining the distinct-character, selected-quotient, and p = 3 restriction hypotheses already written here. Keep ClassicalSerreModularity §I.1 as the lifting supplier. Tested on §6.12's split Tate curve at 5: the residual inertia characters have values (2,1), the second quotient is unramified, and p ≠ 3, so §5.10 supplies precisely the stated seed. At p = 3 retain the irreducibility restriction used in §6.9. This is supplier drift, not a need for a new theorem or gap.

## R03 (P2) — Establish residual membership before constructing the category-condition rings

**Location:** `TauCetiRoadmap/EllipticCurveModularityWild3Adic/README.md:673` and line 692, §§2.5–2.6: “S_δ is a deformation condition in the sense of LocalGaloisDeformationRings §8.6”.

**Claim:** The construction verifies product, subobject and quotient closure, then invokes the supplier's representing-ring and tangent theorem. That theorem also requires ρ̄ ∈ S_δ. The Needs lists and construction do not establish this. The quadratic existence argument is only given later in §4.3, where it uses §2.11, whose ring formulation already uses §2.6. The zero object Check does not establish residual membership.

**Witness:** `TauCetiRoadmap/LocalGaloisDeformationRings/README.md:3760` explicitly requires S to contain V. The subcategory {0} is product/subquotient closed, but has zero residual lifts of nonzero V; a deformation ring must have its residual point.

**Repair:** Separate the definitions and closure of S_δ from application of CategoryCondition. First establish the existence of an identified finite-flat residual model for each normalized ρ̄, using §§1.11–1.13, 1.16 and the finite-flat/operator portions of §§2.10–2.11, independently of their ring factorizations. Then invoke §8.6 and state the ring factorizations. Alternatively move a separately proved residual-model existence target before the ring assertions. Do not make §2.6 depend on the full §4.3 as currently written. The repair excludes {0}, while an identified E[3] model has order 3² = 9 and supplies the required residual point. Section 5.6 already makes the corresponding one-step residual filtration explicit.

## R04 (P2) — Fix the additive-character normalization in the extended-type calculation

**Location:** `TauCetiRoadmap/EllipticCurveModularityWild3Adic/README.md:216`, §0.8: `χ(1 + x) = ψ(tr(x√−3/54))`.

**Claim:** The only specified condition on ψ in §0.1 is its kernel ℤ₃. That does not fix this formula. With the normalization in the cited source, the displayed sign is wrong. The resulting auxiliary-character computation should not depend on an unstated choice between ψ and its inverse.

**Witness:** Put s² = −3 and x = 3s. Section 0.5 gives χ(1 + 3s) = ζ. The displayed trace is −1/3, so for ψ(1/3) = ζ its right side is ζ⁻¹ ≠ ζ (BCDT line 1214).

**Repair:** Specify ψ(1/3) = ζ and use θ = −s/54, as in BCDT line 1216. Add this x = 3s calculation as a Check: tr(−3s²/54) = 1/3, so both sides are ζ. With a = 4 and N(s) = 3, −θN(s)² = s/6; the Gauss sum is ζ − ζ⁻¹. Since s/6 = (−1/2)/s and −1/2 is a square unit, χ″(s/6) = χ″(s)⁻¹, giving χ″(s) = (ζ − ζ⁻¹)⁻¹ as desired. Keeping the plus sign would instead require explicitly choosing ψ(1/3) = ζ⁻¹ and recomputing that normalization consistently. The admittance theorem itself is supported by the source.

## Verified sound

The whole README and Suggested.lean were read. The audit covered all 75 numbered subsections, all 15 seeded source targets, all 10 admitted Lean theorems, and all 16 Lean declarations. The findings above are repairable; the scope is a Part II extension with a second modularity proof, not a replacement of EllipticCurveModularity. No route restricted to good reduction, computational algorithm, copied source passage, sorry'd data, or set_option was found. The bad-prime local cases remain in the proof. The good-index domain of the final Lean newform statement matches the native newform carrier, and the stronger conductor/parametrization theorem remains a README target.

**Gate and elaboration.** The worker's gate at this head passed every scanner, dependency, outside-folder and targeted-build check, including stray-files. The outside-folder diff is empty and the worktree is unchanged. The imported Newform module was built successfully before direct elaboration of Suggested.lean. Direct elaboration succeeded with exactly ten sorry warnings and no other warning. A scratch copy containing #check @name for all 16 declarations also elaborated. All hypotheses, including nonzero cube-class input, the field equations, characteristic zero, continuity to the discrete matrix topology, cocycle laws, faithful projective action and ellipticity, occur in the elaborated signatures; no binder repair was needed.

The one-tactic probes tried simp, rfl and infer_instance on each admitted theorem; none closed. Object searches and inspection of the scalar Hilbert-90 theorem found no matching single library theorem that would close a general matrix target by exact. None of the ten declarations is a boundary-case or Check-only padding theorem.

The required dependency check returned exactly:

```text
depcheck: 204 roadmaps, 1494 edges, 0 problem(s)
```

There was no UPWARD, CYCLE or moved line. This graph result does not detect the missing section and missing proof inputs in R01–R03.

**Seeded source audit.** All fifteen sampled locators were readable in the supplied legal cache. The following are the locators and hypotheses actually compared; these are paraphrases, not transcriptions. There was no additional locator marked unverified in the README. The settled BBM and Serre limitations are listed separately below.

| Target | Source locator and extracted line | Result of comparison |
|---|---|---|
| 0.4 | BCDT §2.1, p. 861; BCDT line 900 | Both ramified quadratic fields, unit characters, and the extra negative-field unit relation agree. |
| 0.5 | BCDT (2.1.1), p. 861; BCDT line 920 | Three values on 1+s and the common value on 1+3s agree; extended Weil data retain the uniformizer value. |
| 0.6 | BCDT Lemma 2.1.1, p. 861, and §§3.1–3.2, pp. 866–867; BCDT line 934 and line 1184 | The très ramifié orientation, selected constituent and multiplicity-one clauses agree. |
| 1.1 | BCDT proof of Lemma 4.7.1, p. 882; BCDT line 1911 | Unit versus valuation pairing is the input actually used; explicit cube representatives were checked separately below. Serre's underlying citation remains waived. |
| 1.2 | BCDT (5.1.1), p. 883; §5.4, p. 890; Lemma 5.5.1, p. 894; §5.6, pp. 896–897; BCDT line 2467 | The mixed-characteristic, perfect-residue-field setting and power-series equation for t_g agree. Polynomial representatives remove the H_g ambiguity. |
| 1.12 | Manoharmayum §5.4 and Theorem 5.4.2, pp. 751–753; Manoharmayum line 892 and line 1013 | e = 12, Frobenius lift, conductor-243 rows, residue classes and very ramified 3-torsion agree. The Frobenius lift here has order 24; the e = 3 order-eight value must not be substituted. |
| 2.2 | BCDT Lemmas 5.2.1–5.2.2, pp. 886–888; BCDT line 2095 and line 2195 | Bounds 0 ≤ r,s ≤ e, the filtration divisibility, morphism exponent and extension gauge agree. The coefficient-action variant has a source misprint listed below. |
| 2.9 | BCDT Lemma 4.7.1 and Corollary 4.7.2, pp. 881–882; BCDT line 1884 | Exactness, très ramifié hypothesis and the common one-dimensional diagonal kernel agree; no surjectivity at the last displayed term is asserted. |
| 3.3 | BCDT Lemma 7.2.2, p. 905; BCDT line 3026 | The extension is local-local, killed by 3, over a totally ramified cyclic cubic; the conclusion descends its generic fibre, not its integral model. |
| 4.5 | BCDT Lemma 8.3.3, pp. 918–919; BCDT line 3589 | The extreme-weight diagonal extension images are unramified. The preceding conclusion's theorem-number slip is not copied. |
| 5.1 | BCDT Proposition 9.2.1 and proof, pp. 920–927; BCDT line 3669 | The four displayed families, signs, γ₄ eigenvalues and monodromy terms agree. The surrounding source distinguishes nonsplit residual models from arbitrary split extensions. |
| 5.4 | BCDT Lemmas 9.3.3–9.3.4, pp. 929–931; BCDT line 4100 | Dimensions 1,2,1 for weights 2,6,10, the full middle-weight image and its unramified line agree. |
| 5.10 | BCDT Corollary 4.6.4, pp. 878–879; BCDT line 1741 | The three rings are F₃[[T]]. The roadmap replaces the unjustified endomorphism-division step with a valid D[9] = D[3] argument. |
| 6.5 | BCDT Theorems 1.4.1–1.4.2, pp. 857–858; BCDT line 719 and line 767 | Residual modularity, quadratic restriction, local centralizer, type and weak-acceptability hypotheses are retained in the named GL2 lifting suppliers. |
| 6.10 | BCDT Theorem 2.2.1, p. 862, proof pp. 862–865; BCDT line 985 | Continuous absolutely irreducible F₅ representations with cyclotomic determinant are exactly the stated class. All six local branches are retained. |

Additional source comparisons included CDT Proposition B.4.2 (CDT line 2125), SBT Lemma 1.1 and Theorem 1.2 (SBT line 102 and line 123), DDT Theorem 3.14(a) (DDT line 3316), the level-75 equations and rational-point test (Elkies line 2477 and line 2489), and the two named curve rows (Cremona line 131 and line 1384). The SBT page was also inspected as a rendered image to distinguish typography from OCR artifacts.

**Computed adversarial pass (93 rows).** Each row records actual values or dimensions, including negative controls. These are tests of the statements and their conventions, not substitutes for the cited general proofs. Rows mentioning R01–R04 record the identified defect or the exact repair test. A shared row for a displayed family records each parameter case, rather than treating its members as independently proved theorems.

| Statement | Instances tried | Computed sides / values | Result; change |
|---|---|---|---|
| Conventions: odd prime, arithmetic reciprocity, matrix orientation | p = 3; p = 2; triangular (ω,*;0,1) | ω at an element of quadratic inertia is −1 at 3, but 1 at 2; subcharacter/quotient are ω/1 | Odd-prime restrictions and orientation retained. |
| Conventions: weak acceptability | 0, O[[X]]/(X), O[[X,Y]] | Relative tangent dimensions 0,0,2; a quotient of O[[X]] has dimension ≤1 | Zero quotient is allowed; two-variable ring is excluded. |
| 0.1 principal-series inducing models and multiplicity | ℓ = 3, a = 0,1,2 | Steinberg dimension 3; induced dimensions (3+1)3⁰ = 4 and (3+1)3¹ = 12; unramified principal congruence invariants have dimension 1+3 = 4 | Dimensions and the Hom multiplicity 1 agree. |
| 0.1 ramified extended normalization | s² = −3; a = 4; source-normalized ψ | N(s)=3; −(−s/54)·3²=s/6; Gauss sum 1+2ζ=ζ−ζ⁻¹; (ζ−ζ⁻¹)²=−3 | χ″(s)=−(ζ−ζ⁻¹)/3=(ζ−ζ⁻¹)⁻¹; used in R04. |
| 0.3 cubic types | 4 and 1+3j; induce scalar versus restricted-scalar character | Cubic value ζ has order 3; dimensions 1·2=2 versus erroneous 2·2=4 | Definition excludes the four-dimensional wrong model. |
| 0.4 quadratic types | −1, 4, 1+s, and negative-field 1+3s | Values −1,1,ζ,1; generated unit image has order 6, not 3 | Both signs and extra relation agree. |
| 0.5 extended types | i=0,1,2; s²=−3 | χ(1+s)=1,ζ,ζ²; χ(1+3s)=ζ; χ(s)²=−3 | Three types; finite inertia does not imply finite Weil image. |
| 0.6 cubic simple admittance | Très and peu classes; both cubic types | Selected σ₂,₁ has dimension 3 and multiplicity 1; total compact dimensions 12 and 6; peu classes admit additional constituents | Très hypothesis separates simple admittance. |
| 0.7 quadratic simple admittance | Very ramified orientation (ω,*;0,1), then peu | Selected σ′₀,₀ has multiplicity 1 in the very case; the peu case has more admitting constituents | Source's simple-admittance restriction retained. |
| 0.8 extended simple admittance | Trivial versus unramified quadratic quotient | Selected w₃ eigenvalues −1 versus +1; former multiplicity 1, latter not 1 | Full G₃ quotient condition is necessary. |
| 0.8 trace-character identity | x=3s, s²=−3, ψ(1/3)=ζ | Left ζ; printed right ψ(−1/3)=ζ⁻¹; repaired right ψ(1/3)=ζ | Fails as normalized in source; R04. |
| 1.1 cube coordinates and uniqueness | y=1,3,4,12,27/64,1/3; y=0 | Coordinates (0,0),(1,0),(0,1),(1,1),(0,0),(2,0); zero admits all 9 pairs using x=0 | Nonzero hypothesis essential; Lean matches. |
| 1.1 pairing and restriction | Unit [4], uniformizer [3], extension Q₃(∛3) | Unramified character values 0,1; cube-class dimension 2; [3] restricts to 0 in the nongalois cubic | Normality and the missing-root hypothesis prevent the false unrestricted injectivity claim. |
| 1.2 Eisenstein/descent data | Cyclic cubic; identity; conductor-243 wild generator | G=u²−1, c=1−u⁶; H₁=1, t₁=f₁,₁=0; wild t≡−1∓u⁶≠0 | Degree bound and correction terms discriminate the choices. |
| 1.3 cyclic cubic and cyclicCubic_galois | π³−3π²+3=0 | Discriminant 81; σπ=π²−2π, σ²π=3+π−π², σ³π=π; e·f=3·1=3 | Degree and order-three automorphism agree. |
| 1.4 nonabelian cubic and nonabelianCubic_finrank | π³−3π²+6=0; j²=−1 | Discriminant −324=−1·18²; root degree 3, closure degree 6, e·f=3·2=6; Galois group S₃, not C₃ | Both field-degree clauses and non-Galois clause agree. |
| 1.4 descent polynomial | H=((j−1)u²+(3−j)u−2)/4 | Reducing πH using π³=3π²−6 gives (jπ²−π+3−3j)/2 | Agrees with γ₃π; no sign reversal. |
| 1.5 positive quadratic and positiveQuadratic_finrank | s²=3, β²=s, α³−3α+3=0 | v₃α=1/3, v₃β=1/4, v₃(α/β)=1/12; e·f=12·2=24; γ₄²β=−β | Degree 24 and involution order 2 agree. |
| 1.6 negative quadratic and negativeQuadratic_finrank | α³=4, β²=−s | v₃α=0; v₃(α/β)=−1/4; v₃((α−1)/β)=1/3−1/4=1/12; degree 24 | Corrected uniformizer, not the source's nonintegral one. |
| 1.7 extended fields and extendedTypeField_finrank | i=0,1,2 | α³=3,12,21; π¹²=−3,−768,−7203; each constant has valuation 1; e·f=24 | All three cases, including i=2, pass; no out-of-range Fin index. |
| 1.7 wild corrections | γ₃ and γ₃⁻¹ | H≡1∓u⁶, t≡−1∓u⁶ modulo the stated ideals; identity corrections 0 | Wild terms distinguished from tame zero corrections. |
| 1.8 finite groups | GL₂(F₃), SL₂(F₃), GL₂(F₅), SL₂(F₅) | Enumerated orders 48,24,480,120; nonsplit normalizer intersection has order 12; β=ζ−ζ⁻¹ has β²=2 in F₅ | Normalizer and index-two arguments agree; nonabelian groups included. |
| 1.9 six local forms | Tags 1 through 6 | Conductor exponents {0,1,2},4,4,3,3,5; tag-2 scalar restriction has dimension 2, not 4 | Tags are not conductor exponents. |
| 1.10 exhaustion | Normal wild subgroup of order 3; tame subgroup | 3 divides 480 but 9 does not; a nontrivial 3-subgroup has order 3; tame branch contributes three conductor possibilities | Supports stated normalizer reduction without dropping tame cases. |
| 1.11 e=3 curves and norms | Classes 6,3,12 in the basis [3],[4] | Coordinates (1,2),(1,0),(1,1); each generated line has size 3 in a group of size 9; norm index 3 | Cubic field norm index is not the full torsion-field degree 24. |
| 1.12 e=12 curve table | b=4,1,2 in the first conductor-243 row; remaining rows | κ=1,2,4 respectively; row permutations (1,2,4),(2,4,1),(4,2,1); e·f=12·2=24 for the type field | Table permutations and distinct classes agree. |
| 1.12 Frobenius lift | Matrix (2,−1;1,1) over F₅ | Trace 3, determinant 3, discriminant 2 (nonsquare); σ⁶=3I, σ¹²=−I, σ²⁴=I, σ⁸≠I | Order 24; it must not be replaced by the e=3 order-eight lift. |
| 1.13 general comparison | A=0, E, E×E; CM field degree 2 | Ranks 0,2,4; CM coefficient rank 1; polynomials 1, X²+3, (X²+3)² | Generality is supported by CDT; missing named inputs are R01. |
| 1.13 crystalline convention | E:y²=x³−x over F₃ and F₉ | #E(F₃)=4, a₃=0, a₉=−6; arithmetic polynomial (X+3)², covariant crystalline polynomial (X+1/3)² | Inversion is essential; conventions agree with supplier. |
| 1.13 reduction boundary | Tate curve versus potentially good curve | Tate monodromy has rank 1 and N≠0; potentially good N=0; finite inertia of order 3 or 12 is prime to 5 | Potential-good hypothesis and faithful reduction test retained. |
| 1.14 extended Frobenius sign | A=9, B=−3 and −12 | Δ at −3 is −16·3⁵·13; special fibre has 1 point, trace 3; B=−12 norm factor is 7, not 1 | δ=+1; the extra unit corrects the source congruence. |
| 1.15 matrixHilbert90 | Complex conjugation; B=(i,1;0,−i); trivial group; n=1 | B⁻¹B̄=(−1,−2i;0,−1), reverse order gives +2i; c·c̄=I; trivial-group c=I | Coboundary direction and scalar boundary agree. |
| 1.15 specialLinearHilbert90 | B=diag(i,−i); determinant adjustment | det B=1, B⁻¹B̄=−I; multiplying on left by diag(d⁻¹,1) changes determinant d to 1 and leaves c unchanged | SL conclusion is stronger than scalar Hilbert 90, not padding. |
| 1.15 levelFiveConjugate | t=2, x=(1,1;0,1); t=1; x=−I | Upper entry 2 versus inverse-conjugation value 3; identity case unchanged; −I unchanged | Real-bodied definition fixes action and centre. |
| 1.15 equivariantIcosahedralLift | Identity and central involution | b(1)=I; b(−I)=−I; both project to identity; replacing b by −b gives −I at 1 and is not a homomorphism | Faithfulness and uniqueness discriminate the wrong lift. |
| 1.15 paired twist and rationality | Algebraic closure; paired E₀[5]; cusps | 480 frames, 4 primitive pairing values, 1 component after paired descent; (E₀,id) supplies a point; cusp has no elliptic fibre | Pairing condition and open elliptic locus retained. |
| 1.16 local companions | Cubic and extended cases; extension-class lines | H¹ dimension 2 gives 4 projective lines; unit line is 1, very lines are 3; avoiding one splitting line leaves 2 | Nonsplitting over the type field is a genuine selection. |
| 2.1 Breuil classification and monodromy | Rank 0, rank 1; noncommutative exponent-3 group | Orders 3⁰=1, 3¹=3; N(u)=u; UT₃(F₃) has order 27 and is noncommutative | Zero object included; commutativity excludes the wrong group category. |
| 2.2 rank-one objects/morphisms | e=3, r=0 and 3; r=1→3 | μ₃ and constant Z/3 at endpoints; morphism exponent 3(3−1)/2=3; reversed exponent violates r′≥r | Contravariance and direction agree. |
| 2.2 extension gauge | e=3,r=s=2; h=1,a=b=1 | f divisible by u; gauge increment u²−u²=0; for r=1,s=2 it is u²−u | Gauge and filtration constraint are distinct. |
| 2.3 wild descent | Identity, coefficient conjugation, γ₃ | Identity H=1,t=f=0; over F₉, j↦j³=−j despite H=1; wild t has constant −1 | A strict semilinear group action commuting with φ₁ is not the wild construction. |
| 2.4 model lattice and ideals | Zero model; μ₃ special fibre; F₉ descent | Zero Hom=0; μ₃ has F=0 and invertible V; γ₂(j)=−j | Semilinearity and torsion direction agree; generic identification retained. |
| 2.5 cubic category and ring | 0, 1⊕ω, ρ̄; test category {0} | 0 has empty filtration; 1⊕ω is not the nonsplit 2-dimensional ρ̄; {0} has 0 residual lifts, versus the required 1 base point | Closure is insufficient; R03. |
| 2.6 quadratic operator category | D=F₉², F=V=0, γ₄=diag(j,−j) | F+V=0, γ₄²=−I; on a +1 eigenspace γ₄²+1=2≠0; F²=−3=0 on D | Operator tests pass; residual membership before ring construction is R03. |
| 2.7 extended ideal | γ₃(x,y)=(x+y,y), γ₂ cube, test (0,1) | (γ₃−γ₃⁻¹)γ₂=(−1,0); F=0 fails, F(x,y)=(−y³,0) gives (2,0), opposite sign (1,0) | Third generator is independent and sign-sensitive. |
| 2.8 comparison maps | E₂₁; diag(1,−1) | (Θ₀,Θ₁,Θω)=(1,0,0), respectively (0,−1,1); trace zero gives Θω=−Θ₁ | Domains and diagonal sign agree. |
| 2.9 exact sequence | (x,y)=(1,0),(0,1) in F₃²; peu versus very class | Images E₁₂ and diag(1,2); dimensions 2→3→1; H¹(ω) dimension 2 minus connecting line 1 gives kernel 1; unit pairing 0 versus nonunit 1 | Kernel bound holds with very ramification. |
| 2.10 cubic type factorization | Zero type ring; finite levels of a lift | Zero ring has no characteristic-zero point; E[3ⁿ] order 3²ⁿ, for n=1,2 orders 9,81 | All-level claim, not residual-only; ring construction needs R03 ordering. |
| 2.11 quadratic factorization | Frobenius matrix with scalar square, determinant 3 | Eigenvalues λ,−λ give determinant −λ²=3, hence F²=−3; FV=3 yields V=−F on rational module | Sign passes; use operator statement before ring corollary in R03. |
| 3.1 cubic rank-one models | Constant versus μ₃ weights | Constant weights 1,3; μ₃ weights 0,2; duality r↦3−r exchanges the sets | Complete rank-one range retained. |
| 3.2 peu extensions | c=0,1,2 | Three classes; N(eω)=0,u⁶,2u⁶; c=0 split | Nonzero monodromy term tests the convention. |
| 3.3 generic descent | Rank-two local-local cubic model | Group order 9; connected group and connected dual exclude constant rank-one and μ₃ rank-one factors as whole model | Generic descent does not assert an integral Q₃ model. |
| 3.4 very cubic extensions | c,c′ in F₃ | 9 parameter pairs; c≠0 gives 6 pairs and F≠0; c=0 gives 3 peu/split classes | Very criterion and Frobenius criterion agree. |
| 3.5 diagonal cubic extensions | (a,a′)=(1,0),(0,1) | First parameter nonzero is ramified; second-only is unramified; hγ(0)=−aH′γ(0) | Negative constants in both diagonal cases retained. |
| 3.6 rank-three vanishing | c=1 and c=2 | bc=0 forces b=0 in each case; c=0 would leave b arbitrary | Nonsplit residual parameter is used. |
| 3.7 diagonal vanishing | Nonabelian cubic H′(0)=(3−j)/4 | Modulo 3, H′=−j≠0; (−a+b)H′=bH′ gives a=0; H′=0 would give 0=0 | Descent matrix signs give the asserted zero comparison map. |
| 3.8 cubic tangent bound | Both cubic signs | Comparison kernel dimension 2−1=1; deformation tangent ≤1 | Bound, not equality or smoothness. |
| 3.9 cubic weak acceptability | Zero ring and O[[X]]/(X²) | Relative tangent 0 and 1; second ring has nonzero nilpotent X | Quotient conclusion does not overclaim smoothness. |
| 4.1 degree-twelve rank-one descent | r=0,2,4,6,10,12 | γ₄² eigenvalue (−1)^(r/2): +1,−1,+1,−1,−1,+1 | Exactly r=2,6,10 satisfy the ideal condition. |
| 4.2 adapted basis | M′₂,₁⊕M′₂,ω over F₉ | γ₄ eigenvalues j,−j; γ₂(je)=−je while γ₂(e)=e | Eigenvectors can descend, eigenvalues need not lie in F₃. |
| 4.3 unique residual model | Weight pair (2,10); elliptic 3-torsion | Frobenius degree 3, full group order 9, hence Frobenius does not kill all E[3]; F≠0 | Distinguishes F=V=0 operator-only models; existence must be ordered as R03. |
| 4.4 reverse extension vanishing | Nonzero Frobenius parameter a | Forced equation a=0 contradicts a≠0; zero reversed Ext has dimension 0 | Nonzero Frobenius is an actual input. |
| 4.5 unramified diagonal extensions | r=2,10; Artin–Schreier c=1 | In F₉, x³−x takes only 0,j,−j, never 1; after a finite residue extension the equation has a root | Unramified splitting need not occur already over F₉. |
| 4.6 quadratic tangent | δ=3 and −3 | Common comparison kernel dimension 1; each tangent ≤1 | Both quadratic signs included. |
| 4.7 quadratic weak acceptability | 0, O, O[[X]]/(3X,X²) | Relative tangent dimensions 0,0,1 | Nonreduced and nonflat quotients are not excluded by the conclusion. |
| 5.1 four models: filtration/gauge | (2,6),(6,10),(2,10),(6,6) | max(0,r+s−12) gives 0,4,0,0; h degrees 2,6,8,0/4 meet divisibility; γ₄ eigenpairs (−j,−j),(j,j),(j,−j),(−j,j) | All four normal forms pass the filtration and tame-action tests. |
| 5.1 four models: monodromy | First three; (6,6) with c′=1 | First three N=0 on displayed generator; last N(e′)=u³⁰e and u³⁶=0 | Exceptional term survives; it cannot be dropped. |
| 5.2 classification/generic Ext | (c,c₁)=(0,0),(0,1),(1,0); (6,6) | First family split over Q₃ iff both 0, split over F′ iff c=0, peu iff c₁=0; exceptional map (c,c′)↦(c+c′,c) has determinant −1 | Full 2-dimensional Ext and the different splitting loci agree. |
| 5.3 reverse extensions | Three nonexceptional pairs and (6,6) | Ext dimensions 0,0,0,2; exceptional parameter space has 9 elements | Exceptional reversal is not suppressed. |
| 5.4 diagonal extensions | Weights 2,6,10; middle (c,c′)=(1,0),(0,1) | Dimensions 1,2,1; middle N=−u²⁴ versus 0, and h=u² versus u⁶; unramified line c=0 | Full middle-weight H¹ versus extreme-weight unramified lines. |
| 5.5 coefficient actions | k=F₃ and F₉ | F₉⊗F₃ F₉≅F₉×F₉, not a field; four weight pairs unchanged | General finite coefficient field is not restricted by linear disjointness. |
| 5.6 filtered categories | 0, ρ̄, split 1⊕ω, E[9] | Filtration lengths 0,1; split rank-two object fails; E[9] order 81, 3E[9] order 9 | Torsion exponent unrestricted; tangent still uses killed-by-3 objects. |
| 5.7 comparison vanishing | c=1,2 in exceptional family | a₂c u² divisible by u⁶ forces a₂=0; h then has only u⁶ parameter | The very hypothesis prevents the equation becoming vacuous. |
| 5.8 extended tangent bounds | Four weight pairs | Each maps into common kernel dimension 1 | Four upper bounds, no asserted equality from this step alone. |
| 5.9 Artin families | N=1,2,3; c=1 | Ring sizes 3,9,27; reduction-kernel dimensions 0,1,2; 1+T is a unit; nontrivial first-order class occurs only from N=2 | Corrects source's N=1 nontriviality clause. |
| 5.10 characteristic-three rings | D[9] element x; negative control D=(Z/9)², F(x,y)=(−3y,x) | In proof: 3Fx=0 ⇒ F²x=0 ⇒3x=0. Negative control: F²=−3 but F(3,0)=(0,3)≠0 | F kills D[3] is essential; repaired argument proves 3R=0, then R=F₃[[T]]. |
| 5.11 exceptional selection | Type point in characteristic zero; nonexceptional R | Nonexceptional rings have 3=0, but a characteristic-zero coefficient field has 3≠0; no such ring map exists | Only (6,6) can support the type point. |
| 5.12 extended weak acceptability | Each i=0,1,2 | All three use a tangent bound ≤1 and a quotient of Z₃[[X]] or 0 | Full G₃ very-ramified hypothesis retained. |
| 6.1 local constancy | Smooth noncuspidal point; cusp | Prime-to-3 level-five marking exists on the elliptic locus; cusp has no E[3] fibre | Neighborhood is taken inside the smooth elliptic locus. |
| 6.2 degree-24 cover | Ordered F₃² bases and first-vector sign quotient | 48/2=24; determinant of diag(−1,1)=−1; simultaneous −I has determinant +1 and leaves 2 pairing components | Correct sign quotient is geometrically connected. |
| 6.2 surjectivity from irreducible fibre | Subgroup order ≥24 and cyclotomic determinant | Only possible proper index-two subgroup is SL₂ of order 24, whose determinant image has size 1; required image size 2 | Full image has order 48. |
| 6.3 global companion | Nonempty Q₃-open set in P¹; irreducible cover fibre | Finite cusp set removed; degree-24 irreducible fibre plus determinant gives order 48; selected local torsion retains dimension 2 | Hilbert/local conditions supply the actual global companion. |
| 6.4 six types | Tame and five wild tags | Conductor valuations 0/1/2,4,4,3,3,5; type-field inertia orders 3 or 12 in wild cases | No omission of the tame or conductor-243 branch. |
| 6.5 lifting hypotheses | p=3,5; split local residual representation | Quadratic fields Q(√−3),Q(√5); split distinct-character centralizer dimension 2 versus required scalar dimension 1 | Local Schur and restriction hypotheses are not dropped. |
| 6.6 weight-two residual modularity | Odd irreducible F₃ representation; Hasse alternative | Weight-one lift times weight-one Eisenstein series has weight 2; Hasse multiplication would give 1+2=3 | The stated route has the correct weight. |
| 6.7 modularity comparisons/twists | E:y²=x³−x, quadratic twist by Q(i), p=5,7 | a₅=−2, χ(5)=1 gives −2; a₇=0, χ(7)=−1 gives 0; reducible 11a1[5] gives 1⊕ω₅ after semisimplification | Good-prime comparison is conditional, not an assumed global existence proof. |
| 6.8 wild companion lift | Image GL₂(F₃), cyclotomic quadratic restriction | Orders 48 and 24; standard SL₂(F₃) module remains absolutely irreducible; local nonsplit distinct-character endomorphisms are scalars | Residual and local hypotheses of the imported theorem are supplied. |
| 6.9 tame theorem and ordinary seed | Split multiplicative case at 3 | Inertia character values (−1,1), distinct; selected quotient value 1; restriction irreducibility retained | Seed is supplied by §5.10, not nonexistent §5.7; R02. |
| 6.10 mod-five modularity | Complex conjugation; six local tags | det ρ̄(c)=−1=4 in F₅; global companion image at 3 has order 48; local tags exhaust six cases | Oddness follows from determinant; source theorem matches all stated inputs. |
| 6.11 exceptional invariants | E₅₀=[1,1,1,−3,1], E₃₃₈=[1,1,1,3,−5] | (c₄,Δ,j)=(145,−800,−121945/32), (−143,−17576,1331/8) | Negative sign and isogeny formulation agree with corrected CDT. |
| 6.11 level-75 rational points | (2,−4),(0,1),(0,−2),(2,1),(−3,1),(3/4,−7/8) | Double-cover values 0,17,8,−15,5/4,185/4; at (1,−1) scaled pole value −44 | Only the listed CM point gives the finite rational lift; modular maps remain proof targets. |
| 6.12 five-switch | Borel/exceptional image; split Tate curve at 5 | Image orders 80 or 16, both prime to 3; inertia pair (2,1) at 5 versus (1,1) at 2 | Tame conclusion and ordinary quotient pass; supplier correction R02. |
| 6.13 ellipticCurve_modular | E:y²=x³−x over Z; singular model; p=2 | Δ=64; #E(F₃)=4 gives 0, #E(F₅)=8 gives −2; 2 divides Δ; Δ=0 fails IsElliptic | Point count includes infinity; good-index and ellipticity binders are correct. |

**Pinned-library audit.** The manifest pins are Mathlib `6b7abb3c7686292736be2955bd3eb9ebf63b456a` and Tau Ceti `a91d3aafa8cd3e6bc33dfde0d7677ed0f1625039`. The following twelve inspected entries pin the substantive interfaces used in the review. Paths in this table are relative to the respective library repository.

| Declaration(s) opened | File and line at the pin | Scope checked |
|---|---|---|
| groupCohomology.H1ofAutOnUnitsUnique | Mathlib/RepresentationTheory/Homological/GroupCohomology/Hilbert90.lean:107 | Finite-dimensional field extension; scalar units. It is not nonabelian matrix Hilbert 90. |
| linearIndependent_algHom_toLinearMap | Mathlib/LinearAlgebra/LinearIndependent/Lemmas.lean:479 | Linear independence of algebra homomorphisms into a domain; supports the matrix argument. |
| HeckeRing.GL2.Newform | TauCeti/NumberTheory/ModularForms/Newforms/Newform.lean:104 | New cuspidal, normalized a₁=1; its parent eigenvalue at line 91 requires a coprime index. No bad-index eigenvalue field is assumed. |
| WeierstrassCurve.Affine.Point | Mathlib/AlgebraicGeometry/EllipticCurve/Affine/Point.lean:477 | Includes infinity and nonsingular affine points. On good reduction it counts the complete elliptic curve, not just affine solutions. |
| kummerEquiv | TauCeti/NumberTheory/ClassFieldTheory/MuNRep.lean:270 | Requires n invertible in the field, not in its valuation ring; n=3 is allowed over Q₃. |
| dualityMap1_kummerCoeff_bijective | TauCeti/NumberTheory/ClassFieldTheory/Local/Duality/FiniteModule.lean:260 | Finite discrete coefficients killed by an invertible n over a nonarchimedean local field. |
| localArtinMap | TauCeti/NumberTheory/ClassFieldTheory/Local/Reciprocity.lean:116 | Finite Galois layer, target abelianized Galois group, norm quotient. |
| isArithFrobeniusLift_of_mk_eq_artinMap_uniformizer | TauCeti/NumberTheory/ClassFieldTheory/Local/Unramified.lean:440 | Uniformizer maps to arithmetic Frobenius; no geometric inversion is hidden. |
| localAbelianGaloisEquiv | TauCeti/NumberTheory/ClassFieldTheory/LocalExistence/AbelianLayer.lean:114 | Removes abelianization only under the abelian-class-field-layer hypothesis. |
| det_tateModuleGaloisRepresentation | TauCeti/AlgebraicGeometry/EllipticCurve/TateModule/Determinant.lean:52 | Elliptic curve, prime ℓ nonzero in the separably closed extension; determinant is cyclotomic. |
| isTotallyRamified_iff_exists_eisenstein_generator | TauCeti/NumberTheory/LocalField/Eisenstein/TotallyRamified.lean:162 | Finite extension of nonarchimedean local fields; both directions retain the generating-root condition. |
| Matrix.SpecialLinearGroup.toPGL | Mathlib/LinearAlgebra/Matrix/GeneralLinearGroup/Projective.lean:100 | Actual group homomorphism used by the lift signature; the centre is quotiented on projectivization. |

Additional name resolution located ContRepresentation (Mathlib/RepresentationTheory/Continuous/Basic.lean:54), the absolute Galois carrier (TauCeti/FieldTheory/Galois/AbsoluteGaloisGroup/Basic.lean:312), continuous cocycles and their quotient (TauCeti/RepresentationTheory/Homological/ContCohomology/LowDegree.lean:469,712,717), coefficient/restriction maps (Functoriality.lean:161,222 in that directory), and the Weil-pairing/Tate-action declarations. The finite-dimensional scalar Hilbert-90 input was not mistaken for a matrix result.

**Ownership and supplier audit.** Object searches used the roadmap service and the provided main/open-head copies, and searched the board packages and both pinned libraries. Search objects included wild Breuil descent, finite-flat models and filtrations, type/admittance predicates, common abelian Weil realizations, matrix Hilbert 90, Schur covers, paired level-five twists, and elliptic modularity. No conflicting fully qualified name among this file's sixteen declarations was found. The package copy of this roadmap is the same owner, not another supplier.

The following 23 supplier rows record the resolutions. In this table a path written as `Name/README.md` is under `TauCetiRoadmap/`; line numbers refer to that supplier, not the target roadmap. Main was used for existing roadmaps; the service's open new-roadmap head was used for the pending suppliers. Revision pull requests were not substituted for main. The nested RepresentationTheory/InductionRestriction path was read directly on main after the service's flat-name lookup failed.

| Supplier | Resolved sections and line witnesses | Contract assessment |
|---|---|---|
| ClassFieldTheory | README.md:460 (§2.6), 920 (Layer 5), 1312 (7), 1433 (8), 1683 (11), 1724 (12) | Arithmetic reciprocity, Kummer/duality and existence are earlier inputs. |
| LocalGaloisGroups | README.md:299, Layer 1 | General local cohomology dimensions; no duplicate explicit Q₃ cube basis. |
| LocalFieldsRamification | README.md:72,576,724, Layers 0,2,3 | Local valuations, unramified Frobenius and Eisenstein generators. |
| EllipticCurves | README.md:647,793, Layers 2,4 | Torsion and local reduction; not a supplier of general abelian endomorphism independence. |
| ModularCurves | README.md:375,386,875,1313,1357, §§0D,0E,2F,5B,5C | Rational-base paired twist and descent. The arbitrary-characteristic-zero base construction in §1.15 is a stated extension. |
| ModularForms | README.md:532,996, Layers 4,9; Layer 0 character Eisenstein series | Native newforms/primitive associates and twist coefficients; no new carrier here. |
| Chebotarev | Through ArithmeticGaloisRepresentations README.md:3147, §5.1 | Density is consumed through the named recognition input. |
| RepresentationTheory/InductionRestriction | README.md:721,757,806, Layer 7 | Factor sets and representation groups are imported; the faithful equivariant SL₂(F₅) lift is the additional target. |
| PadicLocalLanglandsForGL2Qp | README.md:267,855,1447,2025, §§0.3,2.8,4.4,5.13 | Full residual normalizer representations and admittance exist; explicit BCDT inducing formulas/reductions remain here. |
| LocalGaloisDeformationRings | §§1.4,1.12,3.12; README.md:3758, §8.6 | Type quotients and category deformation rings imported; residual membership requirement gives R03. |
| FiniteFlatGroupsAndIntegralPadicHodgeTheory | README.md:1737,1858,1922,2026; 3168,3236,3289,3326; 6265,6814,6936,6976,7218 | R07.1.20/.22/.24/.25, R07.2.5–.8, R07.4.18/.27/.30–.35 resolve. Arbitrary-ramification positive-monodromy descent differs explicitly from the tame convention. |
| GL2AutomorphicRepresentationsAndTransfer | README.md:779,820, Layer R16.3, and line 2445, R17.5.17 | Types/local normalization and octahedral mod-3 modularity have an existing owner. |
| GL2ModularityLifting | README.md:1308,1364,1406,1459,1476, §§5.6,5.9,5.11,5.14,5.15 | Component, Kisin and BCDT lifting inputs resolve; no duplication of general lifting machinery. |
| ClassicalSerreModularity | README.md:423, §I.1 | Full ordinary lifting, including the imaginary-quadratic distinction. |
| OrdinaryAutomorphicFormsAndModularityLifting | README.md:683, §5.10 | Selected distinguished residual seed resolves; §5.7 does not, as R02 records. |
| ModularCurvesPartII | README.md:1560,1904,1936,1966,2212, §§4.10,5.13–5.15,6.5 | Fixed pairing, compactification, level maps and geometric connectedness. |
| InverseGaloisAndArithmeticFundamentalGroups | README.md:2280, §IG.2.7 | Hilbert specialization with finitely many local conditions. |
| AutomorphicGaloisRepresentations | README.md:1134,3097, §§1.5,7.3 | Rank-two newform realization and fixed-eigenform compatible family. |
| ArithmeticGaloisRepresentations | README.md:1127,2843,2876,2912,3011,3147,3193,3217,3631,3827,3870 | All cited recognition, image, determinant and elliptic Euler-factor sections resolve. |
| AlgebraicModularFormsAndSerreWeights | README.md:18 alias dictionary; 591,712,757,1296,1585 | R15.3 means Layer 3, R15.5 Layer 5, R15.6 Layer 7. These are valid aliases, not missing sections. |
| EllipticCurveModularity | README.md:1019,1260,1471,1604, Layers R29.3–R29.6 | Conditional attachment, exact conductor and parametrization, independent of the earlier Serre-based existence route. |
| PadicHodgeTheory | README.md:1427,1499, §§8.3,9.3 | Covariant period adapter and good-reduction criterion; reciprocal Frobenius convention agrees. |
| ComplexMultiplicationAndExplicitReciprocity | README.md:674, CM induction and compatible-system comparison | Existing CM modularity comparison retained. |

AbelianSchemesAndArithmeticModuli §§A6.10–A6.12/A6.21 is an additional earlier owner found by the audit, whose missing citation is R01. Searches in the supplied sibling open roadmaps did not identify another owner for the explicit wild 3-adic normal forms, corrected wild descent, or matrix/icosahedral targets. Generic local deformation, tame Breuil, modular-curve, and CM constructions are explicitly imported. No move to a later supplier is proposed.

**Headline coverage.** The ten Lean acceptance targets are the cube basis, cyclic cubic Galois structure, nonabelian cubic degree, the three degree-24 families, GL and SL Hilbert 90, the equivariant icosahedral lift, and elliptic modularity. All occur in the README and have actual native carriers. The four small definitions plus the two field abbreviations serve those targets. The module docstring names the remaining deep outputs and their absent carriers: simple admittance; Breuil classification/wild descent; tangent bounds, weak acceptability and characteristic-three deformation rings; general cross-prime abelian comparison; twisted-curve rationality and companions; residual modularity/comparisons; and the conductor/parametrization refinement. No statable headline omission or stand-in was identified. The README's definitions have API lists and discriminating Checks; the convention omission in §0.8 is R04.

## Not verifiable

- **BBM**, Théorie de Dieudonné cristalline II, §4.2.14, used in §2.1: settled as uncertified because publisher access is restricted. The supplied source inventory has no readable text for it. Its comparison was not independently certified; the BCDT restatement was checked. No new request was made.
- **Serre**, Corps locaux, Ch. XIV §1, Proposition 3, used in §1.1: settled as waived; no readable text is supplied. The BCDT use, pinned Kummer/duality interfaces, and explicit unit/valuation computation were checked. No new request was made.

No other sampled source was unreadable. These two settled limitations are not additional findings and do not account for the needs-changes verdict.

## Source issues

The following concern the sources, not defects to copy back into the roadmap. Most are already corrected explicitly by this README. The source's minus sign in BCDT §3.4 is correct; R04 concerns the roadmap's changed sign and unspecified normalization.

- **Misprint** in BCDT at Corollary 2.3.2, printed p. 866 (BCDT line 1160): the source says the residual three-torsion representation has target GL₃(F₃); it should be GL₂(F₃); affects a stated result.
- **Error** in BCDT at proof of Lemma 2.3.1, printed p. 866 (BCDT line 1151): the source says the displayed norm is congruent to s(1−3s) for all allowed B; it should be multiplied by 1−2(B+3)/3, a character-trivial unit; affects the proof.
- **Misprint** in BCDT at Lemma 5.2.3(1), printed p. 887 (BCDT line 2166): the source says the underlying k-module rank is [k′:k]; it should be [k′:F_ℓ] under the stated linearly disjoint coefficient convention; affects a stated result.
- **Misprint** in BCDT at Lemma 5.2.3(2), printed p. 887 (BCDT line 2169): the source says the parameter b is a unit while the displayed morphism and equation use b′; it should be b′ throughout that parameter clause; affects nothing.
- **Misprint** in BCDT at §§6.3–6.4, printed pp. 900–901 (BCDT line 2785 and line 2840): the source says γ₄² has order three; it should be order two, as its action on β and subsequent relations show; affects a stated result.
- **Error** in BCDT at §6.4, printed p. 902 (BCDT line 2865): the source says α/β is a uniformizer when α³=4; it should be (α−1)/β, of valuation 1/12 instead of −1/4; affects the proof.
- **Misprint** in BCDT at §6.4, printed p. 902 (BCDT line 2848 and line 2858): the source says two Galois groups use the positive-field subscript 3; it should be the negative-field subscript −3; affects nothing.
- **Misprint** in BCDT at §6.4, printed p. 902 (BCDT line 2869): the source says the subgroup generated by γ₂ and γ₄ lifts tame inertia; it should say the tame Galois quotient, since γ₂ acts nontrivially on the residue field; affects nothing.
- **Misprint** in BCDT at §7.4 descent display, printed p. 910 (BCDT line 3215 and line 3217): the source says the second generator has cross term on e′ω and repeats e′ω as fourth input; it should be cross term on eω and fourth input e′₁; affects the proof.
- **Misprint** in BCDT at §8.3 conclusion, printed p. 918 (BCDT line 3587): the source says the quadratic argument proves Theorem 4.4.1; it should be Theorem 4.5.1; affects nothing.
- **Error** in BCDT at Proposition 9.2.1, printed p. 920 (BCDT line 3669): the source says the four weight pairs exhaust an arbitrary generic extension; it should qualify exhaustion by nonsplitting, since the split (2,2) direct sum also satisfies the ideal; affects a stated result.
- **Error** in BCDT at Theorem 4.6.3, printed p. 878 (BCDT line 1728 and line 1737): the source says the first-order nontriviality clause holds for every N≥1; it should apply for N≥2, with N=1 the residual representation; affects a stated result.
- **Gap** in BCDT at proof of Corollary 4.6.4, printed p. 879 (BCDT line 1777): the source says factoring F through 3D yields F=3F′ with F′ an endomorphism of D; it should justify that extension or use D[9]=D[3] and finite length; affects the proof.
- **Misprint** in SBT at Lemma 1.1, author-copy p. 3, published p. 285 (SBT line 102): the source says the twist over K is P¹ over Q; it should be P¹ over K; affects a stated result.
- **Misprint** in SBT at proof of Lemma 1.1, author-copy p. 3, published p. 285 (SBT line 118): the source says the lifting homomorphism has source SL₅(F₅); it should be SL₂(F₅); affects the proof.
- **Error** in CDT at Lemma 7.2.3, printed p. 554 (CDT line 1659 and line 1665): the source says the conductor-50 case has positive j=5·29³/2⁵ for the curve itself; it should have an isogenous representative with j=−5·29³/2⁵; affects a stated result; corrected in print at BCDT §10, p. 938 (BCDT line 4465).
- **Misprint** in Elkies at Appendix, level 75, author-copy p. 55 (Elkies line 2505): the source says the seven finite rational points belong to X₀(75)/⟨w₅⟩; it should name X₀⁺⁺(75), the elliptic quotient whose seven points were just tested; affects nothing.
