# FIX-PKG-PerfectoidSpacesPartII~2: repair of the findings of REV-PKG-PerfectoidSpacesPartII

Files changed: `packages/PerfectoidSpacesPartII/README.md`, `packages/PerfectoidSpacesPartII/Suggested.lean`,
`packages/PerfectoidSpacesPartII/sources.toml`. `metadata.toml` and `design/plan.json` are unchanged
(no supplier gap is needed).

## REV-PKG-PerfectoidSpacesPartII/F01 (P2) — applied

Verified: the carriers exist at the pin (`TauCeti.Huber.PairOfDefinition.completedPlusSubring`,
`RingTheory/Huber/LocalizationTopology/Plus.lean` line 116; `toCompletionLoc`,
`LocalizationTopology/Completion.lean` line 238; `TauCeti.ValuationSpectrum.pairHomOfRationalSubsetSubset`,
`AlgebraicGeometry/AdicSpace/Spa/Localization/PlusComparison.lean` line 219, with
`hsub : rationalSubset Aplus T' s' ⊆ rationalSubset Aplus T s` giving a morphism from the `(T, s)`
pair to the `(T', s')` pair), and Bhatt's Theorem 4.2(1)–(2) uses one restriction `n + c → n` at a
time (BHATT18 lines 355–370). Both object files are built.

Old → new. `Suggested.lean`: imports `TauCeti.RingTheory.Huber.LocalizationTopology.Plus` and
`TauCeti.AlgebraicGeometry.AdicSpace.Spa.Localization.PlusComparison` added; a `/-! ## Layer 1 -/`
section with `bhatt_riemann_extension_ker_almostZero` (clause (1), with the almost-regularity
hypothesis on `g`) and `bhatt_quantitative_riemann_extension` (clause (2)); the docstring moves §1.2
to "Stated here" and keeps §1.2(3), §1.3–§1.5 as not statable with the reason "no functor on the
rational subsets and no limit over them". README §1.1, §1.2 and the From Tau Ceti bullet name the
new declarations and carriers.

Applied with three changes to the proposed statement, each on the mathematics:

- The constant is explicit, `c = pᵏm` (`n + p ^ k * m`), not `∃ c`: README §1.2(2) states `c = pᵏm`,
  Bhatt proves it (line 367, "c = pᵏm works"), and the README's generality must equal the Lean's.
  The first Check of §1.2 (every `c ≥ pᵏm` works, no optimality) stays as the Check on the constant.
- The perfectoid field `K` and the pseudouniformizer `t ∈ K` (given by its compatible roots, with
  `0 < ‖t 0‖ < 1`) are binders, as in `riemann_extension_completeIntegralClosure`: README Layer 1
  fixes `K` and `t ∈ K°`, and Bhatt's proof runs through Scholze's Lemma 6.4 over `K`. The
  normalisation `|t| = |p|` is not a hypothesis (the proof never uses it); §1.2 now says so.
- `A = R°` is kept, and justified: Bhatt's integral perfectoid `K°`-algebras satisfy `A = A_*`
  (BHATT18 line 152) and are exactly the `R°` (line 156, the equivalence `A ↦ A[1/t]`, `R ↦ R°`), so
  `powerBoundedSubring R` is the source's generality, not a special case. `hAplus` is discharged by
  `mem_powerBoundedSubring` (`PowerBounded.lean` line 443) instead of being a hypothesis.
  The multiplication by `g^{1/p^k}t^{1/p^l}` is written in the target ring, `f_n(g_k t_l) · ρ(x)`.

Elements of `R°` are quantified by membership (`a ∈ powerBoundedSubring R`), so `g : ℕ → R` with
`hgA`, and no subtype coercions appear in the conclusions.

## REV-PKG-PerfectoidSpacesPartII/F02 (P3) — applied

Verified at the pin: `PlusComparison.lean` opens `namespace TauCeti.ValuationSpectrum` at line 71 and
declares `pairHomOfRationalSubsetSubset` at line 219; no declaration of that name exists under
`TauCeti.Huber.PairOfDefinition`. Old → new: the four README occurrences (From Tau Ceti bullet, §1.1
twice, Layer 1 Dependencies) now read `TauCeti.ValuationSpectrum.pairHomOfRationalSubsetSubset`; the
From Tau Ceti bullet names the file, and also `toCompletionLoc` and `HasDenominatorPower`, which the
new Lean statements use. The new Lean file imports the module.

## REV-PKG-PerfectoidSpacesPartII/F03 (P3) — applied

Verified: `Mathlib/RingTheory/Perfection.lean` line 39 defines `Perfection α p` as
`{f : ℕ → α // ∀ n, f (n + 1) ^ p = f n}`, the inverse limit along Frobenius;
`Mathlib/FieldTheory/PerfectClosure.lean` line 68 defines `PerfectClosure K p` as the quotient of
`ℕ × K` by `(n, x) ∼ (n + 1, x^p)`, the direct limit. For `K = 𝔽_p(T)`: `Perfection = ⋂ K^{p^n} = 𝔽_p`,
`PerfectClosure = 𝔽_p(T^{1/p^∞})`, and ANDRE18A line 1316 (Exemple 2.9.3(1)) says `ucolim K^{1/p^i}`
is the completion of the perfect closure. Old → new: the §2.7 Check names `PerfectClosure K p` and
records that `Perfection K p` gives `𝔽_p`; the From Mathlib "Perfection and fields" bullet lists both
with their directions.

