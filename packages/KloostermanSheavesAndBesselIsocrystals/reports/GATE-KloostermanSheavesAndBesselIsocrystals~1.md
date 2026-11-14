# GATE-KloostermanSheavesAndBesselIsocrystals~1: answers to the human review of `08122a9`

The comment numbers its findings F01–F03, and they are H01–H03 here. It also mentions two questions
for human reviewers "in the section of that name at the end", but the comment as posted has no such
section, so there is nothing further to answer. Line numbers below refer to
`TauCetiRoadmap/KloostermanSheavesAndBesselIsocrystals/README.md` at the new commit `13efcb3`.

## H01 (CBirkbeck) — applied

§1.8 (lines 829–834) had attributed the `ℓ`-adic trace formula to "gap:arithmetic-d-module-operations and
EtaleCohomologyFoundations". It now reads "the trace formula of gap:arithmetic-d-module-operations on the arithmetic side
and the Grothendieck–Lefschetz trace formula of GlobalShtukasAndFunctionFieldLanglands §1.4 on the `ℓ`-adic side
(the `ℓ`-adic complexes involved are `ι`-mixed by DeligneWeightsAndPurity §8.5)". The *Needs:* line gains
"GlobalShtukasAndFunctionFieldLanglands §1.4; DeligneWeightsAndPurity §8.5". The GlobalShtukasAndFunctionFieldLanglands §1.4 contract (lines 265–268) and the scope bullet
(lines 81–85) now name the trace formula. The section-less EtaleCohomologyFoundations citations at lines 108–110, 423–426 and 855 now
read §§F.2.1–F.2.7, F.4.1–F.4.6. The same defect also appeared in §5.2: its function–sheaf dictionary is that trace formula on the
Hecke stacks, and no supplier was named for it. Its *Needs:* line (lines 1453–1454) and the Layer 5 dependencies (line 1490) now
include GlobalShtukasAndFunctionFieldLanglands §1.4.

Evidence:
- EtaleCohomologyFoundations README line 11 on main assigns "the arithmetic trace formulas" to
  InverseGaloisAndArithmeticFundamentalGroups.
- GlobalShtukasAndFunctionFieldLanglands §1.4, at the head of its open pull request, states the formula for stratifiable, `ι`-mixed,
  convergent complexes bounded above, with a relative form for `Rf_!`.
- The `ι`-mixed clause was added because GlobalShtukasAndFunctionFieldLanglands §1.4 states the formula only for `ι`-mixed complexes.
- GlobalShtukasAndFunctionFieldLanglands and DeligneWeightsAndPurity were already suppliers, so the dependency check shows no new edge.

## H02 (CBirkbeck) — applied differently

All four ranges were one page too wide. Two were repaired as suggested:
- Frenkel–Gross (line 1032): "pp. 27–29" → "pp. 27–28". Proposition 8 is FG line 1188 (p. 27), and Corollaries 9 and 10 are lines
  1230 and 1237 (p. 28).
- HNY (line 1445): "pp. 255–256" → "p. 256". Lemma 2.1 is HNY line 639 and Remark 2.2 is line 648, both on printed p. 256.

At the other two, the paragraph also restates a definition from the earlier page. That page is kept, but it is now attached to the
definition, not to the result:
- Zhu Lemma 20 (line 915): "Zhu Lemma 20, pp. 21–22" → "Zhu Lemma 20, p. 22, with the space defined on pp. 21–22". The lemma and its
  proof are Zhu lines 993–1004 (p. 22). The opers with residue `ϖ(0)` and the fibre product are lines 950–991 (pp. 21–22).
- Zhu Theorem 8 and Corollary 9 (lines 943–944): "pp. 8–10" → "pp. 9–10, … with `h` and its filtration in §2.2, pp. 8–9". Theorem 8
  is Zhu line 377 (p. 9) and Corollary 9 is line 435 (p. 10). The map `h` and the Hitchin associated graded are lines 335–372
  (pp. 8–9).

I also checked every other HNY, Zhu and Frenkel–Gross locator, and the Miyatani ones, against the page markers. No other range is off.

## H03 (CBirkbeck) — disputed

At `08122a9` the README already names this owner, and it has done so since the roadmap's first commit:
- the scope bullet (lines 71–76) cites HypergeometricMotives §§4.2–4.3 for equal lengths. It keeps the unequal lengths `n > m` of
  §§9.2–11.2 here, and it describes `quadraticHypergeometricSum` as the case of lengths `(N, 1)`;
