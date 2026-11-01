# Review of EisensteinIdealAndRationalTorsion (pull request #1264 at 1131560)

**Verdict:** needs changes

## R01 (P2) — Finish the Manin–Drinfeld ownership transfer

**Location:** `TauCetiRoadmap/EisensteinIdealAndRationalTorsion/README.md:13`: “EllipticCurveModularityPartII §6.0c consumes this theorem; its geometric torsion target is supplied here.” The theorem is declared at line 999.

**Claim:** The generality repair is complete, but the asserted single ownership is not yet true of the available open work. The later roadmap still declares and plans a proof of the same general theorem independently. This is the unresolved ownership portion of previous R03, not a request to restrict the theorem again.

**Witness:** `TauCetiRoadmap/EllipticCurveModularityPartII/README.md:649` still says “Prove cuspidal-divisor-torsion” for every congruence modular curve, including nonsquarefree levels and Cartan quotients; line 651 imports the splitting and period inputs directly, not this theorem.

**Repair:** Retain the general theorem and its earlier ownership here. Coordinate the corresponding change in the later roadmap's own work: replace its independent target/proof route with an import of EisensteinIdealAndRationalTorsion §7.9, and update its supplier contract and consumers. Do not add an upward dependency here or an out-of-folder edit to this pull request. Until that change is reflected in the later text, describe the ownership transfer accurately rather than claiming it has already happened.

**Repair test:** Both consumers then use one theorem covering N=1 and N=4 (class zero, order 1), N=11 (cusp difference of order 5), and Cartan quotients. The separate squarefree hypothesis of the Atkin–Lehner transitivity corollary remains: N=4 has three cusps but only two exact-divisor involutions. The direction is rational splitting → this general geometric theorem → later modularity, with no reverse edge.

## R02 (P3) — Correct the modular-quotient section range

**Location:** `TauCetiRoadmap/EisensteinIdealAndRationalTorsion/README.md:49`, also lines 464, 476, 1030 and 1047: “§§16.1–16.8”.

**Claim:** The cited supplier has no §16.8. Its Layer 16 ends at §16.7 and its Examples/Dependencies. The needed mathematics is present in the existing sections; this is a locator defect, not an unowned prerequisite.

**Witness:** `TauCetiRoadmap/ModularCurvesPartII/README.md:4219` starts §16.7, the nonconstant Abel–Jacobi composite; line 4243 starts Layer 17. Sections 16.2–16.6 give the actual modular quotient, differential and oldform comparisons.

**Repair:** Replace each range ending in 16.8 by the exact existing sections used, or 16.1–16.7 where the whole layer is intended. Check all five occurrences.

**Repair test:** The genus-one level-11 projection still has nonzero differential rank 1; at genus-zero level 13 there is no nonzero new quotient. The corrected citations supply those distinctions without a fictitious eighth section.

## R03 (P3) — Update the cyclotomic supplier declaration names

**Location:** `TauCetiRoadmap/EisensteinIdealAndRationalTorsion/README.md:132` and line 134, including “`cyclotomicClassEigenspaces`”, “`herbrand`”, “`inverseCharacterClassGroup`” and “`inverseCharacterUnramifiedQuotient_zero`”.

**Claim:** These exact names, and `cyclotomicClassEigenspace_one_eq_zero`, no longer name declarations in the supplier's README or acceptance file. The underlying results are still explicitly owned in the cited sections. Preserve that mathematical contract while correcting its names; no gap declaration or duplicated local construction is needed.

**Witness:** `TauCetiRoadmap/CyclotomicClassGroupsAndStickelberger/README.md:1230` names `inverseCharacterClassGroup_all_levels`; §8.2, line 1255, states the unramified quotient in prose. Sections 0.3 and 3.2 likewise state decomposition, Herbrand's implication and the exponent-one exception in prose.

**Repair:** Cite §§0.2–0.3 for the native eigenspace/decomposition, §3.2 for the annihilator and exceptional component, and §§8.1–8.2 for the inverse-character quotient. Where a Lean name is wanted, use `inverseCharacterClassGroup_all_levels` specialized to r=1; retain the existing `bernoulli_annihilates_component`. Remove the obsolete names rather than demanding new aliases from the supplier.

**Repair test:** At p=5, r=1, exponent −1 is 3, and B₂=1/6 is a unit modulo 5. At p=3 the exponent is 1 and uses the separate exceptional-component argument. Both are explicitly covered by the present supplier. This repair changes neither the character nor the conductor.

## R04 (P3) — Restore the object names lost during prose conversion

**Location:** `TauCetiRoadmap/EisensteinIdealAndRationalTorsion/README.md:180`: “Define §0.2 as the ℤ-subalgebra”; lines 443, 447–448 similarly say “Construct §2.3”, “connected kernel §2.3” and “iff it kills §2.3”.

**Claim:** A subsection number has replaced a mathematical object. In particular, the quotient universal property must identify the subgroup being killed. Removing undeclared Lean identifiers should not remove ordinary mathematical notation.

**Witness:** Line 180 subsequently uses H_P without giving that name to the construction. Line 441 already defines B_a and A_a, but the following API refers to a section as its kernel.

**Repair:** Write “Define H_P as …”; construct B_a from the finite generating set, then A_a as its quotient; state that q_a has connected kernel B_a and that descent is equivalent to killing B_a. Also restore the missing grammatical subjects in the analogous “In …, defines/supplies …” explanatory sentences.

**Repair test:** For a=0, γ_a=0, B_a=0 and A_a=J. For a=T, γ_a=T, B_a=J and A_a=0. The repaired kernel and universal-property sentences correctly distinguish these two cases. For T=0, H_P=ℤ with zero Eisenstein kernel.

## Verified sound

This full review read all **56 numbered subsections**, their formulas, API claims, Checks, conventions and Needs lines; all **six Lean declarations**; and all **15 seeded source targets**. Finite arithmetic was recomputed, rather than inferred from the sorry build. No numerical counterexample was found. The blocking issue is the remaining duplicate ownership, not the correctness of the expanded Manin–Drinfeld statement or the repaired level-thirteen targets.

### Previous findings, checked before the full pass

