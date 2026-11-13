# FIX-PKG-LevelOneAutomorphicFormsForClassicalGroups~6

Findings of `REV-PKG-LevelOneAutomorphicFormsForClassicalGroups~5` (one review, four findings). All four
were verified against the cached legal sources and recomputed; all four are applied.

## F01 (P1) — applied

Verified. CT20 line 649, equation (2.3.4), printed p. 15, defines `J_F` with a leading minus. The §2.3
API bullet said `J_F(1 − e)` "is the integral of the difference" and dropped that minus. Recomputed
independently, in pure Python (Simpson quadrature, digamma by recurrence plus asymptotic series):
`∫_0^1 (1 − x²)³/(2 cosh(x/2)) dx = 0.2254836448`. The unsigned `t`-integral (truncated at `|t| ≤ 60`)
is `−0.2254836448`.

Old → new (§2.3): the bullet "`J_F(1 − e)` is the integral of the difference …" becomes the signed
identity `J_F(1 − e) = −∫ (Γ_ℝ′/Γ_ℝ(1/2 + 2πit) − Γ_ℝ′/Γ_ℝ(3/2 + 2πit)) F̂(t) dt`. A new API bullet
gives the closed form `J_F(1 − e) = ∫_0^∞ F(x)/(2 cosh(x/2)) dx` with its route: the recurrence, the
log-convexity bound, the identity theorem and Fourier inversion. A new signed Check uses
`F = (1 − x²)³`.

Same pattern searched: this is the only place the README describes `J_F` as an integral (`grep`
for "logarithmic derivative", `Γ′/Γ`, `Γ_ℝ′`). The route needs three Mathlib inputs, now named in the
`*Needs:*` line and under "From Mathlib", each checked at the pin with `#check`:
- `Complex.Gamma_add_one`, `Gamma/Basic.lean:312`;
- `Real.convexOn_log_Gamma`, `Gamma/BohrMollerup.lean:111`;
- `Continuous.fourierInv_fourier_eq`, `Fourier/Inversion.lean:175`.

The contract sentence "the digamma function enters only through the closed formulas of
ComputationalNumberTheory §4.17" now notes the §2.3 exception.

## F02 (P2) — applied

Verified. CT20 §2.2, last paragraph, printed p. 14 (CT20 lines 597–602), asks only for self-duality
and one weight of multiplicity one. The proof of Proposition 4.1(2), printed p. 37 (CT20 lines
1504–1507), uses exactly a simple `I_w`.

Old → new (§1.8): "a regular self-dual `π`" becomes "a self-dual `π` some weight of which has
multiplicity one", with regularity derived as a special case. A route paragraph is added: Arthur's
pairing, then isotypic orthogonality, then Schur on `I_v` or on a lone character. The Check "Regularity
is needed" is replaced by two Checks: `I₁ + 2I₂₃` is symplectic, and `2I₁` carries both kinds of form,
so no type is asserted.

Consequential repairs (pattern):

