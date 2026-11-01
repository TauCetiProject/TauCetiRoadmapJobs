# Review of ArithmeticStatisticsPartIII (pull request #1174 at 6f16f6c)

**Verdict:** needs changes

The gate fails on one style rule (145 `<a id=` anchor tags), and one headline that is statable at the pins is absent from `Suggested.lean`. Everything else below is P3. The mathematics of the sampled sections holds up well: the roadmap's corrections to its sources (the BST Jacobian constant, the BS claim about `∂Δ/∂e`, the BSW II Gram-determinant step, the main-body exponent for `n = 4`, the `c_p/p²` misprint) were each recomputed and confirmed.

## R01 (P2) — Bhargava's quartic-pair orbit count is statable at the pins but absent

Location: `TauCetiRoadmap/ArithmeticStatisticsPartIII/Suggested.lean` lines 23–27 ("The quartic-pair, quintic-ring, … orbit counts … are deferred. Their representation-specific integral orbit dictionaries, invariant maps, real component sections and arithmetic fundamental multisets are absent at the pins"); README §2.8 "Quartic finite congruence count".

Claim: the count of `GL₂(ℤ) × SL₃(ℤ)`-classes of absolutely irreducible pairs of integral ternary quadratic forms with `|Disc| < X` and `4 − 2i` real common zeros cannot be stated against the pinned libraries.

Witness: the statement needs no ring dictionary. Its carriers are pairs of integral ternary quadratic forms (six integer coefficients each), the discriminant `cubicDiscriminant (det (x·A − y·B))` (the file already defines `cubicDiscriminant` and Mathlib has `Matrix.det`), the common real zeros on `Projectivization ℝ (Fin 3 → ℝ)` (the pattern of `smoothHypersurfacePoints`), absolute irreducibility (no common zero in `P²(ℚ)` and `det(xA − yB)` irreducible over `ℚ`, bhargava-quartic lines 300–303) and the orbit relation by matrix substitution (the pattern of `binaryOrbitSetoid`). The theorem is bhargava-quartic Theorem 7, lines 310–324: limits `ζ(2)²ζ(3)/48`, `/8`, `/16` of `N(V^{(i)}_ℤ; X)/X` for `i = 0, 1, 2`. The file states the binary-quartic and cubic counts with exactly this amount of definition.

Repair: state Theorem 7 (unweighted class count, `i = 0, 1, 2`, strict `|Disc| < X`, limit form) with those definitions, and name it in the README's §2.8 target. The quintic count is genuinely not statable simply (its degree-40 discriminant has no short closed form) and may stay in the docstring; the docstring's sentence must then say that, not "dictionaries absent".

## R02 (P3) — Gate: 145 `<a id=…>` anchor tags (residue rule)

Location: `TauCetiRoadmap/ArithmeticStatisticsPartIII/README.md` lines 84, 104, 126, … (every target) and the `<a id="ref-N">` lines of the References.

Claim: the gate reports `residue=145 … FAIL`; no acceptance while it fails.

Witness: `gate.md` in the worker's run; the rule forbids `<a id=` anchor tags.

Repair: delete every `<a id="…"></a>` line. Targets are bold paragraphs, not headings, so the intra-README links `[…](#slug)` cannot survive as fragments: replace each with the section number and the target's title in words ("§2.1, Chebyshev bounds for prime sums"), and replace `[[n]](#ref-n)` by `[n]`. The two `[AS-I-9]`/`[AS-II-24]` style reference-link definitions stay.

## R03 (P3) — README and Lean do not agree on names

Location: `Suggested.lean` lines 48–168, 253, 328–339; README API bullets throughout (for example lines 218–236, 320–340, 458–472, 560–580).

Claim: every Lean name appears in the README, and a backticked name in an API bullet is declared in `Suggested.lean`.

Witness: twenty declarations of `Suggested.lean` occur nowhere in the README: `monicPolynomial`, `binaryForm`, `binaryOrbitSetoid`, `binaryCoeff`, `quarticI`, `quarticJ`, `binaryRealRoots`, `quarticClasses`, `cubicDiscriminant`, `cubicClasses`, `hypersurfaceForm`, `HasProjectiveZero`, `smoothHypersurfacePoints`, `hypersurfaceRealDensity`, `padicMass`, `hypersurfacePadicDensity`, `hypersurfaceClasses`, `binaryGoodDensity`, `binaryWeight`, `binaryLocalMass` (grep count 0 for each). Conversely the README's API bullets carry backticked names that `Suggested.lean` does not declare: `StronglyDvdAt`, `quarticW1_iff_splittingType`, `QuarticRealType`, `quarticLocus`, `quarticFundSet`, `iwasawaN`, `gaussDomain`, `quarticAveragedCount`, `cubicAveragedCount`, `bombieri_smul_rotation`, and the rest of the API lists in §§2.1–2.6.

