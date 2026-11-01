# Review of ArithmeticStatisticsPartVIII (pull request #1179 at c1c3396)

**Verdict:** needs changes

## R01 (P1) — Supply the uniform Betti theorem instead of assuming it

**Location:** `TauCetiRoadmap/ArithmeticStatisticsPartVIII/README.md:90`: “Section 5.19 is conditional on this hypothesis”; repeated at lines 1213, 1231, 1249 and in `TauCetiRoadmap/ArithmeticStatisticsPartVIII/Suggested.lean:26`.

**Claim:** The large-q Cohen–Lenstra endpoint still assumes (HS), the uniform-in-degree Betti theorem needed to reach it. This is proved mathematics, not a conjectural arithmetic assumption. The named parent supplies fixed-degree comparisons; the roadmap neither supplies nor contracts the uniform stability input. The conditional implication is not the defect: the promised general library omits its essential theorem.

**Witness:** At i=1, fixed-degree bounds B_n=n exceed C² for n=⌊C²⌋+1. EVW proves the uniform bound in Proposition 7.8, using stability (`ref-37 line 1628`, `ref-37 line 1647`).

The existing owner is `packages/InverseGaloisAndArithmeticFundamentalGroupsPartII/design/README.md:842`, target `HS.5/uniform-etale-betti`; its prerequisites are listed at line 844. It requires a finite centre-free group, a rational nonidentity generating nonsplitting class, tame characteristic and coefficient prime greater than max(|G|,q,n). It occurs at position 206 of `merge-order/ORDER.txt`, after this roadmap at position 129. The parent `TauCetiRoadmap/InverseGaloisAndArithmeticFundamentalGroups/README.md:5923` explicitly separates its fixed-degree comparison from homological stability. There is no declared gap replacing HS.

**Exact repair:** Establish supplier-first ownership/order for that existing target and its prerequisite chain, then consume the target with its hypotheses in the exact contracts and §5.19. Remove the free HS assumption from those endpoints and the Lean docstring. If the existing supplier cannot precede this consumer, move the required chain coherently or place this consuming continuation after that supplier; do not introduce a second stability development or merely add an upward citation.

**Repair test:** For A=C₃, G=A⋊C₂=S₃ and the transposition class, the supplier's nonidentity, rationality, generation, nonsplitting and centre-free hypotheses hold. At i=1 its conclusion bounds every degree by the same C²; the countermodel C=2,n=5 would require 5≤4 and is therefore excluded by that supplied theorem. The current fixed-degree contract does not exclude it. This carries forward previous R01 unchanged.

## Previous findings

- R01 — not repaired: README 90 still assumes HS; §§5.19 and the Lean docstring retain the conditional uniform Betti input. The supplier target remains later in the order. Current R01 records the remaining blocker.
- R02 — repaired: README 21, 78–92 and 747 import the parent's affine-branch and tangential schemes, branch maps, descent and marked-extension comparisons. Only statistical comparisons and the tangential surviving-parity formula remain owned here.
- R03 — repaired: README 27, 137 and 145 import Part I §0.10's minor gcd, saturation index, basis-change and zero criterion. The additional target is the congruence-lattice index; lines 157–159 test its hypotheses.

## Verified sound

This is an **incremental re-review of 35 changed lines since 7a03a23**, with all three previous findings accounted for. The changed passages, their direct consumers in §§5.12, 5.15 and 5.19–5.21, and their supplier/source contracts were checked. Unchanged source audits, mathematical rows and padding results are explicitly carried from [r2], not represented as a second full review. No new defect was found in the two ownership repairs.

The normative root README and CONTRIBUTING were read; the parent-relative files named in the environment were absent. Main-branch MassFormula and StandardDistributions supplied shape examples. The current head is exactly c1c339686c9a7c43fbbbcb9835fed38ed50a43c7. Both the incremental outside-folder list and the full origin/main outside-folder diff are empty; the worktree was clean before and after review. No pull-request file or source manifest was edited.

**Gate and elaboration.** The supplied worker gate passes every check including build. An independent gate rerun also reports OK with every reported scanner/dependency counter zero. Independently, `lake build TauCetiRoadmap.ArithmeticStatisticsPartVIII.Suggested` succeeds, and direct `lake env lean` elaboration of Suggested.lean succeeds with exactly five warnings, all for `sorry`. A scratch copy with `#check @name` for all nine declarations also elaborates. The nine types match the README: the three density statements retain prime and positive-degree/level assumptions, the second moment remains an unnormalized sum, integral lifting retains closedness and the exceptional mod-nine hypothesis, and the orbit theorem retains finite freeness, finite target, perfect pairing, rank, q−1 invertibility and the generator bound. No binder changed or was lost.

**Headlines and padding.** The unchanged Lean acceptance test contains five headlines: first density moment, second-moment bound, variance estimate, integral symplectic lifting and the unique similitude-stable orbit. Four real-bodied definitions support them. The other README headlines are polarized concentration, spacing and enhanced-model obstructions, the class-group/Hurwitz dictionary, uniform trace estimates, hyperelliptic monodromy, rational components and large-q Cohen–Lenstra, Wood good/bad moments and full profiles, and LWZB/CLM moments. The unchanged module docstring names their missing arithmetic-family and geometric carriers. The prior one-tactic probes (`simp`, `rfl`, `infer_instance` on each of five theorems) closed none; its inspection found no single-lemma proof. These results are carried from [r2] because neither the file nor the pins changed. No new padding or missing statable headline was introduced.

**Source checks in the changed dependency closure.** Three texts were obtained through the sources service: the publisher-open Annals EVW paper, BLS arXiv v1 and Wood arXiv v2. The publisher required an explicit publisher-open licence classification; the subsequent fetch succeeded. No text needed for these changes remains missing. All statements below are paraphrases.

