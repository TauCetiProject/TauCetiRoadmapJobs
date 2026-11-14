# FIX-PKG-PerfectoidSpacesPartII~7: repair of the round-6 package review

The review `REV-PKG-PerfectoidSpacesPartII~6` raised one P2 and five P3 findings. All six were
checked against the sources, the pinned libraries and the roadmap's own text, and all six are
right. Files changed: `packages/PerfectoidSpacesPartII/Suggested.lean` and
`packages/PerfectoidSpacesPartII/README.md`. `metadata.toml`, `sources.toml` and `design/plan.json`
did not change: no new source and no new supplier gap was needed.

## REV-PKG-PerfectoidSpacesPartII~6/F01 (P2) — applied

Verified: ANDRE18A line 3186 (Proposition 5.3.1(3), p. 68) states (3) for `B̃°`; lines 56–68 give Théorème 0.3.1. Old: §4.7 was entirely "not statable". New: `rootSaturation` (Layer 2) and `abhyankar_trace_almost_surjective` (Layer 4), importing `TauCeti.LinearAlgebra.Trace.Projective`. `riemann_extension_completeIntegralClosure` now uses `rootSaturation` (same set). The README §2.3, §3.6, §4.7, supplier contracts and Layer 4 dependencies were updated to match.

The full list of README changes is under "Details of the F01 repair" below.

## REV-PKG-PerfectoidSpacesPartII~6/F02 (P3) — applied

Verified: ANDRE18A line 2082 is the p. 48 marker; Lemme 3.5.5 is line 2109 and Proposition 3.5.6 line 2120. README §3.3: "pp. 47–48" → "p. 48". Same pattern: Remarques 3.5.5(2) runs from line 2068 (p. 47) to line 2100 (p. 48), so its locator "p. 47" → "pp. 47–48". All other André A page ranges in the README were rechecked against the page markers; they are correct.

## REV-PKG-PerfectoidSpacesPartII~6/F03 (P3) — applied

Verified: ANDRE18B line 356 is the marker of printed p. 79, §2.4 is lines 358–366, and §2.5 starts at line 367. README §5.5: "André B, §2.4, pp. 78–79" → "p. 79". Every other André B locator in the README (17 distinct) was rechecked against the page markers (printed page = extraction page + 70); none is off.

## REV-PKG-PerfectoidSpacesPartII~6/F04 (P3) — applied

Verified: `coeffToSections` has target `𝒪_X(V)`, not `𝒪⁺`. The Lean docstring of `bhatt_riemann_extension_limit` said "the structure maps are `coeffToSections` followed by `𝒪⁺ ⊆ 𝒪`". It now says "the structure map `R° → 𝒪⁺(X⟨tⁿ/g⟩)` followed by `𝒪⁺ ⊆ 𝒪` is the restriction of `coeffToSections` to `R°`". README §1.1 now reads: canonical map `R → 𝒪_X(V)`; for `V = X⟨tⁿ/g⟩` its restriction to `R°` is `f_n` followed by the inclusion.

## REV-PKG-PerfectoidSpacesPartII~6/F05 (P3) — applied

Verified: BHATT18 line 364 states Theorem 4.2(2) "for any n ≥ 0". At `n = 0` the presentation is `M_0 = (A/tᵐ)[1/g]`, and both clauses hold (computed below). README §1.1: "For `n ≥ 1`" → "For `n ≥ 0`", with the locus `{|g| = 1}`; the §0.1 tower stays indexed by `n ≥ 1`. In §1.2(1)–(2), `n ≥ 1` → `n ≥ 0`, and the requested `Suggested.lean` sentence was added. There is a new `n = 0` Check, and the two Lean docstrings now mention `n ≥ 0`.

## REV-PKG-PerfectoidSpacesPartII~6/F06 (P3) — applied

Verified: §3.0 had no statement, API or Check, and `roadmaps grep` finds no citation of this roadmap's §3.0 on main or at any open head. The subsection was deleted. Its sentence now ends the Layer 3 introduction: perfectoid Tate rings are Tau Ceti's `TauCeti.Perfectoid.IsPerfectoidTateRing`, under the complete Hausdorff Tate-ring conventions of the supplier contracts.

