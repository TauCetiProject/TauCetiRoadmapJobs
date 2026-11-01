# Review of WeilConjectures (pull request #1208 at ade9515)

**Verdict:** accepted

Three P3 findings, no P1 or P2 findings. The gate passes. This verdict means ready for a human's final approval, not approval or merger by the AI. The unreadable Fulton reference is recorded below; its book locators are not certified.

## R01 (P3) — Supply the missing source manifest

**Location:** `TauCetiRoadmap/WeilConjectures/README.md:1911`, “References”; the folder has no `sources.toml`.

**Claim:** The bibliography is not accompanied by the required source manifest. Previous R07 remains unrepaired.

**Witness:** The folder contains README, Suggested.lean and metadata; no manifest records the fourteen external works or the Stacks references. The legally retrieved versions include both published texts and numbered preprints.

**Repair:** Add `TauCetiRoadmap/WeilConjectures/sources.toml` using `tauceti-roadmap-sources/v1`, one stable key per work, exact locators, version notes and the sources service's provenance/status. Include Stacks and record the Fulton availability limitation honestly. For example, the manifest must distinguish published BFP Proposition 3.1, p. 1330, from the differently paginated preprint; the published passage was readable in this review. Do not put source extracts in the repository.

## R02 (P3) — Update two obsolete supplier names

**Location:** `TauCetiRoadmap/WeilConjectures/README.md:1515` and the supplier row at line 118: “`dmStack_etaleCohomology`” and “`dmStack_smoothProper_purity`”.

**Claim:** These identifiers are absent from the supplied DeligneWeightsAndPurity README and Suggested.lean. The mathematical contracts still exist in the cited §8.24, so this is a stale locator, not an unowned prerequisite.

**Witness:** `TauCetiRoadmap/DeligneWeightsAndPurity/README.md:2876` constructs rational DM cohomology by descent; line 2907 starts “Smooth proper DM purity”. Neither clause uses the two advertised identifiers.

**Repair:** Cite those two prose clauses of §8.24 by title, at both occurrences. Do not introduce replacement cohomology or purity targets here. The revised citation still supplies the test case BC₂ with rational coefficients at ℓ=2: H⁰ has dimension 1, higher groups dimension 0, and Frobenius trace 1.

## R03 (P3) — Make the inverse-indexing Check detect transposition

**Location:** `TauCetiRoadmap/WeilConjectures/README.md:807`: “For β=(1,2),c=(3,5)”.

**Claim:** This Check does not distinguish the explicitly warned-about inverse transpose. Its inverse matrix is symmetric. The recovery formula itself is correct.

**Witness:** With inverse rows (2,−1),(−1,1), moments (8,13) give (3,5) using either Aⱼₖ or Aₖⱼ. The zero-root and repeated-root Checks do not distinguish them either.

**Repair:** Replace or supplement this Check with β=(2,3), c=(3,5), n=0. Then V has rows (1,2),(1,3), inverse rows (3,−2),(−1,1), and moments (8,21). Correct column recovery gives (3·8−21,−2·8+21)=(3,5); incorrect row recovery gives (−18,13). This directly tests the convention used in the displayed theorem.

## Verified sound

This was a full review of the 1,930-line README and 168-line Lean file at the specified head, not an incremental approval of the repair. All 80 numbered subsections, their API lists, Checks, examples and dependency lines were read. The computations below cover each subsection and separately exercise definitions with materially different failure modes. Finite examples test the statements; they are not claimed to prove the proposed general theorems.

Previous findings were checked first against the new text:

| Previous finding | New passage and disposition |
| --- | --- |
| R01, duplicate rational descent/local Fatou | **Repaired.** README:338–362 consumes “§RD.6.24” and “§RD.7.4(b)”; the duplicate generic Lean statements are gone. Both supplier targets were opened. |
| R02, duplicate extraction | **Repaired.** README:706–737 says “This comparison supplies no new generic extraction theorem.” DWP §4.4 and RD §RD.7.5 provide the algebra; this folder compares it with actual counting. |
| R03, one-fan shortcut/competing integral owner | **Repaired in this folder.** README:1283 says “any commutative ring R”; §6.3 states the general smooth complete split-fan Chow/cycle comparison, including refinement inputs. §6.4 specializes it. The downstream ownership move is recorded below. |
| R04, failing HTML anchor | **Repaired.** The homology-manifold target is the ordinary subsection at README:1493; the gate reports residue=0. |
| R05, namespace/module/layer form | **Repaired.** Suggested.lean:4 has “Weil conjectures: target signatures”, line 49 the required namespace, and line 51 the first layer comment. |
| R06, advertised absent Lean names | **Repaired.** Own API names were converted to prose; all eight retained Lean declaration names occur in the README. The gate reports readme-ids-missing=0. R02 above concerns supplier names, not a restored own-name defect. |
| R07, absent manifest | **Not repaired.** The bibliography remains at README:1911, but the manifest is still absent: current R01. |
| R08, APIs and discriminating Checks | **Repaired for the previously identified definitions.** README:192–206 gives the point-count API and four Checks; §§1.7–1.12, 5.4, 5.9–5.10, 5.22, 6.2–6.4 and 7.12 now give explicit APIs and at least three Checks per defined object. Current R03 identifies a remaining convention-test weakness in a different example. |

There was no supplied repair disposition marking one of these findings not actionable. No settled finding is being reopened.

The worker's gate at this exact head reports:

```text
gate WeilConjectures: set_option=0 blob=0 latex=0 tex=0 prnum=0 sorry-data=0 sorry-examples=0 residue=0 private-paths=0 imports=0 mathlib-subimports=0 no-import-mathlib=0 lean-lines=0 forbidden=0 dropped=0 readme-ids-missing=0 empty-sections=0 round-labels=0 long-fences=0 layer-ids=0 target-ids=0 depcheck=0 metadata=0 stray-files=0 dirty=0 outside-folder=0 source-material=0 build=0 OK
```

The independent dependency check with the specified merge order, main content and movable placement reports:

```text
depcheck: 205 roadmaps, 1454 edges, 0 problem(s)
```

There is no UPWARD or CYCLE line. The diff outside this folder is empty. The worktree remained unchanged. The roadmap's constructions use arbitrary coefficient primes where required, not a good-prime shortcut. The purely mathematical recurrence and small enumeration Checks do not introduce computational algorithms. No copied source passage, sorry'd data, `set_option`, hypothesis containing a headline's conclusion, or free proposition standing for missing geometry was found.

The seeded source audit comprised **all 15 requested targets**. The README flags no additional locator as unverified. Sources were fetched through the sources service from the listed legal repositories, author pages or institutional pages. Source identifiers below refer to the line-numbered service extractions, not repository files.

