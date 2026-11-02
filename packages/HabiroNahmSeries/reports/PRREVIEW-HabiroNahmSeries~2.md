# Review of HabiroNahmSeries (pull request #1427 at d526e66)

**Verdict:** accepted

No findings remain in this incremental re-review. All four previous findings are repaired. Acceptance means ready for human final approval, conditional on the remaining explicitly declared supplier contracts; it is not approval or merger of the pull request.

## Previous findings

- R01 — repaired: `TauCetiRoadmap/HabiroNahmSeries/README.md:151,1636,1850` now consumes PadicHodgeRegulators §4.7 and §§5.6–5.9. The completed source, p>3, unramified finite étale coefficients, admissible roots, normalization, coefficient maps and products are retained.
- R02 — repaired: `TauCetiRoadmap/HabiroNahmSeries/README.md:664,1392–1402,1438` separates the polynomial auxiliary-parameter identity from the filtered hG shift, proves domain preservation and continuity, and excludes the divergent constant translation. The added coefficients agree.
- R03 — repaired: `TauCetiRoadmap/HabiroNahmSeries/README.md:49,531–539` derives the finite-interval formula using pinned Bernoulli identities and piecewise integration by parts, states the signed integral remainder, and assigns the Pochhammer citations to their actual application.
- R04 — repaired: `TauCetiRoadmap/HabiroNahmSeries/README.md:13` now cites ComputationalNumberTheory §3.23, which contains the additive-group saturation criterion. Its distinction from the ring-map criterion, and the separate §4.19a Hurwitz remainder comparison, remain correct.

## Verified sound

This is an incremental re-review of 53 changed lines since 7d3aedd: 41 insertions and 12 deletions, all in `TauCetiRoadmap/HabiroNahmSeries/README.md`. The exact head is d526e66e00e4061a57448a51791c60640c9c7d0b. `Suggested.lean` is unchanged; the diff outside the roadmap folder is empty and the worktree remains clean. No reviewed file was edited.

The changed passages and their consumers were checked in §§2.2–2.4, 5.6–5.7 and 6.2–6.6, together with the changed scope and supplier contracts. The full first-round review is [PRREVIEW-HabiroNahmSeries~1][r1]. Unchanged mathematical and source checks below are explicitly carried from that report, rather than represented as newly performed.

### Gate, dependencies and Lean

The repeated gate returned:

```text
gate HabiroNahmSeries: set_option=0 blob=0 latex=0 tex=0 prnum=0 sorry-data=0 sorry-examples=0 residue=0 private-paths=0 imports=0 mathlib-subimports=0 no-import-mathlib=0 lean-lines=0 forbidden=0 dropped=0 readme-ids-missing=0 empty-sections=0 round-labels=0 long-fences=0 layer-ids=0 target-ids=0 depcheck=0 metadata=0 stray-files=0 dirty=0 outside-folder=0 source-material=0 OK
```

The independently repeated dependency check returned exactly:

```text
depcheck: 204 roadmaps, 1495 edges, 0 problem(s)
```

There was no UPWARD, CYCLE or moved line. Every `*Needs:*` line and layer dependency paragraph was read; the additions use the earlier polynomial Gaussian construction and pinned Bernoulli/integration APIs. The local-regulator edges point to the existing earlier owner. The Gaussian regularity and normalization obligations remain prerequisites of the later uniqueness/transfer steps, not conclusions assumed to prove themselves.

`lake build TauCetiRoadmap.HabiroNahmSeries.Suggested` succeeded. Direct `lake env lean` elaboration of the requested module also succeeded, with exactly seven `sorry` warnings and no other warnings. One scratch copy appended `#check @name` for all 16 declarations and elaborated successfully. Comparison with the worker's signatures and the README found no lost binder and no changed generality: positivity remains in the uniqueness theorem and in `NahmDatum`; the Jacobian theorem retains both vanishing and nonzero determinant; convergence retains Im τ>0; both formal matrix identities retain symmetry; the Gauss theorem retains m>0.

The seven unchanged statable headlines are positive Nahm-solution uniqueness, algebraicity at a nonsingular polynomial zero, summability, holomorphy, the full-column q-difference identity, the general symmetrised q-binomial product, and the quadratic Gauss norm. All seven are present. The nine supporting declarations still have real bodies. The docstring still identifies the missing radial/coefficient-comparison, integral Bloch, plethystic/weighted-Gaussian, descendant, K₃-Habiro-module and Habiro–Hodge carriers for the other headlines. The newly explicit Gaussian shift laws are API targets of that missing weighted construction, not substitute headline statements. The first review's one-tactic padding probes for all seven unchanged theorem bodies are carried forward; no Lean declaration was added or modified.

### Changed mathematics and source checks

For Euler–Maclaurin, integration by parts on each polynomial piece gives the first boundary term B₁(θ)(f(a+M)−f(a)). Each further integration changes the remainder sign. Reflection B_r(1−θ)=(−1)^rB_r(θ) produces the displayed boundary corrections; hence the final kernel has sign (−1)^(J+1). Periodic B_J is continuous for J≥2, so the endpoint limits θ→0 and θ→1 preserve the remainder. Its supremum bound is independent of θ. These arguments also work componentwise for complex f and at M=0. Exact integration of the kernel was tested on 1,620 combinations: J=2,…,6; monomials of degree 0,…,8; a=−1,0,2/3; M=0,1,2; θ=0,1/4,1/2,1. Every exact remainder gave the sample sum.

For the Gaussian completion, a surviving contraction of w^αh^b has h-degree b+|α|/2, exactly its weight. Finite support below each weight bound therefore gives finite contractions at each output degree, including monomials with negative h-exponent. Under w↦w+hG the cubic/h generators expand into the four stated positive-weight types. The map preserves filtration and has inverse w↦w−hG. Multiplication by the compensating exponential is defined in the same completion. Wick pairing proves the identity on monomials, and continuity extends it to the completion over every commutative ℚ-algebra, including nonreduced ones. The unscaled polynomial law uses a separate formal parameter u; it does not assert evaluation at u=1. The downstream normalization target now explicitly invokes the hG law, while mixed regularity is still a separate obligation.

For the regulator, the supplied map is D_L=−c₂·(Chern-class/Bloch–Kato composite), equivalently c₂ times the Chern-character composite. PadicHodgeRegulators §4.7 retains the unit calibration of c₂; §§5.6–5.9 retain completion and the exclusion of 1 in every root component. Thus the new text neither replaces the completed group by K₃(L)⊗ℤ_p nor discards a normalization constant. At p=5 the residue formula gives values 1,4,0 at residues 2,3,4, respectively, and therefore regulator residues 25,100,0 modulo 125. The new product and zero-algebra Checks agree with the supplier.

| Passage checked this round | Exact source evidence | Resolution |
|---|---|---|
| §2.2 general remainder and its Pochhammer use | GZ line 330, §4.1, printed pp.6–7; VZ line 106, Lemma 2.2, printed pp.2–3; pinned Bernoulli and integration declarations below | The sources concern the product expansion. The general finite-interval theorem is now explicitly derived from its actual inputs. |
| §§2.4,5.6 polynomial and filtered affine laws | GSW line 417, (20)–(21), p.9; GSW line 459, Lemma 3.1(b), (23), p.10; GSWZ line 1442, (110)–(111), p.28 | Replacing w by √h·v matches the hG shift and positive scalar exponential. Coefficientwise contraction supplies the general ℚ-algebra version without an analytic positivity hypothesis. |
| §5.6 iterated contraction | GSW line 464, Lemma 3.1(c), p.10; Aarhus line 457, Proposition 2.13, printed pp.8–9 | The first block and full matrix must both be invertible; the repair preserves this condition. |
| Supplier contract and §6.3 | GSWZ line 1965, (174), p.37; line 1975, Lemma 3.1, p.38; line 1995, Proposition 3.2, p.38; line 2015, Theorem 9, p.39 | The p>3 unramified completed lattice is the supplier target actually consumed. The supplier's admissible-root domain is more explicit than the source's abbreviated root notation. |

