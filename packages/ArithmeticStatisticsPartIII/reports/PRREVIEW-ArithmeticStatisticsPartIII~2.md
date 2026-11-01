# Review of ArithmeticStatisticsPartIII (pull request #1174 at 763fea1)
**Verdict:** needs changes

## R01 (P2) — Import the existing orbit and eligibility results

Location: `TauCetiRoadmap/ArithmeticStatisticsPartIII/README.md:722`, “the union of 9 distinct translates”; also lines 894–904 and 1096–1104.

Claim: the nine-class classification, real cubic orbit/stabilizer classification, and index-p basis-change dictionary are targets to prove here.

Witness: `TauCetiRoadmap/ArithmeticStatisticsPartI/README.md:816` already states **Eligible pairs are nine lattice translates**. Part II §1.2 states both index-p dictionaries; AnalyticNumberTheoryPartII §5.5 identifies the real types and automorphism orders.

Repair: delete part (a) and its proof at line 722, importing Part I's named target; retain the new bounded-height asymptotic. In §2.6 retain the sign-region definitions and counting adapters, importing the classification from AnalyticNumberTheoryPartII §§5.4–5.5. Derive §2.7's orbit-fibre bound from Part II's **Index p subrings/overrings of a cubic ring**, instead of planning the dictionary again. Put these ownership decisions in Scope and ownership and the supplier contracts. The repaired dependencies give exactly nine residues, real stabilizer orders 6 and 2, and at p=5 the substitution `(1,0,1,0) ↦ (25,0,1,0)`, with discriminants −4 and −100. No new owner is needed for those statements.

This is localized duplication, not a reason to reject the statistical extension as a whole.

## R02 (P2) — State the finite-congruence quartic-pair headline

Location: `TauCetiRoadmap/ArithmeticStatisticsPartIII/README.md:1164`, “in a … union S of finitely many residue classes”; `TauCetiRoadmap/ArithmeticStatisticsPartIII/Suggested.lean:265`.

Claim: §2.8's headline counts quartic-pair classes with arbitrary invariant finite congruence conditions. The Lean acceptance test only has the unrestricted count.

Witness: the elaborated signature of `Counting.quartic_pair_count` has only r and X; no modulus or allowed residues. The docstring identifies it as Theorem 7, whereas the README's target is Theorem 22.

Repair: retain or generalize this theorem to the finite-congruence assertion, using the existing pair carrier, coefficient reduction modulo a positive integer m, an invariant set R of homogeneous quadratic pairs over ZMod m, and density `R.ncard/m^12`. This requires no new arithmetic carrier. A scratch signature with precisely these native carriers elaborated at the pins. Include finiteness and the limit with that density. For all residues the factor is 1; for no residues it is 0; for all twelve coefficients even it is 1/4096. In the last case scaling the pair by 2 multiplies its cubic resolvent by 8 and its discriminant by 4096, agreeing with `N_all(X/4096)`. These distinguish the promised theorem from the present special case.

## R03 (P3) — Remove two undeclared API names

Location: `TauCetiRoadmap/ArithmeticStatisticsPartIII/README.md:212` and line 214: `quarticW1_iff_splittingType`, `cubicW1_iff_tripleRoot`.

Claim: the backticked API labels name declarations in Suggested.lean.

Witness: neither name occurs in `TauCetiRoadmap/ArithmeticStatisticsPartIII/Suggested.lean`; the complete 44-declaration signature inventory contains neither.

Repair: express both bullets in prose, without declaration labels. Keep the splitting-type criteria in the README; they are supporting API, not additional Lean headlines. The mathematics is unchanged: modulo 3, x³ has a triple root and is strongly divisible, while x²y has only a double root and a lift with discriminant −12, nonzero modulo 9.

## R04 (P3) — Give the new pair definitions an API and discriminating Checks

Location: `TauCetiRoadmap/ArithmeticStatisticsPartIII/README.md:1166`, “The resolvent … is 4 Det(Ax−By)”; its Checks at line 1176 consist only of a CRT-density example.

Claim: the paragraph specifies seven new Lean definitions, but supplies no API list and no three discriminating Checks for those definitions.

Witness: `Suggested.lean:134–175` defines coefficient extraction, determinant, resolvent, equivalence relation, real-zero count, absolute irreducibility and the counted classes. A 2/15 CRT calculation tests none of their sign, factor, orbit or projective conventions.

Repair: add their mathematical API and at least three relevant Checks per definition, reusing examples where they genuinely test several objects. In particular compute `ternaryDet4(x₀²+x₁²+x₂²)=4`, `ternaryDet4(x₀x₁+x₂²)=−1`, and the zero value. With A diagonal (1,1,1), B diagonal (1,2,3), the resolvent is `4(x−y)(x−2y)(x−3y)`; swapping A,B negates the swapped-variable resolvent. Test invertible pair/variable changes, a rational common zero that excludes absolute irreducibility, both finite real intersections and the infinite-zero-set junk value, and an empty negative-height class set. Keep these Checks in the README, not as sorried Lean examples.

## R05 (P3) — Distinguish PDF pages from printed pages

Location: `TauCetiRoadmap/ArithmeticStatisticsPartIII/README.md:1190`, “Proposition 11.2, (46), and Corollary 11.3, p. 53”; reference [17], line 2245.

Claim: the page locator is unambiguous in the specified v2.

Witness: st-secondary lines 2616–2647 contain the cited results; line 2652 prints page 41. They occur on PDF page 53.

Repair: cite “printed p. 41 (PDF p. 53)” and label the reference's pp. 52–54 as PDF pages. Keep equation (46): it is the equation in the version actually read. The bound itself is supported: its local factors are at most p^(e/2), hence the stated k^(1/2+ε) bound.

## R06 (P3) — Update the renamed Part I locators

Location: `TauCetiRoadmap/ArithmeticStatisticsPartIII/README.md:2263` and the AS-I-4/AS-I-7 reference definitions: “refinement-binary-discriminant”, “refinement-symmetric-pencil”, “twist-denominator-frontier”.

Claim: these are locators to the earlier Part I targets.

Witness: the Part I head has **Binary discriminant** in §0.12, **Symmetric pencil** in §0.22, and **Positive squareclass denominator** in §0.15; the three cited aliases are absent.

Repair: replace the labels and fragments with those existing section/target locators. These are locator defects, not unowned mathematics: the binary discriminant still gives 4 for (1,0,−1), the pencil still retains its signed determinant, and the positive squareclass denominator still requires compatible nonempty local conditions.

## Verified sound

**Disposition of the preceding review, checked before the full pass.**

| Previous finding | Current passage and disposition |
|---|---|
| R01: missing quartic-pair headline | README line 1166: “states the case without congruence conditions”; Lean line 265 supplies it. The original unrestricted omission is repaired. The still-statably stronger finite-congruence headline is R02 above. |
| R02: target-anchor gate failure | No explicit target-anchor catalogue remains; the worker gate reports `target-ids=0`. Repaired. |
| R03: README/Lean name mismatch | README lines 704, 1166 and 2060 name the actual class/density definitions; all 44 Lean declarations have README occurrences. Partly repaired: the two residual labels are R03 above. |
| R04: invented supplier declaration names | README line 1291 now says “its idele group, S-units and S-class group”; ArithmeticGaloisDuality §R02.3.2 supplies these in prose. The divided-coefficient discriminant is imported by Part II target name at line 2090. Repaired. |
| R05: dead analytic-section fragments | The contract at line 62 uses “§5.4”, “§5.5”, etc.; these sections exist in the supplier. Repaired. |
| R06: extraneous d≤n hypothesis | README line 2058 and Lean line 305 assume n,d≥2 and exclude (2,2); plane cubics (2,3) are included. Repaired. |
| R07: references, duplicates and version | The bibliography has 24 distinct numbered entries, including the previously absent works; claims now carry parenthetical locators. Mostly repaired; the remaining page-convention ambiguity is R05. |

