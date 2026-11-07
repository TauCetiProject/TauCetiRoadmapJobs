# Package report: HigherHidaAndColemanTheory

Deliverables: `packages/HigherHidaAndColemanTheory/README.md`, `Suggested.lean`, `metadata.toml` (`topic = "math.NT"`, as the number-theory folders on main), `sources.toml`. `design/plan.json`: only its top-level `gaps` list changed. Each of the eleven accepted gaps now has a `slug` field (the name the README cites as `gap:<slug>`) next to its existing `id`. No gap was added or removed, and `needs`, `supplier` and `section` are unchanged.

## Headline theorems

| Headline (README section) | Status at the pins | What is missing |
|---|---|---|
| Derived arithmetic Hida control for Siegel varieties of every genus (§4.6) | not statable | Siegel moduli over ℤ_(p) with normal toroidal models, polarized ordinary Igusa towers, supported coherent cohomology with solid ordinary localization, the universal Iwasawa complex |
| Integral Iwasawa Serre duality (§4.8) | not statable | same carriers |
| Integral amplitude in genera one and two (§4.9) | not statable | the universal Iwasawa complexes |
| Rational amplitude in every genus (§8.4) | not statable | the universal Iwasawa complexes and the analytic overconvergent Siegel families |
| Regular and singular geometric classicality (§5.10) | not statable | abelian-type Shimura varieties, Hodge–Tate period maps and Bruhat tubes, finite-slope supported coherent cohomology and its Bruhat Cousin spectral sequence |
| Cohomological eigenvariety (§7.1); equidimensionality and deformation of interior eigenpackets (§7.5) | not statable | rigid weight spaces of torus characters, analytic coefficient sheaves on Shimura varieties and their family cohomology |
| Sharp interior slope bounds (§7.6); sharp Siegel bounds (§8.5) | not statable | finite-slope coherent cohomology of Shimura varieties, the integral supported overconvergent model of §8.1 |
| Two-term Klingen control (§9.8) | not statable | the Klingen-level Siegel threefold, its height-one Igusa tower, the partial-ordinary complex over ℤ_p[[ℤ_p^×]] and the ordinary coherent cohomology it specializes to |

`Suggested.lean` therefore states no theorem. Its module docstring lists each headline and the carrier it lacks, and its namespace is empty. Nothing weaker is stated in its place. I checked at the Mathlib pin that `Mathlib/Condensed/` has no analytic-ring or solid-localization file. No Mathlib or Tau Ceti file mentions Shimura varieties or Igusa towers; the one hit, `Mathlib/NumberTheory/HeckeRing/Defs.lean`, contains abstract Hecke coset modules and only cites Shimura's book. Mathlib's `NumberTheory/ModularForms` is analytic only: it has no coherent cohomology of modular curves.

## Elaboration

Run from `content`: `lake env lean <absolute path>/packages/HigherHidaAndColemanTheory/Suggested.lean`. The output is empty: no errors, **0** `sorry` warnings and no other messages.

`#check` pass: `Suggested.lean` has no declarations, so there was no elaborated type to compare against the README, and no binder could be lost.

## What the README could not support

Nothing new. The eleven conditional supplier gaps of the accepted design stay as they were, each under `## Exact supplier contracts`.

## Notions moved down from later roadmaps

None. Every supplier is on main or earlier in the merge order. The roadmap sits at line 243 of `merge-order/ORDER.txt`, right after OverconvergentAutomorphicForms (242) and PerfectoidShimuraVarieties (241).

## Duplication sweep

I searched by object over main, the open roadmap heads (`roadmaps grep`) and the pins, with the keywords higher Hida/Coleman, BGG, eigenvariet, Klingen, Boxer, Pilloni, Igusa tower, ordinary Igusa, Hida complex, Iwasawa complex and higher coherent.

