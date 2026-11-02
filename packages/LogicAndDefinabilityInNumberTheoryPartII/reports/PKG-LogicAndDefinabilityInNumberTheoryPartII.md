# PKG-LogicAndDefinabilityInNumberTheoryPartII — package report

Deliverables: `packages/LogicAndDefinabilityInNumberTheoryPartII/README.md` (1412 lines, Layers 0–8), `Suggested.lean` (2 definitions, 7 headline theorems), `metadata.toml` (`topic = "math.NT"`), `sources.toml` (15 entries), and the top-level `gaps` list of `design/plan.json` (2 supplier gaps; nothing else in the plan changed — checked by comparing every other top-level key with the original).

Inputs read: the accepted design (`design/README.md`, `design/plan.json`, including its embedded `review` block and its 17 `sourceIssues`). There was no separate `design/review.json` and the `reports/` folder was empty, so the review's notes were taken from `plan.json`'s `review.notes` and per-node `checked` verdicts; its corrections (Rumely ordering, characteristic-two dyadic guard, `S_T` finite-generation scope, zero-arity dependence) are all present in the README (0.7, 5.1, 6.2, 0.14(b)).

## Headline theorems

| Headline | Status | Lean name |
|---|---|---|
| Dittmann–Pop Theorem 1.1: one ring sentence characterizes each finitely generated field among finitely generated fields | stated for `char K ≠ 2` or `δ(K) ≤ 3` | `exists_sentence_realize_iff_nonempty_ringEquiv` |
| Same, characteristic two and `δ(K) > 3` under resolution above 𝔽₂ | not statable: resolution above 𝔽₂ (smooth proper birational models and snc compactifications of 𝔽₂-varieties) has no carrier at the pins | — |
| Dittmann–Pop Theorem 1.2: every infinite finitely generated field is bi-interpretable with ℤ | not statable: Mathlib has no interpretations, homotopies or bi-interpretations | — |
| Dittmann–Pop Theorem 1.3 with Remark 4.4 (and Pop 2017 Theorem 1.2, Rumely): uniform definability of geometric prime divisors, every Kronecker dimension | stated for `char K ≠ 2` or `d ≤ 3` (the `RS(𝔽₂)` case as above) | `exists_formula_isGeometricPrimeDivisor` |
| AKNS Theorem 3.1: infinite finitely generated domains are bi-interpretable with ℤ | not statable (same reason) | — |
| AKNS Corollary 3.2: one sentence characterizes each finitely generated integral domain among finitely generated rings | stated | `exists_sentence_realize_iff_nonempty_ringEquiv_of_isDomain` |
| Pop 2002 / Poonen Theorem 2.3: fixed Kronecker dimension is first-order | stated | `exists_sentence_kroneckerDimension_eq` |
| Poonen Theorem 1.1: characteristic sentence | stated | `exists_sentence_charZero` |
| Poonen Theorem 1.3: uniform constant field | stated | `exists_formula_isAlgebraic_primeField` |
| Poonen Theorem 1.4: uniform algebraic dependence | stated | `exists_formula_not_algebraicIndependent` |