No supplied repair report marks a finding “not actionable in this package.”

**Gate, build and signature evidence.** The worker's gate at the specified head passes every listed check, including the targeted build, imports, sorry-data, stray-files and outside-folder checks. The independent outside-folder diff is empty. The independent dependency command returned:

```text
depcheck: 205 roadmaps, 1452 edges, 0 problem(s)
```

There is no UPWARD or CYCLE line. The missing LinearSubst object was built with the named-module command. Direct elaboration of Suggested.lean then succeeded with exactly 12 `sorry` warnings and no other diagnostics. A scratch copy with `#check @name` for all 44 declarations elaborated; their explicit binders, determinant twists, strict bounds, finite-cardinality clauses, coefficient fields and quantifier order agree with the displayed statements. No implicit standing hypothesis disappeared. The finite-congruence witness for R02 was separately elaborated.

Every one of the 12 sorried theorems was tested on a scratch copy with one-tactic `simp_all`, `rfl` and `infer_instance` alternatives. None closed. Object searches and inspection of the pinned declarations found no single library theorem that is one of these statistical headlines. No padding finding is warranted. There is no sorry-defined data, set_option, admitted example, computational algorithm, external-folder edit, or duplicated fully qualified Lean name.

**Headline inventory.** The README's statable deep results are the quantitative Ekedahl sieve; quartic and cubic class asymptotics; their acceptable weighted sieves; quartic-pair finite-congruence counting; monic and odd binary summed tails; monic and conditional binary fixed-modulus sieves; the degree-uniform smooth-point bound; and the hypersurface local-density limit. All have corresponding Lean statements except the generality in R02. The docstring names the omitted quintic-ring, ternary/quaternary/quinary genus-one, symmetric-pencil, global-field, secondary cubic, sparse quaternary, invariant-sieve and number-field three-isogeny headlines and their missing invariant/chart/measure interfaces. It also expressly preserves the even-degree analytic hypotheses.

The following is a computed regression audit, not a claim that finite tests prove an asymptotic theorem. Each row identifies an actual value, scaling, or exponent comparison. “Retain” means no change was indicated by that computation. Rows marked conditional test the displayed implication and normalization, not existence of its analytic hypothesis.

