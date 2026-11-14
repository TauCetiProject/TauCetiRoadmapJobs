# Review of OcneanuRigidity (pull request #2316 at 6027074)

**Verdict:** needs changes

## Previous findings

- R01 — not repaired: deferred (D01).

## R01 (P2) — Quotient the cocycle classes by conjugation too

**Location:** TauCetiRoadmap/OcneanuRigidity/README.md:897: “subgroups `H` up to conjugacy with a class in `H²(H, kˣ)`”.
**Claim:** This parametrization omits the normalizer action on the cohomology class, overcounting module categories even after choosing one representative of each subgroup conjugacy class.
**Witness:** Over ℂ, take H=C₃² and G=H⋊⟨t⟩ with t(a,b)=(−a,b). The cocycles α((a,b),(c,d))=ζ₃^{ad} and α⁻¹ have distinct commutators ζ₃, ζ₃⁻¹ but are conjugate; their module categories are equivalent (EGNO line 6916).
**Repair:** Replace the classification with: “Indecomposable semisimple module categories correspond to pairs (H,[ψ]) modulo simultaneous G-conjugation; for each subgroup conjugacy representative H, take the N_G(H)-orbits in H²(H,kˣ).” Cite EGNO Example 7.4.10 and Exercise 7.4.11, p. 137. Add the witness as a Check: the three classes in H²(C₃²,ℂˣ) give two normalizer orbits, {0} and {1,2}, of rank-two module categories.

## Deferred findings

- D01 — resolved: PivotalSpherical §11.1 now uses the second trace factor and computes S₃ contributions 1, 1, 4, totaling 6.

## Verified sound

