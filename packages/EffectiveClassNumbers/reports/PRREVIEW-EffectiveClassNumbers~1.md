# Review of EffectiveClassNumbers (pull request #1406 at 532ca2c)

**Verdict:** needs changes

## R01 (P1) — Cite the owner of ramified Rankin–Selberg/Weil–Deligne compatibility

**Location:** `TauCetiRoadmap/EffectiveClassNumbers/README.md:125`, repeated at line 768: “AL.3 supplies local Weil–Deligne parameter comparison”.

**Claim:** The all-finite-factor identity in §3.1 consumes an unconditional ramified parameter comparison from AutomorphicLFunctionsAndLocalFactors AL.3. This is not what that supplier currently supplies. AL.3 supplies the analytic Rankin–Selberg factors. Its separate AL.4.2.1 transports a comparison **after the ramified equalities have been supplied as hypotheses**. Unramified determinant comparison does not establish the claimed identity at multiplicative, additive or wild primes. This is supplier drift, not a counterexample to the intended identity.

**Witness:** `TauCetiRoadmap/AutomorphicLFunctionsAndLocalFactors/README.md:2691`: ramified analytic/Weil–Deligne factor equalities are inputs. At a split multiplicative place, retaining monodromy gives the self-pair factor 125/96 at p=5,u=1; forgetting monodromy instead produces a pole.

**Repair:** Replace the AL.3 comparison claim and its `Needs` edge with an exact contract for the GL₂×GL₂ pair-factor compatibility, retaining monodromy at every finite prime. Resolve this with the earlier `GL2AutomorphicRepresentationsAndTransfer` R16.0.1 pair-factor interface (lines 449–471), together with `EllipticCurveModularity` R29.4 for the compatible arithmetic realization; AL.4.2.1 can then supply convention transport. R16.0.1 explicitly discusses GL₂×GL₃ in its expanded paragraph, so the contract must explicitly identify the GL₂×GL₂ instance being consumed; if that instance is not included in its pair-factor API, declare that precise missing instance as a gap owned by that earlier supplier. Do not replace the theorem by a good-prime assertion. Update the old AL anchors to the corresponding numbered targets while making this change.

**Repair test:** In the multiplicative example the required identity is `(1−5^(−u))⁻¹(1−5^(−u−1))⁻¹`, giving 125/96 at u=1 on both sides. At a good prime with p=5,a_p=0,s=1, Ψ_p=25/36, L_p(Sym²,2)=125/144 and R_p=1. The repaired contract must cover both instances and the ramified quadratic-twist case below. A reference supplying only the second instance does not repair the first.

## Verified sound

This review read both complete target files, the normative repository README and CONTRIBUTING, and the main-branch ImaginaryQuadraticClassNumber and completed ArithmeticDirichletSeries roadmaps for shape. No pull-request file was changed. The outside-folder diff is empty. The folder is explicitly an extension of ImaginaryQuadraticClassNumber, rather than a replacement for that roadmap. The retained targets include exceptional discriminants, ramified overlaps and wild local types. No sorry-defined data, option override, duplicate fully qualified Lean declaration or one-tactic padding was found.

The worker's gate at the specified head passes every reported rule, including the targeted build. I additionally built the two imported Tau Ceti modules and elaborated Suggested.lean directly. It exits successfully with exactly the ten expected `sorry` warnings. A scratch copy printed `#check @name` for all **17 declarations** (seven definitions and ten theorems). The discriminant, degree, reducedness, positivity, coprimality, continuation and exponent hypotheses remain in the elaborated types; no binder repair was needed. In particular, `effective_cutoff` does not need an extra H≥1 binder: its class-number equality and `NumberField.classNumber_pos` imply it.

Each of the ten admitted theorems was separately exposed to a one-tactic attempt with `simp`, `rfl`, `infer_instance` and a matching hypothesis. None closed. Object searches and the definitions at the pins did not supply a single existing lemma proving any of these ten statements. The generic analytic hypotheses in `oesterleTechnical` are tied to the actual quadratic field, its zeta coefficients and the defined completion; the curve-rank statements are tied to the two native curves and their native L-series. They are not algebraic stand-ins on unrelated functions.

The mechanically checked dependency output is:

```text
depcheck: 204 roadmaps, 1486 edges, 0 problem(s)
```

There is no UPWARD or CYCLE line. The defect in R01 is semantic supplier drift that this graph check cannot detect.

### Seeded source sample: 15 targets

All fifteen requested targets were checked against the legal cached texts. “Derived” below distinguishes a new elementary adapter from a statement literally printed at the cited locator. O88 remains waived, not silently certified. Image inspection was used where the extraction lost displayed formulas, including O85 p.313, pp.320–321 and GZ86 p.230.