## REV-PKG-PerfectoidSpacesPartII/F04 (P3) — applied

Verified by recomputation. With the bullet's order (index for `M″` first), `t^{1/p^{k+1}}ρ_{n′,n}(a)`
lies in `M′_n` but is not shown to be in the image of a higher `M′_{n″}`, where the second
annihilation acts. With `n′` chosen first for `M′` and `n″ ≥ n′` for `M″`: for `x ∈ M_{n″}`,
`t^{1/p^{k+1}}ρ_{n″,n′}(x)` has zero image in `M″_{n′}`, so lies in `M′_{n′}` by exactness at
`M_{n′}`, and its image in `M_n` is in the image of `M′_{n′} → M′_n`, killed by `t^{1/p^{k+1}}`;
`t^{2/p^{k+1}}` divides `t^{1/p^k} = (t^{1/p^{k+1}})^p` iff `p ≥ 2`. Old → new: §0.1's fifth API
bullet states this order and says why the other order fails.

## REV-PKG-PerfectoidSpacesPartII/F05 (P3) — applied

Verified: at level `i`, `K[S]/(S^{p^i} − 1) = ∏_Φ K[S]/(Φ)` over the irreducible factors `Φ` of
`S^{p^i} − 1`, so its idempotents are the subsets of the factors: for `K = ℚ_p` the factors are
`Φ_{p^j}`, `0 ≤ j ≤ i`, giving `2^{i+1}` idempotents, against uncountably many compatible systems.
In the completed colimit no new idempotents appear: two idempotents `e, e′` of a uniform Banach
algebra satisfy `u³ = u` for `u = e − e′`, so `‖u‖ < 1` forces `u = 0` (power-multiplicative norm),
and the Newton iteration `x ↦ 3x² − 2x³` moves an approximate idempotent of a finite level to an
exact one at distance `< 1`; so the idempotents are those of the algebraic colimit, the clopen
subsets of `lim_i Spec(level i)`, which is `ℤ_p(1)` modulo the image of the cyclotomic character.
Old → new: the §3.2 Check carries the level-`i` count and the clopen-subset description.

## REV-PKG-PerfectoidSpacesPartII/F06 (P3) — applied

Verified: the README has no `RA.` section id (its layers are `## Layer 0`–`## Layer 5`, targets
`### 0.1`–`### 5.12`). Old → new: every `cited_for` entry uses the README's ids (`RA.0` → `0`,
`RA.1.1` → `1.1`, …, `RA.5.12` → `5.12`); `"Suggested.lean"` is added for BHATT18, ANDRE18A and
ANDRE18B, whose theorems the Lean docstrings cite (GR03 already had it). No other field changed.
The consumer DirectSummandsAndBigCohenMacaulay's `RA.` citations are that roadmap's to repair.

## Checks run

- `lake env lean` on `packages/PerfectoidSpacesPartII/Suggested.lean` from the content checkout:
  exit 0, five warnings `declaration uses sorry` (lines 110, 158, 223, 341, 397: the two new
  theorems and the three existing headlines), nothing else. Rerun after the module-header repair
  below with the same outcome; the line numbers are those of the module-form file.
- Mechanical signature check: a scratch copy with `#check @` for all 24 declarations after the
  closing `end`, elaborated once. The two new types are as written (binders `K`, `hK`, `hKp`, `hKF`,
  `R` with its nine instances, `hKR`, `t`, `ht0`, `ht1`, `htr`, `g`, `hgA`, `hgr`, `P`, `hIplus`,
  `hden`, then `m`, `hgreg`, `n`, `a`, `ha` for clause (1) and `hsub`, `m k n` for clause (2), with
  `n + p ^ k * m` in the source presentation); no section binder is lost (the only section
  variable, `p` with `Fact p.Prime`, appears in both). The 22 earlier declarations agree with
  `scratch/signatures.md`. In the same run the two new theorems were probed with
  `first | rfl | (simp; done) | infer_instance | sorry`: both fall through to `sorry` (the `sorry`
  warnings at lines 106 and 154 persist), so neither follows in one tactic from the library.
- Depcheck: `depcheck: 236 roadmaps, 2279 edges, 0 problem(s)`; no UPWARD, CYCLE or moved line.
- `roadmaps resolve` on the README: no cross-roadmap citation and no Lean name found nowhere.
- README/Lean agreement: all 24 declarations occur backticked in the README (the Kummer definitions
  with their arguments); the README's own backticked names are all declared.
