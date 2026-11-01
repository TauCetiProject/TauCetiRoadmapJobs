# Review of MorseNovikov (pull request #1161 at ef73887)

**Verdict:** needs changes

Full re-review of the repaired head. Every finding of the previous review (R01–R08 at 1c71a9c) is repaired at this head; the table under Verified sound quotes the passage for each. The gate passes, `lake env lean` of `Suggested.lean` prints only the `sorry` warning, the dependency check reports no problem, and the seeded sample of fifteen targets agrees with the texts at the locators given. One blocking finding remains, and it is new: the roadmap's Poincaré–Hopf headline is declared not statable in the module docstring, but it elaborates at the pins through Mathlib's tangent-bundle derivative of a vector field, the same chart-level reading the file already uses for `df_x`. Two P3 findings cover three Checks and a group of locator slips.

## R01 (P2) — the vector-field Poincaré–Hopf theorem is statable at the pins, declared not statable, and absent

Location: `TauCetiRoadmap/MorseNovikov/Suggested.lean:28–30` ("The vector-field Poincaré–Hopf theorem (§7.1): not statable, the index of a zero of a vector field … has no pinned carrier, and a chart-level encoding would be an ad hoc stand-in"); `README.md:17` (the Summary lists it among the end theorems) and `:1344–1347` (§7.1: "Construct the vector-field Poincaré–Hopf theorem here … Σind(V,p)=χ(X), on nonorientable X as well").

Claim: every headline theorem statable at the pins is stated in `Suggested.lean`; this one is not statable.

Witness: Mathlib differentiates a vector field `V : (x : M) → TangentSpace I x` through the section `x ↦ (V x : TangentBundle I M)` with `mfderiv I I.tangent` (`Mathlib/Geometry/Manifold/VectorField/Pullback.lean:37`, `MDifferentiableWithinAt I I.tangent (fun y ↦ (V y : TangentBundle I M)) s x`), and `fixedPointDet` already reads `df_x` through `mfderiv I I f x` in the same chart-level way. At a zero `p` the tangent-bundle chart at `(p, 0)` is the chart at `p` on the base and the coordinate change into chart-`p` coordinates on the fibre, so the second component of the section's derivative at `p` is the vertical derivative `dV_p` and its determinant sign is the local index of §7.1 (Conventions' witness: `V = ∇f` at a maximum, `det dV_p = det Hess f`, sign `(−1)^n`). The following elaborates against the pinned Mathlib 6b7abb3c and Tau Ceti a91d3aaf with exit 0 and only the `sorry` warning (scratch file, same header as `Suggested.lean`):

```lean
/-- The determinant of the derivative of the section `x ↦ (x, v x)` at `p`, projected to the
fibre; at a zero of `v` it is the determinant of the vertical derivative `dv_p`. -/
def zeroDet (v : (x : M) → TangentSpace I x) (p : M) : ℝ :=
  LinearMap.det ((ContinuousLinearMap.snd ℝ E E).comp
    (mfderiv I I.tangent (fun x ↦ (v x : TangentBundle I M)) p)).toLinearMap

/-- The local index of a nondegenerate zero: `1` when `zeroDet` is positive, `-1` otherwise. -/
def zeroSign (v : (x : M) → TangentSpace I x) (p : M) : ℤ :=
  if 0 < zeroDet I v p then 1 else -1

/-- The rational Betti number of `M` in degree `i`. -/
def rationalBetti (M : Type u) [TopologicalSpace M] (i : ℕ) : ℕ :=
  Module.finrank ℚ (((TopPair.incl.obj (TopCat.of M)).singularHomology
    (ModuleCat.of ℚ (ULift.{u} ℚ)) i : ModuleCat ℚ))

/-- **Poincaré–Hopf** (README §7.1): for a smooth vector field with nondegenerate zeros on a
compact Hausdorff boundaryless manifold, the sum of the local indices is the Euler
characteristic. -/
theorem poincare_hopf (v : (x : M) → TangentSpace I x)
    (hv : ContMDiff I I.tangent ∞ (fun x ↦ (v x : TangentBundle I M)))
    (hnd : ∀ p, v p = 0 → zeroDet I v p ≠ 0) :
    ((∑ᶠ p ∈ {p | v p = 0}, zeroSign I v p : ℤ) : ℚ) =
      ∑ i ∈ Finset.range (Module.finrank ℝ E + 1), (-1 : ℚ) ^ i * (rationalBetti M i : ℚ) := by
  sorry
```

`#check @zeroDet` gives `(I : ModelWithCorners ℝ E H) → {M} → [TopologicalSpace M] → [ChartedSpace H M] → [IsManifold I ∞ M] → ((x : M) → TangentSpace I x) → M → ℝ`; `#check @poincare_hopf` carries `[FiniteDimensional ℝ E] [IsManifold I ∞ M] [I.Boundaryless] [CompactSpace M] [T2Space M]`, the README's standing hypotheses for §7.1 (closed manifold, nonorientable allowed). Under `hnd` the zero set is finite (a nondegenerate zero is isolated, `M` compact), so the finsum is the signed count. The statement does not need `χ(X) = 0` and does not depend on Euler structures.

Repair: add the four declarations above under a `/-! ## Layer 7: Euler structures and coherent lift normalization -/` section of `Suggested.lean`; in the module docstring replace the "not statable" entry for Poincaré–Hopf by "statable, stated as `poincare_hopf`"; in README §7.1 add API bullets in prose naming `zeroDet`, `zeroSign`, `rationalBetti` and `poincare_hopf` (their generality: compact Hausdorff boundaryless `M`, smooth `v` as a section of the tangent bundle, all zeros nondegenerate), and in the Summary say that two headlines are statable. The existing §7.1 Checks (T² height function 0 = χ, RP² three critical points 1 = χ, the `(−1)^n` sign at a maximum) are the Checks for these declarations; no Lean counterpart of them is wanted.

