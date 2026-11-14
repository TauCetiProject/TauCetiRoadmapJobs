# Review of OcneanuRigidity (pull request #2316 at e5fba33)

**Verdict:** needs changes

## R01 (P2) — Reverse the simplicial convention before using the contraction

**Location:** TauCetiRoadmap/OcneanuRigidity/README.md:400: “the comultiplication at `W` gives an `ExtraDegeneracy`”; also the unsigned comparison at 505–510.
**Claim:** With the outermost-first faces of 2.1, this construction gives a right extra degeneracy, whereas Mathlib requires a left extra degeneracy. The unadjusted GHS comparison also has the opposite degree-zero differential.
**Witness:** For the C₂ free–forgetful comonad, W=k: s₀(e⊗g)=e⊗g⊗e and d₀s₀(e⊗g)=g⊗e≠e⊗g. Mathlib/AlgebraicTopology/ExtraDegeneracy.lean:81 requires d₀s₀=id; GHS line 315 numbers faces in the reverse order.
**Repair:** Keep 2.1's convention, construct the right extra degeneracy, and apply Mathlib's ExtraDegeneracy to the augmented resolution precomposed with `SimplexCategory.rev.op` (Mathlib/AlgebraicTopology/SimplexCategory/Rev.lean:34). Add the transport of its contraction back in 2.3–2.5 and the factor (−1)ⁿ⁽ⁿ⁺¹⁾ᐟ² in degree n of 3.4's comparison. The reversed face sends e⊗g⊗e to e⊗g; in degree one the factor −1 turns the raw comparison value −2 into the required 2. Add these as Checks.

## R02 (P2) — Tensor-slot linearity needs bilinear tensoring

**Location:** TauCetiRoadmap/OcneanuRigidity/README.md:175: “It is `k`-linear in each variable when `F` is.”
**Claim:** A linear strong monoidal functor alone does not imply this. Layer 0 has not imposed the bilinear tensor hypotheses introduced in Layer 1.
**Witness:** Take F=id on finite-dimensional vector spaces with direct sum as tensor product. F is linear and strong monoidal, but the first-slot zero map becomes diag(0,1), whereas a linear functor must send it to diag(0,0).
**Repair:** Replace the sentence with: “For k-linear C and D, assume D has MonoidalPreadditive and MonoidalLinear k structures. If F is k-linear, the tensor-power functor is k-linear in each slot.” Add the direct-sum monoidal structure as an excluded Check. Mathlib/CategoryTheory/Monoidal/Linear.lean:33–46 supplies precisely these tensor-linearity assumptions.

## R03 (P2) — The single-degree complex needs a zero object

**Location:** TauCetiRoadmap/OcneanuRigidity/README.md:412–414: “in a preadditive category gives a homotopy equivalence … [with] the augmentation in degree `0`”.
**Claim:** Preadditivity alone does not supply the zero objects needed outside degree zero. The cited native homotopy-equivalence theorem explicitly assumes HasZeroObject.
**Witness:** The one-object ℂ-linear category with endomorphism ring ℂ is preadditive and has a constant augmented cosimplicial object with extra codegeneracy 1, but no zero object: its identity is 1≠0. Mathlib/AlgebraicTopology/ExtraDegeneracy.lean:412 requires HasZeroObject.
**Repair:** State 2.3 for a preadditive category with a zero object, and retain that hypothesis in its intended signature. Add the one-object category as an excluded Check. The application in 2.5 uses ModuleCat k, which supplies the zero object, so its generality is unchanged.

## R04 (P3) — Some definitions still have only one local Check

