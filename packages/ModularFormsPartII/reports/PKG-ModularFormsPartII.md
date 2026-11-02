# PKG-ModularFormsPartII — package report

Deliverables: `packages/ModularFormsPartII/README.md` (967 lines, nine layers, every design target kept), `packages/ModularFormsPartII/Suggested.lean`, `packages/ModularFormsPartII/metadata.toml` (`topic = "math.NT"`), `packages/ModularFormsPartII/sources.toml`, and the top-level `gaps` list of `packages/ModularFormsPartII/design/plan.json` (no other key changed; checked by a JSON comparison against the original).

The design folder contained no `review.json` and `reports/` was empty. The review notes applied are the ones recorded in the `review` block of `design/plan.json`.

## Headline theorems

| Headline | README | Status |
| --- | --- | --- |
| The modular λ function is a covering of `ℂ ∖ {0,1}` with `Γ(2)`-orbits as fibres | §2.2 | stated: `modularLambda_covering` |
| Nonabelian Ihara lemma (CDT Lemma 4.4.1) | §4.1 | stated: `nonabelian_ihara` |
| Unbounded denominators theorem (CDT Theorem 1.0.1) | §6.3 | stated: `unbounded_denominators` |
| Algebraic-integer form (CDT Remarks 6.3.1–6.3.2) | §6.6 | stated: `algebraicInteger_unbounded_denominators` |
| Congruence of an integral component of a vector-valued form (CDT Theorem 7.3.3) | §7.11 | stated: `vectorValued_component_congruence` |
| Mason's conjecture, effective-span form (CDT Corollary 7.3.4, corrected) | §7.12 | stated: `vectorValued_effective_mason` |
| `R₂N = M₂N`, degree doubling, holonomy rank bound | §§6.1, 5.3, 3.8 | not statable: no Laurent `q`-expansion of weakly holomorphic forms at the pins (hence no embedding of weak modular functions into `ℚ((q^(1/N)))`), no integral holonomic ring |
| Algebraicity/congruence of integral three-point ODE solutions (CDT Theorem 7.2.1) | §§7.1–7.2 | not statable: no analytic continuation of ODE solutions, local monodromy or meromorphic-basis condition at the pins |
| Arithmetic fundamental group of the cuspidal model (CDT Theorem 7.4.10) | §9.3 | not statable: no regular model of `X(N)` over `𝓞_K` or its cusp section at the pins |

Definitions added only to make these statable: `IsWeakForm` (a predicate on native carriers: holomorphy, slash invariance, exponential growth of every `SL₂(ℤ)`-slash), `modularLambda` (an explicit η quotient), `IsVectorValuedForm` (CDT Definition 7.3.1 on native carriers). The README's general weakly holomorphic carrier stays QSeriesPartitionsAndMockModularForms §8.1; §1.1 proves equivalence.

## Corrections to the design (mathematical)

