# Review of ArithmeticDirichletSeriesPartII (pull request #1415 at 93f5273)

**Verdict:** accepted

:robot: Independent AI review. No new findings. The four previous findings are repaired, the supplied push gate passes, and the independent dependency check and Lean elaboration pass. This verdict means ready for a human's final approval; it is not an approval or merge.

## Verified sound

### Previous findings, checked individually

| Previous finding | Passage at this head | Assessment and witness |
| --- | --- | --- |
| R01: prefixed target headings | `TauCetiRoadmap/ArithmeticDirichletSeriesPartII/README.md:269`: “### 0.1 The one-sided Laplace transform”; :589: “### 2.1 Locally integrable regularised boundary values” | Repaired. All 15 target headings use consecutive numeric identifiers; all six layer headings and the Lean section comments agree. The gate reports `layer-ids=0 target-ids=0`. |
| R02: archived supplier link | `TauCetiRoadmap/ArithmeticDirichletSeriesPartII/README.md:108`: “[OneParameterSemigroups](../../Completed/OneParameterSemigroups/README.md)” | Repaired. On content main, `Completed/OneParameterSemigroups/README.md:162` is Part B; :185 states the positive-measure Laplace representation. |
| R03: dyadic control in Lean | `TauCetiRoadmap/ArithmeticDirichletSeriesPartII/Suggested.lean:15`: “the dyadic counterexample of README §5.2 is a negative control” | Repaired. The declaration is absent from the 243-line Lean file; the mathematical counterexample and its computed Checks remain in README §5.2. |
| R04: unnecessary sign hypothesis | `TauCetiRoadmap/ArithmeticDirichletSeriesPartII/Suggested.lean:141`: “No sign of `C` is assumed”; README :752: “the hypotheses force `C ≥ 0`” | Repaired. The elaborated `monotoneUnsmoothing` signature has no `hC`. For every positive bandwidth its integrals are nonnegative, so their limit is nonnegative. The zero-function case gives integral and conclusion both zero. |

### Gate, scope, elaboration and acceptance coverage

The reviewed head is `93f5273728f79691e9ce572baf5b17186686be75`. The outside-folder diff against `origin/main` is empty. The worktree remains unchanged. The worker's gate reports all scanners, metadata, dependency, cleanliness and build checks at zero, ending `OK`; there are no failed checks to report.

The requested independent dependency command, with `--movable`, returned exactly:

```text
depcheck: 204 roadmaps, 1494 edges, 0 problem(s)
```

There is no UPWARD, CYCLE or moved line. `AnalyticNumberTheoryPartII` is at merge-order line 82 and this roadmap at line 181. Every `*Needs:*` line was read. The internal order is acyclic: predicates and kernel/weight precede boundary regularisation and smoothing; unsmoothing uses only the kernel/weight; Delange combines those stages; counting uses the earlier bridge; perturbation uses the counting theorem. No undeclared supplier gap was found.

Independent `lake env lean` elaboration of `TauCetiRoadmap/ArithmeticDirichletSeriesPartII/Suggested.lean` exited successfully with exactly 14 warnings, all for `sorry`. The imported Tau Ceti object was available, so no prerequisite build was needed. A separate scratch copy containing `#check @name` for all 19 declarations also elaborated. I compared all 19 types with the README and the worker's signature extraction: none loses a binder or changes generality. In particular, the Laplace predicate retains its three typeclasses and measure argument; regularisation allows arbitrary real `a,A`; smoothing allows `A=0`; unsmoothing quantifies over every positive bandwidth; the main counting results retain positivity, convergence and boundary hypotheses; perturbation retains `l<k` and the majorant's own analytic hypotheses.

The 14 acceptance theorems are `squaredSinc_mass`, `squaredSinc_fourier`, `delangeWeight_normalization`, `delangeWeight_shift`, `regularizedBoundaryL1`, `delangeSmoothedLimit`, `monotoneUnsmoothing`, `delangeLaplace`, `logSummatory_hasLaplace`, `delangeDirichlet`, `delangeDirichlet_positiveAbscissa`, `finiteChange_asymptotic`, `lowerPole_perturbation`, and `zetaSquare_counting`. These cover the end theorems and analytic milestones named by the README. All are statable at the pins and present. The remaining five declarations are the three real-bodied definitions, the boundary structure with actual analytic conditions, and the identity-height Northcott instance needed to state counting. The Gamma model is an imported supplier contract, and the dyadic example is a README control. No missing-carrier substitute is used.

On another scratch copy, replacing each of the 14 admissions by the single tactic `simp` left 14 failures: ten “made no progress” and four unsolved goals. Reading the definitions and nearby library results did not reveal a one-lemma replacement or a residual small-value/control theorem. This probe is a padding check, not a proof of the targets.

