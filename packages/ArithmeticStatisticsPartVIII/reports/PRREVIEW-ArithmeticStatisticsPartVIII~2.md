# Review of ArithmeticStatisticsPartVIII (pull request #1179 at 7a03a23)

**Verdict:** needs changes

## R01 (P1) — Supply the uniform Betti theorem instead of assuming it

**Location:** `TauCetiRoadmap/ArithmeticStatisticsPartVIII/README.md:90`, propagated at lines 1204, 1222, 1240 and `TauCetiRoadmap/ArithmeticStatisticsPartVIII/Suggested.lean:26`: “Section 5.19 is conditional on this hypothesis”.

**Claim:** The large-q Cohen–Lenstra endpoint assumes the essential uniform-in-degree Betti theorem (HS). This is proved mathematics needed by the promised build, not a conjectural arithmetic input. The listed contracts supply only fixed-degree comparison and bounds. The conditional implication may be true, but assuming this input bypasses the theory the endpoint requires.

**Witness:** EVW Proposition 7.8 proves the uniform bound (`ref-37 line 1628`), using stability (`ref-37 line 1647`). The parent's §IG.5.5 excludes stability. Bounds B_n=n cannot give C² independent of n: take n=⌊C²⌋+1.

The existing owner is `packages/InverseGaloisAndArithmeticFundamentalGroupsPartII/design/README.md:842`, target `HS.5/uniform-etale-betti`. It includes the rational, nonidentity, generating nonsplitting class, centre-free group, tame characteristic and auxiliary-prime hypotheses needed here. Its position 206 is later than Part VIII's position 129 in `merge-order/ORDER.txt`. No declared supplier gap replaces the free hypothesis.

**Repair:** Establish a supplier-first arrangement for that existing target and its prerequisite chain, then consume it by its exact name and hypotheses in the contracts and §5.19 Needs lines. Remove the free HS assumption, including its docstring description. Do not merely add an upward citation or plan a second stability proof. If the order cannot move the whole supplier earlier, move ownership of the required chain coherently, or place this consuming continuation after its supplier. For G=C₃⋊C₂=S₃ and c the transpositions, the extra supplier hypotheses hold: the class is rational, nonidentity, generating and nonsplitting, and the centre is trivial. Its genuine bound is C² at i=1 for every n; it supplies precisely what the fixed-degree countermodel lacks. This is previous R01, still unrepaired.

## R02 (P2) — Import the Hurwitz schemes that the parent now constructs

**Location:** `TauCetiRoadmap/ArithmeticStatisticsPartVIII/README.md:84` and lines 88–92: “This extends the ordinary unramified-∞ marking of §IG.5.3.”

**Claim:** IG-a and the scheme-construction portion of IG-b are listed as additional constructions owned here. The cited parent already constructs the affine-branch variant with ramified or unramified infinity, its centre-free rational-point classification, and Wood's tangentially marked scheme. The claimed boundary of that supplier is stale.

**Witness:** `TauCetiRoadmap/InverseGaloisAndArithmeticFundamentalGroups/README.md:5547`, §IG.5.3, explicitly constructs both infinity branches and the tangential scheme; §IG.5.5, line 6119, supplies the corresponding marked-extension comparison. These were read at the indexed new-roadmap head, not inferred from names.

**Repair:** Replace the duplicated scheme construction, finite-étale branch map, base-change and rational-point classification in IG-a/IG-b with imports of §IG.5.3 “Arithmetic Hurwitz stacks and schemes” and §IG.5.5 “Hurwitz points and marked extensions”. Keep the genuinely additional statistical comparisons and the specialized surviving-parity fixed-fibre formula for tangential infinity; the parent's displayed general fixed-fibre formula lies over identity boundary product. Update the scope paragraph to distinguish that remaining extension. Over an algebraically closed tame field, S₃ transposition inertia at three fixed finite points gives 3³−3=24 generating tuples and 24/6=4 unmarked covers, with ramified infinity. The parent's affine-branch variant already includes these four points; consuming it preserves this witness without reconstructing the space.

## R03 (P2) — Consume Part I's two-column minor API

**Location:** `TauCetiRoadmap/ArithmeticStatisticsPartVIII/README.md:140`: “invariance under unimodular row operations, equality with the saturation index for independent columns”.

**Claim:** GN-a lists the minor-content and saturation-index API as additional work here. For the two-column object actually used in §5.12, Part I already owns that construction, its basis-change invariance, the independent-column index identity and the dependent-pair zero case.

**Witness:** `TauCetiRoadmap/ArithmeticStatisticsPartI/README.md:1309` defines the same minor gcd; line 1337 explicitly plans `FormDensity.minorGCD_eq_index`, basis-change invariance and vanishing for dependent pairs.

**Repair:** Import Part I §0.10 “Coefficient vector form” and those named targets for the two-column API. Retain here the new congruence-lattice index Q²/gcd(G,Q) and the density/incidence consequences. If a genuinely broader k-column theorem is needed, state exactly that extension and its consumer instead of assigning the existing two-column API a second owner. For c=(1,0), d=(1,3), the imported content and saturation index are both 3. At Q=3 the congruence lattice is 3ℤ×ℤ and has index 3=9/gcd(3,3); with equal columns the content is 0 and the independent-column hypothesis prevents misuse. The proposed ownership repair preserves both tests.

