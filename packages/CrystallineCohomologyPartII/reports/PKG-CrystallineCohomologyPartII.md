# PKG-CrystallineCohomologyPartII

The package expands the accepted design into `packages/CrystallineCohomologyPartII/README.md` (1767 lines, 59 targets in seven layers, every target, Check and worked example of the design kept), `Suggested.lean` (91 lines, three headline theorems), `metadata.toml` (`topic = "math.AG"`) and an updated `sources.toml`. `design/plan.json` is unchanged: no new supplier gap was needed, and the two accepted gaps (`qcqs-frobenius-factorization` on SchemeAndStackFoundations §0.26, `h-descent-formalism` on ArcTopologyAndDescent §§1.1, 1.3, 1.6) are stated in their suppliers' subsections of `## Exact supplier contracts`.

## Headline theorems

| Headline | Section | Status |
| --- | --- | --- |
| Ax–Katz modulo q, projective form: homogeneous F_j of degrees d_j ≥ 1 with ∑ d_j ≤ n over a finite field K have ≡ 1 mod \|K\| common zeros in ℙⁿ(K) (BBE07 Corollary 1.5) | §6.6 | stated, `card_projectiveZeroLocus_modEq_one` |
| Ax modulo q, affine form: ∑ totalDegree < number of variables ⇒ \|K\| divides the number of common zeros (strengthens Mathlib `char_dvd_card_solutions_of_sum_lt` from p to q) | §6.6 | stated, `card_dvd_card_solutions_of_sum_lt` |
| BBE07 Corollary 1.6 for the structure morphism: X proper over a finite field K, Γ(X, O_X) = K, H^{≥1}(X, O_X) = 0 ⇒ \|X(K)\| ≡ 1 mod \|K\| | §6.4 (iv) | stated, `card_rationalPoints_modEq_one_of_cohomology_vanishing` (Tau Ceti `TauCeti.AlgebraicGeometry.Scheme.Modules.Cohomology` of `SheafOfModules.unit`) |
| BBE07 Corollary 1.6, relative form f: X → Y | §6.4 (ii) | not statable: the pinned scheme cohomology (Tau Ceti `Cohomology/Basic.lean`) is functorial in the coefficient sheaf only, with no pullback along morphisms of schemes |
| BBE07 Theorem 1.1, H^q_{rig,c}(X/K)^{<1} ≅ H^q_c(X, WO_{X,K}) | §3.6 | not statable: no rigid cohomology, no Witt vector sheaves of schemes |
| ζ^{<1} = ζ^W (BBE07 Corollary 1.3) | §6.2 | not statable: same carriers missing |
| BS17 Proposition 11.41 and Theorem 11.40 (h-descent) | §§1.5–1.6 | not statable: no h-topology, no Witt vector sheaves |
| Serre's theta-divisor congruence (BBE07 Theorem 1.4) | §6.9 | not statable: Tau Ceti has `AbelianVariety` but no ample line bundles or principal polarizations |
| CR12 Theorems 4.3.3, 4.8.1 and Corollary 4.4.7 (Witt-rational singularities) | §§5.4, 5.12, 5.6 | not statable: no Witt sheaves, Witt canonical sheaves, isogeny category of sheaves on schemes |
| Esnault's vanishing and point count | §§6.13–6.14 | not statable: no Chow groups of zero-cycles, no Witt vector cohomology |

The module docstring lists every non-statable headline with its missing carrier. The three stated theorems carry real hypotheses and no auxiliary definitions; the file has no `def`, no `set_option`, and imports `Mathlib` and `TauCeti.AlgebraicGeometry.Cohomology.Basic` only.

## What changed from the design, and corrections

