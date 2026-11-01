# Review of PhiGammaModulesAndIwasawaCohomology (pull request #1310 at 606424f)

**Verdict:** needs changes

## R01 (P1) — Cyclotomic deformation does not preserve tensor products

**Location:** `TauCetiRoadmap/PhiGammaModulesAndIwasawaCohomology/README.md:2244`: “Cyclotomic deformation stages commute with restriction, tensor and coefficient change, retaining the inverse universal Γ action.”

**Claim:** The tensor compatibility in this API bullet is false with the deformation defined at line 2225. The following bullet also promises compatibility of the comparison with these maps.

**Witness:** Take two unit modules, p=3, E=ℚ₃(ζ₃), and η(γ)=ζ₃. The tensor of their deformations has γ eigenvalue ζ₃⁻²=ζ₃; the deformation of their tensor has eigenvalue ζ₃⁻¹=ζ₃².

These are different character lines, not merely different chosen bases: their ratio is the nontrivial finite character η. The same discrepancy occurs before specialization, with universal factors [γ]⁻² and [γ]⁻¹. KPX line 1802, Definition 4.4.7, manuscript p.45, introduces exactly one inverse universal twist.

**Repair:** Write the actual tensor identity. If U is the universal inverse-character line and M_B denotes scalar extension to the stage, then
`Dfm(M ⊗ N) ≅ Dfm(M) ⊗ N_B ≅ Dfm(M) ⊗ Dfm(N) ⊗ U^∨`.
Specify the corresponding comparison maps, and retain the inverse-weight involution for duality. Add the two-unit, order-three-character example as a negative-control Check.

**Repair check:** The corrected last expression has eigenvalue ζ₃⁻²ζ₃=ζ₃⁻¹, exactly the eigenvalue of Dfm(1⊗1). Restriction and coefficient change do not introduce a second U and are unaffected.

## R02 (P3) — Move the uniform-presentation input before its analytic uses

**Location:** `TauCetiRoadmap/PhiGammaModulesAndIwasawaCohomology/README.md:1615`: “Construct the finite-projective analytic Γ-annulus action … it precedes the coadmissible-system theorem.”

**Claim:** Moving the scalar rings to Layer 2 repairs the earlier carrier-order problem, but the chosen proof of the finite-projective analytic action still uses the global uniform-presentation criterion placed in §4.1. Its Needs clause omits this input. The finite-radius construction in §1.2 has the same issue.

**Witness:** KPX lines 1017–1025, proof of Theorem 3.1.1, p.26, obtains uniformly (m,m)-presented annular pieces and invokes Proposition 2.1.13(3) to obtain their finite-projective global module.

KPX lines 633–637 likewise invoke Proposition 2.1.13(3) in Proposition 2.2.7's radius-model construction. The current §4.1 is formulated for closed weight-disc stages; the earlier uses also need its annular version. This is an internal build-order defect, not an UPWARD or CYCLE result from the supplier checker.

**Repair:** Put the generic annular/disc coherent-system and uniform-presentation criterion before §1.2 and §3.5, with its analytic hypotheses and supplier inputs. Add it to those targets' Needs clauses. Keep the arithmetic uniform-boundedness argument of §4.3 in its later position. Alternatively give and own a proof route that avoids this input.

**Repair check:** A compatible free rank-d annular system has d generators and zero relations, and the early criterion gives a global projective module of rank d. A system whose minimal generator counts tend to infinity fails the uniform hypothesis. Neither calculation requires the later arithmetic finiteness theorem.

## R03 (P3) — Repair the dangling cross-references and copied dependency clause

**Location:** `TauCetiRoadmap/PhiGammaModulesAndIwasawaCohomology/README.md:948`, `:3051`, `:3143`: “2–1.4. For K′/K”; “a subbundle. 3.11, p.72).”

**Claim:** These are incomplete reference fragments. The downstream-consumers paragraph also ends with the triangulation-only Needs clause copied from §7.8, although it discusses Iwasawa, regulator, Wach and GL₂ applications.

**Witness:** KPX line 2862 identifies the intended reference as Remark 6.3.11, p.72, about dominant flat pullback. README lines 3136–3142 discuss consumers of Layers 3–6 as well as Layer 7.

**Repair:** Delete the stray “2–1.4.”; attach a complete KPX Remark 6.3.11 locator to the dominant-flat-pullback assertion at line 3060. Delete the copied Needs clause from the downstream-consumers paragraph, leaving the precise dependencies on the actual targets.

**Repair check:** Finite-extension restriction/induction remains specified at §1.6, with unit-object trace [K′:K]; the triangulation pullback claim now resolves to the source's dominant-flat hypothesis. No mathematical scope needs to change.

## Previous findings

The four previous findings were checked individually before the full pass; this review does not merely inherit their verdicts.

| Previous finding | Passage at this head | Assessment |
|---|---|---|
| R01, duplicate field core | README:26–30: “These are used directly on their common finite-K/E domain.” README:37–38: “it does not construct a second lattice” | Repaired. §§1.0, 1.0b and 5.6a now import F.6's realization, filtration and embedded lattice. The slope adapter changes labels, not filtration submodules. |
| R02, prospective API names | README:11–14: “the Lean file contains only the headline theorem and the definition needed to state it at the pins” | Repaired. API lists now state laws in prose; the only two own Lean declaration names are present in Suggested.lean. The naming gate passes. |
| R03, analytic build order and Needs | README:249–251: “Layer 2 constructs module ψ, its complex, scalar Mellin coordinates and the analytic Γ-ring carriers.” | Partly repaired. §§2.7–2.8 now precede Layer 3 and targets have Needs clauses. The remaining uniform-presentation edge is R02 above. |
| R04, module-ψ locator | README §§2.1–2.3 cite “KPX Definition 2.2.6, p.17” | Repaired. KPX lines 620–626 contain the module construction on p.17; the scalar construction is Definition 2.2.2, p.16. |

## Verified sound

The pass covered all 60 numbered target subsections, their definitions, APIs, Checks, conventions, proof routes and supplier clauses, and the complete 76-line Lean file. There are three findings, one blocking. The finite calculations below are adversarial tests, not proofs of the general theorems.

The worker's gate at 606424f passes every check, including build, dependency direction, imports, sorry-data, set_option, outside-folder edits, stray files and source material. The head matches the requested commit and the diff outside this roadmap folder is empty. Direct `lake env lean` elaboration of Suggested.lean succeeds with only the expected sorry warning. No pull-request file was changed.

The requested dependency command returned:

```text
depcheck: 205 roadmaps, 1486 edges, 0 problem(s)
```

There is no UPWARD, CYCLE or moved line. All 128 Needs clauses and supplier prose were read. No declared supplier gaps were present. R02 concerns internal proof order, which this supplier-level check does not detect.

**Seeded source sample: 15 of 15 targets inspected in legal full texts.** No additional locator is flagged unverified in the README. Source identifiers below follow the README; line numbers refer to the sources-service extractions. Page numbers and hypotheses were checked in the versions actually cited.

