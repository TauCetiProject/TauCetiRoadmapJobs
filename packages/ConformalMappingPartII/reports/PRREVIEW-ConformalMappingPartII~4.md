# Review of ConformalMappingPartII (pull request #1407 at 62e73fb)

**Verdict:** accepted

No P1 or P2 finding. The gate passes, the dependency check reports no problem, `Suggested.lean` elaborates with `sorry` as the only warning, and the adversarial table below carries computed values. Two P3 notes are the author's to take or leave.

## R01 (P3) — Module docstring calls the deck-group presentation not statable; it is statable

**Location:** `TauCetiRoadmap/ConformalMappingPartII/Suggested.lean:18–20`: “The symmetric polygon and group-presentation headlines are not statable at the pins: the roots-cover projective deck subgroup with its marked polygon has yet to be constructed.”

**Claim:** the free presentation of §6.3 (README line 760–764) needs no missing carrier.

**Witness:** `finite_puncture_cusp_comparison` (`Suggested.lean:111–113`) already characterises the deck subgroup by `g ∈ Γ ↔ ∀ z, f (g • z) = f z`; `t̃_N` and `r̃_N` are explicit real matrices of determinant one; `FreeGroup (Fin N)` is native. “Γ̃_N is free on `r̃^k t̃ r̃^{−k}`” is statable as an injective `FreeGroup (Fin N) →* PSL(2, ℝ)` whose range is that subgroup and whose generators are the stated conjugates.

**Repair:** either state it (with the half-plane cover `τ ↦ F.toFun ((τ − i)/(τ + i))` and the two matrices as the only new definitions), or reword the docstring so that it does not call §6.3 a headline that lacks a carrier: the README names `half_rotation_involution` as Layer 6’s headline and treats §6.1 and §6.3 as targets, which is why this is a wording note and not a missing headline. The marked-polygon statement of §6.1 (Dirichlet domain equal to the ideal 2N-gon with its side pairings) does need more than a few simple definitions and may stay unstated.

## R02 (P3) — §1.5 locator names the equality case of the Schwarz lemma for an inequality

**Location:** `TauCetiRoadmap/ConformalMappingPartII/README.md:322`: “(Mathlib `Complex.affine_of_mapsTo_ball_of_norm_dslope_eq_div`, `Mathlib/Analysis/Complex/Schwarz.lean`, equality case after a based lift.)”

**Claim:** monotonicity R(Ω,a) ≤ R(Ω′,a) uses only the derivative inequality.

**Witness:** `Mathlib/Analysis/Complex/Schwarz.lean:261` (`norm_deriv_le_one_of_mapsTo_ball`): the based lift `l` of F_Ω through F_Ω′ has ‖l′(0)‖ ≤ 1, and F_Ω′(0)·l′(0) = F_Ω′(0)·… gives R(Ω,a) = ‖F_Ω′′(0)‖·‖l′(0)‖ ≤ R(Ω′,a). The equality-case lemma at line 291 is the §1.4 locator and is not used here. Instance: 𝔻 ⊂ 2𝔻 gives 1 ≤ 2 from ‖l′(0)‖ = 1/2.

**Repair:** replace the §1.5 parenthetical by “(Mathlib `Complex.norm_deriv_le_one_of_mapsTo_ball` applied to the based lift; CDT-journal, p.668)” and leave the `*Needs:*` line as it is.

## Previous findings

The previous review (round 3) read this same head; `changes.md` records no changed line in the folder. Its sole finding R01 (P2) asked for the obsolete `gap:little-picard` entry to be removed from the board package’s `design/plan.json`. That file now reads `{"gaps": []}`, the brief lists no declared gap, README line 25 keeps the ModularForms Layer 10 attribution as a scope statement, and no README gap contract was added. **Repaired.** The findings recorded as repaired in earlier rounds remain so: `Suggested.lean:103–126` states the finite-puncture headline on the native `Subgroup.CompactifiedQuotient`, and the ConformalMapping links resolve to the heading “Layers (each a discharge-gated milestone)” at `Completed/ConformalMapping/README.md:102`.

This review re-read the whole roadmap rather than inheriting the previous verdict.

## Verified sound

**Scope.** All 95 numbered targets (Layers 0–9), every definition’s API and Checks, the Conventions, the supplier contracts and all 26 Lean declarations were read. No route-specific shortcut, no re-planned roadmap, no copied passage, no algorithm, no sorry’d data, no `set_option`, no `lemma`, no `#check` in the committed file, no process word or pull-request number in README or docstrings, single `import Mathlib` plus three existing `TauCeti.*` modules.

**Mechanical evidence.** Worktree clean at `62e73fbea5f43d549283fd898a59ecf000c27c7e`; `git diff --stat origin/main...HEAD` outside the folder is empty. The worker’s gate at this head: every check 0, `build=0 OK`. Fresh `lake env lean` of `TauCetiRoadmap/ConformalMappingPartII/Suggested.lean`: exit 0, exactly 14 warnings, all `declaration uses 'sorry'`, in 24 s. A scratch copy with `#check @name` for all 26 declarations and 13 consumed library declarations elaborates; every binder named in the README is present in the elaborated type (the `SimplyConnectedSpace ↑Ω` hypothesis of `global_initial_value`, the `T2Space`/`SecondCountableTopology`/`NoncompactSpace` instances of `noncompactCoordinate`, `3 ≤ S.card`, the covering and surjectivity hypotheses and the `DiscreteTopology Γ` witness of `finite_puncture_cusp_comparison`, `2 ≤ N` in both radius theorems, `0 < r`, `r < 1`, `r < R`, nonvanishing on the closed disc and `g 0 = 1` in `normalized_log_derivative`). Nothing was changed. One-tactic probe: replacing each of the 14 `by sorry` bodies by `simp` gives 4 “simp made no progress” and 10 “unsolved goals”, 0 closures; `rfl` and `infer_instance` do not apply to any of them (no closed-term equation, no instance goal), judged by reading. No padding.

