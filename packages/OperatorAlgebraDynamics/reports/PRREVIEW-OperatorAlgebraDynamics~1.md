# Review of OperatorAlgebraDynamics (pull request #1097 at 0096307)

**Verdict:** needs changes

This pull request revises a roadmap that is on main. The gate at this head fails its dependency check (two UPWARD lines), so the folder cannot be accepted at this head whatever else holds; three further blocking findings concern ownership (the Segal-field adapter is claimed by three open heads, Nelson's criterion is re-planned) and a definition in `Suggested.lean` whose data rests on a `sorry`. The mathematics I could verify against readable sources (Williams draft 3.1, Muhly–Williams, Sims–Williams, Takeishi, Sims's notes) and by computation is sound; the Bratteli–Robinson and Renault locators are paywalled and are listed under *Not verifiable*.

## R01 (P2) — Gate: two UPWARD supplier edges from a roadmap on main

Location: `TauCetiRoadmap/OperatorAlgebraDynamics/README.md` lines 45 ("[HilbertModules H1–H4] supplies adjointable operators, interior tensor products, induction, Morita equivalence, and linking algebras") and 48 ("[VonNeumannAlgebras V0–V4] supplies states, GNS, operator topologies and normal representations").

Claim: the gate at 0096307 reports

```
depcheck: UPWARD: OperatorAlgebraDynamics (on main) -> HilbertModules (#9) at README lines [45]
depcheck: UPWARD: OperatorAlgebraDynamics (on main) -> VonNeumannAlgebras (#3) at README lines [48]
```

