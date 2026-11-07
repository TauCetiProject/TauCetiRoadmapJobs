# FIX-DESIGN-StackPointsAndResidualGerbes~2

Repair of the design review `REV-DESIGN-StackPointsAndResidualGerbes` (seven findings: F01–F07).
Files edited: `packages/StackPointsAndResidualGerbes/design/README.md`,
`packages/StackPointsAndResidualGerbes/design/plan.json`,
`packages/StackPointsAndResidualGerbes/sources.toml`. The package now has 38 targets, 128 tests
(one added) and 15 gaps (there were 9; the compound ones are split).

## F01 (P2) — applied

6.3: "neutral iff some representative has `Spec k ≅ 𝒵_x^♭`" → neutral means `𝒵_x → 𝒵_x^♭` has a
section; such a representative implies neutrality; the converse (an object over `Spec κ(x)` ⇔ some
`κ(x) → k` an isomorphism) is stated for decent `𝒳`. Added the negative-control Check
`Spec ℚ(t)/ℤ`. `plan.json` 6.3 updated.

## F02 (P2) — applied

1.4 Check: "on a DM stack `G_x` is finite étale" → étale (unramified inertia; a scheme because
DM ⇒ quasi-DM), finite when `I_𝒳 → 𝒳` is quasi-compact; witnesses `Bℤ` (étale, not finite) and
`B(ℤ/2)`. Same pattern fixed in the FunctionFieldArithmeticPartII consumer bullet. The `plan.json`
test is now `DM_etale_notFinite`.

## F03 (P2) — applied

Example 100.11.6: `Spec ℚ` → `Spec ℚ̄` in the Checks of 0.2, 3.1, 3.2, 4.4 and 4.5 and in the four
`plan.json` tests. The 0.2 Check defines `U`, `G` and the point, and says that no morphism
`Spec ℚ → X` exists; 3.1 and 3.2 give computed reasons (ideal not finitely generated, local
rings `ℚ̄`, core `[Spec ℚ̄/Spec ℚ̄]`).

## F04 (P2) — applied

`stack-morphism-calculus` → `stack-morphism-permanence`, `flat-lfp-open`, `inertia-of-presentations`
(which takes 101.5.7). `decent-algebraic-spaces` → itself plus `quasi-separated-space-schematic-locus`
and `reduced-scheme-residue-field-factorisation`. `spaces-over-fields` → `group-spaces-over-fields`
and `quasi-finite-over-fields`. Separation axioms now cite `IsDeligneMumford`. New:
`isomorphism-fpqc-local-spaces`. Also the Mathlib lemma `iff_locallyOfFiniteType`. All Needs lines
updated.

## F05 (P3) — applied

Convention 5 adds: AlgebraicModuliForArithmeticGeometry §8.3 (`FramedDeformation`) reframes through
`α ↦ α ∘ g`, a right action; the left action used here is its inverse `g ↦ (τ, α ∘ g⁻¹)`. 7.3
(README and the `plan.json` API `linear_equivariant`) cites this. The witness weights are unchanged.

## F06 (P3) — disputed

`VirtualFundamentalClasses` exists as a board package with a triaged target
(`packages/VirtualFundamentalClasses/target.md`, `reports/TARGET-VirtualFundamentalClasses.md`).
Its item 5 (target.md lines 57–58) computes `deg [𝒢_x] = [k(x):k]/|Aut(x̄)|` for the residual gerbe
of a closed point "from StackPointsAndResidualGerbes". Its Boundaries paragraph (lines 117–119)
leaves residual gerbes to this roadmap. The consumer is real and the bullet stays. Its wording now
matches that target: residue fields and automorphism groups, through 1.3, 4.2, 4.5 and 5.3.
EquivariantIntersectionTheory and GroupSchemesOverABase already carry the names used in their pull
requests.

## F07 (P3) — applied

Convention 9, the §1.22 contract, the Scope "Imported" list, 7.2 and the `plan.json` supplier
summary now derive `QCoh(BG) ≃ Rep(G)` from *QCoh.presentationEquiv* for `BG = [Spec k/G]`.
Descent data along `G ⇉ Spec k` are exactly `O(G)`-comodule structures. `test_BG_representations`
is mentioned only as the supplier's Check of this instance.

