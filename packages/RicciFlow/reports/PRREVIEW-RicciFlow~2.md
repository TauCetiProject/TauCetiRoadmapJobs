# Review of RicciFlow (pull request #1023 at d658efa)

**Verdict:** needs changes

Gate at d658efa: every check passes (data from the worker). Dependency check run by this review:
`depcheck: 204 roadmaps, 1416 edges, 0 problem(s)` (no UPWARD or CYCLE line). `lake env lean`
on `TauCetiRoadmap/RicciFlow/Suggested.lean`: six `declaration uses sorry` warnings, nothing
else. The two blocking findings are R01 and R02; the rest are the author's to take or leave.

## R01 (P2) — The headline theorems are statable at the pins and absent from `Suggested.lean`

Location: `TauCetiRoadmap/RicciFlow/Suggested.lean` lines 5–10 (module docstring: "Representative
interfaces on existing metric, connection, multilinear-map and positive tangent-cone carriers")
and the whole file; `TauCetiRoadmap/RicciFlow/README.md` lines 3–10 (the headline list).

Claim: the file states short-time existence, uniqueness, the reaction-tensor construction, the
PIC2 tangent-cone lemma and the strict-quarter-pinching lemma, and no end theorem. The README's
headlines are Hamilton's positive-Ricci theorem in dimension three, Böhm–Wilking, Brendle–Schoen,
the positive-Gauss surface theorem and the global quarter-pinched sphere theorem; RiemannianGeometry
on main (README line 173) already records that RicciFlow owns the first and the third.

Witness: every carrier these headlines need exists at the pins. A scratch file stating Hamilton's
theorem elaborated with only the `sorry` warning, in this form: for `[CompactSpace M]`
`[ConnectedSpace M]`, `Module.finrank ℝ E = 3`, `g : SmoothMetric I M` with
`(leviCivitaConnection I M).ricciTensor x v v > 0` for every `v ≠ 0` (the metric instance
installed with `letI` as `metricRicci` does), conclude `∃ g' κ, 0 < κ ∧
(leviCivitaConnection I M).HasConstantSectionalCurvature
(isMetricCompatible_leviCivitaConnection I) κ` for `g'`. The predicate is
`TauCeti/Geometry/Manifold/VectorBundle/CovariantDerivative/Curvature/Sectional.lean` line 164
and the compatibility lemma is used exactly so in
`TauCeti/Geometry/Manifold/Riemannian/Hyperbolic.lean` lines 87–92 at the pin. The pointwise
quarter-pinched theorem (`sectionalCurvature`, same file line 70, in the hypothesis), the
positive-Gauss surface theorem (`finrank = 2`, `scalarCurvature > 0`) and the global
quarter-pinched theorem (fixed `0 < a ≤ K ≤ b < 4a`) are statable with the same carriers. The
docstring names none of them and says of none that it is not statable.

Repair: state these headlines with `sorry`, each with the conclusion "there is a smooth metric on
`M` of constant sectional curvature `κ > 0`" (the convergence form, with `IsRicciFlowOn` and the
normalized equation, may be added once the normalized predicate is in the file). For
Böhm–Wilking, either define the curvature operator's 2-positivity through the four-tensor
(`∀` orthonormal `u v z w`, the trace of `Rop` on the plane spanned by `u∧v`, `z∧w` is positive) and
state it, or say in the docstring that it lacks a bivector carrier. Rewrite the docstring in the
required form: title, "the roadmap is README.md and this file is not the roadmap", the list of
headline theorems stated, and for each unstated one the carrier it lacks.

## R02 (P2) — `reactionTensor` is data chosen from a sorried existence theorem

Location: `TauCetiRoadmap/RicciFlow/Suggested.lean` lines 119–125: `theorem exists_reactionTensor
… := by sorry` and `noncomputable def reactionTensor … := Classical.choose (exists_reactionTensor r)`.

Claim: `reactionTensor` is a `def` whose value rests on a `sorry`: with the existence admitted, the
chosen `Q` is arbitrary data, and `reactionTensor_apply` (line 128) and
`reaction_mem_positive_tangentCone_pic2` (line 150) are statements about that data. The gate's
`sorry-data` scanner sees only syntactic `sorry` bodies, which is why it passed. The rule is "no
sorry'd data … and nothing that mentions one".

Witness: `#check @RicciFlowSuggested.reactionTensor` elaborates to a function into the submodule
with no hypothesis; its only specification is the admitted theorem. Under the one-tactic probe,
`exists_reactionTensor` and the two consumers do not close (so they are not padding), but the
construction carries no content.

