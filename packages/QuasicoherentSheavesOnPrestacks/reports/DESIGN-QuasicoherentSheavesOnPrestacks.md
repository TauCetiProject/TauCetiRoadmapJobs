# Design report: DESIGN-QuasicoherentSheavesOnPrestacks

Deliverables: `packages/QuasicoherentSheavesOnPrestacks/design/README.md` (8 layers, 33 targets, every subsection with at least three Checks, every layer ending with Examples and Dependencies), `packages/QuasicoherentSheavesOnPrestacks/design/plan.json` (the same 33 targets, 1 gap), `packages/QuasicoherentSheavesOnPrestacks/sources.toml` (8 sources, `sources check`: 0 problems).

## What the design covers

| Target of `target.md` | Where it lives | Change from `target.md` |
| --- | --- | --- |
| T1 definition and formal properties | 2.1–2.3, with the module functor 1.2 | none in substance; presentability split into small colimits of affines (2.3, no descent needed) and the fpqc colimit closure (3.4(b)) |
| T2 change of context | 2.4; classical inputs 2.5 | spectral context replaced by the `E∞` context over ℤ (below) |
| T3 flat hyperdescent and fpqc descent | 3.1–3.4 | proof route made explicit through 1.3, 1.5 and EnhancedDerivedSheaves; the "fracture square" Check corrected (below) |
| T4 comparison with `D_qc` | 5.1–5.3 (5.2 is new: Zariski descent of `Dqc` for every scheme) | no qcqs hypothesis kept; route through Stacks 08D3 and EnhancedDerivedSheaves bounded-below hypercover descent |
| T5 direct image | 4.1–4.2 (affine), 5.4 (schematic) | classical context needs flatness (below) |
| T6 quotients | 7.1–7.4 | flatness removed from the invariance statement; `D⁺` comparison routed through GR-I Lemma 2.4.5 |
| T7 t-structure, Perf, APerf | 6.1–6.4 | quasi-geometric stacks replaced by geometric (affine diagonal) in all contexts, quasi-affine diagonal kept in the classical context |
| T8 compact generation | 8.1–8.5 | permanence stated with the flatness hypotheses the classical context needs; `BG_a` compactness Check dropped (below) |
| Inputs no supplier states | 1.1–1.5 | new: owned here (Ownership) |

### Decisions and corrections to the target

