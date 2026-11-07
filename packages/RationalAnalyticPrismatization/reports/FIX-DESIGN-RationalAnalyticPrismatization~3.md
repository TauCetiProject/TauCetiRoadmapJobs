# FIX-DESIGN-RationalAnalyticPrismatization~3

Files edited: `packages/RationalAnalyticPrismatization/design/README.md`, `packages/RationalAnalyticPrismatization/design/plan.json` (the same text replaced in both, so the plan's statement, gap and test strings still match the README word for word). `sources.toml` is unchanged: every locator added in this round (HM Example 5.3.21, Gest Proposition 6.13, ALRS Construction 2.1.2, ALRS Proposition 3.5.3) is already recorded there.

## F01 (P1) — not actionable in this package: a re-raised finding that a human decides; AnalyticStacks is not yet a supplier this roadmap may cite

The previous round marked F01 not actionable. Under the brief, a finding re-raised after that is decided by a human and not by another repair round, so nothing is edited. The facts the human needs, checked this round:

- Board issue 2078, `[Target] AnalyticStacks`, exists. It is closed, with label `state:done`.
- Its triage is on the board's main as commit `a5c9782`, with `packages/AnalyticStacks/target.md` (Verdict: design). AnalyticStacks has no design and is not in `merge-order/ORDER.txt`.
- No AnalyticStacks roadmap exists on the content repository's main, and no open roadmap pull request adds one.

So AnalyticStacks fits none of the supplier classes the brief allows: the pins, roadmaps on main, roadmaps earlier in the merge order, or open pull requests that add a roadmap folder. Naming it in `gaps[*].supplier` would cite a roadmap with no sections. The reviewer's clause numbering would also come from a target statement, which is not a roadmap section.

The reviewer's mapping of the twenty gaps to clauses 1–7 of the target statement (the Gestalten pair outside it) is ready to apply mechanically once a human accepts AnalyticStacks as the supplier.

## F02 (P3) — applied

- `classifying-stack-dualizing` (README §Required contracts and `gaps[4].needs`):
  - Old: "a locally profinite group with an open subgroup of finite cohomological dimension … dualizing complex the modulus character".
  - New: "a locally pro-p group G and ℚ_p-coefficients … the classifying stack BG^sm … dualizing complex the unit object in degree 0 on which G acts through the modulus character δ(g) = [gKg⁻¹ : K], K an open pro-p subgroup".
  - Checked at HM line 4911–4927. Example 5.3.21 is for locally pro-p G and ℤ[1/p]-algebras, with cd 0 and the δ character. The finite-cd hypothesis belongs to Example 5.3.22 (HM line 4928), which takes ℤ/pⁿ-coefficients.
- `gestalten-affine-proper` (README and `gaps[18]`):
  - Old: "countably presented n-affine to n-proper".
  - New: "κ-small presented … (κ of the Conventions; countably presented in Gest, κ = ℵ₁)". The Supply sentence for Gest Proposition 6.13 (Gest line 2062–2065) now says that Gest states it, and the countable-colimit stability, for κ = ℵ₁. It also says that the κ-small analogues are needed, citing ALRS line 705.

## F03 (P3) — applied

7.4 Check (README and plan test):
- Old: `D^×_{FF,Marc(K)×Marc(K)} = D_{FF,K} ×_{GSpec(ℚ_p)} D_{FF,K}`.
- New: `D^×_{FF,K} ×_{GSpec(ℚ_p)} D^×_{FF,K}`, derived from:
  - finite-limit preservation of D^×_{FF,(−)} (ALRS line 2689–2690);
  - finite-limit preservation of realization (7.3);
  - the final object realizing to GSpec(ℚ_p).
- The Check now names the wrong value: the unpunctured product is strictly larger, because it contains the points of radius (0, r) and (r, 0) coming from κ_ϖ⁻¹(0).

## F04 (P3) — applied

References, Gest:
- Old: "cited only for the construction this roadmap does not use".
- New: "consumed through the contracts `gestalten-affine-proper` and `gestalten-transmutation` (Lectures VI, VII and IX); the numbering cited by ALRS Construction 2.1.2 agrees with this file".

This agrees with `sources.toml`'s `cited_for`.

## F05 (P3) — applied

Two clauses taken word for word from ALRS are rephrased, in the README and the plan:
- 6.2: "sends geometric realizations of arc-hypercovers … to !-equivalences" → "takes the geometric realization of an arc-hypercover … to a !-equivalence" (compare ALRS lines 2352–2353).
- 10.3: "Let G be a compact p-adic Lie group and G_0 ⊂ G an open normal uniform pro-p subgroup" → "Let G be a compact p-adic Lie group with an open normal subgroup G_0 that is uniform pro-p" (compare ALRS lines 5086–5087).

The proof route of 2.7 (README line 541) uses a similar phrase. It has a different hypothesis (strictly totally disconnected, after ABLB) and no long verbatim run, so it is left as it is.

## Adversarial pass on the changed text

| Statement | Instances | Computed values | Result |
|---|---|---|---|
| `classifying-stack-dualizing` | G = ℚ_p^× (abelian), K = ℤ_p^×; mirabolic ℚ_p ⋊ ℚ_p^×, K = ℤ_p; G = ℤ_p (pro-p) | δ ≡ 1 on the abelian group; δ(a) = [aℤ_p : ℤ_p] = p^{v_p(a)}, so α^*δ⁻¹ has slope −1, which is ALRS lines 8819–8821; pro-p G: cd 0, ω = 1 in degree 0 (HM line 4914–4916) | holds; both consumers (10.3 BG^sm of a p-adic Lie group, 12.2 ℚ_p^{×,sm}) are locally pro-p |
| same, wrong model: finite-cd hypothesis with ℤ/p coefficients | G = ℤ_p, Λ = 𝔽_p | ω = 1[1] (HM 5.3.22: 1[cd G]), not degree 0 | excluded by "ℚ_p-coefficients" |
| `gestalten-affine-proper`, κ-small implication | GSpec(ℚ_p⟨T⟩) → GSpec(ℚ_p), κ uncountable | ℚ_p⟨T⟩ is κ-compact and κ-small presented, so it is 0-proper (ALRS line 731) | 2.2's first Check is recovered; for κ = ℵ₁ this is exactly Gest 6.13(i) |
| 7.4 Check | K = 𝔽_p((π^{1/p^∞})) | left side: radius pairs in (0, ∞)²; new right side: (0, ∞) × (0, ∞); old right side: [0, ∞)², including (0, r) | new Check holds; old value excluded and named |
| 7.4 Check, degenerate | Marc(𝔽_p) × Marc(𝔽_p) = Marc(𝔽_p) | GSpec(ℚ_p) ×_{GSpec(ℚ_p)} GSpec(ℚ_p) = GSpec(ℚ_p), agreeing with the 7.3 Check | consistent |
| 6.2, 10.3 rephrasing | — | hypotheses unchanged (separable totally disconnected perfectoid over 𝔽_p; compact G, open normal uniform pro-p G_0) | meaning preserved |

## Checks run

Dependency check (`tauceti-roadmap … gate --candidate packages/RationalAnalyticPrismatization/design/README.md --only RationalAnalyticPrismatization --order merge-order/ORDER.txt`):

```
candidate: RationalAnalyticPrismatization is not in the merge order yet; checked as if placed after LocallyAnalyticRepresentationsOfLocalGroups (the intake inserts it when its design is accepted)
depcheck: 56 roadmaps, 667 edges, 0 problem(s)
```

The output has no UPWARD or CYCLE line. `plan.json` still parses as JSON. No `Suggested.lean` exists at the design stage, so no `#check` pass was run.

## For the maintainer

- F01 is waiting on a human decision: whether AnalyticStacks, which today is only a triaged board target with no design and no merge-order slot, may be named as the supplier of the twenty gaps.
- Two contracts, `analytic-stack-topos` and `hypercover-inversion`, keep "countably presented !-equivalences". These follow ABLB's ω₁-indexed definition, and 2.1 states that definition with GelfRing_{ω₁}. F02 did not touch them, and they are left as they are.
- No name that another roadmap cites has changed.
- No suspicious instructions were found in the review text.
