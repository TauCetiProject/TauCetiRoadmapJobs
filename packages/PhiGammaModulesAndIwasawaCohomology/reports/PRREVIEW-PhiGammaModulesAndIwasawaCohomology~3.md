# Review of PhiGammaModulesAndIwasawaCohomology (pull request #1310 at 2b59ba3)

**Verdict:** needs changes

## R01 (P1) — Normalization breaks the asserted dominant flat compatibility

**Location:** `TauCetiRoadmap/PhiGammaModulesAndIwasawaCohomology/README.md:3121` and `:3136–3137`: “The construction first normalizes”; “The canonical modification X′→X commutes with dominant flat pullback”.

**Claim:** These two requirements are incompatible for reduced rigid spaces. Flat base change of the Fitting blowups in §7.6 is valid, but it does not give flat base change of the normalization included in §7.7.

**Witness:** Over E=ℚ₃, the cusp B=E⟨u,v⟩/(v²−u³) is free of rank two over E⟨x⟩, x↦u. For the unit character line, pullback gives B; normalization gives E⟨s⟩, u=s², v=s³.

The finite flat map is dominant and both spaces are reduced. Every fiber of the unit character line satisfies the saturated one-dimensional-H⁰ hypothesis. The construction on the smooth disc is the identity; its base change is the identity of the cusp. The normalization-first construction on the cusp factors through its nontrivial normalization. They cannot be isomorphic over the cusp: s=v/u is integral, with s²=u, but is absent from B. This also refutes a claim that all the later flattening steps somehow restore the original cusp. The normalization is already a smooth disc, whose subsequent proper birational modifications are identities in this construction.

KPX line 2738 explicitly performs the normalization, line 2761 permits normalizing intermediate spaces, and lines 2862–2864 repeat the overclaim in Remark 6.3.11, manuscript p.72. Thus the reference resolves, but its assertion needs a correction. This is not a failure to follow the previous review's locator repair.

**Repair:** Preserve the existence theorem for all reduced X. Restrict compatibility of this particular normalization-containing construction to dominant flat changes for which the normalization squares at every stage commute, giving smooth base changes as a sufficient case. Alternatively supply a different construction and prove its stronger compatibility without using normalization functoriality for arbitrary flat maps. Keep §7.6's ordinary flat compatibility for the unnormalized Rees blowups. Add the cusp example as a negative-control Check.

**Repair check:** The cusp-to-disc map is excluded: B is not its integral closure E⟨s⟩. For the smooth projection from the cusp times a disc to the cusp, normalization is E⟨s,z⟩=E⟨s⟩ completed-tensored with E⟨z⟩; the corrected comparison agrees on u=s², v=s³ and z. Restricting this compatibility law does not restrict the general rank-one quotient existence theorem.

## R02 (P3) — Import the existing trace-dual equivalence

**Location:** `TauCetiRoadmap/PhiGammaModulesAndIwasawaCohomology/README.md:1662–1663`: “Prove the underlying dual identification existence of the coefficient trace dual for every finite separable field extension E/F and every E-vector space”.

**Claim:** This generic target already exists at the pinned Tau Ceti, including the evaluation formula and without finite-dimensionality of the vector space. The new arithmetic compatibility should build on it.

**Witness:** `TauCeti/RingTheory/Trace/Dual.lean:85` defines `Module.Dual.traceCompEquiv`; line 98 states `traceCompEquiv_apply`. Its binders at lines 47–48 require a finite separable scalar extension and the scalar tower, not finite-dimensionality of V.

**Repair:** Delete the generic trace-dual construction target and cite those two declarations in the supplier contract. Retain the relative Robba extension, φ/Γ compatibility, cup compatibility and normalized arithmetic trace statements as this roadmap's additional work.

**Repair check:** For E=F(ϖ), ϖ²=p in characteristic zero, the trace matrix on (1,ϖ) is diag(2,2p). The trace-dual basis is (1/2,ϖ/(2p)); the pinned evaluation formula gives the same two coordinate functionals. This includes p=2 over fields and does not assert integral perfectness over the valuation rings.

## Previous findings

All three findings of the review at 606424f were checked first and then reconsidered during the full pass. No finding marked not actionable is re-raised.

| Previous finding | Passage at this head | Assessment and recomputation |
|---|---|---|
| R01: tensor compatibility of cyclotomic deformation | README:2303–2316: `Dfm_n(M⊗N) ≅ Dfm_n(M)⊗N_B ≅ Dfm_n(M)⊗Dfm_n(N)⊗U_n^∨` | Repaired. At η(γ)=ζ₃ the last expression has eigenvalue ζ₃⁻²ζ₃=ζ₃⁻¹, agreeing with the left. Under a basis change u, the correction contributes u²u⁻¹=u. The comparison square now names the actual maps. |
| R02: uniform presentation used before being built | README:820: “uniformly finitely presented vector bundle”; README:870 and :1701: “§1.1a uniform presentation” | Repaired. §1.1a precedes both uses and covers annuli and discs with uniform generator/relation counts. A free rank-d system has counts (d,0); an idempotent summand of a rank-n free system has an (n,n)-presentation. KPX lines 633–637 and 1017–1025 use precisely this input. |
| R03: dangling citations and copied downstream Needs | README:1029: “For K′/K”; README:3137: “KPX Remark 6.3.11, p.72”; downstream paragraph at :3213–3219 | The textual repairs are complete. The cited Remark exists at KPX line 2862. Independently testing its mathematical claim produces R01 above; the previous review's positive assessment of that claim is not retained. |

## Verified sound

This was a full read of the README's eight layers, definitions, APIs, Checks and dependency clauses, and the complete Lean file. The computations below are finite adversarial tests and convention checks, not substitutes for proofs of the general theorems. The source sample contains all 15 requested targets. No README locator was flagged as unverified. One generic library duplication and one false compatibility law are reported above.

The head matches 2b59ba3c6a4a8e65415cd571ce865e22a6253bba. The diff outside this roadmap folder is empty. The worker's gate passes all text rules, folder-content rules, dependency checks and the targeted build. Direct elaboration of `TauCetiRoadmap/PhiGammaModulesAndIwasawaCohomology/Suggested.lean` also succeeds, with only its one `sorry` warning. There is no sorry'd data, `set_option`, placeholder proposition, computational algorithm, or substitute abstract headline in this file. The reference text is paraphrased rather than reproduced.

The independently rerun supplier check reports:

```text
depcheck: 205 roadmaps, 1487 edges, 0 problem(s)
```

There is no UPWARD, CYCLE or moved line. The internal uniform-presentation edge is now in the right order. No worktree file was edited.

The two elaborated declarations were inspected using `#check @name` on a scratch copy. `truncatedWittFrobenius` retains `CommRing R` and `CharP R p`. `wittProjective_of_flat_phi` retains primality, n>0, perfectness, finite presentation over Wₙ(R), flatness over ℤ/pⁿ, the additive equivalence F and its semilinearity. No binder disappeared; the README and signature have the same generality. The ℤ/pⁿ-action is the unique action on the additive group, so a second independent scalar action is not introduced by that binder.

The sole admitted theorem was probed with `rfl`, `simp`, `infer_instance`, and the direct library theorem `Module.Flat.projective_of_finitePresentation`. None closed it. The last requires flatness over Wₙ(R), whereas the hypothesis supplies flatness only over ℤ/pⁿ. The Frobenius argument establishing that stronger flatness is substantive. The file therefore has no detected padding.

