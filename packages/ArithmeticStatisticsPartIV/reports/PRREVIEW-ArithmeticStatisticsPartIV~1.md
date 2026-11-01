# Review of ArithmeticStatisticsPartIV (pull request #1172 at 92b9193)

**Verdict:** needs changes

Gate at this head: `FAIL` on `residue` only (71 `<a id=` anchor tags); every other check is 0, the dependency check reports `205 roadmaps, 1441 edges, 0 problem(s)`, and the build of `TauCetiRoadmap/ArithmeticStatisticsPartIV/Suggested.lean` is clean with `sorry` as the only warning (16 declarations). One P2 finding (R01) and five P3 findings. The mathematics of the seeded sample held up under recomputation; the blocking issue is ownership, not correctness.

## R01 (P2) — §3.1 re-plans ArithmeticStatisticsPartI §0.7

**Location.** `TauCetiRoadmap/ArithmeticStatisticsPartIV/README.md` lines 69–84 ("Fix an algebraic closure … let `S_n(P; ξ, η)` be the set of intermediate fields … `N_n(P; ξ, η)` as the number of classes … under `K ≃ₐ[ℚ] K'`"; bullet "`(N_n(P; ξ, η) : ℚ) = Σ_{K ∈ S_n} #Aut(K/ℚ)/n`"; line 84 "The subfield formula: … the class of `K` has `n/#Aut(K/ℚ)` members"). The section cites only ArithmeticStatisticsPartI §0.1 (line 49, line 86).

**Claim.** The isomorphism-class carrier of number fields ordered by discriminant, its Northcott property via Hermite, and the embedded-versus-isomorphism-class multiplicity `n/#Aut(K/ℚ)` are new targets of this roadmap.

**Witness.** ArithmeticStatisticsPartI at its open head (earlier in the merge order, a legal supplier), §0.7 "Number fields ordered by discriminant" and "Embedded and isomorphism class counts of number fields": it defines `NumberFieldFamily.Embedded`, `isoSetoid`, `isoFamily`, `isoDegree`, `autWeight = [K:ℚ]/#Aut(K/ℚ)` and states `count_degree_eq_weightedCount` (each isomorphism class of degree `n` has exactly `n/#Aut(K)` embedded representatives), Northcott by `NumberField.finite_of_discr_bdd`, with the same Checks (non-Galois cubic counted thrice as subfields, quadratic fields agree). Part I §0.7 says explicitly that the further restriction by Galois group "is not part of this node", so the Galois-label and local-specification predicates are the only new content here.

