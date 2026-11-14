# Repair of HyperbolicDynamicsAndThermodynamicFormalism (design, after review round 4)

Files edited: `packages/HyperbolicDynamicsAndThermodynamicFormalism/design/README.md`, `packages/HyperbolicDynamicsAndThermodynamicFormalism/design/plan.json`, `packages/HyperbolicDynamicsAndThermodynamicFormalism/sources.toml`. All eight findings of `REV-DESIGN-HyperbolicDynamicsAndThermodynamicFormalism~4` were checked against the cited sources, the pins and the ClassicalErgodicTheory head (e3c5108) and are correct; five are applied as asked, three in a different way, for the reasons given. There is no `Suggested.lean` at the design stage.

## F01 (P2) — applied differently

Layers 1–5 (pressure, variational principles, equilibrium states, Gibbs measures, Bowen's theorem, Abramov, invariant measures, open-cover entropy, expansive homeomorphisms, Bowen property, map mixing, toral entropy) → imported from ClassicalErgodicTheory §§0.3, 1.4, 3.4, 5.1–5.5, 6.1–6.2, 6.4, 7.1–7.3, 8.1–8.2, 8.4–8.5 with a full supplier contract. Kept, renumbered: ten targets that differ (Scope states each difference).

Why differently: the review proposed keeping compact-Hausdorff pressure and variational principle here. No target of this roadmap uses non-metrizable spaces, and ClassicalErgodicTheory already defines `topologicalPressure` on uniform spaces, so that generalisation extends its §§5.4, 7.1 in its own direction; it is listed under "Not part" (Misiurewicz1976). Map mixing is also ClassicalErgodicTheory's (§5.2), so only flow mixing stays (§2.1). Same pattern: §6.4's route now cites ClassicalErgodicTheory §8.4's Hölder criterion, which its bracket estimate feeds.

## F02 (P1) — applied

New §11.2: the smooth structure on GeometricCurrents G6's topological Grassmann bundle G_q(TM) (graph charts, GeneralizedCohomology G4.0b), the C¹ induced flow and C¹ function Φ for a C² generator, and Lemma A.3 (Λ* hyperbolic, dimensions dim E^s + q(d − q) and q). §11.3(a) now holds for any C¹ flow on a compact manifold; (b) applies it to Λ*. Old §§11.2–11.5 → §§11.3–11.6.

## F03 (P1) — applied differently

§10.1 defines W^s_x(ε), W^s_Λ(ε) (y ranges over M) and proves, for an attractor of a C¹ flow, closed α-neighbourhood ⊆ W^s_Λ(ε) and basin = ∪_t g^{−t}(W^s_Λ(ε)); route: unstable plaques lie in Λ, Brouwer (`TauCeti.brouwerFixedPoint_closedBall`), §8.3. §11.5(b): B_Λ(ε, T) ⊇ W^s_Λ(ε); §11.6 cites §10.1. HirschPalisPughShub1970 recorded (uncertified).

Why differently: the review's general statement for locally maximal sets (forward-trapped points lie in W^s_Λ(ε)) is used by no target, and its suggested route needs shadowing of pseudo-orbits off Λ for flows, which no target or supplier provides; §§11.5–11.6 use only the attractor case, whose route above needs only owned inputs. Pattern repair in the same route: §11.6's cover by B_x(2ε, k) was wrong; the triangle inequality gives 3ε (witness in §11.6's Checks: d = √5 ε ≈ 2.236ε > 2ε).

## F04 (P2) — applied

§9.2(c): "C^r conjugate to the flow of h∂_t … up to a cohomologous roof" → the roof-R suspension is defined as the flow of h∂_t on Tau Ceti's mapping torus, h([s, x]) = 1/(c + (R(x) − c)ρ(s)), 0 < c < min R, first return φ at time R; φ is C^{r+1} so ∂_t is C^r. (b) restated for a C^r generator. Two Checks added.

Note on (b): a jointly C^r flow can have a generator that is only C^{r−1}, so "the flow of hX is C^r" was not guaranteed; (b) now assumes a C^r generator and concludes a C^r generator hX.

## F05 (P2) — applied

§7.6: "compact manifold" → Hausdorff σ-compact M (added to the Conventions); extension by `SmoothPartitionOfUnity.exists_isSubordinate`. Layer 8: smooth metric from `TauCeti.nonempty_contMDiffRiemannianMetric` (whose hypotheses are T2 and σ-compact), distance `Manifold.riemannianEDist`, bi-Lipschitz on compact sets; charts from finitely many `extChartAt`, replacing "exponential charts". Plan 7.6 hypothesis changed.

Same pattern: the DifferentialGeometry Layer 12.1 citation for the metric (twice in Layer 7, twice in Layer 8, supplier contract) is replaced by the pinned Tau Ceti declaration itself, which DifferentialGeometry 12.1 names as its source.

## F06 (P3) — applied

§9.1 Needs split by item: Layer 7.1 for the Anosov property; Layers 6.1, 8.2 (bracket, plaques); ClassicalErgodicTheory §§0.3, 1.4, 5.2, 6.4, 8.1 and GeometryOfNumbersAndQuadraticArithmetic §4.2 for mixing, entropy and Haar measure, which under F01 are imported. Layer 9 Dependencies: Layers 2, 6, 7, 8 plus those suppliers. Plan 9.1 prerequisites match.

## F07 (P3) — applied

§5.2: "Lemma 6.13, line 1944" → "Lemma 6.13, lines 1908–1910", stated for n ≥ N(M); 1 ≤ n < N(M) follows from B_n ⊇ B_{N(M)} with Q e^{−2N(M)(|P| + max|φ|)}; the scales come from lines 1880–1887. Same pattern for flows: Lemma 4.16 holds for t ≥ T(M); §5.1's new API extends it to t ≥ 0, cited in §5.3.

## F08 (P3) — applied differently

The narrow integral inequality of old §3.2 is deleted with §3.2 (F01: affinity is ClassicalErgodicTheory §4.1 item 4, mixtures §6.2). Its two uses: the flow variational principle is ClassicalErgodicTheory §7.3; §3.1 now uses ArithmeticDynamics §2.7's equality hμ(T, ξ) = ∫ hμ_x(T, ξ) dμ (the SMB limit g_ξ(x) = hμ_x(T, ξ)), stronger than concavity.

Evidence for not citing ClassicalErgodicTheory §6.2 as the review suggests: §6.2 (its paragraph on Jacobs' theorem for mixtures) states the entropy-level formula h_{∫ν_s dρ}(T) = ∫⁻ h_{ν_s}(T) dρ, not the partition-level inequality; the partition-level statement is ArithmeticDynamics §2.7's identification of g_P, which ClassicalErgodicTheory's own contract also consumes.

## Checks run

- Dependency check, after the last edit:

      candidate: HyperbolicDynamicsAndThermodynamicFormalism is not in the merge order yet; checked as if placed after ArithmeticDynamics (the intake inserts it when its design is accepted)
      depcheck: 209 roadmaps, 1906 edges, 0 problem(s)

  No UPWARD or CYCLE line. The check does not see ClassicalErgodicTheory, which is neither on main nor in the merge order (see the maintainer notes). The new suppliers GeometricCurrents and GeneralizedCohomology are on main.
- Citation resolver on the README: no cross-roadmap citation and no Lean name found nowhere. It did not check Mathlib or Tau Ceti names on this host, so every new pinned name was checked by hand: `Manifold.riemannianEDist` (`Mathlib/Geometry/Manifold/Riemannian/PathELength.lean`:208, namespace `Manifold`), `SmoothPartitionOfUnity.exists_isSubordinate` (`Mathlib/Geometry/Manifold/PartitionOfUnity.lean`:556, namespace from line 537, `[T2Space M] [SigmaCompactSpace M]`), `MeasureTheory.ProbabilityMeasure.tendsto_measure_of_null_frontier_of_tendsto` (`Mathlib/MeasureTheory/Measure/Portmanteau.lean`:350), `TauCeti.nonempty_contMDiffRiemannianMetric` (`TauCeti/Geometry/Manifold/VectorBundle/Riemannian/Existence.lean`:69, `[T2Space B] [SigmaCompactSpace B] [IsManifold IB ∞ B]`), `TauCeti.brouwerFixedPoint_closedBall` (`TauCeti/AlgebraicTopology/Singular/BrouwerFixedPoint.lean`:149), `TauCeti.finiteGrassmannian` (`TauCeti/Topology/Grassmannian/Basic.lean`:52), `TauCeti.finiteGrassmannian.graphChart` (`TauCeti/Topology/Grassmannian/Graph.lean`:240, topological graph chart), `TauCeti.SmoothMappingTorus` for a C^n diffeomorphism with `mk_add_one` ([t + 1, x] = [t, φx], `TauCeti/Geometry/Manifold/Instances/MappingTorus.lean`:303). The ClassicalErgodicTheory names (`invariantProbabilities`, `topologicalPressure`, `pressureNetSum`, `flowTopologicalPressure`, `measureEntropy_flow`, `measureEntropy_toralEndomorphism`, `IsEquilibriumState`, `IsMeasureOfMaximalEntropy`, `IsFlowEquilibriumState`, `exists_isEquilibriumState`, `HasSpecification`, `HasBowenProperty`, `IsExpansiveFlow`, `HasFlowSpecification`, `HasFlowBowenProperty`, the variational-principle and Bowen-theorem names) were read in its `Suggested.lean` at e3c5108; `IsExpansive`, `IsTopologicallyMixing`, `IsGibbsMeasure`, `toralEndomorphism` in its README §§0.3, 5.2, 5.3, 8.4.
- Sources: one fetch, `HirschPalisPughShub1970` (doi 10.1007/BF01404552): paywalled, recorded `uncertified` with locator "Section 5.1" (the section BowenRuelle1975, line 404, cites). No `needs-references.toml` written. `cited_for` of every entry recomputed from the README; locators narrowed where whole chapters are no longer cited (Walters1982 → Theorem 8.2; BowenGroupEndomorphisms1971, BowenEntropyExpansive1972, BowenPeriodicPoints1971, BCS2022, Misiurewicz1976); ClimenhagaThompson2016 adds Lemma 6.13 and Proposition 4.15. Every entry is still cited. `sources.toml` parses.
- Plan: 45 targets (was 64), 165 tests (was 224); every definition target has an API and at least three tests; every `target:` prerequisite exists and precedes its consumer; README `### k.n` headings and plan ids coincide; JSON in the file's own format.
- Suggested.lean: none at the design stage, so no elaboration or `#check` comparison was run.
- No gate failures were listed for this round.

## Adversarial pass on the added and changed statements

| Statement | Instances | Values computed | Result | Change |
|---|---|---|---|---|
| §1.2 entropy-expansive ⇒ h = entropy at {d ≤ ε} < ∞ | identity of [0,1]; full two-shift at ε = 1/4; shrinking shifts on 2^m symbols | 0 = 0; covers 2^{n+2}, rate log 2 = h_top; Φ_ε(∞) ⊇ pieces of entropy m log 2 → ∞, h = ∞ | holds; hypothesis needed | Checks added |
| §1.2 finitely many periodic points (expansive) | full shift; identity of [0,1] | #Fix(T^n) = 2^n; uncountably many fixed points, not expansive | holds; expansivity needed | Check |
| §1.3 Γ_ε ⊆ orbit segment, time-t maps entropy-expansive | periodic orbit; identity flow of finite set; irrational linear flow | Γ_ε(x) = arc ⊆ g^{[−η,η]}x; Γ_ε(x) = {x}; Γ_ε contains a transverse segment | holds; non-expansive fails | t < 0 clause uses d_{|t|} |
| §2.1 flow mixing ⇔ time-t mixing | period-p orbit | g^t U ∩ U = ∅ near t = p/2; time-p map = identity, not mixing | consistent | Checks |
| §2.2 periodic specification ⇒ weak | swap; roof-one suspension | swap: weak (τ = 1), no fixed point so no periodic y for odd p; suspension: p = n + 1/2, |τ| ≤ ε < 1/2 never a period | implication strict | Check |
| §3.1 hμ(g^1) = hμ(g^1, ξ), all μ ∈ M(g^1) | period-1 orbit; suspension with product measure; ½(product) + ½(periodic time measure) on two copies | 0 = 0; log 2 vs trivial partition 0; ½ log 2 = ∫ hμ_x | holds; diameter needed | route via ArithmeticDynamics §2.7 |
| §4.1 P_{g^t}(F_t) = t P_g(F) | F = c, t = 2 | P_{g'}(2c) = 2h_top + 2c = 2P_g(c); with F instead: 2P_g(F/2) ≠ for nonconstant F | holds | route by rescaling (BR lines 190–192 is t = 1 only) |
| §4.1 ES under g^t | period-1 orbit, t = 1 | point masses ∈ ES(g^1, F_1) \ M(g) | equivalence only on M(g) | Check kept |
| §5.1 lower Gibbs, large times suffice | suspension, φ = 0, T₀ = 1 | μ(B_t) ≥ μ(B_1) ≥ K⁻¹/2 ≥ (4K)⁻¹ e^{−t log 2} on [0,1] | holds with K e^{2T₀(|P|+max|φ|)} | API |
| §5.1 sign | suspension, φ = 0, ε = 2^{−m} | ε2^{−t−2m}·2^t = ε4^{−m} > 0; opposite sign ~4^{−t} → 0 | sign pinned | Check |
| §5.2 small n | two-shift, φ = 0 | μ(B_1(x,1/2)) = 1/8 ≥ Q2^{−2N}·e^{−log 2} | holds | F07 |
| §5.2 Gibbs constant | uniform Bernoulli, ε = 1/2 | 2^{−(n+2)}·2^n = 1/4 | K = 4 | Check kept |
| §6.4 exponential closeness | bracket estimate | cλ^kδ + cλ^{n−1−k}δ ≤ 2cδλ^{min(k,n−1−k)} | matches ClassicalErgodicTheory §8.4's hypothesis | route |
| §6.4 non-Bowen potential at every scale | x = 0^ℤ, y with one 1 at n + m | d ≤ 2^{−m−1} for k < n; S_n difference = Σ_{j=m+1}^{n+m} 1/j → ∞ | fails at every scale (old Check tested only ε = 1/2) | Check corrected |
| §7.6 on σ-compact M | diag(2,1/2) on ℝ²; Jordan block on ℝ³ | rate 1/2 ≤ 3/4; ‖(1/2 1/8; 0 1/2)‖ = √0.3208 = 0.5664 ≤ 3/4 | holds | hypothesis widened |
| Layer 8 distances | two Riemannian metrics, compact K | bi-Lipschitz: paths in a compact neighbourhood, or length ≥ 2 dist(K, ∂N) | holds on compact sets only | header |
| §9.2(c) return time | R ≡ 1, c = 1/2; R(p) = 1, R(q) = √2; R(x₀) = 1, c = 2 | ∫(1 + ρ)/2 = 1; periods 1, √2; 2 − ρ = 0 where ρ = 2 | holds; c < min R needed | (c) rewritten, Checks |
| §9.2(b) regularity | jointly C^r flow with C^{r−1} generator | hX only C^{r−1} | old claim not guaranteed | hypothesis on generator |
| §10.1 attractor neighbourhood | θ' = 1, r' = −sin(2πr)/(2π); U = {|r| < 1/2}; saddle orbit of cat suspension | W^s_Λ(ε) = {|r| ≤ ε}, volume 2ε; ∩g^t U = U, not an attractor neighbourhood; volume 0 | holds; attractor needed | API, Checks |
| §10.1 Brouwer step | Lipschitz constants γ, γ' ≤ 1/2, α ≤ r/4 | |F(u)| ≤ γ(γ'r + α) + α ≤ 5r/8 ≤ r | self-map of E^u(r) | route |
| §11.2 dimensions | q = 0, q = d; cat suspension q = 1; lift of E^s | d + q(d−q) = d; 1 + 2 + 1 + 1 = 5 = 3 + 2; e_v + b e^{2aT} e_u + c e^{aT} e_s expands | holds for E^u, not E^s | new target |
| §11.3(b) tolerance | cat suspension, b = 0.1 | (1.01)^{−1/2} = 0.99504 < e^{−0.001} = 0.99900 | η depends on θ | Check kept |
| §11.5(b) | attracting circle; saddle orbit | m(B_Λ(ε,T)) ≥ 2ε ⇒ limsup ≥ 0; W^s_Λ(ε) null, P < 0 | consistent | (b) route |
| §11.6 covering radius | z = (0,0), x = (2ε,0), y = (0,ε) on the attracting circle | Bowen balls = closed ε-discs, meet at (ε,0); d(y,x) = √5ε = 2.236ε | 2ε fails, 3ε holds | route and Check |

## Ownership, suppliers and overlaps

ClassicalErgodicTheory (#2231, a new roadmap folder by another author, draft, head e3c5108) is an admissible supplier and cites nothing of this design; it names "a roadmap on uniformly hyperbolic dynamics" as the consumer of its §§8.4–8.6. It is not among the 202 open pull requests listed for this job; it was read through the roadmap service because the overlap file ranks it first (vocabulary 0.48, results 1.10). Ownership of what this roadmap keeps was searched by object at all open heads and on main (`roadmaps grep`): entropy-expansive maps, weak specification, lower Gibbs bounds, topological mixing of flows, hyperbolic attractors: no other owner (ClassicalErgodicTheory only cites Bowen's entropy-expansive theorem for expansive maps). The smooth Grassmann bundle of a manifold has no owner: GeometricCurrents G6 builds it topologically and GeneralizedCohomology G4.0b gives the finite Grassmannians their smooth structure, both on main and imported; this roadmap, its first consumer, owns the smooth bundle and the induced flow (§11.2). Brouwer's theorem is Tau Ceti's at the pin. The overlap file lists no conflicting pull request and no dropped or revision-only id.

## For the maintainer

- New supplier ClassicalErgodicTheory, an open draft pull request outside the merge order. The dependency check cannot see it; when it enters the merge order this roadmap must follow it, and it must merge first.
- A defect found in that supplier, not consumed here: ClassicalErgodicTheory §5.5 claims that on a compact metric space without isolated points transitivity of the ℝ-action of a flow is equivalent to a dense forward orbit. The roof-one suspension of the monotone shift (this roadmap's §6.6 Check) has no isolated points and a dense ℝ-orbit but no dense forward orbit (forward orbits of switch sequences accumulate only on the suspension of 1^ℤ). This roadmap keeps its forward-time convention and does not use that notion.
- Renumbering of this board design (no roadmap cites it; `roadmaps grep` finds no citation): Layers 1–5 were rebuilt (old 1.5 → 1.2, 1.6 → 1.3, 1.7 → 2.1, 1.8 → 2.2, 3.5 → 3.1, 4.8 → 4.1, 5.1 flow part → 5.1; old 1.2–1.4, 1.9, 2.1–2.4, 3.1–3.4, 3.6, 4.1–4.7 and the map part of 5.1 are ClassicalErgodicTheory's); old §§11.2–11.5 → §§11.3–11.6 after the new §11.2. Layers 6–10 keep their numbers.
- Plan consumer ArithmeticDynamicsPartII (definition of a measure of maximal entropy) was dropped: that definition is ClassicalErgodicTheory §8.1's.
- Not planned anywhere after this change: the variational principle on non-metrizable compact Hausdorff spaces (Misiurewicz1976), a candidate for a ClassicalErgodicTheory Part II.
- The covering radius in the SRB route changed from 2ε (round-3 wording) to 3ε; the volume lemma is applied at 3ε, which only changes constants.
- No suspicious instructions were found in the review text.
