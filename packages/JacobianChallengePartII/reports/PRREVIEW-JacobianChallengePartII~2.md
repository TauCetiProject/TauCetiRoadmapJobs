# Review of JacobianChallengePartII (pull request #1225 at 02f420e)

**Verdict:** accepted

## R01 (P3) — Remove the unresolved downstream roadmap name

**Location:** `TauCetiRoadmap/JacobianChallengePartII/README.md:1119`: “AbelianVarietiesIsogenousToNoJacobian”.

**Claim:** This names a downstream roadmap that cannot be resolved in the supplied main checkout, open-roadmap index or board packages. Unlike the other named consumers, it provides no section to inspect.

**Witness:** `roadmaps show AbelianVarietiesIsogenousToNoJacobian` returns no roadmap. Object/name searches find mentions in other consumer lists, but no owning README or package.

**Exact repair:** Replace this bullet with the mathematical application, “Torelli-locus applications consume §§1.2–1.4”, or cite an existing consumer and its actual section. The genus-two instance still supplies a dimension-two principally polarized Jacobian; this repair changes no theorem or dependency.

## Verified sound

:robot: Independent AI review. No P1 or P2 finding. The folder is ready for human final approval; this verdict is not an approval or merge.

**Previous findings, checked first against this head.**

| Previous finding | Current passage and location | Status and verification |
| --- | --- | --- |
| R01: absent native headline signatures | README §0.0: “Every morphism between two bundles pulled back from F(i) descends”; §5.5: “an isomorphism whose two directions are these specified maps”. | Repaired. Suggested.lean:61,73,92 states bundle, morphism and finite-equality descent; :152,159 states the represented triangular isomorphism and base change. All five new statements elaborate. The map descent includes multiplication by x₇, and equality descent handles 1+ε versus 1. |
| R02: replanned cube specialization | README:570: “Apply AbelianSchemesAndArithmeticModuli §A1.5 ... directly with n=2”. | Repaired. The old §3.8 target is gone. The consuming diagonal calculation imports the nonsymmetric multiplication formula and gives −L−[−1]*L. |
| R03: incorrect fine-moduli owner | README:1067: “constructed in AbelianSchemesAndArithmeticModuliPartII §B4.1 from Layer 1's Jacobian”. | Repaired. That section constructs the characteristic-zero fine scheme over ℚ(ζℓ). It is a consumer, not an input to Layer 7. A StableReductionPartII design is now also available on the board; the earlier report's absence claim is not reused as current evidence. |
| R04: invented dual base-change name | README:271: “AbelianSchemesAndArithmeticModuli §A2.2, base change of the dual with its Poincaré data”. | Repaired at all three former occurrences. The supplier explicitly states that comparison at README:1089; no nonexistent `dual_baseChange` declaration is claimed. |
| R05: Hodge-line API and Checks | README:1047: “the line comparison is det(c)”; :1058: “det(c)=1 while det(2c)=4”. | Repaired. Three API bullets and five separate Checks now test rank, the nodal contribution, sign, scalar normalization and nonreduced base change. |

**Coverage and gate.** Read the entire README and Lean file: 49 numbered targets, their subsidiary assertions, conventions, APIs and Checks; all 50 `Needs` lines; all 15 seeded source targets; and all nine Lean declarations (three definitions, six theorems). The root README and CONTRIBUTING were read, along with the main JacobianChallenge and StableReduction roadmaps and the relevant supplier sections. The requested head was confirmed. The worktree remained unchanged, and the outside-folder diff was empty.

The supplied push gate passes all checks, including the targeted module build:

```text
gate JacobianChallengePartII: set_option=0 blob=0 latex=0 tex=0 prnum=0 sorry-data=0 sorry-examples=0 residue=0 private-paths=0 imports=0 mathlib-subimports=0 no-import-mathlib=0 lean-lines=0 forbidden=0 dropped=0 readme-ids-missing=0 empty-sections=0 round-labels=0 long-fences=0 layer-ids=0 target-ids=0 depcheck=0 metadata=0 stray-files=0 dirty=0 outside-folder=0 source-material=0 build=0 OK
```

The dependency check was independently rerun with the requested movable-order settings:

```text
depcheck: 205 roadmaps, 1465 edges, 0 problem(s)
```

There was no UPWARD, CYCLE or moved line. The written construction order is Layer 0 → §§1.1–1.3a → §§2.1–2.3 → §1.4 → §§2.4–2.7, followed by the later layers. Thus the polarization's use of Abel pullback is not circular. In §3.4 the translated identity precedes its specialization at c=0. Projectivity mentioned in §1.1 is explicitly a later consequence of §3.13, not an input to properness. No declared gap was supplied for this package.

**Seeded source verification.** Sources were obtained through the legal source service. IDs refer to its numbered extractions: `yuan` is arXiv:2108.05625v4; `dgh` is arXiv:2001.10276v3; `kleiman` is arXiv:math/0504020v1; `egk` is arXiv:math/9911071v1. The roadmap cites these versions' pagination, not journal pagination. No locator in the README was marked unverified.