Repair: give `Q` a real body. The scalar formula `reactionTensorContraction r u v z w` (line 108)
is multilinear in `u v z w`; build `MultilinearMap ℝ (fun _ : Fin 4 => V) ℝ` from it (four nested
`LinearMap.mk₂`-style constructions, or `MultilinearMap.mk` with the `map_update_add`/`smul` laws)
and make it continuous with `MultilinearMap.mkContinuous` and the finite-dimensional operator-norm
bound (or curried `LinearMap.toContinuousLinearMap`, which needs only `[FiniteDimensional ℝ V]`).
Then state as the sorried targets: `reactionTensor_mem : reactionTensor r ∈
algebraicCurvatureSubmodule` (Bianchi preservation, the R5.2 target) and
`reactionTensor_eq_of_orthonormalBasis` (basis independence, the present `reactionTensor_apply`).
Delete `exists_reactionTensor`. Restate `reaction_mem_positive_tangentCone_pic2` on
`⟨reactionTensor r, reactionTensor_mem r⟩`.

## R03 (P3) — Tau Ceti revision hashes and two declarations absent at the pin, written as names

Location: `TauCetiRoadmap/RicciFlow/README.md` lines 95–101 ("The comparison signatures
`TauCeti.exists_memLp_forall_setIntegral_eq_add_inner` and `TauCeti.PDE.existsUnique_galerkinSolution`
are specified in Tau Ceti revision `b9ec3ab4…`; they are not declarations available from the
selected `a91d3aa…` floor"), lines 301–302 and 309–311 (the same names as "newer-source comparison
name").

Claim: neither name exists in the pinned Tau Ceti (`a91d3aa`): a grep of `TauCeti/` for both
strings finds nothing. The README says so itself, which makes the paragraph process narrative
("selected pin", "newer source", commit hashes) in a document that must be timeless, and the
backticked names are claims about declarations no reader of this repository can open.

Witness: pinned Tau Ceti at `a91d3aa`, no match for either string in any `.lean` file.

Repair: delete the two names and both hashes. Cite the suppliers by section only: "PDE Lane F,
items 24–25 (Bochner spaces and the Gelfand triple; Galerkin existence)" (those items exist on
main, `TauCetiRoadmap/PDE/README.md` lines 343–349) and state in one clause what R2.2 adds
(the weak time derivative in `L²(0,T;H⁻¹)` and the exact pivot trace).

## R04 (P3) — The README is not in TauCetiRoadmap form: no Checks, no `*Needs:*` lines, no layers, few locators

Location: `TauCetiRoadmap/RicciFlow/README.md` throughout: title line 1 (`# Ricci flow, preserved
curvature cones, and sphere theorems`), sections `## R1 — …` to `## R8 — …`, `## Proof references`.

Claim: the required shape (`# Roadmap: …` with a `**Summary.**`, `## Scope and ownership`,
`## Conventions`, `## Exact supplier contracts`, `## How to read the build`, `## Layer k: …` with
`### k.n` subsections, `**Checks.**` bullets per definition, `*Needs:*` per target, `### Examples`
and `### Dependencies` per layer, `## Downstream consumers`, `## References`) is absent. There is
not one `**Checks.**` list in 984 lines, no `*Needs:*` line, and most targets carry no locator at
the claim (R1.2, R1.3, R1.4, R2.1–R2.4, R3.1–R3.3, R4.1–R4.3, R6.3, R6.4, R8.1–R8.3 cite nothing
inline; only R5.4, R5.5 and R6.2 name theorem numbers). The gate's `layer-ids`/`target-ids`
scanners pass only because there are no `## Layer` headings to check.

Witness: compare `TauCetiRoadmap/SmoothBundlesConnections/README.md` on main (lines 23, 104,
194, 208, 219–221, 539–550, 1923, 1943 give the headings in order).

Repair: restructure into the house shape (R1–R8 become Layers 1–8, `### k.n` keep the current
titles), add at least three discriminating Checks per definition and a `*Needs:*` line per
target, and put the locators at the claims. Locators verified by this review, ready to paste:
R1.2: TOP06 Propositions 2.3.1, 2.3.9, 2.3.12 (printed pp. 28–31). R1.3–R1.4: TOP06 §1.2.1–1.2.3
(the Einstein solution `(1−2λt)g₀` at p. 8, soliton equation (1.2.4) at p. 10). R3.2: TOP06
Theorem 3.3.1 (p. 49). R3.3: TOP06 Theorem 3.2.1, Corollary 3.2.4 (p. 46) and Theorem 5.3.1
(p. 63). R4.1: TOP06 Propositions 2.5.1–2.5.4 and (2.5.8) (pp. 41–43). R4.2: TOP06 Theorem 9.6.1
(p. 112). R5.2: BS08 §2, the display defining `Q(R)_ijkl` (p. 5). R5.5: BS08 Propositions 8, 9,
11–15 and 21 (pp. 8–16, 20–21). R6.1: BW08 Theorem 4.1 (p. 11), BS08 Propositions 16–17 (pp. 16–18).
R6.3: BW08 proof of Theorem 5.1 (pp. 13). R6.4: BS09 Theorem 4.7 (p. 22, the rescaling
`g(t)/(2(n−1)(T−t))`). R8.1: SANT12 Lemmas 4.2.1–4.2.3, Theorem 4.2.1 (pp. 33–35), Theorems
4.4.2–4.4.3 (pp. 40–41). R8.2: SANT12 Theorem 4.4.4 (p. 44). R8.3: SANT12 Lemma 4.4.1 (p. 45),
CLT06 Lemma 1 and Proposition 2 (pp. 1–2).