**Headlines and statability.** The README's deep outputs are: Artin–Schreier–Witt descent and Witt projectivity; small-group Lang descent; compact descent; uniform annular/disc presentation; relative and integral realization, arbitrary-module decompletion and global pure comparisons; arithmetic Herr/Galois comparison, Euler characteristic, perfectness, duality and derived base change; independent integral and analytic Iwasawa comparison, deformation and pairing specialization; ψ-fixed generation and the all-level exponential criterion; Wach existence and good coordinates; rank-one family classification, flattening, global quotient and triangulation. Witt projectivity is stated. The remaining groups are named in the module docstring with their missing arithmetic, analytic, sheaf or period carriers. Searching the pins did not find those missing Robba/Wach/Herr carriers. The simple native Witt definition is enough for the retained theorem; generic operator algebra is correctly kept in the README.

**Seeded source sample.** Source line numbers below refer to the legally fetched, numbered extractions. KPX is arXiv:1203.5718v3; KL-I and KL-II are arXiv:1301.0792v5 and arXiv:1602.06899v3. Page numbers in those rows are the printed manuscript numbers. LLZ-2010 uses the institutional manuscript, LLZ-2011 the published article. The FF text was obtained from HAL; it is now verifiable.

| Target | Source text and locator checked | Hypotheses, support and result |
|---|---|---|
| 0.2 Free covers and Frobenius cohomology | KL-I lines 938–993, §1.5, pp.24–25; KL-II lines 7269–7278, Appendix A, p.189 | Finite projective linearized modules; free cover and fixed-ring cohomology/Ext route. The corrected block-matrix construction is used, not the erroneous original lower-left block. No equivariant splitting is asserted. |
| 0.5 Small lattice groups and Lang descent | KL-I lines 2946–2961, Proposition 3.2.9, pp.74–75 | Algebraic matrix Lie subalgebra, m≥1, depth n≥2 (n=1 also for odd p), perfect characteristic-p base. The smooth connected unipotent Greenberg realization and Frobenius-conjugacy description have this scope; dyadic depth is retained. |
| 1.4 Extended descent and arbitrary-module decompletion | KL-I lines 7845–7897, Theorem 9.5.8, p.202; FF lines 15225–15285, Theorem 11.5.1, pp.383–384 | The Γ-equivariant equivalence includes nonétale modules. Forgetting Γ would not justify this assertion. FF identifies the period-module/bundle formulations on the specified carriers. |
| 1.5 Global pure modules | KL-I lines 6680–6758, Theorems 8.5.6–8.5.8, pp.171–172 | The global integral model and local-system hypotheses are retained. The roadmap distinguishes global pure objects with that model from mere pointwise purity. |
| 3.1 Native Herr complexes | KPX lines 782–825, Definition 2.3.3, p.21 | Actual Δ-invariants and two commuting operators. The differential is `(γ−1)a−(φ−1)b`; native degree convention and signs are consistent. |
| 3.3 Corrected section and homotopy | KPX lines 833–848, Proposition 2.3.6, p.22 | The source's kernel argument supplies the route; the explicit S and H are algebraic deductions, not quotations of an unstated formula. Direct computations below verify both chain squares and `id−SF=dH+Hd`. |
| 3.4 Generator change and torsion | KPX lines 782–825, pp.21–22 | The p-primary finite torsion convention, generator quotient and inverse-generator adapter are retained. Integer geometric sums are separated from unit generator changes and averaging where the order is invertible. |
| 3.5 ψ-zero inverse and field characters | KPX lines 987–1030, Theorem 3.1.1, pp.25–26; Proposition 6.2.8, pp.58–59, and Theorem 2.3.11, p.24 | Rational relative Robba modules, sufficiently small annuli and finite-projective models; the uniform-presentation input is now explicit. Exceptional field-character dimensions agree with the monomials and Tate duality. |
| 3.7 Dyadic derived descent | KPX Definition 2.3.3, p.21, and Proposition 2.3.7, pp.22–23; supplier F.3 and §0.6 | KPX supports the rational Herr convention, not an integral averaging assertion. The integral target uses the owned derived finite-quotient roof. The cited NSW general cohomology text remains uncertified; the C₂ computations below independently distinguish the two constructions. |
| 3.9 Localized Artinian coefficients | BHS lines 1750–1810, §3.3, pp.342–343, especially (3.10)–(3.13) | Finite local Artinian coefficients, an underlying lattice before t-inversion, colimit cohomology and Ext. The source's opposite degree-two sign is transported by −1. |
| 4.3 Pairing and uniform finiteness | KPX lines 1480–1590, §§4.2.5–4.2.9, pp.36–39; 1600–1694, pp.40–42; 1873–2037, §§5.1–5.3, pp.47–51 | Residue characterization for all scalar tests, inverse character in the second variable, both cokernel vanishings, reduced-base intermediate argument and nilpotent dévissage. Uniform presentation is additional to fiberwise dimensions. Lemma 5.1.4 precedes general base change, avoiding a circular proof. |
| 5.6a De Rham differential equation | Berger-diffeq lines 2080–2089, Theorem 5.10, fetched preprint p.52; Berger-intro lines 1215–1253, §IV.4.1, pp.29–30; supplier F.6 stage 3 | The primary theorem's embedded nonlocalized statement has a weight restriction. The roadmap correctly uses the supplier's arbitrary-weight lattice in D[1/t]; the introductory text explicitly explains this distinction. No second differential lattice is constructed. |
| 6.2 Good Wach bases | LLZ-2010 lines 580–608 and 690–713, Theorem 3.5 and Lemma 3.15, manuscript pp.10–13; LLZ-2011 lines 875–930, Proposition 2.11–Corollary 2.13, p.1115, Remark 2.14, p.1116 | Odd p; integral prescribed reduction versus rational prescribed crystalline basis; positive analytic carrier versus full Robba; the original twisted formulation is kept distinct. An arbitrary Wach basis is not claimed good. |
| 7.5 Saturated and strict triangulations | KPX lines 2573–2598, Definitions 6.3.1–6.3.2, pp.65–66 | Finite-projective quotients, ordered parameters, coefficient lines and one-dimensional Hom criterion for field strictness. Density is on a specified admissible cover. |
| 7.6 Fitting blowups and flattening | KPX lines 2600–2720, Lemma 6.3.5 and Corollary 6.3.6, pp.66–68 | The roadmap explicitly repairs the source's arbitrary further-pullback and ordinary dominant-base-change overclaims. Non-zero-divisor and dominant-transform conditions survive the tests below. R01 concerns the additional normalization in §7.7, not these corrected Rees laws. |

**Adversarial calculations.** Each row names a statement or a separately testable component of one. “Pass” means the displayed instance agrees with the stated hypotheses and result; “excluded” records a computed negative control. R01 and R02 are the required changes. All vector-space dimensions below are over the indicated coefficient field. Zero objects and rank-zero conventions are tested explicitly; hypotheses such as characteristic zero or perfectness are not silently dropped when using negative controls.

