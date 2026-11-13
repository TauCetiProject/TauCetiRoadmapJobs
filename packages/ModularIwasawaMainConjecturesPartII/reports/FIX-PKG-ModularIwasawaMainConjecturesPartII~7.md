# FIX-PKG-ModularIwasawaMainConjecturesPartII~7

Findings from REV-PKG-ModularIwasawaMainConjecturesPartII~6: eight findings (F01–F08). Seven are applied as asked. F01 is applied differently, because some of the supplier's statements are false or narrower than this roadmap's. While checking the F01 supplier against Kato, the adversarial pass found two sign and normalization errors in §§2.1 and 2.5 of this README. They are repaired and listed under "Other changes".

## F01 (P2) — applied differently

Verified. NonordinaryCMSpecialValues (board package, merge-order line 345; this roadmap is line 378) states, in its Layer 2, the objects of §§2.2–2.6 and 3.1–3.3 here. Its README never names this roadmap as a supplier. The dependency check reports no cycle.

The review asked to cite all of its §§2.1–2.6. Only part of that can be cited, because:

- its isogeny invariance (§2.1) has no condition on the degree, and is refuted by the §2.2 Check (the quotient by `E[a]` sends the divisor to 0);
- its Artin action (§2.2) has no condition on `a`, and is refuted by the §2.3 Check (`f = (1+i)^3`, `a = (1+i)`: `(f : a) = (1+i)^2 ≠ f`);
- its `_az_f = _aθ_E(α)` is the inverse of Kato's and Johnson-Leung–Kings' unit (JLK line 593), yet it states the formula that holds for the inverse;
  - computed witness: `K = ℚ(i)`, `f = (3)`, `a = (5)`, `χ = 1`. Kato's product formula gives `Σ log|σ(aθ_E(α))|_ℂ = +12 log 3`, while the right side is `24·ζ_K(0)·log 9 = −12 log 3`;
- its §§2.3–2.6 assume `p ≥ 5` inert with `p ∤ h_K`. The review itself kept §3.3 here for that reason, and the same reason applies to §§2.6 and 3.1;
- its §2.4 writes the dual line `H₁(E(ℂ),ℚ)^{⊗r} ⊗ L` with a scalar `per_ψ`. Kato line 5398 has the `H¹` form, with `per_ψ` valued in `V_L(ψ) ⊗ ℂ`.

Old → new: §2.2 now cites NonordinaryCMSpecialValues §2.1 for `aθ_E`, (15.4.1) and (15.4.3), and keeps only the degree-restricted isogeny law. §2.3 cites its §2.2 for CM pairs and keeps the Artin action and the reduction criterion. A Scope bullet and a new contract record each kept variant, with the `H¹`/`H₁` dictionary. §§2.4, 2.6, 3.1 and 3.3 gain one-clause differences.

The review's maintainer note on InertAnticyclotomicCMMainConjecture is under Notes.

## F02 (P2) — applied

Verified at AutomorphicLFunctionsAndLocalFactors' open head. Its Scope defers "AL.1.6.2, Hecke continuation and functional equation" (and AL.1.5.2, AL.1.5.3) to AnalyticNumberTheoryPartI §2.3a, and neither quoted title exists there. AnalyticNumberTheoryPartI is on main; its §2.3a is `heckeContinuation`, which covers unitary characters and the algebraic ones through the unitary twist, with comparison to LFunctions Layers 5–6.

Old → new: the contract "From AutomorphicLFunctionsAndLocalFactors and LFunctions" becomes "From AnalyticNumberTheoryPartI and LFunctions", with §2.3a's statement. The seven AL.1 citations (§§2.5, 2.7, 3.2, 7.1 and three Dependencies lines) now read AnalyticNumberTheoryPartI §2.3a.

## F03 (P2) — applied

Verified at AutomorphicGaloisRepresentations' open head. Its §3.15 "The CM predicate" defines CM by `π_f = AI_L^F(α)`, supplies the inducing field and character and the `λ`-adic induction, and has the 32.2.a.a Check. It is an existing supplier and earlier in the merge order.

