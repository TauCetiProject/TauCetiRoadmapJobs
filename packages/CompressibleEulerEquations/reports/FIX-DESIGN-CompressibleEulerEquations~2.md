# FIX-DESIGN-CompressibleEulerEquations~2

Repair round for the design of `CompressibleEulerEquations` (round 2), resolving the seven
findings of `REV-DESIGN-CompressibleEulerEquations`. Files edited:
`packages/CompressibleEulerEquations/design/README.md`,
`packages/CompressibleEulerEquations/design/plan.json`,
`packages/CompressibleEulerEquations/sources.toml`. No `Suggested.lean` exists at the design
stage, so no Lean statement changed and the `#check` comparison does not apply.

## REV-DESIGN-CompressibleEulerEquations/F01 (P2) — applied

Verified on the witness: `n = 1`, barotropic, `(ρ, v) = (1, 3)`, `c = 2`, `ζ = (−3, 1)` gives
`σ = −3·diag(4, 1) + [[12, 4], [4, 3]] = [[0, 4], [4, 0]]`, `det σ = −16`, while
`ζ₀ + vζ₁ = 0` and `g⁻¹(ζ, ζ) = 1`. The root `ζ₀ + v·ζ′` has multiplicity `n − 1 = 0` there.
Old → new (§2.2, §3.1 identification bullet, plan 2.2.3, 3.1.1): "singular iff `ζ₀ + v·ζ′ = 0`
or `|ζ₀ + v·ζ′| = c|ζ′|`" → "singular iff `|ζ₀ + v·ζ′| = c|ζ′|`, or `ζ₀ + v·ζ′ = 0` when that root
has positive multiplicity (barotropic `n ≥ 2`; full for every `n`)". Added the witness as the
negative-control Check "Multiplicity zero" in §2.2 (and plan 2.2.3 `multiplicity_zero`), with
the companion computation that for the full system at `n = 1` the entropy row makes
`ζ₀ + vζ₁` a root (`ζ₀I + ζ₁M¹` has a zero row), so `σ` is singular there. For `ζ′ = 0` the
repaired statement still holds for every `n`: `σ = ζ₀A⁰` is singular iff `ζ₀ = 0` iff
`|ζ₀ + v·0| = c·0`.

## REV-DESIGN-CompressibleEulerEquations/F02 (P2) — applied

Verified: the §5.1 identity contains `∫⟨∂_tA⁰ W, W⟩` and the §5.3 constant contains `‖∂_tU‖_∞`;
with `A⁰ ∈ C([0, T]; Ā⁰ + Hᵏ_Λ)` only, the constant is undefined. Old → new (§5.4, plan 5.4):
added the hypothesis `A⁰ − Ā⁰ ∈ C¹([0, T]; Hᵏ⁻¹_Λ)` (so `∂_tA⁰` is bounded, as `2(k − 1) > n`),
stated the estimate as `dE_k/dt ≤ C E_k + C E_k^{1/2}‖f‖_{Hᵏ_Λ}` with `C` depending on `λ₀`,
`‖∂_tA⁰‖_∞`, `sup_t ‖A^μ − Ā^μ‖_{Hᵏ_Λ}`, `sup_t ‖B‖_{Hᵏ_Λ}`, and noted that `Aⁱ`, `B` need no
time derivative. In §7.1's route: the iterate `U^m` lies in `C¹([0, T]; Hᵏ⁻¹_Λ)`, so
`A⁰(U^m) − A⁰(Ū)` has the required regularity by the §4.3 estimates at order `k − 1`.

## REV-DESIGN-CompressibleEulerEquations/F03 (P2) — applied

Verified: for `k = 0` the bound reads `‖J_εu − u‖_{L²} ≤ Cε‖u‖_{L²}`, refuted by `cos(mx)`,
`m → ∞`. Old → new (§4.4, plan 4.4 `gain_loss`): "and `‖J_εu − u‖_{Hᵏ⁻¹_Λ} ≤ Cε‖u‖_{Hᵏ_Λ}`" →
"and, for `k ≥ 1`, …". Extended the cosine Check with the `k = 0` failure and the `k = 1`
verification `|1 − φ̂(η)| ≤ |η|∫|y|φ`, `‖cos(mx)‖²_{H¹_Λ} = π(1 + m²)`; plan test
`loss_needs_k_ge_one`. Pattern: the other `Hᵏ⁻¹` occurrences (§4.3 commutators, `1 ≤ |α| ≤ k`;
§§5.3–5.4, §7.1 with `2k > n + 2`) all have `k ≥ 1` already.

