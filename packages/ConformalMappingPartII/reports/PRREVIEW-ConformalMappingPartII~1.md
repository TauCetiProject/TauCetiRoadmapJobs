# Review of ConformalMappingPartII (pull request #1407 at 552db86)

**Verdict:** needs changes

Independent AI review. The findings concern this folder and its declared supplier contract. No pull-request files were changed.

## R01 (P2) — State the finite-puncture compactification headline

**Location:** `TauCetiRoadmap/ConformalMappingPartII/Suggested.lean:13`, and `TauCetiRoadmap/ConformalMappingPartII/README.md:131`, §1.7 at line 330. The docstring says the finite-puncture cusp comparison is “not statable at the pins”.

**Claim:** The absence of the constructed comparison map prevents stating its existence theorem.

**Witness:** `TauCeti/Analysis/Complex/Fuchsian/Compactification/Basic.lean:74` supplies `Subgroup.CompactifiedQuotient`; `Compactification/Manifold.lean:260` supplies its complex manifold structure. `TauCeti/Geometry/Manifold/Instances/OnePoint.lean:230` supplies the target sphere structure. A direct existential signature elaborates.

**Repair:** Add the §1.7 headline on these native carriers, with its covering, surjectivity and holomorphy hypotheses, identifying the subgroup by the actual covering action. Quantify the biholomorphism in the conclusion and require that it extends the cover and sends precisely the cusp points to the punctures. State the primitive-coordinate/nonzero-first-coefficient consequence with the native cusp charts. Remove this headline from the list claimed unstatable. Constructing the map is the theorem's work; it need not precede its statement.

I tested the central extension/cusp-bijection statement below, using only `import Mathlib` and the three modules `TauCeti.Analysis.Complex.Fuchsian.Compactification.Manifold`, `TauCeti.Analysis.Complex.Fuchsian.Covolume`, `TauCeti.Geometry.Manifold.Instances.OnePoint`. It elaborated with exactly one `sorry` warning and no options or stand-in definitions. The half-plane source is equivalent to the README's disc source by its imported Cayley map.

```lean
open scoped MatrixGroups Manifold ContDiff
open Set MulAction

theorem finite_puncture_comparison_probe
    (S : Finset (OnePoint ℂ)) (hS : 3 ≤ S.card)
    (f : UpperHalfPlane → OnePoint ℂ)
    (hf : ContMDiff 𝓘(ℂ) 𝓘(ℂ) ω f)
    (hm : ∀ z, f z ∉ S)
    (hc : IsCoveringMap (fun z ↦
      (⟨f z, hm z⟩ : {x : OnePoint ℂ // x ∉ S})))
    (hs : ∀ x ∉ S, ∃ z, f z = x) :
    ∃ Γ : Subgroup PSL(2, ℝ),
      (∀ g : PSL(2, ℝ), g ∈ Γ ↔
        ∀ z : UpperHalfPlane, f (g • z) = f z) ∧
      ∃ hd : DiscreteTopology Γ, letI := hd;
        Γ.IsCofinite ∧
        ∃ e : Diffeomorph 𝓘(ℂ) 𝓘(ℂ)
          Γ.CompactifiedQuotient (OnePoint ℂ) ω,
          (∀ z : UpperHalfPlane,
            e (.ofQuotient (Quotient.mk _ z)) = f z) ∧
          Set.range (fun c : Γ.CuspOrbit ↦ e (.ofCusp c)) =
            (S : Set (OnePoint ℂ)) := by sorry
```

For the three-punctured sphere this tests three cusp images, including infinity, and quotient area 2π; it does not assume the extension exists. No repair to the mathematics of §1.7 is requested.

## R02 (P2) — Remove the redundant Little Picard supplier gap

**Location:** `packages/ConformalMappingPartII/design/plan.json:2`, compared with `TauCetiRoadmap/ConformalMappingPartII/README.md:257` and line 127.

**Claim:** `gap:little-picard` asks ModularForms to supply an independent proof that an entire function omitting two distinct finite values is constant.

**Witness:** README §1.1 constructs a disc cover of ℂ∖{0,1} without Picard. For any entire h omitting b≠c, `(h−b)/(c−b)` lifts to that disc; Liouville makes the lift, and hence h, constant.

**Repair:** Remove this obsolete entry from the plan's `gaps` list. Retain the scope assignment of the separate modular-uniformization programme, without making that second proof a prerequisite of this package. The README has no matching `What ModularForms must provide (gap:little-picard)` contract and no target consumes it. This violates the required minimality of a declared gap: the package's own §1.1 route supplies the asserted conclusion.

The repaired dependency route handles arbitrary b≠c, since c−b≠0. As a control, exp(z) omits only zero and remains nonconstant; no lift to the twice-punctured target is available. The issue is the redundant request, not the supplier's implementation status.

## R03 (P3) — Repair links to the completed base roadmap

**Location:** `TauCetiRoadmap/ConformalMappingPartII/README.md:7` and subsequent ConformalMapping links, including lines 186, 287 and 547.

**Claim:** The links locate ConformalMapping at `TauCetiRoadmap/ConformalMapping/README.md` on main.

**Witness:** The reviewed content main has `Completed/ConformalMapping/README.md`; its lines 110–134 contain L1–L4. The linked active-roadmap path does not exist there.

**Repair:** Point these links to `Completed/ConformalMapping/README.md` and its actual anchors. The named L1–L4 suppliers do exist, so this is a locator repair, not an unowned prerequisite. Tested by resolving the replacement path and reading those sections on main.

## Verified sound

The review covered all **95 numbered targets**, their APIs and Checks, all **25 Lean declarations**, the **15 seeded source targets**, the additional source locators discussed below, and every named supplier's relevant section. The repository's normative README and CONTRIBUTING were read; the main-branch ConformalMapping, UniversalCovers and FuchsianOrbifolds roadmaps supplied the shape and ownership comparisons.

The worker's head-specific gate passed every check, including the targeted build. The outside-folder diff was empty. A separate `lake env lean` elaboration of the original file exited successfully with **13 warnings, all for `sorry`**. A scratch copy with `#check @name` for all 25 declarations also elaborated; comparison with the README found **no dropped section binders**. All 13 theorem bodies were separately replaced by `by simp` in one scratch copy: none closed. Reading the definitions and pinned APIs found no alternative `rfl`, instance, or single-library-lemma padding witness.

The citation resolver’s seven leads were resolved: TeschlODE and McMullenRS are source keys, and the other five names are declarations of this acceptance test, confirmed by the elaborated signatures. None is a missing supplier.

The mechanical supplier check produced:

