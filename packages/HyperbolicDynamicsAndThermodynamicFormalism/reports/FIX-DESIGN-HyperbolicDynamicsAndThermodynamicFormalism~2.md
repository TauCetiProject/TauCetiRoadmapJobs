# FIX-DESIGN-HyperbolicDynamicsAndThermodynamicFormalism~2

Repair of the findings of REV-DESIGN-HyperbolicDynamicsAndThermodynamicFormalism on `packages/HyperbolicDynamicsAndThermodynamicFormalism/design/README.md`, `design/plan.json` and `sources.toml`. Every finding was verified against the cited sources, the supplier heads and the pinned libraries before being settled; twelve are applied (two of them differently from the suggested repair) and one is disputed with evidence.

## REV-DESIGN-HyperbolicDynamicsAndThermodynamicFormalism/F01 (P2) — applied

Verified: for the identity of [0, 1], φ = 0, ε = 1, every Bowen ball is [0, 1] and every invariant measure is Gibbs with K = 1, so δ₀ ⊥ δ₁ refutes the bullet. §5.1 API 3 now assumes T expansive and ε below an expansivity constant, and names the route (Gibbs bounds at smaller scales by BowenPeriodicPoints1971 Lemma 2.4, line 98; Vitali covering by two-sided Bowen balls shrinking to points; regularity). The refuting instance is a new §5.1 Check. plan.json `gibbs_equivalent` and a new test mirror this. The route was recomputed: the smaller-scale constant is K⁻¹e^{−2N(|P| + sup|φ|)}; the two-sided neighbourhoods of a closed set decrease to it because Γ_r(x) = {x} for r < c.

## REV-DESIGN-HyperbolicDynamicsAndThermodynamicFormalism/F02 (P2) — applied

Verified on the two-shift with β = 1. §6.2 now states existence for every β and uniqueness when 2β ≤ δ* (two shadowing points stay 2β-close along their orbits, and δ* is an expansivity constant by the first item); the route sentence and a new Check (β = 1 fails, β = 1/4 is the boundary) record it; plan.json statement and a new test updated.

## REV-DESIGN-HyperbolicDynamicsAndThermodynamicFormalism/F03 (P2) — applied

Verified at the ArithmeticDynamics open head: §2.6 (its README lines 2499–2500 as printed by the roadmap index) states hμ(T,P) ≤ hμ(T,Q) + Hμ(P|Q) only parenthetically for a finite truncation Q of a countable P. The general inequality is now the first bullet of §3.2, with the route through the chain rule of GeometryOfNumbersAndQuadraticArithmetic §4.2 (verified at its head, README line 1540: `conditionalPartitionEntropy` with chain rule) plus the monotonicity of conditional entropy under refinement of the conditioning, which is proved here (Jensen); a Check on the two-shift computes both sides. The supplier contract for ArithmeticDynamics §2.6 says what it supplies; §§3.3, 3.6 cite §3.2 for the inequality; plan targets 3.2, 3.3, 3.6 updated (3.6 no longer lists §2.6). Walters1982 Theorem 4.12 added to the manifest locator.

## REV-DESIGN-HyperbolicDynamicsAndThermodynamicFormalism/F04 (P2) — applied

Verified: ∅ satisfies every clause of §10.1 vacuously (`AddAction.IsTopologicallyTransitive` quantifies over nonempty opens) and carries no invariant measure. Basic sets are now nonempty by definition; the Anosov clauses of §§10.1–10.3 and §11.5 say "nonempty compact manifold"; ∅ is a new §10.1 Check; plan hypotheses of 10.1–10.4, 11.4, 11.5 say nonempty.

## REV-DESIGN-HyperbolicDynamicsAndThermodynamicFormalism/F05 (P2) — applied

