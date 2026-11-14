# FIX-DESIGN-VirtualFundamentalClassPartII~4

This round repairs the two findings of `REV-DESIGN-VirtualFundamentalClassPartII~3`: F01 (P3) and F02 (P2).
I checked both against the README's own definitions, behrend-fantechi1997 and VirtualFundamentalClass §9.1
at its open head. Both are correct and both are applied. F02 is applied with a fuller justification than the
review suggested; the reason is given in its section.

Files edited:
- `packages/VirtualFundamentalClassPartII/design/README.md`
- `packages/VirtualFundamentalClassPartII/design/plan.json`

`sources.toml` is unchanged. No source was fetched and no `needs-references.toml` was written.

## REV-DESIGN-VirtualFundamentalClassPartII~3/F01 (P3) — applied

The finding is correct. 8.2's route used `U` and `U′` without introducing them. 8.3's route used `W`
before its API introduced it.

**8.2.** "for a relative local embedding of `X` into `W` … `β(W′, U)` … `T_{W/𝔜}|_{U′}`" becomes an explicit
chart, as in VirtualFundamentalClass §9.1 and behrend-fantechi1997 line 1654:
- an étale `U → X` from an affine scheme;
- a closed immersion `U → W` over `𝔜`, with `W` a scheme smooth over an atlas of `𝔜`;
- `W′ := W ×_𝔜 𝔜′`, regular of codimension `c`;
- `U′ := U ×_W W′ = U ×_X X′`.

The invariance is now attributed to 8.1's relative invariance over `𝔅 = 𝔜`.

**8.3.** The route now reads "formed, on a chart `X → Z ×_𝔜 W` as in the API below, in the ambient …".

**Same pattern elsewhere.**
- 8.4's route used `η_b` without defining it. It is now defined as the flat base change
  `η_b : 𝔐 × {b} → 𝔐 × B`, with `η_b^!` the Gysin map of 4.2.
- 9.4 used `N` in a parenthetical before "for `N` large". The parenthetical now comes after that phrase.
- No other route uses a symbol before introducing it. I checked Layers 6–9 line by line and grepped
  Layers 1–5 for chart letters.

## REV-DESIGN-VirtualFundamentalClassPartII~3/F02 (P2) — applied

The finding is correct. 3.1 and 4.2 act on stacks of Convention 1. I checked the review's witness:
`Z′ ×_𝔜 X = Z′` is not quasi-compact, while `X′ = pt`.

**Old → new.** The old text was "composite of the Gysin map of the graph `Z′ → Z′ ×_𝔜 Z` with flat pullback
along the projection to `Z`". The new text is the composite, for any quasi-compact open `Z′_0 ⊇ g(X′)`, of:
- flat pullback along `Z′_0 ×_𝔜 X → X`;
- the Gysin map of the graph of `v|_{Z′_0}`.

8.3 now also asks for a proof that this composite does not depend on `Z′_0`.

**Why the fuller justification.** The review's justification ("Gysin maps commute with restriction to open
substacks") is right but leaves out three facts that the README now states in a new "Route for `Z′_0`"
paragraph:
1. Such a `Z′_0` exists, because `|X′|` is quasi-compact.
2. `Z′_0 ×_𝔜 X` is a stack of Convention 1:
   - it is quasi-compact because `𝔜` is quasi-separated (Convention 7);
   - it is Deligne–Mumford with a good diagonal because `Z′` has finite unramified diagonal over `𝔜`.
3. Two choices can be compared through their intersection. The intersection is quasi-compact because `Z′`
   is quasi-separated.

**Grading.** Flat pullback (3.1) and Gysin maps (4.2) need a constant relative dimension and codimension.
8.3 now says that both maps are taken on the finitely many open and closed pieces of `Z′_0` where these are
constant, and that on `X′` their difference is `rk F − rk E`.

**Consequential edits.**
- The second-case route now uses the ambient `Z′_0 ×_𝔜 Z ×_𝔜 W`, and says that the API's normal bundles and
  normal cones along `X′` are the same for `Z′` and `Z′_0`.
- *Needs:* gains 3.1, and Layer 8's Dependencies gain Layer 3.
- The witness is added as 8.3's fifth Check, and as the `plan.json` test `nonQuasiCompactSource`.
- The `plan.json` statement and hypotheses of 8.3 are updated, and `target:3.1` is added to its prerequisites.

**Same pattern elsewhere.** I looked for other fibre products that 3.1 or 4.2 is applied to and that could
fall outside Convention 1. There are none:
- 8.2: `X′ → X` is a representable local immersion.
- 8.3, first case: `X′` is assumed to be a stack of Convention 1.
- 8.4: `X_b` is closed in `X`.
- 5.1: products over `k`.

