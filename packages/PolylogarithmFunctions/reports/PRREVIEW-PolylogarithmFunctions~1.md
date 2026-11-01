# Review of PolylogarithmFunctions (pull request #1320 at a4f224a)

**Verdict:** needs changes

## R01 (P2) — State the omitted differential and quantitative headlines

**Location:** `TauCetiRoadmap/PolylogarithmFunctions/Suggested.lean:13–27`; `TauCetiRoadmap/PolylogarithmFunctions/README.md:574–580,943–1046`.

**Claim:** The summary promises the real differential in every weight and quantitative truncation, Fourier and endpoint bounds. The Lean file has no all-weight differential and no Layer 7 theorem. Calling these “README targets” at line 19 does not supply their acceptance tests. Its assertion that no headline lacks a carrier is correct; this is an omission, not a carrier limitation.

**Witness:** Scratch signatures for the §4.5 differential, using `fderiv ℝ (singleValued n)`, and the §7.4 uniform modulus at 1 both elaborate with only `sorry` warnings. They require no additional definitions.

**Repair:** Add the all-weight differential and the quantitative end results promised by the summary, with their full weight, domain and uniformity hypotheses, using the existing definitions and native finite sums, derivatives and filters. Include a Layer 7 section. In particular, the endpoint constant must precede the universal quantifier over `z`. Retain the README's arbitrary directions and branch-dependent sector constants. Do not replace these results with special values. The differential probe retains `n ≥ 2`, `z ≠ 0,1` and arbitrary `v`; at `n=2,z=0.3+0.7i,v=0.6+0.8i` its two sides are approximately `0.2692286849`. The modulus probe retains one constant for all `0 < ‖z−1‖ ≤ 1/2`; the logarithmic factor accommodates `D(1+it)/t → +∞`.

## R02 (P3) — Remove the golden-ratio Check from the acceptance test

**Location:** `TauCetiRoadmap/PolylogarithmFunctions/Suggested.lean:279–283`; `TauCetiRoadmap/PolylogarithmFunctions/README.md:921–931`.

**Claim:** `rogers_golden` evaluates the function at two particular arguments and repeats the README's special-value Checks. Such evaluations are explicitly excluded from `Suggested.lean`, even when their proofs are nontrivial.

**Witness:** For `ρ=(√5−1)/2`, the two values are `0.986960440109 = π²/10` and `0.657973626739 = π²/15`. These are the same two values in §6.5.

**Repair:** Delete it from `Suggested.lean`; retain §6.5 and its Checks. Keep the general pentagon. Reflection and the pentagon at `x=y=ρ` still give `R(ρ)+R(ρ²)=π²/6` and `2R(ρ)=3R(ρ²)`, recovering both values. The one-tactic probes did not prove this declaration; the defect is its special-value role, not an alleged trivial proof.

## R03 (P3) — Make the README's undeclared API names prose

**Location:** `TauCetiRoadmap/PolylogarithmFunctions/README.md:136,255,273,501,985`; `TauCetiRoadmap/PolylogarithmFunctions/Suggested.lean:42,63,170,223,265`.

**Claim:** The README repeatedly backticks proposed declarations that the Lean file does not declare, contrary to the name correspondence rule. The introductory exception at README line 5 cannot override that rule. Definition APIs are also written as dense “comprises” paragraphs rather than the required fact bullets, and the Lean layer comments omit the numbered layer headings.

**Witness:** `intervalIntegrable_polylog_integrand`, `polylogBranch_basepointLift`, and `polylogBranch_isBigO_zero` occur as own API names in the README; none is among the file's 28 declarations.

**Repair:** Replace undeclared API identifiers with descriptive mathematical prose, keeping intended signatures where needed; make each definition's API a bullet list. Backtick own declaration names only for the retained definitions and headline statements. Number the Lean layer comments in README order. Do not add API padding to satisfy name matching. For example, the first identifier becomes the statement that the radial integrand is interval integrable for every `k` and `z`; its tests at `z=0,1,2` are unchanged. The worker gate reported zero missing names, but that scanner result does not resolve these explicit counterexamples.

## R04 (P3) — Point the common-path citation to the correct page

**Location:** `TauCetiRoadmap/PolylogarithmFunctions/README.md:247,449`.

**Claim:** These locators attribute the common-path construction to Z90's discussion before (33), p. 413. That passage constructs the single-valued combination; the explicit common-path matrix discussion is on p. 415.

**Witness:** Z90 lines 839–868 concern the Bernoulli combination; Z90 lines 907–919, printed p. 415, introduce the triangular matrix and common integration path.

**Repair:** Cite Z90 §7, p. 415 for this point, preserving p. 413 for (33). Keep O93 §§2.1–2.3 for the based tower and its continuation. With a common path, the test at `b` gives `Li₂′(b)=2 log 2`; changing only the Li₁ branch gives `2 log 2−4πi`, explaining precisely the coherence being cited. This is a locator defect, not a false continuation theorem.

## R05 (P3) — Correct the BorelRegulators consumer attribution

**Location:** `TauCetiRoadmap/PolylogarithmFunctions/README.md:1062`.

**Claim:** The paragraph assigns explicit `D/π` and higher polylogarithmic rows to BorelRegulators as inputs to its construction. The supplied head of that roadmap places those comparisons in Polylogarithms and explicitly excludes them from its proof.

**Witness:** `TauCetiRoadmap/BorelRegulators/README.md:13,847,851` assigns the symbol comparisons and their factorial/Hurewicz and π-power calibration to Polylogarithms §§2.3,3.7–3.8,4.4.

**Repair:** Remove this direct-consumer claim and describe the explicit comparison under Polylogarithms, citing those sections. Do not prescribe a Borel normalization here. This repairs the concrete ownership test: the analytic function and its five-term relation remain supplied here; the arithmetic comparison remains in Polylogarithms; BorelRegulators supplies its independently constructed regulator. This is downstream citation drift, not an upward prerequisite of this roadmap.

## Verified sound

The review covered the entire README (seven layers), all 28 Lean declarations (8 definitions and 20 admitted theorems), all 15 seeded source targets, the defining conventions and Checks, and the supplier and ownership boundaries. No route-specific arithmetic restriction, copied source passage, executable algorithm, sorry'd data, `set_option`, extraneous PR edit or cycle was found. The new analytic family and the field-general sphere cross-ratio extension have a distinct ownership boundary; the generic continuation, covering-space and affine cross-ratio theories are imported.

