# Review of RelativeFarguesFontaine (pull request #1209 at 956b64b)

**Verdict:** needs changes

## R01 (P2) — Import the existing residue-extension construction

**Location:** `TauCetiRoadmap/RelativeFarguesFontaine/README.md:673`, also `:131`: “For any field `K/𝔽_q`, construct a flat, separated `π`-adically complete `O_E`-algebra with marked residue `K`.”

**Claim:** The underlying existence subtarget is already supplied by DeformationAndDerivedPatchingAlgebra §1.10, “Coefficient choices and residue extension”. That roadmap constructs a faithfully flat local extension with specified residue extension, complete target, and equality of extended maximal ideals, for every Noetherian local source. Taking the source to be `O_E` gives exactly the coefficient lift required here. The independent algebra-obstruction construction in §0.23 duplicates this input. The relative Frobenius lift and comparison refinements are distinct and can remain.

**Witness:** `TauCetiRoadmap/DeformationAndDerivedPatchingAlgebra/README.md:248` constructs this extension for every `K/k`. With `R=O_E`, its equality `m_R R′=m_R′` becomes `m_R′=(π)`; completeness and flatness give the claimed marked lift.

**Repair:** Add DeformationAndDerivedPatchingAlgebra §1.10 to Scope and ownership, Exact supplier contracts and §0.23's Needs. Import its residue-extension existence theorem and retain the cotangent-complex work for the additional coefficient-linear Frobenius lift and residue-compatible comparisons. The combined Lean headline may remain, with its existence component supplied by that theorem. Do not construct the same flat complete residue extension a second time.

**Repair test:** For `O_E=𝔽_q[[π]]` and `K=𝔽_q(T)`, the supplier gives a lift represented by `K[[π]]`: its residue is `K`, its maximal ideal is `(π)`, and it is flat and π-complete. The retained refinement sends `T↦T^q` and fixes π. The choices `T` and `T+π` still differ and reduce to the same residue, so no uniqueness is introduced. For a ramified mixed-characteristic `O_E`, the supplier equality still uses `(π)`, not `(p)`. This supplier precedes RelativeFarguesFontaine in the supplied order (positions 58 and 111); its inspected text has no reverse dependency on this roadmap.

### Reconciliation of the previous review

All four findings of the review at `95b4855` were checked before the full pass. None was marked “not actionable in this package” in the supplied review materials. R01 above is a newly located ownership overlap, not a re-raised settled finding.

| Previous finding | Present passage and verification | Disposition |
|---|---|---|
| R01, Frobenius normalization and zero iterate | `README.md:1002`: “For `d≥1`, the properly discontinuous `φ_p^d` action scales the exponent by `p^d`”; the next sentence uses `q^d` for `φ_E^d`. §1.5 also retains positive iteration. At p=2, f=d=2, the values are 4 and 16; at p=3 they are 9 and 81. The excluded identity action has stabilizer ℤ and noncompact exponent quotient. | Repaired. |
| R02, wrong boundary endpoint | `README.md:2451`: “Use its localization at the characteristic-`p` endpoint `x_{C♭}`, where `p=0` and `[ϖ]≠0`”. SW Definition 12.3.1 and Corollary 12.4.1 give precisely this endpoint. The unit stalk completes to W(C♭); the crystalline endpoint has no stalk on this domain. | Repaired. |
| R03, duplicate one-leg reconstruction | `README.md:2475`: “Consume `BKF.reconstruct_pair`, `BKF.reconstruct_morphism`, `BKF.reconstruct_tensor` and `BKF.reconstruct_modification` from AInfCohomology §AI.2.3.” These names occur in the supplier's API. The retained target compares its descended curve modification, with T retained. Ξ=ξB⁺ gives O(−1); the zero pair gives zero. | Repaired. |
| R04, obsolete VB locators | `README.md:129`: “VectorBundlesAndIsocrystals Layer 5, ‘Effective divisors and projective sections’”. The titled Layer 0–6 targets now resolve in the supplier; the former VB−1/VB1–VB4 labels are absent. Repeated divisors still have length 2, and the geometric-base qualification is retained. | Repaired. |

## Verified sound

Read the complete README and all 25 Lean declarations. There is one P2 ownership finding; no mathematical counterexample to the retained statements was established. The tables below contain 113 rows: 88 numbered targets, 14 Lean theorems, and 11 native definitions. They record computed instances, not proofs of the general geometric theorems. The full review included unchanged passages and the 306-line repair, all Needs lines, and the README conventions and Checks. Main-branch AlgebraicVectorBundles and RigidAnalyticGeometry were read for form and the supplier interfaces; the stricter form specified in the review brief was used.

The supplied gate at `956b64b` passes, with every counter zero. The independently run dependency check returned:

```text
depcheck: 205 roadmaps, 1461 edges, 0 problem(s)
```

The worker's complete gate output was:

```text
gate RelativeFarguesFontaine: set_option=0 blob=0 latex=0 tex=0 prnum=0 sorry-data=0 sorry-examples=0 residue=0 private-paths=0 imports=0 mathlib-subimports=0 no-import-mathlib=0 lean-lines=0 forbidden=0 dropped=0 readme-ids-missing=0 empty-sections=0 round-labels=0 long-fences=0 layer-ids=0 target-ids=0 depcheck=0 metadata=0 stray-files=0 dirty=0 outside-folder=0 source-material=0 build=0 OK
```

No UPWARD, CYCLE or moved line appeared. The diff outside this roadmap folder was empty, and the worktree was clean. No declared supplier gaps were present. No route-specific prime restriction, computational algorithm, copied source passage, sorry'd data or `set_option` was found. The roadmap's relative/integral scope is distinct from the existing absolute and generic foundations; R01 concerns one imported subtarget, so it is repairable without replacing the roadmap. The PR was not changed.

