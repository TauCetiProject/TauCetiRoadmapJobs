# FIX-PKG-ModularIwasawaMainConjecturesPartII~2

Repair of the findings of `REV-PKG-ModularIwasawaMainConjecturesPartII` on `packages/ModularIwasawaMainConjecturesPartII`. Files changed: `README.md`, `Suggested.lean` (module docstring only), `sources.toml`. `metadata.toml` and `design/plan.json` are unchanged (no new supplier gap was needed).

## REV-PKG-ModularIwasawaMainConjecturesPartII/F01 (P2) — applied

Verified. KatoEulerSystems (board head `9a2ec7c`) §4.4 says its rational clauses for CM forms are PadicFamilies §4.0.3 "including CM forms (Kato §15.15 … 15.14)", and §7.2 says "For CM forms the rational bound is PadicFamilies §4.0.3 with the elliptic-unit comparison of Kato 15.13–15.17". PadicFamilies §4.0.3 (open head `f3b762c`) says only "Include the CM case through its induced-character decomposition and the corresponding elliptic-unit argument" and plans no elliptic unit, CM pair, realization or reciprocity law (a search of its README for those objects finds nothing else). Kato proves 12.4 for CM forms in 15.15 (Kato lines 5738–5753) from 15.12.2, 15.13, 15.14 and "theorem 15.2 by Rubin", all of which are targets here. The design (`design/README.md`, `cm-h2-torsion`) and the consumer CMRankZeroConverse (open head, its supplier contract "cm-h2-torsion … independent CM module structure") both expect the target here.

Old → new: Scope sentence citing KatoEulerSystems §§4.4, 7.2 and PadicFamilies §4.0.3 for CM forms → those suppliers are cited for non-CM forms only; new target §7.8 "The CM case of Kato's Theorem 12.4" (old §7.8 is now §7.9); §§8.4, 8.5, 8.6 and the supplier contracts cite §7.8 instead of KatoEulerSystems §4.4; Layer 7 and 8 Dependencies updated.

Applied differently in two respects. (i) Placement: the target is §7.8 in Layer 7, before the lattice inequality, not after §8.2. Kato's 15.17 (the inequality, old §7.8) and §8.5 both apply Lemma 14.15 to modules that must vanish at the prime `aA`, which is exactly 15.15; a target after §8.2 would make Layer 7 cite Layer 8. The nonvanishing of the image is proved through the ray-tower reciprocity law §3.3 at characters `χ₀ ∘ N_{K/ℚ}` and the identity `L_{pf}(ψ̄, χ₀ ∘ N, k−1) = L_{{p}}(f*, χ₀, k−1)`, which is Kato's route through (15.12.2) read at ray-tower level; §8.2 now cites that identity from §7.8. (ii) The vanishing of `H²_{p∞f}(T)_q` uses the inequality `length h²_{q′} ≤ length (h¹/z)_{q′}` that §6.1 already proves (an equality with a nonnegative Euler term), twisted by §7.4, rather than a separate twisted §4.4; the statement is what the reviewer asked (torsion of `H²`, torsion-free rank one `H¹`, generation of `H¹_{p∞f}(V(ψ))_q` over the discrete valuation ring `A_q`), plus clause (3) that `Z(ψ, T)` generates `H¹(T̃)` at height zero, which §8.6 needs for the torsion of `H¹(V)/Z(f)`. Torsion-freeness of `H¹(T̃)` follows Kato 13.8 (non-abelian irreducible image, Kato lines 4337–4341), not the Hodge–Tate argument of KatoEulerSystems §4.4, so no clause of that supplier enters. Three Checks plus a negative control.

Pattern repair. The same construction ("torsion of an Iwasawa `H¹` through invariants") occurs in §1.7, whose route said that the `R`-torsion of `H¹_{p∞f}(ℤ_p(1))` embeds in `ℤ_p(1)^{Gal(K̄/K(p^∞f))}`, "which are zero". Those invariants are `ℤ_p(1) ≠ 0` (the ray tower contains `μ_{p^∞}`). The statement of §1.7 is right; the route is replaced by the correct one: the `x`-torsion is `(R/x)[J]` with `J` of height two, and `R/x` is unmixed of dimension two. A Check records that in the one-variable tower over `ℚ` the module is not torsion-free (`N(ζ_{p^{n+1}}) = ζ_{p^n}`, computed in the table), which the old route would have "proved" false.

