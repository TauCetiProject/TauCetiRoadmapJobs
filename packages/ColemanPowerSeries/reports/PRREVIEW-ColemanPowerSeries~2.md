# Review of ColemanPowerSeries (pull request #1309 at 93f18d4)

**Verdict:** needs changes

## R01 (P2) — Resolve the remaining smoothing-series ownership conflict

**Location:** `TauCetiRoadmap/ColemanPowerSeries/README.md:11`, §§2.10–2.10a at lines 6536–6559, and line 8941: “They provide the input interface for DirichletPadicLFunctions”.

**Claim:** The claimed single direction of supply is not implemented at the other roadmap's head. DirichletPadicLFunctions §1.1 still independently defines the same denominator and smoothing series; §1.2 constructs its inverse-Amice measure without consuming these targets. Renaming the constructors does not separate the objects.

**Witness:** `TauCetiRoadmap/DirichletPadicLFunctions/README.md:293` defines q_a[n]=choose(a,n+1); line 295 defines F_a=b_a/q_a. At a=2 both roadmaps give q₂=2+T and F₂=1/(2+T).

**Repair:** Coordinate the ownership transfer to the earlier ColemanPowerSeries: the later roadmap must import §§2.10–2.10a, retaining its additional moment, p-adic-parameter and analytic results. Until both contracts agree, do not describe that consumption as established. Do not add a supplier edge to the later roadmap. The resulting common interface must still give F₂ coefficients 1/2,−1/4,1/8 and F₁=0. This is the unresolved previous R07, not a new objection to the mathematics.

## R02 (P3) — Remove the remaining undeclared API label

**Location:** `TauCetiRoadmap/ColemanPowerSeries/README.md:980`: “`seriesEvaluation_eq_eval₂`: The underlying function is native `eval₂`”.

**Claim:** This backticked own-declaration name promises a Lean declaration absent from the acceptance file. The large naming cleanup leaves this occurrence behind.

**Witness:** `TauCetiRoadmap/ColemanPowerSeries/Suggested.lean` has six declarations; none is seriesEvaluation_eq_eval₂. Its only evaluation-related text is the module's explanation of the missing arithmetic tower.

**Repair:** Delete the label and colon, retaining the mathematical API sentence. Do not add an API theorem to Suggested.lean. The retained evaluation formula still sends T to π₀=−2 at p=2. This completes the previous R05 repair.

## R03 (P3) — Replace specification restatements with discriminating Checks

**Locations:** `TauCetiRoadmap/ColemanPowerSeries/README.md:253`–257 (§0.8) and lines 5854–5858 (§1.94). Examples: “The first relative basis has dimension `p`”; “`M` is inverse coefficient Frobenius composed with the native unit norm”.

**Claim:** These definition blocks do not each supply three discriminating Checks. The basis Checks repeat its generator, dimension and zeroth vector; the last corrected-norm Check repeats the defining composite. These are API assertions, not computed tests of plausible wrong choices.

**Witness:** At p=2 the selected basis is (1,i), with repr(i²)=(−1,0) and repr(1+2i)=(1,2). For a Teichmüller c of order 7 over 𝔽₈, Σ⁻¹N(c)=c, whereas ΣN(c)=c⁴≠c.

**Repair:** For §0.8 use the two dyadic coordinate calculations and a p=3 relative/absolute comparison: lengths 3 versus 6, with repr(ρ₁³)=(ρ₀,0,0). Explicitly reject replacing the selected i by −i. For §1.94 use p=2 values M(Y)=−Y and M(3)=9, plus the 𝔽₈ calculation distinguishing inverse from forward Frobenius. These are three computed tests per definition; keep their API and Lean file unchanged.

## Verified sound

**Previous findings, checked first.** The status below concerns this head, not the older diff.

| Previous finding | Current passage and result |
|---|---|
| R01, relative integral basis | **Repaired.** README:4187 says “use the relative integral basis of … IntegralIwasawaTheory §7.1”; line 4189 says “no independent spanning or independence construction is required.” Transport of (1,i) preserves repr(i²)=(−1,0). |
| R02, actual plus quotient | **Repaired.** README:8487 says “Use … IntegralIwasawaTheory §7.2's continuous algebra equivalence”; line 8489 says it “does not construct a second plus equivalence.” The retained finite-projection and regular-denominator comparisons are additional assertions. |
| R03, native product units and norm determinant | **Repaired.** Former §§0.143 and 1.21 are absent; README:13 and :61 import `MulEquiv.piUnits` and `Algebra.norm_eq_matrix_det`. The norm of Y at p=2 remains −Y. |
| R04, explicit HTML anchors | **Repaired.** The anchors are absent, the rewritten heading links resolve, and the gate records residue=0. |
| R05, undeclared own names | **Partly repaired.** The bulk labels are gone; README:980 retains the name in new R02. |
| R06, root-system Checks | **Repaired.** README:131 says “correct orders alone do not imply compatibility”; :132 says “compatible lifts exist without being unique.” The tests use −1 at 2 and ζ₉², ζ₉, ζ₉⁴ at 3. Their cubes are ζ₃², ζ₃ and ζ₃ respectively. |
| R07, smoothing ownership | **Not repaired.** README:8941 asserts the supply interface, while the current DirichletPadicLFunctions §1.1 still independently defines it. See new R01. |

The review covered **481 numbered targets**: 234 in Layer 0, 123 in Layer 1, 46 in Layer 2 (including §2.10a), 47 in Layer 3, and 31 in Layer 4; their conventions, API clauses, examples and dependencies; and all six Lean declarations. The table records an instance for each numbered target. These calculations test statements and conventions; they are not proofs of universal conclusions. No counterexample to the three Lean headlines was found.

The requested head was verified. The worktree is unchanged, and the diff against origin/main contains no edits outside this folder. The supplied gate passes every check, including the targeted build, dependencies, imports, stray files and source-material checks. No sorry-valued data, option override, arbitrary-operation headline, computational-algorithm deliverable or copied source passage was identified. The two P3 findings above are manual checks missed by the gate.

**Lean and headline coverage.** Direct `lake env lean` elaboration succeeds, with exactly three sorry warnings at Suggested.lean:76, :112 and :120. A scratch copy with `#check @name` for all six declarations was elaborated and compared with the prose. All convergence hypotheses survive: finite freeness, adic completeness, domain/DVR, complete Hausdorff compact topology, the maximal-ideal equation, adic topology, arithmetic residue Frobenius and continuity of σ and σ⁻¹. The suspected lost-binder lead is false; the hypotheses occur as explicit arguments in the elaborated type. No signature change is needed.

Each of the three admitted theorems was tried with each of `simp`, `rfl` and `infer_instance`: all nine probes failed to close their goals. Inspection of the pinned norm, trace and power-series APIs found no single native theorem that supplies these Coleman conclusions. No Lean-padding finding is raised.

The headline inventory is:

| README headline | Acceptance-file treatment |
|---|---|
| Corrected norm projector, convergence and uniform precision (§§1.95,1.116,1.122–1.124) | `UnramifiedSeries.correctedNorm_limit`, line 76 |
| All-prime logarithmic-derivative image (§3.35) | `Series.normFixedLogDeriv_surjective`, line 112 |
| All-prime Frobenius boundary range (§3.12) | `Series.psiFixedBoundary_range`, line 120 |
| Arithmetic interpolation and unramified/semilocal comparisons | Named in module docstring; chosen compatible integer-ring tower and norm limit missing |
| Bernoulli reciprocity and normalized arithmetic Coleman map | Named there; arithmetic map and normalized pseudomeasure missing |
| Principal Coleman sequence | Named there; actual principal norm limit and arithmetic map missing |
| Real principal circular-unit image and quotient | Named there; actual circular closures and comparison maps missing |

The three definitions have real bodies on native carriers. Native norm/trace are total functions: their definitions alone do not certify finite rank. The roadmap separately supplies the rank-p scalar algebra before interpreting them as the desired determinant operations. Trace conditions in the two formal headlines correctly express ψ-fixedness/ψ-zero after τ=pψ and p-torsion-freeness; no free ψ operation is assumed.

**Pinned inputs and ownership.** Mathlib pin `6b7abb3c7686292736be2955bd3eb9ebf63b456a`; Tau Ceti pin `a91d3aafa8cd3e6bc33dfde0d7677ed0f1625039`. The following opened declarations give concrete checks of the carriers and their limitations:

| File at the pin | Declaration / inspected content |
|---|---|
| `Mathlib/Algebra/Group/Pi/Units.lean:25` | `MulEquiv.piUnits`, componentwise units for a family of monoids; it requires neither finiteness nor commutativity |
| `Mathlib/RingTheory/Norm/Defs.lean:61` | `Algebra.norm` is determinant of multiplication; :70 gives the value 1 without a finite basis; :82 gives `norm_eq_matrix_det` |
| `Mathlib/RingTheory/Trace/Defs.lean:70` | `Algebra.trace`; :80 gives zero without a finite basis; :86 gives the chosen-basis matrix trace |
| `Mathlib/RingTheory/PowerSeries/Substitution.lean:170` | `substAlgHom` requires HasSubst; the displayed zero-constant substitution supplies it |
| `Mathlib/RingTheory/PowerSeries/Evaluation.lean:157` | `eval₂Hom` requires continuous coefficients, HasEval, complete Hausdorff linearly topologized receiver |
| `TauCeti/NumberTheory/Cyclotomic/Irreducible.lean:115` | Prime-power cyclotomic irreducibility over ℚ_p |
| `TauCeti/NumberTheory/LocalField/RootsOfUnity/Cyclotomic.lean:40` | Degree p^n(p−1) for the specified cyclotomic extension |
| `TauCeti/NumberTheory/LocalField/FiniteExtension/IntermediateField.lean:64` | Finite intermediate-field spectral norm; ambient field need not already be normed; topology at :78 |
| `TauCeti/NumberTheory/LocalField/FiniteExtension/Basic.lean:454` | `integerRingEquivIntegralClosure`; :460 pins identity on underlying field values |
| `TauCeti/NumberTheory/LocalField/Norm/Basic.lean:188` | Integral/field norm comparison, trace at :197, unit-norm continuity at :337 |
| `TauCeti/RingTheory/PowerSeries/Log.lean:43` | Rational-algebra assumptions; logDeriv at :48 uses a formal logarithm, unlike the arbitrary-ring weighted unit derivative here |

