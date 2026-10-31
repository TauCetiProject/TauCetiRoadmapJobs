# Repair report: FiniteFlatGroupsAndIntegralPadicHodgeTheoryPartII, round 4

The review has two findings: F01 (P2) and F02 (P3). Both are correct. Both are repaired in `packages/FiniteFlatGroupsAndIntegralPadicHodgeTheoryPartII/README.md`. F01's pattern also appeared in one supplier-gap contract, so that contract's `needs` changed in `design/plan.json` (top-level `gaps` list only). `Suggested.lean`, `metadata.toml` and `sources.toml` are unchanged.

## F01 (P2) — applied

Old (§3.10): "Inductively any finite direct sum of isomorphic copies is very good."

New: for every n≥1 and representations Λ₁,…,Λ_n with intertwining isomorphisms h_i:Λ₁≅Λ_i (h₁ the identity), if Λ₁ is good and very good at x, then the diagonal sum is good and very good at x. The statement says why n≥1 is needed. §3.10 gains a three-bullet **Checks** block (zero-copy G_m negative control; n=1,2; the non-intertwined weights ±1). The proof route is now explicit for n blocks, and §3.4 is added to its *Needs*.

Evidence that the finding is right. KPZ26 Lemma 5.3.7(b) (KPZ26 lines 2412–2416, proof lines 2427–2438) proves only the two-copy step, and it starts from a good embedding. With n=0, Λ⁰=0 and GL(0) is trivial. For p=3, the units 1 and −1 of ℤ₃ then have the same image, so the kernel is G_m and the map is not a closed immersion. KPZ26 line 1122 also writes the repeated sum as ρ^{⊕m} "for any m ≥ 1".

The old word "Inductively" was a second defect: Lemma 5.3.7(b) needs the two summands to be isomorphic, and Λ^{⊕n}⊕Λ is not of that shape. The new route avoids induction:
- 𝒢ⁿ on Λ₁⊕⋯⊕Λ_n is good and very good at (x,…,x) by the product criterion §3.4 (KPZ26 Lemma 5.3.9, line 2444).
- The diagonal 𝒢 is the scheme-theoretic intersection of 𝒢ⁿ with the centralizers of the n−1 endomorphisms that carry block 1 to block i by h_i. (g₁,…,g_n) commutes with such an endomorphism iff ρ_i(g_i)h_i=h_iρ₁(g₁), iff g_i=g₁.
- §3.8 (KPZ26 Corollary 5.3.4, lines 2388–2394) then applies.
- Goodness of the diagonal follows because the diagonal of a separated Grassmannian is closed, and so is ∏Gr(d,Λ_i)→Gr(nd,⊕Λ_i) (KPZ26 line 2418).

Same pattern repaired elsewhere:
- **§2.13.** "a determining segment has r lattices" → "r≥1 lattices". With r=0, tot(L)=0 is the zero representation. §3.12 keeps its nonempty segments; §3.13's `ρ^{⊕r}` uses this r.
- **Gap contract `gap:scheme-local-model-hodge-immersion`** (README "Exact supplier contracts" and `design/plan.json` `gaps`). "a finite repeated sum admits a lattice Λ" → "some repeated sum ρ^⊕m with m≥1 admits a lattice Λ", following KPZ26 lines 1122 and 1128. With m=0, the GL₂ minuscule local model P¹ cannot immerse into Gr(0,0), which is a point.
- **§§3.14, 3.15, 3.17** already require nonzero multiplicity or s≥1, so they are unchanged.

## F02 (P3) — applied

Old (§4.6): "KZ25, §3.2.5–3.2.6, p.23; KZ25 line 1044".

New: "KZ25, §§3.2.5–3.2.6, pp.23–24, especially the proof of Proposition 3.2.7, p.24; KZ25 lines 1055–1063". The KP18 locator and its very-goodness correction are kept.

Evidence:
- The page marker for p.24 is at KZ25 line 1042, and §3.2.6 starts at line 1044.
- The section of the tensor torsor that is constant modulo a_E, and its lift to the GL isomorphism, are at lines 1055–1063.
- Line 1059 says the section exists "by assumption (C)". Line 1019 shows that (C) is very-goodness at y, which agrees with §4.6's hypothesis.
- No other README locator cites these KZ25 pages. The `sources.toml` entry for KZ25 already lists pp.7–28 and Proposition 3.2.7, so it is unchanged.

