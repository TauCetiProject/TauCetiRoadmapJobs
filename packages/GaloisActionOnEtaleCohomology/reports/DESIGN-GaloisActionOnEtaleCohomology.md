# Design report: GaloisActionOnEtaleCohomology

Deliverables:

- `packages/GaloisActionOnEtaleCohomology/design/README.md`: five layers, 20 targets, in the TauCetiRoadmap README shape.
- `packages/GaloisActionOnEtaleCohomology/design/plan.json`: the same 20 targets. Every definition or construction has at least three tests, every target has a locator, and there is one gap entry.
- `packages/GaloisActionOnEtaleCohomology/sources.toml`: the same 11 entries, with locators and `cited_for` updated to the targets that use them.

No `Suggested.lean` is part of this job's deliverables. The README therefore backticks no Lean name of this roadmap's own. Backticked names are Mathlib, Tau Ceti or supplier-roadmap declarations; each was read at the pin or in the supplier README, and `roadmaps resolve` finds all of them.

## What the design covers

| Final target of `target.md` | Targets | Notes |
| --- | --- | --- |
| 1 Scheme-side action and agreement | 1.1, 1.4, 2.2, 2.4, 2.6 | The scheme action is the instance (c) of the general cover-automorphism action 1.1. The dictionary uses SchemeAndStackFoundations §2.15 (`etale_galois_comparison`, `etale_cohomology_limits`) and stacks03N1 Tags 03Q9/03QW/03QQ. 2.6 proves agreement with the finite levels of EtaleCohomologyFoundations §F.4.6 and the Frobenius normalisation of §F.10.2. |
| 2 The rigid action | 0.1, 0.2, 0.3, 1.1, 1.2, 1.3 | The isomorphism `G_K ≅ Aut_cont(C/K)` is stated for every complete non-archimedean `K` in every characteristic (0.2). Functoriality (a)–(d) and restriction/conjugation (e)–(f) are 1.3. |
| 3 Discreteness and Hochschild–Serre | 2.1, 2.5 | Generalised: any `K ∈ D⁺(X_ét, Λ)`, with no torsion hypothesis. The sources support this: dejongvanderput1996 Cor. 3.7.5 is stated for any abelian sheaf, and ClassicalAdicEtaleCohomology §1.5's colimit theorem (Huber Cor. 2.4.6) holds for all abelian sheaves. |
| 4 Dictionary and Galois-equivariant maps | 0.3, 2.3 | Includes the bijection between sheaf morphisms of higher direct images and `ρ`-equivariant maps, and the trace Check for ClassicalAdicEtaleCohomology §9.7. |
| 5 Adic and rational coefficients | 3.1, 3.2, 3.3 | Both the naive `lim_n H^i` (the target's definition) and the derived `H^i(Rlim)`, with an equivariant Milnor sequence and agreement with ClassicalAdicEtaleCohomology §1.3's `Ẑ_p` where that applies. `TopRep` is Mathlib's (`Mathlib/RepresentationTheory/Continuous/TopRep.lean`). |
| 6 Equivariant comparison for proper schemes | 4.2 | Route: Huber's comparison (ClassicalAdicEtaleCohomology §8.2) for `Spa(C, 𝒪_C) → Spec K`, which is natural in `Spa(C, 𝒪_C)` over `Spec K`. The factorisation through `H^i(Y_C)` uses EtaleCohomologyFoundations §F.2.1. |
| 7 Finiteness as representations | 4.3, 4.4 | 4.3 is a general packaging theorem. 4.4 has four instances: (a) smooth proper with `ℓ` invertible in `𝒪_K` (ClassicalAdicEtaleCohomology §9.7); (b) smooth proper with `ℓ = p` and `char K = 0` (AInfCohomology §AI.3.1, which is Scholze's Theorem 5.1); (c) algebraisable proper (4.2 with EtaleCohomologyFoundations §F.3); (d) general proper with `ℓ` invertible in `𝒪_K` (gap). |
| 8 Equivariant twisting and convention | 4.1, Conventions | The convention is pinned on `μ_n(C)`. It is checked against Tau Ceti `TauCeti.IsArithFrobeniusLift.coe_localCyclotomicCharacter` (arithmetic Frobenius acts on `ℤ_ℓ(1)` by `q`) and against EtaleCohomologyFoundations §§F.0.3, F.10.2 and F.4.6. |

Decisions on the open points of `target.md`:

- **Characteristic `p`.** `G_K` is Mathlib's `Field.absoluteGaloisGroup K = Aut(K̄/K)`, and restriction identifies it with `Gal(K^sep/K)`. The colimit in 2.1 runs over finite separable subextensions. Density of `K^sep` in `C` is a target here (0.1): Mathlib marks separable approximation as TODO in `Mathlib/Analysis/Normed/Field/Approximation.lean`.
- **Algebraic closedness of `C`.** Mathlib's `IsAlgClosed.of_denseRange` assumes `CharZero`, so the characteristic-`p` case is imported from PadicDifferentialEquationsAndRigidCohomology §RD.0.33. That fixes the merge position: after that roadmap (ORDER 111) and before CrystallineCohomologyPartII (112) and PadicHodgeTheory (113).
- **Finiteness for `ℓ = p`.** AInfCohomology §AI.3.1 (`AInf.primitive_mod_p_comparison`, ORDER 54) already supplies Scholze's Theorem 5.1 for smooth proper spaces. It is imported rather than cited as an external theorem. Singular proper spaces with `ℓ = p` are covered by PadicHodgeTheory §2.7, which is later in the merge order; that roadmap applies the packaging theorem 4.3.
- **Finiteness for `ℓ ≠ p`.** ClassicalAdicEtaleCohomology §9.7 states finiteness only for smooth proper spaces (Berkovich 7.4.4). The general proper case is recorded as a gap against §9.7. ClassicalAdicEtaleCohomology §§6.2–6.4, which the target proposed, concern schemes over valuation rings and do not give it for non-algebraisable spaces. The vanishing above `2d` is ClassicalAdicEtaleCohomology §8.4, for every `n > 0`.
- **Cup products** on analytic sites come from EnhancedDerivedSheaves §0.3 (`ClassicalDerived.tensorHom`) and §0.4 (`ClassicalDerived.functorCoherence`); on schemes they are EtaleCohomologyFoundations §F.1.

## Ownership

Searched by object, on the content repository's main, in all open roadmap pull requests at their heads (`roadmaps grep`, which covers the sibling checkouts the brief lists), in the board packages, and at the pins. The searches covered:

- Galois action on (geometric, étale) cohomology;
- `σ_X`, `id_X × Spa`, "discrete `G_K`-module";
- completion of an algebraic closure;
- unique continuous extension and continuous automorphisms;
- `G_K`-equivariant and Galois-equivariant maps.

- **The action itself.** It is constructed nowhere. EtaleCohomologyFoundations §F.4.6 owns the scheme-side continuous action on adic realizations with descent data; 2.6 identifies its finite levels with `ρ`. ClassicalAdicEtaleCohomology §9.7, AInfCohomology (de Rham comparison, line 2087) and ClassicalAdicEtaleCohomologyPartII §§5.3–5.9 use the action implicitly. EllAdicRealization (open pull request, Layer 8) also plans a scheme-side action, but it is not in the merge order, so it is neither supplier nor consumer; EtaleCohomologyFoundations §F.4.6 is the owner cited.
- **The extension of Galois automorphisms to `C` for general `K`.** Owned here (0.2). PadicPeriodRings §1.1 is the case `K/ℚ_p` finite and §2 the complete discretely valued mixed-characteristic case; both appear as Checks. PadicPeriodRings' `completedGaloisAction` is a general definition (`UniformSpace.Completion.map σ`), but its theorems are stated only for those fields. This roadmap does not redefine it: the README writes `UniformSpace.Completion.map σ` directly.
- **The cover-automorphism action (1.1).** No roadmap states it generally. ClassicalAdicEtaleCohomology §1.3(a) and SchemeAndStackFoundations §2.15 use the finite-group case inside Hochschild–Serre. It is owned here at the generality of the three site types the roadmap needs.
- **Board packages.** None plans this object. `SpectralSequencesAndConvergence/target.md` lists this design as a likely user of its vocabulary; it is not in the merge order and is not cited.

## Notions moved down from later roadmaps

None. Every prerequisite is on main or earlier in the merge order. PadicHodgeTheory §2.7's singular-proper `𝔽_p`-finiteness is later in the order. It is not moved down: it rests on analytic resolution of singularities and primitive comparison, which is far outside this roadmap's scope. Instead, the theorem that needs it (packaging into representations) is stated in the general form 4.3, which that consumer applies.

## Proposed Part IIs

- **GaloisActionOnEtaleCohomologyPartII.** The Galois action on compactly supported cohomology `H^i_c(X_C, −)` of partially proper or taut rigid spaces, and on nearby-cycle cohomology with its inertia action, with the same functoriality, dictionary (for `Rf_!`) and finiteness packaging. Weight and monodromy consumers will need it; it is not in this target's scope.

## Gaps against named suppliers

| Slug | Supplier and section | What it must provide | Needed by |
| --- | --- | --- | --- |
| `proper-rigid-finiteness` | ClassicalAdicEtaleCohomology §9.7 | For an algebraically closed complete rank-one `C`, a proper rigid `C`-space `X` (not necessarily smooth) and `n` invertible in `𝒪_C`, every `H^i(X, ℤ/n)` is finite. §9.7 has the smooth proper case. | 4.4(d) |

## Adversarial mathematics pass

| Statement | Instances tried | Values computed | Result | Change |
| --- | --- | --- | --- | --- |
| Convention: direction of `ρ` | `X = Spa(K)`, `ℱ = μ_n`; `K = ℚ_p`, Frobenius lift `φ`, `ℓ ≠ p` | `σ_X^♮` on `Hom_K(Spa C, Spa K[T]/(T^n−1)) = μ_n(C)` gives `ζ ↦ σ(ζ)`; `ρ(φ)ζ = ζ^p`; Tau Ceti `IsArithFrobeniusLift.coe_localCyclotomicCharacter` gives `χ_ℓ(φ) = q` | consistent with EtaleCohomologyFoundations §§F.0.3, F.10.2, F.4.6 Checks (arithmetic `q`, geometric `q⁻¹`) | pinned in Conventions and §4.1 |
| Convention: stalk action | `L/K` cyclic cubic, generator `g` | `v̄ ↦ v̄ ∘ Spa(σ̂)` sends `τ₀ ↦ g∘τ₀`; composition gives `T_b∘T_a = T_{a∘b}`, a left action under `σ ↦ Spa(σ̂)`; using `Spa(σ̂⁻¹)` gives `τ·(σ·x) = (στ)·x`, a right action | only one left action exists | Check in §0.3 and §2.3 |
| 0.1 completed closure | `K = ℚ_p`; `K = 𝔽_p((t))`; `K = C` | `ℚ_p`: `C = PadicComplex p`, `|√p| = p^{-1/2}`. `𝔽_p((t))`: roots of `X^p − sX − t` tend to `t^{1/p}` as `s → 0` (derivative `−s ≠ 0`, so separable). `K = C`: `K̄ = C` | true; `IsAlgClosed.of_denseRange` needs `CharZero` (checked at the pin, Dense.lean line 45) | characteristic `p` imported from RD.0.33 |
| 0.1 tilde-limit `Spa C ∼ lim Spa L` | finite-stage detection | `𝒪_L ∩ ϖ^n 𝒪_{K^sep} = ϖ^n 𝒪_L` by valuations; completion of `𝒪_{K^sep}` is `𝒪_C` | colimit-presented (ClassicalAdicEtaleCohomology §1.5 (2)) | none |
| 0.2 `G_K ≅ Aut_cont(C/K)` | `σ = 1`; `K = ℚ_3`, `σ(√3) = −√3`; discontinuous automorphisms of `ℂ_p`; `K = C` | `1̂ = id`; `σ̂(√3) = −√3`, so `σ̂ ≠ id`; `Aut(ℂ_p) ⊋ Aut_cont`; trivial group for `K = C` | true; surjectivity needs continuity | non-example Check added |
| 0.2 joint continuity | stabiliser argument | on `σ₀·Fix(K(a))` with `|x−a|<ε`, `|y−x|<ε`: `|σ̂y − σ̂₀x| ≤ max(|y−x|, |σ̂(x−a)|, |σ̂a − σ̂₀a|, |σ̂₀(a−x)|) < ε`, with `σ̂a = σ̂₀a` | true | none |
| 0.3 automorphisms of `ξ_C` | `K = C`; quadratic `L` | `C`: only `id`. Quadratic: the swap on two embeddings | true | none |
| 1.1 composition law | `L/K` cyclic cubic on `H⁰(Spa(L⊗C), ℤ) = ℤ³`; swap on `X ⊔ X` | `(a∘b)^* = b^*∘a^*` gives `(a∘b)^♮ = b^♮∘a^♮`; cocycle `c_{a∘b} = c_b∘b^{-1}(c_a)` | contravariant, as stated | the statement says "reverses the order" explicitly |
| 1.1 degree zero | `ℱ = h_V` | `p^{-1}h_V = h_{V×_X Y}`; `a^*ŝ = (ŝ∘a, id)`; `c_a` maps `(v, a(y), y) ↦ (v, y)`; result `s∘a` | true | none |
| 1.1 finite Galois covers | `G` acting on the left on `U` | `g ↦ g^♮` is a right action, so `g ↦ (g⁻¹)^♮` is left | stated with the inverse | wording fixed |
| 1.2 `σ_X` not over `C` | `X = ∅`; `σ = 1`; `X ≠ ∅`, `σ ≠ 1` | `X = ∅`: `σ_X = id_∅` is over `C`. `X ≠ ∅`: `C → 𝒪(X_C)` is injective, so `q∘σ_X = q` forces `σ̂ = id` | false without `X ≠ ∅` | hypotheses `X ≠ ∅`, `σ ≠ 1` added |
| 1.2 left action | `X = Spa(L)`, `L/K` an `S₃`-extension | `σ_X`: component `τ ↦ σ⁻¹∘τ`; `ρ(σ)δ_τ = δ_{σ∘τ}`; `σ ↦ ρ(σ⁻¹)` reverses products and fails for non-commuting `σ, τ` | `ρ` is a homomorphism | Check records the anti-action |
| 1.2 abelian vs module pullback | `X = Spa(K)`, `ℱ = 𝒪_{X_ét}` | `H⁰(X_C, pr^{-1}𝒪) = colim_L L = K^sep`, discrete; module pullback gives `C`, not discrete | definition uses abelian `pr^{-1}` | stated in Conventions; Check |
| 1.3 (c) Kummer | `X = Spa(K)`, `n` invertible | `0 → μ_n(C) → (K^sep)^× → (K^sep)^× → 0` exact on stalks; `G_K`-cohomology gives `K^×/n ≅ H¹(G_K, μ_n)` | equivariant | earlier muddled Check rewritten |
| 1.3 (e) restriction | `L = K(t^{1/p})` over `𝔽_p((t))` | `G_L = G_K` (`σ` fixes `t^{1/p}`); `(X_L)_C = X_C` by associativity | true for inseparable `L` | "(not necessarily separable)" kept |
| 1.3 (f) change of closure | `K̄′ = K̄`, `τ ∈ G_K` | the iso is `ρ(τ)`; statement reduces to `ρ(τ)⁻¹ρ(τστ⁻¹)ρ(τ) = ρ(σ)` | consistent with 1.2 | none |
| 1.4 scheme action | `k = ℝ`, `n = 4`; `k = 𝔽_q`; `X = Spec k′` | conjugation `i ↦ −i`; Frobenius `ζ ↦ ζ^q`; `ρ(σ)δ_τ = δ_{σ∘τ}` (Stacks 03QW, line 3969) | true | none |
| 2.1 colimit and discreteness | qc vs non-qc: `X = ⊔_m Spa(ℚ_p)` with `μ_{ℓ^m}`; `𝒪_{X_ét}`; separable index | non-qc: compatible roots in `∏ μ_{ℓ^m}(C)` have stabiliser `ker χ_ℓ`, not open (`ℚ_p(μ_{ℓ^∞})/ℚ_p` infinite); `𝒪`: colimit `K^sep` | qc needed; no torsion needed | target's torsion hypothesis dropped (general form); negative-control Check added |
| 2.2 scheme colimit | `X = Spec k`; `⊔_m Spec ℚ` | `H^q(Spec k^sep, ℱ) = 0` for `q > 0`; the non-qc stabiliser is `ker χ_ℓ` | as 2.1 | none |
| 2.3 dictionary | `X = Spa(L)`, `ℤ`; `μ_n`; trace on `ℙ¹` | `f_*ℤ ↔ ℤ[G_K/G_L]` on both sides; `μ_n(C)` with `ζ ↦ σ(ζ)` on both; `t(c₁(𝒪(1))) = 1` with `c₁` defined over `K`, so invariant | true; the inverse stalk convention is a right action | convention Check |
| 2.4 scheme dictionary | `k = ℝ`, `X = Spec ℂ`, `μ_4` | `ℂ⊗_ℝℂ ≅ ℂ×ℂ` via `x⊗y ↦ (τ(x)y)_τ`; `id⊗c` sends `(z_τ) ↦ (c(z_{cτ}))`: swap then conjugate | true | Check states the computed formula |
| 2.5 Hochschild–Serre | `X = Spa(K)`; `X = Spa(L)`; `K = ℚ_2`, `μ_5` | collapse; Shapiro gives `H^p(G_L, −)`; `H²(ℚ_2, μ_5) = Br(ℚ_2)[5] = ℤ/5`; with `ζ ↦ σ⁻¹ζ` (`= ℤ/5(−1)`), local duality gives `H⁰(ℤ/5(2))^∨ = 0` since `χ₅(Frob₂)² = 4 ≠ 1` | module must be `ρ` | direction Check added |
| 2.6 Frobenius bridge | `X = Spec 𝔽_q`, `μ_{ℓ^n}`; `ℙ¹_{𝔽_q}` | `F_{X/k}×id = F_{abs}∘φ_X⁻¹`; on `μ_{ℓ^n}`: `ρ(φ) = ×q`, geometric `×q⁻¹`; `H²(ℙ¹) = ℤ/ℓ^n(−1)`: `ρ(φ) = q⁻¹`, geometric `q` (= §F.10.2b trace) | consistent | none |
| 3.1 naive vs continuous | `X = Spa(K)`, `j = 1`; `X = ∅`; `⊔ Spa(K)`; tower `(ℤ, ×ℓ)`; `ℓ = char K`, closed disc | `ℤ_ℓ(1)` along `ℓ`-th powers; `0`; `∏ ℤ_ℓ` (compact, not finitely generated); `lim = 0`, `lim¹ = ℤ_ℓ/ℤ`; `H¹ = C⟨T⟩/{g^p−g}` infinite | distinct constructions; agree under Mittag–Leffler | earlier wrong `lim¹` example replaced: towers `ℤ/ℓ^n` with `×ℓ` maps are Mittag–Leffler, since their images are eventually `0` |
| 3.1 derived reduction | `m = 1` | `T_n ⊗^L ℤ/ℓ` has `H^{-1} = ℓ^{n−1}ℤ/ℓ^n`, with zero transitions (pro-zero), and `H⁰ = ℤ/ℓ` with identity transitions; `Rlim = ℤ/ℓ` | true | none |
| 3.2 continuity | `X = Spa(K)`, `j = 1`; discrete `ℚ_ℓ`; non-qc `⊔ Spa(K(μ_{ℓ^m}))` | cyclotomic character; operators continuous but not jointly; indicator element has stabiliser `G_{K(μ_{ℓ^∞})}`, not open | qc needed for the proof | non-qc Check replaced. The first draft's example with fixed coefficients was in fact discrete: `μ_{ℓ^n}(C)^ℕ` has only finitely many values |
| 3.3 rational | `ℤ_ℓ/ℓ`; `∏ ℤ_ℓ`; discrete topology | `0`; bounded sequences `⊊ ∏ ℚ_ℓ`; the cyclotomic action on discrete `ℚ_ℓ(1)` is not jointly continuous | topology choice needed | none |
| 4.1 twisting | `ζ ↦ ζ^u`; `ℙ¹`; `j = 0`, `n = 1`; elliptic curve, `n = 7`, `K = ℚ_2` | coordinate `×u⁻¹`; `H²(ℤ/n(1)) = ℤ/n`, `H²(ℤ/n) = ℤ/n(−1)`; identity, `0`; `det H¹(E, ℤ/7) = χ⁻¹`, value `2⁻¹ ≡ 4`, against `χ³ ↦ 8 ≡ 1 (mod 7)` | direction pinned | first draft used `n = 5`, where `χ³ = χ⁻¹` since `χ` has order dividing 4: corrected to `n = 7` (`χ₇(Frob₂)` has order 3) |
| 4.2 comparison | `Y = Spec L`; curve; `ℙ¹`; `∅`; non-proper `𝔸¹` | regular rep. on all sides; `J[n]` on each side; `ℤ/n(−1)` with `q⁻¹`; `0`. `𝔸¹`, `char 0`, `ℓ = p`: `H¹(𝔸¹_{K̄}) = 0`, and `H¹((𝔸¹)^an_C, μ_p) = 0` as well (`𝒪^× = C^×`, `Pic = 0`) | a Check claiming they differ would be false | non-proper Check deleted. The comparison base moved from `Spec C` to `Spec K`, because `Spa(σ̂)` does not lie over `Spec C` |
| 4.3 packaging | `Spa(K)`; Enriques, `ℓ = 2`; open disc, `ℓ = p`; degree `N+1` | `ℤ_ℓ(j)`; torsion `ℤ/2` (`H₁ = ℤ/2`); `H¹(μ_p) ⊇ 𝒪^×/p` infinite (`1+aT`, `|a| = 1`, not a `p`-th power); `H^{N+1}_cont = lim¹ H^N` | (d) was false for continuous groups in degree `N+1` without finiteness in degree `N` | (d) corrected, Check added |
| 4.4 instances | `ℙ^d`; `ℓ = char K`; closed disc | `H^{2m} = ℤ_ℓ(−m)`; no case applies; `H¹` infinite | consistent with the `2d` bound and with properness | none |
| Unused hypotheses (P3 notes) | quasi-separatedness in 2.1 | no separating instance sought | P3 note: kept, because the supplier colimit theorem (Huber Cor. 2.4.6) assumes it | none |

Context checks. Each statement's standing hypotheses appear in its own sentence. Quasi-compact quasi-separated is in 2.1–2.5, 3.2 and 4.3. `n` invertible in `K` is in 4.1 and the twist definitions. `ℓ` invertible in `𝒪_K` versus in `K` is in 4.4(a)/(c)/(d). `X ≠ ∅` is in 1.2.

Generality checks:

- `K` is general everywhere (any characteristic, any rank-one value group). PadicPeriodRings' `ℂ_p` is a Check, not the statement.
- Colimits and discreteness are stated for all of `D⁺`, as the sources allow.
- The finiteness instances are restricted exactly to the supplied cases, with the rest a gap. The target's "for `X` proper and `n` invertible in `𝒪_K`" is kept as 4.4(d), so nothing is narrowed silently.

## Sources

No new source was fetched. The 11 manifest entries cover every citation.

| Source | Status | Locators read in this job |
| --- | --- | --- |
| dejongvanderput1996 | certified | lines 1476–1492, 1560–1605 |
| stacks03N1 | certified | lines 3731–3745, 3963–3995, 4216–4241 |
| zavyalov2025 | certified | lines 3795–3806 |
| berkovich1993 | certified | lines 4584–4592, 5104–5112 (Corollary 7.4.4, printed page 143), 5339–5342 |
| scholze2013 | certified | lines 1277–1284 |
| hansenzavyalov2023 | certified | lines 1684–1720 |
| milneLEC | certified | table of contents, lines 40–70 |
| huber1996, huber1994, sga4half, serreGC1997 | uncertified (settled) | not read; cited by locator only |

Changes to the manifest:

- berkovich1993's locator gains Corollary 7.4.4.
- huber1996's locator drops Theorem 7.5.3, which is no longer cited, and names Corollary 2.4.6.
- Every `cited_for` now lists target ids.

Uncertified locators used:

- huber1996 Corollary 2.4.6 and Proposition 2.3.10 are attested through ClassicalAdicEtaleCohomology §1.5 and zavyalov2025 line 3799.
- huber1996 Corollary 2.8.3 is attested by hansenzavyalov2023 line 1708.
- huber1996 §3.8 is attested through ClassicalAdicEtaleCohomology §8.2.

No `needs-references.toml` was written: no needed text is missing.

## Dependency check

    candidate: GaloisActionOnEtaleCohomology is not in the merge order yet; checked as if placed after PadicDifferentialEquationsAndRigidCohomology (the intake inserts it when its design is accepted)
    depcheck: 241 roadmaps, 2315 edges, 0 problem(s)

No UPWARD or CYCLE line. `roadmaps resolve` on the README reports no cross-roadmap citation and no Lean name found nowhere.

## Suspicious text

None. No fetched page, roadmap file or source contained instructions.
