# FIX-DESIGN-FinitenessAndDualityOfGroups~4

Repair of the two findings of REV-DESIGN-FinitenessAndDualityOfGroups~3. Files changed:
`packages/FinitenessAndDualityOfGroups/design/README.md` and
`packages/FinitenessAndDualityOfGroups/design/plan.json`. `sources.toml` is unchanged: no new work is
cited. I checked both findings against the mathematics before applying them, and both are correct.
The review's "For the human reviewers" section lists no finding, so nothing was changed because of it.

## F01 (P2) — applied

3.1 Check "the tensor induction is contractible" → the complex `R·(x ⊗ x) → RG → R` is written out. It
is contractible as an `R`-complex (explicit `h`), and `RG`-linearly exactly when `2 ∈ Rˣ`. So over `ℤ`
or `𝔽₂` the augmentation has no equivariant section, and 3.1(c) is `R`-linear only. Plan test
`3.1/contractible` matches; 3.1(c) is unchanged.

## F02 (P3) — applied

Added `R ≠ 0` to README 1.5 (third Check) and 2.3 (`2ℤ ≤ ℤ`), and to plan tests `1.5/rat_colimit`,
`1.5/rat_product` and `2.3/2Z_in_Z`, with the zero-ring values (`0 → 0` bijective; `0 = 0`). Same
defect repaired in 2.6 (`BS(1,2)`), 6.4 (free groups), 7.1 (trivial module) and plan `9.1/integers`
(see the pattern sweep). No theorem narrowed.

## Verification of the findings

**F01.** Take `H = 1`, `G = ⟨s⟩ ≅ ℤ/2` and `F = (R·x →id R·y)` with `|x| = 1`, `|y| = 0`. The tensor
induction is `F ⊗ F`:

- degree 2 is `R·(x ⊗ x)`, and `s` acts on it by `−1` (Koszul sign `(−1)^{1·1}`);
- degree 1 is `R a ⊕ R b` with `a = x ⊗ y` and `b = y ⊗ x = s·a`, which is `RG` free on `a`;
- degree 0 is `R·(y ⊗ y)` with trivial action.

The differential is `d(x ⊗ x) = y ⊗ x − x ⊗ y = b − a` and `da = db = y ⊗ y`. It commutes with `s`:
`d(s·x⊗x) = a − b = s·(b − a)`.

- **Underlying contraction.** Take `h₀(y⊗y) = a`, `h₁(a) = 0`, `h₁(b) = x⊗x`. Then `dh + hd` sends
  `y⊗y ↦ y⊗y`, `a ↦ 0 + a`, `b ↦ (b − a) + a` and `x⊗x ↦ h₁(b − a) = x⊗x`. This `h` is not
  equivariant: `s·h₀(y⊗y) = b ≠ a = h₀(s·y⊗y)`.
- **No equivariant contraction unless 2 is a unit.** An equivariant `h₀` lands in `(RG)^G = R(a + b)`,
  and `d(k(a + b)) = 2k`. So `d h₀ = id` forces `2k = 1`.
- **Equivariant contraction when 2 is a unit.** Take `h₀(y⊗y) = (a + b)/2`, `h₁(a) = −x⊗x/2` and
  `h₁(b) = x⊗x/2`. Then `dh + hd` gives:
  - `a ↦ −(b − a)/2 + (a + b)/2 = a`;
  - `b ↦ (b − a)/2 + (a + b)/2 = b`;
  - `x⊗x ↦ h₁(b − a) = x⊗x`.

  `h₁` is equivariant: `s·h₁(a) = x⊗x/2 = h₁(b)`.

So the claim as written ("contractible", read in the category of `RG`-complexes) was false over `ℤ`
and `𝔽₂`. The criterion "2 is a unit" also covers `R = 0` correctly.

**F02.** Over `R = 0` every `RG`-module is `0`. That makes both comparison maps of 1.5 equal to
`0 → 0`, and `ℚ` is of type `FP_1` over `0`, as the 1.4 Check already records. Also `cd_0` vanishes
for every group (2.1 Check), so in 2.3 `cd_0(2ℤ) = cd_0 ℤ = 0`, not `1`.

## Pattern sweep

**Equivariant against underlying contractions and splittings.** I grepped the README and plan for
`contractib`, `contraction`, `homotopy equivalen`, `split` and `section` and read every hit:

- Conventions (CohomologyOfGroups §3.4 contract): the tree sequence already says "split over `k`,
  not `G`-equivariantly".
