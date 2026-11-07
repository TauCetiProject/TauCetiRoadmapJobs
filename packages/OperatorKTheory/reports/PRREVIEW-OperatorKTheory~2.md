# Review of OperatorKTheory (pull request #866 at 321c0a4)

**Verdict:** needs changes

The gate passes, the dependency check reports no problem, and `Suggested.lean` elaborates with four `sorry` warnings and nothing else. No statement I computed is false: the adversarial table below has 37 rows with values on both sides. One finding blocks: the Calkin algebra has two owners (R01, P2). The other eight are P3 repairs to make before the next review.

## Status of the previous review's findings (head d1b2465)

- **R01 (Dynamics sub-sections missing on main): repaired.** 7.5 now builds the algebra itself: "On `lp (fun _ : L => ℂ) 2` define the twisted shifts" (README lines 1358–1359). Its universal property uses Fell absorption and weak containment from D2 on main (OperatorAlgebraDynamics lines 186–189). The reduced subgroup inclusions (lines 1201–1207) are proved here from D2's independence of the faithful representation (main line 152). Line 43 no longer names a section.
- **R02 (mutual citation with OperatorTheory): repaired.** 6.6 works on `lp (fun _ : ℤ => ℂ) 2` and "does not compare it with a Hardy-space model" (lines 1039–1040). OperatorTheory now appears only under Downstream consumers (line 1757).
- **R03 (BDF absent): repaired.** Both Brown–Douglas–Fillmore statements are in `Suggested.lean` (lines 84–102).
- **R04 (docstring): repaired.** Lines 20–42 list every unstatable headline of the Summary with the carrier it lacks. I checked the list against the Summary and against `Mathlib/Analysis/CStarAlgebra/` at the pin, which has no adjointable module operators, crossed products or spatial C*-tensor product.
- **R05 (pullback locator): repaired.** Lines 559–562 cite Blackadar, Theorem 21.2.2, and the Schochet remark, and reduce the one-surjective-leg case to the two extensions.
- **R06 (blob links): repaired.** The gate reports `blob=0`.
- **R07 (imports): partly repaired.** `import Mathlib` is now there, but the remaining `TauCeti` import is unused (R03 below).
- **R08 (Lean form): repaired.** The namespace is `TauCetiRoadmap.OperatorKTheory` and the seven unused definitions are gone.
- **R09 (API lemmas): repaired for the four lemmas named.** Two other non-headline declarations remain. R02 below raises them, with new evidence: the pinned Mathlib now has Michael's selection theorem, and CStarAlgebras C9.2 owns the close-projection lemma.
- **R10 (README shape): partly repaired.** The Summary, Scope, Conventions, supplier contracts, How to read the build, 48 `*Needs:*` lines, 30 Checks blocks, Examples and Dependencies for every layer, Downstream consumers and References are all present. Still missing: locators at most claims (R08 below) and Checks for eight definitions (R09 below).
- **R11 (sources, unsourced block, process wording): repaired in the folder.** 7.5 cites Phillips 2006, Theorem 1.9, and through it Slawny, Theorem 3.7. The open-PRs sentence is gone. No roadmap folder on main carries a `sources.toml`.
- **R12 (rotation K-groups only for irrational θ): repaired.** Line 1328: "For every real θ prove `K₀(A_θ)≅K₁(A_θ)≅ℤ²`".
- **R13 (identifications against consumers): repaired.** Lines 1151–1154 and 1387–1388 now say what this roadmap exports.

## R01 (P2) — The Calkin algebra has two owners: CStarAlgebras C1.6 and K4.1

Location: `TauCetiRoadmap/OperatorKTheory/README.md` lines 19–20 ("This roadmap owns … the Calkin algebra and the Hilbert-module index"), line 639 ("Construct the Calkin algebra `Q(H)=B(H)/K(H)` and prove Atkinson's theorem") and line 637 (*Needs:* "CStarAlgebras C1 quotients").

Claim: this roadmap constructs and owns `B(H)/K(H)`.

Witness: at the CStarAlgebras head (33ddcef), `TauCetiRoadmap/CStarAlgebras/README.md` §1.6 (lines 435–447) constructs "the unital Calkin algebra `B(H)/K(H)`" and proves it simple. Line 1955 adds: "ToeplitzOperators consumes §1.6's Calkin algebra". CStarAlgebras is a supplier of this roadmap.

