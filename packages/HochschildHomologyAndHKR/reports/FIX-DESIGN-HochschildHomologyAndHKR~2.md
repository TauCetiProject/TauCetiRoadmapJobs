# Repair report: HochschildHomologyAndHKR, design round 2

Review resolved: `REV-DESIGN-HochschildHomologyAndHKR` (four findings). Files edited:
`packages/HochschildHomologyAndHKR/design/README.md` and
`packages/HochschildHomologyAndHKR/design/plan.json`. The manifest
`packages/HochschildHomologyAndHKR/sources.toml` needed no change (no new work is cited; the
HKR62 and Ginz05 entries already list §§8.4–8.5 in `cited_for`). No `needs-references.toml` was
written. No `Suggested.lean` exists at the design stage, so no elaboration was run.

## REV-DESIGN-HochschildHomologyAndHKR/F01 (P2) — applied

Verified at the pinned Tau Ceti (manifest pin `358314d4`): `TauCeti.ReducedTensorWords.brace`
(`TauCeti/LinearAlgebra/TensorCoalgebra/Brace.lean:94`), `gerstenhaberBracket` (`:160`),
`gerstenhaberBracket_swap` (`:330`), `brace_brace_sub_smul_brace_brace` (`:340`),
`leibniz_gerstenhaberBracket` (`:354`); `TauCeti.AInfinityAlgebra.hochschildDifferential`
(`TauCeti/Algebra/Homology/AInfinity/Algebra/Hochschild/Basic.lean:75`),
`hochschildDifferential_eq_brace_sub` (`:86`), `hochschildDifferential_gerstenhaberBracket`
(`:166`), `brace_brace_sub_brace_brace_eq_hochschildDifferential` (`:183`);
`TauCeti.AInfinityAlgebra.PositiveHochschild.cochains`, `complex`, `bracket`
(`Hochschild/Complex.lean:49,87,103`), `Cohomology`, `cohomologyBracket`, `cohomologyBracket_swap`,
`leibniz_cohomologyBracket` (`Hochschild/Cohomology.lean:80,197,213,228`), `normalizedCochains`
(`Hochschild/Normalized.lean:311`). The pin excludes arity-zero cochains, the cup product and
the multiple brace (`Cohomology.lean` lines 24–25) and has no chains. The review's names
`TauCeti.brace` and `TauCeti.gerstenhaberBracket` are wrong: both live in the namespace
`TauCeti.ReducedTensorWords`; the README cites the correct names.

Sign conventions checked at the pin for the dictionary: the brace inserts `G` with the Koszul
sign `(−1)^{q · Σ(degrees of the letters before the block)}`
(`TauCeti/LinearAlgebra/TensorCoalgebra/GradedCoderivation.lean:143`), which on letters of
degree `−1` is Ginzburg's `(−1)^{(q−1)(i−1)}`; the suspension sign is `(−1)^{suspExp}` with
`suspExp = Σ (n − 1 − i) d_i` (`TauCeti/LinearAlgebra/Graded/Shift.lean:299,369`), zero on
degree-zero inputs; the shift by `1` has degree-`p` piece the degree-`(p + 1)` piece
(`TauCeti/Algebra/Module/GradedModule/Shift.lean:50`), so `sA` sits in degree `−1` and a
homogeneous map of degree `n − 1` is supported on words of length `n`.

Changes: "Already in the pinned libraries" list → names the pinned declarations and what the pin
lacks. "From Tau Ceti" → the sentence "contains no Hochschild cochain or brace declarations"
replaced by four bullets (suspension sign and shift; brace and bracket with their identities;
`hochschildDifferential` with its identities; the positive-arity complex and cohomology), each
with its file. DGAInfinity contract → Layer 0 supplies only the multiple brace and the brace
relation (its single brace is the pinned one; the pinned pre-Lie identity is the relation's
antisymmetric part); Layer 8 supplies arity zero, the cup product as `m{F,G}`, the full-complex
bracket and the chains. §6.1 → the dictionary is stated for arities `n ≥ 1` against
`PositiveHochschild.cochains 𝒜 (n − 1)`, `hochschildDifferential 𝒜 (p − 1)`, `brace … (q − 1)`
and `gerstenhaberBracket (p − 1) (q − 1)`; the arity-zero clauses and the cup product stay with
Layer 8; the consequence now says `HH^n(A,A) = PositiveHochschild.Cohomology 𝒜 (n − 1)` for
`n ≥ 2` with `cohomologyBracket` transported for `p, q ≥ 2`, and that the pinned degree-`0`
cohomology is `Der_k(A)` (no arity-zero cochains), the bracket on `HH¹`, `HH⁰` coming from
Layer 8. New Check `n = 2` at the pin (the `(−1)^q` of `hochschildDifferential_eq_brace_sub`
first matters there) with a wrong-model control. §6.2 → route cites
`hochschildDifferential_eq_brace_sub`, `brace_brace_sub_smul_brace_brace` and
`hochschildDifferential_gerstenhaberBracket`, DGAInfinity Layer 0 only for the multiple-brace
relation; new Check that antisymmetrising the homotopy formula gives
`δ{f,g} = {f,δg} − (−1)^q{δf,g}`, which is the pinned Leibniz rule under the dictionary.
"How to read the build" and Layer 6 Dependencies updated. `plan.json` 6.1 and 6.2 → `tauceti:`
prerequisites, statement, API and tests updated; DGAInfinity supplier `what` updated.

