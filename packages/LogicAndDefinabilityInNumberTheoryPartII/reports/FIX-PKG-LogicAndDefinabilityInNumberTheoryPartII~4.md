# FIX-PKG-LogicAndDefinabilityInNumberTheoryPartII~4

Findings of REV-PKG-LogicAndDefinabilityInNumberTheoryPartII~3 (two findings: one P1, one P2). Both were verified against the sources and repaired. Only `packages/LogicAndDefinabilityInNumberTheoryPartII/README.md` and `sources.toml` changed. `Suggested.lean`, `metadata.toml` and `design/plan.json` are unchanged.

## REV-PKG-LogicAndDefinabilityInNumberTheoryPartII~3/F01 (P1) — applied

**Verification.** The finding is correct on every point.

- The README's §0.12(b) took the sums `z(Q₁) + z(Q₂)` in `K_u` but tested isotropy "over `K`". It never defined `K_u`.
- Poonen's printed Lemma 4.8 is also wrong as stated. It requires the sums to lie in `K` (poonen_uniform line 437–441). On anti-invariant points, `z` takes values in `y_u K` (odd characteristic, short model), so those sums reduce to `{0}`, and the `K`-valued test then accepts `s² ∉ L` over `𝔽₅`.
- Poonen's own proof (line 459–462) uses `u₂ = z(ρ̄₁) + z(ρ̄₂) ∉ K`, and it ends with "no zero over `K_u`, so none over `K`" (line 468–469), which makes no sense for coefficients outside `K`.
- The slot `x(η̄)` has a double pole at `P`: `η` is étale and `ord_O x = −2`. Its inverse is therefore not a regular parameter (line 460–462). For `n_K = 2` this kills the valuation argument, because `⟨1, π²e⟩₂ ≅ ⟨1, e⟩₂`.
- All of the reviewer's witness values were recomputed: `#E(𝔽₅) = 9`, trace `−3`; `2` is a nonsquare mod 5; `(2s, 1)` is a zero of `⟨1, s²⟩` since `5s² = 0`; `z(P₀) = 1/2 = 3`, `b = 1`, `∂_s(s² − b) = 2`.

**Change (old → new).** Old: `U₁ = x(E_u(K)) ∖ {0}`, sums in `K_u`, isotropy "over `K`", `K_u` undefined. New: (a) defines `L_u`, `K_u`, `σ`, `ξ` and `E(K_u)^{σ=−1} = E(L_u)^{σ=−1}`; (b) uses nonzero `z`-values of anti-invariant points, `U₂ = U₁ + U₁`, isotropy over `K_u`; the proof uses `z∘η`, `z∘ρ₁ + z∘ρ₂`, no descent; (c) explicit parameters and guard; five Checks.

**Pattern repair.** The same construction appears nowhere else in the README (grep for `U₁`, `U₂`, `K_u`, `L_u`, `E_u`, "simple pole", "local parameters"). Its consumers 0.13, 0.14(b) and 0.15 use only the family of 0.12(d), whose statement is unchanged.

**Extra repair to (d), found in the adversarial pass.** Poonen's route keeps "fibres that are fields of Kronecker dimension one" (line 485–487). Nothing excludes a fibre at parameters outside the construction that is a global subfield but not relatively closed. Such a fibre breaks 0.13: in `𝔽₄(s, t)` the subfield `𝔽₂(s)` would make the constant-field intersection `𝔽₂`. (d) now also keeps only fibres properly contained in no other kept fibre, and the README proves that the maximal kept fibres are exactly `𝓛(K)`. A Check was added. The statement of (d) is unchanged.

`Suggested.lean` is unaffected: the headlines `exists_formula_isAlgebraic_primeField` and `exists_formula_not_algebraicIndependent` are Poonen's Theorems 1.3–1.4, which remain true. Only the internal lemma was corrected.

## REV-PKG-LogicAndDefinabilityInNumberTheoryPartII~3/F02 (P2) — applied

**Verification.** The finding is correct.

