# Review of ArithmeticStatisticsPartV (pull request #1175 at afd499a)

**Verdict:** accepted

Three P3 citation corrections remain; no P1 or P2 finding. The gate passes. This verdict means the folder is ready for a human's final approval, not that its proposed theorems have been proved.

## R01 (P3) — Point the successive-minima contract at the existing sections

Location: `TauCetiRoadmap/ArithmeticStatisticsPartV/README.md:22`, repeated at lines 46 and 1258. Passage: “GeometryOfNumbersAndQuadraticArithmetic §§1.2–1.5”.

Claim: the cited supplier's Layer 1 currently ends at §1.3. The needed statements exist, but the range points beyond that layer.

Witness: `TauCetiRoadmap/GeometryOfNumbersAndQuadraticArithmetic/README.md:435` starts §1.3; target 1.3.3 at line 459 gives the upper Minkowski product inequality. Its attainment input is separately cited to SuccessiveMinima 1.5.

Repair: cite GeometryOfNumbersAndQuadraticArithmetic §§1.2–1.3, specifically 1.3.3 for the product inequality. Retain HeightsAndUnits for conversion to a basis. This repairs the locator without changing the intended input: for the box [−3,3]×[−1,1], (1/3)·1·12=4=2²; for ℚ(i), both integer-lattice minima are 1. This is not an unowned prerequisite: the needed contract is present.

## R02 (P3) — Correct the ordinary-class-group source subsection

Location: `TauCetiRoadmap/ArithmeticStatisticsPartV/README.md:974`. Passage: “§3.2, Lemma10, Corollary1 and proof, pp.11–12”.

Claim: Lemma 10 and the narrow/ordinary comparison are in §3.3 of the cited version, not §3.2.

Witness: ref90 line 510 starts §3.3; lines 518–528 give Lemma 10 and the exceptional-family criterion. The preceding §3.2 concerns the narrow group.

Repair: replace §3.2 by §3.3, retaining Lemma 10, Corollary 1 and the page locator. The repaired citation gives equality of square subgroups when a prime divisor is 3 modulo 4. For D=12 both four-ranks are 0; D=5 is in the candidate exceptional family but also has both four-ranks 0, as the README correctly allows.

## R03 (P3) — Cite the group-theoretic targets by their current names

Location: `TauCetiRoadmap/ArithmeticStatisticsPartV/README.md:17`, repeated at line 50. Passage: “`ReducedSchur.reducedMultiplier` and `ReducedSchur.ReducedCover`”.

Claim: these spellings, and `centralizer_generator_quotient`, `finite_parity_comparison`, `order96Type` at line 50, are not declarations in the named suppliers' current README or Suggested.lean files. The actual mathematical targets are present under prose headings, so this is a citation correction, not a supplier gap.

Witness: InverseGaloisAndArithmeticFundamentalGroups §IG.3.4 has “The reduced Schur multiplier” and “Reduced Schur covers”; InductionRestrictionPartII §§RS.6.4–6.6 have the quotient, parity and order-96 targets. Neither Suggested.lean declares the cited spellings.

Repair: replace the five code identifiers with those exact target titles and section locators. Preserve the chosen cover and marking assumptions. The corrected contracts give M(C₂²,∅)=C₂, M(C₂²,c)=0 for all nonidentity elements c, and order 2·12·4=96 for the specified A₄ model; no new theory or gap is needed.

## Verified sound

The entire README and Suggested.lean were read at the requested head. The review revisited all seven previous findings, all 15 seeded source sections, the definitions and proof routes outside that sample, the 41 admitted headline statements and their seven supporting definitions. There are no explicitly unverified locators in the README. The worktree and PR were not changed. The diff outside this roadmap folder is empty.

No route-specific exclusion of wild primes, sorry-backed data, set_option, placeholder proposition, computational algorithm, or copied source passage was identified. General étale algebras remain in the orbit dictionaries; the field locus is imposed separately. Conditional spin estimates and the even-degree binary tail remain conditional. The finite-simple-group prerequisite is now owned, including its exhaustiveness obligation if classification is used; CFSGStatement is not credited with a classification proof.

### Previous findings, individually

| Previous finding | Passage at this head and assessment | Recomputed witness |
| --- | --- | --- |
| R01, unowned finite-simple-group theorem | README:1901: “for every finite group S with `IsSimpleGroup S` and two elements x,y satisfying xy≠yx”; **repaired**. Suggested.lean:300 states the owned theorem. | A₅/A₄: 144>60; direct square: 20736>3600. C₂ has only 1²<2 and is excluded. |
| R02, nonexistent translation declaration | README:40: “uses `Polynomial.discr_prod_X_sub_C` and `Polynomial.Monic.discr_map`”; README:2388 owns the translation comparison; **repaired**. | X²−9 and X²+2X−8 both have Δ=36; X² and (X+1)² both have Δ=0. |
| R03, duplicated residue/plane-curve estimates | README:18: “ArithmeticStatisticsPartI §0.6 owns squarefree residue counts”; line 62 names Part III's rectangular estimate; **repaired**. | q=4 gives density 2/π² in each allowed class; P₁=P₂=B, T=Bⁿ gives B^(1/n+ε). |
| R04, undefined short-sum conjecture | README:2128 supplies “some δ(d)>0” before ε, its constant and the uniform interval parameters; **repaired**. | χ₃ sums to 1 on {1}, to 0 on a complete period. A principal character sums to 2k on 3k integers and is excluded. |
| R05, fields confused with étale algebras | README:700: “the separable degree-n étale F-algebras”; field and generic restrictions are separate; **repaired**. | v=4 gives ℚ×ℚ, v=8 gives ℚ(√2); only the latter is in the field locus. Split local algebras are retained. |
| R06, Part II fragments | README:66 links to §§1.1, 1.2, 1.3, 1.10; later binary factors link to §1.9; **repaired**. | All five destination headings exist; the cubic, quartic and quintic degrees remain 3,4,5. |
| R07, S-integral carrier Checks | README:722–738 separates lattice, group and algebra tests; **repaired**. | At S={∞}, 1/2 and diag(2,1) fail integrality/invertibility; adding 2 admits both. The β twist sends y³ to y³/2 and 4x³ to 16x³. |

### Seeded source audit

The sources service supplied 37 readable versions covering the cited works; duplicate reference numbers were treated as the same work, not new sources. The following locators were checked in the texts themselves. The Datskovsky–Wright and Rhoades formulas were also inspected in page images because their OCR omitted parts of the formulas. Source errors are distinguished from roadmap errors below.