| Sampled target | Locator opened | Support and hypothesis check |
| --- | --- | --- |
| 0.0 Finite-stage descent | `stacks-01zr` lines 1179–1216; 32.10.2/01ZR and 32.10.3/0B8W, printed p.27 | Qcqs stages and affine transitions; objects, maps and eventual equalities are present. The text uses a directed set. The roadmap explicitly supplies the extension to a small cofiltered category by common cones over finite data; it does not attribute that broader indexing verbatim to the source. |
| 0.3 Relative Picard scheme | `kleiman` lines 1309–1317, 1331–1370, 2217–2241, 2390–2393; Theorem 4.8 pp.27–29, Proposition 5.19 p.47, Exercise 5.23 p.50 | Projectivity, flatness, integral geometric fibres and noetherian base are retained. Fixed-polynomial pieces become fixed-degree pieces; finite type permits passage from an increasing union of quasi-projective opens to one open. H²=0 supplies smoothness over nonreduced bases. |
| 1.1 Properness | `kleiman` lines 2242–2273, 2390–2393; Proposition 5.20 pp.47–48 and Exercise 5.23 p.50 | Proper geometric identity components and separated ambient Picard scheme give properness. Smooth curve fibres meet the assumptions; an arbitrary represented Picard algebraic space would not suffice. |
| 1.4 Principal polarization | `egk` lines 171–241, 246–277, 660–694; (2.1) pp.4–6, (2.2) pp.6–7, (3.7)/(4.1) pp.15–16; `kleiman` lines 2435–2451, Remark 5.26 p.51 | Family autoduality, independence of degree-one bundle and determinant right inverse are present. EGK's negative Abel convention is converted to u for the positive map, then λ=−u⁻¹. Connected-base independence applies componentwise. No assertion is inferred merely from reduced fibres. |
| 2.1 Section-free Abel | `kleiman` lines 1299–1304, Definition 4.6 p.27; `dgh` lines 1193–1202, §6.1 p.24 | Relative effective divisors give the class of O(D). The graph specializes this to X→Pic¹. DGH exhibits the sectionless universal-family instance; the general family statement uses the owned graph construction. |
| 2.5 Nonzero-degree finiteness | `yuan` lines 983–987 and 1044–1056, §2.2.1 p.29 and Proposition 2.6 proof p.31; `stacks-02l6` lines 2755–2758, 02LA | The source's unrestricted finiteness sentence needs correction at d=0; the README makes it. Negative d and inseparable multiplication are covered by the explicit factorization and supplier A3.2. |
| 3.3 Twice-theta | `yuan` lines 999–1012, Definition 2.4 p.30 | Dualization occurs before diagonal pullback. The comparison to the supplier graph bundle accounts for the opposite sign of the evaluation-normalized Poincaré bundle. |
| 3.6 Poincaré addition | `yuan` lines 3688–3701, 3711–3720; Theorem A.3(2) pp.109–110 | Any field and degree-one divisor; theta need not be symmetric. The roadmap distinguishes the Picard-class formula from a rigidified comparison requiring the zero-fibre factor. |
| 3.12 Zero rigidification | `yuan` lines 999–1010, Definition 2.4 and following paragraph p.30 | Both axes are rigidified; dual diagonal pullback gives the unit rigidification. Its family coherence comes from the specified supplier Poincaré/graph construction. |
| 4.7 Bi-Picard torsion cokernel | `yuan` lines 1018–1020, 1041–1071; Proposition 2.6 proof pp.31–32 | Arithmetic normal integral quasi-projective scope and d>0 are retained. The roadmap writes out preservation of the other projection condition and obtains exponent d² by two actual lifts. |
| 5.1 Canonical Abel | `yuan` lines 1227–1247; Theorem 2.10(1) p.37, together with §2.2.1 p.29 | Source uses g>1 and the canonical bundle. The broader algebraic-family statement follows from degree 2g−2 and the previously owned Abel/finiteness results; the source's adelic claims are not imported. |
| 5.4 Shifted Faltings–Zhang | `yuan` lines 3299–3302; §4.6.2 p.97 | Source order X^m×J, shifted head, and unscaled tail agree exactly. Maximal variation belongs to the subsequent nondegeneracy theorem, not construction of this map. |
| 5.6 Shifted-power factorization | `yuan` lines 3330–3346; proof of Theorem 4.17(5) p.98 | Subtracting the first shifted coordinate introduces 2g−2 only in the tails. The roadmap separately imports finite locally free multiplication, including bad characteristic. |
| 6.2 Hodge bundles | `yuan` lines 1426–1439, 1457–1462; Lemma 3.4 pp.43–44 | Integral noetherian base and stable genus>1 family match. The proof explicitly uses Lie=R¹ and duality to obtain the rank-g comparison before determinants. No analytic metric equality is asserted here. |
| 7.1 Family with full level | `dgh` lines 1140–1168, 1193–1202; §6.1 pp.23–24 and (6.1) | DGH supplies the characteristic-zero universal example. The README explicitly derives its arbitrary given-family version from Layers 0–3 and A3.7–A3.8, retaining invertible ℓ and a fixed pairing component. It does not claim DGH constructs integral fine curve moduli. |