| Statement | Instance(s) | Computed values on the two sides / competing models | Result; change |
|---|---|---|---|
| 0.1 Frobenius linearization | S=𝔽₃[U], σ(U)=U³, unit module | L(1⊗U)=U³=L(U³⊗1); L(U⊗1)=U, a distinct value | Pass; none |
| 0.1 Étaleness and morphisms | Rank zero; nonzero rank-one module with F=0 | Linearization 0→0 is bijective; on rank one its kernel is the whole line | Pass; zero-F wrong model excluded |
| 0.2 Free cover | S=𝔽₃×𝔽₃, M=eS | M has component ranks (1,0), complementary kernel (0,1), cover (1,1) | Pass; no constant-rank assumption added |
| 0.2 Equivariant splitting | F(a,b)=(a+b,b) on 𝔽₃² | Fixed vectors have b=0; no fixed lift of quotient element 1 | Pass; split-surjection overclaim excluded |
| 0.2 H⁰, H¹ and Ext | F=id and F=2id on a line | F−1=0 gives (H⁰,H¹)=(E,E); F−1=id gives (0,0) | Pass; none |
| 0.3 Idempotents and fixed bases | 𝔽₂, 𝔽₂²; rank-one fixed tuples over 𝔽₃ | x²=x has 2 and 4 solutions; fixed vectors number 3 but fixed bases number 2 | Pass; tuples are not the basis torsor |
| 0.3 Witt truncation | W₂(𝔽₃)→𝔽₃, chosen basis 2 | Lifts 2,5,8 are all units; three lifts, no distinguished one | Pass; no canonical lift asserted |
| 0.4 Witt projectivity headline | R=𝔽_p, n=1,2; free ranks 0,1,2 | Wₙ(R)=ℤ/pⁿ, F=id, projective ranks 0,1,2 on both sides | Pass; same test at p=2 and 3 |
| 0.4 Flatness is essential | ℤ/9-module ℤ/3 | Tor₁(ℤ/3,ℤ/3)=ℤ/3; quotient is not projective over ℤ/9 | Excluded by flatness; none |
| 0.4 Frobenius-stable ideal | R=𝔽₃[T]ᵖᵉʳᶠ, J=(T) | σ(J)=(T³) is strictly smaller than (T); no idempotent generator of J | Excluded by σ(J)=J; none |
| 0.4 Descent action | Double cover with sign coefficient representation | Diagonal invariants are (a,−a); coefficient-only invariants are (a,a) | Pass; coefficient representation retained |
| 0.4 Zero ring / varying rank | Zero ring; eWₙ(𝔽_p×𝔽_p) | Unique module has rank 0; idempotent summand has ranks (1,0), still projective | Pass; no nonzero or connected hypothesis needed |
| 0.5 Exponential and BCH | Strict upper triangular 3×3 matrices | exp(X)=1+X when X²=0; [E₁₂,E₂₃]=E₁₃≠0 | Pass; nonabelian law retained |
| 0.5 Dyadic smallness | exp(2), exp(4) in ℚ₂; term k=2ʳ | v₂(2ᵏ/k!)=1, whereas v₂(4ᵏ/k!)=k+1→∞ | Pass; depth one fails, depth two converges |
| 0.5 Lang classes | Additive 𝔽₃ layer, h³−h=1 | No 𝔽₃ solution, three geometric solutions, derivative −1 | Pass; étale triviality differs from rational triviality |
| 0.6 Continuous-cochain carrier | Trivial group with coefficient T | Differentials alternate 0,id; H⁰=T and Hⁱ=0 for i>0 | Pass; not a zero complex termwise |
| 0.6 Procyclic and finite descent | ℤ₃ trivial ℤ₃; C₃⊂C₉ with 𝔽₃ | Procyclic H⁰=H¹=ℤ₃; H¹(C₉,𝔽₃) has dimension 1, not the naive two quotient/kernel summands | Pass; coherent quotient roof needed |
| 0.6 Nonabelian check | A₃ normal in S₃, trivial 𝔽₂ coefficients | H¹(S₃,𝔽₂)=𝔽₂=H¹(C₂,𝔽₂); H¹(A₃,𝔽₂)=0 | Pass; finite descent handles nonabelian group |
| 0.6 Limits and derived tensors | Constant tower; ℤ/4→ℤ/2 | lim=T and lim¹=0; Tor₁(ℤ/2,ℤ/2)=ℤ/2 | Pass; derived tensor retains extra group |
| 1.0 Field realization and reduction | p=3; torsion representation T=𝔽₃ | φ(π)=3π+3π²+π³; T[1/3]=0 whereas integral realization has nonzero mod-3 fiber | Pass; integral comparison precedes inversion |
| 1.0b Norm and slope conventions | α(x)=1/3, r=2; φ(e)=pe | Norm([x])=1/9, norm(φ[x])=1/729; supplied degree +1 becomes KPX degree −1 | Pass; inverse or unchanged sign excluded |
| 1.0b Pure-system indices | (c,d)=(1,2) and (2,4) | c/d=1/2 in both; rank-zero slope multiset is empty | Pass; reindexing includes descent data |
| 1.0b Purity versus average slope | φ=diag(1,p) | Slopes are (0,1), average 1/2; not a pure slope-1/2 object | Pass; average-only predicate excluded |
| 1.0c Curve exponent | Unit object at d=1 and d=2 | Constant endomorphisms ℚ_p and ℚ_(p²); trace of 1 at d=2 is 2 | Pass; φᵈ cannot be replaced by φ |
| 1.0c Marked roofs and evaluation | Marked trivial line; maps u and 2u | Localization images u and 2u differ; evaluation eᵢ*(eⱼ)=δᵢⱼ | Pass; an unmarked isomorphism is insufficient |
| 1.1 Coefficients and cyclotomic components | Unramified quadratic K; K=ℚ₃(μ₃) | First has unramified coefficient degree 2 and cyclotomic index 1; second degree 1 and cyclotomic index 2 | Pass; these factors are not interchangeable |
| 1.1 Annular radii | p=3, valuation interval [1,2] | Modulus endpoints 3⁻¹ and 3⁻¹ᐟ²; increasing lower valuation endpoint to 3/2 gives outer radius 3⁻³ᐟ⁴ | Pass; endpoint orientation retained |
| 1.1a Uniform generation | Compatible free Bᵢᵈ | Generator/relation counts (d,0); global Bᵈ has the same counts | Pass; prior R02 repaired |
| 1.1a Projective presentations | eB⊂B, B a product | Generator/relation counts (1,1); ranks (1,0), not constant 1 | Pass; uniform counts do not mean constant rank |
| 1.1a Compatibility hypothesis | Nonzero rank-one terms with zero transitions | Inverse limit 0; scalar extension of limit 0 differs from a rank-one term | Excluded: transition maps are not coherent-system identifications |
| 1.2 Nonreduced relative realization | A=E[ε]/ε², free line | εe≠0 both before and after faithful analytic scalar extension; reduced fiber sends it to 0 | Pass; reduced fibers alone are insufficient |
| 1.2 Radius restriction | Models at r₁ and r₂ | Common model can use min(r₁,r₂); restricting twice and directly gives the same coefficient | Pass; common-radius requirement retained |
| 1.3 Integral intersection | Lattices T and pT | Rational spans equal V, integral lattices differ by p | Pass; integral intersection distinguishes them |
| 1.3 Integral ψ | Constant 1 modulo p | ψ(1)=1; unnormalized trace of 1 is p, hence 0 modulo p | Pass; trace division cannot be performed after reduction |
| 1.4 Arbitrary-module decompletion | Nonétale line φ(e)=pe; unit line | Nonétale slope is +1 in valuation convention, not zero; unit comparison sends 1 to 1 | Pass; not restricted to étale objects |
| 1.4 Γ hypothesis | Forget Γ from the stated category | On E² take γ=diag(1,2), f swapping coordinates: γf(e₁)=2e₂ but fγ(e₁)=e₂ | Excluded morphism; no claim of nonequivariant decompletion |
| 1.5 Global pure comparison | Globally trivial rank-d system; zero | Both realizations rank d, zero gives 0; unit/counit act by identity matrices I_d | Pass under global-model hypothesis |
| 1.6 Restriction, induction, duals | Unit under a degree-two field extension; Tate line | Restriction-corestriction gives 2; Tate φ(e)=e and γ(e)=χ(γ)e | Pass; dropping trace degree or Tate Γ-action fails |
| 2.1 Balanced tensor contraction | Scalars 2 and 3; zero tensor | Q(2⊗3)=6=Q(1⊗6); Q(0)=0 | Pass; balancing has the twisted scalar action |
| 2.1 Product-ring contraction | Projection coefficient e=(1,0) | For R=ℚ, S=ℚ×ℚ and first projection r: Q(e⊗7)=7, Q((1−e)⊗7)=0 | Pass; no domain assumption |
| 2.2 Module ψ | Linearization multiplication by 2 | ψ(6)=3; ψφ(1)=1; setting ψ=0 would give 0 | Pass; inverse linearization determines ψ |
| 2.3 Rank-one coefficient | S=E×E, ψ swaps factors, a=(2,3) | ψ(a⁻¹)=(1/3,1/2), whereas a⁻¹ψ(1)=(1/2,1/3) | Pass; a⁻¹ stays inside ψ |
| 2.3 Basis change | e′=be with constant b=2 | Vector scale 2 and coordinate scale 1/2; product recovers 1 | Pass; inverse transition required |
| 2.4 Projector | φf(U)=f(U³), ψ extracts powers divisible by 3 | P(U)=U, P(U³)=0; P²(U)=U and ψP(U)=0 | Pass; none |
| 2.4 Fixed versus zero space | Same polynomial model | Fixed space of ψ is constants; (1−φ) sends it to 0 but U∈kerψ is nonzero | Pass; no universal generation assertion |
| 2.4 Perturbed model | φf=f(U³)+f(0)U, same ψ | ψφ=id; (1−φ)(1)=−U≠0 | Pass; distinguish zero image from universal vanishing |
| 2.5 Frobenius coordinates | p=2 or 3, 0≤i<p | ψ((1+π)ⁱ)=1 for i=0 and 0 otherwise | Pass; unique zeroth coordinate |
| 2.5 Integral trace | p=2, input π | ψ(π)=−1; trace(π)=−2=2ψ(π), reducing trace gives 0 | Pass; agrees with ColemanPowerSeries §§1.47–1.49 |
| 2.6 ψ complex | ψ=id and ψ=0 | First gives H¹=H²=M, H⁰=0; second differential −id gives all cohomology 0 | Pass; degrees 1,2 retained |
| 2.7 Mellin and convolution | Dirac masses at g,h; sign character at −1 | δ_g*δ_h=δ_gh; sign evaluates −1 while trivial character evaluates 1 | Pass; finite character factor retained |
| 2.7 Uniformizer change | ϖ′=uϖ | δ(ϖ′)=δ(u)δ(ϖ), not δ(ϖ) when δ(u)≠1 | Pass; character is determined on units and chosen uniformizer |
| 2.8 Analytic Γ scalars | Coordinate z=γ−1 | z vanishes at trivial weight; 1/z has a pole there, but is defined on an annulus excluding it | Pass; disc and Robba-type rings distinguished |
| 2.8 Relative tensor | A=E[ε]/ε² | Coefficient ε stays nonzero in A-valued analytic functions; reduction gives 0 | Pass; scalar construction retains nilpotents |
| 3.1 Signed differentials | φ=2, γ=3 on a line | d⁰(7)=(7,14); d¹(5,11)=−1; d¹d⁰(7)=14−14=0 | Pass; changing the minus to plus gives 28 |
| 3.1 Identity operators and functoriality | φ=γ=id; map multiplication by 2 | H⁰,H¹,H²=(E,E²,E); induced maps multiply by 2 in every coordinate | Pass; degrees and map composition agree |
| 3.2 Signed comparison | φ=ψ=id, any commuting γ | F=(id,diag(−1,1),−id); the degree-two sign is −1, not +1 | Pass; chain maps agree |
| 3.2 Kernel test | Polynomial model, γ=id | F²(U³)=−U, F²(U)=0; kernel complex has H¹=H²=kerψ≠0 | Pass; surjectivity alone is not a quasi-isomorphism |
| 3.3 Resolvent | Polynomial model, γ=2id | q=P, Bq(U)=U=P(U); qφ(U)=0 and ψq(U)=0 | Pass; normalization determines q |
| 3.3 Corrected section | Same model, degree-one (0,U) | S¹(0,U)=(−U,U); dφS¹=−U³; S²dψ=−U³; FS¹(0,U)=(0,U) | Pass; uncorrected section has error U |
| 3.3 Homotopy | Same model, c=U and c=U³ | H²(U)=(U,0), H²(U³)=0; (id−SF)²(U)=U=dH²(U) | Pass; native homotopy orientation agrees |
| 3.3 Degree-one homotopy | Same model, (a,b) | Both (id−SF)¹ and Hd¹ give (Pa+qb,0) | Pass; no extra sign |
| 3.4 Geometric sums | n=0,1,3; γ acts by 2 | Q₀=0, Q₁=1, Q₃=7; (2−1)·7=2³−1=7 | Pass; n=0 is not a generator change |
| 3.4 Nonunit change | Characteristic 3, γ=id, n=3 | Q₃=3=0; cannot invert Q₃ | Excluded by the generator/unit hypotheses |
| 3.4 Inverse generator | γ=2 on a test line | γ⁻¹−1=−1/2; −γ⁻¹(γ−1)=−1/2 | Pass; inverse-generator minus sign fixed |
| 3.4 Finite torsion | C₂ with trivial coefficients ℚ₂ versus 𝔽₂ | Averaging uses 1/2 over ℚ₂; over 𝔽₂, H¹(C₂,𝔽₂)=𝔽₂ rather than 0 | Pass; averaging not used integrally |
| 3.4a Euler characteristic | Trivial and Tate lines over degree-d_K local field | Dimensions (1,d_K+1,0) and (0,d_K+1,1); alternating sums both −d_K | Pass; twist and degree factor agree |
| 3.4a Torsion and t-twist | R/t; tR⊂R | Torsion dimensions (1,1,0), Euler 0; H⁰(tR)=0 but H⁰(R)=E | Pass; t-twist not mistaken for isomorphism before localization |
| 3.4a Auxiliary pure extension | d=2 | Pure extension has KPX slope −1/2 twice; split tR⊕R has slopes (−1,0) | Pass; split replacement would invalidate induction |
| 3.4a Coefficient restriction and degree | E=ℚ_p(ϖ), ϖ²=p, φ(e)=ϖe | E-rank 1 has degree 1/2; restricted rank 2 has determinant −p, degree 1=2·1/2 | Pass; ramified factor is retained |
| 3.4a Trace dual | Basis (1,ϖ), ϖ²=p | Gram diag(2,2p), dual basis (1/2,ϖ/(2p)); trace(ϖ)=0 but trace(ϖ²)=2p | Sound mathematics; R02 imports existing theorem |
| 3.4a Ordered cup | Two degree-one coordinates (1,0),(0,1) | Signed cup values −1 and +1 on reversing entries | Pass; ordered sign is discriminating |
| 3.5 Field character dimensions | δ=1, δ=x·abs(x), generic unramified δ | (h⁰,h¹,h²)=(1,2,0),(0,2,1),(0,1,0); Euler −1 in each | Pass; both exceptional families retained |
| 3.5 Tate versus x | K=ℚ_p | δ=x·abs(x) has φ eigenvalue 1; δ=x has eigenvalue p | Pass; cyclotomic twist is not x |
| 3.5 Inverse on ψ-zero | Zero module; abstract γ=id with nonzero kerψ | Unique zero-space inverse exists; the latter has B=0 and cannot satisfy Bq=P≠0 | Pass; arithmetic/radius hypotheses essential |
| 3.6 Integral comparison | Trivial 𝔽₃ line; A=E[ε]/ε² | H⁰ is 𝔽₃ integrally; on the family constants include nonzero ε | Pass; rationalization/reduction loses these data |
| 3.6 Lattice independence | T and pT in V | Inverting p identifies both with V; reduction T/pT and pT/p²T each rank one | Pass; rational comparison does not identify integral sublattices |
| 3.7 Derived dyadic descent | C₂, trivial 𝔽₂ | H¹=𝔽₂, while ordinary invariants alone placed in degree zero give H¹=0 | Pass; derived finite quotient is necessary |
| 3.7 Rational dyadic specialization | C₂, trivial ℚ₂ | Norm=2, averaging 1/2, positive finite-group cohomology 0 | Pass; rational simplification only after inverting 2 |
| 3.8 Residue | dπ/π and dπ/(1+π) | Residues 1 and 0; replacing the logarithmic pole by a regular differential loses 1 | Pass; residue carrier fixed |
| 3.8 Invariant normalization | Ordered Kummer/reciprocity pair of value 1 | Arithmetic invariant 1 corresponds to raw residue C_p; swapping pair gives −1 and −C_p | Pass; raw residue is not silently the invariant |
| 3.8 Generator scaling | γ′=γᵘ, unit u | logχ(γ′)=u logχ(γ); matching numerator acquires u, normalized ratio unchanged | Pass; both normalizations transported |
| 3.9 Localized lattice independence | D and tᵐD | Unions of t⁻ⁿD and t⁻ⁿ(tᵐD) both D[1/t] | Pass; shift cofinality gives same elements |
| 3.9 Artinian coefficients and sign | A=E[ε]/ε², unit; opposite BHS d¹ | H⁰=A includes ε≠0; multiplying degree two by −1 turns BHS d¹ into the roadmap's d¹ | Pass; ε not discarded and sign agrees |
| 4.2 ψ cokernel and torsion | Zero module; standard R/t | Zero complex has zero groups; torsion ψ complex has cokernel 0 and the Herr torsion dimensions (1,1,0) | Pass; no false Euler contribution |
| 4.3 Finite coefficient comparison | A=E[ε]/ε²→E | Tor₁ᴬ(E,E)=E; ordinary tensor would omit it | Pass; preliminary comparison is derived |
| 4.3 Character involution | η(γ)=ζ₃ | First weight ζ₃ pairs with inverse weight ζ₃², not ζ₃ | Pass; second action inverted |
| 4.3 Residue pairing convention | Test scalar 1; f₁=−1/(γ⁻¹−1) in the Γ-coordinate | Res(f₁·ω)=1 with the specified differential; removing its minus reverses the value | Pass; normalization tested at the pole |
| 4.3 Double vanishing | Rank d, both ψ−1 cokernels zero | H⁰=H²=0 at every character; h¹=d; kernel of φ−1 on ψ-fixed space is 0 | Pass; requires both vanishings |
| 4.3 Pairing-matrix generation | Matrix diag(1,X) | Determinant X; rank 2 off X=0 and rank 1 at X=0 | Pass; generation needs determinant cover, not one fiber |
| 4.3 Uniform relation control | Projective pieces generated by m sections | Split presentation gives m generators and at most m relations uniformly | Pass; supplies §1.1a, not just bounded ranks |
| 4.4 Relative Herr perfectness | Trivial and Tate lines, K=ℚ_p; rank 0 | Euler 1−2=−1 and −2+1=−1; zero gives 0 | Pass; expected amplitude [0,2] |
| 4.4 Derived duality | Zero; one-dimensional perfect pair | Dual of zero is zero; pairing matrix (1) has inverse (1) | Pass; shifts must still use degree 2 |
| 4.5 Nonflat base change | C=[A —X→ A], A=E⟨X⟩, B=A/(X), degrees 0,1 | Before: H⁰=0,H¹=B. After derived specialization: H⁰=B,H¹=B; Tor₁ᴬ(B,B)=B | Pass; naive cohomology tensor fails |
| 5.0 Independent tower | ℤ_p with transition p versus transition id | First inverse limit 0 (element divisible by every pⁿ); second inverse limit ℤ_p | Pass; norm maps cannot be replaced by identities |
| 5.0 Shapiro action | Order-three weight η | Inverse universal action specializes to ζ₃⁻¹=ζ₃²; direct action gives ζ₃ | Pass; independent tower fixes orientation |
| 5.1 Integral comparison | ψ=id toy complex; actual zero representation | ψ-complex H¹=H²=M and H⁰=0; zero tower and zero complex both 0 | Pass; degree convention, not a redefinition of the tower |
| 5.1 Restriction/corestriction | Degree-two extension, invariant unit | Restriction then corestriction multiplies by 2, not 1 | Pass; norm normalization retained |
| 5.2 Character specialization | Unit and η of order 3 | Twist uses η⁻¹ with value ζ₃²; trivial twist has H⁰ dimension 1 | Pass; derived specialization can create H⁰ |
| 5.3 Tensor correction | Two unit modules at η(γ)=ζ₃ | Dfm(1⊗1): ζ₃⁻¹; Dfm(1)⊗Dfm(1)⊗U∨: ζ₃⁻²ζ₃=ζ₃⁻¹ | Pass; previous R01 repaired |
| 5.3 Marked tensor map | Basis rescaling by u | Corrected tensor basis scales u²u⁻¹=u | Pass; actual comparison map has one universal line |
| 5.3 Deformation complex | One universal procyclic coordinate z | Multiplication by z has kernel 0, cokernel E; specializes at z=0 to the zero differential | Pass; derived character fiber retains kernel |
| 5.3 Dual involution | Character η | ι²(η)=η; η·η⁻¹=1 | Pass; dual twist is not left uncorrected |
| 5.4 Analytic comparison | T and pT; zero V | Both rational towers give V and identical analytic realization; zero remains 0 | Pass; lattice independence is rational |
| 5.5 Pairing specialization | Two degree-one maps scaled by ℓ=logχ(γ) | Tensor factor ℓ²; specialization uses both scaled classes, not one factor ℓ | Pass; matches §4.3's two-map square |
| 5.5 Trace and inverse weight | Degree-two extension, scalar 1; η(γ)=ζ₃ | Trace(1)=2; dual weight ζ₃² | Pass; both trace and inversion preserved |
| 5.6 Geometric nontriangulinity | E=ℚ₃, L=E(ζ₃), restriction of a nontrivial order-three line | E-rank 2, over L splits η⊕η⁻¹; φ-fixed space contains rank-2 V; dual ψ-cokernel is nonzero | Excluded by geometric hypothesis; mere E-irreducibility insufficient |
| 5.6 Annular generation | Polynomial projector negative control | (1−φ)(ψ-fixed constants)=0 but kerψ contains U | Pass; generation is not asserted for arbitrary operators |
| 5.6a Embedded differential lattice | V=E and E(1) | Unit horizontal period 1; Tate period t⁻¹e₁ rather than e₁ | Pass; localization is necessary |
| 5.6a Tensor, dual and radius map | Tate line and its dual | Evaluation (t⁻¹e₁)(te₋₁)=1; exponents add (−r)+(−s)=−(r+s) | Pass; ambient identity preserves the marked lattice |
| 5.7 Exponential image | V=ℚ_p and ℚ_p(1) | Unit: tangent space 0, H¹_e=0, H¹_f dimension 1. Tate: unit Kummer direction dimension 1 for K=ℚ_p | Pass; image is H¹_e, not H¹_f |
| 5.7 All-level criterion and injectivity | Rank-two absolutely irreducible V | Vᴴ has dimension 0 or 2 by normality; 2 would force an abelian quotient action, impossible for absolute irreducible rank 2; hence 0 | Pass; kernel of 1−φ is 0 under actual hypotheses |
| 5.7 t-lattice distinction | Unit differential equation as negative control | 1∉tE[[t]], while t∈tE[[t]] | Pass; membership in tN is not mere membership in N |
| 6.0 Wach height and filtration | Trivial line; ℚ_p(−1), n=πe | Trivial height 0; φ(n)=q n, q=φ(π)/π, and Fil¹ contains its crystalline generator | Pass; height/filtration distinguish the twist |
| 6.0 Étale rational condition | Rank-one φ(e)=pe over B⁺ | p is a unit in B⁺, but extension has nonzero slope and is not étale | Excluded by the explicit étale condition |
| 6.1 Coefficient/base change | Unramified degree-two extension; pT | Coefficient trace of 1 is 2; Wach lattice for pT is pN(T) | Pass; exact integral embedding remembered |
| 6.2 Positive analytic versus Robba | p=3, u=1/π−1/((1+π)³−1) | ψ(u)=0; principal part 2/(3π)≠0, so u is not positive analytic | Pass; good coordinates do not span full Robba ψ-zero |
| 6.2 Good-basis coordinates | n′=2n, p=3 | Frobenius vector multiplied by 2; coordinate multiplied by 1/2 | Pass; inverse matrix required |
| 6.2 Positivity and twist | ℚ_p, ℚ_p(1), ℚ_p(−1); positive weight r | Fil⁰ ranks 1,0,1; twist by m=r changes weight r to 0 | Pass; rational theorem's weight scope retained |
| 6.2 Rank zero and scalar extension | Zero V; finite E′/E | Both coordinate spaces 0; a rank-d positive module remains rank d over E′ | Pass; no arbitrary-basis assertion |
| 6.3 ψ-fixed containment map | ψx=x | ψ((1−φ)x)=x−x=0; changing sign gives its negative, still zero | Pass; agrees with Iwasawa interface |
| 6.3 Lattice scaling | T↦pT | Source fixed lattice and target N(T) both multiply by p | Pass; no rational-only substitute |
| 7.1 Rank-one character tensor | δ₁,δ₂; Tate character over ℚ_p | φ on tensor is δ₁(p)δ₂(p); Tate value at p is 1 while x(p)=p | Pass; reciprocity normalization consistent |
| 7.1 Period submodule | tR⊂R | Quotient R/t≠0 is torsion, so not a projective rank-zero quotient | Pass; stability does not imply saturation |
| 7.2 Embedding-wise exponents | Two embeddings, exponents (1,−1) | Neither exceptional all-nonpositive nor cyclotomic all-nonnegative condition holds: h⁰=h²=0, h¹=[K:ℚ_p] | Pass; mixed weights not collapsed to a sum |
| 7.2 Saturation exponents | t_σ²R(δ)⊂R(δ) | Unsaturated character δx_σ²; saturation character δ | Pass; exponent removed rather than preserved |
| 7.2a Sen polynomial | Unit, Tate, rank 0; infinitesimal weight ε | Polynomials T,T−1,1,T−ε respectively | Pass; degree and nilpotent coefficients visible |
| 7.3 Artinian weight | δ=1+εlog on E[ε]/ε² | Residual derivative 0; actual derivative ε≠0, not a scalar integer | Pass; closed fibers cannot establish de Rham weight |
| 7.3 Smooth versus algebraic | Finite-order character; x on units | Derivatives 0 and 1; first locally constant, second not | Pass; both directions of criterion tested |
| 7.4 Rank-one family classification | Character line twisted by coefficient line L | Parameter stays δ; coefficient factor is L, so a nontrivial L does not admit a global chosen basis | Pass; classification includes line bundle |
| 7.4 de Rham family scope | Noninteger weight; unramified δ(p)=a≠0 | First fails locally algebraic criterion; unramified character has weight 0 regardless of v_p(a) | Pass; de Rham does not mean étale |
| 7.5 Strictness | Repeated unit character rank 2; rank 1 | Hom dimensions 2 and 1; rank-two flags form ℙ¹, rank-one flag unique | Pass; a split flag need not be strict |
| 7.5 Rank zero | Empty ordered parameter list | Zero filtration, zero graded pieces, no strictness equations to check | Pass; empty case retained |
| 7.6 Blowup carrier | Unit ideal; principal regular ideal (X) | Both blowups identity; on X-chart for (X,Y), chart ring A[Y/X] has no X-torsion | Pass; naive equation chart alone insufficient |
| 7.6 Image versus cokernel | A —X→ A | Image (X) free rank 1; cokernel A/(X) nonflat, Tor₁(A/(X),A/(X))=A/(X) | Pass; claim is about image |
| 7.6 Further pullback | X↦ε in B=E[ε]/ε² | Image (ε) has length 1; nonzero free B-module has length at least 2 | Pass; excluded by non-zero-divisor condition |
| 7.6 Dominant nonflat change | A=E⟨X,Y⟩→E⟨X,T⟩, Y↦XT | Ordinary X-chart: X(U−T)=0; dominant transform: U=T | Pass; corrected dominant transform equals blowup of (X) |
| 7.6 Fitting fiber criterion | Free ranks 0 and 1 over field | Rank 0: Fitt₀=1; rank 1: Fitt₀=0,Fitt₁=1 | Pass; agrees with pinned API, not a flatness criterion |
| 7.7 Rank-one quotient | Everywhere strict unit line | Quotient map id, kernel 0, cokernel 0, bad locus empty | Pass; no unnecessary t-defect |
| 7.7 Dominant flat compatibility | Cusp B over disc A, x↦u=s²,v=s³ | B=A⊕Av free rank 2; base-changed identity is B; normalized construction is E⟨s⟩; s∉B but s²=u | FAIL; R01 |
| 7.7 Proposed repair | Smooth cusp×disc→cusp | Normalization E⟨s,z⟩ on either route; u↦s²,v↦s³,z↦z | Pass with normalization-compatible base change |
| 7.8 Global and saturated flags | Graded t_σᵐR(δ), m=0,1,2 | Coherent labels δ,δx_σ,δx_σ²; all saturate to δ in R(δ) | Pass; labels can change on special fibers |
| 7.8 Degenerate and nonreduced cases | Zero; already saturated distinct split family; E[ε]/ε² | Zero flag empty; split defect empty; nilpotent family and reduction have identical closed points but ε≠0 | Pass; global reduced theorem and fiber theorem kept distinct |