| Previous finding | Repaired passage at this head | Assessment |
| --- | --- | --- |
| R01: unowned fixed level-thirteen facts | README:1063 says “Construct the isomorphism”; :1113 says “proved facts”; :1195 says “Prove `cyclotomic_thirteen_class_number`”; :1241 gives the unconditional descent endpoint. | Repaired. Model identification, cusp divisors, exact torsion/intersection and class number are targets with proof inputs. No permanent hClass13 or unproved fixed-data hypothesis remains. |
| R02: missing native headlines | Suggested.lean:51 states `order_thirteen_exclusion`; :62 states `all_prime_torsion`; :69 states `elliptic_fixed_torsion_zero`. The module docstring explicitly names the residual-constituent and curve-finiteness headlines. | Repaired. The class-number headline is also now present at :45. All six statements elaborate at the pins. |
| R03: restricted and duplicated cusp torsion | README:999 says “For every smooth projective congruence modular curve”; :1001 imports the rational splitting and period comparison; :13 assigns ownership here. | Partly repaired. Generality, proof inputs and the squarefree-example distinction are repaired. The later independent declaration remains: current R01. |
| R04: undeclared local Lean names in API/Checks | README:188 says “h∈I_full iff ε(h)=0”; :196 gives the scalar-kernel Check in mathematical prose. The six actual theorem names remain in both files. | The original declaration-catalogue defect is repaired. The conversion introduced malformed object references: current R04. |

No repair report settling any of these findings as “not actionable in this package” was available. This report does not reopen a settled supplier gap; none is declared.

### Gate, scope, elaboration and padding

The supplied gate at 1131560 passes every scanner, dependency check and targeted build. I independently elaborated the unmodified Suggested.lean with `lake env lean`: exit 0, exactly six sorry warnings. The worktree head matches the requested full hash, the diff outside this roadmap folder is empty, and the worktree remained unchanged. No sorry-defined data, option override, admitted example, disallowed import, executable algorithm target or copied source passage was found. The small determinant and point-count calculations are mathematical proof witnesses.

The requested dependency command returned exactly:

```text
depcheck: 205 roadmaps, 1472 edges, 0 problem(s)
```

There is no UPWARD or CYCLE line. R01 is a duplicate declaration across open work, not an upward Needs edge. The ownership transfer should keep this earlier roadmap as supplier.

A scratch copy appended `#check @name` for all six declarations. The expanded types preserve primality, the five excluded levels where appropriate, ellipticity, exact order, the bound 7<P, and fixedness under every rational Galois automorphism. `occurring_small_primes` concludes an actual Weierstrass model with an ellipticity proof and a point, and `cyclotomic_thirteen_class_number` uses the native field/class number. No binder disappeared and no change to a signature is needed.

For each theorem the scratch probe tried closure by `simp`, `rfl`, and `infer_instance`, using `solve` to distinguish a closed goal from a tactic that merely makes progress. All **18 closure attempts failed**. Searches by mathematical object found no pinned single theorem that directly proves one of these conclusions. `occurring_small_primes` is the occurrence half of the headline classification, rather than an API lemma for a new definition. No padding finding is raised. The file has no local definitions needing additional acceptance-file API.

### Headline coverage

| README headline | Suggested.lean assessment |
| --- | --- |
| §0.4 integral Hecke duality and exact index | Explicitly named as not statable: integral Hecke/differential objects are missing. |
| §§1.4–1.6 exact cusp order, Shimura subgroup and integral intersection | Explicitly named as not statable: marked modular Jacobians and integral subgroups are missing. |
| §§3.1–3.5 residual criterion and odd multiplicity one | Explicitly named as not statable: modular Hecke actions and their torsion realizations are missing. |
| §§4.5–4.8 dyadic multiplicity, homology freeness, winding isomorphism/principality | Explicitly named as not statable: modular integral homology and period/Hecke comparisons are missing. |
| §§5.1–5.4 quotient torsion, Ogg and Shimura maximality | Explicitly named as not statable: the modular abelian varieties and marked subgroups/maps are missing. |
| §§6.2–6.6 localized finiteness, quotient rank/points, odd Sha and curve-point finiteness | Docstring identifies the constructed Eisenstein quotient, arithmetic cohomology and algebraic modular curve as missing. |
| §7.8 positive-genus prime exclusion | Present: `isogeny_iteration`. |
| §7.9 formal immersion, general Manin–Drinfeld and reduction corollary | Docstring identifies missing integral modular curves, smooth loci, cusps, Jacobians and Néron quotient maps. R01 concerns ownership only. |
| §§8.1–8.6 model, norm-19 descent, J₁(13) rank zero and cusp-only points | Missing modular constructions are explicitly named; the native consequence `order_thirteen_exclusion` is present. |
| §8.5 fixed cyclotomic class number | Present: `cyclotomic_thirteen_class_number`. |
| §§8.7–8.9 occurrence, prime classification and fixed elliptic torsion | Present: `occurring_small_primes`, `all_prime_torsion`, `elliptic_fixed_torsion_zero`; the modular residual half remains dependent on the marked Jacobian. |

### Source sample

All 15 seeded targets were checked against the legal text, including printed pages, numbering, hypotheses and proof-step generality. No additional locator is labelled unverified in the README. Eight of nine referenced works were readable; the exception is below. The table records support, not a claim that each proof has been formalized.

| Target | Locator and extracted-text witness | What was verified |
| --- | --- | --- |
| 0.1 | Mazur1977 Introduction Theorem (1), p.33, lines 43–47; II §11, pp.98–99, lines 2786–2807 | Reduced numerator and cusp order. Source uses prime level at least 5; levels 2 and 3 are separately zero-genus cases here. |
| 0.2 | Mazur1977 II §§6,9, pp.87–88,94–96, especially lines 2656–2661 | Generators 1+w and T_l−1−l. H_P⊂T×ℤ is the roadmap's direct integral-order construction; its projection argument was checked separately. |
| 0.4 | Mazur1977 II Propositions 9.3–9.4 and 9.7, pp.94–96, lines 2616–2642 and 2673 onward | Integral coefficient pairing and exact index, with the genus-zero convention separated. |
| 1.7 | Mazur1977 II equations 11.3–11.4, p.99, lines 2815–2823 | Specialization/retraction to C and direct-sum interpretation; not a pointwise lifting assertion for arbitrary quotients. |
| 4.2 | Mazur1977 II Proposition 12.2, Lemma 12.3, pp.104–108, lines 2995–3003 and 3086–3103; MazurWiles1984Errata lines 403–430 | P≡1 mod8, exact order r, norm −1; P≡9 mod16 for A+B=0. The corrected square argument is explicitly retained. |
| 4.6 | Mazur1977 II Proposition 18.3, pp.135–136, lines 4156–4180 | Completed integral homology is free over the complex-conjugation group ring, including the dyadic case. |
| 4.7 | Mazur1977 II §§18.7–18.10, pp.137–139, lines 4210–4217, 4224–4247 and 4263–4302 | Factor two belongs to invariants→coinvariants; normalization is integral, with the square-root interpretation at the dyadic auxiliary prime. |
| 5.1 | Mazur1977 III Lemma 1.1, pp.141–142, lines 4366–4398 | Torsion support for quotient abelian varieties; extra Hecke/simple-factor hypotheses are retained. |
| 5.3 | Mazur1977 III Theorem 1.3, pp.142–143, lines 4408–4428 | Maximal μ-type subgroup, meaning constant Cartier dual; not every multiplicative-type subgroup. |
| 5.4 | Mazur1977 III Corollaries 1.4–1.5, p.143, lines 4437–4447 | Cuspidal subgroup injects into the actual Eisenstein quotient, and its torsion is the cuspidal image. |
| 6.5 | Mazur1977 III Proposition 3.6, pp.150–151, lines 4710–4739 | Odd Eisenstein-primary Sha vanishes; dyadic finiteness is distinct. Proof requires primary nilpotence as well as injectivity. |
| 6.6 | Mazur1977 III Theorem 4.1, pp.151–152, lines 4754–4764 | Positive genus, nonzero Eisenstein quotient and a nonconstant map with finite fibres. |
| 7.5 | Mazur1977 III §5, Step 3, pp.159–160, lines 5039–5070; cusp convention at lines 1422–1428 | Global component escape and nonzero cusp difference. The roadmap corrects the reversed cusp labels in that proof. |
| 8.2 | MazurTate1973 §§2–3, pp.41–45, lines 137–214 | Order-six diamond action, conjugate norm-19 factors, twisted interchange and dimensions 2+2. Labels fixed by rational cusp annihilation. |
| 8.5 | MazurTate1973 §4, pp.47–48, lines 277–301 | Constant-torsor descent, class number one input, 19-divisible local units and injective Kummer localization. The README additionally proves the numerical input by its own norm calculation. |