**Repair.** Rewrite §3.1 as an adapter: consume Part I §0.7's `isoFamily`, `isoDegree`, `autWeight` and the embedded/isomorphism-class count by name and section (and keep §0.1's `countLT` for the strict cutoff); delete the re-derivation of the carrier, the Hermite route and the subfield formula; keep as new targets only the isomorphism-invariant predicate `P`, the signed open interval `(ξ, η)` (BST's `N₃(ξ, η)`), the signature/Galois/local restrictions and their Checks. Add the Part I §0.7 row to "Exact supplier contracts". The `*Needs:*` line then cites ArithmeticStatisticsPartI §0.7 and §0.1 rather than Mathlib's `IntermediateField`/`AlgebraicClosure` directly. Checked: this introduces no new edge for the dependency check (Part I is already a supplier).

## R02 (P3) — gate residue: 71 anchor tags

**Location.** `README.md` lines 67, 98, 132, 167, 187, … (every target heading is preceded by `<a id="…"></a>`).

**Claim/witness.** The gate rule "no process residue … `<a id=` anchor tags" fails with 71 hits; no acceptance while the gate fails.

**Repair.** Delete the anchor lines and flatten the internal `[name](#id)` links to plain text (the house pattern is prose "see *exact surjection count formula* above"); re-run the gate. Nothing else in the gate fails, so this is mechanical.

## R03 (P3) — build-order inversion between §3.5 and §3.11

**Location.** `README.md` line 599 ("Moments determine cohen lenstra limits for all p and u", §3.5), `*Needs:*` at line 601 cites "Wood bounded moment limit" of §3.11; line 63 acknowledges it ("For the all-prime theorem in §3.5, first establish §3.11's bounded moment limit"). §3.6 (Friedman–Washington) then needs the §3.5 target.

**Claim.** Sections are in build order.

**Witness.** A §3.5 target needs a §3.11 target, and §3.6 needs that §3.5 target, so the reading order is not the build order.

**Repair.** Either move §3.11 (grid separator, coefficient bound, subgroup bound, grid uniqueness, bounded moment limit) ahead of the all-`p,u` theorem (e.g. as §3.5 before the present §3.5), or move "Moments determine cohen lenstra limits for all p and u" and the Friedman–Washington law after §3.11; delete the line-63 note once the order is right.

## R04 (P3) — two manifest keys for one work, twice

**Location.** `README.md` References: [22] and [90] are both Fouvry–Klüners, *On the 4-rank of class groups of quadratic number fields* (two URL variants of the same author-page PDF); [38] and [122] are both Wood, *Random integral matrices and the Cohen–Lenstra heuristics* (arXiv 1504.04391).

**Witness.** The fetched author-page text (cache id `fk07`, 53 pages) is the single file both [22] and [90] point to; [38] and [122] resolve to the same arXiv id.

**Repair.** Keep one key per work ([22] with the manuscript page convention of [90]; [38] with the published/arXiv locator note of [122]) and repoint the citations in §3.1, §3.10, §3.11.

## R05 (P3) — two locators

**Location.** (a) `README.md` line 226: "[39] … Lemma 3 and p. 4" for the automorphism count. (b) Lines 155 and 177: "[28] Proof of Proposition 2.6(e), p. 7" cited for the Gaussian-binomial recursion/product formula and for Cauchy's q-binomial theorem.

**Witness.** (a) Majumder's Lemma 3 (the Aut formula) is on page 3 of 1407.3066v1 (source `03bb1a59` line 113; page 4 begins at line 137). (b) Poonen–Rains p. 7 (source `b2a91d0b` lines 327–329) only invokes "Cauchy's q-binomial theorem … formula (18) of [Cau43]"; neither the recursion `[n+1 k+1]_t = [n k]_t + t^{k+1}[n k+1]_t` nor the product formula nor the subspace count is stated there.

**Repair.** (a) "Lemma 3, p. 3". (b) Cite a text that states the Gaussian recursion, product formula and subspace count (Stanley, *Enumerative Combinatorics* I, §1.7, or Kac–Cheung, *Quantum Calculus*, ch. 5–7, or Andrews, *The Theory of Partitions*, §3.3) and Cauchy 1843 or Andrews §3.3 for the finite q-binomial theorem; keep Poonen–Rains for the Euler identity in §3.9, which Proposition 2.6(e)–(f) does support.

## R06 (P3) — notation slips and an unnamed object consumers already name

**Location.** (a) `README.md` line 1131 (Examples): "`ℚ(u)=1, ℚ(v)=ℚ(w)=0`" for the quadratic expression `P_k` of §3.10. (b) Lines 159–162: Checks written "gaussBinom 2 4 `2 = 35`", "gaussBinom 1 5 `2 = 10 = Nat.choose` 5 2": the backticks split the expression. (c) §3.2 never names its Gaussian-coefficient object consistently, while HabiroCyclotomicCompletions (on the consumable list) defers to "ArithmeticStatisticsPartIV §3.2 … `gaussBinomPoly`, `gaussBinom` … `cauchy_qBinomial`", and QSeriesPartitionsAndMockModularForms §3.1 and HabiroRings §2.10 cite "§3.2 (Gaussian polynomial and product laws)".

**Repair.** (a) `P(u)=1, P(v)=P(w)=0`. (b) `[4 2]_2 = 35`, `[5 2]_1 = 10 = Nat.choose 5 2`, `[3 1]_2 = 7 ≠ 3`. (c) Give the Gaussian polynomial and coefficient one prose name in §3.2's API list (the README owns them, so a stable name is what the three consumers are relying on); no Lean declaration is needed in `Suggested.lean`.

## Verified sound

**Gate and build.** Gate at 92b9193: `set_option=0 … readme-ids-missing=0 … depcheck=0 metadata=0 stray-files=0 dirty=0 outside-folder=0 build=0`, failing only `residue=71`. `git diff --stat origin/main...HEAD -- . ':!TauCetiRoadmap/ArithmeticStatisticsPartIV'` is empty. `lake env lean` on `Suggested.lean`: 16 `declaration uses sorry` warnings, nothing else, 3 s. Dependency check (command of the brief): `depcheck: 205 roadmaps, 1441 edges, 0 problem(s)`; the roadmap sits at line 34 of the merge order after ArithmeticStatisticsPartI–III. Lake packages symlink points at mathlib `6b7abb3c` and Tau Ceti `a91d3aaf`, the manifest pins.

**Elaborated signatures.** All 30 declarations elaborated with `#check @name` in a scratch copy; compared with the README: `surjCard` counts abstract additive surjections (`Nat.card {f : X →+ A // Surjective f}`), `FinAbPGroupClass = Σ n, Nat.Partition n` with `toGroup` the product of `ZMod (p^λᵢ)` over the decreasingly sorted parts, `cohenLenstraConstant p u = ∏' j, (1 − p⁻¹^(j+u+1))`, `cohenLenstraWeight` the `ENNReal.ofReal` of `c/(|A|^u·#(A ≃+ A))`, `surjectionMoment` an `ℝ≥0∞` tsum; `padicMatrixHaar p n m = addHaarMeasure ⊤` on `Fin n → Fin m → ℤ_[p]` with explicit `[MeasurableSpace ℤ_[p]] [BorelSpace ℤ_[p]]` binders (Mathlib has no global `MeasurableSpace ℤ_[p]` at the pin, so the binders are needed and the Borel hypothesis pins the σ-algebra); `padicCokernel M = (Fin n → ℤ_[p]) ⧸ range M.mulVecLin`; the three cokernel theorems carry `[Finite A]` and `IsPGroup p (Multiplicative A)`; `matrixKernelLaw`, `symmetricKernelLaw`, `macwilliams_symmetric_rank_count` divide by `q^(m*n)`, `q^(r*(r+1)/2)` (exact) and use `s - i` only for `i < k ≤ s`; `wood_grid_uniqueness` quantifies over antitone `Fin (m j) → ℕ` profiles with `HasSum` moment hypotheses and the growth bound for every `F > 0` (Wood's proof only needs a fixed `F`, so the stronger quantifier is sound); `BoundedAbGroupClass a` is the subtype of `Skeleton (ModuleCat.{0} ℤ)` with finite representative killed by `a`, `wood_bounded_moment_limit` has `Module.Finite ℤ (X n ω)` and the `⋀²` bound on `M`. No section binder was lost (the worker's `signatures.md` agrees). Generality matches the README in every case I compared, including the "every prime, including 2" scope of the Cohen–Lenstra and Wood statements and the "odd ℓ only" scope of the EVW contraction route (kept in the README only).

**Padding probe.** On a scratch copy each of the 16 sorried theorems was attempted with `intros; simp`, `rfl`, `decide`, `norm_num`, `infer_instance`, `positivity`: none closed. No declaration restates a definition, mirrors a Check or computes a small value. Headline coverage: the mass formula, moments, all-`p,u` moment-to-distribution limit (which yields EVW Lemma 8.2 and the odd-ℓ convergence as the constant-sequence and `u=0` cases), the Haar cokernel moment, both Friedman–Washington forms, the rank count, the Koymans–Pagano identity, MacWilliams's count, the symmetric kernel limit with its rate and total mass, the FK bijection and constraint counts, Wood's grid uniqueness and bounded moment limit are all stated. EVW Proposition 8.3 (the quantitative `δ, L'` form) is statable and not stated; since it is the compactness-equivalent of the stated convergence theorem I did not count it as a missing headline.

**Seeded sample, with locators (cache ids and lines).**

- 3.1: BST `d45b16cd` lines 13–16 (Thm 1, open interval `ξ < Disc < η`, fields up to isomorphism), 17–21 (Thm 2, `#Cl₃(D)`), 1629–1651 (§8.5, (59): `(h*₃(K₂)−1)/2` cubic triplets; page 26 of the arXiv v3); Wood ArithStats `595ec486` lines 17–19 (Thm 1.1 Hermite, p. 1), 59–66 (Question 1.6 and "counted once, not three times", p. 2); BSW `f9130197` lines 54–58 (Thm 1, p. 2, weight `(#Aut(L/F))⁻¹`).
- 3.2: Poonen–Rains `b2a91d0b` lines 277–299 (Prop 2.6(e)–(f), p. 6) and 327–333 (proof, p. 7); Smith `d8f2b5f5` lines 359–371 (Case 2.12, p. 9, kernel-dimension law with q-Pochhammer factors). See R05(b).
- 3.3: EVW `6c10d770` lines 1683–1693 (§8.1, printed p. 771 = PDF p. 43); Majumder `03bb1a59` lines 19–29 (Theorem, p. 1), 42–67 (Lemmas 1–2, p. 2), 113–129 (Lemma 3, p. 3), 264–318 (ψ and Durfee squares, pp. 5–6); Hillar–Rhea `105b12f6` lines 121, 200–201 (Thms 3.3, 3.6, pp. 3–4), 269–279 (Thm 4.1, p. 6); Wood RIM `938818ec` lines 481–508 (Lemma 3.2 and proof, pp. 9–10, citing CL84 Prop 4.1(ii) and Cor 3.7(i)).
- 3.4: EVW lines 1717–1719 (§8.2 moment notation, p. 771); Wood RIM lines 487–497 (the surjection-weighted class count, p. 10).
- 3.5: EVW lines 1696–1716 (Lemma 8.2, (8.2.1), β = c⁻¹ − 1, p. 771), 1722–1725 (Prop 8.3, p. 772), 1727–1759 (Lemma 8.4, (8.4.1), s-enlargements, `p(s+m)(ℓ−1)^{−s} → 0`, p. 772), 1762–1830 (proof of 8.3, p. 773), 1831–1845 (§8.5, (8.5.1), p. 774); Wood RIM lines 455–472 (Thm 3.1, p. 9, `M_G ≤ |∧²G|`).
- 3.6: Wood RIM lines 110–117 (Thm 1.3, p. 3), 343–347 (Thm 2.9, p. 7), 531–544 (Cor 3.5 p-rank law, p. 10); Lipnowski–Tsimerman `5ceed816` lines 1479–1492 (§5.7.1, p. 35: `coker(1 − F)`, `CL_S` as a product over `v ∈ S`).
- 3.7: Koymans–Pagano Rédei `0846df81` lines 1494–1501 (§6, p. 30: `P(m,n,j)` with the explicit product) and 2434–2455 (App. A.1, pp. 47–48, (A.6)–(A.7)); Koymans–Pagano Stevenhagen `c7a93ffe` lines 3523–3525 (`P(m,n,j)` defined, p. 75) and 3577–3584 (the identity `1/(2^{m+1}−1) = Σ …`, p. 76).
- 3.8: Stanley `244cf41a` lines 269–310 ((4.2), printed p. 355), 328–330 ((4.3) `h(n+1,r) = q^r h(n,r) + (q−1)q^{r−1}h(n,r−1) + (q^{n+1} − q^{r−1})h(n,r−2)`).
- 3.9: Safarji–O'Brien–Quinlan `a725c502` lines 128–148 (§1, p. 3, MacWilliams's (1)–(2)); Koymans–Pagano Stevenhagen lines 3450–3458 (`P_Sym(r,n)` and Thm 7.13, p. 74).
- 3.10: Fouvry–Klüners `fk07`/`73ca99eb` line 20 (`rk₄(A) := rk₂(A²)`, p. 1), 488–490 (Lemma 9, p. 11), 760 ((20), p. 15), 768–774 ((21), `Φ₁`), 837–864 ((26), (27) `Φ_k`, linkage, pp. 16–17), 875–880 (`P(w)`), 1849–1869 (Lemma 26 (i)–(iv), pp. 32–33), 1870–1917 (basis `b`, `X ⊕ Y`, `U₀ = F ⊕ F^⊥`, p. 33).
- 3.11: Wood sandpile `0e12d2fc` lines 1268–1274 (Lemma 7.4, p. 27), 1399–1409 (Lemma 8.1, p. 28) and 1439–1460 (its proof, p. 29, including `G(pz) = (1 − z/p^{b₁})G(z)` and the vanishing-interval argument), 1463–1497 (Thm 8.2, p. 29), 1635–1655 (Thm 8.3, p. 31).

