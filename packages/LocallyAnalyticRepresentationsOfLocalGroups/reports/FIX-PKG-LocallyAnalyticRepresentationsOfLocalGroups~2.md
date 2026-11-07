# FIX-PKG-LocallyAnalyticRepresentationsOfLocalGroups~2

Repair round for the review REV-PKG-LocallyAnalyticRepresentationsOfLocalGroups (four findings, all P3). Every finding was verified against the cited source lines and the supplier's head before it was applied. Files changed: `packages/LocallyAnalyticRepresentationsOfLocalGroups/README.md`, `packages/LocallyAnalyticRepresentationsOfLocalGroups/Suggested.lean` (header only), `packages/LocallyAnalyticRepresentationsOfLocalGroups/sources.toml` (one `cited_for` list). `design/plan.json` is unchanged: no finding asks for a supplier gap.

## REV-PKG-LocallyAnalyticRepresentationsOfLocalGroups/F01 (P3) — applied

Verified: DLB17 lines 134–173 (printed p. 4, §1.1) define Ban^adm(G), Π^an and Π^lisse and state Théorème 1.2; nothing there concerns Rep^a_E(G), strictness or finite length, and the text has no occurrence of "longueur" or "Jordan". ST03 line 1343 (Proposition 6.4) covers (i)–(iii); ST03 lines 430–448 (Lemma 3.6 and the paragraph after it) cover (iv); (v) is derived in the proof route of 1.4.

Changed in 1.4: the citation "(Schneider–Teitelbaum 2003, Proposition 6.4, p. 34, and Lemma 3.6, p. 11; Dospinescu–Le Bras, §1.1, p. 4)" → "(Schneider–Teitelbaum 2003, Proposition 6.4, p. 34, and Lemma 3.6, p. 11)". In `sources.toml` the key DLB17 keeps its other citations (0.5, 0.7, 0.8, all of Lemme 5.9–5.10, verified in the README) and "1.4" is dropped from its `cited_for`.

Pattern: Dospinescu–Le Bras is cited at 0.5, 0.7, 0.8 and in the Source issues list; all four are the Lemme 5.9–5.10 locators and support their claims. No other occurrence.

## REV-PKG-LocallyAnalyticRepresentationsOfLocalGroups/F02 (P3) — applied

Verified: ST02B line 491 is the printed folio 13 and line 492 the marker of page 14; Lemma 3.4 is stated at line 514; the folio 14 is at line 527 and the page-15 marker at line 528, with the proof continuing. The lemma occupies printed pages 14–15 and states what 2.1 (iii) cites (admissible if and only if the dual is finitely generated over K[[G]]).

Changed in 2.1 (iii): "Lemma 3.4, pp. 13–14" → "Lemma 3.4, pp. 14–15". The manifest locator of ST02B ("Lemma 3.4") carries no page and is unchanged.

Pattern: Lemma 3.4 of ST02B is cited only in 2.1.

## REV-PKG-LocallyAnalyticRepresentationsOfLocalGroups/F03 (P3) — applied

Verified: 1.2 (iv) used the non-unitary Banach category defined in 2.1, and the *Needs* line of 1.2 listed "2.1 for (iv)", while the Layer 1 dependency list names no Layer 2 target. The reviewer's repair is sound: strong admissibility is tested on one compact open subgroup (1.2 API), 2.1 (ii) gives every admissible Banach representation of G an H-stable open bounded lattice for compact open H, so the unitary H-form of (iv) applied after restriction gives the same conclusion for G. Instance: G = ℚ_p^×, χ = x, p acts by p so there is no G-stable lattice; on ℤ_p^× the character is unitary and (iv) applies; the conclusion for G follows by the compact-open test.

Changed: 1.2 (iv) "for an admissible Banach representation B (2.1) the locally analytic vectors B^la are strongly admissible" → "for an admissible unitary Banach representation B of a compact open subgroup H (PadicLocalLanglandsForGL2Qp §0.1) the locally analytic vectors B^la are strongly admissible". The *Needs* line of 1.2 loses "2.1 for (iv)". In 2.2 the proof route of (i) now reads "strongly admissible (1.2 (iv) after restriction to a compact open H by 2.1 (ii), strong admissibility being tested on H)". The dependency lists of Layers 1 and 2 are unchanged and now correct (Layer 1 names no Layer 2 target; Layer 2 names Layers 0–1).

Pattern: no other *Needs* line of Layers 0–1 names a Layer 2 target. Two Checks of Layer 1 mention later sections in prose (1.4 mentions the principal series of 5.2, 1.10 mentions the value 8.8 uses); they are illustrations in Checks, not inputs, and were left as they are.

## REV-PKG-LocallyAnalyticRepresentationsOfLocalGroups/F04 (P3) — applied

Verified at the head of PadicLocalLanglandsForGL2Qp: §2.4 defines Π^alg for an admissible unitary Banach representation Π of GL_2(ℚ_p) with the decomposition ⊕_W W ⊗ Hom_g(W, Π^an)^sm over W = Sym^(k−1) ⊗ det^a; §4.8 constructs Ban(η_1, η_2) := (Ind_B^G η_2 ⊗ η_1χ⁻¹)^an from the upper Borel with its central action, the special subrepresentation W and St^an, with χ = x|x| in that roadmap's conventions, which is the ε of our Convention 7 for L = ℚ_p; its induction convention (f(bg) = χ(b)f(g), right translation) is our Convention 5.

