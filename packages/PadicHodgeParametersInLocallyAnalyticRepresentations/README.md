# Roadmap: p-adic Hodge parameters in locally analytic representations of GL_n

**Summary.** For a generic noncritical crystabelline (φ,Γ)-module D of rank n over the Robba ring
`R_{K,E}`, the smooth representation π_sm(φ) and the Hodge–Tate weights h fix the locally algebraic
representation π_alg(φ,h) of GL_n(K), but from rank three on they forget the Hodge filtration of D.
This roadmap constructs Ding's comparison: the unique surjection
`t_D : Ext¹_{GL_n(K)}(π_alg(φ,h), π_1(φ,h)) ↠ Ext¹(D,D)/Ext¹_0(D,D)` that matches, refinement by
refinement, the locally analytic principal-series extensions with the trianguline first-order
deformations of D. Its kernel has dimension `(2^n − n(n+1)/2 − 1)·[K:ℚ_p]`. The tautological
extension of π_alg(φ,h) ⊗ Ker(t_D) by π_1(φ,h) is the locally analytic representation π_min(D).
The end theorems are: the comparison theorem and its kernel dimension; the characterisation of
π_min(D) by its first two socle layers and its Ext¹ group; its central and infinitesimal
characters; its compatibility with parabolic induction and its decomposition over the embeddings of
K; the recovery theorem, which says that π_min(D) determines, embedding by embedding, the modified
modules D_σ (hence D itself when K = ℚ_p); and the realisation of π_min(D) as the annihilator of the
maximal ideal of a first-order Artinian algebra A_D acting on the universal extension. The source is
Ding, *p-adic Hodge parameters in the crystabelline representations of GL_n* (DING25), §3.2.

## Scope and ownership

This roadmap owns the comparison of §3.2 of DING25 and everything built from it: the endpoint
refinement families and block character directions used in the induction (Layer 0), the refinement
presentation and the comparison map with its kernel (Layers 0–1), the minimal representation, its
Ext¹ comparison, characterisation and scalar characters (Layer 2), its parabolic, single-embedding
and modified-module compatibilities (Layer 3), the recovery theorem (Layer 4), and the first-order
Artinian algebras, universal extensions and the universal action (Layer 5).

It owns none of the two theories being compared:

- **The locally analytic side** is LocallyAnalyticRepresentationsOfLocalGroups. Its Layers LR.0–LR.1
  give admissible locally ℚ_p-analytic representations of GL_n(K), the Schneider–Teitelbaum duality,
  Ext groups computed among D(G,E)-modules with their long exact sequences, the identification of
  Ext¹ with extensions, tautological and universal extensions, and completed external tensor
  products; LR.5 gives the Orlik–Strauch functors; LR.6 gives Emerton's closed induction; LR.7 gives
  π_alg(φ,h), the principal series PS(w(φ),h), PS_1(w(φ),h), π_1(φ,h), the amalgam π(φ,h), the maps
  ζ_w, the dimension of Ext¹(π_alg(φ,h), π_1(φ,h)) and its filtration by the images of the
  locally algebraic, the self-extension and the refinement subspaces (Ding §§3.1.1–3.1.2); LR.8 gives
  the parabolic subrepresentations `π_{F_P}(φ,h)`, the maps `ζ_{F_P}` and the amalgamation of the two
  endpoint parabolics (Ding §3.1.3); LR.9 gives the locally σ-analytic theory, `π_{1,σ}(φ,h)` and the
  decomposition of Ext¹ over the embeddings (Ding §3.1.4). The compact distribution algebras and
  coadmissible modules behind these are LocallyAnalyticDistributionsPartII ND.0–ND.3, reached here
  only through LR.0–LR.1.
- **The (φ,Γ)-module side** is TriangulineVarietyAndItsLocalModel. Its Layer 9 gives the class
  ΦΓ_nc(φ,h), the canonical labelled subquotients D_1 and C_1 and the modified endpoint diagrams of
  D_σ; Layer 10 gives the refinement deformation spaces Ext¹_w(D,D) with the parameter maps κ_w,
  their dimensions and Weyl transport, the common kernel Ext¹_0(D,D), the quotient deformation
  spaces, the de Rham-up-to-twist and paraboline subspaces; Layer 11 gives the partial de Rham
  deformation spaces and the first-order modification T_σ with its quotient comparison; Layer 12
  gives the higher-intertwining relation, the spanning of the deformation space by the refinement
  subspaces and the single-embedding recovery exact sequence (Ding §§2.1–2.4).
- **Robba modules and Herr cohomology** are PhiGammaModulesAndIwasawaCohomology §§1.0, 1.2, 3.4a,
  3.6 and 7.1–7.5 (the Robba ring, the étale equivalence, coefficient Robba modules over finite local
  E-algebras, Herr cohomology, character modules `R_{K,E}(δ)`, weights, the de Rham criterion for
  rank-one modules and triangulations).
- **Deformation rings of (φ,Γ)-modules** with their trianguline and de Rham quotients, tangent
  spaces and the first-order Cartesian comparison are LocalGaloisDeformationRings §§0.4 and 1.23.
- **B-pairs and labelled de Rham realisations** are PadicHodgeTheory §4.5; the modified module D_σ
  of Ding Proposition 2.5(1) is constructed there (supplier contract below).
- **The completed Bernstein centre** of the principal-series block of π_sm(φ), with Ding's
  ordered-character isomorphisms 𝒥_w, is SmoothRepresentationsOfLocalGroups §SR.3.2 (supplier
  contract below).
- **Harish-Chandra theory** for the split reductive Lie algebra `gl_{n,Σ_K}` = ∏_σ gl_n over E is
  LieHighestWeight Layers 3, 7 and 9 (supplier contract below). Tau Ceti's `TauCeti.hcProjection`
  exists at the pin for Killing-semisimple Lie algebras over a characteristic-zero field and does not
  cover the reductive gl_n.

Ding's local–global applications (§4 of DING25: patched eigenvarieties and the occurrence of π_min(D)
in completed cohomology) belong to the completed-cohomology local–global compatibility roadmaps and
are not stated here. No statement here identifies π_min(D) or π_fs(D) with a full locally analytic
representation attached to D by a p-adic local Langlands correspondence.

## Conventions

**Standing hypotheses (H).** p is a prime (p = 2 allowed). K/ℚ_p is finite of degree d_K, K_0 its
maximal unramified subfield and ϖ_K a uniformiser. E/ℚ_p is a finite extension containing σ(K) for
every embedding σ : K ↪ E, and Σ_K is the set of these embeddings, so #Σ_K = d_K. Fix n ≥ 1 and put
G = GL_n(K), with T ⊂ B the diagonal torus and upper Borel and B⁻ the lower Borel. The smooth
characters φ_1,…,φ_n : K^× → E^× are *generic*: φ_i/φ_j ∉ {1, |·|_K} for i ≠ j. The weight
h = `(h_{i,σ})` ∈ `ℤ^{{1,…,n}×Σ_K}` is strictly dominant: `h_{1,σ}` > ⋯ > `h_{n,σ}` for every σ. The
module D lies in ΦΓ_nc(φ,h) (TriangulineVarietyAndItsLocalModel §9.1 for n ≥ 2; for n = 1,
ΦΓ_nc(φ,h) consists of the single module `R_{K,E}(φ_1z^{h_1})`). D need not be étale. Every theorem
below assumes (H) unless it says otherwise; the purely combinatorial statements of Layer 0 and 1.1
state their own weaker hypotheses.

**Characters and twists.** |·|_K is the unramified character with |ϖ_K|_K = `p^{−[K_0:ℚ_p]}`.
Local class field theory sends a uniformiser to a geometric Frobenius, and ε = `N_{K/ℚ_p}(·)|·|_K`
is the cyclotomic character of K^×. For k ∈ `ℤ^{Σ_K}`, z^k is the algebraic character
x ↦ ∏_σ `σ(x)^{k_σ}`; for a weight μ of the torus, z^μ(diag(t_i)) = `∏_{i,σ}` `σ(t_i)^{μ_{i,σ}}`. Put
θ = (0, −1, …, 1−n), λ = h − θ (so `λ_{i,σ}` = `h_{i,σ}` + i − 1, dominant), η = 1 ⊠ |·|_K ⊠ ⋯ ⊠
`|·|_K^{n−1}` and N = n(n−1)/2. For a standard parabolic P with Levi blocks of sizes n_1,…,n_r,
θ^P is constant equal to −(n_1 + ⋯ + `n_{i−1}`) on the i-th block; every block comparison carries the
twist `ε^{−1}` ∘ θ^P (LocallyAnalyticRepresentationsOfLocalGroups LR.7, target gln-conventions).

**Permutations.** S_n acts on tuples by w(φ)_i = `φ_{w^{−1}(i)}`, so the refinement attached to w
places φ_i in position w(i); its triangulation has graded parameters `φ_{w^{−1}(i)}z^{h_i}`. The
filtration F is D_1 ⊂ D (graded pieces of ranks n−1 and 1, parabolic `P_{n−1}`) and G is
`R_{K,E}(φ_nz^{h_1})` ⊂ D (ranks 1 and n−1, parabolic P_1), where P_i is the maximal standard
parabolic obtained by deleting the simple root i. A refinement w is compatible with F exactly when
w(n) = n and with G exactly when w(n) = 1.

**Character spaces.** H_char = Hom(K^×, E) is the space of locally ℚ_p-analytic additive characters,
of dimension 1 + d_K; its smooth subspace has dimension 1 and its locally σ-analytic subspace,
Hom_σ(K^×, E), dimension 2. H_T = Hom(T(K), E) ≅ H_char^n via ψ(t) = Σ_i ψ_i(t_i); Hom_sm(T(K),E),
Hom_σ(T(K),E), `Hom_{g′}(T(K),E)` and `Hom_{P,g′}(T(K),E)` are as in LocallyAnalyticRepresentationsOfLocalGroups
LR.7 (gln-conventions) and TriangulineVarietyAndItsLocalModel §§10.5 and 10.8.

**Fixed objects.** Throughout:

```text
A   = π_alg(φ,h) = π_sm(φ) ⊗_E L(λ)           (LR.7, pi-alg)
V   = π_1(φ,h)                                (LR.7, ps1-and-pi1)
𝔈   = Ext¹_G(A, V)                            dim n + (2^n − 1)·d_K   (LR.7, ext-pi1)
Q   = Ext¹(D,D) / Ext¹_0(D,D)                 dim n + n(n+1)·d_K/2    (TriangulineVarietyAndItsLocalModel §10.4)
```

For a refinement w, 𝔈_w ⊂ 𝔈 is the image of ζ_w : H_T → 𝔈 and Q_w ⊂ Q the image of Ext¹_w(D,D);
𝔈_g ⊂ `𝔈_{g′}` ⊂ 𝔈_w are the images of the locally algebraic self-extensions and of all
self-extensions of A (dimensions n, n + d_K, n(1 + d_K)); Q_g ⊂ `Q_{g′}` ⊂ Q_w are the images of the
de Rham and de Rham-up-to-twist deformations (same dimensions). For a P-filtration F_P of D,
`𝔈_{F_P}` and `Q_{F_P}` are the parabolic images (LR.8, pi-fp; TriangulineVarietyAndItsLocalModel §10.6). For σ ∈ Σ_K, 𝔈_σ is the image
of Ext¹_σ(A, `π_{1,σ}(φ,h)`) (dimension n + 2^n − 1) and Q_σ the image of the deformations that are
de Rham at every τ ≠ σ (dimension n + n(n+1)/2) (LR.9, sigma-ext-pi1; TriangulineVarietyAndItsLocalModel §§11.1–11.2). The
parameter isomorphisms are κ_w : Q_w ≅ H_T (TriangulineVarietyAndItsLocalModel §10.4) and ζ_w : H_T ≅ 𝔈_w (LR.7, ext-filtration);
a_w : Q_w ↪ Q is the inclusion. The letter σ subscript on an Ext group always means "algebraic, or de
Rham, at every embedding other than σ", never a condition at σ.

**Citations.** LR.k denotes Layer LR.k of LocallyAnalyticRepresentationsOfLocalGroups, followed by
the name of the target there (for example LR.7, ext-pi1); sections § of other roadmaps are their own
numbering.

**Coefficients and Artinian algebras.** Artinian algebras are local Artinian E-algebras with residue
field E. Tangent spaces are Hom_E(𝔪/𝔪², E) and cotangent spaces 𝔪/𝔪²; for a first-order algebra
(𝔪² = 0) with cotangent space M the algebra is `TrivSqZeroExt E M`. Duals are E-linear duals
(`Module.Dual`). Dimensions are over E. The dual numbers are `DualNumber E`.

## Exact supplier contracts

### From Mathlib

