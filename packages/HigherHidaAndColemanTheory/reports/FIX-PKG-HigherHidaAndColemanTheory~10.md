# FIX-PKG-HigherHidaAndColemanTheory~10

Findings of REV-PKG-HigherHidaAndColemanTheory~9 (five findings, one review). Files changed: `packages/HigherHidaAndColemanTheory/README.md`, `packages/HigherHidaAndColemanTheory/sources.toml`, and the top-level `gaps` list of `packages/HigherHidaAndColemanTheory/design/plan.json` (one entry added). `Suggested.lean` and `metadata.toml` are unchanged.

## F01 (P2) — applied

Verified. AlgebraicModularFormsAndSerreWeightsPartII (open, merge order line 249; this roadmap is line 255) states the spherical half of Pilloni-Singular §14.9:

- §7.2: the trace divisibilities on Ω(d,r) with d≥0, r≥2. Its d=0, r=2 Check is `4+0, 2+1, 0+3`, the same values as the deleted Check.
- §7.3: the integral `p⁻³T′_(p,2)` on RΓ(𝔛^≥1, Ω(d,r)(−D)) (Lemma 14.9.1, spherical half).
- §7.4: H⁰ bijective and H¹ injective modulo every ϖ^n and for n=∞ (Lemma 14.9.2, spherical half).

That roadmap does not cite this one, so there is no cycle.

Change in §9.8, old → new: the old sentence "Prove from the trace divisibilities of §14.9 …" becomes three parts:

- the spherical operator, divisibilities and restriction are imported from AlgebraicModularFormsAndSerreWeightsPartII §§7.2–7.4;
- the Klingen counterparts are proved here: the I^(−3) operator built on that roadmap's §7.1 correspondence, using Lemma 14.9.2.1, and Klingen restriction;
- the nonnegativity deduction follows.

Other edits:

- The spherical Check is deleted.
- The closing remark now reads "Pilloni-Singular §14.9.2, pp. 104–106, the spherical ones being AlgebraicModularFormsAndSerreWeightsPartII §7.2".
- §§7.1–7.4 are added to the §9.8 *Needs* line and the Layer 9 Dependencies.
- New contract subsection; new Scope bullet.

I added §7.1 to the reviewer's §§7.2–7.4 for this reason: the Klingen correspondence is the normalized closure of components of the base change of §7.1's spherical correspondence (Pilloni-Singular line 4767–4779), and its finite p₁ is what gives the Klingen trace.

Pattern repair: the Klingen restriction step needs the integral Klingen model to be Cohen–Macaulay and to carry the chain G→G/H→G/H^⊥→G (Pilloni-Singular line 4694–4697, 4717–4718). ShimuraCompactifications §7.19 does not supply this. Its normalized model carries the higher p-level structure only on the generic fibre, and its scope says moduli interpretations at parahoric level are not constructed. So I declared `gap:klingen-lci-model` in the README contracts, the §9.8 *Needs* line, the Layer 9 Dependencies and `plan.json`, asking for:

- the toroidal Klingen moduli model, normal and lci;
- the chain G→G/H→G/H^⊥→G;
- the forgetful map to the hyperspecial model.

Sources: Pilloni-Singular Proposition 6.1.4.1 (line 1154–1155, p. 26) and Theorem 6.1.5.1(3)–(4) (line 1286–1292, p. 29). AlgebraicModularFormsAndSerreWeightsPartII asks the same supplier for the same model (its gap:siegel-parahoric-models).

## F02 (P2) — applied

Verified. Pilloni-Singular line 4719–4737 (proof of Proposition 14.9.1) assumes v(α)<0 and derives f=0. It proves nonnegativity only.

Witness: the Klingen module at p=3 with parameters (1,1,9,9) has U_Kli(p),2 eigenvalues 2, 10, 10, 18 (Weyl orbit of α+β, Proposition 5.1.5.1, line 946–948) and T_p,2 eigenvalue 20 (Lemma 5.1.5.1, line 933–935). Four of the five are units.

Changes:

- Old → new: "positive valuation" → "nonnegative valuation", with the deduction spelled out as in the source.
- The Newton-polygon step now names its inputs: integrality, the ordinary condition and the central character.
- New §9.8 Check pinning the convention with these computed values, in place of the deleted spherical Check.
- New source issue E16, for the source's "positive".

## F03 (P3) — applied

Verified by recomputing:

- D+={b,c} is cut out by e_a.
- O(D+)=Hom(e_aO,O)=e_aO.
- (σ*O(D+))_c=O(D+)_b=0, while T(f)(c)=f(b), which is nonzero for f=e_b.

So T does not factor, and only the first conclusion of (c) applies.

Old → new: "is also 𝔽₂[0], consistently with (c)." → "is also 𝔽₂[0]." followed by three sentences: the first conclusion only; the factorization fails at c, with the computation; the agreement is a computed value, not an application of the second conclusion.

## F04 (P3) — applied

Verified in BP-Coleman:

- Theorem 5.4.3 runs from line 5109 to 5132, and p. 109 starts at line 5105.
- Example 3.3.9 is at line 1890 and Definition 3.3.10 at 1906–1937; p. 40 runs from line 1884 to 1943.

Old → new: §5.4 "Theorem 5.4.3, pp. 108–109" → "p. 109". §5.2 "Example 3.3.9 and Definition 3.3.10, pp. 39–40" → "p. 40".

"§5.4.1 and Theorem 5.4.3, pp. 108–109" stays: §5.4.1 is at line 5092, p. 108. A sweep found no other occurrence.

## F05 (P3) — applied

Verified by script: I extracted every source locator from the README and compared it with the manifest. Changes:

- **BP-Coleman**, `cited_for`: added E13, E14, "Scope and ownership" and "Exact supplier contracts".
- **BP-Coleman**, `locator`: regrouped by kind, because the old string interleaved kinds ("Lemma 6.6.4 (and proof), 5.4.1, …" read as a lemma). Added §§2.4–2.6, 2.7 (cited at the AdicSpacesPartIV contract; an extra the reviewer did not list), 3.4; Lemmas 3.3.24, 3.5.11, 5.9.10, 6.6.2; Corollary 5.3.4; Conjecture 6.8.1. Dropped Example 6.2.19, which the README never cites. The string is 910 characters.
- **BP-Hida**, `locator`: added §§2.1, 2.5; Remark 2.1.20; Lemma 2.10.1(4); Proposition 2.3.13; also Definition 2.2.4 and Lemma-construction 2.2.6 (cited at the coherent-correspondence contract).
- **BP-Hida**, `cited_for`: added "Scope and ownership" and "Exact supplier contracts".
- **Pilloni-Singular**, `locator`: added §13.3.2, p. 90. The radius colimit is defined at line 4118 and 4126, on p. 90, so the README's page is right. Also added Lemma 5.1.5.1 (used by the new Check) and Proposition 6.1.4.1 and Theorem 6.1.5.1 (used by the new gap).
- **Pilloni-Singular**, `cited_for`: added E16 and "Exact supplier contracts".

The manifest parses with `tomllib`.

## Adversarial pass (statements added or changed)

