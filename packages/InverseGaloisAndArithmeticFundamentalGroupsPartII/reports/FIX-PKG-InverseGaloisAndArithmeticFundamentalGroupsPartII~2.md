# FIX-PKG-InverseGaloisAndArithmeticFundamentalGroupsPartII~2

Repair round for the review `REV-PKG-InverseGaloisAndArithmeticFundamentalGroupsPartII` (two
findings). Files changed: `packages/InverseGaloisAndArithmeticFundamentalGroupsPartII/README.md`
and `packages/InverseGaloisAndArithmeticFundamentalGroupsPartII/sources.toml`. `Suggested.lean`,
`metadata.toml` and `design/plan.json` are unchanged.

## REV-PKG-InverseGaloisAndArithmeticFundamentalGroupsPartII/F01 (P1) — applied differently

**Verified.** ArithmeticStatisticsPartVIII at the head of its open pull request (the index of
2026-11-06) has `### 5.16 Homological stability of Hurwitz spaces, uniform Betti numbers and the
uniform trace estimate` with the subtargets the review lists (component ring, *Tor spectral
sequences over graded algebras*, K-complex bound, arc spectral sequence, EVW Theorem 6.1 for every
nonsplitting pair, Corollary 6.2 for centre-free `G` only, cell models, both uniform Betti bounds);
its scope says it imports nothing from this roadmap and that §5.16 states what §5.19 consumes;
its §5.19 proof cites its own target *uniform betti numbers of hurwitz schemes*. The package's
claim that §5.19 assumes a hypothesis (HS) was wrong.

