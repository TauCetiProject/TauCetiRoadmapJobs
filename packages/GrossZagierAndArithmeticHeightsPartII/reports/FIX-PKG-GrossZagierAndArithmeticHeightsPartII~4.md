# FIX-PKG-GrossZagierAndArithmeticHeightsPartII~4

Repair round for the seven findings of `REV-PKG-GrossZagierAndArithmeticHeightsPartII~3`. I checked every finding against the cached legal sources, the supplier roadmaps and the pinned libraries before editing, and all seven are correct. Files changed: `packages/GrossZagierAndArithmeticHeightsPartII/README.md`, `packages/GrossZagierAndArithmeticHeightsPartII/Suggested.lean` (docstring only) and `packages/GrossZagierAndArithmeticHeightsPartII/sources.toml`. `metadata.toml` and `design/plan.json` are unchanged: no new supplier gap was needed.

## F01 (P2) — applied

Evidence: LZ line 646–668 (pp. 16–17): φ₀ = 1_(Λ^n), Λ = ⟨1⟩_n, T from L; LZ line 2783–2800 (p. 63) for φ₁.

Changed: §3.1 `W′_T(0, 1_(L^n))` → `W′_T(1, 0, φ₀)` with separate self-dual Λ; Checks (8/3)·log 3 at q = 3, det-parity control, wrong-input value q+1. Propagated to the Layer 3 Examples, §4.6 (explicit Λ₀, Λ₁) and §13.5 (v₀-factor, new Check).
## F02 (P2) — applied

Evidence: LL1 Definition 5.3 (line 1240, p. 26): Hom ⊗ ℚ; LZ §§13.2–13.3 (line 3535–3559, p. 81): Hom ⊗ ℤ_(p), U_v = Λ_v; Z Definition 7.2 (p. 31): Hom ⊗ ℤ[1/d].

Changed: §10.1 actual homomorphisms → rational quasi-homomorphisms generically; integral moduli only for admissible data, with denominators prime to p (semi-global) or at d; inert-admissible defined; API updated; x/3 Check; PELModuliPartII §§7.1–7.2 added to the contract and *Needs*.
## F03 (P2) — applied

Evidence: LL2 footnote 9 (line 499, p. 11): N(x) ≠ ∅ iff h(x,x) ∈ O_F₀; Corollary 2.30 and Proposition 2.28(2) (pp. 22–23).

Changed: §5.1 "N(x) meets each" → nonempty iff the norm is integral, then meets both, else empty; new u⁻¹e Check (valuation −1, zero components). §0.7 universal rank-(n−1) claim → example O_F·e (Z ≅ N₁, flat), with the control O_F·ϖ⁻¹e (empty).
## F04 (P2) — applied

Evidence: K §3.1 (line 654, p. 16) assumes m ≥ 1.

Changed: §7.2 "for a 2m-dimensional symplectic space" → "for an integer m ≥ 1 and …"; a new API bullet sends type zero to §§7.3–7.4; a new Check excludes m = 0 explicitly rather than reading m − 1 as truncated subtraction; the m = 1 Check records U′ = 0, Y_V = S_V = ℙ¹ of dimension 1.
## F05 (P1) — applied