Independent `lake env lean` elaboration succeeded with precisely 14 sorry warnings. A scratch copy tested all 14 theorem holes with `simp`, `rfl` and `infer_instance`: all 14 still required sorry. Object searches at both pins found no library lemma giving these general Dwork, Cohen or exact-square/glueing-pair statements in one `exact`. The eleven real definitions support the retained statements. No padding finding is raised.

A fresh scratch `#check @name` elaboration covered all 25 declarations. The Cohen statements retain completeness and both residue/uniformizer hypotheses through `include`; the unnamed hypothesis arrows in their elaborated types are not lost binders. `ExactSquare` needs only its displayed structure maps: its kernel/image equivalence forces their two composites to agree. `PatchingData` only bundles the two modules and the overlap equivalence; the R-scalar towers are present in the equalizer, comparison maps and theorems that need them. The four automated binder alerts therefore do not establish defects. No signature was changed. Mathlib's DVR class excludes fields; the finite residue-field hypothesis forces q≥2 in Dwork, while the standalone finite-sum definition legitimately allows q=0 or 1.

### Seeded source verification

All 15 sampled targets were checked against legally fetched source-service texts at the displayed locators, including the supporting proof passages. No README locator was explicitly labelled unverified. Every cited work was obtained through the sources service; no sampled source was inaccessible. FF (2017) and its corrected author edition were distinguished, and printed pagination was used. The historical FS edition caveat is under Not verifiable. An extension assembled from several results is identified as such below, rather than attributed verbatim to one source.

| Target | Locator opened | Hypotheses and support checked |
|---|---|---|
| 0.1 Ramified ghost evaluation | ff (2017) lines 2173–2195, Lemma 1.2.1, p.53 | Finite ghost polynomial over arbitrary O_E-algebras in the characteristic-zero coefficient scope. Regularity is needed for Dwork injectivity, not for evaluating the polynomial. |
| 0.21 Whole analytic A-inf locus | kedlaya-ainf lines 286–348, Hypothesis 3.4, Definition 3.5 and Proposition 3.6, pp.7–8 | Perfect Tate pair, weak Witt topology and two boundary charts. Underlying ring isomorphisms of primed charts are not silently made homeomorphisms. D(p)∪D([ϖ]) retains both endpoints. |
| 1.12 Berkovich deformation | kl-i lines 4962–5009, Definition 5.4.3, Theorem 5.4.4, Proposition 5.4.6, pp.126–127 | H endpoints and max law, p-Frobenius exponent, positive iterate, compact Hausdorff quotient. The all-E statement is transported through §1.16 and uses q^d, not p^d. |
| 1.17 Local generation | kl-i lines 4565–4573, Lemma 5.1.7, p.116 | Finite projective annular module and finite sections generating over the completed residue annulus; conclusion is generation after a rational base neighbourhood. |
| 2.1 Relative curve | fs lines 2067–2088, II.1.15–II.1.16, pp.54–55 | Generic period domain, coefficient-q Frobenius quotient and compact fundamental interval. The integral endpoint is not part of this quotient domain. |
| 2.2 Period diamonds/base map | fs lines 2091–2102, II.1.17, p.55 | Diamond presentation and qcqs continuous map on underlying spaces. It does not provide an additive Teichmüller structural ring map. |
| 3.2 Integral Cartier untilts | fs lines 1880–1913, proof of II.1.4 and remark, p.50 | Marked theta kernel, regular primitive generator and lower bound after the stated norm normalization. The finite-type maximum-modulus step is separated from passage to root charts. |
| 4.1 Classical integral points | fs lines 1918–1933, Example II.1.6 and Definition/Proposition II.1.7, p.51 | Classical marked untilts, including the equal-characteristic origin. Positive-radius Gauss points are not evaluation points. |
| 4.2 Tilting the period disc | fs lines 1934–1946, II.1.8, p.51 | Disc map, surjectivity and classical inverse-image description with equation π−[a], including a=0. |
| 4.10 Generic divisor de Rham rings | fs lines 7356–7362, VI.1, p.192 | Completion of the ambient structure sheaf at the Cartier ideal, then inversion of that ideal; the resulting sheaves apply to the three stated period spaces. No multileg DVR assertion. |
| 4.12 Geometric untilt DVR | scholze-periods lines 1607–1641, Lemma 6.3/Corollary 6.4, pp.35–36; sw lines 4181–4186, Definition 12.4.3, p.105; fs lines 7356–7362 | In the p-typical characteristic-zero perfectoid setting, principal regular theta kernel and completed residue C; at a geometric untilt the completed local ring is a DVR. The all-E result uses the intrinsic completion and coefficient comparisons of §§3.8,4.8–4.9. |
| 4.13 Completion/coefficient change | fs lines 7356–7362, VI.1, p.192; scholze-periods lines 1607–1641, pp.35–36 | V-sheaf and marked completion comparison. Unit independence and allowed coefficient base changes are assembled through §§3.8,4.8–4.10; no unrestricted tensor/inverse-limit interchange is attributed to these passages. |
| 6.2 Exact-square effectivity | kl-i lines 642–769, Definition 1.3.7, Lemmas 1.3.8–1.3.9, pp.17–19 | Universal first-comparison surjectivity and maximal-ideal coverage are both retained. Ring exactness alone is not used as a projective descent theorem. |
| 6.10 Several legs | fs lines 7374–7404, VI.1.6–VI.1.7, p.193; sw lines 4218–4235, proof of 12.4.6, pp.106–107; ff (2017) lines 8437–8464, Proposition 5.3.1, pp.208–209 | Multi-leg modification and local patching model. Coincident ideals and intermediate chains are retained. Repeated-ideal completion and pole-bound conversion are additional algebraic consequences, not a claim that these sources identify a chain with its composite. |
| 6.14a Normalized tail | sw lines 4078–4147, Definition 12.3.1/Remark 12.3.2 and Theorem 12.3.4/Proposition 12.3.5, pp.103–104; lines 4155–4177, Corollary 12.4.1, p.105 | C algebraically closed perfectoid of characteristic zero, E=Q_p, leg φ⁻¹(x_C), forward orbit n≥0 and normalization at x_(C♭). The crystalline endpoint is excluded. |