| Changed target / sampled section | Locator and text read | What the comparison establishes |
|---|---|---|
| GN-a and §5.12 | ref-46 Definition 3.7 and Lemma 3.9, arXiv v1 p.11; `ref-46 line 566`, `ref-46 line 577`, proof through line 619 | Independent primitive columns and Q≥1 give the congruence index Q²/gcd(G,Q). Part I owns the two-column content/saturation adapter. |
| IG-a and §5.15 | ref-37 §§7.1, 7.3, printed pp.765–766; `ref-37 line 1440`, `ref-37 line 1492`; Proposition 8.7, pp.774–776, `ref-37 line 1863` through line 1940 | Both infinity branches occur; centre-free field points classify actual covers. The odd-degree class-group dictionary keeps the sign quotient and infinity ramification. |
| HS and §5.19 | ref-37 Proposition 7.8, printed pp.769–770; `ref-37 line 1628` through line 1658 | The uniform theorem and coefficient-prime restrictions are proved using stability. They are the missing input in R01. |
| IG-b and §§5.20–5.21 | ref-50 Proposition 4.1, equation (6), Remark 4.2, arXiv v2 pp.18–19; `ref-50 line 777` through line 827 | A surviving parity fibre has multiplier-torsion cardinality; incompatible means failure of the full lifting obstruction. Proposition 4.1's listed parities are sufficient, not exhaustive. |
| IG-b and §§5.20–5.21 | ref-50 Theorem 4.5(1)–(3), arXiv v2 pp.20–21; `ref-50 line 878` through line 907 | Centre-free involution-generated datum, tame characteristic, fixed tangential inertia and Frobenius lift, and stable multiplicities support exactly the revised contract. |

For the seeded sample outside the changed text, the following results are carried from [r2]. This preserves coverage of all eleven requested subsections without repeating the full review.

| Target | Text and locator read | Conclusion of comparison |
|---|---|---|
| 5.12 | ref-46 Lemmas 5.4–5.7, pp.53–57, lines 3576–3802; ref-47 Lemma 3.3, pp.13–14, lines 572–597 | Exact incidence argument supports the moments; broader d≥1 and n≥2 ranges were separately tested below. Hensel requires m≥2δ+1 and δ≤m−ℓ.  Carried from [r2]. |
| 5.13 | ref-45 (39), (51)–(56), Lemmas 5.9 and 5.11, pp.27–34, lines 1065–1082 and 1233–1450; ref-52 §9, pp.121–122, lines 960–1004 | Factorial leading term is 1/2; quaternionic mass supplies the additional real-Weil block. H1/H2 remain explicit conjectural assumptions.  Carried from [r2]. |
| 5.14 | ref-45 Corollary 5.14 and Lemma 5.19, pp.34,36–37, lines 1453–1463 and 1544–1582 | Finite-g zero-gap correction is retained. The odd-p restriction avoids the explicit p=2 exception.  Carried from [r2]. |
| 5.15 | ref-37 Proposition 8.7, pp.774–776, and Theorem 8.8 proof, pp.777–779, lines 1840–1991 and 2053–2064 | Surjections versus sign classes, primary class groups and factor two are distinguished.  Carried from [r2]. |
| 5.16 | ref-37 Theorem 8.8 proof, p.778, lines 1996–2027 | Poincaré duality, top-component trace and geometric-series error use the stated smoothness, pure dimension and weight hypotheses.  Carried from [r2]. |
| 5.17 | ref-48 Lemmas 3.1–3.2, Theorem 3.4 and Corollary 3.5, pp.11–14, lines 415–564; ref-49 Main Theorem 1.3, pp.2–3, lines 72–86; ref-37 p.780 | The qualified lifting statement agrees. The new Legendre argument supplies the geometric exception; Raynaud §4.6 (7), p.314, and Proposition 4.6.1, p.315 (raynaud-monodromy lines 749–807), agree with the named Néron supplier’s sign and arbitrary-trait contract.  Carried from [r2]. |
| 5.18 | ref-37 Lemma 8.9 and proof, pp.780–782, lines 2092–2183 | Units q and q−1, the rank/generator bound, topological primary spaces and killed Lagrangian are essential.  Carried from [r2]. |
| 5.19 | ref-37 Proposition 7.8, pp.769–770, lines 1628–1658; Theorem 8.8, p.777, lines 1960–1977; Theorem 1.2, p.730 | The source proves the uniform input. R01 concerns its absence from the build. The two degree-density limits and q-limit are otherwise correctly ordered.  Carried from [r2]. |
| 5.20 | ref-50 Theorem 4.8, pp.22–25, lines 964–1107; Theorem 4.5, pp.20–21, lines 878–907 | Fixed-degree large-q unit moments, infinity degrees and the automorphism/involution normalization factors agree.  Carried from [r2]. |
| 5.21 | ref-50 Proposition 4.1 and equation (6), pp.18–19, lines 777–827; bad-case proof, pp.24–25, lines 1051–1078 | Central power obstruction, surviving parity vectors and stable lower bound agree. The full boundary profile correctly prevents an unjustified ordinary-limit assertion.  Carried from [r2]. |
| 5.22 | ref-51 Lemmas 9.1 and 9.3, pp.37–39, lines 1751–1820; Theorem 10.4 and Theorem 1.4 proof, pp.39–41, lines 1844–1922 | Raw quotient maps versus isomorphism classes and liminf/limsup versus inner limits are correctly separated.  Carried from [r2]. |

**Ownership and suppliers.** The object audit used `roadmaps grep`, `roadmaps show`, the main/open-head index and board packages for two-column minors, tangential Hurwitz schemes and uniform Betti bounds. The unrelated generic-minor chart in IntegralHeckeAndGaloisDeterminants is a localization chart, not an integer saturation/congruence-index theorem. The repairs leave generic schemes and minor content with their existing owners. This roadmap owns their statistical applications, the tangential fixed-fibre specialization and congruence-lattice extension. The library searches found Hurwitz zeta, analytic Hurwitz and transposition-bound results, not the arithmetic Hurwitz schemes.

