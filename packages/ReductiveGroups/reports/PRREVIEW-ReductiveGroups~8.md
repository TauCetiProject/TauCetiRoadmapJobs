# Review of ReductiveGroups (pull request #1332 at 591872b)

**Verdict:** needs changes

The change since the previous head repairs the §6B affineness target (R05 of the previous review) and adds Checks and locators to §§7c, 7d and 11B. The three blocking findings below are the previous review's R01, R02 and R03, which this head leaves untouched: the eight companion files other than `ChevalleyModelTargets.lean` are byte-identical to main, and the new companion keeps the admitted constructor and the surrogate record.

## R01 (P2) — Companion docstrings hand two owned constructions to consumers

**Location:** `TauCetiRoadmap/ReductiveGroups/SpectralWeylTargets.lean:134`: “is a target of the lower FCO dictionary”; line 23: “IG.5.1 supplies the generic configuration/disc comparison”.

**Claim:** The README owns both objects (§3A.5 and §11.0 own the analytic comparison on complex points; §11A owns the plane-configuration/braid identification). Each docstring instead names a roadmap that consumes this one as the supplier, closing a cycle hidden from the dependency check by the abbreviations “FCO” and “IG”.

**Witness:** FormalConnectionsOpers at its open head, README line 67, lists ReductiveGroups Layers 0–9 and 6B as its supplier and line 2444 says ReductiveGroups Layer 11 consumes its §4.3. InverseGaloisAndArithmeticFundamentalGroups at its open head cites ReductiveGroups Layers 0, 3 and 6 in `*Needs:*` lines at its lines 394, 1453, 1483 and 4269, and its §IG.5.1 (line 5317) builds the same configuration-space/braid identification that README §11A constructs. Neither roadmap is on main; both are later than this one. The README's own dependency scan is clean (204 roadmaps, 1494 edges, 0 problems) because the edges live only in these docstrings.

**Repair:** Reword both docstrings to the local owners (“the comparison is README §§3A.5/11.0” and “README §11A constructs the configuration/disc comparison”), and in README line 3845 state the half-twist convention `(a,b)↦(aba⁻¹,a)` as this roadmap's own pinned convention instead of “IG.3.2's”. The SL₂ witness for the analytic chart needs nothing from either consumer: at `t = diag(1,−1)` the map `(X mod 𝔱, Y) ↦ [X,t]+Y` has coefficients −2, 2, 1 on `E₁₂, E₂₁, H`, determinant −4.

## R02 (P2) — Admitted data constructors remain in six companion files, and the pull request adds one

**Location:** `TauCetiRoadmap/ReductiveGroups/ChevalleyModelTargets.lean:45`: “noncomputable def canonicalSCInput : … := by sorry”; `TauCetiRoadmap/ReductiveGroups/SpectralWeylTargets.lean:63`: “noncomputable def centerHomeomorph … := sorry”.

**Claim:** The acceptance-file rules forbid a `def`, `abbrev` or `instance` whose body is `sorry` and anything mentioning one; they apply to every listed `.lean` file. `canonicalSCInput` is new in this pull request, and `coordinate`, `Points`, `rootPoint`, `torusPoint` and `torusPoint_conj_rootPoint` all mention it.

**Witness:** Counts of `:= by sorry` / `:= sorry` at this head: SignedADE 40, FoldingADE 35, SpectralWeyl 26, CoverLift 21, IntegralRational 16, ChevalleyModel 1. Among them the data constructors are the previous review's 41 (homeomorphisms, bases, Lie structures, group laws, actions, model constructors: `centerHomeomorph`, `planeBraidEquiv`, `matrixSpectrum`, `cameralEquiv`, `arrangementAction`, `integralPBWBasis`, `rootLineQuotientEquiv`, `normalizationEquiv`, `fixedIntegralBasis`, `signedCycleEquiv`, `smithKernelEquiv`, the `coverGroup` laws, …) plus `canonicalSCInput`. `Suggested.lean`, `OrbitGeometryTargets.lean` and `BruhatCoordinateTargets.lean` contribute none.

**Repair:** Delete the admitted constructors and every declaration that mentions them from the companion files; keep each heavy construction as a README target with its intended signature (the README already carries all of them). Do not move the admissions into `Suggested.lean`. The centering witness survives in the README: `(1,3) ↦ (2,(−1,1))`, inverse by addition; `n = 0` has one configuration and acquires no `ℂ` factor.

## R03 (P2) — The Chevalley input record still admits a torus as the simply connected model

**Location:** `TauCetiRoadmap/ReductiveGroups/ChevalleyModelTargets.lean:23`: “structure SCRealizationInput”; its only root constraints are `rootWeight` (eigenvalue equations) and `weightsGenerate`.

**Claim:** No field ties the operators `rho(e i)` to the prescribed normalized frame, so a record whose root operators are zero satisfies every field, and the file's one theorem is true of it.

**Witness:** Type A₁, `V = ℚ²`, lattice `ℤ²`, `h` the genuine diagonal Cartan element with weights ±1, both `rho(e i) = 0`: `stable`, `nilpotent`, `weightVector`, `rootWeight` and `weightsGenerate` hold; the root maps `rootPoint` are identities and the Kostant toral closure has dimension 1, not 3. The README's own §9B negative Check (line 3200) names this model but the record does not exclude it. The bracket law `[E,F] = H` rejects it (`0 ≠ diag(1,−1)`) and accepts `E₁₂, E₂₁`.

**Repair:** Delete the record, `canonicalSCInput` and their dependents from the companion (they fall under R02 as well); keep §9B's full-frame construction and the missing-carrier sentence in the `Suggested.lean` docstring. Any future interface must carry the identification of `rho ∘ ι` with the normalized Chevalley frame (opposite-root and root-string equations), not only eigenvalue data.

## R04 (P3) — Companion import headers violate the acceptance-file form

**Location:** `TauCetiRoadmap/ReductiveGroups/CoverLiftTargets.lean:1`: “import TauCetiRoadmap.ReductiveGroups.SignedADETargets”; `TauCetiRoadmap/ReductiveGroups/ChevalleyModelTargets.lean:1–3` (three `TauCeti.*` lines, no `import Mathlib`).

