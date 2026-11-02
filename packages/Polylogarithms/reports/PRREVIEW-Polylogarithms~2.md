# Review of Polylogarithms (pull request #1424 at fc00043)

**Verdict:** needs changes

## R01 (P2) — Retire the obsolete supplier-gap requests

**Location:** `packages/Polylogarithms/design/plan.json:3` (three gap entries); `TauCetiRoadmap/Polylogarithms/README.md:104`, `:106`, `:126`, `:167`. The README describes “direct supplier contracts,” while the plan still requests `borel-period-contract`, `universal-deligne-contract` and `rational-hspace-unrestricted`; none of these slugs appears in the README.

**Claim:** These requests still fail minimality and agreement with the actual proof route. The first two request already specified supplier exports. The third requests a general unrestricted H-space theorem, although §2.2 explicitly constructs the particular unrestricted homological adapter it needs.

**Witness:** BorelRegulators §5.1 and §§5.3–5.4 supply periods, image and covolume; MotivicEtaleKTheory §§1–7 supply the requested comparison/regulator package. Polylogarithms §2.2 owns its additional homology argument. The plan still has all three requests.

The supplier evidence was reopened: `TauCetiRoadmap/BorelRegulators/README.md:599`, `:640`, `:662`, `:847`; `TauCetiRoadmap/MotivicEtaleKTheory/README.md:121`, `:151`, `:262`, `:497`, `:588`, `:608`, `:701`. StableHomotopyKTheory §3.37 remains finite-type; its §§6.1–6.2 and 7.19 provide the spectrum route consumed by the local adapter.

**Exact repair:** Remove the two fulfilled requests and the unused unrestricted-H-space request from the permitted top-level `gaps` list. Retain the precise direct supplier contracts and §2.2's local proof obligations. If a residual missing input is intended instead, name its exact hypotheses under the same slug in both the plan and README.

The repair preserves the diagnostic instances: for ℚ and n=2 the Borel contract gives π²=6ζ(2); the motivic contract sends unit 2 to log 2; §2.2 retains all independent prime classes in ℚˣ⊗ℚ. It requires no supplier implementation or supplier edit. The settled statement in `packages/Polylogarithms/reports/FIX-RT-Polylogarithms~1.md:165` concerns supplier exports and placement; its reason does not excuse obsolete metadata after those exports have been specified. This is the still-unrepaired R01 of the previous review, not a renewed demand to implement the suppliers here.

## R02 (P3) — Record the three additional cited sources

**Location:** `TauCetiRoadmap/Polylogarithms/README.md:1585`, `:1586`, `:1587`; `packages/Polylogarithms/sources.toml:311`.

**Claim:** The bibliography cites BOL, BNM and RSR, but the source manifest still has only 19 records, ending with SCH. The versioned provenance requested in previous R03 is absent.

**Witness:** The README cites 2108.11862v4, 2404.06271v2 and 1511.00520v3. Parsing the manifest gives 19 source records and no BOL, BNM or RSR key; the bibliography has 22 works.

**Exact repair:** Add one source-service record under each existing bibliography key BOL, BNM and RSR, retaining those versions, locators and supported targets. The previous review legally fetched all three; its source verification is carried forward, not repeated. Keep BNM's characteristic-zero restriction and RSR's perfectness restriction. The repair changes the record count from 19 to 22 and the missing-key set from {BOL, BNM, RSR} to ∅, without changing a theorem.

## Previous findings

- R01 — not repaired: The plan still lists all three gaps; README lines 104, 106, 126 and §2.2 use direct contracts and a locally owned adapter. Repeated as this report's R01.
- R02 — repaired: README lines 14, 106 and 128 now cite §§3.12–3.14, explicitly locating normalized plus/Q in §3.14. The new line 182 check gives 2→3→2 over 𝔽₅.
- R03 — not repaired: README lines 1585–1587 still cite BOL, BNM and RSR, while the package source manifest still has 19 records and none of those keys. Repeated as this report's R02.

## Verified sound

:robot: AI review, limited to the requested incremental scope: **7 changed lines since cc121bb** (four insertions and three deletions), all in the README. The head is fc000435408e0575b86722cc51d2f55309b7be21. Suggested.lean, the library pins and the toolchain are unchanged. The outside-folder diff is empty. No pull-request file was changed.

The repository README and CONTRIBUTING rules were read, with main-branch AlgebraicCurves and GeometricCurrents as shape references. The three edited contract sentences and new Check introduce no route restriction, second construction, algorithm, new Lean declaration or upward supplier. The prior review's unchanged mathematics, source sample, library audit and padding probes are carried forward explicitly below.

**Gate and elaboration.** The supplied worker gate passes, including build. An independent gate rerun returned:

```text
gate Polylogarithms: set_option=0 blob=0 latex=0 tex=0 prnum=0 sorry-data=0 sorry-examples=0 residue=0 private-paths=0 imports=0 mathlib-subimports=0 no-import-mathlib=0 lean-lines=0 forbidden=0 dropped=0 readme-ids-missing=0 empty-sections=0 round-labels=0 long-fences=0 layer-ids=0 target-ids=0 depcheck=0 metadata=0 stray-files=0 dirty=0 outside-folder=0 source-material=0 OK
depcheck: 204 roadmaps, 1495 edges, 0 problem(s)
```

There was no UPWARD, CYCLE or moved line. The separately rerun targeted build of `TauCetiRoadmap.Polylogarithms.Suggested` succeeded. Direct Lean elaboration of `TauCetiRoadmap/Polylogarithms/Suggested.lean` succeeded with exactly nine warnings, all for `sorry`. The scratch copy with `#check @name` for all **24 declarations** also elaborated. Their types retain the field, number-field, complete-place enumeration, cycle, nonreal-shape and full discrete-lattice assumptions recorded in the unchanged README and the previous signature audit. No signature or binder changed.

The nine headline theorems remain: Lobachevsky's formula, finite ideal-region volume, signed ideal-tetrahedron volume, Kummer reduction, the complete explicit trilogarithm relations, weight-three existence, weight-three every-family rationality, totally-real even-weight existence, and absolute convergence of the full elliptic kernel. All nine are stated. The unchanged module docstring lists the other headlines and the missing actual Bloch, configuration, K-regulator, current, higher-Chow and curve-reciprocity carriers. The previous one-tactic probes of all nine admitted theorems are carried forward; none of their statements or defining bodies changed, so they were not repeated.