Additional opened passages: `km` lines 167–228 (Chapter I, Definition 1, pp.23–24 and Theorem 1, p.25: determinant functor, coherent exact-sequence and base-change comparisons; author-page scan read through the service’s OCR); `yuan` lines 3665–3672 (axis-kernel comparison, p.108), 3695–3725 (theta pullbacks, arbitrary-α square formula and nonsymmetric diagonal calculation); `kleiman` lines 1977–2004 (intrinsic algebraic equivalence and tangent space), 2089–2094 (relative Lie comparison), 1019–1028 (actual/relative Picard obstruction); `milne` lines 1275–1310 (Theorem 8.1 and base change, pp.27–28); `stacks-02l6` lines 2704–2717 (02L6), `stacks-04xv` lines 346–362 (04XV), and `stacks-0b91` lines 3421–3429 (0B91). These retain the actual/relative distinction, arbitrary base change for perfect pushforward, and the proper–unramified–universally-injective immersion criterion.

**Computed adversarial pass.** The 61 rows below are finite witnesses and negative controls, not proofs of the general theorems. E denotes an elliptic curve with origin 0; A=k[ε]/ε²; P has 2P≠0 where required. Additive notation for a line class denotes tensor product. In the genus-two shifted-map rows, choose actual points x₁,x₂, set P=j(x₁,x₂), and take y=3P−iω(x₁); then iω(x₂)−iω(x₁)=2P. All statements below survived the listed tests unless the row explicitly points to R01.