**Previous findings, checked against this head.**

| Previous finding | Passage at this head | Disposition |
|---|---|---|
| R01, free uniform Betti hypothesis | README 90: “Section 5.19 is conditional on this hypothesis” | Not repaired; current R01. |
| R02, omitted genus-one 3-adic monodromy | README 990: “the image of local inertia at t = 0 … contains … U₀”; README 1006: “For every g ≥ 1” | Repaired. The geometric occurrence is now a target, with a same-characteristic degeneration route. U₀³ is I modulo 3 and has upper-right entry 6 modulo 9. |
| R03, forbidden anchors | README 198: “#### Polynomial congruence under perturbation” | Repaired throughout: ordinary headings replace the anchors; the gate's residue counter is zero. |
| R04, undeclared API names | README 344: “The capped valuation”; README 1478 defines the component profile in prose | Repaired. Only the nine actual local declarations retain their API identifiers. The tenth citation-tool lead, SimilitudeGroup.GSp, resolves in ArithmeticGaloisRepresentations §7.3. |
| R05, missing topological-primary Check | README 1106: “h = diag(6,1/3)” | Repaired. At ℓ=5, q=2, (h−1)^N e₁=5^N e₁ tends to zero but never vanishes. The second new example has both primary summands zero. |
| R06, stale supplier fragments/title | README 1818/1820: “#supporting-constructions”; README 146: “Positive- and negative-integer zeta values in the mass formula” | Repaired. All 26 part-reference fragments resolve at the supplied heads; the mass-normalization item has exactly this title. |

## Verified sound

This was a full review of the README and all nine Lean declarations, including unchanged passages. The six previous findings were checked individually before the new audit. The normative repository README and CONTRIBUTING and main-branch shape examples MassFormula and StandardDistributions were read. The outside-folder diff is empty. No sorry-valued data, forbidden option, computational algorithm target, copied source passage, or duplicate fully qualified Lean name was found. The three findings concern an omitted theorem contract and duplicated prerequisite ownership; they are repairable within this continuation.

**Gate, elaboration and signatures.** Every counter in the worker's gate at 7a03a23 is zero, including build, dependency, residue, stray-files, imports and outside-folder; its verdict is OK. Independent direct `lake env lean` elaboration succeeded with only five `sorry` warnings. A scratch copy with all nine `#check @...` signatures confirms the prime, freeness, finite-generation, finite-target, perfect-pairing, rank, closedness and exceptional-kernel binders survive. No binder repair is needed. The three density signatures match the README's normalization, including the unnormalized second-moment sum. The orbit signature requires an actual surjection from ℤ_ℓ^g to A.

Each of the five sorried theorems was tested with `simp`, `rfl` and `infer_instance`; none closed. Inspection and object searches at the pins found no single existing library theorem proving these statements. The four definitions have real bodies on native carriers and are needed to state those headlines. The small density definitions in Lean are acceptance-test presentations of the Part I carriers, whose full APIs are imported in the README; they are not a second planned implementation. No padding finding is raised.

**Headlines and statability.** Suggested.lean states the first local-density moment, second moment, variance, integral symplectic lifting criterion and unique similitude-stable orbit. The README's other deep endpoints are polarized isogeny concentration; the spacing and enhanced-model obstructions; the class-group/Hurwitz dictionary; uniform trace bounds; hyperelliptic monodromy, now including Legendre inertia and genus-one 3-adic monodromy; rational-component uniqueness and large-q Cohen–Lenstra; good/bad Wood moments and complete component profiles; and the LWZB/CLM moments. The module docstring identifies these and the missing polarized-count, Hurwitz-moduli, rational étale-cohomology, family and marked-extension interfaces. Searches at the pins did not find those complete carriers. Existing abstract schemes, abelian varieties and finite-group objects do not by themselves state these arithmetic-family theorems. Nothing weaker is substituted. The numerical density theorems and linear-algebra headlines retain the stated generality.

**Seeded source audit.** All eleven requested subsections, 5.12–5.22, were compared with the text, hypotheses, numbering and pages of the cited versions. There are no additional locators explicitly labelled unverified in the README. The service supplied the nine numbered works plus Raynaud, Deligne–Mumford and Katz–Lang legally. The versions read are published Annals for ref-37, arXiv v1 for ref-45/ref-46, arXiv v4 for ref-47, author PDF for ref-48/ref-52, and arXiv v2 for ref-49/ref-50/ref-51. Journal/preprint pagination was not silently interchanged.

