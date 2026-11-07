# FIX-PKG-LocallyAnalyticDistributionsPartII~2

Repair round for the findings of `REV-PKG-LocallyAnalyticDistributionsPartII` (seven findings, one P2, six P3). Every finding was verified against the supplier at its open head (NoncommutativeAndEquivariantIwasawa at e311e48, PadicLocalLanglandsForGL2Qp at 84416ad, as printed by `roadmaps show`), the cached source texts and the pinned Mathlib and Tau Ceti before it was applied. Files changed: `packages/LocallyAnalyticDistributionsPartII/README.md`, `packages/LocallyAnalyticDistributionsPartII/Suggested.lean`. `metadata.toml`, `sources.toml` and `design/plan.json` are unchanged (no new source was needed and no new gap was needed: the saturation statement that F01 and F06 rely on is already in the `needs` of `gap:radius-algebras`).

## REV-PKG-LocallyAnalyticDistributionsPartII/F01 (P2) — applied

Verified: NoncommutativeAndEquivariantIwasawa §0.13a, item 1, at its open head constructs `Log H` for a `p`-saturated open subgroup with Lazard's limit formulas (its proof step 1), states independence of `H`, functoriality and the span-of-logarithms description for closed subgroups of `GL_n(ℤ_p)`; a uniform group with `ω_U` is saturated for odd `p` (ST03 line 827–832), which is already requested of PadicLocalLanglandsForGL2Qp under `gap:radius-algebras`.

Old → new. Summary, Scope line, "How to read the build", Layer 0 intro: the Lie algebra is now §0.13a's; this roadmap owns only the lattice-level facts and the normalisation. §0.1: imports `Log G = L_G`, independence of `U`, functoriality and the logarithm description from §0.13a (with the saturation hypothesis cited through §0.7 and `gap:radius-algebras`); keeps as targets freeness on a minimal generating set, powerfulness, `L_{G^{p^n}} = p^n L_G`, the one-parameter subgroups and `g_R`. §0.3 (i) is restated as a consequence of the span statement (conjugation into `GL_n(ℤ_p)`, openness of `G ∩ (1 + pM_n)` in the principal congruence subgroup), and the proof sketch of (ii) uses functoriality of `Log` along `G₁ ⊆ 1 + pM₂(ℤ_p)`. Supplier contract and Layer 0 dependencies cite §0.7 and §0.13a. First Check of §0.1 is identified with the `GL₁` check of §0.13a plus the normalisation.

## REV-PKG-LocallyAnalyticDistributionsPartII/F02 (P3) — applied

Verified: `Coadmissible` occurs nowhere in the README or `Suggested.lean` of PadicLocalLanglandsForGL2Qp at its head (grep count 0); the resolver flagged the same name. Old → new: "the predicate `AnalyticSupport.Coadmissible` with independence …" → "the coadmissibility predicate of §0.1 (compatible finite modules over the Banach stages, recovered by inverse limit) with independence …". No other line used the name; the resolver now reports no Lean name found nowhere.

## REV-PKG-LocallyAnalyticDistributionsPartII/F03 (P3) — applied

Verified: ST03 line 872–876 (Theorem 4.5(ii)) proves noetherianity of `D_r` only for `r ∈ p^ℚ`; the README's own Source correction 2 says so. Old → new: §4.7 (ii) now reads "for every real `r` with `1/p < r < p^{−1/2}`: for `r ∈ p^ℚ` from (i), for every real `r` from §4.8 (ii), whose range contains this one since `1/2 ≥ 1/(p−1)` for `p ≥ 3`"; the proof sketch restricts the noetherian closedness argument to `r ∈ p^ℚ` and routes the irrational radii (instance `r = p^{−1/√2}`) through §4.8 (ii); the *Needs* line cites §4.8 for (ii) as well as (iii).

## REV-PKG-LocallyAnalyticDistributionsPartII/F04 (P3) — applied