| Statement | Instances tried | Computed values on each side / excluded model | Result; change |
| --- | --- | --- | --- |
| Curve scope and genus | E; one-node arithmetic-genus-two curve; ℙ¹ | dim J(E)=1=g; nodal generalized J has torus rank 1 + abelian rank 1=2; ℙ¹ has dim J=0. | Smooth positive-genus scope excludes the latter two from Layers 0–5; nodal case belongs to Layer 6. None. |
| Empty base and disconnected degree | S=∅; two components with O and O(0) | Empty-base sections are singleton sets; degrees on the two nonempty components are (0,1), not a single integer. | Sheaf coproduct handles local degrees; no inference from an empty fibre. None. |
| Signs and rigidification | E, α=0; order-three P | i(P)=P; φ_O(0)(P)=−P; uλ(P)=−P≠P. A base twist N changes the zero restriction from O to N. | Positive polarization and negative Poincaré convention agree; arbitrary twists excluded. None. |
| 0.0 Bundle descent | Constant E diagram; polynomial union | O_E(0) has degree 1 at stage and limit; replacing it by O gives degree 0. A presentation using x₁,…,x_N has the same entries after passage to the union. | Actual bundle, not degree-only stand-in. None. |
| 0.0 Morphism descent | Trivial line over k[x₁,x₂,…] | Multiplication by x₇ has coefficient x₇ at stage 7 and limit; coefficient cannot lie in stage 6. Zero has coefficient 0 at both. | Includes noninvertible module maps. None. |
| 0.0 Equality descent | A→k→k[x₁]→⋯; r=0; two relations | Initially 1+ε−1=ε≠0; after A→k both maps are 1. Empty family has zero equations, satisfied with j=i. Two finite relations are both 0 at a common refinement. | Eventual equality, not equality at the initial stage. None. |
| 0.1 Degree constancy | E, O, O(0); inseparable residue extension | χ(O)−χ(O)=0; χ(O(0))−χ(O)=1; field extension retains 0 and 1. | No perfect-field assumption required. None. |
| 0.2 Degree pieces | Degrees 1,−1; disconnected test | 1+(−1)=0; dual of degree 1 has degree −1; (0,1) is in the coproduct sheaf, in neither fixed-degree piece globally. | Both directions of membership tested. None. |
| 0.3 Picard scheme | E over k and A | Picᵈ has relative dimension 1; h¹(O_E)=1, h²(O_E)=0; tangent module after pullback is A, not k. | Infinitesimal smoothness retained. None. |
| 0.4 Torsors/difference | Pointed E; genus-one period-two torsor | δ(2P,5P)=3P; 3P+2P=5P; reversed difference=−3P. Period-two Pic¹ has no k-point; Pic⁰ has its identity. | Torsor not automatically trivialized. None. |
| 1.1 Properness | Smooth E; irreducible nodal curve | Pic⁰(E)=E proper; nodal Pic⁰ has a G_m factor and is nonproper. | Smoothness of curve is essential. None. |
| 1.2 Jacobian | E and a pointless genus-one torsor | Both Jacobians have dimension 1 and identity 0; the torsor can have 0 rational points. | J is not the curve or Pic¹. None. |
| 1.3 Base change | E over k→A and an inseparable field extension | J(E_A)=E_A=(J(E))_A; Lie=A. A nonzero ε-tangent point reduces to 0 but is not 0 over A. | Whole scheme comparison, not reduced points. None. |
| 1.3a Determinant | g=1,2; base line N; section p | χ(O)=0,−1 respectively, giving twists N⁰,N⁻¹. det RΓ(O)=det H¹(O)⁻¹. A section quotient contributes p*L in degree 0. | Alternating parity and projection formula agree. None. |
| 1.3a Jumping cohomology | Normalized Poincaré on E×E | For nonzero parameter, (h⁰,h¹)=(0,0); at 0, (1,1); determinant line on parameter E has degree −1. | Fibrewise H⁰ alone would not give O_E(−0). None. |
| 1.4 Polarization | E; β′/β infinitesimal; sectionless curve | u=id in divisor coordinates, λ=−id, so uλ=−id. Translation by an ε-class leaves Pic⁰ pullback u unchanged. | Correct sign and independence on nonreduced base. None. |
| 2.1 Section-free Abel | E; period-two torsor; tangent evaluation | a₁(P) has degree 1; a₁(P)−a₁(0)=P. Nonzero invariant differential on E evaluates to rank 1. A torsor map C→Pic¹ exists even if both have no k-points. | No hidden base point. None. |
| 2.2 Degree-d Abel | E, α=O(d·0), d=−1,0,1,2 | Outputs −P,0,P,2P; all output degrees are d−d=0. | Zero map included in construction, excluded from finiteness. None. |
| 2.3 Pointed factorization | d=2, x=5P, b=3P, α=2·0+7P | Direct class 10P−7P=3P; pointed expression 2(5P−3P)+(6P−7P)=3P. | Translation sign agrees. None. |
| 2.4 Closed immersion | g=1; g=2; d=0 control | E's degree-one map is translation, fibre length 1; genus-two Abel has tangent rank 1 and one-point geometric fibres. Constant d=0 map has dimension-one fibre. | Immersion criterion has necessary hypotheses. None. |
| 2.5 Finiteness | E, d=−1,p,0 in characteristic p | Inversion rank 1; [p] finite rank p² but differential 0; d=0 has a dimension-one fibre. | No prime-to-characteristic restriction; source's missing d≠0 not copied. None. |
| 2.6 Difference | E, x=P,y=3P,z=4P | j(x,y)=2P; j(y,z)=P; sum=3P=j(x,z); j(x,x)=0, j(y,x)=−2P. | Swapping only one sign breaks triangle law. None. |
| 2.7 Abel over X | E, base point x=P, y=3P | Diagonal-normalized Abel gives (P,2P); forgetting head gives 2P=j(P,3P). | First-factor base order retained. None. |
| 3.1 Poincaré | E; zero axes; base twist N | P class Δ−E×0−0×E; both axis classes 0; diagonal degree 0−1−1=−2. Twist N has zero restriction N. | Negative addition and normalization fixed. None. |
| 3.2 Theta | g=1,2; g=2 noncanonical α | Sym⁰ maps to 0; genus-two theta is iα(C). If κ=K−2α≠0, theta and its inverse pullback differ. | No automatic symmetry. None. |
| 3.3 Canonical twice-theta | E; dual-number base change | deg Δ*P=−2, hence deg Δ*(P∨)=2; the graph bundle has the same degree 2. Zero rigidification has coefficient 1 before and after reduction. | Dualization fixes the ample sign and matches the graph construction. None. |
| 3.4 Translated inverse theta | E, α=0,c=P; g=2,c=0 | Translation by P pulls O(0) to O(−P)=α−c; g=2 inverse-theta pullback=2α, degree 2. | Dual on c is essential. None. |
| 3.4 Untranslated specialization | c=0, g=1,2 | gα is α or 2α, with degree 1 or 2; for genus two and κ≠0, 2α≠K. | Specialization has no circular input. None. |
| 3.5 Theta pullback | g=1,2,3 | Degrees (2g−2)+(2−g)=1,2,3. For g=2, class=K, while inverse theta gives 2α. | Distinguishes theta from inverse theta. None. |
| 3.6 Addition identity | E; restriction to E×P and diagonal | Restriction is O(0−(−P)), class P in Pic⁰(E); diagonal degree −4+1+1=−2. | Agrees with evaluation via −λ. None. |
| 3.7 Curve square | Diagonal restriction, g=1,2 | deg O(Δ)|Δ=2−2g; subtracting two α gives −2g, namely −2 and −4. Pulling −θ−[−1]*θ to C has degree −g−g=−2g. | Both sides and arbitrary-α sign agree. None. |
| 3.9 Diagonal | E; nonsymmetric genus-two L | −[2]*L+2L=−(3L+[−1]*L)+2L=−L−[−1]*L; E degree −4+2=−2. | Supplied cube formula preserves inverse-theta term. None. |
| 3.10 Fibre twice-theta | g=1,2 | Θ class L+[−1]*L has NS class 2[L]; E degree 2; genus-two Θ²=4·θ²=8. | Not a degree-one theta representative. None. |
| 3.11 Symmetry | L not symmetric | [−1]*(L+[−1]*L)=[−1]*L+L; both equal. E degree stays 2. | Transported graph symmetry is valid; generic theorem remains with supplier. None. |
| 3.12 Zero rigidification | E_A; nontrivial base twist | e*Θ=A with unit coefficient 1; dualizing coefficient 1 gives 1. Twisting by N gives N instead of O_S. | Both-axis normalization rules out wrong base twist. None. |
| 3.13 Ampleness/projectivity | E; sign-reversed candidate | Θ has degree 2>0, Θ³ degree 6 and h⁰=6; Δ*P has degree −2<0. | Graph ampleness gives projectivity; opposite sign fails. None. |
| 4.1 Actual fibrewise subgroup | Y=S; E⊔E; E positive degree | Every base line restricts to degree 0 at points. Pair of degrees (0,0) belongs; (0,1) does not, despite no universal global-functions hypothesis for E⊔E. | Definition and represented-component comparison distinguished. None. |
| 4.2 Bi-zero subgroup | E², p₁*O(0), p₁*L₀, Poincaré | Projection-fibre degrees are (0,1), (0,0), (0,0), respectively. Positive-degree example fails one condition; degree-zero pullback and Poincaré pass both. | Two tests required. None. |
| 4.3 Autoduality pullback | E, d=0,−1,2 | On Pic⁰, outputs 0,−P,2P = d·u(P); translations contribute 0. | Degree-one u determines sign. None. |
| 4.4 Actual/relative comparison | Nonsplit real conic as general obstruction control; J identity | Pic(conic)=2ℤ maps into relative ℤ, with boundary 1↦nonzero class in ℤ/2; for J, identity pullback retracts base pullback and boundary=0. | Quotient comparison is not unconditional actual surjectivity. None. |
| 4.5 Torsion cokernel | E/ℝ with two real components, d=2; d=1 | [2] induces zero on component group ℤ/2, so it is not surjective on real points; cokernel is killed by 2. For d=1 the lift gives L itself. Base correction cancels π*N−π*N=0. | Actual lift needs no division on S-points. None. |
| 4.6 Projection-preserving lifts | E², Poincaré P, d=2 | (id,[2])*P=P²; its other-fibre degree is 0, not 1. Second lift ([2],id)*P=P² also has other degree 0. | Both projection conditions survive; a positive-degree twist fails. None. |
| 4.7 Bi-Picard cokernel | E², d=1,2 | ([d],[d])*P=P^(d²), so exponents are 1 and 4; two consecutive lifts multiply exponents 2·2=4. | d² bound, not unsupported surjectivity. None. |
| 4.8 Axis subgroup | O; p₁*L₀ with L₀≠O; elliptic Poincaré | Axis classes (0,0), (L₀,0), (0,0). Poincaré diagonal degree −2 proves it is nontrivial. | Excludes larger Pic⁰⁰ and avoids chosen trivializations in carrier. None. |
| 4.9 Pointed square comparison | C=J=E, i=id; Albanese zero-map control | Pullback is identity on classes, unique extension of P is P. With i=0, factorization of id_E would require 0=id_E, false. | Native Albanese hypothesis excludes arbitrary maps; no stand-in. None. |
| 5.1 Canonical Abel | g=1,2,3; characteristic 2 | e=2g−2 is 0,2,4. Genus-one canonical map is constant; genus-two multiplication factor has rank 2⁴=16 even in characteristic 2. | g>1 necessary for claimed finiteness. None. |
| 5.2 Shift | Actual iω(x)=Q, y=3P; zero c control | τ(y,x)=(3P,3P+Q); first projection is 3P. For c=0, output is (y,y). | First-factor structure preserved. None. |
| 5.3 FZ | E, (P,3P,4P); small diagonal | FZ₂=(2P,3P); FZ₁(P,3P)=2P; diagonal=(0,0). Translation by Q cancels in each difference. | Source index 0 versus successor indices agrees. None. |
| 5.4 Shifted FZ | Actual genus-two pair described above; m=1 | τ₂=(3P,P), whereas full shifted canonical tuple is (3P,5P); τ₁=(3P). | Tail is unscaled, and empty tail well-defined. None. |
| 5.5 Forward and inverse | Trivial group; n=0; C₃ generator a | Singleton stays a; trivial tuple stays 1. Forward(a,a)=(a,1); inverse(a,a)=(a,a²), with a²≠1. | Distinguishes directions and handles boundary. None. |
| 5.5 Noncommutative inverse | GL₂(𝔽₂), a=((1,1),(0,1)), b=((1,0),(1,1)) | ab=((0,1),(1,1)); ba=((1,1),(1,0)). Inverse(a,b)=(a,ba), then forward gives (a,b). | Right multiplication is essential. None. |
| 5.5 Base change | G_m(A), (1+ε,1), reduction A→k | Forward gives (1+ε,1−ε); inverse multiplies (1−ε)(1+ε)=1. Reduction gives (1,1) in either order. | Both coordinate maps commute with pullback; nonzero ε is retained before reduction. None. |
| 5.6 Factorization | Same genus-two pair, m=2 | B₂=(3P,5P); R(B₂)=(3P,2P); D(τ₂)=D(3P,P)=(3P,2P). | Tail factor e=2 appears exactly once. None. |
| 5.6 Tail powers and group law | n=0; e=−1,0,1,2; nonabelian control | Empty tail gives id. Pair (a,b) maps to (a,b⁻¹),(a,1),(a,b),(a,b²). In GL₂(𝔽₂), a²b²=1 but (ab)²=ba≠1. | Powering is a homomorphism only with commutativity; zero collapses a positive-dimensional tail. None. |
| 5.6 Product transfer and isogeny | m=1,2; genus two e=2 | H(a)=(a,()); H(a,b)=(a,(b)); rank D=2^(4(m−1)) gives 1,16. In characteristic 2, tail differential=0 but rank remains 16. | Isomorphism transfer and inseparable finiteness agree. None. |
| 6.1 Lie–cohomology | Smooth genus two; irreducible one-node genus two; split units | R¹ rank 2; generalized Lie ranks 1+1=2. (1+εa)(1+εb)=1+ε(a+b); ε↦cε sends a↦ca. | Additive and scalar normalization match, toric direction retained. None. |
| 6.2 Hodge comparison | Smooth, one-node and compact-type genus two | Differential ranks are 2, 1+1=2, 1+1=2; using only the nodal abelian quotient gives rank 1. | Semi-abelian carrier necessary. None. |
| 6.3 Determinant line | Rank-two identity, swap, scaling; A→k | ∧²A²=A, rank 1; det(id)=1, det(swap)=−1, det(2id)=4. In characteristic 2, −1=1; reduction of coefficient 1 remains 1. | Specified map fixes scalar and sign. None. |
| 7.1 Full symplectic level | E[3] as pairing control; g=2 full level; char divides ℓ | GL₂(𝔽₃) count=(9−1)(9−3)=48, fixed-pairing count=24. Standard basis pairs e₁,f₁ to ζ₃, reversed order to ζ₃⁻¹. In char 3, E[3] rank 9 but is not étale. | Fixed component and invertibility distinguish the given data. None. |
| 7.2 Level-family FZ | Same family pulled back; first point fixed; diagonal | Fixed x₀ yields (x₁−x₀,…); diagonal gives zero tuple before/after pullback; m=1 gives the same single difference. | Level does not alter coordinate formula. None. |
| Downstream Torelli application, R01 | Genus two | Input g=2 gives dim J=2, principal polarization degree 1; number of resolvable named consumers at the cited name=0. | Mathematical output survives deletion of the unresolved label. R01. |