Old → new: §7.1 ("CM newforms and Hecke characters") adds (b′), the §3.15 predicate, with `L(f,s) = L(ψ,s)` ⇔ `π_f = AI_K^ℚ(ψ|·|_K^{(k−1)/2})` and its route; it keeps (c), (a), the level and the Hecke field. §7.2 cites §3.15 for the induction and proves that the inducing character is `V_{L_λ}(ψ)` or its conjugate, then (15.11.2).

## F04 (P3) — applied

Verified: `Completed/ProfiniteProPGroups/README.md` on main has "### Layer 9: the classification of Demushkin groups" (line 2106) and "#### The completed group algebra of the orientation image" (line 2192). The phrase "two owned inputs" does not occur.

Old → new: the contract now reads `ProfiniteProPGroups Layer 9 ("The completed group algebra of the orientation image")`. §0.1 `*Needs:*` and the Layer 0 Dependencies now read "ProfiniteProPGroups Layer 9".

## F05 (P3) — applied

Verified that Kato 15.10 (lines 5572–5585, all on p. 260) assumes CM, says only "conductor divides N", and cites [Ri2] for comparing Frobenius polynomials. Rubin91 lines 193–205 (pp. 28–29) define the elliptic units.

Old → new:

- The converse sentence ("Ribet's theorem … as recorded in Kato, 15.10") is deleted. No target uses it.
- The level formula is now cited to Schütt, Theorem 1.4, p. 3 (Schutt09 lines 123–126, Hecke–Shimura). The text was fetched from arXiv through the sources service and is recorded in `sources.toml` and the References.
- Kato 15.10 is now "p. 260" in §§7.1 and 7.2.
- §4.7 now cites "§1, pp. 27–29, Rubin91 lines 193–205".

## F06 (P3) — applied

Verified the witness. `ψ_E((7)) = −7`, since `−7 ≡ 1 mod (1+i)^3`. `7 ↦ (2,2)` in `𝔽_5^× × 𝔽_5^×`, and its class has order 2 in the cyclic quotient by `⟨(3,2)⟩ = μ_4`, so `ν((7)) = −1`. Hence `ψ((7)) = −49`, and the factor is 98 at `χ = 1` and 0 at `χ = ν`.

Old → new: the §3.2 Check now writes `ψ((c)) = c²ε(c)`. The factor `c²(1 − ε(c)χ(a)⁻¹)` vanishes exactly where `χ(a) = ε(c)`, and the trivial character is among those zeros when `c ≡ 1` modulo the conductor. The witness is included. Pattern search: §3.2's route and the §3.1 Check already carry the congruence.

## F07 (P3) — applied

Old → new: the line beginning "structure over those fields…" was reflowed to "…CM elliptic curves over those / fields with a torsion point of exact level, and Kato's theta functions…". A grep for line-initial `theorem|def|instance|class|structure|abbrev|opaque|example|lemma|inductive|axiom` in `Suggested.lean` now finds nothing.

## F08 (P3) — applied

Old → new: the module docstring gains the bullet "The generation of the CM ray-tower and cyclotomic Iwasawa cohomology by elliptic units at height zero (Kato, 15.15; README §7.8)", which says that it needs the ray-tower Iwasawa cohomology, the elliptic-unit element and Kato's comparison map, none of which exists at the pins.

## Other changes (adversarial pass on statements this repair touched)

- **§2.1 signs.** The README defined `E^{(k)} = (−1)^k(k−1)!(2πi)^{−k}E(k,τ,z,0)` and `E^{(0)} = lim s⁻¹E(0,τ,z,s)`. With these, both displayed identities are false by a sign:
  - at `z → 0`, `log|cθ| ≈ (c²−1)log|z| → −∞`, while `c²E^{(0)}(z) − E^{(0)}(cz) → +∞`;
  - numerically (`ℂ/ℤ[i]`, `c = 5`), at `z = 1/3, (1+i)/3, 0.2+0.1i, 0.05+0.02i`: `log|5θ| = 0.661921, 5.929753, −6.806256, −40.273003`, while the old right side is exactly the negative;
  - for `k = 3`: `D³ log γ_q(t) = +2(2πi)^{−3}E(3,τ,z,0)` (0.5430482−0.0646251i on both sides at `z = 0.21+0.13i`).

  New: `(−1)^{k−1}` and `E^{(0)} = −lim s⁻¹E(0,τ,z,s)`, plus a Check that pins the signs with the value `log|5θ(1/3)| = 24·E^{(0)}(i,1/3) = 0.6619…`. Kato's definition line is garbled in the extraction, but its fragment "(−1)^{k−…}" fits `(−1)^{k−1}`.
