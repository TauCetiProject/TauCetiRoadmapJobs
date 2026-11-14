# Review of KloostermanSheavesAndBesselIsocrystals (pull request #2289 at 13efcb3)

**Verdict:** accepted

## Deferred findings

- D01 — resolved: the board plan's top-level `gaps` now declares dense-convergence-detection, critical-center-rational-forms, toric-exponential-sum-hodge-bound and toric-exponential-sum-ordinarity, each with supplier and section.
- D02 — resolved: the depends-on block lists KloostermanMomentsAndPotentialAutomorphy and PadicDifferentialEquationsAndRigidCohomologyPartII; the merge-order block names kim-em, mycaule and roed-math as other authors.

## Previous findings

- none: the review of `08122a9` raised no findings of its own; the R01 and R04 it accounted for are D01 and D02 above.

## Verified sound

| Statement | Instances tried | Left-side values | Right-side values | Result; change |
| --- | --- | --- | --- | --- |
| §1.8 route: `ℓ`-adic traces by GlobalShtukasAndFunctionFieldLanglands §1.4 | `H = SL₂`, `W` standard, `a = 1`, over `𝔽₃` and `𝔽₉` | Raw `Kl₂(1)`: `−1` over `𝔽₃`, `5` over `𝔽₉`; sheaf traces `1`, `−5` | `α + β = 1`, `αβ = 3`, so `α² + β² = −5`; polynomial `T² − T + 3` | Traces of powers recover the polynomial; route holds |
| §1.8 Check, rank-two separation | Frobenius classes `{1, −1}` and `{i, −i}` | Traces over `k`: `0`, `0`; determinants `−1`, `1` | Traces over `k₂`: `2`, `−2` | Check true and discriminating |
| §1.8 Check, normalized value | `a = 1`, `q = 3` | Sheaf trace `1` divided by `√3`: `0.57735` | `1/√3 = 0.57735` | Matches "`1/√3` on both sides" |
| §1.8 `ι`-mixed input (DeligneWeightsAndPurity §8.5) | Artin–Schreier sheaf on `𝔸¹` over `𝔽₃` | Stalk eigenvalues `1, ζ₃, ζ₃²`, absolute value `1`; point sum `0` | `H^*_c(𝔸¹, L_ψ) = 0`, trace `0` | Weight-zero input; formula consistent |
| GlobalShtukasAndFunctionFieldLanglands §1.4 trace formula, as contracted | `BG_m`, `BS₃`, `B(ℤ/3)` over `𝔽₃` | Weighted counts `1/2`; `1/6 + 1/2 + 1/3 = 1`; `3 · 1/3 = 1` | `Σ_{i≥1} 3^{−i} = 1/2`; trace on `H⁰_c`: `1`, `1` | Contract wording matches the supplier statement |
| §5.2 cuspidal Newton bound (seeded) | `SL₂`, `q = 3`, `a = 1`; `α = (2+i)/(2−i)`, `q = 5` | `T² − T + 3`: slopes `0, 1`, normalized `(−1/2, 1/2)` | `ρ = (−1/2, 1/2)`; `|α| = 1` but slopes `(−1, 1)` exceed `ρ` | Bound attained; purity alone insufficient, as the Check says |
| §5.2 locator, HNY Lemma 2.1 and Remark 2.2 | `G = PGL₂`, `Ω = ℤ/2` | HNY line 637 prints p. 256; Lemma line 639, Remark line 648 | Free component values: `|Ω| = 2`, the two eigenvectors of the Check | Corrected page right |
| §2.3 locator, Zhu Lemma 20 | `H_ad = PGL₂`, `h = 2` | Lemma line 993, fibre product line 991 (p. 22); residue condition lines 958–975 (pp. 21–22) | `v ∈ 𝔤_e[z]`; condition at `∞` forces `v ∈ 𝔤_θ` constant: dimension `1` | Slice is `𝔸¹`; locator right |
| §2.4 locator, Zhu Theorem 8 and Corollary 9 | `A = K[t]`, module `A/(t)`, `χ(t) = 0` | Theorem 8 line 377 (p. 9); Corollary 9 line 435 (p. 10); `h` line 354, filtration 359–374 (pp. 8–9) | Derived fibre has `Tor₁ = K ≠ 0`; Corollary 9's proof (line 443) uses flatness there | Pages and hypothesis right |
| §2.8 locator, Frenkel–Gross Proposition 8, Corollaries 9–10 | `H = SL₃`: `dim 8`, `r = 2`, `h = 3` | Proposition 8 line 1188 (p. 27); Corollaries line 1230, 1237 (p. 28); §14 opens p. 29 | `Irr_∞ = (8 − 2)/3 = 2`, `dim V^{I₀} = 2`, `V^{I_∞} = 0`: `h¹ = 0` | Pages right |
| Scope and contract, EtaleCohomologyFoundations §§F.2.1–F.2.7, F.4.1–F.4.6 | Headings on main | Seven headings: base change, local acyclicity, lower shriek, compact support, Künneth | Six headings: normalized systems, integral and rational realizations, finite-level operation comparison | Sections exist; parentheticals match |

