# Review of ComplexKahlerGeometry (pull request #1398 at 7ddea98)

**Verdict:** needs changes

## R01 (P2) — The companion Lean file still asserts coefficient stand-ins for the §5.5 comparison

Location: `TauCetiRoadmap/ComplexKahlerGeometry/PlanarHodgeTargets.lean:54–67`, “theorem hodgeZero_eq_neg_laplacian (u : ℂ → ℂ) (hu : ContDiff ℝ ∞ u)”.

Claim: the file is byte-identical to the head the previous review read. Its three admitted theorems (`hodgeZero_eq_neg_laplacian`, `hodgeOne_eq_coefficientwise`, `hodgeZero_normSq`) state, on bespoke coefficient functions `partialX`/`deltaOne`/`hodgeZero` over globally `C^∞` maps `ℂ → ℂ`, a weakened substitute for README §5.5's statement, which is a rough-form identity at `C²` regularity on an arbitrary open subset. `Suggested.lean:32–34` correctly says that comparison is not statable at the pins; the companion then states a substitute anyway, which the acceptance-test rules forbid (no weakened substitute, no theorem on free functions `ℂ → ℂ` whose conclusion is algebra on its hypotheses).

Witness: README §5.5 Check “For u(x+iy)=|x|³ … This C² function is not C³ and must be admitted by the statement” (`README.md:1608`); the companion's `ContDiff ℝ ∞ u` excludes it. `hodgeZero u z` unfolds to `−(fderiv ℝ (partialX u) z 1 + fderiv ℝ (partialY u) z I)` (probe), a coordinate formula, not the star/codifferential of the generic carrier.

Repair: delete `PlanarHodgeTargets.lean`. The README keeps every formula and Check of §5.5, and the docstring of `Suggested.lean` already names the missing carrier. Tested: with the file deleted the folder's acceptance test is `Suggested.lean` alone, which elaborates with its five `sorry` warnings and whose `|x|³` instance is governed by README §5.5, where `Δ_H|x|³=−6|x|` is admitted at `C²`.

## R02 (P3) — The companion violates the Lean form rules

Location: `TauCetiRoadmap/ComplexKahlerGeometry/PlanarHodgeTargets.lean:1–3, 19–20, 37–38`, “import Mathlib.Analysis.InnerProductSpace.Laplacian”.

Claim: three `Mathlib.<submodule>` imports and no `import Mathlib`; no module docstring of the required “target signatures” form; `partialX`, `partialY`, `deltaOne`, `curlOne` carry no docstring; none of the file's twelve names appears in the README. The worker's gate scans only `Suggested.lean`, so these pass the gate but not the rules this brief applies to every listed `.lean` file.

Witness: `grep -c "import Mathlib$" PlanarHodgeTargets.lean` gives 0; `grep -c "partialX\|deltaOne\|hodgeZero" README.md` gives 0.

Repair: covered by R01 (delete the file). If any declaration were kept it would need the single root import, a docstring and a README counterpart.

## R03 (P3) — Companion padding

Location: `TauCetiRoadmap/ComplexKahlerGeometry/PlanarHodgeTargets.lean:25–35, 49–51, 65–67`, “theorem hodgeZero_normSq”.

Claim: `starOneCoefficients_sq`, `star_dz`, `star_dbarz` and `deltaOne_const` close by `simp`/`ext` and mirror README Checks (`*²=−1`, `*dz=−i dz`, `*dbarz=i dbarz`, constant forms); `hodgeZero_normSq` computes the single value −4, the README's calibration Check.

Witness: the file's own proofs are `ext <;> simp [...]` and `simp [...]`; README §5.5 Checks at `README.md:1605–1607`.

Repair: delete them from the acceptance material (R01); the README keeps them as Checks. Do not prove the admitted one in place.

## R04 (P3) — Supplier names that do not exist where they are cited

Location: `README.md:878` “B2's `ContinuousFiberMetric`”; `README.md:1385, 1392` “DG1.5”; `README.md:867, 1039, 1842, 2555` “HopfRinow Layer 1's Levi-Civita connection”; `README.md:2322` “Index I7.4”.

Claim and witnesses:
- `ContinuousFiberMetric` occurs in no file of SmoothBundlesConnections on main nor in the pinned Tau Ceti (`roadmaps grep --fixed ContinuousFiberMetric` hits only this roadmap). SBC B2.2 (`SmoothBundlesConnections/README.md:607–614`) describes the metric as “explicit data h … `h.inner x : E x →L⋆[𝕜] E x →L[𝕜] 𝕜`” without a bundled name.
- DifferentialGeometry on main has items 1.1–1.4 only (`DifferentialGeometry/README.md:315–325`); the `curveIntegral` agreement is at its line 572 (Layer 5), and no “polar notation `dz/z=β+iα`” exists there.
- `Completed/HopfRinow/README.md:28–31` consumes Tau Ceti's `CovariantDerivative.leviCivitaConnection`; its Layer 1 (line 264) is the geodesic equation, flow and exponential map.
- The roadmap is IndexTheory (open pull request); it has a section I7 (line 724) whose item 4 (line 758) consumes K7's genus dictionary, but no label “I7.4”.