Additional readings: Elkik1990 lines 23–30 and 46–132, pp.59–62, for the unrestricted congruence theorem and rational-period criterion; Mazur1978 lines 522–582 and 627–650, pp.142–145, for general-level formal immersion and the squarefree reduction corollary; DeligneRapoport1973 lines 4932–5045, pp.298–302, for Tate cusps and contraction. SutherlandModels lines 5–10 and BruinDerickxStoll2021 lines 98–115 support the explicit level-13 model and cusps. MazurTate1973 lines 128–159 and 245–276 support genus, simplicity and local isogeny surjectivity. MazurWiles1984Errata lines 394–434 supplies the three published corrections used here. The latter was read from the service's existing legal GDZ extraction after a redundant refresh was stopped; no source was fetched from an unauthorized mirror.

### Adversarial calculations

The rows below cover all 56 numbered targets, the sampled statements, all six native headlines and each finding's mathematical interface. They distinguish actual finite computations from abstract module tests. “Agrees” means that the displayed instance or necessary algebraic calculation agrees; source evidence above is still needed for the general geometric theorem. A hypothetical order-11 point is never treated as an existing elliptic curve.

| Statement | Instances tried | Values on the two sides / competing construction | Result and change |
| --- | --- | --- | --- |
| Conventions: index, cusp sign, weights | P=2,3,11,13,17; c=1 in ℤ/5; coefficients a₁=1,a₂=3,a₄=7 | n=1,1,5,1,4; w(c)=4=−1 mod 5; a₁(T₂f)=3, a₂(T₂f)=7+2=9, versus 7 if the weight-two term is dropped | Agrees on these instances; no mathematical change. |
| Integral supplier conventions | A node, characteristic 2; t↦t² on G_m; genus zero | Residues a+(−a)=0, also 1+1=0 in F₂; inseparable degree 2 versus one geometric kernel point; H⁰(ω)=H¹(O)=0 | Agrees on these instances; no mathematical change. |
| 0.1 cuspidal index | P=2,3,5,7,11,13,17,19,37,41,73; junk P=1 | n=1,1,1,1,5,1,4,3,3,10,6; at nonprime 1 the arithmetic expression is 0, so positivity uses primality | Agrees on these instances; no mathematical change. |
| 0.2 two Eisenstein ideals | T=0; level-11 quotient; invertible Fricke coset | H=ℤ, ker ε=0 when T=0; full scalar kernel 0 versus cuspidal kernel 5ℤ; ε(1+w)=0 versus degree(1+w)=2 | Values agree; restore object notation, R04. |
| 0.3 integral congruence | (P,m)=(11,5),(11,25),(11,11),(17,4),(13,1) | m divides n gives true,false,false,true,true; a₁(δ)=1,a₂=3,a₄=7 for these levels; modulus 0 is excluded | Agrees on these instances; no mathematical change. |
| 0.4 duality/index | Genus-zero T; P=11 and17 | ℤ/1 has one element and zero module rank; quotient orders 5 and4; 10 and16 are not the claimed indices | Agrees on these instances; no mathematical change. |
| 1.1 cuspidal class | P=13; cyclic model for P=11 | Zero Jacobian gives c=0 despite two cusps; in ℤ/5, c=1 and −c=4 are distinct | Agrees on these instances; no mathematical change. |
| 1.2 Hecke action | P=11,l=2 and3; P=13 | (1+2)c=3c and (1+3)c=4c; U_P c=c and wc=4c; 5c=0; zero-Jacobian values all0 | Agrees on these instances; no mathematical change. |
| 1.3 component group | P=11 weights2,3; P=17 weights1,3; genus zero | Weighted determinant 2·3(1/2+1/3)=5, versus unweighted2; 1·3(1+1/3)=4; n=1 gives trivial group | Agrees on these instances; no mathematical change. |
| 1.4 order/integral model | P=11,17,13; char2 model at17 | Exact cusp orders 5,4,1; rank-four cyclic model with μ₂ subgroup has geometric special order2, versus4 for constant ℤ/4 | Agrees on these instances; no mathematical change. |
| 1.5 Shimura subgroup | P=11,13; μ₅ over ℚ and F₅ | Geometric rank/order5 versus rational μ₅(ℚ) order1; special rank5 versus one geometric point; degree-one cover gives trivial dual | Agrees on these instances; no mathematical change. |
| 1.6 intersection | Odd n=5; even n=4 | Common constant/cyclotomic subgroup has rank1 at11; μ₂ intersection has rank2 at17; sum at17 has rank4·4/2=8, not16 | Agrees on these instances; no mathematical change. |
| 1.7 retraction | M=ℤ⊕ℤ/5, C second factor; zero M | r(2,3)=3; inverse split map gives ((2,0),3) and returns (2,3); r(0)=0; zero model gives 0⊕0 | Agrees on these instances; no mathematical change. |
| 2.1 ideal kernel | Unit ideal; scalar5 on genus1; inclusion (10)⊂(5) | Unit kernel rank1; J[5] generic rank25 versus cusp rank5; J[5]⊂J[10], ranks25≤100 | Agrees on these instances; no mathematical change. |
| 2.2 maximal ideals/completion | P=11,41,13 | Residual prime sets {5},{2,5},empty; residue field cardinalities5 and2; 13 never divides n=1 | Agrees on these instances; no mathematical change. |
| 2.3 connected quotient | a=0,a=T,a=(5) in T=ℤ; P=13 | γ=0,T,0 respectively, so A=J,0,J; but [5]J=J and J/5J=0; at13 J=A=0 | Values agree; restore object notation, R04. |
| 2.4 support | Model T=ℤ×ℤ, a=5ℤ×ℤ | Completion ℤ₅×0, γ=0×ℤ; for J=A₁×A₂ the retained quotient is A₁, not A₂; unit ideal retains0 | Agrees on these instances; no mathematical change. |
| 3.1 residual constituents | P=11,ℓ=5, Frobenius2; ℓ=11; P=17,ℓ=2 | Expected polynomial (X−1)(X−2)=X²−3X+2; 11∤5 excludes level-prime Eisenstein support; mod2 both characters1, but constant/μ₂ special point counts2/1 | Agrees on these instances; no mathematical change. |
| 3.2 étale multiplicity | Ordinary genus-one model atℓ=5; zero factor | Tate rank2, étale rank1; J[5] generic rank25 and ordinary étale rank5, not25; zero factor rank0 | Agrees on these instances; no mathematical change. |
| 3.3 good primes | (P,ℓ,l)=(11,5,2),(11,5,31),(17,2,2) | Fifth powers mod11={1,10}; half-difference3 versus0 mod5; fourth powers mod17={1,4,13,16}, while 6²=2 mod17 | Agrees on these instances; no mathematical change. |
| 3.4 good-prime existence and freeness | Residue class2 mod55; odd-dyadic class3 mod68 | gcd(2,55)=1; l=2 is good for(11,5); gcd(3,68)=1, 3 is nonsquare mod17 and3 mod4; CRT classes are nonempty | Agrees on these instances; no mathematical change. |
| 3.5 odd kernel | P=11,ℓ=5; P=19,ℓ=3; dyadic control | Constant⊕cyclotomic ranks25 and9, dimensions2; at17 direct sum would rank4 but loses the nonidentity conjugation matrix on D | Agrees on these instances; no mathematical change. |
| 4.1 winding | Rank-one period model c=1/5 modℤ; reversed path; group ring | 5e=1 integral, e=1/5 nonintegral; reversal −1/5; invariant 1+σ maps to2 in coinvariants | Agrees on these instances; no mathematical change. |
| 4.2 quadratic modular unit | P=17,41,73; involution applied twice | Exact Bernoulli sums8,32,88 give r=2,8,22; at41 4 mod8 has order2; f↦−1/f twice returns f and product is−1 | Agrees on these instances; no mathematical change. |
| 4.3 dyadic embedding | P=17,41; D over F₂ | n=4,10; at17 sum of 2-primary C,Σ has rank8; at41 it has rank2, too small for rank4 D; D has2 geometric special points versus4 for split constant | Agrees on these instances; no mathematical change. |
| 4.4 plus separation | D residual matrix σ=[[1,1],[0,1]] in F₂; w=−1 | σ−1 has rank1; −1=+1 mod2, so a +1 eigenspace test alone has dimension2 and cannot establish geometric separation | Agrees on these instances; no mathematical change. |
| 4.5 saturation/local ring | M=μ₂; wrong overgroup D×ℤ/2 | Amalgam rank2·2=4, étale order2; wrong overgroup rank8, étale order4 despite quotient order2 and exponent2 | Agrees on these instances; no mathematical change. |
| 4.6 homology group ring | Basis e₁,e₂ with σ swapping them, over ℤ₂ and F₂ | Invariants rank1 generated (1,1); coinvariants rank1; canonical map sends1→2, reduced mod2 it is0; σ−1 mod2 rank1 | Agrees on these instances; no mathematical change. |
| 4.7 normalized congruence | P=11, generator2 of F₁₁×; P=17, generator3 | φ(2)=1 mod5 gives (1/2)φ(2)=3; at17 log₃2=14, square root3⁷=11 gives φ(11)=3 mod4, whereas unhalved log gives2 mod4 | Agrees on these instances; no mathematical change. |
| 4.8 principality | Local arithmetic model T=ℤ₅, I=5ℤ₅, e=1/5; genus zero | 5a↦a is rank-one isomorphism and T/I=ℤ/5; unnormalized invariant quotient adds factor2; n=1 has no Eisenstein completion | Agrees on these instances; no mathematical change. |
| 5.1 quotient torsion support | Zero quotient; level11; multiplication-by5 on cyclic rational torsion | Zero quotient order1 has no prime divisors; order5 gives support{5}; [5] on ℤ/5 has image0, so rational lifting of all quotient torsion fails | Agrees on these instances; no mathematical change. |
| 5.2 Ogg torsion | P=13,11,17 | Cyclic conclusion has orders1,5,4; connected-component torsion is0; discarding the 2-primary part would give1 instead of4 at17 | Agrees on these instances; no mathematical change. |
| 5.3 Shimura maximality | μ₅ versus constant ℤ/5 over ℚ; zero J | μ₅ dual is constant ℤ/5; constant ℤ/5 dual is nonconstant μ₅; zero J admits only rank1 subgroup | Agrees on these instances; no mathematical change. |
| 5.4 cusp image in quotient | P=11,17,13 | Image of specified generator retains orders5,4,1; in a fake quotient J/IJ the level11 image would have order1 | Agrees on these instances; no mathematical change. |
| 6.1 cohomology bound | Rank-zero kernel; model d=1 with δ=m,α=m | Zero case h¹−h⁰=0 and δ−α=0; model m=1,2 gives differences0,0 rather than linear growth; for constant ℤ/ℓ, h¹−h⁰=−1=δ−α | Agrees on these instances; no mathematical change. |
| 6.2 localized finiteness | Directed systems all ℤ/5 with identity or zero transition; module ℤ⊕ℤ/5 | Limits have orders5 or1, both ≤5; free summand completion has infinite ℤ₅, whereas torsion summand completes to order5 | Agrees on these instances; no mathematical change. |
| 6.3 quotient rank | Model T=ℤ×ℤ, M_free=0⊕ℚ, retained first factor | Retained rational rank0; opposite projection has rank1 and fails the support hypothesis; P=13 gives rank0 and group order1 | Agrees on these instances; no mathematical change. |
| 6.4 rational points | P=11,17,37,13 | Source's cyclic orders are5,4,3,1 respectively, agreeing with n; the genus-zero quotient has one point, not an empty point set | Agrees on these instances; no mathematical change. |
| 6.5 odd Sha | ℤ/9 with multiplication2 and3; zero module | ×2: kernel order1 but (×2)²=×4≠0; ×3: kernel order3 and square0; only the zero group permits both injectivity and nilpotence | Agrees on these instances; no mathematical change. |
| 6.6 finite modular points | X₀(11) genus1; X₀(13) genus0 | Cusp-based genus-one identification gives5 rational points at11; at13 target quotient has1 point but source ℙ¹(ℚ) is infinite | Agrees on these instances; no mathematical change. |
| 7.1 cusp moduli | Over ℚ₃, Tate parameter with v(q)=11, subgroup μ₁₁ or component subgroup | Identity subgroup contracts to1-gon, width1, cusp∞; component subgroup to11-gon, width11, cusp0; both have v(j)=−11 | Agrees on these instances; no mathematical change. |
| 7.2 j valuation | Same Tate curve and two subgroups | Identity quotient q→q¹¹ gives −121=11·(−11); component quotient q→q^(1/11) gives −1=(−11)/11 | Agrees on these instances; no mathematical change. |
| 7.3 tame extension bound | Discriminant valuations0,2,3,4,6,8,9,10 | 12/gcd(δ,12)=1,6,4,3,2,3,4,6; over ℚ₁₁ maximum6<10; base e_K=2 permits absolute12, not≤6 | Agrees on these instances; no mathematical change. |
| 7.3 torsion semistability | Hypothetical P=11; additive component bounds | P=11 exceeds all prime divisors2,3 of the additive component group; residue-P extension gives6<11−1=10 | Agrees on these instances; no mathematical change. |
| 7.4 small reduction | q=2,3; P=11 | Hasse integer bounds5,7 are both<11; split/nonsplit torus orders1/3 and2/4; after quadratic splitting q²−1=3,8 | Agrees on these instances; no mathematical change. |
| 7.5 component escape | Hypothetical P=11, source cusps0 at3 and∞ atq | q_Eis([0]−[∞])=1 in ℤ/5; torsion specialization would force it to0, giving1=0 in ℤ/5 | Agrees on these instances; no mathematical change. |
| 7.6 division field | Upper triangular diag(1,2) over F₅ acting on translation1 | Conjugation sends1→2⁻¹=3, not2; possible extension degrees1 or5; split diagonal model has degree1 over cyclotomic field | Agrees on these instances; no mathematical change. |
| 7.7 class-group obstruction | p=5 and Teichmüller lifts modulo25; p=3 boundary | 7⁴=1 mod25, 7⁻¹=18; 7−18=14 is a unit, giving zero wrong-character quotient; inverse-action ℤ/25 quotient has25 elements; p=3 exponent−1 equals1 | Agrees on these instances; no mathematical change. |
| 7.8 isogeny iteration | P=11, Tate pole order11; native identity and P=13 | Pole orders11,121,1331 are distinct; identity additive order1≠11; P=13 violates existing hLevel | Values agree; order 13 now has its separate native theorem. |
| 7.9 formal immersion | N=11 at11; formal local parameter t; zero quotient | Smooth-locus cusp map has a nonzero first coefficient; identity power-series map sends t→t and cotangent1→1, zero map sends1→0; dimension-zero quotient has no nonzero cotangent | Agrees on these instances; no mathematical change. |
| 7.9 cuspidal-divisor torsion | N=1,4,11,15 | Degree-zero space dimensions0,2,1,3; at4 Δ₄/Δ vector(−3,0,3); at11(−10,10); at15 vectors(−10,10,−2,2),(−12,−4,12,4),(−14,−2,2,14), rank3 | General statement now includes these levels; ownership remains R01. |
| 7.9 Atkin–Lehner transport | N=1,11,15; N=4 negative control | Exact-divisor actions count1,2,4 and squarefree cusp counts1,2,4; for N=4 only two exact divisors but three cusps, so transitivity fails | Agrees on these instances; no mathematical change. |
| 7.9 potential good reduction | e=1,q=3; e=1,q=2; e=q−1 | 1<2 true; 1<1 false; cyclotomic formal point ζ_q−1 has normalized valuation1 and nonzero orderq at equality | Agrees on these instances; no mathematical change. |
| 8.1 model and divisor identities | y=−1,y=x; five divisors; two infinity branches | Substitution gives −x(x+1)² and x³(x+1); divisor degrees2−2,2−2,3−3,3−3,4−4 all0; relations give19t=0 and residues0,1,3,12,14,15 | Values agree; these are now owned targets, not permanent assumptions. |
| 8.1 reduction and intersection | F₂,F₄,F₃,F₉; all unordered cusp pairs | Curve counts6,6,6,8; Jacobian counts(36+6)/2−2=19 and(36+8)/2−3=19; 21 pairs give19 classes, with only class15 repeated three times | Values agree; these are now owned targets, not permanent assumptions. |
| 8.1 smoothness and moduli coordinates | Sextic discriminant; dense-open inverse formulas | Disc=−692224=−2¹²·13²≠0 mod3; x′=(xy)(−xy/(y+1))/(−xy²/(y+1))=x and y′=y when the named denominators are nonzero | Agrees on these instances; no mathematical change. |
| 8.2 diamond order/norm | γ²=γ−1; roots8,12 modulo19 | γ³=−1, γ⁶=1; (3+2γ)(5−2γ)=19; 8²−8+1=57,12²−12+1=133, both0 mod19; dimensions2+2=4 | Agrees on these instances; no mathematical change. |
| 8.3 finite-flat kernel | Rank19 extension; inertia generator with eigenvalue8 | Rank19·19=361, generic dimension2; 8 has order6 mod19, so fixed line dimension0; μ₁₉(ℚ₁₃) has order gcd(19,12)=1 | Agrees on these instances; no mathematical change. |
| 8.4 local surjectivity | Formal pro13 group; finite quotient | 19 is a 13-adic unit and π⁻¹=πbar/19; kernel on local points has order1; finite quotient kernel1 gives image size equal to its whole cardinality | Agrees on these instances; no mathematical change. |
| 8.5 cohomology | Units ±13^ℤ; degree12 cover; exponent19 | −1=(−1)¹⁹; unit quotient ℤ/19; valuation sends13→1 mod19, kernel0; 12·8=96=1 mod19 | Agrees on these instances; no mathematical change. |
| 8.5 class-number datum | Degree12 cyclotomic field and six named elements | Signed disc13¹¹; bound≈306.4158, stated rational upper≈306.8010<307; small prime-ideal norms exactly13,27,53,79,131,157; all six norms match | Values agree; these are now owned targets, not permanent assumptions. |
| 8.6 rank-zero descent | Free O-rank1 and0; T₁₉ | O/πO has19 elements, so rank1 cannot have π-surjective multiplication; rank0 finite T₁₉ has π acting invertibly, since its annihilator is πbar | Agrees on these instances; no mathematical change. |
| 8.7 occurring prime2 | W=(0,0,0,−1,0), Q=(0,0) | Δ=64; Q≠∞, 2Q=∞; additive order2 | Agrees on these instances; no mathematical change. |
| 8.7 occurring prime3 | W=(0,0,1,0,0), Q=(0,0) | Δ=−27; Q,2Q=(0,−1),3Q=∞; additive order3 | Agrees on these instances; no mathematical change. |
| 8.7 occurring prime5 | W=(0,−1,−1,0,0), Q=(0,0) | Δ=−11; 2Q=(1,1),3Q=(1,0),4Q=(0,1),5Q=∞; additive order5 | Agrees on these instances; no mathematical change. |
| 8.7 occurring prime7 | W=(−1,−4,−4,0,0), Q=(0,0) | Δ=−1664; multiples(4,8),(2,2),(2,4),(4,0),(0,4),∞; additive order7 | Agrees on these instances; no mathematical change. |
| 8.8 all-prime classification | Four actual points above; identity; alleged order13 | Output values2,3,5,7 each satisfy the disjunction; identity has order1 and fails prime hypothesis; 13 satisfies none of the four equalities | Values agree; native endpoint is now present. |
| 8.9 invariant vectors | Galois character line with scalar2 in F₁₁; trivial line; geometric zero vector | Fixed equation2x=x gives x=0; invariant dimension0 although a stable line exists; trivial line has dimension1; zero vector fixed and equals0 | Values agree; native endpoint is now present. |
| 0.2 algebra generators and quotient | Abstract full order at genus zero | T=0, H_P=ℤ, ε=id, I_full=0; H_P/I_full=ℤ, while T/I is the one-element ring | Agrees; R04 names H_P explicitly. |
| 2.3 universal property, separately | a=0 and a=T | Kernels B_a=0 and J; quotients J and 0; every map kills 0, only the zero homomorphism kills J | Agrees; repairs the missing kernel name in R04. |
| Supplier range, R02 | Level 11 versus 13 | Nonzero quotient differential rank 1 versus 0; nonconstant projection exists only in first case | Existing §§16.2–16.7 suffice; no §16.8 required. |
| Cyclotomic specialization, R03 | p=5,r=1 and p=3,r=1 | −1≡3 mod4 and −1≡1 mod2; 6⁻¹=1 in F₅, while 6=0 in F₃ | Existing exceptional clause, not a B₂-unit argument, handles p=3. |
| Integral coefficient formula | a₁=1,a₂=3,a₄=7; characteristic 2 | a₂(T₂f)=7+2=9, reducing to 1; omitted term gives 7 over ℤ; nodal residues 1+1=0 in F₂ | Agrees with integral supplier, without inverting 2 or 3. |
| Connected Néron kernel | Tate q with v(q)=5, multiplication by 2 | Generic kernel rank 4; special torus kernel rank 2; defect length 1 | Quasi-finite kernel is not replaced by a rank-4 finite-flat special fibre. |
| Component map for Tate isogeny | q→q², v(q)=5 | ℤ/5→ℤ/10 sends r→2r; image cardinality 5, cokernel cardinality 2 | Agrees with the component-skyscraper contract. |
| Raw versus normalized Hecke | weight 2, l=2, a₂=3 | Raw factor 2^(1−2/2)=1; eigenvalue 3 versus normalized 3/√2 | Supplier §7.3 agrees. |
| Rational splitting versus integral splitting | T=[[2,1],[0,0]], e=1−T/2 on ℚ² | e(0,1)=(−1/2,1), so e is rational but does not preserve ℤ²; e²=e | Only rational splitting is consumed. |
| Manin–Drinfeld pullback/norm | Degree-2 finite map and cusp class of order 5 | f_*f^*D=2D; 5·2D=0, so D is torsion; no uniform order asserted | General theorem is preserved by ownership repair R01. |
| 7.9 modular-unit spanning | N=15; first three coordinates of three divisor vectors | Determinant −1536≠0; column sums 0 | Rank is 3, equal to degree-zero cusp-space dimension. |
| 8.1 universal elliptic model | x=1, y²+3y−2=0 on the dense open | a₁=3/2−y/4, a₂=a₃=1−3y/2; Δ=(−41129070+73241675y)/2048≠0; inverse map gives (1,y) | Denominators and nonsingularity hold; this tests the model identification. |
| 8.1 exact order of model point | Same quadratic-field model, Q=(0,0) | Multiples 1 through 12 are affine; 12Q=(0,−1+3y/2)=−Q; 13Q=∞ | Exact order 13 over the quadratic field, not a rational counterexample. |
| 8.5 prime-degree enumeration | p=2,3,5,7,11,17 modulo 13 | Orders 12,3,4,12,12,6; below norm 307 only p=3 contributes nonsplit norm 27; 19²=361>306 | Agrees; ramified norm 13 treated separately. |
| 8.5 norm determinants | Six elements in the stated integral basis | Determinants 13,27,53,79,131,157 exactly equal claimed absolute norms | Each is the smallest nontrivial ideal norm over its rational prime. |
| 8.5 class number and native statement | Degree 12, six complex places | Signed discriminant (+1)13¹¹; every small prime ideal principal, hence class group cardinality 1=1 | The arithmetic reduction reaches the native headline. |
| 8.6 rational order-13 exclusion | All 21 unordered pairs of six rational cusps | Pair classes cover all 19 residues; class 15 occurs three times, all others once; six degree-one rational points remain the six cusps | Numerical intersection witness agrees; unconditional target now owned. |
| 8.9 native fixedness boundary | Geometric zero; rational order-7 example; stable nontrivial line over F₁₁ | Zero fixed and equal to 0; order-7 point fixed but fails 7<P; scalar 2 fixes only x=0 although the line is stable | Size bound and invariant-vector/stable-line distinction retained. |

