# FIX-PKG-HodgeClassesForJacquetLanglands~4

Repair of the four findings of `REV-PKG-HodgeClassesForJacquetLanglands~3` (one P1, two P2, one P3)
on `packages/HodgeClassesForJacquetLanglands`. All four were verified on the mathematics and are
correct; all four are applied. Files changed: `README.md`, `sources.toml` (two new works),
`design/plan.json` (one new entry in the top-level `gaps` list only). `Suggested.lean` is unchanged:
none of the findings touches its three theorems or its predicate.

## REV-PKG-HodgeClassesForJacquetLanglands~3/F01 (P1) — applied

Verified. Recomputed the witness: in `ℤ[√2]`, `ε = 1+√2` has `ε⁴ ≡ −1 (mod 3)` (order 8 in `𝔽₉^×`),
`ε⁸ ≡ 1+3√2`, `ε¹² ≡ −1 (mod 9)` (order 24 in `(O/9)^×`, of order 72). Point counts are 1 and 3,
index 9, degree 3. `K(3) ∩ O^× = ⟨−ε⁴⟩` with image `1+6√2` of order 3 in `K(3)/K(9)`, so the degree is
`[K(3) : K(9)(K(3)∩F^×)] = 3`. Both levels are neat. The defect matters here: for `Res_{F/ℚ}B^×` with
`[F:ℚ] ≥ 2` the centre's rational points are never discrete (Mil17, Theorem 5.26, p. 64).

Change, §0.3: `vol(K₁)/vol(K₂)` → Haar volumes of the images `K̄` in the effective groups
`G(𝔸_f)/Z(ℚ)⁻` (Mil17, the passage to the limit and Theorem 5.28, p. 65). New target: the degree
formula `[K₂ : K₁(K₂∩Z(ℚ))] = [K̄₂ : K̄₁]` for neat `K₂`, with its proof route. The vague "does not
depend on the levels" became an exact compatibility statement. Both Checks now use the effective
index, and a new Check records the witness. The normalization is carried into the Conventions,
§7.3, §10.3 and Notes on the source (Remark 2.2).

## REV-PKG-HodgeClassesForJacquetLanglands~3/F02 (P2) — applied

Verified. With `σ(t) = t²` on `ℚ(t)`, `U = 0` and `d_U(a) = ta`, the induced form is `h(a,b) = σ(a)b`:
`h(1,t) = t` but `σ(h(t,1)) = t⁴`, and `vol = t⁻³` but `σ(vol) = t⁻⁶`.

Change: §1.1 "Hermitian when `H` is" / "If `H` is Hermitian, the volume lies in `F`" → both now
assume `σ² = id`, with `N(x) = σ(x)x` named. Added a rank-zero negative-control Check: `σ = id` gives
`t⁻²`, and a quadratic involution gives `1/N(c) ∈ F`. Same pattern fixed in §1.2 (the induced
Hermitian form on `⋀^r U`, including `r = 0`). The Layer 1 preamble says which statements need the
involution. §§1.3–1.4 and the §1.7 identity keep every `σ`, as the Lean signatures do.

## REV-PKG-HodgeClassesForJacquetLanglands~3/F03 (P2) — applied

Verified. GL2AutomorphicRepresentationsAndTransfer §R17.3.8(ii) (at the head of its open pull
request) says that equal rationality fields do not give an `L`-model, and that consumers enlarge `L`.
§R17.3.7 gives only `ℚ(π_f) = ℚ(π′_f)`. AutomorphicFormsOnReductiveGroups §5.7 does exact descent
only for `GL_n`. The true statement is Wal85 §II.1, pp. 147–148: at a division place an
`L`-model exists for every `L ⊇ ℚ(π_v)` *because the central character is trivial*. The remark there
says it fails otherwise.

Change: new gap `gap:quaternionic-rational-model` (supplier GL2AutomorphicRepresentationsAndTransfer,
§R17.3.8). It is stated generally, for any number field, any `D`, and any irreducible admissible
`π′_f` with trivial central character. It appears in the README contracts and in `plan.json`. §0.5's
sentence "supplied by §R17.3.8" → derivation from trivial central character plus §R17.3.7 plus the
gap, with no enlargement of `L`. Also added: the §R17.3.6 multiplicity-one input for rank `2^d`, and
a `Q₈` negative-control Check. The gap is carried into the Needs of §§10.3, 10.7–10.9 and into the
Layer 0 and Layer 10 Dependencies.

## REV-PKG-HodgeClassesForJacquetLanglands~3/F04 (P3) — applied

Verified. At `p = q = ℓ = 0` both index sets are `{()}`, the empty products and wedge are `1`, and the
sum is `1`, not `0`.