Of this round's 15 seeded targets, §2.2 intersects the changed source mathematics and was checked afresh. The unchanged §§2.3,5.7,6.2,6.6,7.1,7.2,7.5 were also traced as consumers of the repaired Gaussian/regulator interfaces: their coefficient, root-order, full-algebra and nonzero-constant restrictions remain intact. For §§1.1,1.2,2.7,3.1,4.3,5.3,5.4, the source and computed checks are carried from [r1]. The carried table below covers all 15 targets and the seven headline theorems. No changed passage introduces an unverified locator or requires a new source fetch.

### Pinned declarations opened

The pins remain Mathlib `6b7abb3c7686292736be2955bd3eb9ebf63b456a` and Tau Ceti `a91d3aafa8cd3e6bc33dfde0d7677ed0f1625039`. Paths here are relative to those libraries. These eight declarations were opened for the new proof route; the unchanged library audit is recorded in [r1].

| Declaration | File and line at the pin | Content checked |
|---|---|---|
| `Polynomial.bernoulli` | `Mathlib/NumberTheory/BernoulliPolynomials.lean:48` | Rational polynomial definition with the negative B₁ convention. |
| `Polynomial.bernoulli_one` | `Mathlib/NumberTheory/BernoulliPolynomials.lean:75` | B₁(X)=X−1/2. |
| `Polynomial.bernoulli_eval_zero` | `Mathlib/NumberTheory/BernoulliPolynomials.lean:79` | B_n(0) is the negative-convention Bernoulli number. |
| `Polynomial.bernoulli_eval_one` | `Mathlib/NumberTheory/BernoulliPolynomials.lean:84` | B_n(1) uses the positive convention, so equality with B_n(0) needs n≠1. |
| `Polynomial.derivative_bernoulli` | `Mathlib/NumberTheory/BernoulliPolynomials.lean:117` | B_k′=kB_(k−1), including the harmless k=0 totalized case. |
| `Polynomial.bernoulli_comp_one_sub_X` | `Mathlib/NumberTheory/BernoulliPolynomials.lean:235` | Polynomial reflection identity, which transports to ℝ or ℂ. |
| `bernoulli_eq_bernoulli'_of_ne_one` | `Mathlib/NumberTheory/Bernoulli.lean:214` | Endpoint conventions coincide for r≥2. |
| `intervalIntegral.integral_mul_deriv_eq_deriv_mul_of_hasDerivAt` | `Mathlib/MeasureTheory/Integral/IntervalIntegral/IntegrationByParts.lean:110` | Continuity on the closed piece, derivatives in its interior, and interval-integrable derivatives; the ambient complete real normed algebra includes ℂ. |

### Supplier resolution and ownership

The citation service was rerun against main fa41b37 and the indexed open heads: no wholly absent roadmap or Lean name was reported. Its output does not inspect pinned libraries; the pinned checks above do. Section resolution was checked in the fetched current supplier texts, not inferred from this name-only result. The added and repaired citations resolve as follows:

| Supplier locator | Repository-relative witness | What it supplies |
|---|---|---|
| PadicHodgeRegulators §4.7 | `TauCetiRoadmap/PadicHodgeRegulators/README.md:1023` | Universal Suslin–de Jeu normalization, Chern sign and p>3 unit calibration. |
| PadicHodgeRegulators §§5.6–5.9 | `TauCetiRoadmap/PadicHodgeRegulators/README.md:1165,1188,1213,1231` | Completed root classes, normalized natural regulator, unramified p²-lattice isomorphism and finite root presentations. |
| ColemanIntegration §L2.18 | `TauCetiRoadmap/ColemanIntegration/README.md:1754` | Reflection at z≠0,1, with no complex ζ(2) constant; on roots the modified dilogarithm is Li₂. |
| ComputationalNumberTheory §§3.23,4.19a | `TauCetiRoadmap/ComputationalNumberTheory/README.md:1812,2228` | Additive p-saturation and a Hurwitz-power remainder. Neither is the general ring-map or shifted C^J statement here. |
| StandardDistributions Layers 1,5 on main | `TauCetiRoadmap/StandardDistributions/README.md:208,547,605` | Scalar moments and PSD Gaussian mixed moments; no algebraic weighted completion. |
| ThetaSeries Layer 1 on main | `TauCetiRoadmap/ThetaSeries/README.md:423` | Full-lattice Schwartz Poisson summation with covolume and the positive dual character. |

The other section resolutions were refreshed: GeometryOfNumbersAndQuadraticArithmetic §4.3 (the q-product paragraph at line 1784), HabiroCyclotomicCompletions §1.1 (204), QSeriesPartitionsAndMockModularForms §§1.6,2.4,3.1,3.3,5.2 (209,303,400,436,815), QuantumEnvelopingAlgebras §QEA6 (553), PolylogarithmFunctions §§1,3,5,6 (105,377,697,905), K3BlochGroups §§3.1,3.3–3.5,3.13–3.16,4.20,5.8,6.1 (526,598,672,707,952,985,1045,1685,1967,2023), GeneralAlgebraicKTheory §§2.5–2.6,3.2 (346,372,418), KTheoryFiniteLocalFields §§1.8,7.4 (316,1649), ArithmeticKTheory §3.4 (1190), Polylogarithms §§2.1,2.3 (136,189), QWittVectors §§2.4,6.1 (414,841), HabiroRings §§5.9,6.1–6.6 (1069,1102,1132,1152–1225), HabiroCohomologyFoundations §§4.21,5.13,6.1–6.3,8.1–8.18 (1606,1974,2189–2220,2282–2452), and HabiroNumberFields §§0.2,0.9,1.1–1.15,2.1–2.7,3.1–3.12 (125–1099). Line numbers in this paragraph refer to each named roadmap's `TauCetiRoadmap/<Name>/README.md`. FuchsianOrbifolds Layers 3–5 (263–343) and ModularForms Layer 10A (1052) were checked on main. The comparison sections and gaps are not claims that their suppliers' proofs are already implemented.

The three main-roadmap shapes reread were ThetaSeries, StandardDistributions and FuchsianOrbifolds. Object searches used the roadmap service, main/open texts, board packages and pinned Mathlib/Tau Ceti. The relevant hits leave analytic Gaussian moments with StandardDistributions, completed local regulator theory with PadicHodgeRegulators, and the formal weighted Gaussian completion and its Nahm application here. HabiroNumberFields' completed-Bloch adapter is a consumed comparison, not another construction in this roadmap. The Hurwitz remainder in ComputationalNumberTheory is expressly distinguished from the finite-interval C^J formula. No new Lean names were added, so the previous fully qualified name collision check is unaffected. No new duplicate owner was found in the reviewed changes.

All seven design gap slugs were reread in `packages/HabiroNahmSeries/design/plan.json`. The local-K₃ request is now replaced by the actual supplied sections, as already happened for the degree-zero comparison; retaining those historical design entries does not request duplicate work in this package. The remaining five README contracts retain their named owners and specified normalization, descent, root-modularity or higher-comparison obligations. No new gap was introduced. Their previous precision/minimality assessment is carried forward; acceptance remains conditional on those explicit contracts.

### Computed adversarial table: changed statements

The following rows were recomputed this round. Rational polynomial integration and Wick contraction were evaluated independently on both sides; finite tests supplement the domain and proof-route checks above, rather than prove the general theorems.

