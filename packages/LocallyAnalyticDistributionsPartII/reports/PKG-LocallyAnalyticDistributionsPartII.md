# PKG-LocallyAnalyticDistributionsPartII: package report

Deliverables: `packages/LocallyAnalyticDistributionsPartII/README.md`, `Suggested.lean`, `metadata.toml`, `sources.toml`, the `gaps` list of `design/plan.json`, and this report. The package folder contained no `design/review.json` and the `reports/` folder was empty, so there were no non-blocking review notes to apply; the design's own "Source corrections" and "Open points" were applied instead.

## 1. Headline theorems

| Headline theorem | Status | Lean name / what is missing at the pins |
|---|---|---|
| Semisimplicity of finite-dimensional modules over ℚ_p ⊗ ℤ_p[[G₁^m]], p odd (Ardakov–Wadsley 2013, Thm 11.1(a); README §3.8) | **stated** | `TauCetiRoadmap.LocallyAnalyticDistributionsPartII.isSemisimpleModule_of_finiteDimensional`, with the definitions `firstCongruenceSL2` and `firstCongruenceProduct` |
| Fu's injectivity theorem ℚ_p[[G₁^m]] → Û(g)_λ for all λ ∈ ℤ_p^m (Fu, Thm 1.5; README §4.14) | not statable | Û(g_{ℤ_p}) as a ring (Mathlib's `AdicCompletion` is a ring only for a commutative ring completed at its own ideal) and the microlocalisation homomorphism ℚ_p[[G]] → Û(g)_{ℚ_p}, whose existence is the Ardakov–Wadsley theorem |
| Ardakov–Wadsley microlocalisation Q_{gr p}(R[[G]]) ≅ Û(g_R)_K (README §3.4) | not statable | algebraic microlocalisation of filtered rings, Û(g_R) as a ring |
| D_{1/p}(G, K) ≅ Û(g_R)_K (AW14 Lemma 5.2; README §3.5) | not statable | locally analytic distribution algebra and its Banach steps |
| Faithfulness of affinoid Verma modules (AW14 Thm 5.4; README §4.13) | not statable | Û(𝔤)_{n,K}, affinoid Verma modules, the K[[G]]-action through microlocalisation |
| Frommer's theorem; crossed product D_{r_n} = U_{r_n} ∗ G/G^{p^n} (README §§2.3–2.4) | not statable | Banach steps D_r(G, K) |
| Domain and normal-form theorems for central quotients (README §§4.7–4.10) | not statable | Banach steps D_r(G, K), Û(g) |
| Fu's isotypic comparison M_W ≅ M̂_W (Fu Thm 4.3; README §3.10) | not statable | microlocalisation of modules |
| Strong duality D(G, K)_λ ≅ C^la[λ]′_b (Fu Thm 5.2; README §4.3) | not statable | compact-type space of locally analytic functions and its strong dual |
| Algebraic Peter–Weyl K[[G₁]]/Ann(W_k) ≅ End_K(W_k) (Fu (32); README §5.2) | not statable | the K[[G₁]]-action on Sym^k(K²) (continuous extension through finite quotients of a lattice: a construction, not a library object) |
| Fréchet–Stein property of 𝒰(g) (README §2.5) | not statable | Fréchet–Stein algebras, completions U(g)_r |

The module docstring of `Suggested.lean` names each non-statable headline with the carrier it lacks. No stand-in, weakened substitute or free predicate is stated.

## 2. What the README could not support; generality decisions

- **Groups are locally ℚ_p-analytic (narrowing).** The design stated the embedding U(g) ⊂ D(G, K) (ST02 §2), D_{1/p} ≅ Û (AW14 Lemma 5.2) and Verma faithfulness (AW14 Thm 5.4) for locally L-analytic / L-uniform groups. No supplier provides the Lie algebra of a locally L-analytic group (PadicLocalLanglandsForGL2Qp §0.1 provides F-analytic manifolds and their distributions, NoncommutativeAndEquivariantIwasawa §0.2 only the ℚ_p-analytic structure), so the README defines g = ℚ_p ⊗ L_U through the Lazard lattice and states these targets for L = ℚ_p (K arbitrary complete discretely valued). Every consumer and Fu's theorem are ℚ_p-analytic. This is a narrowing relative to the sources and is recorded here deliberately; the L-uniform extension needs a carrier for the Lie algebra of an L-analytic group first.
- **Fu's direct route.** The design's gap (separatedness of the ‖·‖_{r′}-filtration on D_r/D_r·ker λ at the radii r_n) is now stated mathematically: §4.7 (iii) is a conditional theorem with the separatedness equation as hypothesis, and §4.11 states (i) the grade step with "D^λ_{r_n} is a domain" as an explicit hypothesis and (ii) the induced-λ injectivity under that hypothesis. The end theorem §4.14 does not use it. The math-gap entry that the design had put into `plan.json` `gaps` (no supplier, no slug) was replaced by the two supplier gaps, since that list is for supplier gaps; its content lives in README §4.7 (iii), §4.11 and Source corrections item 5.
- **Frommer's preprint** (Münster SFB 478 no. 265) was not read; §2.3 rests on Kohlhaase §1.4 (certified author's copy) as in the design. No request was filed: the citation is Kohlhaase.

