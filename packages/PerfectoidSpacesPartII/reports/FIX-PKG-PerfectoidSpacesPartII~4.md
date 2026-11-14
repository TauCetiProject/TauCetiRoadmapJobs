# FIX-PKG-PerfectoidSpacesPartII~4: repair of the round-3 package review

One review was resolved: `REV-PKG-PerfectoidSpacesPartII~3`, which has seven findings. I checked all
seven against the cached sources, against PerfectoidSpaces and AdicSpacesPartV as they stand now,
and against the pinned libraries. All seven are correct, and all seven are applied. Files edited:
`packages/PerfectoidSpacesPartII/README.md`, `packages/PerfectoidSpacesPartII/design/plan.json`
(top-level `gaps` only) and `packages/PerfectoidSpacesPartII/sources.toml` (`cited_for` only).
`packages/PerfectoidSpacesPartII/Suggested.lean` is unchanged: no finding touches a Lean
declaration or docstring.

## REV-PKG-PerfectoidSpacesPartII~3/F01 (P1) — applied

§3.1: "`ulim_F` … on underlying normed rings with … `K`-actions twisted" → stage `A_n` has
`λ·a = λ^{1/p^n}a` and norm `|a|_sp^{p^n}`, Frobenius is `K`-linear and isometric, and
`ulim_F A = lim_F A` with norm `|x_0|_sp`; API bullet likewise. The Check "supremum of spectral
norms" → explicit witness: rescaled `1/4` at `p = 2`, `1/8` at `p = 3`; naive supremum `1`.

## REV-PKG-PerfectoidSpacesPartII~3/F02 (P2) — applied

§5.4: "every transition `A_jl → A_{j′l′}` is a localisation of a finite free extension" → only for
finite `j ≤ j′`, `l ≤ l′`. Transitions with an infinite index are filtered unions of these,
injective but not necessarily finite (`ℚ₂ → K_∞`). The all-indices purity theorem (§5.9) is
unchanged.

## REV-PKG-PerfectoidSpacesPartII~3/F03 (P2) — applied

§3.2: item (1) (perfectoidness, unit ball, universal property of `A⟨T^{1/p^∞}⟩`) deleted → cited
as PerfectoidSpaces P1.30 (`R = A`, one variable). The root-algebra theorem is kept, its proof
consumes P1.30, and P2.13 leaves its *Needs*. The item-(1) Check is replaced by `g = 0`. Same
pattern: §4.8, §5.6, Scope and the Layer 4–5 *Dependencies* now cite P1.30.

## REV-PKG-PerfectoidSpacesPartII~3/F04 (P2) — applied

§2.9: "the perfectoid disc algebra `A⟨T^{1/p^∞}⟩`" → the completed algebra
`A ⊗̂_K K⟨T^{1/p^∞}⟩`, perfectoid when `K` and `A` are (P1.30), with a negative Check:
`A = K⟨X⟩` in characteristic `p`, where `X` is no `p`-th power. Same pattern: the §2.8 Check
naming P1.30 over an arbitrary `K` is now scoped to perfectoid `K` (`ℚ_p` is not).

## REV-PKG-PerfectoidSpacesPartII~3/F05 (P1) — applied

§4.7: "Nakayama lemma for complete modules (PerfectoidSpaces P0.26)" → supplier gap
`gap:complete-almost-nakayama` (PerfectoidSpaces, P0.26), in `plan.json` `gaps` and under "Exact
supplier contracts", with three Checks (`ℤ_(p) → ℤ_p`, `ℤ_p → ℤ_p ⊕ ℚ_p`, `K°° → K°`). Same
pattern: §3.3's "by Nakayama" step uses the same lemma; its route, *Needs* and the Layer 3–4
*Dependencies* now cite the gap.

## REV-PKG-PerfectoidSpacesPartII~3/F06 (P3) — applied

§0.4 negative Check: "`x ⊗ ϖ^{1/p^k}` is nonzero" (any `k`) → fixed `k = 1`, with the reason
(`|ϖ^{1/p}| > |ϖ| ≥ |p|`, so `ϖ^{1/p} ∉ pA`; transition images nonzero). The boundary `k = 0`,
`ϖ = p` (for example `ℂ₂`, `ϖ = 2`), where every `x ⊗ ϖ` vanishes, is stated. The §0.4 theorem
is unchanged.

## REV-PKG-PerfectoidSpacesPartII~3/F07 (P3) — applied