| Target | Text and locator read | Conclusion of comparison |
|---|---|---|
| 5.12 | ref-46 Lemmas 5.4–5.7, pp.53–57, lines 3576–3802; ref-47 Lemma 3.3, pp.13–14, lines 572–597 | Exact incidence argument supports the moments; broader d≥1 and n≥2 ranges were separately tested below. Hensel requires m≥2δ+1 and δ≤m−ℓ. |
| 5.13 | ref-45 (39), (51)–(56), Lemmas 5.9 and 5.11, pp.27–34, lines 1065–1082 and 1233–1450; ref-52 §9, pp.121–122, lines 960–1004 | Factorial leading term is 1/2; quaternionic mass supplies the additional real-Weil block. H1/H2 remain explicit conjectural assumptions. |
| 5.14 | ref-45 Corollary 5.14 and Lemma 5.19, pp.34,36–37, lines 1453–1463 and 1544–1582 | Finite-g zero-gap correction is retained. The odd-p restriction avoids the explicit p=2 exception. |
| 5.15 | ref-37 Proposition 8.7, pp.774–776, and Theorem 8.8 proof, pp.777–779, lines 1840–1991 and 2053–2064 | Surjections versus sign classes, primary class groups and factor two are distinguished. |
| 5.16 | ref-37 Theorem 8.8 proof, p.778, lines 1996–2027 | Poincaré duality, top-component trace and geometric-series error use the stated smoothness, pure dimension and weight hypotheses. |
| 5.17 | ref-48 Lemmas 3.1–3.2, Theorem 3.4 and Corollary 3.5, pp.11–14, lines 415–564; ref-49 Main Theorem 1.3, pp.2–3, lines 72–86; ref-37 p.780 | The qualified lifting statement agrees. The new Legendre argument supplies the geometric exception; Raynaud §4.6 (7), p.314, and Proposition 4.6.1, p.315 (raynaud-monodromy lines 749–807), agree with the named Néron supplier’s sign and arbitrary-trait contract. |
| 5.18 | ref-37 Lemma 8.9 and proof, pp.780–782, lines 2092–2183 | Units q and q−1, the rank/generator bound, topological primary spaces and killed Lagrangian are essential. |
| 5.19 | ref-37 Proposition 7.8, pp.769–770, lines 1628–1658; Theorem 8.8, p.777, lines 1960–1977; Theorem 1.2, p.730 | The source proves the uniform input. R01 concerns its absence from the build. The two degree-density limits and q-limit are otherwise correctly ordered. |
| 5.20 | ref-50 Theorem 4.8, pp.22–25, lines 964–1107; Theorem 4.5, pp.20–21, lines 878–907 | Fixed-degree large-q unit moments, infinity degrees and the automorphism/involution normalization factors agree. |
| 5.21 | ref-50 Proposition 4.1 and equation (6), pp.18–19, lines 777–827; bad-case proof, pp.24–25, lines 1051–1078 | Central power obstruction, surviving parity vectors and stable lower bound agree. The full boundary profile correctly prevents an unjustified ordinary-limit assertion. |
| 5.22 | ref-51 Lemmas 9.1 and 9.3, pp.37–39, lines 1751–1820; Theorem 10.4 and Theorem 1.4 proof, pp.39–41, lines 1844–1922 | Raw quotient maps versus isomorphism classes and liminf/limsup versus inner limits are correctly separated. |

Katz–Lang equation (2.4), printed p.296, was checked in the rendered author scan as well as its surrounding text (`katz-lang line 340`): finite coefficients must have exponent prime to the characteristic. The Jacobian torsion Hom identification and connected-cover surjectivity are compatible. Deligne–Mumford Theorems 5.15–5.16, pp.108–109 (`deligne-mumford line 1284`), provide the genus-at-least-two comparison; they are not used as a substitute for the genus-one argument. Raynaud’s positive monodromy pairing was checked against the new Legendre calculation and the Néron supplier, including residue characteristic zero.

**Adversarial mathematics.** The table records 91 rows covering all 77 mathematical target headings, the retained definitions and supporting constructions. Density, pair-gcd, gradient, Hensel, small matrix-group and elliptic-point counts were freshly enumerated with exact arithmetic. The other rows recompute boundary cases, asymptotic coefficients, finite normalization identities or countermodels by hand. These finite controls do not prove the general geometric theorems; the source and supplier checks above address their proof inputs. “Retain” records that the particular test found no mathematical repair, not unconditional approval of the build.

