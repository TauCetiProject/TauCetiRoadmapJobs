# Review of ArithmeticStatisticsPartVIII (pull request #1179 at b3b98cc)

**Verdict:** needs changes

## R01 (P1) — Replace the free uniform Betti hypothesis with its supplier theorem

**Location:** `TauCetiRoadmap/ArithmeticStatisticsPartVIII/README.md:90`, propagated at lines 1180, 1196 and 1214: “Section 5.19 is conditional on this hypothesis”.

**Claim:** The large-q Cohen–Lenstra endpoint is reached by assuming (HS), although this is the essential uniform-in-degree theorem, not a conjectural arithmetic hypothesis. The current contracts do not supply it. This bypasses required theory.

**Witness:** `ref-37 line 1628` states Proposition 7.8; `ref-37 line 1647` uses homological stability. `InverseGaloisAndArithmeticFundamentalGroups` §IG.5.5 explicitly excludes that work. Fixed-degree bounds B_n=n cannot imply a degree-independent bound C²: take n>C².

The ownership search found the precise intended supplier: `packages/InverseGaloisAndArithmeticFundamentalGroupsPartII/design/README.md:842`, target `HS.5/uniform-etale-betti`. Its hypotheses include a rational, nonidentity, generating nonsplitting class, centre-free G, tame characteristic and an auxiliary prime larger than max(|G|,q,n). That package is after Part VIII in the supplied merge order, so it is not an available upstream contract as presently arranged. This is not a request to duplicate its stability construction.

**Repair:** Arrange supplier-first placement for that existing HS.5 target and this consumer; import its exact statement in the supplier contracts and the relevant Needs lines, and remove the free (HS) assumption from §5.19 and its Lean docstring description. If ownership must move, move the existing target and its prerequisite chain coherently rather than restating it independently. For G=C₃⋊C₂ and c the three transpositions, every extra supplier hypothesis holds; the genuine uniform theorem gives C² at i=1 independently of n, eliminating the quantifier defect above. The source theorem then supplies the input used by the existing trace argument.

## R02 (P2) — Include genus-one 3-adic hyperelliptic monodromy

**Location:** `TauCetiRoadmap/ArithmeticStatisticsPartVIII/README.md:986`, also lines 1002 and 1018: “The case `(g, ℓ) = (1, 3)` is not covered by this argument.”

**Claim:** Integral and finite-level hyperelliptic monodromy omit this case because the chosen lifting argument does not establish it. Line 998 justifies the omission by the eventual-degree application. This narrows the general library to the route's needs.

**Witness:** Achter–Pries Corollary 3.5 includes g=1, ℓ=3 (`ref-48 line 559`). The displayed mod-9 generators produce order 24, reduction order 24 and kernel order 1, whereas SL₂(ℤ/9) has order 648. Full reduction alone therefore does not prove the missing case.

**Repair:** Keep the correctly qualified `Similitude.integral_lift`, and add the geometric genus-one input proving its extra kernel hypothesis. For example, prove the Legendre-family monodromy contains the tame transvection U=[[1,2],[0,1]], with its specialization/comparison hypotheses, then apply the lifting criterion. Restore all odd ℓ and g≥1 in the geometric monodromy results and n=3, ℓ=3 in the polynomial-family results. The proposed witness has U³=[[1,6],[0,1]] modulo 9: reduction modulo 3 is the identity but reduction modulo 9 is not. It supplies exactly the missing condition and excludes the order-24 countermodel. The occurrence of U in geometric monodromy must be a target with a proof route, not an additional assumption.

## R03 (P3) — Remove the 86 forbidden HTML anchors

**Location:** `TauCetiRoadmap/ArithmeticStatisticsPartVIII/README.md:194`, and the other 85 `<a id=` lines.

**Claim:** The supplied gate fails its residue rule on these anchors.

**Witness:** The worker's gate at the reviewed head reports `residue=86` and `FAIL`; its other counters, including build, dependency check and outside-folder, are zero.

**Repair:** Replace the anchor-plus-bold-title pairs with ordinary Markdown subheadings and use their generated fragments. For example, a heading “Polynomial congruence under perturbation” generates the existing `#polynomial-congruence-under-perturbation` fragment without an HTML tag. Give the reference entries ordinary heading or reference-link targets as well. Check fragments whose present anchor differs from their title, then rerun the gate. Acceptance requires a passing gate.

## R04 (P3) — Write undeclared API names as prose

**Location:** `TauCetiRoadmap/ArithmeticStatisticsPartVIII/README.md:340` and lines 342–356, 1430–1434, 1458–1464, 1488–1496 and 1526–1534.

**Claim:** Backticked local API identifiers claim declarations that `Suggested.lean` does not contain. For example, `FormDensity.vecValuation` and `FixedDegreeComponentData.profile` are absent.

**Witness:** The file has exactly four definitions and five theorems, in the `HypersurfaceDensity` and `Similitude` namespaces. None of the FormDensity or FixedDegreeComponentData declarations exists there.

**Repair:** Retain these mathematical APIs in prose, without local declaration identifiers; retain backticked local names only for the nine actual declarations. For example, say “The capped valuation is at most r” instead of naming `FormDensity.vecValuation_le`. The values v₃(1,0)=0, v₃(3,0)=1 and v₃(0,0)=2 remain the same. Do not add these API lemmas to the Lean acceptance test.

## R05 (P3) — Add a Check distinguishing topological primary spaces from kernels

**Location:** `TauCetiRoadmap/ArithmeticStatisticsPartVIII/README.md:1074`, Checks at lines 1082–1086.

**Claim:** This definition has only two Checks. Its positive Check uses exact eigenvectors, so it does not distinguish topological nilpotence from algebraic generalized eigenspaces.