Evidence: MetaplecticAutomorphicForms §5.8 (#1063) is the Gan–Qiu–Takeda integral; it has no Green currents or Borcherds sections. BHKRY needs n ≥ 3 (line 557, p. 12).

Changed: new §12.4 (Green functions; BHKRY 7.2.1/7.2.4, Bor98 6.2) and §12.5 (Borcherds divisors, vertical terms kept, criterion; BHKRY 5.3.1/5.3.3/4.2.3, Bor99 3.1); old §§12.4–12.9 → §§12.6–12.11, rewired; n ≥ 3 in §§12.7–12.9, 14.2–14.3; new §9.8 (Zha12) as the §14.5 base.
## F06 (P2) — applied

Evidence: ClassicalAdicEtaleCohomology §8.1 (#875) is for analytic adic spaces; EtaleCohomologyFoundations (main) §§0.7, 0.8, F.2.5, F.4.1–F.4.6 are the scheme statements.

Changed: contract heading and text, §§2.1, 2.2, 5.4 *Needs*, the Layer 2 and 5 Dependencies and the Scope: "ClassicalAdicEtaleCohomology Layer 8" → those EtaleCohomologyFoundations sections; new §2.2 Check 𝔸¹ ⊂ ℙ¹: H⁰_c = H¹_c = 0, H²_c = ℚ_ℓ(−1), Frobenius Q.
## F07 (P3) — applied

Evidence: Z Conjecture 3.8 (line 812–824): group S_n, semi-Lie V_(n−1).

Changed: §14.5 n = 1 Check split. Group n = 1 is trivial and semi-Lie dimension 0 is vacuous. Semi-Lie dimension one is n = 2: intersections 1 and 2 at a = 1 and 3, ∂Orb/log p = −1 and −2. A new Check marks n = 3 as a base case. README only.
## Checks

**Elaboration.** `lake env lean packages/GrossZagierAndArithmeticHeightsPartII/Suggested.lean`, run from the content checkout, exits with code 0 and prints nothing (run twice, after the docstring edit and after the last edit). The file still declares nothing. The `#check @name` comparison therefore has no input, and no scratch file was needed. The only change is in the docstring: the CM-modularity headline now cites README §12.9 (was §12.7) and says "for hermitian spaces of dimension n ≥ 3". The README "Acceptance file" section was updated the same way.

**Dependency check**, after the last edit, verbatim:

```text
depcheck: 236 roadmaps, 2154 edges, 0 problem(s)
```

There is no UPWARD, CYCLE or `moved:` line. The two new edges are QSeriesPartitionsAndMockModularForms (order line 248) and ShimuraCompactifications (line 163); both are earlier than this roadmap (line 350). EtaleCohomologyFoundations is on main.

**Citation resolver.** It lists the same two leads as before: "LubinTateFormalModulesAndQuasiCanonicalLifts §§6.1" and "EndoscopicTransferAndUnitaryTraceComparisonPartII §§4.4". Both are board packages earlier in the merge order, and I opened the cited headings in their package READMEs. It finds no missing Lean name. I opened every new citation at its source: QSeries §§8.3, 8.5, 8.6 (#1391 head); ShimuraCompactifications §§7.3, 7.15 (#1053 head); EtaleCohomologyFoundations §§0.7, 0.8, F.2.5, F.4.1–F.4.6 (main); PELModuliPartII §§7.1–7.2 (package).

**Gate failures listed in the brief:** none.

## Adversarial pass on added or changed statements

| Statement | Instances tried | Values computed | Result | Change |
|---|---|---|---|---|
| §3.1 Whittaker input | n = 1, val = 1, q = 3 | W′_T(1,0,φ₀) = (1 + 1/3)·log 9 = (8/3) log 3; val det ⟨ϖ⟩ = 1, ⟨1⟩ = 0 | L ≠ Λ | statement, 2 Checks |
| §3.1 wrong input 1_L | rank one, L = ⟨ϖ⟩ | #{a mod ϖ^N : N(a) ≡ 1 mod ϖ^(N−1)} = (q+1)q^N, density q+1 ≠ 0 = Den(L) | nonvanishing at s = 0 | Check |
| §4.6 sections | Λ₀ = ⟨1⟩_n, Λ₁ = ⟨1⟩_(n−1) ⊥ ⟨ϖ⟩ | val det 0 and 1; LZ (9.2.0.2) | explicit | statement |
| §10.1 rational labels | x of norm 1, x/3 | norms 1 and 1/9; actual-Hom norms lie in ℤ | actual Hom empty for 1/9 | statement, Check |
| §10.1 semi-global | p = 3 versus p = 5 | the denominator 3 is excluded at p = 3 (U₃ = Λ₃), allowed at p = 5 | admissibility needed | statement |
| §10.1 O_E[1/d] | Z Definition 7.2 | Hom ⊗ ℤ[1/d], φ = 1_(Λ^d) ⊗ φ_d | consistent with §11.1 and §12.6 | statement |
| §5.1 incidence | x = u⁻¹e, h(e,e) = 1 | h(x,x) = −u⁻², v_F₀ = −1 (−u² = N(u) a uniformizer) | N(x) = ∅ | API, Check |
| §5.1 nonempty case | x = e | integral norm; contains a stratum V_Λ meeting both components | meets both | API |
| §0.7 rank n−1 | n = 2: O_F·e and O_F·ϖ⁻¹e | Z ≅ N₁ = Spf O_F̆ (flat); norm ϖ⁻² gives ∅ | universal claim false | Check |
| §7.2 range | m = 0, 1, 2 | dim U′ = −1 (undefined); U′ = 0, Y_V = ℙ¹; rational fibre ℙ¹ | m ≥ 1 | statement, API, Check |
| §2.2 excision | 𝔸¹ ⊂ ℙ¹ over 𝔽_Q | H⁰(ℙ¹) ≅ H⁰(pt), H¹(ℙ¹) = 0: H⁰_c = H¹_c = 0, H²_c = ℚ_ℓ(−1), eigenvalue Q | scheme triangle | Check |
| §12.4 singularity | Γ(0,t) = −Ei(−t), R < 0 | Γ(0, 4π|R|) = −Ei(4πR) = G_K(x,1) | same singular part as §12.3 | Check |
| §12.4 multiplicity | principal parts φq^(−m), 2φq^(−m) | −c·log|ℓ_x|², c = 1, 2 | weights are multiplicities | Check |
| §12.4 uniqueness | n = 3, n = 2 | weight −1 gives M = 0; weight 0 has constants | needs n ≥ 3 | hypothesis, Check |
| §12.4 zero input | f = 0 | Θ^reg = 0 | zero Green function | Check |
| §12.5 zero principal part | f with no poles | holomorphic of weight 2 − n < 0, so f = 0 and k = 0 | constant c must be 0 | Check |
| §12.5 order | q^(−1)·1_L̂, L self-dual, x primitive of norm 1 | contributing y = ζx, ζ ∈ O_F^×; order #O_F^× (2, 4 or 6) | divisor = Green multiplicity | Check |
| §12.5 constant term | Eisenstein E ∉ S_n | some P ⊥ S_n with ⟨P, E⟩ ≠ 0; k = −⟨P, E⟩ ≠ 0 | −φ(0)ĉ₁ needed | Check |
| §12.5 vertical | Pappas model, δ = √−D | (div δ, 0) = (0, log D); term −2k(0, log D) | vanishes only in the quotient | Check |
| §12.5 metric | ‖·‖₀² = −[w,w] versus ‖·‖² = ‖·‖₀²/(4πe^γ) | shift k·log(4πe^γ) | normalization pinned | Check |
| §12.7 range | n = 2 | BHKRY §1.5: no integral Borcherds theory | n ≥ 3 | statement, Check |
| §12.8 pairing | F₀ ≠ ℚ or n = 2 | Int_K and finite Int_v are defined; Int_B needs G_B | split | statement |
| §9.8 n = 2 | v(1 − dd̄) = 1, 3 | Int = 1, 2; ∂Orb/log p = −1, −2; equals (a+1)/2 of §0.9 | consistent with F07 | target, Checks |
| §9.8 scope | n = 4 | non-artinian intersections possible (Zha12 p. 210) | limit n ≤ 3 | Check |
| §9.8 → semi-Lie | n = 3, p = 3 | §9.5(b) needs q ≥ n: 3 ≥ 3 | S₃ ⇒ V₂ | Check |
| §14.5 induction | n = 1, 2, 3, 4 | base §9.8 for n ≤ 3; global step at m = n−1 = 3 first | m = 2 step never global | route, Checks |
| §14.3 range | m = 2 versus 3 | §12.9 needs m ≥ 3 | m ≥ 3 | statement |

## Ownership and suppliers

- **Ownership against open work.** I searched main, the board packages and the indexed open heads (index of 2026-11-11T01:02Z) for "Borcherds product", "regularized theta lift", "automorphic Green function", "arithmetic fundamental lemma" and "Gross–Kohnen–Zagier". No roadmap on main or earlier in the order owns unitary Borcherds products, automorphic Green functions on unitary Shimura varieties, or the low-rank AFL. ComplexMultiplicationAndExplicitReciprocityPartII §4.2a (#1695, order line 371, later than this roadmap) owns orthogonal GSpin Borcherds sections at its own integral models. That is a different object, and it is not imported. So this roadmap owns §§12.4–12.5 (unitary; the RSZ models are its own consumers) and §9.8.
- **New suppliers** (all earlier in the order or on main): QSeriesPartitionsAndMockModularForms §§8.3, 8.5, 8.6; ShimuraCompactifications §§7.3, 7.15; EtaleCohomologyFoundations §§0.7, 0.8, F.2.5, F.4.1–F.4.6; PELModuliPartII §§7.1–7.2 (new sections of an existing supplier). ClassicalAdicEtaleCohomology is no longer a supplier, and MetaplecticAutomorphicForms §5.8 is no longer consumed.

## Sources

Fetched through the sources service, each from a legal copy and recorded in `sources.toml`:

- BHKRY: arXiv:1702.07812v3, open repository.
- Bor98: arXiv:alg-geom/9609022v2, open repository.
- Bor99: arXiv:alg-geom/9710002v3, open repository.
- Zha12: the DOI resolved only to a paywalled page, so I fetched the author's own copy from the author page, with `--licence-class author-page`. It is certified and carries the journal pagination.

I completed the locators, years, venues and `cited_for` of these four keys. I also updated `cited_for` for Z (Layer 12 renumbering, §9.8), MZ (§12.11), Mih16 (§9.8) and Liu11a (Theorem 3.5 and Lemma 3.6, for §12.7). No `needs-references.toml` was written. Lusztig76 stays uncertified and was not requested again.

## Notes for the maintainer

- **Renumbered ids.** Old §§12.4–12.9 are now §§12.6–12.11, with new §12.4 (automorphic Green functions) and §12.5 (Borcherds products and the modularity criterion), and a new §9.8. No other roadmap or board package cites this roadmap's Layer 12 or Layer 9 ids; I checked with `roadmaps grep` and a grep of the board packages. No Lean name changed.
- **Restriction to n ≥ 3.** The arithmetic modularity (§12.7), the CM-intersection modularity headline (§12.9) and the global comparison (§§14.2–14.3) now require hermitian dimension n ≥ 3. This follows BHKRY §1.5, which Z Theorem 8.6 relies on; it is recorded under "Source corrections". The AFL headline §14.5 is unchanged in scope, because its n ≤ 3 cases now come from §9.8.
- **Remaining external input outside these findings.** The Chow-valued modularity over a general totally real F₀ (§12.7, Z Theorem 8.1) now names its true route: Liu11a Theorem 3.5 and Lemma 3.6, which deduce it from Yuan–Zhang–Zhang's orthogonal theorem. That orthogonal theorem has no owner among the roadmaps. Nothing in this roadmap consumes the totally real Chow statement. A maintainer may prefer to restrict it to F₀ = ℚ and n ≥ 3, where §12.5 proves it, or to assign the orthogonal theorem to an owner. The Ehlen–Sankaran comparison used for the correction series (Z Theorem 8.4) is likewise an external citation, unchanged from before.
- **ComplexMultiplicationAndExplicitReciprocityPartII §4.2a** normalizes the orthogonal Borcherds metric without the factor 4πe^γ. The new §12.5 Check records the resulting k·log(4πe^γ) shift, so the two roadmaps can be compared.
- **Ownership against open pull requests** was checked through the roadmap service's indexed heads, the sibling list and the board packages, as described above.