| Statement (README line) | Instances tried | Computed values on the two sides | Result / change |
|---|---|---|---|
| Chebyshev bounds (84) | x=2; tail exponent s=2 | π(2)=1; x/log x=2/log2; tail model M^(1−s)/log M=1/(M log M) | No small-x division by zero; retain. |
| Subvariety lattice count (102) | coordinate plane of codimension k in [−r,r]^n | exact count (2⌊r⌋+1)^(n−k), predicted order r^(n−k); empty variety gives 0 | Retain. |
| Uniform reduction count (122) | coordinate plane; vertical component V(p₀) | p^(n−k); at p₀ the latter has p₀^n points, elsewhere 0 | Finite bad-prime threshold is essential. |
| Small-prime sieve (140) | n=k=2, r=1, M=2 | no prime with 2<p≤1; left=0, right=C/(2 log2) | Retain; k≥2 supplies a decaying prime sum. |
| Large-prime sieve (156) | n=k=1, Y={0}, B=[−1,1] | for nonzero a with abs(a)≤r, no p>r divides a; left=0, right=C r⁰ | The exclusion a∉Y is retained. |
| Ekedahl sieve / Lean headline (172) | n=0, k=1, I=(2); I=unit ideal | at M≥2, count=0; model C(1/log M+1). Unit ideal gives count=0 because 1 does not vanish | Real exponent n−k+1 avoids natural-subtraction errors. |
| Strong/weak definition and splitting criteria (192) | cubic x³ and x²y at p=3; quartic 25x⁴+x²y²+y⁴ at p=5 | x³: all lifts have Δ≡0 mod9; x²y+3y³: Δ=−12≡6. Quartic Δ=3920400, ∂aΔ≡1, ∂eΔ≡0 mod5 | Criteria distinguish strong from weak; R03 removes labels only. |
| Strong locus (240) | f=x, f=x² in Z[x,y] | f=x has derivative1, strong locus empty; f=x² has gcd(f,∂x f)=x, so codimension hypothesis fails | Retain primitive/coprime condition. |
| Discriminant codimension (260) | quartic a=1; cubic a=1 | leading e³ coefficient=256; leading d² coefficient=−27; exceptional reductions at 2,3 differ from generic ones | No good-primes-only replacement. |
| Local p²-density (276) | f=x in n variables | p^(2n−2) solutions modulo p²; normalized density=p⁻² | Exponent and normalization match. |
| Quartic root types (296) | x³y−xy³; x³y+xy³; ±(x⁴+y⁴) | real root counts=4,2,0,0; discriminants=4,−4,256,256 | Infinity root included; definite signs kept separate. |
| Fixed-invariant real orbits (344) | (I,J)=(3,0), (−3,0) | 4I³−J²=108,−108; number of orbits=3,1 | Positive-sign three-orbit distinction retained. |
| Quartic stabilizers (362) | x⁴+y⁴; x³y+xy³ | 8 signed permutation symmetries; 4 symmetries respectively; n_i=4,2 | Retain. |
| Fundamental sections (380) | L^(2+) at J=0; L^(0) at J=0 | I=12/16+1/4=1; J=9/4−2−1/4=0; H=1. Cubic-times-y section also I=1,J=0 | Correct constants; endpoints J=±2 give Δ=0 and are excluded. |
| Gauss/Iwasawa conventions (422) | z=−u+it²; angular half-domain | dxdy/y²=2t⁻³ du dt; length(K₊)/(2π)=1/2 | Retain both factors. |
| Modular area (468) | integrate over −1/2≤x≤1/2 | ∫ dx/√(1−x²)=arcsin(1/2)−arcsin(−1/2)=π/3 | Matches native hyperbolic measure. |
| PGL₂ covolume (484) | integral differential versus normalized angular Haar | 2·(π/3)·π/2=π²/3=2ζ(2); coordinate Haar gives π/12 | Measures are different and explicitly related. |
| Multiset multiplicities (502) | x⁴+y⁴, special boundary translate; generic stabilizer ±1 | ratio8/8=1 but two boundary representatives; generic ratio8/2=4 | Almost-everywhere qualification necessary. |
| Quartic averaged count/API (520) | empty/reducible sets; two disjoint invariant classes of stabilizer2 | 0; 0; weights1+1=2, equal to union weight2 | Additivity and the effective central stabilizer agree. |
| Quartic averaging formula (562) | angular integral | ∫K₊dk=1/2; prefactor1/(2C) times unfolded2C gives1 | Retain strict-domain correction. |
| Quartic reducible main body (578) | a=0 versus a=1; ε=1/24 | a=0 forces factor y and is excluded; error exponent2/3+1/24=17/24<5/6 | Scope and saving consistent. |
| Monic reducible cubics (594) | x³; x³−xy²; x³−2y³ | (I,J,H)=(0,0,0),(3,0,27),(0,54,729); translation changes r by3 | Signs and singular inclusion agree. |
| Large quartic stabilizers (616) | product of resolvent and fibre bounds | X^(1/2+ε/2)·X^(1/4+ε/2)=X^(3/4+ε); ε=1/24 gives19/24<20/24 | Retain; ε=1/12 gives equality, not a saving. |
| Quartic cusp lattice count (634) | Cλ/t<1; modulus m=2 | integer leading coefficient must be0; lattice density2⁻⁵=1/32 | Vanishing branch and volume denominator correct. |
| Integrated quartic cusp (650) | t≤Cλ, λ≤X^(1/24) | ∫t⁴λ¹⁶t⁻³dt dλ/λ has order λ¹⁸=X^(3/4); cusp volume integral same power | Retain. |
| Quartic Jacobian (670) | I,J coordinates and integral PGL differential | coefficient1/27; with covolume2ζ(2), invariant-area multiplier2ζ(2)/27 | Agrees with the source's (23). |
| Quartic volumes (686) | positive and negative discriminant regions | areas8/5 and8−8/5=32/5; volumes16ζ(2)/135 and64ζ(2)/135 | Retain. |
| Quartic count / Lean headline (702) | r=4,2,0 | divide volumes by4,2,4; combine definite signs: coefficients4/135,32/135,8/135 timesζ(2) | No factor-two error. |
| Eligible pairs (722) | nine residue classes; (−2,7),(1,2),(1,1) | density9/(9·27)=1/27; Δ=−3,0,−1/9 respectively; H(−2,7)=49/4 | Last pair ineligible; R01 imports the existing classification. |
| Average classes per invariant (738) | r=4,2,0 | (4/135)/(8/135)=1/2; (32/135)/(32/135)=1; (8/135)/(8/135)=1 | Multiply byζ(2); retain. |
| Quartic finite congruences (756) | one class mod2; coupled mod3,5 | coefficient density1/32; coupled density2/15 versus marginal product4/15 | CRT-product hypothesis retained. |
| Quartic finite weights (774) | weight1/2 on all classes; zero weight | weighted main coefficient c/2; 0 | Linearity and bounds agree. |
| Strong quartic tail (788) | fixed truncation; k=2,n=5 | compact sieve terms T⁵/(M log M)+T⁴; T=X^(1/6) gives X^(5/6)/(M log M)+X^(2/3) | Retain truncation-dependent constant. |
| Quartic-field transport (804) | index-p overorder at p=5 | discriminants D and25D; height cutoff decreases fromX toX/25 | Product algebras are excluded; non-S₄ contribution has its own target. |
| Ternary-pair weak lift (816) | weak quartic example at p=5 | source quartic Δ=3920400; discriminant-preserving lift retains3920400 | Supplier preserves Δ; its bounded fibres are required, not assumed injective. |
| Weak quartic tail (836) | compact box sides X^(1/6), threshold X^(1/6) | X^(2/3)·X^(1/6)/log X=X^(5/6)/log X; large-prime X/p² sum same order | Derivative splitting must use some partial, not only ∂e. |
| Quartic infinite uniformity (852) | first X→∞, then M→∞, truncation ε→0 | terms1/log M and ε tend to0 in this order | No interchange of limits. |
| Quartic acceptable sieve / Lean headline (870) | φ≡1; φ₂≡0; finite half-weight | local products1,0,1/2; limits c,0,c/2 | Actual local invariance and eventual good-discriminant condition used. |
| Cubic real orbits (894) | x³−3xy²; x³+xy² | Δ=108,−4; real root counts3,1; stabilizers6,2 | R01 imports the existing classification. |
| Integral cubic stabilizers (914) | x³+x²y−2xy²−y³; x³−2y³ | Δ=49,−108; order3 and1; displayed order-three substitution fixes the former | Nonabelian S₃ centralizer1; cyclic A₃ centralizer3. |
| Cubic reducible main body (932) | a=0; ε=1/24 | a=0 gives factor y; allowed error exponent19/24<1 | Excluded cusp not silently counted. |
| Cyclic cubic count (948) | cyclic conductor7 | Δ=7²=49; weight1/3 instead of1, discrepancy2/3 per class | O(X^(1/2)) discrepancy fits X^(5/6). |
| Cubic invariant measure (964) | x³−xy² | Δ=4; tangent determinant absolute value8=2Δ; normalized angular Jacobian4πΔ=16π | Retain corrected constant. |
| Cubic averaged count/API (982) | cyclic class, trivial-stabilizer class, empty set | weights1/3,1,0; disjoint union weight4/3 | Correct full stabilizer convention. |
| Cubic averaging formula (1026) | K₊ and empty set | angular mass1/2; both integrals vanish for empty S | Retain positive averaging denominator. |
| Cubic cusp lattice count (1042) | Cλ/t³<1; m=2 | nonzero integer a impossible; four-coordinate density1/16 | Distinguishes vanishing and volume branches. |
| Davenport count / Lean headline (1058) | positive/negative real type | 4π·(X/4)·(π/12)/6=π²X/72; dividing by2 instead givesπ²X/24 | Constants agree with BST Theorem20. |
| Cubic finite congruences (1078) | m=1; m=X^(1/6) | full density1; m⁻³X^(5/6)=X^(1/3), while m⁴=X^(2/3) | Retain modulus restriction and weighted-class correction. |
| Cubic index-p switching (1096) | p=5, g=x³+xy² | coefficients(1,0,1,0)→(25,0,1,0); Δ−4→−100; inverse recovers g | R01 imports basis dictionary, retains orbit-fibre deduction. |
| Cubic nonmaximal uniformity (1112) | p≥2; p²>X | p⁻⁴+3p⁻²+(p+1)p⁻⁶≤5p⁻²; latter cutoff gives count0 | Uniform constant is sufficient. |
| Cubic discriminant uniformity (1128) | compact height scaling X^(1/4) | sieve boundary X^(3/4)/X=X^(−1/4); truncation leaves C_T/(M log M)+c/T² | Ordered limits remove both terms. |
| Cubic acceptable sieve / Lean headline (1144) | maximal and nowhere-totally-ramified local selector | maximal density(1−p⁻²)(1−p⁻³); refined density(1−p⁻²)²; p=2 gives21/32 and9/16 | Distinct selectors give distinct products. |
| Quartic-pair finite count / Lean headline (1164) | r=4,2,0; all even coefficients | denominators48,8,16; even lattice density2⁻¹²=1/4096 | Constants sound; finite-congruence signature missing, R02. |
| Quartic maximal-order suborders (1178) | Z⁴, indices1,p,p³ | counts1,6,at least p+1; content-p weight(p+1)/p⁶ | Supports p⁻² local weighted tail; R05 only changes locator. |
| Quartic class-group/conductor inputs (1199) | cubic discriminant−23 and K(i) | relative discriminant norm64; closure S₃×C₂, not S₄ | A square conductor norm alone does not select S₄. |
| Non-S₄ maximal fields (1217) | C₄,V₄,D₄ versus S₄ | Galois orders4,4,8,24; three non-S₄ types retained separately | No substitution of an S₄-only tail. |
| Fixed reducible resolvent (1229) | discriminant sizeX; content c and primitive index j | total index c³j; pair discriminant c⁶j²D; X^(1/4+ε) fibre times X^(1/2+ε) resolvents gives X^(3/4+2ε) | ε can be split between factors. |
| Quartic nonmaximal/overramified tail (1245) | p divides primitive index or content | local subseries O(p⁻²)+O(p⁻⁵)=O(p⁻²) | Both alternatives needed; retain. |
| Quintic finite congruences (1263) | signatures i=0,1,2; one residue class mod2 | constantsζ(2)²ζ(3)²ζ(4)²ζ(5)/(240,24,16); coefficient density2⁻⁴⁰ | Correct forty-dimensional representation. |
| Quintic nonmaximal tail (1279) | primitive index p^k, content p | k=1 boundp^min(0,20/11)=1; content scales discriminant byp⁸ and multiplicity byp⁶, givingp⁻² | Tail retains convergent index/content sums. |
| Function-field lattices/shells (1289) | F₂(t), S={∞}, degree k | fundamental volume1/2; cumulative2^(k+1), shell2^k | Shell and cumulative counts differ. |
| Function-field reduction/count (1303) | F_q[t], residue modulus of degree d | q^(k+1) total; each residue hasq^(k+1−d) for k≥d−1 | Ratioq⁻ᵈ matches lattice covolume. |
| Function-field sieve (1317) | r coordinates, codimension2, degree≤k | coordinate-zero locus q^((r−2)(k+1)); prime degree>k forces divisible coordinate0 | Consistent with T^(r−1) large-prime allowance. |
| Global finite count (1331) | characteristic2 affine quadratic; lower/upper shear over Q | x²+xy+ty² has Δ1; lower shear x²+y²→x²+2xy+2y²; upper shear changes leading coefficient to2 | Native characteristic-two model retained. |
| Global prime tail (1347) | F₂(t), x²+t²xy+t²y² | Δ=t⁴; α/t satisfies w²+tw+1=0, Δ=t²; index(t), norm-square decrease4 | Maximality, not squarefreeness of the characteristic-two polynomial discriminant. |
| Global infinite local count (1363) | all local sets; one empty; coupled two classes mod15 | products1,0; coupled density2/15≠4/15 | Intersection/product hypothesis is substantive. |
| Cubic secondary congruences (1381) | L=2V, T₁=2,T₂=8,T=16 | main density1/16; secondary factor2^(−10/3); source scaling (X/16)^(5/6)=X^(5/6)2^(−10/3) | Secondary coefficient does not scale like main density. |
| Cubic secondary sieve (1389) | error exponent | 5/6−1/48=39/48=13/16<5/6 | Retain source's stronger acceptability. |
| Square-divisor tail (1399) | Δ=36,1,0 and M=5 | multiplicities1,0,0; actual square-divisor set of0 would be infinite | The zero convention expressly removes the singular locus. |
| Weighted κ-acceptability (1417) | all-one; parity at2, κ=1 or0 | factor1 descends modulo1; parity has values1,0 on0,1 modulo2 but modulo1 these coincide | κ=0 nonconstant parity is rejected. |
| Monic rational roots (1439) | n=2; constant term0 | a₂=0 leaves O(X) choices; D−n+1=2, bound O(X²log X) | Zero constant handled without divisor-counting0. |
| Plane normalization (1447) | line, cusp, split/nonsplit node | genera0,0 versus plane genera0,1; node count differences+1 and−1 | Normalization does not preserve rational point counts. |
| Rectangular curve count (1461) | u=0; u^m−v with boundsY,Y^m; u²−2v² | counts2⌊P₂⌋+1; 2⌊Y⌋+1; 1. Exponential bound yieldsP₂,Y,coefficient-independent O_d(1) | Log denominators positive under P_i≥2. |
| Weighted monic Galois exclusion (1477) | n=4, subgroup indices1,3 | D=10; exponents10 and22/3; first exceptional-fibre exponent7 | Full group has no false saving. |
| Extra reducible monic locus (1492) | n=4,6 conjugate halves | wreath orders8,72; indices24/8=3,720/72=10 | Quartic saving22/3 differs from naive exponent7. |
| Distinguished Selberg sieve (1504) | V=X^D,E=X^(D−1),L=X^(2/5) | V/√L=X^(D−1/5); EL²=X^(D−1/5) | Balanced error has claimed saving. |
| Monic distinguished off-block (1518) | n=3; off-block sieve scale | D=6; X^(D−1/5)=X^(29/5), belowX⁶ | Uses the integrated remainder, not pointwise uniformity. |
| Monic q cusp (1526) | M=X^(1/5), odd/even degree | X^(D−1/5)log X / X^(D−1/5)(log X)²; each is O(X^(D−1/5+ε)) | Matches the competing sieve saving. |
| Monic strong tail (1534) | M=X | X^(D+ε)/M=X^(D−1+ε); second termX^(D−1) | Expected codimension-two saving. |
| Monic weak tail (1542) | M=X^(1/5) | first and second terms bothX^(D−1/5+ε) | Degree-two case is supplied separately. |
| Degree-two weak tail (1550) | x²−25 at p=5 | Δ=100; perturb constant by5 givesΔ=80≡5 mod25; weak, not strong | Bound X³/M+X² is retained. |
| Monic summed tail / Lean headline (1562) | n=2, M=X | D=3; termsX^(5/2+ε),X^(14/5+ε) | Square-divisor multiplicity, not only union cardinality. |
| Monic fixed-modulus sieve / Lean headline (1580) | κ=1,2,3 | min(1/5,1/(2κ))=1/5,1/5,1/6 | All-range κ≥1 matches the signature. |
| Invariant geometric-sieve criterion (1598) | m=2 and f=x₁ locally | c_p=p² residues modp²; normalized bad densityp²/p⁴=p⁻², notc_p/p²=1 | Six source conditions retained; density corrected. |
| Binary strong tail (1608) | n=3,M=X | X^(4+ε)/X+X³=X^(3+ε)+X³ | Correct dimension n+1. |
| Odd binary cusp (1616) | n=3, g=1 | two 3×3 symmetric matrices; common isotropic rank1; invariant degree3 | Odd lift has no even-degree flag substitution. |
| Odd binary weak tail (1624) | n=3,M=X^(1/6) | both tail termsX^(23/6+ε) | Saving1/6=1/(2n). |
| Row-spanning count (1632) | rank1, γ=diag(T,T⁻¹), Y≥1 | exact2⌊Y/T²⌋; bound CY/T²; T²>Y gives0 | Transformed covolume indispensable. |
| Paired-fibre hypothesis (1650) | displayed n=4 matrices; A=B; B=0 | rank B=4, Gram1; quartic factor I=657,J=−33426, Δ=632448; x times factor hasΔ=4·632448=2529792. Other two determinants0 | Concrete Check correct; summation/coverage clauses remain hypotheses. |
| Even-tail parameters (1689) | (δ,η,ξ)=(1/2,1/100,0),(1/2,9/10,0),(1,3/5,0), n=4 | τ=1/50,9/5,3/5; 9τ=9/50,81/5,27/5 | First passes; second failsτ<1; third fails9τ<5. |
| Even small discriminant (1703) | n=4,κ=1/2; x⁴ and x⁴−y⁴ | count exponent5−(1/2)/6=59/12; atH=1 discriminants0 and256, threshold1 | First discarded, second retained; strict constant-term equality retained. |
| Even constant-term tail (1719) | zero constant; n=4 | f(0,1)=0 gives factor x; excluded locus is nonempty even when other coefficients are nonzero | Its quantitative error must be paid separately. |
| Even main/shallow (1727) | n=4, η=1/2 | θ₄=1/21; shallow saving min(η,1)/(22n⁶)=1/180224>0 | Conditional clauses give positive but distinct savings. |
| Restricted Gram (1743) | real blockI₂; complex row(1,i) | Gram det1; complex Gram1+i²=0 despite rank1 | Cauchy–Binet uses real squares; complex rank inference rejected. |
| Restricted deep tail (1759) | n=4, κ=1/100 | κ″=κn/(n−1)=1/75; Gram lower exponent−2/75; deep bound X^(5+1/75)(log X)^8/M | Retain modified exponent and hypothesis. |
| Binary summed tail / Lean headline (1775) | odd n=3 and M=X | X^(7/2+ε)+X^(23/6+ε); singularΔ=0 contributes0 | Odd statement unconditional; even statement retains hypotheses. |
| Quadratic binary summed tail (1793) | f=x²−y², f=x² | Δ=4 has squarefree square divisor2; Δ=0 removed | Degree2 needs its separate estimate. |
| Binary fixed-modulus / Lean headline (1801) | n=3,δ=1/2,η=1/6,ξ=0 | τ=1/3; errorsX^(23/6+ε),N²X^(10/3+ε),N⁸X^(7/3+ε), all belowX⁴ for fixedN | Complete summed-tail hypothesis present. |
| Pencil finite count (1821) | one residue class modm; empty selection | densitym^(−dim V);0 | Stabilizer divisor retained; no arbitrary marginal product. |
| Pencil infinite upper bound (1833) | all-one and constant1/2 at every prime | local integrals1 and1/2, all positive; infinite products1 and0 | No equality inferred from an upper-bound sieve. |
| Large coefficient-family tail (1849) | n=3, X=M=8, codimension-two coordinate-zero locus | all primes>8 force two coordinates0; exact remaining count15²=225, bound model X⁴/M+X³=1024 | Coefficient count, not an orbit-density denominator. |
| Ternary cubic finite count (1859) | positive/negative invariant areas | area ratio(32/5)/(8/5)=4; residue densitym⁻¹⁰ | Ten coefficients; Jacobian/stabilizers remain explicit. |
| Ternary prime tail (1871) | normalize byX^(5/6) | X^(3/4)/X^(5/6)=X^(−1/12); other terms1/(M log M),ε | Correct ordered-limit saving. |
| Ternary acceptable count (1879) | φ≡1 or one local zero | product1 or0; main full or0 | Strong irreducibility retained. |
| Quaternary finite count (1889) | r-types with stabilizers4,8 | invariant areas8/5,32/5 divided by8 or4; dimension20 densitym⁻²⁰ | Quotient group and16det normalization retained. |
| Quaternary prime tail (1901) | normalize byX^(5/6) | X^(19/24−20/24)=X^(−1/24) | Positive saving. |
| Quaternary acceptable count (1909) | constant local half-factor | weighted coefficient c/2; all-one coefficientc | No extra stabilizer factor. |
| Quinary finite count (1919) | source real stabilizer5 | coefficients abs(J)vol·8/25 and abs(J)vol·32/25; lattice dimension50 | 1/5 factor is necessary; differs from quintic rings. |
| Quinary prime tail (1933) | normalize byX^(5/6) | X^(49/60−50/60)=X^(−1/60) | Positive saving. |
| Quinary acceptable count (1941) | finite local zero and all-one factors | coefficients0 and fullc | Retain source acceptable-weight hypothesis. |
| Section kernel (1951) | finite groupC₂ acting trivially, Θ≡1, φ=1; empty transporter | transporter sum2;0 | Multiplicity2 must not be replaced by1. |
| Smooth unfolding (1971) | finite-group normalization model G=Γ=C₂, one fixed point | left1/2; σ=2, volΘ=2, integral kernel2; right2/(2·2)=1/2 | Divisor control only; this model is outside the source Lie-group hypotheses. |
| Sparse quaternary count (1979) | Y=X^(1/2−δ) | main exponent5−2δ; error5+10θ+60δ−λ+ε; gapλ−10θ−62δ−ε | Stated smallness condition is the right comparison. |
| Number-field twist count (1991) | ratio1; Q positive/all signs | nonidentity mean1, full mean2; denominators6/π² and12/π² | Conditional analytic contract and identity contribution retained. |
| Uniform smooth points / Lean headline (2012) | cuspidal cubic overF₅; repeated line | cusp has6 projective points,1 singular, hence5 smooth; q=5 main term5. Repeated line has0 smooth points | Singular integral case admitted; nonreduced example excluded. |
| Hypersurface local tail (2030) | (n,d,r)=(2,2,1),(2,3,1) | codim6−3−3+1=1;10−3−6+1=2 | Exact exceptional pair (2,2). |
| Hypersurface finite local count (2044) | N=10 plane cubics; primitive conditioning atp | primitive probability1−p⁻¹⁰; sign quotient divisor2; μ(sol∩prim)/(1−p⁻¹⁰)=μ(sol) | Full-lattice local factor agrees with primitive count. |
| Hypersurface density / Lean headline (2058) | n=2,d=3; smooth witness x₀³−x₁x₂² | at[0:0:1], value0 and derivative∂₁=−1 at every prime | Full source range retained; Euclidean real factor explicit. |
| Supporting projection adapter (2076) | n=2,k=2, coordinate zero scheme | count1; sieve bound C(r²/(M log M)+r)≥C forr≥1 | Zero-dimensional locus not discarded. |
| Supporting suborder/content assembly (2078) | c³j index, content divisor sum | σ(c)/c⁶=O(c^(−5+ε)); prime-content tailO(p⁻⁵) | Convergent independently of primitive index. |
| Supporting moving-lattice comparison (2080) | lattice2Z^d | index2^d; coefficient main mass2⁻ᵈ | Finite-index change is not constant1. |
| Supporting even implication (2082) | n=4, δ=1/2,η=1/100,ξ=0 | τ=1/50 and slack min(1/100,49/50,241/50)=1/100 | Conditional estimate is internally compatible. |
| Windowed contract (2084) | F=Q, one rectangle versus two disjoint rectangles | ratiosR; combined ratio(D₁R₁+D₂R₂)/(D₁+D₂), e.g.D₁=D₂=1,R₁=1,R₂=3 gives2 | Product of marginal ratios would not give2. |
| Counting normalization, item1 (2086) | divided coefficients(0,1,0,s/4),(1,0,0,1) | normalized Disc=s,1; ordinaryΔ=−27s,−27; char3 secondΔ=0 | Polynomial identity retained without false char3 orbit inference. |
| Integral multiplicity, item2 | two trivial-stabilizer integral orbits, selector1 | D=2; weights1/2,1/2; sum1 matches rational mass1 | Nonempty fibre denominator essential. |
| Local spreading, item3 | section3x²y+(s/4)y³ | normalized invariant s; derivative of inv∘section is1 | Excludes an arbitrary zero section; finite denominator at2 retained. |
| Balanced windows, item4 | F=Q, t∈(0,X); real degreee | scaleX^(1/e) in e dimensions has volumeX; infinite cone has infinite volume | Compact angular window matters. |
| Windowed finite count, item5 | field degreee, coefficient scalingX^(1/(4e)) | real dimension4e gives volumeX; fixed lattice indexh divides main coefficient byh | Uniform compact-envelope dependence retained. |
| V/S uniformity, item6 | squarefree selector imposed before/after tail | after imposing it, bad-S count0; unsieved p²-divisible densityp⁻²>0 | Correct unsieved domain is required. |
| Local masses/assembly, item7 | coker3,kernel3; coker1,kernel3; √D_F=2 | masses1,1/3; 2⁻⁴=2⁻³·2⁻¹=1/16 | Differential/product normalization agrees. |
| SL₂ volume supporting target | Q, Euler factors | ζ(2)·∏p(1−p⁻²)=1; Poisson identity gives(T−1)(f(0)−∫f)=0 | Value-one target is separate from finite volume. |
| Marked second-moment assembly | Y lower endpoint | savingλ−10θ−62δ; chooseε smaller than it before logarithmic losses | Sparse fixed slice alone is not the second-moment theorem. |

