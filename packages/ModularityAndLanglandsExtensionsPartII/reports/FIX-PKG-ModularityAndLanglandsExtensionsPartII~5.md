# Repair report: ModularityAndLanglandsExtensionsPartII

Findings F01–F07 refer to REV-PKG-ModularityAndLanglandsExtensionsPartII~4 (the only review of this round). All seven are verified against the cached sources, the sibling roadmaps and the pinned libraries, and all seven are repaired in this package. No commit or external write was made.

## F01 (P1) — applied

§4.8 "`B` an Iwahori subgroup" → connected Iwahori `I` and chamber fixer `B = I × ⟨ζ⟩` (`ζ = −1_{2k+1}`, `[B:I] = 2`), with `H_B ≅ H(U(F)_1, I)`, `H(U(F), I) ≅ H_B ⊗ ℤ[⟨ζ⟩]`, `H_B ≅ H_{B′}`. §4.10 "maximal parahoric" → panel fixer `P = B ∪ Bs_kB`. Levels (§§5.6–5.7) and the gap now follow.

## F02 (P2) — applied

§5.6 "all other ramification … split" → `E/F` unramified at every finite place outside `{v_0, …, v_s}`, plus the split-ramification condition on the representations (ct17 Theorem 3.8(1)(c), (2)(c), p. 28–29; Theorem 3.10(c), p. 32). Case (2) now requires the infinity type `((l+1)/2, …, (−1−l)/2)`, and both cases state that `σ_∞` is trivial. Two negative-control Checks added.

## F03 (P2) — applied

Docstring "lacks a CM predicate" → new `HasQuadraticSelfTwist` (real body on `Newform`, `DirichletCharacter`, `UpperHalfPlane.qExpansion`) and the theorem `symPowerEulerProduct_entire_of_not_hasQuadraticSelfTwist` (any `N`, `k ≥ 2`, `n ≥ 1`, product over `p ∤ N`). It goes in a new README §14.5, because `symPowerEulerFactor` is defined in §14.4; §14.3 links to it. The Satake hypothesis is needed only at `p ∤ N`.

## F04 (P1) — applied

§2.2 "finite étale morphism `η`" → "finite étale surjective morphism `η`". The proof sketch shows why nt21's cover is surjective: characters of an open finite-index subgroup extend over an algebraically closed characteristic-zero field, and components and coefficient extensions stay surjective. Checks added for the empty cover and `pℤ_p ⊂ ℤ_p`; §2.4 cites surjectivity.

## F05 (P2) — applied

§2.2 Chevalley (ideal merely "non-zero", no supplier) → GL2AutomorphicRepresentationsAndTransfer §R16.1.7, with modulus prime to `p` (excluded set = `p`-adic places), cited in the statement, the proof sketch, *Needs*, Layer 2 Dependencies, the supplier contract (with its exact hypotheses) and Scope. A Check covers `⟨2⟩ ⊃ ⟨4⟩` with modulus `3` against the unit modulus.

## F06 (P3) — applied

nt21 Corollary 1.13 "p. 16" → "pp. 16–17"; nt26 Theorem 4.1 "p. 25" → "pp. 25–26"; nt26 Lemma 5.8 and proof "pp. 42–43" → "pp. 42–44". Verified: page markers fall inside these statements, at nt21 line 755 (statement from line 753), nt26 line 1190 (before (4)–(9)) and nt26 line 2035 (before the regular-semisimple step).

## F07 (P3) — applied

§12.1 and §14.4 had no API lists → prose API bullets. §12.1: base changes `π_K`, `π′_K`, `σ_K` (cuspidality from (16), self-duality from `XX^c = χ∘N`), `T`, integral models with `r̄ = r̄′`, determinants `t`, `t′` with common reduction. §14.4: degree, normalisation, symmetry, the `n = 1` factor, local-factor identification. No Lean padding.

## Verified evidence

