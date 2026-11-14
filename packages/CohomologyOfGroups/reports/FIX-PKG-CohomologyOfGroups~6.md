# FIX-PKG-CohomologyOfGroups~6

Review settled: `REV-PKG-CohomologyOfGroups~5` (two findings, both P3, both source locators).

## REV-PKG-CohomologyOfGroups~5/F01 (P3) — applied

Verified: Loh19 line 5762–5771 (Cor. 3.2.20, printed p. 133) is the natural sequence, split but not naturally, for a complex of free modules over a principal ideal domain. Loh19 line 5841–5843 (Cor. 3.2.21, p. 135) gives only a direct-sum isomorphism over `ℤ`. Loh19 line 5985–5990 (Outlook 3.2.26, p. 138) names the cohomological theorem without stating it.

Old: "(Loh19 Cor. 3.2.21, p. 135, and Outlook 3.2.26, p. 138)". New: a parenthesis in my own words citing Cor. 3.2.20 (p. 133, line 5762–5771) for the PID statement, Cor. 3.2.21 as its `ℤ` instance, and Outlook 3.2.26 as only naming the cohomological sequence. It adds that the generality (`k` of global dimension ≤ 1, both sequences) comes from the route. `sources.toml`: `Cor. 3.2.20 (p. 133)` added to the `Loh19` locator.

The route really does reach global dimension ≤ 1. Tau Ceti's `HomologicalComplex.homologyKunnethShortComplex_shortExact` (`TauCeti/Algebra/Homology/Monoidal/Homology/Kunneth/Sequence.lean:729`) assumes only that the cycles and the cokernels of the cycle inclusions are projective. `TauCeti.ChainComplex.extToHomology` (`TauCeti/Algebra/Homology/UniversalCoefficient/Basic.lean:121`) assumes projective cycles with a split inclusion. Over a hereditary ring both hold for the free chains `C(G; k)`.

I searched for the same problem elsewhere: 5.1 (README "Loh19 Thm. 3.2.22 and Cor. 3.2.23, pp. 135–136, for a principal ideal domain and one complex of flat modules") and 5.3 ("records the statement without proof; the generality here follows from 5.1 and 5.2") already say how much their source proves. No other citation of Cor. 3.2.21 or Outlook 3.2.26 exists.

## REV-PKG-CohomologyOfGroups~5/F02 (P3) — applied

Verified: target 4.7 had no source id. MilneCFT line 3459–3484 (Ch. II Prop. 1.38, p. 73) is the uniqueness of a family of pairings that is natural, normalized in degree `(0, 0)` and obeys the two connecting-map rules, proved by dimension shifting. Those are the axioms of 4.2.

Changes:
- **Route of (a).** Old: "Route: both satisfy the axioms of 4.2 in positive degrees." New: the same sentence, followed by the uniqueness argument of MilneCFT Ch. II Prop. 1.38, p. 73, line 3459–3484, with its degree-`(0, 0)` normalization read through the quotient `H⁰ → Ĥ⁰`.
- **New closing sentence.** The three statements compare the pinned `TauCeti.TateCohomology.cup` and `TauCeti.TopPairing.cup` with 4.1's cup. They are fixed by those definitions and taken from no source; the source supplies only the uniqueness used in the route of (a).
- **`sources.toml`.** `"Target 4.7"` added to `MilneCFT.cited_for`.

I phrased the route carefully because Prop. 1.38's degree-`(0, 0)` axiom is about `H⁰`, not `Ĥ⁰`. The suggested wording would have left that implicit.

To check the same problem elsewhere, I ran a script over all 41 `### n.m` targets. Each now cites a source id, and 4.7 and 6.9 also say that the comparison itself is taken from no source. I also cross-checked every source id cited in a target against that source's `cited_for` in `sources.toml`: nothing is missing and nothing is stale. My script did report four ids "missing" for 8.5, but only because its 8.5 text ran on into the References list; 8.5's own text cites none of them.

## Checks

- **Elaboration.** `lake env lean packages/CohomologyOfGroups/Suggested.lean` (run from the content checkout) exited 0. It gave exactly 14 `declaration uses sorry` warnings (lines 113, 121, 136, 145, 174, 202, 226, 266, 325, 339, 359, 375, 389, 409) and nothing else. `Suggested.lean` was not changed this round.
- **Signatures.** I put a copy of `Suggested.lean` with `#check @name` for all 21 declarations in a scratch file and elaborated it: exit 0, all 21 types printed. Every binder is there:
  - `[Module.Free ℤ ↑M]` on `tate_duality_of_free`;
  - `[Finite G]` / `[Fintype G]`, `[Fact (Nat.Prime p)]` and `n ≠ 0` on the stable-element theorems;
  - `[H.FiniteIndex]` on the double-coset statements;
  - `2 ≤ n` on the free-group and free-product theorems;
  - `[R.Normal]` on Hopf's formula.

  Each type matches its README statement. Nothing changed.
