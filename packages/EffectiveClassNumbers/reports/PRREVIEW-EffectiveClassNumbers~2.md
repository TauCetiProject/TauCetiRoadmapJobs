# Review of EffectiveClassNumbers (pull request #1406 at 840c5f9)

**Verdict:** accepted

Incremental re-review of the 46 README lines changed since 532ca2c (the head r1 read). `Suggested.lean` and `metadata.toml` are unchanged; the diff outside the folder is empty. The change replaces the AL.3 "local parameter comparison" claim of r1's R01 by an explicit GL₂×GL₂ pair-factor contract, renumbers every AutomorphicLFunctionsAndLocalFactors citation to its AL.k.n target, and adds two Checks to §3.1. No blocking finding remains.

## R01 (P3) — The GL₂×GL₂ instance rests on R16.0.1's scope and API lines, not on its proof sentence

**Location:** `TauCetiRoadmap/EffectiveClassNumbers/README.md:123`: "This is the rank-two instance of R16.0.1's standard-and-pair-factor API; its additional GL₂×GL₃ comparison is not the instance used here."

**Claim:** The contract is resolvable, but the supplier states the rank-two pair-factor comparison only in its scope paragraph and API line; the sentence that says "Prove … pair-factor compatibility" names GL₂×GL₃ alone.

**Witness:** `TauCetiRoadmap/GL2AutomorphicRepresentationsAndTransfer/README.md` at its open head: lines 436–441 prove the character-twisted standard factors at n=2; lines 448–454 prove "standard and GL₂×GL₃ pair-factor compatibility" for the rank-three classes; line 60 (scope) claims "the twisted standard and pair-factor comparisons … for the rank-two and rank-three finite-place parameters"; line 471 (API) says "standard and pair factors equal the WD factors"; its own R17.4.13 (line 2087) consumes "GL₂ pair-factor compatibility" from R16.0.

**Repair:** Either point the contract at the lines that carry it ("R16.0.1's API, standard and pair factors equal the Weil–Deligne factors, in the rank-two case its scope paragraph assigns to R16.0"), or, if the author prefers the stated-contract form the brief provides, write it as `What GL2AutomorphicRepresentationsAndTransfer must provide (gap:gl2-pair-factor-compatibility): for every finite extension F/ℚ_p and generic irreducible admissible π, τ of GL₂(F), L(u,π×τ) equals the tensor-product Weil–Deligne factor of their full parameters including monodromy`, with the same slug in the plan's `gaps`. The present wording is not wrong; it just leaves an implementer of R16.0.1 free to read the proof sentence narrowly. Tested instance: the split multiplicative self-pair at p = 5 (value 125/96 at u = 1) is covered by either wording and by neither of R16.0.1's explicit proof sentences alone.

## Previous findings

- R01 — repaired: README lines 123–129 state the GL₂×GL₂ contract on R16.0.1 with the kernel-of-monodromy formula, R29.4 for the compatible realization with monodromy, and AL.4.2.1 only as convention transport; §3.1 (line 778) and §3.3 (line 815) carry the matching `*Needs:*` edges; no good-prime weakening was introduced.

## Verified sound

**The changed passages.** I read every changed line at this head (scope line 27; supplier contracts lines 121–137; §2.3 lines 533 and 535; §3.1 lines 761, 778 and 780 and the two new Checks at lines 793–794; §3.3 lines 813 and 815; Layer 2 and Layer 3 Dependencies lines 751 and 893; References line 1169) and everything that cites them. No process words, pull-request numbers, LaTeX delimiters or machine paths were added; the gate's text scanners agree (every count 0).

**Supplier citations resolved at the suppliers' open heads** (GL2AutomorphicRepresentationsAndTransfer, AutomorphicLFunctionsAndLocalFactors and EllipticCurveModularity are open pull requests of the same author at merge-order positions 85, 77 and 151; this roadmap is at 230; AnalyticNumberTheoryPartI at 81 and EffectiveDiophantineMethods at 158 are also earlier). Line numbers are those of each supplier's README.