## REV-DESIGN-HochschildHomologyAndHKR/F02 (P3) — applied

Verified: KTheoryFiniteLocalFields §4.0 at its open head ("Cyclic homology foundations") uses
DGAInfinity Layer 8's derived chains and says nothing about flat algebras; RefinedTraceMethods
§1.1 at its open head ("The cyclic enhancement of supplied derived Hochschild chains") states
that for `k`-flat `A` the derived object is the totalisation of the cyclic DG bar and
`HH(A/k)` is the homology of `C_•(A/k)`, with the `k = ℤ`, `A = 𝔽_p` non-example.

Changes: §6.3 attributes the flat identification to RefinedTraceMethods §1.1 and keeps
KTheoryFiniteLocalFields §4.0 for `HH_n(A/k)` and the `HH₀` check; its `*Needs:*` line, the
RefinedTraceMethods supplier contract (new §1.1 bullet), the Layer 6 Dependencies and
`plan.json` 6.3 (`roadmap:RefinedTraceMethods §1.1`, hypotheses, the `𝔽_p/ℤ` test) and the
RefinedTraceMethods supplier entry (`sections` now `§1.1`, `§1.9`) carry it.

## REV-DESIGN-HochschildHomologyAndHKR/F03 (P3) — applied

Verified: the antisymmetrised chain is a `b`-cycle and `π^cl ∘ b = 0` for every commutative `R`
(Ginz05 lines 2142–2156 assume nothing on `k → A`; RefinedTraceMethods §1.9 says "flat over
`k`, or replace `C_•` by the derived HH"); §3.4 holds for every commutative `R`.

Changes: §6.4 → "For a commutative `k`-algebra `R`" with "if `R` is flat over `k`" on the two
comparison clauses and "(hence flat)" on (d); a sentence saying where flatness enters; new
negative-control Check `k = ℤ`, `R = 𝔽_p` (classical `HH_n = 0 = Ω^n` for `n ≥ 1`, derived
`HH₂ = 𝔽_p`). `plan.json` 6.4 statement, hypotheses and tests updated.

## REV-DESIGN-HochschildHomologyAndHKR/F04 (P3) — applied

Verified: HKR62 line 210 (Theorem 3.1: Noetherian `S`, `R`; `R` regular; `S_M` regular), lines
268–279 (Koszul resolution of an ideal generated by a regular sequence, the computation the
route of §8.4 uses), line 548 (Theorem 5.2: regular affine algebra over a perfect field); Ginz05
line 2187 (Lemma 9.3.1, a regular sequence in a commutative `k`-algebra, no other hypothesis).

Changes: §8.4 cites HKR62 lines 268–279 (saying why Theorem 3.1's statement does not apply),
Ginz05 Lemma 9.3.1 line 2187, Loday98 §3.2 (symmetric algebras over any `k`), Weibel94 §9.4.
§8.5 cites §7.5, HKR62 line 495 and Ginz05 §9.2 lines 2142–2156, with Theorem 5.2 marked as the
perfect-field case. References: HKR62 entry mentions lines 268–279. `plan.json` 8.4 and 8.5
locators updated. Other citations of Theorem 5.2 (§7.4 as a definition locator, §7.6's Check
"for `k` perfect") were already correctly scoped and are unchanged.

## Checks

Dependency check (after the edits):

```text
candidate: HochschildHomologyAndHKR is not in the merge order yet; checked as if placed after RefinedTraceMethods (the intake inserts it when its design is accepted)
depcheck: 242 roadmaps, 2365 edges, 0 problem(s)
```

No UPWARD or CYCLE line. `roadmaps resolve` on the edited README: no cross-roadmap citation and
no Lean name found nowhere (its note says Lean names outside TauCetiRoadmap were not checked, so
every Tau Ceti name added was grepped at the pinned checkout by hand: all present, files and
lines above). No gate failures were listed for this round. No `set_option`, LaTeX delimiter,
machine path or process word was introduced.

## Adversarial pass on the changed statements

| Statement | Instances and values | Result | Change |
| --- | --- | --- | --- |
| `cochains 𝒜 (n−1)` = arity-`n` cochains | `sA` in degree `−1`; a word of length `m` has degree `−m`, target degree `−m + (n−1)` must be `−1`, so `m = n`; `A = 0`: both sides `0` | holds | stated in §6.1 |
| `Θ(δf) = (−1)^{p+1}[m,Θf]` at the pin | `p = 1`, `q = 0`: `m{Θf} − Θf{m} = s(f(a)b + af(b) − f(ab))`, sign `+1`; `p = 2`, `q = 1`: `m{Θf} + Θf{m} = s(f(a,b)c − af(b,c) + f(ab,c) − f(a,bc)) = −Θ(δf)`, sign `−1`; wrong model `m{F} − F{m}` at `f(a,b) = a` on `k[x]`: `(x,x,x)` gives `x − x²` = `+δf`, `(x,1,x)` gives `x² − x` = `−δf` | holds; model excluded when `2 ≠ 0` | Check added |
| `Θ(f∘g) = brace (Θf)(Θg)(q−1)` | sign of the pinned coderivation at block position `i−1` with letters of degree `−1`: `(−1)^{(q−1)(i−1)}` = Ginz05 (6.6.2); `q = 1`: no sign | holds | — |
| `Θ{f,g} = gerstenhaberBracket (p−1)(q−1)` | `[F,G] = F{G} − (−1)^{(p−1)(q−1)}G{F}`; `p = q = 1`: commutator | holds | — |
| pinned `Cohomology 𝒜 0` | `cochains 𝒜 (−1) = 0` (no arity `0`), so `H⁰ = Z¹ = Der_k(A)`; `Mat₂(k)`: `Der = Inn ≅ sl₂`, `HH¹ = 0` | not `HH¹`; stated | §6.1 text |
| Leibniz check of §6.2 | `(−1)^{pq+p+q} = −(−1)^{(p−1)(q−1)}` since `(p−1)(q−1) = pq − p − q + 1`; `p = q = 1`: `δ{f,g} = {f,δg} + {δf,g}` = pinned rule at degrees `0,0` | holds | Check added |
| §6.3 flat identification | `A = k`: both `k`; `𝔽_p/ℤ`: classical `0`, derived `𝔽_p` | flatness needed, supplier §1.1 | locator |
| §6.4 (a)–(c) without flatness | `𝔽_p/ℤ`: `b_n = Σ_{i≤n}(−1)^i` = `1` (`n` even `≥ 2`), `0` (`n` odd); `HH_n = 0`, `Ω^n = 0` for `n ≥ 1`; `k[x,y]`, `n = 2`: `π ε = 2` as before | holds | Check added |
| §8.4 locator | HKR62 268–279 needs a regular sequence only; §8.1 supplies `(t_i)` regular in `Rᵉ` for every `k`, `m = 0, 1` included | holds | locator |
| §8.5 class identity | `m = 1`: `⟨g∂⟩ = g∂`, class `g[∂]`, `1! = 1`; `m = 2` over `𝔽₂`: `⟨∂₁,∂₂⟩ = δ(∂₁∂₂)`, class `0 = 2[∂₁∪∂₂]` | holds | locator |

## For the maintainer

- The README now names pinned Tau Ceti declarations in the namespaces
  `TauCeti.ReducedTensorWords` and `TauCeti.AInfinityAlgebra.PositiveHochschild`; the review
  cited `TauCeti.brace`, which does not exist. A package-stage `Suggested.lean` can state §6.1's
  dictionary for arities `n ≥ 1` against these carriers.
- RefinedTraceMethods §1.1 is now a cited section (it was already a supplier, earlier in the
  merge order); no new supplier was added and the gap `smooth-hkr-antisymmetrisation` is
  unchanged.
- Ownership against open pull requests whose files the brief does not provide was not checked;
  no new construction was added, only citations and hypotheses changed.
- During the run the worker's root filesystem was full for some minutes; the edits were staged
  in a temporary directory and copied in once space returned, and were verified afterwards
  (line counts, JSON parse, gate, resolve).
