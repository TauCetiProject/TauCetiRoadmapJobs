# Review of AbelianVarietiesOverFiniteFields (pull request #1720 at 3ef7d74)

**Verdict:** needs changes

Full review (293 changed lines since `e6d7112`). The previous report's one finding is accounted for under `## Previous findings` (it is not repaired and is carried as R02). The whole README and `Suggested.lean` were reviewed, changed or not; the gate, the dependency check, the elaboration, the padding probe, the seeded source sample, the cross-roadmap citations, the pinned declarations and the LMFDB conventions were checked as recorded under `## Verified sound`. One blocking finding (R01) and four P3 findings.

## R01 (P2) — §1.0 plans the Weil-polynomial objects that CurvesOverFiniteFields Layer 1, earlier in the merge order, already owns; the "Downstream consumers" paragraph states the opposite supply direction

**Location:** `TauCetiRoadmap/AbelianVarietiesOverFiniteFields/README.md:409–501` (§1.0: `IsWeilPolynomial`, `IsWeilSymmetric`, the real Weil polynomial `h`, slopes, `p`-rank, ordinary/supersingular, elevation, angle rank, Weil powers, twists, `weilRoots`, geometric extension degree, virtual counts), `:97` ("Polynomial Weil operations needed here are §1.0"), and `:2292–2294` ("CurvesOverFiniteFields consumes §1.0's polynomial operations, §4.6's elliptic existence list, and §10.4's surface Jacobian criterion … These consumers supply no input to this roadmap").

**Claim:** this roadmap owns the polynomial-level theory of Weil `q`-polynomials and CurvesOverFiniteFields consumes it.

**Witness:** the merge order lists `CurvesOverFiniteFields` at line 343 and `AbelianVarietiesOverFiniteFields` at line 381, so CurvesOverFiniteFields is the earlier roadmap. At its head (`24a1c2bb`) its README owns exactly these objects: line 62–66 ("**Weil polynomials as combinatorics on `ℤ[T]`** (Layer 1) … the contract offered to the comparison with abelian varieties (`AbelianVarietiesOverFiniteFields`) is 1.1–1.11, imported by section, with none of its objects defined a second time"), lines 76–85 (the list `IsWeilPolynomial`, `IsWeilSymmetric`, `realWeilPolynomial`, `pRank`, `IsOrdinary`, `IsSupersingular`, `frobeniusAngles`, `angleRank`, `weilPower`, `virtualCurveCount`, `virtualAbvarCount`, `IsTwistOver`, `twistDegree`, `weilRoots`, `geometricExtensionDegree`, the factorization predicates of 1.9 and the number field and Galois group of 1.8, "offered here by section"), its Layer 1 at lines 418–1007, and its line 1383 ("the polynomial constructions are owned here, the geometric comparisons are the consumer's, and it supplies nothing here"). It has no `*Needs:*` line citing this roadmap, and its line 1222 says Waterhouse's list "is neither an input nor a milestone here". So the two roadmaps own the same objects, and the claim at line 2292 that CurvesOverFiniteFields consumes §1.0, §4.6 and §10.4 is false at that head. (At the previous round the resolution went the other way because CurvesOverFiniteFields then consumed this roadmap's §§4.6, 5.3–5.6, 10.6; its head no longer does, and the merge order now fixes the direction.)

**Repair:** delete §1.0 and import its objects from CurvesOverFiniteFields §§1.1–1.11 by section: add a `From CurvesOverFiniteFields` entry to the supplier contracts naming, per section, the predicate and Weil numbers (1.1), finiteness and the coefficient bounds (1.3), the real Weil polynomial (1.4), slopes, `p`-rank, ordinary/supersingular/almost ordinary and elevation (1.6), angles and angle rank (1.7), number field and Galois group (1.8), the factorization predicates (1.9), Weil powers, twists, `weilRoots`, geometric extension degree and geometric irreducibility (1.10), and the virtual counts (1.11); replace every "§1.0" in `*Needs:*` lines, Conventions and milestones (1.3, 1.4, 3.3, 4, 5.1–5.7, 6.2–6.5, 7.1, 7.4–7.5, 9.1, 11.2) by the corresponding CurvesOverFiniteFields section; move line 97's clause to "polynomial Weil operations are CurvesOverFiniteFields Layer 1"; rewrite lines 2292–2294 so that CurvesOverFiniteFields is a supplier, not a consumer (SatoTateGroups may stay as a consumer: its line 159 lists this roadmap among the siblings it does not own). Keep here only what its Layer 1 lacks, stated as this roadmap's own target with a Check (the Jacobian-compatibility conditions of 7.4 are its 3.4 and 1.11). Tested on the instance that refutes the original: with Curves at 343 and this roadmap at 381, a `*Needs:*` edge to CurvesOverFiniteFields is downward and the dependency check stays at 0 problems; the reverse edge would be UPWARD for CurvesOverFiniteFields.

## R02 (P3) — 8.4 still cites the proper-ideal lemma where the pin states the quadratic Gorenstein fact itself (carried from the previous review)

**Location:** `TauCetiRoadmap/AbelianVarietiesOverFiniteFields/README.md:1592–1593` ("an order in a quadratic field is Gorenstein (Tau Ceti `Quadratic.lean`, `isProperFractionalIdeal_iff_isUnit_of_finrank_eq_two`: proper ideals are invertible)"), the `*Needs:*` line at 1603, and the supplier contract at 261–266.

**Claim:** the quadratic Gorenstein statement is consumed from the pinned proper-ideal criterion.