**Build and gate.** The supplied gate at this exact head passes every check, including the targeted build. The required missing Tau Ceti object files were built with the three explicitly imported modules. A separate `lake env lean` elaboration of `Suggested.lean` succeeded with exactly the 20 expected `sorry` warnings. One scratch file checked `@name` for all 28 declarations: no standing hypothesis was silently dropped. In particular, the continuation predicate includes continuity of the path; the branch theorem supplies the initial germ and endpoint characterization; field universes and the `Field` instance survive in `crossRatioSphere`; positive multiplicities, weight bounds and the two nonzero hypotheses of the affine five-term theorem survive.

All 20 admitted statements were also tried with individual `rfl`, `simp` and `infer_instance` alternatives in a scratch copy. None closed. The pinned object search found no one-library-lemma proof of the retained substantive headlines. R02 is the separate special-value exclusion. No file in the PR worktree was edited. The outside-folder diff is empty.

The dependency command returned:

```text
depcheck: 205 roadmaps, 1478 edges, 0 problem(s)
```

Every `Needs` line was read. There is no UPWARD or CYCLE line, no declared gap, and no dependency on a downstream arithmetic consumer. The order of branch independence, inversion and sphere continuity avoids using sphere continuity to prove itself. The period-lattice and quantitative arguments use earlier principal estimates and monodromy. The positivity route uses compact half-discs, followed by an exhaustion; it does not apply a compact minimum principle directly to the noncompact half-plane.

**Headline inventory.** The README promises: the integer-weight analytic family; coherent tower continuation and polynomial monodromy; distribution, Bernoulli inversion, reflection, Abel and coherent continuation; single-valued branch independence, real analyticity, the all-weight differential, inversion/distribution and sphere continuity; Bloch–Wigner's differential, Laplacian, positivity and affine/projective five-term relations; Rogers reflection and pentagon; and quantitative truncation, circle, sectorial, endpoint and derivative bounds. The Lean file supplies substantive representatives of these groups except the differential/quantitative group identified in R01; its inversion and Abel continuations are explicit representatives of the coherent-continuation group. The source-backed special values remain README Checks. The docstring lists no missing carrier, and native scratch signatures confirm the two omissions used as R01's witnesses.

**Sources.** All six mathematical works were legally readable through the sources service/cache: O93 from Numdam, Z90/Z07/G95 from author copies, and the explicitly cited G00 v1 and GR v5 from arXiv. Numbering below is printed numbering, not PDF page indices. Image checks resolved ambiguous extracted signs and factors. No target is flagged unverified in the README. The following are the 15 seeded checks; “derived” means the cited passage supplies the input, and the README explicitly supplies the additional argument, rather than attributing its whole strengthening to the source.

| Seeded target | Text and locator inspected | Result |
|---|---|---|
| 1.2 radial integrability | O93 lines 78–105, §§1.1–1.3, pp. 50–51 | Recursion and integral inputs agree. Uniform integrability for moving logarithmic singularities is derived here, including the cut. |
| 2.1 tower continuation | O93 lines 114–133, §2.1 p. 52; lines 165–171, (15) p. 54; Z90 lines 907–919 p. 415 | Based coherent tower supported; correct the auxiliary Z90 locator (R04). |
| 3.5 coherent equations | O93 lines 114–151, pp. 52–53, and 260–294, pp. 59–60 | Common-path identities and monodromy support the route. The several-variable identity argument is derived; R04 applies. |
| 4.7 sphere continuity | O93 lines 245–252, (22)–(24) p. 58; Z90 lines 871–894 p. 414 | Values at 0 and infinity are 0; at 1 retain ζ(n) in odd weights. |
| 4.8 trilogarithm | Z90 lines 839–868, (33) p. 413; O93 lines 242–258, pp. 57–58 | Combination and distribution agree. Derivative zero at 1 is derived from the stated uniform differential bound. |
| 5.2 weight two | O93 lines 236–243, (18)–(19) p. 57; Z90 lines 893–894 p. 414; GR lines 102–104 p. 3 | O93 uses iD; Z90 uses real D. README distinguishes them. |
| 5.3 symmetries | O93 lines 280–290, (33) p. 60; Z07 lines 395–408 p. 10 and 431–442 p. 11 | Signs and real-axis vanishing agree; totalized endpoints are separately checked below. |
| 5.5 Laplacian | G00 lines 781–790, Lemma 4.2 (29), p. 18 | The source gives the i-valued one-form. Removing i and differentiating gives the stated real Laplacian; it is not claimed as a numbered source Laplacian theorem. |
| 5.7 five-term | O93 lines 260–283, (32),(34), pp. 59–60; Z07 lines 443–452 p. 11; GR lines 130–134,171–172 p. 4 | Nondegenerate relation supported; extra totalized cases follow by the explicit symmetries, not by silently dropping source exclusions. |
| 5.8 projective forms | O93 lines 284–294, (35)–(38), p. 60; Z07 lines 455–470, (5)–(6), p. 11; GR lines 130–134,171–172 p. 4 | Both cross-ratio conventions checked. General-field algebra is explicitly proved by determinant covariance; complex-valued D is not generalized to other fields. |
| 6.3 Rogers reflection | Z07 lines 1023–1059, Part II §1.A, p. 23 | Exact equality holds on [0,1]; a global modulo-period version is not substituted. |
| 6.5 special values | Z07 lines 1062–1065, p. 24 | Values and complementary golden arguments agree. R02 concerns file placement only. |
| 7.1 truncation | O93 lines 78–86, (1), p. 50 | Source supplies series; geometric-tail inequality is the README's derivation. Negative weights use a different rational tail. |
| 7.3 sectors | O93 lines 138–153, Proposition 1 and Corollaries 1–2, p. 53; lines 98–105 p. 51 | Branch-dependent constants and degree n−1/n agree. README correctly restricts finite limit at 1 to n≥2. |
| 7.4 moduli | Z90 lines 871–886 p. 414; O93 pp. 51,57–58 | Continuity inputs supported; quantitative uniform rates are derived, not quoted as source theorems. |

