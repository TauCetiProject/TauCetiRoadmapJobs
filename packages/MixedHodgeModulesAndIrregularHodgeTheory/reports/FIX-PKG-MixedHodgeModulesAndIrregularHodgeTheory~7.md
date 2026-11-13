# Repair report: MixedHodgeModulesAndIrregularHodgeTheory

I checked the four findings of REV-PKG-MixedHodgeModulesAndIrregularHodgeTheory~6 against the cited sources (FSY, MT, Sai88, Sai90, AS), ShimuraVarieties §3.5b.1 at its open head, and direct computation. All four are correct. Each is applied, with one widening: the F01 repair also fixes the vanishing-cycle form in §4.3, by the same pattern.

Changed files:

- `packages/MixedHodgeModulesAndIrregularHodgeTheory/README.md`
- `packages/MixedHodgeModulesAndIrregularHodgeTheory/sources.toml`: two locators and one `cited_for`.

`Suggested.lean`, `metadata.toml` and `design/plan.json` are unchanged. No supplier gap was added or changed. No section, target or Lean name was renamed, so no citation by another roadmap moves.

## F01 (P1) — applied

The changes, old → new:

- **§3.2.** "primitive parts are polarized by `Q(·, N^k ·)`" → `P_k = ker N^{k+1} ⊂ gr^M_{w+k}` is polarized by `Q(·, (−N)^k ·)`, read through `(2πi)^k`, i.e. by `Q(·, (−log T_u)^k ·)`. For unipotent `T` this is `Q(·, N_j^k ·)` with `N_j = log T_j = −2πi·N` and `T_j = T⁻¹`. The proof route now records that the cover's operator `N_j = −2πi e·N` fixes the sign. A Tate-curve Check is added.
- **Conventions, "Specialization".** Adds `N = −(2πi)⁻¹ N_j` and the `−N` rule for primitive forms.
- **§4.3 definition and API bullet.** These now name the forms:
  - on `gr^M ψ_g`: `ψ_g S ∘ (id ⊗ (−N)^k)`;
  - on `gr^M φ_{g,1}`: `φ_{g,1} S ∘ (id ⊗ (−N_φ)^k)`, with `φ_{g,1} S ∘ (can ⊗ id) = ψ_{g,1} S ∘ (id ⊗ (−var))`.

  `ψ_g S` is normalized by the curve case. Saito's `id ⊗ N^k` (Sai88 (5.2.10.2)–(5.2.10.3)) is cited as written for his normalization, not copied. A curve Check is added, and 3.2 is added to the *Needs* and Dependencies lines of 4.3.
- **§5.3.** One clause points to the §4.3 forms.

**Evidence.** I recomputed the reviewer's witness.

- Transport along `τ ↦ τ + 1` fixes `a = 1` and sends `b = τ` to `a + b`. On the dual basis this gives `Tα = α − β` and `Tβ = β`, so `(log T)α = −β`.
- `Q(α, β) = 1` is forced by `i·Q(α + τβ, α + τ̄β) = i(τ̄ − τ) = 2 Im τ > 0`.
- In the canonical frame `exp(zN_j)u`, the Hodge line is `exp(−zN_j)ℂ(α + zβ) = ℂα`. So `F¹_lim = ℂα`, and `α` spans `gr^M_2` (`M_0 = M_1 = ℂβ`), of type `(1, 1)`.
- `Q(α, (log T)α) = −1`, while `Q(α, (−log T)α) = Q(α, N_j α) = +1`.

ShimuraVarieties §3.5b.1 at its open head writes `Φ̃(z + e_j) = T_j Φ̃(z)` and `N_j = log T_j`. Since `Φ̃(z + 1) = {s : s(z + 1) ∈ F} = T⁻¹Φ̃(z)` for positive-loop transport `T`, we get `T_j = T⁻¹`.

Sai88 (0.7) (Sai88 lines 126–128) and 5.2.5 (Sai88 line 3677) define Saito's `N` as `(2πi)⁻¹ log T_u`. Sai88 (0.2) (Sai88 line 82) says `exp(−2πi t∂_t)` corresponds to `T`. On `t∂_t e = a e` that is positive-loop transport of `t^{−a}e`, the same `T` as here. So the sign in Saito's (5.2.10.2) must be absorbed by his normalization of `ψ_g S` (shift and Tate conventions). That is why the roadmap fixes `ψ_g S` by the curve case instead of quoting him.

