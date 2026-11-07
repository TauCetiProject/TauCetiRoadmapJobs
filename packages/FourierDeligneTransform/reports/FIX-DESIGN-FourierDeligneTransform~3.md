# FIX-DESIGN-FourierDeligneTransform~3

One review was settled: REV-DESIGN-FourierDeligneTransform~2, findings F01 and F02, both P3. Its closing paragraph calls them R01 and R02; these are the same two findings. Each was checked against the cited roadmaps at their current copies (on main, or at the head of their open pull requests through `roadmaps show` and `roadmaps grep`) and against the line-numbered sources. Files changed:
- `packages/FourierDeligneTransform/design/README.md`
- `packages/FourierDeligneTransform/design/plan.json`
- `packages/FourierDeligneTransform/sources.toml`

## F01 (P3) — applied

**Verified.** SheafConvolutionOnAbelianVarieties, at the head of its open pull request:
- Its Scope and ownership section says it owns derived convolution (its §0.3): `K * L = Ra_!(K ⊠ L)` with associator, unit, symmetry and rigidity, built from EtaleCohomologyFoundations §0.8.
- An API bullet of its §0.3 identifies convolution with the transform with the difference kernel `d(x, z) = z − x`.
- `roadmaps grep 'FourierDeligneTransform'` finds that name only in EtaleCohomologyFoundations, never in SheafConvolutionOnAbelianVarieties.

So the old claim that "its kernel-composition coherence contract is §1.2" is false.

**Change.** In the README (Downstream consumers), "its convolution is the kernel transform of the difference kernel, and its kernel-composition coherence contract is §1.2" → "builds its convolution `K * L = Ra_!(K ⊠ L)` and its coherence directly from EtaleCohomologyFoundations §0.8 … it can import §§1.1–1.2 for that description and for the composition coherence of kernels". The plan.json consumer entry now reads "can import kernel transforms and the composition coherence of kernels (§§1.1–1.2) …".

**Same pattern, also repaired.** The CharacterSumsOverFiniteFields bullet said its trace readings "use the sheaves of §§2.5–2.6". At its head, that roadmap:
- says in Scope and ownership (*Not owned here*, the bullet on Kummer and Artin–Schreier sheaves) that it defines no sheaf;
- marks its §3.6 as "background, not a target" in the heading;
- never cites this roadmap.

Both the README bullet and the plan entry now say that its §3.6 names `ℒ_ψ`, `ℒ_χ` with the normalization `ψ(Tr x)`, `χ(N x)` and the eigenvalue `−g(χ, ψ)`, and that it "can import" §§2.3, 2.5–2.6 and 5.4.

The CongruenceSpectralGap bullet already says "can be imported", and its `gap:additive-character-sheaf-weight` is still declared at its head, so it is unchanged.

## F02 (P3) — applied differently

**Verified.** Plan target 5.3.2 was the plan's only forward prerequisite (`target:5.5`): the mechanical check found exactly one forward edge, 5.3.2 → 5.5. §5.3 was the only section whose `*Needs:*` named a later section, and §5.5 does not need §5.3, so moving the statement creates no cycle.

**Change.** The Class (1) autoequivalence sentence leaves §5.3 and becomes its own paragraph in §5.5, after §5.5's first `*Needs:*` line, following §2.7's layout for two statements in one section. In plan.json, target 5.3.2 is renamed 5.5.1 and moved after 5.5, with its prerequisites unchanged. `sources.toml` now cites `5.5.1` for ESDE and KATZ01. §5.3 `*Needs:*` changes from `§§3.4–3.5, 3.8, 5.2, 5.5; §2.7` to `§§3.4–3.5, 3.8, 5.2`.

**Why this differs from the suggested repair:**
- **Id.** Plan ids follow README sections (2.7.1, 5.1.2, 5.6.1), so an id 5.3.2 sitting in §5.5 would be misleading.
- **Needs line.** The new `*Needs:*` reads `§§2.7, 5.1, 5.3; the lisse-locus criterion above`. It includes §2.7, which the review's `§§5.1, 5.3, 5.5` omitted, so that it agrees with the unchanged plan prerequisite `target:2.7`. "Breaks at `∞`" of a henselian trait are defined through §2.7's comparison.
- **§2.7 dropped from §5.3.** The remaining §5.3 statements involve no breaks.
- **Route made explicit.** The route now names the extension to `k̄` that the twisting lemma needs, and the exchange of `A` and `A'`. ESDE §7.8 assumes `k` algebraically closed (ESDE lines 7875–7876).

## Checks run

**Dependency check.** Exact output:

    candidate: FourierDeligneTransform is not in the merge order yet; checked as if placed after EtaleDualityAndPerverseSheaves (the intake inserts it when its design is accepted)
    depcheck: 240 roadmaps, 2356 edges, 0 problem(s)

There is no UPWARD or CYCLE line. All three consumers (CongruenceSpectralGap, CharacterSumsOverFiniteFields, SheafConvolutionOnAbelianVarieties) come after the placement in `ORDER.txt` (line 96, against lines 146, 147 and 302).

**Citation resolver.** `roadmaps resolve` on the README finds no cross-roadmap citation and no Lean name that is "found nowhere". The worker's 21 leads are all supplier declarations of roadmaps, not of the pinned libraries:
- 18 are in `TauCetiRoadmap/EtaleCohomologyFoundations/Suggested.lean` on main;
- `Lang.lang_surjective` is in `TauCetiRoadmap/ReductiveGroupsPartII/Suggested.lean` on main;
- `VanishingCycles.etaleTraceFormulaFinite` and `VanishingCycles.etaleTraceFormula` are at the open head of InverseGaloisAndArithmeticFundamentalGroups (§§IG.0.T2–IG.0.T3), which is earlier in the merge order.