**Native definitions and total-function controls.** These rows also cover the simple data retained solely to state the Lean headlines.

| Declaration | Instances tried | Values computed | Result / change |
|---|---|---|---|
| monicPolynomial | n=0; n=2, a=(0,−1) | polynomial1; X²−1 | Body has the intended coefficient order. |
| binaryForm | n=2, a=(1,0,−1); zero coefficients | x²−y²;0 | Homogeneous degree convention correct. |
| binaryDiscriminantPolynomial | universal degree2, then a₀=0 | b²−4ac specializes to b² | Specializing first would give affine linear discriminant1; order matters. |
| binaryDiscriminant | (1,0,−1),(0,2,1),(0,0,0) in degree2 | 4,4,0 | Includes leading-zero binary forms correctly. |
| monicWeightedBox | n=2,X=2 | a₁∈{−1,0,1}, a₂∈{−3,…,3};21 polynomials | Strict bounds; X=0 gives empty box. |
| squareDivisorMultiplicity | Δ=36,M=1,5,6; Δ=0 | 3 (m=2,3,6),1,0;0 | Finite multiplicity and strict cutoff correct. |
| binaryOrbitSetoid | γ=−I, quartic twist0/cubic twist1 | f↦f; f↦−f, since det(−I)=1 | Correct quotient conventions. |
| binaryCoeff | x³y, n=4,i=1 and i=0 | 1 and0 | Descending x-degree. Out-of-range indices are unused. |
| quarticI | x⁴−y⁴; x⁴+y⁴ | −12;12 | Sign convention fixed. |
| quarticJ | x⁴−y⁴; x³y−x²y² | 0;2 | 27Δ=4I³−J² gives−6912 and0. |
| binaryRealRoots | x³y−xy³; x⁴+y⁴;0 | 4 (three affine plus infinity);0;1 (junk) | Zero-form junk is excluded by irreducibility. |
| quarticClasses | X≤0; r=1 | empty, count0; no nonsingular quartic has odd real-root count | Headline restricts r=0,2,4. |
| cubicDiscriminant | x³−xy²; x³+xy²; x³ | 4,−4,0 | Fixed-degree formula. |
| cubicClasses | X≤0; cubic x³ | empty; excluded by irreducibility/discriminant sign | No division by a finite zero cardinal in the theorem. |
| ternaryCoeff | Q=x₀x₁+2x₂² | coefficients c₀₁=c₁₀=1,c₂₂=2 | Diagonal extracts exponent2 rather than coefficient of x₂. |
| ternaryDet4 | diag(1,1,1); x₀x₁+x₂²;0 | 4,−1,0 | Integral polynomial also works in characteristic2; R04 adds README tests. |
| pairResolvent | diagonal A=(1,1,1), B=(1,2,3) | 4x³−24x²y+44xy²−24y³; Δ=1024 | Sign Ax−By, factor4; R04. |
| pairOrbitSetoid | identity; GL₂ swap; SL₃ identity | P↦P; (A,B)↦(B,A); determinant remains invariant | Swap matrix determinant−1 is allowed; R04. |
| commonRealZeros | positive definite A; A=B=0 | 0 actual zeros; infinite zero set has ncard0 | Same totalized value has different meaning; class predicate excludes zero pair. |
| AbsolutelyIrreduciblePair | preceding diagonal pair; zero pair | no rational common zero but split resolvent, so false; zero pair false | Both clauses matter; R04. |
| quarticPairClasses | X=0; pair with common rational point | count0; excluded even if its real intersection count is in{0,2,4} | R02 extends finite congruences; R04 adds controls. |
| hypersurfaceForm | coefficient1 on x₀², others0 | x₀²; all-zero coefficients give0 | Sym monomials index coefficients once. |
| HasProjectiveZero | x₀²+x₁²+x₂² overR; x₀²−x₁² | false; true via(1,1,0) | Nonzero vector hypothesis is essential. |
| smoothHypersurfacePoints | x₀²; x₀²−x₁x₂ at[0:0:1] | repeated line has0 smooth points; second value0 and∂₁=−1 | Correct derivative test including characteristic2. |
| hypersurfaceRealDensity | odd degree3; even positive-definite neighborhood | odd form has a real projective zero, factor1; positive-definite open set has no zero, so even factor<1 | Euclidean ball convention, not coefficient cube. |
| padicMass | integrand1 or0, any prime p | normalized mass1 or0 | Dividing by full compact-group Haar mass supplies normalization. |
| hypersurfacePadicDensity | smooth point family near x₀^d−x₁x₂^(d−1) | ∂₁=−1 modp; an open coefficient residue class has positive mass at least p^(−N) | Each factor positive; no claim they all equal1. |
| hypersurfaceClasses | primitive vectora and−a; zero vector | one sign class; zero excluded by coefficient gcd≠1 | Sign quotient factor2 justified. |
| binaryGoodDensity | n=2,p=2 | b odd:4 of8 residues mod2; equivalently32 of64 mod4, density1/2 | Fixed-degree discriminant used. |
| AcceptableBinaryWeight | all-one; one exceptional zero factor | both satisfy eventual condition; products1 and0 | Predicate does not promise positivity. |
| binaryWeight | one factor1/2, remaining1; zero exceptional factor | 1/2;0 | Irreducibility gives nonzero discriminant and eventual product1. |
| binaryLocalMass | constant local weight1/2 | mass1/2 under normalized Haar | Matches binaryWeight finite-factor test. |

