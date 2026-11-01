# Review of DirichletPadicLFunctions (pull request #1039 at 178c10f)

**Verdict:** accepted

Incremental re-review of the 123 lines changed since 9713c71: the README's Scope, a new `From ColemanPowerSeries` supplier subsection, §§1.1–1.4, 1.6, the Layer 1 Dependencies and §2.3, and in `Suggested.lean` the deletion of `smoothingDenominator`, `smoothingTail`, `smoothedSeries` and `smoothedMeasure` in favour of a hypothesis characterizing the smoothing measure by the defining equation of its Amice transform, with `tameNumerator` and `tameSeries` rewritten on the inline geometric sum. Three P3 notes, none blocking. The gate passes, the dependency check shows no UPWARD or CYCLE line, the module elaborates with `sorry` as the only warning, and every changed statement was recomputed below.

## R01 (P3) — `F_a ∈ Z[[T]]` should be `Z_p[[T]]`

Location: `TauCetiRoadmap/DirichletPadicLFunctions/README.md` line 323, "μ_a is the existing integral inverse Amice transform of `F_a∈Z[[T]]`".

Claim: the smoothed series has integer coefficients.

Witness: `F_2 = 1/(2+T)` has constant coefficient `1/2` (the README's own Check, line 109); RJW Proposition 4.4 (RJW line 1636, printed p.137) states membership in `Z_p[[T]]` for `p ∤ a`, which is what the inverse Amice transform needs.

Repair: write `F_a∈Z_p[[T]]` (or `Z[1/a][[T]]`, which maps into `Z_p[[T]]` for `p ∤ a`). The sentence is otherwise correct: the measure is `AbstractMeasure.invTransform` of a `ℤ_[p]⟦X⟧` series.

## R02 (P3) — λ_a is defined again in §1.3 although ColemanPowerSeries §2.10a owns it

Location: README line 348, "Define `smoothedNumerator a = ν_a = Jμ_a` on Z, and `intrinsicNumerator a = λ_a = r_Uν_a` on U; this λ_a is the inverse-weighted unit restriction of ColemanPowerSeries §2.10a"; Scope line 7, "Sections 1.1–1.2, 1.6 and 2.3 here consume them."

Claim: this roadmap defines λ_a, and only §§1.1–1.2, 1.6 and 2.3 consume the ColemanPowerSeries objects.

Witness: ColemanPowerSeries §2.10a at its open head (its README line 6559) defines `λ_a` as the inverse-coordinate weighting of the restriction of `μ_a` to the units and proves `λ_a = ([a]−1)ζ_p`; the Scope paragraph (line 7) assigns that object to ColemanPowerSeries. The two constructions agree (restriction and inverse weighting commute, which §1.3 asserts through `xν_a = ρ_a` and "extension of λ_a by zero is ν_a"), but the verb "Define" makes two owners of one object, and §§1.3–1.4 also cite §§2.10–2.10a (lines 348 and 368) while the Scope list omits them.

Repair: in §1.3 write "Let λ_a be the inverse-weighted unit restriction of ColemanPowerSeries §2.10a; prove `r_U ν_a = λ_a`, and extension of λ_a by zero is ν_a on every continuous test", keeping `intrinsicNumerator` as this roadmap's adapter name for the comparison if it is wanted; in the Scope sentence list §§1.1–1.4, 1.6 and 2.3.

## R03 (P3) — Layer 2 Dependencies omit ColemanPowerSeries §2.10

Location: README line 660 (Layer 2 `### Dependencies`), "Layers 0–1; IntegralIwasawaTheory §5.0 … PadicMeasuresIwasawaAlgebras §§0.1, 1.1–1.7 and 2.1–2.12 …".

Claim: Layer 2's external inputs are those listed.

Witness: §2.3 line 536 (changed at this head) takes `q_m` as the cyclotomic denominator `cyclotomicSeries` of ColemanPowerSeries §2.10 and its unit criterion for the inverse of `q_D`; that supplier appears in the Layer 1 Dependencies (line 469) but not in Layer 2's.

Repair: add "ColemanPowerSeries §2.10 for `cyclotomicSeries` and its unit criterion" to the Layer 2 Dependencies.

## Previous findings

The previous report (at 9713c71) was an acceptance with no finding of its own; it recorded the seven findings of the first review as repaired. Those repairs are untouched by this change set and still hold at this head:

- R01 (first review) — repaired: `Suggested.lean` line 62 still reads `ContDiffOn ℝ ∞ f (Set.Ici 0)`.
- R02 — repaired: §4.4 is not in the diff.
- R03 — repaired: Scope line 7 still names CharacterSumsOverFiniteFields §§6.4–6.5 as consumers of §§4.1, 4.4 and 4.5.
- R04 — repaired: line 157 still cites AL.1.6.2 and AL.2.4.1 by heading.
- R05 — repaired: line 75 still names `logOneAdd_specialization` as this roadmap's §0.6 target.
- R06 — repaired: line 356 unchanged.
- R07 — repaired: `characterMoment` (Lean lines 144–151) and `smoothedMeasure_characterMoment` (lines 158–166) remain; only the measure argument changed (see the table).

## Verified sound

**Gate and build.** The worker's gate at this head: `gate DirichletPadicLFunctions: set_option=0 blob=0 latex=0 tex=0 prnum=0 sorry-data=0 sorry-examples=0 residue=0 private-paths=0 imports=0 mathlib-subimports=0 no-import-mathlib=0 lean-lines=0 forbidden=0 dropped=0 readme-ids-missing=0 empty-sections=0 round-labels=0 long-fences=0 layer-ids=0 target-ids=0 depcheck=0 metadata=0 stray-files=0 dirty=0 outside-folder=0 source-material=0 build=0 OK`. `git diff --stat origin/main...HEAD -- . ':!TauCetiRoadmap/DirichletPadicLFunctions'` is empty. The six `TauCeti.*` imports have object files at the pin (Mathlib `6b7abb3c`, Tau Ceti `a91d3aa`, as `lake-manifest.json` records); the shared package checkout was at the branch pin with no build running when I elaborated.

**Elaboration and signatures.** `lake env lean` on a scratch copy of `Suggested.lean` with `#check @name` appended for all 29 declarations: 6.7 s, `sorry` the only warning apart from the three deliberate probes below; all 29 `#check` lines printed. Elaborated types of the changed declarations compared with the README: `smoothedMeasure_moment : ∀ p [Fact p.Prime] (a : ℕ), IsUnit (a : ℤ_[p]) → ∀ μ : AbstractMeasure ℤ_[p] ℤ_[p] ℤ_[p], X * (Σ_{i<a} (1+X)^i) * μ.amiceTransform = Σ_{i<a} (1+X)^i − C a → ∀ k, algebraMap (μ (x^k)) = smoothingMoment a k` (README §1.2 line 331: "every integral measure whose Amice transform satisfies `T q_a A = q_a − a`"); `smoothedMeasure_characterMoment` carries the same `ha`, `μ`, `hμ` and the unchanged `[Field K] [Algebra ℤ_[p] K] [Algebra ℚ K]`, `0 < n`, `χ : DirichletCharacter K (p^n)`; `principalNumerator_mass` has `hμ` at `a = p+1` and concludes `(μ f : ℚ_[p]) = −(1 − p⁻¹) · logOneAdd ℚ_[p] ℚ_[p] p` (README §3.7 line 867, `λ_a(1) = −(1−p⁻¹)log_p a`); `tameNumerator : DirichletCharacter R D → R⟦X⟧` and `tameSeries : DirichletCharacter R D → IsUnit (D : R) → R⟦X⟧` (README §2.3 lines 532–536). The file has no section `variable`s, so nothing can drop silently.

**Padding probe.** On the scratch copy the three changed theorems were given `first | simp [characterMoment, smoothingMoment] | norm_num [smoothingMoment] | rfl | (intros; rfl)`: each fails with `unsolved goals` (lines 138, 165, 248 of the copy). The other 19 theorems were probed in the first review and are untouched. `tameNumerator` and `tameSeries` are real-bodied definitions needed to state `existsUnique_tameMeasure`; the deleted definitions leave no README backtick behind (`smoothingDenominator`, `smoothingTail`, `smoothedSeries`, `smoothedMeasure` and `amice_smoothedMeasure` occur nowhere in the README; the gate's `readme-ids-missing=0` agrees).

**Dependency check.** `gate --depcheck … --movable` printed `depcheck: 205 roadmaps, 1485 edges, 0 problem(s)`: no UPWARD or CYCLE line. In the merge order IntegralIwasawaTheory is at position 24, ColemanPowerSeries at 26 and this roadmap at 78, so the new supplier edge points downward. ColemanPowerSeries' own README (line 8941 at its open head) names DirichletPadicLFunctions Layer 1 as a consumer of §§2.10–2.10a; that is a consumer mention, not a `*Needs:*` edge, and creates no cycle.

**Cross-roadmap citations resolved.** ColemanPowerSeries at its open head: `### 2.10 Cyclotomic finite-sum comparison` (README line 6532) defines `cyclotomicSeries` as `Σ_{0≤i<a}(1+T)^i` over every commutative ring with `T f_a = (1+T)^a − 1`, constant coefficient `a`, coefficients `choose(a,n+1)`, the unit criterion `IsUnit f_a ↔ IsUnit (a : R)` and coefficient-map compatibility; `### 2.10a Independent integral smoothing and the Bernoulli comparison` (line 6555) defines `smoothingSeries` as the unique `F` with `T f_a F = f_a − C(a)` for `a` a unit, with `2F[0] = a−1` over any `R`, and states `smoothingSeries_bernoulli_comparison`: for `R = ℤ_p`, `p ∤ a` (including `p = 2`), the Amice transform of IntegralIwasawaTheory §5.0's integral Bernoulli smoothing `μ_a` is `F`, and `λ_a = ([a]−1)ζ_p` on the intrinsic unit-measure carrier. Every item the new supplier subsection (README lines 103–112) attributes to those sections is stated there; its `*Needs:*` line cites IntegralIwasawaTheory §5.0 and PadicMeasuresIwasawaAlgebras, never this roadmap. ColemanPowerSeries' `Suggested.lean` declares none of the three names (its declarations are `scalarAlgebra`, `correctedNorm`, `correctedNorm_limit`, `logDeriv`, `normFixedLogDeriv_surjective`, `psiFixedBoundary_range`), so writing `f_a` as the inline geometric sum here is the only option at the pins and duplicates no declaration. IntegralIwasawaTheory at its open head, `### 5.0 The canonical Kubota–Leopoldt object` (README lines 586–596): the pseudomeasure is built "from the Bernoulli distribution on p-power residue classes and its integral smoothing by integers prime to p", with "the exact smoothing multiplier", the pole at `s = 1` with residue `1 − p⁻¹`, and `kubotaLeopoldt_interpolation`; this is the object §§1.2 and 1.6 cite.

**Library declarations opened at the pin.** `AbstractMeasure.amiceTransform` (`Mathlib/NumberTheory/Padics/Measure/AmiceTransform.lean` line 76: coefficient `n` is `μ (mahler n • 1)`, "the series `∫ (1+X)^a dμ`"), `coeff_amiceTransform` (line 84), `injective_amiceTransform` (line 93, under `[NormedCommRing R] [Algebra ℤ_[p] R] [IsUltrametricDist R] [CompleteSpace R] [IsBoundedSMul ℤ_[p] R]`, satisfied by `R = ℤ_[p]`), `invTransform` (line 129) and `amiceTransformEquiv` (line 157); `PowerSeries.X_mul_injective` (`Mathlib/RingTheory/PowerSeries/Basic.lean` line 322) and `PowerSeries.isUnit_iff_constantCoeff` (`Mathlib/RingTheory/PowerSeries/Inverse.lean` line 109), which make the hypothesis `X f_a A = f_a − C a` equivalent to `f_a A = b_a` and uniquely solvable when `a` is a unit, so the measure in `hμ` is unique. With this convention `μ(x^k) = (∂^k A)(0)`, `∂ = (1+X)d/dX`, which is the substitution `X = e^t − 1` the README uses.

**Sources.** Both RJW texts are in the cache: the arXiv v2 text and the published Essential Number Theory text (the README's References cite the printed pages of the latter). Printed pages were read from the running heads of the published text; the cited labels sit where the README says: Proposition 4.4 (RJW line 1636), Definition 4.5 (1649), Proposition 4.6 (1650) and Lemma 4.7 (1661) on p.137; Lemmas 4.2–4.3 (1614, 1623) and Theorem 4.1 (1598) on p.136; Proposition 4.8 (1691), Definitions 4.9–4.10 (1713, 1730) and Proposition 4.11 (1732) on p.138 with the proof ending on p.139; Lemma 3.36 (1338) on p.130, Definition 3.37 (1396) and Lemma 3.38 (1407) on p.131; Proposition 3.16 (870) on p.121; §5.2 with equation (5-3) (1963) and Lemma 5.9 (1971) on pp.143–144; Proposition 10.4 (2865) and Lemma 10.5 (2873) on p.165. Content: Proposition 4.4 is exactly `F_a ∈ Z_p[[T]]` for `a` coprime to `p` with `F_a = 1/T − a/((1+T)^a − 1)` (Lemma 4.3), which agrees with ColemanPowerSeries' `T f_a F_a = f_a − a` since `T f_a = (1+T)^a − 1`; Proposition 4.6 gives `∫ x^k μ_a = (−1)^k(1−a^{k+1})ζ(−k) = (1−a^{k+1})B_{k+1}/(k+1)` (§1.2's display); Proposition 10.4 gives `∂ log f_{c(a)} = a − 1 − F_a` for `f_{c(a)} = ((1+T)^a − 1)/T`, the cyclotomic denominator itself, and Lemma 10.5 the unit-restriction comparison with `μ_a`, which is what the supplier subsection cites them for; Lemma 3.38 proves the pseudomeasure property for `p` odd only, and §1.6 correctly routes the dyadic regularity through PadicMeasuresIwasawaAlgebras §§3.1–3.3 instead. Seeded targets outside the changed passages (§§1.5, 2.1, 3.2, 4.1–4.3, 4.12, 5.3, 5.7, 5.9) have no changed locator at this head and were verified in the earlier rounds.

**Adversarial table.** Rows for changed statements carry values computed here; untouched statements carry the earlier rows (first review "r1", previous review "r2"). `B₁ = −1/2` throughout, as Mathlib's `bernoulli`.

| Statement | Instances | Left side | Right side | Result |
|---|---|---|---|---|
| `hμ` determines `μ` (§1.2 line 331, Lean lines 134–135) | p=3, a=2; a=1; a=0 without `ha`; a=p | a=2: `X(2+X)A = X` ⇒ `(2+X)A = 1` ⇒ `A = 1/2 − X/4 + X²/8 − …`, unique by `X_mul_injective` and `2+X` a unit; a=1: `X·A = 0` ⇒ `A = 0`; a=0: `0 = 0` holds for every `μ`; a=p: `f_p` not a unit | the previous head's `smoothedMeasure p a ha = invTransform(F_a)` | equivalent to the old statement for every unit `a`; at a=0 the conclusion `μ(x) = B₂/2 = 1/12` fails for `μ = 0`, so `ha` is needed and present (vacuous there, correctly) |
| `smoothedMeasure_moment` | p=3, a=2, k=0,1,3; p=2, a=3, k=0,1 | `A(0) = 1/2`, `A′(0) = −1/4`, `∂³A(0) = f₁+6f₂+6f₃ = −1/4+3/4−3/8 = 1/8`; a=3: `A(0) = b₃(0)/f₃(0) = 3/3 = 1`, `3f₁ = 1 − 3` ⇒ `−2/3` | `(1−2)(−1/2) = 1/2`; `(1−4)(1/6)/2 = −1/4`; `(1−16)(−1/30)/4 = 1/8`; `(1−3)(−1/2) = 1`; `(1−9)(1/6)/2 = −2/3` | agrees (README Checks lines 335–338) |
| `smoothedMeasure_characterMoment` with `hμ` | p=3,a=2 quadratic mod 3, k=0,1,2; p=2,a=3 conductor 4, k=0,2; even χ odd k at p=5; principal χ; n=0 | same measure as r2 by the first row | r2 values −1, 0, 2; −2, 14; 2; 0 and 1/2; mismatch at n=0 | carried from r2, unchanged by the hypothesis change |
| `principalNumerator_mass` with `hμ` | p=3, a=4; p=2, a=3; limit `k = (p−1)p^n → 0` | `λ_a(1) = lim (1−a^k)(1−p^{k−1})B_k/k` with `1−a^k ≈ −k log_p a` and `−(1−p^{k−1})B_k/k = ζ_p(1−k) ≈ (1−p⁻¹)/(−k)` ⇒ `−(1−p⁻¹) log_p a`; p=3: `−(2/3)log₃4`, norm 1 | Lean: `−(1 − p⁻¹)·logOneAdd p`: `−(2/3)log(1+3)`, `−(1/2)log(1+2)`; README line 867 and Check line 891 | agrees; `‖log₃ 4‖ = 1/3`, `‖2/3‖ = 3` ⇒ norm 1 as the Check says |
| ColemanPowerSeries contract Checks (lines 109–112) | a=2; a=1; p=2,a=3; 𝔽₂ | `f₂ = 2+T`, `b₂ = choose(2,2) = 1`, `f₂F₂ = 1`; `f₁ = 1`, `b₁ = 0`, `F₁ = 0`; `F₃(0) = 3/3 = 1`, `2·1 = 3−1`; `f₂ = 2+T ≡ T` | stated values | agrees; `2F_a[0] = a−1` follows from `a·F_a[0] = choose(a,2)` and `2·choose(a,2) = a(a−1)` with `a` a unit |
| §1.1 recurrence and Laurent/exponential Checks (lines 316–319) | a=2: f₀,f₁,f₂; a=3 over Z₂; a=2 and a=1 Laurent; `F₂(e^t−1)` | `2f₀ = 1`; `2f₁ = 0 − f₀`; `2f₂ = 0 − 0 − f₁`; `3f₀ = 3`, `3f₁ = 1 − 3`; `1/T − 2/(T(2+T)) = (2+T−2)/(T(2+T))`; `1/T − 1/T`; `1/(1+e^t) = 1/2 − t/4 + t³/48 − …` | `1/2, −1/4, 1/8`; `1, −2/3`; `1/(2+T)`; `0 = F₁`; cubic `1/48`, third derivative `1/8 = (1−16)B₄/4` | agrees |
| §1.6 extension `(δ_u−1)ζ_p = λ_u` from a=p+1 (line 417) | u = a²; u = −1; regularity of `δ_a−1` at p=2 | `λ_{a²} = λ_a + δ_a λ_a = (1+δ_a)λ_a` (§1.4 cocycle) and `(δ_{a²}−1)ζ_p = (δ_a+1)(δ_a−1)ζ_p = (1+δ_a)λ_a`; u=−1: `λ_{−1} = 0` (Check line 386) and `(δ_{−1}−1)ζ_p = 0` by `zeta_reflection`; a=3 = (−1)·(−3) with −3 of infinite order in 1+4Z₂ | cross-relation `(δ_a−1)λ_u = (δ_u−1)λ_a` then cancel the regular `δ_a−1` | agrees; the cancellation is in the total quotient ring and `(δ_u−1)ζ_p ∈ Λ` because ζ_p is a pseudomeasure |
| §1.6 Checks (lines 435–437) | p=3,k=2; p=2,k=2; k=1 | `λ₂(x²) = (1−3)(1−4)(1/6)/2 = 1/2`, `/3 = 1/6`; `λ₃(x²) = (1−2)(1−9)(1/6)/2 = 2/3`, `/8 = 1/12`; `1−p⁰ = 0` | `(1−3)ζ(−1) = 1/6`; `(1−2)ζ(−1) = 1/12`; 0 | agrees |
| `tameNumerator`/`tameSeries` on the inline sum (§2.3 lines 532–536, 551) | η quadratic mod 3; a.val = 0 term; principal mod 3 | `Q_η = −(f₁ − f₂) = −(1 − (2+T)) = 1+T`; `F_η = (1+T)/(3+3T+T²) = 1/3 + 0·T − T²/9 + T³/9 + …`; empty range gives 0; principal: `−(f₁+f₂) = −3−T` | README Check values `1+T`, `1/3, 0, −1/9, 1/9`, `−3−T` | agrees; at `D = 1` the single term has `a.val = 0`, so `Q_η = 0` (Check line 553) |
| §§0.1–0.6, 1.5, 1.7, 2.1–2.2 (except the row above), 2.4–2.8, 3.1–3.7 (except `principalNumerator_mass`), 4.1–4.14, 5.1–5.9 (untouched) | as in r1 and r2 | r1 rows 2–36, r2 rows | r1, r2 | carried forward unchanged |

**Ownership.** The deleted Lean definitions and the README's former §1.1 interface now live in ColemanPowerSeries §§2.10–2.10a, cited by name and section; PadicMeasuresIwasawaAlgebras on main is cited for the generic measure interfaces only; no roadmap on main, in the board's packages or among the sibling checkouts of the brief defines the natural-parameter smoothed series or the finite tame kernel (`roadmaps grep` for `tameNumerator`, `tameSeries`, `smoothingSeries`, `cyclotomicSeries` across main and the open heads matches only this pull request and ColemanPowerSeries). Note, not a finding: the hypothesis `ha : IsUnit ((p+1 : ℕ) : ℤ_[p])` of `principalNumerator_mass` is provable (`p+1 ≡ 1 mod p`) and unused by the statement; it predates this change.

**Declared gaps.** None declared; none needed: every supplier citation resolves at the cited head.

## Not verifiable

- As in the earlier rounds: Morita (1975) could not be fetched; Washington §5.1 is paywalled (uncertified); Gross–Koblitz is an OCR scan; Kubert Corollary 4.15(iii) parity labels are illegible. None is cited by a passage changed at this head.
- Ownership against open pull requests was checked through the sibling checkouts named in the brief and the `roadmaps grep` index; packages on the board were checked by name only (none of the five listed concerns p-adic L-functions).

## Source issues

- none new at this head (the first review's register stands: RJW Theorem 8.2(a)/Remark 8.3(2), Lemma 7.5 proof, Theorem 6.1(ii) case split; Kubert Proposition 3.3 and the "Theorem 4.17" citation; Gross–Koblitz (3.5); Zhao Example B.2).
