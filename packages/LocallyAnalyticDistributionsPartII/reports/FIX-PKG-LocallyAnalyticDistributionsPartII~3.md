# Repair of LocallyAnalyticDistributionsPartII (package, round 3)

Resolves the seventeen findings of REV-PKG-LocallyAnalyticDistributionsPartII~2 (R01–R17) and the gate failure on `sources.toml`. Every finding was checked against the cached sources, the pinned Tau Ceti and Mathlib, and computed instances. All seventeen are correct, and all are applied. Files changed: `packages/LocallyAnalyticDistributionsPartII/README.md`, `Suggested.lean`, `sources.toml`, and `design/plan.json` (top-level `gaps` only).

## R01 (P1) — applied

The claim is correct for the README's convention, where C^la[ν] is the eigenspace for the contragredient of left translation. Then a central z acts as ρ(Sz), with ρ the right regular action, and the transpose of z − λ(z) is right multiplication by Sz − λ(z). §4.3 changes from D_λ ≅ C^la[λ]′ to D_λ ≅ C^la[λ∘S]′, with Ann(C^la[ν]) = D·ker(ν∘S). It now has a real proof sketch, the torus witness (2 ≠ 0 against 0) and the SL₂^m specialisation. I propagated the change to §4.5 (inversion carries C^la[ν] onto C^la[ν∘S], so both are dense), the §4.6 sketch, Source corrections item 10 and the `Suggested.lean` docstring.

## R02 (P1) — applied

KOH07 lines 222–227 define D(G,K)_C (distributions supported in C), and line 683 uses that subspace. §2.3 changes from "closure of D(G,K)·D(H,K) … basis in K[H]" to the closure of the H-supported distributions, D_r(G,K)_H. It is a free right U_r-module with basis b^α (α_i < ℓ_i for i ≤ j, α_i = 0 for i > j), so its rank is ℓ₁⋯ℓ_j, and it equals the closure of D(H,K)·U(g_K) (KOH07 Lemma 1.2.10, line 357). Compatibility is now spelled out.

## R03 (P1) — applied

AW13 line 2060 (§6.7) assumes 𝔾 simply connected from there on, and §9.2 (lines 2816–2829) uses this to get lattices. The PGL₃ witness at p = 3 is verified: det q = −2/27, and 1 − 3q = diag(0, 0, 3). Changes in §3.8:
- (a) stays general, through a deeper level n with p^{n+a}𝔤 ⊆ 𝔤_sc.
- (b) is now an equivalence onto the modules with a p^a𝔤-stable lattice, and onto all finite-dimensional modules when 𝔾 is simply connected.
- (c) is now stated for simply connected 𝔾.
- A PGL₃ negative control is added.

In §3.9, lattice existence is now stated for g_R inside a Chevalley lattice, and a PGL₃ Check is added.

## R04 (P1) — applied

§1.2 changes from "free left and right D(H,K)-module on δ_{g_i}" to: free right module on δ_{g_i} for left-coset representatives (ST02 line 516), and free left module on δ_{g_i⁻¹}. The S₃ counterexample is added in prose: H(23) = H(123), giving span dimension 4 < 6, while the inverses lie in three distinct right cosets. I checked this by computation. The normal case is unchanged. §2.4(iii) uses a normal subgroup and is unaffected.

## R05 (P1) — applied

AB07 line 626 prints the cocycle-free formula. §4.9 changes from β(Σ r_g ḡ)(h̄) = r_{h⁻¹} to β(t)(x) = pr₁(tx) (normalising 1̄ = 1). The sketch now states the right T-module structure and proves β∘α = id and α∘β = id. The witness ℚ[u]/(u² − 2) gives 1 rather than 1/2. Source corrections item 11 (AB07 §5.4, p. 17) is added. The Ext theorem is unchanged.

## R06 (P1) — applied

The §4.2 bullet changes from "equality ⇔ every P_z even" to: for fixed χ, equality holds iff P_z(dχ + ρ) = P_z(−(dχ + ρ)) for every generator z. Evenness is equivalent to equality for all χ, because the dχ form a Zariski-dense lattice. Added witnesses: the trivial character of G_m (0 = 0 with P_x = X odd), the trivial SL₃ character (0 = 0), and the SL₃ character of the last Check (−6 ≠ 6).

## R07 (P1) — applied

The §3.3 Check changes from S₀ = R ∖ {0} to S₀ = ⋃_a p^a(1 + pR). For R = ℤ₃, 1 and 3 lie in S₀ but 2 does not. Its saturation is R ∖ {0}, and R_{S₀} = K is unchanged, consistent with the §3.7 Check that augmentations lie in p^a(1 + pℤ_p).

## R08 (P2) — applied