| Statement | Instances tried | Values computed | Result | Change |
|---|---|---|---|---|
| §9.8: AMFSWPII §7.3 used at (d,r)=(k,2) | k=0; k=1; r=1 boundary | d=k≥0, r=2≥2 in range. At d=0, r=2 the orders are 4+0, 2+1, 0+3, all ≥3. At r=1 the mixed order is 1+1=2<3, and the import is only at r=2 | Holds | — |
| §9.8: AMFSWPII §7.4 restriction | n=1, n=∞; E₀=Ω(k,2)(−D) | Source covers n∈ℤ≥0∪{∞} with p^∞=0 (Pilloni-Singular line 4712, note 26); AMFSWPII covers n≥1 and ∞, any r; n=0 is the zero sheaf | Holds | — |
| §9.8: Klingen I^(−3) divisibility | H multiplicative: mixed / étale kernel. H étale: kernel cases 1–4 | Mixed 2+1+0=3; étale 0+3+0=3; case 1: k+4≥4; case 2: 2+1=3; case 3: 2+3(I^(−3))=5; case 4: 0+3(I^(−3))=3. Without the twist, case 4 has no stated divisibility, which is why I^(−3) is retained | Holds | Stated "factors through p³" |
| §9.8: Klingen restriction | depth argument | 0→H⁰_Z→H⁰(X)→H⁰(U)→H¹_Z→H¹(X)→H¹(U). Depth ≥2 along Z (CM, codimension 2) gives H⁰_Z=H¹_Z=0, so H⁰ is bijective and H¹ injective; H² is not claimed | Holds; CM is now an owned input | gap:klingen-lci-model |
| §9.8: nonnegativity deduction | v(α)=−1; v(α)=0 | v(α)=−1: g′=α^(−n)U^n g′∈p^n·(integral) for all n, so g≡0 mod p^n and g=0 via lim. v(α)=0: the argument gives nothing, as it should | Holds | "nonnegative" |
| §9.8 new Check | p=3, (1,1,9,9) | αδ=βγ=9; ratios 1, 9, 1/9 (none equal to 3, so generic). T_p,2: 1+1+9+9=20, v₃=0. U_Kli,2 orbit {α+β, α+γ, β+δ, γ+δ}={2,10,10,18}, v₃=0,0,0,2 | Four of five are units | Added |
| §9.8 Newton step | k=0 vs k≥1 | Ratios have valuation 0 or ±(k+1); the value 1 occurs only at k=0. The route's isomorphism is for k≥1 (Corollary 14.9.1 assumes k≥1 in the spherical case) | Holds for k≥1 | Inputs named |
| §2.8 third Check (F03) | three points, σ(a)=a, σ(b)=a, σ(c)=b | T(f)=(f(a),f(a),f(b)); T²(f)=(f(a),f(a),f(a)). Inner ord = constants = 𝔽₂; outer ord = 𝔽₂. σ*O(D+) at c is O(D+)_b=0, while T(e_b)(c)=1 | Values right; factorization fails | Reworded |
| Contract bullet §7.2 | r=2, d=k; r=1 | Ω(d,r)=Sym^dω⊗det(ω)^r matches AMFSWPII ω(j,k)=Sym^dE⊗λ^k; r=1 excluded there as here | Holds | — |
| Gap klingen-lci-model | Y_Kli(p) | Regular, flat lci (Proposition 6.1.4.1); toroidal model normal lci (Theorem 6.1.5.1(4)); p₁ extends to a refinement (Theorem 6.1.5.1(3)). Finiteness of p₁ is not claimed (superspecial fibres) | Request matches the source | Added |
| E16 | Proposition 14.9.1 | Statement at line 4680–4682 ("positive"); proof at line 4719–4737 (v(α)<0 ⇒ f=0) | Misprint | Added |
| F04 pages | Theorem 5.4.3; Example 3.3.9, Definition 3.3.10 | Line 5109–5132 within p. 109 (5105–5145); line 1890–1937 within p. 40 (1884–1943) | Slips confirmed | Corrected |

## Checks

- `lake env lean packages/HigherHidaAndColemanTheory/Suggested.lean`, run from the content checkout: exit 0, no output, no warning. The file is unchanged: `import Mathlib`, the module docstring and an empty namespace.
- `#check @name` comparison: `Suggested.lean` declares nothing, so the scratch file of `#check` lines is empty and there is nothing to compare. No README backticked name of this roadmap's own was added.
- Dependency check (`gate --depcheck … --movable`): `depcheck: 242 roadmaps, 2212 edges, 0 problem(s)`. No UPWARD, CYCLE or moved line.
- `roadmaps resolve` on the README: cross-roadmap citations found nowhere: none; Lean names found nowhere: none.
- Gap consistency: all ten slugs have the same supplier and section in `plan.json` and under "Exact supplier contracts".
- House style: no LaTeX delimiters, paths or process words in the changed text.

## Gate failures

None were listed for this round.

## For the maintainer

- **New supplier edge.** This roadmap now cites AlgebraicModularFormsAndSerreWeightsPartII §§7.1–7.4. That roadmap is an open pull request that adds a new folder, at merge-order line 249, before this one (255), so it must merge first.
- **New gap.** `gap:klingen-lci-model` asks ShimuraCompactifications §7.19 for the Klingen-level moduli model. It overlaps with AlgebraicModularFormsAndSerreWeightsPartII's gap:siegel-parahoric-models; one extension of ShimuraCompactifications would settle both.
- **Ownership against open pull requests,** checked by `roadmaps grep`:
  - The Klingen half (I^(−3), U_Kli(p),2) has no earlier owner.
  - PadicFamiliesPartII (line 256, later) restates it for totally real F and should cite §9.8 for F=ℚ.
  - No roadmap constructs the Klingen moduli model with its lci property.
- **Names:** no Lean names changed, and no ids that other roadmaps cite changed. The headings of §9.8 and E1–E15 are unchanged; E16 is new.
- **Suspicious text:** none. The review text was treated as data and contained no instructions beyond its findings.