## 3. Notions moved down from later roadmaps

None. Every supplier is earlier in the merge order or on main.

## 4. Duplication removals (by mathematical object)

Deleted from this roadmap and cited instead (README "Scope and ownership" and "Exact supplier contracts"):

| Design target | Now owned by |
|---|---|
| ND.0/p-valuation (p-valuations, gr G over 𝔽_p[ε], finite rank, ordered bases, saturation) | NoncommutativeAndEquivariantIwasawa §0.7 |
| ND.0/ordered-basis-chart (global chart ψ, minimum formula, p-power subgroups) | NoncommutativeAndEquivariantIwasawa §§0.6–0.7 |
| ND.0/uniform-groups-p-valued (ω_U, ordered basis of value 1) | NoncommutativeAndEquivariantIwasawa §0.7; the (HYP) clause goes to gap:radius-algebras on PadicLocalLanglandsForGL2Qp §0.1 |
| ND.0/p-valued-analytic-structure (Schneider Thms 27.1, 29.8; open normal uniform subgroup) | NoncommutativeAndEquivariantIwasawa §0.2 (`analytic_exists_open_uniform`) and §0.7 |
| ND.1/distribution-algebra (D(G, K), convolution, Dirac, density, pushforward) | PadicLocalLanglandsForGL2Qp §0.1 (`AnalyticSupport.distributions`, `distributionConvolution`); its convention Checks are kept as Conventions item 9 and Layer 1 Examples |
| ND.1/iwasawa-to-distributions (L[[G]] → D(G, K); coefficient expansion) | the map: PadicLocalLanglandsForGL2Qp §0.1 (faithful flatness); integral ordered series: NoncommutativeAndEquivariantIwasawa §0.8; coefficient expansion of D(G, K): gap:radius-algebras |
| ND.1/open-subgroup-decomposition, free part | PadicLocalLanglandsForGL2Qp §0.1 (open-subgroup comparisons); the crossed-product refinement for normal H is kept (README §1.2) |
| ND.2/frechet-stein-algebra, ND.2/coadmissible-module, ND.2/coadmissible-theorems | PadicLocalLanglandsForGL2Qp §0.1 + gap:frechet-stein-general |
| ND.2/banach-steps, ND.2/banach-step-structure | PadicLocalLanglandsForGL2Qp §0.1 ("noetherian Banach radius algebras") + gap:radius-algebras |
| ND.2/frechet-stein-distribution, ND.2/faithful-flatness (ST03 Thms 4.9–4.11, 5.1–5.2) | PadicLocalLanglandsForGL2Qp §0.1 |
| ND.6/banach-iwasawa-duality (ST02B Thm 3.5) | PadicLocalLanglandsForGL2Qp §0.1 (Schikhof duality for admissible Banach representations of compact H) |
| ND.4/m-adic-filtration, graded ring | gr_ω O[[G]] ≅ gr O ⊗ U(gr G): NoncommutativeAndEquivariantIwasawa §0.8; kept here only as the comparison "m-adic filtration = ω_U-filtration" with the AW13 degree formula (README §3.2) |

Supplier citations replaced: the design's `LocallyAnalyticDistributions:L0/...`, `L1/distribution-convolution` node identifiers do not exist in that roadmap's README; they are now cited as LocallyAnalyticDistributions §§0.0–0.3 (checked at the head of its open pull request) and PadicLocalLanglandsForGL2Qp §0.1. `CompletedCohomologyPartII CC.3/qualified-biduality` is dropped (CompletedCohomologyPartII F.1 itself imports Schikhof duality from PadicLocalLanglandsForGL2Qp §§0.1, 0.3). The design's statement that Tau Ceti's completed group algebra is not at the pin is wrong for the content pin a91d3aa: `TauCeti.completedGroupAlgebra` exists and is used.

