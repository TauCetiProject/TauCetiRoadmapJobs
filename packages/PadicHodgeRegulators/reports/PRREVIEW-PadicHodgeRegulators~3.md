# Review of PadicHodgeRegulators (pull request #1498 at 13305d8)

**Verdict:** needs changes

## R01 (P2) — Four supplier gaps still registered in the plan ask for what is now provided or owned here

**Location:** packages/PadicHodgeRegulators/design/plan.json:4,10,16,22 (`dagger-syntomic-filtration`, `rigid-negative-weights`, `normalized-syntomic-boundary`, `semistable-period-descent`, all on CohomologyComparisonsPartII); TauCetiRoadmap/PadicHodgeRegulators/README.md:96 “Three regulator-specific statements on these carriers are targets here rather than supplier inputs”.

**Claim:** This head removes all four gap statements from the README (no `gap:` slug remains in the file) and rewrites §§4.1, 4.6, 7.7, 7.9–7.11 and the rigid syntomic supplier contract to consume CohomologyComparisonsPartII §§2.2 and 3.4 directly and to own the Bloch–Kato sign, the comparison range, the exponential square and the potentially semistable descent. The plan, which is what the intake reads and announces on the supplier's job, still declares the four gaps.

**Witness:** CohomologyComparisonsPartII at its head (TauCetiRoadmap/CohomologyComparisonsPartII/README.md:346–379, §2.2) defines the fibre for every integer r, the coordinate change (a,b;u,v)↦(b,a;−v,u), the tube-filtered variant, κ_r and its equivalence for proper X; its §3.4 (README.md:468–480) proves ω_Q∘δ_U=p^r·δ_D. So `dagger-syntomic-filtration` and `rigid-negative-weights` ask for what the supplier provides, and the remaining content of `normalized-syntomic-boundary` and `semistable-period-descent` is now the targets of README §4.6 and §7.7 (README.md:1014, 1536). A declared gap that asks for what is already provided is a finding by the review rules; the plan and README no longer declare the same slugs.

**Exact repair:** Retire the four entries from the `gaps` list of packages/PadicHodgeRegulators/design/plan.json (remove only; `completed-bloch-comparison` stays). No README or Lean change: the README's supplier citations and the two new targets are correct as they stand. Repair test: after the edit the plan's slugs are exactly the set `grep -o 'gap:[a-z0-9-]*' README.md | sort -u` would print plus `completed-bloch-comparison`, whose supplier targets KTheoryFiniteLocalFields §§6.6–6.7 were resolved in the first review.

## Previous findings

- R01 — repaired: README:580 now cites BK1990 Corollary 3.8.4, p. 355, and Definition 3.10, p. 359, for the restriction and corestriction compatibilities, and Rubin2000 Appendix B Corollary 5.2, p. 157, and Corollary 5.3(ii), pp. 157–158, for Shapiro and the rational finite-extension descent; the Berger locator is gone. BK1990 line 716 is Corollary 3.8.4 (printed p. 355), line 840 is Definition 3.10 (p. 359); Rubin2000 line 6854 is Corollary 5.2 and line 6862–6882 Corollary 5.3 with its proof (pp. 157–158). The repair introduced no new problem.

## Verified sound

:robot: Independent AI incremental re-review of 97 changed lines since c1443be (48 insertions, 49 deletions, README only; Suggested.lean unchanged). The previous P3 is repaired. One new finding, P2, on the board plan's gap register; no README or Lean defect was found in the changed passages.