**Not settled here: ownership.** Which roadmap owns EVW §§3–7 is a board decision (a scope and
merge-order question), as the review itself says; no edit of this package decides it, and the
package was not reduced to citations of §5.16 (the review's option 3 is a rejection, not a repair).

**Applied (both outcomes need these).** Scope and ownership now ends with a paragraph naming
ArithmeticStatisticsPartVIII §5.16, what it states, that it imports nothing from here, what this
roadmap proves beyond it (unmarked stability for every `G`, §4.5; full-monodromy stability with a
shift uniform in `n`, §4.3; the étale bound for every centreless `G`, §5.3), that the two
statements have a single owner in the build order, and that nothing here is cited from it.
Downstream consumers: the (HS) sentence → "§5.19 uses the bound for the generalized dihedral data
in the form stated by §5.16 (*Uniform Betti numbers of Hurwitz schemes*); §5.3 and §§4.2, 4.3, 4.5
state the general forms". The DGAInfinity gap `dga-graded-tor-spectral-sequences` stays as declared
(same slug in `design/plan.json`), with one added clause that §5.16's *Tor spectral sequences over
graded algebras* states the same spectral sequences and that the generic graded `Tor` is
DGAInfinity's.

**Applied (makes the package movable before ArithmeticStatisticsPartVIII).** The only supplier
later than ArithmeticStatisticsPartVIII (merge order 160) was MordellLawrenceVenkatesh (176),
cited for §§5.1, 5.7, 5.9, 5.17. Every citation of it is gone:

- §2.1 now defines `Mod(D, P)` itself (isotopy classes relative to `∂D` of orientation-preserving
  homeomorphisms fixing `∂D` pointwise and `P` setwise), with four API bullets and three Checks,
  and proves the comparison `π_0 Diff(D, P; ∂D) ≅ Mod(D, P) ≅ TauCeti.BraidGroup n ≅ π_1(Conf_n)`
  by the smooth route: the evaluation bundle `Diff(D, ∂D) → Conf_n(int D)` by Palais's local
  cross-section theorem (PAL60, Theorem A and §3), contractibility of `Diff(D, ∂D)` by Smale
  (SMA59 lines 15–17, 124–129, plus a collar from GeometricTopology Layer 1), and the homotopy
  exact sequence (Tau Ceti `TauCeti.TopCat.serreFibrations`, pinned at
  `TauCeti/Topology/Homotopy/SerreFibration/Basic.lean:107`; AlgebraicTopology Stage 8 for the
  pair sequence). The topological evaluation fibration of MordellLawrenceVenkatesh §5.17 and its
  surface definitions (§5.1) are no longer needed; the Alexander trick (`Mod(D, ∅) = 1`) is an API
  bullet with ALEX23.
- §2.5 *Needs:* dropped MordellLawrenceVenkatesh §5.7; cutting along arcs is already in
  `gap:geomtop-arc-isotopy-extension`.
- The gap `geomtop-marked-disc-diffeomorphisms` now asks for the bijectivity of
  `π_0 Diff(D, P; ∂D) → Mod(D, P)` with `Mod(D, P)` of §2.1 (the `needs` text in
  `design/plan.json` already said "the topological mapping class group of the marked disc relative
  to the boundary" and is unchanged).
- The supplier subsection `From TauCetiRoadmap.MordellLawrenceVenkatesh`, the scope bullet and the
  Layer 2 Dependencies entry are deleted; References gain SMA59, PAL60, ALEX23.

After this, every supplier of the package is on main (ReductiveGroups, ClassifyingSpaces,
AlgebraicTopology, GeometricTopology, DGAInfinity) or at merge-order line 49 (the parent), so the
board can place the package before ArithmeticStatisticsPartVIII and announce to that roadmap that
§5.16 is to import by name; the depcheck below shows no `moved:` line because the package is
already below all its suppliers.

**Sources.** SMA59 (Smale 1959, AMS open archive) is certified: Theorem B (lines 15–17) is the
contractibility of the diffeomorphisms of the square that are the identity near the boundary, in
the `C^r` topology, and Theorem 4 (lines 124–129) its parametrised form. PAL60 and ALEX23 are
recorded `uncertified` by their locators: the Palais DOI is paywalled and the EuDML record and the
GDZ resolver returned landing pages only; the PNAS page and PDF returned HTTP 403 and the PubMed
Central copy served a browser-check page. Farb–Margalit was not added (de Gruyter landing page,
not needed once the smooth route is used).

## REV-PKG-InverseGaloisAndArithmeticFundamentalGroupsPartII/F02 (P3) — applied

Verified: `roadmaps grep --fixed` finds neither `HurwitzAction.action` nor `BraidOrbitMonoid` on
main or at any open head, and the parent at its head declares neither; the titles *The Hurwitz
braid action* and *The braid-orbit monoid* occur in the parent's README. The two parenthesised
backticked names are deleted from the supplier bullets; the titles remain. No other README line
attributes a backticked name to the parent (grep).

## Pattern search

The whole README was searched for `MordellLawrenceVenkatesh`, `Mod(`, `Homeo`, `Alexander`,
`HurwitzAction`, `BraidOrbitMonoid` and `ArithmeticStatisticsPartVIII`: every occurrence is in the
places edited above. `Suggested.lean` and `metadata.toml` mention none of them.

## Adversarial pass on the new and changed statements

| Statement | Instances | Values computed | Result | Change |
| --- | --- | --- | --- | --- |
| §2.1 `Mod(D, P)` definition | `n = 0`; `n = 1`; `n = 2` | `n = 0`: coning isotopy `H_t = t·h(·/t)` on the disc of radius `t`, identity outside, fixes `∂D` for all `t ∈ (0, 1]`, so `Mod(D, ∅) = 1`; `n = 1`, `P = {0}`: `H_t(0) = t·h(0) = 0`, so `Mod(D, {0}) = 1`; `n = 2`: `Mod(D, P) ≅ B_2 ≅ ℤ` | definition determines the object | none |
| §2.1 wrong model, isotopies free on `∂D` | `n = 2` | the boundary-parallel Dehn twist is `σ_1²`; rotating a collar isotopes it to the identity, so the half twist acquires order 2 (the group becomes the stabiliser of one of three marked points on `S²`, `Sym(2)`); in `Mod(D, P)` the index of `⟨σ_1²⟩` in `ℤ` is 2 | excluded by "relative to `∂D`" | Check added |
| §2.1 wrong model, `P` fixed pointwise | `n = 2` | pure braid group `P_2 = ⟨σ_1²⟩ = 2ℤ ≠ ℤ`; the half twist is excluded; `Mod(D, P) → Sym(P)` is onto | excluded by "setwise" | Check added |
| §2.1 evaluation bundle | `n = 0`; `n = 1`; `n = 2` | `n = 0`: `Conf_0 = pt`, fibre `= Diff(D, ∂D)`, bundle trivial; `n = 1`: `Conf_1 = int D` contractible, so `π_0 Diff(D, {x}; ∂D) ≅ π_0 Diff(D, ∂D) = 1 = B_1`; `n = 2`: `Conf_2(int D) ≃ S¹`, `π_1 = ℤ = B_2` | consistent | none |
| §2.1 orientation | any `n` | a diffeomorphism fixing `∂D` pointwise has, at a boundary point, differential fixing the boundary tangent and mapping inward vectors inward: determinant positive, so orientation-preserving; the `⁺` is automatic | clause added | none |
| §2.1 contractibility of `Diff(D, ∂D)` | the annulus as negative control | `π_0 Diff(A, ∂A) ∋` core Dehn twist `≠ 1`; in the sequence `π_1(Conf_1(int A)) → π_0 Diff(A, {x}; ∂A) → π_0 Diff(A, ∂A)` the point pushes map to `1`, the core twist to the generator, so the boundary map is not onto | hypothesis needed | Check added |
| §2.1 sign witness | `n = 2`, `(a, b) = ((12), (23))` in `S₃` | counterclockwise exchange of adjacent points lifts to the positive half twist, which acts on tuples by `(a, b) ↦ (aba⁻¹, a) = ((13), (12))`, the convention of §IG.3.2 (EVW16 line 102) and the half twist of ReductiveGroups Layer 11A | matches §0.3 | none |
| Scope paragraph on ArithmeticStatisticsPartVIII | §5.16 subtargets at head | Corollary 6.2 there is for centre-free `G` only; here §4.5 is for every `G` (coinvariants with `|G|` invertible need no freeness); §4.3 has one `D` for all strata; §5.3 is for every centreless `G` and rational nonsplitting generating `c` | claims match both texts | none |
| Downstream consumers | §5.19 proof at head | it cites its own *uniform betti numbers of hurwitz schemes* with `λ > max(|G_A|, q, n)`; no hypothesis (HS) exists there | sentence replaced | applied |

## Checks

**Depcheck** (`gate --depcheck … --movable`):

```
depcheck: 242 roadmaps, 2477 edges, 0 problem(s)
```

No UPWARD, CYCLE or `moved:` line.

**Resolve** (`roadmaps resolve` on the README): no cross-roadmap citation and no Lean name found
nowhere (the earlier lead `HurwitzFibre.smul_tuple` was a false positive, declared at
`Suggested.lean` line 298).

**Elaboration.** `lake build TauCeti.GroupTheory.SpecificGroups.Braid.Basic` from the content
checkout (its object file was missing): `Build completed successfully (3125 jobs)`. Then
`lake env lean …/Suggested.lean`: exit 0, exactly two warnings, `declaration uses 'sorry'`
at lines 505 and 522 (the two headline theorems). The only change to the file this round is its
header: the worker's `lake build` logged "imports `Mathlib` from package `mathlib`, which is
designed for use with the module system; consider adding `module`", so the file now begins with
`module`, `public import Mathlib`, `public import TauCeti.GroupTheory.SpecificGroups.Braid.Basic`,
and `@[expose] public section` precedes the namespace (the form of
`TauCetiRoadmap/CoboundaryExpansion/Suggested.lean` on main). The definitions with real bodies in
the `BraidAction` section elaborate unchanged under `module`; no declaration, docstring or
statement changed, and the line numbers above shift by four accordingly.

**Signatures.** A scratch copy of `Suggested.lean` with `#check @name` for all 40 declarations
appended inside the namespace elaborated without error and printed 40 signatures. The headline
types are `∀ {G : Type} [Group G] [Fintype G] (c : ConjClasses G), IsNonsplitting c → ∃ m, 0 < m ∧
(∀ g ∈ c.carrier, g ^ m = 1) ∧ ∃ A B, ∀ (k : Type) [Field k], (Fintype.card G : k) ≠ 0 → ∀ full p n,
A * p + B < n → …` and the analogous `∃ C, …` for `uniform_betti_bound`; `markedStabilizer` and
`unmarkedStabilizer` carry `{G : Type} [Group G] [Fintype G]` explicitly. Nothing changed (the header
change does not touch any signature); this agrees with README §4.5 and §5.2.

**Gate failures listed in the brief:** the two identical module-header warnings on
`Suggested.lean`, repaired by the header change described under *Elaboration*; nothing else
was edited for them.

## For the maintainer

- The ownership of EVW §§3–7 between ArithmeticStatisticsPartVIII §5.16 and this package is a
  board decision; this round made the package consistent with either outcome and movable before
  ArithmeticStatisticsPartVIII (its last supplier in the merge order is now the parent at line 49).
  If the board keeps ownership with ArithmeticStatisticsPartVIII, the review's option 3 applies and
  the package is rejected rather than repaired.
- MordellLawrenceVenkatesh is no longer a supplier of this roadmap. No name other roadmaps cite
  changed; no Lean name changed.
- `sources.toml` gained SMA59 (certified), PAL60 and ALEX23 (uncertified, cited by locator). No
  `needs-references.toml` is left: the two unreadable texts are settled as uncertified.
- Ownership against open pull requests other than those named in the brief was not checked.
