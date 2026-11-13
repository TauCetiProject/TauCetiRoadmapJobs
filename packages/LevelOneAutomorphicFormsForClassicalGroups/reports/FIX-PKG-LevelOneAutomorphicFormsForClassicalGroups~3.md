# Repair of LevelOneAutomorphicFormsForClassicalGroups (package, round 3)

Findings of `reports/REV-PKG-LevelOneAutomorphicFormsForClassicalGroups~2.md` (one review; ids as there).
Files changed: `packages/LevelOneAutomorphicFormsForClassicalGroups/README.md` and `sources.toml`.
`Suggested.lean`, `metadata.toml` and `design/plan.json` are unchanged (no Lean statement, name or
supplier gap changed).

## R01 (P2) — applied

Verified: AnalyticNumberTheoryPartI §1.8 needs roots `≤ p^c`; AutomorphicLFunctionsAndLocalFactors
AL.3.3.8 gives only `|α| < p^(1/2)`. Contract `weil_test_function(c,F)`, "`c = 0`" →
`WeilTestFunction c F`, `c = 1` via AL.3.2.3 + AL.3.3.8. §2.1 now proves admissibility for every `c ≥ 0`
(+ `exp(−|x|)` Check). §2.6 restricts zeros to `0 < Re s < 1` by AL.3.6.2–3; Needs, Scope, Layer 2
Dependencies updated.

## R02 (P1) — applied

§2.9 API: "diagonal entry is `A_F/m_i − J_F(U_i²)`" → full `A_F/m_i − J_F(U_i²) − (B_F/4)δ_i(1 − ε(U_i²))`,
reducing to the short form only when `δ_i = 0` or `ε(U_i²) = 1` (in particular a self-dual realized class,
§1.8). Negative-control Check `U₁ = I₀`, `δ₁ = m₁ = 1`: difference `−B_F/2`. Needs gains §1.8. No other
place stated the short diagonal.

## R03 (P1) — applied

§4.4: "`P ↦ P^−` is an involution of `P(G)`" → only for `d_G` even (`Sp_{2n}`, `SO_{2n}`), with the
parity proof (`a₁ + a₂ ≡ d_G`, `a₂` even ⇒ `a₁` even); for `SO_{2n+1}` no map, `∼` is equality. New
Check: `(X−1)³ ∈ P(SO₃)` negates to `(X+1)³ ∉ P(SO₃)`; `Sp₂` control `(X−1)² ↦ (X+1)²` stays inside.

## R04 (P1) — applied

§5.1 restated: fixed `δ, m, ℓ`, cutoff `c ≥ A_{F_ℓ}/m`, known set `S`, each `S_U ⊂ S`; conclusion:
for `U ∈ D \ R` no `m` distinct classes outside `S` with parameter `U` (self-dual if `δ = 1`), proved
via §§2.8, 2.17. New API bullets, Needs §2.8, negative-cutoff Check (`c = −1`, `C = R = S = ∅`).

## R05 (P2) — applied

§2.19: strict inequality only for the first family `0 ≤ n ≤ 12` and the second `1 ≤ n ≤ 12`; `n = 0`
(parameter `1`) settled by rank one. §5.8: exclude `V \ {A}`, retain `A`, uniqueness from §5.7, no
existence; count Check. §7.7: branch `Δ₁₁[12] ⊕ [25]` separated before the three-block restriction;
dimension-49 Check. Final classifications unchanged.

## R06 (P1) — applied

Verified CL14 III §2 Proposition 2.3 (CL14 line 2349) and the `T₂` matrix (lines 2405–2407), ratio
`405/286` (line 2470). §6.3: self-adjointness now for `([L]|[M]) = |O(L)|δ` on the free basis, the
reciprocal (mass) weights on the dual function space, duality named. Check rewritten: cross terms
`12870·405u = 18225·286u = 5212350u`; reciprocal weights give `286/(9u) ≠ 18225/(286u)`.

## R07 (P2) — applied

