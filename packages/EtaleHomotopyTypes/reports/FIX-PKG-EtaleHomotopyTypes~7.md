# FIX-PKG-EtaleHomotopyTypes~7

Findings settled: the two findings of the round-6 review (F01, F02). Files changed: `packages/EtaleHomotopyTypes/README.md`, `packages/EtaleHomotopyTypes/design/plan.json` (the `needs` of one gap in the top-level `gaps` list), `packages/EtaleHomotopyTypes/sources.toml` (two `cited_for` strings). `Suggested.lean` and `metadata.toml` are unchanged.

## F01 (P2) — applied differently

Old: "a coherent morphism is 0-acyclic exactly when its geometric fibres are nonempty and connected" (gap, §3.8a projection target, §3.8 degree-one input). New: "a coherent **locally 0-acyclic** morphism is 0-acyclic exactly when …". 0-acyclicity is now defined as bijectivity of `F → f_*f^*F` for every étale sheaf of sets. Two negative-control Checks were added.

**Verification.** The finding is right that the unqualified equivalence is false. The reviewer's witness holds: for `f : Spec κ ⊔ Spec L → Spec R`, a two-element constant sheaf has 2 sections downstairs and 4 upstairs. The suggested hypothesis ("universally open") is not used, for three reasons:

1. **SGA1 is not in error.** At SGA1 line 12120–12122 the parenthetical ("ce qui, lorsque f est cohérent, revient à dire que les fibres géométriques de f sont connexes") is attached to "supposons de plus f 0-acyclique". That clause follows the standing hypothesis "f : X→S un morphisme localement 0-acyclique" in the same sentence. So the source states the equivalence only for locally 0-acyclic coherent morphisms. The witness is not locally 0-acyclic at `Spec κ`. Its strict localization there is `Spec κ^sep`, and the fibre of that over a geometric generic point of `Spec R^sh` is empty. The review's "Source issues: Error in SGA1 at XIII Proposition 4.1" should therefore not be recorded.
2. **The repair should not change the meaning of the cited result.** The repaired sentence keeps its locator, SGA 4 XV 1.16 (uncertified). Restating it under "locally 0-acyclic" keeps the hypothesis SGA1 gives for that citation. "Universally open" would be a different statement credited to the same locator. Both uses here already establish local 0-acyclicity (smooth `f` in old §3.8; the projection, as a base change of the universal local 1-asphericity target). The homotopy exact sequence target already assumes it. So nothing downstream gets weaker.
3. **Without a definition, the reviewer's repaired equivalence is still false.** The review reasons with constant sheaves only. Under that reading, take `X′ = {xy = t} ∖ {x = y = t = 0}` over the strictly henselian DVR `A` (the strict henselization of `K[t]` at 0). `X′ → Spec A` is smooth, so universally open, and coherent. `X′` is integral, so it is connected, and a constant sheaf has the same sections up and down. Yet its closed fibre is two disjoint punctured lines. So "universally open + coherent" plus the constant-sheaf reading makes "0-acyclic ⇒ connected fibres" false. The fix is to pin the definition (all étale sheaves of sets). For `X′`, the skyscraper sheaf `i_*{a,b}` at the closed point then has 2 sections on `Spec A` and 4 on `X′`.

**Proof of the repaired criterion under the pinned definition** (so the gap asks for something true):

- **(⇒), for every coherent `f`.** Let `s` be a point and `Z` its reduced closure, and take `F = i_{Z*}C` with `#C = 2`. Base change along the closed immersion gives `f^*F = i′_*C`. The stalk of `f_*f^*F` at `s̄` is `H⁰(X_{s̄}, C)`, because the strict localization of `Z` at its generic point is `s̄`. Bijectivity with `F_{s̄} = C` forces `X_{s̄}` to be nonempty and connected.
- **(⇐).** Reduce to `S` strictly local with closed point `s`; stalks of `f_*` commute with strict localization because `f` is coherent.
  - Injectivity: a point of `X_s` splits `F_s → H⁰(X, f^*F)`.
  - Surjectivity: take a section `σ`. On the connected `X_s`, `σ` is a constant `a ∈ F_s`, so `σ = f^*a` on an open set `E ⊇ X_s`. Hence `E` contains every generization of every `y ∈ X_s`.
  - For `t ∈ S`, local 0-acyclicity makes the fibre over `t̄` of the strict localization at `y` nonempty. So some point of `X_{t̄}` lies in `E`. On the connected `X_{t̄}`, both `σ` and `f^*a` are constant, so they agree.

