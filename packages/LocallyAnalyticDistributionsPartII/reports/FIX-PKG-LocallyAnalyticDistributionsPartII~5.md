# FIX-PKG-LocallyAnalyticDistributionsPartII~5: repair of review REV-PKG-LocallyAnalyticDistributionsPartII~4

Three findings, all verified and applied. Only `packages/LocallyAnalyticDistributionsPartII/README.md` changed; `Suggested.lean`, `metadata.toml`, `sources.toml` and `design/plan.json` are unchanged (no new supplier gap is needed: the new supplier already owns the object).

## F01 (P2) — applied

Verified: the pinned `Module.Flat` and `Module.FaithfullyFlat` take `[CommSemiring R]`/`[CommRing R]` (`#check`), so they cannot express flatness over the noncommutative A of §3.1.

Changed: §3.1 "flat (`Module.Flat`)" → injectivity of `TauCeti.BalancedExtension.map` along A → Q_T(A), and along the `RingHom.op` map for the left side. Convention 7 defines this flatness. The Tau Ceti and Mathlib contracts, the §3.1 and §3.6 Needs lines and Layer 3 Dependencies are updated. §3.1 gets a new M₂(ℚ₃) Check. The §3.6 sidedness (B ≅ Û′ ⊗_Λ A) is corrected.

## F02 (P2) — applied

Verified: DeformationAndDerivedPatchingAlgebra §1.10 (new-roadmap head fab28ea, merge order 78 < 198) owns strict Cohen rings and compatible coefficient lifting. No main roadmap or pinned declaration covers the mixed-characteristic case; `TauCeti.exists_residueFieldSection` needs a field inside R.

Changed: "by the Cohen structure theorem" (§§3.5, 3.6) → K′ = R′[1/p] for that strict Cohen ring R′. §3.6 now proves R′ → R injective, R free on 1, …, π^(e−1), K′ closed, [K:K′] = e. Edits: a Scope bullet, a supplier contract, the Needs lines, Layer 3 Dependencies, and a new Check.

## F03 (P3) — applied

Verified: the antecedent ℚ_p[[x,y]]/(xy) inverts p, so it admits no nonzero 𝔽_p[[X]]-module.

Changed: "For the same A and T" → "For A = ℤ_p[[X]] with its (p, X)-adic filtration and T the powers of gr p". The Check also computes Q_T(A) ⊗_A M = Q_T(A)/Q_T(A)p = 0, since p is a unit in ℚ_p⟨X/p⟩.

## Other occurrences of the patterns

- Commutative flatness predicate on noncommutative rings: §3.6 also cited `Module.Flat` for K[[G]] → Û(g_R)_K. Its Needs line is fixed. Its sketch now gets flatness from §3.4 through B ⊗_A M ≅ Û′ ⊗_Λ M, using `TauCeti.BalancedTensorProduct.assoc` and `TauCeti.BalancedExtension.lid`, and the old "B = A ⊗_Λ Û′" has the wrong side for the right A-module structure. §§2.5 and 3.4 name no commutative predicate. §4.14 keeps `Module.FaithfullyFlat` for the commutative K/ℚ_p.
- An unsupplied Cohen structure theorem: the only uses were §3.5 and §3.6; Convention 8 and §4.13 already go through §3.6.

## Adversarial pass on changed statements

