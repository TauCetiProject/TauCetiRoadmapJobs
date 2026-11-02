# Review of PolynomialGaloisGroupsPartII (pull request #1419 at 285e665)

**Verdict:** accepted

:robot: Independent AI review, incremental: the folder changed by two lines since the previous review at ca86510 (the parent-roadmap hyperlink). One P3 finding carried from the previous round; no blocking finding; the gate passes.

## R01 (P3) — The plan still declares the fulfilled Mertens gap

**Location:** `packages/PolynomialGaloisGroupsPartII/design/plan.json`, top-level `gaps`, slug `mertens-prime-product` (board repository). Read with `TauCetiRoadmap/PolynomialGaloisGroupsPartII/README.md:265`, "AnalyticNumberTheoryPartI, §0.26, Mertens's third theorem, supplies the following bound".

**Claim:** The gap entry says AnalyticNumberTheoryPartI still has to be asked for the bounded-error Euler product with coefficient exp γ and the coefficient identification.

**Witness:** AnalyticNumberTheoryPartI §0.26, at the head of its open pull request (its README line 539), states exactly that bound for real x ≥ 2 with absolute O(1), and assigns the identification κ = γ through the real Euler product. The README of this roadmap at this head carries no `gap:` line at all; it cites §0.26 as an ordinary supplier contract, which is the form the previous review asked to keep.

**Repair:** Delete the `mertens-prime-product` entry from the plan's `gaps` list on the board. Nothing in `README.md` or `Suggested.lean` changes. This was R01 (P2) of the previous review; it is recorded here as P3 because the folder under review already has the repaired form, the needs sentence is word-for-word the supplier's own target (so no input is unowned), and the only remaining edit lies in a file this pull request cannot touch. A human approving the folder can make that deletion alongside.

**Repair check:** With the entry gone, 3.4 still receives D ≥ 0 and x₀ ≥ 2 from §0.26 with the same quantifiers; the coefficient used in 3.4 stays exp γ/8 ≈ 0.222634 < 1/4, margin 1/2 − exp γ/8 ≈ 0.277366 > 1/4.

## Previous findings

- R01 — not repaired: the plan on the board still lists `mertens-prime-product`; the README at this head cites AnalyticNumberTheoryPartI §0.26 as an ordinary contract with no `gap:` marker. Re-raised above as P3, with the reason for the severity.
- R02 — repaired: `README.md:253` now links `Completed/PolynomialGaloisGroups/README.md#layer-1-permutation-groups-blocks-and-wreath-products`; on main that file's line 532 is the heading `### Layer 1: permutation groups, blocks, and wreath products`, whose GitHub anchor is exactly that fragment. The repair introduced nothing else: the two-line diff touches only that URL.

## Verified sound

Incremental re-review of 2 changed lines since ca86510. The worktree HEAD is 285e665b33ae9431bd2df64bb2016cffaf1637ea, clean; `git diff --stat origin/main...HEAD` outside the roadmap folder is empty; `Suggested.lean` is byte-identical to the file reviewed at ca86510. The worker's gate at this head reports every scanner, `depcheck=0`, `stray-files=0`, `outside-folder=0`, `build=0`, OK.

Rerun myself:

```text
depcheck: 204 roadmaps, 1494 edges, 0 problem(s)
```

No UPWARD, CYCLE or moved line for this roadmap. `lake env lean` on `TauCetiRoadmap/PolynomialGaloisGroupsPartII/Suggested.lean` from the worktree root exited 0 with exactly 13 `declaration uses sorry` warnings (lines 56, 69, 100, 106, 200, 208, 227, 232, 237, 244, 255, 266, 277) and no other output.

### The changed passage and what depends on it

The change is the URL in the `### From PolynomialGaloisGroups, Layer 1` supplier contract (`README.md:245–253`). I checked the contract against the cited target as it is on main (`Completed/PolynomialGaloisGroups/README.md`, Layer 1 at line 532, the imprimitivity wreath-embedding target at lines 603–609): for a transitive action with a nontrivial proper block B of size l, 1 < l < n, the block system has m = n/l members and there is a bijection α ≃ (block system) × B compatible with the embedding into the wreath product. With r = m and s = l this is the contract's `n = rs`, `r, s > 1`, the identification with `Fin r × Fin s` with rows permuted, the projection to `Fin r` with fibres of cardinality s, and `r ∣ n`, `1 < r < n`. The contract adds faithfulness, which every subgroup of `Equiv.Perm (Fin n)` has; it asks for nothing the target does not state.

The consumers are §5.1 (`README.md:1185`) and §5.3 (`README.md:1246`), unchanged. Their Needs lines name "the parent Layer 1 imprimitivity quotient" and "the parent Layer 1 equal-block quotient"; both use only r, s and the equivariant projection. The Lean `imprimitive_exclusion` (`Suggested.lean:255`) quantifies over `G : Subgroup (Equiv.Perm (Fin n))` with `IsPretransitive G (Fin n)` and `¬ IsPreprimitive G (Fin n)`; at the pin `IsPreprimitive` (`Mathlib/GroupTheory/GroupAction/Primitive.lean:91`) extends pretransitivity and says every block is subsingleton or ⊤, so its negation under pretransitivity is exactly the existence of a nontrivial proper block that the supplier's target consumes. For n ≤ 1 every block is trivial and the hypothesis is unsatisfiable, consistent with the threshold `3 ≤ N`.