- **The type criterion's input.** It is Arthur's Theorem 1.4.2: `L(π∞)` preserves a form of `π`'s
  type. The regular version had the same gap: it cited only ModularityAndLanglandsExtensions §3.4,
  whose text (read at its head) gives the pole dichotomy and the transfer equivalence but not the
  localization. The input is the localization `ψ_v → ^LG` of ModularityAndLanglandsExtensions §3.8
  ("Localize via GL LLC to `ψ_v`", and the bullet "Localization at v has parameter
  `⊕rec(µ_(i,v))⊗ν_(b_i)`"). §3.8 is added in these places:
  - §1.8's `*Needs:*` line;
  - the ModularityAndLanglandsExtensions §3.8 supplier-contract bullet, which now names the
    localization;
  - the Dependencies of Layers 1 and 5.

  No new supplier and no new gap.
- **Standing premises.** That input is part of Arthur's classification. The new type statement and the
  same-type root number therefore carry the standing premises of the Conventions, and the Conventions
  list now names them. The level-one root-number formula stays unconditional.
- **§2.9.** It cited §1.8 for `ε(π × π) = 1`. Its remark now gives the unconditional reason:
  `ε(U²) = (−1)^{ab + (a+b+1)Σ c_v(v+1)}`, which is `1` whenever `det U = 1`. I checked this by brute
  force on 377 parameters with `det U = 1`, with no failure. Negative control: `I₀ = 1 + e` (`det = e`)
  gives `−1`, which matches the existing §2.9 Check. Layer 2 thus stays free of the premises.
- **§5.7.** The sentence "The simple odd summand … forces the symplectic type" now cites §1.8. It
  applies §1.8 to the simple weight `w/2` (`w ∈ {1, 3, 5}`, §5.4) and says that the parameter is not
  regular.
- **Other uses checked, no change needed.**
  - §5.9 Check and §5.10: regular classes, a special case.
  - §§2.5, 2.7: they use only the level-one root-number formula, which is unconditional.
  - §§3.1, 3.2 and the Layer 3 Examples: under the premises already; the type there is part of the
    parameter's definition.

## F03 (P3) — applied

Verified against BoechererNote lines 79–82 (pp. 2–3) and its table at lines 114–118 (p. 3). `ω_g` is
in the denominator, so its zeros lower the order of `R`.

Old → new (§6.12 Check): "its zeros … raise the order of `R`" becomes "each simple trivial zero …
lowers the order of `R` by one". The Check adds the genus-16 computation: `ζ(24 − 2i)` vanishes for
`i = 13, …, 16` and `ζ(12) ≠ 0`, so the order of `1/ω` is `−4`; the row total is `0`, against `8` with
the sign reversed. At genus 24 it is `−12`, total `0`, against `24`.

§8.7's table was already correct and is unchanged. No other "raise/lower the order" statement exists
in the README.

## F04 (P3) — applied

Verified. The README Summary names the §3.16 triangular relation as a Layer 3 end result. The pins
have no adelic automorphic spectrum, `(𝔤, K)`-cohomology or Arthur-parameter carrier (`grep` of the
pinned Mathlib and Tau Ceti found no `AutomorphicForm`, Euler–Poincaré or Harish-Chandra-module
declarations; Tau Ceti has only classical `HeckeSlash` modular forms).

Old → new (`Suggested.lean`, module docstring, "Not statable at the pins"): a new bullet names
`EP(G; λ) = κ(G, λ) N⊥(w(λ)) + R(G, λ)` (§3.16) and the packet contributions it rests on (§3.15),
with the missing carriers:
- the square-integrable automorphic spectrum and its `(𝔤, K)`-cohomology;
- global Arthur parameters with their real packets;
- the level-one cuspidal counts `N⊥`.

No Lean declaration is added. I rechecked the headline inventory against CT20 Theorems 1–7,
Corollary 1, §§5.4–5.5 and CT19a Theorems 1–2. Every one is stated or named in the docstring.

## Checks run

- **Elaboration.** `lake env lean packages/LevelOneAutomorphicFormsForClassicalGroups/Suggested.lean`
  was run from the pinned content checkout. It succeeded. The only messages are four `declaration uses
  'sorry'` warnings, at lines 85, 129, 142 and 154 (the four headline theorems). No Tau Ceti module
  needed building.
- **Signatures.** A scratch copy with `#check @name` for all eight declarations was elaborated once.
  The elaborated types are identical to the previous round's and match the README statements. Only the
  docstring changed; no binder was lost or added.
- **Library names.** A scratch file was elaborated with `#check` on `Complex.Gamma_add_one`,
  `Real.convexOn_log_Gamma` and `Continuous.fourierInv_fourier_eq`. All three exist at the pin with the
  stated hypotheses.
- **Citations.** `roadmaps resolve` on the README: no cross-roadmap citation and no Lean name found
  nowhere. Library names outside TauCetiRoadmap were not checked by the tool on this host; I checked
  them in Lean as above.
- **Dependency check:**

```text
depcheck: 206 roadmaps, 1912 edges, 0 problem(s)
```

No UPWARD, CYCLE or moved line.

## Adversarial pass on changed statements

| Statement | Instances tried | Values computed | Result / change |
| --- | --- | --- | --- |
| §2.3 signed identity for `J_F(1 − e)` | `F = (1 − x²)³` on `[−1,1]` | unsigned `t`-integral `−0.2254836448`; with the minus `+0.2254836448` | sign fixed |
| §2.3 closed form `∫_0^∞ F/(2 cosh(x/2))` | same `F`; `F = 0` | `0.2254836448 = 0.2254836448`; `0 = 0` | holds |
| §2.3 route, `D + D₀ = 0` | `s = 1`, `s = 2` | `D(1) = ½(ψ(½) − ψ(1)) = −log 2`, `D₀(1) = log 2`; `D(2) = log 2 − 1`, `D₀(2) = 1 − log 2` | sums `0`, `0` |
| §2.3 route, recurrences | `s = 1` | `D(1) + D(2) = −1 = −1/s`; `D₀(1) + D₀(2) = 1 = 1/s` | holds |
| §2.3 route, bound `\|D(x)\| ≤ 1/x` | `x = 1, 2` | `0.693 ≤ 1`, `0.307 ≤ 0.5` | holds |
| §1.8 simple-weight criterion | `I₁ + 2I₂₃` | dim `6`, det `e^{2+48} = 1`, `w = 23`; lone `I₁` has `det = 1`, alternating | symplectic, as stated |
| §1.8, hypothesis failing | `2I₁` | both `alt ⊗ sym` and `alt ⊗ alt` forms exist | no type asserted, correct |
| §1.8, regular cases | `Δ₁₁` (`I₁₁`); `Sym²Δ₁₁` (`I₂₂ + e`); trivial (`1`); `I₂ + 1 + e` | symplectic `w = 11`; orthogonal `w = 22`; orthogonal `w = 0`; orthogonal `w = 2` (`det I₂ = e`) | parity agrees in all four |
| §1.8, regular ⇒ simple weight | rank 4, weights `(1,0,0,−1)` | zero doubled, `±1` simple | special case holds |
| §2.9, `ε(U²) = 1` when `det U = 1` | 377 parameters `a, b, c₁…c₄ ∈ {0,1,2}`; `I₀` | 0 failures; `I₀` gives `(−1)^1 = −1` | holds; matches the §2.9 Check value `i² = −1` |
| §5.7, simple-weight use | `U_exc`, `A` of §5.8 | each has `I₁` once; CT20 lines 1498–1501 give simple `I_w` in every `U ∈ V` | §1.8 applies |
| §6.12 order of `1/ω` | `(g,n,ν) = (16,24,1), (24,24,1), (8,24,1), (12,24,1), (8,16,5)` | `−4`, `−12`, `0`, `0` (`ζ(0) = −½`), `0` | row sums `0, 0, 0, 0, 0`; reversed `8, 24` |
| Docstring §3.16 bullet | carriers at pins | no automorphic spectrum, no `(𝔤,K)`-cohomology, no Arthur parameters | correctly not statable |

## Notes for the maintainer

- **Ownership.** No new object was introduced. The level-one type criterion stays in this roadmap as a
  specialization of ModularityAndLanglandsExtensions §§3.4, 3.8 (the generic type and localization are
  imported). Ownership against open pull requests was checked through `roadmaps show`/`resolve` for
  ModularityAndLanglandsExtensions only.
- **No names changed.** No Lean name and no section id was added, renamed or dropped, so no other
  roadmap's citation is affected.
- **Untouched files.** `design/plan.json`, `metadata.toml` and `sources.toml` are unchanged: no gap was
  added, and CT20 and BoechererNote are already recorded with these locators.
- **Suspicious text.** None found in the review.
