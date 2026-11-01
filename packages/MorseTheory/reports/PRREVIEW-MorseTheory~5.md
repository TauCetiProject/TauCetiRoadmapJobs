# Review of MorseTheory (pull request #1094 at 22a287e)

**Verdict:** accepted

Gate at this head (worker's run, data): `gate MorseTheory … depcheck=0 … build=0 OK`, every check passed. Pins: Mathlib `6b7abb3c`, Tau Ceti `a91d3aaf` (the worktree's packages directory is at both). My own `lake env lean` on `TauCetiRoadmap/MorseTheory/Suggested.lean`: 19 `declaration uses sorry` warnings, no other diagnostic, 3.5 s. Depcheck on this head: `depcheck: 204 roadmaps, 1431 edges, 0 problem(s)`, no UPWARD or CYCLE line. Files changed outside the folder: none (`git diff --stat origin/main...HEAD` excluding the folder is empty). MorseTheory is a roadmap on main (`fa41b374`); this pull request revises it. Full review (182 changed lines since `e201d14`). The folder holds `README.md`, `Suggested.lean`, `metadata.toml`: no stray file.

## The previous review's findings at this head

- r4 R01 (P2, separation theorem and Hatcher 2B.1 planned although pinned): **repaired**. README 679–686 cites `natCard_zerothHomotopy_sphere_compl_range_eq_two` with its file and hypotheses; 700–708 cites `isZero_reducedSingularHomologyFunctor_compl_range_closedBall` and `isZero_reducedSingularHomologyFunctor_sphere_compl_singleton`; the two Mayer–Vietoris proof plans are gone; the *Needs:* line 723–729 names the three declarations and keeps "Brown's Theorems 0–4 and the open-map step of invariance of domain, owned in this target". Scope 74–79 now says the pinned Tau Ceti supplies `IsLocallyFlat`, `brownBicollaring`, `IsLocallyBicollaredWithSides.exists_isBicollar` and states `AnnulusConjecture`; all five names exist at the pin (`LocallyFlat/Basic`, `Brown.lean:39`, `TwoSided.lean:408`, `Annulus.lean:105`, and only `def AnnulusConjecture`, no theorem proving it).
- r4 R02 (P2, invariance of domain overclaimed on open subsets of a closed cell): **repaired**. README 695–699: "from an open subset of a topological m-manifold without boundary (in particular of the interior of an m-cell, or of S^m)"; the negative control [−1,0) ⊂ D¹ is Check 755–758; 714–717 applies it inside int Q.
- r4 R03 (P3, gradient's owner is DifferentialGeometry 12.2): **repaired**. README 897–904 names DifferentialGeometry 12.2's `mgradient` as the pinned `Riemannian.Tensor.rieszDual` of `mfderiv I 𝓘(ℝ) f x`; `Suggested.lean` 317–319 now has body `Riemannian.Tensor.rieszDual (I := I) x (mfderiv I 𝓘(ℝ) f x)`, identical to `TauCetiRoadmap/DifferentialGeometry/Suggested.lean:3148–3151` on main, with the import `TauCeti.Geometry.Manifold.VectorBundle.Riemannian.Riesz` (exists at the pin, `rieszDual` at its line 74).
- r4 R04 (P3, pointwise-metric Check undefined at q): **repaired**. README 934–939 now has λ(x) = x⁻² off 0, λ(0) = 1, field −x² off 0 and −1 at 0, trajectory x₀/(1+x₀t) → 0; recomputed in table row 9.
- r4 R05 (P3, two owners of Brown's theorem with GeometricTopology #903): **not repaired**, carried as R04 below with one more sibling.
- r4 R06 (P3, invariance of domain also planned by AbelianSchemesAndArithmeticModuliPartII §B2.9; optional Scope clause): **repaired**. Scope 82–90 states the equal-dimension form and that M4.1 owns only the open-map deduction.

## R01 (P3) — Hatcher "Corollary 2B.2" does not exist; 2B.2 is the Alexander horned sphere example

Location: `TauCetiRoadmap/MorseTheory/README.md` line 708 ("the Jordan–Brouwer theorem above (Hatcher, Proposition 2B.1 and Corollary 2B.2, p. 169)") and line 988 ("Proposition 2B.1, Corollary 2B.2 and Theorem 2B.3").

Witness: Hatcher (`bebb3032…`) line 7439: "Example 2B.2: The Alexander Horned Sphere". A grep for `2B.2` in the text finds only that line. The two-path-component statement is the remark after Proposition 2B.1 (lines 7370–7375, printed p. 169) and the step "By the previous proposition S^n − h(∂D^n) has two path-components" inside the proof of Theorem 2B.3 (line 7515, p. 172). The pinned Tau Ceti docstrings (`JordanBrouwer.lean:210`, `LocallyFlat/Brown.lean` header) carry the same slip, which is where the README took it from.

Repair: at both places write "Proposition 2B.1(b) and the remark following it, p. 169" (optionally "and the proof of Theorem 2B.3, p. 172").

## R02 (P3) — The m=1 collar-side Check exhibits the case where the sides do label the components

Location: `TauCetiRoadmap/MorseTheory/README.md` lines 744–748 ("with Σ={p,q} at the angles 0 and π on S¹ and the bicollar β(+1,t) at the angle εt, β(−1,t) at the angle π−εt, both halves of the side β(S⁰×(0,1]) lie in the upper arc; so at m=1 the two components are not labelled by the two sides").

Claim: this bicollar shows that at m = 1 the two components are not labelled by the two collar sides.

Witness: computed with the given β. The side β(S⁰×(0,1]) is the angle set (0,ε] ∪ [π−ε,π), entirely in the upper arc (0,π); the side β(S⁰×[−1,0)) is [−ε,0) ∪ (π,π+ε], entirely in the lower arc. So here each side lies in exactly one component, which is the m ≥ 2 labelling, not its failure. The failure needs the same rotational sense at both points: β(−1,t) at the angle π+εt. Then the + side is (0,ε] ∪ (π,π+ε], one half in each arc, and Brown's Theorem 5 construction also fails to parse at m=1 for this β: the complementary domains of h(S⁰×{1}) = {ε, π+ε} are (ε,π+ε) ∋ π = h(−1,0) and (π+ε,2π+ε) ∋ 0 = h(+1,0), so no domain "does not contain h(S⁰×{0})" (Brown `51ec0a58…` lines 104–107). The sentence at 678–679 of the main text is correct; only the Check's witness is the wrong one.

Repair: replace "β(−1,t) at the angle π−εt" by "β(−1,t) at the angle π+εt" and "both halves of the side β(S⁰×(0,1]) lie in the upper arc" by "the side β(S⁰×(0,1]) has one half (0,ε] in the upper arc and the other (π,π+ε] in the lower arc"; keep the conclusion. Tested: with π+εt the side meets both components, with π−εt it does not.

## R03 (P3) — The nonemptiness step of Hatcher's deduction is stated as a garbled sentence

Location: `TauCetiRoadmap/MorseTheory/README.md` lines 709–713 ("the second is nonempty, since otherwise S^m∖h(∂D^m) would be path connected, and hence path connected by the vanishing of its reduced H̃₀").

Claim: S^m∖h(D^m) is nonempty and path connected.

Witness: as written the sentence says "would be path connected, and hence path connected", and the reader cannot tell which set each clause is about. The mathematics is: if S^m∖h(D^m) were empty, S^m∖h(∂D^m) = h(int D^m) would be path connected, contradicting the two path components of the pinned Jordan–Brouwer theorem; so S^m∖h(D^m) is nonempty, and a nonempty space with vanishing H̃₀ is path connected. The order matters at the pin: Tau Ceti's reduced homology of the empty space vanishes in every degree (`JordanBrouwer.lean` 218–223 derives nonemptiness of the complement separately, from H̃₀ ≅ K ≠ 0, before using it), so vanishing H̃₀ alone does not give nonemptiness.

Repair: "the second is nonempty, since otherwise S^m∖h(∂D^m) = h(int D^m) would be path connected, contradicting the two path components; being nonempty with vanishing reduced H̃₀, it is path connected."

## R04 (P3) — Two owners for Brown's generalized Schoenflies theorem (carried)

Location: `TauCetiRoadmap/MorseTheory/README.md` lines 72–74 and 668–676.

Witness: GeometricTopology #903 at its head still has "### 2.2 The generalized Schoenflies theorem" (its line 1105) and at line 12899 lists "**MorseTheory** also consumes Layer 2.2's generalized Schoenflies theorem for a bicollared …"; FourManifolds #936 (its lines 223–227) declares `gap:brown-schoenflies` with GeometricTopology as supplier for the same statement (n ≥ 1, bicollared embedding). GeometricTopology on main (`fa41b374`, Layer 2 at lines 289–345) states local flatness, Brown's 1962 collaring and the annulus conjecture but no Schoenflies theorem, so this roadmap cannot cite it (an open revision of a roadmap on main is not a supplier), and owning it here is the rule-conforming move. The conflict is between three open heads.

Repair: unchanged from r1 R04, r3 R05 and r4 R05: one owner, decided by a human at merge (if GeometricTopology §2.2 merges first, this roadmap repoints M4.1's first paragraph and the *Needs:* line to it); not blocking here.

## Verified sound

**Build and signatures.** `lake env lean` on `Suggested.lean`: 19 sorry warnings, nothing else. A scratch copy with `#check @name` for all 30 declarations elaborated once; every theorem of M1–M4.1 keeps `[FiniteDimensional ℝ E] [I.Boundaryless] [T2Space M] [SecondCountableTopology M] [IsManifold I ∞ M]`; `mgradient` keeps `[FiniteDimensional ℝ E] [IsManifold I ∞ M] [RiemannianBundle …]` (its body needs `IsManifold I 1 M`, implied); `tendsto_of_isMIntegralCurveOn_neg_mgradient` keeps the full block plus `[RiemannianBundle …] [IsContMDiffRiemannianBundle I ∞ E …]`; `exists_edist_le_exp_of_tendsto_neg_mgradient` carries its own carrier `N` with `[EMetricSpace N] [SecondCountableTopology N] [ChartedSpace H N] [IsManifold I ∞ N] [RiemannianBundle …] [IsContMDiffRiemannianBundle …] [IsRiemannianManifold I N]` (Hausdorff from the emetric; `[I.Boundaryless]` and `[SecondCountableTopology N]` unused, a note). `bettiNumber` takes `k` and `X` in M's universe `u`, as README 490–491 says. The elaborated types agree with the README statements at 615–618, 627–628, 761–763, 919–924 and 950–954. `nonempty_homeomorph_sphere_of_two_criticalPoints` has a real proof term composing the two M4.1 targets.

**Padding probe.** A copy with every `sorry` replaced by `first | rfl | simp_all | infer_instance | aesop | (exact ⟨⟩)`: all 19 sorried theorems fail (unsolved goals at 79, 85, 91, 110, 118, 136, 149, 170, 197, 209, 348; type mismatch at 177, 264; constructor-arity errors at 86, 183, 222, 248, 282, 292, 331). No padding.

**Headline theorems.** M1 normal form and compact finiteness; M2 regular-level atlas, band deformations and CW model; M4 strong inequalities, Fermat transport, degenerate-level deformation, ambient critical-free deformation, critical categorical cover, witness and finite minimum; M4.1 two-Euclidean cover, two-open-cell lemma and sphere theorem; M6 convergence and exponential decay: all stated. Not statable and named in the docstring with the missing carrier: the categorical LS inequality (`lsCategoryCount` is AlgebraicTopology's), M3 strong topology, M5 Morse–Bott; the handle attachment "not stated" with its reason (28–31). No headline statable at the pins is absent.

**Library declarations opened at the pins.** Tau Ceti `a91d3aaf`: `natCard_zerothHomotopy_sphere_compl_range_eq_two` (`AlgebraicTopology/Singular/JordanBrouwer.lean:212`, hypotheses `finrank ℝ F = finrank ℝ E + 1`, `Continuous h`, `Injective h`, conclusion `Nat.card (ZerothHomotopy (range h)ᶜ) = 2`); `isZero_reducedSingularHomologyFunctor_compl_range_closedBall` (`CubeComplement.lean:286`, `Y` Hausdorff with every point complement acyclic, `h : closedBall (0:F) 1 → Y` continuous injective, `F` finite-dimensional, every degree); `isZero_reducedSingularHomologyFunctor_sphere_compl_singleton` (`Sphere.lean:107`); `Riemannian.Tensor.rieszDual` (`VectorBundle/Riemannian/Riesz.lean:74`, `(toDual ℝ (TangentSpace I x)).symm` under `IsManifold I 1 M`) with `inner_rieszDual`; `brownBicollaring` (`LocallyFlat/Brown.lean:39`, every locally flat `Sⁿ → Sⁿ⁺¹` is globally bicollared), `IsLocallyBicollaredWithSides.exists_isBicollar` (`TwoSided.lean:408`), `def AnnulusConjecture` (`Annulus.lean:105`, no proof); `IsMorse` = `IsMorseOn … univ` with `ContMDiffOn` built in (`Morse/Basic.lean:99,178`), `IsMorse.contMDiff` (`:197`); the M1/M2/M4/M5/M6 names of README 24–31, 126, 130, 150–158, 167–169, 187, 205–209, 215–218, 234, 242–248, 538, 864, 868, 874, 908–909, 943 all found by name in the pinned trees (`IsAdaptedPseudoGradient`, `CompactSublevel`, `PseudoGradient/{Local,Flow,Energy,Gradient}`, `IntegralCurve/GlobalFlow`, `Morse/Lemma` are, as README 37–42 says, at Tau Ceti `e8375e4f`, read from the object store: `linearFlow` at `PseudoGradient/Local.lean:67`, `nonempty_morseChart` at `Lemma.lean:211`, `mfderiv_eq_zero_iff` at `Existence.lean:307`, `IsAdaptedPseudoGradient` at `PseudoGradient/Basic.lean:40`, `mgradient` at `Riemannian/Gradient/Basic.lean:59`). Mathlib `6b7abb3c`: `IsMIntegralCurveOn` (`IntegralCurve/Basic.lean:65`); `onePointEquivSphereOfFinrankEq` (`Compactification/OnePoint/Sphere.lean:34`, any finite-dimensional Hausdorff topological ℝ-vector space `V`, so `Fin m → ℝ` directly); `IsSubmersionAtOfComplement.mk_of_charts` (`Submersion.lean`); `mvfderiv` (`MFDeriv/NormedSpace.lean`). Absent at both pins (grep over both trees): any invariance-of-domain or Schoenflies statement, any `bettiNumber`: the roadmap's ownership claims at 82–90 and 668–676 are not duplications.

**Cross-roadmap citations resolved on main (`fa41b374`).** AlgebraicTopology Stage 2 (326), 3 (471, anchor `stage-3-subdivision-excision-and-mayer--vietoris`), 4 (499; `diskBoundaryRelCW` 624, `homotopyPushoutGluingComparison` 658, `cofibrationTowerHomotopyEquivalence` 683, `cwSubcomplexTowerUnion` 700, `relativeCWPushoutCWModel` 716), 6 (946, anchor matches; `LSCategoricalCover`/`lsCategoryCount`/`normalizedLSCategory`/`lsCupLength` 1082–1113 with `lsCategoryCount X X = normalizedLSCategory X + 1`, the unnormalized convention the README and Takens use; universal coefficients named at 79–80), 8 (1602). DifferentialGeometry Layers 3 (371), 5 (503, anchor `layer-5-integration-and-stokes-theorem`, `boundaryOrientation_spec` 509), 10 (877), 12 (910; 12.2 `mgradient` 918). GeometricTopology Layer 1 (177) and Layer 2 (289: local flatness, Brown 1962 collaring, annulus conjecture; no Schoenflies). CharacteristicClasses C2 (550), DGFloer `SpectralObject` (382, 615), ConvexityToric T2 (73), ComplexKahlerGeometry K1 (96) and K7 (1405, anchor matches), HeegaardFloer Lane M (57), RiemannianGeometry R3 (347), AffineMorseLefschetz present. HomotopySpheres is not on main; §4B exists at #1287 (line 648) and is cited at 97 and 892 only as a consumer; MorseNovikov #1690 (line 47) cites "MorseTheory M1–M4, M6" as a consumer.

**Ownership against open pull requests** (`roadmaps grep` over 437 heads plus the brief's checkouts). "Schoenflies": GeometricTopology #903 §2.2, FourManifolds #936 `gap:brown-schoenflies` (R04), PlanarTopology/SurfaceTopology #271 and RiemannianGeometry (planar or two-dimensional only). "invariance of domain": AbelianSchemesAndArithmeticModuliPartII #1405 §B2.9 (its 1376) and ImplicitAtlases #974 as its consumer (its 23), PlanarTopology #271 in dimension two; this roadmap is on main and the notion moves down to it (r4 R06, recorded there). "exactly two critical": only this roadmap. "two-open-cell"/Rosen: only this roadmap owns the lemma. `def mgradient`: DifferentialGeometry on main (3148) and its revision #886; the roadmap now cites main's 12.2 as the owner and keeps a same-body stand-in to state M6. Data: #1682 is a second open revision of this folder; not reviewed here.

**Sources.** Takens 1968 (`af762f10…`, GDZ, OCR; the seeded target): printed p. 198 header at line 78; μ_X(f) and F.(X) as the minimum over f at 79–81; "Lusternik and Schnirelman obtained in [8] the inequality F.(X) ≥ L.S.(X) for X a closed manifold" at 91–92; L.S.(X) the smallest k ≤ ∞ with an open cover by sets contractible in X at 94–96; footnote on the one-smaller convention at 120. README 519–525 and 598–599 state exactly this, with the unnormalized convention, for compact boundaryless M (closed), and the hypotheses (smooth f, arbitrary degeneracy, count of points in ℕ∞) are Takens'. Brown 1960 (`51ec0a58…`, AMS open): Theorem 0 lines 25–36 (invariance of domain used for the finitely many boundary points), Theorems 1–2 at 37–68 (the homeomorphism `f g'⁻¹` with `g'` the identity off `Q`), Theorem 3 at 69–81, Theorem 4 at 84–100, Theorem 5 at 101–113 (printed p. 76, page header line 83); the README's route 686–690 and frontier clause 672–676 match. Hatcher (`bebb3032…`): Proposition 2B.1 at 7367 (printed p. 169, header 7360), its separation remark 7370–7375, Example 2B.2 at 7439 (R01), Theorem 2B.3 at 7509–7520 (printed p. 172, header 7489) with the deduction the README restates at 709–713. Milnor 1959 (`34405fd5…`, Numdam): Corollaire 1 at 117–119, printed p. 442 (header 109). Rosen 1960 (`96b89458…`): abstract 570-28 at 4092–4104, Lemma 1 at 4095–4096, printed p. 380 (line 4111); it omits Hausdorff (see Source issues).

**Depcheck.** `depcheck: 204 roadmaps, 1431 edges, 0 problem(s)` on this head; no UPWARD, CYCLE or `moved:` line.

**Adversarial table.** Instances tried and the values computed on each side.

| # | Statement | Instance | Left | Right | Result |
|---|---|---|---|---|---|
| 1 | `morse_inequalities` coefficient law | `((1+X)Q).coeff j` | `Q_j + Q_{j−1}` (`Q_0` at j=0) | strong form `c_j = b_j + Q_j + Q_{j−1}` | agrees |
| 2 | same | S² height; T² (1,3,2), k=ℚ; RP² three weights | c=(1,0,1); (1,3,2); (1,1,1) | Q=0; Q=t: 1, 2+1, 1+1; k=F₂ Q=0 (b=(1,1,0)); k=ℚ b=(1,0,0), Q=t | holds |
| 3 | same | M=∅; M=point | c=0; c₀=1 | b=0 (homology of ∅ is 0); b₀=1, Q=0 | holds |
| 4 | `exists_cwComplex_homotopyEquiv` | M=∅; M=ℕ discrete, f(n)=n | 0 cells, X=∅ Hausdorff; `ENat.card ℕ = ⊤` | criticalCount 0; ⊤ | holds |
| 5 | `exists_scalarRegularLevelData` | dim E=0, any c | `hregular` needs a surjection onto ℝ from 0: level empty | model `Fin (0−1) → ℝ = Fin 0 → ℝ` on ∅ | holds, README 271–273 |
| 6 | `exists_degenerateCriticalLevelDeformation` | no critical point at c, U=⊥, M=S¹ height, c=0, δ<1 | band [−δ,δ] critical-free, flow pushes {f≤ε} below −ε | conclusion first disjunct | holds |
| 7 | same | c the global minimum, S² height, U a cap | {f≤c+ε} ⊂ U for small ε (nested compacts ∩ = {p}) | second disjunct forced, no point below c−ε | holds |
| 8 | `exists_noCriticalOpenSublevelDeformation` | M nonempty compact, a−δ ≤ min f | min f is critical in [a−δ,b+δ] | hypothesis unsatisfiable | vacuous, consistent |
| 9 | M6 convergence, smooth metric needed | λ=x⁻² off 0, λ(0)=1, f=x | −grad = −λ⁻¹ = −x² off 0, −1 at 0; x′=−x², x=x₀/(1+x₀t) → 0 | 0 regular | excluded by `IsContMDiffRiemannianBundle`; Check 934–939 correct |
| 10 | M6 convergence | f=x² on ℝ, γ=x₀e^{−2t}, K=[−1,1] | limit 0, `mvfderiv f 0 = 0` | p=0 ∈ K | holds |
| 11 | same | f=x on ℝ, γ=x₀−t | no compact K traps γ | hypothesis fails | Check 931 correct |
| 12 | same, K critical-free | η=min‖∇f‖ on K | f(γ(t)) ≤ f(γ(0)) − η²t → −∞ | f bounded on K | unsatisfiable, consistent |
| 13 | M6 decay | height on S^m, meridian angle u | u′=−sin u, tan(u/2)=tan(u₀/2)e^{−t} | u ≍ e^{−t}, c=1 = Hessian eigenvalue | Check 957 correct, no c>1 |
| 14 | same | f=x⁴, −∇f=−4x³ | d(x⁻²)/dt=8, x=(x₀⁻²+8t)^{−1/2} | polynomial | excluded by `IsMorse` (Check 960) |
| 15 | same | f=x²−y², γ=(x₀e^{−2t},0) | x′=−2x, c=2 | f−f(p)=x²>0 on γ, <0 on the y-axis | Check 964 correct |
| 16 | same, finiteness of edist on [0,T] | γ([0,∞))∪{p} connected | one component, C¹ path exists | `riemannianEDist` finite | consistent |
| 17 | `nonempty_homeomorph_sphere_of_two_euclidean_opens` | m=0, X=point; ℝ^m; D^m; S^m∨S^m | 1 point; noncompact; boundary points; wedge point | S⁰ has 2 points; hypotheses fail | Checks 797–802 correct |
| 18 | same, Hausdorff | X=S^m with doubled point p′, U=X∖{p′,q}≅ℝ^m, V=X∖{p,q′}≅ℝ^m (q≠q′) | U∪V=X, compact, not Hausdorff | X ≄ S^m | `T2Space X` needed; Rosen's abstract omits it |
| 19 | same, partition | D⊂U closed r-ball, int D ⊇ X∖V, C=X∖int D | X∖D ⊂ V open; C ⊂ V compact so (int D∩V)∪{∞} open; (V∖D)∪(V∩int D)∪{∞} = S^m∖Σ; both nonempty (U∖D≠∅, ∞) | exactly two components (pinned JB) | each set is one component; closure of X∖D is C |
| 20 | same, collar sides | outer side {r<|u|≤r+η}, inner {r−η≤|u|<r} | outer ⊂ X∖D, inner ⊂ int D∩V | decorative: components already fixed by row 19 | consistent, also at m=1 |
| 21 | Brown Theorem 5 route, m=1 | β(+1,t)=εt, β(−1,t)=π−εt | + side (0,ε]∪[π−ε,π) ⊂ upper arc, − side ⊂ lower arc | sides label components | Check 744 witness wrong (R02) |
| 22 | same | β(−1,t)=π+εt | + side (0,ε]∪(π,π+ε] meets both arcs; both domains of S¹∖{ε,π+ε} contain a point of h(S⁰×0) | Brown's A undefined | the intended witness (R02) |
| 23 | pinned JB applicability | Σ=β(S^{m−1}×{0}) | injection of sphere of `EuclideanSpace ℝ (Fin m)` into sphere of `Fin (m+1)` | `finrank F = finrank E + 1` | applies; m=1 gives S⁰ (two points) |
| 24 | Hatcher deduction | h: D^m → S^m, m≥1 | h(int D) path connected; S^m∖h(D) nonempty (else S^m∖h(∂D)=h(int D) connected, contradicting two components) and H̃₀=0 ⇒ path connected | the two path components, open (open subset of S^m is locally path connected) | sound; sentence garbled (R03) |
| 25 | invariance of domain | x³ on (a,b); x² on (−1,1); (x,0); [−1,0)⊂D¹ into S¹ | (a³,b³) open; [0,1) not open; no interior; half-open arc not open | — | Checks 749–758 correct |
| 26 | same, m=0 | open subset of a point | ∅ or the point | open | README 714 correct |
| 27 | Brown Theorem 0 step | f on int Q minus finitely many inverse sets | injective on an open subset of int Q ⇒ image open | frontier points of f(Q) in D finitely many | README 714–717 correct |
| 28 | `exists_twoEuclideanOpenCover` | f=h−h³/3 on S^m | df=(1−h²)dh, zeros the poles, Hessians 0 | count 2 | applies (Check 657) |
| 29 | same | f=h² on S^m | m≥2: poles ∪ equator, ⊤; m=1: four points | ≠2 | Check 661 correct |
| 30 | uniform flow time | band [a+ε,b−δ], η=min‖∇f‖ | f drops ≥ η²t | T > (b−δ−a−ε)/η² | Φ_T(K) ⊂ {f<a+ε}, Φ_{−T}(B) ⊇ K |
| 31 | LS inequality vs Takens | ∅; point; S¹ height; S¹ const; T² Σcos; RP² | L.S.: 0,1,2,2,3,3 | counts 0,1,2,⊤,4,3 | ≤ everywhere; convention = Takens' |
| 32 | `exists_criticalCategoricalCover` | M=∅; point; S¹ height | 0 opens; 1 open = M; 2 opens S¹∖pt | inclusions nullhomotopic | holds |
| 33 | `c_j(−f)=c_{m−j}(f)` | S² height; T² | c₀=c₂=1; (1,2,1) | −f: (1,0,1); (1,2,1) | holds |
| 34 | `minimumCriticalCount_eq_extended_sInf` | S^m height witness 2; constant f ⊤ | Nat.find = 2 | sInf in ℕ∞ = 2 | holds |
| 35 | `mgradient` body vs owner | `rieszDual x (mfderiv I 𝓘(ℝ) f x)` | DG 12.2 `mgradient I f x` same body (DG Suggested 3148–3151) | `inner_rieszDual` gives ⟪grad,v⟫=df v | same object |
| 36 | normalized chart sign | f=f(p)−Σ_{i<λ}y²+Σ_{i≥λ}y² | Hessian diag ∓2 | README 103–105 "diagonal ±2", λ = negative index | agrees |

## Not verifiable

- Milnor, *Morse Theory*, §§2–6, Theorems 3.5, 4.1, Remark 1 (References, `Suggested.lean` docstrings): Princeton University Press, not in the cache; cited by locator only.
- Cohen–Iga–Norbury "classical part" (`80713f18…`, cached): the README gives no theorem or page locators into it, so there is nothing to check at a locator.

## Source issues

- **Gap** in Rosen 1960 (Notices Amer. Math. Soc. 7, abstract 570-28) at Lemma 1, printed p. 380: the source states that a compact space covered by two open subsets homeomorphic to Eⁿ is homeomorphic to Sⁿ, with no separation hypothesis; it should require X Hausdorff (Sⁿ with a doubled point is a compact non-Hausdorff counterexample, table row 18); affects a stated result.
