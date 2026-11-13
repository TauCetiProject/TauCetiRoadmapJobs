# Repair of the LocalGaloisDeformationRingsPartII package, round 2

Review answered: `REV-PKG-LocalGaloisDeformationRingsPartII` (five findings). I verified every finding against the sources, the supplier roadmaps and the pins. All five are right; F01 needed one more input than the review named. Files changed: `packages/LocalGaloisDeformationRingsPartII/README.md`, `sources.toml` and `design/plan.json` (top-level `gaps` only). `Suggested.lean` is unchanged.

## F01 (P1) — applied differently

3.7 now proves three things: cyclotomic freeness depends only on Jordan–Hölder factors; `ad(ρ̄)` is cyclotomic free for 2-generic `ρ̄`; hence so is `ρ₁^∨ ⊗ ρ₂` when `ρ₁^ss ≅ ρ₂^ss`. The route is a digit bound, and there are three new Checks. 3.8 adds injectivity of restriction on cocycles. gap:kummer-restriction-invariants adds injectivity on `H¹`. 3.9, 5.7 and 7.3 cite 3.7.

Why this differs from the suggested repair:

- **Hypothesis `p > 2` dropped.** 2-genericity already forces `p ≥ 7`: an integer `d` with `2 < d < p − 2` needs `p > 5`. The route says so.
- **Rank-two locator.** LLHLM23, Lemma 7.2.10(2), p. 107 (`LLHLM23 line 4809`) states the result in every rank. It is cited with LLHLM18, Proposition 3.9, p. 29 (`LLHLM18 line 1118`, rank three).
- **5.7 and 7.3 need more than 3.8.** 3.8 is a statement about `Hom`. The use in 5.7 (BHHMS23 line 1416, through LLHLM18 Proposition 5.11) and in 7.3 (BHHMS23 line 1827, LLHLM18 Proposition 3.12) is injectivity of restriction on `Z¹(ad ρ̄)`.
  - That statement is added to 3.8 (LLHLM18, Proposition 3.12, p. 31, `LLHLM18 line 1223`). Its route is the snake lemma.
  - The missing `H¹` input (LLHLM18, Lemma 3.10, `LLHLM18 line 1130`) is added to the existing gap.
- **Negative control corrected.** The review called `ρ̄ = ω ⊕ 1` "0-generic". It is in fact 1-generic: its presentation `μ = (p−1, 1)` has root coordinate `p − 2`.
  - The Check now uses this to show that the depth `2` cannot be lowered to `1`.
  - At `p = 7`, its twist `ω⁵ ⊕ 1` shows the same failure at the upper end of the window.

## F02 (P2) — applied

Confirmed at the supplier's head:

- §R07.4.5 defines `T(M) = (𝒪̂_{ℰ^ur} ⊗ M)^{φ=1}`, and §R07.4.39's `T_A` is induced from it. Both are covariant.
- The reviewer's computation holds: at `f = 1`, `T` gives Frobenius `α^{−1}` and `Hom_φ` gives `α`.

Changes:

- 3.3 now defines `V*_K(M) = Hom_φ(M, 𝒪̂_{ℰ^ur}/p ⊗ 𝔽)` and proves `V*_K(M) ≅ T_𝔽(M^∨)`, making it an exact anti-equivalence. It has an API bullet and the rank-one variance Check (`α` against `α^{−1}`).
- 3.4 and 3.5 cite 3.3 and §R07.4.39.
- The pattern was repaired in four more places: the Conventions, the Scope, the §R07.4.5 and §R07.4.39 contract lines, and gap:rank-two-descent-kisin-modules, which now pins `T*_dd` as the contravariant `Hom_φ` (LLHLM18 §2.3, p. 23, `LLHLM18 line 880`).

## F03 (P3) — applied

PadicLocalLanglandsForGL2Qp (at its head) declares none of `DeformationSupport.framed`, `.pstRing`, `.crystallineRing`, `HenniartType.sigma`, `.reductionSS` or `fundamentalCharacter`. Its §§0.3, 0.4 and 4.4 describe these objects in prose. All the backticked names were replaced by section descriptions, at README lines 13, 57, 59 and 60. A fifth occurrence was also fixed: the §3.4 line under the LocalGaloisDeformationRings contract ("identified with `DeformationSupport.crystallineRing`").