| Target | Locator and text witness | Result |
|---|---|---|
| 1.3 Positive inverse Mellin kernels | O85 §3.3, Lemmas 1–2, pp.315–316; O85 line 255 | The support, factorial and Mellin exponent agree. The a=0 boundary follows directly from the displayed kernel; negative a is correctly excluded from monotone comparison. |
| 1.4 Positive Mellin comparison | O85 §3.3, Lemma 3 and Examples 1–2, p.316; O85 line 275 | The hypothesis is integrated cumulative domination, not pointwise domination. The hinge argument gives the stated extension with explicit convergence hypotheses. |
| 2.6 Odd central derivatives | BGZ85 §4, formula (12), pp.478–479; BGZ85 line 233 | The factor is 2r!, with the lower derivatives assumed zero. The r=0 formula is separately assigned the positive functional-equation sign. |
| 2.8 Heegner height gap | GZ86 I §§3–6, (4.3), (6.3)–(6.5), pp.227–230; GZ86 line 183 and line 274; BGZ85 §4 p.479 | Odd fundamental D, coprimality, splitting, the sum rather than average, relative H-height and the elliptic degree factor are retained. The explicit lower bound for the chosen E₅₀₇₇ parametrization is an additional target, not a numerical constant supplied by BGZ85. |
| 2.10 CM values | GZ83 Corollary 6, p.87; GZ83 line 95 | The twelfth-power argument and common CM value agree; the README makes the conjugate ideal and the exclusion of extra twelfth roots in H explicit. |
| 2.11 Vanishing trace | GZ83 Corollary 6 proof, p.87; GZ83 line 98; GZ86 I (7.4), p.231, GZ86 line 329 | The degree-three modular unit gives a principal divisor, and the nonzero untwisted value is needed to deduce twisted first-derivative vanishing. |
| 3.1 Symmetric-square factorization | O85 §2.3 (2.3.1)–(2.3.3), p.313; O85 line 190; DEL73 §8.12 p.572, DEL73 line 1972 | O85 uses an imprimitive symmetric square. The README's R_p transport to full WD factors is mathematically consistent in the tested cases, but its claimed supplier is defective (R01). DEL73 supplies the inertia/monodromy determinant convention, not automorphic compatibility. |
| 4.4 Prime sums | Tau Ceti PrimeIdealTheorem line 46; Mathlib PrimeCounting lines 51–57; README lines 930–942 | The ℚ-prime-ideal identification and partial summation are adapters to the pinned qualitative PNT. Zero-based prime indexing and inclusive counting agree. |
| 4.5 Asymptotic constant | GZ86 I §8 (8.2), p.232; GZ86 line 345 | The asymptotic log C(t)∼4√(t/log t) agrees. Expanding each smooth factor gives 2/√p+O(1/p), hence the factor 4. |
| 4.6 Rational κ | GZ86 I (8.1), p.232; GZ86 line 340; O85 pp.310–311 | Those sources give effective existence, not this rational formula. The ceiling formula is explicitly derived here from the majorant and genus bound; its exponents 302 and 814 check. |
| 4.8 Effective finiteness | O85 §3.6 p.319, O85 line 368; GZ86 I §8 p.232 | Source supports effective finiteness. The explicit exponents 604 and 605 are the roadmap's consequence of κ(1/2)=2⁻³⁰², not attributed as printed source constants. |
| 4.9 Siegel comparison | G77 §1 p.219, G77 line 27; O85 introduction pp.309–310 | The ineffective power constant and effective logarithmic constant have different quantifiers. The class-number formula uses the correct exceptional-unit factor. |
| 5.1 Prime discriminant | GZ86 I §8 p.232, GZ86 line 347; LLS70 pp.445–446 | Genus divisibility plus the one-prime fundamental-discriminant classification gives −p after excluding −4 and −8 by their class number 1. |
| 5.2 Odd Hardy functions | MW74 §5 formula (8), pp.539–540; MW74 line 348; DLMF §5.11(i),(ii), DLMF line 490 | The gamma argument is 3/4+it/2; the continuous log-Gamma branch, reality and zero comparison are consistent. The bounds require tails, not rounded values alone. |
| 5.3 Three zeros | MW74 Table I p.537, MW74 line 257 and line 285; §5 pp.539–542 | The three approximations and their last-place accuracy agree with the proposed brackets. The README correctly makes endpoint sign enclosures a target and does not infer simplicity, lowest-zero status or GRH. |

COG04 Lecture 9 §§3–6, pp.71–74 (COG04 line 3284, line 3290 and line 3341) was also checked for the self-pair pole case, functional equation and strip argument. The README does not confuse bounded completed functions with polynomially bounded finite functions. DLMF (5.11.9) and its remainder discussion support the Gamma adapter; DEL73 retains ker N and inertia. LLS70 Table III was checked in both columns: the least integers at 43 and 67 are not the least primes (LLS70 line 530 through line 575).

### Computed adversarial pass

The 117 rows below record actual exact calculations or numerical diagnostic evaluations, including negative controls. Decimal quadrature and finite series evaluations are **diagnostics**, not proofs of the proposed rational enclosures. Source verification and dependency auditing are separate from those calculations. “Keep” means no change indicated by that instance, not that finitely many examples prove a universal theorem. Multiple API laws about one object are separated where their tests differ.