```text
depcheck: 204 roadmaps, 1486 edges, 0 problem(s)
```

There were no UPWARD, CYCLE or moved lines. Every `*Needs:*` line was read. The finite-type metric adapter uses ComplexCurveModuli D0.4 and RiemannianGeometry R4.3/R4.7 before general disc-cover existence; it does not use the roots polygon to establish the cusp comparison needed by the Schwarzian. The arithmetic, modular and later geometric applications remain consumers. R02 records the obsolete gap separately.

The 13 stated headlines are global analytic initial values (§0.4), noncompact surface coordinates and hyperbolic-domain covers (§1.1), roots inverse Schwarzian (§2.8), quotient representation (§3.7), inverse-ratio germ matching (§4.5), exact Gamma radius (§5.5), positive expansion (§5.8), half rotation (§6.7), translated local first main theorem (§7.8), large-level maximum growth (§8.7), normalized logarithmic derivative (§9.4), and uniform mean growth (§9.19). Their parameters, derivative directions, centre terms and constant quantifier order agree with their prose. The README additionally designates finite-puncture cusp comparison, symmetric polygons/presentations, continued connection formula and uniform cusp asymptotic as headlines. R01 refutes the stated obstruction for the first of these; the continued-branch statements require a genuine continuation specification, not values of the native series outside its convergence disc.

**Seeded source audit.** Source line numbers below refer to the supplied cached editions, not another version. CDT uses printed journal pages 627–702. No passages were copied.

| Target | Text inspected and locator | Result |
|---|---|---|
| 1.5 | Mathlib `Analysis/Complex/Schwarz.lean:261,291` | The derivative bound applied to the based lift gives the claimed direction; the equality theorem is the stated companion locator. |
| 1.6 | CDT-journal line 2328, §5.1 setup, p.667; native cover atlas/lifts | CDT illustrates the finite-puncture case. The general-domain claim follows by lifting and the disc automorphism classification; discreteness follows from covering sheets, without finite covolume. |
| 1.11 | CDT-journal line 2552, Definition 5.1.15, p.671; native descent | Factorization and root independence agree. The extra ramification conclusion follows from simple zeros of F and an unramified source power map away from zero. |
| 2.7 | CDT-journal lines 2495–2549, (5.1.13)–(5.1.14), pp.670–671 | Finite companion punctures include zero; m₀=0 and the coefficient −(N+1)/(2N) agree. |
| 2.9 | CDT-journal lines 2420–2442, Lemma 5.1.8 and (5.1.11), p.669 | Coefficient 4 and the normalized quotient agree. An arbitrary solution basis would require a Möbius change, correctly retained. |
| 3.3 | CDT-journal lines 3100–3125, (6.1.9)–(6.1.11), p.680 | Zero-free closed-disc neighbourhood, g(0)=1 and the missing imaginary constant are treated correctly. |
| 4.6 | CDT-journal lines 2654–2668, Lemma 5.1.20, p.672; DLMF-15-8 lines 516–520; DLMF-15-2 lines 145–149 | m=0,b=a and restoration of Γ(2a) give the formula. Positive a excludes the source's unguarded denominator poles. Compatible logarithmic continuation and x≠0 are retained. |
| 4.7 | CDT-journal lines 2888–2898, Lemma 5.2.9 proof, p.676; DLMF-5-7 lines 252–256 | The corrected k+1 difference is positive and decreases in k and a; the printed proof uses a different difference. |
| 5.2 | CDT-journal lines 2382–2395, Theorem 5.1.4, p.668; `Real.Gamma_pos_of_pos` | All arguments are positive at N≥2. N=1 is correctly excluded. |
| 5.5 | Same theorem; CDT-journal lines 2669–2730, pp.672–673 | The inverse cusp limit gives the derivative norm, independent of source rotation. |
| 5.7 | CDT-journal lines 2731–2737, p.673; DLMF-5-7 lines 127–132 | Odd-zeta coefficients and signs agree after expanding log(1+z); convergence follows from 1/N≤1/2. |
| 8.4 | CDT-journal lines 2969–2979, Lemma 5.2.18 proof, p.678; native Shimizu at line 249 | The roadmap correctly needs the full Φ group, including its c=0 branch, and not just Γ. |
| 8.5 | CDT-journal lines 2962–2985, Lemma 5.2.18 proof, p.678 | The roadmap correctly rotates the exceptional set, and makes the horoball threshold quantitative. |
| 9.3 | CDT-journal lines 3154–3184, Lemma 6.1.7 proof, p.681 | Jensen on H>1 and sup t log(1/t)=1/e give the displayed probability-mean bound. |
| 9.10 | CDT-journal lines 3221–3233, (6.2.3), p.682 | Two translations cost 2 log 2; the reciprocal step has centre constant of modulus one. |

Additional source checks: TeschlODE lines 6234–6254 support complex continuation and global initial values on simply connected domains, including unscaled companion-system jets. Uniformization lines 39–40 and 148–160 support the noncompact coordinate and surface Perron/Dirichlet route. Lines 213–251, 253–380, 383–461 and 463–503 were checked for the Green, bordered-disc, exhaustion and normalized limit targets. The roadmap correctly restricts its Green construction to a compact bordered surface with nonempty boundary; Proposition 9 overstates the noncompact case (see Source issues): for K=ℂ, a logarithmic Green function would have circular mean c−log r, negative for r>exp(c), contradicting positivity. McMullenRS lines 318–334 give the triply punctured model and lines 5348–5365 fix the curvature −1 metric and areas. DLMF-15-10 equation 15.10.1 gives Gauss's equation. Tsu52 line 610, Theorem 11, printed p.25, was inspected in the cached PDF because the extraction omits the formula: it gives T(r,w)=(p−2)⁻¹ log(1/(1−r))+O(1). This supports the fixed-puncture asymptotic; §9.11 correctly makes effectivity and the entire small-radius range additional proof targets. The settled Hem88 and KR16 locators are listed under Not verifiable.

**Pinned-library audit.** The following are the principal declarations whose definitions or hypotheses were opened. Paths are relative to the respective pinned library; they are not claims about a newer version.