The table contains 142 adversarial rows covering all 60 numbered target subsections, including the 15 seeded targets, the headline groups and both findings. Some subsections have separate rows for their constructions, identities and negative controls. The normalizations are also checked against the suppliers: the slope of φ(e)=pe changes from +1 to −1, the Tate period is t⁻¹e₁, integral trace is pψ, and the Shapiro action is the inverse universal character.

**Pinned library and duplication audit.** Mathlib is pinned at 6b7abb3c7686292736be2955bd3eb9ebf63b456a and Tau Ceti at a91d3aafa8cd3e6bc33dfde0d7677ed0f1625039. The following 35 declarations were opened at these pins, rather than inferred from names or checked on a newer library. Their files and defining hypotheses matter here.

| Pin file and line | Declarations and verified content |
|---|---|
| `Mathlib/LinearAlgebra/TensorProduct/Basic.lean:122`, `:133` | `TensorProduct.lift`, `TensorProduct.ext'`: semilinear tensor lift and pure-tensor extensionality. No new tensor carrier is needed. |
| `Mathlib/Algebra/Category/ModuleCat/Basic.lean:117` | `ModuleCat.ofHom` wraps the actual linear map. |
| `Mathlib/Algebra/Homology/HomologicalComplex.lean:890`, `:927` | `CochainComplex.of`, `CochainComplex.ofHom`: square-zero differentials and commuting chain-map squares are required. |
| `Mathlib/Algebra/Homology/Homotopy.lean:125`, `:947` | `Homotopy`, `HomotopyEquiv.toHomologyIso`: the field equation is `f=dNext+prevD+g`; this fixes the orientation used in §3.3. |
| `Mathlib/Algebra/Homology/ShortComplex/ModuleCat.lean:131`, `:173` | `CategoryTheory.ShortComplex.moduleCatCyclesIso`, `moduleCatHomologyIso`: actual kernel and kernel/image quotient with structural maps. |
| `Mathlib/Algebra/Category/ModuleCat/Descent.lean:59` | `comonadicExtendScalars` requires a faithfully flat ring map. It does not by itself construct the fixed-basis torsor. |
| `Mathlib/NumberTheory/Cyclotomic/CyclotomicCharacter.lean:307`, `:336` | `cyclotomicCharacter`, `cyclotomicCharacter.continuous`: character on ring automorphisms, continuous after restriction to the Galois group. Without enough roots the native total definition is trivial; the algebraic-closure application has enough roots. |
| `Mathlib/Algebra/Module/LinearMap/Defs.lean:325` | `LinearMap.map_smulₛₗ`: scalar is σ(c), not c. |
| `Mathlib/Algebra/SkewPolynomial/Basic.lean:93`, `:217` | `SkewPolynomial`: twisted monoid algebra with relation Xa=σ(a)X; no automorphism assumption on σ. |
| `Mathlib/RingTheory/WittVector/Truncated.lean:62` | `TruncatedWittVector`: underlying carrier `Fin n → R`; ring structure is separately transported. `mk` and `coeff` at :74 and :78 were also inspected. This file contains no truncated Frobenius declaration replacing the small retained definition. |
| `Mathlib/RingTheory/Flat/EquationalCriterion.lean:287` | `Module.Flat.projective_of_finitePresentation`: flatness and finite presentation must be over the same ring. This does not discharge the Witt headline from ℤ/pⁿ-flatness. |
| `Mathlib/RingTheory/Trace/Basic.lean:501` | `Algebra.traceForm_nondegenerate`: finite-dimensional separable field extension; no such assertion for inseparable extensions or integral trace lattices. |
| `TauCeti/RingTheory/Trace/Dual.lean:85`, `:98` | `Module.Dual.traceCompEquiv`, `Module.Dual.traceCompEquiv_apply`: precisely the generic target duplicated in R02. |
| `TauCeti/RepresentationTheory/Homological/ContCohomology/Cup/Product.lean:595` | `TauCeti.ContCohomology.explicitCup11`: continuous topological coefficients and continuous equivariant additive pairing; no discrete-coefficient restriction. |
| `TauCeti/RepresentationTheory/Homological/ContCohomology/Corestriction/Basic.lean:467`, `:471` | `explicitCor1`, `explicitCor1_eq_transversal`: open finite-index transfer and transversal independence. |
| `TauCeti/Topology/Algebra/Group/Profinite/CompletedGroupAlgebra/Basic.lean:145`, `:161`, `:179`, `:252`, `:265`, `:421` | `TauCeti.completedGroupAlgebra`, `proj`, `ext`, `of`, `proj_surjective`, `continuous_of`: compatible quotient-group-algebra families; group elements and topology are retained. |
| `TauCeti/RingTheory/FittingIdeal/Basic.lean:343`, `:349`, `:389`, `:409`; `TauCeti/RingTheory/FittingIdeal/BaseChange.lean:134`, `:175`, `:184` | `fittingIdeal`, presentation minors, free-summand shift, free-rank criterion, arbitrary scalar base change, field-fiber and prime-fiber rank criteria. These require finite modules; the free-rank iff includes nontriviality. They do not assert flatness from fiber dimensions alone. |