| Seeded target | Text and locator actually checked | Scope and normalization checked |
| --- | --- | --- |
| §3.3 resolvents and mean three-torsion | ref5 lines 1483–1535, Proposition 29 and §8.1, pp.23–24; ref93 lines 676–699, quadratic discriminants and cubic fibres; ref5 lines 13–90, Theorems 1–4, pp.1–2 | Nontrivial unramified cubic characters are paired with inverses; (h₃−1)/2, signs and total-ramification exclusion. The mean is ordinary three-torsion. |
| §3.4 cubic local specifications | ref5 lines 114–195, Theorems 7–8 and acceptable/strongly acceptable definitions, p.3; lines 1579–1688, Theorem 31, Lemma 32 and local masses, pp.25–26 | Orders versus maximal orders, stabilizer weights, archimedean factor, all primes including 2 and 3. The Q_p/Z_p source slip is not copied. |
| §3.5 secondary terms | ref5 lines 52–113, Theorems 3–6, p.2; lines 1332–1341, Theorem 27/Remark 3, pp.19–20; lines 2256–2305, secondary specialization, pp.35–36 | Signed secondary constants, X^(5/6), error X^(13/16+ε), and stronger local hypotheses. The cumulative specialization consumes Part III rather than reproving its lattice sieve. |
| §3.23 rigid fields and relative torsion | ref95 lines 1822–1905, Lemma 6.6, Definition 6.7, Lemmas 6.8–6.9, pp.35–36; lines 344–371, norm splitting and Lemma 2.3, pp.7–8 | Rigid labels, embedded versus isomorphism-class weights, coprimality of torsion exponent and extension degree. |
| §3.21 S-integral orbits | ref20 lines 533–660, Theorems 3.1–3.4, pp.10–12; lines 1155–1199, Theorem 6.1, p.21; lines 1479–1496, Theorem 9.1, pp.27–28 | General étale dictionary, β-components, S-maximality, generic S_n locus and local Jacobians. Field and split algebra conditions are not interchanged. |
| §3.7 low-degree means | ref20 lines 54–178, Theorems 1–4, pp.2–3; lines 235–296, Theorems 6–8, pp.5–6; ref142 lines 25–165, Theorems 1–4, pp.1–3 | Reciprocal automorphism weighting over an arbitrary number field; ordinary/narrow means and real-place parameters; S₄ and S₅ signature constants. |
| §3.22 four-rank expansions | ref90 lines 488–530, Theorem 5 proof and Lemma 10, pp.11–12; lines 724–775, (20) and phase; lines 1991–2018, 2341–2364, 2513–2559, 2746–2771, 2927–2969, Lemmas 28,34,39,41,43; ref94 lines 218–330, Lemma 3, Corollary 4 and Theorem 5, pp.5–8 | All six sign/parity families, powers of two, −1 and 2 twists, narrow rank, strict separator inequality and moment-growth hypothesis. R02 is the subsection correction. |
| §3.19 conductors | ref5 lines 1483–1535 and ref95 lines 777–865, cubic/resolvent and order-mass arguments; README's wild-unit filtration proof | Δ_cubic=Δ_quadratic·f² includes f=9 at 3; local order mass uses Aut(order), not a generic algebra's automorphism group on isomorphism classes. |
| §3.25 uniform quadratic towers | ref95 lines 315–345, Lemma 2.1, p.7; lines 465–515, Theorem 3.1, pp.10–12; lines 580–865, Proposition 3.6 and Lemmas 3.7–3.14, pp.12–17; lines 1120–1320, Theorems 5.1,5.6 and Lemma 5.8, pp.22–25; ref144 lines 641–704 and 1662–1690, Theorems 3.1 and 6.1, printed pp.42–45,68 | Degree-uniform constants, five ranges, order weights, ideal-count threshold, wild conductors, and tower tails. The two displayed local order factors match the page images. |
| §3.26 wreath counts | ref95 lines 1581–1800, Theorems 6.1–6.2 and thin-tower arguments, pp.30–34; lines 2298–2370, Theorem 8.1, pp.44–45 | Transposition hypothesis, unique quadratic block system, relative rather than absolute torsion numerator, signature and base-field constants. |
| §3.29 Galois/quartic bounds | ref102 lines 460–510 and following induction, Proposition 2.8/Remark 2.10, printed pp.734–737; ref108 lines 100–270, Theorems 2–8, pp.2–5; ref109 lines 20–115, Theorems 1.1–1.6, pp.1–3; ref143 lines 150–280, Theorem 2.2, pp.5–6, and 347–423, Propositions 3.3,3.7, pp.8–9; ref99 lines 270–340 and §6, pp.7–10 | Nonabelian simple groups, regular action, exceptional pure-cubic logarithm, norm-square quartic parametrization, dyadic discriminants and coefficient-uniform ideal bound. |
| §3.30 spin and governing fields | ref134 lines 45–155, Theorem A, printed p.64; ref135 lines 1–120 and 1120–1190, Theorem 1/Proposition 6.1; ref103 lines 1–195, Theorems 1,3, and 315–390, C_n and Type I/II hypotheses, pp.1–8 | Splitting restrictions, principality correction, dependence on the specified spin set, and δ before the interval parameters. No unconditional sixteen-rank governing-field conclusion is asserted. |
| §3.31 Pell | ref104 lines 40–130, historical introduction; ref139 lines 1–220, Theorem 1, Corollary 1 and Lemma 2, printed pp.2037–2039, and lines 843–885, Proposition 2, pp.2052–2053; ref145 lines 243–262 and page image, Theorem 2.7, p.7 | Radicand/discriminant distinction, factor two, fixed t before X, graph probability q_t and the separate equidistribution proof. No claim that these historical inequalities prove density 1−α. |
| §3.33 monogenic predictions | ref105 lines 1110–1238, §5, Lemmas 5.1–5.3, Theorem 5.4, Remark 5.6 and (42)–(43), pp.24–27 | The prediction is conjectural and restricted to n≥3; the proven lower bound instead uses the owned separated-root O(Y) fibre argument. The source's uniqueness and trace-zero problems are not prerequisites. |
| §3.35 all fields through degree five | ref142 lines 25–165, Theorems 1–4, pp.1–3; lines 1165–1220, Lemma 14, p.23; lines 1360–1410, Theorem 17, pp.27–28; lines 1449–1495, proof of Lemma 14, pp.29–30 | All quintic fields versus S₅, local exclusions of proper transitive groups, and the extra linear D₄ contribution in degree four. |

### Computed adversarial pass

The 153 rows below record actual substitutions, finite counts, symbolic specializations or negative controls. These tests do not prove an asymptotic theorem. “Pass” means the computed instance agrees with the stated formula and its hypotheses; the change column records any requested correction. The six FK sums and the large Mertens integer counts were recomputed directly, not copied as evidence from the README.

