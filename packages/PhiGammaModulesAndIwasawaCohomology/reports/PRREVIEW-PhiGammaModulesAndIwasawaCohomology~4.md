# Review of PhiGammaModulesAndIwasawaCohomology (pull request #1310 at 09f2de3)

**Verdict:** accepted

No numbered findings remain. Both previous findings are repaired. This is an AI-assisted incremental review of 49 changed lines since 2b59ba3, confined to the repairs and their dependencies. Acceptance means ready for a human's final approval.

## Previous findings

- R01 — repaired: `TauCetiRoadmap/PhiGammaModulesAndIwasawaCohomology/README.md:3147` requires compatibility at every normalization stage. Lines 3160–3169 distinguish the finite flat cusp counterexample from the smooth product example; the reduced-base existence theorem remains unchanged.
- R02 — repaired: `TauCetiRoadmap/PhiGammaModulesAndIwasawaCohomology/README.md:155` imports the two pinned trace-dual declarations. Lines 1670–1676 retain extension to finite-projective Robba modules and its arithmetic compatibility.

## Verified sound

**Scope and validation.** The head is 09f2de3bb4465e9f08495a6765a6a6632a42cdd4. Only the README changed since the preceding review; `Suggested.lean` is identical. The comparison with origin/main has no changes outside this roadmap folder. I read the normative repository README and CONTRIBUTING guidance, compared the main-branch RigidAnalyticGeometry and PadicFunctionalAnalysis shapes, and inspected every changed passage. Untouched mathematics is explicitly carried from [r3], rather than represented as a new full review.

The worker's gate passes every rule, including the targeted build. The independent gate rerun also passes all reported rules. A separate targeted build of `TauCetiRoadmap.PhiGammaModulesAndIwasawaCohomology.Suggested` and direct `lake env lean` elaboration both succeed with only the single expected `sorry` warning. No PR file was edited. The independent dependency check reports exactly:

```text
depcheck: 205 roadmaps, 1493 edges, 0 problem(s)
```

There is no UPWARD, CYCLE or moved line. No new supplier edge is introduced. The citation resolver, against main fa41b37 and the supplied open-head index, reports no missing cross-roadmap citation or roadmap Lean name. Its inability to inspect pinned library names is covered by the local source inspection below.

**Normalization repair.** README:3119–3127 retains the quotient existence theorem for reduced rigid spaces with the stated dense saturated one-dimensional-H⁰ hypothesis. The new condition at :3147–3154 concerns each normalization square, not the desired compatibility of the entire modification. Flat scalar extension preserves cohomology and Fitting ideals; §7.6 identifies each unnormalized blowup; the additional assumption identifies every normalization. Induction then identifies the resulting coefficient line and evaluation map. This does not restrict the quotient existence theorem to smooth bases.

For B=ℚ₃⟨u,v⟩/(v²−u³), B is free over A=ℚ₃⟨x⟩ on (1,v), with x=u. Its image in ℚ₃⟨s⟩ consists of series with zero s coefficient. The element s=v/u is integral and absent from B. The negative-control routes therefore give B and ℚ₃⟨s⟩ respectively. For B⟨z⟩ over B, both normalization routes give ℚ₃⟨s,z⟩ with identical coordinates. The new Checks are correct. The revised strict rank-one Check also correctly distinguishes λ=id on X′ from the base map X′→X.

I reread §7.6, the §4.4–4.5 perfectness/base-change inputs, the §7.2 field-submodule input and the §7.8 consumers. The flag construction uses existence and finite-projective kernels, so it does not require the discarded unrestricted compatibility law. The distinction between ordinary flat pullback and dominant transforms remains intact: the dual-number image still has length one over a length-two ring; the nonflat dominant chart still has an extra component X(U−T)=0 before taking its dominant transform.

**Trace repair.** README:63–65, :155–160 and :1670–1676 consistently assign the generic finite-separable trace-dual equivalence to Tau Ceti. Its hypotheses, F-linearity and evaluation formula match the pin; V need not be finite-dimensional. Extending the perfect coefficient pairing to the Robba coefficient ring gives the free-module identification, and naturality restricts it to idempotent summands. Frobenius and Γ act on the Robba factor and fix E, so they commute with coefficient trace. The cup/invariant formula at :1678–1696 and subsequent duality use the same unnormalized field trace, including its degree factor. No substitute Lean headline was introduced.

**Sources and seeded sample.** The sample contains 15 targets. None was edited. Section 7.6 is also a direct input to the changed §7.7 claim and was freshly checked. The other 14 targets (0.3, 0.5, 0.6, 1.2, 2.6, 2.8, 5.1, 5.2, 5.6a, 6.2, 6.3, 7.2, 7.3, 7.4) retain their adversarial rows from [r3]. This does not claim that r3's different locator sample freshly certified all these locators. No newly changed locator is marked unverified.

The source service retrieved the legal arXiv:1203.5718v3 text under the existing key KPX. Its manuscript numbering agrees with the README. These passages were read this round:

| Target | Locator and extraction | Result |
|---|---|---|
| 7.6 Fitting images | KPX Lemma 6.3.5, pp.66–67; KPX line 2616–2671 | The adjugate argument requires a regular generator; the README retains it. |
| 7.6 Flattening and pullback | KPX Corollary 6.3.6, pp.67–68; KPX line 2672–2707 | The README retains its corrections to arbitrary further pullback and nonflat dominant base change. |
| 7.7 Quotient construction | KPX Theorem 6.3.9, pp.68–71; KPX line 2718–2827 | Reducedness, dense saturated H⁰, coefficient line, t-power cokernel and rank d−1 kernel agree. Initial normalization is at line 2738 and intermediate normalization at line 2761. |
| 7.7 Changed compatibility | KPX Remark 6.3.11, p.72; KPX line 2862–2865 | The source makes the unrestricted assertion. The README now supplies the missing normalization hypothesis explicitly. |
| 7.8 Dependent outputs | KPX Corollary 6.3.10 and Theorem 6.3.13, pp.71–72; KPX line 2828–2878 | The unchanged flag and fiber statements do not depend on unrestricted flat compatibility. |