- 1.3 route: "split exact over `R`". This is explicit.
- 2.7 route: the splitting from `cd_R G = 0` is `RG`-linear. That is correct, because `R` is then
  `RG`-projective.
- 5.4 route: the Eilenberg–Zilber homotopy equivalence is used only for the acyclicity of the
  underlying `ℤ`-complex.
- 8.1: complexes over the ring `A`, with no group action.
- 8.8 Check: `E(ℤ/2)` is "contractible" as a simplicial set, with the free action stated next to it,
  and only acyclicity is used. Unchanged.
- 9.1: "split over `H`". This is explicit.
- 9.2 Checks and plan tests `9.2/finite_cd` and `9.2/trivial_group`: contractible over `RG`. This is
  correct: when `cd_R G < ⊤`, every syzygy is Gorenstein projective of finite projective dimension,
  hence projective. For `G = 1`, `RG = R`.

The only defective occurrence was the 3.1 Check and its plan test.

**Nonzero-ring guards in Checks.** I read every README Check and all plan tests that are stated over
a general `R`, and evaluated each one at `R = 0`. These were false or non-discriminating at `R = 0`:

- **README 2.6 and plan `2.6/BS12`.** The text said "the bound is `max(1, 2) = 2`". At `R = 0` it is
  `max(0, 0 + 1) = 1`, while `cd_0 BS(1,2) = 0`. Now guarded, with the zero-ring value.
- **README 6.4 and plan `6.4/finite_and_free`.** The text said "free of rank `r ≥ 1` is PD exactly
  when `r = 1`". Over `0` every group is PD of every dimension, because `D = 0 ≅ R¹`. Now guarded,
  with the zero-ring value.
- **README 7.1 and plan `7.1/trivial_module`.** The text said "`1/|C_G(g)|`, not `δ_[1]`". This is
  false at `R = 0`, and also at `G = 1`. It now says that the two differ for `R ≠ 0` and `G ≠ 1`
  (at `g ≠ 1`, `1/|C_G(g)|` is a unit) and coincide otherwise.
- **Plan `9.1/integers`.** "The trivial `R` has projective dimension 1" is false at `R = 0`, where
  `0` is projective. Now guarded; the README already had the guard.

Checked and true at `R = 0`, so unchanged: the 1.2 Checks on `FL`; 1.4(c) over every `R`; 1.7 and
1.8 over every `R`; 2.1 `cd_R 1 = 0`; plan `2.2/Zn_top` (`0 ≅ 0`); 5.2 torus; 6.1 `ℤ` with `D = R`;
6.2 `ℤ` and finite groups; 6.3 and 6.4 `ℤⁿ` over every `R` (both sides of 6.3(a) hold at `R = 0`, and
`D = 0` is free of rank one); 6.5 `ℤⁿ⁺¹` and the Klein bottle; 7.1 and 7.2 regular modules; the 9.2,
9.3 and 9.5 projective-coefficient Checks. Checks already guarded: 1.2, 1.4, 1.5 (second), 2.1, 2.2,
2.4, 2.6 (first), 2.7, 6.1, 6.2, 9.1 (README). The remaining Checks are over `ℤ`, `ℚ`, `𝔽_p`, a field
`K`, `ℂ` or `ℚ × ℚ`.

## Adversarial pass on the changed statements