**Claim:** Each listed `.lean` file must begin with the single line `import Mathlib` followed only by `TauCeti.*` modules; roadmap modules and `Mathlib.<submodule>` lines are refused.

**Witness:** `BruhatCoordinateTargets` imports five Mathlib submodules; `OrbitGeometry`, `IntegralRational`, `SignedADE`, `FoldingADE`, `CoverLift` and `SpectralWeyl` import `TauCetiRoadmap.ReductiveGroups.*` chains; `SpectralWeyl` places `import Mathlib` twelfth; the new `ChevalleyModelTargets` has no Mathlib root import at all (it elaborates in 2.5 s with two `sorry` warnings).

**Repair:** After R02/R03, give every surviving companion the conforming header (`import Mathlib`, then the `TauCeti.*` modules actually used), or fold its surviving headline statements into `Suggested.lean` and delete the file.

## R05 (P3) — Companion declarations that are padding

**Location:** `TauCetiRoadmap/ReductiveGroups/IntegralRationalTargets.lean:204`: “theorem rationalDistributionAction_apply”; `TauCetiRoadmap/ReductiveGroups/ChevalleyModelTargets.lean:72`: “theorem torusPoint_conj_rootPoint”.

**Claim:** These restate definitions, follow from one library lemma, specialize a pinned theorem, mirror README Checks or compute small values; an acceptance file split into companions is still not an API catalogue.

**Witness:** The previous review's probe closed `rationalDistributionAction_apply` by `rfl`; `FoldingADETargets.lean:39` and `:327` are already proved in place by `LinearMap.fixedSubmodule_eq_ker`; `torusPoint_conj_rootPoint` is `TauCeti.…kostantToralWeightTorusPoints_conj_rootSubgroupPoints` (pinned `ToralClosure/Points.lean:241`) at `hwt := D.weightVector`, `hα := D.rootWeight`; `BruhatCoordinateTargets.lean:38` “wrong_left_complement_overlaps” and the `upper3` identities mirror the §7C Checks (7 = 1 + 2·3; overlap root α₂).

**Repair:** Delete them from the companion acceptance files; the README keeps each as an API bullet or Check. Never prove them in place.

## R06 (P3) — Shape: definitions without three Checks, no source manifest, one unclear docstring

**Location:** `TauCetiRoadmap/ReductiveGroups/README.md:1834` (Layer 7b), `:2101` (7e), `:2168` (7f), `:2203` (7g), `:3374` (9C), `:3456` (10A), `:3618` (10C), `:3645` (10D), `:3961`–`:4076` (11C–11F); `TauCetiRoadmap/ReductiveGroups/FoldingADETargets.lean:310`: “Uniform matrix and exceptional exact-word certificates”.

**Claim:** Layers 7c, 7d and 11B now carry `**Checks.**` blocks, but the subsections above define objects (the transporter adapters of 7b, the corner idempotents of 7e, the Harish–Chandra-to-permutation adapter of 7f, `G^σ` of 7g, the jet duals and `μ₀` of 9C, the rational category of 10A, the binary-form modules of 10C, the coefficient coalgebra and the `SL₂/N⁺` charts of 10D, `χ`, `E`, the cameral map and the root local system of 11C–11F) with worked numbers in prose or in `### Examples` only, not as three discriminating Checks each. No `sources.toml` records the cited works. The FoldingADE docstring names “exact-word certificates”, which is neither standard nor defined.

**Witness:** `grep -n '^\*\*Checks' README.md` finds blocks only at lines 1924/1935 (7c), 2015/2029 (7d) and 3570–3602 (10B) in the stretch from Layer 7b to Layer 11: none in 7b (lines 1834–1889), 7e (2101–2167), 7f (2168–2202), 7g (2203–2264), 9C (3374–3449), 10A (3456–3481), 10C (3618–3644), 10D (3645–3753) or 11C–11F (3961–4077). `ls TauCetiRoadmap/ReductiveGroups` has no `sources.toml`.

**Repair:** Add three discriminating Checks per defined object in the listed subsections (for 7b: `P = Q`; opposite Borels of `GL₂` with `T ∩ uTu⁻¹` scalar; `GL₃` line/plane parabolics with intersection `T`), record every cited work in `sources.toml` with its legal source or `uncertified` status, and replace line 310's docstring by the mathematical statement (surjectivity of the Serre lift onto the fixed subalgebra by the uniform matrix root-word generation and the explicit D₄/E₆ bracket words).

## R07 (P3) — Three locator slips and one secondary citation

**Location:** `TauCetiRoadmap/ReductiveGroups/README.md:1654`: “§6.3 and Proposition 12.3.1, pp. 127–128”; `:2275`: “Theorem 23.25 and Remark 23.26, p. 493”; `:3899`: “Theorem 6.10, p. 46”.

**Claim and witness:** In Conrad–Feng (conrad-feng, version of December 5, 2020) §6.3 begins on p. 53 (line 2229) and Proposition 12.3.1 is on p. 127 (line 5345); only the proposition is on p. 127. Milne's Theorem 23.25 is on p. 492 (milne line 20291, page marker 504 = printed 492); the remark continues on p. 493. Ernst's Theorem 6.10 (ernst line 1504, p. 46) is stated with no proof as Brieskorn's theorem; the primary source is named in §11G's prose but absent from `## References`.

**Repair:** Write “§6.3, p. 53, and Proposition 12.3.1, p. 127”; “pp. 492–493”; and add Brieskorn, *Die Fundamentalgruppe des Raumes der regulären Orbits einer endlichen komplexen Spiegelungsgruppe*, Invent. Math. 12 (1971), to `## References` beside Ernst.

## R08 (P3) — The RootSystems gap has no plan registry to live in

**Location:** `TauCetiRoadmap/ReductiveGroups/README.md:357`: “What RootSystems must provide (gap:root-automorphism-based-factorization)”, consumed at lines 2654 and 2681.