The algebraic headlines were also compared with Stacks §15.92: stacks lines 11719–11745 give the ring power-torsion criterion; lines 11876–11923 give arbitrary glueable-module effectivity and recovery; lines 11940–11985 give flatness and finite-projectivity detection. The latter two apply to an arbitrary module, without an initial glueability hypothesis, as the Lean signatures correctly state. DerivedModuleAlgebra §0.25 supplies the square-zero obstruction groups used for the additional Cohen comparisons. The independent underlying existence construction is the ownership issue R01.

### Headline coverage

The README's endpoints are: Dwork and twisted-coordinate/Lubin–Tate comparisons (§§0.2,0.11–0.14); integral root-chart perfectoidness, sheafiness and diamond comparison (§§0.17–0.20); nonperfect Cohen lifting (§0.23); relative period sheaves, acyclicity, finite-étale comparison and global annular sections (§1); relative curve/diamond comparisons (§2); integral Cartier, symmetric-divisor and completion comparisons (§3); marked-untilt and de Rham comparisons (§4); eigenvector/twist-section comparisons (§5); exact-square and general Beauville–Laszlo patching (§§6.2–6.5); modifications, meromorphic gluing, tensor/base-change compatibility (§§6.7–6.10); B-pair cohomology and comparison (§§6.13–6.14); normalized one-leg comparison and compatibility with supplied lattice realization (§§6.14a–6.15); punctured Witt algebraicity (§6.16); and G-bundle tensor dictionaries, modifications, faithful-representation tests and descent (§7).

All statable algebraic endpoints are represented by the 14 native Lean theorems. The module docstring identifies the other endpoints and their missing relative ringed curves, divisor/orbit sheaves, analytic bundles, shtukas and torsor categories. The pinned topological `spaX` and algebraic `BDeRhamPlus` do not fill those gaps. No free predicate or ad hoc geometric stand-in is used.

### Adversarial calculations

In the local calculations, B=k[[t]], K=k((t)), and t is regular; these test local algebra and conventions without claiming that every such model is a global period curve. F denotes a nontrivially valued perfect characteristic-p field. “Pass” refers to the displayed instances; “change” points to the ownership finding where applicable. Zero modules, empty divisors and unit parameters are included where their carriers permit them; a field is not silently treated as a nonfield DVR.

