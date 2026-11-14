# FIX-DESIGN-SchrodingerOperatorsAndSpectralTypes~5

Repair of the five findings of `REV-DESIGN-SchrodingerOperatorsAndSpectralTypes~4` (one P2, four
P3). All five were checked against the sibling roadmaps, main and the pinned libraries, and all
five hold; each is applied. Files changed: `packages/SchrodingerOperatorsAndSpectralTypes/design/README.md`
and `packages/SchrodingerOperatorsAndSpectralTypes/design/plan.json`. `sources.toml` is unchanged:
no new work is cited.

Evidence read this round:

- CongruenceSpectralGap (open head #1504) §0.2: for each congruence `Γ` it takes `N′ = 3N`, and on
  `Γ(N′)\ℍ` it proves "by Gaffney's cutoff argument" that `d*d` on compactly supported smooth
  functions is essentially self-adjoint with the maximal operator as closure. Its kernel API item
  says `Δu = 0` iff `u` is a.e. a complex constant. §0.6 states the congruence spectral
  description.
- AutomorphicSpectralTheory (open head #925) §1.16a constructs the `Γ₀(N)` realisation and proves
  essential self-adjointness of the minimal operator.
- MaassForms (open head #1717) §0.1–0.2 takes the operator from AutomorphicSpectralTheory §1.16 and
  CongruenceSpectralGap §0.2.
- `roadmaps grep -i SchrodingerOperatorsAndSpectralTypes` finds no citation of this roadmap on main
  or in any open head.
- In merge order these three are at lines 96, 156 and 157; the gate places this roadmap after
  QuantumFoundations (line 212).

## REV-DESIGN-SchrodingerOperatorsAndSpectralTypes~4/F01 (P2) — applied

Scope gains "Laplacians of congruence quotients": CongruenceSpectralGap §0.2 owns essential
self-adjointness, the maximal domain and `ker = ℂ·1` on `Γ(N′)\ℍ`; AutomorphicSpectralTheory
§1.16a owns `Γ₀(N)`. Layer 3 Examples: "3.6 gives what AST/CSG use" → the comparison (same closure,
same kernel). AutomorphicSpectralTheory, CongruenceSpectralGap and MaassForms are removed from the
README and plan consumers.

## REV-DESIGN-SchrodingerOperatorsAndSpectralTypes~4/F02 (P3) — applied

Laplacian-sign convention: added that the Summary, the QuantumFoundations entries, the Fourier
bullet and Layer 4 use Mathlib's `Δ = Σⱼ∂ⱼ²`, so `H₀ = −Δ` is Layer 3's `Δ_X` on `ℝ^d`. Added the
witness `−2πd` against `+2πd` at `0`. The Fourier bullet now reads `−Δ = −Σⱼ∂ⱼ²`. The Summary,
Layer 4's "Throughout" line and plan 4.2/4.4b restate the convention.

## REV-DESIGN-SchrodingerOperatorsAndSpectralTypes~4/F03 (P3) — applied

"the corollary Hilbert–Schmidt ⇒ compact" → OperatorIdeals OI-C14, pinned as
`ContinuousLinearMap.isCompactOperator_of_hilbertSchmidtEnergy_ne_top` (`Columns.lean:257`,
complete target). This is in the Tau Ceti contract, the 4.3 route (energy `‖V_R‖₂²‖f_R‖₂²`), the
4.3 Needs and the Layer 4 Dependencies. In the plan, the 4.3b prerequisite `OI-B32-OI-B41` → that
name plus `OI-C14`, and the supplier sections → `OI-B29-OI-B36`, `OI-C14`.

## REV-DESIGN-SchrodingerOperatorsAndSpectralTypes~4/F04 (P3) — applied

`TauCetiRoadmap.UnboundedOperators` → `TauCetiRoadmap.OperatorTheory/UnboundedOperators` in the
scope heading and the contract heading. Both gap lines now begin `What OperatorTheory/UnboundedOperators must provide`. In the plan, the supplier
entry and both `gaps[*].supplier` → `OperatorTheory/UnboundedOperators`, and all 24
`roadmap:UnboundedOperators …` prerequisites → `roadmap:OperatorTheory UnboundedOperators …`.
The gate still reports 0 problems.

## REV-DESIGN-SchrodingerOperatorsAndSpectralTypes~4/F05 (P3) — applied

1.8: "`≤ 2πm²‖C‖²_HS`, with `‖C‖²_HS = hilbertSchmidtEnergy C b`" (with `b` unbound) → for every
Hilbert basis `b` of `ℋ`, `≤ 2πm²·hilbertSchmidtEnergy C b` in `ℝ≥0∞`. Independence of `b` is
`ContinuousLinearMap.hilbertSchmidtEnergy_indep` (`Basic.lean:150`) and OI-B35, and `‖C‖²_HS`
names the common value. The square-root clause also quantifies over `b`. Contract, Needs and
plan 1.8b are updated to match.

## Pattern search (other occurrences)

- **F01.** The Motivation section said "AutomorphicSpectralTheory §4 proves the congruence case".
  CongruenceSpectralGap's scope says AutomorphicSpectralTheory's modular expansion stops at level
  one, and its own §0.6 proves the description for every congruence group. The text now reads
  "CongruenceSpectralGap §0.6 proves the congruence case, from AutomorphicSpectralTheory
  §§4.1–4.4".
- **F01, convention bullet.** It now names AutomorphicSpectralTheory §1.16a, CongruenceSpectralGap
  §0.2 and MaassForms §0.1. It records agreement of convention, not supply.
- **F02.** Every bare `Δ` was classified by hand:
  - Layers 1–3 use the nonnegative operator, including the 3.3, 3.6 and 3.10 Checks:
    `Δe^{−|x|} = −u + 2δ₀`, `Δ(χ/|x|) = 4πδ₀ + smooth`, `Δy^{1/2+it} = (1/4 + t²)y^{1/2+it}`.
  - The Summary, the QuantumFoundations entries, the Fourier bullet and Layer 4 use `Σⱼ∂ⱼ²`, for
    example 4.1's `(4π²‖x‖² − 2πd)u` and the 4.2 `d = 0` Check.
  - The PDE heat-generator domains `{u : Δu ∈ L²}` and the 4.1 norm comparison do not depend on
    the sign.
  - In the plan, 4.2 (which defines `H₀`) and 4.4b (`−Δ + V`) now carry the convention.
- **F03.** 1.8 cites OI-B29–OI-B36 (nuclear gauge and energy, correct as cited), and so does the
  Layer 1 Dependencies line. No other place cites Hilbert–Schmidt compactness.
- **F04.** The other suppliers sit where the README places them. VariationalMethods,
  HilbertModules, ComplexKahlerGeometry, PseudodifferentialOperators, SmoothBundlesConnections,
  DifferentialGeometry, RiemannianGeometry, PDE and FuchsianOrbifolds are top-level on main;
  HopfRinow is at `Completed/HopfRinow`; QuantumFoundations is an open head. Bare-name citations
  in running text ("UnboundedOperators UO-C03") are kept, as for SelfAdjointSpectralTheory.
- **F05.** `‖C‖²_HS` is also used in the 1.8 Check `2π·0²·‖C‖²_HS`, and it is now defined. The
  square-root clause had the same unbound basis and is repaired. No other
  `hilbertSchmidtEnergy` statement leaves its basis free: 4.3 says "in any Hilbert basis".

## Adversarial pass on changed statements

| Statement | Instances | Values computed | Result | Change |
|---|---|---|---|---|
| F01 comparison on `Γ(N′)\ℍ` | `Γ(6)` | index of `Γ̄(6)` in `PSL₂(ℤ)` is `72`; `12` cusps of width `6`; genus `1 + 72/12 − 12/2 = 1`; area `72·π/3 = 24π`; `dim ker` is `1` by 3.7 (one component, finite area) and `1` by CongruenceSpectralGap §0.2 | agree | none |
| F01, cusp hypothesis of 3.10 on `Γ(6)\ℍ` | `{y > a}`, `a > 1`, modulo `z ↦ z + 6` | for `c ≠ 0`, `Im γz ≤ 1/(c²y) < 1`, so the strip embeds: `w = 6`, area `6/a` | standard cusp end | none |
| F01, scope of 3.6 | `Γ₀(2)` | `(1 + i)/2` is fixed by an elliptic element of order 2: an orbifold point | outside 3.6, left to AutomorphicSpectralTheory §1.16a | Examples says so |
| F01, `N′ ≥ 3` | `Γ(2)` against `Γ(3)` | `−I ∈ Γ(2)` (torsion in `SL₂`), `−I ∉ Γ(3)` | "torsion-free, `N′ ≥ 3`" is right | none |
| F02 witness | `u = e^{−π‖x‖²}`, `x = 0`, `d = 1, 3` | `Σ∂ⱼ²u(0) = −2π, −6π`; nonnegative `Δ`: `+2π, +6π` | signs separated | added as Check text |
| F02 Fourier | `ψ = e^{−πx²}`, `ξ = 0, 1` | `𝓕(−ψ'')(0) = ∫(2π − 4π²x²)e^{−πx²} = 2π − 4π²/(2π) = 0` (numerically `−9·10⁻¹⁷`), `= 4π²·0²`; at `ξ = 1`: `4π²e^{−π}` | multiplier `4π²ξ²` for `−Σ∂²` | none |
| F02 `H₀ = Δ_X` on `ℝ^d` | `e^{i⟨k,x⟩}` | `−Σ∂ⱼ²` gives `‖k‖²`; Layer 3 Check gives `Δ e^{i⟨k,x⟩} = ‖k‖²` | agree | none |
| F03 4.3 energy | `d = 1`, `V = 1_{[−1,1]}`, `R = 1` | `‖V_R‖₂² = 2`; `‖f_R‖₂² = 1/(1 + 4π²) + arctan(2π)/(2π) = 0.24958` (quadrature agrees to 10⁻¹³); energy `0.4992 < ∞` | the hypothesis of the pinned theorem holds; `L²` is complete | none |
| F03 kernel | `T = M_{V_R}𝓕⁻¹M_{f_R}𝓕` | `Tu(x) = V_R(x)((𝓕⁻¹f_R) * u)(x)` for Mathlib's `𝓕(f*g) = 𝓕f·𝓕g`; `Σᵢ‖Tbᵢ‖² = ∫‖K(x,·)‖²dx = ‖V_R‖₂²‖𝓕⁻¹f_R‖₂²` | Parseval plus Plancherel as written | route text |
| F05 bound | `C = ⟨φ,·⟩φ`, `‖φ‖ = 1`; `C = 1` on `ℂ`; `C = 0` | energy `Σ|⟨φ,bᵢ⟩|²‖φ‖² = 1` for every `b`, both sides `2πm²`; `1`, so `∞ > 0` (Check); `0`, both sides `0` | consistent with the 1.8 Checks | none |
| F05 independence | `C = diag(1, 2)` on `ℂ²` | standard basis `1 + 4 = 5`; basis `(e₁ ± e₂)/√2`: `2.5 + 2.5 = 5` | equal, as the pinned lemma says | none |
| F05 square root | `V = diag((−1)^{n+1}/n²)`; `V = 0` | `hilbertSchmidtEnergy |V|^{1/2} b = Σ1/n² = π²/6 = nuclearENorm V`; `0 = 0` | holds | none |
| F04 paths | gate, `roadmaps resolve` | 0 problems; no citation or Lean name found nowhere | resolves | none |

## Checks run

Dependency check (the prescribed command), after all edits:

```
candidate: SchrodingerOperatorsAndSpectralTypes is not in the merge order yet; checked as if placed after QuantumFoundations (the intake inserts it when its design is accepted)
depcheck: 206 roadmaps, 1901 edges, 0 problem(s)
```

There is no UPWARD and no CYCLE line. The same output came before the edits.

`roadmaps resolve` on the edited README found no cross-roadmap citation and no Lean name missing.
The tool did not check names outside TauCetiRoadmap, so the three Tau Ceti names added this round
were checked by hand at the pin:

- `ContinuousLinearMap.hilbertSchmidtEnergy_indep`, `Basic.lean:150`, namespace `ContinuousLinearMap`;
- `ContinuousLinearMap.isCompactOperator_of_hilbertSchmidtEnergy_ne_top`, `Columns.lean:257`,
  declared `_root_`, needing `[CompleteSpace F]`;
- `ContinuousLinearMap.hilbertSchmidtEnergy`, `Basic.lean:89`, with an explicit basis argument.

Lean: at the design stage there is no `Suggested.lean`, so no `#check` file was elaborated and no
Lean command was run. No gate failures were listed for this round.

## For the maintainer

- **Ownership.** For the congruence Laplacian the owner is CongruenceSpectralGap §0.2, with
  AutomorphicSpectralTheory §1.16a for `Γ₀(N)`. This roadmap owns only the general complete-manifold
  theorem. No roadmap cites this one, so no consumer breaks.
- **Supplier path.** The plan now names the supplier `OperatorTheory/UnboundedOperators` (supplier,
  gaps and prerequisites). The gate accepts it; if the intake keys gaps by bare name, it needs the
  path form.
- **Remaining consumers.** RelativisticQuantumFieldTheory, SpectralManifolds, PositiveMass and
  RicciFlow stay, as the review allows. PositiveMass and RicciFlow are already on main, so they
  could consume this roadmap only through a later revision. Neither proves the complete-manifold
  Laplacian theorem: PositiveMass takes its form realisation from UnboundedOperators UO-D06 and
  VariationalMethods V2.3/V5.1, and RicciFlow has no `L²` Laplacian realisation. So there is no
  duplicate owner.
- **Ownership check.** Against open pull requests it was done through `roadmaps grep` and by
  reading CongruenceSpectralGap, AutomorphicSpectralTheory and MaassForms at their heads. Other
  open heads were searched by keyword only.
- No suspicious instructions were found in the review text.
