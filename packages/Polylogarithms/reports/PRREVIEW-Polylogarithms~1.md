# Review of Polylogarithms (pull request #1424 at cc121bb)

**Verdict:** needs changes

## R01 (P2) — Retire the fulfilled supplier-gap requests

**Location:** `TauCetiRoadmap/Polylogarithms/README.md:104–120`; `packages/Polylogarithms/design/plan.json:3–22`. The README calls these “direct supplier contracts,” but the plan still requests `borel-period-contract`, `universal-deligne-contract` and `rational-hspace-unrestricted`. None of those slugs occurs in the README.

**Claim:** The declared gaps must be minimal, must describe missing inputs, and must agree with the contracts the intake reads. The first two requests now ask suppliers to provide objects they explicitly own and state. The third is no longer an input to the README's proof route.

**Witness:** BorelRegulators §5.1 already states totally-real even-weight rationality; §§5.3–5.4 give image and covolume. MotivicEtaleKTheory §§1–7 give the requested models, Chern comparison, support theory and universal regulator. README §2.2 supplies its own unrestricted homological adapter.

**Repair:** Reconcile the plan's permitted top-level `gaps` list with the direct contracts: remove the two fulfilled requests and retire the unused unrestricted-H-space request. Keep the precise supplier citations and the locally owned §2.2 proof obligations. If a genuinely missing residual input remains, state its exact hypotheses under the same slug in both places, rather than requesting the supplied block again. This requires no supplier implementation or supplier edit. The replacement contracts cover the diagnostic instances: BorelRegulators §5.1 gives `π²=6ζ(2)` for ℚ; MotivicEtaleKTheory §7.4 gives regulator `log 2` on the unit 2; §2.2's finite-support argument retains all independent prime classes in `ℚ×⊗ℚ`.

This does not re-raise the settled request to implement or place the suppliers in `FIX-RT-Polylogarithms~1.md:165`. It concerns obsolete metadata in this package after the supplier exports became explicit. The earlier reason for leaving supplier implementation external remains valid.

## R02 (P3) — Point the plus/Q contract to §3.14

**Location:** `TauCetiRoadmap/Polylogarithms/README.md:14,106,130`, especially “GeneralAlgebraicKTheory §3.12 identifies positive K-groups with the homotopy of `BGL(F)⁺`.”

**Claim:** §3.12 supplies the normalized ring plus/Q comparison.

**Witness:** `TauCetiRoadmap/GeneralAlgebraicKTheory/README.md:615` is split-exact group completion. The zero-component equivalence `BGL(R)⁺≃K(R)₀`, with its ring-side normalization, is in §3.14 at line 645; §3.13 supplies projective cofinality.

**Repair:** Cite §§3.12–3.14, identifying §3.14 as the plus/Q comparison, at these three contracts. The local §2.2 dependency already has the correct range. The normalization test is multiplication by 2 over 𝔽₅: inverse transpose gives 3, and the additional grouplike inversion in §3.14 returns 2. Thus the corrected locator supplies the identity-on-units comparison actually consumed. This is a locator repair, not an unowned prerequisite.

## R03 (P3) — Record the three additional cited works in the source manifest

**Location:** `TauCetiRoadmap/Polylogarithms/README.md:1584–1586`; `packages/Polylogarithms/sources.toml`.

**Claim:** The references and source manifest identify the versions supporting the new next-to-Milnor and functorial reciprocity targets.

**Witness:** The manifest has 19 keys, ending with SCH; it has no entry for BOL, BNM or RSR. The README cites arXiv versions 2108.11862v4, 2404.06271v2 and 1511.00520v3 respectively.

**Repair:** Add one source-service record for each of BOL, BNM and RSR, retaining these keys and versions, their locators and the targets they support. All three were successfully fetched legally during this review; no missing-reference request is necessary. The fetched text contains BOL Theorem 1.8 and Corollary 1.11, BNM Theorems 1.2–1.3 and 6.3, and RSR Theorem 1.2 and Corollaries 1.3–1.4. In particular, the BNM entry must retain characteristic zero, and the RSR norm entry must retain perfectness. The sign tests below use those versions.

## Verified sound

The reviewed tree is the specified head. The diff outside `TauCetiRoadmap/Polylogarithms` is empty, and the worktree remained unchanged. I read both target files, the repository README and contributing rules, and main-branch examples including AlgebraicCurves and GeometricCurrents. No route-specific restriction, algorithmic target, copied source passage, sorry-defined data, `set_option`, or duplicate fully qualified Lean declaration was found in the reviewed files. The general and conjectural scopes remain distinguished, including positive characteristic and the full-complex transfer conjectures.

The worker's gate reports every check passing, including the targeted module build, imports, forbidden syntax, README/Lean names, stray files and outside-folder changes. The independent dependency command returned:

```text
depcheck: 204 roadmaps, 1494 edges, 0 problem(s)
```

There was no UPWARD, CYCLE or moved line. I read the target's supplier contracts and `Needs` lines. The references to the downstream weight-four Part II identify a consumer and ownership boundary, not a prerequisite of this roadmap. Declared missing supplier implementations were not treated as findings; R01 concerns requests which no longer describe the README's prerequisites.

Direct `lake env lean` elaboration of `TauCetiRoadmap/Polylogarithms/Suggested.lean` succeeded with only nine `sorry` warnings. A separate scratch copy containing `#check @name` for all 24 named declarations elaborated. No section binder was lost, and no type change was needed: the number-field, field, full discrete lattice, nonreal-shape, nonzero-denominator and cycle hypotheses are present where used. In particular `normalizedPeriod` is deliberately total on more indices than the arithmetic theorems admit; its theorems use exactly the prescribed rows, so natural subtraction is not silently truncating the intended exponent.

The one-tactic scratch probe tried `simp`, `rfl` and `infer_instance` on each of the nine admitted theorems; none closed. Object searches at the pins found no single existing theorem giving any of those nine conclusions. The proved prime-valuation independence example tests the nontrivial rationalized-unit definition. I found no padding to delete.

**Headline coverage.** The nine statable headlines are the Lobachevsky formula, finite ideal-region volume, signed ideal-tetrahedron volume, Kummer reduction, the complete explicit trilogarithm relation, weight-three existence, weight-three every-family rationality, totally-real even-weight existence, and full elliptic-kernel absolute convergence. All nine occur in the Lean file. The README also targets descent/Borel calibration, configuration lifting and K-theory comparisons, universal/explicit current regulators, Green comparisons, reciprocity, next-to-Milnor exactness and motivic comparison, and the elliptic regulator pairing. The module docstring identifies these and the missing actual Bloch/configuration/K-regulator/current/higher-Chow carriers. The elementary obstruction calculation is an API target, not a missing deep Lean headline. The downstream weight-four theorem is not claimed as this file's acceptance theorem.

**Seeded source sample.** The following 15 targets were read against the legal cached texts, with the stated editions and printed pagination. Source support here is distinct from a completed proof of a roadmap target.