| Statement | Instances tried | Computed values on the two sides / wrong model | Result; change |
|---|---|---|---|
| 0.1 ghost evaluation | π=q=2, x=(1,2,3), n=0,1,2 | Finite sum and supplied polynomial both give 1,5,21. Only i≤n occur, so natural subtraction never wraps. | Pass. |
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
| 0.23 Cohen lifts | K=F_q(T), equal characteristic; K=F_q | K[[π]]/(π)=K; dT≠0; T and T+π reduce to T. Ext¹ and Ext² of the degree-zero K-vector space Ω¹ vanish, but Hom(Ω¹,K) contains the nonzero derivative. Perfect base gives O_E. | Mathematics passes; import existence by R01, retain noncanonical refinements. |
| 1.1 generic open | Equal-characteristic disc | Removing V(π) deletes exactly its origin; a nonzero small π remains. | Pass. |
| 1.2 radii | \|[ϖ]\|=1/4, \|π\|=1/2, then ϖ³ | Radius log(1/4)/log(1/2)=2; new radius 6. At π=0 the real quotient formula is not applicable. | Pass. |
| 1.3 λ and μ | Teichmüller unit; primitive p−[ϖ] killed by theta | μλ returns norm 1 on the unit. At \|ϖ\|=p⁻¹ the quotient seminorm of p−[ϖ] is 0, while λμ gives p⁻¹>0. | Pass; excludes λμ=id everywhere. |
| 1.4 Robba growth | Single Teichmüller coefficient x; zero; \|x\|>1 | Norm is \|x\|^r, zero norm is 0; (\|x\|^r)^(1/r)=\|x\|>1 excludes the plus condition. | Pass. |
| 1.5 growth/units/invariants | d=0; d=1, connected and disconnected F | At d=0, Σpⁿ[ϖ^(−n²)] is in W(F) but its norm terms p^(rn²−n) diverge for all r>0. At d=1 over a geometric F, constants are Q_p; over F×F they are Q_p×Q_p, not diagonal Q_p. | Pass; d=0 explicitly excluded. |
| 1.6 splitting/intersections | x=pⁿ; nested coefficient bounds | Splitting y=x,z=0 gives y+z=pⁿ and norms p⁻ⁿ,0. The overlap of bounds ≤a and ≤b is ≤min(a,b). | Pass. |
| 1.7 presheaves | Empty open and identity restriction | Empty sections form the zero ring; id sends x to x; a zero restriction would send 1 to 0 on a nonzero open. | Pass. |
| 1.8 sheaves/acyclicity | Two identical rational charts, rank one | Difference (a,b)↦a−b has kernel diagonal R and cokernel 0. The theorem names nine acyclic variants and three Kiehl cases, not all twelve as acyclic. | Pass. |
| 1.9 relatively perfectoid rings | Adjoined p-power roots | Each root variable has a pth root at the next level; ordinary T has none in the unperfected reduction. | Pass; no noetherian inference. |
| 1.10 interval/base projection | Singleton interval; F₂ coefficients | Both endpoint norms agree on the singleton. Teichmüller gives [1]+[1]=2 in Z₂ but [1+1]=0, excluding an additive base map. | Pass. |
| 1.11 interval descent | [1,3]=[1,2]∪[2,3] | A compatible pair restricts to the same value at 2; constants (1,1) glue to 1, while (1,0) do not glue. | Pass. |
| 1.12 deformation/quotient | u=.2,v=.7; p=2,f=d=2; d=0 interpretation | Semigroup endpoint is max(.2,.7)=.7. At p=2 the φ_p² and φ_E² values are 4 and 16; at p=3 they are 9 and 81. The excluded identity action gives R_{>0}, not S¹. | Pass; positive-iterate normalization corrected. |
| 1.13 surjectivity | R→R identity; product projection | A seminorm lifts to itself for identity; a chosen component seminorm on R lifts to the same component of R×R. | Pass. |
| 1.14 finite-étale periods | Split rank two; quotient by z^m, m=1,2 | Period extension gives B×B on both sides. Local regular quotient lengths are 1 and 2; shrinking below a permitted radius is needed before defining the comparison arrow. | Pass. |
| 1.15 Stein exhaustion | Compatible constant 1; zero bundle | Limit of restrictions of 1 is 1; zero has H⁰=H¹=0. Dense restrictions are not asserted to be algebraically surjective. | Pass. |
| 1.16 coefficients/anchor | ϖ→ϖ³; residue extension degree two | Radius r→3r; residue-compatible Frobenius becomes φ_p², not φ_p. | Pass; the φ_p/φ_E distinction is explicit. |
| 1.17 local generation | Zero module; trivial line | Required generating sets have sizes 0 and 1; empty sections do not generate the nonzero line. | Pass. |
| 1.18 global generation | Constant section 1 on every interval; zero | Its restrictions generate each unit module and its global coefficient is 1. Zero global sections generate exactly the zero bundle. | Pass. |
| 2.1 quotient curve | Radii r and qr; integral endpoint | r and qr have one orbit; π=0 is excluded from the quotient's generic covering domain. | Pass for the standing single φ_E. |
| 2.2 diamond projection | Identity base; Frobenius-related representatives | Both representatives project to the same base point after equivariance; no additive Teichmüller ring map is required. | Pass. |
| 2.3 functoriality | Identity and two successive coefficient maps | Image of 1 is 1 in both composites; id pulls the same annulus and divisor back to themselves. | Pass. |
| 2.4 étale curves | Split degree-two base cover | Two copies of S give two copies of X_S; rank-two finite étale algebra is O_X×O_X. | Pass. |
| 2.5 LT tower | Multiplicative group, p=3, levels 1,2 | Cyclotomic degrees are 2 and 6; a acts as ζ↦ζ^a, and ab gives ζ^(ab). Zero is not primitive torsion. | Pass. |
| 3.1 primitive equations | Special ξ=π; generic ξ=π−a[ϖ] | Theta gives 0 in both; in the special quotient π=0 but [ϖ] remains nonzero. | Pass. |
| 3.2 Cartier lower bound | Perfected disc, q=2,n=2; a=1,ξ,0 | Supremum norm of ξ is 1/4. LHS and q⁻ⁿ times the norm of a are respectively (1/4,1/4), (1/16,1/16), (0,0). Unit changes preserve the ideal, with the stated normalized chart retained. | Pass. |
| 3.3 line descent | Nontrivial unit transition u on an overlap | Generators ξ and uξ generate the same invertible ideal; requiring the generators to be equal would incorrectly force u=1. | Pass. |
| 3.4 symmetric divisors | d=0,1,2; repeated (D,D) | Empty tuple gives one empty divisor; ξ² has length 2. Orbit sheaf has only identity automorphisms, unlike the quotient stack with Σ₂ stabilizer. | Pass. |
| 3.5 product equations | Empty product; two colliding legs | Empty product=1 and quotient ring=0; ξ·ξ=ξ² and length B/(ξ²)=2, not 1. | Pass. |
| 3.6 degree criterion | Empty, simple, double divisor | Geometric total lengths are 0,1,2 on both tuple and Cartier sides. ξ² does not acquire two distinct support points. | Pass. |
| 3.7 thickening descent | k[t]/t² and a split rank-two bundle | Nilpotent t has t²=0 but t≠0; the descended free module still has rank 2 over the thickening, not merely over k. | Pass. |
| 3.8 ambient completion | (t) versus (t²); compatible free rank-two tower | Both inverse limits are k[[t]], but first quotients have lengths 1 and 2. Modules give B² and endomorphisms M₂(B); special ξ=π retains integral coefficients. | Pass; supplied effectivity correctly consumed. |
| 3.9 addition/disjointness | Comaximal ideals (t),(t−1); collision (t),(t) | CRT gives two factors for the first; collision gives B/t², a local ring with nilpotent t, not k×k. | Pass. |
| 4.1 classical points | Evaluation at 0,a; Gauss point | Kernels are (X),(X−a),0 respectively; positive-radius Gauss is not evaluation at a. | Pass. |
| 4.2 period-disc tilting | a=0 and a≠0 | Equations are π and π−[a]; origin maps to the special untilt, not to an absent generic point. | Pass. |
| 4.3 Gauss fibre | u=T+δ, \|δ\|<ρ | ρ-Gauss norm of u is ρ, equal to that of T; collapsing the fibre to a single classical evaluation loses these distinct extensions. | Pass. |
| 4.4 classical/nonclassical fibres | Evaluation point versus Gauss point | Evaluation support has one prescribed marked quotient; a positive-radius Gauss fibre has the disc of extensions of §4.3, not a single evaluation kernel. | Pass. |
| 4.5 inertia | Finite unramified constant extension versus ramified torsion extension | Unramified constant extension has inertia action 1. For the p=3 first LT level, the nontrivial unit sends ζ₃ to ζ₃²≠ζ₃. The zero-radius classical case is excluded. | Pass. |
| 4.6 generic untilts | π invertible versus π=0; Frobenius shift | Generic map has image of π a unit; special map has image 0 and cannot factor through E. Frobenius-shifted marking gives the same X-divisor. | Pass. |
| 4.7 divisor coefficient base | Base F_q versus algebraic closure | The presentations retain Spd(E) and Spd(Ê) respectively; a Frobenius orbit is one divisor, while deleting the orbit relation keeps multiple representatives. | Pass. |
| 4.8 p-typical de Rham | Characteristic-zero untilt; characteristic-p ring | First quotient of B_dR⁺ is the untilt algebra; Mathlib's p-localized target in characteristic p is 0. Intrinsic integral completion is nonzero there. | Pass. |
| 4.9 ramified coefficients | Identity coefficient map; separable split quadratic tensor | Identity lift is identity; split tensor gives two factors B×B, and the specified embedding selects B. An unmarked choice cannot choose between them canonically. | Pass. |
| 4.10 divisor de Rham rings | One versus two disjoint geometric legs | Residues are C versus C×C; the latter has idempotent (1,0), so is not a DVR. | Pass. |
| 4.11 filtration/conormal | t→ut; repeated t² | Degree m generator changes by u^m, preserving I^m. First repeated-divisor piece uses t², so numbered steps are 2m rather than m. | Pass. |
| 4.12 geometric DVR | m=0,1,2 | B/(1)=0, B/t=k, B/t² has length 2; fraction ring is k((t)). Product B×B fails locality. | Pass. |
| 4.13 completion/base change | Identity map; unit parameter change | Completed map is id and ideals (t)=(ut); rational restriction preserves the same quotient diagram, rather than replacing it by a new parameter-dependent completion. | Pass. |
| 5.2 eigenvectors | n=0,1 and zero | Equations are φ_p^d(x)=x and φ_p^d(x)=px; zero satisfies both. Here d>0 is explicit. | Pass. |
| 5.3 boundary difference | n>0; scalar geometric-series model | (1−π^n)Σ_{j≥0}π^(nj)=1. Reversing the convergence direction gives terms with unbounded negative powers on that chart. | Pass; this is the separate crystalline boundary. |
| 5.4 LT section | Simple zero and square | Vanishing orders 1 and 2 give divisor multiplicities 1 and 2; ξB⁺ gives O(−1), opposite to the degree of the divisor section. | Pass. |
| 6.1 exact square/data | Transition x₁=3x₂; identity square; zero module | Equalizer is {(k,k/3)} with generator (1,1/3). In the identity square kernel(a−b)=diagonal and cokernel=0. Zero pieces yield zero sections. | Pass; actual overlap map retained. |
| 6.2 effective finite projectives | Identity square, ranks 0,1,2 | Sections are diagonal R^n, both comparison maps are identities after identification, and finite-projective rank is n on all three sides. | Pass under universal patching and maximal-ideal coverage. |
| 6.3 finite étale algebras | k×k in char2,3; k[ε]/ε² | Split trace matrix is diag(1,1), determinant 1. Dual numbers have degenerate trace pairing, determinant 0, so cannot masquerade as étale gluing data. | Pass. |
| 6.4 glueing pair/torsion | f=0, f=1; Z/4 with f=2; completion counterexample | Power torsion is all M, zero, all Z/4 respectively. In k[f,T_i]/(fT₁,fT₂−T₁,…), T₁≠0 maps to 0 in completion, violating torsion injectivity. | Pass; both directions of pair criterion distinguish it. |
| 6.5 general BL | Z→Z₂,f=2, pieces Z₂/2 and 0 | Overlap=0; equalizer=Z/2. Scalar extensions recover Z₂/2 and 0. The glued module is neither flat nor projective, but remains glueable. | Pass. |
| 6.6 meromorphic modifications | L=tB; analytic unipotent matrix with unbounded pole series | tB requires bound 1, not 0. Matrix [[1,h],[0,1]] has inverse [[1,−h],[0,1]], but an h with unbounded pole orders has no finite meromorphic bound. | Pass; analytic invertibility alone is insufficient. |
| 6.7 lattice gluing | L=tB and L=t⁻¹B; doubled divisor | Degrees are −1 and +1. B/t over B/t² has length 1 and is not free over the length-two ring; reducing to the support loses data. | Pass. |
| 6.8 meromorphic complement | B⁺ lattice t^kB with algebraic puncture K | Intersection K∩t^kB=t^kB and scalar extension gives K. This algebraic calculation is not an equality of the analytic puncture with Spec(K). | Pass. |
| 6.9 tensor/dual/base change | L=t^aB, M=t^bB | Tensor=t^(a+b)B; dual=t^(−a)B. Identity base change returns both unchanged; a split exact rank sequence 1+1=2 stays exact. | Pass. |
| 6.10 multiple legs | k=3,m=2; disjoint and collision chains | Sufficient doubled-divisor bound is ceiling(3/2)=2, giving 4≥3; bound 1 gives 2<3. Disjoint support gives a product; coincident chains can have the same composite but different intermediate lattices. | Pass. |
| 6.11 affine complement | Unramified exponent a=2; zero twist | KL analytic slope for the divisor line is 1/2 and schematic degree is 1; zero twist gives 0 and cannot supply positivity. | Pass; a retained. |
| 6.12 period square | Geometric constants and a pole | Constants have difference 0 and kernel Q_p. A de Rham pole class is in the quotient; replacing B_e by all B_dR would enlarge the intersection beyond Q_p. | Pass. |
| 6.13 cohomology | O and zero; schematic affine charts | For O, intersection=B_e∩B_dR⁺=Q_p and quotient B_dR/(B_e+B_dR⁺)=0. Zero gives H⁰=H¹=0; no H² from the two-term complex. | Pass; arbitrary flat module uses ordinary tensor. |
| 6.14 B-pair comparison | Reference lattice and t⁻¹B⊕B^(n−1) | Glued bundles are O^n and O(1)⊕O^(n−1); at rank zero both are zero. | Pass; retained target compares supplied equivalence. |
| 6.14a normalized tail | Unit shtuka; x_{C♭} versus x_L | At x_{C♭}: residue C♭, completed stalk W(C♭), identity comparison=1. At x_L: no stalk for an object only on Y_[0,∞). | Pass; the endpoint is corrected. |
| 6.15 pairs/one-leg construction | T=Z_p, Ξ=t^kB; k=0,1; rank zero | Modified bundles O and O(−1); both reconstruction routes insert exactly the same lattices. Multiplication by 1/p does not preserve T. Zero pair gives zero. | Pass; reconstruction is imported and curve compatibility retained. |
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
| `cohenCoefficientLift_exists` | O=F_q[[π]], K=F_q(T) | A=K[[π]], residue kernel (π), coefficientwise σ(T)=T^q and σ(π)=π. | Mathematics passes; R01 concerns ownership of existence. |
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