| Objects | Declaration and pinned location | What was checked |
|---|---|---|
| Native covering and regularity | `IsCoveringMap`, `Mathlib/Topology/Covering/Basic.lean:287`; `TauCeti.UniversalCover`, `TauCeti/AlgebraicTopology/UniversalCover/Basic.lean:68`; `simplyConnectedSpace`, `Covering.lean:183` | Covering alone does not impose surjectivity; the roadmap supplies it explicitly. The native carrier retains endpoint and based-path class. |
| Lifted atlas | `instChartedSpace`, `instIsManifold`, `isLocalDiffeomorph_proj`, `contMDiff_iff`, `TauCeti/Geometry/Manifold/Instances/UniversalCover.lean:64,68,72,102`; chart equation in `Instances/Comap.lean:81` | Projection charts and topology are native. Regularity of a lift requires continuity as well as projected regularity. |
| Schwarz and bounded entire maps | `Complex.norm_deriv_le_one_of_mapsTo_ball`, `affine_of_mapsTo_ball_of_norm_dslope_eq_div`, `Mathlib/Analysis/Complex/Schwarz.lean:261,291`; `Differentiable.exists_eq_const_of_bounded`, `Liouville.lean:126` | Positive radius, actual map-into-ball and complex differentiability hypotheses are available where used. |
| Riemann maps and rotations | `TauCeti.IsNormalizedRiemannMapOn`, `TauCeti/Analysis/Complex/Conformal/RiemannMapping/Normalization.lean:122`; rotation uniqueness, `Conformal/UnitDisc/Automorphism/Rotation.lean:72` | Domain-to-disc direction; positive real derivative, and equality on the disc rather than outside it. |
| Cayley and Möbius factors | `bijOn_I_mul_one_add_div_one_sub_ball`, `I_mul_one_add_sub_I_div_add_I_div_one_sub`, `TauCeti/Analysis/Complex/UpperHalfPlane/Cayley.lean:183,159`; `unitDiscMoebius`, `coe_unitDiscMoebius`, `Conformal/Moebius.lean:38,48` | C(0)=i, C(1/2)=3i; native factor has z−a, not a−z. |
| Continuation and descent | `IsAnalyticContinuationAlong`, `Conformal/Continuation/Basic.lean:190`; `descendPow`, `descendPow_pow`, `differentiableOn_descendPow`, `RootsOfUnity/Descent.lean:67,92,144`; `image_pow_ball`, `RootsOfUnity/Quotient.lean:147` | Nonzero exponent, complete target, open domain and root invariance; ODE continuation existence is not supplied by the germ-family predicate. |
| Pre-Schwarzian | `TauCeti.logDeriv_deriv_comp`, `TauCeti/Analysis/Complex/Conformal/PreSchwarzian.lean:72`; `iteratedDeriv`, `Mathlib/Analysis/Calculus/IteratedDeriv/Defs.lean:55` | Nonzero derivatives, correct second-derivative composition term; no analytic Schwarzian construction found under another name. |
| Canonical decomposition | `MeromorphicOn.exists_canonicalDecomp`, `Complex.CanonicalDecomp.divisor_eq_divisor`, `Mathlib/Analysis/Complex/CanonicalDecomposition.lean:314,390` | Closed-disc meromorphicity, nonzero germs; the remaining divisor is the boundary divisor. |
| Herglotz and Poisson | `DiffContOnCl.circleAverage_herglotzRieszKernel_smul_re_add`, `TauCeti/Analysis/Complex/Herglotz.lean:123`; real-part and differentiated kernel formulas, `Mathlib/Analysis/Complex/Poisson.lean:252,301` | Imaginary centre constant and kernel derivative 2w/(w−z)²; no second general Herglotz theorem is planned. |
| Meromorphic conventions | `MeromorphicAt`, `Mathlib/Analysis/Meromorphic/Basic.lean:36`; `MeromorphicOn`, line 494; order/removability and continuity bridge, `Order.lean:320,333`; `meromorphicTrailingCoeffAt`, `TrailingCoefficient.lean:38` | Native meromorphicity permits isolated wrongly assigned values. Continuity is needed for pointwise analyticity; infinite order has zero trailing coefficient. |
| Divisors | `MeromorphicOn.divisor`, `divisor_ball_support_finite`, `divisor_fun_inv`, `divisor_fun_pow`, `divisor_restrict`, `Mathlib/Analysis/Meromorphic/Divisor.lean:40,111,388,405,430` | Domain-local meromorphicity and finite support on compact subdiscs; infinite order becomes integer zero. |
| Circle means and value distribution | `Real.circleAverage`, `Mathlib/MeasureTheory/Integral/CircleAverage.lean:55`; `proximity`, `proximity_pow_top`, `Analysis/Complex/ValueDistribution/Proximity/Basic.lean:49,296`; `logCounting`, `LogCounting/Basic.lean:97,354`; `characteristic`, `CharacteristicFunction.lean:53` | Probability normalization, separate centre log r, global versus local divisors, n=0 power law. |
| Jensen and integrability | `MeromorphicOn.circleAverage_log_norm`, `Mathlib/Analysis/Complex/JensenFormula.lean:307`; logarithm integrability, `Analysis/SpecialFunctions/Integrability/Log.lean:122` and `PosLog.lean:65`; `ValueDistribution.characteristic_sub_characteristic_inv_of_ne_zero`, `Analysis/Complex/ValueDistribution/FirstMainTheorem.lean:65` | Jensen is local on a closed disc; the native characteristic inversion theorem instead requires global meromorphicity. The roadmap derives its local version through local Jensen. |
| Hypergeometric series | `ordinaryHypergeometric`, `ordinaryHypergeometric_eq_tsum`, `ordinaryHypergeometric_zero`, terminating-radius theorems and radius-one theorem, `Mathlib/Analysis/SpecialFunctions/OrdinaryHypergeometric.lean:81,105,116,149,154,204` | Native series sum, terminating cases and parameter poles. It is not a continued branch. |
| Gamma and digamma | `Real.Gamma_pos_of_pos`, `Complex.Gamma_ofReal`, `Gamma/Basic.lean:443,419`; reflection, duplication and complex nonvanishing, `Gamma/Beta.lean:490,596,453`; `Complex.digamma`, `digamma_one`, `digamma_apply_add_nat`, `digamma_one_sub`, `Gamma/Digamma.lean:48,56,72,94`; `Real.BohrMollerup.tendsto_log_gamma`, `Gamma/BohrMollerup.lean:293` | Positive arguments and excluded poles; ψ(1)=−γ; Bohr–Mollerup is a real pointwise limit, so local uniformity remains a target. |
| Fuchsian geometry | `Subgroup.IsCofinite`, `TauCeti/Analysis/Complex/Fuchsian/Covolume.lean:114`; `Subgroup.CuspDatum`, `Cusp/Datum.lean:167`; horodisc results, `Cusp/Horodisc.lean:209,224`; Shimizu and height bounds, `Shimizu.lean:249,269,310`; Dirichlet domain, `DirichletDomain.lean:63` | Cofiniteness includes discreteness; cusp data contain full stabilizer equality and positive width; height estimates exclude stabilizer cases. |
| Areas and missing-headline carriers | `UpperHalfPlane.volume_def`, `Mathlib/Analysis/Complex/UpperHalfPlane/Measure.lean:44`; `TauCeti.UpperHalfPlane.volume_triangle`, `TauCeti/Analysis/Complex/UpperHalfPlane/Triangle.lean:648`; ideal area, `UpperHalfPlane/IdealRegion.lean:210`; compactification and sphere carriers listed in R01 | Density y⁻²; triangle angles are interior angles; ideal limits must be supplied separately. R01's carriers really exist at the pin. |

