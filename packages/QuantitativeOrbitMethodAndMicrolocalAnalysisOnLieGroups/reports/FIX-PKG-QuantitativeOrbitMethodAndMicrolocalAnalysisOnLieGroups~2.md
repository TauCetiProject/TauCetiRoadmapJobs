# Repair report: QuantitativeOrbitMethodAndMicrolocalAnalysisOnLieGroups, package round 2

Findings of `REV-PKG-QuantitativeOrbitMethodAndMicrolocalAnalysisOnLieGroups` (five findings, F01–F05; the review's body also calls them R01–R03 in two places, the same findings).

## F01 (P2) — applied

Verified at the pin: `Mathlib/LinearAlgebra/UnitaryGroup.lean` line 289 `attribute [local instance] starRingOfComm`, line 313 `abbrev specialOrthogonalGroup … := specialUnitaryGroup n R` under `[CommRing R]` only; `mem_orthogonalGroup_iff'` (line 299) is `Aᵀ * A = 1`. A scratch test elaborated `h ∈ Matrix.specialOrthogonalGroup (Fin 2) ℂ ↔ hᵀ * h = 1 ∧ h.det = 1` by `rw [mem_specialOrthogonalGroup_iff, mem_orthogonalGroup_iff']`, and `diag(i, −i)` membership reduces to `−1 = 1`.

Change: `specialOrthogonalMatrices` deleted from `Suggested.lean`; all four uses → `Matrix.specialOrthogonalGroup ι k` (and `(ι ⊕ Unit)`, coerced to `Set` in `InvariantlyEquivalent`). README: false contract sentence → a Mathlib contract bullet for `Matrix.specialOrthogonalGroup` (transpose, trivial star, 2 invertible); definition block → one §5.2 paragraph with the three Checks; `InvariantlyEquivalent` prose, §5.2 *Needs* and Layer 5 Dependencies updated. Module and theorem docstrings updated.

## F02 (P2) — applied

Each compound contract is now split into one slug per statement, with the same supplier and section, and `neededBy` set to the targets that actually use that statement:
- `unitary-exponents-minimal-ktypes` → `unitary-exponent-bound` (§2.3), `vogan-minimal-ktype` (§2.4)
- `relative-character-positivity` → `induced-multiplicity-one`, `distinction-upper-semicontinuity` (§7.5), `relative-character-positivity` (§§4.5, 7.7)
- `compact-quotient-spectral-estimates` → `kernel-spectral-expansion`, `polynomial-eigenvalue-count`, `orbit-restriction-sobolev` (§9.2)
- `orthogonal-ggp-inputs` → `orthogonal-multiplicity-one` (§9.1), `orthogonal-xi-integrability` (§§4.5, 6.3), `orthogonal-local-period-form` (§4.5), `orthogonal-period-factorization` (§9.1)

The orthogonal global period identity is **not** kept as a gap. The repair differs from the suggested one here, and the reasons are below.

Same pattern repaired in three other contracts:
- `tempered-xi-bounds` → Ξ with Cowling–Haagerup–Howe (§§4.1, 4.3), plus `kak-integration-volume-growth` (§5.8)
- `local-plancherel` → formula (§§4.2, 4.4, 5.10), plus `padic-plancherel-density` (§7.7)
- `global-spinor-image` → `local-spinor-images`, plus Kneser's `global-spinor-image` (§8.7)

All *Needs* and Dependencies lines were repointed (§§2.3, 2.4, Layer 2, 4.5, Layer 4, 5.8, Layer 5, 6.3, Layer 6, 7.5, 7.7, Layer 7, 8.7, Layer 8, 9.1, 9.2, Layer 9). The Scope paragraph was updated to match.

Why the period identity is dropped: nv21 §25.5 (arXiv text, p. 119 of v3) states the orthogonal Ichino–Ikeda formula as a **conjecture**, used only in §31 (31.5). §9.1 defines `L(Π, Σ)` through factorization alone, and §9.5 (Theorem 30.1) does not use the identity. So §9.1 now needs the following, not GanGrossPrasadUnitaryGroups §7.4:
- GanGrossPrasadUnitaryGroups §§2.6, 4.2 (unitary multiplicity one and factorization)
- the orthogonal multiplicity-one and factorization gaps

§7.4 left the unitary contract and the Scope list. The Scope already defers the period identities to Part II.

## F03 (P3) — applied

Verified: with `H = diag(1, −1)`, ρ(H) = 1:
- `I(s)` has λ(H) = ±s, and the complementary series is s ∈ (0, 1).
- `D_k` has the infinitesimal character of `F_{k−1}`, so λ(H) = (k − 2) + 1 = k − 1.

Change:
- Layer 2 Examples: "complementary `(0, 1/2)`, discrete series nonzero integral" → normalization fixed at H, complementary `λ(H) ∈ (0, 1)`, `D_k` at `k − 1 ∈ {1, 2, …}`, plus a note that halving gives (0, 1/2) and half-integers.
- The §2.3 Check (`s ∈ (0, 1/2)`, size ≤ 1/2) was rewritten to `λ(H) ∈ (0, 1)`, bounded by 1. This is the same pattern.

## F04 (P3) — applied

Verified: `TauCeti/LinearAlgebra/CliffordAlgebra/Spin/SpinorNorm/Basic.lean` lines 64–65 have `[Field K] [FiniteDimensional K V] [Invertible (2 : K)]`; line 143 `spinorNorm (Q) (hQ : Q.Nondegenerate) : … →* Multiplicative (SquareClassGroup K)`; line 200 has the same binders. Change: the contract bullet now states finite dimension, 2 invertible, `hQ`, and the codomain `Multiplicative (SquareClassGroup K)`. §8.7 uses number fields and their completions, where both hold.

## F05 (P3) — applied

Verified in the arXiv text of nv21 (§A.1, v3 lines 4662–4668): "κ = −c Σ x² for large c".
- For SO(3), κ_τ = c·l(l+1), which is 0 at l = 0 for every c.
- For rank r ≥ 2, `Σ (1+|λ|²)^{−1}` over a rank-r lattice diverges.
- With ≥ 2 positive roots, dim τ grows like `|λ|^{#Φ⁺}` while c^{1/2}|λ| is only linear.

Change, §4.1: "positive multiple of the K-Casimir, which does not satisfy `dim τ ≤ κ_τ^{1/2}` with a fixed constant" → vanishes on the trivial type (π(κ) not invertible); summability fails for rank ≥ 2; domination fails for any c with ≥ 2 positive roots. The §4.1 Checks are unchanged; they hold.

## Checks run

- `lake env lean packages/QuantitativeOrbitMethodAndMicrolocalAnalysisOnLieGroups/Suggested.lean` (from the content checkout): exit 0, five warnings `declaration uses 'sorry'` (lines 103, 159, 172, 188, 209), nothing else.
- `#check` audit: a scratch copy with `#check @name` for all 11 remaining declarations was elaborated once. Nothing was lost:
  - `quantize` and `exists_norm_quantize_le` keep `[FiniteDimensional ℝ E] [MeasurableSpace E] [BorelSpace E] [LieGroup 𝓘(ℝ, E) ∞ G] [T2Space G]`, and `[CompleteSpace V]`.
  - The four GGP theorems keep `[IsAlgClosed k] [CharZero k]` and their skew-symmetry hypotheses.
  - The orthogonal statements now display `specialOrthogonalGroup ι k` with the `Set` coercion `↑(specialOrthogonalGroup (ι ⊕ Unit) k)` in `InvariantlyEquivalent`.
  - All elaborated types agree with the README.
- Depcheck (`gate --depcheck … --movable`): `depcheck: 56 roadmaps, 645 edges, 0 problem(s)`. No UPWARD, CYCLE or moved line.
- `roadmaps resolve README.md`: no cross-roadmap citation and no Lean name found nowhere.

No gate failures were listed for this round.

## Adversarial pass (changed statements)

| Statement | Instances | Values computed | Result | Change |
| --- | --- | --- | --- | --- |
| `Matrix.specialOrthogonalGroup` over ℂ | `[[√2, i], [−i, √2]]` | hᵀh = [[2−1, √2i−√2i],[·, −1+2]] = 1; det = 2 − 1 = 1; h* = h, h² = [[3, 2√2 i], …] ≠ 1 | in group, not unitary | Check kept |
| same | diag(i, −i) | hᵀh = diag(−1, −1); Lean reduces to −1 = 1 | not in group | Check kept |
| same | −1 at sizes 2, 3; empty index | det = 1, −1; group {1} | as stated | Check kept |
| `ggpBlock` maps SO(ι) into SO(ι⊕Unit) | h ∈ SO | det(fromBlocks h 0 0 1) = det h = 1; (ggpBlock h)ᵀ ggpBlock h = ggpBlock(hᵀh) = 1 | holds | prose |
| orthogonal theorems on the new carrier | ι empty | SO(∅) = {1}; x 1×1 skew ⇒ x = 0; spectral polys of 0 (odd) = 1 and of empty = 1, coprime; orbit {0} closed, stabilizer finite | both sides true | — |
| F03 SL₂ parameters | I(s), D_k, trivial | λ(H) = s; complementary (0,1); D_k: k−1; trivial: ρ(H) = 1 (endpoint) | consistent | lines fixed |
| F05 κ = −cΣx² | SO(3) l = 0; torus rank 2; SU(3) | 0; Σ_{n∈ℤ²}(1+|n|²)^{−1} = ∞; dim ~ |λ|³ vs |λ| | defects as stated | text fixed |
| `local-spinor-images` | ℚ_p binary anisotropic; ℝ definite binary ⟨1,1⟩; hyperbolic plane; ℂ | index-2 norm group; norms from ℂ = positive class; −disc square ⇒ all classes; trivial group | clauses agree pairwise | — |
| `global-spinor-image` | V definite dim 3 over ℚ | p-adic images all, real image positive ⇒ θ = positive classes (O'Meara 101:8) | holds | — |
| `orthogonal-xi-integrability` | d = 0 | reduces to nv21 (18.1) `∫_H Ξ_G Ξ_H < ∞` | consistent with §4.5 | — |
| `relative-character-positivity` | H compact | H_σ(T) = tr(T|π[σ])/dim σ ≥ 0 for T ≥ 0; nonzero on a rank-one projection onto π[σ] if π[σ] ≠ 0 | holds | — |
| `induced-multiplicity-one` | SL₂ reducible unitary induction | two constituents share one l-fibre; ≤ 1 distinguished per fibre is compatible with the §7.5 Check | consistent | — |

## Notes for the maintainer

- **Gap slugs renamed or split.** Removed: `unitary-exponents-minimal-ktypes`, `orthogonal-ggp-inputs`, `compact-quotient-spectral-estimates`.
  - Added for AutomorphicSpectralTheory: `padic-plancherel-density`, `kak-integration-volume-growth`, `kernel-spectral-expansion`, `polynomial-eigenvalue-count`, `orbit-restriction-sobolev`.
  - Added for AutomorphicFormsOnReductiveGroups: `unitary-exponent-bound`, `vogan-minimal-ktype`.
  - Added for GanGrossPrasadUnitaryGroups: `orthogonal-multiplicity-one`, `orthogonal-xi-integrability`, `orthogonal-local-period-form`, `orthogonal-period-factorization`, `induced-multiplicity-one`, `distinction-upper-semicontinuity`.
  - Added for OrthogonalSpinGroups: `local-spinor-images`.
  - Any supplier-side tracking of the old slugs must be updated.
- The roadmap no longer asks GanGrossPrasadUnitaryGroups for an orthogonal global period identity, which is conjectural (nv21 §25.5). The Lean declaration name `specialOrthogonalMatrices` was deleted; no other roadmap cites it (`roadmaps grep`).
- Ownership: GanGrossPrasadUnitaryGroups was re-read at its open head (`roadmaps show`). Its §§2.6, 2.7, 3.3, 4.2, 7.4 and its line 20 (orthogonal endpoints go to its Part II) are as cited. OrthogonalSpinGroups was re-read on main: Layer 2 heading "local topology, transvections, and local spinor norms" and Layer 3 "localization and adelic points". No notion moved down; no new supplier.
- Sources: the cached publisher extraction of nv21 is empty (no extractor). The arXiv v3 text was fetched via the sources service into a scratch manifest only. In `sources.toml`, the existing `nv21` entry gained `arxiv = "1805.07750"` and a `version_note`; no second key was created. No text is missing and `needs-references.toml` was not written.
- No suspicious instructions were found in the review text.
