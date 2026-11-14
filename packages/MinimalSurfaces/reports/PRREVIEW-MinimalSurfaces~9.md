# Review of MinimalSurfaces (pull request #2321 at 11039d6)
Folder: `TauCetiRoadmap/RiemannianGeometry/MinimalSurfaces/`
**Verdict:** needs changes

## R01 (P3) — "Pitch" in 2.6 disagrees with the parent's helicoid convention

**Location** `TauCetiRoadmap/RiemannianGeometry/MinimalSurfaces/README.md` lines 641–642 and 657–658: "`u = cθ` parametrizes one component away from the axis of a helicoid of pitch `2πc`"; "Under dilation by λ, its pitch and separation become `2πλc`."

**Claim** The parent calls the same helicoid's parameter its pitch, so one word now has two values that differ by a factor 2π.

**Witness** `TauCetiRoadmap/RiemannianGeometry/README.md` line 3422: "helicoid `(u,v)↦(v cos u,v sin u,a u)` with pitch a≠0". Its sheet `v > 0` is the graph of `u = aθ`, so the parent says pitch a and 2.6 says `2πa`.

**Repair** Lines 641–642: "For `c ≠ 0`, `u = cθ` parametrizes one component away from the axis of the helicoid `(v cos t, v sin t, ct)`, of pitch c in R5a's convention (rise `2πc` per turn), with `w ≡ 2πc`." Lines 657–658: "On the helicoid with `c > 0`, the local Harnack ratio is one and `Dw = 0`. Under dilation by λ, c becomes λc and the separation becomes `2πλc`."

## R02 (P3) — "Concentric half-disk" does not say where the 2.6 bounds hold

**Location** `TauCetiRoadmap/RiemannianGeometry/MinimalSurfaces/README.md` lines 622–623: "If w is positive on D, apply 2.5 in the planar coordinates to obtain, on its concentric half-disk,"

**Claim** A half-disk is the part of a disk on one side of a diameter. What 2.5 gives is a bound on the concentric disk of half the radius, and "its" could refer to either D or `B_s(x₀)`.

**Witness** 2.5, line 568: "`sup_(B_(R/2)) w ≤ C inf_(B_(R/2)) w` and `|Dw| ≤ (C/R) w` on `B_(R/2)`". With `R = s`, that is the disk `B_(s/2)(x₀)`, not a semicircular region.

**Repair** "If w is positive on D, apply 2.5 in the planar coordinates with `R = s` to obtain, on the part of D lying over `B_(s/2)(x₀)`,"

## R03 (P3) — 2.2 has no locator for its estimate

**Location** `TauCetiRoadmap/RiemannianGeometry/MinimalSurfaces/README.md` lines 456–468: the item has no *Sources:* line, and its only citation is "then the Schauder bootstrap of [Chodosh, Lemma 19.1]".

**Claim** The cited lemma is qualitative. Neither the bound `C(n,k,M) R^(1−k)` nor its Riemannian form has a locator.

**Witness** Chodosh lines 2275–2277 (Lemma 19.1, p. 51): a `C²` minimal hypersurface of `ℝ^(n+1)` is `C^∞`. The lemma has no gradient bound, no constant and no scale.

**Repair** Insert after the heading: "*Sources:* [Chodosh, proof of Lemma 19.1, with the interior Schauder estimate (A.2) of Appendix A], for the bootstrap; the Hölder bound on Du is PDE E23 applied to the divergence-form equation satisfied by `D_k u`, and the factor `R^(1−k)` is the scaling Check."

## R04 (P3) — The description does not say that the source of 2.5 changes

**Location** Pull-request description: "The extension specifies deck overlaps and separation for multi-valued minimal graphs, … scaling laws, and positive and negative checks." and "Only `TauCetiRoadmap/RiemannianGeometry/MinimalSurfaces/README.md` changes."

**Claim** The description presents the change as confined to 2.6, but the head also changes the first source of 2.5.

**Witness** README line 558 at the head reads "*Sources:* [CM, §1.9]; [Chodosh, Proposition 19.3, Lemma 33.2]."; on main it reads "[CM, §1.7]".

**Repair** Add to the description: "It also changes the first source of 2.5 (several sheets) from [CM, §1.7] to [CM, §1.9]."

## Verified sound