Verified main `TauCetiRoadmap/CFSGBasicProperties/README.md` P2-L owns the Golay-automorphism/`M₂₄`
equivalence and the Conway-coordinate comparison with norm scaling. §8.4 "define `M₂₄` … Prove: its
order …", "(compared with Rank24LatticeConstructions Layer 6)" → both imported from CFSGBasicProperties
P2-L; order `244823040` taken from SporadicOrders Layer 1. Scope, the P2-L contract and §8.4 Needs updated.

## R08 (P3) — applied

§2.11 Check "omitting `I = {1}` … no candidate" → omitting both singleton faces leaves none; and for
`β = diag(0, 1)` (`μ = 0` on `{1}`, face `{1,2}` ineligible since its least eigenvector `(1,0)` has a
zero coordinate) omitting `{1}` gives the wrong value `1`.

## R09 (P3) — applied

§2.1 Check: triangle transform `sin²(2πξ)/(πξ)²` stated for `ξ ≠ 0` with removable value `4` at `0`;
on `iℝ`, `sinh²(2πy)/(πy)²` for `y ≠ 0` and `4` at `0`, positive throughout; totalized `0/0` noted as
contradicting the integral `4`.

## R10 (P3) — applied

§4.7 hyperbolic-plane Check: the formulas `Q(−1) = (1+t)²/t`, `Q(1) = −(1−t)²/t` now require `t ≠ ±1`;
`t = 1` gives `(a,b,Q) = (2,0,1)`, `t = −1` gives `(0,1,1)`, both with `(Q(−1),Q(1)) = (1,1)`; the
unfactored values `(4,0)`, `(0,4)` recorded as the wrong reading.

## R11 (P3) — applied

§6.4 Check "breaks `Φθ_g = θ_{g−1}`" → rescaling all genera by `1/|O(L)|` preserves the Siegel-operator
relation (both `E₈` genus-one constants `1/696729600`) but violates `θ′₀[L] = 1` and constant
coefficient `1`.

## R12 (P3) — applied differently

Tables swapped (§7.8 → Table 6, §7.9 → Table 5; CT20 lines 2373, 2411); §3.12 → (5.2.8), (5.2.10),
congruences (5.2.9); §3.14 → unnumbered EP display, §1.4 p. 8 (lines 339–342); manifest
`(5.2.1)-(5.2.12)` → `(5.2.1)-(5.2.10)`. Differently: §3.11 cites (5.2.4)–(5.2.7), since it also
proves `r + 2e₁ + 2e₋₁ = n`, which is (5.2.4) (line 1872).

## Pattern search (other occurrences)

- R01: the only `c = 0` / `weil_test_function` uses were the contract, §2.1 and §2.6; all changed.
- R02: §§2.13, 2.15, 2.17 and the Layer 2 Examples use the full entry already (`−J_F(I₁₇) − B_F/2`).
- R03: no other "involution" claim; §4.5's `e_P` and §4.9's counts use `∼`, unchanged.
- R04: §2.18 states covers at a cutoff only; consumers §§5.3, 5.4 (`A/2`, `A`), 5.8 and 5.9 (full
  enumeration) satisfy `c ≥ A/m`.
- R05: §5.6 and §5.7 already retain their exceptions (`U_exc`, the 181 elements).
- R06: "mass-weighted" occurred only in §6.3; §6.7's `|O(L)|⁻¹` normalization is CT20 (5.4.1) on
  functions and agrees.
- R07: §8.6 and §8.5 use only the Leech lattice and `O(Leech)`, already imported.
- R12: other table locators (Tables 2–3 in §4.9, Table 4 in §§4.11, 4.13) checked against CT20 lines
  1144, 1284, 1317: correct.

## Checks run

- `lake env lean packages/LevelOneAutomorphicFormsForClassicalGroups/Suggested.lean` from the content
  checkout: exit 0, exactly four `declaration uses 'sorry'` warnings (lines 80, 123, 136, 148), nothing else.
- `#check @name` for all eight declarations in one scratch file, elaborated once: every elaborated
  type keeps all its hypotheses and agrees with its README statement; nothing changed (no Lean edit).