**Location:** TauCetiRoadmap/OcneanuRigidity/README.md:194,331,405: the Checks of 0.2, 1.6 and 2.2 each contain one bullet.
**Claim:** These definitions do not meet the three-discriminating-Checks requirement. In 0.2 the Frobenius example has no computed witness; 2.2's identity-comonad example cannot detect R01.
**Witness:** The identity comonad makes every face and degeneracy 1, so either face convention passes. The C₂ instance in R01 instead gives g⊗e≠e⊗g.
**Repair:** Give each definition three separate computed Checks. For 0.2 retain the scalar and real-rotation cases and specify Frobenius over F̄₂: a root a of a²+a+1 satisfies a²≠a, so Nat(id,Frob)=0 although Hom(k,k)=k. For 1.6 add a two-dimensional simple of Repℂ(S₃), where the comparison factor is 1/2 and rescaling its bidual map by 3 gives 3/6=1/2, and the zero-object case. For 2.2 retain the identity example and add the C₂ face calculation and its reversed-face repair from R01.

## R05 (P3) — Supply locators for the uncited sampled constructions

**Location:** TauCetiRoadmap/OcneanuRigidity/README.md:172,676,771: targets 0.1, 6.1 and 6.7 have no exact external source locator.
**Claim:** The tensor-power convention, module-symbol coherence and module-rule finiteness are not traceable to the cited literature at these targets; the References list alone supplies no locator.
**Witness:** GHS line 469 gives (3.4)–(3.5), p.12. Ostrik line 254 gives Definition 6, pp.5–6; line 66 gives Proposition 1, p.2. None is cited at the corresponding target.
**Repair:** Cite GHS (3.4)–(3.5), p.12, in 0.1; Ostrik Definition 6 and Remark 3, pp.5–6, in 6.1, identifying the ring-valued matrix presentation as a coordinate deduction; and Ostrik §2.1, Proposition 1, p.2, and Lemma 1, p.3, in 6.7–6.8. Identify the particular K² estimate as a deduction: for A=M_Σ, symmetry and A²≤KA give ‖A‖≤K, Aᵢᵢ≤K and ∑ⱼAᵢⱼ²≤K². The Fibonacci instance gives [[2,3],[3,5]]≤[[3,3],[3,6]].

## R06 (P3) — Planned API names are presented as Lean declarations

**Location:** TauCetiRoadmap/OcneanuRigidity/README.md:252: “The forgetful functor `RelCenter.forget F` is faithful and monoidal.”
**Claim:** A backticked name of this roadmap's own API claims a declaration in Suggested.lean, but the acceptance test declares only the five finiteness headlines. Other planned names in API statements and Checks have the same mismatch.
**Witness:** TauCetiRoadmap/OcneanuRigidity/Suggested.lean:36–120 declares five theorems and no definitions; it contains no RelCenter.forget, tensorFun, actionFunctor or DYCohomology declaration.
**Repair:** Write the API bullet as “The forgetful functor is faithful and monoidal.” Use mathematical prose for planned API names and Checks throughout; reserve declaration-name code spans for pinned/supplier declarations and the five actual headline names. Keep the heavy constructions as README mathematics; do not add stand-ins to Suggested.lean.

## Previous findings

| Previous finding | Head passage | Status |
| --- | --- | --- |
| R01 | README:326–327: “setting its inverse … to …”; 334: “θ.inv = 3/3 = 1” | Repaired |
| R02 | README:671–672: “assume [Nontrivial R]”; “assume … rigidity criterion” | Repaired |
| R03 | Suggested.lean:36,63,82,103: the four family finiteness theorems | Repaired |
| R04 | README:85 and 383 use single-line code spans; gate tex=0 | Repaired |
| R05 | README:3: “Summary”; 170: “### 0.1”; all ten layers have Examples and Dependencies | Repaired |
| R06 | Suggested.lean:7: “this file is not the roadmap”; no half-braiding stand-in | Repaired |
| R07 | README:531: “Remark 3.19”; 969–970: “combine 6.8 … 8.4”; 643: “vanishing in 4.2” | Repaired; separate missing locators in R05 |
| R08 | README:143: “TauCeti.SchemeAction”; 719: “IsSplitSimpleFamily”; 544: “.obj Y”; 577: “squaredNorm a_S” | Repaired |
| R09 | README:257–260: “over ℂ”; “sign tensored with sign … +1” | Repaired |
| R10 | README:221,388,431,473,707,839: each cited definition now has three Check bullets | Repaired; other definitions covered by R04 |
| R11 | README:1018–1021 contains neither former downstream-supplier bullet | Repaired |
| R12 | README:621: “1.2, 3.1”; 933: “5.6, 7.1, 7.4”; 960 includes “7.1, 7.2, 7.3” | Repaired |
| R13 | Description: “The Radford isomorphism and pivotalization belong to PivotalSpherical”; explicitly names CA6 and revision #2311 | Repaired |