The `φ` form is the same pattern. With `φS(can ⊗ id) = ψS(id ⊗ (−var))` and `var ∘ can = N`:

`φS(can x, (−N_φ)^k can x) = ψS(x, (−N)^{k+1} x)`

So positivity on `P_{k+1}(ψ)` gives positivity on `P_k(φ)`. With `+var` it would give the opposite sign. `φS` is well defined because `can` is surjective on a strict support on which `g` does not vanish identically.

## F02 (P3) — applied

**§8.1 proof route.** "the criterion from 6.6" → "from 6.6 and 5.6":

- If `(FT N)(∗0)` is constant of rank `r`, then by 6.6 and 2.2 the module underlying `Π N` is `(j_! O_{G_m})^r`. So `j_! j^* Π N → Π N` is an isomorphism (4.7).
- `j^* Π N` is smooth on `G_m` with constant local system, hence equal to `a^* V[1]` by 5.6.
- `j_!(a^* V[1]) = K ⊗ V = I(V)`.
- The converse is stated too.

The 8.1 *Needs:* line gains 2.2, 5.1 and 5.6, and so does the Layer 8 Dependencies line.

**Evidence.** FSY line 3164 invokes Saito's theorem that constancy of the underlying `D`-module suffices; that step is 5.6. 6.6 alone identifies only the underlying `D`-module.

Instances:

- **`N = δ_0ℚ`.** Constant rank `1`; `Π N = K`, `j^*K = a^*ℚ[1]`, `I(ℚ) = K`.
- **`N = j_* pℚ_{G_m}`.** The module is `D/D(∂_x x)`, whose transform is `D/D(t∂_t)`. Its localization is `O(∗0)`, of rank `1`, matching `I(ℚ(−1))` of the Layer 7 Examples.
- **`N = pℚ_{A¹}`.** `δ_0(∗0) = 0` has rank `0`, and `Π N = 0 = I(0)`.
- **`N = δ_a`, `a ≠ 0`.** `E^{at}(∗0)` is not constant, so `N` is excluded.

Layer 5 precedes Layer 8, so no cycle arises.

## F03 (P3) — applied

- **(a) §2.2.** "(FSY, §2.1, Proposition 2.4 and its proof, pp. 10–11; Appendix A.1, p. 61)" → FSY Appendix A.1, p. 61 (FSY lines 2773–2779) for the definition and holonomic exactness. MT, Appendix, p. 39 (MT lines 2104–2107) for the Weyl correspondence, noted as written for `E^{−tτ}` with opposite signs. The inversion and the cyclic identifications are computed in the target. §2.4 keeps Proposition 2.4.
- **(b) §5.2.** "Sai90, Proposition 0.3, pp. 223–224" → "Sai90, Introduction, p. 225, Sai90 lines 166–171". §4.6 keeps Proposition 0.3.
- **(c) §6.6.** ", citing Katz, Proposition 12.3.5" is deleted.

**Evidence.**

- **(a)** FSY line 441: Proposition 2.4 is the degree-zero statement for `Kl_{n+1}`. Its proof (lines 457–462) concerns the localized transform. FSY lines 2776–2779 give `FT_τ M = p_{t+}(p_τ^+ M ⊗ E^{tτ})` and holonomic exactness. MT lines 2104–2107 give `τ ↦ ∂_t`, `∂_τ ↦ −t`, with input `t`, for the kernel `E^{−tτ}` of MT line 2113. In this roadmap's names that is output ↦ `∂_input` and `∂_output` ↦ `−input`, the opposite of `t = −∂_τ`, `∂_t = τ` here.
- **(b)** Sai90 lines 100–104: Proposition 0.3 is the gluing equivalence. Sai90 lines 166–171 (printed p. 225) give the weight bounds and the stability of purity under proper direct image.
- **(c)** Katz has no key in `sources.toml` and no entry in References. The README now cites only FSY p. 70, whose text cites Katz itself (FSY line 3200).

In `sources.toml`:

- The Sai90 locator gains "Introduction p. 225".
- The MT locator gains "Appendix p. 39 (Fourier correspondence)".
- MT's `cited_for` becomes "Layers 2, 11".

No source was fetched or added.

## F04 (P3) — applied

**§12.5 route.** Old: Hochster's theorem applied to the whole cone algebra `ℂ[C_Δ ∩ ℤ^n]`, with Cohen–Macaulayness then "transferred" to its graded ring. New:

- For every face `σ ∌ 0` of `Δ`, including the empty face (cone `{0}`), `C_σ ∩ ℤ^n` is finitely generated (Gordan) and saturated, so its algebra is Cohen–Macaulay (gap:normal-semigroup-cohen-macaulay).
- The graded ring multiplies `x^m x^{m′}` exactly when `h(m + m′) = h(m) + h(m′)`.
- Kouchnirenko's exact sequence of face algebras gives its Cohen–Macaulay property (Kou, §2).
- The route says explicitly that Cohen–Macaulayness of the cone algebra is not used.

The same pattern is fixed in the scope bullet ("the Newton cone" → the cones over the faces), the GroebnerGeometry contract paragraph, and the last Check of 12.5 ("face semigroups … saturated"). An `x + x⁻¹` Check is added.

**Evidence.**

- **Witness.** In `k[x, y]`, `x⁶y² = x³y · x³y ∈ I²` and `x⁶y² = x⁴ · x²y² ∈ J`. The degree-8 monomials of `JI` are `x⁸, x⁷y, x⁵y³, x⁴y⁴, x³y⁵, xy⁷, y⁸`, and `x⁶y²` is not among them. `J` is a reduction of `I`, since `(x³y)⁴ = (x⁴)³y⁴`. So the Valabrega–Valla condition fails and `gr_I` is not Cohen–Macaulay, although `k[x, y]` is.
- **Description of the graded ring.** For `m ∈ C_Δ`, `h(m) = max_i ℓ_i(m)` over the facet functionals `ℓ_i` of the facets not containing `0`. So `h(m + m′) = h(m) + h(m′)` exactly when one `ℓ_i` attains both maxima, that is when `m` and `m′` share a facet cone. Every face not containing `0` lies in such a facet.
- **Saturation.** If `kv ∈ C_σ` with `v ∈ ℤ^n ∩ span C_σ`, then `v ∈ C_σ`.
- **Hochster on one graded cone.** AS line 617 recalls Hochster for one graded cone.

The gap as declared, for every finitely generated saturated submonoid of a finite free abelian group, already covers the face semigroups, so `design/plan.json` is unchanged. Kou is settled uncertified and is cited by locator only.

## Check outcomes

- **`lake env lean packages/MixedHodgeModulesAndIrregularHodgeTheory/Suggested.lean`** (run from the content checkout): exit 0. The single diagnostic is `Suggested.lean:146:8: warning: declaration uses 'sorry'`. No `TauCeti.*` import, so nothing was built.
- **Signatures.** I put `#check @name` for all 13 declarations in one scratch file and elaborated it once (exit 0). The elaborated types are those of the job's signature listing and agree with §§12.4 and 12.6. No binder was lost and nothing changed; the file was not edited.
- **Dependency check**, full output:

  ```text
  depcheck: 208 roadmaps, 1908 edges, 0 problem(s)
  ```

  No UPWARD, CYCLE or `moved:` line.
- **`roadmaps resolve` on the README**: no cross-roadmap citation or Lean name found nowhere.
- **Style scan** of the changed text: no LaTeX delimiters, no process words, no machine paths.

No gate failures were listed for this round.

## Adversarial pass on the changed statements

