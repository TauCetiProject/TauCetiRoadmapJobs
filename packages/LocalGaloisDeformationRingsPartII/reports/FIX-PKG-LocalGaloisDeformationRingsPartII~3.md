# Repair of the LocalGaloisDeformationRingsPartII package, round 3

Review answered: `REV-PKG-LocalGaloisDeformationRingsPartII~2` (five findings, F01–F05). I checked every finding against the cached sources, the supplier roadmaps at their current heads and the board packages. All five are right. F01 is applied in a slightly different form from the one the review proposed; the other four are applied as asked.

Files changed:

- `packages/LocalGaloisDeformationRingsPartII/README.md`
- `packages/LocalGaloisDeformationRingsPartII/design/plan.json`: the `gaps` entry `deligne-lusztig-reduction` only.
- `packages/LocalGaloisDeformationRingsPartII/sources.toml`: `cited_for` gains `3.10` for BHHMS23 and LLHLM18.

`Suggested.lean` is unchanged.

## F01 (P2) — applied differently

Old: 7.3's route used a framed deformation ring of `ρ̄|_{G_{K∞}}` that no supplier constructs. New: §3.10 defines `R□_{ρ̄,Γ} = lim_H R□_{ρ̄_H}` (open normal `H ⊆ ker ρ̄`) and proves pro-representability, the `Φ_p` comparison, functoriality, a surjectivity criterion, and surjectivity of `R□_{ρ̄|G_{K∞}} → R□_ρ̄` for cyclotomic-free `ad(ρ̄)`; 7.3 and 5.7 cite it.

**Verification.**

- PadicLocalLanglandsForGL2Qp §0.4 (`roadmaps show`, its line 292) defines the framed functor of any profinite group, but proves pro-representability only under `Φ_p`.
- SchemeAndStackFoundations §4.4 (main) proves Schlessinger's theorem only under H3, a finite-dimensional tangent space.
- `roadmaps grep` over main, the 439 open heads and the board packages finds no other owner.
- BHHMS23 uses the ring without constructing it (`BHHMS23 line 1700`, p. 35; `line 1826`, p. 37). LLHLM18 avoids it: its Proposition 5.11 (`LLHLM18 lines 2068–2070`) uses Noetherian Kisin-framed rings.
- The refuting instance holds. Through the field of norms and Artin–Schreier theory, `Hom(G_{ℚ_p,∞}, 𝔽_p) ≅ 𝔽_p((v))/℘` is infinite-dimensional.

**Why it differs from the proposed repair.**

- **Its own subsection.** The construction is §3.10, not a paragraph of 3.8. It is a definition with API bullets and Checks, while 3.8 is a theorem about `Hom`. Renumbering 3.9 would break 7.3's citation of it.
- **A wider surjectivity criterion.** The criterion is stated for any profinite local source with residue field `𝔽`. 7.3 applies it to `R□_{ρ̄|G_{K∞}}⟦X₁,…,X_{2f}⟧`, not to `R□_{ρ̄|G_{K∞}}` alone: in BHHMS23, Claim 1 is about `ψ` on the ring with the `X′, X″` variables (line 1712).
- **Two statements added.** Functoriality (iii), and the restriction surjectivity (v) that BHHMS23 line 1826 uses. Without them, 7.3's route would still lack its map `R□_{ρ̄|G_{K∞}} → R□_ρ̄`.
- **Five Checks instead of three.** They are: finite `Γ`; `ℤ_p` gives `𝒪⟦T⟧`; `G_{ℚ_p,∞}` is not Noetherian; a negative control (`ω ⊕ 1`); and the need for the tangent hypothesis in (iv).

**Pattern.** 5.7's route said the framed functor of `ρ̄` is "a closed subfunctor of that of `ρ̄|_{G_{K∞}}`". It now says that restriction `R□_{ρ̄|G_{K∞}} → R□_ρ̄` is surjective (3.10), and its *Needs:* list gains 3.10. I also updated:

- Scope and ownership: this roadmap now owns §3.10.
- The PadicLocalLanglandsForGL2Qp §0.4 contract: "Used in 3.8, 3.10, 5.1, 5.7, 6.1, 7.2 and 7.3".
- The Layer 3 introduction, the "How to read the build" paragraph and the Layer 3 Dependencies (which gain `LocalGaloisDeformationRings` §1.1).

**Ownership.** This roadmap owns the construction because:

- it is the only consumer;
- no roadmap on main, at an open head or in the board packages states pro-representability without `Φ_p`;
- §3.10 builds the ring as a limit of §0.4's finite-group rings and re-plans none of §0.4.

## F02 (P2) — applied

Old (18 lines): `MP.3, *weight-coordinates*` / `*translation-map*` / `*tame-weight-set*`, `MP.5, *projective-adjoint*`, bare `MP.3`/`MP.5`. New: `ModpRepresentationsOfGL2OverLocalFields` §3.1 / §3.2 / §3.4 / §5.5, and the specific sections in place of the bare ids. The gap's `section` is `§3.2`; its `needs` reads "in the translation coordinates of §3.2" in `plan.json` and the README.

I checked the content at the supplier's current README:

- §3.1 (its line 938) has depth `N < r_i + 1 < p − N` and the central twist.
- §3.2 (line 963) has `t_λ`, `Λ_W^λ`, `Σ` and adjacency.
- §3.4 (line 1008) has `τ(s,ν)` with no `η` added, and `W(ρ̄)`.
- §5.5 (line 1373) has `A_i ⊗ F(λ)` for 2-deep `λ` and the `2^f` pairwise nonisomorphic constituents of `P̃_σ[1/p]`.

The README contains no `MP.` string any more.

## F03 (P3) — applied

Old: `relativeCotangent`, `coeffCompletedTensor`, `quotientCompletionComparison` (DeformationAndDerivedPatchingAlgebra contract) and `fundamentalCharacter` (0.1 *Needs:*). New: "the relative cotangent space `𝔪_B/(𝔪_B² + 𝔪_A B)`", "the complete-local tensor product", "the quotient-completion comparison `Â/JÂ ≅ (A/J)^`" and "fundamental characters, Teichmüller lift".

`seriesPresentation_surjective` and `flatCompletion_finiteComparison` exist at DeformationAndDerivedPatchingAlgebra's head, so they stay. Every other backticked supplier name was checked at its supplier: `kisinOpenDiscBounded`, `KisinModule`, `KisinModuleCoeff`, `heightLatticeFunctor`, `HodgeType` and `GaloisType` are all present.

## F04 (P3) — applied

Old: "The source states the last assertion as an equivalence; only the stated direction holds (see the Checks)." This sentence is deleted. Old Check: "The converse of the residue test fails: …". New Check: "The converse of the residue test, which the source does not claim, fails: …". The statement of 5.3 and `crossing_prime` are unchanged.

`BHHMS23 line 1122` is "if `f₁ ≢ f₂`" with the space lost, as "Iff∈A×" on line 1121 is "If f ∈ A×". The proof (lines 1132–1134) gives that one direction. `design/plan.json` `sourceIssues` holds only E1 (Table 5 note) and E2 (Theorem 8.3.9). No erratum on Lemma 3.3.1 remains anywhere in the package.

## F05 (P3) — applied

Old: "(BHHMS23, Definition 3.2.5, pp. 22–23)". New: "(BHHMS23, Definition 3.2.5, p. 22)". The definition is at `BHHMS23 lines 1048–1052`, and page 23 begins at line 1053.

I checked the neighbouring locators of the same kind:

- Definition 3.2.4 (p. 22), Lemma 3.2.6 (line 1055, p. 23) and Proposition 3.2.7 (lines 1075–1093, p. 23) are correct.
- Lemma 3.2.8 is stated on p. 23 (line 1097) with its proof on p. 24, so "pp. 23–24" is correct.

The plan node locator "Definition 3.2.5 and preceding paragraph, pp. 22–23" (`design/plan.json`, outside the editable `gaps` list) still has the slip.

## Checks