## Verified sound

Headline coverage: cohomological vanishing 4.1; formal rigidity 5.5–5.7 and 6.6; finiteness 8.1–8.5; fields of definition 8.6; characteristic-zero specializations 9.1. The five finiteness headlines are stated; the docstring identifies the missing carriers for the other forms.

| Statement | Instances tried | Computed left | Computed right | Result / change |
| --- | --- | --- | --- | --- |
| Conventions: duals and squared norms | Vec/ℂ, bidual map 3; Vec(C₂)/F̄₂ | Trace product 3·⅓=1; global dimension 1+1=0 | Choice-independent norm 1; separability fails | Agrees |
| Conventions: differential | Trivial and sign coefficients over ℂ | δ⁰(1)=1−(−1)=2 | Non-intertwining scalar 1 | Agrees |
| 0.1 tensor powers | Ordinary Vec, dimensions 2,3,4 | Arity 0,1,2: 1,2,6; merged product 24 | Unit dimension 1; 2·3=6; 2·(3·4)=24 | Agrees on bilinear tensor |
| 0.1 linearity | Vec with direct-sum tensor, F=id | Image of zero: diag(0,1) | Required zero: diag(0,0) | R02; R05 locator |
| 0.2 restriction to simples | Vec; real C₃ rotation; Frobenius over F̄₂ | Nat(tensor²,tensor²)=k; Endℝ(V) dimension 2; Nat(id,Frob)=0 | One split tuple gives k; non-split excluded; Hom(k,k)=k | R04 explicit Frobenius Check |
| 0.3 linear endofunctors | Swap Φ and projection Ψ on Vec² | (Φ⊗Ψ)(k,0)=(0,k) | (Ψ⊗Φ)(k,0)=(0,0) | Order distinguished |
| 0.4 action functor | Regular Vec(S₃), a=(12), b=(23) | a⊙(b⊙δₑ)=δ₍₁₂₃₎ | Reversed order δ₍₁₃₂₎ | Agrees with curriedActionMop |
| 1.1 relative centre | Forget Vec(C₂)→Vec, ℂ | Hom(trivial,sign)=0; sign²=+1 | β=2 has unit 2≠1 and tensor 2≠4 | Coherence excludes wrong object; R06 naming |
| 1.2 functoriality | Identity and forgetful functors, Vec(C₂)/ℂ | Identity centre has four labels; sign maps to −1 | Relative identity centre has four; trivial maps to +1 | Agrees |
| 1.3 unitary comparison | C₂ half-braiding scalars ±1 | Adjoint-times-map=(±1)²=1 | Unitarity condition 1; scalar 2 gives 4≠1 | Agrees |
| 1.4 induction | Forget Repℂ(S₃); Vec on k² and 0 | Summand dimensions 1+1+4=6; 2; 0 | Regular dimension 6; original dimensions 2; 0 | Agrees |
| 1.5 coinduction | Same examples | Dimensions 6,2,0; unit block inclusion 1 | Left-adjoint underlying dimensions 6,2,0 | Agrees |
| 1.6 comparison | Vec, a=3; two-dimensional simple, a=can or 3can | 3/3=1; 1/2 and 3/6=1/2 | Choice-independent factors 1 and 1/2 | Previous repair works; R04 Checks |
| 1.7 averaging | Unit coefficient, Repℂ(S₃); Vec | 1+1+4=6; 1 | Squared-norm global dimensions 6; 1 | Agrees |
| 1.8 projectivity | Vec(Q₈)/F̄₃; Vec(C₂)/F̄₂ | 8=2, normalized composite 2·2=1; 2=0 | Section exists in first; zero normalization gives 0≠1 | Agrees |
| 2.1 resolution | Free–forgetful C₂, trivial k | d₀(g,g)=e; d₁(g,g)=g; dimensions 2,4,8 | Outer multiplication versus inner action; G¹,G²,G³ | Agrees with stated outer-first convention |
| 2.2 free-object extra degeneracy | W=k, X=GW, C₂ | d₀GΔ(e,g)=(g,e) | Native splitting requires (e,g) | R01; reversing faces restores (e,g) |
| 2.3 zero-object hypothesis | One-object ℂ-linear category, End(*)=ℂ | Constant extra codegeneracy 1; identity 1≠0 | No zero object; single-degree complex unavailable | R03: require HasZeroObject |
| 2.3 contraction transport | Face reversal, chain degrees 0,1,2 | Differential factors 1,−1,+1 | Comparison factors 1,−1,−1 satisfy adjacent-degree relation | Add transport in R01 |
| 2.4 cochains | C₂, f(e,e)=0, f(e,g)=1 | δf(g,g,e)=0; δf(e,g,g)=2 | 0−1+1=0; 1−0+1=2; scaling by 2 gives 4 | Agrees |
| 2.5 vanishing | Identity comonad; Sweedler algebra over ℂ | Identity: H⁰=k, H¹=H²=0; Sweedler H² dimension 1 | Projective case vanishes; Sweedler coefficient is not projective | Statement agrees; route needs R01 |
| 3.1 complex | C₃, γ(1,2)=1, otherwise zero | δγ(1,1,1)=1; δγ(1,2,1)=−1 | δ²γ=0 on all 81 quadruples | Agrees |
| 3.2 functoriality | Identity complex, coefficient map 2 | H⁰ map=2; positive-degree maps=0 | Composition with differential: 2·0=0·2 | Agrees |
| 3.3 low degrees | Vec(C₃)/F̄₃, θ(g)=1 | δθ(g,g)=1−2+1=0; θ(g)=1 | Nonzero additive character C₃→k | Agrees |
| 3.4 comparison dimensions | Vec(C₂)/ℂ, trivial coefficients | DY dimensions 1,2,4 | Comonad dimensions 1,2,4 | Dimensions agree |
| 3.4 comparison differential | Forget Vec(C₂)→Vec; trivial/sign coefficients, f=1 | Raw outer-first comonad differential: −1−1=−2 | DY differential: 1−(−1)=2 | R01: degree-one factor −1 |
| 4.1 vanishing | Vec(S₃)/ℂ; Vec(C₂)/F̄₃ | Global dimensions 6; 2; H¹=H²=0 | Positive-degree vanishing 0 | Statement supported; comparison route needs R01 |
| 4.2 action specialization | C₂ swaps Vec² over ℂ; f=(1,0) | Degree-zero coboundary swaps-minus-original: (−1,1) | Nonzero inner derivation; H¹ quotient=0 | Agrees |
| 4.3 sharpness | Vec(C₂)/F̄₂; Vec(C₃)/F̄₃ | Global dimension 0; H¹=k in both | Hom(Cₚ,k)=k≠0 | Agrees |
| 5.1 skeletal dimension | Fibonacci, Yang–Lee; C₂ with F=−1 | Norms φ²,φ⁻²; C₂ traces (−1,−1) | Totals (5+√5)/2,(5−√5)/2; C₂ norm 1 | Agrees with supplier normalizations |
| 5.2 F-dictionary | C₃ over ℂ[ε], γ(1,2)=1 | θ(1,1,1)=−1; F′/F=1−ε | −δγ(1,1,1)=−1; δθ=0 on 81 quadruples | Sign agrees |
| 5.3 normalization | Constant gauge c=2 over ℂ | Gauge ratio 4/4=1 | Divided gauge 1 has ratio 1 | Same action |
| 5.4 R-dictionary | C₂, F=1, R=1+bε, ℂ | R²=1+2bε; hence b=0 | Degree-one cocycle space relevant here is 0 | Agrees |
| 5.5 fusion formal rigidity | C₂ over dual numbers, characteristics 0 and 2 | Pentagon: 2c=0 | Characteristic 0: c=0; characteristic 2: c arbitrary, dimension zero | Separability necessary |
| 5.6 braiding formal rigidity | C₂, R=±1+bε, characteristic ≠2 | R²=1±2bε | R²=1 forces b=0 | Constant lift |
| 5.7 power series | ℂ⟦t⟧, R≡1 mod t, R²=1 | (R−1)(R+1)=0; constant term of R+1 is 2 | R+1 invertible, R−1=0 | Agrees |
| 6.1 module data | Unit rules over ℂ | Wrong unit multiplicity 0; M=Minv=−1 gives inverse product 1 | Required multiplicity 1; triangle requires M=1 | Wrong models excluded; R05 locator |
| 6.2 model | Unit action on multiplicities (1,3); gauged C₂ | 2·(1,3)=(2,6); inverse associator 1/2 | Direct-sum alternative (3,5); forward associator 2 | Correct action and orientation |
| 6.3 reconstruction | R=ℂ versus R=0, one module label | ℂ: End dimension 1; zero ring: rank reads 0 | Prescribed unit multiplicity 1 | Nontriviality excludes zero-ring failure |
| 6.4 gauge classification | Vec on Vec, scalar gauge c=2 | M′=2·1·2⁻²=1/2 | Triangle demands 1; normalized c=1 gives 1 | Agrees |
| 6.5 action duality | Regular C₃ | M_g permutation 0→1→2→0; transpose reverses cycle | M_g⁻¹ sends 0→2→1→0 | Agrees |
| 6.6 module formal rigidity | C₂ regular module; γ(g,0)=1, other entries 0 | Gauge gives M′(g,g,0)=1−ε, θ=−1 | δγ(g,g,0)=1; θ=−δγ | Sign agrees |
| 6.7 module-rule bounds | Fibonacci, K=3, A=[[1,1],[1,2]] | A²=[[2,3],[3,5]]; largest multiplicity 1 | KA=[[3,3],[3,6]]; 1≤3; row support 2≤9 | Bound holds; R05 locator |
| 6.8 indecomposability | Vec(C₂) ranks 1,2; Vec²; zero category | Connected ranks 1,2≤4; Vec² cross-Hom dimension 0; zero has 0 simples | Two C₂ classes; Vec² decomposable; nonempty condition excludes zero | Agrees |
| 7.1 coordinate rings | C₂ F-symbols; trivial Vec module | ℂ[x,x⁻¹]/(x²−1): points ±1; module ring ℂ | Counts 2 and 1 | Relations detected |
| 7.2 gauge schemes and loci | C₂ in characteristics 0,2; unit rules | GL₁ fixes ±1; dimension sum 2 or 0; empty gauge product=1 | Two separable points or none; unit-rule localization unchanged | Agrees |
| 7.3 finite orbits | Additive translation of A¹; trivial action on dual numbers | Translation kernel 0, one orbit; lift ε↦ε is nonconstant | One component; dual-number action fails hypothesis | Nilpotent control distinguishes hypothesis |
| 7.4 isolated points | Spec(K×K); Spec K[ε] | Two constant-lift points; ε↦ε nonconstant | Finite count 2; nonreduced example excluded | Agrees |
| 7.5 subfield points | Q̄⊆ℂ, A¹, open x≠π | Rational point 0 evaluates x−π to −π≠0 | 0 lies in the open subset | Agrees |
| 8.1 fusion finiteness / Lean headline | C₂/ℂ; empty family | Two classes F=±1; empty family needs 0 representatives | Finite representative counts 2; 0 | Native signature agrees |
| 8.2 braiding finiteness / Lean headline | C₂, F=1 or −1, ℂ | R=±1 or ±i | Two braidings for each F | Native signature agrees |
| 8.3 braided finiteness / Lean headline | C₂/ℂ | (1,±1),(−1,±i) | Four braided equivalence classes | Native signature agrees |
| 8.4 fixed-rank module finiteness / Lean headline | Vec, ranks 0,1,2 | Models 0, Vec, Vec² | One equivalence class for each rank | Includes rank zero correctly |
| 8.5 indecomposable finiteness / Lean headline | Vec(C₂)/ℂ; Vec/ℂ | C₂: ranks 1,2; Vec: rank 1 | Counts 2 and 1; rank zero excluded | Native connectivity hypothesis agrees |
| 8.6 fields of definition | Semion over ℂ | F=−1, R=i; i²=−1 | Both coefficients lie in Q̄ | Agrees |
| 9.1 characteristic zero | Vec(C₂)/ℂ | Dimension 2≠0; positive-degree cohomology 0 | Two fusion classes, two braidings each | Agrees |