**Source audit.** The table contains 164 computed rows: the 119 bold target headings, additional supporting clauses, and all 32 retained definitions. The 12 Lean theorems are identified in the target rows. All 15 seeded sections were compared with legally obtained text, including the hypotheses and proof passages listed below. Source identifiers in this report refer to the README bibliography numbers shown here; line numbers refer to the source service's extraction. The version is the README's specified preprint or open published article, not an inferred published pagination.

| Sample | Source text opened | What the comparison established |
|---|---|---|
| §2.1 | [3] bhargava-geomsieve lines 422–466, Lemma 3.1, p.10; lines 482–499, Theorem 3.3, p.11; lines 619–625, Lemma 3.6, p.14 | Bounded semialgebraic region, codimension, prime threshold and exclusion of points actually on the variety are substantive. The resultant proof needs the additional coefficient-stratum treatment described in the README. |
| §2.2 | [1] bs-quartic lines 353–426, §§2.1–2.2, pp.8–9 | Four real components, stabilizers, sections and fundamental multisets agree. The roadmap keeps both definite signs and uses almost-everywhere multiplicity rather than the source's overstrong boundary wording. |
| §2.3 | bs-quartic lines 443–620, Lemmas 2.3–2.4, Theorem 2.5 and Proposition 2.7, pp.9–12 | Reducibility, large stabilizers, the averaging denominator and the leading-coordinate cusp exclusion are retained. The integrated error has exponent 3/4. |
| §2.4 | bs-quartic lines 671–712, Proposition 2.8 and equations (23)–(26), p.13 | The invariant Jacobian is 1/27; positive/negative invariant areas are 8/5 and 32/5. Dividing by the stabilizers gives the three displayed class constants. |
| §2.6 | [2] bst-dh lines 465–477, Theorem 20, p.9; lines 589–596, Proposition 23, p.12; lines 748–764, Theorem 26, pp.14–15 | The finite-congruence count is weighted; the roadmap separately controls cyclic stabilizers. The two factor-two corrections in the measure calculation cancel in the final constants. R01 concerns ownership, not these constants. |
| §2.7 | bst-dh lines 361–378, Propositions 15–16, p.7; lines 1502–1559, Proposition 29 and §8.3, pp.23–24 | Index-p transport and its discriminant scaling support the uniformity argument. Finite-prime limits precede the prime-tail limit. Part II already owns the ring/basis dictionary. |
| §2.9 | [7] bhargava-quintic lines 1385–1448, Theorem 18 and Proposition 19, printed pp.1586–1587 | The representation has dimension 40, with the displayed three signature constants. Content changes discriminant by its eighth power and resolvent multiplicity by its sixth power. |
| §2.10 | [8] bsw-global1 lines 1042–1129, Theorems 4.7, 5.1–5.3 and the uniformity proof, pp.19–21 | The global-field statement keeps the field, S-integer lattice, local specifications and shell-versus-cumulative convention. The characteristic-two quadratic example and index-square calculation prevent a number-field-only or good-primes-only reading. |
| §2.13 | [5] bsw-sqfree1 lines 942–1019, Theorem 4.1, Proposition 4.3 and Theorem 4.4, pp.21–22; lines 143–155, Theorem 1.5, p.4 | Summed divisor tails require removing zero discriminant. The conjugate-factor exclusion needs the wreath-product order with a squared factorial; the README uses it. κ and the fixed-modulus error remain quantified. |
| §2.14 | bhargava-geomsieve lines 333–365, conditions (1)–(6) and Theorem 2.1, pp.8–9; lines 750–769, equation (40), p.17 | The six representation/height/cusp/transport hypotheses are preserved. The local denominator is p^(2 dim V), not p². |
| §2.15 | [9] bsw-sqfree2 lines 155–181, Theorem 5, pp.3–4; lines 219–250, odd-degree lift overview, pp.4–5 | The odd-degree theorem has saving 1/(2n). It is not used to assert the even-degree theorem without its analytic hypotheses. The separate row-spanning argument was checked at lines 1248–1306, pp.22–23. |
| §2.20 | [13] bs-five lines 860–965, Proposition 24, equation (18), Theorems 25–26, pp.16–18; acceptable-weight discussion from line 1056 | This is the 50-dimensional five-covering representation, distinct from the 40-dimensional quintic-ring representation. The orbit volume is divided by stabilizer 5. Strong irreducibility and the acceptable local weight condition remain present. |
| §2.21 | [14] bss-second lines 1213–1240, Theorem 5.1, p.24; lines 1530–1592, Theorem 6.3 and its acceptability conditions, pp.29–30; lines 2163–2183, error assembly | The sparse estimate keeps its support and parameter restrictions. Substituting Y=X^(1/2−δ) gives precisely the saving condition 10θ+62δ<λ, before absorbing ε. |
| §2.22 | [15] bkls lines 398–409, Theorem 5.3, p.9; lines 443–445, Theorem 6.2, p.10; lines 479–497, Theorems 7.1–7.2, pp.10–11; lines 550–616, Theorem 8.1 and assumptions, pp.12–13. [16] bsw-global2 lines 666–830, Theorem 3.3 through Theorem 3.8, pp.13–16 | Local Kummer images, kernel/cokernel masses and global integral multiplicities are not interchangeable. The roadmap retains the windowed counting and V/S uniformity assumptions, sums charts before division and adds the identity element. The source axioms alone do not prove those analytic assumptions. |
| §2.23 | [10] poonen-voloch lines 112–140, Theorem 3.6, p.3 | The range is n,d≥2 excluding (2,2), not d≤n. Finite local factors and the infinite tail are separate. The README names the primitive/sign and real-region adapters needed for its Euclidean projective-height convention. |

