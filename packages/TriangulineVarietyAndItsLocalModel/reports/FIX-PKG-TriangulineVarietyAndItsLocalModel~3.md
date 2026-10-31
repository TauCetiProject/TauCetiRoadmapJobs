# FIX-PKG-TriangulineVarietyAndItsLocalModel~3

Repair of the five findings of the package review of `packages/TriangulineVarietyAndItsLocalModel` (review REV-PKG-TriangulineVarietyAndItsLocalModel~2). Files changed: `README.md`, `Suggested.lean` (module docstring only), `sources.toml`, `design/plan.json` (top-level `gaps` only).

## F01 (P2) — applied

Old: §§4.6–4.7 stated the nontrianguline φ,Γ-stable-subspace lemma and P(∇)-injectivity, with gaps `polynomial-connection-finiteness` and `rank-one-saturation`, the PadicDifferentialEquationsAndRigidCohomology contract, a Layer 4 Example sentence, a summary clause and two Lean docstring bullets. New: all deleted. Scope names PadicLocalLanglandsForGL2QpPartII GR.1/nontrianguline-differential-control as owner. DLB17 leaves References and the manifest.

Evidence and details.

- The overlap is real. The design README of PadicLocalLanglandsForGL2QpPartII, read at its board head 3e0777d (it lives at `packages/PadicLocalLanglandsForGL2QpPartII/design/README.md`, which explains the reviewer's 404 at `packages/<Name>/README.md`), states at line 222 the target `nontrianguline-differential-control`: for absolutely irreducible two-dimensional de Rham nontrianguline V, every nonzero P(∇) is injective on D_rig(V) and ∂=t⁻¹∇ is bijective on N_rig(V). Its proof step 1 (line 230) is this roadmap's former §4.6 argument. It is consumed there by `GR.1/kirillov-model` (line 329) and a GR.2 target (line 472). In this roadmap only §4.7's `*Needs:*` line named §4.6, and nothing named §4.7. The source belongs to the Drinfeld-tower roadmap, so this roadmap is not the owner.
- Pattern. `gap:rank-one-saturation` (Colmez08 Lemma 3.2) was used only by §4.6's `*Needs:*` line, so it goes too, from the README and from `design/plan.json`'s `gaps`. PadicDifferentialEquationsAndRigidCohomology appeared only in §4.7, the Layer 4 Dependencies and its own contract, so the contract section is deleted. PhiGammaModulesAndIwasawaCohomology §7.4 and §§7.1–7.8 left the Layer 4 Dependencies line, which is now exactly the union of the `*Needs:*` lines of §§4.1–4.5. The Layer 4 introduction no longer announces the rank-two application. It now says "strictness and noncriticality inputs", because no Layer 4 target gives a tangent input (that is ModularityAndLanglandsExtensions §4.3).
- Sources. DLB17 is cited nowhere after the deletion, so it is removed from References and `sources.toml`. Colmez08 stays because §4.5 cites Definition 4.1 and Proposition 4.3 (Colmez08 line 944). Its manifest locator drops "Lemma 3.2 and Definition 3.4, p. 231", and `cited_for` becomes §4.5.
- `design/plan.json` `gaps` now has 12 slugs. Each `needs` sentence appears verbatim in the README's "What <Supplier> must provide (gap:<slug>)" line, with the same supplier (checked mechanically), and each slug is used by at least one `*Needs:*` line.

## F02 (P3) — applied

Old: contracts for PadicFunctionalAnalysis, PadicMeasuresIwasawaAlgebras and a broad ModularityAndLanglandsExtensions §4.3 list, none named in a `*Needs:*` line. New: the first two are deleted, and the principal-subgroup clause (1+pℤₚ for p odd, 1+4ℤ₂ for p=2) moves into the PhiGamma §4.0 paragraph. The ModularityAndLanglandsExtensions contract is trimmed to the NT-ordered condition, now in §4.1's `*Needs:*` line and the Layer 4 Dependencies.

Details.

- ModularityAndLanglandsExtensions §4.3, read at the head of its open pull request, states the condition "δ_i/δ_j not a nonnegative embedding monomial for i<j", with the Check "Equal parameters have excluded ratio 1". The trimmed contract states exactly this, plus an ordered two-term witness (n=2: δ₁/δ₂=τ excluded, δ₁/δ₂=τ⁻¹ allowed) and the a=0 case. The Scope bullet now says that §4.3 owns the condition, which §4.1 consumes, together with the deformation functors, unframed ring, H¹_g tangent inclusion and admissible-cover density, which no target here uses.
- PhiGammaModulesAndIwasawaCohomology §4.0, read at the head of its open pull request, itself consumes the PadicMeasuresIwasawaAlgebras/PadicFunctionalAnalysis ℤₚ× objects. So this roadmap needs no direct contract with either. Scope keeps its existing sentence that PadicMeasuresIwasawaAlgebras §3a.1 builds no rigid structure.
- Pattern, checked mechanically: every `### From TauCetiRoadmap.X` contract is now named by some `*Needs:*` line. LocallyAnalyticRepresentationsOfLocalGroups is reached through its gaps `constituent-conventions` and `all-constituent-triangularity`. Of the eight Mathlib contract declarations, `AlgebraicGeometry.AlgebraicCycle` was named by no `*Needs:*` line. §9.1 constructs the cycles Z_v^wt and C_v^wt in the integer cycle group of Spec of the completed ring, so §9.1's `*Needs:*` line and the Layer 9 Dependencies now name it. The contract now adds that its body (`Function.locallyFinsupp X R`, line 44) has no codimension grading, so the codimension is imposed separately.

## F03 (P3) — applied

Old (§8.2): "For x with algebraic unit weight". New: "For x=(r,δ) whose unit restriction ω(x)=`delta|_((O_K^*)^n)` is an algebraic character". Condition (iii) reads "ω(x′)=δ_(k′)", δ_(k′) defined inline (BHSsmooth17 line 255). Locator 2931→2939, where the definition begins. Pattern: in the §8.4 heading and proof, "algebraic-weight point(s)" becomes "unit restriction is algebraic".

Evidence: BHS19 lines 2937–2944 define δ₀ algebraic as the restriction to O_K× of an algebraic character of K×, and Definition 4.1.3 assumes ω(x) algebraic. The pattern search found "algebraic unit restrictions z^(k_i)" in §8.3's proof (correct as written) and no other occurrence of the ambiguous wording.

## F04 (P3) — applied differently

The sentence ("nontriangulinity is meant after every finite extension of coefficients, as in Colmez's definition") was deleted with §4.6 under F01, so it was not reworded. The review's reading is correct: Colmez08 line 944 (Definition 4.1) has no scalar extension, and the extension is DLB17's usage (DLB17 line 1255). Pattern search: no other passage of the README attributes coefficient extension to Colmez's definition.

## F05 (P3) — applied

Old: `Module.length` "line 31" and `AlgebraicGeometry.AlgebraicCycle` "line 45". New: "line 30" and "line 44". Checked at the pinned Mathlib 6b7abb3c7686292736be2955bd3eb9ebf63b456a: `def Module.length : ℕ∞ :=` is at Mathlib/RingTheory/Length.lean:30 and `abbrev AlgebraicCycle (X : Scheme.{u}) (R : Type*) [Zero R] :=` at Mathlib/AlgebraicGeometry/AlgebraicCycle/Basic.lean:44. The other six locators were re-checked: Prod.lean:95, Range.lean:57, Ker.lean:59, FiniteDimensional/Lemmas.lean:173 and 53, AdicCompletion/Basic.lean:171.

## Checks

- **Lean.** `lake env lean packages/TriangulineVarietyAndItsLocalModel/Suggested.lean`, run from the content checkout: exit 0, no output, 2.8 s. The file has only `import Mathlib`, one module docstring and an empty namespace. With no declarations there is nothing for the `#check @name` comparison or the one-tactic probe to check, so no scratch file was elaborated for them. The two Layer 4 "not statable" bullets left with their targets. No `TauCeti.*` import, so nothing needed building. No Lean process left running.
- **Dependency direction** (prescribed command, after the last edit):

```text
depcheck: 56 roadmaps, 642 edges, 0 problem(s)
```

  Exit 0; no UPWARD, CYCLE or moved line. The same command on the pre-edit README gives 56 roadmaps and 643 edges. The roadmap total differs from the review's 52 because the board state differs.
- **Citations.** `roadmaps resolve packages/TriangulineVarietyAndItsLocalModel/README.md`: no cross-roadmap citation and no Lean name found nowhere. The new Scope citation PadicLocalLanglandsForGL2QpPartII GR.1/nontrianguline-differential-control was checked by hand at that design's board head 3e0777d (design README lines 220–236), since the resolver does not index board designs.
- **Ownership.** `roadmaps grep -i 'non-?trianguline'` over main and the open heads finds three things:
  - PadicDifferentialEquationsAndRigidCohomology §RD.2.43, whose proof sketch, step 4, records DLB Lemma 6.3 and Proposition 6.4 as an application, not as a target;
  - PhiGammaModulesAndIwasawaCohomology's different ψ-cokernel vanishing statement;
  - a mention in PadicLocalLanglandsForGL2Qp's Lean docstring.

  The only target-level owner is the board design named above.
- **Sources.** No new text was needed and no `needs-references.toml` entry was written. The manifest now has seven entries, matching the seven References.

## Adversarial pass on changed or added statements

| Statement | Instances | Values computed | Result | Change |
|---|---|---|---|---|
| ModularityAndLanglandsExtensions contract: NT-regular condition | n=1; n=2, d=1 with δ₁/δ₂=x and x⁻¹; a=0; d=2 with δ₁/δ₂=τ₁τ₂⁻¹ | vacuous; x excluded, x⁻¹ allowed; ratio 1 excluded, so R⊕R is not NT-regular; mixed signs not a nonnegative monomial, so allowed | sound | witness added |
| Same condition against §4.2's H⁰ argument | R(δ) with δ=x^(−k), k≥0 | t^k is invariant in R(x^(−k)): φ(t^k)=p^k t^k against δ(p)=p^(−k), and γ(t^k)=χ(γ)^k t^k against χ(γ)^(−k); so H⁰(R(δ))≠0 iff δ=∏τ^(−a), a≥0, i.e. δ_(i+1)/δ_j=∏τ^a, which NT-regularity excludes for i+1<j | consistent | none |
| §8.2 hypothesis "ω(x) algebraic" | δ=z^k·unr(α); δ=χ ramified of finite order over ℚₚ, p odd, χ of order p−1 on μ_(p−1); K=ℚ₂, χ the sign character | ω=z^k\|O×, algebraic: in scope. wt(χ)=0 but χ\|O×≠1, and an algebraic x^a restricted to 1+pℤₚ is torsion-free unless a=0, so χ\|O× is not algebraic: excluded. Sign character: wt 0, value −1 at −1, not algebraic: excluded | sound; matches BHS19 line 2939 and §8.3's last Check | wording fixed |
| §8.2 condition (iii) with δ_(k′) | n=1, k′=(1), one τ; n=2, d=1, k′=(5,1), C=3 | δ_(k′)=τ on O_K×; 5−1=4>3 passes, C=4 fails (strict) | sound; matches BHSsmooth17 lines 255–262 | definition inlined |
| §8.4 heading and proof wording | same instances as §8.2 | the hypothesis equals the §8.4 statement line (`delta\|_((O_K^*)^n)` algebraic) | consistent | wording only |
| PhiGamma §4.0 principal subgroup clause | p=2, 3, 5 | ℤ₂×={±1}×(1+4ℤ₂), 2 components; ℤ₃×={±1}×(1+3ℤ₃), 2; ℤ₅×=μ₄×(1+5ℤ₅), 4; 1+2ℤ₂ contains −1, so it is not torsion-free and cannot be the disc coordinate | sound; consistent with the K=ℚ₂ sentence (two sign components, dim W=1) | clause added |
| Mathlib `AlgebraicGeometry.AlgebraicCycle` contract | X=Spec E[[x]] | the function with value 1 at the generic point and 1 at the closed point is locally finitely supported, hence a cycle of mixed dimension | codimension must be imposed separately, as now stated | sentence added |
| Mathlib `Module.length` contract | ℚ as a ℤ-module; E as an E-module | length ⊤ (infinite chain ℤ-submodules 2⁻ᵏℤ); length 1 | "finiteness before integer conversion" needed | line number only |
| Scope bullet (PadicLocalLanglandsForGL2QpPartII owner) | trianguline unit line R | ∇(1)=0, so P=X has kernel E≠0 | the nontrianguline hypothesis is essential; the bullet states the owner's target with de Rham and absolute irreducibility as at its head | added |
| Summary and Layer 4 introduction | §§4.1–4.5 contents | §4.2 strictness; §§4.3–4.5 noncriticality criteria; no tangent target in Layer 4 | accurate | reworded |
| Layer 4 Dependencies | union of the `*Needs:*` lines of §§4.1–4.5 | {MALE §4.3, PG §7.5, §7.2, §4.0, §7.3, PHT §4.3, §5.2} | equal to the line | rewritten |

## Notes for the maintainer

- **Consequence for PadicLocalLanglandsForGL2QpPartII.** Its target GR.1/nontrianguline-differential-control is now the only plan of DLB17 Lemma 6.3 in the library.
  - It assumes de Rham for both assertions. DLB17 Lemma 6.3 (DLB17 line 1250) needs only absolute irreducibility, dimension two and nontriangulinity; de Rham enters only in Proposition 6.4 (DLB17 line 1259). That design should state P(∇)-injectivity without the de Rham hypothesis, so as not to narrow below the source.
  - Its gap G2 must keep the finiteness of ker P(∇), which DLB17 line 1253 cites from outside.
  - The intake should flag both to that design's next repair.
- **`design/plan.json` nodes.** This job may edit only `gaps`, so the nodes still record the deleted targets (for example `TriangulineVarietyAndItsLocalModel:N/polynomial-connection-kernel`), and the plan's `sources` list still records DLB17. The README is the roadmap. No roadmap on main or at an open head cites §§4.6–4.7 or either deleted gap.
- No Lean name changed or was added. The Lean file changed only in its docstring.
- Ownership against open pull requests was checked with the roadmap service (`roadmaps grep`) and by reading ModularityAndLanglandsExtensions, PhiGammaModulesAndIwasawaCohomology and PadicDifferentialEquationsAndRigidCohomology at their open heads. Board designs were checked only for PadicLocalLanglandsForGL2QpPartII.
- The review text contained no instruction-like passage.