The four named mathematical definitions each have an API and at least three discriminating Checks: `HasLaplace` has four, `PoleBoundary` five, the kernel four, and the weight five. Each of the six layers ends with Examples and Dependencies. The file has the permitted imports, declaration docstrings and layer comments, and no `set_option`, sorry'd data, free condition field or admitted example. The roadmap develops arbitrary nonnegative coefficients and every positive integer pole order, including the whole boundary line; it does not select good primes or assume the growth bound it must derive. It extends the parent's simple-pole theorem rather than replanning it. No copied source passage or computational algorithm was found.

### Source sample: all 15 targets

I read the four cached legal sources, including the proof steps invoked rather than just their theorem statements. No locator in this README is marked unverified. Delange's printed page numbers are the extraction's page numbers plus 211. These are paraphrases of the source evidence, not quotations.

| Sampled target | Locator checked | Support and qualification |
| --- | --- | --- |
| §0.1 One-sided Laplace transform | delange1954 line 24, p.213; line 329, §3.3.1, pp.221–222; osele-laplace lines 72, 121, 125 | Delange uses an ordinary convergent Laplace integral. Osele's definitions give the same integrability-plus-value predicate, argument order, scalar assumptions and default restricted measure. |
| §0.2 Pole boundary | delange1954 line 818, Theorem III, §5.2.1, pp.235–236; line 870, p.237 | The boundary line away from the distinguished point and the analytic numerator are explicit hypotheses. With exponent `k+1`, the analytic additive remainder is absorbed into the numerator without changing its value. Positivity of the leading coefficient follows in the nonnegative-transform setting. |
| §1.1 Squared-sinc kernel | delange1954 line 428, §3.3.3, p.224; line 489, §3.3.5, p.226 | The compact triangle produces the squared-sinc kernel. The source kernel has mass π and smoothed limit π times the coefficient; division by π gives the README's mass and limit. |
| §1.2 Polynomial weight | delange1954 line 278, §§3.1–3.2, pp.220–221; line 673, Lemma 3, pp.231–232; line 875, p.237 | The weight and shift argument are present. For a pure polynomial density the cutoff can be one: the incomplete-Gamma substitution independently proves normalization, including `k=0`. No logarithmic-cutoff claim is imported. |
| §2.1 Regularised boundary values | delange1954 line 329, §§3.3.1–3.3.2, pp.221–224; line 570, §4.1, pp.228–229; line 858, pp.237–238 | The source regularises the remainder by an integrated derivative and controls its boundary singularities. The README's stronger compact L¹ conclusion follows from its explicit logarithmic majorant and holomorphic-away hypothesis, not merely from the source's weak integral convergence statement. |
| §2.2 Smoothed limit | delange1954 line 441, §§3.3.4–3.3.5, pp.224–226; line 496 | The damped identity, positivity argument to remove damping, Riemann–Lebesgue limit and model contribution occur in the source. The README spells out the absolute-integrability requirements and derives the undamped integrability before using it. |
| §3.1 Unsmoothing | delange1954 line 517, §§3.4.1–3.4.2, pp.227–228 | Monotonicity first gives boundedness of the weighted function, then both inequalities. Bandwidth goes to infinity before the window shrinks. The proof also works at limiting constant zero. |
| §3.2 Delange | delange1954 lines 818–832, Theorem III, pp.235–236; lines 870–892, pp.237–238 | Substitution `ω=k+1` gives `Γ(ω)=k!`. The standing assumptions on p.213 supply `a>0`, monotonicity, nonnegativity and convergence. All appear explicitly in Lean. |
| §4.1 Logarithmic bridge | delange1954 line 24, p.213; wood2019 line 1617, p.416 | Delange specifies the transform convention; Wood specifies discriminant-indexed counts. The README correctly labels the bridge as an independent derivation. Integrating the nth indicator gives `n^(−s)/s`, explaining the extra factor. |
| §4.2 Abscissa one | delange1954 line 818, Theorem III, pp.235–238; wood2019 lines 1652, 1692, pp.416–417 | Applying Delange to `F/s` gives the constant `A/k!`. Wood's averaged series imposes trivial complex conjugation, not just the finite-prime inertia condition; the roadmap states both. |
| §4.3 Positive abscissa | delange1954 line 24, p.213, and line 818, Theorem III, pp.235–238 | The source allows arbitrary positive `a`; division by `s` changes the leading coefficient to `A/a`. No result at zero is claimed. |
| §4.4 Finite changes | delange1954 line 42, footnote 1, p.213; wood2019 line 1695, p.417 | Constant shifts do not affect the asymptotic. The roadmap derives the general finite-coefficient result using the native eventually-constant-discrepancy theorem. |
| §4.5 Lower pole | wood2019 lines 1698–1700, §7, p.417 | The source bounds the non-surjective contribution using smaller-group counts. The roadmap's coefficientwise domination is an explicit, sufficient hypothesis; it does not claim Wood has already supplied that majorant for every application. See the source typo recorded below. |
| §5.1 Divisor sums | delange1954 line 818, Theorem III, pp.235–238, exponent 2 | The Tauberian conclusion has coefficient `1/1!=1`; the separate arithmetic identities and zeta continuation were checked in the pinned library. |
| §5.2 Dyadic obstruction | delange1954 line 1046, §5.3 second remark, p.242 | The source distinguishes local order-of-magnitude information from a full asymptotic. The dyadic construction is explicitly the roadmap's own example and was recomputed below. |

