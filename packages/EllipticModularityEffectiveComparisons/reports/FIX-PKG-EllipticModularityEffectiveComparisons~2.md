# Repair report: elliptic modularity and effective residual comparisons

## F01 (P1) — applied

§5.3a’s qualitative inputs → the primary quantitative theorem, its surface-period route, CM branch and cyclic corollary. Added gap:quantitative-abelian-periods, assigned to ArakelovGeometryAndAbelianHeights §§4.4, 5.9. Evidence: gaudron-remond line 168, line 1383, line 1539 and line 1611; bilu-parent-rebolledo line 691. The gap explicitly requests missing theory rather than claiming the supplier already proves it.

## F02 (P2) — not actionable in this package: maintainer must resolve duplicate sibling roadmap

Retitled the package, deleted the unsupported consumer claim and replaced the private irreducibility predicate with Mathlib’s native representation predicate. The readable EllipticCurveModularityPartII head still duplicates the dimension, degree-classification, Kraus and Lemos targets. Its content and withdrawal/ownership decisions are outside the editable files. The overlap was already recorded in the preceding package report; it requires human resolution.

## F03 (P2) — applied

Four Kraus input theorems → README-only targets in §§3.1, 3.7a, 3.10 and 3.16. Deleted their Lean declarations and backticked names, and removed the unused Newform import. Evidence: kraus-1997 line 295, line 435, line 1060 and line 1082. The missing conductor/weight headlines remain documented without replacement statements.

## F04 (P2) — applied

Deleted the nonsplit-image helper definition and the two input theorems from Suggested.lean. Their mathematics remains in §§5.0, 5.8 and 5.18, with the names in prose. Evidence: lemos-2017 line 136 and line 223. The final Lemos headline retains its actual torsion-action conclusion and geometric non-CM hypothesis.

## F05 (P2) — applied

Split-normalizer exclusion at p≥11 → p>11, in both README §5.7 and Lean. The finite-range target and its consumers use the same strict boundary. Added the 11, 13 and 17 Checks. Evidence: bilu-parent-rebolledo line 104, line 835 and line 850. Every downstream use at p>37 still satisfies the hypotheses.

## F06 (P2) — applied

§5.6’s computational description over 11≤p<10¹⁴ → a discriminant/resultant implication for every prime 11<p≤14000000, p≠13. Deleted the procedural material. The finite arithmetic implication remains a target with its full quantifier, not an executed calculation. Evidence: bilu-parent-rebolledo line 626, line 850 and line 971. Its range joins §5.4 at the retained upper endpoint.

## F07 (P2) — applied

Deleted gap:mixed-winding-boundary from README and the top-level plan gaps. §5.12 now owns the exact order-p divisor class, r-newness, non-p-oldness and nonzero full-new projection. Its proof treats all five genus-zero levels and records that the oriented boundary is −D. Evidence: darmon-merel line 525, line 532, line 670 and line 687. The p=3 failure is a Check.

## F08 (P2) — applied

Deleted gap:split-cartan-height-inputs. Added §5.3b’s split-Cartan integrality theorem and §5.3c’s full integral-point Runge inequality, each with hypotheses, route and three Checks; §5.4 consumes both. Fetched bilu-parent-split, Theorem 6.1, through the sources service. Evidence: bilu-parent-split line 432; bilu-parent-rebolledo line 328 and line 685. The split-cusp comparison, including characteristic two, is expressly owned here.

## F09 (P2) — applied differently

Deleted the compound mixed-curve gap. Curves/j-maps use ModularCurvesPartII §§3.8, 5.2, 9.6; generic Jacobian pullback/norm and Hecke compatibility use §§13.1–13.3. These already cover the maps’ general carriers. The specific correspondence stays in §5.10 and the Chen comparison in its existing gap. Only the missing mixed smooth-cusp charts/residue-field compatibility becomes gap:mixed-cusp-charts. No duplicate generic pull-push gap was added.

## F10 (P2) — applied differently

§4.9 now specifies Kummer descent, exact torsion and cusp subtraction. §§4.10–4.14, 4.16 and 5.25 specify nonzero new rank-zero quotients, exact finite rational groups and exhaustion of every rational fiber; descent, modular-symbol, rank-zero and formal-immersion inputs are named. Formal immersion is used at cusps only. Level 37’s entire Jacobian is not asserted rank zero. The 26/35/50 locator is mazur-1978 line 97.

