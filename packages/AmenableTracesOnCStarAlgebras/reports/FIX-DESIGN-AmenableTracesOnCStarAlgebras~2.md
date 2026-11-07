# FIX-DESIGN-AmenableTracesOnCStarAlgebras~2: repairs for REV-DESIGN-AmenableTracesOnCStarAlgebras (round 2)

Six P3 findings; all six verified against the cited texts, the CStarAlgebras head and the pinned
Tau Ceti, and all six applied. Files edited: `packages/AmenableTracesOnCStarAlgebras/design/README.md`,
`packages/AmenableTracesOnCStarAlgebras/design/plan.json`, `packages/AmenableTracesOnCStarAlgebras/sources.toml`.
The design stage has no `Suggested.lean`, so no Lean statement changed and no `#check` pass was run.

## REV-DESIGN-AmenableTracesOnCStarAlgebras/F01 (P3) — applied

Verified: CStarAlgebras README at its head, §4.1, states Kadison–Schwarz for unital 2-positive maps
and, separately, the unitization of completely positive contractions; its `Suggested.lean` has
`schwarz (φ : D →CP E) (hφ : φ 1 = 1)`. No c.p.c. form is stated there.

Changed: the C4.1 contract bullet no longer claims "its c.p.c. form"; it lists `schwarz` and the
unital extension (u.c.p.) and says the c.p.c. form is derived in §2.1. §2.1's API gains the
derivation (apply `schwarz` to the u.c.p. extension `φ̃` on `Ã`, restrict to `A`) and a Check on
`φ = (1/2)·id : M_2 → M_2` with the non-contractive `2·id` as the negative control. §2.2 now cites
"the c.p.c. Kadison–Schwarz inequality of §2.1" and its *Needs:* line names §2.1 and C4.1
(`schwarz`, unital extension). Other C4.1 citations (§3.1, §3.2, §4.3, §4.6, §5.x) were checked:
they cite composition, the unital extension or the multiplicative domain, not a c.p.c. Schwarz form.

## REV-DESIGN-AmenableTracesOnCStarAlgebras/F02 (P3) — applied

Verified: CStarAlgebras head README §9.7 (C9.7), third Check: a positive unital extension operator
`C(K) → C(X)` for compact metrizable `X` (Dugundji). The contract list ended at "C8.4 and C9.1" and
the plan's supplier sections lacked C9.7.

Changed: a C9.7 bullet added to the "From TauCetiRoadmap.CStarAlgebras" contract (the extension
operator for a closed `K ⊆ X`, `X` compact metrizable, used only in a Check of §6.4), and "C9.7"
appended to `suppliers[0].sections` in the plan with a clause in its `what`.

## REV-DESIGN-AmenableTracesOnCStarAlgebras/F03 (P3) — applied

Verified: brown2006 line 357 and line 583 state the standing assumption "separable and unital";
Corollary 4.3.6 (line 1925) is stated under it and its proof (lines 1933–1936) goes through local
reflexivity and hyperfiniteness.

Changed: §5.4's citation now reads "stated there for separable unital `A`; the route below needs
no separability". The route itself is unchanged: nuclear embeddability (C7.1) and §4.4 (f) give a
nuclear `π_τ`; nuclear ⇒ weakly nuclear ⇒ injective (§5.1) ⇒ uniform amenable (§5.2); the
hyperfinite clause is kept for separable `A` only. No other section attaches "without
separability" to a source citation (grep for "separab" over the README).

## REV-DESIGN-AmenableTracesOnCStarAlgebras/F04 (P3) — applied

Verified: the manifest's `cited_for` lists used plan target ids (plan 3.10, 4.10, 5.6, 7.4 exist;
the README has §3.1–§3.5, §4.1–§4.6, §5.1–§5.4, §7.1–§7.3).