Additional source checks included [6] bhargava-quartic, Theorems 7 and 22 and equation (32), printed pp.1037 and 1054–1055; [17] st-secondary, Proposition 11.2 and Corollary 11.3 at lines 2616–2647; [20] stacks, Tag 0BYD at lines 766–783 and Tag 0CE3 at lines 1677–1688. The latter gives an inequality for normalization cohomology, not equality of rational point counts. The ternary, quaternary, pencil, rectangular-curve and Galois-exclusion sources [11], [12], [4], [22], [21] were also fetched through the service and their cited statements inspected. In total, 20 of the 24 bibliography entries were readable. The four exceptions are listed below.

**Pinned-library and ownership audit.** These are examples of the actual declarations opened, with file and line at the pins; the names were not checked against a newer library:

| Declaration | Pinned file and line | Relevant restriction or convention |
|---|---|---|
| `Northcott.comp_of_finite_fibers` | `Mathlib/Order/Northcott.lean:65` | Requires the cofinite/fibre hypothesis as well as the source Northcott property. |
| `Polynomial.resultant_eq_zero_iff` | `Mathlib/RingTheory/Polynomial/Resultant/Basic.lean:913` | Field coefficients and the nonzero-polynomial alternative are explicit. |
| `Polynomial.discr` | `Mathlib/RingTheory/Polynomial/Resultant/Basic.lean:935` | Uses natural degree; the universal fixed-degree binary polynomial must be specialized after construction. |
| `Polynomial.card_roots'` | `Mathlib/Algebra/Polynomial/Roots.lean:78` | Bounds the root multiset by natural degree; projective infinity is a separate check. |
| `Cubic.discr_eq_prod_three_roots` | `Mathlib/Algebra/CubicDiscriminant.lean:465` | Requires nonzero leading coefficient and the specified three-root multiset. |
| `MvPolynomial.schwartz_zippel_totalDegree` | `Mathlib/Algebra/MvPolynomial/SchwartzZippel.lean:191` | Requires a nonzero polynomial over a domain. |
| `Chebyshev.theta_eq_sum_primesLE`, `theta_le_log4_mul_x`, `eventually_primeCounting_le` | `Mathlib/NumberTheory/Chebyshev.lean:101`, line 191, line 796 | The eventual bound is not an all-range bound at x=1. |
| `hensels_lemma` | `Mathlib/NumberTheory/Padics/Hensel.lean:459` | The derivative/value norm inequality is retained. |
| `MeasureTheory.integral_image_eq_integral_abs_det_fderiv_smul` | `Mathlib/MeasureTheory/Function/Jacobian.lean:1213` | Measurability, injectivity and differentiability hypotheses are essential. |
| `UpperHalfPlane.volume_eq_lintegral` | `Mathlib/Analysis/Complex/UpperHalfPlane/Measure.lean:72` | Density is Im(z)⁻². |
| `riemannZeta_two` | `Mathlib/NumberTheory/LSeries/HurwitzZetaValues.lean:226` | ζ(2)=π²/6 matches both class constants. |
| Strict inverse-function interface | `Mathlib/Analysis/Calculus/InverseFunctionTheorem/FDeriv.lean:54` | Works over a complete nontrivially normed field; it is not restricted to real scalars. |
| `MvPolynomial.linearSubst` | `TauCeti/RingTheory/MvPolynomial/LinearSubst.lean:67` | Xᵢ maps to Σⱼ MᵢⱼXⱼ; the Lean binary action transposes for the row-vector convention. |
| `ModularGroup.volume_fd_lt_top`, `isFundamentalDomain_fdo` | `TauCeti/NumberTheory/Modular.lean:116`, line 234 | Supplies finite volume/fundamental domain, not the exact π/3 area target. |
| `TauCeti.Place.powerSeriesExpansion`, coefficient-filtration comparison | `TauCeti/FieldTheory/FunctionField/Place/Expansion/PowerSeries.lean:36`, line 76 | The rational-place and uniformizer assumptions are P.degree=1 and ord(t)=1. |
| `TauCeti.Place.completionIntegersEquivPowerSeries` | `TauCeti/FieldTheory/FunctionField/Place/Expansion/Completion.lean:119` | Same rational-place/uniformizer restrictions. |
| `TauCeti.riemannRochSpace`, `TauCeti.Divisor.dim` | `TauCeti/FieldTheory/FunctionField/RiemannRoch/Basic.lean:87`, line 99 | Native spaces and finrank exist; statistical shell/lattice estimates are additional targets. |