1. **Contexts.** The target's spectral context needs a t-structure on `Sp` and the module functor on `CAlg(Sp)^cn`; no supplier states either (EnhancedDerivedSheaves E5:presentability.2 constructs `Sp` but no t-structure; BordismFormalGroups' connective covers are concrete-model statements; StableHomotopyKTheory §5.18 compares concrete connective Ω-spectra). The design keeps three ℤ-linear contexts: `CRing`, `AnRing` and `CAlg^cn = CAlg(D(ℤ)_{≥0})`, the target of EnhancedDerivedSheaves' θ, with the module functor defined once on `CAlg^cn` and restricted along θ and θι (1.2). Every consumer named in `target.md` uses classical or animated rings only. The spectral context over the sphere is recorded as a Part II (Proposed Part IIs).
2. **T5(a) is false as stated in the classical context.** `target.md` asserts pointwise pushforward and base change for affine morphisms "in all contexts". For classical `f = g : Spec 𝔽_p → Spec ℤ` the fibre product is `Spec 𝔽_p`, and the Beck–Chevalley map at `F = 𝔽_p` is `𝔽_p ⊗ᴸ_ℤ 𝔽_p → 𝔽_p`, not an equivalence (`π₁ = 𝔽_p` on the left); moreover the pointwise formula for `f_*` is wrong at the point `Spec 𝔽_p → Spec ℤ`, since gluing the pointwise values requires `R′ ⊗ᴸ_R B ≃ R′ ⊗_R B` for every transition. 4.2 assumes f flat affine in the classical context; the animated and `E∞` contexts need no hypothesis. The target's own Check already contained the counterexample.
3. **T5(b) over a general classical prestack.** The pointwise construction through adjointable limits needs every transition square `Y_{η′} → Y_η` to be Tor-independent, which holds when f is flat and fails in general. 5.4 states (a) qcqs morphisms of schemes, transported from SchemeAndStackFoundations §2.18 (no flatness), and (b) flat maps of classical prestacks representable by qcqs schemes.
4. **T6(a) flatness hypothesis.** `QCoh([X/G]) ≃ QCoh(|G^{×•} × X|)` holds for every group prestack, since `QCoh` inverts every fpqc-local equivalence (3.3); flatness of G is what makes `X → [X/G]` an fpqc surjection and `[X/G]` geometric (7.1), and that is where it is stated.
5. **T6(b) bounded-below comparison.** HNR Theorem C.1 is about the lisse-étale `D⁺_qc`, not the functor-of-points `QCoh`. The design's route is GR-I Proposition 2.4.3 with Lemma 2.4.5 (p. 156, injectives `f_* I` along a flat affine atlas are acyclic), with SAG Corollary 10.4.6.8 (p. 930) as the statement for geometric stacks; HNR Theorem C.1 is cited as the lisse-étale analogue only.
6. **T3 Check "`ℤ → ℤ[1/p] × ℤ_p` ... (the fracture square)".** The Čech nerve of this cover contains `ℤ_p ⊗_ℤ ℤ_p`, which is not `ℤ_p` (rationally it is `ℚ_p ⊗_ℚ ℚ_p`), so descent along it is not the fracture square. The Check now computes the exact sequence `0 → ℤ → ℤ[1/p] ⊕ ℤ_p → ℚ_p → 0`, which puts ℤ in the thick tensor ideal of the target: the cover is descendable, and the equivalence agrees there with `moduleDescent`.
7. **T8 Check on `BG_a`.** HNR Proposition 3.1 concerns `D(QCoh(BG_a))` and the lisse-étale `D_qc`, not the functor-of-points `QCoh(BG_a)`, which is the left completion of `D(QCoh(BG_a)^♥)` (SAG Corollary 10.4.6.8) and differs from it (SAG Warning 10.4.6.9). The design keeps that Warning as a Check of 7.4 and computes the non-compactness of the unit for `B(ℤ/p)` over `𝔽_p` (8.5) directly from `Hⁱ(ℤ/p; 𝔽_p) = 𝔽_p`.
8. **T8(b) permanence.** BZFN's Proposition 3.21, Corollary 3.23 and Proposition 3.24 use derived fibre products. 8.3 states them in the animated and `E∞` contexts and, in the classical context, under flatness of the relevant leg; "relatively ample family" is replaced by a line bundle ample on every fibre, the hypothesis of the generation lemma actually available (Stacks 0BQR).
9. **T8(c).** BZFN Corollary 3.22 needs Chevalley's theorem that `GL_n/G` is quasi-projective with a `GL_n`-linearized ample bundle. No roadmap states it (`roadmaps grep` for Chevalley quasi-projective quotients: no match); it is the declared gap `chevalley-quasiprojective-quotient`, supplier ReductiveGroups, Layer 3.
10. **Target locators corrected.** Stacks 09IP is the section tag; the theorem is 36.15.3, tag 09IS, and compact = perfect is Proposition 36.17.1, tag 09M1. Stacks 071Q (Zariski/étale comparison) is not used: 5.2 works on the Zariski site directly. SAG Proposition 2.9.1.5 is on p. 278, Proposition 2.8.4.2 on p. 275, Lemma 6.2.1.12 on p. 488.

## Ownership

