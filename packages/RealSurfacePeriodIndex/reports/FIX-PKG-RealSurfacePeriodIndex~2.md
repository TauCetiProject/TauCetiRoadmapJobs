# FIX-PKG-RealSurfacePeriodIndex~2

Repair round for the findings of REV-PKG-RealSurfacePeriodIndex. Files edited:
`packages/RealSurfacePeriodIndex/README.md`, `packages/RealSurfacePeriodIndex/sources.toml`.
`Suggested.lean`, `metadata.toml` and `design/plan.json` are unchanged (no finding touches a Lean
statement, and the three declared gaps stay as they are).

## F01 (P2) — applied

Verified at the AlgebraicTopologyPartII head: Layer 14 has §§14.1–14.3 only; the Ext-stalk
comparison is that roadmap's `gap:semialgebraic-ext-stalk` on MotivesAndAlgebraicCycles §7.6a,
and §15.6's Needs and Check "H^q(G, ℤ[G]^k) = 0 for q > 0, as needed for the truncation
isomorphism" are exactly our §8.5 step 1. MotivesAndAlgebraicCycles §7.6a at its head has no
Ext-stalk text, so the input is not cited from it directly.

Old → new: scope bullet, AlgebraicTopologyPartII contract, §8.5 step 1, §8.5 Needs and Layer 8
Dependencies: "AlgebraicTopologyPartII §14.4" → "AlgebraicTopologyPartII §15.6", whose
truncation step obtains the vanishing from MotivesAndAlgebraicCycles §7.6a; the computed stalk
value H^q(G, ℤ[G]^k) = 0 (Shapiro) stays as a sentence of step 1. The §14.4 entry of the contract
is removed; no "§14.4" remains.

## F02 (P3) — applied

Verified at the head: "7.4 Twisted Bockstein and component formula", "12.1 Real
self-intersection and Stiefel–Whitney", "12.2 Transverse mod-two surface loops".

Old → new, every occurrence: AlgebraicTopologyPartII §7.6 → §7.4 (6 places: scope, contract,
§1.3 step 2 and Needs, Layer 1 Dependencies, §4.4 step 1 and Needs, Layer 4 Dependencies);
§12.3 → §12.1 (6: scope, contract, §9.1, §9.8, §9.9, Layer 9 Dependencies); §12.4 → §12.2
(8: scope, contract, §6.4, Layer 6 Dependencies, §8.5, §8.8, Layer 8 Dependencies). The
unprefixed "§7.6" of §§9.6, 9.9, 9.15 is this roadmap's own §7.6 and is untouched.

## F03 (P3) — applied differently

