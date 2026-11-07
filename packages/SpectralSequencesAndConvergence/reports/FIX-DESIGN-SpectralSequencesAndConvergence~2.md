# FIX-DESIGN-SpectralSequencesAndConvergence~2

Repair of the nine findings of REV-DESIGN-SpectralSequencesAndConvergence (design stage, so there
is no `Suggested.lean`). Files edited: `packages/SpectralSequencesAndConvergence/design/README.md`,
`packages/SpectralSequencesAndConvergence/design/plan.json`,
`packages/SpectralSequencesAndConvergence/sources.toml`.

## F01 (P1) — applied

Changed: 2.2 bullet "finitely many nonzero positions in total degree `n` ⇒ degree `n`
stabilises" → "… in total degrees `n − 1` and `n + 1` ⇒ …", with the reason; "finite in every
degree ⇒ bounded" is added. The second Check records the counterexample; plan 2.2 has a new API
entry and test.

Evidence: 1.4's filtered complex has only `(0,0)` nonzero in total degree `0` (`gr^p K^0 = 0` for
`p ≠ 0`, `H^{−1}(gr^p K) = 0`), yet `Z_r(0,0) = ℓ^{r−1}ℤ`. The pattern search found no other
single-degree finiteness claim. 3.4 assumes finiteness in all degrees, and 3.6's dimension count
assumes convergence, which already gives the limit page.

## F02 (P2) — applied

Changed: 7.4 "exhaustive and complete (`lim¹_s F^s = 0`)" → "exhaustive with `lim¹_s F^s = 0`
(Helle–Rognes-complete; 3.1-complete iff `W^n = 0`)". 7.5 "exhaustive and complete" → "exhaustive
with `lim¹_p F^p H^n = 0`, meet `≅ W^n`, separated iff `W^n = 0`". The Conventions now contrast the
two meanings of "complete". The plan entries for 7.4 and 7.5 match.

Evidence: helle-rognes2024 line 81–84 (complete means `RF^{−∞} = 0`, Hausdorff means
`F^{−∞} = 0`), line 163–165 (Theorem 3.9) and line 943–967 (Example 8.1: `lim¹ = 0`, meet
`∏k/⨁k ≠ 0`). The strong-convergence clause of 7.5 now names the half-plane criterion as its
reason. The other uses of "complete" (3.1, 3.2, 3.5, 7.5's hypothesis on `K^m`, and the name
"complete convergence theorem") are in the 3.1 sense and are correct.

## F03 (P2) — applied

Changed: 4.3 "exact sequential colimits, `colim_j H^n(q ≤ j) ≅ H^n(q ≤ ⊤)`" → "sequential
colimits, `colim_{j ≥ q+1} H^{n−1}(q+1 ≤ j) → H^{n−1}(q+1 ≤ ⊤)` epi", with the proof and an
epi-not-iso witness. 5.4 now assumes exhaustiveness on `K^{n−1}` and `K^n` only and states its
route, and its Check names `K^{n−1}`. The plan entries for 4.3 and 5.4 match.

Evidence: the repair is slightly stronger than the review proposed. 4.3 needs only that sequential
colimits exist, not that they are exact: the image of `colim → T` is the least upper bound of the
images (factorisation through a monomorphism), and the image along `δ` is left adjoint to
pullback, so it preserves least upper bounds. Exactness is used in 5.4, where it makes
`colim_j (G_j/G_{q+1})` agree with `K/G_{q+1}` on cycles in degree `n − 1`. The review's witness
is shifted to `G_j^{n−1} = ℤ` for `j ≥ q + 2`: with a constant filtration the quotient
`G_j/G_{q+1}` vanishes and its map was `0 → 0`.

## F04 (P3) — applied

Changed: the plan's locators are now in the README sentences, in parentheses at the claim: 4.2
(helle-rognes2024 line 145–152, Definition 3.6, exact-couple form), 4.5 (stacks-012K line
3202–3240, Lemma 24.13, applied through 4.4) and 4.6 (weibel1994 Theorem 5.2.12, uncertified,
applied through 3.5). stacks-012K `cited_for` now includes 4.5.

## F05 (P3) — applied

Changed: 3.4 "Lemma 24.11 (2)–(4), tag 012W;" → "…, tag 012W, in its filtered-complex form;". The
same pattern was repaired at 3.2 (Definition 24.9) and at 3.4's Euler bullet (Lemma 24.12), in the
README and in the plan locators.

Evidence: stacks-012K line 3131, 3152 and 3175 each begin with a filtered complex. Definition 24.7
and Lemma 24.8 (line 3107–3130) are stated for abstract spectral sequences, so 1.3 and 2.2 needed
no change.

## F06 (P3) — applied

Changed: the 2.3 route now regroups the page by total degree into a ℤ-indexed complex of finite
direct sums (cohomology: the `E_{r+1}(pq)`), applies the engine to it, and names Stacks' even–odd
argument as the alternative. *Needs:* adds `CategoryTheory.Limits.HasFiniteBiproducts`; the
locator reads "the page step in the proof of Lemma 24.12". The plan matches.