The adversarial rows for untouched statements, the headline theorems included, stand as in the previous review, of `08122a9`.

- Source locators checked against the text: 11 in 4 sources — Zhu lines 335–374, 377, 435, 991–993; FG lines 1188, 1230, 1237; HNY lines 639, 648; XZ lines 2932–2940 (Theorem 5.4.2(i), p. 62). All four corrected pages are right.
- Cross-roadmap citations resolved: GlobalShtukasAndFunctionFieldLanglands §§0.14, 1.4 at its open head (§1.4's trace-formula sentence and last API bullet carry the contracted hypotheses); DeligneWeightsAndPurity §8.5 at its open head; EtaleCohomologyFoundations §§F.2.1–F.2.7, F.4.1–F.4.6 on main. KloostermanMomentsAndPotentialAutomorphy and PadicDifferentialEquationsAndRigidCohomologyPartII now resolve at open heads.
- Dependency check: `depcheck: 243 roadmaps, 2197 edges, 0 problem(s)`; no UPWARD or CYCLE line; GlobalShtukasAndFunctionFieldLanglands and DeligneWeightsAndPurity precede this roadmap in the merge order.
- Gate: every check 0, `OK`. `lake env lean` on `Suggested.lean`: five `sorry` warnings, nothing else. The diff touches only `README.md`, so the Lean signatures and the previous `#check @name` comparison stand.
- Pull request text against this head: no supplier added or dropped (the three cited for the new inputs were already suppliers), no heading or declaration removed, no change outside the folder; no sentence contradicted.
- Remark (untouched text): the board package README carries red-team round-2 repairs absent here — §1.9 with gap:equal-characteristic-central-sheaves (routes of §§4.3, 6.2), gap:log-newton-semicontinuity (§5.3), the Checks at README lines 627 and 2011.
- Remark (untouched text): §5.2's locator XZ §1.3.4, pp. 7–8, is the functoriality reduction of Theorem 1.2.4(ii); XZ attributes the bound `ν ≤ ρ` at Remark 1.2.5(ii), p. 5 (XZ line 262).

Overlap check: read KloostermanMomentsAndPotentialAutomorphy, GlobalShtukasAndFunctionFieldLanglandsPartII, PadicDifferentialEquationsAndRigidCohomology and PadicDifferentialEquationsAndRigidCohomologyPartII for the objects of the changed passages; the `ℓ`-adic trace formula on stacks is owned by GlobalShtukasAndFunctionFieldLanglands §1.4 (GlobalShtukasAndFunctionFieldLanglandsPartII §4.0 consumes it the same way), the rational scheme trace formula by InverseGaloisAndArithmeticFundamentalGroups §IG.0.T3; nothing shared is owned here. GeometricSatakeAndFusion and AffineLieAlgebras own nothing the diff touches; the previous reading stands.

Source independence: changed passages only; 6 passages compared with 4 sources (Zhu, FG, HNY, XZ §4.1.12 line 1969), no run beyond names and formulas shared; largest share XZ, 96 of about 190 locators (previous count); no layer added, removed or reordered, so the contents comparison stands.

## Not verifiable

- LO-I, LO-II and Sun, the sources of GlobalShtukasAndFunctionFieldLanglands §1.4, were not opened: the new contract was checked against that roadmap's statement only.
- The uncertified sources (AS89, Wan93, Wan04, Bal82, DH35, ESDE, KatzCC) appear only in untouched passages; no changed locator needs them.

## Source issues

- **Misprint** in FG at Proposition 11, (14.1), p. 29 (arXiv v3): the source subtracts the inertia invariants at `0` twice, also in the general formula after it; it should subtract those at `0` and at `∞`, as its preceding boundary sequence gives; affects a stated result.
- **Misprint** in FG at Corollary 10, p. 28 (arXiv v3): the source gives the case as type `D_{2n+1}`, `n ≥ 4`, with group of type `B_n`; it should be `D_{n+1}`, `n ≥ 4`, whose pinned fixed group is `B_n`; affects a stated result.

## For the human reviewers

- **Licence.** BD is an unpublished author-hosted preprint, cited at `TauCetiRoadmap/KloostermanSheavesAndBesselIsocrystals/README.md:694` and `TauCetiRoadmap/KloostermanSheavesAndBesselIsocrystals/README.md:944`.
- **Scope.** The corrections to XZ in README §§3.3, 6.5, 7.6, 8.5, 9.4 and 11.1 remain; earlier reviews numerically confirmed two identities but did not establish the replacement of XZ Lemma 4.2.6 in general.
- **Not tested.** This incremental re-review did not re-examine untouched §§1.1, 4.3, 5.3, 6.2 and 9.2, which `packages/KloostermanSheavesAndBesselIsocrystals/README.md` repairs after red-team round 2, adding a §1.9 absent from this head.