| Statement | Instances tried | Values computed | Result | Change |
|---|---|---|---|---|
| §3.2 primitive form `Q(·, (−N)^k ·)` | Tate family, `k = 1` | `(log T)α = −β`; `Q(α, (−log T)α) = 1`; `Q(α, (log T)α) = −1` | `−N` correct, `N` wrong | applied |
| same | `Sym²` of the Tate family, `k = 2` | `(log T)²α² = 2β²`; `Q₂(α², β²) = 1`; both forms give `2 > 0`; `i²Q₂(ω², ω̄²) = 4(Im τ)² > 0` | even `k` unaffected, so the sign is `(−1)^k` | none |
| same | constant variation; rank one with `T = −1` | `N = 0`, `k = 0`, form `Q`; `Ψ_{−1}` with form `Q` | unaffected | none |
| §3.2 route, cover operator | `e = 1`, Tate | `N_j = −2πi·N`, so `N_j α = −2πi·(−(2πi)⁻¹β) = β`, matching `T_j α = α + β` | consistent | applied |
| Conventions `N = −(2πi)⁻¹N_j` | Tate | `−(2πi)⁻¹N_j α = −(2πi)⁻¹β = Nα` | holds | applied |
| §4.3 `ψ` form | `j_!*(L[1])`, Tate data, `w = 2` | primitive part of `gr^M_2` spanned by `α` (`k = 1`); `ψS(α, −Nα) → +1`; `ψS(α, Nα) → −1` | `−N` correct | applied |
| §4.3 `φ` form and normalization | same | `φ_1 = ℂ·can α`, `k = 0`, weight 2; `ψS(α, −var can α) = +1`; with `+var`, `−1` | `−var` normalization correct | applied |
| §4.3 forms, degenerate | `M` smooth at the point | `N = 0`, `φ_1 = 0`; form `ψS` | unaffected | none |
| §8.1 criterion via 5.6 | `δ_0ℚ`; `j_*pℚ_{G_m}`; `pℚ_{A¹}`; `δ_a`, `a ≠ 0` | ranks `1`, `1`, `0`; `E^{at}(∗0)` not constant | classical, classical, `I(0)`, excluded | applied |
| §2.2 locators | FSY 441, 457–462, 2773–2779; MT 2104–2107, 2113 | Proposition 2.4 is `Kl`; A.1 is the definition; MT has the opposite kernel | relocated | applied |
| §5.2 locator | Sai90 100–104, 166–171 | 0.3 is gluing; p. 225 is the weights | relocated | applied |
| §12.5 route | `x`; `x²`; `x + x⁻¹`; `n = 0`; `(x + y)²` | `gr = ℂ[x]` (faces `{1}`, `∅`); `ℂ[x]`, `deg x = 1/2`; `ℂ[x,y]/(xy)`, `x − y` regular, quotient dimension `2`; `ℂ` in dimension `0`; Cohen–Macaulay but not a regular sequence | consistent with all Checks of 12.5–12.6 | applied |
| Graded ring of a Cohen–Macaulay ring | `I = (x⁴, x³y, xy³, y⁴)`, `J = (x⁴, y⁴)` | `x⁶y² ∈ J ∩ I² ∖ JI` | the old direction fails | route rewritten |

I re-evaluated the existing Checks on the changed objects:

- **§3.2 Legendre Check.** Still holds; it has `N² = 0` and does not see the sign, as the new Check now says.
- **§3.3 rank-three Check.** Uses `T_j = T⁻¹` consistently with the new Conventions clause.
- **§§5.3–5.4 and 11.3, 11.6.** Use only `ker N`, `coker N` and `M(N)`, which are insensitive to the sign of `N`.
- **§12.6 Checks.** `x`, `x + x⁻¹`, `Σx_i`, `n = 0`: the dimensions `1`, `2`, `1`, `1` are unchanged.

## For the maintainer

- **Section numbers.** No section numbers or names changed. The ids other roadmaps cite (Layers 1–12, §§5.1–5.2, 1.5, and the former-numbering map) are intact.
- **Ownership.** No new construction was introduced. The primitive forms are part of §4.3, which this roadmap owns, so no search against open pull requests was needed beyond the existing supplier citations.
- **ShimuraVarieties §3.5b.1.** It is cited at its open head. Its convention `Φ̃(z + e_j) = T_jΦ̃(z)`, `N_j = log T_j` was confirmed there, and the README now records `T_j = T⁻¹` relative to this roadmap's positive-loop `T`.
- **Saito's sign.** The README no longer claims to copy Saito's sign for the primitive forms. It fixes the sign by the curve case of 3.2.
- **Untrusted text.** Nothing in the review or the fetched text asked for anything outside this job.