I re-read BSKK Lemma 12.9 (bskk lines 3855–3899, pp.62–63) against §5.1 and §5.3: the observation at lines 3861–3864 is §5.1 (ℓ = r′s′, the blocks met form an invariant set, every cycle in it has length divisible by r′); Case 1 (line 3869) is the first branch with r′ < r and the subsum nr′/r; Case 2 (line 3877) is the middle branch, where the roadmap takes five witnesses instead of the source's two; Case 3 (line 3889) is the large branch with four witnesses. The exponent chains `r′ > n^(δ/2−α)` and `r′ > n^(1−3α)` are the source's (lines 3885–3886, 3895).

### Adversarial values

The statements of the roadmap are unchanged since ca86510, so the rows below for them are carried forward from the previous report (PRREVIEW-PolynomialGaloisGroupsPartII~1, at ca86510), where each value was computed; the three rows marked **(r2)** are new and were computed in this round for the changed contract and its consumers. Finite examples test the interfaces and proof steps, not the truth of an asymptotic assertion at an unknown threshold.

| Statement | Instances tried | Computed values on the two sides | Result / change |
|---|---|---|---|
| **(r2)** Layer 1 contract versus the completed target | block B of size l = 3 in a transitive action on 6 points; l = 2 on 4 points | supplier: m = n/l = 2 blocks, bijection with (block system) × B of card 2·3 = 6; contract: r = 2, s = 3, rs = 6, 1 < 2 < 6, 2 ∣ 6. Second: m = 2, r = s = 2, 1 < 2 < 4 | Contract is the target's statement; link repaired. |
| **(r2)** link anchor | heading text at `Completed/PolynomialGaloisGroups/README.md:532` | lower-case, punctuation dropped, spaces to hyphens gives `layer-1-permutation-groups-blocks-and-wreath-products`; URL fragment identical | Resolves; retained. |
| **(r2)** `¬IsPreprimitive` as the imprimitivity hypothesis | S₃ on Fin 3; C₄ regular on Fin 4; S₂ on Fin 2 | S₃: blocks are subsingletons or ⊤, preprimitive, hypothesis false; C₄: {0,2} is a block of size 2 ≠ ⊤, hypothesis true, r = s = 2; S₂: preprimitive, excluded | Negation picks exactly the imprimitive transitive groups. |
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

The 455-pair enumeration, the sieved reciprocal sums and the other numerical controls were performed in the previous round's scratch code; the statements they test are unchanged at this head.

### Pinned declarations and ownership

Library pins unchanged: `lake-manifest.json` pins Mathlib 6b7abb3c7686292736be2955bd3eb9ebf63b456a and Tau Ceti a91d3aafa8cd3e6bc33dfde0d7677ed0f1625039. The declaration table of the previous report was verified at those pins; this round reopened `Mathlib/GroupTheory/GroupAction/Primitive.lean:91` (`IsPreprimitive`) for the consumer check above. The 25 elaborated signatures of `signatures.md` are those of an unchanged file; the previous round's `#check @name` comparison with the README stands, and none has lost a binder.

Cross-roadmap citations resolved this round: Completed/PolynomialGaloisGroups Layer 1 on main (fa41b374), lines 532 and 603–609; AnalyticNumberTheoryPartI §0.26 at the head of its open pull request, line 539 (not on main). The worker's citation check found no cross-roadmap citation or Lean name missing anywhere. Ownership against open work was checked in the previous round by object (occurrence merging, full cycle multisets, quotient-cycle fibres, tuple-root adjunction, support minima, orbital distinguishers, harmonic prime mass, Mertens products); nothing in the two-line change creates a new object.

### Headline coverage and padding

The README's 13 headlines (§§0.4, 1.3, 2.4, 2.5, 3.4, 3.9, 4.4, 4.5, 4.6, 5.2, 5.3, 6.1, 6.2) are all stated in `Suggested.lean`, which is unchanged; the one-tactic probe (`simp`, `rfl`, `infer_instance` on a scratch copy) was run in the previous round and all 13 resisted. No padding finding.

## Not verifiable

None. The one cited text needed this round (bskk) was read from the legal cached copy; the completed parent and AnalyticNumberTheoryPartI were read on main and at its open head respectively.

## Source issues

- **Misprint** in bskk at Lemma 12.9, Case 1, printed p.63 (bskk line 3875): the source says the pulled-back sum without displaying its summand; it should sum the part sizes u in U, not count the selected occurrences; affects nothing.
- **Gap** in bskk at Lemma 12.9, Cases 2b and 3, printed p.63 (bskk lines 3884–3895): the source says a companion cycle of length mk gives a pair violating E₁ without bounding the original part k; it should first ensure both original parts are at most n/4, as the roadmap does with five and four witnesses; affects the proof.