**Ownership and supplier resolution.** Object searches used the roadmap search service, the supplied open heads, main, board packages and the two pinned libraries. All 25 fully qualified declaration names were considered; no collision was found. The substantive existing owners resolved as follows:

- `Completed/ConformalMapping/README.md:110`–134, L1–L4: normal families, disc automorphisms/Poincaré metric, planar Riemann maps, logarithms, roots and monodromy/reflection. Part II genuinely extends these to abstract cover surfaces and quantitative punctured-plane covers.
- `Completed/UniversalCovers/README.md`, Stages 0–2: based-path carrier, deck action and based lifts. The new `PointedCover` fixes a disc coordinate and does not reconstruct that carrier.
- `TauCetiRoadmap/FuchsianOrbifolds/README.md:193,235,263,286`, Layers 0,2,3,4: effective action, polygons, full cusp data and compactification. Part II owns identifying these with its specified punctured-plane cover, not generic Fuchsian geometry.
- `TauCetiRoadmap/DifferentialGeometry/README.md:357`, §2.3: smooth structures on covers; the stronger native complex atlas is consumed directly.
- `TauCetiRoadmap/ClassicalArithmeticCompletion/README.md:12529`, §6.20: simply connected conformal radius, including monotonicity and affine covariance. The cover radius is a wider-domain extension with an explicit comparison, not a replacement.
- `TauCetiRoadmap/DiophantineApproximationAndTranscendence/README.md:2972`, §5.1, especially its disc initial-value paragraphs: local matrix/scalar existence, uniqueness and dimension. The germ comparison and general-domain continuation here have additional content.
- `TauCetiRoadmap/RiemannianGeometry/README.md:657`–674 and 733–752, R4.3/R4.7: native-cover topology, completeness, curvature and Killing–Hopf; `TauCetiRoadmap/ComplexCurveModuli/README.md:50`, D0.4: finite-type complete conformal metrics and cusp ends. Both actually state the inputs attributed to them.
- `TauCetiRoadmap/PDE/README.md:285`–300, Lane C 12–15: Euclidean potential theory and boundary-barrier conditions. Surface chart compatibility and global envelopes here add content.
- At the supplied open heads, FormalConnectionsOpers §4's Schwarzian is a formal-coordinate oper action; PeriodsAndSpecialValues PS.8.10 is the particular j-invariant equation. Neither duplicates this analytic inverse-cover theorem. FuchsianOrbifoldsPartII's orbifold covering/cone theory and GroupActionsOnRiemannSurfaces' group-action constructions likewise do not own this roots-cover analysis. Board DiophantineApproximationAndTranscendencePartII explicitly consumes this roadmap's ODE, radius and quotient results; ModularFormsPartII consumes its N=2,3 covering examples. No new competing owner was found by these object searches.

**Adversarial computations.** Each row records actual values or symbolic coefficients on the two sides. A passing instance is a falsification test, not a proof of a universal theorem. Decimal values are ordinary floating-point checks, not certified error bounds. The F₂ numerical tests use the classical theta expression in CDT Example 5.1.22, with 2,048 equally spaced circle samples. Gamma/zeta comparisons used direct Gamma values and truncated positive series. “Keep” means no mathematical change indicated by that test; R01–R03 are independently witnessed above.