| Sampled target | Text and locator actually read | Scope/hypothesis result |
| --- | --- | --- |
| 0.1 Extension tower | deligne-i lines 79–103, §1.4(a)–(d), (1.4.1), printed pp. 274–275; pinned finite-field declarations below | Positive extension degree, residue degree and field-valued points agree. The actual Hom finiteness/transport is a named geometric comparison, not supplied merely by a finite field. |
| 0.3 Geometric Frobenius | deligne-i lines 241–257, §1.15, p. 279; lines 289–306, §2.2, pp. 280–281 | Geometric Galois Frobenius versus q-power pullback, rational coefficients, and Tate eigenvalues q⁻¹/qᵈ agree. Integral cohomology alone is not claimed to supply this realization. |
| 1.1 Arithmetic Euler product | deligne-i lines 41–56, §§1.1–1.3, pp. 273–274 | Finite type over ℤ, residue-field norms, and convergence on some right half-plane match. No separatedness restriction is added to this headline. |
| 1.3 Closed-point inversion | deligne-i lines 79–103, §1.4, pp. 274–275; pinned Moebius.lean:206 | The source supplies the orbit/count sum; the stated Möbius formula is its algebraic consequence for positive degree. |
| 1.8 Stack points/compact support | bergstrom-faber-payne lines 70–86, Proposition 1.3, pp. 1324–1325; 297–361, pp. 1330–1331; 1234–1259, p. 1352; bogaart-edixhoven lines 100–198, Theorem 2.1/§3, pp. 3–6 | Mass includes torsors; the scheme-to-stack compact-support and arithmetic comparisons are explicit targets. The latter source's Lemma 3.2 coarse comparison is characteristic-zero; finite-characteristic comparison is correctly assigned to DWP §8.24. |
| 2.3 Exact sign | deligne-i lines 313–343, §§2.3–2.6, pp. 281–282; milne lines 6063–6064, Remark 27.13, p. 159 | The even-dimensional sign uses algebraic multiplicity of **positive** q^(d/2), hence a generalized eigenspace; no semisimplicity is assumed. Rational descent precedes division by q^(dχ/2). |
| 2.4 Extension sign | Same §2.6; deligne-i lines 1054–1061, base-extension step, p. 301 | The displayed sign formula is a derived consequence of F↦Fʳ and Δ↦Δʳ, not a separately numbered source theorem. The factor (−1)^((r+1)χ) is essential. |
| 5.7 Reciprocal escape | yu lines 4876–4901, Appendix C, unnumbered lemma, arXiv v5 p. 81 | Yu's distinct nonzero p-adic roots/nonzero integral coefficients are narrower. The roadmap expressly proves its arbitrary-normed-field, arbitrary-nonzero-coefficient and arbitrary-tail extension by the preceding Vandermonde argument. |
| 5.8 Generating expression | milne lines 5918–5944, Lemma 27.5, pp. 155–156; mustata lines 1139–1160, (3.11)–(3.12), p. 21; pinned Normed.lean:473 | The sources give the trace/complex generating mechanism. The general weighted `HasSum` statement follows from the pinned geometric sum, whose normed-division-ring theorem needs no completeness. Strict norm bounds exclude every denominator zero. |
| 5.21 Complete intersections | deligne-i lines 1063–1079, Theorem 8.1 and proof, pp. 301–302 | Positive dimension, smooth projective complete intersection, primitive middle Betti number and parity-dependent subtraction of 1 match. The comparison family is supplied, not asserted for every finite-field variety. |
| 5.23 Local cutoff | bergstrom-faber-payne lines 297–317, Proposition 3.1 and proof, p. 1330; bogaart-edixhoven lines 203–260, Lemma 4.1, pp. 6–7 | The roadmap correctly retains s in the error scale, allows s>d, and makes only eigenvalue/dimension conclusions. The proof's d-for-s slip is not imported. |
| 5.25 All Spec ℤ | bogaart-edixhoven lines 100–114, Theorem 2.1 last clause, p. 3; Lemma 4.2 and concluding argument, pp. 8–10; bergstrom-faber-payne lines 1234–1259, Proposition 9.3, p. 1352 | All finite primes, actual potentially semistable local representations, induction on extensions, and the global unramified argument are retained. The open-base result in §5.24 asserts only semisimplification. |
| 5.29 Surface route to curve RH | mustata lines 1092–1203, Theorem 3.6, Remark 3.7, Lemma 3.8 and Proposition 3.9, pp. 21–22 | All positive powers, the 2g coefficient, and reciprocal pairing suffice. The route uses purity-free curve rationality, not the conclusion it seeks. Two q/g misprints are corrected in the roadmap. |
| 6.8 Smooth proper DM purity | bergstrom-faber-payne lines 297–361, proofs of Propositions 3.1 and 4.2, pp. 1330–1331; deligne-ii lines 2686–2692, §3.3.11, p. 207; current DWP §8.24 | The papers use the purity/duality input; the supplier explicitly builds rational DM descent, coarse comparison and purity. Finite diagonal, rational coefficients and ℓ≠p remain. No prime-to-stabilizer-order assumption is needed. R02 is only the stale spelling of supplied clauses. |
| 6.9 Rigid/crystalline boundary | kedlaya-isocrystals lines 829–884, §§8.1–8.8, pp. 20–21; 931–962, §§9.5–9.6, p. 22; 1146–1160, §§10.1–10.3, p. 27; kedlaya-weil-ii lines 1948–1971 and 2015–2039, preprint §6.6, pp. 50–52 | φᶠ is linear q-Frobenius. The promised comparison is of degree polynomials under specified coefficient maps, not an equivalence between differently coefficiented vector spaces. The preprint was read; published pagination is qualified below. |

Additional readings include sga4half lines 2468–2558 (Rapport §§3.1–3.6, printed pp. 86–88); fujino-sato lines 299–325 (version 0.27, Example 4.1, pp. 7–8); fulton-sturmfels lines 100–171 (Proposition 1.1/(1.1), preprint pp. 4–5); schroer lines 880–958 (§7, pp. 20–21); and stacks lines 473–484, 2335–2345 and 2390–2399 (tags 0C5H, 0C5R and 0C5S). These support the trace convention, fan data, invariant-cycle relations, divisor/count applications and surface factorization respectively. Fulton–Sturmfels does not substitute for all of Fulton's book claims.

The supplier/ownership audit used object searches across main, the available open heads and board packages, followed by opening the cited passages. Main examples read for shape were EtaleCohomologyFoundations, SchemeAndStackFoundations and Completed/OrthogonalL2Bases. All supplier ranges in the exact-contract table and all individual `Needs` lines were resolved, including the dependencies used by proof routes. Representative exact locations that fix ownership and hypotheses are:

| Supplier and file | Resolved passage and consequence |
| --- | --- |
| `TauCetiRoadmap/EtaleCohomologyFoundations/README.md:907` | §§F.10.1–F.10.2b provide finite-field point/Galois conventions; §§F.4.5–F.4.6 at lines 1041 and 1089 supply rational realization/actions. §§F.5–F.7 at lines 1179, 1200 and 1239 supply duality/cycles. The citation scanner's VanishingCycles leads occur in this supplier and resolve at lines 911, 919, 1043 and 1110; they are not missing WeilConjectures inputs. |
| `TauCetiRoadmap/SchemeAndStackFoundations/README.md:1825` | §0.29 and §§1.18–1.21 (lines 2745, 2817, 2843, 2951) supply the geometric carriers/descent. §§5.9–5.11 (lines 7129, 7175, 7273) supply the surface intersection/Hodge-index result with the same fibre labels. |
| `TauCetiRoadmap/DeligneWeightsAndPurity/README.md:1372` | §4.4 owns normalized integral rationality and generic extraction; §7.15 at line 2308 owns proper purity/canonical factors. §8.24 at line 2866 contains the actual DM clauses. WC compares these with its count series instead of reconstructing them. Earlier Weil-number/trace rules and §§7.8–7.12 mixed bounds remain inputs. |
| `TauCetiRoadmap/PadicDifferentialEquationsAndRigidCohomology/README.md:11990` | §RD.6.24 is arbitrary-field rational-series descent; §RD.7.4(b) at line 13886 gives local Fatou including the residue prime; §RD.7.5 at line 13914 gives the factor adapter, and §RD.7.9 at line 14017 the characteristic-polynomial comparison. |
| `TauCetiRoadmap/EtaleDualityAndPerverseSheaves/README.md:4218` | §§4.3/4.7 (line 4658) supply complete-intersection comparison; §§8.1–8.2 (7552, 7598) and `poincareReciprocityExport` (7678) supply pairings/parity/reciprocity. They do not assemble WC's rational zeta multiplier. §1.3 supplies the cycle comparison. |
| `TauCetiRoadmap/ComplexComparisonPartII/README.md:4157` | §§C6.3–C6.6 (4157, 4216, 4257, 4323) provide finite/integral/rational Artin comparison with products and actions. WC.4 still supplies its family and transport path. |
| `TauCetiRoadmap/InverseGaloisAndArithmeticFundamentalGroups/README.md:477` | §§IG.0.T1–T4 (477, 501, 536, 558) supply Jacobian/curve realization, trace for every extension, and independent affine/projective/multiplicative-group calculations. |
| `TauCetiRoadmap/AbelianSchemesAndArithmeticModuli/README.md:1940` | §A4.4 supplies H¹/Tate and exterior-algebra comparison. `TauCetiRoadmap/AlgebraicCurves/README.md` Layers 7, 10 and 12 (783, 1193, 1468) supply Hurwitz, Artin–Schreier and model/genus comparisons; the affine equation is not passed off as a proper curve. |
| `TauCetiRoadmap/ReductiveGroupsPartII/README.md:5201` | §RG2.3.7 is the connected smooth Lang theorem; the disconnected examples here retain torsor forms. |
| `TauCetiRoadmap/ArithmeticGaloisRepresentations/README.md:3147` | §§5.1/5.3 (3193) provide density-one Frobenius recognition for continuous characteristic-zero semisimplifications. They do not split extensions. |
| `TauCetiRoadmap/PadicHodgeTheory/README.md:1016` | §5.3 and §8.1 (1378) supply the local potentially semistable and proper-smooth crystalline comparisons. WC.5.25 expressly owns the required unramified-extension implication and the stack comparison extension. |
| `TauCetiRoadmap/NeronModelsAndSemistableAbelianVarietiesPartII/README.md:3780` | §2.1 supplies the genus-one carrier, including the regular geometric-generic caveat and preservation hypotheses. §§4.0/4.5 (8828, 8975), §§5.0/5.2 (9406, 9478) supply common blowups, Picard/cohomology maps and the rank-ten criterion. WC.7 explicitly extends rank and removes the section requirement; it agrees at rank ten. |
| `Completed/AnalyticToricGeometry/README.md`, Layer 0; pinned fan files below | Existing cone/dual-semigroup/complex fan schemes are reused. They are not arbitrary-ring models. |
| `TauCetiRoadmap/ShimuraCompactifications/README.md:750` and `:778` | Downstream §§0.16–0.17 still contain the earlier integral toric plan. This repair moves its prerequisite down into WC.6.2–6.3, and names ShimuraCompactifications as a consumer, not a supplier. The downstream text must follow that ownership move; it is not an upward input here. |
| `TauCetiRoadmap/AnalyticToricGeometryPartII/README.md`, §§1.1–1.2, 6.1 | The available open head consumes integral models; its operational Chow/Minkowski-weight comparison for possibly singular fans differs from the smooth Chow ring/cycle theorem here. Its existing Shimura citation must follow the same ownership move. |
| `TauCetiRoadmap/EnriquesSurfacesAndIntegralNonexistence/README.md:20` and `:75` | This open roadmap explicitly consumes WC.7's all-characteristic Enriques/invariant/count interface. The earlier EnriquesSurfaces carrier is restricted to characteristic ≠2. The generalization here is not a second competing plan at that generality. |
| `TauCetiRoadmap/CountingBundlesAndHallAlgebrasOfCurves/README.md:89` and `:452` | This open consumer uses WC's point-groupoid mass. Searches of board packages agree with that supply direction. |

No same fully qualified name as any of the eight Lean declarations was found in the readable sibling files. Open-work ownership was checked against the supplied local heads and the tool's object-search results, not inferred from titles alone. WC is the owner of its weighted finite-spectrum extension, arithmetic/counting adapters, signed assembly, general integral fan construction and the explicitly stated surface generalizations. No existing WeilConjectures roadmap on main was being re-planned.

Pinned-library checks used Mathlib `6b7abb3c7686292736be2955bd3eb9ebf63b456a` and Tau Ceti `a91d3aafa8cd3e6bc33dfde0d7677ed0f1625039`. The following declaration bodies/signatures were opened; object searches also checked the surrounding APIs, rather than only matching proposed names:

| Pinned file and line | Evidence used |
| --- | --- |
| `Mathlib/FieldTheory/Finite/Extension.lean:48`, `:77`, `:81`, `:130` | `Extension`, `natCard_extension`, `finrank_extension`, `algEquivExtension`; positive degree and characteristic binders remain. `Mathlib/FieldTheory/Finite/GaloisField.lean:318` supplies `natCard_algHom_of_finrank_dvd`. |
| `Mathlib/AlgebraicGeometry/Sites/ElladicCohomology.lean:75` | `Scheme.EllAdicCohomology` is built from the integral sheaf as additive-group cohomology. It does not package rational finite dimension, compact supports or geometric Frobenius. This justifies the module docstring's missing carriers. |
| `Mathlib/LinearAlgebra/Matrix/Charpoly/Coeff.lean:290`, `:292`, `:313`, `:327`, `:334` | `charpolyRev` is det(1−XM), not det(X−M); reverse relation, inverse-matrix polynomial, constant coefficient 1 and linear coefficient −trace are present. The inverse theorem requires a unit matrix. |
| `Mathlib/LinearAlgebra/Vandermonde.lean:84`, `:233`; `Mathlib/LinearAlgebra/Matrix/NonsingularInverse.lean:208` | Rows are roots and columns powers. Distinctness gives nonzero determinant; `mul_nonsing_inv` requires a unit determinant. This gives Aⱼₖ in WC.5.1. |
| `Mathlib/Analysis/SpecificLimits/Normed.lean:473` | `hasSum_geometric_of_norm_lt_one` works in a normed division ring without `CompleteSpace`. |
| `Mathlib/NumberTheory/ArithmeticFunction/Moebius.lean:206` | `sum_eq_iff_sum_smul_moebius_eq` supplies additive Möbius inversion. |
| `Mathlib/FieldTheory/Galois/Basic.lean:358`; `Mathlib/RingTheory/Polynomial/GaussLemma.lean:78` | The fixed-element criterion requires finite-dimensional Galois coefficients; the monic-factor integrality theorem requires integral closure. These are inputs, not new targets. |
| `Mathlib/RingTheory/HahnSeries/PowerSeries.lean:97`; `Mathlib/Algebra/Polynomial/Roots.lean:164` | The power-series map is injective; `eq_of_infinite_eval_eq` uses infinitely many equal evaluations. Neither licenses arbitrary rational functions as power series. |
| `Mathlib/NumberTheory/NumberField/ExistsRamified.lean:50` | `NumberField.finrank_eq_one_of_unramified` uses a number field and an integral closure of ℤ unramified over ℤ. WC applies it to the finite Galois fields and their rings of integers, not directly to an infinite ℓ-adic representation. |
| `TauCeti/RepresentationTheory/RepresentationRing/Basic.lean:127`, `:164`; `TauCeti/RepresentationTheory/RepresentationRing/Injective.lean:50`; `TauCeti/RepresentationTheory/CharacterTable/VirtualCharacter.lean:360` | Character map, image criterion, characteristic-zero finite-group injectivity and virtual-character criterion exist. Rational Schur-index issues are not erased by complex multiplicities. |
| `TauCeti/AlgebraicGeometry/EllipticCurve/PointCount.lean:73`, `:86`, `:101`; `TauCeti/AlgebraicGeometry/EllipticCurve/HasseBound.lean:65` | Count is affine solutions plus infinity; equality with the point carrier needs ellipticity. Trace and the independent Hasse bound already exist and are cited. |
| `TauCeti/Geometry/Toric/Algebraic/Fan/Scheme.lean:136`; `TauCeti/Geometry/Toric/Algebraic/FaceLocalization.lean:84` | `algebraicRealization` glues the existing charts; the face maps are ℂ-algebra maps. This validates the need for a general integral extension rather than treating the complex scheme as a finite-field scheme. |

