# FIX-DESIGN-EllipticCurveModularityImaginaryQuadraticPartII~2

Repair round on the design of EllipticCurveModularityImaginaryQuadraticPartII, resolving the five
findings (all P3) of REV-DESIGN-EllipticCurveModularityImaginaryQuadraticPartII. Files edited:
`packages/EllipticCurveModularityImaginaryQuadraticPartII/design/README.md`, `design/plan.json`,
`sources.toml`.

## F01 (P3) — applied

Verified: `plan.json` declares `gaps[0].slug = "acc-torsion-inertial-comparison"` (needed by 5.3) and
the README never named it. I re-checked the gap itself: AutomorphicGaloisRepresentationsPartII Layer
AG2.5 at its head (#1006, 902b706) states only characteristic-zero comparisons. A `roadmaps grep` for
`Theorem 3.1.1` finds no owner of the torsion statement on main or at any open head.
PotentialAutomorphyInfrastructure (README line 210) and CrystallineLocalGlobalCompatibilityCM §9.7
cite it as AG2.5. §9.9 depends on it through §9.7.

Old → new: the bold "Supplier obligations" bullet becomes "What AutomorphicGaloisRepresentationsPartII
must provide (gap:acc-torsion-inertial-comparison): …". The hypotheses are now completed from ACC23
§3.1 (lines 2309–2345): `p`-adic places of `F⁺` split, `S = S^c`, `K_v = GL_m(O_{F_v})` on
`R^c ∖ R`. The conclusion is the characteristic polynomial on all of `W_{F_v}`, not just inertia
(lines 2346–2355). It is used with `m = 2`, as in CN23 line 4350.

Same pattern elsewhere: §5.3 `*Needs:*` now names `gap:acc-torsion-inertial-comparison`. The Layer 5
Dependencies line names it too. The `plan.json` gap `detail` is updated to match. 5.3's
prerequisites already listed the slug.

## F02 (P3) — applied

Verified at MilneCM lines 296–301: Remark 1.6 states the converse (if `σισ⁻¹` acts as `ι` for every
`σ`, then the field is totally real or CM). Centrality follows from Proposition 1.4(b) and the
uniqueness at lines 289–290.

Old → new in §1.1: "central in its Galois group (MilneCM, Remark 1.6, p. 10)" becomes an explicit
two-line argument. For `φ: L̃ → ℂ`, `φ∘σισ⁻¹ = conj∘φ = φ∘ι`, and `φ` is injective. Locator:
"Proposition 1.4(b) and the uniqueness … noted after it, p. 10, lines 273–290". It cites
`NumberField.IsCMField.isConj_complexConj`, which I checked at the pin
(`Mathlib/NumberTheory/NumberField/CMField.lean` line 148).

Same pattern elsewhere: the `plan.json` 1.1 locator and the References entry are updated, and
`isConj_complexConj` is added to the 1.1 prerequisites. The Mathlib supplier contract and the §1.1
`*Needs:*` line now list it. The `sources.toml` MilneCM `locator` drops Remark 1.6.

## F03 (P3) — applied

Verified: `𝔽₅ˣ` has order 4, so the only cube root of unity in `𝔽₅` is `1` (computed). The
diagonal matrix lives in `GL₂(𝔽₂₅)`.

Old → new: the §3.3 Check "`ρ̄(τ) = diag(ζ₃, ζ₃⁻¹)` and the swap matrix over `𝔽₅`" becomes an
order-three tame inertia quotient with generator `M = [[0,−1],[1,−1]]` and Frobenius
`Φ = [[4,1],[0,1]]` over `𝔽₅`. I computed `M³ = 1`, `ΦMΦ⁻¹ = [[4,1],[4,0]] = M⁻¹ = M¹¹` and
characteristic polynomial `X² + X + 1`. The Check also notes that the diagonal model needs `𝔽₂₅`.
This is the `S₃` representation of `Gal(F_v(ϖ^(1/3), μ₃)/F_v)`. The `plan.json` test
`protected_semisimple_inertia` is updated. No other occurrence of a `ζ₃` in characteristic five
appears in the roadmap.

## F04 (P3) — applied differently

Verified. In the basis `(Ne₂, e₂)`, `ρ_A(φ) = [[q_vδ, z],[0, δ]]`. Residually that basis is
`(N̄e₂, e₂) = (e₁, e₂)`, so `z ≡ z̄`, the upper-right entry of `ρ̄(φ)`. Hence `z ∈ 𝔪_A` is wrong
whenever `z̄ ≠ 0`.

Differently from the suggested text: the review's basis `(Ue₂, e₂) = (e₁ + e₂, e₂)` is a slip. In it,
`U` becomes `[[2,1],[−1,0]]` (computed), not `1 + E₁₂`.

Old → new: "`z ∈ 𝔪_A`" becomes "residually this basis is `(e₁, e₂)`, …, `z − [z̄] ∈ 𝔪_A` with `[z̄]`
the Teichmüller lift; these are `x₁, x₂, x₃`". I also added the boundary Check (`𝔽₂₅`,
`ρ̄(φ) = 1 + ζE₁₂`, `ζ ∉ 𝔽₅`: `z̄ = ζ` cannot be removed, since `ζ + x ≠ 0` for every `x ∈ 𝔽₅`). It is
the `plan.json` test `uni_residual_frobenius_entry`. The ring `O[[x₁,x₂,x₃]]` is unchanged.