| Target | Text and locator opened | Result and boundary |
| --- | --- | --- |
| 2.1 Descent and embedding regulators | Z07 lines 667–669, 837–862, §5 pp.17–19; G04 lines 2152–2167, Theorem 5.11 p.49 | Descent and selected complex embeddings agree; integral antisymmetric versus exterior torsion is explicitly distinguished. Exact Borel constants still require §2.3. |
| 2.3 Matrix-unit calibration | G04 lines 1934–1978, Theorem 5.7 and its proof pp.44–45 | The displayed trace computation gives −3/2, not the source's 1. The roadmap correctly refuses to infer its complete K-theory scalar from that assertion. |
| 3.6 Gale duality | G95 lines 3310–3404, Theorem 8.1 pp.304–308; G94 lines 1314–1360, §3.10 pp.26–27 | Duality negates the geometric class; finite-rank compatibility and the separate conjectural lower-degree isomorphisms are not conflated. |
| 3.7 Primitive K-theory/regulator | G94 lines 1324–1360 and 2292–2304, Lemma 3.18, Conjecture 3.19, Theorem 5.11 pp.27,45–46 | Rank-two vanishing and the nonzero rational regulator comparison have the stated scope. The additional π² conversion is required in the chosen Borel coordinates. |
| 3.8 Lifting and proof boundary | G95 lines 245 onward, Theorem 1.1 p.203, and 3472–3503, §9.2 pp.310–311 | Existence is a theorem. The higher-differential computation needed for all-cycle lifting is asserted but not displayed in the source; the roadmap names that additional work explicitly. |
| 4.1 Rational-curve relations | G95 lines 751–890, §1.9 pp.220–224; GR lines 151–193, §1.1 pp.4–5 | Rational curves are distinguished from the older arbitrary-curve construction; specialization and quotient descent precede the differential. |
| 4.3 Evaluation and constancy | G95 lines 841–878, Proposition 1.18 and Corollary 1.19 pp.223–224 | Kernel-to-constancy and continuous endpoint specialization support period descent. The arbitrary raw family `[t]` is not asserted constant. |
| 4.5 Explicit weight-four cycles | GR lines 196–200 and 324–364, Theorem 1.2 p.5 and §1.2 p.9 | Explicit versus inductive B₃ remain different presentations. Forward kernel inclusion is valid; reverse cycle lifting is not inferred. The rank-zero exact-equality issue in the source is listed below. |
| 4.6 Presentation obstruction | GR lines 331–364, §1.2 p.9; native linear kernels/quotients | The source leaves the B₃ comparison conjectural. The roadmap's elementary obstruction calculation supplies precisely the additional lifting criterion, tested below. |
| 5.1 Test forms/currents | DEM lines 498–618, I §2.A–C pp.13–18 | Complementary degree, compact-support test topology and the derivative sign agree. This does not authorize arbitrary current multiplication or pullback. |
| 5.9 Universal comparison | BFT lines 831–943, §6.2–6.3, Proposition 6.5, equations (6.7),(6.9),(6.10), Theorem 6.11 pp.15–19 | Critical/subcritical signs, the minus Green term and comparison on cycle/base summands agree after J. |
| 5.10 Mixed forms | BFT lines 949–1049, Proposition 6.12 through Theorem 6.18 pp.19–21 | Both axes and the cube-first simplex sign agree. The missing cube degree in printed (6.15) is corrected in the roadmap. |
| 5.14 Reciprocity triangles | G04 lines 2338–2398, Conjectures 6.2–6.3, Lemma 6.4, Theorem 6.5 pp.53–54; 2531–2558, Lemma 6.9 p.57; BOL lines 145–279, Definitions 1.6, Theorem 1.8, Corollary 1.11 pp.5–6 | The pre-Bloch target, both triangles, constant-factor condition, characteristic-zero functorial system and Chow sign transport are retained. Uniqueness is of a system, not of one arbitrary map. |
| 5.15 Rational curves/families/ℚ̄ | G04 lines 2390–2434, 2531–2588, 2650–2734, Theorem 6.5, Lemma 6.9, Theorems 6.10 and 6.12 pp.54–60 | The local family statement and finite-cover rational descent have the stated scope; the full embedding regulator, not one component, supplies injectivity. |
| 5.17 Weight-three curve regulator | G00 lines 744–792, Proposition 4.1 (28) pp.17–20; D96 lines 306–340, 845–940, Theorem 2.1 and §3.6–3.7 pp.6–7,21–23; G04 lines 2379 onward, Conjecture 6.3 p.54 | The −dL₃ diagonal identity and separate residue comparison agree. The characteristic-zero Adams-weight theorem does not identify all K₄ or the configuration map. Full higher reciprocity stays conjectural. |

The explicitly unverified raw-alternation shortcut in §3.5 was also checked against GR lines 2964–2987, equations (142),(144) pp.65–66, and lines 3058–3076, Proposition 7.2 p.67. Those formulas were not substituted for the roadmap's geometric quotient map: their existence in the text does not prove the proposed `−90 M₃` conversion. The roadmap instead fixes its map as `18 M₃` and derives its lower factors. I also opened BNM Theorems 1.2–1.3 and 6.3 and RSR Theorem 1.2/Corollaries 1.3–1.4 for the additional all-field and characteristic-zero claims. Their explicit restrictions are preserved.

**Adversarial computations.** The following 165 rows record the computations. In the table, `e_p=u(p)` in the rational units of ℚ, `G=D(i)=0.915965594…`, and `Z=ζ(3)`. A “pass” records the displayed calculation and exclusion of the indicated wrong model; it is not a proof of the general theorem. Numerical series checks are marked numerical. Structural rows test the actual defining equations, including zero and identity maps. All five layers, the 15 sampled targets, all nine Lean headlines and the objects touched by findings are covered.

