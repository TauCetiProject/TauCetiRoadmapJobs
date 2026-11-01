# Review of RelativeFarguesFontaine (pull request #1209 at 95b4855)

**Verdict:** needs changes

## R01 (P2) — Distinguish p-Frobenius from coefficient Frobenius

**Location:** `TauCetiRoadmap/RelativeFarguesFontaine/README.md:33`, `:825`, `:1000`: “The properly discontinuous `φ^d` action scales the exponent by `q=p^d`”.

**Claim:** The standing φ is q-Frobenius, whereas §1.12 uses the scaling formula for the d-th iterate of p-Frobenius. The iterate in §1.5 also lacks a positive-exponent hypothesis. These conventions affect the quotient and the claimed fixed ring, not just notation.

**Witness:** Take p=2, E unramified quadratic, q=4 and d=2. Standing φ² multiplies radius 1 by 16, whereas §1.12 says 4. KL I Proposition 5.4.6 uses p-Frobenius (kl-i line 5001).

**Repair:** Name the p-typical operator φ_p separately, and state the KL formula for φ_p^d with d≥1. For the standing all-E operator φ_E, use scaling q^d and quotient R_{>0}/(q^d)^ℤ; explain the identification φ_E=φ_p^f in the unramified comparison. Carry d≥1 into the invariant-ring statement of §1.5. Add the quadratic example: φ_p² sends 1 to 4, while φ_E² sends 1 to 16. Also add the excluded d=0 case: the action is the identity, every stabilizer is ℤ, and the exponent quotient is R_{>0}, not a compact circle. In §1.5, at d=0 the right side is all W(F)[1/p], but the left is the Robba ring. For a perfect valued field F with |ϖ|=p⁻¹, the Witt element Σ pⁿ[ϖ^(−n²)] belongs to the former and fails every positive-radius growth condition, since its nth norm term is p^(rn²−n). With d≥1, coefficient fixed points have norm 0 or 1, removing this counterexample. The explicit positivity already present in §5.2 should be retained.

## R02 (P2) — Normalize the shtuka comparison at the correct boundary point

**Location:** `TauCetiRoadmap/RelativeFarguesFontaine/README.md:137`, `:2442`: “Use its crystalline-point localization”.

**Claim:** The README defines the crystalline end at line 47 by [ϖ]=0, p≠0. That point is outside Y_[0,∞), the domain of the shtukas in §6.14a. It cannot supply their stated localization or normalization. The cited theorem localizes at the other end.

**Witness:** sw line 4078 defines the integral Robba ring at x_{C♭}; lines 4136–4137 and 4155–4161 normalize there. Its residue is C♭ and uniformizer p. The crystalline end has p invertible and [ϖ]=0.

**Repair:** Throughout this contract and §6.14a, specify localization at x_{C♭}, the characteristic-p endpoint p=0, [ϖ]≠0. Use AInfCohomology §AI.2.3's boundary-neighbourhood and integral-Robba contracts, and remove §5.3's crystalline-boundary dependency from this comparison unless a separate use is stated. At x_{C♭}, the unit shtuka localizes to the integral Robba ring and completes to W(C♭); its normalized map is the identity. At x_L, the unit shtuka on Y_[0,∞) has no stalk at all. Multiplication by a nonidentity unit remains excluded by the corrected identity normalization. The forward orbit and leg at φ⁻¹(x_C) are otherwise the source's conventions.

## R03 (P2) — Import the existing one-leg reconstruction

**Location:** `TauCetiRoadmap/RelativeFarguesFontaine/README.md:2470`: “This proves the construction and recovery of SW Proposition 12.4.6”.

**Claim:** §6.15(b) plans a second construction of the geometric one-leg shtuka from (T,Ξ), although its earlier supplier already owns this construction, including recovery of the specified lattice. The relative all-E modification comparison in §6.15(a) is a distinct target and can stay.

**Witness:** `TauCetiRoadmap/AInfCohomology/README.md:1826`, §AI.2.3, `BKF.reconstruct`, owns the reconstruction; line 1837 explicitly inserts Ξ at x_C and its Frobenius translates using SW 12.4.6. Line 1835 requires equality with the given lattice.

**Repair:** Consume that construction, its morphism/tensor comparisons and specified-lattice recovery by name. Retain here its compatibility with the relative curve modification and the quadruple retaining T; remove the independent construction/recovery proof route and the suggestion that this roadmap supplies the BKF reconstruction foundation. On T=ℤ_p and Ξ=ξB_dR⁺, both routes insert exactly ξB_dR⁺ at x_C and its translates, and the curve comparison gives O(−1). For (0,0), both give the zero shtuka. These computations distinguish the retained curve comparison from a second owner of the identical shtuka. AInfCohomology is earlier in the supplied order, so importing it introduces no upward edge.

## R04 (P3) — Refresh the VectorBundlesAndIsocrystals locators

**Location:** `TauCetiRoadmap/RelativeFarguesFontaine/README.md:129`: “VectorBundlesAndIsocrystals VB3, `divisor-section-comparison`”; also the VB−1/VB1–VB4 references throughout the contracts and Needs lines.

**Claim:** These are former labels, not sections/target identifiers in the supplier at its supplied open head. The mathematical objects are still there, so this is locator drift rather than an unowned-prerequisite finding.

**Witness:** `TauCetiRoadmap/VectorBundlesAndIsocrystals/README.md:88` starts Layer 0; line 797 has “GAGA for the relative schematic curve”; line 1839 has “Integral Frobenius and local-system comparison”. There are no VB−1/VB1–VB4 headings.

**Repair:** Cite the present titled targets and layers: Layer 0 for coefficients, annuli, divisors, completions, twists and graded charts; Layer 2 for bundles/cohomology; Layer 3 for relative GAGA/ampleness; Layer 5 for Lubin–Tate and divisor/section comparison; Layer 6 for integral Frobenius and group torsors. Resolve every old target slug, rather than applying a blind numeric substitution: classification now has its own Layer 4. Preserve the supplier's coefficient/base hypotheses. On the repeated divisor (D,D), both the present divisor target and the intended citation give length 2 and an orbit sheaf with no permutation automorphisms. The locator repair does not change that assertion or its ownership.

### Reconciliation of the previous review

This is a full review of the replacement head, not an incremental approval. No repair-report passage marking a finding “not actionable in this package” was supplied in the review materials.

