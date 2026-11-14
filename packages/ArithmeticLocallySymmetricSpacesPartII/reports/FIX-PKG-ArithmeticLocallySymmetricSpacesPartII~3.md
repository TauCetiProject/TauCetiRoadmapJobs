# Repair of ArithmeticLocallySymmetricSpacesPartII (package, round 3)

Findings settled: the four findings of `reports/REV-PKG-ArithmeticLocallySymmetricSpacesPartII~2.md` (R01 P1, R02–R04 P3). All four are correct and applied. Only `packages/ArithmeticLocallySymmetricSpacesPartII/README.md` changed. `Suggested.lean`, `metadata.toml`, `sources.toml` and `design/plan.json` are unchanged: no Lean statement, source or supplier gap is affected.

## R01 (P1) — applied

§3.2: "shrink its away-p part … using the parent's standard levels" → intersect every factor above an auxiliary prime q≠p with its principal congruence kernel (pro-q); §ALS.0.11 gives neatness over F and for `Res_{F/ℚ}SL₂`. §4.2: strong approximation now cites AdelicAlgebraicGroups §4.2, with noncompactness of the one simple factor. §§ALS.0.7, ALS.0.9 and ALS.1.5 are named where used.

Pattern, other places: a new contract `From TauCetiRoadmap.AdelicAlgebraicGroups`; a Scope sentence; the parent contract (adds §§ALS.0.7, ALS.0.11, ALS.1.5); a Conventions sentence plus Check identifying X_K with Γ\X for every congruence Γ; §5.7's neat Γ′ is now Γ(𝔞𝔭𝔮), with residue characteristics of 𝔭 and 𝔮 distinct, neat by §ALS.0.11; §5.1 Needs gets §ALS.0.7; Layer 3/4/5 Dependencies. §ALS.0.10 is no longer used anywhere, so it was dropped from the contract, §3.2, §5.7 and the dependency lists.

Evidence used. Both supplier sections were read at their current heads. ArithmeticLocallySymmetricSpaces §ALS.0.11 needs a product level whose factors are pro-q and pro-q′ at two places of distinct residue characteristic. §ALS.0.7 is the component decomposition. §ALS.1.5 identifies Betti and group cohomology at every level, neat or not. AdelicAlgebraicGroups §4.2, target "Strong approximation for semisimple groups", needs a connected semisimple simply connected group whose F-simple factors have noncompact archimedean points. Its conclusion is that G(F)\G(𝔸_F^∞)/U is a single point.

Why principal congruence factors at every place above q, rather than at one place: this makes the level neat for SL₂ over F at the pair (v|p, v′|q). It also makes it neat for `Res_{F/ℚ}SL₂` over ℚ at the pair (p, q), which is how CompletedCohomologyPartII is applied (Conventions). The review's version covers only the first.

## R02 (P3) — applied

Tau Ceti contract: added `Representation.asAlgebraHom_surjective_of_isIrreducible` (TauCeti/RepresentationTheory/Irreducible.lean, line 242 at the pin). Its hypotheses are an algebraically closed field, finite dimension and irreducibility. The §0.3 route now reads: extend scalars to ℚ̄_p, apply density, then descend, since the ℚ̄_p-span is the scalar extension of the ℚ_p-span. Added to §0.3 Needs and Layer 0 Dependencies, with a new p=3, k=1 Check.

Pattern: §4.2 and §5.7 also used a pinned theorem without naming it: corestriction after restriction is multiplication by the index. The contract and both Needs lines now cite `TauCeti.groupCohomology.corestriction` and `TauCeti.groupCohomology.map_subtype_id_comp_corestriction` (TauCeti/RepresentationTheory/Homological/GroupCohomology/Corestriction.lean, lines 136 and 165). Its hypotheses are a commutative ring and a finite-index subgroup, in one universe. Our ℂ and Γ are both in `Type`.

## R03 (P3) — applied

§5.6: "has discriminant −4d" → "write F=ℚ(√−u) with u>0 squarefree … then u is 1 or 2 modulo 4, so disc(F)=−4u and 2 ramifies". The ratio estimate is kept. Added a positivity Check: u=1, 2, 5 give discriminants −4, −8, −20 and A_F/B_F equal to 5/3, 3, 5; u=3 and u=7 give B_F=0.