- **§2.5 normalization.** For the usual absolute value, the Kronecker formula is off by 2. At `χ = 1`: `Σ log|σ(a z_f)| = −6 log 3` against `(N(a)−1)·lim s⁻¹L_f = −12 log 3`. At the quadratic `χ`: `−(0.6619 − 5.9297) = 4 log(2+√3)`, against `24·(1/3)·log(2+√3)`. New: the display keeps Kato's form, and `|x|_ℂ = x·x̄` is stated explicitly. That is the absolute value of the class number formula and of Mathlib's `NumberField.Units.regulator` (`logEmbedding_component`, `Mathlib/NumberTheory/NumberField/Units/DirichletTheorem.lean:92`, with `mult w = 2` at complex places). A Check computes both characters. §2.7 and §4.3 are consistent with this normalization; an explicit `½` would have broken their `p = 2` integrality.

## Checks run

- `lake env lean packages/ModularIwasawaMainConjecturesPartII/Suggested.lean`, run from the content checkout: exit 0, no output. The file declares nothing, so the `#check @name` scratch comparison has no declaration to check; no binder changed.
- Dependency check, exact output:

  ```text
  depcheck: 209 roadmaps, 1921 edges, 0 problem(s)
  ```

  There is no UPWARD, CYCLE or moved line.
- `roadmaps resolve` on the README gives one lead: "NonordinaryCMSpecialValues §2.1: no roadmap NonordinaryCMSpecialValues on main or in an open pull request". That is correct as a lead, not a defect: it is a board package at merge-order line 345, earlier than this roadmap. I read its §§2.1–2.2 in the board checkout. No Lean name was found nowhere.
- No gate failures were listed for this round. `design/plan.json` is unchanged; no new supplier gap is needed.

## Adversarial pass

