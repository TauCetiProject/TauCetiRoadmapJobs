# GeometricFreyMazur repair report

## F01 (P2) — applied

Function-field headline marked unstatable → `geometric_frey_mazur` on native geometric torsion and `TauCeti.Isogeny`, with a real `gonality` definition. Conventions give its API and four Checks; §9.8 identifies the signature. The existing gonality gap now explicitly requests the proper-model comparison. Evidence: BT16 lines 55–70 and the pinned carriers recorded below.

## F02 (P2) — applied

Full-monodromy headline marked unstatable → `full_monodromy`, with nonconstant j, characteristic zero, function-field gonality and the exact inequalities 5<p and 800N<7p. Section 9.6 explains its equivalence to the family statement, determinant and finite-basis hypotheses, with computed controls. Evidence: BT16 lines 71–74 and 81–82; ABR96 lines 14–17.

## F03 (P2) — applied

Three auxiliary acceptance declarations → README-only arguments in §§8.2 and 8.4. Deleted their names and MatrixGroups scope from the acceptance file; replaced the scope paragraph and auxiliary-headline descriptions. The subgroup bound covers every prime, with indices 2 and 3 as Checks. The self-twist target drops χ²=1. Perfectness is imported, and factoring χ through SL₂ proves the stronger statement.

## F04 (P2) — applied

Matching characteristic polynomials → a single GL₂ frame matrix for both automorphisms; modular-point derivatives → Aut(E) on Lie(E). Section 0.3 retains disjointness with the missing normalization and excludes the opposite lift explicitly. Its API, proof route and Checks agree. Section 3.5 now computes the same sign exclusion. Evidence: BT16 lines 297–305, especially line 301.

## F05 (P2) — applied

Uncited extension gap → explicit consumption in §§6.2, 6.4, 9.1, 9.8, 10.2 and 10.4, also §10.3's normalization-genus claim. Finite normalization is imported from SchemeAndStackFoundations §4.13. The gap retains extension, factorization and birational genus invariance; README and plan agree. AlgebraicCurves 12B–12E do not supply the arbitrary proper-target extension.

## F06 (P3) — applied

SchemeAndStackFoundations §1.7 → §0.11 in the contract and §9.4. Added the pinned Galois-fixed descent and integer degree-scaling declarations to From Tau Ceti and their consumers, §§9.2 and 9.4. Section 0.11 treats finite-Galois morphism descent; the pinned isogeny criterion also handles an infinite Galois extension, as required for K̄/K.

## F07 (P3) — applied

Unrelated BT16 locators → the actual remark and footnote in §§8.3 and 9.6; transvection generation plus the stated coset-action proof in §8.2; pinned perfectness plus the kernel argument in §8.4. BT16 line 76 is Theorem 3, and lines 58–64 state Frey–Mazur, not self-twists. The BT16 manifest locator includes the opening theorems and remark.

## F08 (P3) — applied

Duplicate CM, conjugate-diagonal and ramified-fibre Checks → one representative of each, retaining three discriminating Checks for each affected definition. The erroneous nine-pair bullet → the 16-entry inertia table. Procedural Checks in §§1.7, 1.8, 3.5, 3.6, 4.3, 6.5 and 8.1 → computed instances. No Check became a Lean declaration.

## Source, ownership and citation verification

All mathematics and verdicts were checked directly; no helper agents were used. Read the representative main roadmaps AlgebraicCurves, FuchsianOrbifolds and SchemeAndStackFoundations before editing. The supplied content checkout is detached at `4aeb1cc1`; its manifest pins Mathlib `6b7abb3c7686292736be2955bd3eb9ebf63b456a` and Tau Ceti `a91d3aafa8cd3e6bc33dfde0d7677ed0f1625039`.

Read the certified cached published BT16, author BTE and arXiv-v1 ABR96 extracts at the relevant locators. BT16 lines 55–70 support the function-field headline and gonality interpretation; lines 71–74 and 81–82 give the large-level surjectivity remark and determinant convention. BT16 lines 295–305 require equal frame matrices and elliptic-origin tangent eigenvalues. BTE lines 30–54 retain the Heegner-only repulsion distinction; lines 104–141 retain the two multiplicity conclusions. ABR96 lines 50–53 define geometric gonality, lines 61–84 fix the singular metric and clipped gap, and §1.7 gives the area calculation. BLR90 remains settled as uncertified and is cited only by its existing locators. No new work or source key was needed, and there is no missing-reference request.

