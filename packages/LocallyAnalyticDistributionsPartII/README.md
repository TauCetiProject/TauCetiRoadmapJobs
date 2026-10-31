# Roadmap: locally analytic distributions, part II: noncommutative distribution algebras and microlocalisation

**Summary.** This roadmap continues *Locally analytic distributions, growth and character spaces* (LocallyAnalyticDistributions), which stops at the commutative theory: distributions on ℤ_p and on compact abelian groups, their Amice and Mellin transforms, and the locally convex calculus that relates function spaces, their Banach stages and their strong duals. Here the group G is a compact p-adic Lie group that need not be commutative. The distribution algebra D(G, K), its Fréchet–Stein structure, its coadmissible modules, its faithful flatness over the rational Iwasawa algebra and the Schneider–Teitelbaum duality between Iwasawa modules and admissible Banach representations are taken from PadicLocalLanglandsForGL2Qp §0.1; the uniform groups, p-valuations, ordered coordinates and Iwasawa algebras are taken from NoncommutativeAndEquivariantIwasawa Layer 0. On these carriers the roadmap builds the structure that relates Iwasawa algebras to enveloping algebras: Lazard's Lie lattice of a uniform group, the embedding U(g_K) ⊂ D(G, K) and the centrality of Z(g); the p-adically completed enveloping algebras Û(h)_K, Frommer's closures U_r(g, K) and the crossed-product decomposition of the Banach steps `D_{r_n}(G, K)`; the Arens–Michael envelope 𝒰(g); the Ardakov–Wadsley microlocalisation of the Iwasawa algebra K[[G]], which identifies its completion at the powers of p with Û(g_R)_K, together with Lie modules and the comparison of isotypic quotients; central specialisation along infinitesimal characters; and the algebraic Peter–Weyl theorem on the first congruence subgroup of SL₂(ℤ_p). The end theorem is Fu's injectivity theorem: for p odd, G a finite product of m first congruence subgroups of SL₂(ℤ_p) and every λ ∈ ℤ_p^m, the composite ℚ_p[[G]] → Û(g) → Û(g)_λ of the microlocalisation and the central specialisation Δ_i ↦ λ_i is injective (Fu, Theorem 1.5). It is proved through the faithfulness of affinoid Verma modules (Ardakov–Wadsley 2014), and Fu's direct route through distributions is laid out alongside it. A second headline theorem is the semisimplicity of finite-dimensional modules over the rational Iwasawa algebra of a congruence kernel (Ardakov–Wadsley 2013, Theorem 11.1). These are the algebraic inputs of Fu's sharp multiplicity bounds for cohomological cusp forms over fields that are not totally real.

The targets below are specifications for formalisation. Every definition comes with the facts it must satisfy and with checks that a plausible wrong definition fails; every theorem carries its hypotheses, its source and what it rests on. The companion [Suggested.lean](Suggested.lean) is the acceptance test: it states the headline theorems that are statable against the pinned Mathlib and Tau Ceti, and names in its docstring those that are not, with the carrier each one lacks. It is not the roadmap; this document is definitive.

## Scope and ownership

This roadmap owns:

- Lazard's Lie lattice L_G of a uniform group, the normalisation g_R = (1/p) R L_G, the first congruence subgroups of SL₂(ℤ_p) and their products, and the identification (1/p) `L_{G₁}` = sl₂(ℤ_p) (Layer 0).
- The embedding of U(g_K) into D(G, K), the crossed-product structure of D(G, K) over an open normal subgroup, and the centrality of Z(g) in D(G, K) for open subgroups of connected algebraic groups (Layer 1).
- The p-adically completed enveloping algebra Û(h)_K of a free R-Lie lattice and its deformations `Û(h)_{n,K}`; the closures U_r(g, K) of U(g_K) in the Banach steps D_r(G, K) and Frommer's theorem; the crossed-product decomposition `D_{r_n}` = `U_{r_n}` ∗ (`G/G^{p^n}`); the weighted completions U(g)_r and the Arens–Michael envelope 𝒰(g) with its coadmissible and admissible modules (Layer 2).
- Algebraic microlocalisation of Zariskian filtered rings; the microlocal Ore set S₀ and the Ardakov–Wadsley theorem `Q_{gr p}(R[[G]])` ≅ Û(g_R)_K; the identification `D_{1/p}(G, K)` ≅ Û(g_R)_K; coefficient extension to ramified fields; microlocalisation of finitely generated modules; Lie modules and the semisimplicity of finite-dimensional K[[G]]-modules; Fu's comparison of W-isotypic quotients (Layer 3).
- Central specialisations of D(G, K), D_r(G, K), U_r(g) and Û(g); induced infinitesimal characters; strong duality and density for eigenspaces; domains among central quotients; the Ext comparison for finite crossed products; the normal form of `U^λ_{r_n}(g)`; faithfulness of affinoid Verma modules; Fu's injectivity theorem (Layer 4).
- Algebraic functions on open subgroups of SL₂(ℤ_p), their degree filtration and the algebraic Peter–Weyl theorem K[[G]]/Ann(W_k) ≅ End_K(W_k) (Layer 5).

It leaves the following to the roadmaps and libraries named, and does not restate them.

- **Distribution algebras, Fréchet–Stein theory and Banach duality** belong to PadicLocalLanglandsForGL2Qp §0.1: the space LA(X, L) of locally analytic functions on a locally F-analytic manifold, the strong dual D(H, L) of a compact locally analytic group with its convolution (the transpose of multiplication), Dirac distributions, pushforward and open-subgroup comparisons; the Fréchet–Stein property of D(H, L) with noetherian Banach radius algebras and flat transitions, coadmissible modules with their abelian and exact finite-stage theory and independence of the cofinal sequence, and the strong-dual anti-equivalence with admissible locally analytic representations (Schneider–Teitelbaum 2003, §3, Remark 4.6, Theorems 4.9–4.11, 5.1–5.2 and 6.3); faithful flatness of F[[H]] → D(H₀, L) on both sides; Schikhof duality between admissible Banach representations of a compact p-adic Lie group and finitely generated L ⊗_O O[[H]]-modules (Schneider–Teitelbaum 2002, Theorem 3.5). This roadmap uses these on discretely valued coefficient fields only. Two further statements it needs from §0.1 are recorded as supplier gaps: the coadmissible-module theory for an arbitrary Fréchet–Stein algebra, and the explicit Banach radius algebras D_r(H, L) in ordered coordinates.
- **Uniform groups, p-valuations and Iwasawa algebras** belong to NoncommutativeAndEquivariantIwasawa Layer 0: uniform pro-p groups and their dimension (§0.1), compact p-adic analytic groups with their analytic structure and an open normal uniform subgroup (§0.2, Schneider Theorems 27.1 and 29.8), freeness of completed group algebras over open subgroups and their crossed-product form (§0.3), complete filtrations with noetherian graded ring (§0.5), ordered coordinates of a uniform group (§0.6), p-valuations of finite rank, ordered bases, saturation and the explicit valuation ω_U of a uniform group (§0.7), ordered Iwasawa series, rationalisation and the weighted graded ring gr_ω O[[G]] ≅ gr O `⊗_{𝔽_p[P]}` U(gr G) (§0.8, Schneider Theorem 28.3), and noetherianity of O[[G]] and k[[G]] with the canonical topology on finitely generated modules (§F.1).
- **Locally convex calculus** belongs to LocallyAnalyticDistributions: locally convex spaces, limits and strict maps (§0.0), the nonarchimedean Hahn–Banach theorem, Fréchet open mapping and extensions of spaces of compact type (§0.2), polydisc charts, independence of the analytic atlas, products of analytic function spaces and strong duality for analytic compact-type spaces (§0.3), Amice's theorem on Mahler coefficients (§0.1).
- **Bounded measures and the completed group algebra** belong to PadicMeasuresIwasawaAlgebras: bounded measures as the dual of C(X, R) on a compact space (Layer 0), their convolution (§1.2) and the comparison of measures with Tau Ceti's completed group algebra (§1.7).
- **Classical Lie theory** belongs to LieHighestWeight: sl₂-representations (Layer 0), the PBW basis theorem and Verma modules (Layer 3), complete reducibility (Layer 5), the centre of U(g) and the Harish-Chandra homomorphism (Layer 7).
- **Already in the libraries**: Tau Ceti's completed group algebra `TauCeti.completedGroupAlgebra` (`TauCeti/Topology/Algebra/Group/Profinite/CompletedGroupAlgebra/Basic.lean`), its Killing-form Casimir element `TauCeti.casimirElement` with `TauCeti.casimirElement_mem_center` (`TauCeti/Algebra/Lie/UniversalEnveloping/Casimir.lean`) and the spanning half of the PBW theorem `TauCeti.UniversalEnvelopingAlgebra.span_orderedPBWMonomials_eq_pbwFiltration` (`TauCeti/Algebra/Lie/UniversalEnveloping/PBW/Ordered.lean`); Mathlib's universal enveloping algebra, special linear Lie algebra, special linear group with its topology, Ore localisation and ring filtrations.
- **Applications outside this roadmap.** Fu's growth estimates for quotients of Û(g) by generic elements (Fu, §3, Theorem 1.6), Fu's multiplicity bounds for Iwasawa modules and for cusp forms (Fu, Theorems 1.2–1.4 and §7), admissible locally analytic representations beyond the anti-equivalence of PadicLocalLanglandsForGL2Qp §0.1, category O and analytic localisation, the solid realisation of coadmissible 𝒰(g)-modules, and locally analytic vectors in Galois representations. Each of these imports from Layers 2–5.

## Conventions

1. **Fields.** p is a prime and ℚ_p ⊆ L ⊆ K ⊆ ℂ_p with L/ℚ_p finite and K complete and discretely valued; |p| = `p^{−1}`. R denotes the ring of integers of K, π a uniformiser and k the residue field. Where a statement needs K finite over ℚ_p it says so. In Layer 3, R is unramified over ℤ_p (π = p) until coefficients are extended by base change in §3.6.
2. **Groups.** For p odd a uniform group G of dimension d carries the p-valuation ω_U of NoncommutativeAndEquivariantIwasawa §0.7, which takes the value n + 1 on `G^{p^n}` ∖ `G^{p^{n+1}}`; a minimal topological generating set g₁, …, g_d is an ordered basis with ω(g_i) = 1, and b_i = g_i − 1. G₁ = ker(SL₂(ℤ_p) → SL₂(𝔽_p)); h = diag(1, −1), e = E₁₂ and f = E₂₁, so [h, e] = 2e, [h, f] = −2f and [e, f] = h.
3. **Distributions.** D(G, K) is the strong dual of the locally analytic functions with the convolution of PadicLocalLanglandsForGL2Qp §0.1, which pairs the first factor with the left variable: (λ ∗ μ)(f) = λ(g ↦ μ(h ↦ f(gh))), so δ_g ∗ δ_h = `δ_{gh}`. An element x ∈ g gives the distribution x̃(f) = (d/dt) `f(exp(tx))|_{t=0}`; with this sign x̃ ∗ ỹ − ỹ ∗ x̃ = [x, y]~, and an ordered monomial x^α pairs with the coordinate monomial t^β of the second kind to `α!·δ_{αβ}`. Schneider–Teitelbaum (2002, Lemma 2.4) differentiate along exp(−tx) and obtain an extra factor `(−1)^{|α|}`.
4. **Banach steps.** For an ordered basis, τ_α = Σ α_i ω(h_i) and ‖Σ d_α b^α‖_r = sup |d_α| `r^{τ_α}`; D_r(G, K), for 1/p ≤ r < 1, is the completion, consisting of the series with |d_α| `r^{τ_α}` → 0, and is distinct from the space `D_{<r}(G, K)` of series with bounded |d_α| `r^{τ_α}`. These are the radius algebras that PadicLocalLanglandsForGL2Qp §0.1 provides (gap:radius-algebras). The radii r_n = `p^{−1/p^n}`, n ≥ 1, are the ones at which D_r is a crossed product.
5. **Enveloping algebras.** For a free R-Lie lattice h, Û(h) = lim_a U(h)/π^a U(h) and Û(h)_K = K ⊗_R Û(h); `Û(h)_{n,K}` = Û(π^n h)_K. U_r(g, K) is the closure of U(g_K) in D_r(G, K). U(g)_r is the completion of U(g) for sup |a_n| `r^{|n|}` in a PBW basis of an integral lattice, and 𝒰(g) = `lim_{r ≥ 1}` U(g)_r is the Arens–Michael envelope. Boxer–Calegari–Gee–Pilloni write Û(g) for 𝒰(g); here Û(g)_K always denotes the single Banach algebra of the lattice.
6. **Casimir and central characters.** In U(sl₂), Δ = ½h² − h + 2ef = ½h² + ef + fe = ½h² + h + 2fe. It is central, acts on Sym^k(K²) by ½k(k + 2) and on a Verma module of highest weight a by ½a(a + 2). It is four times the Killing-form Casimir `TauCeti.casimirElement`: the Killing form has κ(h, h) = 8 and κ(e, f) = 4, the Killing-dual basis of (h, e, f) is (h/8, f/4, e/4), and h²/8 + (ef + fe)/4 = Δ/4. For G₁^m, λ = (λ₁, …, λ_m) ∈ K^m stands for the character Δ_i ↦ λ_i of Z(g) = K[Δ₁, …, Δ_m]. Fu writes the kernel through p²Δ + λ₀, so λ₀ = −p²λ, and λ ∈ ℤ_p iff v_p(λ₀) ≥ 2.
7. **Modules.** Modules are left modules. A coherent sheaf for a Fréchet–Stein algebra A with Banach steps A_n has transition isomorphisms A_n `⊗_{A_{n+1}}` `M_{n+1}` ≅ M_n, the Banach algebra on the left. A ring map is flat when it is flat on both sides, unless a side is named.
8. **Microlocalisation.** S₀ = ⋃_a (p^a + `m^{a+1}`) ⊆ R[[G]] is formed only for R unramified; over a ramified K the microlocalisation K[[G]] → Û(g_R)_K is the base change of the one over ℚ_p.
9. **Witnesses.** Convolution order: for G₁ ⊂ SL₂(ℤ_p) and the non-commuting elements exp(pe), exp(pf) ∈ G₁, `δ_{exp(pe)}` ∗ `δ_{exp(pf)}` = `δ_{exp(pe)exp(pf)}` ≠ `δ_{exp(pf)exp(pe)}`; the opposite rule λ(g ↦ μ(h ↦ f(hg))) would give `δ_{exp(pf)exp(pe)}` and would make x ↦ x̃ an anti-homomorphism. Lie sign: for G = ℤ_p and x = 1, x̃(f) = f′(0), which is 3 for f(z) = z² + 3z, and its Amice transform is log(1 + T). Casimir: Δ acts on the highest weight vector x^k of Sym^k(K²) by ½k² − k + 2k = ½k(k + 2), which is 4 for k = 2. Induced parameter: χ(diag(t, t⁻¹)) = t^c gives λ(Δ) = ½c² + c and 2λ + 1 = (c + 1)².
10. **Names.** New declarations live under `TauCetiRoadmap.LocallyAnalyticDistributionsPartII` in the companion file; their names follow Mathlib's conventions.

## Exact supplier contracts

### From Mathlib

At the pinned commit. `UniversalEnvelopingAlgebra` with `UniversalEnvelopingAlgebra.ι` and `UniversalEnvelopingAlgebra.lift` (Lie algebra maps L → A correspond to algebra maps U(L) → A); `LieAlgebra.SpecialLinear.sl` and `IsSl2Triple`; `Matrix.SpecialLinearGroup` with `Matrix.SpecialLinearGroup.map` along ring homomorphisms and its subspace topology, for which it is a topological group; `PadicInt` and `PadicInt.toZMod`; `MonoidHom.ker`; `Subgroup.pi`; `TensorProduct` and `Algebra.TensorProduct.rid`; `OreLocalization` and `OreLocalization.OreSet` (Ore localisation of noncommutative rings); `IsRingFiltration`; `IsNoetherianRing`, `IsDomain`; `Module.Flat`, `Module.FaithfullyFlat`; `IsSemisimpleModule`; `NormedSpace.exp`; `Subalgebra.topologicalClosure`, `Subalgebra.center`; `MvPolynomial`; `IsUltrametricDist`; `LieModule`; `AbstractMeasure` (bounded measures, the carrier of PadicMeasuresIwasawaAlgebras Layer 0); `ContinuousMap` and `LocallyConstant`. Mathlib's `AdicCompletion` carries a ring structure only for the completion of a commutative ring at an ideal of itself, so the π-adic completion Û(h) of the noncommutative ring U(h) is a target here (§2.1), not a library object.

### From Tau Ceti

At the pinned commit. `TauCeti.completedGroupAlgebra` (the completed group algebra R[[Γ]] = lim_U R[Γ/U] of a topological group over a commutative ring, with its projections, group elements and inverse-limit topology); `TauCeti.casimirElement` and `TauCeti.casimirElement_mem_center` (the Casimir element of a Lie algebra with nondegenerate Killing form, built from a basis and its Killing-dual basis, and its centrality); `TauCeti.UniversalEnvelopingAlgebra.pbwFiltration` and `TauCeti.UniversalEnvelopingAlgebra.span_orderedPBWMonomials_eq_pbwFiltration` (ordered PBW monomials span the PBW filtration over any commutative ring). Linear independence of ordered monomials over a field is LieHighestWeight Layer 3, not a library theorem at the pin.

### From TauCetiRoadmap.PadicLocalLanglandsForGL2Qp