- Kerz–Saito's standing hypothesis is that the base is a field or an excellent Dedekind scheme (kerz_saito line 288, §1, p. 6). Theorem 8.1 (line 1852–1862, p. 37) works inside that category.
- Dittmann–Pop note that their `X` is excellent (dittmann_pop line 190–193).
- AdicCoefficientsAndComparisonsPartII §6.8 and §6.10 (read at its open head) require an excellent base.
- The reviewer's non-excellent henselian DVR was checked. The henselization of `𝔽₃(t, b³) ∩ 𝔽₃[[t]]` is separable algebraic over `F`, so it misses `b`, while the completion `𝔽₃((t))` contains `b`. The generic formal fibre is not geometrically reduced, so the ring is not excellent.

**Change (old → new).** §1.3: "henselian discrete valuation ring with finite residue field" → "excellent henselian …", with Kerz–Saito §1, p. 6 and Theorem 8.1, p. 37, Dittmann–Pop's excellence remark, `𝔽₃[[t]]` as example and the non-excellent negative Check. The same qualifier was added in Scope (lines 11, 23), the Layer 1 introduction, the `d = 1` Check, §3.1 (base and normalized base) and the kerz_saito locator.

## Checks run

- **Elaboration.** `lake env lean packages/LogicAndDefinabilityInNumberTheoryPartII/Suggested.lean` from the content checkout: exit 0, eight `declaration uses sorry` warnings (lines 54, 62, 73, 81, 93, 113, 128, 139), nothing else. No `TauCeti.*` import, so no module build was needed. The file was not edited.
- **Signatures.** A scratch file with `#check @name` for all ten declarations (`kroneckerDimension`, `IsGeometricPrimeDivisor` and the eight theorems) elaborated once. Every elaborated type matches its README statement. No section binder is lost: each carries `[Field.FG K]` and `[Ring.CompatibleRing K]` where stated. The last theorem puts its hypothesis on `K` only. Nothing changed.
- **Dependency direction.** The exact gate command gave:

  ```text
  depcheck: 236 roadmaps, 2154 edges, 0 problem(s)
  ```

  There is no UPWARD, CYCLE or moved line.
- **Citation resolver.** It lists only LocalFieldsRamificationPartII §5.3 and LogicAndDefinabilityInNumberTheory §0.1. Both are board packages present in the board checkout (`packages/LocalFieldsRamificationPartII/README.md` and `packages/LogicAndDefinabilityInNumberTheory/README.md`), not missing suppliers. No Lean name is unresolved.
- **New citation checked at main.** EllipticCurves Layer 0 (the place at infinity, `ord_∞ x = −2`, `ord_∞ y = −3`) and Layer 1 (a separable isogeny is unramified, `e = 1`) in `TauCetiRoadmap/EllipticCurves/README.md`. Layer 0 was added to Scope, to the supplier contract and to the Layer 0 Dependencies. AdicCoefficientsAndComparisonsPartII §§6.8 and 6.10 were read at the open head through the roadmap service.
- **Gaps.** None new; `design/plan.json` is unchanged.

## Adversarial pass on new or changed statements

