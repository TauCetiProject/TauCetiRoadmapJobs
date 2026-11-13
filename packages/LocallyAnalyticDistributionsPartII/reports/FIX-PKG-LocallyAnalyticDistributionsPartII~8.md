# FIX-PKG-LocallyAnalyticDistributionsPartII~8

One review (REV-PKG-LocallyAnalyticDistributionsPartII~7), three findings. All three are correct and have been repaired. F01 is repaired differently from the review's suggestion, and the repair also corrects a false claim in §4.2. The only file changed is `packages/LocallyAnalyticDistributionsPartII/README.md`. `Suggested.lean`, `sources.toml`, `metadata.toml` and the plan's `gaps` list are unchanged.

## F01 (P1) — applied differently

Old → new: the §4.4 bullet "X = G/B is a compact ℚ_p-analytic manifold … (LocallyAnalyticDistributions §0.3)" became an explicit target (i)–(iv). It covers the big-cell chart μ, the charts φ_g on X := G/TN, a finite disjoint clopen refinement giving a section s with s(π(1)) = 1, the map τ : G → T, and the two inverse maps between Ind(χ) and C^la(X). It has a proof sketch, new suppliers and five new Checks.

**Verified.** LocallyAnalyticDistributions §0.3, at the head of its open pull request, assumes the compact manifold X under hypothesis (a) ("X is a compact finite-dimensional Q_p-analytic manifold"). It builds function spaces on that X and never builds a quotient. PadicLocalLanglandsForGL2Qp §0.1 also starts from a given locally F-analytic manifold. Fu line 812 asserts the splitting without proof. No roadmap on main, no open pull-request head and no board package supplies the analytic quotient of a p-adic group. I searched by object for "quotient manifold", "local(ly analytic) section", "big cell", "analytic structure on G/…" and "Iwahori factorization". This roadmap is therefore the owner of the quotient G/TN of a compact open subgroup.

**Why differently.**
1. **Quotient G/TN, not G/B.** §4.2 asserted "B = 𝔹(ℚ_p) ∩ G = TN", but that is false for some compact open G. At p = 3, let H be the set of matrices with rows (a, b) and (0, a⁻¹) with a ∈ 1 + 3ℤ₃ and b ≡ (a − 1)/3 mod 3, and let G be the preimage in SL₂(ℤ₃) of H mod 9.
   - Then B = H, while T = diag(1 + 9ℤ₃) and N = upper(3ℤ₃).
   - The matrix with rows (4, 1) and (0, 1/4) lies in B but not in TN, and [B : TN] = 3.
   - So g = s(x)·t·n with t ∈ T is impossible on G/B for this G. Fu (line 769) assumes B = TN.
   - Rather than add that hypothesis, §4.4 uses X := G/TN, which equals G/B exactly when B = TN. The construction works without the hypothesis, because N̄TN = μ(N̄ × T × N) is open and lies in G.
   - §4.2 now defines N, B and TN, says when B = TN, and has a new Check with this counterexample and with B = TN for G₁.
   - The same §4.2 sentence used the lattice g₀ for a general compact open G (the F02 pattern). It now uses the rational triangular decomposition, with ℕ̄ defined.
2. **Different big-cell supplier.** The review pointed to ReductiveGroups 7C.4–7C.5. Those sections build Bruhat orbits U⁺n_wB⁺/B⁺ by the complex covering and contraction route, and do not state the big cell as an open immersion. ReductiveGroups §9B.1 (*Integral open cells*) does: the open immersion U⁻ × T × U⁺ → G with its inverse, compatible with any base change. Layer 9D's isomorphism theorem carries it to (𝔾, 𝕋) over ℚ_p. ReductiveGroupsPartII RG2.0.2 (*smooth-group-analytic-charts*, *smooth-morphism-open-map*) supplies analytic charts and the openness of Ω(ℚ_p), as the review suggested. All three are on main.
3. **Pattern repaired elsewhere.**
   - Scope and ownership: the Layer 4 bullet now names the quotient manifold, and there is a new "Reductive group schemes …" deferral.
   - New supplier contracts "From TauCetiRoadmap.ReductiveGroups" and "From TauCetiRoadmap.ReductiveGroupsPartII".
   - The §4.4 *Needs* line and the Layer 4 Dependencies list the new suppliers.
   - The §4.4 Check "For χ = 1 … C^la(G/B)" now reads C^la(X).
   - No other passage asserts an unsupplied manifold or section: I searched for "manifold", "section", "quotient space" and "homogeneous space".

