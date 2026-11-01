# Review of AnalyticNumberTheoryPartII (pull request #1167 at 1458ecb)

**Verdict:** accepted

:robot: Independent AI review. No new findings. This is an incremental re-review of 6 changed lines since ee3dddf: three replacements in `TauCetiRoadmap/AnalyticNumberTheoryPartII/README.md:2714`, `:2718` and `:2728`. They redirect the prime input through §6.9c and VonNeumannAlgebras V10.AffineAP. The resulting dependency and both prime-pair arguments are supported. Ready for a human's final approval; this report does not approve or merge the pull request.

`Suggested.lean` and the pins are unchanged. The head is exactly `1458ecbf2e6f645150a94b1a3371f558a22e30b5`; the diff against origin/main outside this folder is empty. No pull-request file was edited.

## Previous findings

The immediately preceding report had no new findings. Its six historical findings are accounted for here using their existing identifiers.

- R01 — repaired: README §5.13f, line 881, retains `ηα(u)/[(1−qu³)(1−u)]` and the shell-operator derivation. This passage and its five-type Checks are unchanged since the previous accepted review.
- R02 — repaired: README line 85 still imports V8's regular crossed product without inventing a Lean declaration. The supplier's README line 2030 supplies regular crossed-product comparison; the obsolete `CrossedProduct` name remains absent.
- R03 — repaired: README lines 1638, 2287, 2439 and 2614 retain the corrected prose and core-KMS reference. All five previously reported identifier residues remain absent; no corresponding passage changed.
- R04 — repaired: README lines 2997–3015 retain entries 104, 106, 110, 126 and 127. All 29 reference labels resolve, all are used, and their URLs are distinct; the arXiv-version pointer remains intentional.
- R05 — repaired: README line 2714 now explicitly obtains both prime inputs from §6.9c/V10.AffineAP. Lines 2718 and 2728 use that input, with `N=1` for ordinary PNT. The deleted Part I citation is unnecessary.
- R06 — repaired: `Suggested.lean:287` still states `supercritical_scaling_measures`, including the probability-measure parametrization, mass and restriction identities. The module docstring distinguishes this measure theorem from the unavailable KMS-state carrier; neither changed.

## Verified sound

**Gate and elaboration.** The worker's gate including the targeted build passes. I independently reran the plain gate, the dependency check, `lake build TauCetiRoadmap.AnalyticNumberTheoryPartII.Suggested`, and direct `lake env lean` elaboration of `Suggested.lean`. All succeed; Lean emits exactly ten `declaration uses sorry` warnings and no others. The targeted build reports success (8988 jobs, replayed target). My plain gate output is:

```text
gate AnalyticNumberTheoryPartII: set_option=0 blob=0 latex=0 tex=0 prnum=0 sorry-data=0 sorry-examples=0 residue=0 private-paths=0 imports=0 mathlib-subimports=0 no-import-mathlib=0 lean-lines=0 forbidden=0 dropped=0 readme-ids-missing=0 empty-sections=0 round-labels=0 long-fences=0 layer-ids=0 target-ids=0 depcheck=0 metadata=0 stray-files=0 dirty=0 outside-folder=0 source-material=0 OK
depcheck: 205 roadmaps, 1456 edges, 0 problem(s)
```

There is no UPWARD or CYCLE line. VonNeumannAlgebras precedes this roadmap at positions 4 and 82 in the supplied merge order. The changed lines add no new supplier or carrier and introduce no computational algorithm, source copying, route-specific restriction, sorry'd data or option override.

I also elaborated the scratch copy containing `#check @name` for all 25 named declarations: 25 signatures, ten sorry warnings, zero errors. They are unchanged from the prior review and the supplied signature inventory. No section `variable` or `include` block exists, and the explicit critical and supercritical temperature binders remain in the elaborated types. No Lean statement or its README formulation was changed, so the previous signature comparisons and padding checks carry forward; no new one-tactic probe is warranted by this diff.

