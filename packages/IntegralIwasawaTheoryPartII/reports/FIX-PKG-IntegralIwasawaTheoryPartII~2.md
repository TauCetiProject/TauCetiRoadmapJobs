# FIX-PKG-IntegralIwasawaTheoryPartII~2 — repair report

Review resolved: `REV-PKG-IntegralIwasawaTheoryPartII` (six findings). Files changed: `packages/IntegralIwasawaTheoryPartII/README.md`, `Suggested.lean` (one section number in the docstring), `sources.toml` (three entries), `design/plan.json` (the `gaps` entry `hida-family-representations-all-degrees` only).

## F01 (P2) — applied

Verified: the head of OrdinaryAutomorphicFormsAndModularityLifting has no §3.14 (its Layer 3 is §§3.36–3.39; §6.3 is the Hida family over `ℚ`); its §2.12(b) states a Hilbert Hida family over an arbitrary totally real field with ordinary local Galois shape (odd `p`, Newton–Thorne determinant); DKV18 lines 981–985 state Theorem 4.1 over `L_H` with the Λ-adic topology. Changed: gap anchor `§3.14 → §2.12` (plan.json and README contract); contract line now describes §2.12(a) and §2.12(b) as they are; the gap's `needs` asks for `ρ_H : G_F → GL_2(L_H)` with the Λ-adic topology, the explicit ordinary shape and `η_{𝔮,H} : G_𝔮 → Λ_H^×`; the realization step of §4.1 (complex conjugation) is dropped from the route and kept as a Check; §4.1 `*Needs:*`, Layer 4 Dependencies and Scope line updated. ClassicalSerreModularity `I.1/nearly-ordinary-hecke-algebras` was not chosen: it is quaternionic, even-degree, odd `p`, with an actual representation only at residually irreducible ideals; the Eisenstein ideals here are residually reducible.

## F02 (P1) — applied differently

Verified: OrdinaryAutomorphicFormsAndModularityLifting §2.12(a) states the series, constant terms, Chai's form and Wiles' vanishing and says the decomposition "is not stated here"; ClassicalSerreModularity does not state it; `roadmaps grep` for the complement (cusp form plus Eisenstein combination, direct sum with cusp forms) finds no owner on main or at any open head. DDP11 lines 1157–1162 (p. 465) state the decomposition for `M_k(𝔫S, χω^{1−k})` with pairs of moduli `𝔪_η𝔪_ψ = 𝔫S` (product equal to the level, not dividing it) and attribute it to Wiles 1986 Proposition 1.5, not to Shimura 1978 Proposition 3.4 (which gives the series). Rather than a gap on a supplier that has declined the statement, the decomposition is a target here: new §2.2a (parallel weight `k ≥ 2`, level `𝔟`, nebentypus `ψ`, the index set `J(𝔟, ψ)` with the nonexistent `F = ℚ`, `k = 2` pairs omitted, direct sum, `T_λ`-eigenvalue `η(λ) + ψ′(λ)Nλ^{k−1}`), with API, four Checks and `*Needs:*`; §2.6 cites 2.2a and uses `J(𝔫S, χω^{1−k})`; the contract line 108/112 now cites §2.12(a) for the series only; Scope lists the ownership. Wiles 1986 recorded as `W86` (uncertified).

## F03 (P2) — applied