§0.1, *Locally analytic functions, distributions and Banach duality*. For a finite extension F/ℚ_p, a complete discretely valued coefficient field L/F and a compact locally F-analytic group H: the space `AnalyticSupport.functions` of locally analytic functions and the strong dual `AnalyticSupport.distributions` = D(H, L), with `distributionConvolution` (the transpose of multiplication on H), Dirac distributions with δ_g ∗ δ_h = `δ_{gh}`, pushforward along locally analytic homomorphisms, the completed tensor equivalence `analyticTensor_equiv`, strong biduality and the open-subgroup comparisons. The Fréchet–Stein property of D(H, L) with noetherian Banach radius algebras and flat transitions, the predicate `AnalyticSupport.Coadmissible` with independence of the cofinal sequence and the abelian and exact finite-stage theory, and the strong-dual anti-equivalence with admissible locally analytic representations. Faithful flatness on both sides of F[[H]] → D(H₀, L), where H₀ is the underlying ℚ_p-analytic group and F[[H]] = F `⊗_{O_F}` O_F[[H]]; for H compact locally ℚ_p-analytic and K finite over ℚ_p this is K[[H]] → D(H, K), and it contains the statement that this map is injective and continuous with dense image. Schikhof duality between admissible K-Banach representations of a compact p-adic Lie group H and finitely generated K ⊗_O O[[H]]-modules, with the dual lattice retained.

What PadicLocalLanglandsForGL2Qp must provide (gap:frechet-stein-general): the Fréchet–Stein notion and the coadmissible-module theory of §0.1 stated for an arbitrary left (and two-sided) K-Fréchet–Stein algebra rather than for D(H, L) only: Theorems A and B, the base-change isomorphism A_n ⊗_A M ≅ M_n, flatness of the Banach stages over A, the abelian category of coadmissible modules with its closedness criterion and the strictness of maps between coadmissible modules, closedness of finitely generated left ideals, Fréchet–Stein quotients by closed two-sided ideals with A/I ≅ lim_n A_n/A_n I, and restriction of coadmissibility along a map of Fréchet–Stein algebras (Schneider–Teitelbaum 2003, §3, Theorem (A and B), Corollaries 3.1–3.5, Lemma 3.6, Proposition 3.7 and Lemma 3.8, pp. 8–12).

What PadicLocalLanglandsForGL2Qp must provide (gap:radius-algebras): for a compact group H with a p-valuation of finite rank and an ordered basis satisfying Schneider–Teitelbaum's condition (HYP) (saturated, and ω(h_i) + ω(h_j) > p/(p−1) for i ≠ j), the unique expansion λ = Σ d_α b^α of every distribution in the ordered coordinates b_i = h_i − 1, the norms ‖λ‖_r = sup_α |d_α| `r^{τ_α}` for 1/p ≤ r < 1 with their submultiplicativity and independence of the ordered basis, the Banach radius algebras D_r(H, L) as the completions (series with |d_α| `r^{τ_α}` → 0) together with the larger spaces `D_{<r}(H, L)`, the graded-ring, multiplicativity and noetherianity theorems for D_r(H, L) and for r = 1/p (Schneider–Teitelbaum 2003, §4, pp. 15–22, Lemma 4.1, Proposition 4.2, Lemma 4.3, Lemma 4.4, Theorem 4.5 and Remark 4.6), the statement that the D_r(H, L) with r ∈ p^ℚ ∩ (1/p, 1) are the Banach stages of the Fréchet–Stein presentation of §0.1, and the statement that a uniform group with the valuation ω_U of NoncommutativeAndEquivariantIwasawa §0.7 satisfies (HYP) for odd p, with τ_α = |α| (Schneider–Teitelbaum 2003, Remark following Lemma 4.3, p. 20).

### From TauCetiRoadmap.NoncommutativeAndEquivariantIwasawa

Layer 0. §0.1: uniform pro-p groups, their dimension and the lower p-series `G^{p^n}`. §0.2: compact p-adic analytic groups as profinite groups with an open normal uniform subgroup, with the compatible ℚ_p-analytic structure and `analytic_exists_open_uniform`. §0.3: Λ(H) is free over Λ(H′) for H′ open in H, and is the crossed product Λ(H′) ∗ (H/H′) for H′ normal. §0.5: a complete separated filtration with noetherian graded ring is Zariskian, and the ring is noetherian (a domain when the graded ring is). §0.6: the ordered coordinate homeomorphism ℤ_p^d → G of a uniform group and `G^{p^n}` = c(p^n ℤ_p^d). §0.7: p-valuations, their graded Lie algebra over 𝔽_p[P], finite rank, ordered bases, saturation, and the explicit valuation ω_U with ω_U(c(x)) = 1 + min_i v_p(x_i) for odd p. §0.8: O[[U]] as ordered series Σ c_α b^α, K ⊗_O O[[U]] as the series with bounded coefficients, and gr_ω O[[G]] ≅ gr O `⊗_{𝔽_p[P]}` U(gr G) when p is a uniformiser of O. §F.1: noetherianity of O[[G]] and k[[G]] on both sides, and the canonical compact topology of finitely generated modules.

### From TauCetiRoadmap.LocallyAnalyticDistributions

§0.0: nonarchimedean locally convex spaces, inductive and projective limits, strict maps. §0.1: Amice's theorem on Mahler coefficients. §0.2: the nonarchimedean Hahn–Banach theorem over a spherically complete field, Fréchet open mapping, strict countable inverse limits, extensions of spaces of compact type. §0.3: analytic functions on finitely many polydiscs, a common analytic radius on a compact manifold, global analytic pullback and multiplication, independence of the analytic atlas, products and completed analytic tensors, strong duality for analytic compact-type spaces. On discretely valued coefficients these are the objects of PadicLocalLanglandsForGL2Qp §0.1.

### From TauCetiRoadmap.PadicMeasuresIwasawaAlgebras

Layer 0: bounded measures D(X, R) = C(X, R)′ on a compact space, Dirac measures and their separation, density of locally constant functions. §1.2: convolution of measures on a profinite group, in the order xy. §1.7: the comparison of integral measures with `TauCeti.completedGroupAlgebra`, compatible with Dirac elements; with Layer 0 it identifies ℚ_p[[G]] with the continuous dual of C(G, ℚ_p).

### From TauCetiRoadmap.LieHighestWeight

Layer 0: the irreducible sl₂-modules Sym^k(K²) and their weights. Layer 3: the PBW basis theorem over a field and Verma modules. Layer 5: complete reducibility of finite-dimensional modules over a semisimple Lie algebra in characteristic zero. Layer 7: Z(U(g)) and the Harish-Chandra homomorphism, with Z(U(sl₂)) = K[Δ].

## How to read the build

Layer 0 attaches to a uniform group its Lazard lattice, which fixes the integral Lie algebra g_R = (1/p) R L_G used by every completion that follows, and computes it for the first congruence subgroup of SL₂(ℤ_p). Layer 1 puts U(g_K) inside the distribution algebra of PadicLocalLanglandsForGL2Qp §0.1 with a fixed sign, decomposes D(G, K) over open normal subgroups and proves that Z(g) is central. Layer 2 builds the two completions of U(g) that the sources use and must not be confused: the p-adic completion Û(h)_K, a single noetherian Banach algebra, and the Arens–Michael envelope 𝒰(g), a Fréchet–Stein algebra; between them sit Frommer's closures U_r(g, K) inside the Banach steps, over which `D_{r_n}` is a crossed product. Layer 3 microlocalises the Iwasawa algebra and identifies the result with Û(g_R)_K and with `D_{1/p}(G, K)`; it gives Lie modules, the semisimplicity theorem and the comparison of isotypic quotients. Layer 4 specialises along infinitesimal characters and proves Fu's injectivity theorem through affinoid Verma modules; Fu's direct route through eigenspaces of locally analytic functions and the Banach steps is a second line of targets in the same layer. Layer 5 identifies the maximal W_k-quotient of K[[G]] through algebraic matrix coefficients.

## Layer 0: Lazard lattices and first congruence subgroups

Schneider–Teitelbaum's norms, Frommer's closures and the Ardakov–Wadsley microlocalisation all use the same integral Lie algebra of a uniform group: Lazard's lattice L_G, rescaled to g_R = (1/p) R L_G. This layer constructs it on the uniform groups of NoncommutativeAndEquivariantIwasawa §0.1 and computes it for the first congruence subgroup of SL₂(ℤ_p), whose rescaled lattice is sl₂(ℤ_p). Throughout the layer p is odd; at p = 2 the first congruence subgroup contains −1 and is not uniform, and the level-four subgroup takes its place in the sources.

### 0.1 The Lazard Lie lattice of a uniform group

Let p be odd, G a uniform pro-p group of dimension d (NoncommutativeAndEquivariantIwasawa §0.1) and R a complete discrete valuation ring with fraction field K ⊇ ℚ_p. On the underlying set of G define λ·x = x^λ for λ ∈ ℤ_p (the p-adic powers of the pro-p group), x + y = `lim_{i→∞} (x^{p^i} y^{p^i})^{p^{−i}}` and [x, y] = `lim_{i→∞} (x^{−p^i} y^{−p^i} x^{p^i} y^{p^i})^{p^{−2i}}`, where `z^{p^{−i}}` is the unique p^i-th root of z ∈ `G^{p^i}` in G. Define the Lazard lattice L_G to be G with these operations, the R-Lie algebra g_R := R `⊗_{ℤ_p}` (1/p) L_G and g_K := K ⊗_R g_R (Ardakov–Wadsley 2013, §10.2, the displayed operations and the Definition, p. 68; Fu, §4, equations (10)–(12), p. 12; Dixon–du Sautoy–Mann–Segal, Theorem 4.30, as recalled there).

- The three operations converge and make L_G a Lie algebra over ℤ_p, free of rank d, with basis any minimal topological generating set of G.
- L_G is powerful: [L_G, L_G] ⊆ p L_G. Consequently (1/p) L_G is closed under the bracket, and g_R is an R-Lie algebra, free of rank d over R.
- For n ≥ 0 the subgroup `G^{p^n}` is uniform and `L_{G^{p^n}}` = p^n L_G inside ℚ_p ⊗ L_G. More generally, for an open uniform subgroup U ⊆ G the lattice L_U is a Lie sublattice of L_G of finite index (the limits computed in U and in G agree), so ℚ_p ⊗ L_U = ℚ_p ⊗ L_G; this common ℚ_p-Lie algebra is denoted g and does not depend on the open uniform subgroup.
- A continuous homomorphism of uniform groups is a homomorphism of the Lazard lattices.
- The p-adic logarithm of the analytic structure of NoncommutativeAndEquivariantIwasawa §0.2 identifies L_G, as a ℤ_p-Lie algebra, with a lattice in the Lie algebra of the analytic group, so ℚ_p ⊗ L_G is that Lie algebra; under this identification the one-parameter subgroup of x ∈ L_G is t ↦ x^t, t ∈ ℤ_p (Schneider, Corollary 31.7, p. 229, and Theorem 32.1, p. 232).

*Needs:* NoncommutativeAndEquivariantIwasawa §0.1 (uniform groups, unique p^i-th roots and the lower p-series), §0.2 (the analytic structure, for the comparison with the logarithm only), §0.6 (ordered coordinates, for freeness); Mathlib `LieAlgebra` and `PadicInt`.

**Checks.**

- For G = 1 + pℤ_p ⊂ ℤ_p^× the Lazard addition is the group multiplication, (1 + p)^a + (1 + p)^b = `(1 + p)^{a+b}`, and the bracket is zero; the logarithm identifies L_G with pℤ_p ⊂ ℚ_p and `g_{ℤ_p}` with ℤ_p·log(1 + p)/p. A definition that took the group commutator itself as the bracket would agree here and is separated by the next check.
- For the trivial group, L_G = 0 and g_R = 0.
- For the first congruence subgroup G₁ of SL₂(ℤ_p), the logarithm carries `L_{G₁}` onto p·sl₂(ℤ_p) and the Lazard bracket onto the matrix bracket: [pe, pf] = p²h, and ph lies in `L_{G₁}` but not in `pL_{G₁}`, so [`L_{G₁}`, `L_{G₁}`] ⊆ `pL_{G₁}` while [`L_{G₁}`, `L_{G₁}`] ⊄ `p²L_{G₁}`. The normalisation g_R = R ⊗ L_G, without the factor 1/p, would give `g_{ℤ_p}` = p·sl₂(ℤ_p) instead of sl₂(ℤ_p).
- For G₁, `g_{ℤ_p}` is `LieAlgebra.SpecialLinear.sl` (Fin 2) ℤ_p, with exp(px) ∈ G₁ corresponding to x ∈ `g_{ℤ_p}`.

### 0.2 First congruence subgroups of SL₂(ℤ_p)

Define `firstCongruenceSL2` p, the first congruence subgroup G₁ of SL₂(ℤ_p), as the kernel of the homomorphism SL₂(ℤ_p) → SL₂(ℤ/p) induced by `PadicInt.toZMod` through `Matrix.SpecialLinearGroup.map`; equivalently G₁ = SL₂(ℤ_p) ∩ (I₂ + pM₂(ℤ_p)). For m ≥ 0 define `firstCongruenceProduct` p m as the subgroup G = G₁^m of SL₂(ℤ_p)^m (functions Fin m → SL₂(ℤ_p)) whose every coordinate lies in G₁, via `Subgroup.pi` (Fu, §1, before Theorem 1.4, p. 3, and §5, before Lemma 5.6, p. 19).

- A matrix g ∈ SL₂(ℤ_p) lies in G₁ iff every entry of g − I₂ lies in pℤ_p.
- G₁ is a normal subgroup of SL₂(ℤ_p); it is open, since it is the preimage of the identity under a continuous map to a discrete group, and of index |SL₂(𝔽_p)| = p(p² − 1), since reduction SL₂(ℤ_p) → SL₂(𝔽_p) is surjective (elementary matrices lift).
- G₁^m is an open normal subgroup of SL₂(ℤ_p)^m of index (p(p² − 1))^m, and the product of the subspace topologies is its topology as a subgroup of the product group.
- With the subspace topology, G₁ and G₁^m are compact topological groups, so `TauCeti.completedGroupAlgebra` ℤ_p G is defined and is the Iwasawa algebra ℤ_p[[G]].

*Needs:* Mathlib `Matrix.SpecialLinearGroup`, `Matrix.SpecialLinearGroup.map`, `PadicInt.toZMod`, `MonoidHom.ker`, `Subgroup.pi`; Tau Ceti `TauCeti.completedGroupAlgebra`.

**Checks.**

- I₂ ∈ G₁, and for m = 0 the product G₁^0 is the trivial group, whose Iwasawa algebra is ℤ_p.
- The matrix with rows (1, p) and (0, 1) lies in G₁, while the matrix with rows (1, 1) and (0, 1) lies in SL₂(ℤ_p) but not in G₁: membership is a condition on all four entries of g − I₂, not on the determinant.
- For p odd, −I₂ ∉ G₁, since −1 − 1 = −2 is a unit. For p = 2, −I₂ ≡ I₂ mod 2 lies in G₁, which therefore has an element of order 2 and is not uniform; this is why the odd-prime hypothesis of §0.3 cannot be dropped.
- The index of G₁ in SL₂(ℤ_p) is 24 for p = 3 and 120 for p = 5, the orders of SL₂(𝔽₃) and SL₂(𝔽₅).

### 0.3 The Lie lattice of the first congruence subgroup

Prove: (i) if G is a compact open uniform subgroup of SL_n(ℚ_p), the matrix logarithm is an isomorphism of ℚ_p-Lie algebras from ℚ_p ⊗ L_G onto sl_n(ℚ_p) (Fu, Lemma 4.1, p. 12, citing Dixon–du Sautoy–Mann–Segal, Chapter 9, Exercise 9); (ii) let p be odd. Then G₁ is uniform of dimension 3; the elements exp(ph), exp(pe), exp(pf) form a minimal topological generating set; and (1/p) `L_{G₁}` = `g_{ℤ_p}` = ℤ_p h ⊕ ℤ_p e ⊕ ℤ_p f = sl₂(ℤ_p), with [h, e] = 2e, [h, f] = −2f and [e, f] = h, so (h, e, f) is an sl₂-triple in the sense of `IsSl2Triple`. For G = G₁^m the same holds componentwise, with `g_{ℤ_p}` = sl₂(ℤ_p)^m (Fu, Lemma 5.6 and its proof, p. 19; Ardakov–Wadsley 2014, §5.4, p. 16, where the congruence kernel with n = 0 satisfies p^n g = (1/p) R L_G).

*Proof sketch.* For x ∈ pM₂(ℤ_p) and p odd the exponential and logarithm series converge and are mutually inverse between p·sl₂(ℤ_p) and G₁; under them the limits of §0.1 become the sum and the matrix bracket, so `L_{G₁}` = p·sl₂(ℤ_p). The reductions of exp(px), x ∈ {h, e, f}, form a basis of G₁/G₁^p ≅ sl₂(𝔽_p), and the lower p-series of G₁ is the sequence of congruence kernels `ker(SL₂(ℤ_p) → SL₂(ℤ/p^{n+1}))`, which have constant successive indices p³, so G₁ is uniform by the criterion of NoncommutativeAndEquivariantIwasawa §0.1. Part (i) applies the same comparison to an open subgroup of SL_n(ℚ_p), whose Lie algebra is sl_n(ℚ_p) because it is open.

*Needs:* §0.1, §0.2; NoncommutativeAndEquivariantIwasawa §0.1; Mathlib `LieAlgebra.SpecialLinear.sl`, `IsSl2Triple`, `NormedSpace.exp`.

### Examples

- Under §0.3, the Iwasawa algebra ℤ_p[[G₁]] is, by the ordered series of NoncommutativeAndEquivariantIwasawa §0.8, the ring of noncommutative power series in F = exp(pf) − 1, H = exp(ph) − 1 and E = exp(pe) − 1 (Fu, p. 19).
- For G = 1 + pℤ_p, L_G = ℤ_p·(1 + p) with zero bracket and `g_{ℤ_p}` = ℤ_p·log(1 + p)/p; the chart x ↦ (1 + p)^x is the one-parameter subgroup of §0.1.
- The Casimir element of sl₂ is computed in Conventions, item 6, from the basis (h, e, f) of §0.3.

### Dependencies

Within this roadmap: none. On other roadmaps and the libraries: NoncommutativeAndEquivariantIwasawa §§0.1, 0.2, 0.6, 0.8; Mathlib `LieAlgebra.SpecialLinear.sl`, `IsSl2Triple`, `Matrix.SpecialLinearGroup`, `Matrix.SpecialLinearGroup.map`, `PadicInt.toZMod`, `MonoidHom.ker`, `Subgroup.pi`, `NormedSpace.exp`; Tau Ceti `TauCeti.completedGroupAlgebra`.