| Target | Source text inspected | Result |
|---|---|---|
| 0.1 Linearized Frobenius modules | KL-I lines 938–992, §1.5, p.24; KL-II line 7269, Appendix A, p.189 | Invertible linearization does not mean the underlying semilinear map is onto. The free-cover correction is retained. |
| 1.0b Field slopes and pure local systems | KL-I lines 4463–4541, Definition 5.1.1, pp.113–115; lines 6635–6760, §8.5, pp.170–172 | Witt/Gauss construction and perfect uniform base agree. Definition 8.5.7 retains integral models up to isogeny; rational sheaf local systems are distinguished. Frobenius-semilinear coefficient descent is retained. |
| 1.1 Components and affinoid annuli | KPX lines 573–628, §2.2, pp.15–17; KL-I lines 7790–7809, Definition 9.5.2 and Remark 9.5.3, pp.200–201 | The all-component Γ action and single-component stabilizer are distinguished; the source's reversed finite-free phrase is corrected. |
| 1.2 Relative categories and radius models | KPX lines 621–708, Definitions/Propositions 2.2.6–2.2.9, pp.17–19; lines 761–767, Theorem 2.2.17, p.20; KL-families lines 498–527, Theorem 3.11/Definition 3.12, pp.955–956, and 718–724, Definition 6.7, p.961 | Finite projective A-modules, nilpotents, exact full faithfulness and coefficient change are supported. Free local constructions are glued. Internal criterion dependency: R02. |
| 3.1 Native Herr complexes | KPX lines 782–826, Definition 2.3.3, p.21; BHS lines 1771–1791, §3.3, pp.342–343 | Signed differential and BHS degree-two sign adapter agree; common fixed scalars are specified. |
| 3.5 ψ-zero inverse and field characters | KPX lines 987–1030, Theorem 3.1.1/proof, pp.25–27; lines 2305–2349, Proposition 6.2.8, pp.58–59, and 2394–2415, Lemma 6.2.13, p.61 | Relative rational Robba hypotheses and exceptional characters are correct. The analytic globalization input is R02. |
| 3.7 Dyadic derived descent | KPX lines 782–826, pp.20–21; CC-1999 lines 471–540, §II.1, pp.11–13; F.3 supplier contract | Rational torsion invariants are not substituted for integral C₂-derived invariants. The latter is a specialization of the supplied coherent Hochschild–Serre roof. NSW's precise text is uncertified below. |
| 3.8 Cups and residue normalization | KPX lines 891–950, §2.3, pp.23–24 | Ordered cup sign, logarithmic factor and unspecified nonzero comparison constant agree. No guessed numerical constant is asserted. |
| 5.0 Independent Iwasawa tower | CC-1999 lines 471–537, §II.1, pp.11–13; KPX lines 1800–1846, §4.4, pp.45–46 | Corestriction transition and inverse-character Shapiro convention agree. The tower is defined independently of ψ. |
| 5.3 Cyclotomic deformation | KPX lines 1802–1824, Definition 4.4.7/Theorem 4.4.8, pp.45–46 | Inverse universal twist, degree-one coinvariants and comparison are supported; the extra tensor API is false (R01). |
| 5.5 Iwasawa pairing | KPX lines 1485–1579, Definition 4.2.8/Proposition 4.2.9, pp.36–39 | Opposite character on the second factor, two log-scaled specialization maps, generator inversion and the residue constant are retained. |
| 6.2 Good bases and ψ-zero coordinates | LLZ-2010 lines 343–345, 591–598, 696–708, Theorem 3.5/Lemma 3.15, pp.10–13; LLZ-2011 lines 883–924, Proposition 2.11/Theorem 2.12/Corollary 2.13/Remark 2.14, pp.1115–1116 | Odd p and K=ℚ_p are explicit; prescribed crystalline basis requires positivity. The positive analytic module is distinguished from the full Robba differential equation. Arbitrary good-basis claims are not inferred from the conjecture. |
| 7.2a Sen modules/polynomials | KPX lines 2355–2387, §6.2, p.60 | Finite-radius differential/Sen modules, coefficient-valued operator and polynomial retain nonreduced coefficients. The Tate sign is checked below. |
| 7.7 Global rank-one quotient | KPX lines 2715–2751 and 2825–2827, Theorem 6.3.9, pp.68–71; lines 2862–2867, Remark 6.3.11, p.72 | Reducedness, one-dimensional saturated Hom, coefficient line, projective kernel and t-power cokernel agree. Smooth curves can still have bad points. Dangling locator: R03. |
| 7.8 Global triangulation/special fibers | KPX lines 2828–2889, Corollary 6.3.10/Theorem 6.3.13, pp.71–73 | Irreducible connected components for the global construction, dense strictness, coherent graded embeddings and changed algebraic special-fiber parameters agree. |

**Computed adversarial pass: 127 rows.** “Retain” means that the indicated test survives. Characteristic-p/zero-ring tests apply to the algebraic prefixes, not to the mixed-characteristic arithmetic domain. Nonabelian tests apply to the generic cochain interfaces; Γ itself is abelian. The table separates distinct claims within a subsection where they need different controls.

