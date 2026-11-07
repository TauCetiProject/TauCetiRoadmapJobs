# FIX-PKG-IgusaVarietiesAndTorsionConcentrationPartII~2

Repair round for the findings of `REV-PKG-IgusaVarietiesAndTorsionConcentrationPartII` (nine findings, one P2, eight P3). All nine were verified against the cited sources, the supplier heads and the pins, all nine were right, and all nine are applied. Files changed: `packages/IgusaVarietiesAndTorsionConcentrationPartII/README.md` and `packages/IgusaVarietiesAndTorsionConcentrationPartII/sources.toml`. `Suggested.lean`, `metadata.toml` and `design/plan.json` are unchanged.

## REV-PKG-IgusaVarietiesAndTorsionConcentrationPartII/F01 (P2) — applied

Verified: a central `γ ∈ F_v^×` in `GL_{n/d_v}(D_v)` has reduced characteristic polynomial `(X − γ)^n`, whose only irreducible factor has degree `1`, so the printed sentence was false for `n = 2`, `d_v = 2`. The isotypic form is right: the `f_i`-isotypic part of `D_v^{n/d_v}` is a module over the central simple `K_i`-algebra `K_i ⊗ D_v` (`K_i = F_v[X]/(f_i)`) of index `d_v/gcd(d_v, e_i)`, so `m_i e_i` is a multiple of `lcm(d_v, e_i)`.

Old → new (§10.1): "characteristic polynomial whose irreducible factors have degrees divisible by `d_v`" → "reduced characteristic polynomial `∏ f_i^{m_i}` in which every isotypic degree `m_i e_i` is divisible by `d_v`", with the module argument, the central witness, and the `(G, H)`-regular step restated: `P_1` and `P_2` share no root, so `P_1` is a product of whole isotypic factors and `d_v | n₁`. The conclusion of §10.1 is unchanged; §10.2 cites the same argument by reference and needed no edit.

## REV-PKG-IgusaVarietiesAndTorsionConcentrationPartII/F02 (P3) — applied

Verified at the parent's open head (pull request index of 2026-11-06): its headings are `### 0.4`, `### 0.11`, `### 1.3`, …, `### 7.6` and `## Layer 0` … `## Layer 7`; the string `IG.` occurs zero times there.

Old → new: every `§IG.k.n` → `§k.n`, `§§IG.…` → `§§…`, "Layers IG.0–IG.1" → "Layers 0–1", "(IG.5–IG.7)" → "(Layers 5–7)". 66 prefixes removed across the Scope paragraphs, the parent's supplier contract, the `*Needs:*` lines of §§8.2, 8.3, 8.5, 8.6, 9.1, 9.3, 9.4, 10.1, 11.3, 11.4, 11.6, the four Dependencies paragraphs and the Worked examples. Pattern repair: the `cited_for` lists of `sources.toml` used the same prefix for this roadmap's own sections (`IG.8.1` … `IG.11.8`) and were normalised to `8.1` … `11.8`. The resolver now reports no citation found nowhere.

## REV-PKG-IgusaVarietiesAndTorsionConcentrationPartII/F03 (P3) — applied

Verified at the ShimuraCompactifications head: `### 1.4 Cusp labels`, `### 7.3 Integral toroidal compactifications`, `### 7.5 Properness` ("for complete `Σ`, proper over `B`; at neat level as an algebraic space"), and no `C`-prefixed heading. §7.5 gives a proper algebraic space, not a scheme; `### 7.18 Quasi-projectivity of PEL moduli at good primes` gives the scheme assertion directly.

Old → new: `§C1.4` → `§1.4`, `§C5.3` → `§7.3`, `§C5.5` → `§7.5` in the contract, §8.2 prose and `*Needs:*`, and the Layer 8 Dependencies. The §8.2 route now takes the scheme assertion from §7.18 and properness from §7.3 and §7.5 with a projective admissible fan, named as a complete collection; §7.18 was added to the contract, `*Needs:*` and Dependencies.

## REV-PKG-IgusaVarietiesAndTorsionConcentrationPartII/F04 (P3) — applied

Verified: the content checkout's `lake-manifest.json` pins mathlib `1b1ccf4b…` and TauCeti `2fd255d9…`, which differ from the README's two hashes and also from the pair the review quotes. Hashes go stale between rounds.

Old → new: the sentence with the two hashes → "Library declarations are cited at the pinned Mathlib and Tau Ceti." No hash remains in the README.

## REV-PKG-IgusaVarietiesAndTorsionConcentrationPartII/F05 (P3) — applied

Verified: CS17 line 3216 is the marker of pdf page 81 and line 3217 its running head with journal page 729; Theorem 4.4.4 is at CS17 line 3236, after that marker.

Old → new: "Theorem 4.4.4, p. 726" → "Theorem 4.4.4, p. 729" in §8.2 and §11.3, and in the CS17 `locator` of `sources.toml`.