| Statement | Instance | Roadmap side | Computed side | Result |
|---|---|---|---|---|
| 2.2 interior estimates (sample) | Scherk `log cos x − log cos y`, `u_λ`, λ = 2 | `D²u_λ(0) = λ^(1−2) D²u(0)` | `|D²u(0)| = √2`, `|D²u_λ(0)| = √2/2` | scaling holds; locator R03 |
| 2.4 graphical neighbourhoods (sample) | catenoid at `(1,0,0)`, graph over `x₁ = 1` | `|A| = |D²u|` where `Du = 0` (Chodosh Lemma 28.1) | `x₁ − 1 = ½(x₃² − x₂²) + …`, `|D²u| = √2 = |A|` | holds |
| 2.5 several sheets | `u₁ = 0`, `u₂ = 1 + x₁/(2R)` on `B_(R/2)` | Harnack ratio, `|Dw| ≤ (C/R)w` | `w ∈ [3/4,5/4]`, ratio 5/3; `1/(2R) = (2/(3R))·(3/4)` | holds; `w = x₁` refutes it without `w > 0` |
| 2.6 cocycle | `u = θ²`, `p = (1,0)`, `k = ℓ = 1` | `w₂(p) = w₁(p) + w₁(τ₁p)` | `16π² = 4π² + 12π²` | holds |
| 2.6 injectivity on strips | `u = cθ`, `Ω = (1,2)×(0,3π)` | injective iff `c ≠ 0` | `w_k = 2πkc`; at `c = 0`, `w₁ = 0` on `Ω₁ = (1,2)×(0,π)` | holds |
| 2.6 disconnected sections | `Ω = (1,2)×((0,π/4)∪(4π,4π+π/4))` | `Ω₁ = ∅`, `Ω₂ ≠ ∅` | `θ+2π` leaves Ω; `θ+4π ∈ (4π,4π+π/4)` | interval hypothesis needed |
| 2.6 descent | same Ω, u = 0 then 1 on the two parts | `w = 0` alone does not suffice | `w₂ = 1` on first part | deck invariance needed |
| 2.6 helicoid | `u = θ` | 2.1 left-hand side vanishes | `(2x³y − 2xy³ + 2xy³ − 2x³y)/ρ⁸ = 0`; `w = 2π` | holds |
| 2.6 scaling | `u = cθ`, factor λ | `w_(u_λ,k)(ρ,θ) = λ w_(u,k)(ρ/λ,θ)` | both sides `2πkλc` | holds |
| 2.6 pitch (R01) | R5a helicoid with `a = 1` | pitch | R5a: 1; 2.6: `2π` | mismatch, R01 |
| 2.6 local estimates (R02) | 2.5 on `B_s(x₀)` | region of the bounds | `B_(s/2)(x₀)` (line 568) | wording, R02 |
| 3.1 monotonicity (sample) | plane at `d = 1`, `n = 2`, `r = 2` | ratio difference equals remainder | ratio `3/4`; `[s²/(1+s²)]` from 0 to `√3` is `3/4` | holds; matches Chodosh Thm 9.3 |
| 3.3 convex hull (sample) | catenoid `|x₃| ≤ 1`; cap `{x₃ ≥ −½}` of `S²` | inside hull of boundary | `ρ ≤ cosh 1 = 1.543`; cap reaches `x₃ = 1` above its flat disk | holds; minimality needed |
| 3.4 small-ball maximum principle (sample) | unit `S²`, κ = 1 | `Hess(r²) > 0` for `r < π/2` | tangential `2r cot r`: 1.28 at r = 1, 0 at π/2, −1.83 at r = 2 | holds; radius sharp |
| 5.1 ε-regularity (Lean headline) | `λ𝒞 ∩ B̄₁`, `σ = ½` | needs `ε < 8π` | total curvature `8π`; `σ²|A|² = 1/(2λ²) → ∞` | smallness needed |
| 5.2 compactness (sample) | `λ𝒞`, λ = 0.01 | curvature bounded on compacts of `ℝ³∖{0}` | `|A| = √2λ/ρ² = 0.0141` at ρ = 1; waist `√2/λ = 141` | holds off 0, fails in `ℝ³` |
| 5.5 Allard (sample) | parallel planes `δ/R = 0.1`, n = 2; `λ𝒞` | threshold `1 + ε₀` | ratio `2·0.99 = 1.98`; catenoid ratio ≤ 2 with `|A| = √2/λ` | bound 2 refuted, as stated |
| 7.3 graphs stable (sample) | half-catenoid at ρ = 2 | `⟨ν,e₃⟩ = (1+|Du|²)^(−1/2) = tanh v` | `(4/3)^(−1/2) = 0.866 = √3/2`; `J tanh v = 0` | holds |
| 7.5 curvature estimate (sample, Lean headline) | half-catenoid `{v ≥ 0}` | `dist²|A|² ≤ C` | `2 sinh²v/cosh⁴v`, max ½ at `sinh v = 1` | holds; complete catenoid unstable |
| 7.6 Bernstein (sample, Lean headline) | `u = xy`, `u = x² − y²` | `hmse` | left-hand sides `−2xy`, `8(y² − x²)` | not solutions; affine u passes |
| 9.1 bounded total curvature (sample) | catenoids `λ_j𝒞 ∩ B₁` | each point of B carries ≥ ε | `2π·2∫sech²v dv = 8π` | holds; `|B| ≤ Λ/ε` |
| 10.1 Reilly (sample) | unit ball of `ℝ³`, `f = x₁² − x₂²` | both sides | left `−8ω₃ = −32π/3`; boundary `(8−16)|S²|/3 = −32π/3` | holds; sign of A pinned by `½|x|²` |
| 10.2 Choi–Wang (sample) | Clifford torus, `S²_eq ⊂ S³`, k = 2 | `λ₁ ≥ 1` | `λ₁ = 2` for both | holds |
| 11.2 Frankel (sample) | Clifford torus and `{x₄ = 0}`; tori in flat `T³` | images meet | common points with `x₃ = ±1/√2`; `T³` tori disjoint, Ric = 0 | holds; Ric > 0 needed |
| 12.1 Choi–Schoen (sample) | `ℝP³`, d = 2 | `γ̃ = 1 + d(γ − 1)` | Clifford image γ = 1 gives 1; a sphere gives −1 | holds; no minimal spheres |
| 4.2 half-space (Lean headline) | plane `{x₃ = 2}`; paraboloid `x₃ = ρ²` | conclusion; `hmin` | `c = 2`; `Δ_Σ x₃ = 4 ≠ 0` at vertex | holds; minimality needed |
| 10.3 Hersch (Lean headline) | `a = (0,0,3/5)`, `x = e₁`; Dirac mass | `|T_a x| = 1`; null-fibre hypothesis | `(4/5,0,3/5)`; `|∫T_a∘Φ dδ_p| = 1` for all a | holds; hypothesis needed |