| Statement | Instances tried | Values computed on the two sides | Result; change |
|---|---|---|---|
| 0.1 Discriminant/radicand convention | ℚ(√−1), ℚ(√−2), ℚ(√−3), ℚ(√5) | Radicands −1,−2,−3,5 give discriminants −4,−8,−3,5; only the first three have negative discriminant | Keep both real and imaginary branches |
| 0.1 Fundamental field discriminants | D=−3,−4,−8,−12,−16 | Fundamental predicate true,true,true,false,false; −12/4=−3≡1 mod4 and −16/4=−4 is not squarefree | Keep the full mod-4 alternatives |
| 0.1 Genus divisibility | D=−23,−20,−84 | (t,h)=(1,3),(2,2),(3,4); 2^(t−1)=1,2,4 divides 3,2,4 | Keep |
| 0.1 One-prime classification | −4,−8,−23 versus −243 | First three fundamental with one prime divisor; −243=−3⁵ fails squarefreeness | Keep |
| 0.2 Reducedness versus definiteness | (0,0,1), (1,0,1) | Both satisfy reducedness; discriminants 0 and −4; first has infinitely many m at n=1, second has one point at t=1 | Keep negative-discriminant hypothesis |
| 0.2 Full versus primitive finite set | d=12 | Forms (1,0,3),(2,2,2) have contents 1,2; full count 2 versus primitive count 1 | Fundamental restriction essential |
| 0.2 Class count and boundaries | d=3,4,7,8 | Unique representatives (1,1,1),(1,0,1),(1,1,2),(1,0,2); h=1 in all four | Keep tie-breaking; do not double boundary representatives |
| 0.2 Last coefficient | (1,0,1), (1,1,6), (5,1,7) | c=1,6,7 versus √d/2=1,2.3979,5.8949; equality only in the d=4 example | Keep exceptional equality |
| 0.3 Weight and total values | d=0,1,16,23 | Empty product after removal gives 1 in each; prime powers counted distinctly, not with multiplicity | Keep |
| 0.3 Nontrivial weight | d=15,20,84 | θ=1/4,1/3,1/12; at p=2,3 factors 1−2/3=1/3 and 1−3/4=1/4 | Keep floor and omit largest prime |
| 0.4 Split-prime obstruction | d=23,h=3,p=2; d=163,h=1,p=41 | p^h=8,41 versus d/4=5.75,40.75 | Keep; the near-boundary h=1 case tests the factor 4 |
| 0.5 Small Liouville agreement | d=163,h=1,n=2,4,6 | χ values −1,+1,+1 equal λ values −1,+1,+1; threshold d/4=40.75 | Keep coprimality and strict threshold |
| 0.6 Norm/form identity | q=(2,1,3), (m,n)=(1,0),(0,1) | Norms 4,6 divided by ideal norm 2 give 2,3, exactly q-values | Keep ideal norm |
| 0.6 Inverse-class orientation | q=(2,±1,3), D=−23 | The two ideals multiply to (2); their classes are inverse, whereas q(1,1)=6 and 4 respectively | Keep explicit plus-b/minus-b transport |
| 0.6 Units | D=−3,−4,−23 | Unit counts 6,4,2; using half an Epstein sum would overcount by 3,2,1 | Keep d>4 only for simplified decomposition |
| 0.6 Local quotient factor | χ(p)=−1,0,+1 | (1+X)/(1−χX)=1,1+X,1+2X+2X²+… respectively | Keep ramified factor and nonnegative coefficients |
| 0.6 Small coefficient bound | d=23 | ν₁=1,ν₂=2; sum to √23/2 is 3=h; Σ a⁻¹=1+1/2+1/2=2 | Keep |
| 0.7 Count definition/API | q=(1,0,1), t=0,1,2 | N_q=0,1,3; doubling the n-sign gives 0,2,6 | Keep n≥1 |
| 0.7 Integrated headline | d=4,A=2; d=23,A=12 | Left 1,20; right 3π/4=2.35619449,45.28153066 | Keep |
| 0.7 Nonprimitive generality | q=(2,2,2),d=12,A=4 | Left 4; right 5.89484793 | Keep theorem for all reduced negative-discriminant forms |
| 0.7 Degenerate endpoint | A=0 and A=√d/2 | Left=right=0 in both cases; for discriminant 0 the infinite cardinal is totalized to 0 | Keep d>0; no spurious finite-count inference |
| 0.7 Comparison measure | s=2,d=4 | Atom plus continuous part gives π; omitting atom gives π/2; formula 4π/d=π | Keep atom π/2 |
| 0.7 Sum/integral negative control | q=(1,0,1),n=1,A=17/16 | Discrete hinge sum 1/16; real integral 1/48 | Keep complete-count argument, not termwise domination |
| 1.1 Completion normalization | s=1; d=23,s=2 | Multipliers M and 23M² respectively (Γ(1)=Γ(2)=1) | Keep d^(s−1), not d^s |
| 1.2 Square support | n=2,4,9 | Coefficient bound 0, 2·τ(2)=4, 3·τ(3)=6 | Keep: an ordinary restored linear Euler factor fails at n=p |
| 1.2 Local denominator | p=2, Re s=3/4 | Root ratio ≤2^(−1/4)=0.840896<1; at Re s=1 it is ≤1/√2 | Keep nonvanishing argument |
| 1.3 Kernel value/support | (a,m,x)=(0,2,1/2),(1,2,1/2),(0,3,1/2), x=1,2 | Values log2=.693147,2log2=1.386294,(log2)²/2=.240227,0,0 | Keep exponent and factorial |
| 1.3 Antitonicity restriction | a=−1,m=2,x=1/16,1/4 | Values log2/4=.173287 < log2/2=.346574 | Correctly excludes a<0 from comparison |
| 1.3 Mellin transform | a=0,m=2,s=2; a=1,m=2,s=2 | ∫₀¹x log(1/x)dx=1/4=(2−0)⁻²; ∫₀¹log(1/x)dx=1=(2−1)⁻² | Keep Re s>a |
| 1.4 Integrated versus pointwise order | δ₁ versus (δ₁/₂+δ₃/₂)/2, T=1,2 | Integrated masses 0≤1/4 and 1=1; cumulative masses at 1 are 1>1/2 | Keep integrated hypothesis |
| 1.4 Kernel comparison | Same measures, a=0,m=2,x=1 | Kernel integrals 0≤log2/2=.346574 | Keep |
| 1.4 Positivity and empty product | −δ₁/₂ versus 0; empty index set,x=1/2 | Signed integral −log2<0 despite integrated order; empty products both give log2 | Keep positive measures; empty case works |
| 1.5 Even contour cancellation | F=(s−1)⁴exp((s−1)²) | Upward line integral is 0 and reflection gives its negative 0 | Keep |
| 1.5 Sign/order controls | F=(s−1)³exp((s−1)²); F=exp((s−1)²) | First gives 1/(2√π), second 1/2, both nonzero | Keep positive reflection and vanishing assumptions |
| 1.6 Residue | H=G=1,d=23 | Derivative of 23^(s−1) at 1 is log23=3.135494, equal to displayed residue | Keep |
| 1.6 Removable extension and cutoff | γΨ=s−1; U=2 | H(1)=1 whereas totalized quotient at 1 is 0; primes<2 form empty product 1 | Keep removable extension and strict cutoff |
| 1.7 J₂ normalization | M=N/(4π²) | (2π⁴/3)M^(3/2)=πN^(3/2)/12; Σa⁻¹ at d=23 is 2 | Keep exponent 3/2 |
| 1.7 J₁/J₃ signs | dM/U=e⁻³; log(4M)<2 | Correct fourth power is (3+3)⁴=1296, unsigned alternative 0; max(2,log4M)=2>0 | Keep absolute value and maximum |
| 1.8 Choice of m | h=4,t=3 | Integer m=1 gives 2m=2<3; special m=3/2 gives 2m=3 | Keep exception |
| 1.8 Uniform technical headline | P(d)=∅; d=23,h=3 | Product and minimum both 1; conclusion specializes to log23≤3C, i.e. C≥1.0451647 | No input-dependent C introduced; keep uniform quantifier order |
| 2.1 E₁₃₉ model | Displayed coefficients | (c₄,c₆,Δ)=(3091360,5392722952,266864328286957); Δ=37·139⁶ | Keep nonsingular native curve |
| 2.1 Rational points | (−156,77),(510,9660),(1344,48302),(350,3740) | Both equation sides respectively 6006,93325260,2333131506,13991340 | Keep |
| 2.2 E₅₀₇₇ model | Displayed coefficients | c₄=336,c₆=−5400,Δ=5077 | Keep |
| 2.2 Points and sign | (0,2),(1,0),(2,0); wrong (0,−2) | Sides 6=6,0=0,0=0; wrong sign gives 2≠6 | Keep y²+y convention |
| 2.3 Good local coefficients | E₅₀₇₇ over F₂,F₃,F₅ | Point counts 5,7,10; a_p=−2,−3,−4, hence local polynomials 1+2T+2T²,1+3T+3T²,1+4T+5T² | Keep native minimal-model factors |
| 2.3 Twist convention | E₃₇ and E₁₃₉ at p=3 | Counts 3 and 5 give a₃=1 and −1; χ_(−139)(3)=−1 | Keep negative twist |
| 2.3 Conductors/signs | E₁₃₉; twist overlap at 37 | 37·139²=714877; √(37·37²)/37=√37, not 37 | Keep ramified scale |
| 2.3 Parity adapter | Reflection signs ±1 | Even Taylor expansion permits order 0,2; odd expansion permits 1,3; nonzero third and zero first give order 3 | Keep non-identically-zero condition |
| 2.4 Height matrices | Rounded displayed 3×3 matrices | Determinants ≈.41715183 and 15.36492030, both positive; replacing full height by half height divides determinants by 8 | Keep full-height normalization; rounded matrices are only diagnostics |
| 2.5 BGZ kernels | x=1,r=1,3 | .2193839344 and .0356034919, both below exp(−1)=.3678794412 | Keep |
| 2.5 Kernel bounds | x=2,r=1,3 | .0489005107≤.0676676416 and .0035441276≤.0169169104 | Keep factorial/integration measure |
| 2.5 Large-x control | x=5,r=1,3 | .0011482956≤.0013475894 and .0000233967≤.0000539036 | Keep |
| 2.6 Derivative normalization | E₅₀₇₇,r=3 | Series computes L‴(1)/6≈1.7318499001; L‴≈10.3910994007 | Keep 2r!; do not confuse derivative with Taylor coefficient |
| 2.6 Tail bound | E₅₀₇₇,B=400,r=1 | Displayed elementary majorant ≈5.89143·10⁻¹⁶<10⁻¹² | Keep tail as separate obligation |
| 2.7 Positive-sign central value | E₃₇,r=0 | .7256810619 lies strictly between .72 and .73 | Keep positive-sign formula |
| 2.7 First-derivative diagnostic | E₅₀₇₇ | Numerical kernel sum ≈4.7·10⁻¹⁷ versus requested 10⁻¹² enclosure | Consistent; numerical closeness alone does not establish exact zero |
| 2.8 Cyclic CM construction | N=37,D=−139; N=27,D=−3 | Norm(λ)=(9+139)/4=37; at 27 quotient is Z/9×Z/3 of size27 and exponent9, not cyclic of order27 | Keep cyclic-quotient hypothesis |
| 2.8 Artin inverse | Class b of order3 | x₁ maps to x_(b²), then x_b; direct action would give x_b at first step | Keep inverse convention |
| 2.8 Relative heights | h(K)=3; rational point of full Q-height1 | H-height6, K-height2, Q-height1; H/K ratio3 | Keep relative-height factors |
| 2.8 Parametrization scaling | φ replaced by [2]φ | Trace height ×4, degree ×4, C²×4, displayed constant ÷4; product unchanged | Keep fixed parametrization for numerical c bound |
| 2.8 Product rule | A=L(E,1)=0; alternatively B=L(Eᴰ,1)=0 | Derivative A′B+AB′ reduces respectively to A′B and AB′ | Keep both branches; E₃₇ uses the second |
| 2.8 Height-gap implication | b=4.5,c=6·10⁻¹²,δ=1 | Nonzero η≥1 forces abs(ab)≥6·10⁻¹²; analytic bounds give <4.5·10⁻¹² | Contradiction forces η=a=0; keep quantitative c bound |
| 2.8 Rational descent torsion test | E₅₀₇₇ over F₉,F₂₅ | Counts 7 and20; gcd=1; relative K-height gap is 2·(1/2)=1 | Keep actual rational descent |
| 2.9 Modular unit | η quotient at ∞ | q exponent (2−74)/24=−3; first coefficients 1,−2; divisor degree3−3=0 | Keep u¹²=Δ/Δ₃₇ |
| 2.10 CM identity | λ=(3+√−139)/2 | λλ̄=37, 37/λ=λ̄; 37¹²/λ¹²=λ̄¹² | Keep conjugate ideal |
| 2.10 Common value | [H:K]=3, ζ¹²=1 | Adjoining i or ζ₃ has degree2, which does not divide3; remaining possible ζ are ±1 | Keep degree argument in H |
| 2.11 Principal trace | Three distinct CM points, u degree3 | Three simple zeros and pole order3 give divisor degree0 and class0; .725681…·L′(E₁₃₉)=0 forces derivative0 | Keep nonvanishing untwisted factor |
| 2.12 Rank-three headline | E₁₃₉ Taylor coefficient | L‴/6≈18.42943736 in (18.42,18.44); nonzero third with vanishing first gives order3 | Keep; arithmetic independence and descent remain proof obligations |
| 2.13 Rank-three headline | E₅₀₇₇ Taylor coefficient | 1.7318499001 in (1.73,1.74); third derivative ≠0 | Keep |
| 3.1 Good Liouville/symmetric-square factors | p=5,a_p=0,s=1 | Ψ_p=25/36, L_p(Sym²,2)=125/144, (1−1/5)L_p/Ψ_p=1 | Keep full-factor formula |
| 3.1 Multiplicative correction | p=5,s=1 | R_p=1−1/5=4/5, not1 | R01: good-prime comparison is insufficient |
| 3.1 Ramified self-pair comparison | Split multiplicative p=5,u=1 | With ker N:125/96; replacing WD by unramified semisimple data gives a zero denominator | R01: cite actual ramified pair compatibility |
| 3.1 Quadratic good-twist correction | Untwisted p=5,a_p=0 | Additive original Ψ_p=1; R_p=(1+1/5)⁻²=25/36 | R01 repair must cover this too |
| 3.1 Simple-zero derivative | ζ(2s−1) pole at1 | Reciprocal has first term 2(s−1); Ψ′(1)=2L(Sym²,2)/∏R_p(1), not the same expression without2 | Keep |
| 3.1 Strip-growth normalization | Γ at σ=1 versus σ=2 | Recurrence gives abs(Γ(2+it)/Γ(1+it))=√(1+t²); exponential factors cancel | Keep finite-function growth adapter |
| 3.2 Coprime sign | Odd χ and χ(N)=−1 | χ(−N)=χ(−1)χ(N)=(−1)(−1)=+1 | Keep product reflection sign |
| 3.3 Restored Ψ at139 | B=(1+262X²+19321X⁴)⁻¹ | Coefficients at X,X² are 0,−262; ordinary restored factor has coefficient −4ε at X | Keep squared restoration; source error corrected |
| 3.3 Taylor correction | s=1 | B=19321/19584; B′/B=11log139/408≈.1330372874 | Keep both c₁ and c₂ corrections |
| 3.3 Both signs | ε=+1,−1 | G₁₃₉(1)/(1+1/139)=34/35,36/35; θ factor117/140 is smaller than both | Keep both signs |
| 3.4 Petersson constant | Substitute M=N/(4π²), Ψ′=2Lsym/∏R | MΨ′=4π(f,f)∏p/(p−1); c₅=πN^(3/2)/12 | Keep measure factor2 |
| 3.4 Scale error control | N=5077 | √M=√5077/(2π)=11.3402783; changing M^(3/2) to M loses this factor | Keep 3/2 power |
| 3.5 Excluded discriminant | −5077 | −5077≡3 mod4, not0 or1 | Correctly impossible as a field discriminant |
| 3.6 Universal headline | d=3,4,23,139,907 | θlogd=1.098612,1.386294,3.135494,4.934474,6.810142; 7000h=7000,7000,21000,21000,21000 | Keep exceptional and ramified cases |
| 3.7 Coprime headline | Same five d | gcd(d,5077)=1; left as preceding row; 55h=55,55,165,165,165 | Keep coprimality hypothesis |
| 4.1 Prime-product majorant | t=0,1,2,c=55 | Empty products give55,55; C(2)=165/(3−2√2)=961.6904756 | Keep natural subtraction convention |
| 4.2 Weight domination | d=20,t=2,c=55 | θC=(1/3)·961.6904756=320.5634919≥55 | Keep smooth upper majorant distinct from floored θ |
| 4.2 Logarithmic estimate | t=1,c=7000 | log C=log7000≈8.853665 versus log7000+16≈24.853665 | Keep coarse estimate |
| 4.3 t-dependent bound | d=23,h=3,t=1,c=55 | log23=3.135494≤C(1)h=165 | Keep |
| 4.4 Inclusive prime count | x=−1,0,1,2,3 | Prime-ideal and rational-prime counts both0,0,0,1,2; strict counting at2 instead gives0 | Keep floor/zero and inclusive convention |
| 4.4 Indexed primes | j=0,1,4,100 | p_j=2,3,11,547; at j=100, jlogj≈460.517 | Keep zero-based indexing; asymptotic is not an inequality |
| 4.4 Reciprocal-root sum | n=5,100,10000 | S_n=2.411146,10.165686,71.325749; 2√(n/logn)=3.525152,9.319812,65.901023 | Keep limiting assertion, not small-n equality |
| 4.5 log C asymptotic | c=55,t=100,10000 | log C=29.316213,152.932555 versus main terms18.639624,131.802046 | Consistent with slow convergence |
| 4.5 Leading coefficient | r=1/√p→0 | log((1+r²)/(1−r)²)=2r+2r²+O(r³); multiplying S_n main term gives4√(n/logn) | Keep coefficient4 |
| 4.6 κ branches | q=0,1/4,1/2,1,2 | 0,2⁻⁸¹⁴,2⁻³⁰²,1/2,1/2 | Keep positivity only for q>0 |
| 4.6 Ceiling and monotonicity | q=3/5 versus1/2 | 256(1−q)/q=512/3; ceiling171; κ=2⁻²¹⁷>2⁻³⁰²; floor would give2⁻²¹⁶ | Keep ceiling; useful additional discriminating Check |
| 4.6 Growth optimization | δ=1,u=128 | 16√(u/log2)≈217.31≤u+64/log2≈220.33 | Keep Young-inequality constant |
| 4.7 Effective headline | d=907,h=3,q=1/2 | κ√log907≈3.2027232·10⁻⁹¹<3 | Keep strict inequality |
| 4.7 Large exponent/quantifiers | q=1,ε=1 or2,d=3 | κ(log3)^0=1/2; κ/log3≈.45512; both<1=h | Keep ε≥q and d≥3 |
| 4.8 Cutoff headline | q=1/2,H=1 | Squaring gives logd<2⁶⁰⁴; exp(2⁶⁰⁴)<4^(2⁶⁰⁴)=2^(2⁶⁰⁵) | Keep exponent604→605 |
| 4.8 H=0 control | Imaginary quadratic K | h(K)≥1, so h(K)=0 is false; no accidental classification of zero-class-number fields | Keep signature as written |
| 4.9 Class-number translation | d=907,h=3,u=1; d=3,h=1,u=3 | L(1)=3π/√907≈.312944616; L(1)=π/(3√3)≈.604599788 | Keep u in denominator |
| 4.9 Distinct growth regimes | η=1/4,q=1/2,d=10¹² | d^(1/2−η)=1000, √logd≈5.25652; constants have different effectivity status | Keep quantifier distinction |
| 5.1 Prime-discriminant reduction | h=3, p=23,31 | 2^(t−1) divides3 forces t=1; both p≡7 mod8 and p≤4·2³=32 | Keep dyadic splitting |
| 5.2 Hardy normalization | χ_(−3),t=0 | Z(0)=L(1/2)≈.480867558>0; completed Λ(1/2)≈.569230038 | Keep gamma3/4, not gamma1/4 |
| 5.2 Zero comparison | t=0 | Phase multiplier exp(i·0)=1, modulus1; multiplying by it preserves zeros | Keep continuous phase |
| 5.3 First zero bracket | k=17923,t=.030985,.030987 | Completed real Λ values ≈+.0002493058,−.0003743616; its positive scale gives the same signs as Z | Consistent; retain rigorous endpoint-tail proof |
| 5.3 Second zero bracket | k=115147,t=.003157,.003159 | Λ≈+.0000765836,−.0001716536 | Consistent; retain rigorous endpoint-tail proof |
| 5.3 Third zero bracket | k=123204,t=.010649,.010651 | Λ≈+.0014794421,−.0017609091 | Consistent; retain rigorous endpoint-tail proof |
| 5.3 Character discriminants | k=115147,123204 | 113·1019=115147; 4·3·10267=123204; χ(2)=−1,0 respectively | Keep fundamental-discriminant and dyadic branches |
| 5.4 MW headline/coverage | Cut points 10⁵²,10¹²,10²⁵⁰⁰ | Closed ranges meet at10⁵²; 10¹²≤10⁷²≤10²⁵⁰⁰; both exceptional windows850–860 and1705–1735 lie inside52–2500 | Keep all three auxiliary conductors; source proves exclusion, these tests only check range assembly |
| 5.5 Inert condition boundaries | x=0,p=3; x=3,p=3 | First true (3 mod8); second false since (−3/3)=0≠−1 | Keep convention for x<2 |
| 5.5 Prime versus integer pattern | N=77683 | 131·593=77683, N≡3 mod8, all symbols through43 equal−1; nevertheless not prime | Keep least-prime column |
| 5.5 Listed membership | p=1333963,51599563,1432817816347 | Each≡3 mod8; every tested small-prime symbol is−1 through47,67,163 respectively | Membership agrees; minimality checked against LLS70, not inferred from membership |
| 5.6 Small-range chain | Thresholds43,67,163 | 4·43³=318028;4·67³=1203052<1333963;4·163³=17322988<51599563;1432817816347>10¹² | Keep strict inequalities |
| 5.7 Global cutoff assembly | h=3,θ=1 | 55h=165<72log10≈165.7861267; remaining large range lies within MW interval | Keep both small- and large-range exclusions |
| 5.8 List definition and iff | Fundamental d≤907 | Exactly [23,31,59,83,107,139,211,283,307,331,379,499,547,643,883,907] have three reduced forms | Both directions verified in this finite range; source/exclusion supplies larger-d direction |
| 5.8 Endpoint and negative controls | d=907,163,12 | Counts3,1,2; −907 in list, −163 not; −12 nonfundamental and excluded before field interpretation | Keep maximal-order field hypotheses |