- **Removals: none.** No definition or theorem of the design is stated elsewhere at the same generality.
- **Kept variants, now named in Scope and ownership with how each differs:**
  - PadicFamilies §§2a.8–2a.14 (eigenvariety of one Banach module) and §§2a.15–2a.16 (spectral variety of a complex, annihilator support, Euler-characteristic local constancy). §7.1 glues the cohomology of complexes in all degrees, both signs and both boundary variants, over characters of the whole torus. §9.6(2) is now written as the chartwise instance of §2a.16's spectral variety, and §9.6(3) as its instance at h=0.
  - AutomorphicBundles B3.BGG.1 (algebraic relative BGG resolution in type C₂) and LieHighestWeight Layer 3 (Verma modules). §6.5 is the locally analytic resolution, with its locally constant factor and finite-slope comparison.
  - SmoothRepresentationsOfLocalGroups §SR.1.4 (positive Klingen Hecke algebra, klingen-positive-hecke) and §SR.4.5. That roadmap says the Klingen computations for GSp₄ belong to other roadmaps, so §9.5 stays owned here. §SR.1.4 is added to §9.5's Needs and to the supplier contracts. Its U₁=[Kli diag(ℓ²,ℓ,ℓ,1) Kli] is Pilloni's U_Kli,1 (Pilloni-Singular line 920).
- **Other hits, different objects:**
  - AutomorphicGaloisRepresentationsPartII uses Pilloni-Singular Theorem 5.1.7.1 for Galois representations, not the coherent families.
  - OverconvergentAutomorphicForms' eigenvariety is the definite unitary Jacquet eigenvariety.
  - The Klingen geometry is ShimuraCompactifications C4.16–C4.17, which is already cited.
- **Pins:**
  - Mathlib `Module.End` (`Mathlib/Algebra/Module/LinearMap/End.lean:32`), `zpow_sub₀` (`Mathlib/Algebra/GroupWithZero/Units/Basic.lean:399`, hypothesis `a ≠ 0`), `DerivedCategory` (`Mathlib/Algebra/Homology/DerivedCategory/Basic.lean:87`), `CondensedMod` (`Mathlib/Condensed/Module.lean:40`, abelian instance at line 42) and `CondensedMod.IsSolid` (`Mathlib/Condensed/Solid.lean:83`) were re-read at these lines and match the contract.
  - Tau Ceti has no Shimura, Igusa, eigenvariety or solid-localization carrier.

Ownership against open pull requests was checked with `roadmaps grep`/`roadmaps show` at the indexed heads. `roadmaps resolve` on the package README finds no unresolved cross-roadmap citation and no unresolved Lean name. I also re-read by hand the sections cited for the first time or changed: PerfectoidShimuraVarieties §§3.13, 6.4–6.9, including §6.6(3); HodgeTateAndCanonicalSubgroups §5.1; PadicFamilies §§0a.24–0a.25, 2a.8–2a.17; SmoothRepresentationsOfLocalGroups §§SR.0.2, SR.1.4, SR.4.5; AutomorphicBundles B3.BGG.1.

## Corrections and editorial changes from the design

- **Review notes R01–R05 (all P3), applied:**
  - R01, §6.1a: K′ is chosen as in PerfectoidShimuraVarieties §6.6(3), with f(K′) normal in K and the group Δ(K,K′) from §6.9. Σ is perfect for G₁ and smooth for G. The claim that all three compactifications are smooth is dropped. Flatness of f now comes from miracle flatness: regular target, Cohen–Macaulay normal toroidal source. The text records that (1) and (3) need no smoothness (BP-Coleman line 7543–7544) and that (2) is this roadmap's addition. The false sentence "the hypotheses are exactly those of the coefficient supplier" is deleted, and a new negative-control Check is added (see table).
  - R02, §9.7: the second Check no longer says "admits no slope". It now says that −2 admits no nonnegative slope, and that only the bound ≥ −3 constrains [−3,−2).
  - R03, sources.toml: the BP-GL2 `venue` is re-encoded as "Épijournal de Géométrie Algébrique, …".
  - R04, §9.1: the duplicated locator is deleted.
  - R05: `\(` is replaced by the Unicode set-minus ∖ in §2.2 and §2.8.
- **Form:**
  - Plan target ids such as "A0/weight-dictionary" are replaced by section numbers, and the layer codes A0…X8 by "Layer 1…9". The source-issue label E6 is kept.
  - The headline paragraph now names its sections.
  - The standing paragraph repeated in §§2.2–2.8 is said once at the head of Layer 2, and the GSp₄ setting repeated in §§9.1, 9.3, 9.4, 9.6–9.8 once at the head of Layer 9. No hypothesis was dropped.
  - The `cited_for` entries in sources.toml now use section numbers.
- **Timelessness:** "recorded for reconciliation" (§8.3), "Meanwhile" and "Reconcile" (source issue E3) and "unreconciled" (§7.2) are reworded.