Evidence: Tau Ceti `CategoryTheory/GrothendieckGroup/EulerCharacteristic.lean` line 165 takes `K`
as a `CochainComplex A ℤ` with `IsStrictlyGE a` and `IsStrictlyLE b`. `HasFiniteBiproducts` was
checked at the pin (`Limits/Shapes/Biproducts.lean` line 370).

## F07 (P3) — applied

Changed: 7.4 has a new fourth Check, helle-rognes2024 Example 8.1 with `s ↦ −s`
(`A^s = ∏_{i≥|s|} k`): `E_∞ = RE_∞ = A^{+∞} = RA^{+∞} = 0`, `F^s = A^{−∞} = ∏k/⨁k`,
`W^0 = ∏k/⨁k ≠ 0`, so a model with `W := 0` fails. The plan has the new test
`whole_plane_obstruction_nonzero`.

Evidence: all values were recomputed in this roadmap's bigrading (adversarial table below).

## F08 (P3) — applied

Changed: plan target 3.7 (kind example, no tests) is deleted. The README keeps the Layer 3
Examples paragraph unchanged. The browning-sawin2020 `cited_for` changes from
`["3.7", "Layer 3 Examples"]` to `["Layer 3 Examples"]`. No plan entry referred to target 3.7.

## F09 (P3) — applied

Changed: 7.1 "(in any additive category with the products)" → "(… with the products and with the
kernel and cokernel of the product–difference maps, which lim and lim¹ need to be defined)".

Evidence: Tau Ceti `CategoryTheory/Preadditive/TowerDifference.lean` line 77 defines
`towerDifference` under `[Preadditive C]` and `HasProduct` only. The Conventions line "defined
whenever the product exists" is stated for the abelian `C` of the Conventions, where cokernels
exist, so it is correct and unchanged.

## Checks run

Dependency check (`tauceti-roadmap … gate --candidate packages/SpectralSequencesAndConvergence/design/README.md --only SpectralSequencesAndConvergence …`):

    candidate: SpectralSequencesAndConvergence is not in the merge order yet; checked as if placed after StableHomotopyKTheory (the intake inserts it when its design is accepted)
    depcheck: 240 roadmaps, 2366 edges, 0 problem(s)

There is no UPWARD and no CYCLE line. `roadmaps resolve` on the edited README reports no
cross-roadmap citation found nowhere and no Lean name found nowhere. The three earlier leads
(`DoubleComplex.*`) now resolve to DerivedModuleAlgebra §S.1, as the review recorded. `plan.json`
parses: 31 targets, 98 tests. Width and style scan of the README: no line over 100 characters, no
LaTeX delimiters, no process words, no paths.

Lean: this is the design stage and no `Suggested.lean` exists, so the `#check` elaboration does not
apply and no Lean command was run. The Mathlib names newly cited (`HasFiniteBiproducts`,
`HasColimitsOfShape`) were opened at the pin.

Sources: every locator added was read in the cached texts (stacks-012K lines 1158, 3107–3130,
3131–3143, 3152–3197, 3202–3240; helle-rognes2024 lines 81–84, 145–152, 163–247, 943–967). No new
work is cited, so there is no `needs-references.toml`.

Gate failures listed in the brief: none.

## Adversarial pass (statements added or changed)

