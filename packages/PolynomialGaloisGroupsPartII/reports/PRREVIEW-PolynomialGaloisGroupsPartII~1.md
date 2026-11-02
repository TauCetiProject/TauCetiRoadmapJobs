# Review of PolynomialGaloisGroupsPartII (pull request #1419 at ca86510)

**Verdict:** needs changes

:robot: Independent AI review. Two findings: one P2 concerning the declared supplier gap, and one P3 link correction. No mathematical counterexample to a roadmap target was found. The gate passes.

## R01 (P2) — Retire the fulfilled Mertens gap

**Location:** `packages/PolynomialGaloisGroupsPartII/design/plan.json:4`, read together with `TauCetiRoadmap/PolynomialGaloisGroupsPartII/README.md:263`. The plan still declares `mertens-prime-product`; the README says “Mertens's third theorem, supplies the following bound”.

**Claim:** This is still missing work to request from AnalyticNumberTheoryPartI.

**Witness:** AnalyticNumberTheoryPartI §0.26, `TauCetiRoadmap/AnalyticNumberTheoryPartI/README.md:538`, already states the additive bounded-error product formula with coefficient exp γ and explicitly assigns the coefficient-identification proof.

**Repair:** Remove this fulfilled entry from the plan's top-level gaps list and retain the README's ordinary §0.26 supplier contract. No replacement gap or local Mertens theorem is needed. This is the brief's “gap asks for what is already provided” case, not a demand that a declared supplier be implemented first. The contract is precise and has a named owner; its defect is redundancy.

**Repair check:** The supplier's absolute O(1) gives D≥0 and an eventual x₀≥2, exactly the declared quantifiers. Substituting x=n^(1/8) gives coefficient exp γ/8; the remaining coefficient is approximately 0.277365948>1/4, as §3.4 requires. No mathematical input is lost by removing the gap.

## R02 (P3) — Point the parent link to the completed roadmap

**Location:** `TauCetiRoadmap/PolynomialGaloisGroupsPartII/README.md:253`, the “PolynomialGaloisGroups, Layer 1” hyperlink.

**Claim:** Its main-branch target is `TauCetiRoadmap/PolynomialGaloisGroups/README.md`.

**Witness:** On main, that path is absent; `Completed/PolynomialGaloisGroups/README.md:532` is Layer 1, with the imprimitivity wreath embedding at line 603.

**Repair:** Change the link's path to `Completed/PolynomialGaloisGroups/README.md`, keeping the existing Layer 1 anchor. The named supplier and its statement are correct.

**Repair check:** The completed target supplies the equivariant product identification. For two blocks of three points its projection has two fibres of size three, exactly the quotient required here.

## Verified sound

The review covers all 32 numbered target subsections, all 13 headline theorems, their definitions/APIs and worked Checks, all 15 seeded source targets, all supplied declaration signatures, and the gate. Source texts were read from the four legal cached versions named in the brief. Page images were also inspected for ambiguous extracted notation in BSKK pp.60–63 and Babai pp.7–8.

The worktree remained unchanged. Its HEAD is ca865109061aa797f2b3f5e8067466df0c25dd39. The outside-folder diff is empty. The worker's gate reports every scanner, metadata, dependency, cleanliness and targeted-build check passing, including `stray-files=0`, `outside-folder=0`, `build=0`. Independently running `lake env lean` on the specified Suggested module succeeded with exactly 13 declaration-uses-sorry warnings and no errors.

The independently rerun dependency check returned:

```text
depcheck: 204 roadmaps, 1492 edges, 0 problem(s)
```

Every Needs line was read. There is no UPWARD or CYCLE line and no local layer cycle. The polynomial certificate uses §1.3 independently of the probability theorem; the tuple interface is independent of both. The all-prime arithmetic theorem retains monicity and characteristic-zero separability, without silently imposing squarefree reduction. “Certificate” here is an existence theorem and pointwise event inclusion, not a computational search.

The README has seven layers, each with Examples and Dependencies, and the definitions have APIs and at least three discriminating Checks. The three proved Lean examples exercise merging nontransitivity, occurrence-sensitive pairs, and the four-witness strengthening. They are nontrivial checks of retained definitions, not admitted boundary-case padding.

### Source sample and proof-route verification

The locators below use the specified preprint/exposition pagination, not journal pagination. “Extension checked” means the roadmap supplies an argument beyond the exact source statement; it does not mean the source literally states the extension.

