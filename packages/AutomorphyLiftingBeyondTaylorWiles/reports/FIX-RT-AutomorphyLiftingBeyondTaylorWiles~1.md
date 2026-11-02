# FIX-RT-AutomorphyLiftingBeyondTaylorWiles~1

Two red-team reviews: pass a (findings F01 to F06, the first six sections below) and pass b (findings F01 to F06, the next six sections). The passes did not overlap: no finding was raised by both. Each finding is settled once below.

## F01 (P1) — applied

Review pass a (`RT-AutomorphyLiftingBeyondTaylorWiles_r1a`), finding F01.

Verified: LocalGaloisDeformationRings §1.6 builds a covariant realization `𝐆` in which a labelled jump i has Hodge–Tate weight −i. Its own Check shows that O⊕O(ε⁻¹) has jumps {0,1}. So applying that problem directly with jumps {0,…,n−1} gives negative native weights, which cannot have determinant ξ=ε^{n(n−1)/2}.

Change: §1.2(i) "framed FL ring with τ-weights {0,…,n−1}" → D_v is now defined as the positive-weight problem. A lift r_A is in D_v when det r_A=ξ and the dual lift (r_Aᵀ)⁻¹, with the dual frame, is in the §1.6 problem with jumps {0,…,n−1}. The proof transports §§1.6/1.13 along the involutive duality and identifies the result with PadicHodgeTheory §6.1. The same pattern was repaired in §1.1(a), §1.7 (proof), §2.2(1), the LocalGaloisDeformationRings and PadicHodgeTheory supplier contracts, and the Needs lines of §§1.1–1.2. New Check (§1.2), at p=5: O⊕O(ε) is in D_v. The direct reading would admit O⊕O(ε⁻¹) instead, with determinant ε⁻¹ and residual inertia characters 1, ω³.

## F02 (P1) — applied

Review pass a (`RT-AutomorphyLiftingBeyondTaylorWiles_r1a`), finding F02.

Verified: for C=O[0] and t=ϖ, colim(C,t)=E[0], which is not finite over O. IntegralHeckeAndGaloisDeterminants §2.3 identifies a telescope with an idempotent summand only when the complement is actually nilpotent. That section's factorial-powers target gives the idempotent in a finite commutative algebra over a complete local ring.

Change: in §4.1, "colimit C_t = lim t^k C is a perfect direct summand" → e = lim t^{k!} in the finite O-algebra O[t] ⊂ End_{D(S_N)}(C) (finite because C is perfect over S_N and S_N is finite over O). e is split by IHGD §2.2, and eC is perfect as a retract (DerivedModuleAlgebra §1.E.0). New Check: diag(1,ϖ) on O² gives the summand O, while the telescope gives O⊕E. Also added the DerivedModuleAlgebra supplier contract (it is on main), a clarification in the IHGD contract, and the Needs/Dependencies entries.

## F03 (P3) — applied

Review pass a (`RT-AutomorphyLiftingBeyondTaylorWiles_r1a`), finding F03.

Verified against the cached texts. CG18 line 3819 is on PDF page 95, i.e. printed p. 391. The projector paragraph is at lines 3926–3962 (pp. 394–395), and dévissage is at lines 4741–4743 (p. 415). CGH20 line 71 is p. 2, and the p. 3 discussion is at lines 84–93. KT17's Lemma 6.25 proof runs to line 1935 (p. 42), and Proposition 6.26 ends at line 1984 (p. 43).

Change: §0.3 → line 3926; §0.4 → lines 3926–3962; §2.1 → CGH20 lines 84–93; §2.6 → lines 4741–4743; §3.7 → "statement p. 41 and proof pp. 41–42; KT17 lines 1904–1906 and 1931–1935". In the References and `sources.toml`, the KT17 range changes from pp. 40–42 to pp. 40–43 and line 1984 is added. §4.1's "pp. 391–395; line 3819" was correct and is kept.

## F04 (P3) — applied

Review pass a (`RT-AutomorphyLiftingBeyondTaylorWiles_r1a`), finding F04.

Verified: clause (a) requires vanishing in every degree outside [q₀,q₀+ℓ₀]. With p=3 and C₃ stabilizers, H⁴(C₃,𝔽₃)=𝔽₃.

Change: the §2.3 imaginary-quadratic Check "(a) asks vanishing in degrees 0 and 3 only" → (a) asks vanishing in every degree outside {1,2}, including degree 4. After gap:localized-orbifold-range-duality is applied under its hypotheses, degrees 0 and 3 remain. The ℚ, n=2 Check was qualified the same way: H^{2k}(PSL₂(ℤ),𝔽₃)=𝔽₃ for k≥1.