| Statement | Instances tried | Computed values on the two sides | Result / change |
|---|---|---|---|
| Primitive vectors | One coordinate modulo 3; zero ring modulo 1; empty coordinates modulo 3 | Counts 2, 1, 0 respectively; generating the unit ideal gives the same counts | Retain; q=0 excluded by NeZero |
| Coefficient form | d=2,n=1, coefficients (1,2,3); d=0 | X₀²+2X₀X₁+3X₁²; constant a | Retain; theorem requires d≥1 |
| Local density | Linear form X₀, n=2,q=4; q=1 | 12 primitive zeros /16 =3/4; 1/1=1 | Retain |
| Similitude-fixed surjections | V=ℤ₃²,A=C₃,q=2; zero map to C₃; zero target | 8 surjections qualify; zero map is not surjective; zero target gives one map | Retain |
| IG-a, IG-b adapters | C₃-dihedral covers; imaginary and real discriminant exponent 2n | Sign quotient has 8/2=4 points; finite branch degrees 2n−1 and 2n | R02: import the schemes; retain distinct markings |
| Hyperelliptic Jacobian adapter | n=1,3; g=1,ℓ=3,m=2; characteristic 2 model | Dimensions 0,1; torsion rank 3⁴=81; y²=x³+x+1 has both derivatives zero at (1,1) in characteristic 2 | Retain; characteristic 2 excluded |
| GN-a minor content/index | Columns e₁,e₂ at Q=3; e₁,(1,3) at Q=3; equal columns | Contents 1,3,0; independent indices 9/1=9 and 9/3=3; dependent formula excluded | R03: import the two-column API; retain the congruence-index extension |
| GN-b CM involution/model | i in ℤ[i]; matrix [[0,1+i],[2,0]]; product rings | Conjugates −i and [[0,2],[1−i,0]]; involution squared is identity | Retain |
| GN-b quaternionic involution | Hamilton i,j; 2×2 off-diagonal i,j | (ij)*=−ij=j*i*; conjugate transpose [[0,−j],[−i,0]] | Retain; anti-multiplication order matters |
| GN-c orbit count/product | Empty product; imaginary-quadratic rank one; Gaussian rank eight | Counts 1,1,≥2; I₈ has norm 1 while E₈ has only even norms; multiplying a rank-one block preserves the count | Retain |
| GN-c asymptotic normalization | One block, degree [K:ℚ]=1 | Sum of log(j!), j<n, has leading coefficient 1/2 in n²log n, not 1 | Retain corrected coefficient |
| GN-d quaternionic count/mass | m=0,1,2; K=ℚ(√2) or ℚ(√5) at rank one | Count at m=0 is 1; rank-one count 1; mass factors are 1, abs(ζ_K(−1))/4, and successive ratio abs(ζ_K(−3))/4 | Retain; mass is weighted, not the free-class count |
| Uniform Betti input | Fixed-degree bounds B_n=n; i=1 | n=⌊C²⌋+1 exceeds C² | R01: consume the uniform theorem |
| Polynomial perturbation | f=X²,x=1,h=3 over ℤ; zero polynomial | Difference 15 is in (3); zero difference 0 is in every ideal | Retain |
| First-order Taylor | Same data; square-zero h=ε | Remainder 16−1−6=9=h²; ε²=0 makes remainder 0 | Retain over a general commutative ring |
| First local moment | (d,n,p,r)=(1,0,2,1),(1,1,2,1),(2,2,3,1) | Means 0,1/2,121/126; formula gives 0,1/2,121/126 | Retain; N−1=0 case included |
| Two-point incidence | d=1,n=1,p=3,r=2; minor valuations v=0,1,2 | Primitive coefficient counts 0,0,6; formula gives 1−1,3−3,9−3 | Retain; proportional mod p is not proportional mod pʳ |
| Veronese minor valuation | d=2, vectors (1,0),(1,3), modulo 9; equal vectors | Linear minors gcd 3 and quadratic minors gcd(3,9)=3; equal-vector gcd(0,9)=9 on both sides | Retain |
| Primitive pair gcd sum | n=2; (p,r)=(2,1),(2,2),(3,1) | Sums 56≤113, 3808≤7232, 780≤1162 | Retain |
| Second local moment | (1,2,2,1),(1,2,3,2),(2,2,2,2),(2,2,3,1) | Sums 63/16≤113/8; 1664/3≤1162; 3584≤7232; 62504/81≤1162 | Retain; r-uniform bound survives small primes |
| Local variance | Same four cases | Variances 1/16≤2; 1/81≤4/3; 1/6≤2; 79/567≤4/3 | Retain |
| Gradient valuation/strata | p=3,r=2; (1,0),(3,0),(0,0); f=X₀X₁ in three variables | Valuations 0,1,2; zeros (1,0,0) and (0,0,1) give strata 0 and 2 for the same form | Retain overlapping strata; API is now prose |
| High gradient count | Binary quadratics mod 9, primitive coefficients | Stratum sizes e=0,1,2 are 324,72,72; e=1 bound 486, e=2 bound 162 | Retain; e=0 not within this bound's assertion |
| Fixed-gradient Hensel | F=t²,p=3,δ=1,A=9,ℓ=0,m=3; negative control A=0,m=2 | Counts mod 27 and 81 are 6 and 6 (s−1=0); invalid m=2 gives 2 versus 0 | Retain m≥2δ+1 |
| Density lower bound | f=X₀, n=2,p=2,r=2,e=0; f=X₀²,n=1,p=3,r=2,e=2 | 3/4≥1/4; 18/9=2≥1/27 | Retain; σ can exceed 1 |
| Convex concentration | g=100,ε=.99,x=(99,1); g=0 | Sum squares 9802=(.99²+.01²)10000; 0=0 | Retain; boundary equality allowed |
| Weighted squares | C=0,g=100; one pair (k,n)=(2,50); excluded (1,100) | 2500log50≈9780.06<4950log100≈22795.59; excluded case 5000log100≈23025.85 exceeds it | Retain the exclusion; finite test does not fix g₀ for C>0 |
| Model-ring concentration | One imaginary-quadratic block of size g versus two equal blocks | Leading coefficients of g²log g are 1/2 versus 1/4; threshold .495 separates them | Retain, using corrected GN-c |
| Unpolarized count | g=0; two nonsingular elliptic curves over 𝔽₅ | g=0 gives B=1,log B=0; y²=x³−x and y²=x³+x have 8 and 4 points, so B(5,1)≥2 | Retain dimension restriction; no numeric C_p inferred |
| Polarized concentration | g=1; pure E^g; dominant B₀ block | Bad count 0 in dimension 1; E^g has h/g=1; B₀^m has dimension 2m, coefficient 2m²log m=(1/2)g²log g+O(g²) | Retain H1/H2 and prime hypothesis |
| Kolmogorov distance | δ₀,δ₁; (δ₀+δ₁)/2 against δ₀; identical measures | Distances 1,1/2,0, matching suprema of CDF differences | Retain |
| Spacing measure | Angles (0,0,π,π); one angle | Normalized gaps (0,2,0,2), mass 1, mean 1; singleton gap 1 with measure δ₁ | Retain multiplicities and wrap-around |
| Zero-gap mass | Same four angles,h=2; two distinct angles,h=1 | Zero mass 1/2=2(2−1)/4; 0=2(1−1)/2 | Retain h−1, not h |
| Atom lower bound | μ=(δ₀+δ₁)/2 and ν=δ₁ | CDF difference at 0 is 1/2; d_K=1/2 and μ{0}=1/2 | Retain support condition on ν |
| Ppav spacing discrepancy | E^g with two distinct eigenangles; h=990,g=1000 | Zero mass 1−1/g; dominant-factor lower bound (h−1)/g=.989, approaching .99 at proportion .99 | Retain asymptotic statement, not finite-g .99 |
| Enhanced model obstruction | Ordinary elliptic examples at p=3,5; excluded p=2 | At p=3, trace 1 gives counts 3 and 15, hence 5-torsion over 𝔽₉; at p=5 trace −2 gives 8. For y²+xy=x³+x²+1 over 𝔽₂ counts 2,8 have no odd torsion | Retain odd-p hypothesis; random-model positivity supplied by Part VII |
| Dihedral datum | A=C₃; A=0; nonabelian ambient S₃ | Involutions 3, centre size 1 for S₃; A=0 gives C₂ with centre size 2, excluded from centre-free case | Retain nonsplitting and nontriviality distinctions |
| Class-group surjection pairs | Cl=C₃,A=C₃; A=0 | Two surjections become one sign class; zero target has one fixed map | Retain trivial target separately |
| Involution quotient | J=C₃⊕ℤ₃ with σ=(-1,+1) | (1+σ)J=0⊕ℤ₃ since 2 is a unit; quotient C₃ | Retain odd ℓ; at ℓ=2 constants leave ℤ/2 |
| Hurwitz/class-group classification | Cl=C₃,A=C₃; genus-zero class group | One sign class corresponds to one cover; no surjection from the zero group to C₃ gives zero covers | Retain |
| Factor-two identity | Cl=C₃,A=C₃; A=0 | 2 surjections=2×1 sign orbit; trivial-target 1≠2×1 is explicitly separate | Retain |
| Empirical primary law | Cl=C₂×C₃,ℓ=3,A=C₃ | Primary type C₃ has probability 1; Sur(C₂×C₃,C₃)=2=Sur(C₃,C₃) | Retain primary group, not whole group |
| Degree densities | Values alternating 0,1 on odd degrees; constant 1/2 | Lower/upper 0,1; constant both 1/2 | Retain separate limits |
| Top component trace | A¹/𝔽₃; two rational copies; two conjugate copies; empty scheme | Traces 3,6,0,0 =3×(1,2,0,0) fixed components | Retain geometric Frobenius and Tate twist |
| Uniform trace error | A¹/𝔽₁₆,C=1; n=0 singleton | Error 0≤1/(4−1)=1/3; dimension-zero error 0 | Retain √q>C and one fixed component |
| Torsion local system | g=0,1; ℓ=3,m=1,2 | Torsion sizes 1,9,81; perfect-pairing matrix J has determinant 1; multiplier of diag(1,q) is q | Retain invertibility of 2ℓ |
| Geometric Jacobian comparison | P¹ and elliptic curve over algebraic closure, A=C₃ | Connected C₃ torsors: 0 for P¹; 3²−1=8 for the elliptic curve, matching surjections | Retain prime-to-characteristic condition |
| Unmarked Hurwitz fibre | g=1,A=C₃; marked versus sign quotient | Marked fibre 8, unmarked 4; −I pairs each surjection with its negative | Retain quotient; orbit counts unchanged |
| Boundary degeneration | Chain of three genus-one curves of compact type | Jacobian dimensions 1+1+1=3; torsion ranks 2+2+2=6; block pairing is J⊕J⊕J | Retain compact type |
| Overlapping symplectic subgroups | Three rank-two blocks; negative control with middle block zero over 𝔽₃ | For three rank-two blocks the full target has size 3⁹·8·80·728=9170703360; with zero middle block the generated block group has size 24²=576, not Sp₄(𝔽₃) of size 51840 | Retain nonzero overlap hypotheses |
| Mod-ℓ hyperelliptic monodromy | g=1,ℓ=3; g=0 excluded | Target SL₂(𝔽₃) has 24 elements; rank-zero symplectic group has 1 | Retain g≥1 and odd ℓ |
| Integral lifting | Two displayed mod-9 generators | Generated group 24; reduction 24; kernel 1; full group 648, index 27 | Retain extra kernel condition; not a false Lean headline |
| Legendre inertia (README §5.17) | Node y²=x(x−1)(x−t), t=s³, and ℓ=3 | With y′=y/√(x−1), z=x−t/2, z²−y′²=t²/4; graph length 2 becomes 6 after t=s³; U³ mod 9 has entry 6; N²=0 | Retain; matches the positive toric/period monodromy convention |
| Integral hyperelliptic monodromy | g=1,ℓ=3; Legendre transvection U | U³ mod 3=I; U³ mod 9=[[1,6],[0,1]]≠I | Retain; the new Legendre target supplies geometric occurrence |
| Polynomial-family monodromy | n=3,ℓ=3; n=1 | g=(3−1)/2=1, target SL₂(ℤ₃); n=1 gives rank 0 | Retain; n=3 now includes ℓ=3, while n=1 has rank zero |
| Finite-level monodromy | g=1,ℓ=3,m=1,2 | Full groups have 24 and 648 elements; reduction kernel has 27 elements | Retain; Legendre inertia supplies the missing level-two kernel |
| Similitude matrix subsets | g=1,diag(1,2),ℓ=3; rank 0 | hJhᵀ=2J; determinant 2 is a unit; rank-zero matrix is unique for every multiplier | Retain unit multiplier, handle rank zero |
| Monodromy orbits/components | Sur(𝔽₃²,𝔽₃),q=2 | Eight maps form one Sp₂ orbit; four sign classes also form one orbit; one Frobenius-stable orbit | Retain marked/unmarked distinction |
| Primary decomposition | ℓ=3,h=diag(1,2); q=1 identity; ℓ=5,h=diag(6,1/3) | Summand ranks (1,1,0); at q=1 both primary spaces equal V; in the last case ranks (1,1,0) but exact generalized 1-eigenspace has rank 0 | Retain new Checks; q−1-unit condition is necessary |
| Symplectic normal forms | Rank 0; rank 2 with e,f; nonprimitive 3e | Empty basis works; ω(e,f)=1; ℤ₃(3e) is not a direct summand since quotient has C₃ torsion | Retain direct-summand condition |
| Orthogonality/killed Lagrangian | h=diag(2,1), f(x,y)=y mod 3 | f∘h=f; ker f contains ℤ₃e; ω(e,e)=0 and rank 1 is half of 2 | Retain |
| Lattice-surjection transitivity | ℤ₃→ℤ/9; g=0 | Six unit images and one GL₁ orbit; zero target has one map, nonzero target none | Retain existence/generator hypotheses |
| Unique stable symplectic orbit | g=1,A=C₃,q=2; q=1,g=2,A=C₃² negative control | Eight stable surjections, one orbit. At q=1 the maps onto coordinates (x₁,x₂) and (x₁,y₁) have induced alternating rank 0 and 2, hence different orbits | Retain q−1 a unit |
| One rational geometric component | A=C₃,g=2,q=5; excluded q=7 | Generator bound 2≥1; q−1=4 is a 3-adic unit and orbit theorem gives 1; q=7 gives q−1=6 nonunit | Retain; do not apply in excluded root-of-unity case |
| Uniform function-field moment | A=0; bound algebra with C=1,B=5,q=121 | Trivial moment error 0; normalized trace error ≤(121/120)(1/10)+1/120=131/1200≤5/11 | Arithmetic estimate consistent; R01 supplies uniform C |
| Large-q Cohen–Lenstra | ℓ=3,A=0,C₃ | Predicted masses c₃≈.56012608 and c₃/2≈.28006304; Aut sizes 1,2 | Retain both density limits; R01 |
| Positive proportions | Same ℓ=3 | Complement 1−c₃≈.43987392>0; c₃>0 | Retain complement of upper density for the lower bound; R01 |
| Eventual-degree large-q filter | E=n/(n+q); moduli 0,2,3 | Iterated limits 0 and 1; A₀ bottom; A₂ forces odd q; A₃ contains unbounded even 2^k | Retain nonzero modulus and divisibility refinement |
| Imaginary per-component moment | C₃-dihedral type; leading component count at fixed n | q^(2n−1)/(q^(2n−1)−q^(2n−2))=q/(q−1)→1 | Retain fixed degree and component-uniform error |
| Real per-component moment | Same group, real slice | q^(2n)/(q^(2n)−q^(2n−1))=q/(q−1)→1; finite degree is 2n, not 2n+1 | Retain |
| Imaginary normalized moment | G=C₃; G=C₃² reduced multiplier C₃ | C₃ value 1/2; for C₃², multiplier sizes at q=5,7 are 1,3, divided out inside the limit | Retain |
| Real normalized moment | G=C₃, F=S₃ | Outside class size 3, automorphisms 2; normalized value 1/(3×2)=1/6 | Retain; good-type hypothesis matters |
| Stable parity count | N=2,ε=(0,0),d=4,N₀=0 and 1; d=3 | Counts 3=choose(3,1), 1=choose(1,1), 0 for odd total | Retain guards against negative or odd L |
| Least parity integer | (N₀,e)=(2,0),(2,1),(0,3) | Values 2,3,1; parities 0,1,1 | Retain e modulo 2 |
| Many parity vectors | N=2,N₀=0,d=4,ε=00; d=5,ε=10 | Counts 3≥4/4 and 3≥5/4; wrong total parity yields 0 | Retain parity and eventual-degree restriction |
| Bad-type lower bound | Stable-count mechanism N=2, ε=00 or 10, d=2n or 2n−1, N₀=0 | Stable counts n+1 or n, hence ≥n; adding boundary counts cannot decrease them | Supports lower-bound mechanism only, not an arithmetic limit |
| Real rigidification | G=1,C₃,C₂ with types C₂,S₃,C₂² | Fibre sizes and bounds 1,6,2; last type has centre of size 4 | Retain; bad abelian example not inside centre-free Hurwitz theorem |
| Bad normalization transfer | Rigid lower bound wn^(N−1), fibre bound M=2 | Unrigid lower bound (w/2)n^(N−1)>0; no equality of fibres needed | Retain inequality direction |
| Printed bad-limit proposition | E=n^(N−1); E=0; E=n^(N−1)c(q), c=1 or 3 on recurrent residues | First has limit n^(N−1); second cannot meet w>0; third has liminf n^(N−1), limsup 3n^(N−1) | Retain as conjectural proposition, not proved ordinary limit |
| Whole component profile | Counts (1,0,0) for d=2,N=2,N₀=1,M=1; zero counts | Full profile 1 versus stable contribution 0; zero profile 0 | Retain boundary data and prose API |
| Boundary remainder | Counts (2,5,0),M=2 then M=1 | 7/2=5/2+1; 7=5+2 | Retain normalizer on both contributions |
| Complete stable sum | Central A=C₂,b nontrivial,q=3,5; A=C₄,b generator,q=3,5,7,9 | C₂ obstruction values 1,0 versus image {0}: fail,pass. C₄ values 1,2,3,0 versus images {0,2},{0},{0,2},{0}: fail,fail,fail,pass | Retain power condition and separate abelianization condition |
| Moment minus profile | q=9,B_n=2,K_d=1,M=1,C_n=2, exact leading numerator | Ratio 18/8=9/4, profile 2, difference 1/4≤2(1/3+1/9)/(1−1/9)=1 | Retain fixed-n error and denominator |
| Limit iff profile constant | Finite profile 2 with error q^(-1/2); recurrent profile 1,3 | Limit 2 in first case; liminf 1 and limsup 3 in second | Both directions verified on controls; exclude bottom filter |
| Recurrent extrema | Profile 100 only at bounded q, then recurrent values 1,3 | Recurrent set {1,3}; minimum 1, maximum 3; 100 affects neither limit | Retain |
| Weight series | N=1, (N₀,S)=(0,{0}),(1,{0}),(1,{1}), empty S | Series coefficients begin (1,0,1,0,1), (0,0,1,0,1), (0,1,0,1,0), and all zero | Multiplication by 1−X² gives 1,X²,X,0 respectively |
| Semidirect surjection bijection | G=S₃,H=C₃,Γ=C₂; H=1 | Six automorphisms correspond to 1 quotient ×3 sections ×2 equivariant isomorphisms; H=1 reduces to quotient maps | Retain |
| Coprime abelian sections | C₃ with C₂ inversion versus trivial action | Section counts 3=[C₃:0], and 1=[C₃:C₃] | Retain coprimality and action |
| Unramified counting normalization | H=1,Γ=S₃, one fixed Γ-extension class | Six raw surjections versus one class; multiply by size(ZΓ)/size(Γ)=1/6 | Retain corrected factor |
| LWZB moments | Γ=C₂,H=C₃ inversion; H=Γ=1 | Fixed subgroup sizes 1,1; targets 1/3,1. q=5 allowed; q=7 excluded since gcd(6,3)=3 | Retain double liminf/limsup and (SZ) |
| CLM moments | Γ=C₂,H=C₉ inversion | H^Γ=1 since 2 is invertible; [H:H^Γ]=9 and target 1/9 | Retain |