## F11 (P3) — applied

Full-two irreducibility at ℓ≥7 → ℓ≥5, in §4.22 and Lean. Updated the degree contradiction to 4ℓ≥20 and the Layer 4 example. Added ℓ=3’s actual negative example: y²=x(x+5)(x+32), with full two-torsion and P=(4,36), satisfies 2P=−P. At ℓ=5 the forbidden degree is 20, absent from §4.17 and excluded by §4.9.

## F12 (P3) — applied

The Layer 4 example’s ordered trace list 1458,658,−1358,1458 → 1458,−1358,658,1458 for a=0,1,2,3. Recomputed all thirteen recurrence terms for each input; the a=1 sequence ends 475,67,−1358 and the a=2 sequence ends −482,−394,658. The unordered trace set and subsequent prime-factor intersections are unchanged.

## F13 (P3) — applied

Corrected Kraus §§3.13–3.16, Mazur §§4.3–4.4, the §4.8 composite list, four bad-prime dependencies, and §5.3a’s primary citation. The pattern audit also corrected Mazur locators in §§4.0–4.2, 4.5–4.7 and 5.25, §3.15’s incorrect [18] attribution, and Bilu–Parent–Rebolledo’s title-page locators in §§5.0, 5.7. §§4.19–4.20 cite the supplied duality/quotient argument; §4.22 cites Bennett–Siksek only for ℓ≥7.

## F14 (P3) — applied

Bibliography-only kenku-1982 → explicit published-locator citations, pp.199–201, in §§4.16–4.17. Its existing lifetime source key and uncertified status are retained. No request for the paywalled text was made, and its original proof is not claimed inspected.

## Required checks and signature comparison

- Final elaboration of packages/EllipticModularityEffectiveComparisons/Suggested.lean, with `lake env lean` from the content checkout: **exit 0**, eight `declaration uses sorry` warnings, zero errors or other diagnostics. All imported object files were present; no targeted build was necessary. No Lean process was left running.
- A scratch copy containing the final declarations and `#check @name` for every one of the 17 declarations elaborated with **exit 0**. All printed types were compared with their README statements. The subsequent Lean edit changed only the module docstring. No required binder disappeared. The substantive signature changes were the native irreducibility carrier, explicit prime Fact instances, ℓ≥5 and p>11.
- Mechanical dependency check, with the prescribed name, order and movable arguments: **exit 0**, exact output:

```text
depcheck: 51 roadmaps, 596 edges, 0 problem(s)
```

There is no UPWARD or CYCLE line. No merge-order file was edited.

- Citation resolver: **exit 0**; no cross-roadmap citation or Lean name was found nowhere. Its final invocation resolved main 5f173a7 and 362 open heads in the index of 2026-10-25T10:15:35Z; the earlier invocation used the supplied index. Its separate warning that external Lean names were not inspected is covered for the changed APIs by the pin reads and elaboration below.
- The declaration/name audit found all 17 names in the README and no backticked use of a deleted declaration. Eight headline theorems, eight definitions/abbreviations and one instance remain. No admitted data, admitted example, nonstandard import or option override was introduced.
- The source manifest parses with unique lifetime keys. Both new sources were fetched legally through the service, with extraction hashes and version-specific locators retained. Bilu–Parent v5 is dated 3 March 2009; its numbering was read directly rather than attributed to the 2011 journal edition. All six Kenku entries remain settled uncertified citations. No additional missing text was identified.
- The plan was compared structurally with its initial value after deleting the top-level gaps member from both objects: all other values are identical. The eight remaining gap slugs and their needs text agree with the exact supplier contracts.
- `git diff --check`: **exit 0**. Only the authorized README, Suggested.lean, sources manifest, top-level plan gaps and this report changed. metadata.toml was unchanged. No commit, network write or sibling edit was made. No separate gate failures were supplied in the brief.