**Claim:** The previous review asked for the slug in `design/plan.json`. This roadmap is a revision of a roadmap already on main; it has no package and no `design/plan.json`, so that registration cannot be made inside this pull request. The contract itself is precise and minimal: main RootSystems (Layers 1–6, lines 218–391) states chamber transitivity but no `Aut(P) = W ⋊ D` factorization (no match for “factorization”, “Aut(P)”, “diagram automorphism” or “semidirect” in its README).

**Witness:** A₁: `|Aut| = 2 = 2·1`; A₂: `12 = 6·2` and `δ s₁ δ⁻¹ = s₂`, so `(1,δ)(s₁,1)` acts as `s₂δ`, as the README's Check says.

**Repair:** Keep the README contract; record in the pull-request description that the gap is declared in the README only because the roadmap has no plan file, so the operator can announce it on RootSystems' job. Nothing else to change.

## Verified sound

This is a full review: all 4,191 lines of the README and all nine listed `.lean` files were read, including unchanged passages. Only `README.md`, `Suggested.lean` and the new `ChevalleyModelTargets.lean` differ from main; `git diff --stat origin/main...HEAD` outside the folder is empty. The worker's gate passes every check. Independent runs on this head: `lake env lean` on `Suggested.lean` gives nine `sorry` warnings only (3.6 s); on `ChevalleyModelTargets.lean` two `sorry` warnings (2.5 s); the dependency check prints

```text
depcheck: 204 roadmaps, 1494 edges, 0 problem(s)
```

with no UPWARD, CYCLE or moved line. Pins: Tau Ceti `a91d3aaf`, Mathlib `6b7abb3c` (branch manifest); main's manifest pins `358314d4` / `f6090c70`; every name below was checked at the branch pin, and the Tau Ceti theorems the folder's STATUS file attributes to a later library commit (`reductiveCommHopfAlgProperty_iff_linearlyReductive`, `isIso_fppfHomogeneousQuotientToCoinvariantsPoints_of_reductive`) exist at neither pin, so the §6.2 headline is genuine at both.

### Previous findings, one by one

| Previous finding | Passage at this head | Disposition |
|---|---|---|
| R01 consumer attribution | `SpectralWeylTargets.lean:134`, “target of the lower FCO dictionary” | Not repaired; R01 here, now with the IG.5.1 attribution at line 23. |
| R02 admitted data | `ChevalleyModelTargets.lean:45`, “noncomputable def canonicalSCInput … := by sorry” | Not repaired; R02. |
| R03 surrogate record | `ChevalleyModelTargets.lean:23`, “structure SCRealizationInput” | Not repaired; R03. |
| R04 plan.json gap | `README.md:357`, “What RootSystems must provide (gap:root-automorphism-based-factorization)” | Not actionable in this pull request (no plan file exists); R08, P3. |
| R05 complex-only affineness | `README.md:1544`, “affine quotients by reductive subgroups … A an affine algebraic group of finite type over k, and H a closed subgroup whose identity component is reductive” | Repaired: general affine ambient group, disconnected `H`, algebraically closed characteristic zero; the `Gₐ×Gₘ ⊃ Gₘ`, `Gₘ ⊃ μ₂` and `S₃ ⊃ C₂` Checks compute correctly (below). |
| R06 imports | `CoverLiftTargets.lean:1` | Not repaired; R04. |
| R07 padding | `IntegralRationalTargets.lean:204` | Not repaired; R05. |
| R08 shape and sources | §§7c, 7d, 11B now carry Checks and locators (lines 1920–1980, 2015–2040, 3918–3945); no `sources.toml` | Partly repaired; R06. |

### Headline theorems and padding

README endpoints: orbit local closedness, boundary dimension drop and closed-orbit existence (3A); proper complex points compact and smooth comparison (3A.5); characteristic-zero reductive ⇔ linearly reductive and Levi complements (6, 6A); affine quotients by reductive subgroups (6B); Lang–Steinberg and finite-field Harish–Chandra/Mackey (7a–7g); split and relative classification (8); signed ADE lattice, cover lifts and folding (9A.1), integral PBW (9A.6), pinned integral models (9B), distributions and Frobenius (9C); highest-weight classification and Steinberg modules (10); braid, arrangement and spectral Weyl monodromy (11).

`Suggested.lean` states nine: `orbit_locallyClosed`, `boundary_dimension_lt`, `exists_closed_orbit_in_closure`, `exists_closed_orbit`, `compact_complexPoints`, `reductive_iff_linearlyReductive`, `exists_characterKernelEquiv`, `integral_pbw`, `permutation_extension_nonsplit`. The module docstring names the missing carriers for the rest (signed root-space Lie algebra, pinned folding action, relative center/derived/tori/Borel schemes, pinned integral model, homogeneous quotient with invariant comparison, rational highest-weight modules, regular-semisimple quotient, manifold atlas, general scheme Frobenius). No further statable headline was found absent.

**Padding probe.** A scratch copy replaced each of the nine `sorry` bodies by `first | rfl | (simp; done) | infer_instance | decide | (simp_all; done)`; all nine fail (6.0 s), so nothing in `Suggested.lean` closes in one tactic. **Signature check.** A scratch copy with `#check @name` for all 28 declarations elaborated once; every elaborated type keeps its README binders: algebraic closure, affine/smooth/quasi-compact group, finite-type/quasi-compact/separated action scheme, properness, `CharZero` with explicit smoothness and geometric connectedness, centrality `hc`, crystallographic pairing with base, and `2 ≤ n`. No section binder was lost.

### Seeded source sample

Cache ids and page maps: milne `503f1a7d` (author-page copy of the 2017 book, printed = PDF − 12); jantzen `e56685b0` (MPIM preprint 1985-9, printed = PDF − 5); conrad `1a63a17e` (printed = PDF); dudas-michel `843c1774` (printed = PDF); sga1 `8e64218d` (printed = PDF − 16); arzhantsev `786bff56`; ernst `abff0e50` (printed = PDF − 4); conrad-feng `a0caf508` (version of December 5, 2020; printed = PDF); fang-lim-tan `650154cf`.