Checked and not duplicated anywhere (on main, at the open heads, in board packages, at the pins): Lazard lattice, U(g) ⊂ D(G, K), Û(h)_K, Frommer, Arens–Michael envelope, algebraic microlocalisation, S₀, AW microlocalisation, Lie modules, affinoid Verma faithfulness, Fu's theorem, algebraic Peter–Weyl on G₁.

**Ownership concern (not a duplication today).** The board package ArithmeticLocallySymmetricSpacesPartII (merge position 209, design stage) declares supplier gaps on NoncommutativeAndEquivariantIwasawa named flat-microlocalisation, algebraic-quotient-comparison and integral-central-faithfulness, which are this roadmap's §§3.4/3.6, 3.10 and 4.14. NoncommutativeAndEquivariantIwasawa does not state them now. If that roadmap accepts those gaps, Layers 3–4 here would duplicate it and should then be cited from there; conversely, this roadmap (position 316) cannot supply ArithmeticLocallySymmetricSpacesPartII. This needs an orchestration decision.

**Design claims corrected.** "Growth of algebraic quotients … belongs to the pending algebraic Part II of LieHighestWeight": the board package LieHighestWeightPartII (position 309) is about nilpotent orbits and weight patterns and does not plan it; the README now lists Fu §3 among applications outside this roadmap. The proposed roadmaps "WeightAspectAutomorphicMultiplicity" and the quasi-abelian Part II exist nowhere and are not named.

## 5. Supplier gaps (`design/plan.json` `gaps`, README "Exact supplier contracts")

- gap:frechet-stein-general (PadicLocalLanglandsForGL2Qp §0.1): general Fréchet–Stein theory (ST03 §3, Thms A/B, Cor. 3.1–3.5, Lemma 3.6, Prop. 3.7, Lemma 3.8). Used by README §§2.5, 4.1, 4.3, 4.6.
- gap:radius-algebras (PadicLocalLanglandsForGL2Qp §0.1): explicit radius algebras D_r(H, L) in ordered coordinates under (HYP) (ST03 §4, Lemma 4.1–Thm 4.5, Remark 4.6), their role as the Fréchet–Stein stages, and (HYP) for uniform groups. Used by README §§2.2–2.4, 3.5, 4.6–4.8.

## 6. Adversarial pass