- Dependency check (`gate --depcheck … --movable --content …`):

  ```text
  depcheck: 236 roadmaps, 2150 edges, 0 problem(s)
  ```

  No UPWARD, CYCLE or moved line.
- Full package gate on a scratch copy (no git, no content checkout): every check 0 except `git=1`
  (scratch is not a repository) and `depcheck=1` with
  `UPWARD: LevelOneAutomorphicFormsForClassicalGroups (#370) -> SporadicOrders (#393) at README lines [371, 2730, 2958]`.
  That line is a false positive of running without `--content`: SporadicOrders is on main
  (`TauCetiRoadmap/SporadicOrders` in the content checkout), and the configured depcheck above reports 0.
- `sources check` on the manifest: 0 problems. No `needs-references.toml` needed: every source used is
  cached (CT20, CL14) and every supplier was read.
- `roadmaps resolve` on the README: no cross-roadmap citation or Lean name found nowhere
  (`WeilTestFunction` resolves to AnalyticNumberTheoryPartI §1.3 on main).
- No gate failures were listed in the brief.

## Adversarial pass on new and changed statements

| Statement | Instances tried | Computed values | Result / change |
|---|---|---|---|
| §2.1 admissibility for every `c ≥ 0` | `g` of §2.2 on `[−1,1]`; `exp(−|x|)` at `c = 0, 1`; `F = 0` | `g` even, `g′(0) = 0`, `q(x) = (g(x)−1)/x → 0`, `q = −1/x` for `|x| > 1` (variation `1` per side); `exp(−|x|)e^{(1/2+ε)|x|}` integrable for `ε < 1/2`, `exp(−|x|)e^{(3/2+ε)|x|} = e^{(1/2+ε)|x|}` not | Adapter holds; negative control added |
| §2.1 triangle Check | `ξ = 0, 1/2, iy`, `y → 0` | `∫(1_{[−1,1]})² = 2·2 = 4`; `sin²(π)/(π/2)² = 0`; `sinh²(2πy)/(πy)² → 4π²y²/(π²y²) = 4` | Removable value `4` (R09) |
| §2.6 with `c = 1` | unitary complementary-series roots `p^{1/4}, p^{−1/4}` for `π = π′`; `π = π′ = 1`; strict bound | tensor roots `p^{1/2}, 1, 1, p^{−1/2}`: max `p^{1/2} > 1 = p^0`, `< p = p^1`; trivial pair roots `1 ≤ p`; JS strict gives `< p` | `c = 0` fails, `c = 1` holds; zero range `[−1,2]` ∩ zeros = `(0,1)` by AL.3.6.2–3 |
| §2.9 diagonal | `U = I₀, δ = m = 1`; `U = I₁₁` (Δ₁₁); `U = e + I₂₂` (Sym²Δ₁₁); `δ = 0` | `ε(2+2e) = i² = −1` → extra `−B/2`; `ε(I₂₂+1+e) = i²³·i = 1`; `ε(U²) = 1·(−i)²·i⁴⁵·i = 1`; `δ = 0` no term | Full formula kept; short form only when `ε(U²)=1` or `δ=0` |
| §2.11 Check | `[[1,2],[2,1]]`; `diag(0,1)` | singletons: `λ = 1` each, both eligible; `diag(0,1)`: `{1}` → `0`, `{2}` → `1`, `{1,2}` least eigenvector `(1,0)` ineligible; `μ = 0`; without `{1}`: `1` | New Check discriminates (R08) |
| §2.19 | first family `n = 0` (`I₁`, rank 2); second `n = 0` (`1`), `n = 1` (`e + I₂`) | `J(1) ≤ A` by §2.8 (trivial class), so `J(1) > A` false; `det(e + I₂) = e·e³ = 1`, rank 3 | `n = 0` second family by rank one |
| §4.4 negation | `SO₃`: `(X−1)³`; `SO₅`: `Φ₁Φ₄²`; `Sp₂`; `SO₄`: `Φ₁²Φ₃` | `(X+1)³`, `a₂ = 3`; `Φ₂Φ₄²`, `a₂ = 1`; `Φ₁² ↔ Φ₂²`, `Φ₃ ↔ Φ₆`, `Φ₄` fixed (quotient 3); `Φ₂²Φ₆`, `a₂ = 2` | Odd degree not closed; even degree closed |
| §4.7 Check | `t = 2, p = 3`; `t = 1`; `t = −1` | `Q(−1) = 9/2`, `v₃ = 2`; `Q(1) = −1/2`, `v₃ = 0`; `(a,b,Q) = (2,0,1)`, `(0,1,1)`, values `(1,1)`; unfactored `(4,0)`, `(0,4)` | `t ≠ ±1` required (R10) |
| §5.1 | `c = −1`, `C = R = S = ∅`; `m = 1, c = A`; `m = 2, c = A/2` | PD form values `≥ 0` > `−1`, trivial class unclassified; `J(1) ≤ A ≤ c` puts `1` in `C`; two classes give `J ≤ A/2 ≤ c` | `c ≥ A/m` excludes the vacuous cover (R04) |
| §5.8 | `A`; `U_exc`; `V \ {A}` | `dim A = 8·2 = 16`; `A ≠ U_exc` (`U_exc` has `I₁₃`); `|V \ {A}| = 180`; retained count `1` | At most one class at `A`, no existence |
| §6.3 pairing | `E₈`, `p = 2`; rank 16, `T₂` | `c₈(2) = (2⁷−1) + 2³ = 135`; columns `20025 + 12870 = 18225 + 14670 = 32895 = c₁₆(2)`; `12870·405 = 18225·286 = 5212350`; `12870/405 = 286/9 ≠ 18225/286` | Automorphism weights on free basis (R06) |
| §6.4 Check | `E₈`, scaled family | `|O(E₈)| = 696729600`; `Φθ′₁ = θ′₀ = 1/696729600` both sides; constant `1/696729600 ≠ 1` | Constant coefficient, not `Φ`, fixes scale (R11) |
| §7.7 | `Δ₁₁[12] ⊕ [25]`; `Δ₁₇[8] ⊕ [9] ⊕ [7] ⊕ [1]` | dimensions `24 + 25 = 49 = 2·24+1`, `16+9+7+1 = 33 = 2·16+1`; three-block list hits `0` and `1` | Branches separated |
| §8.4 import | `M₂₄` order | `244823040` from SporadicOrders Layer 1; P2-L supplies the equivalence | Same value, single owner |
| §3.11–3.14 locators | CT20 lines 1872–1925, 339–342, 392 | (5.2.4) is `r+2e₁+2e₋₁=n`; (5.2.5)–(5.2.7) even generators; (5.2.8), (5.2.10) odd; (1.4.1) is `EP = T_geom` | Locators corrected |