Repair: write “SBC B2.2's continuous fibre metric data h, with `h.inner x` …” without a backticked name; cite “DG Layer 5's `curveIntegral` agreement” and drop the DG1.5 polar notation (define `dz/z=β+iα` here, as the text already does through DG0.3); cite Tau Ceti's `CovariantDerivative.leviCivitaConnection` directly (HopfRinow Layer 0–1 only consume it); write “IndexTheory I7, item 4”.

## R05 (P3) — Record the later generic owners of the objects this roadmap now owns

Location: `README.md:19–29` (Scope and ownership), `README.md:2538–2544` (Downstream consumers).

Claim: this roadmap is on main, so the gate counts any `*Needs:*`, contract or Dependencies citation of an open pull request as UPWARD (confirmed: the previous head a429f4ba, which imported GlobalHolomorphicFunctions §§0.3/2.5/7.2, gives `UPWARD: ComplexKahlerGeometry (on main) -> GlobalHolomorphicFunctions (#79) at README lines [144, 325, 430]`). Owning the scalar Cauchy–Green/finite-rank Runge/planar exactness (Layer 2, §5.4), the operator/jet/transpose core (§5.1), the all-degree Lie-algebra complex (§8.1) and the relative integration contract (K6.1) here is therefore the only gate-compatible disposition, and I accept it. But four open roadmaps state the same objects and each names ComplexKahlerGeometry as their consumer: GlobalHolomorphicFunctions §0.3, §2.5 (`exists_finite_rank_runge_operator`, “used by GH5 and CKG K2”), §7.2 and its line 1969; PseudodifferentialOperators P1.0 (“K5a's distributional action and Laplace analysis consume the differential-operator core”, its line 85); LieGroupoidsPoisson G1.3 (“This standalone complex is what ComplexKahlerGeometry K8 … consume”, line 662); DeRhamCohomologyAndDuality DR.3.8/DR.4.4 (“ComplexKahlerGeometry consumes the relative de Rham maps of DR.3.8 …”, line 606). The Scope paragraph names none of these as later owners, so a reader cannot tell that the duplication is to be resolved on their side.

Witness: `probe` dumps of the four READMEs at their heads (`roadmaps show`), lines quoted above; the previous review's R04–R07 asked for the reverse direction, which the gate refuses.

Repair: add to Scope one line per later roadmap, on its own line and without the words supply/supplies/supplier (the dependency check counts those): “GlobalHolomorphicFunctions is owned later in the build and states the compact-support Cauchy–Green transform, the finite-rank Runge operator and planar exactness; nothing is imported from it here, and its statements are reconciled on its side.” Same for PseudodifferentialOperators P1.0 (operator/jet/transpose core), LieGroupoidsPoisson G1.3 (all-degree real Chevalley–Eilenberg complex) and DeRhamCohomologyAndDuality DR.3.8/DR.4.4 (relative cone and compact-support evaluation). The plain gate must still print `depcheck … 0 problem(s)`; the wording above adds no edge.

## R06 (P3) — Locator and docstring corrections

Location: `README.md:1829–1830` “(Demailly VI §4, Example 4.6, p. 297, and the vanishing of real degree-three forms on a surface)”; `Suggested.lean:20–24`.

Claim: Demailly (4.6) Example (demailly line 14700, p. 297) states that every complex submanifold of a Kähler manifold is Kähler; it does not state that every Hermitian metric on a complex curve is Kähler, which the degree argument alone proves. Cite 4.6 for the restriction/immersion bullet and the degree argument alone for curves. In the docstring, the reason given for not stating coherence (“need the convergent several-variable coordinate/power-series comparisons and reduced analytic subsets”) does not apply to the primitive Oka relation statement of K3 (finitely many holomorphic functions on an open subset of ℂⁿ, germs in the native stalk generating the relation module at every point of a neighbourhood), which is statable on `smoothSheafCommRing` stalks and germ maps at the pins; either state it or say precisely what is missing (the stalk-level relation module is a long ad hoc encoding, which is a legitimate reason).

Witness: demailly lines 14700–14701; `Mathlib/Geometry/Manifold/Sheaf/Smooth.lean:297` and `TopCat.Presheaf.germ`.

Repair: as stated. No mathematics changes.

## R07 (P3) — Roadmap-level mutual citations with roadmaps on main (previous R01–R03, reclassified)

Location: `README.md:702, 711, 2124, 2132` (RealAnalyticGeometry R1/R5), `README.md:2139, 2214–2215, 2285, 2380` (AlgebraicTopology Stages 4/6), `README.md:2387, 2510, 2526, 2536` (DGFloer).

Claim: the previous review raised these as P1 cycles. At this head they are unchanged, and I do not hold them blocking, for these reasons: all four roadmaps are on main, where the merge-order principle has no mechanical form (the required dependency check places on-main roadmaps unordered and reports `0 problem(s)`); the item-level order is documented identically on both sides (`RealAnalyticGeometry/README.md:1028–1030`: “K6.0 is earlier and independent of R5. There is no edge from R5 back to CK K6”; `AlgebraicTopology/README.md:1595–1600`: “K7.2's CW construction consumes K7.1 and AT Stage4; its separate projective cup calculation consumes ordinary Stage6”; `DGFloer/README.md:159` consumes K7.1–K7.2 while its Layer 1 item 3 is the generic filtered-complex comparison consumed by K8); and the only in-folder repair is to move K3's finite regular-piece partition, K6.1's integral-cycle construction, K7.2's CW/cup calculation and K8's Frölicher comparison into a Part II, which re-plans merged work that AlgebraicTopology Stage 7 and RealAnalyticGeometry R5 cite as it stands. SmoothBundlesConnections (consumes K5a/K7.1 in its Layer 7 acceptance examples, is consumed by K5a) and TopologicalKTheory (T1.6d ↔ K7.2) are the same pattern. Whether item-disjoint mutual citation between merged roadmaps is tolerated is a design decision for a human; the roadmap already records the item-level order in “Downstream consumers” (`README.md:2546–2601`).

Repair: none required here. If the project decides otherwise, the split above is the repair, and the cycle-extension of K6.1 (which imports nothing new) is the natural first piece of a Part II.

## Verified sound

Full review of the folder at 7ddea98: README (2624 lines), `Suggested.lean` (132 lines), `PlanarHodgeTargets.lean` (69 lines). Gate: all-zero/OK including build. Outside-folder diff: empty. Findings: 7 (one P2, six P3). Elaboration of `Suggested.lean` with `lake env lean`: exactly five `sorry` warnings. Companion: three `sorry` warnings. No `set_option`, sorry'd data, `lemma`, copied passage, executable algorithm, process word (grep for optional/deferred/for later/removed/so far/currently/checkpoint/handoff/packet: no hit) or pull-request number in the README.

### Previous findings, checked individually

| Previous | Passage now | Status |
|---|---|---|
| R01 (P1) RealAnalyticGeometry cycle | `README.md:702` “RealAnalyticGeometry R1 for the finite regular-piece partition”; `2132` | Not repaired; reclassified P3 (R07) with reasons. |
| R02 (P1) AlgebraicTopology cycle | `README.md:2214` “The CW construction uses only K7.1 and AlgebraicTopology Stage 4” | Not repaired; reclassified P3 (R07). |
| R03 (P1) DGFloer cycle | `README.md:2387` “Consume DGFloer's generic filtered-complex spectral sequence” | Not repaired; reclassified P3 (R07). |
| R04 (P2) PDO operator ownership | `README.md:24–26` “Layer 5 owns finite-order bundle differential operators…” | The proposed repair (consume PDO P1.0) is UPWARD for an on-main roadmap; ownership here accepted; record the later owner (R05). |
| R05 (P2) import GH Runge/Cauchy–Green | `README.md:20–22`; commit a429f4ba imported GH, 7ddea985 reverted after `UPWARD … -> GlobalHolomorphicFunctions (#79)` | Not actionable as proposed; ownership here accepted; `finite_rank_runge_approximation` kept (R05). |
| R06 (P2) DR relative integration | `README.md:1937–1939` “Construct the boundaryless open-pair comparison needed below” | Same disposition; record DR as later owner (R05). |
| R07 (P2) LGP Lie-algebra complex | `README.md:2408–2437` | Same disposition (R05). |
| R08 (P2) native exterior-power star | `README.md:139–144, 891–898` “specialize `exteriorPower.hodgeStar` … `⟨*α,β⟩=volEval(α∧β)`” | Repaired; the native characterization is quoted correctly (`HodgeStar.lean:53`: `B.exteriorPower l (hodgeStar … x) = wedgePairing vol hkl x`). |
| R09 (P2) planar coefficient substitutes | `PlanarHodgeTargets.lean` unchanged | Not repaired: R01. |
| R10 (P3) companion form | unchanged | Not repaired: R02. |
| R11 (P3) companion padding | unchanged | Not repaired: R03. |
| R12 (P3) per-definition Checks and Needs | `README.md:1817–1935` K6.0 now has four sub-blocks with Checks and Needs; K7.1 `2176–2193`; K7.2 `2233–2287`; genus `2327–2341` | Repaired; every new Check recomputed below. |
| R13 (P3) claim-level locators | §5.3 `README.md:1127–1137` (`arzela_ascoli`); K6.0 Demailly VI §§4–6 and VII §§1, 6–7; §7.1 Demailly V §15.A; Wells third edition | Largely repaired; one locator mismatch remains (R06). No `sources.toml`, which no roadmap on main carries either. |

### Headline coverage and Lean checks

Headlines: Newlander–Nirenberg; finite-rank Runge and the mixed-parameter solver; Dolbeault–Grothendieck and the sheaf comparison; realification; Weierstrass preparation/division, Noetherian/factorial stalks, Nullstellensatz, Oka/Cartan coherence, Hartogs; Chern uniqueness, Koszul–Malgrange, flat correspondences; geometric Sobolev/elliptic realization, de Rham/Dolbeault Hodge, Serre duality; Kähler identities, ∂∂̄ lemma, Hodge decomposition, Hard Lefschetz, Hodge–Riemann, analytic cycles; projective/torus/Hopf cohomology; Frölicher, Nomizu/Sakane, Iwasawa.

`Suggested.lean` states the five native-carrier headlines (`finite_rank_runge_approximation`, `mixed_parameter_solver`, `realified_isManifold_analytic`, `holomorphicStalk_noetherian`, `holomorphicStalk_factorial`); the docstring names the rest with their missing carriers (one inaccuracy: R06). I elaborated a scratch copy with `#check @name` for all five: every binder the README states is present (Runge: `L` before `ε`, points and outputs before `f` and `B`; solver: `I.Boundaryless`, `T2Space`, `SecondCountableTopology`, `IsOpen Q`, `IsOpen Ω`, holomorphy in `Q` on both sides; stalks: `{M : Type}` as the docstring says). No binder was dropped; nothing was changed. One-tactic probes on scratch copies (`simp`, `rfl`, `infer_instance`, `aesop` on each of the five; `simp` with all definitions unfolded on the companion's three) closed nothing. Pinned Tau Ceti a91d3aaf has no `IsManifold.restrictScalars_of_ne_zero`, `contMDiff_iff_mdifferentiable` or Nijenhuis tensor (`TauCeti/Geometry/Symplectic/Manifold/AlmostComplex.lean` has none), so the realification headline is not a one-liner at the pin, although `STATUS.md` records it as implemented at a later Tau Ceti commit.

### Computed adversarial pass

| Statement / convention | Instances tried | Values computed on each side | Result; change |
|---|---|---|---|
| Conventions `g(u,v)=ω(u,Jv)` | ℂ, u=∂ₓ, J∂ₓ=∂ᵧ | ω(∂ₓ,∂ᵧ)=1=g(∂ₓ,∂ₓ); −J gives −1 | Pass |
| `d^c=i(∂̄−∂)`, `dd^c=2i∂∂̄` | f=x²+y² | d^c f=2x dy−2y dx; dd^c f=4dx∧dy; 2i∂∂̄f=2i·dz∧dz̄=4dx∧dy | Pass |
| h_T slots | u=∂ₓ,v=∂ₓ | h_T(J∂ₓ,∂ₓ)=−i=−i·h_T(∂ₓ,∂ₓ); h_T(∂ₓ,J∂ₓ)=i | Conjugate-linear first slot; pass |
| `h_T(u^(1,0),v^(1,0))=2g_ℂ(bar u^(1,0),v^(1,0))` | u=v=∂ₓ | right side 2·(1/4)(1+1)=1=h_T(∂ₓ,∂ₓ) | Pass |
| `ω=(i/2)Σh_T dz∧dz̄` standard | n=1 | (i/2)dz∧dz̄=(i/2)(−2i)dx∧dy=dx∧dy | Pass |
| K1 Nijenhuis on (0,1) fields | X,Y type (0,1), [X,Y]=B+C | N=−2[X,Y]+2iJ[X,Y]=−4B; ∂̄²f(X,Y)=∂f(B)=−(1/4)∂f(N) | Pass |
| K1 orientation | multiplication by i; conjugation | real det 1 / −1 | Pass |
| K2 Cauchy–Green sign | Demailly (3.2) with w=0, compact support | f(0)=−∫(1/(πz))∂̄f dλ, hence T(∂̄f)=f with `Tφ(z)=(1/π)∫φ(ζ)/(z−ζ)` | Pass (demailly line 885) |
| K2 Runge hypothesis (Lean) | K=∅ | every component of Ω is open; compact closure ⊆Ω forces it empty; hypothesis holds; L=∅, N=0, `K ⊆ interior ∅` vacuous | Pass |
| K2 Runge hypothesis (Lean) | K={2≤|z|≤3}, Ω={|z|<4} / Ω={1<|z|<4} | inner component closure {|z|≤2} compact and ⊆Ω: excluded / closure {1≤|z|≤2} not ⊆Ω: admitted, 1/z approximates itself | Pass; matches Checks |
| K2 Runge Check two disks | unit disks at 0 and 3, K={0,3} | indicator outputs g₁,g₂ holomorphic on Ω; A f=(f(0),f(3)) on K, error 0 for values ±1 | Pass |
| K2 exhaustion filling | {1≤|z|≤2}⊂ℂ | filled hull {|z|≤2} adds 0 (Rainer 11.3(3)) | Pass |
| K2 weights absorbed | w_j g_j ↦ g_j′ | same operator, same bound | Pass |
| K2 mixed solver (Lean) | f=pq, Q=ℂ∖{0} | u=pq z̄: (uₓ+iuᵧ)/2=pq; ∂̄_q u=0 | Pass |
| K2 solver degenerate | Ω=∅ or Q=∅ | all three conjuncts vacuous; u=0 | Pass |
| K3.0 realification | z↦iz; z↦z̄ | real matrix ((0,−1),(1,0)), analytic; conjugation D(i)=−i≠iD(1) | Pass; implication only |
| K3.1 stalk | ℂ⁰; z, 1+z at 0 | stalk ℂ; z nonunit (value 0), 1+z unit; (z²,z³)=(z²) | Pass |
| K3.1 Noetherian/factorial locators | Demailly (2.7), (2.10) | lines 3872, 3931: O_n Noetherian; O_n entire and factorial | Pass |
| K3.1 wrong model | real smooth germs e^(−1/x) one-sided | product 0 of nonzero germs | Complex sheaf essential; pass |
| K3.2 Laurent coefficient | k≥1 | c₋ₖ=(2πi)⁻¹∮f(z−a)^(k−1)dz; exp(1/z) has infinitely many negative terms | Pass |
| K3 preparation/division | 1+w³ by w; zero germ | quotient w², remainder 1; zero has no finite order | Pass |
| K4 Chern matrix | h=exp(|z|²) | A=∂(zz̄)=z̄dz; Θ=dz̄∧dz, type (1,1) | Pass |
| K4 monodromy | d+(1/4)dz/z | M(γ)=e⁻¹T_γe=exp(−2πi/4)=−i | Pass |
| K4 ranks | three points (0,1,2); ℕ with rank n | sections 0×ℂ×ℂ², dim 3; unbounded ranks | Pass |
| §5.1 native star vs README identity | plane, orthonormal dx,dy, vol(dx∧dy)=1 | native ⟨*dx,γ⟩=vol(dx∧γ): *dx=dy, *dy=−dx; README α∧*β=⟨α,β⟩vol: dx∧dy=vol ✓, dy∧(−dx)=vol ✓ | Equivalent on an orthonormal basis (both give *e_I=ε(I,J)e_J); pass |
| §5.1 *² | plane degrees 0,1,2; point | signs +,−,+; *1=±1 with the signed volume equivalence | Pass |
| §5.1 density vs orientation | derivative −2 | density ×2, orientation ×(−1) | Pass |
| §5.1 transpose | x∂ₓ, dx | (x∂ₓ)ᵗ=−x∂ₓ−1; iᵗ=i, i†=−i | Pass |
| §5.1 commutator symbol | ∂², f=x | [[∂²,x],x]=2; /2!=1; ξ=2 gives 4 (geometric) and −4 (Fourier) | Pass |
| §5.1 jets | j²₀(x²), x=2y | coefficients (0,0,1)→(0,0,4); (dx)²=4(dy)² | Pass |
| §5.2 primitives | w=δ₀, m=2 | H₂=x₊ continuous, D²H₂=δ₀ | Pass |
| §5.2 normal coefficients | u=δ′₀ | ⟨xδ′,φ⟩=−φ(0)=−1=(−1)¹1!·1 | Pass |
| §5.2 nonextension | φ_ε=φ((x−εe₁)/(cε)) | integral ≥C′εⁿexp((1+c)⁻²ε⁻²) vs Cε⁻ᴺ | Pass |
| §5.2 delta series | φ=1/(1+2x) near 0 | ⟨δ⁽ⁿ⁾/n!,φ⟩=2ⁿ; sums 1,3,7 | Pass |
| §5.3 Montel | sin(jx); point; ℕ | derivative j unbounded; closed disk compact; product of disks compact | Pass; `arzela_ascoli` at `ArzelaAscoli.lean:109` needs `T2Space β`, compact range `s` |
| §5.4 Peetre | s<0 | 〈ζ+η〉^s≤2^(|s|/2)〈ζ〉^s〈η〉^|s| from 〈ζ〉≤√2〈ζ+η〉〈η〉 | Pass |
| §5.4 weights | (1+|ξ|)^(2s) vs (1+|ξ|²)^s | ratio within 2^(±|s|) | Pass |
| §5.4 Fourier reflection | f̂ĝ pairing | ∫f̂ĝ=∫f(x)g(−x)dx | Pass |
| §5.4 Λ^z symbol | z imaginary | |(1+|ζ|²)^(z/2)|=1 | Pass |
| §5.4 δ membership | ℝⁿ | δ₀∈H^s iff s<−n/2 | Pass |
| §5.4 planar exactness | β=dx∧dy | u=z̄/(2i): ∂̄u=1/(2i); d(u dz)=2i∂̄u dx∧dy=dx∧dy | Pass |
| §5.4 variational graph | a(u,v)=2ūv, j=id | A=2, (A+1)⁻¹=1/3; D=2: D₀†D₀=4 | Pass; VM names exist at #1028 (`Suggested.lean:186, 207, 220`) |
| §5.5 star on dz | dz=dx+i dy | *dz=dy−i dx=−i dz; *dz̄=i dz̄ | Pass |
| §5.5 δ formulas | α=P dx+Q dy; h dx∧dy | δα=−(Pₓ+Qᵧ); δ(h dx∧dy)=hᵧdx−hₓdy | Pass |
| §5.5 sign of d* | Demailly (3.9), m=2 | d*=(−1)^(mp+1)*d*=−*d*; README exponent m(k+1)+1≡mp+1 with p=k−1 | Pass |
| §5.5 Checks | x dx+y dy; x dy; h=x²+y²; |x|³ | δ=−2, dα=0; dα=dx∧dy, δ=0; δ(h dx∧dy)=2y dx−2x dy, Δ_H h=−4, laplacian +4; Δ_H|x|³=−6|x|, C² not C³ | Pass; R01 (companion excludes |x|³) |
| §5.5 energy identity | compact support | ∫ūΔ_Hu=∫|∇u|²≥0 | Pass |
| §5.6 components | ranks (0,1,2), section (0,1,(1,i)) | norm² 0+1+2=3; eigenvalue 2 multiplicity 1+2 | Pass |
| §5.7 Gram norms | standard metric | |dz|²_Gram=2, dz♯=2∂_z | Pass |
| §5.8 Hodge/Serre | ℂP¹, O(−1), O | h⁰=h¹=0; h⁰(O)=1=h¹(K), K=O(−2) | Pass; Demailly (7.1)–(7.3) compact Hermitian, E* |
| K6.0 Kähler Checks | ℂ⁰; ω=f dx∧dy; exp(x₁)(ω₁+ω₂) on ℂ² | dω=0 by degree; d=exp(x₁)dx₁∧dx₂∧dy₂≠0 | Pass |
| K6.0 `[Λ,L]=(n−k)` | ℂ: 1, ω; ℂ²: 1 | 1; −ω=(1−2)ω; ΛL1=2 | Pass; Demailly (5.9) [L,Λ]=(p+q−n) |
| K6.0 primitive | ω₁−ω₂, ω₁+ω₂ (n=2); dz (n=1); 1 | Λ=0, 2; 0; 0 | Pass |
| K6.0 `[Λ,∂]=i∂̄*` etc. | α=x dy on ℂ | ∂α=(1/2)dx∧dy, [Λ,∂]α=1/2 so ∂̄*α=−i/2; [Λ,∂̄]α=1/2 so ∂*α=i/2; [Λ,d]α=1; (d^c)*α=−1 | Pass; Demailly (6.4) line 15157 |
| K6.0 `[L,d*]=d^c` | f=x | −δ(x dx∧dy)=dy; d^c x=i(dz̄−dz)/2=dy | Pass |
| K6.0 Laplacians | f=x²+y²; f=1 | Δ_d=−4, Δ_∂=Δ_∂̄=−2; 0 | Pass; (6.5) Δ′=Δ″=Δ/2 |
| K6.0 Nakano bound | iΘ=aω⊗Id on (n,k) | Demailly (7.1): Σ_S Σ_j c_{jj}|u_{jS}|²=a·k·|u|²; a=0,1,−1 give 0,k,−k; k=0 gives 0 | Pass |
| K6.0 BKN | τ=0 (Kähler) | (1.1c): [Λ,D″]=−iδ′; (1.3): Δ″=Δ′+[iΘ,Λ] | Pass |
| K6.1 relative cone | (α,β)↦(dα,α|_W−dβ) | d²=(0,dα|_W−dα|_W+0)=0; W=X cohomology 0; W=∅ absolute | Pass; same differential as DR.3.8 |
| K6.1 compact-support evaluation | bump of integral 1 on ℝ² | absolute class 0; relative evaluation 1 | Pass |
| K6.1 Hodge–Riemann | elliptic curve, α=dz | i·∫dz∧dz̄=2·Area>0 | Pass |
| K6.1 cycles | two transverse lines; point ×2 | generators +1,+1, no 2-cell at the node; 2 | Pass |
| K7.1 charts | [1:2:3]; [2:4:6]; w=1/z | (2,3),(1/2,3/2) both; |dw/dz|²=|z|⁻⁴>0 | Pass |
| K7.2 Fubini–Study | ℂP¹ chart | ω_FS=dx∧dy/(π(1+|z|²)²); 2∫₀^∞r/(1+r²)²dr=1 | Pass; (4.4) line 14690 |
| K7.2 curvature | O(1), O(2) | Θ=∂∂̄log(1+|z|²)=−2πiω_FS; −4πiω_FS | Pass; (15.8) line 13780 |
| K7.2 hyperplane identity n=1 | β constant c | ∫ω_FS∧c=c=∫_H c | Pass; n≥1 stated |
| K7.2 genus | point; ℂP¹; elliptic; two elliptic curves | h^(0,0)=1; (0,0); (1,2); h^(1,0)=2, h^(0,0)=2 | Pass |
| K7.2 Hopf weights | z₁ᵃz₂ᵇdz_j; z₁⁻ᵐz₂⁻ⁿdz_j | 2^(a+b+1); 2^(1−m−n)≤1/2; none equal 1 | Pass; h^(1,1)=0, diamond (00),(01),(21),(22) |
| K8.1 CE differential | [X,Y]=Z | dZ*(X,Y)=−1; (23.1) carries 1/(q+1) so δZ*=−1/2 | Pass; CE line 1177, p. 115 |
| K8.1 Iwasawa | Angella (3.1) | dφ₃=−φ₁∧φ₂ (line 510), h^(1,0)=3, h^(0,1)=2, b₁=4 | Pass |
| K8.2 central ideal | nilpotent 𝔤, last nonzero 𝔤^(c) | [𝔤,𝔤^(c)]=𝔤^(c+1)=0: central; proper when nonabelian | Pass |
| K8.2 Heisenberg | ℝZ, lattice | quotient ℝ², fibre ℝ/ℤ | Pass |

### Seeded sample

| Target | Text and locator opened | Support |
|---|---|---|
| 2.1 | demailly lines 879, 883–923 (I (3.1)–(3.4), pp. 20–21); rainer 1338 (11.1, p. 25), 1437–1443 (11.3(3)–(4), pp. 27–28), 1550 (11.7, p. 29) | Cauchy–Green sign and normalization supported; Rainer's 11.1 is for a domain, and the README states the extension to arbitrary open Ω; the finite-rank operator estimate is correctly a consequence to prove here |
| 3.1 | demailly 3794–3806 ((2.1), (2.3), pp. 80), 3872 ((2.7), p. 81), 3931 ((2.10), p. 82) | Preparation/division, Noetherian, factorial, as stated |
| 4.1 | demailly 3968–4081 (II (3.1)–(3.5), pp. 83–85) | Fixed-rank locally free sheaf/cocycle comparison; componentwise assembly is additional |
| 5.1 | demailly 14323–14375 (VI (3.1)–(3.8), pp. 291–292); `HodgeStar.lean:48–55`; `WedgePairing.lean:42` | Native star characterization quoted correctly |
| 5.2 | hormander uncertified (paywalled) | Theorem 2.3.5 cited by locator; examples computed independently |
| 5.3 | `ArzelaAscoli.lean:109`; `Montel.lean:45, 103, 123` | Construction route named; native class consumed, not re-defined |
| 5.4 | kms 5318–5357 (§§12.2–12.5, pp. 117–119), 5638–5687 (§§12.16–12.17, pp. 124–125); `BesselPotentialSpace.lean:47, 299`; `Sobolev.lean:153, 157`; `Hadamard.lean:612`; `FourierMultiplier.lean:50`; `Convolution.lean:164`; VM/UO heads | Jets supported; Euclidean carriers native; abstract form representation consumed |
| 5.5 | demailly 14386 ((3.9), p. 292), 14418 ((3.12), p. 293), 879 ((3.1), p. 20) | Signs supported |
| 5.6 | construction target; demailly 15369–15390 for fixed-rank inputs | Finite-component assembly is this roadmap's |
| 5.8 | demailly 15377–15395 ((7.1)–(7.3), pp. 309–310) | Compact Hermitian, E*, as stated |
| 6.0 | demailly 14652 ((4.1), p. 296), 14700 ((4.6), p. 297; R06), 14736 ((4.8), p. 298), 14871–14873 ((5.4)–(5.5), p. 300), 14948 ((5.9), p. 301), 14967, 14987 ((5.11), (5.15), p. 302), 15156 ((6.4), p. 305), 15190, 15210 ((6.5), (6.7), p. 306); 16248, 16281 (VII (1.1), (1.3), pp. 329–330); 16637–16652 ((6.1)–(6.3), p. 338); 16819–16828 ((7.1)–(7.2), pp. 340–341) | All identities, conventions and the Nakano bound supported |
| 6.1 | lojasiewicz 512 (Theorem 2, p. 464); AT 6.3 (`AlgebraicTopology/README.md:1440–1447`) | Triangulation and orientation classes exist as cited |
| 7.1 | demailly 13673–13699 (V §15.A, p. 277); `AlgebraicTopology/README.md:789–792` (Stage 4 item 6: generic quotient topology on `Projectivization 𝕜 V`, “ComplexKahlerGeometry K7 consumes that topology”) | Supported |
| 7.2 | demailly 13691–13699 ((15.1)–(15.2)), 13780 ((15.8), p. 279), 14688–14696 ((4.4), p. 297) | Supported |
| 8.2 | sakane 46, 102–113 (Theorem 1, pp. 187–189; Raghunathan 1.13 invoked at line 113); angella 503–510 (§3.1, p. 9); chevalley-eilenberg 1167–1183 (§23, (23.1)–(23.2), p. 115) | Supported; Raghunathan uncertified |

### Pinned declarations opened

`Mathlib/LinearAlgebra/ExteriorPower/HodgeStar.lean:48, 53`; `WedgePairing.lean:42`; `Topology/ContinuousMap/Bounded/ArzelaAscoli.lean:109`; `Analysis/LocallyConvex/Montel.lean:45, 103, 123`; `Topology/Connected/Basic.lean:505`; `Geometry/Manifold/Sheaf/Smooth.lean:297`; `Sheaf/LocallyRingedSpace.lean:59, 127`; `Analysis/InnerProductSpace/Laplacian.lean:138`; `Topology/Compactification/OnePoint/ProjectiveLine.lean:83`; `Algebra/Lie/Cochain.lean:101, 123`; `Analysis/Complex/Hadamard.lean:612`; `Analysis/Distribution/FourierMultiplier.lean:50`; `Analysis/Fourier/Convolution.lean:164`; `Analysis/Distribution/Sobolev.lean:153, 157`; `Analysis/FunctionalSpaces/BesselPotentialSpace.lean:47, 299`; `Analysis/Distribution/TestFunction.lean:67, 333`; `Distribution.lean:165`; `TemperedDistribution.lean:53`; `Analysis/Complex/Convex.lean:45`; `RingTheory/MvPolynomial/Symmetric/NewtonIdentities.lean:221`; `RingTheory/PowerSeries/WeierstrassPreparation.lean:47–51`; `Geometry/Manifold/Complex.lean:154, 169`; `Analysis/Complex/Conformal.lean:188, 206, 217, 285`; `Analysis/Calculus/ImplicitContDiff.lean:41`; `RingTheory/Norm/Transitivity.lean:178`; `RingTheory/Complex.lean:42`; `Topology/Sheaves/Module.lean:31`; `Topology/CWComplex/Classical/Basic.lean:135`; `Analysis/InnerProductSpace/LaxMilgram.lean:101`; `Analysis/InnerProductSpace/Orientation.lean:170`; `LinearAlgebra/Projectivization/Basic.lean:48`. Tau Ceti: `Analysis/Complex/CauchyIntegralPolydisc.lean:275, 282, 335, 348`; `Analysis/Analytic/Inverse.lean:129`; `Analysis/InnerProductSpace/Variational/Spectrum.lean:93`. All exist at the pins (Mathlib 6b7abb3c, Tau Ceti a91d3aaf) with the hypotheses the README states.

### Cross-roadmap citations resolved

On main: ComplexManifolds Milestones 1–7 and items 7.4–7.5 (`ComplexManifolds/README.md:172–373`); ComplexTori Milestone 1 (130); DifferentialGeometry 0.1–0.4, 1.1–1.4, 2.1–2.2, 5.2, 5.4, 5.5, 6.2, 8.3–8.5, 9.3, 12.1, 12.4 and `legacySmoothTwoFormEquiv`, `OrientationLift`, `homotopyOperator`, `RoughDensity`, `integralTopForm_eq_integralDensity`, `integral_riemannianVolume_eq_integralDensity`, `laplaceBeltrami` (lines 272–933, `Suggested.lean:711, 893`); SmoothBundlesConnections B1.4, B2.1–B2.5, B3–B5, B6.1–B6.3 (421–1716); PDE Lane A.3 and Lane B item 9 (223, 274); AlgebraicTopology Stages 3, 4 (items 6, 7: `simplicialRealizationCW` 817, `cwSubcomplexNeighborhoods` 755), 6, 6.3 (1440–1456); GeometricTopology Layer 11 (831); RealAnalyticGeometry R0–R5, R3.1, R3.2 item0 (39–1007, 819); HeegaardFloer's DG delegation (17–31); CharacteristicClasses C1.5 and Hyperfunctions HF5 as consumers (98, 1102); SpinGeometry, RiemannianGeometry, TopologicalKTheory as consumers; Completed: HopfRinow (R04), RealAlgebraicGeometry Layer 7 (479), ContourIntegration Layer 2 (158), HodgeStructures. Open pull requests (read with `roadmaps show`): VariationalMethods #1028 §§2.2–2.4, 3.1, 4.3, 5.1–5.3 and the three `CompactFormPair` names (`Suggested.lean:186, 207, 220`; the resolver's three leads are false); UnboundedOperators #1027 §4.7 (UO-D06) and `existsUnique_selfAdjoint_of_closed_form` (README 535, `Suggested.lean:105`); LieGroupoidsPoisson #1050 G1.3; FormalConnectionsOpers #1056 F2.4; ComplexComparisonPartII #848 C−1.1, C0.4, C5.1–C5.2; GeometricQuantization #1186; IndexTheory #1077 I7 (R04); PlanarTopology and SurfaceTopology #271 (another author's new folders: Layer 6 `Surface.Orientation` at PlanarTopology 755; SurfaceTopology Layers 2–3, 6, 8 at 300–860). None is cited by pull-request number.

Dependency check, run as required, movable and plain:

```text
depcheck: 204 roadmaps, 1494 edges, 0 problem(s)
```

No UPWARD, CYCLE or moved line. The on-main mutual citations of R07 are invisible to it by design.

### Ownership

Searched by object in main, the board packages index and the open heads above. The scalar Cauchy–Green transform, finite-rank Runge operator, planar exactness, operator/jet/transpose core, all-degree Chevalley–Eilenberg complex and relative integration contract are stated here and in later open roadmaps (R05); this roadmap is the owner because it is on main and the gate forbids the reverse edge. No two `Suggested.lean` files declare the same fully qualified name (GlobalHolomorphicFunctions uses `exists_finite_rank_runge_operator`). Ownership against the open pull requests the brief names without files was checked through `roadmaps show`; the remaining 400-odd open pull requests were not searched beyond `roadmaps grep`.

## Not verifiable

- `gh`: Griffiths–Harris, Principles of Algebraic Geometry (1978), chapter 0, cited for local parametrization and Nullstellensatz. The sources service found no legal text (Wiley); listed in `needs-references.toml`. Demailly II §§2–4 was read for the same statements.
- `hormander` (Theorem 2.3.5), `webster` (Math. Z. 201, pp. 303–316), `wells` (third edition, Chapters IV–V), `raghunathan` (Theorem 1.13, Corollary 1 p. 31): Springer, paywalled; recorded uncertified by the service and cited by locator only.
- HamiltonianReduction R5 and Index I7.4 are consumer mentions only; HamiltonianReduction is in no checkout given to me.
- No `sources.toml` exists in the folder; the cited works are recorded in this report by cache id and line.

## Source issues

- **Misprint** in demailly at VI §7, proof of Theorem 7.3, printed p. 310 (line 15397): the source says the second form has coefficients in E; it should be E* for the evaluation-wedge pairing; affects the proof.
