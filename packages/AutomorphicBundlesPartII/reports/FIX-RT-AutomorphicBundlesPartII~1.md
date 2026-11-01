# FIX-RT-AutomorphicBundlesPartII~1

Two red-team reviews were merged: pass a (findings F01–F05) and pass b (findings F01–F05, numbered separately); each section names its pass. None of the findings overlap. Each one is settled below.

## F01 (P2) — applied

Review pass a.

§6.6 now defines the degree-i contribution of a full discrete π=π_∞⊗π_f with its occurrence space M_disc(π). It also defines a σ-isotypic contribution: the sum over all full π with π_f≃σ, followed by the comparison map. A new Check covers this: (d,0)+(0,d)=(d,d). The uses of a finite-part contribution in the §8.7 Check and in the Layer 8 Examples now say "σ-isotypic contribution (§6.6)".

## F02 (P1) — applied

Review pass a.

The §8.7 route had said "purity makes … tempered". It now says: verify Clozel algebraicity of the GL₄ transfer from the §7.0 spin orbit shifted by 3/2, apply AutomorphicFormsOnReductiveGroups §5.5 `clozelPurity`, and transport back. §5.5 is added to the AutomorphicFormsOnReductiveGroups contract, the §8.7 Needs line and the Layer 8 Dependencies. A new Check shows the shifted orbit (0,0,1−a,1−a) is integral. The citation was checked against AutomorphicFormsOnReductiveGroups at its open head, §5.5.

## F03 (P1) — applied

Review pass a.

The old text in §5.2 said "D′ is the boundary-supported relatively ample Cartier divisor". It now says that D′ is effective and supported on the boundary, and that O(−D′) is relatively ample (Lan17 line 1163–1168). The proof route now says "relatively ample invertible sheaf O(−D′)". A new Check computes the degree on an exceptional curve: n for the correct sign, −n for the wrong one. These are the only two occurrences in the README. `design/plan.json` repeats the same wording in its node text, which this job may not edit.

## F04 (P1) — applied

Review pass a.

§7.0(a) now covers every discrete occurrence with nonzero coherent cohomology at the coefficient. The infinitesimal character is identified first, through the coefficient transport and AutomorphicFormsOnReductiveGroups §§6.3–6.5. Classes (b)–(f) of BCGP21 Lemma 2.9.1 are then applied without assuming temperedness or membership in a packet; that lemma's only hypothesis is the infinitesimal character (BCGP21 line 1831–1833). §8.7 now carries out this exclusion before purity. A new type-(d) Check is added in §7.0.

## F05 (P2) — applied

Review pass a.

AutomorphicFormsOnReductiveGroups §6.6 fixes F before it chooses R, whereas BCGP21 line 3281 gives an absolute constant. Three edits record this:
- A new gap `gap:uniform-global-gsp4-separation` (supplier AutomorphicFormsOnReductiveGroups, §6.6) is added to the `plan.json` `gaps` list.
- The same gap appears as a "What AutomorphicFormsOnReductiveGroups must provide" line in the supplier contracts.
- §8.8 now cites the gap in its route and its Needs line, and has a new Check against R_F=2+[F:ℚ].

## F01 (P2) — applied differently

Review pass b.

SolidAnalyticRings is a light-condensed spectral library (its README, Summary and Scope). I deleted its contract and its Needs entry and replaced them with VStackSheavesAndLisseCategories VS2.1 (solidification, solid tensor) and VS2.2 analytic measures (complete modules, reflection, complete tensor, change of scalars). I also added the sentence fixing the κ-condensed carrier.

The suggested citation of VS2.2's `AnSpec` and Zariski gluing was **not** applied. Those are built for the integer-solid (A,ℤ)■, which the README's Conventions explicitly distinguish from (A,A)■: under (A,ℤ)■ a principal localization is a closed immersion. That gluing is §3.0a's own target. The Scope paragraph is updated to match.

## F02 (P3) — applied

Review pass b.

The §1.1 Check had said "scales the dual frame by c/u". It now says "by u⁻¹; with Lie frame u the dual frame is c/u", with the worked values 4·(3/4)=3 and the wrong factor giving 9. The ambiguous Layer 1 Examples sentence about "dual frame factor 3/2" is also corrected.

## F03 (P3) — applied

Review pass b.

The witness holds:
- At n=0 the quotient O/(1) is the zero ring, so both sides are zero modules.
- O/ϖⁿ ≅ Ô/ϖⁿÔ, so completeness of O plays no role.

`[IsAdicComplete …]` and `(hn : 0 < n)` are deleted from `finiteCoefficientSerreDuality`. The docstrings of the theorem and of `dvrCoefficientRing` are updated, as are the README Conventions, the §1.4 Check, the §1.6 hypothesis sentence and the §1.6 Check. Irreducibility of ϖ is kept: ϖ=0 would make the coefficient ring O itself, which is not Artinian.

## F04 (P3) — applied

Review pass b.

CS19 line 2318 is Definition 9.1, which defines a discrete Huber pair. Lines 2320–2325, on p. 62, define (A,A⁺)■. The README now reads "defined after CS19 Definition 9.1 (p. 62) …" in the Conventions and in §3.0a, and the References entry reads "Definition 9.1 and the following paragraph, p. 62".

## F05 (P3) — applied

Review pass b.