| Section | Source text read | Conclusion |
|---|---|---|
| 0.2 model interfaces | milne lines 3063–3076, Prop. 3.6 and Cor. 3.7, pp. 66–67 | Hopf structure ⇔ group structure on the spectrum; the field case is as cited; the arbitrary-ring case correctly goes to `hopfSpec.fullyFaithful`. |
| 0.3 base change/descent | milne lines 4989–5017, Def. 5.65 and Prop. 5.68, p. 116 | Flat sheaf condition and sheafification; representability is correctly left to Layers 3 and 8. |
| 1.0a rational representations | milne lines 3765–3798, Remark 4.1, pp. 84–85 | Representation ⇔ right comodule through the universal point; coefficient equations agree. |
| 1.1 cohomology/induction | jantzen lines 1507–1533 (I.3.3, pp. 52–53), 1537–1566 (I.3.4–3.5, pp. 54–55), 1597–1600 (I.3.6, p. 56); 2102–2156 (I.4.14–4.16, pp. 77–79) | Flat Hopf algebras, `f(gh) = h⁻¹f(g)` convention, Frobenius reciprocity with counit, Hochschild complex with coefficient-first terms and the cofree resolution; the OCR drops displayed coface formulas, which the Checks recompute. |
| 3.1 quotients | milne lines 4421–4438, Thm. 5.13, p. 101; 4492–4510, Prop. 5.18, p. 102 | Universal property and existence of an affine quotient by every normal subgroup, with no reducedness; the coinvariant description is a target here. |
| 3.2 components | milne lines 1070–1082, Prop. 1.34, pp. 16–17; 2493–2519, Prop. 2.37 and Def. 2.38, pp. 51–52 | `G°` geometrically connected, étale `π₀`, exact sequence, base change and products; no smoothness assumed. |
| 4.2 diagonalizable | milne lines 9630–9717, Prop. 12.3, Remark 12.5, Thms. 12.8–12.9, pp. 231–234 | Contravariant equivalence, exactness, smooth ⇔ no `p`-torsion. |
| 4.3 multiplicative type | milne lines 9824–9826, Def. 12.17, p. 236; 9954–9982, Thm. 12.23 and Cor. 12.25, p. 240 | Arbitrary-field Galois anti-equivalence; tori ⇔ torsion-free character module; purely inseparable invariance. |
| 5.2 unipotent radical | milne lines 11750–11754, Cor. 14.8, p. 282; 16386–16408, Props. 19.9 and 19.11, pp. 399–400; 5718–5727, Prop. 6.42, pp. 134–135 | Largest smooth connected normal unipotent subgroup, separable base change, perfect-field reductive quotient; the “may not stay largest” caveat supports the inseparable Check. |
| 6.2 linear reductivity | milne lines 10280–10335, Def. 12.52, Remarks 12.53/12.56, Prop. 12.54, pp. 248–249; 19713–19731, Thm. 22.42, pp. 477–478 | Characteristic-zero equivalence for connected groups; the README's smoothness restriction on the positive-characteristic torus criterion is needed (source issue below). |
| 7.2 parabolics and Levis | conrad-feng lines 5345–5369, Prop. 12.3.1, p. 127; 2229, 2400 (§6.3, p. 53) | Simply transitive `U(k)`-action on Levi factors over any field, unique Levi through a maximal torus, `k`-split descended radical; page slip is R07. |
| 7.3 root extraction/Bruhat | milne lines 17715–17722, Cor. 21.12, p. 430; 18538–18559, Thm. 21.80, p. 450; 18457–18466, Prop. 21.75, p. 448 | Reduced root datum from a split pair, cellular and Bruhat decompositions with `U_w × B ≅ U_w n_w B`, Tits system on `k`-points. |
| 8.2 relative groups | conrad lines 3334–3338 (Def. 3.1.1, p. 81), 3518–3524 (Prop. 3.1.9, p. 85), 3659–3664 (Cor. 3.1.11, pp. 88–89), 3868–3876 (Thm. 3.2.6, pp. 94–95), 4072–4075 (Thm. 3.3.4, pp. 98–99), 6592–6603 (Thm. 5.2.11, pp. 157–158), 6685–6691 (Thm. 5.3.1, pp. 160–161), 8159–8182 (Thms. 6.1.16–6.1.17, pp. 196–197) | Fiberwise definition, open reductive locus, limit descent, smooth quasi-affine torus scheme, smooth proper Borel scheme with ample determinant, multiplicative-type center, semisimple derived group, nonempty-base classification. |
| 8.3 pseudo-reductive | milne lines 5770–5784, §6.47 and Example 6.48, p. 136; 16386–16390, Prop. 19.9 | Pseudo-reductive versus reductive after closure; the source's two-coordinate example formula is an error for `p ≠ 2` (below), which the README avoids by its own Weil-restriction calculation. |
| 11.0 analytic dictionary | sga1 lines 9399–9411, XII Thm. and Def. 1.1, pp. 239–240; 9639–9648, Prop. 3.2(v), pp. 245–246 | Completed-local-ring isomorphism, hence the cotangent comparison; properness ⇔ proper analytic map. |

Changed passages were also read at their locators: arzhantsev lines 46–55 (Thm. 2.1 and Prop. 2.2, p. 2: affine ambient group, reductive subgroup, algebraically closed characteristic zero); dudas-michel lines 1599–1637 (Def. 9.2, Remark 9.3, Prop. 9.4, pp. 35–36), 1665–1697 (Thm. 9.6, p. 37), 1701–1760 (Lemmas 9.9–9.11, pp. 38–39), 1457–1467 (Prop. 8.9, p. 32); ernst lines 891–893 (Def. 5.1, p. 27), 1056–1070 (Thm. 5.11, p. 32), 1373 (Thm. 6.1, p. 41), 1504–1507 (Thm. 6.10, p. 46); fang-lim-tan lines 91–121 (§2.1, pp. 2–3). Other locators spot-checked against page markers: Milne Prop. 1.65–1.66 pp. 26–28 (lines 1461–1514), Thm. 9.11 p. 168, Thm. 9.18 p. 170, Thm. 10.23 p. 193, Prop. 14.3 p. 280, Thm. 14.5 p. 281, Prop. 14.32 p. 289, Thm. 16.30 p. 334, Thm. 17.96 and Cors. 17.97–17.98 p. 383 (lines 15752–15775; convention `gF(g⁻¹)`, inverted as the README says), Def. 22.21 p. 468, Prop. 22.27 p. 470, Thm. 23.55 p. 501.