Repair: name each Lean definition at the README target it serves (the two class sets and invariants in §2.4 and §2.6, the hypersurface carriers in §2.23, the weight carriers in §2.5 and §2.7, the box and multiplicity in §2.13), and write the undeclared API names in words (the house rule: a backticked name of this roadmap's own is a claim that `Suggested.lean` declares it).

## R04 (P3) — Supplier declaration names that do not exist where they are cited

Location: README line 66 ("supplies `Coefficients.StrongSquareDivides` and `Coefficients.WeakSquareDivides`", "supplies `Cubic.normalizedDisc`"), line 1533 (`ArithmeticStatisticsPartI.localSpecificationFamily`), line 2280 (`TauCetiRoadmap.ArithmeticStatisticsPartII.Cubic.normalizedDisc`, `ordinaryDisc_eq`), line 1401 ("ArithmeticGaloisDuality §R02.3.2 `GlobalFunctionField.ideles`, `sUnits`, `sClassGroup`, `ideleDegree_principal`, `sUnits_exact` and `finite_sClassGroup`").

Claim: these are declarations of the named suppliers.

Witness: `ArithmeticStatisticsPartI/Suggested.lean` at #1171 declares neither `StrongSquareDivides`, `WeakSquareDivides` nor `localSpecificationFamily` (its `Coefficients` namespace at line 96 has other content); `ArithmeticStatisticsPartII/Suggested.lean` at #1173 has no `Disc` declaration at all (its namespaces are `BinaryQuartic` …), and `normalizedDisc`/`ordinaryDisc_eq` are only API names in Part II's README prose (line 2359); `ArithmeticGaloisDuality` at #858 contains none of the six `GlobalFunctionField` names (the only `GlobalFunctionField.*` names there are `sha_duality`, `tate_vanishing`, `centralObstruction_localization`); its §R02.3.2 (line 2075) supplies the idele group, `S`-units and `S`-class group in prose.

Repair: cite the supplier target by name and section ("ArithmeticStatisticsPartII, Divided-coefficient cubic discriminant", "ArithmeticStatisticsPartI, Strong weak discriminant", "ArithmeticGaloisDuality §R02.3.2, ideles and `S`-units") and state the consumed fact in words; delete the fully qualified Lean names.

## R05 (P3) — Dead link fragments into AnalyticNumberTheoryPartII

Location: README lines 2465–2471 (`[AN-II-1]: ../AnalyticNumberTheoryPartII/README.md#s5-4` … `#s5-29`).

Claim: those fragments exist.

Witness: AnalyticNumberTheoryPartII at #1167 has no `id="s5-4"` … `id="s5-29"` anchors (grep count 0 for all seven); its sections are headings `### 5.4 Binary-cubic action, …` (line 657) through `### 5.29 …` (line 1351).

Repair: cite "AnalyticNumberTheoryPartII §5.4" (etc.) without a fragment, or use the heading-generated fragment.

## R06 (P3) — Unused hypothesis `d ≤ n` on the hypersurface density

Location: `Suggested.lean` line 242 (`(hnd : d ≤ n)`); README line 2239 ("For `d>=2,n>=d,(n,d)!=(2,2)`").

Claim: the Fano range is needed for the local-density limit.

Witness: poonen-voloch line 112: Theorem 3.6 assumes only `n, d ≥ 2` and `(n, d) ≠ (2, 2)`; the roadmap's own inputs ("Hypersurface local tail", line 2218, and "Hypersurface finite local count", line 2232) assume only those; nothing in the proof route uses `d ≤ n`, and the Lean statement for `(n, d) = (2, 3)` (plane cubics) is true and excluded only by this hypothesis.

Repair: drop `hnd` and "n ≥ d"; keep the remark that Layer 5's Hasse-principle comparison is the place where Conjecture 2.2(ii)'s Fano range matters.

## R07 (P3) — References: duplicates, missing entries, inline "Sources:" sentences

Location: README lines 2419–2423 ([5] and [79] are both Bhargava–Shankar–Tsimerman, Inventiones 193), 2427 and 2459 ([19] and [81] are both Bhargava's geometric-sieve preprint); inline citations at lines 1289 (Shankar–Tsimerman arXiv 2503.02381), 1334 (Cohen–Diaz y Diaz–Olivier), 1403 (Stichtenoth), 1563, 1585 (Stacks 0BYD, 0CE3), 1589, 1597 (Dietmann; Browning–Heath-Brown), 2200 (Lang–Weil), 2385 (Platonov–Rapinchuk–Rapinchuk).

Claim: each cited work has one entry in `## References`.

Witness: the eight works just listed have no entry; two works have two entries each; the Shankar–Tsimerman locator (Proposition 11.2, (45), Corollary 11.3, p. 41) is for v1 while the arXiv listing now serves v2, where §11 starts on p. 40 and (45) is on a later page; §§2.8, 2.10, 2.13, 2.15, 2.16, 2.23 and the supporting estimates put their locators in "Sources: …" sentences rather than the parenthetical form used elsewhere.

Repair: one entry per work, merge [5]/[79] and [19]/[81], add the missing eight, cite the Shankar–Tsimerman version read, and move inline locators into the parenthetical form.

## Verified sound

**Gate and build.** Dependency check: `depcheck: 205 roadmaps, 1451 edges, 0 problem(s)` (no UPWARD or CYCLE line; the roadmap sits at line 97 of the merge order after its suppliers). `lake build TauCeti.RingTheory.MvPolynomial.LinearSubst` succeeded (1752 jobs); `lake env lean Suggested.lean` elaborated with exactly eleven `declaration uses sorry` warnings and no error. A scratch copy with `#check @name` for all 36 declarations elaborated; each elaborated type was compared with its README statement (quantifier order, strict `< X`, real-root counts, the `min (1/5) (1/(2κ))` exponent, the three error terms of the binary sieve). No `set_option`, no sorried data, single `import Mathlib` plus one existing Tau Ceti module. One-tactic probes (`simp`, `rfl`, `infer_instance`) on `quantitative_ekedahl_sieve`, `cubic_count`, the `Multipliable` clause of `hypersurface_local_density` and `monic_summed_tail` closed nothing: no padding.

**Adversarial table** (values computed by hand or by reading the pinned definition).

| Statement | Instances tried | Values on each side | Result |
|---|---|---|---|
| `Polynomial.discr` normalisation (Lean `binaryDiscriminantPolynomial`, `cubicDiscriminant`) | cubic formula at the pin | `Resultant/Basic.lean:935`: `sylvesterDeriv.det · (−1)^{n(n−1)/2}`, bottom row divided by the leading coefficient; `discr_of_degree_eq_three` (line 1015) gives `b²c² − 4ac³ − 4b³d − 27a²d² + 18abcd` | the universal discriminant is the standard one, also when `a₀ = 0` specialises |
| `quartic_count`, `r = 0` coefficient `8/135` | both definite signs | bs-quartic (26) line 708: `Vol = 16ζ(2)/135` for `i = 0, 2+, 2−`, `64/135` for `i = 1`; `n_i = 4, 2, 4, 4` ⇒ `4/135, 32/135, 4/135 + 4/135 = 8/135` (Theorem 2.1(c), line 333) | Lean's `r = 4, 2, 0 ↦ 4/135, 32/135, 8/135` correct |
| Quartic invariant areas | `H < X`, `Δ > 0` | `∫₀^{X^{1/3}} 4I^{3/2} dI = (8/5)X^{5/6}`; box `2X^{1/3}·4X^{1/2} = 8X^{5/6}`; `(2ζ(2)/27)(8/5) = 16ζ(2)/135` | matches (23)–(26) |
| Real root types / invariants | `x³y − xy³`, `x³y + xy³`, `x⁴ + y⁴`, `x⁴ − y⁴` | `I = 3, J = 0, 27Δ = 108, Δ = 4`; `I = −3, Δ = −4`; `I = 12, Δ = 256`; `I = −12, Δ = −256` | Checks and Conventions agree |
| Normal forms of real orbits | `c·xy(x−y)(x−μy)` at `μ = −1`; `c·xy(x²+pxy+y²)` at `p = 0` | `I = c²(μ²−μ+1) = 3c²`, `J = c³(μ+1)(2μ−1)(μ−2) = 0`, `4I³−J² = 108c⁶`; `I = −3c²`, `J = 0`, `−108c⁶` | signs as stated |
| `L^{(2+)}` section | `(1/16)x⁴ − (√(2−J)/(3√3))x³y + ½x²y² + y⁴` | `I = 12/16 + 1/4 = 1`; `J = 9/4 − (2 − J) − 1/4 = J` | height one |
| Stabilisers | `x³y + xy³` (`i = 1`), `x⁴ + y⁴` (`2+`) | `{±1, ±swap}` order 4 (`diag(1,−1)` negates); eight signed permutations | `n_1 = 2`, `n_{2±} = 4` |
| Eligible pairs | `(−2, ±7)`, `(1, 2)` | `4(−8) − 49 = −81`, `Δ = −3`, `H = 49/4`; `4 − 4 = 0` | smallest nonzero height, degenerate pair excluded |
| Strict Gauss domain covolume | `t^{−2}du d^×t` vs `dxdy/y²`, `K₊` | `y = t²` ⇒ `dxdy/y² = 2t^{−2}du d^×t`; `vol(fd) = π/3`; `½·(π/3)·½ = π/12 = ζ(2)/(2π)` | bst-dh's `ζ(2)/π` (line 733) is the full-`SO₂` doubled domain |
| Cubic Jacobian `dv = 4π|Disc| dg` | `v = x³ − xy²` (`Disc = 4`), basis scalar, `diag(1,−1)`, `E₁₂`, rotation | rows `(1,0,−1,0)`, `(3,0,1,0)`, `(0,−2,0,0)`, `(0,−5,0,1)`: `|det| = 8 = 2|Disc|`; with `dk = dθ/2π` the constant is `4π`; same `|det| = 8` at `x³ + xy²` | README's `4π` right, bst-dh Proposition 23's `1/(2π)` off by 2, compensated by its doubled covolume |
| Davenport constants | `n_0 = 6`, `n_1 = 2` | `4π·(X/4)·(π/12)/6 = π²X/72`, `/2 = π²X/24` | Lean `cubic_count` |
| Davenport–Heilbronn density | `φ_p = 1_{U_p}` | `∏(1−p^{−2})(1−p^{−3}) = 1/(ζ(2)ζ(3))`; `(π²/(12n_i))/(ζ(2)ζ(3)) = 1/(2n_iζ(3))` | `1/(12ζ(3))`, `1/(4ζ(3))` |
| Index-`p` switching | `g = x³ + xy²`, `p = 5` | `diag(5,1)·g = (125x³ + 5xy²)/5 = 25x³ + xy²`; `Disc = −4·25·1 = −100 = 25·(−4)` | Check correct |
| Nonmaximal uniformity | `W_p^{DH}` | `C₀(X/p⁴ + 3X/p² + (p+1)X/p⁶) ≤ 5C₀X/p²` | uniform in `p` |
| `Disc ≡ −4ac³ (mod p²)` | `p ∣ a, b` | `b²c², 4b³d, 27a²d², 18abcd ≡ 0 (mod p²)` | with `p ∤ c`, `p` odd: `p² ∣ a` |
| Weak/strong at `p = 5` | `25x⁴ + x²y² + y⁴` | `I = 301`, `J = 1798`, `Δ = 105850800/27 = 3920400 = 25·156816`, `5³ ∤ Δ`; `∂Δ/∂a = 473616 ≡ 1`, `∂Δ/∂e = 11840400 ≡ 0 (mod 5)` | weakly divisible with `5 ∣ ∂Δ/∂e`: refutes bs-quartic's step at line 975 |
| Lemma 3.1 elimination regression | `f₁ = xz − y`, `f₂ = xz − w`, `f₃ = xz − y − w` | `V(f₁,f₂,f₃) = {x = y = w = 0} ∪ {z = y = w = 0}`; `Res_z(f₁,f₃) = −xw`, `Res_z(f₂,f₃) = −xy`; new zero set contains the plane `x = 0, y = −w ⊇ z`-axis; the Bézout coefficient is `A₁ = x`, zero on `Y` | README's objection to bhargava-geomsieve p.10 confirmed |
| `quantitative_ekedahl_sieve` degenerate inputs | `n = 0`, `I = (m)`, `k = 1`; `I = ⊤`; `k = n+1` | count `≤ 1 ≤ C(1/log M + 1)`; `∀ f ∈ ⊤` fails at `f = 1`, count 0; `I ≠ ⊤` forces `dim ≥ 0` so `k ≤ n+1` and `r^{n−k+1} ≥ 1` | no false instance |
| Uniform bound mod `p` | `Y = V(x₁,…,x_k)`, `Y = V(p₀)` | `p^{n−k}`; `p₀^n` at `p₀` | explains `p > M₀` |
| Quartic suborders | `O_L = ℤ⁴` | six index-`p` subrings (one per coordinate pair); `R_{[a:b]}` index `p·p·p = p³`, closed: `au'' + bv'' = z'(au+bv) + auu' + bvv' ≡ 0 (mod p²)`; `ℤ + pℤ⁴` index `p³`, `σ(p) = p + 1` resolvents (bhargava-quartic line 1322) | Checks correct |
| Class-group inputs | disc `−23` cubic `K`, `K(i)/K` | `Disc(K(i)) = 23²·(−4)³ ⇒ N(d) = 64`; closure `S₃ × C₂` | square conductor norm does not imply `S₄` |
| Galois exclusion exponents | `n = 4`, wreath index 3; `n = 6` | `10 − 4 + 4/3 = 22/3`; `720/72 = 10` | as stated |
| Selberg balance | `V = X^D`, `E = X^{D−1}`, `L = X^{2/5}` | `X^D L^{−1/2} = X^{D−1/5}`, `E L² = X^{D−1/5}` | both terms equal |
| Monic fixed-modulus exponent | `Y = X^{1/κ}` | congruence error `X^{D−1}·Y^{κ−1+ε} = X^{D−1/κ+ε}`; Euler remainder `X^D/Y = X^{D−1/κ}`; tail at `Y`: `X^{D−1/(2κ)+ε} + X^{D−1/5+ε}` | `min(1/5, 1/(2κ))` = bsw-sqfree1 Theorem 4.1 line 947 |
| Degree-two monic weak tail | `|a| < X`, `|b| < X²`; `x² − 25` | `|Δ| < 5X²` ⇒ `m < √5X`; `Δ = 100`, lift `b' = 5` gives `−20 ≢ 0 (mod 25)` ⇒ weak; sum `Σ_a Σ_{m>M}(X²/m² + 1) ≪ X³/M + X²` | as stated |
| `binary_fixed_modulus_sieve` error terms | modulus `N²m²`, `M = X^τ` | classes `≤ N^{2n+2}m^{2n}2^{ω(m)}`; per class `(X/(N²m²))^n + 1`; summed: `N²X^{n+τ+ε} + N^{2n+2}X^{(2n+1)τ+ε}`; truncation `X^{n+1−τ+ε} ≤ X^{n+1−η+ε}` (`τ ≥ η`); tail `≤ 2CX^{n+1−η+ε}` (`δτ ≥ η + ξ`) | the stated implication is self-consistent |
| Even-tail parameters | `(δ,η,ξ) = (½, 1/100, 0)`, `(½, 9/10, 0)`, `(1, 3/5, 0)` at `n = 4` | `τ = 1/50`, `9τ = 9/50 < 5`; `τ = 9/5 > 1`; `τ = 3/5`, `9τ = 27/5 > 5` | Checks correct; odd `n`: `τ = 1/n`, `(2n+1)/n < n+1 ⇔ n² − n − 1 > 0` |
| bsw-sqfree2 Theorem 6.6 exponent | `n = 4`, `n = 6` | proof (line 1980) gives `(n−2)/(2n²+2n+2)`: `2/42 = 1/21 < 1/16`; `4/86 > 1/24` | README's `θ₄ = 1/21`, `θ_n = 1/(4n)` for `n ≥ 6` correct |
| bsw-sqfree2 Proposition 3.6 | `M = (1, i)` | `det(MMᵗ) = 1 + i² = 0` with `M` of full rank | the Nullstellensatz step (line 583) fails; Lemma 6.25's `det ≫ X^{−κ}` unproved; README's Cauchy–Binet route gives `Gram ≫ X^{−2κ}` |
| Hypersurface primitive conditioning | scaling by `p` | `μ(sol) = μ(prim ∧ sol)/(1 − p^{−N})`, `μ(prim) = 1 − p^{−N}` ⇒ conditional density `= c_p` | Lean's full-lattice `c_p` with primitive count consistent |
| Reducible-locus codimension | `(n,d,r) = (2,2,1)`, `(2,3,1)` | `6 − 3 − 3 + 1 = 1`; `10 − 3 − 6 + 1 = 2` | conic exception exact |
| Smooth point example | `x₀^d − x₁x₂^{d−1}` at `[0:0:1:0…]` | value 0, `∂/∂x₁ = −x₂^{d−1} = −1` | Hensel applies at every `p` |
| Poonen–Voloch hypotheses | Theorem 3.6 | line 112: `n, d ≥ 2`, `(n,d) ≠ (2,2)` only | `d ≤ n` unused (R06) |
| bhargava-geomsieve `(40)` | `c_p = #{x ∈ (ℤ/p²)^m : f ≡ 0}` (line 750) | density `c_p/p^{2m}`, printed `c_p/p²` | README's correction confirmed |
| Lean junk values | `binaryCoeff f 4 7`; `squareDivisorMultiplicity` at `Δ = 0`; ratio at small `A` | coefficient of `x⁰y⁷` (unused); `(0).natAbs.divisors = ∅ ⇒ 0`; `0/0 = 0` before the limit | none affects a statement |
| Setoid conventions | `γ = −1` | twist 0: `f(−x,−y) = f` for quartics (`f ≁ −f`, both definite signs counted); twist 1: `det(−1)¹·(−f) = −f`, so `f ∼ −f` as in the Delone–Faddeev action | matches BS and BST class counts |
| Acceptable weight product | irreducible `f` | `Δ(f) ≠ 0` ⇒ `φ_p(f) = 1` for all but finitely many `p` ⇒ `∏'` is a finite product | `binaryWeight` well defined on classes by clause 2 |

**Source locators checked** (page markers of the cached texts): bhargava-geomsieve Lemma 3.1 p.10, Remark 3.2 p.11, Theorem 3.3 p.11, (16)–(21) pp.12–13, (23)–(24) p.13, Lemma 3.6 p.14, Conditions 1–6 p.8, Theorem 2.1 p.9, (40)–(44) pp.17–18; bs-quartic Theorem 1.6 p.4, Theorem 2.1 p.7, §2.1 (8) p.9, Lemma 2.3 pp.9–10, Lemma 2.4 p.10, Theorem 2.5 p.11, Proposition 2.7 p.12, Proposition 2.8 and (23)–(26) p.13, Lemma 2.9/Proposition 2.10 p.14, Theorems 2.11–2.12 pp.14–15, Theorems 2.17–2.18 p.17, Theorem 2.19/(37)/2.20 p.18, Theorem 2.21 and (43) p.19, Lemma 2.22 p.21; bst-dh Theorem 20 p.9, §5.1 (15) p.10, Lemmas 21–22 pp.10–11, Proposition 23 p.12, §5.4 p.14, Theorem 26 p.14, Lemma 13 p.6, Propositions 15–16 pp.7–8, Proposition 29 pp.23–24, §8.3 p.24, Theorem 27 and Remark 3 p.20, Theorem 7 p.3, §9.1 (63)–(71) pp.27–28, §9.7 p.35; bhargava-quartic Theorem 7 p.1041, Lemma 12 p.1044, Theorem 22 and (32) p.1055, Proposition 23 pp.1056–1058, Lemmas 24–26 and (33)–(34) pp.1056–1057; bhargava-quintic Theorem 17 p.1585, Lemma 20/Proposition 19 and the `p^{min(2k−2,20k/11)}` bound p.1587; bsw-sqfree1 Theorem 1.5 p.4, Propositions 2.5–2.7 pp.13–14, 3.4–3.6 and (36)–(37) pp.19–20, κ-acceptability and Theorem 4.1 p.21, Lemma 4.2 p.21, Proposition 4.3 pp.21–22, Theorem 4.4/(39) p.22; bsw-sqfree2 (Forum Pi) Theorem 5 pp.3–4, Propositions 4.4/4.5/4.8 pp.18–19, Propositions 5.4–5.5 p.22, Lemmas 6.1–6.2 pp.25–26, Theorem 6.6 p.29, Theorem 6.11 p.33, Theorem 6.24/Lemma 6.25 p.44, Proposition 6.26 p.45, Corollary 6.27 p.51, Theorem 7.1 p.51; poonen-voloch Theorem 3.6 p.3, Remark 2.1 p.1, Conjecture 2.2 p.2; bsw-global1 Theorem 4.1/(16)–(17) p.13, Theorem 4.7 p.19, Theorems 5.1–5.3 pp.19–20, §9 pp.26–27; bsw-global2 Proposition 2.1/Lemma 2.2 p.7, Lemma 3.1 p.12, (14)–(17) p.13, Theorem 3.3 p.13, Proposition 3.4/Remark 3.6/Lemma 3.7 p.14, (22)/(24)/Theorem 3.8 p.15, Theorem 4.1 p.17; bgw-odd Theorem 36 p.30, Definition 37/Theorem 38 p.30, Definition 39 p.31, Proposition 42 p.33; bs-ternary Theorem 8 p.3, Theorems 17–18 p.11, `c₄/16, c₆/32` p.12; bs-4selmer Theorem 10 p.6, (17) and Theorems 19–20 p.14, Theorem 22 p.16; bs-5selmer Theorem 12 p.7, Proposition 24 and (18) (`1/5` factor) p.17, Theorems 25–26 p.17; bss-second (38)/Theorem 5.1 p.24, Theorem 6.3 p.30; bklos-3isog Theorem 5.3 p.9, Theorem 6.2 p.10, Theorems 7.1–7.2 pp.10–11; dietmann-galois Lemmas 1, 2, 5 p.3, Lemma 6 p.4; bhb-plane-curves Theorem 1 and (3) p.2.

**Library declarations opened at the pins** (all elaborated by `#check` or read): `Polynomial.discr`, `Polynomial.sylvesterDeriv`, `discr_of_degree_eq_three` (`Mathlib/RingTheory/Polynomial/Resultant/Basic.lean` lines 79, 935, 1015); `MvPolynomial.linearSubst` (`TauCeti/RingTheory/MvPolynomial/LinearSubst.lean`); `ModularGroup.volume_fd_lt_top`, `ModularGroup.isFundamentalDomain_fdo` (`TauCeti/NumberTheory/Modular.lean` lines 116, 234); `TauCeti.Place.powerSeriesExpansion`, `mem_filtration_iff_coeff_powerSeriesExpansion_eq_zero` (`TauCeti/FieldTheory/FunctionField/Place/Expansion/PowerSeries.lean` lines 36, 76), `completionIntegersEquivPowerSeries` (`…/Completion.lean`); `Chebyshev.theta_le_log4_mul_x`, `Chebyshev.theta_eq_sum_primesLE`, `Chebyshev.eventually_primeCounting_le`, `MvPolynomial.schwartz_zippel_totalDegree`, `hensels_lemma`, `Northcott.comp_of_finite_fibers`, `UpperHalfPlane.volume_eq_lintegral`, `MeasureTheory.integral_image_eq_integral_abs_det_fderiv_smul`, `Polynomial.resultant_eq_zero_iff`, `Polynomial.card_roots'`. Duplication: the pinned Tau Ceti has no binary cubic or quartic forms, no Ekedahl sieve and no discriminant-density statements (grep), so the roadmap is the owner of every carrier it defines.

**Cross-roadmap citations resolved** (at the heads named in the brief or on main): all ten ArithmeticStatisticsPartI anchors and all 23 ArithmeticStatisticsPartII anchors exist (the 24th, `supporting-descent-and-integral-realization`, is a heading, so its fragment is generated); AnalyticNumberTheoryPartII §§5.4, 5.5, 5.6, 5.7, 5.21, 5.28, 5.29 are headings; AnalyticNumberTheoryPartI §§3.1, 3.3, 3.4, 3.22 (Dirichlet divisor average), 3.26 (uniform divisor subpower bound), 3.27, Layers 0 and 3; ArithmeticDirichletSeries `EulerProductData` (Layer 3), `perronFormula`, `continuedLFunctionOfWeight` (Layer 6), `wienerIkehara`, `LSeriesHasSum` (Layer 9); AutomorphicLFunctionsAndLocalFactors AL.0; GeometryOfNumbersAndQuadraticArithmetic §4.1 (lattice-point counting, Davenport); GlobalNumberFields Layers 3 and 11; AdelicAlgebraicGroups AA.0, §§2.2–2.4, 3.1–3.4; AbelianSchemesAndArithmeticModuli A3.2–A3.7; SelmerIwasawaCohomology §2.12a; InverseGaloisAndArithmeticFundamentalGroups IG.0–IG.2; PolynomialGaloisGroups (main); DeligneWeightsAndPurity §1.6 (the Weil estimate for curves through the Jacobian); ClassFieldTheory `globalClassFieldCorrespondence`, `globalAbelianGaloisEquiv` (Layer 12, main); OperatorTheory PD-C09–PD-C18 (`PolarDecomposition/README.md` lines 471–485); SchemeAndStackFoundations §5.12 `bezout_inequality` and Layers 0–3, 5; AlgebraicCurves Layers 2, 3–5, 12 with `TauCeti.riemannRochSpace`, `TauCeti.Divisor.dim…`; ArithmeticGaloisDuality §R02.3.2 (section exists; see R04 for the names); ModularityAndLanglandsExtensions is in the merge order (line 176). The sibling pull request #1531 (ArithmeticStatistics, same author) is a 26-line stub and owns nothing stated here. Ownership against open pull requests whose files the brief did not give was not checked.

**Design note (not a finding).** The even-degree binary sieve is stated conditionally on the row-spanning count, the paired-fibre summations and the restricted Gram bound, while bsw-sqfree2 Theorem 5(c) is unconditional. The author's reasons were checked and hold: Proposition 3.6's divisibility is unproved (table row above) and Theorem 6.6's stated exponent exceeds what its proof gives at `n = 4`. The roadmap's Theorem 6.24 exponent `κ″ = κn/(n−1)` (in place of `κ/2`) is the honest consequence of the Cauchy–Binet replacement.

## Not verifiable

- Cohen–Diaz y Diaz–Olivier, *Enumerating quartic dihedral extensions of ℚ* (Compositio 133, 2002): the Cambridge Core page shows "You have Access" but no open-access label, so the PDF was not fetched; §1.1 p.65 and Proposition 6.2 are cited by locator only.
- Lang–Weil 1954 (JSTOR, paywalled) and Platonov–Rapinchuk–Rapinchuk 2023 (book): cited by locator only; the Lang–Weil statement used (hypersurface case with `q^{n−3/2}` error) is standard and its restatement in poonen-voloch line 114–117 was read.
- Stichtenoth Theorem 1.5.15 (textbook; AlgebraicCurves on main records the same result as `TauCeti.Divisor.dim_eq_degree_add_one_sub_genus_…`).
- Shankar–Tsimerman: only v2 is on arXiv; the v1 locators (Proposition 11.2, (45), Corollary 11.3, p.41) could not be matched page by page (Proposition 11.2 is at v2 line 2616, (45) at line 2489).
- The paired-fibre counting hypothesis (§2.15) and the restricted Gram hypothesis (§2.16) are hypotheses of conditional targets, not claims; their internal consistency was read (the `n = 4` block example has `B_top B_topᵗ = I₂`, `rank B = 4`), their sufficiency for the even-degree tail was not re-derived.

## Source issues

- **Error** in bs-quartic at proof of Theorem 2.20, printed p. 18: the source says a form in `W_p^{(2)}` has `p ∤ ∂Δ/∂e`, since otherwise it would be strongly divisible; it should be that some partial derivative is nonzero mod `p`, not necessarily `∂Δ/∂e` (`25x⁴ + x²y² + y⁴` at `p = 5`); affects the proof.
- **Gap** in bs-quartic at Theorem 2.19 and (37), printed p. 18: the source says Bhargava's Proposition 23 bounds all orbits on `W_p^{(2)}(W)` by `O(X/p²)`; it should restrict to absolutely irreducible (`A₄`/`S₄`) elements, which Proposition 23 counts, so the `D₄`, `C₄`, `V₄` field algebras of irreducible binary quartics need a separate argument; affects the proof.
- **Gap** in bs-quartic at §2.1, claim (8), printed p. 9: the source says the class of `x` is represented `m(x)` times in `F h·L^{(i)}` for any `h`; it should be for almost every `h`, since boundary points of the Gauss domain (with the printed full `SO₂` factor, also `±g`) give extra multiplicity (`x⁴ + y⁴` with `g = 1` and `g = k(π/2)`); affects the proof.
- **Misprint** in bst-dh at Proposition 23, p. 12, and §5.4, p. 14: the source says the Jacobian constant is `1/(2π)` with `dk` of mass one and the covolume of `GL₂^{±1}(ℤ)` is `ζ(2)/π`; it should be `1/(4π)` (the Jacobian at `x³ − xy²` is `8 = 2|Disc|`) and `ζ(2)/(2π)`, the two slips cancelling; affects nothing.
- **Gap** in bhargava-geomsieve at proof of Lemma 3.1, printed p. 10: the source says replacing `f_i` by `Res_{x_n}(f_i, f_k) = A_if_i + B_if_k` keeps `Y′` as the component containing `Y`; it should require `A_i` nonvanishing on `Y`, which can fail (`f₁ = xz − y`, `f₂ = xz − w`, `f₃ = xz − y − w`, `Y` the `z`-axis); affects the proof.
- **Misprint** in bhargava-geomsieve at (6), (40)–(44), printed pp. 5, 17–18: the source says the squarefree density is `∏(1 − c_p/p²)` with `c_p` the number of residues mod `p²` where `f` vanishes; it should be `∏(1 − c_p/p^{2m})`; affects nothing.
- **Error** in bsw-sqfree2 at Proposition 3.6, printed p. 12: the source says vanishing of `det(B_top B_topᵗ)` over `ℂ` forces `B_top` to have deficient rank, hence `det(B_top B_topᵗ) ∣ Δ`; it should note that a complex Gram determinant vanishes on full-rank matrices (`(1, i)`), so the divisibility is unproved; affects the proof (Lemma 6.25, Theorem 6.24, Theorem 5(c)).
- **Error** in bsw-sqfree2 at Theorem 6.6, printed p. 29: the source says the main-body saving is `1/(4n)`; it should be `min(1/(4n), (n−2)/(2n²+2n+2))`, which is `1/21 < 1/16` at `n = 4` (the proof's second alternative on p. 33); affects a stated result.
- **Gap** in bsw-sqfree1 at proof of Theorem 4.4, printed p. 22: the source says each `f` lies in `O(X^ε)` sets `W_m` because `m ∣ Δ(f)`; it should exclude `Δ(f) = 0`, where every `m` qualifies; affects the proof.