Scope and ownership: "belongs to AdicSpacesPartIIPartII (its Riemann extension theorem for normal
rigid spaces)" → "belongs to AdicSpacesPartV §1.7". This stays a scope comparison, not a *Needs*
edge: AdicSpacesPartV is later in the merge order (line 222; this roadmap is line 80).

## Verification of the findings

- **F01.** In characteristic `p`, `A^♮ = A♭ = lim_F A`, with `K` acting through `K ≅ K♭`,
  `λ ↦ (λ^{1/p^n})`, and norm `|x^♯| = |x_0|`. For the review's witness the unrescaled supremum
  `sup_n q^{1/p^n}` is `1`, while the counit image has norm `q`. §2.6's general supremum is
  correct as written: its spectral norms are those of each object's own `K`-structure, which for
  `A_n` is `|·|_sp^{p^n}`.
- **F02.** For `n = 0`, `k = 𝔽₂`, the degrees of `ℚ₂(ζ_{2^{j′}})` over `ℚ₂` at `j′ = 1, 2, 3` are
  `1, 2, 4`, and the union `K_∞` is infinite-dimensional. A localisation of a finite-dimensional
  algebra stays finite-dimensional, so the old sentence was false at `j′ = ∞`. The finite-index
  maps are free: power series over the finite free `K_{j′}°/K_j°` on monomials, then on
  `1, X′, …, X′^{p^{l′−l}−1}`.
- **F03.** PerfectoidSpaces P1.30 on main (*perfected-tate-algebra*) covers any perfectoid Tate
  ring `R` and any index set `Σ`. It gives perfectoidness, `R⟨T^{1/p^∞}⟩° = ϖ`-adic completion of
  `R°[T^a]`, and the universal property for complete uniform `R`-algebras with root systems in
  `S°`, so it contains the old item (1). While recomputing §3.2's Checks I also replaced the
  `K = ℚ_p` example of the idempotent count (not perfectoid; the layer assumes a perfectoid `K`) by
  a `K` containing the `p^i`-th roots of unity (`2^{p^i}`).
- **F04.** In `K⟨X, T^{1/p^∞}⟩` in characteristic `p`, every `p`-th power has `X`-exponents in
  `pℕ`. A characteristic-`p` perfectoid algebra must be perfect (André A, Remarques 3.2.2(2), p. 36,
  ANDRE18A line 1508), so this algebra is not perfectoid. Over `ℚ_p` a topologically nilpotent unit
  of `ℚ_p⟨T^{1/p^∞}⟩` has norm `|c| ≤ 1/p`, so `|c|^p < 1/p` and `ϖ^p ∣ p` fails.
- **F05.** PerfectoidSpaces P0.26 on main (*almost-nakayama*) proves the lemma for a tight ideal in
  the radical, with almost finitely generated or almost finite projective modules. André A §1.3,
  p. 5 (ANDRE18A lines 176–187) and GR Lemma 5.3.3, p. 111 (GR03 lines 5509–5519) assume only
  `I`-adic completeness. André uses it in Proposition 3.5.4, proof of (2) ⇒ (3), p. 47 (line 2048:
  our §3.3) and Proposition 5.3.1(3), p. 68 (lines 3196–3200: our §4.7). In the ramified setup
  with `g = T`, `pV` and `ϖV` are not tight: every finitely generated `m₀ ⊆ m` lies in some
  `T^{1/p^k}V`, whose elements have constant term `0`. So P0.26 cannot be used, and the
  Abhyankar theorem is not narrowed to fit it.
- **F06.** At `k = 0`, `ϖ = p`, the element `ϖ` lies in `pA`, so `x ⊗ ϖ = 0` in
  `(A/ϖ^{1/p^n}) ⊗_{𝔽_p} (A/p)`. For `k = 1`, `ϖ^{1/p} ∉ pA`, and a simple tensor of nonzero
  vectors over `𝔽_p` is nonzero, so the tower fails to be almost-pro-zero at precision `ϖ^{1/p}`.
- **F07.** `roadmaps show AdicSpacesPartIIPartII` finds nothing on main, at the open heads or on the
  board. AdicSpacesPartV (open head and board package) §1.7, "Riemann extension theorem for normal
  rigid spaces", states unique extension of bounded functions across a nowhere dense analytic
  subset of a normal rigid space over any complete nontrivially valued nonarchimedean field.

## Checks run

**Lean elaboration.** `lake env lean packages/PerfectoidSpacesPartII/Suggested.lean`, run from the
content checkout: exit 0, exactly six warnings, each `declaration uses 'sorry'`, at lines 97, 145,
208, 252, 370 and 422. No `TauCeti.*` object file was missing.