**Witness:** Over ℤ₅ take q=2 and h=diag(6,1/3). Its multiplier is 2. On e₁, (h−1)^N e₁=5^N e₁ tends to zero, but is nonzero for every finite N.

**Repair:** Add this example with V₁=ℤ₅e₁, V_q=ℤ₅e₂ and W=0. The ordinary generalized 1-eigenspace is zero, so the example rejects that wrong definition. Also useful is h=diag(3,2/3), for which both primary parts vanish and W=V. These supply the missing discriminating Check without changing the statement. Mathlib's `Module.End.maxGenEigenspace` is a union of exact kernels, not the topological primary space (`Mathlib/LinearAlgebra/Eigenspace/Basic.lean:556`).

## R06 (P3) — Repair stale supplier locators

**Location:** `TauCetiRoadmap/ArithmeticStatisticsPartVIII/README.md:1791` and line 1793, definitions of `[part-8]` and `[part-10]`.

**Claim:** The links target `#support-abelian-counts` and `#support-function-fields`, neither of which is an anchor or heading in the supplied current Part I text.

**Witness:** `TauCetiRoadmap/ArithmeticStatisticsPartI/README.md:2513` heads “Supporting constructions”; its abelian-count and function-field paragraphs occur at lines 2533 and 2541. The required mathematics is there, but the two named fragments are not.

**Repair:** Point both links to `#supporting-constructions`, identifying the appropriate paragraph in their link labels. The abelian paragraph still supplies finite unpolarized counts, and the function-field paragraph still retains Pic(C)/⟨removed places⟩. On P¹ with a removed degree-two place the latter gives ℤ/2, not the zero Jacobian; no mathematical contract needs replacing.

The same locator repair is needed at line 142: GeometryOfNumbersAndQuadraticArithmetic §3.3 calls the relevant item “Positive- and negative-integer zeta values in the mass formula” (`TauCetiRoadmap/GeometryOfNumbersAndQuadraticArithmetic/README.md:1135`), not “Completed zeta factors for the mass normalization”. Its continuation and functional-equation comparison does supply the required mathematics; update the quoted target title.

## Verified sound

The review covered the complete README and all nine Lean declarations at the specified head. Two main-branch shape examples, `MassFormula` and `StandardDistributions`, were read. The outside-folder diff is empty. No sorry-valued data, forbidden option, computational-algorithm target, copied source passage, duplicate fully qualified declaration, or cycle was found. The scope extends the earlier statistics parts; it does not replace their carriers. R01 identifies a missing contracted proof input, not a claim that the conditional implication is false. R02 concerns missing generality, not a false restricted monodromy theorem.

**Build and signatures.** The targeted worker build passed. Direct `lake env lean` elaboration of the original file and independent elaboration of a scratch copy with `#check @...` for each of the nine declarations succeeded with only the five `sorry` warnings. All needed prime, freeness, finite-generation, perfect-pairing, rank, closedness, exceptional-kernel and generator binders survive. The three density formulas agree with the README, including unnormalized second moment versus normalized variance. The orbit statement retains an actual surjection from ℤ_ℓ^g to A; it does not quantify over arbitrary unrelated data.

Each of the five admitted theorems was probed on a copy using `simp`, `rfl` and `infer_instance`. None closed. Object searches and inspection of the pinned candidate declarations found no single library lemma giving any of these five statements. No padding finding is raised. The four real-body definitions are needed for those statements.

**Headlines.** The five statable acceptance targets are the first density moment, second moment, variance, integral symplectic lifting criterion and unique similitude-stable orbit. The other deep endpoints are polarized concentration and its spacing/enhanced-model obstructions; the class-group/Hurwitz dictionary; the uniform trace estimate; hyperelliptic monodromy; rational components and large-q Cohen–Lenstra; good and bad Wood moments and complete component profiles; and the Liu–Wood–Zureick-Brown/Cohen–Lenstra–Martinet moments. The module docstring names each group and its missing arithmetic or geometric carrier. Searches of the pins did not find these missing Hurwitz, polarized-moduli, rational étale-cohomology or radical-discriminant-family interfaces. No scalar or free-predicate substitute is used. R01 and R02 remain necessary at the roadmap level.

**Seeded source audit: all eleven requested subsections.** The source service retrieved all nine numbered references and the additional Deligne–Mumford and Katz–Lang texts legally. No additional locator is explicitly flagged as unverified in the README. Locators below use the versions actually read: published Annals for ref-37; arXiv v1 for ref-45 and ref-46; arXiv v4 for ref-47; author PDF for ref-48 and ref-52; arXiv v2 for ref-49, ref-50 and ref-51. No assumption that preprint and journal pagination coincide was made.

