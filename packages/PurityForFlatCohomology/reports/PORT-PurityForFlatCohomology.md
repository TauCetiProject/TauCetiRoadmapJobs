# PORT-PurityForFlatCohomology

Branch `roadmap/purity-for-flat-cohomology`, created from main at `3b51055`; head commit `caf6827`
(`PurityForFlatCohomology: roadmap (README, Suggested.lean, metadata)`), one commit adding
`TauCetiRoadmap/PurityForFlatCohomology/{README.md,Suggested.lean,metadata.toml}` and nothing else.

## Build

    ⚠ [9012/9012] Built TauCetiRoadmap.PurityForFlatCohomology.Suggested (5.5s)
    Build completed successfully (9012 jobs).

Warnings: 7, all `declaration uses 'sorry'` (`Suggested.lean` lines 140, 151, 164, 177, 187, 194,
207, the seven sorried theorems); no other warning, no error. The Lean file was last edited before
this build; only the README changed afterwards.

## Gate

    gate PurityForFlatCohomology: set_option=0 blob=0 latex=0 tex=0 prnum=0 sorry-data=0 sorry-examples=0 residue=0 private-paths=0 imports=0 mathlib-subimports=0 no-import-mathlib=0 lean-lines=0 forbidden=0 dropped=0 readme-ids-missing=0 empty-sections=0 round-labels=0 long-fences=0 layer-ids=0 target-ids=0 depcheck=0 metadata=0 stray-files=0 dirty=0 outside-folder=0 source-material=0 OK

Dependency check (`gate --depcheck … --movable`, run after the commit):

    depcheck: 236 roadmaps, 2243 edges, 0 problem(s)

No UPWARD, CYCLE or `moved:` line.

## Draft pull request body

This roadmap plans purity for flat cohomology after Česnavičius and Scholze: for a Noetherian local
complete intersection `R` and a commutative finite flat `R`-group `G`, the fppf cohomology with
supports `H^i_𝔪(R, G)` vanishes for `i < dim R`, and for `i ≤ dim R` when `R` is regular and not a
field, together with the surrounding library: fppf cohomology with supports on the big fppf site,
the virtual dimension of a Noetherian local ring with Gabber's étale-depth bound and Zariski–Nagata
purity in virtual dimension `≥ 3`, the supported crystalline key formula over perfect schemes, the
supports, excision along finitely generated ideals and fpqc hyperdescent of flat cohomology of
animated rings, the key formula `RΓ_Z(A, G) ≅ RΓ_Z(A_inf(A), 𝕄(G))^{V=1}` and purity for perfectoid
rings, and from these the global purity theorem, Moret-Bailly's purity for torsors and gerbes,
Gabber's conjectures on the local Picard and Brauer groups of complete intersections, purity for
groups of multiplicative type, and Česnavičius's purity for the Brauer group of regular schemes with
the codimension-one and residue descriptions. It is written so that the deep local theorems rest on
commutative algebra that is itself a target (regular-sequence vanishing, Hartogs extension, the
virtual dimension) and on the perfectoid, prismatic and animated machinery of earlier roadmaps,
imported by section. `Suggested.lean` states Zariski–Nagata purity in virtual dimension `≥ 2` and
`≥ 3`, Gabber's local Picard conjecture, the vanishing of the local Picard group of a regular local
ring, Katz's theorem on Frobenius-fixed vectors, Auslander's freeness criterion and the factoriality
of regular local rings; its docstring names, for each flat-cohomological headline, the carrier the
pinned libraries lack.

The pull request was written with AI assistance (Claude Fable 5.1 drafted the port from the
accepted board package; the mathematics was checked line by line as recorded in the board report).

