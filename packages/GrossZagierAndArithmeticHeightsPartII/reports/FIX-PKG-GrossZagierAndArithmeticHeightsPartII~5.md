# FIX-PKG-GrossZagierAndArithmeticHeightsPartII~5

This round repairs the ten findings of `REV-PKG-GrossZagierAndArithmeticHeightsPartII~4`. I checked every finding against the cached legal sources, the supplier roadmaps and the pinned libraries before editing, and all ten are correct.

Files changed:

- `packages/GrossZagierAndArithmeticHeightsPartII/README.md`
- `packages/GrossZagierAndArithmeticHeightsPartII/sources.toml`
- `packages/GrossZagierAndArithmeticHeightsPartII/design/plan.json`: only the `needs` text of the existing gap `jr-afl-local-inputs`, kept identical to its README contract line.

`Suggested.lean` and `metadata.toml` are unchanged.

## F01 (P1) — applied

Evidence: BHKRY line 4774 defines the metric on the domain of line 4770, where [w, w̄] < 0. Line 3824 makes the domain explicit: [w, w] = 0 and [w, w̄] < 0. Line 2846 shows that εV(ℂ) is isotropic. YZZ09 line 60 gives the same pairing.

Changed: in §12.5(a) and the metric-shift Check, −[w, w] became −[w, w̄], with the domain conditions and the identity [εx, ε̄x] = h(x, x). A new Check covers the negative plane: w = (1, i) has [w, w] = 0 and [w, w̄] = −4, so ‖w‖² = 1/(πe^γ). The k·log(4πe^γ) shift in §§12.5–12.9 is unchanged.

## F02 (P1) — applied

Evidence: Z (2.12)–(2.17), lines 546–581. Substituting h ↦ ah gives |det a|^(−s)·η(det a), and ω(a⁻¹γa) = η(det a)·ω(γ). For the unit function and the nonsplit group, Z Conjecture 2.3 (line 620) gives Orb = 0.

Changed: in §9.3, the bullet "the transfer factor makes ∂Orb depend only on the orbit" became an explicit conjugation law. ∂Orb is invariant exactly when Orb(γ, f′) = 0, which the fundamental lemma gives on the AFL matching locus. The sign Check is qualified, and a new Check gives the ℚ₃ swap-matrix counterexample. The gap text now states the vanishing.

## F03 (P2) — applied

Evidence: Z lines 574–576 take η̃(x) = (−1)^v(x) when F is unramified. With η̃₀χ instead, ω(ξγ) = χ(ξ)⁻¹·ω(γ) = −ω(γ).

Changed: in §9.3, "η̃ a fixed extension" became "η̃(x) = (−1)^(v_F(x)), no other extension". The scalar-invariance bullet now gives its proof. A new Check shows that the extension is forced, with γ = ((−2,1),(−3,2)): the natural η̃ gives −log 3, the alternative gives +log 3, and Int = 1. The `jr-afl-local-inputs` gap text in the README and in `plan.json` names η̃.

## F04 (P1) — applied

Changed: new §12.6a, orthogonal Chow-valued modularity over any totally real F₀ (YZZ09 Theorem 1.3, p. 1150), proved by Kudla–Millson, Betti vanishing for p ≥ 3 (VZ84 Theorem 8.1), the YZZ09 pullback and Bor99 over ℚ. New §12.6b, the unitary pullback (Liu11a, pp. 873–877). §12.7 is rerouted, keeps general F₀ and n = 2, cites ES Theorems 3.6 and 4.13; (4,2) Check.

Ownership: no roadmap on main, among the board packages or among the open heads owns Kudla–Millson modularity, orthogonal Chow-valued modularity over totally real fields, or the unitary-to-GSpin pullback. I searched with `roadmaps grep` for "Kohnen", "Kudla–Millson", "Yuan–Zhang–Zhang", "orthogonal Shimura variet", "generating series of special" and "Vogan–Zuckerman". SiegelModularForms says explicitly that no roadmap owns Kudla–Millson theory. ComplexMultiplicationAndExplicitReciprocityPartII §4.2 works over ℚ with integral models, and it is later in the order (line 371). This roadmap is therefore the owner. It is also the consumer: §12.3 already uses the Kudla–Millson form.

New suppliers, all earlier than this roadmap (line 350) or on main:

- ShimuraVarieties §§0.5, 2.7, 6.2–6.4, 8.1, 8.5, 8.7 (line 106);
- ArithmeticLocallySymmetricSpaces ALS.5b.1 and ALS.5b.4 (line 60);
- AutomorphicSpectralTheory §§5.10, 5.12, 5.14 (line 97), which prove FrankeInput;
- AutomorphicFormsOnReductiveGroups §5.4 (line 61);
- ComplexKahlerGeometry §§4.5, 6.3 (main);
- ComplexComparisonPartII §C1.9 (line 40).

Each has a contract paragraph. No new gap was needed.

## F05 (P2) — applied