| Statement | Instances tried | Values computed on both sides | Result / change |
| --- | --- | --- | --- |
| Principal polylog definition | n=2; z=0,1,−1 | Integral values 0, π²/6, −π²/12 agree with Li₂ | Pass; endpoint totalization harmless here |
| Bernoulli parity definition | n=2,3; z=1,−1 | L₂(1)=L₂(−1)=0; L₃(1)=Z; L₃(−1)=−3Z/4 | Pass; all-real projection would fail |
| Bloch–Wigner definition | z=i,−i,2 | D(i)=G, D(−i)=−G; Im Li₂(2)=−π log2 cancels arg(−1)log2 | Pass |
| Rational unit definition | 0,1,−1,2,3,5 | u(0)=u(1)=u(−1)=0; valuation matrix on 2,3,5 is I₃ | Pass; zero map excluded |
| Five-term predicate | x=2,y=3; b=D on real inputs | Arguments 2,3,3/2,3/4,1/2; all five D-values 0; endpoint b(1)=0 | Pass; x=y and zero denominators excluded |
| Cross-ratio convention | (∞,0,1,i), first two swapped | r=i and 1/i=−i; periods G and −G | Pass |
| Cube orientation change | q=0,1,2 | J=(1,−1,1); δJ₁=(−∂)(−1)=∂=J₀∂ | Pass |
| Selected rows/exponents | (r₁,r₂)=(1,0),(0,1),(1,1) | Odd n: exponents 0,n,n; even n: n,n,2n, from n(N−d) | Pass |
| §2.1 descent | [i] and its conjugate | δ[i]=(1−i)∧i=0 rationally; periods G and −G | Pass; nonzero functional |
| §2.1 real embedding rows | F=ℚ | Selected complex-row count 0; map lands in ℝ⁰ and is 0 | Pass |
| §2.1 integral boundary distinction | w primitive sixth root, 1−w=w⁻¹ | Exterior boundary 0; antisymmetric diagonal −w⊗w has order 2; twice it is 0 | Pass; rationalization kills this discrepancy |
| §2.2 projective cocycle | (∞,∞,0,1,i) | Deletion values G, G,0,0,0; signed total G−G=0 | Pass |
| §2.2 vector domain | zero vector followed by four generic vectors | Illicit zero extension gives deletion total G rather than 0 | Pass: zero vector is excluded |
| §2.2 all-ring Hurewicz | zero ring; ℚ in degree 1 | 0↔0; class 2 maps to e₂ and determinant returns e₂≠0 | Pass |
| §2.2 zero component | field K₀=ℤ | H₀ of zero component ℚ; all components would give ℚ[ℤ] | Pass |
| §2.2 graded homology | degree-one a,b; degree-two c | a²=b²=0; Δ̄(ab)=a⊗b−b⊗a; Δ̄(c²)=2c⊗c | Pass; neither ungraded symmetric nor all-exterior model works |
| §2.2 telescope/finite support | multiply by 2; prime-indexed degree-one space | a↦2a, ab↦4ab; any chain uses finitely many e_p; no finite rank bound on all e_p | Pass; finite-type-only supplier would not suffice |
| §2.2 primitive projection | primitive a, product ab, degree 0 | log-convolution projection gives a,0,0; reduced coproduct of ab remains nonzero before projection | Pass |
| §2.2 rank filtration/naturality | identity ring map and GL₁→GL₂ unit 2 | e₂↦e₂ in either route; rank-1 image contained in rank-2 image | Pass |
| §2.3 trace calibration | X=E₁₂,Y=E₂₁,Z=E₂₂; swap X,Y | AltTr=−3,+3; C₂=−3/2,+3/2; Φ₃=1/2,−1/2 | Pass; source value 1 fails |
| §2.3 plus/Q supplier normalization | unit 2 in 𝔽₅ | inverse transpose 2⁻¹=3; corrected comparison 3⁻¹=2 | R02: cite §3.14 |
| §2.3 Borel period conversion | F=ℚ,n=3 | Borel class ℚ×Z/π²; multiplying each row by λπ² gives ℚ×Z | Pass; rational scalar alone is insufficient |
| §2.4 metric/density | heights 1,2 and real dilation a=2 | vertical distance log2; coordinate dilation 4 has Jacobian 64 and density multiplier 1/64 | Pass |
| §2.4 inversion action | SL₂ matrix (0 −1;1 0), w=0,h=2 | J=4; image (0,1/2); denominator without h² would be 0 | Pass |
| §2.4 curvature/orientation | height 1; complex conjugation | sectional curvature −1; conjugation Jacobian −1 and signed volume reverses | Pass |
| §2.4 idealRegion definition | z=i and z=2 | c=(1+i)/2, R²=1/2; real shape is ∅ by definition | Pass; no division by Im z on real branch |
| §2.4 hemisphere condition | z=i, w=(1+i)/3 | squared minimum height 1/2−1/18=4/9; h≥2/3 | Pass |
| §2.4 truncation/exhaustion | point (w,h)=(0,2) | In K₂ and every K_n,n≥2; excluded from K₁; union contains it | Pass |
| §2.4 finite-volume headline | height integral h≥h₀>0; cusp r→0 | ∫h₀∞h⁻³dh=1/(2h₀²); h₀²≍r and planar area ≍r dr give O(ε) cusp tail | Pass; total H³ volume still infinite |
| §2.4 Lobachevsky normalization | θ=0,π/2,π/4 | Λ=0,0,G/2; ∫₀π log(2sin t)=πlog2−πlog2=0 | Pass |
| §2.4 duplication | θ=π/4 | Λ(π/2)=0; 2Λ(π/4)+2Λ(3π/4)=G−G=0 | Pass |
| Lobachevsky headline | z=i | Angles π/2,π/4,π/4; D(i)=G=0+G/2+G/2 | Pass |
| Ideal-volume headline | z=i,−i | Signed integrals G,−G agree with D; absolute volumes both G | Pass |
| Kummer headline | z=i | Three arguments −1,i,i; half-sum (0+G+G)/2=G | Pass |
| §2.5 Fourier tail | z=i,N=1 | Three-term approximation 1; error 1−G≈0.0840344≤3/2 | Pass; no divergent geometric tail bound |
| §3.1 22-term relation | a=b=c=1 | Raw sum 3[1]+4[−1]; period 3Z+4(−3Z/4)=0 | Pass; endpoint [1] retained |
| §3.1 nondegenerate 22-term | a=b=c=2 | Raw coefficients: 3 at 3,3/4,2,1/2,−2; −3 at 3/2,1/4,1; +1 at −8. L₃ sum ≈3.75·10⁻¹¹ versus 0 | Numerical pass; ζ series truncation accounts for residual |
| §3.1 denominator restrictions | a=0; a=b=c=2 | First excluded; second A=B=3 and abc=8, all nonzero | Pass |
| Trilog relation headline: inversion/three-term | x=2,1/2,1 | L₃(2)=L₃(1/2)=7Z/8; at x=2 sum 7Z/8−3Z/4+7Z/8=Z; x=1 sum Z+0+0=Z | Pass |
| §3.2 complex square zero | x=3 | δ²[3]=(−2)∧3∧3=e₂∧e₃∧e₃=0 | Pass |
| IsCycle3 universal predicate | [1]; [3] | [1] boundary 0; [3] tested with boundary functional and ord₃ gives 1 | Pass; arbitrary-symbol cycle predicate would fail |
| §3.2 weight-four universal predicate | [1]; [2] | First tensor 0; second detected by L₃⊗ord₂ as 7Z/8≠0 | Pass |
| §3.3 exterior residue | π∧2∧3; all-unit triple | e₂∧e₃; 0; swapping first two entries negates first answer | Pass |
| §3.3 unit-part map | π, π⁻¹, ππ⁻¹ | unit parts 1,1,1 and product 1; declaring all nonunits zero gives 0·0≠1 | Pass |
| §3.3 tame comparison | (π,2) | exterior residue u(2); tame=1/2, inverse tame=2 | Pass |
| §3.3 shifted residue | n=3, [a]₂⊗t | degree-two residue [a]; target differential −(1−a)∧a; degree-three residue of source differential has same value | Pass |
| §3.4 generic configuration | vectors (1,t,t²), t=1,2,3 | determinant 2≠0; repeating t=2 gives determinant 0 | Pass |
| §3.4 deletion/projection complex | two deleted indices i<j | coefficients (−1)^(i+j−1) and (−1)^(i+j) sum 0 | Pass |
| §3.5 triangle parameter | z=2; z=1 | determinants 2,−2,2,−1 give ratio 2; z=1 makes side points collinear but retains η | Pass |
| §3.5 endpoint comparison | η and triangle at z=2 | M₃η=[1] with period Z; triangle image [2] has period 7Z/8 | Pass; zero map excluded |
| §3.5 seven-term reduction sign | auxiliary point placed last versus first | Moving it across five entries gives (−1)⁵=−1; corrected deletion sum is −M(C), not +M(C) | Pass; source sign discrepancy identified |
| §3.5 r₄ normalization | rows (1,8,2),(7,3,11),(1,3,2),(9,4,3) | Rational prime-wedge calculation: r₄=18 e₅∧e₆₇∧e₁₉₇; f₀=e₅∧e₆₇∧e₁₉₇ | Pass; scalar is 18 |
| §3.5 lower deletion square | (1,t,t²), t=1,2,3,5,7 | δr₅=36 e₂∧e₃∧e₅; r₄ face values −36,0,0,−72,0, whose alternating sum is 36 | Pass |
| §3.5 lower projected squares | interchange common pivots | Summand unchanged, permutation sign −1; each paired contribution a−a=0 | Pass |
| §3.5 top scalar | triangle with period 7Z/8 | r₆=18M₃ has period 63Z/4; an uncalibrated M₃ would give 7Z/8 | Pass; raw Alt₆ shortcut not assumed |
| §3.6 Gale matrix | (I₂,B), B=((1,1),(2,3)) | (I₂,B)(−B;I₂)=0₂; applying kernel construction twice restores the rank-two row space | Pass |
| §3.6 geometric duality | class c and its dual | M₃(c*)=−M₃(c); sum 0; Alt₆M₃=720M₃ by 720 signed terms | Pass; invariance would have wrong sign |
| §3.6 top cohomology | (1−x)∧x∧y | Class is 0 in Milnor quotient and is the boundary of [x]₂⊗y | Pass in both image/quotient directions |
| §3.6 top norm | quadratic extension, nonzero base Milnor triple | N res gives 2 times triple; norming each wedge factor gives 8 times triple | Pass; use a rational-function field, not rational K₃ of a number field |
| §3.7 rank filtration | rank-two class; stabilized rank-three class | First image 0; second image unchanged at ranks 3 and 4 | Pass; no rank/Adams identification inferred |
| §3.7 period exponents | arbitrary signature | (−2r₁−5r₂)+2(r₁+r₂)=−3r₂ on both calibrated determinant expressions | Pass |
| Weight-three existence headline | ℚ,[1] and ℚ(i),[1] | Z₃=Z and π³Z/2=16ζ_ℚ(i)(3) respectively | Pass; both nonzero |
| Weight-three every-family headline | zero family; twice [1] over ℚ | Z₃=0=0·Z; 2Z=2·Z | Pass; nonzero scalar would be false for first |
| §3.8 primitive lift pairing | product ab added to primitive c | Projection(c+ab)=c; primitive Borel pairing gives same value on both | Pass; does not by itself prove cycle lifting |
| §4.1 relation specialization | α=[t]₂+[1−t]₂ | δα=(1−t)∧t+t∧(1−t)=0; endpoint difference 0 | Pass; unrestricted [f(1)]−[f(0)] is not allowed |
| §4.1 projective specialization | f=t,1/t,1+t at t=0 | symbols specialize to [0]=0,[∞]=0,[1]; odd endpoint need not vanish | Pass |
| §4.2 inversion complex | n=2,3; x and x⁻¹ | B₂ signs −; B₃ signs +; u(x⁻¹)=−u(x), so both boundary comparisons agree | Pass |
| §4.2 five-term/inductive comparison | specialized five-term R(tx,ty) at t=0 | arguments 0,0,y/x,y/x,1 give [1]; rational relation [1]=0 in weight two | Pass; supplier §4.21 covers this |
| §4.3 cycle constancy | normalized three-term weight 3; raw [t] | First period 0 at every specialization; raw [t] has values 0 and Z at 0 and 1 and is not a cycle | Pass |
| §4.3 endpoint continuity | pole specialization; constant [1] | Lₙ(∞)=0; L₃([1])=Z on both fibers | Pass |
| §4.4 periodMatrix/normalization | ℚ, one column 2[1]; duplicate columns | Matrix entry 2Z, normalized determinant 2Z; duplicate-column determinant 0 | Pass |
| §4.4 rational column change | A=diag(2,3); swap columns | det A=6; swapping gives factor −1; both match determinant multilinearity | Pass |
| §4.4 embedding representative | conjugate one row | Even weight multiplier −1; odd weight +1, from Lₙ(z̄)=(−1)^(n−1)Lₙ(z) | Pass |
| §4.4 general total definition | n=3, artificial 2-row index over ℚ | Natural exponent 3·(1−2)=0; intended theorem has 1 row and exponent 0; artificial index is outside its signature | Pass; no unintended general arithmetic claim |
| §4.5 explicit raw cycles | [1], [2], [x]+[x⁻¹] | Boundaries 0, nonzero detected as 7Z/8, and [x]₃⊗(u(x)−u(x))=0 | Pass |
| §4.5 forward presentation map | explicit boundary 0 | (p₃⊗id)(0)=0; period stays L₄ of same raw symbols | Pass; no converse claimed |
| §4.6 obstruction nonzero | C=D=E=ℚ,J=0,p=a=id,b=q=0,y=1 | T/H=ℚ; ω(1)=1; ker a={0}, so no cycle lift of 1 | Pass; surjectivity of p alone insufficient |
| §4.6 obstruction zero with changed lift | C=ℚ²,p(x,y)=x,a(x,y)=y,J=0 | a(ker p)=ℚ; obstruction quotient 0; (x,0) lifts every x as a cycle | Pass |
| §4.6 injective target | q=id and b(y)=0 | q(a(x))=0 forces a(x)=0; ω(y)=0 | Pass |
| §4.6 weight-three transport | inductive [1] | Explicit lift [1] has boundary 0 and period Z on both sides | Pass |
| Totally-real even headline | ℚ,n=2,4; ℚ(√2),n=2 | π²=6ζ(2); π⁴=90ζ(4); π⁴/√8=24ζ_ℚ(√2)(2) | Pass; cannot normalize empty columns to q=1 |
| §4.7 finite polynomial residues | t−a; t²+1 over ℚ | Residue fields ℚ and ℚ(i); constant complex residues 0; second field cannot be replaced by ℚ | Pass |
| §4.7 finite/projective distinction | t∧2∧3 | Residues at 0,∞ are e₂∧e₃ and −e₂∧e₃; finite-place target keeps only first | Pass |
| §4.7 Rudenko presentation | 𝔽₂,𝔽₃ | U=0 in both; extended B₂=0 rationally; admissible-pair P(𝔽₃)⊗ℚ=ℚ instead | Pass; small-field adapter essential |
| §4.7 canonical truncation | n=3, [3]⊗u(3), [3]⊗u(5) | First is killed by incoming relation; second differential evaluates as det I₃=1 | Pass; stupid truncation retains erroneous first vector |
| §4.7 next-to-Milnor exactness | irreducible t²+1; residue [i] | Target period G≠0; exactness requests one nonzero finite residue, all others 0 | Consistent nonzero test; source theorem supplies surjectivity |
| §4.7 next-to-Milnor norm | ℚ(i)⊂ℚ(i,√2) | N res[i]=2[i], periods 2G; identity gives [i], period G | Pass |
| §4.7 normalized homotopy signs | m=2,a=i; m=3,a=3,c=5 | Values −[i] and [3]⊗u(5); latter shifted differential −e₂∧e₃∧e₅ equals residue, valuation −1 | Pass |
| §4.7 degree law/towers | t=s²; degrees 2 then 3 | h of restricted class =2h; tower =6h in both routes; identity =h | Pass |
| §4.7 finite generation | union of successive square-root extensions | Finite stages degrees 2ᴺ; infinitely many t=0 branches all have v(t)=1 | Pass: excluded by IsFunctionField, despite transcendence degree 1 |
| §4.7 motivic degree | m=2,3,4 | K-index 2m−(m−1)=3,4,5; target cohomology degree 1,2,3 | Pass; retains Adams weight m |
| §4.7 conditional whole-complex transfer | identity and tower 2·3 | Required operators id and 6id; independent wedge norms give 8id at degree-three quadratic test | Pass as conditional specification; no unconditional use |
| §5.1 degree-current adapter | m=2,q=0,1,2,3,−1 | Test degrees 2,1,0; last two spaces 0, not test-degree-zero duals | Pass |
| §5.1 current differential | scalar f and test form φ | d[f](φ)=−∫f dφ=∫df∧φ; dδ₀(φ)=−φ′(0) | Pass |
| §5.1 LF topology | fixed bumps escaping compact sets | Every fixed-compact seminorm eventually 0; supports never lie in one compact, so no LF convergence | Pass; compact-open substitute fails |
| §5.1 arbitrary current product | mollified δ at scale ε in dimension m | ∫δ_ε²=C ε⁻ᵐ versus no finite canonical δ² | Pass: such product not supplied |
| §5.2 analytic multiplicities | point, double line, degree-two cover | Currents δ_x,2[L],2[Y]; birational resolution gives [Y] | Pass |
| §5.2 Poincaré–Lelong | f=z,z², nonzero constant | ddᶜlog norms give δ₀,2δ₀,0; −log gives negatives | Pass |
| §5.2 current resolutions | contractible chart | H⁰=constants (or holomorphic functions); positive local cohomology 0 | Pass; degree-zero kernel not discarded |
| §5.2 BFT dictionary | complex curve; q=1,2 | Point δ unchanged; ordinary one-form factor −(2πi)⁻¹, two-form +(2πi)⁻¹ | Pass |
| §5.2 top Deligne differential | p=1,g=−log|z| | d_D[g]_BFT=−δ₀; ordinary d[g]=[−Re(dz/z)] with no δ₀ | Pass |
| §5.2 support fiber | Z=∅ and Z=X | fib(id) has zero cohomology; fib(C→0)=C; raw boundary(log|t|) has coefficient −1 | Pass |
| §5.2 shifted comparison complex | arbitrary (a₁,a₂,a₃) | d²=(0,dg₁a₁−g₁da₁,−dρa₁+ρda₁)=(0,0,0) | Pass |
| §5.2 β/cycle inclusions | α and closed cycle Z | β(α)=(0,0,α); cycle=(0,cl Z,0); their differentials are β(dα),0 | Pass |
| §5.3 admissible locus | zero cycle; component contained in face | First has empty support and face 0; second has excess intersection dimension and is excluded | Pass |
| §5.3 Chow incidence | two points colliding | Generic degree 2; special cycle 2[x]; reduced support alone gives 1[x] | Pass; multiplicities owned here |
| §5.3 face/projection adapters | double transverse component; degree-d finite projection | Face multiplicity 2; pushforward multiplicity d; projection through its center excluded | Pass |
| §5.3 Green coefficient condition | α=(z₁+z̄₁)i dz₂∧dz̄₂ | ∂∂̄α=0 but ∂α=i dz₁∧dz₂∧dz̄₂≠0 and ∂̄α≠0 | Pass: separately closed condition retained |
| §5.3 logarithmic integrability | log r and r⁻² on a complex disc | ∫₀ε r|log r|dr finite; ∫₀ε r⁻¹dr infinite | Pass |
| §5.4 logarithmic r forms | one entry f; two entries f,g | r₀=log|f|; r₁=i(log|f|darg g−log|g|darg f) | Pass; real/Tate distinction retained |
| §5.4 r₂ alternation | transposition and repeated entries | Each swapped term changes sign; r₂(f,f,g)=0 | Pass |
| §5.4 residue factor | one simple zero | ∮darg z=2π; current derivative 2πδ₀; residue factor is not 1 | Pass |
| §5.5 raw complex | n=1 | Functions in degree 1; closed (1,1) currents degree 2; d log|z|=2πiδ₀ in raw convention | Pass |
| §5.5 simplex map degree | i=0 and i=1 | P at 0=(2πi)ⁿ[Y]; at 1 ordinary current degree 2n−2, cochain degree 2n−1 | Pass; no r₋₁ |
| §5.5 structural base change | Spec ℚ(i), Spec ℚ(√2) | Complex base has 2 points in each case; real base Spec ℂ versus two Spec ℝ | Pass; Weil restriction of Spec F would have 1 point |
| §5.7 Wang forms | m=0,1,2 | T₀=1,T₁=u,T₂=u(∂v−∂̄v)−v(∂u−∂̄u); exchange u,v gives −T₂ | Pass |
| §5.7 Wang/r dictionary | u_j=−log|f_j| | T₁=−r₀; T₂=r₁; general factor (−1)ᵐ | Pass |
| §5.7 boundary current | W₁=−log|z| | d_D[W₁]=−δ₀+δ∞ | Pass |
| §5.8 cubical map | zero cube and one cube | Degree 2p and 2p−1; degenerate logarithm 0 makes positive cube regulator 0 | Pass |
| §5.9 integration comparison | m=0, W₀=1 | φ(α)=[α]; cycle part maps to P_c(Z); β part maps to [α] | Pass |
| §5.9 Green/Wang identity | m=0 critical; r=1,2 subcritical | Critical d_D[g]=[ω]−δ_Z; subcritical face coefficients +1,−1 | Pass |
| §5.9 ψ sign | principal divisor, Green g=−log|f| | d_Dg=−δ_div; minus Green term cancels the cycle contribution | Pass |
| §5.10 mixed degree | (n,m)=(1,0),(0,1),(1,1) | Degrees 2p−1,2p−1,2p−2; printed 2p−m fails first axis | Pass with source correction |
| §5.10 mixed differential | n=0 versus n=1 | Simplex coefficients +1,−1; two routes around a square cancel +1−1=0 | Pass |
| §5.10 hyperplane change | z₀↦−z₀ | −log|−f|=−log|f|; derivatives equal; scale 2 would add −log2 | Pass |
| §5.11 Chow-form arity | (q,p)=(1,0),(2,1),(3,1) | r-indices 0,2,3; output ordinary degrees 0,0,1 | Pass |
| §5.11 period factor | q=2,p=1 | i⁻¹(2πi)⁻¹∫r₂=−∫r₂/(2π)=P₂ | Pass |
| §5.11 resolved family | double component; node with two branches | P(2Y)=2P(Y); node current is sum of two branch currents | Pass; support reduction would fail |
| §5.11 face coefficient | adjacent fiber dimensions p,p−1 | (2πi)⁻ᵖ·2πi=(2πi)⁻⁽ᵖ⁻¹⁾ | Pass |
| §5.12 Arakelov cone degree | cycle weight n,index i=0 | Cohomological degree 2n, not 0; n=1 gives degree 2 | Pass |
| §5.12 principal Green relation | div f with g=−log|f| | ddᶜg+[div f]=−[div f]+[div f]=0 | Pass |
| §5.13 tame reciprocity | f=t,g=t−a on ℙ¹ | Tame values at 0,a,∞: (−a)⁻¹,a,−1; product 1 | Pass; missing infinity gives −1 |
| §5.13 η residue | π=z, constant unit c | η(z,c)=−log|c|darg z; derivative −2πlog|c|δ₀=2πlog|c⁻¹|δ₀ | Pass |
| §5.13 unramified fiber | class with nonzero residue versus residue 0 | First cannot lift to fiber; second meets kernel condition; zero class maps 0→0 | Pass |
| §5.14 Chow Steinberg identity | f=t,g=t−i | Only nonzero D contribution is G at i; ∫r₂=−2πG, so P₂=G | Pass |
| §5.14 constant-factor integral | constant c and proper curve | Integrated P₂(c,f,g)=0; local r₂ need not be 0 | Pass; local constant erasure would be false |
| §5.14 first reciprocity triangle | t∧(t−1)∧(t−3) | Total residue 3∧(−2)=−e₂∧e₃≠0; δ(−[3]) gives same value | Pass; Bloch-kernel target and zero h fail |
| §5.14 second triangle | (1−t)∧t∧(t−a) | h gives [a]; symbol residue gives [a]; a=i has period G | Pass |
| §5.14 BOL sign transport | a=i | P_BOL=−G, transported P₂=G; h unchanged | Pass |
| §5.14 uniqueness/degree | t=s²; identity | h pullback values 2[i] and [i]; periods 2G,G | Pass; individual-triangle uniqueness not asserted |
| §5.15 rational cross-ratio formula | normalized four points ∞,0,1,i | Ratio i; symbol [i]; period G, with opposite ordering −G | Pass |
| §5.15 family/cover descent | constant parameter; degree-two cover | Family value constant D(a); pullback period 2D(a), rational division by 2 returns D(a) | Pass |
| §5.15 full regulator | pair of independent complex-place coordinates | Coordinate vectors (1,0),(0,1); first projection kills second, full pair does not | Pass; only full regulator injectivity is consumed |
| §5.16 line/chord presentation | concurrent line intersections; double intersection | Zero/endpoint cross-ratio contributes 0; a doubled intersection contributes twice its symbol | Pass; general five-term descent remains explicit work |
| §5.16 analytic normalization | normalized Steinberg line triple | h_E and P₂ both use negative integral normalization; reversing one gives −D(a) versus D(a) | Pass on the normalized case only |
| §5.17 diagonal identity | f=1/2,v=1 | −dL₃=−(4/3)log²2≈−0.640604019; ρ₂([f]⊗f) has exactly this value | Pass |
| §5.17 constant second argument | f=1/2,v=1,g=c>0 | α(1−f,f)=−4log2; ρ₂=(4/3)log2 log c, nonzero for c=2 | Pass; declaring it zero fails |
| §5.17 five-term descent | five-term boundary image | D-sum=0 and exterior boundary=0 give separately zero D and α contributions | Pass; one identity alone insufficient |
| §5.17 Adams comparison | m=3 | 2m−2=4, weight 3; no assertion that other K₄ weights map isomorphically | Pass |
| §5.18 character | square lattice, γ=1,i; quarter points | χ₁(i/4)=i; χᵢ(1/4)=−i; χ₀=1; all norms 1 | Pass |
| §5.18 Haar/derivative adapter | γ=1; z variable, area A | ∫₀¹e²πⁱʸdy=0; ∂χ₁=(π/A)χ₁dz; constant integral 1 | Pass |
| §5.18 summand definition | triad (1,i,−1−i), x=y=z=0 | Summand (−1+2i)/2; norm √5/2≈1.118033989; swapped last frequencies give its negative | Pass |
| Elliptic summability headline | largest dyadic scale 2ʲ | Shell bound C(j+1)2⁻ʲ; Σ(j+1)2⁻ʲ=4; zero frequencies excluded | Pass; no divisor hypothesis needed |
| §5.18 translation/antisymmetry | simultaneous translation; y=z | Multiplier χ_(γ₁+γ₂+γ₃)=χ₀=1; paired sum K(x,y,y)=0 | Pass |
| §5.18 scale | λ=2 | Numerator ×2, denominator ×64, coefficient ×1/32; area ×4 | Pass |
| §5.18 Fourier pairing constants | one nonzero triad | (−A/(2π))³·(π/A)·(−2iA)=iA³/(4π²); multiplying −4/3 gives −iA³/(3π²) | Pass before logarithmic limit |
| §5.18 mean terms | log|g| replaced by log|g|+c | Individual pairing gains c∫α∧ω; only full symbol-cycle cancellation makes summed gain 0 | Pass; divisor-only condition insufficient |
| §6.1 completed units | ℚ at p=2,3 | Rational unit rank 0; empty determinant 1; −1 survives completed 2-units but log is 0 | Pass |
| §6.1 logarithm depth | ℚ₂, u=−1 and 5 | log(−1)=0 at depth 1; injection requires i>1; v₂(log5)=v₂(5−1)=2 | Pass |
| §6.1 transposed matrix | non-CM cubic signature (1,1) | Supplier size 3×1; consumer transpose 1×3; full rank 1 equivalent, single chosen minor not prescribed | Pass |
| §6.1 split-prime check | ℚ(√2),p=7 | 10²≡2 mod49; ε≡11; ε⁶≡15 mod49, valuation of ε⁶−1 is 1 | Pass |
| §6.2 exact derivative | z=1/2,2,−1; v=1 | Values (4/3)log²2,−(1/3)log²2,0; numerically 0.640604019,−0.160151005,0 | Pass |
| §6.2 angular/radial derivative | z=i; v=i and v=−1 | Radial derivative 0; angular derivative −G | Pass; dropping the D-term fails |
| R01 gap minimality | ℚ,n=2; unit 2; all prime classes | Supplied even factor 6; universal regulator log2; local adapter includes infinitely many independent e_p | Remove obsolete requests; retain direct contracts |
| R03 source coverage | README keys versus manifest keys | 22 cited works versus 19 records; missing set exactly {BOL,BNM,RSR} | Add 3 versioned records |

