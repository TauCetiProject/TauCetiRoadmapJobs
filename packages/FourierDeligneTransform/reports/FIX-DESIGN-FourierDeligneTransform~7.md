# FIX-DESIGN-FourierDeligneTransform~7

Review settled: `REV-DESIGN-FourierDeligneTransform~6` (two findings, both P3). Files changed: `packages/FourierDeligneTransform/design/README.md` only (7 lines). `design/plan.json` and `sources.toml` needed no change (checked below).

## F01 (P3) — applied differently

Old (README, AlgebraicVectorBundles contract): "§L2B (Layer 7, geometric vector bundles): the total space `totalSpace`, fibrewise addition, …". New: "the total space `V(E) = Spec_S Sym(E^∨)` of a finite locally free `E`, that is the linear scheme of `E^∨`, with fibrewise addition, zero sections, duals and base change." No declaration name. Same pattern repaired in the SchemeAndStackFoundations contract (below).

Evidence and why the suggested repair was not taken verbatim:

- The finding is right about the open revision: at the head of the AlgebraicVectorBundles revision, `totalSpace` occurs in neither `README.md` nor `Suggested.lean`. Layer 7 §7.1 there defines "the total space `V(E) = V_lin(E^∨)`", and head line 187 keeps `L1A`, `L2B` as labels for Layers 4 and 7.
- Part of the reviewer's evidence is wrong. On main, `TauCetiRoadmap/AlgebraicVectorBundles/Suggested.lean` line 736 does declare `noncomputable def totalSpace (X : Scheme.{u}) : FiniteLocallyFreeSheaf X ⥤ GeometricVectorBundle X`, with `totalSpaceScheme` (732), `totalSpaceLinearSpecIso` (740) and `totalSpaceEquiv` (750). So on main the name is a declaration, not just a README label. This does not change the verdict: the name is dropped at the open head.
- The suggested text "(`totalSpace` on main)" puts process language ("on main") into the README, which the house style forbids. Describing the object in words resolves under both versions: main §L2B (line 352: `totalSpace` through `linearSpec(E^∨)`) and head §7.1 (`V(E) = V_lin(E^∨)` with `V_lin(F) = Spec_X Sym(F)`, head line 94). It also matches this README's Conventions (`V(E) = Spec_S Sym(E^∨)`, line 29).

Same pattern elsewhere. I checked every backticked supplier-roadmap declaration name in the README against main and against the heads of every open revision of that supplier:

- **SchemeAndStackFoundations: one more instance, repaired.** The README cited `SchemeFrobenius.qPowerFrobenius` and `SchemeFrobenius.relativeFrobenius`. On main they are in the §0.29 table (lines 432–433) and in its prose (1875, 1928). At the head of the open revision "Scheme foundations: algebraize polarized adic systems", §0.29 (head lines 1829–1944) keeps the constructions but neither name. The other four open revisions of that roadmap keep them.
  - Old: "§0.29 scheme Frobenius (`SchemeFrobenius.qPowerFrobenius`, `SchemeFrobenius.relativeFrobenius`)".
  - New: "§0.29 scheme Frobenius: the absolute and relative Frobenius of a scheme of characteristic `p`, and the `q`-power Frobenius of a scheme over `𝔽_q` with its base change along extensions of finite fields".
  - Both versions of §0.29 state all three constructions and the base-change law (main 1928–1934; head 1924–1934).
- **EtaleCohomologyFoundations: no instance.** All 18 names are present on main and at the head of its open revision (counts 1–5 each).
- **No open revision for the other suppliers.** ReductiveGroupsPartII (`Lang.lang_surjective`), AdicEtaleGeometry and the remaining suppliers have no open revision. Those that are open pull requests are new roadmap folders whose names the review resolved at their heads.

No `plan.json` field and no other README line names `totalSpace` or `SchemeFrobenius.*`. The plan's supplier entries cite section labels only.

## F02 (P3) — applied

