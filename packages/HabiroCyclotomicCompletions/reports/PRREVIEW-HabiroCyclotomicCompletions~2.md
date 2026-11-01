# Review of HabiroCyclotomicCompletions (pull request #1314 at ff6a775)

**Verdict:** accepted

No new findings. This folder is ready for a human's final approval; this review neither approves nor merges the pull request.

### Previous findings, checked first

- **Previous R01 (P2): repaired.** TauCetiRoadmap/HabiroCyclotomicCompletions/README.md:1440–1447 now says “For distinct positive adjacent `m,n`, restriction from `{m,n}` to `{m}` is not surjective” and names all three proper-restriction results. Suggested.lean:203,211,220 states `adjacent_restrict_not_surjective`, `divisor_restrict_not_surjective`, and `finite_restrict_not_surjective`. Their positive-order, distinctness, divisibility/adjacency, and finite-nonempty hypotheses survive elaboration. For orders 1 and 2 the inverse of 3−2q gives the same 1/5 obstruction; equal orders and the empty target are correctly excluded.
- **Previous R02 (P3): repaired.** README.md:35 now points to “HabiroNumberFields §2.9”; lines 61–64 name “QSeriesPartitionsAndMockModularForms §§1.2–1.5”, “SchemeKTheoryOperations §§6.2.1–6.2.2”, and “QWittVectors §2.1a”. The consumer table at lines 77–85 cites HabiroNahmSeries §§1.1 and 5.1–5.2 and calls quantum topology and analytic Habiro geometry application areas. These locators resolve at the supplied heads/main, with the intended mathematical scope; no nonexistent roadmap is treated as a supplier.
- **Previous R03 (P3): repaired.** README.md:25–26 says “Backticked names of this roadmap refer to those declarations; other API targets are stated in prose.” The old prospective API catalogue has been replaced by mathematical prose. Suggested.lean:4 has “target signatures”, and lines 43,118,129,156,259 give the required layer comments in README order. All 32 named declarations are accounted for. The Pochhammer check still computes 3=3 at n=2,q=2 without inventing an acceptance-test declaration.

## Verified sound

I read the entire README and Suggested.lean at ff6a77559a6a8eacdf9454385b66ea9581adc0b8, the normative repository README and CONTRIBUTING rules, and the opening structure of NewtonPolygons and RestrictedPowerSeries on main as shape references. I reviewed the unchanged passages as well as the repair. No pull-request file was changed. The outside-folder diff is empty. No copied source passage, sorry-valued data, set_option, computational-algorithm milestone, route-specific shortcut, or re-planning of an existing roadmap was found.

The worker's gate passes every scanner, dependency and targeted-build check, with every failure count zero and final `OK`. Independently, `lake env lean` on Suggested.lean succeeded with exactly 17 admitted-theorem warnings and no other warning. A scratch copy checked `#check @name` for all 32 named declarations; their elaborated types match the README. The two anonymous topology instances were separately inspected. No section hypothesis disappeared. In particular, positive orders, the root equation where needed, prime separation, inside-set chains, torsion-freeness, faithful coefficient maps, and positive Δ remain in scope. The definitions use native quotient families with real bodies; the completion's universal property remains an actual theorem target.

All 17 sorried theorems were probed with the individual tactics `rfl`, `simp`, and `infer_instance`; none closed. Inspection of the pinned declarations listed below found no single existing lemma closing any headline by `exact`. No padding was found. The module docstring's unavailable headlines require substantial completed-module, weighted-matrix, or ambient-localization constructions; it does not replace them by arbitrary predicates or small examples.

### Headline coverage

| README result | Acceptance-test coverage |
| --- | --- |
| Complete separated completion and continuous extension (§1.3) | completion_universal_property |
| Unique normalized factorial expansions (§2.1) | factorial_expansion |
| Convergent close-root re-expansion (§3.3) | close_root_taylor_reexpansion |
| Restriction rigidity (§4.2) | restrict_injective_of_chain |
| Single-root Taylor rigidity (§4.3) | taylorAt_injective |
| Infinite-adjacency evaluation uniqueness (§4.4) | universalValues_injective |
| Three proper integral restriction embeddings (§4.4) | adjacent_restrict_not_surjective; divisor_restrict_not_surjective; finite_restrict_not_surjective |
| Proper integral single-root Taylor image (§4.4) | integral_taylor_not_surjective |
| Joint torsion-free Taylor injection and rational isomorphism (§4.6) | iota_injective; rational_taylor_isomorphism |
| Integral adjugate image and local detection (§§4.7–4.8) | Named in docstring: weighted finite quotients, bases and comparison matrices unavailable |
| Exact polynomial-coefficient module completion and finitely presented tensor comparison (§5.1) | Named in docstring: completed module carrier and induced maps unavailable |
| Arbitrary comaximal decomposition (§5.2) | comaximal_decomposition |
| Localized-integer decomposition, domain factors, component Taylor and all-value rigidity (§5.3) | component_decomposition; component_isDomain; componentTaylor_injective; allValues_injective |
| Completed/Laurent localization identities (§5.4) | Named in docstring: common fraction-field embeddings and denominator monoids unavailable |
| Failure of exactness on arbitrary polynomial-ring modules (§5.5) | Named in docstring: module completion and completed direct sum unavailable |

### Sources: all 15 seeded targets