### Pinned declarations and ownership

Pins checked: Mathlib `6b7abb3c7686292736be2955bd3eb9ebf63b456a`, Tau Ceti `a91d3aafa8cd3e6bc33dfde0d7677ed0f1625039`. The following are concrete opened declarations, not name-only search matches. Paths are relative to the named library.

| Library file and line | Declaration/content inspected | Consequence for this review |
|---|---|---|
| Mathlib `Mathlib/AlgebraicGeometry/EllipticCurve/LFunction.lean:44` | `WeierstrassCurve.localPolynomial`, using a minimal model and natural cardinality of the residue field | General DVRs can have junk q=0; this roadmap uses actual finite residue fields and does not generalize the point-count formulas to arbitrary DVRs. |
| Same file, line 79 | `WeierstrassCurve.LFunction`; line 84 `WeierstrassCurve.LSeries` | Native formal Euler series already exists, with good, split, nonsplit and additive factors; analytic continuation is a separate supplier. |
| Mathlib `Mathlib/NumberTheory/PrimeCounting.lean:51` | `Nat.primeCounting'`; line 57 `Nat.primeCounting`; line 79 `primeCounting'_nth_eq` | Strict versus inclusive count and zero-based prime indexing resolved. |
| Tau Ceti `TauCeti/NumberTheory/BinaryQuadraticForm/Reduced.lean:60` | `IsReducedForm`; line 76 `reducedForms`; line 83 `mem_reducedForms`; line 100 `reducedForms_zero` | Reducedness alone has no definiteness or primitivity. d=0 has empty native finite set; the d>0 hypotheses are needed. |
| Tau Ceti `TauCeti/AlgebraicGeometry/EllipticCurve/MordellWeil/PointModTorsion.lean:56` | `PointModTorsion` is the native quotient by module torsion | Rank statements use the actual rational point group, not a free rank parameter. |
| Tau Ceti `TauCeti/AlgebraicGeometry/EllipticCurve/CanonicalHeight/Basic.lean:119` | `Point.canonicalHeight`; lines 171,181,277,317 for zero, negation, homogeneity and torsion implication | Full x-height normalization; the zero-implies-torsion result requires ellipticity and Northcott, available for these number-field instances. |
| Tau Ceti `TauCeti/AlgebraicGeometry/EllipticCurve/QuadraticTwist/Basic.lean:169` | `quadraticTwistOf` uses trace/norm parameters with discriminant t²−4n | The negative quadratic twist is compared with the concrete model, not guessed from a coefficient sign. |
| Tau Ceti `TauCeti/NumberTheory/Multiquadratic/Quadratic/Discriminant.lean:50` | `discr_eq_fundamentalDiscriminant`; line 63 norm equation | Squarefree radicand, minimal polynomial and generation hypotheses are retained in the field adapter. |
| Tau Ceti `TauCeti/NumberTheory/ArithmeticDirichletSeries/Prime/PrimeIdealTheorem.lean:46` | `primeCount_univ_isEquivalent_div_log` | Supplies the qualitative number-field prime-ideal theorem, not a second owned PNT here. |
| Tau Ceti `TauCeti/NumberTheory/ArithmeticDirichletSeries/Counting.lean:672` | `primeCount_eq_card` | Connects the counting function to prime ideals for the ℚ adapter. |