| Statement | Instances and computed values on each side | Result; change |
|---|---|---|
| Conventions: Cayley, derivative jet, Haar measure | C(0)=i, C(1/2)=3i and C⁻¹(3i)=1/2; jet of z² through order 2 is (0,0,2); mean of 1 is 1, not 2π. | Agree; keep. |
| 0.1 equation/companion/solution | y′+y=0: y=e⁻ᶻ gives −e⁻ᶻ+e⁻ᶻ=0, y=1 gives 1≠0. For y″=0, A(1,z)=(z,0) differs from (1,z)′=(0,1); correct vector (u+vz,v) gives both (v,0). n=0 fails 0<n. | Both positive and negative controls discriminate; keep. |
| 0.2 germ/jet equivalence | y″=0, x₀=0: jet(2+3z)=(2,3); inverse(2,3)=2+3z. For y‴=0, jet z²=(0,0,2), inverse returns z², not 2z². | Agree; keep. |
| 0.3 continuation | y′+y=0 continued once around a circle returns e⁻ᶻ, multiplier 1. For y′−y/(2z)=0 on ℂ∖{0}, continuation multiplies √z by −1, while still solving the same equation. | Continuation is not single-valuedness; keep. |
| 0.4 global initial values | y″=0, jet (2,3) at 0 gives y=2+3z and uniqueness difference has jet (0,0), hence zero. The √z example has monodromy −1 and is excluded by simple connectivity. | Agree; keep. |
| 0.5 meromorphic basis | zy′+y=0 has basis 1/z, order −1, monodromy 1. z²y′+y=0 has e^(1/z), also monodromy 1 but infinitely many negative Laurent powers. | Stronger basis condition is essential; keep. |
| 0.6 pole clearing | At α=0, p=z² and basis 1/z³: q(t)=t² gives q(p)/z³=z. q(t)=t gives 1/z and fails. For α=√2, q(t)=(t²−2)² clears a double pole and also vanishes at −√2. | Orders 4−3=1 and 2−3=−1; keep. |
| 1.1 noncompact coordinate | M=𝔻 and M=ℂ admit id with derivative 1 and inverse derivative 1. Sphere fails noncompactness; constant map has derivative 0 and cannot be a biholomorphism. | Sound cases; keep. |
| 1.1 surface Perron | Family of constants ≤3 has envelope 3, Laplacian 0, and is stable under replacement/maxima. Singleton {Re z²} has harmonic replacement itself, envelope Re z² with Δ=0. | Agree; keep. |
| 1.1 Dirichlet | Unit-circle data Re z extend to Re z, boundary error 0. Annulus 1≤|z|≤2 has u=log|z|/log2 with boundary values 0,1 and Δu=0. Zero extension fails outer value 1. | Agreement; keep. |
| 1.1 Green pole | Radius 2, pole 0: G=log(2/|z|); at |z|=1, G=log2; at |z|=2, G=0; G+log|z|=log2. Opposite sign is negative inside. | Sign and regular part agree; keep. |
| 1.1 bordered embedding | Radius-R closed disc has interior map z/R to 𝔻; derivative 1/R and inverse derivative R have product 1. A constant map has product 0 and is excluded. | Keep. |
| 1.1 exhaustion | Closed discs of radii 1−1/n, n≥2, have nested interiors, union 𝔻 and one boundary circle each. Radii 1/n instead have union the radius-1/2 disc and fail exhaustion. | Keep. |
| 1.1 normalized limit | On ℂ, rescaling radius-n maps z/n to derivative 1 gives id, image ℂ and derivative 1 in the limit. Without normalization z/n tends to 0 with derivative 0. | Normalization excludes constant limit; keep. |
| 1.1 metric adapter/isometry comparison | Standard disc squared metric at 0 is 4; conjugation has real determinant −1, id determinant +1. Cylindrical ℂ∖{0} metric has K=0, not −1. Three-punctured quotient area 2π, universal-disc area ∞. | Hypotheses distinguish wrong models; keep. |
| 1.1 two omitted values/existence | h(z)=2 omitting 0,1 has constant affine lift and derivative 0. exp z has h′(0)=1 and omits only 0, so misses the second omitted-value premise. The disc identity yields a cover with derivative 1. | General lifting route works; remove redundant gap, R02. |
| 1.2 cover uniqueness/lifts | F=z,G=iz gives unique rotation i, derivative norms 1=1. F=2z, f=z lifts to z/2; derivative norms 2 and 1. z² has derivative 0 at 0 and is not a cover. | Surjectivity/local-cover conditions discriminate; keep. |
| 1.3 radius | Disc at 0: singleton derivative-norm set {1}, sInf=1. Radius-2 disc: {2}, sInf=2, reciprocal domain-to-disc derivative 1/(1/2)=2. Affine dilation 3 changes 2 to 6. | Normalization and covariance agree; keep. |
| 1.4 extremality | Cover F=2z into radius-2 disc; φ=z gives 1<2, lift derivative 1/2. φ=2iz gives 2=2, lift iz a rotation; constant φ=0 gives 0<2. | Both equality directions discriminate; keep. |
| 1.5 monotonicity | 𝔻⊂2𝔻 gives radii 1≤2; identity inclusion gives 1=1. Reversing the inequality fails 1≤2. | Agree; keep. |
| 1.6 projective deck realization | Disc identity has trivial deck group. Annulus cover strip→annulus by exp has translations 2πik: exp(z+2πi)=exp z, derivative multiplier 1, no fixed interior point for k≠0. | Generality includes noncofinite annuli; keep. |
| 1.7 finite-puncture comparison | S={0,1,∞}: three cusp images, area 2π. Primitive X=p+cq gives first derivative c≠0; q=q₂² gives first derivative 0 and order 2. Pullback by z/2 has radial length log3<∞, despite curvature −1. | Mathematical guards work; state headline, R01. |
| 1.8 oriented roots cover | N=2 target excludes ±1 but contains 0; derivative a=γ₂≈4.37687923. F(iz) has derivative ia, real part 0 and imaginary part a, so fails orientation. | Keep. |
| 1.9 derivative nonvanishing | F₂′(0)=γ₂≈4.37687923≠0; candidate z² has derivative 0 at 0 and violates the covering premise. | Keep. |
| 1.10 equivariance | F₂(−0.1)=−0.417567904=−F₂(0.1). At N=3, r̃(2i)=(3√3+8i)/13; inverse Cayley gives −1/6−i√3/6=ζ₃⁻¹/3. | Correct inverse rotation; keep. |
| 1.11 descent | F=az+O(z^(N+1)) gives F(z)^N=a^N z^N+O(z^(2N)), so G(w)=a^Nw+O(w²). At nonzero F-zero, source power derivative Nz^(N−1)≠0 and descended zero order N. | G has derivative 0 there, not a cover; keep. |
| 1.12 descended derivative | N=2, a≈4.37687923: G′(0)=a²≈19.15707180; exactly norm G′(0)=a²=norm(F′(0))². Rotating a by i changes G′ to −a² but not its norm. | Phase distinction agrees; keep. |
| 2.1 Schwarzian definition | S(2z+1)=0; S(z²)(1)=−3/2; S(1/z)(1)=6−(3/2)·4=0. At a critical point totalized formula can be 0, with no geometric claim. | Keep. |
| 2.2 chain rule | f=g=z² at z=1: S(z⁴)=−15/2; RHS (−3/2)·2²−3/2=−15/2. | Squared derivative essential; keep. |
| 2.3 Möbius invariance | M(w)=1/w, f=z², z=1: S(z⁻²)=−3/2=S(z²); determinant −1 and denominator 1 are nonzero. Constant M has determinant 0. | Guards discriminate; keep. |
| 2.4 Schwarzian ODE | w=eᶻ: S=−1/2; v₁=e^(z/2),v₂=e^(−z/2), so v″−v/4=0 and v₁/v₂=eᶻ. Q=−1/4 gives 2Q=−1/2. | Sign/factor agree; keep. |
| 2.5 accessory formula | N=2 companion S={0,−1,1}, X=2: double-pole sum 49/72; simple-pole sum −1/2; total 13/72. Rational formula (1+3X²)/(2X²(X²−1)²)=13/72. | Keep. |
| 2.6 infinity constraints | Same S: m₀=0,m₋=3/4,m₊=−3/4. Sums are 0; 1−1/2−1/2=0; (−1+3/4)+(1−3/4)=0. | X⁻¹, X⁻², X⁻³ cancel; keep. |
| 2.7 symmetric parameters | N=2 coefficient −(1/2+1/4)=−3/4; m₋=3/4,m₊=−3/4. N=3 gives c=−2/3 and 1+3(2c+1)=0. | Keep. |
| 2.8 roots Schwarzian | N=2,x=0 gives 3/2. J₂=z+z³/4+… gives J₂‴/J₂′=3/2. N=3,x=0 gives 0 on both sides. x=1 is excluded. | Keep. |
| 2.9 inverse ODE | N=2,x=0 gives 4y″+3y=0. η₂=1−3x²/8+… gives −3+3=0; η₁=x−x³/8+… yields quotient x+x³/4+…. | Keep. |
| 3.1 boundary Blaschke factor | b₀(z)=z; b₁(1)=−1, whereas raw rational division gives 0; b₋₁(z)=1. At a=1/2,z=−1, b=−1 and norm 1. | Boundary extension discriminates; keep. |
| 3.2 finite product | Empty product 1; (a=0,m=2) gives z², at z=1/2 norm 1/4; boundary-only (a=1,m=1) gives −1, norm 1, not <1. | Keep. |
| 3.3 normalized log | g=eᶻ,R=1: L=z, L(0)=0; boundary log modulus cosθ. Kernel Fourier integral is z, at z=1/2 equals 1/2. g=1 gives both 0. | Keep. |
| 3.4 derivative Herglotz | g=eᶻ gives g′/g=1; differentiated boundary integral also 1. g=2eᶻ has same derivative ratio; constant log2 contributes integral derivative 0. | Keep. |
| 3.5 phase | G=i: integral 0, exponential 1; G·abs(G(0))/G(0)=1. Multiplication by phase i reconstructs i. G=2i gives exponential 2 and phase i. | Keep. |
| 3.6 smoothing | g=z−1: b₁=−1 gives residual 1−z with boundary zero at 1. On radius 1+δ the zero is interior and no longer lies on the integration circle. g=0 permits h=1 and both totalized logs 0. | Boundary-zero and zero-function cases distinguished; keep. |
| 3.7 quotient representation | g=1,h=1 gives logarithms 0, RHS ε>0. g=2,h=1 gives max(0,log2)=log2≤log2+ε. g=0,h=1 gives 0≤ε. | No contradiction from totalized log; keep. |
| 3.8 optimality | g=2,h=1 gives equality log2=log2; g=h=1 gives 0=0. If h=0 were allowed, bound would fail for g=2; h(0)=1 excludes it. | Keep. |
| 4.1 Gauss equation | a=0,b=c=1: y=1, residual 0. a=−1,b=c=1: y=1−x, residual −(1−x)+(1−x)=0, also at x=2. c=0 excludes the ab/c pole. | Keep. |
| 4.2 variable change | N=2,x=0 indicial expression is ρ(ρ−1)+(1/2)ρ=ρ(ρ−1/2); exponents 0,1/2 become 0,1 under x=u². | Derivative factors agree; keep. |
| 4.3 two solutions | N=2: √(1−x)F(1/4,1/4;1/2;x)=1−3x/8+…; the other is x^(1/2)(1−x/8+…). Substituting x=u² gives η₂,η₁ above. | Keep. |
| 4.4 inverse ratio | N=2: numerator coefficient 3/8, denominator 1/8; J₂=u+u³/4+…, J₂(0)=0,J₂′(0)=1,J₂‴(0)=3/2. Identity germ has third derivative 0. | Keep. |
| 4.5 actual inverse | Let a=γ₂. F₂(z)=az−a³z³/4+…; ψ(u)=a⁻¹(u+u³/4+…). Both compositions have linear coefficient 1 and cubic coefficient 0. | Prefactor and both directions agree; keep. |
| 4.6 continuation | a=1/4,1/2,3/4 and x=0.1: native F(a,a;2a;0.9)≈1.29799975649,1.64126441434,2.05432416993; connection sums give the same three values. k=0 at a=1/2 is −log x+4log2. | Gamma factor and ψ(1) sign agree; keep. |
| 4.7 coefficient bound | a=1/2,k=1 gives 2log2−1≈0.386294361; k=2 gives ≈0.219627694; common bound at a=1/4,k=1 is ≈0.650237868. Wrong ψ(k) index gives −0.613705639 at k=1,a=1/2. | Positive/index controls agree; keep. |
| 4.8 uniform remainder | At x=.1, a=.25,.5,.75, normalized tails≈.02329309,.08101041,.16102511; parameter derivatives≈.17237185,.28159484,.35365272. Scale x(1+abs(log x))≈.33025851. | Finite interior samples consistent; uniform estimate still needs proof; keep. |
| 5.1 Gamma radius | N=2,3,10 give 4.37687923045,2.58105653984,1.32030638266; alternative expressions give the same. Native N=1 has Γ(0)=0, hence radius expression 0. | Domain restriction discriminates; keep. |
| 5.2 positivity | At N=2 denominator Γ(3/4)²Γ(3/2)>0; all arguments lie in [1/2,3/2]. N=1 numerator includes Γ(0)=0. | Positive versus excluded zero; keep. |
| 5.3 alternative expression | N=2: both 4.37687923045; N=3: both 2.58105653984. Positive denominators permit reflection/duplication cancellations. | Keep. |
| 5.4 inverse-ratio boundary | N=2 leading logarithmic coefficient ratio is Γ(3/2)Γ(1/4)²/(Γ(1/2)Γ(3/4)²)=4.37687923045; division by γ₂ gives boundary modulus 1. | Keep. |
| 5.5 geometric radius | Theta formula has F₂′(0)=Γ(1/4)⁴/(4π²)≈4.37687923045, matching γ₂. Rotated cover derivative ia has the same norm a. | Keep. |
| 5.6 log Gamma | z=0 gives 0=0. Coefficients through z³ are −γ, ζ(2)/2, −ζ(3)/3; expansion of DLMF's −log(1+z)+z(1−γ) gives exactly these. | Sign and branch agree; keep. |
| 5.7 odd-zeta series | N=2: log γ≈1.476335965974, 19-term RHS≈1.476335965973; N=3: .948198826673 versus .948198826672. k=1 coefficient 1/2; k=2 coefficient 3/8. | Positive convergence and coefficients agree; keep. |
| 5.8 positive expansion | N=2,3,10 give E≈.00693975404,.000432456459,.000000211600; N⁶E≈.444144258,.315260758,.211599902, all positive. First new exponential coefficient ζ(3)²/8>0. | Samples support sign/order, not a certified universal C; keep. |
| 6.1 ideal polygon | N=2 has four ideal vertices 1,i,−1,−i, area (4−2)π=2π. N=3 has six, area 4π. Trivial group cannot supply these finite-area Dirichlet domains. | Keep. |
| 6.2 primitive cusp | N=2 gives h=2cot(π/4)=2; N=3 gives h=2√3. Replacing translation 2 by 4 gives subgroup 4ℤ strictly inside full 2ℤ. | Full-stabilizer law discriminates; keep. |
| 6.3 free deck presentation | N=2: t=[[1,2],[0,1]], u=rtr⁻¹=[[1,0],[−2,1]]. tu=[[-3,2],[-2,1]], ut=[[1,2],[-2,-3]], different projectively. Rank 2 is not cyclic; r fixes i and is excluded from deck group. | Nonabelian control; keep. |
| 6.4 power stabilizer | N=2 quotient generated by r has r²=1 projectively and order 2; area ratio 2π/π=2. For N=3 ratio 4π/(4π/3)=3. | Index/action agree; keep. |
| 6.5 full invariance | F₂(−z)²=F₂(z)². Half rotation gives at z=.1: F₂(z)²≈.174362953, F₂(iz)²≈−.211185962, unequal, so it lies outside Φ₂. | Larger supergroup is excluded; keep. |
| 6.6 quadrilateral | N=2 area 2π−2π/2=π; N=3 area 4π/3. Under C, exp(±πi/2) map to ∓1 and 0 maps to i. | Signs are unordered vertex orientation only; keep. |
| 6.7 half rotation | N=2,z=.1: 1−F₂(iz)²≈1.21118596231 and (1−F₂(z)²)⁻¹≈1.21118596231. At z=0 both 1. | Nontrivial and basepoint cases agree; keep. |
| 6.8 supergroup triangle | N=2 angle π/2 gives area π/2, quadrilateral/triangle area ratio 2; N=3 angle π/3 gives 2π/3. s²=r and s has projective order 2N. Reflection reverses orientation. | Keep. |
| 7.1 pole count | r=1/2: f=1/z gives N_D=log(1/2)=−log2; f=1 or 0 gives 0. Pole at a=1/2 has weight log(r/abs a)=0. | Centre term and boundary exclusion correct; keep. |
| 7.2 characteristic | r=1/2: f=1/z has m=log2,N=−log2,T=0; f=1/(4z) has m=0,N=−log2,T=−log2. Constants 0,1,2 give 0,0,log2. | No false general nonnegativity; keep. |
| 7.3 regular-centre positivity | f=1/(z−1/4), r=1/2 gives N=log2≥0. f=1/z gives −log2 and violates the regular-centre premise. | Keep. |
| 7.4 vanishing criterion | Pole at 1/2, r=1/2: N=0 and no interior pole. Pole at 1/4: N=log2>0. Assigned f(0)=2,f(z)=1 otherwise: N=0, order 0, punctured limit 1≠2. | Both directions and continuity guard checked; keep. |
| 7.5 Jensen | f=2z,r=1/4: mean logabs=log(1/2)=−log2. RHS zero-count log(1/4)+log2=−log2. f=1/z gives mean −log r=0−log r+log1. | Signs/centre coefficient agree; keep. |
| 7.6 inversion | f=1/(4z),r=1/2: T(f)=−log2, T(1/f)=log2; difference −log4=logabs(1/4). | Regular centre is unnecessary; keep. |
| 7.7 translation | Constants f=0,a=2: abs(m(f−a)−m(f))=log2≤log2+log2. f=a=0 gives 0≤log2. | Totalized zero poses no problem; keep. |
| 7.8 translated main theorem | f=2,a=1: T(f)=log2,T(1/(f−a))=0,logabs c=0; absolute residual log2 equals RHS log2. f=a has infinite order and is excluded. | Sharp simple case and exclusion agree; keep. |
| 7.9 powers | f=2 constant,n=3 gives log8=3log2. n=0 gives T(1)=0=0·T(f). For f=1/(4z),r=1/2,n=2 gives −2log2 on both sides. | Keep. |
| 7.10 radial monotonicity | h=2z: m(1/4,h)=0,m(3/4,h)=log(3/2)>0; h=2 constant gives equality log2. | Keep. |
| 8.1 cusp asymptotic | N=2,x=e⁻²: normalized ratio .3205160833, principal term .3016725678; N·error/x≈.27847. N=10,x=e⁻¹⁰: .9252469816 versus .9252429071; scaled error≈.89747. | Correct −2γ sign; finite samples consistent; keep. |
| 8.2 small cusp height | N=10,x=e⁻¹⁰ inverse ratio z≈.9252469816 gives Im C(z)≈25.75477; N²/π²≈10.13212 for ε=1/2,M=1. No numerical N₀ is inferred from this one case. | Height scale/sign consistent; keep. |
| 8.3 horoball diameter | g=id,D=1 gives E=1, centre 1/2. g=diag(2,1/2),D=1 gives E=2/5, centre 4/5. g sends height≥1 to height≥4, whose inverse-Cayley bottom is 3/5. | Endpoints/centre agree; keep. |
| 8.4 Shimizu | N=2,h=2: id has h(abs a+abs c)=2; r=[[0,−1],[1,0]] also gives 2. Replacing a lift by its negative changes neither value. c=0 requires its separate case. | Keep. |
| 8.5 exceptional set | N=2,M=1: at 0, abs(F²−1)=1>e⁻². Pick F=t with t²=1−e⁻²/2: residual e⁻²/2<e⁻². Pick F=4: residual 15>e⁻², rotated preimage residual 1/15<e⁻². | Positive/negative/rotated membership all discriminate; keep. |
| 8.6 horoball exclusion | h_N≤4N/π gives 4h_N²/D≤64/M. N=100,r=1/2,M=200 gives ≤.32<.5=1−r, once the independent height threshold is also met. | Explicit geometric A=64 works; keep. |
| 8.7 maximum growth | Theta cover N=2,r=.5 has sampled max logabs≈2.63133 and N/(1−r)=4; ratio≈.657833. The theorem only promises sufficiently large N, so this is a scale control, not evidence N₀=2. | No threshold overclaim; keep. |
| 9.1 kernel mean | R=1,r=1/2,w=1: Fourier expansion constant term is 1/(1−1/4)=4/3. R=2,r=1 gives 1/3, respecting inverse-square scaling. | Keep. |
| 9.2 log L1 | g=eᶻ,R=1: mean abs(cosθ)=2/π; m=1/π, twice m=2/π. g=1 gives both 0. | Keep. |
| 9.3 log mean | H=e on Haar-measure 1/e and 0 elsewhere: mean H=1, mean log⁺H=1/e, RHS=1/e. H=0 gives 0≤1/e. | Constant 1/e attained; keep. |
| 9.4 log derivative | g=eᶻ,R=1,r=1/2: m(g′/g)=0; RHS log(4/π)+log2+1/e≈1.30259110. g=1 gives 0≤log2+1/e. | Guards/nonzero function correct; keep. |
| 9.5 small radii | r=.1 gives ρ=.25,R=.55,R−ρ=.30≥.225. r=.75 gives ρ=.75,R=.875,difference .125≥.0625. Wrong R=(1−r)/2=.125<r. | Keep. |
| 9.6 omitted-value derivative | F=az+… gives f(0)=1, f′/f=−Na^N z^(N−1)+…; N=2 gives −2a²z+…, with no centre pole. | Sign/holomorphy agree; keep. |
| 9.7 pivot definition | N=2,x=0: p=0,u=−1,1+u=0. x=2: p=4/3,u=1/3. At x=1, totalized p=0,1+u=1, so the omitted-root guard is essential. | Keep. |
| 9.8 partial fractions | N=2,x=2: (2/2)(1+1/3)=4/3=p₂(2). x=0 gives 0·(−1+1)=0. Removing 1/N would give 8/3 at x=2. | Keep. |
| 9.9 chain identity | Near 0: F/(NF′)=z/N+… and f′/f=−Na^N z^(N−1)+…; product −a^N z^N matches pivot leading term. At 0 both exactly 0. | Keep. |
| 9.10 lower bound | N=2,r=.25: T(p∘F)≈.283883423; 2T(F)−log4≈−1.102410938. At r=.5: 1.566660995≥.180366633. | Constants and power law agree; keep. |
| 9.11 fixed-level bound | N=2,r=.25,.5: T(F²)≈.283883423,1.566660995; division by log(2/(1−r)) gives ≈.28943,1.13011. Tsuji's p=3 coefficient is 1 before taking the square. | Samples cannot certify an effective C₂; proof remains an explicit target; keep. |
| 9.12 three estimates | N=2,r=.25: T(F²),T(pF),T(uF)≈.283883423,.283883423,.380358988; largest difference .096475566<log4. At r=.5 largest difference≈.089654714<log4. | Pairwise comparison agrees; keep. |
| 9.13 omitted value one | g=1−F: g(0)=1; F′/(1−F)=a+O(z), with a≈4.37687923 at N=2. The sign change from g′/g is −1 and norm unchanged. | Keep. |
| 9.14 logarithmic-derivative divisor | At any simple zero, F=a(z−z₀)+…, F′/F=(z−z₀)⁻¹+…, 1/F=a⁻¹(z−z₀)⁻¹+…; both pole orders 1. F/F′ has zero order 1. | Multiplicity, not residue, matters; keep. |
| 9.15 reciprocal derivative bound | At 0, F/F′=z+O(z^(N+1)), so centre pole count 0; F′/F has trailing coefficient 1 and inversion centre term log1=0. | No erroneous log a centre term; keep. |
| 9.16 upper bound | Pivot chain at N=2 has holomorphic factors F/(2F′)=z/2+… and f′/f=−2a²z+…; product −a²z²+…. Both factors have pole count 0, so T(product)=m(product). | Exact product/sign/regularity checks agree; keep. |
| 9.17 large-level absorption | Lower minus upper gives (N−1)T(F)≤error+log4. N=2 gives factor N/(N−1)=2; N=10 gives 10/9; neither can be replaced by an unguarded N=1 expression. | Keep. |
| 9.18 finite completion | Test N₀=4,C=5,C₂=7,C₃=3 gives C*=max(5,7,3)=7, bounding each entry. N₀=2 has empty small-level list, giving C*=C. | No maximum of an empty list needed; keep. |
| 9.19 uniform mean | N=2,r=.25: three means .283883423,.283883423,.380358988 against logratio .980829253; at r=.5: 1.566660995,1.566660995,1.477006281 against 1.386294361. A sampled C=2 covers these instances; source rotations preserve Haar means exactly. | Numerical control only; theorem's quantifiers correctly keep C independent of N,r,F; keep. |

