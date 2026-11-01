# Review of AnalyticNumberTheoryPartII (pull request #1167 at ee3dddf)

**Verdict:** accepted

Scope: incremental re-review of the roadmap folder `TauCetiRoadmap/AnalyticNumberTheoryPartII` (README.md 3045 lines, Suggested.lean 300 lines, metadata.toml) at head ee3dddf, 122 changed lines (89 insertions, 33 deletions) since the head 985afa1 the previous review read. The pull request changes nothing outside this folder (`git diff --stat origin/main...HEAD` excluding the folder is empty). The worker's gate at this head passes every check including the targeted build; my own plain gate run and dependency check at this head pass too (below). No finding of this report.

## Previous findings

- R01 — repaired: §5.13f now reads `Zα(ω,Φ0)=ηα(u)/[(1−qu³)(1−u)]`, derives it from the operator `DΦ(x)=Φ(x)−Φ(π⁻³x₁,π⁻²x₂,π⁻¹x₃,x₄)`, the identity `I(ω,DΦ)=(1−qu³)I(ω,Φ)` and `DΦ0=Φ1` cited to the proof of Theorem 3.1, p.42, and carries three Checks. Verified against dw86 (cache 2d6aa0bb, OCR, printed = PDF + 25): the operator is defined at lines 662–663 exactly in this form, the identity at line 665 (`1−ω₀⁻¹ω³(π)`, i.e. `1−qu³`), `DΦ₀ = Φ₁ = 1_(V_R − P³×P²×P×R)` at lines 667–668, the theorem statement with denominator `(1−ω₀⁻¹ω³(π))(1−ω(π))` at line 643. The three Checks are recomputed in the table (all five types). No new problem.
- R02 — repaired: "From VonNeumannAlgebras" now says "V8's regular crossed product of a countable nonsingular action" with no Lean name; VonNeumannAlgebras #889 head dee80881 has that construction in Layer 8 (README line 1917 heading, line 2030 "regular crossed products"). The string `CrossedProduct` no longer occurs in the README.
- R03 — repaired: all five residues are gone (line 640 now lists the four properties in prose; line 2287 "the finite-spectral-core criterion for the BC core"; line 2439 "the core `KMS_β` condition of §6.29", which §6.29 at line 2243 defines; line 2614 `ε1` and `β`; line 1638 "the continuation data consumed below"). A grep for `IsKMS`, `epsilon_1`, `SpectralContinuation`, `kms_finite_spectral_core_iff`, `.meromorphic_distribution` finds nothing.
- R04 — repaired: numbered entries 104 (Shintani), 106 (Wood), 110 (Hounie), 126 (Helffer), 127 (Hiai) added; R108 merged into R109 (Acta Arith. URL), R123 into R114, R124 into R117; entry 101 is folded into entry 94 with the label `R101` kept only as the "arXiv v1" pointer at lines 549 and 2988. Mechanically checked: every label used in the text has a link definition, every link definition is used, no two labels share a URL, and every used label except the arXiv-v1 pointer has a numbered entry. The remaining gaps in the numbering (108, 120, 123–125) are cosmetic.
- R05 — repaired by justification rather than deletion: the §6.42 *Needs:* line now says the AnalyticNumberTheoryPartI "Prerequisites and boundaries" citation supplies the prime number theorem `TauCeti.primeCount_univ_isEquivalent_div_log` and the progression form `NumberField.Chebotarev.tendsto_frobeniusPrimeCount` at `ℚ(ζN)/ℚ`, used by §§6.42a and 6.42c. Both declarations exist at Tau Ceti pin a91d3aaf (`NumberTheory/ArithmeticDirichletSeries/Prime/PrimeIdealTheorem.lean:46` in `namespace TauCeti`; `NumberTheory/Chebotarev/PrimeCounting/FrobeniusPrimeCount.lean:91` in `namespace NumberField.Chebotarev`), AnalyticNumberTheoryPartI #1126's "Prerequisites and boundaries" names exactly these two at its line 22, §6.42a's route uses the prime number theorem and §6.42c's uses it in the residue class `1 mod N` (lines 2719–2729). The citation is now used, so the item stands.
- R06 — repaired: `supercritical_scaling_measures` states the `β>1` half in measure form on the carriers `IsScalingMeasure`, `finiteAdeleUnits` and `unitOrbitSum`; the docstring now says the measure form covers both halves and only the KMS-state form is not statable. Verified in the table below (both directions, the mass `1/ζ(β)`, the restriction identity, the `β≤1` negative control).

