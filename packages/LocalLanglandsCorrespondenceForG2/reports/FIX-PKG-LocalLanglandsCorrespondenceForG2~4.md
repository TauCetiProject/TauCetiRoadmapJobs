# FIX-PKG-LocalLanglandsCorrespondenceForG2~4

The review is `REV-PKG-LocalLanglandsCorrespondenceForG2~3` (four findings: F01, F03 at P2; F02, F04 at P3). All four were checked against GS, the package and the suppliers' current heads. All four are correct. Files changed: `packages/LocalLanglandsCorrespondenceForG2/README.md`, `Suggested.lean` (module docstring only), `design/plan.json` (top-level `gaps` only) and `sources.toml` (GS locator list).

## F01 (P2) — applied differently

**Verified.** §2.3 defines SpinLift(Σ) only for a Σ whose cuspidal similitude lift to PGSO₈ is nonzero. §§2.4, 5.2 and 5.3 used SpinLift(Σ) without establishing that hypothesis. GS supplies it for exactly these globalizations (GS line 771–773, proof of Prop. 4.1(i)).

**Change.** §2.3 gains a second statement: a globally generic cuspidal Σ of PGSp₆(𝔸_k) with Σ_u ≅ St has a nonzero cuspidal similitude lift to split PGSO₈, with local components the local lifts. It has a Rallis route (GS Lemma 12.5), its own Needs and three Checks. The statement is now cited at its point of use in §2.4, §5.2 and §5.3. For §5.3, Σ is the exceptional lift: ExceptionalThetaCorrespondencesForG2 §10.6 makes it globally generic and cuspidal, and θ(St_G₂) = St gives Σ_u ≅ St. The Layer 2 Dependencies list is updated.

**Why "differently".** The repair the reviewer proposed needs "nonzero local lifts at every place". No supplier gives this at the archimedean places: MetaplecticAutomorphicForms §3.41 is nonarchimedean only, and pgsp6-pgso8-complex-theta only describes parameters.
- New gap `pgsp6-pgso8-archimedean-generic-theta` on MetaplecticAutomorphicForms (§§3.17, 3.34, 3.41): generic representations at real and complex places have nonzero lift. The source for this is GS line 1580–1583.
- `pgsp6-similitude-theta-tables` now also covers the vanishing of the Steinberg lift to PGO₆ (GS line 1577–1578), which was previously used without a supplier.
- MLE §5.1 (CKPSS generic transfer) supplies the generic Arthur parameter.

**Same pattern elsewhere.** §8.1 used the archimedean nonvanishing and the Steinberg vanishing without a supplier. Its route, Needs and the Layer 8 Dependencies now cite both contracts.

## F02 (P3) — applied

**Verified.** At F = ℚ₅, trivial spin Satake class and s = 2:
- Each Tate factor is (1 − 5⁻²)/(1 − 5) = −6/25, so with ψ₀ of conductor ℤ₅ both sides are (6/25)⁸.
- With ψ₅(x) = ψ₀(5x), ε gains |5|₅^(8·3/2) = 5⁻¹², so the gamma factor is 5⁻¹²(6/25)⁸.

**Change (§2.4 Check).** Old: "both sides equal the ratio of the unramified spin factors" for an arbitrary ψ. New: for ψ of conductor O_F with its self-dual measure, both sides equal L(1 − s, SpinLift(σ)∨)/L(s, SpinLift(σ)). The Check now includes the ℚ₅ witness and the ψ₅ negative control, which agrees with the ψ_a Check. The theorem itself still holds for every nontrivial ψ.

**Same pattern elsewhere.** §3.10's bullet "unramified data and unramified ψ" already assumes conductor O_F; it is correct and unchanged. The §2.4 route and the pgsp6-shahidi-spin-factor contract use Tate gamma factors with ψ, so the epsilon factors are included; both are correct and unchanged.

## F03 (P2) — applied

**Verified.** §2.4 gives only the untwisted degree-8 identity. The converse contract needs twists by GL_r for all r ≤ 8; for r = 2 that is a degree-16 identity, which §2.4 does not supply. On PGSp₆, only quadratic GL₁ twists are available: σ ⊗ η∘sim has central character η².

**Change (§2.5).** Old route: "…or §2.4 with the local converse…", with Needs §2.1, §2.4. New route: twist rule of the lift (tables contract), then f₂-pullback to χ∘SN (§2.1), then multiplication of the SO₈ parameter by χ, then §10.30. New Needs: §2.1, §2.2, the tables contract, gap `so8-spinor-norm-twist` and §10.30. In the plan, gln-generic-local-converse's `neededBy` drops 2.5 and keeps 3.13.

