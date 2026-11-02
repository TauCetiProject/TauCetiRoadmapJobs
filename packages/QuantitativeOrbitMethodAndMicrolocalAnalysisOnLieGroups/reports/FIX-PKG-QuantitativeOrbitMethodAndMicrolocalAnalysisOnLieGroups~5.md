# FIX-PKG-QuantitativeOrbitMethodAndMicrolocalAnalysisOnLieGroups~5

## F01 (P2) — applied

Old: §6.3's route bounded the huge-range tail by "`Ξ_G Ξ_H`-integrability with polynomial decay", citing only GanGrossPrasadUnitaryGroups §2.7 and gap:orthogonal-xi-integrability, both log-weighted. New: two supplier gaps on GanGrossPrasadUnitaryGroups, gap:unitary-xi-polynomial-tail and gap:orthogonal-xi-polynomial-tail (`∫_H Ξ_G Ξ_H |h|^η < ∞` for some η > 0, over ℝ or ℂ). The route now states the cutoff `|s| ≤ h^{−N′}` and the exponent count `N′η > N + A`. Added a GL₂ ⊃ GL₁ Check.

**Verification.** GanGrossPrasadUnitaryGroups §2.7 "Adjacent tempered integrability" (at its open head, README line 529–535) states only `∫ Ξ_{U(V)} Ξ_{U(W)} (1 + lognorm)^d < ∞`. Its route mentions strictly negative adjacent exponents, but the theorem does not state a power weight. A log weight bounds `∫_{|h|>X} Ξ_G Ξ_H` only by `(1 + log X)^{−d}`, and `h^{−A}(N′ log(1/h))^{−d}` is never `O(h^N)`. So the finding is right. The polynomial form is true for codimension-one GGP pairs (strong temperedness: an `e^{εσ}` weight with σ = log of the norm, i.e. `|h|^ε`). Ownership: this is the same object as §2.7 with a stronger weight, so the request goes to §2.7's owner and is not stated here. The orthogonal form goes to the Part II owner of the orthogonal endpoints, as for gap:orthogonal-xi-integrability.

**Edits** (README unless noted):
- Scope and ownership, supplier-gap paragraph: added "the polynomially weighted Ξ-integrability of codimension-one unitary and orthogonal pairs over ℝ and ℂ" to the GanGrossPrasadUnitaryGroups list.
- Exact supplier contracts, GanGrossPrasadUnitaryGroups: added `What GanGrossPrasadUnitaryGroups must provide (gap:unitary-xi-polynomial-tail)`, placed before the orthogonal paragraph. Added `(gap:orthogonal-xi-polynomial-tail)` right after gap:orthogonal-xi-integrability.
- §6.3: updated the *Proof route*, added the two slugs to *Needs*, and added a new Check (log weight versus power weight on GL₂ ⊃ GL₁).
- Layer 6 Dependencies: added the two slugs.
- `design/plan.json` `gaps`: added two entries with supplier GanGrossPrasadUnitaryGroups. Their sections are "2.7 Adjacent tempered integrability: polynomially weighted form" and "Scope and ownership (orthogonal endpoints …, Part II): counterpart of §2.7, polynomially weighted form". Both have `neededBy ["6.3"]`. Nothing else in the file changed.

**Pattern search.** I searched every use of Ξ in the README (§§4.1, 4.3–4.6, Layer 4 Dependencies, the contracts). Only §6.3 needs a rate. §4.5, §4.6 and the Layer 4 Dependencies need only absolute convergence, which the log form gives, so they are unchanged. Unlike the review's wording, the unitary gap says "split or nonsplit", because Layer 6 lets k₁ = k × k (the GL pairs), and §2.7 covers split E.

**Adversarial pass on the new text.**

| Statement | Instance | Values computed | Result | Change |
| --- | --- | --- | --- | --- |
| gap:unitary-xi-polynomial-tail | GL₂(ℝ) ⊃ GL₁(ℝ) (split unitary), h = diag(t,1) | `|h| = max(|t|,|t|⁻¹)`; `Ξ_{GL₂} ≍ |t|^{−1/2}(1+log|t|)`; `∫_{|t|≥1} |t|^{−3/2+η}(1+log|t|) dt < ∞` ⇔ η < 1/2 | holds for η ∈ (0, 1/2) | added as Check |
| same, k = ℂ | GL₂(ℂ) ⊃ GL₁(ℂ) | `Ξ ≍ |t|^{−1}(1+log|t|)`, Haar `d²t/|t|²`; tail `∫_{|t|>X} |t|^{−3+η} log|t| d²t ≍ X^{−1+η} log X` | holds for η < 1 | — |
| same, compact pair | U(1) ⊂ U(2), SO(2) ⊂ SO(3) | H compact, so the integral is at most `vol(H) · max |h|^η < ∞` | holds for every η | — |
| orthogonal gap, degenerate | SO(1) ⊂ SO(2) | H = {1}, `|1| = 1`, integral = `Ξ_G(1)Ξ_H(1) = 1` | holds | — |
| log weight is not enough | tail ≤ `(1+log X)^{−d} C_d` at X = h^{−N′} | `h^{−A}(N′ log(1/h))^{−d} → ∞` as h → 0 for fixed A > 0 | the log form fails the route | gaps added |
| §6.3 exponent count | integrand ≪ `h^{−A} Ξ_G Ξ_H`, tail ≪ `X^{−η}` | at X = h^{−N′}: `h^{N′η − A} ≤ h^N` ⇔ `N′η ≥ N + A` | the route closes | route rewritten |
| `Ξ_M` on `S = diag(H)` | M = G × H | `Ξ_M(s,s) = Ξ_G(s) Ξ_H(s)` | the weight the gaps state is the one §6.3 integrates | — |

## Checks

- `lake env lean packages/QuantitativeOrbitMethodAndMicrolocalAnalysisOnLieGroups/Suggested.lean`, run from the content checkout: exit 0 in about 4 s. The only output is five `declaration uses 'sorry'` warnings, at lines 103, 159, 172, 188 and 209.
- `Suggested.lean` is unchanged this round. No README target that it states changed, and no Lean name was added or removed. The 11 elaborated signatures in the scratch `signatures.md` still apply. I did not run a new `#check @name` pass because the file is identical.
- Depcheck output: `depcheck: 56 roadmaps, 645 edges, 0 problem(s)`. There is no UPWARD, CYCLE or moved line. The edge to GanGrossPrasadUnitaryGroups already existed.
- Slug consistency: both new slugs appear in `design/plan.json` and in the README: the contract line, §6.3 *Needs*, the Layer 6 Dependencies, and the route or Check. The unitary slug appears 5 times and the orthogonal slug 4 times.

## Notes for the maintainer

- GanGrossPrasadUnitaryGroups gets two new requests. One is a polynomially weighted form of its §2.7 (unitary, over ℝ and ℂ). The other is its orthogonal counterpart, for that roadmap's Part II. Its §2.7 route already has the strict adjacent-exponent margin the stronger statement needs.
- No name that other roadmaps cite was changed.
- Ownership against open pull requests was checked with `roadmaps show`/`roadmaps grep` over the carried open heads. No roadmap states a polynomially weighted Ξ_G Ξ_H integrability.
- I did not fetch any new source and did not write `needs-references.toml`.
