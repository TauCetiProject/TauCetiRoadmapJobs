# Review of MorseTheory (pull request #1094 at e201d14)

**Verdict:** needs changes

Gate at this head (worker's run, data): `gate MorseTheory … depcheck=0 … build=0 OK`, every check passed. Pins: Mathlib `6b7abb3c`, Tau Ceti `a91d3aaf`. My own `lake env lean` on `TauCetiRoadmap/MorseTheory/Suggested.lean`: 19 `declaration uses sorry` warnings, no other diagnostic, 6.3 s. Depcheck on this head: `depcheck: 204 roadmaps, 1429 edges, 0 problem(s)`, no UPWARD or CYCLE line. Files changed outside the folder: none. MorseTheory is a roadmap on main (merged as #884); this pull request revises it. Full review (190 changed lines since `17c0bab`).

## The previous review's findings at this head

- r3 R01 (P2, M6 convergence statable but absent): **repaired**. `mgradient` (`Suggested.lean` 314–316), `tendsto_of_isMIntegralCurveOn_neg_mgradient` (321–328) and `exists_edist_le_exp_of_tendsto_neg_mgradient` (335–346) are stated; README 851–875 and 892–914 describe both and carry Checks. The ownership of the gradient is the subject of R03 below.
- r3 R02 (P3, CW carrier not Hausdorff): **repaired**, `(_ : T2Space X)` at line 144.
- r3 R03 (P3, no LS locator): **repaired**. Takens, Invent. Math. 6 (1968), Introduction p. 198 at README 509–513 and 586–587, reference entry 939–943; verified below against the text.
- r3 R04 (P3, Check false at m=1): **repaired**, README 649–652 ("count ⊤ for m≥2 and 4 for m=1").
- r3 R05 (P3, two owners of Brown's theorem with GeometricTopology #903): **not repaired**, carried as R05 below.
- r3 R06 (P3, docstring reason for the omitted handle attachment): **repaired**, `Suggested.lean` 26–29 now gives the true reason (a long encoding over chart-dependent attaching maps) and names the CW model as the cumulative form.
- r3 R07 (P3, three overclaims): **repaired**. (a) README 61–62 "native singular homology; cohomology comes from AlgebraicTopology Stage 6"; (b) README 661–664 now derives the frontier clause from Brown's proofs, which I checked: Theorem 2's homeomorphism is `f∘g'⁻¹` with `g'` the identity off a cell `Q` inside the domain (`51ec0a58` lines 64–68), so it agrees with the collapsing map `f` of Theorem 5's proof near the frontier, and that `f` carries the middle sphere onto the equator (lines 107–109); the clause follows as the README says; (c) README 478–479 "a field in M's universe".

## R01 (P2) — The separation theorem and Hatcher 2B.1 are planned as targets, but the pinned Tau Ceti proves them

Location: `TauCetiRoadmap/MorseTheory/README.md` lines 665–668 ("The separation statement is Jordan–Brouwer for a bicollared sphere, from the reduced singular homology of S^m∖Σ by Mayer–Vietoris on the collar"), 679–683 ("Prove it from the vanishing of the reduced homology of the complement of an embedded closed ball … and the single ℤ in degree 0 … both by Mayer–Vietoris induction"), and the *Needs:* line 692–695 ("AlgebraicTopology Stage 3's Mayer–Vietoris sequence and reduced singular homology, for the separation statement and for invariance of domain").

Claim: the roadmap proves these two inputs itself from AlgebraicTopology Stage 3.

Witness: at Tau Ceti `a91d3aaf`, `TauCeti/AlgebraicTopology/Singular/JordanBrouwer.lean:212` states `natCard_zerothHomotopy_sphere_compl_range_eq_two` (a continuous injection of the unit sphere of `E` into the unit sphere of `F`, `finrank F = finrank E + 1`, has a complement with exactly two path components, Hatcher Cor. 2B.2); `:181` and `:198` give the full Hatcher 2B.1(b) shift `H̃ᵢ(Sⁿ∖h(S^{d−1})) ≅ H̃ᵢ₊d(Sⁿ)`; `TauCeti/AlgebraicTopology/Singular/CubeComplement.lean:286` states `isZero_reducedSingularHomologyFunctor_compl_range_closedBall` (Hatcher 2B.1(a), for any Hausdorff `Y` with acyclic point complements, in particular the sphere by `isZero_reducedSingularHomologyFunctor_sphere_compl_singleton`, `:280`). Σ = β(S^{m−1}×{0}) is such an injection of the sphere of `EuclideanSpace ℝ (Fin m)` into that of `EuclideanSpace ℝ (Fin (m+1))`, and S^m∖Σ is open in a manifold, so its components are its path components. Nothing in this target beyond these two inputs is at the pin: there is no Schoenflies, cellular-set or invariance-of-domain declaration in the pinned Tau Ceti or Mathlib (grep over both trees).

Repair: cite the three declarations by name and file in the supplier text of M4.1 and in the *Needs:* line, delete the two proof plans, and keep as owned only Brown's Theorems 0–5, the open-map step of invariance of domain and the two-open-cell lemma. In the same paragraph, lines 688–690 (and 74–75) say GeometricTopology Layer 2 owns local flatness and Brown's 1962 collaring theorem: the pinned Tau Ceti has `IsLocallyFlat` (`LocallyFlat/Basic.lean`), `brownBicollaring` (`LocallyFlat/Brown.lean:39`) and `IsLocallyBicollaredWithSides.exists_isBicollar` (`LocallyFlat/TwoSided.lean`), with `AnnulusConjecture` only as a statement (`LocallyFlat/Annulus.lean:105`); say "the pinned Tau Ceti supplies" for those and leave the annulus theorem to GeometricTopology.

## R02 (P2) — Invariance of domain is overclaimed for open subsets of a closed cell

Location: `TauCetiRoadmap/MorseTheory/README.md` lines 676–678 ("hence so is a continuous injection from an open subset of an m-cell or of S^m into S^m, read in charts").

Claim: a continuous injection from an open subset of an m-cell into S^m is an open map.

Witness: m = 1, the cell D¹ = [−1, 1], U = [−1, 0) open in D¹, and the inclusion of D¹ as an arc of S¹: the image of U is a half-open arc, not open in S¹. The same fails for every open subset of a cell that meets the cell's boundary. Brown's Theorem 0 only needs the statement on int Q minus the finitely many inverse sets, an open subset of int Q (`51ec0a58` lines 25–36), which is covered by the ℝ^m statement in charts.

Repair: "from an open subset of the interior of an m-cell, or of S^m". Add the witness as a negative-control Check ("[−1,0) ⊂ D¹ has nonopen image in S¹; the cell's interior is required").

## R03 (P3) — The gradient's owner on main is DifferentialGeometry 12.2, not cited

Location: `TauCetiRoadmap/MorseTheory/README.md` lines 851–856 ("Consume `TauCeti.Manifold.mgradient` from Geometry/Manifold/Riemannian/Gradient/Basic [at commit e8375e4f]; its pinned form `mgradient` is the Riesz dual …"); `Suggested.lean` lines 311–316.

Witness: DifferentialGeometry on main (`fa41b374`), Layer 12.2 (README line 918) and `TauCetiRoadmap/DifferentialGeometry/Suggested.lean:3148`, defines `mgradient I f x := Riemannian.Tensor.rieszDual x (mfderiv I 𝓘(ℝ) f x)` over the same carrier `[RiemannianBundle (fun x ↦ TangentSpace I x)]`; at the pin `TauCeti/Geometry/Manifold/VectorBundle/Riemannian/Riesz.lean:74` defines `rieszDual` as exactly `(InnerProductSpace.toDual ℝ (TangentSpace I x)).symm`, the body used here. The README cites only a later Tau Ceti commit, not the roadmap on main that owns the target.

Repair: in M6 write "the gradient is DifferentialGeometry 12.2's `mgradient`, the pinned `Riemannian.Tensor.rieszDual` of `mfderiv I 𝓘(ℝ) f x`"; keep the stand-in in `Suggested.lean` (it is needed to state the M6 headlines) with a docstring saying it is that definition, optionally with `Riemannian.Tensor.rieszDual (I := I) x (mfderiv I 𝓘(ℝ) f x)` as its body.

## R04 (P3) — The pointwise-metric Check describes a metric that is undefined at q

Location: `TauCetiRoadmap/MorseTheory/README.md` lines 885–888 ("with a merely pointwise metric g=λg₀, where λ⁻¹ vanishes to second order at a regular point q, the field −grad_g f=−λ⁻¹grad_(g₀)f vanishes at q").

Witness: λ⁻¹(q) = 0 means λ(q) is not a real number, so g is not an inner product at q and the field is not defined there. A correct witness: on ℝ with f(x) = x and q = 0, take λ⁻¹(x) = x² for x ≠ 0 and λ(0) = 1 (a pointwise inner product everywhere, discontinuous at 0). The field is −x² off 0 and −1 at 0, and the trajectory from x₀ > 0 is x(t) = x₀/(1 + x₀t) → 0, a regular point; the field does not vanish at q.

Repair: replace the Check by this witness (λ⁻¹ tends to 0 to second order at q, λ(q) finite; the trajectory converges to the regular point q without reaching it).

## R05 (P3) — Two owners for Brown's generalized Schoenflies theorem (carried)

Location: `TauCetiRoadmap/MorseTheory/README.md` lines 72–75 and 656–664.

Witness: GeometricTopology #903 at its head still has "### 2.2 The generalized Schoenflies theorem" (its line 1105) and lists at line 12899 "**MorseTheory** also consumes Layer 2.2's generalized Schoenflies theorem". GeometricTopology on main does not state it, so this roadmap cannot cite it (an open revision of a roadmap on main is not a supplier); the conflict is between the two open heads.

Repair: unchanged from r1 R04 and r3 R05: one owner, decided by a human at merge; not blocking here.

## R06 (P3) — Invariance of domain is also planned by AbelianSchemesAndArithmeticModuliPartII §B2.9

Location: `TauCetiRoadmap/MorseTheory/README.md` lines 77–78 ("This roadmap owns Brouwer's invariance of domain in M4.1").

Witness: AbelianSchemesAndArithmeticModuliPartII at its open head (#1405) has "### B2.9 Invariance of domain in equal real dimension" (its line 1376) with the same statement, the same Hatcher 2B.3 locator and the same x³/x²/(x,0) Checks, and ImplicitAtlases #974 (its line 23) consumes it from there. That roadmap is at merge-order line 137; MorseTheory is on main, and a citation of §B2.9 from here gives `UPWARD: MorseTheory (on main) -> AbelianSchemesAndArithmeticModuliPartII (#136)` (tested on a scratch copy of the README). PlanarTopology #271 Layer 2 states only the dimension-two case.

So the notion moves down: owning it here is the rule-conforming move, and I record it. The move is not a defect of this roadmap; the later planner and its consumer will repoint once this head merges.

Repair (optional): one clause in Scope naming the equal-dimension statement so that the later roadmaps can cite "MorseTheory M4.1, invariance of domain"; no process narrative.

## Verified sound

**Build and signatures.** `lake env lean` on `Suggested.lean`: 19 sorry warnings, nothing else. A scratch copy with `#check @name` for all 30 declarations elaborated once; every theorem of M1–M4.1 keeps `[FiniteDimensional ℝ E] [I.Boundaryless] [T2Space M] [SecondCountableTopology M] [IsManifold I ∞ M]`; `mgradient` keeps `[FiniteDimensional ℝ E] [IsManifold I ∞ M] [RiemannianBundle …]`; `tendsto_of_isMIntegralCurveOn_neg_mgradient` keeps the full block plus `[RiemannianBundle …] [IsContMDiffRiemannianBundle I ∞ E …]`; `exists_edist_le_exp_of_tendsto_neg_mgradient` carries its own carrier `N` with `[EMetricSpace N] [SecondCountableTopology N] [ChartedSpace H N] [IsManifold I ∞ N] [RiemannianBundle …] [IsContMDiffRiemannianBundle …] [IsRiemannianManifold I N]` (Hausdorff from the emetric). The elaborated types agree with the README statements at 870–875 and 898–903 (the `[I.Boundaryless]` and `[SecondCountableTopology N]` binders of the decay theorem are unused; a note, not a finding).

**Padding probe.** A copy with every `sorry` replaced by `first | rfl | simp_all | infer_instance | aesop | (exact ⟨⟩)`: all 19 sorried theorems fail (unsolved goals, type mismatch or constructor-arity errors at each; `aesop` reports exhaustive failure at line 90). No padding. `nonempty_homeomorph_sphere_of_two_criticalPoints` has a real proof term composing the two M4.1 targets.

**Headline theorems.** M1 normal form and compact finiteness, M2 regular-level atlas, band deformations and CW model, M4 strong inequalities, degenerate-level deformation, critical categorical cover and finite minimum, M4.1 two-Euclidean cover, two-open-cell lemma and sphere theorem, M6 convergence and exponential decay: all stated. Not statable and named in the docstring with the missing carrier: the LS inequality in categorical form (`lsCategoryCount` is AlgebraicTopology's, not at the pins), M3 strong topology, M5 Morse–Bott; the handle attachment is "not stated" with its true reason.

**Library declarations opened at the pins.** Mathlib: `Bundle.RiemannianBundle` (`Topology/VectorBundle/Riemannian.lean:420`, a `RiemannianMetric` field, fibres get `NormedAddCommGroup`/`InnerProductSpace` instances scoped to `Bundle`); `IsContMDiffRiemannianBundle` (`Geometry/Manifold/VectorBundle/Riemannian.lean:67`, a smooth section `g` with `⟪v,w⟫ = g x v w`); `IsRiemannianManifold` (`Geometry/Manifold/Riemannian/Basic.lean:79`, `edist x y = riemannianEDist I x y`); `riemannianEDist` (`Riemannian/PathELength.lean:207`, infimum over `C^1` paths of `∫⁻ ‖mfderiv γ t 1‖ₑ`, so README 900–901 is right); `IsMIntegralCurveOn` (`IntegralCurve/Basic.lean:65`, `HasMFDerivWithinAt` on `s`); `InnerProductSpace.toDual`; no manifold gradient anywhere in `Mathlib/Geometry/Manifold`. Tau Ceti `a91d3aaf`: `Riemannian.Tensor.rieszDual` (`VectorBundle/Riemannian/Riesz.lean:74`); the JordanBrouwer/CubeComplement/LocallyFlat declarations of R01; `TopCat.reducedMayerVietorisIsoOfIsZero` (`Singular/MayerVietoris/Reduced.lean:282`); the M1/M2/M4 names listed in r3 are unchanged.

**Cross-roadmap citations resolved on main (`fa41b374`, unchanged since r3).** AlgebraicTopology Stage 3 (line 471) and Stage 6 (946) anchors; `LSCategoricalCover`/`lsCategoryCount`/`normalizedLSCategory`/`lsCupLength` (1082–1123) with the unnormalized convention the README uses; Stage 4 items 4–6 (`diskBoundaryRelCW` 624, `relativeCWPushoutCWModel` 716, `cwSubcomplexTowerUnion` 700, projective space item 6 at 789); Stage 6 item 1 is the UCT. DifferentialGeometry Layers 3 (371), 5 (503, `boundaryOrientation_spec` 509), 10 (877), 12 (910, 12.2 `mgradient` 918). GeometricTopology Layers 1 (177) and 2 (289). CharacteristicClasses C2 (550), DGFloer `SpectralObject` (382, 615), ConvexityToric T2 (73), ComplexKahlerGeometry K1 (96) and K7 (1405), HeegaardFloer Lane M (57), RiemannianGeometry R3 (347; its line 780 minimax lemma is a path-space existence lemma, not the count bound), AffineMorseLefschetz present; HomotopySpheres §4B exists at #1287 (line 648) and is cited only as a consumer; MorseNovikov (#1690, #1161) cites "MorseTheory M1–M4, M6" as a consumer.

**Ownership against open pull requests** (`roadmaps grep` over 437 heads plus the brief's checkouts). "exactly two critical": no other roadmap. "Takens": only this roadmap. "mgradient": DifferentialGeometry #886 revises 12.2 (R03's owner is main's 12.2). "invariance of domain": ASAM-II #1405 §B2.9, ImplicitAtlases #974 as its consumer, PlanarTopology #271 in dimension two (R06). "Schoenflies": GeometricTopology #903 §2.2 (R05), PlanarTopology #271 planar. The Lean names `mgradient`, `tendsto_of_isMIntegralCurveOn_neg_mgradient`, `exists_edist_le_exp_of_tendsto_neg_mgradient` occur in no other roadmap's `Suggested.lean` under this namespace. Data: #1682 is a second open revision of this folder and also edits M6; not reviewed here.

**Sources.** Takens 1968 (`af762f10…`, GDZ `LOG_0025`, OCR, legal open repository): printed p. 198 at line 78; μ_X(f) and F.(X) as the minimum over smooth f (lines 79–81); the inequality F.(X) ≥ L.S.(X) for closed X attributed to Lusternik–Schnirelmann [8] (91–92); L.S.(X) as the least k ≤ ∞ with an open cover by sets contractible in X (94–96); footnote on the "one smaller" convention (120). The README's lines 509–513 and 586–587 say exactly this, with the unnormalized convention. Brown 1960 (`51ec0a58…`, AMS open): Theorem 0 lines 25–36 (invariance of domain used for "only a finite number of points of f(Q)∩D are boundary points"), Theorem 2 lines 60–68, Theorem 4 lines 84–100, Theorem 5 lines 101–113 (printed p. 76): the README's route and the new frontier-clause justification match (see r3 R07(b) above). Hatcher, *Algebraic Topology* (`bebb3032…`, author page): Proposition 2B.1 at line 7367 on printed p. 169 (page header line 7360), Theorem 2B.3 at line 7509 on printed p. 172 (header line 7489), proof via the one-point compactification and the two path components of the complement of f(∂D), as the README says. Milnor 1959 (`34405fd5…`, Numdam): Corollaire 1 line 117, printed p. 442. Rosen 1960 (`96b89458…`): abstract 570-28, Lemma 1 at lines 4092–4098, printed p. 380 (line 4111); its abstract omits the Hausdorff hypothesis, which the README correctly adds (table row 17).

**Depcheck.** `depcheck: 204 roadmaps, 1429 edges, 0 problem(s)` on the head; a scratch copy citing ASAM-II §B2.9 gives the UPWARD line quoted in R06.

**Adversarial table.** Instances tried and the values on each side.

| # | Statement | Instance | Left | Right | Result |
|---|---|---|---|---|---|
| 1 | `morse_inequalities` coefficient law | `((1+X)Q).coeff j` | `Q_j + Q_{j−1}` (`Q_0` at j=0) | strong form `c_j = b_j + Q_j + Q_{j−1}` | agrees |
| 2 | same | S² height; T² (1,3,2), k=ℚ; RP² three weights | c=(1,0,1); (1,3,2); (1,1,1) | Q=0; Q=t: 1, 2+1, 1+1; k=F₂ Q=0, k=ℚ Q=t | holds |
| 3 | same | M=∅; M=point | c=0; c₀=1 | b=0; b₀=1, Q=0 | holds, k in M's universe (README 478) |
| 4 | `exists_cwComplex_homotopyEquiv` | M=∅; M=ℕ discrete, f(n)=n | 0 cells; `ENat.card ℕ = ⊤` | criticalCount 0; ⊤ | holds; T2 binder now present |
| 5 | M6 convergence | f=x² on ℝ, γ=x₀e^{−2t}, K=[−1,1] | limit 0, `mvfderiv f 0 = 0` | p=0∈K | holds |
| 6 | same | f=x on ℝ, γ=x₀−t | no compact K contains γ([0,∞)) | hypothesis fails | not a counterexample (Check 882) |
| 7 | same | K with no critical point, η=min‖∇f‖ on K | f(γ(t)) ≤ f(γ(0)) − η²t → −∞ | f bounded on K | hypotheses unsatisfiable, consistent |
| 8 | same | K=∅ | `MapsTo γ (Ici 0) ∅` false | — | vacuous |
| 9 | same, smooth metric needed | λ⁻¹=x² off 0, λ(0)=1, f=x | x′=−x², x=x₀/(1+x₀t)→0 regular | conclusion fails | excluded by `IsContMDiffRiemannianBundle`; Check 885 misstated (R04) |
| 10 | same, route | ω-limit set in compact K | nonempty, compact, connected, flow-invariant, f constant on it ⇒ ‖∇f‖=0 | critical set discrete in K ⇒ singleton | route sound |
| 11 | M6 decay | height on S^m, meridian angle u | u′=−sin u, tan(u/2)=tan(u₀/2)e^{−t} | dist=u≍e^{−t}, c=1, Hessian eigenvalue 1 | Check 906 correct, no c>1 |
| 12 | same | f=x⁴, −∇f=−4x³ | d(x⁻²)/dt=8, x=(x₀⁻²+8t)^{−1/2} | polynomial rate | excluded by `IsMorse` (Check 909) |
| 13 | same | f=x²−y², γ=(x₀e^{−2t},0) | x′=−2x | c=2, f−f(p)=x²>0 on γ, <0 on the y-axis | Check 913 correct |
| 14 | same | p regular | f(γ(t)) ≤ f(γ(T)) − η²(t−T) → −∞ | f(γ(t)) → f(p) | hypothesis unsatisfiable |
| 15 | same, route | E=f∘γ−f(p), Łojasiewicz E ≤ C‖∇f‖² | E′=−‖∇f‖² ≤ −E/C; (√E)′ ≤ −‖∇f‖/(2√C) | tail length ≤ 2√C·√E(t) ≤ C′e^{−t/(2C)} | route sound; finite edist on [0,T] since γ and p lie in one component |
| 16 | `nonempty_homeomorph_sphere_of_two_euclidean_opens` | m=0, X=point; X=ℝ^m; D^m; S^m∨S^m | 1 point; noncompact; boundary; wedge point | S⁰ has 2 points; hypotheses fail | Checks 751–756 correct |
| 17 | same, Hausdorff | S¹ with a doubled point, U=S¹∖{p′}, V=S¹∖{p} | compact, both opens ≅ ℝ | not S¹ | T2 hypothesis needed; Rosen's abstract omits it |
| 18 | same, route | D closed r-ball in U ⊇ X∖V, C=X∖int D ⊂ V | X∖D and (int D∩V)∪{∞} open, disjoint, union S^m∖Σ | pinned JB: exactly two path components | each open set one component; C the closure without ∞ |
| 19 | pinned JB applicability | Σ=β(S^{m−1}×{0}) | sphere of `EuclideanSpace ℝ (Fin m)` into sphere of `Fin (m+1)` | `finrank F = finrank E + 1` | `natCard_zerothHomotopy_sphere_compl_range_eq_two` applies (R01) |
| 20 | Brown Theorem 2 homeomorphism | f∘g′⁻¹, g′=id off Q⊂D | equals f on D̄∖Q ⊇ Σ | Theorem 5's f maps Σ onto the equator | frontier clause holds (r3 R07b) |
| 21 | Brown Theorem 0 step | f on int Q ∖ (finitely many inverse sets) | injective on an open set ⇒ image open in S^n | frontier points of f(Q) in D ⊆ finitely many | README 685–687 correct |
| 22 | invariance of domain | x³ on (a,b); x² on (−1,1); (x,0) | (a³,b³) open; [0,1) not open; no interior | — | Checks 709–714 correct |
| 23 | same, "open subset of an m-cell" | U=[−1,0)⊂D¹ into S¹ | image a half-open arc | not open | false as written (R02) |
| 24 | `exists_twoEuclideanOpenCover` | f=h−h³/3 on S^m | df=(1−h²)dh, zeros the poles, Hessians 0 | count 2 | applies (Check 645) |
| 25 | same | f=h² on S^m | m≥2 crit = poles ∪ S^{m−1}, ⊤; m=1 four points | ≠2 | Check 649 now correct |
| 26 | uniform flow time | band [a+ε,b−δ], η=min‖∇f‖ | f drops ≥ η²t | T > (b−δ−a−ε)/η² | Φ_T(K) ⊂ {f<a+ε} |
| 27 | LS inequality vs Takens | ∅; point; S¹ height; S¹ const; T² Σcos; RP² | L.S.: 0,1,2,2,3,3 | counts 0,1,2,⊤,4,3 | ≤ everywhere; convention = Takens' |
| 28 | `c_j(−f)=c_{m−j}(f)` | S² height | c₀=c₂=1 | −f: c₂=c₀=1 | holds |
| 29 | `minimumCriticalCount_eq_extended_sInf` | S^m height witness 2; constant f gives ⊤ | Nat.find = 2 | sInf in ℕ∞ = 2 | holds |
| 30 | `mgradient` body vs owner | `(toDual ℝ (TangentSpace I x)).symm (mfderiv I 𝓘(ℝ) f x)` | pinned `rieszDual x` is the same `toDual.symm` | DG 12.2 `mgradient` | same object (R03) |

## Not verifiable

- Milnor, *Morse Theory*, §§2–6, Theorems 3.1, 3.5, 4.1, Remark 1 (References, `Suggested.lean` docstrings): Princeton University Press, not in the cache; cited by locator only.
- Palais, Topology 5 (1966), Theorem 7.2 (the usual primary proof of the LS inequality; the README cites Takens' Introduction instead): resolves only to a paywalled page (`palais1966`, uncertified).
- Cohen–Iga–Norbury "classical part": fetched (`80713f18…`), but the README gives no theorem or page locators into it.
- Tau Ceti commit `e8375e4f` files (README 34, 119, 852): later than the pin; r3 read them from the object store, unchanged here.

## Source issues

- none