| Seeded target | Text opened | Hypotheses and conclusion checked |
|---|---|---|
| 0.3 Bad-transitive set | bskk line 3323, (11.1), p.54; line 3611, Proposition 12.1, p.59 | Existential union over transitive subgroups unequal to Aₙ and Sₙ, rather than the complement of Aₙ. |
| 0.4 Cyclic quotient | bskk line 3530 and line 3535, Claim 11.4, p.57 | Positive d,m; equivariance; each return orbit has length d times its fibre intersection. Extension checked: partition the fibre to assemble the occurrence blocks and their total m. |
| 2.3 Tuple stabilizers/restriction | bskk line 200, Introduction p.5; pinned stabilizer and restriction declarations below | The source discusses successive root adjunction over ℚ. The arbitrary-field tuple equality follows by fixing all generators; separability is used only for the quotient-action comparison. Normality over the intermediate field supplies surjectivity. |
| 2.4 Multiple-transitivity adapter | bskk line 210 and line 213, Introduction p.5 | Source equivalence and ordering independence agree. Extension checked over arbitrary fields using separability, 1≤k≤degree, positive remaining degree and the pinned stabilizer recursion. |
| 3.1 Partition law | bskk line 3611, Proposition 12.1(a)–(c), p.59 | Pair bounds include repeated occurrences; subsum range and lower-tail direction match; counts retain multiplicity; constants and probability normalization are explicit. |
| 3.3 Harmonic intervals | bskk line 3707, Lemma 12.4 proof, p.60; line 3769, Lemma 12.6 proof, p.61 | Reciprocal mass, log-log correction and factor 1−1/r match. The roadmap restricts the rescaled lower endpoint to a uniformly growing range and explains rounding. |
| 3.4 Large-prime harmonic mass | bskk line 3717 and line 3723, Lemma 12.5, pp.60–61 | Cutoff √n/3, prime threshold n^(1/8), exact exp γ coefficient and eventual 1/4 lower bound match. The roadmap uses a bound on smooth mass, avoiding the source's missing-cutoff equality. |
| 3.6 Subsum failure | bskk line 3673, Lemma 12.3, p.60 | r divides n; complementing reduces j to ≤r/2; δ<1 permits the power sum; the nonsquarefree divisor bound gives exponent −δ/4. |
| 3.8 Large-prime failure | bskk line 3717 and line 3748, Lemma 12.5, pp.60–61 | Lower-tail threshold (t/4)log n and exponent −κ/4 agree, after an eventual cutoff. |
| 3.9 Four nondivisible parts | bskk line 3751, Lemma 12.6, p.61 | Source states one witness. Extension checked: five distinct long parts handle large r; count≤3 is eventually ≤tLᵣ for small r. The three ranges in the union bound retain the logarithmic factor. |
| 4.6 Primitive minimum | bskk line 3826, Lemma 12.7, p.62; bary-soroker-kozma line 438, Claim 1, pp.9–10 | Same non-alternating/non-symmetric primitive bound. Babai line 178, Theorem 6.6, p.6, and Schomburg line 122, Theorem 3.1, p.4, justify the two branches; n≥38 is preserved for Bochert. |
| 5.1 Actual block orbit | bskk line 3861, observation in Lemma 12.9, p.62 | Actual quotient orbit, not an arbitrary divisor: ℓ=r′s′ and every cycle in the block union is divisible by r′. Singleton correction is consistent with the pinned full cycle type. |
| 5.3 Imprimitive exclusion | bskk line 3855, Lemma 12.9, pp.62–63 | All three block-count ranges checked. The roadmap strengthens the source's witness counts and ensures the companion original part is ≤n/4 before applying E₁. |
| 6.1 Uniform criterion | bskk line 3611 and line 3900, Proposition 12.1, pp.59,63 | Constants chosen before n, measure and θ; ε>0; same exponent and log² factor. Five failure rates dominate the final rate uniformly. |
| 6.2 Polynomial certificate | bskk line 3498, Lemma 11.3, pp.56–57; line 3544, §11.3, pp.57–58 | Monic irreducible rational image gives separability and transitivity. The bad-group hypotheses are retained; multiplicity≤y produces a bad-transitive merging witness. Distribution estimates are not asserted. |

Also opened Babai Definition 6.1/Exercise 6.2 (babai lines 160,167), the orbital-connectivity exercises (lines 135–147), the entire support-count route through Corollary 8.19 (lines 211–313), and Exercise 9.5/Corollary 9.6 (lines 335–338). Schomburg's standing hypotheses and commutator/counting proof at lines 119–148 give n≤4m+6/(m−3). The proof in the README preserves positive denominators and distinct-conjugate counting.

### Adversarial values

The following 127 rows record computed values or exact symbolic values; “retained” means no repair to that statement was needed. Finite examples test the interfaces and proof steps, not the truth of an asymptotic assertion at an unknown threshold. In particular, the failures of the harmonic inequality at 10⁸ and 10¹² below are negative controls, not counterexamples to its eventual quantifiers.