| Statement | Instances tried | Values computed on both sides, or the wrong-model value | Result; change |
|---|---|---|---|
| 0.1 linearization | S=𝔽₃[U], F(U)=U³ | L(1⊗U)=U³; L(U⊗1)=U, while U is outside im F | Invertible L need not give surjective F; retain. |
| 0.1 zero/unit/tensor/dual | M=0; unit 𝔽₃; rank-two basis | 0→0 is invertible; zero F on 𝔽₃ has kernel dimension 1; evaluation eᵢ*(eⱼ)=δᵢⱼ before and after F | Zero admitted, trivial wrong structure excluded; retain. |
| 0.2 free cover | S=𝔽₃×𝔽₃, M=(1,0)S | Kernel ranks (0,1), quotient ranks (1,0), total ranks (1,1) | Underlying projective split; retain. |
| 0.2 equivariant splitting | F(a,b)=(a+b,b) on E² | A lift (a,1) changes by (1,0), so no fixed lift; underlying quotient still E | No equivariant splitting promised; retain. |
| 0.2 Frobenius cohomology | F=id or 2id on E | F−1=0 gives (H⁰,H¹)=(E,E); F−1=id gives (0,0) | Degrees correct; retain. |
| 0.2 fixed-scalar restriction/skew relation | S=𝔽₃[U], x=1 | (F−1)(U)=U³−U, but U(F−1)(1)=0; FU·1=U³ | Restrict scalars; Fa=σ(a)F direction correct. |
| 0.3 fixed sections/idempotents | R=𝔽₂ versus 𝔽₂² | x²=x has 2 versus 4 solutions; e₀+e₁=(1,0)+(0,1)=1 | Diagonal constants give only 2 in the second case; retain. |
| 0.3 basis torsor | Rank one over 𝔽₃; ranks (1,2) on components | Fixed tuples 3, fixed bases 2; GL₁(𝔽₃)×GL₂(𝔽₃) has 2·48=96 elements | Determinant-open basis condition discriminates; retain. |
| 0.3 truncation | W₂(𝔽₃)→W₁(𝔽₃) | Unit 2 has lifts 2,5,8 modulo 9, all reducing to 2 | Prescribed basis lifts; retain. |
| 0.4 ASW equivalence | R=𝔽₃, n=2, rank d | W₂(R)=ℤ/9; fixed module for coordinate F=id is (ℤ/9)^d | Both functors recover constant coefficients; retain. |
| 0.4 higher Frobenius | a=2, base 𝔽₃ versus 𝔽₉ | Geometric fixed scalars 𝔽₉; descent α↦α³ is nonidentity on 𝔽₉\𝔽₃ | Extra base structure needed for constant coefficients; retain. |
| 0.4 diagonal descent | Swap on 𝔽₃², with sign representation | Untwisted invariants (a,a); diagonal twisted invariants (a,−a) | Both dimension 1, different embeddings; retain tensor action. |
| 0.4 projective descent | Rank two trivialization | Σᵢ eᵢeᵢ*(eⱼ)=eⱼ; zero coevaluation instead gives 0 | Triangle laws exclude vacuous dual data; retain. |
| 0.4 projectivity headline | p=2,3; n=1,2; free rank 0,1,2 | Coordinate F(ax)=F(a)F(x); projective ranks 0,1,2 respectively | Includes dyadic and zero rank; retain Lean theorem. |
| 0.4 zero ring | R=0, n>0 | W_n(R) has one element; any unital module is 0; its projectivity holds | No missing Nontrivial hypothesis. |
| 0.4 flatness | M=ℤ/3 over W₂(𝔽₃)=ℤ/9 | Tor₁(ℤ/3,ℤ/3)=ℤ/3, versus 0 for a flat module | Nonprojective quotient excluded. |
| 0.4 ideal step | R=𝔽₃[T]ᵖᵉʳᶠ, J=(T) | φ(J)=(T³)⊊(T); T∉(T³) | Inclusion cannot replace equality; retain. |
| Lean truncated Frobenius | n=0; R=𝔽₃; R=𝔽₉,n=2 | Empty vector↦empty; a³=a on 𝔽₃; (a,b)↦(a³,b³), whose square is identity on 𝔽₉ | Real body; n=0 excluded only from theorem. |
| Lean scalar compatibility | Unital ℤ/pⁿ-module action on the same additive M | [k]·x=kx for every integer k for either action | ZMod action is unique; absence of an extra scalar-tower binder is not a counterexample. |
| 0.5 small groups/BCH | X=aE₁₂,Y=bE₁₂; then X=E₁₂,Y=E₂₃ in size 3 | First exp X exp Y=I+(a+b)E₁₂; second commutator has E₁₃ coefficient 1 | Additive and nonabelian controls; retain BCH term. |
| 0.5 dyadic convergence | exp(2), exp(4) in ℚ₂, k=2ʳ | v₂(2ᵏ/k!)=1; v₂(4ᵏ/k!)=k+1 | First terms do not tend to 0, second do; smallness matters. |
| 0.5 Lang descent | h³−h=1 over 𝔽₃ versus its algebraic closure | No 𝔽₃ solutions; three distinct geometric solutions, derivative −1 | Étale-local assertion, not rational-point surjectivity; retain. |
| 0.6 compact cochains | Trivial group; ℤ₃ acting trivially on ℤ₃ | First (H⁰,Hⁱ⁺)=(ℤ₃,0); second H⁰=H¹=ℤ₃ | Correct coefficients and continuous H¹. |
| 0.6 coherent quotient action | C₃⊂C₉, coefficients 𝔽₃ | H¹(C₉)=𝔽₃ dimension 1; naive split tensor predicts dimension 2; transgression removes one | Retain coherent descent, not a split quotient action. |
| 0.6 nonabelian descent | A₃⊂S₃, coefficients 𝔽₂ | H¹(A₃)=0; H¹(C₂)=H¹(S₃)=𝔽₂ | Quotient contribution survives; retain. |
| 0.6 Milnor/exactness | Constant finite tower T with identity maps | lim T=T, lim¹T=0; zero tower gives 0,0 | Compact limit and shifts agree; no noncompact exactness inferred. |
| 0.6 invariant normalization | χ_ur and κ(p) over ℚ_p | inv(χ_ur∪κ(p))=1; reversed cup=−1 | Arithmetic cup and geometric reciprocity are distinguished. |
| 1.0 field realization | p=3; coefficient E[ε]/ε² | φ(π)=3π+3π²+π³; ε acting on the trivial coefficient representation remains ε≠0 | Nilpotents preserved; retain imported field core. |
| 1.0 integral/rational distinction | O_E/p versus O_E | First rationalization 0, second E; reductions are nonzero in both | Rational equivalence is not integral faithfulness; retain. |
| 1.0b Witt norms | p=3, α(x)=1/3,r=2 | λ([x])=1/9; λ(φ[x])=1/729=α(x)⁶; λ(3[x])=1/27 | Correct radius and p-factor. |
| 1.0b endpoint/gluing | s=r, section [x] | max(α(x)ˢ,α(x)ʳ)=α(x)ʳ; both restrictions keep coefficient x | Endpoint permitted; retain. |
| 1.0b field slopes | φ(e)=pe; unit⊕tR; rank 0 | Supplied +1 becomes KPX −1; degrees 0+(−1)=−1; empty slope list at rank 0 | Same filtration, negated labels; old R01 repaired. |
| 1.0b twisted local systems | (c,d)=(0,1), and (1,2)→(2,4) | τ=id in first; slopes 0 and 1/2=2/4; coefficient Frobenius remains nontrivial for d=2 | Rational coefficient descent required; retain. |
| 1.0c nonequivariant period roofs | Unit rank 2; finite unramified extension degree 2 | H⁰ unit=ℚ_p²; trace(1)=2; rank-zero bundle and B-pair both 0 | Ranks, trace and zero agree. |
| 1.0c marked comparison | Gluing unit u versus 2u | Ambient localization maps differ by factor 2, even when bundles are abstractly isomorphic | Actual localization compatibility excludes unmarked rescaling. |
| 1.1 components | p=3, K=ℚ₃(μ₃) | Two components, swapped by the nontrivial Γ/Γ_K element; Γ_K fixes each | Cannot give full Γ action to one component. |
| 1.1 extension degree | Unramified degree 2 versus cyclotomic degree 2 | Coefficient/coset factors (2,1) versus (1,2); product 2 in each | Both trace factors needed. |
| 1.2 radius models/realization | Multiplication by ε over E[ε]/ε²; two radii | ε·1=ε≠0 after realization, but residual map 0; common restriction uses min of allowed radii | Faithfulness is not a pointwise-only claim. |
| 1.2 finite-projective category | Clopen ranks (1,0) | Restriction ranks 1 and 0, not a global constant free rank | Free-only replacement excluded; retain. |
| 1.3 integral intersections | T and pT inside V | Lattices differ by p; both rationalize to V; ψ(1) mod p=1 although trace(1)=p=0 mod p | Normalize integrally before reduction. |
| 1.4 arbitrary-module decompletion | Unit and φ(e)=pe | Unit/counit sends 1↦1; second line has nonzero slope and is still a φ-module | Not restricted to étale modules; Γ must be retained separately. |
| 1.5 global pure comparison | Constant lattice, (c,d)=(0,1) | Integral fixed sections ℤ_p; isogeny fixed sections ℚ_p | Hypothesis asks for a global lattice, not just pointwise slope 0. |
| 1.6 equivariant/B-pair maps | Tate E(r); extension degree 2 | φ(e)=e, Γ acts χʳ; crystalline t⁻ʳe has φ eigenvalue p⁻ʳ; trace∘restriction=2 | Both roofs retain twist and trace; R03 only repairs prose. |
| 2.1 balanced contraction | Q acting by scalar contraction; 2⊗3; r=0 | θ(2⊗3)=6; θ(0⊗m)=0; balance θ(ar⊗m)=θ(a⊗rm) | Source/target scalar actions agree. |
| 2.1 split projection control | Q²→Q first projection | (1,0)⊗7↦7; (0,1)⊗7↦0 | Projection cannot be replaced by sum of coordinates. |
| 2.2 module ψ | L=2 and scalar contraction id | ψ(6)=3; ψφ(7)=7; zero contraction would give 0 | Left-inverse normalization matters. |
| 2.3 rank-one/basis change | Scalar ψ swaps Q², a=(2,3), f=1; constant basis change 3 | ψ(a⁻¹)=(1/3,1/2), versus a⁻¹ψ(1)=(1/2,1/3); coordinate changes by 1/3 | Retain order and inverse basis factor. |
| 2.4 projector | φf(U)=f(U³), ψ extracts exponents divisible by 3 | P(U)=U; P(U³)=0; P²(U)=U | Correct ker ψ projector. |
| 2.4 fixed-vector map | Same polynomial model | ψ-fixed constants have (1−φ)c=0; U∈kerψ is not hit by them | No abstract surjectivity assertion; retain arithmetic hypotheses later. |
| 2.5 period coordinates | Y=1+π, p=2,3 | ψ(Y)=0; ψ(Yᵖ)=Y; trace(Yᵖ)=pY; ψ(1)=1 | Matches Coleman §§1.45–1.49 and integral cancellation. |
| 2.6 ψ complex | ψ=id or 0 | At id H¹=H²=M,H⁰=0; at 0 differential −1 gives H¹=H²=0 | Degrees 1,2 fixed; intertwiner composition 2·3=6 in both terms. |
| 2.7 universal character/Mellin | G=ℤ_p; Dirac masses at g,h | Universal value 1+T has value 1 at T=0; δ_g*δ_h maps to χ(g)χ(h)=χ(gh) | Multiplicative transform; T=−1 excluded as nonunit. |
| 2.7 finite factor/uniformizer | Γ₂={±1}×(1+4ℤ₂); π′=uπ | Sign character takes −1 to −1, not 1; δ(π′)=δ(u)δ(π) | Finite factor and uniformizer adapter retained. |
| 2.8 analytic Γ rings | Principal component; A=E[ε]/ε² | [γ]−1=T has inverse T⁻¹ on annulus, not disc; ε remains nonzero under the coefficient construction | Whole-disc and Robba annuli distinguished. |
| 3.1 signed complex | φ=2,γ=3 on Q | d⁰(7)=(7,14); d¹(5,11)=−1; d¹d⁰(7)=0, wrong plus sign gives 28 | Sign pinned; retain. |
| 3.1 identity operators | φ=γ=id | Both differentials 0; (H⁰,H¹,H²)=(M,M²,M) | Generic operator theorem is not arithmetic finiteness. |
| 3.2 signed comparison/kernel | φ=ψ=id; polynomial model | Degree-one map (a,b)↦(−a,b), degree-two c↦−c; −ψ(U³)=−U, −ψ(U)=0 | Signs and kernel agree. |
| 3.2 non-acyclic abstract kernel | Polynomial model, γ=id | Kernel differential 0, H¹=H²=kerψ containing U≠0 | Period inverse hypothesis essential. |
| 3.3 resolvent/section | Polynomial model, γ=2id | q=P; S¹(0,U)=(−U,U), S²(U)=−U³; H²(U)=(U,0), H²(U³)=0 | FS=id; corrected chain square works. |
| 3.3 homotopy | Same instance, input (0,U) in degree 1 | (id−SF)(0,U)=(U,0)=(dH+Hd)(0,U); uncorrected section error U | Native Homotopy sign agrees. |
| 3.4 generator change | Q_n(G)=1+⋯+Gⁿ⁻¹; G=2 | Q₀=0,Q₁=1,Q₃=7; (G−1)Q₃=7=G³−1 | n=0 is not a generator change; retain admissible units. |
| 3.4 coefficient control | G=id over 𝔽₃, n=3 | Q₃=3=0, not invertible | Cannot invert arbitrary integer generator index integrally. |
| 3.4 rational torsion | C₂ acting trivially on Q₂ versus 𝔽₂ | Averaging is id over Q₂; 1/2 unavailable over 𝔽₂ and H¹(C₂,𝔽₂)=𝔽₂ | Derived dyadic convention retained. |
| 3.4a Euler characteristic | [K:Q_p]=k, trivial and Tate lines | Dimensions (1,k+1,0) and (0,k+1,1); alternating sum −k both | Twist and degree-two duality agree. |
| 3.4a torsion extension | R/t and tR→R | R/t has (h⁰,h¹,h²)=(1,1,0), Euler 0; H⁰(tR)=0 versus H⁰(R)=E | Torsion Euler is not rank-one Euler. |
| 3.4a pure auxiliary extension | Nonsplit rank 2, degree −1 versus split slopes 0,−1 | Pure slope −1/2 twice has degree −1; split object has two distinct slopes | Existence is not supplied by the split extension. |
| 3.4a restriction of coefficients | E=Q_p(ϖ), ϖ²=p, φ eigenvalue ϖ | E-slope valuation 1/2; restricted rank 2 determinant −p has valuation 1 | Rank and degree rescale correctly. |
| 3.4a trace duality, including p=2 | Basis (1,ϖ), ϖ²=p | Trace matrix diag(2,2p); dual (1/2,ϖ/(2p)); Tr(ϖ·ϖ/(2p))=1 | Trace-zero elements need not lie in pairing radical. |
| 3.5 field characters | δ=1, χ=x times the norm character, generic unramified δ | (h⁰,h¹,h²)=(1,2,0),(0,2,1),(0,1,0) | Both exceptional directions retained. |
| 3.5 inverse/saturation | Zero module; abstract γ=id; tR⊂R | Zero inverse unique; γ−1=0 cannot invert nonzero U∈kerψ; R/tR is torsion | Arithmetic hypotheses and saturation distinguish wrong models; order repair R02. |
| 3.6 comparison/Artinian coefficients | Trivial E[ε]/ε² representation | ε induces nonzero cohomology coefficient map ε on H⁰, reduction gives 0 | Finite-Artinian comparison retains nilpotents. |
| 3.7 finite descent | C₂ with 𝔽₂; trivial quotient Q=1 | H¹(C₂,𝔽₂)=𝔽₂ while ordinary invariants have no degree 1; Q=1 gives identity roof | No division by 2; retain. |
| 3.8 cup order | Identity operators, classes (1,0),(0,1) | Ordered formula gives −1, reversed formula +1 | Anticommutative sign fixed. |
| 3.8 residue/generator/trace | γ replaced by γᵘ; extension degree 2 | Numerator and log each scale by u, quotient unchanged; cor∘res on invariant=2 | Generator normalization and field degree agree. |
| 3.9 localized Artinian cohomology | tᵐD, D; dual numbers | Both localize to D[1/t]; ε survives; opposite degree-two convention multiplies classes by −1 | Ordinary and localized categories kept distinct. |
| 4.1 presentation criterion | Constant free rank d; A/(ε) | Bounds (d,0) give rank d; A/(ε) has (1,1) presentation but is not projective | Vector-bundle hypothesis essential; move generic criterion (R02). |
| 4.1 nonuniform systems | Stage i needs at least i generators | No finite global generator number N can cover stages i>N | Pointwise finite is not uniform finite. |
| 4.2 ψ cokernels/t-torsion | Zero M; R/t | Cokernel for 0 is 0; R/t has h⁰=h¹=1,h²=0 | Zero and torsion contributions agree with exact-sequence route. |
| 4.3 residue test | T=γ−1, f=1, ω=dT/((1+T)logχ(γ)) | −ω/(γ⁻¹−1)=dT/(T logχ(γ)); log times residue=1 | Normalization, inverse generator and minus sign all needed. |
| 4.3 uniform patching | Matrix determinant X over E⟨X⟩ | Inverse exists on X≠0; at X=0 determinant=0 | Local determinant inversion does not cover its zero locus; dévissage needed. |
| 4.3 nilpotent dévissage | A=E[ε]/ε² | 0⊂(ε)⊂A has two E-quotients, lengths 1+1=2 | Residual fiber alone sees length 1; retain thickening argument. |
| 4.4 perfectness/amplitude | Perfect [A --X→ A] in degrees 0,1 | H⁰=0,H¹=A/(X); two free terms do not make H¹ projective | Perfect amplitude cannot be read merely from cohomology support. |
| 4.4 Euler/duality | Unit and Tate over Q_p; rank 0 | Alternating dimensions −1,−1,0; dual degrees 0↔2 | Arithmetic headline passes its boundary controls. |
| 4.5 derived base change | Same complex, A→A/(X)=E | Before base change H⁰=0; after, H⁰=H¹=E; Tor₁ᴬ(A/(X),E)=E | Underived H⁰ comparison false; derived statement retained. |
| 5.0 independent tower | ℤ_p with transition p versus id | lim(×p)=0; lim(id)=ℤ_p | Norm transition cannot be replaced by identity. |
| 5.0 inverse universal action | Order-three η | Shapiro twist at γ gives ζ₃⁻¹, not ζ₃ | Specialization convention retained through finite components. |
| 5.1 ψ comparison degrees | ψ=id on a toy module | Cψ has H¹=H²=M,H⁰=0 | Degree-one ψ-fixed term; arithmetic tower requires period hypotheses. |
| 5.1 corestriction chain map | φ=2,γ=3,index 2,Q₂(γ)=4 | d⁰ for γ² sends 1→(1,8); transfer yields (4,8)=d⁰γ(4); d¹γ(4a,b)=8a−b | Degree-zero norm and degree-one components agree. |
| 5.2 finite characters/trace | η order 3; dyadic sign; degree 2 extension | Twists ζ₃⁻¹ and −1 respectively; cor∘res=2 | Inverse invisible for sign but visible for order 3. |
| 5.3 tensor compatibility | M=N=unit, η(γ)=ζ₃ | Dfm(M)⊗Dfm(N): ζ₃⁻²=ζ₃; Dfm(M⊗N): ζ₃⁻¹=ζ₃² | False; R01. Tensoring additionally with U∨ gives ζ₃² as required. |
| 5.3 universal resolution | E⟨T⟩ --T→ E⟨T⟩; fiber T=0 | Universal invariants 0, coinvariants E in degree 1; fiber kernel E | Shift [−1] right; invariants do not commute with nonflat specialization. |
| 5.3 dual involution | Universal γ | ι²([γ])=[γ]; first twist inverse, second twist direct | Retain sesquilinearity; does not repair R01 automatically. |
| 5.4 analytic comparison | T versus pT; E[ε]/ε² | Rationalized lattices both V; ε coefficient map still nonzero | Lattice independence is rational, not equality of integral lattices. |
| 5.5 pairing specialization | η(γ)=ζ₃; f=1 residue test above | Paired twists ζ₃⁻¹·ζ₃=1; same-η twists instead ζ₃⁻²≠1; normalized residue 1 | Opposite characters and log factors retained. |
| 5.6 geometric nontriangulinity | Res from Q₃(ζ₃) of an order-three line | Rank 2 over Q₃ becomes η⊕η⁻¹ over the extension; φ-fixed subspace has dimension at least 2 | Rational absence of a line is insufficient; geometric quantifier excludes it. |
| 5.6 annular generation | Polynomial toy; weight coordinate T | Fixed constants map to 0 while U≠0; T⁻¹ exists on annulus only | Both arithmetic vanishing and annular scalar extension needed. |
| 5.6a differential lattice | E(1), its dual E(−1), and 0 | Horizontal t⁻¹e has φ eigenvalue p⁻¹; evaluation against te₋₁ is 1; zero lattice 0 | Imported embedded lattice agrees with twists/duals. |
| 5.7 exponential versus finite part | V=Q_p | dim H¹_e=0, dim H¹_f=1 | e cannot be replaced by f. |
| 5.7 H_K versus G_K | V=Q_p(1) | dim Vᴴ=1, dim Vᴳ=0; φ(e)=e | G_K invariants alone do not prove injectivity; rank-two argument uses H_K. |
| 5.7 localization obstruction | Constant section 1 versus t in N_dif⁺ | Modulo t: 1↦1, t↦0; tN[1/t]=N[1/t] | Factor t removes the constant obstruction; zero object gives 0 on both sides. This is a boundary control, not a proof of the all-level theorem. |
| 6.0 Wach height/filtration | V=Q_p(−1), basis n=πe; unit | φ(n)=q n, q(0)=p, filtration weight 1; unit q⁰=1, weight 0 | φ and filtration weights agree. |
| 6.0 lattice change | T→pT | N(pT)=pN(T), rational N unchanged | Integral embedding matters. |
| 6.1 unramified/coefficient change | Unramified degree 2; identity; finite coefficient extension | Trace(1)=2; identity trace=1; free rank d remains d | No unaccounted degree factor. |
| 6.2 good basis | Trivial line, p odd | ψ((1+π)φ(e))=0; coordinate of this generator=1 | Positive Mellin target agrees. |
| 6.2 positive versus full Robba | p=3, u=1/π−1/φ(π) | ψ(u)=0; principal part 2/(3π)≠0 | u is in Robba ψ-zero, outside positive analytic ring; claimed target is correctly smaller. |
| 6.2 basis change | Constant b=2; nonconstant B=1+π | Coordinate factor 1/2; φ(B)=(1+π)ᵖ versus B=1+π | Inverse Frobenius-transformed matrix required. |
| 6.2 positivity/Tate twist | Q_p(1), Q_p(−1), positive weight r twisted by r | Fil⁰ dimensions 0,1 respectively; twisted standing weight r−r=0 | Source sign conversion and twisted formula agree. |
| 6.2 dyadic boundary | Γ₂ | Γ₂ has torsion C₂ and pro-2 factor; no single topological generator of the full product | Source odd-prime proof is not invoked at 2; restriction is explicit. |
| 6.3 Wach-to-Iwasawa map | ψx=x; trivial quotient control | ψ((1−φ)x)=x−x=0; trivial quotient allows order-one pole, excluded hypothesis removes it | Containment hypotheses not dropped. |
| 7.1 rank-one parameters | χ versus x over Q_p | χ-line: φ=1,Γ=χ; x-line: φ=p,Γ=χ | Character x is not the Tate line. |
| 7.1 period factors | Distinct embeddings σ,τ | (tσ)+(tτ)=R; products add their individual exponents | Embedding-specific factors cannot be conflated. |
| 7.2 cohomology/submodules | Trivial/Tate; tᵐR⊂R | Dimensions as §3.5; quotient R/tᵐ nonzero for m>0, zero for m=0 | Saturation iff no positive defect; retain. |
| 7.2 mixed algebraic weights | Two embeddings, exponents (1,−1) | Neither all-nonpositive H⁰ case nor all-positive dual H² case holds | Both exceptional cohomology groups 0. |
| 7.2a Sen module/polynomial | Unit, Tate, infinitesimal weight ε, rank 0 | Θ=0,1,ε; polynomials Z,Z−1,Z−ε; rank-zero polynomial 1 | Sen labels oppose standing Hodge–Tate labels; nilpotents retained. |
| 7.3 Artinian weights | δ=1+ε log, ε²=0 | dlog δ=ε≠0, residue weight 0; algebraic integer k has weight k | Residual weight 0 does not imply locally algebraic family. |
| 7.3 smooth versus algebraic | Smooth character; xᵏ | Differential weights 0 and k | Locally constant in group variable is not constant in coefficient parameter. |
| 7.4 rank-one family classification | Character line with coefficient line L; ramified smooth character | Rank 1 on each chart; transition units of L remain; smooth weight 0 de Rham but ramified character need not be crystalline | Coefficient line and smooth part retained. |
| 7.5 strict triangulation | E(δ)⊕E(δ); distinct generic parameters; rank 0 | Repeated parameter Hom dimension 2, strict test wants 1; rank-zero flag empty | Repetition not automatically strict. |
| 7.6 flat image countercontrol | A=E⟨X⟩, map ×X; X↦ε in E[ε]/ε² | Original image (X) free rank 1; new image (ε) length 1 over length-2 ring, hence nonflat | README correctly excludes arbitrary further pullback. |
| 7.6 image versus cokernel | Same ×X over A | Image free rank 1, cokernel E nonflat with Tor₁(E,E)=E | Flat image does not mean flat cokernel. |
| 7.6 dominant nonflat blowup | Blow up (X,Y), substitute Y=XT | Naive chart X(U−T)=0 has extra X=0 component; dominant transform U−T=0 | README uses transforms/flat base change, not false ordinary base change. |
| 7.6 unit ideal/complex | Blow up (1); complex [A --X→ A] | Blowup identity; H⁰=0,H¹=A/(X), projective dimension 1 | Correct boundary and Tor bound. |
| 7.7 quotient | Strict rank-one object; defect tᵐ | Identity λ has kernel 0,cokernel 0; defect inclusion has cokernel R/tᵐ | Global t-power cokernel allowed; not everywhere surjective. |
| 7.7 reducedness/curve | Smooth curve; E[ε]/ε² | Principal invertible ideal gives identity modification; ε vanishes at every residue point but ε≠0 | Identity modification need not remove special defects; nonreduced base excluded. |
| 7.8 coherent flag | Split generic distinct parameters, rank 2; rank 0 | Two graded lines with defect exponents 0; empty filtration at rank 0 | Generic/special distinctions and zero rank agree. |
| 7.8 saturation parameters | tσᵐR(δ)⊂R(δ) | Submodule parameter δxσᵐ; saturation parameter δ, obtained by subtracting m | Sign of parameter correction fixed. |
| 7.8 nonreduced fiber | Base E[ε]/ε²→E | ε↦0; representation/module at the point is unchanged by prior reduction | Supports pointwise theorem, not a nonreduced global modification theorem. |