- Ownership: `roadmaps grep` for "quantitative Riemann|Hebbarkeitssatz" hits PerfectoidShimuraVarieties
  §1.3 (Scholze's qualitative Hebbarkeitssatz, which the README already distinguishes) and the
  consumer DirectSummandsAndBigCohenMacaulay; Bhatt's quantitative form stays this roadmap's §1.2.
  Ownership against open pull requests beyond the grep index was not checked further.

## Adversarial pass on the new and changed statements

| Statement | Instances | Values | Result | Change |
| --- | --- | --- | --- | --- |
| clause (2) Lean, `m = 0` | any `k, n, x` | `tᵐ = 1`, `c = 0`; take `a = 0`, `y = f_n(g_k t_l)ρ(x)` | true, trivial | none (README Check already says `m = 0` is empty) |
| clause (2) Lean, `g = 0` | roots `g k = 0` | `R[1/0] = 0`, completion `0`, both sides `0`; `hden` holds in the zero ring | true, consistent with §1.1 Check 2 | none |
| clause (2) Lean, `g = 1` with roots `1` | `k, l` | `X⟨tⁿ/1⟩ = X`, `ρ = id`; `t_l x = a + tᵐ·0` with `a = t_l x ∈ R°` | true | none |
| clause (2), `k = 0`, `c = m` | `e ≥ 1`: `t^{ce} = t^{me} ∈ tᵐ`; `e < 1`: `g^{1−e}t^{(n+m)e} ∈ A` | both cases of BHATT18 lines 409–416 | sound | none |
| `hsub` direction | point `v ∈ Spa(R, R°)` with `v(tⁿ) ≤ v(g)` | `v(t) ≤ 1` since `t ∈ R°`, so `v(t^{n+c}) ≤ v(tⁿ) ≤ v(g)`: `X⟨tⁿ/g⟩ ⊆ X⟨t^{n+c}/g⟩` | matches `hsub : R(T'/s') ⊆ R(T/s)` with `T = {t^{n+c}, g}`, morphism from `n + c` to `n` | none |
| `A = R°` versus Bhatt | BHATT18 line 152 (`A = A_*`), line 156 (equivalence with `R ↦ R°`) | integral perfectoid `A` is `A[1/t]°` | generality equal | README §1.2 records it |
| clause (1) Lean, `g = 0`, `m ≥ 1` | `a = 1` | `hgreg` demands `t_l ∈ tᵐR°`, i.e. `|t|^{1/p^l} ≤ |t|^m`, false for `l ≥ 1` | hypothesis excludes the instance where the kernel is everything | none |
| clause (1) Lean, `m = 0` | any `a` | `b = t_l a` | true, trivial | none |
| clause (1), `n = 0` | `A/tᵐ → A⟨1/g⟩/tᵐ` | kernel `{a : gᴺa ∈ tᵐA}`, almost zero by `hgreg` iterated | sound (Bhatt's "each `f_n` injective") | `n` ranges over `ℕ` |
| `|t| = |p|` | Bhatt's proof | uses Scholze 6.4 and `0 < |t| < 1` only | not a hypothesis | §1.2 says so |
| §0.1 extension bullet (F04) | order of choices | `2/p^{k+1} ≤ 1/p^k` iff `p ≥ 2`; element lands in `M′_{n′}` by exactness | sound with the new order | rewritten |
| §2.7 Check (F03) | `K = 𝔽_p(T)` | `Perfection = 𝔽_p`, `PerfectClosure = 𝔽_p(T^{1/p^∞})` | the Check named the wrong one | rewritten |
| §3.2 Check (F05) | `K = ℚ_p`, level `i` | `i + 1` factors `Φ_{p^j}`, `2^{i+1}` idempotents; `u = e − e′` has `u³ = u` | count corrected; completion adds none | rewritten |

## Worker-check repair: module header

The worker's `lake build` logged `imports Mathlib from package mathlib, which is designed for use
with the module system; consider adding module` for `Suggested.lean`. Repaired in place: the file
now starts with `module`, its seven imports are `public import` lines (`Mathlib` and the five
`TauCeti.*` modules, unchanged), and `@[expose] public section` precedes
`namespace TauCetiRoadmap.PerfectoidSpacesPartII`. No declaration, docstring, binder or README
text changed. After the repair, `lake env lean` exits 0 with only the five `sorry` warnings, and
the mechanical `#check @` pass on all 24 declarations (a scratch copy of the module-form file with
the same 24 `#check` lines) gives elaborated types identical, line for line, to the pass recorded
above.

## For the maintainer

- No name that another roadmap cites changed. Two Lean names were added
  (`bhatt_riemann_extension_ker_almostZero`, `bhatt_quantitative_riemann_extension`); the
  Tau Ceti name cited for the restriction map is now `TauCeti.ValuationSpectrum.pairHomOfRationalSubsetSubset`.
- `Suggested.lean` now imports five Tau Ceti modules; all have object files at the pin.
- DirectSummandsAndBigCohenMacaulay (open) cites this roadmap by `RA.` ids that do not exist in the
  README; that is its own repair, as the review says.
- No `needs-references.toml` was written: every source needed was in the cache.