### Pinned libraries and ownership

Opened at the pin (file and line): `TauCeti/Algebra/AlgebraicGroup/Reductive/Basic.lean:70` `reductiveCommHopfAlgProperty` (smoothness and geometric connectedness are conjuncts; the headline's extra `hsmooth`, `hconnected` are what the converse needs); `LinearlyReductive.lean:64` (complete reducibility of finite-dimensional comodules); `Connected/CommHopfAlgCat.lean:61` `geometricallyConnectedCommHopfAlgProperty` (connected spectrum after every field extension); `Lie/UniversalEnveloping/Kostant/Form.lean:124` `kostantForm` (subring closure on divided powers and binomials of the supplied vectors); `Kostant/RootSubgroup/Scheme/ToralClosure/Points.lean:241` the conjugation theorem (R05 witness); `GroupTheory/SpecificGroups/Braid/Basic.lean:304` `permHom`, `:151` `exponentSum_sigma` (each generator has exponent sum 1, the parity fact §11A uses); `GroupTheory/Coxeter/Artin.lean:121,233` `ArtinGroup`, `exponentSum_gen`; `LinearAlgebra/RootSystem/SimplyConnectedRootDatum/DiagramAutomorphism.lean` `diagramAut` (weight map precomposes with `σ⁻¹`, coweight map with `σ`: the README's transpose warning in §9A.1b is right); `AlgebraicGeometry/Group/Smooth.lean` (`dense_smoothLocus_of_perfectField`, `pointEquivClosedPoint`); Mathlib `AlgebraicGeometry/Group/Smooth.lean` `smooth_of_grpObj`; and existence of every other backticked native name in the README (`fundamentalGroupToMulOpposite`, `frobeniusFixedPointsMulEquiv`, `iterateFrobeniusPoints`, `typeBEquivSo'`, `serreDiagramAut`, `serreDiagramAut_iterate_eq_id`, `serreLift_comp_serreDiagramAut`, `geckLieEquivOfEquiv`, `IsSerreSystem`, `serreLift`, `cofreeUnit`, `cofreeEquiv`, `Spec.mapMulEquiv`, `isLocallyConstructible_image`, `jacobsonSpace`, `indTrivialEquiv`, `finrank_indFDRep`, `indCoindIso`, `IsIsogeny`, `kostantToralGroupScheme`, `baseChangePointsMulEquiv`, `isTorsionFree_kostantToralCoordinateHopfAlgebra`, `kostantFormBaseChange`, `instHopfAlgebraKostantForm`, `kostantFormComul_dividedPower`, the `LinearlyReductive/Fixed.lean` lemmas, `diagonalRootDatum`, `pointsMulEquiv_mapValue`, `exists_isCompl_of_isKilling`, `weylGroupCorootRep`, `Proj.toSpecZero`, `exists_isStandardSmooth`, `isUnit_stalk_iff`, `IntegralLattice.ofIntegralForm`/`carrierIsometry`/`rationalizationIsometry`, `convolutionAction`, `weightSpace`, `tensorComponent`, `rootPairingBaseChange`, `weylCoxeterHom`, `coxeterMatrixOfBase`): all present. The resolver's 26 unresolved Lean names are this roadmap's own `Suggested.lean` declarations plus `Gassmann.almostConjugate_iff_permutation_equiv`, which is main InductionRestriction §2.1's declared name; none is a defect.

Cross-roadmap citations resolved: SchemeAndStackFoundations §§0.3, 0.7, 0.9, 0.29, 1.1, 1.14–1.18, 2.6, 4.12 and ModularCurves §§0B, 0E, 0F (on main); RootSystems Layers 1–6 (main `RepresentationTheory/RootSystems/README.md` lines 218–391; no factorization, so the gap is correctly declared); SmoothBundlesConnections B1.0/B1.1/B1.4; LieHighestWeight Layers 3–4 and 7; InductionRestriction §2.1; IntegralLattices §0G; AlgebraicTopology Stages 1 and 4; DGFloer Layer 1.2; LieGroups Layer 8; GroebnerGeometry G5; ReflectionInvariantTheory; NilpotentOrbits; SchubertGeometry; AlgebraicVectorBundles — all on main. Consumers: main ChevalleyGroups (lines 6, 49, 62, 66, 123) and CFSGStatement (lines 202, 312, 547) cite Layer 9A/9B by section; neither, nor the CFSGStatement revision at its open head, names any declaration of `ChevalleyModelTargets.lean`, so deleting it (R02/R03) breaks no consumer. Ownership of the configuration/braid identification: this roadmap on main is the earliest owner (§11A), and GeometricTopology imports it from here; the duplicate in InverseGalois §IG.5.1 is that open head's matter, and this roadmap must not cite it (R01). No other main roadmap claims the classical topology on complex scheme points.

### Computed adversarial table

Every row gives values computed on each side; “retain” means the README statement and the computed instance agree. Sample targets, all nine headlines and every finding witness appear.

