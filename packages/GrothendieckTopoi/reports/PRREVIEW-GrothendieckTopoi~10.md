# Review of GrothendieckTopoi (pull request #1520 at 1da6eb2)

**Verdict:** needs changes

This is an incremental re-review of the 18 lines changed since bb8d302. All of them are in `TauCetiRoadmap/GrothendieckTopoi/README.md`: a "Not targets" paragraph closing 8.5 (lines 1137–1146), the extended Isbell 1972 reference entry, and two new reference entries (Stone 1948, Bannister 2024). The mathematics of the new paragraph checks out against every source it cites. One locator is missing.

## R01 (P3) — Stone 1948 is cited without a theorem or page

**Location.** `TauCetiRoadmap/GrothendieckTopoi/README.md` line 1141: "Since `ℕ^{ω₁}` is not normal (Stone 1948), the localic product …". The reference entry at lines 1198–1199 gives only "54 (1948), 977–982: `ℕ^{ω₁}` is not normal."

**Claim.** The step that makes the `ω₁`-fold localic product of `ℕ` non-spatial rests on a fact cited to a six-page paper with no locator. Every other citation in the paragraph has a theorem and a page. The paper states two results about products (Theorems 3 and 4), so the bare citation does not say which one is meant.

**Witness.** stone1948 line 140–147 (printed p. 980, page head at line 117) defines `T` as the product of uncountably many copies of the discrete positive integers. Theorem 3 at stone1948 line 148 says `T` is not normal. Theorem 4 (line 189, p. 981) is the criterion for metric products.

**Repair.** Line 1141 should read "(Stone 1948, Theorem 3, p. 980)". The reference entry should read "…977–982: Theorem 3 (p. 980), the product of uncountably many copies of the discrete `ℕ` is not normal." Both were checked against stone1948 lines 117 and 140–148: with `Λ = ω₁` the space `T` is `ℕ^{ω₁}`.

## Previous findings

- None. The report on bb8d302 raised no finding. The two repairs it confirmed still stand at this head. The Isbell 1972 locator "the remark before 2.4 and the proof of 2.4, p. 18" is unchanged at lines 1124 and 1194–1195. The Layer 6 Dependencies paragraph is untouched by the diff.

## Verified sound

**Gate, build, direction.** I ran the gate myself at 1da6eb2. Every check is 0 (`depcheck=0`, `readme-ids-missing=0`, `outside-folder=0`, `source-material=0`, `stray-files=0`), result OK, the same as the worker's gate (which also has `build=0`).

`lake env lean TauCetiRoadmap/GrothendieckTopoi/Suggested.lean` from the worktree, at the unchanged pins (Mathlib `1b1ccf4b`, Tau Ceti `2fd255d9`), gives exit 0 and 27 `declaration uses sorry` warnings (lines 95–535), nothing else. The dependency check with `--movable` gives:

```
depcheck: 240 roadmaps, 2369 edges, 0 problem(s)
```

There is no UPWARD, CYCLE or `moved:` line. GrothendieckTopoi is at line 386 of the merge order, after its only roadmap supplier, AdicSpacesPartII, which is on main. The three-dot diff against `origin/main` outside the folder is empty, and `origin/main` (eaf17b1) is an ancestor of the head.

**The new paragraph, against its sources.** Each locator was read at the page. For isbell1972, an image-only scan, I rendered the scan pages to images (printed pp. 14, 22, 30 and 31) because the OCR is garbled at the statements of 2.9 and 3.13.

- **Isbell 1972, Theorem 2.9, p. 22.** Products of fit quasi-compact spaces are fit quasi-compact and are the product locales of their factors. Compact Hausdorff spaces are regular, hence fit (2.8, same page), so "products of any family of compact Hausdorff spaces are spatial" is a special case. That is acceptable in a remark that is not a target.
- **Theorem 3.12, p. 30** (isbell1972 line 998–1008). The product locale of paracompact spaces is the locale underlying the hypercompletion of the product space. The "in particular" paragraph right after it, on the same page, states preservation for a countable product of completely metrizable spaces. The locator leads to the statement.
- **3.13, p. 31** (printed unlabelled as "3.13.", read on the rendered page). The product locale of uncountably many separable metrizable absolute G_δ's is the paracompact reflection of their product space. "Separable completely metrizable" is the same class (absolute G_δ ⇔ completely metrizable).
- **p. 14, before Theorem 1.7** (isbell1972 line 382–388; 1.7 starts at line 398, same page). Quotient maps need not be universal epis. Every space is a quotient of a scattered space with no nonempty pointless sublocale, and the pullback along a pointless sublocale is pointless, hence empty. Isbell's "quotient" is the coequalizer (isbell1972 line 161–164, pp. 8–9, where he contrasts it with mere epimorphisms). So the README's "regular epimorphisms" is Isbell's notion.
- **Bannister 2024, Corollary 3.13.** Fetched from arXiv (2411.05967v1, p. 8, bannister2024 line 414–416). Its last sentence says the uncountable localic product of `ω₁` copies of `Ω(ω)` is not spatial, as cited.
- **Stone 1948, Theorem 3, p. 980.** Fetched from the AMS open archive. See R01.

