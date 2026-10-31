# FIX-RT-PurityForFlatCohomology~1

Merged findings of red-team round 1: review a (17 findings, `F01`–`F17`) and review b (6 findings,
`F01`–`F06`). The two reviews number their findings independently, so the ids `F01`–`F06` occur in both;
their findings do not overlap in content, so each is settled once below. The first seventeen sections are
review a's findings, in order; the six sections after the "Review b" heading are review b's.

## F01 (P1) — applied

§1.4(c): "for bounded constructible `K`, `H^i_𝔪(R, K)` is dual to …" → "if `R` is strictly henselian, then
for a bounded constructible complex `K` of `ℤ/ℓ`-modules …". The witness holds: for `R = 𝔽_2`, `ℓ = 3`,
`K = ℤ/3`, `i = 1`, the left side is `ℤ/3` and the right side is `0`. CS24 line 1364 reduces to strictly
henselian `R` first. Added the finite-field negative Check. §1.5 already reduces to strictly henselian `R`
before it uses (c), so it is unchanged.

## F02 (P1) — applied

§3.2 support triangle: `RΓ(Spec(π_0 A) ∖ Z, G)` → `RΓ(U_A, G)`, where `RΓ(U_A, G)` is now defined as the
derived limit over animated fppf `A′` with `Spec π_0(A′) → U` (CS24 lines 2291–2296, §5.2.5, p. 55). Added
the Check `A = k ⊕ k[1]`, `G = 𝔾_a`, `Z = ∅`: the result is `fib(id) = 0`, whereas the classical open
gives `k[1]`. The same pattern occurs in §3.4, which uses `RΓ(U_A, G)`; the notation is now defined.

## F03 (P1) — applied

§7.3 route: `Hom(𝒪_G ⊗ 𝒪_Y, 𝒪_Y) ≅ Hom(𝒪_Y, 𝒪_Y)` → the coaction `a` induces `Hom(𝒪_G, 𝒪_Y) ≅ Hom(𝒪_Y, 𝒪_Y)`,
`f ↦ mult ∘ (f ⊗ id) ∘ a`, with source `𝒪_Y^{⊕r}` (CS24 lines 3687–3700). Added the Check for the trivial
`(ℤ/2)_k`-torsor: the corrected sides have dimensions 4 = 4, while the old source has dimension 8.

## F04 (P1) — applied

§7.6 route: "injectivity of `Pic(U_{R′}) → Pic(U_R)` and, by induction, parafactoriality" → the isomorphism
of SGA 2 XI Lemme 3.17 for `X = U_{R′}`, `Y = U_R`. Its hypotheses are listed: depth ≥ 2 and ≥ 3 at closed
points (these give Leff), `depth R ≥ 4`, and parafactoriality of the closed points of `X`, which holds by
induction at every closed point. The route also says why Lemme 3.16's injection goes in the wrong
direction (SGA2 lines 3815–3852). Added PurityOfBranchLocus §0.3 (localization) to *Needs*, and a
Source-corrections bullet on the printed "y ∈ Y" in 3.17(e).

## F05 (P1) — applied

Supplier contract: "§0.4 `coherent_extension` (coherence of `j_*F` …)" → the actual statement (a coherent
extension exists, and it does not assert coherence of `j_*F`). §0.6 `reflexive_extension_of_depth` was
added with its exact statement (SchemeAndStackFoundations README lines 616, 715 on main). §7.3 now uses
`reflexive_extension_of_depth`: `𝒪_Y` is finite locally free, hence reflexive, and depth ≥ 2 holds at the
closed point. This also supplies the reflexivity that §7.2 needs. *Needs* §0.4 → §0.6.

## F06 (P3) — applied

§2.2 Check: "the étale `ℰxt^1` is `A/(φ − 1)A`" → `A/(φ − 1)A` is the presheaf value `H^1_fppf(A, ℤ/p)`,
and its étale sheafification, the `ℰxt^1`, is `0`. For `A = 𝔽_p` the presheaf value is `𝔽_p` and the sheaf
is `0`. The main statement already specifies sheafification (CS24 lines 1519–1533).