The changed citations resolve at the indexed new-roadmap heads. The actual source line numbers below exclude the one-line wrapper printed by `roadmaps show`.

| Supplier | Locations opened this round | Checked contract |
|---|---|---|
| InverseGaloisAndArithmeticFundamentalGroups | `TauCetiRoadmap/InverseGaloisAndArithmeticFundamentalGroups/README.md:3001`, 3317, 3449: §§IG.3.4–IG.3.6 | Reduced central extensions, class-degree data, the discrete unit action and stable braid lifting invariants; infinity type and degree are preserved. |
| Same supplier | `TauCetiRoadmap/InverseGaloisAndArithmeticFundamentalGroups/README.md:5547`, §IG.5.3 | Affine-branch union, finite étale branch map, rational inertia loci and centre-free field-point descent, plus Wood's separate tangential scheme. |
| Same supplier | `TauCetiRoadmap/InverseGaloisAndArithmeticFundamentalGroups/README.md:6119`, §IG.5.5; line 6205, §IG.5.6 | Ordinary and tangential marked-extension comparisons remain distinct. The general fixed-fibre formula is over identity boundary product; IG-b's g≠1 specialization is additional work. |
| ArithmeticStatisticsPartI | `TauCetiRoadmap/ArithmeticStatisticsPartI/README.md:1312`, 1340, §0.10 Coefficient vector form | All four names imported at README 145 exist: minorGCD, minorGCD_eq_index, minorGCD_basisChange and minorGCD_eq_zero_iff. No new duplicate implementation remains here. |
| GeometryOfNumbersAndQuadraticArithmetic | `TauCetiRoadmap/GeometryOfNumbersAndQuadraticArithmetic/README.md:247`, 254, 323, §§0.2–0.3 | Adapted integral bases and covolumes retain saturation/full-lattice hypotheses; no replacement primitive-minor API is introduced. |
| InverseGaloisAndArithmeticFundamentalGroupsPartII | `packages/InverseGaloisAndArithmeticFundamentalGroupsPartII/design/README.md:842`, 844 | Exact owner and prerequisite chain for uniform étale Betti numbers; R01 remains. |

The citation resolver finds no unresolved cross-roadmap citations. Its standalone rerun did not inspect library names, so it is not used to certify the pins. The worker's twelve name leads resolve as nine local declarations, the two Part I targets above, and the unchanged GSp citation already resolved in [r2]. Unchanged supplier audits and links retain their [r2] provenance; the relevant changed section/name contracts were reopened as listed above.

**Pinned declarations opened.** The unchanged library audit is carried from [r2]; the following six declaration groups were additionally opened at the pins for this review and signature comparison. These library paths are relative to their respective pinned roots.

| Declaration | File and line | Verified content / limitation |
|---|---|---|
| `Submodule.exists_smith_normal_form_of_le` | `Mathlib/LinearAlgebra/FreeModule/PID.lean:486` | Finite-basis submodules over a domain/PID admit diagonal inclusion bases. It does not itself state this two-congruence index. |
| `Finset.Nat.antidiagonalTuple` | `Mathlib/Data/Fin/Tuple/NatAntidiagonal.lean:206` | Finite tuples with prescribed total degree, used as the actual coefficient index. |
| `Matrix.symplecticGroup`, `SymplecticGroup.mem_iff` | `Mathlib/LinearAlgebra/SymplecticGroup.lean:101`, 117 | Carrier equation is AJAᵀ=J over a commutative ring; no monodromy assertion is built in. |
| `LinearMap.IsPerfPair` | `Mathlib/LinearAlgebra/PerfectPairing/Basic.lean:39` | Both maps to duals must be bijective; alternating alone is insufficient. |
| `PadicInt.toZMod` | `Mathlib/NumberTheory/Padics/RingHoms.lean:300` | Native ring-hom reduction modulo the prime. |
| `PadicInt.toZModPow`, `ker_toZModPow` | `Mathlib/NumberTheory/Padics/RingHoms.lean:447`, 459 | Reduction modulo pⁿ has kernel generated by pⁿ; mod-nine exception is a genuine level-two condition. |

The requested dependency check produced exactly:

```text
depcheck: 205 roadmaps, 1461 edges, 0 problem(s)
```

There is no UPWARD or CYCLE line. The repaired suppliers precede this roadmap (parent position 43, Part I position 93, consumer position 129). The mechanical check cannot detect the omitted HS supply edge: the existing HS owner remains at position 206.

**Adversarial mathematics.** 11 freshly evaluated rows below cover each changed mathematical contract, added Check and the changed §5.15 import, plus the remaining blocker. They include exact enumeration of S₃ tuples/conjugacy classes, sign classes, congruence kernels/images, multiplier torsion and power obstructions. 89 further rows carry the unchanged statements' values from [r2], including every retained Lean headline and the whole seeded sample. Finite examples test the formulas and distinctions; the source/supplier audit establishes the proposed general proof inputs.