Repair: CStarAlgebras is earlier in the order, so the object stays there.
- In Scope, replace "the Calkin algebra and the Hilbert-module index" by "Atkinson's theorem and the Hilbert-module index".
- Add an ownership bullet: "CStarAlgebras C1.6 owns the Calkin algebra `B(H)/K(H)` and its ideal structure".
- In 4.1, write "Consume CStarAlgebras C1.6's Calkin algebra `Q(H)=B(H)/K(H)` and prove Atkinson's theorem …".
- In the 4.1 `*Needs:*` line, replace "C1 quotients" by "C1.6 Calkin algebra", and add C1.6 to the CStarAlgebras supplier bullet.

The consumers on main keep working. OperatorTheory line 68 ("OperatorKTheory K4 owns the Calkin and compact-perturbation index foundation") and ToeplitzOperators line 27 ("owns the Calkin/Atkinson comparison") both cite K4, which keeps Atkinson's comparison and the index.

## R02 (P3) — Two declarations of `Suggested.lean` are supporting lemmas, not headline theorems

Location: `TauCetiRoadmap/OperatorKTheory/Suggested.lean` lines 57–60 (`close_projections_unitarily_conjugate`) and 116–120 (`exists_continuous_nonlinearRightInverse`); README lines 211–213; docstring lines 13–17.

Claim: these are acceptance-test milestones of the roadmap.

Witness: neither theorem is among the Summary's end theorems (README lines 9–14), and neither names an object of this roadmap. The first is the 1×1 instance of CStarAlgebras C9.2 (head line 1763). The second follows from Mathlib `LowerHemicontinuous.exists_continuous_selection` (`Mathlib/Topology/Semicontinuity/Michael.lean:108`).

Repair: delete both theorems and their sections from `Suggested.lean`; the README keeps 1.1 and 9.2 as targets. Change the docstring and README lines 211–213 to say that the file states the two Brown–Douglas–Fillmore theorems of 8.4. Tested: a scratch copy with both sections, line 8 (R03) and `hH` (R04) removed elaborates with two `sorry` warnings and nothing else.

## R03 (P3) — Unused import

Location: `Suggested.lean` line 8, `import TauCeti.CategoryTheory.GrothendieckGroup.Split`.

Claim: the file uses this `TauCeti` module.

Witness: no declaration mentions `TauCeti.SplitK0`. A scratch copy with the line deleted and `#check` on all six declarations elaborates with the same four `sorry` warnings and identical types.

Repair: delete line 8. The import rule allows only `TauCeti.*` modules the file actually uses.

## R04 (P3) — The README names none of `Suggested.lean`'s declarations; the BDF hypothesis `hH` is superfluous

Location: README 8.4 (lines 1585–1598); `Suggested.lean` lines 71, 77, 84–85 and 97–98 (`(hH : ¬ FiniteDimensional ℂ H)`).

Claim: the README and the Lean file agree; infinite dimension is needed.

Witness: `grep` finds 0 occurrences in the README of `IsEssentiallyNormal`, `essentialSpectrum`, or either theorem name. For finite-dimensional H, `essentialSpectrum T = ∅` and both sides of both equivalences hold: take U = 1 and N = 0, every operator is compact, and every index is 0.

Repair:
- In 8.4, name `IsEssentiallyNormal`, `essentialSpectrum`, `exists_unitary_isCompactOperator_conj_sub_iff_index_eq` and `exists_isStarNormal_isCompactOperator_sub_iff_index_eq_zero` where the definitions and the two statements are given.
- Drop `hH` from both signatures, and say in the docstrings that finite-dimensional H is a trivial case (empty essential spectrum).

The finite-dimensional instance above is the test of the dropped hypothesis: both sides are true.

## R05 (P3) — 9.2 re-proves Michael's selection theorem, which is at the pin

Location: README lines 1679–1680: "Derive it from the open mapping theorem, locally finite partitions of unity and successive approximate sections." Also the `*Needs:*` line 1674 and the "From Mathlib" contract (lines 107–109).

Claim: the selection must be constructed from partitions of unity here.

Witness: Mathlib proves `LowerHemicontinuous.exists_continuous_selection` for paracompact normal domains and Fréchet targets (`Mathlib/Topology/Semicontinuity/Michael.lean:108`). Messerschmidt2016 lines 30–32 and 695–700 derive Bartle–Graves from it: on the unit sphere, `y ↦ q⁻¹{y}` is lower hemicontinuous, closed, convex and nonempty.