| Declaration | Elaborated binders / conclusion checked against README |
| --- | --- |
| localTerms | ℕ → ℕ → Fin 5 → ℚ; no prime assumption on total table |
| martinValue | ℕ → ℚ; explicit zero branch |
| newDimension | N and NeZero N; actual character-intersected subspace |
| martin_dimension_formula | N and NeZero N; rational cast of native dimension |
| martin_sharp_bound | N and NeZero N; inequality and both directions of equality iff |
| GeometricTorsion | E, E.IsElliptic, n; geometric additive torsion |
| CyclicIsogenyDegree | E, E.IsElliptic, n; elliptic target witness, actual isogeny, geometric cyclic kernel |
| torsionModule | E, E.IsElliptic, n; native Module (ZMod n) on that torsion |
| torsionRepresentation | E, E.IsElliptic, n; native Representation of Gal(ℚ̄/ℚ) |
| prime_cyclic_isogeny_degrees | E.IsElliptic, prime r, actual cyclic isogeny |
| rational_cyclic_isogeny_degrees | E.IsElliptic, actual cyclic n-isogeny; positive allowed-degree list |
| rational_two_uniform_irreducibility | E.IsElliptic, Fact ell.Prime, 11≤ell, rational nonzero two-point |
| full_two_uniform_irreducibility | E.IsElliptic, Fact ell.Prime, 5≤ell, rational two-torsion cardinality four |
| GeometricallyNonCM | E.IsElliptic; every geometric endomorphism is an integer scalar |
| SplitNormalizerImage | E.IsElliptic, p; actual action on an unordered distinct pair of order-p subgroups |
| split_normalizer_exclusion | E.IsElliptic, geometric non-CM, prime p, 11<p, p≠13 |
| lemos_uniform_surjectivity | E.IsElliptic, geometric non-CM, 1<n, actual cyclic n-isogeny, prime p>37 |

## Mathematical audit

The following are computed falsification checks, not proofs of the future library’s general theorems. Arithmetic formulas were recomputed with rational arithmetic; displayed decimal logarithms are illustrative approximations. In point-table rows, genus and cusp counts were computed from the modular index/cusp formulas, and compared with the cited point counts. The complete descents, finite fibers, finite-prime implication and all-prime image theorems remain roadmap targets; this repair does not claim to have executed their proofs.