## Details per finding

- **F01.** Verified: for `X = Spec ℚ(t)/ℤ` the residual gerbe and its base are `X`, so the identity
  is a section, but a representative `Spec k → X` that is an isomorphism would make `X` a scheme,
  contradicting 3.4. For decent `𝒳`, a section `Spec κ(x) → 𝒵_x` composed with the monomorphism
  `𝒵_x → 𝒳` is a representative over `κ(x)` whose map to the base is `id`. The `plan.json`
  changes: statement, hypotheses, `neutral_iff`, new test `neutral_needs_decent`, prerequisites
  +3.4, +5.3.
- **F02.** The README's own worked example (`Bℤ`) contradicted the old Check. `Spec k → Bℤ` is
  étale (base change along a torsor `P → T` is `P → T`), so `Bℤ` is DM.
- **F03.** The cached text lost its overlines (stacks-06ML line 1243 reads
  `Spec(Q)×Spec(Q) Spec(Q)`). Every residue field of `U = Spec(ℚ̄ ⊗_ℚ ℚ̄)` is `ℚ̄`, and `X → Spec ℚ̄`
  through the first factor means a map `Spec ℚ → X` would need a ring map `ℚ̄ → ℚ`.
- **F04.** The split showed two needs that no gap covered:
  - 1.3 needs fpqc descent of isomorphisms of spaces along field extensions (Descent on Spaces
    74.11.15, cited at stacks-06RD lines 1714–1715). That is now `gap:isomorphism-fpqc-local-spaces`.
  - 3.2, 4.1 and 4.2 need "locally of finite type over a field implies locally of finite
    presentation". They now cite Mathlib
    `AlgebraicGeometry.LocallyOfFinitePresentation.iff_locallyOfFiniteType` (`Noetherian.lean:271`)
    with §1.8 `Spaces.EtaleLocal`.

  I read Morphisms 29.59.1–2 (stacks-morphisms-schemes lines 7102–7125, newly fetched). 29.59.1
  needs no hypothesis on the target, so the old "locally Noetherian or quasi-compact point" wording
  was wrong; the new gap states the lemma correctly. Every target's `*Needs:*`, every Layer
  Dependencies line, the `plan.json` prerequisites and `neededBy` all agree; the consistency script
  is below.
- **F05.** At its open head, AlgebraicModuliForArithmeticGeometry §8.3 says "The new frame is
  `α∘g`" (frame `α : x₀ ≅ y|_k`), so it is a right action. The convention is the reviewer's
  computation, recomputed in the table below.
- **F07.** On main, SchemeAndStackFoundations §1.22 has `test_BG_representations` under
  **Checks**, and *QCoh.presentationEquiv* (Proposition 96.14.3) in its API.

## Checks run

**Dependency gate** (after all edits):

```
candidate: StackPointsAndResidualGerbes is not in the merge order yet; checked as if placed after AlgebraicModuliForArithmeticGeometry (the intake inserts it when its design is accepted)
depcheck: 240 roadmaps, 2369 edges, 0 problem(s)
```

No UPWARD or CYCLE line.

**Citation resolver** (`roadmaps resolve` on the edited README): no cross-roadmap citation and no Lean
name found nowhere. The new Mathlib name was opened at the pin:
`Mathlib/AlgebraicGeometry/Noetherian.lean:271`, inside `namespace AlgebraicGeometry`, with
`[IsLocallyNoetherian Y]`.

**Consistency script**: for each of the 38 targets, the gap slugs in its README subsection equal the
`gap:` prerequisites in `plan.json`. The 15 README "must provide" lines and the 15 `plan.json` gaps
have the same slugs. `plan.json` parses and `sources.toml` parses (14 sources).

**Elaboration / `#check` pass**: not applicable. The design stage has no `Suggested.lean` and this
job may not create one.

**Gate failures listed in the brief**: none were listed.

## Adversarial pass (statements added or changed)