| Statement | Instances | Values on the two sides | Result |
|---|---|---|---|
| 0.2 three models, order | SL₂: `(I+E₁₂)(I+E₂₁)` vs reversed | `[[2,1],[1,1]]` vs `[[1,1],[1,2]]` | Retain; opposite convention excluded. |
| 0.2 trivial group | `k`, test algebra `R` | one algebra map, one point | Retain. |
| 0.2 dual numbers | `Gₐ`, `t ↦ ε` | survives in all three views; `k`-points lose it | Retain scheme-valued tests. |
| 0.3 base change | `μ₂` over `𝔽₂` / `ℚ` | `(t−1)²`, rank 2 nonreduced / reduced rank 2 | Retain. |
| 0.3 inseparable | `αₚ` over `𝔽ₚ(s) ⊂ 𝔽ₚ(s^{1/p})` | dimension `p` both sides | Retain. |
| 1.0a weight 3, `a = 2` | action / dual / pairing | `8v`, `ℓ/8`, `ℓ(v)`; `2·4 = 8` | Retain inverse on dual. |
| 1.0a `Gₐ` translation | `Δt = t⊗1+1⊗t`, `a` | `t ↦ t+a` (not `t−a`) | Retain. |
| 1.0a `tᵖ` | character kernel | `μₚ`, degree `p`, one geometric point | Retain scheme kernel. |
| 1.1 Hochschild `H = A = M` | differentials | `0, id, 0`; `H⁰ = A`, higher 0 | Retain; all-zero complex fails. |
| 1.1 coaction-first sign | weight-one `Gₘ` | `d⁰(1) = 1⊗(t−1)`; permuted `(t−1)⊗1` | Retain, no sign. |
| 1.1 induction `1 ⊂ C₂` | over `ℤ` | rank 2, swap matrix `[[0,1],[1,0]]` | Retain. |
| 1.1 inversion | `F(t) = t` | `f(t) = t⁻¹`; both 1 at the identity | Retain. |
| 3.1 Hopf ideals in `k[t,t⁻¹]` | `(t−1),(t²−1),(t−2)` | counits `0,0,−1` | Third excluded. |
| 3.1 nonreduced quotient | `αₚ×αₚ / αₚ`, `p = 2,3` | coinvariants `k[y]/(yᵖ)`, dims 2, 3 | Retain. |
| 3.1 normality | `S₃/A₃`, `S₃/⟨(12)⟩` | order 2 quotient; `(123)⟨(12)⟩(123)⁻¹ = ⟨(23)⟩` | Normality separates. |
| 3.2 `π₀` degrees | `μ₂/𝔽₂`, `μ₂/𝔽₃`, `μ₃/ℝ` | `1`, `2`, `3` with 1 real point | Retain geometric count. |
| 3.2 nonreduced product | `αₚ × (ℤ/2)` | `G° = αₚ` degree `p`, `π₀` degree 2 | Retain. |
| 3A orbit headline | `Gₘ` on `𝔸¹`, `x = 1, 0` | `D(t)` open, `{0}` closed; `0 < 1`, `−∞ < 0` | `orbit_locallyClosed`, `boundary_dimension_lt` retain. |
| 3A closed orbit | `𝔸¹`, empty scheme | `y = 0` exists; empty has no point | `Nonempty` binder needed in `exists_closed_orbit`. |
| 3A two closed orbits | `Gₘ` on `ℙ¹` | `{0}`, `{∞}` both closed in `ℙ¹` | Existence only; `exists_closed_orbit_in_closure` retains. |
| 3A.5 compactness headline | `ℙ¹(ℂ)`, `𝔸¹(ℂ)`, empty | compact; integers unbounded; compact | `compact_complexPoints` retains properness. |
| 3A.5 subbasis | `f = t`, `W` unit disc; `f = 0` | disc; all points | Not Zariski, not discrete. |
| 4.2 `D(M)` | `M = 0, ℤ, ℤ/p` | `1`, `Gₘ`, `μₚ` with `k[u]/(uᵖ)` | Retain. |
| 4.2 doubling | `ℤ →2 ℤ` | `t ↦ t²`, kernel `μ₂` also at `p = 2` | Retain. |
| 4.3 pairing | `χ = 3`, `λ = −2` | `t⁻⁶`, `−6` | Retain sign. |
| 4.3 norm-one torus | `ℂ/ℝ` | geometric rank 1, conjugation `−1`, real characters 0 | Retain Galois lattice. |
| 4.3 `Gₐ` | characters 0 | dimension 1 vs `D(0)` dimension 0 | Not multiplicative type. |
| 5.2 radicals | `Gₐ, Gₘ, SL₂` | `R_u` dims `1, 0, 0`; `SL₂ ⊃ U₂` nonnormal | Retain. |
| 5.2 Weil restriction | `Res_{K/k}Gₘ`, `[K:k] = p` | `k`-radical 0, geometric radical `p−1` (`p = 2`: 1) | Retain inclusion only. |
| 5P exponential | `X = E₁₂`, `Y = E₂₃` | `(1,3)` entries 1 vs 1/2 | Variety, not additive group. |
| 6.2 headline | `Gₘ/ℚ`, `Gₐ/ℚ`, `SL₂/𝔽₂` | (reductive, lin. red.) `(1,1)`, `(0,0)`, `(1,0)` | `reductive_iff_linearlyReductive` needs `CharZero`. |
| 6.2 Reynolds | `Gₘ` on `k[x,x⁻¹]` | `R(x)R(x⁻¹) = 0`, `R(1) = 1` | Not multiplicative. |
| 6.2 `μₚ` | characteristic `p` | linearly reductive (ℤ/p-graded), length `p`, not a torus | Smoothness essential. |
| 6A semidirect law | `Gₐ ⋊ Gₘ` | `(1,2)(3,5) = (7,10)` | Retain action term. |
| 6B `H = 1`, `H = A` | invariants | `O(A)`, `k`; dims `dim A`, 0 | Retain. |
| 6B `SL₂ ⊃ T` | `x = ab, y = cd, z = ad` | `xy = (ad)(bc) = z(z−1)` | Retain surface of dim 2. |
| 6B `Gₐ×Gₘ ⊃ Gₘ` (R05) | right translation | `k[x,t,t⁻¹]^H = k[x]`, dim 1; over `k[ε]/ε²` keeps `ε` | Non-reductive ambient group admitted. |
| 6B `Gₘ ⊃ μ₂`, `S₃ ⊃ C₂` | `H° = 1` | `k[t²,t⁻²]`, degree 2; `k³`, fibres of 2 points | Disconnected `H` admitted. |
| 6B Borel | `B ⊂ SL₂` | `ℙ¹` dim 1 vs `Spec O(ℙ¹)` dim 0 | Reductivity of `H` needed. |
| 7.2 Levi conjugation | `diag(s,t)` by `I+aE₁₂` | upper entry `a(t−s)`; `P = G` gives one conjugator | Retain simply transitive. |
| 7.2 dynamic parabolic | `λ = diag(t,1)` | `E₁₂ ↦ tE₁₂`, `E₂₁ ↦ t⁻¹E₂₁` | Upper triangular; `−λ` opposite. |
| 7.3 `SL₂` root | `diag(t,t⁻¹)` | root `t²`, coroot `t ↦ diag(t,t⁻¹)`, pairing 2 at `p = 2` | Integral character retained. |
| 7.3 flag cells | `GL₂/𝔽_q` | `1 + q`; `q = 2`: 3 points | Retain. |
| 7C complements | A₂, `w = s₁` | `A_w = {α₂, α₁+α₂}`, `I_w = {α₁}`; `H_{w₀s₁}` has root `α₂` | Wrong choice overlaps; matches the companion Check. |
| 7C coordinates | `upper3(2,3,7)·upper3(5,11,13)` | `(7,14,42)`, `42 = 7+13+2·11` | Retain. |
| 7a Lang | `𝔽₄ ∋ a`, `a²+a+1 = 0`; constant `C₂` | `a²+a = 1`; image `{1}` | Geometric points; connectedness needed. |
| 7b intersection | `GL₂`, `T ∩ uTu⁻¹`, `u = [[1,1],[0,1]]` | scalars only, dim 1 | `u ∉ S(T,T)`. |
| 7c induction | `S₃ ⊃ C₂`, `Λ = ℤ[1/2]` | rank 3; transposition trace 1 | Retain. |
| 7c averaging | `Λ[S₃]`, `e_U = (1+u)/2` | three orbits, invariants rank 3; `[U]⊗1 ↦ (1+u)/2 ↦ [U]⊗1` | Inverse equations retain. |
| 7c sign/trivial | `C₂` on sign / trivial | `e_U` acts by `0` / `1` | Retain. |
| 7c `𝔽₂` | augmentation | `1+u ↦ 0` | Invariants not exact; `p ∈ Λˣ` needed. |
| 7d transport | `S₃`, `M = ⟨(123)⟩`, `x = (12)` | `x(123)x⁻¹ = (132)` acts by `ζ`, so `(123)` by `ζ⁻¹` | Direction fixed. |
| 7d `GL₃` adapter | `x = (123)`, `χ = a` | transported `χ' = b` (`3` at `diag(2,3,5)`); wrong direction `c = 5` | Retain. |
| 7d transporter | `Gₘ`; `GL₂` `(T,T)`; `(G,T)` | `T`; `N_G(T)/T` of size 2; `G`, one double coset | Retain. |
| 8.1 `SL₂` vs `PGL₂` | root in `X*(T)` | twice generator vs primitive; kernel `μ₂` length 2 at `p = 2` | Lattices classify. |
| 8.2 bases | `Spec ℤ`, `ℤ/4`, `Spec 0`, `k[x₁,…]`, `Spec k ⊔ Spec k` | center `μ₂` length 2 at 2; empty; ranks `(1,1)`; `SL₂` would give `(2,1)` | Nonempty base needed. |
| 8.3 `p = 3` units | `(1+aε+bε²)(1+cε+dε²)` | `ε²`-coefficient `b+d+ac`; kernel dim 2 | Retain. |
| 9A.1a cocycle | A₂, `α₁ < α₂` | `ε(α₁,α₂) = 1`, `ε(α₂,α₁) = −1`, ratio `(−1)^{B} = −1` | Retain. |
| 9A.1a inverse | `(a,s)(−a, sε(a,−a))` | `(0, ε(a,−a)²) = (0,1)` | Retain. |
| 9A.1a opposite lift | `a = α₁+α₂` | `ε(a,−a) = −1`; `[E₁₃, −E₃₁] = −(H₁+H₂)` | Retain sign. |
| 9A.1a shell | norm 2 | `a+b ∈ Φ ⇔ B(a,b) = −1` (`4+2B = 2`); `B = 2 ⇔ a = b` | Retain. |
| 9A.1a-L headline | `ℤˣ×ℤ`, `χ(n) = (−1)ⁿ` | `(1,1) ↦ (−1,1)`; trivial `χ` fixes | `exists_characterKernelEquiv` retains centrality. |
| 9A.1a-L nonabelian | `Q₈ → C₂²`, `χ(i) = −1, χ(j) = 1` | `i ↦ −i`, `j ↦ j`, `k ↦ −k`; `(−i)j = −k` | Homomorphism; four twists. |
| 9A.1a-L factorization | A₁, A₂ | `2 = 2·1`; `12 = 6·2`, `δs₁δ⁻¹ = s₂` | Gap mathematics sound (R08). |
| 9A.1b sign action | A₂ swap | `q_γ(a) = a₁a₂`; `s_γ(α₁+α₂) = −1` | Negative highest-root cycle. |
| 9A.1b folded Cartans | A₃, A₄, D₄ reversal/triality | `[[2,−2],[−1,2]]`, `[[2,−1],[−2,2]]`, `[[2,−3],[−1,2]]` | Retain H-row convention. |
| 9A.1b A₂ fold | `e = x_α+x_β`, `f = x_{−α}+x_{−β}`, `h = H_α+H_β` | `[e,f] = h`, `[h,e] = e`; `E,F = 2f,H = 2h` gives index 4 | Retain. |
| 9A.1b dimensions | D₄ triality, E₆ reversal | `6+6+2 = 14`, `24+24+4 = 52` | Retain. |
| 9A.1b full-Y | `γ_Y = [[0,−1],[1,−1]]` | `det(γ−I) = 3`, Smith `1,3`; `𝔽₃` kernel `(1,−1)` | Retain torsion obstruction. |
| 9A.6 headline | root-free rank 1; rank 0 | `1, h, h(h−1)/2` at weight `−1`: `1,−1,1`; basis `{1}` spans `ℤ` | `integral_pbw` retains full torus. |
| 9A.6 divided powers | A₁ | `e⁽¹⁾e⁽¹⁾ = 2e⁽²⁾`; mod 2 zero | Base change, not division. |
| 9B isogeny points | `SL₂(ℚ) → PGL₂(ℚ)` | `diag(2,1)` nonsquare class | Not pointwise surjective. |
| 9B torus model (R03) | A₁, zero root operators | all record fields hold; dimension 1 vs 3; `[0,0] = 0 ≠ H` | Record does not exclude it. |
| 9C `μ₀` | `binom(m−1,p−1)` mod `p` | 1 iff `p | m` | Projects onto `pX`. |
| 10B induced `Gₘ`, `λ = 3` | `f(t) = t⁻³` | `f(tb) = b⁻³f(t)`, `(a·f) = a³f` | Weight `+3`. |
| 10B `SL₂`, `p = 2`, `λ = 2` | Weyl / simple | dims 3 / 2 | Retain. |
| 10B contravariant form | `λ = 2`, basis `v, Fv, F⁽²⁾v` | `diag(1,2,1)`; rank 3 over `ℚ`, 2 over `𝔽₂` | Retain. |
| 10B anti-involution | `u = I+E₁₂`, `v = I+E₂₁` | `τ(uv) = [[2,1],[1,1]] = τ(v)τ(u)` | Order reversal. |
| 10C `p = 3`, `n = 4`; `p = 2`, `n = 2` | socle / generation | `L(4)` dim `(1+1)(1+1) = 4`, misses `x²y²`; `y²` spans 2, `xy` spans 3 | Retain. |
| 10D torsor | `s_a n(t) = s_c` | `t = −1/(ac)`; `u_c = u_a + 1/(ac)` | Retain transition. |
| 11.0 cotangent | `Gₐ`, `u = 2t` | `[t²] = 0`; `D(exp(u/2)) = 2·(1/2) = 1` | Retain. |
| 11.0 quotient rule | `Gₘ` | `D(t⁻¹) = −1` | Sign fixed. |
| 11A headline | `n = 0,1,2` | trivial, trivial, `ℤ → ℤ/2` with odd lift `a`, `2a ≠ 0` | `permutation_extension_nonsplit` retains `2 ≤ n`. |
| 11B covers | A₁, A₁×A₁ + central `ℂ` | `×2`; `(a,b) ↦ (2a,2b)`, `π₁ = ℤ²` not `ℤ³` | Retain. |
| 11B relations | A₂, B₂, G₂ | lengths 3, 4, 6 | Hexagon-only model fails B₂/G₂. |
| 11D chart (R01) | `SL₂`, `t = H` | coefficients `−2, 2, 1`; det `−4` | Local owner suffices. |
| 11E projectors | `diag(1,3)` | `diag(1,0)`, `diag(0,1)`, denominators `±2` | Simple spectrum needed. |
| R02/R05 probes | `rationalDistributionAction_apply` | closes by `rfl` (previous probe); `torusPoint_conj_rootPoint` = pinned theorem at `hwt, hα` | Padding. |
| Suggested probes | all nine headlines | `first | rfl | simp | infer_instance | decide | simp_all` fails on each | No padding. |

