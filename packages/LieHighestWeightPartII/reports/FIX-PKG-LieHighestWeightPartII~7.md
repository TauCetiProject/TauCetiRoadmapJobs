# FIX-PKG-LieHighestWeightPartII~7

Repair of the findings of REV-PKG-LieHighestWeightPartII~6 (two findings, both P3). Only `packages/LieHighestWeightPartII/README.md` changed; `Suggested.lean`, `metadata.toml`, `sources.toml` and `design/plan.json` are untouched.

## F01 (P3) — applied

Downstream consumers, the GlobalShtukasAndFunctionFieldLanglandsPartII §8.0 paragraph. Old: "the number of weights `μ` of `τ` with `2⟨μ, ν⟩ = i` … because the eigenvalues of `τ(q^ν)` are the positive reals `q^⟨μ,ν⟩`"; "that section adds only the normalization … and the relative Weyl group refinement". New: "counted with multiplicity"; `τ(q^ν)` acts on the `μ`-weight space by `q^⟨μ,ν⟩`; adjoint `SL₃`, `ν = 0` witness (8 against 7); the three items of Scope (normalization, relative Weyl group, Aubert-involution identity).

Evidence: GlobalShtukasAndFunctionFieldLanglandsPartII at its open head defines `n_(ν,τ)(i)` as the number of weights "counted with multiplicity" (its README §8.0, recognition paragraph). Scope and ownership here (the paragraph after the bullet list) lists three items left to §8.0, the third being the Aubert-involution identity, which belongs to that roadmap's §8.0 (its §8.6 *Needs* line cites "§8.0 (weight recognition and `L_F(AZ(π)) = L_F(π)`)"). Pattern search: "number of weights", "adds only" and "with multiplicity" occur nowhere else in README.md or Suggested.lean. §5.3 already speaks of multiplicities, so it needed no change.

## F02 (P3) — applied

Old: no mapping of the former labels. New: at the end of Scope and ownership, one sentence (former stages N0–N5 are Layers 0–5, except labels the table gives another roadmap) and a table headed "Former label (N0–N5 numbering) | Present location", one row per former label group, following the reviewer's table with two refinements, described below.

Evidence: the labels are this roadmap's own former numbering. `design/plan.json` has nodes `LieHighestWeightPartII:N0/zero-triple` … `N5/real-part-recognition`. Three open roadmaps cite them at their heads: SmoothRepresentationsOfLocalGroupsPartII (Scope, "N0–N2 owns Jacobson–Morozov…", "N5 owns the highest-weight half-integrality test"; the *Needs* line "LieHighestWeightPartII N5 positive-real-part"; and "N5 (highest-weight half-integrality)"), TwistedAutomorphicDescents ("N0, nilpotent-orbit", "N2, classical-partitions") and SheafConvolutionOnAbelianVarieties ("§N2"). The brief allows a former-numbering table for this. The labels are written without backticks, so that the gate does not read them as Lean names of this roadmap.

Each row was checked against the design node it maps and against the target heading:
- §0.1–§0.3, §1.1–§1.4, §2.1–§2.4, §3.1–§3.5, §4.1 and §5.1–§5.5 are this README's headings.
- NilpotentOrbits on main: N0.2 (internal Jordan decomposition), N0.3 (orbits, centralizers, conjugacy relation), N2.1 (Jacobson–Morozov, algebraic `SL₂`-homomorphism, conjugacy with fixed `e`), N2.4 (finite quotient of nilpotents by conjugacy) and N4 (type `A` partitions).
- ReductiveGroups Layer 10B on main ("Induction, Weyl modules and simple heads").
- ReductiveGroupsPartIII §0.3 ("Group Chevalley restriction") and §0.5 ("Characters separate semisimple classes") at its open head.

The two refinements:
1. "N0 nilpotent-orbit" maps to NilpotentOrbits N0.3 **and N2.4**. The design node includes the orbit set of nilpotent elements, which is N2.4's quotient. The row also points to §§0.2–0.3 for triple conjugacy.
2. "N2 classical-partitions" maps to §2.1 and §2.2, and the row adds that the type `A` partition classification, which was part of the design node, is NilpotentOrbits N4. Scope already says so.

Repair test: "N5 positive-real-part" resolves to §5.4, "N5 (highest-weight half-integrality)" to §5.2, "N0–N2 … Jacobson–Morozov" to NilpotentOrbits N2.1, "N0, nilpotent-orbit" to NilpotentOrbits N0.3/N2.4, "N2, classical-partitions" to §§2.1–2.2, and "§N2" to Layer 2.

## Checks