ST03 lines 474–477 (Lemma 3.8) assume B coadmissible as a left A-module. In gap:frechet-stein-general, "restriction of coadmissibility along a map of Fréchet–Stein algebras" becomes: for continuous unital A → B with B coadmissible over A, a left B-module is coadmissible over B iff it is over A. The change is made in both the README contract and the plan.json `gaps` entry (same slug, same supplier PadicLocalLanglandsForGL2Qp §0.1).

## R09 (P2) — applied

Verified at the pin:
- `Module.Basis.pbwBasis` (TauCeti/Algebra/Lie/UniversalEnveloping/PBW/Basis.lean:96, any commutative ring) and `Module.Basis.pbwBasis_eq_prod_pow` (:175);
- `TauCeti.UniversalEnvelopingAlgebra.pbwAssociatedGradedEquiv` (PBW/Injective.lean:213, `Module.Free`).

The §2.1 bullet now cites these in place of "span + LieHighestWeight Layer 3". The same update is made in Scope, the Tau Ceti and LieHighestWeight contracts, the §1.1 injectivity bullet, and the Needs lines of §§1.1, 2.1, 2.5 and 3.2, plus the Dependencies of Layers 1–3. LieHighestWeight Layer 3 is now cited for Verma modules only.

## R10 (P2) — applied

`TauCeti.symPowerRep` exists (TauCeti/RepresentationTheory/ClassicalGroups/SymmetricPower.lean:57). I added `exists_surjective_algHom_end_symPower`: for p odd, m, k ∈ ℕ^m and K/ℚ_p finite, there is a surjective Φ : K ⊗ ℤ_p[[G₁^m]] →ₐ[K] End_K(⨂_i Sym^{k_i}(K²)) under which each g acts by `PiTensorProduct.map` of the `symPowerRep` factors. This single theorem covers both the m = 1 form and the product form. Also updated: the "not statable" docstring entry (removed), README §5.2, the Summary, Scope, the contracts and the Layer 5 Needs and Dependencies.

## R11 (P2) — applied

The §3.1 Check changes from "Q_{1}(A) = A" to: S = 1 + F_{−1}A consists of units (Zariskian: F_{−1}A ⊆ J(F₀A), AW13 line 403), so A_S = A and Q_T(A) = Â, which equals A iff the filtration is complete. Added the controls ℤ_(3) ↦ ℤ₃ ≠ ℤ_(3) and ℤ₃ ↦ ℤ₃.

## R12 (P3) — applied

The §4.11 sketch changes from "commutative hypersurface" to: the graded ring is the quotient by the symbols (½H_i² + 2E_iF_i)^{p^n}, each monic in its own H_i. They form a regular sequence, so the ring is a commutative complete intersection (a hypersurface only for m = 1) and hence Gorenstein, which is what AW13 Proposition 2.5(b) needs.

## R13 (P3) — applied

The §3.9 locator changes from "AW13 §9.2, Theorem and its proof, p. 61" to "§9.2, Proposition and its proof, p. 61" (AW13 line 2816). The new §3.8 text cites the same Proposition and its Corollary.

## R14 (P3) — applied

In §3.8 the congruence depth is renamed a: p^{a+1}𝔤 = R ⊗ L_G, U_n ≅ Û(𝔤)_{n+a,K}, and the congruence kernel has level p^{a+1}. The headline paragraph changes from "level m + 1 = 1" to "depth a = 0, level a + 1 = 1, whatever the number m of factors". No other section reused m as a depth (§4.13 uses n, as in AW14).

## R15 (P3) — applied

The §2.1 Check now takes h ≠ 0 with a basis vector u (for instance h = R·u). The coefficients π^n tend to zero in the basis u^n but are constantly 1 in the basis (πu)^n. Added the h = 0 equality control Û(π·0)_K = K.

## R16 (P3) — applied

The §3.6 sketch changes from "agreement … on the dense subgroup G" to agreement on G, hence on the dense K-linear span K[G], then by continuity. It notes that G itself is not dense, since the augmentation sends G to 1. The other density statements (§1.1 Dirac span, §3.9 ℤ_p[G₁]) already use spans.

## R17 (P3) — applied

§4.12 changes from "R-linear character a : t₀ = ⊕ℤ_p h_i → R" to a ℤ_p-linear map extended R-linearly to R ⊗ t₀ = ⊕ R h_i, the character of §4.13. Added the witness a(√3 h) = √3(−1 + √3) for R = ℤ₃[√3]; a(h)(a(h) + 2)/2 = 1. The same pattern appeared in §4.13 (𝔾 over ℤ_p but 𝔤 used over R): I set 𝔤 := R ⊗ Lie(𝔾), with t = R ⊗ t₀ (AW14 lines 336–337, 731).

## Checks

