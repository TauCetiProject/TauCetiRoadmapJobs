# FIX-PKG-GrossZagierAndArithmeticHeightsPartII~3

Repair round for the fifteen findings of `REV-PKG-GrossZagierAndArithmeticHeightsPartII~2` (R01–R15). Each finding was checked against the cached legal sources, the supplier roadmaps and the pinned libraries before any edit; all fifteen were confirmed. Files changed: `packages/GrossZagierAndArithmeticHeightsPartII/README.md`, `packages/GrossZagierAndArithmeticHeightsPartII/sources.toml`, `packages/GrossZagierAndArithmeticHeightsPartII/design/plan.json` (the `gaps` list only: the `needs` of `ramified-hermitian-densities`, and the `section` and `needs` of `nonaffine-formal-filtration-product`), and `packages/GrossZagierAndArithmeticHeightsPartII/Suggested.lean` (one docstring locator, README §14.6 → §14.5). `metadata.toml` is unchanged.

## R01 (P1) — applied

Evidence: LZ lines 768–805 define Z(M♭)° as the closed component Z_val(M♭) after splitting off a self-dual summand; KR11 Proposition 8.1 (line 1394, p. 36) gives Z(y) = Σ Z_(a−2i); N₂ has ring W⟦t⟧ (KR11 line 1282), one closed point. Changed §1.3: "Z(M) minus the lifting loci of proper overlattices" → Z(M)° is the component of Z(M) ⊂ Z(M′) ≅ N₂ corresponding to Z_val(M), independent of M′; API bullet likewise; new Check: complement empty (degree 0) vs deg Z₂ = 12 at q = 3. No other target uses a complement.

## R02 (P1) — applied

Evidence: LZ line 358, p. 9, defines χ = Σ(−1)^(i+j) length H^i(X, H_j). Changed: Conventions and §0.6 (statement, API) "alternating sum of the lengths of the Tor sheaves" → that cohomological χ, finite by proper ϖ-power-torsion support; sheaf lengths only on zero-dimensional support. New §0.6 Check: C ≅ ℙ¹, O(D)|_C ≅ O(−1): χ = 1 − 2 = −1.

## R03 (P1) — applied

Evidence: at a = −3 no integral lattice contains x, so D = 0 and Int = 0 ≠ (a+1)/2 = −1. Changed §0.9: formula split into a ≥ 1 (D = Σ(−X)^i, −D′(1) = (a+1)/2) and a < 0 (D = 0, Int = 0); new a = −3 Check. Same restriction added to the Checks of §0.8, §3.2 and §3.3.

## R04 (P2) — applied

Evidence: LL2 lines 640–650 are equal-rank; by §6.1, Den(H₂,L) = (1−q⁻²)(1−q⁻⁴) = 640/729 at q = 3 while Den(H₁,L) = 0. Changed the gap sentence (README contract and `plan.json`, identically): "vanishing when χ(M) ≠ χ(L)" → vanishing when L ⊗ F does not embed isometrically in M ⊗ F, in particular equal rank with χ(M) ≠ χ(L). New §6.1 Check with the H₁/H₂ values.

## R05 (P2) — applied

Evidence: LL2 lines 1716–1719 use a normal basis (Definition 2.11, Lemma 2.12(1), p. 12) with x_n anisotropic. Changed §5.6: θ is defined on a normal basis whose last vector spans a rank-one orthogonal block (exists since V is nonsplit), so h(x_i,x_n) = 0; new Check: x₁ = e₁, x₂ = e₁+e₂ gives pairing 1 → −1. Source-corrections bullet on LL2 Lemma 2.56 likewise.

## R06 (P1) — applied

Evidence: LL2 lines 519, 528: trace dual, t = number of nonzero invariants, so [M^∨:M] = q^(val M). Changed §6.4 Check: q^(−t(M)/2) → q^(−val(M)/2), equal to q^(−t/2) only for vertex lattices; new Check: (1,1) and (3,3), both type two, have volumes 1/3 and 1/27 at q = 3. §§2.4, 3.4, 6.5 volumes rechecked, correct.

## R07 (P3) — applied