| Statement | Instances tried | Computed on one side | Computed on the other | Result / change |
| --- | --- | --- | --- | --- |
| Conventions: coefficients, duals, degrees | Vec; trivial/sign coefficients on C₂ | Scalar differentials 0,1,0; δ⁰(1)=1−(−1)=2 | Successive composites 0; nonintertwiner has nonzero differential | Agree |
| 0.1 Tensor powers | Dimensions 2,3,4; arity zero; direct-sum tensor | Dimensions 1,2,6; (2·3)·4=24 | 2·(3·4)=24; direct-sum tensor sends zero to diag(0,1) | Tensor-linearity excludes wrong tensor |
| 0.2 Restriction to simples | Vec tensor square; real C₃ rotation; Frobenius twist over 𝔽̄₂ | Natural endomorphisms have dimension 1; nonsplit End dimension 2 | Simple-tuple Hom dimension 1; twist naturality gives (a²−a)f=f=0 | Split and linear hypotheses discriminate |
| 0.3 Linear endofunctors | Swap Φ and projection Ψ on Vec² | (Φ⊗Ψ)(k,0)=(0,k); (id⊕id)(k) has dimension 2 | Reversed composition gives (0,0); zero functor and unit have dimensions 0 and 1 | Composition order agrees |
| 0.4 Action functor | Regular Vec(S₃); a=(12), b=(23) | A(ab)(δₑ)=δ_(123) | A(a)A(b)(δₑ)=δ_(123); reverse gives δ_(132) | Agree |
| 1.1 Relative centre | C₂ forgetful functor over ℂ; sign half-braiding | Hom(trivial,sign)=0; sign²=trivial | Equation f=−f forces f=0; twice interchange has tensor scalars 2 versus 4 | Wrong half-braiding excluded |
| 1.2 Functoriality | Identity and forgetful functors on Vec(C₂) | Z(id) has 4 simples; characters +1,−1 remain distinct | Center has 4 simples; induced morphism sends scalar 2 to 2 | Agree |
| 1.3 Unitary comparison | A=[[1,1],[0,−1]]; B=diag(1,−1) | A²=I; AA*=[[2,−1],[−1,1]] | B²=BB*=I | A excluded; B included |
| 1.4 Induction | Forgetful FDRep ℂ S₃; V=k and V=0 | Summand dimensions 1,1,4; total 6; zero gives 0 | Σ dim(S)²=6; no extra unit at zero | Agree |
| 1.5 Coinduction | C₂ forgetful; V=k; coefficient sign | Underlying dimension 2; dim Hom(Lk,sign)=1 | Two simple summands; dim Hom(k,U(sign))=1 | Adjunction direction agrees |
| 1.6 Comparing adjoints | Vec with a=3can; S₃ two-dimensional simple | (1/3)·3=1; 2·1=2; (2/3)·3=2 | Choice-independent factors 1 and 2; zero-object identity is 0 | Agree with repaired supplier |
| 1.7 Averaging | FDRep ℂ S₃, Z=unit; Vec | 1+1+2·2=6; Vec composite 1 | Squared-norm sums 1²+1²+2²=6 and 1 | Agree |
| 1.8 Relative projectivity | Vec(Q₈), characteristic 3; Vec(C₂), characteristic 2 | 8=2; inverse factor 2; counit composite 2·2=1 | In characteristic 2, 0⁻¹·0=0≠1 | Nonzero dimension is necessary |
| 2.1 Augmented resolution | Free–forgetful C₂ comonad | d₀(g,g,1)=(e,1); d₁(g,g,1)=(g,1) | Degrees 0,1,2 have dimensions 2,4,8; both faces of (g,e,1) return (g,1) | Outermost-first convention agrees |
| 2.2 Free-object contraction | X=Gk for C₂ | Extra degeneracy sends (e,g) to (e,g,e) | Last face returns (e,g); outermost face gives (g,e) | Face reversal is needed |
| 2.3 Extra codegeneracies | Constant complex; degrees 0–3; zero object | q=(1,−1,−1,1); differential factors (−1,1,−1) | qₙ₊₁=(−1)ⁿ⁺¹qₙ; zero contraction gives 0=id₀ | Signs agree |
| 2.4 Comonad cochains | C₂ cochain f(e,e)=0, f(e,g)=1 | δf(g,g,e)=0−1+1=0; δf(e,g,g)=1−0+1=2 | Postcomposition by 2 gives 0 and 4 | Hom variance and signs agree |
| 2.5 Vanishing | Identity comonad; Sweedler H₄ | Identity: H⁰=k, positive cohomology 0 | Sweedler: dim H²_DY=1, excluding projectivity of the trivial coefficient | Agree |
| 3.1 DY complex | C₃, γ(1,2)=1 | δγ(1,1,1)=1; δγ(1,2,1)=−1 | δ²γ=0 on all 81 quadruples; trivial-group differentials 0,1,0 | Agree |
| 3.2 Transport | Inversion σ on C₃ | (σ*γ)(2,1)=1; δ(σ*γ)(2,2,2)=1 | δγ(1,1,1)=1; untransported δγ(2,2,2)=−1 | Agree |
| 3.3 Low degrees | C₃ in characteristic 3; swap action on Vec² | θ(g)=1, θ(g²)=2; δθ(g,g)=1−2+1=0 | dim H¹=1; δ⁰(1,0) for swap has components 1,−1 | Derivations and inner terms discriminate |
| 3.4 Comparison | C₂ with trivial/sign coefficients | Cochain dimensions 1,2,4; raw degree-zero differential −2 | Degree-one factor −1 gives 2=δ⁰_DY(1) | Agree |
| 4.1 Cohomological vanishing | Vec(S₃) over ℂ, normalized cochains | Dimensions C¹=5, C²=25; differential ranks 5,20 | dim H¹=5−5=0; dim H²=25−20−5=0 | Agree |
| 4.2 Specializations | C₂ acting by swap on Vec²; simple central coefficients | Action complex: dim C¹=2, ranks δ⁰=1 and δ¹=1 | dim H¹=2−1−1=0; scalar central coefficients also give H¹=0 | Agree |
| 4.3 Positive characteristic | Vec(C₂)/𝔽̄₂; Vec(C₃)/𝔽̄₃ | C₂ ranks δ¹=δ²=0; C₃ ranks 1,2 on dimensions 2,4 | dim H¹=dim H²=1 in both cases; global dimensions 0 | Sharpness agrees |
| 5.1 Skeletal dimension | Fibonacci; Yang–Lee; C₂ with F=−1 | Norms φ², φ⁻², 1 | Global dimensions (5+√5)/2, (5−√5)/2, 2 | Agree |
| 5.2 F-dictionary | C₃, γ(1,2)=1, dual numbers | Gauge ratio at (1,1,1) is 1−ε; θ=−1 | δγ(1,1,1)=1; all 81 cocycle residuals vanish | Negative sign agrees |
| 5.3 Gauge normalization | Every gauge entry 2 over ℂ | G_L/G_R=4/4=1 | Dividing by 2 gives identity gauge and the same F | Agree |
| 5.4 R-dictionary | C₂, R=1+bε | R²=1+2bε; δ¹β(g,g)=2b | δ⁰f=f−f=0; characteristic 0 forces b=0, characteristic 2 permits every b | Agree |
| 5.5 Formal fusion rigidity | C₂, F=1+cε | Pentagon residual 2cε; normalized gauge fixes F(g,g,g) | c=0 in characteristic 0; distinct c survive in characteristic 2 | Separability discriminates |
| 5.6 Formal braiding rigidity | C₂, R=±1+bε, characteristic 0 | R²−1=±2bε | b=0; both braidings have only constant lifts | Agree |
| 5.7 Power series | C₂ over ℂ⟦t⟧, R≡1 | R+1 has constant coefficient 2 and is invertible | (R−1)(R+1)=0 forces every coefficient of R−1 to vanish | Agree |
| 6.1 Module-symbol data | Unit rules; regular C₂; M=Minv=−1 | Regular blocks 1; proposed zero unit multiplicity 0 | Required unit multiplicity 1; (−1)²=1 but triangle requires −1=1 | Both wrong models excluded |
| 6.2 Module model | Regular C₂; h(g,0)=2 | Inverse associator coefficient M=1/2 | Forward associator coefficient 2; product 1 | Direction agrees |
| 6.3 Extraction | Forgetful S₃ action on Vec; zero ring | Extracted multiplicities 1,1,2; zero-ring rank 0 | Hom dimensions 1,1,2; prescribed unit multiplicity 1 excludes zero ring | Agree |
| 6.4 Module gauge | Unit gauge c=2; label swap on Vec² | M′=c/c²=1/2; swap changes labels only | Triangle requires 1; swapped and original models represent one class | Normalization agrees |
| 6.5 Action duality | Regular C₃; m=0, n=2 | dim Hom(g⁻¹⊙0,2)=1 | dim Hom(0,g⊙2)=1; replacing g⁻¹ by g gives 0 | Dual orientation agrees |
| 6.6 Module rigidity | C₂ acting on Vec, M(g,g)=1+cε | Gauge 1+dε sends c to c−2d | d=c/2 gives 0 in characteristic 0; characteristic 2 leaves c unchanged | Agree |
| 6.7 Multiplicity bounds | Fibonacci regular module | K=3; A²=[[2,3],[3,5]]; row-square sums 2,5 | KA=[[3,3],[3,6]]; K²=9 | Entrywise and rank bounds agree |
| 6.8 Indecomposability | Vecʳ, r=0,1,2; C₂ modules | Nonempty connected action only at r=1; cross-component Hom in Vec² is 0 | C₂ indecomposable ranks 1,2 are ≤K²=4 | Definition and bound agree |
| 6.8 Pointed classification | H=C₃², G=H⋊C₂, reflection on first coordinate | α exponent ad has 729 zero cocycle residuals; commutator exponents 1 and 2 distinguish α,α⁻¹ | Conjugation exchanges 1 and 2; three H² classes form two orbits; rank 18/9=2 | R01: quotient both pieces of data |
| 7.1 Parameter rings | C₂ F and R; unit module rules | x²=1 and r²=1 each have two ℂ-points | One point each in characteristic 2; unit module ring K has one K-point | Relations discriminate |
| 7.2 Gauge schemes and loci | C₂ in characteristic 2; unit fusion rules | s₁=1; norm sum 1+1=0 | Fusion locus nonempty, separable locus empty; unit-rule localizations invert 1 | Agree |
| 7.3 Finite orbits | Translation on A¹; trivial group on dual numbers | Orbit map x↦t has kernel 0; one orbit | One irreducible component; ε↦ε differs from constant lift ε↦0 | Nonreduced negative control fails hypothesis |
| 7.4 Isolated points | O=K×K, trivial group | Two projections O→K | Two irreducible components and two constant-lift classes | Agree |
| 7.5 Subfield points | ℚ̄⊆ℂ; open x≠π | F-point x=0 gives x−π=−π≠0 | 0 belongs to the specified nonempty K-open | Agree |
| 8.1 finite_fusion_representatives | C₂ rules over ℂ; empty indexing family | F=1 and F=−1 give two classes; empty family needs zero representatives | A finite representative set has sizes 2 and 0, respectively | Native family statement agrees |
| 8.2 finite_braidedCategory | C₂, fixed F=1 or F=−1 over ℂ | R=±1 or R=±i | Two braidings on either fixed monoidal category | Counts actual braidings |
| 8.3 finite_braided_fusion_representatives | C₂ over ℂ | Pairs (1,±1),(−1,±i) | Four braided equivalence classes | Agree |
| 8.4 finite_module_representatives | Vec acting on Vecʳ, r=0,1,2 | Zero category, Vec, Vec²; one class at each fixed rank | Standard action is additive and linear; dimensions (1+1)·1=2=1+1 | All binders retained |
| 8.5 finite_indecomposable_module_representatives | Family Vecʳ over all finite r | Only r=1 satisfies nonempty connectedness | One indecomposable representative; unrestricted ranks give infinitely many classes | Hypothesis is necessary |
| 8.6 Fields of definition | Semion over ℂ | F=−1 and R=i | Both coefficients lie in ℚ̄ and scalar extension preserves them | Agree |
| 9.1 Characteristic zero | Vec(C₂) over ℂ | Global dimension 2≠0; positive cohomology 0 | Two fusion classes, each with two braidings | Separability specialization agrees |

