# Étale homotopy types: red-team round 1 repair

The two reviews number their findings independently, so F01–F08 below are review a (pass a) and the second F01–F06 are review b (pass b); each section opens by naming its review. Overlaps are settled once: review a F05 = review b F01 (gap split), review a F07 = review b F05 (docstring), review b F02 ⊂ review a F04 (product-formula range). Each still has its own heading.

## F01 (P2) — disputed

*Review a.* Not applied. §2.2's abelian assertion is SS Lemma A.7 (SS line 1573), Jensen's classical vanishing theorem for finite abelian systems. The roadmap uses it as an input to Theorem A.8 (§2.3, SS line 1611); it is not an end theorem and not a result the roadmap is built to reach. Its headlines are the étale results of §§3.7, 4.4–4.7 and 6.8–6.9. The brief asks `Suggested.lean` to carry headline theorems only. Being nontrivial and statable does not make an input lemma a headline. Pass b reached the same conclusion independently ("its round-2 removal as a non-headline stands"). The full statement, with the native carriers and the hypotheses `s > 0`, finiteness and existence of injective resolutions, stays in README §2.2. The reviewer's two control instances agree with the README as it stands: constant C₂ gives R⁰ = C₂ and R¹ = 0, and the ×2 tower on ℤ gives lim¹ = ℤ₂/ℤ. If this is raised again, a human decides it.

## F02 (P3) — applied

*Review a.* Old: §3.5 "Raw and finite étale homotopy groups" came before §3.6 "Finite étale base change", and §3.5's higher-group step used §3.6. New: the two are swapped, so §3.5 is Finite étale base change and §3.6 is Raw and finite étale homotopy groups. Every internal reference was swapped: Scope, §§3.6, 3.7, 3.9a–3.9d, 4.1, 4.4, 4.7, the Needs lines and the SGA1 `cited_for`. Ranges such as §§3.4–3.6 and §§3.5–3.6 still cover the same sets. No other roadmap cites these section numbers (`roadmaps grep` found none, and neither did the board packages).

## F03 (P1) — applied

*Review a.* The finding is correct. SGA1 line 12585 gets uniqueness from étale depth ≥ 2 (SGA 2 XIV 1.19). SGA1 line 12598 gets the extension from SGA 2 XIV 1.20 over a possibly singular local noetherian base. The absolute CrystallineCohomology lemma does not cover this. New: two supplier gaps to LocalPurity §2.2, which is on main and owns finite étale extension and purity:
- gap:relative-etale-depth (1.19);
- gap:relative-homotopical-purity (1.20).

The relative Abhyankar route now spells out the approximation step, the choice of exponents, uniqueness, the DVR case and the purity crossing. A new Check computes the dual-numbers case and the 𝔸¹ Kummer negative control. SGA2 was fetched from arXiv as `SGA2` (lines 6545, 6563; printed pp. 176–177).

## F04 (P2) — applied

*Review a.* Old: finite-type X in cohomological properness, local 1-asphericity, the 0-acyclic projections and the product formula, and finite-type Y with a K-rational point. New:
- X is any qcqs K-scheme (connected where needed), following SGA1 XIII 3.2(2)(b), 3.4(b) and 4.6(b).
- Y is any connected K-scheme.
- Approximation steps via Stacks 09MV (`StacksLimits`, line 791) and SchemeAndStackFoundations §0.9 `finite_presentation_limits`.
- The K-point is replaced by the geometric fibre, and constructibility by constancy (SGA1 line 12303).

Two Checks were added.

## F05 (P2) — applied

*Review a.* gap:nonabelian-proper-base-change now asks only for base change, for sheaves of sets, R¹ with ind-finite coefficients and ind-finite stacks. The new gap:proper-surjective-torsor-descent (EtaleCohomologyFoundations §F.2.1, SGA 4 VIII 9.4) asks for universal effective descent of étale sheaves of sets and finite-group torsor stacks. Both are in the README and the plan. The descent steps of the cohomological-properness and local-asphericity targets now cite the new slug, and so do the §3.8a Needs line and the Layer 3 Dependencies.

## F06 (P2) — applied

*Review a.* Old: "identify coverings with vertex-unique lifting with subgroups of π_1". New: for a connected pointed K, connected pointed coverings correspond to subgroups of π_1(K). Pullback followed by taking the selected component corresponds to inverse image of subgroups, and realizations correspond to connected pointed ordinary covering spaces. The change is made in the README and the plan. The needs sentence occurs once; §§1.1 and Layer 1 cite only the slug. §1.1 uses connected pointed universal and Galois covers only, so it needs nothing more.