| Statement / target | Instances tried | Computed sides or competing values | Result / change |
| --- | --- | --- | --- |
| Quartic invariant convention | x⁴−y⁴ | I=−12, J=0, Δ=−256; 4I³−J²=−6912=27Δ | Pass; none |
| Elliptic/invariant height conversion | A=−1,B=0; invariant scaling | H_E=4,H_IJ=27; 27·4=4·27=108; scaling multiplier 4096 | Pass; none |
| Cutoffs, empty sums, automorphism weights | X<1; degree 3 S₃ and C₃ | Empty numerator=denominator=0, Lean ratio=0; S₃ has 3·(1/3)=1; C₃ has 1·(3/3)=1 | Pass; limiting positive denominators retained |
| Cubic splitting-symbol partition | p=2,3 | Five nonzero counts (1,3,2,6,3), sum 15; (8,24,16,24,8), sum 80 | Pass; zero form excluded |
| Cubic reduction versus maximality | maximal Δ=−83 and index-two order Δ=−332 | Δ_order=4Δ_field; mod 2 algebras F₂×F₄ versus F₂×F₂[ε]/ε² | Pass; maximality is necessary |
| Splitting densities | p=2 | (1,3,2,6,3)/16; total 15/16, zero mass 1/16 | Pass; none |
| Maximal splitting densities | p=2 | Total maximal density 21/32; no-total-ramification density 9/16; difference 3/32 | Pass; no omitted dyadic factor |
| Maximal/nonmaximal cubic local test | y³+2x³; y³+4x³ | First Eisenstein cubic is maximal at 2; second has index divisible by 2; discriminant valuations 2 versus 4 | Pass; none |
| Irreducible cubic ring to field | x³−x−1; split cubic algebra | Field discriminant −23, domain; split algebra has nonzero zero divisors | Pass; irreducibility retained |
| Davenport–Heilbronn cubic count | both signs | Positive constant 1/(12ζ(3)), negative 1/(4ζ(3)); ratio 3, sum 1/(3ζ(3)) | Pass; none |
| Resolvent correspondence | Δ=−23; Δ=−3,−4 | h₃=3 gives (3−1)/2=1; h₃=1 gives 0 | Pass; trivial character removed |
| Three-torsion fibre formula | same fields, positive Δ=229 | x³−x−1 has −23; x³−4x+1 has 229; signs are distinct, no absolute-value collapse | Pass; none |
| Large-prime total-ramification tail | cutoff Y, smallest q=2 | Σ_{m>Y}m⁻²≤1/(Y−1) for Y>1; q=2 has finite nonzero contribution | Pass; tail is summed, not primewise discarded |
| Quadratic discriminant count | squarefree n<1000 by n mod 4 | Counts (0,200,204,204), versus densities (0,2/π²,2/π²,2/π²); total 608 | Pass; Part I specialization |
| DH three-torsion means | negative −25<D<0 | 10 fields, torsion sum 12, finite ratio 6/5; limiting target 2, not a finite-X equality | Pass; real target 4/3 distinct |
| Acceptable versus strongly acceptable specifications | unrestricted, maximal, empty at one place | Local density 1, 21/32 at p=2, 0 respectively; empty local set forces global count 0 | Pass; positivity needed for ratios |
| Local cubic mass normalization | p=2, split algebra | #GL₂(F₂)/2⁴=3/8; split mass 1/6 gives 1/16 | Pass; stabilizer factor retained |
| All-order and maximal local masses | p=2 | All-order mass 8/3 gives 1; maximal mass 7/4 gives 21/32 | Pass; none |
| Local specification global formula | unrestricted archimedean signs | Real factors 1/6 and 1/2 have ratio 3; empty selector multiplies either by 0 | Pass; none |
| Roberts secondary term | ± signs | Leading ratio 3; secondary ratio √3; exponents 1,5/6,13/16 are distinct | Pass; none |
| Secondary three-torsion mean | quadratic sign coefficients | Leading 4/3 and 2; secondary scale X^(5/6)/X=X^(−1/6) in the average | Pass; no constant-term substitution |
| Secondary local-specification refinement | change one local selector to empty | Both leading and secondary local factors vanish; resulting main terms 0 | Pass; strong acceptability kept |
| Mertens positive definite count | X=10⁴,10⁵,4·10⁵ | Reduced counts 172131,5494441,44054144; normalized 0.172131,0.173750,0.174139 versus π/18=0.174533 | Pass; all three README counts reproduced |
| Positive definite boundary and content | D=−3,−4,−12,−16 | Class counts 1,1,2,2; including negative definite forms doubles them | Pass; native orbit convention |
| Quadratic-character interval estimate | χ₃, interval and progression | Sum on {1,2,3}=0; {1}=1; progression 1 mod 3 of length H sums H | Pass; coprime step essential |
| Siegel primitive regulator mean | D=5,20; q and 2q | ε₅=(3+√5)/2; ε₂₀=ε₅³; stabilizer of 2q still has period log ε₅ | Pass; primitive-part regulator retained |
| All-order L-value coefficient | square indices m=1,2 | ρ(1)=1/2,ρ(4)=1/4; sum ρ(m²)/m²=ζ(2)/(2ζ(3)); Abel factor 2/3 gives π²/(18ζ(3)) | Pass; none |
| Quoted quadratic/cubic classical constants | primitive/all forms; maximal/all cubic orders | ζ(3)·π²/(18ζ(3))=π²/18; (π²/72)/(1/(12ζ(3)))=ζ(2)ζ(3) | Pass; conventions not mixed |
| Rigid field definition and forgetful maps | degree 1, quadratic, S₃ cubic | Rigid counts per class 1,2,18; S₃ embedded count 3 and each embedded labelling count 6 | Pass; three different carriers distinguished |
| Relative torsion splitting | degree 2, ℓ=3 and ℓ=2; identity | 2·2=1 mod 3 gives section; 2=0 mod 2 has no inverse; identity norm kernel has size 1 | Pass; coprimality retained |
| S-integral étale dictionary | degree 2, v=4,8 | ℚ×ℚ versus ℚ(√2); both étale, only second a field | Pass; previous R05 repaired |
| L_β membership | β=1, S={∞} and {∞,2} | Zero belongs to both; coefficient 1/2 fails first and belongs to second | Pass; not all V(ℚ) |
| Γ_β membership | identity, diag(2,1), S as above | Identity in both; determinant 2 not a ℤ-unit but is a ℤ[1/2]-unit | Pass; not all G(ℚ) |
| β-twisted lattice/action | β=diag(2,1) on cubics | β·y³=y³/2; β·4x³=16x³; β⁻¹·x³=x³/4 | Pass; determinant twist direction fixed |
| Global field versus local algebra selector | split completion of a quadratic field | Global field degree 2; local algebra can be F_v×F_v with two idempotents | Pass; no all-local-fields restriction |
| S-integral maximal sieve | empty selector; one nonmaximal prime | Empty family count 0; index-p order has Δ multiplied by p² and leaves maximal locus | Pass; all β-components retained |
| Jacobian and archimedean mass | degrees 4 and 5 | Quartic factors 1/48,1/8,1/16 sum 5/24; quintic 1/240,1/24,1/16 sum 13/120 | Pass; no factor-two loss |
| Quartic/quintic Euler constants | p=2 | Quartic 1+1/4−1/8−1/16=17/16; quintic 1+1/4−1/16−1/32=37/32 | Pass; none |
| Quartic class-group fibre | trivial versus nontrivial quadratic characters | Trivial character gives split quadratic algebra; nonzero C₂ character determines a quadratic field; resolvent multiplicities 1 for S₄ and 3 for A₄ | Pass; full algebra fibre precedes field restriction |
| Relative class-group mass ratios | F=ℚ, real cubic types | Ordinary means 1+1/4=5/4 and 1+1/2=3/2; totally real narrow mean 2 | Pass; ordinary/narrow not conflated |
| S₄ field theorem | all signatures | Weighted archimedean sum 5/24; S₄ field has 4 embedded representatives, each weight 1/4 | Pass; unweighted class contribution 1 |
| S₅ field theorem | all signatures | Weighted archimedean sum 13/120; 5 representatives each weight 1/5 | Pass; contribution 1 |
| BSW number-field theorem | n=2,F=ℚ; F=ℚ(i) residue | Weighted quadratic constant 3/π² versus unweighted 6/π²; κ_ℚ(i)=π/4 | Pass; reciprocal automorphism convention |
| Cubic two-torsion mean | F=ℚ, a=0,1; complex base | Formula gives 3/2,5/4; r₁=0,r₂=1 gives 5/4 | Pass; all base signatures retained |
| Four-rank definition | C₂,C₄,C₈, trivial group | Two-torsion in squares has cardinal 1,2,2,1; ranks 0,1,1,0 | Pass; not full two-torsion |
| Conic four-rank formula | D=5 | b=1,5 give two soluble conics; half-count 1=2⁰; adding negative b would give 2 | Pass; divisor sign fixed |
| Negative odd Jacobi expansion | D=−3,−39; k=1,2 | Exact factor-assignment sums (1,1) and (2,4), respectively; equal 2^(k·rank) for ranks 0,1 | Pass; none |
| Positive odd Jacobi expansion | D=5; k=1,2 | Exact sums 1,1, including the −1 character; equal 2⁰,2⁰ | Pass; none |
| Negative 8-family expansion | D=−8; k=1,2 | Exact sums 1,1; inserting the absent 2^(−k) would give 1/2,1/4 | Pass; none |
| Positive 8-family expansion | D=8; k=1,2 | Γ-sum gives 1,1; its 2^k empty-prime terms cancel the prefactor | Pass; none |
| Negative 4-family expansion | D=−4; k=1,2 | Γ-sum gives 1,1, with empty odd-prime product 1 | Pass; none |
| Positive 4-family expansion | D=12; k=1,2 | Exact sums 1,1 with odd product 3 mod 4 | Pass; none |
| Maximal unlinked support | k=1, points 00,01 | Their linkage is 0; cardinal 2=2¹; all four points contain linked pairs | Pass; no full-space support |
| FK main coefficients | k=0,1,2 | N(k,2)=1,2,5 and N(3,2)=16; imaginary 1,2,5; real 1,3/2,11/4 | Pass; none |
| Narrow/ordinary comparison | D=12 and D=5 | Both pairs of four-ranks (0,0); D=12 has a 3 mod 4 divisor, D=5 merely lies in candidate family | Pass; R02 locator only |
| Rank-grid zero lemma | zero function; constant; Euler product | Zero satisfies bounds; nonzero constant has g(1)≠0; product has ω=0,α=1/2 and 0>0 is false | Pass; strict threshold necessary |
| Rank moment determinacy | p=2,u=0,1; rank-zero point mass | Prescribed moments at k=0,1 are (1,2),(1,3/2); point mass gives (1,1) | Pass; nonvacuous moment hypothesis |
| FK moment/law headlines | p=2,r=0,u=0,1 | η∞≈0.288788095; rank-zero probabilities ≈0.288788095,0.577576190; not equal | Pass; sign parameter matters |
| Malle index and cyclotomic orbit definitions | S₃ natural/regular; C₃; identity | Transposition indices 1/3; C₃ index 2; identity index 0 excluded from minimum | Pass; action recorded |
| Malle a,b and conjectural status | C₃ over ℚ and ℚ(ζ₃); V₄ regular | (a,b)=(1/2,1),(1/2,2); V₄=(1/2,3), predicting log² | Pass; no unconditional conjecture |
| Abelian conductor series | simple/double pole at a | Residue c gives coefficient c/a; double pole adds log X; trivial group has singleton count 1 | Pass; trivial group excluded from pole assertion |
| Klüners obstruction | C₃≀C₂ in degree 6 | Group order 18, minimum index 2; X^(1/2)log X divided by X^(1/2) tends to ∞ | Pass; original prediction really fails |
| Cubic conductor–discriminant | x³−3 and x³−2 | −243=(−3)·9²; −108=(−3)·6² | Pass; wild and nonsquarefree conductors retained |
| Quadratic order three-torsion bound | conductor 9 over ℚ(√−39) | Local 3-primary kernel can have order 9; replacing wild factor by 3 is too small | Pass; corrected wild bound |
| Relative small-split-prime torsion estimate | d=2,ℓ=3 | θ range 0<θ<1/(12(N−1)); zero split-prime count cannot enter a denominator | Pass; positivity conditions retained |
| Integer-lattice largest minimum | ℚ(i); arbitrary diag(1,T²) | Arithmetic minima (1,1); generic last minimum T and covolume T do not imply T≤C√T | Pass; ring multiplication essential; R01 locator |
| Small square-ideal generators | principal unit ideal and square ideal | Unit ideal gives norm 1=1²; squaring ideal norm 2 gives norm 4, not 2 | Pass; square condition distinguished |
| Square-norm curve estimate | degrees 3,4, P₁=P₂=B | Imported curve exponent B^(1/3),B^(1/4); resulting torsion exponents 1/3,3/8 | Pass; coefficient-independent supplier |
| General two-torsion saving | n=3,4 | 1/2−1/(2n)=1/3,3/8; degree 1 is outside stated n≥3 signature | Pass; none |
| Elliptic integral-point bound | nonsingular cubic; singular discriminant 0 | β=0.2782386677; Δ=0 would kill a positive-power discriminant bound and is excluded | Pass; native nonsingularity retained |
| Cubic torsion feedback | β above | a=1/[6(1−β/log 2)]=0.2784337427<1/3; replacing log 2 by 1 changes a | Pass; all cubic fields included |
| Uniform quadratic field count | F=ℚ,X≥1; X<1 | D_F=h₂(F)=1 gives O(X); relative discriminant norms below 1 count 0 | Pass; constant chosen before F |
| Shintani cubic order estimate | D=h=1; X=D³h^(2/3) | First becomes O(X+X^(−1/2−ε)); at threshold error has X-scale up to D^ε | Pass; degree-one contour handled separately |
| Relative torsion propagation | F=ℚ | Bound becomes O(√X+X); unit ideal contributes 1, not 0 | Pass; no all-conductor equality assumed |
| Local cubic order factors | q=3,s=1 | Totally ramified 2187/1936; split 675/484; denominator retains 1−3/9³ | Pass; page-image formula agrees |
| Order mass versus generic stabilizer | ℚ×ℚ(√5), index 11 | Embedded orders 3; orbits of sizes 2,1; masses 1+1/2=3/2 versus erroneous generic-class mass 1 | Pass; source error repaired |
| Cubic character Euler cancellation | χ³=1, formal u | (1−χ²u²)/(1−χu)=1+χu; constant coefficient 1 | Pass; no tame restriction needed |
| Five-range torsion bound | four transition cutoffs | Adjacent values D²; D^(5/2)h^(2/3); D³h^(2/3); D³h^(2/3) | Pass; ranges join |
| Quadratic tower tail | tower top bound X, base D>√X | D_top≥D²>X gives empty tail; at D=h=1 the large-range estimate is X | Pass; order of cutoffs retained |
| Wreath transposition fibre | d=1,2 | C₂≀1=C₂; C₂≀C₂=D₄ of order 8; block labellings 2^d=2,4 | Pass; quadratic blocks distinguished |
| Thin two-group torsion | zero tower length; positive length | Degree-one family is singleton with three-torsion 1; positive-length estimates are asymptotic families | Pass; no m=0 extrapolation |
| Two-extension field count | k=ℚ,m=1 | Coefficient specializes to 6/π², the quadratic count; quadratic automorphism count 2 cancels degree 2 | Pass; none |
| Two-extension three-torsion mean | k=ℚ,m=1, real/imaginary mix | Equal leading family sizes give (4/3+2)/2=5/3 | Pass; not 2 or 4/3 universally |
| Relative wreath mean | signature parameter u=0,1 | 1+3^(−u)=2,4/3; identity relative norm kernel has size 1 | Pass; relative numerator retained |
| Embedded quadratic-wreath type | G=C₃,C₂,1 | Inverse graph gives S₃, V₄, C₂ respectively; outside-involution classes 1,2,1 | Pass; good/bad types distinguished |
| Moment normalization | (A₃,S₃), real/imaginary | Unrigid means 1/6,1/2; rigid factors 6,2 give 1,1 | Pass; maps are not unmarked counts |
| Admissibility and abelianization | C₃ inversion; C₂ trivial inversion | S₃ abelianization C₂; V₄ has two-dimensional elementary quotient | Pass; good-type condition restrictive |
| Embedded-type/Goursat classification | #G=12,#N=4 | Ambient type size 2·12·4=96; changing N to 1 gives 24 | Pass; quotient data retained |
| Elementary-two T definition | k=1,s=1,2 | Dyadic factors 2,19/16; naive odd-prime rule at s=2 gives 3/2 | Pass; three discriminating local tests |
| Elementary-two U definition | k=1,s=1; p=3,5 | Dyadic 1/2; odd factors 1/3,7/5; opposite dyadic sign gives 3/2 | Pass; mod-four selector retained |
| Elementary-two V definition | k=1,s=1; p=3,5 | Dyadic 5/4; odd factors 1,7/5; adding absent dyadic term gives 7/4 | Pass; none |
| T,U,V continuation and selectors | k=1 | Zeta pole orders 2,0,1; normalized dyadic factors 1/2,1/2,5/8; real/imaginary constant coefficients 1,0 | Pass; not evaluation of divergent series |
| Elementary-two divergence | k=1 versus k=0 | Leading scale X log X versus X; divided by quadratic X gives log X versus constant | Pass; k≥1 essential |
| Low-degree alternating moments | n=3,4,5 over ℚ | Imaginary 1/2,1/4,1/12; real 1/6,1/24,1/120 | Pass; native headline matches |
| Q₈ residue factors | p=3; χ(2)=±1 | A₃=20/27, lower B₃=16/27; dyadic 1/4,3/4; extending lower product to p=2 gives 0 | Pass; separate dyadic factor essential |
| Restricted L-value mean/divergence | fixed R=5·13·17 | R=1105 forces at least 3 primes; 2√(3/5)>1; harmonic lower sum grows C_R log T | Pass; restricted mean supplied separately |
| A₄ kernel/field correspondence | two eligible kernels; sample size m=2 | Labels 2·24=48; bootstrap values 0,48,48,96 have mean 48 | Pass; kernel count not labelled-surjection count |
| Small trace-zero element | ℚ(√d); biquadratic field | Tr(√d)=0; in degree 4 a quadratic-subfield element still has degree 2 | Pass; generator exclusion needed |
| Schmidt uniform field bound | n=2,4 | Exponents (n+2)/4=1,3/2; uniform constant precedes the varying base | Pass; no fixed-base constant summed |
| Mixed-trace finite fibres | r=3,n=6,d=4,5 | Monomial counts 15≤18,21>18; map (x,y)↦(x,xy) has infinite fibre at (0,0) but singleton at x≠0 | Pass; excluded determinant locus retained |
| Mixed-trace interpolation exception | r=4,n=9,d=4 | 35<36, so this exceptional double-point configuration cannot satisfy the selected dimension inequality | Pass; no generic-rank overclaim |
| Lemke Oliver–Thorne headline | n=2,3,4,5 | Least d=2,3,3,4; stated flexible exponents 3,11/3,17/4,24/5 | Pass; small degrees not dropped |
| Cyclic-prime counts | p=2,3; V₄ | Exponents 1,1/2; p−1 character labels 1,2; V₄ has log² and is not cyclic prime | Pass; no pure-power overclaim |
| Finite-simple large subgroup | A₅,A₄; C₂; r=0,2 | 144>60; 1<2; r=0 yields 1=1, r=2 gives 20736>3600 | Pass; nonabelian and r≥1 retained |
| Conditional/unconditional Galois bounds | h=60; small abelian branch | 1/4+1/(2√60)+1/60≈0.331216<3/8; 17/48<18/48 | Pass; owned group input closes implication |
| Fixed quadratic resolvent | F=ℚ(√−3) | log √X=(1/2)log X; conversion gives 7/(60√3), not 7/(30√3) | Pass; exceptional logarithm retained |
| Baily quartic bound | empty and singleton family | Empty sum=count=0; singleton retains h₂(K)log²(2D_K)/√D_K | Pass; arbitrary subfamilies permitted |
| Square-norm ideal subsets | local types 111,12,3,1²1,1³ | Subset/degree-one counts (3,3),(1,1),(0,0),(1,2),(0,1) | Pass; ramified cases included |
| Dyadic discriminant comparison | c divides 2O_K | v(d)=2v(2)+v(a)−2v(c)≥v(a); equality when v(c)=v(2) | Pass; no odd-only conductor |
| Uniform cubic ideal count | T=D² | Error D^(1/2)T^(1/4)=D≤D²=T; below threshold log(2T)≤2log(2D) | Pass; uniformity proved in route |
| Weighted partial summation | b=0,1; a=0 negative control | Both positive-a cases give exponent 1/2+a+ε; at a=0 dyadic shells add a logarithm | Pass; a>0 retained |
| Quartic torsion applications | computed cubic exponent a | 1/2+a=0.7784337427; exceptional resolvent adds log before ε-absorption | Pass; cyclic cubics included |
| Governing-field definition | same Frobenius class, excluded ramified prime | Class function must give equal ranks on that class; ramified Frobenius is undefined, hence finite exceptional set necessary | Pass; domain specified |
| Eight-rank governing example | p=5,17 | h(−20)=2,h(−68)=4, so eight-rank 0 in both; four-ranks differ 0,1 | Pass; rank level not confused |
| Principality computation | degree-eight auxiliary field | 2³⁶/128²=2²²; Minkowski bound ≈12.935; prime-ideal norms 81,25,49,14641 all exceed it | Pass; integral index matters |
| Sixteen-rank spin criterion | split vs nonsplit prime | Split primes enter the residue-symbol criterion; nonsplit primes fail the splitting hypothesis, not a forced zero spin | Pass; condition retained |
| Conditional joint-spin bound | Q=27,d=3,χ₃ | Allowed N≤3; N=1 sum 1,N=3 sum 0; principal sums grow 2N/3 | Pass; δ and ε quantifiers explicit |
| No sixteen-rank governing field | fixed field, Chebotarev class | Positive-density class gives cX/log X; spin cancellation gives o(X/log X), incompatible for c>0 | Pass; explicitly conditional |
| Restricted Pell radicands | d=1,2,3,5 | 1 has (0,1), gives ℚ; 2 has (1,1), field Δ=8; 3 forbidden; 5 has (2,1), field Δ=5 | Pass; radicand not discriminant |
| Historical Pell bounds | α and upper bound | α≈0.419422442<2/3≈0.666666667; 1−α≈0.580577558 lies between | Pass; no density conclusion |
| Fixed-prime-factor Pell law | t=1,2,3,4 | q_t=1,1/2,1/2,7/16; 2×2 symmetric matrices: 4/8 invertible, general matrices: 6/16 | Pass; symmetric law required |
| Pell graph criterion | primes 5,13 and 5,41 | Symbols −1,+1; first Laplacian rank 1 and 8²−65=−1; second rank 0 gives no conclusion | Pass; graph criterion one-way |
| Pell pattern equidistribution route | t=2, off-diagonal pair | Diagonal character sum O(PQ); off-diagonal conductor q₁q₂ gives O(Q log(2Q)); Cauchy yields P√Q+√P Q^(3/2)√log(2Q) | Pass; hyperbolic cutoff handled |
| Polynomial embedding metric | X²+1; X²−2 | Gram diag(1,1) and diag(2,4); counting both complex embeddings would double first | Pass; unweighted complex-pair convention |
| General reduced Gram basis | diag(1,2),diag(2,1),diag(1,1) | First reduced and strong; second fails first minimum; third reduced but swap gives a second basis | Pass; signs and ties retained |
| Monic quasi-reduction | X²+1/4; dilation ρ=2,3 | Gram diag(1,1/4) fails fixed-first minimum; at ρ=2 tie diag(1,1), at ρ=3 strong diag(1,9/4) | Pass; not universal quasi-reduction |
| Binary quasi-reduction | x²+2xy+3y²; x²+y²/4 | Substitution x↦x−y gives x²+2y²; second has discriminant −1 and a primitive vector of norm²≤1/2<1 | Pass; restricted change group |
| Polynomial/binary dilation laws | ρ=2 | Monic basis scales (1,2,4,…); binary order basis scales (1,2,2,…), not overall homothety | Pass; none |
| Squarefree field discriminant implies S_n | quadratic Δ=5; cubic Δ=−23 | Normal-closure degrees 2!=2,3!=6; ramified inertia is transposition | Pass; degree≥2 and squarefree required |
| Monic finite-modulus sieve | H=10,q=4,residue 0 in second coefficient | Count 49 versus length/q main term 50; q=1 gives 199 versus 200 | Pass; fixed-modulus boundary O(1) |
| Weak quasi-reduction | root expansion on compact separated set | Gram–Schmidt degree-j lengths scale ρ^j; X²+1/4 crosses first-minimum obstruction only after ρ≥2 | Pass; threshold depends on region |
| Strong reduction ring fibres | independent signs; tied X²+1 | At least 2^n sign variants; tied quadratic also admits swap, so literal basis uniqueness fails | Pass; quotient by signs stated |
| Trace-slice translation | X²−9 translated by 1 | X²+2X−8 has Δ=36; modulo 4 and 9 both sides 0; repeated roots give 0=0 | Pass; owned identity uses real pinned inputs |
| Trace-slice local squarefree density | n=2,a=0 and a=1 | Δ=−4b gives κ₂=0; Δ=1−4b gives κ₂=1 and odd factors 1−p⁻²; product 8/π² | Pass; positive density not assumed on trace zero |
| Trace-slice tail | fixed polynomial with Δ=36 | No p>6 has p² dividing Δ; translation preserves Δ, averaging loses exactly one height power | Pass; no arbitrary-lattice tail assumed |
| Short-generator upper bound | n=2,3 | Trace normalization leaves growth exponents 2,5 rather than full polynomial-box exponents 3,6 | Pass; translations accounted for |
| Regular monic region and dilation | roots ±1,±i; repeated roots; D₂D₃ | C=1,c=2 for both simple examples; c=0 for repeated roots; coefficient pair (1,2) maps to (6,72) | Pass; signature/open-region controls |
| Root-separation junk cases | n=0,1 | Empty tuple makes separation vacuous; lone zero root satisfies upper bound 0 but not −1 | Pass; n≥2 in field theorem |
| Regular monic sieve | degree 2,3; forced p² divisibility | Dilation volumes Y³,Y⁶; forced bad residue gives local density 0 | Pass; positivity hypothesis discriminates |
| Separated-generator multiplicity | n=3,Y>K | abs(m₂)≤K/Y<1 gives integer m₂=0; m₀ has O(Y) choices, not O(1) | Pass; integrality and separation essential |
| Monogenic field lower bounds | n=2,3 | Discriminant exponents 1,5/6; generator exponents 2,5; Y⁶/O(Y)=Y⁵ | Pass; signatures and full region retained |
| Monogenic prediction | n=2 negative control | C₂=1/2 would give 1/(2ζ(2)), true quadratic coefficient 1/ζ(2) | Pass; conjecture restricted to n≥3 |
| Binary local factors and sieve | discriminant scale t, n=3,4 | Δ scales t⁴,t⁶; polynomial counts scale t⁴,t⁵; local forced p² factor gives 0 | Pass; all-prime sieve contract |
| Binary arithmetic Bertini | nonsquarefree local residue | Density 0 when one p² is forced; nonzero local densities are required before field conclusions | Pass; no arbitrary local prescription |
| Regular binary region | nonzero discriminant compact set | Root collisions force Δ=0 and leave compact region; bounded positive minimum of abs(Δ) excludes them | Pass; none |
| Binary invariant-order fibres | fixed n, ±equivalent models | Integral order is unchanged under permitted action; number of distinct generator orbits bounded by C_n, not one | Pass; finite-rank unit-equation input |
| Compact binary transporters | n=2,xy; n≥3 | diag(u,u⁻¹) fixes xy for arbitrarily large u; for n=3,4 vanishing high weights would force repeated roots | Pass; n≥3 essential |
| Binary field lower bound | n=3,4,5 | Exponents (n+1)/(2n−2)=1,5/6,3/4; even n=4 remains conditional | Pass; no unsupported even theorem |
| Alternating-extension transfer | n=3; complex conjugation | A₃=C₃; sign kernel has index 2; two disjoint transpositions are even but nontrivial at infinity | Pass; totally real condition in real route |
| Unramified alternating lower bound | n=3,5; finite multiplicity | Exponents 1,3/4; at n=3 coarse field-label multiplicity bound 2^(3!)=64 is finite | Pass; no infinite fibre division |
| All fields degree≤5 | n=2,3,4,5 | n=2 quadratic coefficient 6/π²; cubic 1/(3ζ(3)); quartic D₄ adds a linear term; quintic bad local mass decays (11/12)^k→0 | Pass; S_n not substituted for all quartics |
| Tame nonabelian local mass | G=S₃,V₄,1 at s=0 | Pair counts/automorphisms 12/6=2,12/4=3,1; N+1=2,3,1 | Pass; nonabelian/trivial controls |
| Support character and marking arguments | singleton involution, identity, empty set | Singleton involution may satisfy disjointness; identity and empty spin set violate the stated nontriviality conditions; group marking changes label count by Aut factor | Pass; not unrestricted sets |