## R05 (P3) — "Secondary provenance" carries process instructions and foreign declaration names

Location: `TauCetiRoadmap/RicciFlow/README.md` lines 967–984: "Coordinate with its authors where
possible … Before copying or adapting code, obtain the authors' agreement; … discuss the plan on the
Lean Zulip. Its transitive axioms and modified dependencies are not certified here", and the
backticked names `SmoothRiemannianMetric`, `PDE.RicciFlow.ricci_flow_short_time_existence`,
`exists_completeBoundedCurvatureSolutionOn_from_time_of_compact`,
`HamiltonPositiveRicci.hamilton_positive_ricci`.

Claim: a roadmap says what is wanted, not how contributors must behave; the coordination rule
already lives in the repository README ("Porting existing work"). The four names exist neither in
the pins nor in this roadmap (the worker's citation check lists two of them as found nowhere).

Witness: `README.md` of the repository, section "Porting existing work", already states the
coordination requirement once for all roadmaps.

Repair: keep a one-sentence prior-art pointer under `## References` ("an external Lean development
of Ricci flow exists at <URL>; its interfaces informed R2–R3's shape") and delete the instructions
and the names.

## R06 (P3) — Two source links point at unauthorized copies, and one source is an unreadable scan

Location: `TauCetiRoadmap/RicciFlow/README.md` lines 955–960 (Cheeger–Ebin linked at a personal
GitHub Pages copy; Petersen, *Riemannian Geometry*, linked at a personal page on a university
server) and lines 916–918, 936 ("Math240 `0226_034`, physical pages3–4 (archive145–146)").

Claim: Cheeger–Ebin (AMS Chelsea, 2008) and Petersen (Springer GTM 171) are in copyright; neither
host is the publisher, an author page or an institutional repository, so the links are not legal
places to read them. "Math240 0226_034" is Thomas Mark's course scan (so identified in
`TauCetiRoadmap/MorseTheory/README.md` line 687); it is not public, the sources service finds no
legal copy, and the VariationalMethods review had the same scan removed. R8.4's "Source
acceptance" table is then built on a text no reader can open.

Witness: sources service answer `MARK240: failed: no legal source found` (recorded in this
review's `needs-references.toml`); the two book links resolve to third-party PDF copies.

Repair: cite Cheeger–Ebin and Petersen by edition and locator without links (Cheeger–Ebin
Lemma 4.11, Lemma 5.6, Theorems 5.9–5.10; Petersen 3rd ed. §6.2), marked `uncertified`. Replace
the Math240 table by the public statement it paraphrases: BS09 Theorem 1.1 (Berger–Klingenberg,
p. 1) for the global quarter-pinched theorem, TOP06 Theorem 10.1.1 (p. 123) for Hamilton, BW08
Theorem 1 (p. 1) for the four-dimensional positive-operator case. Drop "acceptance" wording.

## R07 (P3) — `Suggested.lean` form: namespace and section comments

Location: `TauCetiRoadmap/RicciFlow/Suggested.lean` line 15 `namespace RicciFlowSuggested`;
no `/-! ## Layer k: … -/` comments; docstring form (see R01).

Claim: the required namespace is `TauCetiRoadmap.RicciFlow`; the file states targets of R1–R3
(Metrics section) and R5 (AlgebraicCurvature section) and should mark them with the README's layer
titles.

Repair: rename the namespace, add the two section comments, and the docstring of R01.

## R08 (P3) — `curvatureFourTensor` is backticked as this roadmap's own name but not declared

Location: `TauCetiRoadmap/RicciFlow/README.md` lines 404 ("`ι_(t,x)*curvatureFourTensor (g t) x`")
and 445–446 ("Construct `curvatureFourTensor g x` in this submodule").

Claim: a backticked name of the roadmap's own is a claim that `Suggested.lean` declares it; the
file does not. It is definable at the pin with a real body: `g_x(R^g_x(u,v)w, z)` from
`(leviCivitaConnection I M).curvatureTensor x` (`Curvature/Tensor.lean` line 148) and
`g.inner x`, made continuous by finite dimensionality, exactly as R5.1 describes; it is also the
carrier the R01 headlines (positive operator, 2-positivity, pinching) are most naturally written on.

Repair: either declare it in `Suggested.lean` (with membership in `algebraicCurvatureSubmodule`
as a sorried target) or write the name in plain text in the README.

## R09 (P3) — Broken relative link to HopfRinow

Location: `TauCetiRoadmap/RicciFlow/README.md` line 109: `[HopfRinow](../HopfRinow/README.md)`.

Claim: HopfRinow is a completed roadmap at `Completed/HopfRinow/README.md`; the UniversalCovers
link on line 113 uses `../../Completed/…` correctly, this one does not.

Repair: `../../Completed/HopfRinow/README.md`.

## Verified sound

**Gate and build.** Gate at d658efa: all checks pass (worker's data). `lake env lean` on
`Suggested.lean`: six `sorry` warnings only (4.8 s). Dependency check: `depcheck: 204 roadmaps,
1416 edges, 0 problem(s)`. No change outside the roadmap folder (`git diff --stat
origin/main...HEAD` excluding the folder is empty).

**Pins.** Mathlib `6b7abb3c`, Tau Ceti `a91d3aa` (the worktree's `lake-manifest.json`; the shared
packages directory is at those revisions). Declarations opened at the pins:
`ContMDiffRiemannianMetric` (`Mathlib/Geometry/Manifold/VectorBundle/Riemannian.lean` lines
244–251: `inner`, `symm`, `pos`, `isVonNBounded`, `contMDiff`); `ProperCone`
(`Mathlib/Analysis/Convex/Cone/Basic.lean` line 60, `abbrev ProperCone := ClosedSubmodule R≥0 E`,
as the README says: closed, pointed, not necessarily salient); `tangentConeAt`
(`Mathlib/Analysis/Calculus/TangentCone/Defs.lean` line 66, scalars from `⊤ : Filter R`, so
`ℝ≥0` scalars give the positive cone, as R4.2 says); `InnerProductSpace.laplacianWithin` and
`instLaplacian` (`Mathlib/Analysis/InnerProductSpace/Laplacian.lean` lines 131, 138);
`MultilinearMap.mkContinuous` (`Mathlib/Analysis/Normed/Module/Multilinear/Basic.lean` line 299).
Tau Ceti: `ricciTensor` (`Curvature/Ricci.lean` line 57: `Ric(u,v) = trace (w ↦ R(w,u)v)`),
`curvatureTensor` (`Curvature/Tensor.lean` line 148, Lee's sign convention per the file header
lines 24–26, equal to the README's), `scalarCurvature` (`Curvature/Scalar.lean` line 53),
`sectionalCurvature`, `HasSectionalCurvatureAt`, `HasConstantSectionalCurvature`
(`Curvature/Sectional.lean` lines 70, 140, 164), `isMetricCompatible_leviCivitaConnection`
(used in `Riemannian/Hyperbolic.lean` line 92), the two `MetricVariation` files (path variation,
as the README says, not metric-family derivatives). The two "newer" names of R03 are absent.

**Signatures.** `#check @` on the eight declarations of the file in a scratch copy; compared with
the README. The binders the worker's list marks as dropped (`FiniteDimensional ℝ E`,
`I.Boundaryless` on the `def`s and `abbrev`s; `FiniteDimensional ℝ V` on `FourTensor`,
`IsAlgebraicCurvature`, `algebraicCurvatureSubmodule`, `pic2Expression`, `IsPIC2FourFrame`) are
not needed by those types; the two theorems about flows keep `[I.Boundaryless]` and
`[CompactSpace M]`, so "closed" is in scope. One-tactic probe (`simp`, `rfl`, `infer_instance`,
`intros; simp_all`) on all six sorried theorems: none closes; no padding.

**Cross-roadmap citations resolved** (on main unless stated): RiemannianGeometry R1–R4 and R7
(`## R1.` line 179, `## R4.` line 607 whose numbered items are R4.k: item 1 Günther comparison
line 609, item 6 injectivity radius line 687, item 7 Killing–Hopf space forms line 717; `## R7.`
line 1293 Bochner); R3.2 finite broken geodesics line 431. SmoothBundlesConnections B2–B4 (lines
557–1066). DifferentialGeometry 2.3–2.4 (lines 357, 362) and 3.5 (line 400,
`exists_timeDependentFlow`). PDE Lane F items 24–27 (lines 343–356) and F27.1–F27.5 (lines
356–501). ComplexKahlerGeometry K5/K5a (lines 568–570, `BundleSobolev` line 728). MorseTheory
M1–M3 (lines 90, 124, 430). HopfRinow and UniversalCovers in `Completed/`. At open heads:
PseudodifferentialOperators (#952) P1 line 149, P5 line 914 (Hölder spaces §5.4 line 1323), P6
line 1470, P7 line 1584 (§7.1 powers); VariationalMethods (#1028) Layers 1–5, §3.4 line 649
(kernel-orthogonal Poincaré, the "V3.4" the worker's tool could not match), §4.4 line 782, §5.3
line 924. All suppliers precede RicciFlow or are on main; PDO and VariationalMethods are new-folder
pull requests by other authors, which is allowed. Ownership: `roadmaps grep` over main and the 435
open pull requests for "Ricci flow", "DeTurck", "isotropic curvature", "Klingenberg", "sphere
theorem", "Böhm–Wilking", "curvature operator": no other roadmap builds these objects;
RiemannianGeometry (main, line 173) assigns the differentiable sphere theorem and Hamilton's
theorem to RicciFlow; Poincare3D (#1740) and GeometricTopology (#903) consume RicciFlow.

**Sources read** (cache ids): BS08 `3b1dab75` (arXiv 0705.0766v3), BW08 `e9de36e8` (arXiv
math/0606187v1), BS09 `59b4942d` (arXiv 0904.2604v2), SANT12 `08a42f3c` (arXiv 1205.1039v1),
CLT06 `fcb95492` (arXiv math/0505163v2), TOP06 `1d0ad8a6` (author page, March 2006 notes).

**Seeded sample.**
- R1.3: scaling laws and the normalization `a(t)=(Vol g₀/Vol g(t))^{2/n}`, `τ=∫a`: computed
  `dĝ/dτ = (a'/a)g − 2Ric = (2/n) r̄(ĝ) ĝ − 2Ric(ĝ)` using `Vol' = −∫Scal`; parabolic scaling
  TOP06 §1.2.3 (line 16 of contents). Sound.
- R1.4: `g(t)=(1−2λt)g₀` is TOP06 line 224; soliton `Ric+½L_Xg=λg` is TOP06 (1.2.4) line 260.
  Sound.
- R2.1: parabolic Hölder spaces and the one-sided Seeley-type extension with negative dyadic
  `b_k`, moment conditions `Σa_k b_k^j = 1` and `Σ|a_k||b_k|^j < ∞`: the standard construction;
  the Euclidean model is PDE F27.1 (line 356). Sound; no locator at the claim (R04).
- R2.3: quasilinear theorem with scalar principal part, contraction on an explicit ball, small-T
  control only of the lower norms: the DeTurck system is TOP06 §5.2 (line 1858–1880 defines
  `P(g) = −2Ric + L_{(T⁻¹δG(T))♯}g`, the README's `W`). Sound.
- R3.2: TOP06 Theorem 3.3.1 line 1485: on `[0, 1/M]` with `|Rm| ≤ M`, `|∇^k Rm| ≤ C M t^{−k/2}`;
  README's `K t^{−k/2}` on `[0, A/K]` is the same after scaling. Sound.
- R4.1: TOP06 Proposition 2.5.4 line 1259 (`∂R/∂t = ΔR + 2|Ric|²`), (2.5.8) line 1295
  (`dV/dt = −∫R`), Proposition 2.5.1 line 1226 (Riemann evolution). Sound.
- R4.2: TOP06 Theorem 9.6.1 line 3831 (closed manifold, fibre metric with compatible
  connections `A(t)`, closed parallel convex `X`, ODE-invariant ⇒ PDE-invariant). The README's
  stronger time-dependent-`C` and strict-inward versions are stated as its own targets. Sound.
- R4.3: finite-dimensional ODE API on the algebraic space; the εI-perturbation argument is BS08
  Proposition 11 line 551–580. Sound.
- R5.2: `Q(R)_ijkl = R_ijpq R_klpq + 2R_ipkq R_jplq − 2R_iplq R_jpkq` is BS08 line 184
  verbatim in indices; the README's `Q = 2(R²+R#)` with `I# = (n−2)I` agrees (table row 3). Sound.
- R6.1: pinching family definition BW08 lines 282–288; invariant set BW08 Theorem 4.1 line 482
  (`F` closed convex, invariant, `C(ε)∩{tr ≤ h₀} ⊂ F`, `F∖C(s)` bounded); the
  `F_{j+1} = F_j ∩ {R + 2^{j+1}hI ∈ C(θ_{j+1})}` sequence is BS08 Propositions 16–17 lines
  667–716 with `h=1` after scaling. Sound.
- R6.2: Klingenberg `inj ≥ π` for `¼ < δ ≤ K ≤ 1`, simply connected, `n ≥ 3`; conjugate radius
  `≥ π` from Rauch; even-dimensional oriented `inj ≥ π/√Kmax`: BW08 line 27 and 574 use exactly
  the former; the latter is Klingenberg's even-dimensional theorem. Cheeger–Ebin and Petersen not
  readable here (R06). Statements are the standard ones; sound.
- R6.3: BW08 proof of Theorem 5.1 lines 537–573: rescale to max sectional 1, pull back to
  `B_π`, limit in `⋂ λ_j^{−2}F = ℝ₊I`, Schur for `n ≥ 3`, propagate to radius `2π`, Bonnet–Myers
  `diam ≤ 3π/2`. Matches the README line by line. Sound.
- R6.4: `(∂_τ − L)E = 2Rm*E + (2/n)(Scal − r̄)E − (2/n)|E|²Id` and the contraction `−κE` on
  trace-free `E` at constant curvature `κ`: checked on `Rm = κ(g∧g)/…`: `Σ_pq r_ipjq E_pq =
  κ(δ_ij tr E − E_ij) = −κE_ij`. `div E = ((n−2)/(2n)) dScal` from `div Ric = ½dScal`. The
  rescaling `g(t)/(2(n−1)(T−t)) → g_round` is BS09 line 1142; factors `4` (n=3) and `6` (n=4).
  Sound.
- R7.1: BW08 Theorem 1 line 22 (2-positive ⇒ normalized flow converges to constant curvature),
  n ≥ 3 line 26; TOP06 Theorem 10.1.1 line 4203 for Hamilton. Sound (the README promises full
  smooth convergence, which it owns in R6.4; TOP06 states the subsequential form).
- R8.3: SANT12 Lemma 4.4.1 line 1344 (`∂_t|M|² = Δ|M|² − 2|∇M|² − 2R|M|²`); modified flow is
  `+2M` (SANT12 line 1362 has a misprint, see Source issues); CLT06 Proposition 2 lines 47–77:
  `J∇f` Killing, `g = dr² + h(r)²dθ²`, `f' = ah`, `a∫h(h')² = 0` from `h(0)=h(A)=0`,
  `h'(0) = −h'(A) = 1`. Sound.

**Adversarial table.**

| Statement | Instances tried | Values computed on each side | Result | Change |
| --- | --- | --- | --- | --- |
| `IsRicciFlowOn` sign: `∂_t g = −2·metricRicci` | unit `Sⁿ`, `n = 2, 3` | Tau Ceti `Ric(u,v) = tr(w ↦ R(w,u)v)`; constant curvature `κ`: `R(w,u)v = κ(g(u,v)w − g(w,v)u)`, trace `(n−1)κ g(u,v) > 0`; flow `g(t) = (1 − 2(n−1)κt)g₀`, shrinking; TOP06 line 227 same | agrees | none |
| `IsAlgebraicCurvature` Bianchi in slots 1–3 | constant curvature `κ`, `n = 2`: `r(u,v,z,w) = κ(g(v,w)g(u,z) − g(u,w)g(v,z))` | cyclic sum over `(u,v,z)`: `κ[(g_vw g_uz − g_uw g_vz) + (g_zw g_vu − g_vw g_zu) + (g_uw g_zv − g_zw g_uv)] = 0`; Bianchi in slots (1,2,4) is equivalent given the pair symmetries | holds | none |
| `Q = 2(R² + R#)`, `I# = (n−2)I` versus the contraction | `R = κI`, `n = 3, 4` | contraction: `Σ r_ijpq r_klpq = 2κ r_ijkl`, `2(B'−B'') = 2(n−2)κ r_ijkl`, total `2(n−1)κ² (δ_ik δ_jl − δ_il δ_jk)`; operator side `2(κ² + (n−2)κ²)I = 2(n−1)κ²I`; sphere ODE `κ' = 2(n−1)κ²` matches `κ(t) = κ₀/(1 − 2(n−1)κ₀t)` | agree | none |
| Complexified isotropic identity `r(z,w,z̄,w̄)` | `z = e₁+ie₂`, `w = e₃+ie₄`, general `r` with the four symmetries | 16-term expansion: imaginary parts cancel by pair symmetry; real part `r₁₃₁₃+r₁₄₁₄+r₂₃₂₃+r₂₄₂₄ − 2r₁₃₂₄ + 2r₁₄₂₃`; Bianchi `r₁₂₃₄ + r₁₄₂₃ − r₁₃₂₄ = 0` gives `−2r₁₂₃₄` | holds in the file's convention | none |
| Sign of `r₁₂₃₄` in PIC and `pic2Expression` | frame `(e₁,e₂,e₃,−e₄)`, parameter `λ ↦ −λ` | both flip the sign of the `r₁₂₃₄` term and nothing else; the "for all frames, all `λ,μ ∈ [−1,1]`" conditions are invariant | convention-robust | none |
| `pic2Expression` on constant curvature | `r = κ·(unit sphere)`, `n ≥ 4` | `κ(1 + λ² + μ² + λ²μ²) − 0 = κ(1+λ²)(1+μ²)`; `≥ 0` iff `κ ≥ 0`; `κ = −1` fails at `λ = μ = 0` | discriminates sign | none |
| PIC non-salient in `n = 4` (R5.3) | `R = A∧id`, `A` traceless symmetric, `n = 4` | `R_ijij = ½(A_ii + A_jj)`; isotropic sum `= tr A = 0`; `R₁₂₃₄ = 0`; so `±R ∈ PIC` | README claim holds | none |
| Berger plus strict quarter pinching ⇒ strict PIC2 (R5.6, `strict_quarterPinching_isPIC2`) | `a ≤ K ≤ b < 4a`, `λμ ≠ 0` and `λμ = 0` | `(1+λ²)(1+μ²) ≥ (1+|λμ|)² ≥ 4|λμ|`; `a·4|λμ| > (4/3)(b−a)|λμ|` iff `b < 4a`; at `λμ = 0` value `≥ a > 0`; CP² with `b = 4a` gives `0` at `λ = μ = 1` on a complex-line frame | strict hypothesis needed and present | none |
| Böhm–Wilking `D_{a,b}` formula and `κ_{a,b}` | compare with BW08 Theorem 2 lines 84–87 | `((n−2)b² − 2(a−b))Ric₀∧Ric₀ + 2a Ric∧Ric + 2b² Ric₀²∧id + tr(Ric₀²)/(n + 2n(n−1)a)·(nb²(1−2b) − 2(a−b)(1−2b+nb²))I`; README's `κ` has denominator `n(1+2(n−1)a)`, the same | identical | none |
| `ℓ_{a,b}` conventions BW versus BS | `A∧B` (operator) versus `A⊙B` (Kulkarni–Nomizu), `A = B = id` | `⟨(A∧B)(u∧v), z∧w⟩ = ½(A⊙B)(u,v,z,w)`; `Id∧Id = I = ½ id⊙id` (BS08 line 631); README `ℓ = R + 2a(Scal/n)I + 2b Ric₀∧Id = R + (a/n)Scal id⊙id + b Ric₀⊙id` = BS08 line 627 | consistent | none |
| `b_*` and Proposition 3.2's range | `n = 4` | `b_* = (√20 − 2)/8 ≈ 0.309`; inequality `n(n−2)b² + 4b − 2 ≤ 0` has root `(−2 + √(4 + 2n(n−2)))/(n(n−2))` = `b_*`; BW line 356 identity `(n−2)b_*² = (2/n)(1−2b_*)`: `0.191 = 0.191` | agree | none |
| `D_b` / `E_u` parameters and the joins | `b = ½`, `u = 0`, `n` general | `a_{1/2} = ((n+2)/4)/((n+2)/2) = ½ = (1+0)/2`; `p_{1/2} = (n−2)/(n+2) = 1 − 4/(n+2) = p₀`; `σ ≥ ½`: `n−2+8σ = n+2+4u` with `u = 2σ−1` | `D_{1/2} = E_0`, BS branches match BW Lemmas 3.4–3.5 | none |
| `C₂` meets Proposition 3.2's hypotheses | 2-nonnegative `R` with `Scal = 0` | eigenvalues `λ₁ ≤ λ₂ ≤ …`, `λ₁+λ₂ ≥ 0`, `Σλ_i = 0` ⇒ `λ₂ ≤ 0` ⇒ `λ₁ = λ₂ = 0` ⇒ all `λ_i ≥ 0`, sum `0` ⇒ `R = 0` | nonzero ⇒ positive scalar | none |
| `n = 3`: positive Ricci ⇔ 2-positive `Rop` | diagonal `Rop = diag(λ₁,λ₂,λ₃)` on `Λ²ℝ³` | Ricci eigenvalues `λ₁+λ₂, λ₁+λ₃, λ₂+λ₃`; `Ric > 0 ⇔ λ₁+λ₂ > 0` | holds | none |
| R3.3 lower rate `Q(t) ≥ 1/(C_n(T−t))` | from `D⁺Q ≤ C_nQ²` | `1/Q(t) − 1/Q(s) ≤ C_n(s−t)`, `s ↑ T` with `Q(s) → ∞` (TOP06 Theorem 5.3.1) | holds | none |
| Scalar lower bound `Scal_min ≥ s₀/(1 − 2s₀t/n)` | TOP06 Theorem 3.2.1 line 1361 | identical; lifespan `T ≤ n/(2s₀)` (Corollary 3.2.4) | holds | none |
| R1.3 normalization | `ĝ = a g`, `τ' = a` | `Vol(ĝ) = a^{n/2}Vol(g) = Vol(g₀)`; `a'/a = (2/n)r̄(g)`; `dĝ/dτ = (2/n)r̄(ĝ)ĝ − 2Ric(ĝ)` | normalized equation | none |
| R6.4 contraction and Bianchi | constant curvature `κ`, trace-free `E` | `Σ_pq r_ipjq E_pq = κ(δ_ij tr E − E_ij) = −κE_ij`; `div E = (½ − 1/n)dScal` | README values | none |
| R6.4 rescaling constants | unit `Sⁿ`, `κ₀ = 1`, `T = 1/(2(n−1))` | `g(t)/(2(n−1)(T−t)) = (1 − 2(n−1)t)g₀/(1 − 2(n−1)t) = g₀`; `2(n−1) = 4, 6` for `n = 3, 4` | holds | none |
| R8.1 surface equations | `n = 2`, `Ric = (R/2)g` | `−2Ric + (2/2)r̄g = (r−R)g`; `∂R = ΔR + R² − rR` (SANT12 line 1264); `Q = ΔL + R − r`; trace of `Hess L + ½(R−r)g` is `Q`, so `2|·|² ≥ Q²` (needs the `+` sign, see Source issues); `Q ≥ −r/(1−e^{−rτ})` | README correct | none |
| R8.3 soliton normalization | `M = 0` | `Hess f = ½(R−r)g = Ric − (r/2)g`, so `Ric + Hess(−f) = (r/2)g`: shrinking with `λ = r/2 > 0`, potential `−f` | holds | none |
| R8.3 `J∇f` Killing, zero field | `f` constant | `J∇f ≡ 0`, no circle action; then `Hess f = 0`, `R ≡ r` directly | README includes this case | none |
| `ricciFlow_unique`, degenerate dimensions | `finrank E = 0, 1` | `n = 0`: one metric on each point; `n = 1`: `Ric = 0`, both flows constant, equal from `g 0 = h 0` | holds | none |
| `exists_shortTime_ricciFlow` scope | `M = ∅`; noncompact `M` | `M = ∅`: any `T`; noncompact: excluded by `[CompactSpace M]`, boundary by `[I.Boundaryless]` (both in the elaborated type) | hypotheses present | none |
| `reaction_mem_positive_tangentCone_pic2` | `r = 0`; `r = κI`, `κ > 0` | `Q(0) = 0 ∈` tangent cone at `0 ∈` set; `Q(κI) = 2(n−1)κ²I = (2(n−1)κ)·r`, a positive multiple of a cone element, in the `ℝ≥0` tangent cone | holds; content rests on R02's data | R02 |

## Not verifiable

- Cheeger–Ebin, *Comparison Theorems in Riemannian Geometry*, Lemmas 4.11, 5.6, Theorems 5.9–5.10
  (R6.2): the README's link is a third-party copy of an in-copyright book; not read. The
  statements used (Klingenberg's lemma, the long-homotopy obstruction, the `n ≥ 3` strict-quarter
  injectivity bound) are the standard ones and agree with BW08 lines 27 and 574.
- Petersen, *Riemannian Geometry*, §6.2 (R6.2 even-dimensional injectivity estimate): same reason.
- Chow–Knopf Theorem 6.45 (named in the pull-request description for R3.3, not in the README):
  AMS book, not open; TOP06 Theorem 5.3.1 states the same terminal divergence and was checked.
- "Math240 `0226_034`" (R8.4): Thomas Mark's course scan, no legal copy; recorded as `MARK240` in
  this review's `needs-references.toml`. The theorems it is cited for were checked against BS09
  Theorem 1.1, TOP06 Theorem 10.1.1 and BW08 Theorem 1 instead.
- Karcher's proof of Berger's inequality `|R₁₂₃₄| ≤ (2/3)(Kmax − Kmin)` (R5.6): BS09 cites it as
  [47] without the statement; the constant was checked only by the computation in the table.

## Source issues

- **Misprint** in SANT12 at (4.21), printed page 40: the squared tensor is written as the Hessian
  of `log R` minus one half of `(R−r)` times the metric; it should be plus, so that its trace is
  `Q` and the inequality `2|·|² ≥ Q²` that follows holds; affects nothing.
- **Misprint** in SANT12 at the ODE comparison after (4.21), printed page 41: the bound on `Q` is
  written with `≤`; it should be `≥` (a lower bound, which the Harnack integration on the same page
  uses); affects nothing.
- **Misprint** in SANT12 at the modified flow, printed page 45: the modified metric derivative is
  written as `M`, equal to `(r−R)g` minus twice the Hessian of `f`; it should be `2M`, equal to
  `(r−R)g` plus twice the Hessian (the Lie derivative of `g` along `∇f`); affects nothing.
