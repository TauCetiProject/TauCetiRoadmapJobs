# Repair report: QuasicoherentSheavesOnPrestacks design, review round 2

Files changed: `packages/QuasicoherentSheavesOnPrestacks/design/README.md`, `packages/QuasicoherentSheavesOnPrestacks/design/plan.json`, `packages/QuasicoherentSheavesOnPrestacks/sources.toml`. One review (`REV-DESIGN-QuasicoherentSheavesOnPrestacks`), six findings. All six were checked against the cached sources and the supplier heads, and all six hold.

## REV-DESIGN-QuasicoherentSheavesOnPrestacks/F01 (P2) — applied differently

Old → new (8.3): classical (c) "every flat morphism" → every morphism representable by qcqs schemes with affine diagonal (8.1 with 8.2; no flatness needed, so more general than suggested). Classical (d) → `X₂` perfect and `X₁ → Y` flat affine or of kind (b), via the base change `X₁ ×_Y X₂ → X₂`, as suggested. Two route steps rewritten; `plan.json` 8.3 matched.

Why the route changed as well. The finding is right. Flatness is defined for maps of test rings (Conventions), for affine maps (4.1) and for maps representable by schemes (5.4(b)), and for nothing else, so `BG → BH` is flat in no stated sense. The diagonal of `Spec k[ε]/(ε²)` is not flat. Two further gaps of the same kind turned up in 8.3:
- **(a)/(b), compact ⇒ dualizable.** This step cited BZFN Lemma 3.20. The second half of that proof (BZFN line 1160 onward) pulls back along `X_U → X`, the base change of a point. That map is affine but not flat in the classical context, and 4.2 then gives neither pointwise pushforward nor base change. The new route gets the step from generation by dualizable compact objects instead: `Ind(C₀) ≃ QCoh(Y)`, then `indCompactComparison` (EnhancedDerivedSheaves E5:presentability.1), which is Neeman's theorem as BZFN §3.1.2 states it (BZFN lines 956–961, p. 20).
- **(d) in the animated and `E∞` contexts.** The route "reduce to (a)" skipped the product: `X₁ × X₂` has to be perfect first (BZFN Proposition 3.24, lines 1216–1240). That step is now written out: the pushforward along `U × X₂ → U` is pointwise, external products of compact objects generate, and it uses 1.5 and 4.2.

The classical analogue of BZFN Corollary 3.23 for arbitrary morphisms is not claimed. A Check says why: its route applies (a) to the base change of a point, which is flat only when the point is.

New Checks:
- The dual-numbers witness: `Tor₁^{A⊗A}(A,A) = I/I² = Ω¹_{A/ℤ}`, which surjects onto `Ω¹_{A/k}`. That is `k·dε` in characteristic ≠ 2 and `A·dε` in characteristic 2. The product is over ℤ, the product of prestacks, not over k as the review wrote.
- The `B(G_m²)` Check is now tied to the derived clause.

Pattern: 6.2(b) also used "faithfully flat map `p : Spec A → X`" for a non-representable target. It is now defined as flat affine (4.1) plus fpqc surjection (3.3), in the README and in `plan.json` 6.2. The other uses of flat morphisms (7.1, 7.4, 8.4) are of affine or representable maps, so the definitions in 4.1 and 5.4(b) already cover them.

## REV-DESIGN-QuasicoherentSheavesOnPrestacks/F02 (P3) — applied

Old → new (4.1 Check): "For an affine group scheme G" → "For a nontrivial affine group scheme G", with the reason: at the discrete test ring `O(G)`, `π₁ = G(O(G)) ∋ id ≠ 1`, while affines take discrete values on discrete test rings. For `G = 1` both maps are the identity of `Spec k`. `plan.json` 4.1 test `BG` updated.

## REV-DESIGN-QuasicoherentSheavesOnPrestacks/F03 (P3) — applied