**Changed supplier interfaces and their consumers.** The roadmap service resolved GeneralAlgebraicKTheory and StableHomotopyKTheory at their available heads. The changed citations now point to the actual owner and normalization:

| Interface | Evidence reopened | Result |
| --- | --- | --- |
| Split-exact group completion, projective cofinality, normalized plus/Q | `TauCetiRoadmap/GeneralAlgebraicKTheory/README.md:615`, `:629`, `:645`, `:649` | §§3.12, 3.13 and 3.14 respectively; §3.14 composes inverse transpose with grouplike inversion and preserves unit classes. |
| Connective-spectrum comparison | `TauCetiRoadmap/GeneralAlgebraicKTheory/README.md:1117` | §5.11 compares the S-model and supplied spectrum; the normalization still comes through §§3.12–3.14. |
| Finite-type comparison, block sum, K-spectrum, rational-spectrum decomposition | `TauCetiRoadmap/StableHomotopyKTheory/README.md:1427`, `:1647`, `:2256`, `:2289`, `:2567` | §3.37 is explicitly finite-type; §§4.14, 6.1–6.2 and 7.19 supply the other inputs. No unrestricted H-space result is silently imported. |
| Local consumers | `TauCetiRoadmap/Polylogarithms/README.md:167`, `:169`, `:191`, `:521`, `:548` | §2.2 constructs the rational primitive adapter; §§2.3 and 3.7 use the forward map, and §3.8 uses its inverse after primitive projection. Their normalization agrees with the corrected contract. |
| R01's already specified exports | BorelRegulators §§5.1, 5.3–5.4; MotivicEtaleKTheory §§1.1–1.4, 2.1–2.4, 5.1–5.4, 6.1–6.3 and 7.4 | Reopened the contract witnesses cited in R01; the finite-type limitation is addressed locally, not by the unused gap request. |

Object searches through the roadmap service, readable main/open-head texts and board package evidence resolve the generic plus/Q construction to GeneralAlgebraicKTheory, with the homotopy infrastructure supplied by StableHomotopyKTheory. The added Check consumes that construction; it does not plan another copy. Searches of the pinned Mathlib and Tau Ceti sources for plus-construction, plus/Q and primitive-Hurewicz objects produced no conflicting implementation of this interface. Broader unchanged ownership results are inherited from [the previous review][prev].

**Sources and seeded sample.** The only newly changed sampled passage is the integral normalization Check in §2.2. Its supplier is GeneralAlgebraicKTheory §3.14, and its arithmetic was recomputed below. WEI4 line 493 through line 503, printed pp.11–12, supports the primitive identification used by that subsection. G04 line 1946 through line 1958 and line 2152 through line 2167 were reopened for the downstream class/regulator comparisons; the changed citation does not remove their separate calibration obligations.

The remaining sampled passages are unchanged: §§2.3, 3.3, 3.4, 3.6–3.8, 4.2, 4.6–4.7, 5.12–5.13, 5.15, 5.17–5.18. Their existing adversarial rows are carried forward below, including the nine headlines. Source readings and the raw-alternation proof boundary recorded in the previous review are inherited; this is not a claim to have rerun that full source audit. No new source locator was introduced.

**Pinned declarations.** Mathlib remains at `6b7abb3c7686292736be2955bd3eb9ebf63b456a`; Tau Ceti remains at `a91d3aafa8cd3e6bc33dfde0d7677ed0f1625039`. The previous report's 16 declaration/object groups remain the unchanged library audit. Two denominator safeguards were reopened while comparing the headline signatures: `NumberField.discr_ne_zero`, `Mathlib/NumberTheory/NumberField/Discriminant/Defs.lean:41`, and `ZLattice.covolume_ne_zero` / `covolume_pos`, `Mathlib/Algebra/Module/ZLattice/Covolume.lean:91` / `:98`. Their number-field and full discrete-lattice hypotheses remain present in the acceptance statements.

**Fresh adversarial computations.** These rows cover each changed passage, the normalization's downstream use, and the remaining findings. Multiplication is in 𝔽₅ for the first four rows. Rationalized unit classes are written additively.

| Statement | Instances tried | Values computed on both sides | Result / change |
| --- | --- | --- | --- |
| README line 14: owner of normalized plus/Q | Rank-one unit 2 | Inverse transpose gives 3 because 2·3=1; subsequent inversion gives 2, equal to the determinant unit class | Pass; §3.14 is the correct owner |
| README line 106: compatibility of comparisons | Units 1, 2, 3, 4 | Inverse-transpose values (1,3,2,4); double-inverse values (1,2,3,4), equal to input classes | Pass; sign compensation retained |
| README line 128: positive K-group comparison | K₁(𝔽₅), generator 2 | Powers of 2 are 2,4,3,1; inverse alone gives additive exponent 3 mod 4, corrected comparison gives exponent 1 mod 4 | Pass; comparison preserves the generator |
| README line 182: integral negative control | Unit 2 before/after tensoring with ℚ | Integral outputs 2 versus 3 are unequal; both have order 4 and both rationalized classes equal 0 | Pass; the new Check detects what rationalization erases |
| §§2.2, 3.7–3.8: forward/inverse primitive convention | Unit 2 over ℚ; zero ring | ord₂(2)=1 versus ord₂(1/2)=−1; corrected composite returns 1. Zero ring gives 0↔0 | Pass; no downstream sign change |
| R01: contract minimality and agreement | Three plan slugs; ℚ,n=2; unit 2; prime classes | Plan gap count 3, matching README slug count 0; π²/ζ(2)=6; regulator(2)=log 2; ord_p(q)=δ_pq on primes | Not repaired; remove obsolete gap entries, retain supplied/local targets |
| R02 (previous R03): source records | 22 bibliography works versus manifest | 19 records; set difference exactly {BOL, BNM, RSR}; adding the three existing keys gives 22 records and empty difference | Not repaired; add versioned records |

**Carried-forward adversarial computations.** The following **162 rows** are unchanged computations from [the previous review][prev], cited in every row. Its old plus/Q row and two metadata rows are replaced by the fresh rows above. There are **169 rows in this report**. As before, finite examples test statements and conventions; they are not proofs of the general targets. Notation: e_p=u(p) in rational units of ℚ, G=D(i)=0.915965594…, and Z=ζ(3).