**Gate and elaboration.** The gate rerun from the pull-request worktree passes every text check and the dependency check (the rerun prints no `build=` key; the worker's gate at this head has build=0). `lake env lean` on `TauCetiRoadmap/PadicHodgeRegulators/Suggested.lean` exits 0 with exactly the three intended `sorry` warnings at lines 43, 81, 102. The worktree is clean and the diff outside the folder against origin/main is empty. The independent dependency command returned

    depcheck: 239 roadmaps, 2366 edges, 0 problem(s)

with no UPWARD, CYCLE or moved line. The Lean file is unchanged since the previous two reviews, which elaborated all seven `#check @name` signatures and ran the one-tactic probes; the worker's signatures file at this head shows the same seven elaborated types, none with a dropped section binder, matching README §§5.1–5.5 and §§9.1, 9.7–9.11. No new shortcut, option override, sorry-bodied data, algorithm or re-planning was introduced.

**The changed passages and their suppliers.** Every citation the diff adds was resolved at the cited head or pin:

| Citation added at this head | Resolved where | What it says |
|---|---|---|
| CohomologyComparisonsPartII §2.2: every integer weight, coordinate isomorphism (a,b;u,v)↦(b,a;−v,u), tube-filtered variant, κ_n, equivalence for proper X, Huber–Kings identification | TauCetiRoadmap/CohomologyComparisonsPartII/README.md:346–379 at its open head | All present, with f_r(a,b)=((1−p^(−r)φ)a, bc(a)−sp_r(b)) from A⊕F^r to A⊕C; “Chern-class compatibility of κ_r is regulator content and is not part of this target”, which is exactly what §4.1 here now owns. |
| CohomologyComparisonsPartII §3.4: ω_Q∘δ_U=p^r·δ_D | Same README:468–480 | Stated on the arithmetic-pair domain with legs (p^r,id,p^r), and its r=1 Check computes ω_Qδ_U(b)=p·δ_D(b). |
| Polylogarithms §2.1 blochWignerDesc, weightTwoRegulator; §2.3 weightTwoRegulator_borel, borelCalibration_two | TauCetiRoadmap/Polylogarithms/README.md:136–150, 189–201 at head fc00043 (#1424) | §2.1 defines the ℚ-linear descent [z]₂↦D(z) and the per-conjugate-pair regulator; §2.3 proves the Borel proportionality in the source's coordinates with an exactly computed scalar. Polylogarithms nowhere cites PadicHodgeRegulators, so reversing the supply direction creates no cycle; Polylogarithms precedes this roadmap in the merge order and is listed in the pull request's dependencies. |
| ColemanIntegrationPartII §§2.1–2.3, 3.1a, 3.2–3.4, 4.0c, 5.1–5.5, 6.0–6.4, 7.3–7.6 | TauCetiRoadmap/ColemanIntegrationPartII/README.md:239–337, 463–555, 676, 858–961, 972–1075, 1152–1246 at head 4acd07e | Every cited subsection exists with the content the contract paragraph attributes to it (logarithmic annular functions and alternating double index; wide-open reciprocity, normalized component primitives, graph correction and corrected pairing; natural single integral; labelled auxiliary primitives and the local triple index; global end-sums, choice cancellation and the Coleman one-form pairing; finite-extension trace, closed-point indices and semistable-extension independence). |
| NoncommutativeAndEquivariantIwasawa §F.6 for D_pst, filtered descent of D_dR, restriction/corestriction | Its open head (#1307), README heading at line 4013; D_pst and the filtered descent D_dR,K(V)≅D_dR,E(V)^Gal(E/K) with E⊗_K D_dR,K≅D_dR,E, and the res∘cor scalar [K′:K] | Supplies exactly the descent data §7.7's route uses. |
| ArithmeticGaloisDuality §R02.1.2 | Its open head (#858), README line 600 “Continuous cochains into inverse limits” | Continuous cohomology carrier for the descent route. |
| K3BlochGroups Layer 4 and §§4.20, 6.3 (s_F and integral root multiples) | TauCetiRoadmap/K3BlochGroups/README.md:1087, 1685, 2089 at its head | Unchanged citations, still present. |
| `TauCeti.unitFiltration K 1` | TauCeti/NumberTheory/LocalField/UnitFiltration/Basic.lean:99 | Units of 𝒪[K] congruent to 1 mod 𝓂[K]^i inside Kˣ. |
| `TauCeti.hasSum_log_of_mem_unitFiltration_one` | TauCeti/NumberTheory/LocalField/Logarithm.lean:97 | Under `FinitePadicExtension K p`, the series Σ(−1)^(n+1)/n·(u−1)^n sums to `log u` for u∈U(K,1); the file's `log` is Mathlib's `NormedSpace.log` (its header, line 20). |
| `TauCeti.continuous_log_unitFiltration` | Same file:165 | Continuity of log on U(K,i) for 1≤i. |
| `TauCeti.deepUnitExpLogEquiv K hi` | TauCeti/NumberTheory/LocalField/DeepUnits/Basic.lean:117 | `unitFiltration K i ≃ₜ* Multiplicative (𝓂[K]^i)` under `absoluteRamificationIndex K p < (p−1)·i`, log forward and exp inverse, as the README states. |

No other roadmap, on main or at an open head, states the potentially semistable descent of H¹_st with its coordinates (a search for the statement over all indexed roadmaps hits only this README), so §7.7 is its owner; CohomologyComparisonsPartII §5.3 is h-descent, not Galois descent, and is consumed, not duplicated. The two automatic resolver leads are the same as in the previous rounds (FontaineBPR1994 is a source key; `KTheoryQ.dvr_localization_iso` is the ColemanIntegration §L3.Fa.1 target). No `needs-references.toml` exists for this job.

**Sources reopened for the changed locators** (page = printed page):

| Target | Source evidence | Result |
|---|---|---|
| Rigid syntomic contract, order and signs | Besser2000 line 710–725, Proposition 6.3 and (6.2), author pp. 19–20: cone of (x,y)↦((1−φ/pⁿ)x, x−y) from RΓ_rig(K₀)⊕FilⁿRΓ_dR to RΓ_rig(K₀)⊕RΓ_rig(K) | Matches f_n(a,b)=((1−p⁻ⁿφ)a, bc(a)−sp_n(b)) in the A⊕Fⁿ→A⊕C order. |
| Huber–Kings order | HK2011 line 543–559, Definition 2.2.1, p. 14: (a,b)↦(a−b,(1−Φ*/pⁿ)b) with the filtered term first | Matches “(b,a)↦(sp_n(b)−bc(a),(1−p⁻ⁿφ)a) into C⊕A”. |
| Point computation and η | HK2011 line 573–598, Example 2.2.4 and Definition 2.2.5, pp. 14–15: cone(K₀→K⊕K₀)[−1], η⁻¹:K[−1]→RΓ_syn a quasi-isomorphism, η:H¹(R,n)→K | η's inverse is the inclusion of K as the C-slot of their order; the transported formula η[(u,v)]=(1−σ/pⁿ)⁻¹u−v is recomputed in the table below. |
| Tube-filtered identification | HK2011 line 605–611, Proposition 2.2.7, p. 15 | Huber–Kings cohomology agrees with Besser's Definition 9.3 (strict neighbourhoods versus dagger spaces). |
| Uniqueness of the universal class | HK2011 line 643–648, paragraph before Definition 2.3.3, p. 16 | The universal syntomic Chern class is uniquely characterised by its image in Filⁱ of the de Rham cohomology of BGL†. |
| Comparison map κ | Besser2000 line 1105–1117, Proposition 9.5, author p. 30 | Functorial map from the compactification-filtered complex to the tube-filtered one, built on filtered terms through the compactification. |
| §7.7 descent | NN2016 line 669–688, definition of C_pst and “C_pst(D)=C(D)^{G_K}”, Remark 2.12, p. 14; line 725, proof of Proposition 2.16, p. 15 (“Both sides satisfy Galois descent for finite Galois extensions”) | Supports the G-invariant-complex description and the finite-Galois-descent step. |
| §1.7 (previous R01) | BK1990 line 716–725, Corollary 3.8.4, p. 355; line 840–844, Definition 3.10, p. 359; Rubin2000 line 6854–6882, Corollaries 5.2–5.3, pp. 157–158 | Attribution now correct. |

Of this round's 15 seeded targets, §§1.7, 4.2 and 7.1 touch the changed dependency closure and were reopened (§7.1's normalization uses only the Frobenius-cone slot, which the new coordinates leave unchanged); §3.6's Layer dependencies changed only by naming the Tau Ceti declarations above. The other eleven (§§5.2, 6.5, 6.6, 8.2, 8.4, 8.12, 8.14, 8.15, 9.18, 9.26, 9.33) are unchanged and carry their computed rows below. No added locator is marked unverified.

**Adversarial table.** Fresh rows for every changed statement, then the carried rows with their original values and attribution.

| Statement | Instances tried | Values computed on both sides / wrong model | Result; change |
|---|---|---|---|
| Rigid contract: point fibre and η well defined | X=Spec R, n≥1, a∈K₀ | f_n(a,0)=((1−σ/pⁿ)a, a); η of it is (1−σ/pⁿ)⁻¹(1−σ/pⁿ)a−a=0. Image has dimension f=[K₀:ℚₚ] in K₀⊕K, so dim H¹=[K:ℚₚ]=dim K and η(0,v)=−v is onto. | Pass; η is an isomorphism. |
| Rigid contract: transport of Huber–Kings' η | Our (u,v)∈A⊕C ↦ their (−v,u)∈C⊕A | Their cone map at a=0 is b↦(−b,(1−σ/pⁿ)b) (Definition 2.2.1), so their η(0,c)=(1−σ/pⁿ)⁻¹c and η(c,0)=c; transported: η(u,v)=−v+(1−σ/pⁿ)⁻¹u. Reading Example 2.2.4's displayed (1,1−σ/pⁿ) literally would give −v−(1−σ/pⁿ)⁻¹u, which does not vanish on the image (value −2a). | Pass; the README's formula is the consistent one. Source issue below. |
| Rigid contract Checks, R=ℤₚ | n=2: (c,0),(0,c); the functional v−u/(1−p⁻²) | η values c/(1−p⁻²) and −c; the functional is −η on both. n=0: f(a,b)=(0,a−b), H⁰=H¹=ℚₚ. n=−1: f(a,b)=((1−p)a,a−b), bijective since p≠1, all H=0; with F⁻¹=0 the fibre is [ℚₚ→ℚₚ⊕ℚₚ] and H¹=ℚₚ. | Pass. |
| κ_n at the point and on A¹ | X=Spec R; X=A¹_{ℤₚ}, n=1 | Both filtered terms are K for n≤0 and 0 for n≥1, so κ_n=id. On A¹ the tube-filtered H¹ is the infinite-dimensional K⟨x⟩†dx while the compactification-filtered H¹ is K: no equivalence, as the contract says. | Pass; the “proper only” clause is necessary. |
| §4.1 κ_i carries Chern classes | X=Spec R, i=1, unit u | κ=id, so Besser's and Huber–Kings' regulators agree trivially; on BGL_N the de Rham image of κ_i(c_i) is the analytified de Rham Chern class, and the tube-filtered class is unique with that image (HK2011 p. 16). | Pass; stated as a target here, not imported. |
| §4.6 boundary rescaling | p=5, r=1 and r=2, b≠0 | Legs (p^r,id,p^r): ω_Q sends the class of (0,b) to (0,p^r b), so ω_Qδ_U=p^rδ_D; hence α^norm=ω_Q⁻¹δ_D=p^(−r)δ_U, and at r=2 the unscaled boundary is 25·exp_BK as the Check says. Mod 5 the scalar 25 is 0, so no integral inverse. | Pass; supplier domain (arithmetic pairs) and the formal-semistable reading both stated. |
| §4.7 calibration test class | F=ℚ(√−3), ω=e^(iπ/3), b=2[ω] | reg_σ(s_F⁻¹b)=2κ₂P₂(σω); reg_σ(dJ_Fψ_Fb)=2P₂(σω); Borel values −4κ₂P₂(σω) and −4P₂(σω). P₂(σω)=i·D_BW(e^(iπ/3)) with D_BW(e^(iπ/3))=Cl₂(π/3)=1.0149…≠0. Mixing a Borel value with a reg_∞ value gives the spurious ratio −2κ₂. | Pass. |
| §4.7 κ₂ real and c₂ rational | Same b; linearity | reg_∞ is ℝ-linear on K₃(F)⊗ℝ and injective (BorelRegulators §2.3); the two classes are rational and both map to the same real line, so their ratio κ₂⁻¹ is a real number that must be rational, as the unchanged proof paragraph argues; the supplier's explicit constant fixes it. | Pass; no change. |
| §7.7 descent (a)–(b), semistable over K | V=ℚₚ, K=ℚₚ, L unramified quadratic, G=C₂ | dim H¹(K,ℚₚ)=2, dim H¹(L,ℚₚ)=3, dim H¹(L,ℚₚ)^G=2 (coinvariants of L^× are K^× via the norm, rationally). H¹_st=unramified line on both sides: res(u_K)=2u_L, cor(u_L)=u_K, so [L:K]⁻¹cor∘res=id and res∘[L:K]⁻¹cor=id on invariants. | Pass. |
| §7.7 descent, not semistable over K | V=χ a ramified quadratic character of K, L its splitting field | D_st,K(χ)=0, D_K/F⁰=0, so H¹_st(K,χ)=0. Over L: H¹_st(L,ℚₚ) is the unramified line, on which g∉G_L acts by χ(g)=−1, so the G-invariants are 0. Forgetting χ in the G-action would give invariants of dimension 1 and a false isomorphism. | Pass; semilinear action with χ is essential. |
| §7.7 descent (c): invariant complex | D=D_pst(V), L semistabilizing | (D_st,L(V)⊗_{L₀}K₀^nr)^{G_K}=D_st,L(V)^G=D_st,K(V), and (D_dR,L/F⁰)^G=D_dR,K/F⁰ by exactness of G-invariants on ℚₚ[G]-modules; this is NN's C_pst(D)=C(D)^{G_K}. | Pass. |
| §1.7 repaired locator and §1.9 descent | Degree 5 and degree 1, tangent value a | Tr(a)=5a and rational descent recovers a; degree 1 is the identity; integral averaging mod 5 cannot divide by 5, which is why Rubin's Corollary 5.3(ii) (rational) rather than (i) (prime-to-p) is cited. | Pass. |
| Tau Ceti unit logarithm hypotheses (§§1.3, 3.5, Layer 3) | K=ℚₚ (e=1): p=5,i=1; p=2,i=1; p=2,i=2 | 1<4 holds: U(1)≃5ℤ₅. 1<1 fails: log(−1)=0 on 1+2ℤ₂, so no equivalence. 1<2 holds: 1+4ℤ₂≃4ℤ₂. The convergence and continuity theorems need only i≥1 and `FinitePadicExtension`, which §3.5's finite products satisfy componentwise. | Pass; the README states the hypothesis e<(p−1)i. |
| §§7.9–7.11 Needs relabelling | Each named ColemanIntegrationPartII and CohomologyComparisonsPartII section | Every section exists at its head (table above); the mathematics of §§7.9–7.11 is unchanged, so the carried rows apply. | Pass. |
| Downstream paragraph | Polylogarithms direction | Polylogarithms cites nothing from this roadmap; this roadmap cites its §§2.1, 2.3; merge order has Polylogarithms earlier. | Pass; single direction. |

Carried rows, with their original computed values and prior attribution (the second-round report, which itself carried most from the first):

| Statement | Instances tried | Values computed on both sides / wrong model | Result; change |
|---|---|---|---|
| §1.9 completed Kummer source | Zero abelian variety; torsion point; P=exp(v) | Completed rational source and tangent space are 0 in dimension 0; torsion maps to 0 under κ and log; log_BK κ(exp(v))=v=log_A(exp(v)). | Pass. Evidence carried from [R2][prior]. |
| §1.9 local conditions and crystalline fixed space | Tate E₅/ℚ₅, φ(e₁)=e₁/5, φ(e₀)=e₀, N(e₀)=e₁ | Nφ(e₀)=e₁=5φN(e₀); ker N=ℚ₅e₁; fixed part 0 since 1/5≠1. Dimensions of H_e,H_f,H_g are (1,1,1), dim H¹=2. | Pass. Evidence carried from [R2][prior]. |
| §1.9 bad-reduction logarithm | E₅, representatives 6 and 30 of the same point | log₅6=55 mod 125; ord₅6=0, ord₅30=1, log₅5=0; both corrected logarithms and log_BK κ give 55. | Pass. Evidence carried from [R2][prior]. |
| §1.9 all-prime scope | Tate E₂,[5]; Tate E₃,[4] | log₂5=28 mod 32; log₃4=21 mod 27; in each case ker N has φ=1/p, fixed dimension 0, local-condition dimensions (1,1,1). | Pass. Evidence carried from [R2][prior]. |
| §1.9 isogeny and quotient naturality | [2] on E₅; identity; E₅×E₅→E₅ on ([6],[36]) | log₅36=110=2·55; identity gives 55; projection sends (55,110) to 55, summation would give 40. | Pass. Evidence carried from [R2][prior]. |
| §1.9 differential pairing and descent | π*ω_E=2ω_f, a=55; degree 5 | 2a=110 mod 125; trace 275, rational descent recovers 55. | Pass. Evidence carried from [R2][prior]. |
| §1.9 homological Hodge quotient | g=0,1,2 | dim H¹_dR=0,2,4; Fil⁰ dimensions 0,1,2; quotients 0,1,2=dim Lie(A). | Pass. Evidence carried from [R2][prior]. |
| §9.30a differential realization and sign adapter | Unit; E(1); zero module; φ=2,γ=3 | D_dR=E=Fil⁰ for the unit; twist has Fil⁰=0; d⁰1=(1,2), d¹d⁰1=0; transposed (2,1) gives 3; degree-two negation matches. | Pass. Evidence carried from [R2][prior]. |
| §9.30a exponential/dual comparison and torsion contract | D_rig(ℚ₅); C₂ over ℚ₂ | exp=0; exp*(0,logχ(γ))=1, exp*(c,0)=0; (1+s)/2 acts by 1 and 0; trace∘restriction gives 2. | Pass. Evidence carried from [R2][prior]. |
| §9.33 dependence on §9.30a | (1−φ)z=(1+T)⁶−(1+T), θ=η⁻¹κ | Both charts give η(6)⁻¹ζ₅⁻¹−1; printed label gives η(6)⁻¹ζ₅−1 in one chart; Gauss value 1 at modulus 5, 0 at 25. | Pass. Evidence carried from [R2][prior]. |
| Conventions: Tate period and reciprocity | p=5, twists 0,1,2 | φ(d_r)=1,1/5,1/25; quotient dimensions 0,1,1; pairings log₅6 and −log₅6, log₅6≡55 mod 125. | Retain. Evidence carried from [R2][prior]. |
| Fundamental/finite period complexes | V=ℚ₅, ℚ₅(2) | (1−φ,can) is x↦(0,0) and x↦(24x/25,x); finite H¹ dimensions 1 and 1. | Retain. Evidence carried from [R2][prior]. |
| Divided/undivided arrows | p=5, r=2; mod 5 | Both composites scalar 25; mod 5 scalar 0. | Retain. Evidence carried from [R2][prior]. |
| Period lattice conversion | (p,r)=(2,2),(3,6),(5,2) | Generators 1/8,1/4; 1/162,1/27; 1,1; multipliers 2,6,1. | Retain. Evidence carried from [R2][prior]. |
| Unramified algebra / root convention | F₂; ℚ₅(ζ₅); empty product | Tame roots over F₂ have order 1; ramified degree 4, residue degree 1; empty rank 0. | Retain. Evidence carried from [R2][prior]. |
| Completed versus integral K₃ | ℚ₂,ℚ₃,ℚ₅; empty | ℤ₂⊕ℤ/8, ℤ₃⊕ℤ/3, ℤ₅, 0; torsion maps to 0. | Retain. Evidence carried from [R2][prior]. |
| 0.1 | ℚ₅(2),ℚ₅,ℚ₅(−1) | Quotient dimensions 1,0,0; φ=1/25 on the first. | Retain. Evidence carried from [R2][prior]. |
| 1.1 | Tate twists r=0,1,2 over ℚ₅ | (H_e,H_f,H_g,H¹)=(0,1,1,2),(1,1,2,2),(1,1,1,1). | Retain. Evidence carried from [R2][prior]. |
| 1.2 | V=ℚ₅(1); 6 and 5 | exp(log₅6·d₁)=κ(6); κ(5) outside the exp image. | Retain. Evidence carried from [R2][prior]. |
| 1.3 | V=ℚ₅(2), ℚ₅ | log(exp(d₂))=d₂; trivial representation has quotient 0. | Retain. Evidence carried from [R2][prior]. |
| 1.4 | V=ℚ₅, cyclotomic and unramified classes | exp*(logχ)=1; exp*(unramified)=0; adjunction on κ(6) gives log₅6. | Retain. Evidence carried from [R2][prior]. |
| 1.5 | r=0,1,2 | dim t=(0,1,1), dim H⁰=(1,0,0), dim H_f=(1,1,1). | Retain. Evidence carried from [R2][prior]. |
| 1.6 | V=ℚ₅(1), dual ℚ₅ | Unit line pairs to 0 with unramified line; valuation direction pairs nontrivially. | Retain. Evidence carried from [R2][prior]. |
| 1.7 | Unramified quadratic; 6 | Norm 36; trace(log₅6)=log₅36; cor∘res scalar 2. | Retain; locator now BK/Rubin (fresh row above). Evidence carried from [R2][prior]. |
| 1.8 | r=1,2,−1 | H_g dimensions 2,1,0. | Retain. Evidence carried from [R2][prior]. |
| 1.10 | L=ℚ₅,r=2; p=3,r=2 | (1−1/25)⁻¹=25/24, lattice 25ℤ₅, index 25; ℚ₃ weight 2 has ℤ/3 torsion. | Retain. Evidence carried from [R2][prior]. |
| 1.11 | ℚ₅×ℚ₅; empty | Independent classes give dimension 2 versus diagonal 1; empty 0. | Retain. Evidence carried from [R2][prior]. |
| 2.1–2.4 | γ↦γ²; ε↦ε²; order-four η; f=1+π | Multipliers 2·(1/2)=1; t,v₁ double, d₁ fixed; inverse twist −iγ versus iγ; Δf=1, Δf₆(0)=5/2. | Retain. Evidence carried from [R2][prior]. |
| 3.1–3.4 | Roots of unity; F₂₅; split imaginary quadratic; weights 1,2,3 | D(ζ)=Li₂ζ; Frobenius a↦−a; embedding values (d,−d); multipliers 1,−1,2 and −1,1,−2. | Retain. Evidence carried from [R2][prior]. |
| 3.5 | Local root, 6, 5; global ℚ | log ζ=0, log₅6≡55≠0, log₅5=0; unit rank 0, rr₅=0. | Retain; dependencies now Tau Ceti natives (fresh row above). Evidence carried from [R2][prior]. |
| 3.6 | Quadratic scalar unit 6; identity | log Norm 6=2log 6=Tr log 6; identity gives log 6. | Retain. Evidence carried from [R2][prior]. |
| 4.1 | n=1,2,3; F₃ mod 2 at n=3 | c_n/ch_n=1,−1,2; multiplier 2 becomes 0 mod 2. | Retain; κ-compatibility added (fresh row). Evidence carried from [R2][prior]. |
| 4.2 | Point, weight 1 unit 6; weight 2 coordinate a | exp(log 6)=κ(6); log_BK(r_et,ch)=a=r_syn; c₂ gives −a. | Retain. Evidence carried from [R2][prior]. |
| 4.3–4.5 | Raw weight-two root class; weight-3 symbol; p=5,n=2 | Li₂ζ versus −Li₂ζ; −2Li₃ versus −4Li₃; Gros factor 24/25. | Retain. Evidence carried from [R2][prior]. |
| 4.6 | p=5,r=2; boundary a | Undivided 25a; p⁻²δ_U=a=δ_D; mod 5 factor 0. | Retain; supplier now §3.4 (fresh row). Evidence carried from [R2][prior]. |
| 4.7 | ℚ(i), root i; doubled class | P₂(i)=iD_BW(i)≠0; Borel −2P₂(i); doubling gives 2P₂(i). | Retain; evaluation now Polylogarithms §2.3 (fresh rows). Evidence carried from [R2][prior]. |
| 5.1–5.4 | p=5,n=2; F₅ admissible 2,3,4; ζ=ω(2); ramified ζ₅ | Polynomial X+4X²+4X³+X⁴ with values 0,0,1,3,0; f-values 1,4,0; 25⁻¹D(ζ⁵)≡1 mod 5; D(ω(2))≡25 mod 125. | Retain. Evidence carried from [R2][prior]. |
| 5.5 / residueDilogValue_spans | F₃,F₅,F₇,F₁₁,F₂₅ | Ranks (0,0) at 3; (1,1) at 5,7,11; (2,2) at 25 with f(a)=4+2a. | Retain p>3, s>0. Evidence carried from [R2][prior]. |
| 5.6–5.9 | Root order 4 at p=5; ℚ₅, ℚ₂₅×ℚ₅; ℚ₃ excluded; F₅ residues | Inverse 4; D_p([ζ])=Li₂ζ; lattices 25ℤ₅, 25ℤ₅³; ℤ/3 torsion cannot embed; spans 1 and 2+1=3. | Retain. Evidence carried from [R2][prior]. |
| 6.1–6.8 | Totally real / imaginary quadratic F; ξ,2ξ; degree 2; F₂₅; torsion ξ, N=2; root Frobenius; ℚ²→ℚₚ with α∉ℚ; cubic X³−X²+1 mod 5 | r₂=0,1; D(2ξ)=2D(ξ); 2D(ξ)=Tr D(ξ); φ(a)=−a; N⁻¹ multiplier 1/2; Li₂(ζ⁵)=φLi₂ζ; (−α,1)↦0 after tensoring; determinant 3 mod 5, (1,3,1)↦(2,1,3). | Retain. Evidence carried from [R2][prior]. |
| 7.1 | p=5, weight 2, Frobenius scalar 2 | η_can=(23/25)η_norm; inverse 25/23; at η_norm=25, η_can=23. | Retain; the Frobenius-cone slot is unchanged by the new coordinates. Evidence carried from [R2][prior]. |
| 7.2–7.6 | Boundary class φ=5; {f,1}, Steinberg; constant g=c; sign conversion; cover degree 2 | 1−φ/25 acts by 4/5; K₂ classes 0, tame value g(P)⁻¹; Σord_P(f)F_ω(P)=0; log_BK(ch_et ξ)=r_syn ξ; f_*f*ξ=2ξ. | Retain. Evidence carried from [R2][prior]. |
| 7.7 | N=0 versus N≠0 | At N=0 ker N is full and correction 0; Nv≠0 excluded as test form. | Retain; descent now a target (fresh rows). Evidence carried from [R2][prior]. |
| 7.8–7.11 | {t,c}; identity fibre, nonsplit quadratic point; boundary change by a, N(a,b)=(b,0), λ=2; loop c=2, index 3; quadratic trace | Tame value c⁻¹; trace 2≠1; Δβ=(−2,−2); half of two loop contributions 6, parallel −4; Tr(α²)=2π while (Trα)²=0. | Retain. Evidence carried from [R2][prior]. |
| 8.1–8.5 | Φ=[[2,1],[0,3]], a=−5, b=6, p=5 | P=[[1/2,−1/6],[0,1/3]]; ΦP=PΦ=I, ΦPᵀ≠I; Q=[[−1,1/2],[0,−1/2]]; Q(I−Φ)=I; Q(I−P/5)=[[−9/10,13/30],[0,−7/15]]; scalar −1 gives 3/5. | Retain. Evidence carried from [R2][prior]. |
| 8.6–8.11 | Γ*(j) j=0..−3; ℓ_i(χ³); f₆ class; eigenline α=p⁻ʲ; h=1,2,3 at j=4 | 1,−1,1/2,−1/6; 3·2=6; χ²-value −70/3·d₁; scalar 0 versus 1−pʲα≠0; multipliers 4,12,24; factor 0 at j=h. | Retain. Evidence carried from [R2][prior]. |
| 8.12 | Twist by χ and χ² | γ↦χ(γ)⁻¹γ and χ(γ)⁻²γ; iterated twists compose. | Retain. Evidence carried from [R2][prior]. |
| 8.13 | p=5, conductor 5²; j=0,−2, α=1/5 | Γ*(1)·5²·α²=1 and Γ*(−1)·5⁻²·α²=−1/625. | Retain. Evidence carried from [R2][prior]. |
| 8.14 | α=2,p=5,j=0 | (1−α)/(1−1/(5α))=−10/9; cleared (9/10)(−10/9)=−1. | Retain. Evidence carried from [R2][prior]. |
| 8.15 | α=1 and α=1/5 at j=0 | Numerator 0; denominator 0; only the cleared equality is meaningful. | Retain. Evidence carried from [R2][prior]. |
| 8.16–8.22 | Slopes 1,3; coefficient extension; j=2 pairing 1; weights (0,2),(1,1),empty; row (2,3); f₆ at p=5; α=±1 | Projected bound 1 versus 3; 5L(z); σ₋₁(χ²)=1, ℓ₀(χ²)=2, transpose sign −1; 6, 9, 1; 8 versus 16; Δf₆(0)=5/2, ∂Δf₆(0)=35/12, moments −35/3 and −70/3; Euler factors 0 and 5/3. | Retain. Evidence carried from [R2][prior]. |
| 9.1–9.4 | R=ℚ[X], d=2, V₀=span(1,0); points 0,5; dual numbers | Row (1,X) allowed, (0,1) not; X(X−5); ε·ε=0 so (ε) not free; evaluation at 5 invertible, at 0 singular. | Retain. Evidence carried from [R2][prior]. |
| 9.7–9.11 / constraint theorems | Transverse lines at 0,5; empty J; d=0; diagonal condition | Basis (X−5,0),(0,X), determinant X(X−5); I at empty J; 1 at d=0; generators X−5 and X; Lagrange lifts (1,0),(0,1); r=X−5 realized, r=1 not; projections do not identify the image. | Retain. Evidence carried from [R2][prior]. |
| 9.12–9.17 | Basis vectors, c=(5,7); M=[[1,2],[3,4]]; U=diag(2,1), c=(6,7) | J(5b₁+7b₂)=(5,7); det −2; cM=(26,38), cMᵀ=(19,43); (cU⁻¹)(UM)=cM, wrong cU gives (12,7). | Retain. Evidence carried from [R2][prior]. |
| 9.18 | e₁=2,e₂=3, c=(7,11); e₁=5,e₂=10 | (29,32), determinant −5 (unit over ℚ₅, not ℤ₅); −49 a unit. | Retain. Evidence carried from [R2][prior]. |
| 9.19–9.25 | r=7/11; ℤ₂ forbidden slope −2, e₁=4,e₂=2; ℤ₅ e₁=1,e₂=−4; line avoiding axes; flags 1,2; pℝ·e₁; weights 0,2; rank 2 | 928/11 both sides; det −7 unit; det 5 nonunit; projections full but joint line dimension 1; codimensions 1,0 then 0→1; R/p torsion; divisors 1,n₂; codimensions 1 and 0. | Retain. Evidence carried from [R2][prior]. |
| 9.26 | F(0)=G(0) | (1,0) excluded although projections are all R via (r,r). | Retain. Evidence carried from [R2][prior]. |
| 9.27–9.30 | Weights (0,2),(1,1) at χ³; p=5,k=2,a_p=0; P₀=[[0,−5⁹],[1,5]]; c=(1,0), U⁻¹=[[1,1],[0,1]] | Products 6 and 9; (2−a_p)Col₂−(p−1)Col₁=0 versus printed −6; P₀² ≡ 0 mod 5, length 1 not 0; new row (1,1) changes membership. | Retain. Evidence carried from [R2][prior]. |
| 9.30a | D=R_E(1); nonétale φ=5^(−1/2); h=3,j=0; h=1,j=1,2 | ∂e₁=t⁻¹e₁∉D; Herr dimensions (0,1,0); Γ*(−2)⁻¹=2; corrected factors 1,1 versus printed −1,2. | Retain. Evidence carried from [R2][prior]. |
| 9.31–9.36 | p=5,c=2,3; p=2; z=(1+T)⁶; θ=η⁻¹κ; j=−1,−2,0; φ(d)=2d; split/nonsplit at 5 | Distance valuations 1/20 and 1; κ(∂)z=z,6z,z/6; charts agree only with the inverse-character label; Γ*(j+1)=1,−1,1; 2⁻ⁿd versus 2⁻ⁿ⁻¹d; Euler factors 0 and 5/3. | Retain. Evidence carried from [R2][prior]. |

**Headline coverage.** Unchanged: the headline theorems are the normalized syntomic/étale/Bloch–Kato comparisons (§§4.2–4.7), the completed local K₃ lattice isomorphism and root generation (§§5.7–5.9), global regulator functoriality (§§6.1–6.6), curve and family formulas (§§7.4–7.11), Perrin–Riou interpolation, reciprocity and determinants (§§8.13–8.19), Coleman images (§§9.26–9.29), de Rham interpolation (§§9.30a–9.36) and the arbitrary-reduction abelian logarithm (§1.9). The three statable deep ingredients remain `residueDilogValue_spans`, `constraint_basis_and_determinant` and `evaluationConstraints_coordinate_image`; the module docstring names the families that are not statable and the missing carriers. Nothing in this diff makes a further headline statable at the pins (no native syntomic, Herr, Robba or completed K-group carrier appeared), and no padding was added.

**Declared gaps.** The plan's five entries were read; the README at this head declares none. Four are the subject of R01. `completed-bloch-comparison` (KTheoryFiniteLocalFields §§6.6–6.7) is unchanged from the previous rounds, where it was resolved as discharged by the supplier's targets.

## Not verifiable

Nothing needed for this incremental re-review was inaccessible. Untouched locators, declarations and statements retain the attributed prior evidence; this is not a fresh full review of all 113 numbered subsections. Ownership against open pull requests was checked through the roadmap index (466 open pull requests) and the sibling checkouts named in the brief; NoncommutativeAndEquivariantIwasawa and ArithmeticGaloisDuality were read through the roadmap tool at their open heads since the brief gives no checkout path for them.

## Source issues

- **Misprint** in HK2011 at Example 2.2.4, printed p. 14 (HK2011 line 579–585): the source displays the point syntomic complex as the shifted cone of the pair (1, 1−σ/pⁿ) on K₀; by Definition 2.2.1 the K-component of that map is −1, not 1; affects nothing (η is defined through the K-slot inclusion, and H¹=K either way).

[prior]: packages/PadicHodgeRegulators/reports/PRREVIEW-PadicHodgeRegulators~2.md