**Pinned library audit.** Mathlib is pinned at `6b7abb3c7686292736be2955bd3eb9ebf63b456a`; Tau Ceti at `a91d3aafa8cd3e6bc33dfde0d7677ed0f1625039`. The following 16 declaration/object groups were opened at those pins, not inferred from current online documentation:

| Declaration / native object | File and line | What the definition or theorem supplies, and its limit |
| --- | --- | --- |
| `Complex.hasStrictFDerivAt_log_real` | `Mathlib/Analysis/SpecialFunctions/Complex/LogDeriv.lean:45` | Derivative x⁻¹ as a real linear map on the slit plane; it does not itself differentiate through the principal cut. |
| `integral_log_sin_zero_pi` | `Mathlib/Analysis/SpecialFunctions/Integrals/Log.lean:85` | Integral −πlog2, fixing Λ's π-period normalization. |
| `NumberField.dedekindZeta` | `Mathlib/NumberTheory/NumberField/DedekindZeta.lean:49` | Actual ideal-counting L-series, not a free scalar parameter. |
| `NumberField.discr_ne_zero` | `Mathlib/NumberTheory/NumberField/Discriminant/Defs.lean:41` | Nonzero discriminant for a number field, hence nonzero square-root denominator. |
| `NumberField.InfinitePlace.embedding` | `Mathlib/NumberTheory/NumberField/InfinitePlace/Basic.lean:102` | Chosen representative whose place is recovered by `mk_embedding`; the headline's equivalence enumerates all places. |
| `IsZLattice` | `Mathlib/Algebra/Module/ZLattice/Basic.lean:433` | Has explicit prerequisite `DiscreteTopology L` and field `span_top`; neither a zero lattice nor a dense subgroup of ℂ meets the headline's assumptions. |
| `ZLattice.covolume`, `covolume_ne_zero`, `covolume_pos` | `Mathlib/Algebra/Module/ZLattice/Covolume.lean:72,91,98` | Positivity uses finite-dimensional real space, full discrete lattice and Haar measure. These instances apply to ℂ. |
| `Distribution.delta`, `lineDerivCLM` | `Mathlib/Analysis/Distribution/Distribution.lean:201,234` | Evaluation and negative dual derivative; delta outside the open domain is zero. These are scalar test-function distributions, not the required manifold form-current carrier. |
| `AlgebraicGeometry.AlgebraicCycle`, `.map` | `Mathlib/AlgebraicGeometry/AlgebraicCycle/Basic.lean:44,69` | Locally finite coefficients; quasicompact weighted pushforward using residue degrees. It does not supply the new family incidence/specialization theorem. |
| `TauCeti.IsFunctionField` | `TauCeti/FieldTheory/FunctionField/Basic.lean:49` | Existence of a transcendental parameter with a finite-dimensional extension; not transcendence degree alone. |
| `IsFunctionField.finiteDimensional_adjoin` | `TauCeti/FieldTheory/FunctionField/Basic.lean:62` | Any transcendental parameter is finite under that hypothesis. |
| `TauCeti.Place.residueUnit` | `TauCeti/FieldTheory/FunctionField/Place/Residue.lean:113` | Requires ord=0 and returns a genuine residue unit. It is not reduction of every field element. |
| `TauCeti.Place.finite_setOf_ord_ne_zero` | `TauCeti/FieldTheory/FunctionField/Place/Zeros.lean:461` | Requires `IsFunctionField`; at zero, ord's junk convention gives empty support, not a principal divisor of zero. |
| `HasContinuousLogOn`, `.ne_zero` | `TauCeti/Analysis/Complex/ContinuousLog/Basic.lean:161,172` | A continuous logarithm with an exponential identity on the set; nonvanishing follows. |
| `hasSum_log_of_mem_unitFiltration_one` | `TauCeti/NumberTheory/LocalField/Logarithm.lean:97` | Every finite p-adic extension and principal unit, including p=2. |
| `valuation_log_sub_log`, `log_unitFiltration_injective` | `TauCeti/NumberTheory/LocalField/Logarithm.lean:256,285` | Retain strict depth inequality e<(p−1)i; no claim of injectivity on every principal unit. |