- Source locators checked against the text: 32, comprising 24 in Chodosh (Lemma 19.1, Lemmas 28.1–28.3, Prop. 19.3, Lemma 33.2, Thm 9.3, Cors 8.2–8.4, 9.4–9.5, Thm 28.5, Thms 30.1–30.2, Thm 18.1, Thm 25.1, Lemma 29.1, Lemma 31.2, Thm 31.3, Thm 34.1, §34.1, Thm 34.3, Ex. 20.2, Thm 34.6), 5 in White (Thms 3, 4, 22, 29, 30) and 3 in CM4 (§0, Thm 0.2, Lemma C.1); none wrong.
- Library declarations opened at the pin: `TauCeti.Manifold.hessian` (`Geometry/Manifold/Riemannian/Laplacian.lean:135`, Levi-Civita Hessian), `laplaceBeltrami` (`:238`, div grad), `riemannianVolume` (`VolumeDensity/Volume.lean:82`). `#synth` shows the inner product on `TangentSpace (𝓡 2) x` comes from the RiemannianBundle, and the one on `ℝ³` from the canonical Euclidean instance.
- Cross-roadmap citations resolved on main b757328: PDE §3.2–3.3, §5.3–5.4, §5.6; GeometricCurrents G6; PositiveMass §3.1; AlgebraicTopology §7.1, §7.3, §8.7; SmoothBundlesConnections B5.0; PseudoholomorphicCurveAnalysis §2.4, §7.2; parent R1.5, R3, R5a–R5c, R7.0, R7.9, R8.2; Surfaces S1–S6; HopfRinow. All of them are on main.
- Gate: the worker's run and this review's run at 11039d6 both pass (every check 0). Depcheck: `depcheck: 244 roadmaps, 2200 edges, 0 problem(s)`. Nothing outside the folder changes, and main has not touched `RiemannianGeometry/` since the merge base.
- Elaboration: `lake env lean` on `Suggested.lean` gives 5 `sorry` warnings only. `#check @` of all 7 declarations matches `signatures.md` and the README, with no lost binder. A one-tactic probe (`simp_all`, `aesop`) closes none of the 5 theorems, and `herschMap 0 x = x` closes by `simp`.
- Duplication: `roadmaps grep` for multi-valued and N-valued graphs finds only this roadmap. CanonicalModelsAndGonality (open) cites 10.3–10.4 and restates neither. Mathlib and Tau Ceti at the pins have no multi-valued graph carrier.
- Headlines: 4.2, 5.1, 7.5, 7.6 and 10.3 are stated. The docstring names the missing carriers for 5.2, 6.1, 6.4, 8.1, 9.1, 11.2 and 12.1. No MS2 target is a headline.

Overlap check: read LorentzianGeometry, ManifoldOptimization, TeichmullerGeometry, PDE and YangMillsConnectionsAndCaloricGauge (open), and RiemannianGeometry, Surfaces and PositiveMass (main); shared: helicoid and catenoid computations (owner RiemannianGeometry R5a; 2.6 uses them in Checks only), Gauss–Bonnet for closed surfaces (owner PositiveMass §3.1, cited), linear elliptic estimates (owner PDE C13, C14, E22, E23, E25, cited), minimizing-current limits (owner GeometricCurrents G7; this roadmap owns only smooth bounded-curvature limits, 5.2 and 7.7); multi-valued graphs have no other owner.