| Statement | Instances tried | Values computed | Result / change |
|---|---|---|---|
| 0.12(a) `K_u` field, `σξ = −ξ` | `L = 𝔽₅(u)`, `E: y² = x³ + x + 1`; char 2 with `a₁ ≠ 0` or `a₃ ≠ 0` | `y_u² = u³ + u + 1` has pole order 3 (odd), so ramified and a field. In char 2, after `y = (a₁u + a₃)w` the Artin–Schreier constant has valuation −1 or −3 (odd), so ramified. `σ(u, y) = (u, −y − a₁u − a₃) = −(u, y)` | Pass; `K_u` and `σ` now defined |
| 0.12(b) forward direction | `t = u ∈ L`; a slot with `t − b = 0` | Two slots ≥ `r + ε = 1 + 1`, `m = 2`; for `n = 3`, 18 variables > `3² = 9`; a zero slot gives an obvious zero | Isotropic over `L_u` ⊆ `K_u`; pass |
| 0.12(b) reverse, slot from `z` | `η` étale, `η(P) = O` | `ord_P(z∘η) = −1`, `ord_P(x∘η) = −2` | `z` required; Check added |
| 0.12(b) reverse, parameters | `(τ, P)`, `τ = b(P)` in the residue field of `P` | `∂(t − b)/∂t = 1`; `a⁻¹` has order 1 at each conjugate of `P` | Maximal ideal is `(t − b, a⁻¹)`; pass |
| 0.12(b) residue anisotropy | `q` odd, `n = 2`; `q = 4`, `n = 3`, `ℓ = 5` | `c^{(q^ℓ−1)/n} = ζ^ℓ`, `ℓ ≢ 0 mod n`, so `≠ 1` | `c` stays a non-`n`-th power; pass |
| 0.12(b) witness, reject `s²` | `P₀ = (2, 1)`, `s = 1`, `η = F − 1` | `z(P₀) = 3`, `b = 1`, `s² − b = 0`, `∂_s = 2`; `x² − 2y²` has no zero over `𝔽₅` | Anisotropic over `K_u`; Check |
| 0.12(b) `K`-valued version | same, `t = s²` | `U₂ ∩ K = {0}`; `(2s)² + s² = 5s² = 0` | Accepts `s²`; negative-control Check |
| 0.12(b) `U₁` nonempty | `ξ = (u, y_u)` | `x(ξ) = u ≠ 0`, `z(ξ) = y_u/u ≠ 0` | Test not vacuous |
| 0.12(c) guard | quadratic with a root in `K` | the algebra is `K × K`, not a field | Fibre empty; irrelevant to (d) after the filters |
| 0.12(d) maximality | `𝔽₄(s, t)`, fibre `𝔽₂(s)`; finite `K = 𝔽₉` | Constant field of `𝔽₂(s)` is `𝔽₂ ≠ 𝔽₄`, but `𝔽₂(s) ⊊ 𝔽₄(s)`, a member; no subfield of `𝔽₉` has `δ = 1` | Filter needed and sufficient; the finite case is empty |
| 0.12(d) occurrence | `L ∈ 𝓛(K)`, `ζ₃ ∉ K` | `K` and `L(ζ₃)` are linearly disjoint over `L`, so `L(ζ₃) ∩ K = L`; `K(ζ₃)/L(ζ₃)` is regular | Every member occurs; pass |
| 1.3 base | `𝔽₃[[t]]`; henselized global DVR at `p ≠ 2`; the reviewer's `R` | excellent: true, true, false | Third excluded; Check added |
| 1.3 `d = 1` | `X = Spec R′`, `R′` finite over `R` | `X^{(1)}` = closed point, `K_w = K`, restriction = id | Trivial; pass |
| 3.1 normalized base | `S′` normalization of excellent `R` in odd-degree `η′` | finite over `R` (excellent implies Japanese); henselian, so local, so a DVR; finite over excellent, so excellent | 1.3 applies; pass |

## Ownership, sources, overlaps

- No new construction or owned object was introduced. The corrected test and the maximality filter are internal to §0.12, which this roadmap owns (Poonen's elliptic constructions, Scope line 10). AdicCoefficientsAndComparisonsPartII was checked at its open head; the other open pull requests were not searched again, because no new owned object arose.
- The overlaps report lists no conflicting heads and no dropped ids. No id of this roadmap changed.
- No new source was needed and `needs-references.toml` was not written. The `sources.toml` change only extends the kerz_saito locator.
- The review text contains no instructions addressed to the worker; nothing suspicious to quote.

## Source issues

- poonen_uniform, Lemma 4.8, p. 9 (line 437–441): the sums are required to lie in `K` and isotropy is tested over `K`. The correct statement takes them in `K_u` and tests over `K_u`.
- poonen_uniform, proof of Lemma 4.8, p. 10 (line 459–462): `x(η̄)` has a double pole at `P`; `z(η̄)` is needed.
- poonen_uniform, proof of Proposition 4.10, p. 10 (line 485–487): keeping Kronecker-dimension-one fibres does not exclude global subfields that are not relatively closed; a maximality filter is needed.

## For the maintainer

- No Lean name changed. Cross-roadmap ids are unchanged, apart from the added EllipticCurves Layer 0 citation (main) for `ord_O x = −2` and `ord_O y = −3`.
- §1.3's hypothesis is narrowed to excellent henselian DVRs. Its only consumer, §3.1 of this roadmap, uses henselizations of global fields, which are excellent. A search of main, the open heads and the board packages finds no other roadmap citing §0.12 or §1.3. AdicCoefficientsAndComparisonsPartII cites this roadmap only for its own §PA.6.10, which already assumes excellence. QuadraticFormInvariantsPartII cites it only for §1.1.
