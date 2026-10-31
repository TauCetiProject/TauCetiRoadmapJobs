# PKG-LocallyAnalyticRepresentationsOfLocalGroups — package report

Deliverables: `packages/LocallyAnalyticRepresentationsOfLocalGroups/README.md`, `Suggested.lean`, `metadata.toml` (`topic = "math.RT"`), `sources.toml`, and the `gaps` list of `design/plan.json` (no other key of plan.json changed; checked by comparing every top-level key with the committed file).

## 1. Headline theorems

| Headline | Status |
|---|---|
| Schneider–Teitelbaum anti-equivalence for non-compact G: admissible representations ≃ coadmissible D(G, E)-modules (1.3) | not statable: no V-valued locally analytic functions on nonarchimedean locally convex spaces, no locally analytic representations on barrelled nonarchimedean spaces, no D(G, E), no Fréchet–Stein algebras or coadmissible modules at the pins (Mathlib's `LocallyConvexSpace`/`BarrelledSpace` are the real-scalar/seminorm notions) |
| Breuil: Ext¹_{D(G,E)} classifies admissible extensions (1.8) | not statable: same carriers |
| Pan: admissible Banach representations are strongly LA-acyclic (2.5) | not statable: no C^an(G_n, ℚ_p) (needs p-valued coordinates), no admissible Banach category |
| BCGP: smooth solid representations form a Grothendieck category; solid derived LA vectors compute Pan's R^iLA (3.7, 3.8) | not statable: no E_■, no solid E-vector spaces, no solidified group rings |
| Schraen's spectral sequence (5.5) | not statable: no locally analytic induction, no Kohlhaase homology, no Ext of locally analytic representations |
| Orlik–Strauch irreducibility and Jordan–Hölder theorems (6.4, 6.5) | not statable: no O^p_alg for split reductive algebras (Tau Ceti has `TauCeti.VermaModule` only for Killing algebras), no locally analytic induction |
| Emerton's adjunction theorem; Breuil's adjunction (7.5, 7.6) | not statable: no Jacquet functor, closed induction, very strong admissibility |
| Ding: ζ_w bijective onto Ext¹_w; dim Ext¹(π_alg, π_1) = n + (2^n − 1)d_L; ζ_{F_P} bijective; σ-decomposition (8.8–8.14, 9.6–9.7, 10.5–10.7) | not statable: all of the above plus π_alg, π_1 |

`Suggested.lean` therefore states nothing; its module docstring lists each headline and the missing carrier. No weakened substitute, stand-in or sorry'd definition is written. The design's light declarations (combinatorial label sets, θ arithmetic) were not carried over: they were not headlines.

## 2. Elaboration

`lake env lean packages/LocallyAnalyticRepresentationsOfLocalGroups/Suggested.lean` run from the content checkout: exit 0, **0 `sorry` warnings, no other messages**. Imports: the single line `import Mathlib`. No `set_option`. The `#check @name` comparison was done trivially: the file declares no theorem, definition or instance (only the namespace), so there is no elaborated type to compare and nothing changed.

## 3. Dependency check output

```
depcheck: 56 roadmaps, 651 edges, 0 problem(s)
```

No UPWARD, CYCLE or `moved:` line. `roadmaps resolve` on the README: no cross-roadmap citation and no Lean name found nowhere (it notes that Lean names outside TauCetiRoadmap were not checked on this host; I checked every backticked library name at the pins by grep: `CategoryTheory.Abelian.Ext` (both files), `DualNumber`, `DualNumber.eps`, `UniversalEnvelopingAlgebra`, `UniversalEnvelopingAlgebra.lift`, `continuousCohomology`, `TopRep`, `LieGroup`, `IsUltrametricDist`, `ModuleCat`, `LocallyConvexSpace`, `BarrelledSpace`, `TauCeti.completedGroupAlgebra`, `TauCeti.VermaModule`, `TauCeti.irreducibleQuotient`). The README contains no backticked name of this roadmap's own.

## 4. Duplication removals and ownership (by object)

Removed from the design and cited instead:

- **Admissibility of locally analytic representations** (design LR.1 *admissible-representation*, the definition): PadicLocalLanglandsForGL2Qp §0.1 defines admissibility for a locally analytic group by restriction to a compact open subgroup and proves independence. Kept as 1.2 only: strong admissibility, topological irreducibility.
- **Locally analytic vectors of a Banach representation** (design LR.2 *analytic-vectors*): CompletedCohomologyPartII F.4 (orbit maps, radius-stage topology, compact-open restriction, Lie action) and PadicLocalLanglandsForGL2Qp §0.1 (`AnalyticSupport.vectors`).
- **Schneider–Teitelbaum density theorem** (design LR.2 *admissible-banach-analytic-vectors*): PadicLocalLanglandsForGL2Qp §0.1 (density, exactness, admissibility, dual base change). The non-unitary case reduces to it by 2.1 (ii).
- **Character space of an abelian locally analytic group** (design LR.6 *character-variety*), **essentially admissible representations** (*essentially-admissible*), **finite-slope part** (*finite-slope-part*), **Emerton's Jacquet functor** (*jacquet-emerton-functor*) and parts (1), (2), (4) of *jacquet-emerton-properties*: OverconvergentAutomorphicForms §0.6 owns all of these in general scope. Kept: the compact-support adjunction (7.1, not stated there) and part (3) (7.2).
- **Analytic charts on 𝐆(L)** (core of design LR.0 *rational-points-analytic-group*): ReductiveGroupsPartII RG2.0.2 *smooth-group-analytic-charts*. Kept 0.1 as the ℚ_p-restriction, closed subgroups and embedding decomposition.
- **Differentiated Lie action** on locally analytic vectors: CompletedCohomologyPartII F.4; 0.3 keeps the U(g ⊗ E)-extension, Ad-equivariance, embedding decomposition and distribution compatibility.
- **Admissible unitary Banach category**: PadicLocalLanglandsForGL2Qp §0.1, CompletedCohomologyPartII F.1; 2.1 keeps the non-unitary variant (one clause says so).
- **Derived functor RLA on general continuous representations**: CompletedCohomologyPartII F.4; 2.3 keeps Pan's stagewise functor on Banach representations, stated as such, compared with the solid functor in 3.8 (ii).
- **Kostant cohomology**: ArithmeticLocallySymmetricSpaces ALS.4.5 (with gap); 4.6 keeps only the homological dualisation.
- **Solid E-vector spaces**: VStackSheavesAndLisseCategories §VS2.2.

Design supplier citations replaced because the cited sections do not exist as cited: SolidAnalyticRings "SA.1/SA.2/SA.4" (its README has Layers 1–7 of spectral light solid theory and explicitly leaves profinite group rings and Banach/Smith comparisons to consumers); PadicMeasuresIwasawaAlgebras "L0a" (no such layer; the character space now comes from OverconvergentAutomorphicForms §0.6); LocallyAnalyticDistributions "L0/…, L3/…" target ids (its README uses §§0.0–0.3 with bold target names; cited that way); SmoothRepresentationsOfLocalGroups "SR.3/part-ii-*" (do not exist; replaced by gap:ordered-character-map on SR.3.2); AdicSpacesPartII "R3" (quasi-Stein spaces are AdicSpacesPartIII §R3.4 on main).

Ownership against open pull requests was checked with `roadmaps grep` over all 354 open roadmap PRs and main, and against the board packages (LocallyAnalyticDistributionsPartII, LieHighestWeightPartII, SmoothRepresentationsOfLocalGroupsPartII, SolidAnalyticRings, HigherHidaAndColemanTheory, AnalyticStacks designs) for: Orlik–Strauch, very strong admissibility, closed induction, balanced maps, Schraen's spectral sequence, Kohlhaase homology, coadmissible, locally algebraic vectors, Ext over D(G, E), Ding's π_alg/π_1, category O / Verma / Kostant, Smith spaces, solid group rings, λ-smooth. No other owner was found for the objects kept here. This roadmap owns them because it is the consumer named by LocallyAnalyticDistributionsPartII (its scope hands admissible representations and the anti-equivalence to this roadmap) and by VStackSheavesAndLisseCategories §VS2.2 (classical comparison "belongs to the functional-analysis consumer"). No declaration name collides (Suggested.lean declares none).

## 5. Notions moved down / owned here although not in the design's own scope

- **Category O for split reductive Lie algebras (Layer 4).** The design imported it as a contract from "LieHighestWeightPartIICompletedCategoryO", which does not exist anywhere (not on main, not in any PR, not on the board, not in the merge order). LieHighestWeight (main) excludes category O and works over algebraically closed fields; LieHighestWeightPartII (board) is about nilpotent orbits. The needed statements (split-field descent, O/O^p/O^p_alg, generalised Vermas and maximal parabolics, restricted BGG duality, low-length Verma multiplicities for ∏gl_n, Kostant homology) are therefore targets 4.1–4.6 here, sourced at Orlik–Strauch §2.5 and Humphreys (uncertified).
- **Classical spaces as solid E-vector spaces (3.1).** The design's owner "LocallyAnalyticDistributionsPartIIQuasiAbelianFunctionalAnalysis" does not exist; VStackSheavesAndLisseCategories §VS2.2 assigns this comparison to its consumer.
- **Continuous cohomology of locally analytic vectors (3.9)** was moved from design LR.2 (*admissible-la-acyclic*, compact comparison) into Layer 3, because its route (RJRC22 Thm 1.5) uses the solid derived functor of 3.8; keeping it in Layer 2 would have made Layer 2 depend on Layer 3.
- **6.7 (Ext¹ vanishing for lg ≥ 2)** placed after the Orlik–Strauch functor, which it uses.

## 6. Supplier gaps declared (plan.json `gaps` replaced; README states each in its supplier subsection)

| slug | supplier, section |
|---|---|
| barrelled-banach-steinhaus | LocallyAnalyticDistributions §0.0 |
| compact-type-tensor | LocallyAnalyticDistributions §0.0 |
| kostant-split-reductive | ArithmeticLocallySymmetricSpaces ALS.4.5 |
| generic-principal-series-finite-coefficients | SmoothRepresentationsOfLocalGroups SR.3.1 |
| principal-series-jacquet-finite-coefficients | SmoothRepresentationsOfLocalGroups SR.2.2 |
| finite-length-finite-coefficients | SmoothRepresentationsOfLocalGroups SR.3.1 |
| ordered-character-map | SmoothRepresentationsOfLocalGroups SR.3.2 |

The design's former `gaps` entries that were proof obligations (DLB Lemme 5.10, Pan's Colmez–Dospinescu step, the second socle layer, the rigid/adic carrier comparison) are no longer gaps: 0.8 gives a route; 2.5 cites Colmez–Dospinescu Corollaire IV.14 (fetched, general uniform groups); 8.4 (3) is proved by a new route (below); the character space is OverconvergentAutomorphicForms' object.