Dependency check, run from the pull-request worktree:

```text
depcheck: 204 roadmaps, 1657 edges, 0 problem(s)
```

No UPWARD, CYCLE or `moved:` line; `ORDER.txt` lists ConformalMappingPartII at line 229. Every `*Needs:*` line and supplier citation was read; all suppliers are on main (ConformalMapping and UniversalCovers under `Completed/`, the rest under `TauCetiRoadmap/`) and earlier in the order. The `citations.md` leads (TeschlODE and McMullenRS as “roadmaps”) are source keys, not roadmaps; the five “Lean names found nowhere” are this roadmap’s own declarations, all present in `Suggested.lean`.

**Cross-roadmap citations resolved on main (`dd4b28f`).**

| Citation | Where it resolves | What it supplies |
|---|---|---|
| ConformalMapping L1–L4 | `Completed/ConformalMapping/README.md:102,111,116,119,127` | Montel, Schwarz–Pick/Poincaré metric/Aut(𝔻), Riemann mapping, continuation and reflection |
| UniversalCovers Stages 0–2 | `Completed/UniversalCovers/README.md:63,89,98` | carrier, deck action, based lifts |
| DifferentialGeometry Layer 2.3 | `TauCetiRoadmap/DifferentialGeometry/README.md:341,357` | smooth structures on covers |
| FuchsianOrbifolds Layers 0,2,3,4 | `TauCetiRoadmap/FuchsianOrbifolds/README.md:193,235,263,286` | projective action, polygons, cusps and q-coordinates, compactified quotient |
| ClassicalArithmeticCompletion §6.20 | `TauCetiRoadmap/ClassicalArithmeticCompletion/README.md:12527–12531` | cr(Ω,p) = 1/|φ′(p)| from `TauCeti.IsNormalizedRiemannMapOn`, value 0 outside the class |
| DiophantineApproximationAndTranscendence §5.1 | `TauCetiRoadmap/DiophantineApproximationAndTranscendence/README.md:2972,3004–3008` | holomorphic system and scalar initial values on discs, dimension n and m |
| RiemannianGeometry R4.3, R4.7 | `TauCetiRoadmap/RiemannianGeometry/README.md:664–672` and `717–735` | pullback metrics, completeness, Hausdorff and second-countable universal cover; Killing–Hopf, and the pinned ball metric `4|dx|²/(1−|x|²)²`, K = −1 (line 735) |
| PDE Lane C items 12–15 | `TauCetiRoadmap/PDE/README.md:285,290–296` | mean value, maximum principles, Harnack, Green/Newtonian potential |
| ComplexCurveModuli D0.4 | `TauCetiRoadmap/ComplexCurveModuli/README.md:50` | complete finite-area curvature −1 metric on punctured components, cusp metric `(dt²+dθ²)/t²` |
| ModularForms Layer 10 (attribution only) | `TauCetiRoadmap/ModularForms/README.md:1024`; `Completed/ConformalMapping/README.md:163–167` | ConformalMapping’s relationship note assigns Picard’s theorem to ModularForms; no `*Needs:*` edge |

**Pinned declarations opened** (file and line in the pinned Mathlib and Tau Ceti):