| Statement | Instances tried | Computed values on the two sides | Result / change |
|---|---|---|---|
| IG-a supplier boundary and finite étale fibre, README 21, 78, 86, 96 | Trivial group, n=0; S₃ with three finite transpositions over an algebraically closed tame field | 1 trivial cover; 27 tuples minus 3 nongenerating tuples =24; free conjugation gives 24/6=4 covers; identity boundary permits 0 | Recomputed; parent scheme includes all four ramified-infinity points |
| IG-a torsion/sign comparison, README 97 | A=C₃, V=𝔽₃² | 3²−1=8 surjections; four sign pairs, 8/2=4 points | Recomputed; labelled surjections would give 8 instead |
| IG-b marking and branch-degree maps, README 80, 88, 98 | Imaginary and real discriminant exponent 2n, n=1,2 | Finite degrees 1,3 versus 2,4; adding the ramified infinity degree gives 2,4 in the imaginary case; real degrees already equal 2,4 | Recomputed; marking import retains the same degree convention |
| IG-b stable Frobenius/component comparison, README 88, 92, 99 | Surviving stable fibre with reduced multiplier 0 or C₃; q=5,7 when tame | Trivial kernel has 1 element; solutions (q−1)a=0 in C₃ number 1 and 3; q⁻¹ acts as 2 and 1 modulo 3, giving the same fixed counts | Recomputed; both sides use the same fixed infinity type |
| IG-b incompatible parity control, README 88, 92, 99; §5.21 consumer | Central power equation in A=C₂ with squared-lift contribution b=1, q=3,5 | Power image (q−1)A={0}; displacement ((q−1)/2)b is 1,0; solution counts 0,2 respectively | Recomputed algebraic control; incompatible means failure of the full lifting condition, not merely absence from Proposition 4.1's sufficient parities |
| GN-a imported content and saturation API, README 27, 137, 145 | c=(1,0),d=(1,3); coordinate shear; swapping columns; equal columns | Minor gcd and saturation index 3=3; sheared pair (1,1),(1,4) has determinant 3; swapped determinant −3 still gives gcd 3; equal pair gives 0 | Recomputed; import Part I's four targets, retain independence for the finite saturation index |
| GN-a Smith-coordinate congruence index, README 137, 145 | c=e₁,d=e₂, Q=1,3; c=e₁,d=(1,3), Q=3,2 | Kernel sizes modulo Q: 1,1,3,1; image/index sizes 1,9,3,4; Q·(Q/gcd(G,Q)) gives 1,9,3,4 | Recomputed; gcd is positive and divides Q, including Q=1 |
| GN-a coprime specialization, README 145, 157–158 | G=3,Q=2 versus G=3,Q=3 | gcd=1 gives index 2²=4; gcd=3 gives 3²/3=3 | Recomputed; coprimality cannot be omitted from the Q² specialization |
| GN-a excluded pairs, README 159 | Equal e₁ columns at Q=3; nonprimitive 2e₁,2e₂ at Q=2 | Equal columns have content 0 and congruence index 3, but saturation quotient cardinality 1; nonprimitive pair has content 4, actual index 1 versus proposed 4/gcd(4,2)=2 | Recomputed; both exclusions are discriminating |
| §5.15 changed Hurwitz import, README 747 | A=C₃; class group C₃; genus-zero class group | Two surjections modulo sign give 1 class and 1 cover; zero class group has 0 surjections and 0 covers | Recomputed; replacing “extending” by “from” preserves the ramified-infinity dictionary |
| Remaining HS contract, README 90 and §5.19 | Fixed-degree bounds B_n=n; C=1,2,3 at i=1 | n=2,5,10 gives B_n=2,5,10 versus C²=1,4,9 | Recomputed; finite-degree bounds alone do not imply the uniform input; R01 remains |
| Primitive vectors | One coordinate modulo 3; zero ring modulo 1; empty coordinates modulo 3 | Counts 2, 1, 0 respectively; generating the unit ideal gives the same counts | Retain; q=0 excluded by NeZero  Carried from [r2]. |
| Coefficient form | d=2,n=1, coefficients (1,2,3); d=0 | X₀²+2X₀X₁+3X₁²; constant a | Retain; theorem requires d≥1  Carried from [r2]. |
| Local density | Linear form X₀, n=2,q=4; q=1 | 12 primitive zeros /16 =3/4; 1/1=1 | Retain  Carried from [r2]. |
| Similitude-fixed surjections | V=ℤ₃²,A=C₃,q=2; zero map to C₃; zero target | 8 surjections qualify; zero map is not surjective; zero target gives one map | Retain  Carried from [r2]. |
| Hyperelliptic Jacobian adapter | n=1,3; g=1,ℓ=3,m=2; characteristic 2 model | Dimensions 0,1; torsion rank 3⁴=81; y²=x³+x+1 has both derivatives zero at (1,1) in characteristic 2 | Retain; characteristic 2 excluded  Carried from [r2]. |
| GN-b CM involution/model | i in ℤ[i]; matrix [[0,1+i],[2,0]]; product rings | Conjugates −i and [[0,2],[1−i,0]]; involution squared is identity | Retain  Carried from [r2]. |
| GN-b quaternionic involution | Hamilton i,j; 2×2 off-diagonal i,j | (ij)*=−ij=j*i*; conjugate transpose [[0,−j],[−i,0]] | Retain; anti-multiplication order matters  Carried from [r2]. |
| GN-c orbit count/product | Empty product; imaginary-quadratic rank one; Gaussian rank eight | Counts 1,1,≥2; I₈ has norm 1 while E₈ has only even norms; multiplying a rank-one block preserves the count | Retain  Carried from [r2]. |
| GN-c asymptotic normalization | One block, degree [K:ℚ]=1 | Sum of log(j!), j<n, has leading coefficient 1/2 in n²log n, not 1 | Retain corrected coefficient  Carried from [r2]. |
| GN-d quaternionic count/mass | m=0,1,2; K=ℚ(√2) or ℚ(√5) at rank one | Count at m=0 is 1; rank-one count 1; mass factors are 1, abs(ζ_K(−1))/4, and successive ratio abs(ζ_K(−3))/4 | Retain; mass is weighted, not the free-class count  Carried from [r2]. |
| Uniform Betti input | Fixed-degree bounds B_n=n; i=1 | n=⌊C²⌋+1 exceeds C² | R01: consume the uniform theorem  Carried from [r2]. |
| Polynomial perturbation | f=X²,x=1,h=3 over ℤ; zero polynomial | Difference 15 is in (3); zero difference 0 is in every ideal | Retain  Carried from [r2]. |
| First-order Taylor | Same data; square-zero h=ε | Remainder 16−1−6=9=h²; ε²=0 makes remainder 0 | Retain over a general commutative ring  Carried from [r2]. |
| First local moment | (d,n,p,r)=(1,0,2,1),(1,1,2,1),(2,2,3,1) | Means 0,1/2,121/126; formula gives 0,1/2,121/126 | Retain; N−1=0 case included  Carried from [r2]. |
| Two-point incidence | d=1,n=1,p=3,r=2; minor valuations v=0,1,2 | Primitive coefficient counts 0,0,6; formula gives 1−1,3−3,9−3 | Retain; proportional mod p is not proportional mod pʳ  Carried from [r2]. |
| Veronese minor valuation | d=2, vectors (1,0),(1,3), modulo 9; equal vectors | Linear minors gcd 3 and quadratic minors gcd(3,9)=3; equal-vector gcd(0,9)=9 on both sides | Retain  Carried from [r2]. |
| Primitive pair gcd sum | n=2; (p,r)=(2,1),(2,2),(3,1) | Sums 56≤113, 3808≤7232, 780≤1162 | Retain  Carried from [r2]. |
| Second local moment | (1,2,2,1),(1,2,3,2),(2,2,2,2),(2,2,3,1) | Sums 63/16≤113/8; 1664/3≤1162; 3584≤7232; 62504/81≤1162 | Retain; r-uniform bound survives small primes  Carried from [r2]. |
| Local variance | Same four cases | Variances 1/16≤2; 1/81≤4/3; 1/6≤2; 79/567≤4/3 | Retain  Carried from [r2]. |
| Gradient valuation/strata | p=3,r=2; (1,0),(3,0),(0,0); f=X₀X₁ in three variables | Valuations 0,1,2; zeros (1,0,0) and (0,0,1) give strata 0 and 2 for the same form | Retain overlapping strata; API is now prose  Carried from [r2]. |
| High gradient count | Binary quadratics mod 9, primitive coefficients | Stratum sizes e=0,1,2 are 324,72,72; e=1 bound 486, e=2 bound 162 | Retain; e=0 not within this bound's assertion  Carried from [r2]. |
| Fixed-gradient Hensel | F=t²,p=3,δ=1,A=9,ℓ=0,m=3; negative control A=0,m=2 | Counts mod 27 and 81 are 6 and 6 (s−1=0); invalid m=2 gives 2 versus 0 | Retain m≥2δ+1  Carried from [r2]. |
| Density lower bound | f=X₀, n=2,p=2,r=2,e=0; f=X₀²,n=1,p=3,r=2,e=2 | 3/4≥1/4; 18/9=2≥1/27 | Retain; σ can exceed 1  Carried from [r2]. |
| Convex concentration | g=100,ε=.99,x=(99,1); g=0 | Sum squares 9802=(.99²+.01²)10000; 0=0 | Retain; boundary equality allowed  Carried from [r2]. |
| Weighted squares | C=0,g=100; one pair (k,n)=(2,50); excluded (1,100) | 2500log50≈9780.06<4950log100≈22795.59; excluded case 5000log100≈23025.85 exceeds it | Retain the exclusion; finite test does not fix g₀ for C>0  Carried from [r2]. |
| Model-ring concentration | One imaginary-quadratic block of size g versus two equal blocks | Leading coefficients of g²log g are 1/2 versus 1/4; threshold .495 separates them | Retain, using corrected GN-c  Carried from [r2]. |
| Unpolarized count | g=0; two nonsingular elliptic curves over 𝔽₅ | g=0 gives B=1,log B=0; y²=x³−x and y²=x³+x have 8 and 4 points, so B(5,1)≥2 | Retain dimension restriction; no numeric C_p inferred  Carried from [r2]. |
| Polarized concentration | g=1; pure E^g; dominant B₀ block | Bad count 0 in dimension 1; E^g has h/g=1; B₀^m has dimension 2m, coefficient 2m²log m=(1/2)g²log g+O(g²) | Retain H1/H2 and prime hypothesis  Carried from [r2]. |
| Kolmogorov distance | δ₀,δ₁; (δ₀+δ₁)/2 against δ₀; identical measures | Distances 1,1/2,0, matching suprema of CDF differences | Retain  Carried from [r2]. |
| Spacing measure | Angles (0,0,π,π); one angle | Normalized gaps (0,2,0,2), mass 1, mean 1; singleton gap 1 with measure δ₁ | Retain multiplicities and wrap-around  Carried from [r2]. |
| Zero-gap mass | Same four angles,h=2; two distinct angles,h=1 | Zero mass 1/2=2(2−1)/4; 0=2(1−1)/2 | Retain h−1, not h  Carried from [r2]. |
| Atom lower bound | μ=(δ₀+δ₁)/2 and ν=δ₁ | CDF difference at 0 is 1/2; d_K=1/2 and μ{0}=1/2 | Retain support condition on ν  Carried from [r2]. |
| Ppav spacing discrepancy | E^g with two distinct eigenangles; h=990,g=1000 | Zero mass 1−1/g; dominant-factor lower bound (h−1)/g=.989, approaching .99 at proportion .99 | Retain asymptotic statement, not finite-g .99  Carried from [r2]. |
| Enhanced model obstruction | Ordinary elliptic examples at p=3,5; excluded p=2 | At p=3, trace 1 gives counts 3 and 15, hence 5-torsion over 𝔽₉; at p=5 trace −2 gives 8. For y²+xy=x³+x²+1 over 𝔽₂ counts 2,8 have no odd torsion | Retain odd-p hypothesis; random-model positivity supplied by Part VII  Carried from [r2]. |
| Dihedral datum | A=C₃; A=0; nonabelian ambient S₃ | Involutions 3, centre size 1 for S₃; A=0 gives C₂ with centre size 2, excluded from centre-free case | Retain nonsplitting and nontriviality distinctions  Carried from [r2]. |
| Class-group surjection pairs | Cl=C₃,A=C₃; A=0 | Two surjections become one sign class; zero target has one fixed map | Retain trivial target separately  Carried from [r2]. |
| Involution quotient | J=C₃⊕ℤ₃ with σ=(-1,+1) | (1+σ)J=0⊕ℤ₃ since 2 is a unit; quotient C₃ | Retain odd ℓ; at ℓ=2 constants leave ℤ/2  Carried from [r2]. |
| Hurwitz/class-group classification | Cl=C₃,A=C₃; genus-zero class group | One sign class corresponds to one cover; no surjection from the zero group to C₃ gives zero covers | Retain  Carried from [r2]. |
| Factor-two identity | Cl=C₃,A=C₃; A=0 | 2 surjections=2×1 sign orbit; trivial-target 1≠2×1 is explicitly separate | Retain  Carried from [r2]. |
| Empirical primary law | Cl=C₂×C₃,ℓ=3,A=C₃ | Primary type C₃ has probability 1; Sur(C₂×C₃,C₃)=2=Sur(C₃,C₃) | Retain primary group, not whole group  Carried from [r2]. |
| Degree densities | Values alternating 0,1 on odd degrees; constant 1/2 | Lower/upper 0,1; constant both 1/2 | Retain separate limits  Carried from [r2]. |
| Top component trace | A¹/𝔽₃; two rational copies; two conjugate copies; empty scheme | Traces 3,6,0,0 =3×(1,2,0,0) fixed components | Retain geometric Frobenius and Tate twist  Carried from [r2]. |
| Uniform trace error | A¹/𝔽₁₆,C=1; n=0 singleton | Error 0≤1/(4−1)=1/3; dimension-zero error 0 | Retain √q>C and one fixed component  Carried from [r2]. |
| Torsion local system | g=0,1; ℓ=3,m=1,2 | Torsion sizes 1,9,81; perfect-pairing matrix J has determinant 1; multiplier of diag(1,q) is q | Retain invertibility of 2ℓ  Carried from [r2]. |
| Geometric Jacobian comparison | P¹ and elliptic curve over algebraic closure, A=C₃ | Connected C₃ torsors: 0 for P¹; 3²−1=8 for the elliptic curve, matching surjections | Retain prime-to-characteristic condition  Carried from [r2]. |
| Unmarked Hurwitz fibre | g=1,A=C₃; marked versus sign quotient | Marked fibre 8, unmarked 4; −I pairs each surjection with its negative | Retain quotient; orbit counts unchanged  Carried from [r2]. |
| Boundary degeneration | Chain of three genus-one curves of compact type | Jacobian dimensions 1+1+1=3; torsion ranks 2+2+2=6; block pairing is J⊕J⊕J | Retain compact type  Carried from [r2]. |
| Overlapping symplectic subgroups | Three rank-two blocks; negative control with middle block zero over 𝔽₃ | For three rank-two blocks the full target has size 3⁹·8·80·728=9170703360; with zero middle block the generated block group has size 24²=576, not Sp₄(𝔽₃) of size 51840 | Retain nonzero overlap hypotheses  Carried from [r2]. |
| Mod-ℓ hyperelliptic monodromy | g=1,ℓ=3; g=0 excluded | Target SL₂(𝔽₃) has 24 elements; rank-zero symplectic group has 1 | Retain g≥1 and odd ℓ  Carried from [r2]. |
| Integral lifting | Two displayed mod-9 generators | Generated group 24; reduction 24; kernel 1; full group 648, index 27 | Retain extra kernel condition; not a false Lean headline  Carried from [r2]. |
| Legendre inertia (README §5.17) | Node y²=x(x−1)(x−t), t=s³, and ℓ=3 | With y′=y/√(x−1), z=x−t/2, z²−y′²=t²/4; graph length 2 becomes 6 after t=s³; U³ mod 9 has entry 6; N²=0 | Retain; matches the positive toric/period monodromy convention  Carried from [r2]. |
| Integral hyperelliptic monodromy | g=1,ℓ=3; Legendre transvection U | U³ mod 3=I; U³ mod 9=[[1,6],[0,1]]≠I | Retain; the new Legendre target supplies geometric occurrence  Carried from [r2]. |
| Polynomial-family monodromy | n=3,ℓ=3; n=1 | g=(3−1)/2=1, target SL₂(ℤ₃); n=1 gives rank 0 | Retain; n=3 now includes ℓ=3, while n=1 has rank zero  Carried from [r2]. |
| Finite-level monodromy | g=1,ℓ=3,m=1,2 | Full groups have 24 and 648 elements; reduction kernel has 27 elements | Retain; Legendre inertia supplies the missing level-two kernel  Carried from [r2]. |
| Similitude matrix subsets | g=1,diag(1,2),ℓ=3; rank 0 | hJhᵀ=2J; determinant 2 is a unit; rank-zero matrix is unique for every multiplier | Retain unit multiplier, handle rank zero  Carried from [r2]. |
| Monodromy orbits/components | Sur(𝔽₃²,𝔽₃),q=2 | Eight maps form one Sp₂ orbit; four sign classes also form one orbit; one Frobenius-stable orbit | Retain marked/unmarked distinction  Carried from [r2]. |
| Primary decomposition | ℓ=3,h=diag(1,2); q=1 identity; ℓ=5,h=diag(6,1/3) | Summand ranks (1,1,0); at q=1 both primary spaces equal V; in the last case ranks (1,1,0) but exact generalized 1-eigenspace has rank 0 | Retain new Checks; q−1-unit condition is necessary  Carried from [r2]. |
| Symplectic normal forms | Rank 0; rank 2 with e,f; nonprimitive 3e | Empty basis works; ω(e,f)=1; ℤ₃(3e) is not a direct summand since quotient has C₃ torsion | Retain direct-summand condition  Carried from [r2]. |
| Orthogonality/killed Lagrangian | h=diag(2,1), f(x,y)=y mod 3 | f∘h=f; ker f contains ℤ₃e; ω(e,e)=0 and rank 1 is half of 2 | Retain  Carried from [r2]. |
| Lattice-surjection transitivity | ℤ₃→ℤ/9; g=0 | Six unit images and one GL₁ orbit; zero target has one map, nonzero target none | Retain existence/generator hypotheses  Carried from [r2]. |
| Unique stable symplectic orbit | g=1,A=C₃,q=2; q=1,g=2,A=C₃² negative control | Eight stable surjections, one orbit. At q=1 the maps onto coordinates (x₁,x₂) and (x₁,y₁) have induced alternating rank 0 and 2, hence different orbits | Retain q−1 a unit  Carried from [r2]. |
| One rational geometric component | A=C₃,g=2,q=5; excluded q=7 | Generator bound 2≥1; q−1=4 is a 3-adic unit and orbit theorem gives 1; q=7 gives q−1=6 nonunit | Retain; do not apply in excluded root-of-unity case  Carried from [r2]. |
| Uniform function-field moment | A=0; bound algebra with C=1,B=5,q=121 | Trivial moment error 0; normalized trace error ≤(121/120)(1/10)+1/120=131/1200≤5/11 | Arithmetic estimate consistent; R01 supplies uniform C  Carried from [r2]. |
| Large-q Cohen–Lenstra | ℓ=3,A=0,C₃ | Predicted masses c₃≈.56012608 and c₃/2≈.28006304; Aut sizes 1,2 | Retain both density limits; R01  Carried from [r2]. |
| Positive proportions | Same ℓ=3 | Complement 1−c₃≈.43987392>0; c₃>0 | Retain complement of upper density for the lower bound; R01  Carried from [r2]. |
| Eventual-degree large-q filter | E=n/(n+q); moduli 0,2,3 | Iterated limits 0 and 1; A₀ bottom; A₂ forces odd q; A₃ contains unbounded even 2^k | Retain nonzero modulus and divisibility refinement  Carried from [r2]. |
| Imaginary per-component moment | C₃-dihedral type; leading component count at fixed n | q^(2n−1)/(q^(2n−1)−q^(2n−2))=q/(q−1)→1 | Retain fixed degree and component-uniform error  Carried from [r2]. |
| Real per-component moment | Same group, real slice | q^(2n)/(q^(2n)−q^(2n−1))=q/(q−1)→1; finite degree is 2n, not 2n+1 | Retain  Carried from [r2]. |
| Imaginary normalized moment | G=C₃; G=C₃² reduced multiplier C₃ | C₃ value 1/2; for C₃², multiplier sizes at q=5,7 are 1,3, divided out inside the limit | Retain  Carried from [r2]. |
| Real normalized moment | G=C₃, F=S₃ | Outside class size 3, automorphisms 2; normalized value 1/(3×2)=1/6 | Retain; good-type hypothesis matters  Carried from [r2]. |
| Stable parity count | N=2,ε=(0,0),d=4,N₀=0 and 1; d=3 | Counts 3=choose(3,1), 1=choose(1,1), 0 for odd total | Retain guards against negative or odd L  Carried from [r2]. |
| Least parity integer | (N₀,e)=(2,0),(2,1),(0,3) | Values 2,3,1; parities 0,1,1 | Retain e modulo 2  Carried from [r2]. |
| Many parity vectors | N=2,N₀=0,d=4,ε=00; d=5,ε=10 | Counts 3≥4/4 and 3≥5/4; wrong total parity yields 0 | Retain parity and eventual-degree restriction  Carried from [r2]. |
| Bad-type lower bound | Stable-count mechanism N=2, ε=00 or 10, d=2n or 2n−1, N₀=0 | Stable counts n+1 or n, hence ≥n; adding boundary counts cannot decrease them | Supports lower-bound mechanism only, not an arithmetic limit  Carried from [r2]. |
| Real rigidification | G=1,C₃,C₂ with types C₂,S₃,C₂² | Fibre sizes and bounds 1,6,2; last type has centre of size 4 | Retain; bad abelian example not inside centre-free Hurwitz theorem  Carried from [r2]. |
| Bad normalization transfer | Rigid lower bound wn^(N−1), fibre bound M=2 | Unrigid lower bound (w/2)n^(N−1)>0; no equality of fibres needed | Retain inequality direction  Carried from [r2]. |
| Printed bad-limit proposition | E=n^(N−1); E=0; E=n^(N−1)c(q), c=1 or 3 on recurrent residues | First has limit n^(N−1); second cannot meet w>0; third has liminf n^(N−1), limsup 3n^(N−1) | Retain as conjectural proposition, not proved ordinary limit  Carried from [r2]. |
| Whole component profile | Counts (1,0,0) for d=2,N=2,N₀=1,M=1; zero counts | Full profile 1 versus stable contribution 0; zero profile 0 | Retain boundary data and prose API  Carried from [r2]. |
| Boundary remainder | Counts (2,5,0),M=2 then M=1 | 7/2=5/2+1; 7=5+2 | Retain normalizer on both contributions  Carried from [r2]. |
| Complete stable sum | Central A=C₂,b nontrivial,q=3,5; A=C₄,b generator,q=3,5,7,9 | C₂ obstruction values 1,0 versus image {0}: fail,pass. C₄ values 1,2,3,0 versus images {0,2},{0},{0,2},{0}: fail,fail,fail,pass | Retain power condition and separate abelianization condition  Carried from [r2]. |
| Moment minus profile | q=9,B_n=2,K_d=1,M=1,C_n=2, exact leading numerator | Ratio 18/8=9/4, profile 2, difference 1/4≤2(1/3+1/9)/(1−1/9)=1 | Retain fixed-n error and denominator  Carried from [r2]. |
| Limit iff profile constant | Finite profile 2 with error q^(-1/2); recurrent profile 1,3 | Limit 2 in first case; liminf 1 and limsup 3 in second | Both directions verified on controls; exclude bottom filter  Carried from [r2]. |
| Recurrent extrema | Profile 100 only at bounded q, then recurrent values 1,3 | Recurrent set {1,3}; minimum 1, maximum 3; 100 affects neither limit | Retain  Carried from [r2]. |
| Weight series | N=1, (N₀,S)=(0,{0}),(1,{0}),(1,{1}), empty S | Series coefficients begin (1,0,1,0,1), (0,0,1,0,1), (0,1,0,1,0), and all zero | Multiplication by 1−X² gives 1,X²,X,0 respectively  Carried from [r2]. |
| Semidirect surjection bijection | G=S₃,H=C₃,Γ=C₂; H=1 | Six automorphisms correspond to 1 quotient ×3 sections ×2 equivariant isomorphisms; H=1 reduces to quotient maps | Retain  Carried from [r2]. |
| Coprime abelian sections | C₃ with C₂ inversion versus trivial action | Section counts 3=[C₃:0], and 1=[C₃:C₃] | Retain coprimality and action  Carried from [r2]. |
| Unramified counting normalization | H=1,Γ=S₃, one fixed Γ-extension class | Six raw surjections versus one class; multiply by size(ZΓ)/size(Γ)=1/6 | Retain corrected factor  Carried from [r2]. |
| LWZB moments | Γ=C₂,H=C₃ inversion; H=Γ=1 | Fixed subgroup sizes 1,1; targets 1/3,1. q=5 allowed; q=7 excluded since gcd(6,3)=3 | Retain double liminf/limsup and (SZ)  Carried from [r2]. |
| CLM moments | Γ=C₂,H=C₉ inversion | H^Γ=1 since 2 is invertible; [H:H^Γ]=9 and target 1/9 | Retain  Carried from [r2]. |