I reran the gate and obtained the same two lines (every other scanner 0, build clean). The rule the tool documents is deliberate: a revision of a roadmap on main is checked as a consumer, and an open supplier is upward of main. Both suppliers are open pull requests by the author of this one (#861 and #889/#1041), so the "other authors' open pull requests" allowance does not apply. This is not a false positive under the tool's rule.

Witness: `tauceti-roadmap gate ... OperatorAlgebraDynamics --base origin/main` → `depcheck=2 ... FAIL`; `ORDER.txt` lists VonNeumannAlgebras at position 3 and HilbertModules at 9 and does not list OperatorAlgebraDynamics.

Context the author and board should weigh: both lines predate this pull request (they are unchanged from main), and NoncommutativeGeometry on main carries the same edges (its supplier table cites HilbertModules H1–H6 and OperatorAlgebraDynamics D1–D2). CStarAlgebras (#860), SpinRepresentations (#1207), LieGroupoidsPoisson (#1050) and OperatorTheory/UnboundedOperators (#1027) are also open suppliers of this README; the depcheck does not flag them only because they are not in the merge order or are not written with a "supplies" clause.

Repair: no on-main owner of Hilbert C*-module theory or of GNS/modular theory exists (pinned Mathlib has only the `CStarModule` class in `Analysis/CStarAlgebra/Module/Defs.lean`), so the citations cannot be repointed. The repair that makes the gate pass is structural and is the board's to make: list OperatorAlgebraDynamics in the merge order after VonNeumannAlgebras and HilbertModules (the tool's `repair_upward`/`move_after_suppliers` path), so that this revision is checked as a listed consumer. If the board declines, the alternative is to remove the two supplier sentences and declare the needs as supplier gaps (`gap:hilbert-module-induction`, `gap:gns-and-normal-representations`) with `supplier` HilbertModules / VonNeumannAlgebras in a plan.json, which this package does not have. Until one of these is done the gate fails and acceptance is blocked.

## R02 (P2) — Two owners (three open heads) for the Segal-field adapter

Location: `TauCetiRoadmap/OperatorAlgebraDynamics/README.md` line 12 ("D8 is the single owner of … the Segal field `Φ₀(f)=(a(f)+a†(f))/√2` on that domain, its essential self-adjointness, and the identification of its closure with the Stone generator `Φ(f)`") and lines 659–668 (the D8 paragraph that proves it).

Claim: the same theorem is owned, in the same words, by two other open heads:

- QuantumFoundations (#1771, head readable with `roadmaps show --pr 1771`), section "QF4 prerequisite — Fock-operator API on D8 carriers": "define `Φ_F(h)=(a(h)+a†(h))/√2` on this core. Prove it is essentially self-adjoint and its closure equals the Stone generator `Φ_D8(h)` … this is the explicit Fock-normalization adapter consumed by RQFT … QF4 owns the closure/domain comparison". QF4 also defines the n-particle sectors `S_n(H^{⊗n})`, `A_n(H^{⊗n})` itself.
- The sibling open revision of this very folder, #1137 (head 1a78485e, opened 2026-10-18, the day after this one), whose line 12 reads "QuantumFoundations QF4 owns the generic Fock/second-quantization API and proves the normalization adapter `Φ_D8(h)=(a(h)+a†(h))/√2` on its specified invariant domain".

The pull-request text of #1097 itself says "Fock and second-quantization/domain adapters have their Quantum Foundations owner", which contradicts the README it submits. RelativisticQuantumFieldTheory (#1772) consumes "D8's carrier with QF4's Fock and second-quantization API", i.e. it reads the #1137/#1771 assignment.

Witness: `roadmaps grep --readme-only 'Segal field|second quanti'` lists #1097, #1137 and #1771 each proving the closure identity; the #1137 diff against this head differs exactly at line 12 and in the D8 paragraph.

Repair (the one that makes all three heads agree without touching the other pull requests): restore line 12 and the D8 paragraph to the #1137 assignment. D8 keeps the Fock carriers `F_a(h)`, `F_s(h)`, `D_fin`, creation and annihilation with their bounds and commutators, the Weyl algebra, the regular Fock representation `π_F` and the vacuum characteristic function; the sentence "prove that every vector of D_fin is analytic … deduce that Φ₀(f) is essentially self-adjoint on D_fin … equals `closure(Φ₀(f))`" is replaced by "QuantumFoundations QF4 proves that `Φ₀(f)` is essentially self-adjoint on `D_fin` and that its closure is the Stone generator `Φ(f)`; D8 consumes that identification for `ω₀(W(f))=exp(−‖f‖²/4)`". If instead the author wants D8 to own it, QF4's and #1137's sentences must be changed in those pull requests first and this README must say QF4 consumes D8's identification; two open heads proving one theorem is the defect either way. Separately, two open revisions (#1097, #1137) of one folder cannot both merge as written; the second to merge must be rebased onto the first, and their line-12 statements must be identical.

## R03 (P2) — Nelson's analytic-vector criterion is re-planned

Location: `TauCetiRoadmap/OperatorAlgebraDynamics/README.md` lines 661–664: "prove here Nelson's criterion that a symmetric operator with a dense invariant set of analytic vectors is essentially self-adjoint, in the `LinearPMap` graph-closure language of SelfAdjointSpectralTheory".

Claim: this theorem is already a target, with a Lean headline name, of OperatorTheory/UnboundedOperators §5.3 "Nelson essential self-adjointness and strong commutation (UO-E03)" at the #1027 head (brief checkout `rev/1027`): "For symmetric S, require a dense invariant D ⊂ ⋂ dom(Sⁿ), symmetry on D, and for every x∈D constants with `‖Sⁿx‖≤CₓRₓⁿ n!`; prove essential self-adjointness of S|D", headline `nelson_essential_selfAdjoint`, plus the "analytic-vector source proof adapters" that build the invariant hull from a dense *set* of analytic vectors (exactly the form D8 needs). QuantumFoundations line 36 records the same assignment ("UO owns generic unbounded-domain and spectral theorems"). SelfAdjointSpectralTheory on main has no essential-self-adjointness criterion (grep "essentially self-adjoint" returns nothing there).

Witness: `rev/1027/TauCetiRoadmap/OperatorTheory/UnboundedOperators/README.md` line 716 (heading) and 720 (statement); this README line 661.

Repair: replace "prove here Nelson's criterion … and deduce" by "by OperatorTheory/UnboundedOperators §5.3 (UO-E03), applied to `Φ₀(f)` on `D_fin` with the factorial estimate above, deduce"; D8 keeps the estimate `‖Φ₀(f)ᵏψ‖≤(√2‖f‖)ᵏ√((n+k)!/n!)‖ψ‖` and the invariance of `D_fin`, which are the inputs UO-E03 asks for. (If R02 is repaired by deferring the adapter to QF4, this sentence leaves D8 altogether and the finding closes with it.)

## R04 (P2) — `integratedOperator` is data that exists only because of a `sorry`

Location: `TauCetiRoadmap/OperatorAlgebraDynamics/Suggested.lean` lines 51–57 (`def integratedOperator … := (exists_integratedOperator π U hU hcont μ f hf).choose`) and 58–64 (`integratedOperator_apply := ….choose_spec.1 ξ`).

Claim: `exists_integratedOperator` is `sorry`, so the definition is `Classical.choose` of an unproved existence: a `def` with no content, the sorry'd-data rule in another form. In a scratch copy, `#print axioms integratedOperator` gives `[propext, sorryAx, Classical.choice, Quot.sound]`, and the same for `integratedOperator_apply`. By contrast `scalarIntegrated` has no `sorryAx`.

Witness: scratch `Probe.lean`, elaborated with `lake env lean`: the two `#print axioms` lines above.

Repair: delete `integratedOperator` and `integratedOperator_apply` from `Suggested.lean`; `exists_integratedOperator` already carries the vector formula and the `‖T‖ ≤ ∫‖f‖` bound and is the statement the finished roadmap is tested against. The README keeps the named operator `π⋊U` as a D1 target.

## R05 (P3) — Padding and form in `Suggested.lean`

Location: `Suggested.lean` lines 73–79 (`scalarIntegrated := U.integratedOperatorL1 hcont hbdd μ`), 80–85 (`scalarIntegrated_apply … := rfl`), 58–64 (`integratedOperator_apply`, one term), line 20 (`namespace OperatorAlgebraDynamics`), lines 9–15 (module docstring).

Claim: `scalarIntegrated` restates the pinned `ContRepresentation.integratedOperatorL1` (`TauCeti/RepresentationTheory/Continuous/Integrated/Basic.lean` line 141) under a new name and `scalarIntegrated_apply` is `rfl` against `integratedOperatorL1_apply` (line 172); both are padding. The namespace is not `TauCetiRoadmap.OperatorAlgebraDynamics`, the docstring is not of the form "<title>: target signatures" and does not say which headline theorems are not statable at the pins (Green imprimitivity, Takai duality, groupoid disintegration, Renault equivalence, the modular characterisation, the KMS simplex, quasi-free uniqueness, the variational principle, high-temperature uniqueness: none has a carrier at the pins). None of the ten Lean names occurs in the README (grep of each name returns 0), against the rule that every Lean name appears there. The `omit [CompleteSpace H] in` on `scalarIntegrated_apply` states the formula for incomplete `H`, where the Bochner integral is the junk value 0; the README's `H` is a Hilbert space.

Repair: delete `scalarIntegrated`, `scalarIntegrated_apply` and (with R04) `integratedOperator_apply`; rename the namespace; rewrite the docstring in the required form listing the non-statable headlines; name `continuous_action`, `IsCovariant`, `exists_integratedOperator`, `IsKMS`, `kms_invariant` and `kms_entire_identity` at the README targets they state (D1 joint continuity, D1 covariant pair, D1 integrated form, D7 KMS definition, D7 invariance, D7 analytic identity).

## R06 (P3) — README/Lean generality of the KMS layer

Location: README lines 527–529 ("Treat β<0 on the reversed strip, and β=0 as the full space of tracial states. Prove invariance for β≠0"); `Suggested.lean` line 96 (`IsKMS` requires `0 < β`).

Claim: the README states the KMS theory for all real β; the Lean `IsKMS` and both KMS theorems are the β>0 case only, and the docstring does not say that the β<0 form is left out. Both are statable in the same way (reversed strip).

Repair: either add the β<0 form to `IsKMS` (strip between 0 and β in either order) or say in the docstring that the Lean file states the positive-temperature case and why.

## R07 (P3) — Unused hypotheses

Location: `Suggested.lean` line 28 (`continuous_action` under `[IsTopologicalGroup G]`), lines 110 and 117 (`hα` in `kms_invariant` and `kms_entire_identity`).

Claim: joint continuity follows from point-norm continuity and the isometry of `A ≃⋆ₐ[ℂ] A` (pinned `NonUnitalStarAlgHom.nnnorm_apply_le`, `Mathlib/Analysis/CStarAlgebra/Spectrum.lean` line 266, applied to `α g` and its inverse) with no hypothesis on the topology of `G`; the invariance and entire-identity proofs (Schwarz reflection on the strip, see the table) use only the strip functions of `IsKMS`, not `hα`. Not a defect by rule 7; recorded as a note.

## R08 (P3) — New D5/D8 definitions carry no Checks

Location: README lines 325–353 (unit-space representation `ρ_L`, intertwiner transport), 599–611 (`F_a(h)`, `a†(f)`, `a(f)`), 617 (pre-Hilbert comparison), 619–621 (antilinear adjoint and the `(U,V)` automorphism), 648–668 (`F_s(h)`, `D_fin`, `Φ₀`).

Claim: the paragraphs added by this pull request define six objects and state no `**Checks.**` bullets for any of them; the roadmap as a whole has no Checks lists (it predates the house shape), but the new material is held to the standard. The two-term witnesses below (one-mode CAR KMS value, vacuum variance `‖f‖²/2`, the `(U,V)` relations on `h=ℂ`) are the natural Checks.

Repair: add, at least, (i) `h=ℂ`, `U=0`, `V=1`: the particle–hole map `a(f)↦a(f)*` satisfies the four relations and is an automorphism; `U=V=1` fails `U*U+V*V=1`; (ii) `⟨Ω,Φ₀(f)²Ω⟩=‖f‖²/2` and the unnormalised field's `‖f‖²`; (iii) `h=0`: `F_a(0)=F_s(0)=ℂ`, `CAR(0)=ℂ`; (iv) the empty unit space forces `H=0` in the disintegration layer.

## R09 (P3) — Locator slips

Location: README line 813 ("Theorems 4.22–4.24"), line 831 ("Theorem5.4"), line 833 ("ChapterIII Proposition2.7"), line 330 ("equal to1").

Claim: Williams 4.23 is a Corollary (draft 3.1 line 8472), not a theorem; the other three are missing spaces.

Repair: "Theorem 4.22, Corollary 4.23 and Theorem 4.24"; insert the spaces.

## Verified sound

**Gate.** Reran the full gate at 0096307: every scanner 0 except `depcheck=2` (R01); the targeted build of `TauCetiRoadmap.OperatorAlgebraDynamics.Suggested` passes; `lake env lean` on `Suggested.lean` gives exactly four `declaration uses sorry` warnings (lines 28, 41, 109, 116) and nothing else. Depcheck output, verbatim:

```
UPWARD: OperatorAlgebraDynamics (on main) -> HilbertModules (#9) at README lines [45]
UPWARD: OperatorAlgebraDynamics (on main) -> VonNeumannAlgebras (#3) at README lines [48]
```

**Elaborated signatures.** All ten declarations `#check`ed in a scratch copy; types agree with `scratch/signatures.md`. The three "dropped binder" leads: `IsCovariant` loses `[TopologicalSpace G] [IsTopologicalGroup G]` (correct: the covariance identity is algebraic, as the README says); `scalarIntegrated`/`scalarIntegrated_apply` lose `[CompleteSpace H]` (the pinned `integratedOperatorL1` does not require it; noted in R05). No other binder is lost.

**One-tactic probe.** `continuous_action`: `fun_prop` and `continuity` fail; `kms_invariant`: `simp_all [IsKMS]` fails; the `exists_integratedOperator` and `kms_entire_identity` statements have no one-lemma closure at the pin (no integrated covariant form or KMS notion exists in Mathlib or Tau Ceti: grep for `KMS`, `Weyl algebra`, `Fock`, `CrossedProduct` in the pinned libraries finds only `TauCeti/Algebra/CrossedProduct/*` (Galois crossed products, as the README says), `TauCeti/Algebra/Lie/GeneralLinear/Fock.lean` (the finite-dimensional Clifford "CAR module"), and Mathlib's `Analysis/InnerProductSpace/StandardSubspace.lean`). So none of the four sorried theorems is padding; the padding is the proved restatements (R04, R05).

**Library declarations opened at the pins** (Mathlib 6b7abb3c, Tau Ceti a91d3aaf): `ContRepresentation.integratedOperatorL1` and `_apply` (`TauCeti/RepresentationTheory/Continuous/Integrated/Basic.lean` 141, 172; its integrability proof uses the σ-finite support of the weight and continuity of the orbit, which is the same argument the README's D1 vector integral needs); `TauCeti.ContRepresentation.IsUnitary` (`Unitary/Basic.lean` 52: inner-product preservation, so for a group every `U g` is unitary); `Measure.modularCharacter` and `map_right_mul_eq_modularCharacterFun_smul` (`Mathlib/MeasureTheory/Group/ModularCharacter.lean` 93–94, 130): `map (· * g) μ = c(g) • μ`, i.e. `∫ f(xg) dμ = c(g) ∫ f dμ`, exactly the README's convention; `NonUnitalStarAlgHom.nnnorm_apply_le` (`Mathlib/Analysis/CStarAlgebra/Spectrum.lean` 266); `CStarModule` (`Analysis/CStarAlgebra/Module/Defs.lean`); `PontryaginDual` and the Tau Ceti `Analysis/Bochner/LocallyCompactGroup.lean`, `Topology/Algebra/PontryaginDual.lean` modules named in the README exist.

**Cross-roadmap citations resolved** (each at the head the brief names, or on main):

| Citation | Where found | Note |
|---|---|---|
| BanachAlgebras A7 | main, `## A7. Group algebras and Johnson's theorem` | L¹ convolution |
| AmenableGroups | main (Layers 1–8, invariant means) | |
| CStarAlgebras C1–C2, C5, C6, C7 | #860 head | sections present |
| HilbertModules H1–H5 | #861 head (H1–H7); linking algebra line 303, continuous fields H5 line 353, opposite-algebra right modules lines 22–28 | R01 |
| VonNeumannAlgebras V0–V4, V4.0.Fields, V4.0.Decomposition, V8, V10, V11 | #889 head: V4.0.Fields line 1181, V4.0.Decomposition line 1279 (it names OperatorAlgebraDynamics D5 as consumer, line 1305), Layers 8, 10, 11; #1041 head has V0–V4 and V4.0.Fields only | two open heads; the citations resolve at #889 |
| OperatorTheory/SelfAdjointSpectralTheory SA-B14, B44, B50, B59, B67, B79, B85 | main, lines 320, 420, 441, 477, 538, 592, 676; the nondegenerate C₀(X) separable case at line 727; line 1407 names D5 as consumer | |
| OneParameterSemigroups | `Completed/OneParameterSemigroups` (Part A, C₀ groups, `LinearPMap` generators); README link already points at `Completed/` | |
| LieGroupoidsPoisson G0 | #1050 head, G0.0 ("which OperatorAlgebraDynamics D5 consumes") | |
| RepresentationTheory/CompactGroups | main, Layer 5 Peter–Weyl | |
| RepresentationTheory/SpinRepresentations | #1207 head, Layer 0 Clifford algebra | |
| FreeProbability F3 | main, line 328 full Fock space from completed tensor powers | |
| CStarClassification CL5 (consumer) | #863 head, `### From TauCetiRoadmap.OperatorAlgebraDynamics` lists D1–D2 (G=ℤ generator formulas), D3–D4, D6 (`O_n`), D8 (CAR inductive limit) | all present here |
| OperatorKTheory (consumer) | #866 head, K7 Pimsner–Voiculescu, cites D1–D4 | |
| Subfactors (consumer) | #874 head, line 279: consumes D8's CAR, antisymmetric Fock space, quasi-free states, Bogoliubov functoriality for unitaries; proves implementability (Burns 3.4.4) itself | consistent with D8's "implementability is not a target" |

Ownership against the open pull requests the brief lists was checked by object with `roadmaps grep` (Weyl, CAR, Fock, KMS, crossed product, groupoid/Cuntz, Nelson, strong subadditivity, Bogoliubov, quasi-free). Apart from R02 and R03: KMS states in VonNeumannAlgebras #889 (V10.KMS) are the W*-form for normal states at β=1 in the Takesaki convention `F(t)=φ(α_t(x)y)`, `F(t+i)=φ(yα_t(x))`; the README's BR convention `F(t)=ω(aτ_t(b))`, `F(t+iβ)=ω(τ_t(b)a)` corresponds to it under `σ_t=τ_{−βt}` (computed: with `x=b`, `y=a`, `F(z):=G(−z/β+i)` maps the β-strip onto the unit strip and reproduces both boundary rows), which is exactly D7's `σ_t^ω=τ̄_{−βt}`; Subfactors 2.6 and TypeAHeckeAlgebras H4 own Pimsner–Popa relative entropy of an inclusion, a different object from D9's Umegaki `D(ρ‖σ)`; Mathlib's `InformationTheory/KullbackLeibler` is the classical measure-theoretic divergence. QuantumFoundations #1771 and RelativisticQuantumFieldTheory #1772 are not among the brief's checkouts and were read only through `roadmaps show`/`grep`.

**Seeded sample (15 locators) against the texts.** Williams draft 3.1 (cache id `3dbc1fb9…`): Lemma 1.61 line 1262 (`Δ(r)∫f(sr)dμ(s)=∫f`, so `Δ=c⁻¹`, README correct); Proposition 3.19 line 6050 (ideal short exact sequence, `ι⋊id` identifies `I⋊G` with `Ex I`); Theorem 4.1 line 6878 (symmetric imprimitivity `Ind_H^P(A,β)⋊σK ∼ Ind_K^P(A,α)⋊τH`, line 6861); Corollary 4.17 line 8204; Theorem 4.22 line 8422 with `γ_H(s)=Δ_G(s)^{1/2}Δ_H(s)^{−1/2}` and `⟨f,g⟩_{B₀}(h)=γ_H(h)∫α_s⁻¹(f(s)*g(sh))dμ_G(s)` (line 8444) — identical to the README's formula; Corollary 4.23 line 8472; Theorem 4.24 line 8504 (`C₀(G)⋊G ≅ K(L²G)`); Theorem 5.9 line 10032 (induction in stages, H ⊂ K); Theorem 7.1 line 11708 (Takai, equivariant for `α⊗Ad ρ`, ρ the right-regular representation, line 11699); Lemma 7.8 line 12233 (reduced norm by any faithful ρ); Theorem 7.13 line 12297 (amenable ⇒ reduced = full); Corollary 7.18 line 12490 (nuclear A, amenable G ⇒ nuclear crossed product). Muhly–Williams (`f85ac343…`): Theorem 5.5 line 1174 (second countable, locally Hausdorff; README specialises to Hausdorff), Theorem 7.8 line 2410 (dense domain, dense range, inductive-limit-continuous coefficients, adjoint identity ⇒ bounded with I-norm bound ⇒ integrated form of a unitary representation on a direct integral: exactly D5's "pre-representation form"), Appendix B line 3918. Sims–Williams (`892ebec6…`): Definition 2 line 103, Lemmas 3–5 lines 170/226/371, Theorem 13 line 552, Theorem 17 line 733 (`X/X·I_{C*_r(H)} ≅ X_r`). Takeishi (`e8588b62…`): Theorem 5.4 line 496 (amenable ⇔ `C*_r(E)` nuclear for all/some Fell line bundles). Sims notes (`db6d1e48…`): §4.1 line 1081, Lemma 4.2.3 line 1253 (second countable: effective ⇔ topologically principal), Theorem 4.2.7 line 1324 (uniqueness for effective G), Proposition 4.3.2 line 1361 (invariant open sets and ideals), strong effectiveness line 1424 and Theorem 4.3.3 line 1431 (bijective lattice map iff strongly effective, amenable G), §5.1 line 1625. All 15 support the statements as written.

**Adversarial table.**

| Statement | Instances tried | Values computed | Result | Change |
|---|---|---|---|---|
| `continuous_action` | trivial G; G=ℤ/2 on ℂ² by swap; non-abelian S₃ permuting coordinates of ℂ³ | `‖α_g a−α_h b‖ ≤ ‖a−b‖ + ‖α_g b−α_h b‖`, first term by isometry of `α_g` (contractive both ways), second → 0 by point-norm continuity | true; `[IsTopologicalGroup G]` unused | R07 |
| `IsCovariant` | ℤ/2 on ℂ², π=diagonal inclusion, U=flip: `Uπ(a)=π(swap a)U` ✓; U=1: `π(1,0)≠π(0,1)` | identity fails for `a=(1,0)` | discriminates the wrong model | none |
| `exists_integratedOperator` | μ=0 (T=0); f=0; H=0; G uncountable discrete with counting μ, `U`=regular rep on ℓ²(G), ξ=δ_e | integrand a.e. supported on a σ-compact set (inner regularity), continuous orbit has separable range there ⇒ a.e. strongly measurable; `‖∫π(f g)U_gξ‖ ≤ ∫‖f g‖·‖ξ‖` using `‖π(x)‖≤‖x‖`, `‖U_gξ‖=‖ξ‖` | true | none |
| `integratedOperator` | `#print axioms` | `sorryAx` present | data by choice over a sorry | R04 |
| `IsKMS` convention | A=M₂(ℂ), K=diag(1,0), τ_t=Ad e^{itK}, ω=Tr(e^{−βK}·)/Z, a=e₁₂, b=e₂₁, t=0 | F(iβ)=Tr(e^{−βK}e₁₂·e^{β}e₂₁)/Z=1/Z; ω(ba)=Tr(e^{−βK}e₂₂)/Z=1/Z ✓; wrong sign e^{+βK}: F(iβ)=e^{2β}/Z′ vs ω′(ba)=1/Z′, unequal for β≠0 | Lean and README agree with BR's convention; the Gibbs sign of D7 is pinned | none |
| `kms_invariant` (nonunital A) | approximate unit e_λ; `|φ((1−e_λ)x)|² ≤ (1−φ(e_λ))‖x‖²` | F_{e_λ,a} → F uniformly on the strip (Phragmén–Lindelöf), boundary rows both `φ(τ_t a)`; glue iβ-periodically, bounded entire ⇒ constant | true for the Lean hypotheses; `hα` unused | R07 |
| `kms_entire_identity` | a=0; b=0 (F≡0); general | `G(z)=φ(aF(z))` entire, `F_{ab}−G` vanishes on ℝ, Schwarz reflection ⇒ zero on the strip ⇒ `F_{ab}(iβ)=φ(ba)=φ(aF(iβ))` | true | none |
| D1 involution `f*(s)=c(s)α_s(f(s⁻¹)*)` | ‖f*‖₁ | `∫Δ(s⁻¹)‖f(s⁻¹)‖dμ=∫‖f‖dμ` by the inversion formula; with `c` in place of `Δ⁻¹` the identity fails for nonunimodular G | isometric as stated | none |
| D2 module inner product | `⟨f,g·a⟩` | integrand `α_{s⁻¹}(f(s)*g(s))a`: right-linear in the second slot; transport `f↦α_{s⁻¹}∘f` turns it into the standard `L²(G,A)` product | consistent with the second-linear convention and right modules | none |
| D3 Green inner product | Williams (4.57) | identical, including `γ_H` | none | none |
| D4 Takai | Williams 7.1 | `α⊗Ad ρ`, `ρ_sξ(r)=ξ(rs)` for unimodular G | none | none |
| D5 half-modular comparison `Ψ(F)(g,x)=Δ(g)^{1/2}F(g)(gx)` | involutions | `Ψ(F*)(g,x)=Δ(g)^{−1/2}conj F(g⁻¹)(x)=Ψ(F)*(g,x)`; without the factor the two sides differ by `Δ(g)⁻¹` | factor needed and correct | none |
| D5 empty unit space | G=∅ | C*(G)=0, nondegenerate ⇒ H=0 | as stated | none |
| D6 topological amenability, D6 ideal lattice | Sims 4.3.3 | strongly effective needed for bijectivity; effective alone insufficient (README says so) | none | none |
| D7 KMS ↔ modular | #889 V10.KMS convention | `F(z):=G(−z/β+i)` maps the β-strip to the unit strip with the two boundary rows swapped as required ⇒ `σ_t=τ_{−βt}` | matches D7 | none |
| D8 CAR KMS state | one mode, h₀=ε, a=a(f), b=a(f)*, ‖f‖=1 | F(t)=e^{itε}(1−S), F(t+iβ)=e^{itε}e^{−βε}(1−S) must equal e^{itε}S ⇒ S=(1+e^{βε})⁻¹ | Fermi factor as stated | none |
| D8 Fock bounds | ψ∈Symⁿ | `‖a†(f)ψ‖=√(n+1)‖P_s(f⊗ψ)‖≤√(n+1)‖f‖‖ψ‖`; k-fold `Φ₀`: `(√2‖f‖)^k√((n+k)!/n!)` since each step costs `≤√2√(m+1)‖f‖`; `Σ_k t^k(n+k)!^{1/2}/(k! n!^{1/2})<∞` for all t | analytic vectors as stated | none |
| D8 commutator and vacuum | `[Φ₀(f),Φ₀(g)]=½(⟨f,g⟩−⟨g,f⟩)=i Im⟨f,g⟩`; `⟨Ω,Φ₀(f)²Ω⟩=½⟨Ω,a(f)a†(f)Ω⟩=‖f‖²/2`; BCH gives `W(f)W(g)=e^{−iσ(f,g)/2}W(f+g)` with σ=Im⟨·,·⟩; unnormalised field gives `2i Im⟨f,g⟩` and `e^{−‖f‖²/2}` | all as stated | none | none |
| D8 Weyl spectrum | nondegenerate σ, f≠0 | `W(g)W(f)W(g)*=e^{−iσ(g,f)}W(f)` ⇒ spectrum rotation-invariant ⇒ 𝕋; `‖W(f)−z‖=2` on 𝕋; `‖W(f)−W(g)‖=‖W(g)*W(f)−1‖=2` | as stated; V=0 case `ℂ` kept separate | none |
| D8 Bogoliubov relations | expand `{γ(a(f)),γ(a(g))*}` and `{γ(a(f)),γ(a(g))}` with `⟨V*x,y⟩=⟨Vy,x⟩` | `⟨Uf,Ug⟩+⟨Vg,Vf⟩=⟨f,(U*U+V*V)g⟩`; `⟨Uf,Vg⟩+⟨Ug,Vf⟩=⟨g,(V*U+U*V)f⟩`; `V*V` self-adjoint | the four relations are the right ones; h=ℂ, U=0, V=1 satisfies them, U=V=1 fails | R08 (as Checks) |
| D8 thermal covariance | identity | `coth(x/2)=1+2/(e^x−1)`; `T=(C−I)/2=(e^{βh₀}−1)⁻¹`, bounded iff `h₀≥ε` | as stated | none |
| D9 strong subadditivity route | `D(ρ_{ABC}‖1⊗ρ_{BC})≥D(ρ_{AB}‖1⊗ρ_B)` | LHS `=−S(ABC)+S(BC)`, RHS `=−S(AB)+S(B)`; `V(xρ_A^{1/2})=(x⊗1)ρ_{AB}^{1/2}` is an isometry: `Tr((x*x⊗1)ρ_{AB})=Tr(x*xρ_A)` | yields `S(ABC)+S(B)≤S(AB)+S(BC)` | none |
| D2 `P₂` estimate | unit vectors | `∫||a|²−|b|²|≤‖|a|−|b|‖₂(‖a‖₂+‖b‖₂)≤2‖a−b‖₂` | as stated | none |

## Not verifiable

- Bratteli–Robinson, *Operator Algebras and Quantum Statistical Mechanics 1* and *2* (Springer, DOI prefix 10.1007): the sources service resolves only to a paywalled page (`uncertified`). Theorems 5.3.10, 5.3.30, 5.4.4, 6.2.4, 6.2.16, 6.2.18, 6.2.40, 6.2.42, Proposition 6.2.45, §5.2.1, Volume 1 4.1.19–4.1.25 are cited by locator alone; where the statements could be recomputed (KMS convention, Fermi factor, Fock normalisation, SSA) they are in the table above. The high-temperature constant `(λ/2)/(1+exp(λ)d³/(d−1))` and the exact hypotheses of 6.2.18 could not be checked.
- Renault, *A Groupoid Approach to C*-Algebras*, LNM 793 (Springer): same; Chapter III Proposition 2.7 and Chapters I–II cited by locator alone. Muhly–Williams Theorem 7.8 (readable) restates Renault's Proposition 4.2, which covers D5's use.
- No `sources.toml` exists in the folder (it predates the manifest); nothing was recorded.

## Source issues

- none