| Citation in this README | Supplier passage | What it states | Agrees? |
|---|---|---|---|
| R16.0.1 (lines 121–129, 778, 815) | GL2ART lines 400–499 | rec for every finite F/ℚ_p at n = 2 in the geometric-Frobenius convention, full Weil–Deligne parameter with monodromy, twisted standard L/ε compatibility, conductor comparison; pair-factor comparisons in the scope (line 60) and API (line 471) | yes, with the P3 caveat above |
| R29.4 "full local Weil–Deligne representation … including monodromy" (line 123) | ECM lines 1262–1267, 1344–1351, 1387–1391 | the Tate-module comparison is of the actual representations; local compatibility retains the potentially multiplicative monodromy operator; Euler polynomials are compared through the Weil–Deligne representation, not its semisimplification | yes |
| AL.3.2.3 analytic pair factors | AL line 1963 | RS local L-factor as generator of the fractional ideal, generic inputs, unramified product formula | yes |
| AL.3.3.3 archimedean realization | AL line 2008 | archimedean holomorphic multiples with strip boundedness for the tensor gamma factor | yes |
| AL.3.6.1 poles at iσ, 1+iσ; self-pair at 0 and 1 | AL line 2141 | exactly that, with absolute convergence of L^S on Re s > 1 | yes |
| AL.3.6.2 functional equation | AL line 2158 | Λ(s,π×π′) = ε Λ(1−s,π∨×π′∨) | yes |
| AL.3.6.3 boundary nonvanishing | AL line 2170 | L^S has no zeros on Re s ≥ 1, simple poles only at 1+it in the self-twist case | yes |
| AL.3.9.3 pinned niceness, consumed only outside the pole case | AL line 2260 | the entire pinned predicate; the Check there says the self-pair fails it | yes |
| AL.3.9.4 RS datum, strip bounds outside fixed neighbourhoods of poles | AL line 2270 | third bullet: "With poles present the bounds hold outside fixed neighborhoods of the polar points" | yes |
| AL.4.2.1 transport of supplied comparisons | AL line 2687 | takes ramified analytic/WD equalities and a compatible arithmetic realization as inputs; weight-2 shift 1/2 | yes; matches "consumes the ramified equalities from R16.0.1 and the compatible realization from R29.4" |
| AL.5.3.2 parity of the first nonzero Taylor term; finite order equals completed order when the gamma value is finite and nonzero | AL line 2818 | exactly that | yes |
| AL.5.4.2 twist conductor only for originally unramified π | AL line 2855 | "not a formula for arbitrary already-ramified π" | yes |

Link fragments: the nine `#al…` slugs and `#r1601-the-finite-place-local-langlands-interface` are the GitHub slugs of the headings quoted above (lower case, punctuation and the en dash dropped, spaces to hyphens); each was derived by hand from the heading text. No stale anchor (`central-sign-vanishing`, `rs-global-*`, `automorphic-l-data`, `local-conductor-test-vector-comparison`, `IsNicePinned`) remains in the README.

**Resolver leads** (`citations.md`, three Lean names): `gammaRemainder.slit_logGamma` and `gammaRemainder.stieltjes_integral` are targets of AnalyticNumberTheoryPartI §0.23a (its README lines 503 and 510 at the open head); `IsNewformOf.localPolynomial_eq` is EllipticCurveModularity's own headline (its README line 1373). None is a missing declaration.

**Gate and dependency check.** The worker's gate at this head passes every rule (build included). My own run:

```text
depcheck: 204 roadmaps, 1492 edges, 0 problem(s)
```

No UPWARD or CYCLE line. The edge count rose from r1's 1486 by the six new supplier edges (R16.0.1 and the AL targets), all pointing earlier in the order.

**Elaboration.** The two imported Tau Ceti modules were built, then `Suggested.lean` elaborated: exit 0 with exactly ten `declaration uses sorry` warnings (lines 51, 70, 117, 124, 133, 140, 156, 164, 174, 187). The `#check @name` probe of r1 was re-run on a scratch copy and reprinted all 17 declarations with the same binders; the Lean file is byte-identical to the one r1 reviewed, so the padding probe, headline inventory (ten statable headlines present, two unstatable ones named in the docstring) and signature comparison of r1 stand.

**Declared gap.** `gap:fundamental-reduced-forms-primitive` (supplier ImaginaryQuadraticClassNumber H1.3) is unchanged and still precise and minimal; the d = 12 non-example of r1 still shows "fundamental" cannot be dropped.