| Statement | Instances tried | Computed values / both sides | Result | Change |
| --- | --- | --- | --- | --- |
| Conventions: nonsingularity | y²=x³−x; y²=x³ | Δ=64 versus 0 | Singular input excluded | Retained |
| Conventions: arithmetic Frobenius | y²+y=x³−x over 𝔽₂ | #E=5; a₂=−2; root product 2, inverse product 1/2 | Direction distinguished | Retained |
| Conventions: multiplicative sign | q=3, split/nonsplit | removed traces 4 and −4; determinant 3 | Signs distinguished | Retained |
| Conventions: valuation | Δ=−11⁵, ℓ=5 | exponent 5, prime power 161051; deletion removes one factor 11 | Exponent distinguished | Retained |
| Conventions: winding orientation | q+2q² | L contribution 2; differential integral −2; unscaled integral i/π | Sign/scale consistent | Retained in §5.12 |
| Conventions: cusp width | width 11, f=t+2t², characteristic 23 | differential 11dt+22t dt; cotangent 11≠0, a₀=0 | Wrong coefficient excluded | Retained |
| §0.1 localTerms | (0,0),(4,1),(2,2),(3,2),(2,3) | five ones; five zeros; (1/4,0,−1,1,0); (5/9,1,1,−1,0); (3/8,0,1,0,0) | Exceptional/junk branches agree | Retained |
| §0.2 martinValue | N=0,1,11,30,35 | 0,0,1,1,3; unguarded N=0 would give −1/12 | Zero branch necessary | Retained |
| §0.3 convolution inverse | exponents 0,1,2,3 | μ∗μ=1,−2,1,0; convolution with τ at p² is 3−4+1=0 | Identity distinguished | Retained |
| §0.4 five inverted terms | N=1,11 | 1/12−1/2−1/4−1/3+1=0; 10/12+1/2+2/3−1=1 | Weight-two correction agrees | Retained |
| §0.5 newDimension / dimension formula | N=1,11,30,35 | dimensions 0,1,1,3; full dimension at 30 is 3 | Character and newness matter | Retained |
| §0.6 correction bounds | N=1,4 | V∞=1 at 1; at 4, NS=1≤φ(4)=2 and V∞=0 | Empty products distinguished | Retained |
| §0.7 coarse bound | N=1,11 | 0≤20; 12≤36 | Consistent | Retained |
| §0.8 prime equality | p=2,3,11,13,23 | 12g=0,0,12,0,24 versus 3,4,12,14,24 | Both equality directions agree | Retained |
| §0.9 large two-prime family | N=1522 | g=63; 756<1523; √1522>39 | Strict branch holds | Retained |
| §0.10 small composites | 772 levels | minimum N+1−12g=0; equality list {35} | Complete stated finite arithmetic family agrees | Retained |
| §0.11 sixth powers | N=64 | 12g=12≤58; N/p=32=16·2 | Source constant distinguished | Retained |
| §0.12 two large primes | N=154 | g=5; 60≤145=N−9 | Three-prime branch agrees | Retained |
| §0.13 near-six bound | N=1548 | g=17; 204≤1548; N/129=12 | Endpoint retained | Retained |
| §0.14 near-six small family | 505 levels | minimum N−12g=38 | Complete stated finite arithmetic family agrees | Retained |
| §0.15 residual family | 11250 tuples, 10125 levels | minimum N−12g=18, attained at N=30 | Repetitions distinguished | Retained |
| §0.16 sharp bound | N=1,…,2000 | zero inequality/iff failures; 36=35+1, 24=23+1, 0<13+1 | Equality tested both ways | Retained |
| §1.1 comparison nonzero | p=2,c=1,s=±1; excluded p=1,c=2 | α=2,4; excluded α=0 and (√1−1)²=0 | Lower bound essential | Retained |
| §1.2 integer norm divisibility | x=5,0 in (5) over ℚ | norms 5,0; 5≤5, while 5≤0 is false | Nonzero hypothesis necessary | Retained |
| §1.3 all-embedding norm | c=√2; c=100−70√2, p=2 | norm absolute 7≤17+12√2; second norm 391>17+12√2 | One embedding insufficient | Retained |
| §1.4 coefficient-degree bound | p=2,d=1,c=1,s=±1 | 2,4≤3+2√2 | Both multiplicative signs agree | Retained |
| §1.5 exponent conversion | L=11,d=1; L=35,d=3 | 2d=(L+1)/6=2,6 | Real exponent not rounded | Retained |
| §1.6 removed-prime endpoint | conductor 11, v₁₁Δ=5, ℓ=5 | M₀=1; rational five-torsion gives a stable line | Would-be counterexample fails irreducibility | Retained |
| §2.1 F | N=1,11,35 | F=1,3+2√2,(1+√8)⁶; zero dimension exponent gives 1 | Root/exponent distinguished | Retained |
| §2.2 G | N=1,4,11 | G=4,4,13+4√3; replacing lcm by 4N gives G(4)=9 | lcm essential | Retained |
| §2.3 H | N=1,4,11 | maxima 4,4,13+4√3; at 11 F≈5.828<G≈19.928 | Maximum and strict comparison agree | Retained |
| §3.1 coefficient recognition | level 11 | I/6=2; a₀=0,a₁=1,a₂=−2; a₄=a₂²−2=2 | Nonzero normalized input used | README only |
| §3.2 noninteger witness | q∥N, q²∣N; N=1 | bad coefficients ±1,0 are integers; I(1)/6=1/6 has no prime | Bad-prime input belongs to ModularForms | Citation repaired |
| §3.3 witness below F | B=2,g=1 versus g=0 | F=3+2√2>2 versus 1<2 | Positive dimension necessary | Retained |
| §3.4 norm of trace difference | q=3, Hasse extremes and b=4 | differences ≤6 or 7; 4+2√3≈7.464 | Good and multiplicative traces fit | Retained |
| §3.5 F forces rationality | ℓ=7,B=2,g=1 | F≈5.828<7; q≤2 gives q≠7; contradiction 7≤F<7 | Threshold is strict | Citation repaired |
| §3.6 rational realization | y²=x³−x,N=32,ℓ=17 | F=9+4√2≈14.657<17; curve itself has conductor 32 | Actual object witness | Retained |
| §3.7 local filters | dyadic, odd, zero ring | first dyadic polynomial 1−3X+2X²; odd second 1−5X or 1−4X+3X²; zero ring 1=0 | Branches distinguished | Retained |
| §3.7a ideal Sturm | J=0, unit ideal; weight zero | exact-zero versus automatic membership; coefficient n=0 is included | Constant term cannot disappear | README only |
| §3.8 odd Eisenstein form | n=0,1,3,5 | coefficients 0,1,4,6; factor at 3 is 1−4T+3T² | Noncuspidal form allowed | Retained |
| §3.9 filtered congruences | q=3,a₃=−1 modulo 4 | (q+1)(a_q−1)=−8≡0, while a₃−4=−5≢0 | Good/bad tests distinguished | Retained |
| §3.10 prime-power congruence | λ=(2),m=2,q=3,a₃=−1 | difference −5 is not in 4ℤ | Prime-power precision retained | README only |
| §3.11 four-divisibility witness | y²=x³+2x over 𝔽₅ | #E=2; 4∤2 | Witness is actual failure | Citation repaired |
| §3.12 witness below G | B=12,0 | G=13+4√3>12; G=1>0 | Zero-base case safe | Retained |
| §3.13 transferring counts | q=3,5; ℓ=11 | trace gaps ≤6,8, both below 11 and corresponding (√q+1)² | Congruent gaps must vanish | Locator repaired |
| §3.14 rational two-point | C₃,S₃,C₂ inside GL₂(𝔽₂) | order-three matrix has det(1−g)=1; C₂ fixes a line; S₃ contains the obstruction | Cyclic and nonabelian cases distinguished | Locator repaired |
| §3.15 square classes | (a,b)=(0,2),(4,2), at 5,3 | point counts 2,6≡2 mod4; b and a²−4b have symbol −1 | Wrong simultaneous nonsquares fail | Locator repaired |
| §3.16 full-two isogenous curve | a=3,b=1; a=0,b=−1 | first discriminant 5; quotient roots 1,5; second roots ±1 | Degree-one/two alternatives fit | README only |
| §3.17 full-two realization | E:y²=x³−x,N=32,ℓ=17 | H=9+4√2<17; E has four rational two-points | Actual realization witness | Retained |
| §3.18 deletion adapter | multiplicative M=ℓL, ℓ∣v_ℓΔ; good at ℓ | M₀=L and v_ℓN=0; good case already has exponent 0 | Local alternative retained at 5,7 | Retained |
| §4.0 GeometricTorsion | n=0,1,2 | entire geometric group, one point, four points | No interpretation of n=0 as prime torsion | Retained |
| §4.0 torsionModule | n=0,1,2 | ZMod 0=ℤ; zero module at n=1; 2P=0 at n=2 | Native scalar action | Added for native headline |
| §4.0 torsionRepresentation | identity, C₃ and S₃ mod-two images | identity sends P to P; C₃ cycles 3 lines; S₃ permutes 3 lines transitively | Both irreducible examples have no common line | Replaced private predicate |
| §4.0 cyclic-degree definition | identity, two-quotient, [2] | kernel orders 1,2,4; exponents 1,2,2 | Degree four alone does not imply cyclic | Retained |
| §4.1 character exponents | r=11,17,37 | m=5,8,18; t=1,2,6; 2t=2,4,12 | Fractional exponent domains matter | Locator repaired |
| §4.2 twelfth power | q=3,k=0 | β¹²=1; trace congruent 1+3¹²=531442; determinant 3¹²=531441 | Frobenius direction agrees | Locator repaired |
| §4.3 recurrence | q=3,a=0,1,2,3 | A₁₂=1458,−1358,658,1458; at q=5 set is {−28334,−25774,23506,31250} | Ordered values corrected | Examples and locator repaired |
| §4.4 zero exponent | q=3,5 | prime-factor unions {2,3,5,7,13,19,37,97} and {2,3,5,7,13,17,31,37,61,157,229}; positive-genus intersection {37} | Same arithmetic after trace swap | Locator repaired |
| §4.5 one-third exponent | q=3 | 3⁴+3⁸=6642; differences 5984,8000,5184; prime union {2,3,5,11,17} | Leaves 11,17 | Locator repaired |
| §4.6 half exponent | r=11 | 2√11/π≈2.111<11/4=2.75; inert prime 2 has norm 4 | Small-ideal argument consistent | Locator repaired |
| §4.7 prime degrees | r=2,13,37,41,43 | list membership 1,1,1,0,1 | CM degree 43 retained | Locator repaired |
| §4.8 minimal composite levels | n=20,22,25 | genera 1,2,0; 22 has positive-genus divisor 11 | Minimal divisors and genus-zero premise distinguished | Locator repaired |
| §4.9 genus-one tables | d=20,14,27 | rational group/cusp counts 6/6,6/4,3/2; differences 0,2,1 | Rank alone insufficient | Explicit descent route and Checks |
| §4.10 X₀(39) | N=39 | genus 3, four rational cusps; target noncuspidal count 0 | Genus-one shortcut excluded | Exact quotient fibers required |
| §4.11 X₀(65) | N=65 | genus 5, four rational cusps; target noncuspidal count 0 | Full-Jacobian rank not assumed | Exact quotient fibers required |
| §4.12 X₀(91) | N=91 | genus 7, four rational cusps; target noncuspidal count 0 | Two allowed prime factors do not imply allowed product | Exact quotient fibers required |
| §4.13 X₀(125) | N=125 versus 25 | genus 8 versus 0; two rational cusps at 125 | Prime-square allowance not extended to cube | Exact quotient fibers required |
| §4.14 X₀(169) | N=169 versus 13 | genus 8 versus 0; two rational cusps at 169 | Prime allowance not extended to square | Exact quotient fibers required |
| §4.15 combined cusp-only list | 39,65,91,125,169 | target noncuspidal counts 0,0,0,0,0; rational cusp counts 4,4,4,2,2 | Five distinct inputs remain | Retained |
| §4.16 extensions | 26,35,50 | genera 2,3,2; rational cusp counts 4,4,4; target noncuspidal counts 0,0,0 | Separate exclusions needed | Inputs/routes/locators added |
| §4.17 cyclic list | n=0,1,18,19,20,21,22,163 | membership 0,1,1,1,0,1,0,1; maximal even allowed degree 18 | Identity included, zero excluded | Kenku locator added |
| §4.18 one two-point | ℓ=11 | coprime kernels 2 and 11 give cyclic order 22 | Rational generator not required | Retained |
| §4.19 four-isogeny | distinct versus backtracking kernels | cyclic C₄, exponent 4 versus C₂², exponent 2 | Duality route valid | Citation repaired |
| §4.20 four-times-prime | ℓ=5,7 | cyclic degrees 20,28; prime-to-two torsion transport | Both contradiction degrees excluded | Citation repaired |
| §4.21 one-point bound | ℓ=11 versus 2 | forbidden degree 22; at 2 a rational point fixes a line | Cutoff hypotheses matter | Native predicate |
| §4.22 full-two bound | ℓ=5; ℓ=3 example | 4·5=20 excluded; (4,36) has 36²=4·9·36=1296, tangent 7, double (4,−36) | ℓ=3 is reducible | Strengthened to ℓ≥5 |
| §5.0 geometric non-CM | j=1728,0; nonintegral j | automorphism orders 4,3 are not scalar units ±1; nonintegral j cannot be CM | Geometric field essential | Retained |
| §5.0 split containment | p=11,2 | stabilizer orders 200,2 versus full groups 13200,6 | Unordered pair differs from fixing each line | Retained |
| §5.0 nonsplit containment | p=11,2 | Cartan/normalizer orders 120/240 and 3/6; scalar group at 11 has order 10 | Cardinality excludes scalars | README only |
| §5.1 CM prime exceptions | r=19,43,67,163 | j=−96³,−960³,−5280³,−640320³; n=1 has no prime divisor | Nontriviality necessary | Retained |
| §5.2 inertia | p=41,e=4 | ordinary order 40/gcd(4,40)=10; height-two order 42/gcd(4,42)=21; intermediate 41 | Every branch ≥10 | Retained |
| §5.3 exceptional images | p=41 | bound 10 exceeds maximal orders 3,4,5 | Exceptional alternatives excluded | Retained |
| §5.3a existence bound | d=1,2; H≤985 | B(1,H)=9702250000000; √B(2,H)≈6247222.381<6895000=7000·985 | Constants and quadratic corollary agree | Primary route/gap added |
| §5.3a period surface | non-CM E=E′, minimal isogeny Δ=1 | top degree 2nΔ=2n; for n=1, degree 2<10¹⁰ and Δ=1<B | Surface threshold not misused | Route supplied |
| §5.3a surface controls | non-CM cyclic degree 2; incomplete bases (ω,0) | Δ=2 gives top degree 4 at n=1; incomplete bases give dimension 1 rather than 2 | Full bases and unnormalized degree essential | Three surface Checks added |
| §5.3a cyclic corollary | identity; [2]; CM 10⁷+i | δ=1; [2] degree 4 with noncyclic kernel; CM degree 100000000000001 exceeds 39124840000000 | Cyclicity and non-CM both necessary | Explicit Hom-lattice route |
| §5.3b integrality | p=11,13,17; cusp types | allowed primes 1,0,1; at 11 cusp degrees 1 and 5 | Boundary and cusps distinguished | Owned arithmetic target |
| §5.3b proof range | p=31,37; residue 2 | Appendix p≥37 gives false/true; inherited immersion excludes 2 | Small levels and dyadic comparison remain owned | No illicit extension of source proof |
| §5.3c Runge | p=5,17; j=0,1/2 | RHS≈48.033,83.790; h(0)=0, h(1/2)=log 2 | Height convention retains max(1,abs j) | Owned arithmetic target |
| §5.4 large-prime branch | p=14000003 | 3710√p≈13881550.392<p | Numerical endpoint closes after height bounds | Dependencies repaired |
| §5.5 resultant criterion | p=17, discriminant −3, c=2 | χ=−1; H derivatives 1,1, resultant 1; p=11 fails lower bound | Positive test and boundary agree | Retained |
| §5.6 finite branch | p=11,13,17; cutoff | admitted-prime indicators 0,0,1; χ_(−4)(17)=1; 14000000<10¹⁴ | Whole discriminant family needed | Range/prose repaired |
| §5.7 split exclusion | p=11,13,17,41 | permitted-prime indicators 0,0,1,1 | Downstream p>37 unaffected | Strict boundary |
| §5.8 proper images | p=41 | 41 absent from non-CM isogeny list; inertia bound 10>5 | Only nonsplit alternative remains | README only |
| §5.9 local multiplicative primes | p=11,q=3,43,p | squared eigenvalues (9,1),(1,1); cyclotomic 2 squares to 4≠1 | q=3 and q=p obstructed | Retained |
| §5.10 Cartan correspondence | p=11,r=2; divisor pullback | 240·1100/20=13200; Jac(X₀(2)) dimension 0; degree-one pullback has degree 11 | Old part killed via genus-zero Jacobian | Generic maps imported |
| §5.11 periods | q+2q² | L contribution 2, oriented differential period −2 | Nonvanishing independent of sign | Retained |
| §5.12 boundary divisor | r=5,p=11 | five cusps over each base cusp; deg D=5−5=0; div(t)=11D; PSL₂(𝔽₁₁) order 660 and abelianization 1 | Exact order 11 follows from stated cover argument | Owned here |
| §5.12 larger auxiliary levels | r=7,13 and p=17 | genus X₀(r)=0; eight cusps over each; deg D=8−8=0; 17[D]=0 | Same cover argument applies | Five-level route supplied |
| §5.12 r-new / non-p-old | oriented path, then reversed | w_r e=−e; two degeneracy images 0; boundary −D then D, both order p | Nonzero image has denominator p | Sign repaired explicitly |
| §5.12 excluded small prime | r=2,p=3 | genus mixed curve 0, [D]=0; A₄ abelianization C₃ | Exact-order assertion fails outside range | Negative Check |
| §5.13 winding quotient | A=0 versus surviving factor | dimension 0 rejected; nonzero period −L gives positive dimension | Finiteness alone cannot select quotient | Retained |
| §5.14 cusp fields | p=11,q=23,43,2 | real-cyclotomic degree 5; residue degrees 1,1,5 | ±1 condition necessary | Smooth-chart gap precise |
| §5.15 cusp immersion | p=11,r=13,q=23 | q≥21>13,3; cotangent 11 mod23 nonzero | Characteristic bounds agree | Chart gap consumed |
| §5.16 quotient torsion | differences killed by n, A(ℚ) exponent m | mnφ(P)=0; n=m=1 gives φ(P)=0 | Does not assume A(K) finite | Retained |
| §5.17 denominator removal | p=11,r=13,q=23; q=2 | e=1<22; at 2, 1<1 false but 2≢±1 mod11 | Low residue characteristic already excluded | Retained |
| §5.18 integral j | j=a/pᵏ in lowest terms | k>0 gives valuation −k<0; k=0 gives integer | Potential good reduction sufficient | README only |
| §5.19 five polynomials | r=2,3,5,7,13,11 | degrees 3,4,6,8,14 and zero; constants 4096,729,125,49,13,0 | Totalization distinguished | Retained |
| §5.20 modular coordinate | r=2,t=−16,8,−64,0 | j=0,1728,1728; t=0 is a pole, not total quotient 0 | Both cusps excluded | Retained |
| §5.21 divisor argument | f=(T+16)³,t=1/2; f=T | quotient 35937/4 not integral; linear f gives 1 despite nonintegral t | Degree≥2 essential | Retained |
| §5.22 finite j-sets | all five levels | signed inputs 26,14,8,6,4; image sizes 25,13,8,6,4 | Collisions/signs recomputed | Retained |
| §5.23 both directions | r=2,j=1728; r=5,j=64 | nonzero coordinates 8 or −64; −1, respectively | Candidate and modular-point directions use same coordinates | Retained |
| §5.24 quadratic twists | p=5, g and −g | det(−g)=det(g); repeated character twist ψ²=1 | Surjectivity equivalence involutive | Retained |
| §5.25 finite prime-degree j-table | r=11,17,37 | genera 1,1,2; cardinalities 3,2,2; −11·131³=−24729001, −2¹⁵=−32768; total 7−1=6 non-CM values | Full genus-two Jacobian rank not inferred | Quotient/fiber route |
| §5.26 six residual-image families | seven table values | six non-CM after one CM exclusion; p=41 full order 2755200 | Sampling does not prove all primes | Retained |
| §5.27 integral-j families | r=2,t=−16,8 | j=0,1728 both CM; non-CM predicate is false | Prevents CM surjectivity assertion | Retained |
| §5.28 final Lemos headline | p=41, n=1; j=1728 | full group order 2755200; 1<n false for identity; extra geometric endomorphism has order 4 | Endpoint hypotheses exclude both controls | Retained |