## F07 (P3) — applied

§5.7 Check: added "for `a` a nonzerodivisor (all `a_i ≠ 0`)", with `μ_p(A[1/a]) = μ_p(K)`, because roots
of unity are integral over each `A_i`. For `a = 0` both sides are `0`. The values are `ℤ/p` on both sides
and `0` on both sides respectively.

## F08 (P2) — applied

Suggested.lean docstring: "there is no grading on the quotient …" → the grading exists
(`TauCeti.GradedAlgebra.gradedAlgebraQuotientPiece`, `TauCeti/RingTheory/GradedAlgebra/Homogeneous/Quotient.lean:88`).
What is missing is `𝒪(1)` on `Proj` and its class in `LineBundleClass`: no twisting sheaf was found under
`Mathlib/AlgebraicGeometry/ProjectiveSpectrum` or `TauCeti/AlgebraicGeometry/ProjectiveSpectrum`. The
declaration was added to the Tau Ceti supplier contract and to the §7.9 *Needs*.

## F09 (P2) — applied

Added three theorems to Suggested.lean and named each in the README:
- `frobeniusSemilinear_exists_fixed_basis` (§5.6), in the reviewer's fixed-basis form, which is
  equivalent to Katz's isomorphism (the README says why);
- `free_of_endomorphisms_iso_pi` (§7.2);
- `isRegularLocalRing_uniqueFactorizationMonoid` (§7.4). This uses the Tau Ceti instance
  `TauCeti.IsRegularLocalRing.isDomain`, imported from `TauCeti.RingTheory.RegularLocalRing.Basic`.

None of the three exists at the pins: `Mathlib/RingTheory/RegularLocalRing/` has only `Defs`/`Polynomial`,
and Tau Ceti `RegularLocalRing/Basic.lean` has only domain and quotient facts. `roadmaps grep` found no
roadmap stating any of them.

## F10 (P2) — applied

§7.16(b): "injectivity from (a)" → degree 1 follows from §0.5(b) (CS24 Lemma 7.2.7(b)), applied to affine
torsors (depth ≥ 2). Degree 2 follows from (a), whose hypotheses hold for complete intersections of
dimension ≥ 4 (§7.6 on the strict henselization) and for regular rings of dimension ≥ 2 (§§7.4–7.5). The
route notes the three-dimensional node, with `Pic(U_R) ≅ ℤ` (CS24 line 3859). *Needs* gains §§7.4, 7.6 and
gap:flat-local-complete-intersection.

## F11 (P3) — applied

§7.9 Check: "a plane cubic curve" → "a smooth plane cubic" (CS24 uses an elliptic curve). Added the
cuspidal cubic over `ℂ` as the contrast: `Pic^0 = (ℂ, +)` and the torsion is `ℤ/3`. In characteristic `p`
the cusp would have infinite `p`-torsion, so the contrast is stated over `ℂ`.

## F12 (P3) — applied

§5.4 Check: "infinite `I` and `M = ⊕ R_i`" → `I = ℕ` with `R_i = 𝔽_2` for every `i`, where the map misses
`(1, 1, …)`. The zero-factor case (`0 → 0`) and the single-factor case (the identity) are given as
controls.

## F13 (P3) — applied differently

The third §2.3 Check repeated an API bullet, as the finding says, and was replaced. The reviewer's
replacement was reworded because its second sentence ("the identity … including over the zero ring") does
not parse. The new Check: `Spec 0 → Spec ℤ` is pro-ppf (`0 = ℤ/(1)` is flat and finitely presented) but not
a cover. Admitting it would make the empty family cover every scheme.

## F14 (P2) — applied

