# ConstructiveFieldTheoryPhi4 design repairs

All five findings in `packages/ConstructiveFieldTheoryPhi4/reports/REV-DESIGN-ConstructiveFieldTheoryPhi4~3.md` were checked against the plan, the README and the cached sources. All five are correct and have been applied. The edits are in `packages/ConstructiveFieldTheoryPhi4/design/README.md`, `packages/ConstructiveFieldTheoryPhi4/design/plan.json` and `packages/ConstructiveFieldTheoryPhi4/sources.toml`. No target, layer, supplier or dependency edge was added or removed.

## REV-DESIGN-ConstructiveFieldTheoryPhi4~3/R01 (P1) — applied

Plan 3.7 (a): `sum_y J_xy phi_y` → `sum_{y != x} J_xy phi_y`. The diagonal is stated as ignored. Added the domain: F is C¹ with `|F| + |d_x F| ≤ C(1 + Σφ²)^k`, both in the statement and as a hypothesis. The README now gives the same explicit bound. Added two negative-control Checks to both files: the one-site case with `J_xx = 1` (0.66201 versus 1), and `F = φ + sin(exp(φ⁴))`.

## REV-DESIGN-ConstructiveFieldTheoryPhi4~3/R02 (P3) — applied

Plan 4.3 `high_temperature`: an unrestricted `chi ≤ 1/(1 − 2dJ)` → an estimate only for 0 ≤ 2dJ < 1. The consequence β_c ≥ 1/(2dJ) is now stated separately for J > 0, by applying the estimate at βJ, and β_c = ∞ for J = 0. Added a `high_temperature_domain` control (d = 1, J = 1: e² versus −1; J = ½ has a zero denominator). The README bullet was repaired the same way, since its "so β_c ≥ …" read as conditional on 2dJ < 1, and the control was added.

## REV-DESIGN-ConstructiveFieldTheoryPhi4~3/R03 (P3) — applied

Check 7.1 for independent spins: an unqualified `→ 2^{−d}∫f²` → f ∈ C_c(ℝ^d), L → ∞, and R(L) ≥ L with V_{R(L)} eventually containing every lattice sample of supp f (e.g. R(L)/L → ∞). The volume-first limit of 7.2 gives the same value. Added the tent at 3 with R = L as a negative control in both files: 0 versus 1/3, and with R = 4L the limit is 1/3.

## REV-DESIGN-ConstructiveFieldTheoryPhi4~3/R04 (P3) — applied

"Sokal (2.20)–(2.21)" → "Sokal (2.19)–(2.20), p. 327" in README §3.1 and the plan's 3.1 locator. The manifest's Sokal locator range "(2.20)-(2.30)" → "(2.18)-(2.30)". The README also cites item (a), (2.18), in §§1.2 and 4.2. Evidence: in the rendered cached PDF, p. 327 (`sokal-1982 line 414`), (2.19) is ⟨φ^A⟩ ≥ 0, (2.20) is ⟨φ^A; φ^B⟩ ≥ 0 and (2.21) defines φ^A.

## REV-DESIGN-ConstructiveFieldTheoryPhi4~3/R05 (P3) — applied

`venue = "Annals of Mathematics, July 2021, Vol. 194, No. 1 (July 2021), pp. 163-23"` → `"Annals of Mathematics 194 (2021), no. 1"`. The DOI, the arXiv v4 metadata and the locators are unchanged. No publisher page range was supplied, because none was verified from a publisher page in this round.

## Pattern sweep

- **Diagonal (R01).** Every coupling sum in both files was searched (`sum_y`, `Σ_y`, `Σ_{y`). The Hamiltonian (Conventions, 1.1), the IBP moment identity, 1.5's `J⁰` and 2.1's `J̃` already exclude the diagonal. The row norm `‖J‖ = max_x Σ_y |J_{xy}|` includes the diagonal. It is used only as an upper bound: in 1.1, `−H ≤ ½‖J‖Σφ²`, and in 3.7 (b), `Σ_{y≠x}|J_{xy}| ≤ ‖J‖`. Including the diagonal only weakens those bounds and does not falsify them, so no change was made. No other general IBP formula exists in either file.
- **Domain of a Check (R02).** No other plan Check states an estimate with a denominator or a threshold without its range. The 4.3 Checks `ising_chain_chi` and `trivial` hold for every J.
- **Missing volume condition (R03).** The other white-noise limits all sit inside a reachability scheme, where R_{n,m} → ∞ first: 7.2 `white_noise_reachable`, the 7.3 Checks on evenness and strict variance, and 8.1's white-noise exclusion. They need no change. The normalisation `⟨T_{1_Q}²⟩ = 1` in 7.1 and 7.4 needs only R ≥ L, which both state.
- **Sokal equation numbers (R04).** The other Sokal numbers were checked against rendered pp. 327–328: (2.23)–(2.24) Lebowitz/Gaussian, (2.25) FKG and (2.29)–(2.30) Messager–Miracle-Solé (item (k), p. 328). All are correct. Item (j), cited for Newman, is (2.27).

