# Review of AlgebraicVectorBundles (pull request #1221 at 8e1c3f2)

**Verdict:** needs changes

The folder revises the roadmap that is on main: the README is rewritten in the house shape on the Tau Ceti carriers that now exist at the pin, and `Suggested.lean` shrinks from an API catalogue of 160 declarations to four headline statements. The mathematics, the supplier citations and the Lean statements are sound; the one blocking defect is that the targeted build fails because a consumer on main imports four names this file no longer declares.

## R01 (P1) — Targeted build fails: SchemeAndStackFoundations imports four deleted names

Location: `TauCetiRoadmap/AlgebraicVectorBundles/Suggested.lean` (the whole file; it declares only `isFiniteLocallyFree_iff_nonempty_hasLeftDual`, `symmetricPower_isFiniteLocallyFree_rank`, `exteriorPower_isFiniteLocallyFree_rank`, `relativeSpec_isEquivalence`).

Claim: the gate's targeted build `lake build TauCetiRoadmap.AlgebraicVectorBundles.Suggested TauCetiRoadmap.SchemeAndStackFoundations.Suggested` exits 1 with twelve errors in `TauCetiRoadmap/SchemeAndStackFoundations/Suggested.lean`.

Witness: that file on main has `import TauCetiRoadmap.AlgebraicVectorBundles.Suggested` at line 2 and uses `TauCetiRoadmap.AlgebraicVectorBundles.isFiniteLocallyFreeOfRank` (line 1872), `.isFiniteLocallyFree` (lines 2535, 2537), `.FiniteLocallyFreeSheaf` (line 2550) and `.determinantObj` (line 2565); the remaining errors (`AddZero (K0 X)`, the stuck `EssentiallySmall`, the universe constraint at 2574) are downstream of `K0`, which is built on `FiniteLocallyFreeSheaf`. The open revision of SchemeAndStackFoundations at the head this brief lists (its `Suggested.lean` at the head of pull request #1276) no longer imports this module, but a second open revision of the same roadmap (`roadmaps show SchemeAndStackFoundations --pr 1656 --file Suggested.lean`, lines 3, 1873, 2536, 2538) still does, so the consumer dependency does not go away by itself.

Repair, tested: three of the four names have real bodies on the Tau Ceti carriers, and the following elaborates at the pin with the file's imports plus `TauCeti.AlgebraicGeometry.VectorBundle.Rank` (`E.property.2 : E.obj.IsFinitePresentation` typechecks because `SheafOfModules.isFiniteLocallyFree` is `isLocallyFree ⊓ isFinitePresentation`, LocallyFree.lean:143, and `ContainsZero` is found by `inferInstance` from FiniteLocallyFree.lean:94):

```lean
/-- Finite local freeness as a property of `𝒪_X`-modules: Tau Ceti's `Scheme.Modules.isFiniteLocallyFree`. -/
abbrev isFiniteLocallyFree (X : Scheme.{u}) : ObjectProperty X.Modules :=
  Scheme.Modules.isFiniteLocallyFree X

/-- The full category of finite locally free sheaves: Tau Ceti's `FiniteLocallyFreeSheaf X`. -/
abbrev FiniteLocallyFreeSheaf (X : Scheme.{u}) := TauCeti.AlgebraicGeometry.FiniteLocallyFreeSheaf X

/-- Finite locally free of constant rank `r`, as a property of `𝒪_X`-modules. -/
def isFiniteLocallyFreeOfRank (X : Scheme.{u}) (r : ℕ) : ObjectProperty X.Modules :=
  fun E => ∃ h : isFiniteLocallyFree X E,
    ∀ x : X, FiniteLocallyFreeSheaf.rank (⟨E, h⟩ : FiniteLocallyFreeSheaf X) x = r
```

The fourth name, `determinantObj : FiniteLocallyFreeSheaf X → InvertibleSheaf X`, is data with no body available at the pin: `InvertibleSheaf X` is the full subcategory of the proposition `SheafOfModules.isInvertible X` (LineBundle/Basic.lean:112), the gluing of `∧^r E` over the rank loci is Layer 3's own target, and a `sorry` body is refused by the gate's sorry-data rule. So no edit inside this folder makes both the targeted build and the sorry-data rule pass while SchemeAndStackFoundations' `K0.det` (its line 2562) consumes `determinantObj`. The author should restore the three declarations above and state the determinant in the README only; the consumer's dependence on `determinantObj` has to be resolved on the consumer's side (the revision at the head of pull request #1276 already removes the import). Until that happens the gate cannot pass at this head, and that is a decision for the worker or a human, not something this folder can fix.

## R02 (P3) — Four locators point at the wrong Stacks lemma

Location: `README.md` §1.1 (line 171), §2.2 (line 233), §5.2 (line 379), §6.1 (line 414).

- §1.1 cites Tag 01CI for the tensor comparison "for the tensor algebra". Tag 01CI (stacks-01CI line 1404) is `f^* T(F) = T(f^* F)` for the tensor, exterior and symmetric algebras. The strong monoidality of `f^*`, `f^*(F ⊗ G) = f^*F ⊗ f^*G` functorially, is Modules Lemma 16.4, Tag 01CD (stacks-01CI line 1036).
- §2.2 cites Tag 01CM for quasi-coherence of `Hom(E, F)`. Tag 01CM (line 1454) is the definition of sheaf Hom. The statement that for finitely presented `E` the sheaf `Hom(E, F)` is locally a kernel of a map between finite direct sums of copies of `F` is Lemma 22.6, Tag 01CQ (line 1530); quasi-coherence follows from that together with closure of quasi-coherent sheaves under kernels on a scheme, which the README should name as an input (it is not at the pin: `isQuasicoherent_kernel` is absent from Tau Ceti `a91d3aa`).
- §5.2 cites Tag 01LQ for `Y ×_X Spec_X(A) ≅ Spec_Y(f^* A)`. The statement is Constructions Lemma 4.6 (2), Tag 01LX (stacks-01LQ line 296), proved from Lemma 4.1 (01LS, line 216); Tag 01SA states the compatibility with arbitrary base change (stacks-01SA line 869).
- §6.1 cites Tag 01CI for the affine symmetric-algebra comparison and quasi-coherence. Quasi-coherence and local freeness of `Sym(F)` is Modules Lemma 21.6, Tag 01CL (line 1440).

Repair: replace the four tags as above (01CD; 01CQ plus kernel closure; 01LX/01SA; 01CL), keeping 01CI where pullback of the algebras is meant (§3.2 is correct).

## R03 (P3) — The determinant comparison promised to PadicMeasuresIwasawaAlgebras drops rank and parity

Location: `README.md` §3.3 (lines 299–306) and the supplier subsection (lines 136–139).

Claim: PadicMeasuresIwasawaAlgebras §5.1, which §3.3 consumes, states what this roadmap's Layer 3 supplies in return: on `Spec A` the sheaf determinant is the associated sheaf of `projectiveDeterminant`, compatibly with `projectiveDeterminantMap` for all equal-rank maps, and "the graded comparison retains the rank function and its parity, with Koszul symmetry compared before forgetting" (PadicMeasuresIwasawaAlgebras README lines 325–334 and the consumer row at line 4063). §3.3 states the identification on objects and the fixed-rank functor, but says nothing about the rank-and-parity grading or the Koszul sign.

Witness: on `A = k × k` with `P` of ranks `(1, 2)`, the ring-level determinant is the graded line `(P₁, 1) × (∧²P₂, 0)`; the sheaf determinant of §3.3 is the invertible sheaf alone, so the comparison as stated cannot see the parity function `x ↦ rank(P_x) mod 2` that the supplier's symmetry isomorphism uses.

Repair: add one sentence to §3.3: the affine comparison is an isomorphism of graded lines in the sense of PadicMeasuresIwasawaAlgebras §5.1, retaining the rank function and its parity and matching the Koszul symmetry, and the functor to `InvertibleSheaf X` is its composite with forgetting the grading; and add the direct-sum case `det(E ⊕ F) ≅ det E ⊗ det F` with the sign on swapping summands as a Check (swap on `𝒪²` acts by `−1`, the value PadicMeasuresIwasawaAlgebras §5.1 fixes).

## R04 (P3) — Quasi-coherence of the internal Hom is statable at the pin and is neither stated nor named

Location: `TauCetiRoadmap/AlgebraicVectorBundles/Suggested.lean` lines 18–29 (the not-statable list) against `README.md` §2.2 (line 231).

Claim: the file states three milestones (§2.1, §3.1, §5.1) and lists §5.2, §6.2 and §7.1 as not statable; §2.2's quasi-coherence of `Hom(E, F)` for finitely presented `E` and quasi-coherent `F` is of the same standing in "How to read the build" ("Layer 2 proves the dualizability criterion and the internal-Hom comparisons") and is statable now.

Witness: with the file's imports plus `TauCeti.AlgebraicGeometry.Modules.TensorProduct` and `open MonoidalClosed`, this elaborates with only the `sorry` warning:

```lean
theorem ihom_isQuasicoherent {X : Scheme.{u}} (E F : X.Modules)
    [E.IsFinitePresentation] [F.IsQuasicoherent] :
    ((ihom E).obj F).IsQuasicoherent := by
  sorry
```

Repair: state it in the Layer 2 section (and backtick the name in §2.2), or say in the module docstring that the file states only the three milestones it names and why §2.2 is not among them. The base-change comparison of §2.2 is rightly absent: its canonical map needs the Layer 1 structure.

## R05 (P3) — A supplier listed as a consumer, and the affine input cited in its weaker form

Location: `README.md` line 489 ("PadicMeasuresIwasawaAlgebras §5.1, which shares the determinant with Layer 3" under Downstream consumers); §2.1 lines 212–213.

- PadicMeasuresIwasawaAlgebras §5.1 is a supplier of §3.3 (its `*Needs:*` line) and its own README lists this roadmap as its consumer (line 4063); it is not a downstream consumer of anything here. Delete it from "Downstream consumers" (the supplier subsection already records the relation).
- §2.1 names `QuasicoherentSheaf.nonempty_hasLeftDual_iff_finite_projective` (Modules/Tilde/Dual.lean:71, stated for `Spec R` through `moduleSpecΓFunctor`) as the affine criterion. The pin also has the exact affine case of the headline, `QuasicoherentSheaf.nonempty_hasLeftDual_iff_isFiniteLocallyFree [IsAffine X] (E : QuasicoherentSheaf X)` (Modules/Tilde/Dual.lean:113), which the second route uses directly. Cite that one in §2.1 and in the Tau Ceti supplier list.

## R06 (P3) — Two dependency lines do not match their targets

Location: `README.md` Layer 3 "Dependencies" (line 315) and §7.1 `*Needs:*` (lines 452–453).

- Layer 3's Dependencies says "Layers 1 and 2", but no target of Layer 3 needs Layer 2: §3.1 needs only Tau Ceti, §3.2 needs Layer 1, §3.3 needs §3.1, §3.2 and PadicMeasuresIwasawaAlgebras §5.1. Write "Layer 1".
- §7.1 proves `Hom_X(T, V(E)) ≃ Γ(T, f^* E)` from `Hom_{𝒪_T}(f^*(E^∨), 𝒪_T)`, which needs `f^*(E^∨) ≅ (f^* E)^∨`, the finite-locally-free case of §2.2's base-change comparison; the `*Needs:*` line lists Layer 6, Layer 5 and the Tau Ceti dual only. Add "the base-change comparison of Layer 2 for finite locally free `E`".

## Verified sound

**Gate.** The worker's gate at this head: every text scanner 0 (`set_option`, blob, latex, tex, prnum, sorry-data, sorry-examples, residue, private-paths, imports, mathlib-subimports, readme-ids-missing, empty-sections, round-labels, long-fences, layer-ids, target-ids, metadata, stray-files, outside-folder, source-material), `depcheck=0`, `build=12` (R01). `git diff --stat origin/main...HEAD -- . ':!TauCetiRoadmap/AlgebraicVectorBundles'` is empty: no edit outside the folder. `STATUS.md` and `PROGRESS.md` are the generated status files the repository README describes and are unchanged.

**Dependency check**, run as instructed:

```
depcheck: 204 roadmaps, 1448 edges, 0 problem(s)
```

AlgebraicVectorBundles is on main (not in the merge order). Every roadmap it names (PadicMeasuresIwasawaAlgebras, JacobianChallenge, AlgebraicCurves, StableReduction, SchemeAndStackFoundations, GroebnerGeometry, AdicSpacesPartIII, NilpotentOrbits, ReductiveGroups, SchubertGeometry) is on main. The only `*Needs:*` supplier is PadicMeasuresIwasawaAlgebras §5.1, whose README (lines 323–337, 3172–3230) states the ring-level determinant, `projectiveDeterminantMap`, parity and base change exactly as cited and lists this roadmap's Layer 0C as the consumer; no reciprocal `*Needs:*` edge exists. The label map in "How to read the build" (Layers 1–7 = L0A, L0B, L0C, L1A, L1B, L2A, L2B) agrees with the main README's layer headings, so the citations by L-label in GroebnerGeometry, AdicSpacesPartIII, StableReduction, SchemeAndStackFoundations, NilpotentOrbits and PadicMeasuresIwasawaAlgebras keep resolving.

**Pins.** `lake-manifest.json` at this head pins Mathlib `6b7abb3c` and Tau Ceti `a91d3aa`, as the README states. Every Mathlib and Tau Ceti name in the supplier contracts was elaborated with `#check` at those pins (two probe files, 60 names): `Scheme.Modules.pullback`, `pullbackId`, `pullbackComp`, `pullbackPushforwardAdjunction`, `SheafOfModules.pullbackObjUnitToUnit`, `tildeEquiv`, `IsAffineHom`, `AffineSpace.homOverEquiv`, `AffineSpace.SpecIso`, `Functor.mapCommMon`, `ObjectProperty.IsMonoidal`, `Module.Basis.exteriorPower`, `Nat.multichoose`; `Scheme.Modules.instMonoidalCategory`, `instSymmetricCategory`, `instMonoidalClosed`, `isMonoidal_isQuasicoherent`, `TauCeti.SheafOfModules.monoidalClosed`, `SheafOfModules.dual`, `SheafOfModules.ihomStalkEquiv`, `QuasicoherentSheaf`, `Scheme.Modules.isFiniteLocallyFree`, `FiniteLocallyFreeSheaf` with `free`, `pullback`, `pullbackId`, `pullbackComp`, `toQuasicoherent`, `toFinitelyPresented`, `rank`, `rankLocus`, `rank_pullback_apply`, `rank_biprod_apply`, `rank_tensor_apply`, `isInvertible_iff_forall_rank_eq_one`, `isConstantRank`, `FixedRank`, `dual`, `rigidCategory`, `evalIso`, `finiteProjectiveEquiv`; `Scheme.Modules.isFiniteLocallyFree_iff_exists_openCover`; `InvertibleSheaf.fixedRankOneEquiv`; `QuasicoherentSheaf.nonempty_hasLeftDual_of_isFiniteLocallyFree`, `nonempty_hasLeftDual_iff_finite_projective`, `nonempty_hasLeftDual_iff_isFiniteLocallyFree [IsAffine X]`; `InvertibleSheaf`, `FinitelyPresentedSheaf`; `SheafOfModules.symmetricPower`, `SheafOfModules.exteriorPower`; `CommMon.relativeSpec`, `relativeSpecToBase`, `isPullback_relativeSpecCover`, `QuasicoherentAlgebra`, `AffineSchemeOver` (= `MorphismProperty.Over IsAffineHom ⊤ X`, Functor.lean:166, all morphisms over `X` as the Conventions say), `relativeSpec`, `relativeSpecAffineIso`, `Scheme.Modules.pullbackFromAffineBraided`. Absent at the pin, as the roadmap assumes: `affineFunctions`, `isFiniteLocallyFree_exteriorPower`, `rank_exteriorPower_apply`, `isQuasicoherent_kernel`, any determinant, any monoidal structure on `Scheme.Modules.pullback f` for general `f` (`pullbackFromAffineBraided` needs an affine base). So none of the four stated theorems is a pinned declaration, and the dualizability criterion is pinned only under `[IsAffine X]`.

**Elaboration.** `lake env lean` on a copy of `Suggested.lean` with `#check @name` for its four declarations: four `declaration uses sorry` warnings and nothing else. Elaborated types compared with the README: §2.1 quantifies over `E : QuasicoherentSheaf X` with the dual taken in `QuasicoherentSheaf X` (README: "left dual in the symmetric monoidal category `QuasicoherentSheaf X`"); §3.1 over `E : FiniteLocallyFreeSheaf X`, `n : ℕ`, pointwise rank `(E.rank x).multichoose n` and `(E.rank x).choose n`; §5.1 over an arbitrary `X : Scheme.{u}`. No section variable is lost (each theorem binds `X` itself); no `set_option`, no `lemma`, imports are `import Mathlib` plus five existing `TauCeti.*` modules. Every backticked name of the roadmap's own in the README is declared in the file and conversely (gate `readme-ids-missing=0`).

**Padding probe.** None of the four statements closes by one tactic or one library lemma: at the pin the affine criterion carries `[IsAffine X]`, the rank formulas have no counterpart (`rank_exteriorPower_apply` is absent), and `relativeSpec X` has no inverse functor (`affineFunctions` is absent). No `example`, no definition, no boundary-case theorem.

**Sources (seeded sample).** All ten Stacks tags were fetched through the sources service (ids `stacks-01CI` … `stacks-01SA`, the chapter PDFs; line numbers refer to those texts).

- §1.1: 01CI line 1404 (pullback of tensor, exterior, symmetric algebras); the tensor comparison itself is 01CD line 1036 (R02).
- §2.1: 0FNU line 1171–1177: left dual ⇔ locally a direct summand of finite free ⇔ finitely presented and flat, on a ringed space; 00NX line 8610–8619: finitely presented and flat ⇔ finite projective ⇔ finite locally free, over a ring. Supports the route as written.
- §2.2: 0C6I line 1521–1524: finitely presented `F`, flat `f` ⇒ the comparison is an isomorphism, exactly the first criterion; the second (finite locally free, arbitrary `f`) is the roadmap's own via `Hom(E, F) ≅ E^∨ ⊗ F`. 01CM is the definition (R02).
- §3.1: 01CK line 1414–1422: (3) finite presentation and (6) local freeness pass to `Sym^n`, `∧^n`; rank by the monomial basis and `Module.Basis.exteriorPower` (Mathlib, indexed by `powersetCard I n`).
- §3.2: 01CI line 1404–1406 as cited.
- §3.3: PadicMeasuresIwasawaAlgebras §5.1 as above.
- §4.1, §4.2: 01LQ line 202–215: pairs `(f : T → S, φ : f^*A → O_T)`, the three equivalent forms of `φ` and the pullback along `T' → T` by `A → f_*O_T → f'_*O_{T'}`; Lemma 4.2 (01LT, line 226) the affine case.
- §5.1: 01SA line 865–872: anti-equivalence of schemes affine over `S` with quasi-coherent `O_S`-algebras by `f ↦ f_*O_X`, compatible with arbitrary base change. §5.2: Constructions Lemma 4.6 (2), line 296 (R02).
- §6.1, §6.2, §7.1, §7.2: 01M1 line 336–361 (`V(E) = Spec_S Sym(E)`, the grading `π_*O = ⊕ Sym^n(E)`, Definition 6.2 "vector bundle" = affine with graded `π_*O_V`, `E_0 = O_S`, `Sym^n(E_1) ≅ E_n`, grading-preserving morphisms, no finite-local-freeness assumed, footnote 1), 062N line 364–368 (anti-equivalence with quasi-coherent modules, proof omitted with the two functors named). The roadmap's `LinearSch(X)` is Stacks' "vector bundle" and `GeomVB(X)` its finite-locally-free full subcategory, as stated.

**Ownership.** `roadmaps grep` over the open pull requests and main for `LinearSch|linear scheme|linearSpec`, `GeomVB|geometric vector bundle|totalSpace`, `GradedQuasicoherentAlgebra|graded quasi-coherent algebra`, `relativeSpec.*equivalence`, `isFiniteLocallyFree_iff_nonempty_hasLeftDual|dualizab`, `symmetricPower_isFiniteLocallyFree|multichoose`: on main only this roadmap plans linear schemes; the SchemeAndStackFoundations revisions mention graded quasi-coherent algebras and total spaces as consumers (relative Proj), not as owners; the many `dualizab` hits are other categories (condensed, perverse, operator algebras). No second owner found for the dualizability criterion, the rank formulas, the determinant on schemes, the relative-Spec anti-equivalence, linear schemes or the geometric total space. Ownership was checked only against the open pull requests whose files or `roadmaps show` output this brief makes readable.

**Adversarial pass** (statement; instances; values; result).

| Statement | Instances | Values computed | Result |
| --- | --- | --- | --- |
| §1.1 tensor comparison is an iso | `X = Spec ℤ`, `Y = Spec 𝔽_p`, `E = F = ℤ/p²` | `f^*E ⊗ f^*F = 𝔽_p ⊗_{𝔽_p} 𝔽_p = 𝔽_p`; `E ⊗ F = ℤ/p²`, `f^*(E ⊗ F) = 𝔽_p` | equal; non-flat `E` allowed (01CD needs no flatness) |
| §1.1 unit comparison | open immersion `U`, `𝒪_X ⊗ 𝒪_X` | both sides `𝒪_U` | iso |
| §2.1 iff, ⇒ fails on non-finite | `𝒪^(ℕ)` on `Spec k` | coevaluation `k → V^∨ ⊗ V` has finite-rank image, `V` infinite-dimensional: no dual; not finitely presented | both sides false |
| §2.1 iff, non-flat | `k[t]/(t)` on `Spec k[t]` | finitely presented, `Tor₁(k[t]/(t), k[t]/(t)) = k ≠ 0` so not flat; not locally free | both sides false |
| §2.1 degenerate | empty scheme, zero sheaf; `X = Spec R` | both sides true; reduces to pinned `[IsAffine X]` iff | consistent |
| §2.2 flatness needed | `E = 𝒪/(t)` on `𝔸¹_k`, `f` = origin | `Hom(E, 𝒪) = 0` (no `t`-torsion in `k[t]`), so `f^*Hom = 0`; `Hom(f^*E, k) = k` | not surjective; `f` not flat |
| §2.2 finite presentation needed | `E = ℤ^(ℕ)`, `F = ℤ`, `f : Spec ℚ → Spec ℤ` | `(∏ℤ) ⊗ ℚ → ∏ ℚ` misses `(1/n)_n` (bounded denominators) | not surjective; `f` flat |
| §3.1 `Sym` rank | `r = 0, n = 0`; `r = 0, n = 1`; `r = 2, n = 2`; `n = 0` | `multichoose 0 0 = 1` (`Sym⁰ = 𝒪`); `multichoose 0 1 = 0`; `3` (`x², xy, y²`); `multichoose r 0 = 1` (`Nat.multichoose_zero_right`) | all match |
| §3.1 `∧` rank | `r = 2, n = 2`; `n = 3`; `r = 0, n = 0`; char 2 | `1`; `choose 2 3 = 0` (`Nat.choose_eq_zero_of_lt`); `1`; antisymmetric quotient of `𝒪² ⊗ 𝒪²` over `𝔽₂` has rank 3 (`e₁⊗e₁`, `e₂⊗e₂`, `[e₁⊗e₂]`), alternating has rank 1 | alternating relation is the one meant |
| §3.2 comparison | `n = 0`, `n = 1`, `E = 𝒪²`, `n = 2`, point | `pullbackObjUnitToUnit`; identity; `e₁∧e₂ ↦ e₁∧e₂` | no sign |
| §3.3 determinant | `𝒪^r`, `A ∈ GL_r`; `Spec k ⊔ Spec k`, ranks `(1, 2)`; `r = 0` | `∧^r A = det A`; `det` ranks `(1, 1)`, `∧¹` ranks `(1, 2)`, `∧²` ranks `(0, 1)`; `det 0 = 𝒪` | matches; parity not retained (R03) |
| §4.1 pushforward algebra | `V = X ⊔ X`; `Spec R → Spec A`; `id` | `𝒪 × 𝒪` (rank 2, `𝒪 ⊗ 𝒪 = 𝒪` has rank 1); `R`; `𝒪_X` | matches |
| §4.2 points | `A = 𝒪_X`; `𝒪_X[t]`; `𝒪_X × 𝒪_X` | `Spec_X 𝒪_X = X`, one map; `Γ(T, 𝒪_T)`; `X ⊔ X`, clopen decompositions of `T` | matches |
| §5.1 anti-equivalence | empty scheme; `Spec k`; `t² = x` over `𝔸¹` | one object each side; `𝔸² ∖ 0 → Spec k` not affine, excluded, `Γ = k[x, y]` gives `𝔸²`; `A = 𝒪[t]/(t² − x)` free with basis `1, t`, `p_*𝒪 = A` | matches 01SA |
| §5.2 base change | `A = 𝒪_X[t]`; `f = id`; closed point, `A = 𝒪 × 𝒪` | `𝔸¹_Y` both sides; identity up to `pullbackId`; `Spec(κ × κ)`, two points | matches 01LX |
| §6.1 `Sym^gr ⊣ (−)_1` | `𝒪[t]/(t²)`, `t` in degree 1; `Sym(𝒪²)_2` | `Sym(𝒪) = 𝒪[t] → 𝒪[t]/(t²)` not injective; rank 3 | free-in-degree-one is a real condition |
| §6.2 linear schemes | `α_p = Spec 𝔽_p[t]/(t^p)`; `t ↦ t²` on `𝔸¹_X`; `𝒪^r` | `(a t)^p = a^p t^p = 0`, so scalar multiplication is defined and `α_p` is a module scheme; `𝔽_p[t] → 𝔽_p[t]/(t^p)` not an iso; not grading-preserving; `𝔸^r_X` | matches |
| §7.1 total space | `E = 𝒪^r`; `E = 0`; `a ∈ Γ(X, 𝒪)` on `E = 𝒪` | `𝔸^r_X` with `homOverEquiv`; `Spec_X 𝒪 = X`; on `V(𝒪)` `T`-points multiply by `f^*a`, on `V_lin(𝒪)` the contravariant map transposes | variance witness holds |
| §7.2 dictionary | `E ⊕ E'`; fibre of `V(𝒪²)` at `x` | `Sym(E^∨ ⊕ E'^∨) = Sym(E^∨) ⊗ Sym(E'^∨)`, so `V(E) ×_X V(E')`; `𝔸²_{κ(x)}` | matches |
| Lean context | all four theorems | `X` bound in each signature; `AffineSchemeOver X` has `⊤` as morphism property | no lost hypothesis |

Checks: every definition-bearing section (§3.3, §4.1, §6.1, §6.2, §7.1) has three Checks, each recomputed above and each discriminating (the α_p, `t ↦ t²`, `𝒪 × 𝒪` versus `𝒪 ⊗ 𝒪`, `V_lin` versus `V` and parity cases exclude a plausible wrong model). The Conventions' two-term variance witness (`E = 𝒪_X`, multiplication by `a`) is recomputed in the §7.1 row.

## Not verifiable

- EGA II §1 and Hartshorne II.5 are listed as references without a locator-bearing claim; no statement in the README depends on them beyond what the Stacks tags cover, so they were not opened.
- The closure of quasi-coherent sheaves under kernels on a scheme (Stacks, Schemes chapter), which §2.2's quasi-coherence route needs after 01CQ, was not fetched; the README does not cite it (R02 asks for the citation).
- Whether the remaining eight errors in `SchemeAndStackFoundations/Suggested.lean` (lines 2558–2574) are all consequences of the four unknown identifiers was not tested by rebuilding that file on main's own pins; they occur inside declarations built on `K0 X`, which is defined through `FiniteLocallyFreeSheaf`, so they are reported as downstream of R01.

## Source issues

- none
