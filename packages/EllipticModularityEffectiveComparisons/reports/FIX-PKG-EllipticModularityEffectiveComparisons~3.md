# Repair report: elliptic modularity and effective residual comparisons

## F01 (P1) — applied

An assertion under the period supplier → owned §5.10a: geometric cuspidal-divisor torsion for every geometrically connected congruence modular curve over a number field. Added the Hodge/period bridge and full-level norm descent; imported the existing actual period lattice. Updated §5.16, scope, contracts, dependencies, examples and Lean’s missing-carrier explanation. Individual differences, zero classes and the annihilator 35 are README Checks.

Evidence: ModularSymbolsPadicLFunctions §0.8 supplies a rational cohomology retraction, not geometric Jacobian torsion. ModularCurvesPartII §§13.1–13.3 supplies pullback and norm, and §§14.11–14.12 the geometric relative symbol pairing. MordellLawrenceVenkatesh §8.11 already owns the actual Abel–Jacobi period-lattice comparison; it is imported rather than reconstructed. The new target proves compatibility of the rational Hecke projector with that comparison. Elkik’s general theorem and its rational Hodge-splitting route were read at elkik-1990 lines 23–30, 46–71, 119–132, 135–173 and 225–239. The application requires the individual differences at darmon-merel lines 770–776; exact order of the particular sum in §5.12 does not supply them.

## F02 (P1) — applied

“Layer 4 classification specialized to these prime levels” → four explicit singleton rational-point targets in §5.1, with exact j-values and CM discriminants. Added level-19 descent, the three higher-genus finite-fibre exhaustions, exact Eisenstein group inputs, class-polynomial identification and discriminating Checks. Updated the CM corollary’s route/Needs, scope, examples, layer dependencies and Lean’s missing-carrier explanation.

Evidence: mazur-1978 lines 14–29 gives the counts and CM points separately from the degree restriction at lines 31–40. The primary earlier table is mazur-1977 lines 300–574, printed p.40 with its column definitions p.41; the relevant counts are one at 19,43,67,163. Its finite-quotient argument is at mazur-1977 lines 73–97, pp.34–35. EisensteinIdealAndRationalTorsion §6.4 supplies the exact cyclic quotient groups of orders 3,7,11,27. The exact rational fibres remain targets here; neither those group orders nor formal immersion at cusps proves their exhaustion. General CM/class-polynomial theory stays with ComplexMultiplicationAndExplicitReciprocity §3.1 and §§5.1–5.5.

## F03 (P3) — applied

The §0.3 locator “equations (13)–(15), p.9, line 430” → “§2, equations (13)–(15), pp.8–9, martin-2003 lines 429–454”. Equation (13) ends page 8; the page-9 marker is line 430, and equations (14) and (15) occur at lines 443 and 454. Searched the remaining convolution and page locators; no second instance required correction.

## Required checks

- Required package elaboration from the content checkout: exit 0. Exactly eight `declaration uses sorry` warnings at Suggested.lean lines 72,77,118,124,130,137,164,172; no errors or other warnings. All six imported Tau Ceti modules had their object files; no module build was necessary.
- A separate scratch module containing the final file followed by `#check @name` for all 17 declarations also elaborated: exit 0, the same eight expected warnings. Compared every elaborated signature with its README statement. No binder was lost; no theorem signature, definition body or name changed. The file has one `import Mathlib`, six individual used Tau Ceti imports, eight sorried headline theorems, eight real definitions/abbreviations and one instance. No added padding or admitted data.
- The new general cusp-torsion and four point-exhaustion targets cannot be stated on the pinned arithmetic modular curves and their cusp/Jacobian loci: those carriers are missing. This is stated in the module docstring; no substitute predicate or theorem was introduced.
- Required dependency check: exit 0, with exact output below. No UPWARD, CYCLE or moved line. The merge order was not edited.

```text
depcheck: 52 roadmaps, 599 edges, 0 problem(s)
```

The citation resolver exited 0 and reported no cross-roadmap citation or roadmap Lean name found nowhere, against service main e98875d and the 363 open heads indexed 2026-10-25T14:06:45Z. Its external-library warning was handled by direct inspection at the pins and Lean elaboration. Local main roadmap reads used the supplied content checkout (HEAD 794d0fcd); open suppliers were read through `roadmaps show`, not inferred from search snippets. Mathlib is pinned at 6b7abb3c7686292736be2955bd3eb9ebf63b456a and Tau Ceti at a91d3aafa8cd3e6bc33dfde0d7677ed0f1625039.

No gate failures were listed in the brief. `git diff --check` passes. Metadata and design/plan.json are unchanged. All eight existing supplier-gap contracts still have the same slugs, suppliers, sections and needs in the top-level gaps list and the exact supplier contracts; no additional supplier gap is required by these repairs.