## Not verifiable

- **Hem88**, Theorem 3.1 and Lemma 3.3, pp.97–115: settled as waived. Its primary text was not available in the supplied cache and was not requested again. The accessory formula and its symmetric calculation were checked in CDT-journal lines 2491–2551; this does not certify Hempel's exact theorem numbering or full generality.
- **KR16**, §1: settled as uncertified/paywalled. It was not fetched again. CDT's attribution and the independently readable Tsu52 asymptotic were checked; no claim is made that KR16 supplies the explicit all-radius C_N requested in §9.11.
- The named source results and numerical tests do not constitute proofs of the sorried targets. In particular, no universal numerical constants for §§4.8, 8.2 or 9.11 were certified by sampling. The README assigns their construction explicitly.

No new unread source was needed and no missing-reference request was created. Open-work ownership was checked through the supplied heads and board content available here; this is not an assertion about unpublished work.

## Source issues

- **Misprint** in CDT-journal at Lemma 5.1.2, equation (5.1.3), p.668 (line 2358): the source says its displayed matrix induces multiplication by ζ_N; it should be the inverse rotation under the standard left action; affects a stated result.
- **Error** in CDT-journal at Lemma 5.1.20, equation (5.1.21), p.672 (line 2654): the source excludes only nonpositive integral a; it should also exclude denominator poles of 2a and x=0, or state a meromorphic parameter identity; affects a stated result.
- **Misprint** in CDT-journal at Lemma 5.2.9, equation (5.2.10), p.676 (line 2873): the source uses +2γ in the logarithmic constants; it should use −2γ because ψ(1)=−γ; affects a stated result.
- **Error** in CDT-journal at proof of Lemma 5.2.9, p.676 (lines 2891–2892): the source maximizes abs(ψ(k)−ψ(k+a)) at a=1/4; it should bound ψ(k+1)−ψ(k+a), whose maximum is ψ(2)−ψ(5/4); affects the proof.
- **Gap** in CDT-journal at proof of Lemma 5.2.18, p.678 (lines 2969–2979): the source states its matrix estimate for Γ_N but uses every Φ_N translate; it should establish the estimate for the full power stabilizer Φ_N; affects the proof.
- **Error** in CDT-journal at proof of Lemma 5.2.18, p.678 (lines 2980–2981): the source puts large covering values inside S(M,N); it should put them inside its half-rotated translate sS(M,N); affects the proof.
- **Error** in CDT-journal at proof of Lemma 2.3.1, p.640 (lines 742–750): the source treats every listed finite Blaschke product as open-disc valued; it should allow boundary-only or empty products of constant modulus one; affects the proof.
- **Error** in CDT-journal at equation (2.3.2), pp.640–641 (lines 758–793): the source reconstructs complex G using only its boundary modulus; it should multiply by G(0)/abs(G(0)); affects the proof.
- **Misprint** in CDT-journal at proof of Lemma 2.3.1, p.641 (line 820): the source bounds sup abs(h) by a logarithmic mean; it should bound sup log abs(h); affects the proof.
- **Misprint** in McMullenRS at §16, p.147 (lines 5350–5351): the source gives the radial distance using denominator x−1 and maps (−1,1) to positive reals; it should use 1−x, with absolute distance for negative x; affects nothing.
- **Error** in Uniformization at Proposition 9, pp.5–6 (lines 213–219): the source allows noncompact boundaryless K=ℂ to have a positive logarithmic Green function; it should assume a Greenian domain, or restrict to compact bordered K with nonempty boundary; affects a stated result.