## 7. What changed mathematically (corrections and resolutions)

1. **Schraen, Prop. 4.7(2) is false as printed in general** (it asserts Ext^n_{G,λ} = 0 for n ≠ i_0, n ≤ i_0 + 2). Its own spectral sequence (4.27) with H¹ = H² = 0 gives Ext^n_{G,λ} ≅ Ext^n_{∞} for n ≤ 2. Witness: generic principal series of GL_n with fixed central character has i_0 = 0 and Ext¹_{∞} of dimension n − 1 ≠ 0 (exactly what Ding uses in (3.6)). The design had copied the printed form; 1.10 states the corrected form, with a negative-control Check, and Source corrections records it.
2. **Ding Prop 3.1(3) (second socle layer)**: the design left it as an open "transport" contract because Orlik's theorem is L-analytic with trivial smooth argument. 8.4 now proves it: PS/π_alg ≅ F(rad M⁻(−λ)) (6.2), rad M⁻(−λ) is a quotient of ⊕_{lg u=1} M⁻(−u·λ) (4.5 (ii)), so F(rad) embeds in ⊕ Ind(z^{u·λ}w(φ)η) whose socle is ⊕ C(w, u) by Breuil socle I Cor. 2.5 (6.5 (2)); conversely each C(w, u), lg u = 1, embeds since L⁻(−u·λ) is a quotient of rad.
3. **Reverse Ext¹(C(I, s), π_alg) direction dropped** from 8.9: Ding quotes it from Breuil–Qian (arXiv:2407.06651, Prop. 5.1.14), which I fetched: it is a locally K-analytic computation with Steinberg-type smooth inputs, not transferable to the ℚ_p-analytic, generic-principal-series C(I, s) on that citation; no target or consumer uses it. The work is not listed in sources.toml (not cited).
4. **Ding's printed conventions** (label w⁻¹({1..i}), +s·λ, T(L), I ⊆ {1..n}, block index k, tensor kernel, P_{n−1}/P_1, notational slips): re-verified against arXiv v2 (DING25 lines 1488–1524 for Prop 3.1/(3.1)/Lemma 3.2: the arXiv text prints the forward label and z^{−s·λ}, as the published version), with the coset computation and the GL₂ central-weight test recomputed (table below).
5. **BCGP §2.2.27 residual action**: BCGP writes ∗_{l,r} ⊗ ∗_V; on invariants this equals ∗_r (the design's form); 3.8 states the equality explicitly, and the Check shows the wrong model ∗_r ⊗ ∗_V gives χ(h)².
6. **Pan's R^iLA vs RLA of CompletedCohomologyPartII F.4**: kept as a variant; the comparison with the solid functor is 3.8 (ii) with route RJRC22 §1.2.3 + Shapiro (finite index G_n ⊆ G_0, O_{𝔾_r}|_{M_0} = Ind C^an(M_r)). No comparison with F.4's RLA is claimed.
7. **Weak-sequential convergence (0.8)**: kept with a gliding-hump + Hahn–Banach route instead of the withdrawn compactoid route.
8. Design's 1.3/1.5 example errors fixed: "compactly induced C^an(H) ↔ D(G)" contradicted 1.1's non-coadmissibility of D(G) (replaced by the compact case); the diagonal non-example now uses C^an(ℤ_p²) on the diagonal ℤ_p.

9. **Notation (repair)**: the README's 844 TeX-style sub- and superscripts `_{…}`/`^{…}` (219 `^{`, 625 `_{`) are rewritten in plain Unicode: a single-token index loses its braces (`^{la}` → `^la`, `_{B⁻}` → `_B⁻`), and every other index goes in parentheses (`C^{F-an}` → `C^(F-an)`, `Ext^i_{D(G,E)}` → `Ext^i_(D(G,E))`, `_{i,σ}` → `_(i,σ)`). Nothing else changed. When braces and parentheses are deleted, the old and new README are identical, and the dependency check still reports `depcheck: 56 roadmaps, 651 edges, 0 problem(s)`.

## 8. Sources

All design sources were fetched through the service (certified, open: arXiv, Numdam, author pages) except: DING25 — the publisher host is in no licence class, so the arXiv v2 text is used (theorem/equation numbering of §3.1 agrees; pages are arXiv v2 and are cited as such); SCHN11, NFA02, HUM08 — paywalled books, recorded `uncertified` and cited by locator. Added: CD14 (arXiv:1301.7647, for Pan's step), CEGGPS (arXiv:1310.0831), BZ77 (Numdam), Stacks Tag 079H. `sources check`: 0 problems. No `needs-references.toml` remains (Humphreys resolved to uncertified).

Untrusted text: nothing in the fetched sources, PRs or packages instructed any action; nothing suspicious to quote.

## 9. Adversarial pass (one row per statement written or changed; values computed)

| Statement | Instances tried | Values computed | Result / change |
|---|---|---|---|
| 0.1 embedding decomposition | L = ℚ_p(√p), p odd | √p ⊗ 1 ↦ (√p, −√p); dim_ℚp L^× = 2 | holds |
| 0.1 canonicity | τ ≠ 1 in Gal(L/ℚ_p) | transition x ↦ τ(x) not L-linear | hypothesis "algebraic charts" kept |
| 0.2 definition | ℤ_p on C(ℤ_p,E); f = Σ p^n 1_{p^n+p^{2n}ℤ_p} | f(p^n) = p^n, zeros accumulate at 0 ⇒ no power series | non-example corrected (design's function unspecified) |
| 0.2 σ-character | L ≠ ℚ_p, x ↦ σ(x) | derivative σ, not L-linear | ℚ_p- not L-analytic |
| 0.3 components | L = ℚ_p(√p), σ(x)^1 | g_σ, g_τ act by (1, 0) | holds |
| 0.4 Ad check | GL₂(ℚ_p), g = diag(p,1) | Ad(g)e = pe | holds; inverse convention gives p⁻¹ |
| 0.4 non-compact | G = ℚ_p | ⊕_{ℚ_p/ℤ_p} D(ℤ_p) not Fréchet | holds |
| 0.5 module | χ(a) = (1+p)^a | x̃ ↦ log(1+p), δ_1 ↦ 1+p | holds; faithfulness non-example added |
| 0.6 contragredient | χ(x) = x on ℚ_p^× | δ_x acts on dual by x⁻¹ | Convention 3 witness |
| 0.8 Schur | c_0, e_n | pairing with (1,1,…) = 1 | not weakly null; route replaced |
| 0.9 tensor | dims 2,3 | 6 | holds |
| 1.1 coadmissible | G discrete; G non-compact | E[G]-mod f.d.; D(G) free ∞ rank over D(H) | holds |
| 1.2 strong adm. | c-Ind_H^G 1 | H-invariants ∞-dim | not admissible |
| 1.3 example | compact G, C^an(G) | ↔ D(G) | design's non-compact example contradicted 1.1 → replaced |
| 1.5 diagonal | C^an(ℤ_p²) on diagonal | dual stages D_r ⊗̂ D(ℤ_p) not f.g. | non-example replaced |
| 1.7 Ext | ℤ_p trivial; ℚ_p^× trivial | dim 1; dim 2 (val, log) vs smooth 1 | holds |
| 1.7 fixed char | χ = x | dual has x⁻¹ | χ⁻¹ quotient kept |
| 1.9 tautological | U = 0; U = E·c | V_2; class c | holds |
| 1.10 (1) | GL₂, Sym^k vs Sym^{k′} | distinct inf. chars ⇒ 0 | holds |
| 1.10 (2) | generic PS GL_n, fixed central char | i_0 = 0, Ext¹_∞ dim n−1 ≠ 0 | **printed form false; corrected to n ≤ 2 iso** |
| 1.10 (2) | GL₂, W = 1, λ = 0 | Ext¹_{G,1} = Hom_sm(PGL₂,E) = 0 | consistent |
| 2.1 non-unitary | ℚ_p^×, x ↦ x | p acts by p, no lattice | admissible, not unitary |
| 2.1 non-example | c_0 trivial ℤ_p | dual killed by augmentation, ∞-dim | not admissible |
| 2.3 degenerate | G finite | G_0 = 1, R^i = 0 | holds |
| 2.5 tensor clause | c_0(ℕ,E) trivial = ℚ_p ⊗̂ c_0 | covered by B ⊗̂ M | check rewritten |
| 3.1 duality | c_0(ℕ,E) | dual (∏O_E)[1/p]; ∏E ↔ ⊕E | holds; roles not exchangeable (identity not compact) |
| 3.2 non-example | 𝔾 = ℤ_p + p𝔻, char trivial on p²ℤ_p | Strassmann ⇒ constant | not analytic |
| 3.4 | M = ℤ_p | O_E[[T]][1/p] | holds |
| 3.5 | x ↦ x^k on ℤ_p^×, k ≠ 0 | 1+p^n not acting trivially | not smooth, x^k-smooth |
| 3.8 residual action | analytic χ | ∗_r: χ(h)v; ∗_r⊗∗_V: χ(h)²v | equality with BCGP's ∗_{l,r}⊗∗_V on invariants stated |
| 3.9 | ℤ_p, C(ℤ_p,E) | H¹ = 0 by Shapiro | compact only |
| 3.10 | sl₂ Verma, finest topology | Banach subspaces f.d., lowering free | not integrable |
| 4.1 | gl₂, (k,0), (1,1); non-split Cartan ε | dims k+1, 1; ad eigenvalues ±2√ε ∉ ℚ_p | split hypothesis needed |
| 4.1 (iv) | gl₂ μ=(0,0), s·μ | (−1,1) same inf. char; (1,−1) not | holds |
| 4.2 | μ = (1/2,0) | in O not O_alg | holds |
| 4.3 | gl₃, λ = (2,0,1) | ⟨λ,α₁^∨⟩=2, ⟨λ,α₂^∨⟩=−1, I={α₁} | holds |
| 4.4 | gl₂, λ = (1,0) | L^∨ weight (1,0) vs contragredient (0,−1) | distinct dualities |
| 4.5 | n=2,3; Levi GL₂×GL₁ | length 2; 2nd layer 2 summands; s₁ killed, s₂ once | holds |
| 4.6 | GL₂, Sym^k | lower: (k,0),(−1,k+1); upper: (0,k),(k+1,−1); via −(w·(−w₀λ)) | formulas verified (upper derived from ALS by duality) |
| 5.1 | GL₂, P = B⁻ | Ind ≅ C^an(ℙ¹) | holds; f(p)⊗w fails equivariance |
| 5.2 | GL₂, χ = 1 | PS_lalg = Ind 1 = (1 ⊂ St ext) | holds |
| 5.3 (3),(4) | L = ℚ_p(√p), n = 2 | Hom 6, Hom_sm 2, Hom_{g′} 4, Hom_σ 2 | holds |
| 5.3 (1) | χ′ = χ|·|_L | same weight, Ext = 0 | needs δ_t − χ(t) |
| 5.4 | GL₂ Sym^k; π = 1, cuspidal | weights as 4.6; H₁ = (1,−1); J_N = 0 | holds |
| 5.5 | GL₂, Σ=1, ρ=z^{(0,2)} | H₀ wt (0,0), H₁ wt (−1,1) ≠ (0,2) ⇒ Ext = 0 | holds; admissibility of homology hypothesis kept |
| 6.1 | M⁻(μ), χ | Ind z^{−μ}χ | sign check |
| 6.4 | GL₂, χ₁χ₂⁻¹ = |·| | (Ind χ)^∞ reducible ⇒ F(L(λ)′,χ) reducible | non-example |
| 6.5 | GL₃ generic | 6 constituents, KL mult. 1 | holds |
| 6.6 | GL₂(ℚ_p)×GL₂(ℚ_p(√p)) | 2·4 = 8 | holds |
| 6.7 | n=2 L=ℚ_p; L=ℚ_p(√p); lg = 1 | empty; s=(s,s) lg 2; Ext¹ line | holds |
| 7.1 | GL₂, m = diag(p,1) | index p, δ_B = p⁻¹, averaged op = id | Convention witness |
| 7.3 | λ=(1,1), s·λ=(0,2) | ⟨(0,−2)+ρ⁻, (e₂−e₁)^∨⟩ = −1 ⇒ Verma simple | I(U) full induction |
| 7.4 | U = z^{(1,1)} vs z^{(0,2)} | image det, kernel ≠ 0 vs injective | non-example rewritten |
| 7.5 | smooth δ, V | Ind_{P⁻}U = i_{P⁻}(Uδ_P^{1/2}) ⇒ Hom_M(Uδ_P, V_N) | unnormalised second adjointness matches |
| 7.6 | simple Verma case | reduces to 7.5 with U′(δ_Q) = W′⊗π | consistent with Breuil's δ conversion |
| 8.1 | n=3 cycle | w(φ) = φ₃⊠φ₁⊠φ₂ | holds |
| 8.3 | n=2, L=ℚ_p | ηz^λ = |t₂|t₁^{h₁}t₂^{h₂+1} = z^h ε(t₂) | holds |
| 8.4 (4) | w=(123), w′=(23)w, w″=(12)w | w w′⁻¹ = (23) ∈ W₁; w w″⁻¹ = (12) ∉ W₁ | holds |
| 8.4 (3) | — | new route via 4.5 (ii) + 6.5 (2) | open contract closed |
| 8.5 label | w=(123), w′=(23)w | inverse images {3},{3}; forward {2},{3} | inverse-image label confirmed |
| 8.5 sign | GL₂, λ=(1,1) | constituent central weight +2; z^{(0,−2)} induction −2 | +s·λ confirmed |
| 8.7 | n=2,3 | lengths 1+2d_L, 1+6d_L; PS₁ 1+2d_L | holds |
| 8.8 | n=1; n=2 L=ℚ_p | 1+d_L, lalg 1; 2 and 3 | holds |
| 8.8 (2) | n=3, ψ₁ | (123)·ψ₁ = ψ₂ | direction witness |
| 8.9 | n=2, λ=(1,1) | H₁(N⁻,L(λ)) = (0,2) matches ρ | holds; reverse direction removed |
| 8.10 | n=2 L=ℚ_p | ζ₁+ζ_s: 8 → 5 | not injective |
| 8.11 | n=2 ℚ_p; ℚ_p(√p) | 4; 6 | holds |
| 8.12 | n=1; n=2; I ⊆ {1..n−1} variant | 1+d_L; 5; variant gives 4 ≠ 5 | full index set confirmed |
| 8.13 | n=2,3 | π = π₁; π ≠ π₁ (lg 2) | holds |
| 8.14 | n=2 | 2 ⊆ 3 ⊆ 4 ⊂ 5 | holds |
| 9.1 | n=3, (2,1), (φ₃,φ₁,φ₂) | singleton φ₂z^{h₃}; θ^P = (0,0,−2) | holds |
| 9.2 | n=3, (2,1) standard | labels {1},{2},{1,2} | count 3 = #S |
| 9.3 | B, G, (2,1) | (n−1)d_L, (2^n−2)d_L, 3d_L | holds |
| 9.4 | B, G, (2,1) | n+nd_L, n+(2^n−1)d_L, 7 | holds |
| 9.5 | (2,1); one factor; three factors | 3+4d_L; kernel B₁ vs A₁; 6 vs 12 | corrected kernel confirmed |
| 9.7 | n=3 | {1},{2},{1,2} / {3},{1,3},{2,3}; 2(n+2d_L+(2^{n−1}−2)d_L) − (n+d_L) = n+(2^n−1)d_L | holds; n ≥ 2 |
| 10.1 | Hom_{σ,g′} | n + 2 − 1 = n+1 | holds |
| 10.3 | n=2, d_L=2 | Ext¹_σ 3 vs Ext¹ 4 | holds |
| 10.4 | n=1,3 | 2; 6 = 4+2 | holds |
| 10.5 | n=2, d_L=2 | 5, 8, 2; 3+3 = 6 | holds |
| 10.6 | G, B, (2,1) | n+2^n−1, 2n, 7 | holds |
| 10.7 | n=2 | 4+4−3 = 5 | holds |

Context check: `Suggested.lean` has no declarations, so no `variable` block can drop hypotheses. Generality: README statements are scoped as in the sources (E finite over ℚ_p throughout; spherical completeness only in 0.8; residue-characteristic hypothesis for 6.4–6.5 non-type-A factors stated at the layer head).

## 10. Not supported / limits

- The four SmoothRepresentationsOfLocalGroups finite-coefficient statements, Kostant for general split groups, barrelled Banach–Steinhaus and compact-type tensor duality are supplier gaps; the targets that use them say so in their *Needs:* lines.
- Humphreys, Schneider (p-adic Lie groups) and Schneider (NFA) are cited by locator only (uncertified); the Humphreys locators are those quoted by Breuil (socle II, p. 14) and Orlik–Strauch (§2.5), which I read.
- The full `gate` (identifier rule, build) was not run on a worktree here; the README has no backticked own names, which is what the identifier rule checks.