Pattern: no other place in the README uses d as a radicand. The search covered `√−`, `−4d` and `ℚ(√`.

## R04 (P3) — applied

§3.1 Check: "(an empty tensor of one-dimensional factors)" → "a tensor over the d complex embeddings whose factors `Sym^0(ℂ²)` are each one-dimensional". It now gives 1, 2 and 3 factors for ℚ, ℚ(i) and a cubic field. It also says the index set is never empty, unlike the genuinely empty product D=1 of §0.1.

Pattern: the only other "empty" occurrences are §0.1's I=∅ Check, which is correct, and the empty set ℒ(ℚ(i)) in §5.5, which is unrelated.

## Checks

- **Elaboration.** `lake env lean packages/ArithmeticLocallySymmetricSpacesPartII/Suggested.lean`, run from the content checkout, gave exit 0. It printed exactly two warnings, both "declaration uses `sorry`", at lines 70:8 and 89:8. The olean of `TauCeti.RepresentationTheory.ClassicalGroups.SymmetricPower` was already built.
- **Signatures.** One scratch file put `#check @` on all four declarations and elaborated once, with exit 0. `embeddingStdRep` and `weightRep` keep `[Field F] [NumberField F]`. `finrank_groupCohomology_weightRep_le` keeps ¬IsTotallyReal, 𝔞≠⊥ and the kernel inclusion, with `∃ C` before `t, i, a`. `bianchi_groupCohomology_linear_growth` keeps `IsTotallyComplex`, `finrank ℚ F = 2`, 𝔞≠⊥ and the kernel inclusion. Each matches its README statement. Nothing changed, because the Lean file was not edited.
- **Dependency check** (command as in the brief):

```text
depcheck: 236 roadmaps, 2141 edges, 0 problem(s)
```

  It shows no UPWARD, CYCLE or moved line. The new edge goes to AdelicAlgebraicGroups (ORDER line 53; this roadmap is at line 180).
- **Citation resolver.** "Cross-roadmap citations found nowhere: None"; "Lean names found nowhere: None". The resolver does not inspect the pinned libraries. I opened the three new Tau Ceti names at the pin `2fd255d997f47c0b5d834ee416c7015d55444ce5` at the files and lines given above.
- **Scratch gate.** I ran the package gate on a scratch copy of the three files. Every check is 0 except `git=1`, which only means the scratch copy is not a repository. Two new expressions with `_{…}`/`^{…}` were moved into code spans first, after a `tex=3` hit.
- No gate failures were listed in the brief.

## Adversarial pass on new and changed statements