The table includes rank zero, zero target, empty index/family, modulus one, characteristic two, small primes, nonabelian groups, nonreduced base change, excluded unit conditions and the relevant total-function values. The positive-rank group theorems are not applied in rank zero. Smoothness, tame characteristic and prime-to-characteristic torsion prevent the inseparable and nonreduced-fibre countermodels; the relative-Jacobian base-change contract still covers square-zero base changes. The arithmetic averages have positive denominators in their eventual ranges; normalizing multiplier groups contain the identity. H1/H2 and the explicitly conjectural PBL proposition are not reported as proved statements. In particular, the boundary-profile criterion tests an ordinary limit in both directions and does not infer one from a liminf bound.

**Pinned-library audit.** All 47 names in the explicit Mathlib supplier list resolve in an independent scratch `#check` file. The following definitions/theorem types were opened at the pins. Library paths in this table are relative to the respective pinned roots.

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

The native `LinearMap.IsPerfPair` requires both maps to the dual to be bijective; an alternating form alone does not provide it. `Matrix.symplecticGroup` uses AJAᵀ=J, so replacing J by −J in the GSp supplier changes no membership equation. `maxGenEigenspace` is an exact-kernel union and supplies no topological primary-space theorem. The finite discrete-topology instance requires T₁. The field-level symplectic basis and root-generation results do not duplicate the integral lattice-orbit theorem here. Searches that hit Kolmogorov process continuity, Hurwitz zeta functions or analytic Hurwitz convergence were identified as different objects, not matching probability distance or Hurwitz moduli.