Object searches covered Bloch/pre-Bloch groups, polylogarithms, Lobachevsky volume, configuration complexes, higher Chow/Deligne regulators, currents, reciprocity and elliptic kernels. No native realization of the missing headline carriers or existing proof of the nine headlines was found. The acceptance definitions are concrete formulas or native universal quotient tests; they do not assume the theorem they are intended to test.

**Ownership and resolved supplier interfaces.** Searches used the roadmap service, main, the supplied open-head checkouts and board packages. No competing owner of the concrete polylogarithmic regulator/reciprocity constructions was found. Generic objects retain the following owners; their specialization here is identified rather than planned again. File lines refer to the supplier README, with the service's display header omitted.

| Supplier and resolved sections | Evidence opened / convention check |
| --- | --- |
| PolylogarithmFunctions §§4.5,4.8,5.2,5.4,7.2 | `TauCetiRoadmap/PolylogarithmFunctions/README.md:606,658,719,751,1020`: general differential, exact L₃ differential, L₂=D, five-term/differential, uniform Fourier tail. At i the correction term is 0; across the real cut the ±2πlog x jumps cancel. |
| K3BlochGroups §§3.5,3.13–3.16,4.21 and Layer 4 | `TauCetiRoadmap/K3BlochGroups/README.md:707,952,1701`: antisymmetric boundary, extended presentation and rational-function rigidity. Its boundary x∧(1−x) is negated here; §4.21 supplies rational-curve, not arbitrary-curve, relation equality. |
| GeneralAlgebraicKTheory §§3.12–3.14,5.11 | `TauCetiRoadmap/GeneralAlgebraicKTheory/README.md:615,645,1117`: group completion, normalized plus/Q and spectrum comparison. R02 fixes the narrow erroneous citation. |
| StableHomotopyKTheory §§3.37,4.14,6.1–6.2,7.19 | `TauCetiRoadmap/StableHomotopyKTheory/README.md:1427,1647,2256,2567`: finite-type H-space theorem versus arbitrary rational-spectrum decomposition; block sum and K-spectrum are suppliers. The arbitrary-dimensional zero-space homology step is explicitly owned in §2.2 here. |
| ArithmeticKTheory §§3.3–3.4 | `TauCetiRoadmap/ArithmeticKTheory/README.md:1138,1190`: actual rational localization and Borel ranks; degree 3/5 ranks over ℚ are 0/1, over ℚ(i) 1/1. Regulator values have a different owner. |
| BorelRegulators §§2.3,3.4,5.1–5.4 | `TauCetiRoadmap/BorelRegulators/README.md:287,387,597,640,662`: injectivity, Tamagawa input, primitive periods, integral image and covolume. Totally-real rank zero is explicitly included. |
| MotivicEtaleKTheory §§1.1–1.4,2.1–2.4,3.3–3.4,4.1–4.2,5.1–5.4,6.1–6.3,7.1–7.4 | `TauCetiRoadmap/MotivicEtaleKTheory/README.md:121,262,397,452,497,588,650`: normalized/mixed cycles, rational character, Deligne models/product, supports/semipurity, independent regulator and unit normalization. J₁=−1 and the positive unit/negative divisor-log distinction agree. The shifted D_AH/current dictionary and explicit Wang comparison remain local targets. |
| K2SymbolsBrauer §§5.4,7.2,8.2–8.3,9.5,9.11–9.16,10.5,10.9,10.12,10.24,10.29–10.30,11.3,11.5 | `TauCetiRoadmap/K2SymbolsBrauer/README.md:508,1221,1309,1490,1602,1819,1899,1950,2182,2319,2531,2576`: Milnor objects, norms, tame and signed Quillen residues. In particular degree-two boundary is inverted, degree-three boundary positive; these are general DVR statements. |
| AlgebraicCurves Layer 12B–12C | `TauCetiRoadmap/AlgebraicCurves/README.md:1597`: finite normalization, projective regular models, finite dominant covers and contravariant function-field embeddings. Characteristic-zero algebraically closed base supplies the smooth connected case used here. |
| GeometricCurrents G1 / ComplexKahlerGeometry K5a | `TauCetiRoadmap/GeometricCurrents/README.md:137`; `TauCetiRoadmap/ComplexKahlerGeometry/README.md:570`: common form-test/current carrier and LF foundation. The degree-current conversion here changes the boundary by (−1)^(q+1). |
| ComplexComparisonPartII C−1.1/C5.4 | `TauCetiRoadmap/ComplexComparisonPartII/README.md:723,3014,3203,3256`: analytification, current calculus, analytic integration and Poincaré–Lelong. Double-component coefficients survive; the scheme analytification is not replaced by reduction. |
| AlgebraicModuliForArithmeticGeometry §1.6/Layer 9 | `TauCetiRoadmap/AlgebraicModuliForArithmeticGeometry/README.md:874,10373,10447`: Chow coefficient schemes with closed support, resolution and SNC cleanup. Closed support does not imply a flat universal subscheme; the multiplicity-bearing incidence adapter is additional work here. |
| MotivesAndAlgebraicCycles §§4.8a,4.14 | `TauCetiRoadmap/MotivesAndAlgebraicCycles/README.md:710,813`: relative-cycle specialization and admissible Cartier/base-change operations, equidimensional transfers. These support the Chow-family construction without replacing it by reduced support. |
| KTheoryFiniteLocalFields §3.0a / SchemeKTheoryOperations §§3.3,4.5,5.1–5.2,Layer 6 | Shared Bloch/higher-Chow complexes and localization; coniveau, homotopy and Adams inputs. The target does not redeclare a generic ordinary-cycle or higher-Chow carrier in Lean. |
| DifferentialGeometry / GeometricTopology Layer 7 | Shared forms, integration, Stokes, metrics and volume. The explicitly defined ideal region, cusp estimates and complex-lattice Fourier normalization are consumer adapters, not competing generic carriers. |
| IntegralIwasawaTheory §§2.2,4.1–4.4 / ColemanIntegration early L0 prefix | `TauCetiRoadmap/IntegralIwasawaTheory/README.md:308,542–575`; `TauCetiRoadmap/ColemanIntegration/README.md:454,488,502,518`: completed units, all-embeddings rank criterion and abelian Leopoldt. The transpose changes a d×r matrix into r×d without asserting general Leopoldt; no later Coleman regulator layer is used. |

