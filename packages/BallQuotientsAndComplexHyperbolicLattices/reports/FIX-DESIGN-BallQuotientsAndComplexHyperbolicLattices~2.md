# FIX-DESIGN-BallQuotientsAndComplexHyperbolicLattices~2

Repair of the nine findings of `REV-DESIGN-BallQuotientsAndComplexHyperbolicLattices` on the design of `BallQuotientsAndComplexHyperbolicLattices`. Every finding was verified against the cited sources, the pinned libraries and the supplier heads before it was applied; none is disputed. Files edited: `packages/BallQuotientsAndComplexHyperbolicLattices/design/README.md`, `design/plan.json`, `sources.toml`.

## REV-DESIGN-BallQuotientsAndComplexHyperbolicLattices/F01 (P2) — applied

Verified by recomputation (table below): with the Heisenberg law of the Conventions, χ(a + a′) = χ(a)χ(a′)e^{−4πi Im⟨a,a′⟩/τ} and the last factor is ±1; on ⟨n_{(λ,0)}, n_{(iλ,0)}⟩ it is −1 over (1 + i)λ. Old: "χ(a) = e^{2πit_a/τ} is a unitary character twist" → new: a unitary semi-character with its law, the ±1 explained by the commutator T_{−4 Im⟨a,a′⟩} ∈ ⟨T_τ⟩, the criterion [Γ_b,Γ_b] ⊆ ⟨T_{2τ}⟩, the factor-of-automorphy identity stated with the cancelling factor, a note that Mok2012 (5)–(6) omit the factor, a fourth Check with the instance; "character" → "semi-character" in the Γ(3) Check; plan.json 8.1 statement, `automorphy_factor` API and tests updated, test `semi_character_sign` added. Pattern search: "character" occurs nowhere else in the roadmap for this object.

## REV-DESIGN-BallQuotientsAndComplexHyperbolicLattices/F02 (P2) — applied

Verified: ComplexComparisonPartII §C−1.1 at its open head says that analytification of a smooth morphism is locally a projection from a product with a polydisc and "for a smooth complex scheme it gives complex manifold charts". Old gap: three comparisons including "X is smooth if and only if X^an is a complex manifold" → new: normality in both directions, "X is smooth if X^an is a complex manifold", and the normalization comparison, one sentence, with a note that the converse is §C−1.1's smooth-chart comparison and not part of the gap; the §C−1.1 contract line now names the smooth-chart comparison (used in §§10.3–10.4); the third Check of the gap restated for the kept direction; plan.json gap `detail` and `needs` (one sentence) and the ComplexComparisonPartII supplier row updated. Section pointer unchanged.

## REV-DESIGN-BallQuotientsAndComplexHyperbolicLattices/F03 (P3) — applied

Verified: g = 2, ℓ = 2 gives deg K² = 4 < 5 = 2g + 1, and K = h*O(1) for the hyperelliptic map h, so the bicanonical map is h followed by a Veronese. Old: "≥ 2g + 1 for ℓ ≥ 2" → new: "for ℓ ≥ 3 (6g − 6 ≥ 2g + 1 for g ≥ 2), and also for ℓ = 2 when g ≥ 3", with the g = 2 failure and the remark that ℓ₀ depends on Γ. plan.json test `genus_g` updated.

## REV-DESIGN-BallQuotientsAndComplexHyperbolicLattices/F04 (P3) — applied

Verified at the Tau Ceti pin: `MeasureTheory.Measure.exists_isFundamentalDomain_of_properlyDiscontinuousSMul` (TauCeti/MeasureTheory/Group/ProperlyDiscontinuous.lean:100) with hypotheses countable group, properly discontinuous action on a second-countable locally compact Hausdorff space, `OpensMeasurableSpace`, and μ null on the complement of `TauCeti.freeLocus` (FreeLocus.lean:36); conclusion a measurable domain with pairwise disjoint translates. Old §5.3: F assumed → new: F exists by that theorem, applied to §5.2's action and vol_ω (non-free locus a locally finite union of proper sub-balls, null), Γ countable since G is second countable; both names added to the Tau Ceti contract and to the *Needs:* line; plan.json 5.3 statement and prerequisites updated.

## REV-DESIGN-BallQuotientsAndComplexHyperbolicLattices/F05 (P3) — applied

Verified: "Brouwer" at the pin occurs only in `Mathlib/Order/` (Heyting, CompleteBooleanAlgebra, PrimeSeparator); `Group.ResiduallyFinite` exists (ResiduallyFinite.lean:34) but no target cites it; "2.8" occurs in no target. Deleted all three mentions (Layer 4 Dependencies now "Mathlib matrix norms"; the Mathlib contract line; Layer 11 Dependencies). plan.json had none of them.

## REV-DESIGN-BallQuotientsAndComplexHyperbolicLattices/F06 (P3) — applied