| Target | Text and locator read | Conclusion of comparison |
|---|---|---|
| 5.12 | ref-46 Lemmas 5.4–5.7, pp.53–57, lines 3576–3802; ref-47 Lemma 3.3, pp.13–14, lines 572–597 | Exact incidence argument supports the moments; broader d≥1 and n≥2 ranges were separately tested below. Hensel requires m≥2δ+1 and δ≤m−ℓ. |
| 5.13 | ref-45 (39), (51)–(56), Lemmas 5.9 and 5.11, pp.27–34, lines 1065–1082 and 1233–1450; ref-52 §9, pp.121–122, lines 960–1004 | Factorial leading term is 1/2; quaternionic mass supplies the additional real-Weil block. H1/H2 remain explicit conjectural assumptions. |
| 5.14 | ref-45 Corollary 5.14 and Lemma 5.19, pp.34,36–37, lines 1453–1463 and 1544–1582 | Finite-g zero-gap correction is retained. The odd-p restriction avoids the explicit p=2 exception. |
| 5.15 | ref-37 Proposition 8.7, pp.774–776, and Theorem 8.8 proof, pp.777–779, lines 1840–1991 and 2053–2064 | Surjections versus sign classes, primary class groups and factor two are distinguished. |
| 5.16 | ref-37 Theorem 8.8 proof, p.778, lines 1996–2027 | Poincaré duality, top-component trace and geometric-series error use the stated smoothness, pure dimension and weight hypotheses. |
| 5.17 | ref-48 Lemmas 3.1–3.2, Theorem 3.4 and Corollary 3.5, pp.11–14, lines 415–564; ref-49 Main Theorem 1.3, pp.2–3, lines 72–86; ref-37 p.780 | Mod-ℓ argument and qualified integral lifting agree. R02 records the omitted geometric exception and the source proof gap. |
| 5.18 | ref-37 Lemma 8.9 and proof, pp.780–782, lines 2092–2183 | Units q and q−1, the rank/generator bound, topological primary spaces and killed Lagrangian are essential. |
| 5.19 | ref-37 Proposition 7.8, pp.769–770, lines 1628–1658; Theorem 8.8, p.777, lines 1960–1977; Theorem 1.2, p.730 | The source proves the uniform input. R01 concerns its absence from the build. The two degree-density limits and q-limit are otherwise correctly ordered. |
| 5.20 | ref-50 Theorem 4.8, pp.22–25, lines 964–1107; Theorem 4.5, pp.20–21, lines 878–907 | Fixed-degree large-q unit moments, infinity degrees and the automorphism/involution normalization factors agree. |
| 5.21 | ref-50 Proposition 4.1 and equation (6), pp.18–19, lines 777–827; bad-case proof, pp.24–25, lines 1051–1078 | Central power obstruction, surviving parity vectors and stable lower bound agree. The full boundary profile correctly prevents an unjustified ordinary-limit assertion. |
| 5.22 | ref-51 Lemmas 9.1 and 9.3, pp.37–39, lines 1751–1820; Theorem 10.4 and Theorem 1.4 proof, pp.39–41, lines 1844–1922 | Raw quotient maps versus isomorphism classes and liminf/limsup versus inner limits are correctly separated. |

**Adversarial mathematics.** The following table has one row for each of the 76 bold mathematical targets, plus the supporting constructions and retained definitions. Finite density, congruence-kernel and orbit counts were exhaustively enumerated with integer/rational arithmetic. Other rows compute boundary cases, normalization identities or explicit countermodels by hand. A finite or asymptotic control tests the stated identity/hypotheses; it does not independently prove a general geometric or asymptotic theorem. Those claims were also compared with the sources and supplier contracts above. “Retain” means no repair arose from that test.

