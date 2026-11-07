# Repair of the design review of YangMillsConnectionsAndCaloricGauge

Files edited: `packages/YangMillsConnectionsAndCaloricGauge/design/README.md`,
`packages/YangMillsConnectionsAndCaloricGauge/design/plan.json`,
`packages/YangMillsConnectionsAndCaloricGauge/sources.toml`. One review
(REV-DESIGN-YangMillsConnectionsAndCaloricGauge, ten findings). I checked every finding against the
cited source lines, the sibling roadmaps on main (eaf17b1) and at the open heads, and the pinned
Tau Ceti (2fd255d). All ten findings are correct. Nine are applied. One (F01) is applied differently:
its suggested supplier would cite a section that roadmap does not contain.

## F01 (P2) — applied differently

**Verified.** On main, DifferentialGeometry Layer 8 (the de Rham theorem, line 816) and Layer 10 (the
degree, line 877; 10.3–10.4 integral formula, 10.5 `degree_id` and homotopy invariance) exist. At the head
of the open DifferentialGeometry revision (pull request 886, a565de6) the headings jump from Layer 5.6 to
Layer 12. Its "Relation to sibling roadmaps" (line 1379) gives these layers to DeRhamCohomologyAndDuality.
But DeRhamCohomologyAndDuality at its head (pull request 1768, 1b57dbe) imports them back
("the de Rham theorem (layer 8) … Sard on manifolds and the Brouwer degree (layer 10)", its lines 8–9
and 49–50) and states no degree itself.