None was changed by this round.

**Plan check** (a scratch script over `target:` prerequisites and gap `neededBy`): before, 46 targets with one forward edge (5.3.2 → 5.5); after, 46 targets, no forward edge, no dangling prerequisite, every gap `neededBy` resolves.

**Overlaps.** AlgebraicVectorBundles §L1A and §L2B are still defined at the head of its open revision. That head's "How to read the build" maps L1A to Layer 4 (relative Spec) and L2B to Layer 7 (geometric vector bundles). No citation breaks, and no id is defined only by an open revision. No open pull request changes this roadmap.

**Ownership.** No new object was introduced; the moved theorem keeps its owner, and no declaration was renamed. Ownership against open pull requests was checked through `roadmaps grep` for the citations touched this round.

**Suggested.lean.** There is no `Suggested.lean` at the design stage, so no `#check` elaboration was run.

No gate failures were listed for this round.

## Adversarial pass on changed or added statements

| Statement | Instances | Values computed | Result | Change |
|---|---|---|---|---|
| 5.5.1 autoequivalence | `ℱ = 0` | `NFT(0) = 0`, so the quasi-inverse is the identity on `0` | holds | none |
| 5.5.1 autoequivalence | `ℱ = ℒ_ψ(x²)`, `k = 𝔽_5`, `Λ = 𝔽_11`, `ψ(1) = 3` | `S = ∅`, `r = 1`, `s = 2`, so `U' = A'` and `rk(K') = 1`. `G1 = Σ_y ψ(y²) = 1 + 2·3 + 2·81 = 169 ≡ 4`. Since `t_NFT(x') = −ψ(−x'²/4)·G1` and `−1/4 = 1` in `𝔽_5`, `t_{NFT NFT}(x) = G1²ψ(x²) = 16ψ(x²) ≡ 5ψ(x²) = q·ψ(x²)`, the trace of `[−1]^*ℱ(−1)` | holds | none |
| 5.5.1 boundary: break exactly `1` | `ℱ = ℒ_ψ(x)`, `𝔽_5` | `Σ_x ψ(x(1 + x'))` is `5` at `x' = 4` and `0` elsewhere, so the transform is a skyscraper at `−1`, not lisse. Breaks `≥ 1` are not preserved, so the hypothesis "exceed `1`" is needed | holds | none |
| 5.5.1 boundary: break `< 1` | `ℱ = Λ` | `−Σ_x ψ(x x') = −5 δ_0`: a skyscraper at `0'` | holds | none |
| 5.5.1 at `p = 2` | `ℒ_ψ(x²)`; `ℒ_ψ(x³)` | `Tr(x²) = Tr(x)` makes `ℒ_ψ(x²) ≅ ℒ_ψ(x)`, break `1`, outside the class. `ℒ_ψ(x³)` has break `3`; §5.5 gives `rk = 3 − 1 = 2` and `U' = A'`, and §2.7 gives `h¹_c = d − 1 = 2` for every twist | holds | none |
| 5.5.1 over a non-closed field | `k = 𝔽_q` against ESDE's `k̄` | lisse and `∞`-breaks are geometric conditions, and `NFT` commutes with extension to `k̄` (proper base change). The twisting lemma gives some `a`; `a = 0` would put a slope-`< 1` part in `G_1`, so `a ≠ 0`. Then `s(G_1 ⊗ ℒ_ψ(a/π')) < r(G_1)`, contradicting the criterion at `s = a` | holds after extension to `k̄`, now stated in the route | route sentence |
| §5.3 after the move | elementary/Fourier definitions; `Λ_{𝔸¹}` | no remaining statement mentions breaks or `U'`; `H²_c(𝔸¹, Λ) = Λ(−1) ≠ 0` at `t = 0`. Checks 2–3 use §§2.7, 3.6, 5.4, 5.5 only as cross-checks of computed values | `*Needs:*` `§§3.4–3.5, 3.8, 5.2` suffices | §2.7 and §5.5 dropped |
| CharacterSumsOverFiniteFields bullet: normalization | `𝔽_3`, `χ = η`; `𝔽_5`, `Λ = 𝔽_11`, quadratic `χ` | that roadmap's §3.6 Check gives eigenvalue `−g(η) = −i√3`. Here §5.4 has `Frob` acting by `−Σ χ(x)ψ(Tr x) = −g(χ, ψ)`: `g ≡ 4`, Frobenius `−4 ≡ 7` | same normalization | wording |
| SheafConvolutionOnAbelianVarieties bullet: difference kernel | `L = δ_y`; composition | `d^*δ_y` is supported on `z = x + y` and sends `δ_x ↦ δ_{x+y}` (a Check of its §0.3). Composing the kernels `d^*L`, `d^*M` in §1.2: `∫_y L(y − x) M(z − y) = (L * M)(z − x)` | "can import §§1.1–1.2" is true | wording |

## For the maintainer

- **Renumbered plan target.** Plan target `5.3.2` (`naiveFourier_wildLisse_equiv`) is now `5.5.1`, and its README text moved from §5.3 to §5.5. No other roadmap cites either id; `roadmaps grep` finds FourierDeligneTransform named only by EtaleCohomologyFoundations, and not by target. No README section, layer or heading id changed.
- **Consumers.** None of the three downstream roadmaps cites this roadmap. All three bullets now say what each consumer could import.
- **Untrusted text.** The review contained no instructions to the worker; nothing suspicious to quote.