- **F01.** ct17 lines 264–268 (p. 6) define `B = U_n^C` as the preimage of the upper-triangular subgroup of `O(J)(k_F)` and say it contains an Iwahori subgroup with index 2. ct17 line 1663 (p. 32) uses this `B` for the global levels. ct17 lines 269–274 define `P` as the fixer of the facet `0 = a_k < … < 1/4` (block sizes `1+…+1+3+1+…+1`, `[P:B] = q+1`). ReductiveGroupsPartII line 154 makes parahorics connected. Its *parahoric-kottwitz-characterization* (README line 4335, inside §RG2.3.3) gives `P°_Ω = Fix(Ω) ∩ ker κ_G`. Its §RG2.4.2 Tits system is `(G(K)_1, I, N(K)_1, S̃)`, and SR.1.5 (SmoothRepresentationsOfLocalGroups at its open head) states equal-parameter assertions for split groups only. So the gap is now on `H(G(F)_1, I)` plus the `Ω` crossed product, and §4.8 derives `H_B`. Proof of (i): `κ: U(F) → π₁(U)_I = ℤ/2` (inertia acts by `−1` on `π₁ = ℤ`); on the centre `E^1` it is reduction to `{±1}`; the scalar embedding induces multiplication by `2k+1` on `π₁`, an isomorphism mod 2; so `κ(ζ) ≠ 0` and `ζ ∈ Z_c` fixes the building. Global use: members of `Π_φ` have `ω(ζ) = ω_{Π_E}(ϖ_E) = 1` (since `ζ = ϖ_E/c(ϖ_E)`), so for them `π^B = π^I` and the dimensions of §4.10 are unchanged. §4.9 keeps "Iwahori" (true for split `G`: `T(𝒪)` is connected, so the alcove fixer is the Iwahori), with a clarifying clause. The other places that used this `B` or `P` were repaired too: §4.10 (statement, two Checks), §5.6 proof sketch, §5.7 level definitions, the ReductiveGroupsPartII contract paragraph, the Layer 4 introduction and the layer table.
- **F02.** ct17 lines 1485–1486 and 1498–1499 (Theorem 3.8 (1)(c), (2)(c)) add "Any place v ≠ v_0,…,v_s of F is unramified in E". Lines 1491–1493 give the infinity type in case (2). Lines 1637–1638 and 1643–1645 give the same for Theorem 3.10. ct17 lines 1502–1504 use the hypothesis for singleton packets at other places, now in the proof sketch.
- **F03.** nt21 line 89 (footnote 1, p. 2) defines non-CM by the absence of a quadratic self-twist. Pinned: `Mathlib/NumberTheory/DirichletCharacter/Basic.lean:39` (`DirichletCharacter R n := MulChar (ZMod n) R`), `Mathlib/NumberTheory/ModularForms/QExpansion.lean:172` (`UpperHalfPlane.qExpansion`), `TauCeti/NumberTheory/ModularForms/Newforms/Newform.lean:104` (`Newform`, nonzero, normalised), `…/Newforms/Satake.lean:91, 108, 161, 173` (`satakeParameters`, the pair criterion, the factorisation, and `{a_p, 0}` at `p | N`, which is why the product runs over `p ∤ N`). Tau Ceti has `primitiveTwist` (`…/Newforms/Twist.lean:160`) but no CM predicate. The only proof direction needed (CM ⇒ self-twist) is an unramified eigenvalue comparison.
- **F04.** nt21 lines 2561–2564 give finite étaleness of `Hom(H, 𝔾_m) → Hom(H′, 𝔾_m)`. Surjectivity on geometric points holds because `ℂ_p^×` is divisible and `H′` is open. Lines 2573–2577 pass to a connected component and a coefficient extension, both still surjective.
- **F05.** nt21 line 2558 cites Chevalley. GL2AutomorphicRepresentationsAndTransfer §R16.1.7 (open head of that roadmap, earlier in the merge order, already a supplier here) states the power-detection form with excluded set `T`. ClassFieldTheory Layers 11–12 remain cited only for the finite ray class quotient.