## Verified sound

Gate, build and order. The worker's gate at ee3dddf (with the targeted build) passes every check. My own plain gate run at this head: `set_option=0 blob=0 latex=0 tex=0 prnum=0 sorry-data=0 sorry-examples=0 residue=0 private-paths=0 imports=0 mathlib-subimports=0 no-import-mathlib=0 lean-lines=0 forbidden=0 dropped=0 readme-ids-missing=0 empty-sections=0 round-labels=0 long-fences=0 layer-ids=0 target-ids=0 depcheck=0 metadata=0 stray-files=0 dirty=0 outside-folder=0 source-material=0 OK`. `lake env lean TauCetiRoadmap/AnalyticNumberTheoryPartII/Suggested.lean` at the pins (mathlib 6b7abb3c, TauCeti a91d3aaf): 10 `declaration uses sorry` warnings (one more than at 985afa1, the new theorem) and nothing else, 4.5 s. A scratch copy with `#check @name` for all 25 declarations elaborates with no error; the five Layer 6 declarations' elaborated types are those quoted below and match the README (§6.10, §6.40, §6.48b); the file has no section variables, so no binder can have been lost. The dependency check `gate --depcheck … --movable` prints `depcheck: 205 roadmaps, 1449 edges, 0 problem(s)`: no UPWARD or CYCLE line. The merge-order position and supplier list are unchanged since 985afa1.

Padding probe on the changed theorems. In a scratch copy, `simp` in place of `sorry` in `critical_scaling_measure_unique` and `supercritical_scaling_measures` makes no progress on either. The three new definitions have real bodies on native carriers (`Measure.InnerRegular`, `IsLocallyFiniteMeasure`, `Measure.map`, `Measure.sum`, `Valued.v`, `riemannZeta`); `Measure.sum` at the pin takes an arbitrary index type (`{α ι} [MeasurableSpace α] (ι → Measure α) → Measure α`) and `Measure.sum_apply`/`Measure.restrict_apply` hold on measurable sets, which `Ẑ`, `W` and their complements are (`W=∏ℤ_p^×` is clopen in the restricted-product topology; `IsTopologicalRing 𝔸ᶠ[ℤ,ℚ]` is `RingTheory/DedekindDomain/FiniteAdeleRing.lean:157`, so `x ↦ q•x` is continuous and Borel measurable for the local `borel` instance). Ownership: `roadmaps grep` over the 437 open heads and main finds `IsScalingMeasure`, `finiteAdeleUnits`, `unitOrbitSum`, `supercritical_scaling_measures` and the phrase "scaling measure" only in this roadmap.

Headline status after the change: unchanged from the previous report except that the `β>1` half of §6.50 in measure form is now stated (`supercritical_scaling_measures`), beside the `0<β≤1` half (`critical_scaling_measure_unique`, now phrased through `IsScalingMeasure` with the same content as before). The KMS-state form, cyclotomic values, type `III₁`, and the compact Selberg determinant are still named as not statable in the docstring; no stand-in.

Seeded sample. Of the fifteen seeded targets only §6.4 (whose §6.4a prose changed) and §6.29 (now cited by §6.34e) fall in the changed passages: §6.4a's change is wording only (no locator or statement changed), and §6.29 (line 2243) defines the core `KMS_β` condition that §6.34e cites. The other thirteen are untouched since 985afa1 and were covered by the previous full reviews.

