# FIX-PKG-ModularIwasawaMainConjecturesPartII~5

Findings of `REV-PKG-ModularIwasawaMainConjecturesPartII~4` (two, both P2). Both are right, and both are applied. Files changed: `packages/ModularIwasawaMainConjecturesPartII/README.md` and `packages/ModularIwasawaMainConjecturesPartII/sources.toml` (new locators only). `Suggested.lean`, `metadata.toml` and `design/plan.json` are unchanged. No new supplier gap was needed.

## REV-PKG-ModularIwasawaMainConjecturesPartII~4/F01 (P2) — applied

§2.3: "`a` prime to the ramification" → "`a` prime to `f` and to the primes ramified in `K′/K`". A sentence now says that Kato's (15.3.3) omits coprimality, because `ann(α mod aE) = (f : a) = f·(a + f)⁻¹`. The condition is carried into the Artin-action API bullet. New Check: negative `a = (1 + i)`, positive `a = (5)`, both for `f = (1 + i)³`.

Verification. Kato line 5235 asks only that the prime divisors of `a` be unramified in `K′`. The witness holds: for `f = (1 + i)³`, `K(f) = K` (the existing Check). With `a = (1 + i)`, `ann(α mod E[a]) = {x : xa ⊂ f} = (1 + i)²`, while `σ(α) = α` has annihilator `(1 + i)³`, so no pointed `O_K`-linear isomorphism exists.

Other occurrences, all repaired the same way:
- §2.4, Galois-action bullet: now "for `c` prime to `f`".
- §2.5 route: now sums over ray classes of modulus `f`, represented by `c` prime to `f`.

Already correct: §3.1 (`J_a = η_a ∘ q_a` with `a` prime to `f`, which also covers ramification in `K(f)/K`), and the auxiliary ideals of §§2.4, 2.6 and 3.2 (prime to `6f` or `6pf`). The unpointed ideal isogeny of ComplexMultiplicationAndExplicitReciprocity §1.2 is kept separate; the pointed action is the restricted statement.

## REV-PKG-ModularIwasawaMainConjecturesPartII~4/F02 (P2) — applied

§5.1 now starts from any one-dimensional height-one formal group `F` over `Ô`. Its CM case requires `E` over `K′` with good reduction at a place `𝔓 | 𝔭` that is unramified over `𝔭`. Height one is cited from Deuring's criterion (ComplexMultiplicationAndExplicitReciprocity §5.1). Existence comes from canonical pairs of modulus prime to `p`. New Checks: `y² = x³ − 25x` (additive at 5) as the negative control, `y² = x³ − x` as the positive one.

Verification. For `y² = x³ − 25x`: `c₄ = −48·(−25) = 1200` and `Δ = −16·4·(−25)³ = 10⁶`, so `v₅ = (2, 6)`. The model is minimal, its reduction `y² = x³` is cuspidal, and the reduced formal group is additive, with `[5] = 0` against `T⁵` for `Ĝ_m`. For `y² = x³ − x`: `Δ = 64` and `#E₀(𝔽₅) = 1 + (1+1+2+2+1) = 8`, so `a₅ = −2` and the reduction is ordinary. Yager lines 102–109 assume good reduction above `p` separately from splitting.

Other occurrences, repaired:
- Second paragraph of §5.1 ("a CM curve over `K₀` with good reduction"): now refers to the same unramified good-reduction place. A curve over a `K₀` that is tamely ramified at `𝔭`, such as `K(μ₅)`, would not have its formal group over `Ô`.
- Inert Check of §5.1: now assumes good reduction. "Over `ℤ_p`" is corrected to "over the integers of the completion, which contain `ℤ_{p²}`", with the supersingular reduction cited.
- Scope bullet of Layer 5, and the generality clause of the NoncommutativeAndEquivariantIwasawa deferral.
- §8.6 is untouched: its endpoint keeps "no hypothesis of … good reduction".

Same pattern in §3.3, repaired. The route said, after Kato lines 5492–5494, that the curve of the canonical pair has good reduction everywhere over `K(g)`, `g = p^m f₀`. That is false when `g` is a power of one prime, for example `K = ℚ(i)`, `p = 2`, `f = (1 + i)³` (`ψ` the character of `y² = x³ − x`). There the inertia at `(1 + i)` acts through all of `μ₄`. Three changes repair it:
- A new API bullet in §2.3 states the reduction criterion for canonical pairs, as an "if and only if": good reduction above `𝔩` holds exactly when the units inject modulo the part of `f` prime to `𝔩`. The route is the main theorem of CM plus Néron–Ogg–Shafarevich.
- The §3.3 route first passes to `f𝔮`, with `𝔮` prime to `6pf`. It descends through the norm relation of §2.6 and the nonzero Euler factor `1 − ψ(𝔮)⁻¹χ(𝔮) = 1 − ψ̄(𝔮)χ(𝔮)N(𝔮)^{−r}`.
- Checks are added in §2.3 (`y² = x³ − x` with `α = (i, 1 − i)`) and in §3.3 (`𝔮 = (2 + i)`, Euler factor `(6 + 2i)/5`).