Old → new:
- 2.5: "HTT Proposition 1.2.5.1, PDF p. 54" → "PDF p. 53" (HTT line 2081, page marker at 2072).
- 7.1: "Theorem 6.1.0.6, PDF p. 12" → "PDF pp. 547–548" (HTT line 24717; the statement runs past the page-548 marker at 24726). It now also cites Propositions 6.1.3.10 and 6.1.3.19 at pp. 566–567 and 573–574 (HTT lines 25589, 25890).

`plan.json` 2.5 and 7.1 locators updated. The other HTT page locators were also checked: 2.1.1.3 p. 75 (line 3037), 6.1.2.7 p. 559 (25224), 6.5.2.9 p. 687 (31182), 5.5.4.20 p. 502 (22747). All correct.

## REV-DESIGN-QuasicoherentSheavesOnPrestacks/F04 (P3) — applied

Old → new: HigherToposTheory "L10.5" → "L10.1" (∞-topoi, HTT 6.1.0.4; `HTT.6.1.0.6/stmt`) and "L10.3" (HTT Propositions 6.1.3.10 and 6.1.3.19: groupoid objects in an ∞-topos are effective). Changed in the summary bullet, the supplier contract, the 7.1 API bullet and *Needs:* line, the Layer 7 Dependencies, and `plan.json` suppliers and 7.1 prerequisites.

This was verified at the HigherToposTheory head (f522659): L10.1 at its line 8274, with Definition 6.1.0.4 at 8386 and the statement of 6.1.0.6 at 8397; L10.3 at 8449, with 6.1.3.10 at 8495 and 6.1.3.19 at 8547.

## REV-DESIGN-QuasicoherentSheavesOnPrestacks/F05 (P3) — applied differently

Old → new:
- The two "The pin is …" sentences are deleted, as suggested.
- Line 7: "No roadmap on … main branch, in an open roadmap pull request or on the board …; the roadmaps that follow this one in the supplier order …" → "No other roadmap defines …". The new text names the local versions in PrismaticCohomologyPartII §4.0, LanglandsParameterStacks §1.7 and HabiroCohomologyFoundations §1.27 as special cases of 2.2–2.3, 3.2–3.3, 4.2 and 7.3.

Why it differs from the suggestion: the suggested text said these roadmaps "import them". At their heads they still plan these constructions locally (PrismaticCohomologyPartII line 720, LanglandsParameterStacks line 378, HabiroCohomologyFoundations line 807), so that would be false today. The new text points to Downstream consumers instead. "Restrictions" became "special cases" because HabiroCohomologyFoundations §1.27 works through `Mod_{HC}`.

## REV-DESIGN-QuasicoherentSheavesOnPrestacks/F06 (P3) — applied

Old → new (8.3(b)): "an invertible object L whose restriction to every `Y_η` is ample" → "a set `{L_i}` of invertible objects restricting on every `Y_η` to an ample family" (Stacks, Morphisms of Schemes, Definition 29.12.1, tag 0FXR). The single-bundle case, which is the one 8.4 uses, is kept as the one-member case. The "with affine diagonal" hypothesis is dropped as automatic (tag 0FXS).

Generation step: it cites BZFN's argument (BZFN lines 1195–1199) together with Stacks 0BQR. The proof of 0BQR (Stacks Derived Categories of Schemes text, lines 1897–1914) uses only three things: quasi-compactness, affine diagonal (for Proposition 36.7.5, line 760) and affine non-vanishing loci. All three hold for an ample family.

New Check: the affine line with doubled origin (Stacks Remark 29.12.3, tag 0FXT). Its ample family is `{L_1, L_{−1}}`, with sections `(1, y)` and `(x, 1)` whose non-vanishing loci are the two charts. It has no ample invertible module because it is not separated. The conclusion agrees with 8.1 with 8.2.

## Checks run

**Dependency gate** (exact output): no UPWARD or CYCLE line.

```
candidate: QuasicoherentSheavesOnPrestacks is not in the merge order yet; checked as if placed after GlaubermanZStar (the intake inserts it when its design is accepted)
depcheck: 240 roadmaps, 2371 edges, 0 problem(s)
```