The ownership search used the roadmap service's object search over main and open heads, then inspected the matching owners, and also searched board packages and both pinned libraries. Search objects included binary cubic/quartic actions and discriminants, eligible residues, index-p orders, geometric sieves, uniform point counts, symmetric pencils, local masses, lattice covolumes and divisor tails. The relevant duplicates are R01. No other matching owner of the representation-specific cusp/tail estimates or the weighted anisotropic exclusion was found. The later ArithmeticStatistics overview is not used as a supplier. Other later consumers are only downstream consumers. The supplied open-head context was used; this audit does not infer ownership from a title alone.

Resolved supplier contracts include the following. Part I and Part II are the earlier open roadmaps retrieved by the roadmap service; the completed roadmaps were read on main. Line numbers below exclude the service's one-line provenance header.

- ArithmeticStatisticsPartI: cubic convention; weighted orbit counts; local-condition families; quartic invariants and eligible pairs; coefficient boxes and binary discriminants (§0.12); restricted radicands and squareclass denominators (§0.15); symmetric pencils (§0.22); strong/weak divisibility and κ-weight refinements. The three obsolete reference aliases are separately identified in R06.
- ArithmeticStatisticsPartII: all 24 named supplier references were found, including §1.2 index-p subrings/overrings (lines 329 and 345), ternary-pair/quartic and quinary/quintic dictionaries, discriminant-preserving lifts, their bounded fibres, odd/even marked-pencil refinements, genus-one stabilizers, and the final divided-coefficient/three-isogeny targets. These supply algebraic dictionaries, not the new counting estimates.
- AnalyticNumberTheoryPartII §§5.4–5.7 (lines 656–734), §5.21 (line 1036), §§5.28–5.29 (lines 1328–1379): binary-cubic local types, finite weighted coefficients, field bounds, continuation, pole-aware convexity and real-character moment. The source excludes poles from its numerical bound; that restriction is preserved.
- AnalyticNumberTheoryPartI §§3.3–3.4, §3.22, §§3.26–3.27: ideal/divisor coefficient bounds, including small positive inputs. Completed ArithmeticDirichletSeries Layers 3, 6, 9: Euler-product data, Perron/continuation and Wiener–Ikehara with its nonnegativity and continuous-boundary hypotheses.
- GlobalNumberFields Layers 0–3 and 11: product formula, ideal lattices, class/unit charts and orders/index-square identities. GeometryOfNumbersAndQuadraticArithmetic §4.1: bounded-complexity semialgebraic Davenport counts; it does not itself give an arithmetic cusp estimate.
- AdelicAlgebraicGroups §§2.2–2.4, §3.4 (lines 1657, 1823, 1885, 3140): quotient/fundamental-multiset integrals and differential normalization. ArithmeticGaloisDuality §R02.3.2 (line 2074): ideles, S-units and S-class groups. AutomorphicLFunctionsAndLocalFactors §AL.0.4.2 (line 769): vector-space Poisson comparison and compact-uniform estimates. Finite adelic volume is not taken to mean volume one.
- SchemeAndStackFoundations Layers 0–3,5, especially §5.12 (line 7336), and AlgebraicCurves Layers 2,12: spreading, intersection bounds and normalization/model comparison. DeligneWeightsAndPurity §1.6 (line 989) explicitly imports the curve Weil bound from SchemeAndStackFoundations §5.11 (line 7273).
- AbelianSchemesAndArithmeticModuli §§A3.1–A3.6 and SelmerIwasawaCohomology §2.12a (line 675): finite-flat isogeny kernels, duality and general abelian-variety Kummer images. No restriction to elliptic curves was silently imposed.
- PolynomialGaloisGroups Layers 0,2,4 (static resolvents at line 781) and InverseGaloisAndArithmeticFundamentalGroups §§IG.2.4–IG.2.6: root actions, specialization guards and thin-set counts. The anisotropic uniform curve estimate remains a local target.
- OperatorTheory's `PolarDecomposition/README.md:471` and line 485, PD-C09–PD-C18: singular vectors and completion of their bases. The real two-dimensional singular-value specialization is supported.