**Adversarial pass.** There are rows with computed values for every changed statement. The untouched statements keep the previous reports' rows (r9; through it r7 rows 1–8 and r6 rows 1–45), re-cited in the last row.

| Statement | Instances tried | Values computed | Result | Change |
|---|---|---|---|---|
| Products of compact Hausdorff spaces are spatial (Isbell 2.9) | empty family; `{0,1}^{ω₁}` | empty product: localic product is the initial frame `{⊥ < ⊤}` = `Opens` of a point, spatial. `{0,1}^{ω₁}`: compact Hausdorff, so spatial. This agrees with 3.13: compact implies paracompact, so `P⁺ = P` | holds; no clash with 3.13 | none |
| Countable products of completely metrizable spaces are spatial (Isbell 3.12 and the remark after it) | `ℕ^ω`; `ℚ × ℚ` as negative control | `ℕ^ω` (Baire space) is completely metrizable, so hypercomplete, and the localic product is the product space. `ℚ` is not completely metrizable (not G_δ in `ℝ`), so the hypothesis excludes it, as it must, since 8.5's own `ℚ × ℚ` is non-spatial | holds; consistent with 8.5 | none |
| Uncountable products of separable completely metrizable spaces: product locale = paracompact reflection (Isbell 3.13) | `ω₁` copies of a point; `ω₁` copies of `ℕ` | points: `P` is a point, paracompact, `P⁺ = P`. `ℕ`: `P = ℕ^{ω₁}` is not normal (stone1948 line 148), so not paracompact (paracompact ⇒ fully normal ⇒ normal, Stone Theorem 2), so `P⁺ ≠ P` | holds | none |
| Localic `ℕ^{ω₁}` is not spatial | `ℕ`; `{0,1}` as negative control | If the localic product `Π` were spatial, then `Π = P`, because the points of `Π` are the product of the points (`pt` is a right adjoint) and the spatial product is the primal part (isbell1972 line 993–997). Then `P = P⁺` would be paracompact, hence normal, which contradicts Stone Theorem 3. With `{0,1}` the product is compact and spatial: Stone's Corollary needs uncountably many non-countably-compact factors, and `ℕ` is not countably compact while `{0,1}` is. Bannister Cor. 3.13 agrees | holds | locator only (R01) |
| Regular epimorphisms of locales are not pullback-stable; Loc is not regular | `A = ℝ`, `T` its smallest dense sublocale; `A` a point or the Sierpiński space as degenerate cases | `T` has no points (`ℝ` has no isolated points, isbell1972 p. 14, first paragraph). `E = ∐ₓ (X_d ⊔ {∞ₓ})`, with `∞ₓ` having neighbourhoods `{∞ₓ} ∪ U` for `U ∈ 𝓝 x`, is scattered: every point of `X_d` is isolated, and `∞ₓ` is isolated in any subset that misses `X_d`. `q : E → ℝ` is a topological quotient, so `Ω ℝ` is the equalizer of `Ω E ⇉ Ω(E ×_ℝ E)`, a regular epi in Loc. The pullback along `T` is a pointless sublocale of `E`, hence `∅`, and `∅ → T` is not epi since `T ≠ ∅`. A point or the Sierpiński space has no nonempty pointless sublocale, so the argument gives nothing there, consistently. The discrete cover `X_d → X` would not do: for a `T₀`, non-discrete `X`, its kernel pair in Loc is `X_d` with both projections the identity (distinct points are disjoint sublocales), so it is an epi but not a coequalizer | holds | none |
| "a scattered space (8.4), which has no nonempty pointless sublocale" | a nonempty sublocale `S` of a scattered `X` | `a = j(∅) ≠ X`. The closed set `A = X ∖ a` is scattered and has an isolated point `x`. `A ∖ cl{x}` is regular open in `A`: an open set meeting `cl{x}` contains `x ∈ int cl{x}`. So this prime lies in the Booleanization of `Ω A`, which lies in every dense sublocale, in particular in `S`. Hence `S` has a point | holds; 8.4's definition is the one used (isbell1972 line 385) | none |
| "8.5 does not extend to infinite products of locally compact spaces" | finite products; `ℕ^ω`; `ℕ^{ω₁}` | finite: 8.5 and core-compactness of binary products (8.3), by induction. `ℕ^ω`: spatial (row 2). `ℕ^{ω₁}`: the comparison `⊕ Opens ℕ → Opens ℕ^{ω₁}` is not an isomorphism (bannister2024 line 377–378, the iso holds iff the coproduct is spatial) | holds as a negation of the general claim | none |
| Unchanged statements: 1.1–8.5 targets, Checks, `Suggested.lean` declarations | as in r9 table rows 3–5 and the r7 and r6 rows | values in those reports; the diff touches no statement, Check or Lean line | unchanged | none |