## Adversarial mathematics record

| Statement | Instances tried | Values computed | Result / change |
|---|---|---|---|
| §4.8(i) `ζ ∈ B∖I`, `[B:I]=2` | `k=0,1,3`; `q=3` | `det(−1_{2k+1}) = −1` in `O(J)(k_F)`; `ζ` upper-triangular, not in `SO` | holds; Check added |
| §4.8(ii) `H(U,I) ≅ H_B ⊗ ℤ[⟨ζ⟩]` | `k=0` (`U_1` ramified) | `B=E^1`, `I=ker(E^1→{±1})`; ranks `H_B=1`, `H(U_1,I)=2`, `H(Sp_0)=1`; idempotents `(1±[Iζ])/2` | old `H_I ≅ H(Sp)` false; new statement holds; Check added |
| §4.8(ii) fixed vectors | `χ = det mod ϖ_E` | `χ(ζ) = (−1)^{2k+1} = −1`: `dim χ^I = 1`, `dim χ^B = 0` | distinguishes `I`/`B`; Check added |
| §4.8(iii) Tits system, `B∩N` | `Z_c/Z(F)_0` | `E^1/(E^1)_0 = ℤ/2` generated by `t_0=−1`, the image of `ζ` | `B∩N = Z_c`, `N/Z_c = W_aff` |
| §4.8 Kottwitz value of `ζ` | scalar embedding on `π₁` | `ℤ → ℤ`, `×(2k+1)`; mod 2 an isomorphism | `κ(ζ)` = generator |
| §4.8 parameters | `k=1` | both `Ã_1`, parameter `q` at `s_0,s_1` | unchanged Check |
| §4.10 `P` | `n=7`, `q=3` | facet dimension 2 in rank 3; `[P:B]=q+1=4`; `[K:B]=4·40·364=58240` | not maximal; Check added |
| §4.10 central character | `Π_E = St_3⊞St_3⊞St_1` | `ω_σ(ζ)=ω_{Π_E}(ϖ_E)=1` | `π^B=π^I` for members; dims `1,7` (n=7), `1,11,2` (n=9) unchanged |
| §4.11 `e_P` | `q ≡ −1 mod l` | `e_P=[P]/(q+1)`, `q+1 ≡ 0` | unchanged, consistent with panel `P` |
| §5.7 index | `q_{v_0}=9`, `l=5` | `[U_0:U_1]=[P:B]=10 ≡ 0 mod 5` | unchanged |
| §5.6 unramified hypothesis | extra ramified `v′` with `π_{v′}` unramified | singleton-packet step (ct17 p. 29) unavailable | hypothesis added; Check |
| §5.6 infinity type, case (2) | `l=5`, exponents `4,3,2,0,−2,−3,−4` | `λ = (4,3,2,0,−2,−3,−4) − (3,2,1,0,−1,−2,−3) = (1,1,1,0,−1,−1,−1) ≠ 0` | no `σ` with trivial `σ_∞`; Check |
| §5.6 counts | `s=0`, `l=5,7` | `(1,2)` and `(2,4)` endoscopic/cuspidal | unchanged |
| `HasQuadraticSelfTwist`, `M>0` | `M=0` | `Nat.Coprime p 0 ↔ p=1`: no prime tested; sign character of `ℤ^×` nontrivial, square 1 | `M>0` essential; Lean probe `¬ p.Coprime (N*0)` elaborated; Check |
| same, small moduli | `M=1,2` | `(ℤ/1)^×`, `(ℤ/2)^×` trivial (probe `Subsingleton` for `M=1` elaborated) | first witnesses `M=3,4`; Check |
| same, CM example | level 32, `y²=x³−x`, `ψ=χ_{−4}` | `a_3=0`: `0·(−1)=0`; `a_5=−2`: `(−2)·1=−2` | predicate holds; excluded |
| same, Δ | `ψ=χ_{−4}`, `p=3` | `252·(−1) = −252 ≠ 252` | candidate rejected; level one has no self-twist |
| same, raising modulus | `(M,ψ) → (MM′, ψ∘red)` | units surject, so `ψ′ ≠ 1`; `ψ′²=1`; `ψ′(p)=ψ(p)` for `p ⊥ MM′` | API bullet |
| new theorem, `n=0` | any `N` | product `= ζ(s)∏_{p|N}(1−p^{−s})`, pole at 1 since `∏(1−1/p) ≠ 0` | `hn` needed; Check |
| new theorem, CM, `n=4` | level-32 form | `α²β² = p²` at odd `p`: factor `ζ(s−2)(1−2^{2−s})`, pole at `s=3` = threshold `4·1/2+1`; rest `L(s,ξ⁴)L(s−1,ξ²)` non-zero at 3 | non-CM needed; Check |
| new theorem, CM, `n=2` | level-32 form | `L(s,ξ²)L(s−1,χ_{−4})`: entire | `n=2` does not detect; noted |
| new theorem, weight 1 | icosahedral form | finite image ⇒ some `Sym^n` contains trivial ⇒ `ζ(s)` factor, pole at `1 = n·0/2+1` | `hk` needed; Check |
| new theorem, region | `k=12`, `n=2` | threshold `2·11/2+1 = 12` | matches level-one statement |
| new theorem, bad primes | `p | N` | Tau Ceti gives `{a_p, 0}`; product taken over `p ∤ N`; `L_p^{−1}` polynomial | omitted factors do not affect entirety |
| new theorem vs level one | `N=1` | `{p ∤ 1}` = all primes; `k ≥ 12` automatically | contains §14.4 |
| §14.4 Euler factor | `n=0,1,2`; `α=2,β=3` | `1−x`; `1−5x+6x²`; `1−19x+114x²−216x³`, same under `α↔β` | API agrees |
| §14.4 Δ factor | `a_2=−24`, `αβ=2048` | `α²+αβ+β² = 576−2048 = −1472` | unchanged Check |
| §2.2 surjectivity | `W` a point, `W̃=∅` | `𝒪(∅)=0`, identity holds vacuously, 0 lifts | excluded; Check |
| §2.2 restriction map | `pℤ_p ⊂ ℤ_p` | `t ↦ t^p` on `|t−1|<1`, degree `p`, `p` preimages per point | surjective; Check |
| §2.2 identity cover | `χ=1` | degree 1, fibres of size 1 | Check updated |
| §2.2 Chevalley modulus | `⟨2⟩ ⊃ ⟨4⟩`, `T={2}` | mod 3: `2^a ≡ (−1)^a`, kernel `a` even; mod 1: kernel all of `⟨2⟩` | avoidance needed; Check |
| §12.1 API | `r=1`, `r=2` | `T = π_K⊗σ_K` of rank 2; rank 4 with weights `{0,1}+{0,2} = {0,1,2,3}` | API agrees with Checks |
| §12.1 `σ_K` self-duality | `σ ≅ σ^∨⊗χ`, `XX^c = χ∘N` | `σ_K^c = BC(σ)⊗(X^c)^{−1}`, `σ_K^∨ = BC(σ)⊗(χ∘N)^{−1}X`; equal iff `XX^c = χ∘N` | holds |
| F06 locators | page markers | nt21 line 755 (p. 17) inside Cor. 1.13; nt26 line 1190 (p. 26) before (4); nt26 line 2035 (p. 44) before regular-semisimple choice | ranges extended |