Additional cited passages checked: the Gamma model at delange1954 line 719, Lemma 4 proof, p.233; GMR's Laplace-resolvent identity (4.4), gmr2019 line 1944, §4.1, p.791, and the spectral decomposition and continuation at lines 2188–2203, §4.3, p.797. These resolve the previous review's unverified GMR items. The roadmap correctly leaves positivity, convergence and uniformity in starting point to the consumer; its scalar theorem alone does not prove the uniform GMR count.

### Computed adversarial pass

Here `Kλ(v)=(λ/π)sinc(λv)²`, `wₖ(t)=t∫₀¹e^(−ut)uᵏ/k!du`, and `S` suppresses coefficient zero. The 67 rows cover the definitions, their API statements, every sampled target and every acceptance theorem. “Retain” means the computed instance requires no change; the rows are diagnostic computations, not formal proofs.

| Statement | Instances tried | Values on the two sides / negative-control values | Result | Change |
| --- | --- | --- | --- | --- |
| Inclusive summatory convention and `northcott_natId` | Cutoffs −1,0,1,2; `c₀=99,c₁=2,c₂=3` | Carriers ∅,{0},{0,1},{0,1,2}; sums 0,0,2,5. Natural sublevel cardinalities at 0,1,2 are 1,2,3. | Finite, inclusive, zero suppressed | Retain |
| Logarithmic cutoff convention | `t=0,log 2`, same coefficients | `S(e⁰)=2=c₁`; `S(e^(log 2))=5=c₁+c₂`. | Agrees with bridge | Retain |
| Fourier phase convention | `y=2π`, `v=0,1/4` | Inverse phase 1,i; native forward phase at frequency 1 is 1,−i. | Sign and 2π conversion fixed | Retain |
| Eventual denominators | `X=e`, `a=2`, `k=0,2`; `X=1,k=1` | Scales e²,e² are positive; at 1 the logarithmic scale is 0, and total division gives 0. The limit discards this finite-cutoff value. | No division-at-zero inference | Retain |
| §0.1 `HasLaplace` definition | `f=1,s=2`; `f=1,s=0`; `f=0` | At 2, norm integral and value both 1/2. At 0, norm integral ∞ although total integral 0, so the predicate is false. Zero has norm integral/value 0 under a zero-preserving action. | Wrong bare-integral model excluded | Retain |
| Convergence projection | `f=1,s=1+i` | Norm integral 1; transform `(1−i)/2`; convergence is true. | Value and convergence distinguished | Retain |
| Integral-value projection | `f=t²,s=2` | Integral `2!/2³=1/4`, equal to the asserted value. Stieltjes value would be 1/2. | Ordinary integral | Retain |
| Transform uniqueness | `f=1,s=2,z=1/2,z'=3` | First predicate true, second false since integral 1/2≠3. Any two true predicates force the same 1/2. | Both premises needed | Retain |
| Almost-everywhere congruence | Change `f(1)` from 1 to 37, `s=2`, Lebesgue measure | Singleton mass 0; integrals remain 1/2. Under a Dirac measure at 1, values differ by `36e^(−2)` and the a.e. premise fails. | Arbitrary-measure hypothesis respected | Retain |
| Additivity | `f=1,g=t,s=2` | Transforms 1/2 and 1/4; transform of sum 3/4 equals their sum. Zero-function value 0 under `DistribSMul`. | Compatible action sufficient | Retain |
| Complex scalar multiplication | `f=1,s=2,c=i` | Transform `i/2=i·(1/2)`; `c=0` gives 0 on both sides. | Tower and normed action match | Retain |
| Positive dilation | `f=t,c=2,s=2` | Undilated value at `s/c=1` is 1; transformed `2t` at 2 is 1/2; `c⁻¹z=1/2`. | Jacobian direction correct | Retain |
| §0.2 `PoleBoundary` definition | `F=1/(s−1)`, `A=1,2,0`; zero F | Numerator value is 1, rejecting A=2 and A=0 at order 1; zero F admits A=0 at every k, rejecting A≠0. | Coefficient tied to F | Retain |
| Open-half-plane agreement API | Redefine preceding F at 1 to 37 | Right-half-plane values unchanged; numerator value still 1, raw F(1)=37. | Boundary junk ignored | Retain |
| Leading-coefficient uniqueness | `F=3/(s−2)²`, `k=1` | `(s−2)²F(s)→3`; proposed A=4 gives 4≠3. | Unique coefficient | Retain |
| Pole-order uniqueness | `F=1/(s−1)`, proposed k=0 or 1 | Order-1 numerator has value 1; order-2 numerator `s−1` has value 0. Nonzero-leading-coefficient condition excludes k=1. | No false uniqueness at A=0 | Retain |
| Division by argument | `F=1/(s−2)²`; excluded `F=1/s` at a=0 | New numerator value at 2 is 1/2=A/a; at zero division gives `1/s²`, raising the order. | Positive-abscissa condition correct | Retain |
| Rescaling | Same F, a=2,k=1 | `F(2s)=1/[4(s−1)²]`; coefficient 1/4=`1/2²`. | Order unchanged | Retain |
| Regular multiplication | Same F, `H(s)=s`, then H=0 | Numerator values 2 and 0, equal to A·H(2); zero coefficient is allowed. | No hidden nonvanishing requirement | Retain |
| Product API | `1/(s−1)` times `2/(s−1)²` | Product `2/(s−1)³`; new k=0+1+1=2 and A=1·2=2. | Orders add with correct offset | Retain |
| §1.1 Kernel definition | λ=1,v=0,π,2π; λ=0 | Values 1/π,0,0; K₀ identically 0. Wrong half-bandwidth kernel at π is 4/π³ instead of 0. | Total definition and bandwidth fixed | Retain |
| Kernel nonnegativity | λ=2 and λ=−1, v=0 | 2/π≥0 for positive λ; −1/π<0 for excluded λ. | Sign hypothesis substantive | Retain |
| Kernel evenness | λ=1,v=±π/2 | Both values 4/π³. | Even on all real λ | Retain |
| Kernel continuity | v→0, λ=−1,0,2 | Limits −1/π,0,2/π equal respective values at zero. | Continuity does not require λ>0 | Retain |
| Kernel integrability bounds | λ=1, v=π/2,π | At π/2 actual and tail bound both 4/π³; at π actual 0≤1/π³. Global bound is 1/π. | Bounded origin, integrable square tail | Retain |
| `squaredSinc_mass` | λ=1,2; excluded λ=0 | Change of variables gives `(1/π)·π=1` at both positive bandwidths; K₀ has mass 0≠1. | Correct normalization | Retain |
| `squaredSinc_fourier` | λ=1,v=0,π/2,π | Triangle integrals are 2,8/π²,0; division by 2π gives 1/π,4/π³,0, matching K. General cosine integral is `2sin²(λv)/(λv²)`. | Formula and limiting value agree | Retain |
| Kernel mass proof identity | R=π | Boundary term `−sin²π/π=0`; integration by parts gives `∫₀^πsin²w/w²=∫₀^πsin(2w)/w`. At infinity the latter tends π/2; evenness doubles it. | Uses improper sine integral correctly | Retain |
| Tail concentration | Fixed h=1, λ=1,10,100 | Tail ≤`2/(πλh)`, respectively 2/π,1/(5π),1/(50π), tending to 0. | Quantifier order correct | Retain |
| §1.2 Weight definition and cutoff | k=0,t=1,2; cutoff 1/2 as wrong model | Cutoff-one values `1−e⁻¹,1−e⁻²`; half-cutoff values `1−e⁻¹ᐟ²,1−e⁻¹`. At t=0 all wₖ=0. | Cutoff and origin fixed | Retain |
| Weight continuity | k=0,1,2, t→0 | Leading terms `t,t/2,t/6`; all tend to value 0. | No origin singularity | Retain |
| Weight nonnegativity | k=0,t=0,1,−1 | Values 0,`1−e⁻¹>0`,`1−e<0`. | Domain t≥0 required | Retain |
| Weight strict positivity | k=1,t=1 | `w₁(1)=1−2/e>0`; w₁(0)=0 rejects strictness at zero. | Domain t>0 required | Retain |
| Incomplete-Gamma identity | k=0,1,2,t=1 | Products `wₖ(1)1ᵏ` and normalized integrals both `1−1/e`, `1−2/e`, `1−5/(2e)`. | Factorial correctly placed | Retain |
| `delangeWeight_normalization` | k=0,1,2, t→∞ | Products are `1−e⁻ᵗ`, `1−(1+t)e⁻ᵗ`, `1−(1+t+t²/2)e⁻ᵗ`; each tends 1. | Three orders agree | Retain |
| `delangeWeight_shift` | k=0,1,2; h=−1,0,1 | At h=0 ratio is 1 for t>0. At ±1 it is a ratio of normalized factors tending 1 times `(t/(t±1))ᵏ→1`. | Negative shift eventually defined positively | Retain |
| Uniform shifts | k=1, H=1, t>1 | Rational factor ranges from `t/(t+1)` to `t/(t−1)`; maximal deviation ≤`1/(t−1)→0`; both normalized weights are within the common tail error for t−1. | Uniform, not pointwise-only | Retain |
| Normalized bound | k=2,t=0,1; t→∞ | Values 0,`1−5/(2e)≈0.0803`, then limit 1 from below; all ≤1. | Bound matches normalization | Retain |
| Weight differentiability | k=0,1,2 at 0; k=1,t=1 | Derivatives 1,1/2,1/6; at (1,1), `w₁'=3/e−1`, equal to `e⁻¹−w₁(1)`. Totalizing positive-time formula at zero instead gives 1,1,1/2. | Exceptional point handled | Retain |
| Logarithmic derivative | k=0,1,2, large t | Ratios are asymptotic respectively to `e⁻ᵗ`, `−1/t`, `−2/t`; all tend 0. | Supports unsmoothing control | Retain |
| Supplied Gamma model | k=0,s=a+2; k=1,s=a+1+i; k=2,a=0,s=2 | Integrals and `k!/(s−a)^(k+1)` are 1/2,−i/2,1/4. | Complex rate and factorial checked | Retain |
| §2.1 `regularizedBoundaryL1` | Pure model at a=−1,0,2; arbitrary k | R=0,H=0,b=0; every L¹ distance is 0. Changing F(a) to 37 leaves all these interior calculations unchanged. | No sign/positivity assumptions needed | Retain |
| Boundary logarithmic singularity | k=1,R=1/(s−a), y≠0 | `b=log(1+iy)−log(iy)+iy/(1+iy)−1`; as y→0 its leading real growth is `−log|y|`. `∫₀^δ−log y dy=δ(1−log δ)<∞`. | Remaining pole becomes locally integrable | Retain |
| Boundary majorant and regular case | j=k; separately k=0,R(s)=s−a | Majorant integral ≤`log((δ+|y|)/|y|)`; for k=0 linear R gives H=b=−1 and L¹ distance 0. At y=0 the singular model may diverge as ε→0; the singleton has measure 0. | No illicit pointwise claim at pole | Retain |
| Regularised-transform sign | k=0, α−β=1, Re s>0 | `R=1/s`, `H=1/s−1/(s+1)`; Laplace transform of `w₀=1−e⁻ᵗ` is the same positive difference. | Minus derivative sign correct | Retain |
| §2.2 `delangeSmoothedLimit` | α=`e^(at)tᵏ`, A=k!, k=0,1,2 | Weighted α is `wₖtᵏ→1`; convolution tends kernel mass 1, matching A/k!=1. With α=0,A=0 both integral and limit are 0. | Factorial and zero residue correct | Retain |
| Damped Fourier identity | Triangle even; H uses exp(−iyt) | RHS phase `exp(iyT)exp(−iyt)=exp(−iy(t−T))`; y↦−y changes it to inverse phase without changing the triangle. Both sides give Kλ(t−T). | No sign mismatch | Retain |
| §3.1 `monotoneUnsmoothing` | α=0,C=0; α=eᵗ,a=1,k=0 | First case has ratio and smoothed limit 0; second has ratio 1 and smoothed limit 1. Every integrand is nonnegative, excluding C<0. | Revised sign-free statement holds | Retain |
| Unsmoothing window comparison | a=1,h=1,η=1/4, window mass m | Lower multiplier `(3/4)e⁻¹m>0`; upper coefficient `(5/4)e`. After η→0, λ→∞, h→0 both comparison coefficients tend 1 and tail contribution tends 0. | Bound derived before tail estimate | Retain |
| Single-bandwidth counterexample | a=C=λ=1, ε=1/10 | J oscillates between 0.9 and 1.1; frequency 3 is outside [−2,2], so convolution limit is 1. Log-derivative lower bound tends `1−0.3/0.9=2/3>0`. | One bandwidth is insufficient | Retain |
| §3.2 `delangeLaplace` | α=eᵗ, teᵗ, t²eᵗ | Pole data (k,A)=(0,1),(1,1),(2,2); all output ratios equal 1 for t>0, matching A/k!. | Headline constants checked | Retain |
| §4.1 `logSummatory_hasLaplace` | Only c₁=1; only c₂=1, s=2 | First transform 1/2=F(2)/2. Second transform `∫log2∞e⁻²ᵗdt=1/8=(1/4)/2`; α(0)=0=c₁. | Ordinary transform and lower endpoint checked | Retain |
| Bridge convergence boundary | Only c₁=1,s=0 | Series value 1; proposed quotient 1/0=0; α=1 has infinite norm integral. | hs cannot be omitted | Retain |
| §4.2 `delangeDirichlet` | cₙ=1 for n>0; divisor coefficients | First ratio `floor X/X→1=1/0!`; second `Σd(n)/(X log X)→1=1/1!`. | Simple and double pole normalizations agree | Retain |
| Wood count's infinity condition | Last-factor character of ℚ(i) in C₂² | Inertia intersection with C₂×{0} has size 1; complex conjugation is (0,1)≠0; last-factor absolute discriminant 4. | Excluded from the totally real F₁ | Retain |
| §4.3 Positive-abscissa count | cₙ=n, a=2,k=0,A=1 | Sum `N(N+1)/2`; ratio to X² tends 1/2=A/(a·0!), not 1. At a=1 the formula reduces to §4.2. | Essential 1/a retained | Retain |
| Abscissa-zero negative control | cₙ=1/n, F=ζ(s+1) | Simple-pole coefficient 1 at zero; sum grows log X whereas X⁰(log X)⁰=1. F/s has order 2; formal A/a=0 cannot be the limit. | Zero abscissa correctly excluded | Retain |
| Rescaling check of counting constant | a=2,k=1,A=8 | Rescaled pole coefficient 8/2²=2; converting logarithmic scale multiplies by 2, giving 4=8/(2·1!). | Both routes agree | Retain |
| §4.4 `finiteChange_asymptotic` | Add 7 at n=1 to d; change only c₀ | First discrepancy eventually 7, ratio `7/(X log X)→0`; second discrepancy identically 0. | Finite changes, including suppressed zero, harmless | Retain |
| Finite changes with signed limit | cₙ=−1 for n>0, add 3 at n=2, a=1,k=0 | Original ratio `−floor X/X→−1`; modified ratio adds 3/X→0, still −1. | No unjustified positivity requirement | Retain |
| §4.5 `lowerPole_perturbation` | d₂(n)+(−1)ⁿ, bₙ=1, l=0<k=1 | Cutoff errors −1,0,−1,0; absolute error ≤floor X. Normalized majorant tends like 1/log X→0; both limits 1. | Signed perturbation controlled | Retain |
| Strict lower-order condition | c=b=1,d=2, l=k=0; all zero at index zero | Coefficient bounds are 0≤0 at zero, 1≤1 elsewhere, but limits are 1 and 2. | Equality of orders would be false | Retain |
| §5.1 `zetaSquare_counting` | n=0,1,2,4; s=2; pole at 1 | Divisor counts 0,1,2,3. Series value `ζ(2)²=π⁴/36`; squared analytic numerator at 1 is 1²=1. Counting coefficient 1/1!=1. | All three conjuncts match native objects | Retain |
| ζ⁴ factorial check | d₄=σ₀*σ₀; n=2,4; k=3 | Coefficients 4 and 10; leading numerator 1; asymptotic coefficient 1/6. Wrong normalizers yield 1/3,1/2,1/24. | Higher-order discrimination | Retain |
| §5.2 Dyadic series and local pole | s=2; s→1 from right | Series `Σ2⁻ʲ=2=1/(1−1/2)`; denominator derivative at 1 is log 2; local numerator value 1/log 2≈1.4427. | Convergence and positive local pole hold | Retain |
| Dyadic failure of away field | s₀=`1+2πi/log2`, s=s₀+ε | Denominator `1−e^(−εlog2)→0`; value grows like `1/(εlog2)`, excluding a bounded analytic germ. | Whole boundary hypothesis substantive | Retain |
| Dyadic counting/nonlimit | j=0,1,2,3 | At 2ʲ, sums 1,3,7,15 and ratios 1,3/2,7/4,15/8→2. At 3·2ʲ, sums 3,7,15,31 and ratios 1,7/6,5/4,31/24→4/3. Neither limit is 1/log2. | Correct negative control | Retain |

