# FIX-PKG-LevelOneAutomorphicFormsForClassicalGroups~2

Repair round for the seven findings of `REV-PKG-LevelOneAutomorphicFormsForClassicalGroups`.
Files changed: `packages/LevelOneAutomorphicFormsForClassicalGroups/README.md` and the `gaps`
list of `packages/LevelOneAutomorphicFormsForClassicalGroups/design/plan.json`. `Suggested.lean`,
`metadata.toml` and `sources.toml` are unchanged (no finding touches a Lean statement and no new
source is cited).

## REV-PKG-LevelOneAutomorphicFormsForClassicalGroups/F01 (P1) — applied

Verified at CT20 line 1430–1431 (`14 ≤ dim U ≤ 42`), line 1503 (`U_exc` is not in `V`), line 264
(183 putative representations); no `31/4` or `7.75` occurs in CT20. §5.4: "between 10 and 38" →
"between 14 and 42", and the text now says `U_exc` is not among the 187 resistant parameters, hence
`U_exc ∉ V`; the Check `U_exc ∈ V` → `U_exc ∉ V` with the reason. §5.5: the `ℓ = 31/4` triple is
deleted; the argument is now `A/3` bound (at most two classes), `U_exc ∉ V` (no self-dual class at
`U_exc`), §1.7 (a singleton is self-dual, two non-self-dual classes are a dual pair); the first and
third Checks rewritten. §5.7: "at most 182" → "at most 183 (one at each of the 181 elements of `V`,
two at `U_exc`)", Check rewritten with `181 + 2 = 183`. Same pattern in §5.8: "every other element
of `V`" → "every element of `V`" (CT20 line 1584–1586 runs the `δ = m = 1` exclusion over all 181).

## REV-PKG-LevelOneAutomorphicFormsForClassicalGroups/F02 (P2) — applied

Verified at SmallRamificationAndAbelianVarietyBaseCases (head of its pull request, earlier in the
merge order): §1.5 `odlyzkoKernel` is the same `g = 2(h ∗ h)` with `C¹`, positive definiteness and
half-line integral `4/π²`; §1.6 proves `Re Φ(s) ≥ 0` on `0 ≤ Re s ≤ 1` for `f(x)/cosh(x/2)`; §1.7
`poitouTestFunction b x = g(x/b)/cosh(x/2)` with evenness, support, nonnegativity, `C¹`. Under
`ξ = i(s − 1/2)/(2π)` the strip is `|Im ξ| ≤ 1/(4π)`, so §1.6 plus §1.7 is (POS) of §2.1. §2.2 now
imports `g`, `F_ℓ` and (POS) and keeps only `G_ℓ`, the `C²` regularity (`g″(x) = π sin(πx) − π²(1 − x)
cos(πx)` on `[0, 1]`, `g″(1) = 0`, `g″(0) = −π²`), `F̂_ℓ(i/(4π)) = 8ℓ/π²` and the `Ĝ_ℓ` values; a Check pins
the `ξ ↔ s` correspondence (`ξ = i/(4π)` is `s = 1`). Added the supplier section, the Scope deferral,
the Layer 2 Dependencies entry; the Scope paragraph no longer claims the Odlyzko test functions.

## REV-PKG-LevelOneAutomorphicFormsForClassicalGroups/F03 (P2) — applied

Verified at SymplecticReidemeisterTorsionModSquares (head of its pull request, earlier in the merge
order) §4.1 and its `Suggested.lean` lines 41–53: `zassenhaus_primary_formula` for `[Field K]
[Invertible (2 : K)]`, `Q.Nondegenerate`, `A ∈ O(Q)`, in Tau Ceti's pinned
`CliffordAlgebra.orthogonalSpinorNorm` (`TauCeti/LinearAlgebra/CliffordAlgebra/Spin/SpinorNorm/Basic.lean`
line 98). §4.6 now imports it and keeps as targets the translation `det((1 + γ)/2 | ker Q(γ)) =
2^{−deg Q}(−1)^{deg Q} Q(−1)` with `deg Q` even, and Corollary 3.6 via `γ`, `−γ`; a fourth Check computes
the order-four rotation (`det((1 + γ)/2) = 1/2 ≡ 2 = Φ₄(−1)`). The ownership clause at line 35 is
replaced by "resting on the imported Zassenhaus formula". Added the supplier section, the pinned
declaration under "From Tau Ceti", the Scope deferral and the Layer 4 Dependencies entry; the
OrthogonalSpinGroups bullet says it is this pinned declaration.