Object searches covered the pinned libraries, main, the indexed open roadmap heads, board packages and relevant supplied sibling checkouts. No collision with the six fully qualified Lean declaration names was found. The generic foundations retain their earlier owners; the explicit chosen-root, matrix, precision and arithmetic-comparison refinements belong here. The weighted derivative over arbitrary commutative rings is not the rational-algebra logarithm-based operation in the pin. AnticyclotomicLocalUnits explicitly distinguishes its height-two, rank-p² interpolation from this rank-p multiplicative theory (README:13, :84–88). PadicHodgeRegulators consumes the latter (README:55); it does not construct another generic Coleman norm. The unresolved overlapping object is R01.

**Supplier resolution.** IntegralIwasawaTheory is absent from main, so its indexed new-roadmap head was used. Its README §§1.1–1.4 (:136, :149, :162, :181), §5.0 (:586), and §§7.1–7.3 (:829, :855, :875) provide the stated global units, Bernoulli normalization, relative integral basis, native norm/trace/interpolation, odd-prime arithmetic exactness and real quotient contracts. The relative basis and actual plus quotient are consumed, not reconstructed.

Main contracts were resolved in `Completed/LocalFieldsRamification/README.md`, Layers 0–3 (finite-extension adapters, principal units, Teichmüller lifts at :343, arithmetic Frobenius at :606); `Completed/LocalGaloisGroups/README.md:259` (shifted cyclotomic Eisenstein argument); `Completed/ProfiniteArithmetic/README.md:407` (continuous p-adic powers); ProfiniteProPGroups Layer 3 (pro-p closure); and `Completed/NumberFieldArithmetic/README.md:1608` (integral semilocal equivalence and component projections).

PMIA's cited measure, topology, operator and coefficient contracts resolve in §§1.3,1.5–1.7,2.1–2.7,2.10,3.1,4.3,5.2. In particular README:1306 supplies the transported psiSeries, :1537 supplies extendIntegralCoefficients, :2485–2523 supplies the complete-DVR preparation interface, and :3367–3396 supplies compact inverse-system exactness. `AbstractMeasure.psiSeries` is a planned PMIA declaration, not an assertion that it exists at the pins. This resolves one citation-scanner lead; the other three are the actual local headline declarations, confirmed by elaboration.

The convention checks agree across these suppliers: arithmetic p-Frobenius, conductor exponent a=n+1, inverse residue twist, actual quotient map with source unit e⁺, and principal-only p-adic scalar action. Every Needs line was read; the explicit local dependency graph has 481 vertices and 880 linked numbered edges, with no forward edge or cycle. No declared supplier gap was assumed and no prerequisite was moved. The independently rerun dependency check returned:

```text
depcheck: 205 roadmaps, 1478 edges, 0 problem(s)
```

There is no UPWARD or CYCLE line. The full worker gate records every counter as zero and ends in OK. This passing mechanical result does not settle the cross-head ownership conflict.

**Seeded source sample.** All 15 requested locators were investigated; 13 have readable cited passages and two original Coleman locators remain uncertified below. No locator is explicitly flagged unverified in the README. Source IDs below refer to the legally fetched, line-numbered extractions. Additional-generalization paragraphs were checked as deductions, not mistaken for verbatim source theorems. Published RJW pagination was checked against the PDF independently of drifting extraction markers: printed p.164 is PDF page 65, and printed p.167 is PDF page 68.

| Target | Text and locator checked | Support and hypotheses |
|---|---|---|
| 0.39 | RJW line 2718, line 2821; §9 pp.161–163, Lemma 10.1 p.164 | Polynomial unit lift and constant-residue criterion; dyadic specialization is a separate deduction |
| 0.69 | RJW line 2766, line 2904; §9 pp.162–163, Lemmas 10.7–10.9 pp.166–167 | Actual unit norm transitions; continuity uses the named native local-field norm, not a new source theorem |
| 0.76 | RJW line 3370; Lemmas 12.2–12.3 pp.178–179 | Teichmüller factor and principal units; prime-to-p torsion is kept outside the p-adic module |
| 0.90 | SharifiNotes line 4538, line 4658; §5.4 pp.143,146 | Consecutive degree p after unramified base extension; chosen levels shifted by one |
| 0.119 | SharifiNotes line 4538, line 4658; same context | Inclusion follows from ρ_(n+1)^p=ρ_n in the fixed ambient field |
| 0.130 | SharifiNotes line 4601, line 4658; SharifiANT line 4371; §5.4 pp.144,146 and Proposition 6.4.6 p.134 | Coefficient p-Frobenius, with root-fixing condition added to select the lift |
| 0.163 | RJW line 2772, line 3388; §9 p.163, Proposition 12.5 pp.179–180 | Finite-level Galois action and principal splitting; joint continuity deduced coordinatewise |
| 0.221 | SharifiNotes line 5000; §6.1 pp.157–158 | Semilocal product context; twisted residue split deduced from the preceding local split |
| 0.226 | SharifiNotes line 5000; same context | Closed principal limit is a finite product/equalizer consequence, without a norm-surjectivity assumption |
| 1.4 | RJW line 2915; Lemma 10.8 p.167 | Finite rank-p decomposition with Φ on coefficient series; assembly formula is the explicit deduction |
| 1.83 | Coleman Theorem 4/Corollary 5(i), p.98; Lemma 6, p.99 | Original not readable; related integral trace computation inspected at SharifiNotes line 4560, Proposition 5.4.3 pp.143–144 |
| 1.96 | Coleman Proposition 14/Corollary 17, pp.104–106 | Original not readable; N=σ equalizer appears at SharifiNotes line 4664, Definition 5.4.12 p.146 |
| 3.20 | RJW line 3480; Lemmas 12.11–12.12 pp.181–182 | Precision lifting keeps its initial residual-surjectivity hypothesis; negative correction exponent agrees |
| 3.29 | RJW line 3531; Lemma 12.14 pp.182–183 | Compatible finite Euler factors; p-divisible exponents are set to zero, not divided by |
| 3.43 | RJW line 3605; Lemma 12.16 and Theorem 12.17 pp.184–185 | Image is kernel of first moment; odd-prime arithmetic context retained |

The cited external Lean proof files were fetched at revision `45307015169791f1316f23a459c8e92ed5961c54`. PadicLFunctions (Coleman/NormOperator.lean) line 861 states the uniform iterate congruence on units. PadicLFunctions (Coleman/Theorem.lean) line 1002 states unique interpolation with levels n≥1. PadicLFunctions (IwasawaProof/LogDerivative.lean) line 1491 states logarithmic surjectivity over ℤ_p with primality only. Their native-carrier and indexing comparisons remain targets here; these files are proof-route sources, not pinned imported declarations.

**Adversarial values.** Rows identify README subsections. Y=1+T; ρ_n has order p^(n+1); π_n=ρ_n−1; N and τ take values in the base copy of the series ring. In residue examples r generates kˣ and c=ω(r) unless another value is specified. “ok” means the displayed values agree, not that finite tests prove the theorem. References to R01–R03 concern ownership or Checks, not a changed mathematical value.

