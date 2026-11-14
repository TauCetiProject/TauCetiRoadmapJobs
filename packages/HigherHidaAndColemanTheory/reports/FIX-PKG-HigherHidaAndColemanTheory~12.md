# FIX-PKG-HigherHidaAndColemanTheory~12

Review settled: REV-PKG-HigherHidaAndColemanTheory~11 (three findings). Only `packages/HigherHidaAndColemanTheory/README.md` changed; `Suggested.lean`, `metadata.toml`, `sources.toml` and `design/plan.json` are unchanged.

## F01 (P2) — applied

Verified at the PerfectoidShimuraVarieties head: §6.13a constructs `π_HT,K_p` and `π^tor_HT,K_p` and the open inverse images of K_p-stable tubes; §6.14 the reductions `M_dR,m,n,K_p` (with the F-enlargement); §6.15 their Hecke double cosets and `M_HT = M_dR ×^(μ,ℤ_p^×) ℤ_p(1)`. The affinoid-basis sentence is `gap:abelian-affinoid-basis`.

§5.1 target and proof route → a record stating no target, fixing notation and naming each owner (PSV §§6.13a, 6.14, 6.15; the gap). Heading kept (PadicFamiliesPartII cites it); Needs kept, PSV §6.10 added. New Scope bullet; Layer 5 intro now "imported Bruhat geometry (§5.1) … (§§5.2–5.4)"; PSV §6.13a and §6.15 contract bullets sharpened.

## F02 (P3) — applied

"Define the light table κ_0=…" → "Define the two-coordinate weights κ_0=…"; the closing sentence "The two-coordinate table alone does not define a GSp₄ weight" → "These two coordinates alone do not define a GSp₄ weight". Pattern: the §9.3 proof route's undefined "compatible chamber table" → "the compatible + chambers of the four κ_r of §9.1". Values unchanged and recomputed (table below).

## F03 (P3) — applied

"The stronger pre-comparison estimate for U2 has k2 in its middle entries; Layer 8 justifies k2+1" → "The bounds proved in §5.5, before the comparison of Layer 8, give only k2 in the two middle entries for U2, so the test they support is the more restrictive v_p(U2_naive)<k2; §8.5 justifies k2+1." Added a §9.3 Check with the computed witness. Source: BP-Coleman line 6555–6561 (both tables), 6566–6574 (small against strongly small).

## Pattern sweep

- Other restatements of PerfectoidShimuraVarieties objects: §6.1a(1) (Bruhat reduction of G as Δ-quotient of the B₁ reduction) was read against PSV §6.9 (Δ-quotient of the whole Levi torsor) and §6.14 (reductions built directly by cocycles). PSV states neither the Δ-quotient description of the *reductions* nor the coefficient descent, so §6.1a keeps its own target. §5.2 already cites PSV §6.13a for the inverse images and adds only the support pairs.
- "Stronger/weaker/sharper": line "sharper desired + bound" in §5.5 (the larger lower bound, correct) and the source-issue note on BP-Coleman Theorem 6.10.2(1) ("stronger result with the geometric small condition", correct: the small condition admits more slopes). No other inversion.
- "table" as a named object: only §9.1 and the §9.3 proof route; both repaired. The Layer 5 numbering table and the SolidAnalyticRings section title are not affected.

## Adversarial pass (changed or added statements)

| Statement | Instances tried | Values computed | Result | Change |
|---|---|---|---|---|
| §5.1 record: inverse images of tubes | PSV §6.13a Checks: central μ; GL₂ ordinary disc | central μ: flag a point, inverse image = whole finite-level space; GL₂: K_p-stable union of discs gives the open period domain, a single non-stable disc defines no subset of FL/K_p | Matches PSV §6.13a | Record says "K_p-stable" and "partial closures only as subsets" |
| §5.1 record: reductions | m−n range, F-enlargement | PSV §6.14 needs K_p=K_(p,m′,b′), 0≤m−n≤m′−1 and χ_cycl∘μ through the reducing group; GL₂, w=1, Iwahori: reducing group T(ℤ_p) | Matches | Hypotheses written into the record |
| §5.1 record: Hecke maps and M_HT | GL₂, t=diag(p,1) | U_p correspondence; double coset of wtw⁻¹ with t∈T(ℚ_p); M_HT is the μ-pushout of M_dR along ℤ_p(1), not the reverse | Matches PSV §6.15 | — |
| §5.1 record: affinoid basis | PSV §6.8(3), §6.13a | supplier has an infinite-level affinoid cover only; finite-level classical-point statement absent | Gap still needed | — |
| §9.1 κ_r (ν+ρ=(a,b), ρ=(−1,−2)) | ν=(0,−2); ν=(1,1−k) | κ_w: (1−b,2−a), (1−b,2+a), (1−a,2+b), (a+1,b+2) = (3−ν2,3−ν1), (3−ν2,ν1+1), (2−ν1,ν2), (ν1,ν2); at (0,−2): (5,3),(5,1),(2,−2),(0,−2); at (1,1−k): κ_0=κ_1=(k+2,2) | Holds | Wording only |
| §9.3 closing remark | κ=(5,3;−8), w=s1, s1s0; t2=(−½,−½;−½) | s1: a_w=(−3,5;−8)→3, a_w+w⁻¹2ρ_nc=(0,2;−8)→3, A_w=(−2,2;−8)→4. s1s0: (5,−3;−8)→3, (2,0;−8)→3, A_w=(3,−3;−8)→4. Id: A_w=(0,2;−8)→3 | k2=3 against k2+1=4; the k2 test is the more restrictive | Rewritten; Check added |
| §9.3 new Check | slope 3 at κ=(5,3;−8) | §5.5 test <3 fails, §8.5 test <4 holds; strict endpoint Check: U2_std bounds 0,1,1,5 | Consistent with the existing Checks (3,4,4,8; 6,6,11,11) | — |
| §9.3 proof route wording | κ_r chambers | lengths 0,1,2,3 of Id, s1, s1s0, s1s0s1; amplitudes [0,r] and [r,3] | Holds | Wording only |

## Checks run

- `lake env lean packages/HigherHidaAndColemanTheory/Suggested.lean` from the content checkout: exit 0, no output. The file declares nothing (`import Mathlib`, module docstring, empty namespace), so the `#check @name` comparison has an empty domain; nothing changed in it.
- Dependency check:

      depcheck: 242 roadmaps, 2212 edges, 0 problem(s)

  No UPWARD, CYCLE or moved line. The only new edge target, PerfectoidShimuraVarieties §6.10, was already cited (Layer 5 Dependencies, §5.2).
- `roadmaps resolve` on the README: no citation and no Lean name found nowhere.
- Added lines contain no backticked names, LaTeX delimiters, paths or pull-request numbers.

No gate failures were listed for this round.

## Ownership and maintainer notes

- Ownership against open work: PerfectoidShimuraVarieties (open, earlier in the merge order, line 185 against 255) is the single owner of the finite-level truncated period maps, tube inverse images, torsor reductions and their Hecke maps; this roadmap now cites it and states none of them. Searched by object in the PSV head and the overlap list; no other owner.
- §5.1 keeps its number and heading because PadicFamiliesPartII cites HigherHidaAndColemanTheory §5.1 (its §§7.1–7.3 Needs lines and Dependencies). Those citations resolve to the record and, through its Needs line, to PerfectoidShimuraVarieties §§6.3, 6.8, 6.10, 6.13–6.15 and `gap:abelian-affinoid-basis`. PadicFamiliesPartII may want to cite PSV directly where it needs only the period-map geometry; no id changed.
- No source was fetched or added; `needs-references.toml` was not written.