| Statement | Instances tried | Values computed on both sides | Result / change |
| --- | --- | --- | --- |
| Principal polylog definition | n=2; z=0,1,−1 | Integral values 0, π²/6, −π²/12 agree with Li₂ | Pass; endpoint totalization harmless here  Carried from [previous review][prev]. |
| Bernoulli parity definition | n=2,3; z=1,−1 | L₂(1)=L₂(−1)=0; L₃(1)=Z; L₃(−1)=−3Z/4 | Pass; all-real projection would fail  Carried from [previous review][prev]. |
| Bloch–Wigner definition | z=i,−i,2 | D(i)=G, D(−i)=−G; Im Li₂(2)=−π log2 cancels arg(−1)log2 | Pass  Carried from [previous review][prev]. |
| Rational unit definition | 0,1,−1,2,3,5 | u(0)=u(1)=u(−1)=0; valuation matrix on 2,3,5 is I₃ | Pass; zero map excluded  Carried from [previous review][prev]. |
| Five-term predicate | x=2,y=3; b=D on real inputs | Arguments 2,3,3/2,3/4,1/2; all five D-values 0; endpoint b(1)=0 | Pass; x=y and zero denominators excluded  Carried from [previous review][prev]. |
| Cross-ratio convention | (∞,0,1,i), first two swapped | r=i and 1/i=−i; periods G and −G | Pass  Carried from [previous review][prev]. |
| Cube orientation change | q=0,1,2 | J=(1,−1,1); δJ₁=(−∂)(−1)=∂=J₀∂ | Pass  Carried from [previous review][prev]. |
| Selected rows/exponents | (r₁,r₂)=(1,0),(0,1),(1,1) | Odd n: exponents 0,n,n; even n: n,n,2n, from n(N−d) | Pass  Carried from [previous review][prev]. |
| §2.1 descent | [i] and its conjugate | δ[i]=(1−i)∧i=0 rationally; periods G and −G | Pass; nonzero functional  Carried from [previous review][prev]. |
| §2.1 real embedding rows | F=ℚ | Selected complex-row count 0; map lands in ℝ⁰ and is 0 | Pass  Carried from [previous review][prev]. |
| §2.1 integral boundary distinction | w primitive sixth root, 1−w=w⁻¹ | Exterior boundary 0; antisymmetric diagonal −w⊗w has order 2; twice it is 0 | Pass; rationalization kills this discrepancy  Carried from [previous review][prev]. |
| §2.2 projective cocycle | (∞,∞,0,1,i) | Deletion values G, G,0,0,0; signed total G−G=0 | Pass  Carried from [previous review][prev]. |
| §2.2 vector domain | zero vector followed by four generic vectors | Illicit zero extension gives deletion total G rather than 0 | Pass: zero vector is excluded  Carried from [previous review][prev]. |
| §2.2 all-ring Hurewicz | zero ring; ℚ in degree 1 | 0↔0; class 2 maps to e₂ and determinant returns e₂≠0 | Pass  Carried from [previous review][prev]. |
| §2.2 zero component | field K₀=ℤ | H₀ of zero component ℚ; all components would give ℚ[ℤ] | Pass  Carried from [previous review][prev]. |
| §2.2 graded homology | degree-one a,b; degree-two c | a²=b²=0; Δ̄(ab)=a⊗b−b⊗a; Δ̄(c²)=2c⊗c | Pass; neither ungraded symmetric nor all-exterior model works  Carried from [previous review][prev]. |
| §2.2 telescope/finite support | multiply by 2; prime-indexed degree-one space | a↦2a, ab↦4ab; any chain uses finitely many e_p; no finite rank bound on all e_p | Pass; finite-type-only supplier would not suffice  Carried from [previous review][prev]. |
| §2.2 primitive projection | primitive a, product ab, degree 0 | log-convolution projection gives a,0,0; reduced coproduct of ab remains nonzero before projection | Pass  Carried from [previous review][prev]. |
| §2.2 rank filtration/naturality | identity ring map and GL₁→GL₂ unit 2 | e₂↦e₂ in either route; rank-1 image contained in rank-2 image | Pass  Carried from [previous review][prev]. |
| §2.3 trace calibration | X=E₁₂,Y=E₂₁,Z=E₂₂; swap X,Y | AltTr=−3,+3; C₂=−3/2,+3/2; Φ₃=1/2,−1/2 | Pass; source value 1 fails  Carried from [previous review][prev]. |
| §2.3 Borel period conversion | F=ℚ,n=3 | Borel class ℚ×Z/π²; multiplying each row by λπ² gives ℚ×Z | Pass; rational scalar alone is insufficient  Carried from [previous review][prev]. |
| §2.4 metric/density | heights 1,2 and real dilation a=2 | vertical distance log2; coordinate dilation 4 has Jacobian 64 and density multiplier 1/64 | Pass  Carried from [previous review][prev]. |
| §2.4 inversion action | SL₂ matrix (0 −1;1 0), w=0,h=2 | J=4; image (0,1/2); denominator without h² would be 0 | Pass  Carried from [previous review][prev]. |
| §2.4 curvature/orientation | height 1; complex conjugation | sectional curvature −1; conjugation Jacobian −1 and signed volume reverses | Pass  Carried from [previous review][prev]. |
| §2.4 idealRegion definition | z=i and z=2 | c=(1+i)/2, R²=1/2; real shape is ∅ by definition | Pass; no division by Im z on real branch  Carried from [previous review][prev]. |
| §2.4 hemisphere condition | z=i, w=(1+i)/3 | squared minimum height 1/2−1/18=4/9; h≥2/3 | Pass  Carried from [previous review][prev]. |
| §2.4 truncation/exhaustion | point (w,h)=(0,2) | In K₂ and every K_n,n≥2; excluded from K₁; union contains it | Pass  Carried from [previous review][prev]. |
| §2.4 finite-volume headline | height integral h≥h₀>0; cusp r→0 | ∫h₀∞h⁻³dh=1/(2h₀²); h₀²≍r and planar area ≍r dr give O(ε) cusp tail | Pass; total H³ volume still infinite  Carried from [previous review][prev]. |
| §2.4 Lobachevsky normalization | θ=0,π/2,π/4 | Λ=0,0,G/2; ∫₀π log(2sin t)=πlog2−πlog2=0 | Pass  Carried from [previous review][prev]. |
| §2.4 duplication | θ=π/4 | Λ(π/2)=0; 2Λ(π/4)+2Λ(3π/4)=G−G=0 | Pass  Carried from [previous review][prev]. |
| Lobachevsky headline | z=i | Angles π/2,π/4,π/4; D(i)=G=0+G/2+G/2 | Pass  Carried from [previous review][prev]. |
| Ideal-volume headline | z=i,−i | Signed integrals G,−G agree with D; absolute volumes both G | Pass  Carried from [previous review][prev]. |
| Kummer headline | z=i | Three arguments −1,i,i; half-sum (0+G+G)/2=G | Pass  Carried from [previous review][prev]. |
| §2.5 Fourier tail | z=i,N=1 | Three-term approximation 1; error 1−G≈0.0840344≤3/2 | Pass; no divergent geometric tail bound  Carried from [previous review][prev]. |
| §3.1 22-term relation | a=b=c=1 | Raw sum 3[1]+4[−1]; period 3Z+4(−3Z/4)=0 | Pass; endpoint [1] retained  Carried from [previous review][prev]. |
| §3.1 nondegenerate 22-term | a=b=c=2 | Raw coefficients: 3 at 3,3/4,2,1/2,−2; −3 at 3/2,1/4,1; +1 at −8. L₃ sum ≈3.75·10⁻¹¹ versus 0 | Numerical pass; ζ series truncation accounts for residual  Carried from [previous review][prev]. |
| §3.1 denominator restrictions | a=0; a=b=c=2 | First excluded; second A=B=3 and abc=8, all nonzero | Pass  Carried from [previous review][prev]. |
| Trilog relation headline: inversion/three-term | x=2,1/2,1 | L₃(2)=L₃(1/2)=7Z/8; at x=2 sum 7Z/8−3Z/4+7Z/8=Z; x=1 sum Z+0+0=Z | Pass  Carried from [previous review][prev]. |
| §3.2 complex square zero | x=3 | δ²[3]=(−2)∧3∧3=e₂∧e₃∧e₃=0 | Pass  Carried from [previous review][prev]. |
| IsCycle3 universal predicate | [1]; [3] | [1] boundary 0; [3] tested with boundary functional and ord₃ gives 1 | Pass; arbitrary-symbol cycle predicate would fail  Carried from [previous review][prev]. |
| §3.2 weight-four universal predicate | [1]; [2] | First tensor 0; second detected by L₃⊗ord₂ as 7Z/8≠0 | Pass  Carried from [previous review][prev]. |
| §3.3 exterior residue | π∧2∧3; all-unit triple | e₂∧e₃; 0; swapping first two entries negates first answer | Pass  Carried from [previous review][prev]. |
| §3.3 unit-part map | π, π⁻¹, ππ⁻¹ | unit parts 1,1,1 and product 1; declaring all nonunits zero gives 0·0≠1 | Pass  Carried from [previous review][prev]. |
| §3.3 tame comparison | (π,2) | exterior residue u(2); tame=1/2, inverse tame=2 | Pass  Carried from [previous review][prev]. |
| §3.3 shifted residue | n=3, [a]₂⊗t | degree-two residue [a]; target differential −(1−a)∧a; degree-three residue of source differential has same value | Pass  Carried from [previous review][prev]. |
| §3.4 generic configuration | vectors (1,t,t²), t=1,2,3 | determinant 2≠0; repeating t=2 gives determinant 0 | Pass  Carried from [previous review][prev]. |
| §3.4 deletion/projection complex | two deleted indices i<j | coefficients (−1)^(i+j−1) and (−1)^(i+j) sum 0 | Pass  Carried from [previous review][prev]. |
| §3.5 triangle parameter | z=2; z=1 | determinants 2,−2,2,−1 give ratio 2; z=1 makes side points collinear but retains η | Pass  Carried from [previous review][prev]. |
| §3.5 endpoint comparison | η and triangle at z=2 | M₃η=[1] with period Z; triangle image [2] has period 7Z/8 | Pass; zero map excluded  Carried from [previous review][prev]. |
| §3.5 seven-term reduction sign | auxiliary point placed last versus first | Moving it across five entries gives (−1)⁵=−1; corrected deletion sum is −M(C), not +M(C) | Pass; source sign discrepancy identified  Carried from [previous review][prev]. |
| §3.5 r₄ normalization | rows (1,8,2),(7,3,11),(1,3,2),(9,4,3) | Rational prime-wedge calculation: r₄=18 e₅∧e₆₇∧e₁₉₇; f₀=e₅∧e₆₇∧e₁₉₇ | Pass; scalar is 18  Carried from [previous review][prev]. |
| §3.5 lower deletion square | (1,t,t²), t=1,2,3,5,7 | δr₅=36 e₂∧e₃∧e₅; r₄ face values −36,0,0,−72,0, whose alternating sum is 36 | Pass  Carried from [previous review][prev]. |
| §3.5 lower projected squares | interchange common pivots | Summand unchanged, permutation sign −1; each paired contribution a−a=0 | Pass  Carried from [previous review][prev]. |
| §3.5 top scalar | triangle with period 7Z/8 | r₆=18M₃ has period 63Z/4; an uncalibrated M₃ would give 7Z/8 | Pass; raw Alt₆ shortcut not assumed  Carried from [previous review][prev]. |
| §3.6 Gale matrix | (I₂,B), B=((1,1),(2,3)) | (I₂,B)(−B;I₂)=0₂; applying kernel construction twice restores the rank-two row space | Pass  Carried from [previous review][prev]. |
| §3.6 geometric duality | class c and its dual | M₃(c*)=−M₃(c); sum 0; Alt₆M₃=720M₃ by 720 signed terms | Pass; invariance would have wrong sign  Carried from [previous review][prev]. |
| §3.6 top cohomology | (1−x)∧x∧y | Class is 0 in Milnor quotient and is the boundary of [x]₂⊗y | Pass in both image/quotient directions  Carried from [previous review][prev]. |
| §3.6 top norm | quadratic extension, nonzero base Milnor triple | N res gives 2 times triple; norming each wedge factor gives 8 times triple | Pass; use a rational-function field, not rational K₃ of a number field  Carried from [previous review][prev]. |
| §3.7 rank filtration | rank-two class; stabilized rank-three class | First image 0; second image unchanged at ranks 3 and 4 | Pass; no rank/Adams identification inferred  Carried from [previous review][prev]. |
| §3.7 period exponents | arbitrary signature | (−2r₁−5r₂)+2(r₁+r₂)=−3r₂ on both calibrated determinant expressions | Pass  Carried from [previous review][prev]. |
| Weight-three existence headline | ℚ,[1] and ℚ(i),[1] | Z₃=Z and π³Z/2=16ζ_ℚ(i)(3) respectively | Pass; both nonzero  Carried from [previous review][prev]. |
| Weight-three every-family headline | zero family; twice [1] over ℚ | Z₃=0=0·Z; 2Z=2·Z | Pass; nonzero scalar would be false for first  Carried from [previous review][prev]. |
| §3.8 primitive lift pairing | product ab added to primitive c | Projection(c+ab)=c; primitive Borel pairing gives same value on both | Pass; does not by itself prove cycle lifting  Carried from [previous review][prev]. |
| §4.1 relation specialization | α=[t]₂+[1−t]₂ | δα=(1−t)∧t+t∧(1−t)=0; endpoint difference 0 | Pass; unrestricted [f(1)]−[f(0)] is not allowed  Carried from [previous review][prev]. |
| §4.1 projective specialization | f=t,1/t,1+t at t=0 | symbols specialize to [0]=0,[∞]=0,[1]; odd endpoint need not vanish | Pass  Carried from [previous review][prev]. |
| §4.2 inversion complex | n=2,3; x and x⁻¹ | B₂ signs −; B₃ signs +; u(x⁻¹)=−u(x), so both boundary comparisons agree | Pass  Carried from [previous review][prev]. |
| §4.2 five-term/inductive comparison | specialized five-term R(tx,ty) at t=0 | arguments 0,0,y/x,y/x,1 give [1]; rational relation [1]=0 in weight two | Pass; supplier §4.21 covers this  Carried from [previous review][prev]. |
| §4.3 cycle constancy | normalized three-term weight 3; raw [t] | First period 0 at every specialization; raw [t] has values 0 and Z at 0 and 1 and is not a cycle | Pass  Carried from [previous review][prev]. |
| §4.3 endpoint continuity | pole specialization; constant [1] | Lₙ(∞)=0; L₃([1])=Z on both fibers | Pass  Carried from [previous review][prev]. |
| §4.4 periodMatrix/normalization | ℚ, one column 2[1]; duplicate columns | Matrix entry 2Z, normalized determinant 2Z; duplicate-column determinant 0 | Pass  Carried from [previous review][prev]. |
| §4.4 rational column change | A=diag(2,3); swap columns | det A=6; swapping gives factor −1; both match determinant multilinearity | Pass  Carried from [previous review][prev]. |
| §4.4 embedding representative | conjugate one row | Even weight multiplier −1; odd weight +1, from Lₙ(z̄)=(−1)^(n−1)Lₙ(z) | Pass  Carried from [previous review][prev]. |
| §4.4 general total definition | n=3, artificial 2-row index over ℚ | Natural exponent 3·(1−2)=0; intended theorem has 1 row and exponent 0; artificial index is outside its signature | Pass; no unintended general arithmetic claim  Carried from [previous review][prev]. |
| §4.5 explicit raw cycles | [1], [2], [x]+[x⁻¹] | Boundaries 0, nonzero detected as 7Z/8, and [x]₃⊗(u(x)−u(x))=0 | Pass  Carried from [previous review][prev]. |
| §4.5 forward presentation map | explicit boundary 0 | (p₃⊗id)(0)=0; period stays L₄ of same raw symbols | Pass; no converse claimed  Carried from [previous review][prev]. |
| §4.6 obstruction nonzero | C=D=E=ℚ,J=0,p=a=id,b=q=0,y=1 | T/H=ℚ; ω(1)=1; ker a={0}, so no cycle lift of 1 | Pass; surjectivity of p alone insufficient  Carried from [previous review][prev]. |
| §4.6 obstruction zero with changed lift | C=ℚ²,p(x,y)=x,a(x,y)=y,J=0 | a(ker p)=ℚ; obstruction quotient 0; (x,0) lifts every x as a cycle | Pass  Carried from [previous review][prev]. |
| §4.6 injective target | q=id and b(y)=0 | q(a(x))=0 forces a(x)=0; ω(y)=0 | Pass  Carried from [previous review][prev]. |
| §4.6 weight-three transport | inductive [1] | Explicit lift [1] has boundary 0 and period Z on both sides | Pass  Carried from [previous review][prev]. |
| Totally-real even headline | ℚ,n=2,4; ℚ(√2),n=2 | π²=6ζ(2); π⁴=90ζ(4); π⁴/√8=24ζ_ℚ(√2)(2) | Pass; cannot normalize empty columns to q=1  Carried from [previous review][prev]. |
| §4.7 finite polynomial residues | t−a; t²+1 over ℚ | Residue fields ℚ and ℚ(i); constant complex residues 0; second field cannot be replaced by ℚ | Pass  Carried from [previous review][prev]. |
| §4.7 finite/projective distinction | t∧2∧3 | Residues at 0,∞ are e₂∧e₃ and −e₂∧e₃; finite-place target keeps only first | Pass  Carried from [previous review][prev]. |
| §4.7 Rudenko presentation | 𝔽₂,𝔽₃ | U=0 in both; extended B₂=0 rationally; admissible-pair P(𝔽₃)⊗ℚ=ℚ instead | Pass; small-field adapter essential  Carried from [previous review][prev]. |
| §4.7 canonical truncation | n=3, [3]⊗u(3), [3]⊗u(5) | First is killed by incoming relation; second differential evaluates as det I₃=1 | Pass; stupid truncation retains erroneous first vector  Carried from [previous review][prev]. |
| §4.7 next-to-Milnor exactness | irreducible t²+1; residue [i] | Target period G≠0; exactness requests one nonzero finite residue, all others 0 | Consistent nonzero test; source theorem supplies surjectivity  Carried from [previous review][prev]. |
| §4.7 next-to-Milnor norm | ℚ(i)⊂ℚ(i,√2) | N res[i]=2[i], periods 2G; identity gives [i], period G | Pass  Carried from [previous review][prev]. |
| §4.7 normalized homotopy signs | m=2,a=i; m=3,a=3,c=5 | Values −[i] and [3]⊗u(5); latter shifted differential −e₂∧e₃∧e₅ equals residue, valuation −1 | Pass  Carried from [previous review][prev]. |
| §4.7 degree law/towers | t=s²; degrees 2 then 3 | h of restricted class =2h; tower =6h in both routes; identity =h | Pass  Carried from [previous review][prev]. |
| §4.7 finite generation | union of successive square-root extensions | Finite stages degrees 2ᴺ; infinitely many t=0 branches all have v(t)=1 | Pass: excluded by IsFunctionField, despite transcendence degree 1  Carried from [previous review][prev]. |
| §4.7 motivic degree | m=2,3,4 | K-index 2m−(m−1)=3,4,5; target cohomology degree 1,2,3 | Pass; retains Adams weight m  Carried from [previous review][prev]. |
| §4.7 conditional whole-complex transfer | identity and tower 2·3 | Required operators id and 6id; independent wedge norms give 8id at degree-three quadratic test | Pass as conditional specification; no unconditional use  Carried from [previous review][prev]. |
| §5.1 degree-current adapter | m=2,q=0,1,2,3,−1 | Test degrees 2,1,0; last two spaces 0, not test-degree-zero duals | Pass  Carried from [previous review][prev]. |
| §5.1 current differential | scalar f and test form φ | d[f](φ)=−∫f dφ=∫df∧φ; dδ₀(φ)=−φ′(0) | Pass  Carried from [previous review][prev]. |
| §5.1 LF topology | fixed bumps escaping compact sets | Every fixed-compact seminorm eventually 0; supports never lie in one compact, so no LF convergence | Pass; compact-open substitute fails  Carried from [previous review][prev]. |
| §5.1 arbitrary current product | mollified δ at scale ε in dimension m | ∫δ_ε²=C ε⁻ᵐ versus no finite canonical δ² | Pass: such product not supplied  Carried from [previous review][prev]. |
| §5.2 analytic multiplicities | point, double line, degree-two cover | Currents δ_x,2[L],2[Y]; birational resolution gives [Y] | Pass  Carried from [previous review][prev]. |
| §5.2 Poincaré–Lelong | f=z,z², nonzero constant | ddᶜlog norms give δ₀,2δ₀,0; −log gives negatives | Pass  Carried from [previous review][prev]. |
| §5.2 current resolutions | contractible chart | H⁰=constants (or holomorphic functions); positive local cohomology 0 | Pass; degree-zero kernel not discarded  Carried from [previous review][prev]. |
| §5.2 BFT dictionary | complex curve; q=1,2 | Point δ unchanged; ordinary one-form factor −(2πi)⁻¹, two-form +(2πi)⁻¹ | Pass  Carried from [previous review][prev]. |
| §5.2 top Deligne differential | p=1,g=−log|z| | d_D[g]_BFT=−δ₀; ordinary d[g]=[−Re(dz/z)] with no δ₀ | Pass  Carried from [previous review][prev]. |
| §5.2 support fiber | Z=∅ and Z=X | fib(id) has zero cohomology; fib(C→0)=C; raw boundary(log|t|) has coefficient −1 | Pass  Carried from [previous review][prev]. |
| §5.2 shifted comparison complex | arbitrary (a₁,a₂,a₃) | d²=(0,dg₁a₁−g₁da₁,−dρa₁+ρda₁)=(0,0,0) | Pass  Carried from [previous review][prev]. |
| §5.2 β/cycle inclusions | α and closed cycle Z | β(α)=(0,0,α); cycle=(0,cl Z,0); their differentials are β(dα),0 | Pass  Carried from [previous review][prev]. |
| §5.3 admissible locus | zero cycle; component contained in face | First has empty support and face 0; second has excess intersection dimension and is excluded | Pass  Carried from [previous review][prev]. |
| §5.3 Chow incidence | two points colliding | Generic degree 2; special cycle 2[x]; reduced support alone gives 1[x] | Pass; multiplicities owned here  Carried from [previous review][prev]. |
| §5.3 face/projection adapters | double transverse component; degree-d finite projection | Face multiplicity 2; pushforward multiplicity d; projection through its center excluded | Pass  Carried from [previous review][prev]. |
| §5.3 Green coefficient condition | α=(z₁+z̄₁)i dz₂∧dz̄₂ | ∂∂̄α=0 but ∂α=i dz₁∧dz₂∧dz̄₂≠0 and ∂̄α≠0 | Pass: separately closed condition retained  Carried from [previous review][prev]. |
| §5.3 logarithmic integrability | log r and r⁻² on a complex disc | ∫₀ε r|log r|dr finite; ∫₀ε r⁻¹dr infinite | Pass  Carried from [previous review][prev]. |
| §5.4 logarithmic r forms | one entry f; two entries f,g | r₀=log|f|; r₁=i(log|f|darg g−log|g|darg f) | Pass; real/Tate distinction retained  Carried from [previous review][prev]. |
| §5.4 r₂ alternation | transposition and repeated entries | Each swapped term changes sign; r₂(f,f,g)=0 | Pass  Carried from [previous review][prev]. |
| §5.4 residue factor | one simple zero | ∮darg z=2π; current derivative 2πδ₀; residue factor is not 1 | Pass  Carried from [previous review][prev]. |
| §5.5 raw complex | n=1 | Functions in degree 1; closed (1,1) currents degree 2; d log|z|=2πiδ₀ in raw convention | Pass  Carried from [previous review][prev]. |
| §5.5 simplex map degree | i=0 and i=1 | P at 0=(2πi)ⁿ[Y]; at 1 ordinary current degree 2n−2, cochain degree 2n−1 | Pass; no r₋₁  Carried from [previous review][prev]. |
| §5.5 structural base change | Spec ℚ(i), Spec ℚ(√2) | Complex base has 2 points in each case; real base Spec ℂ versus two Spec ℝ | Pass; Weil restriction of Spec F would have 1 point  Carried from [previous review][prev]. |
| §5.7 Wang forms | m=0,1,2 | T₀=1,T₁=u,T₂=u(∂v−∂̄v)−v(∂u−∂̄u); exchange u,v gives −T₂ | Pass  Carried from [previous review][prev]. |
| §5.7 Wang/r dictionary | u_j=−log|f_j| | T₁=−r₀; T₂=r₁; general factor (−1)ᵐ | Pass  Carried from [previous review][prev]. |
| §5.7 boundary current | W₁=−log|z| | d_D[W₁]=−δ₀+δ∞ | Pass  Carried from [previous review][prev]. |
| §5.8 cubical map | zero cube and one cube | Degree 2p and 2p−1; degenerate logarithm 0 makes positive cube regulator 0 | Pass  Carried from [previous review][prev]. |
| §5.9 integration comparison | m=0, W₀=1 | φ(α)=[α]; cycle part maps to P_c(Z); β part maps to [α] | Pass  Carried from [previous review][prev]. |
| §5.9 Green/Wang identity | m=0 critical; r=1,2 subcritical | Critical d_D[g]=[ω]−δ_Z; subcritical face coefficients +1,−1 | Pass  Carried from [previous review][prev]. |
| §5.9 ψ sign | principal divisor, Green g=−log|f| | d_Dg=−δ_div; minus Green term cancels the cycle contribution | Pass  Carried from [previous review][prev]. |
| §5.10 mixed degree | (n,m)=(1,0),(0,1),(1,1) | Degrees 2p−1,2p−1,2p−2; printed 2p−m fails first axis | Pass with source correction  Carried from [previous review][prev]. |
| §5.10 mixed differential | n=0 versus n=1 | Simplex coefficients +1,−1; two routes around a square cancel +1−1=0 | Pass  Carried from [previous review][prev]. |
| §5.10 hyperplane change | z₀↦−z₀ | −log|−f|=−log|f|; derivatives equal; scale 2 would add −log2 | Pass  Carried from [previous review][prev]. |
| §5.11 Chow-form arity | (q,p)=(1,0),(2,1),(3,1) | r-indices 0,2,3; output ordinary degrees 0,0,1 | Pass  Carried from [previous review][prev]. |
| §5.11 period factor | q=2,p=1 | i⁻¹(2πi)⁻¹∫r₂=−∫r₂/(2π)=P₂ | Pass  Carried from [previous review][prev]. |
| §5.11 resolved family | double component; node with two branches | P(2Y)=2P(Y); node current is sum of two branch currents | Pass; support reduction would fail  Carried from [previous review][prev]. |
| §5.11 face coefficient | adjacent fiber dimensions p,p−1 | (2πi)⁻ᵖ·2πi=(2πi)⁻⁽ᵖ⁻¹⁾ | Pass  Carried from [previous review][prev]. |
| §5.12 Arakelov cone degree | cycle weight n,index i=0 | Cohomological degree 2n, not 0; n=1 gives degree 2 | Pass  Carried from [previous review][prev]. |
| §5.12 principal Green relation | div f with g=−log|f| | ddᶜg+[div f]=−[div f]+[div f]=0 | Pass  Carried from [previous review][prev]. |
| §5.13 tame reciprocity | f=t,g=t−a on ℙ¹ | Tame values at 0,a,∞: (−a)⁻¹,a,−1; product 1 | Pass; missing infinity gives −1  Carried from [previous review][prev]. |
| §5.13 η residue | π=z, constant unit c | η(z,c)=−log|c|darg z; derivative −2πlog|c|δ₀=2πlog|c⁻¹|δ₀ | Pass  Carried from [previous review][prev]. |
| §5.13 unramified fiber | class with nonzero residue versus residue 0 | First cannot lift to fiber; second meets kernel condition; zero class maps 0→0 | Pass  Carried from [previous review][prev]. |
| §5.14 Chow Steinberg identity | f=t,g=t−i | Only nonzero D contribution is G at i; ∫r₂=−2πG, so P₂=G | Pass  Carried from [previous review][prev]. |
| §5.14 constant-factor integral | constant c and proper curve | Integrated P₂(c,f,g)=0; local r₂ need not be 0 | Pass; local constant erasure would be false  Carried from [previous review][prev]. |
| §5.14 first reciprocity triangle | t∧(t−1)∧(t−3) | Total residue 3∧(−2)=−e₂∧e₃≠0; δ(−[3]) gives same value | Pass; Bloch-kernel target and zero h fail  Carried from [previous review][prev]. |
| §5.14 second triangle | (1−t)∧t∧(t−a) | h gives [a]; symbol residue gives [a]; a=i has period G | Pass  Carried from [previous review][prev]. |
| §5.14 BOL sign transport | a=i | P_BOL=−G, transported P₂=G; h unchanged | Pass  Carried from [previous review][prev]. |
| §5.14 uniqueness/degree | t=s²; identity | h pullback values 2[i] and [i]; periods 2G,G | Pass; individual-triangle uniqueness not asserted  Carried from [previous review][prev]. |
| §5.15 rational cross-ratio formula | normalized four points ∞,0,1,i | Ratio i; symbol [i]; period G, with opposite ordering −G | Pass  Carried from [previous review][prev]. |
| §5.15 family/cover descent | constant parameter; degree-two cover | Family value constant D(a); pullback period 2D(a), rational division by 2 returns D(a) | Pass  Carried from [previous review][prev]. |
| §5.15 full regulator | pair of independent complex-place coordinates | Coordinate vectors (1,0),(0,1); first projection kills second, full pair does not | Pass; only full regulator injectivity is consumed  Carried from [previous review][prev]. |
| §5.16 line/chord presentation | concurrent line intersections; double intersection | Zero/endpoint cross-ratio contributes 0; a doubled intersection contributes twice its symbol | Pass; general five-term descent remains explicit work  Carried from [previous review][prev]. |
| §5.16 analytic normalization | normalized Steinberg line triple | h_E and P₂ both use negative integral normalization; reversing one gives −D(a) versus D(a) | Pass on the normalized case only  Carried from [previous review][prev]. |
| §5.17 diagonal identity | f=1/2,v=1 | −dL₃=−(4/3)log²2≈−0.640604019; ρ₂([f]⊗f) has exactly this value | Pass  Carried from [previous review][prev]. |
| §5.17 constant second argument | f=1/2,v=1,g=c>0 | α(1−f,f)=−4log2; ρ₂=(4/3)log2 log c, nonzero for c=2 | Pass; declaring it zero fails  Carried from [previous review][prev]. |
| §5.17 five-term descent | five-term boundary image | D-sum=0 and exterior boundary=0 give separately zero D and α contributions | Pass; one identity alone insufficient  Carried from [previous review][prev]. |
| §5.17 Adams comparison | m=3 | 2m−2=4, weight 3; no assertion that other K₄ weights map isomorphically | Pass  Carried from [previous review][prev]. |
| §5.18 character | square lattice, γ=1,i; quarter points | χ₁(i/4)=i; χᵢ(1/4)=−i; χ₀=1; all norms 1 | Pass  Carried from [previous review][prev]. |
| §5.18 Haar/derivative adapter | γ=1; z variable, area A | ∫₀¹e²πⁱʸdy=0; ∂χ₁=(π/A)χ₁dz; constant integral 1 | Pass  Carried from [previous review][prev]. |
| §5.18 summand definition | triad (1,i,−1−i), x=y=z=0 | Summand (−1+2i)/2; norm √5/2≈1.118033989; swapped last frequencies give its negative | Pass  Carried from [previous review][prev]. |
| Elliptic summability headline | largest dyadic scale 2ʲ | Shell bound C(j+1)2⁻ʲ; Σ(j+1)2⁻ʲ=4; zero frequencies excluded | Pass; no divisor hypothesis needed  Carried from [previous review][prev]. |
| §5.18 translation/antisymmetry | simultaneous translation; y=z | Multiplier χ_(γ₁+γ₂+γ₃)=χ₀=1; paired sum K(x,y,y)=0 | Pass  Carried from [previous review][prev]. |
| §5.18 scale | λ=2 | Numerator ×2, denominator ×64, coefficient ×1/32; area ×4 | Pass  Carried from [previous review][prev]. |
| §5.18 Fourier pairing constants | one nonzero triad | (−A/(2π))³·(π/A)·(−2iA)=iA³/(4π²); multiplying −4/3 gives −iA³/(3π²) | Pass before logarithmic limit  Carried from [previous review][prev]. |
| §5.18 mean terms | log|g| replaced by log|g|+c | Individual pairing gains c∫α∧ω; only full symbol-cycle cancellation makes summed gain 0 | Pass; divisor-only condition insufficient  Carried from [previous review][prev]. |
| §6.1 completed units | ℚ at p=2,3 | Rational unit rank 0; empty determinant 1; −1 survives completed 2-units but log is 0 | Pass  Carried from [previous review][prev]. |
| §6.1 logarithm depth | ℚ₂, u=−1 and 5 | log(−1)=0 at depth 1; injection requires i>1; v₂(log5)=v₂(5−1)=2 | Pass  Carried from [previous review][prev]. |
| §6.1 transposed matrix | non-CM cubic signature (1,1) | Supplier size 3×1; consumer transpose 1×3; full rank 1 equivalent, single chosen minor not prescribed | Pass  Carried from [previous review][prev]. |
| §6.1 split-prime check | ℚ(√2),p=7 | 10²≡2 mod49; ε≡11; ε⁶≡15 mod49, valuation of ε⁶−1 is 1 | Pass  Carried from [previous review][prev]. |
| §6.2 exact derivative | z=1/2,2,−1; v=1 | Values (4/3)log²2,−(1/3)log²2,0; numerically 0.640604019,−0.160151005,0 | Pass  Carried from [previous review][prev]. |
| §6.2 angular/radial derivative | z=i; v=i and v=−1 | Radial derivative 0; angular derivative −G | Pass; dropping the D-term fails  Carried from [previous review][prev]. |