The count includes the seven displayed Fitting operations; the two Witt coordinate helpers were inspected in addition. Object searches also covered semilinear Frobenius, Witt projectivity, trace composition, completed group algebras, Fitting ideals, Robba rings, Wach modules, Herr complexes and Sen operators. The retained theorem's fully qualified name and its helper's name have no second declaration in the searched pins or indexed roadmap files. The trace-dual construction is the concrete duplication found; R02 gives its exact owner.

**Roadmap ownership and supplier resolution.** The citation service was rerun against main fa41b37 and the supplied open-head index. It found no cross-roadmap citation or own Lean name absent everywhere. Its library-name check reported that it had no pinned packages available; the local pin inspection above supplies that part of the audit. Search results were treated as leads and the relevant files were opened. Main was used for existing roadmaps, not revisions of those roadmaps in other pull requests. The following 17 direct supplier roadmaps resolve their contracts:

| Supplier file (README unless specified) | Resolved sections / lines and ownership |
|---|---|
| `TauCetiRoadmap/PadicPeriodRings/README.md:89`, `:172`, `:217`, `:417`, `:449`, `:470` | §§1.1–1.5 and 3–4.3: completed field, traces, Tate–Sen, period topologies, invariants and fundamental sequence. The sequence itself is distinguished from the downstream continuous section/boundary construction. |
| `TauCetiRoadmap/NoncommutativeAndEquivariantIwasawa/README.md:1714`, `:3736` | F.3: finite/compact/rational cochains, coherent quotient action, local duality; F.6: field realization, slope filtration, embedded differential lattice and general period-boundary prefix. This is the earlier owner; §§1.0,1.0b,5.6a,5.7 consume it. Its references to this roadmap are consumer comparisons, not inputs to those stages. |
| `TauCetiRoadmap/DerivedModuleAlgebra/README.md:1403`, `:1573` | §1.T.1 module tower shift, kernel/cokernel and Milnor sequence; §1.1 derived limits, cofinality and homotopy-square maps. This roadmap only forms its arithmetic tower. |
| `TauCetiRoadmap/PerfectoidSpaces/README.md:4040`, `:4292`, `:4355`, `:4525`, `:4611`, `:4652`, `:5517`, `:8424` | P1.6, P1.10–11, P1.16–18, P1.31 and P3.7–13: tilting, Witt/θ, cyclotomic field, finite étale comparison and almost purity. |
| `TauCetiRoadmap/PerfectoidTowers/README.md:1896` | P9.0: discrete-target continuous lifts, continuous cochains into inverse limits and canonical compact-coefficient comparison. Arbitrary topological surjections are not covered by the lift theorem. |
| `TauCetiRoadmap/ProfiniteCohomology/README.md:583`, `:1549`, `:1739`, `:2091` | Layers 0–12: discrete/finite cochains and all-degree carrier, Shapiro, cups and cohomological dimension. Compact arithmetic and period coefficients need the separately named comparisons. |
| `TauCetiRoadmap/ClassFieldTheory/README.md:920`, `:1220`, `:1312`, `:1505` | Layers 5–7,9: finite local duality/Euler formula, local reciprocity and Weil group. Arithmetic versus geometric reciprocity is explicitly transported by inversion. |
| `Completed/LocalFieldsRamification/README.md:576` | Layer 2: finite unramified extension and arithmetic residue Frobenius; includes separability in the general predicate. |
| `Completed/AdicSpaces/README.md:691` | Layer 6: the d=1 adic Fargues–Fontaine curve. The d-dependent curves and patching rings in §1.0c are an extension of that supplied carrier. |
| `TauCetiRoadmap/AdicSpacesPartII/README.md:1769`, `:2759` | R0.3 and R0.5: completed tensors of Huber pairs and Banach modules, with their topologies. |
| `TauCetiRoadmap/AlgebraicVectorBundles/README.md:215`, `:228`, `:269`, `:290`, `:306`, `:340` | L0A–L2B: sheaves, quasicoherence/finite local freeness, relative Spec and geometric vector-bundle dictionary. |
| `TauCetiRoadmap/CrystallineCohomology/README.md:6630` | CR.4.7: higher-rank perfect-field Dieudonné–Manin classification. Standard-block semisimplicity is only asserted over an algebraically closed field; pure Banach-base local systems are additional here. |
| `TauCetiRoadmap/ColemanPowerSeries/README.md:5014`, `:5030`, `:5051`, `:5067`, `:5088` | §§1.45–1.49: integral scalar trace, pψ divisibility and zeroth coordinate. §1.48 explicitly consumes IntegralIwasawaTheory §7.1; the indirect chain points down to this roadmap. |
| `TauCetiRoadmap/PadicMeasuresIwasawaAlgebras/README.md:1229`, `:2213`, `:3367` | §§2.2,3a.1,5.2: integral measure ψ, unit-weight components, compact Hausdorff inverse-system exactness. The dyadic factor {±1} is present. |
| `TauCetiRoadmap/PadicFunctionalAnalysis/README.md:343`, `:354`, `:362`, `:400`, `:443`, `:457`, `:682`, `:706`, `:776`, `:837` | §§1.2–1.4,2.2–2.4,4.3–4.4,4.7,5.1–5.3: quantitative Banach tools, strict splittings, analytic stages, Amice transform and unit characters. General-K compact-unit geometry is not obtained by mere coefficient extension. |
| `TauCetiRoadmap/RigidAnalyticGeometry/README.md:177`, `:205`, `:235`, `:263`, `:464`, `:479`, `:505`, `:617`, `:690`, `:762` | §§1.1–1.4,6.1–6.3,7.3,8.1,8.4: affinoids, site, coherence, relative analytification and proper GAGA. Analytic Rees charts/flattening are the new Layer 7 construction, not a supplied theorem. |
| `TauCetiRoadmap/AdicSpacesPartIII/README.md:10053` | R3.4: quasi-Stein exhaustion, dense restrictions, dense Banach inverse-limit exactness and Theorems A–B. The additional uniform generator/relation criterion is §1.1a here. |