**Ownership by object.** `roadmaps grep -i --readme-only` over main and the 466 open roadmap pull request heads (index of 2026-11-07T02:20:52Z): "perfect stack" — no match; "D.6.3.1|flat hyperdescent|faithfully flat descent for module" — LanglandsParameterStacks §1.7 only; "4.5.3.1|4.8.5.21|A ↦ Mod_A" — AnalyticStacks (uses, no construction); "7.2.2.13|7.2.2.15|7.1.1.13" (flatness and the module t-structure over connective rings) — no match; "Mod_A^cn" — no match; "4.6.1.11|4.7.4.18|4.7.5.2" — PrismaticCohomologyPartII §4.0 only; "quasi-geometric|geometric stack" — unrelated uses; "Lemma 2.4.5|D⁺(QCoh" — unrelated; "QCoh(BG" — SchemeAndStackFoundations' abelian `QCoh(BG)` (used here as heart, not duplicated); "6.2.4.1|functor of points … D_qc" — no owner (one hit is HigherToposTheory's unrelated HTT 6.2.4.1). The board's package index lists three packages (AnalyticNumberTheory, LawrenceVenkateshMethod, LogicAndDefinabilityInNumberTheory), none on these objects.

**Notions moved down from later roadmaps.** Three roadmaps later in the merge order plan local versions of objects owned here; they become consumers, and their own application-specific parts stay with them:

- PrismaticCohomologyPartII §4.0: `QCohPrestack(X) = lim D(R)` on classical rings with evaluation, pullback, `specEquiv`, `flatDescent`, `sheafificationEquiv`, `cechDescent`, `QCohPrestack.Perf`, `affinePushforward`, `affineBaseChange`, `affineProjectionFormula` → 2.2–2.3, 3.2–3.3, 4.2, 6.3 here. Its `FormalQCoh` stays there.
- LanglandsParameterStacks §1.7: faithfully flat descent of module categories over animated rings → 3.2 here; §1.8's mapping stack stays there.
- HabiroCohomologyFoundations §1.27: the prestack right Kan extension, flat sheafification invariance and `QCoh` of the action-groupoid realization → 2.2, 3.3, 7.2–7.3 here; its lattice identification remains its application (7.3's last Check is that case).

Those roadmaps are open pull requests; amending them to cite this roadmap is outside this design. Until they are amended the library has two plans of these objects, and the merge order must place this roadmap before them (Dependency check).

**Owned here although in EnhancedDerivedSheaves' direction.** Layer 1 states the coherent module functor (HA 4.5.3.1, 4.8.5.21), the module t-structure, flatness, perfect and almost perfect modules over connective commutative algebras of `D(ℤ)` (HA §§7.1–7.2), and three limit statements (HA 4.6.1.11, 4.7.4.18, 4.7.5.2). EnhancedDerivedSheaves on main states modules, extension of scalars and categorical base change for one algebra (E5:abstract.2, E5:presentability.2) and animated modules (E5:animation.4), but none of these; no roadmap on main, in an open pull request or on the board states them (searches above). They are planned here because this roadmap is their first and only consumer at this generality and every later layer rests on them; planning them as gaps would leave all eight layers conditional on an unwritten EnhancedDerivedSheaves extension. They are proposed below as candidates for an EnhancedDerivedSheaves Part II; if one is opened, the reviewer can decide whether Layer 1 moves there.

**Ownership against open pull requests** was checked for every pull request this brief names, through `roadmaps grep` over all 466 open heads, and by reading PrismaticCohomologyPartII §4.0, LanglandsParameterStacks §§1.7–1.8, HabiroCohomologyFoundations §§1.27–1.28, AnalyticStacks §§1.1–1.2, the EnhancedDerivedSheaves amendment (#1630 in the index; it keeps every section id this design cites and disclaims ownership of quasi-coherent sheaves on prestacks in its Conventions) and HigherToposTheory (below).

**HigherToposTheory.** An open pull request of another author adds the new roadmap HigherToposTheory, which owns the general results of HTT and HA Chapter 1. The proof routes here use nine of them (fibred groupoids and Kan complexes, free cocompletion, groupoid objects, localizations, `D⁻` universal property, t-structures from colimit-closed subcategories, Giraud, hypercompleteness of truncated objects); they are cited by its sections L2.1, L2.2, L6.3, L6.8, L7.6, L9.4, L9.6, L10.5, L11.3, each read at its head, rather than restated. This is a dependency on an open pull request adding a new roadmap folder, which the brief allows; it must be named in the merge-order paragraph of the pull request.

## Gaps

- `gap:chevalley-quasiprojective-quotient` (needed by 8.4; supplier ReductiveGroups, Layer 3 "subgroups, quotients, components"): for a field k, H ⊆ `GL_n` a closed subgroup scheme of finite type, the fppf quotient `GL_n/H` is a quasi-projective k-scheme with a `GL_n`-equivariant immersion into the projectivization of a finite-dimensional representation. ReductiveGroups Layer 3 treats `G/H` as the fppf sheaf quotient and says representability is a theorem with hypotheses, without stating this one.

## Proposed Part IIs

- **QuasicoherentSheavesOnPrestacks, Part II (spectral prestacks).** The t-structure on `Sp` and connective `E∞`-rings over the sphere, the comparison `Mod_A(D(ℤ)) ≃ Mod_A(Sp)` for Hℤ-algebras, the module functor on `CAlg(Sp)^cn`, and the extension of Layers 2–8 to it, with T2's invariance along `CAlg^cn → CAlg(Sp)^cn`. Derived (spectral) schemes and non-affine derived base change (SAG Proposition 6.3.4.1 in full) belong with it.
- **EnhancedDerivedSheaves, Part II (candidate).** The coherent module functor of 1.2, the module theory of 1.3–1.4 and the limit statements of 1.5, if the reviewer prefers that they live with the higher-algebra roadmap; see Ownership.

## Sources

All eight sources were read through the sources service from legal places: SAG, HA and HTT (author page; HTT added this round with `--licence-class author-page` after checking it is Lurie's own page), GR-I (authors' book page), BZFN, HNR, HR-perf (arXiv), and the Stacks Project, whose chapters Derived Categories of Schemes (now the recorded file) and Sheaves on Algebraic Stacks were also fetched to verify tags 0A0J, 08D3, 06Z0, 08DZ, 08E8, 09IS, 0BQR, 09M1, 08EU, 08IB, 06WG and 06WT. No source was unreadable and there is no `needs-references.toml`. Each locator in the README was opened in the cached text; representative lines: SAG line 17835 (Definition 6.2.2.1), 17889 (Proposition 6.2.3.1), 17905 (Proposition 6.2.3.4), 18011 (Example 6.2.5.7), 18072 (Proposition 6.2.6.2), 18368 (Proposition 6.3.4.1), 26667 (Proposition 9.1.3.1), 33959 (Corollary 10.4.6.8), 79502 (Theorem D.6.3.1); HA line 22977 (Theorem 4.5.3.1), 23655 (Proposition 4.6.1.11), 26640 (Corollary 4.7.4.18), 26834 (Theorem 4.7.5.2), 28674 (Corollary 4.8.5.21), 46134 (Proposition 7.1.1.13), 47511–47532 (Definition 7.2.2.10 to Theorem 7.2.2.15), 48281–48556 (Propositions 7.2.4.2–7.2.4.17); HTT line 2081 (Proposition 1.2.5.1), 3037 (Proposition 2.1.1.3), 31182 (Lemma 6.5.2.9); GR-I line 7446 (Theorem 1.3.4), 7474 (Corollary 1.3.11), 7572 (Proposition 1.4.4), 7740 (Proposition 2.2.2), 7872–7888 (Proposition 2.4.3, Lemma 2.4.5); BZFN line 834 (Definition 3.2), 970 (Proposition 3.9), 1189–1216 (Propositions 3.21, 3.24, Corollaries 3.22–3.23); HNR line 45 (Theorem 1.1), 807 (Theorem C.1); HR-perf line 27 (non-tame stacks).

## Adversarial pass

One row per statement; the values on both sides are computed.

| Statement | Instances tried | Values computed | Result | Change |
| --- | --- | --- | --- | --- |
| Indexing convention | `𝔽_p ⊗ᴸ_ℤ 𝔽_p` | `π₀ = π₁ = 𝔽_p` ⇔ Mathlib `H⁰ = H⁻¹ = 𝔽_p` | consistent | witness added |
| Flatness convention | `ℤ→ℤ[x]`, `ℤ→ℚ`, `ℤ→𝔽_p`, `𝔽_p→𝔽_p⊗ᴸ𝔽_p` | ff; flat not ff (`ℚ⊗ℤ/p=0`); not flat; `π₁`: 0 vs `𝔽_p` so not flat | consistent | witness added |
| Cover convention | empty family; `{ℤ[1/2], ℤ[1/3]}` | covers exactly `0`; primes 2, 3 each missed by one factor only | holds | witness added |
| Base-change direction | classical and animated `Spec 𝔽_p → Spec ℤ ← Spec 𝔽_p` | `g^*f_*𝔽_p = 𝔽_p⊗ᴸ𝔽_p` (`π₁=𝔽_p`) vs `f′_*g′^*𝔽_p = 𝔽_p`; animated both `𝔽_p⊗ᴸ𝔽_p` | classical fails, animated holds | used to correct T5 |
| 1.1 test rings | zero ring; `𝔽_p⊗𝔽_p`; free algebra | `θι(0)=0`; ι pushout `𝔽_p` vs `π₁=𝔽_p`; `π₁` of `(ℤ⊗ℤ)_{hΣ₂}` `= ℤ/2` vs `θ(ℤ[x])` discrete | θ not equivalence, ι not pushout-preserving | stated as API |
| 1.2 module functor | `A = 0`; `ℤ→𝔽_p` pushout; `R→R[t]` | `Mod_0 = 0`; base change both sides `𝔽_p⊗ᴸ𝔽_p` in `CAlg^cn`, `𝔽_p` with ordinary pushout; projection formula `R[t][1]` both sides | holds in `CAlg^cn`; ordinary pushout fails | Check added |
| 1.3 t-structure, flatness | `A = 𝔽_p⊗ᴸ𝔽_p`; `ℤ→ℚ`; `ℤ→𝔽_p` | heart `ModuleCat 𝔽_p`; `ℚ⊗ℤ/p = 0` (not conservative); `𝔽_p ↦ 𝔽_p⊗ᴸ𝔽_p` not discrete | as stated | route states the transfer from HA's `Sp` setting |
| 1.4 perfect, almost perfect | `ℤ⊕ℤ[3]`; `k` over `k[ε]/ε²`; `k[x₁,x₂,…]`; `ℤ/p` | dual `ℤ⊕ℤ[−3]`; `Tor_i = k` all i (not perfect, almost perfect); max ideal not f.g. (not almost perfect); dual `ℤ/p[−1]` not connective | as stated | locally free = summand of `A^n` (SAG 2.9.1.1), not "flat and perfect" alone |
| 1.4 base-change stability | 0-truncated `𝔽_p` over ℤ | base change to `𝔽_p` has `π₁ = 𝔽_p` | truncatedness unstable | excluded from pointwise properties (6.1) |
| 1.5 limits | empty diagram; `D(ℤ)²`; ordinary pushout square | limit = zero category; `(ℤ,ℚ)` not dualizable, `(ℤ,ℤ[1])` invertible; ordinary square not adjointable | adjointability is a hypothesis | Check added |
| 1.5 descent criterion | identity augmentation | `C^{−1} = C⁰`, comonad identity | holds | — |
| 2.1 points | `Spec 0`; `BΓ`; fibre product | `Spec 0(0) = ∗` ≠ ∅; `π₁ = Γ`; `Spec 𝔽_p` vs `Spec(𝔽_p⊗ᴸ𝔽_p)` | as stated | — |
| 2.2 `QCoh` definition | `∅`; `Spec ℤ`; `Spec A ⊔ Spec B`; `B(ℤ/2)×Spec 𝔽₂` | zero category (colimit formula: empty ∞-category, not stable); `D(ℤ)`; `Mod_A×Mod_B`; `H¹(ℤ/2;𝔽₂)=𝔽₂` vs atlas `Ext¹=0` | limit formula correct | — |
| 2.3 formal properties | `ℤ/p⊗ℤ/p`; `Ext¹_ℤ(ℤ/p,ℤ/p)` | `π₀=π₁=ℤ/p`; `ℤ/p` | as stated | presentability limited to u-small colimits of affines |
| 2.4 change of test rings | `ι^*Spec(𝔽_p⊗ᴸ𝔽_p)`; `ι_!` of fibre product | `Spec 𝔽_p` with `QCoh = D(𝔽_p)` vs unit `π₁ = 𝔽_p`; `Spec 𝔽_p` vs `Spec(𝔽_p⊗ᴸ𝔽_p)` | `u_!` preserves QCoh, `u^*` does not; `u_!` not left exact | API states it |
| 2.5 classical prestacks | `B(ℤ/2)` over ℝ, ℝ×ℝ; strictly henselian R; `k[ε]` | `π₀` 2 elements, `π₁ = ℤ/2`; `π₁ = (ℤ/2)²`; π₀-truncation a point vs `π₁ = G(R)`; field points do not separate `id` and `ε↦0` | as stated | a Check claiming loss of a QCoh class was removed as unverified |
| 3.1 fpqc topology | empty family; `ℝ→ℂ`; `ℤ→𝔽_p`; `ℤ→ℚ` | covers 0 only; finite étale ff; not flat; not ff | as stated | — |
| 3.2 flat hyperdescent | identity; Zariski `A_f × A_g`; `ℤ→ℤ[1/p]×ℤ_p`; `ℤ→𝔽_p`; `𝔽_p→𝔽_p[ε]/ε²` | constant nerve; pullback square of three module categories; `ℤ_p⊗_ℤℤ_p ≠ ℤ_p`, exact `0→ℤ→ℤ[1/p]⊕ℤ_p→ℚ_p→0`; `ℚ ↦ 0`; free rank 2 ff | holds; fracture Check of target wrong | Check corrected (Decision 6) |
| 3.2 codegeneracies | Čech nerve of `A → B` | multiplication `B⊗_AB → B` is not flat in general | route uses `Δ_s` (injective maps, flat) | route states it |
| 3.3 sheafification | `∅ → Spec 0`; `Spec A ⊔ Spec B → Spec(A×B)`; `Spec 𝔽_p → Spec ℤ`; `BΓ` | `0 = 0`; `Mod_A×Mod_B = Mod_{A×B}`; Čech kills ℚ; constant prestack and torsor stack both `Fun(BΓ, Mod_k)` | as stated | — |
| 3.4 Zariski gluing | `ℙ¹_k`; `⨿_ℕ Spec ℤ`; ∅ | coker `k[t]⊕k[t⁻¹]→k[t^{±1}]`, `(a,b) ↦ a − t⁻²b`, is `k·t⁻¹`; `∏_ℕ D(ℤ)`; 0 | as stated | — |
| 4.1 affine morphisms | `𝔸²∖0 → 𝔸²`; `pt → BG`; `BG → pt` | fibre over identity point not affine; fibre G affine; fibre BG not affine | as stated | — |
| 4.2 affine pushforward | `Spec R[t]→Spec R`; classical `Spec 𝔽_p → Spec ℤ`; `M = R[1]` | `R[t]` infinite rank; pointwise `𝔽_p` vs actual `𝔽_p⊗ᴸ𝔽_p`; `B[1]` both sides | classical non-flat fails | flatness added in classical context (Decision 2) |
| 4.2 example | finite flat non-finitely-presented `A → B` | `B` not perfect over A | "finite flat" too weak | example changed to finite locally free |
| 5.1 affine comparison | `ℤ/2`; `ℤ→𝔽_p`; `ℤ/2⊗ᴸℤ/2` | `(ℤ/2)~` at (2); `H⁰ = H⁻¹ = 𝔽_p`; `(ℤ/2)~` in degrees 0, −1 | as stated | — |
| 5.2 Zariski descent of `Dqc` | `ℙ¹`; `⨿_ℕ ℙ¹`; `j_!O_U` (DVR) | `H¹(O(−2)) = k` from charts; product; `j_!O_U ∉ Dqc` | needs `Rlim` convergence (08D3), true for all schemes | qcqs not assumed |
| 5.3 scheme comparison | `O_X`; `ℙ¹`; `⊕_ℕ O`; `⨿_ℕ Spec ℤ` | `O_X[0]`; `k`; not perfect both sides; `∏ D(ℤ)` both sides | as stated | — |
| 5.4 schematic pushforward | `ℙ¹_k → Spec k`; closed point square; `ℙ¹_ℤ`, `ℤ→ℚ` | `f_*O(−2) = k[−1]`; base change fails; `ℚ[−1]` | Tor-independence needed | (b) restricted to flat maps (Decision 3) |
| 6.1 pointwise properties | truncatedness; `⊕_ℕ O`; `BΓ` | unstable under base change; flat not perfect; perfect ⇔ underlying perfect | as stated | fpqc-locality moved here from 1.4 (needs 3.2) |
| 6.2 t-structure | `𝔽_p` on `Spec ℤ`; `BG_m/ℤ`; `B(ℤ/2)/𝔽₂` | coconnective, pullback to `𝔽_p` has `π₁ ≠ 0`; heart graded abelian groups; heart `𝔽₂[ℤ/2]`-mod, `Ext¹ = 𝔽₂` | coconnectivity not pointwise | affine diagonal in all contexts, quasi-affine in classical |
| 6.3 perfect = dualizable | `ℤ⊕ℤ[3]`, ℚ; `O[1]`; `O⊕O`; `ℤ/p` | dualizable / not; invertible not line bundle; dualizable not invertible; perfect connective not locally free | as stated | — |
| 6.4 almost perfect | `k/k[ε]`; `⊕_ℕ O`; `k[x₁,…]`; `ℤ/p` on `Spec ℤ` | aperf not perf; `π₀` not f.g.; not aperf; aperf (`D⁻_coh`) | as stated | — |
| 7.1 group prestacks | trivial group; translation; constant Γ | constant bar construction; final realization; `BΓ` | as stated | — |
| 7.2 realizations | `[G/G]`; `B(ℤ/2)/𝔽₂`; `BG_m` | `QCoh = D(ℤ)`; `H¹ = 𝔽₂`; graded | holds without flatness | flatness removed from the invariance (Decision 4) |
| 7.3 discrete quotients | trivial Γ; ℤ trivially on `Spec C`; `ℤ^d`, d = 0 | `QCoh(X)`; `H¹(ℤ;C) = C` (coarse quotient: 0); `D(C)` | as stated; Γ infinite allowed | — |
| 7.4 classical quotients | `G_m/ℤ`; `ℤ/p/𝔽_p`; `G_a/𝔽_p` | graded; `Ext^i = 𝔽_p` all i = `π₀Map(O,O[i])`; `D(heart)` not left complete | only `D⁺` claimed | route via GR-I Lemma 2.4.5 (Decision 5) |
| 8.1 qcqs schemes | `Spec A`; `ℙ¹`; `⨿_ℕ Spec ℤ` | generator O; `O⊕O(−1)`; `Hom(O, ⊕O_i) = ∏ℤ ≠ ⊕ℤ` | qc needed for compact = dualizable | Check added |
| 8.2 perfect stacks | `Spec A`; `BG_m`; `⨿_ℕ Spec ℤ` | perfect; compact = finitely many perfect weights = dualizable; O dualizable not compact | definition must require compact = dualizable | — |
| 8.3 permanence | `B(G_m²)`; classical non-flat closed point | perfect; classical base change fails | classical needs flatness | hypotheses added (Decision 8) |
| 8.4 char 0 quotients | `B(ℤ/p)/ℚ`; `BG_a/ℚ`; `B(ℤ/p)/𝔽_p` | invariants exact (Maschke); `GL₂/G_a` quasi-affine; not perfect | char 0 needed | Chevalley input recorded as gap |
| 8.5 char p | trivial Γ; `ℤ/p/𝔽_p`; `ℤ/p/ℚ` | `Hⁱ = 0` (i>0), compact; `Hⁱ = 𝔽_p` all i, `⊕ → ∏` not surjective; compact | as stated | `BG_a` Check dropped (Decision 7) |

Context checks (point 2 of the pass): every theorem that needs a standing hypothesis states it in its own sentence (flatness in the classical context of 4.2, 5.4, 8.3; qcqs in 5.4(a), 8.1; affine diagonal and atlas in 6.2(b), 6.4, 7.4(d); characteristic zero in 8.4). Generality (point 3): the README's generality is that of the plan's statements; the target's spectral context is the only narrowing, recorded as a Part II with its reason. Vacuity (point 6): every headline mentions `QCoh` or a module functor defined here. Duplication by object (point 9): Mathlib at the pin has `DerivedCategory.TStructure.t`, `fpqcTopology`, `Pseudofunctor.IsStack`, `CoGrothendieck` and no ∞-categorical module functor, presentable categories or Kan-complex instance for nerves of groupoids (grep of `Mathlib/AlgebraicTopology` and `Mathlib/CategoryTheory`); Tau Ceti at the pin has quasicategory cores (`TauCeti/AlgebraicTopology/Quasicategory/Core.lean`) and nothing on module categories of ring spectra.

## Acceptance test

`Suggested.lean` is not a deliverable of this job. Mathlib at the pin has quasicategories but no presentable or stable ∞-categories, so the headlines are statable only through shadows: the classical homotopy-category statements of 2.3 and 5.3 against `DerivedCategory`, the group-cohomology computations of 2.2, 7.3 and 8.5 against `groupCohomology`, and the abelian hearts of 6.2 and 7.4 against SchemeAndStackFoundations' `Stacks.QCoh`. The packaging step has to choose among them without sorry'd data.

## Dependency check

Output of `tauceti-roadmap gate --candidate packages/QuasicoherentSheavesOnPrestacks/design/README.md --only QuasicoherentSheavesOnPrestacks` with the board's merge order and the content checkout:

    candidate: QuasicoherentSheavesOnPrestacks is not in the merge order yet; checked as if placed after GlaubermanZStar (the intake inserts it when its design is accepted)
    depcheck: 240 roadmaps, 2351 edges, 0 problem(s)

No UPWARD or CYCLE line. The tool places the candidate after the last line of the order because none of its suppliers is in the order: EnhancedDerivedSheaves, SchemeAndStackFoundations, DerivedModuleAlgebra and ReductiveGroups are on main, and HigherToposTheory is another author's open pull request. For the ownership moves above, the intake should insert it at the top of the order, before AlgebraicModuliForArithmeticGeometry, so that PrismaticCohomologyPartII, LanglandsParameterStacks, HabiroCohomologyFoundations, AnalyticStacks and AlgebraicModuliForArithmeticGeometry, its consumers, follow it. `roadmaps resolve` on the README: no cross-roadmap citation and no Lean name found nowhere. `roadmaps overlaps QuasicoherentSheavesOnPrestacks`: no roadmap of this name on main or in an open pull request, hence no dropped ids.

## Suspicious text

None. The target, the triage report, the roadmaps read and the fetched sources contained no instructions.