| Statement / location | Instances tried | Computed values on the two sides | Result / change |
|---|---|---|---|
| Primitive vectors (Lean 41) | One coordinate modulo 3; zero ring modulo 1; empty coordinates modulo 3 | Counts 2, 1, 0 respectively; generating the unit ideal gives the same counts | Retain; q=0 excluded by NeZero |
| Coefficient form (Lean 47) | d=2,n=1, coefficients (1,2,3); d=0 | X₀²+2X₀X₁+3X₁²; constant a | Retain; theorem requires d≥1 |
| Local density (Lean 53) | Linear form X₀, n=2,q=4; q=1 | 12 primitive zeros /16 =3/4; 1/1=1 | Retain |
| Similitude-fixed surjections (Lean 110) | V=ℤ₃²,A=C₃,q=2; zero map to C₃; zero target | 8 surjections qualify; zero map is not surjective; zero target gives one map | Retain |
| IG-a, IG-b adapters (README 84–94) | C₃-dihedral covers; imaginary and real discriminant exponent 2n | Sign quotient has 8/2=4 points; finite branch degrees 2n−1 and 2n | Retain the distinct markings |
| Hyperelliptic Jacobian adapter (116) | n=1,3; g=1,ℓ=3,m=2; characteristic 2 model | Dimensions 0,1; torsion rank 3⁴=81; y²=x³+x+1 has both derivatives zero at (1,1) in characteristic 2 | Retain; characteristic 2 excluded |
| GN-a minor content/index (128) | Columns e₁,e₂ at Q=3; e₁,(1,3) at Q=3; equal columns | Contents 1,3,0; independent indices 9/1=9 and 9/3=3; dependent formula excluded | Retain |
| GN-b CM involution/model (130) | i in ℤ[i]; matrix [[0,1+i],[2,0]]; product rings | Conjugates −i and [[0,2],[1−i,0]]; involution squared is identity | Retain |
| GN-b quaternionic involution (130) | Hamilton i,j; 2×2 off-diagonal i,j | (ij)*=−ij=j*i*; conjugate transpose [[0,−j],[−i,0]] | Retain; anti-multiplication order matters |
| GN-c orbit count/product (132–138) | Empty product; imaginary-quadratic rank one; Gaussian rank eight | Counts 1,1,≥2; I₈ has norm 1 while E₈ has only even norms; multiplying a rank-one block preserves the count | Retain |
| GN-c asymptotic normalization (132) | One block, degree [K:ℚ]=1 | Sum of log(j!), j<n, has leading coefficient 1/2 in n²log n, not 1 | Retain corrected coefficient |
| GN-d quaternionic count/mass (134–142) | m=0,1,2; K=ℚ(√2) or ℚ(√5) at rank one | Count at m=0 is 1; rank-one count 1; mass factors are 1, abs(ζ_K(−1))/4, and successive ratio abs(ζ_K(−3))/4 | Retain; mass is weighted, not the free-class count |
| Uniform Betti input (90) | Fixed-degree bounds B_n=n; i=1 | n=C²+1 exceeds C² | R01: consume the uniform theorem |
| Polynomial perturbation (196) | f=X²,x=1,h=3 over ℤ; zero polynomial | Difference 15 is in (3); zero difference 0 is in every ideal | Retain |
| First-order Taylor (212) | Same data; square-zero h=ε | Remainder 16−1−6=9=h²; ε²=0 makes remainder 0 | Retain over a general commutative ring |
| First local moment (228) | (d,n,p,r)=(1,0,2,1),(1,1,2,1),(2,2,3,1) | Means 0,1/2,121/126; formula gives 0,1/2,121/126 | Retain; N−1=0 case included |
| Two-point incidence (250) | d=1,n=1,p=3,r=2; minor valuations v=0,1,2 | Primitive coefficient counts 0,0,6; formula gives 1−1,3−3,9−3 | Retain; proportional mod p is not proportional mod pʳ |
| Veronese minor valuation (266) | d=2, vectors (1,0),(1,3), modulo 9; equal vectors | Linear minors gcd 3 and quadratic minors gcd(3,9)=3; equal-vector gcd(0,9)=9 on both sides | Retain |
| Primitive pair gcd sum (284) | n=2; (p,r)=(2,1),(2,2),(3,1) | Sums 56≤113, 3808≤7232, 780≤1162 | Retain |
| Second local moment (300) | (1,2,2,1),(1,2,3,2),(2,2,2,2),(2,2,3,1) | Sums 63/16≤113/8; 1664/3≤1162; 3584≤7232; 62504/81≤1162 | Retain; r-uniform bound survives small primes |
| Local variance (318) | Same four cases | Variances 1/16≤2; 1/81≤4/3; 1/6≤2; 79/567≤4/3 | Retain |
| Gradient valuation/strata (336) | p=3,r=2; (1,0),(3,0),(0,0); f=X₀X₁ in three variables | Valuations 0,1,2; zeros (1,0,0) and (0,0,1) give strata 0 and 2 for the same form | Retain overlap; R04 changes API typography |
| High gradient count (376) | Binary quadratics mod 9, primitive coefficients | Stratum sizes e=0,1,2 are 324,72,72; e=1 bound 486, e=2 bound 162 | Retain; e=0 not within this bound's assertion |
| Fixed-gradient Hensel (392) | F=t²,p=3,δ=1,A=9,ℓ=0,m=3; negative control A=0,m=2 | Counts mod 27 and 81 are 6 and 6 (s−1=0); invalid m=2 gives 2 versus 0 | Retain m≥2δ+1 |
| Density lower bound (408) | f=X₀, n=2,p=2,r=2,e=0; f=X₀²,n=1,p=3,r=2,e=2 | 3/4≥1/4; 18/9=2≥1/27 | Retain; σ can exceed 1 |
| Convex concentration (426) | g=100,ε=.99,x=(99,1); g=0 | Sum squares 9802=(.99²+.01²)10000; 0=0 | Retain; boundary equality allowed |
| Weighted squares (444) | C=0,g=100; one pair (k,n)=(2,50); excluded (1,100) | 2500log50≈9780.06<4950log100≈22795.59; excluded case 5000log100≈23025.85 exceeds it | Retain the exclusion; finite test does not fix g₀ for C>0 |
| Model-ring concentration (462) | One imaginary-quadratic block of size g versus two equal blocks | Leading coefficients of g²log g are 1/2 versus 1/4; threshold .495 separates them | Retain, using corrected GN-c |
| Unpolarized count (480) | g=0; two nonsingular elliptic curves over 𝔽₅ | g=0 gives B=1,log B=0; y²=x³−x and y²=x³+x have 8 and 4 points, so B(5,1)≥2 | Retain dimension restriction; no numeric C_p inferred |
| Polarized concentration (498) | g=1; pure E^g; dominant B₀ block | Bad count 0 in dimension 1; E^g has h/g=1; B₀^m has dimension 2m, coefficient 2m²log m=(1/2)g²log g+O(g²) | Retain H1/H2 and prime hypothesis |
| Kolmogorov distance (518) | δ₀,δ₁; (δ₀+δ₁)/2 against δ₀; identical measures | Distances 1,1/2,0, matching suprema of CDF differences | Retain |
| Spacing measure (538) | Angles (0,0,π,π); one angle | Normalized gaps (0,2,0,2), mass 1, mean 1; singleton gap 1 with measure δ₁ | Retain multiplicities and wrap-around |
| Zero-gap mass (568) | Same four angles,h=2; two distinct angles,h=1 | Zero mass 1/2=2(2−1)/4; 0=2(1−1)/2 | Retain h−1, not h |
| Atom lower bound (586) | μ=(δ₀+δ₁)/2 and ν=δ₁ | CDF difference at 0 is 1/2; d_K=1/2 and μ{0}=1/2 | Retain support condition on ν |
| Ppav spacing discrepancy (602) | E^g with two distinct eigenangles; h=990,g=1000 | Zero mass 1−1/g; dominant-factor lower bound (h−1)/g=.989, approaching .99 at proportion .99 | Retain asymptotic statement, not finite-g .99 |
| Enhanced model obstruction (620) | Ordinary elliptic examples at p=3,5; excluded p=2 | At p=3, trace 1 gives counts 3 and 15, hence 5-torsion over 𝔽₉; at p=5 trace −2 gives 8. For y²+xy=x³+x²+1 over 𝔽₂ counts 2,8 have no odd torsion | Retain odd-p hypothesis; random-model positivity supplied by Part VII |
| Dihedral datum (638) | A=C₃; A=0; nonabelian ambient S₃ | Involutions 3, centre size 1 for S₃; A=0 gives C₂ with centre size 2, excluded from centre-free case | Retain nonsplitting and nontriviality distinctions |
| Class-group surjection pairs (674) | Cl=C₃,A=C₃; A=0 | Two surjections become one sign class; zero target has one fixed map | Retain trivial target separately |
| Involution quotient (714) | J=C₃⊕ℤ₃ with σ=(-1,+1) | (1+σ)J=0⊕ℤ₃ since 2 is a unit; quotient C₃ | Retain odd ℓ; at ℓ=2 constants leave ℤ/2 |
| Hurwitz/class-group classification (730) | Cl=C₃,A=C₃; genus-zero class group | One sign class corresponds to one cover; no surjection from the zero group to C₃ gives zero covers | Retain |
| Factor-two identity (748) | Cl=C₃,A=C₃; A=0 | 2 surjections=2×1 sign orbit; trivial-target 1≠2×1 is explicitly separate | Retain |
| Empirical primary law (764) | Cl=C₂×C₃,ℓ=3,A=C₃ | Primary type C₃ has probability 1; Sur(C₂×C₃,C₃)=2=Sur(C₃,C₃) | Retain primary group, not whole group |
| Degree densities (798) | Values alternating 0,1 on odd degrees; constant 1/2 | Lower/upper 0,1; constant both 1/2 | Retain separate limits |
| Top component trace (820) | A¹/𝔽₃; two rational copies; two conjugate copies; empty scheme | Traces 3,6,0,0 =3×(1,2,0,0) fixed components | Retain geometric Frobenius and Tate twist |
| Uniform trace error (836) | A¹/𝔽₁₆,C=1; n=0 singleton | Error 0≤1/(4−1)=1/3; dimension-zero error 0 | Retain √q>C and one fixed component |
| Torsion local system (862) | g=0,1; ℓ=3,m=1,2 | Torsion sizes 1,9,81; perfect-pairing matrix J has determinant 1; multiplier of diag(1,q) is q | Retain invertibility of 2ℓ |
| Geometric Jacobian comparison (880) | P¹ and elliptic curve over algebraic closure, A=C₃ | Connected C₃ torsors: 0 for P¹; 3²−1=8 for the elliptic curve, matching surjections | Retain prime-to-characteristic condition |
| Unmarked Hurwitz fibre (898) | g=1,A=C₃; marked versus sign quotient | Marked fibre 8, unmarked 4; −I pairs each surjection with its negative | Retain quotient; orbit counts unchanged |
| Boundary degeneration (916) | Chain of three genus-one curves of compact type | Jacobian dimensions 1+1+1=3; torsion ranks 2+2+2=6; block pairing is J⊕J⊕J | Retain compact type |
| Overlapping symplectic subgroups (934) | Three rank-two blocks; negative control with middle block zero over 𝔽₃ | With overlap, transvections link all blocks; with zero overlap generated block group has size 24²=576, not Sp₄(𝔽₃) of size 51840 | Retain nonzero overlap hypotheses |
| Mod-ℓ hyperelliptic monodromy (950) | g=1,ℓ=3; g=0 excluded | Target SL₂(𝔽₃) has 24 elements; rank-zero symplectic group has 1 | Retain g≥1 and odd ℓ |
| Integral lifting (966; Lean 92) | Two displayed mod-9 generators | Generated group 24; reduction 24; kernel 1; full group 648, index 27 | Retain extra kernel condition; not a false Lean headline |
| Integral hyperelliptic monodromy (986) | g=1,ℓ=3; Legendre transvection U | U³ mod 3=I; U³ mod 9=[[1,6],[0,1]]≠I | R02: prove geometric occurrence and include the case |
| Polynomial-family monodromy (1002) | n=3,ℓ=3; n=1 | g=(3−1)/2=1, target SL₂(ℤ₃); n=1 gives rank 0 | R02; retain distinction between n=1 and n=3 |
| Finite-level monodromy (1018) | g=1,ℓ=3,m=1,2 | Full groups have 24 and 648 elements; reduction kernel has 27 elements | R02; m=2 cannot follow from only m=1 surjectivity |
| Similitude matrix subsets (1036) | g=1,diag(1,2),ℓ=3; rank 0 | hJhᵀ=2J; determinant 2 is a unit; rank-zero matrix is unique for every multiplier | Retain unit multiplier, handle rank zero |
| Monodromy orbits/components (1058) | Sur(𝔽₃²,𝔽₃),q=2 | Eight maps form one Sp₂ orbit; four sign classes also form one orbit; one Frobenius-stable orbit | Retain marked/unmarked distinction |
| Primary decomposition (1074) | ℓ=3,h=diag(1,2); q=1 identity; ℓ=5,h=diag(6,1/3) | Summand ranks (1,1,0); at q=1 both primary spaces equal V; in the last case ranks (1,1,0) but exact generalized 1-eigenspace has rank 0 | R05; q−1-unit condition necessary |
| Symplectic normal forms (1090) | Rank 0; rank 2 with e,f; nonprimitive 3e | Empty basis works; ω(e,f)=1; ℤ₃(3e) is not a direct summand since quotient has C₃ torsion | Retain direct-summand condition |
| Orthogonality/killed Lagrangian (1106) | h=diag(2,1), f(x,y)=y mod 3 | f∘h=f; ker f contains ℤ₃e; ω(e,e)=0 and rank 1 is half of 2 | Retain |
| Lattice-surjection transitivity (1122) | ℤ₃→ℤ/9; g=0 | Six unit images and one GL₁ orbit; zero target has one map, nonzero target none | Retain existence/generator hypotheses |
| Unique stable symplectic orbit (1142; Lean 120) | g=1,A=C₃,q=2; q=1,g=2,A=C₃² negative control | Eight stable surjections, one orbit. At q=1 the maps onto coordinates (x₁,x₂) and (x₁,y₁) have induced alternating rank 0 and 2, hence different orbits | Retain q−1 a unit |
| One rational geometric component (1162) | A=C₃,g=2,q=5; excluded q=7 | Generator bound 2≥1; q−1=4 is a 3-adic unit and orbit theorem gives 1; q=7 gives q−1=6 nonunit | Retain; do not apply in excluded root-of-unity case |
| Uniform function-field moment (1180) | A=0; bound algebra with C=1,B=5,q=121 | Trivial moment error 0; normalized trace error ≤(121/120)(1/10)+1/120=131/1200≤5/11 | Arithmetic estimate consistent; R01 supplies uniform C |
| Large-q Cohen–Lenstra (1196) | ℓ=3,A=0,C₃ | Predicted masses c₃≈.56012608 and c₃/2≈.28006304; Aut sizes 1,2 | Retain both density limits; R01 |
| Positive proportions (1214) | Same ℓ=3 | Complement 1−c₃≈.43987392>0; c₃>0 | Retain complement of upper density for the lower bound; R01 |
| Eventual-degree large-q filter (1232) | E=n/(n+q); moduli 0,2,3 | Iterated limits 0 and 1; A₀ bottom; A₂ forces odd q; A₃ contains unbounded even 2^k | Retain nonzero modulus and divisibility refinement |
| Imaginary per-component moment (1260) | C₃-dihedral type; leading component count at fixed n | q^(2n−1)/(q^(2n−1)−q^(2n−2))=q/(q−1)→1 | Retain fixed degree and component-uniform error |
| Real per-component moment (1278) | Same group, real slice | q^(2n)/(q^(2n)−q^(2n−1))=q/(q−1)→1; finite degree is 2n, not 2n+1 | Retain |
| Imaginary normalized moment (1294) | G=C₃; G=C₃² reduced multiplier C₃ | C₃ value 1/2; for C₃², multiplier sizes at q=5,7 are 1,3, divided out inside the limit | Retain |
| Real normalized moment (1310) | G=C₃, F=S₃ | Outside class size 3, automorphisms 2; normalized value 1/(3×2)=1/6 | Retain; good-type hypothesis matters |
| Stable parity count (1328) | N=2,ε=(0,0),d=4,N₀=0 and 1; d=3 | Counts 3=choose(3,1), 1=choose(1,1), 0 for odd total | Retain guards against negative or odd L |
| Least parity integer (1330) | (N₀,e)=(2,0),(2,1),(0,3) | Values 2,3,1; parities 0,1,1 | Retain e modulo 2 |
| Many parity vectors (1350) | N=2,N₀=0,d=4,ε=00; d=5,ε=10 | Counts 3≥4/4 and 3≥5/4; wrong total parity yields 0 | Retain parity and eventual-degree restriction |
| Bad-type lower bound (1370) | Stable-count mechanism N=2, ε=00 or 10, d=2n or 2n−1, N₀=0 | Stable counts n+1 or n, hence ≥n; adding boundary counts cannot decrease them | Supports lower-bound mechanism only, not an arithmetic limit |
| Real rigidification (1386) | G=1,C₃,C₂ with types C₂,S₃,C₂² | Fibre sizes and bounds 1,6,2; last type has centre of size 4 | Retain; bad abelian example not inside centre-free Hurwitz theorem |
| Bad normalization transfer (1404) | Rigid lower bound wn^(N−1), fibre bound M=2 | Unrigid lower bound (w/2)n^(N−1)>0; no equality of fibres needed | Retain inequality direction |
| Printed bad-limit proposition (1422) | E=n^(N−1); E=0; E=n^(N−1)c(q), c=1 or 3 on recurrent residues | First has limit n^(N−1); second cannot meet w>0; third has liminf n^(N−1), limsup 3n^(N−1) | Retain as conjectural proposition, not proved ordinary limit |
| Whole component profile (1454) | Counts (1,0,0) for d=2,N=2,N₀=1,M=1; zero counts | Full profile 1 versus stable contribution 0; zero profile 0 | Retain boundary data; R04 names as prose |
| Boundary remainder (1484) | Counts (2,5,0),M=2 then M=1 | 7/2=5/2+1; 7=5+2 | Retain normalizer on both contributions |
| Complete stable sum (1522) | Central A=C₂,b nontrivial,q=3,5; A=C₄,b generator,q=3,5,7,9 | C₂ obstruction values 1,0 versus image {0}: fail,pass. C₄ values 1,2,3,0 versus images {0,2},{0},{0,2},{0}: fail,fail,fail,pass | Retain power condition and separate abelianization condition |
| Moment minus profile (1558) | q=9,B_n=2,K_d=1,M=1,C_n=2, exact leading numerator | Ratio 18/8=9/4, profile 2, difference 1/4≤2(1/3+1/9)/(1−1/9)=1 | Retain fixed-n error and denominator |
| Limit iff profile constant (1574) | Finite profile 2 with error q^(-1/2); recurrent profile 1,3 | Limit 2 in first case; liminf 1 and limsup 3 in second | Both directions verified on controls; exclude bottom filter |
| Recurrent extrema (1594) | Profile 100 only at bounded q, then recurrent values 1,3 | Recurrent set {1,3}; minimum 1, maximum 3; 100 affects neither limit | Retain |
| Weight series (1614) | N=1, (N₀,S)=(0,{0}),(1,{0}),(1,{1}), empty S | Series coefficients begin (1,0,1,0,1), (0,0,1,0,1), (0,1,0,1,0), and all zero | Multiplication by 1−X² gives 1,X²,X,0 respectively |
| Semidirect surjection bijection (1638) | G=S₃,H=C₃,Γ=C₂; H=1 | Six automorphisms correspond to 1 quotient ×3 sections ×2 equivariant isomorphisms; H=1 reduces to quotient maps | Retain |
| Coprime abelian sections (1656) | C₃ with C₂ inversion versus trivial action | Section counts 3=[C₃:0], and 1=[C₃:C₃] | Retain coprimality and action |
| Unramified counting normalization (1676) | H=1,Γ=S₃, one fixed Γ-extension class | Six raw surjections versus one class; multiply by size(ZΓ)/size(Γ)=1/6 | Retain corrected factor |
| LWZB moments (1692) | Γ=C₂,H=C₃ inversion; H=Γ=1 | Fixed subgroup sizes 1,1; targets 1/3,1. q=5 allowed; q=7 excluded since gcd(6,3)=3 | Retain double liminf/limsup and (SZ) |
| CLM moments (1708) | Γ=C₂,H=C₉ inversion | H^Γ=1 since 2 is invertible; [H:H^Γ]=9 and target 1/9 | Retain |