| Statement | Instances tried | Computed values on the two sides | Result / change |
|---|---|---|---|
| Composition convention | (01)(12) and reversed product on 0 | 1 versus 2 | Direction distinguished; retained. |
| Arithmetic Frobenius convention | u³=u+1 over F₂ | Frob(u)=u²; inverse(u)=u⁴=u²+u; Frob³(u)=u | Direction distinguished; retained. |
| Full-cycle convention | swap on 3 points; empty carrier | {2,1}, sum 3 versus ordinary {2}, sum 2; empty sum 0 | Fixed points included; retained. |
| Parameter convention | δ=.1, ε=.01, κ=.5, θ=0 or .04 | α=.025 or .005=ε/2; κα=.0125 or .0025 | Uniform positive lower exponent; retained. |
| Total log/division convention | n=0,1 | log 0=log 1=0; n/log n=0 in both cases | Definitions total; excluded by N≥3. |
| 0.1 definition | {1,1,2,2,2,3}, y=2 | Outputs exactly {1,1,2,2,2,3}, {1,1,2,3,4}, {2,2,2,2,3}, {2,2,3,4}; never {2,3,6} | Full occurrence enumeration; retained. |
| 0.1 reflexivity | {0,2}, y=1; y=1/2 | Singleton blocks give {0,2}; nonempty blocks impossible at 1/2 | Bound 1 necessary; retained. |
| 0.1 monotonicity | {1,1,2}→{2,2}, y=2,4 | Block sizes 2,1 satisfy both bounds; same witness | Retained. |
| 0.1 sum preservation | {1,1,2}→{2,2}; {0,0}→{0} | 4=4; 0=0 despite cards 2≠1 | Retained. |
| 0.1 strict cutoff | {0,2}, y=3/2; {0,0}, y=2 | Only {0,2} at 3/2; {0} becomes possible at 2 | Strict inequality necessary; retained. |
| 0.1 occurrence pullback | {1,1,2}→{2,2}, select one/two output 2s | Preimage sums 2/4 equal selected sums 2/4 | Retained. |
| 0.1 nontransitivity | {1,1,2}→{2,2}→{4} | Both first relations true at 2; direct relation false at 4 | Mixed-entry wrong model excluded. |
| 0.1 empty input | y=−1,0,1 | Empty blocks: sums 0=0; block-condition conjunction empty | Retained for all real y. |
| 0.1 aggregate enumeration | All partitions of 0≤n≤10, bound 3 | 455 input/output pairs: sums equal in 455; output subset sums contained in input subset sums in 455 | Retained. |
| 0.2 membership | identity on 3; 5-cycle; empty permutation | Types {1,1,1}, {5}, {}; all match y=1 inputs exactly | Retained. |
| 0.2 bound monotonicity | swap on 2 with input {1,1} | Membership false at 1, true at 2 and 3 | Retained. |
| 0.2 degree equality | partition {2,1} against permutations on 2 or 3 | Input sum 3; output sums 2 or 3; degree-2 membership impossible | Retained. |
| 0.2 conjugation | (12)(01)(12) in S₃ | (02), with type {2,1} on both sides | Retained. |
| 0.2 relabeling | rename 0,1,2 as a,b,c | Type {2,1} before and after | Retained. |
| 0.3 definition and subgroup inclusion | C₅ acting regularly | Group orders 5≠60≠120; all 5 elements, including identity, in union | Even-permutation exclusion would be wrong. |
| 0.3 low degrees | n=0,1,2,3 | Eligible witness groups: 0 in each degree; union size 0 | Both directions checked. |
| 0.3 conjugation/relabeling | conjugate regular C₅ in S₅ | Group order 5 and orbit size 5 preserved; cycle types {1⁵} and {5} preserved | Retained. |
| 0.4 return orbit identity | d=1,m=2, identity/swap return | Upstairs {1,1}/{2}; fibre intersections (1,1)/(2); sum 2 | Retained. |
| 0.4 nontrivial quotient | d=3,m=2, identity/swap return | Upstairs {3,3}/{6}; lengths 3·1,3·1 or 3·2; intersection sum 2 | Retained. |
| 1.1 multiplicity definition | 0,1,(X+1)³ over F₂ | Values 0,0,3; degree-count model differs on distinct linear factors | Retained. |
| 1.1 factor-count bound | f=(X+1)³; absent X | Counts 3 and 0, each ≤maximum 3 | Retained. |
| 1.1 supremum iff | same f, proposed bound 2 or 3 | max≤2 false and occurring-count≤2 false; both true at 3 | Both directions checked. |
| 1.1 squarefree iff | X(X−1) over F₃; 1; (X+1)³ | (max,squarefree)=(1,true),(0,true),(3,false) | Nonunit guard necessary. |
| 1.2 reduction fibre | S={0,2}⊂ℤ→F₂, z=0,1 | Mapped product X²; multiplicities 2,0 equal fibre cards 2,0 | Noninjective map admitted correctly. |
| 1.2 empty/identity cases | S=∅; S={0,1}⊂F₃, identity map | Product 1 gives 0=0; product X(X−1) gives 1=1 at each root | Retained. |
| 1.3 ramified specialization | X²−2 at p=2 | M=2; degrees {1,1}; root image C₂ has types {1,1},{2}, both 2-mergings | Retained. |
| 1.3 good-prime specialization | X²−2 at p=3 | Reduction irreducible, M=1, degrees {2}; swap type {2} | Reduces to exact equality. |
| 1.3 excluded nonseparable case | (X²−2)² at p=2 | Reduction degree sum 4 versus distinct-root count 2 | Separability prevents false sum comparison. |
| 2.1 tuple-field definition | empty tuple; √2; rational root 0 | Field degrees 1,2,1 respectively | Actual adjoin distinguished from free/whole extension. |
| 2.1 generator inclusion | √2 for X²−2 | √2 in ℚ(√2): true; √2 in ℚ: false | Retained. |
| 2.1 universal property | same singleton; E=ℚ or ℚ(√2) | Both sides of containment iff false for ℚ, true for ℚ(√2) | Both directions checked. |
| 2.1 enlargement/reordering | roots √2,−√2 | One-root and two-root fields both degree 2; swapping roots changes neither field | Retained. |
| 2.1 quotient definition/product | f=2X(X−1), choose 0 | q=2(X−1); qX=2X(X−1) | Nonmonic normalization retained. |
| 2.1 quotient degree/separability | same f, j=0,1,2 | Degrees 2,1,0; quotients f,2(X−1),2, all separable | Natural subtraction has j≤2. |
| 2.1 quotient roots/splitting | same f, j=0,1,2 | Root sets {0,1},{1},{} equal complements | Retained. |
| 2.1 leading coefficient | all roots of 2X(X−1); monic X(X−1) | Final quotients 2 and 1 | Monic-only wrong model excluded. |
| 2.2 definition/degree guards | separable linear f; k=0,1,2 | Predicate false,true,false | Empty and out-of-range tuples cannot trivialize definition. |
| 2.2 k=1 equivalence | X²−2; X(X−1) | (k-fold,irreducible)=(true,true),(false,false) | Both directions checked. |
| 2.2 monotonicity | an S₃ cubic, k=3→2→1 | Remaining irreducible quotient degrees 3,2,1; all three predicates true | Retained. |
| 2.2 negative controls | Φ₁₁; (X²−2)² | Φ₁₁: k=1 true, k=2 false, remaining degree 9 splits; repeated quadratic: k=1 false | Retained. |
| 2.3 stabilizer equality | S₃ cubic, j=0,1,2 | Tuple stabilizer orders 6,2,1; fixing-subgroup orders 6,2,1 | No arbitrary subgroup substituted. |
| 2.3 restriction map | same cubic, j=0,1,2 | Quotient Galois orders 6,2,1; stabilizer images have the same orders | Surjectivity and complement action consistent. |
| 2.3 inseparable equality | Xᵖ−t over Fₚ(t), p=2 or 3, j=1 | One distinct root; automorphism group and tuple stabilizer both order 1 | Equality still valid; separable quotient theorem inapplicable. |
| 2.4 iff | S₃ and C₃ root actions, k=1,2,3 | S₃ orbit sizes 3,6,6 equal tuple totals; C₃ sizes 3,3,3, so only k=1 transitive | Matches successive quotient irreducibility. |
| 2.5 alternating recognition | cubic images C₃,S₃,1 | k=1 values true,true,false; A₃ containment true,true,false | Both directions checked. |
| 2.5 degree guard | split separable quadratic | n−2=0; k-fold false, A₂=1 containment true | n≥3 essential. |
| 3.1 measurable structure | degree 0 and 2 | Partition counts 1 and 2; measurable subset counts 2 and 4 | Discrete, not indiscrete. |
| 3.1 measurable-map API | indicator of {2} at degree 2 | Values 1,0; both fibres singleton measurable sets | Retained. |
| 3.1 finite unions | same two singleton events | Union has 2 elements and is measurable | Retained. |
| 3.1 harmonic definition | zero indicator; indicator 2 through 4; constant 1 through 2 | 0,1/2,3/2 | Inclusive endpoint and reciprocal normalization correct. |
| 3.1 harmonic monotonicity | indicator 2⊂{1,2}; cutoff 1→2 | 1/2≤3/2; 1≤3/2 | Nonnegative summands; retained. |
| 3.1 pair field | uniform partitions of 8 | 22 partitions; count₂≥2 in 5, mere membership in 11; probabilities 5/22 versus 11/22 | Occurrence distinction verified. |
| 3.1 subsum field | n=2²⁰, δ=.1, r=2,j=1 | n^.95=2¹⁹=n/2=nj/r | Inclusive lower/upper endpoints agree. |
| 3.1 lower-tail field | indicator 2, m=4; zero indicator | L=1/2, threshold t/2, bound Ce^(−κ/2); zero indicator L=0 gives whole-space probability 1≤C | Count versus size distinguished. |
| 3.1 C-monotonicity | C=1→2, k=l=2 | Pair RHS 1/4→1/2; other nonnegative RHS factors also double | Retained. |
| 3.1 κ-monotonicity | L=1/2, κ=1→1/2, C=1 | exp(−1/2)=.606531≤exp(−1/4)=.778801 | Direction correct. |
| 3.1 nonvacuous probability law | n=8, ν=Dirac at {8}, C=10,t=1/2,κ=1,δ=.1 | Pair probability 0≤10/4; subsum interval empty; m≤3 gives L≤11/6 and 10exp(−L)≥1.598797461≥all event probabilities | All three premises satisfied. |
| 3.1 separate normalization | measure 0 | All real event masses 0, satisfying bounds; total mass 0≠1 | Probability premise genuinely separate. |
| 3.2 E₁ definition | {2,2,4} and {2,6}, n=8, κ=1,α=0 | First gcd 2≥1 fails; second has zero constrained occurrence pairs and passes | Retained. |
| 3.2 E₂ definition | {3,3}, n=6,δ=2,r=2,j=1 | Subsum 3=6·1/2 | Event false as claimed. |
| 3.2 E₃ definition at total-function boundary | n=1,α=0 | Required count 0; interval [1,0] has count 0 | Event true; no asymptotic claim here. |
| 3.2 E₄ definition | {3,6}, n=9,t=1 | √9/3=1; qualifying count 0<(log 9)/4=.549306 | Event false; length cutoff matters. |
| 3.2 E₅* definition | {1,2}, n=3,α=1 | One-witness condition true for every r≥2 via 1; count≤2<4 | Four-witness event false. |
| 3.2 uniqueness API | {2,2,4}, cutoff n^(κα)=1 | count₂=2; gcd(2,2)=2 violates E₁ | Repeated long parts excluded. |
| 3.2 complement API | U={3} in {3,3}; U=all | Complement sums 3=6−3 and 0=6−6 | Natural subtraction has correct order. |
| 3.2 extraction API | n=100, α=1, parts {1,2,3,5,7,11,71} | Six small pairwise-coprime parts lie in [.01,21.7147]; every r≥2 leaves ≥5 nondivisible; at r=2 extract {1,3,5,7}, card 4 | Four actual occurrences available; retained. |
| 3.3 first interval | n=2⁴⁰⁰, α=1/40 | Integral comparison 10 log 2−log(400 log 2)=1.306520179; reciprocal sum differs by <10⁻¹¹⁶ | Rounded endpoints consistent. |
| 3.3 nondivisible interval | same n, r=2 | Main term (20 log 2−log(400 log 2))/2=4.118995992; reciprocal sum differs by <10⁻¹¹³ | 1−1/r normalization correct. |
| 3.4 harmonic mass negative controls | n=10⁸ and 10¹² | 4.348967793<4.605170186; 6.777463554<6.907755279 | Eventual N is necessary; no fixed small N claimed. |
| 3.4 positive control | n=10¹⁴, cutoff 3,333,333 | Mass 8.266333451≥(log n)/4=8.059047825 | Retained; numerical control only. |
| 3.4 coefficient calculation | γ≈.577215665 | 1/2−exp γ/8≈.277365948> .25; margin≈.027365948 | Exact coefficient suffices; R01 does not change it. |
| 3.5 pair summation | n=8, r=2, i=j=1 | Pair {2,2}; bound C/(2·2)=C/4=C/r² | Diagonal included. |
| 3.5 reciprocal-square tail | integer cutoff h≥2 | Sum over r≥h of r⁻²≤1/(h−1)≤2/h | Power n^(−κα) survives rounding. |
| 3.6 complement/range | n=2²⁰,δ=.1,r=2,j=1 | Complement sum 2¹⁹; n^(1−δ/2)=n/2=2¹⁹ | Pair of endpoints correct. |
| 3.6 final exponent | δ=.1 | −δ/2+δ/4=−.025=−δ/4 | Divisor input used with matching exponent. |
| 3.7 threshold absorption | log n=10⁴, α=.005,t=.5 | Main mass 50−log 10000=40.78966; threshold 12.5<tL≈20.39483 | Uniform positive α needed. |
| 3.7 exponential factor | same α,κ=.5 | exp(−κ(αlog n−loglog n))=exp(−25)·100 | Equals n^(−κα)(log n)^κ. |
| 3.8 large-prime lower-tail | n=10¹⁴,t=.5,κ=.5 | Threshold 4.029523913≤tL=4.133166725; e^(−κL)≈.01603≤n^(−κ/4)≈.01778 | Event inclusion direction correct. |
| 3.9 large-r counting | five unique long parts, r≥n^(κα) | At most 1 divisible; at least 5−1=4 nondivisible | Four-witness strengthening justified. |
| 3.9 small-r threshold | log n=10⁴,α=.005,t=.5,r=2 | L main term 45.39483; 3<tL≈22.69741 | Count≤3 fits premise (c) eventually. |
| 3.9 union exponents | κ=.5,α=.005 | r=2 exponent −.0025; r=3 exponent −.003333…; large-r cardinal exponent +.0025 cancels one of two −.0025 terms | Final n^(−κα), with log factors. |
| 4.1 definition | trivial group; S₂; A₃ | none; some 2; some 3 | Identity not included in minimum. |
| 4.1 none iff | S₀, trivial S₁, nontrivial S₂ | (none,G=⊥)=(true,true),(true,true),(false,false) | Both directions checked. |
| 4.1 attainment/minimum iff | S₃ | Nonidentity supports 2 or 3; minimum 2 attained by swap | Returned some 2, not 0 or 3. |
| 4.1 lower bound | S₃, C₅ regular | Every nonidentity support ≥2; respectively minima 2,5 | Retained. |
| 4.2 definition | trivial G, distinct x,y; x=y | D=whole carrier; D=∅ respectively | Identity transport handled. |
| 4.2 orbit characterization | S₃ on 3, x=0,y=1 | G₂ transports 0 to 1; G₀,G₁ cannot; D={0,1} | Correct point-stabilizer carrier. |
| 4.2 symmetry | same pair reversed | D(0,1)=D(1,0)={0,1} | Retained. |
| 4.2 support inclusion | g=(01), x=0; regular C₅ generator | D(0,g0)={0,1}=support g; C₅ gives 5=5 | Retained. |
| 4.3 connectivity | C₅, orbital step 1 | Walks 0→1→2→3→4 reach all 5 vertices | Primitive orbital connected. |
| 4.3 missing-primitivity control | regular C₄, orbital step 2 | Components {0,2},{1,3}, sizes 2,2 | Excluded by primitivity. |
| 4.4 Babai bound | regular C₅; S₃ negative control | D=5≥√5/2≈1.118034; S₃ is doubly transitive and excluded | Retained. |
| 4.4 distinguishers versus support | regular C₅ | Minimum support 5≥D=5≥√5/2 | Bound applies to actual moved points. |
| 4.4 orbital count inequalities | C₅ oriented orbital | v=1, D=5, n−v=4; vD=5≥n−1=4; 2(n−1)/3=8/3>n/4=5/4 | Constants/orientation consistent. |
| 4.5 Bochert valid model | affine group AGL₁(F₄₁) | n=41, m=40, n/4=10.25≤40; order 1640, far below A₄₁ | Proper doubly transitive instance. |
| 4.5 commutator/count endpoint | m=4,5,6,7,8,9 | 4m+6/(m−3)=22,23,26,29.5,33.2,37, all <38 | Finite-degree branch correct. |
| 4.5 integer rounding | m≥10 | 6/(m−3)≤6/7<1; integer n≤4m+6/7 implies n≤4m | Positive denominator explicit. |
| 4.6 primitive minimum | regular C₅ | m=5≥(√5−1)/2≈.618034 | Retained. |
| 4.6 finite range | n=37, m≥4 | (√37−1)/2≈2.541382<4 | Bochert not used below 38. |
| 4.6 double branch | n=38 | n/4=9.5≥(√38−1)/2≈2.582207 | Branch comparison correct. |
| 5.1 actual orbit | two blocks of 3; swap inside one versus between blocks | ℓ=2 with (r′,s′)=(1,2) or (2,1); union sizes 3 or 6 | Length alone does not fix block orbit. |
| 5.1 fixed-point correction | fixed point | support(cycleOf x)=0; corrected length 0+1=1=r′s′ | Retained. |
| 5.1 equal/disjoint block orbits | identity on two blocks; transposition on quotient | Orbit sets {0},{1} disjoint; under swap both {0,1} equal | Retained. |
| 5.2 cutoff direction | n=2⁴⁰⁰, κα≤1/40 | n^(κα)≤2¹⁰<2⁵⁰=n^(1/8) | Corrects source's reversed comparison. |
| 5.2 exceptional-prime counting | 3 long original parts, ≤8 large prime divisors each | At most 3·8=24 exceptions; ≥25 candidates leaves ≥1 | Retained. |
| 5.2 isolated-cycle power | output lengths 12,5, p=3, a=1, q=20 | Power exponent 20: 12-cycle becomes four 3-cycles, support 12; 5-cycle dies | Single-prime-cycle assumption avoided. |
| 5.2 support contradiction | n=144 | √n/3=4<(√n−1)/2=5.5 | Correct strict comparison for n>9. |
| 5.3 small-r branch | n=12,r=3,s=4, a cycle in one block | r′=1 gives union size 4=12·1/3; pullback sum also 4 | E₂ concerns sums, not number of parts. |
| 5.3 middle exponent identity | δ=.1,θ=0,α=.025,κ=1 | δ/2−α=.025=κα; δ/2−α−θ=α=.025 | Strictness comes from r>n^(δ/2), not the final ≥. |
| 5.3 middle witness count | 5 disjoint block unions | Remove ≤1 filled and ≤3 with cycles >n/4: ≥5−1−3=1 remains | Companion ≤n/4 secured. |
| 5.3 large witness count | 4 non-filling block unions | Remove ≤3 with cycles >n/4: ≥1 remains | Companion ≤n/4 secured. |
| 5.3 non-filling endpoint | n=2⁴⁰⁰,r=2³⁹⁰,s=2¹⁰,ℓ=2³⁸⁰ filling | r′=ℓ/s=2³⁷⁰=n^(1−3α), equality | Strictness needs s′<s; README Check correct. |
| 5.3 gcd division | r′=12,m=3,k=8,ℓ=24 | 12 divides mk=24 and ℓ; gcd(k,ℓ)=8≥r′/m=4 | Division inequality direction correct. |
| 6.1 final rate comparison | δ=.1,κ=.5,ε=.01,θ=.04 | α=.005; κα=.0025≤δ/4=.025 and κ/4=.125 | Other powers decay at least as fast. |
| 6.1 finite bad-event control | Same degree-8 law, θ=0 | C₈ supplies an 8-cycle, bad-event probability 1; log²8·8^(−.025)=4.105028549 | Concrete nonempty event; not an assertion that 8≥N. |
| 6.1 quantifier endpoint | same parameters, θ=0 or .04 | Rates log²n·n^(−.0125) and log²n·n^(−.0025), both tend to 0 | Constants chosen before θ. |
| 6.1 bad-event containment | all five good events | Primitive witnesses 0 by 5.2; imprimitive witnesses 0 by 5.3; bad-event indicator 0≤sum of five complement indicators 0 | Correct union split, not a subgroup union claim. |
| 6.2 arithmetic certificate | Φ₅, p=5, y=4 | Mod 5=(X−1)⁴; M=4; root image C₄ has order 4≠12,24 and a 4-cycle; {1,1,1,1}→{4} | Nonempty bad-group instance at a ramified prime. |
| 6.2 repeated-polynomial control | (X²−2)² | Two-root action transitive, but polynomial irreducibility false | Hypothesis prevents false degree transport. |
| 6.2 event inclusion | good multiplicity M≤y with bad group; or M>y | In first case bad-partition indicator 1; in second multiplicity-failure indicator 1 | Bad-group indicator ≤ sum in both cases. |
| R01 gap minimality | exact declared estimate versus supplier §0.26 | Same coefficient exp γ, same additive O(1), same real x≥x₀ | Remove redundant gap. |
| R02 quotient link | completed parent's two-by-three grid | card Ω=6=2·3; two fibres each card 3 | Link repair preserves exact supplier. |