Repair: cite `LowerHemicontinuous.exists_continuous_selection` in "From Mathlib" and in 9.2's `*Needs:*`. Replace the quoted sentence by: apply it on the unit sphere of F to `y ↦ q⁻¹{y} ∩ closedBall 0 R`, with R larger than the open-mapping constant (lower hemicontinuous by the open mapping theorem), and extend by `s(r y)=r σ(y)`.

Tested on the 9.2 Check `ℓ^∞→ℓ^∞/c₀`: there is no linear section, but the sphere selection is bounded by R, so the homogeneous extension is continuous at 0 with `‖s y‖≤R‖y‖`.

## R06 (P3) — 1.1 restates CStarAlgebras C9.2's conjugacy lemma and omits Tau Ceti's partial isometries

Location: README lines 227–228: "Prove that projections at distance less than one are conjugate by a unitary in the identity path component of the unitization."

Claim: this roadmap owns the close-projection conjugacy.

Witness: CStarAlgebras head line 1763 (C9.2) states this as "the `1 × 1`-block instance of the conjugacy lemma", with `‖u − 1‖ ≤ √2‖p − q‖`. Tau Ceti has `IsPartialIsometry` with `isStarProjection_star_mul_self` and `isStarProjection_mul_star_self` (`TauCeti/Algebra/Star/PartialIsometry.lean:52, 71, 78`).

Repair: in 1.1, consume CStarAlgebras C9.2. Since `‖u−1‖≤√2‖p−q‖<2`, −1 is not in the spectrum of u, so u is an exponential in the identity component. Add C9.2 to the CStarAlgebras supplier bullet. Add `IsPartialIsometry` to "From Tau Ceti" for the square Murray–von Neumann partial isometries.

Tested on p = diag(1,0) and q the line at angle φ < π/2 in M₂(ℂ): u is rotation by φ, `‖u−1‖=2sin(φ/2)≤√2 sin φ`.

## R07 (P3) — "CStarAlgebras C1 pullbacks" cites something C1 does not contain

Location: README line 543 (*Needs:* "CStarAlgebras C1 pullbacks") and line 701 (*Needs:* "CStarAlgebras C1 multipliers and pullbacks").

Claim: CStarAlgebras Layer 1 supplies closed pullbacks of C*-algebras.

Witness: at the CStarAlgebras head, "pullback" occurs only at lines 73, 1153, 1237–1238 (the mapping cone of C5.5), 1807 and 1814; Layer 1 (lines 232–537) has none. README 3.3 itself constructs "the closed pullback D=A₁×_Q A₂ … and its C*-universal property" (lines 546–547).

Repair: in 3.3's `*Needs:*`, drop "CStarAlgebras C1 pullbacks"; the construction is 3.3's own, with C5.5's mapping-cone pullback as the model. In 4.4's `*Needs:*`, write "CStarAlgebras C1.7 multipliers; 3.3 closed pullback".

## R08 (P3) — Most targets have no locator at the claim

Location: README subsections 1.1–1.6, 2.1–2.4, 3.1, 3.2, 3.4, 3.5, 4.1–4.5, 5.1–5.5, 6.2–6.4, 6.6, 7.1, 7.2, 8.2, 8.5 and 9.1–9.5. Theorem-numbered locators appear inline only in 3.3, 6.1, 6.5, 7.3–7.7, 8.3 and 8.4.

Claim: every claim carries its locator.

Witness: the References list gives locators by layer only. Several targets have no locator anywhere: 1.5 (order and traces), 3.4 (external products), 4.1 (Atkinson), 4.3 (Hilbert-module Stinespring), 5.4 (`KK_i(ℂ,B)≃K_i(B)`), 5.5, 6.3 and 9.3.

Repair: put the locator in parentheses at each claim. These locators were checked in this review:
- 1.3: Blackadar1998 Definition 5.5.1 and Example 5.5.3, lines 1605 and 1622.
- 1.5: Blackadar1998 §§6.3 and 6.9.
- 2.1–2.2: Blackadar1998 Definition 8.1.1 and Examples 8.1.2, line 2779.
- 3.1: Blackadar1998 Definition 9.1.1 and Theorem 9.2.1.
- 3.2: Blackadar1998 Theorem 9.3.1 and 9.3.2.
- 5.1: Blackadar1998 Theorem 13.6.2.
- 5.2: Blackadar1998 Definitions 17.1.1 and 17.3.1.
- 5.3: Blackadar1998 Theorem 19.7.1.
- 5.4: Blackadar1998 Proposition 17.5.5, line 6740.
- 5.5: Blackadar1998 §17.11, line 7133.
- 6.2: Blackadar1998 Theorems 18.4.3 and 18.6.1.
- 6.4: Blackadar1998 Theorem 19.5.7.
- 7.2: Blackadar1998 Theorem 20.2.7(a).
- 7.7: Roe2017 Lemma 19.1.
- 8.5: Blackadar1998 Theorem 23.1.3.
- 9.1: Blackadar1998 Definition 25.1.1.
- 9.3: Blackadar1998 Theorem 25.3.1, line 11482.
- 9.5: Blackadar1998 Theorem 25.6.1.