## Sources, ownership and limits

The changed native representation uses Mathlib/RepresentationTheory/Irreducible.lean:29 (simple, nontrivial subrepresentation order), Mathlib/Algebra/Module/ZMod.lean:81 (the additive map with the same underlying function), and Mathlib/Algebra/Module/Torsion/Basic.lean:1010 (the actual torsion module). These files were opened at Mathlib 6b7abb3c7686292736be2955bd3eb9ebf63b456a. The torsion action, kernels, base change and geometric endomorphisms are the native APIs at Tau Ceti a91d3aafa8cd3e6bc33dfde0d7677ed0f1625039. Their definitions supply no irreducibility, surjectivity, arithmetic conductor or Serre-weight theorem by themselves.

Ownership was searched by object in main, the board packages, and the supplied open-head index using the roadmap tools; the actual supplier texts were read, not inferred from search snippets. Main copies were used for EllipticCurves, ModularForms, Chebotarev, ClassFieldTheory and ImaginaryQuadraticClassNumber; the remaining named suppliers have new-roadmap open heads. ModularCurvesPartII §13.1 already supplies pullback and norm for the smooth mixed curves, explaining F09’s different repair. EisensteinIdealAndRationalTorsion §7.9 supplies the general-level cusp theorem, not a noncuspidal-fiber exhaustion. HeightsRationalPointsAndObstructions §1.15 is one explicit elliptic example, so the routes import its general Kummer/Mordell–Weil sections and EllipticCurves Layers 6–7 as well.