Definitions kept only to make headlines statable: `kroneckerDimension` (restates QuadraticFormInvariantsPartII §5.7 on pinned carriers; the Q2 package's declaration lives in a different namespace, so no fully qualified name collides) and `IsGeometricPrimeDivisor` (Dittmann–Pop §1). Intermediate results (definable normalizations, Proposition 5.1; local–global principles; anisotropy-set identities) are README targets, not headlines.

## Elaboration

Command: `lake env lean packages/LogicAndDefinabilityInNumberTheoryPartII/Suggested.lean` from the content checkout. Exit 0. Exactly **7** warnings, all `declaration uses 'sorry'` (lines 53, 62, 75, 84, 97, 115, 126); no other message. Single `import Mathlib`, no Tau Ceti import needed, no `set_option`, no sorry'd data, no `variable` block.

Signature check: a scratch copy with `#check @name` for all 9 declarations elaborated; each elaborated type was compared with its README statement (§§0.1, 0.2, 0.8, 0.10(e), 0.13, 0.14(b), 5.7, 8.4, 8.5). Every binder (`[Field.FG K]`, `[IsDomain B]`, `[Algebra.FiniteType ℤ S]`, the dimension and characteristic hypotheses) is in each declaration's own signature; `IsAlgebraic` resolved to `_root_.IsAlgebraic` (not a model-theory name). Nothing changed after the check.

## Dependency check

```
depcheck: 56 roadmaps, 658 edges, 0 problem(s)
```

No UPWARD, CYCLE or moved line. The citation resolver (`roadmaps resolve`) reports no unknown Lean names and four cross-roadmap leads, all false positives of the same kind: QuadraticFormInvariantsPartII §5.7, LocalFieldsRamificationPartII §GF.5, LogicAndDefinabilityInNumberTheory §0.1 and AdicCoefficientsAndComparisonsPartII §PA.6.8 are board packages earlier in the merge order (not on main, not open PRs). I resolved those sections against the package heads available on this machine: Q2 at the round-2 repair head, LogicAndDefinabilityInNumberTheory at the round-7 repair head, and the design READMEs of LocalFieldsRamificationPartII and AdicCoefficientsAndComparisonsPartII in `packages/`; every cited section exists there with the content used.

## Corrections to the design (what was wrong and what replaced it)

1. **Nonexistent suppliers.** `HigherLocalFieldsAndHigherClassFieldTheory` (HL.2, HL.6) and `PrimeToDegreeAlterations` are in neither the merge order, the board packages nor any open PR. Replaced by: QuadraticFormInvariantsPartII §6.3 (Jannsen, char ≠ 2) with an adapter target 1.2; AdicCoefficientsAndComparisonsPartII §PA.6.10 (the odd-degree regular alteration over a henselian non-dyadic DVR — exactly Dittmann–Pop's input); and new owned targets 1.1, 1.3 (Kerz–Saito, `ℤ/2`), 1.4 (Jannsen in characteristic two), 1.5 (Kato's two-dimensional principle), 1.6 (symbols and reduced norms, Merkurjev–Suslin). Ownership reason: object searches (`Kerz`, `Jannsen`, `Kato complex`, `cohomological Hasse`, `Hasse principle`, `reduced norm`/`Merkurjev`) over main, all open PR heads and all board packages found no statement of these theorems; this roadmap is their only consumer.
2. **LD.0/LD.1 were design stage ids, not sections.** LogicAndDefinabilityInNumberTheory supplies only §§0.1–0.4 (interpretations, semantics, fraction fields, bridges). Valuation theory was re-routed to LocalFieldsRamificationPartII §GF.1 (henselization, prolongations) and §GF.5 (composed valuations, coarsening, Abhyankar), Mathlib `ValuationSubring.ofPrime`, and Tau Ceti's patch topology. Bounded finite extensions (0.4) and the AKNS coding tools (7.1) are stated here on top of LD §0.1. Homotopy and bi-interpretation are declared as gap:biinterpretation-homotopy on LD §0.2.
3. **DeformationAndDerivedPatchingAlgebra "R03.3" does not exist** (resolver lead confirmed). The height-one intersection theorem is now owned target 6.3 (Stacks 031T); no roadmap or pinned library states it.
4. **AlgebraicModuliForArithmeticGeometry "A0-extension"**: the real sections are §7.5 (`arithmetic_normalization_genericallyEtale`, `ArithmeticCoefficients.valuation_prolongation_integrality`, `ArithmeticCoefficients.root_coefficient_descent`). The requested formal-étale completion comparison is not there; it is owned target 0.5 (Stacks 0C0S, 032A).
5. **GlobalNumberFields Layer 6 extension request dropped.** The number-field case of Dittmann–Pop's Lemma 3.5 needs no pole: strong approximation with archimedean places omitted (Layer 6) plus adding a large positive integer divisible by high powers of the constrained primes fixes all real signs (2.3(c), with a computed witness in 2.4).
6. **GlobalQuadraticForms function-field/characteristic-two request dropped.** Every function-field use is a dimension count: global function fields are `C₂` by Tsen–Lang (Q2 §5.6), which gives isotropy of the relevant quadratic and cubic diagonal forms (0.6(c)); local tail isotropy is the norm criterion 2.2.
7. **Pop 2002 dimension theorem (design gap G-DIM).** Route now assembled from sources read in full: Poonen Proposition A.3 (isotropy above dimension) with the number-field case through `cd₂ ≤ 2` (ArithmeticGaloisDuality §R02.4.4) and the transcendence bound (ClassicalAdicEtaleCohomology §11.2, `field_cohomological_dimension_transcendence`), and anisotropy witnesses from Lemma A.4/A.5 and Pop 2002 arXiv v1 Fact 1.3 (0.8).
8. **Rumely (design gap G-RUM)** is now read from the AMS open archive; its function-field route needs the cyclic Hasse norm theorem for global function fields, which ArithmeticGaloisDuality §R02.3.2 does not state: gap:function-field-cyclic-hasse-norm.
9. **Poonen's elliptic leaves (design gap G-PO)**: Lenstra's module structure, existence of ordinary curves (Waterhouse Theorem 4.1, certified), the Weil bound and Lang–Weil (WeilConjectures WC.5), Mertens (AnalyticNumberTheoryPartI §0.21), and the Albanese variety over an arbitrary field. The last has no owner beyond curves (JacobianChallenge Layer F; ColemanIntegrationPartII only in characteristic zero), so it is owned target 0.8a (Serre, Théorème 5, certified from Numdam, plus Galois descent), with Néron–Ogg–Shafarevich from NeronModelsAndSemistableAbelianVarieties §5.1.
10. **AKNS Theorem 3.1 generality.** The design narrowed it to normal domains (its source issue E20). The source states it for all infinite finitely generated domains; per the generality rule the README states the source's theorem (7.4) and repairs the route: the arithmetic core need not be Dedekind (AKNS's "therefore a Dedekind domain" fails for `ℤ[√5, t]`), but inverting a nonzero element of the conductor makes it Dedekind, which is all the two-generator coding needs (7.3). The normal case is a Check.
11. **Pop 2017 threshold in characteristic two** (design E22) kept as `c_n = 2n` / `c_n = n` with the computed `𝔽₂(t)` witness (5.5); the recipe's `δ ∉ O_s` read as `v_s(δ) ≠ 0` (E21).
12. **Poonen numbering**: the design cited the 2007 author copy (Lemma 5.3); the version read is arXiv v1, where it is Lemma 5.2; all Poonen locators now follow v1 and the manifest records it. **Jannsen**: the arXiv v2 read numbers the finite-field theorem 0.6 (published 0.10, as Dittmann–Pop cite); both are given.
13. Lean names in the design's API lists (`NicePresentation.tail_slots` etc., 31 resolver leads) were all generated names; every API bullet and Check is now prose, and the only backticked own names are the 9 declarations of `Suggested.lean`.
14. Layers 2–4 are stated for `d ≥ 3`, matching Dittmann–Pop; dimension two is Pop 2017's construction (5.4–5.6).