Independent elaboration of `TauCetiRoadmap/WeilConjectures/Suggested.lean` succeeded with exactly the six admitted-theorem warnings and no other warning/error. A scratch copy with `#check @name` for all **eight declarations** also elaborated; no section hypothesis disappeared and no signature repair was necessary. For each of the **six sorried theorems**, a scratch probe tried closing alternatives `simp`, `rfl` and `infer_instance`; all six remained unproved. Pinned object searches found no one-lemma exact restatement. There is no degenerate-case, definition-restatement or small-value padding to delete.

| README headline / Lean declaration | Signature audit |
| --- | --- |
| WC.1.1 / `arithmeticZeta_absoluteConvergence` at Suggested.lean:70 | Actual scheme over Spec ℤ; locally finite type plus quasi-compact is finite type; ∃c precedes ∀s; norms use actual closed residue fields. |
| WC.1.6 / `normalized_integral_zeta_presentation` at :80 | Actual finite-field scheme; separated and finite type; U,V integral, normalized and coprime over ℚ; their series identity refers to the defined point count. |
| WC.5.4 / `norm_le_of_grouped_moment_bound` at :94 | Arbitrary normed field, eventual tail, C,R≥0, nonzero **total fibre weight**, not an individual coefficient. No unjustified characteristic-zero or completeness restriction. |
| WC.5.16 / `graded_polynomial_approximation` at :105 | p>1, unrestricted r,s, pure moduli, little-o at the specified cutoff; all three conclusions include high polynomial coefficients beyond r. |
| WC.6.6 / `functional_equation_of_smooth_proper` at :122 | Smooth proper actual X, pure relative dimension; normalized coprime U,V tied to its zeta; integer degree difference χ, rational-function substitution and unique Δ. No natural subtraction or pointwise division at a pole. |
| WC.7.16 / `weilConjectures_smooth_proper` at :145 | Actual smooth proper geometrically integral X. Over a finite field, smooth and geometrically connected implies geometrically integral; this is not an extra projectivity restriction. Endpoints coincide at d=0, zero moduli have the reciprocal sign, and complementary degrees use `Fin.rev`. |
| Supporting definitions at :54, :62 | `extensionPointCount` uses the actual Hom over Spec k and positive extension degrees; `zetaSeries` has a real formal exponential body and no degree-zero division. The definition's total natural cardinal need not be finite for arbitrary X; every theorem that needs finiteness supplies finite type. |

The additional deep README endpoints not yet expressible with a few simple native definitions are named in the module docstring: rational determinant realization and coefficient-prime independence, all-power cohomological trace, family/Artin transport, stack/Tate representations, cycle/Num/Enriques/genus-one interfaces and integral toric/Chow comparison. No surrogate is stated for them. The direct point-count Weil theorem remains present even though the cohomological realization is missing.

The following is the adversarial computation record: **91 rows** covering all 80 numbered subsections, with separate rows for additional definitions and conventions. “Retain” means no change to the statement; exclusions explicitly test the stated hypotheses. Symbols q and r denote field cardinality and positive extension degree, not the characteristic and an arbitrary natural exponent.