### Native definition tests

These eleven rows supplement the numbered-target calculations. They test the actual bodies and structure fields retained for headline statements.

| Definition | Instances tried | Computed values / excluded wrong object | Result; change |
|---|---|---|---|
| `ramifiedGhost` | π=2, x=(3,5), n=1, q=0,1; zero algebra | q=0 gives 1+2·5=11; q=1 gives 3+2·5=13; the zero algebra gives 0. Neither junk q is admitted by the Dwork residue-cardinality premise. | Pass. |
| `ExactSquare` | Identity square over k; both corners k[x,1/x] over k[x] | Identity difference has kernel diagonal k and cokernel 0; localized diagonal contains (1/x,1/x), absent from k[x]. The second square fails middle exactness. | Pass. |
| `PatchingData` | One-dimensional pieces over k, transition ×u, u≠0; zero map | ×u has inverse ×u⁻¹, with both composites 1. Zero has composite 0≠1, so cannot supply the required linear equivalence. | Pass. |
| `PatchingData.sections` | Transition ×u over identity ring maps | Kernel is {(a,ua)}; at u=1 this is diagonal. The pair (1,0) has difference u≠0 and is excluded. | Pass. |
| `PatchingData.compareLeft` | Same data, generator (1,u); rank zero | First comparison sends generator to 1, an isomorphism; on zero pieces it is the unique map 0→0. The zero map cannot recover the nonzero line. | Pass. |
| `PatchingData.compareRight` | Same generator; u=2 over Q | Second comparison sends generator to u=2, not 1; scalar extension recovers the specified right piece. Its inverse sends 1 to (1/2,1). | Pass. |
| `UniversalPatching` | Identity square; arbitrary finite projective P with transition α | Given a in the left piece, (a,α(a)) is a section mapping to a. Rank 0 gives surjectivity 0→0. The condition fixes the displayed map, not an arbitrary surjection. | Pass. |
| `GlueingPair` | f=0, f=1, identity R→R | For f=0 the localization is 0 and positive quotients are R; power torsion is R. For f=1 the quotients and torsion are 0; exactness requires the localization piece R. At n=0 both quotient ideals are the unit ideal. | Pass. |
| `IsGlueable` | Z→Z₂, f=2, M=Z/2; unbounded-torsion completion example of §6.4 | On Z/2 the torsion map is identity F₂→F₂. In the excluded example T₁≠0 maps to 0, so the injectivity predicate fails. | Pass. |
| `patchingDiagonal` | Identity square, m=1 and m=0 | Images (1,1) and (0,0); zero would fail recovery of 1. The two tensor-unit maps give the same element on the overlap. | Pass. |
| `patchingDifference` | Identity square, (1,0),(0,1),(1,1), characteristic 2 and 3 | Values 1,−1,0; in F₂ they are 1,1,0, and in F₃ they are 1,2,0. These fix the subtraction order and diagonal kernel. | Pass. |