**Adversarial computations.** Values below use exact algebra, convergent series and differentiated formulas; displayed decimals are numerical diagnostics, not certified error bounds or proofs of universal claims. Inversion was also used to evaluate some off-disc samples, so those particular samples are algebraic consistency tests, not independent numerical proofs of inversion. `G=0.915965594177…` is Catalan's constant, `b=1/2`, `a=2πi`, `z₀=0.3+0.7i`, and `v₀=0.6+0.8i`. Each row identifies the statement, instances, the actual values compared, and the outcome/repair. Negative controls are outside the stated domain. The table includes the sampled targets, every Lean theorem and definition, and the supporting APIs and conventions.

| Statement | Instances | Computed left side / object | Computed right side / control | Result / change |
|---|---|---|---|---|
| Domains Ω,U,Ω₂ | 0,1,−1,2,i | Ω: yes,no,yes,no,yes; U: no,no,yes,yes,yes | Ω₂ excludes ±1,±2, contains 0,i | agrees; no mathematical change |
| Log/cut orientation | Li₁(3), upper value | −log2−πi; −log2+πi | upper−lower=+2πi; CCW monodromy=−2πi | agrees; no mathematical change |
| Real log differential | z=i; v=1,i | d log∣z∣[1]=0; d log∣z∣[i]=1 | Re(1/i)=0; Re(i/i)=1 | agrees; no mathematical change |
| Totalization | Li₀(1),Li₁(1), a/0 | 0,0,0 | no analyticity at 1 follows from these values | agrees; no mathematical change |
| Bernoulli/parity conventions | c₀,c₁,c₂,c₃; π₂(i),π₃(i) | 1,−1,1/3,0; 1,0 | O93 P₂(i)=iG; here L₂(i)=G | agrees; no mathematical change |
| Integer distribution exponent | n=0,m=2,z=1/2 | Li₀(1/4)=1/3 | (Li₀(1/2)+Li₀(−1/2))/2=(1−1/3)/2=1/3 | agrees; no mathematical change |
| Cross-ratio conventions | (∞,0,1,3) | r=3; bracket=−2 | 1−r=−2; reciprocal convention=1/3 | agrees; no mathematical change |
| §1.1 polylog definition | n=−2,−1,0,1,2,3 at b | 6,2,1,0.693147180560,0.582240526465,0.537213193608 | Euler derivatives/radial integral/disc sums give the same values | agrees; no mathematical change |
| §1.1 zero API | z=0, all integer weights | Liₙ(0)=0 | zero numerator or zero logarithm gives 0 | agrees; no mathematical change |
| §1.2 radial integrability | k=0,z=0,1,2 | integrals 0,π²/6,π²/4−πi log2 | finite; z=2 has only an integrable log singularity at t=1/2 | agrees; no mathematical change |
| §1.2 endpoint majorant | k=0,1,2 | ∫₀¹(−log t)^k dt=1,1,2 | k!=1,1,2 | agrees; no mathematical change |
| §1.2 moving-singularity mass | δ=0.001, center s | ∫ from s−δ to s+δ of −log∣t−s∣=0.01581551056 | 2δ(1−logδ)=0.01581551056, independent of s | agrees; no mathematical change |
| §1.2 null changes | change t=1/2 at z=2 to 0 or 10⁶ | same integral π²/4−πi log2 | singleton has measure 0 | agrees; no mathematical change |
| §1.3 disc series | n=0,−1,1,2; z=b | 1,2,log2,0.582240526465 | ∑b^k, ∑kb^k, ∑b^k/k, ∑b^k/k² respectively | agrees; no mathematical change |
| §1.4 rational family | r=0,1,2; z=b | A₀=1,A₁=1,A₂=1+X; Li values 1,2,6 | zAᵣ(z)/(1−z)^(r+1)=1,2,6; Aᵣ(1)=1,1,2 | agrees; no mathematical change |
| §1.4 pole control | Li₀(1−ε), ε→0+ | 1/ε−1→∞ | totalized Li₀(1)=0 is not a continuous extension | agrees; no mathematical change |
| §1.5 analytic family/Euler recursion | n=1,z=b; n=3,z=−1 | Li₁′(b)=2; −Li₃′(−1)=−π²/12 | Li₀(b)/b=2; Li₂(−1)=−π²/12 | agrees; no mathematical change |
| §1.5 derivative at zero | every n; naive quotient | Liₙ′(0)=1 from first coefficient | Liₙ₋₁(0)/0=0; quotient identity excludes 0 | agrees; no mathematical change |
| §1.6 conjugation | z=−1; cut z=3,n=1 | Li₂(−1)=−π²/12; Li₁(3)=−log2−πi | conjugate at −1 same; at 3 =−log2+πi, hence cut excluded | agrees; no mathematical change |
| §1.7 closed-disc/zeta | n=2,3; z=1 | 1.64493406685,1.20205690316 | ζ(2),ζ(3) | agrees; no mathematical change |
| §1.7 expZeta | n=2; circle a=0,1/2,1/4 | π²/6,−π²/12,−π²/48+iG | matching ∑exp(2πiak)/k² | agrees; no mathematical change |
| §1.7 negative control | n=1,z=1−ε | −log ε→∞ | assigned Li₁(1)=0; no closed-disc continuity | agrees; no mathematical change |
| §2.1 polylogTower/truncation | N=0,1,2 at b | (−log2); (−log2,log2); (−log2,log2,0.582240526465) | restriction to first N′+1 coordinates gives tower N′ | agrees; no mathematical change |
| §2.1 coherent ODE | N=2 at b | Li₂′(b)=2log2 | Li₁(b)/b=2log2; independently shifted Li₁ gives 2log2−4πi | agrees; no mathematical change |
| §2.1 exponential relation | principal and T₀ log at b | exp(−log2)=1/2; exp(−log2+2πi)=1/2 | both equal endpoint b | agrees; no mathematical change |
| §2.1 continuation to −1 | upper/lower half-circle | Li₂=−π²/12 both; Log=±πi | exp(±πi)=−1; straight segment hits excluded 0 | agrees; no mathematical change |
| §2.1 principal domain by height | z=3,N=0,1 | log analytic; Li₁ upper−lower=2πi | N=0 tower analytic, N=1 not continuous | agrees; no mathematical change |
| §2.2 branch characterization | constant path | B(base)=(−log2,log2,0.582240526465) | terminal continuation has exactly those values | agrees; no mathematical change |
| §2.2 principal entries | prefix γ₀ to upper path ending −1 | Log=3πi; Li₂=−π²/12 | principal Li₂ unchanged though Log differs by 2πi | agrees; no mathematical change |
| §2.2 section nonexample | global section on U | going once around 0 changes Log by 2πi | single-valued Log would change by 0; contradiction | agrees; no mathematical change |
| §2.3 action direction | periph₁⁻¹ • base | Li₁=log2−2πi; Log=−log2 | prefixes γ₁, not its inverse | agrees; no mathematical change |
| §2.3 generator/inverse | T₁ then inverse, weight 2 | Li₂(b)+2πi log2 then Li₂(b) | subtract/add a Log cancel exactly | agrees; no mathematical change |
| §2.3 nonabelian order | T₁T₀ and T₀T₁, weight 2 | difference −a²=4π²=39.4784176044 | nonzero; replacing free group by abelian action fails | agrees; no mathematical change |
| §2.3 polynomial action | N=2 coordinates L,u₁,u₂ | τ₀=(L+a,u₁,u₂); τ₁=(L,u₁−a,u₂−aL) | inverse maps use −a; degrees ≤1 and compositions polynomial | agrees; no mathematical change |
| §2.3 height-zero boundary | N=0 | τ₀(L)=L+a; τ₁(L)=L | no positive-weight indices exist; log monodromy remains | agrees; no mathematical change |
| §2.3 transported branch | upper lift of −1 then T₁ | −π²/12−2πi·πi=23π²/12 | README second branch value 23π²/12 | agrees; no mathematical change |
| §2.4 jump/lower continuity | x=2,n=1,2,3 | upper−lower: 2πi,2πi log2,πi log²2 | 2πi log^(n−1)(2)/(n−1)! | agrees; no mathematical change |
| §2.4 nonpositive weights | n=0,x=2 | upper=lower=−2 | rational continuity; jump 0 | agrees; no mathematical change |
| §3.1 distribution | m=1 and z=0 | Liₙ(z)=Liₙ(z); Liₙ(0)=0 | factor 1; finite sum of zeros=0 | agrees; no mathematical change |
| §3.1 general distribution | m=2,z=z₀,n=1,2,3 | −.379561084742+.291456794478i; −.393179943739+.349581884371i; −.398024637789+.382618938673i | same three values from 2^(n−1)(Liₙ(z₀)+Liₙ(−z₀)) | agrees; no mathematical change |
| §3.1 domain test | m=2,z=i and z=2 | i²=−1∈Ω; 2²=4∉Ω | ±i∈Ω; rotation +2 excluded | agrees; no mathematical change |
| §3.2 Bernoulli inversion | n=1,2; z=−1 | 0,−π²/6 | −(2πi)^n Bₙ(1/2)/n! gives 0,−π²/6 | agrees; no mathematical change |
| §3.2 lower-cut inversion | n=2,z=2 | Li₂(2)+Li₂(1/2)=π²/3−log²2/2−πi log2 | B₂ evaluated at 1+log2/(2πi) gives same | agrees; no mathematical change |
| §3.2 rational inversion | n=0,−1; z=2 | −2+1=−1; 2−2=0 | weight-zero exceptional constant −1; lower weights 0 | agrees; no mathematical change |
| §3.3 reflection | z=0,1,1/2 | π²/6,π²/6,2Li₂(1/2) | π²/6,π²/6,π²/6−log²2 | agrees; no mathematical change |
| §3.3 reflection on cut | z=−1 or 2 | Li₂(−1)+Li₂(2)=1.64493406685−2.17758609030i | π²/6−Log z Log(1−z) same | agrees; no mathematical change |
| §3.4 Abel | x=y=1/4 | Li₂(1/9)=0.114360206979 | 2Li₂(1/3)−2Li₂(1/4)−log²(3/4)=0.114360206979 | agrees; no mathematical change |
| §3.4 Abel missing correction | x=y=1/4 | uncorrected RHS exceeds LHS by 0.0827609748 | log²(3/4)=0.0827609748 | agrees; no mathematical change |
| §3.4 Abel zero | x=0,y=1/4 | Li₂(0)=0 | Li₂(0)+Li₂(y)−Li₂(0)−Li₂(y)−0=0 | agrees; no mathematical change |
| §3.5 inversion continuation | constant c=−1,n=2 | −π²/6 | log(−c)=0 in independently initialized germ; Bernoulli side −π²/6 | agrees; no mathematical change |
| §3.5 reflection/distribution continuation | constant paths z=1/2; m=2,z=1/2 | reflection 1.16448105293; distribution Li₂(1/4)=0.267652639083 | π²/6−log²2=1.16448105293; 2(Li₂(1/2)+Li₂(−1/2))=0.267652639083 | agrees; no mathematical change |
| §3.5 Abel continuation | constant c=(1/4,1/4) | initial and final defect 0 | seven coherently initialized germs give same 0 | agrees; no mathematical change |
| §3.5 independent branch defect | shift only Li₂(b) by T₁ | extra 2πi log2 ≠0 | Φ substitution predicts exactly 2πi log2 | agrees; no mathematical change |
| §3.6 exact Li₂ values | 1,−1,1/2 | 1.64493406685,−0.822467033424,0.582240526465 | π²/6,−π²/12,π²/12−log²2/2 | agrees; no mathematical change |
| §4.1 coefficient even transform | k=1,3 | 1−1=0; 1/6−1/2+1/3=0 | odd coefficients of s/sinh s are 0; wrong B₁ gives 2 at k=1 | agrees; no mathematical change |
| §4.1 generating series | through s³ | C(s)=1−s+s²/3+0s³+… | C(s)(exp(2s)−1)=2s+0s²+0s³+… | agrees; no mathematical change |
| §4.2 singleValued definition | n=2,3; z=0,1,−1 | L₂:0,0,0; L₃:0,ζ(3),−3ζ(3)/4 | projected finite sums/endpoints same; odd weight not identically zero on reals | agrees; no mathematical change |
| §4.2 sphere extension | ∞ and finite i | Lₙ(∞)=0; L₂(i)=G | OnePoint.elim gives 0 and G | agrees; no mathematical change |
| §4.2 unit circle/weight-one distinction | n=2,3,z=i; n=1,z=b | L₂(i)=G; L₃(i)=−3ζ(3)/32; L₁(b)=log2 | Im Li₂(i),Re Li₃(i); log∣b∣=−log2 is a different function | agrees; no mathematical change |
| §4.3 all-branch independence | n=2,Log=ℓ+iθ,T₁ | unprojected change 2πθ | imaginary projection 0; wrong c₁ gives imaginary change −4πℓ | agrees; no mathematical change |
| §4.3 cut cancellation | n=2,x=2 | Li₂ imaginary jump +2πlog2 | correction jump −2πlog2; sum 0 | agrees; no mathematical change |
| §4.3 odd-weight cancellation | n=3,T₁,ℓ=0,θ=π | change −2πi(iπ)²/2=π³i | real projection 0; unprojected change nonzero | agrees; no mathematical change |
| §4.4 real analyticity | n=2,z=2; v=i | dD(2)[i]=log2=0.693147180560 | upper/lower local germ gives same derivative | agrees; no mathematical change |
| §4.5 differential, n=2 | z₀,v₀ | central difference 0.269228684890 | formula 0.269228684861 | agrees numerically; add headline (R01) |
| §4.5 differential, n=3 | z₀,v₀ | central difference 0.302337427968 | formula 0.302337427923 | agrees numerically; add headline (R01) |
| §4.5 differential, n=4 | z₀,v₀ | central difference 0.026380065421 | formula 0.0263800653954 | agrees numerically; add headline (R01) |
| §4.5 differential, n=5 | z₀,v₀ | central difference 0.325566039397 | formula 0.325566039347 | agrees numerically; add headline (R01) |
| §4.6 inversion | z₀,n=2,3,4,5 | Lₙ(z₀)=.981810571427,.281447553680,.943961280142,.365325213460 | (−1)^(n−1)Lₙ(1/z₀) gives same four values | agrees; no mathematical change |
| §4.6 conjugation | n=2,3; z=i | L₂(−i)=−G; L₃(−i)=−3ζ(3)/32 | −L₂(i),+L₃(i) | agrees; no mathematical change |
| §4.6 distribution | m=2,z₀,n=2,3,4,5 | Lₙ(z₀²)=.508346320791,−.649742533329,.643558118710,−.656288429364 | 2^(n−1)∑Lₙ(±z₀) gives same four values | agrees; no mathematical change |
| §4.6 endpoint distribution | m=2,n=3,z=1 | ζ(3) | 4(ζ(3)−3ζ(3)/4)=ζ(3) | agrees; no mathematical change |
| §4.7 sphere continuity | n=2; z=.001i,1000i,1+.001i | values .0079077528653,−.0079077528653,.0079077528653 | limits 0 at 0,∞,1 respectively | agrees; no mathematical change |
| §4.7 odd endpoint | n=3; z=1+.001i | 1.20205269928 | limit ζ(3)=1.20205690316, not 0 | agrees; no mathematical change |
| §4.8 trilogarithm differential | z₀,v₀ | 0.302337427968 difference quotient | 0.302337427923 expanded weight-three formula | agrees; no mathematical change |
| §4.8 derivative at 1 | z=1+ti,t=.001,.0001 | (L₃(z)−ζ(3))/t=−.00420387544,−.000535509068 | tends to derivative value 0 | agrees; no mathematical change |
| §4.8 odd values | z=1,−1 | 1.20205690316,−.901542677370 | ζ(3),−3ζ(3)/4 | agrees; no mathematical change |
| §5.1 blochWigner definition | z=0,1,2,i | 0,0,0,G | at 2: Im Li₂=−πlog2 plus Arg(−1)log2=+πlog2 | agrees; no mathematical change |
| §5.2 L₂=D | z=z₀,i,2 | L₂=.981810571427,G,0 | D=.981810571427,G,0 | agrees; no mathematical change |
| §5.3 sixfold symmetry | z=i | D(i)=G; D(1−i)=−G; D(1/i)=−G; D(1/(1−i))=G | signs +,−,−,+ | agrees; no mathematical change |
| §5.3 conjugation/reals/totalization | z=i,2,0,1 | D(−i)=−G; D(2)=0; D(1/0)=0; D(1−1)=0 | −D(i),0,−D(0),−D(1) | agrees; no mathematical change |
| §5.4 one-form | z=i; v=1,i | dD[1]=log2/2; dD[i]=0 | −log∣1−i∣ Im(1/i)=log2/2; radial term 0 | agrees; no mathematical change |
| §5.5 Laplacian | z=i,2,z₀ | ΔD(i)=−1; ΔD(2)=0; numerical ΔD(z₀)=−2.463054116 | −2y/(∣z∣²∣1−z∣²)=−1,0,−2.463054187 | agrees; no mathematical change |
| §5.6 positivity | z=i,−i,2 | G>0; −G<0; 0 | upper/lower/real cases; weak ≥0 alone would not exclude zero | agrees; no mathematical change |
| §5.7 affine five-term | x=i,y=−1 | D arguments: G,0,G,G,−G | signed sum G−0+G−G−G=0 | agrees; no mathematical change |
| §5.7 generic affine five-term | x=i/2,y=(1+i)/2 | D arguments .808598391247,.915965594177,−.915965594177,−.511666398554,.511666398554 | signed sum 0 to displayed numerical precision | agrees; no mathematical change |
| §5.7 diagonal and ones | (x,y)=(i,i),(1,i),(i,1) | signed sums 0,0,0 | G−G+0−0+0; 0−G+G; G+(-G) | agrees; no mathematical change |
| §5.7 zero negative controls | (0,.3+.8i),(i,0) | signed sums .995026887744,−G | target 0 fails; retain both x≠0,y≠0 | agrees; no mathematical change |
| §5.7 Abel form | x=1,y=i | D(xy/((1−x)(1−y)))=D(0)=0 | D(y/(1−x))+D(x/(1−y))−D(x)−D(y)=0+G−0−G=0 | agrees; no mathematical change |
| §5.7 cyclic differential cancellation | x=y=1/2 | arguments 1/2,2/3,2/3,1/2,3/4; D values all 0 | sum 0; 1−1/2=(2/3)(3/4) pins cyclic relation | agrees; no mathematical change |
| §5.8 finite crossRatio | (0,0,1,2),(0,0,0,2) | 1,0 | nonzero denominator gives 1; zero denominator totalizes to 0 | agrees; no mathematical change |
| §5.8 cancellation extension | (∞,0,1,3),(0,∞,1,3) | 3,1/3 | (0−3)/(0−1)=3; (0−1)/(0−3)=1/3 | agrees; no mathematical change |
| §5.8 other infinity positions | (0,1,∞,3),(0,1,2,∞) | 2/3,2 | (1−3)/(0−3)=2/3; (0−2)/(1−2)=2 | agrees; no mathematical change |
| §5.8 multiple infinities | (∞,∞,1,3) | 0 by definition | outside injective locus; no invariance theorem imposed | agrees; no mathematical change |
| §5.8 double transposition | (a,b,c,d)=(0,1,2,3) | r=4/3 | r(1,0,3,2)=4/3 | agrees; no mathematical change |
| §5.8 homogeneous rescaling | (2,0),(0,3),(5,5),(21,7) | 10·(−63)/(14·(−15))=3 | r(∞,0,1,3)=3 | agrees; no mathematical change |
| §5.8 general-field Möbius invariance | K=F₃, coordinate swap | r(∞,0,1,2)=2 | r(0,∞,1,2)=1/2=2 in F₃ | agrees; no mathematical change |
| §5.8 normalize_five | K=Q, tuple (∞,0,1,2,3) | identity g; x=2,y=3 | normalized tuple unchanged; coincident first pair cannot map to ∞,0 | agrees; no mathematical change |
| §5.8 small fields | K=F₂,F₃ | projective lines have 3,4 points | no injective Fin 5; conditional normalization makes no false existence assertion | agrees; no mathematical change |
| §5.8 projective five-term | (∞,0,1,z₀,−1+.2i) | D face values −.948037100886,.714284985152,.817005378209,.136493863598,.981810571427 | alternating sum 0 | agrees; no mathematical change |
| §5.8 finite five-term/sign | (0,1,2,i,1+i) | D face values .808598391247,.511666398554,0,.915965594177,.619033601484 | alternating sum 0; unsigned sum 2.85526398546≠0 | agrees; no mathematical change |
| §5.8 bracket conversion | tuple (∞,0,1,3) | bracket=−2 | 1−r=−2; D(1−z)=−D(z) accounts for sign | agrees; no mathematical change |
| §5.8 cyclic bracket algebra | tuple 0,1,2,3,4 | b=(-1/3,−1/3,−2,−1/8,−2); 1−b=(4/3,4/3,3,9/8,3) | −bᵢ/(bᵢ₊₂bᵢ₊₃)=(4/3,4/3,3,9/8,3); all D=0 | agrees; no mathematical change |
| §6.1 rogers definition/API | x=0,1,1/2 | 0,1.64493406685,.822467033424 | 0,π²/6,π²/12; logarithmic product cancels log²2/2 at midpoint | agrees; no mathematical change |
| §6.2 derivative/monotonicity | x=1/2 | R′=1.38629436112>0 | −(log(1/2)/(1/2)+log(1/2)/(1/2))/2=2log2 | agrees; no mathematical change |
| §6.2 endpoint continuity | x→0+,1− | x log x→0; R limits 0,π²/6 | assigned endpoints 0,π²/6 | agrees; no mathematical change |
| §6.3 reflection | x=0,1/2,ρ | 0+π²/6; 2·π²/12; π²/10+π²/15 | π²/6 in all three cases | agrees; no mathematical change |
| §6.4 pentagon | x=y=1/2; x=.2,y=.7 | LHS 1.64493406685; 1.49466271167 | RHS 1.64493406685; 1.49466271167 | agrees; no mathematical change |
| §6.4 wrong uncorrected function | x=y=1/2 | raw Li₂ LHS−RHS=log²(3/2)=.164401953893 | Rogers correction removes defect exactly | agrees; no mathematical change |
| §6.5 golden values | x=y=ρ | 2R(ρ)=1.97392088022; 3R(ρ²)=1.97392088022 | R(ρ)=π²/10,R(ρ²)=π²/15 | correct values; delete Lean Check (R02) |
| §7.1 positive truncation | n=2,z=r=1/2,N=1 | error .082240526465 | upper bound 1/8=.125 | holds; include quantitative headline (R01) |
| §7.1 empty sum and zero radius | N=0,r=1/2; r=0 | Li₂(1/2)=.582240526465; error 0 | bounds 1 and 0 | agrees; no mathematical change |
| §7.1 negative-weight tail | n=−1,r=1/2,N=1 | ∑ from k=2 of k/2^k=1.5 | correct rational tail 1.5; naive positive-weight formula 1 fails | agrees; no mathematical change |
| §7.2 closed-disc tail | n=2,z=1,N=1 | π²/6−1=.644934066848 | bound 1 | agrees; no mathematical change |
| §7.2 Fourier tail | t=1,N=20 | actual error .0000198582614197 | bound 1/20=.05 | holds; include quantitative headline (R01) |
| §7.3 growth at zero | n=2,T₁ branch,z=ε>0 | imaginary part −2π log ε | order ∣log ε∣; principal Li₂(ε)~ε | agrees; no mathematical change |
| §7.3 growth at infinity | n=1,z=R>1 | Li₁(R)=−log(R−1)−πi | magnitude asymptotic log R; degree n=1 | agrees; no mathematical change |
| §7.3 period limit at 1 | n=2,Log→2πi,T₁ | change −2πi·2πi=4π² | ζ(2)+m(2πi)² with m=−1 | agrees; no mathematical change |
| §7.3 excluded weight one | z=1−ε | Li₁=−log ε→∞ | no finite ζ(1) limit; restriction n≥2 essential | agrees; no mathematical change |
| §7.4 small/large modulus | n=2,z=.001i,1000i | absolute values .0079077528653 both | base rate .001(1+∣log .001∣)=.007907755279 | agrees; no mathematical change |
| §7.4 modulus at 1 | n=2,3,4,z=1+.001i | absolute differences .0079077528653,.00000420387544,.00120205504563 | base rate .007907755279 for each; one fixed constant per weight suffices for these samples | agrees; add uniform theorem (R01) |
| §7.5 compact derivative bound | K={i},n=2,r=1 | operator norm log2/2=.34657359028 | finite supremum .34657359028; singleton Lipschitz distances both 0 | agrees; no mathematical change |
| §7.5 puncture negative control | D(it)/t, t=.001,.0001 | 7.9077528653,10.2103403402 | unbounded as t→0; no uniform Lipschitz constant at 0 | agrees; no mathematical change |
| §7.6 two-sided expansion | t=±.001 | D(it)=±.00790775286529 | t(1−log∣t∣)=±.00790775527898; ratio .999999694769 | agrees; no mathematical change |
| §7.6 nondifferentiability at 1/∞ | reflection and inversion of it | D(1+it)=D(it); D(1/(it))=−D(it) | quotients inherit ±(1−log∣t∣), unbounded | agrees; no mathematical change |
| §7.7 global range | D(i),D(2); R(0),R(1) | G,0; 0,π²/6 | ∣D∣≤1.01494…; R in [0,π²/6] | agrees; no mathematical change |
| §7.7 weighted finite sum | one error ε, coefficient −3; empty family | absolute error 3∣ε∣; 0 | bound ∣−3∣∣ε∣=3∣ε∣; empty bound 0 | agrees; no mathematical change |