No theorem uses arbitrary data without relating it to the construction. In particular the actual Laplace values and Dirichlet sums are hypotheses, and all three boundary fields constrain agreement with those functions. Limits only consult positive time or large positive cutoffs. The normed-space definition allows broad scalar actions, but its API explicitly adds distributivity or compatible normed scalar towers where needed. Group-, scheme- and characteristic-specific defect classes do not apply to these analytic carriers; the finite C₂ examples serve only the stated consumer illustration.

### Pinned library and ownership audit

Both package Git heads match `lake-manifest.json`: Mathlib `6b7abb3c7686292736be2955bd3eb9ebf63b456a`, Tau Ceti `a91d3aafa8cd3e6bc33dfde0d7677ed0f1625039`. I opened the following declarations at those pins. Paths in this table are library-relative.

| File and line | Declarations and contract checked |
| --- | --- |
| `Mathlib/NumberTheory/LSeries/Basic.lean:74`, :217 | `LSeries.term` is `if n=0 then 0 else f n/n^s`; `LSeriesHasSum` is `HasSum (term f s) a`. This is unordered summability, not conditional convergence of ordered partial sums. |
| `Mathlib/Analysis/Normed/Module/FiniteDimension.lean:604` | `summable_norm_iff` applies to finite-dimensional real normed spaces, including ℂ; it justifies the absolute-summability step in the bridge. |
| `Mathlib/Analysis/Analytic/Basic.lean:110`, :120; `Mathlib/Analysis/Analytic/Uniqueness.lean:223` | `AnalyticAt`, `AnalyticOnNhd`, and `AnalyticOnNhd.eqOn_of_preconnected_of_eventuallyEq`. The last needs two analytic functions, a preconnected set, a point in it, and neighborhood agreement; the half-disc provides that agreement. |
| `Mathlib/MeasureTheory/Integral/Prod.lean:478` | `integral_integral_swap` requires integrability on the product. The roadmap supplies damping and compact frequency support before exchanging integrals. |
| `Mathlib/MeasureTheory/Integral/DominatedConvergence.lean:67`, :88 | `tendsto_integral_filter_of_dominated_convergence` and `integral_tsum`: countably generated filter or countable index, a.e. measurability, and the stated majorant/summable norm-integral assumptions. |
| `Mathlib/MeasureTheory/Integral/Lebesgue/Add.lean:216` | `lintegral_liminf_le'` for a.e.-measurable nonnegative extended-valued functions and countably generated filters. |
| `Mathlib/Analysis/Calculus/ParametricIntegral.lean:286` | `hasDerivAt_integral_of_dominated_loc_of_deriv_le`, with neighborhood, measurability, integrability, derivative bound and pointwise differentiation premises; it permits the complex scalar parameter used here. |
| `Mathlib/MeasureTheory/Integral/IntegralEqImproper.lean:1208` | `integral_comp_mul_left_Ioi`, requiring positive dilation and contributing the inverse Jacobian. |
| `Mathlib/Analysis/SpecialFunctions/ImproperIntegrals.lean:63`, :87 | `integrableOn_exp_mul_complex_Ioi`, `integral_exp_mul_complex_Ioi`; the exponential rate has negative real part and the value is `−exp(a*c)/a`. |
| `Mathlib/Analysis/SpecialFunctions/Gamma/Basic.lean:66`, :325, :372, :422, :465 | `Real.GammaIntegral_convergent`, both complex/real `Gamma_nat_eq_factorial`, and the complex-power/real-power exponential integral formulas. Crucially, the rate in `Complex.integral_cpow_mul_exp_neg_mul_Ioi` is real; it does not already supply the supplier's complex-rate extension. |
| `Mathlib/Analysis/SpecialFunctions/Trigonometric/Sinc.lean:37`, :51, :56, :85 | `Real.sinc` has the body `if x=0 then 1 else sin x/x`; `sinc_neg`, `abs_sinc_le_one`, `continuous_sinc`. No squared-kernel mass theorem was found in the object search. |
| `Mathlib/Analysis/Fourier/RiemannLebesgueLemma.lean:206` | `Real.tendsto_integral_exp_smul_cocompact`, phase `𝐞 (−v*w)`, on all functions using the total integral. Here the compactly supported boundary function is genuinely integrable. |
| `Mathlib/Analysis/Complex/RemovableSingularity.lean:35` | `Complex.analyticAt_of_differentiable_on_punctured_nhds_of_continuousAt`, applied to the redefined numerator, not raw totalised values at the pole. |
| `Mathlib/NumberTheory/LSeries/RiemannZeta.lean:145`, :206, :241; `Mathlib/Analysis/PSeriesComplex.lean:25` | `analyticOn_riemannZeta`, `zeta_eq_tsum_one_div_nat_cpow`, `riemannZeta_residue_one`, `Complex.summable_one_div_nat_cpow`. Series agreement is used only for Re s>1. |
| `Mathlib/NumberTheory/LSeries/Convolution.lean:139`; `Mathlib/NumberTheory/ArithmeticFunction/Misc.lean:127`, :178, :195 | `LSeriesHasSum.convolution`, `ArithmeticFunction.pow_zero_eq_zeta`, `sigma_zero_apply`, `zeta_mul_pow_eq_sigma`. Both series-convergence premises are available. |
| `Mathlib/NumberTheory/Divisors.lean:243`; `Mathlib/Analysis/SpecificLimits/Normed.lean:473` | `Nat.divisors_zero` and `hasSum_geometric_of_norm_lt_one`, fixing the zero-index and dyadic conventions. |
| `Mathlib/Order/Northcott.lean:36` | `Northcott` means finiteness of every sublevel set; it does not impose positivity of the height or exclude zero. No identity-on-ℕ instance was found. |
| `TauCeti/Order/Northcott/Basic.lean:41`, :47, :73, :79, :102, :138, :155, :164, :177 | `normLE`, `mem_normLE`, `mem_normLE_natCast`, `normLE_eq_normLE_natFloor`, `summatory`, `summatory_eq_summatory_natFloor`, `summatory_nonneg`, `summatory_mono`, `eventually_summatory_sub_eq`. The actual body of `summatory` sums over inclusive `normLE`; it does not automatically remove index zero. |
| `TauCeti/Analysis/Contour/MeromorphicLaurent.lean:223` | `Contour.exists_laurent_data_of_meromorphicAt` supplies a finite principal part and analytic remainder with equality on a punctured neighborhood. Applying it to the analytic quotient avoids boundary junk values. |
| `TauCeti/Analysis/Contour/WorkedExamples/HalfDisc/SineIntegral.lean:339`, :357 | `Contour.tendsto_integral_sin_mul_div_atTop`, `tendsto_integral_sinc_atTop`: positive frequency, interval-integral limits π/2. They do not claim Lebesgue integrability of unsquared sinc. |
| `TauCeti/NumberTheory/LSeries/WienerIkehara/SharpCutoff.lean:301`, :334; `Variants.lean:60`, :120, :135 | `wienerIkehara`, `wienerIkehara_zero`, `wienerIkehara_of_eventually_nonneg`, `wienerIkehara_nat`, `wienerIkehara_rpow`. The positive-abscissa output constant is κ/σ, agreeing with A/a at k=0. |