**Headline coverage and Lean probes.** The README's deep endpoints, including its structural intermediate endpoints, are:

| Headline | Acceptance-file treatment |
|---|---|
| §0.4 Witt projectivity | Stated as `wittProjective_of_flat_phi`, using the one simple coordinate Frobenius definition. |
| §§0.4–0.6 finite ASW equivalence, small-group Lang descent, compact finite descent | Named in docstring lines 16–22; missing étale coefficient-sheaf/Frobenius categories, Greenberg groups and coherent compact-cochain carrier. |
| §§1.0b–1.6 pure local systems, relative realization, integral intersections, equivariant decompletion and period/bundle/B-pair comparison | Named in lines 23–27; missing relative period/Robba rings, radius models and sheaves. Supplied field realization/filtration are explicitly distinguished. |
| §§3.3–3.7 arithmetic Herr equivalence and integral/affinoid Galois comparison | Named in lines 28–31; missing period modules/operators and analytic Γ rings. The abstract operator identity alone is not used as a stand-in. |
| §§4.3–4.5 uniform finiteness, perfectness, Euler characteristic, Tate duality and derived coefficient change | Named in lines 28–31; same absent arithmetic carriers. |
| §§5.0–5.5 integral/analytic Iwasawa comparison and pairing specialization | Named in lines 32–35; missing independent tower, Shapiro maps and residue-normalized pairing. |
| §§5.6–5.7 annular generation and all-level exponential-image criterion | Named in lines 34–40; missing analytic Γ annuli and embedded differential-lattice realization. General exponential is a supplier reexport. |
| §§6.0–6.3 Wach existence, good bases and Iwasawa interface | Named in lines 41–45; missing embedded Wach lattices, filtered reduction and positive analytic extension. |
| §§7.4,7.7–7.8 rank-one family classification, global quotient and coherent/special-fiber triangulation | Named in lines 46–48; missing relative Robba sheaves, Sen/character data and coherent flags with Fitting modification. |