- `lake env lean packages/LieHighestWeightPartII/Suggested.lean`, run from the content checkout: exit 0. Exactly nine `declaration uses sorry` warnings, at lines 78, 95, 109, 126, 149, 176, 196, 215 and 264, and nothing else. All `TauCeti.*` imports were present; nothing was built.
- `#check @name`: `Suggested.lean` is unchanged this round, so no declaration's type changed. Its 14 elaborated signatures (`scratch/signatures.md`, from the current file) were read against the README: no binder was lost and no statement changed.
- Dependency check (`gate --depcheck … --movable`): `depcheck: 207 roadmaps, 1901 edges, 0 problem(s)`. No UPWARD, CYCLE or moved line.
- `roadmaps resolve` on the README: "Cross-roadmap citations found nowhere: None. Lean names found nowhere: None." This covers the new citations of NilpotentOrbits N0.2, N0.3, N2.1, N2.4 and N4, ReductiveGroups Layer 10B and ReductiveGroupsPartIII §0.3 and §0.5.
- No gate failures were listed for this round.

## Adversarial pass (changed statements)

| Statement | Instances | Values on each side | Result |
|---|---|---|---|
| `n_(ν,τ)(i)` (with multiplicity) `= weightPattern q (τ(q^ν)) i` | adjoint `SL₃`, `ν = 0`, any `q > 1` | left: 6 roots + zero weight of multiplicity 2 = 8 at `i = 0`, 0 elsewhere; right: `τ(1) = id` on an 8-dimensional space, eigenvalue `1 = q^0`, so 8 at 0, 0 elsewhere. Distinct-weight count would give 7. | holds; the old wording was wrong |
| same | adjoint `SL₂`, `ν = (½, −½)`, `q = 4` | pairings `2⟨α,ν⟩ = 2, 0, −2`, one weight each; eigenvalues `4, 1, ¼` have absolute values `4^(2/2), 4^0, 4^(−2/2)`; both sides are `1, 1, 1` at `2, 0, −2` | holds |
| same | standard `SL₂`, `ν = (¼, −¼)` | pairings `±½`, no integer, so left is 0 for every `i`; eigenvalues `q^(±1/4)` have absolute value `q^(i/2)` only for `i = ±½`, so right is 0 | holds (non-geometric `ν`) |
| same | `τ = 0`; `τ` trivial | 0 = 0; `1` at `0` on both sides | holds |
| same, junk value `q = 1` | standard `SL₂`, `ν = (½, −½)` | right: every eigenvalue has absolute value `1 = 1^(i/2)` for all `i`, so 2 at every `i`; left: 1 at `±1` | fails, excluded by `q > 1` as stated |
| "geometric `ν` ⇔ `IsGeometricPoint q (q^ν)`" | `ν = (½, −½)`, `(¼, −¼)`, `q = 4` | `|q^⟨μ,ν⟩| = q^(i/2)` ⇔ `2⟨μ,ν⟩ = i` (`q > 1`); first: pairings `±1` integral and absolute values `4^(±1/2)`; second: pairings `±½` and absolute values `4^(±1/4)`, no integer `i` | holds both ways |
| §8.0 adds three items | Scope and ownership paragraph; §8.0 at its head | normalization by residue cardinality; `W_rel`-refinement; Aubert-involution identity, the same three in both | consistent |
| Former-label table | every row (17) against the design node and the target heading | e.g. N0/nilpotent-orbit (orbit set of `N(L)`, triple orbits) → NilpotentOrbits N0.3, N2.4 and §§0.2–0.3; N2/classical-partitions (types `A`, `B`, `C`, `D`) → §§2.1–2.2 and NilpotentOrbits N4; N5/character-separation (traces separate `W`-orbits in a torus) → ReductiveGroupsPartIII §0.3 + §0.5 | every row resolves to a heading that exists |

## Notes for the maintainer

- The three citing roadmaps (SmoothRepresentationsOfLocalGroupsPartII, TwistedAutomorphicDescents, SheafConvolutionOnAbelianVarieties, all later in the merge order) also declare supplier contracts against this roadmap:
  - triple centralizers, the graded open orbit, and Bala–Carter tables with centralizer types;
  - rational nilpotent orbits (`gap:rational-nilpotent-orbits`) and classical dominance (`gap:classical-dominance`);
  - a minuscule-weight table (`gap:minuscule-weight-table`).

  None of these is planned here. Scope says that rational forms of nilpotent orbits are treated by neither this roadmap nor NilpotentOrbits. Whether this roadmap, NilpotentOrbits or a new Part takes them is a scope decision outside this package; no edit was made for them.
- No name of `Suggested.lean` changed and no section was renumbered. The new table only adds a mapping, so citations of this roadmap's present §-numbers are unaffected.
- Ownership against the open pull requests was checked with `roadmaps grep`/`roadmaps show` for the objects touched (weight multiplicity functions, N-labels). No new object is stated, so no new owner question arises.
- No source was fetched and no `needs-references.toml` was written: no change needed a new text.