**Citation resolver** on the edited README: "Cross-roadmap citations found nowhere: None. Lean names found nowhere: None." It also printed "Lean names outside TauCetiRoadmap were not checked: no pinned Lake packages on this host." The seven Lean-name leads the worker found before this round no longer appear.

**`Suggested.lean`**: the design stage has none, so the `#check @name` elaboration does not apply and no Lean was run.

**JSON and TOML**: `plan.json` parses and is rewritten in its original format (indent 1, UTF-8). `sources.toml` parses. Counts: 33 targets, 116 Checks (114 before, plus the two new 8.3 Checks).

**Sources**: the Stacks chapter *Morphisms of Schemes* was fetched through the sources service into a scratch manifest (open-repository, `https://stacks.math.columbia.edu/download/morphisms.pdf`). It is recorded under the existing `Stacks` key: tags 0FXR, 0FXS, 0FXT were added to `locator`, and the chapter to `version_note`. That follows the pattern of that key, so no second key was created.
- `BZFN` locator: added Lemma 3.20 and §3.1.2.
- `HTT` locator: added Propositions 6.1.3.10 and 6.1.3.19.
- `needs-references.toml`: not created; every text needed was readable.

## Adversarial pass (statements added or changed)

| Statement | Instances | Values computed | Result | Change |
| --- | --- | --- | --- | --- |
| 8.3(a), classical flat affine | `id_{Spec A}`; `Spec A[t] → Spec A`; `Spec 𝔽_p → Spec ℤ` | identity; `f_*O = A[t]`, base change `A′[t]`; non-flat: pointwise formula gives `𝔽_p`, true value `𝔽_p ⊗ᴸ 𝔽_p` | holds; non-flat case excluded by its hypothesis | route: compact⇒dualizable via Ind/Neeman |
| 8.3 route, Ind step | `D(ℤ)`, G = {ℤ}; `⨿_ℕ Spec ℤ`, G = {O_i} | `C₀ = Perf(ℤ)` = compact = dualizable; `C₀` = finitely supported perfect tuples = compact, all dualizable, but `O = (ℤ,ℤ,…)` is dualizable and not compact (`Hom(O, ⊕O_i) = ∏ℤ ≠ ⊕ℤ`) | route gives only compact ⇒ dualizable; the converse needs `O_Y` compact, which the route takes from `f^*O_X` | none further |
| 8.3(b), one bundle | `ℙ¹_k → Spec k`, `{O(1)}` | generators `O(−n)`, n ≥ 0; `O ⊕ O(−1)` already generates (8.1 Check); `f_*O(−2) = k[−1]` | holds | none |
| 8.3(b), ample family | doubled-origin line Z; `ℙ¹ ⊔ ℙ¹` with `L₁ = O(1) ⊔ O`, `L₂ = O ⊔ O(1)` | Z: `X_s = X₁`, `X_t = X₂`, both `≅ 𝔸¹`; Z non-separated, so no ample member; `⊔`: `L₁`-sections `(s₁, c)` have affine locus iff `c = 0`, giving `D(s₁)` in the first copy only; family ample, neither member ample, `L₁ ⊗ L₂` ample | holds; family strictly more general | Check added (Z) |
| 8.3(b), Y affine diagonal | Z over k | relative diagonal: `Z →Δ Z ×_k Z` affine since `Z₁ ∩ Z₂ = 𝔾_m` affine (0FXS) | holds | hypothesis dropped as automatic |
| 8.3(c), derived | `X = Y = Spec A`; `BG_m → Spec ℤ` | base change `Spec A′`; `BG_m × Spec A` affine over `BG_m`, perfect by (a) | holds | none |
| 8.3(c), classical | `ℙ¹_ℤ → Spec ℤ` along `Spec 𝔽_p`; closed immersion `Spec 𝔽_p → Spec ℤ` along `Spec ℤ[x]`; `∅ → Y` | `ℙ¹_{𝔽_p}`, generator `O ⊕ O(−1)`; `Spec 𝔽_p[x]`, affine; `∅ = Spec 0`, `QCoh = 0` | holds with no flatness | statement generalized |
| 8.3(d), classical | `A = k[ε]/(ε²)`, `X₁ = X₂ = Y = Spec A`; `Spec ℤ[1/p] → Spec ℤ` with `X₂ = BG_m` | identity flat affine, gives Y; `Ω¹_{A/k} = k·dε` (char ≠ 2), `A·dε` (char 2), so the diagonal is not flat; `BG_m ×_ℤ ℤ[1/p] = BG_m` over `ℤ[1/p]`, perfect | holds; old route refuted by the first instance | statement and route replaced; Check added |
| 8.3(d), derived | Y final, `X₁ = X₂ = BG_m`; `X₁ = X₂ = Spec 𝔽_p` over `Spec ℤ` | `B(G_m²)`, characters `ℤ²` generate; `Spec(𝔽_p ⊗ᴸ 𝔽_p)`, affine, `π₁ = 𝔽_p` | holds | product step written out |
| 8.3(d), derived product route | `X₁ = Spec A` | `π₁` is the affine map `Spec A × X₂ → Spec A`; generators `π₁^*A ⊗ π₂^*M₂ = q^*M₂`; vanishing reduces to 4.2 conservativity | holds | none |
| 4.1 Check | `G = μ₂` over k (char ≠ 2); `G = 1` | `O(G) = k[x]/(x²−1)`, `id ↦ x ≠ 1` in `G(O(G))`; `O(G) = k`, `BG = Spec k` | false at `G = 1`, true for nontrivial G | "nontrivial" added |
| 6.2(b) faithfully flat atlas | `Spec ℤ → BG_m`; `Spec 𝔽_p → Spec ℤ`; `Spec ℚ → Spec ℤ` | fibre over a line bundle L is `Spec ⊕_{n∈ℤ} L^n`, faithfully flat; not flat; flat but `ℚ ⊗ ℤ/p = 0`, not surjective | the definition separates the three | clause added |
| 7.1 effectivity | `G = 1`; `Γ` on `∗` | `∗ ×_∗ ∗ = ∗ = G`; `∗ ×_{BΓ} ∗ = Γ` | holds; the source is now the L10.3 propositions | citation repaired |
| Line 7 scope claim | the three sections named | PrismaticCohomologyPartII §4.0 (line 720), LanglandsParameterStacks §1.7 (line 378), HabiroCohomologyFoundations §1.27 (line 807) exist at their heads and plan locally | holds; "import" would be false | worded as "special cases" |