All five notes were checked and applied:
1. "Fundamental classes" was cited to SchemeAndStackFoundations, which has no such target. It is replaced by `upperShriek_lci` (§2.19) as consumed by AlgebraicModuliForArithmeticGeometry §7.5. `upperShriek_lci` is at SchemeAndStackFoundations README line 4129 on main.
2. §0.18 is added to the SchemeAndStackFoundations contract, and §§0.18, 1.1, 2.23 to the Layer 5 Dependencies.
3. §8.5 now says "vanishes unless k_v=l_v=k is independent of v", following BCGP21 line 3323 and 3329.
4. The Sch15 link now points to arXiv 1306.2070v2.
5. The `exteriorPower` line reference is corrected to 49; the `def` is at line 49 of the pinned file.

## Checks run

- `lake env lean packages/AutomorphicBundlesPartII/Suggested.lean`: exit 0, with one warning, "declaration uses `sorry`", at line 69.
- Signature check: I put `#check @name` for all three declarations into one scratch file and elaborated it. `finiteCoefficientSerreDuality` now has the binders O, CommRing, IsDomain, IsDiscreteValuationRing, ϖ, Irreducible ϖ, n, X, Over, d, SmoothOfRelativeDimension, IsProper, F, IsLocallyFree, IsFinitePresentation and i. It no longer has IsAdicComplete or hn, which matches the README's §1.6. The other two declarations are unchanged.
- Depcheck: `depcheck: 56 roadmaps, 660 edges, 0 problem(s)`. There is no UPWARD, CYCLE or moved line. The edge to SolidAnalyticRings is gone.
- Worker repair: the §7.0 exclusion paragraph (README, the paragraph opening "For the conditional global conclusions") echoed the review's suggested wording; it is rewritten in the roadmap's own words with unchanged mathematics (infinitesimal character identified first, then BCGP21 Lemma 2.9.1 alternatives (b)–(f), then comparison of Frobenius polynomials and multipliers with the irreducible residual system) and the same locator. The report headings now use the `## F0n (Pk) — outcome` form.
- `roadmaps resolve` on the README: no unresolved cross-roadmap citations and no unresolved Lean names.

## Adversarial pass on changed statements

| Statement | Instances tried | Values (left / right) | Result | Change |
|---|---|---|---|---|
| `finiteCoefficientSerreDuality` without completeness or hn | n=0; O=ℤ₃, n=2, Spec, d=0, F=O; ℙ¹ over ℤ/9, F=O(−2), i=0 | n=0: 0/0 (Spec of the zero ring is empty); Hom(ℤ/9,ℤ/9)=ℤ/9 / ℤ/9; dual of H⁰(O)=ℤ/9 / H¹(O(−2))=ℤ/9 | true | hypotheses dropped |
| Non-complete DVR O=ℤ_(3) | n=2 | ℤ_(3)/9 ≅ ℤ₃/9 = ℤ/9 | same ring, same statement | none |
| ϖ=0 (excluded by Irreducible) | n=1 | coefficient ring O, not Artinian | must stay excluded | kept |
| §1.1 dual-frame scaling | ψ₁=2→4, c=3 | ψ₂: 3/2→3/4, product 3=c; c/u factor gives 9/4, product 9 | u⁻¹ correct | Check fixed |
| §5.2 ample sign | exceptional curve, O(D′)\|E=O(−1), n=1,2 | O(−nD′)\|E degree 1,2; O(nD′)\|E degree −1,−2 | O(−D′) ample | text fixed |
| §6.6 σ-isotypic contribution | multiplicity 1, d=dim σ^K, weight (4,2); d=1; σ^K=0 | holomorphic (d,0), generic (0,d), sum (d,d); (1,1); (0,0) | consistent with the §8.7 Check and the §7.0 Check (md, 2md) | defined |
| §7.0(a) exclusion | type (d) λ\|·\|^½⊞λ\|·\|^−½⊞μ; type (b) μ₁⊞μ₂ | degrees 1+1+2 and 2+2, both reducible against an irreducible rank-4 residual | excluded with no limit hypothesis | rewritten |
| §8.7 Clozel algebraicity | a=2,3,10 | orbit −3/2: (0,0,−1,−1), (0,0,−2,−2), (0,0,−9,−9), all integral; the integral orbit (0,0,1,1) shifts to half-integers | algebraic | Check added |
| §8.8 uniform R | R_F=2+[F:ℚ], [F:ℚ]=1,10,100 | 3, 12, 102, unbounded | needs the absolute constant | gap added |
| §8.5 scalar-parallel split | (4,2)_v parallel, (4,4)_v, (4,4) and (6,6) at two places | point term: vanishes, nonvanishing case, vanishes | matches BCGP21 line 3323–3330 | wording fixed |

## Ownership and other notes

- No new construction is introduced. Purity is cited to its owner, AutomorphicFormsOnReductiveGroups §5.5. The uniform separation constant is a supplier gap on that roadmap's §6.6, which states the field-dependent form.
- Consequence for AutomorphicFormsOnReductiveGroups: the new gap asks §6.6 to choose R before F.
- No name that another roadmap cites has changed. The roadmap no longer consumes SolidAnalyticRings.
- No `needs-references.toml` was needed: every locator used here is in the cached sources.
- No suspicious instructions were found in the reviews.

## Gate failure: residue

The process-word scan matched the word "packet" in the §7.0 exclusion paragraph, where it meant the archimedean L-packet. Old: "π_∞ has the archimedean infinitesimal character of the specified packet". New: "π_∞ has the infinitesimal character shared by the specified holomorphic and generic limits". The mathematics is unchanged, since limits of discrete series in one L-packet share their infinitesimal character. After the edit the scan finds nothing in the README or in Suggested.lean.