| Previous finding | Present passage and verification | Disposition |
|---|---|---|
| R01, omitted algebraic gluing headlines | `Suggested.lean:164` now states `exactSquare_finiteProjective`; lines 178, 194, 211 add étale and morphism descent, and lines 295–354 cover arbitrary glueing data, recovery, flat exactness and Hom descent. The docstring explicitly includes “effectivity, recovery and morphism descent for glueable modules”. The ℤ₂/2 and zero pieces now recover ℤ/2. | Repaired. |
| R02, duplicate universal ghost polynomials | `README.md:19`: the supplier “owns the universal ramified ghost polynomials”; §0.1 retains “only the finite-sum evaluation needed for Dwork”. Both evaluations give 1,5,21 on (1,2,3) at π=q=2. | Repaired mathematically; supplier labels need R04. |
| R03, duplicate perfect-system effectivity | `README.md:125`: “Sections 1.E.0 ... and 1.E.1 ... supply effectivity”; §3.8 transports it to divisor sheaves. The free rank-two tower gives B² and endomorphism limit M₂(B). | Repaired. |
| R04, 117 forbidden HTML anchors | The worker gate now has `residue=0`; the old HTML anchors are absent and target links use Markdown headings. | Repaired. |
| R05, missing API names and supplied-only numbered stubs | The old §§0.3–0.10 are gone. `README.md:1971` names the actual `PatchingData.compareLeft`/`compareRight`; Lean has the Layer 0 and Layer 6 section comments. | Repaired. |
| R06, wrong divisor-supplier layer | `README.md:1447` now says “VB3, `divisor-section-comparison`” and retains the algebraically closed residue-base qualification. That fixed the old head's VB2 error, but the supplier has since changed its labels. | Partly repaired; R04 gives the present locators. |

## Verified sound

The review read the complete README and all 25 Lean declarations. There are four findings: three P2 blockers and one P3 locator finding. The adversarial tables have 102 rows: one for each of the 88 numbered targets and one for each of the 14 Lean theorems. They contain concrete boundary, coefficient, sign, torsion and descent calculations; passing instances are not proofs of the general geometric statements.

The supplied gate at 95b4855 passes, with every counter zero, including `residue`, `readme-ids-missing`, `outside-folder`, `stray-files`, `depcheck` and `build`. The independently run dependency check returned:

```text
depcheck: 205 roadmaps, 1457 edges, 0 problem(s)
```

The worker's complete gate output was:

```text
gate RelativeFarguesFontaine: set_option=0 blob=0 latex=0 tex=0 prnum=0 sorry-data=0 sorry-examples=0 residue=0 private-paths=0 imports=0 mathlib-subimports=0 no-import-mathlib=0 lean-lines=0 forbidden=0 dropped=0 readme-ids-missing=0 empty-sections=0 round-labels=0 long-fences=0 layer-ids=0 target-ids=0 depcheck=0 metadata=0 stray-files=0 dirty=0 outside-folder=0 source-material=0 build=0 OK
```

There was no UPWARD, CYCLE or moved line. The diff outside this roadmap folder was empty. No declared supplier gaps were present. No route-specific prime restriction, computational algorithm, copied source passage, sorry'd data or `set_option` was found. Only the report and scratch evidence were written; the PR was not changed.

Independent `lake env lean` elaboration succeeded with precisely 14 sorry warnings. A scratch copy tested all 14 theorem holes with `simp`, `rfl` and `infer_instance`: all 14 still required sorry. Object searches at both pins found no library lemma giving these general Dwork, Cohen or exact-square/glueing-pair statements in one `exact`. The eleven real definitions support the retained statements. No padding finding is raised.

A fresh scratch `#check @name` elaboration covered all 25 declarations. The Cohen statements retain completeness and both residue/uniformizer hypotheses through `include`; the unnamed hypothesis arrows in their elaborated types are not lost binders. `ExactSquare` needs only the displayed structure maps: its kernel/image equivalence forces their two composites to agree. `PatchingData` itself only bundles the two modules and the overlap equivalence; the R-scalar towers are present in the equalizer, comparison maps and theorems that need them. No binder defect or Lean/README generality defect was established in these signatures.

### Seeded source verification

All 15 sampled targets were checked against legal source-service texts, including their proof passages. No locator was explicitly marked unverified in the README. Source labels below identify the fetched works; ff (2017) specifies the April 2017 edition, while the corrected November 2018 author text was also consulted; printed pages are distinguished from PDF page indices. The moving FS edition caveat is under Not verifiable.

| Target | Locator opened | Scope and comparison checked |
|---|---|---|
| 0.17 | fs lines 1806–1835, II.1.1 proof, pp.48–49; bms lines 1062–1100, Lemma 3.10, pp.22–23 | Root the entire ratio; split completed coefficient extension. BMS requires completeness, a regular element whose pth power divides p, and bijective relative Frobenius, not just a surjective Frobenius on an arbitrary ring. |
| 0.18 | fs lines 1775–1805, II.1 opening and II.1.1, pp.47–48 | Remove V([ϖ]); retain π=0; distinguish the weak unlocalized ring from its Tate charts. |
| 3.1 | fs lines 1880–1913, II.1.4 proof, p.50 | Marked theta, primitive π−a[ϖ], regularity and integral characteristic-p endpoint. |
| 3.6 | fs lines 7290–7320, VI.1.1–VI.1.3, pp.190–191; fargues-divisors lines 246–256, Def.2.6, p.6, and lines 521–542, Prop.2.18, pp.11–12 | Sheaf quotient, repeated legs and geometric degree. Fargues treats d>0 and the generic presentation. The integral inverse is explicitly additional local-factorization work here, not an assertion that Fargues proves the integral case. d=0 is separately empty. |
| 4.1 | fs lines 1918–1933, Example II.1.6/Definition-Proposition II.1.7, p.51 | Classical integral points and marked untilts, including the equal-characteristic origin; Gauss points are not classified as evaluation points. |
| 4.2 | fs lines 1934–1946, II.1.8, p.51 | Disc surjection and classical inverse image; π−[a] and a=0 are retained. |
| 4.6 | fs lines 2104–2113, II.1.18, p.55 | Generic E-untilts, Cartier immersion and invariance under Frobenius orbit; coefficient marking is not discarded. |
| 4.12 | fs lines 7356–7362, VI.1, p.192; scholze-periods lines 1610–1641, Lemma6.3/Cor.6.4, pp.35–36; sw lines 4181–4186, p.105 | Principal regular theta kernel and ambient completion; geometric residue C, hence DVR. The multileg ring is not automatically a DVR. General coefficients require the stated intrinsic construction/comparison. |
| 6.2 | kl-i lines 642–769, Def.1.3.7, Lemma1.3.8 and Prop.1.3.9, pp.17–19 | Exact square plus universal first-comparison surjectivity and maximal-ideal coverage; neither extra condition is silently replaced by exactness alone. |
| 6.4 | stacks lines 11719–11815, §15.92.5–.11, pp.255–257 | Quotient isomorphisms and power-torsion bijection; glueability is a module torsion-injectivity condition. Regular completion is a sufficient special case, not a noetherian requirement. |
| 6.6 | fs lines 3681–3700, III.3, pp.97–98; ff (2017) lines 8441–8464, Prop.5.3.1, pp.208–209 | Isomorphism off the divisor with finite meromorphic pole bounds; FF is a scheme-curve gluing model, not by itself the arbitrary relative adic theorem. |
| 6.7 | sw lines 6572–6603, Prop.19.1.2, p.170; hk lines 1319–1336, §4.3, p.29 | Fixed reference bundle, completed-divisor lattice, local affinoid gluing. The source's generic characteristic-zero scope is extended by the independently stated integral Cartier and algebraic patching targets. |
| 6.15 | sw lines 4190–4235, Prop.12.4.6/proof, pp.106–107; lines 4537–4582, Thm14.1.1/proof, pp.115–116; ff (2017) lines 11676–11690, §8.3.1, p.289 | One-leg direction and lattice insertion; T remains integral data in the varying-T category. Source mathematics agrees; R02 corrects the boundary normalization and R03 corrects construction ownership. |
| 7.0 | sw lines 6887–6983, Thms19.5.1–.2, pp.178–180; fs lines 3335–3363, III.1.1, p.88; dm lines 1132–1163, Props2.20–2.21, pp.25–26 | Flat linear group for the scheme dictionary, smoothness for the étale/adic dictionary; integral representations finite free. The all-O_E extension is a target here. Field tensor-generation is not used as an unproved integral criterion. See the source-footnote error below. |
| 7.6 | sw lines 6988–7018, Prop.19.5.3, pp.180–181; fs lines 7387–7404, VI.1.7 proof, p.193; gr lines 5971–6002, Props5.4.21/Claim5.4.22, pp.121–122 | Split perfectoid root base change for v-descent; reductivity in the cited étale-triviality application; regular t, henselian pair and smooth finite-presentation approximation. The additional completed geometric-stalk interface is explicitly a §3.8 target. |