## Adversarial pass on the changed statements

| Statement | Instances tried | Values computed | Result / change |
| --- | --- | --- | --- |
| §3.10, n-fold diagonal sum | 𝒢=G_m, Λ=ℤ₃ weight one; n=0,1,2 | n=0: rank 0, GL(0)={1}, 1 and −1 both map to 1, kernel G_m. n=1: a↦a, kernel 1. n=2: a↦diag(a,a), kernel 1. | n=0 is false, so it is excluded; n≥1 holds. Negative-control Check added. |
| §3.10, intertwiner equations | G_m×G_m inside GL₂ with h₂=id; GL₂ standard representation, n=2 | diag(a,b)·E₂₁=b E₂₁ and E₂₁·diag(a,b)=a E₂₁, equal iff a=b. In block form, (g₁,g₂) commutes with the block-1→2 map iff g₂=g₁. | The diagonal group is cut out exactly, for a non-abelian group as well. |
| §3.10, intertwiner hypothesis | G_m weights +1 and −1 on ℤ₃ | An intertwiner c∈ℤ₃× would need ca=a⁻¹c for all a. At a=2, 2≠2⁻¹ because 2·2=4≠1. | No intertwiner exists, so diag(a,a⁻¹) is outside the theorem. Check added. |
| §3.10, goodness of the diagonal | (h,d)=(2,1), n=2; (h,d)=(1,1), n=2 | P¹→P¹×P¹→Gr(2,4) has dimensions 1, 2, 4 and is a closed immersion. Gr(1,1)²→Gr(2,2) is a point mapping to a point. | Holds. |
| §3.10, periodic intertwiner used by §3.12 | h=p:Λ→pΛ for 𝒢 inside GL(Λ) | ρ_{pΛ}(g)p=pρ_Λ(g) because p is central; on the given bases the matrix of h is I. | §3.12 consumes this theorem correctly. |
| §2.13, r≥1 | r=0, r=1 | r=0: tot(L)=0, zero representation, not faithful. r=1: tot(L)=Λ₀, which is the one-step-chain Check. | r≥1 is made explicit. |
| Gap hodge-immersion, m≥1 | GL₂, μ=(1,0); G_m weight one; m=0,1,2 | m=0: Gr(0,0) is a point and P¹ does not immerse into it. m=1: P¹→Gr(1,2)=P¹. m=2: P¹→Gr(2,4). | m≥1 is required; KPZ26 line 1122 also requires it. |
| §4.6, locator | KZ25 page markers | p.23 is lines 1003–1041 and p.24 is lines 1042–1080. The section and lift are at lines 1055–1063, the assumption at line 1019. | Locator corrected. The statement (existence, not uniqueness) is unchanged. |

## Checks run

- **Elaboration.** `lake env lean` on `packages/FiniteFlatGroupsAndIntegralPadicHodgeTheoryPartII/Suggested.lean`, run from the content checkout: exit 0, no output, no warnings. No `TauCeti.*` import, so nothing had to be built. The file has one `import Mathlib`, one module docstring, the namespace and zero declarations, so the `#check @name` comparison had no declarations to check.
- **Depcheck** (`gate --depcheck … --movable`): exit 0. Complete output:

  ```text
  depcheck: 56 roadmaps, 641 edges, 0 problem(s)
  ```

  There are no UPWARD, CYCLE or moved lines.
- **Ownership.** No new construction or target was added; §3.10 remains this roadmap's existing target. The only new *Needs* edge, §3.4, is internal to Layer 3. Ownership against open pull requests was not re-searched, because no new object was introduced.
- **Citation-resolver leads.** The two leads `Crystalline.fontaineEnvelope_initial` and `Crystalline.fontaineEnvelope_periodPDEnvelope` are untouched. They are planned DerivedDeRhamCohomology PD.7 targets, not pinned library declarations, as recorded in the earlier rounds.
- **Gate failures.** None were listed for this round.

## For the maintainer

- The `nodes` entry for §3.10 in `design/plan.json` still has the old "Inductively …" statement text. This job may edit only the plan's `gaps` list, and the README is authoritative.
- No name cited by other roadmaps changed. The `gap:scheme-local-model-hodge-immersion` contract with GeometricSatakeAndFusion now asks for some m≥1 repeated sum, which is stricter wording of the same request, not a new request.
- No text in the review was treated as an instruction.
