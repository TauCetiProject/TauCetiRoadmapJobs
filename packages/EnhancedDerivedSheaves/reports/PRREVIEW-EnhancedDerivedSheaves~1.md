# Review of EnhancedDerivedSheaves (pull request #1330 at 856fe7a)

**Verdict:** needs changes

The pull request changes two files of the merged roadmap: `TauCetiRoadmap/EnhancedDerivedSheaves/README.md` (supplier row and E1.6 wording for PurityOfBranchLocus §0.3) and `TauCetiRoadmap/EnhancedDerivedSheaves/Suggested.lean` (one import added, one theorem removed). The gate at this head fails: `imports=1`, `build=3`. Everything else in the gate is clean (`depcheck=0`, `readme-ids-missing=0`, `sorry-data=0`, `set_option=0`, `stray-files=0`, `outside-folder=0`). No change outside the roadmap folder.

## R01 (P1) — Suggested.lean imports a module that does not exist at this head, so the acceptance test does not build

Location: `TauCetiRoadmap/EnhancedDerivedSheaves/Suggested.lean` line 3, `import TauCetiRoadmap.PurityOfBranchLocus.Suggested`; `README.md` lines 142–145, which say the file imports that module.

Claim: the Lean file consumes PurityOfBranchLocus §0.3's interfaces through this import.

Witness: the branch is based on main as of 2026-10-20 (parent `c4d22422`); `TauCetiRoadmap/PurityOfBranchLocus/` was merged to main on 2026-10-26 (`ba653efe`) and is absent from this head's tree, so the gate's targeted build exits 1 with `bad import 'TauCetiRoadmap.PurityOfBranchLocus.Suggested'`. Independently of the rebase, the gate's import rule admits only `import Mathlib` and `TauCeti.*` modules, so the import would fail the gate even after a rebase. The body of the file names no declaration of that module: `grep PurityOfBranchLocus Suggested.lean` matches line 3 only; the removed theorem `isRegularLocalRing_of_projectiveDimension_residueField` is not referenced by any remaining statement.

Repair (tested): delete line 3. A scratch copy of the file without that line elaborates under `lake env lean` with only `declaration uses 'sorry'` warnings, and `#check` of all 33 declarations prints the expected types. In the README, lines 142–145 then read: the Lean imports are `Mathlib` and `TauCetiRoadmap.SchemeAndStackFoundations.Suggested` (as before this change); PurityOfBranchLocus §0.3 is a section-level supplier named in the contracts table and in E1.6, not a Lean import. The supplier row at line 157 and the E1.6 citations stay.

## R02 (P2) — The all-module bound still plans PurityOfBranchLocus §0.3's steps instead of importing them, and its *Needs:* line does not name that supplier

Location: `README.md` line 699 (statement and locators of `isRegularRing_projectiveDimension_le`), line 708 (*Proof route*), line 710 (*Needs:*).

Claim: the only part of the regularity chain imported from PurityOfBranchLocus is the residue-field criterion; the reduction to cyclic modules and the local Koszul bound are described as E1.6's own route, and the paragraph's locators still claim 00O7, 00OC and 065T.

Witness: PurityOfBranchLocus `README.md` on main, §0.3 (lines 162–200), owns `globalDimension_le_iff` (Stacks 065T, cyclic reduction), `IsRegularLocalRing.globalDimension_le` (Stacks 00O7, Koszul resolution of the residue field and global dimension ≤ d of a regular local ring) and `isRegularLocalRing_tfae` (00OC); its line 61 records that the two roadmaps share 00O7, 00OC and 065T and its line 65 leaves only 00OE here. E1.6's route (line 708) re-derives exactly 065T and 00O7 ("By Lemma 10.109.12 it suffices to bound ... cyclic modules ... Koszul complex resolves the residue field ... a minimal free resolution of M stops after d steps"), and the *Needs:* line (710) lists DerivedModuleAlgebra §0.K.1 and Mathlib only. The dependency check reads *Needs:* lines, so the supplier edge this pull request introduces is recorded for the Kunz converse (line 814) but not for the bound it is actually needed for. The supplier contracts row (line 157) promises "`globalDimension`/`HasProjectiveDimensionLE` comparison" to E1.6, but no E1.6 target names it.