| Statement | Instances | Values computed on each side | Result / change |
|---|---|---|---|
| 3.1 Check, tensor-induced disk | `R = ℤ, 𝔽₂, ℤ[1/2], 0`; `H = 1`, `G = ℤ/2` | Length `2 = 1·2`. Underlying `dh + hd`: `y⊗y↦y⊗y`, `a↦a`, `b↦b`, `x⊗x↦x⊗x` for every `R`. Equivariant: `2k = 1` has no solution in `ℤ` or `𝔽₂` (`2k ∈ {0}` there); `k = 1/2` in `ℤ[1/2]`; in `R = 0` everything is `0` | Check rewritten: underlying contraction, and `RG`-contraction iff `2 ∈ Rˣ` |
| 3.1(c), `R`-linear homotopy equivalences (unchanged) | `F → 0` above, `R = ℤ` | `F ≃ 0` is `RH`-linear (`H = 1`); `Ind F ≃ 0` holds `R`-linearly but not `ℤG`-linearly | (c) is correct as stated; a strengthening to `RG`-linear would be false |
| 3.1 Koszul sign, recomputed for the new Check | `d(s·x⊗x)` vs `s·d(x⊗x)` | `d(−x⊗x) = a − b`; `s(b − a) = a − b` | Consistent with the first Check |
| 1.5 Check (b), `G = ℚ` | `R = ℤ, 𝔽₂, 0`; `n = 1` | `ℤ`: `0 → ℤ`, injective, not onto. `𝔽₂`: `0 → 𝔽₂`. `0`: `0 → 0`, bijective | Guard was already present; zero-ring value added |
| 1.5 Check (e), `G = ℚ` | `R = ℤ, 𝔽₂, 0` | `ℤ`, `𝔽₂`: `[0] − [1/j!] ↦ ≠ 0` in `R[ℚ/C]` for the cyclic `C` and large `j`, so the kernel class is nonzero. `0`: every vector is `0` | `R ≠ 0` added; zero-ring value `0 → 0` |
| 2.3 Check, `2ℤ ≤ ℤ` | `R = ℤ, 𝔽₂, 0` | `1 = 1`, `1 = 1`, `0 = 0` | `R ≠ 0` added; zero ring `0 = 0` |
| 2.6 Check, `BS(1,2)` HNN bound | `R = ℚ, 𝔽₂, 0` | `max(1, 1+1) = 2` for `ℚ` and `𝔽₂`; `max(0, 0+1) = 1` for `0`, against `cd_0 = 0` | `R ≠ 0` added; zero-ring bound `1` is strict |
| 6.4 Check, finite and free PD | `ℤ/2` over `ℤ`, `ℚ`; `F₁`, `F₂` over `ℚ`; `R = 0` | `ℤ/2/ℤ`: `cd = ⊤`, not PD. `ℤ/2/ℚ`: PD₀ with `D = ℚ`. `F₁`: `D = R`, PD₁. `F₂/ℚ`: `dim D = ∞`, not PD. `R = 0`: `D = 0 ≅ R¹` for every group and dimension | Guard made explicit for both clauses; zero-ring value added |
| 7.1 Check, trivial module rank | `G = ℤ/2/ℚ`; `G = ℤ/4/𝔽₃`; `G = 1`; `R = 0` | `ℤ/2`: `(1/2, 1/2)` vs `δ = (1, 0)`. `ℤ/4/𝔽₃` (`4 = 1`): `(1,1,1,1)` vs `(1,0,0,0)`, so they differ at `g ≠ 1` although `r([1]) = 1`. `G = 1`: `(1)` vs `(1)`. `R = 0`: `0` vs `0` | Discrimination guarded by `R ≠ 0`, `G ≠ 1` |
| Plan 9.1 `integers` | `R = ℤ, 0` | `ℤ`: pd of trivial `ℤ` is `1`, so not GP. `0`: the zero module is projective, hence GP | `R ≠ 0` added (README already had it) |

## Checks run

- **Dependency check** (`tauceti-roadmap … gate --candidate packages/FinitenessAndDualityOfGroups/design/README.md --only FinitenessAndDualityOfGroups …`):

  ```text
  candidate: FinitenessAndDualityOfGroups is not in the merge order yet; checked as if placed after CohomologyOfGroups (the intake inserts it when its design is accepted)
  depcheck: 244 roadmaps, 2201 edges, 0 problem(s)
  ```

  There is no UPWARD or CYCLE line. Not being in the merge order is expected at the design stage.
- **`plan.json`** still round-trips byte-identically through its JSON formatting. The eight edited
  test statements are the only plan changes.
- **`Suggested.lean`**: this is a design-stage package and has no `Suggested.lean`. So no elaboration
  or `#check @name` comparison was run, and no Lean name was added or removed.
- **Citations resolver leads (3)**: all three are false positives.
  - "CohomologyOfGroups §4.6" is the board package `packages/CohomologyOfGroups/design/README.md`,
    heading `### 4.6 Cap product and evaluation`.
  - "BieriEckmann1974, §3.3" and "BrownGTM87, §VIII.6" are source locators under manifest keys, not
    roadmap names.

  No cross-roadmap citation was added or changed in this round.
- **Gate failures**: none were listed for this round.

## For the maintainer

- No target, Lean name, section number or cross-roadmap citation changed. Only Checks and plan tests
  were edited, so no other roadmap is affected.
- No new construction was introduced, so no ownership question arises. Ownership against open pull
  requests is as in the previous round; the overlaps lead list has no second owner.
- No suspicious instruction was found in the review text.