- **Review notes applied.**
  - R01: the extraction line numbers are deleted from the CR11 Definition 1.1.14 locator and the two BBE07 §6.5 locators.
  - R02: "(see the acceptance test)" now reads "(the Spec F_{q²} → Spec F_q Check below)".
  - R03: the four HW23 locators now read "HW23, Corollary 4.6 and proof, p. 21 (arXiv v2; Corollary 4.7 in the published version)".
  - R04: §5.9 step 1 now gives the Cohen–Macaulay reason (ω_S^• ≅ f_\*ω_X[d] by Grothendieck duality, SchemeAndStackFoundations §2.21).
  - R05: "In particular the cone" now reads "Separately, the cone". In `sources.toml` the Stacks entry is `cited_for` the node id, and its locator names the chapter and gives the 02RH tag URL.
- **New statements, added to carry the Lean headlines.**
  - §6.4 (iv) is the absolute form of (ii). It comes with hypotheses, a proof step (flat base change through SchemeAndStackFoundations §2.6 `qcoh_higherDirectImages`) and three Checks, two of them negative controls.
  - §6.6 has the elementary projective form and the affine form, with a proof step (homogenization) and four Checks covering degenerate conics, the degree hypothesis, the comparison of q with p, and r = 0.
  - Conventions items 11 and 12 fix point counts and the namespace, with a Check on the zero-vector convention.
- **Form.**
  - Internal node ids (`WV.k/slug`) are now section numbers and the HTML anchors are gone. Layer headings are `## Layer k: title` and target subsections are `### k.n Title`, digits only. Every internal reference uses the same form: `§k.n`, `§§k.n–k.m`, and "Layer k" for a whole layer. This applies to the README and to the docstrings of Suggested.lean, which has the layer comment `## Layer 6`.
  - TeX-only sub- and superscript syntax (`_{…}`, `^{…}`) appeared outside code in 558 places, for example `E^{<ρ}` and `WO_{X,K}`. It is now inside inline code spans, and markdown escapes inside those spans were undone (`\<` became `<`, `\*` became `*`). The mathematics is unchanged. Four formulas the mechanical wrapping split across spans were each rejoined into one span: §0.4, §3.1, §5.12 step 2 and §6.2 step 1. No heading contained such syntax, and the README has no internal links.
  - The layer table in "How to read the build" is now a paragraph.
  - The supplier contracts are split into per-supplier subsections, and each gap sits in its supplier's subsection.
  - The two "not planned here" phrases were rewritten.
  - In *Needs:* lines, a gap is shown as its supplier's requirement. ArcTopologyAndDescent is named without section numbers outside its gap paragraph, because the citation resolver does not find it on main or at an open head; it is a board package placed at line 116 of the merge order.
- **Library citations.**
  - The contracts now name `WittVector.frobeniusEquiv` (Mathlib `RingTheory/WittVector/Frobenius.lean:283`), `Projectivization.rep`, `MvPolynomial.IsHomogeneous`, `MvPolynomial.totalDegree`, `SheafOfModules.unit`, `AlgebraicGeometry.Scheme.Hom.appTop` and the Tau Ceti cohomology.
  - Two short names, `SerreClassLocalization.abelian` and `.isZero_obj_iff`, did not resolve at the pin. They are now written in full as `CategoryTheory.ObjectProperty.SerreClassLocalization.*`.
  - Every non-supplier backticked Lean name in the README (37 names) was `#check`ed at the pins; all resolve.

## What the README could not support

Nothing of the design was dropped. Nothing depends on a missing source text, and `needs-references.toml` was not written. The Ax64 affine attribution in §6.6 is cited by locator (`uncertified`, settled). The affine form is also derived in the README from the projective form.

## Notions moved down from later roadmaps

None.

## Duplication sweep (by object)

