# FIX-PKG-ModpRepresentationsOfGL2OverLocalFields~2

Repair round for the review REV-PKG-ModpRepresentationsOfGL2OverLocalFields of the package
`packages/ModpRepresentationsOfGL2OverLocalFields` (five findings: one P1, one P2, three P3).
Files changed: `packages/ModpRepresentationsOfGL2OverLocalFields/README.md` and
`packages/ModpRepresentationsOfGL2OverLocalFields/sources.toml`. `Suggested.lean`,
`metadata.toml` and `design/plan.json` are unchanged (no finding touches a Lean statement and no
new supplier gap is needed).

## REV-PKG-ModpRepresentationsOfGL2OverLocalFields/F01 (P1) — applied

Verified: VIGNERAS11 line 827–834 (Proposition 9) claims `Δ_V(V₀) ⊇ V₀^{I₁}` for every generating
`V₀` of a smooth `V`, with the one-line proof at line 833; for `V = c-Ind_{KZ}^G V₀` the two cell
spans have disjoint supports (VIGNERAS11 line 808, Lemme 11; HU12 line 1039), so `Δ = 0` while
`[1, V₀^{I₁}] ≠ 0`. HU12 line 1167 (Corollaire 3.9) is the admissible statement, for `σ` a weight.
The same refutation hits VIGNERAS11 line 835 (Proposition 10, `Δ ≠ 0` for every smooth torsion
`V`, category defined at lines 33–34 as all torsion representations, proof via Proposition 9), so
the README's "nonzero when `V ≠ 0`" was false too (its own first Check gives `Δ = 0`, `V ≠ 0`).

Changed in §0.8: statement sentence → the direct-sum decomposition and `IZ`-, `w`-stability keep
Vignéras (Lemme 11, Proposition 9); containment `V^{I₁} ⊆ Δ(σ,V)` and `Δ ≠ 0` are now stated for
`σ` a Serre weight and `V` a nonzero admissible quotient (HU12, Corollaire 3.9), with a sentence
saying Propositions 9–10 need admissibility; API bullet 2 → the admissible form; first Check →
negative control (`q = id`: `Δ = 0`, `V^{I₁} ⊇ [1, W^{I₁}] ≠ 0`, `c-Ind` not admissible).
Pattern: §2.3's route now says the irreducible subrepresentation is admissible and cites HU12
Proposition 3.30(i) for the injection; Layer 0 Dependencies and §0.8 *Needs:* add FFG R07.5.15
(Serre weights). The reviewer's "keep Proposition 10 for `Δ ≠ 0` when `V ≠ 0`, which is correct"
is not applied: Proposition 10 is refuted by the same instance (applied differently on that
clause). `sources.toml`: VIGNERAS11 locator adds Lemme 11 and the version note records the defect;
HU12 locator adds Corollary 3.9 and Proposition 3.30.

## REV-PKG-ModpRepresentationsOfGL2OverLocalFields/F02 (P2) — applied

Verified: EMERTON2 line 1253–1255 sets `G = GL₂(ℚ_p)` for §4 and Theorem 4.2.12 (line 1497) is
stated there; CDN23 line 891 justifies 1.30(b) by that theorem alone; Remark 3.7.3 (line 1179)
gives `R¹Ord ↪ H¹Ord`; the Hecke action on `H^•(N₀, −)` is conjugation followed by corestriction
(line 1078). I recomputed the reviewer's route: on `H¹(N₀, k) = Hom(𝒪_F/p, k)` the transfer of the
abelian group `N₀ ≅ 𝒪_F` to the index-`q` subgroup is multiplication by `q`, so the Hecke operator
of `diag(ϖ,1)` is precomposition with `q/ϖ = ϖ^{ef−1}u`: for `ℚ_p` the identity (matching EMERTON2
4.2.12(3), `H¹Ord_P(1) = 1 ⊗ 1`), zero for `ℚ_{p²}`, square-zero nonzero for ramified quadratic.
The `N₀`-cohomology step uses `Coind_1^{N₀} U` acyclic, which is Tau Ceti
`TauCeti.ContCohomology.coindAcyclic` (`TauCeti/RepresentationTheory/Homological/ContCohomology/Coinduced/Acyclic.lean`,
line 328, compact `G`, every `n > 0`) at the pin.