No additional statable headline was found at the pins. Heavy arithmetic carriers cannot be replaced by a few simple native definitions. The Lean file has one import, one module docstring, one namespace, one definition and one sorried theorem; no sorry'd data, arbitrary Prop surrogate, set_option, auxiliary API catalogue or admitted example.

I compared both mechanically elaborated `#check @` signatures with §0.4, including the scratch probe's output. The theorem retains p prime, n>0, characteristic p, perfection, finite presentation over W_n(R), flatness over ZMod(p^n), the additive equivalence and its semilinearity. The definition retains its stated characteristic-p binder. No binder repair is needed.

Four one-tactic probes were run on scratch copies of the sole sorried theorem: `simp` made no progress, `rfl` failed, `infer_instance` could not synthesize projectivity, and `exact Module.Flat.projective_of_finitePresentation` required flatness over W_n(R), which is not the assumed flatness over ZMod(p^n). These failures are expected probe results, not failures of the unchanged acceptance file. No padding finding is warranted.

**Pinned-library object audit.** Pins are Mathlib `6b7abb3c7686292736be2955bd3eb9ebf63b456a` and Tau Ceti `a91d3aafa8cd3e6bc33dfde0d7677ed0f1625039`. The following 13 groups were opened/searched at those pins; paths in the first column are relative to their named library.

