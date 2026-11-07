# Review of PseudolineArrangementsAndOrientedMatroids (pull request #1523 at 1ac270d)

**Verdict:** needs changes

Incremental re-review of the 38 lines of `TauCetiRoadmap/PseudolineArrangementsAndOrientedMatroids/`
changed since 703fdd4 (the head the previous review read): the retirement of
`gap:coxeter-geometric-faithfulness` in favour of RootSystems §1.3 (Scope, supplier contracts,
Layer 10 preamble, 10.1, Layer 10 Dependencies, two docstrings of `Suggested.lean`), the new
"Not a target" paragraph on 1-skeletons of abstract polytopes at the end of Layer 9, and the
Araujo-Pardo–Hubard–Oliveros–Schulte reference. The gate passes on this head (my run with the
merge order: every scanner 0, the targeted build with `sorry` the only warning); the dependency
check reports `depcheck: 240 roadmaps, 2370 edges, 0 problem(s)` with no UPWARD, CYCLE or
`moved:` line; no file outside the folder changes; the pins are unchanged since 703fdd4 (Tau Ceti
`2fd255d9`, Mathlib `1b1ccf4b`), so the previous report's probe and signature results stand for
the Lean statements, none of which changed. The previous finding R01 is repaired in substance (the
gap is gone, the owner is cited where the theorem is consumed, and the citation resolves on main);
one sentence of its prescribed repair was not applied, and it still cites a layer RootSystems does
not have (R01 below).

## R01 (P3) — Scope cites "RootSystems (Layers 2 and 4)" for Weyl groups as Coxeter systems and the longest element; main's RootSystems has no Layer 4 and consumes the longest element