The 90 rows include the rank-zero, zero-target, empty-family, zero-ring, characteristic-two, small-prime, nonabelian, nonreduced, excluded-unit and total-function controls relevant to these statements. Smoothness and tameness exclude inseparable/nonreduced fibres from the geometric theorems; the relative Jacobian's base-change contract itself still includes a square-zero base. No averaging denominator in an asserted arithmetic limit is allowed to vanish: q>1, the relevant slice counts are positive in the stated eventual range, and multiplier normalizers have at least their identity element.

**Pinned-library audit.** All 47 Mathlib names in the explicit supplier list resolve in an independent `#check` file. The following definitions and theorem types were opened to check what they actually provide; paths here are relative to their pinned library roots.

| Pinned declaration | File and line | Contract checked |
|---|---|---|
| `MvPolynomial.eval_map` | `Mathlib/Algebra/MvPolynomial/Eval.lean:432` | Evaluation after coefficient mapping over commutative semirings |
| `MvPolynomial.induction_on`, `pderiv_mul` | `Mathlib/Algebra/MvPolynomial/Basic.lean:383`; `Mathlib/Algebra/MvPolynomial/PDeriv.lean:110` | Native polynomial induction and product derivative; no imported local-density moment |
| `Finset.Nat.antidiagonalTuple` | `Mathlib/Data/Fin/Tuple/NatAntidiagonal.lean:206` | Actual tuples of nonnegative integers with the prescribed sum; empty-index cases retained |
| `ProbabilityTheory.cdf`, `cdf_le_one`, `cdf_eq_real`, `Measure.eq_of_cdf` | `Mathlib/Probability/CDF.lean:56`, 66, 81, 115 | Probability assumptions and real CDF interpretation; equality is not assumed for arbitrary measures |
| `Matrix.symplecticGroup`, `SymplecticGroup.mem_iff` | `Mathlib/LinearAlgebra/SymplecticGroup.lean:101`, 117 | Matrix convention AJAᵀ=J; general commutative-ring carrier, not a monodromy theorem |
| `LinearMap.IsPerfPair` | `Mathlib/LinearAlgebra/PerfectPairing/Basic.lean:39` | Both maps to the dual are bijective; stronger than merely alternating |
| `PadicInt.toZMod`, `toZModPow`, `ker_toZModPow` | `Mathlib/NumberTheory/Padics/RingHoms.lean:300`, 447, 459 | Genuine reductions; level-n kernel is generated by pⁿ |
| `Module.End.maxGenEigenspace` | `Mathlib/LinearAlgebra/Eigenspace/Basic.lean:556` | Union of exact kernels; does not identify the topological primary space of §5.18 |
| `Subgroup.exists_right_complement'_of_coprime` | `Mathlib/GroupTheory/SchurZassenhaus.lean:277` | Existence with normality and coprime order/index; conjugacy remains the cited supplier's input |
| `CommGroup.primaryComponent`, `mem_primaryComponent` | `Mathlib/GroupTheory/Torsion.lean:450`, 459 | Elements killed by some prime power; not a claim that the whole class group is primary |
| `Filter.tendsto_pure` | `Mathlib/Order/Filter/Tendsto.lean:239` | Convergence to a pure filter means eventual equality |
| `Finite.instDiscreteTopology` | `Mathlib/Topology/Separation/Basic.lean:827` | Requires T₁ as well as finiteness; the finite rational profile inherits T₁ from ℝ |
| `WeierstrassCurve.frobeniusTrace_sq_le_four_mul_card`, `hasse_bound` | `TauCeti/AlgebraicGeometry/EllipticCurve/HasseBound.lean:52`, 65 | Finite field and ellipticity, counting the point at infinity |
| `TauCeti.GLSymplecticFin.eq_top_of_adjacent_of_long` | `TauCeti/LinearAlgebra/Matrix/GeneralLinearGroup/Symplectic/TorusGeneration.lean:165` | Field-level root-subgroup generation; not integral monodromy |
| `LinearMap.BilinForm.IsAlt.exists_basis_toMatrix_eq_J` | `TauCeti/LinearAlgebra/BilinearForm/SymplecticBasis.lean:301` | Field-level symplectic basis; not the integral direct-summand normal-form theorem |