Checked cross-roadmap citations against the supplied main files and, for open work, `roadmaps show` at the indexed heads. The consumed sections are ModularCurves §§0D, 0E, 2C, 5B, 5C; ModularCurvesPartII §§1.2, 1.3, 2.3, 3.9, 3.14, 4.1, 4.6–4.10, 5.7, 5.13, 5.16, 6.1, 9.13; SchemeAndStackFoundations §§0.8, 0.9, 0.11, 1.17, 3.2, 4.11–4.13, 5.1–5.3, 5.9, 5.10; AlgebraicCurves Layers 3–7 and 12A–12E; FuchsianOrbifolds Layers 0–5; ComplexKahlerGeometry K3, K6.1; RiemannianGeometry R7.0, R8; ComplexComparisonPartII C−1.1–C−1.3, C2.2, C4.1–C4.5, C5.4, C6.2; InverseGaloisAndArithmeticFundamentalGroups IG.0.3, IG.1.3, IG.3.1; AbelianSchemesAndArithmeticModuli A1.1, A1.8, A3.1–A3.5, A3.7, A3.8, A6.1, A6.6, A6.7, A6.20, A6.25, A6.34; NeronModelsAndSemistableAbelianVarieties §§1.3, 1.8; and CongruenceSpectralGap CSG.5/congruence-bound (its §5.3). The section correction is F06. In particular IG.1.3 includes nonproper finite-type characteristic-zero base extension; SchemeAndStackFoundations §4.13 includes finite normalization regularity, with finiteness over a field. The generic curve extension and gonality comparisons remain explicit gaps, rather than claims about the contents of Layer 12.

Object searches with `roadmaps grep` covered main and indexed open heads; separate searches covered board packages and the pinned libraries. Gonality, Frey–Mazur, diagonal quotient surfaces, self-twists and subgroup indices revealed no competing owner for these two headlines. Automorphic and number-field CM self-twist results use different objects. ModularCurvesPartII owns the level curve and cyclic Hecke correspondence; this package retains only their quotient-surface applications. AlgebraicCurves owns general gonality and the comparison requested by the existing gap; the small numerical definition here only makes the acceptance test statable. No declaration uses another roadmap's fully qualified name.

The citation resolver reported no missing cross-roadmap citations and no missing Lean names. Its transcript identifies service main `bfaaff1` and 353 indexed pull requests dated 2026-10-25; its statement that pinned Lake packages were unavailable is not evidence about the supplied checkout. Library claims were instead read in the supplied pins. No source passage or extracted source file was copied into the package.

## Pinned API evidence and signature comparison

| Declaration | Pinned location and mathematical content |
|---|---|
| `FunctionField` | `Mathlib/NumberTheory/FunctionField.lean:58`: finite dimensionality over the chosen `RatFunc k`; no finite-constant-field hypothesis. The signatures explicitly retain the k-algebra tower. |
| `IntermediateField.adjoin`, `Module.finrank` | Native intermediate subfield and dimension; the definition restricts to transcendental generators and finite extensions, avoiding the infinite-dimensional finrank value 0. |
| `AddSubgroup.torsionBy`, `.zmodModule` | `Mathlib/Algebra/Module/Torsion/Basic.lean:972`, line 1010: subgroup killed by p and its ℤ/pℤ-module. |
| `AddMonoidHom.toZModLinearMap` | `Mathlib/Algebra/Module/ZMod.lean:81`: additivity implies ℤ/pℤ-linearity. |
| `WeierstrassCurve.Affine.Point.map` | `Mathlib/AlgebraicGeometry/EllipticCurve/Affine/Point.lean:823`: additive base-change map; it preserves zero and torsion. |
| `LinearMap.det` | `Mathlib/LinearAlgebra/Determinant.lean:173`: finite-basis determinant with fallback 1 otherwise. Ellipticity, p prime and characteristic zero force the actual geometric torsion module to have dimension 2. |
| `TauCeti.Isogeny` | `TauCeti/AlgebraicGeometry/EllipticCurve/Isogeny/Basic.lean:139`: pointed nonzero coordinate pullback between the actual Weierstrass curves. |
| `TauCeti.Isogeny.existsUnique_map_eq_iff_galoisFixed` | `TauCeti/AlgebraicGeometry/EllipticCurve/Isogeny/Descent.lean:117`: unique descent iff all conjugations fix the isogeny, under the explicit Galois-extension hypothesis. |
| `TauCeti.Isogeny.Hom.degree_zsmul` | `TauCeti/AlgebraicGeometry/EllipticCurve/Isogeny/MulByInt/Hom.lean:63`: degree of n·f is abs(n)² times degree f, including n=0. |
| `Matrix.SL2.commutator_eq_top` | `Mathlib/LinearAlgebra/Matrix/SpecialLinearGroup.lean:804`: a≠0 and a²≠1 imply perfectness; a=2 works over 𝔽₅. |
| Transvection generation | `TauCeti/LinearAlgebra/Matrix/SpecialLinearGroup/Transvection.lean:595`: the subgroup generated by field-valued transvections is all SL. |
| Scheme normalization | `Mathlib/AlgebraicGeometry/Normalization.lean:122`: relative normalization. SchemeAndStackFoundations §4.13 applies it to Spec K(Y)→Y; normalization along the identity would just return Y. |