Add standard sources for Atkinson's theorem, the Hilbert-module Stinespring dilation, the universal property of KK (6.3) and Ext/Tor over ℤ (8.2).

## R09 (P3) — Eight definitions have no Checks; API is in prose, not bullets

Location: README 1.4 (the category of finitely generated projective modules), 3.4 (external product), 4.3 (`E_φ`), 5.4 (`KK_i` and the K-homology identification), 5.5 (unbounded cycles), 6.3 (quasihomomorphisms and the KK-category), 7.1 (equivariant cycles) and 9.3 (composition of asymptotic morphisms).

Claim: every definition has its API and at least three discriminating Checks.

Witness: these subsections contain no `**Checks.**` block. No subsection of the README lists its API as bullets.

Repair: add three Checks to each. Values computed in this review can serve:
- 1.4: `[ℂⁿ]↦n`; the idempotent `[[1,1],[0,0]]` has range projection diag(1,0) and class 1.
- 3.4: `[z_s]×[z_t]=q*β` of rank 0, and `[1]×x=x`.
- 5.4: `(x−i)/(x+i)=exp(2πit)` exactly for `x=−cot(πt)`, and `KK₁(ℂ,ℂ)=0`.
- 7.1: the trivial group gives KK.
- 9.3: the composite of `(1+1/t)φ` and `(1+1/t)ψ` is equivalent to ψφ for every `r(t)→∞`.

State each definition's API as bullets.

## Verified sound

**Gate and direction.** The worker's gate at this head: `set_option=0 blob=0 latex=0 … depcheck=0 metadata=0 stray-files=0 … build=0 OK`. The dependency check I ran printed `depcheck: 239 roadmaps, 2368 edges, 0 problem(s)`: no UPWARD or CYCLE line. Nothing changes outside the folder (`git diff --stat origin/main...HEAD` lists only the three folder files). `scratch/overlaps.md` reports no other pull request changing this roadmap and no dropped ids.

**Elaboration and signatures.** `lake env lean` on `TauCetiRoadmap/OperatorKTheory/Suggested.lean`: four `declaration uses 'sorry'` warnings (lines 57, 84, 97, 116), nothing else. A scratch file with `#check @name` for all six declarations elaborated. Each type matches its README statement:
- Both BDF theorems carry `[CompleteSpace H] [SeparableSpace H]`.
- `essentialSpectrum` drops `[CompleteSpace H]`, which its body (`IsFredholm`) does not need.
- The close-projection theorem is over a unital `B`; README 1.1 covers the nonunital case through the unitization.

The `signatures.md` entry "class `in`" at line 70 is a parse of the docstring phrase "class in the Calkin algebra", not a declaration. I changed nothing in the pull request. The repairs to R02–R04 were tested on a scratch copy: two `sorry` warnings and no errors.

**One-tactic probe.** On scratch copies, each of the four `sorry`s was replaced by `first | rfl | simp | simp_all | infer_instance | trivial | decide | tauto`, and separately by `exact?`. All eight attempts fail, so none of the four theorems is a one-line library consequence. R02 rests on headline status, not on the probe.