## Adversarial mathematics pass (changed statements)

| Statement | Instances tried | Values computed | Result / change |
|---|---|---|---|
| 3.7 general IBP, plan (corrected) | One site, λ = 1, b = 0, J_xx = 1, F = φ | Left ⟨1⟩ = 1. Right with y ≠ x: 4⟨φ⁴⟩ = 4·Γ(5/4)/Γ(1/4) = 1. Old diagonal-inclusive right side: 1 − 0.33798912 = 0.66201088 | The corrected statement holds; the control was added |
| 3.7 general IBP, derivation | Density ∝ exp(−λφ_x⁴ + bφ_x² + φ_x Σ_{y≠x}J_{xy}φ_y)·(rest) | ∂_x log density = −4λφ_x³ + 2bφ_x + Σ_{y≠x}J_{xy}φ_y, from −H = ½Σ_{x≠y}Jφφ over ordered pairs. With F = φ_x this reproduces 4λ⟨φ_x⁴⟩ = 1 + 2b⟨φ_x²⟩ + Σ_{y≠x}J⟨φφ⟩ | The sign and the factor ½ are consistent with the Conventions |
| 3.7 domain | F = φ + sin(exp(φ⁴)), one site, J = 0 | \|F\| ≤ 1 + \|φ\|. F′ = 1 + 4φ³e^{φ⁴}cos(e^{φ⁴}). The oscillating part of \|F′\|·density gives ∫_1^∞ \|cos t\|/t dt = ∞. Right side: 4·¼ + 0 = 1 (odd integrand, bounded by \|φ\|³) | The derivative-growth hypothesis is necessary; the control was added |
| 4.3 high temperature | d = 1; J = ¼, ½, 1 | χ = e^{2J} = 1.648721, 2.718282, 7.389056. Bounds 1/(1 − 2J) = 2, undefined, −1 | Only J = ¼ is in the range; the range is now stated |
| 4.3 β_c consequence | d = 1, J = 1; J = 0 | β_c(ρ_I, 1) = ∞ ≥ ½. At J = 0, χ(ρ_I, 0) = 1 < ∞ for every β, so β_c = ∞ | Holds for every J > 0; J = 0 is stated separately |
| 7.1 independent spins (corrected) | d = 1, tent at 3; R = L and R = 4L; L = 1, 2, 5, 50 | R = L: sampled sum 0 for every L. R = 4L: sums 1, 1.5, 3.4, 33.34 = (2L² + 1)/(3L). Normalised 0.333, 0.300, 0.309, 0.330 → 1/3 = ½∫f² | The volume condition is necessary and sufficient here; the control was added |
| 7.1 Σ for J = 0 Ising | Λ_L, d general | ⟨(Σ_{x∈Λ_L}σ_x)²⟩ = \|Λ_L\| = (2L + 1)^d | Unchanged and correct |
| 3.1 locator | Sokal p. 327, rendered | (2.19) Griffiths I; (2.20) Griffiths II; (2.21) definition of φ^A | Locator corrected |
| Sokal manifest range | Rendered pp. 327–328 | (2.18) item (a) through (2.30) item (k) | Range "(2.18)-(2.30)" |

## Sources

Read: `sokal-1982 line 400`–`line 440`, with pp. 327 and 328 rendered from the cached PDF. No passage was copied. No new source, manifest key or `needs-references.toml` entry was needed. The seven settled uncertified sources were not requested again.

## Checks run

Dependency gate, exact output (exit status 0, no UPWARD or CYCLE line):

```text
candidate: ConstructiveFieldTheoryPhi4 is not in the merge order yet; checked as if placed after RelativisticQuantumFieldTheory (the intake inserts it when its design is accepted)
depcheck: 230 roadmaps, 2065 edges, 0 problem(s)
```

- `roadmaps resolve` on the README reports "Lean names found nowhere: None." It notes that names outside TauCetiRoadmap were not checked against the pinned Lake packages on this host.
- `plan.json` parses as JSON and `sources.toml` parses as TOML. `git diff --check` is clean. No machine path, LaTeX delimiter or process narrative was added.
- No Lean elaboration or `#check @name` pass was run: this design package has no `Suggested.lean`, and no Lean names were added or changed.

## Ownership and maintainer notes

- No construction was added, so ownership is unchanged. Every repair restricts or clarifies an existing target or Check of this roadmap. No new ownership search against open pull requests was needed.
- No name that another roadmap cites has changed. Section identifiers 3.1, 3.7, 4.3 and 7.1 are unchanged.
- The publisher page range of the Annals article can be added later from a verified publisher page.