The table contains **126 rows**. It is a record of tests and proof-route checks, not a claim that finite samples establish every universal statement. No tested instance refuted a stated mathematical identity.

**Pinned declarations opened.** The following 27 representative declarations were read with their hypotheses, in addition to the native definitions and the expanded signatures. Paths are relative to the corresponding pinned library root. Their presence is not inferred from a newer online version.

| Pin | Declaration | File and line | Scope checked |
|---|---|---|---|
| Mathlib | `Complex.log` | `Mathlib/Analysis/SpecialFunctions/Complex/Log.lean:29` | `Real.log ‖x‖ + arg x * I`; total definition, no continuity claim on the cut. |
| Mathlib | `Complex.arg_neg_one` | `Mathlib/Analysis/SpecialFunctions/Complex/Arg.lean:207` | Argument of −1 is +π. |
| Mathlib | `Complex.hasDerivAt_log` | `Mathlib/Analysis/SpecialFunctions/Complex/LogDeriv.lean:37` | Requires membership in slit plane. |
| Mathlib | `Complex.hasSum_taylorSeries_neg_log'` | `Mathlib/Analysis/SpecialFunctions/Complex/LogBounds.lean:289` | Norm <1; positive indexing. |
| Mathlib | `intervalIntegral.integral_eq_sub_of_hasDerivAt_of_le` | `Mathlib/MeasureTheory/Integral/IntervalIntegral/FundThmCalculus.lean:1140` | Continuity, interior derivative and interval integrability are separate assumptions. |
| Mathlib | `MeromorphicOn.intervalIntegrable_log_norm` | `Mathlib/Analysis/SpecialFunctions/Integrability/Log.lean:48` | Compact interval meromorphic input; handles logarithmic singularities. |
| Mathlib | `AnalyticOnNhd.eqOn_of_preconnected_of_eventuallyEq` | `Mathlib/Analysis/Analytic/Uniqueness.lean:223` | Both analytic, preconnected set, point in set and equality of germs. |
| Mathlib | `IsOpen.exists_is_const_of_fderiv_eq_zero` | `Mathlib/Analysis/Calculus/MeanValue.lean:602` | Open preconnected set and differentiability. |
| Mathlib | `Set.Countable.isPathConnected_compl_of_one_lt_rank` | `Mathlib/Analysis/Normed/Module/Connected.lean:44` | Real rank >1, satisfied by ℂ. |
| Mathlib | `riemannZeta_two` | `Mathlib/NumberTheory/LSeries/HurwitzZetaValues.lean:226` | Complex zeta value π²/6. |
| Mathlib | `zeta_nat_eq_tsum_of_gt_one` | `Mathlib/NumberTheory/LSeries/RiemannZeta.lean:222` | Natural k>1; zero-index term totalizes to 0. |
| Mathlib | `hasSum_one_div_nat_pow_mul_fourier` | `Mathlib/NumberTheory/ZetaValues.lean:339` | k≥2 and x∈[0,1]; paired Fourier signs checked. |
| Mathlib | `Polynomial.derivative_bernoulli` | `Mathlib/NumberTheory/BernoulliPolynomials.lean:117` | k Bₖ₋₁; k=0 handled. |
| Mathlib | `Polynomial.bernoulli_eval_one_sub` | `Mathlib/NumberTheory/BernoulliPolynomials.lean:245` | Evaluation statement is over ℚ; x=1/2 used for even transform is legal. Complex transfer uses the polynomial identity. |
| Mathlib | `bernoulliPowerSeries_mul_exp_sub_one` | `Mathlib/NumberTheory/Bernoulli.lean:268` | Product equals X; does not invert X as a power-series unit. |
| Mathlib | `InnerProductSpace.instLaplacian` | `Mathlib/Analysis/InnerProductSpace/Laplacian.lean:138` | Positive Euclidean trace of second derivative, not its negative. |
| Tau Ceti | `IsAnalyticContinuationAlong` | `TauCeti/Analysis/Complex/Conformal/Continuation/Basic.lean:190` | Continuous path, analytic germs, local germ agreement; no arbitrary family with only endpoint values. |
| Tau Ceti | `ContinuesAlong` | `TauCeti/Analysis/Complex/Conformal/Continuation/Basic.lean:408` | Existence of continuation plus initial germ. |
| Tau Ceti | `monodromy_theorem` | `TauCeti/Analysis/Complex/Conformal/Monodromy.lean:386` | Continuations along a homotopy and common starting germs. |
| Tau Ceti | `ContinuesInside.exists_analyticOnNhd` | `TauCeti/Analysis/Complex/Conformal/GlobalBranch.lean:214` | Open simply connected domain and a basepoint in it. |
| Tau Ceti | `UniversalCover` | `TauCeti/AlgebraicTopology/UniversalCover/Basic.lean:67` | Endpoint and path class; covering properties require further hypotheses. |
| Tau Ceti | `UniversalCover.isCoveringMap` | `TauCeti/AlgebraicTopology/UniversalCover/Covering.lean:58` | Local path connectivity and semilocal simple connectivity. |
| Tau Ceti | `UniversalCover.smul_mk` | `TauCeti/AlgebraicTopology/UniversalCover/Action.lean:63` | Prepends inverse loop; matches the README's Tⱼ convention. |
| Tau Ceti | `exists_differentiableOn_eqOn_exp_comp` | `TauCeti/Analysis/Complex/BranchLogRoot.lean:155` | Open simply connected domain, holomorphic nonvanishing map. |
| Tau Ceti | `crossRatio_comp_eq_of_sub_eq_div` | `TauCeti/Algebra/Field/LinearFractional.lean:51` | Any field, κ≠0, nonvanishing denominators on S; coincidences allowed in totalized affine formula. |
| Tau Ceti | `ge_of_laplacian_nonpos_ge_frontier` | `TauCeti/Analysis/InnerProductSpace/Laplacian/WeakMaximumPrinciple.lean:148` | Compact K, continuity, interior C² and frontier bound. |
| Tau Ceti | `eqOn_const_of_laplacian_nonpos_of_isMinOn` | `TauCeti/Analysis/InnerProductSpace/Laplacian/StrongMaximumPrinciple.lean:356` | Open preconnected domain and attained interior minimum. |