New Checks in §4.4:
- G₁, one chart.
- SL₂(ℤ_p), two charts, X ≅ ℙ¹(ℚ_p).
- A torus, X a point.
- B not normal in G₁.
- The G₁ witness of the review: x = 3/4, f₀ = 4^c.

## F02 (P2) — applied

Old → new: in §4.1, "D^λ_r(G, K) := …; U^λ_r(g) := …; Û(g)_λ := Û(g_K)/Û(g_K)·ker λ" with G an arbitrary compact open subgroup became the following. D(G, K)_λ and C^la(G, K)[λ] stay general. "When moreover p is odd and G is uniform …" introduces D^λ_r(G, K), U^λ_r(g, K) and `Û(g_R)_{K,λ}`, written U^λ_r(g) and Û(g)_λ for K = ℚ_p. The compatibility bullet is qualified the same way.

**Verified.**
- SL₂(ℤ₃) is compact open in SL₂(ℚ₃) and contains −I of order 2. A p-valuation would give ω(−I) = ω((−I)³) = ω(−I) + 1, so gap:radius-algebras does not cover this group.
- §2.2 defines U_r(g, K) only for p odd and G uniform, and Fu §4 (line 566, p. 12) takes G uniform.
- Û is defined on lattices (Convention 5, §2.1).

**Pattern repaired.**
- Convention 5 now says that Û(g_K), Fu's notation used in §§3.7, 3.9 and 3.10, abbreviates Û(g_R)_K for the uniform G in question, and that Û(g) abbreviates `Û(g_{ℤ_p})_{ℚ_p}`.
- The §4.1 *Needs* line gains §0.1 and gap:radius-algebras.
- The scope bullet for Layer 4 now says "for uniform G".
- A new §4.1 Check covers SL₂(ℤ₃) and the lattice dependence of G₁ against `G₁^3`.
- §4.2's use of a lattice g₀ for general G was removed (see F01).
- §§2.4(iv), 4.6–4.8, 4.10, 4.11 and 4.14 already assume p odd and G uniform (G₁^m), so they are consistent with the new hypothesis.

## F03 (P3) — applied

Old → new:
- §4.2, third bullet: "of the last check" → "of the SL₃ antipode Check below".
- §4.7 (iv): "(§4.1, last check)" → "(§4.1, the non-integral-parameter Check)".
- Source corrections, item 10: "(§4.2, last check)" → "(§4.2, the SL₃ antipode Check)".

Two ordinal references remain, and both are still correct. "(§3.2, last check)" in §3.6 points at the W(𝔽̄_p) coefficient-extension Check, which is still last in §3.2. "(§3.3, last check)" in Source corrections item 3 points at the ramified p ∈ m² Check, which is still last in §3.3. The Checks I added are appended, but no ordinal locator points at the sections that gained them (§§4.1, 4.2, 4.4).

## Checks run

- **Elaboration.** I ran `lake env lean packages/LocallyAnalyticDistributionsPartII/Suggested.lean` from the content checkout. Exit status 0; the only output is two warnings, `declaration uses 'sorry'`, at 79:8 and 99:8. The imported Tau Ceti object files were present, so no build was needed.
- **Signatures.** A scratch copy of the file with `#check @name` for all four declarations elaborated once. `firstCongruenceSL2` and `firstCongruenceProduct` keep `p`, `[Fact p.Prime]` and `m`. `isSemisimpleModule_of_finiteDimensional` keeps `p ≠ 2`, both module structures, the scalar tower and `FiniteDimensional`. `exists_surjective_algHom_end_symPower` keeps `p ≠ 2`, `m`, `k`, the field, both algebra structures, `FiniteDimensional ℚ_[p] K` and the scalar tower. They match the README; nothing changed (the file was not edited).
- **Dependency check.** Output:

```text
depcheck: 223 roadmaps, 1978 edges, 0 problem(s)
```

  No UPWARD, CYCLE or moved line.
- **Citations.** `roadmaps resolve` on the README reports no cross-roadmap citation and no Lean name found nowhere.
- **Gate failures.** None were listed with the brief. The worker's later check reported `tex=2`: two hits on the README §4.1 Check that begins "The radius and lattice quotients need p odd and G uniform". The cause was TeX subscript braces outside a code span, in Û(sl₂(ℤ₃))_{ℚ₃} and Û(3·sl₂(ℤ₃))_{ℚ₃}. I put both expressions in code spans, `Û(sl₂(ℤ₃))_{ℚ₃}` and `Û(3·sl₂(ℤ₃))_{ℚ₃}`, as the README already writes `Û(h)_{n,K}`. Nothing else changed. A rerun of the gate's own TeX and LaTeX scanners on the README finds no hits.

## Adversarial pass (changed and new statements)

| Statement | Instances tried | Values computed | Result / change |
|---|---|---|---|
| §4.4 (i) μ injective, open image, analytic inverse | SL₂; torus; GL₂ | SL₂: Ω = {a ≠ 0}, inverse (c/a, diag(a, a⁻¹), b/a), lower-right entry (bc + 1)/a = d. Torus: μ = id, Ω = 𝕋. GL₂: u₋(c/a)·diag(a, d − bc/a)·u₊(b/a) | holds |
| §4.4 (ii) charts φ_g, dim X = \|Φ⁺\| | G₁; SL₂(ℤ_p); torus; SL₃ | G₁: N̄ = lower(pℤ_p), U₁ = X, dim 1. SL₂(ℤ_p): U₁ = {g₁₁ unit} misses wB (g₁₁ = 0), dim 1. Torus: dim 0, X a point. SL₃: dim 3 | holds; non-normality of B blocks a quotient-group shortcut: lower(p)·upper(p)·lower(−p) has rows (1 − p², p), (−p³, 1 + p²), det = 1 − p⁴ + p⁴ = 1, lower-left entry −27 at p = 3 |
| §4.4 (iii) finite disjoint refinement, s(π(1)) = 1 | k = 1 (G₁); k = 2 (SL₂(ℤ_p)) | SL₂(ℤ_p): V₁ = {g₁₁ unit}, V₂ = {g₂₁ unit, g₁₁ ∈ pℤ_p}; the first column is primitive, so V₁ ⊔ V₂ = X; s(B) = 1, s(wB) = w | holds |
| §4.4 (iv) τ equivariance, inverse maps | G₁ at p = 3; χ = 1; torus | g with rows (4, 3), (3, 5/2): det 10 − 9 = 1, 3/2 ∈ 3ℤ₃; lower(3/4)·[(4, 3), (0, 1/4)] has lower-right 9/4 + 1/4 = 5/2. τ(g) = diag(4, 1/4), f₀ = 4^c. τ(gt′n′) = τ(g)t′ from gt′n′ = s(x)(tt′)(t′⁻¹nt′n′); τ∘s = 1. χ = 1: f₀ = 1. Torus: Ind(χ) = ℚ_p·χ, dim 1 = dim C^la(point) | holds |
| §4.4 f₀ := χ∘τ values in 1 + pℤ_p | χ(t) = t^c, G₁ | f₀(diag(1 + p, ·)) = (1 + p)^c, \|f₀\| = 1; for χ ≠ 1 the constant 1 fails: 1 ≠ χ(t) | holds |
| §4.2 TN ⊆ B open; B = TN for G₁ | G₁; SL₂(ℤ_p); preimage example at p = 3 | G₁: (a, b; 0, a⁻¹) = diag(a, a⁻¹)·upper(b/a), b/a ∈ pℤ_p. Example: (aa′ − 1)/3 = (a − 1)/3 + (a′ − 1)/3 + (a − 1)(a′ − 1)/3 ≡ sum mod 3. Inverse: (a⁻¹ − 1)/3 ≡ −(a − 1)/3. (4, 1; 0, 1/4) ∈ B, upper-right 1 ∉ 3ℤ₃, so not in TN; [B : TN] = [1 + 3ℤ₃ : 1 + 9ℤ₃] = 3 | the old claim "B = TN" is false; repaired by working on G/TN |
| §4.1 radius/lattice clause needs p odd, G uniform | SL₂(ℤ₃); G₁ vs `G₁^3` at p = 3 | ω((−I)³) = ω(−I) + 1 contradicts (−I)³ = −I. Lattices: (1/3)L_{G₁} = sl₂(ℤ₃), (1/3)·3L_{G₁} = 3sl₂(ℤ₃). Σ3ⁿhⁿ has coefficients 3ⁿ → 0 in basis hⁿ, but 1 in basis (3h)ⁿ | holds; added as a Check |
| §4.1 compatibility D^λ_{1/p} ≅ Û(g_R)_{K,λ} | G₁^m, K = ℚ_p; m = 0 | m = 0: both sides ℚ_p. G₁: §3.5 iso is compatible with U(g_K) ⊂ both sides, so it carries the central ideal ·ker λ to ·ker λ | holds |
| Convention 5 abbreviation Û(g_K) = Û(g_R)_K | §§3.7, 3.9, 3.10, 4.14 uses | each use is under "G uniform" (§3.7 "G uniform", §3.9 "G uniform with g_R = (1/p)RL_G", §3.10 "G uniform", §4.14 G₁^m) | consistent |
| F03 locators | §4.2 SL₃ Check; §4.1 non-integral Check | SL₃: dχ(HC(C₃)) = (1 + 1)·1·(−2 − 1) = −6, antipode gives 6. §4.1: ‖Δ‖_r ≤ p^(2/3) < p = \|λ\|, so D^λ_r = 0 | locators now resolve |