Source independence: 14 passages compared with 3 sources (Chodosh, White, CM4). None is shared beyond forced phrases; the longest run is 6 words, the standard name "the universal cover of the punctured plane" (CM4 line 97). The largest share of locators is Chodosh's, 57 of 180. Contents compared with Chodosh: independent. MS8 (Chodosh §32) precedes MS9 (§31) because 9.1 needs 8.1–8.3, MS6–MS7 (Chodosh Part 5) follow MS5 (Part 6), and MS10–MS11 combine §34.1–34.2 with Ex. 20.2.

## Not verifiable

- [CM] (AMS GSM 121): there is no legal copy, and the AMS book pages and zbMATH returned HTTP 403. The new [CM, §1.9] locators of 2.5 and 2.6 are unread, and so are [CM, Lemma 2.4], [CM, §1.3], [CM, §1.5] and [CM, §1.8] in the sample; White line 1439 places [CM, Proposition 1.39] in Chapter 1 §8.
- [ChoiSchoen] (Invent. Math. 81) is behind the Springer paywall, so 9.1 and 12.1 were checked against Chodosh Thms 31.3, 34.1 and 34.6 only.
- [ChoiWang] (J. Differential Geom. 18): the Project Euclid page has no open PDF, so 10.2 was checked against Chodosh Thm 34.3.
- [Reilly] (Indiana Univ. Math. J. 26): the landing-page host is not classified, so 10.1 was checked against Chodosh §34.1.
- [Frankel] (Ann. of Math. 83) is on JSTOR only, so the "§2, p. 69" locator of 11.2 is unread; 11.2 was checked against Chodosh Ex. 20.2.
- [WhiteReg] (Ann. of Math. 161): annals.math.princeton.edu is not open, so 5.5 was checked against Chodosh Thms 30.1–30.2.
- [Bernstein] (math.jhu.edu notes): HTTP 403, so Theorem 3.1 (12.1, 11.3) is unread.
- [Schoen], [FCS], [Pogorelov] and [GT] are paywalled; 7.5 and 7.6 were checked against White Thm 29.
- [CM4] was read as arXiv math/0210119v1; its numbering was not compared with the Annals version.

## Source issues

- **Misprint** in Chodosh at Theorem 9.3 and its proof, pp. 29–30: the density ratio and the last line of the proof use `ω_n rⁿ` and `r^(−n)` for a k-dimensional submanifold of `ℝⁿ`; it should be `ω_k r^k` and `r^(−k)`; affects nothing.
- **Misprint** in Chodosh at Lemma 28.1, proof, p. 70: the eigenvalue `1 + |∇w|²` of the graph metric is given multiplicity n; it should be multiplicity one; affects nothing.
- **Misprint** in Chodosh at Lemma 29.1, p. 73: the points and the scale are indexed by i in `Σ_i` and `|A_(Σ_i)|`; it should be j throughout; affects nothing.
- **Misprint** in Chodosh at Lemma 31.2, proof, p. 76: the last limit is written as `j → 0`; it should be `j → ∞`; affects nothing.
- **Misprint** in Chodosh at Corollary 19.6, proof, p. 54: the source intersects Σ₁ with itself and U; it should intersect Σ₁ with Σ₂ and U; affects nothing.
- **Misprint** in Chodosh at Exercise 20.2, p. 55: asks to show that any two minimal hypersurfaces of the sphere meet; it should require both to be closed, since small disjoint pieces of two great spheres do not meet; affects a stated result.
- **Misprint** in Chodosh at Theorem 34.3, p. 83: the hypotheses omit that M is closed and that Σ is closed and embedded, which the separation step of the proof uses; it should assume them; affects nothing.
- **Error** in Chodosh at Appendix B, (B.1), p. 86: the Harnack inequality is stated for any weak solution with sup and inf over the same ball `B_R ⊂ Ω`; it should assume `u ≥ 0` and bound over a smaller concentric ball; affects a stated result.

## For the human reviewers

- Scope: no item of this roadmap consumes 2.6 (README line 596). This pull request enlarges 2.6 for the one-sided curvature estimate and [CM4], which the Scope section (lines 105–110) places outside the roadmap.
- Scope: the route of 7.4 follows [Lynch], an unrefereed preprint (arXiv:2611.12758v1, 2026). The theorem it serves, 7.5, is Schoen's published estimate.
- Licence: [Chodosh] was fetched from the author's Stanford page (web.stanford.edu/~ochodosh), a host that the sources service has no class for; this review classified it as author-page.
- Not tested: [CM], with 32 of 180 locators (the second largest share), could not be read, including the new [CM, §1.9] locators of this pull request.