Cross-roadmap citations were resolved afresh, using content main for completed/existing roadmaps and the open head for the new Gamma supplier. `roadmaps resolve` reported no unresolved roadmap citations or roadmap Lean names. Its output explicitly said it did not check external library names; the pinned-source audit above supplies that check.

- `Completed/ArithmeticDirichletSeries/README.md:227` supplies Layer 4.2, with its finite-discrepancy correction; :337 supplies Layer 9 and :352 its variants. The parent stops at the simple-pole counting theorem, with a continuous boundary remainder. Here arbitrary positive integer orders are new, while k=0 is expressly identified as the parent's specialization.
- `TauCetiRoadmap/AnalyticNumberTheoryPartII/README.md:285`, §4.5c at its open head, supplies the complex-rate Gamma integral, compact parameter-derivative majorants and joint holomorphy. Its real-rate base is exactly the pinned theorem identified above. The examples 1/2, −i/2 and 1/4 in this roadmap agree with that supplier.
- `Completed/OneParameterSemigroups/README.md:162`, Part B, supplies the positive-measure Bernstein theory cited as outside scope. At the pin, `TauCeti/Analysis/CompletelyMonotone/Laplace/Kernel.lean:88` defines `TauCeti.laplaceTransformENN` on measures and nonnegative real parameters, and :133 defines the kernel version; `TauCeti/Analysis/PositiveDefinite/SemigroupGroup/FourierLaplace/Transform.lean:88` integrates measure-valued Laplace/Fourier atoms. These are different from the complex-parameter function predicate here.