The algebraic headlines were also compared with ff (2017) lines 2173–2195 (ramified Dwork image), stacks lines 11876–11985 (arbitrary glueable modules, flatness and finite-projectivity detection) and the square-zero deformation contract of DerivedModuleAlgebra §0.25. In particular, Stacks 15.92.19 does not require the original module to be glueable; the Lean finite-projectivity iff correctly omits that hypothesis.

### Headline coverage

The README's endpoints are: Dwork and twisted-coordinate/Lubin–Tate comparisons (§§0.2,0.11–0.14); integral root-chart perfectoidness, sheafiness and diamond comparison (§§0.17–0.20); nonperfect Cohen lifting (§0.23); relative period sheaves, acyclicity, finite-étale comparison and global annular sections (§1); relative curve/diamond comparisons (§2); integral Cartier, symmetric-divisor and completion comparisons (§3); marked-untilt and de Rham comparisons (§4); eigenvector/twist-section comparisons (§5); exact-square and general Beauville–Laszlo patching (§§6.2–6.5); modifications, meromorphic gluing, tensor/base-change compatibility (§§6.7–6.10); B-pair cohomology and comparison (§§6.13–6.14); normalized one-leg comparison and lattice realization (§§6.14a–6.15); punctured Witt algebraicity (§6.16); and G-bundle tensor dictionaries, modifications, faithful-representation tests and descent (§7).

All statable algebraic endpoints are now represented by the 14 native Lean theorems. The module docstring identifies the other endpoints and their missing relative ringed curves, divisor/orbit sheaves, analytic bundles, shtukas and torsor categories. The pinned topological `spaX` and algebraic `BDeRhamPlus` do not fill those gaps. No free predicate or ad hoc geometric stand-in is used.

### Adversarial calculations

In the local calculations, B=k[[t]], K=k((t)), and t is regular; these test local algebra and conventions without claiming that every such model is a global period curve. F denotes a nontrivially valued perfect characteristic-p field. “Pass” refers to the displayed instances; “change” points to a finding above. Zero modules, empty divisors and unit parameters are included where their carriers permit them; a field is not silently treated as a nonfield DVR.

