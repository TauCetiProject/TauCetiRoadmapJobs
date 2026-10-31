# FIX-DESIGN-RationalAnalyticPrismatization~5

Both review findings were checked against the cited texts and both were applied.

## F01 (P2) — applied

**Verified.** On the board's main, `packages/AnalyticStacks/design/README.md` §4.5 states this theorem for any C₀ of Fredholm affinoids that is closed under finite limits and finite coproducts (§3.3). GelfRing_{ω₁}^op is such a C₀: every Gelfand ring is Fredholm by our 1.7. The text at ABLB lines 2235–2259 (Lemma 4.2.11, Definition 4.2.12, Remark 4.2.13) matches.

**What changed.** 2.3's first claim ("Prove that … Perf^{[a,b]} extends uniquely to a sheaf … on GelfStk") now imports AnalyticStacks §4.5 for C₀ = GelfRing_{ω₁}^op. Only the claim that Perf(X) is exactly the dualizable objects stays a target here, together with the D^+ and Nuc claims.

- **Proof route.** The `hypercover-inversion` step is replaced by an argument through the limit of D(A) over the affinoids of X, with dualizability tested on each affinoid. For D^+ and Nuc the route now gives the input of ALRS Lemma 2.1.9 itself: they are full subcategories of D, and D(−) inverts !-equivalences (`analytic-stack-topos`). This follows ALRS lines 836–839 and 863.
- **New gap.** `perfect-complexes-fredholm-stacks` (AnalyticStacks §4.5) replaces `hypercover-inversion`, which no longer had a consumer. It is listed under Declared gaps and in the plan's `gaps`, and appears on 2.3's *Needs* line and prerequisites and in the Layer 2 Dependencies.
- **Supplier lists.** §4.5 is added to the AnalyticStacks sections and §0.13 is dropped, since no remaining gap cites it. The AnalyticStacks supplier prose and the Scope summary sentence are updated to match.
- **Plan locator.** 2.3's locator now points to ALRS §2.1 line 809, the claim that is still owned here.
- **Same pattern elsewhere.** 7.5 said "Define the sheaves of categories Perf^{[n,m]} on Gelfand stacks and …". It now reads "With Perf^{[n,m]} on Gelfand stacks as in 2.3 (AnalyticStacks §4.5), define the sheaf of categories Perf^{[n,m],FF} …". No other target re-plans an AnalyticStacks section: each layer heading was compared with AnalyticStacks §§0–7.

**Adversarial pass on the changed text:**

| Statement | Instances | Values | Result |
|---|---|---|---|
| Perf(X) = dualizable objects (2.3) | X = ∅; GSpec(ℚ_p); GSpec(ℚ_p⟨T⟩); GSpec(ℚ_p[ε]/ε²) | D(∅) = 0, so both sides are 0. Over ℚ_p both sides are the bounded finite-dimensional complexes. Over ℚ_p⟨T⟩ both sides are the perfect ℚ_p⟨T⟩-complexes (Fredholm by 1.7). Over ℚ_p[ε]/ε², ℚ_p has Tor_i = ℚ_p for every i, so it is neither perfect nor dualizable. | holds |
| Route: dualizability tested on affinoids | D(X) = lim D(A) along symmetric monoidal pullbacks | In a limit of symmetric monoidal ∞-categories, an object is dualizable exactly when each of its components is. | holds |
| Gap `perfect-complexes-fredholm-stacks` hypotheses | C₀ = GelfRing_{ω₁}^op; a non-Fredholm C₀ | Pushouts of rings are finite limits of affinoids and finite products are finite coproducts (1.4), so GelfRing_{ω₁}^op qualifies. For a non-Fredholm C₀ (CS22 Example 9.6, as cited in AnalyticStacks §4.5) the hypothesis is needed and is kept. | holds |
| D^+ and Nuc via ALRS Lemma 2.1.9 | !-equivalence Y → X | D^+(X) → D^+(Y) is fully faithful because D^+ ⊂ D is full and D(X) ≃ D(Y) (ALRS lines 836–839). | holds |
| 2.3 Checks (unchanged) | ℚ_p → ℚ_p^cyc; ℚ_p⟨T⟩ | The descended complex is perfect of the same amplitude (now supplied by §4.5). ℚ_p⟨T⟩ is nuclear and eventually connective but not dualizable. | still correct |
| 7.5 rewording | — | The statement is unchanged; Perf^{[n,m]} on Gelfand stacks is now attributed to its owner. | holds |

## F02 (P3) — applied

The README is right: 5.1's algebraic cone is defined on X^An from 2.1. `"target:2.1"` was added to 5.1's `prerequisites` in `plan.json`. A scripted comparison now finds no target statement or gap text missing from the README, and every gap's `neededBy` matches the targets that cite it (21 of 21). 2.1 comes before 5.1, so this is not a forward reference.

## Checks

Dependency gate output:

```
candidate: RationalAnalyticPrismatization is not in the merge order yet; checked as if placed after LocallyAnalyticRepresentationsOfLocalGroups (the intake inserts it when its design is accepted)
depcheck: 56 roadmaps, 667 edges, 0 problem(s)
```

No UPWARD or CYCLE line.

## Notes for the maintainer

- **Ownership.** The Perf sheaf on Gelfand stacks now belongs to AnalyticStacks §4.5 (on the board's main). No `Suggested.lean` exists at this stage, so there was no `#check` pass to run.
- **Gaps.** The gap slug `hypercover-inversion` is withdrawn and replaced by `perfect-complexes-fredholm-stacks`. There are still 21 gaps, eighteen of them supplied by AnalyticStacks.
- **Other roadmaps.** No name that other roadmaps cite was changed.
- **Ownership against open pull requests.** Not re-checked this round beyond the AnalyticStacks comparison. The finding concerned only that board package.
