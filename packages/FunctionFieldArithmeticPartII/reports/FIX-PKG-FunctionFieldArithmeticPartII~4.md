# FunctionFieldArithmeticPartII repair report

## F01 (P1) — applied

“u_i^(i+1)≠f” → “u_i^((i+1)!) = f” (image of f) at all thirteen sites (§§3.186, 3.215–3.216, 3.240–3.243, 3.293–3.294, 3.308, 3.325–3.327). §3.375: “((n+1)!/n)/(n+1)≠1/n” → u_n^((n+1)!/n) with ((n+1)!/n)/(n+1)! = 1/n, n>0. Worked example: orders 6! = 720 and 5! = 120. Added i=0 and i=2 negative-control Checks to §3.64 and a Conventions witness.

## F02 (P2) — applied

§7.26 “Rank-one lisse descent” → “Finite-rank lisse descent”: locally free lattices of locally constant finite rank (zero allowed), all O_E-linear maps, reduction before localization, dictionary to finite free O_E- and finite-dimensional E-representations, pullback/restriction compatibility, rank-one specialization kept. API now bulleted. §7.3 and its consumers cite the finite-rank API. Added the J=[[1,1],[0,1]] and rank-zero Checks.

## F03 (P3) — applied

§1.18 deleted. Its one consumer, §1.40, now needs `AdjoinRoot.finitePresentation` (Mathlib/RingTheory/AdjoinRoot.lean:158) directly. The instance is listed under Scope and ownership and From Mathlib, valid for every n (D=B[T]/(1−u) at n=0) and the zero ring. The FramedRoot manifest `cited_for` now reads §1.15–1.17. Nothing added to Suggested.lean.

## F04 (P3) — applied

§3.284: generic bullets → T(e_[1/3]⊗v_2)=e_[1/3]⊗u_1, T⁻¹(e_[1/2]⊗u_2)=e_[1/2]⊗v_6, the sum with e_[0]⊗1, and the zero ring kept. §3.308: ℂ-valued action values −1 and ζ₆ against 1,1 for the trivial action; the product law at ζ₆²; the universal 𝔽₂ difference (h_1−1)⊗u_1≠0. Same object, §3.186: shows the ZMod4 Check cannot tell the action from the trivial one, and adds the ℂ computation.

## F05 (P3) — applied

21 × “line 1383 — Stacks Project §26.17, Lemma26.17.2 (tag01JO)” → “line 1410 — Stacks Project §26.17, Lemma 26.17.2 (tag 01JQ), printed p.31”. The manifest key and the section links to 01JO are kept. Same pattern: §7.2 cited Karoubian categories (tag 09SF) through the fundamental-groups text at line 3249. It now cites new key STACKS-KAROUBIAN line 259, Lemma 12.4.2 (tag 09SH), pp.6–7.

## F06 (P3) — applied

§3.8 Check “𝔽₃(t_3^4)=e_[1]” → “F₃:B₃→ₐ[A]A[ℤ/3] sends t₃⁴ to e_[4]=e_[1] for every A (e.g. ℤ, 𝔽₃)”, with the t₃↦e_[0] non-example. §7.5: deleted “these are private signature models, not replacements”; the route simply cites the pinned exterior maps. No other field-symbol slip was found by searching for `𝔽ₙ(`.

## Evidence read

| Input | Read at | Conclusion |
| --- | --- | --- |
| Factorial convention | README Conventions, §3.5 (“d_i=(i+1)!”), §3.64, §3.252 (E(v_n)=u_i^(d_i/n)), §3.361 (η_f(u_i^k)=e_[k/d_i]⊗u_i^k) | The thirteen sites, §3.375 and the worked example contradicted the package's own convention; repaired to it. |
| Stacks 01JO/01JQ | NormalizationThree-codex-rtOQ9t lines 1383 (section 01JO), 1387 (Definition 26.17.1, 01JP), 1410 (Lemma 26.17.2, 01JQ), page marker 1385 (p.31) | Lemma tag is 01JQ. |
| Stacks 09SF/09SH | STACKS-KAROUBIAN lines 252–263 (Section 12.4, Definition 12.4.1 09SG, Lemma 12.4.2 09SH; page markers 222 and 264) | Splitting characterization is Lemma 12.4.2(3). The old STACKS line 3249 is the tame-ramification section of the fundamental-groups chapter. |
| Other lemma tags in the README | STACKS lines 3290 (0H2W), 3334 (0EYG), 3320 (0EYF), 2524 (0BMB); Stacks-finite-root-projections line 51 (01YX); the shared étale-cohomology text of STACKS-KUMMER, line 1505 (040Q, cited in §3.12) | All agree with their lemma numbers; no change. |
| `AdjoinRoot.finitePresentation` | Mathlib/RingTheory/AdjoinRoot.lean:158 at the pin: `[CommRing S] [Algebra S R] [FinitePresentation S R] : FinitePresentation S (AdjoinRoot f)` | With S=R=B it is exactly the deleted §1.18. |
| §1.40 inputs | Mathlib/AlgebraicGeometry/Morphisms/FinitePresentation.lean:67 `LocallyOfFinitePresentation.SpecMap_iff`; Mathlib/RingTheory/FinitePresentation.lean:395 `RingHom.finitePresentation_algebraMap` | §1.40 is a two-lemma translation plus the instance, not a bare instance; kept. |
| Exterior maps | Mathlib/LinearAlgebra/ExteriorPower/Pairing.lean:29 `exteriorPower.toTensorPower`; TauCeti/LinearAlgebra/ExteriorPower/Basic.lean:170 `exteriorPower.fromTensorPower` | §7.5's attribution is correct; only the process clause was deleted. |
| DeligneWeightsAndPurity §8.24 (open new-roadmap head) | `dmStack_etaleCohomology` and its atlas/refinement/pullback/Frobenius API | Supplies the rational constructible DM category, not a representation dictionary in any rank. The finite-rank dictionary stays a local target. |