**Witness:** `TauCeti/NumberTheory/NumberField/Global/Orders/Gorenstein.lean:454` at Tau Ceti `358314d4` states `NumberFieldOrder.isGorenstein_of_finrank_eq_two : Module.finrank ℚ K = 2 → O.IsGorenstein` outright; `isGorenstein_of_finrank_eq_two` occurs nowhere in the README (`grep` of the head: no match).

**Repair:** as in the previous review: cite `isGorenstein_of_finrank_eq_two` (`Gorenstein.lean`) for the quadratic Gorenstein fact at 1592 and in the contract at 261–266, keeping `isProperFractionalIdeal_iff_isUnit_of_finrank_eq_two` for the proper-ideal equivalence where 8.4 uses it.

## R03 (P3) — the supplier name `finite_weilPolynomials` does not exist in FaltingsFinitenessAndIsogenyTheorems

**Location:** `TauCetiRoadmap/AbelianVarietiesOverFiniteFields/README.md:339–340` ("From *Faltings finiteness and isogeny theorems*, R28.5.1 `finite_weilPolynomials`: finitely many monic integer polynomials of degree `n` with all roots of absolute value `r`").

**Claim:** R28.5.1 of that roadmap declares `finite_weilPolynomials`.

**Witness:** FaltingsFinitenessAndIsogenyTheorems at its head (#1004): `### R28.5.1 Finitely many Weil polynomials` states the theorem in prose and names only Mathlib's `Polynomial.finite_mahlerMeasure_le` and `Polynomial.mahlerMeasure_eq_leadingCoeff_mul_prod_roots` (its `*Needs:*` line); its `Suggested.lean` (215 lines) has no `finite_weil…` declaration; `roadmaps grep --fixed 'finite_weilPolynomials'` matches only this README's line 339.

**Repair:** cite R28.5.1 by its heading, "Finitely many Weil polynomials", without a Lean name (or name Mathlib's `Polynomial.finite_mahlerMeasure_le`, `Mathlib/NumberTheory/MahlerMeasure.lean:107`, which the pin has); the same at line 420 of §1.0 if that section survives R01.

## R04 (P3) — 10.4 (A) gives a false reason for (iii) being vacuous at `p = 2`

**Location:** `TauCetiRoadmap/AbelianVarietiesOverFiniteFields/README.md:2092` ("(iii) is vacuous for `p = 2`, where `T⁴ + (2 − 2q)T² + q²` is supersingular").

**Claim:** for `p = 2` the polynomial `T⁴ + (2 − 2q)T² + q²` is supersingular.

**Witness:** `q = 4`: `T⁴ − 6T² + 16` has `2`-adic coefficient valuations `(4, 0), (2, 1), (0, 4)`; the lower hull breaks at `(2, 1)` (the chord from `(0, 4)` to `(4, 0)` passes through `(2, 2)`), so the `4`-normalized slopes are `{1/4, 1/4, 3/4, 3/4}`, not all `1/2`: `p`-rank `0` and not supersingular. (At `q = 2`, `T⁴ − 2T² + 4` has valuations `(4,0),(2,1),(0,2)` on one line and is supersingular, which is the only case the sentence gets right.)

**Repair:** replace the reason by the one that holds for every `q = 2^r`: "(iii) is vacuous for `p = 2`, where `p ∣ b = 2 − 2q` makes the class non-ordinary (6.2's criterion `IsOrdinary ↔ p ∤ coeff g P`), so it is outside case (A)". The conclusion of (A) is unchanged.

## R05 (P3) — the Provenance section misdescribes two of the files it cites

**Location:** `TauCetiRoadmap/AbelianVarietiesOverFiniteFields/README.md:2441–2443` ("`q`-Weil numbers of weight `w`, algebraic integers all of whose complex embeddings have absolute value `q^{w/2}`") and `:2447–2449` ("the reciprocity of `Reciprocity.lean` is the self-duality of a cohomological trace datum").

**Claim:** the cited `WeilNumbers.lean` defines a Weil number as an algebraic integer; `Reciprocity.lean`'s reciprocity is the self-duality.

**Witness:** at commit `55abf461`, `WeilConjectures/ZetaLinearAlgebra/WeilNumbers.lean` defines `IsWeilNumber q w α := IsIntegral ℚ α ∧ ∀ τ : ℚ⟮α⟯ →ₐ[ℚ] ℂ, ‖τ (gen)‖ = q ^ (w/2)`, with `IsIntegral ℚ` (algebraic over `ℚ`, by `isAlgebraic_iff_isIntegral` in the same file), no integrality over `ℤ`; `Reciprocity.lean` takes self-duality of the trace datum as the hypothesis and proves `D_i · P_{2d−i}(T) = ± charpoly(F_i)(q^d T)` (`TraceDatum.C_det_mul_P_rev_of_pairing`) as the reciprocity.

**Repair:** write "algebraic numbers (the file imposes no integrality) all of whose complex embeddings have absolute value `q^{w/2}`, so §1.0's integral predicate is strictly stronger", and "the reciprocity of `Reciprocity.lean` is the relation between the degree-`i` and degree-`(2d − i)` factors of a self-dual trace datum, not the reciprocity `α ↦ q/α` of `P_A`".

## Previous findings

- R01 (8.4 should cite `isGorenstein_of_finrank_eq_two`) — not repaired: lines 1592–1593 and 1603 still cite only `isProperFractionalIdeal_iff_isUnit_of_finrank_eq_two`, and the name `isGorenstein_of_finrank_eq_two` does not occur in the README. Carried as R02.

## Verified sound

**Scope.** Every passage of `README.md` (2501 lines) and `Suggested.lean` (153 lines) was read; the change set (the sep/alg-closure comparison in 1.2, the Kummer isomorphism and pointless-Jacobian clauses of 1.5, 2.1's Tate-module comparison and Check, 6.1's predicate remark, 7.2's determinant argument, 7.5's `Br(K) = 0` route, the new supplier contracts for SchemeAndStackFoundations §§2.9, 2.11, 3.6, JacobianChallenge Layers A and D, InverseGaloisAndArithmeticFundamentalGroups §IG.0.T1, DWP.1 §§1.6–1.7, Mathlib's `FiniteField.algEquivExtension`, the Provenance section, and `@[expose] public section`) was read line by line. `git diff --stat origin/main...HEAD` outside the folder is empty; the folder holds `README.md`, `Suggested.lean`, `metadata.toml`.

**Gate and dependency check.** My gate run from the worktree: every counter `0`, `OK`. The worker's gate at `3ef7d74` adds `build=0 OK`. The required dependency check against the board order (which now lists the roadmap at line 381, after HyperellipticCurves at 380):

```text
depcheck: 239 roadmaps, 2368 edges, 0 problem(s)
```

No UPWARD, CYCLE or `moved:` line. The worktree and main pin the same Mathlib and Tau Ceti revisions (`lake-manifest.json` identical in every `rev`); every declaration below was read at that pin.

**Elaboration.** A scratch copy of `Suggested.lean` with `#check @name` for all 15 declarations and for the Mathlib names the README cites elaborated with `lake env lean` in 18 s with exactly the four `sorry` warnings (lines 38, 89, 115, 148) and no other diagnostic on the roadmap's declarations. The elaborated types agree with `scratch/signatures.md` and with the README: `waterhouse` carries `[Field K] [Finite K] (hp : p.Prime) [CharP K p] (hr : 0 < r) (hq : Nat.card K = p ^ r)` and the five Waterhouse cases; `weakEquiv_iff_one_mem`, `isGorenstein_iff_forall_invertible` and `finite_pic` carry `[Module.Finite ℚ E] [IsReduced E]` and `IsOrder E Λ` (8.6, 8.4, 8.2 as the README states them); the four "dropped `[Algebra ℚ E]`" leads (`colon`, `multiplierRing`, `IsInvertible`, `WeakEquiv`) are definitions whose bodies use no ℚ-structure, so nothing is lost. `@[expose] public section` is the module-form header the targeted build needs; the build passed.

**Padding probe.** Each of the four admitted theorems, on a scratch copy, with `first | rfl | simp [all nine definitions] | infer_instance | decide | aesop`: all four leave unsolved goals (probe lines 46, 91, 117, 148). No padding; no `example`, no `set_option`, no sorry'd data.

**Headline inventory.** Stated: Waterhouse (4.6, `waterhouse`), the weak-equivalence colon criterion (8.6), the Gorenstein ideal criterion (8.4), Picard finiteness (8.2). Not statable and named in the module docstring: everything needing `AbelianVariety.frobenius` and `End.charpoly` (Layers 1–7, 11), the simple-isogeny-class carrier (Layers 3–5), canonical lifts (9.2), the Centeleghe–Stix representing objects (9.3), duals and polarizations (10.1–10.3), the curve-to-Jacobian functor (10.4, 10.6). The pinned `TauCeti/AlgebraicGeometry/AbelianVariety/` has `Basic`, `DimensionZero`, `End/{Basic,BaseChange,Trivial}`, `Hom/{Basic,BaseChange,Iso,Rigidity}`, `Isogeny`, `MorphismGroup`, `Product`, `Trivial`, `Albanese`, `TangentSpace`: no Frobenius, no characteristic polynomial, no dual. No statable headline is absent.

**Pinned declarations opened** (Mathlib `2fd255d9…` / Tau Ceti `358314d4`, by `#check` or file): `FiniteField.Extension` (`FieldTheory/Finite/Extension.lean:48`), `FiniteField.algEquivExtension` (`:130`, `l ≃ₐ[k] Extension k p n` from `finrank k l = n`), `FiniteField.algEquivOfCardEq` (`GaloisField.lean:246`, a `ZMod p`-algebra isomorphism, as 1.2 says), `PerfectField.ofFinite` (`Perfect.lean:308`), `Algebra.IsAlgebraic.isSeparable_of_perfectField` (`:338`), `separableClosure.eq_top_iff` (`SeparableClosure.lean:207`), `IntermediateField.topEquiv`, `SeparableClosure F := separableClosure F (AlgebraicClosure F)` (`IsSepClosed.lean:348`, so 1.2's `ι` is the inclusion of an intermediate field, as written), `littleWedderburn`, `Scheme.fpqcTopology` with `instance : fpqcTopology.Subcanonical` (`AlgebraicGeometry/Sites/Fpqc.lean:88`), `Polynomial.resultant` (`RingTheory/Polynomial/Resultant/Basic.lean:131`), `Polynomial.mahlerMeasure`, `Polynomial.finite_mahlerMeasure_le` (`NumberTheory/MahlerMeasure.lean:107`), `IsArtinianRing.equivPi` (`Artinian/Module.lean:623`), `IsArtinianRing.isField_of_isReduced_of_isLocalRing` (`Artinian/Ring.lean:76`), `AddCommGroup.equiv_directSum_zmod_of_finite`, `Module.End.IsSemisimple`, `isSemisimpleRing_iff_pi_matrix_divisionRing`, `IsBrauerEquivalent`, `Submodule.IsLattice`; Tau Ceti `TateModule` with `proj` (`Algebra/Module/Torsion/TateModule.lean:136`), `lift` (`:181`), `map` (`:218`), `map_id` (`:235`), `map_comp` (`:241`), `mapLinearMap` (`:295`); `AbelianVariety.End.baseChange` (`End/BaseChange.lean:74`), `Hom.baseChange` (`Hom/BaseChange.lean:57`), `baseChangeFunctor` (`:131`), `leftComp`/`rightComp` (`MorphismGroup.lean:192, 199`); `WeierstrassCurve.IsSupersingular` (`Supersingular.lean:86`, on `AlgebraicClosure K`, with the docstring's `𝔽₂(t)` example of an ordinary curve whose `2`-torsion is inseparable, exactly as 6.1 reports); `WeierstrassCurve.frobeniusTrace : WeierstrassCurve F → [Finite F] → ℤ`, `pointCount`; `NumberFieldOrder.isGorenstein_of_finrank_eq_two` (`Gorenstein.lean:454`) and `isProperFractionalIdeal_iff_isUnit_of_finrank_eq_two` (`Quadratic.lean:143`); `TauCeti.BrauerGroup.instCommGroup` (`Algebra/BrauerGroup/Group.lean:174`). Nothing cited from Mathlib or Tau Ceti is missing at the pin.

**Cross-roadmap citations resolved** (on main, or at the named open head):

| Citation | Resolved |
|---|---|
| SchemeAndStackFoundations (main) §2.9 `muEtale`; §2.11 `hilbert90`, `fppf_kummer_sequence` (fppf-exact for every `n`, étale-exact for `n` invertible); §3.6 `jacobian`, `picardComponent_zero`, `jacobian_dim`, `picardSheafPoints` with cokernel into `Br(k)`; §0.29 `qPowerFrobenius`; §4.14 Hilbert schemes (Noetherian base); §5.11 | lines 3582–3599, 3656–3669, 4905–4913, 1825–1953, 5706, 7273 |
| JacobianChallenge (main) Layer A (`Cl(X) ≅ Pic X` on a smooth curve, `Pic⁰ X = ker deg`); Layer D (projective Picard representability over any field, no rational point; obstruction sequence); Layer E (`Jac X` on `AbelianVariety k` for a pointed curve, dual, `f^∨`, `φ_L`, theta principal polarization compatible with field extension and independent of translation, `[n]` of degree `n^{2g}`) | lines 111–133, 218–232, 253–262, 298–331, 332–447 |
| DeligneWeightsAndPurity (#929) DWP.1 §1.1 (adapter, Tate action = arithmetic Frobenius, `H¹` pullback = geometric), §1.5 (counts), §1.6 (curve count through the Jacobian), §1.7 (`H¹(C_{K̄}, ℚ_ℓ) ≅ (V_ℓ J)^∨`, geometric Frobenius with polynomial `P_{π_J}`), §1.9; DWP.1 itself consumes JacobianChallenge Layer F, SchemeAndStackFoundations §3.6 and §IG.0.T1 for this comparison | lines 911, 970, 990, 1006, 1026; contract at 468–470 |
| InverseGaloisAndArithmeticFundamentalGroups (#850) §IG.0.T1: `H¹(C_k̄, ℤ/ℓⁿ) ≅ Hom(J_C[ℓⁿ](k̄), ℤ/ℓⁿ)` over a chosen separable closure, curve trace `1 − Tr(H¹) + q` | lines 479–505 |
| AbelianSchemesAndArithmeticModuli (#849) A0.2, A2.4, A2.5, A3.1–A3.13, A3.9 `Polarization.rosati`, A4.1 `AbelianTate` (`TateModule ℓ (A(K^{sep}))`, `OverField.tateModule` on `OverField.geometricPoints`, `map`, `modPow`, `dualPairing`), A4.5 `BarsottiTate.connectedEtale` (perfect field), A4.9–A4.10, A5.1, A6.1 `End.degRat`, A6.10 `End.charpoly_eval`, `End.charpoly_coeff_zero`, A6.11 `charpolyTate`, A6.21 `frobeniusSemisimple` (centrality over `𝔽_q`, `π^†π = q`, semisimple on `V_ℓ`), A6.30–A6.34 | lines 676, 1148, 1198, 1389–1755, 1686, 1822–1839, 1996–2010, 2344, 2362, 2511, 2826, 3014, 3028, 3344, 3698–3756 |
| AbelianSchemesAndArithmeticModuliPartII (rev/1405) F0.1–F0.5, F0.8, F1.1, F1.3, F1.5, F1.11 (`inv_v = [K:ℚ_p] ord_v π / ord_v p^a`), F3.1a–F3.1d, F3.2 (`2 dim A = [ℚ(π):ℚ]·√[End⁰:ℚ(π)]`), F3.8 (Waterhouse Thm 6.1), F3.10 | lines 2320–2422, 2531–2615, 2660–2916 |
| ArithmeticStatisticsPartI (#1171) "Supporting constructions": "Tate's theorem over a finite field" (both primes, commutants, isogeny criterion), "Finiteness of an isogeny class and of unpolarized classes" | lines 2518, 2544, 2550 |
| FunctionFieldArithmetic (rev/1474) §§5.3–5.4 (and 5.6) | lines 1807, 1838, 1888 |
| FaltingsFinitenessAndIsogenyTheorems (#1004) R28.5.1 "Finitely many Weil polynomials" (R03 for the name) | line 2007 |
| FiniteFlatGroupsAndIntegralPadicHodgeTheory (#879) R07.2.15, R07.2.16 | lines 3538, 3569 |
| PELModuli (#966) M0.1 `PositiveInvolution`, M0.2 `albertTypes`; ComplexMultiplicationAndExplicitReciprocity (#1254) 5.2; ShimuraVarieties (#933) §§5.5–5.8; HyperellipticCurves (rev/1707) Layer 1 | PEL line 41; CMER 779; SV 1539–1596; HC 755–931 |
| EllipticCurves (main) Layer 1 (`End(E)` an order of `ℚ(π_q)` containing `ℤ[π_q]`, the `y² = x³ + x` over `𝔽₅` instance) and Layer 3 (finiteness, `frobeniusTrace`, `IsSupersingular` on `E[p](Kˢᵉᵖ)`, the trace criterion, zeta); GlobalNumberFields (Completed) Layer 11; ClassFieldTheory (main) Layers 5 and 10 names; QuadraticFormInvariants (main) 7B `brauerCohomologyEquiv_crossedProductClass`; ClassicalArithmeticCompletion (main) §§7.4, 7.21, 7.49; AlgebraicCurves (main) Layers 4–5, 12; NewtonPolygons (main) §§1.1–1.3, 2.1, 3.3; EtaleCohomologyFoundations (main) §F.0.3 | EC 525–527, 683–769; GNF 571–595; CFT 566; QFI 2564; CAC 14393, 14867, 15568; AC 578, 624, 1468; NP 444–482, 512, 667; ECF 231 |
| CurvesOverFiniteFields (rev/1729), SatoTateGroups (rev/1725), QuaternionArithmetic (rev/1722) | R01; STG 159 (sibling, not owned); QA 105–107 and 2.2 (the quaternion Gorenstein instance, consistent with the boundary at lines 108–112) |

**Ownership against open work.** By object: the Weil-polynomial layer is also owned by CurvesOverFiniteFields Layer 1 (R01). The Gorenstein/Bass instance split with QuaternionArithmetic 2.2 is stated on both sides. Deligne modules, the Frobenius order, weak equivalence and the Picard group of an order in an étale algebra occur in no other readable sibling; the ideal-theoretic `Suggested.lean` declarations clash with no fully qualified name in a sibling `Suggested.lean`. Open pull requests without a checkout in the brief were read through `roadmaps show` where cited; others were not checked.

**Source sample** (cache ids by the manifest keys recorded this round):

| Target | Source, locator | Found |
|---|---|---|
| 1.4 | DWP.1 §1.9 (roots `a_i^m`), A6.11; Milne AV II §1 (`milne-av`, Theorem 1.1 line 3105) | as cited |
| 4.6 | `waterhouse1969` Theorem 4.1, printed 536 (marker page 17, lines 619–626): the five cases exactly as in `waterhouse`; the `𝔽₄₉` example (line 698: all `β ≤ 14` except `±7`) is 4.6's second Check | ✓ |
| 5.2 | Milne AV II §2 (`milne-av` line 3233 ff.), Part II F3.2 | ✓ |
| 5.6 | Part II F3.2, A6.34 (`QuadraticAbelianTwist`, line 3756), the knowl `av.twist` ("becomes isomorphic to `A` upon base change to an algebraic closure") | ✓ |
| 5.7 | Part II F3.2; knowl `av.fq.galois_group` not re-read (listed below) | — |
| 6.1 | A4.5 (connected–étale over a perfect field), EllipticCurves Layer 3 line 718 (`E[p](Kˢᵉᵖ) = O`), `Supersingular.lean:86` | ✓ |
| 6.5 | knowl `av.fq.angle_rank`: dimension over `ℚ` of the span of `{Arg(α_i)/2π} ∪ {1}` minus one | ✓ |
| 7.5 | FunctionFieldArithmetic §5.3 (line 1807), SchemeAndStackFoundations §3.6, JacobianChallenge Layer A, `littleWedderburn` | ✓ |
| 8.1 | ClassicalArithmeticCompletion §7.4 (`IntegralOrder.IsOrder` as `Submodule.IsLattice F`, line 14393), §7.21 (`IsMaximalOrder`, 14867), §7.49 (15568) | ✓ |
| 8.4 | `marseglia-icm` Proposition 2.11 (line 160, page 4), Proposition 3.7 (220, page 5); `centeleghe-stix` Theorem 11 (435–470, pages 9–10: `R_w = ℤ[F,V]/(FV − q, h_w)`, a 1-dimensional complete intersection, for `w` of even degree, which over `𝔽_p` is every finite `w`); Tau Ceti `Gorenstein.lean:372, 454` (R02) | ✓ |
| 9.1 | `deligne1969b` Théorème 7, printed 240–241 (lines 145–160: `F` semisimple with eigenvalues of absolute value `q^{1/2}`, at least half the roots `p`-adic units, `V` with `FV = q`); `howe1995` §4 ((4.4) dual, (4.5), line 383–388); `marseglia-sqfree` Theorem 4.3 (259, pages 6–7) | ✓ |
| 9.3 | `centeleghe-stix` Theorem 1 (86–92, pages 2–3), §1.7 (172–188, page 4: `T_*(A) = T(A^t)^τ`, `(T,F)^τ = (T, p/F)`), §1.5 (130–141: `A_w` with `R_w ≅ End(A_w)`, Theorem 25 at 754 for non-real `w`), Propositions 44–45 (1314, 1322, pages 28–29) | ✓ |
| 9.5 | internal (7.2, 9.2–9.4); Smith forms recomputed below | ✓ |
| 10.2 | 10.1, 9.4; `hnr2009` Theorem 1.4 (line 115, page 3) for the `g = 2` reading | ✓ |
| 10.3 | `hnr2009` Theorem 1.3 (Weil, line 89, page 3); Weil 1957 itself not readable (below); A2.4 (line 1148) | locator only for Weil |
| 10.4 | `hnr2009` Theorem 1.2 and Tables 1–2 (lines 33–77, pages 1–2: every row of the README's two lists matches), Theorems 2.1–2.4 (197–216, page 5), 3.1–3.2 (253–260, page 6), Theorem 10.1 (1078, page 22); `howe-char3` Theorem 1.1 (38–58, pages 1–2); `maisner-nart` §5 Tables 1–4 (832–847, pages 22–23) | ✓ |
| 9.6 | `waterhouse1969` Theorem 4.2 (716–726, printed 538–539: maximal orders / all orders containing `π` / orders containing `π` maximal at `p`), Theorem 4.5 (806–814, printed 539: `Pic`-homogeneous space, class number in the quaternion case), Theorem 7.4 (1342, printed 555) | ✓ |

**LMFDB knowls read this round** (the site answered without a browser check for these): `av.fq.newton_elevation` (lattice points `(x, y)`, `0 ≤ x ≤ g`, `y ≥ 0`, strictly below the polygon: §1.0's definition), `av.fq.angle_rank`, `av.fq.weak_equivalence_class` (local isomorphism at every maximal ideal), `av.fq.zfv_rel_disc_norm` (`|N(F − V)| = |Δ_R|/Δ_{R⁺}²`: 8.3's identity), `av.fq.endomorphism_ring_notation` (`[index]^{#weak·#Pic}_i`, `#weak` omitted when Gorenstein: 8.6), `av.fq.max_cohen_macaulay_type` (maximum over the overorders of `ℤ[F,V]`: 8.5), `av.fq.singular_dimensions` (`dim I/𝔓I` over `R/𝔓` at singular primes: 8.6), `av.twist` (5.6), `av.fq.one_rational_point` (Madan–Pal over `𝔽₂`, `𝔽₃`, `𝔽₄`: consistent with 7.1's `q ≤ 4`).

**Adversarial pass.** Exact arithmetic (the polynomial powers, counts and discriminant quotients by a scratch script over `ℚ` with companion matrices; the rest by hand).

| Statement | Instances | Values | Result |
|---|---|---|---|
| `waterhouse` (4.6) | `q = 2`; `q = 49`, `a = 7, ±14`; `q = 3`, `a = ±3, 0` | `q=2`: `a ∈ {−2,…,2}`: `±1` by `2 ∤ a`, `0` by odd `r`, `±2` by `a² = 4 = 2^{r+1}`; `q=49`: `7² = 49 = p^r` but `7 % 3 = 1`, no other case, excluded; `±14`: `196 = 4·49`; `q=3`: `9 = 3^{2}`, and `0` by odd `r` | matches Waterhouse 4.1 and his `𝔽₄₉` example |
| 1.2 count invariance | `𝔽₄ ⊂ 𝔽₁₆`, Frobenius `ω ↦ ω² = ω + 1`; `𝔽_p(t)`, `t^{1/p}` | the squaring map is a field automorphism, not `𝔽₄`-linear; `X^p − t = (X − t^{1/p})^p` inseparable, `ι` not onto | the two Checks separate the right hypotheses |
| 1.2 counts | `P = T² − 2T + 5`: `r = 1..4`; `T² − 2T + 2`: `r = 1..4` | `4, 32, 148, 640` (`|1 − (1+2i)^r|²`); `1, 5, 13, 25` | as stated (also 7.1, worked examples) |
| 1.5 Kummer, `ℓ = 3`, `q = 5` | arithmetic Frobenius on `J[3]`, on `μ₃`, on `H¹(ℤ/3)`, on `Hom(J[3], ℤ/3)` | `T² + T + 2` mod 3, trace `2`; `ζ ↦ ζ⁵ = ζ⁻¹`; `2 · (−1) ≡ 1`; inverse transpose trace `2 · 5⁻¹ ≡ 1` | traces `2 ≠ 1`: no equivariant `H¹(ℤ/3) ≅ J[3]`, as the Check says |
| 1.5 geometric Frobenius | `q = 5`, `π = 1 + 2i` | on `(V_ℓ J)^∨`: transpose of `π`, trace `2`, `1 − 2 + 5 = 4`; on `V_ℓ J`: `π⁻¹ = (1 − 2i)/5`, trace `2/5`, `28/5` | the twist is pinned |
| 1.5 pointless genus-2 curve | `y² + (x³ + x² + 1)y = x⁶ + x⁵ + 1` over `𝔽₂`, `𝔽₄` | at `x = 0, 1, ∞`: `y² + y + 1`, no root in `𝔽₂`, two in `𝔽₄`; at `x = ω`: `f/h² = ω`, trace `1`, none; counts `0, 6`; `a₁ = 3`, `e₂ = 5` | `P = T⁴ − 3T³ + 5T² − 6T + 4` |
| 2.1 Check | `y² = x³ + x` over `𝔽₅` | `x³ + x = x(x−2)(x−3)`, `#E = 4` (`x = 0, 2, 3` and `∞`; `x = 1, 4` give non-residues `2, 3`), `E(𝔽₅) = E[2] ≅ (ℤ/2)²`; `TateModule 2 (E(𝔽₅)) = 0`; `T₂E` has `det π = 5` | as stated |
| 5.2 | `(T² − 2)²` at `r = 2`; `T² − 2T + 2` at `r = 4` | `(T − 2)⁴`, multiplicity `4/2 = 2`; `(T + 4)²` | as stated |
| 5.6 twist degrees | `1.2.a`/`1.2.ac`/`1.2.c`; `1.2.ab`/`1.2.b`; `1.4.ae`; `1.5.ac` | `(1+i)/(i√2) = e^{−iπ/4}` order 8, `(1+i)/(−1+i) = −i` order 4, all eighth powers `16`; ordinary pair ratio `−1`, degree 2; over `𝔽₄` the roots `2ζ` give `a ∈ {±4, ±2, 0}`, four twists; `±(1+2i), ±i(1+2i)` give `a ∈ {±2, ±4}`, `(1+2i)⁴ = −7 − 24i`, degree 4 | as stated |
| 5.7 | `T² − 2T + 5`, `T² − 2`, `T − 2` | `ℚ(i)`, `C₂`; `ℚ(√2)` real; `ℚ`, trivial, Honda class of dimension 1 | as stated |
| 6.1 | ordinary `E/𝔽₅`; supersingular `E/𝔽₂`; `A = 0` | `E[5](K̄) ≅ ℤ/5`, rank 1; `E[2](K̄) = 0` with `E[2]` of order 4; rank 0 | as stated |
| 6.3 elevation | `T² + 2`; `(T² + 2)²`; `g` odd/even | heights `0, 1/2` → ceilings sum 1; `0, 1/2, 1` → 2 `= g(g+2)/4`; `(g+1)²/4 = 1` at `g = 1` | consistent with §1.0 |
| 6.5 | `1 ± i`; `1 ± 2i`; empty | `arg/2π = ±1/8`, rank 0; irrational, rank 1; rank `1 − 1 = 0` | as stated |
| 7.2 determinant | `2g`-dimensional `V_ℓ` | `det(π − 1) = (−1)^{2g} det(1 − π) = P_A(1) = #A(K) ≥ 1` | bijectivity needs no root bound |
| 7.2 / 9.5 Smith forms | `2i` on `ℤ[2i]` (basis `1, 2i`), on `ℤ[i]`, `−4` on `ℤ²` | `[[0,−4],[1,0]]` → `1, 4` → `ℤ/4`; `[[0,−2],[2,0]]` → `2, 2`; `(ℤ/4)²` of order 16 | as stated |
| 7.5 | `2.2.ad_f`; `y² + y = x⁵` over `𝔽₂` | `L(1) = 1 − 3 + 5 − 6 + 4 = 1`; `3` points (`x = 0` twice, `∞`), `5` over `𝔽₄` (`x = 0, 1` twice each, `∞`), `a₁ = 0`, `e₂ = 0`, `L = 1 + 4T⁴`, `h = 5` | as stated |
| 8.1 | `ℤ[2i]`; parity order in `ℤ²`; diagonal `ℤ` | overorders `{ℤ[2i], ℤ[i]}`, index 2; index 2; span of dimension 1 | as stated |
| 8.3 | `π = 1 + 2i`; `2.2.ad_f`; `2.3.b_ac` | `disc ℤ[2i] = 2²·(−4) = −16`, `N(4i) = 16 = 16/1²`; `N(π − V) = N_{F⁺}(8 − η²) = (81 − 45)/4 = 9 = 225/5²`; `N_{F⁺}(12 − η²) = (49 − 33)/4 = 4 = 4356/33²` | as stated |
| 8.4 | `ℤ[i]`; `ℤ[ε]`; `E = 0` | dual `½ℤ[i]`, `2ℤ[i]·½ℤ[i] = ℤ[i]`; dual `½ℤ + ℚε`, not a lattice; `0 = 0` | reducedness is the separating hypothesis |
| 8.5 | triples `≡ mod 2` in `ℤ³` | `Λ/2Λ` has maximal ideal spanned by `(0,2,0), (0,0,2)` with squares in `2Λ`; socle dimension 2 | type 2, as stated |
| 8.6 `weakEquiv_iff_one_mem` | `Λ = diag ℤ`, `I = ℤ²`, `J` parity; `Λ = ℤ[i]`, `I = Λ`, `J = 2Λ`; `E = 0` | `(I:J) = ℤ²`, `(J:I) = 2ℤ²`, product `2ℤ² ∌ 1`; `½Λ · 2Λ = Λ ∋ 1`; no maximal ideal and `1 = 0`, both sides true | as stated; Marseglia 4.1 |
| 9.1 Weil lattices | `(ℤ[2i], 1+2i)`; `(ℤ[√2], √2)`; `(ℤ, 2)` at `q = 2, 4`; `(ℤ², 2)` at `q = 4` | `V = 2 − F`, `FV = 5`; constant `−2`, admissibility fails; `|2| ≠ √2`; rank 1; `(T − 2)²`, constant `4 = q` | agree with Deligne Thm 7 (a)–(c) |
| 9.3 | `A = E²`, `A_w = E`; `T² − 2T + 2` at `p = 2`; `(T² − 2)²` | `(π_E, 0)` both ways; non-real, included; `√2 ∈ w`, excluded, dimension 2 in Honda–Tate | as stated |
| 10.1 positivity | `I = ℤ[i]`, `λ = i/2`, `ι = i`, `x = 1` | `b(i, 1) = Tr((i/2)(−i)) = 1`, `b(1, i) = −1`; `λI = ½ℤ[i] = Ī^t` | Howe (4.7) `Φ`-positive = `Im φ > 0`; the README's `b(x,y) = Tr(λ x̄ y)` makes `b(ιx, x) > 0 ⟺ λ` `Φ`-positive, consistent |
| 10.2 | `q = 2`, `(a,b) = (−1,−1)`; `(0,−3)` | `a² − b = 2 = q`, `b < 0`, no prime divisor: not principally polarizable; `a² − b = 3 ≠ 2`, `b = 1 − 2q`: polarizable, no Jacobian | HNR Thm 1.4 and Table 2 |
| 10.3 | genus-2 theta; `E₁ × E₂`; `Res E` | `Θ² = g! = 2`; `(E₁+E₂)² = 2E₁E₂ = 2`; `P_E(T²)`, odd coefficients 0 | as stated |
| 10.4 tables | the 14 rows | each row read against HNR Tables 1–2 (lines 46–71) | identical (R04 only for the `p = 2` remark) |
| 10.4 (A)(iii) at `p = 2` | `q = 2`; `q = 4` | `T⁴ − 2T² + 4`: slopes `{1/2}⁴`; `T⁴ − 6T² + 16`: valuations `(4,0),(2,1),(0,4)`, slopes `{1/4,1/4,3/4,3/4}`, `p`-rank 0 | R04 |
| 10.4 Checks | `q = 2`: `(2,1)`, `(1,1)`, `(0,−4)`, `(−3,5)`; `q = 9`: `(6,6)`; `q = 5`: `(0,0)` | `Res = 1`; `t² − 8 = −7`; row `q ∈ {2,3}, b = −2q`; no row; row `q ∈ {4,9}, s² = t² = 4q`; no split row (`f = 0`, `s² = t²`, `q` not a square) | as stated |
| 10.5 | `h = (x−2)(x−1)` at `q = 2`; `(x−2)·x` | `Res = 1`; `Res = 2` | as stated |
| 11.1 | `(1,5,[−2])`; `(2,2,[−3,5])`; `g = 0` | `1 − 2T + 5T²`; `a₃ = 2·(−3) = −6`, `a₄ = 4`; `L = 1` | as stated |
| Worked examples | `2.2.ad_f`, `2.3.b_ac`, `2.2.a_ae`, `1.2.ac`, `1.4.ae` | `#A = 1, 19, 76, 171`, curve `0, 6, 9, 10`, `P_{A,6} = (T² + 11T + 64)²`; `12, 48, 1296, 7104`, `5, 5, 44, 89`, `P_{A,3} = (T² + 8T + 27)²`; `1, 1, 49, 81`, `3, −3, 9, 1`; `1, 5, 13, 25`; `(2^r − 1)²` = `1, 9, 49, 225, 961, 3969, 16129, 65025, 261121, 1046529` | every number as stated |
| `finite_pic`, `Pic` | `Λ = ℤ[2i]` in `ℚ(i)`; `Λ = ℤ·1` in `ℚ²` (not an order) | `#Pic = 1` by the index formula `1·2/(1·2)`, `ℤ[i]` is not invertible (no class); the theorem carries `IsOrder`, so the non-order is outside its scope | as stated |
| `isGorenstein_iff_forall_invertible` | `Λ = 𝓞_E`; `ℤ[2i]` with `I = ℤ[i]` | dual invertible, every proper ideal invertible; `(I:I) = ℤ[i] ≠ Λ`, so `I` is not a counterexample although not invertible | both directions consistent with Marseglia 2.11 |

**Provenance links.** All eight GitHub files exist at the pinned commits and were read: `TateModule.lean` (over `AlgebraicClosure K`, `galoisRepresentation`, Frobenius fixes no nonzero vector), `RationalTateModule.lean` (`σ − 1` bijective over a finite field), `Isogeny.lean` (`[n]` of degree `n^{2g}`, finite flat kernel of order `n^{2g}`), `Torsion.lean` (`A(K)[n] ≅ (ℤ/n)^{2g}` over an algebraically closed `K`, `p ∤ n`), `Picard/Jacobian.lean` (`exists_commGrpObj_representableBy_picardFunctorDegree` over an arbitrary field with no rational point assumed, proper, smooth of relative dimension `g`, geometrically integral, representing `Pic⁰`), `WeilNumbers.lean` and `Reciprocity.lean` (R05), `WeilFactorization.lean` (roots of `P i` of absolute value `q^{−i/2}`), AxiomMath `Frobenius.lean` (`frobeniusOver`, identity on the space, `q`-th power on sections) and `FieldValuedPointCount.lean` (`pointCountOfDegree_eq_pointCount` through `FiniteField.algEquivExtension`, the route of 1.2).

## Not verifiable

- Weil 1957 (Göttingen Nachrichten; no legal copy found), Mumford *Abelian Varieties* §16, Neukirch I §12, Reiner §26, Tate 1966 (Springer) and Waterhouse–Milne 1971 (AMS PSPUM): cited by locator only; the statements attributed to them (Torelli for surfaces, `h⁰(L)² = deg φ_L`, the conductor sequence, Jordan–Zassenhaus, Tate's theorems, the supersingular structure) are standard and are consumed from suppliers where this roadmap uses them.
- LMFDB knowls behind the browser check this round: `av.squarefree`, `av.fq.galois_group`, `av.fq.number_field`, `av.fq.honda_tate`, `av.fq.frobenius_angles_correctness`, `av.fq.conjugate_stable`, `av.fq.is_zconductor_sum`, `av.fq.is_zfvconductor_sum`, `av.princ_polarizable`, `av.fq.all_polarizations_product`, `av.fq.class_number_1`, `av.fq.cyclic_group_points`, `av.fq.noncyclic_primes`, `av.fq.curve_point_counts`, `av.fq.p_rank`, `av.fq.supersingular`, `av.fq.lmfdb_label`.

## Source issues

- **Error** in marseglia-sqfree at Theorem 5.4(a), printed p. 9: the statement requires the element `a` attached to a polarization to be `Φ`-positive, while its proof (via Proposition 5.3 and Howe's Definition 4.8) concludes `a = −ā` and `a` `Φ`-non-positive; it should be one sign, fixed by the convention `S(s,t) = a t s̄` used there; affects a stated result (the sign of the positivity condition only).