## REV-DESIGN-CompressibleEulerEquations/F04 (P2) — applied

Verified: §6.1 demands a Λ-periodic lens function and §5.2 a Λ-periodic weight; the single
cone takes `R` at `x₀` and `R − 2π` at `x₀ + 2π` for `Λ = 2πℤ`. Old → new: the moving cone of
§6.1 (plan 6.1 `movingCone`) is now the *periodised moving cone*
`φ(t, x) = max_{λ∈Λ} (R − |x − λ − x₀ − (t − t₁)w| − M(t − t₁))`, with its Lipschitz constant,
Λ-periodicity, relatively compact slices, the `Λ = 0` and disjoint-translate (`2R` below the
least nonzero period norm) cases, and the spacelike proof (a.e. the differential is that of an
attaining term, and `σ(dφ) = −σ((M − e·w, e)) ≤ 0` under dominance). The same construction
repairs the §5.2 bullet on the truncated moving cone (same defect, same fix, with the argument
written there), §6.2's sweep and §8.4 (b)'s added lens now use periodised cones, the §5.2 and
§6.1 Checks are marked `Λ = 0` where they compute single cones, and the "spacelike" monotonicity
bullet records that maxima (unions) of lenses are lenses. Plan 6.1 gets the non-example
`single_cone_not_periodic`. The reviewer's "spacelike iff each translate is" is stated as the
disjoint-translate description plus the general sufficiency; the "iff" in the Euler clause refers
to the dominance condition, as before.

## REV-DESIGN-CompressibleEulerEquations/F05 (P2) — applied

Verified at the pin: `TauCeti/Analysis/Sobolev/Wkp/Basic.lean`, module docstring, says the
derivative fields above first order carry operator norms and the `W^{k,2}` norm for `k ≥ 2` is a
Banach norm, not the Hilbert norm of `Hᵏ`; `IteratedGradient E (j+1) = E →L[ℝ] IteratedGradient E j`
(`TauCeti/Analysis/Calculus/IteratedGradient.lean`); order one is `WithLp 2 (ℝ × E)` pointwise
(`TauCeti/Analysis/Sobolev/W1p/Basic.lean`), so equal to ours. Old → new (§4.1, plan 4.1
`eq_wkp`): "equal norms in the first case" → "equivalent norms in both cases, equal in the first
exactly when `k ≤ 1`", with the reason. Added the Check `n = 2`, `k = 2`, `u = e^{−|x|²}`:
Hessian `−2I` at `0`, operator norm `2` versus multi-index root `2√2` (plan test `wkp_norm_k2`).

## REV-DESIGN-CompressibleEulerEquations/F06 (P3) — applied

Verified at the pin: `TauCeti.Wkp.normedBumpL` (ApproximateIdentity.lean:52),
`norm_normedBumpL_le_one` (:67), `lowerOrder_normedBumpL` (:107), `iteratedGradient_normedBumpL`
(:118), `tendsto_normedBumpL` (:132), `TauCeti.W1p.normedBumpL` (W1p/Mollification.lean:87);
`TauCeti.HasWeakLineDerivOn.contDiffOn_smul` (Leibniz.lean:112), `HasWeakFDerivOn.contDiffOn_smul`
(:168), `HasWeakLineDerivOn.lipschitzOnWith_smul` (:317), all with a scalar factor `ψ` smooth or
Lipschitz on the open set; `TauCeti.CircleSobolev s E` (Circle/Basic.lean:197) with
`norm_sq_eq_tsum` (:375) and `toLpₗᵢ` (Circle/Lp.lean:59). Old → new: three new "From Tau Ceti"
bullets; §4.4 says which statements are cited for `Λ = 0` and which are proved here; §4.3 and
§4.4 *Needs:* name the declarations; Scope records `CircleSobolev` as the `n = 1` full-rank case
beside IncompressibleFlows; §4.1 gets the norm-comparison Check (`cos x`: circle norm squared
`2`, here `2π`; constant `1`: `1` versus `2π`; ratios `π` and `2π`, so equivalent, not
proportional). Plan 4.1, 4.3, 4.4 prerequisites and api updated. The Tau Ceti Leibniz rules
cover one smooth or Lipschitz factor; the two-Sobolev-factor product rule of §4.3 is stated as
obtained from them by density, not as pinned.