## Ownership, suppliers and overlaps

- No new object is introduced. New supplier citations: AutomorphicLFunctionsAndLocalFactors §§AL.3.2.3,
  AL.3.3.8 (a new roadmap in an open pull request, earlier in the merge order; read at its head) and the
  P2-L identifications of CFSGBasicProperties (on main). Both were suppliers already, so no new edge.
- R07 removes a duplicate ownership. This roadmap now owns only the orientable-orbit theorem, the
  average `M₂₄` polynomial, `N = 2¹²M₂₄`, the forms `ω_g`, `Q_g` and the Leech theta series.
- `overlaps.md` lists no conflicting heads and no dropped ids. No id of this README was renumbered or
  deleted. No Lean name changed. No supplier gap was added: plan and README still agree on the eight
  slugs.

## Notes for the maintainer

- `design/plan.json` (outside the editable `gaps` list) still carries the old CT20 locators: Tables 5/6
  swapped, "(5.2.9)–(5.2.12)", "(1.4.1)" for the EP definition. Its page numbers are those of the
  published version. The README and the manifest now use the HAL numbering recorded in `version_note`.
- Running the package gate without `--content` reports a false UPWARD edge to SporadicOrders. The
  configured depcheck with the content checkout is clean.
- No suspicious instructions were found in the review or the fetched texts.