1. **Nonabelian Ihara (§4.1) generalized and its hypotheses made exact.** The Lean statement and README need only: G normal of finite index containing every `SL₂(ℤ)`-conjugate of `T^N` (level dividing N). Neither `G ≤ ±Γ(N)` nor `−I ∈ G` is used by the proof (Wohlfahrt is applied to `±K`, and `K ≤ Γ(N)`, `−I ∉ Γ(N)`). A first draft carried `−I ∈ G`; it was dropped after checking the proof. §§4.2–4.3 keep CDT's hypotheses (`−I ∈ G ≤ ±Γ(N)`, `L(G) = N`), which §4.3 genuinely needs (otherwise `A⁻¹GA ∩ SL₂(ℤ)` need not lie in `±Γ(N)`).
2. **Gap NF turned into an owned target (§6.5).** The design listed "arithmetic descent of noncongruence Fourier germs" as a gap with no supplier. It is a statement about weak modular functions, owned here, with a proof from FuchsianOrbifolds Layer 2 and BelyiMaps Layers 6, 9: integrality over `ℂ[j]`, linear disjointness of `ℚ̄((t))` and `ℂ`, finiteness of the `Aut(ℂ/K₀)`-orbit of Puiseux roots, and preservation of the branch locus `{0,1728,∞}` and of its ramification indices under σ.
3. **Gap LOCALGLOBAL dropped.** §8.7 states only the finite-denominator-support version. The "supplied local-to-global theorem" clause carried a hypothesis that is not stated mathematically, and the unrestricted converse is false (E19 counterexample, kept as a statement in §8.7).
4. **Supplier conventions recomputed.** ConformalMappingPartII uses `C(z) = i(1+z)/(1−z)` and cusp limit `F_N(1) = 1`. The N = 2 covering is therefore `F₂ = 1 − 2λ∘C`. With this C, the design's `2λ(C(z)) − 1` would have cusp limit −1. CDT's form is `−F₂(−z)`, recorded as a Check. `F₂′(0) = 4c > 0` is computed from `λ′(i) = ic`, `C′(0) = 2i`.
5. **§2.7 values consumed.** `|F₂′(0)| = γ₂`, `|F₃′(0)| = γ₃` are ConformalMappingPartII §5.5, and they are not reproved here.
6. **Period in §6.2.** `q^(11/12) = exp(2πi·11τ/24)`, so the period is enlarged to a common multiple of h and 24, not 12.
7. **Level in §§8.3–8.4.** Both quotients have weight 1 and character `χ₋₄(d)` on `Γ(2)`, so they lie in `M̃^!(Γ(4))`; CDT's `Γ(12)` follows. Both identities were recomputed exactly (see table).
8. **§7.11 general period and scalar.** The statement allows any period `h ≥ 1` and a nonzero scalar. The reduction to CDT's `h = 2, c = 1` case uses `F(hτ/2)` or `F(hτ)` induced back to `SL₂(ℤ)` (every parabolic of `SL₂(ℤ)` is conjugate to `±T^m`, so `ρ(T)` stays semisimple). The `𝓞_K` version needed by §8.7 is an API bullet with its trace-of-conjugate-operators proof.
9. **Étale fundamental group supplier.** The design cited InverseGaloisAndArithmeticFundamentalGroups IG.0. That roadmap itself takes the group from EtaleCohomologyFoundations §F.0.2, which is now cited.
10. **DiophantineApproximationAndTranscendencePartII §4.5 hypotheses.** The statement carries `p` nonconstant without poles on U. `J` is the unit-circle mean of `log⁺|p∘φ|`.

## Supplier gaps declared (plan.json `gaps`, README "Exact supplier contracts")

- `udc-rational-cusp-of-twisted-full-level` — ModularCurvesPartII §5.14 (design gap MODEL).
- `udc-all-prime-cuspidal-model-of-full-level` — ModularCurvesPartII Layer 11 (§11.4) (model part of design gap NERON). The cover-descent half is the owned target §9.2, citing Ihara 1994 by locator.
- `udc-bombieri-andre-katz` — DiophantineApproximationAndTranscendence §5.3 (design gap GLOCAL). The supplier is that roadmap, on main, which owns G-functions and Galochkin's condition. DiophantineApproximationAndTranscendencePartII (arithmetic algebraization) does not contain these theorems.

## What the README could not support

- DiophantineApproximationAndTranscendencePartII is earlier in the merge order but is on neither main nor any open pull request; only its board design and review reports exist. Its section numbers (§§4.1–4.6, 4.8) were taken from the review reports' references to its packaged README together with the design's AA.4 order. `roadmaps resolve` flags this citation as found nowhere for that reason.
- §9.2 rests on Ihara 1994, which is paywalled (recorded `uncertified`, cited by locator).
- §§5.1, 5.4 depend on gap `udc-rational-cusp-of-twisted-full-level`, §7.9 (hence §§7.11–7.12) on `udc-bombieri-andre-katz`, and §§9.1–9.3 on `udc-all-prime-cuspidal-model-of-full-level`.

## Notions moved down from later roadmaps

None. Every supplier is on main or earlier in the merge order. The λ covering is assigned to the ModularForms family by ConformalMapping and BelyiMaps; ModularForms does not build it, so this roadmap owns it (no other roadmap states it, by `roadmaps grep` for the λ covering and `ℂ∖{0,1}`).

## Duplication sweep (removals and citations)

