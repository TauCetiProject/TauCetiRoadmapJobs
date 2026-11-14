# FIX-PKG-MotivesAndAlgebraicCyclesPartII~5

This round repairs the findings of review `REV-PKG-MotivesAndAlgebraicCyclesPartII~4`: F01 at P2 and F02 at P3. Both were checked against the cached Scholze text (Scholze line 299 through line 303, line 658 through line 661, line 1444 through line 1448, and line 2132 through line 2154) and against the roadmap's own §§3.2–3.4, 5.4 and 8.2. Both findings are correct and both were applied. Only `packages/MotivesAndAlgebraicCyclesPartII/README.md` changed. `Suggested.lean`, `metadata.toml`, `sources.toml` and `design/plan.json` are unchanged. No gap was added or removed, and no source was fetched.

## REV-PKG-MotivesAndAlgebraicCyclesPartII~4/F01 (P2) — applied

Verified: Scholze line 2152 says that the reduced cohomology of `ℙ¹` agrees with that of `G_m` "up to shift", and the README dropped that shift. Line 1444 allows archimedean `X` for the Tate object. `Ḡ_m` exists only on the nonarchimedean locus (§3.2). At the complex point the reduced cohomologies are `ℤ[−2]` for `ℙ¹` and `ℤ[−1]` for `G_m`.

Changed: §8.2 old "by ball invariance is that of `G_m` … `= Ḡ_m = ℤ(1)[1]`" → the reduced motive of `ℙ¹` is `ℤ(1)[2]` (§5.4), which is the global cofibre `ℤ(1)[1]` of §3.4 shifted by `[1]`. The reduced cohomology is `Hom(ℤ(1)[2], M)`. It equals `Ḡ_m` only on the nonarchimedean locus, and the complex values are stated. §5.1 old "Since `ℤ(1) = Ḡ_m[−1]`" → the global cofibre, with the complex signs `−1` and `+1`.

Pattern search: every other use of `Ḡ_m` or of `ℤ(1) = Ḡ_m[−1]` is already restricted:
- Conventions; §§2.1, 3.2–3.4 and the Layer 3 Examples; §4.4 (nonarchimedean `C`).
- §8.3: `|p| < 1` excludes archimedean points, where `|p| = p^α > 1`.
- §8.5 Check (nonarchimedean geometric point) and the Layer 8 Examples (nonarchimedean fibre).

§§10.2–10.3 use `ℤ(1)[1]` or `μ_n[1]` over algebraic fields, not `Ḡ_m`. No other passage identifies reduced cohomology of `ℙ¹` with that of `G_m`.

## REV-PKG-MotivesAndAlgebraicCyclesPartII~4/F02 (P3) — applied

Verified: §0.3 defined `A((T))_{1/2}` with a route, three Checks and a *Needs* line, but no API list. The source describes it as the completion of the free seminormed ring (Scholze line 658), so the universal property is part of the definition.

Changed: the definition now covers every Banach ring `A` (the zero ring gives the zero ring, as the existing Check already said), with `|T| = 1/2` stated for nonzero `A`. A new API list gives the isometric structure map and monomial norms, the universal property for units with `|u| ≤ 1/2` and `|u⁻¹| ≤ 2`, coefficientwise functoriality with its identity and composition laws, and base change `A((T))_{1/2} ⊗̂_A B ≅ B((T))_{1/2}`. A fourth Check (`u = 1/3`) was added. *Needs* gains TropicalAndBerkovichArithmetic §0.16.

## Checks run

- `lake env lean packages/MotivesAndAlgebraicCyclesPartII/Suggested.lean`, run from the content checkout at the pins: exit 0, no output, no warnings. No `TauCeti.*` import is used, so nothing was built.
- `#check @name` comparison: `Suggested.lean` declares nothing. It has one `import Mathlib`, the module docstring and an empty namespace, so there was nothing to elaborate and no binder can drop. The file is unchanged, and neither repair touches a carrier its docstring lists as missing.
- Dependency check (`gate --depcheck … --movable`), full output:

```text
depcheck: 237 roadmaps, 2158 edges, 0 problem(s)
```

  It printed no UPWARD, CYCLE or moved line. The new *Needs* item, TropicalAndBerkovichArithmetic §0.16, was already a supplier of Layer 0 and appears in the Conventions. The roadmap and edge counts differ from the review's run (236, 2155) because the board changed between runs.
- `roadmaps resolve` on the README: no cross-roadmap citation and no Lean name found nowhere. The earlier lead `Perf.Spd` no longer appears.
- Style greps on the README: no `$`, `\(` or `\[` delimiters, no machine paths, and no job or pull-request references.
- Gate failures listed in the brief: none.

## Adversarial pass on changed statements