🤖 Generated with [Claude Code](https://claude.com/claude-code)

## Suppliers that are still pull requests

DerivedDeRhamCohomology, PerfectoidQuotients, PrismaticCohomology, PrismaticCohomologyPartII,
PrismaticCohomologyPartIII, DeformationAndDerivedPatchingAlgebra,
FiniteFlatGroupsAndIntegralPadicHodgeTheory, ArithmeticGaloisDuality,
LefschetzPencilsAndVanishingCycles. PerfectoidQuotientsPartII is a board design without a pull
request (merge order line 210); its §§Q5.2, Q5.4, Q6.3–Q6.7, Q7.1, Q7.3 and Q10.1 were read in
`packages/PerfectoidQuotientsPartII/design/README.md` and exist with the cited numbering. All other
suppliers (SchemeAndStackFoundations, LocalPurity, ModularCurves, EtaleCohomologyFoundations,
DerivedModuleAlgebra, EnhancedDerivedSheaves, PerfectoidSpaces, PurityOfBranchLocus) are on main.

## Merge-order drift and what moved

The package (reviewed when this roadmap was at merge-order line 66) called PrismaticCohomologyPartIII
(then 67) and DeformationAndDerivedPatchingAlgebra (then 69) downstream consumers and planned the
objects they also plan. The merge order now has PrismaticCohomologyPartIII at 57,
DeformationAndDerivedPatchingAlgebra at 59 and this roadmap at 211, so both are suppliers and the
port imports from them:

- **PrismaticCohomologyPartIII §6.0** (read at pull request 1070): `Prismatic.FlatCohomology.perfectDieudonneComparison`
  (the perfect-base Dieudonné classification, the perfected pro-fppf covers and the triangle
  `Rε_*G → 𝕄(G) → 𝕄(G)`), flat cohomology of animated rings by sheafification, the Bégueri
  resolution, the deformation fibre sequence (CS24 Theorem 5.2.8),
  `Prismatic.FlatCohomology.pContinuity` (Theorem 5.3.5) and `Prismatic.FlatCohomology.excision`
  (Lemma 5.4.2). The package's §§2.1–2.4 (Dieudonné modules, low-degree identifications, pro-fppf
  site, key formula) collapsed to one section §2.1, the supported key formula (4.1.8.2) and
  Corollary 4.1.9, which the triangle plus §0.2 give. Layer 3 keeps the same numbering §§3.1–3.6 with
  these contents: §3.1 the discrete smooth deformation sequence (Čes15 B.14, used in §4.2); §3.2
  supports, the `π_0`-equivalence, hyperdescent, Postnikov and étale comparison (5.2.4, 5.2.6);
  §3.3 Corollaries 5.2.9–5.2.10; §3.4 Corollaries 5.3.7–5.3.8; §3.5 Lemma 5.4.3, Theorem 5.4.4 and
  Corollary 5.4.5 (excision along finitely generated ideals from the principal case); §3.6 unchanged.
- **DeformationAndDerivedPatchingAlgebra §3.4** (read at pull request 1034): absolute local complete
  intersections with presentation independence, Cohen–Macaulayness and the flat-local criterion.
  These are exactly the package's gaps `complete-intersection-presentations` and
  `flat-local-complete-intersection` against DerivedDeRhamCohomology, which are therefore replaced by
  citations of DeformationAndDerivedPatchingAlgebra §3.4 (its regular sequences have nonzero final
  quotient; for a presentation of a nonzero local ring this agrees with the weakly regular
  sequences of Convention 1, as the contract says). The Lean predicate `IsCompleteIntersection` stays
  in `Suggested.lean` (a headline needs it and a roadmap cannot import another roadmap's module);
  the README now calls it the Lean form of that notion.
- **DeformationAndDerivedPatchingAlgebra §6.9** `localCI_parafactorial` (`Pic(U_A) = 0` for a
  Noetherian local complete intersection of dimension `≥ 4`, SGA 2 XI 3.13(ii)): the package's §7.6
  (the local Grothendieck–Lefschetz theorem) is deleted; §7.5 records geometric parafactoriality of
  such rings as a consequence; §§7.7–7.17 are renumbered §§7.6–7.16 throughout (every reference
  checked; the source citations `[CS24] §7.2` were protected). The headline
  `localPicard_subsingleton` is restated for regular local rings only (`[IsRegularLocalRing R]`),
  its complete-intersection clause being the imported theorem; `localPicard_torsion_eq_one` is
  unchanged.

The reverse direction (objects this roadmap owns that later roadmaps plan) is now:
SchemeAndStackFoundationsPartII (line 248; Layer 3's supports, finite-ideal excision, fpqc
hyperdescent, §0.2, §7.9 and the Brauer comparison §7.10) and EtaleDualityAndPerverseSheavesPartII
(line 369; §§1.4–1.5). Both are recorded under "Owned here and to be imported by later roadmaps"
and "Downstream consumers".

## Gap contracts: slug to name

| review.json slug | port rendering |
|---|---|
| `prismatic-dieudonne-perfectoid` | "What PrismaticCohomologyPartII must provide (the prismatic Dieudonné contract)"; Needs lines say "PrismaticCohomologyPartII (the prismatic Dieudonné contract)" |
| `ci-defect-additivity` | "What DerivedDeRhamCohomology must provide (the complete-intersection defect contract)" |
| `regular-tower-tilt` | "What PerfectoidQuotientsPartII must provide (the regular tower tilt contract)" |
| `complete-intersection-presentations` | no longer a gap: DeformationAndDerivedPatchingAlgebra §3.4 states it |
| `flat-local-complete-intersection` | no longer a gap: DeformationAndDerivedPatchingAlgebra §3.4 states it |

No `gap:` tag remains in the README.

## What moved from the Lean to the README

Nothing: the package's `Suggested.lean` already satisfied the acceptance-test rule (seven headline
theorems, five definitions they need, no sorry'd data, no `set_option`, `module` header with
`public import Mathlib` and two `TauCeti.*` modules, `@[expose] public section`). The only Lean
changes are the restriction of `localPicard_subsingleton` to regular local rings (its
complete-intersection clause is now DeformationAndDerivedPatchingAlgebra §6.9) and docstrings
(`IsCompleteIntersection` names its owner; `finiteEtalePullback` says it restates LocalPurity's
`FEt.pullback`; the module docstring lists the new section numbers and the imported Layer 2 and 3
material). The deleted clause is recorded in the README's §7.6 and Scope, not lost.