Verified: BowenEntropyExpansive1972 line 192 (Theorem 2.4: h(f) ≤ h(f, ε) + h*_f(ε), so h(f) = h(f, ε) for an h-expansive constant), lines 55–56 (definition through Φ_ε), line 188 (Corollary 2.3, two-sided version for homeomorphisms). §1.5 API 3 now defines entropy-expansivity and states finiteness at the source's generality (with the itinerary argument for finiteness at a fixed scale), expansive homeomorphisms as the special case; a new Check (identity of [0, 1]) separates the two notions. §1.6 API 3 concludes h_top(g) < ∞ for Bowen–Walters expansive flows (new plan api `topEntropy_lt_top`). §10.3's route now says: g|Λ expansive by §6.6, finite entropy by §1.6, then §4.9; its *Needs:* and plan prerequisites list 1.6 and 6.6.

## REV-DESIGN-HyperbolicDynamicsAndThermodynamicFormalism/F06 (P3) — applied

Verified: an upper semicontinuous EReal-valued function on a nonempty compact set attains its supremum also when it is ∞ (nested closed nonempty superlevel sets), and ES is the closed superlevel set at P. The hypothesis h_top(T) < ∞ is dropped from §4.6 (README and plan 4.6 hypotheses); §4.7's consequence cites §4.6 "which assumes no finiteness of entropy". A new §4.6 Check records the h_top = ∞ case (ES = measures of infinite entropy) and notes that upper semicontinuity, not finiteness, is the working hypothesis (it fails for the shift on [0, 1]^ℤ). The Lipschitz-entropy target suggested as the alternative was not added: nothing needs it once the hypothesis is gone.

## REV-DESIGN-HyperbolicDynamicsAndThermodynamicFormalism/F07 (P3) — applied

Walters1982 is uncertified (paywalled), so the numbering could not be confirmed against a copy; two web searches of open citations found Theorem 9.7(i) cited for P(T, 0) = h(T) and Theorem 9.10 for the variational principle, nothing for 9.8. The reviewer's recollection and mine agree: §2.3 now cites Theorem 9.7 for the first four items and Theorem 9.8 for the power rule and conjugacy invariance; plan locator and the manifest locator list 9.8.

## REV-DESIGN-HyperbolicDynamicsAndThermodynamicFormalism/F08 (P3) — applied

§1.4 has an "Its API:" list (rescaling law with the empty-space exception, reversal, separated-set form), matching the plan's three api items. §1.1 API 5: Γ_ε(x) "is closed, and compact when X is compact" (ClimenhagaThompson2016 line 358 assumes X compact), with the identity of ℝ as the closed non-compact instance; plan 1.1 gains `gammaSet_isClosed`.

## REV-DESIGN-HyperbolicDynamicsAndThermodynamicFormalism/F09 (P3) — disputed

The pinned Tau Ceti (lake-manifest pin 2fd255d9) has `TauCeti/Analysis/ODE/LyapunovPerron/Basic.lean`, `Graph.lean`, `Linear.lean`, `Local.lean`, `Smooth.lean`, `Embedding.lean`: `ContinuousLinearMap.lyapunovPerronSolution` (Basic.lean line 529), `lyapunovPerronGraphMap` (Graph.lean line 87), `localStableGraphMap` (Local.lean line 154), `localUnstableGraphMap` (Local.lean line 393), the Lyapunov–Perron construction of the local stable and unstable manifolds of a hyperbolic equilibrium of y' = Ay + N(y). The reviewer's grep for "Perron" missed this directory. The clause is therefore not deleted; it is made precise instead: §8.1's *Needs:* names the two declarations and says they concern an equilibrium, not a sequence of maps, and are not consumed, and the From Tau Ceti contract lists them with the same caveat.

## REV-DESIGN-HyperbolicDynamicsAndThermodynamicFormalism/F10 (P3) — applied