## Layer 1: The enveloping algebra and the centre inside D(G, K)

The distribution algebra D(G, K) of a compact locally ℚ_p-analytic group, with its convolution, Dirac distributions and open-subgroup comparisons, is the one of PadicLocalLanglandsForGL2Qp §0.1. This layer adds the three structures on it that the later layers use: the embedding of U(g_K) with the sign fixed in Conventions, item 3; the crossed-product form over an open normal subgroup; and the centrality of Z(g) for open subgroups of connected algebraic groups. Groups are locally ℚ_p-analytic throughout the roadmap, and g = ℚ_p ⊗ L_U for an open uniform subgroup U (§0.1).

### 1.1 The enveloping algebra inside D(G, K)

Let G be a compact locally ℚ_p-analytic group, U an open normal uniform subgroup (NoncommutativeAndEquivariantIwasawa §0.2), g = ℚ_p ⊗ L_U its Lie algebra (§0.1) and K a complete discretely valued extension of ℚ_p. For x ∈ g write x = `p^{−n}` y with y ∈ L_U and put exp(tx) = `y^{t p^{−n}}` for t ∈ p^n ℤ_p. Define the distribution x̃ ∈ D(G, K) by x̃(f) = (d/dt) `f(exp(tx))|_{t=0}`; the derivative exists because t ↦ f(exp(tx)) is locally analytic, the ordered coordinates of NoncommutativeAndEquivariantIwasawa §0.6 being analytic charts. Prove that x ↦ x̃ is ℚ_p-linear and satisfies x̃ ∗ ỹ − ỹ ∗ x̃ = [x, y]~, so that by `UniversalEnvelopingAlgebra.lift` it extends to a K-algebra homomorphism U(g) `⊗_{ℚ_p}` K = U(g_K) → D(G, K), and that this homomorphism is injective (Schneider–Teitelbaum 2002, §2, p. 12; Fu, §5, equations (22)–(23), p. 15).

- x̃ is independent of the choice of U and of the representation x = `p^{−n}` y.
- For λ ∈ D(G, K), x̃ ∗ λ = `lim_{t→0}` `t^{−1}(δ_{exp(tx)} − δ₁)` ∗ λ in D(G, K) (Schneider–Teitelbaum 2002, §2, the limit formula, p. 12).
- For g ∈ G, δ_g ∗ x̃ ∗ `δ_{g⁻¹}` = (Ad(g)x)~, where Ad(g) is the automorphism of g induced by conjugation by g on an open uniform subgroup normalised by g (Fu, proof of Proposition 5.3, p. 17).
- Under the action of D(G, K) on the locally analytic functions by the contragredient of left translation, x̃ acts by the derivation f ↦ (d/dt) `f(exp(−tx)·)|_{t=0}`.
- For a locally analytic homomorphism φ : G → H, the pushforward of PadicLocalLanglandsForGL2Qp §0.1 sends x̃ to (dφ(x))~, where dφ is the induced map of Lazard lattices of §0.1.
- The homomorphism U(g_K) → D(G, K) is injective: pairing with polynomial functions in the ordered coordinates computes PBW coefficients, the ordered monomial x^α pairing with the coordinate monomial of the second kind t^β to `α!·δ_{αβ}` (Conventions, item 3; Schneider–Teitelbaum 2002, Lemmas 2.4–2.5, pp. 10–11), and the ordered monomials are a basis of U(g_K) (LieHighestWeight Layer 3).

*Proof sketch.* The commutator relation follows from the limit formula and the expansion exp(tx)exp(sy)exp(−tx)exp(−sy) = exp(ts[x, y] + higher order), which in the Lazard lattice is the definition of the bracket of §0.1.

*Needs:* §0.1; PadicLocalLanglandsForGL2Qp §0.1 (D(G, K), `distributionConvolution`, Dirac distributions, pushforward); NoncommutativeAndEquivariantIwasawa §§0.2, 0.6; LocallyAnalyticDistributions §0.3 (analytic charts and their independence); LieHighestWeight Layer 3 (PBW basis, for injectivity); Mathlib `UniversalEnvelopingAlgebra.lift`.

**Checks.**

- For G = ℤ_p and x = 1, x̃(f) = f′(0); on f(z) = z² + 3z it takes the value 3. The opposite sign convention, differentiating along exp(−tx), gives −3.
- 0̃ = 0, and for a finite group, where g = 0, the homomorphism is the inclusion K → D(G, K) of scalar multiples of δ₁.
- For G = G₁ ⊂ SL₂(ℤ_p) and p odd, ẽ ∗ f̃ − f̃ ∗ ẽ = h̃ and h̃ ∗ ẽ − ẽ ∗ h̃ = 2ẽ in D(G₁, ℚ_p). With the opposite convolution λ(g ↦ μ(h ↦ f(hg))) the first commutator would be −h̃, and x ↦ x̃ would be an anti-homomorphism.
- For G = ℤ_p the distribution 1̃ is neither in the span of Dirac distributions nor a bounded measure: its Amice transform is log(1 + T), whose coefficients `(−1)^{n+1}/n` are unbounded.

### 1.2 Crossed products over open normal subgroups

Let G be a compact locally ℚ_p-analytic group and H ⊆ G an open subgroup with coset representatives g₁ = 1, …, g_l of G/H. The open-subgroup comparison of PadicLocalLanglandsForGL2Qp §0.1 makes D(G, K) a free left and right D(H, K)-module on `δ_{g₁}`, …, `δ_{g_l}`, topologically D(G, K) ≅ D(H, K)^l. Prove that if H is normal, D(G, K) is the crossed product D(H, K) ∗ (G/H): conjugation by δ_g preserves D(H, K), and for any choice of representatives ḡ = `δ_{g_i}` of the cosets, ḡ D(H, K) = D(H, K) ḡ and ḡ h̄ ∈ D(H, K)^× · (gh)‾, with twisting `δ_{g_i}` ∗ `δ_{g_j}` = `δ_{h_{ij}}` ∗ `δ_{g_k}` for `h_{ij}` ∈ H and g_i g_j ∈ g_k H (Schneider–Teitelbaum 2002, proof of Lemma 3.1, p. 13; Schneider–Teitelbaum 2003, proof of Theorem 5.1, Step 1, pp. 29–30; Ardakov–Wadsley 2013, §10.6, the definition of a crossed product, p. 72). The crossed product is that of McConnell–Robson §1.5.8; the twisting is nontrivial whenever G/H does not lift to a subgroup of G.

*Needs:* PadicLocalLanglandsForGL2Qp §0.1 (open-subgroup comparison, Dirac distributions); NoncommutativeAndEquivariantIwasawa §0.3 (the same statement for Iwasawa algebras, compatible with the map K[[G]] → D(G, K)).

### 1.3 The centre of U(g) is central in D(G, K)

Let 𝔾 be a connected linear algebraic group over ℚ_p with Lie algebra g, and G an open compact subgroup of 𝔾(ℚ_p). Prove that the image of Z(g) ⊗ K under U(g_K) → D(G, K) (§1.1) lies in the centre of D(G, K). Consequently every z ∈ Z(g) commutes with every δ_g, and acts on the locally analytic functions on G by G-equivariant continuous endomorphisms for both the left and the right translation action (Schneider–Teitelbaum 2002, §3, Proposition 3.7 and its proof, p. 16; Fu, §5, proof of Theorem 5.2, p. 16).

*Proof sketch.* By density of the span of Dirac distributions (PadicLocalLanglandsForGL2Qp §0.1) it suffices that δ_g ∗ z ∗ `δ_{g⁻¹}` = z, that is, that the adjoint action of 𝔾(ℚ_p) on U(g) fixes Z(g); on generators this is the conjugation formula of §1.1, and for connected 𝔾 the adjoint action fixes Z(g) (Schneider–Teitelbaum 2002, Proposition 3.7, citing Bourbaki and Demazure–Gabriel II §6.1.5). Connectedness is essential: for 𝔾 = O(2), U(so(2)) = Z(so(2)) = K[x], and an element of determinant −1 sends x to −x, so x is not central in D(G, K) for G an open subgroup of O(2)(ℤ_p).

*Needs:* §1.1; PadicLocalLanglandsForGL2Qp §0.1 (density of Dirac distributions); LieHighestWeight Layer 7 (the centre of U(g)).

### Examples

- For G = G₁ ⊂ SL₂(ℤ_p) (p odd), the Casimir Δ = ½h² − h + 2ef is central in D(G₁, ℚ_p) by §1.3; ẽ and f̃ are not, by the commutator check of §1.1.
- For G = ℤ_p and H = pℤ_p, D(ℤ_p, K) = `⊕_{a=0}^{p−1}` δ_a ∗ D(pℤ_p, K) (§1.2); under the Amice transform this is the decomposition of an open-disc series by residue classes of the exponent of 1 + T.
- For a finite group G, D(G, K) is the group algebra K[G] via δ_g ↦ g, and §1.2 with H = {1} is its decomposition on the group basis; for G = {1}, D(G, K) = K.
- In D(G₁, ℚ_p), `δ_{exp(pe)}` ∗ `δ_{exp(pf)}` ≠ `δ_{exp(pf)}` ∗ `δ_{exp(pe)}`, since the two group elements do not commute and g ↦ δ_g is injective; D(G, K) is commutative exactly when G is.

### Dependencies

Within this roadmap: Layer 0. On other roadmaps and the libraries: PadicLocalLanglandsForGL2Qp §0.1; NoncommutativeAndEquivariantIwasawa §§0.2, 0.3, 0.6; LocallyAnalyticDistributions §0.3; LieHighestWeight Layers 3 and 7; Mathlib `UniversalEnvelopingAlgebra.lift`.

## Layer 2: Completed enveloping algebras, Frommer's theorem and the Arens–Michael envelope

Two completions of U(g) appear in the sources. The p-adic completion Û(h)_K of an integral lattice is a single noetherian Banach algebra; Layer 3 identifies it with `D_{1/p}(G, K)` and with the microlocalisation of the Iwasawa algebra. The Arens–Michael envelope 𝒰(g) is the limit of the weighted completions U(g)_r over all radii r ≥ 1, the algebra of distributions supported at the identity. Between them sit Frommer's closures U_r(g, K) inside the Banach steps D_r(G, K), over which D_r is free of finite rank; at r_n = `p^{−1/p^n}` this is a crossed product by `G/G^{p^n}`. The Banach steps themselves, with their coordinate norms, multiplicativity and graded rings, are the radius algebras of PadicLocalLanglandsForGL2Qp §0.1 (gap:radius-algebras).

### 2.1 The p-adically completed enveloping algebra Û(h)_K

Let R be a complete discrete valuation ring with uniformiser π and fraction field K, and h an R-Lie algebra that is free of finite rank as an R-module, with basis u₁, …, u_d. Define Û(h) := lim_a U(h)/π^a U(h) (π is central, so π^a U(h) is a two-sided ideal and each quotient is a ring), Û(h)_K := K ⊗_R Û(h) with the norm whose unit ball is Û(h), and for n ≥ 0 the n-th deformation `Û(h)_{n,K}` := Û(π^n h)_K (Ardakov–Wadsley 2013, §3.4 Example (c), §3.5, §3.7 Definition, Lemma and Corollary, pp. 14–16, and §10.4, the display defining Û(h)_K, p. 70; Fu, §4, the definitions of Û(g_R) and Û(g_K), p. 12).

- The ordered monomials u^α form an R-basis of U(h): they span by `TauCeti.UniversalEnvelopingAlgebra.span_orderedPBWMonomials_eq_pbwFiltration`, and they are linearly independent because their images in U(h_K) are (LieHighestWeight Layer 3). Hence gr U(h) ≅ Sym(h), which is flat over R, and U(h) is a deformable R-algebra (Ardakov–Wadsley 2013, §3.4 Example (c)).
- Every element of Û(h)_K is uniquely a convergent sum Σ_α c_α u^α with c_α ∈ K and c_α → 0, and ‖Σ c_α u^α‖ = sup_α |c_α|.
- U(h_K) → Û(h)_K is injective with dense image, and the inclusions U(h_K) ⊂ `Û(h)_{n+1,K}` ⊂ `Û(h)_{n,K}` are dense.
- Each `Û(h)_{n,K}` is a left and right noetherian K-Banach algebra, an almost commutative affinoid algebra, with `Gr(Û(h)_{n,K})` ≅ Sym(h ⊗_R k) (Ardakov–Wadsley 2013, §3.7 Corollary and §3.8 Proposition, pp. 16–17).
- A Lie algebra map φ : h → B into an R-algebra B that is π-adically complete, separated and π-torsion-free extends uniquely to a continuous R-algebra map Û(h) → B.
- For a finite extension K′/K with ring of integers R′ and ramification index e, K′ ⊗_K `Û(h)_{n,K}` ≅ `Û(R′ ⊗_R h)_{en,K′}`, compatibly with the maps from U(h); in particular K′ ⊗_K Û(h)_K ≅ `Û(R′ ⊗_R h)_{K′}` (Ardakov–Wadsley 2013, §3.9 Lemma (c), p. 17). Finiteness of K′/K is needed.

*Needs:* Mathlib `UniversalEnvelopingAlgebra`; Tau Ceti `TauCeti.UniversalEnvelopingAlgebra.pbwFiltration`, `TauCeti.UniversalEnvelopingAlgebra.span_orderedPBWMonomials_eq_pbwFiltration`; LieHighestWeight Layer 3 (PBW over a field); NoncommutativeAndEquivariantIwasawa §0.5 (noetherian lifting through a complete filtration).

**Checks.**

- For h = R·u abelian of rank one, Û(h)_K is the Tate algebra K⟨u⟩: the element Σ_n π^n u^n lies in it and Σ_n u^n does not; Û(π^n h)_K = K⟨π^n u⟩ is the Tate algebra of the disc of radius `|π|^{−n}`.
- For h = 0, Û(h)_K = K.
- For h = sl₂(ℤ_p), p odd, the Casimir Δ = ½h² − h + 2ef has norm 1 in `Û(h)_{ℚ_p}` (its PBW coefficients ½, −1, 2 are units), and `Û(h)_{ℚ_p}` is noncommutative: ef − fe = h ≠ 0.
- Û(h)_K depends on the lattice and not only on h_K: Û(πh)_K = `Û(h)_{1,K}` is a proper subalgebra of Û(h)_K, since Σ_n π^n u^n = Σ_n (πu)^n lies in Û(h)_K but not in Û(πh)_K, where its coefficients in the basis (πu)^n are all 1.

### 2.2 The closure U_r(g, K) of U(g) in D_r(G, K)

Let p be odd, G uniform with minimal generators g₁, …, g_d, b_i = g_i − 1, and x_i := log(1 + b_i) = `Σ_{n≥1}` `(−1)^{n+1}` b_i^n/n, the image in D(G, K) of log(g_i) ∈ g under §1.1. For 1/p ≤ r < 1, define U_r(g, K) as the closure in the Banach step D_r(G, K) of PadicLocalLanglandsForGL2Qp §0.1 (gap:radius-algebras) of the image of U(g_K) under §1.1 (Kohlhaase, §1.4, definition of U_r(g, K), p. 15; Fu, §5, the definition of U_r(g), p. 17).

- U_r(g, K) is a closed subalgebra of D_r(G, K), the topological closure in the sense of `Subalgebra.topologicalClosure`.
- x_i lies in U_r(g, K) and is the image of log(g_i): the logarithm series converges in D_r(G, K) for r < 1 and computes the derivative at t = 0 of t ↦ `δ_{g_i^t}`.
- δ_g U_r(g, K) `δ_{g⁻¹}` = U_r(g, K) for g ∈ G, by the conjugation formula of §1.1 and continuity of conjugation (Fu, proof of Proposition 5.3, p. 17).
- For r′ ≤ r the transition D_r → `D_{r′}` maps U_r(g, K) into `U_{r′}(g, K)`.
- The map U(g_K) → U_r(g, K) is injective with dense image; on generators it is x ↦ x̃ of §1.1.

*Needs:* §§0.1, 1.1; PadicLocalLanglandsForGL2Qp §0.1 (gap:radius-algebras); Mathlib `Subalgebra.topologicalClosure`.

**Checks.**

- For G = {1}, U_r = D_r = K.
- For G = ℤ_p (p odd) and r₁ = `p^{−1/p}`, `‖log(1 + T)‖_{r₁}` = max_k `r₁^{p^k}/|p^k|` = max_k `p^{k − p^{k−1}}` = 1, attained only at k = 1, by the term T^p/p; the term T has norm `p^{−1/p}` < 1. A norm computed from the linear term alone would give `p^{−1/p}`.
- For G = ℤ_p and r = r₁, U_r ≠ D_r: δ₁ = 1 + T is not in the closure of K[log(1 + T)] at that radius, while δ_p = exp(p log(1 + T)) is (Fu, proof of Proposition 5.3); `D_{r₁}` is free of rank p over `U_{r₁}` (§2.3).
- For G = ℤ_p and `p^{−1}` < r < `p^{−1/(p−1)}`, ‖log(1 + T) − T‖_r < ‖T‖_r, so log(1 + T) has the same norm r as T and U_r = D_r: the closure is proper only at the larger radii.

### 2.3 Frommer's theorem

Let K be discretely valued, G a uniform pro-p group (p odd) with τ_i = ω(g_i) = 1, more generally a p-valued group with an ordered basis as in Kohlhaase §1.4 with τ_i = ω(h_i), let r ∈ p^ℚ with 1/p < r < 1 and x_i = log(1 + b_i). Prove: (i) U_r(g, K) = {Σ_α d_α x^α : d_α ∈ K, |d_α| ‖x^α‖_r → 0}, with ‖Σ d_α x^α‖_r = sup_α |d_α| ‖x^α‖_r; (ii) U_r(g, K) is a noetherian subalgebra of D_r(G, K); (iii) with ℓ_i = max{m ≥ 1 : `sup_{n ≥ 1}` |1/n| `r^{nτ_i}` = |1/m| `r^{mτ_i}`}, D_r(G, K) is a free right U_r(g, K)-module with basis the b^α, 0 ≤ α_i < ℓ_i. For a closed uniform subgroup H compatible with G the same holds for D(H, K), and the closure of D(G, K)·D(H, K) in D_r(G, K) is a finitely generated free U_r(g, K)-module with basis in K[H] (Kohlhaase, §1.4, Theorem (Frommer) and Corollary 1.4.1 with its proof, pp. 15–16; Fu, §5, equation (27) and the proof of Proposition 5.3, p. 17). The theorem is stated for r ∈ p^ℚ ∩ (1/p, 1) only.