The table has **86 computed rows**. Exact rational arithmetic was used for Bernoulli sums, elliptic addition, cusp orders, determinant norms and the rational Minkowski inequality. F₄ used t²+t+1 and F₉ used t²+1; the per-x affine counts were (2,0,2,0) and (2,0,0,2,0,0,2,0,0). The level-13 principal-divisor relation matrix has determinant −19 and annihilates the five claimed cusp residues. Its 21 unordered cusp-pair sums were enumerated independently. The displayed decimal Minkowski value is only illustrative: the rational bound comparison was checked exactly. Model rows test signs, ranks and wrong constructions; they do not assert that arbitrary modules are modular Jacobians.

### Pinned declarations and duplication by object

The inspected Mathlib pin is `6b7abb3c7686292736be2955bd3eb9ebf63b456a`; Tau Ceti is `a91d3aafa8cd3e6bc33dfde0d7677ed0f1625039`. The following **20 declaration/carrier entries** were opened at those pins. Paths are relative to the corresponding library repository.

| Declaration/carrier | File and line | Contract checked |
| --- | --- | --- |
| `WeierstrassCurve.IsElliptic` | `Mathlib/AlgebraicGeometry/EllipticCurve/Weierstrass.lean:366` | Its field is `isUnit : IsUnit W.Δ`; over ℚ this excludes singular equations. A bare Weierstrass curve does not include it. |
| `WeierstrassCurve.Affine.Point` | `Mathlib/AlgebraicGeometry/EllipticCurve/Affine/Point.lean:477` | Infinity or an affine point carrying `W.Nonsingular x y`. |
| `orderOf_ofAdd_eq_addOrderOf` | `Mathlib/GroupTheory/OrderOfElement.lean:193` | Equality of native orders under the multiplicative wrapper; identity order 1, infinite order 0. |
| `AddSubgroup.torsionBy` | `Mathlib/Algebra/Module/Torsion/Basic.lean:972` | Underlying submodule is the kernel of scalar multiplication at :177; it is not the exact-order locus. |
| `WeierstrassCurve.pointGaloisAction` | `TauCeti/AlgebraicGeometry/EllipticCurve/Affine/Point/Galois.lean:47` | Actual coordinate action of field automorphisms. |
| `WeierstrassCurve.torsionGaloisAction` | Same file, :64 | Restriction to the native killed-by-N subgroup; compatibility at :86. |
| `NumberField.classNumber` | `Mathlib/NumberTheory/NumberField/ClassNumber.lean:64` | Finite cardinality of the native ideal class group. |
| `NumberField.classNumber_eq_one_iff` | Same file, :74 | Equivalent to the integer ring being a principal ideal ring. |
| `NumberField.exists_ideal_in_class_of_norm_le` | Same file, :77 | Nonzero ideal representative bounded by the Minkowski constant. |
| `RingOfIntegers.isPrincipalIdealRing_of_isPrincipal_of_norm_le_of_isPrime` | Same file, :116 | It suffices to handle nonzero prime ideals below that bound. |
| `IsCyclotomicExtension.Rat.discr_prime` | `Mathlib/NumberTheory/NumberField/Cyclotomic/Basic.lean:651` | Prime-conductor formula includes sign (−1)^((p−1)/2). |
| `IsCyclotomicExtension.Rat.isIntegralClosure_adjoin_singleton` | Same file, :801 | Specified primitive root and nonzero conductor give the actual integral closure. |
| `IsPrimitiveRoot.integralPowerBasis` | Same file, :850 | Ring-of-integers power basis, with dimension φ(n). |
| `IsCyclotomicExtension.Rat.inertiaDegIn_eq_of_not_dvd` | `Mathlib/NumberTheory/NumberField/Cyclotomic/Ideal.lean:330` | Residue degree equals order of p modulo conductor, assuming p does not divide it. |
| `IsCyclotomicExtension.Rat.eq_span_zeta_sub_one_of_liesOver` | Same file, :149 | Prime-power-conductor ramified prime is generated by ζ−1. |
| `Nat.forall_exists_prime_gt_and_modEq` | `Mathlib/NumberTheory/LSeries/PrimesInAP.lean:462` | Nonzero modulus and coprime residue are explicit hypotheses. |
| `CuspForm.discriminant`, `ModularForm.discriminant_ne_zero` | `Mathlib/NumberTheory/ModularForms/Discriminant.lean:236`, :122 | Weight-12 level-one form and analytic nonvanishing; algebraic cusp orders still need the supplier. |
| `LeftCosetModule.deg` | `TauCeti/NumberTheory/HeckeRing/Degree.lean:106` | Coefficient-sum degree gives +1 on an invertible single coset, not the Fricke eigenvalue −1. |
| `AlgebraicGeometry.AbelianVariety` | `TauCeti/AlgebraicGeometry/AbelianVariety/Basic.lean:95` | Group object with properness and geometric integrality; no distinguished modular Jacobian or quotient. |
| `NumberField.Chebotarev.infinite_frobeniusPrimeSet` | `TauCeti/NumberTheory/Chebotarev/Density/Chebotarev.lean:74` | Infinite occurrence of each conjugacy class, permitting exclusion of the finite bad set. |