The native `AnalyticOnNhd` definition is pointwise analyticity at each point of the set (`Mathlib/Analysis/Analytic/Basic.lean:119`); it does not make a set open. The README supplies openness where its proof routes need it. `OnePoint` is used as the native sphere carrier, and the general-field projective adapter was checked against `OnePoint.equivProjectivization_smul` in `Mathlib/Topology/Compactification/OnePoint/ProjectiveLine.lean:128`. The logarithm integrability theorem alone does not give uniform integrability; §1.2 includes the additional moving-singularity argument.

**Ownership and citation resolution.** Object searches were made with the required roadmap grep/show tools, in the pinned libraries, on main, in board packages and in the supplied sibling heads. The own-namespace search found no second `TauCetiRoadmap.PolylogarithmFunctions` declaration. The pin search found no classical polylogarithm/Bloch–Wigner construction to defer to; logarithmic series, zeta, Bernoulli, general continuation and affine cross-ratio results already present are explicitly deferred. The proposed Mathlib complex-order API is not treated as a pinned theorem or as a reason to wait for Mathlib.

| Resolved roadmap contract | Location examined | Ownership/convention result |
|---|---|---|
| BelyiMaps §§5.1,5.2,5.6 on main | `TauCetiRoadmap/BelyiMaps/README.md:1625–1742,1874–1890` | U, b, both counterclockwise loops and free fundamental group supplied. |
| ConformalMapping L4 on main | `Completed/ConformalMapping/README.md:127–132` | General continuation and monodromy supplied, not replanned here. |
| UniversalCovers on main | `Completed/UniversalCovers/README.md`, universal-cover/action development | Native endpoint/path-class model agrees with the pinned files above. |
| Polylogarithms, supplied head | `TauCetiRoadmap/Polylogarithms/README.md:11,65–99,1542` | Imports this analytic family and all-weight differential; owns symbol/regulator comparisons. |
| K3BlochGroups, supplied head | `TauCetiRoadmap/K3BlochGroups/README.md:15–19,129–134,573` | Algebraic configurations and quotients stay there; projective adapter supplied here. Reciprocal convention distinguished. |
| HabiroNahmSeries, supplied head | `TauCetiRoadmap/HabiroNahmSeries/README.md:80–88` | Interval R and complementary π²/6−R distinguished; arithmetic torsion stays downstream. |
| HabiroNumberFields, supplied head | `TauCetiRoadmap/HabiroNumberFields/README.md:98–100,343` | Classical complex identity consumed; cyclic quantum/Landen comparison remains its own target. |
| PeriodsAndSpecialValues, supplied head | `TauCetiRoadmap/PeriodsAndSpecialValues/README.md:226–228` | Classical analytic realization consumed, no competing classical definition found. |
| BorelRegulators, supplied head | `TauCetiRoadmap/BorelRegulators/README.md:13,847,851` | Direct polylogarithmic input attribution is stale (R05). |