The ownership search used both `roadmaps grep`/`show` and object searches in the board packages. Relevant open consumers include `TauCetiRoadmap/PadicHodgeRegulators/README.md:13` and `:57`, which consume the signed Herr and Iwasawa interfaces and distinguish arbitrary de Rham modules from the representation-only lattice of §5.6a. `TauCetiRoadmap/VectorBundlesAndIsocrystals/README.md:21` and `:71` consume this roadmap's twisted local systems and global pure comparison. `TauCetiRoadmap/PadicHodgeTheory/README.md:983` consumes the common F.6 differential lattice. `TauCetiRoadmap/SelmerIwasawaCohomology/README.md:1374` and `:1406` keep the same inverse-character Shapiro convention. `TauCetiRoadmap/LocallyAnalyticDistributions/README.md:1916` treats compact character geometry as supplied (its old §4.0 label refers to the object now in §§2.7–2.8). These consumer references create no upward edge here. Board-package hits for height-one valued-field decompletion and toric semistable-chart decompletion concern different objects; no second owner of this roadmap's cyclotomic arithmetic decompletion was established.

No new owner was moved upward or replaced by a later supplier. The roadmap is absent from main as a pre-existing folder and is not a re-planning of an existing roadmap. The scope explicitly imports the field core and leaves later regulator, GL₂ and distribution applications with their owners. The broad object search found no additional collision of the two fully qualified Lean names.