| Statement | Instances tried | Values computed | Result / change |
|---|---|---|---|
| §0.3 structure map isometric; monomial norms | `A` nonzero; `A = 0`; `A = ℚ_p` | `|a T⁰| = |a|·2⁰ = |a|`. For nonzero `A`, `|1| = 1`, since `|1| ≤ |−1|² ≤ 1` and `|1| < 1` forces `A = 0` (Scholze line 304). So `|T| = 1/2` and `|T⁻¹| = 2`. For `A = 0`, all norms are `0`. Over `ℚ_p`, `|1 + T| = 3/2` (sum norm, not ultrametric). | Holds. Stated for every `A`, with `|T| = 1/2` only for nonzero `A`. |
| §0.3 universal property | `A = B = ℂ`, `u = 1/2`; `u = 1/3`; `B = 0` | `u = 1/2`: `1 + 2T ↦ 2`, sum norm `1 + 2·(1/2) = 2`; `T^{−n} ↦ 2ⁿ`, sum norm `2ⁿ`. `u = 1/3`: `T^{−n} ↦ 3ⁿ > 2ⁿ`, so the map is not contractive. `B = 0`: `u = 0` is a unit with norms `0`, and there is one map. Converse: a contractive `φ` gives `|φ(T)| ≤ 1/2` and `|φ(T)⁻¹| = |φ(T⁻¹)| ≤ 2`. | Both bounds needed; added as a Check. |
| §0.3 functoriality | complex conjugation on `ℂ`; projection `ℂ × ℂ → ℂ` | Conjugation induces `Σ a_n Tⁿ ↦ Σ ā_n Tⁿ`, an involution, so `(c ∘ c)` induces the identity. The projection induces `(a_n, b_n) ↦ a_n`, with `|a_n| ≤ max(|a_n|, |b_n|)`, so it is contractive. | Identity and composition laws hold. |
| §0.3 base change | `A = ℂ`, `B = ℂ × ℂ` (max norm); `B = 0` | `x = (1, 0)T⁰ + (0, 1)T`. In `B((T))_{1/2}`: `max(1, 0) + max(0, 1)/2 = 3/2`. Projective ℓ¹ tensor norm (TropicalAndBerkovichArithmetic §0.16): `ℓ¹(ℤ, 2^{−n}) ⊗̂ (ℂ × ℂ) = ℓ¹(ℤ, 2^{−n}; ℂ × ℂ)`, also `3/2`. The product ring `ℂ((T))_{1/2} × ℂ((T))_{1/2}` with max norm gives `max(1, 1/2) = 1`. `B = 0`: both sides `0`. | Isometric isomorphism with `B((T))_{1/2}`, not with the product ring. Proved by corepresentability. |
| §5.1 Koszul comparison | complex point; real point; nonarchimedean `C`; `n = 0, 1` | Complex: `ℤ(1) = ℤ`, swap on `ℤ ⊗ ℤ` is `+1`; reduced motive `ℤ[1]`, swap on `ℤ[2]` is `(−1)^{1·1} = −1`. Real: `ℤ(1) = ℤ(σ)`, swap on `ℤ(σ) ⊗ ℤ(σ)` is `+1`. Nonarchimedean: `ℤ(1)[1] = Ḡ_m` in degree 0, so the swap on `Ḡ_m ⊗ Ḡ_m` is `−1`, matching `{a, b} = −{b, a}` in `K^M_2`. `n = 0, 1`: only the identity permutation. | The global cofibre gives the right sign at every point. The old unrestricted `Ḡ_m` is undefined at the complex point. |
| §8.2 reduced cohomology of `ℙ¹` | complex point, `M = ℤ`; real point; nonarchimedean `C` | Complex: `Hom(ℤ[2], ℤ) = ℤ[−2]` for `ℙ¹`, `Hom(ℤ[1], ℤ) = ℤ[−1]` for `G_m`; `ℤ[−1][−1] = ℤ[−2]`. The old unshifted claim gives `ℤ[−1] ≠ ℤ[−2]`. Tensoring with `ℤ(1)[2] = ℤ[2]` gives `ℤ[−2] ⊗ ℤ[2] = ℤ` (counit target). Real: conjugation reverses the orientation of `ℂℙ¹`, so it acts by `−1` on `H₂`, and the reduced motive is `ℤ(σ)[2] = ℤ(1)[2]`. Nonarchimedean: `ℤ(1)[2] = Ḡ_m[1]`, and `Hom(Ḡ_m[1], M) = Hom(Ḡ_m, M)[−1]`. | Shift restored, and the identity is valid over every base. Consistent with §5.4 (`ℤmot[ℙ¹] = ℤ ⊕ ℤ(1)[2]`) and the Layer 8 Examples (`f_♯ ℤ = ℤ[2] ⊕ ℤ`). |
| §8.2 shift identity | arbitrary `M` | `Hom(X[1], M) = Hom(X, M)[−1]`, so `Hom(ℤ(1)[1], M)[−1] = Hom(ℤ(1)[2], M)`. | Holds. |

## Ownership and citations

- `A((T))_{1/2}` is this roadmap's object (§0.3). Its API is the universal property of a free Banach algebra and needs only the pushouts of TropicalAndBerkovichArithmetic §0.16. That section was checked at its open head: it states that projective ℓ¹ tensor products compute pushouts in contractive Banach rings. No other roadmap needs to own this API.
- The repair of F01 uses only §§3.3, 3.4 and 5.4 of this roadmap. No supplier changes.
- No supplier gap was added. The overlap file lists no conflicting heads and no dropped ids. Ownership against open pull requests was checked through the `roadmaps` tools for the one new citation.

## Notes for the maintainer

- No Lean name, section number or cross-roadmap-cited id changed.
- Scholze's proof of Proposition 9.3 (line 2153 to line 2154) writes the reduced motive of `G_m` as `Ḡ_m` for arbitrary `X`, although Definition 5.15 defines `Ḡ_m` only on the nonarchimedean locus. The README route no longer relies on this. The reviewer did not list it as a source issue, so no "Corrections to the source" entry was added.
- No source was fetched and `needs-references.toml` was not written. BLR stays settled as `uncertified`.
- No passage of the review text was treated as an instruction. Nothing suspicious was found in it.