**Pinned declarations and ownership.** Mathlib is pinned at 6b7abb3c7686292736be2955bd3eb9ebf63b456a and Tau Ceti at a91d3aafa8cd3e6bc33dfde0d7677ed0f1625039. I reopened these 11 declarations, counting the three Witt carrier/coordinate definitions:

| File and line at the pin | Declaration and verified scope |
|---|---|
| `TauCeti/RingTheory/Trace/Dual.lean:85`, `:98` | `Module.Dual.traceCompEquiv`, `Module.Dual.traceCompEquiv_apply`; finite separable field extension and compatible scalar tower, with no finiteness requirement on V (binders :47–48). |
| `Mathlib/RingTheory/Trace/Basic.lean:501` | `Algebra.traceForm_nondegenerate`; finite-dimensional separable field extension, not an integral perfect-pairing assertion. |
| `TauCeti/RingTheory/FittingIdeal/BaseChange.lean:134`, `:175`, `:184` | `TauCeti.fittingIdeal_baseChange`, `fittingIdeal_map_eq_bot_iff_lt_finrank`, `fittingIdeal_le_iff_lt_finrank`; arbitrary commutative scalar extension and finite-module fiber ranks, not flatness of arbitrary image modules. |
| `TauCeti/RingTheory/FittingIdeal/Basic.lean:389` | `TauCeti.fittingIdeal_prod_add_finrank`; finite free summand shifts the Fitting index by its rank. |
| `Mathlib/RingTheory/Flat/EquationalCriterion.lean:287` | `Module.Flat.projective_of_finitePresentation`; flatness and finite presentation must be over the same ring. |
| `Mathlib/RingTheory/WittVector/Truncated.lean:62`, `:74`, `:78` | `TruncatedWittVector`, `mk`, `coeff`; native carrier Fin n→R and coordinate constructors. The ring structure is additional to the carrier. |

The ownership audit used `roadmaps grep` and `roadmaps show`, plus object searches in the pins and board-package READMEs. The focused search for the Robba trace-dual extension and Fitting/triangulation quotient located this roadmap and no competing construction. The generic equivalence belongs to the pinned Tau Ceti file above. This round checks ownership of changed objects; the wider audit is carried from [r3]. It introduces no new fully qualified Lean name.

Five geometric supplier sections used by the construction resolve on main in `TauCetiRoadmap/RigidAnalyticGeometry/README.md`: §6.1 at :464 (G-sites and sheaves), §6.2 at :479 (rigid spaces, gluing and fiber products), §6.3 at :505 (properness), §8.1 at :690 (relative analytification and local comparisons), and §8.4 at :762 (proper GAGA supplier contract). The specialized analytic Rees/Fitting flattening remains §7.6 here. No generic normalization/base-change theorem is newly claimed from these sections.

**Lean signatures and padding.** Both declarations were checked again with `#check @name` in a scratch copy. `truncatedWittFrobenius` retains CommRing and CharP. `wittProjective_of_flat_phi` retains primality, n>0, perfectness, finite presentation over Wₙ(R), flatness over ℤ/pⁿ, the additive equivalence F and its semilinearity. They agree with README:395–404; no binder changed or disappeared. The theorem was probed with `rfl`, `simp`, `infer_instance` and `exact Module.Flat.projective_of_finitePresentation`, each required to close the whole goal. None succeeded. The last needs Wₙ(R)-flatness, not merely ℤ/pⁿ-flatness. No padding was detected.

The unchanged headline inventory is: Witt projectivity and Artin–Schreier–Witt descent; small-group Lang and compact descent; uniform annular presentation, relative/integral realization, equivariant decompletion and pure comparisons; Herr/Galois comparison, finiteness, Euler characteristic, duality and derived base change; integral/analytic Iwasawa comparison and specialization; ψ-fixed generation and the all-level exponential criterion; Wach existence and coordinates; rank-one classification, flattening, global quotient and triangulation. Witt projectivity is stated. The module docstring names the other groups and their missing period, Robba, cochain, sheaf, Wach or triangulation carriers. Neither repair changes their statability.

**Adversarial calculations.** The first table retains 138 untouched rows from [r3], citing it on every row. Four affected rows are replaced by ten fresh computations in the second table. These are finite tests and convention checks, not proofs of the general analytic theorems.

[r3]: packages/PhiGammaModulesAndIwasawaCohomology/reports/PRREVIEW-PhiGammaModulesAndIwasawaCohomology~3.md