Changed: one Scope bullet "**GL_2(ℚ_p) special cases.**" naming §§2.4 and 4.8 and saying that 1.6 and 5.2 state the split-group constructions and specialise to them. One Check added to 1.6 (V = Π^an gives Π^alg with its direct-sum decomposition; a single-type definition misses the other summands, Π = E² trivial has the trivial type with multiplicity two). One Check added to 5.2: conjugation by the Weyl element identifies PS(χ_1 ⊠ χ_2) with (Ind_B^G χ_2 ⊠ χ_1)^an, so PS(η_1ε⁻¹ ⊠ η_2) = Ban(η_1, η_2), with the central character η_1η_2ε⁻¹ computed on both sides.

The 5.2 Check differs from the reviewer's wording in making the Borel swap and the ε⁻¹ twist explicit: the supplier induces from B with the pair (η_2, η_1χ⁻¹), this roadmap from B⁻, so "PS(χ) is the principal series of §4.8" is only true after the computed change of pair.

## Checks

- `lake env lean packages/LocallyAnalyticRepresentationsOfLocalGroups/Suggested.lean` from the content checkout: exit 0, no output. The file declares nothing (no headline is statable at the pins, as its docstring says), so there is no `#check @name` comparison to run and no one-tactic probe; I say so rather than claim one. Its header was changed from the plain `import Mathlib` to the module form (`module`, `public import Mathlib`, `@[expose] public section` before the namespace), the form of `TauCetiRoadmap/CoboundaryExpansion/Suggested.lean` on main, so that the build of the module logs no "consider adding `module`" warning; the docstring and the namespace are unchanged.
- Direction check: `depcheck: 242 roadmaps, 2486 edges, 0 problem(s)`; no UPWARD, CYCLE or `moved:` line.
- Citation resolver on the README: no cross-roadmap citation and no Lean name found nowhere.
- Style grep for LaTeX delimiters, process words, pull-request references and machine paths: nothing.
- README and Lean agree: the README has no backticked name of its own and the Lean file declares none.

No gate failures were listed for this round.

## Adversarial pass on the changed statements

| Statement | Instances tried | Values computed | Result | Change |
|---|---|---|---|---|
| 1.2 (iv), unitary H-form | H = ℤ_p, B = C(ℤ_p, E) | B′ = E[[ℤ_p]] = E ⊗ O_E[[T]], rank 1; (B^la)′ = D(ℤ_p, E) ⊗_(E[[ℤ_p]]) B′ = D(ℤ_p, E), rank 1 | strongly admissible | none |
| 1.2 (iv) used for non-compact G through 2.1 (ii) | G = ℚ_p^×, B = χ = x | p acts by p, no G-stable lattice; on ℤ_p^× unitary; (B^la)′ rank 1 over D(ℤ_p^×, E) | same conclusion as before the repair | text only |
| 2.2 (i) proof route | V = χ = x of ℚ_p^×, B = χ | B^la = B, strongly admissible after restriction; V closed in B^la | holds | route reworded |
| 2.1 (ii) lattice used in the route | H compact, B Banach | sup_(h∈H) ‖h·v‖ finite by Banach–Steinhaus; unit ball H-stable, open, bounded | holds | none |
| 1.6 Check, Π = E² trivial | G = GL_2(ℚ_p) | Hom_g(1, E²) = E², multiplicity 2; Hom_g(W, E²) = 0 for W ≠ 1 | V_lalg = E² = Π^alg | Check added |
| 1.6 Check, smoothness of multiplicity spaces | φ ∈ Hom_g(W, V), V locally analytic | d/dg of g ↦ gφ(g⁻¹w) at 1 is Xφ(w) − φ(Xw) = 0 | Hom_g(W, V) is smooth, so the supplier's "^sm" is the same space | none |
| 5.2 Check, Borel swap | f ∈ Ind_(B⁻)(χ_1 ⊠ χ_2), F(g) = f(w⁻¹g), b = diag(t_1, t_2) | w⁻¹bw = diag(t_2, t_1); F(bg) = χ_1(t_2)χ_2(t_1)F(g) | F ∈ Ind_B(χ_2 ⊠ χ_1), G-equivariant | Check added |
| 5.2 Check, central character | a scalar | PS(η_1ε⁻¹ ⊠ η_2): η_1(a)ε(a)⁻¹η_2(a); supplier §4.8 Check: η_1(a)η_2(a)χ(a)⁻¹ with χ = ε | equal | none |
| 5.2 Check, ε convention | L = ℚ_p | Convention 7: ε = N(·)|·| = x|x|; supplier: χ = x|x| with χ(p) = 1, χ(u) = u | same character | none |
| Scope bullet | 𝐆 = GL_2, L = ℚ_p | 1.6 and 5.2 specialise to §§2.4, 4.8 by the two Checks above | consistent | bullet added |
| 1.4 citation after deletion | (i)–(iii), (iv), (v) | ST03 Proposition 6.4 (line 1343); Lemma 3.6 (line 430); (v) from 1.3 and Lemma 3.6 | all five covered | locator deleted |
| 2.1 (iii) locator | ST02B Lemma 3.4 | statement line 514 on printed p. 14, proof to p. 15 | pages 14–15 | pages corrected |

## For the maintainer

- No name cited by other roadmaps changed; the package still declares no Lean name.
- Ownership against open pull requests: the reviewer's index search found no second owner; this round added no new object, only two compatibility Checks against PadicLocalLanglandsForGL2Qp §§2.4 and 4.8 at its head, so no further ownership search was needed.
- Nothing suspicious was found in any fetched text.