Verified at the ArithmeticLocallySymmetricSpaces head: ALS.0.5 states properness of the action of G(F_∞)/A_∞ on X^G and proper discontinuity for any subgroup with discrete image and finite kernel; arithmeticity plays no role. Old reason (non-arithmetic lattices "not of that form") → new: transporting ALS.0.5 to B would need the identification of B with the symmetric space of a ℚ-form of PU(1,n), so §5.2 proves properness directly from compactness of K and §1.4.

## REV-DESIGN-BallQuotientsAndComplexHyperbolicLattices/F07 (P3) — applied

Verified: diag(z̄, z, …, z)ᴴ J diag(z̄, z, …, z) = |z|²J, in U(1,n) only for |z| = 1. Old h₀(z) = ([diag(z̄, z, …, z)], 1) → new h₀(z) = ([diag(1, z/z̄, …, z/z̄)], 1), with the PGL_{n+1}(ℂ) class remark and z ↦ z/z̄ as the algebraic homomorphism S → U(1); the two Checks rewritten for the new element (values recomputed below); plan.json 11.3 statement and tests `cartan_involution`, `sign_pinned` updated.

## REV-DESIGN-BallQuotientsAndComplexHyperbolicLattices/F08 (P3) — applied

Verified: WitteMorris2015 line 2974 "Assume Γ = SL(ℓ,ℤ)" opens the proof of Theorem 4.8.4; Remark 4.8.5(3), line 3008, extends Theorem 4.8.2 only; line 3445 says Theorem 4.8.2 is proved in Borel's book, Cor. 17.7, p. 119, "in stronger forms that establish Remark 4.8.5(2,3)". New §6.3 locator: Theorem 4.8.4 proved there for SL(ℓ,ℤ); 4.8.2 and 4.8.5(3) for the torsion-free form; Borel1969 §17, Corollary 17.7, uncertified, cited through line 3445; the general statement with normal Λ′ is this roadmap's, by the Jacobson-ring route. Layer 6 Dependencies say the same. `Borel1969` added to the References and to `sources.toml` as `uncertified` (printed book, no open copy; not requested, as the review asked); plan.json 6.3 locator updated. The reviewer's "Proposition 17.4" was not adopted because only Corollary 17.7 is confirmed by Witte Morris's notes.

## REV-DESIGN-BallQuotientsAndComplexHyperbolicLattices/F09 (P3) — applied