**Ownership, supplier resolution and order.** Searches used `roadmaps grep`, `roadmaps show`, the main checkout, the supplied open work and the board’s packages, by mathematical object: primitive local density and minor contents, polarization orbits and quaternionic mass, CDF distance, torsion/Weil pairing, symplectic bases and integral monodromy, Hurwitz schemes/components/stability, and class-group/semidirect moments. No declaration was given an existing fully qualified name in another readable roadmap. The arithmetic-statistics umbrella organizes its parts; it does not duplicate the new moment statements. Generic objects remain with their existing owners, subject to the two corrections R02–R03. The HS continuation is the missing supply edge R01.

All 26 `[part-*]` links resolve to existing fragments and their specified objects. The ten citation-tool leads resolve as nine actual local declarations plus the planned `SimilitudeGroup.GSp` in ArithmeticGaloisRepresentations §7.3. Every Needs line and the broad supplier clauses were read. Resolved content includes:

| Supplier | Sections or targets checked | Contract boundary |
|---|---|---|
| ArithmeticStatisticsPartI | §§0.1, 0.10–0.11, 0.13, 0.16, 0.19–0.21; Supporting constructions; minor API at README 1309, 1337 | Actual coefficient forms, primitive densities, polarized/unpolarized classes, exact quadratic slices and marked denominators. R03 removes duplicate minor ownership. |
| ArithmeticStatisticsPartIV | §§3.3–3.5; finite moment control at README 505 | Finite abelian p-group types, genuine surjection counts, CL mass, and a finite set of moment tests chosen before uniform q,n thresholds. |
| ArithmeticStatisticsPartV | §3.27 and supporting embedded types | Good real rigidification factor and bad-type bound, embedded type rather than abstract group type. |
| ArithmeticStatisticsPartVII | §5.3, README 290–358 | Enhanced finite-level law, positive zero-cokernel probabilities at every prime, and existence of the joint limit kept separate. |
| InverseGaloisAndArithmeticFundamentalGroups | IG.0.T4, IG.0.3, IG.1.2, IG.3.4–3.6, IG.4.5–4.6, IG.5.3–5.7 | Trace formula; tame actions; reduced multipliers; coprime complements; both infinity markings; fixed-degree comparison and bounds; component invariants; labelled quotient and full-image criteria. R02 corrects the ownership boundary. IG.5.5 still supplies no stability theorem uniform in degree. |
| AbelianSchemesAndArithmeticModuli | A2; A3.2, A3.5, A3.7 (README 1441, 1510, 1628); A6.5, A6.18, A6.19 (2904, 3253, 3309) | Finite flat versus étale torsion, strong alternation, principal perfectness, reducibility, polarized automorphisms and Rosati orbits. The finite-field orbit adapter is consumed through Part I. |
| JacobianChallengePartII and JacobianChallenge | Part II §§1.2–1.4 (README 211–278); base Layers D and F (218, 448) | Positive-genus relative Jacobian and canonical polarization, noetherian original base, arbitrary base changes, pointed Abel–Jacobi. Genus zero is handled separately here. |
| NeronModelsAndSemistableAbelianVarieties | §§4.2–4.4, especially README 2237–2415 | Graph character lattice, edge-thickness pairing and prime-to-residue-characteristic inertia over henselian traits, including residue characteristic zero; positive toric/period sign gives coefficient +2 for Legendre. |
| GeometryOfNumbersAndQuadraticArithmetic | §§0.2–0.3, 2.8 (README 742, 768), 3.3 (1040, 1135) | Adapted lattices, quaternionic modules, split Morita stabilizers, weighted masses and continued zeta comparison; mass is not the unweighted free-class count. |
| EtaleDualityAndPerverseSheaves | §§0.5–0.6, especially rational duality at README 825 | Smooth separated finite-type pure-dimensional hypotheses, finite rational coefficients and Frobenius-equivariant duality. |
| DeligneWeightsAndPurity | §§1.4–1.6 and 7.12 (README 959, 969, 989, 2254) | Weight-one roots, point counts and upper compact-support weights; geometric Frobenius on ℚ_λ(−n) has eigenvalue qⁿ. |
| ArithmeticGaloisRepresentations | §7.3 (README 4260) | Positive-rank GSp and multiplier; no uniqueness of multiplier is inferred for rank-zero matrix subsets. |
| GlobalQuadraticForms | Layer 5, especially §5.5 (README 665) | Number-field Hasse–Minkowski isotropy used for the reduced-norm representation; positivity alone is not the global theorem. |

