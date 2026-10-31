# FIX-PKG-GeometricSatakeAndFusionPartII~6

Findings of REV-PKG-GeometricSatakeAndFusionPartII~5 (three findings; the review body calls them R01–R03 in its tables, the headings F01–F03).

## F01 (P2) — applied

Verified: LEV line 1389–1392 (coherence equality of h⁰ for n≫0) feeds LEV Theorem 4.3.2 (LEV line 1243, p. 29); PZ (8.19) at PZ line 2659; GL Theorem 2.1 (GL line 149, p. 4) and Corollary 3.5 (GL line 288–297, p. 7) transfer to a split k((t))-group G′ and use Cohen–Macaulayness there (footnote 3, GL line 320). The old `needs` sentence named neither statement.

Change: `gap:algebraic-coherence` `needs` "Give the equal-characteristic coherence and deformation theorem …" → two statements with hypotheses: (i) the coherence equality for ∏Res H_i, H_i tamely split, any parahoric, any dominant μ, p∤|π₁(G^der)|, identifying the special fibre of the §1.2 closure with the reduced admissible union; (ii) for split G′ with simply connected derived group at Iwahori level, normal Frobenius-split reduced special fibre that is Cohen–Macaulay. Same slug, supplier and section; identical sentence in README "Exact supplier contracts" and `design/plan.json` `gaps`. §7.3 now says input (ii) is used only on the split G′ with the same admissible set (GL Corollary 3.5), with the PGL₂, p=2 warning. The reviewer's phrasing there (the PGL₂ admissible locus "contains non-S₂ Schubert varieties") is not right for small μ. For minuscule μ the Iwahori admissible locus is a union of curves (P¹'s), which are normal. So the text cites HLR Theorem 1.1 as "all but finitely many Schubert varieties are neither normal nor S₂" instead. The §7.3 proof sketch now names the transfer to G′ in place of the "deformation-of-depth" phrase. §4.11 and §1.3 use (i); their Needs lines are unchanged.

## F02 (P3) — applied

Verified: LEV Theorem 4.2.7 (LEV line 1024–1026) has no minuscule hypothesis. LEV line 85 says μ is not assumed minuscule. §1.2 already defines M^pol for any dominant ν.

Change: §1.3 "μ is minuscule" → "μ is dominant", for the general-bound datum of §0.1. Components are now "normal, Cohen–Macaulay and Frobenius split", as LEV states. LEV 4.2.7 and 4.3.2 are cited for the general case and KPZ 3.2.9 and KP 2.1.2 as the minuscule specialisation. `§0.1 (general bound)` is added to the Needs line. A Check paragraph is added: for GL₂ hyperspecial with μ=(2,0), the admissible set is {t^(2,0),t^(1,1)}. The fibre is the two-dimensional normal Schubert variety of t^(2,0), with one singular point; μ=(1,0) gives P¹. Consumers §§1.4, 2.x, 3.x and 4.11 specialise the general statement, so they are unchanged (§4.11 needed the non-minuscule μ̄=(2,0) case already).

## F03 (P3) — applied

Verified: HLR Example 9.4 (HLR line 1860–1868) is at the absolutely special vertex. GL Lemma 5.4 (GL line 451–459) is at Iwahori level.

Change: §7.4's PU₃ example gains: "∇ is the costandard sheaf of the quasi-minuscule orbit at that absolutely special level, of dimension 〈2ρ,μ〉=〈(2,0,−2),(1,0,0)〉=2. The example tests the step 'geometric unibranchness suffices for the lowest costandard stalk', which GL Lemma 5.4 applies at Iwahori level to the Schubert variety of t^ν, of the same dimension ℓ(t^ν)=2."

## Adversarial pass on changed statements

| Statement | Instances | Values | Result | Change |
| --- | --- | --- | --- | --- |
| Gap (i) coherence | GL₂ Iwahori, μ=(1,0) | Admissible union is two P¹ meeting in one point: h⁰(O)=1+1−1=1; generic P¹: h⁰=1. With L=O(1)^n on each component: (n+1)+(n+1)−1=2n+1 = h⁰(P¹,O(2n)) for the degree-2 determinant bundle | Equal; the special fibre is the reduced union | Stated with p∤\|π₁(G^der)\| |
| Gap (i) hypothesis | PU₃ ramified, p=3 | \|π₁\|=3, special fibre nonreduced (HLR line 1867–1868) | The hypothesis is needed | Kept |
| Gap (ii) | SL₂ vs PGL₂ at p=2 | π₁(SL₂)=1, Adm in affine Weyl group Ã₁ is the same; PGL₂: HLR Thm 1.1 says non-S₂ Schubert varieties occur | Requiring a simply connected derived group excludes the false reading | Stated |
| §1.3 general μ | GL₂ hyperspecial μ=(2,0); μ=(1,0); μ=0 | Dimension 〈(1,−1),(2,0)〉=2, Adm={t^(2,0),t^(1,1)}, quadric-cone Schubert variety, normal; P¹; Spec O_F | Holds; LEV 4.2.7 covers it | Generalised |
| §1.3 hypothesis | PGL₂ at p=2 | \|π₁(PGL₂)\|=2 is excluded | Unchanged | — |
| §7.3 transfer | k[x,y]/(xy) | (dim, depth)=(1,1), so S₂; the codimension-1 graph is one edge | Criterion consistent | — |
| §7.4 example | PU₃, μ=(1,0,0) | 2ρ=(2,0,−2), 〈2ρ,μ〉=2; Iwahori component of t^ν has dimension 2 because the special fibre is equidimensional of dimension 2 | Level named | Clause added |

## Checks run

- `lake env lean packages/GeometricSatakeAndFusionPartII/Suggested.lean` (from the content checkout): exit 0, no output. `Suggested.lean` is unchanged and declares nothing, so the `#check @name` binder audit has no names to compare.
- Depcheck (`gate --depcheck … --movable`):

      depcheck: 56 roadmaps, 647 edges, 0 problem(s)

  There are no UPWARD, CYCLE or moved lines.
- Greps for LaTeX delimiters, machine paths and process words in the changed text: none.

## Notes for the maintainer

- No name that other roadmaps cite changed. The slug `gap:algebraic-coherence` is kept; only its `needs` sentence is sharper, so GeometricSatakeAndFusion's intake now sees two precise statements.
- No new sources and no `needs-references.toml`. HMS14 Theorem A.3 (cited inside GL) was not fetched, because the gap cites GL's own statements.
- Ownership: no new construction was introduced; the gap supplier is unchanged.