| Statement/interface | Instances tried | Computed left side | Computed right side / wrong model | Result; change |
|---|---|---|---|---|
| §2.2 Bernoulli conventions and derivative | r=1,2,3; X=1/4 | B₁=−1/4; B₂=−1/48; B₃=3/64; B₃′=−1/16 | 3B₂=−1/16; B₂(3/4)=−1/48; B₃(3/4)=−3/64 | Equal; reflection and negative B₁ fixed |
| §2.2 first integration-by-parts step | f=s, a=0,M=1,θ=1/4 | Sample 1/4; kernel integral 0 | Integral 1/2 plus boundary −1/4 plus 0=1/4 | Equal |
| §2.2 exact J=2 remainder | f=s³,a=0,M=1,θ=1/4 | Sample 1/64; kernel integral −3/32 | Approximation −1/32; remainder −(−3/32)/2=3/64; total 1/64 | Equal; reversed sign gives −5/64 |
| §2.2 exact J=3 remainder | f=s⁴,a=0,M=1,θ=1/4 | Sample 1/256; kernel integral 7/640 | Approximation 1/480; remainder 7/3840; total 1/256 | Equal |
| §2.2 uniform norm bound | Same J=2 cubic; same J=3 quartic | Absolute remainders 3/64; 7/3840 | Bounds (1/6)/2·3=1/4; (√3/36)/6·12=√3/18 | Both inequalities hold |
| §2.2 endpoint and empty-interval extensions | f=s³,J=2,M=1,θ=0,1; M=0 | Samples 0,1; empty sum 0 | 1/4∓1/2+1/4=0,1; kernel remainder 0; empty integral 0 | Equal; no endpoint discontinuity of B₂ |
| §2.2 complex coefficients | f=i s³,J=2,θ=1/4,a=0,M=1 | i/64 | −i/32+3i/64=i/64 | Equal; same absolute remainder 3/64 |
| §2.4 polynomial affine identity | M=g=1; P=1,v,v² | Brackets exp(u²/2),0,exp(u²/2) | exp(u²/2) times moments 1,0,1 | Equal; constant coefficients 1,0,1 and u⁴ coefficients 1/8,0,1/8 |
| §2.4 polynomial domain | P=v², g=1 | (v+u)²=v²+2uv+u² | Each u-coefficient polynomial; exp(−uv)(v+u)² has u⁰ coefficient v² | Defined coefficientwise; no u=1 evaluation |
| §5.6 completed carrier and contraction | Λ=1; w²,w³/h,w⁶/h² | Brackets h,0,15h | Weights 1,1/2,1; output degrees 1 and 1 | Finite coefficients; weight-zero w²/h excluded as a generator |
| §5.6 hG substitution on generators | Rank one G=1, w³/h | w³/h+3w²+3hw+h² | Weights 1/2,1,3/2,2; inverse substitution returns w³/h | Preserves completion and is invertible |
| §5.6 compensating exponential | Λ=G=1 | exp(−w)=1−w+w²/2−… | Positive weights 0,1/2,1,…; scalar exp(h/2)=1+h/2+h²/8+… | Both exponentials in their asserted domains |
| §5.6 filtered affine identity, constants | Λ=G=1,F=1 | Coefficients through h³: 1,1/2,1/8,1/48 | exp(h/2), same coefficients | Equal |
| §5.6 filtered affine identity, linear/quadratic | Λ=G=1,F=w and F=w² | 0; h+h²/2+h³/8 | 0; h exp(h/2) | Equal |
| §5.6 negative-h monomials | Λ=G=1,F=w³/h and w⁶/h² | 0; 15h+15h²/2+15h³/8 | 0; 15h exp(h/2) | Equal; actual negative-h generators covered |
| §5.6 completed infinite input | Λ=G=1,F=Σwⁿ | Through h³: 1+3h/2+29h²/8+799h³/48 | exp(h/2)(1+h+3h²+15h³), same coefficients | Equal |
| §5.6 forbidden constant translation | Same F, substitute w+1 | Constant coefficients of partial sums 1,2,3,… | No stabilized coefficient in the discrete coefficient ring | Correctly excluded |
| §5.6 coupled shift and normalization consumer | Λ=((2,1),(1,1)), G=(1,1),F=1 | GᵀΛG=5; shifted bracket exp(5h/2) | Scalar exp(5h/2)=1+5h/2+25h²/8+… | Equal; both coordinates shift by h |
| §5.6 arbitrary ℚ-algebra | R=ℚ[ε]/(ε²),Λ=1,G=ε,F=w³/h | Terms after contraction: 3εh−3εh=0 | exp(hε²/2)⟨w³/h⟩=1·0=0 | Equal without reducedness |
| §5.6 zero/empty cases | G=0,F=w²; N=0,F=1+h; R=0 | h; 1+h; 0 | h; 1+h; 0 | Equal; no nonempty or domain assumption silently needed |
| Scope §3.23 comparison | A=ℤ, p=2, generator 1 or 2 | V₂={0}; V₂=𝔽₂ | Saturation holds; fails since 2·1 lies in 2ℤ but 1 does not | Correct locator and different interface |
| §6.3 normalized completed lattice | L=ℚ₅,ζ=ω(2) | li₂,₅(2)=1, (2−1)⁵=1; D=25 mod125 | Image 25ℤ₅; reversed sign gives 100 mod125 | Agrees with §§4.7,5.7–5.9 |
| §6.3 coefficient normalization | Chern-class composite λ on the same root | −c₂·(−c₂⁻¹Li₂(ζ))=Li₂(ζ) | Chern-character normalization c₂·c₂⁻¹Li₂(ζ)=Li₂(ζ) | Both give 25 mod125; no scalar dropped |
| §6.3 root domain/product naturality | L=ℚ₅×ℚ₅; roots (−1,1), (−1,−1) | First has inadmissible second component; second regulator (0,0) | Supplier excludes first; factor regulators D(−1)=−D(−1)=0 | Correct exclusion and equality |
| §6.3 empty product and generation | L=0; L=ℚ₅ and ζ=ω(2) | Zero map 0→0; valuation of root image 2 | Target 0; a unit times 25 generates 25ℤ₅ | Matches completed source and finite presentations |
| §6.3 reflection feeding modified potential | x=1/2, ℓ=log 2 | 2Li₂(1/2)=−ℓ² | −log(1/2)²=−ℓ²; D(1/2)=−ℓ²/2+ℓ²/2=0 | Correct sign; no complex constant introduced |

### Computed adversarial table: unchanged statements

Each row marked [r1] below carries the corresponding computed row from [PRREVIEW-HabiroNahmSeries~1][r1] at 7d3aedd. The four superseded rows about the Euler–Maclaurin attribution, weighted carrier, undefined affine shift and local-regulator request are replaced by the freshly computed rows above. No carried row is evidence of a second full review.