The 455-pair enumeration was performed independently in scratch code, enumerating equal-entry occurrence-block sizes, and checked both conservation and all output-subsum pullbacks. Numerical reciprocal sums were independently sieved through the actual integer cutoffs; these decimal values are controls, not formal error bounds or a proposed universal threshold.

### Pinned declarations and ownership

Library pins agree with the manifest: Mathlib 6b7abb3c7686292736be2955bd3eb9ebf63b456a and Tau Ceti a91d3aafa8cd3e6bc33dfde0d7677ed0f1625039. The following declaration groups were opened at those pins; paths are relative to their respective library repositories.

| Library file and line | Declarations/contract verified |
|---|---|
| `Mathlib/Combinatorics/Enumerative/Partition/Basic.lean:52` | `Nat.Partition`: parts, strictly positive entries and sum n, not a set discarding multiplicities. |
| `Mathlib/FieldTheory/PolynomialGaloisGroup.lean:120` | `Polynomial.Gal.restrict_surjective`: normality and a splitting Fact. |
| `Mathlib/FieldTheory/PolynomialGaloisGroup.lean:204` | `galActionHom`, `galActionHom_injective` at line 212, with the splitting Fact. |
| `Mathlib/RingTheory/Ideal/GoingUp.lean:369` | `Ideal.exists_maximal_ideal_liesOver_of_isIntegral`: integral, faithful algebra and maximal base ideal. |
| `Mathlib/Algebra/Polynomial/RingDivision.lean:186` | `Polynomial.rootMultiplicity_X_sub_C`; `rootMultiplicity_mul` at line 306 requires nonzero product. |
| `Mathlib/FieldTheory/IntermediateField/Adjoin/Defs.lean:34` | `IntermediateField.adjoin` is actual subfield closure; `adjoin_le_iff` line 55, `subset_adjoin` line 331, `adjoin.mono` line 342, `adjoin_empty` line 355. |
| `Mathlib/GroupTheory/GroupAction/MultipleTransitivity.lean:122` | Embeddings-of-Fin transport characterization; bounded monotonicity line 302; point-stabilizer recursion line 350. |
| `Mathlib/GroupTheory/GroupAction/MultipleTransitivity.lean:240` | Two-pretransitivity implies preprimitivity. |
| `Mathlib/GroupTheory/GroupAction/MultipleTransitivity.lean:576` | Alternating action is (card−2)-pretransitive; converse containment at line 601. |
| `Mathlib/GroupTheory/GroupAction/Primitive.lean:91` | `IsPreprimitive` extends pretransitivity and says all blocks are trivial; it does not itself require a nonempty or nontrivial carrier. |
| `Mathlib/GroupTheory/GroupAction/Jordan.lean:370` | Primitive subgroup with a swap is top; primitive 3-cycle recognition at line 408 also includes the small degrees used here. |
| `Mathlib/NumberTheory/Harmonic/Bounds.lean:24` | `log_add_one_le_harmonic`; `harmonic_le_one_add_log` line 33, including totalized n=0. |
| `Mathlib/NumberTheory/Harmonic/EulerMascheroni.lean:172` | `Real.eulerMascheroniConstant_lt_two_thirds`. |
| `Mathlib/Analysis/Complex/ExponentialBounds.lean:82` | `Real.log_two_gt_d9`, enough to prove 2/3<log 2. |
| `TauCeti/GroupTheory/Perm/Partition.lean:96` | `Equiv.Perm.fullCycleType` adds card−support copies of 1; conjugacy line 333, sum line 340, relabeling line 406. |
| `TauCeti/RingTheory/Polynomial/FactorDegrees.lean:55` | `Polynomial.factorDegrees` maps degrees over normalized factors with repetitions; monic sum theorem line 126. |
| `TauCeti/NumberTheory/NumberField/Frobenius.lean:97` | `NumberField.exists_isArithFrobAt_int_of_liesOver`: prime over (p), Galois number field, no unramifiedness requirement. |
| `TauCeti/NumberTheory/NumberField/Frobenius/CycleType.lean:164` | `TauCeti.NumberField.exists_gal_fullCycleType_eq_factorizationType` needs p not dividing polynomial discriminant, and permits reducible monic f. |
| `TauCeti/FieldTheory/GaloisGroups/FrobeniusOrbits.lean:76` | `TauCeti.FiniteField.exists_orbit_eq_rootSet_factor`: nonzero polynomial, algebraic splitting extension, Frobenius orbit size equal to factor degree. |
| `TauCeti/FieldTheory/GaloisGroups/Orbits.lean:212` | `TauCeti.isPretransitive_iff_irreducible`: separable positive degree and splitting Fact. Image pretransitivity also at line 231. |
| `TauCeti/FieldTheory/GaloisGroups/Stabilizer.lean:74` | Simple-root fixing-subgroup equality needs no separability. |
| `TauCeti/FieldTheory/GaloisGroups/MultipleTransitivity.lean:88` | Two-pretransitivity/quotient irreducibility: irreducible, separable, degree>1 and a chosen root. |
| `TauCeti/RingTheory/Polynomial/Roots.lean:111` | Root-set removal requires evaluation zero and derivative evaluation nonzero in the extension. |
| `TauCeti/GroupTheory/Perm/CyclePower.lean:60` | A power fixes a moved point iff the cycle order divides its exponent. |
| `TauCeti/GroupTheory/Perm/Semiconj.lean:46` | Period divisibility; return-orbit identity line 54; fibre-cardinality times bottom period equals top period at line 82; orbit-count bound line 104. |