The signature comparison covers the following declarations individually:

| Declaration | Elaborated hypotheses and object compared with README | Outcome |
| --- | --- | --- |
| localTerms | ℕ→ℕ→Fin 5→ℚ | Same total prime-power table |
| martinValue | ℕ→ℚ | Same zero branch and five products |
| newDimension | N:ℕ, [NeZero N] | Same native trivial-character newspace |
| martin_dimension_formula | N:ℕ, [NeZero N] | Same dimension equality |
| martin_sharp_bound | N:ℕ, [NeZero N] | Same inequality and both equality directions |
| GeometricTorsion | E:WeierstrassCurve ℚ, [E.IsElliptic], n:ℕ | Same geometric, not rational, torsion |
| CyclicIsogenyDegree | E:WeierstrassCurve ℚ, [E.IsElliptic], n:ℕ | Same rational isogeny and cyclic geometric kernel |
| torsionModule | E, [E.IsElliptic], n:ℕ | Same native ZMod n module |
| torsionRepresentation | E, [E.IsElliptic], n:ℕ | Same coordinate Galois action as a linear representation |
| prime_cyclic_isogeny_degrees | E, [E.IsElliptic], prime r, CyclicIsogenyDegree E r | Same twelve-prime list, including CM degrees |
| rational_cyclic_isogeny_degrees | E, [E.IsElliptic], CyclicIsogenyDegree E n | Same complete necessary degree list including 1 |
| rational_two_uniform_irreducibility | E, [E.IsElliptic], prime ell≥11, nonzero rational two-point | Same native irreducibility |
| full_two_uniform_irreducibility | E, [E.IsElliptic], prime ell≥5, rational two-torsion cardinality 4 | Same native irreducibility |
| GeometricallyNonCM | E, [E.IsElliptic] | Every geometric endomorphism is an integer scalar |
| SplitNormalizerImage | E, [E.IsElliptic], p:ℕ | Same invariant unordered pair of distinct order-p subgroups |
| split_normalizer_exclusion | E, [E.IsElliptic], geometric non-CM, prime p>11, p≠13 | Same image exclusion |
| lemos_uniform_surjectivity | E, [E.IsElliptic], geometric non-CM, cyclic isogeny degree n>1, prime p>37 | Same full native torsion-automorphism image |

## Adversarial mathematics pass

Each row is a falsification check, not a proof of the future library theorem or independent acceptance. The unchanged statements’ earlier numerical witnesses were re-examined; finite arithmetic families, traces, genera, candidate sets and the new exceptional-prime values were recomputed. Symbolic rows record the actual group, divisor or lattice calculation. Exact rational-point exhaustions and universal image assertions remain roadmap targets: their target counts are identified as such rather than passed off as newly reconstructed proofs. All added mathematical assertions and changed consumers have additional rows below.

