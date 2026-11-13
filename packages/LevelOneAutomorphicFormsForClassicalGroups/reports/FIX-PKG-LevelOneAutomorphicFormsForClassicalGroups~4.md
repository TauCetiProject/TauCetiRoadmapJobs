# FIX-PKG-LevelOneAutomorphicFormsForClassicalGroups~4

Repair of the five findings of the round-3 package review. All five were verified against the
sources and the supplier roadmaps and are correct; all five are applied. Files changed:
`packages/LevelOneAutomorphicFormsForClassicalGroups/README.md` (§§1.1, 1.9, 2.8, 2.18, 3.15, 3.16,
Layer 1 Dependencies) and `packages/LevelOneAutomorphicFormsForClassicalGroups/Suggested.lean` (one
docstring). `metadata.toml`, `sources.toml` and `design/plan.json` are unchanged: no new source and no
new supplier gap was needed.

## F01 (P2) — applied

Verified: §1.1 claimed every Satake root of every member of `Π_alg` has absolute value one "by purity
(§1.5)". §1.5 is archimedean purity only; finite-place temperedness (Ramanujan) is not known for all of
`Π_alg` (Tai17 lines 2350–2354), and the supplier AutomorphicLFunctionsAndLocalFactors §AL.3.3.8
gives only `q^{−1/2} < |α| < q^{1/2}` and says it does not assert temperedness.

Old → new: "numbers of absolute value one by purity (§1.5)" → nonzero roots with product `1`, each
satisfying the Jacquet–Shalika bound (§AL.3.3.8); `c_p(π^∨)` equals both the inverse and the conjugate
multiset of `c_p(π)` (unitarity, used by §2.5); explicit sentence that §1.5 is archimedean only. §AL.3.3.8
added to the §1.1 Needs line and to Layer 1 Dependencies. New negative-control Check: the
`PGL₂(ℚ₂)` complementary series with roots `2^{±1/4}`.

Pattern: searched "absolute value", "Ramanujan", "tempered", "purity", "|α"; the supplier contract
(AL bullets) and §2.6 already use the Jacquet–Shalika bound; no other finite-place temperedness claim.

## F02 (P1) — applied

Verified: `(0, 0, 0) ∈ W₃` is integral of odd length; the `Sp₂` inverse `λ₁ = w₁ − 1` gives `−1`, not
dominant. Likewise `(1/2, 1/2, −1/2, −1/2) ∈ W₄` gives `λ = (−1, 0)` for `SO₅`, and `(1, 1, −1, −1)`
gives `(0, 1)` for `SO₄`, violating `λ₁ ≥ |λ₂|`.

Old → new: "an inverse exactly on three images: integral vectors of odd length…" → the three images
are exactly the **regular** vectors of `W_m` with the stated integrality and length (outer orbits and
`λ_n ≥ 0` in type D kept, rank one separate), with the one-line proof (first `n` coordinates drop by
≥ 1, `w_n ≥ 1, 1/2, 0`, subtract `(n,…,1)`, `(n−1/2,…,1/2)`, `(n−1,…,1,0)`). New API bullet: a nonregular
vector is in no image. New Check with all three nonregular witnesses.

Pattern: the other uses of §1.9 (§3.16, §4.4 Needs) go from `λ` to `w(λ)` and need no change.

## F03 (P2) — applied

Verified: with `m = 0` the family is empty, nothing ties `U` to `Π_alg`, the averaging vector is
undefined (zero under a totalized inverse), and §2.7 at `x = 0` gives only `0 ≥ 0`.

Old → new: "if `F` satisfies (POS) and `π₁, …, π_m`…" → "if `F` satisfies (POS), `m ≥ 1` is an integer
and `π₁, …, π_m`…"; the averaging step now displays
`C^F(x, x) = A_F/m − J_F(U²) − (B_F/(2m²)) Σ_{i,j} e⊥(π_i, π_j)`. New negative-control Check for the
empty family. I did not use the review's numerical witness at `U = I₂₃`, `ℓ = 487/50`: §5.4 does not
state `J_{F_ℓ}(I₂₃²) > 0`, and the structural control is enough.

Pattern: §2.18's "`c = A_F/m`" now says "of §2.8, for an integer `m ≥ 1`". §2.9 (`m_i > 0`), §2.17 and §5.1
(`m ≥ 1`) already had the hypothesis.

## F04 (P1) — applied