Repair: at line 699 keep the statement (every module over a regular ring of Krull dimension ≤ d has projective dimension ≤ d, Stacks 00OE, stacks-algebra line 12581) and cite only 00OE here. Replace the route by: reduce to finite, hence cyclic, modules by PurityOfBranchLocus §0.3's `globalDimension_le_iff`; a Noetherian ring has global dimension ≤ n exactly when every localization at a maximal ideal does (Stacks Lemma 10.110.2, tag 00O9, stacks-algebra line 12484); each localization is regular local of dimension ≤ d, so PurityOfBranchLocus §0.3's `IsRegularLocalRing.globalDimension_le` gives the bound. Write the *Needs:* line as "PurityOfBranchLocus §0.3 (`globalDimension_le_iff`, `IsRegularLocalRing.globalDimension_le`, `globalDimension_le_iff_hasProjectiveDimensionLE`); Mathlib `IsRegularRing`, `ringKrullDim`, `CategoryTheory.HasProjectiveDimensionLE`." Drop the DerivedModuleAlgebra §0.K.1 Koszul input from this target (the Koszul resolution is inside the supplier's 00O7). Rerun the dependency check afterwards; both roadmaps are on main, so no UPWARD line is expected.

## R03 (P3) — The gate's import rule also refuses the pre-existing `SchemeAndStackFoundations` import

Location: `Suggested.lean` line 2.

Claim: the file may import another roadmap's `Suggested.lean`.

Witness: gate rule `imports`: after `import Mathlib` only `TauCeti.*` modules. The import is on main already and is used: `open TauCetiRoadmap.SchemeAndStackFoundations.Proetale (IsReplete)` at line 32 and the five `IsReplete.*` theorems at lines 251–287. Twenty-three `Suggested.lean` files on main carry such imports, so this is a repository-wide question rather than a defect introduced here; the gate nevertheless cannot show `imports=0` while the line stays.

Repair: either the operator rules that on-main roadmap-module imports are tolerated by the gate, or the five replete theorems become README-only targets (E2.1), the docstring says that `IsReplete` is a SchemeAndStackFoundations target not at the pins, and lines 2 and 32 are deleted. The author's call; recorded so the verdict is not read as accepting the gate line.

## R04 (P3) — Padding in Suggested.lean: one one-term lemma and four Check-mirroring counterexample theorems

Location: `Suggested.lean` lines 122–126 (`frobeniusRootIdeal_root_mem`), 57–78 (`zmodFourTwoComplex`, `zmodFourTwoComplex_not_isKFlat`), 227–241 (`pMultiplicationTower`, `pMultiplicationTower_not_isProZero`), 325–329 (`derivedComplete_directSum_counterexample`), 348–355 (`derivedComplete_not_separated`).

Claim: these are headline statements of the roadmap.

Witness: `frobeniusRootIdeal_root_mem` closes with the single term `Ideal.mem_iSup_of_mem n (Ideal.mem_span_singleton_self _)` (elaborated in a scratch copy with the same definition of `frobeniusRootIdeal`). The other four are the negative controls of README Checks (E1.2 Check 4, E2:towers.2 Check 3, E4.1 "Limits of complete sheaves" Check 2, E4.3 Check 4) written as sorried theorems, with two definitions (`zmodFourTwoComplex`, `pMultiplicationTower`) that exist only to state them. `pMultiplicationTower_not_isProZero` also assumes `p.Prime` where `p ≠ 0` suffices (for p = 4 every composite transition is multiplication by a positive power of 4, injective on ℤ, so the tower is not pro-zero).

Repair: delete these seven declarations from `Suggested.lean`; the README keeps each as a Check. Remove the corresponding backticked Lean names from the README Checks (E1.2 line 548, E2:towers.2 line 1416, E4.1 line 2605, E4.3 line 2698) so that `readme-ids` stays clean, keeping the Checks as prose.

## R05 (P3) — README promises two-out-of-three for pro-isomorphisms; the Lean states composition only

Location: `README.md` line 1409 ("`proIso_comp` (composition and two-out-of-three)"); `Suggested.lean` lines 221–225.

Claim: `proIso_comp` covers two-out-of-three.

Witness: the elaborated type is `IsProIsomorphism f → IsProIsomorphism g → IsProIsomorphism (f ≫ g)`; no cancellation statement exists in the file.

Repair: at line 1409 write "`proIso_comp` (composition); the two cancellation statements of two-out-of-three are targets of this section", with no backticked name for them.

## R06 (P3) — Wrong Higher Algebra section for the derived tensor product

Location: `README.md` line 463, "(... Lurie, *Higher Algebra*, §4.1.3 and §7.1.2.)" in §0.3 *Derived tensor and internal Hom*.

Claim: HA §4.1.3 supports the monoidal structure of the derived ∞-category.

Witness: HA §4.1.3 is "Planar ∞-Operads and A∞-Algebras" (lurie-ha line 17801, printed p. 465). The monoidal structure induced on a localization by a monoidal model category is §4.1.7 "Monoidal Model Categories" (lurie-ha line 18542, p. 485; Proposition 4.1.7.4 at line 18583, Example 4.1.7.6 at line 18605). §7.1.2 is right: Theorem 7.1.2.13 (line 46530) is the symmetric monoidal equivalence Mod_R ≃ D(A) for an ordinary commutative ring.

Repair: replace "§4.1.3" by "§4.1.7, Proposition 4.1.7.4 and Example 4.1.7.6".

## R07 (P3) — A catalogue of names closes the Lean file, and the module docstring is not in the stated form

Location: `Suggested.lean` lines 359–446 (block comment "The README also specifies API beyond the representative statements above: ..."); lines 5–26 (module docstring "representative target signatures ... it is not exhaustive").

Claim: none; the block lists README target names layer by layer.

Witness: the form rules forbid catalogues of names and process comments in `Suggested.lean`; the docstring is to say which headline theorems are not statable at the pins and what each lacks, and the block duplicates README prose (for example lines 390–397 restate E1.9's base-change formula).

Repair: delete lines 359–446. Keep the docstring's list of what is stated and add one sentence per unstatable headline (the dg-nerve comparison `dgNerve_homotopyCategoryIso`, hypercover descent, Postnikov completeness on replete topoi, h-descent on perfect schemes, coefficient reconstruction: each lacks the enhanced category `D∞(O)` or the quasicategorical framework of BordismFormalGroups F6.5 at the pins).

## Verified sound

**Gate and build.** Gate at 856fe7a as the worker ran it: all scanners clean except `imports=1` and `build=3` (R01, R03). Dependency check run by me:

    depcheck: 205 roadmaps, 1500 edges, 0 problem(s)

No UPWARD or CYCLE line; both this roadmap and PurityOfBranchLocus are on main. Scratch copy of `Suggested.lean` without line 3, elaborated with `lake env lean` after `lake build TauCetiRoadmap.SchemeAndStackFoundations.Suggested`: exit 0, only `sorry` warnings; `#check @name` for all 33 declarations compared with the README statements. Universes and binders agree with the README: `IsRegularRing` at the pin (`Mathlib/RingTheory/RegularLocalRing/Defs.lean:92`) extends `IsNoetherianRing`, so the Noetherian hypothesis of Stacks 00OE and 0EC0 is in scope for `isRegularRing_projectiveDimension_le` and `frobenius_flat_of_isRegular`; `isRegular_of_frobenius_flat` carries `[IsNoetherianRing R]` explicitly; `isAdicComplete_iff_derivedComplete_separated` carries `I.FG` as Stacks 091T and BS-proet §3.4 require; `derivedCompleteModules_weakSerre` needs no finite generation, as Stacks 091U (stacks-more-algebra line 12125) has none.

**Pinned declarations opened** (file:line at Mathlib `6b7abb3c`, Tau Ceti `a91d3aaf`, both equal to the README's stated baseline): `IsRegularLocalRing` Defs.lean:51, `IsRegularRing` Defs.lean:92, `ringKrullDim` KrullDimension/Basic.lean:26, `CategoryTheory.projectiveDimension` Abelian/Projective/Dimension.lean:265, `ModuleCat.projectiveDimension_eq_of_linearEquiv` ModuleCat/ProjectiveDimension.lean:126, `CategoryTheory.Tor` Monoidal/Tor.lean:44 (left-derived in the second variable), `iterateFrobeniusEquiv` FieldTheory/Perfect.lean:134, `IsHausdorff`/`IsPrecomplete`/`IsAdicComplete` AdicCompletion/Basic.lean:46–56, `CochainComplex.IsKInjective` HomotopyCategory/KInjective.lean:42, `Functor.ofOpSequence` Functor/OfSequence.lean:154, `Monotone.functor` Category/Preorder.lean:156. No `globalDimension`, Kunz theorem or residue-field projective-dimension criterion exists in the pinned Mathlib (grep for `Kunz|globalDimension|projectiveDimension.*ResidueField`: none); the pinned Tau Ceti has no K-flat, pro-zero, replete, derived-complete or Frobenius-root object (grep: none). So the file's definitions duplicate nothing at the pins.

**Cross-roadmap citations resolved.** PurityOfBranchLocus on main (`ba653efe`): §0.3 heading at README line 162; `isRegularLocalRing_tfae` is a README target (line 191, Stacks 00OC) and `isRegularLocalRing_of_projectiveDimension_residueField` is declared at `Suggested.lean:146` with the same signature the removed theorem had; `globalDimension` at line 132, `globalDimension_le_iff_hasProjectiveDimensionLE` at line 137, `isRegularLocalRing_iff_finite_globalDimension` at line 156. SchemeAndStackFoundations §2.17 `Proetale.IsReplete` elaborates (`(T : Type u) → [Category T] → Prop`). All roadmaps named as suppliers exist on main (DGAInfinity, BordismFormalGroups, DerivedModuleAlgebra, GeneralizedCohomology, StablePeriodicCurved, JacobianChallenge, StableReduction, AdicSpacesPartII, PerfectoidSpaces, ProfiniteCohomology, SchemeAndStackFoundations); the roadmaps named only as consumers (DiamondEtaleCohomology, DiamondSixOperations, AdicCoefficientsAndComparisons, VStackSheavesAndLisseCategories, PerfectoidQuotients, EtaleDualityAndPerverseSheaves, PrismaticCohomology, AInfCohomology, CrystallineCohomology) are later in the merge order and appear in no *Needs:* line. The worker's 41 citation leads are all this roadmap's own README targets or the two roadmap-module imports (R01, R03); none is a missing supplier.

**Ownership against open pull requests** (`roadmaps grep` over 437 open heads and main): `frobeniusRootIdeal*` is cited, not built, by PerfectoidQuotients (#1042 README line 338); `isRegular_of_frobenius_flat` is cited by CrystallineCohomology (#857 README line 7030); the all-module 00OE bound is claimed by no other roadmap (PurityOfBranchLocus line 65 assigns it here); `IsProZero`, `IsKFlat`, `IsDerivedComplete`, `IsValuationSaturated`, `countableProduct_epi` occur nowhere else. No second owner found.

**Sources, seeded sample and E1.6** (ids are the cache texts fetched this review): stacks-injectives Theorem 19.12.6 (079P) line 883: functorial K-injective replacement by injectives in a Grothendieck abelian category, as §0.1/§0.2 state. lurie-ha Definition 1.3.5.8 line 4739 (D(A) as the dg nerve of fibrant complexes), Proposition 1.3.5.9 line 4743 (stable), Proposition 1.3.5.21 line 4874 (presentable, t-structure compatible with filtered colimits), all printed pp. 125–129, matching §0.1. stacks-sites-cohomology-ch: §21.17 Flat resolutions line 1258, Lemma 21.17.11 (06YS) line 1342 (K-flat replacement with flat terms, termwise surjective quasi-isomorphism), §21.18 Derived pullback line 1447, §21.19 Cohomology of unbounded complexes line 1605, §21.35 Internal hom line 3668, matching §§0.2–0.4. stacks-derived §13.34 (08TB) line 5253 and Definition 13.34.1 line 5255: Rlim as the fibre of `(k_n) ↦ (k_n − f_{n+1}(k_{n+1}))` on the product, the convention §0.3 states. stacks-more-algebra Lemma 15.88.1 (07KW) line 10638, Lemma 15.88.10 (07KY) line 10814 (Milnor sequence `0 → R¹lim H^{p−1} → H^p(Rlim) → lim H^p → 0`), Lemma 15.89.1 (091D) line 10946, §15.93 (091N) line 11993, Lemma 15.93.1 (091P) line 12005, Lemma 15.93.10 (091V) line 12163 (completion left adjoint, I finitely generated), Lemma 15.93.18 (0920) line 12293 (`Rlim(K ⊗ᴸ K_n)` is the reflector), Lemma 15.93.20 (0G1U) line 12344, Lemma 15.95.2 (0923) line 12520 (naive completion `Rlim(K ⊗ᴸ A/fⁿ)` agrees exactly when the f-power torsion of A is bounded, which holds for `A = ℤ`, `f = ℓ`, as §0.3 uses). stacks-algebra: 065T line 12449, 00O7 line 12478, 00OC line 12552, 00OE line 12581, 00O9 line 12484, 00NQ line 11925, 00R4 line 14937, 032A line 20606, all as cited in E1.6. stacks-local-cohomology Lemma 51.17.6 (0EC0) line 1568: Kunz, both directions, Noetherian ring of characteristic p. bs17 (arXiv 1507.06490v3; its pagination agrees with the author PDF pages the README cites): Lemma 3.16 line 601 p. 14, Remark 3.17 line 667 p. 14, Lemma 11.10 line 1950 p. 42, Proposition 11.29 line 2200 p. 47 (Tor dimension ≤ m for m equations), Proposition 11.31 line 2240 p. 48 (bound d + 1 via the Frobenius telescope, exactly E1.6's route), Remark 11.32 line 2254 p. 48, Remark 11.33 line 2259 p. 49 (bound 2 dim R), footnote 24 line 2301 (the `k[x,y]/(xy)_perf` counterexample and the unproved `2d + 1`), Corollary 11.35 line 2299 p. 49. bs-proet (arXiv 1309.1198v2): Definition 3.1.1 line 701 p. 16, Lemma 3.1.2 line 704, Lemma 3.1.3 line 707, Lemma 3.1.8 line 740 p. 17, Proposition 3.1.9 line 750, Proposition 3.1.10 line 755, Definition 3.2.1 line 789 p. 17, Proposition 3.2.3 line 798, Proposition 3.3.3 line 852 p. 19, §3.4 standing hypotheses line 964 (replete topos, locally finitely generated ideal), Definition 3.4.1 line 970 p. 21, Proposition 3.4.2 line 979, Remark 3.4.3 line 981, Lemma 3.4.7 line 996. Lemma 3.1.8 assumes both `F_i → G_i` and `F_{i+1} → F_i ×_{G_i} G_{i+1}` epimorphic; the Lean `IsReplete.lim_map_epi` assumes the first only at stage 0, which suffices since the composite `F_{i+1} → F_i ×_{G_i} G_{i+1} → G_{i+1}` is epi–(pullback of epi) in a topos, so the Lean form implies the source's hypotheses.

**Adversarial table** (values computed on each side).

| Statement | Instances | Values | Result | Change |
| --- | --- | --- | --- | --- |
| §0.1 point site | one-object site, R | homotopy category of the dg nerve of K-injectives = D(R-Mod) (HA 1.3.5.8 with Ch(A)° the K-injectives) | holds | none |
| §0.1 shift convention | A in the heart | A[1] has H^{−1} = A, all else 0; π_i Map = H^{−i} RHom | consistent with Conventions | none |
| §0.2 K-injective | bounded-below complex of injectives | K-injective (Stacks 079P context) | holds | none |
| §0.2 / E1.2 non-example | ℤ/4, P = (… →2 ℤ/4 →2 …) | ker 2 = im 2 = 2ℤ/4, so P acyclic; P ⊗ (ℤ/2)[0] has zero differentials, H^k = ℤ/2 ≠ 0 for all k; K-flat ∧ acyclic ⇒ P ⊗ M acyclic for all M (via K-flat replacement of M), so P is not K-flat | `zmodFourTwoComplex_not_isKFlat` true | padding (R04) |
| §0.2 / E1.2 (ℤ/p)[0] over ℤ | cone C of [ℤ →p ℤ] → ℤ/p | C acyclic; C ⊗ ℤ/p has H^{−2} = ℤ/p ≠ 0 | Check correct | none |
| E1.2 `isKFlat_single_of_flat` | flat M in degree n | (A ⊗ M[n])^k = A^{k−n} ⊗ M, exact functor preserves acyclicity | true | none |
| §0.3 (ℤ/n) ⊗ᴸ_ℤ (ℤ/n), n > 1 | n = 2 | Tor₀ = ℤ/2 in degree 0, Tor₁ = ℤ/2 in degree −1 | Check correct | none |
| §0.3 Koszul sign | degrees 1,1 | (−1)^{1·1} = −1 | matches Convention | none |
| §0.3 tower ℤ/ℓ^{i+1} | ℓ = 2 | surjective transitions ⇒ ML, lim¹ = 0, lim = ℤ_2 | Check correct | none |
| §0.3 K_i = [ℤ → ℤ/ℓ^{i+1}] | H⁰(K_i) = ℓ^{i+1}ℤ, H¹ = 0 | lim ℓ^{i+1}ℤ = 0, lim¹ = ℤ_ℓ/ℤ (from 0 → ℓ^{i+1}ℤ → ℤ → ℤ/ℓ^{i+1} → 0 and lim¹ of constant ℤ = 0); Milnor gives H¹(Rlim) = ℤ_ℓ/ℤ with H¹(K_i) = 0 | Check correct | none |
| §0.3 (ℤ/ℓ) ⊗ᴸ_{ℤ/ℓ²} (ℤ/ℓ) | ℓ = 2 | periodic resolution … →2 ℤ/4 →2 ℤ/4 → ℤ/2: Tor_i = ℤ/2 for all i, infinite Tor amplitude | Check correct | none |
| §0.3 completion | K = ℤ, ℤ/ℓ, ℤ[1/ℓ] | ℤ^∧ = ℤ_ℓ; ℤ/ℓ complete with Tor term in degree −1 under ⊗ᴸ ℤ/ℓ; ℤ[1/ℓ] ⊗ᴸ ℤ/ℓⁿ = 0, T(ℤ[1/ℓ], ℓ) = ℤ[1/ℓ] ≠ 0 | Checks correct; 0923 hypothesis (bounded ℓ-torsion of ℤ) holds | none |
| §0.4 exchange | identity site morphism; two Cartesian squares | adjunction and exchange identities; outer rectangle = composite, direction g* Rf_* → Rf'_* g'^* | consistent | none |
| E1.6 `isRegularRing_projectiveDimension_le` | field (d=0); ℤ (d=1), M = ℤ/p; k[x₁..x_d], M = κ; k[ε]/ε² | every module projective; pd ℤ/p = 1 via [ℤ →p ℤ]; pd κ = d (Koszul, Tor_d(κ,κ) = κ ≠ 0); pd κ = ∞ (minimal resolution … →ε B →ε B) | statement true (00OE), bound sharp, regularity needed | R02 (route/Needs) |
| E1.6 Kunz forward | 𝔽_p[t]; perfect field; 𝔽_p[ε]/ε² | free with basis 1, t, …, t^{p−1}; isomorphism; F factors through 𝔽_p, the module is k ⊕ k with ε acting by 0, not flat (ε-torsion) | true; regularity needed | none |
| E1.6 Kunz converse | 𝔽_p[ε]/ε² | Frobenius not flat and ring not regular; Noetherian hypothesis present (0EC0) | consistent | none |
| E1.6 `frobeniusRootIdeal` | f = 0; f = 1; 𝔽_p[t^{1/p^∞}], f = t | J₀ = ⋃(0) = 0 = √0 (reduced); J₁ = R; t^{1/p} ∈ J_t, t^{1/p} ∉ (t) since t^{1/p} = t·a has no solution (valuation 1/p < 1) | definition pins the ideal, radical identity consistent | none |
| E1.6 `frobeniusRootIdeal_flat` | one generator | f^{1/p^n} = f^{1/p^{n+1}} · f^{(p−1)/p^{n+1}} ∈ J_f², so J_f² = J_f; colimit of free rank-one modules flat | consistent with BS17 line 2205 | none |
| E1.6 `perfectRing_tor_eq_zero` | A = B = C perfect field; A → A/J_f; non-perfect modules | ordinary tensor in degree 0; Tor₁(A/J_f, C) = ker(J_f ⊗_A C → C) = 0 since J_f C is the root ideal of C; `R = k[x,y]/(xy)_perf`, Tor₂(R/(x), R/(y)) ≠ 0 (bs17 line 2301) | all three perfect needed; stated so | none |
| E1.6 `perfectPresentation_torDimension_le` | m = 0; f = 1; m = 1, f = t over 𝔽_p[t^{1/p^∞}] | flat perfect polynomial extension; zero quotient, bound vacuous; Tor₁(R/J_t, R/(t)) = (t)/tJ_t ≠ 0 so bound 1 sharp | true | none |
| E1.6 `perfect_projectiveDimension_le` | P₀ = k perfect field, R = k, d = 0 | bound d + 1 = 1 while gl.dim = 0; hypotheses `[IsRegularRing P₀]`, `ringKrullDim P₀ ≤ d`, surjection from the perfection, `[PerfectRing R p]` are exactly bs17 line 2242–2253's | true, not sharp (stated as a bound) | none |
| E1.7 `IsValuationSaturated` | m = V; m = 0; V = ℤ_p, m = pV | Hom(V, M) ≅ M, map iso; Hom(0, M) = 0, bijective iff M = 0; Hom(pV, V) ≅ V with the map becoming ×p, injective not surjective | Checks correct | none |
| E2:towers.2 `IsProZero` | zero tower; ℤ ←p ℤ with p prime, p = 0, p = 1, p = 4 | zero map; composite = ×p^{m−n} ≠ 0 for p ≠ 0, so not pro-zero; p = 0 pro-zero; p = 1 identity, not pro-zero; p = 4 not pro-zero although not prime | `p.Prime` stronger than needed | note in R04 |
| E2:towers.2 `proZero_cofinal` | φ cofinal monotone | ⇒: for n pick k with n ≤ φ(k), then k' ≥ k with F.map(φ(k) ≤ φ(k')) = 0, so F.map(n ≤ φ(k')) = 0; ⇐: for φ(n) pick m killing it, then k with m ≤ φ(k), use φ(max(n,k)) ≥ m | both directions hold | none |
| E2:towers.2 `proIso_comp` | 0 → (ℤ ←0 ℤ); identity | ker/coker towers 0 → ℤ with zero transitions: pro-zero; identity: zero towers | consistent; two-out-of-three not stated | R05 |
| E2.1 `IsReplete.over`, `of_over_epi` | U = 1; Set over a two-element set | slice over 1 is X; Set × Set with componentwise condition | Checks correct | none |
| E2.1 `IsReplete.lim_map_epi` | hypotheses vs bs-proet line 740 | Lean: f₀ epi and relative epis; source: all f_i epi and relative epis; induction with pullback-stability recovers all f_i epi | Lean implies source hypotheses | none |
| E2.1 `countableProduct_epi` | Set; identities with an initial factor | product of surjections surjective; identity on ∏ (initial strict in a topos) | Checks correct | none |
| E4.1 `IsDerivedComplete` | I = ⊥; ℤ_p, I = (p); ⊕_ℕ ℤ_p; ℤ, I = (p) | f = 0 gives the identity (proved `example`); x_n = Σ_k p^k y_{n+k} converges and injectivity from ∩ p^k ℤ_p = 0; y = (e_n) needs x₀ = Σ p^n e_n ∉ ⊕; y_n = 1 needs x₀ = Σ p^k ∉ ℤ | ⊕ not complete, ℤ not complete | `directSum_counterexample` padding (R04) |
| E4.3 `isAdicComplete_iff_derivedComplete_separated` | ℤ_p; M with pM = 0; ℤ | both sides true; derived complete (x_n − p x_{n+1} = x_n is the identity) and separated; separated, not derived complete, ℤ → ℤ_p not iso | both conditions needed | none |
| E4.3 `derivedComplete_not_separated` | ψ(b) = −(Σ_{n≥1} b_n)e₀ + Σ pⁿ b_n e_n on N | ψ(b) = e₀ forces b_n = 0 (n ≥ 1) then 0 = 1, so ē₀ ≠ 0; e₀ − p^k e_k = −ψ(e_k) so ē₀ ∈ p^k M for all k | Check correct | padding (R04) |
| E4.3 `derivedCompleteModules_weakSerre` | ×p on ℤ_p; ℤ ⊆ ℤ_p | ker 0, coker 𝔽_p both complete; ℤ not complete, but it is not a kernel or cokernel between complete modules | statement as stated holds | none |
| Scope: weak contractibility = projectivity | one-point set; G-set 1 for nontrivial finite G | epis onto 1 split by choice; G → 1 has no equivariant section (free action) | Check correct | none |

**Headline theorems.** Statable at the pins and stated: Kunz's theorem in both directions, the all-module bound for regular rings, Tor independence of perfect algebras, the finite-Tor-dimension and perfection global-dimension bounds, countable products epimorphic on a replete topos, classical versus derived completeness. Not statable and named in the docstring as such: the dg-nerve comparison, the enhanced operations, Postnikov completeness, hypercover descent, h-descent, coefficient reconstruction. No statable headline is absent, and none is forced through a stand-in; `IsDerivedComplete` and `IsKFlat` are real-bodied point-site predicates, `frobeniusRootIdeal` and `valuationSaturationMap` have real bodies on native carriers. Sorry'd data: none. `set_option`: none. `lemma`: none. Process words, pull-request numbers, LaTeX delimiters, anchors in the README: none found by scan.

## Not verifiable

- Lurie HTT and SAG, ECD, Liu–Zheng, Nikolaus–Scholze, Mathew, Bhatt (two papers), Bhatt–Lurie, Robalo, Ramzi (two), Efimov, Fargues–Scholze, Scholze *Berkovich motives*: not in the seeded sample and not touched by a finding; not opened this round.
- Kunz 1969 (Amer. J. Math.), cited for the forward direction inside E1.6's route to `perfect_projectiveDimension_le`: paywalled; the same implication is certified through Stacks 0EC0 (stacks-local-cohomology line 1568).

## Source issues

- none
