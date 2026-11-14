# Repair of CountableStructureSpacesPartII (design, round 4)

One review, one finding. It is right and is applied as the reviewer suggested; the suggested
repair was checked against the pinned declarations before use.

## R01 (P2) — applied

**Verified.** `packages/CountableStructureSpacesPartII/design/README.md` §0.1 and plan 0.1 defined
`classIso K` only for `K : Set (RelationalConfiguration L ℕ)`. But §1.1 (and plan 1.1, API
`relabelHomeomorph_iso_iff`) applied `classIso` to a class on an arbitrary carrier `α` and to its
image on `β`. At the Tau Ceti pin, `isoSetoid` is declared with `{V : Type w}` and
`[L.IsRelational]` (`TauCeti/ModelTheory/RelationalConfiguration/Isomorphism.lean`, line 86), so it
works on any carrier. The measurable space on codes exists for every language and carrier
(`Basic.lean`, line 182). `Setoid.BorelReducible`, `borelReducible_comap` and
`borelReducible_iff_exists_eq_comap` (`BorelReducibility.lean`, lines 100–117) need only measurable
spaces. So the definition and its restriction and corestriction laws generalise with no new
hypothesis.

**Change (old → new).** `classIso K` for `K` on ℕ → `Setoid.comap Subtype.val (isoSetoid L α)` for
`K : Set (RelationalConfiguration L α)`, any carrier `α`, with relational `L`. The whole-space,
restriction and corestriction laws (§0.1; plan 0.1–0.3) are now stated on arbitrary carriers. The
§1.1 class-transport bullet now states its hypotheses and its route. `BorelComplete` is still
defined on ℕ only. Two Checks were added.

**Where the pattern was repaired** (every place where `classIso` or "invariant Borel" depended on
the carrier):
- Convention 2: classes are sets of codes on a carrier `α` (ℕ when no carrier is named).
  "Invariant Borel" now uses `Equiv.Perm α`. `classIso` is `isoSetoid L α` pulled back. Borel
  completeness is stated as defined for classes on ℕ only.
- Scope and ownership, first bullet: "on any carrier", plus the clause on how `classIso` differs
  from CountableModelCounting's restricted isomorphism (see Ownership below).
- §0.1: the definition with `[L.IsRelational]` and an arbitrary `α`. The unfolding uses the orbit
  relation of `Equiv.Perm α`. The whole-space law is stated against `isoSetoid L α`. The
  restriction law works on one carrier. The corestriction law covers
  `f : RelationalConfiguration L' β → RelationalConfiguration L α`. One new Check: `Fin 2`, one
  unary predicate.
- §1.1: the final API bullet now says "for relational `L` and any
  `K : Set (RelationalConfiguration L α)` with image `K₂`". Invariant Borel transfers to `K₂`.
  `classIso K` and `classIso K₂` reduce to each other, using the §0.1 corestriction of relabelling
  along `e` and along `e.symm`. Layer 0.1 and `IsomorphismInvariant` are added to *Needs:*. The
  `Fin 0` Check is extended with `classIso`, and a new Check pins the `Fin 3` 3-cycle direction.
- plan.json: 0.1 (statement, carrier hypothesis, `classIso_iff`, `borelReducible_classIso_univ`,
  new test `finite_carrier`); 0.2 (carrier-general statement and hypotheses); 0.3 (carriers `β`,
  `α`). Plan 0.3 also drops an unused countability hypothesis that the README never stated, so the
  two now agree. 1.1: relational `L` for the isomorphism statements, prerequisites `target:0.1`
  and `target:0.3`, the rewritten `relabelHomeomorph_iso_iff`, the extended `fin_zero` and the new
  `fin_three_direction`.

The other uses of `classIso` were checked and need no change, because all are on ℕ: Layer 1.2
`BorelComplete`, Layer 1.3 (the functional coding space uses "the isomorphism relation of `K'`",
not `classIso`), Layer 5 (1)–(4), and Layer 6 (6.2–6.5). The Layer 2.2 tag graph on
`V ⊕ Σ x, Fin (κ x + 3)` never applies `classIso` off ℕ.

### Adversarial pass on the changed statements