All four verified at the pin (`RieszMarkovKakutani/Real.lean:451` with `[T2Space X] [CompactSpace X]`, finite μ; `VectorBundle/Riemannian.lean:128`; `ExtChartAt.lean:437`; `Contracting.lean:42`). Added to From Mathlib with files and what is assumed. Pattern: a sweep of every backticked name in the layers against the contract section found two more absent, `MeasureTheory.MeasurePreserving` (§3.1) and `fderiv` (§8.1), both verified at the pin (`Dynamics/Ergodic/MeasurePreserving.lean:44`, `Analysis/Calculus/FDeriv/Defs.lean`) and added.

## REV-DESIGN-HyperbolicDynamicsAndThermodynamicFormalism/F11 (P3) — applied

The two "Required extensions" items now read "What <Supplier> must provide (gap:sphere-bundle-embedding)" and "(gap:connection-map-jacobi-derivative)". The second contract states its hypotheses in both files: smooth Riemannian manifold with its Levi-Civita connection, v ∈ TM, ξ ∈ T_v(TM) with horizontal and vertical components (w, w'), t in the domain of the geodesic of v, J the Jacobi field with J(0) = w, D_tJ(0) = w'.

## REV-DESIGN-HyperbolicDynamicsAndThermodynamicFormalism/F12 (P3) — applied

Verified `IsDynNetIn` at `NetEntropy.lean:69–70` (pairwise disjoint entourage balls). The Conventions now fix the flow notion (pairwise disjoint open d_T-balls of radius ε), explain the map notion in the same words, and record that the classical d_T > ε convention differs by at most a factor two in scale, invisible in the limit; Checks at a fixed scale are read with the disjoint-ball convention. §1.4's separated-set API bullet refers to it; plan 1.4 statement records it.

## REV-DESIGN-HyperbolicDynamicsAndThermodynamicFormalism/F13 (P3) — applied

Verified `coverEntropy_empty` (`CoverEntropy.lean:488`) and EReal 0 · ⊥ = 0. §1.4 and plan 1.4 state the rescaling law on a nonempty compact Hausdorff space; the API bullet records the empty-space behaviour (both sides ⊥ for t ≠ 0, the law failing at t = 0 exactly as §1.3's k = 0 Check).

## Checks

Dependency gate (run as instructed after the edits):

    candidate: HyperbolicDynamicsAndThermodynamicFormalism is not in the merge order yet; checked as if placed after ArithmeticDynamics (the intake inserts it when its design is accepted)
    depcheck: 242 roadmaps, 2368 edges, 0 problem(s)

No UPWARD or CYCLE line. `roadmaps resolve` on the README: no cross-roadmap citation and no Lean name found nowhere. Style greps (LaTeX delimiters, process words, round labels, machine paths): none. plan.json re-serialised with its original indentation and encoding; 65 targets, 201 tests (seven tests added). No gate failures were listed for this round. Suggested.lean does not exist at the design stage, so no elaboration and no `#check` comparison was possible; nothing in this round introduces a Lean declaration.

## Adversarial pass on the changed statements

| Statement | Instances tried | Values computed | Result | Change |
|---|---|---|---|---|
| §5.1 API 3 (repaired) | identity of [0,1], φ = 0, ε = 1 and ε = 1/10 | all μ Gibbs with K = 1; Lebesgue and uniform on {k/20} Gibbs with K = 20; mutually singular | excluded by the expansivity hypothesis | Check added |
| §5.1 API 3 smaller-scale constant | expansive T, ε' < ε, N from Lemma 2.4 | μ(B_n(x,ε')) ≥ K⁻¹e^{−2N(|P|+sup|φ|)}e^{−nP+S_nφ(x)}; sign of P handled by |P| | holds | route text uses |P| |
| §5.1 API 3 covering step | closed A, radius ε/5 balls, order j | μ(A) ≤ K·K_{ε/5}·ν(N_j(A)); ∩_j N_j(A) = A by compactness and Γ_{ε/5}(x) = {x} | holds | — |
| §6.2 shadowing uniqueness | two-shift, δ* = 1/2, β = 1; β = 1/4 | every point shadows; 2β = 1/2 = δ* unique | holds | Check added |
| §3.2 conditional inequality | two-shift Bernoulli(1/2): (P = x₀, Q trivial), (P = (x₀,x₁), Q = x₀); identity of two points | log 2 ≤ 0 + log 2; log 2 ≤ log 2 + log 2; 0 ≤ 0 + H(P|Q) | holds, strict in the second | Check added |
| §3.2 route step H(Pⁿ|Qⁿ) ≤ Σ H(T^{−i}P | T^{−i}Q) | n = 2 | H(P∨T⁻¹P | Q∨T⁻¹Q) = H(P | Q∨T⁻¹Q) + H(T⁻¹P | P∨Q∨T⁻¹Q) ≤ H(P|Q) + H(T⁻¹P|T⁻¹Q) | holds (monotonicity in the conditioning) | stated as proved here |
| §1.5 API 3 finiteness at a scale | compact X covered by N balls of radius ε/2 | r_n(ε) ≤ Nⁿ, so h(f, ε) ≤ log N | holds | — |
| §1.5 API 3 expansive ⇒ entropy-expansive | ε < c | Γ_ε(x) = {x}, entropy of a point 0 | holds | — |
| §1.5 Check (identity of [0,1]) | any ε | Φ_ε(x) = [x−ε, x+ε] ∩ [0,1], identity entropy 0 | entropy-expansive, not expansive | Check added |
| §1.6 API 3 finiteness for flows | expansive flow, g¹ | Γ_ε(x; g¹, d₁) ⊆ g^{[−η,η]}x, Example 1.6 gives h*(ε) = 0 for g¹; §1.5 gives h(g¹) < ∞ | holds | — |
| §4.6 without finiteness | u.s.c. f on compact nonempty K with sup f = ∞ | {f ≥ n} closed nonempty nested, intersection nonempty | attained | hypothesis dropped |
| §4.6 Check h_top = ∞ | P = ∞, ∫φ finite | ES = {μ : hμ = ∞} | consistent | Check added |
| §4.6 Check u.s.c. failure | shift on [0,1]^ℤ, product measures on 2^k spaced points → δ_const | entropies k log 2 → ∞, limit 0 | u.s.c. fails, hypothesis is not vacuous | — |
| §1.4 rescaling on ∅ | t = 0, t = 2 | lhs ⊥, rhs 0·⊥ = 0; lhs ⊥, rhs 2·⊥ = ⊥ | fails only at t = 0 | nonempty assumed |
| §10.1 nonempty | Λ = ∅ | M(f|∅) = ∅ | excluded | Check added |
| §10.3 finiteness route | basic set of a C¹ flow | §6.6 expansive ⇒ §1.6 h_top(g|Λ) < ∞ ⇒ §4.9 hypothesis met | holds | route and Needs updated |
| Conventions, flow separated sets | disjoint ε-balls vs d_T > ε | disjoint ⇒ d_T ≥ ε; d_T > 2ε ⇒ disjoint at ε | limits agree | sentence added |

## For the maintainer

- No name cited by other roadmaps changed; the roadmap has no Suggested.lean yet (design stage).
- Ownership against open pull requests without files given in the brief was not checked beyond the review's own `roadmaps grep`; nothing added in this round is a new object (the conditional-entropy inequality of §3.2 is a lemma about the imported entropy API, not supplied by ArithmeticDynamics §2.6 at its head).
- The supplier contract for ArithmeticDynamics §2.6 is narrower than before (supremum over finite partitions only); plan target 3.6 no longer lists §2.6.
- F09: the reviewer's claim that Tau Ceti has no Lyapunov–Perron results is false at the pin (directory `TauCeti/Analysis/ODE/LyapunovPerron/`); the README now names the declarations and states that they are not consumed. If the reviewer re-raises it, a human decides.
- Walters1982 remains uncertified; Theorem 9.8 (power rule, conjugacy) and Theorem 4.12 (conditional inequality) are cited by locator alone.