## F04 (P3) — applied

The hashes were removed from both headings. The pins have moved again since the review: `lake-manifest.json` now pins mathlib `1b1ccf4` and TauCeti `2fd255d`. I re-checked every cited declaration at these pins. Examples:

- `exists_isWeierstrassFactorization`: WeierstrassPreparation.lean:814
- `IsRegularLocalRing`: RegularLocalRing/Defs.lean:52
- `IsAdicComplete`: AdicCompletion/Basic.lean:57
- `notMem_maximalIdeal`: MaximalIdeal/Basic.lean:83
- `TauCeti.inertiaTameCharacter`: Tame/Character.lean:401

## F05 (P3) — applied

0.4 now cites LLHL19, Proposition 2.2.16, p. 14 (`LLHL19 line 508`) directly. It records that the source needs `d ≥ n`, i.e. `N ≥ 2` in rank two, and that at `N = 1` the conclusion is the definition of a lowest-alcove presentation. BHHMS23 Remark 2.3.5 stays as the place where the result is recalled. LLHL19 was added to References and `sources.toml`.

**Same pattern elsewhere.** Two other works were cited but missing from References and `sources.toml`:

- Kisin06: recorded `uncertified`, because the DOI resolves only to a paywalled page.
- LLHLM23: fetched from arXiv.

Both, with LLHLM18 and LLHL19, are now in References and the manifest.

## Checks