Ownership searches used `roadmaps grep` by object across main and the indexed open heads, plus `rg` over board packages and their designs. The main-roadmap shape comparison included the completed parent, completed OneParameterSemigroups and TauberianBoundaryConvergence. No conflicting owner or duplicate fully qualified target name was found. Relevant near matches were read:

- `TauCetiRoadmap/TauberianBoundaryConvergence/README.md:21` owns the bounded-complex Newman endpoint theorem and ordered boundary sums. Its hypotheses and conclusion differ from monotone exponential-growth Delange counting.
- `TauCetiRoadmap/NoncommutativeGeometry/README.md:399` on main (and :633 at the supplied open head) owns a logarithmic Hardy–Littlewood/Karamata trace criterion, not this boundary-pole implication.
- `TauCetiRoadmap/AnalyticNumberTheoryPartII/README.md:1821`, §6.12e, owns a heat-to-Weyl counting adapter using moment convergence. It does not duplicate these kernels, weights or Delange theorem.
- `TauCetiRoadmap/OperatorTheory/SpectralSubspacePerturbation/README.md:125` transforms the specific hyperbolic weight; `TauCetiRoadmap/DiophantineApproximationAndTranscendence/README.md:3068` transforms E-functions and differential operators. Neither builds the generic predicate or higher-pole counting API.
- `packages/ProbabilisticAndMetricNumberTheoryPartII/design/README.md:375` explicitly reuses this roadmap's one-sided transform while defining a bilateral adapter. Its old “HP.0” label is an external design reference, not a duplicate owner or a dependency flowing back into this roadmap.
- The pinned Fejér material includes the circle sums in `TauCeti/Analysis/Bochner/Herglotz.lean:75` and the finite-dimensional ball-overlap ratio in `TauCeti/Analysis/Bochner/Fourier/Nonneg.lean:275`. Neither is the claimed squared-sinc density with its mass/Fourier theorem. The native Wiener–Ikehara Fourier identity at `TauCeti/NumberTheory/LSeries/WienerIkehara/Fourier.lean:201` likewise uses a test function rather than defining this kernel.

Thus the new predicate, pole-boundary package, kernel/weight theory and higher-order Delange implication have an identified owner here, with earlier analytic and arithmetic infrastructure consumed rather than duplicated. No ownership move or new supplier gap is needed.

## Not verifiable

- None of the requested targets or cited sources remained inaccessible or uncertified in this review. The four supplied legal cached texts were readable, and the Wood misprint below was also checked on the rendered printed page.
- This is a mathematical and signature review, not a completed Lean proof of the 14 admitted theorems. The successful elaboration establishes well-formed statements; the computations, source checks and proof-route audit provide the separate mathematical evidence.

## Source issues

- **Misprint** in wood2019 at §7, printed p. 417 (wood2019 line 1699): the source says the homomorphisms being discarded fail to have image all of C₂ᵏ; it should be all of C₂^(k+1), the target of the homomorphisms counted by Fₖ; affects the proof.