Adversarial table (rows for untouched statements are carried from the previous report, cited as "r2"; rows marked "this round" are computed on the changed statements):

| statement | instances | values each side | result |
|---|---|---|---|
| §5.13f local factor (this round) | split, `u=q^(−2s)` | README `(1+u)²/((1−u)(1−qu³))`; DW line 643 denominator `(1−qu³)(1−u)`, `η=(1+u)²` line 645; `I(Φ₁)/(1−qu³)` with §5.13a `(1+u)²/(1−u)` gives the same | ok |
| §5.13f Check 2, five types (this round) | `ζF(4s)ζF(6s−1)ζA(2s)/ζA(4s)` locally | split `(1−u²)⁻¹(1−qu³)⁻¹(1−u)⁻³(1−u²)³=(1+u)²/((1−u)(1−qu³))`; `(2u)`: `(1−u⁴)/((1−u²)(1−u)(1−qu³))=(1+u²)/((1−u)(1−qu³))`; `(2r)`: `(1−u²)/((1−u)²(1−qu³))=(1+u)/(…)`; `(3u)`: `(1+u³)/((1−u²)(1−qu³))=(1−u+u²)/(…)`; `(3r)`: `1/((1−u)(1−qu³))` | ok, = DW lines 645–649 |
| §5.13f Check 3 (this round) | `F=ℚ`, `A=ℚ³` | `∏(1−u²)²/((1−u)³(1−pu³))=ζ(2s)³ζ(6s−1)/ζ(4s)²`; with `(1−u²)`: `∏(1−u²)/((1−u)²(1−pu³))=ζ(2s)²ζ(6s−1)/ζ(4s)`; ratio `∏(1+p^(−2s))` | ok |
| DW shell identity (this round) | `DΦ₀` | `Φ₀(π⁻³x₁,π⁻²x₂,π⁻¹x₃,x₄)=1` iff `x∈P³×P²×P×R`, so `DΦ₀=1_(R⁴∖P³×P²×P×R)=Φ₁` | ok, = DW line 667–668 |
| `IsScalingMeasure` (this round) | `q=1`; `E={0}`, `q=2` | `map id μ=1•μ`; `μ({0})=μ(2⁻¹{0})=2^β μ({0})` forces `μ({0})=0` since `β>0` | ok, = §6.10 |
| `finiteAdeleUnits` (this round) | `a=1`, `a=0`, `a=2` | `v(1)=1` all `v`: in; `v(0)=0≠1`: out; `v₂(2)=(ofAdd(−1))≠1`: out; wrong model "`a` and `a⁻¹` integral" admits `0` since `0⁻¹=0` | ok, = §6.48b Check 6 |
| `unitOrbitSum` on `δ₁` (this round) | points `n∈ℕ₊`, `q=a/b`, `b>1` | `ζ⁻¹Σ_q q^(−β)δ_q`: mass `ζ⁻¹n^(−β)` at `n`; `q∉ℤ` not in `Ẑ`; `Ẑ` mass `ζ⁻¹Σn^(−β)=1`; `W` mass `ζ⁻¹` | ok, = §6.48b Checks 1–2 |
| `supercritical_scaling_measures` forward, `W` mass (this round) | `ν` carried by `W`, `q≠1` | `q⁻¹W∩W=∅` (else `q` a unit at every prime), so `(q_*ν)(W)=0`; total `ζ⁻¹·ν(W)=ζ⁻¹` | ok |
| forward, restriction identity (this round) | measurable `E` | `(q_*ν)(E∩W)≤ν(q⁻¹W)=0` for `q≠1`; `ζ•(ζ⁻¹ν|_W)=ν` since `ν(Wᶜ)=0` and `0<ζ(β)<∞` | ok |
| forward, `IsScalingMeasure` (this round) | mass on `Ẑ`; `p_*` | `ν(q⁻¹Ẑ∩W)=ν(W)=1` iff `q∈ℕ₊`, else `0`: `ζ⁻¹Σ_n n^(−β)=1`; `p_*Σ_q q^(−β)q_*ν=Σ_q q^(−β)(pq)_*ν=p^βΣ_{q′}q′^(−β)q′_*ν` | ok, = nesh00 (1β) line 36 |
| forward, Radon (this round) | inner regular, locally finite | finite partial sums approximated by compacts `K_i⊂E`, `∪K_i` compact; `x∈N⁻¹Ẑ` open with mass `N^β·1<∞` | ok |
| converse (this round) | `β>1` | `μ(pẐ)=p^(−β)`, `Σ_p p^(−β)<∞` ⇒ a.e. finitely many non-unit coordinates; `μ{x_p=0}≤p^(−kβ)→0`; `Ẑ∩𝔸_f^×=⊔_n nW`, `1=Σ_n n^(−β)μ(W)` ⇒ `μ(W)=ζ⁻¹`; `ν:=ζμ|_W` unique | ok, = nesh00 lines 39–44 |
| negative control `β≤1` (this round) | `β=1` | `ζ(1)=∞` ⇒ `μ(W)=0`, no probability `ν` | ok, = nesh00 line 44–45, §6.48b Check 5 |
| mass `m≠1` (this round) | `ν=mδ₁` | `Ẑ` mass `m` | ok, = §6.48b Check 4 |
| §6.42 Needs (this round) | the two names | both at pin a91d3aaf; ANT I #1126 line 22; used at §6.42a (PNT) and §6.42c (class `1 mod N`) | ok |
| §5.13a–e auxiliary integrals | r2 | `(1+u)²/(1−u)`; `(1−u+u²)/(1−u)`; `1/(1−u)` | ok (r2) |
| §6.17 constant | r2 | forced `2C[2ζ′(−1)−log√(2π)−1/4]` | ok (r2) |
| §6.17g test spectrum | r2 | `a₀=1,a₁=1/2`, zero constant | ok (r2) |
| §6.12d heat coefficients | r2 | `a₁=−C/3`, `a₂=C/15` | ok (r2) |
| §6.12c Gaussian | r2 | `g_t(0)=e^(−t/4)/√(4πt)` | ok (r2) |
| §6.13b product constant | r2 | `√(2π)/Γ(u)` | ok (r2) |
| §6.20c orders | r2 | `Z` order `2g−1` at 0, 1 at 1 | ok (r2) |
| `barnesG` values | r2 | `1,1,2,12,34560` | ok (r2) |
| §4.3 log-derivative and Checks | r2 | `½log2π−½`; `B₄(1/2)=7/240` | ok (r2) |
| `barnesG_asymptotic` remainder | r2 | `−1/(720r²)` | ok (r2) |
| §4.12a coefficients | r2 | `b₂=(c²−c+1/6)/2`; residue 1 | ok (r2) |
| `complexHurwitzContinuation_exists` Bernoulli sign | r2 | `H(0,c)=½−c` | ok (r2) |
| §4.9a eigenvalues and Mellin factors | r2 | `f̂₁=−if₁` | ok (r2) |
| `lerch_completed_functional_equations` | r2 | `(2.7)–(2.10)` | ok (r2) |
| completed value at a Gamma pole | r2 | `L₊(0)=0` | ok (r2) |
| §4.5d/§4.5f residue sign | r2 | `−2πi/z` | ok (r2) |
| §4.17 descent, `lerchContinuation_solvable` | r2 | `G″` acts trivially | ok (r2) |
| §4.1/§4.6/§4.8/§4.13 Checks | r2 | `π²/12`; `g(3)=1/8640` | ok (r2) |
| §5.1 table, `quadraticReciprocity`, swap direction | r2 | `½,−½,½` | ok (r2) |
| `quadraticReflectionFactors`, ratio `r`, reflection block | r2 | `κ=0,1,0,1`; `e=+1,−1,−1,+1` | ok (r2) |
| §5.23/§5.26 Checks, §5.30x twelve-gon | r2 | `4/(3π)`; `9/4≤3` | ok (r2) |
| `quadratic_large_sieve`, `quadratic_fourth_moment` | r2 | `Q(1+|t|)`, `Q+1` | ok (r2) |
| §5.4, §5.5/§5.6, §5.8, §5.10a, §5.19, §5.21q, §5.21/§5.24, §5.28, §5.27 | r2 | as in r2 | ok (r2) |
| §6.2/§6.10 law, §6.3, `firstEisenstein`, §6.31/§6.37c–d | r2 | as in r2 | ok (r2) |
| §6.18/§6.21a, §6.22, §6.29/§6.33, §6.40/§6.50, §6.5/§6.42b, §6.48a, §6.49a, §6.47, §6.36b | r2 | as in r2 | ok (r2) |