## Ownership, pins and source status

- `HasQuadraticSelfTwist`: searched by object (CM, self-twist, newform predicates) in every open head and on main with `roadmaps grep`. GL2AutomorphicRepresentationsAndTransfer §R16.4.6 owns the non-CM self-twist condition on cuspidal `GL_2` classes, in its README only (its Lean file has no such declaration). This package cites it as owner, in Scope, the contract, §14.3 and §14.5. It keeps only the coefficient form on Tau Ceti `Newform`, the carrier its acceptance statement needs, and the README says so. No other roadmap defines a CM predicate on Tau Ceti newforms. EllipticPeriods has `HasCM` on period lattices, a different object. No declaration name collides.
- No library declaration proves either acceptance theorem. `LSeries_eulerProduct_hasProd_satakeParameters` and `hasEntireExtension_qExpansion_coeff` are only the degree-one, form-specific cases.
- While here, the Tau Ceti contract's convergence region was corrected to the pinned `Re s > (k+1)/2` (Satake.lean:191).
- No new source was needed: all locators are in nt21, nt21b, nt26 and ct17, already cached. `needs-references.toml` was not created.
- Ownership against the open pull requests listed in the brief was checked through `roadmaps grep` and `roadmaps show` (SmoothRepresentationsOfLocalGroups, GL2AutomorphicRepresentationsAndTransfer, AutomorphicLFunctionsAndLocalFactors, ModularityAndLanglandsExtensions).