## Adversarial mathematics pass

| Statement | Instances | Values computed | Result / change |
| --- | --- | --- | --- |
| Factorial root relation u_i^((i+1)!)=f (13 sites, Conventions, §3.64) | i=0, A=ℤ, f=2; i=2, A=ℤ, f=2; i=1, A=𝔽₂, f=0; zero ring | u_0=2, u_0¹=2 ✓; u_2⁶=2, u_2³ has coordinates (0,0,0,1,0,0) ≠ (2,0,…,0); u_1²=0 with u_1≠0; 0=0 | Equality restored; old inequality false at i=0 and in the zero ring. |
| ι_2 injective (used in the i=2 Check) | B_n→B_N, T↦T^(N/n) | basis T^k (k<n) ↦ T^(kN/n), distinct exponents < N | Basis to part of a basis, so injective over every A. |
| §3.375 character of ε_n(t_n) | n=1,2,3,4; zero ring | (2/1)/2=1≡0; (6/2)/6=1/2; (24/3)/24=1/3; (120/4)/120=1/4; zero ring 0=0 | At n=1 ε_1(t_1)=f has character e_[0], matching coefficient coinvariance. n=0 excluded by positivity (0∤ and 1!/0 is junk). |
| Worked example, factorial restriction | t^720=s | (t^144)^5=t^720; (t^6)^120=t^720; (t^6)^24=t^144; 6·24=144 | Orders 720 and 120 restored; old “sixth root” gave 2^120. |
| §3.284 T(e_[1/3]⊗v_2) | A=ℤ, f=2 | E(v_2)=u_1^(2/2)=u_1; level-for-exponent model gives u_2, and u_1=u_2³≠u_2 | Rejects the indexing model. |
| §3.284 T⁻¹(e_[1/2]⊗u_2) | d_2=6 | E(v_6)=u_2; coaction model gives e_[1/2]·e_[1/6]=e_[2/3] | Rejects the coaction-applied model. |
| §3.284 unit and sum | e_[1/3]⊗v_2+e_[0]⊗1 | ↦ e_[1/3]⊗u_1+e_[0]⊗1 | Coefficients 1,1 retained. |
| §3.308 action values | A=ℤ, B=ℂ, f=1, g(h_i)=exp(2πi/d_i), x≡1 | coherence exp(2πi/d_j)^(d_j/d_i)=exp(2πi/d_i); (g•x)(u_1)=−1, (g•x)(u_2)=(1+√3i)/2; trivial action 1,1 | Trivial action satisfies both laws but fails these values. |
| §3.308 product law | same | (g*g)(h_2)=g(h_2)² since Δh_i=h_i⊗h_i (README §§3.208 and 3.279); ζ₆·ζ₆=(−1+√3i)/2 on both sides | Agrees. |
| §3.308 universal char-2 point | A=𝔽₂, f=0, B=H_A⊗C_A(0) | ρ_f(u_1)=h_1⊗u_1; (h_1−1)⊗u_1≠0 in a tensor of 𝔽₂-vector spaces with h_1−1≠0, u_1≠0; every 𝔽₂-point sends h_1 to 1 since (h_1−1)²=0 | Infinitesimal action detected only universally. |
| §3.186 ZMod4 Check | A=B=ℤ/4, f=0 | unity values {1,3}, root values {0,2}; 3·2=2, 1·2=2 | Check does not discriminate; stated, ℂ Check added. |
| §3.8 F₃ | A=ℤ, A=𝔽₃, A=0 | e_[1]⁴=e_[4]=e_[1]; t₃↦e_[0] model gives e_[0]; zero ring 0=0 | Map, not field. |
| §1.18 deletion (instance) | B=ℤ/4,u=3,n=2; n=0,u=1; n=0,u=3 in ℤ/4; B=0 | one generator, one relation; B[T]; B[T]/(1−3)=(ℤ/2)[T]; 0 | All finitely presented. The README's n=0 phrase corrected to D=B[T]/(1−u). |
| §7.26 finite-rank dictionary | Frobenius ↦ J=[[1,1],[0,1]] on ℤ₃², ℙ¹_𝔽₅ | Jⁿ=[[1,n],[0,1]]; order 3 mod 3, 9 mod 9, infinite over ℚ₃; commutant {[[a,b],[0,a]]}, dim 2; invariant lines: only ⟨e₁⟩ | In the domain; not a sum of rank-one objects; scalar test insufficient. |
| §7.26 continuity of J | Ẑ→GL₂(ℤ₃), n↦Jⁿ | factors through Ẑ→ℤ₃, n↦[[1,n],[0,1]] | Continuous. |
| §7.26 rank zero, disconnected, empty | zero lattice; Spec 𝔽₅⊔Spec 𝔽₂₅ with ranks 1,0; 𝒳=∅ | zero representation; locally constant rank; ∅ outside the connected-nonempty clause | Domain includes rank zero; dictionary stated only for connected nonempty 𝒳. |
| §7.26 lattice existence | continuous ρ:π₁→GL_n(E) | image compact, so the O_E-span of ρ(π₁)·O_Eⁿ is a finitely generated stable lattice | Rational category = continuous E-reps. |
| §7.26 Hom under localization | lattices L, L′ | Hom_O(L,L′)⊗E = Hom_E(L_E,L′_E)^(π₁) | Fully faithful after localization. |
| §7.26 full faithfulness on dense open | π₁(U)↠π₁(𝒳) | invariants of Hom_E(V,W) under the same image | Equal in every rank; nodal-cubic nonnormal control kept in supplier contract. |
| §7.26 retained Checks | ×3 / ×2 on ℤ₃; Frobenius 4; Bμ₂; unit scalar | ×3→0 mod 3, ×2→2; 4≡1 mod 3, 4³=64≡1 mod 9; invariants 1/0; scalar 1 vs 2 | Unchanged values, still correct. |
| §7.3 finite rank | R=∅, ℙ¹_𝔽₅, J | as above; restriction to nonempty open keeps End of dim 2 | Domain example added; statement not narrowed. |
| §7.2 Karoubian citation | Lemma 12.4.2(3) | idempotent p gives z=x⊕y with p the projection to y | Supports the stated splitting. |