| Statement | Instance(s) | Computed values on the two sides / competing models | Result; change |
|---|---|---|---|
| 0.1 Frobenius linearization | S=𝔽₃[U], σ(U)=U³, unit module | L(1⊗U)=U³=L(U³⊗1); L(U⊗1)=U, a distinct value | Pass; none; carried from [r3] |
| 0.1 Étaleness and morphisms | Rank zero; nonzero rank-one module with F=0 | Linearization 0→0 is bijective; on rank one its kernel is the whole line | Pass; zero-F wrong model excluded; carried from [r3] |
| 0.2 Free cover | S=𝔽₃×𝔽₃, M=eS | M has component ranks (1,0), complementary kernel (0,1), cover (1,1) | Pass; no constant-rank assumption added; carried from [r3] |
| 0.2 Equivariant splitting | F(a,b)=(a+b,b) on 𝔽₃² | Fixed vectors have b=0; no fixed lift of quotient element 1 | Pass; split-surjection overclaim excluded; carried from [r3] |
| 0.2 H⁰, H¹ and Ext | F=id and F=2id on a line | F−1=0 gives (H⁰,H¹)=(E,E); F−1=id gives (0,0) | Pass; none; carried from [r3] |
| 0.3 Idempotents and fixed bases | 𝔽₂, 𝔽₂²; rank-one fixed tuples over 𝔽₃ | x²=x has 2 and 4 solutions; fixed vectors number 3 but fixed bases number 2 | Pass; tuples are not the basis torsor; carried from [r3] |
| 0.3 Witt truncation | W₂(𝔽₃)→𝔽₃, chosen basis 2 | Lifts 2,5,8 are all units; three lifts, no distinguished one | Pass; no canonical lift asserted; carried from [r3] |
| 0.4 Witt projectivity headline | R=𝔽_p, n=1,2; free ranks 0,1,2 | Wₙ(R)=ℤ/pⁿ, F=id, projective ranks 0,1,2 on both sides | Pass; same test at p=2 and 3; carried from [r3] |
| 0.4 Flatness is essential | ℤ/9-module ℤ/3 | Tor₁(ℤ/3,ℤ/3)=ℤ/3; quotient is not projective over ℤ/9 | Excluded by flatness; none; carried from [r3] |
| 0.4 Frobenius-stable ideal | R=𝔽₃[T]ᵖᵉʳᶠ, J=(T) | σ(J)=(T³) is strictly smaller than (T); no idempotent generator of J | Excluded by σ(J)=J; none; carried from [r3] |
| 0.4 Descent action | Double cover with sign coefficient representation | Diagonal invariants are (a,−a); coefficient-only invariants are (a,a) | Pass; coefficient representation retained; carried from [r3] |
| 0.4 Zero ring / varying rank | Zero ring; eWₙ(𝔽_p×𝔽_p) | Unique module has rank 0; idempotent summand has ranks (1,0), still projective | Pass; no nonzero or connected hypothesis needed; carried from [r3] |
| 0.5 Exponential and BCH | Strict upper triangular 3×3 matrices | exp(X)=1+X when X²=0; [E₁₂,E₂₃]=E₁₃≠0 | Pass; nonabelian law retained; carried from [r3] |
| 0.5 Dyadic smallness | exp(2), exp(4) in ℚ₂; term k=2ʳ | v₂(2ᵏ/k!)=1, whereas v₂(4ᵏ/k!)=k+1→∞ | Pass; depth one fails, depth two converges; carried from [r3] |
| 0.5 Lang classes | Additive 𝔽₃ layer, h³−h=1 | No 𝔽₃ solution, three geometric solutions, derivative −1 | Pass; étale triviality differs from rational triviality; carried from [r3] |
| 0.6 Continuous-cochain carrier | Trivial group with coefficient T | Differentials alternate 0,id; H⁰=T and Hⁱ=0 for i>0 | Pass; not a zero complex termwise; carried from [r3] |
| 0.6 Procyclic and finite descent | ℤ₃ trivial ℤ₃; C₃⊂C₉ with 𝔽₃ | Procyclic H⁰=H¹=ℤ₃; H¹(C₉,𝔽₃) has dimension 1, not the naive two quotient/kernel summands | Pass; coherent quotient roof needed; carried from [r3] |
| 0.6 Nonabelian check | A₃ normal in S₃, trivial 𝔽₂ coefficients | H¹(S₃,𝔽₂)=𝔽₂=H¹(C₂,𝔽₂); H¹(A₃,𝔽₂)=0 | Pass; finite descent handles nonabelian group; carried from [r3] |
| 0.6 Limits and derived tensors | Constant tower; ℤ/4→ℤ/2 | lim=T and lim¹=0; Tor₁(ℤ/2,ℤ/2)=ℤ/2 | Pass; derived tensor retains extra group; carried from [r3] |
| 1.0 Field realization and reduction | p=3; torsion representation T=𝔽₃ | φ(π)=3π+3π²+π³; T[1/3]=0 whereas integral realization has nonzero mod-3 fiber | Pass; integral comparison precedes inversion; carried from [r3] |
| 1.0b Norm and slope conventions | α(x)=1/3, r=2; φ(e)=pe | Norm([x])=1/9, norm(φ[x])=1/729; supplied degree +1 becomes KPX degree −1 | Pass; inverse or unchanged sign excluded; carried from [r3] |
| 1.0b Pure-system indices | (c,d)=(1,2) and (2,4) | c/d=1/2 in both; rank-zero slope multiset is empty | Pass; reindexing includes descent data; carried from [r3] |
| 1.0b Purity versus average slope | φ=diag(1,p) | Slopes are (0,1), average 1/2; not a pure slope-1/2 object | Pass; average-only predicate excluded; carried from [r3] |
| 1.0c Curve exponent | Unit object at d=1 and d=2 | Constant endomorphisms ℚ_p and ℚ_(p²); trace of 1 at d=2 is 2 | Pass; φᵈ cannot be replaced by φ; carried from [r3] |
| 1.0c Marked roofs and evaluation | Marked trivial line; maps u and 2u | Localization images u and 2u differ; evaluation eᵢ*(eⱼ)=δᵢⱼ | Pass; an unmarked isomorphism is insufficient; carried from [r3] |
| 1.1 Coefficients and cyclotomic components | Unramified quadratic K; K=ℚ₃(μ₃) | First has unramified coefficient degree 2 and cyclotomic index 1; second degree 1 and cyclotomic index 2 | Pass; these factors are not interchangeable; carried from [r3] |
| 1.1 Annular radii | p=3, valuation interval [1,2] | Modulus endpoints 3⁻¹ and 3⁻¹ᐟ²; increasing lower valuation endpoint to 3/2 gives outer radius 3⁻³ᐟ⁴ | Pass; endpoint orientation retained; carried from [r3] |
| 1.1a Uniform generation | Compatible free Bᵢᵈ | Generator/relation counts (d,0); global Bᵈ has the same counts | Pass; prior R02 repaired; carried from [r3] |
| 1.1a Projective presentations | eB⊂B, B a product | Generator/relation counts (1,1); ranks (1,0), not constant 1 | Pass; uniform counts do not mean constant rank; carried from [r3] |
| 1.1a Compatibility hypothesis | Nonzero rank-one terms with zero transitions | Inverse limit 0; scalar extension of limit 0 differs from a rank-one term | Excluded: transition maps are not coherent-system identifications; carried from [r3] |
| 1.2 Nonreduced relative realization | A=E[ε]/ε², free line | εe≠0 both before and after faithful analytic scalar extension; reduced fiber sends it to 0 | Pass; reduced fibers alone are insufficient; carried from [r3] |
| 1.2 Radius restriction | Models at r₁ and r₂ | Common model can use min(r₁,r₂); restricting twice and directly gives the same coefficient | Pass; common-radius requirement retained; carried from [r3] |
| 1.3 Integral intersection | Lattices T and pT | Rational spans equal V, integral lattices differ by p | Pass; integral intersection distinguishes them; carried from [r3] |
| 1.3 Integral ψ | Constant 1 modulo p | ψ(1)=1; unnormalized trace of 1 is p, hence 0 modulo p | Pass; trace division cannot be performed after reduction; carried from [r3] |
| 1.4 Arbitrary-module decompletion | Nonétale line φ(e)=pe; unit line | Nonétale slope is +1 in valuation convention, not zero; unit comparison sends 1 to 1 | Pass; not restricted to étale objects; carried from [r3] |
| 1.4 Γ hypothesis | Forget Γ from the stated category | On E² take γ=diag(1,2), f swapping coordinates: γf(e₁)=2e₂ but fγ(e₁)=e₂ | Excluded morphism; no claim of nonequivariant decompletion; carried from [r3] |
| 1.5 Global pure comparison | Globally trivial rank-d system; zero | Both realizations rank d, zero gives 0; unit/counit act by identity matrices I_d | Pass under global-model hypothesis; carried from [r3] |
| 1.6 Restriction, induction, duals | Unit under a degree-two field extension; Tate line | Restriction-corestriction gives 2; Tate φ(e)=e and γ(e)=χ(γ)e | Pass; dropping trace degree or Tate Γ-action fails; carried from [r3] |
| 2.1 Balanced tensor contraction | Scalars 2 and 3; zero tensor | Q(2⊗3)=6=Q(1⊗6); Q(0)=0 | Pass; balancing has the twisted scalar action; carried from [r3] |
| 2.1 Product-ring contraction | Projection coefficient e=(1,0) | For R=ℚ, S=ℚ×ℚ and first projection r: Q(e⊗7)=7, Q((1−e)⊗7)=0 | Pass; no domain assumption; carried from [r3] |
| 2.2 Module ψ | Linearization multiplication by 2 | ψ(6)=3; ψφ(1)=1; setting ψ=0 would give 0 | Pass; inverse linearization determines ψ; carried from [r3] |
| 2.3 Rank-one coefficient | S=E×E, ψ swaps factors, a=(2,3) | ψ(a⁻¹)=(1/3,1/2), whereas a⁻¹ψ(1)=(1/2,1/3) | Pass; a⁻¹ stays inside ψ; carried from [r3] |
| 2.3 Basis change | e′=be with constant b=2 | Vector scale 2 and coordinate scale 1/2; product recovers 1 | Pass; inverse transition required; carried from [r3] |
| 2.4 Projector | φf(U)=f(U³), ψ extracts powers divisible by 3 | P(U)=U, P(U³)=0; P²(U)=U and ψP(U)=0 | Pass; none; carried from [r3] |
| 2.4 Fixed versus zero space | Same polynomial model | Fixed space of ψ is constants; (1−φ) sends it to 0 but U∈kerψ is nonzero | Pass; no universal generation assertion; carried from [r3] |
| 2.4 Perturbed model | φf=f(U³)+f(0)U, same ψ | ψφ=id; (1−φ)(1)=−U≠0 | Pass; distinguish zero image from universal vanishing; carried from [r3] |
| 2.5 Frobenius coordinates | p=2 or 3, 0≤i<p | ψ((1+π)ⁱ)=1 for i=0 and 0 otherwise | Pass; unique zeroth coordinate; carried from [r3] |
| 2.5 Integral trace | p=2, input π | ψ(π)=−1; trace(π)=−2=2ψ(π), reducing trace gives 0 | Pass; agrees with ColemanPowerSeries §§1.47–1.49; carried from [r3] |
| 2.6 ψ complex | ψ=id and ψ=0 | First gives H¹=H²=M, H⁰=0; second differential −id gives all cohomology 0 | Pass; degrees 1,2 retained; carried from [r3] |
| 2.7 Mellin and convolution | Dirac masses at g,h; sign character at −1 | δ_g*δ_h=δ_gh; sign evaluates −1 while trivial character evaluates 1 | Pass; finite character factor retained; carried from [r3] |
| 2.7 Uniformizer change | ϖ′=uϖ | δ(ϖ′)=δ(u)δ(ϖ), not δ(ϖ) when δ(u)≠1 | Pass; character is determined on units and chosen uniformizer; carried from [r3] |
| 2.8 Analytic Γ scalars | Coordinate z=γ−1 | z vanishes at trivial weight; 1/z has a pole there, but is defined on an annulus excluding it | Pass; disc and Robba-type rings distinguished; carried from [r3] |
| 2.8 Relative tensor | A=E[ε]/ε² | Coefficient ε stays nonzero in A-valued analytic functions; reduction gives 0 | Pass; scalar construction retains nilpotents; carried from [r3] |
| 3.1 Signed differentials | φ=2, γ=3 on a line | d⁰(7)=(7,14); d¹(5,11)=−1; d¹d⁰(7)=14−14=0 | Pass; changing the minus to plus gives 28; carried from [r3] |
| 3.1 Identity operators and functoriality | φ=γ=id; map multiplication by 2 | H⁰,H¹,H²=(E,E²,E); induced maps multiply by 2 in every coordinate | Pass; degrees and map composition agree; carried from [r3] |
| 3.2 Signed comparison | φ=ψ=id, any commuting γ | F=(id,diag(−1,1),−id); the degree-two sign is −1, not +1 | Pass; chain maps agree; carried from [r3] |
| 3.2 Kernel test | Polynomial model, γ=id | F²(U³)=−U, F²(U)=0; kernel complex has H¹=H²=kerψ≠0 | Pass; surjectivity alone is not a quasi-isomorphism; carried from [r3] |
| 3.3 Resolvent | Polynomial model, γ=2id | q=P, Bq(U)=U=P(U); qφ(U)=0 and ψq(U)=0 | Pass; normalization determines q; carried from [r3] |
| 3.3 Corrected section | Same model, degree-one (0,U) | S¹(0,U)=(−U,U); dφS¹=−U³; S²dψ=−U³; FS¹(0,U)=(0,U) | Pass; uncorrected section has error U; carried from [r3] |
| 3.3 Homotopy | Same model, c=U and c=U³ | H²(U)=(U,0), H²(U³)=0; (id−SF)²(U)=U=dH²(U) | Pass; native homotopy orientation agrees; carried from [r3] |
| 3.3 Degree-one homotopy | Same model, (a,b) | Both (id−SF)¹ and Hd¹ give (Pa+qb,0) | Pass; no extra sign; carried from [r3] |
| 3.4 Geometric sums | n=0,1,3; γ acts by 2 | Q₀=0, Q₁=1, Q₃=7; (2−1)·7=2³−1=7 | Pass; n=0 is not a generator change; carried from [r3] |
| 3.4 Nonunit change | Characteristic 3, γ=id, n=3 | Q₃=3=0; cannot invert Q₃ | Excluded by the generator/unit hypotheses; carried from [r3] |
| 3.4 Inverse generator | γ=2 on a test line | γ⁻¹−1=−1/2; −γ⁻¹(γ−1)=−1/2 | Pass; inverse-generator minus sign fixed; carried from [r3] |
| 3.4 Finite torsion | C₂ with trivial coefficients ℚ₂ versus 𝔽₂ | Averaging uses 1/2 over ℚ₂; over 𝔽₂, H¹(C₂,𝔽₂)=𝔽₂ rather than 0 | Pass; averaging not used integrally; carried from [r3] |
| 3.4a Euler characteristic | Trivial and Tate lines over degree-d_K local field | Dimensions (1,d_K+1,0) and (0,d_K+1,1); alternating sums both −d_K | Pass; twist and degree factor agree; carried from [r3] |
| 3.4a Torsion and t-twist | R/t; tR⊂R | Torsion dimensions (1,1,0), Euler 0; H⁰(tR)=0 but H⁰(R)=E | Pass; t-twist not mistaken for isomorphism before localization; carried from [r3] |
| 3.4a Auxiliary pure extension | d=2 | Pure extension has KPX slope −1/2 twice; split tR⊕R has slopes (−1,0) | Pass; split replacement would invalidate induction; carried from [r3] |
| 3.4a Coefficient restriction and degree | E=ℚ_p(ϖ), ϖ²=p, φ(e)=ϖe | E-rank 1 has degree 1/2; restricted rank 2 has determinant −p, degree 1=2·1/2 | Pass; ramified factor is retained; carried from [r3] |
| 3.4a Ordered cup | Two degree-one coordinates (1,0),(0,1) | Signed cup values −1 and +1 on reversing entries | Pass; ordered sign is discriminating; carried from [r3] |
| 3.5 Field character dimensions | δ=1, δ=x·abs(x), generic unramified δ | (h⁰,h¹,h²)=(1,2,0),(0,2,1),(0,1,0); Euler −1 in each | Pass; both exceptional families retained; carried from [r3] |
| 3.5 Tate versus x | K=ℚ_p | δ=x·abs(x) has φ eigenvalue 1; δ=x has eigenvalue p | Pass; cyclotomic twist is not x; carried from [r3] |
| 3.5 Inverse on ψ-zero | Zero module; abstract γ=id with nonzero kerψ | Unique zero-space inverse exists; the latter has B=0 and cannot satisfy Bq=P≠0 | Pass; arithmetic/radius hypotheses essential; carried from [r3] |
| 3.6 Integral comparison | Trivial 𝔽₃ line; A=E[ε]/ε² | H⁰ is 𝔽₃ integrally; on the family constants include nonzero ε | Pass; rationalization/reduction loses these data; carried from [r3] |
| 3.6 Lattice independence | T and pT in V | Inverting p identifies both with V; reduction T/pT and pT/p²T each rank one | Pass; rational comparison does not identify integral sublattices; carried from [r3] |
| 3.7 Derived dyadic descent | C₂, trivial 𝔽₂ | H¹=𝔽₂, while ordinary invariants alone placed in degree zero give H¹=0 | Pass; derived finite quotient is necessary; carried from [r3] |
| 3.7 Rational dyadic specialization | C₂, trivial ℚ₂ | Norm=2, averaging 1/2, positive finite-group cohomology 0 | Pass; rational simplification only after inverting 2; carried from [r3] |
| 3.8 Residue | dπ/π and dπ/(1+π) | Residues 1 and 0; replacing the logarithmic pole by a regular differential loses 1 | Pass; residue carrier fixed; carried from [r3] |
| 3.8 Invariant normalization | Ordered Kummer/reciprocity pair of value 1 | Arithmetic invariant 1 corresponds to raw residue C_p; swapping pair gives −1 and −C_p | Pass; raw residue is not silently the invariant; carried from [r3] |
| 3.8 Generator scaling | γ′=γᵘ, unit u | logχ(γ′)=u logχ(γ); matching numerator acquires u, normalized ratio unchanged | Pass; both normalizations transported; carried from [r3] |
| 3.9 Localized lattice independence | D and tᵐD | Unions of t⁻ⁿD and t⁻ⁿ(tᵐD) both D[1/t] | Pass; shift cofinality gives same elements; carried from [r3] |
| 3.9 Artinian coefficients and sign | A=E[ε]/ε², unit; opposite BHS d¹ | H⁰=A includes ε≠0; multiplying degree two by −1 turns BHS d¹ into the roadmap's d¹ | Pass; ε not discarded and sign agrees; carried from [r3] |
| 4.2 ψ cokernel and torsion | Zero module; standard R/t | Zero complex has zero groups; torsion ψ complex has cokernel 0 and the Herr torsion dimensions (1,1,0) | Pass; no false Euler contribution; carried from [r3] |
| 4.3 Finite coefficient comparison | A=E[ε]/ε²→E | Tor₁ᴬ(E,E)=E; ordinary tensor would omit it | Pass; preliminary comparison is derived; carried from [r3] |
| 4.3 Character involution | η(γ)=ζ₃ | First weight ζ₃ pairs with inverse weight ζ₃², not ζ₃ | Pass; second action inverted; carried from [r3] |
| 4.3 Residue pairing convention | Test scalar 1; f₁=−1/(γ⁻¹−1) in the Γ-coordinate | Res(f₁·ω)=1 with the specified differential; removing its minus reverses the value | Pass; normalization tested at the pole; carried from [r3] |
| 4.3 Double vanishing | Rank d, both ψ−1 cokernels zero | H⁰=H²=0 at every character; h¹=d; kernel of φ−1 on ψ-fixed space is 0 | Pass; requires both vanishings; carried from [r3] |
| 4.3 Pairing-matrix generation | Matrix diag(1,X) | Determinant X; rank 2 off X=0 and rank 1 at X=0 | Pass; generation needs determinant cover, not one fiber; carried from [r3] |
| 4.3 Uniform relation control | Projective pieces generated by m sections | Split presentation gives m generators and at most m relations uniformly | Pass; supplies §1.1a, not just bounded ranks; carried from [r3] |
| 4.4 Relative Herr perfectness | Trivial and Tate lines, K=ℚ_p; rank 0 | Euler 1−2=−1 and −2+1=−1; zero gives 0 | Pass; expected amplitude [0,2]; carried from [r3] |
| 4.4 Derived duality | Zero; one-dimensional perfect pair | Dual of zero is zero; pairing matrix (1) has inverse (1) | Pass; shifts must still use degree 2; carried from [r3] |
| 4.5 Nonflat base change | C=[A —X→ A], A=E⟨X⟩, B=A/(X), degrees 0,1 | Before: H⁰=0,H¹=B. After derived specialization: H⁰=B,H¹=B; Tor₁ᴬ(B,B)=B | Pass; naive cohomology tensor fails; carried from [r3] |
| 5.0 Independent tower | ℤ_p with transition p versus transition id | First inverse limit 0 (element divisible by every pⁿ); second inverse limit ℤ_p | Pass; norm maps cannot be replaced by identities; carried from [r3] |
| 5.0 Shapiro action | Order-three weight η | Inverse universal action specializes to ζ₃⁻¹=ζ₃²; direct action gives ζ₃ | Pass; independent tower fixes orientation; carried from [r3] |
| 5.1 Integral comparison | ψ=id toy complex; actual zero representation | ψ-complex H¹=H²=M and H⁰=0; zero tower and zero complex both 0 | Pass; degree convention, not a redefinition of the tower; carried from [r3] |
| 5.1 Restriction/corestriction | Degree-two extension, invariant unit | Restriction then corestriction multiplies by 2, not 1 | Pass; norm normalization retained; carried from [r3] |
| 5.2 Character specialization | Unit and η of order 3 | Twist uses η⁻¹ with value ζ₃²; trivial twist has H⁰ dimension 1 | Pass; derived specialization can create H⁰; carried from [r3] |
| 5.3 Tensor correction | Two unit modules at η(γ)=ζ₃ | Dfm(1⊗1): ζ₃⁻¹; Dfm(1)⊗Dfm(1)⊗U∨: ζ₃⁻²ζ₃=ζ₃⁻¹ | Pass; previous R01 repaired; carried from [r3] |
| 5.3 Marked tensor map | Basis rescaling by u | Corrected tensor basis scales u²u⁻¹=u | Pass; actual comparison map has one universal line; carried from [r3] |
| 5.3 Deformation complex | One universal procyclic coordinate z | Multiplication by z has kernel 0, cokernel E; specializes at z=0 to the zero differential | Pass; derived character fiber retains kernel; carried from [r3] |
| 5.3 Dual involution | Character η | ι²(η)=η; η·η⁻¹=1 | Pass; dual twist is not left uncorrected; carried from [r3] |
| 5.4 Analytic comparison | T and pT; zero V | Both rational towers give V and identical analytic realization; zero remains 0 | Pass; lattice independence is rational; carried from [r3] |
| 5.5 Pairing specialization | Two degree-one maps scaled by ℓ=logχ(γ) | Tensor factor ℓ²; specialization uses both scaled classes, not one factor ℓ | Pass; matches §4.3's two-map square; carried from [r3] |
| 5.5 Trace and inverse weight | Degree-two extension, scalar 1; η(γ)=ζ₃ | Trace(1)=2; dual weight ζ₃² | Pass; both trace and inversion preserved; carried from [r3] |
| 5.6 Geometric nontriangulinity | E=ℚ₃, L=E(ζ₃), restriction of a nontrivial order-three line | E-rank 2, over L splits η⊕η⁻¹; φ-fixed space contains rank-2 V; dual ψ-cokernel is nonzero | Excluded by geometric hypothesis; mere E-irreducibility insufficient; carried from [r3] |
| 5.6 Annular generation | Polynomial projector negative control | (1−φ)(ψ-fixed constants)=0 but kerψ contains U | Pass; generation is not asserted for arbitrary operators; carried from [r3] |
| 5.6a Embedded differential lattice | V=E and E(1) | Unit horizontal period 1; Tate period t⁻¹e₁ rather than e₁ | Pass; localization is necessary; carried from [r3] |
| 5.6a Tensor, dual and radius map | Tate line and its dual | Evaluation (t⁻¹e₁)(te₋₁)=1; exponents add (−r)+(−s)=−(r+s) | Pass; ambient identity preserves the marked lattice; carried from [r3] |
| 5.7 Exponential image | V=ℚ_p and ℚ_p(1) | Unit: tangent space 0, H¹_e=0, H¹_f dimension 1. Tate: unit Kummer direction dimension 1 for K=ℚ_p | Pass; image is H¹_e, not H¹_f; carried from [r3] |
| 5.7 All-level criterion and injectivity | Rank-two absolutely irreducible V | Vᴴ has dimension 0 or 2 by normality; 2 would force an abelian quotient action, impossible for absolute irreducible rank 2; hence 0 | Pass; kernel of 1−φ is 0 under actual hypotheses; carried from [r3] |
| 5.7 t-lattice distinction | Unit differential equation as negative control | 1∉tE[[t]], while t∈tE[[t]] | Pass; membership in tN is not mere membership in N; carried from [r3] |
| 6.0 Wach height and filtration | Trivial line; ℚ_p(−1), n=πe | Trivial height 0; φ(n)=q n, q=φ(π)/π, and Fil¹ contains its crystalline generator | Pass; height/filtration distinguish the twist; carried from [r3] |
| 6.0 Étale rational condition | Rank-one φ(e)=pe over B⁺ | p is a unit in B⁺, but extension has nonzero slope and is not étale | Excluded by the explicit étale condition; carried from [r3] |
| 6.1 Coefficient/base change | Unramified degree-two extension; pT | Coefficient trace of 1 is 2; Wach lattice for pT is pN(T) | Pass; exact integral embedding remembered; carried from [r3] |
| 6.2 Positive analytic versus Robba | p=3, u=1/π−1/((1+π)³−1) | ψ(u)=0; principal part 2/(3π)≠0, so u is not positive analytic | Pass; good coordinates do not span full Robba ψ-zero; carried from [r3] |
| 6.2 Good-basis coordinates | n′=2n, p=3 | Frobenius vector multiplied by 2; coordinate multiplied by 1/2 | Pass; inverse matrix required; carried from [r3] |
| 6.2 Positivity and twist | ℚ_p, ℚ_p(1), ℚ_p(−1); positive weight r | Fil⁰ ranks 1,0,1; twist by m=r changes weight r to 0 | Pass; rational theorem's weight scope retained; carried from [r3] |
| 6.2 Rank zero and scalar extension | Zero V; finite E′/E | Both coordinate spaces 0; a rank-d positive module remains rank d over E′ | Pass; no arbitrary-basis assertion; carried from [r3] |
| 6.3 ψ-fixed containment map | ψx=x | ψ((1−φ)x)=x−x=0; changing sign gives its negative, still zero | Pass; agrees with Iwasawa interface; carried from [r3] |
| 6.3 Lattice scaling | T↦pT | Source fixed lattice and target N(T) both multiply by p | Pass; no rational-only substitute; carried from [r3] |
| 7.1 Rank-one character tensor | δ₁,δ₂; Tate character over ℚ_p | φ on tensor is δ₁(p)δ₂(p); Tate value at p is 1 while x(p)=p | Pass; reciprocity normalization consistent; carried from [r3] |
| 7.1 Period submodule | tR⊂R | Quotient R/t≠0 is torsion, so not a projective rank-zero quotient | Pass; stability does not imply saturation; carried from [r3] |
| 7.2 Embedding-wise exponents | Two embeddings, exponents (1,−1) | Neither exceptional all-nonpositive nor cyclotomic all-nonnegative condition holds: h⁰=h²=0, h¹=[K:ℚ_p] | Pass; mixed weights not collapsed to a sum; carried from [r3] |
| 7.2 Saturation exponents | t_σ²R(δ)⊂R(δ) | Unsaturated character δx_σ²; saturation character δ | Pass; exponent removed rather than preserved; carried from [r3] |
| 7.2a Sen polynomial | Unit, Tate, rank 0; infinitesimal weight ε | Polynomials T,T−1,1,T−ε respectively | Pass; degree and nilpotent coefficients visible; carried from [r3] |
| 7.3 Artinian weight | δ=1+εlog on E[ε]/ε² | Residual derivative 0; actual derivative ε≠0, not a scalar integer | Pass; closed fibers cannot establish de Rham weight; carried from [r3] |
| 7.3 Smooth versus algebraic | Finite-order character; x on units | Derivatives 0 and 1; first locally constant, second not | Pass; both directions of criterion tested; carried from [r3] |
| 7.4 Rank-one family classification | Character line twisted by coefficient line L | Parameter stays δ; coefficient factor is L, so a nontrivial L does not admit a global chosen basis | Pass; classification includes line bundle; carried from [r3] |
| 7.4 de Rham family scope | Noninteger weight; unramified δ(p)=a≠0 | First fails locally algebraic criterion; unramified character has weight 0 regardless of v_p(a) | Pass; de Rham does not mean étale; carried from [r3] |
| 7.5 Strictness | Repeated unit character rank 2; rank 1 | Hom dimensions 2 and 1; rank-two flags form ℙ¹, rank-one flag unique | Pass; a split flag need not be strict; carried from [r3] |
| 7.5 Rank zero | Empty ordered parameter list | Zero filtration, zero graded pieces, no strictness equations to check | Pass; empty case retained; carried from [r3] |
| 7.6 Blowup carrier | Unit ideal; principal regular ideal (X) | Both blowups identity; on X-chart for (X,Y), chart ring A[Y/X] has no X-torsion | Pass; naive equation chart alone insufficient; carried from [r3] |
| 7.6 Image versus cokernel | A —X→ A | Image (X) free rank 1; cokernel A/(X) nonflat, Tor₁(A/(X),A/(X))=A/(X) | Pass; claim is about image; carried from [r3] |
| 7.6 Further pullback | X↦ε in B=E[ε]/ε² | Image (ε) has length 1; nonzero free B-module has length at least 2 | Pass; excluded by non-zero-divisor condition; carried from [r3] |
| 7.6 Dominant nonflat change | A=E⟨X,Y⟩→E⟨X,T⟩, Y↦XT | Ordinary X-chart: X(U−T)=0; dominant transform: U=T | Pass; corrected dominant transform equals blowup of (X); carried from [r3] |
| 7.6 Fitting fiber criterion | Free ranks 0 and 1 over field | Rank 0: Fitt₀=1; rank 1: Fitt₀=0,Fitt₁=1 | Pass; agrees with pinned API, not a flatness criterion; carried from [r3] |
| 7.8 Global and saturated flags | Graded t_σᵐR(δ), m=0,1,2 | Coherent labels δ,δx_σ,δx_σ²; all saturate to δ in R(δ) | Pass; labels can change on special fibers; carried from [r3] |
| 7.8 Degenerate and nonreduced cases | Zero; already saturated distinct split family; E[ε]/ε² | Zero flag empty; split defect empty; nilpotent family and reduction have identical closed points but ε≠0 | Pass; global reduced theorem and fiber theorem kept distinct; carried from [r3] |