| Statement | Instances tried | Computed values on the two sides / negative control | Result; change |
| --- | --- | --- | --- |
| Conventions: q, extensions, twists | ℙ¹/𝔽₄; r=1,2 | Counts 5,17 = 1+4ʳ; replacing q by p gives 3,5. ℚℓ(1) scalar 1/4, ℚℓ(−1) scalar 4; their product 1. | Retain. |
| Conventions: determinant | F=diag(1,4), zero space | det(1−TF)=1−5T+4T², coefficient −5=−Tr F; rank zero determinant 1 and trace 0. | Retain. |
| Conventions: χ, negative powers | genus 2 over 𝔽₂ | χ=1−4+1=−2; dχ/2=−1; Δ=2/4=1/2; Δ²=1/4=2⁻². | Retain integer exponents. |
| 0.1 / `extensionPointCount` | point, empty, Spec 𝔽₄/𝔽₂, dual numbers | Counts (1,1), (0,0), (0,2,0,2); ε must map to 0, so the square-zero point has count 1 at every r. Degree-two base extension replaces N₁ by N₂=2. | Retain finiteness on Hom, not all geometric points. |
| 0.2 Orbit dictionary | one orbit of length 2, r=1,2,3,4 | Fixed counts 0,2,0,2 = 2·1_(2 divides r); degree 2 differs from norm 4. | Retain. |
| 0.3 Rational realization | ℙ¹/𝔽₄; swapped two-point scheme | H⁰,H² eigenvalues 1,4 give traces 5 then 17; swap traces 0 then 2. Inverse top Frobenius would give 1+1/4, not 5. | Retain. |
| 1.1 Arithmetic Euler product | empty; Spec 𝔽₄; Spec ℤ | Empty product 1 and deviation sum 0. At s=1 the 𝔽₄ factor is 4/3, deviation 1/3; at s=0 its denominator is 0, outside a chosen right half-plane. Spec ℤ has factors (1−p⁻ˢ)⁻¹, convergent for Re s>1. | Retain existential half-plane. |
| 1.2 Exponential/Euler series / `zetaSeries` | point; degree-two point; empty | Point exponent T+T²/2+… gives coefficients 1,1,1; (1−T)⁻¹ has the same. Degree-two point exponent T²+T⁴/2+… gives (1−T²)⁻¹. Empty exponent 0 gives 1. | Retain. |
| 1.3 Möbius inversion | ℙ¹/𝔽₂, degrees 1,2,3 | N=(3,5,9); a₁=3, a₂=(5−3)/2=1, a₃=(9−3)/3=2. Orbit reconstruction gives 3,3+2=5,3+6=9. | Retain positive indices. |
| 1.4 Cohomological formula | 𝔾ₘ/𝔽₃; point | Hc traces −1+3ʳ give 2,8; ratio (1−T)/(1−3T) gives the same moments. Point gives 1/(1−T). | Retain compact support. |
| 1.5 Descent/local Fatou comparison | (1−T)⁻¹; unreduced (1−T/2)/(1−T/2) at ℓ=2 | Reduced pair (1,1−T) has integral coefficients; root norm 1 is allowed. Unreduced equal factors have coefficient −1/2, norm 2, despite series 1. | Retain normalization/coprimality; supplied generic theorem. |
| 1.6 Integral rationality | 𝔾ₘ/𝔽₃; point; empty | U=1−T,V=1−3T give VZ=U and U(0)=V(0)=1; no common root. Empty U=V=1 gives Z=1. | Retain. |
| 1.7 Mass definition and API | empty, discrete 3, BC₂ as one-object groupoid; S₃ on 3 letters | Masses 0,3,1/2. S₃ action mass 1/2=3/6; regular action mass 1=6/6. Product of two one-object C₂ groupoids has mass 1/4=(1/2)²; disjoint union mass 1. | Retain; automorphism denominator never zero. |
| 1.8 Point-groupoid definition/API | BC₂(𝔽₃), BS₃(𝔽₅), empty | Torsor masses 1/2+1/2=1 and 1/6+1/2+1/3=1; empty mass 0. Only trivial torsors would give 1/2 and 1/6. | Retain nonabelian and disconnected tests. |
| 1.8 Compact supports/duality/comparison | BC₂ with ℓ=2; ℙ¹ and 𝔾ₘ over 𝔽₃ | BC₂ has rational H⁰ dimension 1, higher dimensions 0, trace 1=mass. ℙ¹ pairing eigenvalue product 1·3=3 on twist −1. 𝔾ₘ Hc gives −1+3=2; ordinary H gives 1−1/3. | Retain rational averaging and actual comparison maps. |
| 1.9 Quotient/coarse count | [point/𝔾ₘ] over 𝔽₃; BC₂ | Connected quotient mass 1/(3−1)=1/2. BC₂ mass 1 equals its coarse point count; naive 1/#C₂=1/2 fails. | Retain Lang's connectedness. |
| 1.10 Twist definition/API | two split points with swap σ | Identity twist N₁=N₂=2; σ-twist N₁=0,N₂=2. Fixed twist extended to degree 2 uses σ²=1 and has 2 points; newly twisted form uses σ and has 0. | Retain full descent operator power. |
| 1.11 Integral character lattice | C₂ functions (2,0), (1,0); S₃ permutation character (3,1,0) | C₂ coefficients are (1,1) versus (1/2,1/2), so only the first is integral. S₃ character = trivial+standard: (1,1,1)+(2,0,−1)=(3,1,0). | Retain iff, not every class function is integral. |
| 1.12 Signed configurations definition/API | empty; two fixed points; one 2-cycle; their mixed union | Generating polynomials 1, (1−T)²=1−2T+T², 1−T², and (1−T)(1−T²)=1−T−T²+T³. A 2-cycle sign is −1, not (−1)². | Retain orbit count in exponent. |
| 1.13 Inverse zeta | degree-two point | Z=(1−T²)⁻¹; inverse coefficients (1,0,−1,0,…) equal configuration coefficients. | Retain coefficientwise finiteness. |
| 1.14 Termination | ℙ¹/𝔽₂; empty | B=2, inverse zeta 1−3T+2T², sum at 1 is 0 and higher coefficients 0. Empty B=0, polynomial 1, sum 1. | Retain nonempty hypothesis for vanishing at 1. |
| 1.15 Sieve/truncation | three parameter points: empty singular locus, one point, two points | Coefficient sums S₀=3,S₁=−3,S₂=1 give smooth count 1=3−3+1. At h=1 truncated answer 0 and tail 1; only the two-point locus contributes. Empty parameter set gives 0. | Retain exact finite tail. |
| 1.16 Root-bound-free curve numerator | genus 0; elliptic q=5,a=−2 | Numerators 1 and 1+2T+5T²; moments S₁=−2,S₂=−6 give counts 8,32 via 1+qʳ−Sᵣ. No modulus inference needed. | Retain independent route. |
| 2.1 Determinant reciprocity | point; ℙ¹/𝔽₂ at T=2 | Point Z(1/2)=2=(−2)Z(2). For ℙ¹, Z(1/4)=8/3=(2·2²)Z(2), since Z(2)=1/3. Rank-zero cohomology gives Δ=1,Z=1. | Retain rational-function identity. |
| 2.2 Half exponent | point, ℙ², genus 2 | dχ=0,6,−2; halves 0,3,−1. Odd-dimensional middle b₁=4 is even, also over ℚ₂. | Retain characteristic-zero pairing and integer half. |
| 2.3 Sign descent | point; ℙ²; genus 2; reciprocal pair 2,8 with qᵈ=16 | ε=−1,−1,+1 respectively. Pair product 16 gives the required reciprocal determinant, not an arbitrary square-root sign. A repeated +4 block contributes even algebraic multiplicity 2, sign +1 regardless of eigenspace dimension. | Retain generalized multiplicity. |
| 2.4 Extension sign | point; degree-two point; r=2 | Point χ=1,ε=−1 gives (−1)³(−1)²=−1. Two-cycle χ=2,Δ=−1 gives ε₁=−1, ε₂=+1 and Z over k₂=(1−T)⁻². | Retain parity factor; εʳ alone fails for point. |
| 3.1 Extraction/count comparison | ℙ¹/𝔽₄; empty; 2-cycle | Factors (1−T,1,1−4T) give degrees (1,0,1); empty factors all 1, degree 0; 2-cycle factor 1−T² has N₁=0 versus 2 for (1−T)². | Retain supplied extraction. |
| 3.2 Projective factors | unipotent 2×2 block eigenvalue 1; disconnected degree-zero cycles | det(1−TF)=(1−T)², algebraic multiplicity 2 though eigenspace dimension 1. Two cycles of length 2 give (1−T²)², not one cycle factor. | Retain multiplicities without semisimplicity. |
| 4.1 Family transport | ℙ¹ family; rank-one monodromy −1 along a changed path | Betti dimensions (1,0,1) on both fibres. Two identifications of a rank-one fibre can be 1 and −1 while both ranks remain 1. No supplied complex fibre gives no transport map to one. | Retain path argument. |
| 5.1 Moment window | β=(1,2), c=(3,5); β=(2,3); zero/empty/repeated | Old inverse is symmetric and both indexings give (3,5). New moments (8,21) give (3,5) correctly, (−18,13) wrongly. β=0 gives moments 3,0,…; repeated (1,1) determinant 0 and cancelling moments 0. | Formula sound; R03 repair. |
| 5.2 Window norm bound | β=(2,3), c=(3,5), C=8,R=3,n=0 | For k=1, LHS 3≤8(3+3)=48; k=2, 5≤8(2+3)=40. For singleton zero root,R=0,n=1 both sides 0. | Retain no division by R or c. |
| 5.3 Visible roots | β=2,c=3,C=3,R=2; zero coefficient at β=100 | Moments 3·2ⁿ attain bound and norm 2≤2. Zero coefficient gives moments 0 while norm 100 is unrestricted. Singleton β=0,R=0 on positive tail gives 0≤0. | Retain visibility condition. |
| 5.4 Grouped weights / Lean headline | repeated β=2, weights (1,−1) and (1,1); 𝔽₂ trivial norm | Grouped totals 0 and 2; moments 0 and 2·2ⁿ. Over 𝔽₂ two weights 1 total 0, moments 0 though root 1 has norm 1. | Retain nonzero full fibre sum; characteristic p permitted. |
| 5.5 Unweighted converse | repeated roots 2,2 over ℂ versus 1,1 over 𝔽₂ | Over ℂ moments 2·2ⁿ force R≥2. Over 𝔽₂ moments 0 fit R=0 but root norm 1>0. | Retain characteristic zero precisely here. |
| 5.6 All-positive-power iff | roots 2,−2; fourth roots of unity | First moments 0 but second 8 for (2,−2); four unit roots give 0,0,0,4. Bound C=2,R=2 gives 8≤8 at n=2; R=0 fails. | Retain quantification over all positive powers. |
| 5.7 Reciprocal escape | γ=1/2,c=1/8 in ℝ; γ=2,c=2⁵ in ℚ₂ | Real inverse moment 2ⁿ/8 exceeds 1 for n≥4. 2-adic norm of 2^(5−n) is 2^(n−5), exceeding 1 for n≥6. Arbitrarily large tails still escape. | Retain arbitrary coefficients and tails. |
| 5.8 HasSum identity | β=2,c=3,z=1/4; β=0; empty | LHS 3Σ_(m≥1)(1/2)^m=3; RHS (6/4)/(1−1/2)=3. Zero root and empty list give 0=0. z=1/2 has denominator 0 and norm 1, excluded. | Retain strict norm and positive powers. |
| 5.9 D definition/API | empty; β=2; β=(1,1) in 𝔽₂; zero ring | D=1,1−2T,1+T². D(0)=1 in each ring; in zero ring 1=0 so D≠0 is not asserted. Disjoint union multiplies these factors. | Retain nontriviality for nonzero polynomial. |
| 5.9 B definition/API | empty; β=2,c=3; repeated 1 in 𝔽₂ | B=0,6T,0 respectively; last D=1+T² remains nonconstant. Joining singleton roots 1,2 of weight 1 gives B=3T−4T²=B₁D₂+B₂D₁. | Retain weights and repeated factors. |
| 5.10 G/formal identity | β=2,c=3 over ℚ; repeated unit roots over ℤ/4; zero root | (1−2T)(6T+12T²+…)=6T, degree-two coefficient 12−12=0. In ℤ/4, DG=2T−2T²=B. Zero root gives G=0 though algebraic zeroth moment is 1. | Retain coefficient zero at index 0 and arbitrary ring. |
| 5.11 Laurent comparison | β=2,c=3 | B/D=6T/(1−2T) expands 6T+12T²+24T³+…; negative coefficients and constant coefficient 0. By contrast 1/T has coefficient 1 at −1 and is not a power series. | Retain common Laurent field. |
| 5.12 Pole criterion | β=(2,3),c=(3,5); then c₁=0 | At 1/2, B=3(1−3/2)=−3/2≠0; D=0, simple. With c₁=0, B=0 there and cancellation removes that pole. Repeated β=2 with weights 1,−1 gives rational function 0. | Retain grouping and nonzero root. |
| 5.13 Bounded disc | singleton β=2,c=3,R=2,z=1/4; R=0,β=0 | R·norm z=1/2<1, denominator 1/2 and sum 3. At boundary z=1/2 denominator 0. At R=0 denominator 1 and sum 0 for every z. | Retain open disc. |
| 5.14 Reciprocal equality | roots 3±4i,R=5; candidate roots 2,8,R=4 | First product 25 and both norms 5. Second product 16 but norm 8>4 violates the needed moment bound; product alone is insufficient. | Retain both inputs. |
| 5.15 Strict little-o | β=1/2,c=3,R=1; β=1,c=3 | Ratios 3·2⁻ⁿ→0 versus constant 3. First norm 1/2<1; boundary root fails the hypothesis. | Retain strict conclusion. |
| 5.16 Graded approximation / Lean headline | p=2,r=2,s=0,P=1+T; r=4,s=2,P=T+T²; s>r | Spectra (1,∅,2) give error 0, coefficients (1,1). Spectra (1,∅,2,∅,4) give error 1 and ratio 2⁻ⁿ→0, allowing P₀=0. For r=0,s=4, spectrum (1),P=T gives ratio (1−2ⁿ)/2^(2n)→0: P₁=1 lies below cutoff, P₂ must be 0. | Retain unrestricted cutoff, no low-degree overclaim. |
| 5.17 Weil estimate | ℙ²/𝔽₂; elliptic q=5,a=−2 | ℙ² error 7−(1+4)=2 equals b₂q=2. Elliptic errors 2 and 6 are ≤2√5 and 10 at r=1,2. | Retain d≥1 and endpoints. |
| 5.18 Components/dimension zero | two ℙ¹ components swapped over 𝔽₂; degree-two point | c₁=0,c₂=2: positive-dimensional counts 0,2(1+4)=10. Dimension-zero counts 0,2, not 0,4 from doubling endpoints. | Retain separate d=0 branch. |
| 5.19 Existing elliptic comparison | y²=x³−x over 𝔽₅ | Affine counts 1+1+2+2+1=7; plus infinity 8; trace 5+1−8=−2; norm 2≤2√5. | Retain comparison with existing count, no duplicate Hasse proof. |
| 5.20 Recurrences/Newton | elliptic c₁=2,c₂=5; rank zero; ℙ¹ q=2 total | S₀=2,S₁=−2,S₂=−6: −6+2(−2)+5·2=0, and Newton −6−4+10=0. Rank-zero moments 0 satisfy empty recurrence. ℙ¹ N₀=2,N₁=3,N₂=5 gives 5−3·3+2·2=0. | Retain N₀=χ, not an F₁ count. |
| 5.21 Complete intersections | ℙ¹; split quadric surface; elliptic cubic over 𝔽₅ | ℙ¹ primitive b=0, error 0. Quadric q=2 has 9 points versus 7 for ℙ², error 2=b·2 with b=2−1=1. Cubic error 2≤2√5, b=2. | Retain parity correction. |
| 5.22 Polynomial-count predicate/API | N(q)=q+1; modify N(4); junk N(0),N(1),N(6) | At 4, P=1+T gives 5; modifying count to 0 breaks equality 0≠5 despite unchanged prime values. Changing junk values imposes 0 new conditions. Zero count P=0; Gₘ P=T−1 gives 1 at q=2. | Retain all prime powers and polynomial uniqueness. |
| 5.23 Local cutoff | ℙ² over ℤ₂ with s=2 or 3; elliptic with s=3 | P=T²+T gives error 1; normalized errors 2⁻ⁿ or 2^(−3n/2)→0. Only degrees ≥s constrained. For elliptic s=3>2, bound O(2^(n/2))/2^(3n/2)→0 makes no claim killing H¹ of dimension 2. | Retain cutoff s. |
| 5.24 Open-base Tate result | ℙ², approximate P=T²+T | High coefficients (1,1) and duality give C=1+T+T². Counts at 2,4 are 7,21; P values 6,20 differ by 1=o(q). | Retain corrected C rather than P=C; only semisimplification. |
| 5.25 All-Spec-ℤ equivalence | ℙ¹_ℤ, empty family; local unramified unipotent extension | Exact polynomial 1+T has C₀=C₁=1; actual H⁰=ℚℓ,H²=ℚℓ(−1). Empty polynomial 0 and all dimensions 0. Local Frobenius [[1,1],[0,1]] is unramified but not split locally; the global finite-quotient argument is necessary. | Retain global all-prime hypothesis and separate local/global steps. |
| 5.26 Equivariant polynomial | two points with C₂ swap; ℙ¹×ℙ¹ with factor swap | Degree-zero regular character (2,0) equals twist counts 2,0. For product at q=2, identity gives (1+2)²=9; swap gives 1+2²=5, with middle permutation trace 0. | Retain actual representation coefficients. |
| 5.27 Equivariant duality | same swapped product; endpoint trivial reps | Coefficients (1,permutation,1) are paired with their duals, character equality (1,2,1) at identity and (1,0,1) at swap. T²A(T⁻¹) reproduces them. | Retain dual coefficient statement. |
| 5.28 Surface intersections | g=0,q=2,r=1; elliptic g=1,q=5,N₁=8 | For g=0, D²=E²=DE=0 since N=3. Elliptic D²=−2,E²=−10,DE=2; (DE)²=4≤20=D²E². ΓA=1,ΓB=5 give E·A=E·B=0. | Retain fibre directions and all powers. |
| 5.29 Surface RH | elliptic reciprocal roots −1±2i; genus 0 | Norms √5, product 5, S₁=−2,S₂=−6 satisfy the surface bounds. g=0 has empty root list, sum 0 and error 0. | Retain purity-independent proof route. |
| 6.1 Proper integral factors | seven-ray threefold over 𝔽₂; finite degree-two point; empty | Even factor degrees (1,4,4,1); factors (1−T),(1−2T)⁴,(1−4T)⁴,(1−8T). Degree-zero point factor 1−T²; empty factors 1. | Retain no projectivity/connectedness assumption. |
| 6.2 Integral fan definition/base change | zero cone in rank 1; rank 0; positive ray over ℤ/4 | Rank-one chart R[t,t⁻¹] has 2 points over 𝔽₃; rank-zero chart Spec R has 1. In (ℤ/4)[t], 2≠0 and 2²=0; base change to 𝔽₂ sends 2 to 0. | Retain nilpotents and torus factors. |
| 6.2 Gluing/properness/support | two rays; one ray; empty fan; zero ring | Two rays give ℙ¹/𝔽₄ with 5 points, complete/proper. One ray gives 𝔸¹ with 4, incomplete/nonproper. Empty source map is proper but support ∅≠{0}; zero-ring schemes are empty. | Retain both nonemptiness guards on converses. |
| 6.3 Chow ring definition/API | rank zero; ℙ¹; incomplete zero-cone fan | Quotients ℤ and ℤ[h]/h², ranks (1) and (1,1), degree h=1. Rank-one torus has Chow ring ℤ but H¹ dimension 1, excluding completeness-free odd vanishing. | Retain complete regular split fan. |
| 6.3 Cycle/refinement comparison | ℙ¹/𝔽₄; toric blowup of ℙ² at a fixed point | Cycle/Frobenius pairs (rank,scalar)=(1,1),(1,4). Blowup adds one H²(1) class: rank 1→2, pushforward kills exceptional class and push-pull on downstairs classes is identity degree 1. | Retain base-field cycles and degree-one splitting. |
| 6.4 Fan and nonprojectivity | ten listed maximal cones | Determinants in listed order 1,−1,1,1,−1,−1,1,−1,1,−1. Each primitive relation balances the same vectors; adding the three strict support inequalities demands 0>0. | Retain complete regular nonprojective example. |
| 6.4 Chow presentation and count | seven rays; all cones; q=2 | Face counts (1,7,15,10). (t−1)³+7(t−1)²+15(t−1)+10=1+4t+4t²+t³. Integer unit-pivot elimination of displayed ideal gives free ranks (1,4,4,1,0) in degrees 0…4. Count 1+8+16+8=33. | Retain; unlike ℙ³ ranks (1,1,1,1). |
| 6.4 Chart/nonface tests | cone 123; rays 1,4 | det123=1, maximal-cone monomial has degree 1; pair 1,4 occurs in 0 cones so x₁x₄=0. Linear relation coordinates give exactly the three J generators. | Retain. |
| 6.5 Mixed divisor bound | 𝔾ₘ/𝔽₃, constant sheaf; cancelling equal factors | Reduced Z=(1−T)/(1−3T), reciprocal roots 1 and 3 have weights 0 and 2≤0+2·1. Equal numerator/denominator factors cancel to divisor multiplicity 0, creating no new root. | Retain mixed upper bound, not purity by degree. |
| 6.6 Signed proper equation / Lean headline | point; ℙ²/𝔽₂ at T=2; genus 2 with χ<0; empty | ℙ² Z(2)=−1/21 and Z(1/8)=64/21; multiplier −8·8=−64 gives 64/21. Genus-two χ=−2,Δ=1/2. Empty U=V=1 yields χ=0 and unique Δ=1. | Retain rational functions and no numerical evaluation at poles. |
| 6.7 Homology-manifold hypothesis | smooth ℙ¹ versus nodal rational cubic | ℙ¹ dualizing twist (1)[2] gives pure weights 0,2. Nodal rational cubic has one weight-zero H¹ from the node: degree 1≠weight 0, so the asserted dualizing condition cannot be dropped. | Retain Frobenius-equivariant geometric hypothesis. |
| 6.8 DM purity | BC₂ with ℓ=2; [ℙ¹/C₂] trivial action | Rational cohomology dimensions (1,0,…) and (1,0,1); Frobenius eigenvalues 1 and (1,q), weights 0 and (0,2). Stabilizer order 2 has no effect after rational averaging. | Mathematical contract sound; R02 locator repair. |
| 6.9 Linear q-Frobenius | ℙ¹/𝔽₄, p=2,f=2 | Linear φ² on H² has scalar 4 and polynomial 1−4T, matching étale. Using scalar 2 instead gives 1−2T and count 3 instead of 5. | Retain iteration before determinant. |
| 7.1 Projective spaces | n=0,1,2 over 𝔽₂ | Counts 1,3,7 = Σ_(j=0…n)2ʲ; factors 1−T,1−2T,1−4T as degrees permit. n=0 uses its sole factor once. | Retain. |
| 7.2 Finite étale schemes | orbit lengths (1,2,2); empty | P₀=(1−T)(1−T²)²; N₁=1,N₂=5,N₃=1. Empty product 1 and Nᵣ=0. Roots all unit modulus with multiplicity. | Retain. |
| 7.3 Products/Künneth | ℙ¹×ℙ¹ over 𝔽₂ | Degree factors (1−T),(1−2T)²,(1−4T); N₁=9=(1+2)²,N₂=25. Product Z_XZ_Y instead has first logarithmic moment 3+3=6≠9. | Retain tensor eigenvalues. |
| 7.4 Curves/Jacobians | genus 0 and elliptic q=5,a=−2 | Π₁=1 or 1+2T+5T². For elliptic, 5T²Π₁(1/(5T))=5T²+2T+1=Π₁; S₀=2. | Retain Tate/Jacobian convention. |
| 7.5 Elliptic worked example | all five x-values over 𝔽₅ | Affine fibre sizes (1,1,2,2,1); Δ=64≡4≠0; N₁=8,a=−2,S₂=−6,N₂=32. | Retain; direct finite enumeration repeated. |
| 7.6 Genus-two worked example | 𝔽₂,𝔽₄,𝔽₈,𝔽₁₆ | Trace-zero x counts 1,2,4,16 give N=(3,5,9,33); S=(0,0,0,−16); Newton c₄=4 and Π₁=1+4T⁴. S₄+4S₀=−16+16=0. | Retain; finite-field computation repeated. |
| 7.7 Projective-plane sign | q=2,T=2 | Δ=8,χ=3; Z(2)=−1/21, Z(1/8)=64/21, multiplier −64. Positive multiplier would give −64/21. | Retain minus sign. |
| 7.8 Multiplicative group | q=3,r=1,2 | Hc degrees 1,2 have traces 1,3ʳ; counts −1+3=2 and −1+9=8. Reciprocal zero weight 0 occurs in degree 1. | Retain compact support and mixed scope. |
| 7.9 Base-field cycle scalar action | split/nonsplit quadric over 𝔽₂ | Split ruling classes fixed: H² eigenvalues 2,2. Nonsplit ruling swap gives 2,−2; both geometric classes span, but only their sum is fixed. | Retain base-field, not geometric, surjectivity. |
| 7.10 Cycle zeta | split quadric | b=(1,2,1) gives Z=1/((1−T)(1−2T)²(1−4T)); determinant factors agree with scalar operators 1,2,4. | Retain one-prime cycle input and canonical comparison. |
| 7.11 Cycle counts | split quadric q=2; point | N₁=1+2·2+4=9,N₂=1+2·4+16=25; point gives 1. Every term nonnegative and b₀=1. | Retain all-extension and nonempty conclusion. |
| 7.12 Numerical Picard definition/API | ℙ²; split/nonsplit quadric; O(1,−1) | ℙ² ρ=b₂=1 with action 1. Quadric lattice rank 2; action identity versus swap. O(1,−1)·O(1,1)=0 but intersections with rulings are −1,1; class (1,−1)≠0. | Retain all-divisor numerical equivalence and constancy. |
| 7.12 Enriques condition/API | classical and nonclassical Enriques; K3; abelian surface; blowup | Enriques χ(O)=1,K numerical 0, b₂=ρ=10. K3 χ=2 and abelian χ=0 fail. After blowup K·E=−1 fails numerical triviality; trivial K in characteristic 2 does not itself exclude Enriques. | Retain all-characteristic convention. |
| 7.12 Genus-one/rational-surface extension | rational relatively minimal genus-one; ℙ²; extra blowup | K²=0 gives rank Pic=10; ℙ² K²=9 gives rank 1. Fibre blowup has vertical E²=−1, so relative minimality fails. Quasi-elliptic geometric generic genus is 1 despite nonsmoothness. | Retain arithmetic genus, section-free carrier and minimality. |
| 7.13 Constant Num surface | ℙ²/𝔽₄; split/nonsplit quadric over 𝔽₂ | ℙ² N₁=1+4+16=21, not prime-subfield count 7. Quadric split N₁=9, nonsplit N₁=5 because trace on twisted H² is 0 rather than 2. | Retain constant numerical action. |
| 7.14 Ten-class surface | q=2,r=1,2 | 1+10·2+4=25; 1+10·4+16=57. Formula with a missing section hypothesis remains unchanged because the invariant comparison is section-free. | Retain. |
| 7.15 Rational-surface iff | quadric actions identity/swap; finite-order −1; unipotent wrong model | Trace 2 gives N₁=9 and identity; swap trace 0 gives 5 and nonconstancy. −1 trace −1<rank 1. Unipotent [[1,1],[0,1]] has trace 2 but is not identity: excluded by finite order. | Retain finite-order/free-lattice input for converse. |
| 7.16 Endpoint / Lean headline | point; ℙ¹/𝔽₄; genus-two curve; q=1 junk | Point d=0 has sole factor 1−T, root norm 1, no doubled endpoint. ℙ¹ factors have zeros 1,1/4 and degrees (1,0,1). Genus-two zeros of 1+4T⁴ have norm 1/√2 and degree 4. q=1 is not a finite field cardinality. | Retain actual finite-field carrier and reciprocal norm exponent. |