**Elaboration.** `lake env lean packages/LocallyAnalyticDistributionsPartII/Suggested.lean`, run from the content checkout, exited 0. The only diagnostics are the two expected warnings: `Suggested.lean:78:8: declaration uses 'sorry'` (`isSemisimpleModule_of_finiteDimensional`) and `Suggested.lean:98:8: declaration uses 'sorry'` (`exists_surjective_algHom_end_symPower`). The new import `TauCeti.RepresentationTheory.ClassicalGroups.SymmetricPower` already had its object file, so no targeted build was needed. There is no `set_option`, no sorry'd data, and `import Mathlib` plus individual `TauCeti.*` modules only.

**Signature check.** I put `#check @` for all four declarations in one scratch copy and elaborated it. The two definitions keep `[Fact p.Prime]`. `isSemisimpleModule_of_finiteDimensional` keeps `p ≠ 2`, both module structures, the scalar tower and `FiniteDimensional`. `exists_surjective_algHom_end_symPower` keeps `p ≠ 2`, `k : Fin m → ℕ`, `Field K`, `Algebra ℚ_[p] K`, `FiniteDimensional ℚ_[p] K`, `Algebra ℤ_[p] K` and `IsScalarTower ℤ_[p] ℚ_[p] K`. No binder was lost, and every declaration carries its binders explicitly (there are no section variables). Each elaborated type matches its README statement (§0.2, §3.8, §5.2).

**One-tactic probes.** For the new theorem, `simp` leaves unsolved goals, `aesop` fails after exhaustive search, and `rfl` fails. It is not padding.

**Dependency check.**

~~~text
depcheck: 236 roadmaps, 2138 edges, 0 problem(s)
~~~

There is no UPWARD, CYCLE or moved line. No new supplier roadmap was introduced: the new citations are Tau Ceti and Mathlib declarations at the pins.

**Citation resolver** (`roadmaps resolve` on the README): no cross-roadmap citation and no Lean name found nowhere. External Lean names were checked by hand at the pins: `Module.Basis.pbwBasis`, `Module.Basis.pbwBasis_eq_prod_pow`, `TauCeti.UniversalEnvelopingAlgebra.pbwAssociatedGradedEquiv`, `TauCeti.UniversalEnvelopingAlgebra.pbwFiltration` (PBW/Basic.lean:75), `TauCeti.symPowerRep`, `TauCeti.completedGroupAlgebra.of` (Basic.lean:252), and `PiTensorProduct.map` and `Matrix.SpecialLinearGroup.toGL` (both elaborate).

## Gate failure

- **sources.toml: source 15 (DG70): missing authors.** I added `authors = "Michel Demazure, Pierre Gabriel"` and corrected the garbled title to `Groupes algébriques. Tome I`. The key DG70, status `waived`, locator `II §6.1.5` and resolution are unchanged. A parse of the manifest confirms that all 15 entries now carry `id`, `authors`, `title`, `year`, `locator_scheme`, `licence_class` and `status`.

## Adversarial pass on the added and changed statements