EnriquesSurfaces at its head documents the labels ("E1a–E1f denote §§1.1–1.6" in "How to read
the build"), so the labels do exist; section numbers are cited anyway. The reviewer's mapping is
wrong for E1d: π₁(S(ℂ)) = ℤ/2, H³(C) = ℤ/2 and the ℤ/2 Brauer term of the 2-primary Kummer
sequence are §1.4 "Coefficient-specific cycle comparisons" (its H³ = ℤ/2 computation from the K3
cover), not §1.3. §1.1 has H²(O) = 0, the kernel {O, K} of Pic → Num and the connected étale K3
cover; §1.3 has c₁ : Pic(S) ≃ H²(S_an, ℤ).

Old → new: scope bullet, supplier contract, §9.2 (three places), §9.3 (three places), Layer 9
Dependencies: E1a → §1.1, E1c → §1.3, E1d → §1.4; the contract's §1.4 entry now names π₁ = ℤ/2,
H³ = ℤ/2 and the Brauer term.

## F04 (P3) — applied

`roadmaps grep --fixed` for each of `IsEnriques`, `enriques_characterization`,
`enriques_baseChange`: no match on main or at any open head. WeilConjectures WC.7 (§7.12 at its
head) states the Enriques condition in prose: smooth proper geometrically connected surface,
numerically trivial canonical bundle, χ(O) = 1, stable under field extension and isomorphism.

Old → new: the three names are dropped everywhere (scope, contract, §9.2 statement, Check,
Needs, Layer 9 Dependencies). §9.2 now defines a real Enriques surface as a smooth projective
geometrically connected S/ℝ whose S_ℂ satisfies the Enriques condition of WC.7; the Check says S
itself satisfies it iff S_ℂ does, by stability under field extension (K numerically trivial and
χ(O) = 1 are unchanged by base change).

## F05 (P3) — applied

Verified at the ResolutionOfSingularitiesCharacteristicZero head: "### 5.1 Principalization",
"### 6.2 SNC compactification", "### 7.8 Field and affinoid specializations"; its `Suggested.lean`
declares only `exists_resolution` (line 82: proper surjective resolution with smooth source,
isomorphism over the smooth locus, for generically reduced finite-type schemes).

Old → new: the contract cites §5.1 (principalization), §6.2 (SNC compactification), §7.8 (field
resolution, Lean form `exists_resolution`); the 18 further occurrences in §§1.6, 2.9, 2.10, 6.13,
7.4, 7.5, 8.10 and the Layer 1, 2, 6, 7, 8 Dependencies lose the backticks ("principalization",
"SNC compactification", "field resolution"). No backticked `principalization`,
`sncCompactification` or `resolution_field` remains.

## F06 (P3) — applied

Verified against Crossref: 10.1007/BF01235330 is Ischebeck, Arch. Math. 35, 138–139;
10.1007/BF01235331 is Bröcker, *Reelle Divisoren*, 140–143; 10.1007/BF02566440 is
Degtyarev–Kharlamov, Comment. Math. Helv. 71, 628–663 (BF02566441 is Lackenby, 664–677);
10.1007/BF01231498 is Colliot-Thélène–Parimala, Invent. Math. 101, 81–99 (BF01231497 is
Adolphson–Sperber, 63–79).

Old → new: README References and `sources.toml` entries BRO80, DK96, CTP90: DOIs and URLs set to
BF01235331, BF02566440, BF01231498; manifest `authors`, `title` and `venue` set to the cited
works; keys, locators and `uncertified` status unchanged.

## F07 (P3) — applied

Verified by reading every Checks list. Old → new: 30 repeated bullets deleted (§0.1 three, §0.3
one, §0.4 two, §0.6 three, §0.12 two, §2.1 one, §3.1 two, §3.2 one, §3.4 two, §4.1 two, §5.1
one, §5.4 two, §5.9 one, §6.2 one, §6.12 one, §8.1 one, §8.2 one, §8.5 one, §9.2 two), keeping
the fuller phrasing and folding the extra content of a pair into the kept bullet (§0.1 ℂ and
ℚ(√2), §3.4 "E empty iff Δ smooth, and then T₀ = T", §5.9 the H⁰(K_S) = 0 reason). §8.7 has no
repeated bullet (its n = 2 Check and its étale Check are different cases) and is unchanged. Every
edited definition keeps at least three Checks (§0.1 four, §0.3 six, §0.4 five, §0.6 seven, §0.12
five, §3.1 four, §3.2 five, §3.4 four, §4.1 five, §5.1 four, §5.4 four, §5.9 four, §6.2 four, §6.12
four, §8.1 four, §8.2 four, §8.5 four, §9.2 four).

Empty Needs lines, filled with what each target actually uses rather than the reviewer's list
where that list did not match the proof: §2.6 "Mathlib `Module.finrank`; Mathlib `Metric.ball`"
(as suggested; both added to the Mathlib contract); §5.7 "§2.2; SchemeAndStackFoundations §2.6"
(the Kodaira–Spencer contraction φ_λ is defined in §2.2 through Griffiths' formula, and the
boundary maps of the normal-bundle sequences are coherent cohomology; the suggested §5.4 and
`relativeHodgeBundles` are not used by §5.7's proof); §7.12 "SchemeAndStackFoundations §2.6
(`projectiveSpace_cohomology`); SchemeAndStackFoundations §5.10" (h⁰(ℙ⁴, O(2)) = 15, and
Riemann–Roch with intersection numbers for h⁰(−mK) and the degree count; the suggested
`amplePowersAndFixedTwists` is not used, very ampleness of −K being VA13 Remark 1.11). The Layer
2, 5 and 7 Dependencies lines lose the empty entry and gain the new items (Layer 5 gains "Layer
2" through §5.7's use of §2.2).

## F08 (P3) — applied

The pins have moved since the package was written: the content checkout's lake manifest now pins
Mathlib `1b1ccf4b` and Tau Ceti `2fd255d9`, not the `6b7abb3c` / `a91d3aaf` the README named. At
the current pin `not_anisotropic_baseChange` is at `LinearAlgebra/QuadraticForm/BaseChange.lean:389`
(the reviewer's 341 was at the previous pin). Pattern repair: every file:line locator of the
Mathlib and Tau Ceti contracts was re-verified at the checkout and updated where it had shifted
(BrauerGroup Defs.lean:100; RingPreordering Defs.lean:115 and IsOrdering 287; IsRealClosed
Basic.lean:52 and isSquare_neg_of_not_isSquare 80; Anisotropic Basic.lean:1054; baseChange
TensorProduct.lean:128; signType Real.lean:78; QuadraticAlgebra Defs.lean:44, 387;
height_le_spanFinrank KrullsHeightTheorem.lean:282; brauerCohomologyEquiv Comparison.lean:274 and
_unique 317; not_anisotropic_baseChange 389); the unchanged ones (IsSemireal 38, trdeg 45,
EssFiniteType 40, isCompact_univ_pi 1172, weightedSumSquares' 177, instCommGroup 174, mk 139,
BrauerGroup.baseChange 136, exists_eq_mk_centralDivisionRing 69, index 99/112/255,
brauerGroupMulEquiv 102, hyperbolicPlane 76) were confirmed. The two hash lines now say "at the
pin of the content repository's lake manifest", so they cannot go stale again.

§1.5: B19 p. 68 (file line 199) only invokes the Lefschetz principle and CT05 p. 382 (lines
150–155) defines the index as least degree and gcd of splitting degrees, as the reviewer says.
Old → new: the locator sentence now says the statement is the Lefschetz-principle step of B19
§0.6, p. 68, invoked there without proof, and is proved here by spreading out
(SchemeAndStackFoundations §0.9) from CT05's gcd description of the index (§2.2, p. 382). The proof
steps and Needs (§0.12; SchemeAndStackFoundations §0.9) already said this.

## Checks

- `lake env lean Suggested.lean` from the content checkout, after `lake build` of the three
  imported Tau Ceti modules (their object files were missing at the new pin): exit 0, eight
  "declaration uses `sorry`" warnings (lines 80, 89, 101, 111, 122, 132, 140, 152), nothing else.
  Re-run after the header repair below with the same result.
- `#check @name` for all nine declarations in a scratch copy: elaborated; each type carries its
  binders as in the file (`Algebra.EssFiniteType`, `Algebra.trdeg … = 2`, `¬ IsSemireal`,
  `Invertible (2 : K)`, `FiniteDimensional K V`, `4 < finrank` / `5 ≤ finrank`, the universal
  `hA` over real closed `R : Type u`) and agrees with the README statements of §§2.9, 2.10, 7.4,
  7.5, 7.8, 7.10, 7.11, 7.13. No signature changed.
- Dependency gate (`gate --depcheck … --movable`): `depcheck: 242 roadmaps, 2487 edges,
  0 problem(s)`; no UPWARD, CYCLE or moved line.
- `roadmaps resolve` on the README: no cross-roadmap citation and no Lean name found nowhere
  (the earlier two leads, AlgebraicTopologyPartII §12.4 and §14.4, are gone).
- Mechanical scan: no `*Needs:* .`, no `; ;`, no LaTeX delimiters, no machine path, no process
  words.

## Adversarial pass on the changed statements

| Statement | Instances tried | Values computed | Result | Change |
|---|---|---|---|---|
| §9.2 real Enriques surface via WC.7's condition | S_ℂ Enriques: K of order 2, χ(O) = 1 − 0 + 0 = 1; K3: χ = 2; abelian: χ = 0; bielliptic: K numerically trivial, χ = 0; blow-up of an Enriques: K·E = −1 | only the Enriques case satisfies "K numerically trivial and χ(O) = 1"; in characteristic 0 that forces q = 0, p_g = 0, K ≠ 0 of order 2 | holds; equals the old definition | wording only |
| §9.2 Check: condition on S iff on S_ℂ | S over ℝ with S_ℂ Enriques | χ(O_S) = χ(O_{S_ℂ}) = 1 by flat base change; K_S numerically trivial iff K_{S_ℂ} is (intersection numbers unchanged) | holds | new Check |
| §8.5 step 1, Ext stalks on the circle | n = 2, one free orbit: stalk ℤ[G]; n = 4, two orbits: ℤ[G]² | H^q(G, ℤ[G]^k) = 0 for q > 0 by Shapiro; H⁰ = ℤ^k | holds; input is AlgebraicTopologyPartII §15.6's, from its gap on MotivesAndAlgebraicCycles §7.6a | citation |
| §1.5 locator sentence | ℚ̄ ⊂ ℂ, α = (x, y): ind = 2 both sides (Springer twice); ℝ ⊂ ℂ, ℍ: 2 vs 1 (negative control, k not algebraically closed) | 2 = 2; 2 ≠ 1 | holds | locator |
| §3.4 merged Check | Δ smooth: E = ∅, T₀ = T; Δ with a node: E ≠ ∅ | iff in both directions | holds | merged |
| §5.9 merged Check | ℙ²_ℝ, R a line, A₀ = O(1) | H⁰(K) = H⁰(O(−3)) = 0 so (iv) empty; (iii) H¹(ℙ¹, O(1)) = 0 | holds | merged |
| §2.6 Needs | ℝ, Γ = ℤ, n = 2, Ω = (0, ∞) | ball B(c, ρ) of radius > 2 meets 1 + 2ℤ | inputs are finrank and balls only | Needs |
| §5.7 Needs | constant family: φ_λ = 0 both ways; quartic with a line: onto ℂ | §2.2 supplies φ_λ; §2.6 of SchemeAndStackFoundations the boundary maps | Needs |
| §7.12 Needs | d = 4: 15 − 13 = 2 quadrics; d = 3: 10 − 10 = 0 | h⁰(ℙ⁴, O(2)) = 15 from `projectiveSpace_cohomology`; h⁰(−2K) from Riemann–Roch | Needs |
| F06 DOIs | each corrected DOI resolved at Crossref | authors, journal, volume, pages as cited | holds | manifest |

## Worker repair: module-system header

The worker's build logged "imports `Mathlib` from package `mathlib`, which is designed for use
with the module system; consider adding `module`" for `Suggested.lean`. The file now starts with
`module`, imports Mathlib and the three Tau Ceti modules as `public import`, and opens
`@[expose] public section` before the namespace, the form of
`TauCetiRoadmap/CoboundaryExpansion/Suggested.lean` on main. No declaration, docstring, binder or
name changed; the README needed no edit (it never states the import line). `lake env lean`
elaborates the file with exit 0 and only the eight `sorry` warnings listed above.

## For the maintainer

- The pins moved between rounds (Mathlib `1b1ccf4b`, Tau Ceti `2fd255d9`); the Tau Ceti modules
  `TauCeti.Algebra.CentralSimple.Index`, `…BrauerGroup.Group`, `…BrauerGroup.BaseChange` had no
  object files and were built with `lake build` before elaboration. All file:line locators of the
  supplier contracts now refer to this pin.
- No name of this roadmap cited by other roadmaps changed. The Ext-stalk vanishing used in §8.5 is
  routed through AlgebraicTopologyPartII §15.6, whose own gap `gap:semialgebraic-ext-stalk` on
  MotivesAndAlgebraicCycles §7.6a supplies it; this package declares no new gap.
- Ownership against open pull requests was checked through `roadmaps grep` and `roadmaps resolve`
  over the 459 open heads for the names and sections this round touched.
- Uncertified sources (BCR, ARA75, SPR55, EL73, BRO80, DK96, CTP90, SER06, SCH94, GG73, BRE97,
  DIM85, DIK00) stay cited by locator; nothing was added to `needs-references.toml`.