### Pinned declarations and native-carrier audit

The checked revisions are Mathlib `6b7abb3c7686292736be2955bd3eb9ebf63b456a` and Tau Ceti `a91d3aafa8cd3e6bc33dfde0d7677ed0f1625039`, matching the manifest. The following declarations were opened at those pins, including their hypotheses and definition bodies. Paths in this table are relative to the respective library repository.

| Pinned declaration / file and line | What the actual declaration supplies; boundary checked |
| --- | --- |
| `Northcott.comp_of_finite_fibers`, `Mathlib/Order/Northcott.lean:65` | Composition with finite fibres and a Northcott outer height; no finiteness of arbitrary fibres is inferred. |
| `TauCeti.normLE`, `coe_normLE`, `summatory`, `TauCeti/Order/Northcott/Basic.lean:41`, :51, :102 | Inclusive natural-height sublevels, their exact set equality, finite weighted sum. The roadmap's strict counts are separate. |
| `Polynomial.discr`, `Mathlib/RingTheory/Polynomial/Resultant/Basic.lean:935`; `discr_C`, :941 | Actual natural degree, not a fixed coefficient degree; constants, including zero polynomial, have discriminant 1. |
| `Polynomial.natDegree_taylor`, `Mathlib/Algebra/Polynomial/Taylor.lean:92` | Translation preserves degree. This is one input, not an already named discriminant-translation theorem. |
| `Polynomial.discr_map_of_natDegree_eq`, `Monic.discr_map`, `discr_prod_X_sub_C`, `TauCeti/RingTheory/Polynomial/Resultant/Discriminant.lean:201`, :219, :380 | Coefficient specialization with degree/monicity and the root-difference product over commutative rings; repeated roots give zero. The universal monic argument supplies the owned translation identity. |
| `TauCeti.NumberField.IsMonogenic`, `TauCeti/NumberTheory/NumberField/Monogenic.lean:68`; index characterization :85 | Existence of an integral element generating the full ring, not merely the fraction field. |
| `IntegralPrimitiveElement.index_eq_one_of_squarefree_discr`, `TauCeti/NumberTheory/NumberField/Index/Discriminant.lean:142` | Squarefree minimal-polynomial discriminant forces integral index one. |
| `NumberFieldOrder.eq_maximal_of_squarefree_discr`, `TauCeti/NumberTheory/NumberField/Global/Orders/Discriminant.lean:215` | Same maximality implication for the native order carrier; not replanned here. |
| `NumberField.discr_emod_four_eq_zero_or_one`, `TauCeti/NumberTheory/NumberField/Discriminant/Stickelberger.lean:104` | Integral field discriminant is 0 or 1 modulo 4. |
| `NumberField.discr_eq_of_squarefree_of_mod_four_eq_one`, `TauCeti/NumberTheory/NumberField/Quadratic/RingOfIntegers.lean:340` | Generator with minpoly X²−d, generation over ℚ, squarefree d and d mod 4=1 are all required. |
| `NumberField.abs_discr_gt_two`, `Mathlib/NumberTheory/NumberField/Discriminant/Basic.lean:273` | Requires degree greater than one; excludes the hypothetical nontrivial everywhere-unramified extension of ℚ. |
| `ClassGroup.relNorm`, `relNorm_extendedHom`, `TauCeti/RingTheory/ClassGroup/RelNorm.lean:143`, :166 | Norm and norm-after-extension power law over Dedekind domains, finite torsion-free algebra. It is not a narrow norm. |
| `NumberField.NarrowClassGroup`, `toClassGroup`, `TauCeti/NumberTheory/NumberField/NarrowClassGroup/Basic.lean:83`, :150 | Fractional ideal units modulo totally positive principal generators; quotient map forgets positivity. No narrow norm is provided in this directory. |
| `NumberField.dedekindZeta_residue`, `tendsto_sub_one_mul_dedekindZeta_nhdsGT`, `Mathlib/NumberTheory/NumberField/DedekindZeta.lean:56`, :77 | Explicit residue with regulator, roots of unity, signature and discriminant; the real s→1⁺ residue limit. |
| `NumberField.Units.regulator`, `Mathlib/NumberTheory/NumberField/Units/Regulator.lean:266` | Covolume of the unit lattice; the order norm-one regulator requires the separate adapter in this roadmap. |
| `Chebyshev.eventually_primeCounting_le`, `Mathlib/NumberTheory/Chebyshev.lean:796` | Eventually π(⌊x⌋)≤(log 4+ε)x/log x for ε>0. It is not a prime-distribution theorem in progressions. |
| `DirichletCharacter.IsPrimitive.fourierTransform_eq_inv_mul_gaussSum`, `ZMod.invDFT_apply`, `Mathlib/Analysis/Fourier/ZMod.lean:219`, :114 | Primitive transform formula with χ⁻¹(−k), and inverse normalization 1/N. |
| `star_gaussSum_eq`, `gaussSum_mul_gaussSum_eq_card`, `Mathlib/NumberTheory/GaussSum.lean:89`, :188 | The product-to-cardinality theorem is over a field with nontrivial multiplicative and primitive additive character. The README separately builds composite quadratic-conductor norms. |
| `Matrix.det_vandermonde`, `det_vandermonde_ne_zero_iff`, `Mathlib/LinearAlgebra/Vandermonde.lean:219`, :233 | Product of pairwise differences; injectivity criterion over a domain. The quantitative inverse bound is owned here. |
| `LinearMap.IsSymmetric.eigenvectorBasis`, `Mathlib/Analysis/InnerProductSpace/Spectrum.lean:299` | Finite-dimensional self-adjoint spectral theorem, not a generic nonsymmetric diagonalization. |
| `MeromorphicOn.circleAverage_log_norm`, `Mathlib/Analysis/Complex/JensenFormula.lean:307` | Jensen formula with meromorphic closed-ball and nonzero-radius hypotheses; the real a>1 rank-grid growth comparison is new. |
| `TauCeti.Measure.ext_of_mgf`, `ext_of_forall_integral_pow_eq_of_exists_integrable_exp`, `TauCeti/Probability/Moments/Determinacy.lean:153`, :243 | Finite real measures with local exponential integrability. Rank-grid moment growth is a different hypothesis and is not silently supplied by scalar determinacy. |