## Checks run

- `lake env lean packages/ModularIwasawaMainConjecturesPartII/Suggested.lean` from the content checkout: exit 0, no output, no warnings. No `TauCeti.*` import, so no targeted build was needed.
- Binder audit: `Suggested.lean` declares nothing (its docstring names each headline as not statable at the pins, unchanged). There is no declaration to `#check @name`, so no elaborated type could differ from its README statement. Nothing changed.
- Dependency check (`gate --depcheck … --movable`), exact output:

```text
depcheck: 236 roadmaps, 2152 edges, 0 problem(s)
```

  There is no UPWARD, CYCLE or moved line. The new suppliers named are NeronModelsAndSemistableAbelianVarieties §5.1 (already cited in §3.3, now also in §2.3, Layer 2 Dependencies and the supplier contracts) and ComplexMultiplicationAndExplicitReciprocity §5.1. Both are earlier in the merge order.
- `roadmaps resolve` on the README: no cross-roadmap citation found nowhere, and no Lean name found nowhere.
- No gate failures were listed for this round.

## Adversarial pass

| Statement | Instances tried | Values computed | Result / change |
|---|---|---|---|
| §2.3 `η_a` with `a + f = O_K` and `a` unramified in `K′` | `K = ℚ(i)`, `f = (1+i)³`, `K′ = K`; `a = (1+i)`, `a = (5)`, `a = O_K` | `(f : a)`: `(1+i)²` ≠ `f`; `f` (as `5 − 1 = 4 = −(1+i)⁴`); `f`. The `[5]`-induced map sends `α ↦ 5α = α` | Unrestricted form refuted by `a = (1+i)`; restricted form passes. Applied |
| §2.3 annihilator formula `(f : a) = f·(a+f)⁻¹` | `f = (1+i)³`, `a = (1+i)`; `a = (1+i)³`; `a` coprime | `(1+i)²`; `O_K` (the point dies); `f` | Matches `{x : xa ⊂ f}` in all three |
| §2.3 reduction criterion (iff) | `f = (1+i)³` at `𝔩 = (1+i)` and at odd `𝔩`; `f = (3)` in `ℚ(i)` at `(3)`; `ℚ(√−2)`, `f = (3) = 𝔩𝔩̄` | `f′ = O_K`: all of `μ₄` occurs, so bad reduction (`y² = x³ − x`, conductor 32). `f′ = f`: `μ₄` injects, good reduction (`Δ = 2⁶`). `f′ = O_K` at `(3)`: bad. `f′ = 𝔩̄`, `±1` injects: good above `𝔩` | Both directions agree with the explicit curve. Added |
| §2.3 Check: canonical pair of modulus `(1+i)³` | `α = (i, 1−i)` on `y² = x³ − x` | `y² = −2i = (1−i)²`. Doubling: `λ = −(1+i)`, `x(2α) = 2i − 2i = 0`, so `2α = (0,0)`. `(1+i)²α = [i](0,0) ≠ O`, `(1+i)³α = O`. `[i]^*(dx/y) = i·dx/y` | Annihilator exactly `(1+i)³`, normalization correct |
| §2.4 Galois action / §2.5 route through `η_c` | `c` meeting `f` versus `c` prime to `f` | For `c = (1+i)` and `f = (1+i)³` the pointed action fails (row 1). For `c = (5)` it is `[5]`, fixing `α`. Ray classes of modulus `f` are represented by ideals prime to `f` | Condition added |
| §3.3 descent from `f𝔮` to `f` | `r = 1`, `ψ` of `y² = x³ − x`, `𝔮 = (2+i)`, trivial `χ` | `ψ(𝔮) = −1+2i` (`−2+2i = (1+i)³`). `1 − (−1+2i)⁻¹ = (6+2i)/5` and `1 − ψ̄(𝔮)/5 = (6+2i)/5`. Bound: `|·| ≥ 1 − 5^{−1/2} ≈ 0.553`, actual `≈ 1.265` | Factor matches the `L_{pf𝔮}/L_{pf}` Euler factor and is nonzero. Semilinearity sign from Conventions: `φ(Frob⁻¹x) = ψ(𝔮)⁻¹Frob⁻¹φ(x)` |
| §3.3 good reduction over `K(p^m f₀𝔮)` | non-split `p` with `f₀ = O_K` (the `ℚ(i)`, `p = 2` case); split `p`; `𝔩 = 𝔮`; `𝔩 ∣ f₀` | At `𝔩 ∣ p` the prime-to-`𝔩` part is divisible by `𝔮` (`𝔮 ∤ 6`, so `μ(K)` injects: `i − 1`, `−2`, `ζ₃ − 1` have norms 2, 4, 3). At `𝔮` it is divisible by `p^m`, `m ≥ 2`, and `μ(K)` injects mod `4` and mod `9` | Good reduction everywhere. Without `𝔮`: `f₀ = O_K` gives bad reduction (row 3) |
| §5.1 general `F` of height one over `Ô` | `Ĝ_m`; the `F(X,Y) = X + Y + XY/c` Check; formal additive group | Height 1, 1, ∞; `θ` exists, exists (`θ = cT`), does not exist | Hypothesis excludes the additive case |
| §5.1 CM case: good reduction at an unramified `𝔓 ∣ 𝔭` gives height one | `y² = x³ − x` at `(2+i)`; `y² = x³ − 25x` at `(2+i)` | `Δ = 64` (unit), `a₅ = −2 ≢ 0`, so ordinary, height 1. `v₅(c₄, Δ) = (2, 6)`, cuspidal, `[5] ≡ 0`, height ∞ | Good reduction required; the second curve is the negative control |
| §5.1 ramified place excluded | `K₀ = K(μ₅)` over `ℚ(i)`, `p = 5` (the existing §5.1 Check) | `K₀/K` totally tamely ramified of degree 4 at `𝔭`. A curve over `K₀` has its formal group over a ramified ring, not over `Ô` | "Unramified over `𝔭`" stated. The tame part is still in `Φ₀ = Frac(Ô)(μ_p)` |
| §5.1 existence of such curves | canonical pair of modulus `f` prime to `p` | `f′_𝔭 = f`, units inject, good reduction above `p`; `K(f)` unramified above `p` | Non-vacuous for every `K` and split `p` |
| §5.1 inert Check | `p` inert, good reduction | Base contains `O_{K,p} = ℤ_{p²}` (not `ℤ_p`); height 2, supersingular; division steps of degree `p²` | Corrected base ring |
| Scope bullets (Layer 5; NoncommutativeAndEquivariantIwasawa deferral) | as in §5.1 | — | Agree with §5.1 |