**Seeded sample.** The diff touches two of the fifteen sampled targets. For 3.1 I re-read O85 §2.3 (cache page 5–6, printed p. 313–314, O85 line 190 onward: the Liouville twist, the entire continuation via Shimura and Gelbart–Jacquet, Ogg's Petersson identity (2.3.3)) and DEL73 §8.12 (cache page 72, printed p. 572, DEL73 line 1972–1984: V^I = Ker(N)^{ρ(I)}, the conductor (8.12.1), L-factor and constants). Both support the passage as written; the displayed (2.3.1)–(2.3.2) are lost in the O85 extraction and were read by image in r1. For 3.3 the text is unchanged except its `*Needs:*` line; the O85 §§4.2–4.3 pp. 320–321 check of r1 stands. The other thirteen sampled targets (0.6, 1.3, 2.4, 2.10, 3.2, 3.7, 4.4, 4.5, 4.8, 5.1, 5.2, 5.3, 5.6) are untouched by the diff; r1's locator table covers them and nothing in the change cites them.

### Adversarial table

New rows carry computed values for every changed statement; rows marked (r1) carry the previous report's values for untouched statements the sample, the headlines or the changed edges touch.

| Statement | Instances tried | Values computed on the two sides | Result; change |
|---|---|---|---|
| R16.0.1 contract formula, kernel of tensor monodromy | split multiplicative p = 5: Fr = diag(1,5), N e₁ = e₀ on V_p | Fr N Fr⁻¹ = N/5, so the relation is ρ(Φ)Nρ(Φ)⁻¹ = q⁻¹N as in DEL73 8.4; on End(V_p) ker[N,·] = span{1,N} with Frobenius eigenvalues 1 and 1/5; factor ((1−5^(−u))(1−5^(−u−1)))⁻¹, value 125/96 at u = 1; the standard L(s,St×St) = L(s,1)L(s+1,1) agrees | keep; the new Check is correct |
| Same, monodromy set to zero (wrong model) | same V_p | End roots 1, 1, 5, 1/5; factor contains (1−5^(1−u))⁻¹, a pole at u = 1 | the stated law excludes the semisimple model; keep |
| End(V_p) = 1 ⊕ Sym²V_p ⊗ det⁻¹ | dimensions; good p = 5, a_p = 0 | 4 = 1 + 3; roots of V: ±i√5; End roots {1,1,−1,−1}; Sym²⊗det⁻¹ roots {−5/5, 5/5, −5/5} = {−1,1,−1} plus the trivial 1 | keep |
| Shift u ↦ u+1 from det⁻¹ | geometric Frobenius p on det | det(1−Fr p^(−u) | Sym²V⊗det⁻¹) = det(1−Fr p^(−u−1) | Sym²V); with u = 2s−1 this is L_p(Sym² f, 2s) | keep |
| Self-pair = ζ_p(u)L_p(Sym² f,u+1) at a good prime | p = 5, a_p = 0, u = 1 | left (1−1/5)⁻²(1+1/5)⁻² = 625/576; right (5/4)·(125/144) = 625/576 | keep; new Check correct |
| Good-prime correction | p = 5, a_p = 0, s = 1 | Ψ_p = (1+1/5)⁻² = 25/36; L_p(Sym²,2) = (1+1/5)⁻²(1−1/5)⁻¹ = 125/144; R_p = (4/5)(125/144)(36/25) = 1 | keep (agrees with r1) |
| Ramified quadratic twist of that good parameter | p = 5, χ ramified | Ψ_p = 1 (additive); Sym²(V⊗χ) = Sym²V since χ² = 1, End unchanged; R_p = (4/5)(125/144) = 25/36 ≠ 1 | keep; new Check correct, and it is the case r1 asked the repaired contract to cover |
| Multiplicative correction | p = 5, s = 1 | L_p(Sym²,2s) = (1−p^(−2s))⁻¹ (ker N on Sym²V is e₀² with eigenvalue 1); Ψ_p = (1−X²)⁻¹; R_p = 1−5^(−1) = 4/5 | keep (r1) |
| Nonsplit multiplicative unramified twist | a_p = −1 | Ψ_p = ((1+X)(1−X))⁻¹ = (1−X²)⁻¹, unchanged; End(V⊗χ) = End(V) | keep; the Check's "two twist characters cancel" is right |
| Wild quadratic character at 2 | χ|I of order 2 | scalar ±1 on inertia; Sym² and End of a scalar ±1 are trivial | keep |
| Unitary normalization W_π = V_p ⊗ |·|^(1/2) | good p, roots α, β with αβ = p | W_π roots α/√p, β/√p; W_π∨ roots √p/α, √p/β; pair roots α/β, 1, 1, β/α = End roots; AL.4.2.1's weight-k shift (k−1)/2 = 1/2 | keep |
| 2.3 parity adapter (only the AL anchor changed) | reflection signs ±1 | even expansion permits orders 0, 2; odd permits 1, 3 | keep (r1) |
| 2.3 twist conductor and root number | E₁₃₉; overlap at 37 | 37·139² = 714877; √(37·37²)/37 = √37 | keep (r1) |
| 3.1 simple-zero derivative | ζ(2s−1) at s = 1 | Ψ′(1) = 2L(Sym²,2)/∏R_p(1) | keep (r1) |
| 3.1 Gamma strip growth | σ = 1 vs 2 | abs(Γ(2+it)/Γ(1+it)) = √(1+t²) | keep (r1) |
| 3.2 coprime sign | odd χ, χ(N) = −1 | χ(−N) = +1 | keep (r1) |
| 3.3 restored factor at 139 | B = (1+262X²+19321X⁴)⁻¹ | X-coefficient 0, X²-coefficient −262; B′/B at 1 ≈ 0.1330372874 | keep (r1) |
| 3.6, 3.7 headlines | d = 3, 4, 23, 139, 907 | θ log d = 1.0986, 1.3863, 3.1355, 4.9345, 6.8101 against 7000h and 55h | keep (r1) |
| 0.6 norm/form identity | q = (2,1,3) | norms 4, 6 over ideal norm 2 give 2, 3 | keep (r1) |
| 0.7 integrated headline | d = 4, A = 2; d = 23, A = 12 | 1 vs 2.3562; 20 vs 45.2815 | keep (r1) |
| 1.3 kernel values | (a,m,x) = (0,2,1/2), (1,2,1/2) | log 2, 2 log 2 | keep (r1) |
| 1.8 technical headline | d = 23, h = 3 | log 23 ≤ 3C forces C ≥ 1.0452 | keep (r1) |
| 2.4 height matrices | displayed 3×3 | determinants ≈ 0.41715 and 15.3649 | keep (r1) |
| 2.10 CM value | λ = (3+√−139)/2 | λλ̄ = 37; 37¹²/λ¹² = λ̄¹² | keep (r1) |
| 2.12, 2.13 rank-three headlines | E₁₃₉, E₅₀₇₇ | L‴/6 ≈ 18.4294 and 1.7318 | keep (r1) |
| 4.4 prime sums | n = 5, 100, 10000 | S_n = 2.4111, 10.1657, 71.3257 | keep (r1) |
| 4.5 constant asymptotic | r → 0 | log((1+r²)/(1−r)²) = 2r + 2r² + O(r³), coefficient 4 | keep (r1) |
| 4.7, 4.8 headlines | d = 907, h = 3, q = 1/2; H = 1 | κ√log 907 ≈ 3.2·10⁻⁹¹ < 3; exp(2⁶⁰⁴) < 2^(2⁶⁰⁵) | keep (r1) |
| 5.1 prime discriminant | h = 3 | 2^(t−1) | 3 forces t = 1 | keep (r1) |
| 5.2 Hardy normalization | χ₋₃, t = 0 | Z(0) ≈ 0.480868 > 0 | keep (r1) |
| 5.3 three zeros | k = 17923, 115147, 123204 | Λ sign changes at the three brackets | keep (r1) |
| 5.4 Montgomery–Weinberger headline | cut points 10⁵², 10¹², 10²⁵⁰⁰ | closed ranges meet; both exceptional windows inside 52–2500 | keep (r1) |
| 5.6 small-range chain | thresholds 43, 67, 163 | 4·43³ = 318028, 4·67³ = 1203052 < 1333963, 4·163³ = 17322988 < 51599563 | keep (r1) |
| 5.8 sixteen-discriminant iff | fundamental d ≤ 907 | exactly 16 discriminants with three reduced forms | keep (r1) |

**Ownership against open work.** The GL₂×GL₂ pair-factor comparison is not built here: it is consumed from R16.0.1. I searched the three suppliers' READMEs by object (pair factor, GL₂×GL₂, Rankin) and the open-head index for a second owner; GL2AutomorphicRepresentationsAndTransfer is the only roadmap that claims it, and this README does not re-plan it. AL.4.2.1 is cited for exactly what it does (transport under supplied hypotheses). No declaration of `Suggested.lean` changed, so r1's fully-qualified-name check stands.

## Not verifiable

- **O88** is recorded as waived; cited by locator only, as in r1.
- **O85 (2.3.1)–(2.3.2)** are displayed formulas lost in the cached extraction; r1 read them by image, and I checked only the surrounding text at printed p. 313.
- **The ramified pair-factor compatibility itself** is a target of an open supplier roadmap, not a theorem at the pins; this review checks that the contract is stated precisely, with monodromy, and that the supplier claims it, not that it is proved.

## Source issues

- none new this round; the three items of r1 (O85 §2.1 reflection misprint, O85 §§4.2–4.3 restored-factor error, GZ83 Rankin L-series error corrected in GZ86 I §5) stand.