- Sources: 15 seeded targets inspected; 34 named source locators opened across GHS, ENO2005, EGNO and Ostrik, plus equation/section context; R05 identifies missing target locators.
- Decisive pinned declarations: 6 opened at Mathlib/AlgebraicTopology/ExtraDegeneracy.lean:74, Mathlib/AlgebraicTopology/SimplexCategory/Rev.lean:34, Mathlib/CategoryTheory/Monoidal/Linear.lean:33, Mathlib/CategoryTheory/Monoidal/Action/LinearFunctor.lean:156, TauCeti/CategoryTheory/Semisimple/Basic.lean:56 and TauCeti/CategoryTheory/Semisimple/GrothendieckRing.lean:240; finite semisimplicity alone does not bound the set of simple classes.
- Suppliers: all 4 resolved at the specified main/head copies; PivotalSpherical #2311's numbering and PresentationsOfMonoidalCategories #2308 are explicitly identified in the description; no undeclared supplier gap found.
- Worker gate at e5fba33: every check passed, including targeted build; no gate failure omitted.
- Fresh dependency output: `depcheck: 244 roadmaps, 2198 edges, 0 problem(s)`; zero UPWARD/CYCLE lines.
- Direct elaboration: success, exactly 5 sorry warnings; fresh `#check @` on all 5 declarations retained every hypothesis and matched the README's characteristic-zero family formulations.
- Padding: 15 one-tactic trials (simp, rfl, infer_instance on each of 5 headlines) failed; opened library near-matches concern finite carriers, linear equivalences or cartesian braidings, not these fusion finiteness results.
- Scope/text: 0 outside-folder changes, 0 worktree edits; title and description match the new folder and all 5 Lean declarations; no dropped base targets or stale Radford-layer claim.