| Statement | Instance | Computed values on both sides / negative control | Result; change |
|---|---|---|---|
|0.1|p=2,z=−1,w=i|ord(w)=4=2²; starting z=1 permits w=1 of order 1|ok;—|
|0.2|p=2 and p=3|i²=−1; (ζ₉²)³=ζ₃²≠ζ₃; ζ₉³=(ζ₉⁴)³=ζ₃ although ζ₉≠ζ₉⁴|ok;—|
|0.3|p=3,n=0|ρ₁³=ρ₀ on both sides|ok;—|
|0.4|p=2,n=0,1|orders 2,4 = 2¹,2²|ok;—|
|0.5|p=2,3,n=0|fields ℚ₂,ℚ₃(ζ₃); degrees 1,2|ok;—|
|0.6|p=2,n=0|included −1=i²=−1|ok;—|
|0.7|p=2,n=0|relative degree 2/1=2|ok;—|
|0.8|p=2,n=0; p=3,n=0|repr(i²)=(−1,0),repr(1+2i)=(1,2); relative rank3≠absolute rank6|ok;R03|
|0.9|p=2,n=0|generator i=i; inverse generator −i≠i|ok;—|
|0.10|p=3,n=0|relative dimension 6/2=3|ok;—|
|0.11|p=2,n=0|minpoly(i)=X²+1=X²−ρ₀|ok;—|
|0.12|p=2,n=0|N(i)=i(−i)=1=−ρ₀|ok;—|
|0.13|p=2,n=0|N(i−1)=2=−π₀|ok;—|
|0.14|p=2,ρ=i|i²+1=0; monic constant 1|ok;—|
|0.15|p=3,n=0|polynomial T²+3T+3; constant 3,degree 2|ok;—|
|0.16|p=3,x=1/3 and 0|k=1 gives 1∈ℤ₃[π]; k=0 fails for 1/3; 3⁰0=0|ok;—|
|0.17|p=2,n=0|integral closure ℤ₂; 1 integral,1/2 not integral|ok;—|
|0.18|p=2,n=0|integral root value −1; residue 1|ok;—|
|0.19|p=3,n=0|basis (1,π); π²=−3−3π|ok;—|
|0.20|p=3,n=0|generator π=ζ₃−1; root ζ₃≠π|ok;—|
|0.21|p=3,n=0|minpoly π=T²+3T+3; evaluation 0|ok;—|
|0.22|p=3,n=0,1|dimensions 2,6 = (3−1),3(3−1)|ok;—|
|0.23|p=2,n=0|2=−π₀ belongs to (π₀)|ok;—|
|0.24|p=3,n=0|red(2+π)=2; red(π)=0|ok;—|
|0.25|p=3,c=5|red(5)=2=5 mod 3|ok;—|
|0.26|p=3,n=0|red(ζ₃)=red(1+π)=1|ok;—|
|0.27|p=3,n=0|π↦0,2↦2; π∈kernel,2∉kernel|ok;—|
|0.28|p=3,n=0|quotient representatives 0,1,2; cardinal 3=card 𝔽₃|ok;—|
|0.29|p=3,n=0|π²=−3(1+π)∈(3)|ok;—|
|0.30|p=3,n=0|O/(π)=𝔽₃; 2 inverse 2|ok;—|
|0.31|p=3,n=0|π²∈M implies π∈M; quotient field has only maximal ideal 0|ok;—|
|0.32|p=2,n=0|local ring ℤ₂; maximal ideal (2)=(−2)|ok;—|
|0.33|p=3,n=0|canonical maximal ideal (π), not (3)=(π²)|ok;—|
|0.34|p=3,n=0|O is free ℤ₃-module of rank 2|ok;—|
|0.35|p=2,n=0|ℤ₂ is DVR,π=−2 nonzero nonunit|ok;—|
|0.36|p=3,n=0|v(π)=1; v(π²)=2 excludes π² as prime|ok;—|
|0.37|p=3,n=0|residue 𝔽₃ has 3 elements; red(ζ)=1|ok;—|
|0.38|p=3,n=0|red(2)=2 gives unit; red(π)=0 gives nonunit|ok;—|
|0.39|p=2,n=0; p=3|P=T+2 evaluates0,constant2 nonunit; constant2 at p=3 evaluates unit2|ok;—|
|0.40|p=3,u=ζ₃|lift 1+T degree 1<2; constant 1 unit|ok;—|
|0.41|p=3,u=ζ₃|polynomial series 1+T evaluates to ζ₃|ok;—|
|0.42|p=3,n=0|extended norm of 3=1/3=base norm|ok;—|
|0.43|p=2,n=0|integral root −1 has order 2; square 1|ok;—|
|0.44|p=3,n=0|norms 1 and 3^(−1/2)≤1; norm(1/3)=3>1|ok;—|
|0.45|p=3,n=0|coordinate model ℤ₃²; π has coordinates (0,1)|ok;—|
|0.46|p=3,u=2|norm(u)=1=norm(u⁻¹); π norm<1|ok;—|
|0.47|p=3,n=0|π²=3u with u=−ζ₃, a unit|ok;—|
|0.48|p=3,n=0|norm(π)=3^(−1/2); square=1/3|ok;—|
|0.49|p=2,n=0|norm(π)=1/2<1|ok;—|
|0.50|p=2,n=0|(π)^r=(2)^r; ball radius 2^(−r)|ok;—|
|0.51|p=2,n=0,F=T|native eval₂(T)=−2=π₀; constant1 evaluates1|ok;R02|
|0.52|p=3,P=1+T|polynomial and series evaluations both ζ₃|ok;—|
|0.53|p=2,n=0,u=3|constant unit series 3 evaluates to 3|ok;—|
|0.54|p=3,n=0,x=π⁻¹|norm=3^(1/2)=norm(π)^(−1)|ok;—|
|0.55|p=3,n=0|norms of π⁻¹,1,π are 3^(1/2),1,3^(−1/2)|ok;—|
|0.56|p=3,n=0|π integral,norm<1; π⁻¹ not integral,norm>1|ok;—|
|0.57|p=2,n=0|both valuation-integer carriers contain 2,exclude 1/2|ok;—|
|0.58|p=3,n=0|both rings contain π,exclude π⁻¹|ok;—|
|0.59|p=3,n=0|2 unit,norm 1; π nonunit,norm<1|ok;—|
|0.60|p=3,n=0|π in maximal ideal,norm<1; 2 outside,norm 1|ok;—|
|0.61|p=3,n=0|red(π)=0,norm<1; red(2)=2,norm 1|ok;—|
|0.62|p=3,n=0,r=2|π² on boundary norm=1/3; π outside|ok;—|
|0.63|p=3,n=0|(3)=(π²), whereas π∉(3)|ok;—|
|0.64|p=2,n=0|balls 2^rℤ₂=(π)^r shrink to {0}|ok;—|
|0.65|p=2,n=0,x=1+2^m i|coordinates (1,2^m)→(1,0)|ok;—|
|0.66|p=2,x=1+2^m i|norm=1+2^(2m)→1=N(1)|ok;—|
|0.67|p=2,n=0,x=i−1|integral and field norms both 2|ok;—|
|0.68|p=2,x=1+2^m i|integral norms 1+2^(2m)→1|ok;—|
|0.69|p=2,L=ℚ₂(i),u_m=1+2^m|N(u_m)=(1+2^m)²→1; N(u_m⁻¹)=(1+2^m)⁻²→1; N(−1)=1|ok;—|
|0.70|p=3,F=2+T|red ε(F)=2=red F[0]|ok;—|
|0.71|p=3,x_m=2+3^m|residues 2 for m≥1; limit residue 2|ok;—|
|0.72|p=2|unsigned (−1,i) fails N(i)=1≠−1; signed (1,−i) works|ok;—|
|0.73|p=3|equalizer residual at constant 2 is 8/2=4≠1; at 1 it is 1|ok;—|
|0.74|p=3|compatible constant −1 tower lies in closed product; constant 2 fails|ok;—|
|0.75|p=3,F_m=1+3^m T|ε(F_m)−1=3^mπ→0|ok;—|
|0.76|p=2,3,5|sections1,−1,ω(2); residues1,2,2; ω(2)^4=1 whereas 2^4=16≠1|ok;—|
|0.77|p=5,a=2|ρ↦ρ²; inverse action would give ρ³≠ρ²|ok;—|
|0.78|p=3,a=−1|N(ρ₁⁻¹)=ρ₀⁻¹=σ(Nρ₁)|ok;—|
|0.79|p=2,n=0|comparison sends −2 to −2,not its inverse −1/2|ok;—|
|0.80|p=2,n=0|v(π)=v(−2)=1|ok;—|
|0.81|p=3,n=1|v(3)=6=3(3−1)|ok;—|
|0.82|p=3,n=0,x=3|normalized abs 1/9=(1/3)²|ok;—|
|0.83|p=3,2,u=−1|principal false,true; residues 2,1|ok;—|
|0.84|p=3,r=2|both native and scalar Teich lifts −1|ok;—|
|0.85|p=2,n=0|E(−1)=E; p=3 gives degree 2|ok;—|
|0.86|p=3,unramified O|T²+3T+3 Eisenstein; over ramified e=2 constant valuation 2 fails|ok;—|
|0.87|p=3,n=0,1|degrees 2,6 independently of unramified f|ok;—|
|0.88|p=2,n=0|π=−2 has valuation 1 in unramified E|ok;—|
|0.89|p=3,n=0|O-basis (1,π),π²=−3−3π|ok;—|
|0.90|p=2,3; E unramified|[E(i):E]=2 at p=2; at p=3 [E₁:E₀]=6/2=3|ok;—|
|0.91|p=3,scalar c=2|unit norm 8=2³|ok;—|
|0.92|p=3,f=2,n=0|unramified quadratic ∩ ramified quadratic=ℚ₃; composite degree 4|ok;—|
|0.93|p=3,f=2|σ(c) reduces to r³≠r for r of order 8; σ(ρ)=ρ|ok;—|
|0.94|k=𝔽₉,ord r=8|residues r,r³,r; (r³)³=r|ok;—|
|0.95|E=ℚ₂|units are odd,closed in ℤ₂; equalizers closed; tuple 1 lies in limit|ok;—|
|0.96|two identical factors|e₁=(1,0),e₂=(0,1); e₁e₂=0,e₁+e₂=1|ok;—|
|0.97|p=2,n=0|relative polynomial X²+1; evaluation at i=0|ok;—|
|0.98|p=2,n=0|N(i)=1=−ρ₀|ok;—|
|0.99|p=3,transport σ|c↦σc,ρ↦ρ; inverse-root extension fails root law|ok;—|
|0.100|p=3,two factors,c=(2,−1)|norm=(8,−1)|ok;—|
|0.101|p=3,f=2,n=0|relative e=2,f_relative=1,degree 2|ok;—|
|0.102|k=𝔽₉|residue map sends c to r,ρ to 1|ok;—|
|0.103|p=3,f=2,n=1|e(E₁/E)=6=d₁; residue degree1; [E₁:E]=6|ok;—|
|0.104|p=2,n=0,1|signed coordinates 1,−i; N(−i)=1 but (−i)²=−1|ok;—|
|0.105|p=2,n=0|N(−i)=1=sρ₀|ok;—|
|0.106|p=3,f=2,n=1|absolute e=6,not total degree 12|ok;—|
|0.107|p=3,f=2,n=1|absolute residue degree 2,not 12|ok;—|
|0.108|p=3,f=2|card residue=9=3²; units=8|ok;—|
|0.109|p=3,f=2,n=0,x=3|normalized abs 3^(−4)=(1/3)^4|ok;—|
|0.110|p=3,f=2,n=0|v(3)=2=d₀,not 4|ok;—|
|0.111|p=3,f=2,n=0|normalized abs_E₀(3)=1/81=(normalized abs_E(3))²=(1/9)²|ok;—|
|0.112|p=3,x=π|underlying comparison value π=π|ok;—|
|0.113|p=3,n=0|image of (π)=(π); (3)=(π²) differs|ok;—|
|0.114|p=3,x=2+π|both residue maps give 2|ok;—|
|0.115|p=3,u=ζ₃|both field values ζ₃|ok;—|
|0.116|p=3,u=ζ₃|residue 1 and u−1=π∈maximal ideal|ok;—|
|0.117|p=3,u=ρ₁|both principal-unit norm maps give ρ₀|ok;—|
|0.118|p=2,n=0|E₀=E(−1)=E|ok;—|
|0.119|p=2,n=0; p=3,n=0|−1=i² lies in E₁; ρ₀=ρ₁³ lies in E₁|ok;—|
|0.120|E=ℚ₃,n=0|E₀=K₀=ℚ₃(ζ₃)|ok;—|
|0.121|p=3,n=0|generator π=ζ₃−1,not ζ₃|ok;—|
|0.122|p=3,n=1|basis length 6=3(3−1)|ok;—|
|0.123|p=3,n=0,x=π²|unique coordinates (−3,−3)|ok;—|
|0.124|k=𝔽₉,scalar c|both residues r; σ-twisted alternative gives r³|ok;—|
|0.125|p=3,n=0|residue of ρ=1|ok;—|
|0.126|k=𝔽₉|inclusion sends residue r to r,not r³|ok;—|
|0.127|p=3,c=2|field value of unit norm 8=field norm|ok;—|
|0.128|p=3,c=2|N(c)=8=2³|ok;—|
|0.129|p=3,c=2,two steps|N(Nc)=512=2⁹|ok;—|
|0.130|p=2,k=𝔽₈,ord r=7|σ(c) has residue r²; inverse has r⁴≠r²; σ fixes chosen root|ok;—|
|0.131|p=3|fixed-root σ sends ρ to ρ,not ρ⁻¹|ok;—|
|0.132|p=3|σ(ρ₁³)=ρ₁³=ρ₀|ok;—|
|0.133|f=2,k=𝔽₉|σ²(r)=r⁹=r; σ(r)=r³≠r|ok;—|
|0.134|k=𝔽₉|res σ(c)=r³=(res c)³|ok;—|
|0.135|k=𝔽₉|residue transition (r³)³=r|ok;—|
|0.136|p=2|signed towers at exponents 0,1 differ at level 1: 1≠−i|ok;—|
|0.137|E=ℚ₃|twisted residues (−1)³=−1; base tower unchanged|ok;—|
|0.138|p=3|sρ=ρ since (−1)²=1|ok;—|
|0.139|p=2,n=0,1|sρ=1,−i|ok;—|
|0.140|p=2,n=0,1|signed orders 1,4; unsigned orders 2,4|ok;—|
|0.141|two factors|pr₁(2,3)=2,pr₂(2,3)=3|ok;—|
|0.142|two factors|e₁²=e₁,e₁e₂=0|ok;—|
|0.144|transport σ,k=𝔽₉|scalar residue r↦r³|ok;—|
|0.145|transport σ,p=3|selected root ρ↦ρ|ok;—|
|0.146|p=3,n=0|maps agreeing on c and ρ agree on c₀+c₁ρ|ok;—|
|0.147|p=3,two factors|norm(2,−1)=(8,−1)|ok;—|
|0.148|p=3,scalar tuple(2,−1)|coordinate cubes (8,−1)|ok;—|
|0.149|p=3,two steps|first norm coordinate 2→8→512=2⁹|ok;—|
|0.150|p=2,n=0|evaluation point −2 has norm 1/2<1; 1 has norm 1|ok;—|
|0.151|p=2,n=0|Gal(E(i)/E)={i↦i,i↦−i},order 2|ok;—|
|0.152|k=𝔽₉|norm residue r³≠r for ord r=8|ok;—|
|0.153|k=𝔽₃|r³=r; r=2 gives 8 mod 3=2|ok;—|
|0.154|p=3,Teich −1|residues all 2=2|ok;—|
|0.155|p=3,Teich −1|level-zero residue 2; principal identity residue 1|ok;—|
|0.156|p=3|root tower residues 1; stationary −1 residues 2,excluded|ok;—|
|0.157|p=3|roots satisfy u_n−1=π_n; −1−1=−2 is unit,excluded|ok;—|
|0.158|p=3|residue kernel is preimage {1}; root tower in,−1 out|ok;—|
|0.159|p=3,a=3|coordinates 1,ρ₀; nonzero exponent detected at level 1|ok;—|
|0.160|p=3,r=2|N(−1)=−1; residue 2=2|ok;—|
|0.161|p=3|split(−1)=(2,1),split(ρ)=(1,ρ)|ok;—|
|0.162|p=3,a=−1|root tower exponent 1↦−1; Teich −1 fixed|ok;—|
|0.163|p=3,a_m=1+3^m,u_m=t(1+3^m)|action=t((1+3^m)²)→t(1); at level n, m≥n+1 gives ρ_n on both sides|ok;—|
|0.164|p=3|U¹/U² has 3 elements; full residue units have 2,excluded|ok;—|
|0.165|p=3,root tower u|0•u=1,2•u=u²|ok;—|
|0.166|p=3|δ₋₁•t(1)=t(−1),δ₁•t(1)=t(1)|ok;—|
|0.167|k=𝔽₉,ord r=8|res Nω(r)=r³; res ω(r)=r≠r³|ok;—|
|0.168|p=5,a=2,n=0|ρ↦ρ²; scalar 3↦3|ok;—|
|0.169|k=𝔽₉,c=ω(r)|both Nσ(c),σN(c) have residue r⁹=r|ok;—|
|0.170|k=𝔽₈|starting r,next r⁴; (r⁴)²=r; forward r² would fail|ok;—|
|0.171|k=𝔽₉|t(r) principal iff r=1; signed dyadic roots have residue 1|ok;—|
|0.172|k=𝔽₉|t(r) residues r,r³,r; k=𝔽₈ instead gives r,r⁴,r²|ok;—|
|0.173|u=t(r)v,res v=1|split(u)=(r,v),inverse=t(r)v; r≠1 excluded from principal part|ok;—|
|0.174|p=3,k=𝔽₉|first principal quotient size 9=3²; residue-unit size 8 excluded|ok;—|
|0.175|signed dyadic tower u|0•u=1,2•u=u²; level 1 values 1,−1|ok;—|
|0.176|p=2|t(0) level 1=1,t(1) level 1=−i|ok;—|
|0.177|two factors,p=3|(ρ,1) norm transitions (ρ₀,1)|ok;—|
|0.178|p=2,n=0|N(1−i)=2=1−ρ₀; N(i)=1≠ρ₀|ok;—|
|0.179|p=2,a=−1,n=0|N(−i)=1=σ(Ni); at p=3 both sides ρ₀⁻¹|ok;—|
|0.180|two factors,p=3|(ρ,1) principal; (ρ,−1) not principal|ok;—|
|0.181|two factors|shuffled tuple ((ρ_n,1))↔((ρ_n),(1)); inverse returns same entries|ok;—|
|0.182|two factors,k=𝔽₉|Frobenius (r,s)↦(r³,s³); e₁ fixed|ok;—|
|0.183|two factors|split(t(r),v)=((r,1),(1,v)); inverse returns (t(r),v)|ok;—|
|0.184|p=5,a=2|scalar 3 fixed,root squared|ok;—|
|0.185|p=5,a=2|ρ↦ρ²≠ρ³ (inverse convention)|ok;—|
|0.186|k=𝔽₉,a=2|both composites cρ↦σ(c)ρ²|ok;—|
|0.187|k=𝔽₉|coefficient σ changes r→r³; cyclotomic action leaves r unchanged|ok;—|
|0.188|p=3|δ₂•t(1)=t(2)=2•t(1)|ok;—|
|0.189|p=2,a=3,n=1|σ₃(−i)=i=(−i)³|ok;—|
|0.190|S₃ permutes three identical factors|(12)(23)e₁=e₂,reverse order gives e₃|ok;—|
|0.191|three factors,p=3|δ_(12) swaps (t(1),1,1) to (1,t(1),1)|ok;—|
|0.192|two factors|(a,b)=(1,0) maps to (t(1),1),distinct from (1,t(1))|ok;—|
|0.193|p=5,a=b=2|σ₂σ₂ρ=ρ⁴=σ₄ρ|ok;—|
|0.194|k=𝔽₉|t(r) belongs iff r=1; residues r,r³ verify both directions|ok;—|
|0.195|p=2|t(0),t(1) differ in coordinate 1: 1 versus −i|ok;—|
|0.196|k=𝔽₉|principal fiber res⁻¹{1}; t(r≠1) lies in open complement|ok;—|
|0.197|k=𝔽₈,n=1|t(r)_1=ω(r⁴),not ω(r²)|ok;—|
|0.198|k=𝔽₈,ord r=7|level-zero residue of t(r)=r; next residue r⁴ squares to r|ok;—|
|0.199|k=𝔽₃|inverse Frobenius fixes 2; section stationary −1|ok;—|
|0.200|u=t(r)v|first coordinate r=res u₀|ok;—|
|0.201|u=t(r)v|second coordinate t(r)⁻¹t(r)v=v|ok;—|
|0.202|(r,v)|inverse then split gives (r,v); product t(r)v|ok;—|
|0.203|k=𝔽₉,u=t(r)|σ action residue r³ at level 0|ok;—|
|0.204|k=𝔽₉|σt(r)=t(r³); cyclotomic a fixes t(r)|ok;—|
|0.205|k=𝔽₉|both action orders send cρ to σ(c)ρ^a|ok;—|
|0.206|p=2,a=1,n=0,1|coordinates 1,−i; exponent residue gives same|ok;—|
|0.207|p=2,a=0,1|level-zero coordinates both 1; level-one coordinates 1≠−i|ok;—|
|0.208|p=2,a=2,b=1,n=1|t(ab)=−1=t(b)²|ok;—|
|0.209|two factors,p=3|N(ρ₁,1)=(ρ₀,1)|ok;—|
|0.210|two factors|(t(1),1) differs from (1,t(1)) at component 1|ok;—|
|0.211|two factors|each residual equation for (ρ,1) equals (1,1)|ok;—|
|0.212|two factors|nth projection of shuffled (u,v)=(u_n,v_n)|ok;—|
|0.213|p=3,two factors|shuffle and norm both give (ρ₀,1)|ok;—|
|0.214|p=3|(ρ,1) principal both sides; (ρ,−1) fails both|ok;—|
|0.215|k=𝔽₉,two factors|first residue of σ(r,s)=r³|ok;—|
|0.216|two factors|σ(e₁)=(1³,0³)=e₁|ok;—|
|0.217|k=𝔽₉|each residue σN(r)=r⁹=Nσ(r)|ok;—|
|0.218|swap two factors|first coordinate of (u,v) after action v|ok;—|
|0.219|swap two factors|e₁↦e₂; coefficient Frobenius instead fixes e₁|ok;—|
|0.220|p=3,swap|N swap(2,−1)=(−1,8)=swap N(2,−1)|ok;—|
|0.221|two 𝔽₈ factors,initial(r,s)|split residue=(r,s); next section residues(r⁴,s⁴) square to(r,s); forward gives(r⁴,s⁴)≠(r,s)|ok;—|
|0.222|two factors|inverse ((r,s),(v,w))=(t(r)v,t(s)w)|ok;—|
|0.223|two factors,principal(v,w)|split(v,w)=((1,1),(v,w)); inverse returns(v,w)|ok;—|
|0.224|p=3|(ρ,1) all residues 1; (ρ,−1) second residue 2|ok;—|
|0.225|two factors|(t(1),1) and (1,t(1)) separated by first coordinate|ok;—|
|0.226|two factors,p=3 versus2|p=3: res(1,−1)=(1,2)≠(1,1),excluded; p=2: residue(1,1),included|ok;—|
|0.227|p=3,n=0|action constant on a+3ℤ₃; a=1 sends ρ→ρ|ok;—|
|0.228|f=2|σ exponent mod 2 gives id,σ; cyclotomic exponent mod p^(n+1)|ok;—|
|0.229|f=2,k=𝔽₉|σ²r=r⁹=r; σr≠r|ok;—|
|0.230|k=𝔽₉|both actions send residue 1 to 1|ok;—|
|0.231|k=𝔽₉|σ applied to residues r,r³ gives r³,r; norm relation r³=r³|ok;—|
|0.232|swap two factors|norm of (v_(n+1),u_(n+1))=(v_n,u_n)|ok;—|
|0.233|p=3,n=0|comparison π↦π,ρ↦ρ; scalar residue r↦r|ok;—|
|0.234|p=2,n=0|supplied basis(1,i) transported to(1,i); repr(i²)=(−1,0); wrong root−i≠i|ok;—|
|0.235|p=2,n=0|N(i)=1,Tr(i)=0; u=3 lifts to polynomial 3 of degree 0|ok;—|
|1.1|p=2,scalar T on 1|Φ(T)=2T+T²≠T|ok;—|
|1.2|p=2,F=T mod 2|coordinates (1,1),assembly 1+(1+T)=T|ok;—|
|1.3|p=2,c=(−1,1)|assembly −1+Y=T|ok;—|
|1.4|p=2,c=(T,0)|assembly Φ(T)=2T+T²; untreated coefficient gives T≠2T+T²|ok;—|
|1.5|p=2,c_m=(2^m,0)|assembly 2^m→0|ok;—|
|1.6|p=2,F=T|exact coordinates (−1,1) give error 0∈(2^k) for k=0,1,2|ok;—|
|1.7|p=2,c=(2,0)|assembly 2 divisible by 2,not 4; same for coordinates|ok;—|
|1.8|p=2|c=(−1,1) is unique for T; (1,1) assembles T+2≠T|ok;—|
|1.9|p=2,F=T|coordinates (−1,1); F=Y² gives (Y,0)|ok;—|
|1.10|p=2|vectors (1,Y); repr(T)=(−1,1)|ok;—|
|1.11|p=3|vectors at i=0,1,2 are 1,Y,Y²|ok;—|
|1.12|p=2,F=T|Φ(−1)+Φ(1)Y=−1+Y=T|ok;—|
|1.13|p=2,F=Y|M=[[0,Y],[1,0]]; M²=YI|ok;—|
|1.14|p=2,F=Y|N(Y)=det M=−Y|ok;—|
|1.15|p=2,F=Y|N(ΦY)=N(Y²)=Y²|ok;—|
|1.16|p=3,c=2|N(2)=8=2³|ok;—|
|1.17|p=2,F=1,Y|traces 2,0|ok;—|
|1.18|p=3,F=1,Y,Y³|traces 3,0,3Y; p·c₀ same|ok;—|
|1.19|p=2,F=T|trace −2 belongs to (2); trace/2=−1|ok;—|
|1.20|p=2|Y not fixed (N=−Y); −Y fixed; 1 fixed|ok;—|
|1.22|p=2,3|N(Y)=−Y,Y; signs −1,+1|ok;—|
|1.23|p=2,F=T|det[[-1,Y],[1,-1]]=1−Y=−T|ok;—|
|1.24|p=3,c=2|N(2)=8≠2,so not member; −1 is member|ok;—|
|1.25|p=3|constants 1,−1 satisfy c²=1; c=2 gives 4≠1|ok;—|
|1.26|p=3,F=3T|reduction 0; F∈(3) but F∉(9)|ok;—|
|1.27|p=3,F=3T|ΦF=9T+9T²+3T³,valuation minimum 1=F|ok;—|
|1.28|p=3,c=1,4|inputs diff 3; norms diff 63 divisible by 3|ok;—|
|1.29|p=3,c=2|N(2)=8≡2 mod 3|ok;—|
|1.30|p=3,F=4|N4−1=63 has v₃=2≥1+1|ok;—|
|1.31|p=3,F=4,n=2|N²4−1=262143 has v₃=3|ok;—|
|1.32|p=3,F=2,n=1|N²2−N2=504 has v₃=2|ok;—|
|1.33|p=2,F_m=T+2^m|coordinates (−1+2^m,1)→(−1,1)|ok;—|
|1.34|p=3,c_m=1+3^m|N(c_m)=c_m³→1|ok;—|
|1.35|p=3,c_m=3^m|trace 3^(m+1)→0|ok;—|
|1.36|p=3,F=2|successive constants 2,8,512; differences v₃=1,2|ok;—|
|1.37|p=3,F=2|limit −1 satisfies (−1)³=−1|ok;—|
|1.38|p=3,F=2|errors −3,−9,−513 have valuations 1,2,3|ok;—|
|1.39|p=3,F=2,n=0,1,2|precision valuations 1,2,3=n+1|ok;—|
|1.40|p=2,F=Y|L(Y)=−Y; N(−Y)=−Y|ok;—|
|1.41|p=3,F=G=2|L(4)=1=L(2)²|ok;—|
|1.42|p=2,F=−Y|L(F)=−Y=F|ok;—|
|1.43|p=3,F=2|L(F)=−1,constant unit; inverse −1|ok;—|
|1.44|p=3,c_m=1+3^m|L(c_m)=1=L(1) for m≥1|ok;—|
|1.45|p=2,a=Y,F=1|τ(ΦY)=2Y=Y·τ(1)|ok;—|
|1.46|p=3,m=0,1,3|τ(Y^m)=3,0,3Y|ok;—|
|1.47|p=3,P=1+Y|τ(P)=3=3ψ(P)|ok;—|
|1.48|p=3,F=2+Y|τ(F)=6=3ψ(F)|ok;—|
|1.49|p=2,F=T|c₀=−1=ψ(T)|ok;—|
|1.50|p=2,F=Y²|root sum Y²+(−Y)²=2Y²=Φ(2Y)|ok;—|
|1.51|A=ℚ[ε]/ε²,M=[1+ε],d=ε∂ε|d det=ε; det·Tr(M⁻¹dM)=ε; empty matrix gives 0=0|ok;—|
|1.52|p=2,F=Y²,c=(Y,0)|∂F=2Y²; pΦ(∂Y)=2Y²|ok;—|
|1.53|p=2,F=Y,H=diag(0,1)|2∂M+HM−MH=M=M_(∂Y)|ok;—|
|1.54|p=2,a=T|structural map 2T+T²=ΦT|ok;—|
|1.55|p=2,ζ=−1|τ₁ΦY=(−Y)²=Y²=iotaΦY|ok;—|
|1.56|p=2,F=T,ζ=−1,i=1|τ₁T=−Y−1; translated expansion −1−Y|ok;—|
|1.57|p=2|E=[[1,Y],[1,−Y]],det=−2Y≠0 but not a unit|ok;—|
|1.58|p=2,F=Y|Eα(M)=[[Y,Y²],[−Y,Y²]]=diag(Y,−Y)E|ok;—|
|1.59|p=2,F=Y|Φ(NY)=−Y²=Y(−Y)|ok;—|
|1.60|p=2,F=Y|candidate −Y embeds as −Y²; candidate Y gives +Y²≠−Y²|ok;—|
|1.61|p=2,n=0,F=Y|ε₁ΦY=i²=−1=ε₀Y|ok;—|
|1.62|p=2,F=T|specialized coordinates (−1,1),value i−1|ok;—|
|1.63|p=2,F=Y,n=0|matrix specializes to [[0,−1],[1,0]],multiplication by i|ok;—|
|1.64|p=2,F=Y,n=0|ε₀(NY)=1=N(i)|ok;—|
|1.65|p=2,unit Y|underlying unit-square values 1=1|ok;—|
|1.66|p=2,F=−Y|evaluations (1,−i); N(−i)=1|ok;—|
|1.67|p=3,F=Y|evaluation tower (ρ_n); coordinate norms ρ₀|ok;—|
|1.68|p=3,F=−1|evaluation residue 2=F[0] mod 3|ok;—|
|1.69|p=3|Y gives residue 1,−1 gives 2; principal true,false|ok;—|
|1.70|p=3,P=T²+3T+3|degree 2 vanishes at π₀; at π₁ degree obstruction 2<6|ok;—|
|1.71|p=3,F=T|ε_nF=π_n≠0 for all n|ok;—|
|1.72|p=3,F=T,G=0|evaluations π_n≠0; zero difference yields all zeros|ok;—|
|1.73|p=2,F=1,−Y|level 1 values 1,−i distinguish them|ok;—|
|1.74|p=3,F−G=3^m T|evaluation norm 3^(−m)normπ≤3^(−m)|ok;—|
|1.75|p=2,F=Y,n=0,k=1|ε₀NF=1=N ε₁F|ok;—|
|1.76|p=3,u=root tower|lift Y already fixed; approximation error 0 at every precision|ok;—|
|1.77|p=3,k=𝔽₉,c|Φc=c,Σc=σc≠c; scalar T acts by 3T+3T²+T³|ok;—|
|1.78|p=2,F=T over O|coordinates (−1,1) unique; wrong (1,1) adds 2|ok;—|
|1.79|p=3,F=Y³|coordinates (Y,0,0)|ok;—|
|1.80|p=3|O-series basis 1,Y,Y²,rank 3 independent of f|ok;—|
|1.81|O finite unramified,p=3|coordinates of 3^mY tend (0,0,0)|ok;—|
|1.82|p=3,c=ω(r)|N(c)=c³=σc|ok;—|
|1.83|p=3,F=1,Y,Y³|τ values3,0,3Y; p c₀ gives3,0,3Y,not3Y³|ok;—|
|1.84|p=3,F=cY³|τ(F)=3cY=3c₀(F)|ok;—|
|1.85|p=3,k=𝔽₉,c|NΣc=(σc)³=Σ(c³)|ok;—|
|1.86|p=2,F=Y|root product −Y²=Φ(NY)|ok;—|
|1.87|p=3,F=3T over O|minimum coefficient valuation of ΦF=1=v(F)|ok;—|
|1.88|k=𝔽₉,ord r=8|res Nω(r)=r³=res Σω(r),not r|ok;—|
|1.89|p=3,F=4|N4−1=63,v₃=2|ok;—|
|1.90|p=3,F=4,G=1|input congruence mod3; norm congruence mod9 (63)|ok;—|
|1.91|p=3,c_m=1+3^m|N(c_m)−1→0|ok;—|
|1.92|O unramified,p=3|ψ_O(c)=c,ψ_O(cY)=0,ψ_O(cY³)=cY|ok;—|
|1.93|p=3,F=cY³|τF=3cY=3ψ_OF|ok;—|
|1.94|p=2; k=𝔽₈,Teich c of order7|M(Y)=−Y; M(3)=9; M(c)=c,forward ΣN(c)=c⁴≠c|ok;R03|
|1.95|p=3,c=2|M²c−Mc=504∈(9); n=0 error 6∈(3)|ok;—|
|1.96|k=𝔽₈,Teich c of order7; p=2,Y|N(c)=c²=Σc≠c; M(c)=c; N(Y)=−Y excludesY and includes−Y|ok;—|
|1.97|p=3|unit constants {c:res c≠0}; 2 in,3 out; closed finite-residue locus|ok;—|
|1.98|p=3|image contains root tower; stationary 2 fails norm relation 8≠2|ok;—|
|1.99|p=3,u=root tower|Y lies in every finite interpolation fiber,error 0|ok;—|
|1.100|p=3,u=root tower|preimage Y; ε_nY=ρ_n|ok;—|
|1.101|p=3|Col(root tower)=Y; inverse sends Y to (ρ_n)|ok;—|
|1.102|p=3|fixed constant −1 maps to constant tower −1; both inverse composites −1|ok;—|
|1.103|k=𝔽₉,F=cY|σ_n ε_nF=σ(c)ρ_n=ε_nΣF|ok;—|
|1.104|p=2,F=Y,n=0|receiving matrix [[0,−1],[1,0]] on both carriers|ok;—|
|1.105|p=2,F=Y|Nε₁Y=1=ε₀NY|ok;—|
|1.106|p=2,F=Y|Trε₁Y=i−i=0=ε₀τY|ok;—|
|1.107|k=𝔽₈,F=c=ω(r)|twisted evaluations c,σ⁻¹c; norm residue r=(r⁴)²|ok;—|
|1.108|p=3,F=Y,σ fixes roots|corrected iterates stay Y; evaluations ρ_n|ok;—|
|1.109|k=𝔽₉,twisted Teich tower|series c gives exact error 0 at every level|ok;—|
|1.110|p=3,F−G=3^mT|σ preserves p; twisted error norm ≤3^(−m)|ok;—|
|1.111|p=3,F=4,k=2|M²4−1=262143,v₃=3|ok;—|
|1.112|O unramified,F=T|ε_nF=π_n≠0|ok;—|
|1.113|O unramified,F=T,G=0|twisted evaluations π_n≠0; roots fixed by σ|ok;—|
|1.114|k=𝔽₉,c≠1|twisted towers differ at level 0: c≠1|ok;—|
|1.115|p=3,c_m=1+3^m|M(c_m)=c_m³→1|ok;—|
|1.116|p=3,F=2|L=−1,errors −3,−9,−513; p=2,F=Y gives L=−Y|ok;—|
|1.117|k=𝔽₈,u_n=σ^(−n)c|ε_nCol(u)=c=σ^n(u_n)|ok;—|
|1.118|k=𝔽₉|Col(t(r))=ω(r); inverse uses residues r,r³,r|ok;—|
|1.119|k=𝔽₉|split Teich component is finite/discrete; both inverse composites c=c|ok;—|
|1.120|k=𝔽₉,c=ω(r)|Col(σt(r))=σc=ΣCol(t(r))|ok;—|
|1.121|E=ℚ₃|σ=id,corrected norm=N; root tower series Y|ok;—|
|1.122|p=3,F=2|errors v₃=1,2,3; convergence to −1|ok;—|
|1.123|p=2,F=Y,n=0,1|errors −2Y,0 ∈(2),(4)|ok;—|
|1.124|p=3,c_m=1+3^m|projector values all 1→1|ok;—|
|2.1|R=ℤ,Y unit|ΔY=1,ΔY⁻¹=−1; zero ring gives 0=1|ok;—|
|2.2|f=g=Y|Δ(Y²)=2=1+1; R=𝔽₂ gives 0=0|ok;—|
|2.3|f=Y|Δ(Y⁻¹)=−1=−ΔY|ok;—|
|2.4|f=Y,k=−2,0,2|logarithmic derivatives −2,0,2=kΔY|ok;—|
|2.5|constant unit −1|derivative 0,Δ=0|ok;—|
|2.6|char 0 versus 3|Δconstant=0; Δ(1+T³)=0 in 𝔽₃ despite nonconstant input|ok;—|
|2.7|ℤ→𝔽₃,f=Y³|reduction of Δf=3→0; Δ(reduced f)=0|ok;—|
|2.8|f=Y,substitution 2T+T²|Δ(Y²)=2; chain factor Y·(2+2T)/Y²=2|ok;—|
|2.9|p=3,f=Y|ΔΦf=3=3ΦΔf|ok;—|
|2.10|R=ℤ,a=0,1,2,3|denominators0,1,2+T,3+3T+T²; both roadmaps give coeff_n=choose(a,n+1)|ok;R01|
|2.10a|R=ℚ,a=1,2,3|F₁=0,F₂=1/2−T/4+T²/8,F₃=1−2T/3+…; same in both roadmaps|ok;R01|
|2.11|a=b=2|f₄=4+6T+4T²+T³=(2+T)(2+2T+T²)|ok;—|
|2.12|p=3,a=2,3|constant coefficients 2(unit),3(nonunit)|ok;—|
|2.13|p=3,a=2|underlying unit series 2+T=f₂|ok;—|
|2.14|a=2|Δf₂=(1+T)/(2+T)=1/2+T/4+…|ok;—|
|2.15|a=2|Δf₂=1−1/(2+T)=1−F₂|ok;—|
|2.16|integer a=−1|∂Y⁻¹=−Y⁻¹=aY^a|ok;—|
|2.17|f=Y,a=−1|Δ(f(Y⁻¹−1))=−1=−Δf(Y⁻¹−1)|ok;—|
|2.18|a=−1|f₋₁=−Y⁻¹; T f₋₁=Y⁻¹−1|ok;—|
|2.19|a=−3|f₋₃=−3+6T+…; constant −3|ok;—|
|2.20|R=ℤ₃,a=−1,−3|constants −1 unit,−3 nonunit|ok;—|
|2.21|a=−3 over ℚ|Δf₋₃=Δf₃−3=−2+(2/3)T+…|ok;—|
|2.22|a=2,R=ℤ₃→𝔽₃|cleared TF₂f₂=f₂−2=T on both sides|ok;—|
|2.23|a=−1|F₋₁=−1; (a−1)−F₋₁=−1=Δf₋₁|ok;—|
|2.24|p=3,a=1/2|Y^a=1+T/2−T²/8+…; ∂ coefficient T=1/4=a·a|ok;—|
|2.25|p=3,f=Y,a=1/2|Δ(Y^(1/2))=1/2=aΔY|ok;—|
|2.26|p=2,f=Y|τΔf=τ1=2=2Δ(NY)|ok;—|
|2.27|p=2,f=Y|Δ(NY)=Δ(−Y)=1=ψ(ΔY)|ok;—|
|2.28|p=2,f=−Y|Nf=f; ψΔf=ψ1=1=Δf|ok;—|
|2.29|p=3,f=Y|restricted Δ gives 1; product Y² gives 2|ok;—|
|2.30|p=3,f_m=Y^(3^m)|Δf_m=3^m→0=Δ1|ok;—|
|2.31|p=2,F=1|boundary 1−Φ1=0; τ0=0|ok;—|
|2.32|p=3,a=2,n=0|(ρ₁²)³=ρ₀²; relative polynomial X³−ρ₀²|ok;—|
|2.33|p=2,a=3,n=0|N(i³−1)=2=−(ρ₀³−1)|ok;—|
|2.34|p=2,a=3|f₃(i)=i,N(i)=1=f₃(−1)|ok;—|
|2.35|p=2,a=3|N(1+Y+Y²)=1+Y+Y²; root product=1+Y²+Y⁴|ok;—|
|2.36|p=3,a=2,3|level-zero values 1+ζ₃(unit),1+ζ₃+ζ₃²=0(nonunit)|ok;—|
|2.37|p=3,c(2)|raw second moment −1/2; identity tower gives 0|ok;—|
|2.38|p=3,Tate exponents 3^m|raw images all 0→0|ok;—|
|2.39|p=3,c(2)|normalized second moment +1/2=−(−1/2)|ok;—|
|2.40|p=3,a=2|2Col₀(c₂)(x²)=−1,2λ₂(x²)=1; Col=−Col₀ gives +1|ok;—|
|2.41|p=3,a=2,F=Y|evaluated dilation ρ_n²=σ₂(ρ_n)|ok;—|
|2.42|p=3,u=root tower,a=2|Col(σ₂u)=Y²=Col(u)(Y²−1)|ok;—|
|2.43|principal u,p=3|Col(u²)=2Col(u); Tate u gives 0=2·0|ok;—|
|2.44|dilation a=−1|Δ contributes −1,inverse weighting contributes −1; product +1|ok;—|
|2.45|p=3,Tate t(1)|normalized principal module map value 0; t(2) also 0|ok;—|
|3.1|p=3,f=−1|Nf=−1,Δf=0; (−1)²=1 but (−1)³≠1|ok;—|
|3.2|p=2,F=T,k=0,1,2|iterates T,2T+T²,4T+6T²+4T³+T⁴|ok;—|
|3.3|p=2,F=T|linear coefficients 2^n→0; constant input 1 stays 1|ok;—|
|3.4|p=2,F=T|linear sum Σ2^n=−1 in ℤ₂; terms→0|ok;—|
|3.5|p=2,F=T|Frobenius sum starts −T+(1/3)T²; zero input gives 0|ok;—|
|3.6|p=2,F=T|partial linear sums 2^N−1→−1|ok;—|
|3.7|p=2,F=T|sum h starts −T+T²/3; h−Φh has coefficients 1,0 as T|ok;—|
|3.8|p=2,g=Y−Y³|ψg=0; sum fixed; first coefficients 2,1/3|ok;—|
|3.9|p=2,F=T²|first nonzero coefficient after Φ is 4=2²,not 2|ok;—|
|3.10|p=2,F=T²|ΦF≠F (4≠1); constant 3 fixed|ok;—|
|3.11|p=3,F=2|ψF=2,boundary 0; T not fixed by ψ (−1≠T)|ok;—|
|3.12|p=2,g=0,Y|zero has preimage 0; Y has τY=0,constant 1,so no preimage|ok;—|
|3.13|p=2,g=3Y|ψg=0,g[0]=3; every scalar reached by cY|ok;—|
|3.14|p=3|constants 3^m map to 0; cY endpoint c; 3^m→0 preserved|ok;—|
|3.15|p=3|N-fixed units have closed norm equation; constant −1 in,2 out|ok;—|
|3.16|p=3,f_m=Y^(3^m)|Δf_m=3^m→0=Δ1|ok;—|
|3.17|p=3,F=3|ψF=F; quotient 1 also fixed|ok;—|
|3.18|f_n=F+p^nT^n|coefficient error p^nδ_jn,norm≤p^(−n)→0|ok;—|
|3.19|p=3,u=v=Y,F=0,k=0|Δ(uv⁻¹)=0; wrong positive correction gives Δ(Y²)=2≠0 mod3|ok;—|
|3.20|p=2,3,F=1,n=0,1,2|choose−Y at2,Y at3; Δ=1; residual error0∈(p^n) at each n|ok;—|
|3.21|p=3,F=1|actual image ΔY=1; residual and integral errors 0|ok;—|
|3.22|p=3,residue unit −1|integral fixed lift −1; reduction 2=2|ok;—|
|3.23|p=2,F=1|ψ-fixed 1 reduces to ΔY=1; lift −Y has N-fixedness|ok;—|
|3.24|p=3,u=Y|Δu=1,ψ₀1=1; u=1−T³ gives Δ=0|ok;—|
|3.25|p=3,a=T|h=T+T³+T⁹+…; a−h=−T³−T⁹−…=T³H(T³)|ok;—|
|3.26|𝔽₃,m=1,a=2|η coefficients n=1,2,3 are 1,2,1=−2,−4,−8 mod3|ok;—|
|3.27|𝔽₃,m=1,a=2|η₁=η₃=1,η₂=η₆=2; m=3 gives zeros|ok;—|
|3.28|𝔽₃,m=1,h₁=1|a=−1=2; −ma=1 cancels h₁; m=3 forces h₃=0|ok;—|
|3.29|𝔽₃,h=η(1−T)|a₁=1,others0; u₀=1,u_N=1−T for N≥1; η coefficients2,2,2 agree with h|ok;—|
|3.30|𝔽₃,a₁=2,a₂=1,others0|product 1+T+2T²+2T³; constant 1|ok;—|
|3.31|𝔽₃,u=1+T²,v=1,N=1|η agrees in degrees 0,1:0,0; Δ differs at degree 1:2≠0|ok;—|
|3.32|𝔽₃,u=1−2T|h₀=0,h₁,h₂,h₃=1,2,1; u(1+T³) has same η,so uniqueness false|ok;—|
|3.33|𝔽₃,g=YT²|u=1,H=1 gives 0+YT²·1=g|ok;—|
|3.34|𝔽₃,g=1|ψ₀g=1,ΔY=1; remainder YT² has ψ₀=Y≠YT²|ok;—|
|3.35|p=2,g=1|f=−Y has Nf=f,Δf=1; p=3 uses f=Y|ok;—|
|3.36|p=3,a=0,1,2|norm-fixed binomial units 1,Y,Y²|ok;—|
|3.37|p=3,a=1/2|Δ(Y^a)=1/2; a=0 gives 0|ok;—|
|3.38|μ=δ₁−δ₋₁|first moment 2,augmentation 0|ok;—|
|3.39|μ=cδ₁|first moment c·1=c; c=0 gives 0|ok;—|
|3.40|p=3,a=3|Y³ evaluations at n=0,1 are 1,ρ₀|ok;—|
|3.41|p=3|Teich −1 and Tate Y have Coleman value 0; Δ values 0,1|ok;—|
|3.42|μ=δ₋₁|weighting by x sends μ↦−μ; mass −1=first moment μ|ok;—|
|3.43|p=3,μ=δ₁+δ₋₁ and δ₁−δ₋₁|first moments0,2; masses2,0; only first is in image; normalized Col(c₂)(x²)=1/2|ok;—|
|3.44|p=3|Tate t(1) maps to 0; endpoint δ₁↦1; mass differs on δ₁+δ₋₁|ok;—|
|3.45|p=3|principal kernel contains Tate t(1); Teich −1 residue 2 excludes it|ok;—|
|3.46|p=3|t(1)↦0; first moment δ₁=1; composite value on kernel 0|ok;—|
|3.47|A=ℤ₃×ℤ₃|tensor Tate endpoint has two copies,rank 2; A=𝔽₃ excluded (not flat)|ok;—|
|4.1|p=3,n=0|global ζ₃ maps to selected ρ₀,not ρ₀⁻¹|ok;—|
|4.2|p=3,a=2|c₂ maps to 1+ρ₀; a=3 gives 0,excluded|ok;—|
|4.3|p=3,n=0|−1 fixed by conjugation; ρ₀ not fixed (ρ₀≠ρ₀⁻¹)|ok;—|
|4.4|p=3,n=0|global −1 and ρ₀ belong to local closure; 0 not unit|ok;—|
|4.5|p=3,n=0|real closure contains −1; excludes ρ₀|ok;—|
|4.6|p=3,n=0|ρ₀ principal; −1 residue 2 excluded|ok;—|
|4.7|p=3,n=0|real principal intersection {1}; −1 and ρ₀ excluded for different reasons|ok;—|
|4.8|empty generators give {1}|additive ℤ₃ generator 1 has closure/span ℤ₃|ok;—|
|4.9|p=3,a=2,n=0|phase ρ₀¹c₂=−1,real; raw c₂ not real|ok;—|
|4.10|p=3|norm of root ρ₁=ρ₀; norm of −1=−1; principal roots stay principal|ok;—|
|4.11|p=3,a=2,n=0|real generator −1 has residue 2=a mod3|ok;—|
|4.12|p=3,a=2,n=0|q=ω(2)⁻¹(−1)=1; unadjusted −1 not principal|ok;—|
|4.13|p=5,a=2|q⁴=γ⁴ global principal; q² satisfies x²+3x+1=0,not q=1|ok;—|
|4.14|p=3,a=2|Nq₁=q₀=1; phase exponent uses 1/2 mod9,not natural subtraction|ok;—|
|4.15|p=3,n=0|real principal cyclic group {1},generator q₀=1|ok;—|
|4.16|p=3|Tate root tuple lies in full principal cyclotomic limit,not real limit|ok;—|
|4.17|p=3,C₂→1|e⁺↦1,e⁻↦0; 3e⁺+2e⁻↦3,inverse↦1/3; e⁻ is forbidden denominator|ok;—|
|4.18|p=3,a=2|q₀=1,residue1,conjugation-fixed; Tate coordinate ρ₀≠ρ₀⁻¹ excluded|ok;—|
|4.19|generator q,coefficient 0|each fiber for identity contains 0; compatible intersection nonempty|ok;—|
|4.20|p=3,n=0|coefficient map sends every scalar to q₀^a=1; cyclic span {1}|ok;—|
|4.21|p=3,n=0|full local cyclotomic group μ₆=μ₃×{±1}; principal group μ₃×{1}|ok;—|
|4.22|p=3|Tate exponent 0 gives identity,exponent 3 gives coordinates 1,ρ₀; units-only parameter loses 0,3|ok;—|
|4.23|p=3|plus projector kills Tate: (1+(−1))/2=0; principal identity maps to 0|ok;—|
|4.24|p=3,a=2|normalized second moment on c₂ is 1/2; removing Tate/Teich factors leaves same value on q₂|ok;—|
|4.25|G=C₂,a=c|δ_c−1 spans augmentation; identity a=1 gives zero,not full augmentation|ok;—|
|4.26|p=3,a=2|generator image λ₂; Tate image 0; sum image remains generated by λ₂|ok;—|
|4.27|p=3,a=1|numerator ([1]−1)ζ⁺=0; e⁺λ₂ maps to quotient numerator|ok;—|
|4.28|p=3|Tate killed already in cyclotomic quotient; endpoint δ₁ has moment1|ok;—|
|4.29|p=3,n=0 check|real principal local group and circular subgroup both {1}; quotient 0 on finite test|ok;—|
|4.30|p=3|plus Tate kernel=0,plus Tate cokernel=0; induced terminal map has these zero obstructions|ok;—|
|4.31|A=ℤ₃×ℤ₃|quotient transport gives (U/C)²; nonflat 𝔽₃ excluded|ok;—|
|Lean scalarAlgebra|p=0,1,2; R arbitrary|Φ₀(F)=C(F[0]); Φ₁(F)=F; Φ₂(T)=2T+T²; zero ring gives0=1|ok;—|
|Lean correctedNorm|O=ℤ₂,σ=id|N(Y)=−Y, M(−Y)=−Y; c=3 givesM(c)=9|ok;—|
|Lean correctedNorm_limit|p=3,c=2; p=2,Y|iterates2,8,512,limit−1; errors−3,−9,−513 have v₃=1,2,3; L(Y)=−Y,error−2Y then0|ok;—|
|Lean logDeriv|R=ℤ,𝔽₃,zero ring|ΔY=1,ΔY⁻¹=−1; in𝔽₃ Δ(1+T³)=0; zero ring0=1|ok;—|
|Lean normFixedLogDeriv_surjective|p=2,g=1|τ1=2=2g; f=−Y satisfiesNf=f andΔf=1|ok;—|
|Lean psiFixedBoundary_range|p=2,g=Y orY−Y³|bothτg=0; constants1,0; first has no preimage; second has preimage beginning2T+T²/3|ok;—|