**Binder check.** I appended `#check @TauCetiRoadmap.PerfectoidSpacesPartII.<name>` for all 23
declarations to a scratch copy and elaborated it once (exit 0). All 23 elaborated types match the
recorded `signatures.md` verbatim (0 differences). The file is byte-identical to the reviewed head,
and no README statement backing a Lean declaration changed, so nothing in the Lean file needed
updating.

**Dependency direction** (`gate --depcheck … --movable`), complete output:

```text
depcheck: 236 roadmaps, 2136 edges, 0 problem(s)
```

There is no UPWARD, CYCLE or `moved:` line.

**Citations** (`roadmaps resolve` on the edited README): "Cross-roadmap citations found nowhere:
None. Lean names found nowhere: None." The earlier `Algebra.galoisTensorMap` lead is gone. That
name is AdicEtaleGeometry A4.2's alias, so it was never a finding.

**Sources.** No new work was cited. GR Lemma 5.3.3 and André A §1.3, Prop. 3.5.4 and
Remarques 3.2.2(2) are in the cached texts already in the manifest; page numbers were checked
against the page markers (André A p. 5, p. 36, p. 47; GR p. 111). `sources.toml` adds "Exact
supplier contracts" to the `cited_for` of ANDRE18A and GR03. `needs-references.toml` was not
created.

## Adversarial pass on the statements added or changed