## Adversarial table

| Statement | Instances tried | Values computed | Result | Change |
|---|---|---|---|---|
| 8.2 chart: `U′ = U ×_W W′ = U ×_X X′` | general; 8.2 second Check `U = X = 𝔸¹ × Z`, `W = X`, `𝔜 = 𝔸¹`, `𝔜′ = {0}` | both sides `U ×_𝔜 𝔜′`; `W′ = U′ = Z`; `∂β = [N] − [N] = 0` | holds | chart defined |
| 8.2: 8.1's relative invariance applies to `W → 𝔜` | `W` smooth over atlas `V`, `V → 𝔜` smooth | `W → 𝔜` smooth and representable; `W′ = W ×_𝔜 𝔜′` with `𝔜′ → 𝔜` regular; `W′ → W` regular of codimension `c` by flat base change | holds | none |
| 8.2 charts exist for Artin `𝔜` | `𝔜 = B𝔾_m`, `X = pt` | `X ×_𝔜 V → X` smooth, so it has sections étale locally; `U → V` of finite type, `U ⊆ 𝔸^n × V′` closed | holds | none |
| 8.3: `Z′ ×_𝔜 X` is Convention 1 | review witness `Z′ = pt ⊔ ⊔_ℕ pt` | infinitely many points, not quasi-compact | fails | `Z′_0` introduced |
| 8.3: `Z′_0 ×_𝔜 X` is Convention 1 | general | locally of finite type (smooth over `X`); maps quasi-compactly to `Z′_0 ×_k X`, which is quasi-compact; diagonal is finite unramified followed by `Δ_X` | holds | stated |
| 8.3: independence of `Z′_0` | witness, `Z′_0 = {p₀}` and `Z′_0 = {p₀, p₁, …, p_m}` | flat pullback `[p₀]`, resp. `Σ[p_i]`; graph meets the test stack only at `(p₀, first)`; both give `[pt]` | holds | fifth Check |
| 8.3: both definitions of `v^!` for étale `v` | witness | first case `u = id_pt`: `[pt]`; second case `[pt]` | agree | in Check |
| 8.3: degree shift `a − c = rk F − rk E` | witness; projection `𝔸¹ × Z → Z` | `0 − 0 = 0 = 0 − 0`; `(dim Z + 1) − dim Z = 1 = rk Ω_{𝔸¹}` | holds | stated |
| 8.3: the graph is a regular local immersion | general | base change of `Δ_{Z/𝔜}` (finite unramified, from behrend-fantechi1997 lines 1722–1724) and a section of the smooth `Z′_0 ×_𝔜 Z → Z′_0` | holds | none |
| 8.4 `η_b` | `B = 𝔸¹`, `b = 0`; `𝔐 = Spec k` | `η_b` is flat base change of `{b} → B`, codimension `1`; bases of dimension `m + 1`, `m`; `[X]^vir ∈ A_{m+1+r} = A_1` | holds | defined |
| 9.4 one `N` | `M` quasi-compact | finitely many affine charts, so take the maximum of the `N`s | holds | reordered |

## Checks run

**Dependency check** (command from the brief), output:

    candidate: VirtualFundamentalClassPartII is not in the merge order yet; checked as if placed after StableReductionPartII (the intake inserts it when its design is accepted)
    depcheck: 206 roadmaps, 1897 edges, 0 problem(s)

There is no UPWARD or CYCLE line.

**Citations.** `roadmaps resolve` on the README finds no unresolved citation and no Lean name found nowhere.
The only cross-roadmap citation added is VirtualFundamentalClass §9.1, which the README already cited and
which I checked at that roadmap's open head ("local closed embeddings into schemes smooth over those
charts").

**Shape.**
- `plan.json` parses: 9 layers, 33 targets, 123 tests, none with fewer than three.
- The README has 33 `**Checks.**` lists.
- No LaTeX delimiters, process words or machine paths (grep).

**Lean.** This is a design and has no `Suggested.lean`, so no `#check` comparison applies and nothing was
elaborated.

**Ownership.** No new object was introduced. The quasi-compact open `Z′_0` is a device inside 8.3's own
statement, so I did not run a separate ownership search against open pull requests.

## Gate failures

None were listed.

## For the maintainer

- No Lean name, section number or target id changed, so roadmaps that cite this one are unaffected.
- 8.3's second-case `v^!` is now defined through `Z′_0`. The one downstream consumer,
  AlgebraicGromovWittenTheory, uses 5.4, 6.2, 8.4 and 9.3–9.5, not 8.3. The route of 8.4, which it does use,
  changed only by naming `η_b`.
- I found nothing suspicious in the review text.