## F05 (P3) — applied

Review pass a (`RT-AutomorphyLiftingBeyondTaylorWiles_r1a`), finding F05.

Merged every listed duplicate pair, each kept as one discriminating Check:
- §0.1: two pairs;
- §0.2: one pair;
- §0.4: one pair, plus the further e_Q repetition at the old line 321 (same pattern);
- §1.1: three pairs;
- §1.2: two pairs;
- §1.4, §2.2, §4.1: one pair each;
- §2.4: two pairs;
- §2.5: two pairs;
- §2.6: one pair;
- §4.2: the l₀=0 pair, with the reflection Check (old line 1196) replacing its two repetitions.

Removed the bundle tautology in §2.5 and added the reviewer's k[ε]/ε² top-cover-versus-intermediate Check there. §2.6 would have dropped to two Checks, so a new length Check was added: for C=[O --ϖ²→ O], H⁰(C⊗O/ϖᵃ) has length min(a,2) ≤ a. After the merges every definition still has at least three Checks: §0.1 6, §0.4 6, §1.1 6, §1.2 6, §2.4 5, §2.5 5, §2.6 3, §4.2 5.

## F06 (P1) — applied

Review pass a (`RT-AutomorphyLiftingBeyondTaylorWiles_r1a`), finding F06.

Verified: ArithmeticLocallySymmetricSpaces ALS.0.7 uses X^G=G(F_∞)/K_∞A_∞, the full maximal compact. ALS.0.4 defines the connected variant. Under K∞⁰, the component of Y for F=ℚ at maximal level is PSL₂(ℤ)∖ℍ, so H²(−,𝔽₃)=H²(C₃,𝔽₃)=𝔽₃. Full PGL₂(ℤ) gives 0, because determinant −1 acts by −1.

Change: §3.1 now uses Γ_c = PGL₂(F)⁺ ∩ a_cKa_c⁻¹, indexed by PGL₂(F)⁺∖PGL₂(𝔸^∞)/K, with determinants in F_{>0}ˣ/Fˣ². §3.2 now uses Ĥ_a ⊂ PGL₂(F)⁺ and γ ∈ PGL₂(F)⁺. The Conventions and the ALS contract now state the ALS.0.4/ALS.0.7 adaptation. The Checks were replaced:
- ℚ: Φ=1, with PGL₂(ℤ)/PSL₂(ℤ) kept as the labelled full-compact negative control;
- new ℚ(√3) Check with Φ≠1, from u=2+√3=(1+√3)²/2;
- the §3.2 ℚ Check now gives Φ_a=1.

## F01 (P2) — applied differently

Review pass b (`RT-AutomorphyLiftingBeyondTaylorWiles_r1b`), finding F01.

Verified: ModularityAndLanglandsExtensions §2.8 (open head 2d70821, earlier in the order) ends its proof route with "These arithmetic verifications are owned here". It states no target for Theorem 9.19 or the §9.5 data, and its hypothesis is its §2.7 GLₙ package.

Change: the Scope sentence "The CG18 §9.5 patching verification and Theorem 9.19 (§5.4) are owned here" now says what §2.8 contains (a proof-route mention for its §2.7 hypothesis, with no targets). It then says that §§4.1–4.4 and 5.1–5.4 are owned here for the Res PGLₙ package of Layer 2, whose all-level clauses that route does not assume, and that apart from §5.8 nothing of §2.8 is restated.

Not applied as proposed, for two reasons:
- Writing "which that proof route is to consume" would make an earlier roadmap consume a later one, which is an upward edge.
- Adding ModularityAndLanglandsExtensions §2.7 to the Needs of §§2.1–2.4 would list an input those definitions do not use (they are Res PGLₙ hypotheses, not built from the GLₙ `CGConjectureB`).

The remaining one-line repair, deleting "owned here" from that §2.8, belongs to ModularityAndLanglandsExtensions and is not editable in this package (see the maintainer notes).

## F02 (P3) — applied

Review pass b (`RT-AutomorphyLiftingBeyondTaylorWiles_r1b`), finding F02.

Verified: §2.5 takes m in T at level K_∅(R), while B^gal/B^tw want an ideal of T^an_{Q,ψ}. T^an_{Q,ψ} does not act on Y(K_∅), and only §0.5(2) defined a transport (T₁ → T_χ).