**Pinned declarations and signature audit.** Pins are Mathlib `6b7abb3c7686292736be2955bd3eb9ebf63b456a` and Tau Ceti `a91d3aafa8cd3e6bc33dfde0d7677ed0f1625039`. File paths below refer to those repositories.

| Opened pinned file and line | Declaration/content checked and consequence |
| --- | --- |
| `TauCeti/AlgebraicGeometry/LineBundle/Basic.lean:111` | `InvertibleSheaf` is the full subcategory of module sheaves satisfying invertibility. Morphisms are all module maps, not just isomorphisms; hence the x₇ descent test is in its domain. |
| `TauCeti/AlgebraicGeometry/LineBundle/Pullback.lean:72`; `Functoriality.lean:45,65,96,110,118,127` in that directory | Pullback is a functor; composite comparison is successive pullback → composite pullback. Thus the conjugation e_M⁻¹ · pullback(b) · e_N in the new theorem has the correct direction. Class pullback preserves identity, composition and the trivial class. |
| `TauCeti/AlgebraicGeometry/LineBundle/Class.lean:50,76,119,142` | Actual isomorphism-class quotient, equality iff isomorphism, tensor compatibility and commutative group. No relative sheafification or chosen rigidification is built into this carrier. |
| `TauCeti/AlgebraicGeometry/LineBundle/TensorProduct.lean:63`; `Dual.lean:44` | Native tensor and dual operations used by the README, with actual bodies. |
| `TauCeti/AlgebraicGeometry/LineBundle/Degree.lean:70,126,132,138` | Euler degree uses truncation below 2. It does not itself assume curve properness, finite cohomology or higher vanishing; the README correctly names those additional inputs. |
| `TauCeti/AlgebraicGeometry/WeilDivisor/Scheme/Degree.lean:40`; `Cohomology/Basic.lean:61`; `PicardFunctor/Rigidified.lean:66` | Relative divisor degree, module-sheaf cohomology, and section-rigidified test-object functor exist. These are not a family Jacobian or a relative derived pushforward. |
| `TauCeti/AlgebraicGeometry/AbelianVariety/Basic.lean:95,127,144` | Native carrier has a group object, properness and geometric integrality; smoothness and commutativity are provided by the API. A merely arbitrary scheme/group is not admitted as an abelian variety. |
| `TauCeti/AlgebraicGeometry/AbelianVariety/Albanese.lean:84,136,142,174` | `IsAlbanese` includes the pointed equation and unique factorization to every abelian variety; factorization, hom-extensionality and uniqueness up to isomorphism exist. It does not contain the square-Picard conclusion. |
| `Mathlib/CategoryTheory/Filtered/Basic.lean:590,822` | `IsCofiltered` includes nonemptiness; finite diagrams admit cones. Empty index-category vacuity is excluded in §0.0. |
| `Mathlib/CategoryTheory/Monoidal/Cartesian/Grp.lean:58,178,182`; `Mon.lean:442` | `Hom.group`, `GrpObj.comp_div`, `GrpObj.comp_zpow`, `MonObj.comp_mul` provide actual represented-point operations and naturality. No commutativity silently enters the triangular definitions. |
| `Mathlib/CategoryTheory/Limits/Shapes/Products.lean:144,166,262`; `Limits/Preserves/Shapes/Products.lean:84` | Native products, product extensionality and comparison/projection identities. The base-change statement is on scheme morphisms in the slice, not free point variables. |
| `Mathlib/CategoryTheory/Limits/Preserves/Shapes/BinaryProducts.lean:93`; `CategoryTheory/Monoidal/Grp.lean:578`; `AlgebraicGeometry/Sites/Fpqc.lean:53,97` | Binary-product comparison, transported group structure and subcanonical fppf topology exist at the pin. The group structure uses the monoidal functor and its preservation of the inverse. |
| `Mathlib/AlgebraicGeometry/Morphisms/Proper.lean:123`; `Morphisms/FlatDescent.lean` | `IsProper.of_comp` uses separated target. Opened the descent instances and confirmed the stated distinction: the file does not supply the two closed-immersion/finite fpqc descent instances; the routes name the corresponding Stacks results. |