| Statement | Instances tried | Values computed | Result / change |
| --- | --- | --- | --- |
| Conventions: K=Γ·ker(SL₂(Ô_F)→SL₂(O_F/𝔞)), Γ=SL₂(F)∩K, X_K=Γ\X | 𝔞=O_F; Γ=Γ(𝔞); F=ℚ(√−5), SL₂ against GL₂ | Unit ideal: K=SL₂(Ô_F), Γ=SL₂(O_F). x∈SL₂(F)∩γK(𝔞) gives γ⁻¹x∈Γ(𝔞)⊆Γ. GL₂ at GL₂(Ô_F) has h_F=2 components; SL₂ has 1 | Holds. GL₂ added as a negative-control Check. "Betti" made precise as the parent's orbifold cohomology at non-neat level (§ALS.1.5). |
| §3.2 neat refinement | F=ℚ(i), p=5, q=3; F=ℚ, q=2; ramified q; γ=(1 1;−3 −2) | 5=(2+i)(2−i): two pro-5 factors; 3 inert: one pro-3 factor; gcd(5^a,3^b)=1. det γ=−2+3=1, tr γ=−1, order 3, γ≡(1 1;0 1) mod 3. Ramified q: K(v′) is still pro-q | One pro-unipotent factor fails, two of distinct characteristic suffice. The p-factor stays G, and the index does not depend on κ. Both cases added as Checks. |
| ALS.0.11 over ℚ for `Res_{F/ℚ}SL₂` | ρ = Res of standard, of ℚ-dimension 2d | K_p=∏_{v|p}G_v is pro-p; K_q=∏_{v|q}(K_v∩K(v)) is a product of pro-q groups, hence pro-q | Neat over ℚ as well as over F. One factor at a single place above q would not give the ℚ-statement. |
| §4.2 strong approximation | signatures (0,1), (1,1), (2,0) | SL₂(ℂ), SL₂(ℝ)×SL₂(ℂ) and SL₂(ℝ)² are all noncompact; one F-simple factor | The hypothesis holds for every F. Definite quaternion norm-one groups (AdelicAlgebraicGroups' negative control) are not involved. |
| §5.7 Γ′=Γ(𝔞𝔭𝔮) | F=ℚ(i), 𝔭=(1+i), 𝔮=(3), 𝔞=O_F | Factor at (1+i) is pro-2 and factor at 3 is pro-3; Γ′ ⊴ SL₂(O_F) and Γ′⊆Γ(𝔞)⊆Γ | Neat by §ALS.0.11. Q=Γ/Γ′ acts by orientation-preserving maps, since SL₂(ℂ) is connected. |
| Corestriction (Tau Ceti) | [Γ:Γ′]=1; index r | cor∘res=1·id; =r·id, and r≠0 in ℂ | Restriction is injective with no neatness. The universe hypothesis is met (`Rep.{0,0,0} ℂ ↥Γ`). |
| §0.3 Burnside route | k=0; k=1, p=3; k=(1,2); diagonal torus | dimensions 1=1²; e=((I+3e)−I)/3, ef=E₁₁, fe=E₂₂, so 4=2²; 36=6²; torus span 2 | ℚ̄_p-span = (ℚ_p-span)⊗ℚ̄_p because field extension is flat, so the dimensions agree. Reducible torus excluded by the hypothesis. |
| §5.6 radicand | u=1,2,3,5,7, and every squarefree u<400 by exact arithmetic | (disc,A,B,A/B): (−4,5/24,1/8,5/3), (−8,3/8,1/8,3), (−3,1/6,0,—), (−20,5/4,1/4,5), (−7,1/3,0,—). 0 failures of "B≠0 ⇒ disc=−4u, 2∈R, A/B≥(5/3)3^{s−1}>1", and A>B in every case | Statement holds; only the notation changed. u=5 attains the bound (5/3)·3=5. |
| §3.1 t=0 Check | F=ℚ, ℚ(i), cubic | factors 1, 2, 3; dimensions 1, 1·1, 1·1·1 | Hom(F,ℂ) has d≥1 elements and is never empty. A PiTensorProduct over an empty type would also be ℂ, so the dimension was never wrong; the explanation now matches the carrier. |

## Ownership and citations

No new construction is stated here. Strong approximation is owned by AdelicAlgebraicGroups §4.2. The neatness criterion, component decomposition and Betti/group-cohomology comparison are owned by ArithmeticLocallySymmetricSpaces §§ALS.0.11, ALS.0.7 and ALS.1.5. Burnside density and corestriction exist at the Tau Ceti pin. All are cited, not restated. Both roadmaps are earlier in the merge order. I read each at the head of its open pull request with `roadmaps show`, which is the copy the dependency check resolves. Ownership against open pull requests was checked with the provided index tools only. The overlap file reports no conflicting head and no dropped or revision-only id.

## For the maintainer

- No Lean name, section number or heading of this roadmap changed, so no citing roadmap is affected.
- The README no longer cites ArithmeticLocallySymmetricSpaces §ALS.0.10, which was cited only for a refinement it does not provide. It now cites §§ALS.0.7, ALS.0.11 and ALS.1.5, and AdelicAlgebraicGroups §4.2 as a new supplier edge. If either supplier renumbers these sections before this roadmap merges, these citations must follow.
- No source was fetched and no `needs-references.toml` was written: every new citation is a roadmap section or a pinned declaration.
- No suspicious instructions were found in the review or in the supplier texts read.