| Statement | Instances tried | Values computed | Result | Change |
|---|---|---|---|---|
| 2.2 old bullet (degree `n` finite) | 1.4 complex, `n = 0` | nonzero in degree 0: `(0,0)` only; `Z_r(0,0) = ℓ^{r−1}ℤ`, not constant | false | replaced |
| 2.2 new bullet (degrees `n ± 1` finite) | 1.4 complex `n = 0`; ×2 example of 1.2 `n = 1`; zero sequence | degree 1 infinite, so no claim; ×2: degree 2 nonzero only at `(2,0)`, leaving target fil `0 + r ≥ 3`, giving `r ≥ 3`, as in the 1.3 Check; zero sequence: every position from `r₀` | holds | added |
| 2.2 "finite in every degree ⇒ bounded" | injective assignment; finite set `S_n` | `β(n) = max fil(S_n) + 1`, `α(n) = min fil(S_n) − 1`; `S_n = ∅` gives any bound | holds | added |
| 2.3 regrouped route | 2.3 Check `ℤ/4 →(onto) ℤ/2`, length | `T^1 = ℤ/4`, `T^2 = ℤ/2`: `−2 + 1 = −1`; `H^1 = ℤ/2`, `H^2 = 0`: `−1`; `d∘d` component `(pq, pq″)` = `d_r ∘ d_r = 0`; each `pq` has at most one successor | holds | route added |
| 2.3 engine hypothesis | engine `hrel` with `w = v` | SESs `0 → ker dⁱ → Kⁱ → im dⁱ → 0` and `0 → im dⁱ → ker dʲ → Hʲ → 0` give `w(ker dʲ) + w(ker dⁱ) = w(Hʲ) + w(Kⁱ)`; `v(0) = 2v(0)` gives `v(0) = 0` | holds when the terms are in `P` | none |
| 4.3 continuity at `⊤` (epi form) | shifted witness; ×2 complex at native `(3,−2)` | witness: `colim = ℤ → H^{n−1}(K) = 0`, epi and not iso; all `B_r = 0 = Bᵗ` since `H^n(q ≤ q+1) = 0`. ×2: `colim_{j≥−1} H^0(−1 ≤ j) = ℤ → H^0(−1 ≤ ⊤) = ℤ` iso; `B_∞ = B_3 = 2ℤ = Bᵗ` | holds; the iso form is too strong | restated |
| 4.3 "image of colim = lub of images" | subobject `S ↪ T` | `im φ ≤ S` iff `φ` factors through `S` iff each `φ_j` does; no exactness used | holds | stated |
| 5.4 new hypotheses | 4.3's non-exhaustive complex; `K = ℤ` in degree `n+1` with `F^s = 0` | first: exhaustive on `K^0`, not on `K^{−1}`; `E_∞^{0,0} = ℤ ≠ 0 = gr^0 H^0`, so it fails, as the Check says. Second: not exhaustive on `K^{n+1}`; `E_1 = 0`, `H^n = 0`, strong in degree `n`, so `K^{n+1}` exhaustiveness is unused | holds | hypotheses reduced |
| 5.4 route | `colim_j(G_j/G_{q+1}) → K/G_{q+1}` | iso in degree `n−1` (exhaustive plus exact colimits), mono in degree `n` (exact colimits); cycles in degree `n−1` agree; `H^{n−1}` commutes with exact sequential colimits, so the map is epi | holds | added |
| Conventions: two meanings of complete | Example 8.1; `ℓ`-adic `ℤ`; `ℓ`-adic `ℤ_ℓ` | 8.1: `lim¹ = 0`, meet `∏k/⨁k`: HR-complete, not 3.1-complete. `ℤ`: meet 0, `lim¹ ℓ^pℤ = ℤ_ℓ/ℤ ≠ 0`: neither. `ℤ_ℓ`: both | consistent with 3.1 | added |
| 7.4 first theorem, restated | Example 8.1; zero couple | 8.1: `lim¹ F^s = 0`, meet `= W^0 = ∏k/⨁k`, not 3.1-complete. Zero couple: meet `0 = W` | holds | restated |
| 7.5 conclusion, restated | `ℓ`-adic `ℤ_ℓ` | `E_1 = 0` for `p < 0`, so the half-plane criterion gives `W = 0`, separated, 3.1-complete: strong, as Check 1 says | holds | restated |
| 7.4 new Check (Example 8.1) | `s = −m`, `r ≥ 2m`; positions `(−m, m−1)`, `(m−1, 1−m)` | `Im^r A^{−m} = ∏_{i ≥ max(m, r−m)} k`; `ker(A^{−m} → A^{−∞}) = ⨁_{i≥m} k`; intersection `⨁_{i≥r−m} k`, `lim¹_r = ∏_{i≥m}k/⨁_{i≥m}k`. `Z_{r+1}(−m,m−1) = k^{−1}(∏_{i≥max(m−1, r−m+1)})` is `E` iff `r ≤ 2m−2`; `B_{r+1}(m−1,1−m) = k` iff `r ≥ 2m−1` | holds; half-plane criteria do not apply (degree −1 nonzero for all `s < 0`) | Check added |
| 7.1 invariance condition | telescoping for a subsequence `n_k` | `ψ(1−s) = (1−s′)π` with `(ψy)_k = Σ_{n_k ≤ m < n_{k+1}} t(y_m)`; `(1−s)ρ = ι(1−s′)`; `πρ = id`, `ψι = id`; all are componentwise finite sums | holds in additive `C` once lim and lim¹ exist | condition added |
| 3.2, 3.4, 4.2, 4.5, 4.6 locators | source lines | 3131: "Let (K•,F) be a filtered complex"; 3152, 3175, 3202: likewise; HR 145–152: image filtration of a colimit | locators accurate | text only |

## For the maintainer

- No Lean name changed and no target id moved other than the deleted plan target 3.7, which had no
  README section and which no roadmap cites. Other roadmaps that cite 4.3, 5.4, 7.4 or 7.5 by
  section are unaffected in numbering. 5.4 is now stated under weaker hypotheses (it no longer
  assumes exhaustiveness on `K^{n+1}`), and the plan reflects this.
- Ownership: the repairs introduce no new construction, carrier or comparison. The review checked
  ownership by object on the indexed heads, and the brief lists no overlaps. No new
  ownership search was needed.
- No suspicious instructions were found in the review text.