**Library declarations opened at the pins** (Mathlib 1b1ccf4b, Tau Ceti 2fd255d9):
- `ContinuousLinearMap.IsFredholm` (`Mathlib/Analysis/Normed/Operator/Fredholm/Basic.lean:123`; fields strict map, closed range, finite kernel, `CoFG` range, complemented kernel), `FredholmPackage` (178), `isFredholm_iff_exists_isQuasiInverse` (368), `IsFredholm.index_comp` (613), `index_continuousOn_isFredholm` (`Open.lean:104`).
- `LinearMap.index` (`Mathlib/Algebra/Module/LinearMap/Index.lean:39`, `finrank ker − finrank coker`; its junk value is never evaluated, since the theorems evaluate it only off `σ_e`).
- `NonlinearRightInverse` (fields `toFun`, `nnnorm`, `bound'`, `right_inv'`: no continuity, as README line 109 says).
- `Unitary.mem_pathComponentOne_iff` (`Mathlib/Analysis/CStarAlgebra/Unitary/Connected.lean:337`), `CStarMatrix.conjTranspose` (`CStarMatrix.lean:101`).
- `SimpleGraph.mulCayley` (`Cayley.lean:36`; `mulCayley_adj'`, line 46: `u≠v ∧ ∃ g∈s, u*g=v ∨ u=v*g`, so edges are `g—g·g_i` as README line 1150 says).
- `Algebra.GrothendieckAddGroup` (`of` injective only for cancellative monoids, `GrothendieckGroup.lean:42, 50`).
- `LocallyConstant.freeOfProfinite`, `ShortComplex.ShortExact.extClass` and `CategoryTheory.Tor`, all resolved by `#check`.
- `LowerHemicontinuous.exists_continuous_selection` (`Michael.lean:108`).
- Tau Ceti: `isFredholm_one_sub` (`Analysis/Fredholm/CompactPerturbation.lean:64`), `Continuous.isLocallyConstant_index` (`ContinuousFamily.lean:54`), `Path.index_eq` (81), `TauCeti.SplitK0` (`CategoryTheory/GrothendieckGroup/Split.lean`), `IsPartialIsometry` (`Algebra/Star/PartialIsometry.lean:52`).
- Searches that came back empty: no lp reindexing equivalence, regular representation, Calkin algebra or essential spectrum exists in Mathlib or Tau Ceti. So the BDF definitions are not duplicates, and the docstring's "not statable" claims hold.

**Cross-roadmap citations resolved (34).**
- On main (eaf17b1):
  - OperatorAlgebraDynamics: D1 (`ℂ⋊G≃C*(G)`, line 138), D2 (independence of the faithful representation 152, expectation 168, regular quotient 172, weak containment and absorption 186–189), D3 (221), D4 (Takai 264), D6 (`O_n` 457).
  - BanachAlgebras: Layer 1.2 (renorming, lines 261–262) and Layer 2.
  - GrothendieckEulerForms: Layers 1–2.
  - TopologicalKTheory: T1–T7 (tautological transition `s₀=z·s∞`, lines 146–150; dual Koszul symbol −β, line 159; T2 external products, line 741; T6).
  - VonNeumannAlgebras: V0 (Gelfand–Naimark, line 298) and V11 (Pontryagin duality, lines 3149–3165).
- At the heads:
  - CStarAlgebras 33ddcef: C1.4 (quasicentral units, line 385; 6.1 extends them to countable estimates), C1.6, C1.7, C5.4 (1203), C5.5 (1230), C6–C7, C8.2 (1617), C8.4 (1676), C9.2 (1763).
  - HilbertModules bbc2ad5: H1 (161–166), H2 (196–224), H3, H4 (337), H5 (418–425), H6 (725), H7.
  - AlgebraicKTheory 40dd76a: A1, A2, A6 (545), A8 (660–700). A8 covers complete algebras only, so K2.LocalNormed is a genuine extension.
- Consumers that cite this roadmap: FreeProbability (79, 308, 406), NoncommutativeGeometry (57, 477, 605), OperatorTheory (68, 83), ToeplitzOperators (27; the anchor `#k4-fredholm-indices-and-extensions` resolves), SeibergWittenTheory (23, 100), GeneralizedCohomology (45, 1820) and FactorRigidity (988) on main; CStarClassification (db5a0c5) and IndexTheory (ce2d41a) at their heads. Every cited id exists here.
- CStarClassification lines 384 and 445 cite "OperatorKTheory K3 (continuity …)". Continuity is in K2.3 here and was in K2 at d1b2465 too, so this is CStarClassification's slip, not an id this pull request drops.

**Ownership.** Searched by object with `roadmaps grep` over main and the 466 open heads:
- Brown–Douglas–Fillmore and essential normality: no other owner.
- Bartle–Graves: none.
- Hilbert-module Stinespring: FreeProbability consumes 4.3.
- Atkinson: IndexTheory consumes K4.
- Quasicentral units: CStarAlgebras C1.4, consumed here.
- Close projections: CStarAlgebras C9.2 (R06).
- Calkin algebra: CStarAlgebras C1.6 (R01).