- the supplier contract "From TauCetiRoadmap.HypergeometricMotives" (lines 236–241) transports `katzExpSum` to `K`-valued characters,
  as for Hasse–Davenport;
- §9.1 (lines 1966–1968) identifies the `n = m` sum with `katzExpSum` at `t = a^{−1}`;
- the *Needs:* line (lines 1973–1974) and the Layer 9 dependencies (line 2067) cite it.

The identification holds against that roadmap's Lean definition. `katzExpSum` sums over all of `F`, but every Mathlib `MulChar`,
the trivial one included, vanishes at `0`, so only unit tuples contribute, as in §9.1. The Lean definition accepts lists of any
length, but its README defines the sum only for equal length `d`. So the split "equal lengths there, unequal lengths here" matches
what that roadmap states. No change.

## Build, gate and dependency check

- `lake build TauCetiRoadmap.KloostermanSheavesAndBesselIsocrystals.Suggested`: `Build completed successfully (18239 jobs).` The only warnings
  are five `declaration uses 'sorry'`, at lines 68, 135, 147, 158 and 171.
- Gate: `gate KloostermanSheavesAndBesselIsocrystals: set_option=0 blob=0 latex=0 tex=0 prnum=0 sorry-data=0 sorry-examples=0 residue=0 private-paths=0 imports=0 mathlib-subimports=0 no-import-mathlib=0 lean-lines=0 statement-hygiene=0 forbidden=0 dropped=0 readme-ids-missing=0 empty-sections=0 round-labels=0 long-fences=0 layer-ids=0 target-ids=0 depcheck=0 metadata=0 stray-files=0 dirty=0 outside-folder=0 source-material=0 OK`
- Dependency check (`--depcheck … --movable --pr 2289`): `depcheck: 243 roadmaps, 2197 edges, 0 problem(s)`. There is no UPWARD, CYCLE or `moved:` line.
- Commit: `13efcb3` "KloostermanSheavesAndBesselIsocrystals: review repairs (ℓ-adic trace formula from GlobalShtukas §1.4, étale sections, four page
  locators)". It changes the README only and has not been pushed.

## Suggested.lean

Unchanged: no point touches a Lean declaration, and no backticked name was added to the README. I did not run a new `#check @name`
pass, because no signature changed. The 13 elaborated signatures in the job's `signatures.md` are those of the unchanged file.

## Ownership, suppliers and sources

- No new owner is introduced. The trace formula moves from a supplier that does not state it (EtaleCohomologyFoundations, on main) to
  one that does (GlobalShtukasAndFunctionFieldLanglands §1.4, open, earlier in the merge order, already a supplier).
- InverseGaloisAndArithmeticFundamentalGroups §IG.0.T3 (rational constructible trace formula on schemes) was the other candidate. It
  was not used, because citing it would add a new supplier edge, and the stacks version covers the scheme case used here.
- Every citation was re-resolved: EtaleCohomologyFoundations against main (`9498ae0`, headings at its lines 504–759 and 959–1089);
  GlobalShtukasAndFunctionFieldLanglands, DeligneWeightsAndPurity and HypergeometricMotives at the heads of their open pull requests.
- No new source was needed, and no `needs-references.toml` was written.

## Adversarial pass on the changed statements