- Sources: all 15 seeded targets examined; supporting passages include GHS lines 306, 526, 589, 607, 695, 707, 1026; ENO2005 lines 182, 423, 437, 1967; EGNO lines 13948, 14051, 14073; Davydov line 510. No README locator is flagged unverified; BarrBeck remains uncertified below.
- Library: 30 key declarations opened at the pins, including TauCeti/CategoryTheory/Semisimple/Basic.lean:56 and :177, Semisimple/GrothendieckRing.lean:240, Preadditive/Schur.lean:66, Monoidal/Pivotal/Character.lean:239; Mathlib/CategoryTheory/Linear/LinearFunctor.lean:36, Monoidal/Action/LinearFunctor.lean:156, Monoidal/End.lean:45, AlgebraicTopology/ExtraDegeneracy.lean:412. Finite semisimplicity alone supplies neither finitely many simple classes nor Hom-finiteness; the signatures carry both separately.
- Suppliers: 4 roadmaps resolved at main/open heads; PivotalSpherical §§3.3, 6.1–6.2, 6.9, 11.1–11.2; PresentationsOfMonoidalCategories Layers 0–6; SchemeAndStackFoundations §4.2; CategoricalOperatorAlgebras CA6. The overlap’s revision-only §6.9 is explicitly attributed to #2311 in the PR prose.
- Gate: every supplied check passes at 6027074; independent direct elaboration passes with exactly 5 sorry warnings; 0 changes outside the folder and a clean worktree.
- Dependency output: `depcheck: 244 roadmaps, 2198 edges, 0 problem(s)`; 0 UPWARD or CYCLE lines.
- Lean: scratch `#check @name` for all 5 declarations matches the README; 0 lost binders. All 15 one-tactic probes (`simp`, `rfl`, `infer_instance`) fail. Opened near-matches concern Cartesian braidings or individual modules, not these finiteness theorems.
- Headlines: 4.1, 5.5–5.7, 6.6, 8.1–8.6 and their 9.1 forms; 5 native finiteness signatures present, with the unavailable cochain, symbol, scalar-extension and squared-norm carriers identified in the module docstring.
- PR text: 0 contradictions with the addition of 51 numbered targets and 5 Lean declarations; 0 removed targets or declarations; the supplier prose names the required open revision.