The unchanged matrix, projective-group, multiset, Riemann-surface degree and ramification declarations were also located at the pins. These include `Matrix.ProjGenLinGroup` and `mk_eq_mk_iff` in `Mathlib/LinearAlgebra/Matrix/GeneralLinearGroup/Projective.lean:41` and line 64, the PSL→PGL comparison in that file at lines 113 and 120, `Matrix.ProjectiveSpecialLinearGroup` in `Mathlib/LinearAlgebra/Matrix/ProjectiveSpecialLinearGroup.lean:33`, matrix entrywise-norm identities in `Mathlib/Analysis/Matrix/Normed.lean:87` and line 106, `Subgroup.index` in `Mathlib/GroupTheory/Index.lean:55`, and `Sym`, `Sym.map`, `Sym.map_map` in `Mathlib/Data/Sym/Basic.lean:43`, line 342 and line 361. The Tau Ceti degree declarations are in `TauCeti/Analysis/Complex/RiemannSurface/Degree.lean:120`, line 133 and line 434; the ramification divisor is in `TauCeti/Analysis/Complex/RiemannSurface/Ramification.lean:112`. None was redeclared.

A scratch copy of the final acceptance file appended `#check @` for every declaration and elaborated all three together. The resulting types were compared with Conventions and §§9.6, 9.8:

| Declaration | Retained binders and comparison |
|---|---|
| `gonality` | Both fields and `Algebra k K`, with independently polymorphic universes. No function-field hypothesis is hidden in the definition; its empty-set value is documented. |
| `full_monodromy` | N, both fields, algebraic closedness and characteristic zero of k, both algebras, scalar tower, function-field hypothesis, strict gonality bound, W and ellipticity, nonconstant j, p, primality and both threshold inequalities are all present. The determinant uses the actual torsion-module structure. |
| `geometric_frey_mazur` | ∃M precedes k and K; both ellipticity and both nonconstant-j conditions, function-field tower, gonality bound, primality, strict threshold, actual additive isomorphism and every equivariance quantifier remain present. The conclusion is an isogeny over K. |

There are zero dropped binders. No binder repair was needed after the signatures were added. The supplied signatures of the three deleted auxiliary declarations likewise had no lost binders; their defect was their role in the acceptance test.

## Adversarial mathematics pass

Decimal entries below are rounded computations; exact equalities are indicated by integer, rational or symbolic values. Positive-dimensional elliptic curves, fields and compatible rational-subfield embeddings exclude the zero-ring, rank-zero and algebraic-extension junk cases from the headlines. These checks test statements and normalizations; they do not assert that the planned general proofs or supplier gaps have been formalized.