| Statement | Instances tried | Computed values on the two sides / wrong model | Result; change |
|---|---|---|---|
| 0.1 ghost evaluation | π=q=2, x=(1,2,3), n=0,1,2 | Finite sum and supplied polynomial both give 1,5,21. Only i≤n occur, so natural subtraction never wraps. | Pass; supplier locator R04. |
| 0.2 Dwork | p=2,3; x=(1,1,0,…); A=O and residue algebra | Ghosts (1,1+p,1+p) have differences p,0 divisible by p,p². Over F_p, zero and (0,1,0,…) have identical zero ghosts; the regularity hypothesis excludes this failure of injectivity. | Pass. |
| 0.11 twisted Witt | Q=X²+2X; Q=X²+1; x₀=1,x₁=0 | First twisted ghost is 3 versus ordinary 1; allowed Q has remainder 0 mod2, bad Q remainder 1. | Pass. |
| 0.12 twisted Teichmüller | Q=(1+X)²−1, a=b=1 in F₂ | [ab]_Q=−1; [a]_Q[b]_Q=1. For Q=X² both are 1. | Pass; excludes automatic multiplicativity. |
| 0.13 weak topology | πⁿ and [ϖ]ⁿ, 0<c=\|ϖ\|<1 | Norms are ρⁿ and cⁿ, both tending to 0; forgetting the [ϖ] direction would leave the latter outside powers of (π). | Pass. |
| 0.14 Lubin–Tate lift | Multiplicative formal group; x=0 | Lift [1+x]−1 is 0 at 0; its endomorphism satisfies [p](X)=(1+X)^p−1, not X^p in characteristic zero. | Pass. |
| 0.15 integral charts | π=0; \|π\|=\|[ϖ]\|=c | Special quotient retains R; boundary ratio has norm 1. Inverting π would instead remove the special fibre. | Pass. |
| 0.16 root chart | Boundary c, level m=1, p=2 | Whole-ratio root has norm 1; rooting only numerator gives c^(−1/2)>1. Squaring the correct coordinate recovers π/[ϖ]. | Pass. |
| 0.17 root perfection/splitting | Ordinary versus perfected characteristic-p disc; unit coefficient | Ordinary Frobenius misses T; perfected disc has (T^(1/p))^p=T. Coefficient projection sends 1 to 1, so projection∘inclusion=id, whereas zero projection gives 0. | Pass. |
| 0.18 integral domain | E=F_q((π)); π=0 and nonzero small π | Both points lie in D([ϖ]); only the latter lies in D(π). The integral disc has its origin, the generic punctured disc does not. | Pass. |
| 0.19 integral diamond | Special untilt and its coefficient map | π maps to 0, so the map factors through Spd(O_E), but cannot factor through Spd(E), where π is a unit. | Pass. |
| 0.20 integral gluing | Identity and two identical opens | Both restrictions are identity, intersection is the same open and the equalizer consists of (s,s). | Pass. |
| 0.21 whole analytic locus | p=0,[ϖ]≠0 and p≠0,[ϖ]=0 | D(p)∪D([ϖ]) contains both; D(p)∩D([ϖ]) contains neither endpoint. | Pass. |
| 0.22 sheafiness at both ends | W(F_p)[1/p] and split coefficient retraction | Rational field chart is Q_p; unit maps 1→1→1. This does not imply stable uniformity for the differently topologized A₂ chart. | Pass. |
| 0.23 Cohen lifts | K=F_q(T), equal characteristic; K=F_q | K[[π]]/(π)=K; dT≠0; T and T+π reduce to T. Ext¹ and Ext² of the degree-zero K-vector space Ω¹ vanish, but Hom(Ω¹,K) contains the nonzero derivative. Perfect base gives O_E. | Pass; existence without canonical uniqueness. |
| 1.1 generic open | Equal-characteristic disc | Removing V(π) deletes exactly its origin; a nonzero small π remains. | Pass. |
| 1.2 radii | \|[ϖ]\|=1/4, \|π\|=1/2, then ϖ³ | Radius log(1/4)/log(1/2)=2; new radius 6. At π=0 the real quotient formula is not applicable. | Pass. |
| 1.3 λ and μ | Teichmüller unit; primitive p−[ϖ] killed by theta | μλ returns norm 1 on the unit. At \|ϖ\|=p⁻¹ the quotient seminorm of p−[ϖ] is 0, while λμ gives p⁻¹>0. | Pass; excludes λμ=id everywhere. |
| 1.4 Robba growth | Single Teichmüller coefficient x; zero; \|x\|>1 | Norm is \|x\|^r, zero norm is 0; (\|x\|^r)^(1/r)=\|x\|>1 excludes the plus condition. | Pass. |
| 1.5 growth/units/invariants | d=0; d=1, connected and disconnected F | At d=0, Σpⁿ[ϖ^(−n²)] is in W(F) but its norm terms p^(rn²−n) diverge for all r>0. At d=1 over a geometric F, constants are Q_p; over F×F they are Q_p×Q_p, not diagonal Q_p. | Missing d≥1; R01. |
| 1.6 splitting/intersections | x=pⁿ; nested coefficient bounds | Splitting y=x,z=0 gives y+z=pⁿ and norms p⁻ⁿ,0. The overlap of bounds ≤a and ≤b is ≤min(a,b). | Pass. |
| 1.7 presheaves | Empty open and identity restriction | Empty sections form the zero ring; id sends x to x; a zero restriction would send 1 to 0 on a nonzero open. | Pass. |
| 1.8 sheaves/acyclicity | Two identical rational charts, rank one | Difference (a,b)↦a−b has kernel diagonal R and cokernel 0. The theorem names nine acyclic variants and three Kiehl cases, not all twelve as acyclic. | Pass. |
| 1.9 relatively perfectoid rings | Adjoined p-power roots | Each root variable has a pth root at the next level; ordinary T has none in the unperfected reduction. | Pass; no noetherian inference. |
| 1.10 interval/base projection | Singleton interval; F₂ coefficients | Both endpoint norms agree on the singleton. Teichmüller gives [1]+[1]=2 in Z₂ but [1+1]=0, excluding an additive base map. | Pass. |
| 1.11 interval descent | [1,3]=[1,2]∪[2,3] | A compatible pair restricts to the same value at 2; constants (1,1) glue to 1, while (1,0) do not glue. | Pass. |
| 1.12 deformation/quotient | u=.2,v=.7; p=2,f=d=2; d=0 interpretation | Semigroup endpoint is max(.2,.7)=.7; φ_E² sends radius 1 to 16, not 4. Identity action gives R_{>0}, not S¹. | R01. |
| 1.13 surjectivity | R→R identity; product projection | A seminorm lifts to itself for identity; a chosen component seminorm on R lifts to the same component of R×R. | Pass. |
| 1.14 finite-étale periods | Split rank two; quotient by z^m, m=1,2 | Period extension gives B×B on both sides. Local regular quotient lengths are 1 and 2; shrinking below a permitted radius is needed before defining the comparison arrow. | Pass. |
| 1.15 Stein exhaustion | Compatible constant 1; zero bundle | Limit of restrictions of 1 is 1; zero has H⁰=H¹=0. Dense restrictions are not asserted to be algebraically surjective. | Pass. |
| 1.16 coefficients/anchor | ϖ→ϖ³; residue extension degree two | Radius r→3r; residue-compatible Frobenius becomes φ_p², not φ_p. | Pass locally; carry this distinction into R01. |
| 1.17 local generation | Zero module; trivial line | Required generating sets have sizes 0 and 1; empty sections do not generate the nonzero line. | Pass. |
| 1.18 global generation | Constant section 1 on every interval; zero | Its restrictions generate each unit module and its global coefficient is 1. Zero global sections generate exactly the zero bundle. | Pass. |
| 2.1 quotient curve | Radii r and qr; integral endpoint | r and qr have one orbit; π=0 is excluded from the quotient's generic covering domain. | Pass for the standing single φ_E. |
| 2.2 diamond projection | Identity base; Frobenius-related representatives | Both representatives project to the same base point after equivariance; no additive Teichmüller ring map is required. | Pass. |
| 2.3 functoriality | Identity and two successive coefficient maps | Image of 1 is 1 in both composites; id pulls the same annulus and divisor back to themselves. | Pass. |
| 2.4 étale curves | Split degree-two base cover | Two copies of S give two copies of X_S; rank-two finite étale algebra is O_X×O_X. | Pass. |
| 2.5 LT tower | Multiplicative group, p=3, levels 1,2 | Cyclotomic degrees are 2 and 6; a acts as ζ↦ζ^a, and ab gives ζ^(ab). Zero is not primitive torsion. | Pass. |
| 3.1 primitive equations | Special ξ=π; generic ξ=π−a[ϖ] | Theta gives 0 in both; in the special quotient π=0 but [ϖ] remains nonzero. | Pass. |
| 3.2 Cartier lower bound | q=2,n=2, normalized regular factor | Prescribed scalar factor q⁻ⁿ=1/4; multiplying the equation by a unit rescales the displayed generator but leaves its ideal and quotient unchanged. | Pass. |
| 3.3 line descent | Nontrivial unit transition u on an overlap | Generators ξ and uξ generate the same invertible ideal; requiring the generators to be equal would incorrectly force u=1. | Pass. |
| 3.4 symmetric divisors | d=0,1,2; repeated (D,D) | Empty tuple gives one empty divisor; ξ² has length 2. Orbit sheaf has only identity automorphisms, unlike the quotient stack with Σ₂ stabilizer. | Pass. |
| 3.5 product equations | Empty product; two colliding legs | Empty product=1 and quotient ring=0; ξ·ξ=ξ² and length B/(ξ²)=2, not 1. | Pass. |
| 3.6 degree criterion | Empty, simple, double divisor | Geometric total lengths are 0,1,2 on both tuple and Cartier sides. ξ² does not acquire two distinct support points. | Pass; current supplier locator R04. |
| 3.7 thickening descent | k[t]/t² and a split rank-two bundle | Nilpotent t has t²=0 but t≠0; the descended free module still has rank 2 over the thickening, not merely over k. | Pass. |
| 3.8 ambient completion | (t) versus (t²); compatible free rank-two tower | Both inverse limits are k[[t]], but first quotients have lengths 1 and 2. Modules give B² and endomorphisms M₂(B); special ξ=π retains integral coefficients. | Pass; supplied effectivity correctly consumed. |
| 3.9 addition/disjointness | Comaximal ideals (t),(t−1); collision (t),(t) | CRT gives two factors for the first; collision gives B/t², a local ring with nilpotent t, not k×k. | Pass. |
| 4.1 classical points | Evaluation at 0,a; Gauss point | Kernels are (X),(X−a),0 respectively; positive-radius Gauss is not evaluation at a. | Pass. |
| 4.2 period-disc tilting | a=0 and a≠0 | Equations are π and π−[a]; origin maps to the special untilt, not to an absent generic point. | Pass. |
| 4.3 Gauss fibre | u=T+δ, \|δ\|<ρ | ρ-Gauss norm of u is ρ, equal to that of T; collapsing the fibre to a single classical evaluation loses these distinct extensions. | Pass. |
| 4.4 classical/nonclassical fibres | Evaluation point versus Gauss point | Evaluation support has one prescribed marked quotient; a positive-radius Gauss fibre has the disc of extensions of §4.3, not a single evaluation kernel. | Pass. |
| 4.5 inertia | Finite unramified constant extension versus ramified torsion extension | Unramified constant extension has inertia action 1. For the p=3 first LT level, the nontrivial unit sends ζ₃ to ζ₃²≠ζ₃. The zero-radius classical case is excluded. | Pass. |
| 4.6 generic untilts | π invertible versus π=0; Frobenius shift | Generic map has image of π a unit; special map has image 0 and cannot factor through E. Frobenius-shifted marking gives the same X-divisor. | Pass. |
| 4.7 divisor coefficient base | Base F_q versus algebraic closure | The presentations retain Spd(E) and Spd(Ê) respectively; a Frobenius orbit is one divisor, while deleting the orbit relation keeps multiple representatives. | Pass; R04 locator. |
| 4.8 p-typical de Rham | Characteristic-zero untilt; characteristic-p ring | First quotient of B_dR⁺ is the untilt algebra; Mathlib's p-localized target in characteristic p is 0. Intrinsic integral completion is nonzero there. | Pass. |
| 4.9 ramified coefficients | Identity coefficient map; separable split quadratic tensor | Identity lift is identity; split tensor gives two factors B×B, and the specified embedding selects B. An unmarked choice cannot choose between them canonically. | Pass. |
| 4.10 divisor de Rham rings | One versus two disjoint geometric legs | Residues are C versus C×C; the latter has idempotent (1,0), so is not a DVR. | Pass. |
| 4.11 filtration/conormal | t→ut; repeated t² | Degree m generator changes by u^m, preserving I^m. First repeated-divisor piece uses t², so numbered steps are 2m rather than m. | Pass. |
| 4.12 geometric DVR | m=0,1,2 | B/(1)=0, B/t=k, B/t² has length 2; fraction ring is k((t)). Product B×B fails locality. | Pass. |
| 4.13 completion/base change | Identity map; unit parameter change | Completed map is id and ideals (t)=(ut); rational restriction preserves the same quotient diagram, rather than replacing it by a new parameter-dependent completion. | Pass. |
| 5.2 eigenvectors | n=0,1 and zero | Equations are φ_p^d(x)=x and φ_p^d(x)=px; zero satisfies both. Here d>0 is explicit. | Pass. |
| 5.3 boundary difference | n>0; scalar geometric-series model | (1−π^n)Σ_{j≥0}π^(nj)=1. Reversing the convergence direction gives terms with unbounded negative powers on that chart. | Pass for this boundary; it is not the endpoint of R02. |
| 5.4 LT section | Simple zero and square | Vanishing orders 1 and 2 give divisor multiplicities 1 and 2; ξB⁺ gives O(−1), opposite to the degree of the divisor section. | Pass. |
| 6.1 exact square/data | Transition x₁=3x₂; identity square; zero module | Equalizer is {(k,k/3)} with generator (1,1/3). In the identity square kernel(a−b)=diagonal and cokernel=0. Zero pieces yield zero sections. | Pass; actual overlap map retained. |
| 6.2 effective finite projectives | Identity square, ranks 0,1,2 | Sections are diagonal R^n, both comparison maps are identities after identification, and finite-projective rank is n on all three sides. | Pass under universal patching and maximal-ideal coverage. |
| 6.3 finite étale algebras | k×k in char2,3; k[ε]/ε² | Split trace matrix is diag(1,1), determinant 1. Dual numbers have degenerate trace pairing, determinant 0, so cannot masquerade as étale gluing data. | Pass. |
| 6.4 glueing pair/torsion | f=0, f=1; Z/4 with f=2; completion counterexample | Power torsion is all M, zero, all Z/4 respectively. In k[f,T_i]/(fT₁,fT₂−T₁,…), T₁≠0 maps to 0 in completion, violating torsion injectivity. | Pass; both directions of pair criterion distinguish it. |
| 6.5 general BL | Z→Z₂,f=2, pieces Z₂/2 and 0 | Overlap=0; equalizer=Z/2. Scalar extensions recover Z₂/2 and 0. The glued module is neither flat nor projective, but remains glueable. | Pass; previous omission repaired. |
| 6.6 meromorphic modifications | L=tB; analytic unipotent matrix with unbounded pole series | tB requires bound 1, not 0. Matrix [[1,h],[0,1]] has inverse [[1,−h],[0,1]], but an h with unbounded pole orders has no finite meromorphic bound. | Pass; analytic invertibility alone is insufficient. |
| 6.7 lattice gluing | L=tB and L=t⁻¹B; doubled divisor | Degrees are −1 and +1. B/t over B/t² has length 1 and is not free over the length-two ring; reducing to the support loses data. | Pass. |
| 6.8 meromorphic complement | B⁺ lattice t^kB with algebraic puncture K | Intersection K∩t^kB=t^kB and scalar extension gives K. This algebraic calculation is not an equality of the analytic puncture with Spec(K). | Pass. |
| 6.9 tensor/dual/base change | L=t^aB, M=t^bB | Tensor=t^(a+b)B; dual=t^(−a)B. Identity base change returns both unchanged; a split exact rank sequence 1+1=2 stays exact. | Pass. |
| 6.10 multiple legs | k=3,m=2; disjoint and collision chains | Sufficient doubled-divisor bound is ceiling(3/2)=2, giving 4≥3; bound 1 gives 2<3. Disjoint support gives a product; coincident chains can have the same composite but different intermediate lattices. | Pass. |
| 6.11 affine complement | Unramified exponent a=2; zero twist | KL analytic slope for the divisor line is 1/2 and schematic degree is 1; zero twist gives 0 and cannot supply positivity. | Pass; a retained. |
| 6.12 period square | Geometric constants and a pole | Constants have difference 0 and kernel Q_p. A de Rham pole class is in the quotient; replacing B_e by all B_dR would enlarge the intersection beyond Q_p. | Pass. |
| 6.13 cohomology | O and zero; schematic affine charts | For O, intersection=B_e∩B_dR⁺=Q_p and quotient B_dR/(B_e+B_dR⁺)=0. Zero gives H⁰=H¹=0; no H² from the two-term complex. | Pass; arbitrary flat module uses ordinary tensor. |
| 6.14 B-pair comparison | Reference lattice and t⁻¹B⊕B^(n−1) | Glued bundles are O^n and O(1)⊕O^(n−1); at rank zero both are zero. | Pass; retained target compares supplied equivalence. |
| 6.14a normalized tail | Unit shtuka; x_{C♭} versus x_L | At x_{C♭}: residue C♭, completed stalk W(C♭), identity comparison=1. At x_L: no stalk for an object only on Y_[0,∞). | R02. |
| 6.15 pairs/one-leg construction | T=Z_p, Ξ=t^kB; k=0,1; rank zero | Modified bundles O and O(−1); both reconstruction routes insert exactly the same lattices. Multiplication by 1/p does not preserve T. Zero pair gives zero. | Mathematics passes after endpoint repair; ownership R03. |
| 6.16 punctured Witt algebraicity | Geometric field and general Tate base | Over the geometric field, unit and zero extend with ranks 1 and 0. In Kedlaya Example 3.14, the kernel of ([y],[z],p):A³→A has rank 2 on the puncture but projective dimension at least 1 globally; no projective extension exists. | Pass; extension scope is separate. |
| 7.0 torsor dictionary | Trivial group; G_m; GL₂; special fibre | Trivial group gives one object; G_m gives line frames; GL₂ gives rank-two frames. Over F_p, base extension kills multiplication by p despite exactness; faithfulness of the integral functor is not imposed in the target. | Pass; source footnote error below. |
| 7.1 group modifications | G_m and empty divisor | tB gives degree −1; empty divisor gives the original torsor and identity modification. | Pass. |
| 7.2 G-gluing | Trivial reference and right positive-loop change | g and gh, h∈G(B⁺), determine the same lattice gB⁺; generally hg determines a different lattice. Trivial group gives one gluing datum. | Pass; quotient direction fixed. |
| 7.3 faithful test | G_m weights a,b; trivial representation | Weights add a+b under tensor; bound adds accordingly. Trivial representation always gives exponent 0 and cannot detect the nontrivial lattice tB in weight 1. | Pass. |
| 7.4 structure group | SL₂→GL₂; diagonal(t,t⁻¹) and diagonal(t,1) | Determinants are 1 and t. Only the first preserves the determinant trivialization; applying determinant to it gives the unit G_m modification. | Pass. |
| 7.5 base change/addition | Identity; bounds k=2,ℓ=3 at coincident support | Composite bound k+ℓ=5 is ≤max(2,3)·2=6. Independent disjoint pieces form a product; collision retains the intermediate lattice. | Pass. |
| 7.6 v-descent/étale lifting | Perfected disc; split cover; double divisor | Frobenius has T^(1/p) as root of T, retraction fixes 1, and B/t²→B/t has square-zero kernel (t). Smooth torsor lifting sees this nilpotent kernel rather than discarding it. | Pass under stated smoothness/reductivity and approximation inputs. |
| 7.7 lattice modification | SL₂ versus GL₂; successive L,L′ | L=tB⊕B has determinant tB and fails SL₂; tB⊕t⁻¹B has determinant B. Replacing L by L′ yields L′, not the product of the two embedded lattices. | Pass. |