Verified: Tai17 Theorem 4.1.2 (lines 2377–2387) sets `m_ψ = 2` when `G` is even orthogonal and every
`n_i d_i` is even. (4.1.2) (lines 2401–2407) keeps `m_ψ`, and line 2414 defines the outer-averaged EP.
ModularityAndLanglandsExtensions §3.17 states `L²_disc = ⊕_ψ ⊕_{π ∈ Π̃_ψ(ε_ψ)} m_ψ π` with the same
`m_ψ`. The review's SO₈ witness is correct: λ = (9, 7, 4, 2), q(SO(4,4)) = (28 − 12)/2 = 8, the outer
pair has EP values 1 and 0 with average 1/2, so the true contribution is `2 · 1/2 = 1`.

Old → new: §3.15 now defines `EP_ψ(G; λ)` as the full ψ-part of `EP(G; λ)`, defines `m_ψ` and the
averaged EP of an outer pair, and proves `EP_ψ = m_ψ |S_ψ|⁻¹ Σ_s ε_ψ(s) Σ_ρ ⟨s, ρ⟩ EP(ρ ⊗ V_λ^∨)`.
§3.16: κ is the full contribution `m_ψ Σ_ρ EP(ρ ⊗ V_λ^∨)` of one simple parameter, with a sign argument
for `κ ≠ 0`. New Checks: the SO₈ example in §§3.15 and 3.16, plus `m_ψ = 1` for SO₃.

Pattern: §3.3 and Layer 7 concern `Sp_{2g}` only (`m_ψ = 1`). §4.11 uses κ only through §3.16, and
`N⊥ = 0` rows are unaffected. No other formula averages packet characters.

## F05 (P3) — applied

Verified: `exp(πi tr(Tτ)) = exp(2πi tr((T/2)τ))`, so a Gram diagonal entry `2` is Fourier index `1`.
README §8.6 already says "at `T/2`".

Old → new (Suggested.lean, docstring of `thetaCoefficient` only): "The Fourier coefficient at the
matrix `T`" → "The Fourier coefficient at `T/2`, indexed here by its integral Gram matrix `T`", with
the rewritten exponential. The definition and every signature are unchanged. The headline docstring
already used `q^{Gram(x)/2}`.

## Checks run

- **Elaboration**: `lake env lean` on `packages/LevelOneAutomorphicFormsForClassicalGroups/Suggested.lean`
  from the content checkout exits 0. Its only output is four `declaration uses 'sorry'` warnings, at
  lines 80, 124, 137 and 149. No Tau Ceti module had to be built.
- **Signatures**: a scratch copy with `#check @name` for all eight declarations elaborated (exit 0). The
  elaborated types match the earlier signatures and the README statements: `hc`, `hQ`, `hloc` with all
  primes, `hev`, `huni`, `hpos`, `hrank`, `hroot`, `hspan`, `hg`, `hω` and `hω0` are all present, and no
  section binder is lost. No signature changed this round.
- **Dependency gate** (`gate --depcheck … --movable`): output `depcheck: 236 roadmaps, 2150 edges,
  0 problem(s)`, exit 0. There is no UPWARD, CYCLE or `moved:` line.
- **Citation resolver** on the README: no cross-roadmap citation and no Lean name found nowhere.
- No gate failures were listed for this round.

## Adversarial pass on the changed statements