Sources checked at their locators this round: dw86 (2d6aa0bb, OCR, printed = PDF + 25) Theorem 3.1 statement lines 641–649 (printed p.42), operator `D` lines 660–663, identity line 665, `Φ₁` lines 667–668, type (1) evaluation lines 687–716 (pp.42–44); nesh00 (0bb0f823) lines 30–45 (printed pp.1–2): (1β) at line 36, `μ(W)=1/ζ(β)` and the disjoint `qW` of full measure at lines 39–41, the one-to-one correspondence with probability measures on `W` at lines 41–44, `μ(W)=0` for `β≤1` at line 44–45.

Cross-roadmap citations resolved this round: VonNeumannAlgebras #889 head dee80881 Layer 8 (line 1917) and its regular crossed product (2030); AnalyticNumberTheoryPartI #1126 "Prerequisites and boundaries" (line 16, the two declarations at line 22); the roadmap's own §6.29 (line 2243), §6.48a–b (2908–2931), §6.50 (2954), §6.2 (1571), §6.9 (1682), §6.10 (1722), §6.40 (2646).

Pinned declarations opened this round: Tau Ceti `TauCeti.primeCount_univ_isEquivalent_div_log` (`NumberTheory/ArithmeticDirichletSeries/Prime/PrimeIdealTheorem.lean:46`), `NumberField.Chebotarev.tendsto_frobeniusPrimeCount` (`NumberTheory/Chebotarev/PrimeCounting/FrobeniusPrimeCount.lean:91`, over `K L` number fields with a conjugacy class `C`); Mathlib `Valued (adicCompletion K v) ℤᵐ⁰` (`RingTheory/DedekindDomain/AdicValuation.lean:708`), `IsTopologicalRing 𝔸ᶠ[R,K]` (`FiniteAdeleRing.lean:157`), `Measure.InnerRegular` (`MeasureTheory/Measure/Regular.lean:329`, inner regular by compacts on all measurable sets), `Measure.sum`, `Measure.sum_apply`, `Measure.restrict_apply` (by `#check`).

## Not verifiable

- The thirteen seeded sample targets outside the changed passages (§§4.2, 4.6, 4.9, 4.11, 4.12, 5.5, 5.9, 5.20, 5.21, 5.23, 5.27, 6.22, 6.28) were not reopened this round; their locators are unchanged since 985afa1 and the previous full reviews read them (ll1, ll2, loww, wood11msp, bc95, cm, jss as listed in the r2 report).
- dw86 is OCR of an image-only scan; the shell identity at line 665 reads `(1 − ω⁻¹ ω³(π))` with the subscript on the first `ω` garbled; the previous report's reading `ω₀⁻¹` (the absolute value, giving `q`) is forced by the theorem statement at line 643 and by the Euler product of LOWW Lemma 3.9.
- Ownership against open pull requests whose files the brief does not give was checked through `roadmaps grep` only.

## Source issues

- none