Change, §4.3 Check: "that sum is zero" → the first formula read at `p = 0` has an empty index set
once `q+ℓ > 0`, giving `0` at `(0,6,0)` against the compact `φ′₀ = 1`. At `(0,0,0)` both formulas give
`1`. Zero-dimensional quadratic spaces are kept. No other "empty-sum" claim occurs in the README.

## Checks run

- `lake env lean` on `packages/HodgeClassesForJacquetLanglands/Suggested.lean`, run from the pinned
  content checkout, exited **0**. Its only output is the three warnings
  `declaration uses 'sorry'` at lines 70, 81 and 95. There are no `TauCeti.*` imports to build.
- Signature check: a scratch copy with `#check @IsExteriorStar`, `#check @existsUnique_isExteriorStar`,
  `#check @IsExteriorStar.comp_self` and `#check @IsExteriorStar.map_similitude` elaborated (exit 0).
  Each type keeps `Field E`, `Module E U`, `FiniteDimensional E U` (theorems), an arbitrary
  `σ : E →+* E`, `H`, the top trivialization, and `2 + 2 = finrank E U`. `comp_self` also keeps the
  Hermitian hypothesis and `map_similitude` the similitude equation. Nothing changed. The types agree
  with README §§1.3, 1.4 and 1.7, which keep every `σ` (made explicit in the Layer 1 preamble by the
  F02 repair).
- Dependency check (`gate --depcheck … --movable`), exit 0, output exactly:

      depcheck: 236 roadmaps, 2155 edges, 0 problem(s)

  There is no UPWARD, CYCLE or moved line.
- `roadmaps resolve` on the README: no cross-roadmap citations found nowhere, and no Lean names found
  nowhere.
- `sources check sources.toml`: 0 problems.
- Gap slugs: README and `design/plan.json` agree on eight slugs: the seven existing ones plus
  `quaternionic-rational-model`.

No gate failures were listed for this round.

## Adversarial pass on changed and added statements

| Statement | Instances tried | Values computed on each side | Result; change |
| --- | --- | --- | --- |
| §0.3 degree formula `[K₂ : K₁(K₂∩Z(ℚ))]` | `T = Res_{ℚ(√2)/ℚ}𝔾_m`, `K(9) ⊂ K(3)` | fibre size `3`; formula `9/3 = 3`; raw index `9` | holds; raw index refuted |
| same | `GL₂/ℚ`, neat `K₂` | `K₂ ∩ ℚ^× ⊂ Ẑ^× ∩ ℚ^× = {±1}`, neat excludes `−1`, so the effective index is `[K₂ : K₁]` | holds; SV5 case agrees with IP23 |
| same | `K₁ = K₂` | `[K₂ : K₂] = 1`, identity map | holds |
| same, proof route | stabilizer `q` of `x` in `G(ℚ) ∩ gK₂g⁻¹` | image in `G^ad(ℝ)` is in a compact ∩ discrete set, so finite order; neat, so `q^ad = 1` and `q ∈ Z(ℚ)` | holds for `d = 0` too (SV2 holds; SV3 is not used) |
| §0.3 level independence | `K₁′ ⊂ K₁`, `K₂′ ⊂ K₂` | `(v̄(K₂′)/v̄(K₂))·(v̄(K₁′)/v̄(K₂′))·deg(K₁′→K₁)·tr = (v̄(K₁)/v̄(K₂))·tr`, since `deg = v̄(K₁)/v̄(K₁′)` | holds; with raw volumes the factor is `[K₁:K₁′]/deg ≠ 1` in the witness (`9/3`) |
| §0.3 Check `f_*f^*` | witness | effective `3·(1/3) = 1`; raw `3·(1/9) = 1/3` | Check recomputed |
| §0.3 shrinking Check | witness with `K₁ = K(3)`, `K₁′ = K(9)` | `m = [K̄₁:K̄₁′] = 3` against `[K₁:K₁′] = 9`; differ because `−ε⁴ ∈ K(3) ∩ Z(ℚ)` is not in `K(9)` | Check recomputed |
| §0.3 `Res_{F/ℚ}B^×`, `[F:ℚ] ≥ 2` | `F = ℚ(√2)` | `K ∩ F^×` has finite index in `O_F^× = ±ε^ℤ`, rank `1 = [F:ℚ]−1` | holds |
| §0.3 IP23 agreement under SV5 | `K ∩ Z(ℚ) = 1` | `K → K̄` is injective, so `vol(K̄) = c·vol(K)` | ratios agree up to a constant |
| §1.1 Hermitian conclusions with `σ² = id` | `n = 0`, `σ(t) = t²` | `vol = t⁻³`, `σ(vol) = t⁻⁶`; `h(1,t) = t`, `σh(t,1) = t⁴` | negative control added |
| same | `n = 0`, `σ = id`; quadratic involution | `t⁻²` (fixed); `1/N(c)` (in `F`) | holds |
| same | `n = 4`, `H = 0`, any `σ` | `vol = det(0)/(σ(c)c) = 0 ∈ F` | holds; the positive-rank remark is correct |
| same | `diag(i,1,1,1)` over `ℚ(i)` (existing) | `i` against `−i` | still excluded by the Hermitian hypothesis |
| §1.2 with `σ² = id` | `n = 0`, `r = 0` | `N(det g) = N(1) = 1 = ν⁰`; the induced form `σ(a)b` is Hermitian only for `σ² = id` | hypothesis added |
| Layer 1 preamble: §1.4 for every `σ` | `H = 0`, dim 4, `σ(t) = t²` | the defining identity forces `L = 0`; `L∘L = 0 = vol` | holds; matches the Lean signature |
| gap:quaternionic-rational-model | split `D = M₂(F)` | Wal85 Lemma I.2.1 at every place (any central character) | holds |
| same | `D_v` division, `π′_v = χ∘Nrd`, `χ² = 1` | one-dimensional with values `±1`, model over `ℚ` | holds |
| same | depth-zero `π′_v` of `D_v^×/F_v^×` | factors through the dihedral group `C_{q+1} ⋊ C₂`; its 2-dim reps are realizable over `ℚ(ζ+ζ⁻¹)` | consistent |
| same, hypothesis needed | central character dropped | Wal85's remark (§II.1, p. 148) says the lemma fails; analogue `Q₈`: Frobenius–Schur indicator `(2·2 + 6·(−2))/8 = −1` | trivial central character kept; Check added |
| same | `d = 0`, definite `B_i` | the `π_{i,f}`-isotypic part of the `L`-valued forms is an `L`-model (multiplicity one) | consistent with rank `2^0 = 1` |
| §0.5 rank `2^d` | `d = 0, 1, 2` | `m(π_i)·2^d = 1, 2, 4` (§R17.3.6) | holds |
| §4.3 empty-sum Check | `(0,0,0)`; `(0,6,0)`; `(0,0,2)` | first formula `1`, `0`, `0`; compact formula `1`, `1`, `0` | Check corrected |