| Statement | Instances tried | Values computed | Result | Change |
| --- | --- | --- | --- | --- |
| §1.8 route: `ℓ`-adic side by GlobalShtukasAndFunctionFieldLanglands §1.4 | `H = SL₂`, `W = Std`, `q = 3`, `a = 1`, `d = 1` | `R₂(1) = ψ(2) + ψ(1) = ζ₃ + ζ₃² = −1`; normalized `−R₂(1)/c₃ = 1/√3`, equal to the §1.8 Check value on both sides | holds | cite §1.4 |
| same, hypotheses of §1.4 | the fibre of `GR_W°` over a `k_d`-point: a scheme of finite type | stratifiable (constructible); convergent (finite sum over `GR_W°(k_d)`); bounded above; `L_ψ` has `|ψ(x)| = 1` under every `ι` (pure, weight 0); minuscule `IC_W = const[d](d/2)` pure; `⊗` and `Rf_!` keep `D^b_m` (DeligneWeightsAndPurity §8.5) | all hypotheses met | add the `ι`-mixed clause and DeligneWeightsAndPurity §8.5 |
| same, degenerate | `H = 𝔾_m`, `W = 1` | the eigenvalue is the constant rank-one object; trace `1` on both sides at every `a` | holds | none |
| §1.8 Check (rank `≥ 2` needs all powers) | `diag(1, −1)` vs `diag(i, −i)` | trace over `k`: `0` vs `0`; over `k₂`: `1 + 1 = 2` vs `−1 − 1 = −2` | consistent with "traces of all powers" | none |
| §5.2: dictionary by GlobalShtukasAndFunctionFieldLanglands §1.4 | `G = PGL₂`, `Ω = ℤ/2` | the function is supported on the two big-cell origins (HNY Lemma 2.1, `f(w) = 0` off `Ω`); each origin has trivial automorphism group (§0.3 Check), so its point weight is `1`; `A = j_!(L_ψφ)` is mixed | hypotheses met; weighted sum = plain sum | add GlobalShtukasAndFunctionFieldLanglands §1.4 to *Needs:* |
| GlobalShtukasAndFunctionFieldLanglands §1.4 contract wording | compared with that roadmap's §1.4 text | "stratifiable, `ι`-mixed, convergent complex bounded above" and "relative version for `Rf_!`" both appear there | matches | none |
| EtaleCohomologyFoundations §§F.2.1–F.2.7, F.4.1–F.4.6 | headings on main | F.2.1 proper base change, F.2.2 smooth base change, F.2.3 local acyclicity and ULA, F.2.4 lower shriek with arbitrary base change, F.2.5 compact support, F.2.6–F.2.7 Künneth; F.4.1 normalized systems, F.4.2–F.4.3 integral realization and pro-étale comparison, F.4.4 integral finiteness, F.4.5 rational realization, F.4.6 finite-level operation comparison | matches the contract text | none |
| EtaleCohomologyFoundations as trace-formula owner (negative control) | search "trace formula" in its README on main | only line 11 (assigning arithmetic trace formulas elsewhere) and F.10.3 (Lefschetz numbers of perfect complexes, linear algebra) | not an owner | citation removed |
| Zhu Lemma 20 locator | Zhu page markers 967 (p. 22) and 1006 (p. 23) | lemma at line 993, proof ends at line 1004; definition of the space at lines 950–991 | p. 22 for the lemma, pp. 21–22 for the space | locator split |
| Zhu Theorem 8 / Corollary 9 locator | markers 322 (p. 8), 366 (p. 9), 413 (p. 10) | Theorem 8 at line 377; Corollary 9 at line 435; `h` at lines 350–358; filtration at lines 359–372 | pp. 9–10 for the results; pp. 8–9 for `h` | locator split |
| Frenkel–Gross Proposition 8 / Corollaries 9–10 locator | markers 1175 (p. 27), 1213 (p. 28), 1243 (p. 29) | lines 1188, 1230 and 1237; p. 29 opens §14, which this sentence does not cite | pp. 27–28 | changed |
| HNY Lemma 2.1 / Remark 2.2 locator | marker 636 (printed p. 256), 675 (p. 257) | lines 639 and 648 | p. 256 | changed |
| other locators from the sweep (negative control) | HNY Theorem 1, Corollary 2.15, Definitions 2.4, 2.6, 2.11; Zhu Lemmas 18–21; Frenkel–Gross §§5–6, 7–10, 14, Theorem 1, Proposition 11; Miyatani Theorem 3.2.5, Propositions 4.2.1–4.2.3 | lines 857 (p. 261), 892 (p. 262), 698/706 (p. 257), 807 (p. 260); 918–1008 (pp. 20–23); §5 at line 346 (p. 8) through §7 at line 641 (p. 14); §11 at line 989 (p. 22); line 1264 (p. 29); line 996 (p. 23, ending p. 24); proof of 4.2.3 runs into p. 32 | all within the stated ranges | none |
| H03: §9.1 sum = `katzExpSum` at `n = m` | `d = 1`, `𝔽₃`, trivial characters, `a = 1`, `n = m = 1` | §9.1: `Σ_{x = y, x,y ∈ 𝔽₃^×} ψ(x − y) = 2`. `katzExpSum` at `t = 1` over `x, y ∈ 𝔽₃`: the `(0, 0)` term is killed by `1(0) = 0`, and the rest is `q − 1 = 2` (its own Check) | equal | none |

## Outside the reviewed points

The route of §6.2 uses the fact that the tame geometric fundamental group of `𝔾_m` is procyclic, and its *Needs:* line names no
supplier for it. EtaleCohomologyFoundations §F.0.A0 treats `𝔾_m` only in characteristic zero. This was not repaired, to keep within
scope, and other suppliers were not searched for an owner.