§1.7: `𝔞` was unbound. Now `X = Spec A`, `I ⊂ 𝔪`, and Situation 0EHC with `𝔞 = 𝔪`, so `dim V(𝔞) = 0`. In (a)
the closures are taken in `X`. In (b) the inequality reads `dim A > d + 2`. The Check now reads `4 > 3`
(applies) and `3 > 3` (fails), with `𝔞 = 0` as the negative control.

## F15 (P3) — applied differently

The witness holds: `B ⊗_{ℤ_p} B` is not `p`-adically complete, by the finite-rank coefficient-matrix
argument. But the reviewer's repair, "termwise completion over `ℤ_p` gives perfectoid terms", is not
justified: `B ⊗̂_{ℤ_p} B` is a quotient of a perfectoid ring, and its perfectoidness was not established.
The Check is restated over a perfectoid base `A → A′`. There the completed terms are perfectoid
(PerfectoidQuotients §0.6), and this is the actual pattern of §6.2. The `ℤ_p` case is kept as the reason
the base must be perfectoid.

## F16 (P3) — applied

README Mathlib contract and Suggested.lean docstring now say: `cohomologyPresheaf` takes input in
`AddCommGrpCat.{v}` (`v` the morphism universe) with `HasSheafify` at `v`, and its output `AddCommGrpCat.{w′}`
is a separate universe (`Mathlib/CategoryTheory/Sites/SheafCohomology/Basic.lean` lines 59–80 at the pin).

## F17 (P2) — applied

Added two bullets to the "not statable" list in the Suggested.lean module docstring:
- the crystalline key formula (Theorem 4.1.8, §2.4), which lacks the crystalline Dieudonné module and the
  pro-fppf site;
- the deformation triangle, continuity, excision and fpqc/mod-`p` descent (Theorems 5.2.8, 5.3.5, 5.4.4,
  5.5.2 and Corollaries 5.4.5, 5.5.3; §§3.3–3.6), which lack animated rings, animated points and their
  fppf cohomology.

No substitute statement was added.

## Review b

The six sections below are review b's findings `F01`–`F06`.

## F01 (P3) — applied

§3.1: "Theorem 5.1.13, p. 51" → "p. 52": the statement is at CS24 line 2171, after the page-52 marker at
line 2143. I checked the pattern mechanically for every `[CS24] <kind> X.Y.Z, p. N` citation against its
statement line's page marker. Only this one and F02 of review b were wrong.

## F02 (P3) — applied

§3.5: "Corollary 5.4.5, p. 67" → "p. 68" (CS24 line 2832 follows the page-68 marker at line 2830).

## F03 (P3) — disputed

`Algebra.CotangentComplex` is the declaration that DerivedModuleAlgebra §0.4 names on main. In
`TauCetiRoadmap/DerivedModuleAlgebra/README.md`, line 818 defines `L_(B/A) = Algebra.CotangentComplex A B`,
and lines 825–828 give its intended Lean signature
`Algebra.CotangentComplex (A B : Type u) … : DerivedCategory (ModuleCat.{u} B)`. The reviewer's names
(`standardResolution` etc.) are its model-level data or §0.2 targets. No edit was made.

## F04 (P3) — applied

Scope: "complete intersections as a predicate on local rings" → "the Lean restatement
`IsCompleteIntersection` of the absolute case of DerivedDeRhamCohomology §0.19's complete-intersection
homomorphisms". Added a §1.1 API bullet: the predicate holds iff the map from `ℤ` localized at the residue
characteristic (`ℚ` in residue characteristic 0) is c.i. at `𝔪`. The proof: a Cohen factorization's
target is regular, being flat over a regular base with regular fibre, and
gap:complete-intersection-presentations removes the dependence on the choice. The reviewer wrote
`ℤ_(p)`, which does not cover residue characteristic 0; the bullet adds `ℚ`.

## F05 (P3) — applied

