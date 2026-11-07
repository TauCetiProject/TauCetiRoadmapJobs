# PKG-RefinedTraceMethodsPartII

Files written: `packages/RefinedTraceMethodsPartII/README.md`, `packages/RefinedTraceMethodsPartII/Suggested.lean`, `packages/RefinedTraceMethodsPartII/metadata.toml` (`topic = "math.KT"`, as for RefinedTraceMethods). Files changed: `packages/RefinedTraceMethodsPartII/sources.toml` (akn24 `cited_for` gains 8.1–8.4), and the `gaps` list of `packages/RefinedTraceMethodsPartII/design/plan.json` (only the `needs` sentences of the two existing gaps were rewritten to say what is needed; slugs, suppliers and sections are unchanged).

The accepted design README was already in roadmap prose form. The package README keeps every target, Check and worked example of it (Layers 1–9, 41 subsections). The corrections are listed below.

## Headline theorems

| Headline | README | Status |
|---|---|---|
| Hesselholt: `K_q(k[x,y]/(xy),(x,y)) ≅ ⊕_m ⊕_d W_{s(m,d)}Ω^{q−2m}_k`, k regular noetherian over 𝔽_p | §5.2 | not statable: no algebraic K-theory, no de Rham–Witt complex at the pins |
| Speirs: axes in affine d-space over perfect fields (including p = 2) and over ind-smooth ℚ-algebras | §§5.3–5.4 | not statable: no algebraic K-theory, no cyclic homology |
| Hesselholt–Nikolaus: `K_{2r}` of the cusp `y^a = x^b` over perfect 𝔽_p-algebras is `W_S(k)/(V_aW_{S/a} + V_bW_{S/b})`, odd groups vanish | §6.2 | not statable: no algebraic K-theory, no big Witt vectors |
| Riggenbach: `K_{2r−1}(R[x]/x^e,(x);ℤ_p) ≅ W_{re}(R)/V_eW_r(R)` for perfectoid R, even groups vanish | §7.2 | not statable: no algebraic K-theory, no big Witt vectors, no perfectoid-ring predicate |
| Antieau–Krause–Nikolaus on `O_K/ϖ^n`: syntomic structure, Angeltveit's quotient, even vanishing, v₁-nilpotence | §§9.2, 9.3, 9.5, 9.6 | not statable: no algebraic K-theory, no syntomic complexes |
| Prismatic cohomology relative to δ-rings, filtered variant, crystalline degeneration | Layer 8 | not statable: no δ-rings, prisms or prismatic cohomology at the pins |
| Cardinality of the cusp truncation set, `#S(a,b,r) = ½(a+1)(b+1) − 1 + rab` | §1.1 | stated: `ncard_cuspTruncationSet` |
| Sylvester's count, `#T(a,b,r) = ½(2r+1)(a−1)(b−1)`: the W(k)-length of the cusp K-groups | §1.1 | stated: `ncard_cuspCoprimeSet` |
| Words without cyclic repetition, `A_d(m) = (d−1)^m + (−1)^m(d−1)`: the multiplicities of the axes formulas | §1.4 | stated: `card_noCyclicRepetition` |

Definitions added to make them statable: `cuspCount`, `cuspTruncationSet`, `cuspCoprimeSet`. All three have real bodies on `ℕ`, `Finset` and `Set ℕ`. Nothing else is in the file. The module docstring names each non-statable headline and the carrier it lacks.

## Corrections relative to the design (review notes applied)