All six bibliographic works were read from legal sources through the sources service: H from the public publisher and its arXiv v1, G and W from their specified arXiv versions, L from its public publisher, O from the author's notes page, and Fishburn from OEIS. H₀ below denotes the v1 text of H, not another bibliographic key. Published H and H₀ have different numbering, so the cited version is kept explicit. The README flags no further locator as unverified. The source-access classification retries for H and L succeeded; no missing text remains. W's version is [arXiv:2410.23078v5](https://arxiv.org/pdf/2410.23078v5).

| Seeded target | Locator, hypotheses and support checked |
| --- | --- |
| §1.3 Topology, extension, and cofinal changes of presentation | H §3.1, pp.1130–1131, H lines 168–221: compatible quotient limits and cofinal presentations. The Hausdorff complete-target extension is the roadmap's explicit completion argument using the pinned uniform-completion contract, not an invented numbered theorem of H. Discrete quotients and separation are retained. |
| §1.4 Factorial polynomials and the full completion | H₀ §1, pp.3–4, H₀ lines 90–99; H §4, p.1136, H lines 419–435; §6, p.1140, H lines 605–616; §7.1, pp.1141–1142, H lines 665–688. The factorial/divisibility presentations and Laurent comparison support the construction. The sign (−1)^N and positive-order hypotheses agree with the computed products. |
| §1.5 Coefficient and order functoriality | H §3.1, pp.1130–1131, H lines 208–221, and H₀ Lemma 3.1 proof, p.7, H₀ lines 255–266. Injective coefficient transport and countable surjective transport use monic blocks. Finite quotient base change is distinguished from false whole-completion tensor base change. |
| §2.2 Finite arithmetic and monic normalization | H₀ Lemma 3.1 proof, p.7, H₀ lines 255–266: bounded-degree monic blocks. The negative quotient in the recursion comes from q^(n+1)−1 versus 1−q^(n+1). List and F² calculations agree with the pinned descending-list API. |
| §2.3 The unit q and the Laurent presentation | H Proposition 7.1 and following paragraph, pp.1141–1142, H lines 662–688. The telescoping inverse has the correct sign and extends to the polynomial/Laurent comparison; n=0 gives 0=1−1. |
| §3.1 Root evaluation and additive Taylor coefficients | H §1, pp.1128–1129, H lines 47–92, and native Hasse/Taylor formulas. General coefficient rings require the actual cyclotomic equation, not merely primitive multiplicative order; selected-root injectivity additionally requires the stated residue-algebra condition. The mod-8 and split-root controls verify both distinctions. |
| §3.3 Close roots and convergent re-expansion | H Proposition 3.1 proof, p.1132, H lines 250–276, and G §1.3, equations (7),(9), pp.4–5, G lines 171–214. The p-adic translation is convergent evaluation, with topologically nilpotent difference and complete separated coefficients. The formula shifts by ζ′−ζ, not its negative. The arbitrary-coefficient extension is proved by the stated binomial/continuity argument. |
| §4.4 Evaluation uniqueness and proper embeddings | H Theorem 6.1, pp.1139–1140, H lines 563–604; Theorem 6.2/proof, pp.1140–1141, H lines 626–647; Proposition 7.4, pp.1144–1145, H lines 794–828. Connectedness and residue-injectivity repairs prevent the source's selected-root overclaim. All three proper restrictions now occur in Lean. |
| §4.7 Integral matrices, determinant factors, and congruences | G §5.1, equations (301)–(319), pp.60–63, G lines 2999–3221; torsion-free standing assumption at G lines 2945–2948. Strict n<N indexing corrects (313). The signed adjugate gives both identities with positive δ_N, including the empty determinant 1. |
| §4.8 Local detection of integral collections | G §5.1 equation (319), p.63, G lines 3210–3221, and §5.2 equation (332), p.65, G lines 3344–3362. The roadmap's ordinary localized-integer criterion follows from the displayed adjugate conditions plus the elementary scalar divisibility argument. It does not import a Frobenius-twisted arithmetic assertion for arbitrary coefficients. |
| §5.2 Comaximal components and the rational case | H Lemma 4.1(2), p.1134, H lines 352–353, and §7.5, pp.1145–1146, H lines 829–858. The arbitrary-class result uses finite-support CRT and the limit; over ℤ×ℚ, failure of adjacency does not imply comaximality, as the README warns. |
| §5.3 Inverting primes and domain factors | H Theorem 4.1, p.1135, H lines 399–405, root separation on pp.1136–1138, H lines 450–538, and Theorem 6.1 above; G Remark 1.2, p.7, G lines 311–317. Valuation classes and descent are the roadmap's explicit extension. Conjugate factors may split after root adjunction, so the descent argument—not an unsupported claim that the larger completion is a domain—gives the base component result. |
| §5.5 Ordinary completion on arbitrary polynomial-ring modules | H §3.1, pp.1130–1131, H lines 168–205, and §7.3, p.1144, H lines 764–792, supply the completion definitions. The diagonal P_k counterexample is the roadmap's own proof: its image is zero, and regularity forces the non-null all-one preimage. Powers of q−1 alone fail the required topology. |
| §6.3 Localization, rational kernels, and reduction modulo two | H §7.5, pp.1145–1146, H lines 829–858, supplies splitting. The displayed finite representatives are explicitly calculations, not attributed source theorems. Both CRT residues, idempotency and the rational zero-value/nonzero-jet witness were recomputed. |
| §6.4 The exported interface | This subsection combines preceding targets rather than citing an independent theorem. Its six steps resolve to §§1.2–1.5, 2.1–2.3, 3.1–3.3, 4.1–4.8 and 5.1–5.5. The N=3 computation verifies the exported coordinate direction and strict precision. |

Other opened locators include O Definition 1.1, Proposition 1.5 and Propositions 2.1–2.7 (O lines 52–56,114–155,299–361), O Definitions 5.4–5.5 and following product (O lines 1451–1500), H Proposition 3.1 and Theorems 4.1 and 5.2, W Lemma 2.1 (W lines 305–319), L's theorem on p.75 and proof on p.76 (L lines 19–23,46–82), G Examples 5.6–5.7 (G lines 3372–3422), and Fishburn line 23. Source errata below are not findings against a roadmap which already avoids them.

### Adversarial table

The 204 rows below record finite computations and symbolic boundary computations, not proofs of the general results. I re-evaluated the prior test instances against this head and independently recomputed the factorial products, root values, Taylor coefficients, normalized digits, comparison determinants and CRT projectors using exact rational/integer arithmetic. “Pass” means the computed sides agree or the negative control is excluded by the stated hypothesis. Each row covers its named statement or closely related defining/API laws. Noncommutative-group and manifold test cases are inapplicable to these commutative-algebra targets. Zero rings/modules, empty sets, characteristic 2 and 3, square-zero and split coefficients, ramified root extensions, degree-zero and excessive-index boundaries, identity maps and localization were included.

| Statement / target | Instances and computed values on both sides | Result / change |
| --- | --- | --- |
| §1.1 q-integer and geometric identity | n=0 gives 0 and q⁰−1=0; n=3,q=2 gives [3]=7 and (2−1)7=2³−1=7. | Pass |
| q-integer specialization | [3]₁=3=3; in 𝔽₃ both are 0; [2]₁ in 𝔽₂ is 0. | Pass |
| q-factorial | n=0: empty product=1; n=3,q=1: 1·2·3=6; q=2: 1·3·7=21. | Pass |
| Factorial/Pochhammer identity | n=2,q=2: (1−2)²·3=3=(1−2)(1−4); q=1,n>0: 0=0. | Pass |
| Finite Pochhammer | n=0:1; x=2,q=3,n=3: (−1)(−5)(−17)=−85; x=1,n>0:0. | Pass |
| Pochhammer concatenation | x=2,q=3,m=1,n=2: −85=(−1)·85. | Pass |
| Inverse-parameter formula | q=2,n=2: (1−1/2)(1−1/4)=3/8=(+1)2⁻³·3. | Pass |
| Jackson polynomial derivative | D₂(t²)=3t; D₁(t³)=3t²; D₁(t²) over 𝔽₂=0. | Pass |
| Adapted derivative | q=2,t²: (1−2)3t=−3t; q=0,t³:t²; q=1:0. | Pass |
| Jackson twisted product | f=g=t: D_q(t²)=(1+q)t=t+qt. | Pass |
| Series Jackson extensions | Constant derivative=0; degree-three monomial gives (1+q+q²)t², also by the series coefficient rule. | Pass |
| Jackson initial-value uniqueness | q=2: a₀=1,a₁=1,a₂=1/3; [2]a₂=3/3=a₁. q=1 over ℚ gives 1,1,1/2. | Pass |
| Adapted initial-value uniqueness | q=2: a₀=1,a₁=−1,a₂=1/3; (1−4)/3=−1. | Pass |
| Infinite Pochhammer E | q=0:E=1−t; q=2 first coefficients 1,1,2/3. Shift gives coefficient t:1=−1+2. | Pass |
| Reciprocal U and Euler identity | q=2: U=1−t+t²/3+…; EU has t coefficient 1−1=0 and t² coefficient 2/3−1+1/3=0. | Pass |
| General q-binomial identity | Coefficient t is a/(q−1)+1/(1−q)=(1−a)/(1−q); a=0 gives U, a=1 gives 1. | Pass |
| Formal logarithm | q=0: log E=−t−t²/2+…; stated coefficients −1/(1−0)=−1 and −1/(2(1−0))=−1/2. | Pass |
| Integral infinite product and topology | [q⁰t]=[q¹t]=−1; [q⁰t²]=0,[q¹t²]=1. In ℚ(q)[[t]], coefficients −1 and −1−q differ, so t-adic finite-product convergence fails. | Pass |
| Adams Laurent dilation | ψ²(q⁻¹)=q⁻²; ψ³ψ²(q⁻¹)=q⁻⁶=ψ⁶(q⁻¹). Rational constants stay fixed. | Pass |
| Adams double-series map | ψ²(q⁻¹t)=q⁻²t²; coefficient at t¹ is 0; ψ¹ gives q⁻¹t. | Pass |
| Plethystic logarithmic sum | Input t: first coefficients 1,1/2,1/3; input −t: −1,−1/2,−1/3. | Pass |
| Plethystic exponential/monomial law | PE(t)=1+t+t²+…; PE(−t)=1−t; PE(q⁻¹t)=(1−q⁻¹t)⁻¹. | Pass |
| Plethystic additivity, Adams, integrality | PE(2t)=(1−t)⁻² has coefficients 1,2,3; ψ²PE(t)=(1−t²)⁻¹=PE(t²), integral coefficients 1,0,1. | Pass |
| Raw O Proposition 1.5 identity | In r: constant=1, degrees 1,2,3 give 1,0,1. Degree 8 counts 1+7 and 3+5, giving 2 on both sides. | Pass; source prefactor removed |
| §1.2 actual cyclotomic indices | S=∅ gives {1}; over 𝔽₂, Φ₁=q+1=Φ₂; characteristic-zero labels remain q−1 and q+1. | Pass |
| Cofinal chain | Index Φ₂³Φ₃² divides g₃=Φ₂³Φ₃³ for S={2,3}; missing Φ₃ prevents division of that index into Φ₂ᵏ over ℤ. | Pass |
| Compatible-family carrier | S={1}, X=q−1: residues 1 and 1+X agree modulo X. Residues 0 modulo X and 1 modulo X² reduce to 0 versus 1. | Pass |
| Transition direction/extensionality | Mod X³→mod X² sends 1+X+X² to 1+X; isolated X at level X² and 0 at level X³ gives X versus 0. | Pass |
| Polynomial map | q modulo Φ₁=1; q modulo Φ₂=−1. Over ℤ, a nonzero constant cannot be divisible by all powers of q−1. | Pass |
| Projection surjectivity | Residue 2+3X modulo X² is the projection of that polynomial; its constant and linear coordinates are 2,3. | Pass |
| Polynomial-map injectivity boundary | S=∅: 0 and 1 both map to the sole zero element over ℤ. Over the zero ring they were already equal. | Pass |
| Nonunit admitted cyclotomic factor | Φ₂ projects to 0 in ℤ[q]/Φ₂≅ℤ; 0≠1, so it cannot be a unit. | Pass |
| Completed kernel/quotient | S={1},f=X: kernel=X R[[X]], quotient=R; f=1: kernel=whole ring, quotient=0. | Pass |
| Completed monic regularity | In (ℤ/4)[[X]], X·2X=2X²≠0; comparison of every shifted coefficient gives ker(X·)=0, despite 2·2=0 in coefficients. | Pass |
| Completed division | h=2+3X+X²: h=2+X(3+X); residue is 2, and h−2 has constant coefficient 0. | Pass |
| §1.3 inverse-limit topology | Neighborhood mod X² distinguishes 1 from 1+X; truncations of ΣXᵏ agree modulo X² after two terms. | Pass |
| Density | Coordinates through X³ of ΣXᵏ are represented by 1+X+X²: residues 1,1+X,1+X+X² match. | Pass |
| Completion universal property | S={1}, ψ evaluation at 1: extension sends ΣaₖXᵏ to a₀. On q, both maps give 1. With S=∅, hψ forces ψ(1)=0 in a Hausdorff target. | Pass; Lean headline |
| Compatible-family limit and cofinal equivalence | Xᵏ versus X²ᵏ: residues of 1+X+X² at power 2 are 1+X on both reconstructions; exponent 0 quotient=0. | Pass |
| Finite-order/adic equivalence | S={1,2}: generator Φ₁Φ₂=q²−1; q and q² retain identical residues in both towers. | Pass |
| Finite-subset inverse limit | Proposed constants 0 at order 1 and 1 at order 2 give 0≠1 modulo 2. Constants 0 and 2 pass that residue but violate re-expansion of the zero whole jet. | Pass |
| Cofinal topology counterexample | Xᵏ(−1)=(−2)ᵏ≠0 for every k, so X-powers never dominate Φ₂. | Pass |
| §1.4 factorial definition/recursion | P₀=1; P₁=1−q; P₂=1−q−q²+q³; P₃=1−q−q²+q⁴+q⁵−q⁶. Multiplication by the next factor gives each next polynomial. | Pass |
| Factorial leading coefficient/degree | P₂: lc=1,deg=3=2·3/2; P₃:lc=−1,deg=6=3·4/2. Zero ring has zero polynomial, excluded from degree claim. | Pass |
| Signed cyclotomic factorization | P₃=−Φ₁³Φ₂Φ₃; P₂=Φ₁²Φ₂. Signs are −1 and +1. | Pass |
| Cyclotomic divisibility/cofinality | Φ₃ multiplicities in P₅,P₆ are 1,2; Φ₃² divides P₆ but not P₅ over ℤ. | Pass |
| Root-power divisibility | m=k=2: (q²−1)² divides P₄. k=0:1 divides P₀=1. m=0,k=1 would require 0 dividing 1 and is excluded. | Pass |
| Factorial limit equivalence | Precision zero=quotient by 1=0; at P₂ both presentations send q to q and q² to q². | Pass |
| Order-adic transition/limit | 2 divides 6: q maps to q; q²−1 remains nonzero in the order-two completion. Constants 0 at m=1 and 1 at m=2 are incompatible. | Pass |
| Finite-divisors adic comparison | m=2 retains both Φ₁ and Φ₂ since q²−1=Φ₁Φ₂; reducing to only Φ₁ would lose the value at −1. | Pass |
| Not the q-adic or single-Taylor completion | q−1 has constant −1 at q=0 and is a unit there, but value 0 in H at 1. Φ₆ has value 1 at 1 and 0 at a sixth root. | Pass |
| Infinite-order filtration not ideal-adic | For nonzero f, choose root ζ of an order outside its finite root set: f(ζ)ᵏ≠0 for all k. The zero ideal gives discrete polynomials, whereas every finite cyclotomic precision has a nonzero polynomial in its kernel. | Pass |
| §1.5 coefficient maps | ℤ→ℚ sends q to q injectively; mod 2 sends 2q to 0 and 1−q to 1+q; identity and composite coefficient maps give those same polynomials. | Pass |
| Order restriction/naturality | S={1,2},T={1}: q maps to q then to 1; reducing mod 2 before or after gives 1. Equal-set restriction fixes q². | Pass |
| Finite versus infinite base change | Finite quotient by X² has rank 2 over both ℤ and ℚ. In ΣXⁿ/n!, denominators n! are unbounded, unlike the single denominator in a tensor element. | Pass |
| §2.1 arbitrary factorial sums | (1−q)P₀−P₁=0; zero digits sum to 0; all-one digits give F≡2−q mod P₂. | Pass |
| General factorial summability | A summand in (Pₙ) has residue 0 modulo P_N for n≥N; eventual residue sums are constant. | Pass |
| Normalized factorial existence/uniqueness | q digits=(1,−1,0,…); 1−q digits=(0,1,0,…); all-one digits have degrees 0≤n. The unnormalized zero representation violates deg a₀≤0. | Pass; Lean headline |
| Negative quotient recursion | q=1+(q−1)·1 gives next residual −1; 2−q=1+(q−1)(−1) gives next residual 1, then 0. | Pass |
| Digit finite representative independence | Adding P₂ to q changes digit 2 by 1 but leaves digits 0,1 equal to 1,−1. | Pass |
| Truncated digit basis/rank | N=2 basis=(1,1−q,q−q²), three elements; quotient degree=3=2·3/2. | Pass |
| §2.2 addition/negation and multiplication | q+(1−q) has digits (1,0,…); F² digits through P₄ are 1,3−q,6−3q−q²,7−4q−4q²+2q³. | Pass |
| Upward carry | (q³−q²−3q+5)−(6−3q−q²)=q³−1; its carry changes only later digits. | Pass |
| List/polynomial normalization | [] gives 0; descending [−1,2] gives 2−q with digits 1,1; [1,0] gives q with first residual −1. | Pass |
| §2.3 q inverse/telescope | N=0:0=1−1; N=2:q(1+q−q²)=q+q²−q³=1−P₂. | Pass |
| Inverse-q finite representative | Mod P₃: q⁻¹=1+q−q³−q⁴+q⁵; multiplication by q reduces to 1. | Pass |
| Laurent comparison/injectivity | q⁻¹ at −1 is −1; its order-one expansion is 1−X+X². In the empty completion both Laurent 0 and 1 map to 0. | Pass |
| Laurent Taylor checks | q+q⁻¹ gives 2+X²+…; q⁻² gives 1−2X+3X²+… . | Pass |
| §3.1 root evaluation | q↦ζ; F(−1)=3; F(ω)=5−ω. A polynomial Φ_n maps to 0 exactly under the required root equation. | Pass |
| Primitive-root negative control | 3²=1 modulo 8 and 3≠1, but Φ₂(3)=4≠0; root-equation hypothesis excludes it. | Pass |
| Fraction-field irreducibility control | In ℤ[2i][q], 2+2iq evaluates to 0 at i but has degree 1 and nonzero class modulo q²+1. | Pass |
| No discrete substitution from ℤ[[q−1]] to −1 | 2−q has constant 1 at q=1 and is a unit; proposed image is 3, a nonunit in ℤ. | Pass |
| Additive Taylor construction | q² at ζ gives ζ²+2ζX+X²; coefficient k=2 is 1. Mod Φ_n³ fixes that coefficient independently of representative. | Pass |
| Hasse/ordinary derivative comparison | q² in 𝔽₂: second Hasse coefficient=1, second ordinary derivative=0, and 2!·1=0. | Pass |
| Taylor finite-truncation bound | At 1 coefficient 2 of F uses n≤2 and is 2; at −1 coefficient 1 uses n≤3 and is 11; later permitted summands contribute 0. | Pass |
| Exponential coordinate | q=ζexp(−t) gives ζ,−ζ,ζ/2; q² gives ζ²,−2ζ²,2ζ². | Pass |
| Taylor multiplicativity | q·q: degree-one coefficient ζ·1+1·ζ=2ζ, matching q². Over square-zero R=ℚ[ε]/ε², (εq)²=0 and its Taylor square is 0. | Pass |
| §3.2 naturality | Reducing q²−2q modulo 2 gives q²; Taylor at 1 gives (1+X)² in 𝔽₂ on either route. | Pass |
| Positive-power substitution | a=2: q²↦q⁴,1−q↦1−q²; an order-six root squares to order 3=6/gcd(6,2). | Pass |
| Power-map composition/Taylor law | a=2,b=3: q↦q⁶ by both routes. Near ζ, q² has shift 2ζX+X². | Pass |
| Order-condition necessity | S=T={2},a=2 fails because 2/gcd(2,2)=1∉S. q+1 is sent to q²+1, with value 2 at −1, not 0. | Pass |
| §3.3 root closeness | ζ₆=−ω²: ζ₆−ω=1; ζ₆−ω²=−2ω². The first is a unit, the second lies in 2B. | Pass |
| Prime-power nilpotence | ω=−1,p=2: (ω−1)²=4∈2B; equal roots have difference 0. | Pass |
| Non-prime-power unit obstruction | Φ₆(1)=1; at a primitive sixth root (1−ζ₆)ζ₆=1. In ℤ[ζ₆]×ℤ, (ζ₆,1) gives second component 0 for 1−ω, excluded by Φ₆(1)≠0. | Pass |
| Re-expansion coefficient formula | B=ℤ₂,c=−2,f=ΣXᵏ: constant=1/3, series=1/(3−X); at degree 1, coefficient=1/9. | Pass |
| Re-expansion composition/inverse | For f=X², shift c then d yields X²+2(c+d)X+(c+d)²; d=−c gives X². | Pass |
| Close-root Taylor compatibility | h=q: σζ=h gives ζ+X, translating gives ζ+c+X=ζ′+X. h=q² gives constant (ζ+c)²=ζ′². | Pass; Lean headline |
| Re-expansion topology | Xⁿ translated by −2 has constant (−2)ⁿ→0 in ℤ₂, never eventually 0. In ℚ₂, (2)=whole field, so ideal-adic separation fails. | Pass |
| §4.1 adjacency index | c₁,₁=0,c₁,₄=2,c₁,₆=1; in ℤ the first two are separated ideals, (1) is not. In ℚ only equality survives. | Pass |
| Adjacency symmetry/reflexivity | 3/12=2⁻² and 12/3=2² give the same prime 2; equal orders use (0) and are adjacent even over ℚ. Zero ring makes every pair adjacent. | Pass |
| Inside-set connectedness | {1,2,6} has edges 1–2,2–6; {1,6} has no edge; ∅ fails nonemptiness. | Pass |
| Divisor-set connectedness | Divisors of 12 are 1,2,3,4,6,12; over ℤ all connect. Over ℤ[1/3], the v₃=0 and v₃=1 groups cannot connect. | Pass |
| Prime-power congruences | Mod 2: Φ₁₂=q⁴+q²+1=(q²+q+1)²; mod 3: Φ₉=q⁶+q³+1=(q²+q+1)³. | Pass |
| Prime-in-ideal and pair quotient | (Φ₃,Φ₁₂)=(2,Φ₃), quotient basis 1,q over 𝔽₂; q²=1+q. For equal orders quotient is ℤ[q]/Φ₃, where 2≠0. | Pass |
| Non-prime-power comaximality | Φ₆−qΦ₁=(q²−q+1)−(q²−q)=1. | Pass |
| Cyclotomic resultant | Absolute resultants for (12,3),(9,3),(6,1) are 4,9,1; integers contained in the first two pair ideals include 2,3. | Pass |
| §4.2 monic radical relation | Φ₂≡Φ₁ mod 2, giving witness (2); divisibility f=g·h gives witness (0). Over ℚ, (2)=whole ring is not separated. | Pass |
| Finitely generated witnessing ideal | For f=q+1,g=q−1, f−g=2 generates the single coefficient ideal (2); higher powers of a smaller witness ideal stay inside the original powers. | Pass |
| One-step restriction and complete-base isomorphism | Integral (q²−1)-completion maps injectively to ℤ[[X]]; over ℤ₂, q²−1=X(X+2) has the same mixed radical as X; over ℚ the order-two projector maps to 0. | Pass |
| Monic chain/restriction injection | {1,2,4}→{1} has chain 1–2–4. {1,6}→{1} kills projector (0,1), and the missing inside-set chain excludes it. | Pass; Lean headline |
| Divisor-completion intersection | q has the same residue in all divisor completions; incompatible values 0 at 1 and 1 at −1 cannot represent a common element, since their mod-2 residues differ. | Pass |
| §4.3 root adjacency | Primitive order 2 has the single root −1. At order 4, i−(−i)=2i; over ℤ[i,1/2] this is a unit and the two factors split. | Pass |
| Finite-domain transfer | ℤ[i]→ℤ² sends a+bi to (a,b); ∩2ᵏℤ²=0 forces ∩2ᵏℤ[i]=0. A finite torsion algebra ℤ/2 cannot embed this way and is excluded. | Pass |
| Single-root Taylor rigidity | Over ℤ, q and 1 have series 1+X and 1 at order 1; over ℤ[i,1/2], order-four two-root completion has projector (0,1) killed at i and fails the separation hypothesis. | Pass; Lean headline |
| Connected-domain consequence | Integral S={1,2} embeds in ℤ[[X]], hence no nonzero product vanishes. S={1,6} has (1,0)(0,1)=0 and is explicitly excluded. | Pass |
| §4.4 universal-value uniqueness | T={2ᵏ:k≥0}: infinitely many orders adjacent to 1; finite T={1,2} misses nonzero q²−1, whose two values are 0,0. | Pass; Lean headline |
| Sparse-set limitation | For T=6,15,35,77,…, adjacent-order ratios to 1 are never prime powers; the theorem gives no injection claim. | Pass |
| Selected-root safeguard | R=ℤ[i], selected ζ=i: residue q−i≠0 modulo q²+1 but evaluation=0. Over ℤ the same map identifies the full rank-two residue with ℤ[i]. | Pass |
| Proper adjacent-pair restriction | (m,n)=(1,2): (3−2q)⁻¹ has value 1/5 after 2-adic translation to −1; an integral preimage would give an integer. | Pass; Lean headline |
| Proper divisor-set restriction | Divisors 1⊂divisors 2 give the same 1/5 obstruction. Equality m=n yields identity and is excluded. | Pass; Lean headline |
| Proper finite restriction of full ring | Retaining {1} gives (2−q)⁻¹, with translated value 1/3 at −1; target permits it, full integral ring does not. Empty target is surjective and excluded. | Pass; Lean headline |
| Every integral Taylor image is proper | n=2: 1+Φ₂=q+2 has value 1 at −1 and 3 at 1. n=6:1+Φ₆ has value 1 at ζ₆ and 2 at 1. Formal inverses cannot lie in Hℤ. | Pass; Lean headline |
| Missing linear jet for n≥3 | Φ₃′(ω)=2ω+1 has norm 3; a zero constant jet's linear coefficient lies in this proper ideal, so coefficient 1 is impossible. Discriminants at 3,4,5 are −3,−4,125. | Pass |
| §4.5 universal root algebra | A₄(ℚ(i)) has rank 2, while evaluation at i has rank 1 and kills q−i. A₁(R)=R; A₀ is not used in the positive Taylor product. | Pass |
| TaylorProduct and coordinates | For q, order-one coordinates are 1,−1,0,…; order-two constant is −1; zero collection gives all 0. The unit gives constant 1 and higher coefficients 0. | Pass |
| H filtration/kernel | N=1: P₀H=H, quotient=0. N=2:kernel=P₁H; 1−q has zero value at 1 and is in the kernel. | Pass |
| Weighted Taylor filtration | N=3 retains (1,1),(2,1),(1,2). Order-two u has weight 4: retained at N=5, killed at N=4. | Pass |
| Associated graded H equivalence | N=2: g=1−q maps to P₁(1−q)=(1−q)² modulo P₂; replacing g by g+(1−q²) changes it by P₂. | Pass |
| Associated graded Taylor equivalence | Weight 4 extracts the order-two u coefficient and order-four constant; a 5u in order two gives 5, while all other extracted entries are 0. | Pass |
| Graded rank identity | N=1:1; N=2:φ(1)+φ(2)=2; N=6:1+1+2+2=6. | Pass |
| Finite bases/coordinate order | N=3 digit vectors for q,q²,1−q are (1,−1,0),(1,−1,−1),(0,1,0); jet vectors are (1,−1,−1),(1,1,−2),(0,2,1). | Pass |
| Finite precision dimensions | N=1,2,3,5 give 0,1,3,10=N(N−1)/2; replacing strict < with ≤ adds N coordinates. | Pass |
| Taylor-product reconstruction | Coordinate (m,l)=(2,2) first appears at N=5 with its fixed coefficient; reductions N=6→5→4 keep then discard that same coefficient. | Pass |
| §4.6 iota and polynomial multiplicative Taylor map | q↦z−zu; q²↦z²−2z²u+z²u²; 1−q↦1−z+zu. Additive degree-one signs reverse at root 1. | Pass |
| Factorial Taylor vanishing | P₃ at m=2 has zero constant and coefficient 8 at u; modulo 2 that coefficient is 0, so exact order cannot be claimed generally. | Pass |
| Filtered finite comparison | P₂ maps into weighted filtration N=3: at order 1 its constant and first coefficients are 0, and at order 2 its constant is 0. | Pass |
| Universal root product | m=1:empty product=1; m=2:1−(−1)=2; m=3:(1−ω)(1−ω²)=3. Base change to 𝔽₃ gives 0=0. | Pass |
| Leading factors and recursion | D₁,₄=6,D₂,₂=8,D₃,₂=27; direct Hasse computations give 6,8,27. D₂,₃=64=2²·2·8. | Pass |
| Graded leading map | N=2,g=q: components 1 and −2; N=3,g=q² at order 3 gives −3−3z₃, with no derivative term. | Pass |
| Simultaneous remainder map | N=2 matrix [[1,1],[1,−1]], determinant −2; over ℤ injective, over ℚ invertible, over 𝔽₂ rows coincide. | Pass |
| Joint torsion-free Taylor injectivity | Over ℤ, M₃ has determinant 4≠0. Over torsion-free square-zero ℤ[ε]/ε², multiplication by 4 stays injective; being a domain is unnecessary. | Pass; Lean headline |
| Rational Taylor isomorphism | Jet (1,0,0) at N=3 has unique rational digits (1,−1/4,1/4); over ℚ[ε]/ε² the same matrix inverse exists. | Pass; Lean headline |
| §4.7 Taylor matrix and triangularity | M₃=[[1,0,0],[1,2,−2],[0,1,1]]; row weights 1,2,2 make the upper-right entries 0. M₁ is empty. | Pass |
| Remainder/resultant determinant | For f=q−1,g=q+1, determinant −2 and absolute resultant 2; f=1,g=q−1 gives the one-entry matrix [1]. | Pass |
| D₂ determinant product | N=1,…,8 gives 1,2,3,8,5,72,7,128 from exact remainder matrices. | Pass |
| D₁ graded determinant factor | N=2:D₁=2, D₂=2, product 4. N=3:D₁=18,D₂=3, product 54; δ₄/δ₃=216/4=54. | Pass |
| Strict δ_N formula | N=1,…,6 gives 1,1,4,216,1327104,99532800000. Product through N would give 4 instead of 1 at N=2. | Pass; corrects G |
| Signed adjugate identities | M₃*= [[4,0,0],[−1,1,2],[1,−1,2]]; both products equal 4I. Empty matrix has determinant 1. | Pass |
| Finite image criterion | γ=(1,0,0):M₃*γ=(4,−1,1), not in (4ℤ)³; γ=0 gives 0∈(4ℤ)³. Over ℤ[1/2] all three coordinates are divisible by 4. | Pass |
| Global compatible preimages | Zero jets reconstruct all-zero digits; q jets reconstruct (1,−1,0,…); at successive precisions the unique first two digits remain 1,−1. | Pass |
| §4.8 scalar local detection | Δ=2,d=6,b=3:6 divides 2·3 and 3∈6ℤ[1/2]; only p=3 matters and v₃(3)=v₃(6)=1. Δ=1 fails at p=2. b=0 passes all. | Pass |
| Canonical maps to ℤ_p | ℤ[1/3]→ℤ₂ sends 1/3,2/3,−1/9 to the same fractions in ℚ₂; 3 is a unit. A map ℤ[1/2]→ℤ₂ would require 2 a unit and is excluded. | Pass |
| Local detection of Taylor image | γ=(1,0,0),N=3: inverse digits contain ±1/4, failing ℤ₂ integrality; over Δ=2 that obstruction disappears. Δ=−2 has the identical allowed denominators. | Pass |
| §5.1 module-completion construction | M=0 gives 0 at every quotient; S=∅ gives 0; M=R recovers the same compatible quotient families as the ring. | Pass |
| Polynomial-module monic regularity | M=ℤ/2,N=1: P₁·q=q+q²≠0; leading coefficient remains 1. N=0:P₀=1 acts identically. | Pass |
| Module projection kernel and action | Mod X, 3+2X projects to 3; subtracting constant gives X·2. Multiplication by 2 sends 3q to 6q in every quotient. | Pass |
| Natural module maps/restrictions | Reduction ℤ→𝔽₂ sends (7,−3q,5q²) to (1,q,q²); applying restriction before reduction gives identical three residues. | Pass |
| Cofinal monic block product | g_j=Xʲ gives coordinate sequences for 7,q,q² equal to (7,0,0,…),(1,1,0,…),(1,2,1,0,…). Equal successive g's contribute zero coordinates. | Pass |
| Exact polynomial-module functor | 0→ℤ→ℤ→𝔽₂→0 with multiplication by 2 becomes coordinatewise: kernel consists exactly of even integer digits; every binary digit lifts. | Pass |
| Arbitrary products versus topology | (∏ℤ)[[X]]≅∏ℤ[[X]] as modules. The family with constant 1 in one arbitrarily late coordinate lies outside ∏Xℤ[[X]], so that image is not product-open. | Pass |
| Finite-presentation tensor comparison | M=ℤ/2 gives Hℤ/2Hℤ≅H𝔽₂; M=ℤ² gives two copies. For M=ℚ, digits 1/n! have no fixed denominator. | Pass |
| Infinite direct-sum comparison | Σe_jP_j has only indices j<N at precision P_N, but infinitely many nonzero completed components; it is not a finite-support completed family. | Pass |
| Module adjacency/restriction | M=ℤ:∩2ᵏM=0; M=ℚ:∩2ᵏM=ℚ≠0; M=0:intersection=0 and every pair is adjacent. | Pass |
| §5.2 comaximality criterion | Over ℤ, Φ₁,Φ₂ have common quotient 𝔽₂≠0; over ℤ[1/2], their difference 2 is a unit; Φ₁,Φ₆ already generate 1. | Pass |
| Two-part CRT equivalence | S={1,6}: projectors have components (1,0),(0,1), product (0,0), sum (1,1). q maps to q in both factors. | Pass |
| Arbitrary component decomposition | Empty family:source and product are zero rings. Three rational singleton parts have projectors e_i e_j=0 for i≠j and each restriction gives its own coordinate. | Pass; Lean headline |
| Non-comaximality classes | Over ℤ, {1,2} is one class; {1,6} gives two classes. Adding label 0 gives a zero quotient factor because Φ₀=1. | Pass |
| Non-adjacency is weaker than comaximality | R=ℤ×ℚ:∩2ᵏR=0×ℚ≠0, but 2 is not a unit since its ℤ coordinate is 2; pair quotient is 𝔽₂×0. | Pass |
| Rational singleton/evaluation behavior | Hℚ at order 1 is ℚ[[X]]:evaluation kills X≠0. In all orders, (q−1)e₁ has coordinate X at 1 and 0 elsewhere, so every root value is 0. | Pass |
| Rational restriction surjectivity | For {1,2}→{1}, arbitrary f lifts to (f,0); kernel contains (0,1)≠0. | Pass |
| §5.3 localized integer carrier | Δ=1 gives ℤ; Δ=2 makes 2 invertible; Δ=0 would invert 0 and give the zero ring, excluded in all four relevant headlines. | Pass |
| Valuation tuples/order sets | Δ=6 and 12 use the same primes {2,3}; n=12 has tuple (2,1). Δ=1 has one empty tuple and all positive orders. n=0 is excluded. | Pass |
| Localized component decomposition | Δ=2,n=1,2,4 have v₂ values 0,1,2 and belong to three distinct nonzero factors; Δ=1 has exactly one factor. | Pass; Lean headline |
| Component projectors and restriction criterion | At Δ=2, e₀ has values 1 at 1,0 at 2; e₁ reverses those values. Missing v₂=1 kills e₁; meeting every class leaves no projector kernel. | Pass |
| Component domain/Taylor descent | Δ=3,n=3:over R[ω], primitive roots ω,ω² differ by a unit; two factors split. A base-image pair is (f,conjugate(f)); first coordinate 0 forces both 0. | Pass; both Lean headlines |
| All-value localized injectivity | Δ=2, class v₂=a:orders 2ᵃℓ for odd primes ℓ remain adjacent to 2ᵃ. Rational t=(q−1)e₁ has all values 0 but requires denominators at infinitely many primes and is outside this conclusion. | Pass; Lean headline |
| Coefficient localization non-surjectivity | (Hℤ)[1/2] is a domain, hence an idempotent has e(e−1)=0⇒e=0 or 1. H_(ℤ[1/2]) contains e₀ with values 1,0, so it cannot be in that image. | Pass |
| §5.4 restriction projector/localization | Empty retained set:e=0,localization=0; all retained:e=1,localization=H; rational {1,2}→{1}:e=(1,0). | Pass |
| Excluded-factor obstruction | Retain {1} over ℤ:Φ₂=2+X has constant 2, not a unit; localizing at Φ₂ cannot map compatibly into ℤ[[X]]. | Pass |
| Shared fraction field and monoids | Denominator 1 preserves h; Φ₁ and Φ₂Φ₃ are indices; q and 2 are not monic cyclotomic products. q⁻¹ already belongs to both unlocalized rings. | Pass |
| Localization sum identity | h=b+fc gives h/f=c+b/f. For h=q⁻¹,f=Φ₁, reduced Laurent b=1 gives q⁻¹/(q−1)=−q⁻¹+1/(q−1). | Pass |
| Localization intersection identity | q⁻¹ lies in both rings; 1/Φ₂ cannot lie in H since multiplying then evaluating at −1 would give 0=1. A canceled pole Φ₂/Φ₂=1 lies in the intersection. | Pass |
| §5.5 arbitrary-module completion | A=ℤ[q]/P₂: for N≥2, P_NA=0 and A/P_NA=A; at N=0 quotient=0. Zero module gives zero throughout. | Pass |
| Completed direct sum/null families | x_k=P_k:at P₁ support=∅; at P₂ support⊆{1}. Family 1 has every coordinate 1 mod P₁ and fails finite support. | Pass |
| Diagonal nonexactness | d_k=P_k: each x_k=P_k maps to 0 in its quotient. Regularity forces a preimage coordinate=1 for every k, violating the preceding support test. | Pass |
| Wrong single-adic counterexample | ((q−1)ᵏ) evaluated modulo Φ₂ has entries (−2)ᵏ, never 0; it does not converge to zero in the factorial topology. | Pass |
| §6.1 alternating units | m=3 polynomial 1−q+q²=Φ₆, coprime to all admitted orders coprime to 6; at order 1 its value=1. | Pass |
| Unit criterion for 1−q | At order 1:value=0; order 2:value=2; order 6:(1−q)q=1−Φ₆. Φ_(pᵃ)(1)=p, while Φ₆(1)=1. Empty completion has its sole unit. | Pass |
| Order-six inverse series | (1−q)q Σ_(k=0)^K Φ₆ᵏ=1−Φ₆^(K+1); residues of both sides modulo Φ₆^(K+1) are 1. | Pass |
| F values at orders 1–6 | Exact remainders: 1;3;5−q;8−3q;9−5q−3q²;17−13q. Each equals the corresponding displayed root value. | Pass |
| F Taylor coefficients at 1 | Computed 1,−1,2,−5,15,−53,217,−1014,5335,−31240; identical to README. | Pass |
| F Taylor coefficients at −1 | Computed 3,11,72,635,7085,95911,1528541; identical to README. | Pass |
| F cubic Taylor coefficients | Computed 5−ω,49+40ω,128+693ω; identical to README. | Pass |
| F q⁻¹ digits | First three digits computed 1,2q,3q², agreeing with (n+1)qⁿ; its order-one constant is 1. | Pass |
| Ordinary geometric series is not Habiro-convergent | Partial sum Σ_(n<N)qⁿ has value N at 1; consecutive values differ by 1≠0 in the discrete quotient. | Pass |
| §6.2 M₅ recovery | M₅(1,1,0,1,0,0,1,0,0,0)=(1,3,1,5,−1,2,8,−3,11,5). | Pass |
| Altered-jet negative control | Changing first entry to 2 recovers (2,3/4,1/4,65/72,−1/72,17/72,275/288,−7/144,1/32,17/72), not an integral vector. | Pass |
| Odd/exponent-one projectors | e(q²)−e(q) has value 1 exactly when v₂(order)=1, and 0 for v₂=0 or ≥2; e itself has values 1,0,1 at orders 1,2,3. | Pass |
| Projector digit polynomials | Odd digits:1,(q−1)/4,(1−q+q²)/8,(−5+2q+q²+4q³)/32. Exponent-one digits:0,(1−q)/4,(−1+q−q²)/8,(1−2q+3q²−4q³)/32. | Pass; matrix recovery |
| §6.3 localized projector residues | e₀ mod P₃=(7+2q−q²+q³−2q⁴+q⁵)/8; reduction mod P₂=(3+2q−q²)/4. CRT residues are 1 modulo (q−1)³Φ₃ and 0 modulo Φ₂; e₀²−e₀ remainder=0. | Pass |
| Complementary projector kernel | 1−e₀ has value 1 at −1, zero Taylor at 1; it is nonzero and is killed by order-one restriction. | Pass |
| Localized order-two inverse | Put Y=q+1:1−q=2−Y. (2−Y)Σ_(k=0)^K Yᵏ/2^(k+1)=1−Y^(K+1)/2^(K+1), residue 1. | Pass |
| Rational singleton projector | Given degree-five e₁ has residues 1 mod (q−1)³ and 0 mod Φ₂Φ₃. Multiplying by q−1 gives coefficients (−5,−2,3,5,2,−3)/12 modulo P₃. | Pass |
| Rational zero-values/nonzero-jet element | t=(q−1)e₁ has all root values 0, but its order-one Taylor series is X≠0. | Pass |
| Characteristic-two projector | q⁵+q+1 has residues 1 mod (q+1)⁴,0 mod Φ₃; e²−e has remainder 0 mod P₃ in 𝔽₂. | Pass |
| Mod-two ideal not prime | Completed nontrivial projector e satisfies e(1−e)=0 with both factors nonzero; via Hℤ/2Hℤ≅H𝔽₂, 2Hℤ is not prime. | Pass |
| §6.4 finite projections and exported precision | At N=3, q has digits (1,−1,0) and matrix image (1,−1,−1); ml=3 slots are absent. Thus the exported equations use the same strict precision and signs as Layers 2–4. | Pass |
| Zero-order total-function boundary | Φ₀=1; adjoining order 0 adds only the zero quotient and changes no compatible positive-order family. S={0} and S=∅ both give the zero ring. | Pass |
| Excessive Hasse index | For q² and k=3, binom(2,3)=0; natural subtraction 2−3=0 contributes 0·q⁰=0, matching coefficient X³=0. | Pass |
| Universal-property wrong-map control | At S={1}, coefficient extraction at X¹ sends 1 to 0 and is not a unital ring map; the genuine extension of evaluation at 1 sends 1 to 1. | Pass |
| Taylor-map wrong-model control | On q at ζ, the actual series is ζ+X; a zero map gives 0, and a rescaled-coordinate map gives ζ+2X. Coefficient 1=1 excludes both. | Pass |
| Close-root shift sign | h=q, ζ=1, ζ′=−1: shifting by −2 gives −1+X; shifting by +2 gives 3+X. Correct formula uses ζ′−ζ. | Pass |
| Source W prime-power exponent control | m=1,p=2,α=1: Φ₂ mod 2=q+1; exponent (p−1)p^(α−1)=1 gives q+1, whereas the printed exponent 2 gives q²+1. | Pass in roadmap; source misprint |
| Source G root-vanishing control | m=2,n=1: P₁(−1)=2≠0; m=2,n=2: P₂(−1)=0. The boundary is n≥m, as the roadmap uses. | Pass in roadmap; source misprint |

### Library and ownership audit

The pins are Mathlib 6b7abb3c7686292736be2955bd3eb9ebf63b456a and Tau Ceti a91d3aafa8cd3e6bc33dfde0d7677ed0f1625039. The following 24 declaration/definition groups were opened at those pins, including their hypotheses. Paths are repository-relative.

| Pinned declaration(s) | File and line; contract actually checked |
| --- | --- |
| Polynomial.cyclotomic; map_cyclotomic_int; map_cyclotomic | .lake/packages/mathlib/Mathlib/RingTheory/Polynomial/Cyclotomic/Basic.lean:229,240,262; integral polynomial and coefficient transport |
| Polynomial.cyclotomic.monic; prod_cyclotomic_eq_X_pow_sub_one | Same file:291,337; factorization requires n>0 |
| Polynomial.cyclotomic_mul_prime_dvd_eq_pow; cyclotomic_mul_prime_pow_eq | .lake/packages/mathlib/Mathlib/RingTheory/Polynomial/Cyclotomic/Expand.lean:145,156; characteristic p, prime p, and the relevant divisibility condition |
| Polynomial.eval_one_cyclotomic_prime_pow; eval_one_cyclotomic_not_prime_pow | .lake/packages/mathlib/Mathlib/RingTheory/Polynomial/Cyclotomic/Eval.lean:41,136; positive prime exponent and the non-prime-power boundary |
| AdjoinRoot.mk_eq_zero | .lake/packages/mathlib/Mathlib/RingTheory/AdjoinRoot.lean:212; exactly divisibility, with no domain restriction |
| AdjoinRoot.liftAlgHom | Same file:317; requires the polynomial equation, not merely multiplicative order |
| AdjoinRoot.algHomOfDvd | Same file:473; transition from modulus f to divisor g |
| AdjoinRoot.modByMonicHom; modByMonicHom_mk | Same file:676,683; reduced polynomial representative and its formula |
| Polynomial.hasseDeriv; hasseDeriv_coeff | .lake/packages/mathlib/Mathlib/Algebra/Polynomial/HasseDeriv.lean:59,67; binomial coefficients and natural subtraction, whose excessive-index terms have zero binomial factor |
| Polynomial.factorial_smul_hasseDeriv; hasseDeriv_mul | Same file:133,211; integral factorial comparison and convolution |
| PowerSeries.eval₂Hom | .lake/packages/mathlib/Mathlib/RingTheory/PowerSeries/Evaluation.lean:156; continuity, HasEval, complete Hausdorff target, linear topology and compatible uniformity |
| PowerSeries.hasSum_eval₂; eval₂_unique | Same file:176,190; convergent sum and uniqueness on polynomials |
| IsHausdorff; IsAdicComplete | .lake/packages/mathlib/Mathlib/RingTheory/AdicCompletion/Basic.lean:46,56; separation is intersection of powers; no Noetherian hypothesis; completeness includes separation |
| AdicCompletion.of_injective | Same file:632; requires IsHausdorff |
| AdicCompletion.isAdicComplete | .lake/packages/mathlib/Mathlib/RingTheory/AdicCompletion/Completeness.lean:181; requires a finitely generated ideal |
| Polynomial.resultant_eq_prod_eval | .lake/packages/mathlib/Mathlib/RingTheory/Polynomial/Resultant/Basic.lean:475; domain, splitting, and an explicit degree bound |
| Polynomial.isUnit_resultant_iff_isCoprime | Same file:890; monic first polynomial |
| HahnSeries.embDomainRingHom | .lake/packages/mathlib/Mathlib/RingTheory/HahnSeries/Multiplication.lean:881; injective, order-preserving and order-reflecting additive exponent map |
| IsPrimitiveRoot.prod_one_sub_pow_eq_order | .lake/packages/mathlib/Mathlib/RingTheory/RootsOfUnity/Lemmas.lean:33; domain and positive primitive order; supports the integral-root calculation before coefficient transport |
| TauCeti.TopCommRingCat.IsCompleteSeparated; .pi; .of_isClosedEmbedding | .lake/packages/TauCeti/TauCeti/Topology/Category/TopCommRingCat/CompleteSeparated/Basic.lean:80,137,155; actual group uniformity and T0 separation, hence T2, are included |
| UniformSpace.Completion.ringHom_ext_of_continuous | .lake/packages/TauCeti/TauCeti/Topology/Algebra/UniformRing.lean:116; continuous ring maps on the existing uniform completion |
| TauCeti.Polynomial.ofCoeffList; ofCoeffList_divByMonicList; ofCoeffList_modByMonicList | .lake/packages/TauCeti/TauCeti/Algebra/Polynomial/Coeff/List.lean:61,405,417; descending coefficients, divisor q^(length t)+ofCoeffList t, correct quotient and remainder |
| IsPrimitiveRoot.exists_algEquiv_apply_eq_pow_of_coprime | .lake/packages/TauCeti/TauCeti/RingTheory/RootsOfUnity/PrimitiveRoots.lean:63; normal characteristic-zero field over ℚ, a useful existing input for §5.3; restriction to the localized integral subalgebra remains additional work |
| IsPrimitiveRoot.mem_algebraAdjoin_of_pow_eq_one | .lake/packages/TauCeti/TauCeti/RingTheory/RootsOfUnity/Adjoin.lean:41; every nth root belongs to the algebra generated by a primitive one in a domain |

The native Hasse derivative, geometric sum, cyclotomic factorization, coefficient-list division, Laurent dilation and complete-separated category are suppliers rather than targets to rebuild. The native definition of IsHausdorff is ideal-power separation, not Noetherianity; IsAdicComplete includes that separation. The complete-separated topological-ring category uses the additive-group uniformity and separation. Neither an arbitrary topological ring nor a bare primitive-order predicate supplies these omitted conditions automatically. The universal cyclotomic quotient is different from one selected embedded root, as the split ℚ(i) example demonstrates.

Object searches used `roadmaps grep` across main and all indexed open heads, `roadmaps show` for the named owners, the supplied sibling files, and read-only board-package searches. They covered cyclotomic/monic completions, polynomial-module completion, q-integers, Jackson derivatives and Pochhammer/plethystic constructions. No existing classical completion implementation or fully qualified collision with any of the 32 local declaration names was found. This roadmap owns the ordinary general cyclotomic system and its module and Taylor interfaces; the downstream files explicitly import it. The derived/arithmetic comparisons remain with their separate owners. The relevant resolutions are:

| Citation / object | Resolved owner and distinction |
| --- | --- |
| Integer residue inverse limits | Completed/ProfiniteArithmetic/README.md:275, §0.2: integer residue rings, distinct from polynomial cyclotomic quotients |
| q-integer differential convention | TauCetiRoadmap/AInfCohomology/README.md:2185, §AI.3.3: framed monomial differential; no separate generic q-integer library is claimed |
| Gaussian polynomials | TauCetiRoadmap/ArithmeticStatisticsPartIV/README.md:129, §3.2: semiring evaluations and finite q-binomial theorem; explicitly not an input here |
| General lambda-ring theory | TauCetiRoadmap/SchemeKTheoryOperations/README.md:2133,2147, §§6.2.1–6.2.2: pre-lambda and special-lambda theory; not rebuilt by the elementary plethystic substitution here |
| Lambda/Witt and prime-generator comparisons | TauCetiRoadmap/QWittVectors/README.md:346,517, §§2.1a,3.2a: the comparison and prime-generator identity; the latter derives from this roadmap's §4.1 |
| Ordinary/derived comparison | TauCetiRoadmap/HabiroRings/README.md:477, §2.4, and §§5.3–5.9: consumes this roadmap's ordinary topology, Laurent comparison, exact coefficient-module functor and Taylor results |
| Arithmetic number-field comparison | TauCetiRoadmap/HabiroNumberFields/README.md:768,782, §§2.9–2.10, with coefficient data in §2.3: arithmetic Frobenius equalizer and rational-field comparison, distinct from the classical ℚ-coefficient product |
| Analytic/integer-indexed q-series | TauCetiRoadmap/QSeriesPartitionsAndMockModularForms/README.md:64–66,130,151,172,196, §§1.2–1.5: imports the finite/integral formal toolkit and adds the stated analytic/integer-indexed extensions |
| Nahm series | TauCetiRoadmap/HabiroNahmSeries/README.md:174,1069,1165, §§1.1,5.1–5.2: formal data, multivariate logarithmic/admissibility and Nahm equations; elementary Pochhammer and plethystic tools are inputs |
| Enhanced descent and Jackson convention | TauCetiRoadmap/HabiroCohomologyFoundations/README.md:316,438, §§0.2,1.2: consumes intersections, splitting and polynomial Jackson calculus. At q=2 on t², D_q gives 3t and (1−q)D_q gives −3t, agreeing with its explicitly compared conventions |

All cross-roadmap citations were resolved afresh; the resolver reported no unresolved citations/names. It does not certify pinned-library availability, which was inspected separately above. The neighboring consumers' older prospective aliases do not create duplicate ownership of the mathematical objects or a supplier edge back to them.

### Supplier order, form and completeness

All 61 explicit Needs lines, the supplier contracts, and the layer-end dependencies were read. Inputs are pinned library constructions and earlier local targets. Downstream ownership/consumer citations are not prerequisites. No undeclared supplier gap or circular proof route was found. The independent mechanical check returned:

```text
depcheck: 205 roadmaps, 1478 edges, 0 problem(s)
```

There was no UPWARD, CYCLE or moved line. Layer 4's finite matrix proof does not require Layer 5's component projectors; the combined examples occur after both. The monic-block argument supplies ordinary exactness only for polynomial coefficient modules, while §5.5 owns and demonstrates the arbitrary-module failure. The finite-domain separation step first chooses a finitely generated witnessing ideal; it does not silently assume all coefficient rings Noetherian.

The README has the required summary, scope, conventions, supplier contracts, reading guide, six ordered layers with Examples and Dependencies, consumers and references. Definition families retain their mathematical API lists and at least three discriminating Checks. Standing hypotheses are explicit in the theorem families, and the checks distinguish wrong root algebras, shift signs, finite precision, localization, and convergence notions. The corrected own names agree with the 32 named Lean declarations. There are no unsupported external-source passages or computational implementation milestones; finite normalization and small matrices express mathematical comparisons. The only import is `import Mathlib`, every support definition has a real body, and every admitted declaration is a theorem.

## Not verifiable

- No cited text or selected locator remained inaccessible. All 15 seeded targets were checked against the legal texts or, where explicitly presented as a derived extension/calculation, against the given argument and the computations above. No source manifest was changed in this read-only review.
- No implemented completed-module, weighted-matrix, or ambient-localization library exists in this PR to execute. The docstring names these missing carriers. The report checks their proposed mathematics and proof inputs; the admitted Lean build and finite witnesses do not prove those future constructions.

## Source issues

- **Misprint** in O at Proposition 1.5, printed p.3 (O line 114): the source says the raw Nahm sum equals the product times q^(−1/48); it should be the product without that prefactor; affects a stated result.
- **Misprint** in O at the proof of Proposition 1.5, printed p.3 (O lines 129–147): the source says the difference is a sum with the wrong second exponent; it should be subtraction with exponent n²/2+n; affects the proof.
- **Misprint** in O at Proposition 2.5, equation (2.1), printed p.8 (O lines 335–338): the source says f(t)=(1−t)f(qt); it should be (1−t)f(t)=f(qt); affects the proof.
- **Misprint** in O at the introductory modular product, printed p.2 (O lines 61–69): the source says the discriminant product starts at n=0; it should be n=1, since the n=0 factor is zero; affects a stated result.
- **Misprint** in O at equation (5.2), printed p.27 (O lines 1460–1467): the source says the exponential sums Adams transforms without averaging; it should retain the factor 1/ℓ from the preceding logarithmic identity; affects a stated result.
- **Error** in O at Definitions 5.4–5.5 and following product, printed pp.26–27 (O lines 1451–1500): the source says the displayed product represents arbitrary series despite omitting multiplicities and t-exponents; it should include each coefficient multiplicity and the corresponding t-exponent; affects a stated result.
- **Error** in H at Lemma 5.1, printed pp.1136–1137 (H lines 450–469): the source says prime-power ratio with prime separation characterizes every root pair; it should also include equal roots, even over ℚ; affects a stated result.
- **Error** in H at Lemma 5.2(2), printed p.1137 (H lines 476–485): the source says connected orders imply connected full root sets without further separation; it should require separation connecting conjugate roots; affects a stated result.
- **Error** in H at Corollary 5.1, final sentence, printed p.1138 (H line 539): the source says every nonempty integral order set gives a domain; it should retain connectedness, since orders {1,6} give a product; affects a stated result.
- **Error** in H at Theorem 6.2, printed pp.1140–1141 (H lines 626–642): the source says the infinite-adjacency hypothesis alone gives injectivity for arbitrary S; it should require the relevant source components to be detected, in particular connectedness in this argument; affects a stated result.
- **Gap** in H at the proof of Theorem 6.2, printed p.1141 (H lines 643–647): the source says selected-root evaluation on each cyclotomic residue algebra is injective; it should require fraction-field irreducibility or enough roots to detect every factor; affects the proof.
- **Misprint** in H at §7.2 opening, printed p.1142 (H line 709): the source says Proposition 5.1 proves the domain assertion; it should cite Corollary 5.1; affects nothing.
- **Error** in W at Lemma 2.1, printed p.8 (W lines 305–308): the source says the prime-power-ratio quotient is characteristic p also at exponent zero; it should exclude equal orders, whose quotient remains ℤ[q]/Φ_n; affects a stated result.
- **Error** in L at Lemma 1, printed p.76 (L lines 46–48): the source says the unit classification applies to all positive x; it should require x>1, since 1−ζ₁=0; affects a stated result.
- **Misprint** in L at the last sentence of Lemma 2's proof, printed p.76 (L lines 80–82): the source says the number of choices for v is φ(p^(a+b)); it should be φ(p^b)=φ(n)/φ(N); affects the proof.
- **Misprint** in G at equations (302)–(305), printed p.60 (G lines 3018–3020,3049–3050): the source says the kernel filtrations increase with N; it should say they decrease, while the retained finite quotients increase in precision; affects nothing.
- **Error** in G at the basis/base-change parenthesis before (312), printed p.61 (G lines 3104–3109): the source says whole completions and Taylor products commute with ordinary tensoring by R; it should assert the finite free quotient base-change identities or impose valid tensor-commutation hypotheses; affects the proof.
- **Misprint** in G at Proposition 5.1, equation (313) and its numerical table, printed p.62 (G lines 3157–3196): the source says det M_N uses the product through n=N; it should stop at n<N for the quotient modulo P_(N−1); affects a stated result.

- **Misprint** in W at the proof of Lemma 2.1, printed p.8 (W lines 314–319): the source says the prime-to-p exponent is (p−1)p^α; it should be (p−1)p^(α−1) for α>0; affects the proof.
- **Misprint** in G at §1.3 after equation (5), printed p.4 (G lines 161–164): the source says P_n vanishes at an order-m root when m>n; it should say n≥m; affects the proof.
- **Misprint** in G at the basis description before equation (312), printed p.61 (G lines 3104–3106): the source says the digit basis has k≤0; it should use 0≤k<n for the n-th digit block; affects nothing.

Witnesses for the source issues include equal roots over ℚ for H Lemma 5.1, and R=ℚ(i), S={4} for H Lemma 5.2: the order set has one vertex but the roots i and −i have unit difference. For H Corollary 5.1 use S={1,6}, whose factors are comaximal. For H Theorem 6.2 use S={2^k:k≥0}∪{15}: its order-15 projector survives and all selected 2-power-root values vanish. For the selected-residue step use ℤ[i] and q−i. For W's exponent, m=1,p=2,α=1 gives q+1 rather than q²+1. For G's vanishing direction P₁(−1)=2 while P₂(−1)=0. For the tensor claim, the series with coefficients 1/n! has no common integer denominator. The roadmap does not propagate these errors. No published correction was established.