Scope and Downstream consumers: "imported by" → "to be imported by" / "is to import … instead of planning
it" throughout. I checked DeformationAndDerivedPatchingAlgebra at its head (`roadmaps show`). It plans
absolute local complete intersections and `localCI_parafactorial` (SGA 2 XI 3.13(ii)), but not the
virtual dimension, §1.3 or §7.4. Its bullet now names only §1.1 complete intersections and §§7.5–7.6.

## F06 (P3) — applied

Layer 0 Examples: "amounts to surjectivity" → equivalent to surjectivity together with injectivity of
`H^2(R, μ_p) → H^2(U_R, μ_p)`. For `k = ℝ`, `p = 2`, the group `H^2(R, μ_2) = Br(ℝ)[2] = ℤ/2` (by Kummer,
since `Pic R = 0`) shows that surjectivity alone is insufficient. The vanishing itself is credited to §6.5.

## Checks

- **Elaboration.** `lake env lean packages/PurityForFlatCohomology/Suggested.lean`, run from the content
  checkout, succeeds. The only diagnostics are the 7 `declaration uses 'sorry'` warnings, one per theorem.
  No errors and no `set_option`. Imports: `Mathlib`, `TauCeti.AlgebraicGeometry.LineBundle.Class`,
  `TauCeti.RingTheory.RegularLocalRing.Basic` (built object present at the pin).
- **`#check @name` audit.** One scratch file with `#check @` for all 12 declarations, elaborated once.
  There is no `variable` block and every binder is explicit. The new types are:
  - `frobeniusSemilinear_exists_fixed_basis`: `(p) [Fact p.Prime] (K) [Field K] [CharP K p] [IsAlgClosed K] (M) … [FiniteDimensional K M] (F : M →ₛₗ[frobenius K p] M), Bijective F → ∃ b, ∀ i, F (b i) = b i`;
  - `free_of_endomorphisms_iso_pi`: `(R) [CommRing R] [IsRegularLocalRing R] (M) … [Module.Finite R M] [Module.IsReflexive R M] (r), Nonempty ((M →ₗ[R] M) ≃ₗ[R] Fin r → M) → Module.Free R M`;
  - `isRegularLocalRing_uniqueFactorizationMonoid`: `(R) [CommRing R] [IsRegularLocalRing R], UniqueFactorizationMonoid R`.

  Each matches its README statement. The 9 existing declarations are unchanged from `signatures.md`.
- **Dependency check** (`gate --depcheck … --movable`):

      depcheck: 149 roadmaps, 1022 edges, 0 problem(s)

  There is no UPWARD, CYCLE or `moved:` line. The README cites no new roadmap. New cross-roadmap citations
  (DerivedDeRhamCohomology §0.19, SchemeAndStackFoundations §0.6 `reflexive_extension_of_depth`,
  PurityOfBranchLocus §0.3) are all to earlier or main roadmaps.
- **`roadmaps resolve`.** One lead remains: "PerfectoidQuotientsPartII §§Q5.2". This is a false positive:
  the roadmap is a board design earlier in the merge order, and its `### Q5.2` exists. No Lean name is
  unresolved.

## Adversarial pass on changed statements