## Not verifiable

- No source required to check the 35 changed lines was inaccessible. The sources service obtained all three relevant texts legally.
- Carried from [r2]: Silverman, *The Arithmetic of Elliptic Curves*, V.1.1 was not available through a legal full-text search. The unchanged use was checked there against Tau Ceti's Hasse declarations. It is not a new missing input or a reason to park this review.
- The unchanged source audits, arithmetic tests and one-tactic results are inherited from [r2]. This incremental pass does not recertify later editions or every journal-page translation of the preprint locators.

## Source issues

No new source error was found in the changed passages. The following previously recorded issues are carried from [r2]; none is silently treated as a newly discovered erratum.

- **Misprint** in ref-46 at Lemma 5.6, preprint p.55 (`ref-46 line 3722`): the source says the gradient stratum itself is at most a number; it should be its cardinality; affects nothing.
- **Error** in ref-45 at (51)–(56), preprint pp.30–33 (`ref-45 line 1243`, `ref-45 line 1330`, `ref-45 line 1355`): the source says the leading coefficient is one times [K:ℚ]n²log n; it should be one half, from the factorial product in (39); affects a stated result.
- **Misprint** in ref-45 at Lemma 5.9 proof, preprint p.32 (`ref-45 line 1368`): the source says there are k(k+1) extreme points; it should be k(k−1) for positive g in the stated nondegenerate range, with box upper bound εg; affects nothing.
- **Error** in ref-45 at Corollary 5.14 proof, preprint p.34 (`ref-45 line 1460`): the source says an h-fold elliptic factor gives zero-gap mass h/g; it should be at least (h−1)/g, yielding the same asymptotic bound; affects the proof.
- **Error** in ref-45 at Lemma 5.19, preprint p.36 (`ref-45 line 1554`): the source says the two elliptic point groups cannot both be p-groups for every prime; it should exclude p=2, where y²+xy=x³+x²+1 has counts 2 and 8; affects a stated result.
- **Gap** in ref-48 at Corollary 3.5 proof, author p.14 (`ref-48 line 561`): the source says full mod-ℓ image suffices by general group theory; it should additionally justify the nontrivial mod-nine kernel when g=1 and ℓ=3; affects the proof.
- **Misprint** in ref-37 at the deduction after Theorem 8.8, printed p.777 (`ref-37 line 1967`): the source says the probability measure records whole class groups isomorphic to A; it should record their ℓ-primary parts; affects the proof.
- **Error** in ref-37 at the proof of Theorem 8.8, printed p.779 (`ref-37 line 2059`): the source says the unmarked Hurwitz fibre is Sur(V,A); it should be Sur(V,A)/{±1}; affects the proof.
- **Misprint** in ref-37 at the proof of Lemma 8.9, printed p.782 (`ref-37 line 2180`): the source says to modify basis vectors with index greater than g; it should say greater than k; affects nothing.
- **Gap** in ref-50 at Theorem 4.8 and its bad-case proof, preprint pp.23–25 (`ref-50 line 981`, `ref-50 line 1051`): the source says the normalized bad-type ordinary limit exists with a polynomial lower bound; it should conclude the proved liminf bound unless whole-profile convergence is established; affects a stated result.
- **Misprint** in ref-50 at the real-case proof of Theorem 4.8, preprint p.25 (`ref-50 line 1087`): the source says the real quadratic discriminant exponent is Σn_i+1; it should be Σn_i because infinity is unramified; affects the proof.
- **Error** in ref-51 at Lemma 9.3, preprint pp.38–39 (`ref-51 line 1788`, `ref-51 line 1801`): the source says a sum over isomorphism classes equals the raw-surjection count divided only by [H:H^Γ]; it should also include |Z(Γ)|/|Γ|, or sum over raw quotient maps; affects a stated result.
- **Gap** in ref-51 at the proof of Theorem 1.4, preprint p.41 (`ref-51 line 1916`): the source says an inner q-limit exists from a uniform O(1/b) estimate; it should bound liminf and limsup unless convergence of the remaining profile is proved; affects a stated result.
- **Misprint** in ref-37 at the introduction before Theorem 1.2, printed p.730 (`ref-37 line 41`): the source says the predicted probability of class number indivisible by three is 1−c₃≈0.440; it should be c₃≈0.560, as Theorem 1.2 gives for the trivial three-part; affects nothing.

[r2]: packages/ArithmeticStatisticsPartVIII/reports/PRREVIEW-ArithmeticStatisticsPartVIII~2.md