Built the missing `TauCeti.AlgebraicGeometry.AbelianVariety.Albanese` object, then ran the requested direct `lake env lean` elaboration of Suggested.lean: exit 0, six `sorry` warnings and no others. A scratch copy appended `#check @name` for **all nine declarations** and elaborated successfully. The printed types retain qcqs stages, affine transitions and the limit witness for all three descent statements; properness, smooth relative dimension one, geometric connectedness, actual point and Albanese property for the Picard theorem; and `GrpObj A` for both triangular maps. No lost section binder or README/signature discrepancy was found.

For each of the six sorried theorems, a separate-copy one-tactic alternative probe tried `simp`, `rfl` and `infer_instance`; none closed the goal. The pinned object/API searches found no single library theorem to discharge the descent, square-Picard or represented triangular-isomorphism assertions by `exact`. The triangular proof needs product extensionality plus coordinate cancellation, not merely a definition unfolding. No padding finding is supported by these probes.

**Headlines.** The README's headline inventory was checked as follows:

| Layer | Advertised headline family | Acceptance-test disposition |
| --- | --- | --- |
| 0 | Bundle descent; degree constancy/components; relative Picard representability; degree torsors | Descent, including morphisms and finite equalities, is stated natively. The docstring names missing relative Picard carriers for the rest. |
| 1 | Proper relative Jacobian; base change; determinant of curve cohomology; canonical principal polarization | Missing relative Picard/abelian-scheme/dual/polarization and relative perfect-pushforward carriers are named in the docstring. |
| 2 | Section-free and degree-d Abel; immersion and finiteness; difference and its Abel-over-X interpretation | The docstring names missing geometric Abel and Picard-torsor carriers. No free-function substitute. |
| 3 | Normalized Poincaré, theta, twice-theta, pullbacks, addition, square/diagonal identities and ampleness | The docstring identifies missing theta, dual Jacobian and universal Poincaré objects. |
| 4 | Actual fibrewise/bi-zero groups; autoduality; torsion cokernels; axis group and pointed square comparison | The axis condition has a real definition and the square theorem is stated on native carriers. Intrinsic algebraic equivalence and relative identity-component carriers needed by the other headlines are named as missing. |
| 5 | Canonical Abel; universal shift; FZ and shifted FZ; triangular isomorphism; tail-isogeny factorization | The actual triangular morphisms, isomorphism and base-change compatibility are stated. The docstring distinguishes the unavailable geometric Abel/difference/isogeny factorization. |
| 6–7 | Stable Lie/Hodge and determinant comparisons; full-level Jacobian and FZ family applications | Missing semi-abelian Picard, relative dualizing/pushforward and symplectic-level carriers are named. |