Object searches covered prime-order elliptic torsion, Galois-fixed torsion, cyclotomic class number 13, Hecke degree/eigenvalues, marked cuspidal and Shimura groups, connected ideal quotients, dyadic models, winding homology and Manin–Drinfeld. The searches used the pins, main, board packages, and the indexed open README/Lean files; candidate suppliers were opened. No other roadmap declaration with one of the six fully qualified acceptance names was found. Main ModularCurves explicitly reserves the prime-level Eisenstein arithmetic for downstream work (`TauCetiRoadmap/ModularCurves/README.md:2404`), so this folder is not a re-plan of that roadmap. General finite-flat, abelian, class-field and splitting constructions are imported. The remaining ownership collision is R01. The fixed class number at conductor 13 is not the supplier's inverse-character p-class theorem: it needs the independently proved 19-primary consequence here.

### Resolved cross-roadmap contracts

Main `fa41b3747f56d4e77bd69e7099c1be4f2e4959ba` was used for existing roadmaps, including ones with open revisions. New supplier interfaces were read at their indexed open heads. The following **15 supplier families** were resolved; R02–R03 record locator/name drift rather than absent mathematics.

| Supplier | Loci opened and contract checked |
| --- | --- |
| ModularCurves | `TauCetiRoadmap/ModularCurves/README.md:2103`, Layer 10: compactified coarse curves away from the level, cusp widths/fields, Shimura covering. Its level-fibre boundary is respected. |
| ModularForms | `TauCetiRoadmap/ModularForms/README.md:259`, :764, :1024: weight-two/character forms, integral Hecke lattice, modular symbols and analytic/algebraic comparison. |
| ModularCurvesPartII | §§2–6,7.1,7.5–7.6,9.1–9.4,9.8,11–14,16.1–16.7,17: curves, charts, correspondences and quotient/period comparisons. `TauCetiRoadmap/ModularCurvesPartII/README.md:3427`, :3448, :3467 retain dualizing/Serre-duality hypotheses and Hecke traces; :4354 marks the weighted component generator. R02 corrects the range. |
| FiniteFlatGroupsAndIntegralPadicHodgeTheory | `TauCetiRoadmap/FiniteFlatGroupsAndIntegralPadicHodgeTheory/README.md:2731`, R07.G1–G8, plus the cited R07.1 closure, full-faithfulness and gluing targets. Global base, marked special fibre, defect bound, Ext variance, odd purity and nonsplit D-model are explicit. Hecke saturation remains §4.5 here. |
| NeronModelsAndSemistableAbelianVarieties | `TauCetiRoadmap/NeronModelsAndSemistableAbelianVarieties/README.md:1842`, :1909, §§3.13–3.14; :3806, :3845, :3901, :3943, §§6.4a–d. Generic torsion uniformization, quasi-finite connected kernels, component defects, dyadic localization and strict small-ramification cotangent injection are distinguished. §§2.6,6.5–6.6 supply equation/model reduction comparisons. |
| HeightsRationalPointsAndObstructions | `TauCetiRoadmap/HeightsRationalPointsAndObstructions/README.md:522`, §1.0, connected quotients; §§1.1–1.7 descent and finite generation; :793, :804, :816, :841 formal group, chart, logarithm and torsion specialization. |
| AbelianSchemesAndArithmeticModuli | `TauCetiRoadmap/AbelianSchemesAndArithmeticModuli/README.md:1469`, :2851, :2871, :2904, §§A3.3,A6.3–A6.5: finite quotients, images, simplicity and Poincaré reducibility. No point-group quotient substitutes for an abelian variety. |
| ArithmeticGaloisRepresentations | `TauCetiRoadmap/ArithmeticGaloisRepresentations/README.md:1127`, §1.8: `ContinuousRep.iso_of_charpoly_eq`, with semisimplicity and characteristic-polynomial hypotheses. The resolver's missing-pin lead is a planned supplier declaration. |
| AutomorphicFormsOnReductiveGroups | `TauCetiRoadmap/AutomorphicFormsOnReductiveGroups/README.md:1172`, §7.3: raw adelic/classical factor p^(1−k/2), volume-one compact, and distinct unitary normalization. |
| CyclotomicClassGroupsAndStickelberger | `TauCetiRoadmap/CyclotomicClassGroupsAndStickelberger/README.md:145`, :557, :1230, :1255, §§0.2–0.3,3.2,8.1–8.2: covariant ideals, inverse projector coefficients, exceptional exponent one, all-level inverse-character vanishing and actual unramified quotient. The base-level r=1 specialization matches; R03 updates names. |
| ClassFieldTheory | `TauCetiRoadmap/ClassFieldTheory/README.md:1799`, Layer 13: Hilbert/ray class fields, unramified class-group comparison and local-unit contribution. Arithmetic Artin agrees with conjugation. |
| SchemeAndStackFoundations | `TauCetiRoadmap/SchemeAndStackFoundations/README.md:3344`, :3631, :3656, :4275, §§2.3,2.10,2.11,2.20: torsors/H¹, étale/fppf comparison, Kummer sequence and relative duality. `NonabelianH1.equivSheafH` is another planned supplier declaration, not a missing pinned lemma. |
| JacobianChallenge | `TauCetiRoadmap/JacobianChallenge/README.md:111`, :135, :448, Layers A,B,F: divisor classes, Riemann–Roch and Abel–Jacobi. The fixed genus-two cusp computation is a new application. |
| EllipticCurves | `TauCetiRoadmap/EllipticCurves/README.md:423`, :647, :683, :793, Layers 1–4: isogenies, formal groups, Weil pairing, Hasse bound, local reduction and Tate uniformization. |
| ModularSymbolsPadicLFunctions | `TauCetiRoadmap/ModularSymbolsPadicLFunctions/README.md:980`, :1085, :1231, §§0.6–0.8: rational splitting and period comparisons, including the full-level input. No integral splitting is imported. |