## Sources

No new source was cited and none was requested. Each new §4.4 statement either cites FU24 (line 812, p. 17, already recorded for §4.4) or is reduced to the supplier roadmaps, which carry their own citations (ReductiveGroups §9B.1 cites Conrad, Theorem 5.1.13). The Convention 5 citation of Fu §4, p. 12 is FU24 line 566, already recorded for "Conventions". `needs-references.toml` was not written.

## For the maintainer

- **New supplier edges, both to roadmaps on main.** ReductiveGroups (§9B.1, Layer 9D) and ReductiveGroupsPartII (RG2.0.2: *smooth-group-analytic-charts*, *smooth-morphism-open-map*). The dependency check accepts both.
- **Ownership.** No roadmap on main, open head or board package constructs the analytic quotient of a p-adic group by a closed subgroup. This roadmap now owns the case it needs: G/TN for a compact open G in a split reductive 𝔾(ℚ_p), via the big cell. A general theorem (G/H for any closed H in a p-adic Lie group) would need a p-adic Cartan closed-subgroup theorem, which no roadmap owns; LieGroups Layer 2 is real-analytic.
- **Consequence for a later package.** The board package LocallyAnalyticRepresentationsOfLocalGroups, which is later in the merge order and a downstream consumer here, uses in its parabolic-induction target (README line 842) "local analytic sections of G → P\G over a finite disjoint compact-open cover" for the full group 𝔾(L) without a supplier. It may cite §4.4 here, or state the parabolic analogue itself; its ReductiveGroupsPartII RG2.4.4 citation gives compactness only.
- **Fu's hypothesis B = TN.** It is not automatic for compact open subgroups; the counterexample is a §4.2 Check. The roadmap no longer needs it, because §4.4 works on G/TN.
- **Names other roadmaps cite.** Unchanged: no section, heading or Lean name was renamed, and §4.4 keeps its number and title.
- **Ownership against open pull requests** was checked with `roadmaps grep` over the 449 open heads and main, and over the board packages, as described above.