**Ownership and cross-roadmap resolutions.** Object searches used the pinned libraries, `roadmaps grep/show/resolve`, main, the available open heads and board packages. The 13 mechanical “Lean names found nowhere” leads are accounted for: nine are this file's declarations, and four are explicit supplier API names/prose in AbelianSchemesAndArithmeticModuli A0.1/A2.2/A2.5/A2.6. No fully qualified declaration collision was found. The broad searches were narrowed to line bundles, Picard objects, family Jacobians, determinants, triangular products and Hodge comparisons; numerical “Jacobian” coordinates and analytic Picard–Lindelöf results are different objects.

Resolved contracts, using main for existing roadmaps rather than their revision pull requests:

- `TauCetiRoadmap/JacobianChallenge/README.md:111,135,143,218,332,448`, Layers A–F: field and pointed construction, line bundles, curve cohomology and relative Cartier/symmetric-power inputs. In particular :173 supplies a finite-projective complex computing arbitrary ring base change. This Part II adds family/sectionless constructions rather than replanning the parent.
- `TauCetiRoadmap/StableReduction/README.md:308,408,420,448,453,475`, Layers 2–3: shared relative duality, nodal cohomology, stable families and fibrewise ampleness. Its noetherian coherent scope is respected; §1.3a explicitly builds the arbitrary-test-base extension using finite-stage descent.
- `TauCetiRoadmap/AlgebraicVectorBundles/README.md:228,254`, L0B–L0C: finite locally free sheaves, rank-one comparison, exterior powers, determinants and coherent pullback.
- `TauCetiRoadmap/PadicMeasuresIwasawaAlgebras/README.md:3172,3247`, §5.1: ring-level determinant and its coherent comparison/sign API. This is not the geometric determinant of arbitrary curve coefficients in §1.3a.
- `TauCetiRoadmap/SchemeAndStackFoundations/README.md:848,938,2074,4275,4905,4937,5000,5706`: §§0.9,0.11,1.1,2.20,3.6–3.8,4.14 supply limits, descent, relative duality, field torsors/Abel maps, invariant differentials and Hilbert/Quot. Field torsors and elliptic objects are explicitly compared, not silently duplicated.
- `TauCetiRoadmap/ModularCurves/README.md:751`, §2D: genus-one relative Picard and normalized Poincaré. Its divisor-class convention is the inverse of the positive Mumford polarization here; the roadmap explicitly records that adapter.
- `TauCetiRoadmap/AlgebraicModuliForArithmeticGeometry/README.md:1240,9413,9662,9727,9806`, Layer 3 and §§7.3,7.6.1,7.6.1a,7.9: finite local freeness descent, framed deformation, relative Picard sheaf/base change/kernel, section splitting and component construction.
- `TauCetiRoadmap/ComplexComparisonPartII/README.md:1975,1993,2011,2059,2077`, §§C3.2d.2–d.4 and C3.2f.1–f.2: represented Picard space, separatedness, obstruction and full identity-component criterion. The nonreduced-base formal-smoothness qualification is preserved.
- `TauCetiRoadmap/AbelianSchemesAndArithmeticModuli/README.md:588,741,757,870,886,1050,1081,1123,1197,1230,1441,1628,1658`, A0.1, A1.1–A1.2/A1.4–A1.5, A2.1–A2.3/A2.5–A2.6 and A3.2/A3.7–A3.8: carriers, products, rigidity, seesaw/cube, dual/Poincaré, polarization/graph bundle, multiplication and level structures. The new §3.9 route imports the n=2 cube formula. §§3.11–3.13 transport the supplied graph properties to the separately identified canonical curve bundle; no generic graph theory is reassigned.
- `TauCetiRoadmap/NeronModelsAndSemistableAbelianVarieties/README.md:2667`, §4.13: stable-family Picard is fibrewise semi-abelian; toric rank may jump. Its §5.3d (:3406) concerns regular curves over complete DVRs, ω and ω², and discriminant sections; it does not already supply §1.3a's arbitrary smooth-family coefficient construction.
- `TauCetiRoadmap/ModularCurvesPartII/README.md:3240`, §13.1, imports this roadmap's positive-genus relative Jacobian. `TauCetiRoadmap/ArithmeticStatisticsPartVIII/README.md:123` likewise imports the positive-genus Jacobian and supplies its own genus-zero case. Neither is an upward prerequisite.
- `TauCetiRoadmap/AbelianSchemesAndArithmeticModuliPartII/README.md:1983`, §B4.1: fine full-symplectic-level curve moduli in characteristic zero; its B4 difference applications consume this roadmap.
- `TauCetiRoadmap/AbelianSchemesAndArithmeticModuli/README.md:3850`, A6.38: the abelian Hodge line is the determinant of invariant differentials, with base change and product compatibility. This matches the smooth-fibre restriction of §6.3.
- Board designs `packages/StableReductionPartII/design/README.md:28,22129,22238` and `packages/ArakelovGeometryAndAbelianHeightsPartII/design/README.md:1438,1471` import the Jacobian/Hodge interfaces here. FunctionFieldArithmeticPartII's root-Picard objects are distinct. These package searches do not establish new supplier edges. R01 records the sole unresolved downstream name.