Changed in §2.2: the route via EMERTON2 Theorem 4.2.12 → two stated inputs for every `F`
(`H^i(N₀, Ind_{B̄}^G U) ≅ H^i(N₀, U^w)` and `H^i(N₀, St ⊗ χ∘det) = 0` for `i ≥ 1`, Bruhat-cell
proof with *smooth-induction*, *mackey-filtration* with `Q = B` and `coindAcyclic`; the Hecke
operator on `H¹(N₀, χ∘det)` as `χ(det t)·(q/ϖ)^*`, nilpotent iff `F ≠ ℚ_p`), then the three
vanishings and `Ord_B(St ⊗ χ∘det) ≅ χ ⊗ χ`; a sentence records that CDN23's citation is a
`GL₂(ℚ_p)` statement. Checks: new Hecke-value Check (`ℚ_p`, `ℚ_{p²}`, ramified quadratic); the
`ℚ_p` Check now speaks of `H¹Ord_B(1)` (what EMERTON2 states) rather than `R¹Ord_B(1)`, whose
nonvanishing would need the Emerton–Paškūnas equivalence, not cached. *Needs:* adds PAI §3.12,
SR *smooth-induction*, *mackey-filtration*, Tau Ceti `coindAcyclic`; Layer 2 Dependencies, the
Scope bullet and the Tau Ceti contract updated accordingly. `sources.toml`: EMERTON2 locator adds
Definition 3.3.1 and Proposition 3.5.6 with a version note; CDN23 gets a version note on 1.30(b).

## REV-PKG-ModpRepresentationsOfGL2OverLocalFields/F03 (P3) — applied