No prerequisite is justified merely by citing a paper: the proof routes either name these supplier targets, native APIs, or local targets. In particular the function-field reduction branch, the fixed-resolvent quartic bound, the all-field transport, the paired even-degree estimates, the SL₂ volume value and the windowed number-field count are stated here, with their hypotheses. The dependency order paragraph separates the quartic finite-count and class-group-mass uses rather than deriving each from the other. No declared supplier gap was supplied for this package, and none was assumed into existence by the review.

## Not verifiable

Four bibliography texts could not be read legally through the source service. They are not treated as checked source witnesses, and the completed review is not parked for them:

- [18] cohen-dihedral, Cohen–Diaz y Diaz–Olivier, *Enumerating quartic dihedral extensions of ℚ*: DOI 10.1023/A:1016310902973 resolved to the Cambridge landing page; no readable legal text was obtained. The cited dihedral counting input in §2.8 remains uncertified against that text.
- [19] stichtenoth, *Algebraic Function Fields and Codes*, second edition, Theorem 1.5.15: the service classified the Springer DOI as paywalled without resolving it. The native Riemann–Roch API was inspected independently; the book locator was not certified.
- [23] lang-weil, *Number of points of varieties in finite fields*, DOI 10.2307/2372655: the service reached JSTOR's landing page but obtained no readable legal text. The roadmap's explicit local proof route and finite-field checks were reviewed, not the original printed proof.
- [24] platonov-rapinchuk, *Algebraic Groups and Number Theory*, Volume I, second edition, §5.3, Example 5.23, p.316: the Cambridge book DOI supplied no readable legal text. The proposed SL₂ volume argument and its named Poisson inputs were inspected; that textbook locator remains uncertified.

The conditional even-degree and windowed number-field statements are checked as implications with explicit analytic hypotheses. This review does not certify those hypotheses as already proved by the cited sources, or promote the conditional statements to unconditional theorems. No full proof of a planned theorem is supplied by an elaboration or finite regression table.

## Source issues

- **Error** in bs-quartic at Theorem 2.20, printed p.18: the source says the last-coefficient derivative detects every weakly divisible form; it should be some coefficient derivative, with separate coordinate cases; affects the proof.
- **Gap** in bs-quartic at Theorem 2.19 and equation (37), printed p.18: the source says the quartic-field transport covers the required orbit tail; it should be restricted to its field types and supplemented by the remaining types; affects the proof.
- **Gap** in bs-quartic at equation (8), printed p.9: the source says the fundamental-multiset multiplicity holds for every translate; it should be an almost-everywhere assertion or use a boundary convention; affects the proof.
- **Misprint** in bst-dh at Proposition 23 and §5.4, printed pp.12,14: the source says the Jacobian coefficient is 1/(2π) and the corresponding group volume is ζ(2)/π; it should be 1/(4π) and ζ(2)/(2π), respectively; affects nothing.
- **Gap** in bhargava-geomsieve at Lemma 3.1 proof, printed p.10: the source says a chosen nonzero resultant coefficient remains nonzero on the relevant variety; it should be stratified where that coefficient vanishes and bounded there separately; affects the proof.
- **Misprint** in bhargava-geomsieve at equations (40)–(44), printed pp.17–18: the source says the residue-count denominator is p²; it should be p^(2 dim V); affects nothing.
- **Gap** in bsw-sqfree1 at Theorem 4.4 proof, printed p.22: the source says the square-divisor summation can include zero discriminant; it should be restricted to nonzero discriminant before interchanging the finite divisor sums; affects the proof.
- **Error** in bsw-sqfree1 at Proposition 4.3 proof, printed p.22: the source says the conjugate-half subgroup has order 2(n/2)!; it should be 2((n/2)!)² for the wreath product; affects the proof.
- **Error** in bsw-sqfree2 at Proposition 3.6 proof, printed p.12: the source says complex full row rank forces nonzero Gram determinant; it should retain real coefficients or an explicit nondegenerate restricted pairing; affects the proof.
- **Error** in bsw-sqfree2 at Proposition 5.5, printed p.22: the source says the uniform row-spanning bound uses d(Λ); it should use the transformed covolume d(γΛ); affects a stated result.
- **Gap** in bsw-sqfree2 at Theorem 6.6, printed p.29, proof p.33: the source says the displayed proof yields saving 1/(4n); it should retain the minimum with (n−2)/(2n²+2n+2), unless the other error is improved; affects the proof.
- **Misprint** in bsw-global1 at proof of Theorem 5.2, printed p.20: the source says the local discriminant absolute value decreases under passage to an overorder; it should increase by the square of the local index; affects the proof.

- **Misprint** in bs-five at Theorem 12, printed p.7: the source says the main term is |J| times group volume times invariant count; it should include the factor 1/5 from the real stabilizer, as equation (18), p.17 does; affects a stated result.