| Statement | Instances tried | Computed values on the relevant sides | Result | Change |
|---|---|---|---|---|
| Gonality definition and attainment | k(t), f=t; identity extension k/k | [k(t):k(t)]=1; all admissible finite degrees ≥1; for k/k the set is empty and sInf=0 | Proper positive minimum on function fields; documented total value otherwise | F01 definition and Checks |
| Gonality proper-model comparison | Genus one; hyperelliptic genus ≥2 | Degree-two map gives upper bound 2; a degree-one map would give genus 0 instead of 1 or ≥2 | Both gonalities equal 2 | F01 API, comparison gap |
| Gonality independence | k(t), generators t and 1/t | k(t)=k(1/t); both extension degrees 1 | Same minimum with different chosen rational subfield | F01 API |
| Threshold degeneracy | N=0, N=1 | Minimum gonality ≥1; neither 1<0 nor 1<1 | Both headlines vacuous at these bounds | F01–F02 prose |
| Frame-action convention | p=7, scalar 2 and determinant 3; two successive actions | 2²=4; squares={1,2,4}, 3 nonsquare; φh⁻¹g⁻¹=φ(gh)⁻¹ | Correct scalar/component and left-action conventions | None |
| Hyperbolic area and radius | Distance 1; radius 0.001 | a(1)=3.412276; a(0.001)/0.001²=3.141592915 | Curvature −1 normalization and half-length radius agree | None |
| Current convention | Potential −log(1−abs(z)²) at 0; logarithmic pole | 4πddᶜ potential=4 dxdy at 0; ddᶜlog abs(z)² has point mass 1 | Correct sign and 4π factor | None |
| Product degree/area convention | Diagonal, g_X=3; double parametrization | Degree 2·4=8, area 16π; doubled degree 16 and area 32π | Both sides scale by 2 | None |
| §0.1 frame components | p=7; scalar −I | Nonsquare frame change gives second component; −I gives unchanged projective frame and pairing square class 1 | Coarse/fine distinction retained | None |
| §0.2 quotient fibre and swaps | p=7 generic point; Ψ=id | Order PSL₂=7·48/2=168 per component presentation; id⁻¹=id | Correct orbit size and inversion | None |
| §0.3 CM lift normalization | j=1728, h_y=h_x and h_y=−h_x | Both characteristic polynomials t²+1; frame matrices g and −g differ since 2g≠0 | Opposite lift fails the repaired definition | F04 |
| §0.3 Lie character and disjointness | Same point and conjugate second point | Lie eigenvalues (i,i) versus (i,−i); ratios 1 versus −1 | Plus and minus disjoint | F04 |
| §0.3 modular tangent negative control | Both signs at j=1728 | Both product derivatives are (−1,−1) | Modular tangent action cannot define the signs | F04 |
| §0.3 generator, scalar, base change | Simultaneously negate lifts; order-three inverse | (i,i)→(−i,−i), (i,−i)→(−i,i); ζ₃⁻¹=ζ₃²=−1−ζ₃ | Equality/inequality invariant; order-three formula differs from order four | F04 API and route |
| §0.3 equal-j nonexample | s=[[0,1],[−1,0]], g=[[1,1],[0,1]] | gsg⁻¹=[[−1,2],[−1,1]], not ±s for p>3 | Equal j does not imply a common stabilizer | None |
| §0.4 SBC definition | p=7, same cusp line; distinct unipotent subgroups | Same-line cusp count (7−1)/2=3; common inertia order 7 versus 1 | Equality of inertia subgroups is essential | None |
| §0.5 branch support | All 16 type pairs at p=7 | Orders 1,2,3,7; mixed gcds=1; equal matching subgroups give 2,3,7 | No mixed branch stratum; equal type alone is insufficient | F08 table |
| §0.6 cyclic Hecke and degree | m=1,4,6,9; m=p | ψ=1,6,12,12; σ₁(4)=7, σ₁(9)=13; [p] on E[p]=0 | Cyclic filter and prime-to-p condition necessary | None |
| §1.1 triangle range | p=5,6,7 | 1/2+1/3+1/p=31/30,1,41/42 | Hyperbolic exactly for p>6 | None |
| §1.2 defining matrices | p=7,101; p=5 exclusion | det U=1; y₇=1.725082; y₁₀₁=32.123353; at p=5 discriminant −0.381966 | Correct real branch; small prime excluded | None |
| §1.2 matrix orders and limits | p=7 | U⁷=−I and (SU)³=−I to floating error <10⁻¹⁴; S²=−I exactly; b→1, c→1 | Projective orders p,3,2; cusp limit [[1,1],[0,1]] | None |
| §1.3 surviving witness | p=7,11,1009 | M₇=[[8,21],[35,92]], det=1, trace=100; M₁₁=[[23,33],[154,221]], det=1, trace=244; compact traces at 7,11 are 7.295897,45.764886; trace/p² at 1009=0.683877 versus 27/(4π²)=0.683918 | Witness survives filling and has correct leading growth | None |
| §1.4 cusped trace bound | U(7)L(−7) | Matrix [[−48,7],[−7,1]], trace −47=2−49; length 7.699389 versus 4log7=7.783641 | Lower trace congruence and factor two agree | None |
| §1.5 cusp separation | Triangle points iy₇ and i/y₇ | Distance 2log(1.725082)=1.090550; general marked expression 2log y_p=2log p−2logπ+o(1) | Leading separation is 2log p | None |
| §1.6 metric comparison | r=1, R=3 | tanh²(1/2)=0.213552; coth(3/2)=1.104791; upper quadratic-form factor 1 | Lower factor degenerates near cusp; correct length distortion | None |
| §1.7 radius and repeated visits | p=101; two deep visits | Leading radius 9.230241 and length 18.460482; each deep visit costs ≥(log101)/2=2.307560, so two cost ≥4.615121 | Repeated visits fit the length budget and each incurs bounded error | F08 computed Check |
| §1.8 q-disc direction | p=101, y=1/2,1,1/4 | Radii 0.969374,0.939686,0.984568; compact-disc comparison radii 4.163618,3.470713,4.856705 | Lower height enlarges disc; changes are approximately ±log2 | F08 computed Check |
| §2.1 matrix height | All-ones matrix and its square | h=1, Frobenius=2; h(M²)=2=2h(M)² | Entrywise rather than Frobenius norm | None |
| §2.2 displacement lift | M=[[2,1],[1,1]] | cosh distance=7/2; height 2≤√7=2.645751 | Height bound compatible with displacement | None |
| §2.3 cusp-lift ambiguity | M=I, replacement U^k | γ(U)^k·iy_p=iy_p, hence displacement 0 for all k | Existence of a small lift does not mean uniqueness of matrix | None |
| §2.4 double coset | g in cusp stabilizer H | g= g·I·1; cusp displacement 0; h(I)=1 | Both stabilizer ambiguities retained | None |
| §2.5 unique close lift | δ=0.1 versus 0.2 | 8δ=0.8<1 versus 1.6>1; nonzero multiple p has size ≥p | First bound forces entry 0 for large p; second does not | None |
| §2.6 lens | (D,R)=(3,2),(10,1),(1,5) | Midpoint radii 2.686084,1.657454,5.566211; bounds 2.688536,1.657454,5.693136 | Each midpoint radius ≤ stated bound | None |
| §2.7 cusp overlap | Centre itself a cusp; point outside all balls | Counts 1 and 0; at δ=0.01 bound exponent 24δ=0.24 | Consistent with uniform upper bound and zero case | None |
| §3.1 rank and determinant sign | Projective line of diagonal matrices over 𝔽₅; Q=diag(1,−1) | Four invertible projective points; det Q=det(−Q)=−1 | Unique invertible point forces higher rank; rescaling by −1 does not fix sign | None |
| §3.2 CM centralizers | Gaussian and Eisenstein integral units | Norm equations a²+b²=1 and a²−ab+b²=1 have 4 and 6 solutions; reflection determinant −1 | Positive determinant normalizer has centralizer branch; equal-frame signs agree | Recomputed after F04 |
| §3.3 corrected repulsion | Gaussian endomorphism 1+i; conjugate second factor | Degree 1²+1²=2; Lie eigenvalue pair (i,i)→(i,−i) | Heegner application transports to conjugate locus | Recomputed after F04 |
| §3.4 conjugate-locus definition | m=1, tangent vectors at fixed point | Span over ℝ of (1,1),(i,−i); (i,i) is not in that span | No complex tangent line; ordinary diagonal intersection still possible | F08 duplicate deleted |
| §3.5 CM sign exclusion | E=ℂ/ℤ[i], f=[1+i], p=7 | f[i]=[i]f; opposite choice differs by [2i] of degree 4, invertible on E[7] | Ordinary prime-to-p Hecke has no CM⁻ point | F04 and F08 Check |
| §3.6 two versus three prescribed images | 0,∞ and then 1 in P¹(𝔽₇) | Six maps t↦at fix 0,∞; one fixes all three | Correct reconstruction distinction | F08 Check |
| §3.6 signed boundary example | p=13, a=5 | a²=25≡−1; v/u≡−1 gives min u·v=12=p−1 for 1≤u,v≤12 | Ordinary small-index conclusion fails; signed one retained | None |
| §4.1 big diagonals and tubes | Matched coordinate distances 3r/2 | Midpoint distances 3r/4<r; h⁻¹g fixes a pair in Δ_g∩Δ_h | Threshold is 2r and intersection has stabilizer support | None |
| §4.2 logarithmic unit count | M=[[2,1],[1,1]], p=101, height≤101 | Larger eigenvalue 2.618034, log 0.962424; powers −5 through 5 have height≤89, next height 233 | Eleven powers versus polynomially many unipotents; repeated-root case excluded | None |
| §4.3 cusp alternative | p=101, ξ=((c,c),(c,c)) | 101 distinct Δ_g through ξ; distance to SBC×SBC=0; log101=4.615121 | Computed realization of alternative (a), without assigning the unknown uniform C | F08 Check |
| §4.4 rotation normalization | d=1,p=7,k=1; centre d=0 | sinh(D/2)=0.509901, D=0.980099; at centre all 7 rotations fix it | Correct angle and separate d=0 bound | None |
| §5.1 weighted degree and multiplicity | Diagonal g_X=3; degree-two parametrization | Degree 8→16; local pushforward multiplicity 1→2; constant coordinate degree 0 | All weights retained | None |
| §5.2 Heegner multiplicity costs | d=4; zero cycle | Sum ψ(1..3)=8≤14<64; both multiplicity and degree zero on zero cycle | Cubic upper cost sufficient; sign remains CM⁺ | Recomputed after F04 |
| §5.3 anti-Heegner volume ratio | ε=0.1, p=101,1009, R=log p | p sinh ε/sinh R=0.200353,0.200334 | Required p⁻¹ gain; reciprocal would grow | Recomputed after F04 |
| §5.4 p-weighted bicusp decay | δ₃=0.01, δ₁=0.001 | −1−2δ₃+3δ₁=−1.017; after multiplication by p exponent −0.017 | Genuine decay absorbs order-p inertia | None |
| §5.5 cusped measure definition | q=t²; constant cusp coordinate | Disc masses at ε=0.01 and 10⁻⁶: 1.364376 and 0.454792; atom 0; constant coordinate mass 0 | Integrable zero-atom extension and zero constant term agree | None |
| §5.6 measure error | p=7,11,101 | (g,s)=(3,24),(26,60),(40376,5100); area ratios 7,2.2,1.063158 equal p/(p−6) | Same componentwise ratio; relative error 6/(p−6) | None |
| §5.7 Hecke metric comparison | Branches z↦2z, z↦z/2 | (2dy)²/(2y)²=dy²/y² and similarly for 1/2; compact metric only bounded by comparisons | Exact cusped isometry, no compact isometry inferred | None |
| §5.8 big-diagonal negative control | Ample curve in T₁×T₁, p=7,101 | Unrestricted multiplicity/degree ratios 21 and 3.189474, tending to 3 | Non-Hecke projection hypothesis necessary | None |
| §6.1 symmetric-power quotient | n=2, distinct versus repeated points | Ordered fibre sizes 2 and 1; both cycles have total length 2 | Scheme length and stabilizer retained | None |
| §6.2 extension and image normalization | t↦t^q on Gₘ→P¹; nodal rational image | Unique extension t^q sends 0→0,∞→∞; image normalization P¹ has gonality 1 for q≥1 | Generic degree need not be 1; normalization genus is 0 | F05 contract connected |
| §6.3 pencil cycle map | Hyperelliptic pencil; n=1 | Generic double fibre gives two distinct points; each of 2g+2 branch fibres gives 2[f(b)]; n=1 gives original map | Multiplicity 2 retained | F08 duplicate deleted |
| §6.4 normalized wreath pullback | n=1; branch z↦z² | W=G; degree-two branch normalizes to disc with inertia order 2 and quotient parameter z² | Permutation factor vanishes, ramification does not | F05 normalization supplier |
| §6.5 degree sums | n=1,2,3 | Pair sums 0,D,2D, matching (n−1)D | Correct combinatorial factor | None |
| §6.5 excluded slots | p=7, C=T₁×{a}, a off T₁ | Total degree 8; slot degrees 8,0; pair degree 8 | First slot Hecke, second constant: invalid input to decay theorem | F08 Check |
| §7.1 wreath support | n=2, transposition with (g,g⁻¹) | Fixed equations a₁=ga₂ and a₂=g⁻¹a₁ are equivalent | Exactly big diagonal support | None |
| §7.2 local inertia exponent | Two order-7 slots, n=2 | lcm(7,7)=7; ambient cyclic exponent divides 6·2!·7=84, not requiring 7² | One p factor sufficient | None |
| §7.3 ramification charge | Multiplicity model mult=D/p² versus D/√p | p·mult=D/p versus √p D | First decays, second does not; unweighted smallness insufficient | None |
| §7.4 Hurwitz signs and degree | z↦z² on P¹; n=1, two degree-d projections | −2=2(−2)+2; D≤2dK and lower bound dK≥D/2 | Negative term and 2n denominator correct | None |
| §7.5 gonality rigidity boundary | N=1; normalization of H₁ | No positive gonality <1; H₁ maps to itself | Vacuous boundary and positive Hecke example consistent | None |
| §8.1 spectral-gonality coefficient | D=1 singular quotient versus round compactification | (21/100)(π/3)/(8π)=7/800; replacing area by 4π gives 21/200=12·7/800 | Wrong metric changes the answer by factor 12 | F08 Checks |
| §8.2 SL/PSL subgroup bound | p=2,3; whole group at p=5 | Orders SL₂: 6,24; subgroups of orders 3,8 give indices 2,3; PSL orders 6,12 give indices 2,3; whole group index 1<5 | Bound valid for small primes; properness essential | F03 and F07 |
| §8.2 coset-action proof | d<p; p=3,d=2 | 3 does not divide 2!=2; U(0)=I has order 1, U(1) has order 3; every transvection image in S₂ is identity | A proper transitive coset action cannot be trivial | F07 pinned-input route; identity transvection covered |
| §8.3 monodromy threshold | N=2, p=227 versus 229 | 7p=1589 versus 1603; 800N=1600; 7·229/800=2.00375>2 | Strict integer threshold matches real form | F02 and F07 |
| §8.4 character argument | p=5,a=2; nonsurjective C₄ example | a²=4≠1; A diag(2,3)=[[0,3],[2,0]]=−diag(2,3)A | Perfectness applies to full image; nonsurjective self-twist exists | F03 and F07 |
| §8.4 kernel/invertibility controls | Sign on kernel C₂; A=0 | Kernel equation A=−A implies 2A=0, impossible invertible in 𝔽₅; zero A gives 0=0 for every χ | Correct dependence on invertibility; χ² hypothesis unnecessary | F03 |
| §9.1 classifying map and extension | Ψ=[a], a=1,−1 | Both projective classes [Ψ]=[id]; image H₁; generic j-coordinate unchanged | Scalars forgotten only by classifying map; proper extension uses named gap | F05 |
| §9.2 Hom-lattice degree scaling | h=2f and h=−f; zero multiple | Degrees 4deg f, deg f and 0; cyclic kernel cannot contain E[2] of order 4 | Primitive cyclic isogeny has multiplier ±1 | F06 pinned input |
| §9.3 Hecke lift | E′=E/H with cyclic order-m H, p∤m | f=π_H has degree m, scalar λ=1; at m=1 identity degree 1 | Scalar-compatible lift has intended domain and target | Recomputed with native isogeny carrier |
| §9.4 actual torsion descent | p=5, σf=−f; p=2 boundary | Equality on torsion gives 2f[p]=0; at p=5 multiplication by 2 invertible, contradiction; at p=2 negative sign is invisible | Oddness essential; Galois-fixed descent criterion applies | F06 |
| §9.5 uniform constants and spreading | k larger than ℂ; finite model field ℚ(t₁,…,t_r) | trdeg model=r<∞ versus no bound on cardinality of k; retained pencil degree n<N | Only model field is embedded; gonality upper bound persists | None |
| §9.6 full_monodromy | Determinant-one identity; constant curve negative control | Identity determinant 1 induced by id; constant curve image has size 1, while [[1,1],[0,1]]≠I has determinant 1 | Actual objects and nonconstant-j hypothesis distinguish full image | F02 headline and Check |
| §9.7 original-base isogeny | Identity map over U; quadratic twist | Generic identity and its unique extension both degree 1; nontrivial twist changes Galois sign −1 | Isogeny extends on original good-reduction open, projective torsion alone insufficient | None |
| §9.8 geometric_frey_mazur | Legendre E over ℂ(t), E′=E; zero torsion point | Gonality 1<2; j has pole order 2 at t=0 so nonconstant; identity isogeny degree 1; equivariance at zero is 0=0 | Native headline agrees with field theorem and actual torsion condition | F01 |
| §9.8 equivariance nonvacuity | Arbitrary P, Q=σ(P) | pσ(P)=σ(pP)=0, so Q exists in torsion; implication becomes e(σP)=σ(eP) | No missing-existence loophole in graph formulation | F01 signature |
| §10.1 genus threshold | g=0,N=1; g=1,N=2 | gon≤g+1=1<2 and 2<3 | N+1 enlargement supplies strict bound | None |
| §10.2 low-genus images | Rational nodal curve; smooth genus-one curve | Normalization gonalities 1 and 2, both <3 | M₃ sufficient; arithmetic genus not substituted | F05 normalization ownership |
| §10.3 cyclic resolutions | 1/3(1,1), 1/3(1,2), 1/7(1,6), 1/2(1,1) | Continued fractions [3], [2,2], [2,2,2,2,2,2], [2] | At j=1728 both CM signs give the same 1/2 chart; Lie distinction does not change this | F04 recomputation; F05 genus gap |
| §10.4 birational rational curves | Exceptional component; strict transform of rational image | Image dimensions 0 and 1; normalization genera 0 and 0 | Covers both known kinds with no third image type | F05 gap connected |
| §10.5 contraction update | C·E=1, C²=−2; E²=−1 | New C²=−2+1²=−1; a 1/2 exceptional curve has self-intersection −2 | Subsequent contraction centre need not initially be a −1 curve | None |
| Worked example: witness words | Integral p=7 and p=11 branches | Words give [[8,21],[35,92]] and [[23,33],[154,221]]; determinants 1 | Both residue classes retained | None |
| Worked example: signed cusp reconstruction | p=13, reflection diag(1,−1) | Determinant −1; minimum ordinary boundary index 12 | Conjugate branch remains necessary | None |
| Worked example: overlap exponents | A=1,B=2 as exponent arithmetic, δ>0 | A−2B=−3; p^((A−2B)δ)=p^(−3δ) | Enlargement before δ gives negative exponent; no numerical theorem constants assigned | None |
| Worked example: relative point-ball formulas | t=1,3 | h(s_t)=0.240229,1.710880=2log cosh(t/2); h′=0.271540,4.533831=sinh²(t/2); ds/dt=1.701836,0.199643 | Green/coarea displayed identities match normalized area | None |
| Worked example: forbidden stronger monotonicity | Line (z,z/2), q=1/4,3/4 | V/a=1.2 then 1.076923 | Ratio decreases, so fixed constant and linear factor cannot be deleted | None |
| Worked example: zero/weighted point balls | Zero cycle; coordinate fibre with weight 2 | V=0 at both radii; fibre V=2a(t) | Zero case and branch weights preserved | None |
| Worked example: pencil-to-Hurwitz bridge | n=2 with a double fibre | Length 2 before and after image cycle; pair degree D; lower Hurwitz bound D/4 | No lost multiplicity or factor in final contradiction | None |
| Worked example: actual descent and finite base change | f=id, Ψ=−id; nontrivial quadratic twist | f[p]=−Ψ and σf=f; twist gives σf=−f | Scalar-compatible descent independent of auxiliary full-image argument | F03 terminology aligned |