## Supplier replacements and duplication removals

- DerivedDeRhamCohomology gaps `complete-intersection-presentations` and
  `flat-local-complete-intersection` → DeformationAndDerivedPatchingAlgebra §3.4 (above).
- Package §§2.1–2.3 and the triangle of §2.4 → PrismaticCohomologyPartIII §6.0; package §3.1's
  animated points sequence (CS24 5.1.13), §3.2's construction and Bégueri resolution, §3.3's
  triangle, §3.4's continuity theorem and §3.5's principal excision → PrismaticCohomologyPartIII
  §6.0.
- Package §7.6 → DeformationAndDerivedPatchingAlgebra §6.9.
- The Mathlib and Tau Ceti contracts are unchanged; every name was re-located at the pins
  (`f6090c70…` Mathlib, `358314d4…` Tau Ceti, the manifest of this worktree): the twelve
  declarations and `Scheme.fppfTopology`, `RingTheory.Sequence.IsWeaklyRegular`,
  `Order.krullDim_eq_bot`, `Scheme.IsQuasiAffine`, `Module.IsReflexive`,
  `PreGaloisCategory.functorToContAction`, `localCohomology`, `WittVector.fontaineTheta`,
  `IsAzumaya`, `TauCeti.IsRegularLocalRing.isDomain` elaborated in the probe; the five Tau Ceti
  names in modules the file does not import (`TauCeti.FiniteLocallyFreeCommAffineGroupSchemeCat`
  and its `cartierDual`, `TauCeti.HopfAlgebra.pointsFppfSheaf`,
  `TauCeti.GradedAlgebra.gradedAlgebraQuotientPiece`, `TauCeti.MultiplicativeTypeAffineGroupSchemeCat`,
  `TauCeti.TorusAffineGroupSchemeCat`) were located by name and namespace in their source files
  at the pin.