Main-branch foundational citations to AlgebraicTopology, DGFloer, SchemeAndStackFoundations and AlgebraicVectorBundles remain generic topology, cycle-intersection and bundle inputs, not new polylogarithmic objects. Namespace search returned only `TauCetiRoadmap/Polylogarithms/Suggested.lean:26` for this roadmap's namespace. The mathematical-function owner is PolylogarithmFunctions; repeating its real-body formulas solely to state native acceptance theorems is expressly documented, rather than a second analytic roadmap.

## Not verifiable

- No sampled source was inaccessible for legal reasons. The 19 cached works and the three additional arXiv versions were available; no source manifest was edited and no missing-reference request was needed.
- G95 §9.2 does not display the all-configuration higher-differential calculation needed by §3.8. This review verifies the source's assertion and the roadmap's explicit ownership of the missing proof, not that omitted computation.
- The complete exact Borel calibration, the quotient-level raw-triple-ratio conversion deliberately not used in §3.5, the positive-characteristic elliptic five-term descent, and the common logarithmic Fourier regularization are not certified by the finite computations above. The README identifies them as separate proof obligations; no later theorem silently treats a conjectural full-complex comparison as supplied.
- The general motivic/whole-complex transfer and higher reciprocity conjectures remain conjectures. The characteristic-zero next-to-Milnor results do not establish them.
- Ownership against open pull requests without supplied readable files was not checked beyond the explicitly resolved supplier contracts; no missing owner was inferred from that absence. The object searches and concrete comparisons above concern the main repository, board packages and readable supplied heads.