## F07 (P3) — applied

*Review a.* The Layer 3 part of the `Suggested.lean` docstring now names the remaining §3.8a targets as not statable, with the carriers each lacks:
- strong desingularizability: resolution of singularities and the SGA 5 notion;
- normal-crossings and qcqs cohomological properness, the relative Abhyankar step, local 1-asphericity and 0-acyclic projections: relative normal-crossings divisors, étale torsor stacks with direct images and base change, strict localizations, relative purity.

No declarations were added.

## F08 (P3) — applied

*Review a.* Old: "SS line 228 and SS line 1410". New: "SS line 228 and SS line 1421". SS line 1410 lies inside the Kummer argument; line 1421 is the Appendix heading.

## F01 (P2) — applied

*Review b.* This is the same finding as review a F05 and was settled there. The slug is `proper-surjective-torsor-descent`. Its supplier and section are EtaleCohomologyFoundations §F.2.1. Its needs sentence is identical in the README and the plan.

## F02 (P3) — applied

*Review b.* Included in review a F04. Y is now an arbitrary connected K-scheme. For every étale Y′ → Y, f′_*E is shown to be locally constant with finite stalks, hence constructible. The argument: cohomological properness identifies E strict-locally with a pullback, §0.9 spreads that identification to an étale neighbourhood, and the dimension ≤ 0 assertion makes the direct image constant there. Pass b's strictly henselian test is covered by the new Spec K(t) Check.

## F03 (P3) — applied

*Review b.* Mathlib contract: added `ProfiniteGrp.limitCone` and `ProfiniteGrp.limitConeIsLimit` (`Mathlib/Topology/Algebra/Category/ProfiniteGrp/Basic.lean`, lines 330 and 347; line 313 named by the reviewer is the auxiliary `limitConePtAux`), with the universe condition `F : J ⥤ ProfiniteGrp.{max v u}`. "Mathlib compact cofiltered-limit existence" (§3.0a Needs) and "compact cofiltered limits" (Layer 3 Dependencies) → these two names.

## F04 (P3) — applied

*Review b.* Deleted the trailing sentence about §§3.5/3.0a from the gap:constructible-set-subsheaves paragraph. Its README text is now identical to the plan's `needs`. Both facts are still stated in Scope, §3.0a and §3.6.

## F05 (P3) — applied

*Review b.* This is the same finding as review a F07 and was settled there. The Layer 3 bullet of the `Suggested.lean` docstring now names all four missing §3.8a targets and what each lacks: strong desingularizability, cohomological properness, universal local 1-asphericity and 0-acyclicity of projections. In line with review a F04, properness is now stated over qcqs schemes rather than finite-type ones. No declarations were added.

## F06 (P3) — applied

*Review b.* Downstream consumers now say that AnabelianGeometryAndNonabelianChabauty §1.5 and §1.10 are supplied here and are not constructed again: §1.5 by §§1.9, 3.3, 3.4, 3.6 and 3.9b, and §1.10 by §3.9d. Both sections were checked at that roadmap's open head through `roadmaps show`; it does not cite this roadmap. The numbers use the renumbering of review a F02.

## Checks

- **Elaboration:** `lake env lean packages/EtaleHomotopyTypes/Suggested.lean`, run from the content checkout, exits 0 with no output. The file declares nothing, so the `#check @name` comparison had no declarations to inspect. I did consider it, and nothing changed.
- **Dependency check** (exact command of the brief), exit 0:

      depcheck: 56 roadmaps, 650 edges, 0 problem(s)

  There is no UPWARD, CYCLE or moved line. The new supplier LocalPurity is on main.
- **Citation resolver** after the edits: no cross-roadmap citations or Lean names found nowhere.
- **README/plan agreement** was checked by script: the 29 gap slugs, suppliers and needs sentences are identical in both. Only the `gaps` list changed in `design/plan.json`; a JSON comparison of everything else shows no difference.
- **Gate failures:** none were listed for this round. The one problem recorded against the earlier unsubmitted attempt, finding headings not in the required style, is repaired: every heading now carries the review's own finding id (`F01`, …) instead of a prefixed label. Elaboration, the dependency check and the citation resolver were re-run on the restored files, with the results above. The `design/plan.json` diff against the committed version touches only `gaps`.

## Adversarial pass on new or changed statements