**Part (i), applied.** The only use of the de Rham theorem was the comparison of the homological degree
with the smooth degree in §6.4. AlgebraicTopology Stage 6 item 5 owns that comparison (main lines 86–87
and 1560–1567). It is still there at every open AlgebraicTopology head (1652 renumbers it §6.5 and maps
"Stage 6 item 5" to §6.5 at its line 461; 1663, 1797, 1807, 1808, 1854 and 1187 keep "5. Derive the
homological characterization…"). Old → new: "DifferentialGeometry Layers 8 and 10; homological degree
compared through the de Rham theorem" → "DifferentialGeometry Layer 10 (10.3–10.5); AlgebraicTopology
Stage 6 item 5 for `h_*[S³] = deg h·[S³]`". The same change is made in Scope, the DifferentialGeometry and
AlgebraicTopology contracts, the §6.4 route and *Needs*, the Layer 6 Dependencies, and the plan.json
suppliers and 6.4 prerequisites. No DifferentialGeometry Layer 8 citation remains.

**Part (ii), not applied as suggested.** The review asks for a DeRhamCohomologyAndDuality supplier contract
saying the degree is "DeRhamCohomologyAndDuality's once that revision merges". That roadmap's head states
no degree, so the citation would name a target it lacks, and the clause is process narrative. Kept:
DifferentialGeometry Layer 10, items 10.3–10.5, on main, the only place the degree with its integral
formula is stated. `roadmaps grep` for "Brouwer degree", "mapping degree", "degreeAtRegularValue" and the
integral formula, over main and every open head, finds no other owner. LieGroupoidsPoisson (main),
AlgebraicTopology (main) and MorseNovikov (head 1161) also consume DG Layer 10. Planning the degree here
would re-plan existing work on main.

**Not settleable here.** The DifferentialGeometry revision and DeRhamCohomologyAndDuality each assign the
degree to the other. Which one owns it is for those two pull requests to decide (see the maintainer note).

## F02 (P3) — applied

Verified. Recomputed the review's `U(1)` witness: the README identity gives `2i dψ = 0`, which is false.
The source's identity (OhTataru-TopClass lines 1671–1673) is written for `A = O·A'`, that is `O = P⁻¹`. I
re-derived the identity for `A' = P·A` from the Leibniz rules. Old → new:
`(O_(∞)⁻¹PO'_(∞));x = Ad(O_(∞)⁻¹P)B' − Ad(O_(∞)⁻¹)B` → `(O'_(∞)⁻¹PO_(∞));x = Ad(O'_(∞)⁻¹P)B − Ad(O'_(∞)⁻¹)B'`.
The identity is now stated on the region where both cut-offs equal 1. The README now also spells out the
homotopy step to `c O_(∞) c''⁻¹` and adds the direction witness as a new §5.3 Check (plan.json test
`routeIdentityDirection`). The theorem statement is unchanged. No other place in the roadmap uses this
identity (grep).

## F03 (P3) — applied

Verified (OhTataru-YMHF lines 1353–1355 for Theorem 4.7, lines 1518–1519 for Theorem 4.8). Old → new in
§8.4: "`c_k` a `δ`-compatible `(−δ, S)` envelope and `d^{σ,p}_k` a `(−δ, S)` envelope" → "the sequence `c_k`
of the hypothesis a `(−δ, S)` envelope and `d^{σ,p}_k` a `(−δ, S)` envelope for `b` … that is `δ`-compatible
with `c_k`". Same pattern elsewhere: the inhomogeneous part of §8.4 had a bare `d_k`. It now names
`d^{σ,p}_k` with the same compatibility, as Theorem 4.8 requires. §8.2 now says "`1`-compatible with `c_k`"
(Theorem 4.2, lines 1111–1112). plan.json 8.4 statement and hypotheses updated to match.

## F04 (P3) — applied

Verified. OhTataru-YMHF line 275–276 and OhTataru-Threshold lines 269–274 state only qualitative
smoothness. Uhlenbeck-LpCurvature's recorded locator is Theorem 1.3, the Coulomb-gauge lemma. I took the
review's first option. Uhlenbeck-RemovableSingularities is unreadable (bot wall), and I will not guess a
theorem number from it. Old → new: one sentence citing three sources → qualitative smoothness cited to
the two read sources; "the quantitative ε-regularity, which the cited sources do not state and which is
proved here by the route below from 4.1 and 4.3". The route is the existing bootstrap. It now notes that in
the small regime every estimate is bounded by a multiple of `‖A‖_{W^{1,2}(B₁)} ≤ C₀‖F‖_{L²(B₁)}`, and that
`|D^{(n)}F|` is gauge invariant. I removed Uhlenbeck-LpCurvature from §7.2 and from its `cited_for` in
sources.toml. plan.json 7.2 statement and locator updated.

## F05 (P3) — applied

Verified (PDE main line 803 is §1.4, Embeddings; line 855 is §1.5, Poincaré, including the ball case).
Old → new: §2.2 *Needs* "PDE §1.2 and §1.4 (Poincaré on balls, …)" → "PDE §1.2, §1.4 (Sobolev embedding)
and §1.5 (Poincaré on balls)". Also updated: a new PDE contract line for §1.5, the PDE Scope bullet, the
Layer 2 Dependencies, the plan.json PDE supplier sections and the 2.2 prerequisites. The rest of the README
has no other Poincaré citation (grep).

## F06 (P3) — applied

Verified: `TauCeti.exists_contMDiffOn_normalRetraction` is at
`TauCeti/Geometry/Manifold/TubularNeighborhood/LocalInverse.lean:46` at the pin. It gives a `C^n` local
retraction with normal displacement for a `C^{n+1}` immersion of a boundaryless manifold, `n ≥ 1`. Its
docstring disclaims a global retraction and nearest-point uniqueness. Old → new: the contract said the
normal tube "gives no smoothness of the inverse"; it now cites the local retraction with its exact
content. The §1.2 route now gets local smoothness of the tube inverse from the retraction plus tube
injectivity. Compactness gives a tube `{dist < ε'}`. Nearest-point uniqueness comes from the first-order
condition plus injectivity. Updated with it: §1.2 *Needs*, Layer 1 Dependencies and plan.json 1.2
prerequisites.

## F07 (P3) — applied

Verified (AlgebraicTopology main lines 86–87; Stage 6 item 5 at lines 1560–1567). This is the same edit
as F01 part (i): the de Rham route is removed and AlgebraicTopology Stage 6 item 5 is cited in §6.4,
Scope, the AlgebraicTopology contract, the Layer 6 Dependencies and plan.json.

## F08 (P3) — applied

Verified. At the FourManifolds head (pull request 936), the unit-ball `SU(2)` Coulomb gauge is §5.3
(lines 2545–2550). BPST on `S⁴` (line 2289) and `E(A) = 8π²k + 2‖F_A⁺‖²` (line 2288) are in the Layer 5
introduction. Old → new: "FourManifolds, Layer 5, states … It is earlier in the merge order and does not
consume this roadmap." → "FourManifolds states … (§5.3) and constructs … (Layer 5, introduction).
FourManifolds does not consume this roadmap." Also changed: the §4.1 Check and the Layer 4 Examples now
cite §5.3, and so does the plan.json 4.1 test. The §6.3 Check keeps "Layer 5" because the energy formula
is in its introduction. No other process language was found (grep for merge order, revision, current,
removed, later, optional, deferred).

## F09 (P3) — applied

Verified. The `L^p` Gaffney-type estimate for 1-forms with vanishing normal component is a separate
theorem. Removing the gradient part with the scalar Neumann problem still leaves a tangential
divergence-free field, which needs its own boundary problem. Old → new: one slug → `lp-neumann-ball`
and `lp-divcurl-normal-ball`, each with its own statement, `needs` and location (both in a new section of
PDE Layer 5). I also gave `lp-neumann-ball` inhomogeneous data, `∂_ν u = ν·V`, `V ∈ W^{1,p}`, with the
compatibility `∫ f = ∫ ν·V`. Reason: §4.1's own `U(1)` Check solves `∂_ν φ = −i x^ℓ A_ℓ`, and the
homogeneous version did not cover it. All three PDE/LieGroups gap declarations now use the line form
`What <Supplier> must provide (gap:<slug>): …`. §4.1 route, §4.1 *Needs*, Layer 4 Dependencies, Scope
and plan.json gaps and 4.1 prerequisites are updated to match.

## F10 (P3) — applied

Verified (OhTataru-YMHF lines 1954–1955 claim `−1 < σ < 2`; Lemma 5.33(2), lines 2515–2516, gives
`0 ≤ σ ≤ 1`). Old → new: "the linearised solution has a limit `B_∞` in `Ḣ^σ`, `0 ≤ σ ≤ 1`" → "the
linearised solution with data `b ∈ Ḣ^σ`, `0 ≤ σ ≤ 1` (resp. `ℋ`), has a limit …". Plus a clause saying the
Corollary's wider range is not proved in the source and the statement keeps the proved range. plan.json
9.5 statement and locator updated.

## Checks run

**Dependency gate** (exact output; no UPWARD or CYCLE line):

```
candidate: YangMillsConnectionsAndCaloricGauge is not in the merge order yet; checked as if placed after GlaubermanZStar (the intake inserts it when its design is accepted)
depcheck: 240 roadmaps, 2373 edges, 0 problem(s)
```

**Citation resolver** (`roadmaps resolve` on the edited README): "Cross-roadmap citations found nowhere:
None. Lean names found nowhere: None."

**Internal consistency** (script): all four gap slugs are declared in the README by a
`What … must provide (gap:<slug>)` line. Each slug's `neededBy` in plan.json equals the README sections whose
*Needs* name it (`lp-neumann-ball`, `lp-divcurl-normal-ball`: 4.1; `hardy-inequality`: 5.2, 5.3, 6.1;
`compact-su2-subalgebra`: 7.7). The plan has 52 targets and 111 tests (110 + the new §5.3 test). No
backticked name of this roadmap's own and no LaTeX delimiters. `sources.toml` parses (12 entries).

**Suggested.lean / `#check` pass:** not applicable. The design stage has no `Suggested.lean`, so no Lean
was elaborated.

**Gate failures listed in the brief:** none were listed.

## Adversarial pass (statements added or changed)

| Statement | Instances tried | Values computed | Result | Change |
|---|---|---|---|---|
| §1.2 route: tube inverse smooth, nearest point unique on `{dist < ε'}` | `U(1)`; `{±1}`; `U(N)` | `U(1)`: `g + v = (1+t)e^{iθ}`, injective for `|t| < 1`; `dist(1+i, U(1)) = √2 − 1 ≈ 0.414`. `{±1}`: discs of radius `≤ 1` disjoint; `Re z = 0` has `dist ≥ 1`, outside `𝒰`. `U(N)`: `M = g(1+H)`, `‖H‖_F < 1` ⇒ `1+H > 0`, unique polar factor; `dist(0, U(N)) = √N ≥ 1` | all four §1.2 Checks still hold with `𝒰 = {dist < ε'}`, `ε' ≤ 1` | route rewritten (F06) |
| §5.3 identity `(O'⁻¹PO);x = Ad(O'⁻¹P)B − Ad(O'⁻¹)B'` | general Leibniz; `U(1)` witness | general: `Ad(O'⁻¹)(−O';x + P;x + Ad(P)O;x)` and `A' = P·A` ⇒ `= Ad(O'⁻¹)(Ad(P)B − B')`. `U(1)`: `dθ' = dθ + dψ`, LHS `i(−dθ' + dψ + dθ) = 0` = RHS `0`; exchanged form `2i dψ` vs `0` | sound; old form false | identity replaced; Check added |
| §5.3 conclusion from the identity | `P ≃ c`, `O'⁻¹PO ≃ c''` | `O' = P O (O'⁻¹PO)⁻¹ ≃ c O c''⁻¹` | matches "`c·O·c'`" with `c' = c''⁻¹` | none |
| §6.4 route via DG 10.3–10.4 + AT Stage 6 item 5 | `O = Φ`; BPST; constant | `h = id`: `deg 1`, `∫Φ*ω_f = −8π²`, `c₂ = −1`. BPST: `h = (x₁,−x₂,−x₃,−x₄)`, `deg = (−1)³ = −1`, `c₂ = 1`. Constant: `deg 0`, `c₂ = 0`. Hurewicz: `[id] ↦ [S³]`, a generator | all three §6.4 Checks unchanged and consistent with 1.4, 6.2, 6.3, 7.6 | citations only |
| §7.2 quantitative ε-regularity | `F = 0`; BPST dilated, `λ → 0` and `λ → ∞` | `F = 0`: `0 ≤ 0`. `λ → 0`: `‖F_λ‖²_{L²(B₁)} = 8π²λ⁴(λ²+3)/(λ²+1)³ ≈ 24π²λ⁴`, `|F_λ(0)| = √48 λ²`, ratio `→ √48/√(24π²) = √2/π` (bounded). `λ → ∞`: `|F_λ(0)| = √48 λ² → ∞` while `‖F_λ‖_{L²(B₁)} → √8 π` | sound; the smallness hypothesis is needed (the `λ → ∞` case shows it) | locator replaced by "proved here" |
| gap `lp-neumann-ball` (inhomogeneous) | `V = ∇w`, `f = Δw`; `V = 0`, `f = 1`; §4.1 `U(1)` Check | `u = w` solves it, compatibility is the divergence theorem. `f = 1`, `V = 0`: `∫f = |B₁| ≠ 0 = ∫ν·V`, no solution, so the condition is necessary. `U(1)`: `A = iα`, `f = ∂^ℓα_ℓ`, `V = α`, `∫div α = ∫ν·α` | sound; now covers §4.1's Check | restated |
| gap `lp-divcurl-normal-ball` | constant `a = e`; radial `a = x`; rotation `a = (−x₂, x₁, 0, …)`; harmonic gradient | `ν·e ≠ 0` and `ν·x = 1` are excluded. Rotation: `ν·a = 0`, `div a = 0`, `(da)₁₂ = 2`, so RHS `= 2C|B₁|^{1/p} > 0`, consistent. `a = ∇φ`, `Δφ = 0`, `∂_νφ = 0` ⇒ `φ` constant, `a = 0` (no Neumann fields on the ball) | sound | new slug |
| §8.4 envelope hypotheses | source Thm 4.7–4.8; `A = 0` | compatibility is a relation of `d` to `c` (Def. 3.4, line 915). `A = 0`: any small positive `c_k`, and compatibility then holds for every admissible `d` | sound | reworded |
| §9.5 range | `σ = 0`, `σ = 1`; `U(1)` | both endpoints are in Lemma 5.33(2). `U(1)`: `B_∞` = gradient part of `b`, bounded on every `Ḣ^σ`, but the general proof covers only `[0, 1]` | sound | clause added |

## Ownership and overlaps

- `scratch/overlaps.md` item "DifferentialGeometry Layer 8 (line 1002) dropped by 886": the citation is
  gone (F01 (i)). Item "DifferentialGeometry Layer 10 (line 986) dropped by 886": kept, citing main
  10.3–10.5. At the 886 head the content is gone, and its named successor imports it back (F01 (ii)). The
  report does not list it under "only an open revision defines": no citation uses a revision's numbering.
- New citations checked at the open heads. AlgebraicTopology Stage 6 item 5 is at every open
  AlgebraicTopology head. FourManifolds §5.3 is at the 936 head. PDE §1.5: the open PDE revision (1614)
  is written in the older "lanes" format and has no numbered §1.x at all. The same is true of every PDE
  section this roadmap cited before (§1.2, §1.4, §1.6, …). The overlaps tool does not count these as
  drops, and they resolve on main. Its Lane G is the `H¹` Neumann problem only, so both PDE `L^p` gaps
  remain real.
- Ownership of the new gap. `roadmaps grep -i 'gaffney|normal component|absolute boundary|div.?curl'`
  over main and the open heads finds one candidate, SobolevDifferentialForms (open new roadmap, 1609).
  Its §7.1 is the `L²` Gaffney identity on the cube `(0,1)ⁿ`; §7.3 is Picard compactness on bounded
  Lipschitz domains, with no `H¹` regularity there. Its Scope excludes "the `Lᵖ` Hodge decomposition and
  closed range for `p ≠ 2`". So no roadmap states the `W^{1,p}` estimate for `1 < p < ∞` on the ball, and
  the gap stays with PDE's `L^p` elliptic boundary regularity (Layer 5), next to the Neumann problem it
  is proved with.
- No id this roadmap defines was renumbered or deleted. Other roadmaps cite nothing here.

## For the maintainer

- The open DifferentialGeometry revision (886) and DeRhamCohomologyAndDuality (1768) each leave the
  Brouwer degree, the de Rham theorem, Poincaré duality and the hairy ball theorem to the other. If 886
  merges as it stands, every main citation of DifferentialGeometry Layers 6–11 breaks. That includes
  this roadmap's §6.4, AlgebraicTopology Stage 6 item 5 and LieGroupoidsPoisson. One of the two must state
  those layers, and this roadmap will cite whichever does. If the review re-raises this, it is decided by
  a human (brief, step 3a).
- New gap slug `lp-divcurl-normal-ball` (supplier PDE, Layer 5). `lp-neumann-ball` now asks for
  inhomogeneous Neumann data.
- No source fetched; no `needs-references.toml` written. The review contained no instruction-like text.