The affine invariant already in Tau Ceti is not being redeveloped: the new object is its `OnePoint K` extension with determinant and normalization adapters. The general-field scope includes positive characteristic; the F₃ test crosses a Möbius pole. There is no separate generic covering-space or analytic-continuation carrier hidden in `Suggested.lean`. The existence formulation of the branch uses native carriers and fixes the object by its terminal continuation, rather than postulating sorry'd data.

## Not verifiable

- No mathematical source in the seeded sample remained unreadable. The quantitative strengthenings marked “derived here” were checked as arguments, not certified as quotations of source theorems.
- Detailed ownership at the open heads of EllipticRegulators, ArithmeticQuantumTopology, AnalyticNumberTheoryPartII and ColemanIntegration was not checked: the brief supplies no sibling files for those heads. Index/search mentions do not establish their current section-level contracts. These are downstream mentions, not premises of this roadmap; they were not silently promoted to verified suppliers.
- The finite numerical tests do not certify the eventual Lean proofs, optimal constants, or the whole open Mathlib proposal. The accepted gate establishes elaboration and policy scan results, not truth. No external formalization was assumed to prove a target merely because it contains related integral identities.

## Source issues

- **Error** in O93 at §2.2, Corollary 2, printed p. 53: the source says every weight has a finite sectorial limit at 1 differing from ζ(k) by a period; it should be restricted to k≥2, since Li₁(1−ε)=−log ε diverges; affects a stated result.
- **Misprint** in G00 at Lemma 4.2, (31) and its following calculation, printed p. 18: the source says the numerator is 2∣log z∣t, then 2 log(z)t; it should be 2 log∣z∣t in both places, matching the denominator and Bernoulli series; affects the proof.
- **Misprint** in G00 at the proof of Lemma 4.2 after (31), printed p. 18: the source says coefficients of (31) in degrees zero and one give (29); it should be coefficients of the complete expression (30)–(31), since the corrected (31) starts in degree two; affects the proof.
- **Misprint** in GR at §1.1, (1), printed p. 3: the source says the ordinary real/imaginary-part outputs lie in (2πi)^(n−1)ℝ; it should specify the real scalar coordinate or the identification with that Tate line; affects a stated result.

The roadmap already avoids the O93 weight-one overclaim and explicitly separates the real scalar and imaginary-valued conventions. The G00 numerator defect is visible at z=e^(−1): the printed expression has a nonzero constant correction, whereas the intended Bernoulli correction starts in degree two. For GR, n=2 and z=i yield the scalar 1, which is not an element of the displayed imaginary line without an identification. These are source issues, not additional findings against the roadmap.