- Duplication sweep by object (`roadmaps grep`, index of 2026-11-05T19:29Z, 449 pull requests, and
  main): "parafactorial" only in DeformationAndDerivedPatchingAlgebra (imported); "Purity for the
  Brauer" in ClassicalAdicEtaleCohomology only as the source of its étale-site limit lemmas (C19
  §4.10), not the theorem; "coniveau spectral" in MotivesAndAlgebraicCycles §0.5b (smooth
  varieties over a field, Bloch–Ogus) and SchemeKTheoryOperations Layer 4 (K-theory): §8.4 here is
  the supports version on arbitrary finite-dimensional Noetherian schemes, now distinguished in
  Scope; "Cohen presentation" in DirectSummandsAndBigCohenMacaulay (mixed-characteristic
  presentations of complete regular local rings, already PerfectoidSpaces §P7.16a's) and
  EnhancedDerivedSheaves §E1.6 (`completeNoetherianLocal_cohenPresentation`, characteristic `p`
  only), neither covering Cohen's theorem for all Noetherian local rings, which stays cited to
  DerivedDeRhamCohomology §0.19; "virtual dimension" elsewhere is the symplectic one; "étale depth"
  in EtaleHomotopyTypes (later, line 228) as gaps against LocalPurity; no match for Zariski–Nagata
  in virtual dimension, Gabber's conjectures, Auslander's freeness criterion, Katz's fixed basis,
  factoriality of regular local rings, or arc hyperdescent of flat cohomology.
- **Groups of multiplicative type over a base** (§7.14): GroupSchemesOverABase (pull request 1522,
  another author, Layer GS2) plans the general theory, but it is not in the merge order, so it
  cannot be cited as a supplier. §7.14 stays here, restricted to what purity needs, with a Scope
  note; if that roadmap enters the merge order before this one, §7.14's definition and structure
  bullets become citations of its GS2.1–GS2.3 and GS2.7 and only the `[m]`-factorization and the
  Zariski-local kernel presentation remain.

## Review notes applied

Of the accepted review's three P3 notes, F02 and F03 were already applied in the package; F01 (the
non-Noetherian valuation-ring Check of §1.1 was not the last Check) is applied by moving that Check
to the end of the list.

## Other README changes a reviewer would ask for

- §1.7(a): the LaTeX `\overline{\{x\}}` inside a code span is replaced by the closure `Z(x)` in
  words (the gate's `latex` and `tex` counters are 0).
- `## Source corrections` (an H2 with no precedent on main) is folded under `## References` as
  `### Notes on the sources`; the three "see Source corrections" pointers now read "see the Notes
  on the sources under References". Its SGA 2 XI 3.17(e) entry no longer says "§7.6 verifies it"
  (that section is gone) but where the hypothesis holds in the proof of 3.13(ii).
- §2.1's route names the étale topological invariance of `W_n(S) → S` (EtaleCohomologyFoundations
  §F.0.4), added to the contract.
- Line locators: none were present (checked with a grep for `line N`).

## `#check` audit

A scratch file with `#check @name` for all twelve declarations (and the pinned names above) was
elaborated once with `lake env lean` from the worktree. The elaborated types agree with the worker's
`signatures.md` for eleven declarations; the twelfth, `localPicard_subsingleton`, is now
`∀ (R : Type u_1) [CommRing R] [IsRegularLocalRing R], Subsingleton (LineBundleClass ↑(puncturedSpectrum R))`,
as the README §7.6 states. Every theorem carries its `[IsNoetherianRing R]`, `[IsAlgClosed K]`,
`[FiniteDimensional K M]`, `[Module.Finite R M]`, `[Module.IsReflexive R M]` or
`[IsRegularLocalRing R]` binder explicitly (the file has no `variable` block), so nothing was
dropped.

## Citations resolved

