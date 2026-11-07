# Review of ClassicalGroupsPartII (pull request #1492 at 110ca61)

**Verdict:** needs changes

:robot: Independent AI review, incremental: 111 changed README lines since cb5deca (the acceptance file, metadata and the outside-folder diff are unchanged). One P3 finding, no P1/P2. The previous P3 is repaired. The mathematics of every changed passage checks out, with computed witnesses below; the one remaining defect is that the new supplier citations resolve only at the head of an open revision of ClassicalGroups that the pull request's own merge-order paragraph does not name.

## R01 (P3) — The §3A citations resolve only at an open revision of ClassicalGroups, which the pull request does not name as a merge-before

**Location:** `TauCetiRoadmap/ClassicalGroupsPartII/README.md:34` (“Its Layer 3A owns the complex Sp₂g theory … (§3A.1) … (§3A.2) … §3A.3”), and the anchors at lines 526 (`#3a1-tori-lattices-and-differentiation`), 849, 892 and 983 (`#3a3-exterior-blocks-and-cartan-components`, `#3a2-connected-rational-grouplie-comparison`); §3A is cited at lines 34–48, 62, 286–300, 509, 631, 821, 853, 863, 943, 947 and 1044.

**Claim:** ClassicalGroups on main (content head eaf17b1) has Layers 0–6 and no Layer 3A: its headings run `TauCetiRoadmap/RepresentationTheory/ClassicalGroups/README.md:237` (Layer 3), `:272` (Layer 4), `:297` (Layer 5), `:310` (Layer 6), and no line of that file mentions a contraction commutator, an inverse-form wedge map or primitive kernels. Sections 3A.1, 3A.2 and 3A.3 exist only at the head a75ea798 of the open ClassicalGroups revision #1192 (`TauCetiRoadmap/RepresentationTheory/ClassicalGroups/README.md:663`, `:754`, `:806` at that head). Since the diff moved the commutator identity, surjectivity, the kernel's highest weight, simplicity and dimension, and the Cartan-component classification out of CG.1.5/CG.1.7 and into those citations, this roadmap now depends on that revision merging first. The pull request's description says “In open pull requests of ours: none” and its merge-order paragraph says “No open pull request of ours must merge before this one … It depends on no other author's open pull request.” Neither names the ClassicalGroups revision.

**Witness:** `scratch/overlaps.md` lists exactly these six ids under “Ids this README cites that only an open revision defines”, each resolving to #1192 and none to main; `grep -n 3A` on main's ClassicalGroups README returns nothing. The content is consumed, not duplicated: #1192's scope note (`README.md:52–56` at its head) and its Downstream consumers (`:1889–1894`) assign the GSp forms (CG.1.4–CG.1.5, CG.1.7) to this roadmap and the Sp statements of §§3A.1–3A.3 to itself, matching this README's lines 43–49.