## F05 (P3) — applied

Verified. The headline theorems are 2.5, 6.2 and 8.1, and none is statable at the pins. Mathlib
`1b1ccf4b` and Tau Ceti `2fd255d9` have no automorphic representations of `GL₂(𝔸_K)`, no Satake or
local Langlands parameters, and no Hodge–Tate, potentially semistable or Weil–Deligne
representations. I grepped both trees: the only "automorphic" hits are a Shimura citation in
`NumberTheory/HeckeRing/Defs.lean` and Tau Ceti modular-form and lattice files. The "Langlands" hits
are Frenkel citations only. The three planned declarations are a non-headline definition, a field
lemma and a finite-group computation, i.e. padding under the acceptance-test rules.

Old → new: the "**Lean.**" paragraph now says `Suggested.lean` states no theorem. It names Theorems
2.5, 6.2 and 8.1 and the carriers each lacks. The backticked own names are gone: §1.1 opens "Prove:",
§3.1 defines "the adjoint representation `ad⁰`", and §3.2 uses `H¹(SL(2, 𝔽₅), ad⁰)`. The `plan.json`
3.2 statement uses `ad⁰`. Target ids are unchanged.

## Checks

**Dependency check** (run after all edits):

```
candidate: EllipticCurveModularityImaginaryQuadraticPartII is not in the merge order yet; checked as if placed after EllipticCurveModularityImaginaryQuadratic (the intake inserts it when its design is accepted)
depcheck: 240 roadmaps, 2387 edges, 0 problem(s)
```

No UPWARD or CYCLE line.

**Citation resolver** (`roadmaps resolve` on the edited README): three "cross-roadmap citations
found nowhere", `LeHung26, §4.4` (line 340), `OpenAI26, §9.4` (line 449) and `CaptainSude26, §4`
(line 798). All three are source locators (manifest ids followed by a section sign), not roadmap
citations: false positives, unchanged from before this round. Lean names found nowhere: none. The
resolver did not check Mathlib names on this host; I checked the one new Mathlib name
(`NumberField.IsCMField.isConj_complexConj`, CMField.lean:148) at the pin by hand.

**Files parse**: `plan.json` loads as JSON; `sources.toml` loads as TOML.

**Lean elaboration / `#check` comparison**: the package has no `Suggested.lean` at the design stage,
and after F05 the planned file declares nothing. So there is no declaration to `#check` and no
binder to compare; no Lean command was run.

**Ownership against open pull requests.** This round adds no new construction. The one object whose
owner matters, ACC Theorem 3.1.1, was searched by name and by object (`roadmaps grep` over main and
all 466 open heads). It is owned nowhere and stays a supplier gap of AutomorphicGaloisRepresentationsPartII
AG2.5, which is earlier in the merge order. The three names this round stops declaring
(`sl2AdjointRep`, `sl2Five_adjoint_restriction_unipotent_bijective`,
`isCMField_of_intermediate_cyclotomic`) are cited by no roadmap on main, at any open head, or in any
board package.

**Sources.** Every passage relied on was read in the cached texts: MilneCM lines 255–305; ACC23
lines 2290–2365; CN23 lines 4340–4392. No new source was needed and no `needs-references.toml` was
written.

## Adversarial pass on the statements added or changed

Values computed by hand and by a short script in the scratch directory (matrix arithmetic over `𝔽₅`
and `𝔽₂₅ = 𝔽₅[s]/(s² − 2)`).