The nonabelian direction check in §§7.2–7.5 is explicit: over K take g=diag(t,1) and h=[[1,1],[0,1]] in GL₂(B). Then ghB²=gB². However h(0,1)=(1,1) belongs to hgB² and not to gB², whose first coordinate lies in tB. Thus right multiplication preserves the lattice while left multiplication need not. The G_m calculation alone would not distinguish the directions.

### Individual Lean headline tests

These rows supplement the target table and test every sorried declaration on its actual algebraic scope. The equalizer's universal property is used only after its structure maps are specified.

| Declaration | Instance | Computed conclusion | Result |
|---|---|---|---|
| `ramifiedDworkCriterion` | O=Z_p, p=2,3, σ=id, x=(1,1,0,…) | Ghost tuple (1,1+p,1+p,…), congruence differences p,0,…; torsion-algebra collision is excluded. | Pass. |
| `cohenCoefficientLift_exists` | O=F_q[[π]], K=F_q(T) | A=K[[π]], residue kernel (π), coefficientwise σ(T)=T^q and σ(π)=π. | Pass. |
| `cohenCoefficientLift_compare` | Two copies K[[π]], same residue; parameter lift T and T+π | Identity is one compatible comparison; substitution T↦T+π also reduces to id. Statement asserts existence, not uniqueness. | Pass. |
| `exactSquare_finiteProjective` | All four rings k, all ring maps id, D=(k²,k²,id) | Sections diagonal k²; comparison matrices I₂,I₂; rank 2, finite projective. | Pass. |
| `exactSquare_finiteEtale` | Same square, algebra pieces k×k | Descended algebra k×k, multiplication componentwise, trace determinant 1 even in char2. | Pass. |
| `exactSquare_hom` | Same square, compatible matrices A on both pieces | Unique map on diagonal sections is (x,x)↦(Ax,Ax); A=0 and A=I₂ remain distinct. | Pass. |
| `exactSquare_finiteEtale_hom` | Same square, compatible swaps of k×k | Unique descended map swaps the two idempotents; incompatible swap/id pair fails the overlap hypothesis. | Pass. |
| `beauvilleLaszlo_flat_iff` | Z→Z₂,f=2; M=Z then Z/2 | Flatness values are true/true/true for Z, and false/false/true for Z/2 and its two extensions. Both iff directions agree. | Pass. |
| `beauvilleLaszlo_finiteProjective_iff` | Same modules | Finite-projective values are true/true/true, then false/false/true. No redundant glueability premise is inserted. | Pass. |
| `beauvilleLaszlo_effective` | Free rank one with transition t over B→B | Sections are a rank-one module, scalar extensions recover B and K, and finite projectivity remains true. Rank zero gives 0. | Pass. |
| `beauvilleLaszlo_sections` | Z₂/2 and 0 over (Z→Z₂,2) | Equalizer Z/2; tensor extensions Z₂/2 and 0; overlap 0. | Pass outside projective scope. |
| `beauvilleLaszlo_recovery` | M=Z/2 in that pair | Sequence is 0→F₂→F₂⊕0→0→0; first map identity, last map zero onto zero, kernel=image=F₂. | Pass. |
| `beauvilleLaszlo_flat_exact` | M=Z | Difference map Z₂⊕Z[1/2]→Q₂ is onto; kernel consists of diagonal integers. For 1/2, preimage (0,−1/2) gives 1/2. | Pass. |
| `beauvilleLaszlo_hom` | M=N=Z, compatible multiplication by 3; incompatible 1 and 3 | First pair descends uniquely to ×3. Second gives difference −2 on generator 1, so violates compatibility. | Pass. |