## Validation outcomes

- Final required elaboration from the supplied content checkout: `lake env lean` on `packages/GeometricFreyMazur/Suggested.lean` exited 0. Exactly two warnings: `declaration uses sorry` at lines 54 and 75. The required Tau Ceti Basic object file was present; no targeted build was necessary. No Lean process remains running.
- The final scratch file containing all three `#check @` commands exited 0 with the same two expected warnings; signature comparison is recorded above.
- During editing, an invocation from the board directory failed because that directory has no default toolchain; it was rerun from the required content checkout. The first content elaboration exposed doc-comment placement and the unopened Weierstrass notation scope. Both syntax errors were fixed before the successful final elaboration. No toolchain or library file was changed.
- Dependency command with `--depcheck`, `--name GeometricFreyMazur`, the supplied order and `--movable` exited 0. Exact output:

  ```text
  depcheck: 49 roadmaps, 561 edges, 0 problem(s)
  ```

  There is no UPWARD, CYCLE or moved line.
- Verified the plan outside its top-level `gaps` list is structurally identical to its original value; only the needs text of two existing gaps changed. All ten slugs still match their README contracts. The curve-extension gap has seven explicit consumers plus its contract.
- Acceptance file: 93 lines, exactly `import Mathlib` and the used native Tau Ceti Basic import, one module docstring, one real definition, two headline theorems, no `set_option`, sorry-data, examples or auxiliary declarations. Every retained name is documented in the README; every deleted auxiliary name is absent from the README and acceptance file.
- `git diff --check` exited 0 with no output. No gate failures were supplied in the brief; the eight review findings were the repair worklist.

## Maintainer consequences

No supplier, merge-order file, external roadmap, tooling or pull-request text was edited. The two existing AlgebraicCurves gaps remain supplier obligations: the gonality gap now makes the numerical/proper-model comparison explicit, and the curve-extension gap excludes the construction already owned by SchemeAndStackFoundations §4.13. Their slugs did not change.

Deleted acceptance names: `sl2_proper_subgroup_index`, `psl2_proper_subgroup_index`, `no_quadratic_self_twist`. New names: `gonality`, `full_monodromy`, `geometric_frey_mazur`, all in `TauCetiRoadmap.GeometricFreyMazur`. A search on main and indexed open heads found no external consumer of the deleted names. The earlier package report records the historical signatures and was left untouched. The design plan's non-gap nodes are also untouched as required.

The CM repair changes the definition in §0.3 and its sign exclusion in §3.5; the same normalized lifts were recomputed for §§0.5, 3.2–3.4, 5.2–5.3 and the local resolution types of §10.3. The analytic multiplicity proofs and general curve comparisons remain planned mathematical work behind their named inputs. Elaboration is an acceptance-signature check, not an independent mathematical acceptance or a proof of the admitted theorems.