## REV-DESIGN-CompressibleEulerEquations/F07 (P3) — applied

Verified: MinguzziCone2019 line 1737 and BarGinouxPfaffle2007 line 1006 are definitions;
Minguzzi2019 line 3718 is Proposition 3.16, eq. (3.1), `Int D⁺(S) = I⁺(S) ∩ I⁻(D⁺(S))` for closed
achronal `S`; line 1917 opens §2.11, the limit curve theorems. Old → new (§3.3 "Prove" bullets,
plan 3.3.1–3.3.3): each of compact pasts, openness, idempotence and slabs now carries a one- or
two-sentence route and says it is proved here, with Minguzzi2019 line 1917 (compact pasts) and
line 3718 (openness) as the classical analogues and the definitions kept as locators of the
notions. `sources.toml`: the Minguzzi2019 locator gains "Proposition 3.16, eq. (3.1) (§3.1)";
`cited_for` already lists 3.3.

## Checks

Dependency check (after the edits):

```
candidate: CompressibleEulerEquations is not in the merge order yet; checked as if placed after GlaubermanZStar (the intake inserts it when its design is accepted)
depcheck: 242 roadmaps, 2362 edges, 0 problem(s)
```

No UPWARD or CYCLE line. `roadmaps resolve` on the README: no cross-roadmap citation and no
Lean name found nowhere (the Tau Ceti names were verified by reading the pinned files, since the
tool does not see Lake packages on this host). `plan.json` and `sources.toml` parse. No gate
failures were listed in the brief. Ownership against open pull requests: unchanged from the
design round (the review's ownership sweep stands; this round added no new object).

## Adversarial pass on the changed and added statements

| Statement | Instances tried | Values computed | Result | Change |
|---|---|---|---|---|
| §2.2 singular iff (repaired) | barotropic `n = 1`, `(1, 3)`, `c = 2`, `ζ = (−3, 1)`; full `n = 1` same state; `ζ′ = 0` | `σ = [[0,4],[4,0]]`, det `−16`; full: `ζ₀I + ζ₁M¹` has zero third row, singular; `ζ′ = 0`: `σ = ζ₀A⁰` singular iff `ζ₀ = 0` iff `|ζ₀| = c·0` | holds in all three | as described |
| §3.1 identification (repaired) | same covector; `ζ = (−3, 1, 0)` at `n = 2`, `c = 2`, `v = (1, 0)` | `g⁻¹(ζ, ζ) = 1` not null, not singular (`n = 1`); `ζ₀ + v·ζ′ = −2 = −c|ζ′|`, null, singular | consistent with §2.2 | as described |
| §5.4 with `A⁰ − Ā⁰ ∈ C¹([0,T]; Hᵏ⁻¹_Λ)` | `n = 1`, `k = 2`: `2(k − 1) = 2 > 1` | `∂_tA⁰ ∈ C([0,T]; H¹_Λ) ⊆ C_b` | bounded, constant defined | hypothesis added |
| §7.1 iterate regularity | `U^m − Ū ∈ C¹([0,T]; Hᵏ⁻¹_Λ)`, `A⁰` smooth | `∂_t A⁰(U^m) = DA⁰(U^m)∂_tU^m`, product of `C_b` and `Hᵏ⁻¹_Λ ∩ L^∞` at order `k − 1`, `2(k − 1) > n` | in `C([0,T]; Hᵏ⁻¹_Λ)` | route note added |
| §4.4 loss bound `k ≥ 1` | `k = 0`, `cos(mx)`, `m → ∞`; `k = 1` | `|1 − φ̂(εm)| → 1`; `|1 − φ̂(η)| ≤ |η|∫|y|φ`, `π(1 + m²)` | `k = 0` false, `k = 1` holds | restricted |
| §4.4 gain bound at `k = 0` | `‖∂J_εu‖₂` | `≤ ‖∂φ_ε‖₁‖u‖₂ = ε^{−1}‖∇φ‖₁‖u‖₂` | holds for every `k` | none |
| Periodised cone: lens function | `n = 1`, `Λ = 2πℤ`, `t = t₁`, `x₀`, `x₀ + 2π` | both values `R`; Lipschitz constant `1 + |w| + M`; slices: union of balls of radius `R − M(t − t₁)` | Λ-periodic, relatively compact mod `Λ` | definition replaced |
| Periodised cone: spacelike | attaining term, unit `e`; `M − e·w + w·e = M ≥ M|e|` | `σ(dφ) = −σ((M − e·w, e)) ≤ 0` | spacelike under dominance | proof recorded |
| Periodised cone: max differential | `max(φ₁, φ₂)` differentiable at `p`, `φ₁(p) = max(p)` | `max − φ₁ ≥ 0`, minimum at `p`, derivative `0` | `d max = dφ₁` | argument recorded |
| Periodised cone, disjoint translates | `Λ = 2πℤ`, `R < π` | balls of radius `≤ R` about `x₀ + λ`, centres `2π` apart | pairwise disjoint | case stated |
| §6.1 Check thresholds with `Λ = 2πℤ` | `v₀ = 3`, `c₀ = 1`, `R < π` | each translate has the single cone's differential; static `M ≥ 4`, moving `M ≥ 1` | unchanged thresholds | Check extended |
| §8.4 (b) added lens with `Λ ≠ 0` | `2ε` below least period norm | translates of `{ψ > 0}` disjoint; `Ũ` on translates of `N` by hypothesis | periodised lens admissible | route reworded |
| §4.1 norms versus `Wkp`, `k = 2` | `u = e^{−|x|²}`, `n = 2` | Hessian `−2I`: operator norm `2`, multi-index root `2√2` | differ, equivalent | claim corrected |
| §4.1 norms versus `Wkp`, `k ≤ 1` | `k = 1`: `WithLp 2 (ℝ × E)` pointwise, `p = 2`; `k = 0` | `(∫u² + |∇u|²)^{1/2}`; `L²` | equal | stated |
| §4.1 circle comparison | `cos x`, `T = 2π`, `c_{±1} = 1/2`; constant `1` | circle `2·4·(1/4) = 2`, here `π + π = 2π`; circle `1`, here `2π`; weight ratio `(1 + |m|)²/(2π(1 + m²)) ∈ [1/(2π), 1/π]` | equivalent, not proportional | Check added |
| §4.4 Tau Ceti citations | `ContDiffBump` radial nonnegative; `p = 2 ≠ ∞` | bump even and nonnegative as §4.4 requires; `hp : p ≠ ∞` satisfied | citations apply | cited |
| §4.3 Leibniz citations | `ψ` smooth or Lipschitz on `Ω`, `u` weakly differentiable | `ψu' + (∂_vψ)u` | one-smooth-factor form only; two Sobolev factors by density | scope stated |
| §3.3 openness route | `q_m → p ∈ D⁺_D(S)`, inextendible curves from `q_m` missing `S` | limit curve from `p` meets `S` at `t₀`; equi-Lipschitz curves from `q_m` enter a compact neighbourhood in `D` of that point; inextendibility forces ending at `t₀` in open `S` | contradiction | route recorded |
| §3.3 compact pasts route | unbounded or escaping `q_m ∈ J⁻_D(p)` | limit curve inextendible, misses `S` | contradiction with `p ∈ D⁺_D(S)` | route recorded |
| §3.3 slab route | curve on `(a, t_p]`, `a > t₀` | `|x(t) − x_p| ≤ (t_p − a) sup(|v| + c)`, limit at `a`, local existence extends | extends to `[t₀, t_p]` | route recorded |

## For the maintainer

- No name cited by another roadmap changed; this roadmap has no consumers on main.
- Scope now records two full-rank special cases of `Hᵏ_Λ` (IncompressibleFlows' torus spaces
  and Tau Ceti's `CircleSobolev` for `n = 1`), neither used here.
- The periodised moving cone replaces the single moving cone everywhere a lens or weight is
  needed for `Λ ≠ 0`; for `Λ = 0` nothing changes.
- The hypothesis `A⁰ − Ā⁰ ∈ C¹([0, T]; Hᵏ⁻¹_Λ)` of §5.4 is what §7.1's iteration supplies; no
  other consumer of §5.4 exists in the roadmap.