Changed: every `cited_for` now lists the README sections (`### k.n` headings) that cite the work,
recomputed by scanning the README: brown-ozawa2008 → 3.1, 3.2, 4.4; brown2006 → 1.1–1.7, 2.1–2.5,
3.1–3.5, 4.1–4.6, 5.1–5.4, 6.1–6.5, 7.1–7.3, 8.1–8.5; schafhauser2020 → 3.1, 3.4, 4.6, 8.5 (the
review's "§7.3" is not a citation site; its `C*_r(F₂)` remark is a Check of §8.5);
tikuisis-white-winter2017 → 1.1, 1.3, 1.5, 3.1, 8.1, 8.3 (was "3.2"; the citation is in §3.1);
kirchberg1993 → 5.4. connes1976, paulsen2002 and pedersen2018 were already correct (4.1, 2.2, 1.1).
A one-line comment at the head of the manifest records the convention.

## REV-DESIGN-AmenableTracesOnCStarAlgebras/F05 (P3) — applied

Verified at Tau Ceti `358314d4ab97483df4fc4cb8adcc02e74a8d9f5a`: `TauCeti/Analysis/Matrix/`
holds `Spectrum.lean` (line 49), `PosSemidef.lean` (line 52), `Sqrt.lean`, `LDL.lean`,
`GeometricMean.lean`, `HermitianSignature.lean`, `EuclideanLin.lean` over `[RCLike 𝕜]`, and
`Frobenius.lean` over `Matrix m n ℝ` (lines 47–49); `TauCeti/Analysis/CStarAlgebra/` holds only
`CharacterSpaceMeasure.lean` and `UnitaryCharacter.lean`. No file defines a normalized trace or a
2-norm on `CStarMatrix` (grep for `trace` finds only spectral and geometric-mean identities).

Changed: the "From Tau Ceti" paragraph now says the Frobenius inner product is over `ℝ`, the
Hermitian-spectrum and positive-semidefinite files are over `RCLike` fields, and none supplies the
normalized trace or the 2-norm on `CStarMatrix`. The conclusion (nothing consumed) is unchanged.

## REV-DESIGN-AmenableTracesOnCStarAlgebras/F06 (P3) — applied

Verified: the operator inequality `c*(a*a)c ≤ ‖c‖²a*a` is false (`a = e₁₁`, `c = e₁₂` in `M_2`
gives `e₂₂ ≤ e₁₁`), so the step must go through traciality.

Changed: §1.2 now reads `‖π_τ(a)ĉ‖² = τ(c*a*ac) = τ(acc*a*) ≤ ‖c‖²τ(aa*) = ‖c‖²τ(a*a)`, "by
traciality twice as above", matching the right-ideal argument two lines earlier. Searched the
README for the same pattern (`≤ ‖c‖²τ`, `≤ ‖b‖²τ`): the right-ideal line already used the tracial
form; no other occurrence.

## Adversarial pass on the changed and added statements

| Statement | Instances | Values computed | Result | Change |
|---|---|---|---|---|
| §2.1 c.p.c. Kadison–Schwarz via the unital extension | `φ = (1/2)·id : M_2 → M_2` | `φ̃(a + λ1) = a/2 + λ1`; on `M_2 ⊕ ℂ`, `(a', λ) ↦ φ(a') + λ(1 − φ(1)) = a'/2 + λ/2`, a sum of two c.p. maps, unital; `φ(a)*φ(a) = a*a/4 ≤ a*a/2 = φ(a*a)` | holds | Check added |
| §2.1 contraction hypothesis | `φ = 2·id`, `a = 1` | `φ(1)*φ(1) = 4`, `φ(1) = 2`; `4 ≤ 2` fails | hypothesis necessary | negative control added |
| §2.1 unital extension is c.p. for unital `A` | `A` unital, `φ` c.p.c. | `φ̃(a + λ1_Ã) = φ(a') + λ(1 − φ(1_A))` with `a' = a + λ1_A`; `1 − φ(1_A) ≥ 0` since `‖φ(1_A)‖ ≤ 1` | c.p. and unital | none (C4.1 supplies it) |
| §1.2 `N_τ = ker π_τ` | `(M_2, tr_2)`, `a = e₁₁`, `c = e₁₂` | `τ(c*a*ac) = tr_2(e₂₂) = 1/2`; `τ(acc*a*) = tr_2(e₁₁) = 1/2`; `‖c‖²τ(aa*) = 1/2` | equality, bound attained | wording only |
| §1.2 the operator form | same | `c*a*ac = e₂₂`, `‖c‖²a*a = e₁₁`, `e₂₂ ≤ e₁₁` false | operator form excluded | wording only |
| §5.4 without separability | `A = C*(F₂)` (separable, not exact): hypothesis fails, no claim; `A = ℓ^∞(ℕ)`, nonseparable, commutative hence nuclear and exact, `τ` a state of `ℓ^∞`: `M_τ` abelian, injective; `τ` amenable by §5.3 | consistent | none |
| §6.4 Check through C9.7 | `X = [0,1]`, `K = {0}` | the extension operator sends `f(0) ↦ f(0)·1`, positive, unital; `τ = δ_0` restricted to `C(K) = ℂ` is `id` | consistent with the theorem | citation only |

## Dependency check

Command: `tauceti-roadmap gate --candidate packages/AmenableTracesOnCStarAlgebras/design/README.md --only AmenableTracesOnCStarAlgebras` (with the board's merge order and content checkout). Output:

```
candidate: AmenableTracesOnCStarAlgebras is not in the merge order yet; checked as if placed after CStarClassification (the intake inserts it when its design is accepted)
note: supplier CStarAlgebras of AmenableTracesOnCStarAlgebras is not in the merge order; it must be inserted before AmenableTracesOnCStarAlgebras
depcheck: 236 roadmaps, 2184 edges, 0 problem(s)
```

No UPWARD or CYCLE line. `roadmaps resolve` on the README: no cross-roadmap citation and no Lean
name found nowhere.

## Ownership and sources

No new object is introduced: the c.p.c. Kadison–Schwarz bullet is a one-clause corollary of two
C4.1 facts, recorded in §2.1 because this roadmap is the one that uses it on nonunital domains.
Ownership against the open pull requests was not re-searched this round beyond the CStarAlgebras
head (the only roadmap the findings concern). No source was fetched; all locators were read in the
cached texts (brown2006 lines 357, 583, 1915–1936) and at the CStarAlgebras head. No
`needs-references.toml` entry was needed.

## For the maintainer

- The C9.7 contract makes CStarAlgebras C9.7 a cited section of this roadmap; it is used only in a
  Check of §6.4, not in any target's route.
- No name another roadmap cites changed.
- Gate failures listed in the brief: none.