Object searches covered reduced forms and class groups, canonical heights and ranks, quadratic twists and local polynomials, Mellin kernels and integrated lattice counts, prime counts and asymptotics, Heegner traces and Gross–Zagier formulas, symmetric-square and Rankin–Selberg local factors, and the exact headline declaration names. Searches used the pinned trees, main-roadmap content, package designs and the roadmap service's open-head index. No other readable Suggested.lean declares one of this file's fully qualified names. No full arithmetic Heegner/Jacobian-height comparison or elliptic WD/symmetric-square carrier was found at the pins; the module docstring identifies those unstatable headlines rather than encoding substitutes.

The following supplier references were resolved against their actual main copy or supplied open head:

- ImaginaryQuadraticClassNumber H1.1–H1.3, H2.1–H2.4 and H3.1: negative radicands, discriminants, primitive form counting, quadratic characters, zeta/class-number formulas, Siegel and CM action. Its H1.3 primitive restriction is real. The declared `gap:fundamental-reduced-forms-primitive` is precise and has a named owner; the README's line 97 gives the elementary fundamental-discriminant primitivity argument. The counterexample d=12 explains why “fundamental” cannot be dropped. This declared contract is not reported as an unowned prerequisite.
- IntegralLattices B1/B2/B5, especially `TauCetiRoadmap/IntegralLattices/README.md:1003`, 1032 and its reduced-representative section: the correspondence is reused. Its minus-b ideal and this roadmap's plus-b ideal are conjugate; the norm and inverse-class calculation above resolves the convention.
- EllipticCurves Layers 1,3–6: Vélu quotients, finite-field counts, minimal models/reduction, twists, descent and canonical heights. The conductor comparison to a Galois representation comes from EllipticCurveModularity, not merely the reduction algorithm.
- ModularForms worked examples (`TauCetiRoadmap/ModularForms/README.md:1381`) explicitly include η, its transformation and Ligozat; Layer 3 supplies the Petersson product. ModularCurves Layer 10 (`TauCetiRoadmap/ModularCurves/README.md:2103`) is prime-level geometry with N≥5. The actual uses N=37,5077 satisfy this; general-conductor parametrizations are assigned separately to EllipticCurveModularity R29.5 in §2.8.
- Completed ContourIntegration Layer 2: the null-homologous residue theorem is imported; rectangle limits remain local adapters.
- AnalyticNumberTheoryPartI §§0.9,0.23a,0.33: the gammaRemainder names flagged by the resolver really occur in §0.23a, around lines 503–510 of its README. They are supplier targets, not missing pinned declarations.
- EllipticCurveModularity R29.3–R29.6: level/conductor, bad factors and all Dirichlet coefficients, the quotient/isogeny parametrization and analytic continuation. `IsNewformOf.localPolynomial_eq` is explicitly present in R29.4, around line 1373, so the resolver's third warning is not a missing target. Its reduction/minimality and full WD conditions are retained.
- EffectiveDiophantineMethods §§0.11,3.2–3.7,3.12–3.15,3.17–3.18,3.20,3.22: bounded-height covers, descent/rank bound, height differences/enclosures, independence, a positive height gap, saturation, torsion and bases. In particular §3.12 (line 3462) uses full x-height and §3.15 (line 3587) requires a **proved positive** lower bound; it does not turn an approximate derivative into an exact zero.
- AutomorphicLFunctionsAndLocalFactors AL.3.6.1–AL.3.6.3 and AL.3.9.4 contain the pole, functional-equation, boundary and analytic-data targets; AL.5.3.2 contains central parity and AL.5.4.2 the originally-unramified twist case. The old descriptive anchors are stale. The stronger claim about ramified parameters is R01, not resolved by changing an anchor alone.

