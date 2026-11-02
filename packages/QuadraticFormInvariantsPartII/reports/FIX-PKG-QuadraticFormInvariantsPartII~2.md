# FIX-PKG-QuadraticFormInvariantsPartII~2

Repair of the five findings of `REV-PKG-QuadraticFormInvariantsPartII` (two P2, three P3). Files
changed: `packages/QuadraticFormInvariantsPartII/README.md`, `packages/QuadraticFormInvariantsPartII/Suggested.lean`,
`packages/QuadraticFormInvariantsPartII/sources.toml` (the `ekm` locator string only). `metadata.toml` and
`design/plan.json` are unchanged: no supplier gap was needed.

## F01 (P2) — applied

The finding is right: Morel's Theorem 1.3 needs `H1(N)` (morel line 106, p. 65) at the prime field, and
the README cited Milnor through Morel (morel lines 130–131) with no owner. New target **3.2a The Milnor
conjecture for the prime fields**: for `k = 𝔽_p`, `p` odd, and `k = ℚ`, `sₙ(k)` is an isomorphism for
every `n ≥ 0`, with three Checks. 3.5 now cites 3.2a as `H1(N)`; its bare "Milnor's computation" and its
`K2SymbolsBrauer` §10.32 entry are gone.

The route differs from the reviewer's: it needs no residue sequence for `W(ℚ)` and no new source.
- `n ≤ 2`: the low-degree statement of 3.2, which holds for every field (see F05).
- `𝔽_p`, `n ≥ 2`: `Kₙᴹ(𝔽_p) = 0` (`K2SymbolsBrauer` §5.12, at its open head: "For a finite field Fq and
  `n >= 2, K_n^M(Fq)=0`"). The surjection `sₙ` therefore has zero source and zero target.
- `ℚ`, `n ≥ 3`: `Kₙᴹ(ℚ) ≅ ℤ/2` (`K2SymbolsBrauer` §10.32 with `r₁ = 1`; its Check says it is detected by
  `{−1,−1,−1}`). So the surjection `sₙ` is bijective once `2ⁿ⟨1⟩ ∉ I(ℚ)ⁿ⁺¹`. That holds because:
  - base change to `ℝ` (Tau Ceti `TauCeti.WittRing.baseChange`, `Witt/BaseChange.lean:211`) maps
    `I(ℚ)ⁿ⁺¹` into `I(ℝ)ⁿ⁺¹` (`TauCeti.WittRing.baseChange_mem_fundamentalIdeal_pow`, line 320);
  - the parent's Layer 4 signature `W(ℝ) ≅ ℤ` (`QuadraticFormInvariants` README line 1319, "built here")
    sends `I(ℝ)ⁿ⁺¹` into `2ⁿ⁺¹ℤ`, because its Pfister generators have signature `0` or `2ⁿ⁺¹`.

The reviewer's alternative, the split residue sequence with Milnor–Husemoller or Lam, is valid, but it
would need a new source and the Springer decomposition at every prime. The route above uses only
declared suppliers.

Pattern repaired in Scope (the Layer 3 bullet and the `K2SymbolsBrauer` and `QuadraticFormInvariants`
import bullets), the supplier contracts (`QuadraticFormInvariants`, `K2SymbolsBrauer` §§5.12 and 10.32,
Tau Ceti `Witt/BaseChange.lean`), "How to read the build" and the Layer 3 Dependencies.

## F02 (P2) — applied

Added to `Suggested.lean`, Layer 4, before the independent-value theorem (README order: 4.2 before 4.3):
`not_anisotropic_quadraticPfister_of_residue_eq_one`, with the reviewer's binders and an expanded
docstring. The module docstring now lists the principal-unit criterion.

README §4.2 now states it by name with the same hypotheses: unit Pfister form, `1 − 4a₀ ∈ Oˣ`, slot
`i : Fin m`. The route is an explicit residual zero (paired weights `w_S`, `−w_S`) followed by 4.1, and
*Needs* is "1.1, 4.1". A third Check was added: non-henselian `ℤ_(3)`, `ε = 7`, `a₀ = 1/2`.

The Summary now names the three parts of Dittmann–Pop's Proposition 3.2 explicitly (dp line 264). The
theorem is not a one-tactic consequence of the library: it needs unit reduction (4.1), which is not at
the pins.

## F03 (P3) — applied

§1.1 API bullet: "with `2` invertible it is isometric to the parent's …" → "with `2` invertible and
`1 − 4a₀ ≠ 0` …; with `1 − 4a₀ = 0` it is singular and has no parent counterpart".

The same pattern was repaired in two more places:
- the §1.1 prose: the isometry now carries "and `1 − 4a₀ ≠ 0`", and "its class lies in `I_q^{m+1}`"
  became "and then its class lies in …";
- Conventions: "the Witt class of a nonsingular `n`-fold quadratic Pfister form lies in `I_qⁿ`".

Witness recomputed: `m = 0`, `a₀ = 1/4` over `ℚ` gives `(x + y/2)²`, of rank 1.

## F04 (P3) — applied

"(EKM, Example 7.23, p. 45)" → "p. 44". The example is at ekm lines 2448–2452, after the page-52 marker
(line 2417, printed 44) and before the page-53 marker (line 2463, printed 45). This was the only
occurrence. The References range "pp. 40–46" already covers it.

## F05 (P3) — applied differently

The clause is kept, not cut. It is true for every field of characteristic ≠ 2 with an elementary
certified proof:
- EKM states that `fᵢ` is an isomorphism for `i = 0, 1, 2` "in (4.11), Proposition 4.13, and
  Proposition 5.3" (ekm lines 1844–1845);
- Proposition 5.3 (lines 1648–1657, p. 29) runs through Lemma 5.2 and the presentation of `I²`,
  Theorem 4.22 (lines 1397–1401, p. 27).

Cutting it would force the new prime-field target to compute `K₂ᴹ(ℚ)/2` and `I²(ℚ)/I³(ℚ)` directly.
Narrowing it to `ℚ` would go below what the source supports.

§3.2 now states it as a target with that route:
- inverses `TauCeti.WittRing.dimMod2` and `TauCeti.signedDiscrHom`;
- presentation of `I²`; the well-definedness of `⟨⟨a,b⟩⟩ ↦ {a,b}`;
- vanishing on `I³` by `⟨⟨a,b,c⟩⟩ = ⟨⟨a,c⟩⟩ + ⟨⟨b,c⟩⟩ − ⟨⟨ab,c⟩⟩`.

It also has an API bullet and a degree-two Check. The citation "Morel, p. 64, recalling Milnor" is
replaced by the EKM locators.

## Checks run

- **Elaboration.** From the content checkout, `lake env lean` on
  `packages/QuadraticFormInvariantsPartII/Suggested.lean` exited 0. Its only output is eleven
  "declaration uses `sorry`" warnings, at lines 70, 79, 101, 111, 121, 146, 161, 176 (new), 190, 211
  and 234. There are no other messages, no `set_option` and no new import.
- **Binder check.** A scratch copy with `#check @name` for all 17 declarations elaborated without
  errors. The new theorem's elaborated type is
  `∀ {K} [Field K] (O : ValuationSubring K) [HenselianLocalRing ↥O] {m} (ε : Fin m → (↥O)ˣ) (a₀ : ↥O),
  IsUnit (1 − 4 * a₀) → ∀ (i : Fin m), residue (ε i) = 1 → ¬ Anisotropic (quadraticPfister …)`.
  This is exactly the README 4.2 statement. There are no section `variable`s, so nothing can be
  dropped. The other 16 declarations are unchanged.
- **Direction of supply.** `gate --depcheck … --movable` printed `depcheck: 56 roadmaps, 646 edges,
  0 problem(s)`: no UPWARD or CYCLE line. Every newly cited supplier section is on main or earlier in
  the order:
  - `K2SymbolsBrauer` §§5.12 and 10.32 (earlier in the order);
  - `QuadraticFormInvariants` Layer 4 (main).
- **Citations.** `roadmaps resolve` on the README found no cross-roadmap citation and no Lean name
  "found nowhere".
- **Tau Ceti names checked at the pin, with file and line:**
  - `TauCeti.WittRing.baseChange` (`Witt/BaseChange.lean:211`);
  - `TauCeti.WittRing.baseChange_mem_fundamentalIdeal_pow` (`Witt/BaseChange.lean:320`);
  - `TauCeti.WittRing.dimMod2` (`Witt/Ring.lean:386`);
  - `TauCeti.signedDiscrHom` (`Witt/Discriminant.lean:308`, kernel `I²` at line 331);
  - `TauCeti.equivalent_of_equivalent_prod` (`Witt/Cancellation.lean:196`).

  The same file names appear in the README's Tau Ceti contract.
- **Sources.** No new source was fetched and nothing was added to `needs-references.toml`. New
  locators:
  - ekm (4.11), Proposition 4.13 (p. 25), Theorem 4.22 (p. 27), (5.1) (p. 28), Lemma 5.2 and
    Proposition 5.3 (p. 29); the page headers were read at ekm lines 1136, 1337, 1498 and 1629;
  - morel Theorem 1.3 with `H1(N)` (lines 104–106, p. 65).

  The References entry and the `ekm` locator in `sources.toml` were updated.
- **Ownership.** The search used `roadmaps grep` on main and the open heads, by object:
  - Witt group of `ℚ`, residue homomorphisms, Milnor's exact sequence: no owner;
  - `I²/I³`, the Milnor map in degree two: only the parent's `cliffordHomI2Bar : I²/I³ → Br(K)[2]`,
    a different map, whose injectivity (Merkurjev) the parent excludes.

  This roadmap, which owns the Milnor conjecture, owns 3.2's low degrees and 3.2a.

## Adversarial pass (changed and added statements)

| Statement | Instances tried | Values computed | Result | Change |
|---|---|---|---|---|
| 3.2 `s₀, s₁, s₂` iso, every field, `char ≠ 2` | `ℝ`; `𝔽₃`; `ℚ`, `n = 1`; `char 2` | `ℝ`: `s₂{−1,−1} = ⟨1,1,1,1⟩`, signature `4 ∉ 8ℤ`, so nonzero. `𝔽₃`: `⟨1,1,1,1⟩(1,1,1,0) = 3 = 0`, so `I² = 0 = K₂ᴹ(𝔽₃)`. `ℚ`: `s₁{2} = ⟨1,−2⟩`, signed discriminant `2 ∉ ℚˣ²`. `char 2`: outside 3.2 | holds; EKM proves it for bilinear forms in every characteristic | stated with route |
| EKM identity `⟨⟨a,b,c⟩⟩ = ⟨⟨a,c⟩⟩ + ⟨⟨b,c⟩⟩ − ⟨⟨ab,c⟩⟩` | `a = b = c = −1` over `ℝ` | signatures `8` vs `4 + 4 − 0 = 8` | holds | — |
| Presentation relations of `I²` | `⟨⟨1,1⟩⟩`; `a = b = c = −1` over `ℝ` | `⟨1,−1⟩⊗⟨1,−1⟩ = 0`; `0 + 4 = 0 + 4` | hold | — |
| Plus-sign inverse `⟨⟨a,b⟩⟩ ↦ {a,−b}` (wrong model) | hyperbolic `⟨⟨2,−1⟩⟩ = ⟨⟨−1,2⟩⟩` over `ℝ` | images `{2,1} = 0` and `{−1,−2} = {−1,−1} ≠ 0` | not well defined | Check added |
| 3.2a, `𝔽_p` | `𝔽₃`, `n = 0, 1, 2, 3`; `p = 2` | `n = 0`: `ℤ/2 ↔ W/I`. `n = 1`: `⟨1,1⟩` anisotropic mod 3, so `s₁{−1} ≠ 0`. `n ≥ 2`: `K₂ᴹ(𝔽₃) = 0`, so the target is `0`. `p = 2`: excluded (`char 2`) | holds | target added |
| 3.2a, `ℚ` | `n = 2, 3, 4` | `n = 2`: `{−1,2} = 0` (`2 = 1² + 1²`) and `⟨1,1,−2,−2⟩(1,1,1,0) = 0`. `n = 3`: `8⟨1⟩`, signature `8 ∉ 16ℤ`. `n = 4`: `16⟨1⟩`, signature `16 ∉ 32ℤ`. Wrong model `I³(ℚ) = 0`: true over every `ℚ_p` (forms of dimension ≥ 5 are isotropic), false at `ℝ` | holds | Checks added |
| Signature of an `(n+1)`-fold Pfister form over `ℝ` | `⟨⟨−1,2⟩⟩`; `⟨⟨−1,−1⟩⟩` | `⟨1,1,−2,−2⟩`: signature `0`; `⟨1,1,1,1⟩`: signature `4 = 2²` | `0` or `2ⁿ⁺¹` | — |
| 3.5 route citation | Morel `H1(N)` | morel line 106 on the printed p. 65 page | correct | locator |
| 1.1 comparison with `1 − 4a₀ ≠ 0` | `a₀ = 1/4, 0, 1/2`, `m = 0`, `ℚ` | `(x + y/2)²`: rank 1, no parent form. `[1,0] ≅ ⟨⟨1⟩⟩ = ⟨1,−1⟩`. `[1,1/2] ≅ ⟨1,1⟩ = ⟨⟨−1⟩⟩` | hypothesis needed | applied |
| Conventions: class in `I_qⁿ` | singular `(x + y/2)²` | `I_q` is built from nonsingular forms, so the singular form has no class | "nonsingular" needed | applied |
| 4.2 principal-unit theorem | `𝔽₂((t))`, `ε = 1 + t`, `a₀ = 1`; `ℚ₂`, `ε = 5`, `a₀ = 1`; `ℤ_(3)`, `ε = 7`, `a₀ = 1/2`; trivial valuation; `m = 0` | `𝔽₂((t))`: reduction `[1,1] ⊥ [1,1]` vanishes at `(v,v)`. `ℚ₂`: `⟨⟨5,−3⟩⟩`, Hilbert symbol `(5,−3)₂ = (−1)^{4·(−4)/4} = 1`, isotropic. `ℤ_(3)`: `⟨1,1,−7,−7⟩` anisotropic over `ℚ` (`7` inert in `ℤ[i]`), although the reduction is isotropic. Trivial valuation: `ε = 1`, `ρ ⊥ −ρ` isotropic. `m = 0`: `Fin 0` has no slot | holds; henselianity needed | Check added |
| 4.2, the role of `ha₀` | residue characteristic `2` and `≠ 2` | Residue characteristic `2`: `4a₀ ∈ 𝔪`, so `1 − 4a₀` is automatically a unit. Residue characteristic `≠ 2`: a principal unit is a square by Hensel, giving the zero `(c·v, v)`, true without `ha₀` | needed by the route through 4.1, not for truth | P3 note, kept |

## For the maintainer

- **New name:** `TauCetiRoadmap.QuadraticFormInvariantsPartII.not_anisotropic_quadraticPfister_of_residue_eq_one`.
  `LogicAndDefinabilityInNumberTheoryPartII`, which uses the principal-unit criterion of Layer 4, may
  cite it by name. No name was renamed or deleted. No section was renumbered: 3.2a is inserted, so the
  citations of 3.5–3.9, 5.6 and 6.5 by `RealSurfacePeriodIndex` and
  `LogicAndDefinabilityInNumberTheoryPartII` are unaffected.
- **Suppliers.** This roadmap now consumes:
  - `K2SymbolsBrauer` §5.12 (finite fields) and §10.32 (number fields, `n ≥ 3`). Both are at
    `K2SymbolsBrauer`'s open head, which is earlier in the merge order. If those sections are
    renumbered, 3.2a's citations must follow.
  - the parent's Layer 4 signature isomorphism `W(ℝ) ≅ ℤ`, which is a parent milestone, not a Tau Ceti
    declaration at the pin.
- **Stale reference fixed.** §1.1's first Check referred to "the sanity computation in the acceptance
  file", but `Suggested.lean` has no such computation. The parenthesis was removed, since a Check may
  not claim a Lean counterpart.
- No suspicious instructions were found in the review text.