| Pinned file and line | Declaration/object and checked limitation |
|---|---|
| Mathlib `RingTheory/WittVector/Truncated.lean:62`, :74, :78 | TruncatedWittVector is Fin n→R with mk/coeff and transported Witt ring operations. That carrier alone does not supply the projectivity theorem or a truncated Frobenius-module category. |
| Mathlib `RingTheory/Flat/EquationalCriterion.lean:287` | Module.Flat.projective_of_finitePresentation requires flatness over the same ring; it does not discharge the Witt theorem from coefficient flatness. |
| Mathlib `LinearAlgebra/TensorProduct/Basic.lean:122` | TensorProduct.lift includes semilinear scalar compatibility; tensor extensionality is supplied, not a new roadmap API. |
| Mathlib `Algebra/Category/ModuleCat/Basic.lean:117`; `Algebra/Homology/HomologicalComplex.lean:890`, :929 | ModuleCat.ofHom wraps linear maps; CochainComplex.of requires square-zero and ofHom requires chain commutation. No arithmetic differential is built into these constructors. |
| Mathlib `Algebra/Homology/Homotopy.lean:125`, :947 | Homotopy.comm is f=dH+Hd+g; HomotopyEquiv.toHomologyIso gives native homology isomorphisms. |
| Mathlib `Algebra/Homology/ShortComplex/ModuleCat.lean:131`, :173 | moduleCatCyclesIso/moduleCatHomologyIso identify actual kernels and kernel/image quotients, with their structure maps. |
| Mathlib `Algebra/Category/ModuleCat/Descent.lean:59` | comonadicExtendScalars requires faithfully flat extension; the finite-projective restriction needs the dual-basis descent argument owned here. |
| Mathlib `NumberTheory/Cyclotomic/CyclotomicCharacter.lean:307`, :336 | cyclotomicCharacter and continuity exist. The definition becomes trivial without enough roots; the chosen separable closure in characteristic zero supplies them. |
| Mathlib `Algebra/Module/LinearMap/Defs.lean:325`; `Algebra/SkewPolynomial/Basic.lean:93`, :217 | Semilinear smul law and skew-polynomial carrier/relation exist; an automorphism is not needed for the skew relation. |
| Tau Ceti `RepresentationTheory/Homological/ContCohomology/Cup/Product.lean:595` | explicitCup11 uses a continuous additive equivariant pairing and topological coefficient actions; it is not restricted to discrete modules. |
| Tau Ceti `RepresentationTheory/Homological/ContCohomology/Corestriction/Basic.lean:467`, :471 | explicitCor1 and transversal independence use the open finite-index subgroup/topological hypotheses; cochain equality is not asserted in place of cohomology equality. |
| Tau Ceti `Topology/Algebra/Group/Profinite/CompletedGroupAlgebra/Basic.lean:145`, :161, :179, :252, :265, :421 | completedGroupAlgebra, proj, ext, of, proj_surjective and continuous_of provide the actual inverse-limit carrier and maps, including finite components. Continuity retains the topology hypotheses. |
| Tau Ceti `RingTheory/FittingIdeal/Basic.lean:343`, :349, :389, :409; `BaseChange.lean:134`, :175, :184 | fittingIdeal, minors presentation, free-summand shift, free-rank criterion, arbitrary base change and residue-fiber rank criteria are supplied. Finite modules and appropriate free/field hypotheses are present; these are not flat-image theorems. |