**Sources read at their locators** (the seeded sample):
- **1.3:** Blackadar1998 Definition 5.5.1 and Example 5.5.3, lines 1605–1622. The standard picture `[e]−[p_n]` matches.
- **1.4:** Roe2017 Lectures 10–12 (Proposition 10.2, line 1731; Fredholm pairs, line 2032). These support the layer, but there is no locator at 1.4's claims (R08).
- **1.5:** no locator (R08).
- **2.2:** Blackadar1998 Definition 8.1.1, line 2779. Nonunital matrices have diagonals in `1+A` (line 2774).
- **3.1:** Blackadar1998 lines 2990–3008. `f_e(z)=ze+(1−e)` and the Bott map `[f_e f_{p_n}⁻¹]` (Definition 9.1.1) match, as does Theorem 9.2.1.
- **3.4:** no locator (R08).
- **4.1:** no locator for Atkinson's theorem (R08).
- **5.1:** Blackadar1998 Theorem 13.6.2, line 4976 (ungraded; the graded version is a target here).
- **5.2:** Blackadar1998 Definitions 17.1.1 and 17.3.1, lines 6231 and 6483. The three compactness conditions and `KK_n=KK(A,B⊗̂C_n)` match.
- **5.4:** no inline locator. Blackadar1998 Proposition 17.5.5 fits (R08).
- **6.4:** Blackadar1998 Theorem 19.5.7, line 8700 (semisplit, σ-unital, D separable).
- **7.6:** Cuntz1981 (journal open archive, OCR): Theorem 1.5 (p. 105, line 164), §2.1 (p. 106, lines 191–199, `K(O_n)=ℤ/(n−1)`) and §2.4 (p. 107, lines 229–242, `O_∞` as limit of the `E_n`, `K_*(A⊗O_∞)=K_*(A)`).
- **7.7:** Roe2017 Lemma 19.1, lines 3460–3467 (winding −1).
- **9.3:** no locator. Blackadar1998 Theorem 25.3.1, line 11482, fits (R08).
- **9.5:** Blackadar1998 Theorem 25.6.1, line 11995. The source allows additive targets. The README restricts to abelian targets, where its kernel-and-image half-exactness is defined, so the README is narrower but consistent.

Further locators checked:
- Blackadar1998: 10.2.1 (3370), 12.4.2 (4721, identical hypotheses to 6.1), 15.7.1 (5662), 16.2.1 and 16.2.2 (5956–5969, matching both Lean statements), 18.4.3 (7644), 18.6.1 (7823), 19.7.1 (8769), 20.2.7 (9112), 21.2.2 and its remark (9541, 9578), 22.3.4 (9924, N1–N4), 23.1.1 (10153), 23.1.3 (10169), 23.5.1 (10253) and 25.1.1 (11272, `t∈[1,∞)`).
- Phillips2006: Remark 1.2 (95), Lemma 1.5 (131), Definition 1.6 (139) and Theorem 1.9 (162–171).
- ManuilovThomsen2005: hypotheses (8–13) and Theorem 3 (257–266). The six maps, read with `Ext⁻¹(A,B)=KK₁(A,B)` and `Ext⁻¹(A,SB)=KK₀(A,B)`, match README lines 1008–1009.
- Messerschmidt2016: Theorem 5.1 (677–679).

**Adversarial table.**