`roadmaps resolve` on the committed README (index of 2026-11-05T20:00Z, 452 heads): one lead,
"PerfectoidQuotientsPartII §§Q5.2", the board design the resolver does not index (its §Q5.2
exists); no Lean-name lead. Every other cross-roadmap citation was checked by heading at the
supplier's head or on main: SchemeAndStackFoundations §§0.3, 0.4, 0.6, 0.9, 0.12–0.14, 0.17, 0.21,
0.24, 1.15, 1.18, 2.1–2.3, 2.7, 2.9–2.11, 2.15, 2.22, 3.4, 4.7–4.10; LocalPurity §§1.1, 1.3, 2.1,
2.2; ModularCurves Layer 4D; EtaleCohomologyFoundations §§F.0.2, F.0.4, F.5; PurityOfBranchLocus
§0.3; DerivedModuleAlgebra §§0.K.1, 0.4, 0.25, 1.5, 1.7; EnhancedDerivedSheaves E5:animation.1–4;
PerfectoidSpaces §§P1.16–P1.18, P1.24–P1.25, P3.7, P4.15.2, P4.15.4, P7.16a, P7.17;
DerivedDeRhamCohomology §§0.19, 0.21, 1.10 (`DerivedDeRham.cohenFactorization`,
`absoluteCompleteIntersection`, `ordinaryFlatnessFromCompleteFlatness` present at head 2f774a9);
PerfectoidQuotients §§0.1, 0.2, 0.6 (the four named declarations present); PrismaticCohomology
§§2.0, 2.28; PrismaticCohomologyPartII Layer 4 (the prismatic Dieudonné functor is not stated
there, hence the contract); PrismaticCohomologyPartIII §6.0; DeformationAndDerivedPatchingAlgebra
§§3.4, 6.9 (`localCI_parafactorial` in its `Suggested.lean`);
FiniteFlatGroupsAndIntegralPadicHodgeTheory §§R07.1.40, R07.1.41, R07.2.8; ArithmeticGaloisDuality
§R02.2.4; LefschetzPencilsAndVanishingCycles §0.10. Ownership against open pull requests was
checked with `roadmaps grep` over the whole index; the brief's sibling checkouts were not needed
beyond that.

## Adversarial pass

The package had been through two red-team rounds and two reviews with computed tables; the rows
below are my own recomputation of every statement the port touched and of each headline, plus
spot checks of the untouched sections.