| Statement/interface | Instances tried | Computed left side | Computed right side / wrong model | Result; change |
|---|---|---|---|---|
| 1.1 quadraticExponent [r1] | A=2,B=1,C=11/60,n=1; N=0,C=2 | 131/60; 2 | 1+1+11/60; empty sums+2 | Equal; retain |
| 1.1 datum permutation/block sum [r1] | A=diag(1,2), n=(1,1), B=C=0; swap coordinates | 3/2 before and after | 1/2+1 | Equal; singular A=0 rejected analytically |
| 1.1 analytic/formal distinction [r1] | A=((1,1),(1,1)), v=(1,−1) | vᵀAv=0 | Strict positivity would require >0 | Formal admissible, analytic excluded; retain |
| 1.2 unsigned NahmEq [r1] | A=1, x=1/2; x=0,1 | 1−x=1/2,1,0 | x=1/2,0,1 | Positive example; endpoints fail |
| 1.2 positive uniqueness headline [r1] | N=0; A=1; A=2 | One empty tuple; x=1/2; x=(√5−1)/2 | Empty equations; 1−x=x; 1−x=x² | Equal; retain real positive-definite scope |
| 1.2 signed convention [r1] | A=3,z=3 in 𝔽₅ | 1−3=3 | −3³=3; unsigned 3³=2 | Signed equation holds; wrong sign fails |
| 1.2 discriminant/nondegeneracy [r1] | A=2,z=2 in 𝔽₅, unsigned | 1−z=z²=4; H=2+2/(−1)=0 | δ=0 | Solution is degenerate and excluded from étale claims |
| 1.2 symmetric coupled equations [r1] | A=((0,1),(1,0)), x=(u,1−u) | (1−u,u) | (x₂,x₁)=(1−u,u) | Family of solutions; A not positive definite, so no uniqueness claim |
| 1.3 clearing polynomial [r1] | d=1,M=2; d=1,M=−1 | 1−Y−Y²; Y−Y²−1 | Torus equations 1−Y=Y²; 1−Y=Y⁻¹ | Equal on units; negative-power factor necessary |
| 1.3 torus restriction [r1] | M=((-1,1),(1,−1)), y=(0,0) | Cleared polynomials (0,0) | Unit-coordinate condition false | Extraneous affine zero excluded |
| 1.3 cleared Jacobian [r1] | d=1,A=2, y²=1−y | P′=−1−2y | −(1−y)(2+y/(1−y))/y=−1−2y | Equal; determinant sign retained |
| 1.3 algebraicity headline [r1] | P=X²−2, x=√2; empty system | J=2√2, degree 2; det(empty)=1 | ℚ(√2) finite; coordinate field ℚ, degree 1 | Equal; no global zero-dimensionality assumption needed |
| 1.3 inseparable negative control [r1] | k=𝔽_p(a), P=X^p−a | P′=0 | Required determinant ≠0 | Excluded; field-general bridge does not silently assume separability |
| 1.3 positive root lifts [r1] | x=1/4,d=2; x=1/16,d=4 | y=1/2 in both cases | y²=1/4; y⁴=1/16; negative lift fails positivity | Equal; retain |
| 1.3 denominator compatibility [r1] | x=1/16, denominators 4→2 | (1/2)²=1/4 | Positive square root of 1/16=1/4 | Equal |
| 1.3 coordinate fields [r1] | A=1/2,d=2 | x=(3−√5)/2, y=(√5−1)/2 | x=y², y=1−x; both degrees 2 | Equal; principal-root reselection not used under embeddings |
| 1.4 exterior boundary [r1] | Symmetric 2×2 A with off-diagonal b | b(x₁∧x₂+x₂∧x₁)=0 | Expected unsigned exterior boundary 0 | Equal; antisymmetric diagonal issue kept separate |
| 1.4 signed diagonal obstruction [r1] | Formal signed tuple, diagonal product u | Boundary u∧(−1); twice it=u∧1=0 | Doubled class has boundary 0 | Equal; no unwarranted unmultiplied integral class |
| 1.4 rationalization/mod n [r1] | G=ℤ, n=5 | (G⊗ℚ)/5=0 | G/5G=ℤ/5, five elements | Distinct; integral lift before reduction is necessary |
| 1.5 complementary Rogers convention [r1] | x=1/2 | L_CGZ=π²/12 | π²/6−L_increasing=π²/12 | Equal; endpoints complement 0 and π²/6 |
| 1.5 real/conjugate regulators [r1] | Real x=1/2; z=ζ₆ and conjugate | D(1/2)=0; D(z̄)=−D(z) | Zero real row; opposite conjugate rows | Equal; one representative per conjugate pair |
| 1.5 circle-valued division control [r1] | Period P, purported division by 2 | Representatives 0,P give 0,P/2 | Same original circle class, different halves | No canonical division; lift requirement retained |
| 2.1 finite Pochhammer and branch [r1] | n=0; q=1/2,n=2; C=1/2, τ→τ+1 | 1; (1/2)(3/4)=3/8; numerator changes sign | Empty product; 3/8; same q alone loses sign | Equal; τ branch retained |
| 2.1 logarithmic product [r1] | w=0; w=1, initial factor | Sum log(1)=0; log(0) undefined | Product 1; product 0 | Correct zero-free domain |
| 2.1 convergence headline [r1] | A=2,B=C=0,q=1/2 | n=0,1,2 terms: 1,1,1/6 | q^(n²)/(q;q)_n; same values | Denominators nonzero; Gaussian decay supplies summability |
| 2.1 rank-zero sum/holomorphy [r1] | N=0,C=2,q=1/2 | Sum over singleton=1/4 | exp(4πiτ)=1/4 | Holomorphic singleton sum; not the constant-one stand-in |
| 2.1 domain negative control [r1] | q=1,n=1 | Denominator 1−q=0 | Im τ>0 fails | Totalized division outside the theorem causes no false claim |
| 2.2 empty interval/constant [r1] | M=0; f=3,M=2 | 0; 6 | Integral/corrections 0; 6+0 | Equal |
| 2.2 Bernoulli remainder [r1] | m=1,ν=0,w=1/2 | ε coefficient −Li₀(1/2)/12=−1/12 | −1/12; omitted B₂ gives 0 | Equal |
| 2.2 shifted zero control [r1] | m=1,w=e^(−ε),ν=−2 | qw e^(−νε)=1 | Initial factor 0; guard requires 2ε≤ε/2, false | Excluded |
| 2.2 Dedekind phase [r1] | (a,m)=(1,3),(2,5); m=1 | s=1/18,0; empty sum 0 | χ=e^(πi/18),1,1 | Equal; printed binomial phase at (2,5) is e(1/5)≠1 |
| 2.2 Euler correction [r1] | m=1, inverse Euler after normalization | exp(−ε/24)=1−ε/24+… | Linear coefficient −1/24 | Equal |
| 2.3 saddle Gaussian [r1] | H=1,m=2 | Covariance m/H=2 | Dropping half gives 1 | Half retained |
| 2.3 B sign [r1] | B=v=m=1, n=s/ε+1/√ε | −εBn=−s−√ε | Stated constant/linear terms −s,−√ε | Equal |
| 2.3 saddle polynomial parity [r1] | exp(v³√ε), unit covariance | Odd term integrates 0; ε term=15/2 | Wick moment ⟨v⁶⟩/2=15/2 | Equal |
| 2.3 Euler contribution to first coefficient [r1] | A=2,B=C=0,m=1 | −1/60 | Without Euler: −1/60+1/24=1/40 | README uses correct coefficient |
| 2.3 finite-product modulus [r1] | n=0; n→∞ | log(empty)=0; leading −π²/(6mε) | Li₂(1)−π²/6=0; Li₂(0)−π²/6=−π²/6 | Equal leading terms |
| 2.3 complex-tail control [r1] | q=ζ₃/2,n=1 | 1/(1−q)=5/7+i√3/7 | Nonreal, although modulus is real | Absolute-value bound does not assume positivity |
| 2.4 normalized Gaussian [r1] | M=1, monomials 1,v,v²,v⁴ | 1,0,1,3 | Wick values 1,0,1,3 | Equal |
| 2.4 mixed Wick contraction [r1] | Covariance ((2,1),(1,2)) | ⟨v₁v₂⟩=1; ⟨v₁²v₂²⟩=6 | 1; 2·2+2·1²=6; diagonal-only answer 4 | Equal; full covariance necessary |
| 2.4 lattice covolume [r1] | N=1,H=1,m=2, spacing 2√ε | Density 1/(2√ε) | Integral 2√π; prefactors combine to 1/√2 | Equal; printed m^(+1/2) would give √2 |
| 2.4 additional congruence spacing [r1] | Replace spacing h by 3h | Density divided by 3 | D⁻¹=1/3 | Equal |
| 2.5 CRT Gauss factor [r1] | Q=n²/2,m=3,a=1,D=2 and 4 | Averages (1−1)/2=0; (1−1+1−1)/4=0 | Same G=0 | Equal; refinement safe |
| 2.5 branch-dependent phase [r1] | Same Q,m, a=2 and 4 | G=1 and 1 | a=1 gives 0 although a=4 has same q-root | Integer representative retained |
| 2.5 radial asymptotic headline [r1] | A=2,B=C=0,m=1, ε=.05,.02,.01 | Normalized sums .849942228,.850367305,.850509045 | Limit .850650808; relative slopes −.016659724,−.016663889,−.016665278→−1/60 | Numerical agreement; not a remainder proof |
| 2.5 cancellation case [r1] | A=1,m=3,a=1, ε=.1,.05,.02 | Normalized absolute sums 3.7869e−4,1.0151e−7,2.6268e−14 | Dominant coefficient 0 | Numerical agreement; no division by G |
| 2.5 rank-zero/C factor [r1] | N=0,C=2,m=1 | exp(−2ε)=1−2ε+2ε²+… | I=S=c=G=1 times C factor | Equal |
| 2.6 coherent Kummer fields [r1] | x=1/4,d=2,m=3 | η³=1/2, θ=η² | σ(η)=ζη gives σ(θ)=ζ²θ | Correct rotation; treating rational powers as fixed fails |
| 2.6 unit-series descent [r1] | Φ=√2(1+3ε),m=2 | Φ²=2+12ε+18ε² | Φ/Φ₀=1+3ε∈ℚ[[ε]] | Equal |
| 2.6 characteristic/m guards [r1] | char 2, Φ=1+√s ε over 𝔽₂(s); m=0 | Φ²=1+sε²; Φ⁰=1 | Φ not over base; arbitrary Φ passes m=0 power test | Both excluded by char 0 and m>0 |
| 2.6 constant nonvanishing [r1] | Φ=ε | Φ₀=0 | Φ/Φ₀ undefined as unit normalization | Excluded; additive radial theorem still meaningful |
| 2.7 trigonometric calibration [r1] | r=0,n=3; r=1,n=5 | Λ=0; Λ=π²/15 | Empty sum; Rogers value π²/15 | Equal |
| 2.7 root change/3-primary term [r1] | n=9,a=2 | Fourth-power e(5/9); correction e(4/3) | e(10/9+4/3)=e(4/9)=ζ² | Equal; fixed e(−1/3) would fail |
| 2.7 good Chern vs eta domain [r1] | n=5,F=ℚ(√5) | gcd(n,disc F)=5; gcd(n,w_F)=1 | Generic good-order test fails; eta cyclic test passes | Distinct interfaces retained |
| 3.1 width-normalized order [r1] | w=2,k=3; replace w by 6 | v=3/2; new k=9 | 9/6=3/2 | Equal |
| 3.1 leading coefficient/change of chart [r1] | w=2,k=3, shift ℓ=1 | Multiplier e(3/2)=−1 | Order remains 3/2 | Coefficient depends on chart, order does not |
| 3.1 multiplication/cancellation [r1] | Germs q²,q⁻¹; q+(−q+q²) | Product order 1; sum order 2 | 2+(−1)=1; minimum alone gives only ≥1 | Equal with cancellation caveat |
| 3.2 radial Laurent formula [r1] | σ=((2,1),(5,3)) | σ⁻¹(2/5+iy)=−3/5+i/(25y) | Phase e(−3v/5), scale exp(−2πv/(25y)) | Equal |
| 3.2 sign/growth comparison [r1] | σ=S,v=±1 | exp(∓2π/y) | v=−1 requires M≥2π; v=1 decays | Equal; pole/zero signs fixed |
| 4.1 every-root majorant [r1] | q=−r, n=1,0<r<1 | ∣1−q∣=1+r | ≥1−r; at r=1/2: 3/2≥1/2 | Correct inequality, including even root |
| 4.2 modular order conversion [r1] | y=t/(2π), c=1,v=−λ | exp(4π²λ/t) | exp(Λ/t), Λ=4π²λ | Equal |
| 4.2 modular linear correction [r1] | A=2, B=0, C=−1/60 | −1/60−C=0 | Required nonconstant modular power-series coefficient 0 | Equal |
| 4.3 inverse-transformation sign [r1] | Λ=4π²λ, ε=dh/(1−ich/(2π)) | Λ/ε=Λ/(dh)−2πiλc/d | Phase e(−λc/d), not e(+λc/d) | Equal |
| 4.3 bounded power [r1] | First Rogers–Ramanujan datum; s=120 | C,λ denominator contributions divide 120 | u^120 loses the specified fractional powers | Fixed exponent, not one depending on d |
| 4.3 unbounded good orders [r1] | L=6,k=1,2 | Matrices ((1,6),(6,37)), ((1,12),(6,73)); determinants 1 | d=37,73; both coprime to 6 | Equal; no primality theorem needed |
| 4.4 integral divisibility bridge [r1] | G=ℤ, element 6; G=ℤ/5, element 1 | Divisible by positive n only n=1,2,3,6; in torsion group by every n≡1 mod5 | First set bounded; second unbounded | Torsion conclusion passes; finite generation matters |
| 4.4 non-finite-generation control [r1] | G=ℚ, element 1 | 1=n·(1/n) for every n | 1 has infinite order | Excluded; no finite-generation assertion for algebraic closure |
| 4.4 modularity endpoint [r1] | A=2 Rogers–Ramanujan, distinguished x | Complementary regulator π²/15; rational Bloch image torsion→0 | Integral torsion need not itself be zero | Compatible; no converse or all-solutions claim |
| 5.1 plethystic logarithm [r1] | F=1; F=(t;q)_∞ | log1=0; −Σt^ℓ/(ℓ(1−q^ℓ)) | L_n=0; L₁=1, higher L_n=0 | Equal |
| 5.1 root expansion residue [r1] | F=(t;q)_∞, m=1 | Residue of logF at q=1 is Li₂(t) | Coefficient tⁿ/n² | Equal; sign opposite for reciprocal |
| 5.2 formalExponent [r1] | A=3,n=0,1,2; A=−1,n=2 | 0,3,9; −3 | A·n(n+1)/2 | Equal; negative exponents retained |
| 5.2 formal series [r1] | A=3,q=2,n=0,1,2 | 1,8,512/3 | (−1)^(3n)2^(3n(n+1)/2)/(2;2)_n | Equal |
| 5.2 q-difference headline [r1] | A=3,q=2, degree t | (1−2)·8=−8 | (−2)³·1=−8 | Equal |
| 5.2 coupled column shift [r1] | A=((2,1),(1,1)),q=2,j=1,k=(1,1) | (1−2)(−16)=16 | 4·2·2=16 | Equal; diagonal-only shift gives 8 |
| 5.2 general q-difference probes [r1] | Three 2×2 matrices used below and A=3; each degree ≤2 | 57 tested operator coefficients | Same 57 recurrence coefficients | Exact equality; includes singular/negative-entry matrices |
| 5.2 inversion [r1] | A=3,n=1 | F_A(t,q⁻¹) coefficient=q⁻²/(1−q) | F_(1−A) coefficient=q⁻²/(1−q) | Equal; retain inversion identity |
| 5.3 integral shift ratios [r1] | A=0 | R₁=1−t; R₋₁=(1−q⁻¹t)⁻¹ | R₁σR₋₁=1 | Equal |
| 5.3 root orbit [r1] | A=0,m=2,q=−1 | (1−t)(1+t)=1−t² | z(t²)=1−t² | Equal |
| 5.3 potential and Euler derivative [r1] | A=3 | V=t+5t²/4+28t³/9+… | ΘV=t+5t²/2+28t³/3=log z | Equal |
| 5.3 critical-value formula [r1] | A=0,z=1−t | V=−Li₂(t) | ΘV=log(1−t) | Equal |
| 5.3 logarithmic Hessian [r1] | A=0,t=1/3,z=2/3 | Θ²V=−t/(1−t)=−1/2 | Λ=−2; Λ⁻¹=−1/2 | Equal; Λ itself is wrong |
| 5.4 finite support [r1] | A=0,1,3 | L₁=−1,q,q³; A=3:L₂=q⁷,L₃=q¹⁰+q¹¹+q¹³ | Finite Laurent polynomials | Equal; not merely an infinite product expansion |
| 5.4 mixed plethystic term [r1] | A=((2,1),(1,1)), q=2 | c₁₁−c₁₀c₀₁=−16−(−4)(2)=−8 | −L₁₁/(1−q)=−8, L₁₁=−q³ | Equal; independent rank-one model gives 0 |
| 5.4 Dwork identity [r1] | F=(t;q)_∞,p=2, degree t | 0−2(−1/(1−q))=2/(1−q) | RHS 2/(1−q) | Equal; at q=1+x residue −2, not a regular series |
| 5.5 restricted Adams coefficients [r1] | F=1+t₁t₂,m=2 | L₁₁=−(1−q²), L₂₂=(1−q²)/2 | At q=−1 both 0 | Equal |
| 5.5 enlarged localization [r1] | A=0,m=2,k=0; Φ₄ pole | Numerator at q=i is i−1≠0 | Φ₄(−1)=2; allowed at level 2 | README enlargement necessary |
| 5.5 congruence initial condition [r1] | m=2,k=1,H=t+… | (1−σ)(1−q⁻¹σ)t=0 | Initial RHS has higher degree | Equal |
| 5.5 order-m sign [r1] | A=1,m=3 and 2 | (−1)^3=−1; (−1)^2=+1 | Printed m(m+1)/2 sign at m=3 is +1 | Corrected sign retained |
| 5.6 Fubini block condition [r1] | Λ=((0,1),(1,0)) | detΛ=−1; first block A=0 | Whole integral exists; A⁻¹ does not | Iterated formula correctly excluded |
| 5.6 Pochhammer subtraction [r1] | m=2, expand Li₂(Z e^(2w))/(4h) | Linear Li₁(Z)w/(2h); quadratic Li₀(Z)w²/(2h) | Denominators m and 2, not both m² | Correct README remainder |
| 5.6 positive weight vs x ideal [r1] | Cubic term w³/h | Weight 1/2>0 | h-adic exponent −1, not in x times whole completion | README correctly permits it |
| 5.6 normalization/root term [r1] | A=0,m=2 | Normalized root factor starts 1−T/2+… | (1+T)⁻¹/²=1−T/2+…; reversed power gives +T/2 | Correct sign |
| 5.7 coefficient algebra [r1] | N=0 | ℤ[T]/(T²−1) | After 2: two factors, T=(1,−1); derivative at p=2 is 0 | Full algebra and exclusion retained |
| 5.7 Kummer étaleness [r1] | w^m=z, p=5,m=3 and 5 | Derivative 3w² a unit; 5w⁴=0 mod5 | First étale, second not | Correct p∤m restriction |
| 5.7 WKB sign [r1] | A=1 | Unsigned z₀=(1+t)⁻¹=1−t+… | Signed z=(1−t)⁻¹=1+t+… | Change of variables necessary |
| 5.7 WKB Euler derivation [r1] | A=0, X=−t/(1−t) | ΘX=−t/(1−t)² | X(1−X)=−t/(1−t)² | Equal |
| 5.7 WKB polynomial [r1] | A=3 | z₀=1−t+3t²−12t³; X=−t+5t²−28t³ | b₁=3X² | Correct first coefficient and sign |
| 6.1 saturation/iteration [r1] | Identity ℤ₅→ℤ₅, a=25 | v₅(a)=2 | Image valuation 2 | Equal |
| 6.1 necessity of p regularity [r1] | ℤ→𝔽₂,p=2,a=2 | Reduction map is 2-saturated; image(a)=0∈4𝔽₂ | 2∉4ℤ | Higher transfer excluded without regularity |
| 6.1 full determinant algebra [r1] | A=5,p=5 | δ=z⁻⁴, T=±z²; δT²=1 | T−z² evaluates 0 and −2z² | One branch is not faithful |
| 6.1 Frobenius base square [r1] | t→2,p=5; t→1 | 2⁵−2=30≠0 in ℤ₅; 1⁵−1=0 | Only second commutes with specified base Frobenius | Correct naturality restriction |
| 6.2 first jet, cubic contraction [r1] | C=T₃=1, others 0 | ⟨w⁶/(72h²)⟩=15h/72 | Jet=1/8+1/12=5/24 | Equal |
| 6.2 mixed first jet [r1] | C=b=T₃=1, others 0 | 1/2+1/2+15/72=29/24 | Jet=29/24; omit mixed term→17/24 | Equal |
| 6.2 quartic/linear/empty jet [r1] | U₄=C=1; b=C=1; N=0 | 3/24=1/8; 1/2; c | Jet=1/8,1/2,c | Equal |
| 6.2 refined denominator units [r1] | p=5,m=2, root ζ=−1 | 1−ζ=2 a unit; (1−w)(1+w)=1−z | Required 1−z is a unit | Both conjugate factors units; m=p case excluded |
| 6.3 modified potential sign [r1] | At t=1, log(1−z)=A log z | −Li₂(1−z)−A(log z)²/2 | Li₂(z)+log z log(1−z)/2 | Equal by reflection; positive regulator sign |
| 6.3 intrinsic W_p boundary [r1] | η=0, hence β=0 | W_p=pΣℓ₂(y) | All remaining displayed terms 0 | Equal; negative leading sign would fail |
| 6.4 specialization [r1] | t=1; attempted z=0 | Base square 1^p=1 | Unit z cannot map to 0 in a nonzero target | Valid finite-presentation map, invalid zero coordinate |
| 6.4 determinant orientation [r1] | Split B and involution T→−T | Full collection leading components (a,−a) | Diagonal (a,a) has wrong involution law for a≠0 | Both components retained |
| 6.4 constant cancellation [r1] | Two refined leading constants 1 and −1 | Sum 0 | Neither individual constant is 0 | Membership does not imply generator/nonvanishing |
| 6.5 powered/unpowered products [r1] | γ=2,q=2,F⁺=t,F⁻=1,μ=(1,1) | Ψ=16t⁴; P=16t² | Reversed operator composition gives 256t⁴ | Equal to stated order of operations |
| 6.5 signed shifts [r1] | γ=1,q=2,F⁺=1,F⁻=t,ν=1 | t/2 | F⁻(q⁻¹t)=t/2 | Equal |
| 6.5 uniqueness hypothesis [r1] | q=(2,1) in K×K | q−1=(1,0); (q−1)(0,1)=0 | Nonzero but not regular | Incorrect nonvanishing-only variant excluded |
| 6.5 principal-part cancellation [r1] | A=0,γ=2 | Ψ pole numerator −Li₂(t²)+Li₂(t), coefficient t=1 | P numerator −Li₂(t)+Li₂(t)=0 | Only P used for gluing |
| 6.5 invert γ [r1] | A=0,γ=5,m=1 | t coefficient 3−2x+x²+x³/5+… | x³ valuation at 5 is −1 | Need 1/5; README includes it |
| 6.5 all-order descent/edge [r1] | p=5,m=5,γ=1 | 1/5∈C₅[1/5], v₅=−1; families 1→0 give 1≠0 | C₅ excludes 1/5; gluing requires 1=φ₅(1) | Correct integral-before-localization requirement |
| 6.6 descendant curve [r1] | m=2,ν=1,q=−1+x | t=q²=1−2x+x² | t^(1/2)=q; naive t=q starts at −1 | Equal; correct base point |
| 6.6 inverse/zero descendants [r1] | m=1,ν=−1 and 0 | 1−x+x²−…; 1 | Full prefactor t has derivatives −1;0 | Varying prefactors retained |
| 6.6 torsion powers [r1] | Class ξ of order 3, n=3 | nξ=0 | Tensor cube has index 0 | Correct on specified orders; no automatic new prime edges |
| 6.6 converse nonzero condition [r1] | f=0, arbitrary n>0 | f^n=0 belongs to every ring | No nonzero Kummer constant | Explicitly excluded |
| 7.1 generalized binomial [r1] | (r,k)=(−1,1),(0,1),(0,0) | −q⁻¹,0,1 | Quotient definition yields same | Negative upper index not truncated |
| 7.1 symmetric-parameter conversion [r1] | r=−1,k=1,q=v² | Standard coefficient −v⁻² | v^(−2)·symmetric coefficient(−1) | Equal |
| 7.1 product headline, singular coupling [r1] | A=((0,1),(1,0)),q=2, k=(1,0),(1,1),(2,2) | 1,0,0 | q-binomial formula 1,0,0 | Exact equality |
| 7.1 product headline, positive coupling [r1] | A=((2,1),(1,1)),q=2,k=(1,0),(1,1),(2,2) | −7/2,−45/4,93345/128 | Same values from q-binomial formula | Exact equality |
| 7.1 product headline, negative entries [r1] | A=((-1,2),(2,−3)),q=2,k=(1,1),(2,1),(2,2) | 31/4,−49/4,0 | Same values from q-binomial formula | Exact equality |
| 7.1 product headline, rank one [r1] | A=3,q=2,k=0,1,2 | 1,31/4,10795/64 | Same values from q-binomial formula | Exact equality; 30 coefficients checked over four matrices |
| 7.1 residue sign [r1] | A=0,m=1 | Unnormalized residue −1/(1−t) | Corrected prefactor gives +1/(1−t)=δ⁻¹ | Sign retained |
| 7.1 root residue normalization [r1] | A=0,m=2,T=3/5,t=9/25 | Product 1/(1−T)=5/2 | Correct finite root sum 5/2 | T and Jacobian factors necessary |
| 7.2 cubic discriminant/inverse [r1] | z³−z+1=0 | disc=−23; (−z²−z−2)(2z²+3z−9)/23=1 | Unsigned discriminant −31; expected inverse product 1 | Exact quotient reduction |
| 7.2 cubic product at roots [r1] | k=1: q⁻²+q⁻¹+1+q+q² | q=1:5; q=−1:1 | Same finite evaluations | Equal |
| 7.2 corrected cubic numerator [r1] | m=2,T²=t | (z⁻¹+T)/δ=1+T+4T²+5T³+… | Printed (1+T)/δ gives T² coefficient 5 | README correction valid |
| 7.2 cubic DT/product [r1] | s₁,s₂,s₃=1,1,3 | ∏(1−tⁿ)^(−ns_n)=1+t+3t²+12t³+… | z=1+tz³ gives same | Equal; finite check not positivity proof for all n |
| 7.2 small-prime scope [r1] | First coefficients denominators powers of 23 | v₂,v₃ of those denominators 0 | No value supplied for arbitrary order/degree | Only finite evidence; all-order local targets retained |
| 7.3 quartic equations [r1] | Mod u⁴+u³+3u²−3u−1, specified v | Remainders of both Nahm equations 0 | Expected (0,0) | Exact rational polynomial reduction |
| 7.3 quartic δ inverse [r1] | Same quotient | δδ⁻¹ remainder 1 | Expected 1; det A=7 is a different element | Exact equality |
| 7.3 quartic coordinate norms [r1] | u,v,1−u,1−v,δ | −1,1,1,−1,9025 | Stated unit norms and 5²19² | Exact determinants |
| 7.3 integral basis candidate [r1] | e=(u³−u²+2)/5 | e²−3e+1=0; Gram determinant −475 | Polynomial discriminant −11875; ratio 25 | Index 5; maximality remains separately required |
| 7.3 analytic/formal normalization [r1] | A diagonal entries 8,4; shift (−4,−2) | Linear formal contribution 4n₁+2n₂ cancels | Zero-B analytic exponent nᵀAn/2 | Equal; canonical unshifted series differs |
| 7.3 change h→x [r1] | h=log(1+x) | h=x−x²/2+x³/3; h²=x²−x³ | a₂=c₂−c₁/2, a₃=c₃−c₂+c₁/3 | Equal |
| 7.3 torsion/rank endpoints [r1] | Proposed 60ξ=0; eight descendants | Relation would give tensor index 0; rank witness must have rank 8 | Regulator zero alone also holds for the zero class; ≤8 alone allows rank 0 | Explicit relation and independence targets necessary, retained |
| 7.4 figure-eight coordinates [r1] | z=(1+i√3)/2, s=2z−1 | z²−z+1=0; δ=−s, norm 3 | det A=0 does not imply δ=0 | Nondegenerate formal solution |
| 7.4 determinant root [r1] | r²=s, T=i/r | δT²=(−s)(−1/s)=1 | δ(1/r)²=−1 | Correct embedding retained |
| 7.4 canonical/knot first jet [r1] | a=−1/24−11s/216 | a+1/24=−11s/216 | Knot coefficient 11/(72s)=−11s/216 | Equal; scalar and q-factor both matter |
| 7.4 q-inverted product [r1] | Canonical a,b; knot a_g,b_g | 2b−a²=−1/27; 2b_g−a_g²=−1/27 | Same relative coefficient, leading scalars opposite | Equal |
| 7.4 completed Pochhammer transport [r1] | z=(1+s)/2,s²=−3 | 11s/216−1/24+Li₀(z²)/4=−1/6+5s/54 | (5z−7)/27=−1/6+5s/54 | Equal; omit conjugation→−1/6−s/108 |
| 7.4 polar/constant-log cancellation [r1] | Completed transport times Pochhammer cube | −3Li₂(z²)/h+3Li₂(z²)/h=0 | Constant after log cancellation=1 | Equal |
| 7.4 cubic-pair scalar [r1] | α³−α²+1=0 | Actual denominator square=392−532α+284α² | Printed simplified denominator square=26−32α+24α² | Unequal; README retains both square roots |
| 7.5 simple-root/Hensel scope [r1] | P=X²−1 at 1 modulo 5 and 2 | Derivative 2 unit at 5; 0 at 2 | Simple-root theorem applies only first | Correct general-ring hypotheses |
| 7.5 Gauss norm headline [r1] | m=1,2,3,4 | Gauss sums 1,0,i√3,2+2i | Norms/m=1,0,1,2 | Equal to rationalGaussTaylor |
| 7.5 additional Gauss orders [r1] | m=5,6,8 | Norms/m=1,0,2 | Formula 1,0,2 | Equal |
| 7.5 totalized m=0 control [r1] | Empty Gauss sum, division by 0 in Lean | RHS=0 | rationalGaussTaylor(0)=2 | m>0 hypothesis correctly excludes false equality |
| 7.5 square companion [r1] | m=1,2,3,4 | iG_m²/m=i,0,−i,−2 | Printed polynomial gives i,0,−i,+2 | README correction valid |
| 7.5 odd-prime gluing [r1] | m=1→3 and m=2→6 | Norm family 1→1; 0→0 | Companion i→−i=φ₃(i) | Correct Frobenius; p=2 edge 1→0 fails |
| 7.5 Rogers–Ramanujan scalar relation [r1] | F=(−5±√5)/10 | −5F²−5F=1 | F=0 or −1 gives 0 | Both branches/order domains distinguished |
| 7.6 degree-zero export [r1] | Rational Gauss family at orders 1,2,4 | Values 1,0,2 | Difference from unit 0,−1,1; q=1 completion 0 | Global class is not its q=1 completion |
| 7.6 scalar extension/Picard direction [r1] | R→R×R, trivial line | Extended ranks (1,1) | Restriction has R-rank 2 | Correct pullback; not restriction |
| 7.6 completed trivialization [r1] | Bases 1 and 1+h | Both reduce to 1 modulo h | Distinct bases, ratio unit 1+h | No uniqueness inferred from trivial Picard class |
| 7.7 analytic-radius condition [r1] | Σp^(−n)Xⁿ | Radius p⁻¹; at ∣X∣=p⁻¹ terms have norm 1 | Positive radius but not whole open unit disc | Stronger H(V) hypothesis retained |
| 7.7 cohomological degree [r1] | Empty frame N=0; one top differential N=1 | Degree 0; degree 1 | Scalar export does not supply a degree-1 geometric form | Separate geometric comparison retained |