| Statement | Instances tried | Values computed | Result | Change |
|---|---|---|---|---|
| §4.3 D_λ ≅ C^la[λ∘S]′ | torus 1+3ℤ₃, f(g)=g, x=1; SL₂ | x·f = −f; (x̃+δ₁)(f) = 1+1 = 2; (x̃−δ₁)(f) = 1−1 = 0; S(Δ) = Δ | antipode needed; SL₂ unchanged | R01 |
| §4.3 transpose identity | ⟨μ∗μ′,f⟩ vs ⟨μ,ρ(μ′)f⟩; ι(x̃) | both μ(g ↦ μ′(h ↦ f(gh))); ι(x̃)(f) = (d/dt)f(exp(−tx)) = −x̃(f) | holds | sketch rewritten |
| §4.5 inversion | f ∈ C^la[ν] ↦ f∘inv | L(μ)(f∘inv)(h) = μ(g ↦ f(h⁻¹g)) = (ρ(μ)f)(h⁻¹); eigenvalue ν(Sz); sup norm preserved | dense ⇔ dense | added |
| §2.3 supported closure | G=ℤ_p, r₁; H={1}; H=G; G=ℤ_p², H=ℤ_p×0 | ℓ = p at r₁ (n=p term = 1 > r₁ and > p²·p^{−p}); ranks 1, p, p (D_r rank p²); old product closure rank p ≠ 1 for H={1} | corrected object | R02 |
| §3.8(b) general | PGL₃, p=3, a=0 | q eigenvalues 1/3, 1/3, −2/3; v₃(det q) = −3; 1−3q = diag(0,0,3); 3q = diag(1,1,−2) ∈ sl₃(ℤ₃), so c = 1 | fails without s.c.; holds at depth 1 | R03 |
| §3.8(a) general | PGL₃ example, n ≥ 1; SL₂^m | 3^n𝔞 ⊆ sl₃(ℤ₃) stabilises ℤ₃³; c = 0 for SL₂^m | deep-level proof valid | R03 |
| §1.2 transversals | S₃, H=⟨(12)⟩, reps 1,(23),(123) | left cosets 3 distinct; right cosets of reps 2 distinct (H(23) = H(123) = {(23),(123)}); inverses 1,(23),(132): 3 distinct | separate bases needed | R04 |
| §4.9 Frobenius inverse | ℚ[u]/(u²−2), τ(u,u)=2; trivial H | α(f) = u/2; pr₁(u²/2) = 1 = f(u); pr₁(u/2) = 0 = f(1); old formula 1/2; H trivial: β = id | correct inverse | R05 |
| §4.2 fixed χ criterion | G_m trivial χ; SL₃ trivial χ; SL₃ χ=(1,1,−2) | 0 = 0 (P odd); P(ρ)=1·0·(−1)=0=P(−ρ); 2·1·(−3) = −6 vs 6 | pointwise ≠ evenness | R06 |
| §3.3 S₀, G={1} | R=ℤ₃ | 1 ∈ 1+3ℤ₃; 3 ∈ 3(1+3ℤ₃); 12 = 3·4 ∈ S₀; 2, 6, −1 ∉ S₀; R_{S₀} = ℚ₃ | S₀ ≠ R∖{0} | R07 |
| gap FS restriction | A=ℚ_p, B=ℚ_p⟨T⟩; B=A² | dim_A B = ∞ (excluded); dim_A A² = 2 (allowed) | hypothesis needed | R08 |
| §2.1 PBW basis | rank 0; rank 1; sl₂(ℤ₃) | 1 monomial; u^n; filtered degree ≤ 1 has 1+3 = 4 basis vectors | native at pin | R09 |
| §5.2 Peter–Weyl headline | m=0; k=(0); k=(1); trivial-action control | End_K(K) = K, Φ(1)=1; End dim 1; span of I, I+pE₁₂, I+pE₂₁, diag(1+p,(1+p)⁻¹) has dim 4 = (1+1)²; trivial action gives image K ≠ M₂(K) | true; prescribed action matters | R10 |
| §3.1 Q_{1}(A) | ℤ_(3); ℤ₃ | A_S = A in both; completions ℤ₃ and ℤ₃; ℤ_(3) ⊊ ℤ₃ | Q = Â | R11 |
| §4.11 graded ring | m=0,1,2; p=3, n=1 | codimension 0, 1, 2 in 0, 3, 6 variables; q_i³ monic in H_i (degree 6) | complete intersection | R12 |
| §3.8 depth vs factors | m=0,1,2 with a=0 | level a+1 = 1 in all three; old text gave m+1 = 1, 2, 3 | collision removed | R14 |
| §2.1 strict inclusion | h=Ru; h=0 | coefficients |π|^n → 0 vs 1; K = K | rank ≥ 1 needed | R15 |
| §3.6 density | G={1}; augmentation | closure of {1} = {1}; span K[{1}] = K; aug(g) = 1, aug(0) = 0 | span, not set | R16 |
| §4.12 scalar domain | p=3, λ=1, R=ℤ₃[√3] | a(h) = −1+√3; a(h)(a(h)+2)/2 = (3−1)/2 = 1; a(√3h) = 3−√3; √3h ∉ ℤ₃h | domain R⊗t₀ | R17 |
| §4.13 𝔤 := R⊗Lie(𝔾) | R=ℤ_p; R=ℤ₃[√3] | p^n𝔤 and R⊗L_G both R-lattices; for R=ℤ_p the two readings agree | type-correct | R17 pattern |

## For the maintainer

- **New Lean name:** `TauCetiRoadmap.LocallyAnalyticDistributionsPartII.exists_surjective_algHom_end_symPower`. No existing name was renamed or deleted.
- **No ids moved:** no section, layer or target was renumbered. Source corrections gained item 11, and item 10 is extended.
- **Ownership:** the algebraic Peter–Weyl theorem for Iwasawa algebras of congruence subgroups stays owned here. I searched the open heads and main (`roadmaps grep`) for Peter–Weyl and `symPowerRep`. The only Peter–Weyl owner is RepresentationTheory, which states the analytic compact-group theorem, a different object. GL2AutomorphicRepresentationsAndTransfer uses `symPowerRep` only for algebraic weights.
- **Missing sources:** none. No `needs-references.toml` was written, and the settled keys (SCH11, FROM03, DDMS99, MR01, DG70) were not requested.
- **Suspicious text:** none found in the review or the sources.