The supplier conventions also survive the same tests: a uniformizer change π′=uπ leaves the ideal unchanged and rescales Verschiebung by u; an unramified degree-two extension compares the second old ghost with the first new one; multiplier π⁻¹ yields section equation φ(f)=πf, degree +1 and isocrystal slope −1. For a nonreduced input F₂[ε]/ε², ε²=0 while ε≠0; ghost evaluation exists there without asserting injectivity. Empty positive-section coverage for O(−1) on P¹ is genuinely empty; it is not promoted to the global chart theorem.

### Pinned-library and ownership audit

Pins read from `lake-manifest.json`: Mathlib `6b7abb3c7686292736be2955bd3eb9ebf63b456a`; Tau Ceti `a91d3aafa8cd3e6bc33dfde0d7677ed0f1625039`. The main content checkout was `fa41b3747f56d4e77bd69e7099c1be4f2e4959ba`. The searches were by objects—ghost evaluation, weak Witt topology, completed ideals, relative Robba rings, exact squares, glueing pairs, one-leg shtukas, affine bundle comparison and tensor torsors—and used the roadmap index, the board packages, main, open-head text and the pinned libraries. No other roadmap declaration was imported into Lean or assigned the same fully qualified name.

The following 19 grouped entries record declarations opened at the pins, not claims about a newer library. Paths in this table are relative to the respective pinned library repository.