The board’s later FaltingsFinitenessAndIsogenyTheoremsPartII design has a coarse Masser–Wüstholz period target and an unspecified-constant quadratic bound. Those statements do not supply the exact Gaudron–Rémond constants. They were not imported upward. The precise quantitative period input is exposed as an unmet contract to the earlier height supplier. This is a supplier obligation, not a claim to have edited or extended that supplier.

The primary integrality source states p=11 or p≥17, but its displayed unified proof assumes p≥37 (bilu-parent-split line 443). The README retains the smaller finite levels as owned integrality targets and requires the split-cusp comparison, including dyadic characteristic; it never extends that proof silently. Original Kenku proofs remain uncertified, as authorized. Neither their exact descents nor the new finite-fiber rational-point proofs are claimed completed by this planning repair.

The maintainer must resolve the duplicate EllipticCurveModularityPartII ownership outside this package. No sibling-as-consumer assertion remains. No supplier is asked to invent an existing declaration: every missing input is explicitly labelled as a gap. Removed gap slugs are mixed-modular-curves, split-cartan-height-inputs and mixed-winding-boundary; added slugs are mixed-cusp-charts and quantitative-abelian-periods.

Downstream acceptance files that used ResiduallyIrreducible must use the native torsionRepresentation irreducibility condition. The two irreducibility headlines take prime Fact instances, full-two irreducibility now starts at 5, and split_normalizer_exclusion now requires 11<p. The six input theorem names and NonsplitNormalizerImage no longer denote declarations in this package. Their mathematical targets remain at the README sections listed in F03–F04. ErdosProgressionPowers’ end-theorem contracts retain their mathematical strength.
