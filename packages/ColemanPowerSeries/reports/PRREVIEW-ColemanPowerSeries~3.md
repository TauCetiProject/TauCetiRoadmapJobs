# Review of ColemanPowerSeries (pull request #1309 at f9fecdf)

**Verdict:** needs changes

## R01 (P2) — Complete the smoothing-series ownership transfer

**Location:** `TauCetiRoadmap/ColemanPowerSeries/README.md:11` and :8941; constructions at :6536 and :6557. The revised claim is “The common natural-parameter constructions have this single owner”.

**Claim:** The revised wording specifies the desired direction but does not resolve the duplicate ownership reported as R01 in the previous review. At its current indexed head, DirichletPadicLFunctions still constructs the same natural-parameter denominator and smoothed series in §1.1 and uses its own inverse-Amice specialization in §1.2.

**Witness:** `TauCetiRoadmap/DirichletPadicLFunctions/README.md:293` defines q_a[n]=choose(a,n+1); :295 defines F_a=b_a/q_a. Its `Suggested.lean:123` and :131 implement both. At a=2 both roadmaps give q₂=2+T and F₂=1/(2+T).

**Exact repair:** Complete the transfer to the earlier ColemanPowerSeries: DirichletPadicLFunctions §§1.1–1.2 must consume §§2.10–2.10a here for these common objects and the Bernoulli comparison, retaining its additional moment, p-adic-parameter and analytic results. Both ownership contracts must agree. Do not introduce a reverse supplier edge. A wording-only change here cannot complete that transfer. This review makes no edits to either roadmap.

**Repair test:** The common interface gives q₂F₂=1, with F₂ coefficients 1/2, −1/4, 1/8; q₁=1 and F₁=0. At p=2,a=3 it gives F₃(0)=1. Over 𝔽₂, q₂=T is defined but the smoothing construction is excluded by the unit hypothesis. These tests preserve the intended generality.

## Previous findings

- R01 — partly repaired: README:11 and :8941 now describe required downstream consumption, but DirichletPadicLFunctions §1.1 still independently constructs the common series. The ownership conflict remains as this report’s R01.
- R02 — repaired: README:980 now says only “The underlying function is native `eval₂`”; the undeclared label is absent, and no API padding was added to Suggested.lean.
- R03 — repaired: README:255–257 and :5856–5858 supply three computed tests each, distinguishing the chosen root, relative degree, dyadic norm sign, nonfixed constants and inverse Frobenius. The extra replacements at §§0.19, 0.89 and 1.10 also compute correctly.

## Verified sound

This is an **incremental re-review of 36 changed lines since 93f18d4**, not a new full review. I read the repository README and CONTRIBUTING, the previous report, all eight diff hunks, their definitions and affected supplier contracts. The unchanged mathematical coverage is carried from [r2][r2]. The report retains its 481 numbered-target rows and six Lean rows, with fresh computations replacing nine affected rows and one additional ownership row. Carry-forward rows explicitly cite r2; finite examples test conventions and counterexamples, not universal truth.

The requested head is `f9fecdff59f439dbeac3778f849d89bf6e20ea48`. Suggested.lean is unchanged since r2. No file outside the folder is changed relative to origin/main, and the review has left the PR worktree unchanged. The changes add neither a computational algorithm nor a special-prime restriction, sorry-valued data, option override or new carrier. All five revised definition Check lists have three discriminating computations.

**Gate and elaboration.** The independent gate rerun passed all its text, shape, metadata, import, ownership-direction and file-scope counters. Because that invocation did not print a build counter, I separately ran `lake build TauCetiRoadmap.ColemanPowerSeries.Suggested`: it completed successfully. Direct `lake env lean` elaboration of Suggested.lean also succeeded; its only warnings are the three expected sorry declarations at :76, :112 and :120. The worker’s original gate likewise reports build=0 and OK.

The dependency rerun returned exactly:

```text
depcheck: 205 roadmaps, 1479 edges, 0 problem(s)
```

There is no UPWARD or CYCLE line. The merge order places IntegralIwasawaTheory at 24, ColemanPowerSeries at 26 and DirichletPadicLFunctions at 78. No dependency or ownership was moved in this review. No declared gap was assumed. Mechanical direction checking does not resolve R01’s duplicate construction.

**Signatures and padding.** I elaborated the scratch copy containing `#check @name` for all six declarations and compared every type with its README statement. The suspected dropped binders in correctedNorm_limit are present as implication arguments: the maximal-ideal equation, adic topology, residue p-Frobenius, and continuity of σ and σ⁻¹. Finite freeness, completeness, DVR, compactness and Hausdorffness also survive. The three real-bodied definitions retain the parameters needed for their meaning. No signature change is needed.

A scratch copy tried each of `simp`, `rfl` and `infer_instance` as a complete proof of each of the three admitted headlines. All nine attempts failed to close the goals. The inspected native norm and evaluation results supply ingredients, not these convergence, logarithmic-image or boundary-range conclusions. The unchanged r2 inspection of single-lemma candidates is carried forward; no new padding finding results.

| Headline from the README | Suggested.lean treatment |
|---|---|
| Corrected norm convergence, retraction and uniform precision, §§1.95,1.116,1.122–1.124 | correctedNorm_limit, :76 |
| All-prime logarithmic-derivative image, §3.35 | normFixedLogDeriv_surjective, :112 |
| All-prime Frobenius boundary range, §3.12 | psiFixedBoundary_range, :120 |
| Arithmetic interpolation and Frobenius/semilocal comparisons | Docstring names missing chosen integer-ring tower, norm limit and comparison operators |
| Bernoulli reciprocity and normalized arithmetic Coleman map | Docstring names missing arithmetic map and normalized pseudomeasure |
| Principal Coleman sequence | Docstring names missing arithmetic norm limit and map |
| Real principal circular-unit image and quotient | Docstring names missing circular closures and quotient comparison |

**Pinned declarations reopened.** The pins remain Mathlib `6b7abb3c7686292736be2955bd3eb9ebf63b456a` and Tau Ceti `a91d3aafa8cd3e6bc33dfde0d7677ed0f1625039`. The following eight declarations were inspected with their surrounding hypotheses.

| File at the pin | Declaration and relevant limitation |
|---|---|
| `Mathlib/RingTheory/Adjoin/PowerBasis.lean:63` | PowerBasis.ofAdjoinEqTop requires integrality and generation over the field; it retains the selected generator |
| `Mathlib/FieldTheory/Minpoly/IsIntegrallyClosed.lean:242` | PowerBasis.ofAdjoinEqTop' uses the integrally closed domain context, domain target and torsion-free scalar action |
| `Mathlib/RingTheory/Polynomial/Eisenstein/IsIntegral.lean:366` | mem_adjoin_of_smul_prime_pow_smul_of_minpoly_isEisensteinAt requires a prime, integral power-basis generator, integral element, fraction-field tower and Eisenstein minimal polynomial |
| `Mathlib/RingTheory/PowerSeries/Evaluation.lean:157` | eval₂Hom requires continuous coefficients, HasEval, complete Hausdorff linearly topologized receiver |
| `Mathlib/RingTheory/PowerSeries/Evaluation.lean:161` | coe_eval₂Hom is the native identity now cited in prose at §0.51; no new API theorem is needed |
| `Mathlib/RingTheory/Norm/Defs.lean:61` | Algebra.norm is determinant of multiplication; without a finite basis its total-function value can be 1 (:70), so the supplied rank-p basis matters |
| `Mathlib/RingTheory/Norm/Defs.lean:82` | norm_eq_matrix_det computes that native norm using a finite basis |
| `TauCeti/RingTheory/Norm/Units.lean:40` | TauCeti.Algebra.normUnits is Units.map of the native norm; its body imposes no finite-rank hypothesis |

**Ownership and supplier resolution.** Object searches used `roadmaps grep` over indexed open heads and main, plus the board packages and pinned source files. I read the current `roadmaps show` outputs, including the actual DirichletPadicLFunctions Lean definitions. The generic power-basis, norm and evaluation carriers retain their existing owners. The revised Checks compute on those carriers; they add no duplicate construction. R01 is the remaining overlap. The unchanged fully qualified name audit is inherited from r2.

| Current supplier or consumer passage | Contract checked |
|---|---|
| `TauCetiRoadmap/IntegralIwasawaTheory/README.md:831`, §7.1 | Basis 1,Y,…,Y^(p−1), coefficient-fixed Φ, base-valued determinant norm, all primes and finite unramified coefficients. Reconstructing coordinates (0,Y,0) at p=3 gives YΦ(Y)=Y⁴ |
| `TauCetiRoadmap/IntegralIwasawaTheory/README.md:586`, §5.0 | Bernoulli distribution, integral smoothing and normalized pseudomeasure; the new ownership wording adds no supplier claim to this section |
| `Completed/LocalFieldsRamification/README.md:726`, :773–803, Layers 0–3 | Eisenstein uniformizer, integral monogenicity and selected power-basis consequences over finite local extensions; consumed by §0.89 |
| `TauCetiRoadmap/PadicMeasuresIwasawaAlgebras/README.md:1148`, :1328, :1471–1555, §§2.1,2.3,2.5–2.6 | Amice, inverse coordinate weighting, integral coefficient extension and measure comparisons used in §2.10a |
| `TauCetiRoadmap/DirichletPadicLFunctions/README.md:293`, :295, :315, §§1.1–1.2 | Independently constructs q_a, F_a and the inverse-Amice specialization; does not yet consume ColemanPowerSeries |

Main LocalFieldsRamification and PMIA also supplied the nearby roadmap shape comparisons. The citation resolver found no unresolved cross-roadmap citation at current main/open heads. Its rerun explicitly did not check external Lean names; the relevant pinned names were therefore opened directly above. The worker’s four Lean-name leads are unchanged: the three local headlines are present in the elaborated signatures, and PMIA §2.2 supplies the planned AbstractMeasure.psiSeries (README:1307), rather than a claim that it is already pinned. Cross-roadmap mathematical inspection this round is limited to the changed passages and their contracts; the rest of r2’s audit is carried forward.

**Sources and seeded sample.** None of the 15 seeded target statements or their locators changed. Their mathematical rows are retained below: §§0.29,0.45,0.65,0.90,0.94,0.102,0.131,0.134,0.216,0.224,1.59,1.81,1.95,3.47,4.23. The new Checks preserve the same generators, scalar map and inverse-Frobenius convention, so the downstream statements require no altered hypothesis. I recomputed §1.95 using the changed §1.94 examples. I did not repeat a full source audit of untouched targets or represent r2’s different seeded locator sample as a fresh verification of these 15 locators.