| Statement | Instances tried | Values computed | Result / change |
|---|---|---|---|
| §1.4(c) strictly henselian | `𝔽_2`, ℓ=3, K=ℤ/3, i=1; `𝔽̄_2`; d=0 sep. closed | `ℤ/3` vs `0`; `0 = 0`; linear duality | hypothesis added, neg. Check |
| §1.7 with `𝔞 = 𝔪` | dim 4, d=1; dim 3; `𝔞 = 0`; `I = 𝔪` | `4 > 3`; `3 > 3` false; `4−4 > 3` false; both sides 0 | bound fixed |
| §2.2 Check | `𝔽_p`, `𝔽̄_p` | presheaf `𝔽_p`/`0`, sheaf `0`/`0` | Check corrected |
| §2.3 Check | `Spec 0 → Spec ℤ` | flat f.p. yes, image ∅, not faithfully flat | new Check |
| §3.2 `U_A` | `k⊕k[1]`, `𝔾_a`, Z=∅; discrete A | `fib(id)=0` vs `k[1]`; recovers §0.2 | definition added |
| §3.6 Check | `ℤ_p → B`; perfectoid `A → A′` | Σpⁱbᵢ⊗bᵢ matrix diag(p,p²,…) has infinite rank, so no limit in `B⊗B`; completed terms perfectoid | Check restated |
| §5.4 Check | `R_i = 𝔽_2`; all `0`; only `R_0 ≠ 0` | misses `(1,1,…)`; `0→0`; identity | Check corrected |
| §5.7 Check | all `a_i ≠ 0`; `a = 0`; char p factor | `μ_p(K)` both sides; `0 = 0`; `μ_p(K_i) = 0` | hypothesis added |
| §7.3 Hom iso | trivial `(ℤ/2)_k` torsor, r=2; S₃ (r=6) | 4 = 4 (old 8); 36 = 36 (old 216) | source corrected |
| §7.3 coherence | regular dim 2, closed point; F supported on a punctured line | depth 2, `𝒪_Y` reflexive so `j_*` coherent; non-reflexive F excluded | supplier corrected |
| §7.6 route | node dim 3 (excluded, dim<4); `x₁x₂−x₃x₄` in `k⟦x₁..x₅⟧`; injection 0→ℤ | Pic ℤ; Pic 0 via 0 ≅ 0; injection does not force target 0 | 3.17 iso used |
| §7.9 Check | smooth cubic; cusp over ℂ | infinite torsion; `ℤ/3` | smooth added |
| §7.16(b) | node dim 3 degree 1; CI dim 4; regular dim 2 | depth 3 so §0.5(b) applies though Pic(U)=ℤ; (a) applies; (a) applies | route fixed |
| Layer 0 Ex. | `ℝ⟦x,y⟧`, p=2 | `H²(R,μ₂) = ℤ/2 ≠ 0` | statement fixed |
| `frobeniusSemilinear_exists_fixed_basis` | rank 0; rank 1, `F = cφ`, p=2; `𝔽_3(t)^perf` | empty basis; `λ^{p−1} = c⁻¹` solvable; non-closed fails (excluded) | added |
| `free_of_endomorphisms_iso_pi` | `M = Rⁿ`, r=n; `M = 0`; A₁ ideal `(x,y)` | `n² = n²`, free; free; non-regular, excluded | added |
| `isRegularLocalRing_uniqueFactorizationMonoid` | field; DVR; `k⟦x,y⟧`; A₁ | UFD; UFD; UFD; non-regular, excluded (`xz = y²`) | added |
| §1.1 c.i. equivalence | residue char 0 (`ℚ → R̂`); mixed (`ℤ_(p)`); `k⟦x,y⟧/(x,y)²` | Cohen factorization target regular; kernel needs 3 generators, not c.i. on either side | bullet added (`ℚ` case) |

## For the maintainer

- New Lean names that other roadmaps may cite: `TauCetiRoadmap.PurityForFlatCohomology.frobeniusSemilinear_exists_fixed_basis`,
  `…free_of_endomorphisms_iso_pi`, `…isRegularLocalRing_uniqueFactorizationMonoid`. No existing name changed.
- The ownership claim toward DeformationAndDerivedPatchingAlgebra is narrowed to §1.1 complete
  intersections and §§7.5–7.6. Whether that roadmap and the other three later ones actually import these
  sections is their decision; this roadmap only states the intended direction.
- Ownership was checked against main, the board packages and the open pull requests through `roadmaps
  grep`/`show` (index of 2026-10-27). No roadmap states the three newly added theorems.
- Untrusted text: none of the reviews contained instructions beyond findings.
- No `needs-references.toml` entry was needed. Every citation used is in `sources.toml`; SGA2, CS24 and
  STACKS are read, and Aus62 and Kat73 are recorded.