Cross-roadmap citations were resolved against main, or the supplied open-head index for the named new suppliers. Main was fa41b3747f56d4e77bd69e7099c1be4f2e4959ba. Two main roadmaps were read for shape and mathematical boundaries: Completed/PolynomialGaloisGroups and Completed/EffectiveBounds. The relevant additional supplier sections were read as follows.

- `Completed/PolynomialGaloisGroups/README.md:442`: Layer 0 root action, full cycle types and orbit/factor dictionary; line 532: Layer 1 blocks and wreath products, especially line 603; line 653: Layer 2 single-root stabilizers and double transitivity; line 1054: Layer 5 good-prime specialization; line 1385: Layer 9 symmetric-group realization. The continuation extends these by ramified merging and arbitrary tuple length; it does not replan them.
- `Completed/NumberFieldArithmetic/README.md:1039`: §3.10 good-prime full-cycle/factor-degree theorem. The pinned implementation above is the exact statement consumed.
- `TauCetiRoadmap/ErdosProgressionPowers/README.md:789`: §0.9, particularly lines 812–815, supplies eventual τ(n)≤n^η from the general divisor bound, including nonsquarefree n.
- `TauCetiRoadmap/AnalyticNumberTheoryPartI/README.md:538`: §0.26 supplies precisely the Mertens formula and coefficient-identification proof; R01 concerns the still-declared gap, not the validity of this citation.

