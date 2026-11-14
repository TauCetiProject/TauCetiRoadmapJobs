# FIX-PKG-ModularityAndLanglandsExtensionsPartII~3

Repair round for `REV-PKG-ModularityAndLanglandsExtensionsPartII~2` (17 findings: R01 P1; R02–R08, R15–R17 P2;
R09–R14 P3). Each finding was checked against the cached legal sources (`<id> line N`), the roadmap's own text
and the suppliers at the heads that `roadmaps show` gives: AdicSpacesPartV (#2133), PotentialAutomorphyInfrastructurePartII
(#2135), GlobalGaloisDeformations (#920), DeformationAndDerivedPatchingAlgebra (#1034),
SmoothRepresentationsOfLocalGroups (#1688), SmoothRepresentationsOfLocalGroupsPartII (#1815) and
SpringerResolutionAndCharacteristicCycles. Edited files: `packages/ModularityAndLanglandsExtensionsPartII/README.md`,
`sources.toml`, and the top-level `gaps` list of `design/plan.json` (two entries). `Suggested.lean` and `metadata.toml` are unchanged.

## REV-PKG-ModularityAndLanglandsExtensionsPartII~2/R01 (P1) — applied

§13.7: "`χ² det r_{π,ι_q} = ε^{−1}`" → finite-order `χ` whose reduction satisfies `χ̄² det r̄_{π,ι_q} = ε̄^{−1}`, with bars in the obstruction clause (nt26 line 2185). `π_a` has `det = ε^{−1}` from weight zero; only `r̄_{π_a} ≅ r̄_π|_{G_E} ⊗ χ̄` is asserted. New Check (`Δ`): weights 11 vs 1; residually `2·5 − 11 = −1`. Only occurrence.

## REV-PKG-ModularityAndLanglandsExtensionsPartII~2/R02 (P2) — applied

§4.1: `μ` is now continuous, quadratic on `𝔸_{F⁺}^×`, unramified at inert places (nt21 lines 408–410); API updated; §4.2 cites it. New Check: an order-4 character of `𝔽₉^×/𝔽₃^×` keeps the restriction but ramifies the parameter. Pattern: §5.5 restates ct17 Lemma 3.4, used through Mok's multiplicity formula, so it is unchanged.

## REV-PKG-ModularityAndLanglandsExtensionsPartII~2/R03 (P2) — applied

§5.9 now chooses the `R_i` first, with `∏_{i≥1} ε_{v_i}(R_i) = −1` (ct17 lines 1823–1824), so endoscopic contributors carry `X` at `v_0`; the contragredient `N` is kept. New Check (`l = 5`, `s = 1`): plus gives `(d, d+c)`, minus gives `(d+c, d)`, i.e. `(0,1)` vs `(1,0)`. §5.10 cites the `R_i` of §5.9.

## REV-PKG-ModularityAndLanglandsExtensionsPartII~2/R04 (P2) — applied

§4.9 gains the pullback along `p : G_sc → G`: (a) Hecke subalgebra on `W_aff`; (b) `(p^*π)^{I_sc} = π^I`, restricted exponents; (c) Clifford criterion over `Ω`; (d) irreducibility for real positive `s` (ct17 p. 10). Three Checks: PGL₂ index 2, reducible pullback at `s = diag(i,−i)`, the n = 7 parameter. §4.10 routes PSp → Sp → U.

## REV-PKG-ModularityAndLanglandsExtensionsPartII~2/R05 (P2) — applied

Scope: "stated here … in the form the Clozel–Thorne modules need" → this roadmap owns the Kazhdan–Lusztig classification for every split adjoint group, with its pullback (§4.9), as the earliest in the order (284 vs 294). Downstream consumers lists SmoothRepresentationsOfLocalGroupsPartII. No upward citation. That roadmap's own §§7.3–7.4 change is a maintainer note.

## REV-PKG-ModularityAndLanglandsExtensionsPartII~2/R06 (P2) — applied

§4.10: "smooth and projective, hence paved" → explicit computation. `ℬ_u^s` is the variety of `s`- and `N`-stable isotropic flags, split by weight type: n = 7 gives two points, `ℙ¹`, `ℙ¹×ℙ¹`; n ≥ 9 recurses, adding `2(k−2)+2`. The totals 8, 14, 22 equal 1+7, 1+11+2, 1+16+5. New Check: the elliptic curve.

## REV-PKG-ModularityAndLanglandsExtensionsPartII~2/R07 (P2) — applied differently

§6.3 Lemma 6.6: "`R_v ≠ R^{St}_v`" → every `R_v` is fixed-type or fixed-character (unipotent included): no Steinberg, no partition rings (nt21 lines 3842–3850; ct17 line 2029, p. 40). New Check: `(X−1)³ ∉ Pol_3((2,1), 11)` at `p = 5`. "Differently": the review's narrower restriction would also drop the fixed-character rings that ct17 supports.

## REV-PKG-ModularityAndLanglandsExtensionsPartII~2/R08 (P2) — applied

§2.5: "discriminants of `Sym^{n−1}` cut out the locus" → `Z_{3,l,i}` is local absolute reducibility intersected with the vanishing of `discr(g^i)` for all `g`, and `Z` is the finite union (nt21 lines 2606–2612). Finitely many `g` suffice per affinoid. Checks: `Q₈`, whose `Sym³` discriminants all vanish, is rejected; `1 ⊕ η` is in `Z_{3,l,2}` only.

## REV-PKG-ModularityAndLanglandsExtensionsPartII~2/R09 (P3) — applied

§13.4 (proof sketch and Check): "the `4r − 2` elements" → "at most `4r − 2`, counted in the field of `y`". New Check: `r = 4`, `q = 17`, `x = 2` gives `{1,2,4,8,9,13,15,16}` (8, not 14), and `y = 3` gives distinct eigenvalues `7,6,10,11,14,12,3,5`. Characteristic 2 is noted.

## REV-PKG-ModularityAndLanglandsExtensionsPartII~2/R10 (P3) — applied

`AdicSpacesPartIIPartII` → `AdicSpacesPartV`: 13 README occurrences (Scope, contract, gap, §§0.1, 1.4, 2.4, Dependencies), con99 `cited_for`, and the `plan.json` gap supplier. Layer 1 and the slug are kept; the contract cites §§1.1, 1.4, 1.5. At #2133 Layer 1 has no base-field component statement, so the gap stays.

## REV-PKG-ModularityAndLanglandsExtensionsPartII~2/R11 (P3) — applied

`sources.toml` ct15 `cited_for`: "PotentialAutomorphyInfrastructurePartII PL.2" → "§3.12, Layer 3". ct15 Proposition 3.10 (line 676) is Hida change of weight via Geraghty Lemma 2.6.4, i.e. §3.12(3) at #2135. Key and metadata are kept. Pattern: §7.7's citation now also says §3.12.

## REV-PKG-ModularityAndLanglandsExtensionsPartII~2/R12 (P3) — applied

§11.7 Check: "generic primes … exist inside them" → each minimal prime `Q` lies in a characteristic-`p` generic prime `𝔭`: `Q ⊂ 𝔭`, `V(𝔭) ⊂ V(Q)`. In `𝒪[[T]]`: `(0) ⊂ (ϖ)`, dimensions 2 and 1, `ϖ ∉ (0)`. Consistent with §§11.7, 11.10.

## REV-PKG-ModularityAndLanglandsExtensionsPartII~2/R13 (P3) — applied

§4.8: introduced `ϖ_E` with `ϖ_F := ϖ_E²` an `F`-uniformizer (ct17 lines 167–170). Now `ε_i = diag(…, ϖ_E, …, −ϖ_E^{−1}, …)`, `ε′_i` uses `ϖ_F`, and `ε_i ↦ ε′_i`. New Check: for `E = F(√ϖ_F)`, `v_F(ϖ_E²) = 1` gives ℤ, while `ϖ_F²` gives 2ℤ. No other local `ϖ²` occurs.

## REV-PKG-ModularityAndLanglandsExtensionsPartII~2/R14 (P3) — applied

§7.3: "p. 84" → "pp. 84–85" (nt21 line 4144). §9.2: "Lemma 2.2 and proof, p. 7" → "…, p. 7; the construction of `P → R`, p. 8" (nt21b lines 330–336). The other Corollary 7.3 / Lemma 2.2 locators were checked; the gap contract's "nt21b p. 7" concerns Lemma 2.2 itself.

## REV-PKG-ModularityAndLanglandsExtensionsPartII~2/R15 (P2) — applied

§9.2: "the dual of `A²` is … a quotient" → the dual is the generic fibre of `𝒢`; Raynaud dualised gives `L ↠ A²` (weights `{0,1}`), then `Sym_{ℤ_p} L ↠ Sym_A A²` through the coefficient change (nt21b lines 322–329). New Check: `1 ⊕ ε^{−1}` gives `{0,1,2}`, its dual `{0,−1,−2}`. §12.2 already had the correct direction.

## REV-PKG-ModularityAndLanglandsExtensionsPartII~2/R16 (P2) — applied

Gap `formal-torus-patching` narrowed (README, `plan.json`). GlobalGaloisDeformations §§4.6, 4.11 are imported in the contract, §§9.6, 9.7, 12.6 and Layers 9/12. DeformationAndDerivedPatchingAlgebra (section "§5.4 and Layer 6") keeps only the patched twisting actions on `R′_∞`, `P_∞` and both modules, plus component transitivity. A `y = 2x + x²` Check was added.

## REV-PKG-ModularityAndLanglandsExtensionsPartII~2/R17 (P2) — applied

§12.4: "quotient `Δ′_Q/(p^N)`" → `V_0(Q)_v` is the Iwahori at `v ∈ Q`, and `V_1(Q;N)_v` the kernel of the ordered diagonal map to `(k(ṽ)^×(p)/(p^N))^{2r}` (nt26 lines 1470–1482), with diamond coordinates matched to the ordered `η_i`. API added; Checks: C₂×C₂ vs order 2, a deeper subgroup, `η = (10, 15)`.

## Checks run

- **Elaboration.** `lake env lean packages/ModularityAndLanglandsExtensionsPartII/Suggested.lean` from the pinned
  content checkout: exit 0, only `Suggested.lean:80:8: warning: declaration uses 'sorry'`. The file is unchanged and
  needed no `TauCeti.*` build.
- **Signatures.** A scratch copy with `#check @symPowerEulerFactor` and `#check @symPowerEulerProduct_levelOne_entire`
  elaborated. The results were `ℕ → ℂ → ℂ → ℂ → ℂ` and `∀ {k : ℤ} (f : Newform 1 k) (n : ℕ), 1 ≤ n → ∀ (α β : ℕ → ℂ),
  (∀ p, Nat.Prime p → f.satakeParameters p = {α p, β p}) → ∃ L, Differentiable ℂ L ∧ ∀ s, ↑n * (↑k − 1) / 2 + 1 < s.re →
  HasProd (fun p => (symPowerEulerFactor n (α ↑p) (β ↑p) (↑↑p ^ (−s)))⁻¹) (L s)`. No binder is lost, both match
  README §14.4, and nothing changed.
- **Dependency check** (command of the brief, `--movable`):

  ```text
  depcheck: 236 roadmaps, 2161 edges, 0 problem(s)
  ```

  There are no UPWARD, CYCLE or moved lines.
- **Citations** (`roadmaps resolve` on the edited README): no cross-roadmap citation and no Lean name found nowhere.
  The former lead "AdicSpacesPartIIPartII Layer 1" is gone.
- **House style.** Every paragraph has balanced backticks. The added lines contain no LaTeX, process words or
  machine paths.
- **Sources.** No new text was needed and `needs-references.toml` was not written. kw09 (uncertified) gained the
  locator "proof of Proposition 9.3", the place nt21b line 905 cites (KW09b = kw09, nt21b line 1409).

## Adversarial pass on the new and changed statements

| Statement | Instances tried | Values computed | Result / change |
|---|---|---|---|
| §13.7 residual twist identity | `Δ`, `k = 12`, `F = ℚ`; finite-order `χ` | char 0: HT(`χ² det r`) = 0 + 11 = 11 ≠ 1 = HT(`ε^{−1}`); residual `χ̄ = ε̄⁵`: `2·5 − 11 = −1` | Char-0 form false; residual form adopted, Check added |
| §13.7 `ε̄ det r̄` totally even | complex conjugation `c` | `ε̄(c) = −1`, `det r̄(c) = −1`, product `+1` | Obstruction lies in `Br(F)[2]` as stated |
| §4.1 `μ` unramified at inert places | `𝔽₉/𝔽₃`, `ν` of order 4 on `𝔽₉^×/𝔽₃^×` | `|𝔽₉^×/𝔽₃^×| = 8/2 = 4`; `ν|_{F⁺_v^×} = 1`; `ν(generator) = i ≠ 1` | Condition added; negative control |
| §4.1 global realisation of `ν` | `F_w^×/F⁺_v^× → 𝔸_F^×/(F^×𝔸_{F⁺}^×)` | kernel: `e ∈ F^×` with `c(e) = e` locally ⇒ `e ∈ F⁺`; image compact | Extension of `ν` exists (Pontryagin) |
| §5.9 sign choice | `l = 5`, `s = 1`, `c = 1`, `d = 0` | product −1: `ε_{v_0} = −1` ⇒ `X`: `(a,b) = (1,0)`; product +1: `Y`: `(0,1)` | Hypothesis added; both cases as Check |
| §5.10 contradiction after repair | `a = 2`, `b = 1` | `2(a+b) = 6 > 5 = a + 3b` | Unchanged, consistent |
| §4.9(a) Hecke subalgebra | `SL_2 → PGL_2` | `Q^∨ = ℤα^∨`, `X_*(T) = ℤ(α^∨/2)`, index 2; `ω = (0,1;ϖ_F,0)`, `ℓ(ω) = 0` | `T_ω ∉` image; Check |
| §4.9(a) coset bijection | `|I w I/I|` vs `|p(I_sc) w p(I_sc)/p(I_sc)|` | both `q^{ℓ(w)}`; `I = T(𝒪)p(I_sc)` for residue char ∤ `|ker p|` (pro-`p` parts `2`-divisible for odd `p`) | Surjection ⇒ bijection |
| §4.9(b) invariants | `π ⊂ i_B χ`, `χ` unramified | `(t·f)(bw) = χδ^{1/2}(wtw^{−1}) f(bw) = f(bw)` for `t ∈ T(𝒪)` | `π^{p(I_sc)} = π^I` |
| §4.9(c)/(d) irreducibility | PGL₂, `χ(diag(ϖ,1)) = i` | `s = diag(i,−i)`, ratio `−1 ≠ q^{±1}`, `dim π^I = 2`; `−s ~ s`; pullback `Ind(ω)`, `2 = 1 + 1` | Reducible without real positivity; excluded by (d) |
| §4.9(d) real positive `s` | polar decomposition of `T^∨` | `W·s ⊂ Hom(X_*,ℝ_{>0})`, `z_χ ∈ Hom(X_*,S¹)`, so `W·s ∩ z_χW·s = ∅` for `z_χ ≠ 1` | Irreducible pullback for ct17 parameters |
| §4.10 n = 7 fibre | `V(3)⊕V(3)⊕V(1)`, `E_1 = ⟨a_1,b_1⟩` | `F_1 ⊂ E_1` (`c` anisotropic); `ℙ¹×ℙ¹` [1,1,0], `ℙ¹` [1,0,1], 2 points [1,0,−1] (`x ∈ ⟨a_0,b_0⟩` isotropic: `λ²+μ² = 0`); `⟨y, Nx⟩ = tκ(λ²+μ²) = 0` | Matches ct17; 2+2+4 = 8 = 1+7 |
| §4.10 n = 9 and recursion | `V(5)⊕V(3)⊕V(1)`; general `k` | `a_2`-branch = n = 7 copy with prefix 2; `b_1`-branch: pairs [1,0,2,1], [1,2,0,1], `ℙ¹` [1,2,1,0]; total 14; `k = 5`: 8 + 14 = 22 = 1+16+5 | Recursion `2(k−2)+2+dim(k−1)` |
| §4.10 paving negative control | elliptic curve | `dim H_1 = 2` vs 0 odd homology for an affine paving | Check added |
| §4.8 uniformizer | `k = 1`, `E = F(√ϖ_F)` | `v_F(ϖ_E²) = 1` gives ℤ; `v_F(ϖ_F²) = 2` gives 2ℤ | Convention fixed; Check |
| §6.3 comparison domain | `n = 3`, `p = 5`, `q = 11`, Frobenius `1` | eigenvalues `1,1,1`, no ratio 11; `(X−1)³ ∉ Pol_3((2,1),11)`; `11 ≡ 1 mod 5` | Partition rings excluded; Check |
| §2.5 bad locus | `Q₈` standard rep; `1 ⊕ η` | `Sym³` eigenvalues `−i,i,−i,i` (all discr. 0), irreducible; `1⊕η`: `g²` eigenvalues `1,1` (discr. 0), `g`: `X²−1`, discr. `4 ≠ 0` (char 0) | Reducibility restored; Checks |
| §13.4 forbidden count | `r = 4`, `q = 17`, `x = 2`, `y = 3` | `ord(2) = 8 > 6`; `±2^i` = 8 values; `y^{±1}x^{3,1,−1,−3}` = 7,6,10,11,14,12,3,5 (distinct) | "at most" adopted |
| §11.7 containment | `𝒪[[T]]`, `Q = (0)`, `𝔭 = (ϖ)` | dims 2, 1; `ϖ ∈ 𝔭 ∖ Q` | Direction corrected |
| §9.2 dualization | `1 ⊕ ε^{−1}` | HT `{0,1}`, Sym² `{0,1,2} ⊂ [0,2]`; dual `{0,−1}`, Sym² `{0,−1,−2}` | Quotient onto `A²`; Check |
| §9.6/R16 torsor degree | `γ = 1`, `p = 2` vs odd | `(1+x)² − 1 = 2x + x²`: degree 2 at `p = 2`, invertible at odd `p` | Imported from GlobalGaloisDeformations §4.11 |
| R16(ii) transitivity | `γ = 1` | `Ĝ_m[2](𝒪) = {±1}` (`−1 ∈ 1 + 𝔪` in residue char 2); generic fibre a `{±1}`-torsor over `Frac R^{inv}` (char 0), so transitive on minimal primes (flatness gives going down) | Stated with "`R′_∞` a domain flat over `𝒪`" |
| §12.4 level | `r = 1`, `p = 2`, `|k(ṽ)^×(2)/(2^N)| = 2` | ordered quotient C₂×C₂, order 4; determinant kernel or `a_{11}/a_{22}` kernel: order 2 | Definition added; Check |
| §12.4 ordering | `α = 2`, `β = 3`, `γ_1 = 5` | `η = (10, 15)`; `U^{(1)} − 10`, `U^{(2)} − q^{−1}·150` | Check added |
| §12.4 deeper subgroup | lower entries in `ϖ²𝒪` | diagonal entries still all of `𝒪^×`: same quotient, strictly smaller than `Iw` | Excluded by `V_0(Q)_v = Iw_ṽ` |

## Ownership and overlaps

- The Kazhdan–Lusztig classification was searched by object across main and the open heads
  (`roadmaps grep` for the Deligne–Langlands conjecture, the KL classification and KL87). Only
  SmoothRepresentationsOfLocalGroupsPartII (§§7.3–7.4, merge position 294) also owns it. This roadmap (284) is the owner.
  SpringerResolutionAndCharacteristicCycles (258) has the Steinberg variety and Borel–Moore homology but neither the
  classification nor the fixed-point varieties `ℬ_u^s`. No general Białynicki-Birula owner earlier in the order
  exists, which is why §4.10 uses the explicit linear-algebra computation.
- The formal torus quotient and torsor are owned by GlobalGaloisDeformations §§4.6, 4.11, now imported. By that
  roadmap's own scope, the patched limits and modules belong to the patching roadmaps. DeformationAndDerivedPatchingAlgebra
  (79) keeps the narrowed remainder, next to its §5.4 actions and §6.1 transitive-action support statement.
- No notion moved down from a later roadmap, and no later roadmap is named as a supplier. SmoothRepresentationsOfLocalGroupsPartII
  appears only under Downstream consumers. The depcheck shows no edge to it.

## Notes for the maintainer

- **SmoothRepresentationsOfLocalGroupsPartII (#1815).** To finish R05, that roadmap should replace its overlapping
  §§7.3–7.4 classification (Kazhdan–Lusztig triples and the bijection) with a citation of
  ModularityAndLanglandsExtensionsPartII §4.9. It would keep its own sphericity, temperedness wording, genericity
  (Barbasch–Moy) and Aubert-involution refinements. Its KL87 citation stays.
- **DeformationAndDerivedPatchingAlgebra.** The `formal-torus-patching` contract now asks only for patched twisting
  actions and component transitivity, at "§5.4 and Layer 6". The generic quotient and torsor are not asked of it again.
- **AdicSpacesPartV.** The `components-under-field-extension` gap now names this roadmap, Layer 1.
- No section, layer or target of this roadmap was renumbered or renamed, so other roadmaps' citations of it are
  unaffected. No Lean name changed.