**Ownership and supplier resolution.** Object searches used the roadmap index, the supplied open heads, main and the board's packages: polynomial evaluation and primitive density, polarization/positive-unit orbits, quaternionic mass, torsion and Weil pairing, symplectic bases and generation, Hurwitz components and stability, and class-group/semidirect moments. The arithmetic-statistics umbrella only lists the eight parts; it does not duplicate these owned targets. Generic carriers remain with their named suppliers. Part VIII owns the arithmetic moment estimates and comparisons, the additional ramified-infinity adapters, quaternionic counting application, and the integral orbit argument. The existing HS continuation is the ownership exception requiring R01's repair. No proposed new declaration was assigned an existing fully qualified name from an open roadmap.

All 26 `[part-*]` references were resolved by content. Twenty-four target fragments exist; the two stale fragments are R06. The relevant resolved locations include:

| Supplier | Sections/targets resolved at its indexed new-roadmap head | Boundary retained |
|---|---|---|
| ArithmeticStatisticsPartI | §§0.10–0.11 (README 1308–1454), §0.13 (1681–1728), §0.16 (1844–1924), §§0.19–0.21 (2143–2364), Supporting constructions (2513–2550) | Primitive density and actual coefficient form; finite ppav and unpolarized counts; both exact quadratic slices; marked/unmarked denominators |
| ArithmeticStatisticsPartIV | Finite abelian p-group types (181), surjections (224), Cohen–Lenstra measure (316), finite moment control (505) | Finite sets of moment tests precede uniform q,n thresholds |
| ArithmeticStatisticsPartV | Nonabelian quadratic moment interface (1584), embedded-type support (2662) | Real good-type multiplicity versus the bad-type bound |
| ArithmeticStatisticsPartVII | Enhanced law (282), zero-cokernel probability at 2 (312), at odd primes (330), enhanced conjecture (348) | Positivity does not silently assert existence of a joint limit |
| InverseGaloisAndArithmeticFundamentalGroups | IG.0.T4 and IG.0.3; IG.1.2; IG.3.4–IG.3.6; IG.4.5–IG.4.6; IG.5.3–IG.5.7 | Fixed-degree estimates and component classification; no uniform-in-degree Betti theorem. IG.5.5 says so explicitly at README 5923. |
| AbelianSchemesAndArithmeticModuli | A2; A3.2 (1441), A3.5 (1510), A3.7 (1628), A6.5 (2904), A6.18 (3253), A6.19 (3309) | Finite flat versus étale torsion; strong alternation; principal polarizations and Rosati orbits |
| JacobianChallengePartII | §§1.2–1.4, README 211, 232, 257 | Positive genus and noetherian original base, but arbitrary base change; genus zero handled separately here |
| GeometryOfNumbersAndQuadraticArithmetic | §§0.2–0.3; §2.8 (742), including Morita stabilizers; §3.3 (1040), including continued zeta comparison (1135) | Integral lattices and masses are imported; the new quaternionic free-class count uses a weighted-mass upper bound |
| EtaleDualityAndPerverseSheaves | §§0.5–0.6, README 668 and 821 | Smooth duality and rational coefficients; Frobenius-compatible twist and compact supports |
| DeligneWeightsAndPurity | §§1.4–1.6, README 959, 969, 989; item 7.12 (2254) | Weight-one roots and point counts; upper weights on compact-support cohomology |
| ArithmeticGaloisRepresentations | §7.3, README 4260 | Positive-rank similitude group and multiplier; changing J to −J does not change the equations. Rank-zero matrix subsets here do not claim uniqueness of multiplier. |
| GlobalQuadraticForms | Layer 5, Hasse–Minkowski, README 544; rank-at-least-five induction at 644 | The reduced-norm representation argument uses the number-field local-global theorem, not only a real positivity test |