## For the maintainer

- Source error, new: Kato, proof of Proposition 15.9, p. 259, lines 5492–5494. It says the curve of the canonical pair over `K(g)` has good reduction at every finite place. That fails when the units do not inject modulo the part of `g` prime to a place. The smallest case is `K = ℚ(i)`, `p = 2`, `g` a power of `(1 + i)`: inertia acts through `μ₄`, so the reduction is bad and `G(v, 𝔭)` is not a `p`-divisible group. §3.3 avoids this with the auxiliary prime `𝔮`. The reviewer's (15.3.3) source error is confirmed (Kato line 5235).
- No Lean name, section number or target id changed. The existing §§2.3, 3.3 and 5.1 keep their numbers, so no citing roadmap is affected.
- Ownership. Deuring's ordinary/supersingular dichotomy is cited from ComplexMultiplicationAndExplicitReciprocity §5.1 rather than re-proved, and Néron–Ogg–Shafarevich from NeronModelsAndSemistableAbelianVarieties §5.1. Both are now in "Exact supplier contracts". The reduction criterion for canonical CM pairs is owned here, since Layer 2 owns canonical pairs. I searched by object (`roadmaps grep` for "good reduction", "Serre–Tate" and "Ogg–Shafarevich"; ComplexMultiplicationAndExplicitReciprocity §§4.1, 4.3, 5.1 read at its head). The closest result is its "canonical Gross good reduction away from the discriminant" (§4.3), which concerns Gross curves over `H`, not ray-level canonical pairs. Ownership against open pull requests was checked only through the roadmap service's index of open heads.
- `sources.toml`: Rubin91 gains the locator "proof of Theorem 11.2, p.59" and `cited_for` "2.3"; Yager's locator records the introduction's standing hypotheses. No new key, and nothing needed from `needs-references.toml`.
- No text in the review was treated as an instruction. Nothing suspicious was found.