## Notions moved down from later roadmaps

None: no supplier later than this roadmap in the merge order is cited. Items owned here because no roadmap states them (not moves): Layer 1 (1.1, 1.3–1.6), 0.4, 0.5, 0.8a, 6.3, 7.1.

## Duplication sweep (removed here, cited instead)

Checked by object against main, the 55 open roadmap PR checkouts named in the brief (via `roadmaps grep`), the board packages and the pins:

- Quadratic Pfister forms, the Pfister invariant, invariant-zero criterion, unit/principal-unit/independent-value criteria, Tsen–Lang, Springer, Kronecker dimension and constant field, Jannsen's principle (char ≠ 2), Dittmann–Pop Proposition 3.2 and Lemma 3.9 (patch openness of henselian isotropy): QuadraticFormInvariantsPartII §§1.1, 1.2, 1.5, 2.5, 3.1, 3.7–3.9, 4.1–4.3, 5.6, 5.7, 6.3, 6.5, 7.2. The design's local restatements were deleted.
- Fraction-field interpretation: LogicAndDefinabilityInNumberTheory §0.3 (7.5 keeps only the comparison-map statement).
- Henselization, prolongations, composed valuations, coarsening: LocalFieldsRamificationPartII §§GF.1, GF.5; Mathlib `ValuationSubring.ofPrime`.
- Integral closure as an intersection of all prolongations, root-coefficient descent, finite normalization: AlgebraicModuliForArithmeticGeometry §7.5.
- Weak and strong approximation and sole-pole functions in function fields: Tau Ceti `TauCeti.Place.exists_ne_zero_forall_mem_ord_eq`, `TauCeti.Place.exists_forall_mem_valuation_sub_le_and_forall_mem_integers`, `TauCeti.Place.exists_ord_eq_neg_and_forall_ne_ord_nonneg` (signatures read at the pin: the last needs `IsFunctionField`, `IsIntegrallyClosedIn` and `2 * genus ≤ n`).
- Patch compactness: Tau Ceti `TauCeti.ValuationSpectrum.compactSpace_patchTopology`, `isClopen_patchTopology_basicOpen` (basic open = `v(f) ≤ v(s) ≠ 0`, read at the pin).
- Uniqueness of finite fields: Mathlib `FiniteField.ringEquivOfCardEq`.
- Hasse–Minkowski, four squares: GlobalQuadraticForms §5.5. Preordering extension: RealAlgebraicGeometry Layer 1. Odd-degree alteration: AdicCoefficientsAndComparisonsPartII §PA.6.10. `cd₂` of totally imaginary number fields: ArithmeticGaloisDuality §R02.4.4. Transcendence bound for `cd`: ClassicalAdicEtaleCohomology §11.2. Néron–Ogg–Shafarevich: NeronModelsAndSemistableAbelianVarieties §5.1. Chebotarev: Chebotarev Layer 10, FunctionFieldArithmetic §5.8.
- Mathlib has no Krull-domain/height-one intersection theorem (searched `IsKrullDomain`, `height` with `IsIntegrally Closed`), no interpretations, no henselization of valued fields.