## Adversarial pass (statements written or changed)

| Statement | Instances tried | Values computed | Result / change |
|---|---|---|---|
| §6.1a hypotheses, Hodge degenerate case | G₁=G, Δ=1, K′=K | f=id; f(K′)=K ⊲ K; (f_*V)^Δ=V | reduces to OverconvergentAutomorphicForms §8.7; consistent |
| §6.1a flatness of f | regular target, normal toroidal (CM) source of equal dimension; singular target 𝔸²/{±1} over F, char 0 | miracle flatness gives flat. For F[x,y] over F[x²,xy,y²]: generic rank 2, special fibre F[x,y]/(x²,xy,y²) of dimension 3 (basis 1,x,y), so not flat | hypothesis "Σ smooth for G" kept; negative-control Check added. The review's witness said "length 2" for the special fibre; the correct value is 3 |
| §6.1a, Σ needed for (1),(3) | refinement Σ′ of Σ | BP-Coleman line 7543–7544: the lemma passes to refinements by the projection formula | (1),(3) stated without smoothness |
| §6.1a averaging | Δ=C₂ over ℤ₂ and ℚ₂ | image of invariants: 2ℤ₂ versus ℚ₂; idempotent (1+σ)/2 exists only after inverting 2 | characteristic-0 coefficients kept |
| §9.7 combined ranges | (k,r)=(0,2) | all-degree threshold min(1,−2)=−2; H⁰ threshold min(1,1)=1; proved lower bound −3 | window [−3,−2) not excluded; Check reworded (R02) |
| §9.7 extension threshold | (0,2), (0,0), (3,2) | k+2r−3 = 1, −3, 4 | unchanged |
| §9.6(3) as §2a.16 at h=0 | k∈ℤ_≥0 as ℚ_p-points of the one-variable W; Euler sign | Σ(−1)^i dim H^i_(=0) = d₀−d₁ = −(d₁−d₀); h=0 rational; the A_l are reduced (W smooth) | §2a.16's hypotheses (finite K/ℚ_p, rational h, reduced affinoid, compact U on bounded projective Banach complex) hold; sign noted in text |
| §9.6(2) chart = §2a.16 spectral variety | cuspidal complex at r=2 with compact U | annihilator of ⊕H^i of the slope blocks: same ideal on both sides on common windows | stated as the chartwise instance; gluing over W stays here |
| §9.5 operator via §SR.1.4 | Pilloni line 920 versus §SR.1.4 | both define U₁ as Kli·diag(ℓ²,ℓ,ℓ,1)·Kli and U₂ as Kli·diag(ℓ,ℓ,1,1)·Kli | consistent; char poly ∏(X−p⁻¹z) over the W-orbit {αβ,αγ,βδ,γδ} (Pilloni line 948) |
| §9.5 isolated projector Check | eigenvalues a,b,b,c | P(X)=(X−b)²(X−c)/((a−b)²(a−c)): P(a)=1, P(b)=P(c)=0 | unchanged |
| §9.1 weight table (recomputed after standing-setting move) | ν=(0,−2); ν=(1,1−k) | (5,3),(5,1),(2,−2),(0,−2); κ₀=κ₁=(k+2,2) | unchanged |
| Layer 2 standing setting (moved) | §2.1 versus §§2.2–2.8 | §2.1 states its own finite-type-over-ℤ setting; §§2.2–2.8 had the same paragraph verbatim | no hypothesis lost |
| Scope: §7.1 versus PadicFamilies §2a.12 | H¹-only family; two signs | §2a.12 glues one module in one degree; §7.1 keeps an H¹-only eigenclass (Check of §7.1) | kept variant stated |
| Scope: §6.5 versus AutomorphicBundles B3.BGG.1 | SL₂, κ=0 | algebraic resolution: kernel V₀=constants; locally analytic: kernel locally constant functions V_sm,1 (§6.5 Check) | distinct objects; kept |

## Dependency check

```text
depcheck: 56 roadmaps, 661 edges, 0 problem(s)
```

The check shows no UPWARD, CYCLE or `moved:` line.

## Sources

There were no new fetches and no new keys. `needs-references.toml` was not created, because every cited text is in the manifest and was read in the cache. Locators quoted for the new text are BP-Coleman line 7510–7554 and Pilloni-Singular lines 916–966.

## Untrusted text

The reviews, the design and the other roadmaps contained no instructions directed at the worker.