| Statement | Instances tried | Values computed | Result; change |
| --- | --- | --- | --- |
| 0.1 `classIso K` on carrier `α` | `α = Fin 0`, no symbols, `K = univ`; one nullary symbol; `K = ∅` | 1 code / 1 class; 2 codes / 2 classes (nullary bit true vs false, no isomorphism of empty structures); setoid on the empty type | Well-defined on every carrier; no countability needed |
| 0.1 against wrong models (equality ⊥, trivial ⊤) | `Fin 2`, one unary predicate, `K = univ` | 4 codes, 3 classes `|P| = 0,1,2`; `{0}` ~ `{1}` (so not ⊥); `∅` ≁ `{0}` (so not ⊤) | Definition determines its object; added as §0.1 Check |
| 0.1 unfolding via the orbit relation | `Fin 2` swap; `Fin 0` trivial group | Swap sends `{0}` to `{1}`, matching `isoSetoid`; on `Perm (Fin 0)` the orbit relation is equality, 2 classes = 2 classes | `isoSetoid_eq_orbitRel` holds for any `V` (line 141) |
| 0.1 whole space on `α` | `α = Fin 0` (one code); `α = ℕ` | Inclusion `univ → codes` and `x ↦ ⟨x, trivial⟩` are mutually inverse and measurable; isomorphism is preserved because the codes are equal | Holds on every carrier |
| 0.1 restriction on one carrier | `A = {P = {0}} ⊆ K = {|P| = 1}` on `Fin 3` | `classIso A` has 1 class, `classIso K` has 1 class; the inclusion is measurable and reflects isomorphism | Unchanged proof (`borelReducible_comap`) |
| 0.1 corestriction, carriers `β → α` | `K' = ∅`; `K = ∅` with `K' ≠ ∅`; `f` = relabelling `Fin 3 → Fin 3` | Vacuously true; the hypothesis "maps `K'` into `K`" fails, so nothing is claimed; the corestriction `⟨f x, _⟩` is measurable by `Measurable.subtype_mk` | Only hypothesis needed: measurable spaces (lines 100–117) |
| 1.1 relabelling direction | `Fin 3`, `e : 0↦1↦2↦0`, `P = {0}` | `restrict e.symm`: value at `w` is `P(e.symm w)`, so `P' = e(P) = {1}`; reverse `restrict e` gives `e⁻¹(P) = {2}` | Convention pinned; new Check |
| 1.1 invariant Borel transfer | `K` = all 8 codes on `Fin 3`; `K = {P = {0}}` (not invariant) | Image of univ is univ (invariant; 4 classes, sizes preserved); image `{P = {1}}` is measurable, as the preimage under the inverse relabelling; invariance is not claimed for a non-invariant `K` | Holds: `K₂ = (restrict e)⁻¹' K`; isomorphism is preserved and reflected (`Equiv.isoSetoid_encodeVia_iff`) |
| 1.1 bireducibility of `classIso K`, `classIso K₂` | `Fin 0`, `K = univ`, `e = refl`; `Fin 3`, `K = {P = {0}}` | 1/1 and 2/2 classes, identity both ways; 1/1 classes, relabelling along `e` and along `e.symm` restrict to inverse bijections `{P={0}} ⇄ {P={1}}` | Applies §0.1 corestriction twice; relational `L` now stated |
| Convention 2 "invariant Borel" on `α` | `Fin 3` all codes; `{P = {0}}` | `IsInvariantBlock (Perm (Fin 3))`: T, F; `IsomorphismInvariant`: T, F | `isomorphismInvariant_iff_isInvariantBlock` holds for any `V` (line 244) |
| `BorelComplete` stays on ℕ | `K` on `Fin 3`; plan 1.2 statement | `BorelComplete` takes `K : Set (RelationalConfiguration L ℕ)` (README §1.2, plan 1.2), so a class on `Fin 3` is outside its domain, as the reviewer asked; no consumer of `BorelComplete` uses another carrier (Layers 2–6 grepped) | No change |

### Ownership

`classIso` is this roadmap's own object. By object, the closest is CountableModelCounting Layer 0
on main: `isoSetoidOn α φ := (structureIsoSetoidOn L α).comap Subtype.val`, the restriction to
the codes of models of one sentence. Its open revision restates this on Tau Ceti's
`RelationalConfiguration`. That object cannot express `classIso` of an arbitrary, possibly
non-invariant, set, which §0.1 Checks and Layer 5 (3) need: Layer 5 (3) quantifies over measurable
sets `B` that are not necessarily invariant. So `classIso` is kept, and the scope bullet now says
in one clause how it differs. Neither pin has a declaration that restricts `isoSetoid` to an
arbitrary subtype (a grep of the Tau Ceti pin found no `classIso` and no comap of `isoSetoid`).
Ownership was checked against main and the 430 indexed open heads with `roadmaps grep`. No
roadmap on main or in an open pull request cites CountableStructureSpacesPartII, so no consumer is
affected by the widened signature.

## Checks

Dependency check, run after the final edit:

```text
candidate: CountableStructureSpacesPartII is not in the merge order yet; checked as if placed after NoncompactQuantumSymmetry (the intake inserts it when its design is accepted)
depcheck: 229 roadmaps, 2057 edges, 0 problem(s)
```

No UPWARD or CYCLE line. The roadmap is not in the merge order yet; at the design stage that is
not a defect.

`roadmaps resolve` on the README returned no cross-roadmap citations found nowhere and no Lean
names found nowhere. `plan.json` parses as JSON: 7 layers, 49 targets, `gaps` empty.

## Other notes

- No gate failures were listed for this round.
- There is no `Suggested.lean` at the design stage. So no `#check @name` comparison was run, no
  Lean was elaborated and no build is claimed. The Lean signature to carry at the package stage
  is `classIso {L : Language} [L.IsRelational] {α : Type*} (K : Set (RelationalConfiguration L α)) : Setoid K`.
- `sources.toml` is unchanged. The repair cites only pinned declarations and locators that were
  already recorded. No source was fetched and no `needs-references.toml` was written.
- No Lean name changed. `classIso` keeps its name and widens its domain; `BorelComplete` and
  every headline name are unchanged.
- No suspicious instructions were found in the review or the other material read.