Ownership against open PRs was checked through the brief's sibling checkouts and `roadmaps grep`; no open PR states bi-interpretation, the Kato/Kerz–Saito/char-2 Jannsen principles, the Merkurjev–Suslin reduced-norm criterion, Albanese existence in positive characteristic, the height-one intersection theorem, Rumely's definability, or formal coordinates at smooth points.

## What the README could not fully support

- **5.4 (adapted smooth fibrations in dimension two, characteristic `p`).** Dittmann–Pop Remark 4.4 and Pop 2017 §3A assert that every geometric prime divisor is trivial on a relatively closed global subfield over which `K` is the function field of a *smooth* curve. The README gives the route (a pencil with smooth generic fibre in which the centre is horizontal) and cites LefschetzPencilsAndVanishingCycles §§3.4–3.5, but that roadmap only provides pencils after a finite constant extension; the descent to the original constant field is not verified here. This is the weakest step of the roadmap.
- **Uncertified sources** (no legal open copy found; cited by locator, with the used statement restated in a certified source): Kato 1986 Corollary p. 145 (restated as Pop 2017 Theorem 2.1), Merkurjev–Suslin Theorem 12.2 (Pop 2017 §2C(2)), Moret-Bailly Lemma 11.1(i) (Poonen Lemma 3.2), Lenstra 1996 Theorem 1(a) (Poonen proof of Lemma 4.3). The DOI the service first attached to Lenstra resolved to a different paper (Melfi); the manifest records the correct DOI `10.1006/jnth.1996.0015`.
- **Proof routes of 1.3–1.5** name the inputs of Kerz–Saito's, Jannsen's and Kato's proofs (the same suppliers Q2 §6.3 uses) but do not decompose those proofs.
- 0.9(a): the construction of a positive-rank `E` avoiding the Albanese factors is Moret-Bailly's, cited, not reconstructed.

No `needs-references.toml` is left: every text cited is in the manifest as certified or uncertified.

## Adversarial mathematics pass