Additional controls: the rank-zero determinant identity is 0=1·0. On ℚ[ε]/ε² with d(ε)=ε, the rank-one matrix [1+ε] gives d(det)=ε=det·Tr(M⁻¹dM). Finite nonempty arithmetic coefficient fields exclude the zero ring, q=1, equal-characteristic and inseparable alternatives; ramified arithmetic coefficients are outside the unramified theorem. Finite-free module coefficient change is separate: rank zero gives the zero sequence, while A=𝔽_p is excluded by nonflatness. The generic unit derivative still works in the zero ring and in characteristic p, where its constant-kernel claim is correctly not made.

The nonabelian S₃ permutation control in §0.190 distinguishes action order; the arithmetic unit groups themselves are abelian. Empty semilocal products give the trivial group and zero additive module, with component assertions vacuous but no field assertion attached. Identity transport preserves every displayed value. At p=2 the signed Tate tower is norm-compatible but not square-compatible. Fin p excludes out-of-range basis vectors; p≥2 fixes natural subtraction in degree formulas. The nonzero hypotheses in preparation and unit hypotheses in division exclude zero-polynomial degree and 0/0 errors. At a=0 the natural smoothing denominator exists but is not invertible in a nonzero ring; in the zero ring the cleared identities reduce to0=0.