Verified at the pin: `groupHomology` (`Mathlib/RepresentationTheory/Homological/GroupHomology/Basic.lean`, line 226), `groupHomologyIsoTor` (246), `groupHomologyIso` (254, any projective resolution of the trivial representation), `groupHomology.indIso` (`Shapiro.lean`, line 65); no cap product, no Lyndon–Hochschild–Serre for homology, no Koszul complex (`RegularSequence.lean` line 22 lists it as a TODO), `Tor` not balanced (`Monoidal/Tor.lean` line 21). CD14 lines 1397–1399 ((81)), 1426–1427 (Theorem 5.1), 1469–1472 (proof). Changed: new §0.7 "Cap products and Spiess's homological vanishing" stating (i) the cap product `H^q(U, M^∨) × H_q(U, M) → ℂ_p` by evaluation on homogeneous chains with its balancing and descent, (ii) for `U = E_+ × T`, `T` free abelian of rank `r`, `M` free over `ℂ_p[T]`: the Koszul complex computes `H_•(T, M)`, `H_q(T, M) = 0` for `q > 0`, `H_0 = M/IM`, and the edge map `H_n(U, M) → H_n(E_+, M/IM)` is an isomorphism, by a double-complex route without a spectral sequence; four API bullets, four Checks (including the reviewer's `r = 1` instance). Old §0.7 → §0.8 (cites 0.7, "up to the sign of the symmetrized unit chain", `*Needs:*` now Mathlib `groupHomology` as carrier only), old §0.8 → §0.9; cross-references in §§0.9, 2.4, 5.7 and the Lean docstring updated; Layer 0 Dependencies list the new Mathlib inputs. Brown recorded as `Br82` (uncertified). Ownership by object: ArithmeticGaloisDuality R02.2 is Hochschild–Serre for profinite groups in cohomology; ArithmeticLocallySymmetricSpaces Stage 6 has singular cap products on locally symmetric spaces; neither states the discrete-group homology statements.

## F04 (P3) — applied

Verified: CD14 lines 306–308 (`m`-tuples, each form nonvanishing on `ℚ^n ∖ {0}`), lines 319–321 (action `AQ(x) = Q(xA)`), line 197–198 ((7), the `n`-tuple). Changed: "the space `𝒬` of `n`-tuples of real linear forms" → "the set `𝒬` of finite tuples `Q = (Q_1, …, Q_m)` of real linear forms on `ℝ^n`, each nonvanishing on `ℚ^n ∖ {0}`, by `(AQ)(x) = Q(xA)`"; Check added with the instance `n = 2`, `Q = (X_1 + √2 X_2)` and the `n`-tuple (7) named as the specialization.

## F05 (P3) — applied

Verified: CD14 line 351 restates Sczech's Theorem 4 restricted to `u = 0` without proof. Changed: the sources service resolved Sczech 1993 only to a paywalled Springer page and recorded it as `Sc93`, status `uncertified`, DOI 10.1007/bf01244319, locator Theorem 4 (title tidied from the service's OCR form); §0.6 cites "Sczech, Theorem 4, restricted to `u = 0`; restated as Charollois–Dasgupta Theorem 1.1"; References list it.

## F06 (P3) — applied

Changed: §2.4 gains three Checks (interchange inverts `W` and negates `s − t`; `s = t` gives `w = L^*_an(χ)/L^*_an(χ⁻¹)`, with `ν_1(W/π^{s−t}) = (−1)^{s−t}L^*_an(χ)/L^*_an(χ⁻¹)` the constant `c` of 3.3, and the instance `ℚ(i)`, `p = 5`: `W = 1`, `w = 1`, Case 2; `w = −1` is Case 2 with `π^s = 0` in `W_2`). §4.1 gains three Checks (residues `1 + χ(𝔩)`, `1` and the generators of `𝔪`, height one, residue field `E`, with the dyadic instance `ℚ(√−7)`, `p = 2`, `r = 1` where `1 ≡ χ` only modulo `ϖ_E`; `ρ_H(c)` has `det −1`, trace `0`, eigenvalues `±1`, and `det = χ` versus `χε` is separated at `Frob_𝔩`; a nodal `Λ_H` whose completion has total quotient ring `E((T)) × E((T))`, so the fields of `K` are not in bijection with the eigenfamilies).

## Checks run

- `lake env lean` on `packages/IntegralIwasawaTheoryPartII/Suggested.lean` from the content checkout: exit 0, no output (the file declares nothing; only the docstring changed, §0.7 → §0.8). The `#check @name` comparison applies to no declaration.
- Dependency gate with `--movable`: `depcheck: 242 roadmaps, 2481 edges, 0 problem(s)`; no UPWARD, CYCLE or `moved:` line.
- `roadmaps resolve` on the README: no cross-roadmap citation and no Lean name found nowhere.
- Ownership against open pull requests checked with `roadmaps grep` over all open heads and main (Eisenstein complement; cap product, Hochschild–Serre, Koszul resolution).

No gate failures were listed in the brief.

## Sources