Overlap check: read PresentationsOfMonoidalCategories, PivotalSpherical (main and #2311), CategoricalOperatorAlgebras and TemperleyLieb; F/R presentations and gauge belong to PresentationsOfMonoidalCategories, squared norms and absolute induction to PivotalSpherical, and unitary relative centres to CategoricalOperatorAlgebras. TemperleyLieb owns its diagram examples. OcneanuRigidity owns the general relative-centre extension, cohomology, module symbols and formal-transitivity orbit theorem. DerivedModuleAlgebra §0.1 owns its polynomial resolution, not this general comonad cohomology.

Source independence: 24 passages compared with 5 sources; no copied expression or reused tables found. Largest share GHS, 18 of 49 body citations. Its contents at GHS lines 22–44 were compared: independent arrangement. The README’s 1.8/3.4→4.1→5.5/6.6→7.3→8.1 dependencies force the cohomology-to-finiteness order; GHS instead proceeds to Hopf-algebra computations.

## Not verifiable

- BarrBeck §§1, 4: settled as uncertified at the publisher DOI; not requested again. GHS Definition 2.9 and Proposition 2.12 independently support the resolution and positive-degree vanishing used here.

## Source issues

- **Error** in GHS at Example 2.11, printed p. 10 (GHS line 364): the source identifies relative projectivity with ordinary bimodule projectivity over arbitrary commutative k; it should require stronger base assumptions: for A=k=ℤ, every module is relatively projective, but ℤ/2 is not projective; affects a stated result.

## For the human reviewers

- none