Location: `TauCetiRoadmap/PseudolineArrangementsAndOrientedMatroids/README.md` line 58–60
("RootSystems (Layers 2 and 4) owns Weyl groups as Coxeter systems and the longest element of a
Weyl group, and its §1.3 owns the faithfulness …") and line 200–201 ("Its Layers 2 and 4 are named
in Scope and not used").

Claim: RootSystems owns, in its Layers 2 and 4, Weyl groups as Coxeter systems and the longest
element of a Weyl group.

Witness: RootSystems on main (`TauCetiRoadmap/RepresentationTheory/RootSystems/README.md`, the
copy this roadmap must cite since #1196 revises an existing roadmap) has exactly three layers
(line 248 "Layer 1: geometric roots and faithful representations", line 432 "Layer 2: the marked
Weyl presentation", line 504 "Layer 3: classification and concrete Weyl groups"); its Scope (line
11–20) lists "longest elements" among what is "consumed through the contracts below" from Mathlib
and Tau Ceti and says "These are not additional construction targets". At the open head of #1196
the Layer 4 is "coefficient reflections and the greatest root" (its README line 804), not Weyl
groups as Coxeter systems. So the deferral names a section that exists nowhere and credits
RootSystems with an object it does not own. The previous review's repair asked for this line to be
replaced; the new §1.3 clause was appended to it instead.

Repair: replace line 58–60 by "RootSystems owns the general Coxeter geometric sign and
faithfulness theorems (its Layer 1) and the marked Weyl presentation (its Layer 2); its §1.3 owns
the faithfulness of the geometric representation of every Coxeter system
(`geometric_faithfulness`) and its transport to `I → ℝ`, which 10.1 consumes. Longest elements
and chambers are Mathlib's and Tau Ceti's (RootSystems' supplier contracts) and are not used here."
and line 200–201 by "Its Layer 2 is named in Scope and not used." The pull request description's
ownership paragraph still describes the retired gap ("owned by no roadmap on main … declared as
the supplier gap gap:coxeter-geometric-faithfulness"); it is outside the folder and is not a
finding, but a human approver reads it, so it should say what line 197–201 now says.

## Previous findings

- R01 — partly repaired: line 197–201 "**From RootSystems.** §1.3, `geometric_faithfulness`:
  `CoxeterSystem.geometricRepresentation` is injective for every Coxeter system … and its
  transport to `I → ℝ`"; line 1384, 1391–1394, 1425 and `Suggested.lean` line 79–80, 614–615
  cite RootSystems §1.3; `gap:coxeter` occurs nowhere in the folder. The Scope line 58–60 was
  not replaced as the repair asked (R01 above).

## Verified sound

**Changed passages, checked at this head.**

- The citation RootSystems §1.3 resolves on main: `TauCetiRoadmap/RepresentationTheory/RootSystems/README.md`
  line 335 "### 1.3 Faithfulness and transport", line 337 "Prove `geometric_faithfulness`: ρ is
  injective for every Coxeter system" (Humphreys §5.4, Corollary, the same locator as this README's
  line 197–199), line 357–359 "For finite I, transport to `I → ℝ` through
  `Finsupp.linearEquivFunOnFinite`; the transported representation is exactly Tρ(w)T⁻¹, with the
  same simple-generator formula"; its `Suggested.lean` line 59–61 `theorem geometric_faithfulness
  {I W : Type*} [Group W] {M : CoxeterMatrix I} (cs : CoxeterSystem M W) : Function.Injective
  cs.geometricRepresentation`. The same section and theorem exist at the head of #1196 (its README
  line 515–517). RootSystems is on main, so the dependency check accepts the citation; it is
  earlier than this roadmap in the sense the brief requires. The supplier contract (line 197–201),
  the Layer 10 preamble (line 1384), 10.1 (line 1388–1394, `*Needs:*` now "RootSystems §1.3
  (`geometric_faithfulness`)"), the Layer 10 Dependencies (line 1425) and the two docstrings
  (`Suggested.lean` line 79–80, 614–615) all say the same thing; nothing in the folder still
  declares or cites a gap on RootSystems, and the README's gaps are now `gap:gmap-arbitrary-darts`
  alone (unchanged, still precise and minimal as checked in the previous report).
- 10.1 keeps `geometricRepresentationFun` as the carrier that makes the 10.2 headline statable
  (the file cannot import RootSystems' module); its docstring (line 606–607) says it is the
  transport along `Finsupp.linearEquivFunOnFinite`, and the README (line 1391–1392) now says the
  injectivity is consumed from RootSystems' transport rather than proved here. Elaborated type at
  this head (the worker's signature list, unchanged from 703fdd4):
  `geometricRepresentationFun : {B W : Type*} → [Finite B] → [Group W] → {M : CoxeterMatrix B} →
  CoxeterSystem M W → Representation ℝ W (B → ℝ)` and
  `geometricRepresentationFun_cartographic_injective : ∀ n, Function.Injective
  ⇑(geometricRepresentationFun (stringCoxeterMatrix n 0 ⋯).toCoxeterSystem)`; `[Finite B]` is in
  the type, so no binder was lost.
- The new paragraph (line 1362–1367) against Araujo-Pardo–Hubard–Oliveros–Schulte, arXiv
  1203.5175 (`ahos2013`, fetched by the service from arXiv): line 78 fixes the standing
  hypotheses (a finite connected simple graph, no loops or multiple edges) and line 298–300 is
  Theorem 3.1 (a connected properly edge-coloured `r`-regular graph gives an abstract polytope of
  rank `r`, simple, with 1-skeleton isomorphic to the graph); line 305–307 says the colourful
  polyhedron of `K₄` with its unique 1-factorisation is the hemi-cube `{4,3}/2`. The paragraph
  states exactly this and no more. Printed page: Theorem 3.1 is on p. 9 of the arXiv version; the
  README cites the arXiv id, so the numbering read is the numbering cited.
- The paragraph's two consequences recomputed. (i) Diamond condition between the least face
  (rank −1) and an edge (rank 1): exactly two faces between them, so an edge has two distinct
  vertices and no loop; 9.3 (line 1288–1290) defines abstract polytopes with the diamond property,
  so the condition is the roadmap's own. 8.3 (line 1193–1194, 1205) keeps loops in the skeleton of
  a map and gives the projective plane `aa` with one vertex and one loop as a Check, so "unlike
  the skeletons of maps in 8.3" is right. (ii) The hosohedron `{2, n}` (`n ≥ 2`): 2 vertices,
  `n` edges all joining the same two vertices, `n` digons, `2 − n + n = 2`; the diamond
  condition holds at every rank pair (two vertices per edge; a vertex and a digon have the
  digon's two edges between them; an edge lies in exactly two digons), so it is an abstract
  3-polytope whose 1-skeleton has multiple edges, as stated.
- The hemi-cube witness: the three colour classes of `K₄` are its three perfect matchings; each
  pair of matchings is a 4-cycle, so the 2-faces are 3 quadrilaterals on 4 vertices and 6 edges,
  `4 − 6 + 3 = 1`, the hemicube `{4,3}/2` on the projective plane; consistent with 9.4–9.5's
  convention that `{p,q}/2` is the antipodal quotient.
- "Not a target" is a scope statement, carries no `*Needs:*` line, and adds no object: Layer 9's
  Dependencies line (line 1375–1376) is unchanged.
- The reference entry (line 1512–1513) matches the paper read (authors, title, journal, arXiv id,
  Theorem 3.1).

**Gate and dependency check.** Worker's gate at 1ac270d: every counter 0, OK. My run (`gate …
--base origin/main --order merge-order-candidate.txt`): `set_option=0 blob=0 latex=0 tex=0
prnum=0 sorry-data=0 sorry-examples=0 residue=0 private-paths=0 imports=0 mathlib-subimports=0
no-import-mathlib=0 lean-lines=0 statement-hygiene=0 forbidden=0 dropped=0 readme-ids-missing=0
empty-sections=0 round-labels=0 long-fences=0 layer-ids=0 target-ids=0 depcheck=0 metadata=0
stray-files=0 dirty=0 outside-folder=0 source-material=0 OK`, exit 0 (the targeted build of
`TauCetiRoadmap.PseudolineArrangementsAndOrientedMatroids.Suggested` inside it, `sorry` the only
warning). Dependency check (`gate --depcheck … --movable`): `depcheck: 240 roadmaps, 2370 edges,
0 problem(s)`, no UPWARD, CYCLE or `moved:` line. `git diff --stat origin/main...HEAD` outside the
folder: empty. The folder is at line 386 of the merge order.

**Lean statements.** The diff touches two docstrings only (`Suggested.lean` line 79–80 and
614–615); every declaration's statement is byte-identical to 703fdd4 and the pins are the same, so
the previous report's one-tactic probe (28 sorried theorems, none closing under `rfl`, `simp`,
`infer_instance`, `trivial`, `decide`, `norm_num` or `exact Finite.of_fintype _`) and its
signature comparison (73 declarations, no lost binder) carry forward. The file has 29
occurrences of `sorry`: 28 theorems and the docstring's mention. The headline list is unchanged:
the covector axioms, the walls theorem, Sylvester–Gallai, the Felsner–Weil bijection,
stretchability, the non-Pappus results, the hemi-icosahedron, the torus group order and the
cartographic faithfulness are stated; the docstring (line 60–80) names the unstatable ones with
the carrier each lacks, and now names RootSystems §1.3 as the supplier of the faithfulness.

**Ownership and overlaps.** The overlaps tool lists no open pull request changing this roadmap,
no dropped id in either direction, and SurfaceTopology (#271) and RootSystems (#1196) as the
closest roadmaps. RootSystems' Scope on main claims the general Coxeter faithfulness theorem and
this roadmap now consumes it rather than owning it: one owner. `gap:gmap-arbitrary-darts` on
SurfaceTopology is unchanged (its carrier `GMap n D [Fintype D] [DecidableEq D]` at the head of
#271, README line 290–293, as in the previous report). No roadmap on main or at the open heads
cites PseudolineArrangementsAndOrientedMatroids.

**Adversarial table.** Rows for statements the diff leaves untouched are carried from the previous
report (at 703fdd4), whose values I did not recompute; the first four rows are this round's.

| Statement | Instances tried | Values computed | Result | Change |
|---|---|---|---|---|
| Scope line 58: RootSystems "Layers 2 and 4" own Weyl groups as Coxeter systems and the longest element | RootSystems on main; at #1196 | main: Layers 1, 2, 3 (line 248, 432, 504), longest elements consumed (line 11–20); #1196: Layer 4 = coefficient reflections (line 804) | Layer 4 absent on main, longest element not owned | R01 |
| 10.1–10.2 faithfulness supplier | RootSystems main §1.3 | line 337 `geometric_faithfulness` for every Coxeter system; line 357–359 transport to `I → ℝ`; Lean line 59–61 `Function.Injective cs.geometricRepresentation` | citation resolves, one owner | none |
| Layer 9 "Not a target": AHOS Theorem 3.1 and `K₄` | `K₄` with its 1-factorisation; hosohedron `{2,n}` | `K₄`: 3 matchings, pairs give 4-cycles: `(4, 6, 3)`, `4 − 6 + 3 = 1`, hemicube (ahos2013 line 305–307); `{2,n}`: `(2, n, n)`, `χ = 2`, `n` parallel edges, diamond condition at `(−1,1)`, `(0,2)`, `(1,3)` | sound | none |
| "no loops, unlike 8.3" | projective plane `aa` | 8.3 Check: 1 vertex, 1 edge, a loop (line 1205); diamond at `(−1,1)` forces 2 distinct vertices | sound | none |
| 2.2 `exists_orientedMatroid_covectorsOf` | `[Finite E]`; the infinite arrangement | `(1/m,0)`: `fₙ < 0` (`n > m`), `gₙ < 0`; `X fₙ = +`, `X gₙ = −`: no `Z` (previous report) | sound | none |
| 2.2 `exists_chirotope_covectorsOf` | `L = {0}`; `E = ∅` | `r = 0`: `Chirotope 0 E` has two members, `covectorsOf = {0}` (previous report) | sound | none |
| 2.1 (L3) Check | five vectors, `X = (+,+)`, `Y = (+,−)` | `sep = {e₂}`, no `Z` (previous report) | sound | none |
| 2.2 counts | three vectors; three independent; alt5 | `13`, `6`; `27`; `83 = 1 + 20 + 40 + 22` (previous report) | sound | none |
| 2.3 `three_le_ncard_walls` | three lines; alt5; near-pencil | walls `3`; `3,…,5`; `3` (previous report) | sound | none |
| 2.7 converse and uniqueness | `E = Fin 1`; arcs `{b : χ(a,b) = 1}` | no `Chirotope 2 (Fin 1)`; arcs of size `|E| − 1` determine the order (previous report) | sound | none |
| 3.1 `crossX` field | `ofLines`, `i = j`; `i > j` | `0`; `(b j − b i)/(a i − a j)` symmetric (previous report) | sound | none |
| 3.4 `chiFun_ofLines` | 200 random arrangements, 1257 triples | `sign(crossX jk − crossX ij) = sign det` on all (previous report) | sound | none |
| 3.6 route | `n = 2`, `χ = −alt` | `R = {none}`; inputs 1.5, 1.7, 2.7, 3.3 (previous report) | sound | none |
| 4.5 Levi's triangle theorem | near-pencil; three lines; alt5; pencil plus two | element walls `4,4,4,6`; `4,4,4`; `3,3,3,3,3`; `3,4,3,4,4` (previous report) | sound | none |
| 4.5 flips | alt5, all 10 triples | legal at `123, 125, 145, 234, 345` (previous report) | sound | none |
| 7.4 residues | tetrahedron on `S₄` | `{1,2}`: `6,6,6,6`; `{0,2}`: six of 4; `{0,1}`: four of 6 (previous report) | sound | none |
| 8.4 (ii) Check | three elements | `48` vs `24` (previous report) | sound | none |
| 9.6 `torusGroup` | `n = 2, 3, 4, 5` | `24, 108, 192, 300`; orders `(3,3,2)` then `(3,6,2)` (previous report) | sound | none |
| 10.1 Gram entries | `m = 2, 1, 0` | `0, 1, −1` (previous report) | sound | none |
| 1.4 Plücker Check | `(1,0),(0,1),(1,1),(1,2)` | `1 − (−1) + (−2) = 0` (previous report) | sound | none |
| 3.7 counts | 3 and 4 elements | `(3,6,4)`, 24 flags, `χ = 1`; `(6,12,7)`, 48 flags, `χ = 1` (previous report) | sound | none |

**Sources.** The seeded sample's targets (0.2, 1.5, 2.4, 2.6, 3.3, 3.4, 3.5, 4.1, 4.4, 5.1, 6.1,
7.2, 7.4, 7.5, 9.3) are untouched by the diff; their locators were read in the previous rounds
(BLSWZ and McMullen–Schulte by locator only, the rest at the cache lines the previous report
gives) and nothing in the diff cites or depends on them except 9.3's diamond property, re-read
above. The only new locator is `ahos2013` Theorem 3.1, verified at line 298–300.

## Not verifiable

- BLSWZ, *Oriented Matroids*; McMullen–Schulte §2A, §2E, Theorem 2E11; Coxeter–Moser §8.4;
  Bondy–Murty Theorem 10.28; Knuth, *Axioms and Hulls*: no legal copy, cited by locator (unchanged
  from the previous report).
- The published Israel J. Math. version of Araujo-Pardo–Hubard–Oliveros–Schulte was not read; the
  arXiv version's numbering (Theorem 3.1) is the one the README cites.
- Ownership against open pull requests was checked through the overlaps tool and the `rev/`
  checkouts of #271 and #1196 named in the brief.

## Source issues

- none