Object searches also covered discriminant counts, monogenicity, narrow and relative class groups, local specifications, reduced covers, spin and maximal unramified extensions. Local-field maximal-unramified modules do not furnish the global marked unramified-extension carrier needed for the general nonabelian moment interface. No new declaration was assigned an existing library or readable sibling's fully qualified name.

### Ownership and supplier order

The audit used `roadmaps grep` and `roadmaps show`, the supplied main checkout, the board packages and the named sibling checkouts. Existing roadmaps were checked on main, rather than treating revisions of them as new dependencies. Twenty-five supplier documents were opened, with separate inspection of the two group-theoretic Suggested.lean files for the identifier issue in R03. All 111 Needs lines were read. The resolved contracts include:

| Supplier and locators | Object resolved and boundary retained |
| --- | --- |
| ArithmeticStatisticsPartI §§0.1,0.2,0.6,0.7,0.22; README:1116,1170 | Counting/relative density, acceptable weights, squarefree residues including noncoprime reduction, field family and binary orders. The mod-four count is a specialization. |
| ArithmeticStatisticsPartII §§1.1,1.2,1.3,1.9,1.10; README:85,200,290,1310,1350 | Cubic dictionary/index-p switching, quartic resolvents, binary local densities and quintic dictionary. Repaired fragment links land on the actual headings. |
| ArithmeticStatisticsPartIII §§2.6–2.11,2.13–2.16; README:896,1096,1162,1344,1366,1458,1516,1540 | Finite congruence orbit counts and tails, secondary sieve, monic and binary tails. The rectangular plane-curve bound at :1540 has the required coefficient-independent constant. Even binary hypotheses remain conditional. |
| ArithmeticStatisticsPartIV §§3.1,3.2,3.7,3.9,3.10,3.11; README:65,128,611,780,824,954 | Counting/torsion carriers, Gaussian coefficients, symmetric rank law, FK phases and Wood's bounded group-moment uniqueness. Part V's real-a entire-function separator and explicit arithmetic rank law are distinguished from the finite-group quotient theorem. |
| AnalyticNumberTheoryPartI §§0.32,2.5,2.21,2.32,2.49,3.26,3.32; README:658,993,1303,1484,1728,2609,2700 | Fixed-modulus prime distribution, Dedekind/Hecke analysis, Brauer–Siegel, Chebotarev, divisor growth and the exact restricted Pell denominator. No growing-modulus PNT is inferred from fixed-modulus PNT. |
| AnalyticNumberTheoryPartII §§5.4–5.8,5.21,5.28–5.29; README:656,673,696,714,1036,1328,1350 | Projective cubic algebras including nonfree modules, weighted cubic coefficients, small-degree field estimates, continuation/poles/convexity and quadratic large sieve. |
| GeometryOfNumbersAndQuadraticArithmetic §§0.2–0.3,1.2–1.3,4.1; README:247,323,413,435,459,1257 | Saturation/covolume, squared versus real minima, Minkowski product bound and uniform semialgebraic count. R01 corrects the obsolete range. |
| HeightsAndUnits Layer 2, `Completed/HeightsAndUnits/README.md:268`; IntegralLattices §2G, README:813 | Basis-from-minima versus independent witnesses; integral Gram reduction. Part V's nonintegral embedding metric and restricted changes are new adapters, not a second integral-lattice theory. |
| GlobalNumberFields Layers 3,11, `Completed/GlobalNumberFields/README.md:337`, :571; NumberFieldArithmetic Layers 1,4,6, `Completed/NumberFieldArithmetic/README.md:455`, :2524 | Lattice/coset counting, orders/Picard groups, discriminant/index identities and transitivity; extension and norm remain native maps. |
| ClassFieldTheory Layer 13, README:1827–1839; LocalFieldsRamification Layer 3 | Ray classes, ordinary versus narrow infinity conditions, conductor–discriminant and local ramification. No tame-only substitute is used at 2 or 3. |
| GlobalQuadraticForms Layer 5, README:544,665 | Rational conics and local-to-global solubility; signs and the prime 2 are part of the criterion. |
| OperatorTheory/PolarDecomposition Part C, README:471–485 | Right/left singular vectors and reconstruction PD-C09–PD-C18; real invertible dimension two gives the transporter decomposition. |
| DiophantineApproximationAndTranscendence §2.4, README:1085 onward | Finite-rank unit-equation bounds with nondegeneracy; used for order fibres, not an arbitrary infinite solution set. |
| InverseGaloisAndArithmeticFundamentalGroups IG.3.4–3.5,4.6; README:3001,3046,3070,3317,4969 | Reduced multiplier as quotient of native H₂, a chosen marked reduced cover, cyclotomic action and arithmetic invariant. The objects exist as prose targets; R03 removes obsolete declaration spellings. |
| InductionRestrictionPartII RS.1,RS.3,RS.6.4–6.6; README:478,620,1418,1457,1497 | Power/commutator laws, restricted kernel action, centralizer quotient, parity comparison and marked order-96 model. The model is a specified embedding, not an abstract group label. |
| GenericDoublePointInterpolation §§1.4,4.8; README:519,1472–1555 | Homogeneous partials and the double-point theorem in every degree, including quadrics and all four exceptional triples. Part V owns the mixed-trace adapter and exception exclusion. |
| PolynomialGaloisGroups Layers 0,2,6; CFSGStatement scope/workstreams; SchemeAndStackFoundations; AdelicAlgebraicGroups AA.0–AA.4; ArithmeticDirichletSeries Layers 3,6,9; EffectiveBounds Layer 1 | Permutation-group carriers, classification proposition only, geometric foundations, adelic measures, summation/Tauberian interfaces and coarse arithmetic bounds. Their generic theory is consumed rather than replanned. |