**Pattern repaired everywhere.**

- **Gap `nonabelian-local-acyclicity`:** README line 135 and `design/plan.json` now define 0-acyclic morphisms and add "locally 0-acyclic" to the criterion. Supplier and section (`F.2.3`) are unchanged.
- **§3.8a definitions paragraph:** new definitions of 0-acyclic and locally 0-acyclic in prose.
- **§3.8a "Projections are 0-acyclic":** local conditions first, then the criterion "for coherent locally 0-acyclic morphisms". The SGA1 locator is now line 12120, the start of the sentence holding the standing hypothesis.
- **§3.8a homotopy exact sequence:** the surjectivity step now names the sheaf it applies the unit to, `π_*C`, using finite base change. This was recomputed: `Γ(S, π_*C) = C` for connected `S′`, so `Γ(X′, C) = C` and `X′` is connected.
- **Old §3.8 degree-one input (now §3.9d):** "locally 0-acyclic, being smooth, and coherent, being a morphism of finite-type schemes over a field; geometric fibres … nonempty and connected, so 0-acyclic by the criterion".
- **§3.8a Checks:**
  - The `Spec K ⊔ Spec K` Check now carries computed values: 2 sections versus 4, and 1 section for `X = ∅`.
  - New Check: the reviewer's witness, with the computation showing it is not locally 0-acyclic. It also shows that the surjectivity step fails on it: the trivial cover pulls back to a disconnected scheme.
  - New Check: `X′`, the constant-sheaf model of 0-acyclicity that the definition rules out.
- **`sources.toml`:** the SGA4 `cited_for` now reads "the 0-acyclicity criterion for coherent locally 0-acyclic morphisms".

Other uses of "0-acyclic" were checked and are unaffected: universal local 1-asphericity (a local notion), the x ↦ x² Check, and the product-formula hypotheses.

## F02 (P3) — applied

Old: §3.8 (elementary-fibration sequence) stood before §3.8a and §3.9b, which it consumes. New: it is §3.9d, after §3.9c. Updated:

- the references at README 89 and 101 now point to §3.9d;
- its `*Needs:*` line names "§3.9b (the detection lemma, for the fibre identification)", and the sentence about dependency direction is gone;
- the §3.9a range "unibranchness enters only in §§3.9b–3.9d and 4.7" now includes the elementary-fibration section, which uses §3.5's profiniteness for smooth `X_y`;
- the SGA1 `cited_for` in `sources.toml` now reads "3.9d …".

No mathematics changed. `design/plan.json` nodes are keyed by slug (`EH.3/elementary-fibration-sequence`), not by number, so nothing there refers to "3.8". A service grep for `EtaleHomotopyTypes…3.8` and `EtaleHomotopyTypes…elementary` found no match on main or in any open roadmap pull request.

## Checks

- **Elaboration:** `lake env lean packages/EtaleHomotopyTypes/Suggested.lean`, run from the pinned content checkout. Exit 0, no output. There is no `TauCeti.*` import, so nothing had to be built.
- **Binder check (`#check @name`):** `Suggested.lean` declares no `def`, `theorem`, `structure`, `instance` or `example`; it has only the module docstring and an empty namespace. So the scratch file would be empty and there are no elaborated types to compare. The file was not edited this round: no Lean statement depended on the changed README text, and its Layer 3 docstring names neither 0-acyclicity nor section numbers.
- **Dependency check:** the exact command of the brief, exit 0, complete output:

      depcheck: 56 roadmaps, 645 edges, 0 problem(s)

  No UPWARD, CYCLE or moved line.
- **`roadmaps resolve README.md`** (main 56b9472, 367 open heads): no cross-roadmap citation and no Lean name found nowhere.
- **Gap consistency:** a script checked that all 26 `gaps` entries of `design/plan.json` match the README's `What <Supplier> must provide (gap:<slug>)` paragraphs (same supplier, `needs` sentence contained verbatim). 0 mismatches.
- **Style grep** (LaTeX delimiters and process words "so far", "removed", "optional", "deferred", round labels, "pull request"): one hit was in new text, the mathematical phrase "with its closed point … removed". It was rephrased as "the complement of the closed point". The grep is now clean.
- **Gate failures:** none were listed in the brief.

## Adversarial pass on changed and added statements