Verified by computation (table below): under the contragredient of left translation a monomial `x₁⋯x_k` acts on functions as the left-invariant operator of `Ad(g⁻¹)S(x₁⋯x_k)` at `g`, so a central `z` acts on `Ind(χ)` by `dχ(HC(S(z)))`; `S(Δ) = Δ` for `sl₂`; for `sl₃` the cubic generator changes sign. Old → new: §4.2 defines induced as `λ = dχ ∘ HC ∘ S` (equal to Fu's `dχ ∘ HC` for `SL₂^m`), adds the bullet `S(Δ) = Δ` and the bullet describing `S` on `Z(g)` as `μ ↦ −μ` in `ρ`-shifted coordinates, and a Check with the `sl₃` witness (`dχ = (1, 1, −2)`: values `−6` and `6`); §4.4's first bullet derives `dχ ∘ HC ∘ S` with the route; Source correction 10 records Fu's sentence (affects nothing in Fu, whose theorem is for `G₁^m`). §4.5, §4.11 and every `SL₂` Check are unchanged in content, since the two definitions agree there.

## REV-PKG-LocallyAnalyticDistributionsPartII/F05 (P3) — applied

Verified: `SO(2)(ℤ_p)` is open in `O(2)(ℚ_p)` (open in the index-two kernel of `det`) and on it `Ad` fixes `x`. Old → new: §1.3's counterexample now says "`δ_s ∗ x̃ ∗ δ_{s⁻¹} = −x̃ ≠ x̃` … for `G = O(2)(ℤ_p)`, or for any open subgroup of `O(2)(ℚ_p)` containing an element of determinant `−1`", with the `SO(2)(ℤ_p)` instance stated as the negative control.

## REV-PKG-LocallyAnalyticDistributionsPartII/F06 (P3) — applied

Verified: NoncommutativeAndEquivariantIwasawa §0.1 at head states the uniform predicate and dimension only; roots and their uniqueness are in §0.7 ("uniqueness of such roots in a saturated group"). PadicLocalLanglandsForGL2Qp §0.1 at head promises Dirac, pushforward, convolution, tensor and open-subgroup comparisons and strong biduality, not density of the Dirac span; ST02 line 514–526 (Lemma 3.1) proves it from reflexivity and Hahn–Banach. Old → new: §0.1 *Needs* cites §0.1 for uniform groups and the lower `p`-series, §0.7 for saturation and unique roots (with `gap:radius-algebras` for the saturation of `(G, ω_U)`), §0.13a for `Log`. §1.1 gains the bullet "the `K`-span of the Dirac distributions is dense in `D(G, K)`", proved from strong biduality (PadicLocalLanglandsForGL2Qp §0.1) and Hahn–Banach over the spherically complete `K` (LocallyAnalyticDistributions §0.2; ST02 Lemma 3.1, p. 13); its *Needs* and the Layer 1 dependencies cite LocallyAnalyticDistributions §0.2; §1.3's sketch and *Needs* cite that bullet instead of the supplier.

## REV-PKG-LocallyAnalyticDistributionsPartII/F07 (P3) — applied

Verified at the pin: `TauCeti.IsCompactModule` (`TauCeti/Topology/Algebra/Module/Compact.lean` line 294), `TauCeti.IsCompactModule.completedGroupAlgebraModule` (`…/CompletedGroupAlgebra/Module.lean` line 341, under `[TopologicalSpace R] [CompactSpace R] [CompactSpace Γ] [SeparatelyContinuousMul Γ] [TopologicalSpace M] [ContinuousSMul Γ M]`, `[DistribMulAction Γ M] [SMulCommClass Γ R M]`, and `hM : IsCompactModule R M` as an argument) and `completedSMul_of` (line 273). The reviewer's witness is partly off: Mathlib at the pin does have `DistribMulAction (SpecialLinearGroup ι F) (ι → F)` (`Mathlib/LinearAlgebra/Matrix/SpecialLinearGroup.lean` line 476, `F` a commutative ring) and a `SymmetricPower` module (`Mathlib/LinearAlgebra/TensorPower/Symmetric.lean`), but the symmetric power has no functoriality and no group action, so `Sym^k(ℤ_p²)` with its `SL₂(ℤ_p)`-action is still missing for `k ≥ 2`; "not statable" stands. Old → new: the `Suggested.lean` docstring item names the missing carrier accurately and the Tau Ceti declaration that would give the module structure; the README's "From Tau Ceti" contract and the Scope's library bullet list `TauCeti.IsCompactModule`, `TauCeti.IsCompactModule.completedGroupAlgebraModule` and `completedSMul_of` with their hypotheses; §3.9 gains the API bullet that for `W = Sym^k(K²)` with lattice `Sym^k(ℤ_p²)` the Lie module `𝓛(W)` is the rationalised module structure of that declaration (both continuous, agreeing on `G₁`, `ℤ_p[G₁]` dense), which §5.2 (i) uses.

## Checks

- **Elaboration.** `lake env lean` on `packages/LocallyAnalyticDistributionsPartII/Suggested.lean` from the content checkout: exit 0 in 10 s; the only diagnostic is `declaration uses 'sorry'` at the headline theorem (line 77 after the header edit). No `set_option`, single `import Mathlib` plus one existing Tau Ceti module; declarations unchanged.
- **Worker repair (module header warning).** The worker's build logged the warning that the file imports `Mathlib` without `module`. Old → new: the header `import Mathlib` / `import TauCeti.…CompletedGroupAlgebra.Basic` became `module`, `public import Mathlib`, `public import TauCeti.…CompletedGroupAlgebra.Basic`, with `@[expose] public section` placed before `open TensorProduct` and the namespace. No declaration, docstring, binder or README text changed; the file re-elaborated with exit 0 and only the `sorry` warning.
- **`#check`.** A scratch copy with `#check @firstCongruenceSL2`, `#check @firstCongruenceProduct`, `#check @isSemisimpleModule_of_finiteDimensional` elaborates to the same types as the worker's signatures file: the theorem keeps `Fact p.Prime`, `p ≠ 2`, `[Module ℚ_[p] M]`, `[IsScalarTower …]`, `[FiniteDimensional ℚ_[p] M]` explicitly, matching README §3.8 and §0.2. Nothing changed in the Lean statements this round.
- **Dependency gate** (run as instructed, `--movable`):

  ```
  depcheck: 232 roadmaps, 2198 edges, 0 problem(s)
  ```

  No UPWARD or CYCLE line, no `moved:` line.
- **Citation resolver** on the README: cross-roadmap citations found nowhere: none; Lean names found nowhere: none (the `AnalyticSupport.Coadmissible` lead is gone).
- **Pattern search.** `Coadmissible`, "open subgroup of O(2)(ℤ_p)", "unique p^i-th roots" under §0.1 and "density of Dirac distributions" as a supplier citation occur nowhere else in the README; every remaining `dχ ∘ HC` is a deliberate mention of Fu's form. No absolute path, process word or pull-request number in the README, the Lean file or this report.

## Adversarial pass on the statements added or changed

| Statement | Instances | Values | Result | Change |
|---|---|---|---|---|
| §0.1 `Log G = L_G` via §0.13a | `G = 1 + pℤ_p`, `p` odd | `ω_U(x) = 1 + v_p(log x / p)`; `ω > p/(p−1)` iff `ω ≥ 2` iff `x ∈ G^p`; `p`-th root of `(1+p)^{pa}` is `(1+p)^a`, unique | saturated, roots unique | none |
| §0.1 `L_{G^{p^n}} = p^n L_G` | `G = ℤ_p`, `n = 1` | `L_{pℤ_p} = pℤ_p = p·L_{ℤ_p}` | holds | none |
| §0.1 freeness on a minimal generating set | `G₁`, generators `exp(ph), exp(pe), exp(pf)` | `log` images `ph, pe, pf`, a basis of `p·sl₂(ℤ_p)` | holds | none |
| §0.3 (i) through the span | `G = G₁ ⊂ SL₂(ℚ_p)`, `n = 2` | `G₁ ∩ (1 + pM₂) = G₁`, `log G₁ = p·sl₂(ℤ_p)`, span `sl₂(ℚ_p)`; for the diagonal torus of `SL₂(ℤ_p)` (not open) the span has dimension 1 | holds; non-open control separates | none |
| §0.3 (i) `det(exp x) = exp(tr x)` | `x = ph` | `tr x = 0`, `det exp(ph) = 1`; `x = p·E₁₁`: `det = exp(p) ≠ 1` | `log G₁ = p·sl₂`, not `pM₂` | none |
| §1.1 Dirac density | `G = {1}` | `D(G,K) = K = K·δ₁` | holds | none |
| §1.1 Dirac density, control | `G = ℤ_p`, `K` discretely valued | `K` spherically complete, so Hahn–Banach applies; `1̃ = log(1+T)` lies in the closure although not in the span (§1.1 Check 4) | density, not equality | none |
| §1.3 `O(2)` example | `s = diag(1, −1)`, `x = E₁₂ − E₂₁` | `Ad(s)x = sxs⁻¹ = −x`; `δ_s ∗ x̃ ∗ δ_{s⁻¹} = −x̃ ≠ x̃` since `x̃ ≠ 0` | not central | none |
| §1.3 negative control | `G = SO(2)(ℤ_p)` | open in `O(2)(ℚ_p)` (index 2 of `det`), `Ad` trivial on `so(2)` | `x` central | recorded |
| §4.2 `S(Δ) = Δ` | `Δ = ½h² − h + 2ef` | `S(h²) = h²`, `S(h) = −h`, `S(ef) = fe`; `½h² + h + 2fe = Δ` (Conv. 6) | holds | none |
| §4.2 `P_{S(z)}(μ) = P_z(−μ)` | `sl₂`, `z = Δ` | `HC(Δ) = ½h² + h = ½(h+1)² − ½`, `P_Δ(μ) = ½μ² − ½`, even | `S(Δ) = Δ`, consistent | none |
| §4.2 `sl₃` witness | `ρ = (1,0,−1)`, `P_{C₃} = μ₁μ₂μ₃`, `dχ = (1,1,−2)` | `P(dχ + ρ) = 2·1·(−3) = −6`; `P(−(dχ+ρ)) = 6` | definitions differ | Check added |
| §4.2 trivial character control | `χ = 1`, `sl₃` | `P_{C₃}(ρ) = 1·0·(−1) = 0 = P_{C₃}(−ρ)` | both give 0 (trivial rep self-dual) | none |
| §4.4 action of a monomial | `G = ℤ_p`, `x = 1`, `k = 1` | `ρ(x)f = −f′`; `S(x)^L f = (−x)^L f = −f′` | agree | none |
| §4.4 action of a monomial | `k = 2`, `X_1^R X_2^R f(g)` | `= [Ad(g⁻¹)(x₂x₁)]^L f(g)`; with signs `ρ(x₁x₂) = [Ad(g⁻¹)S(x₁x₂)]^L` | formula as stated | none |
| §4.7 (ii) range inclusion | `p = 3, 5` | `1/2 ≥ 1/(p−1)`: `1/2 ≥ 1/2`, `1/2 ≥ 1/4`; `(1/p, p^{−1/2}) ⊆ [1/p, p^{−1/(p−1)})` | holds for all odd `p` | none |
| §4.7 (ii) at an irrational radius | `r = p^{−1/√2}` | `1/p < r < p^{−1/2}` since `1 > 1/√2 > 1/2`; `ρ = pr = p^{1 − 1/√2} > 1` | §4.8 applies; noetherianity not available | rerouted |
| §3.9 module structure through Tau Ceti | `k = 0` | `W₀ = ℤ_p`, trivial action; `completedSMul_of` gives `g • 1 = 1`, the augmentation | matches §3.9 Check 1 | none |
| §3.9 module structure through Tau Ceti | `k = 1`, `g = exp(pe)` | `exp(pe) = ` rows `(1, p), (0, 1)`, equals `exp(dρ(pe))` on `ℤ_p²` | matches §3.9 Check 2 | none |
| §3.9 hypotheses of the declaration | `R = ℤ_p`, `Γ = G₁`, `M = Sym^k(ℤ_p²)` | `ℤ_p` compact ring; `G₁` compact with continuous multiplication; `M ≅ ℤ_p^{k+1}` compact, polynomial action continuous and `ℤ_p`-linear | all hypotheses met | none |
| Suggested.lean docstring claim on Mathlib | pin | `DistribMulAction (SpecialLinearGroup ι F) (ι → F)` exists (line 476); `SymmetricPower` has no `map` | docstring says exactly this | rewritten |

## For the maintainer

- **Ownership moves down a level, not sideways.** The Lazard Lie algebra is now cited from NoncommutativeAndEquivariantIwasawa §0.13a (earlier in the merge order; its placement is unchanged by this round). This roadmap keeps the lattice-level facts, the normalisation `g_R = (1/p) R L_G` and the `SL₂` computations. No name another roadmap cites changed: the three Lean declarations are unchanged.
- **Saturation of `(U, ω_U)` for odd `p`** is used by §0.1 (for F01 and F06) and is requested of PadicLocalLanglandsForGL2Qp through the existing `gap:radius-algebras` (the (HYP) clause); NoncommutativeAndEquivariantIwasawa §0.7 defines saturation but does not state it for `ω_U`. If PadicLocalLanglandsForGL2Qp declines that clause, a one-line target in NoncommutativeAndEquivariantIwasawa §0.7 would be the natural owner.
- **Source correction 10** (Fu, §5, p. 16) is a convention remark for general `𝔾`; nothing in Fu's theorems for `G₁^m` is affected.
- **Ownership against open pull requests** was checked with the roadmaps grep over the open heads and main for `Log`/Lazard Lie algebra (owner: NoncommutativeAndEquivariantIwasawa §0.13a) and for the compact-module declaration (library). Pull requests whose files the brief does not give were not searched further.