**Consistency with the rest of the README.** No target claims that surjections of topoi or epimorphisms of locales are stable under pullback. 8.1 lists only étale morphisms, embeddings, open and closed embeddings and localic morphisms as pullback-stable, and 4.5 states no stability. So the new non-stability remark contradicts nothing. The 8.4 Checks agree with it: `ℚ` is not scattered and has a nonempty pointless sublocale (isbell1972 line 45–47).

**Seeded sample.** Of the fifteen sampled targets, only 8.4 is touched by the diff, as the definition the new paragraph cites. Its definition of scattered is the standard one and Isbell's, and the property the paragraph attributes to scattered spaces holds (row 6). The other fourteen (1.3, 1.4, 2.2, 3.1, 3.2, 3.3, 4.2, 4.3, 5.2, 5.3, 5.4, 6.2, 6.3, 7.3) are untouched since 9bf309d and were verified in earlier reports.

**Lean file.** `Suggested.lean` is unchanged since 460a8d2, and the pins are unchanged since bb8d302. The 17 "looks dropped" leads of `scratch/signatures.md` are detector artefacts. Each elaborated type carries the instance as `[inst : Category.{u_1, u_1 + 1} E]` (for example `IsGrothendieckTopos.hasLimits`, line 95) or `[inst : Category.{u_1, u_3} E]` (`GeometricMorphism.ofEquiv`, line 188); only the universe names differ. The new paragraph adds no headline. Its content is declared not a target, and the pins have no infinite frame coproduct (8.2 defines the binary `IsFrameCoproduct` only), as the module docstring's not-statable list already implies for 8.5. The earlier one-tactic probes (all 27 sorried theorems resist one tactic) stand.

**Citations.** The diff adds no backticked Lean name. The 18 leads of `scratch/citations.md` are the same as in r9:
- this roadmap's own names, declared in `Suggested.lean` (`readme-ids-missing=0`);
- the generated Mathlib instance name, which resolved with `#check` in r9;
- `GrothendieckTopology.IsLocallyConnectedSite`, declared at lines 52–55 as Mathlib's open work;
- the AdicSpacesPartII names, re-resolved on main at eaf17b1: R0.19.10 at `TauCetiRoadmap/AdicSpacesPartII/README.md` line 8005, defining `Topos.IsQuasicompact` … `Topos.IsAlgebraic` at lines 8028–8031, as the supplier contract (lines 160–164) says.

**Ownership against open work.**
- `scratch/overlaps.md`: no other open pull request changes this roadmap, no cited id is dropped, and no cited id is defined only by an open revision. The diff drops no id.
- New since r9 among the closest roadmaps is #1901, HigherToposTheory (draft). Its L10.1 states Giraud's theorem for ordinary topoi (HTT 6.1.0.1; `TauCetiRoadmap/HigherToposTheory/README.md` lines 8275–8289, with `SatisfiesGiraudAxioms` and `IsSheafCategory`). It defines `CategoryTheory.IsGrothendieckTopos` (README line 8377; `Suggested.lean` line 5222) with the same body as this roadmap's `IsGrothendieckTopos` (`Suggested.lean` line 86). These are this roadmap's 1.1 and 1.4.
- GrothendieckTopoi is the earlier owner: it is in the merge order, and #1901 is a draft that the merge order does not list. So the repair belongs to #1901, which should cite GrothendieckTopoi 1.1 and 1.4 rather than restate them. It is not a defect of this folder.
- The two fully qualified names differ (`TauCetiRoadmap.GrothendieckTopoi.IsGrothendieckTopos` against a name in the `TauCetiRoadmap.HigherToposTheory` namespace), so there is no name clash.
- The other closest roadmaps (DiamondsAndVStacks, DiamondEtaleCohomology, HomotopyTheoryOfCategories) are as in r9.

**Sources fetched.** bannister2024 (arXiv, open repository) and stone1948 (AMS Bulletin archive, publisher-open) were read through the sources service into a scratch copy of the manifest. The package's `sources.toml` lists only isbell1972, isbell1981 and hofmann-lawson1978, so the worker can add the two entries.

**Declared gaps.** None declared (no readable `design/plan.json`), and the README states none.

## Not verifiable

- The paywalled texts of the previous reports (SGA 4; Elephant; Mac Lane–Moerdijk; Stone Spaces, including II.2.13–2.14; Gierz et al.; Picado–Pultr; Godement; Joyal–Tierney; Moerdijk–Vermeulen) are untouched by the diff. The new paragraph cites none of them.
- isbell1972 is an image-only scan. Printed pp. 14, 22, 30 and 31 were rendered and read directly, so no verdict here rests on the garbled OCR lines (677, 1020).

## Source issues

- none