## R02 (P3) — three Checks that do not test what they claim

Location and claims:

- `README.md:720–721` (§4.2 Check 3): "the two-term complex with a=1 and swapped basis order in degree 0 has torsion −1". Witness: the complex `F →a F` has a one-dimensional degree-0 term, so no swap exists; the Check is vacuous. Repair: use `F² →id F²` with the degree-0 basis swapped: `A₀` is the transposition, `det A₀ = −1`, and §4.2's formula gives `τ · det(A₀)^{(−1)^0} = −1`.
- `README.md:1386–1387` (§7.2 Check 1): "at ξ₀+1 all three are multiplied by t". Witness: by the Conventions and §2.2 Check 1, `1 ∈ H₁(S¹;ℤ)` is the positive angular generator, `N(1) = −1`, so its monomial is `t⁻¹`; under the action convention `τ(ξ+h) = e^{image h} τ(ξ)` stated two paragraphs earlier, `ξ₀ + 1` multiplies by `t⁻¹`. Repair: "at `ξ₀ − 1`, the change by the negative angular generator whose monomial is `t`, all three are multiplied by `t`".
- `README.md:929–932` (§5.3 Check 3): "the irrational linear flow has no periodic orbits and is admissible vacuously, which shows admissibility depends on the metric within a cohomology class". Witness: the two flows compared are those of `dx` and of `dx + √2 dy` with the same flat metric, two different classes; the sentence's conclusion is true (rt3 lines 125–128, generic pairs in a fixed class are admissible) but not what the instance shows. Repair: "…is admissible vacuously; within the class of `dx`, a generic metric makes the pair admissible while the flat metric does not, so admissibility depends on the metric".

## R03 (P3) — locator slips and targets without a locator

Location, witness and repair, one bullet each:

- `README.md:1192–1233` (§6.7, the Lefschetz construction) and `:1251–1285` (§6.8): no locator; the Lean docstring (`Suggested.lean:75–81`) cites rt3 Example 1.9, which names the theorem ("equivalent to the Lefschetz theorem for f^k", rt3 line 415) and does not state or prove it. Repair: cite a text for the Hopf trace formula and the Lefschetz–Hopf index theorem at the claims (for example Hatcher, *Algebraic Topology*, §2.C, Theorem 2C.3 and the Hopf trace formula, or Dold, *Lectures on Algebraic Topology*, Chapter VII, for the index version on ENRs) and add it to References; keep rt3 Example 1.9 for the mapping-torus formula only.
- `README.md:1297–1298` (§6.9): "rt3 §1.5, p. 214: the torsion … is related to the Alexander polynomial" supports only "related"; the exact statement `τ_top(X,a) = Alex(K)/(1−t)²` for zero-surgery is rt1 Example 1.9, p. 863 (rt1 lines 80–83, with its Lemma 2.6). Repair: cite rt1 Example 1.9 there.
- `README.md:501–502` (§2.3): the expected dimension `ind p − ind q − 1` is rt3 §1.1, p. 211 (lines 114–117), not §1.4, p. 213 (which has the lifted counting and the sign convention). Repair: "(rt3 §1.1, p. 211, and §1.4, p. 213)".
- `README.md:675–677` (§4.1): "scalar-torsion multiplicativity … with the explicit Koszul sign (Milnor 1966, §3, p. 365, Theorem 3.1)". Witness: Milnor's Theorem 3.1 is an identity in `K̄₁A = K₁A/±1` (milnor lines 256–257, 286–287), so the sign is not in the source. Repair: "(Milnor 1966, §3, p. 365, Theorem 3.1, up to the sign, which is fixed here)".
- `README.md:290–318` (§1.2) and `:383–391` (§1.5): no locator at all. Repair: §1.5's "chosen orbit lifts identify this module with a finite free Nov-module" is rt3 §1.4, p. 213 (lines 219–224); §1.2's `O(R)` notation and limits are rt3 §2.1, p. 220 (lines 604–614), and the finite-kernel restriction is rt3 §3.4, p. 227 (lines 1063–1069).
- `README.md:203` (supplier contract): "Layer 12 (metrics and musical maps, `circleAngularForm`)". Witness: DifferentialGeometry's README places `circleAngularForm` in Layer 5 (`TauCetiRoadmap/DifferentialGeometry/README.md:533`) and Layer 8 (`:860`); both layers are already in the contract. Repair: move the name to the Layer 5/8 clause.

## Verified sound

**Repair of the previous review's findings (head 1c71a9c → ef73887).** All eight are repaired.

| Previous finding | Passage at ef73887 | Status |
|---|---|---|
| R01 build warnings (`Set.mem_setOf_eq`, unused section variables) | `lake env lean TauCetiRoadmap/MorseNovikov/Suggested.lean`: one line, `82:8: warning: declaration uses sorry`, exit 0; gate `build=0` | repaired |
| R02 twenty admitted data definitions | the file has three definitions with real bodies (`fixedPointDet`, `fixedPointSign`, `rationalHomologyMap`) and one `sorry`'d theorem; gate `sorry-data=0`; the module docstring lists Theorems A/B, the Novikov isomorphism and inequalities, the zeta integrality, Poincaré–Hopf and the calculations as not statable with the missing carrier | repaired (see R01 below for one of the docstring's entries) |
| R03 imports (ten `Mathlib.*`, no `import Mathlib`, a roadmap module) | lines 1–4: `module`, `public import Mathlib`, `public import TauCeti.AlgebraicTopology.Singular.Relative` (used by `rationalHomologyMap`); gate `imports=0 mathlib-subimports=0 no-import-mathlib=0` | repaired |
| R04 `example : True` scaffolds | none in the file; gate `residue=0` | repaired |
| R05 commit-pinned link to HeegaardFloer | §§2.2, 3.2, 6.2 cite "HeegaardFloer §1.5 (M.5)"; gate `blob=0` | repaired |
| R06 padding (coefficient catalogue, one-tactic lemmas, unused defs) | none left; the one-tactic probe below confirms the single theorem does not close | repaired |
| R07 README shape, locators, Lean/README agreement, #1690 | house shape (`## Scope and ownership`, `## Conventions`, `## Exact supplier contracts`, `## How to read the build`, `## Layer 1`–`## Layer 7` with `### k.n`, `**Checks.**`, `### Examples`, `### Dependencies`, `## Downstream consumers`, `## References`); 79 page locators of the form `(rt3 …, p. N)`; the four Lean names appear in §6.7 and the Summary; §2.2 contains the Klein-bottle abelian-cover text of pull request #1690 (diff of #1690's README against main shows the same insertion at its lines 156–190, here lines 457–475 in house style) | repaired |
| R08 torsion convention vs Milnor; unused Lean binders | Conventions, lines 134–139: rt3 Definition A.1/Proposition A.2 convention stated with Milnor's inverse formula and locator; `#check @fixedPointDet`, `@fixedPointSign`, `@rationalHomologyMap` carry only the binders their types need (elaborated, see below) | repaired |

