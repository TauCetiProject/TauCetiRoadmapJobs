# Review of TeichmullerGeometry (pull request #1169 at 981f892)

**Verdict:** needs changes

Gate at this head (worker's run, data): every check passed, `depcheck=0`, `build=0`. My own runs: `lake env lean TauCetiRoadmap/TeichmullerGeometry/Suggested.lean` elaborates with exactly four `declaration uses sorry` warnings (lines 63, 77, 92, 102) and nothing else; the dependency check with `--movable` prints `depcheck: 204 roadmaps, 1437 edges, 0 problem(s)`, no UPWARD or CYCLE line. The README now has 45 `*Needs:*` lines, so the check sees its supplier edges (the previous head had none).

## Status of the previous review's findings (6cf02f8)

- R01 (Fuchsian L4a/L7/L8/L9 cycle): **repaired.** The only Fuchsian citations are Layer 0 items 2–3, Layer 1 items 1–3, Layer 4 item 5 and Layer 5 items 3 and 6 (README lines 26, 101), all present on main (`FuchsianOrbifolds/README.md` lines 198–202, 217–224, 303–305, 325–340). The minimum area `π/21` is owned in §10.1 with the case analysis, fixed-signature finiteness in §9.2 via Borel, and the consumer is named only generically under Downstream consumers (line 820).
- R02 (GeometricTopology "Layer 3g"): **repaired.** `roadmaps grep 'Layer ?3g'` matches nothing; the smoothing comparison is PlanarTopology Layer 8, `π₀ Diff⁺(S²) = 0` is owned in §5.3, isotopy extension in §0.3.
- R03 (mapping class groups re-planned): **repaired** (one residue, R07 below): §3.1 defines `Mod±(Σ)` as `ZerothHomotopy` of the pinned `TauCeti.Diff` and defers the topological groups to SurfaceTopology Layer 9; §0.2 cites `joined_one_final` for the one half.
- R04 (Baer–Epstein not stated): **repaired.** `baer_epstein_smooth` (Suggested.lean line 77) is the statement I elaborated in r1; the docstring now names the group structure on `π₀` and `Out` as the missing carriers.
- R05 (house shape): **repaired.** Summary, Scope and ownership, Conventions, per-supplier contracts, eleven layers with 44 `**Checks.**` blocks, Examples and Dependencies per layer, Downstream consumers, References.
- R06 (Mathlib pull-request number, phantom names, process text): **repaired.** No `mathlib4#`, `RiemannDynamics`, `ModularForms10B`, `D0.1`-style labels or `T6`-style labels remain (grep over the README: 0 hits).
- R07 (Isom(ℍ) ownership boundary): **repaired** at line 20.
- R08 (unused `hna`): **repaired.** The hypothesis is gone from `exists_diffeomorph_mapOfEq_eq` (line 63–69).
- R09 (locators): **repaired in the README** (Douady–Earle Theorem 1, Smale Theorems A/B/4/6, Kerckhoff Theorem 1 and §§2–3, Wolpert Lemma 3.1, Borel Lemma 8.1/Theorem 8.2/7.3(1), Takeuchi §1/Theorem 1, Imayoshi–Taniguchi and Hubbard chapters); the `sources.toml` it asked for is still absent (R08 below).

## R01 (P1) — the diffeomorphism `S_g ≃ Σ` of §0.1 rests on Whitehead's smooth triangulation theorem, which PlanarTopology declares out of scope; the step is unowned

Location: `TauCetiRoadmap/TeichmullerGeometry/README.md` line 119 ("choose a homeomorphism `S_g ≃ Σ` from the classification and replace it by an orientation-preserving diffeomorphism `S_g ≃ Σ` isotopic to it by `exists_isotopic_diffeomorph` applied to the pulled-back PL structure"), API bullet line 124, and the consumers at lines 302 (§3.1) and 471 (§5.4) that use "the compatible triangulation of Layer 0.1" on `Σ`.

Claim: for a prescribed closed oriented smooth surface `Σ` of genus `g`, PlanarTopology Layer 8's `exists_isotopic_diffeomorph` turns a homeomorphism `S_g ≃ Σ` into a diffeomorphism.

Witness: at #271, `exists_isotopic_diffeomorph (s : PLStructure M) (σ) (hσ : σ is smooth and s.IsCompatible σ) (f : M ≃ₜ M)` (`PlanarTopology/README.md` lines 952–954) is stated for a self-homeomorphism of one surface and needs the given smooth structure `σ` to be compatible with the triangulation `s`. Applied to the pulled-back triangulation on `Σ`, the hypothesis is that `Σ`'s prescribed smooth structure is compatible with a transported triangulation, which is exactly Whitehead's theorem; PlanarTopology's Out of scope list (line 1041) reads: "Whitehead's smooth triangulation theorem, that every smooth structure on a compact surface is compatible with some triangulation. Layer 8 goes from PL to smooth and compares smooth structures compatible with a given PL structure." No other supplier in the contracts provides it (GeometricTopology Layer 11 is on main's far horizon, line 930). The sentence "no unrestricted converse of Whitehead's theorem is attributed to that owner" (line 119) does not remove the dependence: the compatibility of `Σ`'s own smooth structure is used before the triangulation is transported. Instance refuting the route: `Σ` the smooth surface of ComplexCurveModuli D0 item 1's normal form, with no triangulation given; nothing supplied makes a triangulation of it compatible.

Repair (tested on that instance): obtain the orientation-preserving diffeomorphism from ComplexCurveModuli D0 item 1, which on main (`ComplexCurveModuli/README.md` line 27) proves the oriented disc/band/cap reduction of every compact connected oriented smooth surface to the standard normal form and "constructs the actual orientation-preserving diffeomorphisms of the resulting models", with the genus read off D0 item 1's count `χ = 2 − 2g − b`. Either define `S_g` as that smooth normal form, or keep `S_g := PLStructure.smoothing` of the standard triangulation and apply D0 item 1 once to `S_g` itself. Then transport the triangulation of `S_g` along the diffeomorphism; compatibility transports with it (that is the sentence already at line 119), and §§3.1, 5.4 apply `exists_isotopic_diffeomorph` to self-homeomorphisms of `Σ` with that compatible triangulation, which is the form the supplier states. Rewrite the `*Needs:*` line of §0.1 to cite D0 item 1 for the diffeomorphism, not only for marks and cut systems.

## R02 (P2) — §5.5 attributes the bigon criterion, curve and arc isotopy and the alignment of admissible systems to PlanarTopology Layer 8, which states none of them

Location: `README.md` line 483 ("Compare the smooth curve and arc statements with the PL tools of PlanarTopology Layer 8: minimal intersection if and only if there is no embedded bigon, isotopy of homotopic essential simple closed curves and of essential proper arcs relative to endpoints, and simultaneous alignment of finite admissible systems … (Farb–Margalit, Chapter 1 and §2.3)"), `*Needs:*` line 491; consumed by §7.1 line 539 ("from Layer 5.5's bigon and homotopy-implies-isotopy adapters").

Claim: the three PL statements are PlanarTopology Layer 8's.

Witness: at #271, `grep -c -i bigon` is 0 in both `PlanarTopology/README.md` and `SurfaceTopology/README.md`; "homotopic simple closed curves are isotopic" occurs only inside the route paragraph of Epstein's theorem (PlanarTopology line 969) and the Alexander method likewise (same line), not among Layer 8's representative statements (lines 880–967: `exists_isotopic_plHomeomorph`, `isotopic_of_homotopic`, `isotopicRel_of_homotopicRel`, `plIsotopic_of_isotopic`, the smoothing block, `exists_isotopic_diffeomorph`, `smoothIsotopic_of_isotopic`) nor its listed intermediate results. SurfaceTopology Layer 9 has Dehn twists and Lickorish's intersection reduction (its lines 1008–1040) but no bigon criterion and no alignment theorem. A supplier cited for a statement it does not make is supplier drift; §7.1's geodesic-representative results then rest on nothing owned.

Repair: own the three statements in §5.5 as this roadmap's targets with locators: the bigon criterion (Farb–Margalit, Proposition 1.7, uncertified), isotopy of homotopic simple closed curves and of arcs rel endpoints (Epstein 1966, Theorems 2.1 and 3.1, `epstein1966` lines 109–111 and 214–217, read by me: homotopic PL embeddings of `S¹` with two-sided image not bounding a disc are ambient isotopic by a compactly supported isotopy; homotopic rel endpoints proper arcs are ambient isotopic rel `∂M`), and the alignment of admissible systems (the Alexander method, Farb–Margalit Proposition 2.8, uncertified), citing PlanarTopology Layer 8 only for the homeomorphism-level `isotopic_of_homotopic` and the PL-to-smooth comparison it does state. Keep the `*Needs:*` line to those items.

## R03 (P2) — Smale's theorem on the sphere is statable at the pins and absent from `Suggested.lean`

Location: `Suggested.lean` lines 23–24 and 86–93 (the disc theorem is stated; the docstring's "Stated here" list has no sphere theorem and the "Not statable" list does not mention it); `README.md` line 458 ("Prove Smale's theorem on the sphere, that `Diff⁺(S²)` deformation retracts onto `SO(3)`").

Claim (of the file's shape): the headline theorems statable at the pins are the four stated.

Witness: the pinned Tau Ceti has `TauCeti.continuousOrthogonalToDiffSphere (n) (m) : C(O(n+1), Diff (𝓡 n) Sⁿ m)` (`TauCeti/Geometry/Diffeomorphism/Sphere.lean` line 314) and states the three-sphere conjecture in exactly the form "this inclusion is a homotopy equivalence" (`Smale.lean` line 46). I elaborated the two-dimensional instance in a scratch copy with `lake env lean`; it produced only the `sorry` warning:

```lean
theorem smale_sphere_two :
    ∃ e : ContinuousMap.HomotopyEquiv (Matrix.orthogonalGroup (Fin 3) ℝ)
      (TauCeti.Diff (𝓡 2) (Metric.sphere (0 : EuclideanSpace ℝ (Fin 3)) 1) ∞),
      e.toFun = TauCeti.continuousOrthogonalToDiffSphere 2 ∞ := by
  sorry
```

(import `TauCeti.Geometry.Diffeomorphism.Sphere`, present at the pin). Smale 1959 Theorem A (`smale1959` lines 8–10) is the orientation-preserving form; the full-group form above follows from it and the antipodal map, and is what the README's Check at line 464 (`π₀ Diff(S²) = ℤ/2`) already uses.

Repair: add the statement above to `Suggested.lean` under the Layer 5 section comment with the import, list it in the docstring's "Stated here", and in §5.3 state the full-group corollary in one clause (`O(3) → Diff(S²)` is a homotopy equivalence) with the Lean name.

## R04 (P3) — the degree-`k` cover Check of §4.4 has the wrong genus

Location: `README.md` line 397 ("Naturality on a degree-`k` unbranched cover `Σ' → Σ` of the genus-two surface: `e(ρ ∘ p_*) = k·(−2) = 2 − 2g'` with `g' = 1 + 2k`").

Witness: `2 − 2g' = −2k` gives `g' = 1 + k` (`k = 2`: `χ = −4`, `g' = 3`; the README's formula gives 5). §10.2 line 747 has the correct `1 + k(g − 1)`.

Repair: write `g' = 1 + k`.

## R05 (P3) — Wolpert 1979 carries another paper's DOI

Location: `README.md` line 839 ("DOI 10.2307/1971112").

Witness: the sources service resolved `10.2307/1971112` through Crossref to Jacquet, Piatetski-Shapiro and Shalika, "Automorphic forms on GL(3) II" (recorded in my `needs-references.toml`); resolving the title "The length spectra as moduli for compact Riemann surfaces" gives the JSTOR item 1971114.

Repair: `DOI 10.2307/1971114`.

## R06 (P3) — citations of supplier objects that are not where they are cited, and two naming slips

Location and witnesses:

- line 162 (§0.3 Check): "its final diffeomorphism is the point-push of SurfaceTopology Layer 9". SurfaceTopology at #271 lists "point pushing" under Out of scope (its line 1223). Say "the point-pushing diffeomorphism along the arc" without a supplier.
- line 465 (§5.3 Check): "`Diff(D⁴, ∂)` is not contractible by Watanabe's theorem recorded at the pin". The pin records `TauCeti.WatanabeTheorem` as a `Prop` (`Disc.lean` line 77) and proves non-contractibility only from it as a hypothesis (`WatanabeTheorem.not_contractibleSpace_discDiff_four`, line 87). Write "by Watanabe's theorem, whose statement the pin records".
- lines 20, 61, 97, 348: `UpperHalfSpace n`, `UpperHalfSpace 2`. The pinned carrier is `TauCeti.UpperHalfSpace E` over a normed space `E` (`Hyperbolic/UpperHalfSpace.lean`; the plane is `UpperHalfSpace ℝ`, as `ModelGeometry/Basic.lean` line 89 uses it), and `isPretransitive_isom` is stated for `UpperHalfSpace E` (line 483). Name the carrier as the pin does.
- line 689 (§9.1): "every non-identity embedding of the field generated by the squares of traces has bounded image of the traces". Takeuchi's condition (II₁) (`takeuchi1975` lines 56–58) is on isomorphisms `φ` of the trace field `k₁ = ℚ(tr γ)` into `ℂ` whose restriction to `k₂ = ℚ((tr γ)²)` is not the identity; the traces lie in `k₁`, not `k₂`. State it that way.

## R07 (P3) — two statements re-derived that the pins or a supplier already state

- §4.1 line 348: "the Möbius maps and the conjugation preserve the metric". Mathlib at the pin has `instance : IsIsometricSMul SL(2, ℝ) ℍ` (`Analysis/Complex/UpperHalfPlane/Metric.lean` line 327); only the conjugation half is new. Cite it in the From Mathlib contract and in the route.
- §3.1 line 302: the comparison `Mod±(Σ) ≃ MappingClassGroupFull Σ` is proved "surjective by `exists_isotopic_diffeomorph` … injective by `smoothIsotopic_of_isotopic`", which is the proof of SurfaceTopology Layer 9's `MappingClassGroupSmooth.toTop_bijective` (#271, its lines 997–1000, already listed in this README's contract at line 65). The own target is `π₀ Diff(Σ) ≃ MappingClassGroupSmooth σ` through §0.2's path/isotopy comparison; compose with `toTop_bijective`.

## R08 (P3) — no `sources.toml`

Location: the folder has `README.md`, `Suggested.lean`, `metadata.toml` only; eleven works are cited (lines 828–839). Carried over from r1's R09. Record each with its DOI and locators; the paywalled ones as `uncertified` (Ahlfors–Bers, Douady–Earle, Epstein, Farb–Margalit, Hubbard, Imayoshi–Taniguchi, Kerckhoff, Wolpert) and the open ones with the URLs I fetched (Smale and Greenberg at `ams.org`, Takeuchi at J-STAGE, Borel at Numdam; Epstein is also open at the Acta Mathematica archive at Tsinghua).

## Verified sound

Cross-roadmap citations resolved on main (`fa41b374`) or at the open heads the brief lists (all 46 resolved except the two in R01/R02):

- ComplexCurveModuli: D0 items 1 (line 27), 2 (48), 3 (49), 4 (50: positive Laplacian `Δ = −div grad`, equation `Δ₀u + K₀ + e^(2u) = 0`, matching Conventions line 44), 5 (51: properness of the actual Diff action, finite automorphism groups; "false for the unmarked sphere's full Möbius group", consistent with the `g ≥ 2` scoping); D3 items 3 (82–86: `dim Def¹ = 3g − 3 + n + dim A_C`, obstruction vanishing), 4 (87–97: Kodaira–Spencer, kernel/cokernel comparison), 5 (98–102: holomorphic marked slices, the **Full Sobolev target chart** `J^(k,p)(Σ)` and the **Arbitrary smooth complement and offset IFT** subclause, exactly as §2.1 describes), 6 (103: `J = [[i,0],[α,j]]`, both vanishing conditions, `α = 0` sufficiency); D4 items 1 (107) and 4 (114: openness, uniqueness with the specified central isomorphism); D6 item 2 (150: collar coordinates, collar-width formula, `2 arsinh 1`). `grep Teichm` in that README: no supplier use.
- FuchsianOrbifolds: Layer 0 items 2–3 (198–204), Layer 1 items 1–3 (217–225), Layer 4 item 5 (303–305, signature, Euler characteristic and area formula with the `2π` factors), Layer 5 items 3 and 6 (325–331, 338–340).
- ComplexKahlerGeometry K1 (line 180, smooth Newlander–Nirenberg), K4 (444), K5 (568; K5b is inside it).
- DifferentialGeometry Layers 0 (268), 2 (341), 3.5 `exists_timeDependentFlow` (400), 5 (503), 12 (910, with `Δ = −div grad` at 12.2 ff.).
- GeometricTopology Layer 1 (177; disc theorem at 227–229, Palais/Hirsch) and Layer 3 (357–408: `Diff(M)` group, `C^∞` topology, smooth-families map, the inclusion `O(n+1) → Diff(Sⁿ)`).
- AlgebraicTopology Stage 1 items 4–5 (lines 301–307 of the Stage: two-open-set pushouts and the based theorem; wedge of circles free group), Stage 6 (946; intersection pairing 1561, cap products 1057), Stage 7 (1573).
- CharacteristicClasses C2 items 2 (644–656: Euler naturality, orientation reversal, section obstruction with the sign local system) and 3 (657–666: `e(TM)[M] = χ(M)`).
- RiemannianGeometry R4 item 7 (717–760: half-space model `(|dx|² + dy²)/y²`, `isPretransitive_isom`, "complete the missing surjectivity/isometry-group descriptions", `O⁺(n,1)`, Killing–Hopf, quotient atlas and descended metric for free properly discontinuous isometries).
- PDE Lane B items 8–10 (269–280) and the `L¹` warning the §7.4 Check echoes; ModularForms 10B (iii)–(v) (1086–1098, `analyticGenus_eq_topologicalGenus`).
- Completed/UniversalCovers exists on main (`Completed/UniversalCovers`).
- SurfaceTopology at #271: Layer 8 `StandardSurface.orientable g b` (line 881), `Surface.genus` (912), Layer 9 `MappingClassGroupFull` (982), `MappingClassGroupPlus` (986), `MappingClassGroupRel` (984), `MappingClassGroupSmooth.toTop` and its bijectivity (997–1000), `mcg_sphere_plus/full` (1005–1006), `mcg_torus_plus/full` (1045–1047), Layer 5 Riemann–Hurwitz (661); "Teichmüller theory" in its Out of scope (1225). PlanarTopology at #271: `Surface.eulerChar` (742), Layer 8 `PLStructure` (891), `IsCompatible` (936, asked of a subdivision; the one-triangle disc remark at 929 is what §0.1's second Check describes), `smoothing` (939), `smoothing_isManifold` (940), `smoothing_unique` (943), `isotopic_of_homotopic` (905), `isotopicRel_of_homotopicRel` (907), `plIsotopic_of_isotopic` (910), `exists_isotopic_diffeomorph` (952), `exists_isotopicRel_diffeomorph` (955), `smoothIsotopic_of_isotopic` (961).
- QuaternionArithmetic at #1722 §8.1 (line 1100) is the `k = ℚ` case, as line 19 says; GroupActionsOnRiemannSurfaces at #1728 is a consumer (its lines 154–158, 202) and still cites this roadmap by the old labels T6, T7, T9, which no longer exist here (consumer-side drift; no action in this folder).
- Ownership by object (`roadmaps grep` over main and 437 open heads): Nielsen realization, Fenchel–Nielsen, measurable Riemann mapping, Beltrami equation, earthquake, Dehn–Nielsen–Baer, Teichmüller metric, Milnor–Wood, `Isom(ℍ) ≃ PGL₂(ℝ)` occur only in this roadmap; "arithmetic Fuchsian" also in QuaternionArithmetic (`ℚ` case, excluded here) and in FuchsianOrbifolds #1168 (a revision of an on-main roadmap, not a supplier); FuchsianOrbifoldsPartII #1696 owns Nielsen cores and quadratic cycles, nothing of Layers 9–11; Smale's sphere theorem is referenced in GeometricTopology #903 line 1341 as a reference only. Tau Ceti's `Smale.lean` states only the three-sphere conjecture.

Library declarations opened at the pins (file and line): Tau Ceti `DiscDiff` (`Diffeomorphism/Disc.lean` 63, `RelativeDiff (𝓡∂ n) (closedBall 0 1) ∞ (boundary)`), `RelativeDiff` (`FixingSubgroup/Basic.lean` 149), `WatanabeTheorem` (77), `orthogonalToDiffSphere` (`Sphere.lean` 282), `continuous_orthogonalToDiffSphere` (307), `continuousOrthogonalToDiffSphere` (314), `SmaleConjecture` (`Smale.lean` 46), `Diffeotopy` (`Diffeotopy/Basic.lean` 78), `final` (186), `joined_one_final` (`Path.lean` 74, needs `[CompactSpace M] [IsManifold J n M]`), `Diffeotopy.trans`/`symm`, `Diffeomorph.ofSmoothFamily`, `ContMDiff.continuous_diffeomorphWeakWhitney`, `continuous_eval_const`, `continuousMul`, `isTopologicalGroup` (needs `[CompactSpace M] [LocallyCompactSpace E] [T2Space M]`), `IsClosedConnectedManifold` (`Manifold/Basic.lean` 57: T2, second countable, `IsManifold (𝓡 n) 0`, compact, connected), `Orientable` (`Orientation.lean` 345), `UpperHalfSpace.isPretransitive_isom` (`Hyperbolic/UpperHalfSpace.lean` 483), `deckFundamentalGroupEquiv_symm_op` (`UniversalCover.lean` 117), `loopDeck` (52), `deckSubgroupQuotientProjEquivOfNormal` (`Classification/DeckGroup.lean` 95). Mathlib `UpperHalfPlane.σ` (`MoebiusAction.lean` 92: identity iff `0 < det`, else `conjCAE`), `glAction` (181), `IsIsometricSMul SL(2,ℝ) ℍ` (`Metric.lean` 327), `IsCoveringMap.existsUnique_continuousMap_lifts_of_range_le`, `NumberField.IsTotallyReal`, `QuaternionAlgebra`, `NumberField.discr`, `FundamentalGroup.mapOfEq`, `ZerothHomotopy`, `SmoothPartitionOfUnity`: all elaborated by `#check` in my scratch file.

Signature check: I put `#check @` of the four declarations' statements in a scratch file and elaborated it; each elaborated type agrees with its README statement (§5.2 line 446, §5.4 line 471, §5.3 line 458, §4.1 line 348), every binder is explicit in the declaration (the file has no `variable` block), and the two surface theorems carry `IsClosedConnectedSurface`, `IsManifold (𝓡 2) ∞` and `Orientable` as the README's "closed orientable surface" requires. One-tactic probes on a scratch copy (`first | simp | rfl | infer_instance | exact?`): `exists_diffeomorph_mapOfEq_eq` left unsolved after `simp`, the other three fail `exact?`; none is padding.

Sources read, with locators checked:
- Smale 1959 (`smale1959`, AMS open PDF): Theorem A lines 8–10 (orientation-preserving `C^∞` diffeomorphisms of `S²`, `C^r` topology, strong deformation retract `SO(3)`); Theorem B 15–17 (diffeomorphisms of the square equal to the identity near the boundary, contractible); Lemma 2 at 62; Theorem 4 at 124 (the explicit contraction, `C^∞` in the parameter, which is what carries the statement from Smale's `C^r` topology to the weak Whitney `C^∞` topology of the Lean statement); Theorem 6 at 188. §5.3 and the docstring match.
- Takeuchi 1975 (`takeuchi1975`, J-STAGE): §1 lines 10–30 (`k` totally real of degree `n`, `A` unramified at one real place and ramified at the others, `Γ(A, 𝒪)` the image of the norm-one units, discrete in `SL₂(ℝ)`), lines 38–41 (finite covolume; a change of the splitting conjugates by `GL₂(ℝ)`), Definition lines 42–46 (printed p. 601), Theorem 1 lines 50–58. §9.1 matches up to the (II₁) wording of R06.
- Borel 1981 (`borel1981`, Numdam): Lemma 8.1 lines 779–789 with the case `a = 1, b = 0` first (`2g + m + r − 1 ≤ 2μ(Γ) + 2` generators); Theorem 8.2 lines 811–815 (finitely many conjugacy classes of arithmetic subgroups of covolume `≤ c`, discreteness of the volume set), proof via 7.3(1), finiteness of fields of bounded discriminant and the discriminant growth (818–826), then 8.1 and 5.3 (827–832); Theorem 7.3 at 690. §9.2 matches.
- Greenberg 1963 (`greenberg1963`): Theorem 2 lines 86–91 (`Max(F)` empty or open everywhere dense with analytic complement) and the genus-`g` corollary 170–175. §10.4 matches and correctly presents the `PGL₂(ℝ)` form as owned.
- Epstein 1966 (`epstein1966`, Acta Mathematica archive): Theorem 6.4 lines 604–610 (homotopic to the identity implies PL isotopic to the identity, with the basepoint-fixed form b), used through PlanarTopology in §5.4; Theorems 2.1, 3.1, 3.3 (109–111, 214–217, 229–231) are the curve and arc isotopy statements R02 asks §5.5 to own.

Seeded sample (the fifteen headings): §0.5 (CCM D0.4, the Mathlib lifting lemma and R4.7 all resolved; centralizer argument computed below), §2.3 (D0.5), §2.4 (D3.3, D3.4, D0.2, K4, K5b; values below), §3.1 (ST Layer 9; R07), §3.3 (D0.5, D3.5), §4.5 (D0.4 convention, PDE Lane B, R4.7, C2.3), §5.3 (Smale, lines above), §5.5 (R02), §7.1 (D6.2 collar formula; Farb–Margalit uncertified), §7.2 (D6.2; sign witness computed below), §7.3 (Imayoshi–Taniguchi §3.2, Farb–Margalit §10.6, Hubbard Chapter 7: uncertified, cited by locator), §8.3 (FO Layer 1), §9.1 (Takeuchi), §9.2 (Borel), §11.1 (internal; Baire argument checked).

Adversarial table (statement, instances, values on each side, result, change):

| Statement | Instances | Values | Result | Change |
|---|---|---|---|---|
| §10.1 minimum area via `2h − 2 + Σ(1 − 1/mᵢ)` | `(0;2,3,7)`, `(0;2,3,8)`, `(0;2,2,2,3)`, `(1;2)` | `1/42 = 0.02381`, `1/24`, `1/6`, `1/2`; Euclidean `(2,3,6)`, `(2,4,4)`, `(3,3,3)`, `(2,2,2,2)` give `0`, `(0;2,2,2)` gives `−1/2` | min over positive values is `1/42`, area `π/21` | none |
| §10.1 index bounds | `g = 2, 3` | `4π(g−1)/(π/21) = 84(g−1)`: 84, 168; `D = 168(g−1)`: 168, 336 | consistent | none |
| §10.1 Bolza Check | `(2,3,8)` | area `π/12`; `4π/(π/12) = 48 = |GL₂(𝔽₃)|`; `96 ≤ 168` | consistent | none |
| §10.4 Klein quartic Check | `g = 3` | `|Aut| = 168 = 84·2`; `PGL₂` index `336 = D` | sharp | none |
| §10.2 `[Π : N_X] ≤ D!` | `d = 2` | kernel of the action on 2 cosets has index `≤ 2`; general `d ≤ D` gives `≤ d! ≤ D!` | consistent | none |
| §4.4 Check 3, cover genus | `k = 2, 3` of genus 2 | `χ' = −2k`, `g' = 1 + k` = 3, 4; README `1 + 2k` = 5, 7 | **false Check** | R04 |
| §8.4 involution dimension `2g − 1 − h`, codim `g + h − 2` | `(g,h) = (3,0), (3,1), (2,0)` | `r = 8, 4, 6`; dim `5, 4, 3`; codim `1, 2, 0` | matches; zero only at `g = 2, h = 0` | none |
| §8.4 `ℤ/3` genus 3 Check | `h = 1, r = 2, m = 3` | RH `4 = 3(0 + 2·2/3)`; dim `2`; `3h − 3 + 2r = 4` | consistent | none |
| §8.4 pole Check | `w = z²` | `dz² = dw²/(4w)`, `q = (a/(4w) + b/4 + …)dw²` | simple pole, residue from `a` | none |
| §8.5 genus-two kernel | `h = 1, r = 3`; `h = 2, r = 0`; `h = 0, r = 6` | `2 ≥ |K|·3/2 ≥ 3` impossible; `2 = 2|K|` gives `|K| = 1`; `|K|(Σ − 2) = 2` with `Σ ≥ 3` forces `|K| = 2`, all `mᵢ = 2` | case analysis complete | none |
| §8.5 `g = 3` hyperelliptic Check | `h = 0, r = 8` | dim `5` in `6`, codim `1 = g + h − 2` | consistent | none |
| §7.1 collar inequality | `B = 2`; `B = 2 arsinh 1` | `ℓ ≥ 2 arsinh(1/sinh 1) = 1.544`; `2 arsinh(1/sinh(arsinh 1)) = 1.7627 = 2 arsinh 1` | involutive map, both Checks agree | none |
| §7.5 `d_T` Check | `k = 1/2` | `½ log 3 = 0.5493 = artanh(1/2)`; metric `|dz|/(1−|z|²)` has curvature `−4`, without `½` curvature `−1` | consistent | none |
| §7.4 Beltrami Check | `f = z + a z̄` | `f_z = 1`, `f_z̄ = a`, Jacobian `1 − |a|²`, `K = (1+|a|)/(1−|a|)` | homeomorphism iff `|a| < 1` | none |
| §4.1 kernel of `glAction` | `λI` (`λ < 0`), `diag(1,−1)` | `det λ² > 0`, `z ↦ z`; `det < 0`, `z ↦ −z̄` | kernel = centre | none |
| §4.1 distance Check | `i, 2i`; `diag(2,1)`, `diag(−2,1)` | `2 arsinh(1/(2√2)) = 0.6931 = log 2`; images `2i, 4i` | isometry both signs | none |
| §4.3 attaching word | `g = 1`; `g = 2` | `ι(R) = W⁻¹`, same normal closure; `[b₁,a₁][a₂,b₂] = [a₁,b₁]⁻²` in `Π`, nontrivial | convention detected in genus two | none |
| §4.2 `η(op p) = loopDeck(p⁻¹)` | pin | `deckFundamentalGroupEquiv_symm_op` body `loopDeck x₀ g⁻¹` | matches | none |
| §5.5 Alexander chain | `g = 2` | `V = 4`, `E = 8`, `χ = −4 = −2g`; `b = 2`, genus `(2 + 4 − 2)/2 = 2` | consistent | none |
| §3.2 action law | reversing `f, g` | `(fg)⋅J = ((fg)⁻¹)^*J`; `f⋅(g⋅J) = (−1)(−1)(f⁻¹)^*(g⁻¹)^*J` | left action | none |
| §7.2/§8.1 twist sign | `τ`, `τ⁻¹`, `E^{ℓ}_γ` | `τ: −ℓ`, `τ⁻¹: +ℓ`, `E^{ℓ}_γ = τ⁻¹⋅(X,m): +ℓ` | the two conventions agree | none |
| §2.4 dimension | `g = 1, 2, 3` | `3g − 3 + n + dim A_C` = `0 + 0 + 1`, `3 + 0`, `6 + 0`; `h⁰(K²) = 4 + 1 − 2 = 3` at `g = 2` | `A_C = 0` uses `g ≥ 2` | none |
| §0.5 centralizer | cyclic hyperbolic; nonelementary | one-parameter centralizer; two hyperbolics with distinct axes force the centralizer to fix both pairs | hypothesis used | none |
| §6.1 degree | conjugate by reflection | `e(ρ̄) = +2 = deg(f)(−2)` gives `deg f = −1` | excluded by `e = 2 − 2g` | none |
| §9.2 generator bound | genus `g`, cusps `m`, elliptic `r` | Borel line 789: `2g + m + r − 1 ≤ 2μ + 2`; torsion-free closed: `2g` generators, `μ = 4π(g−1)` | consistent | none |
| §0.1 diffeomorphism `S_g ≃ Σ` | `Σ` with smooth structure not from a triangulation | `exists_isotopic_diffeomorph` needs `s.IsCompatible σ_Σ`; no supplier | unowned | R01 |
| §3.1 `Mod±(S²)`, `Mod±(T²)` | pin and #271 | `mcg_sphere_full ≃ ZMod 2`, `mcg_torus_full ≃ GL₂(ℤ)` | consistent | none |
| `baer_epstein_smooth`, `exists_diffeomorph_mapOfEq_eq` | sphere, torus | sphere: `Diff⁺ ≃ SO(3)` path-connected, `π₁` trivial; torus: `GL₂(ℤ)` realized linearly | true at all genera | none |
| `contractibleSpace_discDiff_two` | `DiscDiff 2` | boundary fixed pointwise vs Smale's "near the boundary": the collar straightening is owned in §5.3 | consistent | none |

## Not verifiable

- Douady–Earle 1986, Theorem 1 (§5.2): both Project Euclid URLs return an Incapsula block page through the service (`d0ca75e6`, `7dcc985c` are the block pages); the Springer DOI is refused as paywalled. Cited by locator; the anticonformal naturality is stated as this roadmap's own proof, which is correct placement.
- Kerckhoff 1983, Wolpert 1979, Ahlfors–Bers 1960 (JSTOR), Imayoshi–Taniguchi 1992, Hubbard 2006, Farb–Margalit 2012: paywalled, cited by locator (`uncertified`). A copy of the Primer in the sources cache (`46c4cc84`) comes from a third party's course page, not an author page or publisher archive, so I did not read it.
- Ownership against `MappingClassGroupsAndCanonicalRepresentations` (merge-order position 266) was not checked: it has no readable folder on main and is not in the open-pull-request index.

## Source issues

- none