| Statement | Instances tried | Values computed | Result | Change |
|---|---|---|---|---|
| Casimir Δ = ½h² − h + 2ef = ½h² + ef + fe = ½h² + h + 2fe (Conv. 6) | ef − fe = h | 2ef = ef + fe + h ⇒ ½h² − h + 2ef = ½h² + ef + fe; 2ef = 2fe + 2h ⇒ = ½h² + h + 2fe | holds | added third form (used for HC) |
| Δ on highest weight a | a = 0, 1, 2, k | ½a² − a + 2a = ½a(a+2): 0, 3/2, 4, ½k(k+2) | holds | — |
| Δ = 4·`TauCeti.casimirElement` | sl₂, κ(h,h)=8, κ(e,f)=4 | dual basis (h/8, f/4, e/4); h²/8 + (ef+fe)/4 = Δ/4 | holds (Tau Ceti def. read at pin: Σ x_i y_i with Killing-dual basis) | — |
| Induced criterion 2λ+1 ∈ (ℤ_p)² (§4.2) | c = 0, k; p = 3 λ = 1; p = 5 λ = 1; p = 3 and p = 7 with λ = 3 | (c+1)²: 1, (k+1)²; 3 (v₃ = 1, no); 3 mod 5 non-residue (no); 7 ≡ 1 mod 3 (yes), v₇(7) = 1 (no) | holds; Fu Remark 5.8 "iff v_p(λ₀) ≥ 2" refuted by p = 3, λ = 1 | Check rewritten (one design-derived check had been garbled in drafting; replaced by the p = 3 / p = 7 comparison) |
| integral-casimir-roots (§4.12) | λ = 1, p = 3 | a = −1+√3: a(a+2)/2 = ((a+1)²−1)/2 = (3−1)/2 = 1; a² + 2a − 2 = 0 monic | holds | — |
| ‖log(1+T)‖_{r_n} = p^{n−1} (§2.4 i) | n = 1, 2; p = 3 | terms p^{k − p^{k−n}}: n=1: k=0 → 3^{−1/3}, k=1 → 1, k=2 → 3^{−1}; n=2: k=1 → 3^{1−1/3}, k=2 → 3, k=3 → 3^0 | max p^{n−1} only at k = n | — |
| exp(p^n x) converges in U_{r_n} (§2.4 ii) | p = 3, p = 2 | term norm p^{−k+v_p(k!)} ≤ p^{−k(p−2)/(p−1)}; at p = 2, k = 2^j gives 2^{−1}: no decay | needs p odd (stated) | — |
| Frommer ℓ_i at r_n | τ = 1 | max of |1/m| r_n^m attained only at m = p^n ⇒ ℓ = p^n; rank p^{nd} = [G : G^{p^n}] | consistent | — |
| U_r = D_r for r < p^{−1/(p−1)} (new §2.2 check) | G = ℤ_p | ‖log(1+T) − T‖ = max(r²/|2|.., p r^p) < r iff r^{p−1} < 1/p; T = exp(x) − 1 converges since ‖x‖ = r < p^{−1/(p−1)} | holds; consistent with ℓ = 1 in Frommer | added Check |
| Central quotient vanishing (§4.1 check, §4.7 iv) | r = p^{−2/3}, λ = p^{−1}, p = 3, 5 | ‖log(1+H)‖_r = max(r, p r^p) = p^{−2/3} (p r^p = p^{1−2p/3} ≤ p^{−1}); ‖h‖_r = p^{1/3}; ‖Δ‖_r ≤ p^{2/3} < p | D^λ_r = 0 | — |
| Symbol of Δ′ − p²λ for r′ < p^{−1/2} (§4.7 i) | p = 3, 5 | degree-two terms r′²; ‖p log(1+H)‖ = r′/p < r′² iff r′ > 1/p; |p²λ| ≤ p^{−2} < r′² | symbol ½H² + 2EF | — |
| ½H² + 2EF irreducible | p odd | Gram matrix diag(½) ⊕ [[0,1],[1,0]], det = −½ ≠ 0 in 𝔽_p | nondegenerate ternary ⇒ irreducible | — |
| Symbol at r_n (nilpotents) | n = 1 | symbol of log(1+X) = X^{p^n}/p^n; (½H²+2EF)^{p^n} = ½H^{2p^n} + 2E^{p^n}F^{p^n} in char p since a^p = a on 𝔽_p | p^n-th power ⇒ nilpotents | — |
| §4.7 (iii) conditional | r ∈ [p^{−1/2}, p^{−1/(p−1)}), p = 3, 5 | p = 3: interval empty (p^{−1/2} = p^{−1/(p−1)}); p = 5: [5^{−1/2}, 5^{−1/4}) covered by §4.8 | statement consistent | — |
| Small-radius log/exp (§4.8) | r = 1/p (ρ = 1), r → p^{−1/(p−1)} | p^k r^{p^k} < r iff r^{p^k−1} < p^{−k}: k=1 needs r < p^{−1/(p−1)}; ρ = 1 gives Û(sl₂)_λ | holds | — |
| Lazard bracket for G₁ (§0.1 check) | [pe, pf] | p²h; ph ∈ p·sl₂ = L, p²h ∈ pL, p²h ∉ p²L = p³sl₂ | [L,L] ⊆ pL, ⊄ p²L | — |
| (1/p)L_{G₁} = sl₂(ℤ_p) (§0.3) | p = 3 | index of G₁ in SL₂: 24 = |SL₂(𝔽₃)|; successive indices of congruence kernels p³ = 27 | uniform dim 3 | — |
| G₁ at p = 2 (new §0.2 check) | −I₂ | −1 ≡ 1 mod 2 ⇒ −I₂ ∈ G₁, order 2 ⇒ not uniform | p odd is necessary | added Check |
| Product G₁^m, m = 0 | m = 0 | trivial group, ℤ_p[[1]] = ℤ_p, ℚ_p ⊗ ℤ_p = ℚ_p | headline reduces to semisimplicity of vector spaces | noted in §3.8 |
| Semisimplicity headline (§3.8, Lean) | G = ℤ_p (non-semisimple 𝔤); G₁ trivial-by-trivial extensions | K[[ℤ_p]]/((γ−1)²) non-split; for G₁, Hom_cts(G₁, ℚ_p) = 0 since G₁^{ab} is finite (sl₂ perfect) | hypothesis (semisimple 𝔤) necessary; no counterexample for G₁ | hypotheses checked in AW13 §10.12, §11.1 (drops the very-good-prime restriction; §4.7 connected split reductive; §10.1 p a uniformiser) |
| Microlocal Ore set over ramified R (§3.3 check) | R = ℤ_p[√p] | p = ϖ² ∈ m², 0 = p − p ∈ p + m² | not an Ore set of nonzerodivisors | — |
| microlocalModule of functions on G/G^p (§3.7) | G = 1 + pℤ_p | (1+b)^p − 1 ↦ exp(p²u) − 1 = p²u·v, v = Σ (p²u)^k/(k+1)!, term norms p^{−2k+v_p((k+1)!)} < 1 for k ≥ 1 | M̂ ≅ ℚ_p (dim 1 vs p) | made the unit explicit |
| Trivial module microlocalises to K | s ∈ p^a + m^{a+1} | augmentation ∈ p^a + p^{a+1}ℤ_p ≠ 0 | holds | — |
| Û(h)_K lattice dependence (§2.1) | h = Ru | Σ π^n u^n = Σ (πu)^n: coefficients 1 in basis (πu)^n, not → 0 | Û(πh)_K ⊊ Û(h)_K | — |
| Casimir norm in Û(sl₂(ℤ_p)) | p odd | PBW coefficients ½, −1, 2 units ⇒ norm 1 | holds; fails at p = 2 (½) | p odd stated |
| Arens–Michael abelian check (§2.5) | exp(x) | |1/n!| r^n → 0 iff r < p^{−1/(p−1)} | exp ∉ 𝒰(g) | — |
| Algebraic functions dims (§5.1) | n = 0, 1, 2, 3 | C(n+3,3) − C(n+1,3): 1, 4, 10−1 = 9, 20−4 = 16 = (n+1)² ; general (n+1)[(n²+5n+6) − (n²−n)]/6 = (n+1)² | holds | — |
| Restriction injective needs openness | {±I₂} | x − w: 1 − 1 = 0, −1 − (−1) = 0 | kernel ≠ (xw−yz−1) | — |
| x^k invariances (§5.2) | n_lower = (1 0; a 1), n_upper = (1 a; 0 1) | first row of n_lower·g = first row of g; (g·n_upper)₁₁ = g₁₁; (g·n_lower)₁₁ = g₁₁ + a g₁₂ | left lower / right upper | Source correction 9 kept |
| Lie sign (§1.1, Conv. 3) | G = ℤ_p, f = z² + 3z | x̃(f) = f′(0) = 3; opposite sign −3 | holds | — |
| Commutator x̃ỹ − ỹx̃ = [x,y]~ | Campbell–Hausdorff to second order | exp(tx)exp(sy) − exp(sy)exp(tx) mixed derivative = ts[x,y] coefficient 1 | homomorphism with (λ∗μ)(f) = λ(g ↦ μ(h ↦ f(gh))); anti for the opposite rule | — |
| Convolution order witness (Conv. 9) | exp(pe), exp(pf) ∈ G₁ | (1 p;0 1)(1 0;p 1) = (1+p² p; p 1) ≠ (1 p; p 1+p²) | δ's do not commute | — |
| Crossed-product Ext (§4.9) | H trivial; T = R[H], R a field | Ext^i_{R[H]}(M, R[H]) ≅ Ext^i_R(M, R) = 0 for i > 0 | consistent with self-injectivity | — |
| Centrality needs connectedness (§1.3) | O(2) | det −1 element sends x ∈ so(2) to −x | not central | — |
| D_r vs D_{<r} (Source corr. 1) | ℤ_p, r = p^{−1/p}, d_{pj} = p^{−j} | |d_{pj}| r^{pj} = p^{j}·p^{−j} = 1 | bounded, not null | moved to Source corrections (object now supplied) |
| D_{1/p} null vs bounded (Source corr. 7) | λ_α = p^{−|α|}, α = (n,0,…) | |λ_α|p^{−|α|} = 1 ↦ Σ u₁^n ∉ Û | correction holds | — |
| Context of Lean headline | `#check @isSemisimpleModule_of_finiteDimensional` | binders p, Fact p.Prime, hp : p ≠ 2, m, M, AddCommGroup, Module A M, Module ℚ_p M, IsScalarTower, FiniteDimensional all present in the elaborated type | matches README §3.8 | — |