| Pinned object | File and line | What it supplies / does not supply |
|---|---|---|
| `WittVector.ghostComponent` | `Mathlib/RingTheory/WittVector/Basic.lean:296` | Ring-hom evaluation of the p-typical polynomial; not a ramified arbitrary-coefficient functor. |
| `WittVector.teichmuller` | `Mathlib/RingTheory/WittVector/Teichmuller.lean:93` | Multiplicative map, not an additive structural map. |
| `WittVector.frobenius`, coefficient formula | `Mathlib/RingTheory/WittVector/Frobenius.lean:218`, `:255`, `:270` | p-power Frobenius on characteristic-p coefficients, distinguishing φ_p from φ_E. |
| `IsAdicComplete` | `Mathlib/RingTheory/AdicCompletion/Basic.lean:56` | Includes both Hausdorffness and precompleteness; separation is not an extra forgotten binder. |
| `IsAdicComplete.liftRingHom` | `Mathlib/RingTheory/AdicCompletion/RingHom.lean:48` | Compatible quotient maps yield a ring map into an adically complete target. |
| `Ideal.span_singleton_mul_left_unit` | `Mathlib/RingTheory/Ideal/Span.lean:100` | Unit change preserves the ideal; it does not itself identify completed analytic charts. |
| `IsLocalization.Away.awayToAwayLeft/Right` | `Mathlib/RingTheory/Localization/Away/Basic.lean:184`, `:189` | Algebraic localizations, not arbitrary analytic complements. |
| `fontaineThetaInvertP`, `BDeRhamPlus`, `BDeRham` | `Mathlib/RingTheory/Perfectoid/BDeRham.lean:62`, `:75`, `:88` | Algebraic p-localized theta completion/localization; in characteristic p these are zero. No relative divisor sheaf is defined here. |
| Formal-étale lifting | `Mathlib/RingTheory/Etale/Field.lean:98`; `Mathlib/RingTheory/Etale/Basic.lean:76` | Separable field extension and square-zero quotient hypotheses are retained. |
| Smooth adic lifting | `Mathlib/RingTheory/Smooth/AdicCompletion.lean:94` | Formal smoothness and adic completeness supply lifts; no automatic geometric-stalk approximation. |
| Henselian completeness | `Mathlib/RingTheory/Henselian.lean:170` | Complete ring/ideal gives a henselian pair, rather than declaring every intermediate colimit complete. |
| Nonfield DVR | `Mathlib/RingTheory/DiscreteValuationRing/Basic.lean:56` | Local PID with nonzero maximal ideal; fields and the zero ring are excluded. |
| Power torsion | `Mathlib/Algebra/Module/Torsion/Basic.lean:746` | `mem_torsion'_iff` is existence of an annihilator in the submonoid. For powers f, n=0 annihilates only zero. |
| Weak Witt Huber/Tate tests | `TauCeti/RingTheory/Huber/WittVector.lean:51`, `:61` | Huber topology exists; the Tate criterion depends on the Teichmüller parameter being a unit in the coefficient ring. |
| Witt completeness | `TauCeti/RingTheory/WittVector/Complete.lean:197`, `:215`, `:237` | Perfect characteristic-p input and parameter-adic completeness; valued-field specialization retains norm<1. |
| Ideal-power completeness | `TauCeti/RingTheory/AdicCompletion/Pow.lean:63`, `:80` | Cofinal ideals and nonzero powers; the positive power condition matters for repeated divisors. |
| Topological FF quotient | `TauCeti/AlgebraicGeometry/AdicSpace/FarguesFontaine/Quotient.lean:56`, `:72`, `:107` | Orbit type, orbit equality and open quotient topology. Its definition supplies no structure sheaf. |
| Affine vector bundles | `TauCeti/AlgebraicGeometry/VectorBundle/Affine/Basic.lean:102`; `Affine/Monoidal.lean:45`; `Affine/Dual.lean:66` | Finite-projective/scheme-bundle equivalence, tensors and duals; not the analytic gluing theorem. |
| Representation reconstruction/faithfulness | `TauCeti/Algebra/AlgebraicGroup/Representation/Tannaka/GroupFunctor.lean:138`; `Representation/Faithful/Basic.lean:259` | Tensor-automorphism reconstruction and finite-basis closed-immersion criterion. They do not replace the integral analytic torsor dictionary. |

The 17 directly named supplier roadmaps below resolve on main when present there, otherwise at their readable new-roadmap heads. The eleven worker citation leads resolve: eight AInf/BKF API names occur in AInfCohomology, `DerivedDeRham.perfectInverseSystemEffectivity` occurs in DerivedModuleAlgebra, and the two `PatchingData` comparison names are declared in this Lean file. The current VectorBundlesAndIsocrystals titled targets resolve. The extra ownership search found an eighteenth relevant supplier, DeformationAndDerivedPatchingAlgebra §1.10, which must be imported by R01.

