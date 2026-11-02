# FIX-DESIGN-RationalAnalyticPrismatization~6

Two findings, both verified and both applied (F01 with a route of its own for the clause that stays here).

## F01 (P2) — applied

Verified: the AnalyticStacks design on the board's main (`packages/AnalyticStacks/design/README.md`) states in §5.3 the theorem 4.5 was planning: descent of ∧^m L_{A/R} along descendable maps of solid animated R-algebras and of analytic rings with induced structure (ALRS Lemma A.1.2, ALRS line 9435–9440), with the same route. Its §5.1 API also states the agreement on discrete rings (RCSolid Example 7.4.4(1), RCSolid line 5295), which is ALRS Lemma A.1.3(1).

Change: 4.5 "Prove that … ∧^m_A L_{A/R} → Tot(…) is an equivalence …, and that for discrete A … while for p-complete A …" → the contract and §§5.1–5.3 give A.1.1, A.1.2 and A.1.3(1); "Prove that for a p-complete solid animated ℤ-algebra A, L_{A/ℤ_p} is p-complete and L_{A[1/p]/ℚ_p} = (lim_n L_{(A/p^n)/(ℤ/p^n)})[1/p]" (ALRS line 9464). The descent route is replaced by a route for A.1.3(2). Gap `solid-cotangent-complex`: `needs` and `detail` now include the discrete agreement and the §5.3 descent. `E5:descent` is removed from 4.5's *Needs:* line, its plan prerequisites and the Layer 4 Dependencies. The plan's locator is now "Lemma A.1.3, p. 175; ALRS line 9462" and its hypotheses were updated.

The route for A.1.3(2) needs a filtration input. The derived HKR filtration (RefinedTraceMethods §1.10, "Derived HKR, circle tensors and a nonflat example", at its open head, merge order line 217, earlier than this roadmap) is added to *Needs:*, to the Layer 4 Dependencies, to a new `### From TauCetiRoadmap.RefinedTraceMethods` supplier contract and to the plan's `suppliers`.

The other step of the route has no owner. That step is the Adams operation from the degree-ℓ self-map of the circle, acting by ℓ^k on gr^k. No roadmap on main, at an open head or among the board packages states it: I searched for "Adams operation" near "Hochschild" or "HKR", and for "λ-decomposition" and "Loday". So the route derives it in place from left Kan extension and the polynomial case, HH_k = Ω^k. The route is not mandatory.

New negative-control Check (README and plan test `cotangent_not_p_complete`): ℤ_p[T] = ⊕ ℤ_p·T^n is not p-complete, and L_{ℤ_p[T]/ℤ_p} = ℤ_p[T]·dT is not p-complete either.

Consumers 4.6, 4.8, 9.1 and 9.5 use the object L and the C_p Check. They are unchanged.

## F02 (P3) — applied

Verified: ALRS line 1922 prints ∧^i Ω^i. Line 1914 and Corollary 2.9.4 (line 2010) show that ∧^i Ω¹ is meant. For relative dimension 2, ∧²Ω² = ∧²O = 0, while the de Rham complex has Ω² of rank 1.

Change: "⊕_i ∧^i Ω^i_{Y/X}[−i](i)" → "⊕_i Ω^i_{Y/X}[−i](i) with Ω^i_{Y/X} = ∧^i Ω¹_{Y/X}" in README 5.3 and in the plan's 5.3 statement. A grep finds no other occurrence of the pattern (5.4, 9.5 and 12.6 use Ω^i).

## Adversarial pass on changed statements

| Statement | Instances | Values | Result |
|---|---|---|---|
| 4.5 A.1.3(2) | A = ℤ_p | L = 0, p-complete; lim_n L_{(ℤ/p^n)/(ℤ/p^n)} = 0, so the right side is 0 = L_{ℚ_p/ℚ_p} | holds |
| 4.5 A.1.3(2) | A = ℤ_p⟨T⟩ | L = ℤ_p⟨T⟩·dT p-complete; [1/p] gives ℚ_p⟨T⟩·dT, the first 4.5 Check | holds |
| 4.5 A.1.3(2) | A = 𝔽_p | L_{𝔽_p/ℤ_p} = 𝔽_p[1], bounded p-torsion, hence p-complete; A[1/p] = 0 and the right side is (p-torsion)[1/p] = 0 | holds |
| 4.5 A.1.3(2) | A = 0 | both sides 0 | holds |
| 4.5 hypothesis | A = ℤ_p[T] = ⊕ ℤ_p | L = ⊕ ℤ_p·T^n dT ≠ its p-completion ℤ_p⟨T⟩dT | hypothesis needed; added as a Check |
| 4.5 route, piece k = 1 | fib(0 : X → X) = X ⊕ X[−1] with X = L[1] | L[1] ⊕ L. ALRS line 9505 prints C[1] ⊕ C[2]; the route states the fibre correctly | route text corrected relative to the source |
| 4.5 route, k ≥ 2 | ℓ = 2, p = 3, k = 3 | ℓ^k − ℓ = 6 ≠ 0, with 3-part 3: bounded p-power torsion on gr^k | holds |
| 4.5 route, base change | ℤ_p → ℤ/p^n; ℤ_p → ℚ_p | L_{(A/p^n)/(ℤ/p^n)} = L ⊗ ℤ/p^n with limit L^∧_p = L; A ⊗_{ℤ_p} ℚ_p = A[1/p] | holds |
| Gap `solid-cotangent-complex` | AnalyticStacks §5.1 bullet, §5.3 | discrete agreement = RCSolid 7.4.4(1) line 5295; descent = ALRS line 9435 | the supplier states both |
| 5.3 graded algebra | d = 1, 2 | d = 1: O ⊕ Ω¹[−1](1); d = 2: adds Ω²[−2](2) of rank 1, agreeing with the formalCone_hodge Check | holds |

## Checks

- Dependency gate:

```
candidate: RationalAnalyticPrismatization is not in the merge order yet; checked as if placed after LocallyAnalyticRepresentationsOfLocalGroups (the intake inserts it when its design is accepted)
depcheck: 56 roadmaps, 668 edges, 0 problem(s)
```

  No UPWARD or CYCLE line.
- A scripted check confirms that every plan statement, test, API bullet, gap `needs` and gap `detail` occurs verbatim in the README: 0 missing.
- There is no Lean file at the design stage, so no `#check` pass was run.

## For the maintainer

- New supplier: RefinedTraceMethods §1.10, an open roadmap pull request that adds a new folder and is earlier in the merge order. Its section heading was checked at its open head.
- AnalyticStacks §5.3 now has this roadmap as a consumer through `solid-cotangent-complex`. The gap's slug is unchanged.
- Source issue (minor): ALRS line 9505 writes G1/G2 ≅ C[1] ⊕ C[2]. As the fibre of the zero map on C[1], it is C[1] ⊕ C. This affects nothing.
- Ownership against open pull requests was checked by object through `roadmaps grep` (HKR, Adams operations on Hochschild homology) and the board packages. I did not read every sibling pull request in full.