| Statement | Instances tried | Values computed | Result |
|---|---|---|---|
| 6.3 "if": representative with `Spec k ≅ 𝒵^♭` ⇒ neutral | `𝔸¹_ℚ` at `t²+1`; `B(ℤ/2)_ℝ` | `κ = ℚ(i)`, `Spec ℚ(i) → 𝒵 = Spec ℚ(i)` is `id`; trivial torsor over `ℝ` gives a section of `B(ℤ/2) → Spec ℝ` | holds |
| 6.3 decent "iff" | `[Spec ℂ/(ℤ/4)]_ℝ`; `Bμ_p/𝔽_p(t)`; `U/G` of Ex. 100.11.6 (not decent) | no real object (lifts `Hom(ℤ/2,ℤ/4)={0,2} ↦ 0`) and no representative with `ℝ ≅ k`: both sides false; trivial torsor: both true; `U/G`: base `Spec ℚ̄`, section = representative `Spec ℚ̄`: both true | holds |
| 6.3 converse without decency | `Spec ℚ(t)/ℤ` | base `X`, identity section exists; a representative iso onto `X` would make `X` a scheme, but `⊔_ℤ Spec ℚ(t) = Spec(ℚ(t)⊗_F ℚ(t))` would be finite: contradiction | fails, now a Check |
| 6.3 `BG_x → 𝒵_x` equivalence iff `Spec k → 𝒵^♭` iso | `Spec ℚ(t)/ℤ`, representative `Spec ℚ(t)` | `𝒵 ×_𝒵^♭ Spec ℚ(t) = Spec ℚ(t) = B1`, `Spec ℚ(t) → X` neither equivalence nor iso | consistent |
| 1.4 Check: DM ⇒ `G_x` étale | `Bℤ/k`; `B(ℤ/2)/k`; `Bμ_p/𝔽_p`; `B𝔾_m` | `ℤ_k = ⊔_ℤ Spec k` étale, not qc; `(ℤ/2)_k` finite étale; `μ_p` not étale, `Bμ_p` not DM; `𝔾_m` not unramified, not DM | holds; "finite" needs qc inertia |
| 1.4 Check: `Bℤ` is DM | atlas `Spec k → Bℤ` | base change along a `ℤ`-torsor `P → T` is `P → T`, étale | holds |
| Ex. 100.11.6 mono `Spec ℚ̄ → X` | `U = Spec(ℚ̄⊗_ℚℚ̄)`, `G` free on `|U| ≅ G` | `Spec ℚ̄ ×_X Spec ℚ̄ = ⊔_g (pt ×_U g·pt) = Spec ℚ̄`; `U ×_X Spec ℚ̄ = G × Spec ℚ̄` discrete, `|U|` profinite | mono, not iso |
| Ex. 100.11.6 flat, lft, not lfp | ideal of the diagonal point | `(a⊗1 − 1⊗a)` not f.g. (point not open in `|U|`); local rings of `U` are `ℚ̄` (absolutely flat), so flat | holds |
| Ex. 100.11.6 no `Spec ℚ → X` | `X → Spec ℚ̄` (first factor, `G`-invariant) | would give `ℚ̄ → ℚ` | none exists |
| Ex. 100.11.6 in 3.2, 4.5 | core; closed immersion | `[Spec ℚ̄/R]`, `R = Spec ℚ̄`; a closed immersion would equal `X` by 0.5, but it is not an iso | holds |
| Conv. 5 vs §8.3 | `[𝔸¹/𝔾_m]`, `x = 0` | class `a/μ`; left `α∘g⁻¹`: `a/μ ↦ g·a/μ` (weight 1); §8.3 `α∘g`: weight −1 | inverse, as stated |
| Conv. 9 / 7.2 via presentationEquiv | `G = 1`; `G = 𝔾_m`; `G = μ_p` | descent data = `Vect`; `ℤ`-gradings; `ℤ/p`-gradings (comodules of `k[λ^{±1}]`, `k[λ]/(λ^p−1)`); `[𝔸¹/𝔾_m]`: `ℐ/ℐ² = k·t` weight −1, `N_0` weight 1 | consistent |
| Mathlib lft ⇒ lfp (3.2, 4.1, 4.2) | `Spec ℚ̄ → U` (non-Noetherian target); `Spec k[x₁,x₂,…] → Spec k` | lft, not lfp: the hypothesis "locally Noetherian target" is needed; not lft: no claim | holds |
| gap:flat-lfp-open | `Spec k → B𝔾_m`; `{0} → 𝔸¹` | point → point, open; not flat: image `{0}` not open | hypothesis needed |
| gap:inertia-of-presentations | `[𝔸¹/𝔾_m]` with atlas `𝔸¹`; `Bℤ` | stabilizer fibre `𝔾_m` at `0`, `1` elsewhere `= 𝔸¹ ×_𝒳 I`; `ℤ_k` lft, not qc | holds |
| gap:stack-separation-axioms | `Bμ_p`; `B𝔾_m`; `Spec k → B𝔾_m` | quasi-DM not DM; not quasi-DM; representable ⇒ diagonal mono ⇒ DM morphism | holds |
| gap:decent-algebraic-spaces | `𝔸¹_ℚ/ℤ`; `Spec ℚ(t)/ℤ` | neither qs nor locally separated (the diagonal's image, infinitely many parallel lines in `𝔸²`, is not locally closed); not decent | consistent |
| gap:reduced-scheme-residue-field-factorisation | `id : Spec k[ε]`; `Spec k[t]_(t) → 𝔸¹`, `E = {η, 0}` | nonreduced, no factorisation through `Spec k`; `η ⇝ 0`, connected source does not factor through `Spec k(t) ⊔ Spec k` | both hypotheses needed |
| gap:group-spaces-over-fields | `𝔸¹_k/ℤ` (char 0) | not qs, not locally separated, not lqf; not a scheme | consistent |
| gap:quasi-finite-over-fields | `Spec k(t) → 𝔸¹_k → 𝔸¹_k` | mono then `id` (lqf), composite not lqf: the target must be a union of fields | hypothesis needed |
| gap:isomorphism-fpqc-local-spaces | `Spec ℂ → Spec ℝ` base-changed to `ℂ` | `Spec(ℂ⊗ℂ) → Spec ℂ` not iso, and the original is not iso | consistent |
| Generic flatness locator | Morphisms ToC and text | Proposition 29.28.2 "Generic flatness, reduced case" at stacks-morphisms-schemes line 2319 | 29.27.2 corrected |

## Other changes and notes for the maintainer

- **Generic flatness locator.** `gap:generic-flatness-spaces` (README and `plan.json`) cited
  "Morphisms, Proposition 29.27.2". Generic flatness is Section 29.28 and the reduced case is
  Proposition 29.28.2 (stacks-morphisms-schemes line 2319), so I corrected it. This is the only edit
  outside the findings.
- **New source.** `stacks-morphisms-schemes` (Stacks, Morphisms of Schemes) was fetched through the
  sources service, recorded in `sources.toml` (certified, open-repository) and added to References.
  Nothing was requested in `needs-references.toml`.
- **SchemeAndStackFoundations obligations.** That roadmap now has 13 precise gaps from this one
  instead of 7 compound ones. New slugs: `stack-morphism-permanence`, `flat-lfp-open`,
  `inertia-of-presentations`, `quasi-separated-space-schematic-locus`,
  `reduced-scheme-residue-field-factorisation`, `group-spaces-over-fields`,
  `quasi-finite-over-fields` and `isomorphism-fpqc-local-spaces`. `stack-morphism-calculus` and
  `spaces-over-fields` are gone. §1.2 is newly named as a section for a gap and was added to the
  `plan.json` supplier sections. No other roadmap cites these slugs.
- **No moved ids.** No section, target or Lean name that other roadmaps could cite changed.
- **Ownership.** `roadmaps grep` on main and the 466 open heads found no roadmap stating the
  objects of the new gaps (openness of flat lfp maps of stacks, inertia locally of finite type,
  fpqc locality of isomorphisms of spaces, group spaces over fields being schemes, dense open
  subschemes of quasi-separated spaces, the residue-field factorisation). SchemeAndStackFoundations
  stays the supplier.
- **FunctionFieldArithmeticPartII.** Its `gap:zero-dimensional-dm-residual-gerbes` leaves out the
  quasi-compact diagonal hypothesis, which `Bℤ` shows to be necessary. That is a note for that
  roadmap; this README now says so in its consumer bullet.
- **Untrusted text.** Nothing in the review, the supplier READMEs or the fetched text asked for any
  action.