| Statement | Instances tried | Values computed | Result / change |
|---|---|---|---|
| §1.1 Satake roots | `PGL₂(ℚ₂)` complementary series with exponents ±1/4; trivial `PGL₁` | roots `2^{±1/4}`, product 1, max modulus 1.18921; JS bounds 0.70711 < 1.18921 < 1.41421; `PGL₁`: root 1, product 1 | Absolute value one removed; JS bound and product 1 hold on both. |
| §1.1 tensor roots (consumer §2.6) | two copies of the above at p = 2 | largest modulus of `α_i^{−1}β_j` is `2^{1/2} ≈ 1.41421 < 2` | The `c = 1` input of §2.6 holds without Ramanujan. |
| §1.1 conjugate/inverse | complementary series above; a tempered pair `{e^{iθ}, e^{−iθ}}` | `{2^{1/4}, 2^{−1/4}}` is closed under inversion and is its own conjugate; `{e^{iθ}, e^{−iθ}}` likewise | `c_p(π^∨) = c_p(π)⁻¹ = c̄_p(π)` holds for the non-tempered witness too. |
| §1.9 images (Sp) | `(0,0,0)`; `(1,0,−1)`; `(k+1,0,−k−1)` | λ₁ = −1 (rejected), 0, k | Regularity required; positive cases recover λ. |
| §1.9 images (SO odd) | `(1/2,1/2,−1/2,−1/2)`; `(k+1/2,−k−1/2)` | λ = (−1, 0) (rejected); λ = k | Regular half-integral vectors only. |
| §1.9 images (SO even) | `(1,1,−1,−1)`; `(2,1,−1,−2)`; `(1,0,0,−1)` | λ = (0, 1) (not dominant); λ = (1, 1) (also `(1,−1)` on the outer orbit); λ = (0, 0) | The central double zero is allowed; repeated nonzero coordinates are rejected. |
| §1.9 rank one | `(0) ∈ W₁` | `Sp₀` trivial | Still treated separately. |
| §2.8 bound | m = 0; m = 1 trivial class; m = 2 at `I₂₃` | m = 0: `x` undefined/zero, §2.7 gives `0 ≥ 0`; m = 1: `J_F(1) ≤ A_F`; m = 2: `J_F(I₂₃²) ≤ A_F/2` | `m ≥ 1` added; displayed `C^F(x,x)` recomputed: `A/m − J(U²) − (B/(2m²))Σe⊥`. |
| §2.8 sign of `e⊥` term | `F` with (POS) | `B_F = ∫F ≥ 0`, `e⊥ ∈ {0,1}`, so the term is ≤ 0 | The conclusion follows from `0 ≤ C^F(x,x)`. |
| §2.18 cutoff | m = 0 reading | `A_F/0` undefined | Now explicitly m ≥ 1. |
| §3.15 `m_ψ` | SO₈ simple `O^even(24,18,10,4)`; SO₃; Sp₄ `Δ_w[2] ⊕ [1]` | SO₈: `m_ψ = 2`, EP pair (1, 0), average 1/2, contribution 1 (without `m_ψ`: 1/2). SO₃: `m_ψ = 1`, simple class gives −1. Sp₄: `m_ψ = 1` (dual SO₅) | Repaired; the SO₃ and Sp cases are unchanged. |
| §3.15 character average | `S_ψ = {1, s}`, `ε_ψ(s) = −1`, a member with `⟨s,ρ⟩ = 1` | `(1/2)(1·1 + (−1)·1) = 0` | Mismatched members give 0, not 1/2. |
| §3.15 outer-orbit equal multiplicity | orbit `{X₁, X₂}`, `m_ψ = 2` | multiplicity `a` each, `2a = m_ψ` gives `a = 1`; contribution `1·1 + 1·0 = 1 = m_ψ · 1/2` | The full-contribution definition agrees with Tai17 (4.1.2). |
| §3.16 κ | SO₃ at k = 0, 5; SO₈ at λ = (9,7,4,2) | SO₃: κ = −1, `EP(SO₃;0) = −0 + 1 = 1`, `EP(SO₃;5) = −1·1 + 0 = −1`. SO₈: each outer pair gives +1, sign `(−1)^8 = 1` | κ ≠ 0 with sign `(−1)^{q(G)}`; the SO₃ recursion is unchanged. |
| §3.16 κ, outer-invariant λ | SO₈ with `λ₄ = 0` | each orbit member has inf. char λ + ρ, so averaged EP = `(−1)^q` and the orbit gives `2(−1)^q` | Every summand still has sign `(−1)^q`; κ ≠ 0. |
| §8.6 / `thetaCoefficient` docstring | Gram diagonal entry 2, g = 1 | `exp(πi·2τ) = q¹`: index 1 = T/2 | The docstring now matches the README and the headline. |

## Ownership, sources and overlaps

- No construction was added. The new inputs come from suppliers this roadmap already names:
  AutomorphicLFunctionsAndLocalFactors §AL.3.3.8, ModularityAndLanglandsExtensions §3.17, and Tai17
  Theorem 4.1.2 with (4.1.2). I checked both sections at the heads the tools serve (#924 and #1180).
- No new source was needed; `sources.toml` is unchanged and no `needs-references.toml` was written.
- `overlaps.md` reports no open pull request that changes this roadmap and no dropped cited id. No
  cited id changed this round.

## For the maintainer

- No Lean name changed, and no section or target was renumbered. SiegelModularForms, which cites
  §§6.4 and 6.7, is unaffected.
- κ in §3.16 is now explicitly Tai17's full simple-parameter contribution, including `m_ψ = 2` for
  `SO_{4n}`. A downstream use of the even-orthogonal recovery should read it that way.
- Source note for the review record: Tai17 line 2583 calls the simple-parameter contribution
  "simply" the packet EP sum and then uses `EP = (−1)^{q}` per packet member (lines 2593–2596). That
  is right only when each member is counted with its true EP and multiplicity. Under the averaged
  convention of line 2414 the factor `m_ψ` of (4.1.2) is needed, which is the convention the README
  now states.