Change: §0.3 adds the abstract algebra 𝕋^{S_Q}, which surjects onto T^an_{Q,ψ} and acts at every level. m^abs is the inverse image of m, and it is maximal because its residue ring is a subring of the finite field T/m. "m" in T^an_{Q,ψ} is the image of m^abs, which is either maximal or the unit ideal (zero localization). §§2.4, 2.5 and 3.5 now refer to this convention.

## F03 (P3) — applied

Review pass b (`RT-AutomorphyLiftingBeyondTaylorWiles_r1b`), finding F03.

Verified: ALS.3.14 defines U_x=[K₀ diag(ϖ_x,1) K₀], which is unnormalized, with old-space polynomial X²−T_xX+N(x). Since q≡1 mod p, U_x and q⁻¹U_x have the same residue at every maximal ideal. Recomputed: p=7, N(x)=29, α=2: 29⁻¹(V−58), and 58≡2 mod 7.

Change: §3.3 notes ALS.3.14's naming and the equality of ideals. In §3.5, m̃ and both projectors now use V_x (the statement already did), and §0.4's "m̃=(m,U_x−α_x)" → (m,V_x−α̃_x). The §3.3 Check giving U_x-eigenvalues a/q, b/q stays correct for the normalized U_x.

## F04 (P3) — applied

Review pass b (`RT-AutomorphyLiftingBeyondTaylorWiles_r1b`), finding F04.

Change: in §2.8, all four occurrences of m^∨ (and `m^vee`) → m^*. §0.5 now says "written 𝔪^∨ in ArithmeticLocallySymmetricSpaces ALS.5a.4". A search found no other occurrence.

## F05 (P3) — applied

Review pass b (`RT-AutomorphyLiftingBeyondTaylorWiles_r1b`), finding F05.

Verified: CG18 Theorem 5.16(6) and ModularityAndLanglandsExtensions §2.8 admit a place where r ramifies while r̄ is unramified and nontrivial, with N(x)≡1 mod p. §1.1 excludes such a place (its Check at the old line 429), and the §1.3 negative control shows that the character ring is reducible after inverting p.

Change: §5.8 now states this narrowing and why it is needed: Lemma 8.2(3) and §5.2 are unavailable at such a place, and the proof covers only R_triv ⊔ R_reg.

## F06 (P3) — applied differently

Review pass b (`RT-AutomorphyLiftingBeyondTaylorWiles_r1b`), finding F06.

Verified: GL2ModularityLifting (open head 1e734ab, position 196, earlier than this roadmap) has Layer 4 (Ihara avoidance) and §5.8, the Fontaine–Laffaille-range lifting theorem over totally real fields.

Change: §5.10 now names GL2ModularityLifting §5.8 with Layer 4 as the owner of the unconditional theorem and says §5.10 is only a conditional specialization, not a second proof. The Scope section records the deferral to GL2ModularityLifting Layers 4–5. It was not added to the §5.10 *Needs* line, because neither the statement nor its route uses that roadmap; a Needs entry would claim an unused input.

## Checks run

- `lake env lean packages/AutomorphyLiftingBeyondTaylorWiles/Suggested.lean` (from the content checkout): exit 0, no messages. `Suggested.lean` is unchanged. It has no declarations, so the `#check @name` signature audit has nothing to compare; none was needed and none changed.
- Dependency check:

```text
depcheck: 56 roadmaps, 659 edges, 0 problem(s)
```

  It shows no UPWARD, CYCLE or moved line. The new edges are DerivedModuleAlgebra (on main) and GL2ModularityLifting (earlier in the order).
- `roadmaps resolve` on the README: no cross-roadmap citation and no Lean name found nowhere.
- Gate failures: none were listed for this job.

## Adversarial pass on changed statements