## Source issues

- **Error** in G04 at Theorem 5.7 proof, printed p.45 (G04 lines 1934–1978): the source says the displayed half-alternating trace evaluates to one on its matrix-unit triple; it should be −3/2 for unnormalized alternation; affects the proof.
- **Misprint** in G95 at §3, relation R3, printed p.263 (G95 lines 2164–2167): the source says the incidence relation includes an additional endpoint term; it should be the relation of Definition 1.5 without that extra term; affects a stated result.
- **Misprint** in G95 at §5.2 case (e), printed p.287 (G95 lines 2836–2840): the source says the last-position auxiliary-point reduction has coefficients (−1)^i; it should be their negatives, or place the auxiliary point first; affects the proof.
- **Gap** in G95 at §9.2, printed pp.310–311 (G95 lines 3472–3503): the source says the all-configuration spectral sequence supplies the required cycle lift; it should justify the higher differentials and degenerate-row contributions; affects the proof.
- **Error** in GR at Theorems 1.1–1.2, printed pp.3,5 (GR lines 114–117,196–200): the source says the determinant formula is an exact equality for every number field; it should allow a nonzero rational factor in rank zero, where ℚ requires the factor 1/90; affects a stated result.
- **Misprint** in BFT at equation (6.15), printed p.20 (BFT line 1001): the source says the mixed regulator has degree 2p−m; it should be 2p−n−m; affects a stated result.
- **Error** in G04 at Lemma 6.9, printed p.57 (G04 lines 2537–2553): the source says the scalar integral has the residue sum without its 2π factor; it should retain 2π consistently with the displayed darg-current identity; affects a stated result.
- **Gap** in RSR at Corollary 1.5 and its justification, printed pp.6–7 (RSR lines 236–272): the source says its reciprocity construction gives the analytic volume comparison; it should establish the functorial compatibility required for that comparison, identified in BOL Remark 1.12; affects the proof.
- **Error** in RSR at Corollary 1.5, printed pp.6–7 (RSR lines 243–258): the source says real hyperbolic volume is 1/(2πi) times its real-valued r₂ integral; it should use a compatible real prefactor or explicitly change the r₂ convention; affects a stated result.