| Supplier | Resolved location and retained scope |
|---|---|
| AdicSpaces | `Completed/AdicSpaces/README.md`, Layers 3–6: presheaves, sheafiness, adic gluing and the absolute p-typical curve; this roadmap compares its relative object with that input. |
| AdicSpacesPartII | `TauCetiRoadmap/AdicSpacesPartII/README.md:1200`, strict-complex completion; `:1776`, completed tensors along adic maps. The new non-adic integral coefficient construction is stated separately in §0.16. |
| AdicSpacesPartIII | `TauCetiRoadmap/AdicSpacesPartIII/README.md:9708`, simple Laurent squares; `:10181`, split completed base change; `:10289`, sheafy Tate Kiehl gluing; `:10334`, finite-projective étale descent; `:11946`, trace; `:12034`, trace-perfect étale criterion. Complete/Hausdorff Tate and stable-basis conditions are retained. R3.4 owns the Banach correction used for Stein limits. |
| PerfectoidSpaces | `TauCetiRoadmap/PerfectoidSpaces/README.md:4870`, P1.21 primitive ideals; `:4912`, P1.22 markings; `:9061`, P3.17a.1 and its stability/sheafiness successors. P1's tilt/PreTilt and integral Frobenius criterion, P2 tilting and P3 almost/finite-étale inputs match the contracts. |
| AdicEtaleGeometry | `TauCetiRoadmap/AdicEtaleGeometry/README.md:3638`, A1.6a stable-basis étale vector bundles; complete strongly sheafy affinoid hypotheses are required. |
| RigidAnalyticGeometry | `TauCetiRoadmap/RigidAnalyticGeometry/README.md:318`, §2.2 maximum modulus; used on finite-type disc levels, not asserted as attainment on every perfected chart. |
| DiamondsAndVStacks | `TauCetiRoadmap/DiamondsAndVStacks/README.md:2058`, two-fibre products/quotients; `:4245`, functions; `:4324`, higher/almost acyclicity; `:4390`, D2.9 ordinary bundles; `:6374`, small v-sheaves/stacks; `:8137`, Berkovich quotient; `:9127`, pre-adic diamondification. Ordinary bundle descent is distinct from almost H¹ vanishing. |
| DerivedModuleAlgebra | `TauCetiRoadmap/DerivedModuleAlgebra/README.md:1303`, square-zero obstruction theory; `:2049`, finite models/Tor criterion; `:2200`, perfect-system effectivity. For J-adic quotients, Jⁿ/J^(n+1) squares to zero for n≥1. |
| LocalFieldsRamification | `Completed/LocalFieldsRamification/README.md:72`, local fields; `:576`, unramified/Frobenius; `:1154`, tame quotient/inertia. The normalized LT module remains a separate supplier target. |
| VectorBundlesAndIsocrystals | `TauCetiRoadmap/VectorBundlesAndIsocrystals/README.md:92`, ramified coefficients; `:106`, annuli; `:146`, Cartier descent; `:161`, completion; `:187`, graded charts; `:410`, annular descent; `:797`, GAGA; `:1095`, LT sections; `:1236`, effective divisors/projective sections; `:1845`, integral Frobenius; `:2024`, integral group torsors. All 25 distinct cited target titles resolve, with their coefficient/base scopes retained. |
| PadicHodgeTheory | `TauCetiRoadmap/PadicHodgeTheory/README.md:140`, §0.2 theta/filtration; `:1071`, §5.5 tensor torsor; `:1318`, §7.5 actual relative periods and B-pairs; `:1340`, §7.6 derived comparison. These relative carriers are consumed, not re-created under new names. |
| PadicPeriodRings | `TauCetiRoadmap/PadicPeriodRings/README.md:216`, §1.5 de Rham topology/DVR; `:416`, §4.1 general p-adic period carriers; `:469`, §4.3 fundamental sequence. The intrinsic all-E completion is additional here. |
| FarguesFontaineDiamonds | `TauCetiRoadmap/FarguesFontaineDiamonds/README.md:663`, F4 marked-untilt analytic Cartier criterion, root-frame comparison and strict closedness. Its fixed-field Q_p scope is not promoted to an all-E theorem by citation alone. |
| AInfCohomology | `TauCetiRoadmap/AInfCohomology/README.md:1575`, regular-completion linear patching; `:1585`, punctured-spectrum triviality; `:1776`, no-leg/integral Robba; `:1816`, analytic extension; `:1826`, reconstruction. The general glueing-pair and general-Tate-base extensions here differ; the geometric one-leg reconstruction is now explicitly imported. |
| AlgebraicVectorBundles | `TauCetiRoadmap/AlgebraicVectorBundles/README.md:215`, L0A; `:228`, L0B; `:254`, L0C. Generic scheme sheaf/bundle operations are deferred, consistent with their native pinned implementations. |
| ReductiveGroups | `TauCetiRoadmap/ReductiveGroups/README.md:176`, Layer 1; `:211`, reconstruction dictionaries. The field reconstruction is an input, not a proof of integral analytic torsor descent. |
| SchemeAndStackFoundations | `TauCetiRoadmap/SchemeAndStackFoundations/README.md:2502`, §1.15; `:3330`, §2.3: geometric/fppf torsors and common torsor-class carriers. |

Ownership against open work was checked through the supplied roadmap index and readable heads. The broad object searches also located the regular-completion specialization in FiniteFlatGroupsAndIntegralPadicHodgeTheory; its noetherian p-completion scope does not duplicate this roadmap's arbitrary glueing-pair theorem. Board-package matches in GlobalShtukasAndFunctionFieldLanglands concern function-field shtukas, not this mixed-characteristic one-leg construction. The absolute curve, generic Witt operations, scheme bundles and generic perfect-system effectivity have named earlier owners; the remaining relative/integral comparisons here have a stated difference. R01 is the remaining duplicate underlying coefficient-lift construction. No consumer was introduced as a supplier.

The new ownership witness is `TauCetiRoadmap/DeformationAndDerivedPatchingAlgebra/README.md:246`–`:250`, read through the roadmap service at its new-roadmap head; this folder is absent from the main checkout. Its §1.10 starts with arbitrary Noetherian local R and arbitrary residue-field extension. Its strict-Cohen specialization is not the only relevant statement: the preceding general residue-extension paragraph applies directly to ramified and equal-characteristic O_E as well. Thus the overlap does not disappear by restricting attention to nonperfect K. Board and open-roadmap searches also found Cohen-related uses in DirectSummandsAndBigCohenMacaulay and the Lubin–Tate cohomology programme; those consume coefficient-ring inputs rather than supersede this earlier owner.

The dependency pass is at the level of named targets. In particular, §1.12 uses §1.16's annular comparison, whose inputs stop at §1.11; this internal order is acyclic. §6.14a now uses the characteristic-p boundary supplier rather than §5.3's other endpoint. Global Proj coverage, slope theory, loop quotients and later shtuka moduli are not used as unowned early foundations. Loop quotients and Grassmannians remain assigned to GeometricSatakeAndFusion GS0 (`TauCetiRoadmap/GeometricSatakeAndFusion/README.md:217`, loop spaces at `:225`); BunGAndNewtonStrata, HeckeStacksAndLocalShtukas and VStackSheavesAndLisseCategories are consumers, not new supply edges.

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