The ownership search found FiniteGroupInvariants' explicit deferral of the basic Malle invariants to Part V (`TauCetiRoadmap/FiniteGroupInvariants/README.md:51`); its later Layer 8 adds group-theoretic refinements. CharacterSumsOverFiniteFields excludes incomplete integer character sums (`README.md:187`), so it does not own this Pólya–Vinogradov target. The board's NonabelianLevelStructures design concerns an abelian-subgroup cube bound, a different theorem from Part V's existence of a large proper subgroup. No later supplier was added or moved. The represented statistical constructions are extensions of Parts I–IV, not a replan of the existing ArithmeticStatistics roadmap.

The mechanical dependency check was run again after the manual audit. Its complete output was:

```text
depcheck: 205 roadmaps, 1467 edges, 0 problem(s)
```

There is no UPWARD, CYCLE or moved line. No declared supplier gap is being used to excuse a missing contract.

### Lean acceptance test and headline coverage

The worker's gate at this head reports every scanner, dependency, outside-folder and targeted-build check passing:

```text
gate ArithmeticStatisticsPartV: set_option=0 blob=0 latex=0 tex=0 prnum=0 sorry-data=0 sorry-examples=0 residue=0 private-paths=0 imports=0 mathlib-subimports=0 no-import-mathlib=0 lean-lines=0 forbidden=0 dropped=0 readme-ids-missing=0 empty-sections=0 round-labels=0 long-fences=0 layer-ids=0 target-ids=0 depcheck=0 metadata=0 stray-files=0 dirty=0 outside-folder=0 source-material=0 build=0 OK
```