- `roadmaps grep` over main and the 354 open heads, searching for Ax–Katz, Chevalley–Warning, `char_dvd_card_solutions`, Witt vector cohomology, WO-/Witt-rational, theta divisors, Berthelot–Bloch–Esnault, universally CH_0, rationally chain connected and "≡ 1 mod q", found no other owner. The only related hits are InverseGaloisAndArithmeticFundamentalGroups (a use of Chevalley–Warning), CrystallineCohomology (a bibliography line) and GeometricSatakeAndFusion (a "rational Witt category", which is a different object).
- **Mathlib.** `char_dvd_card_solutions_of_sum_lt` (`FieldTheory/ChevalleyWarning.lean:109`) gives p, not q, so it is cited, not duplicated. `WittVector.frobeniusEquiv` is now cited for the perfect case of §0.3. The Serre-class API, `WittVector.Isocrystal` and the Witt identities were already cited.
- **Tau Ceti.**
  - The `RingTheory/WittVector` files (Teichmüller Frobenius and adic completeness) do not overlap any target.
  - `AlgebraicGeometry/AbelianVariety` has the carrier but no polarizations.
  - `AlgebraicGeometry/Cohomology` supplies H^i(X, M) and is now consumed.
- **Removals:** none. No target of this roadmap is stated elsewhere. The two zero-cycle field-extension lemmas stay owned in §6.10, which differs from MotivesAndAlgebraicCycles §2.2 in covering proper rather than smooth projective schemes.
- **Ownership against open pull requests** was checked through the `roadmaps grep` index of their heads (the brief's sibling checkouts are covered by that index).

## `#check` comparison

`#check @name` was run for the three declarations in a scratch file, elaborated once:

- `card_projectiveZeroLocus_modEq_one` elaborates to `∀ {K} [Field K] [Fintype K] {n r} (F : Fin r → MvPolynomial (Fin (n+1)) K) (d : Fin r → ℕ), (∀ j, (F j).IsHomogeneous (d j)) → (∀ j, 1 ≤ d j) → ∑ j, d j ≤ n → Nat.card {x // ∀ j, eval x.rep (F j) = 0} ≡ 1 [MOD Fintype.card K]`.
- `card_dvd_card_solutions_of_sum_lt` elaborates to `∀ {K σ ι} [Field K] [Fintype K] [Fintype σ] {s} {f}, ∑ i ∈ s, (f i).totalDegree < Fintype.card σ → Fintype.card K ∣ Nat.card {x // ∀ i ∈ s, eval x (f i) = 0}`.
- `card_rationalPoints_modEq_one_of_cohomology_vanishing` elaborates to `∀ {K} [Field K] [Fintype K] {X : Scheme} (π : X ⟶ Spec K) [IsProper π], Function.Bijective (π.appTop) → (∀ i, 0 < i → Subsingleton (Cohomology (SheafOfModules.unit X.ringCatSheaf) i)) → Nat.card {s // s ≫ π = 𝟙 _} ≡ 1 [MOD Fintype.card K]`.

Each matches its README statement, and every binder is in the declaration's own signature (the file has no section `variable`s). Nothing changed.

## Adversarial pass

| Statement | Instances | Values computed | Result | Change |
| --- | --- | --- | --- | --- |
| `card_projectiveZeroLocus_modEq_one` | n = 0, r = 0; r = 0, general n; conics over F_q (smooth, double line, line pair, x² − ay² with a nonsquare); d = 0 with F = 1; F_j = 0; cubic curve in ℙ² | 1; 1 + q + ⋯ + qⁿ ≡ 1; q + 1, q + 1, 2q + 1, 1; d = 0 gives 0 ≢ 1 (so d_j ≥ 1 is required); F_j = 0 cuts out ℙⁿ, dropping it keeps ∑ ≤ n (true); cubic curve (d = 3 > n = 2) ordinary elliptic curve has p + 1 − a ≢ 1 (the degree bound is needed) | holds | hypothesis d_j ≥ 1; Checks |
| `card_dvd_card_solutions_of_sum_lt` | s = ∅, m ≥ 1; nonzero constant; zero polynomial; F_9, nondegenerate ternary quadric; m = 1, f = x | q^m ≡ 0; 0; no condition (total degree 0); 81 = 9², divisible by 9 where Chevalley–Warning gives only 3; 1 zero, but 1 < 1 fails so excluded | holds | proof step 4, Check |
| Homogenization step (§6.6 step 4) | m = 1 with one linear f; m − 1 = 0 | Z ⊂ ℙ¹ one point, Z ∩ H empty: 1 − 0 ≢ 0, but ∑ d = 1 < 1 fails, so the case is excluded; for m − 1 = 0 no nonconstant f survives | holds | — |
| `card_rationalPoints_modEq_one_of_cohomology_vanishing` | ℙ¹; two ℙ¹ meeting in a rational point; ∅; Spec F_{q²} over F_q; ordinary elliptic curve over F_p; split nodal cubic; Spec F_q[ε]/ε² | q + 1 ≡ 1; 2q + 1 ≡ 1; Γ = 0, excluded, 0 points; Γ = F_{q²}, excluded, 0 points; H¹ ≠ 0, excluded, p + 1 − a ≢ 1; H¹ = F_q ≠ 0, excluded, q ≢ 1; Γ ≠ F_q, excluded (count 1, the hypothesis is not sharp but the statement holds) | holds | Checks |
| §6.4 (iv) from (ii) | Y = Spec K | H⁰(Spec K, O) = K and H^{>0} = 0, so f^\* is an isomorphism on all H^i iff hΓ and hH hold; BBE07 Corollary 1.6 (BBE07 line 195, proof at BBE07 line 1679) assumes X, Y proper over F_q | holds | — |
| Base change in (iv) | K′/K of degree 2, X = ℙ¹ | H^i(X_{K′}, O) = H^i(X, O) ⊗ K′ (SchemeAndStackFoundations §2.6, `qcoh_higherDirectImages`, flat base change); \|ℙ¹(F_{q²})\| = q² + 1 ≡ 1 mod q² | holds | — |
| Conventions zero-vector Check | x² − ay² on ℙ¹(F_q) | affine zeros {0}: 1 = 1 + (q − 1)·0 | consistent | Check |
| §5.9 Cohen–Macaulay step (R04) | quadric cone A²/±1, p odd; split nodal cubic | cone: R¹f_\*O = 0 = R¹f_\*ω on the minimal resolution, ω_S^• = f_\*ω_X[2] in one degree, CM; node: not normal, the step never starts | holds | inserted |
| §5.10 "Separately" (R05) | cone over Spec F_{q²} ⊂ ℙ¹ | not normal at the vertex, condition (1) fails by geometric connectedness (dimensions 1 vs 2) | wording correct | — |
| §0.3 with `WittVector.frobeniusEquiv` | A = F_p, A = F_p[ε]/ε² | F bijective on W(F_p) = ℤ_p; F_p[ε]/ε² is not perfect, so the lemma does not apply, and W(A)[1/F] = ℤ_p ≠ W(A) | consistent | citation |

The design statements that the package did not change keep the verified adversarial tables of the accepted review (REV-DESIGN~3, 25 rows) and of the round-2 repair.

## Elaboration

`lake env lean packages/CrystallineCohomologyPartII/Suggested.lean`, run from the content checkout at the pins: no errors, exactly **3** warnings, each "declaration uses `sorry`" (lines 59, 71, 82). There are no other messages. The file was re-elaborated after the docstring renumbering, with the same result. The Tau Ceti module `TauCeti.AlgebraicGeometry.Cohomology.Basic` had its object file and did not need building.

## Dependency check

```
depcheck: 56 roadmaps, 653 edges, 0 problem(s)
```

There is no UPWARD, CYCLE or `moved:` line. CrystallineCohomologyPartII is at line 133 of the merge order, after all its suppliers; ArcTopologyAndDescent is at line 116 and PadicDifferentialEquationsAndRigidCohomology at line 132.

Citation resolver (main 296659f, 354 open heads): no cross-roadmap citation and no Lean name found nowhere.

## Suspicious text

None found in the inputs read.