These suppliers are absent from main as roadmap folders and present as new-roadmap open work, so the indexed heads are the appropriate copies. The 26-reference audit found stale locators, not absent mathematical input at those three sites. The broad exact supplier clauses and every Needs line were read against the corresponding sections. No currently cited supplier is upward. Downstream mentions do not supply proof inputs.

The dependency command requested in the brief produced exactly:

```text
depcheck: 205 roadmaps, 1449 edges, 0 problem(s)
```

No UPWARD or CYCLE line appears. This does not resolve R01: an unlisted assumption creates no mechanical edge. The present head still fails the full worker gate solely on its 86 forbidden anchor tags. Nothing in the reviewed worktree was changed.

**Additional primary-source comparison.** Katz–Lang equation (2.4), printed p.296, was read in the rendered author-hosted scan because the extracted equation is missing. The surrounding hypotheses are at `katz-lang line 340`: finite coefficients killed by an integer prime to the characteristic. Its H¹-to-Hom identification, followed by surjectivity for connected covers, supports the geometric Jacobian comparison. See the [Katz–Lang author copy](https://web.math.princeton.edu/~nmk/old/AbsFinThm.pdf). Deligne–Mumford §§5.15–5.16, pp.108–109 (`deligne-mumford line 1284`) were also checked; their genus restrictions are not used to silently fill the missing genus-one integral argument.

## Not verifiable

- Silverman, *The Arithmetic of Elliptic Curves*, V.1.1: the sources-service bibliographic lookup did not return legal full text. The exact book locator is therefore not certified. Its mathematical use was checked against the two pinned Tau Ceti Hasse declarations above; no proof input is missing on that account. The unresolved reference is recorded under the existing `silverman-aec` key in the scratch reference request.
- The review read the explicitly cited arXiv/author versions. It did not certify every parenthetical journal-page translation or claim that later published versions retain the errors listed below. No fetched text was copied into the repository or report. No source-access issue prevents the verdict.

## Source issues

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