No computational algorithm, route-only “good primes” restriction, copied source passage, sorry-valued data or `set_option` was found. The layer structure, API/Check coverage and named routes were inspected; the degree-zero and bad-characteristic controls are retained in the README rather than padded into Lean.

## Not verifiable

- Zhang, *Gross–Schoen cycles and dualising sheaves*, Lemmas 2.2.1–2.2.3, underlying the citation through Yuan §A.3 for §4.9: the previous source-service attempt was recorded as **uncertified**. That settled status was not reopened. Yuan's statement at `yuan` lines 3665–3672 was read; Zhang's precise proof was not. The arbitrary-field comparison was also checked independently via the written Albanese/Picard route.
- Serre, *Lectures on the Mordell–Weil Theorem*, §5.6 pp.74–76: the previous service attempt was **uncertified**. Yuan's explicitly displayed translated identity at `yuan` line 3714 was read and recomputed; Serre's page itself was not certified.
- Mumford–Fogarty–Kirwan, *Geometric Invariant Theory*, §6.2, Proposition 6.10: the previous service attempt was **uncertified**. Yuan's definition and the supplied graph-bundle contract were inspected; the book passage was not.

No source manifest or PR file was edited. These limitations concern direct source certification, not a counterexample or an unowned prerequisite, and do not park the review.

## Source issues

- **Error** in yuan at §2.2.1, printed p.29: the source says the degree-d Abel map is finite without excluding zero; it should be finite for d≠0, with degree-zero maps constant; affects a stated result.
- **Misprint** in kleiman at Remark 5.24, printed p.51: the source says normalize the universal bundle by multiplying by its pulled-back restriction; it should be multiplied by the inverse of that restriction; affects the proof.
- **Misprint** in kleiman at Remark 5.25, printed p.51: the source says normalize by multiplying by the pulled-back base-point restriction; it should be multiplied by its dual; affects the proof.