**Supplier and ownership checks.** `roadmaps show VonNeumannAlgebras --pr 889` and the supplied checkout agree. In `TauCetiRoadmap/VonNeumannAlgebras/README.md:2652`, V10.AffineAP owns `π_(d,a)(x) ∼ x/(φ(d)log x)` for fixed `d≥1` and a reduced class. Its lines 2685–2693 also own fixed-tolerance ratio-2 pairs. The present §6.9c consumes that asymptotic; §§6.42a and 6.42c derive arbitrary-ratio, temperature-dependent and shrinking-tolerance variants. They do not reconstruct the AP theorem. Modulus one is allowed: `φ(1)=1`, and its unique residue class contains every prime. The supplier uses inclusive cutoffs, agreeing with §6.9c; switching an interval endpoint changes a count by at most one.

The `Li(x)` version in §6.9c and the supplier's `x/log x` version are equivalent. I opened the following declarations at Tau Ceti pin `a91d3aafa8cd3e6bc33dfde0d7677ed0f1625039`:

- `TauCeti.Real.logIntegral_isEquivalent_div_log`, `TauCeti/Analysis/SpecialFunctions/LogIntegral.lean:272`: `Li(x) ∼ x/log x` at infinity.
- `TauCeti.primeCount_asymptotic_of_primeTheta`, `TauCeti/NumberTheory/ArithmeticDirichletSeries/Transfer.lean:140`: transfer for a number-field prime set with nonzero density and the stated theta asymptotic; it is not by itself an AP specialization.
- `TauCeti.LSeries.wienerIkehara`, `TauCeti/NumberTheory/LSeries/WienerIkehara/SharpCutoff.lean:301`: nonnegative coefficients, actual right-half-plane series, continuous boundary remainder and its pole-subtraction equality. V10.AffineAP explicitly owns the arithmetic adapter supplying these inputs.

The nearby crossed-product and ratio-set contracts were resolved at the same supplier head: V8 regular crossed products at line 2030; V11 measured relations, pushforward cocycles, and modular-spectrum/ratio-set/flow identification at lines 3292–3316. README §§6.5, 6.9c, 6.42a–i and the Layer 6 dependency summary agree on the direction of supply. Searches by object with `roadmaps grep` across indexed main/open roadmaps and `rg` across board package READMEs and plans found the relevant progression/pair contract in V10.AffineAP and its consumption here, with no additional competing owner for this changed interface. No declaration name is added. I also read the opening shape and conventions of the main-branch ModularForms and completed EffectiveBounds roadmaps; the six-line change does not alter this roadmap's shape.

**Sources and seeded sample.** Sources were fetched through the sources service from the cited arXiv v1 URLs, with no manifest edit. For the changed proof routes I read nesh09 (arXiv:0907.1456v1), Lemma 2.3, printed p.4, lines 151–177: the full interval-count and divergent-weight argument, including `0<β≤1`, `λ>1`, `ε>0`. Theorem 2.1 is on p.3, lines 123–124, with its proof on p.5, lines 181–209. The fixed-congruence refinement is the roadmap's deduction from its named supplier, not a claim that Lemma 2.3 states congruence control.

Two of this round's fifteen seeded targets lie in the changed dependency cone: §6.5 and §6.9. For §6.5, nesh09 §1, p.2, lines 59–90 supplies the target-point pushforward convention and independent-coordinate ratio witnesses. For §6.9, nesh00 (arXiv:math/0002141v1), Proposition, pp.2–3, lines 55–116 supplies critical ergodicity, the projection formula and character-product argument; line 36 fixes scaling. Its Dirichlet input is weaker than an asserted PNT proof, which is why §6.9c explicitly imports V10.AffineAP and proves the partial-summation consequence locally. These locators and hypotheses agree. The other thirteen seeded targets are unchanged and outside this incremental dependency cone; they were not reopened.

**Computed adversarial checks for the changed passages and their immediate uses.** All calculations below are new in this round. The two interval counts are for fixed modulus and fixed positive interval width; no uniformity in a shrinking width is presumed.