- Weakly holomorphic forms: QSeriesPartitionsAndMockModularForms §8.1 owns the carrier. §1.1 is the cusp-germ characterization, and `IsWeakForm` is its native-carrier form for the Lean statements.
- Vector-valued forms (§7.3): a kept variant of QSeriesPartitionsAndMockModularForms §8.1; it differs only by semisimplicity of `ρ(T)` and the projective representation.
- §3.3: the bounded denominators of congruence forms and of congruence modular functions (with `Δ^(−m)`) are AlgebraicModularFormsAndSerreWeights Layer R15.2, cited; §3.3 is reduced to the span inclusion.
- §2.7: the radius values are ConformalMappingPartII §5.5; only the realization by λ, the N = 3 η quotient and the `Y(N) ≅ ℂ ∖ μ_N` classification stay.
- CDT §4.5 cohomology, Lemma 4.5.12, the abelian and enhanced Ihara lemmas, the amalgam and the CSP: ModularCurvesPartII §§15.2–15.10 (as the design's review had already moved them). Source issues E1 and E11 concern that material and are left to ModularCurvesPartII §15.9.
- Analytic triple product: GeometryOfNumbersAndQuadraticArithmetic §4.3 (at the open head). The design's QM.0/QM.1 node names do not exist in the QSeries roadmap at its head. The η multiplier is QSeries §5.2.
- Ramanujan–Petersson: AutomorphicGaloisRepresentations §4.2.
- Library: Mathlib `Derivative.serreDerivativeMF`, `Derivative.normalizedDerivOfComplex_E₂`, `ModularForm.logDeriv_eta_eq_E2`, `Subgroup.goursat_surjective`, `Chebyshev.theta_ge`/`pi_ge`/`theta_le_log4_mul_x`, `IsCoveringMapOn`, `Module.End.IsSemisimple`; Tau Ceti `TauCeti.Subgroup.integerCuspWidth`, `CongruenceSubgroup.Gamma_le_Gamma_of_dvd`, `TauCeti.char_neg_one_of_modFormCharSpace_ne_bot`. All Mathlib names were checked with `#check` at the pin (namespaces corrected to `Derivative.*`). The Tau Ceti names were checked by grep at the pin, because their object files are not built and Suggested.lean does not import them.
- The design's baseline pins (Mathlib 082e2d3, Tau Ceti f790474) are not this repository's pins (Mathlib 6b7abb3, Tau Ceti a91d3aa). Every cited declaration was re-located at the current pins.

Ownership against open work was checked with `roadmaps grep` over main and the open heads (weakly holomorphic, vector-valued, λ covering, bounded/unbounded denominators, theta and eta quotients, triple product, Ramanujan, étale fundamental group) and against the board packages. No declaration of Suggested.lean reuses a fully qualified name of another roadmap.

## Adversarial pass

| Statement | Instances tried | Values computed | Result | Change |
| --- | --- | --- | --- | --- |
| `IsWeakForm` (§1.1) | `1`, `Δ⁻¹`, `(j−a)⁻¹`, `exp(j)`, odd k with `−I ∈ Γ` | `Δ⁻¹ = Q⁻¹+⋯` passes growth; `exp(j) ~ exp(e^(2π Im τ))` fails; `f∣(−I) = (−1)^k f` forces f = 0 | holds | Checks added |
| Bounded denominators, root property (§1.2) | `(1−16t)^(1/16)`, `Σ tⁿ/2ⁿ`, `1/2` | `t²`-coeff `−15/2`; 16th power integral | root property excludes it | Check |
| Signed level (§1.3), `H′` | cusp 1 of `H′` | `gT²g⁻¹ = [[−1,2],[−2,3]] ∉ H′`, negative ∈ `H′`; strict width 4, signed 2; `a≡d mod 4` on `Γ(2)` | `L(H′)=2` | Check |
| Level of `Γ₀(p)∩Γ(2)` | p odd | widths 2 at ∞, 2p at 0 | `L = 2p` | Example |
| Wohlfahrt (§1.8) | `H′`, KSV factorization at a = 2 | printed product `[[0,1],[−1,2]]` vs `L = [[2,1],[−1,0]]` | signed form needed; KSV misprint confirmed | stated |
| p-scaling (§1.7) | second cusp case | `C = (a/p, b; c, pd)` has det 1 with `diag(1/p,p)` | CDT diagonal reversed | stated |
| `modularLambda` (§2.1) | exact q-series | `x = q−8q²+44q³−192q⁴+718q⁵−2400q⁶`; `λ = 16q−128q²+704q³`; `λ(i) = 1/2`; `λ(τ+1) = −16q−128q²+⋯ = λ/(λ−1)` | holds | Checks |
| `modularLambda_covering` (§2.2) | fibres, `−I` | `−I ∈ Γ(2)` acts trivially; deck group `Γ(2)/±I` | holds | — |
| Inverse (§2.4) | degrees 1–6 | `q = x+8x²+84x³+992x⁴+12514x⁵+164688x⁶` | holds | — |
| Kummer (§2.5) | N = 3 | `x₃ = t − (8/3)t⁴ + (68/9)t⁷` | root not integral | Example |
| Jacobi identity (§2.6) | through `q¹⁵` | `K₀(x)−θ₃² = 0` to order 15; recurrence `(n+1)²a_{n+1} = 4(2n+1)²a_n` | holds; character `χ₋₄(d)` | stated |
| §2.7 orientation | `F₂ = 1−2λ∘C` | `F₂(0)=0`, cusp limit 1, `F₂′(0) = 4c > 0`, `|F₂′(0)| ≈ 4.37688 > 4`, `γ₃ ≈ 2.58106 > 2.51984` | matches supplier §1.8 | corrected from `2λ∘C−1` |
| Degree (§5.4) | N = 1, 2, 3 | `1/2` (not a degree), 4, 12; `4 > 32/π² ≈ 3.24` | N = 1 split | Examples |
| `nonabelian_ihara` (§4.1) | `G ⊇ Γ(N)`; `N=3, p=2`; conjugation witness | S trivial; `[Γ(3):Γ(3)∩Γ₀(2)] = 3`; `c([[1,0],[6,1]]) = [[1,0],[3,1]]`; both projections onto S surjective (reductions of `T^N`, `[[1,0],[N,1]]` generate `SL₂(𝔽_p)`) | holds without `−I ∈ G`, without `G ≤ ±Γ(N)` | hypothesis dropped |
| Triple surjectivity kernel (§4.2) | `γ ≡ −I mod N`, `≡ I mod p` | in signed reduction kernel, not in `Γ(Np)` | unsigned domain required | stated |
| Normal stabilizer (§3.7) | `R₂ = ℚ(λ)`, basis {1} | core of stabilizers = `SL₂(ℤ)`, level 1, does not fix λ | intersect with `±Γ(2N)` | stated |
| Rank bound constants (§3.8) | `r = 1−A/(2N³)` | `log|φ′(0)| ≥ A/N³ − A/(2N³) − O(N⁻⁶) ≥ A/(3N³)`; `log⁺|F^N/16| ≤ N log⁺|F|`; `log(2·1) > 0` vs `log 1 = 0` | holds with `log(2N)` | stated |
| Finite rank N = 2 (§3.5) | `r = 0.95` | `|φ′(0)| = 0.95·4.37688/4 ≈ 1.0395 > 1` | holds | Example |
| Leveraging (§5.5) | growth comparison | `2^k ≥ 2^(cX/log X)` vs `(Cπ²/4)(log 2N₀ + X log 4)` | contradiction | stated |
| `h₀` (§6.2) | exponents | `q^(1/12)` from `η(τ/2)²`, quotient `q^(11/12)`·unit; period 24 | period lcm(h, 24) | corrected 12 → 24 |
| `unbounded_denominators` (§6.3) | f = 0; odd period h; odd k with `−I ∈ Γ′` | trivial; h ↦ 2h by zero insertion; conclusion allows `Γ′ = Γ(M)`, `M ≥ 3` | holds | API |
| `algebraicInteger_unbounded_denominators` (§6.6) | trace route | `Tr(α_i a_n) ∈ ℤ`; trace matrix nondegenerate | needs §6.5 | §6.5 added |
| j cube root (§6.7) | coefficients | `1, 248, 4124, 34752, 213126` | holds | — |
| h-roots (§6.8) | `u^(1/5)`, `u^(1/24)`, T-action | `−24/5, 348/25, −4544/125, 52854/625`; `u^(1/24) = 1−q+q²−2q³+2q⁴−3q⁵+⋯`; `h = q−24q²+300q³`, `T: q ↦ −q` | theta group, not `Γ₀(2)` | stated |
| Fermat (§6.9) | n = 2, 4, 8, 16, 3 | 2-adic: n=8 `1,1,2,1,2,2,3,1,2`; n=16 `0,−1,−1,−3,−3,−4,−4,−7,−7`; n=3 3-adic `−1,−2,−4,−5,−6,−8,…` | {1,2,4,8} | Examples |
| `IsVectorValuedForm` (§7.3) | n = 0; odd k; Jordan `ρ(T)`; `1⊕σ` | n=0 trivial; odd k forces F = 0; nonsemisimple excluded | holds | Checks |
| Invisible summand (§7.13) | matrices | `σ(R)² = [[−3,−1],[7,2]]`, `σ(R)³ = I`, `σ(T) = [[2,1],[7,3]]`, `det = −1`, char. poly `X²−5X−1` | infinite image | stated |
| `vectorValued_effective_mason` (§7.12) | n = 0; `1⊕σ` | trivially M = 1; values fixed, `ker ρ ⊉ Γ(M)` | span hypothesis needed for ker | stated |
| `vectorValued_component_congruence` (§7.11) | `F_j = 0`; odd h | conclusion trivial; `F(hτ)` gives expansion in `q²` | holds | general h |
| E₀ (§8.3) | exact q-series | `(θ₃θ₄⁴+4θ_qθ₃)/θ₃³ = 1−4q+20q²−64q³+164q⁴−392q⁵+896q⁶`; `E₀−₂F₁ = 0` through x⁹ | holds; CDT sign wrong | stated |
| Catalan quotient (§8.4) | exact q-series | theta quotient `= 1+q−4q²+5q³+12q⁴−42q⁵` = direct `Σ C_n² x(q)ⁿ` | holds | Example |
| `θ_qΔ = 2E₂Δ` (§8.2) | leading terms | `Δ = q²−24q⁴`, `θ_qΔ = 2q²−96q⁴` | factor 2 | stated |
| Deficient places (§8.7) | `ρ = 1⊕σ` | `(σ(T)^(2N)−1)g = 0`, eigenvalues `(5±√29)/2` not roots of unity ⇒ g = 0 | no witness; printed converse false | stated |
| Cuspidal model (§9.1) | N = 1 | `𝒳_cusp(1) = ℙ¹_{𝓞_K}` | holds | Check |

Context check: every declaration of Suggested.lean carries all its binders in its own signature (no section `variable`s are used). `#check @name` for all nine declarations was elaborated in one scratch file and compared with the README statements. The only change it led to was the removal of the unused `−I ∈ G` binder from `nonabelian_ihara`. A first elaboration also caught three wrong library spellings (`MDiff` notation not in scope, `Subgroup.IsCongruenceSubgroup` in place of `CongruenceSubgroup.IsCongruenceSubgroup`, and `LinearMap.IsSemisimple` in place of `Module.End.IsSemisimple`); all three were fixed.

## Elaboration

`lake env lean packages/ModularFormsPartII/Suggested.lean`, run from the content checkout: exit 0, exactly 6 warnings, all `declaration uses 'sorry'` (lines 70, 84, 103, 115, 146, 161), and no other message. Imports: `import Mathlib` only. The file has no `set_option`, `lemma`, `#eval` or `#print`.

## Dependency check

```
tauceti-roadmap … gate --depcheck packages/ModularFormsPartII/README.md --name ModularFormsPartII --order merge-order/ORDER.txt --movable
depcheck: 56 roadmaps, 649 edges, 0 problem(s)
```

No UPWARD, CYCLE or moved line.

## Citations

`roadmaps resolve` on the README: no Lean names found nowhere. The one cross-roadmap lead is DiophantineApproximationAndTranscendencePartII, explained above. The design's leads (`ModularCurvesPartII R14.4` and the generated API names) no longer occur: ModularCurvesPartII is cited by its sections at the open head (§§5.13, 5.14, 6.3–6.5, 8.1, 11.4, 15.2–15.10), and the API is stated in prose.

## Sources

- CDT25 — fetched from the author's page (certified); DOI `10.1090/jams/1053` read from the offprint; arXiv 2109.09040 recorded on the same entry. Journal page locators were spot-checked against page headers (Lemma 4.4.1 p.658, Lemma 4.4.4 p.659, Theorem 7.2.1 p.687, Definition 7.3.1 pp.688–689, Theorem 7.3.3 p.690, Corollary 7.3.4 p.691, Example 5.1.22 p.673, §6.3 p.685, Theorem 7.4.10 p.696).
- KSV10 — arXiv v4 (certified).
- Ihara1994 — publisher page only; recorded `uncertified` (licence class `none`) and cited by locator.
- A Wohlfahrt (1964) entry was attempted. The DOI tried resolved to a different paper, so that citation was dropped: Wohlfahrt's Theorem 2 is cited through CDT p.659, and KSV10 is the proof source. The `needs-references.toml` the service created for these two attempts was deleted, so no text is requested.

`sources check`: 0 problems.

## Untrusted text

Nothing in the fetched pages, roadmaps or reports read for this job contained instructions; none were followed.