| Statement | Instances tried | Values computed | Result | Change |
|---|---|---|---|---|
| §1.1 centrality of `ι` in `Gal(L̃/ℚ)` | `L̃` abelian (`ℚ(ζ₂₀)`); `S₃` field `ℚ(√−3, ∛2)`; `D₄` field `ℚ(i, ∜2)` | abelian: trivially central; `S₃` and `D₄`: conjugation is a non-central transposition / reflection, so these fields are not CM, consistent with the argument (a Galois CM field has central `ι`) | route sound; `φ` injective gives uniqueness | locator replaced (F02) |
| §1.1 `ι` preserves `E` | `E = ℚ(i,√5) ⊂ ℚ(ζ₂₀)` | `Gal(ℚ(ζ₂₀)/E) = {1, 9}` mod 20, normalized by `ι = −1`; fixed field of `ι` in `E` is `ℚ(√5)`, degree 2 below `E` | holds | — |
| §3.3 non-protected Check over `𝔽₅` | `q_v = 11`, `M = [[0,−1],[1,−1]]`, `Φ = [[4,1],[0,1]]` | `M² = [[4,1],[4,0]]`, `M³ = 1`, `M¹¹ = M²`; `Φ² = 1`; `ΦMΦ⁻¹ = [[4,1],[4,0]]`; `tr M = 4`, `det M = 1`, `det Φ = 4`; cube roots of 1 in `𝔽₅ˣ`: `{1}` | relation holds, inertia order 3, not unipotent | Check replaced (F03) |
| §3.4 residual value of `z` | `𝔽₂₅`, `q_v = 11`, `ρ̄(φ) = 1 + sE₁₂`; Tate curve with `b ∈ 𝔽₅` | `U¹¹ = U`; `ρ̄(φ)U = Uρ̄(φ)`; `s + x ≠ 0` for all `x ∈ 𝔽₅`; review's basis `(Ue₂, e₂)` turns `U` into `[[2,1],[−1,0]]` | `z ≡ z̄`, coordinate `z − [z̄]` | text fixed, Check added (F04) |
| §3.4 Frobenius identity after the fix | `q = 11`, `δ = 1`, `z̄` arbitrary | `tr ρ(φ) = (1 + q)δ` independent of `z`; `11·12² = 1584 = 12²·11` | unchanged by `z̄` | — |
| §3.4 parametrization bijective | basis `(Ne₂, e₂)` with `N e₂ = (b, −a)` | `det [[b,0],[−a,1]] = b`, a unit since `b ≡ 1`; `w = 0`, `α = qδ` forced; `δ` determined by Hensel (`p` odd) | three free coordinates, `O[[x₁,x₂,x₃]]` | — |
| Gap hypotheses at `v ∈ P` (§5.3 use) | §5.1(i), `P^c ∩ S = ∅`, `K_v = Iw_v` | 5 below `S` splits in an imaginary quadratic `F₀ ⊂ F`, so every 5-adic place of `F⁺` splits in `F = F⁺F₀`; `Iw_{v,1} ⊆ Iw_v ⊆ Iw_v`; `P^c` hyperspecial; CN reduces to neat `GL₂` level, `m = 2` | ACC §3.1 hypotheses met | gap text completed (F01) |
| Gap conclusion | full Iwahori, trivial character, `σ ∈ W_{F_v}` vs `σ ∈ I_v` | torus operators of units act as `1`, `P_{v,σ} = (X − 1)²` on inertia; ACC conclusion (2) covers all `σ ∈ W_{F_v}` | §5.3 uses the inertial part | wording "inertial" → "every `σ ∈ W_{F_v}`" |
| F05 not-statable claim | grep of both pins for automorphic, cuspidal, Satake, Langlands, HodgeTate, semistable, Weil–Deligne | Mathlib: only a Shimura citation in a docstring; Tau Ceti: modular-form and lattice files, Frenkel citations | headlines not statable | Lean paragraph rewritten |

## Notes for the maintainer

- The README no longer plans `Suggested.lean` declarations `sl2AdjointRep`,
  `sl2Five_adjoint_restriction_unipotent_bijective` and `isCMField_of_intermediate_cyclotomic`. The
  port should produce a `Suggested.lean` whose module docstring names Theorems 2.5, 6.2 and 8.1 and
  the missing carriers, and states nothing. No other roadmap cites these names. The `plan.json`
  target ids keep the names.
- The supplier gap `acc-torsion-inertial-comparison` (AutomorphicGaloisRepresentationsPartII AG2.5)
  is unchanged in substance, and acceptance remains conditional on it. Its text now spells out the
  full ACC23 §3.1 setting. PotentialAutomorphyInfrastructure and CrystallineLocalGlobalCompatibilityCM
  §9.7 depend on the same statement.
- `plan.json` now has 90 tests: one added, in 3.4.
- No suspicious instructions were found in the review text.