| Statement | Instances tried | Values computed on each side | Result | Change |
|---|---|---|---|---|
| §6.42 Needs / §6.9c specialization | `N=1,2,4`, reduced class 1 | `1/φ(N)=1,1,1/2`; AP main terms are respectively `X/log X`, `X/log X`, `X/(2 log X)`. For `N=2`, omitting prime 2 changes the ordinary count by exactly 1 for `X≥2`. | Same PNT input at `N=1`; no lost hypothesis | Supplier redirection verified |
| §6.9c reciprocal-prime consequence | `N=1,4`; negative control `N=4,a=2` | Partial summation gives `(1/φ(N))log log X+o(log log X)`, coefficients `1,1/2`. The non-reduced class contains only prime 2 and has reciprocal sum `1/2`, not a divergent main term. | Coprimality excludes the counterexample | Unchanged input checked |
| §6.42a interval proof | `r=λ^(1/β)>1`, `0<δ<r−1`, `X=r^(2m)x₀` | Counts are asymptotic to `δX/log X` and `δrX/log X`; partner/small count tends to `r>1`. Pair ratios lie between `r/(1+δ)` and `r(1+δ)`. Reciprocal partner weight per block is asymptotic from below to `δ/[r(1+δ)log X]`, a positive multiple of `1/m`. | Injection, disjointness and divergent sum follow | PNT via §6.9c verified |
| §6.42a power and boundary | `λ=2,β=1/2,r=4,δ=1/4`; `β=1`; excluded `β=2` | Powered ratios lie in `[sqrt(16/5),sqrt(5)]`, inside `[7/4,9/4]`. For `β≤1`, `q^(−β)≥q^(−1)`. For `β=2`, distinct-prime weights have sum at most `Σ_(n≥2)n^(−2)<∞`. | Correct temperature range; negative control fails outside it | Unchanged statement, changed route checked |
| §6.42c AP interval counts | `N=4,λ=2,δ=1/4` | The two counts are asymptotic to `X/(8 log X)` and `X/(4 log X)`. Matching the smaller list contributes at least asymptotically `1/(10 log X)` to `Σ1/p`. For general `N`, the coefficient is `δ/[φ(N)(1+δ)]>0`. | Fixed-modulus PNT suffices | Changed citation verified |
| §6.42c finite congruence witness | `X=100`, intervals `[100,125]`, `[200,250]`, class 1 mod 4 | Prime lists are `(101,109,113)` and `(229,233,241)`; ratios `229/101,233/109,241/113` all lie in `[8/5,5/2]`; all six residues are 1 mod 4. | Disjoint lists and ratio bounds agree | Concrete Check of route |
| §6.42c diagonal tolerance | stage `j` has ratio error `<1/j` and starts beyond preceding primes | Each fixed-tolerance tail has reciprocal weight `∞`; select a finite portion of weight `≥1`. After `J` stages the weight is `≥J`, while every pair after stage `j` has error `≤1/j`. | Ratio tends to λ and weight diverges simultaneously | No unjustified uniform shrinking-interval estimate |
| §§6.42b–c source masses and §6.5 derivative | `p=2,q=3,β=1`; congruence pair `p=101,q=229,β=1` | First pair: source mass `1/9`, target mass `1/6`, target/source `3/2`, forward target-density `2/3`. Congruence pair: source `22800/5296541`, target `22800/2336029`, ratio `229/101`, forward density `101/229`. | Correct reciprocal convention on both examples | Dependent use checked |
| §6.42c divergent swap masses | fixed `0<β≤1`, disjoint primes tending to infinity | Source `q^(−β)(1−p^(−β))(1−q^(−β)) ∼ q^(−β)`; for large pairs the product factors exceed `1/4` and `q≤2λp`, hence source `≥1/(8λp)`. | The proved `Σ1/p=∞` supplies the required mass divergence | Dependent use checked |
| §§6.42e–f cylinder and ratio lift | `p,q≡1 mod 4`, `p=101,q=229`; identity action control | `p/q≡1 mod 4`, so multiplication fixes every residue modulo 4. Forward/inverse densities multiply to `(101/229)(229/101)=1`; positive ratios and inverses give `(0,∞)`, whose nonnegative closure is `[0,∞)`. One-point identity action has derivative 1, excluding 2 with tolerance `1/2` and 0 with tolerance `1/2`. | Convention agrees with §6.5 and the supplied ratio-set definition | Dependent use checked |
| §6.9 projection input | `β=1`, prime 3, nontrivial character value `−1`; trivial character | Nontrivial local factor `(1−1/3)/(1+1/3)=1/2`; a trivial local factor is 1. For the unit-shell function at prime 3 the constant projection is `1−1/3=2/3`; divergent prime reciprocal sum drives nontrivial products to 0. | Matches nesh00 lines 111–116 | Seeded dependency checked |