## Not verifiable

- **Coleman**, *Division Values in Local Fields*: the sources service checked [DOI 10.1007/BF01390028](https://doi.org/10.1007/BF01390028) and title resolution; the original is paywalled/uncertified. In particular the seeded §1.83 locators (Theorem 4/Corollary 5(i), p.98; Lemma 6, p.99) and §1.96 locators (Proposition 14/Corollary 17, pp.104–106) were not certified against that text. Other cited original norm/interpolation locators also remain uncertified. The report distinguishes the related readable Sharifi statements from verification of Coleman.
- **CoatesSujatha**, *Cyclotomic Fields and Zeta Values*: title resolution and the [publisher record](https://link.springer.com/book/10.1007/978-3-540-33069-1) were attempted through the service; the text is paywalled/uncertified. The cited §§2.1–2.4 and the README's corrections to that book cannot be independently certified here. No purported error in that inaccessible text is entered below.
- The external PadicLFunctions proof source was read, not compiled against this roadmap's pins. Its ℤ_p signatures and the inspected routes support the comparisons described above; no automatic portability to the native unramified tower is certified.

Every cited work was attempted through the legal-source service. No missing-text approval is requested, no manifest was edited, and this review is not parked. Source errors below are not roadmap findings where the roadmap already corrects them.

## Source issues


- **Error** in RJW at §9, printed p.163 (RJW line 2772): the source says all four unit limits are ℤ_p-modules; it should be restricted to principal unit limits, since full units contain prime-to-p torsion; affects a stated result.
- **Error** in RJW at proof of Lemma 10.7, printed p.166 (RJW line 2892): the source says cyclotomic evaluation points lie in the maximal ideal of ℤ_p; it should be an argument in the extension’s integer ring using unbounded minimal-polynomial degrees; affects the proof.
- **Gap** in RJW at proof of Lemma 10.8, printed p.167 (RJW line 2923): the source says root translations are automorphisms of ℤ_p[[T]]; it should be a construction after coefficient extension, with convergent translation and norm descent justified; affects the proof.
- **Error** in RJW at §10.2 after Lemma 10.3, printed p.165 (RJW line 2862): the source says cyclotomic quotients are polynomial for unrestricted prime-to-p integers; it should be polynomial only for positive parameters, with −Y^(−a)f_a for negative parameters; affects a stated result.
- **Error** in RJW at proof of Lemma 10.11(iii), printed p.168 (RJW line 2973): the source says its base-series congruence uses the ramified maximal ideal; it should be calculated in extended integer-ring series, then intersected with ℤ_p[[T]]; affects the proof.
- **Error** in RJW at Definition 10.14 and Theorem 10.15, printed p.170 (RJW lines 3038–3050): the source says its raw Coleman composite has a positive numerator; it should be a negative numerator, or a negated composite with ζ_p’s normalization preserved; affects a stated result.
- **Misprint** in RJW at proof of Proposition 4.4, printed p.137 (RJW line 1647): the source says the geometric tail has positive overall sign; it should be a negative tail, giving F₃(0)=1 rather than −1; affects the proof.
- **Error** in RJW at §4.1 before Lemma 4.2, printed p.136 (RJW lines 1608–1611): the source says rapid decay holds for every prime-to-p integer parameter; it should be restricted to positive parameters, since a=−1 gives constant −1; affects the proof.
- **Gap** in RJW at proof of Lemma 4.7, printed p.137 (RJW lines 1663–1688): the source says bounded-series ψ applies to T⁻¹; it should be justified through a compatible localization extension or a cleared-denominator identity; affects the proof.
- **Error** in RJW at proof of Proposition 4.11, printed p.139 (RJW line 1745): the source says ζ(1−k) is nonzero exactly when k is even; it should be stated with k=1 separate, since ζ(0)=−1/2 and the Euler factor vanishes; affects the proof.
- **Misprint** in RJW at proof of Proposition 12.1, printed p.178 (RJW line 3345): the source says the unit-series expansion starts at degree one; it should be an expansion including the unit coefficient at degree zero; affects the proof.
- **Misprint** in RJW at proof of Theorem 12.9, printed p.183 (RJW line 3573): the source says the logarithmic kernel is μ_p; it should be μ_(p−1), as in the theorem’s statement; affects the proof.
- **Gap** in RJW at proof of Lemma 12.13, printed p.182 (RJW lines 3523–3525): the source says bounded averaging applies to Y/T; it should be a proved cleared, pole-free remainder identity inside 𝔽_p[[T]]; affects the proof.
- **Misprint** in RJW at proof of Lemma 12.15, printed p.184 (RJW lines 3603–3604): the source says the first nonconstant coefficient is multiplied by p; it should be multiplication of the degree-r coefficient by p^r; affects the proof.
- **Misprint** in RJW at proof of Lemma 12.21, printed p.187 (RJW line 3758): the source says the real phase has exponent a/2; it should be (1−a)/2 as in its defining formula; affects nothing.
- **Error** in RJW at proof of Lemma 12.22, printed p.188 (RJW line 3778): the source says (p−1)D⁺ equals (p−1)D⁺₁; it should be an equality of principal local closures, justified by unique prime-to-p roots there; affects the proof.
- **Gap** in SharifiNotes at proof of Lemma 5.4.5, printed p.144 (SharifiNotes lines 4595–4600): the source says reduction modulo T^(k+1) detects the coefficient of T^(pk); it should be a reduction retaining degree pk, with f=1 treated separately; affects the proof.
- **Error** in SharifiNotes at §5.4 before Proposition 5.4.6, printed p.144 (SharifiNotes line 4601): the source says the Frobenius lift in the ramified cyclotomic compositum is unique; it should be the prescribed lift fixing the selected cyclotomic roots; affects a stated result.
- **Misprint** in SharifiNotes at proof of Proposition 5.4.6, printed p.144 (SharifiNotes lines 4608–4612): the source says the norm product ranges over the nonidentity roots; it should be a product over all p roots, yielding 8 rather than 4 on c=2,p=3; affects the proof.
- **Misprint** in SharifiNotes at proof of Proposition 5.4.6, printed p.145 (SharifiNotes line 4616): the source says the final congruence has Φ(f) on its right side; it should be Φ(Σf) on that side; affects the proof.
- **Error** in SharifiNotes at Theorem 5.4.9 and Definition 5.4.12, printed pp.145–146 (SharifiNotes lines 4629,4667): the source says evaluation uses an order-p^n root while E_n uses order p^(n+1); it should be evaluation at a root of order p^(n+1); affects a stated result.
- **Error** in SharifiNotes at §6.1, printed p.157 (SharifiNotes lines 5008–5009): the source says the unramified coefficient integers have rank one over the full decomposition-group algebra; it should be rank one over the decomposition-group algebra for Gal(ℚ(μ_m)/ℚ); affects a stated result.
- **Error** in SharifiNotes at §6.1, printed p.157 (SharifiNotes lines 5013–5014): the source says 1 is a normal-basis generator; it should be an integral normal-basis element, since the orbit of 1 spans rank one only; affects a stated result.
- **Misprint** in SharifiANT at proofs of Lemma 6.3.3 and Proposition 6.4.6, printed pp.130,134 (SharifiANT lines 4251,4382): the source says there are q prime-to-p roots of unity; it should be q−1, the size of the residue multiplicative group; affects the proof.