| Statement | Instances tried | Computed values / both sides | Result | Change |
| --- | --- | --- | --- | --- |
| --- | --- | --- | --- | Retained; values re-examined |
| Conventions: nonsingularity | y²=x³−x; y²=x³ | Δ=64 versus 0 | Singular input excluded | Retained; values re-examined |
| Conventions: arithmetic Frobenius | y²+y=x³−x over 𝔽₂ | #E=5; a₂=−2; root product 2, inverse product 1/2 | Direction distinguished | Retained; values re-examined |
| Conventions: multiplicative sign | q=3, split/nonsplit | removed traces 4 and −4; determinant 3 | Signs distinguished | Retained; values re-examined |
| Conventions: valuation | Δ=−11⁵, ℓ=5 | exponent 5, prime power 161051; deletion removes one factor 11 | Exponent distinguished | Retained; values re-examined |
| Conventions: winding orientation | q+2q² | L contribution 2; differential integral −2; unscaled integral i/π | Sign/scale consistent | Retained; values re-examined |
| Conventions: cusp width | width 11, f=t+2t², characteristic 23 | differential 11dt+22t dt; cotangent 11≠0, a₀=0 | Wrong coefficient excluded | Retained; values re-examined |
| §0.1 localTerms | (0,0),(4,1),(2,2),(3,2),(2,3) | five ones; five zeros; (1/4,0,−1,1,0); (5/9,1,1,−1,0); (3/8,0,1,0,0) | Exceptional/junk branches agree | Retained; values re-examined |
| §0.2 martinValue | N=0,1,11,30,35 | 0,0,1,1,3; unguarded N=0 would give −1/12 | Zero branch necessary | Retained; values re-examined |
| §0.3 convolution inverse | exponents 0,1,2,3 | μ∗μ=1,−2,1,0; convolution with τ at p² is 3−4+1=0 | Identity distinguished | F03: locator corrected |
| §0.4 five inverted terms | N=1,11 | 1/12−1/2−1/4−1/3+1=0; 10/12+1/2+2/3−1=1 | Weight-two correction agrees | Retained; values re-examined |
| §0.5 newDimension / dimension formula | N=1,11,30,35 | dimensions 0,1,1,3; full dimension at 30 is 3 | Character and newness matter | Retained; values re-examined |
| §0.6 correction bounds | N=1,4 | V∞=1 at 1; at 4, NS=1≤φ(4)=2 and V∞=0 | Empty products distinguished | Retained; values re-examined |
| §0.7 coarse bound | N=1,11 | 0≤20; 12≤36 | Consistent | Retained; values re-examined |
| §0.8 prime equality | p=2,3,11,13,23 | 12g=0,0,12,0,24 versus 3,4,12,14,24 | Both equality directions agree | Retained; values re-examined |
| §0.9 large two-prime family | N=1522 | g=63; 756<1523; √1522>39 | Strict branch holds | Retained; values re-examined |
| §0.10 small composites | 772 levels | minimum N+1−12g=0; equality list {35} | Complete stated finite arithmetic family agrees | Retained; values re-examined |
| §0.11 sixth powers | N=64 | 12g=12≤58; N/p=32=16·2 | Source constant distinguished | Retained; values re-examined |
| §0.12 two large primes | N=154 | g=5; 60≤145=N−9 | Three-prime branch agrees | Retained; values re-examined |
| §0.13 near-six bound | N=1548 | g=17; 204≤1548; N/129=12 | Endpoint retained | Retained; values re-examined |
| §0.14 near-six small family | 505 levels | minimum N−12g=38 | Complete stated finite arithmetic family agrees | Retained; values re-examined |
| §0.15 residual family | 11250 tuples, 10125 levels | minimum N−12g=18, attained at N=30 | Repetitions distinguished | Retained; values re-examined |
| §0.16 sharp bound | N=1,…,2000 | zero inequality/iff failures; 36=35+1, 24=23+1, 0<13+1 | Equality tested both ways | Retained; values re-examined |
| §1.1 comparison nonzero | p=2,c=1,s=±1; excluded p=1,c=2 | α=2,4; excluded α=0 and (√1−1)²=0 | Lower bound essential | Retained; values re-examined |
| §1.2 integer norm divisibility | x=5,0 in (5) over ℚ | norms 5,0; 5≤5, while 5≤0 is false | Nonzero hypothesis necessary | Retained; values re-examined |
| §1.3 all-embedding norm | c=√2; c=100−70√2, p=2 | norm absolute 7≤17+12√2; second norm 391>17+12√2 | One embedding insufficient | Retained; values re-examined |
| §1.4 coefficient-degree bound | p=2,d=1,c=1,s=±1 | 2,4≤3+2√2 | Both multiplicative signs agree | Retained; values re-examined |
| §1.5 exponent conversion | L=11,d=1; L=35,d=3 | 2d=(L+1)/6=2,6 | Real exponent not rounded | Retained; values re-examined |
| §1.6 removed-prime endpoint | conductor 11, v₁₁Δ=5, ℓ=5 | M₀=1; rational five-torsion gives a stable line | Would-be counterexample fails irreducibility | Retained; values re-examined |
| §2.1 F | N=1,11,35 | F=1,3+2√2,(1+√8)⁶; zero dimension exponent gives 1 | Root/exponent distinguished | Retained; values re-examined |
| §2.2 G | N=1,4,11 | G=4,4,13+4√3; replacing lcm by 4N gives G(4)=9 | lcm essential | Retained; values re-examined |
| §2.3 H | N=1,4,11 | maxima 4,4,13+4√3; at 11 F≈5.828<G≈19.928 | Maximum and strict comparison agree | Retained; values re-examined |
| §3.1 coefficient recognition | level 11 | I/6=2; a₀=0,a₁=1,a₂=−2; a₄=a₂²−2=2 | Nonzero normalized input used | Retained; values re-examined |
| §3.2 noninteger witness | q∥N, q²∣N; N=1 | bad coefficients ±1,0 are integers; I(1)/6=1/6 has no prime | Bad-prime input belongs to ModularForms | Retained; values re-examined |
| §3.3 witness below F | B=2,g=1 versus g=0 | F=3+2√2>2 versus 1<2 | Positive dimension necessary | Retained; values re-examined |
| §3.4 norm of trace difference | q=3, Hasse extremes and b=4 | differences ≤6 or 7; 4+2√3≈7.464 | Good and multiplicative traces fit | Retained; values re-examined |
| §3.5 F forces rationality | ℓ=7,B=2,g=1 | F≈5.828<7; q≤2 gives q≠7; contradiction 7≤F<7 | Threshold is strict | Retained; values re-examined |
| §3.6 rational realization | y²=x³−x,N=32,ℓ=17 | F=9+4√2≈14.657<17; curve itself has conductor 32 | Actual object witness | Retained; values re-examined |
| §3.7 local filters | dyadic, odd, zero ring | first dyadic polynomial 1−3X+2X²; odd second 1−5X or 1−4X+3X²; zero ring 1=0 | Branches distinguished | Retained; values re-examined |
| §3.7a ideal Sturm | J=0, unit ideal; weight zero | exact-zero versus automatic membership; coefficient n=0 is included | Constant term cannot disappear | Retained; values re-examined |
| §3.8 odd Eisenstein form | n=0,1,3,5 | coefficients 0,1,4,6; factor at 3 is 1−4T+3T² | Noncuspidal form allowed | Retained; values re-examined |
| §3.9 filtered congruences | q=3,a₃=−1 modulo 4 | (q+1)(a_q−1)=−8≡0, while a₃−4=−5≢0 | Good/bad tests distinguished | Retained; values re-examined |
| §3.10 prime-power congruence | λ=(2),m=2,q=3,a₃=−1 | difference −5 is not in 4ℤ | Prime-power precision retained | Retained; values re-examined |
| §3.11 four-divisibility witness | y²=x³+2x over 𝔽₅ | #E=2; 4∤2 | Witness is actual failure | Retained; values re-examined |
| §3.12 witness below G | B=12,0 | G=13+4√3>12; G=1>0 | Zero-base case safe | Retained; values re-examined |
| §3.13 transferring counts | q=3,5; ℓ=11 | trace gaps ≤6,8, both below 11 and corresponding (√q+1)² | Congruent gaps must vanish | Retained; values re-examined |
| §3.14 rational two-point | C₃,S₃,C₂ inside GL₂(𝔽₂) | order-three matrix has det(1−g)=1; C₂ fixes a line; S₃ contains the obstruction | Cyclic and nonabelian cases distinguished | Retained; values re-examined |
| §3.15 square classes | (a,b)=(0,2),(4,2), at 5,3 | point counts 2,6≡2 mod4; b and a²−4b have symbol −1 | Wrong simultaneous nonsquares fail | Retained; values re-examined |
| §3.16 full-two isogenous curve | a=3,b=1; a=0,b=−1 | first discriminant 5; quotient roots 1,5; second roots ±1 | Degree-one/two alternatives fit | Retained; values re-examined |
| §3.17 full-two realization | E:y²=x³−x,N=32,ℓ=17 | H=9+4√2<17; E has four rational two-points | Actual realization witness | Retained; values re-examined |
| §3.18 deletion adapter | multiplicative M=ℓL, ℓ∣v_ℓΔ; good at ℓ | M₀=L and v_ℓN=0; good case already has exponent 0 | Local alternative retained at 5,7 | Retained; values re-examined |
| §4.0 GeometricTorsion | n=0,1,2 | entire geometric group, one point, four points | No interpretation of n=0 as prime torsion | Retained; values re-examined |
| §4.0 torsionModule | n=0,1,2 | ZMod 0=ℤ; zero module at n=1; 2P=0 at n=2 | Native scalar action | Retained; values re-examined |
| §4.0 torsionRepresentation | identity, C₃ and S₃ mod-two images | identity sends P to P; C₃ cycles 3 lines; S₃ permutes 3 lines transitively | Both irreducible examples have no common line | Retained; values re-examined |
| §4.0 cyclic-degree definition | identity, two-quotient, [2] | kernel orders 1,2,4; exponents 1,2,2 | Degree four alone does not imply cyclic | Retained; values re-examined |
| §4.1 character exponents | r=11,17,37 | m=5,8,18; t=1,2,6; 2t=2,4,12 | Fractional exponent domains matter | Retained; values re-examined |
| §4.2 twelfth power | q=3,k=0 | β¹²=1; trace congruent 1+3¹²=531442; determinant 3¹²=531441 | Frobenius direction agrees | Retained; values re-examined |
| §4.3 recurrence | q=3,a=0,1,2,3 | A₁₂=1458,−1358,658,1458; at q=5 set is {−28334,−25774,23506,31250} | Ordered values corrected | Retained; values re-examined |
| §4.4 zero exponent | q=3,5 | prime-factor unions {2,3,5,7,13,19,37,97} and {2,3,5,7,13,17,31,37,61,157,229}; positive-genus intersection {37} | Same arithmetic after trace swap | Retained; values re-examined |
| §4.5 one-third exponent | q=3 | 3⁴+3⁸=6642; differences 5984,8000,5184; prime union {2,3,5,11,17} | Leaves 11,17 | Retained; values re-examined |
| §4.6 half exponent | r=11 | 2√11/π≈2.111<11/4=2.75; inert prime 2 has norm 4 | Small-ideal argument consistent | Retained; values re-examined |
| §4.7 prime degrees | r=2,13,37,41,43 | list membership 1,1,1,0,1 | CM degree 43 retained | Retained; values re-examined |
| §4.8 minimal composite levels | n=20,22,25 | genera 1,2,0; 22 has positive-genus divisor 11 | Minimal divisors and genus-zero premise distinguished | Retained; values re-examined |
| §4.9 genus-one tables | d=20,14,27 | rational group/cusp counts 6/6,6/4,3/2; differences 0,2,1 | Rank alone insufficient | Retained; values re-examined |
| §4.10 X₀(39) | N=39 | genus 3, four rational cusps; target noncuspidal count 0 | Genus-one shortcut excluded | Retained; values re-examined |
| §4.11 X₀(65) | N=65 | genus 5, four rational cusps; target noncuspidal count 0 | Full-Jacobian rank not assumed | Retained; values re-examined |
| §4.12 X₀(91) | N=91 | genus 7, four rational cusps; target noncuspidal count 0 | Two allowed prime factors do not imply allowed product | Retained; values re-examined |
| §4.13 X₀(125) | N=125 versus 25 | genus 8 versus 0; two rational cusps at 125 | Prime-square allowance not extended to cube | Retained; values re-examined |
| §4.14 X₀(169) | N=169 versus 13 | genus 8 versus 0; two rational cusps at 169 | Prime allowance not extended to square | Retained; values re-examined |
| §4.15 combined cusp-only list | 39,65,91,125,169 | target noncuspidal counts 0,0,0,0,0; rational cusp counts 4,4,4,2,2 | Five distinct inputs remain | Retained; values re-examined |
| §4.16 extensions | 26,35,50 | genera 2,3,2; rational cusp counts 4,4,4; target noncuspidal counts 0,0,0 | Separate exclusions needed | Retained; values re-examined |
| §4.17 cyclic list | n=0,1,18,19,20,21,22,163 | membership 0,1,1,1,0,1,0,1; maximal even allowed degree 18 | Identity included, zero excluded | Retained; values re-examined |
| §4.18 one two-point | ℓ=11 | coprime kernels 2 and 11 give cyclic order 22 | Rational generator not required | Retained; values re-examined |
| §4.19 four-isogeny | distinct versus backtracking kernels | cyclic C₄, exponent 4 versus C₂², exponent 2 | Duality route valid | Retained; values re-examined |
| §4.20 four-times-prime | ℓ=5,7 | cyclic degrees 20,28; prime-to-two torsion transport | Both contradiction degrees excluded | Retained; values re-examined |
| §4.21 one-point bound | ℓ=11 versus 2 | forbidden degree 22; at 2 a rational point fixes a line | Cutoff hypotheses matter | Retained; values re-examined |
| §4.22 full-two bound | ℓ=5; ℓ=3 example | 4·5=20 excluded; (4,36) has 36²=4·9·36=1296, tangent 7, double (4,−36) | ℓ=3 is reducible | Retained; values re-examined |
| §5.0 geometric non-CM | j=1728,0; nonintegral j | automorphism orders 4,3 are not scalar units ±1; nonintegral j cannot be CM | Geometric field essential | Retained; values re-examined |
| §5.0 split containment | p=11,2 | stabilizer orders 200,2 versus full groups 13200,6 | Unordered pair differs from fixing each line | Retained; values re-examined |
| §5.0 nonsplit containment | p=11,2 | Cartan/normalizer orders 120/240 and 3/6; scalar group at 11 has order 10 | Cardinality excludes scalars | Retained; values re-examined |
| §5.2 inertia | p=41,e=4 | ordinary order 40/gcd(4,40)=10; height-two order 42/gcd(4,42)=21; intermediate 41 | Every branch ≥10 | Retained; values re-examined |
| §5.3 exceptional images | p=41 | bound 10 exceeds maximal orders 3,4,5 | Exceptional alternatives excluded | Retained; values re-examined |
| §5.3a existence bound | d=1,2; H≤985 | B(1,H)=9702250000000; √B(2,H)≈6247222.381<6895000=7000·985 | Constants and quadratic corollary agree | Retained; values re-examined |
| §5.3a period surface | non-CM E=E′, minimal isogeny Δ=1 | top degree 2nΔ=2n; for n=1, degree 2<10¹⁰ and Δ=1<B | Surface threshold not misused | Retained; values re-examined |
| §5.3a surface controls | non-CM cyclic degree 2; incomplete bases (ω,0) | Δ=2 gives top degree 4 at n=1; incomplete bases give dimension 1 rather than 2 | Full bases and unnormalized degree essential | Retained; values re-examined |
| §5.3a cyclic corollary | identity; [2]; CM 10⁷+i | δ=1; [2] degree 4 with noncyclic kernel; CM degree 100000000000001 exceeds 39124840000000 | Cyclicity and non-CM both necessary | Retained; values re-examined |
| §5.3b integrality | p=11,13,17; cusp types | allowed primes 1,0,1; at 11 cusp degrees 1 and 5 | Boundary and cusps distinguished | Retained; values re-examined |
| §5.3b proof range | p=31,37; residue 2 | Appendix p≥37 gives false/true; inherited immersion excludes 2 | Small levels and dyadic comparison remain owned | Retained; values re-examined |
| §5.3c Runge | p=5,17; j=0,1/2 | RHS≈48.033,83.790; h(0)=0, h(1/2)=log 2 | Height convention retains max(1,abs j) | Retained; values re-examined |
| §5.4 large-prime branch | p=14000003 | 3710√p≈13881550.392<p | Numerical endpoint closes after height bounds | Retained; values re-examined |
| §5.5 resultant criterion | p=17, discriminant −3, c=2 | χ=−1; H derivatives 1,1, resultant 1; p=11 fails lower bound | Positive test and boundary agree | Retained; values re-examined |
| §5.6 finite branch | p=11,13,17; cutoff | admitted-prime indicators 0,0,1; χ_(−4)(17)=1; 14000000<10¹⁴ | Whole discriminant family needed | Retained; values re-examined |
| §5.7 split exclusion | p=11,13,17,41 | permitted-prime indicators 0,0,1,1 | Downstream p>37 unaffected | Retained; values re-examined |
| §5.8 proper images | p=41 | 41 absent from non-CM isogeny list; inertia bound 10>5 | Only nonsplit alternative remains | Retained; values re-examined |
| §5.9 local multiplicative primes | p=11,q=3,43,p | squared eigenvalues (9,1),(1,1); cyclotomic 2 squares to 4≠1 | q=3 and q=p obstructed | Retained; values re-examined |
| §5.10 Cartan correspondence | p=11,r=2; divisor pullback | 240·1100/20=13200; Jac(X₀(2)) dimension 0; degree-one pullback has degree 11 | Old part killed via genus-zero Jacobian | Retained; values re-examined |
| §5.11 periods | q+2q² | L contribution 2, oriented differential period −2 | Nonvanishing independent of sign | Retained; values re-examined |
| §5.12 boundary divisor | r=5,p=11 | five cusps over each base cusp; deg D=5−5=0; div(t)=11D; PSL₂(𝔽₁₁) order 660 and abelianization 1 | Exact order 11 follows from stated cover argument | Retained; values re-examined |
| §5.12 larger auxiliary levels | r=7,13 and p=17 | genus X₀(r)=0; eight cusps over each; deg D=8−8=0; 17[D]=0 | Same cover argument applies | Retained; values re-examined |
| §5.12 r-new / non-p-old | oriented path, then reversed | w_r e=−e; two degeneracy images 0; boundary −D then D, both order p | Nonzero image has denominator p | Retained; values re-examined |
| §5.12 excluded small prime | r=2,p=3 | genus mixed curve 0, [D]=0; A₄ abelianization C₃ | Exact-order assertion fails outside range | Retained; values re-examined |
| §5.13 winding quotient | A=0 versus surviving factor | dimension 0 rejected; nonzero period −L gives positive dimension | Finiteness alone cannot select quotient | Retained; values re-examined |
| §5.14 cusp fields | p=11,q=23,43,2 | real-cyclotomic degree 5; residue degrees 1,1,5 | ±1 condition necessary | Retained; values re-examined |
| §5.15 cusp immersion | p=11,r=13,q=23 | q≥21>13,3; cotangent 11 mod23 nonzero | Characteristic bounds agree | Retained; values re-examined |
| §5.16 quotient torsion | n=5,m=7; rational cusp; trivial rational quotient group | 5φ(P)∈A(ℚ), 35φ(P)=0; n=1 gives mφ(P)=0; n=m=1 gives φ(P)=0 | Requires individual cusp differences | F01: local target cited |
| §5.17 denominator removal | p=11,r=13,q=23; q=2 | e=1<22; at 2, 1<1 false but 2≢±1 mod11 | Low residue characteristic already excluded | Retained; values re-examined |
| §5.18 integral j | j=a/pᵏ in lowest terms | k>0 gives valuation −k<0; k=0 gives integer | Potential good reduction sufficient | Retained; values re-examined |
| §5.19 five polynomials | r=2,3,5,7,13,11 | degrees 3,4,6,8,14 and zero; constants 4096,729,125,49,13,0 | Totalization distinguished | Retained; values re-examined |
| §5.20 modular coordinate | r=2,t=−16,8,−64,0 | j=0,1728,1728; t=0 is a pole, not total quotient 0 | Both cusps excluded | Retained; values re-examined |
| §5.21 divisor argument | f=(T+16)³,t=1/2; f=T | quotient 35937/4 not integral; linear f gives 1 despite nonintegral t | Degree≥2 essential | Retained; values re-examined |
| §5.22 finite j-sets | all five levels | signed inputs 26,14,8,6,4; image sizes 25,13,8,6,4 | Collisions/signs recomputed | Retained; values re-examined |
| §5.23 both directions | r=2,j=1728; r=5,j=64 | nonzero coordinates 8 or −64; −1, respectively | Candidate and modular-point directions use same coordinates | Retained; values re-examined |
| §5.24 quadratic twists | p=5, g and −g | det(−g)=det(g); repeated character twist ψ²=1 | Surjectivity equivalence involutive | Retained; values re-examined |
| §5.25 finite prime-degree j-table | r=11,17,37 | genera 1,1,2; cardinalities 3,2,2; −11·131³=−24729001, −2¹⁵=−32768; total 7−1=6 non-CM values | Full genus-two Jacobian rank not inferred | Retained; values re-examined |
| §5.26 six residual-image families | seven table values | six non-CM after one CM exclusion; p=41 full order 2755200 | Sampling does not prove all primes | Retained; values re-examined |
| §5.27 integral-j families | r=2,t=−16,8 | j=0,1728 both CM; non-CM predicate is false | Prevents CM surjectivity assertion | Retained; values re-examined |
| §5.28 final Lemos headline | p=41, n=1; j=1728 | full group order 2755200; 1<n false for identity; extra geometric endomorphism has order 4 | Endpoint hypotheses exclude both controls | Retained; values re-examined |
| §5.1 point exhaustion at 19 | r=19; H=X+96³ | genus 1; 3 rational group elements−2 cusps=1; j=−884736; H(j)=0, H(0)=884736 | Matches the singleton target; degree membership alone gives no count | F02: explicit target |
| §5.1 point exhaustion at 43 | r=43; H=X+960³ | genus 3; quotient group order 7; target total point count 3; j=−884736000; H(j)=0, H(0)=884736000 | Seven quotient elements do not imply seven curve points | F02: explicit finite-fibre exhaustion |
| §5.1 point exhaustion at 67 | r=67; H=X+5280³ | genus 5; quotient group order 11; target total count 3; j=−147197952000; H(j)=0, H(0)=147197952000 | Genus-one torsion counting is unavailable | F02: explicit finite-fibre exhaustion |
| §5.1 point exhaustion at 163 | r=163; H=X+640320³ | genus 13; quotient group order 27; target total count 3; j=−262537412640768000; H(j)=0, H(0)=262537412640768000 | A finite group does not exhaust its rational fibres automatically | F02: explicit finite-fibre exhaustion |
| §5.1 CM orders | D=−19,−43,−67,−163 | reduced primitive forms respectively (1,1,5),(1,1,11),(1,1,17),(1,1,41); discriminants 1−20=−19,1−44=−43,1−68=−67,1−164=−163 | Each class polynomial has degree 1; the exact j evaluations remain required | F02: CM identification retained with its owner |
| §5.1 normalized j diagnostic | τ=(1+i√r)/2, q=−exp(−π√r), r=19,43,67,163 | E₄³/Δ minus the four integers ≈6·10⁻⁹⁴,−1.98·10⁻⁸⁹,2.2·10⁻⁸⁷,−4·10⁻⁸² using 30 terms at precision 100 | Numerical diagnostic agrees with the table; not an exact proof of the class-polynomial identities | F02: exact bounds stated as part of the target |
| §5.1 non-CM corollary | allowed degree 43; n=1 | 43 is in the prime list, but H_(−43)(−884736000)=0; identity kernel has 1 element and no prime divisor | The point theorem supplies CM; n>1 is necessary | F02: corrected route and Needs |
| §5.10a geometric torsion | X₀(1), zero divisor on X, X₀(11) cusp difference | classes 0,0,[0−∞]; orders 1,1,5; 5[0−∞]=0 but [0−∞]≠0 on X₀(11) | Permits both trivial and nontrivial torsion | F01: general target |
| §5.10a period-lattice condition | Λ=ℤ+iℤ, v=1/5 and v=√2 | 5v=1∈Λ in the first case; n√2∉Λ for every integer n>0 in the second | Rational coordinates exclude a nontorsion model | F01: actual Abel–Jacobi comparison consumed |
| §5.10a rational projector and denominator | H=ℚ², P=ℚ×0, T(x,y)=(y,2y), e=1−T/2 | e(1,0)=(1,0), e(0,1)=(−1/2,0), e²=e; 2e(0,1)=(−1,0) | A rational splitting is not an integral splitting; Hodge/period compatibility remains explicit | F01: bridge is owned |
| §5.10a full-level descent | n=5, deg π=3; D=0 | π_*π*[D]=3[D], hence 5·3[D]=15[D]=0; D=0 still has order 1 | Annihilator, not exact order; positive degree required | F01: norm/pullback route |
| §5.10a sum control versus individual classes | a=√2,b=1/11−√2 in ℝ/ℤ | a+b=1/11; 11(a+b)=1=0 mod ℤ; na,nb are nonzero mod ℤ for every n>0 | Torsion of a sum does not imply torsion of its summands | F01: negative-control Check |
| §5.16 Galois direction | σ(P)=P; σ(∞) arbitrary cusp | σ[P−∞]−[P−∞]=[∞−σ∞]; negating gives [σ∞−∞] with the same annihilator | Sign agrees with the period and norm conventions | F01: descent Check |