## Not verifiable

- Sources this review did not read: Waterhouse, Borel, Springer, Humphreys §26, Howlett–Lehrer, Dipper–Du, Carter §1.17, Lang 1956, Steinberg 1968, Gassmann 1926, Serre's finite-group book, Serre's GAGA, SGA 3 XIX, Conrad–Gabber–Prasad, McNinch, Gros–Kaneda, Hedén. Their locators are outside the seeded sample and were not fetched; none was treated as missing, and no `needs-references.toml` request was left.
- jantzen (`e56685b0`) is an image scan whose OCR drops displayed formulas in I.4.14–4.16; the prose statements and hypotheses were read, and the coface signs were recomputed in the table rather than read.
- Companion files other than `ChevalleyModelTargets.lean` were not re-elaborated here (they import roadmap modules the gate does not build); the previous review's scratch elaboration and padding probes on them are relied on for R05.
- The CFSGStatement consumer was checked on main and at its open head; the ChevalleyGroups consumer only on main.

## Source issues

- **Misprint** in milne at Remark 4.1, printed p. 84 (milne line 3767): the source says the universal point acts on the endomorphism algebra of `V⊗A`; it should be an endomorphism of `V⊗A`; affects nothing.
- **Error** in milne at Example 6.48, printed p. 136 (milne lines 5774–5777): the source gives the two-coordinate product `(xx'+tyy', xy'+x'y)` for arbitrary `p`; it should be restricted to `p = 2`, since for `p > 2` the product of `x+ys` and `x'+y's` with `sᵖ = t` has an `s²` term; affects a stated result.
- **Error** in milne at Remark 12.56, printed p. 249 (milne lines 10332–10333): the source says a positive-characteristic linearly reductive group has torus identity component; it should say identity component of multiplicative type, since `μₚ` is linearly reductive and not a torus; affects a stated result.
- **Misprint** in milne at the proof of Corollary 14.9, printed p. 282 (milne line 11758): the source cites 14.9 itself for coconnectedness; it should cite Theorem 14.5; affects the proof.
- **Error** in milne at the proof of Theorem 22.42, printed p. 477 (milne lines 19720–19724): the source says each simple summand under the centre is stable under the derived group because the actions commute; it should take central isotypic summands, since the derived group permutes isomorphic simple summands; affects the proof.
- **Gap** in ernst at Theorem 6.10, printed p. 46 (ernst lines 1504–1507): the source states the Artin presentation of `π₁(M(A)/W)` with no proof or citation at the statement; it should cite Brieskorn 1971 (and Deligne 1972 for completeness of the relations); affects nothing here, since the README makes both generation and completeness targets.