The explicit toric quotient calculation above used integer unit pivots, not just a floating-point rank: no torsion was discarded. The genus-two calculation used the trace-zero formula over the four finite fields and included the single point at infinity. Numerical tests, source checks and the successful `sorry` elaboration were kept distinct throughout.

## Not verifiable

- **Fulton, Introduction to Toric Varieties** (`fulton-toric`), §§1.4, 2.1, 2.4, 2.6, 5.1–5.2, used in WC.6.2–6.4: the sources service's bibliographic search returned no readable legal copy. These exact book locators, including the general Chow/refinement route, remain uncertified. The missing-reference record preserves this request. The independent fan, ring, counting and degeneracy checks above still apply; Fulton–Sturmfels only verifies the specified invariant-cycle presentation ingredients.
- **Kedlaya, Fourier transforms and p-adic Weil II:** the readable arXiv preprint has §6.6, pp. 50–52. Its statements were checked. The published renumbering to §5.3, pp. 1445–1446, was not independently read, so that published locator is not certified here. This is the same work, not a second source key.
- No completed rational cohomology/stack/Chow implementation exists at these pins for executing the geometric roadmap as a proof. Accordingly, the geometric findings above rest on exact supplier contracts, source statements and explicit counterexample searches, not on claiming that a `sorry` build proves them.