Fresh computations cover the changed mathematical claims and Checks. Ownership and Needs changes are verified by the pinned declarations and dependencies above.

| Statement | Instances tried | Computed values on the two sides / competing models | Result; change |
|---|---|---|---|
| Scope/contract: finite-separable trace dual, README:155–160 | E=F; V=0; V=⊕ℕE for quadratic E/F | Identity extension gives f(v) on both sides; zero space gives the unique zero map; each basis vector admits an arbitrary pair of F-coordinates in either dual description | Pass; imports the equivalence without requiring V finite-dimensional |
| Contract: separability and small characteristic | 𝔽₄/𝔽₂, ω²+ω+1=0; inseparable 𝔽₃(t¹ᐟ³)/𝔽₃(t) | Separable Gram matrix on (1,ω) is [[0,1],[1,1]], determinant 1; inseparable trace matrix is zero, determinant 0 | Pass; trace(1)=0 alone is no obstruction, but inseparability is excluded |
| 3.4a Trace and evaluation, README:1671–1673 | E=ℚ_p(ϖ), ϖ²=p, p=2,3 | Gram matrices diag(2,4), diag(2,6); dual bases (1/2,ϖ/4), (1/2,ϖ/6); evaluations on (1,ϖ) give (1,0) and (0,1) | Pass; imported evaluation is the required trace map |
| 3.4a Scalar extension and projective summands | Free ranks 0,1,2; idempotent e=(1,0) over algebraic test base C=F×F | Quadratic restriction ranks 0,2,4 on both descriptions; e-summand trace matrices are (diag(2,2p),0) on both sides, component ranks (2,0) | Pass; the extension argument respects nonfree projectives and rank zero |
| 3.4a φ, Γ and twist compatibility | p=3, quadratic E, f(v)=π; χ(γ)=4 | Trace(π)=2π; both φ routes give 2(3π+3π²+π³); both γ routes give 2((1+π)⁴−1); Tate twist r=1 multiplies both γ outputs by 4 | Pass; coefficient trace acts only on E |
| 3.4a Signed cup and invariant | Cup invariant a=ϖ²=p; reversed cup; a=ϖ | Tr(a)=2p=4 or 6; reversal gives −2p=−4 or −6; Tr(ϖ)=0 but Tr(ϖ·ϖ)=2p≠0 | Pass; testing E-multiples detects a trace-zero value |
| 7.7 Smooth-curve identity, README:3146 | Unit line on E⟨x⟩; regular ideal (x) | Normalization E⟨x⟩ on both routes; blowups of (1) and (x) are identities; λ=id has kernel=cokernel=0 | Pass; smooth-curve conclusion preserved |
| 7.7 Strict rank-one Check, README:3158–3159 | Unit character line on cusp B | On X′, λ(1)=1, kernel=0, cokernel=0, bad locus empty; base rings B and E⟨s⟩ differ since s∉B | Pass; identity of λ does not imply identity of X′→X |
| 7.7 Excluded dominant flat change, README:3160–3165 | B=A⊕Av, v²=u³, x=u | Multiplication by v has matrix [[0,u³],[1,0]]; B has A-rank 2; pullback of disc modification is B, cusp construction uses E⟨s⟩; s coefficients are 0 versus 1 | Pass as negative control; first normalization square fails |
| 7.7 Stagewise compatibility and smooth product, README:3147–3154, :3166–3169 | B⟨z⟩ over B, unit line; identity base map | Both normalization routes give E⟨s,z⟩, (u,v,z)↦(s²,s³,z); subsequent unit Fitting blowups are identities and λ(1)=1; identity base change gives T^ν on both sides at every stage | Pass; the hypothesis includes every normalization stage and preserves the line/map |

There are 148 rows: 138 carried and ten freshly computed. The tables cover all requested sampled targets, the headline groups and both repaired findings.

## Not verifiable

- No changed statement requires an unread source. KPX was retrieved legally through the source service and read at the locators above.
- Carried from [r3]: NSW, Theorem 2.4.1, Chapter II §4, p.111, remained an uncertified paywalled locator after the source service checked DOI 10.1007/978-3-540-37889-1. It is unchanged, outside this incremental source recheck, and is not a new missing-text request.
- Other unchanged source locators and the wider library/ownership audit retain their prior review status. Successful `sorry` elaboration checks the types, not the truth of the admitted theorem.

## Source issues

The three KPX pullback issues below were rechecked at KPX line 2672–2707 and line 2862–2865. They are source issues already accommodated by this README, not remaining roadmap findings. Other entries are carried from [r3] without reopening their unchanged source passages.

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