| Statement | Instances tried | Values on each side | Result / change |
| --- | --- | --- | --- |
| §3.1 `ulim_F A`, rescaled stage norms | `A = 0`; `A = K`; `A = K⟨X⟩` (char `p`); `x = (t^{1/p^n})`, `p = 2, q = 1/4` and `p = 3, q = 1/8` | `0`: limit `0`. `K`: `lim_F K ≅ K` via `x_0`, norm `|x_0|`. `K⟨X⟩`: `x_0` needs all `p^n`-th roots, so the limit is `K` (agrees with the Check `K⟨T⟩^♮ = K`). Rescaled norms `(q^{1/p^n})^{p^n} = q` (1/4 and 1/8); naive `sup = 1`; naive norm of `x^m` is 1 for every `m ≥ 1`. | Normalization stated (F01) |
| §3.1 Frobenius `A_{n+1} → A_n` linear and isometric | `λ ∈ K`, `a ∈ A` | `λ·_{n+1}a = λ^{1/p^{n+1}}a ↦ λ^{1/p^n}a^p = λ·_n a^p`; `|a^p|_n = |a|_sp^{p^{n+1}} = |a|_{n+1}` | Holds |
| Naive supremum is not a `K`-norm | `x = 1`, `|λ| < 1` | `sup_n |λ|^{1/p^n} = 1` vs `|λ|·1 = |λ|` | Wrong model excluded by the Check |
| §3.2 root algebra perfectoid, extremal epi, `g♭` | `g = 0`, `A = K`; `g = 1`, char 0; `A = Â_∞0`; non-perfectoid `A = K⟨X⟩`, `g = 1` | `g = 0`: `(T^{1/p^i})^{p^i} = 0`, uniformization gives `K`, `g♭ = 0 = g`. `g = 1`: image contains every `K[S]/(S^{p^i} − 1)`, dense; `g♭ = 1`. Non-perfectoid `A`: `X` keeps no `p`-th root, so the hypothesis is needed. | Holds; Check replaced (F03) |
| §3.2 idempotent count | `p = 2, i = 1`; `i = 0`; old `K = ℚ_p` | `S² − 1 = (S − 1)(S + 1)`: 4 (agrees with §2.8 Examples over `ℂ₂`); `i = 0`: 2; over `ℚ_p`, `i + 1` factors give `2^{i+1}`, but `ℚ_p` is not perfectoid | Example changed to `K ⊇ μ_{p^i}`, `2^{p^i}` |
| §2.8 Check `K⟨T^{1/p^∞}⟩` vs P1.30 | `K = ℚ_p`; perfectoid `K` | `ℚ_p`: a topologically nilpotent unit has norm `|c| ≤ 1/p`, so `|c|^p ≤ p^{−p} < 1/p`, and `ϖ^p ∣ p` fails; perfectoid `K`: P1.30 with `R = K`, `|Σ| = 1` | Scoped to perfectoid `K` (F04 pattern) |
| §2.9 completed algebra, perfectoid only for perfectoid base | `A = K⟨X⟩`, char `p`, `p = 2, 3`; `A = K` | `X`-exponents of `p`-th powers lie in `2ℕ`, resp. `3ℕ`, so `X ∉ Frob`; for `A = K` all exponents have roots | Overclaim removed; negative Check added (F04) |
| §2.9 Gauss norm uniform | `A = K × K` | Gauss norm on coefficients with the sup norm equals the sup of the two Gauss norms; power-multiplicative | Holds |
| §5.4 finite-index transitions | `n = 0`, `k = 𝔽₂`, `(0,0) → (j′,0)` for `j′ = 1, 2, 3, ∞`; `(0,0) → (0,1)` with `g = 1`; `(∞,0) → (∞,1)` | Degrees 1, 2, 4, ∞; `ℚ₂ → ℚ₂ × ℚ₂` free of rank 2; `K_∞ → K_∞[X]/(X^2 − g)` free of rank 2 with both indices infinite | "Need not be finite", not "never finite" (F02) |
| gap: complete almost Nakayama | `ℤ_(p) → ℤ_p`; `ℤ_p → ℤ_p ⊕ ℚ_p`; `K°° → K°`; `I = 0`; `I = V`; `m = 0` | Onto mod `p`, not onto (source incomplete); iso mod `p` since `ℚ_p/p = 0`, not onto (target not separated); cokernel `K°/K°° = k`, killed by `m`, so an almost epi; `I = 0` is a tautology; `I = V` forces `M = N = 0`; `m = 0` makes every almost module zero | Statement and three Checks recorded (F05) |
| Tightness fails in the ramified setup | `V = K°⟨T^{1/p^∞}⟩`, `g = T`, `m₀ ⊆ m` finitely generated | `m₀ ⊆ T^{1/p^K}V`, whose constant terms are 0; `pⁿ` and `ϖⁿ` have nonzero constant terms | P0.26 does not apply |
| §4.7(3) trace via the gap | `B′ = A[1/g]`; `B′ = A[1/g]²`; `B′ = 0` | Trace is the identity; `(a, b) ↦ a + b` is onto; zero trace is not almost onto (faithfulness needed) | Holds; route cites the gap |
| §3.3 route (2) ⇒ (3) | `B = K⟨T^{1/p^∞}⟩`; §3.3's `B = K + (T₁^{1/p^∞}P)^− + (T₂P)^−` | Counit is the identity; `B^♮° → B°` is an almost iso but not an iso (`T₂^{1/p} ∉ B`) | Agrees with the §3.3 Checks |
| §0.4 negative Check | `K = ℂ₂`, `ϖ = 2`, `k = 1` and `k = 0`; `K = ℂ₃`, `ϖ = 3`, `k = 1` | `|2^{1/2}| = 2^{−1/2} > 2^{−1}`, so `x ⊗ 2^{1/2} ≠ 0`; `x ⊗ 2 = 0`; `|3^{1/3}| = 3^{−1/3} > 3^{−1}` | `k ≥ 1` fixed, `k = 0` boundary stated (F06) |
| AdicSpacesPartV §1.7 scope pointer | Punctured disc with `1/T`; constant `1` | `|1/T|` at `T = ϖⁿ` is `q^{−n} → ∞`, not bounded; the constant extends | Correct owner (F07) |

## Ownership, overlaps and other notes for the maintainer

- **New supplier gap.** `gap:complete-almost-nakayama` asks PerfectoidSpaces (on main, earlier in
  the order) to add the complete-module form of the almost Nakayama lemma to P0.26. Ownership is
  by object: the almost Nakayama lemma is P0.26's. I searched main, the board packages and the open
  heads (`roadmaps grep` for complete-module or almost Nakayama). Nothing states the almost version
  for complete modules: DerivedModuleAlgebra's `completeNakayama` is the derived ordinary version,
  and P0.27's completeness clauses do not give surjectivity. §3.3 and §4.7 now depend on this gap.
- **Removed target.** §3.2's former item (1) duplicated PerfectoidSpaces P1.30 and is gone. The
  heading §3.2 remains. No roadmap cites the removed item: DirectSummandsAndBigCohenMacaulay cites
  only §RA.5 ids. No Lean name changed, and no id other roadmaps cite was dropped.
- **Overlaps.** No other open pull request changes this roadmap, and no cited id is dropped by an
  open revision (`scratch/overlaps.md`). AdicSpacesPartV and PerfectoidShimuraVarieties are cited
  only as scope comparisons; the depcheck shows no edge problem.
- **The review text.** I treated it as data. It contains no instruction to run commands or change
  anything outside this job, so nothing suspicious needs quoting.