| Statement | Instances | Computed values | Result / change |
| --- | --- | --- | --- |
| gap:relative-homotopical-purity (1.20) | S = Spec K[ε]/ε², X = 𝔸²_S, Z = zero section; 𝔸¹_K, Z = 0 | Fibre codim 2 → (a) holds, FEt(X∖Z) = FEt(𝔸²_K∖0) = trivial = FEt(X). Fibre codim 1, depth of Spec K = 0, prof hop < 3 → no condition; Kummer t ↦ t² has 2 sheets over Gₘ, ramified at 0 | Consistent; both added as a Check |
| gap:relative-etale-depth (1.19) | Root cover smooth along Y′₁; X = two points, Y = one point over S = point | Fibres normal → unibranch → full faithfulness. Y not nowhere dense (Y_s = X_s component) → hypothesis fails, and indeed Hom(X, ·) ≠ Hom(X∖Y, ·) | Hypothesis "nowhere dense" is needed; kept |
| qcqs cohomological properness | X = Spec K[t₁,t₂,…], F = C₂, A strictly henselian | Tors(𝔸ⁿ,C₂) has 1 class each n; colimit 1 class; X⊗A likewise 1 class | Equivalence holds; Check added |
| qcqs universal local 1-asphericity | X = ∐ two points (qcqs, disconnected) | Strict-local fibres are points: nonempty, connected, no torsors | Holds; connectedness of X is not needed here (needed only for 0-acyclicity) |
| 0-acyclic projections, qcqs X | X = ∅; X = two points; X = Spec K[t₁,…] | Sections of 2-element sheaf: 2→1, 2→4, 2→2 | Only connected nonempty X works; "connected" kept (empty is not connected) |
| Product formula, arbitrary connected Y | X = Gₘ, Y = Spec K(t); X = Spec K[t₁,…], Y = Gₘ; Y = Spec K | ℤ̂(1) × G_K(t) on both sides (trivial cyclotomic action since μ_∞ ⊂ K); 1 × ℤ̂(1); identity | Consistent; Checks added; no K-point used |
| Geometric fibre comparison π₁(X⊗κ(b)) ≅ π₁(X) | X = Gₘ, κ(b) = alg. closure of K(t) | Kummer covers zⁿ remain connected: both sides ℤ̂(1) | Holds since K is algebraically closed of char 0 |
| Constructibility of f′_*E for projections | X = Gₘ, E = Kummer degree-2 cover × Y′ | f′_*E = constant sheaf of E₀(Gₘ) = ∅ (no section); for E trivial 2-sheet: constant 2 | Locally constant finite → constructible |
| §3.5/§3.6 swap | §3.5 Needs §3.3, §1.1, §1.5, §3.0a; §3.6 Needs §3.5 | All inputs of both now precede them | No forward reference left in Layer 3 except §3.0a (earlier) |
| Covering classification | Point; S¹ with 2ℤ; pullback along * → S¹ | 1 connected cover ↔ 1 subgroup; 2-sheet cover ↔ 2ℤ; pullback = 2 points, chosen component 1 point ↔ 0 ⊂ 0 | Consistent |
| `ProfiniteGrp.limitCone` | J empty; constant finite group | Limit is the trivial group; limit of constant S₃ over a connected J is S₃ | Matches §3.0a Checks (trivial pro-group → 1 element) |

## Sources

- `SGA2` was added (arXiv:math/0511279v1, certified open repository): Exposé XIV Corollaries 1.19–1.20, SGA2 line 6545 and SGA2 line 6563.
- `StacksLimits` was added (Stacks project chapter Limits of Schemes, certified): Lemma 32.7.2, tag 09MV, StacksLimits line 791.
- The SGA4 locator now includes XV 1.3, which SGA1 line 12084 invokes for the limit step. SGA4 is settled as uncertified and was not requested again.
- No `needs-references.toml` request: every source this round needed was read legally.

## Notes for the maintainer

- **New gaps for LocalPurity (§2.2, on main):** relative-etale-depth and relative-homotopical-purity. The relative statements could become a LocalPurity Part II. PurityForFlatCohomology is later in the merge order (position 67, after this roadmap at 44). Its PF.1 plans the absolute étale depth (SGA 2 XIV §5), so it cannot supply these. Its owner should import the depth notions LocalPurity will define rather than define them again.
- **Split gap:** EtaleCohomologyFoundations receives a new gap, proper-surjective-torsor-descent. The needs sentence of nonabelian-proper-base-change is now shorter.
- **Renumbering:** §3.5 ↔ §3.6 in this roadmap. No external citation of these numbers exists. AnabelianGeometryAndNonabelianChabauty is told by name which of its sections this roadmap supplies.
- **Ownership against open pull requests:** checked through the roadmap service index and the sibling checkouts in the brief. No other roadmap states relative étale or homotopical depth, apart from the later PurityForFlatCohomology package noted above.