**Exact repair:** No README change: the citations are by roadmap name and section, as required, and they are accurate at that head. Name the ClassicalGroups revision (pull request #1192) in the pull request's merge-order paragraph as a pull request that must merge before this one, and replace “In open pull requests of ours: none” accordingly. (Re-citing main's Layer 3 instead would leave the commutator identity and the primitive-kernel simplicity without an owner, since main's Layer 3 does not state them, so that is not an alternative.)

## Previous findings

- R01 — repaired: `TauCetiRoadmap/ClassicalGroupsPartII/README.md:1540` now reads “Chapter 5 §b, Lemma 5.9 and Proposition 5.10, p.100”; `milne line 4324` starts §b (Quotient maps), Lemma 5.9 and Proposition 5.10 are at `milne line 4370` and `milne line 4380`. No new problem was introduced.

## Verified sound

**Coverage.** Incremental re-review of the 111 changed lines (80 insertions, 31 deletions, README only) against the previous report at cb5deca. I read the full diff and every passage it touches: the Scope paragraph (lines 30–49, 58–62), the ClassicalGroups supplier contract (280–300), CG.0.4 step 2 and its Needs (509, 526), the CG.0 Dependencies (631), CG.1.4's comparison paragraph and Needs (816–824, 849), CG.1.5 in full (851–892), CG.1.7's new argument, Check and Needs (942–948, 961, 983), the CG.1 Dependencies (1044) and the References line (1540). The seeded sample (“Construction and proof”, “Consequences to check”) was checked where it falls in these passages: the proof blocks of CG.0.4, CG.1.5 and CG.1.7 and the consequence blocks of CG.1.4 and CG.1.5. The Lean file is byte-identical to the one the previous review read (`git diff cb5deca..HEAD -- Suggested.lean` is empty), so its 24 declarations, elaborated signatures and padding probe carry over unchanged; I re-ran the elaboration and the gate anyway.

**The supplier at its head.** I read ClassicalGroups Layer 3A in full at #1192's head a75ea798 (`TauCetiRoadmap/RepresentationTheory/ClassicalGroups/README.md:626–941`) and compared each consumed statement with what this README says of it:

| This README says (line) | At #1192's head | Agrees |
| --- | --- | --- |
| Layer 3A uses `Matrix.symplecticGroup (Fin g) ℂ` on (Fin g ⊕ Fin g)→ℂ with native J=[[0,−I],[I,0]] (286–287) | `:628–632`: the same carrier, native J, condition A J Aᵀ = J | yes |
| §3A.1 torus diag(t,t⁻¹) on the two summands, lattice ℤ^g, dominant λ₁≥⋯≥λ_g≥0, positive roots (288–289, 509) | `:670–678` torus and roots ε_i±ε_j, 2ε_i; `:744–746` Sp dominant tuples are integers λ₁≥⋯≥λ_r≥0 | yes |
| §3A.2 group-stable = Lie-stable, group = Lie intertwiners, smooth connected over algebraically closed characteristic zero (289–292, 947) | `:756–762` | yes |
| κ with the form, L = wedge by Σ a_i∧b_i for any basis with ω(a_i,b_j)=δ_ij, commutator (g−k)·id for every k≥0 (292–296) | `:810–819`: κ with (−1)^(a+b−1), Ω_J=Σ f_i∧e_i “the bivector Σ a_i∧b_i of every basis with ω(a_i,b_j)=δ_ij”, `κ_(k+2)∘L_k − L_(k−2)∘κ_k = (r−k)·id`, r−k an integer | yes |
| surjective for 1≤k≤g (296–297) | `:819–820`: surjective for every k≤r+1 (a superset) | yes |
| kernel simple of highest weight ω_k, highest vector e₁∧⋯∧e_k, dimension binom(2g,k)−binom(2g,k−2) (297–299, 862–863) | `:820–823` | yes |
| Cartan component of the highest tensor is the simple of the summed weight; components exhaust (299–301, 942–948) | `:889–900` U(g)-submodule generated by the highest tensor; existence, uniqueness, exhaustiveness | yes |
| §3A.3's own ownership excludes the GSp form (43–49) | `:52–56`, `:1889–1894` | yes |

**Native names (line 60–61).** `TauCeti.existsUnique_isDominantIntegral_highestWeight_of_finiteDimensional_irreducible` is `TauCeti/Algebra/Lie/HighestWeight/Existence.lean:240` and `TauCeti.finiteDimensional_iff_isDominantIntegral_of_isHighestWeightVector` is `TauCeti/Algebra/Lie/HighestWeight/FiniteDimensional.lean:126` at the pinned Tau Ceti a91d3aafa8cd3e6bc33dfde0d7677ed0f1625039; both live under `[Field K] [CharZero K] [IsAlgClosed K]` with a base `b` of the Killing root system (`Existence.lean:101–107`, `FiniteDimensional.lean:75`), which matches their use here only through the complex §3A.3. No other ClassicalGroups Layer 3/Layer 5 or LieHighestWeight citation remains in the README (`grep` for `layer-3-`, `layer-5-`, `LieHighestWeight`: none; the remaining “Layer 3” hits are ReductiveGroups Layer 3).

**Conventions at the pins.** `Matrix.J l R = fromBlocks 0 (-1) 1 0` (`Mathlib/LinearAlgebra/SymplecticGroup.lean:58`) and `symplecticGroup` is `{A | A * J * Aᵀ = J}` (`:101–102`); `TauCeti.JFin` is `Matrix.J` transported along `finSumFinEquiv` (`TauCeti/LinearAlgebra/Matrix/GeneralLinearGroup/Symplectic/Basic.lean:243`, `JFin_submatrix` at `:257`). So the native form has ω_J(e_i,f_j)=J(inl i, inr j)=−δ_ij and ω_J(f_i,e_j)=+δ_ij, exactly as #1192 `:810` states, and this README's J=−JFin form has ω(e_i,f_j)=+δ_ij: the README's “κ_k is the negative of the contraction of §3A.3” (line 821) and “symplectic basis (e_i,−f_i) has bivector −Ω” (line 870) are both correct.

**Adversarial computations on the changed statements.** All values were computed by hand on the stated instances.

| Statement (line) | Instances tried | Computed values on each side | Result; change |
| --- | --- | --- | --- |
| Sign transport to the native form (286–296, 870, Check 884) | g=1, k=0 | Native: Ω_J=f₁∧e₁, κ_J(Ω_J)=ω_J(f₁,e₁)=+1=r. README: Ω=e₁∧f₁, κ(Ω)=ω(e₁,f₁)=+1=g. Negating only κ: −1 | Both maps change sign, commutator unchanged; retain |
| Bivector is basis-independent (293–294) | g=1, native form, bases (f₁,e₁) and (e₁,−f₁) | ω_J(f₁,e₁)=1, bivector f₁∧e₁; ω_J(e₁,−f₁)=1, bivector e₁∧(−f₁)=f₁∧e₁ | Equal; the “−Ω” of line 870 is Ω_J; retain |
| κ sign convention agrees with §3A.3 (CG.1.4 line 807, #1192 `:812`) | g=2, κ₃(e₁∧e₂∧f₂) | pairs (1,2),(1,3): ω=0; (2,3): (−1)^(2+3−1)=+1, ω(e₂,f₂)=1, remainder e₁ | Both use (−1)^(a+b−1); Check 881 recomputed, κ₃L₁(e₁)=e₁; retain |
| Same kernel under negation (819–822) | g=1, k=2; g=2, k=2 | κ(e₁∧f₁)=1, κ_J(e₁∧f₁)=−1, kernels both 0 in Λ²V at g=1; at g=2 both have the row ±(0,1,0,0,1,0), kernel dimension 5 | ker(−κ_J)=ker κ_J=ker κ; retain |
| Integer-matrix descent (Check 885–886) | g=2, κ₂ on basis e₁e₂,e₁f₁,e₁f₂,e₂f₁,e₂f₂,f₁f₂ | row (0,1,0,0,1,0): rank 1 over ℚ, ℂ and 𝔽₂; kernel dimension 6−1=5 in each; over 𝔽₂, κ₂(Ω)=2=0 so Ω∈ker | Rank descends; splitting needs characteristic 0; retain |
| Surjectivity bound (Check 887, #1192 bound r+1) | (g,k)=(2,3),(1,3),(2,4) | κ₃L₁=(2−1)id on V, so κ₃:Λ³V(4)→V(4) is onto, hence an isomorphism, P₃=0; at g=1 Λ³V=0→V(2) not onto, binom(2,3)−binom(2,1)=0−2=−2; at g=2,k=4 Λ⁴V(1)→Λ²V(6) rank 1 | Surjective exactly for k≤g+1; P_k range 1≤k≤g correct; retain |
| Weight pullback of the highest vector (875) | (m,u)=(0,(1^k,0^(g−k))); negative control (1,(1^k,0)) | (m,u)↦(u,2m+Σu_i) gives (ω_k,k); e₁∧⋯∧e_k scales by c^k under cI; control gives (ω_k,k+2)=ν⊗P_k, a different scalar degree | Pullback lands on ω_k in degree k; retain |
| GSp₂g(ℂ)=ℂ^×·Sp₂g(ℂ) and single scalar power (945–946) | h=diag(2,3) at g=1; V^⊗2 | ν(h)=6, c=√6, c⁻¹h has multiplier 6/6=1; cI acts on V^⊗2 by c² only | Every point is a scalar times an Sp point; retain |
| Simplicity transfer needs semisimplicity (876, Check 888) | g=2, Λ²V; P₁; upper-triangular B₂ on K² | End(P₂⊕ν)=K×K, dimension 2 (P₂ of dimension 5 and ν of dimension 1 non-isomorphic), not simple; End(V)=K; End_B(K²): commuting with E₁₂ and diag(1,2) forces scalars, yet K e₁ is B-stable | One-dimensional End + semisimple ⇒ simple; the control shows the hypothesis is used; retain |
| GSp-stable ⇒ Sp-stable (876) | g=1, any subspace U | Sp₂(ℂ)⊂GSp₂(ℂ), so a GSp-stable U is Sp-stable; Sp-simple P_k has no proper GSp-stable subspace | Direction of the implication correct; retain |
| Hom comparison gives End=ℚ then End=K̄ (876) | ℂ/ℚ and K̄/K | dim_ℂ End_ℂ = 1 = dim_ℚ End_ℚ; dim_K̄ End_K̄ = dim_ℚ End_ℚ = 1 | Absolute simplicity follows with semisimplicity over K̄; retain |
| Orbit span equals U(𝔰𝔭)-span (944–948, Check 961) | g=1, u=(2): e₁⊗e₁; ν⊕1: n+1 | SL₂ orbit {v⊗v} spans Sym²V: e₁e₁, f₁f₁, (e₁+f₁)⊗(e₁+f₁) give e₁f₁+f₁e₁: dimension 3; GL₂ adds only scalars c²: dimension 3. Sp fixes n+1: dimension 1; GSp at 2I gives 4n+1, with n+1 spanning dimension 2 | Spans agree exactly when scalars act by one power, which holds in the primitive tensor product; retain |
| Sp roots at t=1 and the displayed positive system (509) | g=2, torus diag(z₁,z₂,t/z₁,t/z₂) | conjugation weights z₁/z₂ (ε₁−ε₂), z₁z₂/t (ε₁+ε₂), z₁²/t (2ε₁); at t=1: ε₁−ε₂, ε₁+ε₂, 2ε₁, the §3A.1 list; (2,1) pairs with ε₁−ε₂, ε₁+ε₂, 2ε₂ to 1,3,2 ≥0, with the negatives to −1,−3,−2 | Dominant tuples fix the positive system; retain |
| “surjective for 1≤k≤g” is within §3A.3's k≤r+1 (296–297) | k=1, g arbitrary; k=g | κ₁:V→Λ^(−1)V=0 is onto; k=g≤g+1 | Subset of the supplier's claim; retain |
| Rank–nullity dimension (875) | (g,k)=(2,2),(3,3) | 6−1=5, 20−6=14 (targets ν⊗Λ⁰ and ν⊗Λ¹ of dimensions 1 and 6) | Agrees with §3A.3 and Check 890; retain |
| References §b (1540) | Chapter 5 of Milne | `milne line 4324` is §b; 5.9 and 5.10 at `milne line 4370`, `4380`, printed p.100 | Repaired; retain |

**Carried forward from the previous report** (statements the diff leaves untouched; each row is the previous report's row, recomputed instances unchanged, cited as “r2”):

| Statement/convention | Instances tried | Computed left side | Computed right side / negative control | Result; change |
| --- | --- | --- | --- | --- |
| Positive rank and coefficient conventions | g=0,1; F₂,F₃ | At g=0, hJhᵀ=0 for every s; at g=1, hJhᵀ=det(h)J | 0=s·0 admits s=1,2 over Q; 2=0 in F₂ and 3! = 0 in F₃ | Rank and characteristic restrictions have actual work; retain (r2) |
| Algebraic versus point representations | G_m over F₂, characters 1 and t | Both evaluate to 1 on F₂× | Their weight-1 coefficients are 0 and 1 | Coactions distinguish them; retain (r2) |
| Native pairing sign | g=1, e,f | eᵀJf=1; fᵀJe=−1 | eᵀJFin f=−1; fᵀJFin e=1 | J=−JFin is necessary; retain (r2) |
| Two similitude matrix equations | h=diag(2,3) | hJhᵀ=6J | hᵀJh=6J | Same multiplier; retain (r2) |
| Independent t and scalar degree | h=diag(2,3), cI=2I | (t,z)=(6,2),(4,2) | d(t)=2, d(z)=d(w)=1; scalar values 4,2,2 | Retain (r2) |
| Dominance with unrestricted multiplier | g=1, (−1,0),(0,−1) | First dominant, degree −2 | Second not dominant, degree −1 | Negative twists remain; retain (r2) |
| Integral, virtual coefficients | −x and z²+w² | Coefficients −1,−1; and 1,1 | −x is allowed; x²−2t=z²+w² | Neither coefficient positivity nor averaging is used (r2) |
| Signed exterior indices | k=−1,0,1,2g+1 | E₋₁=0,E₀=1,F₁=E₁,E_(2g+1)=0 | Natural subtraction would give F₁=E₁−t | Signed convention retained (r2) |
| CG.0.1 coordinate presentation | g=1, diag(2,3), zero matrix | s=6,D=1/6; D det(h)=1 | Zero matrix gives D det(0)=0≠1 | Invertibility is encoded; retain (r2) |
| CG.0.1 Hopf multiplication order | h=diag(2,3), j=[[0,1],[−1,0]] | (hj)₁₂=2; Δx₁₂(h,j)=2 | (jh)₁₂=3 | Noncommuting example pins multiplication order (r2) |
| CG.0.1 counit and antipode | I,h,h⁻¹ | s(I)=1,s(h)=6,s(h⁻¹)=1/6 | 6·(1/6)=1 | Retain (r2) |
| CG.0.1 multiplier-one fibre | diag(2,1/2) | hJhᵀ=J | ν=1; same equation with −J | Sp fibre and sign transport agree (r2) |
| CG.0.1 zero value algebra | A=0 | One algebra map to A | One matrix unit and one scalar unit | Both point sets have cardinality 1 (r2) |
| CG.0.2 central kernel | ε=±1 | π(I,1)=I, π(−I,−1)=I | c²=1 implies a=c⁻¹I=cI | Diagonal μ₂, retain (r2) |
| CG.0.2 fppf versus rational-point lift | diag(1,2) over Q | No c∈Q with c²=2 | Over Q[C]/(C²−2), C⁻¹h has multiplier 1 | Rank-two faithfully flat lift works (r2) |
| CG.0.2 nonreduced values | Q[ε]/ε², multiplier 1+ε | (1+ε/2)²=1+ε | ε²/4=0 | No reduced-value-algebra assumption (r2) |
| CG.0.2 geometric connectedness | g=1 | GL₂ is det≠0 in affine 4-space, hence one component | Surjective quotient of SL₂×G_m also gives one component | General Sp connectedness is available natively; retain (r2) |
| CG.0.2 faithful action | g=1,h=diag(2,3) | Matrix entries recover s=6 | Inverse entries recover s⁻¹=1/6; determinant localization supplies 1/6 | Correct closed-immersion notion; retain (r2) |
| CG.0.2 reductivity criterion | Upper unipotents U₂ on K² | Fixed subspace K e₁, dimension 1 | u(1)e₂=e₂+e₁; no invariant complementary line | Faithful alone is insufficient; complete reducibility retained (r2) |
| CG.0.2 normality premise | j as above, u(a) upper unipotent | j u(1)j⁻¹=[[1,0],[−1,1]] | This is not upper unipotent | Criterion does not kill nonnormal unipotents (r2) |
| CG.0.3 lattice pullback and its inverse | g=1,(m,u)=(−1,2),(0,1) | Pullbacks (u,d)=(2,0),(1,1) | (d−u)/2=−1,0; (u,d)=(1,0) has odd difference | Both directions and excluded parity checked (r2) |
| CG.0.3 simple roots/coroots | g=0,1,2 | Empty; (−1,2); (0,1,−1),(−1,0,2) | Degrees 0; pairings u₁−u₂,u₂; Cartan off-diagonals −1,−2 | Central coordinate and root lengths agree (r2) |
| CG.0.3 root order | g=1,0,α,2α,e_t,e₁ | 0≤α and 0≤2α | α≤0 false; degrees of e_t,e₁ are 2,1 versus 0 | Antisymmetry and equal-degree restriction discriminate (r2) |
| CG.0.4 torus immersion and restriction | t=6,z=2; t=1,z=2 | Matrices diag(2,3),diag(2,1/2) | Multipliers 6,1; off-diagonal coordinate images 0 | Maps and directions correct (r2) |
| CG.0.4 maximal torus centralizer | g=1, generic diagonal, E₁₂ | Conjugation eigenvalue z²/t | At (z,t)=(2,6), eigenvalue 2/3≠1 | Off-diagonal centralizer candidates excluded (r2) |
| CG.0.4 scalar subtorus | g=2,c=2 | (t,z₁,z₂)=(4,2,2) | All four diagonal entries 2 | One parameter in a rank-three torus (r2) |
| CG.0.5 flip and square | g=1,(m,u)=(−1,2) | Flip=(1,−2); second flip=(−1,2) | Both scalar degrees 0; t fixed | Correct reciprocal involution (r2) |
| CG.0.5 distinct flips and conjugation | g=2,(0,1,2) | f₁f₂ gives (3,−1,−2) | f₂f₁ gives (3,−1,−2); swapping labels exchanges f₁,f₂ | Semidirect relations hold (r2) |
| CG.0.5 permutation direction | Cycle (123), weight of z₁ | u∘σ⁻¹ gives weight of z₂ | u∘σ gives weight of z₃ | Direction fixed by a non-involutive permutation (r2) |
| CG.0.5 group algebra and constants | [−1,2]·[1,−2], −3 | Product [0,0]=1; coefficient of −3 at 0 is −3 | Induced automorphisms preserve that coefficient | Formal monomials, not Laurent functions (r2) |
| CG.0.5 fixed ring | g=0,1,2 | g=0 all Z[t±1] fixed; g=1 x fixed | z is moved to w; g=2 x₁ is moved to x₂ by a swap | Both kinds of Weyl generators required (r2) |
| CG.0.6 parity descent | Sp standard u=1, scalar d=0,1 | Kernel actions −1,+1 | d−u=−1,0 | Only degree 1 descends to standard GSp module (r2) |
| CG.0.6 negative multiplier descent | u=0,d=2,−2 | Kernel action +1 in both cases | m=1,−1, characters t,t⁻¹ | No nonnegative-central-degree restriction (r2) |
| CG.0.6 generic quotient contract | Identity; square G_m→G_m | Dimension 2 stays 2; pullback exponent n becomes 2n | Exponent 1 has kernel action −1, exponent 2 has +1 | Sound; supplier ownership is restored (r2) |
| CG.0.6 infinitesimal kernel control | Square map in characteristic 2, A=F₂[ε]/ε² | (1+ε)²=1; weight 1 acts by 1+ε≠1 | Weight 2 acts by 1 | Scheme-theoretic triviality catches invisible rational-point kernel (r2) |
| CG.1.1 finite category compatibility | Trivial H, modules 0,F,F² | Hom(0,F)=0; dim Hom(F,F)=1; dim Hom(F²,F²)=4 | E₁₂E₂₁=E₁₁≠E₂₂=E₂₁E₁₂ | Actual linear category; supplier ownership restored (r2) |
| CG.1.1 tensor additivity | Maps 2,−2 on unit; char 0 and 2 | Tensor of sum gives 0 | 2id−2id=0; in F₂, (1+1)id=0 | Compatibility survives small characteristic (r2) |
| CG.1.1 split ring/dimension | g=1,V⊗V | [V]²=[Sym²V]+[ν], dimension 4 | 3+1=4; x²=z²+2t+w² | Retain (r2) |
| CG.1.1 point evaluation and distinct classes | Unit,ν,ν⁻¹ at 2I | Values 1,4,1/4 | All three dimensions are 1 | Dimension alone does not identify classes (r2) |
| CG.1.2 standard coaction | δ(e_b)=Σ e_a⊗x_ab; diag(2,3) | e₁ maps to 2e₁, e₂ to 3e₂ | Inverse-action model gives 1/2,1/3 | Column convention correct (r2) |
| CG.1.2 powers and weights | g=1,k=0,1,3; d=0 | Dimensions 1,2,0; tensor degree zero has dimension 1 | Standard weights (0,1),(1,−1), each multiplicity 1 | Retain (r2) |
| CG.1.2 all-algebra exterior comparison | h=(1+ε)I over Q[ε]/ε² | Λ²h acts by 1+2ε | (1+ε)²=1+2ε | Nilpotents are seen (r2) |
| CG.1.2 rational-point density | g=1,(a,b,r,s)=(2,3,5,7) | Big-cell matrix [[5,15],[10,37]], det=185−150=35 | r s=35 | Infinite split chart supplies density (r2) |
| CG.1.2 density negative controls | GL₂(F₂), F₄ point [[α,1],[1,0]] | x₁₁²−x₁₁=0 on all six F₂ points | α²−α=1 on the F₄ point, determinant 1 | Finite-field point density excluded (r2) |
| CG.1.2 correct group for density | Sp points and 2I | s−1 vanishes on Sp | At 2I it is 4−1=3 | Sp points cannot replace GSp points (r2) |
| CG.1.2 stable subspace iff subcomodule | 0,V,K e₁ | First two are stable of dimensions 0,2g | K e₁ is torus-stable but pair swap sends e₁ to −f₁ | Both implications use all group points (r2) |
| CG.1.3 integer twists, tensor and dual | m=−1,n=1 at 2I | ν⁻¹⊗ν value (1/4)·4=1 | ν⁰ value 1; dual of ν has value 1/4 | Retain (r2) |
| CG.1.4 contraction and equivariance | e₁∧f₁,f₁∧e₁; h=2I | κ values 1,−1; κ(h·q₁)=4 | ν(h)κ(q₁)=4; untwisted target would give 1 | Sign and multiplier twist necessary (r2) |
| CG.1.4 kernels and degree range | g=2,k=2; g=1,k=2,3 | κ₂(q₁)=1, kernel dimension 6−1=5 | At g=1 κ₂ still equals 1, P₂ absent; Λ³=0 | Full κ range, restricted P range correct (r2) |
| CG.1.5 raising bivector | g=2,1 in ν | L₀(1)=q₁+q₂ | Scalar 2 multiplies both summands by 4=ν(2I) | Correct source twist (r2) |
| CG.1.5 commutator degree zero | g=2,k=0 | κL(1)=2; Lκ(1)=0 | Difference 2=(g−k)·1 | Retain (r2) |
| CG.1.5 commutator middle degree | g=2,k=1, e₁ | κL(e₁)=e₁; Lκ(e₁)=0 | Difference e₁=(2−1)e₁ | κ₃ is needed and supplied (r2) |
| CG.1.5 commutator at and above rank | g=2,k=2,q₁; g=1,k=2,q₁ | Ω−Ω=0; 0−q₁=−q₁ | (2−2)q₁=0; (1−2)q₁=−q₁ | Integer subtraction essential (r2) |
| CG.1.5 Lefschetz string coefficient | r=0,(g,j)=(2,2),(3,2),(3,3) | κΩ²=2Ω,4Ω; κΩ³=3Ω² | j(g−j+1)=2,4,3 | Retain (r2) |
| CG.1.5 surjectivity and primitive dimension | (g,k)=(2,2),(3,3),(4,4) | Dimensions 6−1=5,20−6=14,70−28=42 | Fundamental dimensions 5,14,42 | Corrected source formula used (r2) |
| CG.1.5 tensor summand projector | k=2, antisymmetrizer A=1−swap | A²=2A; (A/2)²=A/2 | In F₂, division by 2 is unavailable | Characteristic-zero hypothesis used (r2) |
| CG.1.6 coordinate scalar extension | Q→K, matrix coordinate and s | 1⊗x_ab maps to x_ab; 1⊗s maps to s | Defining equations have the same coefficients 0,±1 | Coordinate comparison respects presentation (r2) |
| CG.1.6 Hom scalar extension | Q→C, unit | C⊗Q Q→C, i⊗1 maps to i | Unextended Q→C omits i | Extended Hom isomorphism, not fullness (r2) |
| CG.1.6 Hom zero/weight comparison | Hom(V,ν), standard and zero module | Hom dimension 0; standard weight dimensions 1,1 | After extension 0,1,1; all zero-module weight dimensions 0 | Central degrees exclude spurious maps (r2) |
| CG.1.6 reflection | Maps 0,2 on unit | Determinants 0,2 over F | Same 0,2 over K; inverse of 2 is 1/2 | Faithful extension detects maps; infinite-field open locus handles object isomorphisms (r2) |
| CG.1.7 generated vector | v=0; e₁ in trivial F² | Generated dimensions 0,1 | After extension dimensions 0,1; whole F² has dimension 2 | Least-span definition discriminates; supplier ownership restored (r2) |
| CG.1.7 coefficient span/base change | Weights t,t², v=e₁+e₂ | Extracting t and t² yields e₁,e₂, dimension 2 | Ordinary vector span has dimension 1; extended coefficient span dimension 2 | The distinct formal t,t² coefficients remain independent over the inseparable extension F₂(a)⊂F₂(a^(1/2)) (r2) |
| CG.1.7 functoriality of generated span | Projection onto weight-t line | Image of generated F² is F e₁ | Span generated by f(v)=e₁ has dimension 1 | Image equality agrees (r2) |
| CG.1.7 Cartan tensor and highest line | g=2,u=(3,1) | a=(2,1), top weight 2(1,0)+(1,1)=(3,1) | Tensor degree 2·1+1·2=4=Σu; top multiplicity 1 | Component is tied to the specified vector (r2) |
| CG.1.7 multiplier shift | m=−1,u=0; νⁿ⊗L(m,u) | Character t⁻¹; multiply by tⁿ | t^(n−1), label (m+n,u) | All integer twists retained (r2) |
| CG.1.8 classification/End | g=1,(m,u)=(−1,0),(0,1),(1,2) | GL₂ highest exponents (−1,−1),(1,0),(3,1); dimensions 1,2,3 | End of each simple has dimension 1 over K | Split highest-weight supplier has correct generality (r2) |
| CG.1.9 ring base change | Q→Q,C,K | Simple-basis coefficient 1 maps to 1; dim V=2g | End(unit) changes Q→K, while its class remains 1 | Ring equivalence does not overclaim category equivalence (r2) |
| CG.2.1 integral character and trace | g=1,0,1,V,ν⁻¹ at diag(2,3) | Characters 0,1,z+w,t⁻¹; evaluations 0,1,5,1/6 | Matrix traces 0,1,5,1/6 | Retain (r2) |
| CG.2.1 additivity, product and augmentation | V⊕ν,V⊗ν | Characters x+t,tx; augmentations 3,2 | Dimensions 2+1=3,2·1=2 | Coefficient convolution and dimension agree (r2) |
| CG.2.2 triangular injectivity | g=1,ν⁻¹−1; Sym²V | Coefficients of t⁻¹−1 are +1,−1 | Sym² weights (0,2),(1,0),(2,−2) form λ,λ−α,λ−2α with top coefficient 1 | Maximal-weight argument detects nonzero combinations (r2) |
| CG.2.3 generating function | g=0,1,2 | 1; 1+xU+tU²; E₂=x₁x₂+2t,E₄=t² | Products of (1+z_iU)(1+w_iU) give the same coefficients | Retain (r2) |
| CG.2.3 fundamental correction | (g,k)=(1,1),(2,2),(3,3) | F₁=x; F₂=e₂+t; F₃=e₃+te₁ | Augmentations 2,5,14 | Negative exterior index correctly zero (r2) |
| CG.2.4 integral flip-orbit recurrence | n=0,1,2,3 | 2,x,x²−2t,x³−3tx | zⁿ+wⁿ; single zero orbit is 1, not p₀=2 | No division by orbit size (r2) |
| CG.2.4 triangular coefficients | g=3,k=2,3; g=4,k=4 | E₂=e₂+3t; E₃=e₃+2te₁; E₄=e₄+2te₂+6t² | Binomial formula gives 3,2 and coefficients 1,2,6 | Integral triangular map, diagonal coefficient 1 (r2) |
| CG.2.4 full polynomial presentation | g=0,1,2 | Z[T±1]→Z[t±1]; X→x; X₂→e₂+t | Inverse e₂→X₂−T; z²+w²→X₁²−2T | Rank zero works for full ring (r2) |
| CG.2.5 actual primitive characters | g=2,k=2; g=3,k=3 | ch P₂=E₂−t=F₂; ch P₃=E₃−tE₁=F₃ | Dimensions 6−1=5 and 20−6=14 | Character correction matches κ target (r2) |
| CG.2.6 rational character equivalence | g=1,Sym²V,ν⁻¹ | ch Sym²V=x²−t=z²+t+w²; ch ν⁻¹=t⁻¹ | Inverse classes [V]²−[ν], [ν⁻¹] | Generator normalization excludes translated equivalences (r2) |
| CG.3.1 support criterion, both directions | g=1,z²w³,t⁻¹,0,−x | Weights (3,−1), (−1,0); h=2,−1; 0 has empty support | z²w³=t²w; membership true,false,true,true respectively | Negative coefficients and empty support allowed (r2) |
| CG.3.1 superadditivity and subset inequalities | g=1,(0,1),(0,−1),(3,−1) | h values 0,−1,2; h(first+second)=0 | 0≥−1; subset values for (3,−1) are 3,2, minimum 2 | Additivity would be false; correct claim retained (r2) |
| CG.3.1 rank-zero negative control | g=0,t | h=1≥0 | Empty-generator subring Z does not contain t | Positive-rank binder essential (r2) |
| CG.3.2 positive invariant presentation | g=1, z²+w² and 1; g=2,e₂ | Inverses X²−2T,1; X₂−T | Images z²+w²,1;e₂ | Nonnegative T powers suffice; t⁻¹ excluded (r2) |
| CG.3.3 constituent subring | g=1,V²; unit at degree 0 | V²=Sym²V⊕ν, dimensions 4=3+1 | t is independent of x, so t∉Z[x] but t∈C₁ | All constituents, not just [V], generate (r2) |
| CG.3.3 multiplicative span | ν from degree 2, V from degree 1 | ν⊗V has degree 3 and character tx | Tensoring summand maps gives p i=1·1=1 | Products stay sums of constituent classes (r2) |
| CG.3.4 exact occurrence, both directions | g=1,(m,u,d)=(0,0,0),(0,0,2),(1,0,2),(−1,2,0) | Actual occurrence true,false,true,false | Conditions m≥0 and d=2m+u give true,false,true,false | Degree alone would incorrectly admit (−1,2,0) (r2) |
| CG.3.4 tensor sufficiency | g=2,u=(3,1),m=2 | Primitive tensor degree 4 plus ν² degree 4 gives 8 | 2m+Σu=4+4=8 | Exact degree, not unspecified occurrence (r2) |
| CG.3.4 invariant-vector control | V² at scalar 2 | Every tensor scales by 4 | An invariant vector must scale by 1; 4v=v implies v=0 | ν summand is not trivial (r2) |
| CG.3.5 tensor character isomorphism | g=1,Sym²V,ν⁻¹ | Sym² weights have h=0,1,0 | ν⁻¹ has h=−1 | Correct subring image and exclusion (r2) |
| CG.3.6 polynomial generators/localization | ν⁻²P₁ and k=1 primitive identity | Multiplying by ν² gives P₁; [Λ¹V]−ν·0=[V] | t²(t⁻²F₁)=F₁; F₁=E₁ | Integral denominator clearing and boundary term agree (r2) |
| Generic central quotient, nonabelian control | Q₈→Q₈/{±1} over C | The two-dimensional simple has −1 acting as −I; each one-dimensional character has −1 acting as 1 | The former does not descend; the four linear characters descend to C₂×C₂ | Scheme-kernel criterion agrees; no change (r2) |
| Reciprocal specialization and characteristic control | t=1; κ₂L₀ at g=2 over F₂ | x=z+z⁻¹; κ₂L₀(1)=2=0 | Reciprocal flip becomes inversion; a char-zero splitting that divides by 2 is unavailable | Integral algebra permits t=1; representation hypothesis retained (r2) |

The acceptance-file declarations are unchanged since the previous report; their rows carry forward (r2), re-elaborated at this head:

| Declaration in `Suggested.lean` | Instances tried | Computed values on the two sides | Result; change |
| --- | --- | --- | --- |
| `Weight`, line 27 | g=0,1 | Z×(Fin 0→Z)≃Z; Z×(Fin 1→Z)≃Z²; (−1,0) remains present | Retain (r2) |
| `Laurent`, line 30 | Weights 0,(1,0) | Coefficient at (1,0) of 1 is 0, of t is 1 | Formal-basis distinction retained (r2) |
| `monomial`, line 33 | (−1,2),(1,−2) | Product is weight (0,0), coefficient 1; equals 1 | Retain (r2) |
| `t`, line 37 | (1,0) | Coefficient 1 at (1,0), 0 at 0; scalar-2 value 4 | Retain (r2) |
| `tInv`, line 40 | (−1,0) | Coefficient 1 there; t·tInv=1; scalar-2 value 1/4 | Retain (r2) |
| `z`, line 43 | g=1 | Weight (0,1), scalar degree 1; at t=6,z=2 value 2 | Retain (r2) |
| `pairedZ`, line 46 | g=1 | Weight (1,−1); value 3; z·pairedZ=6=t | Ordinary inverse would give 1/2, excluded (r2) |
| `permWeight`, line 49 | g=2 swap; g=3 cycle | (−1,2,−3)→(−1,−3,2); e₁→e₂ under (123) | Inverse-index convention correct (r2) |
| `flipWeight`, line 57 | g=1,(−1,2) | (−1,2)→(1,−2)→(−1,2); degree 0 at each step | Retain (r2) |
| `permLaurent`, line 77 | z₁²,t⁻¹,−3 | Swap images z₂²,t⁻¹,−3 | Coefficients preserved (r2) |
| `flipLaurent`, line 81 | z²,z⁻¹,t⁻¹ | Images t²/z²,z/t,t⁻¹ | Negative exponents handled correctly (r2) |
| `invariantSubring`, line 85 | g=0,1,2 | Full Laurent ring at 0; x fixed at 1; x₁→x₂ at 2 | Equalizer intersection excludes z and permutation-moving elements (r2) |
| `pairSum`, line 93 | g=1 | Coefficients 1 at (0,1),(1,−1); augmentation 2 | Retain (r2) |
| `exteriorCharacter`, line 96 | g=0,1,2 and negative k | At 0: E₋₁=0,E₀=1,E₁=0; at 1: E₂=t; at 2: E₂=x₁x₂+2t | Real body agrees with signed-degree prose (r2) |
| `fundamentalCharacter`, line 102 | (g,i)=(1,0),(2,1),(3,2) | x, x₁x₂+t, e₃+te₁; dimensions 2,5,14 | No truncated-subtraction defect (r2) |
| `MultLaurent`, line 106 | Exponents ±2 | Basis coefficients 1 at ±2; T²T⁻²=1 | Laurent coefficient carrier retained (r2) |
| `coeffT`, line 109 | Exponents 1,0,−1 | Coefficients 1,0,0 | Correct positive generator (r2) |
| `coeffTInv`, line 112 | Exponents −1,0,1 | Coefficients 1,0,0; product with coeffT=1 | Correct inverse generator (r2) |
| `fullInvariantPresentation`, line 116 | g=0,1,2 | At 0 coefficient map T±1→t±1; at 1 X→x; at 2 inverse(e₂)=X₂−T | All-natural-rank statement matches README (r2) |
| `positiveSubring`, line 125 | g=0,1 | B₀=Z; B₁ contains z,w,t,−x, excludes t⁻¹ | Closure definition has intended boundaries (r2) |
| `positiveInvariantSubring`, line 129 | g=0,1 | At 0 equals Z; at 1 contains t,−x, excludes z,t⁻¹ | Generatedness and fixedness both used (r2) |
| `coneValue`, line 133 | (0,1),(1,−1),(0,−1) | Values 0,0,−1; h(0,1)+h(0,−1)=−1≤h(0,0)=0 | Retain (r2) |
| `mem_positiveSubring`, line 137 | g=1,0,−x,t⁻¹; g=0,t | At 1 membership/support truth values agree: true,true,false; at 0 false versus true | Explicit `0 < g` is necessary and retained (r2) |
| `positiveInvariantPresentation`, line 143 | g=1,2; g=0 control | Images T→t,X→x; e₂ inverse X₂−T at 2; at 0 t∉B₀ | Explicit `0 < g` retained (r2) |

**Sources for the changed blocks.** The three manifest texts were read from the cache at the cited locators: `sternberg line 5024–5033` (Cartan product of highest-weight vectors, fundamental representations generate; used by CG.1.7), `sternberg line 5039–5058` (contraction by the form on Λ^j V, surjective for j=2,…,n, kernel of the displayed dimension, the kernels are the fundamental representations of C_n; used by CG.1.4–CG.1.5, with the binomial misprint already registered and not copied), `milne line 19291–19312` (Theorem 22.2, complements 22.3–22.4: unique highest weight, scalar endomorphisms, simplicity under base change; used by CG.1.7's absolute-simplicity and field-extension clauses) and `yu line 3745–3770` (Remark 7.1.1: GSp₂g on every ℚ-algebra, the multiplier, the Laurent invariants and the generators t^±1 and ∧^kV−t∧^(k−2)V; used by CG.0.4 and CG.1.4–CG.1.5). Each supports the statement as now written; the descent to every characteristic-zero field and the GSp twist are the roadmap's own, as its text says.

**Ownership and overlaps.** `scratch/overlaps.md`: no other open pull request changes this roadmap; no cited id is dropped by any open pull request; no id of this pull request is cited elsewhere and dropped; the six ids only an open revision defines are R01. Closest roadmaps in vocabulary are ClassicalGroups (#1192) and the ReductiveGroups revisions (#1332, #1797, #1676, #1808): the GSp coordinate presentation, the ν-valued contraction and the integral reciprocal invariants have no second owner there (the previous report's object searches stand; #1192 at its head explicitly hands the GSp forms to this roadmap). The citation resolver found no unresolved cross-roadmap citation or Lean name.

**Order and gate.** The dependency command at this head printed

```text
depcheck: 239 roadmaps, 2366 edges, 0 problem(s)
```

with no UPWARD, CYCLE or moved line; ClassicalGroupsPartII is line 194 of the merge order, ClassicalGroups and ReductiveGroups are on main. The worker's gate at 110ca61 is all zeros and OK (`scratch/gate.md`); `git diff --stat origin/main...HEAD` outside the folder is empty and the worktree is clean. `lake env lean` on `TauCetiRoadmap/ClassicalGroupsPartII/Suggested.lean` returned exit 0 in 19 s with exactly the three `sorry` warnings at lines 116, 137 and 143; the file imports only `import Mathlib`, so no prerequisite module build was needed. The three declared gaps (`generated-vector-base-change`, `central-quotient-representations`, `finite-comodule-category`) are stated at README lines 216, 236 and 258 with the same slugs and suppliers as `packages/ClassicalGroupsPartII/design/plan.json:4–18`; nothing in the diff touches them.

**Lean signatures and padding.** `scratch/signatures.md` records the 24 elaborated types with no dropped section binder; since the file is unchanged, the previous report's `#check @name` comparison and its one-tactic probe (simp, rfl, infer_instance each failing to close the three sorried headlines; `MvPolynomial.esymmAlgEquiv` read at the pin and not sufficient) remain valid at this head. No headline statable at the pins is missing: the GSp coordinate Hopf algebra is still absent from both pins, as the module docstring says.

## Not verifiable

- None of the three cited texts was inaccessible; no fetch or manifest change was needed.
- The pull request's description is quoted as data in `scratch/pull-request.md`; R01 is judged on that quotation, not on the live pull request page.

## Source issues

- **Misprint** in sternberg at §7.9, printed p.131 (`sternberg line 5054`): the source says the contraction-kernel dimension subtracts binom(2n,2j−2); it should be binom(2n,j−2); affects a stated result.
- **Misprint** in sternberg at §7.9, printed p.132 (`sternberg line 5123`): the source says the second difference-factor product has numerator j; it should be j−1, giving the displayed telescoping product; affects the proof.
- **Misprint** in sternberg at §7.9, printed p.131 (`sternberg line 5025`): the source says the second highest weight is σ; it should be µ, as in the following sum and highest vector; affects nothing.
- **Misprint** in sternberg at §7.9, printed p.132 (`sternberg line 5106`): the source says r_i=a+n−i; it should be r_i=a_i+n−i; affects nothing.