- **Elaboration.** `lake env lean packages/LocalGaloisDeformationRingsPartII/Suggested.lean`, run from the content checkout, gives exactly one message: `47:8: warning: declaration uses 'sorry'`. There is no `TauCeti.*` import, so nothing had to be built.
- **Binder check.** A scratch file with `#check @TauCetiRoadmap.LocalGaloisDeformationRingsPartII.crossing_prime` was elaborated once. The type carries `CommRing O`, `IsDomain O`, `IsDiscreteValuationRing O`, `IsAdicComplete (maximalIdeal O) O`, `Irreducible ϖ`, `0 < d` and a unit of `MvPowerSeries (Fin (n+2)) O`, and concludes `Prime (X 0 * X 1 + C (ϖ^d) * u)`. This matches README 5.3. Nothing changed.
- **Dependency check** (the brief's command):

```text
depcheck: 236 roadmaps, 2138 edges, 0 problem(s)
```

  There is no UPWARD, CYCLE or `moved:` line.
- **Citations.** `roadmaps resolve` on the revised README finds no unresolved cross-roadmap citation and no unresolved Lean name.
- **Gaps.** All ten `gaps` entries of `plan.json` match their "What … must provide" lines in the README word for word. Nothing outside `gaps` changed: a JSON comparison with `gaps` removed is identical.
- **Style scan.** No process words, LaTeX delimiters, paths or pull-request numbers.
- **Gate failures.** None were listed.

## Adversarial pass (new and changed statements)

| Statement | Instances | Values computed | Result | Change |
| --- | --- | --- | --- | --- |
| 3.7 JH-dependence | `1 ⊕ 1` vs nonsplit unramified extension of 1 by 1; `1 ⊕ ω` vs nonsplit extension | diagonals `{1,1}` both times, `ω ≠ 1` for `p > 2`: both free; `{1, ω}`: both not free | holds | stated |
| 3.7 `ad(ρ̄)` free | `f=1, p=7, μ=(3,0)` | diagonals `1,1,ω³,ω^{−3}`; `ω³` has order 2, `ω` has order 6 | free | Check |
| 3.7 hypothesis | `ω ⊕ 1`, `p=7` | presentations with coordinates `1`, `5 = p−2`: 1-generic, not 2-generic; `ω` is a diagonal | not free: depth 2 needed | Check |
| 3.7 irreducible | `f=1, p=7, s=w, μ=(3,0)` | `a₁−a₂ = 3−21 = −18 ≡ 30 (mod 48)`; cyclotomic `±8 ≡ 8, 40`; `−30 ≡ 18` | free; order `| p+1 = 8` vs `p−1 = 6`, gcd 2 | Check |
| 3.7 digits | `f=2, p=7, s=1, μ=((3,0),(4,0))` | `a₁−a₂ = 3+28 = 31 ≢ 8, 40 (mod 48)`; `δ∓1`: `2+21 = 23`, `4+35 = 39`, both `≢ 0` | free | none |
| 3.7 `p` bound | `p=5` | `2 < d < 3` is empty: no 2-generic `ρ̄` | `p ≥ 7` forced | stated |
| 3.7 normalized | `N=12` | coordinate `r_j+1 ∈ [13, p−13]`, so `2 < r_j+1 < p−2` | 2-generic | stated |
| 3.8 cocycles | `W=ω, K=ℚ_p`; `W=𝔽` | Kummer cocycle `g(p₁)/p₁` is nonzero and vanishes on `G_{K∞}`; an unramified hom is nonzero on `G_{K∞}` | hypothesis needed; consistent | Checks |
| gap `H¹` part | `W=1, p>2`; `W=ω` | only degree-`p` subextension `K(p₁)` is non-Galois (`μ_p ⊄`), so injective; Kummer class of `−p` dies | holds / excluded | gap text |
| 3.3 variance | rank one, `α=2 ∈ 𝔽₇` | `V*_K`: `2`; `T_𝔽`: `2^{−1} = 4`; `T_𝔽(M^∨)`: `2` | contravariant agrees | Check |
| 3.3 duality | `diag(α,β)` | dual matrix `diag(α^{−1},β^{−1})`; `T_𝔽` of it gives `α, β` | holds | none |
| 3.4 Check | rank-one cycle, product `α` | Frobenius `α` under `V*_K` | consistent with 3.3 | none |
| 3.5 twists | `f=2, (c,c^{−1})`; all `c` | `nr(1)`; `nr(c^f)` | holds | none |
| 0.4 | `N=1, 2, 13` | `N=1`: definition; `N=2`: `d−n+1 = 1`; `N=13`: `12` | holds | locator |
| 5.7 / 7.3 routes | normalized `ρ̄` | `ad(ρ̄)` free by 3.7, `Z¹` injective by 3.8 | inputs owned | routes |
| `crossing_prime` | unchanged | `#check` type matches 5.3 | holds | none |

## Ownership and overlaps

I searched for the same objects in the roadmaps on main, at the open heads (`roadmaps grep`) and in the board packages:

- **Contravariant realization `V*_K`** of étale `φ`-modules with finite coefficients. It occurs nowhere else.
  - FiniteFlatGroupsAndIntegralPadicHodgeTheory has the covariant `T`/`T_A` and `V_𝔖` on Kisin modules.
  - LocalGaloisDeformationRings has `T*_dd` on Kisin modules with descent.
  - This roadmap owns `V*_K` as one line of composition with duality.
- **Cyclotomic freeness.** No other roadmap states it, so this roadmap owns it.

No section was renumbered and no heading changed, so no id that other roadmaps cite was dropped. The overlap tool reports no open pull request that changes this roadmap.

## For the maintainer

- **Supplier contracts changed.**
  - gap:kummer-restriction-invariants (FiniteFlatGroupsAndIntegralPadicHodgeTheory §R07.4.24) now also asks for injectivity on `H¹` for cyclotomic-free `W`.
  - gap:rank-two-descent-kisin-modules (LocalGaloisDeformationRings §6.9) now fixes `T*_dd` as the contravariant `Hom_φ` of the étale descent.
- **Problems in LocalGaloisDeformationRings (outside this package).**
  - At its head, it attributes `DeformationSupport.*` to PadicLocalLanglandsForGL2Qp §0.4, which does not declare them.
  - Its §6.9 Check says that trivial descent gives "the supplied … étale realization", which is the covariant `T`. That is a variance tension inside that roadmap.
- **Not raised by the review.** The 7.3 route uses the framed deformation ring of `ρ̄|_{G_{K∞}}`. `G_{K∞}` does not satisfy `Φ_p`, so PadicLocalLanglandsForGL2Qp §0.4's Noetherian pro-representability does not cover it. The surjectivity argument only needs a pro-representing complete local ring.
- **Unchanged.** No name that other roadmaps cite was renamed, and `Suggested.lean` is unchanged.