| Object | Declaration, file:line | What it says and does not say |
|---|---|---|
| Schwarz inequality and equality case | `Complex.norm_deriv_le_one_of_mapsTo_ball`, `Mathlib/Analysis/Complex/Schwarz.lean:261`; `affine_of_mapsTo_ball_of_norm_dslope_eq_div`, `:291` | maps ball c R into closedBall (f c) R, 0 < R; equality case needs `StrictConvexSpace` |
| Jensen with centre term | `MeromorphicOn.circleAverage_log_norm`, `Mathlib/Analysis/Complex/JensenFormula.lean` (elaborated: `R ≠ 0`, `MeromorphicOn f (closedBall c |R|)`, sum of divisor·log(R‖c−u‖⁻¹) plus divisor(c)·log R plus log‖trailing coefficient‖) | exactly the shape of `discCounting`’s separate centre term |
| Proximity | `ValueDistribution.proximity : (ℂ → E) → WithTop E → ℝ → ℝ` | probability circle average of log⁺; no local characteristic |
| Hypergeometric | `ordinaryHypergeometric (a b c : 𝕂) : 𝔸 → 𝔸`, `Mathlib/Analysis/SpecialFunctions/OrdinaryHypergeometric.lean` | series germ; `inverseRatio` passes a₊, a₊, 2a₊ |
| Cusp data | `Subgroup.CuspDatum`, `TauCeti/Analysis/Complex/Fuchsian/Cusp/Datum.lean:167` | fields `width_pos` and `zpowers_generator = stabilizer` (full stabilizer, proper powers excluded) |
| Cusp chart | `Subgroup.CompactifiedQuotient.cuspChart`, `TauCeti/Analysis/Complex/Fuchsian/Compactification/Cusp/Chart.lean:230`; inverse `:118` | cusp ↦ 0, target `ball 0 (cuspRadius D A)`, radius `exp(−2πA/w)` (`:69`); inverse at 0 is `ofCusp D.cuspOrbit` |
| Compactified quotient | `Subgroup.CompactifiedQuotient`, `.../Compactification/Basic.lean:74` | inductive with `ofQuotient` and `ofCusp` |
| Cusp orbits | `Subgroup.CuspOrbit`, `TauCeti/Analysis/Complex/Fuchsian/Cusp/Basic.lean:137` | boundary orbits represented by cusp points |
| Cofinite | `Subgroup.IsCofinite`, `TauCeti/Analysis/Complex/Fuchsian/Covolume.lean:114` | discreteness plus finite covolume |
| Sphere charts | `OnePoint.affineChart`, `invChart`, `instChartedSpace`, `TauCeti/Geometry/Manifold/Instances/OnePoint.lean:68,121,201–218` | `chartAt` is the affine chart at finite points and the inverted chart at ∞, as README §1.7 states |
| Rotation convention | `TauCeti/Analysis/Complex/UpperHalfPlane/Rotation.lean:19` | `rotation θ = !![cos θ, sin θ; −sin θ, cos θ]`, as README §1.10 states |
| Descent | `TauCeti.descendPow (m) [NeZero m]`, `TauCeti/Analysis/Complex/RootsOfUnity/Descent.lean:67`; `descendPow_pow :92`; `differentiableOn_descendPow :144`; `image_pow_ball`, `.../RootsOfUnity/Quotient.lean:147` | hypotheses as the contract states (invariance under all m-th roots, open s, r ≥ 0) |
| Rotation uniqueness, pre-Schwarzian, Dirichlet domain, Shimizu, horodiscs, triangle area | `TauCeti/Analysis/Complex/Conformal/UnitDisc/Automorphism/Rotation.lean:72`; `.../Conformal/PreSchwarzian.lean`; `.../Fuchsian/DirichletDomain.lean:63`; `.../Fuchsian/Shimizu.lean`; `.../Fuchsian/Cusp/Horodisc.lean`; `.../UpperHalfPlane/Triangle.lean:648` | names exist as cited |
| Other names | every other backticked Mathlib/Tau Ceti name of the README (`exists_canonicalDecomp`, `CanonicalDecomp.divisor_eq_divisor`, `divisor_restrict`, `divisor_fun_inv`, `divisor_fun_pow`, `divisor_ball_support_finite`, `proximity_pow_top`, `circleIntegrable_log_norm`, `circleIntegrable_posLog_norm`, `characteristic_sub_characteristic_inv_of_ne_zero`, the digamma and Gamma lemmas, `tendsto_log_gamma`, the Herglotz and Poisson lemmas, the Cayley lemmas, `IsAnalyticContinuationAlong`, `unitDiscMoebius`, `coe_unitDiscMoebius`, `UpperHalfPlane.volume_def`, `IsNormalizedRiemannMapOn`) | found by exact-name grep in the pinned trees |