### Pinned-library and ownership audit

Pins read from `lake-manifest.json`: Mathlib `6b7abb3c7686292736be2955bd3eb9ebf63b456a`; Tau Ceti `a91d3aafa8cd3e6bc33dfde0d7677ed0f1625039`. The main content checkout was `fa41b3747f56d4e77bd69e7099c1be4f2e4959ba`. The searches were by objects—ghost evaluation, weak Witt topology, completed ideals, relative Robba rings, exact squares, glueing pairs, one-leg shtukas, affine bundle comparison and tensor torsors—and used the roadmap index, the board packages, main, open-head text and the pinned libraries. No other roadmap declaration was imported into Lean or assigned the same fully qualified name.

The following 18 grouped entries record declarations opened at the pins, not claims about a newer library. Paths in this table are relative to the respective pinned library repository.

| Pinned object | File and line | What it supplies / does not supply |
|---|---|---|
| `WittVector.ghostComponent` | `Mathlib/RingTheory/WittVector/Basic.lean:296` | Ring-hom evaluation of the p-typical polynomial; not a ramified arbitrary-coefficient functor. |
| `WittVector.teichmuller` | `Mathlib/RingTheory/WittVector/Teichmuller.lean:93` | Multiplicative map, not an additive structural map. |
| `WittVector.frobenius`, coefficient formula | `Mathlib/RingTheory/WittVector/Frobenius.lean:218`, `:255`, `:270` | p-power Frobenius on characteristic-p coefficients, distinguishing φ_p from φ_E. |
| `IsAdicComplete` | `Mathlib/RingTheory/AdicCompletion/Basic.lean:56` | Includes both Hausdorffness and precompleteness; separation is not an extra forgotten binder. |
| `IsAdicComplete.liftRingHom` | `Mathlib/RingTheory/AdicCompletion/Algebra.lean:358` | Compatible quotient maps yield a ring map into an adically complete target. |
| `Ideal.span_singleton_mul_left_unit` | `Mathlib/RingTheory/Ideal/Span.lean:100` | Unit change preserves the ideal; it does not itself identify completed analytic charts. |
| `IsLocalization.Away.awayToAwayLeft/Right` | `Mathlib/RingTheory/Localization/Away/Basic.lean:184`, `:189` | Algebraic localizations, not arbitrary analytic complements. |
| `fontaineThetaInvertP`, `BDeRhamPlus`, `BDeRham` | `Mathlib/RingTheory/Perfectoid/BDeRham.lean:62`, `:75`, `:88` | Algebraic p-localized theta completion/localization; in characteristic p these are zero. No relative divisor sheaf is defined here. |
| Formal-étale lifting | `Mathlib/RingTheory/Etale/Field.lean:98`; `Mathlib/RingTheory/Etale/Basic.lean:76` | Separable field extension and square-zero quotient hypotheses are retained. |
| Smooth adic lifting | `Mathlib/RingTheory/Smooth/AdicCompletion.lean:94` | Formal smoothness and adic completeness supply lifts; no automatic geometric-stalk approximation. |
| Henselian completeness | `Mathlib/RingTheory/Henselian.lean:170` | Complete ring/ideal gives a henselian pair, rather than declaring every intermediate colimit complete. |
| Power torsion | `Mathlib/Algebra/Module/Torsion/Basic.lean:746` | `mem_torsion'_iff` is existence of an annihilator in the submonoid. For powers f, n=0 annihilates only zero. |
| Weak Witt Huber/Tate tests | `TauCeti/RingTheory/Huber/WittVector.lean:51`, `:61` | Huber topology exists; the Tate criterion depends on the Teichmüller parameter being a unit in the coefficient ring. |
| Witt completeness | `TauCeti/RingTheory/WittVector/Complete.lean:197`, `:215`, `:237` | Perfect characteristic-p input and parameter-adic completeness; valued-field specialization retains norm<1. |
| Ideal-power completeness | `TauCeti/RingTheory/AdicCompletion/Pow.lean:63`, `:80` | Cofinal ideals and nonzero powers; the positive power condition matters for repeated divisors. |
| Topological FF quotient | `TauCeti/AlgebraicGeometry/AdicSpace/FarguesFontaine/Quotient.lean:56`, `:72`, `:107` | Orbit type, orbit equality and open quotient topology. Its definition supplies no structure sheaf. |
| Affine vector bundles | `TauCeti/AlgebraicGeometry/VectorBundle/Affine/Basic.lean:102`; `Affine/Monoidal.lean:45`; `Affine/Dual.lean:66` | Finite-projective/scheme-bundle equivalence, tensors and duals; not the analytic gluing theorem. |
| Representation reconstruction/faithfulness | `TauCeti/Algebra/AlgebraicGroup/Representation/Tannaka/GroupFunctor.lean:138`; `Representation/Faithful/Basic.lean:259` | Tensor-automorphism reconstruction and finite-basis closed-immersion criterion. They do not replace the integral analytic torsor dictionary. |