The reviewer's item 4 (record that the CM clauses of the three suppliers depend on this roadmap) is in Scope as a timeless statement of the direction of supply. The supplier-side edits are not actionable in this package (see maintainer notes).

## REV-PKG-ModularIwasawaMainConjecturesPartII/F02 (P2) — applied

Verified at the open head `e311e48`: inside NoncommutativeAndEquivariantIwasawa §4.3 ("Criteria for `X(E/F_∞) ∈ 𝔐_H(G)`") sit the "Construction (elliptic units and the two-variable `𝔭`-adic measure)", "Coleman map and the ideal comparison" (`Col_𝔣 : U_(𝔣,D) → A_D(𝔣)`, image `J_𝔣`, the law `Col_𝔣(β(𝔞)) = (σ_𝔞 − N𝔞)ν_𝔣`, `char((U_∞/C̄_∞)^χ)·A_D = (μ_χ)`) and "Theorem (Rubin's two-variable main conjecture)", all for `E/ℚ` with CM by `O_K` and `p ≥ 5` ordinary. NoncommutativeAndEquivariantIwasawa is #29 in the merge order.

Old → new: Scope bullet and supplier subsection "From NoncommutativeAndEquivariantIwasawa" added; §§4.8, 5.1 (Coleman map), 5.2, 5.3 each say in one clause how they differ (any `K`, any class number, Rubin's `K₀`, inert and ramified primes in 4.8(ii), every prime in the classical form) and cite §4.3 in their `*Needs:*` as the case the route does not reprove; §5.2 gets a Checks list whose first Check is the computed moment at `K = ℚ(i)`, `p = 5`, `E : y² = x³ − x`, type `(1, 0)` (values in the table). Layer 4 and 5 Dependencies updated.

## REV-PKG-ModularIwasawaMainConjecturesPartII/F03 (P2) — applied differently

Verified: ColemanPowerSeries (open head `f9fecdf`) Scope line 31 excludes "general Lubin–Tate interpolation"; IntegralIwasawaTheory §7.1 is the cyclotomic theory over a finite unramified `E/ℚ_p`; NoncommutativeAndEquivariantIwasawa §4.3 extends it to `Ê` only for `E/ℚ`, `p ≥ 5`; AnticyclotomicLocalUnits §1.1 (open head, merge order #218) is the height-two (inert) interpolation. No supplier states the height-one case over `Ô` for a general CM curve.

Old → new: §5.1 is now "Coleman power series and the two-variable Coleman map at a split prime" and opens with the target: for the height-one formal group `F` over `Ô` of a CM curve at a place above `𝔭`, with `ξ_n` a generator of `F[𝔭^{n+1}]`, every norm-compatible unit system has a unique `g_u ∈ Ô[[X]]^×` with `g_u^{φ^{−n}}(ξ_n) = u_n`; the norm operator with `N g_u = g_u^φ`, equivariance, and the functional equation of `D log g_u`; three Checks (constant and Teichmüller systems, the cyclotomic case as ColemanPowerSeries Layer 2 and IntegralIwasawaTheory §7.1, the inert case as AnticyclotomicLocalUnits §1.1). The Coleman map paragraph follows and cites the series. Differently from the suggested repair: the primary locator is Coleman, *Division values in local fields* (1979), Theorem A and Theorem 11/Corollary 12, read from the GDZ scan and recorded `certified` as `Coleman79` in `sources.toml`, together with Yager Chapter 3 (lines 466–479, 504–545) which is already certified. De Shalit's book resolved to no legal source (the service found neither an open copy nor a paywalled page to record); since the target is fully supported by Coleman 1979 and Yager, it is not cited and not requested. Coleman's indexing (`ξ_n ∈ F[𝔭^{n+1}]`, tower starting at `F[𝔭]`) is adopted so that every step has degree `p`; the Teichmüller Check depends on it.

## REV-PKG-ModularIwasawaMainConjecturesPartII/F04 (P3) — applied

Verified at the open head `615f9de`: §1.1 is "Rational CM twisting"; the Serre tensor `[c] : A → c⁻¹ ⊗ A` with kernel `A[c]` and degree `N(c)`, and "CM period and de Rham pairings", are both in §1.2; there is no §1.3; §1.1 delegates the lattice dictionary to ImaginaryQuadraticClassNumber §H3.1 (on main).

Old → new: Scope, the supplier contract (now "From ComplexMultiplicationAndExplicitReciprocity and ImaginaryQuadraticClassNumber"), §§2.2, 2.3 (`*Needs:*` and the Artin-action bullet, which now names the isogeny `[a] : E → a⁻¹ ⊗ E` and the lattice map `ℂ/Λ → ℂ/a⁻¹Λ`), §3.1 and the Layer 2 and 3 Dependencies cite §1.2 and §H3.1; §1.1 and §1.3 are cited nowhere.

## REV-PKG-ModularIwasawaMainConjecturesPartII/F05 (P3) — applied

Verified: `merge-order-moved.txt` lists InertAnticyclotomicCMMainConjecture at line 219 and this roadmap at 264; CMRankZeroConverse (open head `121e457`) cites "§§CZ.4–CZ.6", `cm-contained-descent`, `cm-h2-torsion`, `cm-kato-main-conjecture`, `cm-kato-normalization-dictionary`.

Old → new: the InertAnticyclotomicCMMainConjecture sentence of "Downstream consumers" is deleted (the Scope bullet saying nothing is exchanged with it stays); the §4.8 Check that named it now states the `χ`-part equality of (ii) without a consumer; the consumers paragraph names the sections CMRankZeroConverse can cite: §§6.2, 7.6, 7.8, 8.6, 8.7. The consumer's own label drift is not repaired here.

## REV-PKG-ModularIwasawaMainConjecturesPartII/F06 (P3) — applied

§1.4 gets three Checks: two places above `p` give a rank-one Brauer kernel (`ℤ_p² → ℤ_p`), so `H²(O_{K′}[1/p], ℤ_p(1)) ≠ Pic[p^∞]`; `K = ℚ(i)`, `p = 2`, base layer: `Cl = 1`, one place above 2, both terms zero, which does not make the limit map an isomorphism; a finitely generated `ℤ_p`-module `M` with `R`-action has `R/Ann(M)` finite over `ℤ_p`, so `Ann(M)` has height at least two and `M_q = 0` at height one, unlike the merely torsion `ℤ_p[[G/D_𝔩]]` of §1.5.

## REV-PKG-ModularIwasawaMainConjecturesPartII/F07 (P3) — applied differently

Verified: PeriodsAndSpecialValues (open head `5e9d167`) PS.5.2 defines `ETNC(M, O)` as the conjunction of continuation, predicted order, rationality and integrality; PS.6.5 defines the Bloch–Kato predicate for triples of weight at most `−3`. The second does not cover `h⁰(F)(0)`, of weight `0`, so only PS.5.2 is cited for the predicate; the supplier contract records why PS.6.5 is not. §4.2 now says that the statement proved is `ETNC(h⁰(F), ℤ[Gal(F/K)])` localized at `p`, in Johnson-Leung–Kings' determinant form, equivalent to the predicate by their Theorem 2.6 (JLK lines 425–432). New supplier subsection "From PeriodsAndSpecialValues"; Layer 4 Dependencies updated.

## REV-PKG-ModularIwasawaMainConjecturesPartII/F08 (P3) — applied

Verified at the open head `7a356fe` (lines 1465–1485 of its README): the one-variable `𝔩`-adic tower over ring class fields, `C̄` the norm limit of closures of elliptic units "generated by norms of the CM values of the classical elliptic modular units in ray class fields". A Scope bullet records that Kato's ideal-indexed units at every prime and modulus are §§2.2–2.6 here, that those one-variable units are built from the same modular units, and that nothing of that roadmap is cited or restated. The reviewer's stronger sentence ("are norms of the units of §2.4") is not asserted: the two normalizations (Kato's `aθ_E(α)⁻¹` with the auxiliary factor `N(a) − σ_a`, Vatsal's `12N`-th power convention) differ by factors that no target here computes. No mathematics changes.

## Checks

- `lake env lean …/Suggested.lean` from the content checkout: exit 0, no output (the file declares nothing; only the module docstring changed, adding the CM case of Theorem 12.4 to the first headline bullet). The `#check @name` pass has nothing to act on: there is no declaration, as before.
- Dependency direction:

      depcheck: 204 roadmaps, 1763 edges, 0 problem(s)

  No `UPWARD` or `CYCLE` line and no `moved:` line (the moved order already places the roadmap after its last supplier). The new citations (NoncommutativeAndEquivariantIwasawa, PeriodsAndSpecialValues, AnticyclotomicLocalUnits, ImaginaryQuadraticClassNumber, IntegralIwasawaTheory §7.1) are all earlier in the merge order or on main.
- Citation resolver: one lead, `KatoEulerSystems §5.1`, as before; it resolves at the board package head `9a2ec7c` (board index #163).
- Sources: `Coleman79` added (certified, GDZ scan, OCR); Kato's locator gains Theorem 13.5 and 13.8 and its `cited_for` gains 7.8 and 7.9; Burungale–Tian's `cited_for` gains 7.8. No `needs-references.toml` is left: the only text that could not be read (de Shalit) is not needed.
- Ownership against open pull requests whose files the brief does not give was not checked. Against the listed heads: the Coleman power series of a height-one relative Lubin–Tate group has no owner (ColemanPowerSeries excludes it, AnticyclotomicLocalUnits §1.1 is height two, NoncommutativeAndEquivariantIwasawa §4.3 is the rational-curve case), and the CM case of Theorem 12.4 is claimed by KatoEulerSystems §4.4 only through PadicFamilies §4.0.3, which builds none of its inputs; both are therefore owned here.

## Adversarial pass on the added and changed statements

| Statement | Instances | Computed | Result |
|---|---|---|---|
| §7.8(1) `A` is a DVR | `𝔭` height zero, residue char 0 | §7.5(1): regular; `A/aA = Λ_𝔭` a field, so `dim A = 1`; for `𝔭` of height one §8.5 computes `dim A = 2` | holds |
| §7.8(1) generator | `s ∉ q`, `a ∈ ker` | `χ(a) = 0` for `χ = χ₀∘N` through `Λ`; `χ(s) = 0` for finitely many `χ₀` (Weierstrass, `s̄ ≠ 0` in `O′[[T]][1/p]`); KatoEulerSystems §4.2 gives infinitely many `χ₀` per component with `L ≠ 0` | holds |
| §7.8(1) the sign `(γ′)^±` | `γ ≠ 0`, `(v, 0) ∈ Ṽ` | `±`-projection `(v, ±ιv)/2 ≠ 0`, so both signs are nonzero for every nonzero `γ` | holds (used only through §3.3, where `γ` itself appears) |
| §7.8(1) `H²_{p∞f}(T)_q = 0` | §6.1 at `q′` regular | `length (h¹/z) = length h² + Σ length ℤ_p[[G/D_𝔩]] ≥ length h²`; after twist `≤ length (M/Aw) = 0` | holds |
| §7.8(2) torsion from minimal primes | reduced `Λ`, `Λ = O_λ[Δ][[T]]` | zero-divisors = union of minimal primes; `Ann(M) ⊄` each, prime avoidance gives a non-zero-divisor | holds |
| §7.8(3) one-dimensional | §7.5(3) at `𝔭` | `0 → A/a → H¹(T̃)_𝔭 → M₁[a] = 0`, so `H¹(T̃)_𝔭 ≅ Λ_𝔭` | holds |
| §7.8(3) torsion-freeness, `x = p` | norms on `H⁰(ℚ(ζ_{p^n}), T̃/p)` | stable from level `m`; norm = `[ℚ(ζ_{p^{n+1}}):ℚ(ζ_{p^n})] = p` = 0 on `T̃/p` | holds |
| §7.8(3) torsion-freeness, `Λ/x` `p`-torsion-free | `H⁰(ℚ, T̃ ⊗ Λ/x)` | hom from abelian-action module into `T̃`; image spans a `G_ℚ`-stable subspace: `0` or all of `V(f)`; the latter would make the image abelian, but `ψ_λ ≠ ψ_λ∘c` and `c` interchanges them | holds |
| §7.8(3) negative control | `T̃ = ℤ_p(1)` | `Σ_{j<p}(1 + jp^n) = p + p^{n+1}(p−1)/2 ≡ p mod p^{n+1}`, so `N(ζ_{p^{n+1}}) = ζ_{p^n}`; `(ζ_{p^n})_n ≠ 0` killed by `σ − χ(σ)` | abelian image needed, as stated |
| §7.8(4) PID components | `Λ_ℚ = O_λ[Δ][[T]][1/p]` | `O_λ[Δ] ⊂ ∏ O_i` with cokernel killed by `#Δ ∈ {p−1, 2}`, iso after inverting `p`; each `O_i[[T]][1/p]` is a UFD of dimension one, a PID | holds |
| §7.8 Check, `32.2.a.a`, `p = 2` | `G′_∞ = 1 + 4ℤ_2` | torsion-free, `Λ′ = ℤ_2[i][[T]]` a domain, one minimal prime | holds |
| §7.8 Check, `k = 2` | `y² = x³ − 25x` | 5 is a congruent number, rank one, `L(E, 1) = 0`; trivial `χ₀` unusable | holds |
| §7.8 Check, zero module | `H¹ = 0` | torsion-free, rank 0 ≠ 1; (2) holds vacuously | independent clauses |
| §7.9 vanishing at `aA` | `A` of dimension two, `aA` height one | `A_{aA} = O_λ[[G_{p∞f}]]_{q₀}` with `q₀` over the minimal prime under `𝔭`; §7.8(1) at `q₀` | holds |
| §1.7 route | `x` non-zero-divisor, `J = ker(R → ℤ_p)` | `R/J ≅ ℤ_p`, `dim 1`, `ht J = 2`; `R/x` CM of dim 2, `Ass(R/x)` of height 1; `J ⊄ P` for `P ∈ Ass`; so `(R/x)[J] = 0` | holds |
| §1.7 action through `J` | `g` on `ℤ_p(1) ⊗ R/x` | `χ(g)·[g]⁻¹`; invariants killed by `[g] − χ(g)`, generators of `J`; `N(a) − σ_a = χ(σ_a) − [σ_a]` | agrees with §2.6 |
| §1.7 Check, one variable | `p` odd | as the negative-control row; `J` has height one in `ℤ_p[[G_∞]]` | fails as stated |
| §1.4 Check, two places | `ℤ_p² → ℤ_p` | kernel rank 1 ≠ 0 | holds |
| §1.4 Check, `ℚ(i)`, `p = 2` | base layer | `Cl = 1`, one place `(1+i)`, kernel of `ℤ_2 → ℤ_2` is 0 | holds |
| §1.4 Check, annihilator | `M` f.g. over `ℤ_p` | `R/Ann(M) ↪ End_{ℤ_p}(M)`, finite over `ℤ_p`, `dim ≤ 1`, `ht Ann ≥ 2` | holds; `ℤ_p[[G/D_𝔩]]` has `dim 2`, not covered |
| §5.1 Teichmüller Check | `c = [α]`, `α ∉ 𝔽_p` | `N_{Φ_{n+1}/Φ_n}(c^{φ^{−n−1}}) = c^{pφ^{−n−1}} = φ(c)^{φ^{−n−1}} = c^{φ^{−n}}`; values `c^{φ^{−n}}` distinct, no constant series without the twist | pins `φ^{−n}` |
| §5.1 tower degrees | Coleman's indexing | `[Φ_{n+1} : Φ_n] = p` for all `n ≥ 0`; with `F[𝔭^n]` instead the first step has degree `p − 1` and the Teichmüller system fails there (`c^{(p−1)φ^{−1}} ≠ c`) | indexing fixed as stated |
| §5.1 `D log` law | `λ([p]X) = pλ(X)`, `λ(X ⊕ η) = λ(X)` | `λ′([p]X)[p]′(X) = pλ′(X)` and `λ′(X⊕η)·∂(X⊕η)/∂X = λ′(X)`; from `N g = g^φ`: `p·(D log g)^φ([p]X) = Σ_η (D log g)(X ⊕ η)` | agrees with Yager (10) |
| §5.1 inert Check | `K_p` quadratic | `F` of `ℤ_p`-height 2, steps of degree `p²` | excluded, owner named |
| §5.2 Check, `a_5` of `y² = x³ − x` | `x = 0,…,4` | affine points `1+1+2+2+1 = 7`, plus `∞`: 8; `a_5 = 6 − 8 = −2`; roots of `X² + 2X + 5`: `−1 ± 2i` | holds |
| §5.2 Check, Euler product | `ψ(𝔭) = −1+2i`, `ψ̄(𝔭̄) = −1+2i` | `(1 − (−1+2i)/5)² = ((6−2i)/5)² = (32 − 24i)/25`; swapped: `(32 + 24i)/25` | discriminating |
| §5.2 Check, factor shapes | §8.5 vs §4.3 at `(α,β) = (1,0)`, `(k,j) = (1,0)` | §8.5: `(1 − χ(𝔭⁻¹)/5)(1 − χ(𝔭̄))L_f(χ,0)` with `χ = ψ⁻¹`; §4.3: `(1 − ε(𝔭)/5)·L_{𝔣𝔭̄}(ε⁻¹, 0)` with `ε = ψ`, the removed `𝔭̄`-factor being `1 − ψ̄(𝔭̄)/5`; both `L(ψ⁻¹, 0) = L(ψ̄, 1)` | same arithmetic content |
| §5.2 Check, `ε(1,0,0)` | §8.5's sign | `(−1)^{0 + 1 + 0 + 1} = +1` | as stated |
| §4.8 Check, `p = 3` for `y² = x³ − x` | `−1` not a square mod 3 | 3 inert in `ℚ(i)`: case (ii) | holds |
| §4.2 predicate | `h⁰(F)(0)` weight 0 | PS.6.5 requires weight `≤ −3` | PS.5.2 only |
| Scope, non-CM citation of KES §§4.4, 7.2 | this README | neither is cited in any `*Needs:*` line after the repair (grep) | consistent |

## For the maintainer

- The CM clauses of KatoEulerSystems §§4.4 and 7.2 and of PadicFamilies §4.0.3 rest on this roadmap's Layers 2, 3 and 7 (Kato §15). This roadmap cites them for non-CM forms only; the suppliers' own text cannot be changed from this package. The intake should move the CM clause of PadicFamilies §4.0.3 and the CM references of KatoEulerSystems §§4.1, 4.4, 7.2 to a citation of ModularIwasawaMainConjecturesPartII §§7.8–7.9, or accept the present one-sided statement here.
- Section numbers: old §7.8 (Kato's lattice inequality) is now §7.9; the new §7.8 is the CM case of Theorem 12.4. No other section moved. CMRankZeroConverse cites this roadmap by design labels (`CZ.4–CZ.6`, `cm-h2-torsion`, …); the sections it needs are §§6.2, 7.6, 7.8, 8.6, 8.7.
- NoncommutativeAndEquivariantIwasawa §4.3, PeriodsAndSpecialValues PS.5.2, AnticyclotomicLocalUnits §1.1, ImaginaryQuadraticClassNumber §H3.1 and IntegralIwasawaTheory §7.1 are new citations; ColemanPowerSeries Layer 2 is now cited only in Checks, Layer 1 in §5.1's route.
- The merge order was not touched; the gate reports no move needed with the moved order it was given.
