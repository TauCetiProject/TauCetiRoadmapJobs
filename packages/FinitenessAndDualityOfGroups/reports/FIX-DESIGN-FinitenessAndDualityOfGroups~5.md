# FIX-DESIGN-FinitenessAndDualityOfGroups~5

Repair of the two findings of REV-DESIGN-FinitenessAndDualityOfGroups~4. Files changed:
`packages/FinitenessAndDualityOfGroups/design/README.md` and
`packages/FinitenessAndDualityOfGroups/design/plan.json`. `sources.toml` is unchanged because no new
work is cited. I checked both findings against the mathematics before applying them, and both are
correct. The review's "For the human reviewers" section lists no finding (it is about the settled
uncertified texts), so nothing was changed because of it.

## F01 (P2) — applied

Conventions, Hattori–Stallings rank witness: "so `r_P` is not `δ_{[1]}` although `P ≅ R` is cyclic" →
"For `R ≠ 0` and `G ≠ 1` this is not `δ_{[1]}`" (at `g ≠ 1`, `1/|C_G(g)|` is a unit, so it is nonzero).
Added the witness `ℤ/2` over `ℚ`: `(1/2, 1/2)` against `(1, 0)`. Added the note that the identity
coefficients can agree (`ℤ/4` over `𝔽₃`) and that the two functions coincide for `G = 1` or `R = 0`.

## F02 (P3) — applied

§2.7 Check "Over the zero ring the dichotomy fails (`cd = 0` for every group)" → over the zero ring
every scalar is a unit, so every finite group is in the unit-order branch with `cd_0 = 0`, as
predicted. Nontriviality is used for `cd_R G = 0 ⇒ G` finite, and `cd_0 ℤ = 0` is the counterexample
over the zero ring. Plan test `2.7/zero_ring` now says the same. The theorem keeps `[Nontrivial R]`.

## Verification of the findings

**F01.** Take `e = |G|⁻¹ Σ_g g`, an idempotent of `RG` when `|G| ∈ Rˣ`. Its Hattori–Stallings trace is
the class of `e` in `RG/[RG, RG]`, which is `Σ_{[g]} (|[g]|/|G|) [g]`. By orbit–stabiliser,
`|[g]| = |G|/|C_G(g)|`, so `r_P([g]) = 1/|C_G(g)|`. Here `|C_G(g)|` divides `|G|`, so it is a unit,
and a unit of a nonzero ring is nonzero. So for `R ≠ 0` and `g ≠ 1`, `r_P([g]) ≠ 0 = δ_{[1]}([g])`.
The degenerate cases:

- `G = 1`, `R = ℚ`: the only class is `[1]` and both functions are `(1)`. They are equal.
- `R = 0`: both functions are identically `0` for every `G`.
- `G = ℤ/4`, `R = 𝔽₃`: `|G| = 4 = 1` in `𝔽₃`, so `r_P = (1, 1, 1, 1)` and `δ_{[1]} = (1, 0, 0, 0)`. They
  agree at the identity and differ elsewhere, so the distinction has to be read at a nonidentity
  class. The new text says so.

So the unguarded Conventions sentence was false in the degenerate cases and the review's repair is
right. The §7.1 Check and plan test `7.1` (trivial-module test) already carried the guard, so the
Conventions passage now agrees with both.

**F02.** In the zero ring `0 = 1`, so every element, `|H|` included, is a unit. Every finite `H` then
has `cd_0 H = 0` (every representation is zero, Conventions "Dimensions"), which is exactly the
unit-order branch. The non-unit branch is empty. So the dichotomy does not fail over the zero ring;
the old Check was wrong. Here is how each clause of the §2.7 statement behaves over the zero ring:

- *finite subgroups of a group of finite `cd_0` have invertible order*: true, since every order is a
  unit;
- *a group of finite `cd_ℤ` is torsion-free*: does not involve the zero ring;
- *`G` finite with `|G|` a unit ⇒ `cd_R G = 0`*: true;
- *`cd_R G = 0` ⇒ `G` finite*: false, since `cd_0 ℤ = 0` and `ℤ` is infinite.

So nontriviality is used only for the last clause. It is kept on the theorem, as the review asks.
Making it clause-specific would be a restatement this round does not need.

## Pattern sweep