| Statement | Instances tried | Values computed | Result | Change |
|---|---|---|---|---|
| §2.1 key formula, `G = ℤ/p`, `Z = S = Spec A` | `A = 𝔽_p`; `A = 𝔽̄_p` | `V = φ^{-1}` on `A`; `H^0 = A^{φ=1}`: `𝔽_p`, `𝔽_p`; `H^1 = A/(φ^{-1}−1)A ≅ A/(φ−1)A` via `φ`: `𝔽_p/0 = 𝔽_p`, `0`; `H^{≥2} = 0`; agrees with `H^1(𝔽_p, ℤ/p) = Hom(Ẑ, ℤ/p) = ℤ/p` | holds | Check written out |
| §2.1, `G = μ_{p^n}`, perfect `A` | `V = p φ^{-1}` on `W_n(A)` | `V^n = p^n φ^{-n} = 0`, `V − 1` invertible, `RΓ = 0`; `μ_{p^n}(A) = 0` (reduced), `A^×` and `Pic A` `p`-divisible (Frobenius bijective, `[p] = φ^*`) | holds; swapped convention would kill `RΓ(𝔽_p, ℤ/p)` | Check kept with the swap witness |
| §2.1, `G = α_p` | perfect `S`; `𝔽_p[t]` | `𝕄 = 𝒪_S`, `V − 1 = −1`, `RΓ = 0`; torsor `s^p = t` nontrivial over `𝔽_p[t]` | perfectness needed | none |
| §2.1 corollary | `𝔽_p(s)`, `μ_p` | `H^2 = Br(𝔽_p(s))[p] ≠ 0` | perfectness needed | Check added |
| §2.1 route: étale site of `W_n(S)` | `S = Spec 𝔽_p`, `n = 2` | `W_2(𝔽_p) = ℤ/p²`, étale site that of `𝔽_p` (nil-thickening) | holds | ECF §F.0.4 cited |
| §3.1 `𝔾_m` kernel | `B = k[ε]/ε²`, `J = (ε)` | `(1+aε)(1+bε) = 1+(a+b)ε`, kernel `≅ (J,+)` | holds | none |
| §3.1 `J² = 0` needed | `B = 𝔽_2[ε]/ε³`, `J = (ε)` | `(1+ε)² = 1+ε² ≠ 1` but `2ε = 0`: `1+J ≇ (J,+)` via `1+x ↦ x` | hypothesis needed | Check added |
| §3.1 smoothness | `μ_p/𝔽_p` | `e^*L` in degrees `−1, 0`; `𝔽_p ⊕ 𝔽_p[1]` has `H^0(μ_p) = 𝔽_p ≠ 0` | three-term sequence is smooth-specific | Check reworded |
| §3.2 derived reduction | `A = 𝔽_p ⊕ 𝔽_p[1]`, `μ_p` | `RHom(e^*L, 𝔽_p[2])` in degrees `−2, −1`; `H^0(A, μ_p) = Ext¹(e^*L, 𝔽_p) = 𝔽_p`; `H^i` agree for `i ≥ 1` | matches §3.3 (`i ≥ 1`) | value written into the Check |
| §3.3 Cor 5.2.10, finite locally free | `μ_p`, `ℤ/p² → 𝔽_p` | `μ_p(ℤ/p²) = {1+pa} ≅ ℤ/p` (`x^p ≡ 1` forces `x ≡ 1 mod p`; `(1+pa)^p ≡ 1 mod p²`), `μ_p(𝔽_p) = 1`: not injective in degree 0 | bijectivity starts at `≥ 2` (with the `α_p` Check for degree 1) | Check added |
| §3.3 route | nilpotent non-f.g. ideal | `R/I = colim R/I′`, each `I′` nilpotent, `I′^{k+1} ⊂ I′^k` square-zero steps | cohomology commutes with the filtered colimit of rings (SSF §0.9) | route written |
| §3.4 Cor 5.3.7 | `ℤ_p`, `μ_{p^n}`; `𝔽_p(s)`, `μ_p` | `(ℤ_p/p)_red = 𝔽_p` perfect: `H^{≥2} = 0`, consistent with `Br(ℤ_p) = 0`; `H^2(𝔽_p(s), μ_p) ≠ 0`, `H^{≥3} = 0` | both bounds sharp as stated | Checks adjusted |
| §3.4 Cor 5.3.8 | `A = ℤ_(p)`, `A′ = ℤ_p`, `U = Spec ℚ` | generic fibres `ℚ` vs `ℚ_p`: `RΓ(ℚ, μ_p) ≠ RΓ(ℚ_p, μ_p)` but `RΓ(U_A, G)` is the animated open, computed by `p`-henselian covers, equal to that of `ℚ_p`'s side by the `arc_p` sheaf property | statement is about `U_A`, not the scheme `U` | route cites PC §2.0 |
| §3.5 Lemma 5.4.3 | `I = (x,y) = (x,x+y)` in `k[x,y]` | iterated completions agree (`k⟦x,y⟧`) | generator independence | Check added |
| §3.5 Cor 5.4.5 | `ℤ_(p)`, `μ_p`, degree 2 | `ℤ/p` on both sides (valuation mod `p`) | holds | none |
| §1.1 presentation independence | `k⟦x⟧` as `k⟦x,y⟧/(y)`; `k⟦x,y⟧/(xy)` | `2−1 = 1`; `2−1 = 1 = dim`; DDPA §3.4 gives the regular-ideal invariance, SGA2 XIV 5.2 the number | holds | citation split DDPA/SGA2 |
| §1.1 non-Noetherian | rank-one valuation ring, `𝔪 = 𝔪²` | `R̂ = R/𝔪 = k`, presentation `k → k`, `vdim = 0`, predicate true | junk, excluded by `IsNoetherianRing` in every theorem | Check moved last (F01) |
| §1.1 stability under `R^{sh}` | `R = k⟦x,y⟧/(xy)`, `k` separably closed | `R^{sh} = R`, fibre `k`; `vdim` unchanged `1` | DDPA §3.4 flat-local criterion applies (fibre a field, CI of dim 0) | bullet rewritten |
| §1.2 defect additivity | `k⟦x⟧ → k⟦x,y⟧/(y²)` | fibre `k[y]/y²`: `vdim 0`, both sides `1` | holds | contract renamed |
| §4.1 CI ⇒ CM | `k⟦x,y⟧/(xy)` | depth `1 = dim` | DDPA §3.4 | citation replaced |
| §4.3 flat-local CI | `k⟦t⟧ → k⟦t^{1/p}⟧`, tensor powers | local rings CI of dim 1 | DDPA §3.4 | citation replaced |
| §7.5 CI dim ≥ 4 parafactorial | `k⟦x_1..x_5⟧/(x_1x_2 − x_3x_4)`; 3-dim node | `Pic(U) = 0` (DDPA §6.9), depth `4 ≥ 2`; node: `Pic(U) = ℤ·(x,z) ≠ 0`, dim 3 excluded | bound 4 sharp | bullet added, Check added |
| §7.5 geometric parafactoriality | `R → R^{sh}` | closed fibre `k^{sep}` is a field, hence CI; `R^{sh}` CI of same dim (DDPA §3.4); `Pic(U_{R^{sh}}) = 0` | holds | bullet |
| §7.6 `localPicard_subsingleton` (Lean) | regular `R` of dim 0, 1, 2, 4 | `U = ∅` (Pic trivial), `Spec K` (Pic 0), `Pic(U) = Cl(R) = 0` (factorial), DDPA case agrees | Lean `[IsRegularLocalRing R]` only; no Noetherian binder needed (regular implies Noetherian) | theorem restated |
| §7.6 `localPicard_torsion_eq_one` (Lean) | 3-dim node; `A_1` surface; `k⟦x,y⟧/(x,y)²` | `Pic(U) = ℤ` torsion free; `ℤ/2 ≠ 0` excluded by `dim ≥ 3`; `dim 0`, `U = ∅`, Pic trivial, statement vacuous-true | hypotheses exact | Check added |
| §7.6 regular route | `dim R ≥ 2`; `dim R ≤ 1` | `Γ(U,𝒪) = R` (Hartogs, depth 2), `j_*L` reflexive rank 1, divisorial, trivial by UFD; `U = ∅` or `Spec K` | holds | route written |
| §7.15(b) degree 2 | CI dim 4, `𝔾_m` | parafactoriality from §7.5 (DDPA §6.9 on `R^{sh}`) | holds | reference updated |
| Notes on the sources, SGA2 XI 3.17(e) | proof of 3.13(ii) | closed points of `X = U_{R′}` have local rings CI of dim `≥ 4` with fewer equations | hypothesis holds there | sentence rewritten |
| §1.8 `zariskiNagata_*` (unchanged) | `k⟦x,y⟧/(xy)`; `A_1`; node; field | `vdim 1`: `U` disconnected; `vdim 2`: `π_1(U) = ℤ/2`; `vdim 3`: covers extend; `vdim 0`: excluded by `2 ≤` | thresholds sharp | none |
| §5.6 Katz (unchanged) | `K = 𝔽̄_3`, `F = c·φ`, `c ≠ 0`; `𝔽_3(t)^{perf}`, `F = t·φ` | fixed line spanned by a root of `x² = c^{-1}`; over the perfection `x² = 1/t` has no solution (value `−1/2 ∉ ℤ[1/3]`) | algebraic closure needed | none |
| §7.2 Auslander (unchanged) | `M = R^n`; `A_1`, `M = (x,y)` | `End = M^{⊕n}`; `End(M) = R ≇ M^{⊕r}` | hypotheses as Aus62 1.3 | none |
| §7.4 UFD (unchanged) | DVR; `k⟦x,y⟧`; `A_1` | factorial; factorial; `xz = y²` non-unique, not regular | Mathlib has no UFD instance for regular local rings at the pin (only `RegularLocalRing/Defs,Polynomial`) | none |