The 17 supplier roadmaps were resolved by their actual mathematical targets. The seven worker citation leads resolve: four AInf names resolve in its README, `DerivedDeRham.perfectInverseSystemEffectivity` resolves in DerivedModuleAlgebra, and the two `PatchingData` comparison names are declared in this Lean file. The present VB locator drift is R04. No other missing owner was established.

| Supplier | Resolved location and retained scope |
|---|---|
| AdicSpaces | `Completed/AdicSpaces/README.md`, Layers 3–6: presheaves, sheafiness, adic gluing and the absolute p-typical curve; this roadmap compares its relative object with that input. |
| AdicSpacesPartII | `TauCetiRoadmap/AdicSpacesPartII/README.md:1200`, strict-complex completion; `:1777`, completed tensors along adic maps. The new non-adic integral coefficient construction is stated separately in §0.16. |
| AdicSpacesPartIII | `TauCetiRoadmap/AdicSpacesPartIII/README.md:9708`, simple Laurent squares; `:10181`, split completed base change; `:10289`, sheafy Tate Kiehl gluing; `:10334`, finite-projective étale descent; `:11946`, trace; `:12034`, trace-perfect étale criterion. Complete/Hausdorff Tate and stable-basis conditions are retained. R3.4 owns the Banach correction used for Stein limits. |
| PerfectoidSpaces | `TauCetiRoadmap/PerfectoidSpaces/README.md:4870`, P1.21 primitive ideals; `:4912`, P1.22 markings; `:9061`, P3.17a.1 and its stability/sheafiness successors. P1's tilt/PreTilt and integral Frobenius criterion, P2 tilting and P3 almost/finite-étale inputs match the contracts. |
| AdicEtaleGeometry | `TauCetiRoadmap/AdicEtaleGeometry/README.md:3638`, A1.6a stable-basis étale vector bundles; complete strongly sheafy affinoid hypotheses are required. |
| RigidAnalyticGeometry | `TauCetiRoadmap/RigidAnalyticGeometry/README.md:318`, §2.2 maximum modulus; used on finite-type disc levels, not asserted as attainment on every perfected chart. |
| DiamondsAndVStacks | `TauCetiRoadmap/DiamondsAndVStacks/README.md:2058`, two-fibre products/quotients; `:4245`, functions; `:4324`, higher/almost acyclicity; `:4390`, D2.9 ordinary bundles; `:6374`, small v-sheaves/stacks; `:8137`, Berkovich quotient; `:9127`, pre-adic diamondification. Ordinary bundle descent is distinct from almost H¹ vanishing. |
| DerivedModuleAlgebra | `TauCetiRoadmap/DerivedModuleAlgebra/README.md:1303`, square-zero obstruction theory; `:2049`, finite models/Tor criterion; `:2200`, perfect-system effectivity. For J-adic quotients, Jⁿ/J^(n+1) squares to zero for n≥1. |
| LocalFieldsRamification | `Completed/LocalFieldsRamification/README.md:72`, local fields; `:576`, unramified/Frobenius; `:1154`, tame quotient/inertia. The normalized LT module remains a separate supplier target. |
| VectorBundlesAndIsocrystals | `TauCetiRoadmap/VectorBundlesAndIsocrystals/README.md:92`, ramified coefficients; `:106`, annuli; `:146`, Cartier descent; `:161`, completion; `:187`, graded charts; `:410`, annular descent; `:797`, GAGA; `:1095`, LT sections; `:1236`, effective divisors/projective sections; `:1839`, integral Frobenius; `:2011`, integral group torsors. Objects resolve; labels require R04. |
| PadicHodgeTheory | `TauCetiRoadmap/PadicHodgeTheory/README.md:140`, §0.2 theta/filtration; `:1071`, §5.5 tensor torsor; `:1318`, §7.5 actual relative periods and B-pairs; `:1340`, §7.6 derived comparison. These relative carriers are consumed, not re-created under new names. |
| PadicPeriodRings | `TauCetiRoadmap/PadicPeriodRings/README.md:216`, §1.5 de Rham topology/DVR; `:416`, §4.1 general p-adic period carriers; `:469`, §4.3 fundamental sequence. The intrinsic all-E completion is additional here. |
| FarguesFontaineDiamonds | `TauCetiRoadmap/FarguesFontaineDiamonds/README.md:663`, F4 marked-untilt analytic Cartier criterion, root-frame comparison and strict closedness. Its fixed-field Q_p scope is not promoted to an all-E theorem by citation alone. |
| AInfCohomology | `TauCetiRoadmap/AInfCohomology/README.md:1575`, regular-completion linear patching; `:1585`, punctured-spectrum triviality; `:1777`, no-leg/integral Robba; `:1816`, analytic extension; `:1826`, reconstruction. The general glueing-pair and general-Tate-base extensions here differ; the geometric one-leg reconstruction does not (R03). |
| AlgebraicVectorBundles | `TauCetiRoadmap/AlgebraicVectorBundles/README.md:215`, L0A; `:228`, L0B; `:254`, L0C. Generic scheme sheaf/bundle operations are deferred, consistent with their native pinned implementations. |
| ReductiveGroups | `TauCetiRoadmap/ReductiveGroups/README.md:176`, Layer 1; `:211`, reconstruction dictionaries. The field reconstruction is an input, not a proof of integral analytic torsor descent. |
| SchemeAndStackFoundations | `TauCetiRoadmap/SchemeAndStackFoundations/README.md:2502`, §1.15; `:3330`, §2.3: geometric/fppf torsors and common torsor-class carriers. |

