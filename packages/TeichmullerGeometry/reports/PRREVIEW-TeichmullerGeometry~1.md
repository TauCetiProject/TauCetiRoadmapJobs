# Review of TeichmullerGeometry (pull request #1169 at 6cf02f8)

**Verdict:** needs changes

Gate at this head (worker's run, data): every check passed, `depcheck=0`, `build=0`. My own run of the dependency check: `depcheck: 204 roadmaps, 1434 edges, 0 problem(s)`. That result is blind for this README: the dependency check reads `*Needs:*` lines, and this README has none (its supplier edges are prose and a `## Dependency order` code block), so every supplier citation below was resolved by hand against main (`fa41b37`), the open heads the brief lists, and the pins (Mathlib `6b7abb3c`, Tau Ceti `a91d3aaf`).

## R01 (P1) — Fuchsian L4a, L7, L8, L9 are cited as suppliers but exist only in the open revision #1168, which cites this roadmap back

Location: `TauCetiRoadmap/TeichmullerGeometry/README.md` lines 34, 140, 146, 211–214 ("`FuchsianOrbifolds` L0–L6 supply … T8 consumes L7's exact torsion-free fixed-signature target", "Fuchsian L4a supplies the minimum area `π/21`", "Fuchsian L9 is the downstream source-specific consumer of T9's …").

Claim: T8 consumes Fuchsian L7 (arithmetic fixed-signature finiteness), T9 consumes Fuchsian L4a (minimum compact orientable orbifold area `π/21`), the Downstream text consumes L8, and the dependency block ends with `Teich T9/T10 + Fuchsian L8 … ─> Fuchsian L9`.

Witness: FuchsianOrbifolds on main (`TauCetiRoadmap/FuchsianOrbifolds/README.md`, headings at lines 193–365) has Layers 0–6 only: no Layer 4a, 7, 8 or 9. Those layers exist only at the head of pull request #1168 (`FuchsianOrbifolds/README.md` at #1168, headings at lines 398, 516, 1162, 1385). #1168 revises a roadmap already on main, so it is never a dependency: the brief's rule is to cite such a roadmap as it is on main. At that same head, Layer 9 (lines 1385–1466) consumes "TeichmullerGeometry T10's common-generic-locus theorem", T4a's convention and "TeichmullerGeometry T9's `RiemannianIsometry(H²)≃PGL₂(ℝ)` identification", and its dependency block reads `T0,T4a,T9,T10,Fuchsian L8,RiemannianGeometry R4.7 → Fuchsian L9`. This README documents the same reverse edge in its own `## Dependency order` (line 214) and at line 34. Two roadmaps citing each other is a cycle at the roadmap level whatever the section graph looks like; the merge order lists TeichmullerGeometry at position 263 and FuchsianOrbifolds is on main, so every Fuchsian section this roadmap uses must be on main today.

Repair (tested on the instance): (1) In T9 (line 146) own the minimum-area statement this roadmap needs, as a target with its proof: for a compact orientable hyperbolic orbifold of signature `(h; m₁,…,m_r)`, `2h−2+Σ(1−1/mᵢ) ≥ 1/42`, the case analysis being `h≥2` gives `≥2`, `h=1` gives `≥1/2`, `h=0` with `r≥5` gives `≥1/2`, `r=4` gives `≥1/6`, `r=3` gives `≥1/42` at `(2,3,7)`; it consumes only Fuchsian L4's Gauss–Bonnet signature formula, which is on main. (2) In T8 (line 140) either own the finiteness of `PSL₂(ℝ)`-conjugacy classes of arithmetic cocompact torsion-free lattices of signature `(g;−)` as a target with its route (Takeuchi's bound on the trace field degree and discriminant, then finiteness of maximal orders and of finite-index subgroups), or cut T8 and T10's nonarithmeticity clause from this roadmap's scope; a `gap:` declaration is not available because the package has no readable `design/plan.json`. (3) Delete every supplier use of L8 and every mention of L9 as a consumer from lines 34–36, 198–202 and 211–216; a Downstream consumers section may name FuchsianOrbifolds Part II or a later roadmap as the consumer of T9/T10, but no on-main Fuchsian layer may be written as consuming this roadmap. After the edit the only Fuchsian citations are L1, L4, L5 and L0's action, all on main.

## R02 (P1) — GeometricTopology "Layer 3g" and "Layer 3's isotopy extension" exist nowhere; the smoothing comparison, `π₀(Diff⁺(S²))=0` and the isotopy-extension theorem are unowned prerequisites