Old (Layer 0 `### Dependencies`): "Mathlib only." New: "Mathlib; Tau Ceti `Submodule.sum_addChar_dotProduct` (`TauCeti/InformationTheory/Coding/CharacterSum.lean`), only as the domain-valued case that the orthogonality of §0.1 and the subspace identity of §0.2 agree with."

Verified: the *Needs:* lines of §0.1 (README line 122) and §0.2 (line 141) and plan targets 0.1.1 and 0.2 (`tauceti:Submodule.sum_addChar_dotProduct`) cite it. It is at the pin: `CharacterSum.lean` line 56, `namespace Submodule` from line 48.

Same pattern elsewhere. The Dependencies lines of Layers 2, 3 and 5 also left out library declarations that their *Needs:* lines or plan prerequisites cite:

- **Layer 2:** added Mathlib `CategoryTheory.GrpObj` and `FiniteField.norm_surjective` (§2.1, plan 2.1 and 2.1.1), and `IsKrasner.of_completeSpace` "as one route to the completion comparison of §2.7" (plan 2.7.1).
- **Layer 3:** added Tau Ceti `TauCeti.AlgebraicGeometry.FiniteLocallyFreeSheaf.dual` and `.evalIso` (§3.1, plan 3.1), and `AlgebraicGeometry.Scheme.Hom.qPowerFrobenius_baseChange` (plan 3.8.1).
- **§3.8 *Needs:* line:** it omitted `qPowerFrobenius_baseChange`, which plan 3.8.1 lists. Added "Tau Ceti `AlgebraicGeometry.Scheme.Hom.qPowerFrobenius_baseChange` for the Frobenius exchange". The pinned statement (`TauCeti/AlgebraicGeometry/Frobenius/FiniteField.lean` 136) says that the base change along `T → Spec k` of the `q`-power Frobenius is the relative Frobenius over `T`. That is exactly `F = F_{V_0} × id` on `V_0 ⊗ 𝔽̄_q`.
- **Layer 5:** added Mathlib `ContinuousCohomology.zeroIso` and the seven Tau Ceti declarations of the §5.1 *Needs:* line, attributed to the slope-one twisting lemma.
- **Layers 1 and 4:** their *Needs:* lines cite no library declaration; unchanged.

Every added name was opened at the pin:

| Name | File and line |
|---|---|
| `GrpObj` | `Mathlib/CategoryTheory/Monoidal/Grp.lean` 43 |
| `norm_surjective` | `GaloisField.lean` 234 |
| `IsKrasner.of_completeSpace` | `Krasner.lean` 117 |
| `ContinuousCohomology.zeroIso` | `ContCohomology/LowDegree.lean` 87 |
| `FiniteLocallyFreeSheaf.dual` | `Dual/Basic.lean` 64 |
| `FiniteLocallyFreeSheaf.evalIso` | `Dual/Bidual.lean` 69 |
| `additiveHilbert90` | 214 |
| `DiscreteShortExact` | `ShortExact.lean` 165 |
| `H1EquivOfSmulEqSelf` | `LowDegree.lean` 1057 |
| `explicitH1AddEquivContinuousCohomology` | `CohomologyComparison.lean` 145 |
| `Place.exists_reduced_artinSchreier_representative` | `Place/ArtinSchreier.lean` 118 |
| `ne_pow_sub_self_of_exists_reduced_artinSchreier_pole` | `PowerSubSelf.lean` 181 |
| `ord_reduced_artinSchreier_representative_eq` | `PowerSubSelf.lean` 198 |

## Adversarial pass on the changed text