Evidence: h(e,e) = βu² has F₀-valuation 1; u²/ϖ is a unit (PELModuliPartII §9.6); N(√ε) = −ε. Changed §6.7 route ("valuation at least two" → u-adic ≥ 2, i.e. F₀-valuation ≥ 1, with the Check's values made explicit); §6.9 Check (isometry of LL2 Corollary 2.66, unit factor, no shift; the nonunit u⁻² of §5.1 kept distinct); §9.4 Check (exact −ε factor; invariant values, not integrality, distinguish).

## R08 (P3) — applied

Evidence: exp(±H) = 1 ± H + H²/2; negating a function keeps its eigenvalue (−8/8 → 8/−8 at q = 3). Changed §2.6 Check: "even-degree" → "odd-degree", with the ℙ² values H − H²/2 against −H − H²/2. §2.7 Check: the eigenvalue-failure claim is replaced by the geometric test (Cartier sequence, +H coefficient).

## R09 (P3) — applied

Changed §5.3 Check: "n+1 labels … have no Euler characteristic" → linear invariance is asserted for at most n labels; a repeated label on proper zero-dimensional support has Euler characteristic ℓ − ℓ = 0 because O(−N(x)) is trivial there.

## R10 (P2) — applied

Evidence: LL1 lines 1724–1746, p. 38, use characteristic functions and linear extension. Changed §10.1: one functor for "the support of φ" → Z(T,1_U) for K-invariant open compact U, and Z(T,φ) = Σ_c c·Z(T,1_(φ⁻¹(c))) with coefficients in C ⊂ ℂ; new linearity API bullet; new Check Z(T, 2·1_U) = 2·Z(T,1_U) with the same support.

## R11 (P3) — applied

Evidence: x′₂ = b·x₁ + x₂, b̄ = −b gives h(x′₁,x′₂) = −b, h(x′₂,x′₁) = b, h(x′₂,x′₂) = 1 − b², which is aᵗTā. Changed §10.1 Check: "ā^t T a" → "a^t·T·ā" for x′_i = Σ_j x_j a_ji, with this witness; the definition now states that the (i,j) entry is h(x_i,x_j). No other occurrence.

## R12 (P2) — applied

Evidence: LZ lines 3779–3787 ((m,m)-equation) and Theorem 15.3.1 (T of size n). Changed §13.6: g(x) has bidegree (m−1,m−1); the scalar Int_(T,φ) is defined only for m = n (LZ (15.3.0.1), p. 88); star products need proper intersection. Containment Check → n = 3: m = 1 gives (0,0), m = 3 gives (2,2); y = x is not asserted. §13.7 says "T of size n".

## R13 (P1) — applied

Evidence: the supplier READMEs use decimal headings (PELModuliPartII and LubinTate packages; SchemeKTheoryOperationsPartII at #1741 and its package). Changed: all 80 slug citations (Scope, Conventions, three contracts, every *Needs* and Dependencies line), mapped through the suppliers' `plan.json` titles and opened, e.g. U1 *special-hom* → §1.5, FK.4 *derived-euler-pairing* → §4.3. The gap `nonaffine-formal-filtration-product` now points to §2.4 (README and `plan.json`).

## R14 (P2) — applied

Evidence: AutomorphicFormsOnReductiveGroups §4.4 (open PR #1037, earlier in the order) states `fourierUnitVanishing` with the same hypotheses. Changed: the old §14.3 is deleted; a new contract, the Scope sentence, the new §14.3 route, Check and *Needs*, and the Layer 14 Dependencies cite it; the AdelicAlgebraicGroups contract (used only there) is removed. Old → new: §§14.4–14.7 → §§14.3–14.6; no roadmap cites the old ids.

## R15 (P3) — applied differently

Evidence: LZ Lemma 6.3.1 is the curve Fourier identity and Remark 6.3.2 is SL₂-invariance (lines 1490, 1516), neither the reduction of §2.3. Changed: §2.3 cites Corollary 5.3.3 "as used in Corollaries 6.2.2 and 6.3.3"; Lemma 6.3.1 and Remark 6.3.2 go to §2.4, Corollary 6.2.2 to §2.5. §9.7: Mih16 Corollary 9.9 with its hypotheses (Definition 1.7, Theorem 1.12). §13.7: Liu11a Proposition 4.5 (p. 889), Theorem 4.17 (p. 905); GS19 Theorem 1.1.2/(1.1.19), p. 5. `sources.toml` metadata and References are completed.

## Checks

**Elaboration.** From the content checkout, `lake env lean` on the package `Suggested.lean`: exit 0, no output, 18 s wall time. The file declares nothing, and its docstring lists the eight headlines and their missing carriers. The `#check @name` comparison therefore has no input, and no scratch file was created. The only change is the locator README §14.6 → §14.5.

**Dependency check** (after the last edit), verbatim:

```text
depcheck: 236 roadmaps, 2152 edges, 0 problem(s)
```

No UPWARD, CYCLE or `moved:` line.

**Citation resolver** (`roadmaps resolve` on the edited README) lists two leads:
- "LubinTateFormalModulesAndQuasiCanonicalLifts §§6.1" and "EndoscopicTransferAndUnitaryTraceComparisonPartII §§4.4". Both are board packages earlier in the merge order with no open pull request, so the resolver does not index them. The dependency check accepts them, and every cited heading was opened in `packages/<Name>/README.md`.
- No Lean name was found missing.

**Gate failures listed in the brief:** none.

## Adversarial pass on the added or changed statements

| Statement | Instances | Values computed | Result | Change |
|---|---|---|---|---|
| §1.3 Z(y) = Σ Z_(a−2i) on N₂ | a = 0, 1, 2, 3 | Z₀; Z₁; Z₂+Z₀; Z₃+Z₁; degrees 1; q+1; q²+q+1; q³+q²+q+1 | agrees with D(−q) = 1, 1+q, 1+q+q² for a = 0, 1, 2 | definition |
| §1.3 open-complement control | a = 2, q = 3 | one closed point (unique type-one vertex lattice in anisotropic V₂); complement degree 0 vs deg Z₂ = 12 | control rejects complement | new Check |
| §1.3 splitting | t(M) = 0 / 1 | val(y) = 0 gives Z₀ of degree 1; val(y) = s ≥ 1 gives q^s(1+q⁻¹) = vol(M)⁻¹(1+q⁻¹) | matches LZ (4.2.0.2) | API |
| §0.6 / Conventions χ | C ≅ ℙ¹, O(D)\|_C = O(−1) | Tor₀ = O_C, Tor₁ = O_C(1); χ = 1 − 2 = −1 = deg O(D)\|_C; sheaf lengths infinite | cohomological χ required | statement, Check |
| §0.6 zero-dimensional reduction | reduced point, length 1 | H⁰ = k, H^(i>0) = 0: χ = 1 = Σ(−1)^j length | consistent | none |
| §0.9 rank one | a = 1, 3, −1, −3 | −D′(1) = 1, 2, 0, 0; (a+1)/2 = 1, 2, 0, −1 | a = −3 separates | split by sign of a |
| §3.2 rank-one total | a = 3; a = −3 | lattices ⟨x⟩, ⟨ϖ⁻¹x⟩: total 2 = (3+1)/2; no integral lattice: 0 | consistent with §0.9 | Check |
| R04 gap | L = (1,1) plane, q = 3 | D_L = 1 − X²; Den(H₁,L) = 0·(8/9) = 0; Den(H₂,L) = (8/9)(80/81) = 640/729 | equal-rank qualification needed | gap and Check |
| §5.6 θ | orthogonal e₁,e₂; x₁ = e₁, x₂ = e₁+e₂ | h(e₁,±e₂) = 0, 0, det θ = −1; h(x₁,x₂) = 1 vs h(x₁,−x₂) = −1 | normal basis required | statement, Checks |
| §6.4 volume | (1,1), (3,3), (1,3) | val 2, 6, 4 give q⁻¹, q⁻³, q⁻²; q^(−t/2) gives q⁻¹ for all three | val formula | Checks |
| §6.7 support | a = 3, e, y = u⁻¹e+x₀ | h(e,y) = −βu; h(y,y) = −β+β = 0; norm of αe+γy = N(α)βu² + 2βbu² ∈ u²O_F₀ | F₀-val ≥ 1 | wording |
| §6.9 scaled forms | c = u²/ϖ unit; c = u⁻² | v_F₀(c·a) − v_F₀(a) = 0; −1 (u-adic −2) | no shift for the unit | Check |
| §9.4 √ε factor | ε nonsquare; ε = −1 (q ≡ 3 mod 4) | N(√ε) = −ε, val 0; ε = −1 gives N(i) = 1, same U(V_(n−1))-orbit | integrality cannot detect; values can | Check |
| §2.6 / §2.7 signs | ℙ², line D; top degree on a d-dimensional stratum | 1−exp(−H) = H − H²/2 vs 1−exp(H) = −H − H²/2; wrong/correct top term = (−1)^d | odd-degree flip; eigenvalue preserved under negation (−8/8 → 8/−8) | Checks |
| §5.3 repeated label | zero-dim support, χ(K) = ℓ | χ(K) − χ(K ⊗ O(−N(x))) = ℓ − ℓ = 0 | exists | Check |
| §10.1 weights | φ = 1_U, 2·1_U | same support; cycles Z, 2Z; level sets of 2·1_U: {2} → U | linear extension | statement, API, Check |
| §10.1 Gram action | T = I₂, a₁₂ = b, b̄ = −b | aᵗTā = ((1,−b),(b,1−b²)); āᵗTa = ((1,b),(−b,1−b²)); direct: h(x′₁,x′₂) = −b | aᵗTā | Check |
| §13.6 degree | n = 3: m = 1, 2, 3 | bidegrees (0,0), (1,1), (2,2); top degree (2,2) only at m = 3 | m = n | statement, Checks |
| §13.6 star product | y independent of x; y = x | codim-2 or empty intersection; g(x)·δ_(D(x)) undefined | proper intersection only | Check |
| §13.7 inputs | signature (p,q) = (n,0), (n−1,1) | ord_(s=0) W_T ≥ 0, ≥ 1 (Liu11a Prop. 4.5); Theorem 4.17 for (m−1,1) | locators | route |
| §9.7 route | m = 1 | A = F[g] = F, V = A·u one-dimensional; rank-one identity (a+1)/2 from §0.9 | consistent with Check 3 | route, *Needs* |
| §14.3 with supplier | B = ∅; added primes p ≤ m+1 | constant, killed in nonzero weight (supplier Check); B stays finite | supplier hypotheses met | citation |
| Renumbered §§14.3–14.6 | every internal reference | Scope, §9.7, §§14.2–14.6, Downstream consumers, Acceptance file, Source corrections and `Suggested.lean` updated; no `§14.7` remains | no dangling id | numbering |

## Ownership and suppliers

- **Ownership against open work.** `roadmaps grep` found no roadmap on main, at an open head or among the board packages that states the decomposition of unitary special divisors on N₂ into quasi-canonical cycles. GrossZagierAndArithmeticHeights owns the lifts and their lifting lengths, which this roadmap already cites. PELModuliPartII says special cycles are not constructed there, so §1.3 stays here. The Fourier vanishing criterion has one owner, AutomorphicFormsOnReductiveGroups §4.4. Ownership was checked against the indexed open heads (index of 2026-11-10T22:44Z) and the board packages.
- **Suppliers.** AutomorphicFormsOnReductiveGroups is new (open pull request #1037, earlier in the merge order). AdelicAlgebraicGroups is no longer a supplier of this roadmap.

## Sources

KR11 (Kudla–Rapoport, arXiv:0804.0600v2) was fetched through the sources service from arXiv: open repository, certified. The service-recorded fields were kept; I set the published year 2011, the venue, and v2 page locators. No `needs-references.toml` was written: every cited text was readable. Lusztig76 stays uncertified and was not requested again.

## Notes for the maintainer

- **Names other roadmaps might cite.** Layer 14 is renumbered (old §§14.4–14.7 are now §§14.3–14.6). No other roadmap or board package cites these ids. `Suggested.lean` declares nothing, so no Lean name changed.
- **SchemeKTheoryOperationsPartII.** Its consumer paragraph (#1741 head, line 801) already lists this roadmap's uses in decimal sections, matching the new citations.
- **AutomorphicFormsOnReductiveGroups** gains a consumer through §4.4 `fourierUnitVanishing`.