| Statement | Instances tried | Values computed | Result / change |
|---|---|---|---|
| Convention `δ` | `ℚ`, `𝔽₉`, `ℚ(s,t)`, `𝔽₂(s,t,u)`, `ℚ̄` | 1, 0, 3, 3, 1 (`ℚ̄` not `Field.FG`) | ok; Lean `kroneckerDimension` gives `0+1`, `0+0`, `2+1` |
| Pfister convention | `q_{(−1,−1)}` over `ℚ` | DP minus: `⟨1,1,1,1⟩` anisotropic; Pop/Poonen plus: `⟨1,−1,−1,1⟩` isotropic | witness recorded; `c = (1−a₀)/4` vs `a₀` mapping to Q2 §1.1 |
| `H_d` | `𝔽₂(s,t,u)` (`d=3`), `d=4` char 2 | no RS at 3; RS required at 4 | ok |
| 0.2 `IsGeometricPrimeDivisor` | `ℤ_(p) ⊂ ℚ`; `t`-adic on `𝔽_q(t)`, `ℚ(t)`; arc valuation `ord_s f(s,eˢ−1)` on `ℚ(s,t)`; trivial ring | arithmetic (res char p); geometric (0+1=1, 1+1=2); residue `ℚ`, `1 ≠ 2` → excluded; not DVR | dimension clause shown necessary |
| 0.3 empty failed fibres | false guard; failed fibre `K` | `∅` contains no `0,1`; `K` breaks Layer 6 intersections | ok |
| 0.4 bounded extensions | `X²−X`; `(X−1/2)²` over `ℚ`; `X²+X+t` over `𝔽₂(t)`; composita `X²+1, X²+2` vs `X²+4` | `K`; `ℚ`; degree 2; degrees 4 vs 2 | reducible quotients excluded |
| 0.5 formal coordinates | `𝔸¹_ℚ` at 0; node; `t²=s` over `𝔽₂(s)` | `1/(1−t) ↦ Σtⁿ`; not power series; inseparable residue excluded | hypotheses kept |
| 0.6(c) | `𝔽_q(t)`, `n=r=1`; `ℚ`, `8⟨1⟩` | anisotropic with `n = r` (bound sharp); anisotropic without `√−1` | `ε` and `√−1` necessary |
| 0.6(d) | `⟨1,1⟩` over `ℚ₅` | `2²+1 ≡ 0 mod 5`; `⟨1,1,5,5⟩` isotropic | reduction hypothesis necessary |
| 0.6(b) | `x²+ty²` over `𝔽₂(t)` vs `𝔽₂(√t)` | zero `(√t,1)` only after extension | degree 3 needed in char 2 |
| 0.7 Rumely | `ℚ`: fibres `ℤ_(p)`; `𝔽₂(t)`, `x=t` vs `1/t` | `⋂ ℤ_(p) = ℤ`; `𝔽₂[t] ≠ 𝔽₂[1/t]` | parameter retained |
| 0.8 dimension sentence | `𝔽₄`, `ℚ`, `𝔽_p(t)`, `ℚ(t)` | `𝔽₄`: all squares, non-cube exists (`𝔽₄ˣ ≅ ℤ/3`); `δ(ℚ)=1` via `⟨⟨p⟩⟩₂⊗⟨1,−b⟩₂` anisotropic, 8-dim isotropic over `ℚ(ζ₁₂)` | cubic forms required in char 2 |
| 0.8a Albanese | `ℙⁿ`, curve, `E` | `Alb = 0`, `Jac`, `E` | criterion vacuous for `V = E`, as it must be |
| 0.9 | `K = ℚ(t)`; finite subgroup of `E(ℚ_p)` | `E(ℚ(t)) = E(ℚ)`; torsion closed, empty interior | ok |
| 0.10(b),(e) | `ℚ(t)`, `𝔽₅(t)`; char `p` odd/2; `ℚ` without `√−1` | `C₀ = ℚ`, `∅`; `Z = 2Z` via `s = 2·((p+1)/2)s`, or `2 = 0`; positive slots anisotropic at `∞` | sentence false in every positive-characteristic field |
| 0.11 | `y²+xy=x³+1`, `y²+y=x³` over `𝔽₂` | 4 points, trace −1 (ordinary); 3 points, trace 0 (supersingular) | ok |
| 0.12 | `𝔽₂(s,t)` members; finite `K` | closures of `𝔽₂(s)`, `𝔽₂(t)`, `𝔽₂(s+t)`, `𝔽₂(st)`; `𝔽₂(s²)` not closed; empty family | ok |
| 0.13 | `𝔽₉`, `𝔽₉(t)`, `ℚ(t)` | `𝔽₉`, `𝔽₉`, `ℚ` | empty-intersection convention necessary |
| 0.14 | `(s,s²)`, `(s,t)`; `n=0`; finite field | dependent, independent; false formula; all positive-length tuples dependent | `n = 0` handled |
| 0.15 | `ℚ(s,t)`; `𝔽₂(s²)` | only `ℚ`; not member | ok |
| 0.16 | `ℚ(s,t)`, `u₂ = s`; `ℚ(√s,t)`; char 2 `X²−t` | `k_t = ℚ(s)`; `√s ∈ k_t`; inseparable | `X²−X−t` kept |
| 1.1 | `d=1` over `O_K` with/without `∞`; `(−1)∪(−1)` over `ℚ(i)` | `(−1,−1)` ramified at `2, ∞`; killed in degree 2 | odd degree needed |
| 1.2 | `ℚ`; `ℚ(x)`, `α = (−1)³` | ABHN; finite `α_v` restricted from `H³(ℚ_p^h)=0`, real `α_v ≠ 0` | real places necessary |
| 1.3 | curve over `𝔽_q`; `d=1` henselian; dyadic | ABHN; tautology; excluded | hypotheses widened to Kerz–Saito's (henselian DVR, finite residue field) |
| 1.4 | `d=1`; `𝔽₂(s,t,u)` with `ℙ³`; `d=4` | ABHN; unconditional; model existence is where RS enters | ok |
| 1.5 | `n=3` char 2; `n=2` needs `μ₄` | admissible; orderings handled by 2.1/1.2 | ok |
| 1.6 | quaternion `n=2` over `ℚ(i)`; split `A_{a,b}` | reduced norm form `⟨1,−a,−b,ab⟩`; every `c` a norm, `a∪b∪c=0` | test `a∪b ≠ 0` first |
| 2.1 niceness | `a₀,a₁<0` over `ℚ`; `a₁=1`; `(21,−1)` vs `(7/3,−1)` | definite; useless detector; isometric tails, first nice (`21 ≡ 1 mod 4`), second not (`v₃ = −1`, odd value, not a norm from `ℚ₃(i)`) | not an isometry invariant |
| 2.2 | `ℚ₃`, `a₀=−1`, `a₁=3,2`; `𝔽₂((t))`, `a₀=1`, `a₁=t` | anisotropic, isotropic; anisotropic | ok |
| 2.3/2.4 | `ℚ`, `l₁=ℚ(i)`, `Σ={2}` | `v₁=5`, `a₀=3`, `a₁=145`: anisotropic over `ℚ₅` (`⟨1,−3⟩` anisotropic mod 5, `v₅=1`), nice at `∞` (`a₀>0`), `2` and `3` (`145 ≡ 1 mod 72` square) | number-field route without poles verified |
| 2.5 | `𝔽_p(s,t,r)`, non-separating `(s,t^p)` | `Kw/k₁(u₂)` purely inseparable of degree `p` | separating basis required |
| 2.6 | `v(a₁)=1=v(ε₂)`; `d=3` | fails; one shift | ok |
| 2.7 | `k₁(√t₂)`; `l=k₁(t)` | ramified only off the torus; Taylor expansion | ok |
| 2.8 | even `w(a_d)` | unit form of fold `d+1`, isotropic by Q2 §6.5 | odd value necessary |
| 3.1 | char 2, `d=3`; even-degree alteration | no RS; can kill `e(q_a)` | odd degree necessary |
| 3.2 | all slot values even | isotropic by Q2 §6.5 | parity conclusion |
| 3.3 | `τ=0`; `a_d/θ² = −1/4`; `𝔽₂(t)` | `K_τ = K`; `K_θ = ℚ`; quadratic separable | ok |
| 3.4/3.5 | `t_i = u_i` instead of `u_i²−u_i`; `N=1`, `d=3` | not square×principal unit; three strict inequalities incl. `a₀` | shape `u²−u` necessary |
| 3.6/3.7 | lex valuation on `ℚ(x,y)`, `w(y)=(1,0)`, `w(x)=(0,1)` | `w(y) > N w(x)` ∀N, no rank-one valuation does; coarsening = `y`-adic, `x` unit | rank > 1 limit, coarsening verified |
| 4.1 | isotropic `q_a`; `θ = 0` | `b_a = ∅`; excluded | ok |
| 4.2 | `Stab(∅)`, `Stab({1})`, `Stab(ℤ)` in `ℚ` | `K`; `{1}` (no 0); `ℤ` (vs `{±1}` for `xB = B`) | ok |
| 4.3 | constant `a_d`; unique odd zero | `V_a = ∅`; `{w}` | ok |
| 4.4/4.5 | `w(a)=1,3`; `ord 0` junk | unit outside/uniformizer inside; `B = π²O_w`; zero must be inside despite `ord 0 = 0` | explicit zero branch |
| 4.6 | `V_a = {w}`, `w(a_d)=3` | `b_a = 𝔪_w²` | ok |
| 4.7 | two places; `Stab(ℤ ∪ ℤ√2)` in `ℚ(√2)` | union not additively closed, stabilizer `O_P ∩ O_Q`; `√2 ∈ Stab(ℤ∪ℤ√2)`, `∉ ℤ` | no general union rule |
| 4.8 | `a_d = f` vs `1/f` | pole vs sole zero | reciprocal required |
| 5.1 | tail `⟨1,−3,−5,15⟩`; `a₀=a₁=−1`; char 2 | `(5,3)₂ = 1` (isotropic at 2), `(5,3)₃ = −1` (anisotropic over `ℚ`); definite, no four-square certificate; `2∈𝔪_v` always | dyadic guard `2 ≠ 0` necessary |
| 5.2/5.3 | `O_P ∩ O_Q`; empty `V_a`; arc valuation | fails valuation-ring axiom; `K` fails properness; not a prime divisor, not a fibre | ok |
| 5.4 | `𝔽_p(s,t)`, base `𝔽_p(s)` vs `𝔽_p(t)`; `y²=x³+s` over `𝔽₂(s)` | works / `v` nontrivial; regular (`𝔪 = (x)` since `y²+s = x³`) but not smooth | smoothness a genuine condition (see limitations) |
| 5.5 | `𝔽₂(t)`, `n=3`, `δ=t`; neutral elements | threshold `v_t(β−1) > 0` accepts `1`, `1+t` (cubes); printed `2v(6) = ∞`; `x∗1 = x`, `x∘2 = x`, `2 = 0` in char 2 | `c_n` correction kept |
| 5.6 | `n | m` | `P ∉ D_f` | `m` prime to `n` |
| 5.7 | `d=0`; `ℚ`; `𝔽_q(t)`; Gauss valuation on `ℚ(t)` | no fibres; none; all places incl. `∞`; arithmetic, excluded | matches Lean statement |
| 6.1/6.2 | `ℚ`, `𝔽_q(t)`, finite, `1/2` in `ℚ(t)`; `ℚ(t)` | `ℤ`/`ℚ`; `𝔽_q[t]`; `K`; not integral; `ℤ[t]` f.g. ring, `ℚ[t]` not | `S_T` f.g. only as algebra |
| 6.3 | `ℤ`; `k[x,y]`; `k[t²,t³]` | `⋂ℤ_(p)`; ok; DVR localizations intersect to `k[t,t⁻¹] ⊋ S` | normality necessary |
| 6.4–6.8 | `ℚ(t)`; `ℚ`; `ℚ(√5)`; `(s+2)/3`; one prolongation per prime in `ℚ(i)` | `ℚ[t]` geometric; `ℤ`; `ℤ[(1+√5)/2]`; `s ↦ −1` gives value `−1` at 3; admits `1/(2−i)` | all prolongations, empty flag needed |
| 6.9 | `ℚ(s)`, `𝔽_q(t)`, `ℚ` | `ℤ[s]`, `𝔽_q[t]`, `ℤ` | ok |
| 7.2 | `ℤ[1/6]`, `𝔽₂[t,t⁻¹]`, `ℤ[√5]` | code `(6^ν a, ν)`; finite free rank 2 over `𝔽₂[t+t⁻¹]` (`t² − st + 1`); `c = 1` | ok |
| 7.3/7.4 | `ℤ[√5,t]` | core `ℤ[√5]` not normal; conductor element 2 | AKNS gap repaired, theorem in source generality |
| 7.5/7.6 | `ℤ ⊆ ℚ`; finite fields | `xb = a`; excluded (interpret only finite structures) | ok |
| 8.2 | `ℚ`; `ℤ/4` | generated by `∅` with `inv`; graph not total | restricted to fields |
| 8.3 | `𝔽₂, 𝔽₃, 𝔽₄, ℤ/4, ℚ` | `θ₂` true/false; `θ₄` true in `𝔽₄`, false in `𝔽₂`, `ℤ/4`; `ℚ` fails all | ok |
| 8.4/8.5 | `ℤ` vs `ℤ[i]`, `ℤ[1/2]`, `ℤ×ℤ`; `ℚ` vs `ℚ(i)`, `ℚ(t)`; elementary extension of `ℚ` | distinguished; non-f.g. models exist | claims restricted to f.g. comparison class |

## Untrusted text

No fetched page, source or other roadmap contained instructions; nothing suspicious to quote.