| Statement | Instances | Values computed | Result | Change |
|---|---|---|---|---|
| Total space `V(E) = Spec_S Sym(E^∨)` (contract, AlgebraicVectorBundles) | `E = O_S^r`; `E = 0`; `T`-points | `Spec_S Sym(O_S^r) = 𝔸^r_S`; `Spec_S Sym(0) = S`, one section; `Hom_S(T, V(E)) = Hom(f^*E^∨, O_T) = Γ(T, f^*E)`, covariant in `E`; writing `Spec_S Sym(E)` instead puts the transpose action on points | matches main §L2B (`linearSpec(E^∨)`), head §7.1 (`V_lin(E^∨)`, Checks `E = 𝒪^r`, `E = 0`) and README Conventions line 29 | F01 |
| §0.29 description (contract, SchemeAndStackFoundations) | `Spec 𝔽_{q²}` over `𝔽_q`; `𝔸¹_S` | base change of `id_{Spec 𝔽_q}` is `id`, while the absolute `q`-Frobenius of `𝔽_{q²}` is `x ↦ x^q ≠ id`; relative Frobenius of `𝔸¹_S` is `t ↦ t^p`, absolute is `t ↦ t^p` and `s ↦ s^p` on scalars | the three objects and the base-change law are stated on main (1875, 1928–1934) and at the open head (1879, 1924–1934) | pattern |
| §3.8 *Needs:* `qPowerFrobenius_baseChange` | `V_0 = 𝔸¹_{𝔽_q}`, `T = Spec 𝔽̄_q` | base change of `t ↦ t^q` (over `𝔽_q`) is `t ↦ t^q` fixing `𝔽̄_q`, i.e. `F_{V_0} × id`; the absolute `q`-power on `𝔸¹_{𝔽̄_q}` also sends `c ↦ c^q` on scalars, which is not `𝔽̄_q`-linear | the pinned statement is the identification §3.8 uses | added |
| Layer 0 Dependencies | `*Needs:*` lines 122, 141; plan 0.1.1, 0.2 | 1 Tau Ceti name, 6 Mathlib names; old line said Mathlib only | now agrees | F02 |
| Layers 2, 3, 5 Dependencies | plan library prerequisites by layer | L2: 3 Mathlib (`GrpObj`, `norm_surjective`, `IsKrasner.of_completeSpace`); L3: 3 Tau Ceti; L5: 1 Mathlib + 8 Tau Ceti (the two `longExact_exact` names under `DiscreteShortExact`); old lines listed none | now agree; L1, L4: 0 library prerequisites, unchanged | pattern |

No theorem, definition, Check or worked example changed, so no Check needed recomputing. The only mathematical content in the new text is the description of `V(E)` and of §0.29, recomputed above.

## Checks run

Dependency gate (exact output):

    candidate: FourierDeligneTransform is not in the merge order yet; checked as if placed after EtaleDualityAndPerverseSheaves (the intake inserts it when its design is accepted)
    depcheck: 240 roadmaps, 2359 edges, 0 problem(s)

No UPWARD or CYCLE line.

`roadmaps resolve` on the README:
- Cross-roadmap citations found nowhere: none.
- Lean names found nowhere: none. The tool notes that names outside TauCetiRoadmap were not checked on this host, so every library name I added was opened at the pin by hand (above).

`#check` elaboration pass: not applicable. There is no `Suggested.lean` at the design stage, so no declaration was elaborated.

## Notes for the maintainer

- **Only an open revision defines.** The README's descriptors "(Layer 4, relative Spec)" and "(Layer 7, geometric vector bundles)" for AlgebraicVectorBundles §§L1A, L2B use the numbering of that roadmap's open revision. Main's README has the labels `L1A`, `L2B` but no "Layer 4"/"Layer 7" text. The section labels resolve under both versions (head line 187 keeps them). The worker should name AlgebraicVectorBundles Layers 4 and 7 in the merge-order paragraph.
- **Names other roadmaps cite:** none changed. This roadmap drops no id; `plan.json` and `sources.toml` are unchanged.
- **Ownership:** no new object was stated, so ownership is as settled in earlier rounds. The pattern search across open pull requests used `roadmaps show` at the heads named above.
- **Suspicious text:** none found in the review.