The missing reduction object reported by the worker's earlier signature attempt was built with the permitted targeted module build. The original Suggested.lean then elaborated successfully with 41 warnings, all `sorry`, and no other warning or error. A scratch copy with `#check @name` for every declaration elaborated successfully and printed all 48 types. I compared them with the README: the field/number-field/finite-degree conditions, signature restrictions, prime and degree bounds, uniform-constant quantifier order, actual norm kernel and noncommuting-elements condition remain in scope. No declaration changed.

The 41 headline declarations cover the following README endpoints (names are under `TauCetiRoadmap.ArithmeticStatisticsPartV.FieldStatistics`):

- Cubic counts, ordinary three-torsion, Roberts and torsion secondary terms: `davenportHeilbronn_cubicFields`, `davenportHeilbronn_threeTorsion`, `roberts_cubicFieldsSecondary`, `davenportHeilbronn_threeTorsionSecondary`.
- Four-rank moments, limiting law and the explicit moment implication: `fouvryKluners_fourRankMoments`, `fouvryKluners_fourRankLaw`, `rank_moments_determine_rank_law`.
- Low-degree fields and class-group averages: `bhargava_cubicTwoTorsionMean`, `bhargava_quarticQuinticFields`, `bhargavaShankarWang_numberFieldCount`, `allFields_degree_le_five`, `cubicTwoTorsion_relativeMean`, `lowDegree_alternatingMoment`.
- Polynomial/binary field applications: `monogenicField_lowerBound`, `monogenicField_shortGenerator_lowerBound`, `squarefree_discriminant_fullSymmetric`, `binaryFormField_lowerBound`, `unramifiedAlternatingExtension_lowerBound`, `traceSlice_squarefreeDensity`.
- General and special field estimates: `schmidt_fieldCount_uniform`, `lemkeOliverThorne_fieldCount`, `nonabelianSimple_largeSubgroup`, `galois_count_threeEighths_of_largeSubgroups`, `galois_count_threeEighths`, `quadratic_discriminant_count`, `kluners_cyclotomic_lowerBound`, `cyclicPrime_fieldCount`, `fixedResolvent_cubicFields`, `quadraticFieldCount_uniform`, `quarticTorsion_fieldCounts`.
- Torsion and its arithmetic inputs: `classGroupTwoTorsion_powerSaving`, `cubicClassGroupTwoTorsion_bound`, `integerLattice_largestMinimum`, `elliptic_integralPoints_rankBound`.
- Tower and wreath endpoints: `twoExtension_fieldCount`, `twoExtension_threeTorsionMean`, `relativeWreath_threeTorsionMean`.
- Classical forms and Pell: `mertens_positiveDefiniteForms`, `siegel_indefiniteForms`, `negativePell_historicalBounds`, `pell_fixedPrimeFactor_lower`.