*Proof sketch.* The monomials x^α are orthogonal for ‖·‖_r (Frommer's orthogonality lemma, as summarised by Kohlhaase §1.4). The integer ℓ_i records where the maximum in ‖log(1 + b_i)‖_r = max_n |1/n| `r^{nτ_i}` is attained, and the b^α with α_i < ℓ_i fill the remaining coordinates (Kohlhaase, proof of Corollary 1.4.1). Noetherianity follows from the graded ring of U_r being a polynomial ring, as for D_r.

*Needs:* §2.2; PadicLocalLanglandsForGL2Qp §0.1 (gap:radius-algebras: coordinate norms, multiplicativity and graded rings of D_r); NoncommutativeAndEquivariantIwasawa §0.5.

### 2.4 `D_{r_n}(G, ℚ_p)` as a crossed product of `U_{r_n}(g)` by `G/G^{p^n}`

Let p be odd, G uniform with minimal generators g_i, ω(g_i) = 1, and r_n = `p^{−1/p^n}` for n ≥ 1. Prove: (i) `‖log(1 + b_i)‖_{r_n}` = `p^{n−1}`; (ii) for every g ∈ G, `g^{p^n}` ∈ `U_{r_n}(g)`, since `g^{p^n}` = exp(p^n log g) and the exponential series converges in `U_{r_n}(g)`; (iii) `D_{r_n}(G, ℚ_p)` is the crossed product `U_{r_n}(g)` ∗ (`G/G^{p^n}`): it is a free left and right `U_{r_n}(g)`-module on δ_γ for any set of coset representatives γ of `G/G^{p^n}`, with δ_γ `U_{r_n}(g)` = `U_{r_n}(g)` δ_γ and twisting in `U_{r_n}(g)^×` ∩ `δ_{G^{p^n}}`; (iv) if G is open in the ℚ_p-points of a connected split reductive group, then for every character λ of Z(g), `D^λ_{r_n}(G, ℚ_p)` ≅ `U^λ_{r_n}(g)` ∗ (`G/G^{p^n}`), with the central quotients of §4.1 (Fu, Proposition 5.3 and its proof, pp. 17–18; Ardakov–Wadsley 2013, §10.6, Proposition and Remark, pp. 71–72).

*Proof sketch.* (i): ‖log(1 + b_i)‖_r = max_k `r^{p^k}/|p^k|` = max_k `p^{k − p^{k−n}}`, which is `p^{n−1}` at k = n and strictly smaller for every other k ≥ 0, because k − `p^{k−n}` < n − 1 for k ≠ n when p ≥ 3; terms T^m with m not a power of p are dominated by the term with m replaced by `p^{v_p(m)}`. (ii): `‖x_i^k‖_{r_n}` = `p^{(n−1)k}` by multiplicativity, and `|p^{nk}/k!| p^{(n−1)k}` = `p^{−k + v_p(k!)}` ≤ `p^{−k(p−2)/(p−1)}` → 0, so exp(p^n x_i) converges and equals `g_i^{p^n}`; products of these give all of `G^{p^n}` by ordered coordinates. (iii): §2.3 with ℓ_i = p^n; the b^α with α_i < p^n span the same right `U_{r_n}`-module as the δ_γ, and `U_{r_n}` is stable under conjugation (§2.2). (iv): Z(g) is central (§1.3) and contained in `U_{r_n}(g)`, so the crossed-product structure passes to the quotient by the central ideal.

*Needs:* §§1.2, 1.3, 2.2, 2.3; NoncommutativeAndEquivariantIwasawa §0.6 (ordered coordinates); PadicLocalLanglandsForGL2Qp §0.1 (gap:radius-algebras: multiplicativity of ‖·‖_r).

### 2.5 The Arens–Michael envelope 𝒰(g) and its coadmissible modules

Let E/ℚ_p be finite and g the Lie algebra of a linear algebraic group over o_E, with a chosen o_E-basis x₁, …, x_d of the integral Lie lattice g₀ (closed under the bracket). For r > 0 put |Σ_n a_n x^n|_r := sup_n |a_n| `r^{|n|}` on U(g) in PBW coordinates and let U(g)_r be the completion; for r ≥ 1 these are Banach algebras. Define the Arens–Michael envelope 𝒰(g) := `lim_{r ≥ 1}` U(g)_r (Boxer–Calegari–Gee–Pilloni, §2.2.29, Remark 2.2.30, Definition 2.2.31, Definition 2.2.33, §2.2.34 and Proposition 2.2.35, pp. 23–24; Schmidt, §3.2, Proposition 3.2.1, Remark 3.2.2 and Proposition 3.2.3, pp. 5–6, and Theorem 4.3.3, p. 16; Schneider–Teitelbaum 2002, §2, Lemmas 2.4 and 2.5, pp. 10–11).

- The norms |·|_r, r > 1, are submultiplicative and cofinal among the submultiplicative seminorms on U(g), so their completion is the Arens–Michael envelope of U(g) (Schmidt, Proposition 3.2.1).
- 𝒰(g) is a Fréchet–Stein algebra for the sequence U(g)_r, r = 1, 2, 3, …, an integral domain whose Banach completions U(g)_r are noetherian and flat over 𝒰(g) (Schmidt, Proposition 3.2.3 and the following remark), and a nuclear Fréchet space.
- 𝒰(g) is the strong dual of the space `𝒪_{G,e}` of germs at e of analytic functions, a space of compact type: the germs are the power series Σ a_n T^n in coordinates of the second kind with |a_n| `s^{|n|}` → 0 for some s > 0, their dual consists of the Σ b_n Z^n with sup |b_n| `s^{−|n|}` < ∞ for all s > 0, and x^n pairs with T^n to give n!·δ (Schneider–Teitelbaum 2002, Lemmas 2.4–2.5).
- U(g) → 𝒰(g) is injective with dense image, x ↦ (f ↦ (d/dt) f(exp(tx))|₀), compatibly with §1.1.
- For the small-group distribution algebras D(G_r) of the congruence polydisc subgroups G_r there are cofinal comparisons: for every r there are r′ and r″ with `U(g)_{r′}` → D(G_r) → `U(g)_{r″}`, so 𝒰(g) = lim_r U(g)_r = lim_r D(G_r) (Boxer–Calegari–Gee–Pilloni, Remark 2.2.30).
- A left 𝒰(g)-module is coadmissible in the sense of PadicLocalLanglandsForGL2Qp §0.1 for the sequence U(g)_r (gap:frechet-stein-general), with transition isomorphisms U(g)_r `⊗_{U(g)_{r+1}}` `M_{r+1}` ≅ M_r. U(g) → 𝒰(g) and U(g) → U(g)_r are flat (Schmidt, Theorem 4.3.3), so M ↦ 𝒰(g) `⊗_{U(g)}` M is an exact functor from finitely generated U(g)-modules to coadmissible 𝒰(g)-modules (Boxer–Calegari–Gee–Pilloni, Proposition 2.2.35).
- An admissible 𝒰(g)-module is the continuous dual of a coadmissible one, a space of compact type with the contragredient action (Boxer–Calegari–Gee–Pilloni, Definition 2.2.33).

𝒰(g) is not Û(g_R)_K: the latter is the single Banach step for the norm of a lattice, while 𝒰(g) is the limit over all radii r ≥ 1.

*Needs:* §1.1; PadicLocalLanglandsForGL2Qp §0.1 (coadmissible modules; gap:frechet-stein-general); LocallyAnalyticDistributions §§0.2, 0.3 (compact-type duality and strong duality for analytic compact-type spaces); LieHighestWeight Layer 3; Mathlib `UniversalEnvelopingAlgebra`.

**Checks.**

- For g = E·x abelian, U(g)_r is the Tate algebra of the disc |x| ≤ r and 𝒰(g) = {Σ a_n x^n : |a_n| r^n → 0 for all r}, the entire series; exp(x) = Σ x^n/n! lies in U(g)_r only for r < `p^{−1/(p−1)}` < 1, so exp(x) ∉ 𝒰(g). The finitely generated module E[x]/(x − a) completes to the coadmissible module 𝒪(𝔸¹)/(x − a) ≅ E for every a ∈ E.
- For g = 0, 𝒰(g) = E.
- With the convention of §1.1, the ordered monomial `x₁^{α₁}` ⋯ `x_d^{α_d}` pairs with the coordinate monomial t^β of the second kind to `α!·δ_{αβ}`; Schneider–Teitelbaum 2002, Lemma 2.4, obtain `(−1)^{|α|}` α! because they differentiate along exp(−tx).
- For a left module the transition U(g)_r `⊗_{U(g)_{r+1}}` `M_{r+1}` ≅ M_r is the one that is defined; the reversed `M_{r+1}` `⊗_{U(g)_{r+1}}` U(g)_r of Boxer–Calegari–Gee–Pilloni, Definition 2.2.31, would need `M_{r+1}` to be a right module.

### Examples

- For G uniform with τ_i = 1 and r = r_n, the maximum max_k `r_n^{p^k}/|p^k|` is attained exactly at k = n, so ℓ_i = p^n and `‖x_i‖_{r_n}` = `p^{n−1}`: `D_{r_n}` is free over `U_{r_n}` on the b^α with α_i < p^n, which matches the coset count [G : `G^{p^n}`] = `p^{nd}` (§§2.3–2.4).
- For G = ℤ_p and n = 1: `D_{r₁}(ℤ_p, ℚ_p)` = `⊕_{a=0}^{p−1}` `U_{r₁}` δ_a, with δ_p = exp(p log(1 + T)) ∈ `U_{r₁}`.
- For G = ℤ_p and `p^{−1}` < r < 1, U_r(Lie ℤ_p, K) is the closure of K[x], x = log(1 + T): the power series in log(1 + T) convergent for ‖·‖_r (§2.3 (i)).

### Dependencies

Within this roadmap: Layers 0 and 1. On other roadmaps and the libraries: PadicLocalLanglandsForGL2Qp §0.1 (gap:radius-algebras, gap:frechet-stein-general); NoncommutativeAndEquivariantIwasawa §§0.5, 0.6; LocallyAnalyticDistributions §§0.2, 0.3; LieHighestWeight Layer 3; Mathlib `UniversalEnvelopingAlgebra`, `Subalgebra.topologicalClosure`; Tau Ceti `TauCeti.UniversalEnvelopingAlgebra.pbwFiltration`, `TauCeti.UniversalEnvelopingAlgebra.span_orderedPBWMonomials_eq_pbwFiltration`.

## Layer 3: Microlocalisation of Iwasawa algebras and Lie modules

Ardakov–Wadsley's microlocalisation inverts, in the Iwasawa algebra of a uniform group over an unramified coefficient ring, the elements whose principal symbol is a power of p, and completes. Lazard's computation of the graded ring makes this possible, and the result is Û(g_R)_K, which is also the Banach step `D_{1/p}(G, K)`. Finite-dimensional modules on which these elements act invertibly are unchanged by microlocalisation; this gives the semisimplicity of finite-dimensional K[[G]]-modules and Fu's comparison of W-isotypic quotients. Here K[[G]] = K ⊗_R R[[G]] with R[[G]] = `TauCeti.completedGroupAlgebra` R G, and p is odd.

### 3.1 Algebraic microlocalisation of complete filtered rings

Let A be a ring with an exhaustive separated ℤ-filtration F_•A (F_iA·F_jA ⊆ `F_{i+j}A`, 1 ∈ F₀A, in the sense of `IsRingFiltration`) which is Zariskian, for example complete with noetherian associated graded ring (NoncommutativeAndEquivariantIwasawa §0.5), and let T ⊆ gr A be a left and right Ore set of homogeneous elements. Define S := {s ∈ A : gr s ∈ T}, the Ore localisation A_S (`OreLocalization`) with its induced filtration, and the microlocalisation Q_T(A) as the completion of A_S for that filtration; for a finitely generated A-module M with a good filtration, Q_T(M) is the completion of M_S for the induced filtration (Ardakov–Wadsley 2013, §§2.1–2.4, the Definition of Q_T(A) and Q_T(M), the Lemma and the Corollary, pp. 7–9, citing Li–Van Oystaeyen).

- S is an Ore set of A (`OreLocalization.OreSet`), the induced filtration on A_S is Zariskian with gr(A_S) ≅ (gr A)_T, and good filtrations localise to good filtrations.
- The map A → Q_T(A) is a strictly filtered ring map, and gr Q_T(A) ≅ (gr A)_T.
- Q_T(A) is flat as a left and as a right A-module (`Module.Flat`).
- Q_T(A) ⊗_A M ≅ Q_T(M) for every finitely generated M with a good filtration.
- Q_T(M) = 0 iff every element of M is killed by some s ∈ S.
- A strictly filtered ring map φ : A → B into a complete filtered ring with gr φ(T) consisting of units of gr B extends uniquely to a strictly filtered map Q_T(A) → B.

*Needs:* Mathlib `OreLocalization`, `OreLocalization.OreSet`, `IsRingFiltration`, `Module.Flat`; NoncommutativeAndEquivariantIwasawa §0.5 (Zariskian filtrations).

**Checks.**

- For T = {1}, S is the set of elements with symbol 1, which are units when the filtration is complete, and Q_T(A) = A.
- For commutative A with the I-adic filtration and T the powers of the symbol of a central regular x, Q_T(A) is the completion of A[1/x] for the induced filtration.
- For A = ℤ_p[[X]] with the (p, X)-adic filtration and T the powers of gr p, the microlocalisation is ℚ_p⟨X/p⟩ (power series in X/p with coefficients tending to zero): p + X² ∈ S becomes a unit, and X ∉ S is not inverted.
- For the same A and T, the module ℤ_p[[X]]/(p) is S-torsion (p ∈ S), so its microlocalisation is 0 although the module is nonzero: microlocalisation is flat but not faithfully flat.

### 3.2 The m-adic filtration of the Iwasawa algebra of a uniform group

Let R be a complete discrete valuation ring with uniformiser p (unramified over ℤ_p) and residue field k, G uniform of dimension d with minimal generators g_i, b_i = g_i − 1, and m = ker(R[[G]] → k) the maximal ideal. Prove that the m-adic filtration of R[[G]] is the weighted filtration of NoncommutativeAndEquivariantIwasawa §0.8 for the valuation ω_U: every element is uniquely Σ_α λ_α b^α with λ_α ∈ R, and its m-adic degree is deg(Σ λ_α b^α) = min_α (v(λ_α) + |α|). Consequently the m-adic filtration is complete and gr_m R[[G]] ≅ U(gr G `⊗_{𝔽_p}` k) as graded k[t]-algebras, where gr G ⊗ k ≅ t·h_k[t] with h_k = h/ph and h = (1/p) R L_G; in particular gr_m R[[G]] is a noetherian domain and the m-adic filtration is Zariskian (Ardakov–Wadsley 2013, §10.1, §10.2 Lemma, §10.3 Theorem and Corollary, pp. 67–69; Schneider, Theorem 28.3, p. 199). The degree formula and the description of gr need p to be a uniformiser of R.

*Proof sketch.* The ordered-series description and the graded ring for ω_U are NoncommutativeAndEquivariantIwasawa §0.8. The degree formula identifies the ω_U-filtration with the m-adic one, because m^n is spanned topologically by the p^a b^α with a + |α| ≥ n. The comparison gr G ⊗ k ≅ t·h_k[t] uses that commutators agree modulo `G^{p²}` with the Lazard bracket of §0.1 (Ardakov–Wadsley 2013, Lemma 10.2).

*Needs:* §0.1; NoncommutativeAndEquivariantIwasawa §§0.5, 0.7, 0.8; LieHighestWeight Layer 3 (PBW for U(t·h_k[t])).

### 3.3 The microlocal Ore set S₀

Under the hypotheses of §3.2, the powers of gr p form a multiplicatively closed set of homogeneous central regular elements of the noetherian domain gr_m R[[G]], hence an Ore set T. Define S₀ ⊆ R[[G]] as the associated set of §3.1, S₀ = {x ∈ R[[G]] : gr x = (gr p)^a for some a ≥ 0} = `⋃_{a ≥ 0}` (p^a + `m^{a+1}`), and for n ≥ 0 the analogous set S_n ⊆ `R[[G^{p^n}]]` (Ardakov–Wadsley 2013, §10.4, the definition of S, p. 70, and §10.6, the sets S_n, p. 71; Fu, §4, equation (17), p. 14).

- S₀ is an Ore set of R[[G]] not containing 0, and x ∈ S₀ iff x ∈ p^a + `m^{a+1}` for some a ≥ 0, iff gr x = (gr p)^a.
- gr p is central and regular in gr_m R[[G]]: it is t in degree 1 of k[t] ⊆ U(t·h_k[t]).
- S_n is stable under conjugation by G, since conjugation preserves the m_n-adic filtration of `R[[G^{p^n}]]` and fixes p.
- The set is formed only for R unramified; over a ramified K the microlocalisation is obtained by base change (§3.6).

*Needs:* §§3.1, 3.2.

**Checks.**

- p ∈ S₀ (a = 1) and 1 ∈ S₀ (a = 0).
- For G = {1}, R[[G]] = R, m = pR and S₀ = R ∖ {0}: microlocalisation is passage to K.
- b_i ∉ S₀: its symbol has degree 1 but is not gr p. For G = ℤ_p and R = ℤ_p, S₀ contains p + b² but not b + p²: its elements are those whose leading form is a power of p.
- For R = ℤ_p[√p] (uniformiser ϖ = √p, so p = ϖ² ∈ m²) the set ⋃_a (p^a + `m^{a+1}`) contains 0 = p − p ∈ p + m², so it is not an Ore set of nonzerodivisors over a ramified coefficient ring.

### 3.4 The microlocalisation of R[[G]] is the completed enveloping algebra

Let R be a complete discrete valuation ring with uniformiser p and fraction field K, G a uniform pro-p group with minimal generators g_i, and h = (1/p) R L_G with R-basis u_i corresponding to the g_i. Prove: the exponential exp(u) converges in A := Û(h)_K (§2.1) for u ∈ L_G ⊆ p h, and g ↦ exp(log g) is an injective group homomorphism G → A^×; it extends to a strictly filtered ring homomorphism ψ : R[[G]] → A with ψ(b_i) = exp(p u_i) − 1 ≡ p u_i, sending gr p to the invertible symbol s and gr b_i to s u_i; and the induced map from the microlocalisation is an isomorphism of complete ℤ-filtered rings `Q_{gr p}(R[[G]])` ≅ Û(h)_K. Consequently K[[G]] → Û(h)_K is flat on both sides and, for a finitely generated K[[G]]-module M, Û(h)_K `⊗_{K[[G]]}` M = 0 iff M is S₀-torsion. For n ≥ 0, `Q_{gr p}(R[[G^{p^n}]])` ≅ `Û(h)_{n,K}` (Ardakov–Wadsley 2013, §10.4, Theorem and its proof, pp. 70–71; §10.5, Remarks (a)–(d), p. 71; §10.6, Proposition (a), p. 72; Fu, §4, equation (18), p. 14).

*Proof sketch.* The Campbell–Hausdorff formula shows log(exp u exp v) ∈ L_G, so u ↦ exp u identifies G with exp(L_G) ⊂ A^×. Then ψ(b^α) ≡ `p^{|α|}` u^α modulo `p^{|α|+1}` F₀A, so with the degree formula of §3.2 and the PBW basis of gr₀ A ≅ U(h_k), deg ψ(x) = deg x on R[G], and ψ extends by density to a strictly filtered map. Since gr A ≅ U(h_k)[s, `s^{−1}`], ψ extends to the microlocalisation by §3.1; the extension is injective because it is strictly filtered, and its graded map is surjective. The microlocalisation already inverts p, so the target is the rational algebra Û(h)_K, not Û(h).

*Needs:* §§0.1, 2.1, 3.1, 3.2, 3.3; Mathlib `NormedSpace.exp` (for the series in the Banach algebra Û(h)_K).

### 3.5 The Banach step `D_{1/p}(G, K)` is the completed enveloping algebra

Let p be odd, K a complete discretely valued extension of ℚ_p with ring of integers R, and G a uniform group with g = R `⊗_{ℤ_p}` (1/p) L_G. Prove that there is a natural isomorphism of K-Banach algebras `D_{1/p}(G, K)` ≅ Û(g)_K extending g ↦ exp(log g) on G ⊂ D(G, K), with the norm `‖·‖_{1/p}` on the left and the norm of the lattice Û(g) on the right; `D_{1/p}(G, K)` consists of the series Σ d_α b^α with |d_α| `p^{−|α|}` → 0 (Ardakov–Wadsley 2014, §5.1 and the Lemma of §5.2 with its proof, p. 14; Ardakov–Wadsley 2013, §10.5, Remark (c), p. 71; Fu, §4, p. 12, and the proof of Theorem 5.1, p. 21). The completion consists of null sequences, not of bounded ones (Source corrections, item 7).

*Proof sketch.* By the Cohen structure theorem K contains an unramified K′ over ℚ_p with K/K′ finite. Over K′, §3.4 identifies the microlocalisation with `Û(g′)_{K′}`, and both sides are the completion of K′[G] for `‖·‖_{1/p}`. Base change to K uses §2.1 on the right and the coefficient description of `D_{1/p}` on the left.

*Needs:* §§2.1, 3.4; PadicLocalLanglandsForGL2Qp §0.1 (gap:radius-algebras: the coefficient description of `D_{1/p}(G, K)`).

### 3.6 Microlocalisation over a ramified coefficient field

Let K be a finite extension of ℚ_p with ring of integers R (possibly ramified), G uniform and `g_{ℤ_p}` = (1/p) L_G. Define the microlocalisation of K[[G]] = K `⊗_{ℚ_p}` ℚ_p[[G]] as the base change K `⊗_{ℚ_p}` (ℚ_p[[G]] → `Û(g_{ℤ_p})_{ℚ_p}`) of §3.4. Prove: K `⊗_{ℚ_p}` `Û(g_{ℤ_p})_{ℚ_p}` ≅ Û(g_R)_K with g_R = R ⊗ `g_{ℤ_p}`; the resulting map K[[G]] → Û(g_R)_K is flat on both sides and is the unique continuous extension of g ↦ exp(log g); and for every K[[G]]-module M, Û(g_R)_K `⊗_{K[[G]]}` M ≅ `Û(g_{ℤ_p})_{ℚ_p}` `⊗_{ℚ_p[[G]]}` M, where M is regarded as a ℚ_p[[G]]-module by restriction (Ardakov–Wadsley 2013, §3.9, Lemma, p. 17; Fu, §4, equations (17)–(18), p. 14). This replaces the direct use of the set (17) over a ramified R (Source corrections, item 3).

*Proof sketch.* Base change of completed enveloping algebras is §2.1; flatness is preserved by base change; agreement with exp(log g) holds on the dense subgroup G; and with B = K ⊗ Û, A = K ⊗ ℚ_p[[G]] and Λ = ℚ_p[[G]], B = A ⊗_Λ Û gives B ⊗_A M ≅ Û ⊗_Λ M by associativity of tensor products (`Algebra.TensorProduct.rid` for the identification of K ⊗ ℚ_p).

*Needs:* §§2.1, 3.4; Mathlib `Module.Flat`, `Algebra.TensorProduct.rid`.

### 3.7 Microlocalisation of finitely generated Iwasawa modules

For K finite over ℚ_p, G uniform and M a finitely generated K[[G]]-module, define its microlocalisation M̂ := Û(g_K) `⊗_{K[[G]]}` M, with the natural K[[G]]-linear map η_M : M → M̂, m ↦ 1 ⊗ m (Fu, §4, the paragraph after equation (18), p. 14; Ardakov–Wadsley 2013, §10.5, Remark (d), p. 71, and §10.6, Proposition (e), p. 72).

- M ↦ M̂ is an exact functor on finitely generated K[[G]]-modules, natural in M, with values in finitely generated Û(g_K)-modules.
- K[[G]]^ = Û(g_K).
- For K = ℚ_p, M̂ = 0 iff M is S₀-torsion; for general K the criterion holds after restriction to ℚ_p[[G]] (§3.6).
- Microlocalisation is not faithful: S₀-torsion modules are killed. Faithful flatness of K[[G]] → D(G, K) (PadicLocalLanglandsForGL2Qp §0.1) is a different statement.

*Needs:* §§3.1, 3.4, 3.6.

**Checks.**

- For the trivial K[[G]]-module K, K̂ ≅ K and η_K is an isomorphism: the augmentation of every s ∈ S₀ lies in p^a(1 + pℤ_p) and is nonzero, so S₀ acts invertibly.
- 0̂ = 0.
- For G = 1 + pℤ_p ≅ ℤ_p with b = (1 + p) − 1, the module M = ℚ_p[[b]]/((1 + b)^p − 1) of functions on G/G^p has M̂ ≅ ℚ_p: under b ↦ exp(pu) − 1, (1 + b)^p − 1 = exp(p²u) − 1 = p²u·v with v = Σ_k (p²u)^k/(k + 1)! a unit of ℚ_p⟨u⟩ (each term with k ≥ 1 has norm `p^{−2k + v_p((k+1)!)}` < 1), so only the trivial character survives and the p − 1 nontrivial characters, defined over ℚ_p(ζ_p), are killed.
- For the same M, D(G, ℚ_p) `⊗_{ℚ_p[[G]]}` M ≅ M is p-dimensional (faithful flatness, PadicLocalLanglandsForGL2Qp §0.1), while M̂ is one-dimensional: microlocalisation and passage to distributions differ.

### 3.8 Lie modules and the semisimplicity theorem

Let R be unramified with uniformiser p, K = Frac R, and G a uniform group satisfying the hypotheses of Ardakov–Wadsley 2013, §10.12 without the condition on p: there are a connected split semisimple group scheme 𝔾 over R with Lie algebra 𝔤 and an integer m ≥ 0 with `p^{m+1}` 𝔤 = R `⊗_{ℤ_p}` L_G; the congruence kernel `ker(𝔾(ℤ_p) → 𝔾(ℤ/p^{m+1}))` is the example. Put U_n = `Q_{gr p}(R[[G^{p^n}]])` ≅ `Û(𝔤)_{n+m,K}` (§3.4) and let U_n ∗ H_n, H_n = `G/G^{p^n}`, be the crossed products of Ardakov–Wadsley 2013, §10.6. Let ℳ be the category of K[[G]]-modules that are finite-dimensional over K, and define the Lie modules as the objects of ℳ obtained from finite-dimensional U₀-modules by restriction along K[[G]] → U₀, and the Artin modules as those on which an open subgroup of G acts trivially. Prove:

- (P) If M ∈ ℳ is S_n-torsion-free, η_M : M → (U_n ∗ H_n) `⊗_{K[[G]]}` M is an isomorphism; every M ∈ ℳ is S_n-torsion-free for n large (Ardakov–Wadsley 2013, §11.1 Proposition, p. 79, and Corollary 10.11).
- (a) ℳ is semisimple: every submodule of an object of ℳ has a K[[G]]-stable complement (Ardakov–Wadsley 2013, §11.1, Theorem (a), p. 79).
- (b) U₀ `⊗_{K[[G]]}` − is an equivalence between the Lie modules and the finite-dimensional U(𝔤_K)-modules, and a simple Lie module V has `End_{K[[G]]}(V)` = K (Ardakov–Wadsley 2013, §11.1, Theorem (b) and Corollary, p. 80).
- (c) Every simple M ∈ ℳ is V ⊗ ρ with V a simple Lie module and ρ a simple Artin module, and the factors are unique up to isomorphism (Ardakov–Wadsley 2013, §11.2 Lemma and Theorem, pp. 80–81, and §11.3 Theorem, p. 81).

The headline instance is `isSemisimpleModule_of_finiteDimensional`: for p odd, m ≥ 0 and G = G₁^m (`firstCongruenceProduct` p m), every module M over ℚ_p `⊗_{ℤ_p}` ℤ_p[[G]] that is finite-dimensional over ℚ_p, the scalars acting through the algebra, is semisimple (`IsSemisimpleModule`). Here 𝔾 = SL₂^m over ℤ_p, the congruence level is m + 1 = 1 by §0.3, and the modules are abstract modules over the rational Iwasawa algebra, with no continuity hypothesis. For m = 0 the algebra is ℚ_p and the statement is semisimplicity of vector spaces.

*Proof sketch.* (P) for n = 0: a finite-dimensional S₀-torsion-free module is unchanged by localisation at S₀, since each s acts injectively and hence bijectively, and its R-lattice is already p-adically complete; general n by restriction to `G^{p^n}` and the crossed-product identity (U_n ∗ H_n) ⊗ M ≅ U_n `⊗_{K[[G^{p^n}]]}` M. (a): identify V with a module over U_n ∗ H_n; finite-dimensional U_n-modules are semisimple (Ardakov–Wadsley 2013, Corollary 9.2), and averaging a U_n-linear projection over the finite group H_n in characteristic zero gives a K[[G]]-linear one. (b): restriction and base change are adjoint, and (P) with n = 0 shows that unit and counit are isomorphisms on Lie modules. The semisimplicity fails without the semisimplicity of 𝔤: for G = ℤ_p with topological generator γ, K[[G]]/((γ − 1)²) is a nonsplit extension of the trivial module by itself.

*Needs:* §§0.3, 2.1, 3.3, 3.4; NoncommutativeAndEquivariantIwasawa §0.3 (crossed products of Iwasawa algebras); LieHighestWeight Layer 5 (complete reducibility for 𝔤_K); Tau Ceti `TauCeti.completedGroupAlgebra`; Mathlib `IsSemisimpleModule`, `TensorProduct`.

### 3.9 The Lie module attached to a finite-dimensional representation

Let K be finite over ℚ_p with ring of integers R, G uniform with g_R = (1/p) R L_G and g_K split semisimple, W a finite-dimensional U(g_K)-module and W₀ ⊆ W a g_R-stable R-lattice. Define 𝓛(W) as W with the K[[G]]-module structure obtained as follows: the U(g_R)-action on W₀ extends continuously to Û(g_R), since W₀ is finite free and hence p-adically complete; so the U(g_K)-action on W extends to Û(g_K); pull it back along K[[G]] → Û(g_K) of §3.6 (Fu, §4, the paragraphs following equation (18), p. 14; Ardakov–Wadsley 2013, §9.2, Theorem and its proof, p. 61).

- A g_R-stable lattice exists for every finite-dimensional W, and 𝓛(W) does not depend on its choice: two lattices are commensurable, and the extended actions agree on the dense subalgebra U(g_K).
- An element g ∈ G acts on 𝓛(W) by exp(log g), and the differentiated action of 𝓛(W) is the given g_K-action (`LieModule`).
- A U(g_K)-linear map W → W′ is K[[G]]-linear 𝓛(W) → 𝓛(W′).
- If W is irreducible, 𝓛(W) is an irreducible Lie module with `End_{K[[G]]}(𝓛(W))` = K (§3.8 (b)).

*Needs:* §§2.1, 3.6, 3.8; LieHighestWeight Layer 5; Mathlib `LieModule`.

**Checks.**

- For W = K the trivial g_K-module, 𝓛(W) is the trivial K[[G]]-module, on which K[[G]] acts through the augmentation.
- For G = G₁ ⊂ SL₂(ℤ_p) and W = ℚ_p² the standard representation, exp(pe) ∈ G₁ acts by the matrix with rows (1, p) and (0, 1), the exponential of p·e.
- For W = Sym^k(ℚ_p²) with lattice Sym^k(ℤ_p²), 𝓛(W) is the restriction to G₁ of the algebraic representation Sym^k of SL₂(ℤ_p).
- Over K containing ζ_p, a nontrivial character of G₁ trivial on G₁^p is an Artin module but not a Lie module: a one-dimensional Lie module comes from a one-dimensional sl₂(K)-module, which is trivial because sl₂ is perfect, so G₁ would act trivially.

### 3.10 Microlocalisation preserves W-isotypic quotients

Let K be finite over ℚ_p and G uniform with g_K split semisimple, satisfying the hypotheses of §3.8; let W be an absolutely irreducible finite-dimensional g_K-module with a stable lattice, viewed as a Lie module (§3.9). Write Ann(W) ⊆ U(g_K), Ânn(W) ⊆ Û(g_K) and Ãnn(W) ⊆ K[[G]] for the annihilators, and for a finitely generated K[[G]]-module M put M_W = M/Ãnn(W)M and M̂_W = M̂/Ânn(W)M̂. Prove that U(g_K)/Ann(W) ≅ Û(g_K)/Ânn(W) ≅ End_K(W), and that for every finitely generated K[[G]]-module M the natural map M_W → M̂_W is an isomorphism, naturally in M; in particular K[[G]]/Ãnn(W) ≅ Û(g_K)/Ânn(W) ≅ End_K(W) (Fu, §4, displays (19)–(20) and Theorem 4.3 with its proof, pp. 14–15). Surjectivity of K[[G]]/Ãnn(W) → End_K(W) is part of the conclusion.

*Proof sketch.* U(g_K)/Ann(W) ≅ End_K(W) is the density theorem for the absolutely irreducible W (Fu (19), citing Bourbaki VIII §6.2), and U(g_K) is dense in Û(g_K), which acts through the same finite-dimensional quotient. Apply the exact functor of §3.7 to 0 → Ãnn(W)M → M → M_W → 0: M_W is a finite sum of copies of W, hence S₀-torsion-free with S₀ acting invertibly, so M_W ≅ Û ⊗ M_W by §3.8 (P) with n = 0; for ramified K, (P) is applied over ℚ_p through §3.6. Maximality of M̂_W gives Ânn(W)M̂ ⊆ Û ⊗ Ãnn(W)M, and Û·Ãnn(W) ⊆ Ânn(W) gives the reverse inclusion.

*Needs:* §§3.6, 3.7, 3.8, 3.9; LieHighestWeight Layer 5.

### Examples

- For G = 1 + pℤ_p ≅ ℤ_p and R = ℤ_p, `Q_{gr p}(ℤ_p[[b]])` ≅ ℚ_p⟨u⟩ with b ↦ exp(pu) − 1 (§3.4): the microlocalisation is the Tate algebra of the disc |b| ≤ |p|, and `D_{1/p}(ℤ_p, ℚ_p)` ≅ ℚ_p⟨u⟩ with u = log(1 + T)/p (§3.5).
- Lazard's original form of §3.4: Û(h) is the saturation of the valued group ring R[G] (Ardakov–Wadsley 2013, Remark 10.5(a)).
- For G = G₁ ⊂ SL₂(ℤ_p) (p odd), the explicit microlocalisation is F ↦ exp(pf) − 1, H ↦ exp(ph) − 1, E ↦ exp(pe) − 1 (Fu, after Lemma 5.6, p. 19); the finite-dimensional ℚ_p[[G₁]]-modules are semisimple and Sym^k(ℚ_p²) is a simple Lie module (§3.8).
- For M = K[[G]], §3.10 gives K[[G]]/Ãnn(W) ≅ End_K(W), the identity used in Fu (32) for W = W_k.

### Dependencies

Within this roadmap: Layers 0–2. On other roadmaps and the libraries: NoncommutativeAndEquivariantIwasawa §§0.3, 0.5, 0.7, 0.8; PadicLocalLanglandsForGL2Qp §0.1 (faithful flatness; gap:radius-algebras); LieHighestWeight Layers 3 and 5; Mathlib `OreLocalization`, `OreLocalization.OreSet`, `IsRingFiltration`, `Module.Flat`, `NormedSpace.exp`, `Algebra.TensorProduct.rid`, `LieModule`, `IsSemisimpleModule`, `TensorProduct`; Tau Ceti `TauCeti.completedGroupAlgebra`.

## Layer 4: Infinitesimal characters and injectivity of central specialisation

The endpoint of the roadmap. Ardakov–Wadsley's faithfulness of affinoid Verma modules gives Fu's injectivity theorem for every λ ∈ ℤ_p^m after a finite extension of coefficients, followed by descent (§§4.12–4.14). Fu's own route, for induced λ, passes through distributions: density of eigenfunctions in C(G, ℚ_p), the projective limit over the Banach steps, a domain property of central quotients at the radii r_n and a crossed-product grade argument (§§4.3–4.11). The domain property at the radii r_n rests on a separatedness condition that the sources do not establish (§4.7 (iii)); the targets of the direct route carry it as an explicit hypothesis, and the end theorem does not use it.

### 4.1 Central specialisations of distribution and enveloping algebras

Let 𝔾 be a connected split reductive group over ℚ_p with Lie algebra g, G a compact open subgroup of 𝔾(ℚ_p), Z(g) the centre of U(g), K/ℚ_p finite and λ : Z(g) → K a character; for generators z₁, …, z_n of the polynomial ring Z(g) (LieHighestWeight Layer 7), ker λ is generated by z₁ − λ(z₁), …, z_n − λ(z_n). Define D(G, K)_λ := D(G, K) `⊗_{Z(g),λ}` K = D(G, K)/Σ_i D(G, K)(z_i − λ(z_i)); the eigenspace C^la(G, K)[λ] of locally analytic functions f with zf = λ(z)f for all z ∈ Z(g), Z(g) acting through §1.3; D^λ_r(G, K) := D_r(G, K)/D_r(G, K)·ker λ; U^λ_r(g) := U_r(g)/U_r(g)·ker λ; and Û(g)_λ := Û(g_K)/Û(g_K)·ker λ (Fu, §5, the definitions before Theorem 5.2, p. 16, and of U^λ_r(g), D^λ_r(G, ℚ_p), p. 17; §3, the Casimirs Δ_i and the quotients, pp. 7–8).

- The ideal Σ D(G, K)(z_i − λ(z_i)) is a closed two-sided ideal: the z_i − λ(z_i) are central (§1.3), so the left ideal they generate is two-sided, and finitely generated left ideals of a Fréchet–Stein algebra are closed. Hence D(G, K)_λ is a Fréchet–Stein algebra and a coadmissible D(G, K)-module (PadicLocalLanglandsForGL2Qp §0.1, gap:frechet-stein-general; Schneider–Teitelbaum 2003, Proposition 3.7 and the remark before it, p. 11).
- C^la(G, K)[λ] is the joint kernel of the continuous operators z_i − λ(z_i), hence a closed G-stable subspace of the locally analytic functions, of compact type (LocallyAnalyticDistributions §0.2, extensions and subspaces of spaces of compact type).
- The natural maps D(G, K)_λ → D^λ_r(G, K), U^λ_r(g) → D^λ_r(G, K) and, for G uniform, `D^λ_{1/p}(G, K)` ≅ Û(g_R)_λ (§3.5) are compatible.
- For 𝔾 = SL₂^m, Z(g) = K[Δ₁, …, Δ_m] with Δ_i = ½h_i² − h_i + 2e_if_i, Δ_i = 4·`TauCeti.casimirElement` in the i-th factor (Conventions, item 6), centrality being `TauCeti.casimirElement_mem_center`; λ is determined by (λ(Δ_i))_i ∈ K^m.

*Needs:* §§1.3, 2.1, 2.2, 3.5; PadicLocalLanglandsForGL2Qp §0.1 (gap:frechet-stein-general); LocallyAnalyticDistributions §0.2; LieHighestWeight Layer 7; Tau Ceti `TauCeti.casimirElement`, `TauCeti.casimirElement_mem_center`.

**Checks.**

- Δ acts on Sym^k(K²) by ½k(k + 2): on the highest weight vector x^k, h acts by k and e by 0, so Δx^k = (½k² − k + 2k)x^k; for k = 2 the scalar is 4. Hence W_k = Sym^k(K²) is a quotient of D(G₁, K)_λ for λ = ½k(k + 2).
- For λ(Δ) = 0 the trivial representation K is a quotient of D(G₁, K)_0; for G finite, where g = 0 and Z(g) = K, the quotient is D(G, K) itself.
- For sl₂ over a field of characteristic zero, Δ = 4·`TauCeti.casimirElement`: with κ(h, h) = 8 and κ(e, f) = 4, the Killing-dual basis of (h, e, f) is (h/8, f/4, e/4). Using the Killing-form Casimir itself as the generator would rescale every parameter by 1/4.
- For the first congruence subgroup (p odd), r = `p^{−2/3}` and λ(Δ) = `p^{−1}`: ‖log(1 + H)‖_r = `p^{−2/3}`, so ‖h‖_r = `p^{1/3}` and ‖Δ‖_r ≤ `p^{2/3}` < p = |λ|; Δ − λ = −λ(1 − `λ^{−1}Δ`) is a unit of D_r and D^λ_r(G₁, ℚ_p) = 0. Central quotients at non-integral parameters can vanish.

### 4.2 Induced infinitesimal characters

In the setting of §4.1, fix a Borel pair (𝔹, 𝕋) of 𝔾 with T = 𝕋(ℚ_p) ∩ G and B = 𝔹(ℚ_p) ∩ G = TN, and a triangular decomposition g₀ = n̄₀ ⊕ t₀ ⊕ n₀; let HC : Z(g) → U(t) be the Harish-Chandra homomorphism for this decomposition (LieHighestWeight Layer 7). A locally analytic character χ : T → 1 + pℤ_p has a derivative dχ : U(t) → ℚ_p. Define λ : Z(g) → ℚ_p to be induced if λ = dχ ∘ HC for some such χ (Fu, §5, the Harish-Chandra homomorphism (24) and the definition of induced characters, p. 16).

- For 𝔾 = SL₂ and G = G₁, T ∩ G₁ = {diag(t, t⁻¹) : t ∈ 1 + pℤ_p} ≅ ℤ_p, every continuous character to 1 + pℤ_p is t ↦ t^c with c ∈ ℤ_p, and dχ(h) = c.
- With Δ = ½h² + h + 2fe, HC(Δ) = ½h² + h (½h² − h for the opposite Borel), so the character t ↦ t^c gives λ(Δ) = ½c² ± c and 2λ(Δ) + 1 = (c ± 1)²: λ is induced iff 2λ(Δ) + 1 is the square of an element of ℤ_p. The criterion does not depend on the choice of n versus n̄.
- For G = G₁^m, λ is induced iff 2λ_i + 1 is a square in ℤ_p for every i.
- Every induced λ has λ(Δ) ∈ ℤ_p, so v_p(λ₀) ≥ 2 in Fu's normalisation λ₀ = −p²λ; the converse fails (Source corrections, item 6).

*Needs:* §§0.3, 4.1; LieHighestWeight Layer 7.

**Checks.**

- λ(Δ) = ½k(k + 2) is induced for every k ∈ ℕ, by χ(t) = t^k: 2λ + 1 = (k + 1)².
- λ(Δ) = 0 is induced, by the trivial character (c = 0).
- At p = 3, λ(Δ) = 1 is not induced: 2λ + 1 = 3 has odd valuation, so it is not a square in ℚ₃, although λ ∈ ℤ₃. At p = 5, λ(Δ) = 1 is not induced either, since 3 is not a square modulo 5.
- The same parameter can be induced at one prime and not at another, and induced parameters need not be of the form ½k(k + 2): λ(Δ) = 3 is induced at p = 3, since 2λ + 1 = 7 ≡ 1 mod 3 is the square of some s ∈ ℤ₃ and c = s − 1 is not an integer, but it is not induced at p = 7, where 2λ + 1 = 7 has valuation 1. A criterion through the valuation of λ₀ alone sees no difference between these two cases.

### 4.3 Strong duality after infinitesimal specialisation

In the setting of §4.1, prove that the pairing between D(G, K) and the locally analytic functions induces a topological isomorphism of Fréchet spaces D(G, K)_λ ≅ C^la(G, K)[λ]′_b; equivalently, the annihilator of C^la(G, K)[λ] in D(G, K) is the closed ideal D(G, K)·ker λ (Fu, Theorem 5.2, first assertion, and its proof, equations (25)–(26), p. 16; Schneider–Teitelbaum 2002, Proposition 3.7, p. 16).

*Proof sketch.* The z_i − λ(z_i) act by continuous G-equivariant endomorphisms (§1.3), giving the strict left exact sequence 0 → C^la(G, K)[λ] → C^la(G, K) → C^la(G, K)^n, f ↦ ((z_i − λ(z_i))f)_i. For spaces of compact type the strong dual is exact on strict sequences, and the closed subspace has dual the quotient of D(G, K) by its annihilator (LocallyAnalyticDistributions §§0.2–0.3, with Hahn–Banach over the spherically complete K). The annihilator is the closure of the image of the transposed map D(G, K)^n → D(G, K), (μ_i) ↦ Σ μ_i(z_i − λ(z_i)), up to the antipode, which preserves Z(g); that image is the finitely generated ideal D(G, K)·ker λ, which is closed (§4.1). Fu obtains the same identification from Schneider–Teitelbaum 2003, Theorem 6.3, which PadicLocalLanglandsForGL2Qp §0.1 supplies.

*Needs:* §§1.3, 4.1; LocallyAnalyticDistributions §0.2 (Hahn–Banach, extensions of compact-type spaces) and §0.3 (strong duality for analytic compact-type spaces); PadicLocalLanglandsForGL2Qp §0.1 (D(G, K) as a strong dual; gap:frechet-stein-general).

### 4.4 The locally analytic principal series and a nowhere-vanishing eigenfunction

In the setting of §4.2, for a locally analytic character χ : T → 1 + pℤ_p define Ind(χ) := {f ∈ C^la(G, ℚ_p) : f(gtn) = χ(t)f(g) for g ∈ G, t ∈ T, n ∈ N}, a closed G-stable subspace (G acting by left translation) (Fu, §5, the definition of Ind(χ), p. 16, and the proof of Theorem 5.2, second part, p. 17).

- Z(g) acts on Ind(χ) by the induced character λ = dχ ∘ HC, so Ind(χ) ⊆ C^la(G, ℚ_p)[λ]: in the triangular PBW decomposition z = HC(z) + (terms ending in n), right N-invariance kills the second part and right T-equivariance makes U(t) act through dχ.
- X = G/B is a compact ℚ_p-analytic manifold and G → X has locally analytic sections over a finite disjoint open cover of X (LocallyAnalyticDistributions §0.3); restriction along such a section is a topological isomorphism Ind(χ) ≅ C^la(X, ℚ_p).
- There is f₀ ∈ Ind(χ) with f₀(g) ∈ 1 + pℤ_p for every g ∈ G: take f₀ equal to 1 on the image of the section and extend by f₀(s(x)tn) = χ(t).
- For every locally constant φ on G, f₀·φ ∈ C^la(G, ℚ_p)[λ], because Z(g) acts by differential operators, which commute with multiplication by φ on each open set where φ is constant.

*Needs:* §§4.1, 4.2; LocallyAnalyticDistributions §0.3 (charts, analytic pullback and multiplication); Mathlib `LocallyConstant`.

**Checks.**

- For χ = 1, Ind(χ) contains the constant function 1, f₀ = 1, Ind(χ) = C^la(G/B, ℚ_p), and λ = HC*(0) is the infinitesimal character of the trivial representation.
- For G = G₁ ⊂ SL₂(ℤ_p) and χ(t) = t^c, f₀(diag(t, t⁻¹)) = t^c on T ∩ G₁; for example f₀(diag(1 + p, (1 + p)⁻¹)) = (1 + p)^c.
- f₀ takes values in 1 + pℤ_p, so |f₀| = 1 everywhere and f₀ is a unit of C(G, ℚ_p); a section-free construction that merely asked for f₀ ≢ 0 would not give this.
- For χ ≠ 1 the constant function 1 is not in Ind(χ): 1(gt) = 1 ≠ χ(t) for any t ∈ T with χ(t) ≠ 1.

### 4.5 Density of eigenfunctions and injectivity into D(G, ℚ_p)_λ

Let λ be an induced infinitesimal character (§4.2) for G as in §4.1. Prove that C^la(G, ℚ_p)[λ] is dense in C(G, ℚ_p) for the supremum norm, and consequently that the composite ℚ_p[[G]] → D(G, ℚ_p) → D(G, ℚ_p)_λ is injective (Fu, Theorem 5.2, second assertion, and its proof, pp. 16–17). For non-induced integral λ injectivity is §4.14.

*Proof sketch.* f₀·C^sm(G, ℚ_p) ⊆ C^la(G, ℚ_p)[λ] (§4.4); f₀ is a unit of C(G, ℚ_p) and the locally constant functions are dense, so f₀·C^sm is dense. ℚ_p[[G]] is the continuous dual of C(G, ℚ_p) (PadicMeasuresIwasawaAlgebras Layer 0 and §1.7), and a measure whose image in D(G, ℚ_p)_λ = C^la[λ]′_b (§4.3) vanishes kills a dense subspace, hence is 0.

*Needs:* §§4.3, 4.4; PadicMeasuresIwasawaAlgebras Layer 0 and §1.7; PadicLocalLanglandsForGL2Qp §0.1 (the map ℚ_p[[G]] → D(G, ℚ_p)); Mathlib `ContinuousMap`, `LocallyConstant`.

### 4.6 Central specialisation commutes with the Banach steps

In the setting of §4.1 with G = G₁^m (p odd) and r_n = `p^{−1/p^n}`, prove that the natural map D(G, ℚ_p)_λ → lim_n `D^λ_{r_n}(G, ℚ_p)` is an isomorphism of Fréchet algebras (Fu, Proposition 5.5 and its proof, with the estimate preceding (29), pp. 18–19; Schneider–Teitelbaum 2003, Proposition 3.7 and its proof, pp. 11–12). The isomorphism is not formal: tensor products do not commute with inverse limits in general.

*Proof sketch.* I = D(G, ℚ_p)·ker λ is a closed two-sided ideal (§4.1), so the quotient theorem for Fréchet–Stein algebras gives D/I ≅ lim_n `D_{r_n}/D_{r_n}I`, and `D_{r_n}I` = `D_{r_n}·ker` λ because ker λ is generated by central elements; the r_n are cofinal in p^ℚ ∩ (1/p, 1). Fu's proof dualises instead: D_λ ≅ C^la[λ]′_b (§4.3) is the limit of the duals of the Banach spaces `C^{n,an}(G, ℚ_p)[λ]`, and the translation estimate ‖g − 1‖ ≤ 1/p on `C^{n,an}(G, ℚ_p)` for g ∈ `G^{p^{n+1}}` gives maps `D_{r_{n+1}}` → `C^{n,an}(G, ℚ_p)′_b`; both routes give the same map on Dirac distributions.

*Needs:* §§4.1, 4.3; PadicLocalLanglandsForGL2Qp §0.1 (gap:frechet-stein-general, gap:radius-algebras).

### 4.7 Central quotients D^λ_r(G₁^m, ℚ_p) are domains for integral λ

Let p be odd, G = G₁^m, λ ∈ ℤ_p^m and 1/p < r < 1. Put Δ′_i = p²Δ_i, written in the coordinates F_i, H_i, E_i of §0.3 through pf_i = log(1 + F_i), ph_i = log(1 + H_i), pe_i = log(1 + E_i). Prove:

- (i) For 1/p < r′ < `p^{−1/2}`, the principal symbol of Δ′_i − p²λ_i for `‖·‖_{r′}` is ½H_i² + 2E_iF_i, and `gr_{r′}` `D_{r′}(G, ℚ_p)/(Δ′_i − p²λ_i)_i` ≅ 𝔽_p[ε, ε⁻¹][F_i, H_i, E_i]/(½H_i² + 2E_iF_i)_i, an integral domain.
- (ii) Consequently D^λ_r(G, ℚ_p) is an integral domain for every 1/p < r < `p^{−1/2}`.
- (iii) For `p^{−1/2}` ≤ r < 1, D^λ_r(G, ℚ_p) is an integral domain provided the filtration induced by `‖·‖_{r′}` on D_r/D_r·ker λ is separated for some r′ ∈ (1/p, `p^{−1/2}`), that is, D_r ∩ `D_{r′}·ker` λ = D_r·ker λ inside `D_{r′}`. For p ≥ 5 the radii `p^{−1/2}` ≤ r < `p^{−1/(p−1)}` are covered unconditionally by §4.8.
- (iv) Integrality of λ is necessary: for r = `p^{−2/3}` and λ(Δ) = `p^{−1}`, D^λ_r(G₁, ℚ_p) = 0 (§4.1, last check).

(Fu, Theorem 5.7 and its proof, p. 20, with Lemma 2.2, p. 6, and Lemma 3.3, p. 9; Source corrections, items 4 and 5.)

*Proof sketch.* `gr_{r′}` `D_{r′}(G₁, ℚ_p)` ≅ 𝔽_p[ε, ε⁻¹][F, H, E] (PadicLocalLanglandsForGL2Qp §0.1, gap:radius-algebras), and for r′ < `p^{−1/2}` ≤ `p^{−1/(p−1)}` the logarithms log(1 + X) have principal symbol X, since |1/k| r′^k < r′ for every k ≥ 2. Then p²Δ − p²λ = ½(log(1 + H))² − p log(1 + H) + 2 log(1 + E) log(1 + F) − p²λ has symbol ½H² + 2EF: the degree-two terms have norm r′², while ‖p log(1 + H)‖ = `p^{−1}r′` < r′² and |p²λ| ≤ `p^{−2}` < r′² because r′ > 1/p. ½H² + 2EF is a nondegenerate ternary quadratic form over 𝔽_p (p odd), hence irreducible over the algebraic closure, so the quotient of the polynomial ring is a domain, also for products (Fu, Lemma 3.3, third part). Lemma 2.2 of Fu transfers the domain property from the graded ring to D^λ_r when the induced filtration is separated; for r′ = r < `p^{−1/2}` this holds because the ideal is closed (finitely generated in a noetherian Banach algebra). At the radius r_n itself the direct graded argument fails: log(1 + X) has principal symbol `p^{−n}X^{p^n}`, so the symbol of p²Δ − p²λ for `‖·‖_{r_n}` is `p^{−2n}(½H² + 2EF)^{p^n}` (Frobenius is additive and fixes 𝔽_p), and gr `D^λ_{r_n}` has nilpotents; this is why the weaker norm `‖·‖_{r′}` is used, and why separatedness is needed.

*Needs:* §§0.3, 4.1, 4.8 (for the unconditional range in (iii)); PadicLocalLanglandsForGL2Qp §0.1 (gap:radius-algebras); Mathlib `IsDomain`.

### 4.8 Small radii: logarithmic coordinates and central quotients

Let p be odd, G = G₁^m and `p^{−1}` ≤ r < `p^{−1/(p−1)}`, any real radius, and put ρ = pr. Prove: (i) the assignment e_i, f_i, h_i ↦ `p^{−1}` log(1 + E_i), `p^{−1}` log(1 + F_i), `p^{−1}` log(1 + H_i) extends to an isometric isomorphism of Banach algebras from the completion B_ρ of U(sl₂(ℤ_p)^m) ⊗ ℚ_p for the weighted PBW norm |Σ c_α x^α|_ρ = sup |c_α| `ρ^{|α|}` onto D_r(G, ℚ_p), with inverse given on group coordinates by b_i ↦ exp(p x_i) − 1; (ii) for λ ∈ ℤ_p^m the ideal D_r·ker λ is closed and D^λ_r(G, ℚ_p) is a nonzero integral domain with a normal form: every element is uniquely Σ_α d_α Π_i `e_i^{a_i}` `f_i^{b_i}` `h_i^{c_i}` with c_i ∈ {0, 1} and |d_α| `ρ^{|α|}` → 0, and the quotient norm is attained on normal forms. This combines Fu's equations (27) and (30), pp. 17 and 20, and Lemma 3.3, p. 9, with the convergence of log and exp on the stated range; no rationality of log_p r is needed, and the radii r_n ≥ `p^{−1/p}` > `p^{−1/(p−1)}` are not covered.

*Proof sketch.* For r < `p^{−1/(p−1)}`, ‖log(1 + b) − b‖_r < ‖b‖_r and exp(px) − 1 converges, so log(1 + b_i) and b_i both have norm r and the coordinate changes are mutually inverse isometries; the normalisation ρ = pr accounts for x = `p^{−1}` log(1 + b). Normal form: divide by Δ − λ in B_ρ using h² = 2(Δ − λ) + 2λ + 2h − 4ef; for |λ| ≤ 1 ≤ ρ² no reduction step increases the weighted norm, so division has bounded quotient and remainder, the ideal is closed and the normal forms are a topological basis (Fu, Lemma 3.3, first part, for the algebraic basis). Domain: for ρ > 1 the graded ring for |·|_ρ is, after rescaling, 𝔽_p[ε, ε⁻¹][e, f, h]/(½h² + 2ef), a domain, and the closed ideal makes the induced filtration separated; at ρ = 1 (r = 1/p) the quotient is Û(sl₂(ℤ_p)^m)_λ, a domain by Fu, Lemma 3.3, last part.

*Needs:* §§2.1, 4.1; PadicLocalLanglandsForGL2Qp §0.1 (gap:radius-algebras); Schneider–Teitelbaum 2003, Theorem 4.5 (multiplicativity of ‖·‖_r, through the same gap).

### 4.9 Ext and grade over a finite crossed product

Let T = R ∗ H be a crossed product of a ring R by a finite group H and M a right T-module. Prove that Ext^i_T(M, T) ≅ Ext^i_R(M, R) as left R-modules for all i ≥ 0, with the left-module version by passing to opposite rings. Consequently, if R and T are noetherian, the grade j_T(M) = inf{i : Ext^i_T(M, T) ≠ 0} equals j_R(M), and the injective dimensions of R and T agree (Ardakov–Brown, §5.4, Lemma and its proof, and the Corollary, pp. 16–17; Fu, §5, proof of Theorem 5.1, p. 21).

*Proof sketch.* T is free of finite rank over R, so projective T-resolutions restrict to projective R-resolutions, and it suffices that T ≅ Hom_R(T_R, R_R) as right T-modules. The isomorphism is α(f) = `Σ_{g∈H}` f(ḡ) ḡ⁻¹, with inverse β(Σ r_g ḡ)(h̄) = `r_{h⁻¹}`: the coefficient-of-identity Frobenius pairing.

*Needs:* §1.2 (the crossed products to which it applies); Mathlib `IsNoetherianRing` and the categorical `Ext` of module categories (as used in NoncommutativeAndEquivariantIwasawa §F.1).

### 4.10 Normal form of `U^λ_{r_n}(g)` and its injection into Û(g)_λ

Let p be odd, G = G₁^m, λ ∈ ℤ_p^m and r = r_n with n ≥ 1. Prove: `U_{r_n}(g)` is the weighted completion of U(sl₂(ℤ_p)^m) ⊗ ℚ_p for the PBW weight p^n on each of e_i, f_i, h_i; every element of `U^λ_{r_n}(g)` is uniquely a convergent sum Σ_α d_α Π_i `e_i^{a_i}` `f_i^{b_i}` `h_i^{c_i}` with c_i ∈ {0, 1} and |d_α| `p^{n|α|}` → 0; `U^λ_{r_n}(g)` is an integral domain; and the natural map `U^λ_{r_n}(g)` → Û(g)_λ is injective, Û(g)_λ having the same normal forms with weight 1 (Fu, proof of Theorem 5.1, the displayed description of U^λ_r(g) and the injection into Û(g) `⊗_{Z(g),λ}` ℚ_p, p. 21; Lemma 3.3, pp. 9–10). Separatedness of the quotient topology and the injection are proved together from the normal form.

*Proof sketch.* Frommer's description (§2.3) with x_i = log(g_i) ∈ {ph_i, pe_i, pf_i} and `‖x_i‖_{r_n}` = `p^{n−1}` (§2.4) gives the weighted completion with weight p^n. Bounded division by Δ_i − λ_i, replacing h_i² by 2(Δ_i − λ_i) + 2λ_i + 2h_i − 4e_if_i, does not increase the weighted norm when ρ = p^n ≥ 1 and |λ_i| ≤ 1, so normal forms are unique with remainders bounded by the norm and the ideal is closed. The graded ring for the weighted norm is 𝔽_p[ε, ε⁻¹][e_i, f_i, h_i]/(½h_i² + 2e_if_i), a domain. The inclusion of the weight-p^n completion into the weight-1 completion Û(g) sends normal forms to normal forms with the same coefficients.

*Needs:* §§2.1, 2.3, 2.4, 4.1.

### 4.11 Fu's direct route for induced characters

Let p be odd, G = G₁^m and λ an induced infinitesimal character. Prove: (i) if 0 ≠ δ ∈ ℚ_p[[G]], n ≥ 1, the image of δ in `D^λ_{r_n}(G, ℚ_p)` is nonzero, and `D^λ_{r_n}(G, ℚ_p)` is an integral domain, then there is δ′ ∈ `D^λ_{r_n}(G, ℚ_p)` with 0 ≠ δδ′ ∈ `U^λ_{r_n}(g)`; (ii) if `D^λ_{r_n}(G, ℚ_p)` is an integral domain for every n ≥ 1 (for instance under the separatedness hypothesis of §4.7 (iii)), the composite ℚ_p[[G]] → `Û(g_{ℚ_p})` → Û(g)_λ of the microlocalisation (§3.4) and the central specialisation is injective (Fu, Theorem 5.1 and its proof, pp. 16 and 21; Ardakov–Wadsley 2013, §2.5, Definitions and Proposition, pp. 9–10). The conclusion of (ii) holds without the domain hypothesis by §4.14; (ii) records that the direct route reaches it once the domain property at the radii r_n is known.

*Proof sketch.* (i): `D^λ_{r_n}` is noetherian and Auslander–Gorenstein (its graded ring is a commutative hypersurface; Ardakov–Wadsley 2013, Proposition 2.5(b)), so the torsion module `D^λ_{r_n}/δD^λ_{r_n}` has positive grade (Proposition 2.5(a)). `D^λ_{r_n}` = `U^λ_{r_n}` ∗ (`G/G^{p^n}`) (§2.4), so its grade over `U^λ_{r_n}` is the same (§4.9); if `U^λ_{r_n}` ∩ `δD^λ_{r_n}` were 0, `U^λ_{r_n}` would embed in `D^λ_{r_n}/δD^λ_{r_n}`, contradicting `j(U^λ_{r_n})` = 0. (ii): the image of δ in D(G, ℚ_p)_λ is nonzero (§4.5), hence nonzero in some `D^λ_{r_n}` (§4.6); apply (i); `U^λ_{r_n}` → Û(g)_λ is injective (§4.10) and Û(g) = `D_{1/p}(G, ℚ_p)` (§3.5), so the image of δδ′, hence of δ, in Û(g)_λ is nonzero.

*Needs:* §§2.4, 3.4, 3.5, 4.5, 4.6, 4.9, 4.10; §4.7 (iii) for an instance of the hypothesis of (ii).

### 4.12 Integral Casimir parameters come from integral highest weights after a finite extension

Let p be odd and λ = (λ₁, …, λ_m) ∈ ℤ_p^m. Let K = ℚ_p(√(1 + 2λ₁), …, √(1 + 2λ_m)), a finite extension of degree at most 2^m, with ring of integers R. Prove that a_i := −1 + √(1 + 2λ_i) ∈ R satisfies a_i(a_i + 2)/2 = λ_i, so that the R-linear character a : t₀ = ⊕ ℤ_p h_i → R, h_i ↦ a_i, has central character χ_a(Δ_i) = λ_i on the affinoid Verma module of highest weight a. The extension K is in general ramified or nontrivial even when λ_i ∈ ℤ_p; λ is induced over ℚ_p (§4.2) exactly when every √(1 + 2λ_i) lies in ℤ_p (Fu, Theorem 1.5 and the sentence following it, p. 4; Ardakov–Wadsley 2014, §4.5, the R-linear character and the affinoid Verma module, and §4.6, the central character χ_λ, pp. 10–11).

*Proof sketch.* a_i is a root of the monic X² + 2X − 2λ_i ∈ ℤ_p[X], hence integral over ℤ_p, and a_i(a_i + 2)/2 = ((a_i + 1)² − 1)/2 = λ_i. On a highest weight vector v (e_iv = 0, h_iv = a_iv), Δ_iv = (½a_i² − a_i + 2e_if_i)v = (½a_i² − a_i + 2a_i)v = ½a_i(a_i + 2)v, using e_if_i = f_ie_i + h_i.

*Needs:* §§4.1, 4.2; Mathlib `PadicInt`.

### 4.13 Affinoid Verma modules are faithful over Iwasawa algebras

Let p be odd, K a complete discretely valued extension of ℚ_p with ring of integers R, 𝔾 a connected simply connected split semisimple group scheme over ℤ_p with Lie algebra 𝔤, p a very good prime for 𝔾, and G a uniform group with p^n 𝔤 = R ⊗ (1/p) L_G, for example the congruence kernel `ker(𝔾(ℤ_p) → 𝔾(ℤ/p^{n+1}))`. For an R-linear character λ : p^n t → R, let V̂^λ = `Û(𝔤)_{n,K}` `⊗_{Û(b⁺)_{n,K}}` K_λ be the affinoid Verma module. Prove: (i) its annihilator in `Û(𝔤)_{n,K}` is the two-sided ideal generated by ker(χ_λ : Z(𝔤_K) → K); (ii) V̂^λ is faithful as a K[[G]]-module through §3.4 (after base change, §3.6). Hence K[[G]] → `Û(𝔤)_{n,K}/Û(𝔤)_{n,K}·ker` χ_λ is injective. For 𝔾 = SL₂^m over ℤ_p and G = G₁^m one has n = 0 (§0.3), and every odd p is very good for type A₁ (Ardakov–Wadsley 2014, Theorem 4.4, Lemma 4.5, Lemma and Theorem 4.6, pp. 10–11; §§5.1–5.4, Theorem 5.4 and its proof, pp. 13–16).

*Proof sketch.* (i): the characteristic variety of V̂^λ is (b⁺_k)^⊥; the graded ideal of ker χ_λ·Û is `S(𝔤_k)^{G_k}_+` · S(𝔤_k), prime, with zero set the nilpotent cone; the annihilator is G(R)-stable, so its characteristic variety contains G·(b⁺_k)^⊥, which is dense in the nilpotent cone, and primality forces equality of the graded ideals. (ii): V̂^λ is free of rank one over Û(p^n n)_K; the action of R[[T]] on U(n_K)v is faithful (Ardakov–Wadsley 2014, Proposition 4.7), so V̂^λ is faithful over R[[B]] by the general faithfulness theorem 5.3, then over R[[B⁺]] by the Cartan involution (Proposition 4.8), and over K[[G]] by Theorem 5.3 again.

*Needs:* §§0.3, 2.1, 3.4, 3.6; LieHighestWeight Layers 3 and 7 (Verma modules, the centre and the Harish-Chandra homomorphism).

### 4.14 Fu's injectivity theorem

Let p be odd, G = G₁^m = Π (I₂ + pM₂(ℤ_p)) ∩ SL₂(ℤ_p) and g = sl₂(ℚ_p)^m with Casimirs Δ₁, …, Δ_m. Prove that for every λ ∈ ℤ_p^m the composite ℚ_p[[G]] → `Û(g_{ℤ_p})_{ℚ_p}` → Û(g)_λ = `Û(g_{ℤ_p})_{ℚ_p}/(Δ_i − λ_i)_i` of the microlocalisation (§3.4) and the central specialisation (§4.1) is injective. Equivalently, the image in Û(g) of every nonzero element of ℚ_p[[G]] is generic: it stays nonzero in Û(g)_λ for all λ ∈ ℤ_p^m (Fu, Theorem 1.5 and the following paragraph, pp. 3–4; Ardakov–Wadsley 2014, Theorems 4.6 and 5.4, pp. 11 and 16). λ is arbitrary in ℤ_p^m, including parameters that are not induced over ℚ_p.

*Proof sketch.* Choose K and integral a_i with a_i(a_i + 2)/2 = λ_i (§4.12). By §4.13 with n = 0, K[[G]] → Û(g_R)_K/(Δ_i − λ_i) is injective. Descent: K[[G]] = K `⊗_{ℚ_p}` ℚ_p[[G]], Û(g_R)_K = K `⊗_{ℚ_p}` `Û(g_{ℤ_p})_{ℚ_p}` (§2.1), the quotient by the central ideal commutes with K ⊗ −, and the square formed by the two microlocalisation maps commutes (§3.6); K is faithfully flat over ℚ_p (`Module.FaithfullyFlat`), so the kernel of the ℚ_p-map is zero once its base change to K is. For induced λ, §4.11 gives a second proof once its domain hypothesis is available.

*Needs:* §§2.1, 3.4, 3.6, 4.1, 4.12, 4.13; Mathlib `Module.FaithfullyFlat`.

### Examples

- For m = 1 and λ = 0, ℚ_p[[G₁]] embeds into `Û(sl₂(ℤ_p))_{ℚ_p}/(Δ)`, the completion of the Casimir-zero quotient, although that quotient has dimension 2 in the sense of its characteristic variety against 3 for ℚ_p[[G₁]] (§4.14).
- At p = 3 and λ = 1, which is integral but not induced, §4.14 applies through K = ℚ₃(√3), which is ramified, with a = −1 + √3 ∈ ℤ₃[√3] (§4.12).
- For m = 1 and λ = λ_k = ½k(k + 2), induced by χ(t) = t^k, every nonzero δ ∈ ℚ_p[[G₁]] has nonzero image in `Û(g)_{λ_k}`, although its image in End(W_k) may vanish; for λ = λ_k and r < `p^{−1/2}`, `D^{λ_k}_r(G₁, ℚ_p)` is a domain (§4.7) that surjects onto End(W_k) for k ≥ 1, which is consistent because the kernel is a nonzero two-sided ideal.
- For λ = λ_k, W_k^* ⊗ W_k ⊆ C^la(G, K)[λ_k] (matrix coefficients, §5.2), and dually `D(G, K)_{λ_k}` and each `D^{λ_k}_{r_n}` surject onto End_K(W_k), compatibly in n (§§4.3, 4.6). For λ = 0 the locally constant functions lie in C^la[0], since f₀ = 1 (§4.5). For G₁ ⊂ SL₂(ℤ_p) and λ = k ∈ ℕ, V̂^k has the finite-dimensional quotient Sym^k but is itself infinite-dimensional and faithful over ℚ_p[[G₁]], whereas Sym^k is not faithful (§4.13).

### Dependencies

Within this roadmap: Layers 0–3. On other roadmaps and the libraries: PadicLocalLanglandsForGL2Qp §0.1 (gap:frechet-stein-general, gap:radius-algebras); PadicMeasuresIwasawaAlgebras Layer 0 and §1.7; LocallyAnalyticDistributions §§0.2, 0.3; LieHighestWeight Layers 3 and 7; Mathlib `IsDomain`, `IsNoetherianRing`, `Module.FaithfullyFlat`, `PadicInt`, `ContinuousMap`, `LocallyConstant`; Tau Ceti `TauCeti.casimirElement`, `TauCeti.casimirElement_mem_center`.

## Layer 5: Algebraic functions and the algebraic Peter–Weyl theorem

The last layer turns Iwasawa-module statements into multiplicities of algebraic representations. Schikhof duality (PadicLocalLanglandsForGL2Qp §0.1) identifies finitely generated K[[G]]-modules with admissible Banach representations, so W-quotients of an Iwasawa module are dual to W-isotypic vectors. For open subgroups of SL₂(ℤ_p) the algebraic functions give these explicitly: the degree-k graded piece is W_k ⊗ W_k^*, and K[[G]]/Ann(W_k) ≅ End_K(W_k).

### 5.1 Algebraic functions on an open subgroup of SL₂(ℤ_p)

Let G ⊆ SL₂(ℤ_p) be an open subgroup (for example G₁) and K/ℚ_p finite. Define the algebraic functions C^alg(G, K) as the image of the coordinate ring K[SL₂] = K[x, y, z, w]/(xw − yz − 1) (`MvPolynomial` modulo the determinant relation) under restriction to G, a matrix g with rows (x, y) and (z, w) being evaluated at its entries; define the degree filtration `C^alg_{≤n}` as the image of the polynomials of total degree ≤ n; and let G × G act by (g₁, g₂)·f(g) = f(g₁⁻¹ g g₂). For G = G₁^m use the tensor product of the factors (Fu, §6, the definition of C^alg(G, K) and its degree filtration, pp. 21–22).

- Restriction K[SL₂] → C(G, K) is injective, so C^alg(G, K) ≅ K[SL₂]: the kernel of evaluation on G of K[x, y, z, w] is (xw − yz − 1), because an open subgroup of SL₂(ℚ_p) is Zariski dense (it contains a neighbourhood of 1, on which an analytic chart shows that a regular function vanishing there is zero) and SL₂ is irreducible.
- C^alg(G, K) ⊆ C^la(G, K) ⊆ C(G, K), and each `C^alg_{≤n}` is stable under the two-sided action of G × G.
- dim_K `C^alg_{≤n}/C^alg_{≤n−1}` = C(n + 3, 3) − C(n + 1, 3) = (n + 1)²: the associated graded of the degree filtration is K[x, y, z, w]/(xw − yz), whose degree-n piece is the degree-n polynomials modulo (xw − yz) times the degree-(n − 2) polynomials.
- The identity C(n + 3, 3) − C(n + 1, 3) = (n + 1)² holds for every n ≥ 0, with C(n + 1, 3) = 0 for n ≤ 1.

*Needs:* §0.2; Mathlib `MvPolynomial`, `Matrix.SpecialLinearGroup`, `ContinuousMap`.

**Checks.**

- dim `C^alg_{≤0}` = 1: the constants.
- dim `C^alg_{≤1}/C^alg_{≤0}` = 4, spanned by the classes of x, y, z, w; no linear relation holds, since the relation has degree 2.
- dim `C^alg_{≤2}/C^alg_{≤1}` = 9 = C(5, 3) − C(3, 3) = 10 − 1, the relation xw − yz = 1 removing one quadric; a count that ignored the relation would give 10.
- For the finite subgroup {±I₂} ⊂ SL₂(ℤ_p), restriction of K[SL₂] is not injective (x − w vanishes on it); openness of G is needed.

### 5.2 The algebraic Peter–Weyl theorem on the first congruence subgroup

Let p be odd, G = G₁^m, k ∈ ℕ^m, W_k = ⊠_i `Sym^{k_i}(K²)` and K/ℚ_p finite. Prove: (i) W_k, restricted to any open subgroup of G, is absolutely irreducible and self-dual (W_k^* ≅ W_k), its differentiated action is the algebraic sl₂^m-action, and it is the Lie module 𝓛(W_k) of §3.9; (ii) for m = 1, `C^alg_{≤k}/C^alg_{≤k−1}` ≅ W_k ⊗ W_k^* as G × G-representations, and the W_k-isotypic algebraic vectors in C(G, K), for either the left or the right action, form a closed subspace isomorphic to W_k ⊗ W_k^*; for m ≥ 1 the same holds for the tensor products; (iii) through the Schikhof duality of PadicLocalLanglandsForGL2Qp §0.1, the maximal W_k-quotient of K[[G]] is `K[[G]]/Ann_{K[[G]]}(W_k)` ≅ End_K(W_k), so dim_K `Hom_{K[[G]]}(K[[G]], W_k)` = dim W_k = Π (k_i + 1) (Fu, §6, pp. 21–22, including (32); Ardakov–Wadsley 2013, §§11.2–11.3, Theorem (factorisation), pp. 80–81).

*Proof sketch.* (i): an open subgroup is Zariski dense in SL₂^m, so its invariant subspaces in the algebraic representation W_k are sl₂^m-stable, and W_k is irreducible under sl₂^m (LieHighestWeight Layer 0); self-duality is the invariant pairing on Sym^k; W_k is a Lie module because it is the restriction of an algebraic representation (§3.9; Ardakov–Wadsley 2013, §11.2 Theorem with trivial Artin factor). (ii): x^k, as a function of g with rows (x, y) and (z, w), is invariant under left translation by the lower unipotent subgroup (the first row of the lower unipotent matrix with entry a is (1, 0)) and under right translation by the upper unipotent subgroup (right multiplication by the upper unipotent matrix with entry a does not change the first column), with highest weight k on both sides, and generates a copy of W_k ⊗ W_k^* in degree k; the dimension count (k + 1)² of §5.1 gives equality, complete reducibility identifies the isotypic algebraic vectors, and finite-dimensional subspaces are closed. (iii): duality identifies the maximal W_k-quotient of K[[G]] with the dual of the W_k-isotypic part of C(G, K), which is W_k ⊗ W_k^*; alternatively (32) follows from §3.10 with M = K[[G]].

*Needs:* §§3.9, 3.10, 5.1; PadicLocalLanglandsForGL2Qp §0.1 (Schikhof duality; C(G, K) as the dual of K[[G]] through PadicMeasuresIwasawaAlgebras §1.7); LieHighestWeight Layers 0 and 5.

### Examples

- k = 0: the maximal trivial quotient of K[[G]] is K, through the augmentation, and End(W₀) = K.
- k = 1, m = 1: K[[G₁]]/Ann(K²) ≅ M₂(K), of dimension 4 = (1 + 1)², matching dim `C^alg_{≤1}/C^alg_{≤0}` = 4.
- For G = ℤ_p and E = C(ℤ_p, K) with the left regular action, the dual is K[[ℤ_p]], free of rank one; for G₁, the dual of K[[G₁]] as a module over itself is C(G₁, K), and W_k^* ≅ W_k is a finite-dimensional K[[G₁]]-module (Fu, §6, opening paragraphs, p. 21).

### Dependencies

Within this roadmap: Layers 0 and 3. On other roadmaps and the libraries: PadicLocalLanglandsForGL2Qp §0.1; PadicMeasuresIwasawaAlgebras §1.7; LieHighestWeight Layers 0 and 5; Mathlib `MvPolynomial`, `Matrix.SpecialLinearGroup`, `ContinuousMap`.

## Downstream consumers

- LocallyAnalyticRepresentationsOfLocalGroups: admissible locally analytic representations beyond the anti-equivalence of PadicLocalLanglandsForGL2Qp §0.1 import U(g) ⊂ D(G, K) and the centrality of Z(g) (Layer 1), the closures U_r(g), Frommer's theorem and the Arens–Michael envelope (Layer 2).
- Applications to the multiplicities of algebraic representations in Iwasawa modules and in completed cohomology (Fu, Theorems 1.2–1.4) import the isotypic comparison (§3.10), the injectivity theorem (§4.14) and the algebraic Peter–Weyl theorem (§5.2); growth estimates for quotients of Û(g) (Fu, §3) import Û(h)_K (§2.1).

## Worked examples

- **The one-dimensional case.** For G = 1 + pℤ_p ≅ ℤ_p (p odd) with b = (1 + p) − 1: L_G = ℤ_p·(1 + p) and `g_{ℤ_p}` = ℤ_p·u, u = log(1 + p)/p (§0.1); D_r(ℤ_p, K) is the ring of series in b convergent on |b| ≤ r; x = log(1 + b) has `‖x‖_{r_n}` = `p^{n−1}` (§2.4); U_r is all of D_r for r < `p^{−1/(p−1)}` and has index p at r₁ (§2.2); the microlocalisation of ℤ_p[[b]] is ℚ_p⟨u⟩ with b ↦ exp(pu) − 1, which is `D_{1/p}` (§§3.4–3.5); the module of functions on G/G^p microlocalises to ℚ_p (§3.7).
- **The first congruence subgroup.** For G₁ ⊂ SL₂(ℤ_p) (p odd): `(1/p)L_{G₁}` = sl₂(ℤ_p) (§0.3); Δ = ½h² − h + 2ef = 4·`TauCeti.casimirElement` is central in D(G₁, ℚ_p) (§1.3) and has norm 1 in `Û(sl₂(ℤ_p))_{ℚ_p}` (§2.1); gr_r D_r(G₁, ℚ_p) ≅ 𝔽_p[ε, ε⁻¹][F, H, E] for 1/p < r < 1 (PadicLocalLanglandsForGL2Qp §0.1, gap:radius-algebras); for r < `p^{−1/2}` and λ ∈ ℤ_p the central quotient has graded ring 𝔽_p[ε, ε⁻¹][F, H, E]/(½H² + 2EF) (§4.7), while at r = `p^{−2/3}` and λ = `p^{−1}` it is zero (§4.1); finite-dimensional ℚ_p[[G₁]]-modules are semisimple (§3.8); K[[G₁]]/Ann(Sym^k) ≅ `M_{k+1}(K)` (§5.2); and ℚ_p[[G₁]] → Û(sl₂)_λ is injective for every λ ∈ ℤ_p (§4.14), at p = 3 and λ = 1 through ℚ₃(√3).

## Source corrections

Each correction is stated at its locator; the targets above use the corrected statements.

1. Fu, §4, equation (16), p. 14 (arXiv v2). D_r(G, K), defined as the completion for ‖·‖_r, is described by the bounded condition sup_α |λ_α| `r^{|α|}` < ∞. The completion consists of the series with |λ_α| `r^{|α|}` → 0; the bounded condition describes the larger `D_{<r}(G, K)` of Schneider–Teitelbaum 2003, Lemma 4.8. For G = ℤ_p and r = `p^{−1/p}`, `λ_{pj}` = `p^{−j}` (zero otherwise) gives `|λ_{pj}|` `r^{pj}` = 1 for all j: bounded, not tending to zero. Nothing downstream uses the bounded description.
2. Fu, Theorem 4.2, p. 14. D_r(G, K) is stated to be noetherian for every 1/p ≤ r < 1. Schneider–Teitelbaum 2003, Theorem 4.5(ii) and Remark 4.6, prove noetherianity for r ∈ p^ℚ and for r = 1/p; multiplicativity and the domain property hold for every 1/p < r < 1. The statement lacks a proof at irrational radii, and nothing here needs them.
3. Fu, §4, equation (17), p. 14. The set ⋃_a (p^a + `m^{a+1}`) is formed in R[[G]] with R the integers of an arbitrary finite extension of ℚ_p. For ramified R, p ∈ m², so 0 = p − p ∈ p + m² and the set is not an Ore set of nonzerodivisors (§3.3, last check). Use R unramified, as in Ardakov–Wadsley 2013, §10.1, and extend coefficients by base change (§3.6).
4. Fu, Theorem 5.7, p. 20. D^λ_r(G, ℚ_p) is stated to be an integral domain for every λ and every 1/p < r < 1. For r = `p^{−2/3}` and λ(Δ) = `p^{−1}`, ‖Δ‖_r ≤ `p^{2/3}` < |λ| and D^λ_r = 0; the proof's own first branch, where the symbol is a unit, reaches this zero quotient. The integrality hypothesis v_p(λ₀) ≥ 2, that is λ(Δ) ∈ ℤ_p, is needed (§4.7).
5. Fu, proof of Theorem 5.7, p. 20, as used in the proof of Theorem 5.1, p. 21. The graded ring of D^λ_r for the weaker norm `‖·‖_{r′}` is identified through Lemma 2.2 with the quotient of the graded ring by the symbol of p²Δ + λ₀. This needs the filtration induced by `‖·‖_{r′}` on D_r/D_r(p²Δ + λ₀) to be separated, which is equivalent to D_r ∩ `D_{r′}(p²Δ + λ₀)` = D_r(p²Δ + λ₀); it holds for r < `p^{−1/2}` but is not established at the radii r_n of Theorem 5.1. D_r → `D_{r′}` is flat but not faithfully flat (for G = ℤ_p, T − t with r′ < |t| ≤ r becomes a unit in `D_{r′}`), so the condition does not follow formally. §4.7 (iii) and §4.11 carry it as a hypothesis; Theorem 1.5 itself follows from Ardakov–Wadsley 2014, as the paper notes (§4.14).
6. Fu, Remark 5.8, second bullet, pp. 20–21. λ is said to be induced iff v_p(λ₀) ≥ 2. Only the forward implication holds: λ is induced iff 2λ(Δ) + 1 is a square in ℤ_p (§4.2). At p = 3, λ(Δ) = 1 has v₃(λ₀) = 2 but 2λ + 1 = 3 is not a square in ℚ₃.
7. Ardakov–Wadsley 2014, §5.2, proof of the Lemma, p. 14 (arXiv v1; the published text prints the same condition). `D_{1/p}(G, K)` is described by finiteness of sup_α |λ_α| `p^{−|α|}`. As the completion for `‖·‖_{1/p}`, `D_{1/p}(G, K)` consists of the series with |λ_α| `p^{−|α|}` → 0, which is what matches the null sequences of Û(g)_K: under b_i ↦ exp(pu_i) − 1 ≡ pu_i, the bounded series with λ_α = `p^{−|α|}` at α = (n, 0, …, 0) would correspond to Σ u₁^n plus higher-order terms, which is not in Û(g)_K. The proof is unaffected because the comparison maps are isometric.
8. Boxer–Calegari–Gee–Pilloni, Definition 2.2.31, p. 24 (arXiv v1). For a left 𝒰(g)-module the transition is printed as `M_{r+1}` `⊗_{U(g)_{r+1}}` U(g)_r ≅ M_r, which needs a right module; for left modules it is U(g)_r `⊗_{U(g)_{r+1}}` `M_{r+1}` ≅ M_r, as in Schneider–Teitelbaum 2003, §3, p. 8 (§2.5).
9. Fu, §6, the paragraph identifying the degree-k graded piece with W_k ⊗ W_k^*, p. 22. The function x^k is said to be right invariant under a "lower upper triangular" nilpotent subgroup. It is right invariant under the upper triangular unipotent subgroup: for n with rows (1, a) and (0, 1), the (1, 1) entry of gn is g₁₁, while for n with rows (1, 0) and (a, 1) it is g₁₁ + a g₁₂ (§5.2).

## References

- **Fu.** Weibo Fu, *Sharp bounds for multiplicities of Bianchi modular forms*, Annals of Mathematics 200 (2024), no. 1, 123–152; [arXiv:2201.11190v2](https://arxiv.org/abs/2201.11190v2), whose numbering agrees with the published text; page numbers are those of the arXiv text.
- **Schneider–Teitelbaum 2003.** Peter Schneider and Jeremy Teitelbaum, *Algebras of p-adic distributions and admissible representations*, Inventiones Mathematicae 153 (2003), 145–196; [arXiv:math/0206056v1](https://arxiv.org/abs/math/0206056v1); page numbers are those of the arXiv text.
- **Schneider–Teitelbaum 2002.** Peter Schneider and Jeremy Teitelbaum, *Locally analytic distributions and p-adic representation theory, with applications to GL₂*, Journal of the American Mathematical Society 15 (2002), 443–468; [arXiv:math/9912073v1](https://arxiv.org/abs/math/9912073v1); page numbers are those of the arXiv text.
- **Schneider–Teitelbaum, Banach.** Peter Schneider and Jeremy Teitelbaum, *Banach space representations and Iwasawa theory*, Israel Journal of Mathematics 127 (2002), 359–380; [arXiv:math/0005066v1](https://arxiv.org/abs/math/0005066v1). Its Theorem 3.5 is supplied through PadicLocalLanglandsForGL2Qp §0.1.
- **Ardakov–Wadsley 2013.** Konstantin Ardakov and Simon Wadsley, *On irreducible representations of compact p-adic analytic groups*, Annals of Mathematics 178 (2013), 453–557; [arXiv:1102.2606v3](https://arxiv.org/abs/1102.2606v3); page numbers are those of the arXiv text.
- **Ardakov–Wadsley 2014.** Konstantin Ardakov and Simon Wadsley, *Verma modules for Iwasawa algebras are faithful*, Münster Journal of Mathematics 7 (2014), 5–26; [arXiv:1308.5104v1](https://arxiv.org/abs/1308.5104v1); page numbers are those of the arXiv text.
- **Ardakov–Brown.** Konstantin Ardakov and Kenneth A. Brown, *Primeness, semiprimeness and localisation in Iwasawa algebras*, Transactions of the American Mathematical Society 359 (2007), 1499–1515; [arXiv:math/0412401v1](https://arxiv.org/abs/math/0412401v1).
- **Kohlhaase.** Jan Kohlhaase, *Invariant distributions on p-adic analytic groups*, Duke Mathematical Journal 137 (2007), 19–62; [author's copy](https://www.esaga.uni-due.de/f/jan.kohlhaase/Kohlhaase_Invariant_Distributions.pdf). Its §1.4 summarises H. Frommer, *The locally analytic principal series of split reductive groups*, Münster SFB 478 preprint 265 (2003), on which Frommer's theorem (§2.3) rests.
- **Schmidt.** Tobias Schmidt, *Verma modules over p-adic Arens–Michael envelopes of reductive Lie algebras*, Journal of Algebra 390 (2013), 160–180; [arXiv:1008.3897v2](https://arxiv.org/abs/1008.3897v2).
- **Boxer–Calegari–Gee–Pilloni.** George Boxer, Frank Calegari, Toby Gee and Vincent Pilloni, *Modularity theorems for abelian surfaces*, [arXiv:2502.20645v1](https://arxiv.org/abs/2502.20645v1) (2025); §§2.2.27–2.2.36 are used.
- **Schneider.** Peter Schneider, *p-Adic Lie Groups*, Grundlehren der mathematischen Wissenschaften 344, Springer, 2011, [doi:10.1007/978-3-642-21147-8](https://doi.org/10.1007/978-3-642-21147-8); cited by numbered statement and printed page.