## Checks

- **Elaboration.** `lake env lean packages/PerfectoidSpacesPartII/Suggested.lean`, run from the content checkout: exit 0. There are nine warnings, all `declaration uses 'sorry'` (lines 111, 160, 223, 300, 378, 407, 534, 586, 645). The new import's object file already existed, so no build was needed. The file is 664 lines, with no `set_option`, `lemma`, `#eval`, `#print` or `#synth`.
- **Signatures.** All 34 named declarations were written as `#check @name` into one scratch copy and elaborated once: no errors. `rootSaturation` carries `p`, `[Fact p.Prime]`, `R` with `[CommRing] [TopologicalSpace] [NonarchimedeanRing]`, `g` and `hg`. `riemann_extension_completeIntegralClosure` keeps every binder; only its left-hand side is now `↑(rootSaturation p g hg)`. `abhyankar_trace_almost_surjective` carries every README hypothesis: the perfectoid criterion on `K`, the perfectoid Tate ring `R`, `hKR`, `g`, `hg`, `hreg`, `B′` with `Module.Finite`, `Module.Projective`, `Algebra.Etale`, and `hfaith`. `LinearMap.mulLeft` is taken over `Localization.Away ↑(g 0)`. No other declaration changed.
- **Names.** Every Lean name occurs backticked in the README. `roadmaps resolve` on the README reports no cross-roadmap citation and no Lean name found nowhere.
- **Dependency check.**

```text
depcheck: 208 roadmaps, 1899 edges, 0 problem(s)
```

## Details of the F01 repair

- Module docstring: §4.7(3) is now under "Stated here". Clauses (1)–(2) stay under "not statable", for lack of topologies on intermediate algebras and almost finite étale algebra structures.
- README §4.7: (3) now says that the trace of the finite projective `A[1/g]`-module `B′` maps `B°` into `g^{-1/p^∞}A°`, almost surjectively. It previously cited P0.12, which is about almost traces. A new paragraph explains the encoding and why the generator form is almost surjectivity (the ideal is idempotent). It also shows that the `B̃°` and `B°` forms are equivalent.
- The proof sketch now proves the containment half, which needs no faithfulness. That half goes through characteristic polynomials over a splitting algebra and the integral closedness of `S`, which follows from §3.6(2) and `gS ⊆ A°`. *Needs:* gains §2.3, §3.6, Tau Ceti `LinearMap.projectiveTrace`, Mathlib `integralClosure` and `Algebra.Etale`.
- Two new Checks: one shows that faithfulness is needed (`B′ = 0`; `B′ = A₁` over `A₁ × A₂`); the other uses a non-free `B′ = A₁ × A`, where Mathlib's `LinearMap.trace` is `0`.
- README §2.3: names `rootSaturation p g hg` and gives the closure under products (`p ≥ 2`). It shows that the set taken in `R[1/g]` equals the one in `R°[1/g]`. New Check: `b = T^{−(1−1/p)}` passes the `m = 0` test only.

Ownership: no Suggested.lean on main or at an open head declares a root saturation or a perfectoid-Abhyankar trace (`roadmaps grep`). Main's AbhyankarLemma treats the classical tame lemma for a regular divisor, a different object.

## Adversarial pass (new or changed statements)