Every Needs line was inspected for direction and missing ownership. The extra exact-divisor integral transport in §7.9 is explicitly a target here; only the already-supplied Fricke/identity actions are imported. Source references alone are not treated as owners. No undeclared supplier gap was found after resolving these contracts. Ownership against open work was checked using the available indexed files and supplied sibling checkouts, in particular the later §6.0c in R01; no unavailable open text was presumed to provide a result.

## Not verifiable

- **FaltingsChai1990**, III §§7–8, pp.76–78: the sources service found the publisher's paywalled DOI record and classified it as uncertified. No readable operator-held copy was supplied. I did not certify the exact printed uniformization corollary used in §3.1. The named NeronModelsAndSemistableAbelianVarieties §§3.13–3.14 contract was read and explicitly supplies generic-fibre torsion for every positive integer, with the unramified character/period lattices and all residue characteristics. The paywalled locator remains uncertified, without reopening a reference request.
- The accessible Deligne–Rapoport volume is the 1973 printing. The cited numbered text was read there; changes in the separate 1986 corrected printing were not independently collated.
- No proofs of the six admitted Lean theorems are claimed. Elaboration, finite computations and source verification are separate evidence; they are not proof completion.

No seeded target was left unread for lack of a text. All nine cited works were considered through the sources service, and the one uncertified item does not park this review. No source manifest or pull-request file was edited.

## Source issues

- **Gap** in Mazur1977 at II Corollary 16.3, printed p.125: the source says the multiplicity-one conclusion without giving its proof; it should supply ordinarity and Weil duality between multiplicative and étale parts; affects the proof; corrected in print at MazurWiles1984Errata §8.I.1, p.187.
- **Gap** in Mazur1977 at II §12, printed p.105, line 18: the source says the displayed divisor-class manipulation proves A+B=0; it should prove that the modular-unit product with its Fricke transform is a square; affects the proof; corrected in print at MazurWiles1984Errata §8.I.2, pp.187–188.
- **Error** in Mazur1977 at II §11, printed p.100, seventh line from bottom: the source says a naive analytic formula gives the Hecke action on X₁(N); it should use the level-point correspondence with its diamond action; affects the proof; corrected in print at MazurWiles1984Errata §8.I.3, p.188.
- **Misprint** in Mazur1977 at III §5, Step 3, printed p.159: the source says the identity-direction level subgroup gives cusp 0 and the component direction gives infinity; it should exchange those labels for the forgetful map (E,H)↦E; affects the proof.