- **Elaboration.** `lake env lean packages/LocalGaloisDeformationRingsPartII/Suggested.lean`, run from the content checkout, printed one message: `47:8: warning: declaration uses 'sorry'`. There is no `TauCeti.*` import.
- **Binder check.** I put `#check @TauCetiRoadmap.LocalGaloisDeformationRingsPartII.crossing_prime` in one scratch copy and elaborated it. The type carries:
  - `CommRing O`, `IsDomain O`, `IsDiscreteValuationRing O` and `IsAdicComplete (IsLocalRing.maximalIdeal O) O`;
  - `Irreducible ϖ`, `n`, `0 < d` and a unit `u` of `MvPowerSeries (Fin (n + 2)) O`;
  - the conclusion `Prime (X 0 * X 1 + C (ϖ ^ d) * ↑u)`.

  This is README 5.3's first assertion at the same generality. Nothing changed.
- **Dependency check** (the brief's command):

  ```text
  depcheck: 236 roadmaps, 2138 edges, 0 problem(s)
  ```

  No UPWARD, CYCLE or `moved:` line.
- **Citations.** `roadmaps resolve` on the README: no cross-roadmap citation and no Lean name found nowhere.
- **Gaps.** All ten gaps agree mechanically between `plan.json` and the README (slug, supplier and `needs` text).
- **Gate failures.** None were listed for this round.

## Adversarial pass (new and changed statements)

| Statement | Instances | Values computed | Result | Change |
| --- | --- | --- | --- | --- |
| 3.10 definition, index set | `Γ = ℤ/2`, `p` odd, `ρ̄` nontrivial | open normal subgroups `{0}, Γ`; only `{0} ⊆ ker ρ̄`; term: lifts `a ≡ −1`, `a² = 1` force `a = −1` (`m(m−2) = 0`, `m − 2` a unit), ring `𝒪` | index set must be `H ⊆ ker ρ̄` | Check 1 |
| 3.10 (i)/(ii), `Φ_p` case | `Γ = ℤ_p`, `n = 1`, trivial, `p = 3`, `m = 1` | term `𝒪[T]/(T³ + 3T² + 3T)`, which is `𝔽[T]/T³` mod `ϖ`, so local; limit `𝒪⟦T⟧`, universal value `1 + T` | equals §0.4's own check | Check 2 |
| 3.10 not Noetherian | `Γ = G_{ℚ_p,∞}`, `n = 1`, trivial | tangent `𝔽_p((v))/℘ ⊗ 𝔽`; `v^{−1}, v^{−2}, …, v^{−(p−1)}, v^{−(p+1)}, …` independent | infinite-dimensional, so `Φ_p` fails | Check 3 |
| 3.10 (iv) criterion | proof: compact image `g(P)` closed and containing `𝒪[x₁,…,x_m]`, dense in the image of `𝒪⟦X⟧ ↠ B` | `T ↦ T²` on `𝒪⟦T⟧`: pullback of `T ↦ aε` is `a²ε² = 0`; image `𝒪⟦T²⟧ ∌ T` | hypothesis needed, statement holds | Check 5 |
| 3.10 (iv) on a non-Noetherian source | `P = R□_{1,G_{ℚ_p,∞}}`, `B = R□_{1,G_{ℚ_p}} ≅ 𝒪⟦T₁, T₂⟧`, `p` odd | `dim Hom(G_{ℚ_p}, 𝔽) = 2`; restriction injective (3.8, trivial `W`) | surjective, consistent with (v) at `n = 1` | none |
| 3.10 (v) | `K = ℚ_5`, `ρ̄ = ω ⊕ 1` | `ad` contains `ω` at entry (1,2); `[[ω, εc],[0,1]]` is a homomorphism (`c(gh) = c(g) + ω(g)c(h)`); `c ≠ 0` since `(−5)^{1/5} ∉ ℚ_5` (valuation `1/5`); `c|_{G_{K∞}} = 0` | tangent map not injective, so not surjective; the hypothesis is needed | Check 4 |
| 3.10 (iii) direction | `ι : G_{K∞} → G_K` | lifts of `G_K` restrict to lifts of `G_{K∞}`; `Hom(R_{G_K}, A) → Hom(R_{G_{K∞}}, A)` is precomposition with `R_{G_{K∞}} → R_{G_K}` | covariant in the group, as stated | none |
| 7.3 route | BHHMS23 `ψ` (lines 1702–1711) | `X′_j ↦ x₁₂^(j)` (`j < f−1` or `ρ̄` irreducible), `Y₁` otherwise; `X″_j ↦ x₂₁^(j)` (`j < f−1`), `Y₄` at `j = f−1` | matches the new route text | none |
| 7.3 route source of the criterion | `P = R□_{ρ̄|G_{K∞}}⟦X₁,…,X_{2f}⟧`, `B = (S/⋂ I)⟦Y⟧` | `P` is profinite local with residue field `𝔽`; `B` is complete Noetherian | criterion (iv) applies | none |
| 5.7 route | normalized `ρ̄` is 12-generic, hence 2-generic (3.7) | `ad(ρ̄)` cyclotomic free, so (v) gives `R□_{ρ̄|G_{K∞}} ↠ R□_ρ̄` | equals the "closed subfunctor" claim | none |
| Conventions depth (F02) | §3.1 against the Conventions at `N = 12` | `N`-deep exists only for `p ≥ 2N + 2 = 26`, so `p ≥ 29`; the Conventions say `p ≥ 29` | agree | none |
| 0.1 reduction (F02) | §3.4's `τ(s,ν)` adds no `η`; 0.1 inputs `μ + η` | `f = 1`, `s = 1`: `ω₁^{μ₁+1} ⊕ ω₁^{μ₂}` on both sides | agree | none |
| 0.5 / §3.2 coordinates (F02) | §3.2 check `f = 1`, `p = 17`, `λ = (5,0)`, `ω = −1` | `n = −1`, `δ = 1`, second branch: `(0 − 1 + 1, 5 − 1 + 1 − 17 + 1) = (0, −11)` | the supplier's formula reproduces | none |
| 4.3 (F02) | §5.5 for 3-deep `σ`, `f = 1` | `[P_σ : σ] = 2`; two distinct constituents of `P̃_σ[1/p]`; `2 = 2^f` | count used by 4.3 holds | none |
| 5.3 converse (F04) | `n = 2`, `d = 1`, `u₁ = 1`, `u₂ = 1 + x₁x₂` | equal ideals would force `x₁x₂ + ϖ` to divide `ϖx₁x₂`; it is prime and divides none of `ϖ`, `x₁`, `x₂` | converse false; the lemma says "if" | Check reworded |
| 3.4 locator (F05) | page markers | `=== page 23 ===` at line 1053; definition at 1048–1052 | p. 22 | fixed |

## Ownership and overlaps

- The overlap tool reports no open pull request changing this roadmap and no dropped id.
- New object owned here: §3.10, the framed deformation ring of a profinite group without `Φ_p`. Searched by object:
  - "pro-represent", "Φ_p" and "G_{K∞}" combined with "deformation", "framed" and "R□";
  - over main, all 439 open heads (`roadmaps grep`) and `packages/*/README.md`.
- Only PadicLocalLanglandsForGL2Qp §0.4 (under `Φ_p`) and SchemeAndStackFoundations §4.4 (Schlessinger with H3) touch the object; neither states it.
- No declaration of `Suggested.lean` changed or gained a name.

## For the maintainer

- `design/plan.json` nodes outside the top-level `gaps` list still cite `ModpRepresentationsOfGL2OverLocalFields:MP.3/…` and `MP.5/projective-adjoint`, plus the locator "Definition 3.2.5 …, pp. 22–23". This job may edit only the `gaps` list. The README, the gaps and the manifest are corrected.
- New section id §3.10 in this roadmap. No section was renumbered or removed.
- If PadicLocalLanglandsForGL2Qp §0.4 later states pro-representability without `Φ_p`, §3.10's (i)–(iv) should become a citation of it, and only (v) should stay here.
- The review's remark stands and is not settled by this package: HilbertModularVarietiesAndShimuraCurvesPartII cites this roadmap by `T.0`, `T.6–T.7` labels it does not carry, and asks it for Barsotti–Tate and Breuil–Mézard material outside its scope.
- No new source was needed and no `needs-references.toml` was written.