## Not verifiable

- No source needed for the changed passages was inaccessible. No source was fetched or manifest edited in this round. Previous legal verification of BOL, BNM and RSR is inherited; the missing manifest records remain R02.
- The previous review's proof limitations remain: G95 §9.2 does not display the complete all-configuration higher-differential calculation; the complete Borel calibration, raw triple-ratio quotient conversion, positive-characteristic elliptic descent and common Fourier regularization are not established by these finite checks. Their unchanged local proof obligations remain explicit.
- General motivic/whole-complex transfer and higher reciprocity conjectures remain conjectures. The characteristic-zero next-to-Milnor results do not prove them.
- This was an incremental review, not a fresh audit of every unchanged source locator or every unchanged supplier. Ownership against other open work without supplied readable files was not independently checked. The new searches concern the corrected plus/Q interface; unchanged ownership evidence is attributed to the previous report.

## Source issues

The following nine entries are carried forward from [the previous review][prev]; no additional source mistake was found in the changed passages.

- **Error** in G04 at Theorem 5.7 proof, printed p.45 (G04 lines 1934–1978): the source says the displayed half-alternating trace evaluates to one on its matrix-unit triple; it should be −3/2 for unnormalized alternation; affects the proof.
- **Misprint** in G95 at §3, relation R3, printed p.263 (G95 lines 2164–2167): the source says the incidence relation includes an additional endpoint term; it should be the relation of Definition 1.5 without that extra term; affects a stated result.
- **Misprint** in G95 at §5.2 case (e), printed p.287 (G95 lines 2836–2840): the source says the last-position auxiliary-point reduction has coefficients (−1)^i; it should be their negatives, or place the auxiliary point first; affects the proof.
- **Gap** in G95 at §9.2, printed pp.310–311 (G95 lines 3472–3503): the source says the all-configuration spectral sequence supplies the required cycle lift; it should justify the higher differentials and degenerate-row contributions; affects the proof.
- **Error** in GR at Theorems 1.1–1.2, printed pp.3,5 (GR lines 114–117,196–200): the source says the determinant formula is an exact equality for every number field; it should allow a nonzero rational factor in rank zero, where ℚ requires the factor 1/90; affects a stated result.
- **Misprint** in BFT at equation (6.15), printed p.20 (BFT line 1001): the source says the mixed regulator has degree 2p−m; it should be 2p−n−m; affects a stated result.
- **Error** in G04 at Lemma 6.9, printed p.57 (G04 lines 2537–2553): the source says the scalar integral has the residue sum without its 2π factor; it should retain 2π consistently with the displayed darg-current identity; affects a stated result.
- **Gap** in RSR at Corollary 1.5 and its justification, printed pp.6–7 (RSR lines 236–272): the source says its reciprocity construction gives the analytic volume comparison; it should establish the functorial compatibility required for that comparison, identified in BOL Remark 1.12; affects the proof.
- **Error** in RSR at Corollary 1.5, printed pp.6–7 (RSR lines 243–258): the source says real hyperbolic volume is 1/(2πi) times its real-valued r₂ integral; it should use a compatible real prefactor or explicitly change the r₂ convention; affects a stated result.

[prev]: PRREVIEW-Polylogarithms~1.md