**Ownership against open work.** `roadmaps grep` over the open pull requests and main for “conformal radius”, “Schwarzian”, “Nevanlinna”, “uniformization theorem / simply connected Riemann surface”, “zero-balanced / 15.8.10”, “Blaschke”, “unbounded denominators / Calegari”: the only hits that touch the same objects are ClassicalArithmeticCompletion §6.20 (cited as supplier), FormalConnectionsOpers §5.1 (formal Aut(O) Schwarzian on opers), PeriodsAndSpecialValues (a j-specific Schwarzian and an elliptic double cover), ZerosOfLFunctions §4.6 (global meromorphic counting), TeichmullerGeometry Layer 4 (isometry group of ℍ and closed-surface uniformization, consuming RG R4 item 7 and FuchsianOrbifolds), and DiophantineApproximationAndTranscendencePartII, which consumes this roadmap. NoncongruenceModularForms (#1709) contains none of the analytic objects (no cover, radius, mean growth or Nevanlinna term). No second owner of the abstract noncompact uniformization, the pointed cover radius, the disc-local characteristic or the roots-cover constants was found, and no `Suggested.lean` in a readable checkout declares the same fully qualified names. Open pull requests not given with their files were not checked.

**Headline coverage.** README-labelled headlines, all stated: §0.4 `global_initial_value`; §1.1 `noncompactCoordinate` and `PointedCover.exists_cover`; §1.7 `finite_puncture_cusp_comparison`; §2.8 `roots_inverse_schwarzian`; §3.7 `quotient_representation`; §4.5 `inverseRatio.cover_inverse`; §5.5 `roots_conformal_radius`; §5.8 `gammaRadius.positive_expansion`; §6.7 `half_rotation_involution`; §7.8 `local_first_main_translation`; §8.7 `large_n_max_growth`; §9.4 `normalized_log_derivative`; §9.19 `uniform_mean_growth`. The 12 auxiliary declarations have real bodies on native carriers. The docstring’s not-statable list is accurate for §4.6 (the continued branch lies outside the native series disc for general small x), §8.1 and §6.1; its claim for §6.3 is R01.

**Note on a redundant hypothesis.** In `roots_inverse_schwarzian`, `hx : x ^ N ≠ 1` follows from `hinv`, `hdisc` and `F.mapsTo` (x = F(w x) with w x in the disc). It is harmless and matches the README’s prose; a P3 note only.

**Source sample, 15 of 15 reopened** (CDT-journal cache page = printed page − 626).

| Target | Locator read | Result |
|---|---|---|
| 0.3 continuation | TeschlODE line 6243, Theorem 4.7, p.130 (and line 444, (1.18), p.7, for §0.1’s first-order reduction) | linear system on a simply connected domain, global unique solution by continuation and monodromy; supports §0.3 and §0.4 via the companion system |
| 1.5 monotonicity | `Mathlib/Analysis/Complex/Schwarz.lean:261,291` | the inequality lemma is the input; locator slip is R02 |
| 1.11 descended map | CDT-journal line 2552–2555, Definition 5.1.15, p.671 | G_N(z^N) = F_N(z)^N, well defined by Lemma 5.1.2; the roadmap adds derivative, omitted value and ramification |
| 2.7 symmetric accessory parameters | CDT-journal line 2524–2547, pp.670–671 | m_k = c·ζ_N^{−k}, m₀ = 0, c = −1/2 − 1/(2N); recomputed below |
| 4.5 actual inverse | CDT-journal line 2608–2619, Lemma 5.1.16, pp.671–672 | ψ_N = |F_N′(0)|⁻¹ s_N(x^N), φ_N = δ_N⁻¹ s_N^N, δ_N = |F_N′(0)|^N |
| 4.6 zero-balanced continuation | CDT-journal line 2654–2668, Lemma 5.1.20, p.672; DLMF-15-8 line 516–520, (15.8.10) with |z−1|<1, |ph(1−z)|<π; DLMF-15-2 line 145–149, (15.2.2) | m = 0, b = a in (15.8.10) and division by Γ(2a) give exactly the displayed series; checked numerically below |
| 6.2 primitive translation | CDT-journal line 2795–2801, 2823–2828, Proposition 5.2.1, p.674 | stabiliser of i∞ generated by translation 2cot(π/2N) |
| 6.3 free presentation | CDT-journal line 2802–2816, p.674 | free on t̃_N and its r̃_N-conjugates; nonabelian control below |
| 6.4 power stabiliser | CDT-journal line 2830–2831, Definition 5.2.3, p.674; line 2835–2839, Corollary 5.2.4, p.675 | Φ̃_N = ⟨Γ̃_N, r̃_N⟩ = ⟨r̃_N, t̃_N⟩, quadrilateral 0, ζ^{−1/2}, 1, ζ^{1/2} |
| 6.7 half rotation | CDT-journal line 2848–2856, Lemma 5.2.6, p.675 | s̃ of order 2N with s̃² = r̃_N; 1 − F̃^N(s̃τ) = 1/(1 − F̃^N(τ)); checked numerically below |
| 7.2 local characteristic | CDT-journal line 3030–3046, §6.1.1, p.679 | m, N with the centre term ord₀⁻·log r, T = m + N |
| 7.10 radial monotonicity | CDT-journal line 3262–3264, proof of Corollary 6.2.9, p.683 | m(r, f′/f) monotone in r, used with R = (1+r)/2 |
| 8.5 exceptional set | CDT-journal line 2962–2968, 2980–2981, proof of Lemma 5.2.18, p.678 | S(M,N) and its horoball cover; the large-value set is the rotated translate (source issue below) |
| 8.7 maximum growth | CDT-journal line 2957–2961, 2982–2985, Lemma 5.2.18, p.678 | N ≫ 1, absolute constants, sup log|F_N| ≪ N/(1−r) |
| 9.13 omitted value one | CDT-journal line 3288–3293, 3409–3419, Corollary 6.2.11 and proof, pp.683–684 | Lemma 6.1.7 applied to the unit 1 − F_N with outer radius (1+r)/2 |

Also reread: CDT-journal line 2382–2395 (Theorem 5.1.4, p.668), 2420–2422 (Lemma 5.1.8, (5.1.9)), 2483–2551 (its proof, pp.670–671), 2870–2900 (Lemma 5.2.9, p.676), 3017–3026 (Theorem 6.0.1, p.679), 3047–3058 (Lemma 6.1.2 and (6.1.3)), 3084 (Lemma 6.1.7), 3420–3444 ((6.2.15), (6.2.16)); McMullenRS line 318–322 (Theorem 2.9, p.9) and 5348–5351 (§16, p.147); Uniformization line 39–42 (Theorem 1, p.2), 152–156 (Theorem 6, p.4), 213–216 (Proposition 9, pp.5–6); Tsu52 line 610 (Theorem 11, printed p.25).

**Adversarial table.** Values are my own computations: exact algebra where stated, otherwise double-precision Python without external libraries. For N = 2 the cover was built independently of CDT as F₂(z) = 2λ(C(−z)) − 1 with λ = θ₂⁴/θ₃⁴ (theta q-series, nome e^{iπτ}); it satisfies F₂(0) = 0 and F₂′(0) = +4.37686 by finite differences. Finite samples are falsification checks, not proofs of the universal bounds.

| Statement | Instances and computed values | Result |
|---|---|---|
| Conventions: Cayley map | C(0) = i, C(1/2) = 3i, C⁻¹(3i) = 1/2; C′(0) = 2i; Im C(z) = (1−|z|²)/|1−z|² at z = 1/2 gives 3 | agree |
| 0.1 equation and companion | y′ + y = 0: e^{−z} gives 0, constant 1 gives 1 ≠ 0; y″ = 0, companion [[0,1],[0,0]], v = (u+vz, v) satisfies v′ = Av, (0,1) does not | discriminates |
| 0.2 jet convention | y‴ = 0 at 0: jet of z² is (0,0,2); factorial-scaled inverse would return 2z² | agree |
| 0.3 / 0.4 global solutions | y′ − y/(2z) = 0 on ℂ∖{0}: √z continues with multiplier −1 (not simply connected); y″ = 0 with jet (2,3): y = 2 + 3z, uniqueness difference has jet (0,0) hence is 0 | simple connectivity needed exactly where hypothesised |
| 0.5 meromorphic basis | zy′ + y = 0: basis 1/z, pole order 1; z²y′ + y = 0: e^{1/z} single valued, infinitely many negative powers | stronger condition is essential |
| 0.6 pole clearing | α = 0, p = z², basis z⁻³: q(t) = t² gives z, q(t) = t gives z⁻¹ (fails) | agree |
| 1.1 `noncompactCoordinate` | M = ℂ: U = ℂ, id; M = 𝔻: id; Riemann sphere fails `NoncompactSpace`; empty M fails `SimplyConnectedSpace` (path connected needs nonempty) | hypotheses exclude the wrong cases |
| 1.1 surface Green function | radius 2, pole 0: G = log(2/|z|), G = log 2 at |z| = 1, G = 0 at |z| = 2, G + log|z| = log 2 | sign and regular part agree |
| 1.1 Dirichlet on annulus | 1 ≤ |z| ≤ 2, data 0 and 1: u = log|z|/log 2, harmonic, boundary values 0, 1 | no simple connectivity needed |
| 1.1 `exists_cover` and Liouville | h = 2 omits 0,1: constant lift, derivative 0; exp omits only 0 and fails the two-point premise; conjugation is an orientation-reversing isometry and not holomorphic | orientation premise and two omitted points are both needed |
| 1.2 uniqueness | F = z, G = iz: ζ = i, norms 1 = 1; F = 2z, f = z lifts to z/2; z² has derivative 0, not a cover; a cover of one component is not `SurjOn` the whole Ω | fields discriminate |
| 1.3 radius | 𝔻: set {1}, sInf 1; D(0,2): {2}; no cover: sInf ∅ = 0 in Lean, documented as junk | agree |
| 1.4 extremality | F = 2z into D(0,2): φ = z gives 1 < 2, φ = 2iz gives 2 = 2 with lift iz | both directions |
| 1.5 monotonicity | 𝔻 ⊂ 2𝔻: lift z/2, radii 1 ≤ 2 | agree (R02 locator) |
| 1.6 deck realisation | annulus via exp: deck translations 2πik, no interior fixed point; identity cover has trivial deck group | includes non-cofinite domains |
| 1.7 `finite_puncture_cusp_comparison` | S = {0,1,∞}: 3 cusps, area 2π; |S| = 2 excluded by `3 ≤ S.card`; Γ := {g : f∘g = f} is the full deck group of a universal cover, hence discrete; `chartAt` at a finite p is the affine chart (u(0) = p, u′(0) = c ≠ 0) and at ∞ the inverse chart | guards and chart conventions match the pins |
| 1.7 primitive chart Check | τ = (w/2πi) log(X−p) + h: τ‴/τ′ − (3/2)(τ″/τ′)² = 2/u² − 3/(2u²) = 1/(2u²) | double-pole coefficient 1/2 independent of w, c |
| 1.7 nonprimitive generator | X − p = c q_m^m + …: first q_m-coefficient 0 for m ≥ 2 | detects the wrong coordinate |
| 1.8 `RootsCover` | F₂ built from λ: F₂′(0) = 4.37686 real positive; F₂∘(iz) has derivative 4.37686·i, imaginary part ≠ 0, excluded by `realDerivative` | orientation field discriminates |
| 1.10 equivariance | theta cover: F₂(−z) + F₂(z) = 2·10⁻¹⁵ at z = 0.3 + 0.2i; N = 3: r̃₃·(2i) = 0.39970 + 0.61538i, C⁻¹ before 1/3, after −1/6 − 0.288675i = ζ₃⁻¹/3 | displayed matrix is the inverse rotation; README says so |
| 1.11 / 1.12 descent | F = az + O(z^{N+1}) gives G(w) = a^N w + O(w²); at a nonzero zero of F, G′(z^N) = 0 | not an unramified cover; derivative formula agrees |
| 2.1 Schwarzian | S(2z+1) = 0; S(z²)(1) = −3/2; S(1/z)(1) = 6 − (3/2)·4 = 0 | agree |
| 2.2 chain rule | f = g = z² at 1: S(z⁴) = −15/2 = (−3/2)·4 − 3/2 | squared derivative essential |
| 2.5 accessory formula | N = 2 companion, X = 2: double-pole sum 49/72, simple-pole sum (3/4)/3 − (3/4)/1 = −1/2, total 13/72 = 0.180556; rational formula (1+3X²)/(2X²(X²−1)²) = 0.180556 | agree |
| 2.6 constraints | X⁻¹: Σm; X⁻²: Σ(1/2 + m p); X⁻³: Σ(p + m p²) | exactly the three displayed sums |
| 2.7 symmetric parameters | N = 3, X = 1/(0.5+0.2i): Hempel sum with m₀ = 0, m_k = −(2/3)ζ₃^{−k} equals (1 + 8X³)/(2X²(X³−1)²) to 10⁻¹⁵; N = 2: c = −3/4 | agree |
| 2.8 `roots_inverse_schwarzian` | N = 2, x = 0: 3/2; theta cover: −S(F₂)(z)/F₂′(z)² at z = 0.2+0.1i gives −0.41344 + 5.65098i, formula at x = F₂(z) gives −0.41349 + 5.65092i (finite differences); N = 3 Hempel sum with m_k = −(1/3)ζ⁻ᵏ at x = 0.5+0.2i equals (8x + x⁴)/(2(x³−1)²) to 10⁻¹⁵; double pole at ζ: coefficient N²ζ^{N−2}/(2N²ζ^{2N−2}) = 1/2; at ∞: ~1/(2x²) | formula confirmed independently of CDT |
| 2.9 inverse equation | N = 2: η₂ = 1 − 3x²/8 − 47x⁴/384, η₁ = x − x³/8; quotient x + x³/4 | matches J₂ |
| 3.1 / 3.2 Blaschke | b₀ = z; b₁ ≡ −1 (raw 0/0 at z = 1 would give 0); empty product 1; (a = 0, m = 2) gives z², norm 1/4 at 1/2 | boundary extension discriminates |
| 3.3 / 3.4 / 3.5 Herglotz | g = e^z, R = 1: L = z, L(0) = 0; derivative kernel 2w/(w−z)²; G = i: boundary integral 0, exponential 1, phase i restores G; G = 2i: exponential 2, phase i | imaginary constant needed |
| 3.7 `quotient_representation` | g ≡ 0: m = 0, h = 1 works; g = 2: h = 1 gives log 1 ≤ log 2 + ε and log 2 ≤ log 2 + ε; general case: h = exp(m(ρ,g) − H_ρ[log⁺|g|]) on a slightly larger circle ρ > 1, log|h| ≤ m(ρ,g) and log|hg| ≤ m(ρ,g) by subharmonicity of log|g|, m(ρ,g) → m(1,g) | theorem holds without Blaschke factors; the stated form is sound |
| 3.8 optimality | with A = max of the two suprema and h(0) = 1: A − log|h| ≥ 0 pointwise, so log⁺|g| ≤ A − log|h|; Jensen gives ∫log|h| ≥ 0; hence m(1,g) ≤ A | agree |
| 4.1 Gauss equation | a = −1, b = c = 1: 1 − x, residual −(1−x) + (1−x) = 0 at x = 2; c = 0 excluded | agree |
| 4.4 `inverseRatio` | J₂′(0) = 1.0000003, J₂‴(0) = 1.5016 (finite differences, exact 1, 3/2); S(J₂)(0.2) = 1.64933 vs (3+u²)/(2(u²−1)²) = 1.64931 | germ matches the Schwarzian equation |
| 4.5 `inverseRatio.cover_inverse` | theta cover, a = γ₂: F₂(J₂(x)/a) = 0.3000000000000005 at x = 0.3, 0.2 + 0.5i at x = 0.2+0.5i, −0.6000000000000003 at x = −0.6 | inverse germ confirmed to 10⁻¹⁵ |
| 4.6 connection formula | a = 1/2, 1/4, 3/4 at x = 0.1: ₂F₁(a,a;2a;0.9) = 1.6412644143, 1.2979997565, 2.0543241699; Γ(2a)/Γ(a)²·Σ_k (a)_k² x^k/(k!)²(−log x + 2(ψ(k+1) − ψ(k+a))) = 1.6412644143, 1.2979997565, 2.0543241698 | agree; k = 0 term is −log x − 2γ − 2ψ(a) |
| 4.7 digamma control | ψ(2) − ψ(3/2) = 0.386294 = 2log2 − 1; ψ(2) − ψ(5/4) = 0.650238; wrong index ψ(1) − ψ(3/2) = −0.613706 | index k+1 pinned |
| 5.1 / 5.3 `gammaRadius` | N = 2, 3, 10: 4.376879230453, 2.581056539840, 1.320306382656; alternative expression gives the same; Γ(1/4)⁴/(4π²) = 4.376879230453; Γ(1/6)³/(12π^{3/2}) = 2.581056539840; N = 1: Γ(0) = 0 in Lean, value 0 | agree |
| 5.5 `roots_conformal_radius` independent derivation | λ′(i) = iπλ(1−λ)θ₃(i)⁴ with λ(i) = 1/2; F = 2λ∘C − 1, C′(0) = 2i; |F′(0)| = πθ₃(i)⁴ = π·π/Γ(3/4)⁴ = Γ(1/4)⁴/(4π²) by reflection Γ(1/4)Γ(3/4) = π√2; numerically πθ₃(i)⁴ = 4.3768792304529525 | the N = 2 case of the Gamma formula is confirmed exactly |
| 5.4 boundary limit | Γ(3/2)Γ(1/4)²/(Γ(1/2)Γ(3/4)²) = 4.37687923 = γ₂; s₂(0.9999) = 2.637 (logarithmic approach) | limit value agrees |
| 5.6 log-Gamma series | DLMF 5.7.3 plus log(1+z) = Σ(−1)^{k+1}z^k/k: −γz + Σ_{k≥2}(−1)^kζ(k)z^k/k; coefficients −γ, ζ(2)/2, −ζ(3)/3 | sign and branch agree |
| 5.7 odd-zeta series | 2L(1/2N) + L(−1/N) − 2L(−1/2N) − L(1/N): linear terms cancel, even k cancel, odd k = 2j+1 give (2^{2j}−1)ζ(2j+1)/(2^{2j−1}(2j+1)N^{2j+1}); j = 1: ζ(3)/(2N³); j = 2: 3ζ(5)/(8N⁵) | agree, positive, |z| ≤ 1/2 inside the disc |
| 5.8 `positive_expansion` | E_N = γ_N/16^{1/N} − 1 − ζ(3)/(2N³) − 3ζ(5)/(8N⁵): N = 2, 3, 10, 100 gives 6.94·10⁻³, 4.32·10⁻⁴, 2.12·10⁻⁷, 1.84·10⁻¹³; N⁶E_N = 0.444, 0.315, 0.212, 0.184 → ζ(3)²/8 = 0.1806 | positive, O(N⁻⁶), limit coefficient as the Examples say |
| 6.1 / 6.6 / 6.8 areas | N = 2: ideal 4-gon 2π, Φ quadrilateral π, Ψ triangle π/2; N = 3: 4π, 4π/3, 2π/3; Gauss–Bonnet for Ψ’s orbifold (cone orders 2N at 0 and 2 at the mid-side, one cusp) gives 2π(1/2 − 1/2N) = π − π/N | triangle area equals half the quadrilateral, consistent with index two |
| 6.2 width | C(e^{iθ}) = −cot(θ/2), so the vertical sides at ∓cot(π/2N) are 2cot(π/2N) apart; N = 2: 2.000000, N = 3: 3.464102; 4ℤ ⊊ 2ℤ for the squared generator | full-stabiliser law discriminates |
| 6.3 presentation | N = 2: t = [[1,2],[0,1]], u = rtr⁻¹ = [[1,0],[−2,1]], tu = [[−3,2],[−2,1]] ≠ ut = [[1,2],[−2,−3]] projectively | nonabelian, rank 2 |
| 6.4 index | Φ₂/Γ₂ of order 2, area ratio 2π/π; N = 3: 4π/(4π/3) = 3; r̃ fixes i, so is not a deck element | agree |
| 6.5 largest invariance group | s has order 2N and the stabiliser of 0 in Φ_N is ⟨r⟩ of order N, so s ∉ Φ_N; F₂(z)² vs F₂(iz)² at z = 0.1 differ (0.174 vs −0.211) | identity Möbius option excluded |
| 6.7 `half_rotation_involution` | theta cover, N = 2: 1 − F₂(iz)² and 1/(1 − F₂(z)²) at z = 0.1+0.2i: both 0.40643150 + 0.39218872i (|diff| 6·10⁻¹⁶); z = −0.3+0.4i: −0.14558288 + 0.33250062i; z = 0.5−0.1i: −89.0060 − 79.1839i (|diff| 2·10⁻¹¹); structurally G∘s = M∘G with M fixing 0 and swapping {1,∞}, forcing M(x) = x/(x−1) | identity confirmed numerically and by the uniqueness argument |
| 7.1 `discCounting` | r = 1/2: 1/z gives log(1/2) < 0; constants and 0 give 0; pole at a = 1/2 on the boundary has weight log(r/|a|) = 0; Lean summand at z = 0 is D(0)·log(r·0) = 0, restored by the separate centre term | centre term matches `circleAverage_log_norm` |
| 7.2 `discCharacteristic` | 1/z at r = 1/2: m = log 2, N_D = −log 2, T = 0; 1/(4z): m = 0, N_D = −log 2, T = −log 2; constants 0, 1, 2 give 0, 0, log 2 | no false nonnegativity |
| 7.3 / 7.4 | 1/(z − 1/4), r = 1/2: N_D = log 2 ≥ 0; 1/z violates the regular-centre premise; the representative 2 at 0, 1 elsewhere: divisor 0, count 0, discontinuous | continuity guard is needed |
| 7.5 Jensen | f = 2z, r = 1/4: mean log|f| = −log 2 = log(1/4) + log 2 = N_D(1/f) − N_D(f) + log|c| | agree |
| 7.6 inversion | 1/(4z), r = 1/2: T(f) − T(1/f) = −log 2 − log 2 = log|1/4| | regular centre not needed |
| 7.7 / 7.8 `local_first_main_translation` | f = 2, a = 1: |log 2 − 0 − 0| = log 2 = RHS (sharp); f = 1/z, a = 1: c = 1, residual = m(r, z/(1−z)); computed 0.254967 at r = 0.9 and 0.316384 at r = 0.99, both ≤ log 2 = 0.693147; f ≡ a excluded by order ⊤ | agree |
| 7.9 power law | f = 2, n = 3: 3log 2; n = 0: 0 = 0; 1/(4z), n = 2, r = 1/2: −2log 2 both sides | agree |
| 7.10 monotonicity | h = 2z: m(1/4) = 0 ≤ m(3/4) = log(3/2); h = 2: equality | agree |
| 8.1 cusp asymptotic | source (5.2.10) has +2γ, correct constant is 2ψ(1) = −2γ (line 2898 uses ψ(1)); README uses −2γ | roadmap carries the corrected form |
| 8.3 horoball | g = id, D = 1: E = 2/(1+1) = 1, centre 1/2, tangent at 1; g = diag(2,1/2): E = 2/(1+4) = 2/5; −g leaves a² + c² unchanged | agree |
| 8.4 Shimizu for Φ̃_N | the quadrilateral’s two vertical sides are paired by t̃_N, so the stabiliser of ∞ in Φ̃_N is still ⟨t̃_N⟩ of width h_N; c ≠ 0 gives |c| ≥ 1/h_N; c = 0 gives a = ±1 and h_N ≥ 2 ≥ 1; N = 2: id and r̃ both give h(|a|+|c|) = 2 | statement for the larger group holds |
| 8.5 exceptional set | M > 0: |F(0)^N − 1| = 1 > e^{−MN}, so 0 ∉ S; t^N = 1 − e^{−MN}/2 is attained, giving z ∈ S; |F| > e^M + 1 implies |1 − F^N| > e^{MN}, and the involution gives |1 − F(s⁻¹z)^N| < e^{−MN}; sS = s⁻¹S = {|1 − F^N| > e^{MN}} | membership witnesses and the rotated set agree |
| 8.6 / 8.7 `large_n_max_growth` | E ≤ 4h_N²/D ≤ 64/M with h_N ≤ 4N/π, D = N²M/π²; M = N/(1−r) gives ≤ 64(1−r)/N < 1 − r for N > 64; off sS: log|F| ≤ log(e^M + 1) ≤ M + log 2 ≤ 2N/(1−r); theta cover N = 2: sup_{|z|=r} log|F₂| = 2.631 (r = 1/2), 27.77 (r = 0.9) against 2M = 8, 40 | consistent with C = 2 beyond the threshold; no claim for every N |
| 9.1 kernel mean | R = 1, r = 1/2, w = 1: sampled mean 1.3333333 = 1/(R² − r²) | agree |
| 9.2 boundary L¹ | g = e^z, R = 1: mean |cos θ| = 2/π = 2·(1/π) | agree |
| 9.3 log mean | p = μ{H ≥ 1}: ∫log⁺H ≤ p log(∫H/p) ≤ log⁺∫H + p log(1/p) ≤ log⁺∫H + 1/e; H = e on measure 1/e: equality 1/e | constant attained |
| 9.4 `normalized_log_derivative` derivation | L′(z) = ∫ReL(w)·2w/(w−z)²dμ, ∫|ReL| = 2m(R,g); by 9.3 and 9.1, m(r, g′/g) ≤ log⁺(4Rm/((R−r)(R+r))) + 1/e ≤ log⁺(2Rm/(r(R−r))) + 1/e since 4/(R+r) ≤ 2/r; instance g = e^{5z}, R = 1, r = 1/2: LHS log 5 = 1.6094, RHS 2.9120 | the stated bound follows and is not sharp |
| 9.5 radii | r = 0.1: ρ = 1/4, R = 0.55, R − ρ = 0.30 ≥ 0.225; r = 3/4: ρ = 3/4, R = 7/8, 1/8 ≥ 1/16; (1−r)/2 = 1/8 < r fails | agree |
| 9.7 / 9.8 / 9.9 pivot | p₂(2) = 4/3 = (2/2)(1/1 + 1/3); p_N(0) = 0; (F/(NF′))·(f′/f) with f = 1 − F^N equals −F^N/(1 − F^N) = p_N(F) exactly | identity is exact algebra |
| 9.10 lower bound | with c(1 − F^{−N}, 0) = −a^{−N}: T(p∘F) = T(1 − F^{−N}) + N log a ≥ N T(F) − N log a − log 2 + N log a = N T(F) − log 2 | the stated −log 4 is weaker, hence valid |
| 9.12 three estimates | first main theorem with a = 1 and c(F^N − 1, 0) = −1: |T(F^N) − T(1/(F^N−1))| ≤ log 2; p∘F = 1 + u∘F gives ≤ log 2; pairwise ≤ log 4; theta cover r = 1/4: 0.28388, 0.28388, 0.38036; r = 1/2: 1.56666, 1.56666, 1.47701 | agree |
| 9.13 / 9.15 | g = 1 − F: g(0) = 1, zero-free; F′/(1−F) = a + O(z); F/F′ = z + O(z^{N+1}) has centre pole count 0 and trailing coefficient 1 | agree |
| 9.14 divisor | simple zero z₀ of F: F′/F and 1/F both have a simple pole; F/F′ has a simple zero | multiplicity, not residue |
| 9.17 / 9.18 absorption | (N−1)T(F) ≤ error + log 4; N/(N−1) ≤ 2 for N ≥ 2; L_N(r) ≤ log(2CN/(1−r)) ≤ C′log(N/(1−r)) since log(N/(1−r)) ≥ log 2 > 0; finite completion C* = max(C, C₂, …, C_{N₀−1}), empty list when N₀ = 2 | agree |
| 9.19 `uniform_mean_growth` | theta cover N = 2: means (F², p∘F, 1/(F²−1)) at r = 1/4: 0.284, 0.284, 0.380 vs log 8/3 = 0.981; r = 1/2: 1.567, 1.567, 1.477 vs 1.386; r = 0.9: 4.987, 4.531, 4.510 vs 2.996 | ratios ≤ 1.67 on these samples; C independent of N, r, F in the quantifier order |

## Not verifiable

- **Hem88**, Theorem 3.1 and Lemma 3.3, pp.97–115: settled as waived; cited by locator only. CDT-journal line 2491–2497 confirms that CDT invokes exactly those two results for the accessory-parameter form and the solution-quotient description.
- **KR16**, §1: settled as uncertified (paywalled); cited by locator only. The roadmap does not depend on its statements: §9.11 owns its effective fixed-level bound.
- **Tsu52**, Theorem 11 (line 610, printed p.25): the cached extraction carries the theorem heading but not its displayed formula; the roadmap only cites it as the asymptotic motivating §9.11, whose effective all-radius constant is this roadmap’s own target.
- The uniform constants and thresholds (§§4.8, 5.8, 8.1–8.7, 9.4–9.19) are proof targets; the numerical samples above refute nothing and certify nothing beyond the sampled points.

## Source issues

- **Misprint** in CDT-journal at Lemma 5.1.2, (5.1.3), p.668 and the proof of Proposition 5.2.1, p.674 (line 2816): the source says the displayed rotation matrix multiplies the cover’s values by ζ_N; under the standard left action it multiplies by ζ_N⁻¹ (N = 3 witness above); affects a stated result.
- **Misprint** in CDT-journal at Lemma 5.2.9, (5.2.10), p.676 (line 2873): the source says the logarithmic constants are −log x + 2γ − 2ψ(·); they should read −log x − 2γ − 2ψ(·), since ψ(1) = −γ (line 2898 uses 2ψ(1)); affects a stated result.
- **Error** in CDT-journal at proof of Lemma 5.2.9, p.676 (lines 2891–2892): the source says to bound |ψ(k) − ψ(k+a)|, maximised at k = 1, a = 1/4; the series coefficient is ψ(k+1) − ψ(k+a), maximised at ψ(2) − ψ(5/4); affects the proof.
- **Gap** in CDT-journal at proof of Lemma 5.2.18, p.678 (lines 2969–2979): the source says Shimizu for Γ̃_N but applies the diameter bound to every Φ_N-translate; the bound for Φ̃_N follows because its stabiliser of ∞ is still generated by t̃_N; affects the proof.
- **Error** in CDT-journal at proof of Lemma 5.2.18, p.678 (lines 2980–2981): the source says the large-value set {|F_N| > e^M + 1} lies in S(M,N); points of S have |F_N| < 2, so the set lies in the half-rotated translate sS(M,N); affects the proof.
- **Misprint** in CDT-journal at proof of Corollary 6.2.11, p.684 (line 3418): the source says outer radius R := (1−r)/2; it should be (1+r)/2, which exceeds r; affects the proof.
- **Misprint** in McMullenRS at §16, p.147 (lines 5350–5351): the source says (x+1)/(x−1) maps (−1,1) onto (0,∞); it should be (1+x)/(1−x); affects nothing.