## REV-PKG-IgusaVarietiesAndTorsionConcentrationPartII/F06 (P3) — applied

Verified: §8.5 defines `ι` and `𝔪^∨` and had no API list and no Checks list.

Old → new: §8.5 gains an API list (ring automorphism with `ι ∘ ι = id`; `𝔪^∨` maximal with residue field isomorphic through `ι` and `(𝔪^∨)^∨ = 𝔪`; `ι(T_{i,v}) = T_{n,v}⁻¹T_{n−i,v}`; roots under `λ ↦ q_v^{n−1}λ⁻¹` and the twisted dual residual representation; compatibility with `𝕋^{S′} ⊂ 𝕋^S`) and four Checks, computed below. The wrong model is `ι′(T_{i,v}) = T_{n−i,v}` (no central factor).

## REV-PKG-IgusaVarietiesAndTorsionConcentrationPartII/F07 (P3) — applied

Verified at the AutomorphicGaloisRepresentationsPartII head: `### Infinitely many decomposed generic primes` under Layer AG2.7, and its `Suggested.lean` declares `FiniteModelDecomposedGenericPrime` (line 74: `p ≠ ringChar k`, `[F:ℚ]` primes above `p`, trivial inertia image, ordered ratio `≠ p`) and `infinitelyManyDecomposedGenericPrimes` (line 90). The strong predicate implies it: complete splitting gives `q_v = p`, and the strong clause `ℓ ∉ v` gives `p ≠ ℓ`.

Old → new: the Scope paragraph gains one clause naming AG2.7 «Infinitely many decomposed generic primes» and `FiniteModelDecomposedGenericPrime` as the ACC+ form (ratio `q_v` excluded only), with §8.8(a) its strong form (ratio `1` excluded too), implication one way only. Witness `{3, 3}` at `q_v = 7`, `ℓ = 11`: `3 ≠ 21 ≡ 10` passes the ACC+ form and fails the strong one.

## REV-PKG-IgusaVarietiesAndTorsionConcentrationPartII/F08 (P3) — applied

Verified: CS17 line 4077 says only that `ε_G` and `d(G_ℝ)` are nonzero constants, and no sign is fixed in the roadmap. With `ep(π_∞) = (−1)^{q(G)}` the formula of §10.3 gives `c(π_f) = (ε_G d(G_ℝ))⁻¹ Σ_a Σ_{π_∞} m_a`.

Old → new (Layer 10 Examples): "a positive multiple of the summed automorphic multiplicity" → the explicit formula, "a nonzero constant times the summed automorphic multiplicity", sign that of `ε_G d(G_ℝ)`, not fixed here, with the CS17 line.

## REV-PKG-IgusaVarietiesAndTorsionConcentrationPartII/F09 (P3) — applied

Same verification as F02; this is the ownership sentence of the Scope section.

Old → new: "§§IG.0.4, IG.5.1, IG.5.2 and IG.5.4" → "§§0.4, 5.1, 5.2 and 5.4", "§IG.7.6" → "§7.6". Read at the parent head: §0.4 Spherical Hecke algebras, §5.1 Dual Hecke ideals (rank `2n`, `ι(T_{i,v}) = T_{2n,v}⁻¹T_{2n−i,v}`), §5.2 Hecke-equivariant Poincaré duality, §5.4 A rational constituent, §7.6 Integral coefficients and local systems: each says what the sentence attributes to it.

## Checks