Ownership against supplied open work was checked. In particular, `GrossZagierAndArithmeticHeights` §0a.2 and §§8.15,8.19 overlap the classical trace and odd maximal-order formulas here; its scope paragraph explicitly mentions this overlap. EffectiveClassNumbers is the earlier owner in the supplied order and explicitly owns these formulas at line 15. It must not acquire an upward dependency on that later roadmap. The later roadmap's broader ring-class and coefficient-field constructions should consume these classical specializations rather than establish a second ownership claim. This review does not approve that later folder's ownership choice. The extra formula/proof machinery in the later folder is not evidence that the earlier folder can silently assume it.

### Headline completeness and shape

The README's ten statable headline statements are all present: the integrated nonaxial bound (§0.7), Oesterlé's technical theorem (§1.8), the two analytic/arithmetic rank-three theorems (§§2.12–2.13), 7000 and 55 (§§3.6–3.7), the effective logarithmic bound and cutoff (§§4.7–4.8), Montgomery–Weinberger (§5.4), and the sixteen-discriminant iff (§5.8). The docstring explicitly names the unstatable Gross–Zagier/trace and full symmetric-square comparisons and their missing carriers. The seven kept definitions support these headlines and have real bodies. Every retained Lean name occurs in the README.

All six layers have Examples and Dependencies, and the required opening sections and per-target `Needs` lines are present. Definition API/check blocks were examined for the concrete carriers, support, signs, total-function values and exceptional cases recorded above. The source statements are paraphrased with locators; no copied passage was identified. The finite minima and finite classification are mathematical targets, though their truth cannot be inferred merely from the membership computations in this review.