## Ownership, overlaps, sources

- Ownership against open work: this was checked with `roadmaps grep`/`roadmaps show` on main and on
  the open heads. Exact rational descent for `D^×` with trivial central character is owned nowhere.
  AutomorphicFormsOnReductiveGroups §5.7 has exact descent for `GL_n` only, and a finite extension in
  general. GL2AutomorphicRepresentationsAndTransfer §R17.3.8 compares models and does not construct
  them. That section is the natural owner of the quaternionic case, so the prerequisite is declared as
  a supplier gap there and not planned here. The effective-tower degree formula is not stated by
  ShimuraVarieties (§1.3 gives the effective `K/K′` action only) or by ArithmeticLocallySymmetricSpaces
  (§ALS.3.6 is the corestriction/covering trace). This roadmap already owns the normalized traces of
  §0.3 and states the formula there.
- New supplier citations: ShimuraVarieties §1.3, `TauCeti.Shimura.holomorphic_level_maps`, at the
  head of its open pull request; AdelicAlgebraicGroups §4.3, neat levels; and
  GL2AutomorphicRepresentationsAndTransfer §R17.3.6. All are earlier in the merge order, and the
  depcheck confirms it.
- Overlaps: none listed for this roadmap. No cited id is dropped by an open pull request. This pull
  request drops no id.
- Sources: two works were fetched through the sources service from legal copies and recorded as
  certified. Wal85 (Numdam, open repository) is cited as Lemma I.1, p. 123; Lemmas I.2.1–I.2.2,
  p. 124; §II.1 with its remark, pp. 147–148. Mil17 (the author's page) is cited as Lemma 5.13, p. 57;
  Theorem 5.26 and Remark 5.27, p. 64; the passage to the limit and Theorem 5.28, p. 65. Both are
  added to the References. No text was missing, and `needs-references.toml` was not created.

## For the maintainer

- GL2AutomorphicRepresentationsAndTransfer receives a new request, `gap:quaternionic-rational-model`
  at §R17.3.8: the exact-field model of `π′_f` for `D^×` with trivial central character (Wal85 §II.1).
  It complements, and does not contradict, that section's finite-extension caution, which is correct
  without the central-character hypothesis.
- ArithmeticLocallySymmetricSpaces §ALS.3.6 states `π_*∘π^* = [K : K′]` for its corestriction trace.
  On the coarse Shimura varieties of a group whose centre fails SV5, such as `Res_{F/ℚ}B^×` with
  `[F:ℚ] ≥ 2`, the covering degree is the effective index `[K : K′(K ∩ Z(ℚ))]`. This roadmap now uses
  the covering trace with effective volumes and does not rely on the `[K : K′]` identity. That
  roadmap's owner may want to say which quotient its `X_K` is.
- No Lean name changed. No id cited by other roadmaps moved.
- Nothing in the review text was treated as an instruction. No suspicious passages were found.