`sources.toml` gained `Sc93`, `W86` and `Br82`, all `uncertified` (paywalled; cited by locator without the text; the service resolved Sczech itself and reported "no legal source" for the other two, whose DOIs are 10.2307/1971332 and 10.1007/978-1-4684-9327-6). `cited_for` lists updated for the renumbering (DKV18: 0.8, 0.9; CD14: 0.6, 0.7, 0.8; DDP11: 2.2a). The `needs-references.toml` the service created for `Br82` and `W86` was removed, since both are now recorded as uncertified and are settled under the brief's rule; no text was guessed: DDP11 (certified) states the decomposition at the locator cited, and CD14 proves the homological statements.

## Adversarial pass on new and changed statements

| Statement | Instances tried | Values computed | Result | Change |
| --- | --- | --- | --- | --- |
| §0.6 `𝒬` | `n = 2`, `Q = (X_1 + √2X_2)`; `Q = (X_1)` | `X_1 + √2X_2 = 0` has no rational solution `≠ 0`, admissible; `X_1` vanishes at `(0,1)`, excluded | holds | Check added |
| §0.7 cap product balancing | `[ug] ⊗ m` vs `[g] ⊗ u⁻¹m` | `κ(ug)(m) = (uκ(g))(m) = κ(g)(u⁻¹m)`; with `(uλ)(m) = λ(um)` one gets `κ(g)(um)`, equal only if `κ(g)` is `u²`-invariant | holds with contragredient action | Check records it |
| §0.7 Koszul vanishing | `r = 1`, `M = ℂ_p[π^{±1}]`; `M = ℂ_p` | `1 − π` injective on Laurent polynomials, `H_1 = 0`, `H_0 = ℂ_p`; on `ℂ_p`, `1 − π = 0`, `H_1 = ℂ_p` | freeness needed | Check records it |
| §0.7 regular sequence | `r = 2` | `ℂ_p[π_1^{±1}, π_2^{±1}]/(1 − π_1) = ℂ_p[π_2^{±1}]`, a domain, `1 − π_2 ≠ 0` | holds | none |
| §0.7 edge map | `E_+ = 1`, `r = 1`, `M = ℂ_p`; `M = ℂ_p[T]` | `ℂ_p → 0` not injective; `0 → 0`, `ℂ_p → ℂ_p` | holds with freeness | Check records it |
| §0.7 edge map, Shapiro | `E_+ = ℤ`, `r = 1`, `M = ℂ_p[T]` trivial `ε`-action | `H_1(U, M) = H_1(E_+, ℂ_p) = ℂ_p`; `H_1(E_+, M/IM) = ℂ_p`; wrong target `H_1(E_+, M) = ℂ_p[T]` | holds | Check records it |
| §0.7 `r = 0` | `T = 1` | `I = 0`, `M/IM = M`, map is identity | holds | API bullet |
| §0.8 sign | CD14 (81) | pairing is `±⟨[κ_𝔞], [L_k]⟩`, sign `ρ` of (57); vanishing of `[L_k]` is sign-independent | holds | "up to the sign" added |
| §2.2a count | `F = ℚ`, `𝔟 = 11`, `k = 2`, `ψ = 1` | pairs `(1, 1_{11})` only; `dim M_2(Γ_0(11)) = 2 = 1 + 1`; with the omitted pair `1 + 2 = 3 ≠ 2` | holds | Check |
| §2.2a count | `𝔟 = p²`, `k ≥ 4` even, `ψ = 1`; `p = 2` | `1 + 1 + (p − 1) = p + 1 = ∑_{d \| p²} φ(gcd(d, p²/d)) = 1 + (p − 1) + 1`; `p = 2`: `3` cusps of `Γ_0(4)`, pairs `(1,1_4)`, `(1_4,1)`, `(1_2,1_2)` | holds | Check |
| §2.2a eigenvalue order | `𝔟 = 4`, `ψ = χ_4`, `k = 3`, `λ = 3` | `1 + (−1)·9 = −8`; `(−1) + 9 = 8`; `dim M_3(Γ_0(4), χ_4) = 2`, `S_3 = 0` | holds | Check |
| §2.2a Hecke separation | `Γ_0(11)`, `T_2` | Eisenstein `1 + 2 = 3`, cusp form `a_2 = −2`; `T_2 − 3` kills one, scales the other by `−5` | holds | Check |
| §2.2a exclusion | `F = ℚ`, `k = 2`, `𝔟 = 1`, `ψ = 1` | `J = ∅` after omission, `M_2(SL_2(ℤ)) = 0 = S_2`, statement true | holds | none |
| §2.2a in DKV setting | `𝔟 = 𝔫S`, `ψ = χω^{1−k}`, `F = ℚ` | `χω^{1−k}` nontrivial (`𝔫` prime to `p`, `χ ≠ ω^{k−1}`), no pair omitted | holds | none |
| §2.4 inversion | `χ ↔ χ⁻¹` | `W ↦ (ℒ_{χ⁻¹}/ℒ_χ)L(χ,0)/L(χ⁻¹,0) = W⁻¹`, valuation `t − s` | holds | Check |
| §2.4 `s = t` | leading terms of 2.1 | `(−1)^{s−t}D_χL^*_an(χ)L(χ⁻¹,0)/(D_{χ⁻¹}L^*_an(χ⁻¹)L(χ,0))`, `D_χ = L(χ,0)` as `R′ = ∅`: `w = L^*_an(χ)/L^*_an(χ⁻¹)`; `ℚ(i)`, `p = 5`: `χ = χ⁻¹`, `W = 1`, `w = 1` | holds, matches 3.3's `c` | Check |
| §2.4 `w = −1` | `r = s = t = 1` | `W` unit, `s = t`: Case 2; `W_2`: `wπ = (w+1)y` gives `π = 0`, ring `E[y]/(y²)` | holds | Check |
| §4.1 `𝔪` | `T_𝔩`, `U_𝔩`, `T` | `1 + χε(𝔩) ↦ 1 + χ(𝔩)`; `𝔪 ∩ Λ = (T)`, height `1`, residue field `E` | holds | Check |
| §4.1 dyadic residue | `ℚ(√−7)`, `p = 2` | `−7 ≡ 1 (8)`: `2` splits, `χ(2) = 1`, `r = 1`; `−1 ≡ 1 (ϖ_E)`, so `1 = χ` modulo `(𝔪, ϖ_E)` but not in `E` | holds | Check |
| §4.1 `ρ_H(c)` | `c` | `ε_cyc(c) = −1`, `⟨−1⟩ = 1`, `ε(c) = 1`, `det = −1`, `c² = 1`: eigenvalues `±1`, trace `0`; `det = χ` gives the same at `c`; at `Frob_𝔩`: `χ(𝔩)(1 + log_p⟨N𝔩⟩π) ≠ χ(𝔩)` mod `π²` since `⟨N𝔩⟩ ≠ 1` | holds | Check |
| §4.1 splitting of `K` | `Λ_H = 𝒪_E[[T]][y]/(y² − T²(T+p))`, `√p ∈ E` | `√(T+p) = √p(1 + T/p)^{1/2}` has `T`-coefficient `1/(2√p) ∉ 𝒪_E`: not a square in the UFD `𝒪_E[[T]]`, so `Λ_H` is a domain; in `E[[T]]` it is a square `s`, `y² − T²s² = (y − Ts)(y + Ts)`, two minimal primes, `K = E((T))²`; `(T, y)` is the unique prime above `(T)` with residue field `E` | holds | Check (interface only) |
| Gap `needs` | DKV18 lines 981–998 | `GL_2(L_H)`, Λ-adic topology `(ϖ_E, T)`, `η_{𝔭,H} : G_𝔭 → Λ_H^×`, `η(rec ϖ⁻¹) = c(𝔭, H)` | matches | plan.json and README |

## For the maintainer

- The gap `hida-family-representations-all-degrees` is now anchored at OrdinaryAutomorphicFormsAndModularityLifting §2.12 (clause (b)); the intake can post it there. No new gap was declared: the Eisenstein complement is owned here (§2.2a).
- Sections renumbered: old §0.7 (lower bound) is §0.8, old §0.8 (order conjecture) is §0.9; new §0.7 holds the homological tools. No roadmap on main or at an open head cites IntegralIwasawaTheoryPartII sections, so no external citation changes.
- This roadmap now owns three generic statements (the discrete-group cap product, the Koszul computation of the homology of a free abelian group of finite rank, and the edge isomorphism for a product with such a group on free coefficients) and the classical Hilbert Eisenstein complement; a later Hilbert-modular-forms or group-homology roadmap may take them over by citing §0.7 and §2.2a.
- `Suggested.lean` still declares nothing (no headline is statable at the pins); nothing changed there but a section number.