Overlap check: read PresentationsOfMonoidalCategories (#2308), PivotalSpherical (main and #2311), CategoricalOperatorAlgebras (main), and TemperleyLieb (main). PresentationsOfMonoidalCategories owns F/R presentations and gauge; PivotalSpherical owns squared norms, global dimension and absolute-centre induction; CategoricalOperatorAlgebras CA6 owns the unitary relative centre. OcneanuRigidity owns their relative, cohomological and deformation extensions. TemperleyLieb shares no owned target. Object searches across the open/main index and available package files found no second owner of the comonad cohomology or module-symbol constructions.

Source independence: 31 passages compared with 4 sources; no copied expression or reused tables/examples found. Largest share GHS, 24 of 60 locator occurrences (excluding References, expanding equation ranges). Contents compared with GHS lines 22–44: independent. GHS §§2–3 are split across Layers 1–4; 3.4 needs 1.8 and 2.4, and 4.1 needs 1.8, 2.5 and 3.4. Layers 5–8 combine deformation dictionaries, module rules and orbit geometry rather than continuing GHS §§4–5.

## Not verifiable

- BarrBeck §§1,4: settled as uncertified; no legal text supplied, no renewed request. The comonad claims were also compared with the supplied GHS text.

## Source issues

- none

## For the human reviewers

- none