Linear algebra at the pin: `LinearMap.ker`, `LinearMap.range`, `LinearMap.prod`,
`LinearMap.quotKerEquivOfSurjective` (a surjective linear map induces a linear equivalence from the
quotient by its kernel), `LinearMap.finrank_range_add_finrank_ker` (rank–nullity on a
finite-dimensional source), `Submodule.finrank_sup_add_finrank_inf_eq`, `Module.Dual`; permutations
`Equiv.Perm` of `Fin n`; the square-zero algebras `TrivSqZeroExt` and `DualNumber`; `IsLocalRing`;
`CategoryTheory.Abelian.Ext` for Ext in module categories. None of these knows locally analytic
representations, Robba rings or Ext between them.

### From Tau Ceti

`TauCeti.hcProjection` (the Harish-Chandra projection Z(U(L)) → S(H) for a Killing-semisimple L
with a splitting Cartan subalgebra over a characteristic-zero field) and
`TauCeti.vermaCentralCharacter_eq_lift_cartanProjection` (central characters of Verma modules as
evaluations), in `TauCeti/Algebra/Lie/HighestWeight/CentralCharacter/HarishChandra.lean`. They are
the semisimple shape of the input of §2.6; they do not apply to gl_n, whose Killing form is
degenerate.

### From TauCetiRoadmap.RepresentationTheory.LieHighestWeight

Layer 3 (Verma modules, the centre acting on a Verma module by a scalar), Layer 7 (the centre of
U(L) and the Harish-Chandra isomorphism with the dot action) and Layer 9 (gl_n as a reductive Lie
algebra, its diagonal Cartan, dominance and the scalar-centre transfer). These are stated over an
algebraically closed field of characteristic zero, and Layer 7's Harish-Chandra isomorphism for a
Killing-semisimple algebra.

What LieHighestWeight must provide (gap:split-gln-harish-chandra): the Harish-Chandra isomorphism
`Z(U(gl_{n,Σ_K})) ≅ U(t_{Σ_K})^{W_{n,K}}` for the split reductive Lie algebra
`gl_{n,Σ_K}` = `∏_{σ∈Σ_K}` gl_n over a finite (not algebraically closed) extension E of ℚ_p, with
`W_{n,K}` = `S_n^{Σ_K}` acting by the dot action, normalised so that a weight μ corresponds to the
infinitesimal character `ξ_{μ−θ}` of L(μ − θ), together with the fact that the centre acts on every
Verma module, and on every finite-dimensional irreducible L(μ), by its infinitesimal character.

### From TauCetiRoadmap.LocallyAnalyticRepresentationsOfLocalGroups

- LR.1 targets ext-groups, ext1-extensions and self-extension-dual-numbers: Ext^i_G(V_1,V_2) =
  `Ext^i_{D(G,E)}(V_2′, V_1′)`, push-forward and pull-back, the long exact sequences in both
  variables, Ext¹ as Yoneda classes of admissible extensions, the dual-number structure on a
  self-extension, and the tautological extension of V_1 ⊗_E U by V_2 for a subspace U of a
  finite-dimensional Ext¹_G(V_1,V_2) (the universal extension when U is everything), with its
  functoriality under restriction to a subspace and push-out along V_2 → W. Assumed: the classifying
  isomorphism `Ext¹_G(V_1 ⊗_E U, V_2) ≅ Hom_E(U, Ext¹_G(V_1, V_2))` for finite-dimensional U.
- LR.0 target completed-external-tensor and LR.1 target admissible-external-tensor: completed
  external tensor products of admissible representations of the Levi blocks.
- LR.5 target orlik-strauch-functor: F^G_P(M, π) with the U(g)-action on F^G_P(M, π) induced from M.
- LR.6 target closed-induction: Emerton's closed induction `I_{P⁻}^G`, distinct from full locally
  analytic induction.
- LR.7 targets gln-conventions, pi-alg (End_G(A) = E), principal-series-ps
  (PS(w(φ),h) = `F^{GL_n}_{B⁻}(M⁻(−λ), w(φ)η)`), principal-series-constituents, constituent-labels
  (all nonempty proper I ⊂ {1,…,n}), ps1-and-pi1 (soc V = A, End(V) = E), self-extensions (Ding
  Proposition 3.3, including the Weyl transport `ζ_{w_2}` ∘ `(w_2w_1^{−1})` = `ζ_{w_1}` on `Hom_{g′}`),
  constituent-ext-lines (Ding Lemma 3.5, in particular part (2): pull-back along a nonsplit
  self-extension of A is a bijection on Ext¹(·, `C(I,s_{i,σ})`)), zeta-w (Ding (3.10)–(3.11) and Remark
  3.7), ext-ps1 (Ding Proposition 3.6), ext-pi1 (Ding Proposition 3.8 and Remark 3.9: dim 𝔈 =
  n + (2^n − 1)d_K, surjectivity of (ζ_w)_w : ⊕_w H_T ↠ 𝔈, and 𝔈 ≅ Ext¹_G(A, π(φ,h))),
  finite-slope-amalgam, ext-filtration (𝔈_g ⊂ `𝔈_{g′}` ⊂ 𝔈_w with dimensions n, n + d_K, n(1 + d_K)).
- LR.8 targets parabolic-levi-data, parabolic-constituents, pi-fp, ext-pi-fp, zeta-fp,
  zeta-fp-bijective (Ding Proposition 3.12, including compatible-refinement spanning of `𝔈_{F_P}` and
  Weyl transport (3.30)) and endpoint-amalgamation (Ding Proposition 3.13: the exact sequence
  `0 → 𝔈_{g′} → 𝔈_F ⊕ 𝔈_G → 𝔈 → 0` with first map b ↦ (b, −b), and ζ_F, ζ_G).
- LR.9 targets sigma-analytic-representation, pi1-sigma (`π_{1,σ}(φ,h)` is the maximal
  `g_{Σ_K∖{σ}}`-algebraic subrepresentation of V), sigma-self-extensions, sigma-ext-ps1, sigma-ext-pi1
  (Ding Proposition 3.18: dim 𝔈_σ = n + 2^n − 1, the σ-refinement surjection, and
  `⊕_σ (𝔈_σ/𝔈_g) ≅ 𝔈/𝔈_g`), sigma-parabolic and sigma-amalgamation.

### From TauCetiRoadmap.TriangulineVarietyAndItsLocalModel

- §9.1 (ΦΓ_nc(φ,h), refinements and their parameters `φ_{w^{−1}(i)}z^{h_i}`), §9.2 (D_1, C_1 and the
  canonical labelled subquotients), §9.6 (the modified endpoints `D_{1,σ}`, `C_{1,σ}` and the parameters
  `w(φ)z^{𝔗_σ(h)}` of every refinement of D_σ), §9.9 (surjectivity of 𝔗_σ on isomorphism classes).
- §10.1 (Ext¹ of a rank-one module as Hom(K^×, E), ψ ↔ δ(1 + εψ)), §10.2 (Ext¹_w, κ_w, Ext¹_g),
  §10.3 (dimensions, surjectivity of κ_w, Weyl transport on Ext¹_g: Ding Proposition 2.10 and
  Lemma 2.11), §10.4 (Ext¹_0, the quotient Q, Q_w ≅ H_T, Q_g ≅ Hom_sm(T(K),E), dim Q), §10.5
  `(Ext¹_{g′})`, §§10.6–10.8 (paraboline subspaces, `Q_{F_P} ≅ ∏_i Q(M_i)` and `Hom_{P,g′}`, Ding
  Corollaries 2.14–2.15 and (2.19)–(2.21)).
- §11.1–§11.2 (partial de Rham conditions and Q_σ), §11.4 (the first-order modification T_σ),
  §11.6 (the modified zero subspace), §11.7 (Ding Corollary 2.27: `Q_*(D) ≅ Q_*(D_σ)` for
  * = g, σ, (σ, F_P), compatibly with parabolic products).
- §12.8 (Ding Proposition 2.12: ⊕_w Ext¹_w(D,D) → Ext¹(D,D) is surjective, also modulo Ext¹_0),
  §12.13 (the single-embedding relation ℒ_σ(D_σ, `D_{1,σ}`, `C_{1,σ}`) inside its ambient space
  `𝒱_σ(D_{1,σ}, C_{1,σ})`), §12.14 (Ding (2.42) and Corollary 2.38(1): the exact sequence
  `0 → ℒ_σ → 𝒱_σ → Q_σ(D_σ) → 0`, and equality of the relations for fixed endpoints and φ_n is
  equivalent to D_σ ≅ D′_σ), §12.16 (Ding Corollary 2.40: refinement spanning of Q_σ for D and D_σ).

These sections assume n ≥ 2; the rank-one case they reduce to is §10.1.

### From TauCetiRoadmap.PhiGammaModulesAndIwasawaCohomology

§1.0 (`fieldEtaleRealization`, the equivalence between E-representations of G_K and étale Robba
modules), §1.2 (`RelativePhiGammaModule`, its finite-local-algebra specialisation
`CoefficientRobbaModule` and `CoefficientRobbaModule.etaleEquivalence`), §§3.4a and 3.6 (Herr
cohomology and its Galois comparison, exported as `HerrCohomology`), §7.1 (`characterModule`, the
rank-one modules `R_{K,E}(δ)`, with ε = `N_{K/ℚ_p}|N_{K/ℚ_p}|` the Tate character), §7.3 (weights of
characters over Artinian coefficients, locally algebraic characters), §7.4
(`characterModule_deRham_iff_locallyAlgebraic`), §7.5 (triangulations).

### From TauCetiRoadmap.PadicHodgeTheory

§4.5 (`BPair` over a finite coefficient field, its exact tensor equivalence with Robba modules, the
labelled positive de Rham lattices `WdRPlus`), §5.2 (`bergerModification`).