For the changed passages and their comparisons I fetched the published [RJW text](https://msp.org/ent/2025/4-1/ent-v4-n1-p03-s.pdf) through the source service and read the following locators. Line numbers refer to the service’s numbered extraction; printed page numbers are used rather than its drifting page markers.

| Passage | Exact source evidence | Assessment |
|---|---|---|
| §§0.8,0.19 and their coordinate consequences | RJW line 2718, especially line 2723; §9 pp.161–163. RJW line 2821, Lemma 10.1 p.164. RJW line 2934 and line 2943, Lemma 10.9 p.167 | Source assumes odd p and gives total ramification, unit lifting and X^p−ρ. The all-prime native basis adapters and explicit dyadic calculations are correctly marked deductions |
| §1.10 | RJW line 2915, Lemma 10.8 and proof p.167 | Degree-p Frobenius algebra supports the coordinate convention; the source’s root-translation descent gap is not needed for the three basis calculations |
| §§2.10–2.10a and ownership comparison | RJW line 1636, Proposition 4.4 p.137; line 1649, Definition 4.5 p.137 | Integral smoothing and inverse-Amice convention agree. The natural-parameter arbitrary-ring definition is an algebraic extension, not attributed verbatim to the source |
| §§1.94–1.95 | Coleman §IV, equations (2)–(4), Lemma 13 p.103 | Source service returned uncertified; original not read. Matrix, Teichmüller and finite-iterate computations below are independent checks |

No manifest was edited. The initial publisher-class lookup failure for RJW was resolved by fetching the open publisher PDF; there is no outstanding reference request. The two source issues encountered again in these passages are listed at the end.

**Adversarial values.** Y=1+T, ρ_n has order p^(n+1), π_n=ρ_n−1, and norm values belong to the base series ring. “Carried [r2]” marks an unchanged prior calculation, not a fresh full review. “Recomputed” marks this review’s calculations. The ownership row tests agreement of objects; its defect is two owners, not a false numerical identity.

[r2]: PRREVIEW-ColemanPowerSeries~2.md

| Statement | Instances tried | Computed values on both sides / negative control | Result; change |
|---|---|---|---|
|0.1|p=2,z=−1,w=i|ord(w)=4=2²; starting z=1 permits w=1 of order 1|Carried [r2][r2]; unchanged|
|0.2|p=2 and p=3|i²=−1; (ζ₉²)³=ζ₃²≠ζ₃; ζ₉³=(ζ₉⁴)³=ζ₃ although ζ₉≠ζ₉⁴|Carried [r2][r2]; unchanged|
|0.3|p=3,n=0|ρ₁³=ρ₀ on both sides|Carried [r2][r2]; unchanged|
|0.4|p=2,n=0,1|orders 2,4 = 2¹,2²|Carried [r2][r2]; unchanged|
|0.5|p=2,3,n=0|fields ℚ₂,ℚ₃(ζ₃); degrees 1,2|Carried [r2][r2]; unchanged|
|0.6|p=2,n=0|included −1=i²=−1|Carried [r2][r2]; unchanged|
|0.7|p=2,n=0|relative degree 2/1=2|Carried [r2][r2]; unchanged|
|0.8|p=2,n=0; p=3,n=0|repr(i²)=(−1,0); repr(1+2i)=(1,2), versus (1,−2) for basis (1,−i); repr(ρ₁³)=(ρ₀,0,0); ranks 3 relative,6 absolute|Recomputed; three Checks repaired|
|0.9|p=2,n=0|generator i=i; inverse generator −i≠i|Carried [r2][r2]; unchanged|
|0.10|p=3,n=0|relative dimension 6/2=3|Carried [r2][r2]; unchanged|
|0.11|p=2,n=0|minpoly(i)=X²+1=X²−ρ₀|Carried [r2][r2]; unchanged|
|0.12|p=2,n=0|N(i)=i(−i)=1=−ρ₀|Carried [r2][r2]; unchanged|
|0.13|p=2,n=0|N(i−1)=2=−π₀|Carried [r2][r2]; unchanged|
|0.14|p=2,ρ=i|i²+1=0; monic constant 1|Carried [r2][r2]; unchanged|
|0.15|p=3,n=0|polynomial T²+3T+3; constant 3,degree 2|Carried [r2][r2]; unchanged|
|0.16|p=3,x=1/3 and 0|k=1 gives 1∈ℤ₃[π]; k=0 fails for 1/3; 3⁰0=0|Carried [r2][r2]; unchanged|
|0.17|p=2,n=0|integral closure ℤ₂; 1 integral,1/2 not integral|Carried [r2][r2]; unchanged|
|0.18|p=2,n=0|integral root value −1; residue 1|Carried [r2][r2]; unchanged|
|0.19|p=2,n=0,1; p=3,n=0|repr(π₀)=(−2), root coordinate (−1); π₀²=−3−3π₀ gives (−3,−3); repr(i)=(1,1) in (1,i−1), versus (0,1) in (1,i)|Recomputed; three Checks repaired|
|0.20|p=3,n=0|generator π=ζ₃−1; root ζ₃≠π|Carried [r2][r2]; unchanged|
|0.21|p=3,n=0|minpoly π=T²+3T+3; evaluation 0|Carried [r2][r2]; unchanged|
|0.22|p=3,n=0,1|dimensions 2,6 = (3−1),3(3−1)|Carried [r2][r2]; unchanged|
|0.23|p=2,n=0|2=−π₀ belongs to (π₀)|Carried [r2][r2]; unchanged|
|0.24|p=3,n=0|red(2+π)=2; red(π)=0|Carried [r2][r2]; unchanged|
|0.25|p=3,c=5|red(5)=2=5 mod 3|Carried [r2][r2]; unchanged|
|0.26|p=3,n=0|red(ζ₃)=red(1+π)=1|Carried [r2][r2]; unchanged|
|0.27|p=3,n=0|π↦0,2↦2; π∈kernel,2∉kernel|Carried [r2][r2]; unchanged|
|0.28|p=3,n=0|quotient representatives 0,1,2; cardinal 3=card 𝔽₃|Carried [r2][r2]; unchanged|
|0.29|p=3,n=0|π²=−3(1+π)∈(3)|Carried [r2][r2]; unchanged|
|0.30|p=3,n=0|O/(π)=𝔽₃; 2 inverse 2|Carried [r2][r2]; unchanged|
|0.31|p=3,n=0|π²∈M implies π∈M; quotient field has only maximal ideal 0|Carried [r2][r2]; unchanged|
|0.32|p=2,n=0|local ring ℤ₂; maximal ideal (2)=(−2)|Carried [r2][r2]; unchanged|
|0.33|p=3,n=0|canonical maximal ideal (π), not (3)=(π²)|Carried [r2][r2]; unchanged|
|0.34|p=3,n=0|O is free ℤ₃-module of rank 2|Carried [r2][r2]; unchanged|
|0.35|p=2,n=0|ℤ₂ is DVR,π=−2 nonzero nonunit|Carried [r2][r2]; unchanged|
|0.36|p=3,n=0|v(π)=1; v(π²)=2 excludes π² as prime|Carried [r2][r2]; unchanged|
|0.37|p=3,n=0|residue 𝔽₃ has 3 elements; red(ζ)=1|Carried [r2][r2]; unchanged|
|0.38|p=3,n=0|red(2)=2 gives unit; red(π)=0 gives nonunit|Carried [r2][r2]; unchanged|
|0.39|p=2,n=0; p=3|P=T+2 evaluates0,constant2 nonunit; constant2 at p=3 evaluates unit2|Carried [r2][r2]; unchanged|
|0.40|p=3,u=ζ₃|lift 1+T degree 1<2; constant 1 unit|Carried [r2][r2]; unchanged|
|0.41|p=3,u=ζ₃|polynomial series 1+T evaluates to ζ₃|Carried [r2][r2]; unchanged|
|0.42|p=3,n=0|extended norm of 3=1/3=base norm|Carried [r2][r2]; unchanged|
|0.43|p=2,n=0|integral root −1 has order 2; square 1|Carried [r2][r2]; unchanged|
|0.44|p=3,n=0|norms 1 and 3^(−1/2)≤1; norm(1/3)=3>1|Carried [r2][r2]; unchanged|
|0.45|p=3,n=0|coordinate model ℤ₃²; π has coordinates (0,1)|Carried [r2][r2]; unchanged|
|0.46|p=3,u=2|norm(u)=1=norm(u⁻¹); π norm<1|Carried [r2][r2]; unchanged|
|0.47|p=3,n=0|π²=3u with u=−ζ₃, a unit|Carried [r2][r2]; unchanged|
|0.48|p=3,n=0|norm(π)=3^(−1/2); square=1/3|Carried [r2][r2]; unchanged|
|0.49|p=2,n=0|norm(π)=1/2<1|Carried [r2][r2]; unchanged|
|0.50|p=2,n=0|(π)^r=(2)^r; ball radius 2^(−r)|Carried [r2][r2]; unchanged|
|0.51|p=2,n=0|eval(T)=−2=π₀; eval(T+2)=0; eval(1+T)=−1=ρ₀; eval(ΣT^k)=1/3 and (2−ρ₀)/3=1|Recomputed; API label removed, formula unchanged|
|0.52|p=3,P=1+T|polynomial and series evaluations both ζ₃|Carried [r2][r2]; unchanged|
|0.53|p=2,n=0,u=3|constant unit series 3 evaluates to 3|Carried [r2][r2]; unchanged|
|0.54|p=3,n=0,x=π⁻¹|norm=3^(1/2)=norm(π)^(−1)|Carried [r2][r2]; unchanged|
|0.55|p=3,n=0|norms of π⁻¹,1,π are 3^(1/2),1,3^(−1/2)|Carried [r2][r2]; unchanged|
|0.56|p=3,n=0|π integral,norm<1; π⁻¹ not integral,norm>1|Carried [r2][r2]; unchanged|
|0.57|p=2,n=0|both valuation-integer carriers contain 2,exclude 1/2|Carried [r2][r2]; unchanged|
|0.58|p=3,n=0|both rings contain π,exclude π⁻¹|Carried [r2][r2]; unchanged|
|0.59|p=3,n=0|2 unit,norm 1; π nonunit,norm<1|Carried [r2][r2]; unchanged|
|0.60|p=3,n=0|π in maximal ideal,norm<1; 2 outside,norm 1|Carried [r2][r2]; unchanged|
|0.61|p=3,n=0|red(π)=0,norm<1; red(2)=2,norm 1|Carried [r2][r2]; unchanged|
|0.62|p=3,n=0,r=2|π² on boundary norm=1/3; π outside|Carried [r2][r2]; unchanged|
|0.63|p=3,n=0|(3)=(π²), whereas π∉(3)|Carried [r2][r2]; unchanged|
|0.64|p=2,n=0|balls 2^rℤ₂=(π)^r shrink to {0}|Carried [r2][r2]; unchanged|
|0.65|p=2,n=0,x=1+2^m i|coordinates (1,2^m)→(1,0)|Carried [r2][r2]; unchanged|
|0.66|p=2,x=1+2^m i|norm=1+2^(2m)→1=N(1)|Carried [r2][r2]; unchanged|
|0.67|p=2,n=0,x=i−1|integral and field norms both 2|Carried [r2][r2]; unchanged|
|0.68|p=2,x=1+2^m i|integral norms 1+2^(2m)→1|Carried [r2][r2]; unchanged|
|0.69|p=2,L=ℚ₂(i),u_m=1+2^m|N(u_m)=(1+2^m)²→1; N(u_m⁻¹)=(1+2^m)⁻²→1; N(−1)=1|Carried [r2][r2]; unchanged|
|0.70|p=3,F=2+T|red ε(F)=2=red F[0]|Carried [r2][r2]; unchanged|
|0.71|p=3,x_m=2+3^m|residues 2 for m≥1; limit residue 2|Carried [r2][r2]; unchanged|
|0.72|p=2|unsigned (−1,i) fails N(i)=1≠−1; signed (1,−i) works|Carried [r2][r2]; unchanged|
|0.73|p=3|equalizer residual at constant 2 is 8/2=4≠1; at 1 it is 1|Carried [r2][r2]; unchanged|
|0.74|p=3|compatible constant −1 tower lies in closed product; constant 2 fails|Carried [r2][r2]; unchanged|
|0.75|p=3,F_m=1+3^m T|ε(F_m)−1=3^mπ→0|Carried [r2][r2]; unchanged|
|0.76|p=2,3,5|sections1,−1,ω(2); residues1,2,2; ω(2)^4=1 whereas 2^4=16≠1|Carried [r2][r2]; unchanged|
|0.77|p=5,a=2|ρ↦ρ²; inverse action would give ρ³≠ρ²|Carried [r2][r2]; unchanged|
|0.78|p=3,a=−1|N(ρ₁⁻¹)=ρ₀⁻¹=σ(Nρ₁)|Carried [r2][r2]; unchanged|
|0.79|p=2,n=0|comparison sends −2 to −2,not its inverse −1/2|Carried [r2][r2]; unchanged|
|0.80|p=2,n=0|v(π)=v(−2)=1|Carried [r2][r2]; unchanged|
|0.81|p=3,n=1|v(3)=6=3(3−1)|Carried [r2][r2]; unchanged|
|0.82|p=3,n=0,x=3|normalized abs 1/9=(1/3)²|Carried [r2][r2]; unchanged|
|0.83|p=3,2,u=−1|principal false,true; residues 2,1|Carried [r2][r2]; unchanged|
|0.84|p=3,r=2|both native and scalar Teich lifts −1|Carried [r2][r2]; unchanged|
|0.85|p=2,n=0|E(−1)=E; p=3 gives degree 2|Carried [r2][r2]; unchanged|
|0.86|p=3,unramified O|T²+3T+3 Eisenstein; over ramified e=2 constant valuation 2 fails|Carried [r2][r2]; unchanged|
|0.87|p=3,n=0,1|degrees 2,6 independently of unramified f|Carried [r2][r2]; unchanged|
|0.88|p=2,n=0|π=−2 has valuation 1 in unramified E|Carried [r2][r2]; unchanged|
|0.89|O finite unramified; p=2,3,n=0|repr(π₀)=(−2) at2; π₀²=−3−3π₀ and repr(ρ₀)=(1,1) at3; root basis gives (0,1)|Recomputed; three Checks repaired|
|0.90|p=2,3; E unramified|[E(i):E]=2 at p=2; at p=3 [E₁:E₀]=6/2=3|Carried [r2][r2]; unchanged|
|0.91|p=3,scalar c=2|unit norm 8=2³|Carried [r2][r2]; unchanged|
|0.92|p=3,f=2,n=0|unramified quadratic ∩ ramified quadratic=ℚ₃; composite degree 4|Carried [r2][r2]; unchanged|
|0.93|p=3,f=2|σ(c) reduces to r³≠r for r of order 8; σ(ρ)=ρ|Carried [r2][r2]; unchanged|
|0.94|k=𝔽₉,ord r=8|residues r,r³,r; (r³)³=r|Carried [r2][r2]; unchanged|
|0.95|E=ℚ₂|units are odd,closed in ℤ₂; equalizers closed; tuple 1 lies in limit|Carried [r2][r2]; unchanged|
|0.96|two identical factors|e₁=(1,0),e₂=(0,1); e₁e₂=0,e₁+e₂=1|Carried [r2][r2]; unchanged|
|0.97|p=2,n=0|relative polynomial X²+1; evaluation at i=0|Carried [r2][r2]; unchanged|
|0.98|p=2,n=0|N(i)=1=−ρ₀|Carried [r2][r2]; unchanged|
|0.99|p=3,transport σ|c↦σc,ρ↦ρ; inverse-root extension fails root law|Carried [r2][r2]; unchanged|
|0.100|p=3,two factors,c=(2,−1)|norm=(8,−1)|Carried [r2][r2]; unchanged|
|0.101|p=3,f=2,n=0|relative e=2,f_relative=1,degree 2|Carried [r2][r2]; unchanged|
|0.102|k=𝔽₉|residue map sends c to r,ρ to 1|Carried [r2][r2]; unchanged|
|0.103|p=3,f=2,n=1|e(E₁/E)=6=d₁; residue degree1; [E₁:E]=6|Carried [r2][r2]; unchanged|
|0.104|p=2,n=0,1|signed coordinates 1,−i; N(−i)=1 but (−i)²=−1|Carried [r2][r2]; unchanged|
|0.105|p=2,n=0|N(−i)=1=sρ₀|Carried [r2][r2]; unchanged|
|0.106|p=3,f=2,n=1|absolute e=6,not total degree 12|Carried [r2][r2]; unchanged|
|0.107|p=3,f=2,n=1|absolute residue degree 2,not 12|Carried [r2][r2]; unchanged|
|0.108|p=3,f=2|card residue=9=3²; units=8|Carried [r2][r2]; unchanged|
|0.109|p=3,f=2,n=0,x=3|normalized abs 3^(−4)=(1/3)^4|Carried [r2][r2]; unchanged|
|0.110|p=3,f=2,n=0|v(3)=2=d₀,not 4|Carried [r2][r2]; unchanged|
|0.111|p=3,f=2,n=0|normalized abs_E₀(3)=1/81=(normalized abs_E(3))²=(1/9)²|Carried [r2][r2]; unchanged|
|0.112|p=3,x=π|underlying comparison value π=π|Carried [r2][r2]; unchanged|
|0.113|p=3,n=0|image of (π)=(π); (3)=(π²) differs|Carried [r2][r2]; unchanged|
|0.114|p=3,x=2+π|both residue maps give 2|Carried [r2][r2]; unchanged|
|0.115|p=3,u=ζ₃|both field values ζ₃|Carried [r2][r2]; unchanged|
|0.116|p=3,u=ζ₃|residue 1 and u−1=π∈maximal ideal|Carried [r2][r2]; unchanged|
|0.117|p=3,u=ρ₁|both principal-unit norm maps give ρ₀|Carried [r2][r2]; unchanged|
|0.118|p=2,n=0|E₀=E(−1)=E|Carried [r2][r2]; unchanged|
|0.119|p=2,n=0; p=3,n=0|−1=i² lies in E₁; ρ₀=ρ₁³ lies in E₁|Carried [r2][r2]; unchanged|
|0.120|E=ℚ₃,n=0|E₀=K₀=ℚ₃(ζ₃)|Carried [r2][r2]; unchanged|
|0.121|p=3,n=0|generator π=ζ₃−1,not ζ₃|Carried [r2][r2]; unchanged|
|0.122|p=3,n=1|basis length 6=3(3−1)|Carried [r2][r2]; unchanged|
|0.123|p=3,n=0,x=π²|unique coordinates (−3,−3)|Carried [r2][r2]; unchanged|
|0.124|k=𝔽₉,scalar c|both residues r; σ-twisted alternative gives r³|Carried [r2][r2]; unchanged|
|0.125|p=3,n=0|residue of ρ=1|Carried [r2][r2]; unchanged|
|0.126|k=𝔽₉|inclusion sends residue r to r,not r³|Carried [r2][r2]; unchanged|
|0.127|p=3,c=2|field value of unit norm 8=field norm|Carried [r2][r2]; unchanged|
|0.128|p=3,c=2|N(c)=8=2³|Carried [r2][r2]; unchanged|
|0.129|p=3,c=2,two steps|N(Nc)=512=2⁹|Carried [r2][r2]; unchanged|
|0.130|p=2,k=𝔽₈,ord r=7|σ(c) has residue r²; inverse has r⁴≠r²; σ fixes chosen root|Carried [r2][r2]; unchanged|
|0.131|p=3|fixed-root σ sends ρ to ρ,not ρ⁻¹|Carried [r2][r2]; unchanged|
|0.132|p=3|σ(ρ₁³)=ρ₁³=ρ₀|Carried [r2][r2]; unchanged|
|0.133|f=2,k=𝔽₉|σ²(r)=r⁹=r; σ(r)=r³≠r|Carried [r2][r2]; unchanged|
|0.134|k=𝔽₉|res σ(c)=r³=(res c)³|Carried [r2][r2]; unchanged|
|0.135|k=𝔽₉|residue transition (r³)³=r|Carried [r2][r2]; unchanged|
|0.136|p=2|signed towers at exponents 0,1 differ at level 1: 1≠−i|Carried [r2][r2]; unchanged|
|0.137|E=ℚ₃|twisted residues (−1)³=−1; base tower unchanged|Carried [r2][r2]; unchanged|
|0.138|p=3|sρ=ρ since (−1)²=1|Carried [r2][r2]; unchanged|
|0.139|p=2,n=0,1|sρ=1,−i|Carried [r2][r2]; unchanged|
|0.140|p=2,n=0,1|signed orders 1,4; unsigned orders 2,4|Carried [r2][r2]; unchanged|
|0.141|two factors|pr₁(2,3)=2,pr₂(2,3)=3|Carried [r2][r2]; unchanged|
|0.142|two factors|e₁²=e₁,e₁e₂=0|Carried [r2][r2]; unchanged|
|0.144|transport σ,k=𝔽₉|scalar residue r↦r³|Carried [r2][r2]; unchanged|
|0.145|transport σ,p=3|selected root ρ↦ρ|Carried [r2][r2]; unchanged|
|0.146|p=3,n=0|maps agreeing on c and ρ agree on c₀+c₁ρ|Carried [r2][r2]; unchanged|
|0.147|p=3,two factors|norm(2,−1)=(8,−1)|Carried [r2][r2]; unchanged|
|0.148|p=3,scalar tuple(2,−1)|coordinate cubes (8,−1)|Carried [r2][r2]; unchanged|
|0.149|p=3,two steps|first norm coordinate 2→8→512=2⁹|Carried [r2][r2]; unchanged|
|0.150|p=2,n=0|evaluation point −2 has norm 1/2<1; 1 has norm 1|Carried [r2][r2]; unchanged|
|0.151|p=2,n=0|Gal(E(i)/E)={i↦i,i↦−i},order 2|Carried [r2][r2]; unchanged|
|0.152|k=𝔽₉|norm residue r³≠r for ord r=8|Carried [r2][r2]; unchanged|
|0.153|k=𝔽₃|r³=r; r=2 gives 8 mod 3=2|Carried [r2][r2]; unchanged|
|0.154|p=3,Teich −1|residues all 2=2|Carried [r2][r2]; unchanged|
|0.155|p=3,Teich −1|level-zero residue 2; principal identity residue 1|Carried [r2][r2]; unchanged|
|0.156|p=3|root tower residues 1; stationary −1 residues 2,excluded|Carried [r2][r2]; unchanged|
|0.157|p=3|roots satisfy u_n−1=π_n; −1−1=−2 is unit,excluded|Carried [r2][r2]; unchanged|
|0.158|p=3|residue kernel is preimage {1}; root tower in,−1 out|Carried [r2][r2]; unchanged|
|0.159|p=3,a=3|coordinates 1,ρ₀; nonzero exponent detected at level 1|Carried [r2][r2]; unchanged|
|0.160|p=3,r=2|N(−1)=−1; residue 2=2|Carried [r2][r2]; unchanged|
|0.161|p=3|split(−1)=(2,1),split(ρ)=(1,ρ)|Carried [r2][r2]; unchanged|
|0.162|p=3,a=−1|root tower exponent 1↦−1; Teich −1 fixed|Carried [r2][r2]; unchanged|
|0.163|p=3,a_m=1+3^m,u_m=t(1+3^m)|action=t((1+3^m)²)→t(1); at level n, m≥n+1 gives ρ_n on both sides|Carried [r2][r2]; unchanged|
|0.164|p=3|U¹/U² has 3 elements; full residue units have 2,excluded|Carried [r2][r2]; unchanged|
|0.165|p=3,root tower u|0•u=1,2•u=u²|Carried [r2][r2]; unchanged|
|0.166|p=3|δ₋₁•t(1)=t(−1),δ₁•t(1)=t(1)|Carried [r2][r2]; unchanged|
|0.167|k=𝔽₉,ord r=8|res Nω(r)=r³; res ω(r)=r≠r³|Carried [r2][r2]; unchanged|
|0.168|p=5,a=2,n=0|ρ↦ρ²; scalar 3↦3|Carried [r2][r2]; unchanged|
|0.169|k=𝔽₉,c=ω(r)|both Nσ(c),σN(c) have residue r⁹=r|Carried [r2][r2]; unchanged|
|0.170|k=𝔽₈|starting r,next r⁴; (r⁴)²=r; forward r² would fail|Carried [r2][r2]; unchanged|
|0.171|k=𝔽₉|t(r) principal iff r=1; signed dyadic roots have residue 1|Carried [r2][r2]; unchanged|
|0.172|k=𝔽₉|t(r) residues r,r³,r; k=𝔽₈ instead gives r,r⁴,r²|Carried [r2][r2]; unchanged|
|0.173|u=t(r)v,res v=1|split(u)=(r,v),inverse=t(r)v; r≠1 excluded from principal part|Carried [r2][r2]; unchanged|
|0.174|p=3,k=𝔽₉|first principal quotient size 9=3²; residue-unit size 8 excluded|Carried [r2][r2]; unchanged|
|0.175|signed dyadic tower u|0•u=1,2•u=u²; level 1 values 1,−1|Carried [r2][r2]; unchanged|
|0.176|p=2|t(0) level 1=1,t(1) level 1=−i|Carried [r2][r2]; unchanged|
|0.177|two factors,p=3|(ρ,1) norm transitions (ρ₀,1)|Carried [r2][r2]; unchanged|
|0.178|p=2,n=0|N(1−i)=2=1−ρ₀; N(i)=1≠ρ₀|Carried [r2][r2]; unchanged|
|0.179|p=2,a=−1,n=0|N(−i)=1=σ(Ni); at p=3 both sides ρ₀⁻¹|Carried [r2][r2]; unchanged|
|0.180|two factors,p=3|(ρ,1) principal; (ρ,−1) not principal|Carried [r2][r2]; unchanged|
|0.181|two factors|shuffled tuple ((ρ_n,1))↔((ρ_n),(1)); inverse returns same entries|Carried [r2][r2]; unchanged|
|0.182|two factors,k=𝔽₉|Frobenius (r,s)↦(r³,s³); e₁ fixed|Carried [r2][r2]; unchanged|
|0.183|two factors|split(t(r),v)=((r,1),(1,v)); inverse returns (t(r),v)|Carried [r2][r2]; unchanged|
|0.184|p=5,a=2|scalar 3 fixed,root squared|Carried [r2][r2]; unchanged|
|0.185|p=5,a=2|ρ↦ρ²≠ρ³ (inverse convention)|Carried [r2][r2]; unchanged|
|0.186|k=𝔽₉,a=2|both composites cρ↦σ(c)ρ²|Carried [r2][r2]; unchanged|
|0.187|k=𝔽₉|coefficient σ changes r→r³; cyclotomic action leaves r unchanged|Carried [r2][r2]; unchanged|
|0.188|p=3|δ₂•t(1)=t(2)=2•t(1)|Carried [r2][r2]; unchanged|
|0.189|p=2,a=3,n=1|σ₃(−i)=i=(−i)³|Carried [r2][r2]; unchanged|
|0.190|S₃ permutes three identical factors|(12)(23)e₁=e₂,reverse order gives e₃|Carried [r2][r2]; unchanged|
|0.191|three factors,p=3|δ_(12) swaps (t(1),1,1) to (1,t(1),1)|Carried [r2][r2]; unchanged|
|0.192|two factors|(a,b)=(1,0) maps to (t(1),1),distinct from (1,t(1))|Carried [r2][r2]; unchanged|
|0.193|p=5,a=b=2|σ₂σ₂ρ=ρ⁴=σ₄ρ|Carried [r2][r2]; unchanged|
|0.194|k=𝔽₉|t(r) belongs iff r=1; residues r,r³ verify both directions|Carried [r2][r2]; unchanged|
|0.195|p=2|t(0),t(1) differ in coordinate 1: 1 versus −i|Carried [r2][r2]; unchanged|
|0.196|k=𝔽₉|principal fiber res⁻¹{1}; t(r≠1) lies in open complement|Carried [r2][r2]; unchanged|
|0.197|k=𝔽₈,n=1|t(r)_1=ω(r⁴),not ω(r²)|Carried [r2][r2]; unchanged|
|0.198|k=𝔽₈,ord r=7|level-zero residue of t(r)=r; next residue r⁴ squares to r|Carried [r2][r2]; unchanged|
|0.199|k=𝔽₃|inverse Frobenius fixes 2; section stationary −1|Carried [r2][r2]; unchanged|
|0.200|u=t(r)v|first coordinate r=res u₀|Carried [r2][r2]; unchanged|
|0.201|u=t(r)v|second coordinate t(r)⁻¹t(r)v=v|Carried [r2][r2]; unchanged|
|0.202|(r,v)|inverse then split gives (r,v); product t(r)v|Carried [r2][r2]; unchanged|
|0.203|k=𝔽₉,u=t(r)|σ action residue r³ at level 0|Carried [r2][r2]; unchanged|
|0.204|k=𝔽₉|σt(r)=t(r³); cyclotomic a fixes t(r)|Carried [r2][r2]; unchanged|
|0.205|k=𝔽₉|both action orders send cρ to σ(c)ρ^a|Carried [r2][r2]; unchanged|
|0.206|p=2,a=1,n=0,1|coordinates 1,−i; exponent residue gives same|Carried [r2][r2]; unchanged|
|0.207|p=2,a=0,1|level-zero coordinates both 1; level-one coordinates 1≠−i|Carried [r2][r2]; unchanged|
|0.208|p=2,a=2,b=1,n=1|t(ab)=−1=t(b)²|Carried [r2][r2]; unchanged|
|0.209|two factors,p=3|N(ρ₁,1)=(ρ₀,1)|Carried [r2][r2]; unchanged|
|0.210|two factors|(t(1),1) differs from (1,t(1)) at component 1|Carried [r2][r2]; unchanged|
|0.211|two factors|each residual equation for (ρ,1) equals (1,1)|Carried [r2][r2]; unchanged|
|0.212|two factors|nth projection of shuffled (u,v)=(u_n,v_n)|Carried [r2][r2]; unchanged|
|0.213|p=3,two factors|shuffle and norm both give (ρ₀,1)|Carried [r2][r2]; unchanged|
|0.214|p=3|(ρ,1) principal both sides; (ρ,−1) fails both|Carried [r2][r2]; unchanged|
|0.215|k=𝔽₉,two factors|first residue of σ(r,s)=r³|Carried [r2][r2]; unchanged|
|0.216|two factors|σ(e₁)=(1³,0³)=e₁|Carried [r2][r2]; unchanged|
|0.217|k=𝔽₉|each residue σN(r)=r⁹=Nσ(r)|Carried [r2][r2]; unchanged|
|0.218|swap two factors|first coordinate of (u,v) after action v|Carried [r2][r2]; unchanged|
|0.219|swap two factors|e₁↦e₂; coefficient Frobenius instead fixes e₁|Carried [r2][r2]; unchanged|
|0.220|p=3,swap|N swap(2,−1)=(−1,8)=swap N(2,−1)|Carried [r2][r2]; unchanged|
|0.221|two 𝔽₈ factors,initial(r,s)|split residue=(r,s); next section residues(r⁴,s⁴) square to(r,s); forward gives(r⁴,s⁴)≠(r,s)|Carried [r2][r2]; unchanged|
|0.222|two factors|inverse ((r,s),(v,w))=(t(r)v,t(s)w)|Carried [r2][r2]; unchanged|
|0.223|two factors,principal(v,w)|split(v,w)=((1,1),(v,w)); inverse returns(v,w)|Carried [r2][r2]; unchanged|
|0.224|p=3|(ρ,1) all residues 1; (ρ,−1) second residue 2|Carried [r2][r2]; unchanged|
|0.225|two factors|(t(1),1) and (1,t(1)) separated by first coordinate|Carried [r2][r2]; unchanged|
|0.226|two factors,p=3 versus2|p=3: res(1,−1)=(1,2)≠(1,1),excluded; p=2: residue(1,1),included|Carried [r2][r2]; unchanged|
|0.227|p=3,n=0|action constant on a+3ℤ₃; a=1 sends ρ→ρ|Carried [r2][r2]; unchanged|
|0.228|f=2|σ exponent mod 2 gives id,σ; cyclotomic exponent mod p^(n+1)|Carried [r2][r2]; unchanged|
|0.229|f=2,k=𝔽₉|σ²r=r⁹=r; σr≠r|Carried [r2][r2]; unchanged|
|0.230|k=𝔽₉|both actions send residue 1 to 1|Carried [r2][r2]; unchanged|
|0.231|k=𝔽₉|σ applied to residues r,r³ gives r³,r; norm relation r³=r³|Carried [r2][r2]; unchanged|
|0.232|swap two factors|norm of (v_(n+1),u_(n+1))=(v_n,u_n)|Carried [r2][r2]; unchanged|
|0.233|p=3,n=0|comparison π↦π,ρ↦ρ; scalar residue r↦r|Carried [r2][r2]; unchanged|
|0.234|p=2,n=0|supplied basis(1,i) transported to(1,i); repr(i²)=(−1,0); wrong root−i≠i|Carried [r2][r2]; unchanged|
|0.235|p=2,n=0|N(i)=1,Tr(i)=0; u=3 lifts to polynomial 3 of degree 0|Carried [r2][r2]; unchanged|
|1.1|p=2,scalar T on 1|Φ(T)=2T+T²≠T|Carried [r2][r2]; unchanged|
|1.2|p=2,F=T mod 2|coordinates (1,1),assembly 1+(1+T)=T|Carried [r2][r2]; unchanged|
|1.3|p=2,c=(−1,1)|assembly −1+Y=T|Carried [r2][r2]; unchanged|
|1.4|p=2,c=(T,0)|assembly Φ(T)=2T+T²; untreated coefficient gives T≠2T+T²|Carried [r2][r2]; unchanged|
|1.5|p=2,c_m=(2^m,0)|assembly 2^m→0|Carried [r2][r2]; unchanged|
|1.6|p=2,F=T|exact coordinates (−1,1) give error 0∈(2^k) for k=0,1,2|Carried [r2][r2]; unchanged|
|1.7|p=2,c=(2,0)|assembly 2 divisible by 2,not 4; same for coordinates|Carried [r2][r2]; unchanged|
|1.8|p=2|c=(−1,1) is unique for T; (1,1) assembles T+2≠T|Carried [r2][r2]; unchanged|
|1.9|p=2,F=T|coordinates (−1,1); F=Y² gives (Y,0)|Carried [r2][r2]; unchanged|
|1.10|p=2,3|p=2: repr(T)=(−1,1), repr(Y²)=(Y,0); wrong (0,Y) reconstructs Y³. p=3: repr(Y⁴)=(0,Y,0); wrong (0,0,Y) reconstructs Y⁵|Recomputed; three Checks repaired|
|1.11|p=3|vectors at i=0,1,2 are 1,Y,Y²|Carried [r2][r2]; unchanged|
|1.12|p=2,F=T|Φ(−1)+Φ(1)Y=−1+Y=T|Carried [r2][r2]; unchanged|
|1.13|p=2,F=Y|M=[[0,Y],[1,0]]; M²=YI|Carried [r2][r2]; unchanged|
|1.14|p=2,F=Y|N(Y)=det M=−Y|Carried [r2][r2]; unchanged|
|1.15|p=2,F=Y|N(ΦY)=N(Y²)=Y²|Carried [r2][r2]; unchanged|
|1.16|p=3,c=2|N(2)=8=2³|Carried [r2][r2]; unchanged|
|1.17|p=2,F=1,Y|traces 2,0|Carried [r2][r2]; unchanged|
|1.18|p=3,F=1,Y,Y³|traces 3,0,3Y; p·c₀ same|Carried [r2][r2]; unchanged|
|1.19|p=2,F=T|trace −2 belongs to (2); trace/2=−1|Carried [r2][r2]; unchanged|
|1.20|p=2|Y not fixed (N=−Y); −Y fixed; 1 fixed|Carried [r2][r2]; unchanged|
|1.22|p=2,3|N(Y)=−Y,Y; signs −1,+1|Carried [r2][r2]; unchanged|
|1.23|p=2,F=T|det[[-1,Y],[1,-1]]=1−Y=−T|Carried [r2][r2]; unchanged|
|1.24|p=3,c=2|N(2)=8≠2,so not member; −1 is member|Carried [r2][r2]; unchanged|
|1.25|p=3|constants 1,−1 satisfy c²=1; c=2 gives 4≠1|Carried [r2][r2]; unchanged|
|1.26|p=3,F=3T|reduction 0; F∈(3) but F∉(9)|Carried [r2][r2]; unchanged|
|1.27|p=3,F=3T|ΦF=9T+9T²+3T³,valuation minimum 1=F|Carried [r2][r2]; unchanged|
|1.28|p=3,c=1,4|inputs diff 3; norms diff 63 divisible by 3|Carried [r2][r2]; unchanged|
|1.29|p=3,c=2|N(2)=8≡2 mod 3|Carried [r2][r2]; unchanged|
|1.30|p=3,F=4|N4−1=63 has v₃=2≥1+1|Carried [r2][r2]; unchanged|
|1.31|p=3,F=4,n=2|N²4−1=262143 has v₃=3|Carried [r2][r2]; unchanged|
|1.32|p=3,F=2,n=1|N²2−N2=504 has v₃=2|Carried [r2][r2]; unchanged|
|1.33|p=2,F_m=T+2^m|coordinates (−1+2^m,1)→(−1,1)|Carried [r2][r2]; unchanged|
|1.34|p=3,c_m=1+3^m|N(c_m)=c_m³→1|Carried [r2][r2]; unchanged|
|1.35|p=3,c_m=3^m|trace 3^(m+1)→0|Carried [r2][r2]; unchanged|
|1.36|p=3,F=2|successive constants 2,8,512; differences v₃=1,2|Carried [r2][r2]; unchanged|
|1.37|p=3,F=2|limit −1 satisfies (−1)³=−1|Carried [r2][r2]; unchanged|
|1.38|p=3,F=2|errors −3,−9,−513 have valuations 1,2,3|Carried [r2][r2]; unchanged|
|1.39|p=3,F=2,n=0,1,2|precision valuations 1,2,3=n+1|Carried [r2][r2]; unchanged|
|1.40|p=2,F=Y|L(Y)=−Y; N(−Y)=−Y|Carried [r2][r2]; unchanged|
|1.41|p=3,F=G=2|L(4)=1=L(2)²|Carried [r2][r2]; unchanged|
|1.42|p=2,F=−Y|L(F)=−Y=F|Carried [r2][r2]; unchanged|
|1.43|p=3,F=2|L(F)=−1,constant unit; inverse −1|Carried [r2][r2]; unchanged|
|1.44|p=3,c_m=1+3^m|L(c_m)=1=L(1) for m≥1|Carried [r2][r2]; unchanged|
|1.45|p=2,a=Y,F=1|τ(ΦY)=2Y=Y·τ(1)|Carried [r2][r2]; unchanged|
|1.46|p=3,m=0,1,3|τ(Y^m)=3,0,3Y|Carried [r2][r2]; unchanged|
|1.47|p=3,P=1+Y|τ(P)=3=3ψ(P)|Carried [r2][r2]; unchanged|
|1.48|p=3,F=2+Y|τ(F)=6=3ψ(F)|Carried [r2][r2]; unchanged|
|1.49|p=2,F=T|c₀=−1=ψ(T)|Carried [r2][r2]; unchanged|
|1.50|p=2,F=Y²|root sum Y²+(−Y)²=2Y²=Φ(2Y)|Carried [r2][r2]; unchanged|
|1.51|A=ℚ[ε]/ε²,M=[1+ε],d=ε∂ε|d det=ε; det·Tr(M⁻¹dM)=ε; empty matrix gives 0=0|Carried [r2][r2]; unchanged|
|1.52|p=2,F=Y²,c=(Y,0)|∂F=2Y²; pΦ(∂Y)=2Y²|Carried [r2][r2]; unchanged|
|1.53|p=2,F=Y,H=diag(0,1)|2∂M+HM−MH=M=M_(∂Y)|Carried [r2][r2]; unchanged|
|1.54|p=2,a=T|structural map 2T+T²=ΦT|Carried [r2][r2]; unchanged|
|1.55|p=2,ζ=−1|τ₁ΦY=(−Y)²=Y²=iotaΦY|Carried [r2][r2]; unchanged|
|1.56|p=2,F=T,ζ=−1,i=1|τ₁T=−Y−1; translated expansion −1−Y|Carried [r2][r2]; unchanged|
|1.57|p=2|E=[[1,Y],[1,−Y]],det=−2Y≠0 but not a unit|Carried [r2][r2]; unchanged|
|1.58|p=2,F=Y|Eα(M)=[[Y,Y²],[−Y,Y²]]=diag(Y,−Y)E|Carried [r2][r2]; unchanged|
|1.59|p=2,F=Y|Φ(NY)=−Y²=Y(−Y)|Carried [r2][r2]; unchanged|
|1.60|p=2,F=Y|candidate −Y embeds as −Y²; candidate Y gives +Y²≠−Y²|Carried [r2][r2]; unchanged|
|1.61|p=2,n=0,F=Y|ε₁ΦY=i²=−1=ε₀Y|Carried [r2][r2]; unchanged|
|1.62|p=2,F=T|specialized coordinates (−1,1),value i−1|Carried [r2][r2]; unchanged|
|1.63|p=2,F=Y,n=0|matrix specializes to [[0,−1],[1,0]],multiplication by i|Carried [r2][r2]; unchanged|
|1.64|p=2,F=Y,n=0|ε₀(NY)=1=N(i)|Carried [r2][r2]; unchanged|
|1.65|p=2,unit Y|underlying unit-square values 1=1|Carried [r2][r2]; unchanged|
|1.66|p=2,F=−Y|evaluations (1,−i); N(−i)=1|Carried [r2][r2]; unchanged|
|1.67|p=3,F=Y|evaluation tower (ρ_n); coordinate norms ρ₀|Carried [r2][r2]; unchanged|
|1.68|p=3,F=−1|evaluation residue 2=F[0] mod 3|Carried [r2][r2]; unchanged|
|1.69|p=3|Y gives residue 1,−1 gives 2; principal true,false|Carried [r2][r2]; unchanged|
|1.70|p=3,P=T²+3T+3|degree 2 vanishes at π₀; at π₁ degree obstruction 2<6|Carried [r2][r2]; unchanged|
|1.71|p=3,F=T|ε_nF=π_n≠0 for all n|Carried [r2][r2]; unchanged|
|1.72|p=3,F=T,G=0|evaluations π_n≠0; zero difference yields all zeros|Carried [r2][r2]; unchanged|
|1.73|p=2,F=1,−Y|level 1 values 1,−i distinguish them|Carried [r2][r2]; unchanged|
|1.74|p=3,F−G=3^m T|evaluation norm 3^(−m)normπ≤3^(−m)|Carried [r2][r2]; unchanged|
|1.75|p=2,F=Y,n=0,k=1|ε₀NF=1=N ε₁F|Carried [r2][r2]; unchanged|
|1.76|p=3,u=root tower|lift Y already fixed; approximation error 0 at every precision|Carried [r2][r2]; unchanged|
|1.77|p=3,k=𝔽₉,c|Φc=c,Σc=σc≠c; scalar T acts by 3T+3T²+T³|Carried [r2][r2]; unchanged|
|1.78|p=2,F=T over O|coordinates (−1,1) unique; wrong (1,1) adds 2|Carried [r2][r2]; unchanged|
|1.79|p=3,F=Y³|coordinates (Y,0,0)|Carried [r2][r2]; unchanged|
|1.80|p=3|O-series basis 1,Y,Y²,rank 3 independent of f|Carried [r2][r2]; unchanged|
|1.81|O finite unramified,p=3|coordinates of 3^mY tend (0,0,0)|Carried [r2][r2]; unchanged|
|1.82|p=3,c=ω(r)|N(c)=c³=σc|Carried [r2][r2]; unchanged|
|1.83|p=3,F=1,Y,Y³|τ values3,0,3Y; p c₀ gives3,0,3Y,not3Y³|Carried [r2][r2]; unchanged|
|1.84|p=3,F=cY³|τ(F)=3cY=3c₀(F)|Carried [r2][r2]; unchanged|
|1.85|p=3,k=𝔽₉,c|NΣc=(σc)³=Σ(c³)|Carried [r2][r2]; unchanged|
|1.86|p=2,F=Y|root product −Y²=Φ(NY)|Carried [r2][r2]; unchanged|
|1.87|p=3,F=3T over O|minimum coefficient valuation of ΦF=1=v(F)|Carried [r2][r2]; unchanged|
|1.88|k=𝔽₉,ord r=8|res Nω(r)=r³=res Σω(r),not r|Carried [r2][r2]; unchanged|
|1.89|p=3,F=4|N4−1=63,v₃=2|Carried [r2][r2]; unchanged|
|1.90|p=3,F=4,G=1|input congruence mod3; norm congruence mod9 (63)|Carried [r2][r2]; unchanged|
|1.91|p=3,c_m=1+3^m|N(c_m)−1→0|Carried [r2][r2]; unchanged|
|1.92|O unramified,p=3|ψ_O(c)=c,ψ_O(cY)=0,ψ_O(cY³)=cY|Carried [r2][r2]; unchanged|
|1.93|p=3,F=cY³|τF=3cY=3ψ_OF|Carried [r2][r2]; unchanged|
|1.94|p=2; O=ℤ₂ or unramified degree3|det[[0,Y],[1,0]]=−Y=M(Y); det diag(3,3)=9=M(3)≠3. ord(c)=7: σ⁻¹N(c)=(c²)⁴=c⁸=c; σN(c)=c⁴≠c|Recomputed; three Checks repaired|
|1.95|p=2, f=Y,3,c with ord(c)=7|Y→−Y→−Y: differences −2Y,0. 3→9→81→6561: differences6,72,6480 have v₂=1,3,4≥1,2,3. c→c: differences0|Recomputed; precision survives revised Checks|
|1.96|k=𝔽₈,Teich c of order7; p=2,Y|N(c)=c²=Σc≠c; M(c)=c; N(Y)=−Y excludesY and includes−Y|Carried [r2][r2]; unchanged|
|1.97|p=3|unit constants {c:res c≠0}; 2 in,3 out; closed finite-residue locus|Carried [r2][r2]; unchanged|
|1.98|p=3|image contains root tower; stationary 2 fails norm relation 8≠2|Carried [r2][r2]; unchanged|
|1.99|p=3,u=root tower|Y lies in every finite interpolation fiber,error 0|Carried [r2][r2]; unchanged|
|1.100|p=3,u=root tower|preimage Y; ε_nY=ρ_n|Carried [r2][r2]; unchanged|
|1.101|p=3|Col(root tower)=Y; inverse sends Y to (ρ_n)|Carried [r2][r2]; unchanged|
|1.102|p=3|fixed constant −1 maps to constant tower −1; both inverse composites −1|Carried [r2][r2]; unchanged|
|1.103|k=𝔽₉,F=cY|σ_n ε_nF=σ(c)ρ_n=ε_nΣF|Carried [r2][r2]; unchanged|
|1.104|p=2,F=Y,n=0|receiving matrix [[0,−1],[1,0]] on both carriers|Carried [r2][r2]; unchanged|
|1.105|p=2,F=Y|Nε₁Y=1=ε₀NY|Carried [r2][r2]; unchanged|
|1.106|p=2,F=Y|Trε₁Y=i−i=0=ε₀τY|Carried [r2][r2]; unchanged|
|1.107|k=𝔽₈,F=c=ω(r)|twisted evaluations c,σ⁻¹c; norm residue r=(r⁴)²|Carried [r2][r2]; unchanged|
|1.108|p=3,F=Y,σ fixes roots|corrected iterates stay Y; evaluations ρ_n|Carried [r2][r2]; unchanged|
|1.109|k=𝔽₉,twisted Teich tower|series c gives exact error 0 at every level|Carried [r2][r2]; unchanged|
|1.110|p=3,F−G=3^mT|σ preserves p; twisted error norm ≤3^(−m)|Carried [r2][r2]; unchanged|
|1.111|p=3,F=4,k=2|M²4−1=262143,v₃=3|Carried [r2][r2]; unchanged|
|1.112|O unramified,F=T|ε_nF=π_n≠0|Carried [r2][r2]; unchanged|
|1.113|O unramified,F=T,G=0|twisted evaluations π_n≠0; roots fixed by σ|Carried [r2][r2]; unchanged|
|1.114|k=𝔽₉,c≠1|twisted towers differ at level 0: c≠1|Carried [r2][r2]; unchanged|
|1.115|p=3,c_m=1+3^m|M(c_m)=c_m³→1|Carried [r2][r2]; unchanged|
|1.116|p=3,F=2|L=−1,errors −3,−9,−513; p=2,F=Y gives L=−Y|Carried [r2][r2]; unchanged|
|1.117|k=𝔽₈,u_n=σ^(−n)c|ε_nCol(u)=c=σ^n(u_n)|Carried [r2][r2]; unchanged|
|1.118|k=𝔽₉|Col(t(r))=ω(r); inverse uses residues r,r³,r|Carried [r2][r2]; unchanged|
|1.119|k=𝔽₉|split Teich component is finite/discrete; both inverse composites c=c|Carried [r2][r2]; unchanged|
|1.120|k=𝔽₉,c=ω(r)|Col(σt(r))=σc=ΣCol(t(r))|Carried [r2][r2]; unchanged|
|1.121|E=ℚ₃|σ=id,corrected norm=N; root tower series Y|Carried [r2][r2]; unchanged|
|1.122|p=3,F=2|errors v₃=1,2,3; convergence to −1|Carried [r2][r2]; unchanged|
|1.123|p=2,F=Y,n=0,1|errors −2Y,0 ∈(2),(4)|Carried [r2][r2]; unchanged|
|1.124|p=3,c_m=1+3^m|projector values all 1→1|Carried [r2][r2]; unchanged|
|2.1|R=ℤ,Y unit|ΔY=1,ΔY⁻¹=−1; zero ring gives 0=1|Carried [r2][r2]; unchanged|
|2.2|f=g=Y|Δ(Y²)=2=1+1; R=𝔽₂ gives 0=0|Carried [r2][r2]; unchanged|
|2.3|f=Y|Δ(Y⁻¹)=−1=−ΔY|Carried [r2][r2]; unchanged|
|2.4|f=Y,k=−2,0,2|logarithmic derivatives −2,0,2=kΔY|Carried [r2][r2]; unchanged|
|2.5|constant unit −1|derivative 0,Δ=0|Carried [r2][r2]; unchanged|
|2.6|char 0 versus 3|Δconstant=0; Δ(1+T³)=0 in 𝔽₃ despite nonconstant input|Carried [r2][r2]; unchanged|
|2.7|ℤ→𝔽₃,f=Y³|reduction of Δf=3→0; Δ(reduced f)=0|Carried [r2][r2]; unchanged|
|2.8|f=Y,substitution 2T+T²|Δ(Y²)=2; chain factor Y·(2+2T)/Y²=2|Carried [r2][r2]; unchanged|
|2.9|p=3,f=Y|ΔΦf=3=3ΦΔf|Carried [r2][r2]; unchanged|
|2.10|a=0,1,2,3; R=ℤ,𝔽₂,𝔽₃|q₀=0,q₁=1,q₂=2+T,q₃=3+3T+T²; coefficient definitions give the same values; q₂ mod2=T nonunit; q₃ mod3=T²|Recomputed; numerical agreement, R01 ownership remains|
|2.10a|a=1,2,3; p=2,3|F₁=0; F₂=1/2−T/4+T²/8+… and (2+T)F₂=1; F₃=1−2T/3+…; at p=2 F₃(0)=1, at p=3 a=3 excluded|Recomputed; numerical agreement, R01 ownership remains|
|2.11|a=b=2|f₄=4+6T+4T²+T³=(2+T)(2+2T+T²)|Carried [r2][r2]; unchanged|
|2.12|p=3,a=2,3|constant coefficients 2(unit),3(nonunit)|Carried [r2][r2]; unchanged|
|2.13|p=3,a=2|underlying unit series 2+T=f₂|Carried [r2][r2]; unchanged|
|2.14|a=2|Δf₂=(1+T)/(2+T)=1/2+T/4+…|Carried [r2][r2]; unchanged|
|2.15|a=2|Δf₂=1−1/(2+T)=1−F₂|Carried [r2][r2]; unchanged|
|2.16|integer a=−1|∂Y⁻¹=−Y⁻¹=aY^a|Carried [r2][r2]; unchanged|
|2.17|f=Y,a=−1|Δ(f(Y⁻¹−1))=−1=−Δf(Y⁻¹−1)|Carried [r2][r2]; unchanged|
|2.18|a=−1|f₋₁=−Y⁻¹; T f₋₁=Y⁻¹−1|Carried [r2][r2]; unchanged|
|2.19|a=−3|f₋₃=−3+6T+…; constant −3|Carried [r2][r2]; unchanged|
|2.20|R=ℤ₃,a=−1,−3|constants −1 unit,−3 nonunit|Carried [r2][r2]; unchanged|
|2.21|a=−3 over ℚ|Δf₋₃=Δf₃−3=−2+(2/3)T+…|Carried [r2][r2]; unchanged|
|2.22|a=2,R=ℤ₃→𝔽₃|cleared TF₂f₂=f₂−2=T on both sides|Carried [r2][r2]; unchanged|
|2.23|a=−1|F₋₁=−1; (a−1)−F₋₁=−1=Δf₋₁|Carried [r2][r2]; unchanged|
|2.24|p=3,a=1/2|Y^a=1+T/2−T²/8+…; ∂ coefficient T=1/4=a·a|Carried [r2][r2]; unchanged|
|2.25|p=3,f=Y,a=1/2|Δ(Y^(1/2))=1/2=aΔY|Carried [r2][r2]; unchanged|
|2.26|p=2,f=Y|τΔf=τ1=2=2Δ(NY)|Carried [r2][r2]; unchanged|
|2.27|p=2,f=Y|Δ(NY)=Δ(−Y)=1=ψ(ΔY)|Carried [r2][r2]; unchanged|
|2.28|p=2,f=−Y|Nf=f; ψΔf=ψ1=1=Δf|Carried [r2][r2]; unchanged|
|2.29|p=3,f=Y|restricted Δ gives 1; product Y² gives 2|Carried [r2][r2]; unchanged|
|2.30|p=3,f_m=Y^(3^m)|Δf_m=3^m→0=Δ1|Carried [r2][r2]; unchanged|
|2.31|p=2,F=1|boundary 1−Φ1=0; τ0=0|Carried [r2][r2]; unchanged|
|2.32|p=3,a=2,n=0|(ρ₁²)³=ρ₀²; relative polynomial X³−ρ₀²|Carried [r2][r2]; unchanged|
|2.33|p=2,a=3,n=0|N(i³−1)=2=−(ρ₀³−1)|Carried [r2][r2]; unchanged|
|2.34|p=2,a=3|f₃(i)=i,N(i)=1=f₃(−1)|Carried [r2][r2]; unchanged|
|2.35|p=2,a=3|N(1+Y+Y²)=1+Y+Y²; root product=1+Y²+Y⁴|Carried [r2][r2]; unchanged|
|2.36|p=3,a=2,3|level-zero values 1+ζ₃(unit),1+ζ₃+ζ₃²=0(nonunit)|Carried [r2][r2]; unchanged|
|2.37|p=3,c(2)|raw second moment −1/2; identity tower gives 0|Carried [r2][r2]; unchanged|
|2.38|p=3,Tate exponents 3^m|raw images all 0→0|Carried [r2][r2]; unchanged|
|2.39|p=3,c(2)|normalized second moment +1/2=−(−1/2)|Carried [r2][r2]; unchanged|
|2.40|p=3,a=2|2Col₀(c₂)(x²)=−1,2λ₂(x²)=1; Col=−Col₀ gives +1|Carried [r2][r2]; unchanged|
|2.41|p=3,a=2,F=Y|evaluated dilation ρ_n²=σ₂(ρ_n)|Carried [r2][r2]; unchanged|
|2.42|p=3,u=root tower,a=2|Col(σ₂u)=Y²=Col(u)(Y²−1)|Carried [r2][r2]; unchanged|
|2.43|principal u,p=3|Col(u²)=2Col(u); Tate u gives 0=2·0|Carried [r2][r2]; unchanged|
|2.44|dilation a=−1|Δ contributes −1,inverse weighting contributes −1; product +1|Carried [r2][r2]; unchanged|
|2.45|p=3,Tate t(1)|normalized principal module map value 0; t(2) also 0|Carried [r2][r2]; unchanged|
|3.1|p=3,f=−1|Nf=−1,Δf=0; (−1)²=1 but (−1)³≠1|Carried [r2][r2]; unchanged|
|3.2|p=2,F=T,k=0,1,2|iterates T,2T+T²,4T+6T²+4T³+T⁴|Carried [r2][r2]; unchanged|
|3.3|p=2,F=T|linear coefficients 2^n→0; constant input 1 stays 1|Carried [r2][r2]; unchanged|
|3.4|p=2,F=T|linear sum Σ2^n=−1 in ℤ₂; terms→0|Carried [r2][r2]; unchanged|
|3.5|p=2,F=T|Frobenius sum starts −T+(1/3)T²; zero input gives 0|Carried [r2][r2]; unchanged|
|3.6|p=2,F=T|partial linear sums 2^N−1→−1|Carried [r2][r2]; unchanged|
|3.7|p=2,F=T|sum h starts −T+T²/3; h−Φh has coefficients 1,0 as T|Carried [r2][r2]; unchanged|
|3.8|p=2,g=Y−Y³|ψg=0; sum fixed; first coefficients 2,1/3|Carried [r2][r2]; unchanged|
|3.9|p=2,F=T²|first nonzero coefficient after Φ is 4=2²,not 2|Carried [r2][r2]; unchanged|
|3.10|p=2,F=T²|ΦF≠F (4≠1); constant 3 fixed|Carried [r2][r2]; unchanged|
|3.11|p=3,F=2|ψF=2,boundary 0; T not fixed by ψ (−1≠T)|Carried [r2][r2]; unchanged|
|3.12|p=2,g=0,Y|zero has preimage 0; Y has τY=0,constant 1,so no preimage|Carried [r2][r2]; unchanged|
|3.13|p=2,g=3Y|ψg=0,g[0]=3; every scalar reached by cY|Carried [r2][r2]; unchanged|
|3.14|p=3|constants 3^m map to 0; cY endpoint c; 3^m→0 preserved|Carried [r2][r2]; unchanged|
|3.15|p=3|N-fixed units have closed norm equation; constant −1 in,2 out|Carried [r2][r2]; unchanged|
|3.16|p=3,f_m=Y^(3^m)|Δf_m=3^m→0=Δ1|Carried [r2][r2]; unchanged|
|3.17|p=3,F=3|ψF=F; quotient 1 also fixed|Carried [r2][r2]; unchanged|
|3.18|f_n=F+p^nT^n|coefficient error p^nδ_jn,norm≤p^(−n)→0|Carried [r2][r2]; unchanged|
|3.19|p=3,u=v=Y,F=0,k=0|Δ(uv⁻¹)=0; wrong positive correction gives Δ(Y²)=2≠0 mod3|Carried [r2][r2]; unchanged|
|3.20|p=2,3,F=1,n=0,1,2|choose−Y at2,Y at3; Δ=1; residual error0∈(p^n) at each n|Carried [r2][r2]; unchanged|
|3.21|p=3,F=1|actual image ΔY=1; residual and integral errors 0|Carried [r2][r2]; unchanged|
|3.22|p=3,residue unit −1|integral fixed lift −1; reduction 2=2|Carried [r2][r2]; unchanged|
|3.23|p=2,F=1|ψ-fixed 1 reduces to ΔY=1; lift −Y has N-fixedness|Carried [r2][r2]; unchanged|
|3.24|p=3,u=Y|Δu=1,ψ₀1=1; u=1−T³ gives Δ=0|Carried [r2][r2]; unchanged|
|3.25|p=3,a=T|h=T+T³+T⁹+…; a−h=−T³−T⁹−…=T³H(T³)|Carried [r2][r2]; unchanged|
|3.26|𝔽₃,m=1,a=2|η coefficients n=1,2,3 are 1,2,1=−2,−4,−8 mod3|Carried [r2][r2]; unchanged|
|3.27|𝔽₃,m=1,a=2|η₁=η₃=1,η₂=η₆=2; m=3 gives zeros|Carried [r2][r2]; unchanged|
|3.28|𝔽₃,m=1,h₁=1|a=−1=2; −ma=1 cancels h₁; m=3 forces h₃=0|Carried [r2][r2]; unchanged|
|3.29|𝔽₃,h=η(1−T)|a₁=1,others0; u₀=1,u_N=1−T for N≥1; η coefficients2,2,2 agree with h|Carried [r2][r2]; unchanged|
|3.30|𝔽₃,a₁=2,a₂=1,others0|product 1+T+2T²+2T³; constant 1|Carried [r2][r2]; unchanged|
|3.31|𝔽₃,u=1+T²,v=1,N=1|η agrees in degrees 0,1:0,0; Δ differs at degree 1:2≠0|Carried [r2][r2]; unchanged|
|3.32|𝔽₃,u=1−2T|h₀=0,h₁,h₂,h₃=1,2,1; u(1+T³) has same η,so uniqueness false|Carried [r2][r2]; unchanged|
|3.33|𝔽₃,g=YT²|u=1,H=1 gives 0+YT²·1=g|Carried [r2][r2]; unchanged|
|3.34|𝔽₃,g=1|ψ₀g=1,ΔY=1; remainder YT² has ψ₀=Y≠YT²|Carried [r2][r2]; unchanged|
|3.35|p=2,g=1|f=−Y has Nf=f,Δf=1; p=3 uses f=Y|Carried [r2][r2]; unchanged|
|3.36|p=3,a=0,1,2|norm-fixed binomial units 1,Y,Y²|Carried [r2][r2]; unchanged|
|3.37|p=3,a=1/2|Δ(Y^a)=1/2; a=0 gives 0|Carried [r2][r2]; unchanged|
|3.38|μ=δ₁−δ₋₁|first moment 2,augmentation 0|Carried [r2][r2]; unchanged|
|3.39|μ=cδ₁|first moment c·1=c; c=0 gives 0|Carried [r2][r2]; unchanged|
|3.40|p=3,a=3|Y³ evaluations at n=0,1 are 1,ρ₀|Carried [r2][r2]; unchanged|
|3.41|p=3|Teich −1 and Tate Y have Coleman value 0; Δ values 0,1|Carried [r2][r2]; unchanged|
|3.42|μ=δ₋₁|weighting by x sends μ↦−μ; mass −1=first moment μ|Carried [r2][r2]; unchanged|
|3.43|p=3,μ=δ₁+δ₋₁ and δ₁−δ₋₁|first moments0,2; masses2,0; only first is in image; normalized Col(c₂)(x²)=1/2|Carried [r2][r2]; unchanged|
|3.44|p=3|Tate t(1) maps to 0; endpoint δ₁↦1; mass differs on δ₁+δ₋₁|Carried [r2][r2]; unchanged|
|3.45|p=3|principal kernel contains Tate t(1); Teich −1 residue 2 excludes it|Carried [r2][r2]; unchanged|
|3.46|p=3|t(1)↦0; first moment δ₁=1; composite value on kernel 0|Carried [r2][r2]; unchanged|
|3.47|A=ℤ₃×ℤ₃|tensor Tate endpoint has two copies,rank 2; A=𝔽₃ excluded (not flat)|Carried [r2][r2]; unchanged|
|4.1|p=3,n=0|global ζ₃ maps to selected ρ₀,not ρ₀⁻¹|Carried [r2][r2]; unchanged|
|4.2|p=3,a=2|c₂ maps to 1+ρ₀; a=3 gives 0,excluded|Carried [r2][r2]; unchanged|
|4.3|p=3,n=0|−1 fixed by conjugation; ρ₀ not fixed (ρ₀≠ρ₀⁻¹)|Carried [r2][r2]; unchanged|
|4.4|p=3,n=0|global −1 and ρ₀ belong to local closure; 0 not unit|Carried [r2][r2]; unchanged|
|4.5|p=3,n=0|real closure contains −1; excludes ρ₀|Carried [r2][r2]; unchanged|
|4.6|p=3,n=0|ρ₀ principal; −1 residue 2 excluded|Carried [r2][r2]; unchanged|
|4.7|p=3,n=0|real principal intersection {1}; −1 and ρ₀ excluded for different reasons|Carried [r2][r2]; unchanged|
|4.8|empty generators give {1}|additive ℤ₃ generator 1 has closure/span ℤ₃|Carried [r2][r2]; unchanged|
|4.9|p=3,a=2,n=0|phase ρ₀¹c₂=−1,real; raw c₂ not real|Carried [r2][r2]; unchanged|
|4.10|p=3|norm of root ρ₁=ρ₀; norm of −1=−1; principal roots stay principal|Carried [r2][r2]; unchanged|
|4.11|p=3,a=2,n=0|real generator −1 has residue 2=a mod3|Carried [r2][r2]; unchanged|
|4.12|p=3,a=2,n=0|q=ω(2)⁻¹(−1)=1; unadjusted −1 not principal|Carried [r2][r2]; unchanged|
|4.13|p=5,a=2|q⁴=γ⁴ global principal; q² satisfies x²+3x+1=0,not q=1|Carried [r2][r2]; unchanged|
|4.14|p=3,a=2|Nq₁=q₀=1; phase exponent uses 1/2 mod9,not natural subtraction|Carried [r2][r2]; unchanged|
|4.15|p=3,n=0|real principal cyclic group {1},generator q₀=1|Carried [r2][r2]; unchanged|
|4.16|p=3|Tate root tuple lies in full principal cyclotomic limit,not real limit|Carried [r2][r2]; unchanged|
|4.17|p=3,C₂→1|e⁺↦1,e⁻↦0; 3e⁺+2e⁻↦3,inverse↦1/3; e⁻ is forbidden denominator|Carried [r2][r2]; unchanged|
|4.18|p=3,a=2|q₀=1,residue1,conjugation-fixed; Tate coordinate ρ₀≠ρ₀⁻¹ excluded|Carried [r2][r2]; unchanged|
|4.19|generator q,coefficient 0|each fiber for identity contains 0; compatible intersection nonempty|Carried [r2][r2]; unchanged|
|4.20|p=3,n=0|coefficient map sends every scalar to q₀^a=1; cyclic span {1}|Carried [r2][r2]; unchanged|
|4.21|p=3,n=0|full local cyclotomic group μ₆=μ₃×{±1}; principal group μ₃×{1}|Carried [r2][r2]; unchanged|
|4.22|p=3|Tate exponent 0 gives identity,exponent 3 gives coordinates 1,ρ₀; units-only parameter loses 0,3|Carried [r2][r2]; unchanged|
|4.23|p=3|plus projector kills Tate: (1+(−1))/2=0; principal identity maps to 0|Carried [r2][r2]; unchanged|
|4.24|p=3,a=2|normalized second moment on c₂ is 1/2; removing Tate/Teich factors leaves same value on q₂|Carried [r2][r2]; unchanged|
|4.25|G=C₂,a=c|δ_c−1 spans augmentation; identity a=1 gives zero,not full augmentation|Carried [r2][r2]; unchanged|
|4.26|p=3,a=2|generator image λ₂; Tate image 0; sum image remains generated by λ₂|Carried [r2][r2]; unchanged|
|4.27|p=3,a=1|numerator ([1]−1)ζ⁺=0; e⁺λ₂ maps to quotient numerator|Carried [r2][r2]; unchanged|
|4.28|p=3|Tate killed already in cyclotomic quotient; endpoint δ₁ has moment1|Carried [r2][r2]; unchanged|
|4.29|p=3,n=0 check|real principal local group and circular subgroup both {1}; quotient 0 on finite test|Carried [r2][r2]; unchanged|
|4.30|p=3|plus Tate kernel=0,plus Tate cokernel=0; induced terminal map has these zero obstructions|Carried [r2][r2]; unchanged|
|4.31|A=ℤ₃×ℤ₃|quotient transport gives (U/C)²; nonflat 𝔽₃ excluded|Carried [r2][r2]; unchanged|
|Lean scalarAlgebra|p=0,1,2; R arbitrary|Φ₀(F)=C(F[0]); Φ₁(F)=F; Φ₂(T)=2T+T²; zero ring gives0=1|Carried [r2][r2]; unchanged|
|Lean correctedNorm|O=ℤ₂,σ=id|N(Y)=−Y, M(−Y)=−Y; c=3 givesM(c)=9|Carried [r2][r2]; unchanged|
|Lean correctedNorm_limit|p=3,c=2; p=2,Y|iterates2,8,512,limit−1; errors−3,−9,−513 have v₃=1,2,3; L(Y)=−Y,error−2Y then0|Carried [r2][r2]; unchanged|
|Lean logDeriv|R=ℤ,𝔽₃,zero ring|ΔY=1,ΔY⁻¹=−1; in𝔽₃ Δ(1+T³)=0; zero ring0=1|Carried [r2][r2]; unchanged|
|Lean normFixedLogDeriv_surjective|p=2,g=1|τ1=2=2g; f=−Y satisfiesNf=f andΔf=1|Carried [r2][r2]; unchanged|
|Lean psiFixedBoundary_range|p=2,g=Y orY−Y³|bothτg=0; constants1,0; first has no preimage; second has preimage beginning2T+T²/3|Carried [r2][r2]; unchanged|
|Scope :11; consumers :8941|a=2 over ℚ, a=1|Both owners construct q₂=2+T and F₂=1/(2+T); both give q₁=1,F₁=0; two constructions, one mathematical object|Recomputed; R01 partly repaired|

The finite tests exclude the same wrong conventions as before: an absolute basis in a relative extension, the root in place of its difference, the ordinary scalar algebra in place of Φ, unsigned dyadic norm and forward coefficient Frobenius. No broader truth claim follows from these tests.

## Not verifiable

- **Coleman**, *Division Values in Local Fields*: the source service again returned uncertified for DOI 10.1007/BF01390028. In particular §IV equations (2)–(4) and Lemma 13 p.103, used by §§1.94–1.95, were not verified against the original text. The unchanged §1.81 locator (Proposition 14/Corollary 17 pp.104–106) is also not newly certified.
- **CoatesSujatha**, *Cyclotomic Fields and Zeta Values*: r2’s unsuccessful title/publisher lookup and uncertified §§2.1–2.4 pp.13–26 remain unchanged. No source correction to this inaccessible book is certified here.
- Untouched source locators and external PadicLFunctions proof files inherit r2’s scope and limitations. This incremental review did not recompile external proofs or repeat all source reads. The displayed seeded mathematical rows are carry-forwards except the recomputed §1.95 row.

These limitations do not pause the review or request missing-text approval. The blocking verdict is R01.

## Source issues

- **Gap** in RJW at proof of Lemma 10.8, printed p.167 (RJW line 2923): the source says root translations are automorphisms of the original integral series ring; it should be a construction over the root-containing coefficient extension followed by justified descent; affects the proof.
- **Misprint** in RJW at proof of Proposition 4.4, printed p.137 (RJW line 1647): the source says the geometric tail has positive overall sign; it should be the negative tail, giving F₃(0)=1 instead of −1; affects the proof.
