# FIX-PKG-ModularityAndLanglandsExtensionsPartII~2

Repair round for the findings of `REV-PKG-ModularityAndLanglandsExtensionsPartII` (nine findings, all P3).
Every supplier citation was re-resolved at the supplier's current head before editing:
PotentialAutomorphyInfrastructurePartII (submission pull request head `6b4e6a1`), AdicSpacesPartIIPartII
(head `c8f36e6`, folder `packages/AdicSpacesPartV`), OrdinaryAutomorphicFormsAndModularityLifting,
DeformationAndDerivedPatchingAlgebra, PotentialAutomorphyInfrastructure and PadicFamilies (open heads
through `roadmaps show`).

## REV-PKG-ModularityAndLanglandsExtensionsPartII/F01 (P3) — applied

Verified: the supplier's head README has no string `PL.`; its layers are `## Layer 0` … `## Layer 10`
with Layer 2 "Schur residual representations and the determinant subring" split out of the design's
PL.6, so the design's PL.0–PL.9 are the head's Layers 0, 1, 3, 4, 5, 6, 2+7, 8, 9, 10.

Changed (190 occurrences): every `PL.k` → the head's layer (`PL.6` → Layer 2 for Schur
representations and the subring `P_𝒮`, Layer 7 otherwise; ranges and Dependencies lists rewritten as
`Layers …`); the supplier-contract block rewritten with the head's titles and section numbers; the two
gap contracts now say "§8.20 (Layer 8), which there keeps the strong-primitivity hypotheses of §8.7"
and "Layer 3"; `plan.json` gaps `section` → `"§8.20 (Layer 8)"`, `"Layer 3"` and their `needs`
strings relabelled.

Drifted titles replaced throughout by the head's (old → new): "Soluble base change and descent of
automorphy" → "… of polarized automorphy" (§0.9, which covers CM and totally real `M`);
"Connecting and strongly connecting local lifts" → "Strong connection and component deformation
problems" (§1.1); "Properties of connection and strong connection" → "Properties of strong
connection; Choi's lemma and the filtration lemma" (§1.2); "Generic Weil–Deligne representations" →
"Generic Galois representations" (§9.1); "Primitive representations" → "Weakly and strongly
primitive representations" (§7.1); the three "… with source primitivity" titles → "… with weak
primitivity" (§§8.17–8.19); "Hecke algebras of definite unitary groups and their maximal ideals" →
"Hecke algebras of definite unitary groups" (§3.3); "The `𝒢_n`-valued Galois representation over the
localized Hecke algebra" → "Residual and `𝒢_n`-valued Galois representations of Hecke maximal
ideals" (§3.7); "Exactness and group-ring freeness at `l`-torsion-free level" → "… at level without
`l`-torsion" (§3.4); "Iwahori levels at `l`, the `U_p`-operators …" → "… the `U`-operators …" (§3.8);
"Global lifts with prescribed local components (Bellovin–Gee, Schur form)" → "… (Schur form)"
(§8.15); "Weak-primitive generic `R=T` theorem" → "The weak-primitive generic `R = T` theorem"
(§7.20); "conjugate-norm" → "conjugate norm" (§0.11); backticks added to `λ`, `χ_v`, `ι` as at the
head.

Two cited titles have no target at the head and were re-sourced rather than relabelled:

- "Soluble and cyclic CM extensions with prescribed local behaviour": the head's Layer 0 imports this
  from PotentialAutomorphyInfrastructure §2.5 ("Auxiliary soluble and cyclic extensions"), earlier in
  the merge order. A `### From TauCetiRoadmap.PotentialAutomorphyInfrastructure` contract was added,
  and §§11.1, 12.1, 14.1 (`*Needs:*` and prose) and the Scope paragraph now cite §2.5; the Layer 11,
  12 and 14 Dependencies list it.
- "Connectedness dimension and arithmetic rank" is DeformationAndDerivedPatchingAlgebra §6.6 at that
  roadmap's head (the exact title); the bound used by nt26 Proposition 3.10 is the one
  PotentialAutomorphyInfrastructurePartII §8.5 derives from the local and global presentations. §11.7
  now cites DeformationAndDerivedPatchingAlgebra §6.6 with that remark; §6.6 was added to the
  DeformationAndDerivedPatchingAlgebra contract and to the Layer 11 Dependencies.

Pattern: the Scope summary (lines 75–82) and the Conventions bullet on "primitive" used the same
labels and were relabelled too.