**Gate at ef73887 (worker's run, data):** `set_option=0 blob=0 latex=0 tex=0 prnum=0 sorry-data=0 sorry-examples=0 residue=0 private-paths=0 imports=0 mathlib-subimports=0 no-import-mathlib=0 lean-lines=0 forbidden=0 dropped=0 readme-ids-missing=0 empty-sections=0 round-labels=0 long-fences=0 layer-ids=0 target-ids=0 depcheck=0 metadata=0 stray-files=0 dirty=0 outside-folder=0 source-material=0 build=0 OK`. My own runs: `lake env lean` of `Suggested.lean` exits 0 with the single `sorry` warning; `depcheck: 204 roadmaps, 1438 edges, 0 problem(s)` (the roadmap is on main; no UPWARD or CYCLE line). `git diff --stat origin/main...HEAD -- . ':!TauCetiRoadmap/MorseNovikov'` is empty. The folder holds `README.md`, `Suggested.lean`, `metadata.toml` only.

**Elaborated signatures (scratch copy with `#check @name`, exit 0).** `fixedPointDet : … (I : ModelWithCorners ℝ E H) → {M} → [TopologicalSpace M] → [ChartedSpace H M] → (M → M) → M → ℝ` and `fixedPointSign … → ℤ` carry no finiteness, compactness or Hausdorff binder, correctly: their bodies are `LinearMap.det (1 − mfderiv I I f x)` and its sign, which need none (without `FiniteDimensional` the determinant is the junk value 1, which only the theorem's `[FiniteDimensional ℝ E]` rules out). `rationalHomologyMap : {M} → [TopologicalSpace M] → C(M, M) → (i : ℕ) → H_i(M;ULift ℚ) →ₗ[ℚ] H_i(M;ULift ℚ)`. `lefschetz_fixed_point_formula` has `[FiniteDimensional ℝ E] [IsManifold I ∞ M] [I.Boundaryless] [CompactSpace M] [T2Space M] (f : M → M) (hf : ContMDiff I I ∞ f)` and the nondegeneracy hypothesis, matching the README's "compact Hausdorff boundaryless M, smooth f, all fixed points nondegenerate" (§6.7 API bullet 3 and the Lean docstring). The signatures-tool leads ("looks dropped `[CompactSpace M]` …") are the definitions' correct binder sets, not defects.

**Pinned carriers opened.** `TopPair.singularHomology` (`TauCeti/AlgebraicTopology/Singular/Relative.lean:222`: `(toSSetPair.obj P).homology R n`, with `SSetPair.homology` at `Mathlib/AlgebraicTopology/SimplicialSet/Homology/Relative.lean:299` the homology of the relative chain complex), `TopPair.singularHomologyMap` (`Relative.lean:227`), `singularHomologyMap_id`/`_comp` (`:232, :238`, the functoriality the §6.7 API bullet 2 relies on); `TopPair.incl` (`Mathlib/Topology/Category/TopPair.lean:93`, "sends a space X to (X, ∅)"), so the carrier is absolute singular homology with coefficients in the ℚ-module `ULift ℚ`, a ℚ-vector space on which `LinearMap.trace ℚ` is the trace. `TauCeti.IsManifoldNondegenerateCriticalPoint` (`Geometry/Manifold/Morse/Basic.lean:59`), `TauCeti.manifoldMorseIndex` (`Morse/Index.lean:74`), `Riemannian.Tensor.rieszDual` (`VectorBundle/Riemannian/Riesz.lean:74`), all at Tau Ceti a91d3aaf; the DifferentialGeometry carriers named in the supplier contract (`closedForms` `:2182`, `RoughForm` `:529`, `flowOf` `:1280`, `isCompleteVectorField_of_compactSpace` `:1388`, `toFlow` `:1396`, `circleAngularForm` `:1951` of `TauCetiRoadmap/DifferentialGeometry/Suggested.lean` on main) are that roadmap's targets, correctly cited as a supplier and not imported.

**One-tactic probe.** On a scratch copy, `lefschetz_fixed_point_formula` with `simp` leaves the goal unchanged ("unsolved goals", the full statement) and `rfl` fails ("not definitionally equal"); no library lemma states it. Not padding. The three definitions are the minimum the statement needs.

**Cross-roadmap citations resolved on main (content checkout).** MorseTheory M1, M2, M3, M4, M6 (`TauCetiRoadmap/MorseTheory/README.md:90, 124, 430, 458, 649`); HeegaardFloer Layer 1 (`:203`), §1.5 (M.5) (`:402`), §1.9 (M.9) with its Morse Euler/index comparison (`:1037, 1052–1055`), Layer 2 (`:1183`), §2.8 (F0.6) (`:1690`, and `:1724` "MorseNovikov N5 applies this germ to −α♯"), consumer line `:4117`; DifferentialGeometry Layers 0, 1, 2, 3, 5, 6, 8, 10, 12 (`:268, 311, 341, 371, 503, 782, 816, 877, 910`); AlgebraicTopology Stages 1–7 (`:289, 326, 471, 499, 849, 946, 1573`), Stage 4 items 2 (`cellularDifferential`) and 3 (`cellularSingularHomologyIso`) (`:512, 515`); DGFloer Layer 1 item 1, "Hurewicz in degree one" (`:442, 453`); UniversalCovers Stage 2 items 7–8 (`Completed/UniversalCovers/README.md:98, 107, 111`); GeometricTopology Layers 1, 3, 4, 5, 11 (`:177, 357, 409, 519, 831`). The labels N1–N7 that consumers use (FourManifolds "N6", DGFloer "N1", FukayaTheory "N1" with `U_C`, `P_(ρ,φ)`, SymplecticReidemeisterTorsionModSquares "§N4", AlgebraicTopologyPartII and K3SurfacesAndSymplecticBoundedness "N6's Lefschetz fixed-point formula", HeegaardFloer "N5", "N7") remain in the layer titles `## Layer k: … (Nk)`, and each cited object exists at this head (§1.2 `U_C` and `P_(ρ,φ)`, §4.6 based torsion with the zero convention, §6.7 Lefschetz, §6.9 Seifert-matrix Alexander module, §7.1 Poincaré–Hopf). The consumers named under `## Downstream consumers` (DGFloer, TaubesGromov, HamiltonianFloerOperations, AlgebraicTopologyPartII) all exist as roadmaps on main or open pull requests.

**Ownership against open pull requests** (`roadmaps grep` over the 437 open heads and main, index of 2026-11-01). No other roadmap builds the period-controlled completion, based torsion over Novikov total quotient rings, the dynamical zeta function, Euler structures, the smooth Lefschetz fixed-point formula or the vector-field Poincaré–Hopf theorem: the hits are consumers (AlgebraicTopologyPartII `:394`, K3SurfacesAndSymplecticBoundedness `:196`, SymplecticReidemeisterTorsionModSquares `:15`, HeegaardFloer `:4211` "the orientation-free Poincaré–Hopf theorem of MorseNovikov N7"), IndexTheory's Atiyah–Bott reference (`:906`, the elliptic-complex formula, a different theorem) and GroupActionsOnRiemannSurfaces' holomorphic Lefschetz formula (`:993`). The other open revision of this folder, #1690 (kim-em, head 9637d5e, README only), is subsumed: its insertion is already in §2.2 here. AlgebraicTopology on main has no Lefschetz number or fixed-point theorem (grep: 0 hits).

**Sources: the seeded sample (15 targets) and every locator they carry.** Texts read in the worker's cache: rt3 (Hutchings, Forum Math. 14, author copy; file page N is printed page 208+N), rt2 (Hutchings–Lee, G&T 3, published version; file page N is printed 368+N), rt1 (Hutchings–Lee, Topology 38; file page N is printed 860+N), Milnor, Whitehead torsion (AMS open archive; file page 8 is printed 365), and Hutchings' family-Floer erratum (author blog). Cited below as `<source id> line N`.

| # | Target | README claim (line) | Locator in the text | Found |
|---|---|---|---|---|
| 1 | 1.1 | Nov(R,H,N) = coefficient functions with finitely many nonzero values below every cutoff; rt3 §1.2 p. 211; rt2 §1 p. 371 (248–251) | rt3 lines 137–147 (page 3 = p. 211); rt2 lines 100–104 (p. 371, "finitely supported on {h : −θ(h) ≤ C}", the ≤C form the README proves equivalent) | agrees; the "identity iff N ≡ 0" misprint at rt3 line 147 is under Source issues |
| 2 | 1.2 | filtration `U_C`, completeness, pushforward along φ with `N′∘φ = cN` (290–318) | no locator given; the author's construction | consistent with rt3 lines 604–614 (the `O(R)` notation and limits, p. 220) and with rt3's pushforward/pullback along a finite-kernel ι at lines 1063–1069 (p. 227); see R03 for the missing locator |
| 3 | 1.5 | completed modules over free H-sets with finitely many orbits, lifts give a finite free Nov-module, change of lifts diagonal monomial (383–391) | no locator given | rt3 lines 219–224 (p. 213): CN_i is free over Λ with a basis of chosen lifts; agrees; see R03 |
| 4 | 2.1 | nondegenerate zero = transversality of the graph of α to the zero section; index = negative eigenvalues; admissibility (a), (b); descending manifold and expected dimension (418–431) | rt3 lines 83–99 (p. 210), 114–124 (p. 211, Definition 1.1 (a) (b)) | agrees |
| 5 | 2.3 | lifted moduli with translation quotient, dimension ind p − ind q − 1 "rt3 §1.4, p. 213"; length bounded by a multiple of the drop "rt3 §1.3, p. 212" (501–513) | expected dimension: rt3 lines 109–117, which is §1.1, p. 211; length bound: lines 177–186 (p. 212) ✓; the lifted counting and the ℝ-translation quotient: lines 219–246 (p. 213) ✓ | agrees; the expected-dimension locator is off by a section (R03) |
| 6 | 4.1 | determinant line, alternating product (A.1), zero convention for nonacyclic complexes, Milnor §3 p. 365 and Theorem 3.1 (666–688) | rt3 lines 1819–1859 ((A.1) and Definition A.1, p. 239); Milnor lines 258–273 (τ(C) = Σ(−1)^i[b_i h_i b_{i−1}/c_i], p. 365), 286–287 (Theorem 3.1) | agrees; Milnor's Theorem 3.1 lives in K̄₁ = K₁/±1 (line 256), so the "explicit Koszul sign" is the README's own addition (R03) |
| 7 | 4.5 | Nov(H) free of rank k over Nov(K) with coset-monomial basis; Norm, Tr = k·restriction; log Norm(1+x) = Tr log(1+x); under (3.8) Norm respects fields and nonzero stays nonzero; torsion transforms by Norm under (3.8); ζ needs no (3.8) (771–783) | rt3 lines 1063–1097 (Lemma 3.5 (a)(b)(c), (3.8) at 1076, p. 227), 1146–1162 (Proposition 3.6 (a) without and (b) with (3.8), p. 228) | agrees |
| 8 | 4.6 | componentwise torsion with 0 on nonacyclic components; ambiguity ±e^H on the whole total quotient; Q(Nov)/±H (799–806) | rt3 lines 1886–1898 (Definition A.3, p. 240), 275–278 and 305–309 (Q(Λ)/±H, Definition 1.5, p. 214) | agrees |
| 9 | 5.2 | multiplicity = covering degree, not return time; Lefschetz sign on T_qX/T_qγ independent of section and point (867–871) | rt3 lines 64–66 (period p(γ) = largest k with γ a k-fold cover), 67–82 (p. 210) | agrees |
| 10 | 5.3 | admissible = (a) + (b) + all closed orbits nondegenerate; generic in a fixed class (914–919) | rt3 lines 119–128 (Definition 1.1 and the transversality remark, p. 211) | agrees |
| 11 | 6.2 | good times and semi-isolation, rt3 Definition 2.6 p. 220; closed-orbit degeneration leaves CN and ζ unchanged by local index conservation, Lemma 3.2 p. 223; Cerf normal form V_t (1012–1027) | rt3 lines 632–637 (Definition 2.6, page 12 = p. 220); 855–912 (Lemma 3.2 and its transverse-disc proof, pages 15–16 = pp. 223–224); 1387–1400 ((3.13) `V = (x₁² + t − t₀, −x₂, …, −x_i, x_{i+1}, …, x_n)`, p. 231) | agrees; the README's V_t is (3.13) with both signs, its index assignment (x₁ < 0 index i, x₁ > 0 index i−1) is rt3 lines 1394–1397 |
| 12 | 6.3 | x = 1 + Σ a_n e^{nh}, a₁ = ±1, `d₊ = A_p(x)⁻¹ d₋ A_p(x)`, μ_k covers with k coprime to d and h ↦ 1; y = ζ₊/ζ₋ ∈ 1 + Σℤe^{nh}, b₁ = (−1)^{i+1} a₁; ν_k : H → ℤ/dk killing T with h ↦ d; e^{kh}-coefficient of log Norm_{ν_k}(z) is dk·(log z)_k; nonacyclic case I₊ = I₋ = 0 (1047–1113) | rt3 lines 1241–1286 (Lemma 3.7 (a)(b)(c) and the μ: H → ℤ/k, h ↦ 1 cover, p. 229), 1289–1324 (Lemma 3.8 (a)(b), p. 230), 1328–1374 (Lemma 3.10: μ: H → ℤ/dk, h ↦ d, annihilating torsion; `Norm exp(Σ_{n≥2} c_n h^n) = exp(dk Σ_{n≥1} c_{kn} h^{kn})`; Lemma 3.4 for slides with k ∤ j−i; the nonacyclic last paragraph, pp. 230–231), 966–973 (Lemma 3.4) | agrees |
| 13 | 6.5 | exact triangulation-adapted case first (Example 1.8), then β = α + C df, rescaled to df + C⁻¹α (1141–1145) | rt3 lines 364–376 (Example 1.8, p. 215), 494–507 (§1.7, pp. 217–218) | agrees |
| 14 | 6.6 | circle values τ, ζ, τcell (1159–1171) | rt3 lines 354–363 (Example 1.7, p. 215) | agrees |
| 15 | 6.8 | finite simplicial chain adapter, subdivision, last-vertex map, acyclic carriers | no locator (own construction on GeometricTopology Layer 11 and AlgebraicTopology Stages 3–4) | see R03 |
| 16 | 6.7 (headline) | Lefschetz sign and the mapping-torus zeta/determinant formula, Example 1.9 (1184–1190; Lean docstring) | rt3 lines 377–417 ((1.6), T_m(ξ₀) = 1, the determinant formula with exponent (−1)^{i+1}, p. 215–216) | agrees for the mapping-torus statements; the Lefschetz theorem itself is only named there ("equivalent to the Lefschetz theorem for f^k", line 415), see R03 |
| 17 | 6.9 | τcell(X̃_K) = Δ_K/(1−t)², "rt3 §1.5 p. 214: related to the Alexander polynomial" (1297–1298) | rt3 lines 298–301 says "related"; rt1 lines 80–83 (Example 1.9, p. 863) states `τ_top(X, a) = Alex(K)/(1−t)²` exactly, citing Milnor and its Lemma 2.6 | agrees; the exact locator is rt1's (R03) |
| 18 | 3.2 | genericity must concern the function/metric path or a generic connection, not a fixed homotopy with generic metrics (567–571) | erratum lines 23–27 | agrees |
| 19 | 5.4 | ζ in Λ⁺⊗ℚ, (1.1), product formula (1.2), rt2 Definition 1.3 and (2) p. 371 (940–964) | rt3 lines 162–212 (p. 212); rt2 lines 105–131 (p. 371–372) | agrees; the exponent of rt2 (2) is under Source issues |
| 20 | 7.1–7.2 | Euler chains, Definition B.1 p. 241, B.3–B.4 pp. 241–242, Remark 1.6 p. 214, (1.5) p. 215 | rt3 lines 1951–1992, 2009–2035, 2050–2064, 310–316, 345–350 | agrees |

No locator is flagged as unverified in the README.

**Adversarial pass.** One row per statement; the values computed on each side.

| Statement | Instances | Values | Result | Change |
|---|---|---|---|---|
| `lefschetz_fixed_point_formula`, dim 0 | M a finite set, f any map | each fixed point: `mfderiv = 0` on E = 0, det(1 − 0) = 1, sign +1; LHS = #Fix f; RHS: range (0+1) = {0}, H₀ = ℚ^{|M|}, f_* permutes the basis, trace = #Fix f | equal | none |
| same, S¹ reflection z ↦ z̄ | fixed ±1, df = −1 | det(1 − (−1)) = 2 at both, LHS 2; traces 1 on H₀, −1 on H₁; RHS 1 − (−1) = 2 | equal | none |
| same, z ↦ z² | fixed point 1, df = 2 | det(1 − 2) = −1, LHS −1; RHS 1 − 2 = −1 | equal | none |
| same, rotation of S¹ by θ ≠ 0 | no fixed points | finsum over ∅ = 0; RHS 1 − 1 = 0 | equal | none |
| same, RP² with the rotation by θ ∉ {0, π} | fixed [N] only ([x] fixed iff Rx = ±x; Rx = −x forces z = 0 and θ = π) | det(1 − R_θ) on T_N = 2 − 2cos θ > 0, LHS 1; H_*(RP²;ℚ) = ℚ in degree 0, RHS 1 | equal, nonorientable | none |
| same, empty M | — | both sides 0 | equal | none |
| same, finsum junk | infinite fixed set | nondegenerate fixed points are isolated (x ↦ x − f(x) has invertible derivative in a chart) and M is compact, so the set is finite under `hnd`; finsum is the finite sum | no junk reaches the statement | none |
| same, `LinearMap.trace` junk | infinite-dimensional H_i | compact manifolds have finitely generated homology; `Module.finrank ℝ E + 1` degrees cover 0..dim M and H_i = 0 above | no junk | none |
| `fixedPointSign` wrong model: `sgn` replaced by `if 0 ≤ det then 1 else −1` | degenerate point | differs only at det = 0, excluded by `hnd` | the two models agree on the theorem's domain | none |
| `fixedPointDet` wrong model: det of `mfderiv` alone (no `1 −`) | identity map on S¹ at any point | det(df) = 1 vs det(1 − df) = 0: the identity has only degenerate fixed points, as it must (L(id) = χ(S¹) = 0 with a circle of fixed points) | the `1 −` is forced | none |
| ε(γ^k) = (−1)^{i₊}(−1)^{(k+1)i₋} (§5.4) | λ = 2; λ = −2; λ ∈ (−1,0); rotation by 90° | det(1−2^k) < 0 ∀k: (−1)^1 ✓; det(1−(−2)^k): k odd +, k even −: (−1)^{k+1} ✓; λ^k ∈ (−1,1): + ✓; rotation: det(1 − A^4) = 0, degenerate, excluded by admissibility | holds | none |
| product-formula exponent −ε(γ)(−1)^{i₋} = (−1)^{dim X − i₀} (§5.4) | i₋ = 1, i₊ = 0 on a surface | Σ(−1)^{k+1}x^k/k = log(1+x) → factor (1+x)^{+1}; README exponent −(+1)(−1) = +1 ✓; i₊+i₋+i₀+2(complex pairs) = dim X − 1 so −(−1)^{i₊+i₋} = (−1)^{dim X − i₀} ✓; rt2's −(−1)^{i₀} = −1 ✗ | README right; rt2 (2) right only in odd dimension | Source issues |
| Klein bottle ζ = (1+t)/(1−t) (§5.4, §6.7) | f(θ) = −θ + ε sin θ: fixed 0 (f′ = −1+ε) and π (f′ = −1−ε) | orbit at 0: ε ≡ +1 → (1−t)^{−1}; orbit at π: (−1)^{k+1} → (1+t); Lefschetz side: det(1−t|H₀)^{−1}·det(1+t|H₁)^{+1} = (1+t)/(1−t) | equal | none |
| T³ = mapping torus of id_{T²} (§6.7 Check) | H_* = ℚ, ℚ², ℚ | (1−t)^{−1}(1−t)^{2}(1−t)^{−1} = 1; L(id^k) = χ(T²) = 0 | equal | none |
| Theorem B exact circle (§6.1, §6.5, §6.6) | one max, one min, cover ℝ, N(t) > 0 | d p̃ = ±(1 − t) q̃ (two trajectories to adjacent lifts, opposite signs), τ = (1−t)^{−1}, ζ = 1; critical-free: τ = 1, ζ = exp Σ t^k/k = (1−t)^{−1}; τcell of `Nov →(1−t) Nov` = (1−t)^{−1} | I = (1−t)^{−1} on both sides, rt3 Example 1.7 | none |
| two-term torsion a⁻¹ vs Milnor (Conventions, §4.1) | C₁ →a C₀, bases e₁, e₀ | (A.1): e₁^{−1} ⊗ e₀ ↦ (a e₀)^{−1} ⊗ e₀ = a⁻¹; Prop A.2: a^{(−1)^1} = a⁻¹; Milnor: [a e₁/e₀] = a | README = rt3, inverse to Milnor, as stated | none |
| basis change τ(A⁻¹dA) = τ(d)·Π det(A_i)^{(−1)^i} (§4.2) | two-term, A₁ = λ, A₀ = 1 | new differential aλ, torsion (aλ)^{−1} = a^{−1}λ^{−1} = a^{−1}·λ^{(−1)^1} | equal; the opposite exponent gives a^{−1}λ, refuted | none |
| §4.2 Check 3 "swapped basis order in degree 0" | the two-term complex F →a F | C₀ is one-dimensional: no swap exists; on `F² →id F²` with the degree-0 basis swapped, det(A₀) = −1 and τ changes by det(A₀)^{(−1)^0} = −1 | Check vacuous as written | R02 |
| §4.1 Check 4 three-term complex | F →(1,0)ᵀ F² →(0,1) F | D₂ = C₂ → E₁ = first coordinate: det 1; D₁ = second coordinate → E₀: det 1; 1^{+1}·1^{−1} = 1 | equal | none |
| direct sum (§4.1 Check 3) | F →a F ⊕ F →b F | (ab)^{−1} = a^{−1}b^{−1} | equal | none |
| long exact sequence degrees 3i+2, 3i+1, 3i (§4.1) | i, i−1 | H_i(A) → H_i(B) → H_i(D) → H_{i−1}(A): 3i+2 → 3i+1 → 3i → 3i−1 | consecutive descending | none |
| partial acyclicity H = ℤ/2, N = 0, d = 1−g (§4.6, §4.3) | Q(ℤ[ℤ/2]) = ℚ × ℚ via g ↦ ±1 | 1−g ↦ (0, 2), 1+g ↦ (2, 0); torsion components 0 (nonacyclic) and 2^{−1} | equal | none |
| two cellular circles (§4.6 Check 3) | d e₁ = v₂ − v₁, d e₂ = t v₁ − v₂ | matrix [[−1, t],[1, −1]], det 1−t, torsion (1−t)^{(−1)^1} | equal | none |
| lift change (§4.6 Check 4, §7.2 Check 2) | p̃ ↦ t p̃ | conjugated differential t(1−t), torsion t^{−1}(1−t)^{−1} = τ·det(A₁)^{(−1)^1} | equal | none |
| Norm for ℤ ⊃ 2ℤ (§4.5 Check 1) | basis {1, t} over ℤ((t²)) | (1−t)·1 = 1 − t, (1−t)·t = t − t²: matrix [[1, −t²],[−1, 1]], det 1 − t², trace 2 = 2·(even part of 1−t) | equal | none |
| log Norm(1+ct) (§4.5 Check 2, §6.3 Check 3) | k = 2 | (1+ct)(1−ct) = 1 − c²t², log = −c²t² − c⁴t⁴/2 − …; 2·even part of log(1+ct) = 2(−c²t²/2 − c⁴t⁴/4 − …) | equal; e^{2h}-coefficient −c² vanishes iff c = 0 | none |
| μ_k, ν_k for H = ℤ ⊕ ℤ/2, h = (2,1) (§4.5 Check 4, §6.3 Check 1) | λ(n,e) = n, d = 2 | ν_k(h) = 2 mod 2k = d, kills (0,1); μ_k(h) = 2^{−1}·2 = 1 (k odd); nh ∈ ker ν_k ⟺ 2k | 2n ⟺ k | n | as claimed | none |
| log Norm_{ν_k}(z) = dk Σ_{k|n}(log z)_n e^{nh} (§6.3) | Tr = dk·restriction to K = ker ν_k | nh ∈ K iff k | n; Tr log z = dk Σ_{k|n} (log z)_n e^{nh}; rt3 line 1349 has exp(dk Σ c_{kn} h^{kn}) | equal | none |
| y = x^{(−1)^{i+1}} ⟺ τ₊ζ₊ = τ₋ζ₋ (§6.3 Check 4) | τ₊ = x^{(−1)^i}τ₋ (Lemma 3.7(b)) | τ₊ζ₊ = τ₋ζ₋ ⟺ ζ₊/ζ₋ = x^{−(−1)^i}; first order b₁ = (−1)^{i+1}a₁ = Lemma 3.8(b) | consistent | none |
| Cerf normal form (§6.2 Check 1–2) | sign +, t < t₀ | zeros x₁ = ±√(t₀−t); Hessian entry 2x₁: x₁ < 0 index i, x₁ > 0 index i−1; −V₁ = −(x₁² + t − t₀) > 0 between the zeros, so −V_t flows from the index-i to the index-(i−1) point | equal to rt3 (3.13) and lines 1394–1398 | none |
| degenerate return g(x) = x + x³ (§5.2 Check 3) | perturbations ∓εx | x + x³ − εx: fixed 0 (1−g′ = ε > 0, +1), ±√ε (1−g′ = −2ε, −1 each): total −1; x + x³ + εx: only 0, 1−g′ = −ε, −1 | index −1 both ways | none |
| attracting/repelling orbits (§5.2 Check 1–2) | λ ∈ (0,1); λ > 1; λ < −1 | 1−λ^k > 0; < 0; sign (−1)^{k+1} | as claimed | none |
| return map ∂_θ − r∂_r (§5.1 Check 1) | section θ = 0, period 2π | r ↦ e^{−2π} r, derivative e^{−2π} ∈ (0,1) | equal | none |
| Klein-bottle cover (§2.2 Checks) | A(s,y) = (s+1,−y), B(s,y) = (s,y+1) on ℝ × ℝ/2ℤ | AB = (s+1, −y−1), BA = (s+1, −y+1), equal mod 2; A^nB^e = id ⟹ n = 0, e even; π₁ = ⟨a,b | aba⁻¹ = b⁻¹⟩, [a,b] = b^{−2}, π₁/⟨b²⟩ = ℤ ⊕ ℤ/2; H₁(C) = ℤ ↦ 2[b] = 0 | as claimed; exactness H₁(C) → H₁(X) → H → 0 holds with zero first arrow | none |
| periods on the Klein bottle | α = ds | P(A) = 1, P(B) = 0, N(n,e) = −n; t = A^{−1} has N = 1 > 0 | as claimed | none |
| irrational torus (§1.1, §1.4, §2.2 Checks) | H = ℤ², ℤ³, N = a + √2b | ker = 0 resp. ⟨(0,0,1)⟩ since √2 ∉ ℚ; least N-value attained once (domain); tied pair e^{(n,0,0)} + e^{(n,0,n)} in Nov; the whole kernel not in Nov (infinitely many h with N = 0 < 1) | as claimed | none |
| U_C not an ideal (§1.2 Check 1) | H = ℤ, N = id | t² ∈ U_2 (N = 2 ≮ 2), t^{−3}t² = t^{−1} ∉ U_2 | as claimed | none |
| pushforward/restriction (§1.2 Checks 2–4) | φ(a,b) = a; 2ℤ ⊂ ℤ; ℤ → ℤ/2 | fibre of h′ finite since N = h′ < h′+1; pullback of 1_{a≥0} has infinitely many terms with N = 0 < 1; no c > 0 with 0 = c·id | as claimed | none |
| geometric series and N(k) = −k (§1.3 Check 1) | (1−t)^{−1} | Σ_{k≥0} t^k ∉ Nov when N = −k; (1−t)(−t^{−1}Σ t^{−k}) = (1 − t^{−1})Σ_{k≥0} t^{−k} = 1 | as claimed | none |
| partitions (§1.3 Check 3) | coefficient of t⁴ in Π(1−t^n)^{−1} | p(4) = 5 | equal | none |
| large gradient on S¹ (§3.4 Check 3) | f = cos θ, α = dθ | −∇(cos θ + C^{−1}θ) = (sin θ − C^{−1})∂_θ; zeros iff C > 1 (two), none for C < 1 | as claimed | none |
| top-degree vanishing (§3.5) | X̃ orientable connected noncompact (Klein bottle cover C = ℝ × S¹) | a completed top cycle is locally finite, hence a multiple of [X̃] ∈ H_n^{lf}; [X̃] has lifts in both directions and is not finite above a threshold; nonorientable X̃: H_n^{lf} = 0 | H_n^{Nov} = 0 for [α] ≠ 0 | none |
| Novikov homology of the circle cell complex (§3.3 Check 2) | ℤ[t^{±}] →(1−t) ℤ[t^{±}] | H₀ = ℤ[t^{±}]/(1−t) = ℤ with trivial action, H₁ = 0 (1−t a nonzerodivisor) | as claimed | none |
| Poincaré–Hopf signs (§7.1 Check 3–4) | T² height function; RP² three critical points; maximum of f | +1−1−1+1 = 0 = χ(T²); +1−1+1 = 1 = χ(RP²); d(∇f)_p negative definite, sgn det = (−1)^n; with −∇f: (−1)^n(−1)^{ind} = (−1)^{n−ind} | as claimed | none |
| §7.2 Check 1 "ξ₀ + 1 multiplies by t" | S¹ = ℝ/ℤ, Conventions and §2.2 Check 1 | 1 ∈ H₁(S¹;ℤ) is the positive angular generator, N(1) = −1 (§2.2 Check), so e^{image 1} = t^{−1}, not t | Check contradicts the convention | R02 |
| §5.3 Check 3 "admissibility depends on the metric within a class" | dx with the flat metric vs dx + √2 dy | the two flows belong to different classes; the claim is true (a generic metric in the class of dx gives an admissible pair, rt3 line 125–128) but not shown by the instance | wording | R02 |
| degenerate deck groups | H = 0; N = 0; R = 0 | Nov(R,0,0) = R; Nov(R,H,0) = R[H]; Nov(0,H,N) = 0 and "onto iff N = 0" needs nontrivial R, which §1.1 states | definitions behave | none |
| ζ(X̂) = Norm ζ(X) for the double cover of S¹ (§5.4 Check 4) | μ: ℤ → ℤ/2 | lifted orbit class t̂ = t², ζ(X̂) = (1−t²)^{−1} = Norm((1−t)^{−1}) by §4.5 Check 1 | equal | none |
| unknot and trefoil (§6.9 Checks) | S¹ × S²; Δ = t − 1 + t^{−1} | two acyclic pieces in degrees (1,0), (3,2), each (1−t)^{−1}: total (1−t)^{−2} = Δ/(1−t)² with Δ = 1; (1−t^{−1})² = t^{−2}(1−t)² | as claimed | none |

**Duplication by object.** Mathlib's `HahnSeries`/`LaurentSeries` (well-founded support on an ordered group) does not give the finite-below-every-threshold condition for a non-injective N (the README says so, §1.4 and the Mathlib contract); `AddMonoidAlgebra`, `Localization (nonZeroDivisors _)`, `ChainComplex (ModuleCat R) ℤ`, `IsAddQuotientCoveringMap`, `mfderiv`, `LinearMap.det`, `LinearMap.trace` are consumed, not restated. Kim's `lean4-novikov` is acknowledged under Scope with its licence note. No pinned Mathlib or Tau Ceti declaration builds a Novikov completion, based torsion, a dynamical zeta function, Euler structures or a Lefschetz fixed-point formula (grep of both pins for `Lefschetz`, `Novikov`, `fixedPointIndex`, `PoincareHopf`: none).

**Timeless wording.** Grep of the README for process words (optional, deferred, for later, removed, currently, so far, to be checked, checkpoint, handoff, packet, round labels, pull-request numbers): 0 hits. No `lemma`, no `set_option` in the Lean file.

## Not verifiable

- V. Turaev, *Introduction to Combinatorial Torsions* (Birkhäuser 2001) and *Euler structures, nonsingular vector fields, and Reidemeister-type torsions* (Math. USSR-Izv. 34, 1990): book and paywalled journal, cited without locators for based torsion and the lift refinement; checked instead through rt3 Appendices A–B, which restate what §§4.6 and 7.1–7.2 use.
- A. Pajitnov, *Circle-valued Morse Theory* (de Gruyter 2006): book, not fetched; cited for the completed cellular comparison of §3.3 without a locator, which rt3 (1.4) and its references cover.

## Source issues

- **Error** in hutchings-lee-rt2 at equation (2), printed page 371: the source says the product formula's exponent is −(−1)^{i₀(γ)} for a closed manifold of any dimension; it should be −(−1)^{i₊(γ)+i₋(γ)}, which equals −(−1)^{i₀} only when dim X is odd (a repelling fixed point with derivative < −1 of a surface return map contributes (1+t)^{+1}); affects a stated result (the remark; Theorem 1.7 does not use it).
- **Misprint** in hutchings-rt3 at §1.2, printed page 211: the source says the inclusion ℤG → Nov(G;N) "is the identity if and only if N ≡ 0"; it should be "is an isomorphism (onto) if and only if N ≡ 0"; affects nothing.