**Adversarial pass on the remaining route.** The SO₈ step, that Arthur's packet of χ·φ is Π_φ ⊗ χ∘SN, is not stated in MLE §3.15. It is now declared as the gap `so8-spinor-norm-twist` on ModularityAndLanglandsExtensions §3.15. The identification of χ with χ∘SN goes through SO₈(F) → H¹(F, μ₂) = F×/F×², which is the spinor norm. §10.3 uses the same step, so its Needs and the Layer 10 Dependencies now cite the same contract.

## F04 (P3) — applied

**Change (`Suggested.lean` module docstring).** New unstatable entry for §0.2 (A₂ detection, with component groups μ₃ and S₃) and §0.3 (spin detection and the component-group comparison). It lists the missing carriers: parameters with discreteness, L-factors of Weil–Deligne representations, component groups, and the inclusions SL₃(ℂ) → G₂(ℂ) → Spin₇(ℂ). At the pinned Tau Ceti, `TauCeti/Algebra/Octonion/*` has only derivations, with no group map to `spinGroup` or from SL₃. Repairing the pattern, §6.6 (diamond fibres as Xu packets) is also named. No Lean declaration was added.

## Checks

**`lake env lean packages/LocalLanglandsCorrespondenceForG2/Suggested.lean`** (run from the content checkout): exit 0. The only diagnostics are `declaration uses 'sorry'` at 115:8 and 134:8. No build was needed.

**`#check @` pass.** I compiled a scratch copy with `#check @` for all five declarations. The elaborated types are identical to the previous round's and match the README: both semisimplicity hypotheses, the intertwiner `e`, and `Finite Γ` are all present. No declaration changed.

**Depcheck output:**
```
depcheck: 236 roadmaps, 2147 edges, 0 problem(s)
```
There are no UPWARD, CYCLE or moved lines.

**`roadmaps resolve`:** no unresolved citations and no unresolved Lean names.

**Plan and README agree.** All 14 gap slugs appear in both `plan.json` and the README's "Exact supplier contracts", with the same supplier.

## Adversarial pass (changed statements)

| Statement | Instances | Values | Result |
|---|---|---|---|
| §2.3 statement 2, lower lift | St versus a Spin₆-factoring parameter, φ = Sym³ | dim(Sym⁶)^SL₂ = 0; 1 ⊕ Λ²Sym³ = 1 ⊕ 1 ⊕ Sym⁴ has invariants of dimension 2; Λ²Sym³ has dimension 5 + 1 = 6 | St is not lifted from PGO₆ |
| §2.3 statement 2, no Steinberg place | Σ = θ(τ) from PGO₆ | Standard parameter 1 ⊕ Λ²φ_τ; L^S = ζ^S·L^S(Λ²τ) has a pole at 1 | The lift to PGSO₈ is not cuspidal; added as a Check |
| §2.3 statement 2, L-value | Localization at u is Sym⁶ | One summand (Sym⁶ is irreducible, of dimension 7); L^S(1, Π) ≠ 0 with no pole, for cuspidal Π on GL₇ | The Rallis contract is used in its nonvanishing case |
| §2.3 statement 2, genericity | A component in Irr♠ | Its lift to split PGSO₈ is 0 (§3.42); generic components lift (§3.41) | The genericity hypothesis is needed |
| §2.4 unramified Check | ℚ₅, s = 2, ψ₀ and ψ₅ | (6/25)⁸ versus 5⁻¹²(6/25)⁸ | Corrected |
| §2.5 route | Unramified χ with χ(ϖ) = −1 | All 8 spin eigenvalues are negated; the 7 standard eigenvalues are unchanged; −1 ∈ SO₈(ℂ) acts on std₈ by −1 | Consistent with the §2.5 Checks |
| so8 gap convention | χ ∈ H¹(W_F, μ₂) | SO₈(F) → H¹(F, ker(Spin₈ → SO₈)) is the spinor norm | χ corresponds to χ∘SN |

## Ownership and maintainer notes

**Ownership checks** (`roadmaps grep` over main and the open heads):
- PGSO₈ appears only in MetaplecticAutomorphicForms §3.41 (local, nonarchimedean), so no roadmap owns §2.3's global statement. The roadmap owns it as an application of the declared Rallis contract.
- No roadmap owns the twist of Arthur packets by the spinor norm; MLE §3.15 owns Arthur's packets, so the new gap is placed there.

**New gaps for suppliers to fulfil:**
- `pgsp6-pgso8-archimedean-generic-theta` on MetaplecticAutomorphicForms.
- `so8-spinor-norm-twist` on ModularityAndLanglandsExtensions.
- `pgsp6-similitude-theta-tables` is extended by the Steinberg clause.

No names that other roadmaps cite were changed or removed, and no Lean name changed. Ownership against open pull requests was checked only for the roadmaps the brief gives with files, through `roadmaps grep`. No suspicious instructions were found in the review text.