## REV-PKG-LevelOneAutomorphicFormsForClassicalGroups/F04 (P2) — applied differently

The finding is right: the `Co₀` average (CT19a line 23–26, from the ATLAS character table) was an
unowned input of §8.5. The suggested repair (make §8.8's first route the only route) is flawed: that
route runs through §§6.12, 7.10 and 8.7, which carry the Arthur multiplicity-formula premises and
Böcherer's criterion, so `finrank_invariantAlternatingForms_of_rootless` and §8.6 would become
conditional, against the Conventions ("Layers 7–8 except §§8.3–8.6") and the unconditional Lean
headline. CT19a's point is an unconditional construction of the four forms. Instead the average is
declared as a supplier gap `gap:conway-group-average-charpoly` to CFSGBasicProperties P2-L (on main;
it owns `Co₀ = Aut(Λ)`, its Conway generators, order and the simplicity of `Co₁`), in `plan.json`
and under "Exact supplier contracts". §8.5 now states the route: Molien reading of the average
(coefficient of `t^{24−g}` is `(−1)^g dim(⋀^g)^{O(Leech)}`, Check with the trivial group and `{±1}`),
upper bound from §8.4, hence `ω_g` invariant and `det = 1` on `O(Leech)` (also from `Co₁` simple);
§8.8's first route is a second proof of the lower bound under Layer 7's premises. `*Needs:*` of §8.5,
Layer 8's introduction, Dependencies and the Scope deferrals record the supplier; §8.8's
"independent routes" Check now says what each rests on.

## REV-PKG-LevelOneAutomorphicFormsForClassicalGroups/F05 (P2) — applied

Verified at GeometryOfNumbersAndQuadraticArithmetic (head of its pull request) §2.4.2: nondyadic
local field, nondegenerate unimodular lattice of rank at least two, proper-stabilizer image
`R^× K^{×2}`; for `p` odd a regular form has polar determinant `±1` or `±2`, a unit, and rank one has
trivial `SO`. The gap `needs` (README and `plan.json`) is narrowed to `p = 2`; the §2.4 contract
bullet states §2.4.2 and why it covers the odd primes; §4.7's `*Needs:*` cites §2.4.2 for `p` odd and
the gap for `p = 2`.

## REV-PKG-LevelOneAutomorphicFormsForClassicalGroups/F06 (P3) — applied

Verified: RootSystems on main has only "3.2 Type A as a permutation group" (its open pull request
revises the same roadmap and is cited as on main); ClassicalGroups cites it only for `Sₙ`. No
`*Needs:*` line used the clause; §4.10 gets its characters from LieHighestWeight Layer 6 and
ClassicalGroups Layers 4–5. The clause is deleted.

## REV-PKG-LevelOneAutomorphicFormsForClassicalGroups/F07 (P3) — applied

Verified: `TauCetiRoadmap/IntegralLattices` on main, §4G (its README line 1424) defines
`p`-neighbours by `[L : L ∩ M] = [M : L ∩ M] = p` with symmetry, equal determinants, equal genus for
`p ∤ 2 det L` and the isotropic-vector construction; `Completed/IntegralLattices` Layer 1 is the
carrier. §6.3 defines `T_p` through §4G's relation; its `*Needs:*`, the supplier contract, the Scope
deferral and the Layer 6 Dependencies cite "Completed/IntegralLattices Layer 1" and
"IntegralLattices §4G" separately.

## Checks

- `lake env lean Suggested.lean` from the content checkout: exactly four `declaration uses 'sorry'`
  warnings (lines 80, 123, 136, 148), exit 0, nothing else. The file is unchanged this round.
- `#check @name` for all eight declarations in a scratch copy: every binder of each statement is in
  its own signature (no section `variable` is used); the elaborated types agree with the README
  statements of §§4.7, 8.5 and 8.6, which this round did not change. Nothing changed.
- Dependency direction: `depcheck: 242 roadmaps, 2381 edges, 0 problem(s)`; no UPWARD, CYCLE or
  `moved:` line. The two new edges are SmallRamificationAndAbelianVarietyBaseCases and
  SymplecticReidemeisterTorsionModSquares, both earlier in the merge order; CFSGBasicProperties is
  on main.
- `roadmaps resolve`: no cross-roadmap citation and no Lean name found nowhere.
- Gate failures listed in the brief: none.

## Adversarial pass on the changed statements

| Statement | Instances | Values computed | Result | Change |
|---|---|---|---|---|
| §5.4–5.7 counts | `V`, `U_exc`, the 187 | `|V| = 181`, `U_exc ∉ V`, `dim U_exc = 14 = min`, `181 + 2 = 183`; `U_exc ∈ U₂ ⊂ U₁` | consistent with CT20 lines 1428–1431, 1469–1476, 1491–1503, 264 | F01 |
| §5.5 fibre at `U_exc` | `|T| ∈ {0, 1, 2}` | `1`: self-dual by §1.7, excluded by `δ = m = 1`; `2`: both non-self-dual, dual pair | matches Prop 4.1(1) | F01 |
| §2.2 `ξ ↔ s` | `s = 0, 1/2, 1, 3/2` | `Im ξ = −1/(4π), 0, 1/(4π), 1/(2π)`; `Φ(1) = ∫F cosh(x/2) = A_F` | strip is (POS)'s strip; `s = 3/2` outside | F02 |
| §2.2 `g″` | `x = 0, 1` | `g″(0) = −π²`, `g″(1) = 0`, `g′(1) = 0`, `g(1) = 0` | `C²`, not `C³` (`g‴(1⁻) = −2π²`) | none |
| §2.2 `F̂_ℓ(i/4π)` | `ℓ = 1` | `2ℓ · 4/π² = 0.8106` | as stated | none |
| §4.6 translation | order-4 rotation on `x² + y²`; `γ = −1` on a plane; order-3 rotation | `det((1+γ)/2) = 1/2 ≡ 2 = Φ₄(−1)`; `V₋ = V`, `θ = disc`; `det((1+γ)/2) = 1/4 ≡ 1 = Φ₃(−1)` | agree with the supplier's formula and CT20 Thm 3.5 | F03 |
| §4.6 `deg Q` even | `γ ∈ SO(q)` | roots of `Q` paired `t, t⁻¹`, `t ≠ ±1`; multiplicity of `−1` even since `det γ = 1` | `2^{−deg Q}` a square | none |
| §4.6 Cor 3.6 | `a = b = 0`, `n` even | `charpoly(−γ)(X) = Q(−X)`, `−γ ∈ SO`, `sn(γ)sn(−γ) = Q(−1)Q(1) = sn(−1) ≡ disc(q)` | as stated | none |
| §4.7 odd `p` | `q = x₁x₂`, `γ = diag(t, t⁻¹)`, `t ∈ ℤ_p^×` | `Q(−1) = (1 + t)²/t`, even valuation; polar `det = −1` unit | GNQA §2.4.2 applies | F05 |
| §8.5 Molien sign | trivial group; `{±1}` | `(t − 1)²⁴`: `t²³` coefficient `−24 = (−1)¹·24`; odd coefficients `0` | sign `(−1)^g` correct | F04 |
| §8.5 `det = 1` | `Co₁` simple | `det(−1) = (−1)²⁴ = 1`, `det` factors through `Co₁`, image abelian | trivial | F04 |
| §6.3 neighbours of `E₈` at `p = 2` | isotropic lines of `E₈/2E₈` | `(2⁴ − 1)(2³ + 1) = 135` | unchanged by §4G's relation | none |

## For the maintainer

- New supplier gap `conway-group-average-charpoly` on CFSGBasicProperties P2-L; the gap
  `integral-spinor-norm-units` on GeometryOfNumbersAndQuadraticArithmetic now asks for `p = 2` only.
- New suppliers cited: SmallRamificationAndAbelianVarietyBaseCases §§1.5–1.7,
  SymplecticReidemeisterTorsionModSquares §4.1, CFSGBasicProperties P2-L, IntegralLattices §4G
  (distinguished from Completed/IntegralLattices Layer 1).
- No name of this roadmap changed; nothing another roadmap cites moved.
- Ownership against open pull requests whose files the brief does not give was not checked beyond
  the `roadmaps grep` index (no match for the Conway-group average anywhere).