## Not verifiable

- **O88**, §9 pp.66–67: this work is recorded as waived. Its text was not available among the readable legal cached sources; I did not reopen the settled request or claim to certify that locator. The overlapping conclusions were checked in O85 and GZ86.
- This review does not certify all the future rational enclosures or reproduce the large finite exclusions. In particular, §2.8's numerical lower bound for the fixed parametrization and §3.4's 7000 bound after the corrected ramified replacement are explicit new proof obligations. BGZ85 and O85 alone do not provide those additional calculations in the README's exact form. The diagnostics above test signs, normalization and plausibility; they are not substitutes for those proofs.
- The simultaneous all-ramified automorphic/WD supplier contract cannot be certified as currently cited: see R01. No source access request is needed to repair a roadmap ownership citation.

## Source issues

- **Misprint** in O85 at §2.1, printed p.313: the source says the motivic completion reflects s to 1−s; it should be 2−s for the weight-two completion used there; affects a stated result.
- **Error** in O85 at §4.2 and §4.3, printed pp.320–321: the source says to restore an ordinary linear twist factor at an overlapping additive prime; it should be the square-supported Liouville product, with its Taylor and contour corrections recomputed; affects the proof.
- **Error** in GZ83 at the Rankin L-series definition preceding Theorem 1, printed p.85: the source says to use the auxiliary Dirichlet L-factor without removing primes dividing N; it should be the factor with those Euler factors removed; affects a stated result; corrected in print at GZ86 I §5, printed p.229 (GZ86 line 240).