Object searches at the pins found no existing relative Robba/Herr/Wach/Sen/triangulation carrier with the required structure. The file's two fully qualified declaration names had no collision outside this roadmap in the accessible roadmap search.

**Ownership and resolved roadmap contracts.** I used the roadmap service's object searches (Witt projectivity/basis torsors, extended Robba rings, field realization/slopes, compact finite descent, cyclotomic deformation, Sen modules, Fitting blowups and coherent triangulations), then opened the relevant texts. Main and Completed copies were used for existing roadmaps; new-roadmap suppliers were checked at their available heads. Board package searches and the supplied open-work contexts were also checked for competing ownership. Hits about Witt groups of quadratic forms or topological triangulation are different objects.

| Resolved contract | Location and result |
|---|---|
| NoncommutativeAndEquivariantIwasawa F.3 and F.6 | `TauCetiRoadmap/NoncommutativeAndEquivariantIwasawa/README.md:1714`–1745 and :3748–3802. F.3 supplies coherent Hochschild–Serre, compact/rational cochains and duality; F.6 stages 1–3 supply field core, slopes and embedded differential lattice. Direct import now replaces the previous duplication. |
| PadicPeriodRings §§1.1–1.5,3–4.3 | `TauCetiRoadmap/PadicPeriodRings/README.md:89`–147, :172–236, :417–492. Completed fields, traces/Tate–Sen, natural period topologies, period rings and fundamental sequence are present. The general continuous boundary is supplied separately by F.6. |
| DerivedModuleAlgebra §1.T.1 and §1.1 | `TauCetiRoadmap/DerivedModuleAlgebra/README.md:1403`, :1573, :2316. Shifted-cone Rlim, Milnor and coherent tower maps resolve; the shift matches the table. |
| PerfectoidSpaces P1.6,P1.10–11,P1.16–18,P1.31 and P3.7–13 | `TauCetiRoadmap/PerfectoidSpaces/README.md:4040`, :4292–4652, :5517, :8424–8758. Tilting/Witt-θ/cyclotomic completion and finite étale/almost-purity inputs resolve. |
| PerfectoidTowers P9.0 | `TauCetiRoadmap/PerfectoidTowers/README.md:1896`–1926. Continuous lifting through finite surjections and compact coefficient inverse-limit comparison resolve with the stated topologies. |
| ProfiniteCohomology Layers 0–12 | `TauCetiRoadmap/ProfiniteCohomology/README.md`, those layer headings and coefficient contracts. Finite discrete cochains, Shapiro, transfer, five-term sequence and cohomological dimension are the imported part; general compact descent is not inferred from discreteness. |
| ClassFieldTheory Layers 5–7,9; LocalFieldsRamification Layer 2 | `TauCetiRoadmap/ClassFieldTheory/README.md:920`, :1220, :1312, :1505; `Completed/LocalFieldsRamification/README.md:576`. Local finite duality, Artin/Weil maps and unramified arithmetic Frobenius resolve. Geometric normalization here is inversion of the supplier's arithmetic map. |
| AdicSpaces Layer 6; AdicSpacesPartII R0.3,R0.5 | `Completed/AdicSpaces/README.md:691`; `TauCetiRoadmap/AdicSpacesPartII/README.md:1769`, :2759. Underlying d=1 curve and completed tensor carriers resolve; this roadmap adds φᵈ patching/equivariant comparisons, not a second generic tensor product. |
| AlgebraicVectorBundles L0A–L2B | `TauCetiRoadmap/AlgebraicVectorBundles/README.md:215`–344. Sheaf/module/bundle comparisons resolve; finite presentation versus flat pullback is distinguished. |
| CrystallineCohomology CR.4.7 | `TauCetiRoadmap/CrystallineCohomology/README.md:6630`–6656. Perfect-field higher-rank Dieudonné–Manin classification is supplied. Relative affinoid slope filtrations are not claimed. |
| ColemanPowerSeries §§1.45–1.49; IntegralIwasawaTheory §7.1 | `TauCetiRoadmap/ColemanPowerSeries/README.md:5014`–5107. Scalar trace, polynomial comparison, integral trace and c₀=ψ are present; §1.48 explicitly imports IntegralIwasawaTheory §7.1. At p=2, ψ(T)=−1 and τ(T)=−2, so cancellation precedes reduction. |
| PadicMeasuresIwasawaAlgebras §§2.2,3a.1,5.2 | `TauCetiRoadmap/PadicMeasuresIwasawaAlgebras/README.md:1229`, :2213, :3367. Bounded ψ/support, unit character components and compact Hausdorff inverse-limit exactness resolve. |
| PadicFunctionalAnalysis §§1.3–1.4,2.2–2.4,4.3–4.4,4.7,5.1–5.3 | `TauCetiRoadmap/PadicFunctionalAnalysis/README.md:354`–457, :682–880 and cited character-space sections. Finite Banach topologies, strict splittings and one-variable Amice stages resolve. General compact-K-unit scalar Mellin and Γ annuli remain here. |
| RigidAnalyticGeometry §§1.1–1.4,6.1–6.3,7.3,8.1,8.4 | `TauCetiRoadmap/RigidAnalyticGeometry/README.md:177`–263, :464–505, :617, :690, :762. Affinoids, coherent sheaves, relative analytification and proper GAGA resolve. Analytic Fitting modifications are built here from native Fitting ideals; they are not claimed as supplied flattening. |