The new-roadmap supplier copies were distinguished from main; for example Part I is absent as a folder on main and its indexed new-roadmap head is the appropriate source. The ownership audit found changes to supplier scope that a substring-based citation resolver cannot catch. No currently listed supplier points upward; the missing HS edge is a separate substantive problem.

The requested dependency check produced exactly:

```text
depcheck: 205 roadmaps, 1457 edges, 0 problem(s)
```

There is no UPWARD or CYCLE line. The passing gate does not certify the unlisted HS assumption. No worktree file, source manifest or merge-order file was changed.

## Not verifiable

- Silverman, *The Arithmetic of Elliptic Curves*, V.1.1: the sources service’s bibliographic search returned no legal full text. The book locator is not certified. Its use was independently checked against the two pinned Tau Ceti Hasse declarations above. The unresolved work is recorded under the existing `silverman-aec` key; this access limitation is not an additional missing mathematical input.
- The audit certifies the specified arXiv/author versions and the published Annals text. It does not certify every parenthetical translation to journal pagination or claim that later versions retain the source errors below. The remaining checks and the verdict are complete; no source-access issue is being used to park this review.

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
- **Misprint** in ref-37 at the introduction before Theorem 1.2, printed p.730 (`ref-37 line 41`): the source says the predicted probability of class number indivisible by three is 1−c₃≈0.440; it should be c₃≈0.560, as Theorem 1.2 gives for the trivial three-part; affects nothing.
