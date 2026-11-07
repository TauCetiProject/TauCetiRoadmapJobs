# FIX-PKG-LubinTateFormalModulesAndQuasiCanonicalLifts~2

Repair round for the review REV-PKG-LubinTateFormalModulesAndQuasiCanonicalLifts (six findings).
Files changed: `packages/LubinTateFormalModulesAndQuasiCanonicalLifts/README.md`,
`packages/LubinTateFormalModulesAndQuasiCanonicalLifts/sources.toml` and, for the worker's
import warning only (see "Worker check: module warning" below),
`packages/LubinTateFormalModulesAndQuasiCanonicalLifts/Suggested.lean` (one line added, no
declaration touched). `metadata.toml` and `design/plan.json` are unchanged (no finding touches a Lean
statement, and no supplier gap is needed: every prerequisite has a named owner).

## REV-PKG-LubinTateFormalModulesAndQuasiCanonicalLifts/F01 (P2) — applied

Verified: `Completed/LocalFieldsRamification/README.md` Layer 2 (its lines 576–724) builds `K^ur`
inside a fixed algebraic closure and the Frobenius; the only completions it mentions are `Ẑ` and the
profinite completion. RamificationOfCompleteDiscretelyValuedFields (open pull request adding a new
roadmap folder) §4a.3 "Completed maximal unramified base change" builds `K′`, the completion of
`K^ur`, with `e = 1`, residue field an algebraic closure of `k`, the equivalence of finite separable
extensions and `G_(K′) ≅ I_K`; PadicPeriodRings §0.3 and ArithmeticGaloisRepresentations §3.0
(both earlier in the merge order) consume it from there. Tau Ceti at the pin has
`TauCeti.maximalUnramifiedExtension` (`TauCeti/NumberTheory/LocalField/Unramified/Maximal.lean`,
an `IntermediateField`, algebraic) and no completion of it.