| Statement (README) | Instances tried | Values computed | Result | Change |
|---|---|---|---|---|
| 1.2 V(A) | ℂ with `v=(1 0)`; B(H) | `v*v=diag(1,0)`, `vv*=1`; `[1]+[1]=[1]`, K₀(B(H))=0 | holds | none |
| 1.3 nonunital K₀ | A unital; ℂ; C₀(ℝ²); K | `ℂ⁺≅ℂ×ℂ`, `ker K₀(ε)=ℤ×0`; V(C₀(ℝ²))=0 but K₀=ℤ (Blackadar 5.5.3); `[e₀₀]` generates K₀(K) | holds | none |
| 1.4 projective modules | A=ℂ; idempotent `[[1,1],[0,0]]` | `[ℂⁿ]↦n`; e²=e, range span(1,0), range projection diag(1,0), class 1 | holds | R09 |
| 1.5 trace pairing | M_n with tr/n; C(X) with ev_x; K | rank one ↦1/n, `[1_k]↦k`; rank at x; K has no tracial state | holds | R08 |
| 2.1–2.2 K₁ | C(𝕋), C(S³), ℂ, C₀(ℝ) | `[z]↦1`, `[z*]=−[z]`; U₁(C(S³)) connected, SU(2) class nonzero (Blackadar 8.1.2(c)); `2·4^(−1/2)=1`; exp(2πit) generates | holds | none |
| 2.4 LocalNormed | ℂ[z] on D̄; germs near D̄; g=1/10 | `(z−2)⁻¹` not a polynomial; `h(f(z))` holomorphic near D̄; `|g⁻¹−1|=9` | holds | none |
| 3.1 Bott (headline) | e=1 in ℂ; H(r,s); θ(b[1]) | winding +1; four boundary identities hold without ep=pe; w(0,t)=1, w(1,t)=diag(u,u⁻¹); clutching of `we₁` has degree +1, L has `s₀=z·s∞` (+1), so θ(b_ℂ[1])=β | holds | none |
| 3.2 six-term (headline) | Toeplitz; split; B(H)→Q(H) | `δ₁[z]=0−[e₀₀]=−1=index S`; 0; `K₁(Q)≅ℤ` | holds | none |
| 3.3 pullback MV | A₂=0; Q=0; neither leg onto: ℂ⇉C(S¹) | D=J; D=A₁×A₂; P=ℂ, so ∂:ℤ→K₀(P)=ℤ must be injective and zero: exactness fails | one-leg hypothesis needed, present | R07; source issue |
| 3.4 external product | 𝕋² | `K₀=K₀⊗K₀⊕K₁⊗K₁=ℤ²`, basis `[1]`, `q*β` of rank 0 | consistent with 8.5 | R08, R09 |
| 3.5 Fréchet criterion | C¹(𝕋) with `‖f‖+‖f′‖` | `|||fg|||≤|||f|||‖g‖+‖f‖|||g|||`, C=1 | holds | none |
| 4.1 Atkinson (headline) | S; δ_n↦δ_2n; dim H<∞ | index −1; left-invertible, infinite cokernel, not Fredholm; Q(H)=0, index 0 | holds | R01, R08 |
| 4.2 graded pairs | S on ℓ²⊕ℓ²; ℂ^(1\|1) swap | 0−1=−1; kernels 0 | holds | none |
| 4.4 complete pairs | even/odd; e_3n, e_3n+1; B=0 | `S₀S₀*+S₁S₁*=1`; sum 1−R, R of infinite rank; `U*U=UU*=1`, `Us_i=t_i`; 0=1 in L(0) | holds | none |
| 4.5 Ext group (headline) | Toeplitz; (M_n,K); C(X) | nonsplit (index −1 vs 0); stable 0 vs unital ℤ/n; inverse via S* | holds | none |
| 5.1 Clifford | e₁, e₂; s e₂+t e₁ | e₂²=1, e₁e₂=diag(−i,i)=−e₂e₁; block t−is=−iz (+1), s−it=z̄ (−1); pq+(p+q)r=qr+p(q+r) | holds | none |
| 5.2 cycles | (A,id,0); diag(a,a,…); rotation to W | (0²−1)a compact; 1⊗a∉K⊗A; {W,F⊕−F}=0 | holds | none |
| 5.4 degrees | x=−cot(πt) | `(x−i)/(x+i)=e^(2πit)` exactly, winding +1; KK₁(ℂ,ℂ)=0 | holds | R08, R09 |
| 6.2 associativity (headline) | 1_D; two odd classes | x⊗1_D=x; adapter sign (−1)^(1·1)=−1; hypotheses vs 18.4.3/18.6.1 (D separable, forced by 5.2's domain) | holds | none |
| 6.4 KK₁ | Toeplitz; cone | product −1; exp(2πit) | holds | none |
| 6.5 Manuilov–Thomsen | (M_n,K); C(X) | ℤ→ℤ is ×n, U=ℤ/n; unit evaluation onto | matches Theorem 3 | none |
| 6.6 index pairing | [P,u]; Pu*P; 1−P | δ₋₁↦δ₀ (rank one); 0−1=−1; 1−0=+1; (1−P)u(1−P) has index +1 | holds | none |
| 7.2 Green–Julg (headline) | trivial G; ℤ/2 on ℂ; p_G | p_G=1; R(ℤ/2)=ℤ²=K₀(ℂ²); p_G*=p_G (inversion invariance), p_G²=p_G | holds | none |
| 7.3 free groups (headline) | Γ_n; tree defect; n=0,1; ideal map | g_iΓ_n=Γ_n, g_nΓ_n=Γ_n∖{1}; defect on [g⁻¹,1], range in edges of [1,g]; `[ρ(p)P₁]=[p]−[α_(g_n⁻¹)(p)]`; δ₁[u_n]=−[1]; (ℤ,0), (ℤ,ℤ) | holds | none |
| 7.4 PV and A_θ (headline) | UaU*=α(a); θ=1/2; θ∈ℤ | (1−α⁻¹_*)(−α_*)=1−α_*; τ_*(a,b)=a+b/2, range ½ℤ, kernel ℤ(1,−2); θ∈ℤ gives range ℤ | holds | none |
| 7.5 twisted centre | cocycle; rotation cocycle; d=0 | W_xW_y=c(x,y)W_(x+y); W_xW_yW_x*=ρ(x,y)W_y; C_ρ = 0, qℤ², ℤ²; d=0 gives ℂ | holds (Phillips 1.9) | none |
| 7.6 Cuntz (headline) | n=1,2,3 | vacuum (1−n)[1]; K₀(O₂)=0, K₀(O₃)=ℤ/2; n=1 gives ℤ | holds (Cuntz 1.5, §§2.1, 2.4) | none |
| 7.7 Connes–Thom (headline) | x(t)=(1−t)p+tα(p); u(x) | x(1)=α(x(0)); boundary b_A(α_*−1) through H; arg u from 2π to 0, winding −1 | holds (Roe 19.1) | none |
| 8.1 bootstrap | 0; Sℂ; O_n | 0→ℂ→ℂ→0; Cℂ contractible; E_n∼ℂ, K∼ℂ | holds | none |
| 8.3 UCT (headline) | A=ℂ; (O_n,ℂ); degree pairs | Ext terms 0; KK₀=0, KK₁=Ext(ℤ/(n−1),ℤ)=ℤ/(n−1); j+2≡j | holds | none |
| 8.4 BDF (headline, Lean) | S; S⊕S*; disc; dim H<∞ | S*S−SS*=e₀₀, index −1 inside 𝕋; −1+1=0; Ext=0; finite-dimensional: σ_e=∅, both sides true | true; hH superfluous | R04 |
| 8.5 Künneth (headline) | O₃⊗O₃; A_θ⊗A_θ′ | K₀=ℤ/2, K₁=Tor(ℤ/2,ℤ/2)=ℤ/2; ℤ⁴⊕ℤ⁴=ℤ⁸ | holds | none |
| 9.1 asymptotic morphisms | (1+1/t)φ; φ_t=2a | defect −(1/t)(1+1/t)φ(ab)→0; 2−4=−2 | holds | none |
| 9.2 Bartle–Graves (Lean) | ℓ^∞→ℓ^∞/c₀; r=0; ℝ²→ℝ | no linear section; s(0)=0; ‖s y‖≤‖y‖/δ | true | R02, R05 |
| 9.3 composition | (1+1/t)φ, (1+1/t)ψ | composite (1+1/r(t))(1+1/t)ψφ∼ψφ for every r→∞ | holds | R08, R09 |
| 9.4–9.5 E-theory (headline) | E(ℂ,ℂ); (O_n,ℂ) | ℤ with identity 1; E₀=KK₀=0, E₁=KK₁=ℤ/(n−1) | holds | none |
| Lean close projections | p=diag(1,0), q at angle φ<π/2 in M₂; B=0 | z−1=(q−p)(2p−1), ‖z−1‖≤sin φ<1; u rotation by φ, upu*=q, ‖u−1‖<2; B=0 trivial | true | R02, R06 |

## Not verifiable

- Pimsner–Voiculescu 1982, Julg 2013 and Schochet 1984 were not read in this round. They lie outside the seeded sample, and the README flags none of their locators as unverified. The mathematics of 7.3 was checked directly (table row 7.3).
- Ownership was checked against the open pull requests whose heads the brief provides and against every open head through the grep tool. No open pull request was left unchecked.

## Source issues

- **Error** in Blackadar1998 at the remark after Theorem 21.2.2, printed p. 220 (Blackadar1998 line 9578): the source says the surjectivity of both maps of the pullback square may be dropped; it should say one surjective map suffices: two unital inclusions ℂ→C(S¹) break exactness at K₁(C(S¹)); affects nothing.