What PadicHodgeTheory must provide (gap:embedding-selective-modification): for a de Rham
(φ,Γ)-module D over `R_{K,E}` with labelled Hodge–Tate weights h and an embedding σ ∈ Σ_K, the module
D_σ attached to the B-pair (W_e(D), Λ) where Λ_σ = W⁺_dR(D)_σ and Λ_τ = (`t^{h_{n,τ}}` B⁺_dR `⊗_{K,τ}`
`E)^{⊕n}` for τ ≠ σ; its characterisation as the unique module with D ⊂ D_σ, D_σ[1/t] = D[1/t] and
Hodge–Tate weights 𝔗_σ(h) (equal to h at σ and to `h_{n,τ}` at every τ ≠ σ), and the induced
isomorphism D_pst(D) ≅ D_pst(D_σ) identifying the σ-components of D_dR as filtered E-vector spaces
(DING25 Proposition 2.5, p. 13).

### From TauCetiRoadmap.LocalGaloisDeformationRings

§0.4 (deformations of coefficient Robba modules and their tangent space `Ext¹(D,D)`), §1.23
(`PhiGamma.defRing`, `PhiGamma.triangulineDefRing`, `PhiGamma.deRhamDefRing`, the tangent
identifications `PhiGamma.tangent_defRing`, formal smoothness `PhiGamma.formallySmooth`, the
forgetful maps, and the first-order Cartesian comparison with locally algebraic parameters, for
End(D) = E and generic noncritical parameters; its rank-one case gives the deformation rings of a
character and of its locally algebraic deformations).

### From TauCetiRoadmap.SmoothRepresentationsOfLocalGroups

§SR.3.2 (Bernstein components and the Bernstein centre).

What SmoothRepresentationsOfLocalGroups must provide (gap:principal-series-bernstein-completion):
over a finite extension E of ℚ_p containing the values of φ, the Bernstein centre ℋ of the
principal-series block of π_sm(φ) (and ℋ_i of the block of φ_i of K^×), the completion Ĥ_φ of ℋ at
the point π_sm(φ), and, for generic φ and every w ∈ S_n, the isomorphism
`𝒥_w : Ĥ_φ ≅ R_{w(φ),g}` induced by `∏_i Spec ℋ_{w^{−1}(i)} → Spec ℋ` on completions, where
`R_{w(φ),g}` is the completed local ring of `∏_i Spec ℋ_{w^{−1}(i)}` at w(φ) (equivalently the ring of
smooth deformations of the character w(φ) of T(K)), with tangent map compatible with the reordering
`w_2w_1^{−1}` (CEGGPS16 Lemma 3.22, p. 47; DING25 §3.2.2, p. 57).

## How to read the build

Layer 0 fixes the combinatorics of the induction (endpoint refinement families, block character
directions and their spanning identity) and the common presentation of 𝔈 and Q by the direct sum of
refinement quotients. Layer 1 constructs t_D by induction on n, gluing the two endpoint block
comparisons and extending to all refinements, and computes its kernel. Layer 2 builds π_min(D) and
π_fs(D), identifies their Ext¹ with Q, characterises π_min(D) intrinsically and computes its scalar
characters. Layer 3 compares parabolic blocks, restricts to one embedding, splits the kernel over the
embeddings and transports everything to the modified modules D_σ. Layer 4 proves the recovery
theorem. Layer 5 reformulates Theorem 3.21 through first-order Artinian algebras acting on the
universal extension. Layers 2 and 5 depend on Layer 1 but not on each other; Layer 4 depends on
Layer 3.

## Layer 0: Refinement parameters and the common presentation

### 0.1 Endpoint refinement families

For n ≥ 1 define the end family S_end = {w ∈ S_n : w(n) = n} and the start family S_start =
{w ∈ S_n : w(n) = 1}. With w(φ)_i = `φ_{w^{−1}(i)}`, these are exactly the refinements placing φ_n
last, respectively first; they are the refinements compatible with F and with G (DING25 proof of
Theorem 3.21, p. 48, where S_start is written `S′_{n−1}`). For an interior position 1 < i < n and a
split 1 ≤ j ≤ n − 1, the Weyl group S_j × `S_{n−j}` of the Levi of P_j contains a permutation w_j with
w_j(i) ∈ {1, n}: the transposition (1 i) when i ≤ j, the transposition (i n) when i > j (DING25
p. 49). *Needs:* Mathlib `Equiv.Perm`.

- S_end is the stabiliser of n, a subgroup isomorphic to `S_{n−1}` by restriction to {1,…,n−1}.
- For any c ∈ S_n with c(n) = 1, S_start = c·S_end (a left coset); hence both families have (n−1)!
  elements.
- For n ≥ 2 the two families are disjoint; for n = 1 they coincide.
- If w(n) = i is interior and w_j is the block permutation above, then w_jw lies in S_end ∪ S_start.

**Checks.**

- At n = 1 both families are {id}, of cardinality one.
- At n = 2, S_end = {id} and S_start = {(1 2)}; the identity is not in S_start, so the two endpoint
  comparisons in rank two are attached to different refinements.
- At n = 3 each family has two elements. The 3-cycle w = (1 2 3) (1 ↦ 2 ↦ 3 ↦ 1) has w(3) = 1 and
  lies in S_start, although `w^{−1}(3)` = 2: replacing the condition w(n) = 1 by `w^{−1}(n)` = 1
  gives the wrong family. The 3-cycle (1 3 2) sends 3 to 2 and lies in neither family.
- At n = 4, i = 2: for j = 1 the block {2,3,4} contains n and w_1 = (2 4); for j = 3 the block
  {1,2,3} contains 1 and w_3 = (1 2). No single transposition works for every j, so the choice
  depends on the split.

### 0.2 Block character directions

For 0 ≤ j ≤ n and a, b ∈ H_char define the block tuple of (a, b) at j as the element of H_char^n
whose coordinate i (counted from 1) is a for i ≤ j and b for i > j. For 1 ≤ j ≤ n − 1 let
H_j ⊂ H_T be the set of block tuples at j and H_Z ⊂ H_T the set of constant tuples. Under
H_T ≅ H_char^n, H_j is the pull-back of Hom(K^× × K^×, E) along the two block determinants
t ↦ (t_1⋯t_j, `t_{j+1}⋯t_n`) of the Levi of P_j, and H_Z the pull-back along det (DING25 §2.1, p. 9;
Corollary 2.15 and (2.21), pp. 19–20; proof of Theorem 3.21, p. 49). Restricting a character of
the Levi quotient to the centre Z_j ≅ K^× × K^× of the Levi multiplies its two components by j and
n − j, which are invertible in E; so H_j is the space Ding writes Hom(Z_j(K), E) embedded in H_T,
and H_Z the space Hom(Z(K), E). *Needs:* Mathlib `LinearMap`, `Submodule`.

- The block tuple is E-linear in (a, b); its coordinate i is a if i ≤ j and b otherwise, including
  the boundary values j = 0 (constantly b) and j = n (constantly a).
- The block tuple of (a, a) is the constant tuple a; hence H_Z ⊂ H_j for every j.
- For 1 ≤ j ≤ n − 1, H_j has dimension 2(1 + d_K) and H_Z dimension 1 + d_K.
- H_j ⊂ `Hom_{P_j,g′}(T(K), E)` (TriangulineVarietyAndItsLocalModel §10.8), so the parabolic Weyl
  transport of Ding Corollary 2.15(2) and (3.30) applies to every element of H_j.

**Checks.**

- n = 3, j = 1: the block tuple is (a, b, b); for a ≠ b it is not constant, so H_1 ≠ H_Z.
- n = 3: the nonzero constant tuple (a, a, a) lies in H_1 ∩ H_2, so the sum H_Z + H_1 + H_2 is not
  direct.
- With the inequality reversed (a for i > j) the tuple at j = 1, n = 3 would be (b, a, a), the
  pull-back along the opposite block decomposition; the two agree only when a = b.
- For K = ℚ_p, a = v_p (the valuation character) and b = 0, the block tuple at j = 1, n = 2 is the
  character diag(t_1, t_2) ↦ v_p(t_1), which is smooth; with a = log_p it is not smooth.

### 0.3 Levi-centre character spanning

**Theorem.** For n ≥ 1 and any abelian group H_char, every v = (v_1,…,v_n) ∈ H_char^n equals the
constant tuple v_n plus the sum over j = 1,…,n−1 of the block tuples of (v_j − `v_{j+1}`, 0) at j.
Consequently H_T = H_Z + `Σ_{j=1}^{n−1}` H_j. The sum has overlaps along the constant tuples; it is
not a direct sum (DING25 proof of Theorem 3.21, (3.43) and the closing paragraph, pp. 49–50; the
printed direct-sum isomorphism (3.43) is false, see Source corrections, and only the spanning is
used).

*Proof sketch.* At coordinate i the block tuples at j ≥ i contribute `Σ_{j=i}^{n−1}(v_j − v_{j+1})` =
v_i − v_n; adding v_n gives v_i. For n = 1 only the constant term remains. *Needs:* §0.2.

**Checks.**

- n = 3: (a, b, c) = (c, c, c) + (a − b, 0, 0) + (b − c, b − c, 0).
- n = 3, d_K = 1: H_T has dimension 6, whereas the direct sum H_Z ⊕ H_1 ⊕ H_2 has dimension
  2 + 4 + 4 = 10, so (3.43) as printed fails; in general (2n − 1)(1 + d_K) ≠ n(1 + d_K) for n ≥ 2.
- n = 1: v = (v_1) is its own constant tuple and there are no block terms.

### 0.4 The refinement presentation

Define C = `⊕_{w∈S_n}` Q_w and the two E-linear maps

```text
R_D : C → 𝔈,   R_D = Σ_w ζ_w ∘ κ_w,
s_D : C → Q,   s_D = Σ_w a_w.
```

R_D is surjective by LocallyAnalyticRepresentationsOfLocalGroups LR.7 (ext-pi1, part (2): the map
(ζ_w)_w : ⊕_w H_T → 𝔈 is onto) and s_D is surjective by TriangulineVarietyAndItsLocalModel §12.8
(Ding Proposition 2.12). These are two different supplier facts; the inclusion Ker R_D ⊂ Ker s_D is
the content of Theorem 1.4, not of this construction (DING25 (2.14)–(2.16) and Proposition 2.12,
pp. 17–18; Proposition 3.8 and (3.17), pp. 38–39; (3.38), p. 47). *Needs:* LR.7 (zeta-w, ext-pi1,
ext-filtration); TriangulineVarietyAndItsLocalModel §§10.2–10.4, 12.8; Mathlib `LinearMap`.

- R_D restricted to the w-summand is ζ_w ∘ κ_w and s_D restricted to it is a_w.
- R_D and s_D are surjective.
- Relabelling refinements by a permutation of S_n permutes the summands of C and commutes with both
  maps.
- Ker R_D has dimension n!·n(1 + d_K) − n − (2^n − 1)d_K and Ker s_D has dimension
  n!·n(1 + d_K) − n − n(n+1)d_K/2; neither inclusion between them follows from dimensions.

**Checks.**

- n = 1: C = Q_1, and both maps are isomorphisms identifying Q with H_T = Hom(K^×, E).
- Replacing Q_w by Ext¹_w(D,D) and Q by Ext¹(D,D) breaks the presentation: R_D (through κ_w) kills
  the summand Ext¹_0(D,D) ⊂ Ext¹_w(D,D), but s_D does not, so no map t_D with t_D ∘ R_D = s_D could
  exist. At n = 3, d_K = 1, Ext¹_0(D,D) is a line (Q has dimension 9, Ext¹(D,D) dimension 10).
- Two summands carrying the same class of Q have difference in Ker s_D; whether that difference
  lies in Ker R_D is exactly what Theorem 1.4 decides.
- An element of a summand with κ_w-image zero is zero, since κ_w is injective on Q_w.

### Examples

For n = 2, S_end = {id}, S_start = {(1 2)}, H_T = H_Z + H_1, and C = Q_id ⊕ `Q_{(12)}` has dimension
4(1 + d_K) while 𝔈 and Q both have dimension 2 + 3d_K; for K = ℚ_p, C has dimension 8 and both
targets dimension 5.

### Dependencies

LocallyAnalyticRepresentationsOfLocalGroups LR.7; TriangulineVarietyAndItsLocalModel §§10.2–10.4,
10.8 and 12.8; Mathlib linear algebra and `Equiv.Perm`.

## Layer 1: Ding's comparison and its kernel

### 1.1 The kernel multiplicity coefficient

For n ≥ 1 define c_n = 2^n − (n(n+1)/2 + 1), computed in ℕ. Prove n(n+1)/2 + 1 ≤ 2^n for n ≥ 1
(by induction: the left side grows by n + 1 and the right side by 2^n ≥ n + 1), so the natural
subtraction agrees with the integer one (DING25 Remark 3.22(1), p. 50).

- c_n = 2^n − n(n+1)/2 − 1 as integers, for n ≥ 1.
- c_1 = c_2 = 0, c_3 = 1, c_4 = 5, c_5 = 16.
- `c_{n+1}` = 2c_n + n(n−1)/2 for n ≥ 1.

**Checks.**

- At n = 1 the bound is an equality (2 = 2) and c_1 = 0.
- c_3 = 1 and c_4 = 5; the misreading 2n for 2^n would give 6 − 7 < 0 at n = 3.
- c_5 = 16 = 2·5 + 6, matching the recursion.
- At n = 0 the bound also holds (1 ≤ 1) and c_0 = 0, and the recursion gives c_1 = 2c_0 + 0 = 0;
  rank zero is nevertheless excluded by (H), since GL_0 and ΦΓ_nc of rank zero carry no comparison.

### 1.2 Gluing the two endpoint comparisons

Let n ≥ 2 and assume Theorem 1.4 for all ranks < n (strong induction). Apply it to D_1 ∈
ΦΓ_nc(φ^1, h^1) and C_1 ∈ ΦΓ_nc(φ^1, h^2), where φ^1 = `(φ_1,…,φ_{n−1})`, h^1 = `(h_1,…,h_{n−1})` and
h^2 = (h_2,…,h_n) (TriangulineVarietyAndItsLocalModel §9.2), and to the rank-one modules. Through the
block isomorphisms ζ_F : 𝔈(D_1) × H_char ≅ 𝔈_F (LR.8, endpoint-amalgamation) and
κ_F : Q_F ≅ Q(D_1) × H_char (TriangulineVarietyAndItsLocalModel §10.7), define t_F : 𝔈_F → Q_F ↪ Q as the product of the
rank-(n−1) comparison of D_1 and the identity on H_char; define t_G : 𝔈_G → Q_G ↪ Q in the same way
from C_1 and `R_{K,E}(φ_nz^{h_1})`. Prove that t_F and t_G agree on `𝔈_{g′}` (Ding (3.18) and (2.13)
with g replaced by g′), and define τ_D : 𝔈 → Q as the unique map restricting to t_F and t_G, using
the exact sequence `0 → 𝔈_{g′} → 𝔈_F ⊕ 𝔈_G → 𝔈 → 0` with first map b ↦ (b, −b) (DING25 proof of
Theorem 3.21, (3.40)–(3.41), pp. 48–49; Proposition 3.13, p. 44). *Needs:* the induction hypothesis
(Theorem 1.4 in lower rank); §0.1; LR.8 (zeta-fp-bijective, endpoint-amalgamation); TriangulineVarietyAndItsLocalModel §§9.2,
10.5, 10.7.

- τ_D restricted to 𝔈_F is t_F and restricted to 𝔈_G is t_G.
- τ_D is determined by these two restrictions, since 𝔈_F + 𝔈_G = 𝔈.
- For every w ∈ S_end ∪ S_start, τ_D ∘ ζ_w ∘ κ_w = a_w on Q_w.

**Checks.**

- The pair (b, −b) with b ∈ `𝔈_{g′}` maps to t_F(b) − t_G(b) = 0; with the sign convention (b, b) the
  sum would be 2t_F(b), not zero, and the descent would fail.
- At n = 2 both blocks have rank one, both block comparisons are the identity of H_char × H_char
  under the parameter maps, and S_end ∪ S_start = S_2, so no further step is needed.
- For h = (3, 1, −2) at one embedding, the two rank-two blocks carry weights h^1 = (3, 1) and
  h^2 = (1, −2); using (3, 1) for C_1 changes the second comparison.
- Agreement on 𝔈_g alone does not suffice: `𝔈_{g′}` has dimension n + d_K, 𝔈_g only n, and the
  overlap in the exact sequence is `𝔈_{g′}`.

### 1.3 Compatibility with every refinement

**Theorem.** Under the induction hypothesis of §1.2, the glued map τ_D satisfies
τ_D ∘ ζ_w ∘ κ_w = a_w on Q_w for every w ∈ S_n, including those with 1 < w(n) < n (DING25 (3.42)–(3.43)
and the closing paragraph of the proof of Theorem 3.21, pp. 49–50).

*Proof sketch.* Let w(n) = i be interior. For each split j choose w_j as in §0.1, so w_jw lies in
S_end ∪ S_start, where §1.2 applies. On `κ_w^{−1}(H_j)` ⊂ `Ext¹_{F_{P_j},g′}` the parabolic Weyl
transport of Ding Corollary 2.15(2) (TriangulineVarietyAndItsLocalModel §10.8) and of (3.30) (LR.8, zeta-fp-bijective (3)) identifies
ζ_w ∘ κ_w with `ζ_{w_jw}` ∘ `κ_{w_jw}`, so the equation holds on `κ_w^{−1}(H_j)`. It also holds on
`κ_w^{−1}(H_Z)`. Theorem 0.3 shows these subspaces span Q_w. *Needs:* §§0.1–0.3, §1.2; LR.8
(zeta-fp-bijective); TriangulineVarietyAndItsLocalModel §10.8.

**Checks.**

- n = 3, w = (2 3) (so w(3) = 2): for j = 1 use w_1 = (2 3), giving w_1w = id ∈ S_end; for j = 2 use
  w_2 = (1 2), giving w_2w = (1 2)(2 3), which sends 3 to 1 and lies in S_start.
- The equation for w = (2 3) is not a formal consequence of those for S_end ∪ S_start: `𝔈_{(23)}` lies
  in the span of the endpoint images, but the equation compares two parametrisations of it,
  `ζ_{(23)}` ∘ `κ_{(23)}` and `a_{(23)}`, and needs the Weyl transport on each H_j.
- The spanning step needs only H_T = H_Z + ΣH_j, not a direct sum; at n = 3, d_K = 1 the direct sum
  would have dimension 10 > 6.

### 1.4 Ding's comparison theorem

**Theorem (DING25 Theorem 3.21, p. 48).** Assume (H). There is a unique E-linear map t_D : 𝔈 → Q
with t_D ∘ R_D = s_D; equivalently t_D ∘ ζ_w = a_w ∘ `κ_w^{−1}` on H_T for every w ∈ S_n. It is
surjective, and its restriction to 𝔈_w is the isomorphism a_w ∘ `κ_w^{−1}` ∘ `ζ_w^{−1}` onto Q_w. Under
the push-forward isomorphism 𝔈 ≅ Ext¹_G(A, π(φ,h)) (LR.7, ext-pi1 (3)) the same map is the comparison
for π(φ,h) (DING25 Remark 3.22(2), p. 50).

*Proof sketch.* Strong induction on n. For n = 1, 𝔈 = 𝔈_id, Q = Q_id, and t_D = `κ_1^{−1}` ∘ `ζ_1^{−1}`.
For n ≥ 2, §1.2 builds τ_D from the lower-rank comparisons and §1.3 proves every refinement
equation, so τ_D ∘ R_D = s_D. Uniqueness holds because R_D is onto; surjectivity because s_D is.
*Needs:* §§0.4, 1.2, 1.3; Mathlib `LinearMap.quotKerEquivOfSurjective` for the induced isomorphism
𝔈/Ker t_D ≅ Q.

- t_D ∘ ζ_w ∘ κ_w = a_w for every w.
- Every element of Q is t_D(b) for some b ∈ 𝔈.
- Two linear maps 𝔈 → Q satisfying all refinement equations are equal.
- Transport through 𝔈 ≅ Ext¹_G(A, π(φ,h)) preserves t_D.

**Checks.**

- n = 1: t_D is the identification of `Ext¹_{K^×}(φ_1z^{h_1}, φ_1z^{h_1})` ≅ Hom(K^×, E) ≅ Q and its
  kernel is zero.
- For b = ζ_w(ψ), t_D(b) = `a_w(κ_w^{−1}(ψ))`, independently of how b is written in the presentation.
- For c ∈ Ker R_D, s_D(c) = t_D(R_D(c)) = 0: this inclusion is the theorem, not an input.
- Pushing V into π(φ,h) and evaluating on any ζ_w(ψ) gives the same element of Q.

### 1.5 Dimension of the kernel

**Theorem (DING25 Remark 3.22(1), p. 50).** Assume (H). dim_E Ker(t_D) = c_n·d_K. In particular
the kernel vanishes for n ≤ 2, and for n = 3 it has dimension d_K.

*Proof sketch.* Rank–nullity for the surjection t_D, with dim 𝔈 = n + (2^n − 1)d_K (LR.7,
ext-pi1) and dim Q = n + n(n+1)d_K/2 (TriangulineVarietyAndItsLocalModel §10.4): the difference is (2^n − 1 − n(n+1)/2)d_K = c_n d_K,
using §1.1. *Needs:* §§1.1, 1.4; Mathlib `LinearMap.finrank_range_add_finrank_ker`.

**Checks.**

- K = ℚ_p: (dim 𝔈, dim Q, dim Ker) = (2, 2, 0), (5, 5, 0), (10, 9, 1), (19, 14, 5), (36, 20, 16)
  for n = 1,…,5.
- n = 3, d_K = 2: dim 𝔈 = 17, dim Q = 15, dim Ker = 2.
- With 2n in place of 2^n the formula would be negative at n = 3; with the full Ext¹(D,D) in place of
  Q (dimension 1 + n²d_K) it would give 10 − 10 = 0 at n = 3, K = ℚ_p, hiding the Hodge parameter.

### 1.6 Transversality of the kernel

**Theorem (DING25 Lemma 3.23, p. 50).** Assume (H). For every w ∈ S_n, Ker(t_D) ∩ 𝔈_w = 0.
Consequently Ker(t_D) ∩ `𝔈_{g′}` = 0 and Ker(t_D) ∩ 𝔈_g = 0, and t_D maps 𝔈_w isomorphically onto
Q_w and 𝔈_g onto Q_g.

*Proof sketch.* On 𝔈_w, t_D = a_w ∘ `κ_w^{−1}` ∘ `ζ_w^{−1}` is injective. The other statements follow from
𝔈_g ⊂ `𝔈_{g′}` ⊂ 𝔈_w and from Q_g = `κ_w^{−1}(Hom_sm)` (TriangulineVarietyAndItsLocalModel §10.4). *Needs:* §1.4; LR.7 (ext-filtration).

**Checks.**

- n = 3, K = ℚ_p: the kernel is a line meeting each of the six 6-dimensional subspaces 𝔈_w in zero,
  although these subspaces span the 10-dimensional 𝔈.
- A dimension count alone cannot give transversality: a line in a 10-dimensional space can lie in a
  6-dimensional subspace.
- n ≤ 2: the statement is empty since the kernel is zero.

### Examples

For n = 3, d_K = 2 the kernel is 2-dimensional; each 𝔈_w is 9-dimensional and meets it in zero. Each
proper maximal parabolic has block ranks (2, 1) or (1, 2), so by §3.1 the kernel meets each `𝔈_{F_P}`
in zero as well: the new parameters live in relations between the parabolic images, not inside any
of them.

### Dependencies

Layer 0; LocallyAnalyticRepresentationsOfLocalGroups LR.7–LR.8; TriangulineVarietyAndItsLocalModel
§§9.2, 10.4–10.8; Mathlib rank–nullity and `LinearMap.quotKerEquivOfSurjective`.

## Layer 2: The minimal representation and its scalar characters

### 2.1 The minimal and finite-slope kernel extensions

Let 𝒦_D = Ker(t_D) ⊂ 𝔈. Define π_min(D) as the tautological extension
`0 → V → π_min(D) → 𝒦_D ⊗_E A → 0` whose class in Ext¹_G(𝒦_D ⊗ A, V) ≅ Hom_E(𝒦_D, 𝔈) is the
inclusion, and π_fs(D) as its push-out along V ↪ π(φ,h). Prove π_fs(D) ≅ π_min(D) ⊕_V π(φ,h), that
the class of π_fs(D) is the inclusion of 𝒦_D transported through 𝔈 ≅ Ext¹_G(A, π(φ,h)), and that
either representation determines the subspace 𝒦_D ⊂ 𝔈, because End_G(π(φ,h)) → End_G(V) → End_G(A)
are isomorphisms onto E (DING25 §3.1.1, p. 33; Remark 3.9 and (3.16), p. 39; the definition before
(3.44) and (3.44), p. 50). *Needs:* §1.4; LR.1 (self-extension-dual-numbers, ext1-extensions); LR.7
(pi-alg, ps1-and-pi1, finite-slope-amalgam, ext-pi1).

- π_min(D) is an admissible locally analytic extension of 𝒦_D ⊗ A ≅ `A^{⊕c_n d_K}` by V.
- Its class sends k ∈ 𝒦_D to k ∈ 𝔈; changing a basis of 𝒦_D transports the same class.
- π_fs(D) is the amalgamated sum of π_min(D) and π(φ,h) over V, with the same quotient 𝒦_D ⊗ A.
- If π_min(D) ≅ π_min(D′) as G-representations, then 𝒦_D = `𝒦_{D′}` as subspaces of 𝔈; the same for
  π_fs.

**Checks.**

- n = 2: 𝒦_D = 0, so π_min(D) ≅ V and π_fs(D) ≅ π(φ,h).
- n = 3, K = ℚ_p: the quotient is a single copy of A and the class is a nonzero generator of the
  line 𝒦_D, so π_min(D) is a nonsplit extension of A by V.
- If 𝒦_D ≠ 0, the split extension represents the zero map 𝒦_D → 𝔈, not the inclusion; so the
  split representation V ⊕ (𝒦_D ⊗ A) is not π_min(D).
- Passing to π_fs(D) changes the subobject from V to π(φ,h) but not the quotient 𝒦_D ⊗ A.

### 2.2 Push-forward to the minimal representation

Define f_D : 𝔈 → Ext¹_G(A, π_min(D)) as push-forward along V ↪ π_min(D). Prove that
`0 → 𝒦_D → 𝔈 → Ext¹_G(A, π_min(D)) → 0` is exact, the first map being the connecting map of the
Hom–Ext sequence of `0 → V → π_min(D) → 𝒦_D ⊗ A → 0` composed with Hom_G(A, 𝒦_D ⊗ A) ≅ 𝒦_D, which is
the inclusion. Surjectivity of f_D is a separate input: it uses Ding Lemma 3.5(2) (pull-back along a
nonsplit self-extension of A is bijective on Ext¹(·, `C(I,s_{i,σ})`)) and dévissage over the
constituents (DING25 (3.45) and the following paragraph, p. 50). Define t_D^min :
Ext¹_G(A, π_min(D)) ≅ Q as the induced isomorphism, so t_D^min ∘ f_D = t_D. For every named subspace
𝔈_* (* = g, w, F_P, σ, (σ, F_P)) define 𝔈_*^min = f_D(𝔈_*), an image and not a new filtration
(DING25 p. 50; Corollary 3.25(2), p. 51). *Needs:* §2.1; LR.1 (ext-groups: the covariant long exact
sequence); LR.7 (constituent-ext-lines (2), principal-series-constituents); Mathlib
`LinearMap.quotKerEquivOfSurjective`.

- f_D is functorial push-forward along V ↪ π_min(D), with kernel 𝒦_D.
- f_D is surjective.
- t_D^min is the unique linear equivalence with t_D^min ∘ f_D = t_D.
- 𝔈_*^min is the range of f_D restricted to 𝔈_*.

**Checks.**

- If 𝒦_D = 0 then π_min(D) = V and f_D is the identity.
- For k ∈ 𝒦_D, f_D(k) is the split class; for b with t_D(b) ≠ 0, f_D(b) ≠ 0.
- f_D restricted to 𝔈_w is injective by §1.6, although f_D itself has a kernel for n ≥ 3.
- The left-exact Hom–Ext sequence (3.45) alone stops at Ext¹_G(A, π_min(D)) without its cokernel
  term; surjectivity needs the constituent input, since Ext¹_G(A, 𝒦_D ⊗ A) ≠ 0.

### 2.3 Refinement comparisons after push-forward

**Theorem (DING25 Corollary 3.24, p. 50).** Assume (H). For * = g and for * = w, every w ∈ S_n,
t_D^min restricts to an isomorphism 𝔈_*^min ≅ Q_*. The maps ζ_w^min = f_D ∘ ζ_w are isomorphisms
H_T ≅ 𝔈_w^min with t_D^min ∘ ζ_w^min = a_w ∘ `κ_w^{−1}`.

*Proof sketch.* f_D is injective on 𝔈_w and 𝔈_g by §1.6; compose with §1.4 and with Q_g =
`κ_w^{−1}(Hom_sm(T(K),E))` (TriangulineVarietyAndItsLocalModel §10.4, LR.7 self-extensions (1)). *Needs:* §§1.6, 2.2.

**Checks.**

- The g-images have dimension n and the w-images dimension n(1 + d_K) on both sides.
- n = 3, K = ℚ_p: 𝔈^min has dimension 9 = dim Q, and every 𝔈_w^min still has dimension 6.
- The images are taken in the quotient Q; in the full Ext¹(D,D) the g-space would have dimension
  1 + n(n−1)d_K/2, not n.

### 2.4 Intrinsic characterisation

**Theorem (DING25 Corollary 3.25, p. 51).** Assume (H). Among admissible locally analytic extensions
`0 → V → Π → A^{⊕c_n d_K} → 0` of G-representations, π_min(D) is, up to G-isomorphism, the unique one
such that (1) soc_G Π ≅ A and soc_G(Π/A) ≅ soc_G(V/A), and (2) there is a linear bijection
Ext¹_G(A, Π) ≅ Q whose composite with the push-forward f : 𝔈 → Ext¹_G(A, Π) satisfies, for every
w ∈ S_n, that f ∘ ζ_w is an isomorphism onto its image and the bijection composed with f ∘ ζ_w equals
a_w ∘ `κ_w^{−1}`.

*Proof sketch.* π_min(D) satisfies (1) because nonzero coefficient directions are nonsplit and Ding
Lemma 3.5(2) controls lifts through the constituents `C(I,s_{i,σ})`; it satisfies (2) by §§2.2–2.3.
Conversely, (1) identifies the first two socle layers of Π with those of V and recovers a coefficient
subspace L ⊂ 𝔈 with Π the tautological extension of L ⊗ A by V. Condition (2) makes the composite
𝔈 → Q agree with t_D on every 𝔈_w; since the 𝔈_w span 𝔈, it equals t_D, whose kernel is the kernel
of f, which is L; so L = 𝒦_D. *Needs:* §§2.1–2.3; LR.7 (principal-series-constituents,
ps1-and-pi1, constituent-ext-lines).

**Checks.**

- n = 2: the conditions force Π = V, the unique extension of `A^{⊕0}` by V.
- For n = 3, K = ℚ_p and a line L ⊂ 𝔈 with L ∩ `𝔈_{g′}` = 0 and L ≠ 𝒦_D, the tautological extension
  Π_L of A by V with class L has the socle layers of (1) and the right quotient multiplicity, but the
  push-forward 𝔈 → Ext¹_G(A, Π_L) kills L, while a bijection as in (2) forces the composite to be t_D,
  whose kernel is 𝒦_D ≠ L; so Π_L violates (2).
- The split extension V ⊕ `A^{⊕c_n d_K}` violates (1): its socle is `A^{⊕(1 + c_n d_K)}`.

### 2.5 The determinant-normalised character

Define the weight-sum tuple |λ| ∈ `ℤ^{Σ_K}` by |λ|_σ = Σ_i `λ_{i,σ}` and the character
χ_D = `z^{|λ|}·|·|_K^{N}·∏_i` φ_i of K^×, with N = n(n−1)/2. Prove that χ_D is the central character
of A (the factor |·|_K^N is the central character of η) and that det D ≅ `R_{K,E}(χ_D ε^{−N})`, the
exponent of `χ_Dε^{−N}` at σ being |λ|_σ − N = Σ_i `h_{i,σ}` (DING25 §2.1, p. 9; §3.1.2, p. 34; the
paragraph before Proposition 3.26, p. 51, where the exponent is printed as a single sum over i and
σ, see Source corrections). *Needs:* PhiGammaModulesAndIwasawaCohomology §7.1 (`characterModule`,
the Tate character ε); TriangulineVarietyAndItsLocalModel §9.1 (the triangulation of D with graded parameters `φ_{w^{−1}(i)}z^{h_i}`);
LR.7 (pi-alg).

- χ_D is a product of an algebraic, an unramified and a smooth factor, with each embedding indexed
  separately.
- Permuting the φ_i leaves χ_D unchanged.
- The scalar matrix xI_n acts on A by χ_D(x).
- χ_D `ε^{−N}` is the parameter of the rank-one module det D.

**Checks.**

- n = 1: N = 0 and χ_D = `φ_1z^{h_1}`, the parameter of D itself.
- n = 2, two embeddings, λ_σ = (2, 0), λ_τ = (5, 1): the exponent tuple is (2, 6), not the scalar 8
  or the constant tuple (8, 8).
- n = 3: N = 3; multiplying by `ε^{−3}` cancels |·|_K^3 and lowers each embedding exponent by 3,
  turning |λ|_σ = `h_{1,σ}` + `h_{2,σ}` + `h_{3,σ}` + 3 into Σ_i `h_{i,σ}`.
- Swapping φ_1 and φ_2 leaves their product, hence χ_D, unchanged.

### 2.6 Central and infinitesimal characters

**Theorem (DING25 Proposition 3.26, p. 51).** Assume (H). The centre Z(G) ≅ K^× acts on π_min(D) by
the scalar character χ_D, and the centre 𝒵_K of `U(gl_{n,Σ_K})` acts on π_min(D) by the scalar
character ξ_λ, the infinitesimal character of L(λ).

*Proof sketch.* 𝒵_K acts on every PS(w(φ),h) = `F^{GL_n}_{B⁻}(M⁻(−λ), w(φ)η)` by ξ_λ, because it acts
on the Verma module M⁻(−λ) by a scalar; hence by ξ_λ on PS_1 and on the quotient V of their
amalgam. For b̃ ∈ 𝔈 and a ∈ 𝒵_K, a − ξ_λ(a) kills V and induces b̃ ↠ A → b̃, which is α(a)·ε since
Hom_G(A, V) = E; this defines d_inf : 𝔈 → `X_{ξ_λ}`, the tangent space of Spec 𝒵_K at ξ_λ. The Sen
weights of a first-order deformation, `h_{i,σ}` + `a_{i,σ}ε`, define d_Sen : Q → X_h, the tangent space
of Spec `U(t_{Σ_K})` at h (defined on Ext¹(D,D), it kills Ext¹_g(D,D) ⊃ Ext¹_0(D,D) and so factors
through Q). With the Harish-Chandra
isomorphism normalised so that h corresponds to ξ_λ, the induced map HC : X_h → `X_{ξ_λ}` is bijective
because h is regular: at each σ the Jacobian of the elementary symmetric polynomials at
`(h_{1,σ},…,h_{n,σ})` is ± the Vandermonde determinant `∏_{i<j}(h_{i,σ} − h_{j,σ})` ≠ 0. On each 𝔈_w,
d_inf ∘ ζ_w ∘ κ_w = HC ∘ d_Sen ∘ a_w, by the closed-induction description of ζ_w (Remark 3.7) and the
Jacquet–Emerton module of the induced extension; since the 𝔈_w span 𝔈, d_inf = HC ∘ d_Sen ∘ t_D.
For π_min(D) the off-diagonal part of a − ξ_λ(a) is d_inf restricted to 𝒦_D, which vanishes. The
central character is treated in the same way, with the determinant tangent in place of d_Sen
(DING25 Proposition 3.26 and (3.46)–(3.47), pp. 51–52). *Needs:* §§1.4, 2.1, 2.5; LieHighestWeight
Layers 3, 7, 9 and the split gl_n Harish-Chandra contract above; LR.5 (orlik-strauch-functor); LR.6
(closed-induction, jacquet-emerton-functor); LR.7 (principal-series-ps, zeta-w); PhiGammaModulesAndIwasawaCohomology §§7.2a,
7.3 (Sen weights and character weights over E[ε]/ε²).

**Checks.**

- n = 1: π_min(D) = `φ_1z^{h_1}`, Z(G) = G acts by χ_D = `φ_1z^{h_1}`, and 𝒵_K = `U(t_{Σ_K})` acts by
  the derivative of `z^{h_1}`.
- The tangent map of the invariant-polynomial map is singular at non-regular points: for n = 2 and
  x_1 = x_2 the Jacobian of (x_1 + x_2, x_1x_2), with rows (1, 1) and (x_2, x_1), has determinant
  x_1 − x_2 = 0; polynomiality of the invariant ring alone does not give bijectivity.
- For K = ℚ_p and the self-extension `I_{B⁻}(w(φ)ηz^λ(1 + ψε))` of A with ψ = log_p ∘ det, the
  identity matrix of gl_n acts with nonzero ε-part, so d_inf ≠ 0 on its image in 𝔈; for smooth ψ,
  d_inf = 0. The scalar action on π_min(D) is a property of 𝒦_D, not of every extension of A by V.
- The normalisation h ↔ ξ_λ (λ = h − θ) differs from the ρ-shifted standard Harish-Chandra map by the
  central shift (n−1)/2·(1,…,1) at each σ; using the unshifted map would send h to the wrong
  character.

### Examples

For n = 3, K = ℚ_p, π_min(D) is a nonsplit extension of one copy of A by V, Ext¹_G(A, π_min(D)) has
dimension 9 = dim Q, Z(G) acts by φ_1φ_2φ_3 `z^{h_1+h_2+h_3+3}|·|^3` and 𝒵_K by ξ_λ.

### Dependencies

Layer 1; LocallyAnalyticRepresentationsOfLocalGroups LR.1, LR.5–LR.7; TriangulineVarietyAndItsLocalModel
§§9.1, 10.4; PhiGammaModulesAndIwasawaCohomology §§7.1, 7.2a, 7.3; LieHighestWeight Layers 3, 7, 9.

## Layer 3: Parabolic and embedding compatibility

### 3.1 Compatibility with parabolic induction

**Theorem (DING25 Proposition 3.27, pp. 52–53).** Assume (H). Let P be a standard parabolic with Levi
blocks `GL_{n_1}` × ⋯ × `GL_{n_r}`, F_P a P-filtration of D and M_i = gr_i F_P (of rank n_i, in
ΦΓ_nc of the induced parameters). Then t_D restricts to a surjection `t_{D,F_P}` : `𝔈_{F_P}` ↠ `Q_{F_P}`,
and the square with top ∏_i `t_{M_i}` : ∏_i 𝔈(M_i) → ∏_i Q(M_i), left side `ζ_{F_P}` (LR.8,
zeta-fp-bijective), right side `κ_{F_P}^{−1}` (TriangulineVarietyAndItsLocalModel §10.7) and bottom `t_{D,F_P}` commutes. Hence `ζ_{F_P}`
induces ⊕_i `Ker(t_{M_i})` ≅ Ker(t_D) ∩ `𝔈_{F_P}`, an identification of embedded subspaces.

*Proof sketch.* `Q_{F_P}` is spanned by the Q_w with T_w compatible with F_P (Ding Corollary 2.14(2),
TriangulineVarietyAndItsLocalModel §10.7 with §12.8) and `𝔈_{F_P}` by the corresponding 𝔈_w (LR.8, zeta-fp-bijective (4)). Check the
square on each compatible refinement using (2.20) and (3.28), then extend linearly. *Needs:* §1.4;
LR.8 (zeta-fp, zeta-fp-bijective); TriangulineVarietyAndItsLocalModel §§10.6–10.7, 12.8.

**Checks.**

- P = G: the square is t_D itself.
- P = B: every n_i = 1, all block kernels vanish, and the statement is §1.6 for the refinement
  attached to F_P.
- n = 3 with block ranks (2, 1): c_2 + c_1 = 0, so Ker(t_D) ∩ `𝔈_{F_P}` = 0 although Ker(t_D) has
  dimension d_K.
- n = 4 with block ranks (3, 1): the intersection has dimension c_3 d_K = d_K; with ranks (2, 2) it
  is zero.

### 3.2 The parabolic minimal subrepresentation

Set `𝒦_{D,F_P}` = Ker(t_D) ∩ `𝔈_{F_P}` and define `π_{min,F_P}(D)` ⊂ π_min(D) as the tautological extension
of `𝒦_{D,F_P}` ⊗ A by V. Prove: (i) it is the largest subrepresentation of π_min(D) obtained by
push-forward of an extension of A-isotypic quotient by `π_{F_P}(φ,h)` along `π_{F_P}(φ,h)` ↪ V; (ii)
there is an injection `I_{P⁻}^G((⊠̂_i π_min(M_i)) ⊗_E (ε^{−1} ∘ θ^P)) ↪ π_{min,F_P}(D)`, with ⊠̂ the
completed external tensor product and `I_{P⁻}^G` Emerton's closed induction; (iii) its quotient by V is
`A^{⊕ d_K Σ_i c_{n_i}}`; (iv) after push-forward to the minimal representations, all four arrows of
the square of §3.1 become isomorphisms, the lower left being the image of `𝔈_{F_P}` in
Ext¹_G(A, `π_{min,F_P}(D)`) (DING25 Remark 3.28 and its diagram, p. 53). *Needs:* §§2.1–2.2, 3.1; LR.0
(completed-external-tensor); LR.1 (self-extension-dual-numbers: restriction to a subspace); LR.6
(closed-induction); LR.8 (pi-fp, zeta-fp).

- The injection into π_min(D) is the identity on V and the inclusion `𝒦_{D,F_P}` ⊗ A ↪ 𝒦_D ⊗ A on
  quotients.
- Every subextension of π_min(D) pushed forward from `π_{F_P}(φ,h)` factors through `π_{min,F_P}(D)`.
- The induced block minimal representations inject with the twist `ε^{−1}` ∘ θ^P.
- The block square of §3.1 consists of linear isomorphisms after push-forward.

**Checks.**

- P = B: `π_{min,F_P}(D)` = V.
- P = G: `π_{min,F_P}(D)` = π_min(D).
- n = 3, block ranks (2, 1) or (1, 2): `π_{min,F_P}(D)` = V, although π_min(D) ≠ V.
- n = 4, ranks (3, 1): quotient multiplicity d_K, against 5d_K for π_min(D); maximality is among
  push-forward subextensions, not among all subrepresentations (π_min(D) contains the tautological
  extension of L ⊗ A by V for every line L ⊂ 𝒦_D, and only those with L ⊂ `𝔈_{F_P}` come from
  `π_{F_P}(φ,h)`).

### 3.3 Comparison for one embedding

Fix σ ∈ Σ_K and define `t_{D,σ}` : 𝔈_σ → Q_σ as the restriction of t_D. Prove that t_D(𝔈_σ) ⊂ Q_σ
(the σ-refinement generators of 𝔈_σ map into Q_σ, by the σ-surjection of LR.9 sigma-ext-pi1 (2) and
the identification `Q_{σ,w}` ≅ Hom_σ(T(K),E) of TriangulineVarietyAndItsLocalModel §11.2), that `t_{D,σ}` is surjective (Ding Corollary
2.40, TriangulineVarietyAndItsLocalModel §12.16), that `Ker(t_{D,σ})` = Ker(t_D) ∩ 𝔈_σ has dimension c_n, independent of d_K, and that
for every P-filtration the σ-block square commutes and induces ⊕_i `Ker(t_{M_i,σ})` ≅
`Ker(t_{D,σ})` ∩ `𝔈_{σ,F_P}` (DING25 (3.50), Corollary 3.29 and Remark 3.30(1), pp. 53–54). *Needs:*
§§1.4, 1.5, 3.1; LR.9 (sigma-ext-pi1, sigma-parabolic); TriangulineVarietyAndItsLocalModel §§11.1–11.2, 12.16.

- `t_{D,σ}(ζ_w(ψ))` = `a_w(κ_w^{−1}(ψ))` for ψ ∈ Hom_σ(T(K), E).
- `Ker(t_{D,σ})` = Ker(t_D) ∩ 𝔈_σ.
- dim `Ker(t_{D,σ})` = (n + 2^n − 1) − (n + n(n+1)/2) = c_n.
- The σ-block square commutes for `𝔈_{σ,F_P}` with direct-sum block kernels.

**Checks.**

- K = ℚ_p: 𝔈_σ = 𝔈, Q_σ = Q and `t_{D,σ}` = t_D.
- n = 3, d_K = 2: each σ-kernel is a line, against a 2-dimensional full kernel.
- P = B: the σ-parabolic kernel is zero.
- A first-order deformation varying the Sen weight only at σ can lie in Q_σ; one varying the weight
  at τ ≠ σ cannot, since the σ condition is de Rham away from σ, not at σ.

### 3.4 The minimal representation for one embedding

Through Ext¹_σ(A, `π_{1,σ}(φ,h)`) ≅ 𝔈_σ (LR.9, sigma-ext-pi1) view `𝒦_{D,σ}` = `Ker(t_{D,σ})` as a subspace
of Ext¹_σ(A, `π_{1,σ}(φ,h)`) and define π_min(D)_σ as the tautological extension
`0 → π_{1,σ}(φ,h) → π_min(D)_σ → 𝒦_{D,σ} ⊗ A → 0`. Prove that its natural map to π_min(D) is
injective and that its image is the maximal `g_{Σ_K∖{σ}}`-algebraic subrepresentation of π_min(D)
(DING25 Remark 3.30(2), p. 54). *Needs:* §§2.1, 3.3; LR.1 (self-extension-dual-numbers); LR.9
(sigma-analytic-representation, pi1-sigma, sigma-ext-pi1).

- π_min(D)_σ is `g_{Σ_K∖{σ}}`-algebraic, with class the inclusion `𝒦_{D,σ}` ↪ Ext¹_σ(A, `π_{1,σ}`).
- The injection into π_min(D) restricts to `π_{1,σ}` ↪ V and induces `𝒦_{D,σ}` ↪ 𝒦_D on quotients.
- Every `g_{Σ_K∖{σ}}`-algebraic subrepresentation of π_min(D) lies in its image.
- Its quotient by `π_{1,σ}` is `A^{⊕c_n}`.

**Checks.**

- K = ℚ_p: π_min(D)_σ = π_min(D).
- n = 2: π_min(D)_σ = `π_{1,σ}(φ,h)`, which is all of V only when d_K = 1.
- n = 3: for every σ the quotient is one copy of A.
- For d_K > 1, replacing `π_{1,σ}` by V would include constituents `C(I,s_{i,τ})` with τ ≠ σ, which are
  not `g_{Σ_K∖{σ}}`-algebraic, violating maximal partial algebraicity.

### 3.5 Decomposition over the embeddings

**Theorem (DING25 Corollary 3.31, p. 54).** Assume (H). The inclusions induce an isomorphism
`⊕_{σ∈Σ_K}` `Ker(t_{D,σ})` ≅ Ker(t_D). Consequently π_min(D) is isomorphic to the amalgamated sum of the
π_min(D)_σ, σ ∈ Σ_K, over their common socle A (not their direct sum).

*Proof sketch.* Since Ker(t_D) ∩ 𝔈_g = 0 (§1.6), Ker(t_D) and each `Ker(t_{D,σ})` inject into 𝔈/𝔈_g.
By ⊕_σ(𝔈_σ/𝔈_g) ≅ 𝔈/𝔈_g (LR.9, sigma-ext-pi1 (3)) the sum map ⊕_σ `Ker(t_{D,σ})` → Ker(t_D) is
injective; both sides have dimension c_n d_K (§§1.5, 3.3). For the representations: V is the
amalgamated sum of the `π_{1,σ}(φ,h)` over A, since each constituent `C(I,s_{i,σ})` of V/A lies in exactly
one `π_{1,σ}` (LR.7, ps1-and-pi1; LR.9, pi1-sigma); combine with the class-inclusion description of
§§2.1 and 3.4. *Needs:* §§1.5, 1.6, 3.3, 3.4; LR.9 (sigma-ext-pi1, pi1-sigma); LR.7 (ps1-and-pi1).

**Checks.**

- n = 3, d_K = 2: two σ-kernel lines spanning the 2-dimensional kernel.
- The shared 𝔈_g must be divided out first: 𝔈_σ ∩ 𝔈_τ ⊃ 𝔈_g ≠ 0, so ⊕_σ 𝔈_σ → 𝔈 is not injective.
- Quotient multiplicities add (c_n per embedding, c_n d_K in total) while A is counted once; the
  direct sum of the π_min(D)_σ would have socle `A^{⊕d_K}`.

### 3.6 Comparison with the modified module

Let D_σ be the modified module (PadicHodgeTheory §4.5, supplier contract above; TriangulineVarietyAndItsLocalModel §9.6) and
T_σ : Q_σ(D) ≅ Q_σ(D_σ) the quotient isomorphism of TriangulineVarietyAndItsLocalModel §11.7 (Ding Corollary 2.27(1)). Define
`t_{D_σ}` = T_σ ∘ `t_{D,σ}` : 𝔈_σ ↠ Q_σ(D_σ). Prove: (1) `Ker(t_{D_σ})` = `Ker(t_{D,σ})`; (2) the
surjection ⊕_w `Q_{σ,w}(D_σ)` ↠ Q_σ(D_σ) factors through `t_{D_σ}` composed with
(ζ_w ∘ κ_w)_w : ⊕_w `Q_{σ,w}(D_σ)` → Ext¹_σ(A, `π_{1,σ}`) ↠ 𝔈_σ, where κ_w now uses the parameters
`w(φ)z^{𝔗_σ(h)}` of D_σ; consequently `Ker(t_{D_σ})` depends only on the isomorphism class of D_σ; (3)
for every P-filtration, with `M_{i,σ}` = 𝔗_σ(M_i), the block square transports and gives
⊕_i `Ker(t_{M_{i,σ}})` ≅ `Ker(t_{D_σ})` ∩ `𝔈_{σ,F_P}` ((3.51)) (DING25 §2.2, Proposition 2.5 and (2.7),
p. 13; §3.2.1, Corollary 3.32 and (3.51), p. 55). *Needs:* §§3.3, 3.1; PadicHodgeTheory §4.5 (and the
contract above); TriangulineVarietyAndItsLocalModel §§9.6, 11.4, 11.6–11.7, 12.16.

- `t_{D_σ}` is `t_{D,σ}` followed by the genuine isomorphism T_σ.
- `Ker(t_{D_σ})` = `Ker(t_{D,σ})` as subspaces of the fixed 𝔈_σ.
- An isomorphism D_σ ≅ D′_σ identifies the two σ-refinement presentations, hence `Ker(t_{D_σ})` =
  `Ker(t_{D′_σ})`.
- The transported block square identifies embedded parabolic kernels.

**Checks.**

- K = ℚ_p: D_σ = D, T_σ is the identity and nothing changes.
- If D_σ ≅ D′_σ, the kernels are equal subspaces of 𝔈_σ, not merely of equal dimension.
- Varying the Hodge filtration of D at τ ≠ σ while keeping D_σ fixed (possible by TriangulineVarietyAndItsLocalModel §9.9) leaves
  `Ker(t_{D,σ})` unchanged.
- For d_K > 1 and n > 1 the weights of D_σ at τ ≠ σ are all equal to `h_{n,τ}`, so D_σ ∉ ΦΓ_nc(φ,h):
  Theorem 1.4 cannot be reapplied to D_σ, and its comparison is the transported one. For two
  embeddings and weights (3, 1, 0) at τ, D_σ has weights (0, 0, 0) at τ.

### 3.7 Minimal Ext isomorphisms for the modified module

**Theorem (DING25 Corollary 3.33 and diagram (3.52), p. 55).** Assume (H). There are natural
isomorphisms Ext¹_σ(A, π_min(D)_σ) ≅ Q_σ(D) ≅ Q_σ(D_σ), the first induced by `t_{D,σ}` and the second by
T_σ. For every P-filtration F_P they fit in the commutative diagram (3.52), whose lower left term is
the image of `Ext¹_{σ,F_P}(A, π_{1,σ}(φ,h))` in Ext¹_σ(A, `π_{min,F_P}(D)_σ`), with `π_{min,F_P}(D)_σ` the
maximal `g_{Σ_K∖{σ}}`-algebraic subrepresentation of `π_{min,F_P}(D)`; every arrow of that diagram is an
isomorphism.

*Proof sketch.* Repeat §2.2 inside the `g_{Σ_K∖{σ}}`-algebraic extensions, with the same constituent
surjectivity input; transport the target by T_σ and apply §3.6(3). *Needs:* §§2.2, 3.2, 3.4, 3.6; LR.9
(sigma-ext-pi1, sigma-parabolic); TriangulineVarietyAndItsLocalModel §11.7.

**Checks.**

- K = ℚ_p: the statement is §2.2 for π_min(D) and the identity T_σ.
- n = 2: π_min(D)_σ = `π_{1,σ}` and Ext¹_σ(A, `π_{1,σ}`) ≅ Q_σ has dimension 2 + 3 = 5.
- n = 3: Ext¹_σ(A, π_min(D)_σ) has dimension 3 + 7 − 1 = 9 = 3 + 6 = dim Q_σ.

### Examples

For n = 4, d_K = 1 and the filtration with block ranks (3, 1), `π_{min,F_P}(D)` has quotient one copy of
A, receiving the closed induction of π_min(M_1) ⊠ M_2 twisted by `ε^{−1}` ∘ θ^P = 1 ⊠ ε^3, while
π_min(D) has quotient `A^{⊕5}`. For n = 3, d_K = 2, π_min(D) is the amalgam over A of two extensions
π_min(D)_σ, π_min(D)_τ, each with quotient A.

### Dependencies

Layers 1–2; LocallyAnalyticRepresentationsOfLocalGroups LR.0, LR.1, LR.6–LR.9;
TriangulineVarietyAndItsLocalModel §§9.6, 9.9, 10.6–10.7, 11.1–11.7, 12.8, 12.16; PadicHodgeTheory
§4.5.

## Layer 4: Recovery of the modified Hodge parameters

### 4.1 The embedded relation detected by the representation

Fix σ and n ≥ 3, and let F = (D_1 ⊂ D), G = (`R_{K,E}(φ_nz^{h_1})` ⊂ D). Inside Π = π_min(D)_σ let π⁻
and π⁺ be the tautological subextensions of `π_{1,σ}(φ,h)` by `Ker(t_{D_σ,F})` ⊗ A and by
`Ker(t_{D_σ,G})` ⊗ A (§3.6). Define ℒ_Π as the kernel of the sum of push-forwards
`Ext¹_σ(A, π⁻) ⊕ Ext¹_σ(A, π⁺) → Ext¹_σ(A, Π)`. Prove that the block isomorphisms of §3.7 identify the
ambient space Ext¹_σ(A, π⁻) ⊕ Ext¹_σ(A, π⁺) with `𝒱_σ(D_{1,σ}, C_{1,σ})` =
(`Q_σ(D_{1,σ})` × Hom_σ(K^×, E)) ⊕ (`Q_σ(C_{1,σ})` × Hom_σ(K^×, E)) (TriangulineVarietyAndItsLocalModel §12.13), that this identification
depends only on the fixed block data (φ, h, `D_{1,σ}`, `C_{1,σ}`) and on π⁻, π⁺, and that it carries ℒ_Π
onto the relation ℒ_σ(D_σ, `D_{1,σ}`, `C_{1,σ}`) of TriangulineVarietyAndItsLocalModel §12.13 (DING25 proof of Theorem 3.34,
(3.53)–(3.54), p. 56; §2.4, (2.42) and Corollary 2.38, p. 32). *Needs:* §§3.2, 3.6, 3.7; TV
§§12.13–12.14; Mathlib `LinearMap.ker`, `LinearMap.prod`.

- A pair lies in ℒ_Π exactly when the sum of its two pushed-forward classes is zero.
- The ambient identification is the middle isomorphism of (3.54), built from the block isomorphisms
  of §3.7.
- Its image of ℒ_Π equals ℒ_σ(D_σ, `D_{1,σ}`, `C_{1,σ}`) as a subspace of `𝒱_σ(D_{1,σ}, C_{1,σ})`.
- Replacing D by D′ with π_min(D′)_σ ≅ Π, `D′_{1,σ}` ≅ `D_{1,σ}` and `C′_{1,σ}` ≅ `C_{1,σ}` leaves the
  middle isomorphism unchanged.

**Checks.**

- A class lying in both subextensions gives the pair (x, −x), which lies in ℒ_Π; the pair (x, x)
  does not unless 2x = 0 in Ext¹_σ(A, Π), so the sign of the sum map matters.
- Two distinct lines in the same ambient space are abstractly isomorphic; only equality as embedded
  subspaces carries information, so an abstract isomorphism ℒ_Π ≅ ℒ_σ would not suffice.
- n = 3: both blocks have rank two, π⁻ = π⁺ = `π_{1,σ}` (their kernels vanish by §3.1), yet ℒ_Π, of
  dimension dim 𝒱_σ − dim Q_σ(D_σ) = 2(5 + 2) − 9 = 5, still detects the rank-three parameter.

### 4.2 The recovery theorem

**Theorem (DING25 Theorem 3.34, p. 56).** Assume (H) for D and D′ ∈ ΦΓ_nc(φ,h), and let σ ∈ Σ_K.
Then π_min(D)_σ ≅ π_min(D′)_σ as G-representations if and only if D_σ ≅ D′_σ. Consequently
π_min(D) ≅ π_min(D′) if and only if D_σ ≅ D′_σ for every σ ∈ Σ_K. If K = ℚ_p, then D_σ = D and
π_min(D) determines D; if moreover D is étale, D = D_rig(ρ), then π_min(D) determines ρ.

*Proof sketch.* Since End_G(V) → End_G(A) ≅ E is an isomorphism, π_min(D)_σ ≅ π_min(D′)_σ exactly
when `Ker(t_{D_σ})` = `Ker(t_{D′_σ})`. If D_σ ≅ D′_σ, §3.6(2) gives equal kernels. Conversely, induct on
n: for n ≤ 2 all modules D_σ with fixed (φ, 𝔗_σ(h)) are isomorphic. For n ≥ 3, equal kernels give equal
parabolic kernels for F and G (§3.6(3)), hence by (3.51) equal kernels for the blocks, hence
`D_{1,σ}` ≅ `D′_{1,σ}` and `C_{1,σ}` ≅ `C′_{1,σ}` by induction. Then §4.1 gives ℒ_σ(D_σ, `D_{1,σ}`, `C_{1,σ}`) =
ℒ_σ(D′_σ, `D_{1,σ}`, `C_{1,σ}`) in `𝒱_σ(D_{1,σ}, C_{1,σ})`, and TriangulineVarietyAndItsLocalModel §12.14 (Ding Corollary 2.38(1)) gives
D_σ ≅ D′_σ. The statement for π_min(D) follows from §§3.4–3.5. For K = ℚ_p, D_σ = D; for étale D pass
to ρ through the étale equivalence (PhiGammaModulesAndIwasawaCohomology §1.0) (DING25 Theorem 3.34 and proof, p. 56; Corollary
2.38(1), p. 32). *Needs:* §§2.1, 3.4–3.6, 4.1; TriangulineVarietyAndItsLocalModel §§9.6, 12.14; PhiGammaModulesAndIwasawaCohomology §1.0.

**Checks.**

- n ≤ 2: all π_min(D)_σ coincide with `π_{1,σ}`, and for n = 2 all D_σ with fixed (φ, 𝔗_σ(h)) are
  isomorphic, because the torus of Frobenius-eigenline scalings acts transitively on the lines at σ
  avoiding both eigenlines; for d_K > 1 the modules D themselves need not be isomorphic.
- n = 3, K = ℚ_p: two modules with σ-Hodge flags spanned by (e_1 + e_2, e_1 + ae_2 + e_3) for
  different a ∉ {0, 1} (TriangulineVarietyAndItsLocalModel §9.8) have different kernel lines in the 10-dimensional 𝔈.
- The equivalence has the stated direction in both halves: equality of modified modules gives
  isomorphic representations by §3.6 alone, while the converse is the induction.
- For general K, the family (D_σ)_σ need not determine D: the isomorphism classes of the D_σ forget
  how the Hodge flags at different embeddings are related.

### Examples

For n = 3, d_K = 1, the kernel line determines the projective position a of the Hodge flag relative
to the Frobenius eigenbasis; for n = 3, d_K = 2, each of the two σ-kernel lines determines the flag
at its own embedding, and the pair of lines determines (D_σ, D_τ) but not D.

### Dependencies

Layer 3; TriangulineVarietyAndItsLocalModel §§9.6, 9.8, 12.13–12.14; PhiGammaModulesAndIwasawaCohomology
§1.0.

## Layer 5: Universal extensions and the first-order Artinian action

### 5.1 The comparison Artinian algebras

**Theorem (DING25 §3.2.2, p. 56).** Assume (H). `End_{(φ,Γ)}(D)` = E.

*Proof sketch.* An endomorphism f of D induces a (φ,Γ)-endomorphism of D[1/t] ≅ ⊕_i R(φ_i)[1/t];
for i ≠ j, φ_i/φ_j is smooth and nontrivial, hence not algebraic, so Hom(R(φ_i)[1/t], R(φ_j)[1/t]) = 0
and f is diagonal, f = diag(a_i). It preserves the Hodge flag at each σ. Noncriticality of all
refinements puts the first Hodge line at σ outside every coordinate hyperplane spanned by n − 1
Frobenius eigenvectors (general position with every refinement flag), and a diagonal map preserves
such a line only if all a_i are equal. *Needs:* TriangulineVarietyAndItsLocalModel §§9.1–9.3; PhiGammaModulesAndIwasawaCohomology §§7.1–7.2 (Hom between
localised rank-one modules vanishes unless the parameters differ by an algebraic character);
PadicHodgeTheory §4.5 (functoriality of the labelled filtered de Rham realisation).

With this, LocalGaloisDeformationRings §1.23 gives the formally smooth deformation rings R_D ↠
`R_{D,w}` ↠ `R_{D,g}` with tangent spaces Ext¹(D,D), Ext¹_w(D,D), Ext¹_g(D,D), and, in rank one, the rings
R_δ ↠ `R_{δ,g}` of a character δ of T(K) and of its locally algebraic deformations, with tangent spaces
H_T and Hom_sm(T(K),E). For δ = w(φ)z^h the square with top R_δ/𝔪² → `R_{δ,g}/𝔪²`, bottom
`R_{D,w}/𝔪²` → `R_{D,g}/𝔪²` and vertical maps induced by κ_w is Cartesian (Ding (3.55), from Proposition
2.10(2)(3)). Let A_0 = Ĥ_φ/𝔪² (SmoothRepresentationsOfLocalGroups contract above) and A_0 ↪ `R_{D,g}/𝔪²`
the composite of 𝒥_w, the twist by `z^{−h}` and `R_{w(φ)z^h,g}/𝔪²` → `R_{D,g}/𝔪²`; it is independent of w by
TriangulineVarietyAndItsLocalModel §10.3 (Ding Lemma 2.11) and LR.7 self-extensions (2) (Ding Proposition 3.3(2)). Define

```text
A_D   = R_D/𝔪²   ×_{R_{D,g}/𝔪²} A_0,
A_D,w = R_D,w/𝔪² ×_{R_{D,g}/𝔪²} A_0   (≅ R_{w(φ)z^h}/𝔪² by the Cartesian square),
I_w   = Ker(A_D ↠ A_D,w).
```

Prove that A_D and `A_{D,w}` are local Artinian E-algebras with square-zero maximal ideal, residue
field E and tangent spaces Q and Q_w; that A_D ≅ `TrivSqZeroExt E (Module.Dual E Q)`; that A_D is a
subalgebra of R_D/𝔪² and not in general a quotient of it; and that A_D → ∏_w `A_{D,w}` is injective,
equivalently ⋂_w I_w = 0, dually to the surjection ⊕_w Q_w ↠ Q of TriangulineVarietyAndItsLocalModel §12.8 (DING25 §3.2.2, the
deformation rings, (3.55) and the paragraph defining A_0, A_D, `A_{D,w}`, I_w, pp. 56–57). *Needs:*
LocalGaloisDeformationRings §§0.4, 1.23; SmoothRepresentationsOfLocalGroups §SR.3.2 and the contract
above; TriangulineVarietyAndItsLocalModel §§10.3–10.4, 12.8; LR.7 (self-extensions); Mathlib `TrivSqZeroExt`, `Module.Dual`,
`IsLocalRing`.

- A map S → A_D of E-algebras is a pair of E-algebra maps S → R_D/𝔪² and S → A_0 with equal composites
  to `R_{D,g}/𝔪²`.
- The tangent space `Hom_E(𝔪_{A_D}, E)` is Q and the cotangent space `𝔪_{A_D}` is Q^∨; similarly for
  `A_{D,w}` with Q_w.
- `A_{D,w}` ≅ `R_{w(φ)z^h}/𝔪²`, compatibly with residue fields and cotangent identifications.
- I_w is the kernel of A_D ↠ `A_{D,w}`; an element of A_D mapping to zero in every `A_{D,w}` is zero.

**Checks.**

- For x, y in `𝔪_{A_D}`, xy = 0, while residue scalars multiply as in E.
- n = 1: A_D = `A_{D,id}` = `R_{φ_1z^{h_1}}/𝔪²` and I_id = 0.
- n = 3, d_K = 1: dim_E A_D = 10, dim_E `A_{D,w}` = 7, dim_E I_w = 3, while dim_E R_D/𝔪² = 11; the
  missing direction is Ext¹_0(D,D).
- A_D ↠ `A_{D,w}` induces Q_w ↪ Q on tangent spaces, reversing the direction of the ring map.
- A single I_w can be nonzero (dimension 3 above) while their intersection is zero.

### 5.2 Universal extensions and their refinement actions

Let U = V^univ be the universal extension `0 → V → U → 𝔈 ⊗_E A → 0` (class id_𝔈), and for w ∈ S_n let
U_w ⊂ U be the inverse image of 𝔈_w ⊗ A, the tautological extension with class 𝔈_w ↪ 𝔈. Let
δ_w = `w(φ)z^h(ε^{−1} ∘ θ)` and δ̃_w^univ the universal self-extension `0 → δ_w → δ̃_w^univ → H_T ⊗ δ_w → 0`
(class `id_{H_T}`, via `Ext¹_{T(K)}(δ_w, δ_w)` ≅ H_T). Under `A_{D,w}` ≅ `R_{w(φ)z^h}/𝔪²`, an element
x ∈ `𝔪_{A_{D,w}}` ≅ H_T^∨ acts on δ̃_w^univ by projection to H_T ⊗ δ_w, contraction with x, and inclusion
of δ_w; on U_w it acts by projection to 𝔈_w ⊗ A, contraction with x ∘ `ζ_w^{−1}`, and inclusion of
A ⊂ V ⊂ U_w ((3.57)); E acts by its given scalars (DING25 §3.2.2, the universal extensions, p. 57; the
actions and (3.57), p. 58; §3.1.1, p. 33). *Needs:* §5.1; LR.1 (self-extension-dual-numbers:
universal and tautological extensions, deformed characters).

- U has class id_𝔈 in Hom_E(𝔈, 𝔈); pulling U back along b : A → 𝔈 ⊗ A represents b ∈ 𝔈.
- U_w is the sub-extension over 𝔈_w ⊗ A; the U_w generate U as a G-representation, since Σ_w 𝔈_w = 𝔈.
- The radical operators on δ̃_w^univ and on U_w square to zero and commute with T(K), respectively G.
- These operators define actions of `R_{w(φ)z^h}/𝔪²` and `A_{D,w}`.

**Checks.**

- Pulling U back along the zero coefficient gives the split extension; along b ≠ 0 it gives exactly b,
  excluding the dual-basis-inverted or constant extension.
- For radical x, y on U_w, x ∘ y = 0, since the projection kills the included A.
- If `x(ζ_w^{−1}(b))` ≠ 0 and a ∈ A is nonzero, x applied to any lift of b ⊗ a is that scalar times a.
- The quotient of U is 𝔈 ⊗ A, not 𝔈^∨ ⊗ A: the radical, being cotangent, contracts with 𝔈.

### 5.3 Induction of the universal character extension

**Theorem (DING25 Lemma 3.35 and (3.56)–(3.57), p. 58).** Assume (H). The closed induction
`I_{B⁻}^G(δ̃_w^univ)` is the universal extension of A ⊗_E Ext¹_G(A, PS_1(w(φ),h)) by PS_1(w(φ),h). Its
push-out along PS_1(w(φ),h) ↪ V is isomorphic to U_w, and the resulting injection
`I_{B⁻}^G(δ̃_w^univ)` ↪ U_w is equivariant for the actions of `A_{D,w}` ≅ `R_{w(φ)z^h}/𝔪²`.

*Proof sketch.* By Remark 3.7 (LR.7, zeta-w) the induced representation is an extension of
`A^{⊕n(1+d_K)}` by a subrepresentation V′ ⊂ PS_1(w(φ),h), and every class in the image of (3.10) is
pushed forward from V′. Since (3.10) is bijective (LR.7, ext-ps1), the surjectivity of the last map of
(3.14) forces V′ = PS_1(w(φ),h); then the tautological classes match under ζ_w, and the radical
actions match by construction. *Needs:* §5.2; LR.6 (closed-induction); LR.7 (zeta-w, ext-ps1, ext-pi1).

**Checks.**

- n = 1: PS_1 = A = δ_1 = `φ_1z^{h_1}`, the closed induction is δ̃_1^univ itself, and U_1 = U.
- Universality is what forces the subobject to be all of PS_1: a proper V′ would leave the classes of
  Ext¹(A, PS_1) not pushed forward from V′ unrealised.
- The closed induction `I_{B⁻}^G` is used, not the full locally analytic induction, whose quotient by
  PS_1(w(φ),h) contains the constituents of PS(w(φ),h)/PS_1(w(φ),h) and whole copies of PS(w(φ),h),
  not only copies of A.

### 5.4 Ding's universal Artinian action

**Theorem (DING25 Theorem 3.36 and (3.58), pp. 58–59).** Assume (H). There is a unique action of the
E-algebra A_D on U, commuting with G and restricting to the given E-structure, such that for every
w ∈ S_n the inclusion U_w ↪ U lands in U[I_w] = {u : xu = 0 for all x ∈ I_w} and is `A_{D,w}` × G
equivariant. For x ∈ `𝔪_{A_D}` ≅ Q^∨ the action is the composite

```text
U ↠ 𝔈 ⊗_E A --(t_D ⊗ id)--> Q ⊗_E A --(x ⊗ id)--> A ↪ V ↪ U,
```

ending in U itself (the subscript w on the final term printed in (3.58) is a misprint, see Source
corrections).

*Proof sketch.* The displayed operators commute with G, kill V and have image in A ⊂ V, so their
products vanish and together with E they define an action of A_D. On U_w, t_D ∘ ζ_w = a_w ∘ `κ_w^{−1}`
(Theorem 1.4) identifies them with the action of §5.2, so elements of I_w kill U_w. Uniqueness: the U_w
generate U. No equality U_w = U[I_w] is asserted. *Needs:* §§1.4, 5.1–5.3.

**Checks.**

- Every x ∈ `𝔪_{A_D}` kills all of V inside U, not only its socle A.
- For x ∈ I_w and u ∈ U_w, xu = 0, since x vanishes on Q_w.
- If t_D(b) ≠ 0 and a ≠ 0, some x ∈ Q^∨ acts nontrivially on any lift of b ⊗ a.
- For b ∈ 𝒦_D every radical element kills every lift of b ⊗ a.
- x(yu) = 0 for all x, y ∈ `𝔪_{A_D}`, matching `𝔪_{A_D}²` = 0.

### 5.5 The minimal representation as an annihilator

**Theorem (DING25 Corollary 3.37, p. 59).** Assume (H). For the action of §5.4,
`U[𝔪_{A_D}]` is the inverse image of 𝒦_D ⊗ A in U, and it is canonically π_min(D). The statement concerns
the annihilator of the maximal ideal, not the quotient `U/𝔪_{A_D}U` and not a refinement annihilator.

*Proof sketch.* u is killed by `𝔪_{A_D}` exactly when every x ∈ Q^∨ contracts (t_D ⊗ id)(p(u)) to zero;
since Q is finite-dimensional, its dual separates points, so this happens exactly when p(u) ∈ 𝒦_D ⊗ A.
The inverse image of 𝒦_D ⊗ A in U is the tautological extension with class 𝒦_D ↪ 𝔈 (LR.1,
self-extension-dual-numbers: restriction to a subspace), which is π_min(D). *Needs:* §§2.1, 5.4.

**Checks.**

- n ≤ 2: `U[𝔪_{A_D}]` = V, since 𝒦_D = 0.
- n = 3, K = ℚ_p: `U[𝔪_{A_D}]/V` is one copy of A, while U/V is `A^{⊕10}`.
- As soon as Q ≠ 0, `𝔪_{A_D}U` is the socle copy of A in V, so `U/𝔪_{A_D}U` = U/A is an extension of
  𝔈 ⊗ A by V/A and is not π_min(D); for n = 3, K = ℚ_p it has ten copies of A on top, against one
  for the annihilator.

### Examples

For n = 3, K = ℚ_p: A_D has dimension 10, each `A_{D,w}` dimension 7, I_w dimension 3, R_D/𝔪² dimension
11. A radical element x acts on U by applying t_D to the coefficient b ∈ 𝔈 and contracting with x ∈ Q^∨;
if b ∈ 𝒦_D every such action is zero, and if t_D(b) ≠ 0 some x detects it. Hence U[𝔪] has quotient one
copy of A over V, whereas U/V has ten.

### Dependencies

Layers 1–2; LocalGaloisDeformationRings §§0.4, 1.23; SmoothRepresentationsOfLocalGroups §SR.3.2;
LocallyAnalyticRepresentationsOfLocalGroups LR.1, LR.6, LR.7; TriangulineVarietyAndItsLocalModel
§§9.1–9.3, 10.3–10.4, 12.8; PhiGammaModulesAndIwasawaCohomology §§7.1–7.2; Mathlib `TrivSqZeroExt`,
`Module.Dual`.

## Worked examples

| n | c_n | dim 𝔈 (K = ℚ_p) | dim Q (K = ℚ_p) | dim Ker t_D |
| --- | --- | --- | --- | --- |
| 1 | 0 | 2 | 2 | 0 |
| 2 | 0 | 5 | 5 | 0 |
| 3 | 1 | 10 | 9 | 1 |
| 4 | 5 | 19 | 14 | 5 |
| 5 | 16 | 36 | 20 | 16 |

For n = 3 and d_K = 2: dim 𝔈 = 17, dim Q = 15, and the 2-dimensional kernel is the direct sum of its
two σ-kernel lines (§3.5). Each 𝔈_w has dimension 9 and meets the kernel in zero (§1.6). Each proper
maximal parabolic has block ranks 2 and 1, so its kernel intersection is zero (§3.1): the parameter
lives in the relation between the two parabolic images, which is why the embedded relation of §4.1 is
needed.

The character spanning in rank three is (a, b, c) = (c, c, c) + (a − b, 0, 0) + (b − c, b − c, 0); the
constant tuple lies in both block spaces, so the spanning holds while the printed direct sum cannot.

For d_K > 1, D_σ has repeated weights at τ ≠ σ; its transported σ-quotient is meaningful, but the
standing hypotheses cannot be reapplied to D_σ. The recovery theorem detects the family of modified
modules, and only for K = ℚ_p does the single modification equal D.

## Source corrections

All entries paraphrase the published version of DING25.

- **(3.43), proof of Theorem 3.21, p. 49.** The full character space is not the direct sum of the
  maximal-Levi-centre character spaces and the centre character space: each two-block space contains
  the constant tuples, and the dimensions are (2n − 1)(1 + d_K) against n(1 + d_K). The proof on p. 50
  uses only the spanning, which §0.3 proves by telescoping.
- **Definition of χ_D, before Proposition 3.26, p. 51.** The exponent |λ| is an element of `ℤ^{Σ_K}`,
  |λ|_σ = Σ_i `λ_{i,σ}`, not a sum over both i and σ (§2.5; witness: λ_σ = (2,0), λ_τ = (5,1) gives
  (2, 6)).
- **(3.58), proof of Theorem 3.36, p. 58.** The final term of the radical operator is the full
  universal extension, not U_w; no w is fixed there.
- **Proof of Theorem 3.34, after (3.54), p. 56.** After replacing D_σ by D′_σ the relation should be
  ℒ(D′_σ, `D_{1,σ}`, `C_{1,σ}`).
- **Proof of Theorem 3.34, first paragraph, p. 56.** The labels "if" and "only if" are interchanged:
  Corollary 3.32(1) gives the implication from D_σ ≅ D′_σ, and the induction proves the converse.
- **Proof of Proposition 3.26, p. 51.** The bijectivity of the tangent map of the Harish-Chandra
  map at h needs regularity of h (the Vandermonde argument of §2.6), not only polynomiality of the
  invariants.
- **Corollary 2.14 proof, p. 19.** The sign before n in the dimension of the quotient paraboline space
  is +: dim `Q_{F_P}` = n + d_K dim(B ∩ L_P) (for P = B this is n(1 + d_K)); recorded in
  TriangulineVarietyAndItsLocalModel §10.7.
- **(3.12), (3.15) and (3.33), pp. 38–39 and 46.** The labels I range over all nonempty proper subsets
  of {1,…,n}; recorded in LocallyAnalyticRepresentationsOfLocalGroups LR.7 and LR.9.
- **Lemma 2.11 proof, p. 16.** The last parameter of the displayed triangulation has algebraic factor
  `z^{h_n}`, not `z^{h_1}`.
- **Paragraph after (3.30), p. 43.** The two endpoint inductions are from `P_{n−1}⁻` and P_1⁻, and their
  cyclotomic twists are 1 ⊠ `ε^{n−1}` and 1 ⊠ (ε ∘ det), as fixed by `ε^{−1}` ∘ θ^P: at n = 2 the printed
  first induction has algebraic part `z^{(h_1+1, h_2)}`, whereas PS(φ,h) has z^λ = `z^{(h_1, h_2+1)}`. π_F
  and π_G are fixed intrinsically (LocallyAnalyticRepresentationsOfLocalGroups LR.8), so nothing
  downstream changes.
- **Definition before Corollary 2.38, pp. 31–32.** The relation attached to D_σ has third argument
  `C_{1,σ}`, not an undefined `D_{2,σ}`.

## Downstream consumers

- The local–global compatibility of DING25 §4 (patched eigenvarieties, the occurrence of π_min(D) and
  π_fs(D) in the locally analytic vectors of patched completed cohomology, and the comparison of the
  A_D-action with the action of the patched Galois deformation ring) uses Layers 2 and 5; it belongs to
  the completed-cohomology local–global compatibility roadmaps.
- Locally analytic constructions attached to crystabelline Galois representations of GL_n(K) use
  π_min(D) and the recovery theorem of Layer 4 as their Hodge-parameter-detecting core.

## References

- **DING25.** Yiwen Ding, *p-adic Hodge parameters in the crystabelline representations of GL_n*,
  Publications Mathématiques de l'IHÉS 142 (2025), 1–74, DOI 10.1007/s10240-025-00156-2 (published
  open version on Centre Mersenne; printed and PDF pages coincide). Used: §2.1–2.4 for the imported
  statements, §3.1 for the representation-theoretic inputs, §3.2 (pp. 47–59) for every target here.
- **CEGGPS16.** Ana Caraiani, Matthew Emerton, Toby Gee, David Geraghty, Vytautas Paškūnas, Sug Woo
  Shin, *Patching and the p-adic local Langlands correspondence*, Cambridge Journal of Mathematics 4
  (2016); arXiv:1310.0831v5, §3.13, Lemma 3.22, p. 47 (the E-rational Bernstein centre of a component
  as Weyl invariants), for the Bernstein-centre supplier contract.