Ownership searches used the roadmap grep/show tools, main and board-package searches, the supplied open polynomial roadmap heads, and object searches at both library pins: occurrence merging, full cycle multisets, quotient-cycle fibres, tuple-root adjunction, repeated normalized-factor counts, support minima, orbital distinguishers, harmonic prime mass and Mertens products. The two supplied open PolynomialGaloisGroups continuations instead cover radicals/quintic resolvents and, in one, higher-degree classification/Gassmann theory; their scopes explicitly leave ramified merging to Part II. Their namespaces do not duplicate this file's fully qualified names. Unrelated object-search hits were not treated as suppliers. No overlapping owner was found for the newly kept constructions or headline estimates. The existing single-cycle formula, simple-root adapter, full-cycle type and good-prime comparison are correctly imported.

### Headline coverage and padding

The README's 13 headlines are: equivariant cyclic-fibre merging (§0.4); all-prime ramified merging (§1.3); k-fold irreducibility/multiple-transitivity equivalence (§2.4); alternating recognition (§2.5); nonsmooth harmonic mass (§3.4); four nondivisible parts failure (§3.9); Babai distinguishers (§4.4); Bochert support (§4.5); primitive minimum support (§4.6); primitive exclusion (§5.2); imprimitive exclusion (§5.3); generalized Łuczak–Pyber (§6.1); and the polynomial merging certificate (§6.2). All 13 are statable and stated. None is replaced by an arbitrary predicate or a sorry-defined carrier.