## 7. Elaboration

Command (from the content checkout): `lake env lean <Suggested.lean>`, after `lake build TauCeti.Topology.Algebra.Group.Profinite.CompletedGroupAlgebra.Basic` (built successfully). Outcome: exit 0, exactly **1** warning, `declaration uses 'sorry'` (on `isSemisimpleModule_of_finiteDimensional`), no other messages.

Mechanical binder check: a scratch file with `#check @firstCongruenceSL2`, `#check @firstCongruenceProduct`, `#check @isSemisimpleModule_of_finiteDimensional` was elaborated once. Elaborated types: `firstCongruenceSL2 : (p : ℕ) → [Fact (Nat.Prime p)] → Subgroup (SpecialLinearGroup (Fin 2) ℤ_[p])`; `firstCongruenceProduct : (p : ℕ) → [Fact (Nat.Prime p)] → (m : ℕ) → Subgroup (Fin m → SpecialLinearGroup (Fin 2) ℤ_[p])`; the theorem carries every hypothesis of README §3.8 (p prime, p ≠ 2, m, finite-dimensional M with the scalar tower). No section variables are used; nothing changed after the check.

## 8. Dependency check

```
depcheck: 56 roadmaps, 644 edges, 0 problem(s)
```

No UPWARD, CYCLE or moved line. Suppliers named: PadicLocalLanglandsForGL2Qp (order 32), NoncommutativeAndEquivariantIwasawa (29), LocallyAnalyticDistributions (76), and the main-branch roadmaps PadicMeasuresIwasawaAlgebras and LieHighestWeight; this roadmap is at 316.