**Headline coverage carried forward.** The ten Lean theorems cover Lerch continuation and second-derived invariance; completed even/odd equations; complex Hurwitz continuation/Bernoulli values; Barnes expansion and derivative estimate; quadratic large sieve; fourth moment; quadratic double-series continuation/matrix equations/growth; rational Eisenstein generation; critical scaling-measure uniqueness; and supercritical parametrization. The module docstring still names cubic Shintani continuation/residues/functional equation/bounds, the KMS-state phase transition and cyclotomic values, type III₁, and compact Selberg determinant/spectral zeros with their missing arithmetic or operator/geometric carriers. The changed type-III proof input does not make its missing GNS/KMS carrier available at the pins.

The following unchanged adversarial rows are carried from **r3 = `packages/AnalyticNumberTheoryPartII/reports/PRREVIEW-AnalyticNumberTheoryPartII~3.md`, Verified sound**, which in turn attributes its older rows to r2. They are historical evidence, not claims of new calculations. The old §6.42 Needs row is superseded by the computations above. Rows whose previous values were only “as in r2” or equation numbers remain traceability records, not additional computed tests. In the inherited pole row, `ζ(1)=∞` denotes divergence of the defining positive series, not the value of Lean's totalized `riemannZeta`.

| Statement | Instances | Previously recorded values | Previous result | Change |
|---|---|---|---|---|
| §5.13f local factor | split, `u=q^(−2s)` | README `(1+u)²/((1−u)(1−qu³))`; DW line 643 denominator `(1−qu³)(1−u)`, `η=(1+u)²` line 645; `I(Φ₁)/(1−qu³)` with §5.13a `(1+u)²/(1−u)` gives the same | ok  carried from r3; unchanged |
| §5.13f Check 2, five types | `ζF(4s)ζF(6s−1)ζA(2s)/ζA(4s)` locally | split `(1−u²)⁻¹(1−qu³)⁻¹(1−u)⁻³(1−u²)³=(1+u)²/((1−u)(1−qu³))`; `(2u)`: `(1−u⁴)/((1−u²)(1−u)(1−qu³))=(1+u²)/((1−u)(1−qu³))`; `(2r)`: `(1−u²)/((1−u)²(1−qu³))=(1+u)/(…)`; `(3u)`: `(1+u³)/((1−u²)(1−qu³))=(1−u+u²)/(…)`; `(3r)`: `1/((1−u)(1−qu³))` | ok, = DW lines 645–649  carried from r3; unchanged |
| §5.13f Check 3 | `F=ℚ`, `A=ℚ³` | `∏(1−u²)²/((1−u)³(1−pu³))=ζ(2s)³ζ(6s−1)/ζ(4s)²`; with `(1−u²)`: `∏(1−u²)/((1−u)²(1−pu³))=ζ(2s)²ζ(6s−1)/ζ(4s)`; ratio `∏(1+p^(−2s))` | ok  carried from r3; unchanged |
| DW shell identity | `DΦ₀` | `Φ₀(π⁻³x₁,π⁻²x₂,π⁻¹x₃,x₄)=1` iff `x∈P³×P²×P×R`, so `DΦ₀=1_(R⁴∖P³×P²×P×R)=Φ₁` | ok, = DW line 667–668  carried from r3; unchanged |
| `IsScalingMeasure` | `q=1`; `E={0}`, `q=2` | `map id μ=1•μ`; `μ({0})=μ(2⁻¹{0})=2^β μ({0})` forces `μ({0})=0` since `β>0` | ok, = §6.10  carried from r3; unchanged |
| `finiteAdeleUnits` | `a=1`, `a=0`, `a=2` | `v(1)=1` all `v`: in; `v(0)=0≠1`: out; `v₂(2)=(ofAdd(−1))≠1`: out; wrong model "`a` and `a⁻¹` integral" admits `0` since `0⁻¹=0` | ok, = §6.48b Check 6  carried from r3; unchanged |
| `unitOrbitSum` on `δ₁` | points `n∈ℕ₊`, `q=a/b`, `b>1` | `ζ⁻¹Σ_q q^(−β)δ_q`: mass `ζ⁻¹n^(−β)` at `n`; `q∉ℤ` not in `Ẑ`; `Ẑ` mass `ζ⁻¹Σn^(−β)=1`; `W` mass `ζ⁻¹` | ok, = §6.48b Checks 1–2  carried from r3; unchanged |
| `supercritical_scaling_measures` forward, `W` mass | `ν` carried by `W`, `q≠1` | `q⁻¹W∩W=∅` (else `q` a unit at every prime), so `(q_*ν)(W)=0`; total `ζ⁻¹·ν(W)=ζ⁻¹` | ok  carried from r3; unchanged |
| forward, restriction identity | measurable `E` | `(q_*ν)(E∩W)≤ν(q⁻¹W)=0` for `q≠1`; `ζ•(ζ⁻¹ν|_W)=ν` since `ν(Wᶜ)=0` and `0<ζ(β)<∞` | ok  carried from r3; unchanged |
| forward, `IsScalingMeasure` | mass on `Ẑ`; `p_*` | `ν(q⁻¹Ẑ∩W)=ν(W)=1` iff `q∈ℕ₊`, else `0`: `ζ⁻¹Σ_n n^(−β)=1`; `p_*Σ_q q^(−β)q_*ν=Σ_q q^(−β)(pq)_*ν=p^βΣ_{q′}q′^(−β)q′_*ν` | ok, = nesh00 (1β) line 36  carried from r3; unchanged |
| forward, Radon | inner regular, locally finite | finite partial sums approximated by compacts `K_i⊂E`, `∪K_i` compact; `x∈N⁻¹Ẑ` open with mass `N^β·1<∞` | ok  carried from r3; unchanged |
| converse | `β>1` | `μ(pẐ)=p^(−β)`, `Σ_p p^(−β)<∞` ⇒ a.e. finitely many non-unit coordinates; `μ{x_p=0}≤p^(−kβ)→0`; `Ẑ∩𝔸_f^×=⊔_n nW`, `1=Σ_n n^(−β)μ(W)` ⇒ `μ(W)=ζ⁻¹`; `ν:=ζμ|_W` unique | ok, = nesh00 lines 39–44  carried from r3; unchanged |
| negative control `β≤1` | `β=1` | `ζ(1)=∞` ⇒ `μ(W)=0`, no probability `ν` | ok, = nesh00 line 44–45, §6.48b Check 5  carried from r3; unchanged |
| mass `m≠1` | `ν=mδ₁` | `Ẑ` mass `m` | ok, = §6.48b Check 4  carried from r3; unchanged |
| §5.13a–e auxiliary integrals | r2 | `(1+u)²/(1−u)`; `(1−u+u²)/(1−u)`; `1/(1−u)` | ok (r2)  carried from r3; unchanged |
| §6.17 constant | r2 | forced `2C[2ζ′(−1)−log√(2π)−1/4]` | ok (r2)  carried from r3; unchanged |
| §6.17g test spectrum | r2 | `a₀=1,a₁=1/2`, zero constant | ok (r2)  carried from r3; unchanged |
| §6.12d heat coefficients | r2 | `a₁=−C/3`, `a₂=C/15` | ok (r2)  carried from r3; unchanged |
| §6.12c Gaussian | r2 | `g_t(0)=e^(−t/4)/√(4πt)` | ok (r2)  carried from r3; unchanged |
| §6.13b product constant | r2 | `√(2π)/Γ(u)` | ok (r2)  carried from r3; unchanged |
| §6.20c orders | r2 | `Z` order `2g−1` at 0, 1 at 1 | ok (r2)  carried from r3; unchanged |
| `barnesG` values | r2 | `1,1,2,12,34560` | ok (r2)  carried from r3; unchanged |
| §4.3 log-derivative and Checks | r2 | `½log2π−½`; `B₄(1/2)=7/240` | ok (r2)  carried from r3; unchanged |
| `barnesG_asymptotic` remainder | r2 | `−1/(720r²)` | ok (r2)  carried from r3; unchanged |
| §4.12a coefficients | r2 | `b₂=(c²−c+1/6)/2`; residue 1 | ok (r2)  carried from r3; unchanged |
| `complexHurwitzContinuation_exists` Bernoulli sign | r2 | `H(0,c)=½−c` | ok (r2)  carried from r3; unchanged |
| §4.9a eigenvalues and Mellin factors | r2 | `f̂₁=−if₁` | ok (r2)  carried from r3; unchanged |
| `lerch_completed_functional_equations` | r2 | `(2.7)–(2.10)` | ok (r2)  carried from r3; unchanged |
| completed value at a Gamma pole | r2 | `L₊(0)=0` | ok (r2)  carried from r3; unchanged |
| §4.5d/§4.5f residue sign | r2 | `−2πi/z` | ok (r2)  carried from r3; unchanged |
| §4.17 descent, `lerchContinuation_solvable` | r2 | `G″` acts trivially | ok (r2)  carried from r3; unchanged |
| §4.1/§4.6/§4.8/§4.13 Checks | r2 | `π²/12`; `g(3)=1/8640` | ok (r2)  carried from r3; unchanged |
| §5.1 table, `quadraticReciprocity`, swap direction | r2 | `½,−½,½` | ok (r2)  carried from r3; unchanged |
| `quadraticReflectionFactors`, ratio `r`, reflection block | r2 | `κ=0,1,0,1`; `e=+1,−1,−1,+1` | ok (r2)  carried from r3; unchanged |
| §5.23/§5.26 Checks, §5.30x twelve-gon | r2 | `4/(3π)`; `9/4≤3` | ok (r2)  carried from r3; unchanged |
| `quadratic_large_sieve`, `quadratic_fourth_moment` | r2 | `Q(1+|t|)`, `Q+1` | ok (r2)  carried from r3; unchanged |
| §5.4, §5.5/§5.6, §5.8, §5.10a, §5.19, §5.21q, §5.21/§5.24, §5.28, §5.27 | r2 | as in r2 | ok (r2)  carried from r3; unchanged |
| §6.2/§6.10 law, §6.3, `firstEisenstein`, §6.31/§6.37c–d | r2 | as in r2 | ok (r2)  carried from r3; unchanged |
| §6.18/§6.21a, §6.22, §6.29/§6.33, §6.40/§6.50, §6.5/§6.42b, §6.48a, §6.49a, §6.47, §6.36b | r2 | as in r2 | ok (r2)  carried from r3; unchanged |

## Not verifiable

- No source needed for the changed passages was inaccessible: both arXiv v1 texts were read legally through the sources service. There is no new missing-reference request.
- This is not a fresh full review. The unchanged seeded targets §§4.9, 4.10, 4.14, 4.15, 4.16, 5.6, 5.10, 5.25, 5.30, 6.32, 6.34, 6.35 and 6.39 retain the previous review's status; their individual locators were not independently recertified here. The previous report's sample list differs from this job's seed, and its three shorthand table rows do not supply fresh numeric evidence. They are explicitly distinguished above.
- The previous report's DW OCR qualification remains inherited, outside the changed passages. Its broader ownership and one-tactic results are likewise inherited. This round's ownership search concerns the changed progression/prime-pair interface; it is not a new audit of every construction in all open pull requests.

## Source issues

- none