## Source issues

- **Error** in milne at Lemma 27.5, printed pp. 155–156 (lines 5918–5923): the source says the formal logarithm identity holds over an arbitrary field; it should be restricted to characteristic zero, or replaced by the denominator-free logarithmic-derivative identity; affects a stated result.
- **Misprint** in milne at proof of Lemma 27.10, printed p. 158 (line 6037): the source says all reciprocal denominator roots have norm strictly below one; it should be at most one, as the denominator 1−T demonstrates; affects the proof.
- **Gap** in milne at proof of Theorem 27.14(c), printed p. 159 (lines 6095–6096): the source says integral reciprocal roots imply integer coefficients of each degree factor; it should establish rational coefficients or Galois stability before using integral closure; affects the proof.
- **Misprint** in mustata at Lemma 3.8, printed p. 21 (line 1135): the source says reciprocal-root norms are bounded by the square root of genus; it should be the square root of q; affects a stated result.
- **Misprint** in mustata at proof of Lemma 3.8, printed p. 21 (line 1138): the source says the power-sum estimate is 2g^(m/2); it should be 2g q^(m/2); affects the proof.
- **Misprint** in mustata at proof of Lemma 3.8, printed p. 21 (line 1159): the source says the generating expression uses tʳ while summing over m; it should use tᵐ; affects the proof.
- **Misprint** in bergstrom-faber-payne at proof of Proposition 3.1, printed p. 1330 (line 313): the source says the approximation error is little-o at exponent d; it should retain the hypothesis's cutoff exponent s; affects the proof.
- **Misprint** in kedlaya-isocrystals at equation (9.6.1), arXiv v6 p. 22 (line 954): the source says the duality expression uses q^(−d) times inverse Frobenius; it should use qᵈ times inverse Frobenius, giving A¹ the pole q; affects a stated result.
- **Misprint** in kedlaya-weil-ii at §6.6 consequence (b), preprint p. 52 (line 2028): the source says reciprocal duality substitutes t⁻¹ without q-scaling; it should substitute q^(−n)t⁻¹ for an n-dimensional variety; affects a stated result.
- **Gap** in kedlaya-weil-ii at proof of §6.6 consequence (a), preprint p. 52 (lines 2033–2034): the source says the individual rigid determinants have integer coefficients by finiteness and the trace formula; it should justify this stronger claim, or establish only an integral reduced rational presentation; affects the proof.
- **Misprint** in schroer at Corollary 7.2 and its proof, arXiv v3 p. 21 (lines 943, 947): the source says the count is over the prime field while the formula uses q; it should count points over the given field 𝔽_q; affects a stated result.
- **Misprint** in stacks at tag 0C5R, proof, printed p. 52 (line 2339): the source says V contains the codimension-one points of V; it should say the codimension-one points of Y; affects the proof.