Verified at the PLL head (#1312, 2616 README lines, 164 Lean lines): `torsionDual` occurs nowhere;
`SerreWeight`, `compactInduction`, `heckeOperatorT`, `endEquivPolynomial`,
`compactInduction_free` occur only in PLL's downstream-consumer table (line 2435), attributing
them to FFG R07.5.15; FFG (#879) declares them at R07.5.15, lines 8244–8247, for every `F`
including `ℚ_p`. Changed: Scope bullet and PLL §0.3 contract → "the coefficient-linear torsion
dual `Hom_𝒪(M, L/𝒪)`" without a Lean name; PLL §2.7 contract → classification, admissibility,
finite presentation and Galois descent only, with the weights and Hecke operator attributed to
FFG; FFG contract and Scope bullet carry the five names. `roadmaps resolve` now lists no Lean name.

## REV-PKG-ModpRepresentationsOfGL2OverLocalFields/F04 (P3) — applied

Verified at the pinned Tau Ceti: `TauCeti/Algebra/Module/ProjectiveCover/Existence.lean` declares
`exists_isProjectiveCover_comp_subtype` (line 94), `exists_isProjectiveCover` (line 182) and
`exists_isProjectiveCover_of_finite` (line 195: `K` Artinian, `A` a ring with `[Module K A]
[IsScalarTower K A A] [Module.Finite K A]`, every `A`-module `V` has a projective cover); no
`finiteDimensional` name. Changed: the six occurrences (Scope, Tau Ceti contract, Layer 5
header, §5.3, §5.5, §8.4) → `TauCeti.exists_isProjectiveCover_of_finite`; the contract states its
hypotheses and the instance `K = k`, `A = k[GL₂(k_F)]`.

## REV-PKG-ModpRepresentationsOfGL2OverLocalFields/F05 (P3) — applied

All four verified: SHOTTON20 line 483 (`G′ = SL₂(D)`), 502 (Theorem 5.1 for `G′`), 506
(Corollary 5.2 for `GL₂(D)`), 198 (Lemma 2.8), CDN23 line 471 (Remarque 1.4(ii)); PAI (#1081)
§3.7 line 1270 is `LocalOrdinaryParts` and §3.12 line 1322 "Derived ordinary comparison"; NEI
(#1307) F.1 line 436 defines `iwasawaGrade` and `iwasawa_dimension_finiteIndex` and says canonical
dimension is §0.11 (line 501, with `−∞` on zero); DDPA (#1034) §3.4 line 627 has no
Cohen–Macaulay clause and line 13 assigns Cohen–Macaulay to SchemeAndStackFoundations §0.17 (on
main, line 1138, with `IsCohenMacaulay.polynomial` and `IsCohenMacaulay.of_regularSequence`).
Changed: §0.5 → "Theorem 4.5, Corollary 5.2 and Lemma 2.8; CDN23, Proposition 1.3 and Remarque
1.4(ii)", Theorem 5.1 moved to the `SL₂(ℚ_p)` example; Scope, PAI contract, §2.2 and Layer 2
Dependencies → §3.12 for the derived version; NEI contract → canonical dimension under
§§0.10–0.11, §4.1 → grade from F.1 and canonical dimension from §0.11; DDPA bullet and contract →
complete intersections only, new SchemeAndStackFoundations §0.17 contract, §4.5 *Needs:*, API
bullet and Layer 4 Dependencies cite it for Cohen–Macaulayness.

## Checks

Elaboration, run from the content checkout:

```
lake env lean packages/ModpRepresentationsOfGL2OverLocalFields/Suggested.lean
Suggested.lean:99:8: warning: declaration uses `sorry`
Suggested.lean:116:8: warning: declaration uses `sorry`
Suggested.lean:128:8: warning: declaration uses `sorry`
Suggested.lean:146:8: warning: declaration uses `sorry`
Suggested.lean:161:8: warning: declaration uses `sorry`
Suggested.lean:175:8: warning: declaration uses `sorry`
exit 0
```

`#check @name` pass: a scratch copy of `Suggested.lean` with `#check` for all 11 declarations
elaborated with exit 0 and printed all 11 types; the file is byte-identical to the reviewed head,
so the types are those of the worker's `signatures.md`, which match the README statements of
§§0.1, 0.3, 0.5, 1.3, 1.5, 1.6, 2.4 (no section binder lost). Nothing changed.

Dependency check:

```
depcheck: 234 roadmaps, 2333 edges, 0 problem(s)
```

No UPWARD, CYCLE or `moved:` line. `roadmaps resolve`: no cross-roadmap citation and no Lean
name found nowhere. `sources.toml` parses (16 sources). Gate failures listed in the brief: none.

## Adversarial pass on the new and changed statements

| Statement | Instances tried | Values computed | Result | Change |
| --- | --- | --- | --- | --- |
| §0.8 `V^{I₁} ⊆ Δ(σ,V)`, `Δ ≠ 0` (admissible `V`) | `q = id`; `W = k`, augmentation; `V` admissible quotient | `Δ = 0`, `V^{I₁} ⊇ [1, W^{I₁}] ≠ 0`; `Δ = k = V^{I₁}`; `V^{I₁} ≠ 0` (pro-`p`), `⊆ Δ` by HU12 Cor. 3.9 | hypothesis needed and sufficient | restated |
| §2.2 `H^i(N₀, Ind) ≅ H^i(N₀, U^w)`, `i ≥ 1` | `U = χ₁⊗χ₂`; `i = 1`; `U = 0` | `C_c^∞(F)⊗U = ⊕_{F/𝒪_F} Coind_1^{N₀} U` acyclic, l.e.s. gives iso for `i ≥ 1` and `H⁰(Ind) = U ⊕ k[F/𝒪_F]⊗U`; `0` | true | new target |
| §2.2 `H^i(N₀, St ⊗ χ∘det) = 0` | `F = ℚ_p`; `F = ℚ_{p²}` | constants → fibre at `∞` is `χ(det w)`·id, iso on `H^i`, so connecting maps vanish and `H^i(St) = 0` for every `F` | true | new target |
| §2.2 Hecke on `H¹(N₀, χ∘det)` | `ℚ_p`, `t = diag(p,1)`; `ℚ_{p²}`; `e = 2, f = 1` | `q/ϖ = 1`, invertible, `H¹Ord = k` (EMERTON2 4.2.12(3)); `ϖ` on `𝒪_F/ϖ` is `0`; `ϖ` on `𝒪_F/ϖ²` is nonzero, square zero | nilpotent iff `ef ≥ 2` | new Check |
| §2.2 `Ord_B(St⊗χ∘det) ≅ χ⊗χ` | `F ≠ ℚ_p` | `0 → 0 → χ⊗χ → Ord(St) → R¹Ord(χ∘det) = 0` | consistent with §2.5 Checks and the Worked example | none |
| §4.5 `C_J(k)` Cohen–Macaulay | `J = ∅`; `|J| = 1` | `k`; `k[X,Y]/(XY)`: depth 1 = dim 1 at the origin | true via SSF §0.17 | citation |
| Tau Ceti cover for `P_σ` | `K = k`, `A = k[GL₂(k_F)]` | `A` finite over the Artinian `k`, `IsScalarTower k A A` | hypotheses hold | citation |

## For the maintainer

- Source issues beyond the review's list: VIGNERAS11 Proposition 10 (`Δ_V(V₀) ≠ 0` for every
  smooth torsion `V`) is refuted by `V = c-Ind_{KZ}^G V₀` as well, its proof resting on
  Proposition 9; recorded in the VIGNERAS11 version note.
- Ownership: Emerton's `Ord_B` with its adjunction is also constructed by
  CompletedCohomologyAndLocalGlobalCompatibility §0.1 (head of #1270), for `G = GL₂(ℚ_p)` only;
  §2.1 here is for every `GL₂(F)` on the PAI §3.7 Hecke action and was not a finding, so it is
  unchanged. `H¹Ord`, `R¹Ord`, `Ord_P` occur in no other roadmap on main or at the open heads
  (`roadmaps grep`); ownership against open pull requests was checked through that index.
- Names other roadmaps cite: none of this roadmap's Lean names changed. The README no longer
  cites `DualitySupport.torsionDual` or `TauCeti.exists_isProjectiveCover_of_finiteDimensional`;
  SelmerIwasawaCohomology and CompletedCohomologyPartII still cite `torsionDual`, and FFG
  R07.5.15 still attributes the Hecke names to PLL §2.7, which does not declare them.
- Not read: the Emerton–Paškūnas appendix (`R•Ord = H•Ord` for `GL₂(F)`); the §2.2 route needs
  only the injection of EMERTON2 Remark 3.7.3, and the `ℚ_p` Check is phrased on `H¹Ord_B`.