## For the maintainer

- **No changes for other roadmaps.** No roadmap on main or at an open head cites QuasicoherentSheavesOnPrestacks (`roadmaps grep` finds nothing). The renumbering inside 8.3 (statement split into bullets (a)–(d)) and the change in its hypotheses affect no consumer. The section ids of 8.3 and of every other target are unchanged.
- **8.4 is unchanged.** It uses the one-member case of the new 8.3(b).
- **New supplier sections cited:** HigherToposTheory L10.1 and L10.3 replace L10.5. EnhancedDerivedSheaves E3.2 (`adjointFunctorTheorem`), E3.3 (`rightAdjoint_preservesCoproducts_iff`) and E5:presentability.1 (`indCompactComparison`) are now in 8.3's *Needs:* line; all are on main. HigherToposTheory is still an open pull request adding a new roadmap folder by another author, which the rules allow; its sections were read at head f522659.
- **Ownership against open work:** checked with `roadmaps grep`, `roadmaps show` and `roadmaps overlaps` for the objects touched (perfect stacks, ample families, Giraud and effective groupoids). Nothing new is owned here: the ample-family generation and Neeman's theorem are proof-route steps cited to Stacks, BZFN and EnhancedDerivedSheaves. The finding about consumer placement in the merge order (consumers at merge-order lines 32, 56, 61, 195, 316) stays an intake matter, as the review says. It cannot be settled in this package.
- **Untrusted text:** the review contained no instructions beyond its claims, and no fetched text was suspicious.