- Dependency gate (`gate --depcheck … --movable`): `depcheck: 242 roadmaps, 2493 edges, 0 problem(s)`. No UPWARD, CYCLE or `moved:` line.
- Elaboration (`lake env lean` on `Suggested.lean` from the content checkout): exit 0; two warnings `declaration uses sorry` at lines 79 and 91, nothing else. `Suggested.lean` was not changed this round.
- `#check @name` for the four declarations in a scratch copy: elaborated types identical to `scratch/signatures.md`; `F`, `L`, `k` with `[Field] [NumberField]`, `[Algebra F L] [IsGalois F L]`, `[Field k] [Finite k]`, `{n : ℕ}`, `r : Gal(L/F) →* GL (Fin n) k`; `v : Ideal (𝓞 F)` and `p : ℕ` explicit. No binder lost; the README statements of §§8.7–8.8 match. Nothing changed.
- Citation resolver on the edited README: no cross-roadmap citation and no Lean name found nowhere (12 leads before the round, all the `IG.` prefix).
- Ownership against open work: this round adds no construction. The §8.5 API and Checks describe objects §8.5 already owned (the parent's §5.1 is the rank-`2n` variant, kept as a listed variant); F07 cites AutomorphicGaloisRepresentationsPartII AG2.7 as the owner of the ACC+ predicate and its existence theorem. Open pull requests without files in the brief were not searched.

No gate failure was listed for this round.

## Adversarial pass on the new and changed text

| Statement | Instances tried | Values computed | Result | Change |
|---|---|---|---|---|
| §10.1 isotypic divisibility `d_v | m_i e_i` | central `γ`, `n = 2`, `d_v = 2`; `γ` with `K_i` of degree `e_i = 2` and `d_v = 2`; `d_v = 1` | `(X−γ)²`: `m = 2`, `e = 1`, `m e = 2`; `e_i = 2`: index `2/gcd(2,2) = 1`, `m_i e_i = 2 s_i`; `d_v = 1`: no condition | true; irreducible-factor version refuted by the first instance | F01 |
| §10.1 conclusion `d_v | n₁` for `(G,H)`-regular `γ_H` | `P_1 = (X−γ)`, `P_2 = (X−γ′)`, `γ ≠ γ′`, `d_v = 2` | `P_1` would be a proper part of no isotypic factor unless `γ` is a whole isotypic factor of degree `≥ 2`; contradiction, so no transfer | holds | none |
| §8.5 API: `ι` automorphism of a commutative ring | `n = 1`, `T_{1,v} ↦ T_{1,v}⁻¹` | `ι(T_1 T_1) = T_1⁻² = ι(T_1)ι(T_1)` | holds | none |
| §8.5 Check 1 (`n = 1`) | formula (1) with `i = 1` | `T_{1,v}⁻¹ T_{0,v} = T_{1,v}⁻¹`; exponent `1·0 = 0`; wrong model gives `T_{0,v} = 1` | discriminates | F06 |
| §8.5 Check 2 (`n = 2`, `q_v = 7`, `ℓ = 11`, roots `{1,2}`) | `T_1 ≡ e_1 = 3`, `T_2 ≡ 7⁻¹e_2 = 8·2 = 16 ≡ 5` | mod `𝔪^∨`: `T_1 ≡ 5⁻¹·3 = 9·3 = 27 ≡ 5`, `T_2 ≡ 9`; `X² − 5X + 63 ≡ X² − 5X + 8`; `7 + 9 = 16 ≡ 5`, `7·9 = 63 ≡ 8` | roots `{7, 9}` as (2) predicts | F06 |
| §8.5 Check 3 (wrong model) | same data, `ι′(T_i) = T_{n−i}` | `X² − 3X + 7`; `4 + 10 = 14 ≡ 3`, `4·10 = 40 ≡ 7`; roots `{4, 10} ≠ {7, 9}` | discriminates | F06 |
| §8.5 Check 4 (self-dual roots) | roots `{3, 6}` | `3⁻¹ = 4` (`12 ≡ 1`), `6⁻¹ = 2`; `7·4 = 28 ≡ 6`, `7·2 = 14 ≡ 3`; ratios `2`, `6 ∉ {1, 7}` | self-dual and strongly generic; `𝔪^∨ = 𝔪` possible | F06 |
| §8.5 API: `(𝔪 ∩ 𝕋^{S′})^∨ = 𝔪^∨ ∩ 𝕋^{S′}` | `S′ = S`; `ι` preserves each spherical factor | both sides `ι(𝔪)` for `S′ = S`; in general `ι(𝔪 ∩ A) = ι(𝔪) ∩ ι(A) = ι(𝔪) ∩ A` for `ι(A) = A` | holds | none |
| F07 clause: strong ⇒ ACC+ predicate | `{3, 3}`, `q_v = 7`, `ℓ = 11`; `n = 0`; `p = ℓ` | `{3,3}`: ratio `1` fails strong, `3 ≠ 10` passes ACC+; `n = 0`: both reduce to complete splitting; `p = ℓ`: strong fails via `ℓ ∉ v`, ACC+ via `p ≠ ringChar k` | one-way implication as stated | F07 |
| F08 formula `c(π_f) = (ε_G d(G_ℝ))⁻¹ Σ m_a` | discrete-series `π_∞`, `ep = (−1)^{q(G)}` | `(−1)^{q(G)} · (−1)^{q(G)} = 1`; sign of the product `ε_G d(G_ℝ)` unfixed at CS17 line 4077 | "positive" unsupported | F08 |
| §8.2 route via SC §7.18 and §§7.3, 7.5 | Case 1 (division algebra); Case 2 with `G^ad` isotropic | Case 1: properness also from PELModuli §M2.11; isotropic `G^ad`: proper rational parabolic exists, boundary nonempty, moduli not proper (existing Check) | consistent | F03 |

## Sources

No new source was needed; nothing was fetched and `needs-references.toml` was not created. The CS17 `locator` in `sources.toml` was corrected (p. 729) and its `cited_for` labels normalised; no other manifest field changed.

## For the maintainer

- Citations of the parent IgusaVarietiesAndTorsionConcentration now use the plain section numbers of its open head (`§3.17`, `§4.5`, `§5.5`, …). If the parent's board design still carries `IG.` labels, the head is the authority.
- ShimuraCompactifications §7.18 (quasi-projectivity at good primes) is now cited by §8.2 in addition to §§1.4, 7.3, 7.5.
- No Lean name changed; no other roadmap's citation into this package is affected.