## Unresolved

- GroupSchemesOverABase (pull request 1522) plans groups of multiplicative type over a base in its
  Layer GS2 and is not in the merge order; §7.14 here is kept with a Scope note (above). This is for
  the maintainer when that roadmap is ordered.
- PrismaticCohomologyPartIII §6.0 does not state the supported form (4.1.8.2) or Corollary 4.1.9,
  Corollaries 5.2.9–5.2.10 and 5.3.7–5.3.8, Lemma 5.4.3 or Theorem 5.4.4; these stay here (Layers
  2–3). SchemeAndStackFoundationsPartII's board design plans finite-ideal excision and fpqc
  hyperdescent itself and says it imports the perfect-base and principal statements from
  PrismaticCohomologyPartIII; it is later in the order (248) and is told in Scope and Downstream
  consumers to import Layer 3 from here.
- EtaleDualityAndPerverseSheavesPartII (later, 369) still says at its head that
  PurityForFlatCohomology consumes its local Lefschetz theorem (its EQ.7 / §7.3); the direction here
  is the reverse (§§1.4–1.5 owned here), as the package and review recorded.
- No source was fetched; `sources.toml` was not changed. Suspicious text: none in any file read.


Pull request: #1840 (roadmap/purity-for-flat-cohomology at caf6827)