## Required checks

- `lake env lean packages/FunctionFieldArithmeticPartII/Suggested.lean`, run from the pinned content checkout: exit 0. The only output is the two expected `declaration uses sorry` warnings, at lines 79 and 86. No `TauCeti.*` import, so nothing was built.
- Signature check: a scratch file appended `#check @…` for all five declarations (`rootChart`, `rootChartCoaction`, `rootChartComparison`, `rootChartComparison_injective_iff`, `rootChartComparison_surjective_iff`) and was elaborated once. All keep `A`, `[CommRing A]`, `f` and `n`; both headlines keep `0 < n`. Suggested.lean is unchanged this round, since no finding touches a Lean statement.
- Depcheck output:

```text
depcheck: 56 roadmaps, 637 edges, 0 problem(s)
```

  No UPWARD, CYCLE or moved line.
- `roadmaps resolve` on the README: no cross-roadmap citation and no TauCetiRoadmap Lean name found nowhere. `AdjoinRoot.finitePresentation` was checked by hand at the pin.
- Sources: one new manifest entry, STACKS-KAROUBIAN (Stacks tag 09SF, open-repository, certified), fetched through the sources service. The service also reordered keys within existing entries. A semantic comparison of the manifest shows only three content changes: the new entry, FramedRoot `cited_for` §1.15–1.18 → §1.15–1.17, and STACKS `cited_for` §7.2–7.3 → §7.3. No `needs-references.toml` was written.
- No gate failures were listed for this round.
- Worker check repair: the manifest entry for source 39 (STACKS-KAROUBIAN) had no `authors`, `title` or `year`. It now has `authors = "The Stacks Project Authors"`, `title = "The Stacks Project, Homological Algebra"` (the chapter of tag 09SF; tag 00ZU, at STACKS-KAROUBIAN line 5) and `year = 2026`. These follow the other Stacks entries. Nothing else changed. The manifest parses, and all 39 entries have `id`, `authors`, `title`, `year`, `locator_scheme`, `locator` and `cited_for`.

## Ownership

Searched for a finite-rank ℓ-adic lisse-sheaf/π₁ dictionary on Deligne–Mumford stacks:

- in the roadmaps on main and every open roadmap pull request, with `roadmaps grep`;
- in the board packages, by grep.

The only lisse categories on stacks are the v-stack ones in VStackSheavesAndLisseCategories, a different carrier. DeligneWeightsAndPurity §8.24 gives the coefficient category only. So §7.26 stays owned here: it was already owned in rank one, and it is extended rather than moved. No new supplier gap; plan.json is unchanged.

## Maintainer notes

- §1.18 is deleted and its number is left unused, as §§3.87 and 3.102 were before. design/plan.json still describes §1.18 and the rank-one §7.26 in its node list, but this job may edit only that file's `gaps` list.
- §7.26 is renamed “Finite-rank lisse descent and finite-cover monodromy”. Within the README, §§7.3, 7.4, 7.7, 7.16, 7.22, 7.24, 7.25 and the two supplier-contract paragraphs were updated. No other roadmap cites §7.26 by name.
- No Lean name changed.