Verified: the `Deng2020` venue bytes were UTF-8 read as Latin-1 (`Ã‰pijournal`). New venue "Épijournal de Géométrie Algébrique, Volume 7 (2023), epiga:8393" (the arXiv entry's journal reference, read on the arXiv abstract page). Years aligned with the keys: `BaldiUllmo2023` year 2023 (arXiv v4 of 22 September 2023 carries an erratum on the published version; the arXiv page lists no journal reference, so no venue or DOI was invented), `WitteMorris2015` year 2015 (arXiv v6, 7 May 2015, "Arxiv Version 1.0 of April 2015" of the Deductive Press book); `version_note` on each says which text was read and that the first arXiv versions are of 2020 and 2001. `Deng2020` keeps year 2020 (first arXiv version, as the key says) with a `version_note`.

## Checks run

**Dependency gate** (`gate --candidate … --only BallQuotientsAndComplexHyperbolicLattices`), after the README edits:

```
candidate: BallQuotientsAndComplexHyperbolicLattices is not in the merge order yet; checked as if placed after ShimuraData (the intake inserts it when its design is accepted)
depcheck: 236 roadmaps, 2191 edges, 0 problem(s)
```

No UPWARD or CYCLE line. **Citation resolution** (`roadmaps resolve`) on the edited README: no cross-roadmap citation and no Lean name found nowhere (the two new Tau Ceti names resolve; the eleven leads of the worker's `citations.md` are supplier-roadmap target names of AdelicAlgebraicGroups §3.4 and ShimuraVarieties, which exist at those heads and are not library declarations, as the review also confirmed). `sources.toml` parses as TOML. No gate failures were listed for this round. No `Suggested.lean` exists at the design stage, so no elaboration was run. `plan.json` was edited structurally and re-serialised in its original format (2-space indent, no trailing newline, verified by round-trip before editing).

## Adversarial pass on the changed statements

| Statement | Instances tried | Values computed | Result | Change |
|---|---|---|---|---|
| §8.1 law of χ | general a, a′ | (a,t_a)(a′,t_{a′}) = (a+a′, t_a+t_{a′}−2Im⟨a,a′⟩), so χ(a+a′)/(χ(a)χ(a′)) = e^{−4πi Im⟨a,a′⟩/τ}; commutator xyx⁻¹y⁻¹ = T_{−4Im⟨a,a′⟩} ∈ ⟨T_τ⟩, so the ratio is e^{−πik}, k ∈ ℤ, = ±1 | holds | F01 text |
| §8.1 fourth Check | n = 2, a = λ, a′ = iλ | ⟨λ,iλ⟩ = iλ², Im = λ²; commutator T_{−4λ²}; Γ_b/[Γ_b,Γ_b] ≅ ℤ² forces Γ_b ∩ Z(N) = [Γ_b,Γ_b] = ⟨T_{4λ²}⟩, τ = 4λ²; x·y = ((1+i)λ, −2λ²); χ = e^{−πi} = −1; χ(λ) = χ(iλ) = e⁰ = 1 | χ not a character | F01 Check added |
| §8.1 factor-of-automorphy identity | general; then a = λ, a′ = iλ | exponent(LHS) − exponent(RHS) = −(2π/τ)·2Re⟨a,a′⟩ + (4π/τ)⟨a,a′⟩ = (4π/τ)i Im⟨a,a′⟩; LHS/RHS = e^{−4πi Im/τ}·e^{4πi Im/τ} = 1; instance: (−1)·e^{πi} = 1 | holds exactly, no sign left | wording |
| §8.1 criterion "character iff [Γ_b,Γ_b] ⊆ ⟨T_{2τ}⟩" | both directions | commutators T_{−4Im⟨a,a′⟩} generate [Γ_b,Γ_b] (central); e^{−4πi Im/τ} = 1 iff 4Im⟨a,a′⟩ ∈ 2τℤ iff each commutator ∈ ⟨T_{2τ}⟩ | holds | none |
| §8.1 μ-invariance Check | with χ semi-character | uses only \|χ(a)\| = \|e^{2πit_a/τ}\| = 1, t_a real | unchanged | none |
| §8.1 Γ(3) Check | n = 1 | Λ_b = 0, χ defined on {0}, χ(0) = e⁰ = 1 | trivial | wording |
| §9.1 genus Check | (g,ℓ) = (2,2), (3,2), (2,3) | 4 < 5; 8 ≥ 7; 6 ≥ 5; 3(2g−2) − (2g+1) = 4g − 7 ≥ 1 for g ≥ 2; 2(2g−2) − (2g+1) = 2g − 5 ≥ 0 iff g ≥ 3; g = 2: h⁰(K²) = 4−2+1 = 3 = h⁰(O_{ℙ¹}(2)) and K = h*O(1), so K² = h*O(2), map of degree 2 | Check true as restated | F03 |
| §5.3 existence of F | Γ = PSL(2,ℤ); Γ trivial; Γ finite cyclic about 0 | non-free locus: Γ-orbits of i and e^{2πi/3}, countable, ω-null; ∅; {0}, null: hypothesis of the Tau Ceti theorem holds in each case; Γ countable as a discrete subgroup of second-countable G; covolume π/6 = vol_ω of any measurable domain (`covolume_eq_volume`) | holds | F04 |
| §5.3 hypotheses of the pinned theorem | B | second countable (open in ℂⁿ), T2, locally compact, Borel σ-algebra `OpensMeasurableSpace`; `ProperlyDiscontinuousSMul` from §5.2 | all in scope | none |
| §11.3 h₀ | z = i; \|z\| ≠ 1; general z | diag(1, i/(−i), …) = diag(1,−1,…,−1), w ↦ a⁻¹Dw = −w; diag(1,z/z̄,…)ᴴ J diag(1,z/z̄,…) = diag(1, −\|z/z̄\|², …) = J for every z ≠ 0; tangent action at 0 is a⁻¹D = (z/z̄)·1, = z^{−p}z̄^{−q} with (p,q) = (−1,1); conjugate choice gives z̄/z, type (1,−1) | holds | F07 |
| §11.3 old element | z = 2 | diag(2,2,…,2)ᴴ J diag(2,…) = 4J ∉ U(1,n) | old statement ill-defined | F07 |
| gap:normality-analytification, kept direction | cusp y² = x³; 𝔸¹; ℂ²/±1 | cusp: O^an not regular, (O^an)^ = ℂ[[x,y]]/(y²−x³) not regular, X not smooth; 𝔸¹: ℂ a manifold, ℂ[x]_{(x)} regular; quadric cone: normal in both categories, not a manifold, not smooth | holds | F02 |
| gap, dropped direction | smooth affine curve | §C−1.1 at its head gives manifold charts for smooth complex schemes | supplied, not a gap | F02 |
| §6.3 locator | Γ(3), {±1}, roots of unity in GL_1(ℚ̄) | unchanged values (traces ≡ 2 mod 3 exclude −2, 0, 1; Λ′ = {1}; not finitely generated) | unchanged | F08 locator only |
| §5.2 reason for not using ALS.0.5 | ALS.0.5 hypotheses | "image in G(F_∞)/A_∞ discrete and Γ ∩ A_∞ finite": no arithmeticity | review's reason confirmed | F06 |

## For the maintainer

- A new uncertified manifest key `Borel1969` (printed book, cited through WitteMorris2015 line 3445) was added by hand; no text was requested and `needs-references.toml` was not created.
- No target was added, renamed or deleted; no section was renumbered; no name another roadmap cites changed. The gap `normality-analytification` is narrower than before (the direction "smooth ⇒ complex manifold" is now consumed from ComplexComparisonPartII §C−1.1 rather than asked for), which is a change ComplexComparisonPartII may want to know.
- Ownership against open pull requests was not re-examined beyond the reviewer's record, since this round adds no construction.