| Statement | Instances tried | Values computed | Result / change |
|---|---|---|---|
| Convention 7 / §3.1 flatness via `BalancedExtension` | f = id_A; f: ℤ → ℤ/2; commutative A | id: A ⊗_A P ≅ P (`lid`), injections preserved. ℤ/2 ⊗ (×2 on ℤ) is the zero map on ℤ/2, so not flat. Commutative A: the definition is rTensor-injectivity, the same as `Module.Flat` | Correct sidedness: B ⊗_A − tests right flatness; Bᵐᵒᵖ ⊗_{Aᵐᵒᵖ} P ≅ P ⊗_A B tests left flatness |
| §3.1 new Check, A = M₂(ℚ₃) | discrete filtration, T = {1} | F₋₁ = 0 ⊆ J(F₀A); Rees ring A[t] noetherian; S = {1}; Q_T(A) = A; E₁₂E₂₁ = E₁₁ ≠ E₂₂ = E₂₁E₁₂ | Inside §3.1's hypotheses; noncommutative witness |
| §3.1 Check (F03) | p = 3, M = 𝔽₃[[X]] | 3M = 0, 1 ≠ 0 in M; gr 3 = P ∈ T so 3 ∈ S; Q = ℚ₃⟨X/3⟩, Q/Q·3 = 0 | Correct |
| §3.6 coefficient map injective | R = ℤ₃; R = W(𝔽̄₃)[√3]; ℤ_p → 𝔽_p[[t]] | Kernel is prime in a DVR, so 0 or (p); p ↦ p ≠ 0 in characteristic 0. Characteristic-p target: p ↦ 0, so not injective | Characteristic-0 hypothesis is used and stated; negative Check added |
| §3.6 R free of rank e over R′ | e = 1 (R = W(𝔽̄₃)); e = 2 (W(𝔽̄₃)[π], π² = 3; ℤ₃[ζ₃], π = 1 − ζ₃) | e = 1: R′ = R, K′ = K, matching the existing G = {1} Check. e = 2: bases (1, π), [K:K′] = 2, while [K:ℚ₃] = ∞ in the first case. pⁿR ∩ R′ = pⁿR′ because 1 is a basis vector | Correct; K′ = ℚ₃ fails finiteness for W(𝔽̄₃)[π] |
| §3.6 B ⊗_A M ≅ Û′ ⊗_Λ M and flatness | G = {1}; general | G = {1}: Λ = K′, A = B = K, both sides equal M. General: u ⊗ (λ ⊗ c) ↦ c ⊗ uλ is right-A-linear: (c ⊗ uλ)(c′ ⊗ λ′) = cc′ ⊗ uλλ′ | Sidedness corrected (Û′ ⊗_Λ A, not A ⊗_Λ Û′) |
| §3.5 sketch | K = ℚ₃(√3); K = completion of ℚ₃^ur with √3 adjoined | First: R′ = ℤ₃, K′ = ℚ₃, e = 2. Second: R′ = W(𝔽̄₃), K′ = completion of ℚ₃^ur, [K:K′] = 2 | Same K′ as §3.6 |
| Convention 7 claim about the Mathlib predicates | `#check` | `Module.Flat : [CommSemiring R]`, `Module.FaithfullyFlat : [CommRing R]` | Correct |

## Checks run

- `lake env lean packages/LocallyAnalyticDistributionsPartII/Suggested.lean` from the content checkout: exit 0. The only output is the two expected `declaration uses sorry` warnings, at lines 78 and 98. The file is unchanged this round.
- Signatures: a scratch copy with `#check @name` for all four declarations (`firstCongruenceSL2`, `firstCongruenceProduct`, `isSemisimpleModule_of_finiteDimensional`, `exists_surjective_algHom_end_symPower`) elaborated once. Both definitions keep `Fact p.Prime`. The semisimplicity theorem keeps p ≠ 2, both module structures, the scalar tower and `FiniteDimensional ℚ_[p] M`. Peter–Weyl keeps p ≠ 2, m, k, K, both algebras, the tower and finite dimension. All agree with the README; nothing changed.
- New library names, checked at the pins: `TauCeti.BalancedTensorProduct`, `TauCeti.BalancedExtension`, `TauCeti.BalancedExtension.map`, `TauCeti.BalancedExtension.lid`, `RingHom.op`, `Module.FaithfullyFlat` and `Algebra.TensorProduct.rid` all elaborate by `#check`. `TauCeti.BalancedTensorProduct.assoc` has no built object file on this host; it was checked by source at the pinned Tau Ceti (`TauCeti/LinearAlgebra/TensorProduct/Balanced/Associator.lean`, `def assoc` in namespace `TauCeti.BalancedTensorProduct`). None of these is imported by `Suggested.lean`.
- Dependency check (`gate --depcheck … --movable --content …`):

```text
depcheck: 237 roadmaps, 2144 edges, 0 problem(s)
```

  There is no UPWARD, CYCLE or moved line. The edge count went from 2143 to 2144: the new DeformationAndDerivedPatchingAlgebra → LocallyAnalyticDistributionsPartII edge, which points downward (position 78 to 198).
- `roadmaps resolve` on the README: no cross-roadmap citation or Lean name found nowhere.
- House style: no `_{`/`^{` outside backticks, no unbalanced backticks, and no process words or machine paths in the edits.

## Notes for the maintainer

- New supplier edge: DeformationAndDerivedPatchingAlgebra §1.10. That roadmap is still a new-roadmap pull request (head fab28ea), already earlier in the merge order. It is cited by roadmap and section only, so its merge has to precede this one, as the order already says. Ownership was checked against main, the board packages and the open heads that `roadmaps grep`/`show` reach. DeformationAndDerivedPatchingAlgebra is not in the 224-name sibling list, but its head was read through `roadmaps show`.
- No Lean name of this roadmap changed, and no section or target id was renumbered, so other roadmaps are not affected.
- No source was fetched and `needs-references.toml` was not written.