## REV-PKG-ModularityAndLanglandsExtensionsPartII/F02 (P3) — applied

Verified: the supplier's head carries `packages/AdicSpacesPartV/README.md` with `## Layer 0` …
`## Layer 6`; "Normalization, global components and connected complements" is Layer 1 (§§1.1–1.8);
no `RZ.` string, no statement on components under extension of the ground field.

Changed: all twelve `AdicSpacesPartIIPartII RZ.1` → `AdicSpacesPartIIPartII Layer 1` (Scope, contract,
gap contract, §§0.1, 1.4, 2.4 and the Layer 0–2 Dependencies); `plan.json` gap
`components-under-field-extension` `section` → `"Layer 1"` and its `needs` relabelled. The merge-order
name `AdicSpacesPartIIPartII` is kept, as the brief requires; see the maintainer notes.

## REV-PKG-ModularityAndLanglandsExtensionsPartII/F03 (P3) — applied

Verified: at the supplier's open head Layer 2 has §§2.1, 2.9, 2.10, 2.11, 2.12 only, and its Scope
says it has no permissible-ideal target (ClassicalSerreModularity owns that theory).

Changed: the four `§2.6` citations deleted. The supplier contract keeps §2.11 only and says Hida's
control theorem is taken from PadicFamilies §5.8 ("Hida's control theorem for nearly ordinary
Hilbert forms" at its head, already in the PadicFamilies contract). §10.2's proof sketch now
attributes the control theorem to PadicFamilies §5.8 and the slope-`(0, 1)` dimension count to the
declared gap on GL2ModularityLifting Layer 3; its `*Needs:*` and the Layer 10 Dependencies cite
PadicFamilies §5.8 in place of §2.6. No Hida finiteness statement was needed beyond these.

## REV-PKG-ModularityAndLanglandsExtensionsPartII/F04 (P3) — applied

Verified: ls20 line 386 opens "4. Reducibility of parabolic induction" (Silberger's recollection);
the depth-zero computation is "8. Synthesis" (ls20 line 1132, display (8.1) at line 1145), and nt21
line 746 says §8 of Lust–Stevens computes the reducibility points.

Changed: "ls20 §4" → "ls20 §8" in the gap contract (`explicit-tempered-unitary-packets`) and in §4.4's
proof sketch; `sources.toml` entry `ls20` `locator = "§8"`. The plan's `needs` already said §8.

## REV-PKG-ModularityAndLanglandsExtensionsPartII/F05 (P3) — applied

Verified: nt21b lines 322–326 use bbm82 Théorème 3.1.1 to embed the generic fibre of a finite flat
group scheme into a lattice of a crystalline representation with Hodge–Tate weights in `[0, 1]`
(Raynaud's embedding), and the README's own contract cites the supplier's §R07.1.40 under that name.

Changed (README gap contract and the same `needs` sentence in `plan.json`): "the generic-fibre
comparison of Berthelot–Breen–Messing (bbm82 Théorème 3.1.1) in the form used by …" → "Raynaud's
embedding theorem (bbm82 Théorème 3.1.1; §R07.1.40: a finite flat group scheme over the ring of
integers embeds in an abelian scheme) applied as in Newton–Thorne II Lemma 2.2 (nt21b p. 7) and …".
The mathematical content of the gap is unchanged.

## REV-PKG-ModularityAndLanglandsExtensionsPartII/F06 (P3) — applied

Verified: nt21 line 2344–2345 defines `𝒯_0 = Hom(ℚ_p^×/ℤ_p^× × ℚ_p^×, 𝔾_m)`, and lines 2370–2377
restrict `RA_0` to refinements with `χ_{0,1}` unramified. Computed: for `z = (π_0, χ_{0,1} ⊗ χ_{0,2})`
the twist of `τ²` is `ψψ′` with `(ψψ′)_p|_{ℤ_p^×} = χ_{0,2}^{−1} · (χ_{0,1}χ_{0,2}^{−1})^{−1} = χ_{0,1}^{−1}`,
trivial exactly when `χ_{0,1}` is unramified (a finite-order Hecke character of `ℚ` unramified outside
`p` is determined by its restriction to `ℤ_p^×`).

Changed: the definition of `Z_0^{pc}` in §2.1 now requires `χ_{0,1}` unramified and says every
classical point of `ℰ_0` has this (the refinement space `𝒯_0`, nt21 §2.31, p. 48); a Check records the
computation above as the negative control. PadicFamilies §2.10 is cited for the eigencurve as
before; the description of `𝒯_0` is attributed to nt21, since §2.10 at its head does not describe the
refinement space in that form.

## REV-PKG-ModularityAndLanglandsExtensionsPartII/F07 (P3) — applied

Verified: nt26 lines 2037–2040 put `g_2 = diag(x, x^{−1})` in the symmetric-power slot with `x` of
order `> 2(r − 1)` and `g_1 = diag(y, y^{−1})` in the rank-two slot with `y` avoiding `±x^i`,
`i = r − 1, …, 1 − r`: `4r − 2` elements. Computed: eigenvalues `y^{±1} x^{r−1−2j}`; `y x^a = y x^b`
forces `a = b` (`|a − b| ≤ 2r − 2 <` order of `x`), `y x^a = y^{−1} x^b` forces `y = ±x^{(b−a)/2}`.
With the slots exchanged the stated choices fail: `r = 4`, `q = 43`, `x` of order `7`, `y` of order
`3` avoids `±x^i` (orders dividing `7` or `14`) yet `x y³ = x y^{−3}`.

Changed: §13.4's proof sketch now names the element `(diag(y, y^{−1}), diag(x, x^{−1}))`, the slots and
the `4r − 2` forbidden elements `±x^i`, `|i| ≤ r − 1`; the Check is restated with the eigenvalues
`y^{±1} x^{r−1−2j}` and the distinctness computation, and a second Check records the `r = 4`, `q = 43`
negative control. §12.7's hypothesis (6) itself was unchanged (it asks for an element with `2r`
distinct eigenvalues, without naming slots).

## REV-PKG-ModularityAndLanglandsExtensionsPartII/F08 (P3) — applied

Verified at the pin: `HeckeRing.GL2.Newform.satakeParameters` exists; no declaration in
`TauCeti/NumberTheory/ModularForms` concerns complex multiplication of a newform (the only CM hits at
the pin are `NumberField/ComplexConjugation/CMField.lean` and complex-analysis files). The partial
Euler product over `p ∤ N` differs from the full `L(s, Sym^n f)` by finitely many inverse polynomials
in `p^{−s}`, so its entireness is the statable consequence.

Changed (`Suggested.lean` docstring only): the §14.3 bullet now says the theorem lacks a CM predicate
on newforms, and that with one the partial Euler product over good primes, for weight `k ≥ 2`, would
be statable from `satakeParameters` alone. No declaration was added: a CM predicate is a definition
this round was not asked for, and the one sorried theorem stays the level-one statement.

## REV-PKG-ModularityAndLanglandsExtensionsPartII/F09 (P3) — applied

`sources.toml`: `ls20` `locator = "§8"` (with F04). `con99` left as recorded; its `cited_for` names
the gap, which now points at Layer 1 of the supplier in the README and plan.

## Checks

- **Elaboration.** `lake env lean packages/ModularityAndLanglandsExtensionsPartII/Suggested.lean`
  from the content checkout, after the docstring edit and the header repair below: exit 0, output
  exactly `Suggested.lean:80:8: warning: declaration uses `sorry`` (the line moved from 73 to 80
  with the longer docstring and the four header lines). Imports unchanged in substance:
  `Mathlib` and `TauCeti.NumberTheory.ModularForms.Newforms.Satake`.
- **Signatures.** A scratch file with `#check @symPowerEulerFactor` and
  `#check @symPowerEulerProduct_levelOne_entire` elaborated:
  `symPowerEulerFactor : ℕ → ℂ → ℂ → ℂ → ℂ`, and the theorem with binders `{k : ℤ} (f : Newform 1 k)
  (n : ℕ) (hn : 1 ≤ n) (α β : ℕ → ℂ) (hαβ : ∀ p, p.Prime → f.satakeParameters p = {α p, β p})` and
  conclusion `∃ L, Differentiable ℂ L ∧ ∀ s, n(k − 1)/2 + 1 < s.re → HasProd (fun p : Nat.Primes =>
  (symPowerEulerFactor n (α p) (β p) (p^{−s}))⁻¹) (L s)`, as the README's §14.4 states. No
  declaration changed; nothing lost a binder (there is no `variable` block).
- **Direction.** `gate --depcheck … --movable`: `depcheck: 236 roadmaps, 2363 edges, 0 problem(s)`;
  no UPWARD or CYCLE line. PotentialAutomorphyInfrastructure and DeformationAndDerivedPatchingAlgebra
  (newly cited by section) are earlier in the merge order.
- **Citations.** `roadmaps resolve` lists only `AdicSpacesPartIIPartII Layer 1` and
  `PotentialAutomorphyInfrastructurePartII Layer 7` as found nowhere: both are board packages whose
  submission pull requests the index does not carry (false positives; both resolved by hand at their
  heads as above).
- README: no `PL.` or `RZ.` string remains; 109 `*Needs:*` lines and 109 `**Checks.**` blocks as before;
  no new target, layer or Lean name.

## Worker repair: module header warning

The worker's check reported `imports `Mathlib` from package `mathlib`, which is designed for use
with the module system; consider adding `module``. Repaired in `Suggested.lean` only: the file now
opens with `module`, a blank line, `public import Mathlib` and
`public import TauCeti.NumberTheory.ModularForms.Newforms.Satake`, and `@[expose] public section`
precedes `namespace TauCetiRoadmap.ModularityAndLanglandsExtensionsPartII`. No declaration,
docstring, binder or README text changed; the two declarations and their elaborated types are as
recorded under Signatures. Elaboration after the repair: exit 0 with only the `sorry` warning at
line 80.

## Adversarial pass on the changed statements

| Statement | Instances tried | Values computed | Result | Change |
|---|---|---|---|---|
| §2.1 `τ² = 1` on `Z_0^{pc}` with `χ_{0,1}` unramified | `χ_{0,1}` unramified; `χ_{0,1}` ramified; `π_{0,p}` unramified | twist of `τ²` has `p`-component `χ_{0,1}^{−1}` on `ℤ_p^×`: trivial / nontrivial; unramified case: `ψ = 1`, twin exchanges `α, β` | true with the clause, false without | clause and Check added |
| §13.4 regular semisimple element | `r = 1`; `r = 2`; `r = 4, q = 43` swapped slots | `r = 1`: eigenvalues `y^{±1}`, distinct for `y ≠ ±1` (forbidden set `{±1}`, `2 = 4r − 2`); `r = 2`: `y^{±1}x^{±1}`, needs `y ≠ ±x^{±1}, ±1` (`6 = 4r − 2`) and `x² ≠ 1`; swapped: `x y³ = x y^{−3} = x` | the stated choices are right, the old Check's slots wrong | Check rewritten, negative control added |
| F05 gap sentence | nt21b Lemma 2.2 use | `A²` dual = generic fibre of a finite flat group scheme; embed, get `L ↠ A²` with HT weights `{0, 1}` | content unchanged by the relabelling | label only |
| Lean docstring, partial Euler product | `n = 0`; weight `1`; `p ∣ N` | `n = 0` gives `ζ^{(N)}(s)`, a pole; weight `1` non-CM forms have Artin `ρ` with `Sym^n ρ` reducible for large `n`, so `k ≥ 2` is required and stated; omitted factors are polynomials in `p^{−s}` | consequence correctly described | docstring only |
| §10.2 after removing §2.6 | the slope-`(0, 1)` count | still carried by `gap:unobstructed-auxiliary-prime-and-slope-count` on GL2ModularityLifting Layer 3; control theorem by PadicFamilies §5.8 | no input lost | citations only |

## For the maintainer

- The supplier AdicSpacesPartIIPartII is named `AdicSpacesPartV` in its submission pull request
  (folder `packages/AdicSpacesPartV`, title "rigid-analytic Zariski geometry, classical points and
  resolution, part II"); the merge order and this README use `AdicSpacesPartIIPartII`. The intake
  should reconcile the two names.
- `design/plan.json` still contains `PL.k` and `RZ.k` labels outside the top-level `gaps` list (in
  target `needs`/`neededBy` references such as `AdicSpacesPartIIPartII:RZ.1/irreducible-components`
  and one `requests` entry `PotentialAutomorphyInfrastructurePartII:PL.7`); the brief allows editing
  only the `gaps` list, so they were left. They are design-stage labels, not citations the README makes.
- Nothing another roadmap cites changed: no Lean name or section number of this roadmap moved.
- Ownership against open pull requests whose files the brief does not give was not checked beyond
  the index; this round added no construction, only citations.
- The one alternative to F08 worth a decision: a CM predicate on newforms (twist-invariance by a
  nontrivial quadratic character at almost all primes) is definable on the pinned `Newform` carrier,
  after which the general-level partial Euler product statement could join `Suggested.lean`. It was
  not added, since the finding asks for the docstring and the brief forbids widening the scope.