| Statement | Instances tried | Values computed | Result / change |
| --- | --- | --- | --- |
| Criterion, unqualified (old) | `Spec κ ⊔ Spec L → Spec R` | geometric fibres: 1 point each; `Γ(Spec R, C) = 2`, `Γ(X, C) = 4` | false; hypothesis added |
| Criterion with "locally 0-acyclic" | same witness | strict-local fibre at `Spec κ^sep` over the geometric generic point of `R^sh`: ∅, so not locally 0-acyclic | no claim; Check added |
| Criterion (⇒) under the constant-sheaf reading | `X′ = {xy=t} ∖ {0}` over strictly henselian `A` | smooth (∂ = `(y, x)` ≠ 0 on `X′`); `π₀(X′) = 1`, `π₀(X′_s) = 2`; constant `C`: 2 = 2 | constant-sheaf reading breaks (⇒); definition pinned |
| Criterion (⇒) under the all-sheaves definition | `X′`, `F = i_*{a,b}` | `Γ(Spec A, F) = 2`, `Γ(X′, f^*F) = 2² = 4` | not 0-acyclic, as predicted |
| Criterion (⇐) | `Gₘ × Y → Y`, `Y` connected; open immersion `Gₘ ⊂ 𝔸¹` (étale, so locally 0-acyclic) | first: fibres `Gₘ` connected, `Γ = C` both sides. Second: fibre over 0 empty, criterion says not 0-acyclic; for `F` = the subsheaf represented by `Gₘ`, `F_0 = ∅` but `(f_*f^*F)_0 = pt` | both consistent |
| `X = Spec K ⊔ Spec K`, `X = ∅` (Check) | connected `Y` | `Γ(Y, C) = 2` versus `Γ(Y ⊔ Y, C) = 4`; versus `Γ(∅, C) = 1` | not 0-acyclic; values recorded |
| Projection `X ×_K Y → Y` | `X = Gₘ`, `Y = Spec A` strictly henselian; `X` = nodal cubic | `X ⊗ Ω` connected; base change of the universal local 1-asphericity target; coherent; `Γ = C` | 0-acyclic by the repaired criterion |
| Old §3.8 degree-one input (now §3.9d) | `Gₘ × Y → Y`; `𝔸² ∖ {0} → ℙ¹` | smooth, so locally 0-acyclic; fibres `Gₘ` nonempty connected; finite type, so coherent | hypotheses of the repaired criterion hold; conclusions of §3.9d unchanged (`ℤ̂(1) → 1 → 1 → 1` Example recomputed) |
| Surjectivity step via `π_*C` | `S′ → S` connected double cover, `X = S` (`f = id`) | `f^*π_*C = π′_*C`; `Γ(S, π_*C) = Γ(S′, C) = 2 = Γ(X′, C)` | connected pullback, as claimed |
| Surjectivity on the witness | trivial cover of `Spec R` | pullback `Spec κ ⊔ Spec L`: 2 components | fails; recorded in the Check |
| §3.9d build order | Needs: §§1.2, 3.5–3.6, 3.8a, 3.9b | all earlier than §3.9d; none of §§3.8a, 3.9a–3.9c cites §3.9d | in build order |

## Ownership, sources and citations

- **Ownership.** "0-acyclic" occurs in no other roadmap on main or at any open head (service grep `-i '0-acyclic'`: no match). EtaleCohomologyFoundations on main owns only abelian local acyclicity (§F.2.3). So the set-valued notion stays the declared gap `nonabelian-local-acyclicity` on EtaleCohomologyFoundations §F.2.3, which is earlier in the merge order. This round only made the request precise. Ownership against open pull requests was checked through the roadmap service index.
- **Sources.** No new source was cited or requested, and `needs-references.toml` was not written. SGA4 stays uncertified and is cited by locator; SGA1 line 12120–12122 was read for the dispute above.
- **Untrusted text.** Nothing suspicious appeared in the review text.

## Notes for the maintainer

- The `needs` sentence of gap `nonabelian-local-acyclicity` (supplier EtaleCohomologyFoundations, §F.2.3) changed in two ways: it now asks for the definition of 0-acyclic morphisms (all étale sheaves of sets), and the criterion now carries the hypothesis "locally 0-acyclic". Any copy of this request on the supplier's side should follow.
- §3.8 was renumbered to §3.9d. No roadmap on main or at an open head cites it by number.
- The review's source-issue entry "Error in SGA1 at XIII Proposition 4.1" is not supported (F01, point 1) and should not go into the manifest or the plan's `sourceIssues`. The entry for the misprint at SGA1 line 12307 stands. The README already records it in the product-formula paragraph.