Every theorem number, page and hypothesis cited in §§3.1–3.11 resolves as the README states it, apart from R05.

**Cross-roadmap citations resolved.** ArithmeticStatisticsPartI §0.1 (`arithmetic family`, `count`/`countLT`, lines 183–215 of its README at the open head) and §0.7 (see R01); PolynomialGaloisGroups on main (`Completed/`), Layer 0 (line 442), Layer 2 (653), Layer 6 (1172) with `referenceSubgroup n j` and `HasGaloisLabel f j` (lines 209–212); EffectiveBounds on main (`Completed/`), Layer 2 "effective Hermite–Minkowski" (line 123). Ownership against open pull requests: `roadmaps grep` for Cohen–Lenstra, Friedman–Washington, MacWilliams, Gaussian binomial, Fouvry, Hillar, surjection moment, Haar cokernel, Stevenhagen, sandpile: the only earlier roadmaps with hits are InductionRestrictionPartII and InverseGaloisAndArithmeticFundamentalGroups (Wood's *nonabelian* Cohen–Lenstra moments, a different object) and HabiroCyclotomicCompletions, which defers Gaussian polynomials to this roadmap's §3.2 (R06(c)); ClassicalArithmeticCompletion on main cites Koymans–Pagano for Stevenhagen's conjecture but states no symmetric kernel law or 4-rank phase; Multiquadratic on main owns the 2-rank genus theory, which §3.10 consumes through Tau Ceti. Consumers citing this roadmap: ArithmeticStatisticsPartV/VII/VIII, QSeriesPartitionsAndMockModularForms, HabiroRings, HabiroCyclotomicCompletions, ArithmeticStatistics.

**Library declarations opened at the pins** (file:line): `NumberField.finite_of_discr_bdd` Discriminant/Basic.lean:494; `NumberField.sign_discr` :56; `NumberField.InfinitePlace.nrComplexPlaces` InfinitePlace/Basic.lean:441; `Nat.Partition` Partition/Basic.lean:52; `Nat.Partition.restricted` :205; `Nat.Partition.hasProd_powerSeriesMk_card_restricted` Partition/Glaisher.lean:49; `AddCommGroup.equiv_directSum_zmod_of_finite` FiniteAbelian/Basic.lean:134; `card_linearIndependent` GeneralLinearGroup/Card.lean:40; `Matrix.card_GL_field` :120; `Matrix.card_matrix` :87; `Submodule.smithNormalForm` FreeModule/PID.lean:532; `PadicInt.compactSpace` Padics/ProperSpace.lean:57; `MeasureTheory.Measure.addHaarMeasure` Haar/Basic.lean (normalisation `addHaarMeasure K₀ K₀ = 1`, line 519); `Real.multipliable_one_add_of_summable` Log/Summable.lean:96; `Module.Dual.finrank_ker_add_one_of_ne_zero` Dual/Lemmas.lean:775; `Subspace.forall_mem_dualAnnihilator_apply_eq_zero_iff` :446; `Pi.basisFun_repr` StdBasis.lean:129; `Module.Basis.sum_repr` Basis/Defs.lean:258; `Matrix.rank_reindex` Matrix/Rank.lean:304; `Matrix.rank_le_width` :175; `Matrix.rank_zero` :157; `Module.natCard_eq_pow_finrank` FieldTheory/Finiteness.lean:96; `Nat.card_sigma` Cardinal/Finite.lean:234; `Nat.card_congr` :89; `CategoryTheory.Skeleton`/`fromSkeleton` Skeletal.lean:74/87; `exteriorPower` ExteriorAlgebra/Basic.lean:79; `CompactSpace.tendsto_subseq` Sequences.lean:307; `isCompact_univ_pi`, `MeasureTheory.lintegral_liminf_le` Lebesgue/Add.lean:233; `MeasureTheory.lintegral_count` Lebesgue/Countable.lean:90; `PMF.tsum_coe` PMF/Basic.lean:63; `PMF.ext` :56; `ENNReal.tsum_add` InfiniteSum/ENNReal.lean:108; `Module.finrank_prod` Dimension/Constructions.lean:161; `Module.finrank_fin_fun` :326; `LinearEquiv.finrank_eq` Dimension/Finrank.lean:115; `Fintype.one_lt_card` EquivFin.lean:257; `IsPGroup` PGroup.lean:41; `MulAction.toPermHom` (used at Perm/Centralizer.lean:151). Tau Ceti: `TauCeti.ClassGroup.ElementaryTwoQuotient` NumberTheory/ClassGroup/ElementaryTwoQuotient.lean:61 and `card_elementaryTwoQuotient_eq_card_twoTorsion` :240; `NumberField.NarrowClassGroup` NarrowClassGroup/Basic.lean:83 and `instFinite` Finite.lean:38; `TauCeti.Measure.ext_of_forall_integral_pow_eq_of_exists_integrable_exp` Probability/Moments/Determinacy.lean:243; `TauCeti.MeasureTheory.Measure.SymmetricMatrix.Rank` (real matrices, as the README says); genus-theory 2-rank `twoRank_eq_ncard_ramifiedPrimes_sub_one` Multiquadratic/Quadratic/TwoRank.lean:155. Mathlib has no Gaussian binomial coefficient at the pin (grep for gaussian/qBinomial/qchoose in `Mathlib/` finds none).

**Adversarial table** (values computed by exact rational arithmetic or brute-force enumeration in scratch; brute force = enumerating homomorphisms by generator images and testing the span, or enumerating matrices and row-reducing):

| Statement | Instances | Values each side | Result | Change |
|---|---|---|---|---|
| Exact surjection count formula (3.3) | all pairs `(X, A)` of abelian 2-groups with `|X|,|A| ≤ 16` | 144 pairs, formula = brute force in all 144; e.g. `Sur(ℤ/4,ℤ/2)=1`, `Sur(ℤ/2,ℤ/4)=0`, `Sur(ℤ/2×ℤ/4,ℤ/4)=8=p²(p−1)` | holds | none |
| Enlargement witness (3.5) | `p=3, X=ℤ/9×ℤ/3, A=(ℤ/3)²` | `Sur(X,A)=48` (brute), `Aut(X)=108` (brute and `p^5(1−1/p)²`); lift of `f(x,y)=(y, x mod 3)` through `π(x,y)=(x mod 3,y)` forces `f̃(0,1)=(c,0)` with `c≡1 mod 3` of order 3: impossible; `12·9=108` lifts over 12 liftable `f` | README witness and the `(ℓ−1)` aggregate bound `108 ≥ 96` confirmed | none |
| Automorphism count (3.3) | all 2-groups `≤16`, 3-groups `≤27`; `ℤ/9×ℤ/3`, `ℤ/4×ℤ/2`, `ℤ/8` | `p^{Σλ'²}∏∏(1−p^{−s})` = brute force on every class; `108, 8, 4` | holds | none |
| Hom vs Sur (3.3 Check) | `ℤ/2 → ℤ/4` | `Hom=2=p`, `Sur=0` | holds | none |
| Gaussian coefficients (3.2) | `[4 2]_2, [3 1]_2, [2 1]_2, [5 2]_1`; subspaces of `𝔽₂^n`, `n ≤ 3` | `35, 7, 3, 10`; subspace counts by dimension `(1),(1,1),(1,3,1),(1,7,7,1)` = `[n k]_2`; `N(n,2)=1,2,5,16` | holds | none |
| Cauchy at `n=2` | `t, z` symbolic | `(1+z)(1+tz)=1+(1+t)z+tz²`, `[2 1]_t=1+t`, `t^{1}[2 2]_t=t` | holds | none |
| `c_{p,u}`, β (3.3, 3.5) | `p=3,2`, `u=0` | `c_{3,0}=0.56013`, `c_{2,0}=0.28879`, `β₃=0.7853<1`, `β₂=2.463>1`; lower bound `(2/3)(8/9)(17/18)=0.55967>1/2` | holds | none |
| CL masses (3.3 Check) | `p=3,u=0` | `0.5601, 0.2801, 0.0934, 0.0117` for `0, ℤ/3, ℤ/9, (ℤ/3)²` (`|Aut|=1,2,6,48`) | holds | none |
| CL moments (3.4) | `p=2: u=0,A=ℤ/2,ℤ/4,(ℤ/2)²; u=1,A=ℤ/2; u=2,A=ℤ/4×ℤ/2`; `p=3,u=0,A=(ℤ/3)²`; truncated at `|X| ≤ p^14` | `0.99988, 0.99976, 0.99976, 0.5, 0.01562, 1.0000` vs `|A|^{−u} = 1,1,1,0.5,1/64,1` | holds (tail `<3·10⁻⁴`) | none |
| Mass formula (3.3) | `p=2,u=0`, truncated `|X| ≤ 2^16` | `0.999985` | holds | none |
| p-rank law bullet (3.3) | `(p,u,k)=(3,0,1),(2,0,2),(2,1,1),(3,1,2)` | mass sum `0.42009, 0.12833, 0.38505, 0.00227` vs formula `0.42009, 0.12835, 0.38505, 0.00227` | holds | none |
| `E[p^{rank}]=2` (3.4 Check) | `p=2`, truncated | `2.0000` | holds | none |
| Hall identity (3.3 Check) | `n=2, q=1/2` | `q²/((1−q)(1−q²)) = 2/3 = 1/2+1/6` | holds | none |
| Extension groupoid (3.4 Check) | `G=C₂, K=C₄` | `Sur(C₈,C₂)=1, Aut C₈=4`; `Sur(C₄×C₂,C₂)=3`, two with cyclic kernel, `Aut=8`; `1/4+2/8=1/2=1/|Aut C₄|` | holds | none |
| Moment-vs-distribution counterexample (3.5) | `ℓ=3, n=1,2,5` | `ℤ/3`-moment `1.333, 1.778, 1.9918 → 2`; TV `≤ 0.667, 0.222, 0.0082` | holds | none |
| Partition tail (3.5) | `p(20)`, `p(3)/2³` | `627 < 2^20`, `3/8 ≤ 1/2` | holds | none |
| Cokernel small cases (3.6) | `n=0`; `n=1,u=0`; `n=1,u=1`; `A=ℤ/p` | `coker=0` w.p. 1; `P(coker≅ℤ/p)=(1−1/p)/p`, `P(coker=0)=1−1/p`; `1−1/p²`; moment `(p−1)/p²=2/9` at `p=3` | holds | none |
| `|Sur(ℤ_p^n,A)| = |A|^n∏_{i<r}(1−p^i/p^n)` (3.6) | `p=2,n=2: A=ℤ/2,ℤ/4,(ℤ/2)²`; `n=1,A=(ℤ/2)²` (via `(ℤ/p^e)^n`) | `3,12,6,0` brute = formula | holds | none |
| Abstract vs continuous homomorphisms in `surjCard (Fin n → ℤ_[p]) A` | `A` any finite p-group of exponent `p^e` | every additive map `ℤ_p^n → A` kills `p^eℤ_p^n`, so `Hom(ℤ_p^n,A)=Hom((ℤ/p^e)^n,A)`: the abstract count equals the continuous one | sound | none |
| `padicCokernel` iso-class event clopen (3.6) | `A` of exponent `p^e` | `coker(M)≅A ⇔ coker(M mod p^{e+1})≅A` (a free factor would contribute `ℤ/p^{e+1}`) | sound | none |
| Rank count (3.7) | `q=2,3`, `m,n ≤ 3`, all `r` | formula = brute force; `P_{𝔽₂}(2,2,·)=(3/8,9/16,1/16)`; `m=n=r=0`: `1=1` | holds | none |
| Koymans–Pagano identity (3.7) | `m=0,…,11`, exact | LHS `1/(2^{m+1}−1)` = RHS for all 12; `m=1: (1/2+1/6)/2=1/3`; `m=2: 1/7`; `m=3: P(3,3,·)=(168,294,49,1)/512`, sum `1/15` | holds | none |
| KP conditioning Check (3.7) | `m=1`, `T,U` independent | `P(x∈ker T)=1/3`; `Σ_n P(x∈ker T|A_{n,x})P(A_{n,x}) = (1/3)·P(U(x)=0) = 1/6`; pair-law `P(U=0)=3/6` vs `1/4` | README Check correct, source (A.7) not | see Source issues |
| Symmetric border fibers (3.8) | `q=2,n=2,r=0`; `q=3,n=2,r=1` | `(1,1,6)` sum `8=2³`; `(3,6,18)` sum `27` | holds | none |
| MacWilliams count (3.9) | brute force `q=2,n ≤ 5`; `q=3,n ≤ 4`; `q=5,7,n ≤ 3` | product = count at every `(q,n,k)`; rows `q=2`: `(1),(1,1),(1,3,4),(1,7,28,28)`; `q=3,n=2`: `(1,8,18)` | holds | none |
| Product recurrence `P_q(n+1,k)=Σ_r P_q(n,r)c_q(n,r,k)` (3.8) | `q∈{2,3,4,5,9}`, `n<8`, `0≤k≤n+3` | 0 failures of 220 identities, including composite `q` and `k=n+2,n+3` | holds | none |
| Closed form of `P_Sym(r,n)` (3.9) | `r ≤ 12`, `0≤n≤r` | `N(r,r−n)/2^{r(r+1)/2} = 2^{−n(n+1)/2}∏_{i≤h}(1−2^{−2i})^{−1}∏_{j=n+1}^r(1−2^{−j})` exactly | holds | none |
| Symmetric kernel limit and rate (3.9) | `α`; `1≤r≤40`, `0≤n≤r+2` | `α=0.41942`; `|P_Sym(r,n)−P_Sym(∞,n)| ≤ 2^{n+1−r}` in all 900 cases, worst ratio `0.161`; `r=2,n=0`: `1/2` vs `0.4194`, diff `0.0806 ≤ 1/2` | holds | none |
| Total mass of the limit (3.9) | `n ≤ 29` | `Σ_n α/∏(2^i−1) = 1.00000000` | holds | none |
| Euler q-binomial sum (3.9) | `q=1/2` | summands `1,1,1/3,1/21`, sum `50/21`; full sum `2.38423103 = ∏(1+2^{−i})` | holds | none |
| Prime-power rank (3.10) | `C₂,C₄,C₈`, trivial | `rk₄C₂=0, rk₄C₄=1, rk₈C₈=1, rk₁₆C₈=0`, all ranks of `0` are `0` | holds | none |
| FK phase (3.10) | `k=1`: `(1,0),(0,0)`; `(1,1),0`; `(0,1),(1,1)`; all `u,v∈𝔽₂²` | `Φ=1,0`; `Φ=1,1`, unlinked, `P(u)=0`; `Φ=1,0`, linked, `P(u)=P(v)=0`, `P(u+v)=1`; identity `Φ(u,v)+Φ(v,u)=P(u+v)` on all 16 pairs | holds | none |
| FK good planes (3.10) | `k=0,1,2`, brute force over all subspaces of `𝔽₂^{2k}` | directed `L`: `1,2,5=N(k,2)`; alternating `L+Lᵀ` at `k=2`: `15` (Lagrangians of a symplectic `𝔽₂⁴`) | holds | none |
| FK constraints (3.10) | `k=1,Γ={1}`; `k=2,Γ={1},{1,2}` | `(u₁+u₂)`-constraint `1`, `u₁`-constraint `1` `=N(0,2)`; at `k=2`: `2,2,2 = N(1,2)` | holds | none |
| Wood separator (3.11) | `m=0,p=2,b=0`: `z=0,2,1`; `m=1,b=(2,0)`: `z=(4,8),(4,4)`; `b=1`: `z=4,2` | `1, 0, ≠0`; `0` (factor `j=3`), `≠0`; `0, ≠0` | holds | none |
| Coefficient bound Checks (3.11) | `m=1,b=(2,0)` | finite factor `∏_{j=3}^{4}(1−z/p^j)`, degree `2=b₀−b₁`, top coefficient `p^{−7}`; head `c₁=−p^{−b₀}/(p−1)` | holds | none |
| Subgroup bound Check (3.11) | `G=ℤ/p` | subgroup sum `1+1=2`, exponent `λ'(λ'−1)/2=0` | holds | none |
| Grid uniqueness degenerate cases (3.11) | `s=0`; one prime, `m=1`, support `{0,1}` | singleton carrier, `x₀=C=y₀`; `x₀+x₁=y₀+y₁`, `x₀+px₁=y₀+py₁`, `p>1` ⇒ equal | holds | none |
| `wood_bounded_moment_limit` uniqueness clause | constant sequence `Y_n=ν'` | Wood Thm 3.1 with `Y_n⊗ℤ/a=Y_n` gives `ν'(H)=ν(H)` for all `H` of exponent `|a` | sound | none |
| `wood_grid_uniqueness` with arbitrary `F>0` | any fixed `F` | interchange needs `Σ_d E p^{−b₀d−d(d+1)/2}·F^m p^{d(d−1)/2} < ∞`, true for every `F` | sound | none |
| §3.1 Checks | `N₂(⊤;−5,0)`, `N₃(⊤;−24,0)`, `N₃(⊤;0,50)`, `N₁` | discriminants `−3,−4` → `2`; `−23` → `1`; `49` → `1`; `ℚ` has `Disc=1` | holds | none |
| Class-group Checks (3.1) | `ℚ(√−47), ℚ(√−23), ℚ(√−5)` | `h=5, h₃=1`; `Cl≅ℤ/3`, `h₃=3,h₂=1`; `Cl≅ℤ/2`, `t=2`, `h₂=2=2^{t−1}` | holds | none |
| Symmetric kernel exponent simplification (3.9) | `k=r−n` | `kr−k(k−1)/2−r(r+1)/2 = −n(n+1)/2` (expanded symbolically) | holds | none |

**Checks counted.** Every definition in §§3.1–3.11 has at least three Checks with a discriminating value (counts: 3.1 five and six; 3.2 seven and three; 3.3 four, three, four, two, three, three, two, two, six; 3.4 four, three, two, two; 3.5 two, two, four, two, three, two, three, two, two, two; 3.6 five, three, three, three, four; 3.7 three, three, four, seven; 3.8 three, three, three, four, three, three; 3.9 three, three, three; 3.10 four, five, four; 3.11 five, three, one, three, one). The theorem-only targets with two Checks and the two bound targets with one are not definitions, so no finding.

**Lean form.** Single `import Mathlib`, no `set_option`, no `lemma`, no sorried data, no `#eval`/`#print axioms`, docstrings on every declaration, one layer so no layer section comments needed, module docstring names the roadmap and the scope.

## Not verifiable

- MacWilliams, *Orthogonal matrices over finite fields*, Amer. Math. Monthly 76 (1969), Theorem 2: the primary source for the symmetric rank count is behind JSTOR; verified through Stanley (4.2) and Safarji–O'Brien–Quinlan (1)–(2), which restate it.
- Cohen–Lenstra, *Heuristics on class groups of number fields* (Springer LNM 1068), Prop 4.1(ii) and Cor 3.7(i), cited inside Wood's proof of Lemma 3.2: paywalled; the README proves both statements itself (surjection-weighted class count, weighted inverse automorphism sum), and my recomputation of the moments confirms them numerically.
- Cauchy 1843, formula (18), cited inside Poonen–Rains for the q-binomial theorem: not opened; the identity was checked symbolically at `n ≤ 2` and numerically at `q=1/2`.

## Source issues

- **Error** in EVW (Annals 183) at proof of Lemma 8.4, (8.4.1), printed p. 772: the source says a fixed `f ∈ Sur(X,A)` has at least `ℓ−1` surjective lifts through a fixed `π : A′ ↠ A`; it should be an aggregate bound `|Sur(X,A′)| ≥ (ℓ−1)|Sur(X,A)|` for a suitable `A′`, since for `X=A′=ℤ/9×ℤ/3`, `A=(ℤ/3)²`, 36 of the 48 surjections have no lift; affects the proof.
- **Gap** in EVW (Annals 183) at §8.5, printed p. 774: the source says the distribution statement is equivalent to the moment statement (8.5.1); it should say the moment statement implies the distribution statement, the converse needing a uniform-integrability input (mixtures `(1−ℓ^{−n})μ + ℓ^{−n}δ_{(ℤ/ℓ)^n}` converge in total variation with `ℤ/ℓ`-moment `→ 2`); affects a stated result.
- **Misprint** in Majumder (arXiv 1407.3066v1) at the definition of `M_i`, p. 6: the source says the rows of the `i`-th strip satisfy `μ₁+⋯+μ_{i−1} < x < μ₁+⋯+μ_i`; it should be `≤` on the right; affects nothing.
- **Error** in Koymans–Pagano, *Higher Rédei reciprocity* (arXiv 2005.14157v2) at Appendix A.1, (A.7), p. 48: the source says `P(x∈ker T) = Σ_i P(x∈ker T | A_{i,x})P(A_{i,x})` with `P(x∈ker T | A_{i,x}) = 1/(2^{i+1}−1)`; it should note that the `A_{i,x}` only cover `{U(x)=0}` and that `T,U` are independent in the stated space, so (A.7) does not yield (A.2) (which is nevertheless true, checked exactly for `m ≤ 11`); affects the proof.