Changed: the LocalFieldsRamification contract now ends "Layer 2: unramified extensions, the
algebraic maximal unramified extension `K^ur` …, and arithmetic Frobenius. The completion of `K^ur`
is not built there"; a new subsection "From TauCetiRoadmap.RamificationOfCompleteDiscretelyValuedFields"
states what §4a.3 supplies; the scope bullet on local fields names both owners. Cited "§4a.3" in
the §2.5 route and *Needs:*, the §2.6 statement (now "the completion `K̂^ur` …, by an isomorphism
`θ` defined over the integers of `K̂^ur`") and *Needs:*, the Layer 2 dependencies, and (pattern)
the §6.6 sentence on Gross's formulation (now "after base change to the completion `F̂^ur`"), the
§6.6 *Needs:* and the Layer 6 dependencies.

## REV-PKG-LubinTateFormalModulesAndQuasiCanonicalLifts/F02 (P3) — applied

Verified: over `O = 𝔽_q[[t]]`, `π = t`, `f = tX + X^q` has constant term `0`, linear coefficient
`t`, reduction `X^q`, and `f(X + Y) = f(X) + f(Y)` since `(X + Y)^q = X^q + Y^q`; by the uniqueness
of §1.3 (and of `exists_formalGroup_of_isLubinTateSeries`, whose hypotheses `𝔽_q[[t]]` satisfies)
`F_f = X + Y`. The old Check was false for Layer 1's equal-characteristic `O`.

Changed: the Check now reads "Over a discrete valuation ring `O` of characteristic zero the
additive law admits no Lubin–Tate endomorphism" with the torsion-free argument, and a new Check
records the equal-characteristic instance (`F_f = X + Y`, `[a]_f = aX` for `a ∈ 𝔽_q`, `[t]_f = f`).
No other section asserts the old claim (the additive examples of §§0.1, 2.1, 3.4 are over `𝔽_p`
with `[π] = 0` and are unaffected).

## REV-PKG-LubinTateFormalModulesAndQuasiCanonicalLifts/F03 (P3) — applied

Verified: with printed (type `p + sT²`, parameter `−sp`) and correct (type `p − sT²`, parameter
`sp`), `s = −1` gives (`p − T²`, `p`) against (`p + T²`, `−p`): the readings differ for both signs.
BKO21 line 554–557 (§5.0.1, printed p.955): `F` is the Lubin–Tate group of parameter `−p` and
`a_p(E) = 0`, so `a_(p²) = −2p`, `s = −1`, the correct pair; H68 Corollary 4 (line 497–502, p.212)
gives the same logarithm `Σ (−p)^(−j) X^(p^(2j))`.

Changed: "The case `a_p = 0` … on which the two readings agree" → "The two readings differ for
both signs. BKO21's local construction (§5.0.1, p.955) takes `a_p = 0`, so `a_(p²) = −2p` and
`s = −1`, and uses the Lubin–Tate module of parameter `−p`: … the correct pair … whereas the
printed lemma would give parameter `p` there." The third Check now says: for `s = 1` the
`p²`-Frobenius is `[p]`, `pX + X^(p²)` is Lubin–Tate for `p` and not for `−p`, so the printed pair
for `s = 1`, type `p + T²` with parameter `−p`, fails, and `ℓ₁` has type `p − T²`.

## REV-PKG-LubinTateFormalModulesAndQuasiCanonicalLifts/F04 (P3) — applied

Verified: §5.2 and §6.2 mark `H_L` to `H̄^(q₀^N)` for `[L:T] = q₀^N` (Y95 line 159–161), so its
modulus lives in the deformation space of that twist, which is again a formal `O₀`-module over
`k_F` of height `n` (the structure map `O₀ → k_F` factors through `𝔽_(q₀)`, fixed by Frobenius).

Changed: §6.6 now fixes, for each twist `H̄^(q₀^N)` of the special fibre of the canonical lift, a
universal deformation over `B[[t₁,…,t_(n−1)]]` (§3.6), takes `m_L` in the space of the twist to
which `H_L` is marked (the twist component of §6.2; `H̄^(q₀^N)` for `L ⊃ T`), notes that the
modulus depends only on the `π_F^ℤ`-class and twist component, and the route says `m_(a⁻¹L)` is a
point of the same component; *Needs:* adds §6.2. Pattern: §7.2 ("fix a universal height-two
deformation over `B[[t]]`") now fixes one per twist and takes `t_s` in the space of the twist to
which `H_(L_s)` is marked.

## REV-PKG-LubinTateFormalModulesAndQuasiCanonicalLifts/F05 (P3) — applied differently

Verified at the cached text: "5.0.1. The set-up" is BKO21 line 554, which precedes the page-15
marker at line 571 (printed p.956, line 572) and follows the page-14 marker at line 533 (printed
p.955, line 534); the page footer of p.955 is at lines 568–570. So §5.0.1 begins on p.955, not
p.956 as the finding says and not p.957 as the README said. §5.0.2 begins at line 712 on p.958
and runs into p.959 (page-18 marker at line 732).

Changed: "§§5.0.1–5.0.2, pp.957–959" → "§§5.0.1–5.0.2, pp.955–959" in §7.6 and in the BKO21
`locator` of `sources.toml`; in the same manifest locator, "Lemma 5.1, pp.955–957" was tightened
to "Lemma 5.1, p.956" (lines 573–588, all after the page-15 marker), matching the README's §4.3
citation.

## REV-PKG-LubinTateFormalModulesAndQuasiCanonicalLifts/F06 (P3) — applied

Verified: H70 lines 305–313 (§2, p.220) define (F) for a discrete valuation field of
characteristic zero and say completeness is not assumed; §3 (line 506–508) adds only (F1);
Proposition 3.3 (line 537, p.226) and Theorem 4 (line 607, p.228) carry no completeness; Honda
first assumes `o` complete at 3.3 (line 623–625), Lemma 3.4 (line 627, p.228) and Proposition 3.5
(line 668, p.229). Lines 314–317 note that infinite unramified extensions, not complete, satisfy (F).

Changed: §4.1 now reads "Let `O` be a discrete valuation ring of characteristic zero, complete or
not, … residue characteristic `p` … (completeness is not assumed: H70, §2, p.220)". §4.2 states
the converse for the integers of a finite or infinite unramified extension of `ℚ_p` (every law has a
type; strict classes ↔ left-associate classes of special elements: Proposition 3.3, Theorem 4) and,
"when `O` is moreover complete", the height-`h` normal form `p + Σ_(ν=1)^h b_ν T^ν` with `b_h` a
unit and `b_1, …, b_(h−1) ∈ pO`, bijective on strict classes (Lemma 3.4, Proposition 3.5,
pp.228–230); the locators now say which results assume completeness. A new Check records the
non-complete instance (integers of `ℚ_p^ur`: `𝔾_m` has type `p − T`, every law has a type, the
normal form is asserted only over `W(𝔽̄_p)` where it is a `p`-adic limit). §§4.3–4.4 are over
`W(𝔽_(p²))`, complete, and are unchanged.

## Checks

- `lake env lean …/Suggested.lean` from the content checkout, after the `module` line was added
  (below): exit 0; exactly five warnings `declaration uses 'sorry'` at lines 77, 91, 112, 127, 149
  (each one line lower than before the added line); no other message, and the import warning is
  gone. No declaration changed this round. The elaborated signatures were re-checked mechanically:
  a scratch copy of the file with `#check @name` appended for each of the seven declarations
  elaborated with exit 0, and each printed type agrees with the worker's listing and with its README
  statement, every hypothesis in the declaration's own binders (`[IsDomain O]
  [IsDiscreteValuationRing O] [Finite (IsLocalRing.ResidueField O)]`, `Irreducible π`;
  `[IsNonarchimedeanLocalField K] [CharZero K]`; `[Fact p.Prime]`, `IsUnit W.Δ`, the point count).
  None of the six repaired README statements is one of the Lean headlines. The listing's eighth
  entry `it` is the docstring word "theorem it is" at line 148, not a declaration.
- Dependency check (`gate --depcheck … --movable`):

      depcheck: 241 roadmaps, 2407 edges, 0 problem(s)

  No UPWARD, CYCLE or `moved:` line (rerun after the repair below, same output). RamificationOfCompleteDiscretelyValuedFields is a design-stage
  roadmap not yet in the merge order; the check places it after its last supplier, before this
  roadmap.
- `roadmaps resolve` on the README: no cross-roadmap citation and no Lean name found nowhere (the
  four FiniteFlatGroupsAndIntegralPadicHodgeTheory names it listed before are planned declarations
  of that roadmap, cited as such).
- House-style grep (LaTeX delimiters, process words, pull-request numbers, machine paths): nothing.

## Worker check: module warning

The worker reported one problem: `TauCetiRoadmap/LubinTateFormalModulesAndQuasiCanonicalLifts/Suggested.lean`
imports `Mathlib` from package `mathlib`, which is designed for use with the module system, with the
advice to add `module` at the start of the file. Repaired in place: the single line `module` is now
the first line of `packages/LubinTateFormalModulesAndQuasiCanonicalLifts/Suggested.lean`, before
`import Mathlib`; nothing else in the file changed (the imports stay the plain `import Mathlib`
followed by the three `TauCeti.*` modules, no `public` modifier, no declaration or docstring
touched). This is the shape of the roadmaps on main that already carry the `module` line with plain
imports (`TauCetiRoadmap/CFSGBasicProperties/Suggested.lean` among ten such files). Under the
module system the file's declarations are module-private and may use the privately imported
Mathlib and Tau Ceti modules, so every statement elaborates unchanged; `lake env lean` on the file
now ends with exit 0, the five `sorry` warnings and no import warning, and the `#check` pass above
shows the seven signatures unchanged.

## Adversarial pass on the changed statements

| Statement | Instances | Values on each side | Result | Change |
| --- | --- | --- | --- | --- |
| §1.3 Check, additive law, char 0 | `ℤ_p`, `φ` with `φ(X+Y) = φ(X)+φ(Y)` | coefficient of `X^iY^j`, `i,j ≥ 1`, is `0`; `φ = cX`, reduction `c̄X ≠ X^q` | no LT endomorphism | Check restricted to char 0 |
| §1.3 Check, additive law, equal char | `𝔽_q[[t]]`, `π = t`, `f = tX + X^q`; `q = 2`, `p = 2` | `f(X+Y) − f(X) − f(Y) = (X+Y)^q − X^q − Y^q = 0`; `[a]_f = aX`: `f(aX) = a f(X)` since `a^q = a` | `F_f = X + Y` | new Check |
| §4.1 without completeness | integers of `ℚ_p^ur` (not complete), `σ` Frobenius, `q = p` | `(p − T)⋆log(1+X) = p·log(1+X) − log(1+X^p)`, coefficients `p·(−1)^(n−1)/n − [p∣n](−1)^(n/p−1)/(n/p)`, in `pℤ_p` | type `p − T` holds | "complete" dropped |
| §4.2 normal form | `O = ℤ_p` (complete), `𝔾_m`, `h = 1` | `u = p − T`: `b_1 = −1` a unit, no `b_ν ∈ pO` needed | `h = 1` normal form | completeness stated only here |
| §4.3 paragraph | `s = ±1` | printed `(p + sT², −sp)`: `s = 1` → `(p + T², −p)`, `s = −1` → `(p − T², p)`; correct `(p − sT², sp)`: `(p − T², p)`, `(p + T², −p)` | differ for both signs | paragraph rewritten |
| §4.3 Check `s = 1` | `a_(p²) = 2p`, `(φ − p)² = 0` on `T_ℓ` | `φ_(p²) = [p]`; `[p]_G ≡ X^(p²)`, linear coefficient `p` | LT for `p`, not `−p` | Check rewritten |
| §6.6 modulus | `L = T` (`N = 0`); `L ⊃ T` with `[L:T] = q₀`, `F/F₀` unramified quadratic | twist `H̄^(1) = H̄`, modulus of the canonical lift; twist `H̄^(q₀)`, the conjugate module over `k_F = 𝔽_(q₀²)`, `n − 1 = 1` parameter | component named | §6.6, §7.2 |
| §6.6 route `m_(a⁻¹L)` | `a ∈ O_F^×` | `[a⁻¹L : T] = [L : T]`, same `N` | same component | route amended |
| BKO21 locator | line 554 vs markers 533 (p.955), 571 (p.956) | `533 < 554 < 571` | p.955 | pp.955–959 |

## For the maintainer

- This roadmap now cites RamificationOfCompleteDiscretelyValuedFields §4a.3 (an open pull request
  adding a new roadmap folder), as PadicPeriodRings and ArithmeticGaloisRepresentations already do;
  the intake will place it before this roadmap.
- Ownership against open pull requests was checked by object with `roadmaps grep` for the
  completed maximal unramified extension (hits: RamificationOfCompleteDiscretelyValuedFields as
  owner; PadicPeriodRings, ArithmeticGaloisRepresentations and, through PadicPeriodRings §0.3,
  FiniteFlatGroupsAndIntegralPadicHodgeTheory as consumers; no roadmap on main or at an open head
  builds the completion itself); open pull requests whose
  files the brief does not provide were not checked.
- Source note for BKO21: besides the Lemma 5.1(ii) misprint already recorded in §4.3, the manifest's
  Lemma 5.1 locator was a page range (`pp.955–957`) and is now `p.956`.
- No Lean name changed; no name another roadmap cites changed.