The winding orientation remains fixed by the two Fourier terms q+2q²: their Mellin contribution is 2, the normalized path integral is −2, and the unscaled integral is i/π. The new torsion descent is invariant under negating a cusp difference, and does not identify the rational projector with an integral splitting. No denominator-zero or natural-subtraction convention was added.

## Sources, ownership and consequences

The two new source entries, elkik-1990 and mazur-1977, were fetched through the prescribed sources service from Numdam, read at their extracted line locators, and recorded with their service provenance plus authors, titles, years and precise locators. Existing source entries and their lifetime keys were preserved byte for byte. No source text was copied into the repository; no missing text was requested. Previously settled uncertified sources remain settled and were not requested again.

Object-based ownership searches used `roadmaps grep` over the open-head/main index and read-only searches of main, board packages and the pinned libraries. ModularSymbolsPadicLFunctions §0.8 was read through its actual rational retraction and geometric dictionary; ModularCurvesPartII §§13.1–13.3 and 14.11–14.12 through their pullback/norm and relative-symbol statements. The generic period-torus identification already belongs to MordellLawrenceVenkatesh §8.11, an earlier supplier, so only its modular torsion consequence and projector compatibility are new here. Main-roadmap shape was compared with ModularForms and Chebotarev.

The readable later EllipticCurveModularityPartII §6.0c contains the same general geometric cusp-torsion target. The needed notion is moved earlier into this package’s §5.10a; there is no dependency on that later roadmap. Its overlapping scope is the external coordination matter already settled as not actionable in the preceding repair; this round does not reopen it or edit the sibling. The four exceptional-prime point exhaustions belong here because the package’s CM corollary needs them and its earlier Layer 4 states only degree membership, while the existing CM supplier owns the general CM comparison. Other indexed matches concern CM class numbers or other modular curves, not these four point exhaustions. Ownership against open work was checked through the supplied service/index; no unprovided checkout was sought.

Pinned native definitions were inspected directly, including Mathlib/RepresentationTheory/Irreducible.lean:29, Mathlib/Algebra/Module/ZMod.lean:81, Mathlib/Algebra/Module/Torsion/Basic.lean:1010, TauCeti/NumberTheory/ModularForms/Newforms/Basic.lean:202 and TauCeti/AlgebraicGeometry/EllipticCurve/Affine/Point/Galois.lean:64. They supply the simple-order irreducibility predicate, actual scalar and Galois actions, and the nonzero-level Γ₁ newspace; they do not supply geometric congruence-curve cusp loci or the assertions added here. The native period-symbol files likewise do not identify their abstract cusp divisors with classes on such modular Jacobians. No pinned geometric cusp-torsion or exceptional-prime point-exhaustion theorem was found by object search.

No exported Lean name changed, so consumers retain all existing signatures. The new supplier citation is MordellLawrenceVenkatesh §8.11; all eight pre-existing gaps are unchanged. The finite-fibre and exact class-polynomial identities are explicit mathematical proof obligations, not database lookups or computational procedures. Neither this repair nor its successful sorry elaboration constitutes independent mathematical acceptance. All initiated checks finished; no job process remains running. No commit, push, issue or pull-request write was made.