**Shape.** The main-branch DerivedModuleAlgebra, RigidAnalyticGeometry and PadicFunctionalAnalysis READMEs were used for the comparison. This README has the summary, ownership, conventions, contracts, build explanation, eight layers, prose APIs, discriminating Checks, layer examples/dependencies, consumers and references. Its 128 Needs clauses were read. The 60 target subsections retain the general relative theory, integral/dyadic distinctions, nonreduced coefficients where supported, and field hypotheses where the sources require them. The short Lean file is appropriate to the missing carriers; no minimum declaration quota was imposed.

## Not verifiable

- **NSW, Theorem 2.4.1, Chapter II §4, p.111:** the source service resolved DOI 10.1007/978-3-540-37889-1 only to a paywalled source and classified it as uncertified. The precise printed theorem was not read. The F.3 supplier contract and the finite-group counterchecks were inspected independently. This is not a renewed missing-text request.
- FF Theorem 11.5.1 is no longer in this category: the legal HAL text was read at FF lines 15225–15285. Failed initial URLs for LLZ-2011, KL-families, Pottharst, DLB, Ding, Nekovar and Bloch-Kato were resolved through the source service using publisher/open-repository/institutional copies. No unresolved missing-text request remains.
- Retrieval of the other cited works is not certification of every unsampled proof. The table certifies the specified source sample and records finite mathematical tests; it does not prove the analytic existence results or make the `sorry` elaboration a truth check.