Ownership against open work was checked through the supplied roadmap index and readable heads. The broad object searches also located the regular-completion specialization in FiniteFlatGroupsAndIntegralPadicHodgeTheory; its noetherian p-completion scope does not duplicate this roadmap's arbitrary glueing-pair theorem. Board-package matches in GlobalShtukasAndFunctionFieldLanglands concern function-field shtukas, not this mixed-characteristic one-leg construction. The absolute curve, generic Witt operations, scheme bundles and generic perfect-system effectivity have named earlier owners; the remaining relative/integral comparisons here have a stated difference. R03 is the outstanding duplicate construction. No consumer was introduced as a supplier.

## Not verifiable

- The precise historical FS binary described in References as created 27 November 2024 with 356 pages was not available at the linked moving author URL. The legally fetched text identifies 383 pages (fs line 1). Its sampled theorem numbers and printed pages agree with the locators above, and their mathematics was checked. This does not certify the historical binary's date or page count. A versioned legal archive or an accurate edition description would make that bibliographic claim reproducible.
- The calculation tables are adversarial tests, not formal proofs of the proposed integral local-factorization, all-coefficient period-ring estimates or completed geometric-stalk approximation. Those remain explicitly owned construction targets. No sampled text was inaccessible, no citation was guessed, and this review is not waiting on a missing-source request.

## Source issues

- **Misprint** in kl-i at Definition 5.4.3, printed p.126: the source says γ is an element of the integral Robba ring; it should be a multiplicative seminorm in its Berkovich spectrum; affects a stated result.
- **Gap** in kl-i at Proposition 3.6.11 proof, printed p.92: the source says norm-controlled lifting establishes the completed-tensor isomorphism; it should be supplemented by injectivity, supplied in kl-ii Theorem 3.3.13 and explained in Remark 3.3.14; affects the proof.
- **Misprint** in scholze-periods at Lemma 6.3 proof, printed p.35: the source says f maps to zero in the indicated quotient; it should be y, the element of the theta kernel under discussion; affects the proof.
- **Misprint** in fs at Definition/Proposition III.1.1, printed p.88: the source says the adic torsor dictionary is SW Proposition 19.5.1; it should be SW Theorem 19.5.2, with Theorem 19.5.1 providing the scheme dictionary; affects nothing.
- **Error** in sw at Theorem 19.5.1 footnote 1, printed p.178: the source says every exact tensor functor from integral representations is faithful; it should be stated that exactness alone does not ensure faithfulness over arbitrary Z_p-bases; affects the proof.
- **Misprint** in sw at Proposition 19.5.3 proof, printed p.180: the source says the perfected covering space is a v-cover of itself; it should be a v-cover of the perfected base U′; affects the proof.
- **Misprint** in sw at Proposition 19.5.3 proof, printed p.181: the source says U is affinoid perfectoid while its ring is only assumed sousperfectoid; it should be affinoid sousperfectoid, with U′ perfectoid after root extension; affects the proof.