The tables contain 26 freshly computed rows and 159 carried rows (185 total). The fresh numerical work includes 1,620 exact Euler–Maclaurin instances, six filtered Gaussian inputs through h³, and the three finite dilogarithm values at p=5. The previous report records the unchanged multi-index recurrence/product probes and quartic arithmetic; those were not rerun in this incremental review.

## Not verifiable

- No source needed for the changed passages was inaccessible. The legally cached GZ, VZ, GSW, GSWZ and Aarhus texts sufficed, together with the pinned APIs and supplied roadmaps. No reference request or source-manifest edit was needed.
- As in [r1], finite checks do not prove the separately stated full-component integrality, mixed Gaussian regularity, all-order descent, exact quartic torsion relation or eight-descendant independence targets. The repairs specify a valid affine domain and actual supplier inputs; they do not claim those research proofs have been completed.
- The higher analytic Habiro comparison remains an explicit supplier contract with degree, radius, root and base-change requirements. The degree-zero equivalence does not settle it. Acceptance is conditional on the remaining declared supplier contracts.
- The unchanged parts were carried from [r1] as required by the incremental brief. This report makes no claim to a newly repeated full-source or full-mathematics audit of those parts.

## Source issues

The following 28 entries are carried from [r1], for the same unchanged source versions and roadmap corrections. They are source errata, not additional findings against the repaired roadmap. One domain-notation misprint encountered in the newly checked regulator passage is appended.