| Statement | Instances | Computed values | Result |
|---|---|---|---|
| §1.2(i) D_v via duality | n=2, ℚ₅: O⊕O(ε) and O⊕O(ε⁻¹) | dual of O⊕O(ε) is O⊕O(ε⁻¹), jumps {0,1} in §1.6 ✓; det ε=ξ ✓; direct reading admits det ε⁻¹, inertia ω³≠ω | positive-weight problem correct |
| §1.2(i) dimension under duality | n=2, f=1 and f=2 | 3+1=4, 3+2=5; duality preserves the dimension | unchanged |
| §1.7 point of R_v | weights 0..n−1 for r | r^∨ weights 0..−(n−1) ↔ jumps 0..n−1 under the covariant realization | consistent with §1.2(i) |
| §4.1 factorial idempotent | t=ϖ on O; t=diag(1,ϖ) on O²; t=1 | e=0, diag(1,0), 1; telescopes E, O⊕E, O | summands finite and perfect; telescope fails |
| §4.1 finiteness of O[t] | C perfect over S_N, S_N=O[(ℤ/p^N)^q] of O-rank p^{Nq} | End finite over S_N, hence over O | factorial limit exists |
| §2.3 range Checks | p=3: H⁴(C₃,𝔽₃); H^{2k}(C₂∗C₃,𝔽₃) | 𝔽₃ and 𝔽₃ (k≥1) unlocalized | high degrees are genuine conditions |
| §2.6 new length Check | C=[O --ϖ²→ O], a=1,2,3 | lengths 1,2,2 ≤ a·1 | dévissage bound holds |
| §2.5 new bundle Check | T=k[ε]/ε², M_top=k, M_inter=T | ε acts 0 and ε; ε·1≠0 | separates top-only from all-level |
| §3.1 Γ_c⁺, ℚ maximal | PGL₂(ℤ)∩PGL₂(ℚ)⁺ | =PSL₂(ℤ), Φ=1, H²(−,𝔽₃)=𝔽₃; full PGL₂(ℤ) gives 0 | corrected |
| §3.1 Φ≠1 | ℚ(√3), u=2+√3 | u·(2−√3)=1, both conjugates >0, u=(1+√3)²/2, √2∉ℚ(√3) | Φ≠1, finite elementary 2-group |
| §3.1 non-normal example (old Check kept) | Γ=hPSL₂(ℤ)h⁻¹, h=diag(2,1) | determinants square and positive, Γ¹=Γ, Φ=1 | unchanged by positivity |
| §3.2 Φ_a over ℚ | dets ±ℓ^{2ℤ} | positive ⇒ square ⇒ Φ_a=1 | corrected |
| §3.2 imaginary quadratic | no real place | positivity vacuous | earlier calculations unchanged |
| §0.3 m^abs | T/m=𝔽_{p²} | image of 𝕋^{S_Q} is 𝔽_p or 𝔽_{p²}, a field | m^abs maximal |
| §3.5 m̃ with V_x | p=7, q=29, α=2 | q⁻¹≡1 mod 7: (V−2)≡(U−2) mod m | same ideal |
| §5.8 narrowing | n=2, r̄(Frob_x)=diag(a,b), a≠b | two components (χ₁,χ₂), (χ₂,χ₁), disjoint after inverting p | exclusion justified |

## Notes for the maintainer

- ModularityAndLanglandsExtensions §2.8 still ends with "These arithmetic verifications are owned here". It states no targets for them, and the targets live here (§§4.1–4.4, 5.1–5.4) for the Res PGLₙ package. That roadmap's own job should drop or qualify the phrase. It cannot consume this later roadmap.
- New supplier citations: DerivedModuleAlgebra §1.E.0 (main) and ArithmeticLocallySymmetricSpaces ALS.0.4 (open head 7dca7ea). GL2ModularityLifting §5.8 and Layers 4–5 (open head 1e734ab) are cited as an owner in Scope and §5.10, not as an input.
- No Lean names changed (Suggested.lean has none). No gaps were added or changed, so `design/plan.json` is untouched.
- Source issues confirmed while settling the findings, for the record:
  - CG18 Lemma 7.3 (printed p. 393) states the operator telescope for integral complexes; it holds only with torsion coefficients or actual complementary nilpotence.
  - CG18 Theorem 5.16(6) admits unramified, nontrivial residual places, which the Lemma 8.2(3) argument does not cover.
- Ownership against open pull requests was checked through the roadmap index (2026-10-27) for the objects touched here (factorial localization, Fontaine–Laffaille duality, Theorem 9.19, Fontaine–Laffaille-range GL₂ lifting).

## Gate repairs

- Report headings now use the reviews' own finding ids (`F01`–`F06` for each pass); the line under each heading names the pass it belongs to.
- TeX-style superscripts and subscripts with braces outside code spans: §0.3 (`TT^{S_Q}`, three occurrences), §2.8 (`F_{>0}^x / (F^x)^2` and `F_{>0}^x`), its Check (`±ℓ^{2ℤ}`) and §3.6 (`End_{D(S_N)}(C)`, `t^{k!}`) now sit in code spans. The mathematics is unchanged. No `[_^]{` remains outside code spans in the README.