Consumer citations were checked as consumer contracts: PadicHodgeTheory §§4–5,7; FiniteFlatGroupsAndIntegralPadicHodgeTheory R07.4; VectorBundlesAndIsocrystals VB4; LocalGaloisDeformationRings §0.4; LocallyAnalyticDistributions Layers 0–3; SelmerIwasawaCohomology Layer 3; ArithmeticGaloisDuality D7. In particular, VectorBundlesAndIsocrystals' supplier paragraph at README:71 explicitly consumes this roadmap's §0.4/§1.0b/§1.5 Witt descent and twisted local systems. PadicHodgeRegulators' available head consumes the signed Herr interface and all-level input; it is not used as an upward supplier here. No second owner for the retained relative arithmetic endpoints was established by these searches.

The shape comparison used the main DerivedModuleAlgebra and PadicMeasuresIwasawaAlgebras READMEs. This README has the requested summary, ownership, conventions, contracts, build explanation, layered prose, API/Checks blocks, examples, dependencies, consumers and references. Its 128 Needs clauses are a substantial repair of the previous target-level omission. The incomplete fragments in R03 remain. No copied source passages, computational algorithm, route-specific replacement of the general relative theory, sorry'd data or set_option was found.

## Not verifiable

- **NSW, Theorem 2.4.1, Chapter II §4, p.111:** the source service classified DOI 10.1007/978-3-540-37889-1 as paywalled/uncertified. Its precise printed statement was not read. The F.3 supplier contract actually consumed here was inspected independently. This settled uncertified citation is not a renewed missing-text request.
- **FF, Theorem 11.5.1, pp.383–384:** the guessed Numdam item for Astérisque 406 and the author's Courbe.pdf link returned 404. The author's publication listing led to the publisher rather than readable full text at this locator. The exact FF theorem was not certified; the accessible KL-I equivalences used alongside it were inspected. This non-sampled locator is recorded in the scratch missing-reference list; the review is not parked.
- Every seeded target had readable supporting text, with the NSW limitation within the dyadic-descent reference distinguished above. Other referenced works were retrieved through legal author, institutional, open-repository or publisher sources. Retrieval is not certification of every unsampled proof. In particular, the finite tests do not prove the analytic existence theorems or the all-level exponential-image theorem, and the sorry build does not certify their truth.

## Source issues

These are source defects, not additional roadmap findings. The README already uses the KL-II and Berger corrections and avoids the two false KPX pullback assertions. Author corrections were read at KL-II lines 7269 and 7284–7292, and Berger-errata lines 75–83.

- **Misprint** in KL-I at Lemma 1.5.2, manuscript p.24: the source says to clear the bottom-left block; it should be the top-left block; affects the proof.
- **Gap** in KL-I at Lemma 3.2.6, manuscript pp.73–74: the source says its invariant-tuple algebra supplies invariant bases; it should restrict to the determinant-invertible clopen locus; affects the proof.
- **Error** in KL-I at Proposition 3.2.7, manuscript p.74: the source says descent uses Witt coefficient invariants alone; it should tensor with the representation and take diagonal invariants; affects the proof.
- **Misprint** in KL-I at Lemma 3.2.12, manuscript p.75, lines 2985–2990: the source says to sum row indices while fixing a column; it should sum columns in each fixed row of (I−AB)x=0; affects the proof.
- **Error** in KPX at Definition 2.2.2, manuscript p.16, lines 595–597: the source says the Frobenius source is free of rank p over its target; it should make the target free over the Frobenius image of the source; affects a stated result.
- **Error** in KPX at Corollary 6.3.6(1), manuscript p.67, lines 2676–2678: the source says every further pullback preserves flat image; it should require preservation of the regular Fitting generator, or distinguish pullback of the image sheaf; affects a stated result.
- **Error** in KPX at Corollary 6.3.6(1–2), manuscript pp.67–68: the source says ordinary blowups commute with dominant base change; it should require flatness or use successive dominant transforms; affects a stated result.
- **Gap** in Berger-Wach-2004 at Definition III.4.1, manuscript p.21: the source says rational height and Γ conditions define the Wach category; it should also require étaleness after B_F scalar extension; affects a stated result.
- **Gap** in Berger-Wach-2004 at Theorem III.4.4, manuscript p.22: the source says a filtered class modulo π directly has a filtered lift; it should improve the lift with successive γ−χ(γ)^j operators; affects the proof.