- **Error** in GZ at Proposition 2.2, (10)–(11), printed p.4 (GZ line 188): the source says the saddle uses a full quadratic coefficient, positive B term and multiplicative logarithmic remainders; it should be a half quadratic, negative B term, exponential remainders and the Euler correction; affects the proof.
- **Misprint** in GZ at the discussion after (14), printed p.4 (GZ line 239): the source says coefficient valuations tend to zero; it should be valuations tend to infinity for this filtered summation; affects the proof.
- **Error** in GZ at Theorem 3.1, (18), printed p.5: the source says the volume factor is m^(N/2); it should be m^(−N/2) with the stated residue lattice and Gaussian normalization; affects a stated result.
- **Error** in GZ at Theorem 3.1, the phase preceding (18), printed p.5: the source says the displayed binomial phase gives the required Euler phase for every primitive root; it should be the Dedekind phase, or an explicit compensating rescaling of the coefficient series; affects a stated result.
- **Misprint** in GZ at §4.1, the r=1 calculation, printed p.6 (GZ line 385): the source says the logarithmic expansion contains D_ζ(w)/m; it should be log D_ζ(w)/m; affects the proof.
- **Error** in GZ at §4.3 opening, printed p.8 (GZ line 446): the source says fixing congruence classes makes summands positive real; it should be Euler denominators still carry complex phases, so tail estimates must use absolute values; affects the proof.
- **Error** in GZ at (30), printed p.8 (GZ line 482): the source says summing all D-residue subsums gives 1/D times the full m-class sum; it should be their sum equals the full class exactly; individual refined classes have asymptotic density D^(−N); affects the proof.
- **Error** in GZ at Claim 4, (34), printed p.9 (GZ line 559): the source says the density is (mε)^(−N/2), with different quadratic factors on the two sides; it should be m^(−N)ε^(−N/2) and the same half-quadratic Gaussian on both sides; affects the proof.
- **Misprint** in GZ at the Poisson discussion before (35), printed p.10 (GZ line 571): the source says faster-than-polynomial decay is expressed using positive powers of ∣x∣; it should be negative powers, with suitable derivative decay for the stated Fourier argument; affects the proof.
- **Error** in GZ at the Poisson discussion after (36), printed p.10 (GZ line 586): the source says smooth rapid decay gives exponentially small nonzero Fourier contributions; it should be Schwartz estimates give errors smaller than every power; polynomial Gaussians supply the stronger bounds used here; affects the proof.
- **Error** in CGZ at Theorem 7.5 proof, printed p.40 (CGZ lines 1949–1950): the source says the inverse-transformation constant has positive λ phase and drops prefactors from the compared expansion; it should be negative λ phase, retaining determinant normalization and the C phase; affects the proof.
- **Error** in GSWZ at (67), printed p.21 (GSWZ line 937): the source says the first L_n(1) contribution has coefficient −(m−1)/(2m); it should be +(m−1)/(2m) in this normalization; affects a stated result.
- **Misprint** in GSWZ at (70), printed p.21 (GSWZ line 973): the source says the residue equals V(t^m)/m²; it should be ζ_m V(t^m)/m²; affects the proof.
- **Error** in GSWZ at (89), printed p.25: the source says the multivariate shift can be expressed using only the single-coordinate ratio; it should be the ratio for the entire matrix column, including off-diagonal entries; affects the proof.
- **Error** in GSWZ at Definition 2.8/(93) and Theorem 7, printed pp.26–27 (GSWZ line 1242): the source says the stated congruence sums satisfy a localization excluding every Φ_d with m dividing d; it should be enlarged to admit the additional m-smooth quotient factors; A=0,m=2 forces Φ₄; affects a stated result.
- **Error** in GSWZ at (114), printed p.29 (GSWZ lines 1486–1488): the source says both linear and quadratic subtractions have denominator m² and the remainder lies in 1+x times the completion; it should be denominators m and 2, the opposite constant-log subtraction, and positive weighted order allowing w³/h; affects a stated result.
- **Error** in GSWZ at (132)–(135), printed pp.31–32 (GSWZ line 1639): the source says the dilogarithm contribution to the Frobenius potential defect has the displayed positive sign; it should be computed from the negative Li₂ critical potential, giving pΣℓ₂ when η=0; affects the proof.
- **Error** in GSWZ at (139), (165)–(166), printed pp.32,35–36 (GSWZ line 1867): the source says the order-m sign is (−1)^(Am(m+1)/2); it should be (−1)^(Am), with the corresponding initial-residue factors retained; affects a stated result.
- **Gap** in GSWZ at Theorem 8 proof, printed p.36 (GSWZ lines 1875–1878): the source says a determinant-order observation gives regularity and the multivariate proof is identical; it should be a coefficientwise mixed-contraction regularity argument on the specified completion; affects the proof.
- **Error** in GSWZ at (169), printed p.36: the source says the Hessian identification uses Λ in the displayed coordinate interpretation; it should be Θ_iΘ_jV=(Λ⁻¹)_ij for logarithmic t derivatives; affects the proof.
- **Gap** in GSWZ at the proof of (170), printed pp.36–37 (GSWZ lines 1904–1920): the source says the chosen formal branch detects coefficient integrality in the full square-root algebra; it should be jointly faithful reduction on all components, or an intrinsic full-algebra integrality proof; affects the proof.
- **Error** in GSWZ at (213), printed pp.43–44 (GSWZ lines 2235–2237): the source says the shifted product satisfies differences without parameter factors and the displayed covariance; it should be the shift-dependent q factors and covariance appropriate to the powered or unpowered product; affects the proof.
- **Gap** in GSWZ at Theorem 5 proof after (214), printed p.44: the source says formal q-difference uniqueness completes integral gluing; it should be preceded by integral coefficient descent and convergent reexpansion at all required prime edges, including p-divisible orders; affects the proof.
- **Error** in GSWZ at the unrestricted scalar product condition used in Theorem 5, printed pp.43–44: the source says the auxiliary γ-product has the asserted integrality without the necessary γ localization; it should be over coefficients with γ inverted; A=0,γ=5 has coefficient x³/5 at t-degree one; affects a stated result.
- **Error** in GSWZ at (216), (218)–(220), printed pp.45–46: the source says the ambient localization and unweighted residue give the stated product normalization; it should be the larger factor localization and the sign, monomial, root and q^(−c_A) factors tracked in §7.1; affects a stated result.
- **Error** in GW at (182), printed p.31 (GW line 1602): the source says the displayed finite numerator suffices for the cubic root expansion; it should be (z⁻¹+T)/δ at m=2, rather than (1+T)/δ; affects the proof.
- **Error** in GSWZ at (280), printed p.56 (GSWZ line 2780): the source says the product of the two determinant square roots has the displayed simplified reciprocal; it should be the original two-root product, whose squared denominator is 392−532α+284α²; affects a stated result.
- **Error** in GSWZ at (290), printed p.57 (GSWZ lines 2849–2863): the source says iG_m²/m equals +2 when four divides m; it should be −2; already G₄=2+2i distinguishes them; affects a stated result.
- **Misprint** in GSWZ at Proposition 3.3 and Theorem 9, printed pp.38–39 (GSWZ lines 1998–2017): the source says the generating sets range over every root of unity; it should be nontrivial roots in each factor, consistent with the stated dilogarithm domain; affects a stated result.

[r1]: packages/HabiroNahmSeries/reports/PRREVIEW-HabiroNahmSeries~1.md
