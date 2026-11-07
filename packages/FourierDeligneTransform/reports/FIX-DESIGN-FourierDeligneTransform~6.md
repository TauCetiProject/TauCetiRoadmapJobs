# FIX-DESIGN-FourierDeligneTransform~6

One review was settled: REV-DESIGN-FourierDeligneTransform~5, which has one finding, F01 (P3). Its adversarial table calls the same finding "R01". The finding was checked against:
- the pinned Tau Ceti (`2fd255d9…`, the rev in `lake-manifest.json`, which is also the checkout's `HEAD`);
- ArithmeticGaloisRepresentations §3.7, read with `roadmaps show` at the head of its open pull request;
- the README's own §5.1 route.

Files changed:
- `packages/FourierDeligneTransform/design/README.md`
- `packages/FourierDeligneTransform/design/plan.json`

`packages/FourierDeligneTransform/sources.toml` is unchanged, because no new work is cited.

## F01 (P3) — applied

**Verified.** The pinned declarations exist with the hypotheses the review gives:
- `TauCeti.Place` is a structure: a surjective `ℤᵐ⁰`-valued valuation trivial on `k` (`TauCeti/FieldTheory/FunctionField/Place/Basic.lean` line 103). Its residue field is at line 500.
- `TauCeti.Place.exists_reduced_artinSchreier_representative` (`Place/ArtinSchreier.lean` line 118) assumes `[Fact p.Prime] [CharP F p] [PerfectField P.ResidueField]`.
- `TauCeti.ne_pow_sub_self_of_exists_reduced_artinSchreier_pole` (line 181) and `TauCeti.ord_reduced_artinSchreier_representative_eq` (line 198) are in `TauCeti/RingTheory/Valuation/Discrete/PowerSubSelf.lean`, namespace `TauCeti`. Both assume `[CommRing R] [ExpChar R p]` and an implicit `v : Valuation R ℤᵐ⁰`.

ArithmeticGaloisRepresentations §3.7 proves the degree-`p` cyclic extension and its single break `m` for `v(u) = −m`, `p ∤ m`. It states neither the reduction nor the uniqueness of the reduced pole order. So the §5.1 route had been deriving pinned results inline, as the review says.

**Changes:**
- **From Tau Ceti:** a new bullet. Old: nothing. New: the four names above, each with its file and hypotheses, and how §5.1 applies them (the `ϖ_0`-adic place of `k((ϖ_0))`, whose residue field `k` is algebraically closed, hence perfect). The termwise normal form and `c(b)` are marked as this roadmap's own.
- **§5.1 route:**
  - Old: "Every class has a reduced representative … because …". New: the pinned existence and uniqueness statements, then the termwise refinement proved here.
  - Old: "break = pole order (§3.7)". New: integral representatives give trivial classes; a prime-to-`p` pole gives a nontrivial class (pinned) with that break (§3.7).
- **§5.1 `*Needs:*` line:** gains the three statements.
- **§5.1 Checks:** one new Check. In `𝔽̄_3((t))`, `u = t^{−6} + t^{−4} + t^{−2}` reduces to `t^{−4} + 2t^{−2}` through two different substitutions, so its break is 4, not 6.
- **`plan.json` target 5.1.2:** three `tauceti:` prerequisites, the statement clause, and the test `artinSchreier_reduced_poleOrder`.

`TauCeti.ord_sub_pow_sub_self_le_of_ord_neg_of_not_dvd` (line 153) is not cited. The route uses it only inside the pinned uniqueness proof.

**Same pattern elsewhere.** §2.7 applies §3.7 directly at `u = f(1/π)` with `v(u) = −d`, `p ∤ d`. No reduction is needed there, and §3.7 already contains the nontriviality. No other place in the README or plan derives Artin–Schreier normal forms inline.

## Checks run

- **Dependency direction**, exact output after the edits:

      candidate: FourierDeligneTransform is not in the merge order yet; checked as if placed after EtaleDualityAndPerverseSheaves (the intake inserts it when its design is accepted)
      depcheck: 240 roadmaps, 2356 edges, 0 problem(s)

  There is no UPWARD or CYCLE line. The previous round recorded 2357 or 2358 edges against other states of main and the merge order. This round adds and removes no roadmap citation.
- **`roadmaps resolve` on the README:** no cross-roadmap citations and no Lean names were found nowhere. The tool did not check Lean names outside TauCetiRoadmap on this host, so I opened every Tau Ceti name added this round at the pin (lines above).
  - The 21 leads in `scratch/citations.md` are the EtaleCohomologyFoundations, ReductiveGroupsPartII and InverseGaloisAndArithmeticFundamentalGroups target names. None is new.
  - I spot-checked `PerfectComplex.lefschetzNumber`, `VanishingCycles.etaleTraceFormulaFinite`, `Lang.lang_surjective` and `ClassicalAlgebraic.cycleClasses` with `roadmaps grep`. Each is used as that supplier's section label across the open roadmaps.
- **Files parse:** `plan.json` parses (46 targets, 64 tests, of which `artinSchreier_reduced_poleOrder` is new), and so does `sources.toml`.
- **Elaboration:** none was run, because there is no `Suggested.lean` at the design stage, so there was no `#check` pass. No Lean name of this roadmap's own was added.
- **Style:** a grep of the README finds no LaTeX delimiters, no process vocabulary and no machine path. The new Check names no Lean declaration.

## Adversarial pass on changed or added statements

| Statement | Instances | Values computed | Result | Change |
|---|---|---|---|---|
| Contract: `Place` at `L_0 = k((ϖ_0))` | `v(ϖ_0) = exp(−1)`, `c ∈ k^×` | `v` takes every value `exp(n)` (`ϖ_0^{−n}`) and `0`, so it is onto `ℤᵐ⁰`; `v(c) = 1`; residue field `k[[ϖ_0]]/(ϖ_0) = k` | a place with perfect residue field when `k` is algebraically closed | stated |
| Pinned existence | `p = 3`, `u = t^{−6} + t^{−4} + t^{−2}` | `w = t^{−2}`: `u − (w³ − w) = t^{−4} + 2t^{−2}`, order `−4`, `3 ∤ 4` | as stated | none |
| Pinned uniqueness | same `u`, `z = t^{−2} + t^{−1}` | `z³ − z = t^{−6} + t^{−3} − t^{−2} − t^{−1}`; `u − (z³ − z) = t^{−4} − t^{−3} + 2t^{−2} + t^{−1}`, order `−4` | `4 = 4` | wording made exact: two prime-to-`p` poles agree |
| Uniqueness junk/degenerate | `ExpChar R 1`; `u − (w^p − w) = 0` | `¬ 1 ∣ n` is impossible, so the statement is vacuous; `ord 0 = 0` is not negative, so it is excluded | no junk use | none |
| Nontriviality | `u = t^{−1}`, `p = 2` | `w` with a pole of order `n` gives `w² − w` of order `−2n`, even, never `−1`; integral `w` gives an integral value | `t^{−1} ∉ ℘(L_0)` | none |
| Termwise step `e ϖ^{−pn} ≡ e^{1/p} ϖ^{−n}` | `p = 3`, `−t^{−3}` | `−t^{−3} − ((−t^{−1})³ − (−t^{−1})) = −t^{−1}`; `|exponent|` drops from `3` to `1` | exact and terminating | none |
| Integral classes are trivial | `f ∈ ϖ_0 k[[ϖ_0]]`, `g = −Σ_{n≥0} f^{p^n}`; constant `c` | `g^p = −Σ_{n≥1} f^{p^n}`, so `g^p − g = f`; `d^p − d = c` is solvable in algebraically closed `k` | trivial | none |
| Reduced representative unique and additive | two reduced representatives differing by `g^p − g` | `g` with a pole of order `n`: the leading term has exponent `−pn`, divisible by `p`, which is impossible; integral `g`: the difference is integral and has no nonnegative term, so it is `0`; sums of reduced representatives are reduced | `c(b)` well defined and additive | none |
| Break = reduced pole order | `u` above | §3.7 at order `−4`, `3 ∤ 4`: break `4`; the naive pole order is `6` | new Check discriminates | Check added |
| Recomputed: the twisting Checks of §5.1 | `W` of slope `1/2`; `k = 𝔽_p`, `c ∈ 𝔽_{p²} ∖ 𝔽_p` | do not use the reduced representative; `c + a ≠ 0 ≠ c^p + a` | unchanged | none |

The edits change no object of the roadmap. The only Checks that touch the changed text are the twisting Checks, which do not use the representative, and the new Check.

## For the maintainer

- No name that other roadmaps cite changed. No section, layer or target id moved.
- **Overlaps.** `scratch/overlaps.md` shows no open pull request that changes this roadmap. The AlgebraicVectorBundles §L1A and §L2B citations (dropped at the head of that roadmap's open revision) are unchanged. They cite main's labels with the head's layer numbers in parentheses. Under "only an open revision defines", the worker still names AlgebraicVectorBundles Layers 4 and 7 in the merge-order paragraph.
- **Ownership.** This round adds no owned object, only citations of pinned Tau Ceti declarations. The termwise normal form stays this roadmap's own, as a step of the §5.1 route, for three reasons:
  - Pinned Tau Ceti states only the leading-pole form.
  - A `roadmaps grep` over main and the open heads finds one related target: FunctionFieldArithmetic §3.2 `aswReduced_exists_unique` (open head). It is stated over `k((T))` for finite `k` only: its unramified term `c·[α]` needs `Tr_{k/𝔽_p}(α) ≠ 0`. §5.1 needs the length-one form over an algebraically closed `k`, which that target does not cover.
  - FunctionFieldArithmetic is at line 339 of the merge order, after this roadmap's placement (after EtaleDualityAndPerverseSheaves, line 96). Citing it would make a later roadmap a supplier.

  So it is not cited, and the step stays here, where the route needs it.
- The manifest gained no key and `needs-references.toml` was not written.
- No suspicious instructions were found in the review text.