## Checks and exact outcomes

- `lake env lean packages/ModularityAndLanglandsExtensionsPartII/Suggested.lean` (run from the content checkout) printed exactly two warnings, both "declaration uses `sorry`", at lines 97 and 116 (the two theorems), and no errors. No `TauCeti.*` module needed building.
- Mechanical binder check: a scratch copy with `#check @symPowerEulerFactor`, `@HasQuadraticSelfTwist`, `@symPowerEulerProduct_levelOne_entire` and `@symPowerEulerProduct_entire_of_not_hasQuadraticSelfTwist` elaborated. `HasQuadraticSelfTwist : {N} → [NeZero N] → {k} → Newform N k → Prop`. The new theorem keeps `f`, `2 ≤ k`, `¬HasQuadraticSelfTwist f`, `n`, `1 ≤ n`, `α β` and the `p ∤ N` Satake hypothesis, with the product indexed by `{p : Nat.Primes // ¬ p ∣ N}`. No section binder is lost, and every signature matches its README statement. The level-one theorem is unchanged.
- `tauceti-roadmap … gate --depcheck …` output: `depcheck: 236 roadmaps, 2163 edges, 0 problem(s)`. There is no UPWARD, CYCLE or `moved:` line.
- `roadmaps resolve` on the README: no cross-roadmap citation and no Lean name found nowhere. Library names outside TauCetiRoadmap were checked by hand at the pins (files and lines above).
- README contracts and `design/plan.json` agree verbatim on all 13 gap slugs. Only the `needs` of `iwahori-matsumoto-quasi-split` changed.

## Notes for the maintainer

- The gap `iwahori-matsumoto-quasi-split` now asks SmoothRepresentationsOfLocalGroups SR.1.5 for the Iwahori–Matsumoto presentation of `H(G(F)_1, I)` for quasi-split `G`, with parameters `[IsI : I]`, and for the `Ω` crossed product. It no longer asks for an "`H(G, B)` of a Tits system". The chamber-fixer algebra of ramified `U_{2k+1}` is derived here, in §4.8.
- New Lean names other roadmaps may cite: `TauCetiRoadmap.ModularityAndLanglandsExtensionsPartII.HasQuadraticSelfTwist` and `TauCetiRoadmap.ModularityAndLanglandsExtensionsPartII.symPowerEulerProduct_entire_of_not_hasQuadraticSelfTwist`. No existing name changed.
- New section §14.5. The §4.8 heading changed, from "The Iwahori–Hecke algebra of ramified `U_{2k+1}` is that of `Sp_{2k}`" to "The Hecke algebra of the chamber fixer of ramified `U_{2k+1}` is the Iwahori–Hecke algebra of `Sp_{2k}`". No other roadmap cites §4.8. SmoothRepresentationsOfLocalGroupsPartII consumes §4.9, which is unchanged in substance.
- Source issue (for the source-issues list): nt21 Lemma 2.34 (p. 52) states only "finite étale". The cover its proof builds is surjective, and the later point-lifting needs that.
- No suspicious instructions were found in the review text.