Evidence: BHKRY lines 4689–4711 (p. 100) give θ(z, gk) = θ(z, g, ω(k)·). Only an input invariant under K descends. I recomputed the reviewer's witness: at z = (0,1,2), the norm-one vectors orthogonal to z are ζe₁, and the multiplicities at the two representatives are 2 and 0.

Changed: §12.4 now uses a K-stable L and S_L^K-valued f and φ. A new part (d) puts an input fixed only by K′ ⊂ K on M_(K′), compatibly with pullback along π_(K″,K′) (PELModuli §M6.1). The witness is a new Check. The condition is propagated to §§12.5, 12.6, 12.6a and 12.7.

## F06 (P2) — applied

Evidence: Zha12 lines 354–368 work over any finite F/ℚ_p with p odd, and its Theorems 2.10 and 5.5 are stated there. The n = 3 input extends beyond ℚ_p (Zha12 Remark 11, p. 245), and §1.3 already carries it out over F₀.

Changed: §9.8 "F₀ = ℚ_p, −log p" became "every finite F₀/ℚ_p, p odd, q = #k_F₀, −log q", using q ≥ p ≥ 3 ≥ n for §9.5(b); ℚ_p stays the base of §14.5. The −log 9 example is a new Check. The scope paragraph, §14.5 and §14.6 (exclusion only for n ≥ 4, new Check) are updated.

## F07 (P3) — applied

Changed: the §0.5 Check said "Tor₁(O_Z(x), O_Z(x)) = O_Z(x)(−Z(x)) ≠ 0". It now says this is nonzero exactly when Z(x) ≠ ∅: at val 1, Tor₁ ≅ O_F̆/ϖ; as a negative control, at val −1 Z(x) = ∅ and both sides are 0. No other "≠ 0" claim about Tor or O_D occurs in the README.

## F08 (P3) — applied

Changed: the §12.10 Check "not strongly regular" now reads "not regular semisimple", with the global strong-regularity statement kept separately. A new control uses h = 3J over ℚ₉ (det −27, nonsplit), a regular unipotent g and u = e₁ + e₃ (det(u, gu, g²u) = −1, h(u,u) = 6): regular semisimple, not strongly regular, with reducible polynomial (T − 1)³.

The checks in §§9.1, 9.2, 14.4 and 14.5 were already correct.

## F09 (P3) — applied