## Source issues

These are source defects, not additional numbered roadmap findings. The KL-II Appendix A corrections were read at lines 7269 and 7284–7292; Berger's corrections at Berger-errata lines 75–83. The README already avoids the two unrestricted pullback assertions of KPX Corollary 6.3.6. The normalization overclaim in Remark 6.3.11 remains R01.

- **Misprint** in KL-I at Lemma 1.5.2, manuscript p.24: the source says to clear the bottom-left block; it should clear the top-left block; affects the proof.
- **Gap** in KL-I at Lemma 3.2.6, manuscript pp.73–74: the source says invariant tuples yield an invariant basis; it should restrict to the determinant-invertible clopen locus; affects the proof.
- **Error** in KL-I at Proposition 3.2.7, manuscript p.74: the source says to descend Witt coefficients alone; it should tensor with the coefficient representation and take diagonal invariants; affects the proof.
- **Misprint** in KL-I at Lemma 3.2.12, manuscript p.75: the source says to sum row indices while fixing a column; it should sum columns in each fixed row of (I−AB)x=0; affects the proof.
- **Misprint** in KPX at Proposition 2.1.13, manuscript p.10: the source says sufficiency is immediate and then proves necessity; it should reverse those labels for global generation versus uniform local generation; affects the proof.
- **Error** in KPX at Definition 2.2.2, manuscript p.16: the source says the Frobenius source is free of rank p over its target; it should make the target free over the source's Frobenius image; affects a stated result.
- **Error** in KPX at Corollary 6.3.6(1), manuscript p.67: the source says every further pullback preserves flat image; it should require preservation of the regular Fitting generator or distinguish pullback of the image sheaf; affects a stated result.
- **Error** in KPX at Corollary 6.3.6(1–2), manuscript pp.67–68: the source says ordinary blowups commute with dominant base change; it should require flatness or use successive dominant transforms; affects a stated result.
- **Error** in KPX at Remark 6.3.11, manuscript p.72: the source says its normalization-containing modification commutes with dominant flat base change; it should require normalization-compatible changes, for example smooth changes, or use a different construction; affects a stated result.
- **Misprint** in Berger-intro at §IV.4.1, manuscript p.29: the source says every de Rham lattice embeds in unlocalized D_rig; it should retain the preceding positivity restriction or place the lattice in D_rig[1/t]; affects a stated result.
- **Gap** in Berger-Wach-2004 at Definition III.4.1, manuscript p.21: the source says rational height and Γ conditions define the Wach category; it should also require étaleness after B_F scalar extension; affects a stated result.
- **Gap** in Berger-Wach-2004 at Theorem III.4.4, manuscript p.22: the source says a filtered class modulo π directly has a filtered lift; it should improve the lift using successive γ−χ(γ)^j operators; affects the proof.