Location: `README.md` lines 32, 42, 100, 102 ("GeometricTopology Layer 3g supplies the relative two-dimensional smoothing comparison and `π₀(Diff⁺(S²))=0`; its Layer 3 compact-ambient smooth isotopy extension applies to the sphere/disk tracks used by T6"; "Compare it with a prescribed oriented smooth `Σ` by GeometricTopology Layer 3g's dimension-two smoothing comparison"; "choose a `C^∞` path from the identity in `Diff⁺(S²)` using GeometricTopology 3g"; "GeometricTopology Layer 3 supplies one-parameter compact-ambient isotopy extension").

Claim: T0's standard-model comparison, T6's sphere track and T6's disk/frame argument rest on three GeometricTopology outputs.

Witness: `roadmaps grep 'Layer ?3g'` over main and all 437 open heads matches only this README (lines 32, 42, 98). GeometricTopology on main (`GeometricTopology/README.md` lines 357–408, Layer 3) builds `Diff(M)`, the `C^∞` topology and the smooth-families map and nothing else; its smoothing comparison is a "far horizon" section (line 930), and it states no isotopy extension and no `Diff(S²)` result. GeometricTopology #903 (a revision of an on-main roadmap, so not citable) has `Diff(S²) ≃ O(3)` only as a reference at its line 1341 and isotopy extension in its Layer 3.3. The compatible smoothing of a triangulated surface is owned elsewhere: PlanarTopology Layer 8 at #271 (`PlanarTopology/README.md` lines 905–961) declares `PLStructure.smoothing`, `PLStructure.smoothing_unique`, `exists_isotopic_diffeomorph`, `isotopic_of_homotopic`, `plIsotopic_of_isotopic` and `smoothIsotopic_of_isotopic`.

Repair: at line 42 replace the Layer 3g citation by PlanarTopology Layer 8's `PLStructure.smoothing` and `PLStructure.smoothing_unique` (compatible smoothing exists and is unique up to isotopy), which already gives the orientation-preserving diffeomorphism between the smoothed standard model and a prescribed smooth `Σ` through `exists_isotopic_diffeomorph`. At line 32 and 100 make `π₀(Diff⁺(S²))=0` a T6 target of this roadmap with its route (Smale 1959: straighten a diffeomorphism of `S²` to a rotation through the space of embedded disks, which is where the `Emb⁺(D²,S²)→Fr⁺(S²)` comparison already written at lines 100–102 comes from) and a locator (S. Smale, Diffeomorphisms of the 2-sphere, Proc. AMS 10 (1959), 621–626). At line 102 make the one-parameter compact-ambient isotopy extension a T0 target proved from DifferentialGeometry's time-dependent flows (the route is already written at line 102: extend the velocity field, solve the ODE), or cite GeometricTopology Layer 1's tubular-neighbourhood results on main with the exact item; do not cite a Layer 3 statement that main's Layer 3 does not make.

## R03 (P2) — the mapping class group is already owned by SurfaceTopology Layer 9 and the smooth/PL/TOP comparison by PlanarTopology Layer 8; T0 and T3 re-plan both

Location: `README.md` line 44 ("define `Diff₀(M)` as its identity path component … prove that a continuous path in the `C^∞` diffeomorphism group is homotopic relative endpoints to a smooth isotopy … A smooth isotopy gives a path in the `C^∞` topology"), line 70 ("Define `Mod⁺(Σ)=π₀(Diff⁺(Σ))` and `Mod±(Σ)=π₀(Diff(Σ))` using T0's `C^∞` path-component convention").

Claim: this roadmap owns the surface mapping class groups and the comparison between smooth isotopy and paths in `Diff`.

Witness: SurfaceTopology Layer 9 at #271 (`SurfaceTopology/README.md` lines 943–1079) defines `MappingClassGroupFull`, `MappingClassGroupRel` and `MappingClassGroupPlus` on `Homeomorph M M ⧸ isotopicSetoid`, and states the forgetful homomorphisms from the PL and smooth mapping class groups as isomorphisms, "surjective by `exists_isotopic_diffeomorph`, injective by `smoothIsotopic_of_isotopic`" (its lines 47–51), consuming PlanarTopology Layer 8. This README cites those two roadmaps for the classification and for Epstein's theorem but never cites SurfaceTopology Layer 9, and T3 defines `Mod±(Σ)` afresh. Half of T0's comparison is already a pinned declaration: `TauCeti.Diffeotopy.joined_one_final` (Tau Ceti `TauCeti/Geometry/Diffeomorphism/Diffeotopy/Path.lean` line 74) proves that a `C^n` diffeotopy joins `1` to its final slice in `Diff J M n` under `Diffeomorph.weakWhitneyTopology` (`Topology.lean` line 85), elaborated by me at the pin:

```lean
@TauCeti.Diffeotopy.joined_one_final : ∀ … (Φ : TauCeti.Diffeotopy J n M) [CompactSpace M] [IsManifold J n M], Joined 1 Φ.final
```

Repair: in `## Scope and ownership` defer the mapping class groups to SurfaceTopology Layer 9 (`MappingClassGroupFull`, `MappingClassGroupPlus`) and the TOP/PL/smooth isotopy comparison to PlanarTopology Layer 8; in T3 define `Mod±(Σ)` as `π₀` of the pinned `TauCeti.Diff (𝓡 2) Σ ∞` with `Diffeomorph.weakWhitneyTopology` and state as this roadmap's own target only the isomorphism of that `π₀` with SurfaceTopology Layer 9's `MappingClassGroupFull` (route: `Diffeotopy.joined_one_final` one way, T0's parameter-smoothing theorem the other way, then `smoothIsotopic_of_isotopic`); in T0 cite `TauCeti.Diffeotopy` and `joined_one_final` for the "smooth isotopy gives a path" half and keep only the converse as a target.

## R04 (P2) — a statable headline is absent: the smooth Baer–Epstein kernel theorem; the docstring's reason is false at the pins

Location: `TauCetiRoadmap/TeichmullerGeometry/Suggested.lean` lines 25–28 ("the Baer–Epstein kernel theorem (T6): Mathlib has no topology on `Diffeomorph` and no smooth isotopy relation, so the mapping class group `π₀ Diff(Σ)` has no carrier").

Claim: the kernel theorem of T6 (a diffeomorphism of a closed orientable surface of genus at least two that is homotopic to the identity is smoothly isotopic to the identity, README line 94) is not statable at the pins.

Witness: the pinned Tau Ceti has `TauCeti.Diffeotopy J n M` (`Diffeotopy/Basic.lean` line 78: a level-preserving `C^n` diffeomorphism of `I × M` that is the identity at time zero), `TauCeti.Diffeotopy.final` (line 186), the group `TauCeti.Diff I M n` (`Group.lean` line 178) and the weak Whitney topology on diffeomorphisms (`Topology.lean` line 85, scoped instance `TauCeti.DiffeomorphWeakWhitney`). I elaborated the following in a scratch copy at the pins with `lake env lean`; it produced only the `sorry` warning:

```lean
theorem baer_epstein_smooth {S : Type*} [TopologicalSpace S]
    [ChartedSpace (EuclideanSpace ℝ (Fin 2)) S]
    [IsManifold (𝓡 2) ∞ S] [TauCeti.Orientable (𝓡 2) ∞ S]
    (hS : TauCeti.IsClosedConnectedSurface S) (x₀ : S)
    (hna : ∃ a b : FundamentalGroup S x₀, a * b ≠ b * a)
    (f : TauCeti.Diff (𝓡 2) S ∞)
    (hf : ContinuousMap.Homotopic (f.toHomeomorph : C(S, S)) (ContinuousMap.id S)) :
    ∃ Φ : TauCeti.Diffeotopy (𝓡 2) ∞ S, Φ.final = f := by
  sorry
```

(imports `TauCeti.Geometry.Diffeomorphism.Diffeotopy.Path`, `…Diffeomorphism.Group`, `…Diffeomorphism.Topology`, all present at the pin). The carrier `ZerothHomotopy (TauCeti.Diff (𝓡 2) S ∞)` under the scoped topology also elaborates (with `[CompactSpace S]`), so `π₀ Diff(Σ)` does have a carrier at the pins.

Repair: add the statement above to `Suggested.lean` under a `/-! ## Layer T6 -/` comment (it is the injectivity half of Dehn–Nielsen–Baer that this roadmap says it owns), import the three modules, and rewrite the docstring bullet: what is not statable is the group structure on `π₀ Diff(Σ)` and `Out(π₁)` as a group at the pins (if the author does not want to state them through `MulAut.conj`'s range), not the isotopy relation. Mention `exists_diffeomorph_mapOfEq_eq` and this theorem together as the two halves of T6 in the README's T6 prose (line 94).

## R05 (P3) — the README is not in TauCetiRoadmap form: no Summary, no Checks, no API bullets, no supplier contracts, no per-layer Examples and Dependencies

Location: `README.md` throughout; headings at lines 5 (`## Scope and conventions`), 22 (`## Ownership and dependencies`), 38 (`## Milestones`), 40–198 (`### T0.` … `### T10.`), 204 (`## Dependency order`), 227 (`## References`).

Claim (shape rules of the brief): opening `**Summary.**`, `## Scope and ownership`, `## Conventions`, `## Exact supplier contracts` (per supplier, declarations by name), `## How to read the build`, `## Layer k:` with `### k.n` subsections each carrying its API bullets, `**Checks.**` (at least three discriminating ones per definition), `### Examples` and `### Dependencies` per layer, `*Needs:*` lines per target, `## Downstream consumers`.

Witness: `/bin/grep -c 'Checks' README.md` is 0; `grep -c '\*Needs:\*'` is 0; no `**Summary.**`; the milestone labels `T0…T10, T9a` are not layers; the dependency check therefore has no edges to read (hence `depcheck=0` while R01 and R02 exist). Definitions such as `Teich(Σ)` (line 7), the action `f⋅J=ε(f)(f⁻¹)^*J` (line 72), the twist coordinate (line 118), `ML(Σ)` (line 128), `Φ_N` (line 152) and `B_N` (line 158) have no API bullets and no Checks; every sign convention (the attaching word, `ε_AT`, `e(ρ)=2−2g`, `t_i↦t_i−ℓ_i`) is asserted without a computed two-term witness.

Repair: rewrite in the house shape (read two or three roadmaps on main, e.g. `FuchsianOrbifoldsPartII` at #1696 for the exact headings). Each target gets a `*Needs:*` line naming its suppliers item by item (this is what makes the dependency check see R01/R02-type defects), each definition at least three Checks: for example for the T3 action, the Check that `f⋅J` for the orientation-reversing involution of the standard genus-two surface equals the conjugate structure of the pulled-back one and that `(fg)⋅J=f⋅(g⋅J)` on a reversing pair; for the twist, the Check that one positive Dehn twist changes `t_i` by exactly `−ℓ_i` on a genus-two pants decomposition; for T4a the Check that the uniformizing holonomy of a fixed genus-two example has `e=−2` under the stated conventions.

## R06 (P3) — policy: a Mathlib pull-request number, backticked library names that do not exist at the pin, an external repository URL and process text

Location: `README.md` line 124 ("Prior work: the RiemannDynamics formalization (github.com/will1491/RiemannDynamics …) … coordinate with its authors before any reuse. Mathlib pull request mathlib4#42630 proposes `Complex.wirtingerDeriv` and `Complex.wirtingerDerivBar` with the classical comparison `Complex.differentiableAt_complex_iff_wirtingerDerivBar_eq_zero`; neither declaration is in the pinned Mathlib").

Witness: the worker's citation scan (`citations.md`) finds the three backticked names nowhere in the pinned Mathlib or Tau Ceti; the README's own sentence says so. A backticked name is a claim that the library or `Suggested.lean` declares it; a pull-request number and "coordinate with its authors" are process narrative.

Repair: delete the "Prior work" sentence and the pull-request reference; define the classical Wirtinger derivatives in prose in T5 as this roadmap's own targets (names in words, not backticks), and say in `## Scope and ownership` that they are deleted when Mathlib acquires them. Related style points in the same class: "ModularForms10B" (lines 26, 28, 66, 134, 216, 223) is not a roadmap name: cite `ModularForms` §10B(iii)–(v); "D0.1-Surface", "D3.3", "D3.4", "D4.1" (lines 26, 32, 42, 56, 66) are not labels in ComplexCurveModuli on main, whose sections are numbered items: cite "ComplexCurveModuli D0 item 1", "D3 item 3", "D4 item 1" and so on (I resolved each to its item, see Verified sound).

## R07 (P3) — ownership of `Isom(ℍ)≃PGL₂(ℝ)` is split between this roadmap, RiemannianGeometry R4.7 and Fuchsian L0 without a stated boundary

Location: `README.md` line 34 ("RiemannianGeometry R4.7 owns the hyperbolic isometry and isometry-lifting interfaces") against line 146 ("Identify `Isom(H²)≃PGL₂(ℝ)` … the target is `exists_mulEquiv_isometryEquiv_glAction`") and `Suggested.lean` lines 56–66.

Witness: RiemannianGeometry R4.7 on main (`RiemannianGeometry/README.md` lines 717–760) develops the hyperbolic models in all `n≥2` on Tau Ceti's `UpperHalfSpace`, consumes `UpperHalfSpace.isPretransitive_isom`, "complete[s] the missing surjectivity/isometry-group descriptions" and identifies the hyperbolic group `O⁺(n,1)`; FuchsianOrbifolds L0 item 2 on main restricts Mathlib's projective action along `PSL(2,ℝ)→PGL(2,ℝ)`. The Lean target is on Mathlib's `ℍ` with `UpperHalfPlane.glAction` (`MoebiusAction.lean` line 181), a different carrier from `UpperHalfSpace 2`, so it is not a literal duplicate, but the README does not say which statement is whose.

Repair: in `## Scope and ownership` say that this roadmap owns the two-dimensional model on Mathlib's `ℍ` (`GL (Fin 2) ℝ` modulo centre, conjugation for negative determinant) and the comparison isometry `ℍ ≃ᵢ UpperHalfSpace 2` transporting R4.7's isometry group, and that R4.7 keeps the `n`-dimensional group; cite Fuchsian L0 item 2 for the `PSL₂(ℝ)`-restricted action rather than restating it.

## R08 (P3) — unused hypothesis in `exists_diffeomorph_mapOfEq_eq`

Location: `Suggested.lean` line 51 (`hna : ∃ a b : FundamentalGroup S x₀, a * b ≠ b * a`).

Witness: the statement holds without it. Torus: `π₁ = ℤ²`, every automorphism is a matrix in `GL₂(ℤ)`, realized by the induced linear diffeomorphism of `ℝ²/ℤ²` fixing the image of `0` (computed: the automorphism `(1,0)↦(1,1), (0,1)↦(0,1)` is induced by the shear `(x,y)↦(x,x+y)`). Sphere: `π₁` trivial, the identity works. So `hna` restricts a theorem that is true for every closed orientable surface.

Repair (optional): drop `hna` and the parenthetical "(equivalently, of genus at least two)" in the docstring; the README line 94 then states the based realization for all closed orientable surfaces, with the genus-at-least-two case the one the roadmap proves through Douady–Earle and the torus and sphere cases the linear ones.

## R09 (P3) — locators: no locator on most targets, Kerckhoff without a theorem number, Douady–Earle cited for an anticonformal naturality the brief cannot check

Location: `README.md` lines 90–94 (Douady–Earle "§3, Theorem 1" and "§3, display before Lemma 2"), 229–233 (Kerckhoff: "No section locators are given here"), and the targets of T0–T5, T7–T9 (no locator at the claim).

Witness: the brief requires a locator at every claim. Every T-section states theorems (uniformization comparison, Fenchel–Nielsen homeomorphism, Wolpert's length distortion `ℓ_γ(Y)≤K(f)ℓ_γ(X)`, Hamilton–Krushkal and Reich–Strebel inequalities, earthquake theorem, first-variation and convexity of length, Greenberg-type density) with no theorem number or page. Kerckhoff 1983 is paywalled, but its theorem numbering is on its first page (Theorem 1, Theorem 2 for the fixed point, and the length-convexity Theorem 3 in §3); the paper may be cited by locator alone as `uncertified`.

Repair: add a locator in parentheses at each claim (Imayoshi–Taniguchi chapter and theorem numbers, Hubbard theorem numbers, Kerckhoff theorem numbers, Wolpert 1979 for the length distortion, Thurston's earthquake theorem in Kerckhoff §2), and record every cited work in a `sources.toml` (the folder has none).

## Verified sound

Supplier citations resolved on main (`fa41b37`) or at the open heads the brief lists (19 resolved, 2 nonexistent reported in R01/R02):
- ComplexCurveModuli (main): D0 items 1 (smooth normal forms, labelled discs, cut-system comparison), 2 (operator/divisor Riemann–Roch comparison with ModularForms 10B), 4 (uniformization with `Δ₀u+K₀+e^(2u)=0`, `Δ=−div grad`, matching this README's convention at line 18), 5 (properness of the actual Diff action, finite automorphism groups); D3 items 3 (`dim Def¹=3g−3+n+dim A_C`, obstruction vanishing), 4 (Kodaira–Spencer), 5 (holomorphic marked slices, full Sobolev chart, arbitrary smooth complement and offset IFT), 6 (`J=[[i,0],[α,j]]` mixed and horizontal equations); D4 items 1 (universality of the D3.5 unfoldings, base dimension `3g−3+n`), 4 (openness, uniqueness with specified central arrow); D6 item 2 (collars, collar-width formula). `grep Teichm` in CCM main: 0 supplier uses (its line 154 is a remark), so the graph is one-way as claimed.
- ComplexKahlerGeometry (main): K1 (lines 96–192, Newlander–Nirenberg mentioned 4 times), K4 (444), K5b (within K5, 568–1242, 14 mentions); no dependency on Teichmüller.
- AlgebraicTopology (main): Stage 1 items 4 (based van Kampen pushouts) and 5 (wedge-of-circles free group), lines 289–325; Stage 6 intersection pairing, line 1561; `FundamentalGroup.mul_def` reversed composition noted at its item 6, agreeing with this README's T4a.
- RiemannianGeometry (main): R4 item 7 (lines 717–775): hyperbolic models, Killing–Hopf, quotient by free properly discontinuous isometries, descended metric.
- CharacteristicClasses (main): C2 items 2 (Euler naturality, obstruction cocycle, lines 644–656) and 3 (transverse section, `e(TM)[M]=χ(M)`, lines 657–666).
- GeometricTopology (main) Layer 3 (lines 357–408): `Diff(M)` group, `C^∞` initial topology, smooth-families map: the three things this README's line 28 consumes from Layer 3 exist; the rest is R02.
- PDE (main) Lane B items 8 (maximal function, line 270), 9 (Marcinkiewicz and Riesz–Thorin, line 273), 10 (Calderón–Zygmund).
- ModularForms (main) §10B items (iii) Riemann–Roch, (iv) Serre duality, (v) `analyticGenus_eq_topologicalGenus` (lines 1068–1118).
- SurfaceTopology at #271: Layer 8 classification with `StandardSurface.orientable g 0` and `Surface.genus` (17 and 7 occurrences), Layer 5 topological Riemann–Hurwitz (line 661); "Teichmüller theory" is in its Out of scope list (line 1225). PlanarTopology at #271: Layers 5, 6 (`Surface.eulerChar`, 4 occurrences), 8 (`isotopic_of_homotopic` line 905, `plIsotopic_of_isotopic` 910, `smoothIsotopic_of_isotopic` 961).
- `Completed/UniversalCovers`: the pinned Tau Ceti has `deckFundamentalGroupEquiv : deck proj ≃* (FundamentalGroup X x₀)ᵐᵒᵖ` (`UniversalCover/Deck/FundamentalGroup/UniversalCover.lean` line 107), `deckFundamentalGroupEquiv_symm_op` (line 117, body `loopDeck x₀ g⁻¹`, exactly the README's `η(op p)=loopDeck(p⁻¹)` at line 82), `loopDeck` (line 52) and `deckSubgroupQuotientProjEquivOfNormal` (`Classification/DeckGroup.lean` line 95).
- Downstream consumers found: FuchsianOrbifolds #1168 L9 (R01) and GroupActionsOnRiemannSurfaces #1728 (its lines 156, 202, 793 cite `TeichmullerGeometry` for Teichmüller space and the fixed-locus theorem; a consumer, no action here). `MappingClassGroupsAndCanonicalRepresentations` is at merge-order position 266 but has no readable folder on main or in the open-PR index, so ownership against it was not checked.

Library declarations opened at the pins (file and line): Mathlib `FundamentalGroup.mapOfEq` (`AlgebraicTopology/FundamentalGroupoid/FundamentalGroup.lean` line 82) and `mul_def` (line 41, `p * q = q.trans p`); `UpperHalfPlane.glAction` (`Analysis/Complex/UpperHalfPlane/MoebiusAction.lean` line 181) with `σ g = conjCAE` when `det g ≤ 0` (line 92) so `g • z = conj((az+b)/(cz+d)) = (a z̄+b)/(c z̄+d)`, the formula at README line 146; `IsometryEquiv` group (`Topology/MetricSpace/Isometry.lean` line 565, `mul e₁ e₂ = e₂.trans e₁`, so `(e₁*e₂) z = e₁ (e₂ z)`, compatible with `mul_smul`); `UpperHalfPlane.dist_eq` (`Metric.lean` line 42, `2·arsinh(|z−w|/(2√(Im z Im w)))`). Tau Ceti `IsClosedConnectedSurface` (`Geometry/Manifold/Basic.lean` line 128: T2, second countable, compact, connected, topological 2-manifold, boundaryless), `Orientable` (`Orientation.lean` line 345), `Diffeotopy` (line 78), `Diff` (line 178), `weakWhitneyTopology` (line 85), `Isotopic` for continuous maps (`Topology/Homotopy/Isotopy/Basic.lean` line 111).

Signature check: the worker's elaborated signatures of the 2 declarations agree with the README statements (T6 line 94, T9 line 146); no section binder lost (both declarations carry their instances explicitly). The `Unknown identifier group` line in the worker's transcript is an artifact of its scanner, not of the file. One-tactic probes on a scratch copy: `simp` on `exists_mulEquiv_isometryEquiv_glAction` makes no progress; `simp` on `exists_diffeomorph_mapOfEq_eq` leaves the goal unchanged. Neither is padding.

Sources read: Greenberg 1963 (`greenberg1963`, publisher-open AMS PDF): Theorem 2 at lines 86–91 says that for a finitely generated Fuchsian group `F` either `Max(F)` is empty or it is open everywhere dense in `T(F)` with analytic complement; lines 170–175 draw the genus-`g≥2` corollary `C(S)=1` for most surfaces. This supports the README's description of Greenberg as a source reference for Fuchsian (`PSL₂(ℝ)`) maximality; the `PGL₂(ℝ)` strengthening is correctly presented as this roadmap's own target.

Adversarial table (statement, instances, values on each side, result, change):

| Statement | Instances | Values | Result | Change |
|---|---|---|---|---|
| T9 index bound `[Λ⁺:Γ]≤84(g−1)`, `d≤168(g−1)` | `g=2,3` | `Area(H²/Γ)=4π(g−1)`; min orbifold area `2π/42=π/21`; ratio `84(g−1)`: 84, 168; with `[Λ:Λ⁺]≤2`: 168, 336 | consistent | none |
| T9 `[Π:N_X]≤D!` | `d=2` | kernel of action on 2 cosets has index ≤ `2!=2` | consistent | none |
| T7 `r≤2g+2−4h` from `2g−2=e(2h−2+Σ(1−1/mᵢ))`, `e≥2` | `g=3,h=0` | `4≥2(−2+r/2)` gives `r≤8=2·3+2` | consistent | none |
| T7 codimension `3g−3−(3h−3+r)≥g+h−2>0` | `g=3,h=0,r=8`; `g=3,h=1,r=4` | `6−5=1≥1`; `6−4=2≥2` | consistent for `g≥3` | none |
| T7 genus 2: `3h−3+r=3` | `h=0,1,2` | `r=6,3,0`; `h=1,r=3`: `2=e·Σ(1−1/mᵢ)≥e·3/2` forces `e=1`; `h=2`: `e=1`; `h=0`: `2=e(−2+Σ)`, `Σ≥3` forces `e=2`, all `mᵢ=2` | consistent, signature `(0;2⁶)` | none |
| T7 genus 2 canonical map | `g=2` | `h⁰(K)=g=2`; RR for `K−p`: `h⁰(K−p)−h⁰(p)=1+1−2=0`, `h⁰(p)=1` (no degree-one map to `ℙ¹`), so `h⁰(K−p)=1` | base-point free, degree 2 | none |
| T7 antiholomorphic involution fixed set | `g=2,3` | real dimension `3g−3`: 3, 6; total real dimension `6g−6`: 6, 12 | proper subset | none |
| T5 collar inequality | `ℓ=1`, `B=2` | `2·arsinh(1/sinh(1/2))=2·arsinh(1.919)=2.86`; inverse `ℓ≥2·arsinh(1/sinh(1))=2·arsinh(0.851)=1.55` | the map `ℓ↦2 arsinh(1/sinh(ℓ/2))` is an involution, both directions agree | none |
| T5 contraction `s↦((1−s)ℓ+s,(1−s)t)` | `s=0,1`; `ℓ=0.1` | `s=0`: identity; `s=1`: `(1,0)`; `(1−s)·0.1+s>0` for all `s` | stays in `(0,∞)^{3g−3}×ℝ^{3g−3}` | none |
| T3 action `f⋅J=ε(f)(f⁻¹)^*J` is an action | `f` reversing, `g` reversing | `(fg)⋅J=(+1)(f⁻¹)^*(g⁻¹)^*J`; `f⋅(g⋅J)=(−1)(f⁻¹)^*((−1)(g⁻¹)^*J)=(f⁻¹)^*(g⁻¹)^*J` | equal; marked form `(X̄,m∘f⁻¹)` has orientation-preserving marking since `m` preserves, `f⁻¹` reverses, `X̄` reverses | none |
| T4a attaching word under `ι(op p)=p⁻¹` | `g=1` | geometric `R=aba⁻¹b⁻¹`; native word `[B⁻¹,A⁻¹]=B⁻¹A⁻¹BA`; `ι(R)=A⁻¹B⁻¹AB=(B⁻¹A⁻¹BA)⁻¹` | `ι(R)=W⁻¹`, same normal closure | none |
| T4a `η(op p)=loopDeck(p⁻¹)` | pin | `deckFundamentalGroupEquiv_symm_op` body is `loopDeck x₀ g⁻¹` | matches | none |
| T6 Alexander chain of `2g+1` curves | `g=2` | graph: `V=2g=4`, `E=2+2(2g−1)=8`, `χ=−4=−2g`; boundary circles 2, genus `(2−χ−2)/2=2` | consistent | none |
| T6 `Fr⁺_orth(S²)≅SO(3)`, `π₁=ℤ/2` | — | `SO(3)` acts simply transitively on oriented orthonormal frames; `π₁SO(3)=ℤ/2` | consistent | none |
| T4a torsion-freeness of `Π` | finite-order `γ≠1` | `ρ(γ)` elliptic fixes a point of `H²`; deck action free | contradiction as stated | none |
| T9 kernel of `GL₂(ℝ)` on `ℍ` | `λI`, `λ<0`; `diag(1,−1)` | `λI`: `det=λ²>0`, `z↦λz/λ=z`; `diag(1,−1)`: `det<0`, `z↦−z̄≠z` | kernel = nonzero scalars = centre | none |
| T9 `e` is a homomorphism | — | `(e g * e h) z = e g (e h z) = g•(h•z) = (gh)•z` by `mul_smul` and `IsometryEquiv` mul | consistent | none |
| T9 isometry for `det<0` | `z=i`, `w=2i`, `g=diag(1,−1)` | `g•z=−z̄`: `i↦i`, `2i↦2i`; `dist` unchanged; general case: `Im` and `|z−w|` invariant under `z↦−z̄` | consistent | none |
| T6 `exists_diffeomorph_mapOfEq_eq` with `hna` dropped | torus, sphere | torus: `GL₂(ℤ)` realized by linear maps fixing `0`; sphere: trivial group | true without `hna` | R08 |
| T6 `IsClosedConnectedSurface` hypothesis | non-Hausdorff compact "surface" | pin's definition includes `T2Space` and second countability | no vacuity | none |
| T4b `e(ρ)=deg(f)(2−2g)` | `g=2` | `e=−2`, `deg(f)·(−2)=−2` forces `deg f=1` | consistent | none |
| T2 dimension | `g=2`, `n=0` | `3·2−3+0+0=3`; `A_C=H⁰(T_X)=0` since `deg T_X=2−2g=−2<0` | consistent | none |
| Scope: `Teich(Σ)` carriers 1–4 | `g=1` | excluded by `g≥2` at line 7 (torus has `H⁰(T_X)≠0`, D0.5 properness fails for its full Möbius stabilizer) | hypothesis in scope | none |

## Not verifiable

- Douady–Earle 1986, §3 Theorem 1 and the naturality display before Lemma 2 (README line 90): Project Euclid's open Acta Mathematica PDF returned an Incapsula block page through the service; Springer's copy is refused as paywalled by the service; International Press URL 404. Recorded in `needs-references.toml` as `douadyEarle1986`. The anticonformal naturality `E(g∘φ∘h)=g∘E(φ)∘h` for reversing `g,h` is therefore unchecked.
- Kerckhoff 1983 (JSTOR), Ahlfors–Bers 1960 (JSTOR), Imayoshi–Taniguchi 1992 (Springer), Hubbard 2006 (Matrix Editions), Greenberg 1974 (De Gruyter): paywalled; cited by locator only (`uncertified`), recorded in `needs-references.toml`.
- Farb–Margalit, Primer (De Gruyter): paywalled; the preprint on the author's Chicago page returns HTTP 403 through the service. Chapter 8 (Dehn–Nielsen–Baer), §7.3 and §10.6 unchecked.
- Ownership against `MappingClassGroupsAndCanonicalRepresentations` (merge-order position 266, no readable folder) was not checked.
- The seeded sample of 15 targets "found by heading" could not be matched: the README has no per-target locators (R09); the locators that exist (Douady–Earle, Farb–Margalit, Kerckhoff, Greenberg 1963) were treated as the sample, with only Greenberg 1963 readable.

## Source issues

- none