| Statement | Instances | Values computed | Result |
| --- | --- | --- | --- |
| `rootSaturation` | `g = 1`; `B = K⟨T^{1/p^∞}⟩`, `g = T`; `p = 2`; `g = 0` | `g = 1`: `{b : ∃a ∈ R°, a = b} = R°`. `b = T^{−(1−1/p)}`: `gb = T^{1/p}`, `g^{1/p}b = T^{2/p−1}` (`p ≥ 3`), `g^{1/4}b = T^{−1/4}` (`p = 2`): excluded. `p = 2`: `q = p − 2 = 0`, witness `a·b`. `g = 0`: `R[1/0] = 0`. | Determines its object; m = 0-only model excluded (new Check). |
| `rootSaturation` in `R[1/g]` vs `R°[1/g]` | any `g ∈ R°` | `R°[1/g] → R[1/g]` injective (exact localisation); `gb = a ∈ R°` ⇒ `b = a/g`. | Same set. |
| `riemann_extension_completeIntegralClosure` (restated) | carrier of `rootSaturation` | `↑(rootSaturation p g hg)` is by definition the old left-hand set. | Content unchanged. |
| `abhyankar_trace_almost_surjective`, containment | `B′ = L`; `B′ = L × L`, `g = 1`; `B′ = 0` | `B′ = L`: trace `= id`, `B̃° = S` (S integrally closed). `L × L`: `B̃° = R° × R°`, `tr(a, b) = a + b ∈ R°`. `B′ = 0`: trace `0 ∈ S`. Proof: `h = X·f(X)` kills the extension by `0`; roots `α` have `h(α)` nilpotent; `S` integrally closed since `S ⊆ g^{-1}R°`. | True without `hfaith`. |
| same, almost surjectivity | `g = 1`, `B′ = L × L`, `p = 2`; `c = 0`; `B′ = 0`; `B′ = A₁` over `A₁ × A₂`; `B′ = A₁ × A`; `R = 0` | `c·a = tr(c·a, 0)`. `c = 0`: `b = 0`. `B′ = 0`: `ϖ·1 ≠ 0` not a trace; excluded by `hfaith`. `B′ = A₁`: image `A₁° × 0` misses `(0, ϖ)`; `hfaith` fails. `A₁ × A`: projective trace `(x + y₁, y₂)` onto `R°`; Mathlib trace `0`. `R = 0`: everything `0`, holds. | True as stated; both hypotheses needed (new Checks). |
| generator form = almost surjectivity | `m = T^{1/p^∞}K°°[T^{1/p^∞}]` | Trace image is an `S`-module (`tr(sb) = s·tr(b)`), so generators `c·g^{1/p^l}` suffice. `c·g^{1/p^l} = (c′g^{1/p^{l+1}})(c″g^{(p−1)/p^{l+1}})` with `|c| < |c′| < 1`: `m = m²`. | Holds; `B°` and `B̃°` forms equivalent. |
| §1.2 at `n = 0` | `A = K°⟨T^{1/p^∞}⟩`, `g = T`; `m`, `k`, `c = pᵏm` | `M_0 = (K°/tᵐ)[T^{±1/p^∞}]`, `ker f_0 = 0`. `T^{1/p^k}u_c^e ↦ T^{1/p^k}t^{ce}u_0^e`: `0` for `e ≥ 1/pᵏ` (`ce ≥ m`), `T^{1/p^k−e}t^{ce}` otherwise. Without regularity: `n = 0` follows from `n = 1` with `c = 1 + c₁`. | True; README now `n ≥ 0`. |
| §1.1 `coeffToSections` wording | `V = X⟨tⁿ/g⟩` | Type `R →+* 𝒪_X(V)`; on `R°` it equals `ι ∘ f_n`. | Wording corrected. |
| §1.1 Example `A = K°`, `g = ϖ` | `n = 0` | `{1 ≤ |ϖ|}` is empty, so the example's `n ≥ 1` is a genuine condition. | Kept. |

## For the maintainer

- New names other roadmaps may cite: `rootSaturation` and `abhyankar_trace_almost_surjective`. No name was renamed or removed. §3.0 is gone, and no roadmap cited it.
- DirectSummandsAndBigCohenMacaulay (open) consumes Layer 1, §5.1–§5.3, §5.11 and §5.12. None of these ids changed. §1.2's statements now cover `n = 0` as well, which only widens them.
- No supplier gap was added. Ownership against the open pull requests was checked with `roadmaps grep` for the root saturation and the Abhyankar trace.
- No passage in the review asked for anything outside this package; nothing suspicious was found.