The repository gate, run on a scratch worktree copy of the three roadmap files: all counts 0 (`tex` was 465 before TeX-style subscripts `_{…}`/`^{…}` were moved into code spans), result OK. `roadmaps resolve` on the README: no cross-roadmap citation and no Lean name found nowhere.

## 9. Citations and sources

Every cross-roadmap citation was checked at the copy named: PadicLocalLanglandsForGL2Qp §0.1 and NoncommutativeAndEquivariantIwasawa §§0.1–0.8, F.1 and LocallyAnalyticDistributions §§0.0–0.3 at the heads of their open pull requests (via `roadmaps show`); PadicMeasuresIwasawaAlgebras (Layer 0, §§1.2, 1.7) and LieHighestWeight (Layers 0, 3, 5, 7) on main. Library declarations were checked at the pins by elaborating a `#check` file (all Mathlib names in the contracts resolve; `TauCeti.completedGroupAlgebra` and the casimir/PBW declarations read in source at a91d3aa).

`sources.toml` now records 11 works: FU24, ST03, ST02, ST02B, AW13, AW14, AB07, SCHM13, BCGP25 (arXiv, certified), KOH07 (author page, certified) and SCH11 (Springer, paywalled, `uncertified`, cited by locator). `cited_for` lists the README sections. No text is missing; no `needs-references.toml` was written. Locators were spot-checked in the cached texts: Fu Thm 1.5 (FU24 line 163, p. 4), Thm 5.7 (line 975, p. 20), Remark 5.8 (lines 1010–1016, pp. 20–21); AW13 §10.12 (line 3588, p. 77) and §11.1 Theorem (line 3704, p. 79); AW14 §5.1–5.2 (lines 609–677, pp. 13–15); ST03 Prop. 3.7 (line 449, p. 11), Thm 4.5 (line 872, p. 22), Lemma 4.8 (line 910, p. 23); ST02 Prop. 3.7 (line 635, p. 16), Lemma 2.4 (line 376, p. 10), Lemma 3.1 (line 514, p. 13); KOH07 Frommer theorem and Cor. 1.4.1 (lines 665, 679, p. 15); SCHM13 Props. 3.2.1, 3.2.3, Thm 4.3.3 (pp. 5, 6, 16); BCGP25 §2.2.29 (p. 23), Def. 2.2.31 and Prop. 2.2.35 (p. 24); AB07 §5.4 (line 601, p. 16).

## 10. Ownership against open pull requests

Checked with `roadmaps grep` over main and all 354 open roadmap pull requests at their heads, by object (Fréchet–Stein, coadmissible, microlocal, p-valuation, Lazard, Arens–Michael, Frommer, affinoid Verma, admissible Banach, Peter–Weyl, first congruence subgroup, Verma, Casimir, Harish-Chandra, completed enveloping algebra, Schneider–Teitelbaum, Ardakov), and in the board's packages by `grep`. Findings are in §4. No declaration of `Suggested.lean` shares a fully qualified name with a declaration of a readable roadmap.

## 11. Untrusted text

No fetched page, roadmap or source contained instructions; nothing suspicious to quote.