The seven definitions have real bodies: `HasGaloisType`, `quadraticWreathType`, `pellRadicands`, `negativePellRadicands`, `negativePellProportion`, `primitiveQuadraticClassNumber`, `quadraticOrderNormOneRegulator`. Their discriminating examples appear in the table. They make these headlines statable on native carriers.

The module docstring separately names the unavailable carriers for local specifications and S-integral mass formulas, relative narrow means, fixed-signature rigid wreath and general nonabelian moments, reduced Schur lifting data, conductor height on continuous idèle characters, the field-valued quartic resolvent map, and the spin/governing-field interface. It also identifies the conditional even-degree binary endpoints. These are not replaced by arbitrary Prop fields or algebraic stand-ins. The conditional predictions in the README are not presented as proved theorems.

For the one-tactic probe, all 41 admissions were replaced by `by simp` in a scratch copy. Thirty-seven left unsolved goals, three reported no progress, and `relativeWreath_threeTorsionMean` reached the default heartbeat limit. None closed. The timed-out statement was also read against the native norm and wreath definitions: its conclusion is a genuine asymptotic relative-torsion mean, not a definition or boundary case. No padding deletion is requested. This probe does not certify truth; the mathematical and source checks above address that separate question. No Lean process was left running.

## Not verifiable

- No seeded source text remained inaccessible: the initial missing-reference requests were resolved, including the two scanned texts. No sampled theorem is accepted on the strength of an unread abstract.
- The exact published pagination of ref54 was not certified against a publisher copy. The legal author manuscript was read: §1.1, Theorem 1.2(2), manuscript pp.1–2, ref54 lines 52–65. It supports the primitive-class constant used here. The README's printed pp.578–579 remain an edition locator, not a page-image verification.
- Original historical proofs attributed to Mertens, Siegel, Blomer and Cremona–Odoni were not independently certified. The roadmap supplies separate mathematical routes for those numerical endpoints; the attribution is not used to supply a missing proof step. All other readable source checks listed above concern the stated versions, not an assertion that every line of every cited paper was verified.

## Source issues

- **Misprint** in ref1 at introduction, p.3, ref1 line 99: the source writes the fourth binary-quartic monomial with the same powers as the second; it should be xy³; affects nothing.
- **Error** in ref1 at Theorem 1.4(a), p.3, ref1 lines 107–112: the source counts all irreducible definite forms with the positive-definite leading constant; it should restrict to positive definite forms, or double that constant; affects a stated result.
- **Error** in ref1 at Theorem 1.4(b), p.3, ref1 lines 113–123: the source combines all-form counts with one order regulator; it should use primitive counts with constant π²/(18ζ(3)), or primitive-part stabilizer weights with constant π²/18; affects a stated result.
- **Misprint** in ref5 at Theorem 8, p.3, ref5 line 176: the source tests the rationalized algebra R⊗Q_p against integral-order specifications; it should test R⊗Z_p; affects nothing.
- **Misprint** in ref54 at §1.1, manuscript p.1, ref54 line 26: the source calls the index-m quadratic order maximal for arbitrary m; it should say the order of conductor m, maximal only when m=1; affects nothing.
- **Misprint** in ref54 at (1.5), manuscript p.2, ref54 lines 87–88: the source lists discriminant −6 for the six-root-of-unity exception; it should list −3; affects nothing.
- **Error** in ref95 at Lemma 3.13, pp.16–17, ref95 lines 787–843: the source weights isomorphism classes of orders by generic-algebra automorphisms; it should weight by order automorphisms, or count embedded orders before dividing by generic automorphisms; affects the proof.
- **Misprint** in ref95 at Lemma 3.14, p.17, ref95 line 847: the source's ideal-count notation uses an undefined extension L; it should use the fixed base field F; affects nothing.
- **Error** in ref102 at Remark 2.10, printed p.734, ref102 lines 485–489: the source states the subgroup-square inequality for simple groups without excluding abelian ones; it should specify nonabelian simple groups; affects a stated result.
- **Error** in ref105 at Lemma 5.1, p.24, ref105 lines 1113–1128: the source uses literal uniqueness of a reduced ordered basis; it should quotient independent signs and account for further ties; affects the proof.
- **Misprint** in ref105 at Lemma 5.2, p.24, ref105 line 1131: the source's displayed polynomial scaling contracts roots and loses monicity; it should use ρⁿg(X/ρ) for root expansion; affects the proof.
- **Gap** in ref105 at Lemma 5.3, p.25, ref105 lines 1159–1174: the source moves from weak reduction to strong uniqueness without excluding ties; it should prove the asserted generic uniqueness or replace the multiplicity argument; affects the proof.
- **Error** in ref105 at Theorem 5.4, p.26, ref105 lines 1179–1183: the source asserts positive squarefree density on the quadratic trace-zero slice; it should separate degree two, where every discriminant −4b is divisible by four; affects a stated result.
- **Gap** in ref105 at the argument after Theorem 5.4, p.26, ref105 lines 1188–1191: the source transfers an ambient density to a trace-restricted family by translation alone; it should control the sliced large-prime tail and the height loss; affects the proof.
- **Misprint** in ref105 at the Fujiwara bound preceding (43), p.27, ref105 line 1232: the source omits the outer factor two in the root bound; it should include that factor, as X²−2 has root norm √2 rather than at most one; affects the proof.
- **Error** in ref145 at Proposition 2.8, p.7, ref145 line 258 and page image: the source gives the symmetric-matrix nonsingularity probability for arbitrary square matrices; it should specify symmetric matrices; affects a stated result.
- **Misprint** in ref145 at Proposition 2.8, p.7, page image corresponding to ref145 line 258: the source's final cross-reference uses q(k+1,k); it should use q(k+1,0), as its own first equality does; affects nothing.