Evidence: ShimuraCompactifications (#1053 head) §7.3 gives a smooth separated compactification, and states that properness for complete Σ is §7.5.

Changed: "§7.3 (smooth proper …)" became §§7.3 and 7.5 with a complete smooth Σ. This is applied in the scope paragraph, the supplier contract (with the control: the zero cone gives G_m, the complete fan gives ℙ¹), the §12.5 route and *Needs*, and the Layer 12 dependencies.

## F10 (P3) — applied

Evidence: LZ §1.7 begins on p. 8 (line 295), and §2.2 is on p. 11 (lines 411–426).

Changed: in §0.1, "LZ §§1.7–1.8 and 2.1–2.2, pp. 7–10" became "§§1.7–1.8, pp. 8–10 (conventions); §§2.1–2.2, pp. 10–11 (space, special Hom space and pairing)". The other LZ page locators checked are correct: §1.8, p. 9 and §§2.1–2.3, pp. 10–11.

## Checks run

**Elaboration.** `lake env lean packages/GrossZagierAndArithmeticHeightsPartII/Suggested.lean`, run from the content checkout, exits with code 0 and prints nothing. The file is unchanged and still declares nothing: its docstring names the eight headlines and the carriers they lack. So the `#check @name` signature comparison has no input, and no scratch file was needed. None of the new targets is statable at the pins, since Chow groups of Shimura varieties and the theta lifts are missing, and none is a headline.

**Dependency check**, after the last edit, verbatim:

```text
depcheck: 236 roadmaps, 2157 edges, 0 problem(s)
```

There is no UPWARD, CYCLE or `moved:` line.

**Citation resolver.** It finds the same two leads as before: LubinTateFormalModulesAndQuasiCanonicalLifts §§6.1 and EndoscopicTransferAndUnitaryTraceComparisonPartII §§4.4. Both are board packages earlier in the order, and I opened their cited headings. It finds no missing Lean name. I opened every new citation at its head: ShimuraVarieties (#933), ArithmeticLocallySymmetricSpaces (#871), AutomorphicSpectralTheory (#925), AutomorphicFormsOnReductiveGroups (#1037), ComplexComparisonPartII (#848), ShimuraCompactifications §7.5 (#1053), and ComplexKahlerGeometry on main.

**Gate failures listed in the brief:** none.

**Sources.** Four new keys were fetched through the service, each from a legal copy:

- ES: arXiv;
- YZZ09: the YMSC institutional archive, `--licence-class institutional`, because the DOI page is not open;
- KM90: Numdam;
- VZ84: Numdam.

I filled in their authors, titles, years, venues and locators, and updated the locators and `cited_for` of BHKRY, Liu11a, Zha12, Bor98, Bor99 and Z. No `needs-references.toml` was written. Lusztig76 stays uncertified.

## Adversarial pass on added or changed statements

| Statement | Instances | Computed values | Result | Change |
|---|---|---|---|---|
| §12.5 metric | Q = −x²−y², w = (1,i); aw | [w,w] = 0, [w,w̄] = −4, ‖w‖² = 1/(πe^γ); ‖aw‖² = \|a\|²‖w‖²; [x,x] = 2[εx,ε̄x] ⇒ [εx,ε̄x] = h(x,x) | bilinear form vanishes on the domain | statement, Check |
| §12.5 shift | ψ = c·w^⊗k | ‖ψ‖² = (4πe^γ)^(−k)‖ψ‖₀², shift k·log(4πe^γ) | unchanged | none |
| §9.3 law | ℚ₃, γ = swap, a = diag(3,1) | shells {0} and {−1}; normalized 1 and 3^s; ∂Orb 0 and log 3 = 0 − log\|3\|·1 | law holds | statement, Check |
| §9.3 invariance | γ = ((−2,1),(−3,2)), a⁻¹γa = ((−2,1/3),(−9,2)) | shells {0,−1} and {−1,−2}; Orb = 0 in both; ∂Orb = −log 3 in both | invariant when Orb = 0 | API |
| §9.3 η̃ | ξ ∈ ℚ₉^1, χ(ξ) = −1 | ω(ξγ) = χ(ξ)⁻¹ = −1; ∂Orb(ξγ) = +log 3 versus Int = 1 | natural η̃ forced | statement, Check, gap |
| §9.3 scalar | n = 2, 3, 4 | exponents of ξ: −1, 0, −2; units, η̃ = 1 | invariant | API |
| §9.8 base | ℚ₉, q = 9, γ = ((−4,1),(−15,4)) | γ² = 1; v(−15) = 1; shells {0,−1}; 1 − 9^s; ∂Orb = −log 9 = −1·log q | holds; log 3 off by a factor of 2 | statement, Check |
| §9.8 → semi-Lie | all F₀ | q ≥ p ≥ 3 ≥ n; q = n only at ℚ₃, n = 3 | §9.5(b) applies | Check |
| §0.5 Tor | V₁, val 1 and −1 | O_F̆/ϖ ≠ 0; Z = ∅, 0 = 0 | nonvanishing needs Z ≠ ∅ | Check |
| §12.10 control | h = 3J, g, u = e₁+e₃ | gᵗhg = h; det h = −27; (g−1)² ≠ 0; det(u,gu,g²u) = −1; h(u,u) = 6 | regular semisimple, not strongly regular | Check |
| §12.4 level | ℚ(i)³, diag(1,1,−1), z = (0,1,2) | h(z,z) = −3; norm-1 ⊥ z: ζe₁; multiplicities 2 and 0; K-average equal | needs S_L^K | statement, (d), Check |
| §12.6a weight | [F₀:ℚ] = 2, (4,2) | p/2 + 1 = 3; definite at the second place, so compact | (a)+(b) | Check |
| §12.6a(b) | 𝔰𝔬(3,2), 𝔰𝔬(4,2), 𝔰𝔬(2,2) | at least 4 nonzero noncompact roots ⇒ R ≥ 2; at x₀ = x₁, R = 1 | p ≥ 3 sharp | Check |
| §12.6a constant | φ(0) ≠ 0 | difference 2φ(0)c₁(L) ≠ 0 (L ample) | −φ(0)c₁(L) | Check |
| §12.6a(c) | small lattice NΛ | θ → (ω(g_∞)φ_∞)(0) ≠ 0 | nonvanishing choice exists | route |
| §12.6b | Q = h versus Tr h; 𝔰𝔲(m,1) | index ξ versus 2ξ; R = 1 at x = e₁ | detour needed | Checks |
| §12.7 range | n = 1, 2, 3 | n = 1: CH¹ = 0; n = 2 (2,2) via (c); n = 3 (4,2) via (a)+(b) | general F₀ covered | statement, Check |
| Toroidal | rank-one fan | zero cone gives G_m; complete fan gives ℙ¹ | complete Σ | contract |
| LZ pages | §1.7, §2.2 | p. 8 (line 295), p. 11 (line 411) | corrected | locator |

## Notes for the maintainer

- **New ids.** §§12.6a and 12.6b were inserted, so no section was renumbered. No other roadmap cites this roadmap's Layer 9 or Layer 12 ids, and no Lean name changed.
- **Source correction recorded.** YZZ09 §4.1 states its Betti argument for n > 3 and its pull-back argument for n ≤ 2, which leaves n = 3 uncovered. §12.6a covers n = 3 through dim(𝔲 ∩ 𝔭) ≥ 2 for 𝔰𝔬(3, 2).
- **ComplexMultiplicationAndExplicitReciprocityPartII** (later in the order) can cite §12.6a if it needs Chow-valued modularity of GSpin divisors.
- **Ownership against open pull requests** was checked through the service's indexed heads (index of 2026-11-11T04:24Z), the board packages and the sibling list.
- **No suspicious instructions** were found in the review text.