- F01 (scope locator for chromatic purity). The repair the review suggested was "GeneralAlgebraicKTheoryPartII §5.5", taken from that package's board pull-request head. The board's main copy, `packages/GeneralAlgebraicKTheoryPartII/design/README.md`, numbers the layer `KII.5` instead and has an unnumbered heading "The chromatic purity theorem" (line 1108). So the README now cites the theorem by its title and layer ("its target "The chromatic purity theorem", in the layer on trace comparison, CMNN vanishing and purity"). That wording resolves in both copies. The citation is a scope deferral and supplies nothing.
- F02 (§9.6). akn24 Proposition 6.2 assumes n ≥ 2. The route now reads "For n ≥ 2, prove … ; for n = 1 the statement is the first Check below."
- F03 (§2.5, and §2.2's second Check). Added the locator speirs-axes line 1160 for `B(x_j^m) ≃ (T/C_m)_+`. I opened line 1160: it identifies the summands `HH(k) ⊗ (T/C_i)_+` with the lines and says they drop out of the birelative theory.
- §5.3: the sentence "The printed … formula … is replaced by this count" described a process. It now says that speirs-axes Theorem 2 prints the p = 2 odd-degree formula with index 0 ≤ v ≤ t_ev, that this version is false, and that it fails in degree 1. The degree-1 refutation is unchanged.
- Scope: "They are motivation for a later Part" became a definite boundary statement.
- §3.1 *Needs*: "BordismFormalGroups §F6.5 through RefinedTraceMethods" now cites BordismFormalGroups §F6.5 directly. It is on main, and RefinedTraceMethods line 64 confirms that it supplies the lax monoidal Borel Tate functor. BordismFormalGroups now has its own supplier subsection.
- Supplier contracts now list every section that some *Needs* line uses but the design's contracts omitted: RefinedTraceMethods §§1.2–1.3, 2.1, 2.5, 2.16; KTheoryFiniteLocalFields §4.4; CrystallineCohomology CR.2; DerivedDeRhamCohomology Layers 2 and 5; PrismaticCohomology §§1.2–1.4, 2.1–2.13; PrismaticCohomologyPartII §§3.19, 3.24.
- The gaps now appear in their suppliers' subsections in the required form: `What QWittVectors must provide (gap:bigwitt-ptypical-decomposition)` and `What SchemeKTheoryOperations must provide (gap:perfect-homotopy-invariance)`. The bigwitt gap's consumers are Layers 6 and 7. The design said "Layers 1, 6 and 7", but no Layer 1 statement uses it, and plan.json's `neededBy` (6.2, 7.2) already agreed.
- The Tau Ceti contract now quotes `TauCeti.NodeAlgebra R 0` exactly as it is at the pin: `MvPolynomial (Fin 2) R ⧸ Ideal.span {X 0 * X 1 − C 0}` (TauCeti/RingTheory/Node/Basic.lean line 37).
- §§1.1 and 1.4 now name the Lean declarations. The four-cardinality bullet was split so that the bullet carrying `ncard_cuspTruncationSet` claims only what the Lean statement states. The A_d(m) bullet is stated for every d ≥ 0 and m ≥ 1, as in Lean (d = 0 is trivially true), and records why m ≥ 1 is needed.

## What the README could not support

Every headline except the three Layer 1 counts needs algebraic K-theory, THH/TC, cyclic homology, big Witt vectors, perfectoid rings or syntomic and prismatic cohomology. None of these exists in Mathlib or Tau Ceti at the pins: a grep of the pinned trees for BigWitt, TruncationSet, CyclicBar, KTheory and Perfectoid predicates finds only Fontaine θ, untilts and B_dR in Mathlib/RingTheory/Perfectoid. Two inputs remain supplier gaps, both declared in the accepted review: `bigwitt-ptypical-decomposition` (QWittVectors §1.5 stops at the p-power truncation sets `Div(p^a)`, re-read at its pull-request head) and `perfect-homotopy-invariance` (SchemeKTheoryOperations §5.2 covers regular noetherian schemes only; a search for perfect-algebra homotopy invariance found nothing). No source is missing, so `needs-references.toml` was not written.

## Notions moved down

None. Every supplier is earlier in the merge order or on main. GeneralAlgebraicKTheoryPartII (later in the order) is named only as the owner of a result this roadmap does not use.

## Duplication sweep (by object)

I searched with `roadmaps grep` over main and all open heads, and with grep over the pinned Mathlib and Tau Ceti. Search terms: birelative, coordinate axes, cusp or `y^a − x^b`, pointed or contracted monoid, truncated polynomial, `K(ℤ/p^n)` or finite chain ring or Angeltveit, relative to δ-ring or δ-pair, staircase, cyclic repetition, v₁-nilpotence, plus the Lean names. Findings:

- Pointed-monoid THH: KTheoryFiniteLocalFields §5.16 owns the classical genuine version, and RefinedTraceMethods §2.10 owns unpointed spherical monoid rings. Both are imported. §2.3 here is kept as the pointed, Nikolaus–Scholze variant, as the Scope says. Truncated polynomials over perfect fields (KTheoryFiniteLocalFields §5.17) remain a Check of §7.2, not a target.
- Birelative excision: GeneralAlgebraicKTheory §10.12 is nonpositive Milnor excision for K, which is not the birelative trace theorem. RefinedTraceMethods §4.18 (truncating excision) is imported, and §4.2 here is stated as its specialization. K2SymbolsBrauer has double excision in degree 2 only. Nothing to delete.
- "δ-pair" in PrismaticCohomology §0.73 and PrismaticCohomologyPartII means a δ-ring with an ideal (prisms, q-PD pairs). That is a different object from §8.1's δ-ring with an algebra map, and §8.1 keeps its definition.
- Big Witt vectors: QWittVectors §§1.1–1.5 is imported. The KTheoryFiniteLocalFields Conventions mention the p-typical splitting of `𝕎_N(k)` for perfect k only, as a convention and not as a target, so the general gap stays.
- Mathlib has no contracted monoid algebra, no cusp count and no cyclic-word count.

There were no removals: the design had already deleted its duplicates in earlier rounds, and this sweep found no new ones.

## Ownership against open work

Ownership was checked against main, against the open roadmap pull requests through `roadmaps grep` and `roadmaps show`, and against the board packages QWittVectors, RefinedTraceMethods and GeneralAlgebraicKTheoryPartII. This roadmap owns the Layer 1 indexing functions, the pointed-monoid Nikolaus–Scholze splitting, the circle-cell Tate calculus over perfectoid coefficients, the birelative calculations and the δ-relative prismatic package. No roadmap read states any of these, and the Scope lists the imported neighbours. No declaration of `Suggested.lean` reuses the qualified name of a declaration in another roadmap.

## Citation resolution

Each cited section was checked against its roadmap's pull-request head (`roadmaps show`) or main. All of these resolve: QWittVectors §§1.1–1.5 and 1.4a; KTheoryFiniteLocalFields §§1.1–1.6, 2.1, 4.0, 4.4, 5.1, 5.16, 5.16a, 5.17; RefinedTraceMethods §§1.2–1.4, 1.9, 2.1, 2.3–2.6, 2.8–2.10, 2.13, 2.16, 4.12, 4.17, 4.18; AInfCohomology AI.0 and AI.7.2; PrismaticCohomology §§0.55, 0.56, 0.73, 0.76, 0.93, 1.2, 1.4, 2.1, 2.13; PrismaticCohomologyPartII §§3.6, 3.9, 3.10, 3.19, 3.20, 3.24, 4.4–4.31; PrismaticCohomologyPartIII §§6.8, 6.9, 6.28, 6.31, 7.0; CrystallineCohomology CR.2 and CR.4; SchemeKTheoryOperations §5.2; GeneralAlgebraicKTheory §§8.1, 10.5, 10.13; StableHomotopyKTheory §§7.9–7.18; DerivedDeRhamCohomology Layers 2 and 5; EnhancedDerivedSheaves E5; BordismFormalGroups §F6.5.

`roadmaps resolve` on the final README reports no unresolved citation and no unresolved Lean name. The earlier lead about `BigWitt.TruncationSet` is QWittVectors' `structure TruncationSet` (its `Suggested.lean`, line 71).

At the pin I confirmed `finRotate` (Mathlib/Logic/Equiv/Fin/Rotate.lean:27), `ArithmeticFunction.moebius_mul_coe_zeta` (Moebius.lean:156), `MonoidWithZero` (GroupWithZero/Defs.lean:124) and `TauCeti.NodeAlgebra` together with `coord`, `coord_zero_mul_coord_one` and `lift`.

## Adversarial pass

The table covers every statement I wrote or changed, plus recomputed spot values for the inherited targets of each layer. The values come from a direct enumeration script and from the cached source texts.

| Statement | Instances tried | Values computed | Result | Change |
|---|---|---|---|---|
| `cuspCount` (§1.1) | (2,3,6), (2,3,11), (2,3,12); the elaborated `decide` examples in a scratch file | ℓ = 0, 2, 1: (4,1) and (1,3) give 11; (3,2) gives 12; i, j ≥ 1 excludes 6 = 2·3 + 3·0 | agrees with Checks | none |
| `ncard_cuspTruncationSet` | all coprime 2 ≤ a, b ≤ 7, 0 ≤ r ≤ 3; (2,3,0): #S = 5, 2·5 + 2 = 12 = 3·4; (2,3,1): #S = 11, 24 = 12 + 12; a = b = 2 (not coprime): S contains every odd m, so it is infinite, ncard = 0 and the identity fails; a = 1 | 0 failures with a, b ≥ 2 coprime; the a = 1 cases also satisfy it | true; coprimality is necessary; `2 ≤ a, b` is unused for truth (P3: kept as the source's hypothesis) | stated without ℕ subtraction or halving |
| `ncard_cuspCoprimeSet` | same range; T(2,3,0) = {1}, T(2,3,1) = {1,5,7}, T(2,3,2) = {1,5,7,11,13}, T(2,5,0) = {1,3}; 2·3 = 3·1·2, 2·5 = 5·1·2, 2·2 = 1·1·4 | 0 failures; a = 1 gives T = ∅ and (2r+1)·0 = 0 | true | ℕ subtraction `a − 1` is harmless under `2 ≤ a` |
| `card_noCyclicRepetition` | d = 0..4, m = 0..6 by enumeration | m ≥ 1: all equal (A_3(2,3,4,6) = 6, 6, 18, 66); m = 0: count 1 versus RHS d (fails unless d = 1); d = 0, m ≥ 1: 0 = 0 | true exactly for m ≥ 1 | hypothesis `1 ≤ m` kept; d ≥ 1 dropped (true for d = 0); README updated to match |
| §1.1 divisor closure and conductor | (2,3,0), (2,3,1), (3,5,2), (2,7,1); conductors of (2,3), (3,5), (4,7) | all closed under divisors; conductors 2, 8, 18 = (a−1)(b−1); ℓ(m + ab) = ℓ(m) + 1 for m < 60 | true | none |
| §1.3 `Σ_d s_S(d) = #S` | {1..4} with p = 2: s = {1:3, 3:1}; T(2,3,1) with p = 5: {1:2, 7:1}; with p = 3: {1:1, 5:1, 7:1}; T(2,3,2) with p = 5: {1:2, 7:1, 11:1, 13:1} | sums 4, 3, 3, 5 = #S | true | none |
| §1.4 cyc_d, c_{d−1}, t_ev, t_od | d = 2, 3 | cyc_3(1..6) = 0, 3, 2, 3, 6, 9; cyc_2 = 0, 1, 0, 0, 0; c_1 = 0, 1, 0, 1, 0, 1; c_2(2) = 3, c_2(3) = 2; t_od(2,1,3) = 1, t_ev = 0; t_ev(2,2,3) = 1 | agrees with every Check | none |
| §1.5 B(p,e,n) and ε | (2,1,2), (2,3,3), (3,1,2); bound B ≤ p²(p^j−1)/(p−1)² for p ∈ {2,3,5}, e ≤ 3, n ≤ 7; Σε for i, n ≤ 3 | B = 12, 4, 18; bound holds in every case; Σε = i(n−1) in all nine cases, including n = 1 → 0 | true | none |
| §2.5 period-1 cells (F03) | m = 1, 2 | `B(x_j^1) = T_+`; `B(x_1x_1) = (T/C_2)_+` with H̃ = ℤ in degrees 0 and 1 (speirs-axes line 1160) | true; excluded from the birelative sum | locator added |
| §5.2 Hesselholt | q = 4 with p = 2 and 3; q = 6 over 𝔽_3 | p = 2: s(2,1) = 2 and d = 2 excluded, giving `Ω² ⊕ W_2` (ℤ/4 for 𝔽_2); p = 3: s(2,1) = s(2,2) = 1, giving `k ⊕ k`; 𝔽_3, q = 6: s(3,1) = 2 and s(3,2) = 1, giving ℤ/9 ⊕ 𝔽_3 | agrees with the Examples | none |
| §6.2 cusps | (2,3) over 𝔽_2, 𝔽_3, 𝔽_5 at r = 0, 1, 2; (2,5) over 𝔽_3 at r = 0 | lengths 1, 3, 5 = ½(2r+1)·2; 𝔽_5, r = 1: ℤ/25 ⊕ 𝔽_5; (2,5): W_2(𝔽_3) = ℤ/9 | agrees with `ncard_cuspCoprimeSet` | none |
| §7.2 truncated polynomials | 𝔽_3 with e = 2, r = 2; 𝔽_2 with e = 3, r = 1, 2, 3, 4 | T_{2,2} = {1,3}, giving ℤ/9; T_{r,3} gives ℤ/4; ℤ/8 ⊕ ℤ/2; ℤ/16 ⊕ ℤ/2²; ℤ/16 ⊕ ℤ/4 ⊕ ℤ/2² | equal to the 2-parts of K_1, K_3, K_5, K_7 of 𝔽_2[z]/z³ in akn24 line 144 | none |
| §8.6 degeneration Check | K_3 of ℤ/4 and of 𝔽_2[z]/z² | ℤ/8 (akn24 line 147) versus W_{{1,3}}(𝔽_2) = 𝔽_2² | the two rings differ, as the Check says | none |
| §9.3 Angeltveit | ℤ/4 at i = 2; ℤ/8 at i = 2, 3; 𝔽_2[z]/z³ at i = 3 | 8/2 = 2²; 32/2 = 2⁴; 128/2 = 2⁶; 64/1 = 2⁶ (akn24 lines 145–149) | q^{i(n−1)} holds | none |
| §9.5 even vanishing | ℤ/4 | B = 12, so the theorem applies from i ≥ 13; at i = 3, \|K_5\| = 7·8 = 56 = (2³−1)·2³ | consistent | none |
| §9.6 v₁ (F02) | n = 1, e = 1; n = 1, e ≥ 2; ℤ/4 | n = 1, e = 1: [1]_p = 1 and v₁⁰ = id ≠ 0 on 𝔽_p ⊕ 𝔽_p[−1], so the degree is exactly 1; n = 1, e ≥ 2: bound 1; ℤ/4: [2]_2 = 3 with equality | true; Proposition 6.2 needs n ≥ 2 (akn24 line 2321) | route split at n = 1 |
| Gap `bigwitt-ptypical-decomposition` | S = {1,2}, R = 𝔽_2; S = {1..4}, p = 2 | W_{{1,2}}(𝔽_2) = W_2(𝔽_2) = ℤ/4; components d = 1 (length 3) and d = 3 (length 1), total length 4 = #S | consistent | needs sentence rewritten |
| Gap `perfect-homotopy-invariance` | k = 𝔽_p[ε]/ε² (not perfect) | NK_1 ≠ 0 because 1 + εt is a nonconstant unit, so perfectness is needed | consistent | needs sentence rewritten |

Context check: `Suggested.lean` has no `variable` block. Every binder is in the declaration's own signature.

`#check` comparison: one scratch file ran `#check @` on all six declarations and elaborated them once. The elaborated types are those given in the README. `cuspCount`, `cuspTruncationSet` and `cuspCoprimeSet` take `ℕ → ℕ → ℕ → …`. The theorems keep `2 ≤ a`, `2 ≤ b`, `a.Coprime b` and `1 ≤ m` explicitly. Comparing them led to one README change, the d ≥ 0 generality of `card_noCyclicRepetition`.

## Elaboration

`lake env lean packages/RefinedTraceMethodsPartII/Suggested.lean`, run from the content checkout: no errors, and exactly 3 warnings, each `declaration uses 'sorry'` (lines 60, 68, 76). There were no other messages. The file has no `TauCeti.*` import.

## Dependency check

```
depcheck: 56 roadmaps, 654 edges, 0 problem(s)
```

There is no UPWARD, CYCLE or `moved:` line. The merge order lists RefinedTraceMethodsPartII at line 222, right after RefinedTraceMethods.

## Suspicious text

None found.