| Statement | Instances and computed values | Result / change |
|---|---|---|
| §2.1 `E^{(0)}`, `E^{(k)}` signs | Values above. Leading terms: residue `c²−1` of `dlog cθ`; `D^{k−1}((2πi)^{−1}(c²−1)/z) = (−1)^{k−1}(k−1)!(2πi)^{−k}(c²−1)z^{−k}` | Sign fixed; Check added |
| §2.2 isogeny law | `a = (2+i)`, `φ = [1+i]` (deg 2): `E[a]` maps bijectively, divisor `5(0) − E[a]` kept. `φ = [2+i]` (deg 5) and `E → E/E[a]`: divisor ↦ 0. `a = (c)`: prime to `c²` ⇔ prime to `c` (Kato Prop. 1.3(4)). `a = O_K`: `aθ = 1`, norm 1 | Holds with the degree condition |
| §2.3 Artin action | `f = (1+i)^3`: for `a = (1+i)`, `(f:a) = (1+i)^2`, so no `η_a`; for `a = (5)`, `(f:a) = f`, `5α = α` since `4 ∈ (1+i)^4`. `a = O_K`: identity | Holds for `a` prime to `f` |
| §2.4/2.5 unit and sign | `K = ℚ(i)`, `f = (3)`, `a = (5)` (`σ_{(5)} = 1`) and `a = (7)`: `Σ log|σθ| = 6 log 3` and `12 log 3` (usual absolute value). Normalized: `−12 log 3 = 24·(−log 9/4)` and `−24 log 3 = 48·(−log 9/4)` | Inverse convention confirmed |
| §2.5 quadratic `χ` | `L_f(χ,s) = L(χ_{−3},s)L(χ_{12},s)`, limit `(1/3)log(2+√3) = 0.43899`. Left side `2·5.26786 = 10.5357 = 24·0.43899` | Holds (normalized) |
| §2.6 / §3.1 / §3.3 clauses | `p = 2`, `K = ℚ(i)`, `f = (1+i)^3` (§3.3 Check) is outside the supplier's range and inside these sections | Kept here |
| §3.2 Check | `c = 7`: `ψ = −49`, factor 98 / 0. `c = 13` (`13 ≡ 1 mod 4`, `13 ≡ 3 mod 5`): `ψ = −169`, factor 338 at `χ = 1`. `c = 41 ≡ 1 mod 40`: `ψ = 1681 = N(a)`, factor 0 at `χ = 1` | Corrected Check consistent |
| §7.1 (b) ⇔ (b′) | 32.2.a.a: `ψ((2+i)) = −1+2i`, `|α| = 1`, `α|·|^{−1/2} = −1+2i` (§3.15 Check). Inert `ℓ = 3`: `ψ((3)) = −3`, `a_3 = 0`, `ℓ^{k−1} = 3 = −ψ((3))`. `α_∞ = (z̄/|z|)^{k−1} ≠` its conjugate for `k ≥ 2`, so `AI(α)` is cuspidal. `11.2.a.a`: `|d_K| ∣ 11` forces `ℚ(√−11)`, but `a_2 = −2 ≠ 0` | Holds |
| §7.2 Frobenius direction | `a_5 = (−1+2i) + (−1−2i) = −2`, while the inverse convention gives `(−1∓2i)/5`, summing to `−2/5` | Kato's normalization confirmed |
| Level formula | `4·8 = 32`, `3·9 = 27`; Schütt Thm 1.4: newform of level `Δ_K·N(m)` iff `m` is the conductor | Locator now states it |

## Notes for the maintainer

- **NonordinaryCMSpecialValues** must reach main (or an open roadmap pull request) before this roadmap merges, since this roadmap now cites its §§2.1–2.2. The defects found there are for its owner:
  - §2.1's isogeny invariance has no degree condition;
  - §2.2's Artin action has no condition on `a`;
  - §2.2's `_az_f = _aθ_E(α)` has a sign error against (15.5.1), witness above; its §2.3 `z_{p∞f}`, built from that unit, is the inverse of Kato's;
  - §2.4's `H₁` line and scalar `per_ψ` disagree with its own Conventions (`γ = per_φ(ω)/Ω`) and with Kato line 5398;
  - §2.5 claims good reduction at every place of `K(g)`, which fails without an injectivity condition (§2.3 reduction criterion here).
- **InertAnticyclotomicCMMainConjecture** (line 348, earlier than this roadmap) names NonordinaryCMSpecialValues as the supplier of `gap:elliptic-unit-euler-system` and `gap:inert-two-variable-main-conjecture`, which this roadmap states in §§4.1 and 4.8(ii). This roadmap cannot supply them upstream; it is a placement question for the maintainer.
- **Source issues found this round:**
  - Johnson-Leung–Kings, Proposition 3.3(4), p. 14: with their stated `|z| = (z z̄)^{1/2}` the formula is off by a factor 2; it holds with `|z| = z z̄`.
  - Kato (3.8.1)–(3.8.2): only the normalization `(−1)^{k−1}`, which is `−1` at `k = 0`, makes the identities true. The printed sign could not be read in the extraction.
- **Changed section titles** (numbers unchanged): §2.2 "The isogeny law for Kato's CM theta function", §2.3 "The Galois action on canonical CM pairs and their reduction", §7.1 "CM newforms and Hecke characters", §7.2 "Kato's realization as the inducing character, and its Galois normalization". No Lean name exists or changed.
- **Ownership against open pull requests** was checked through the roadmap service for the objects of F01–F03: AutomorphicGaloisRepresentations and AutomorphicLFunctionsAndLocalFactors at their open heads, AnalyticNumberTheoryPartI on main, and NonordinaryCMSpecialValues in the board.
- **Untrusted text:** no suspicious instruction was found in the review or in the roadmaps and sources read.