- **Dependency check** (`gate --depcheck … --movable`):

  ```text
  depcheck: 244 roadmaps, 2206 edges, 0 problem(s)
  ```

  No UPWARD, CYCLE or moved line.
- **Gate failures.** None were listed for this round.
- **Ownership.** No construction, target or Lean name was added, so ownership is unchanged. The only new mentions are pinned Tau Ceti declarations, by name.

## Adversarial pass on the changed text

No statement, hypothesis or Lean signature changed; only citations and one sentence of route. Each row below recomputes the statement whose citation changed, at the generality the README claims.

| Statement | Instances | Values on each side | Result |
|---|---|---|---|
| 5.2 homological sequence, `k = ℤ` | `G = ℤ/2`, `A = ℤ/2`, `n = 2` | `H₂(ℤ/2,ℤ) ⊗ ℤ/2 ⊕ Tor(H₁(ℤ/2,ℤ), ℤ/2) = 0 ⊕ ℤ/2`; `H₂(ℤ/2, ℤ/2) = ℤ/2` | sound; agrees with Loh19 Cor. 3.2.21 |
| 5.2 cohomological sequence, `k = ℤ` | `G = ℤ/2`, `A = 𝔽₂`, `n = 2` | `Ext¹(ℤ/2, 𝔽₂) = 𝔽₂`, `Hom(H₂(ℤ/2,ℤ) = 0, 𝔽₂) = 0`; `H²(ℤ/2, 𝔽₂) = 𝔽₂` | sound |
| 5.2 at global dimension 1, not a PID | `k = ℤ[√−5]`, `𝔭 = (2, 1+√−5)`, `A = k/𝔭 ≅ 𝔽₂`, `G = ℤ/2`, `n = 2` | `H₁(G,k) = k/2k`, `H₂(G,k) = 0`; `Tor₁^k(k/2k, A) = ker(2 on A) = 𝔽₂`; `H₂(ℤ/2, 𝔽₂) = 𝔽₂` | sound; outside Cor. 3.2.20, covered by the route |
| 5.2 degenerate | `G = 1`, any hereditary `k`, `n = 1` | `0 ⊗ A ⊕ Tor₁(k, A) = 0 = H₁(1, A)`; `Ext¹(k, A) = 0`, `Hom(0, A) = 0 = H¹(1, A)` | sound |
| 5.2 field | `k = 𝔽₂`, `G = ℤ/2`, `A = 𝔽₂`, `n = 1` | `Tor`, `Ext` terms `0`; `H¹ = Hom(H₁(ℤ/2,𝔽₂), 𝔽₂) = 𝔽₂` | sound |
| 4.7(a) bidegree `(1,1)` | `G = ℤ/2`, `M = N = 𝔽₂` | 4.1 cup `x ∪ x` = generator of `H²(ℤ/2,𝔽₂) = 𝔽₂`; Tate cup = generator of `Ĥ²` | sound |
| 4.7(a) degree `0` through the quotient | `G = ℤ/2`, `M = ℤ`, `N = 𝔽₂`, `m = 2 ∈ N_G ℤ`, `y ∈ H¹` | `2 ∪ y = 2y = 0` in `H¹(ℤ/2, 𝔽₂)`; `[2] = 0 ∈ Ĥ⁰(ℤ/2,ℤ) = ℤ/2`, so Tate product `0` | sound; quotient, not isomorphism |
| 4.7(a) normalization `(0,0)` | Tau Ceti `cupH0_H0π_H0π` (`…/TateCohomology/Cup/DegreeZero.lean:116`) | class of `x ⊗ y` = image in `Ĥ⁰` of the product of invariants | the uniqueness argument applies through `H⁰ → Ĥ⁰` |
| 4.2 / 4.7 sign witness | `p = 1`, `x ∈ H¹`, `δ` of the second variable | Milne Prop. 1.38(d): `(−1)^r`; README 4.2: `(−1)^p`; Tau Ceti `cup_δ_of_flat` (`…/Cup/Delta.lean:242`): `p.negOnePow`; all give `−1` at `p = 1` | the three sign conventions agree |

## Notes for the maintainer

- No Lean name, target number, section or heading changed, so other roadmaps that cite this one are unaffected.
- Only `README.md` (5.2 and 4.7) and `sources.toml` (`Loh19.locator`, `MilneCFT.cited_for`) were edited. `Suggested.lean`, `metadata.toml` and `design/plan.json` are unchanged.
- The review's "For the human reviewers" items (Brown82 and CE56 cited by locator only; Loh19 and MilneCFT being course notes) were left for the humans, as the brief requires.
- Nothing suspicious was found in the review text.