I searched the README and plan for every zero-ring and trivial-group control, and for every
Conventions witness or Check over a generic `R` that asserts a difference or a nonvanishing. All of
these are already correct:

- README 1.2, 1.3, 1.4, 1.5, 2.1, 2.2, 2.3, 2.6, 6.1, 6.4, 7.1 and 9.1;
- plan tests `1.2`, `1.4`, `1.5/rat_colimit`, `1.5/rat_product`, `2.1`, `2.3/2Z_in_Z`, `2.6`, `6.1`,
  `6.4`, `7.1` and `9.1/integers`;
- the Conventions witnesses for the right regular action (`H¹(ℤ, RG) ≅ R` with trivial action, which
  holds over every `R`, including `R = 0`), the finiteness index (already "any nonzero `R`"), Euler
  characteristics (over `ℚ`) and complete resolutions (over `ℤ`);
- the generic-`R` Checks of §6.2 (`ℤ` and finite groups of invertible order), §6.3 (`ℤⁿ`) and §6.4
  (`ℤⁿ` as a Poincaré duality group). These hold over `R = 0`, both sides being `0`.

The 2.7 test was the only one that claimed the wrong *direction* of failure. The Conventions rank
witness was the only unguarded difference claim. No other occurrence needed a change.

## Adversarial pass on the changed statements

| Statement | Instances tried | Values computed on each side | Result | Change |
|---|---|---|---|---|
| Conventions: `r_P` for `P = R·e` against `δ_{[1]}` | `ℤ/2` over `ℚ` | `r_P = (1/2, 1/2)` and `δ = (1, 0)` | differ at the nonidentity class | witness added |
| same | `ℤ/4` over `𝔽₃` | `r_P = (1, 1, 1, 1)` (`1/4 = 1`) and `δ = (1, 0, 0, 0)` | equal at `[1]`, differ at `g ≠ 1` | note on identity coefficients added |
| same | `G = 1` over `ℚ` | `(1)` and `(1)` | coincide | guard `G ≠ 1` added |
| same | `ℤ/2` over the zero ring | `(0, 0)` and `(0, 0)` | coincide | guard `R ≠ 0` added |
| same | `S₃` over `ℚ` (non-abelian) | `r_P = (1/6, 1/2, 1/3)` on the classes of `1`, a transposition and a 3-cycle (centralisers 6, 2, 3); `δ = (1, 0, 0)` | differ, including at `[1]` | none; consistent with §7.2's trace `(1, 1, 1)` = centraliser × rank |
| §2.7 zero-ring Check | `ℤ/2` and `ℤ/3` over the zero ring | `cd_0 = 0`; orders are units | unit branch holds | Check rewritten |
| same | `ℤ` over the zero ring | `cd_0 ℤ = 0`; `ℤ` infinite | the converse fails, so nontriviality is needed | counterexample recorded |
| same (kept control) | `ℤ/2` over `ℤ/6` | `2` not a unit; `H²(ℤ/2, ℤ/6) = ℤ/2 ≠ 0`, so `cd = ⊤` | non-unit branch holds | none |
| same (kept control) | `ℤ/2`, `ℤ/6` over `ℤ[1/2]` | `cd = 0` (order 2 a unit); `cd = ⊤` (3 not a unit, `H²(ℤ/3, ℤ[1/2]) = ℤ[1/2]/3 = 𝔽₃ ≠ 0`) | holds | none |

## Checks run

Dependency check, run after the edits:

```text
candidate: FinitenessAndDualityOfGroups is not in the merge order yet; checked as if placed after CohomologyOfGroups (the intake inserts it when its design is accepted)
depcheck: 244 roadmaps, 2201 edges, 0 problem(s)
```

There is no UPWARD or CYCLE line. `plan.json` parses as JSON.

## Notes for the maintainer

- This is the design stage, so the package has no `Suggested.lean`. No Lean was elaborated and no
  `#check @name` comparison was possible.
- No target, Lean name, section number or cross-roadmap citation changed, so no other roadmap is
  affected. No new construction was introduced, so no ownership question arises against main or the
  open pull requests.
- The three citation-resolver leads are unchanged by this round. CohomologyOfGroups §4.6 is a board
  package earlier in the merge order. "BieriEckmann1974, §3.3" and "BrownGTM87, §VIII.6" are source
  locators that the resolver read as roadmap names.
- No suspicious instructions were found in the review text.