A scratch copy tested each admitted theorem with `simp`, `rfl` and `infer_instance`, with each attempt required to close the whole goal. All 13 resisted all three. Reading the exact pinned supplier statements found no single-library-lemma replacement: notably, the single-cycle semiconjugacy formula does not build the global occurrence-block witness, and the degree-two quotient adapter does not state arbitrary k. There is no padding finding.

The supplied 25 elaborated types were compared with the README; the scratch copy additionally ran `#check @name` on all 26 named declarations, including the local discrete measurable-space instance omitted from the supplied list. There was no lost binder. In particular, field hypotheses stay on tuple objects, finiteness stays on permutation objects, the separability/degree guards remain on recognition, and B,N precede n,ν,θ in both probability headlines. No signature change was made.

## Not verifiable

None of the four cited texts was inaccessible, and none of the 15 seeded locators remains uncertified. There are no README locators marked unverified.

The source does not literally state the arbitrary-field tuple adapter or the four-witness version: those are extensions whose arguments were checked above. The eventual estimates have no explicit universal threshold, so finite numerical tests do not certify their quantified conclusion; verification here is of the source statements, proof routes, quantifiers and counterexample controls, not completed Lean proofs. No claims are made about open work absent from the supplied index/checkouts.

## Source issues

- **Misprint** in bskk at Introduction, printed p.5 (bskk line 203): the source says the quotient of an arbitrary rational polynomial equals the remaining monic root product; it should be multiplied by the original leading coefficient, or monicity assumed; affects a stated result.
- **Misprint** in bskk at Claim 11.4 proof, printed p.57 (bskk line 3541): the source says the return iterates lie in the fibre indexed by xᵢ; it should be the fibre indexed by αᵢ; affects nothing.
- **Misprint** in bskk at Lemma 12.5 proof, printed p.60 (bskk line 3737): the source says subtract the entire smooth reciprocal series in an equality for a truncated sum; it should be truncated too, or the equality replaced by a lower bound; affects the proof.
- **Gap** in bskk at Lemma 12.6, equation (12.2), printed p.61 (bskk line 3759): the source says the displayed argument proves a bound without a logarithmic factor; it should retain the proved factor (log n)^κ, sufficient for the lemma; affects the proof.
- **Misprint** in bskk at Lemma 12.8 proof, printed p.62 (bskk line 3836): the source says n^(κα)≥n^(1/40); it should be n^(κα)≤n^(1/40)<n^(1/8)<p; affects the proof.
- **Misprint** in bskk at Lemma 12.9, Case 1, printed p.63 (bskk line 3875): the source says the pulled-back sum without displaying its summand; it should sum the part sizes u, not count the selected occurrences; affects nothing.
- **Gap** in bskk at Lemma 12.9, Cases 2b and 3, printed p.63 (bskk lines 3884–3895): the source says a companion cycle gives a pair violating E₁ without bounding its original part; it should first ensure both original parts are at most n/4; affects the proof.
- **Misprint** in babai at Lemma 8.5 proof, printed p.7 (babai line 226): the source says the remaining distance goal is a lower bound of two; it should be an upper bound of two, supplied by a common neighbor; affects nothing.
- **Misprint** in babai at Lemma 8.9 proof, printed p.8 (babai line 242): the source says the two equal colors equal the valency ρᵢ; it should be that both colors equal i; affects nothing.
- **Misprint** in babai at Lemma 8.17 proof, printed p.9 (babai line 277): the source says to use an unresolved exercise label; it should cite Exercise 8.16 for the inter-suborbit edge-count bound; affects nothing.

The roadmap avoids the consequential BSKK defects: it uses the correct smooth-mass inequality, retains logarithmic losses, corrects the cutoff direction, and uses five/four disjoint block unions to obtain short companion cycles. These source issues are not additional findings against this roadmap.
