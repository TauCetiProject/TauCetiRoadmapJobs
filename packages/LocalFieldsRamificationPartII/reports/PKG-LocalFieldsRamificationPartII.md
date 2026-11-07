# PKG-LocalFieldsRamificationPartII: package report

Deliverables: `packages/LocalFieldsRamificationPartII/README.md`, `Suggested.lean`, `metadata.toml`
(`topic = "math.NT"`, as `TauCetiRoadmap/LocalFieldsRamification/metadata.toml`), `sources.toml`,
and the top-level `gaps` list of `design/plan.json` (nothing else in it changed: `git diff` shows only
that key).

Inputs. The brief names `design/review.json` and a `reports/` folder. Neither held a review: there
is no `review.json`, and `reports/` was empty. The acceptance record is the `review` key of
`design/plan.json` (status accepted, 10 nodes corrected, 33 verified). Its corrections are already
in the design text. The README keeps them: EGA page numbers, the separate source-side descent step,
`Kˢ` as the ambient field for fixed fields, and strict root-pairing thresholds.

## Headline theorems

| Headline | Status | Lean name / what is missing |
| --- | --- | --- |
| Temkin's tameness theorem (Temkin 2017, Thm 2.6.6): a `p`-closed valued field is tame | stated | `isTameField_of_isPClosed` |
| Separable `P`-tame export (Lemma 3.2.5 + Remark 2.4.7 through perfection) | stated | `isSeparablyTameField_of_isSeparablyPClosed` |
| Kuhlmann–Pank–Roquette splitting over henselian fields (KPR Thm 2.1–2.2; Temkin Thm 2.4.9) | stated | `sup_galoisTamePart_eq_top_of_henselian` |
| Algebraic Abhyankar inequality (elementwise form, KKV Lemma 2.1) | stated | `algebraicIndependent_of_valuation_independent` |
| Height bound `ht(W) ≤ ht(W ∩ K) + trdeg(L/K)` (finite height of finite-trdeg fields) | stated | `ringKrullDim_le_ringKrullDim_comap_add` |
| `cd_p(G_F) ≤ 1` for `char F = p` (moved down, see below) | stated | `cohomologicalDimensionAt_absoluteGaloisGroup_le_one` |
| Sections through pro-`p` kernels when `cd_p G ≤ 1` (moved down) | stated | `exists_continuous_section_of_isProP_ker` |
| Pank splitting in height one, non-henselian (Temkin Thm 2.5.5) | not statable | neither library has the wild inertia subgroup of a prolongation to `Kˢ`, or its fixed field `Kᵗ`, for a non-henselian field. Mathlib has `decompositionSubgroup` and `inertiaSubgroup` only. |
| Tensor decomposition `L ⊗ Kʰ ≅ ∏ L_wʰ`; height-one decompletion | not statable | no henselization of a valued field (nor of a local ring) at the pins |
| Composition criteria for unramified/tame extensions (Temkin Lemma 2.6.3, Cor. 2.6.4) | not statable | the unramified and tame classes of a non-henselian field are defined through the henselization |

The docstring of `Suggested.lean` lists all three "not statable" items with what each lacks.

**Definitions added only to make the headlines statable:**
- `IsPNumber`, `IsPClosed` and `IsSeparablyPClosed`: predicates over intermediate fields of
  `AlgebraicClosure K`.
- `IsTameGaloisExtension`: a finite Galois `L` whose inertia groups (`ValuationSubring.inertiaSubgroup`)
  at every prolongation have order prime to `ringExpChar` of the residue field.
- `IsSeparablyTameField` and `IsTameField`: separably tame, and perfect plus separably tame.
- `galoisTamePart`: the compositum of the tame Galois extensions.

All have real bodies on native carriers, with no sorry'd data.

**Correction to the design's definition of tame fields.** The design defined tame fields by
`Kᵃ = Kᵗ`, and `Kᵗ` cannot be built at the pins. The Lean predicate is therefore the inertia-order
characterisation. The README makes the equivalence with `Kˢ = Kᵗ` and `Kᵃ = Kᵗ` a target (§2.8),
with the same generality.

The equivalence rests on three facts:
- Temkin §2.2.6, p. 104: `W` is the unique Sylow pro-`p` subgroup of inertia.
- Inertia of `G_K` maps onto the inertia of each finite Galois quotient.
- All prolongations to a Galois extension are conjugate.

`galoisTamePart V` is the largest subextension of `Kᵗ` that is Galois over `K`. For henselian `V` it
equals `Kᵗ`, so the KPR statement assumes `[HenselianLocalRing V]`. A §2.5 Check (the cubic
subfield of the splitting field of `X³ − X − 2` at 2) shows that `galoisTamePart V ≠ Kᵗ` without
that hypothesis.

## Elaboration

- Command: `lake env lean <abs path>/Suggested.lean`, run from the content checkout.
- Result: exactly **7** warnings `declaration uses 'sorry'` (lines 104, 112, 127, 144, 159, 170,
  180), and no other message.
- Imports: `import Mathlib`, `TauCeti.RepresentationTheory.Homological.ContCohomology.CohomologicalDimension.Basic`
  and `TauCeti.Topology.Algebra.Group.Profinite.ProP.Basic`. Both object files existed, so nothing
  had to be built.
- No `set_option`, `lemma`, `#eval` or `#print`.

**Signature check.** I put `#check @name` for all 14 declarations in one scratch file and elaborated
it once. Every elaborated type matches its README statement. Each declaration carries its own
binders, with no section `variable`s. The check led to one change: I removed the hypothesis
`hx0 : ∀ i, x i ≠ 0` from the Abhyankar theorem, because `hx` with `n = single i 1` already excludes
`x i = 0`. A README Check records this.

**Library names.** Every Mathlib and Tau Ceti name the README uses was checked at the pins, in one of
two ways:
- Elaborated with `#check` in a second scratch file: 50 names, with no error and no deprecation.
- Read at its source line, for names whose Tau Ceti modules have no object file at the pin:
  `TauCeti.IsProPSylow` (`Sylow/Basic.lean:62`), `TauCeti.exists_isProPSylow` (`Existence.lean:102`),
  `IsProPSylow.exists_map_conj_eq` / `eq_of_normal` (`Conjugacy.lean:42,48`), `IsProPSylow.map_of_surjective`
  (`Functoriality.lean:52`), `IsProPSylow.cohomologicalDimensionAt_eq` (`Sylow/CohomologicalDimension.lean:81`),
  `Valuation.coarsenByUnits` (`RingTheory/Valuation/Coarsen.lean:103`) and `TauCeti.inertiaSubgroup`
  (`NumberTheory/LocalField/Unramified/Inertia/Basic.lean:99`).

`roadmaps resolve` reports no cross-roadmap citation or Lean name found nowhere. It did not check
library names on this host, which is why I checked them myself.

## Dependency check

```
tauceti-roadmap … gate --depcheck packages/LocalFieldsRamificationPartII/README.md --name LocalFieldsRamificationPartII --order merge-order/ORDER.txt --movable
depcheck: 56 roadmaps, 642 edges, 0 problem(s)
```

There is no UPWARD, CYCLE or `moved:` line.

The suppliers are:
- SchemeAndStackFoundations, order line 2, also on main;
- ModularCurves, on main;
- LocalFieldsRamification, on main;
- ProfiniteCohomology, on main;
- Mathlib and Tau Ceti.

## Notions moved down from later roadmaps

- **ClassicalAdicEtaleCohomology.** This is an open PR from this account, at order line 61, after
  this roadmap. The design imported two "H1" contracts from it. They are now targets here:
  - Strict localization of a valuation ring is a valuation ring with the same value group. This is
    README §1.2 (Stacks 0ASJ/0ASK), built on ModularCurves 4D's strict henselisation.
  - The structure of `G_K` for a henselian valued field with separably closed residue field: the
    tame quotient `Hom(Γ⊗ℤ_(p′)/Γ, μ′)` and the unique normal Sylow pro-`p` wild subgroup. This is
    README §2.2. ClassicalAdicEtaleCohomology §5.3 states the same theorem and, being later, should
    import it from here.
- **ProfiniteCohomologyPartII.** This is a board package at order line 50, later than this roadmap.
  The design's gaps G1 and G2 were proposed for it, and that package's design plans the
  Artin–Schreier bound. Both are now targets here, and both are stated in Lean:
  - G1: `cd_p(G_F) ≤ 1` in characteristic `p`. README §3.1.
  - G2: sections through pro-`p` kernels. README §3.2.

  The locators are Serre, *Galois Cohomology* I §3.4 Prop. 16 and II §2.2 Prop. 3/Cor. 1. That text
  is paywalled, so the manifest records it as `uncertified`; the locators are the ones KPR cite on
  p. 44 (kpr86 lines 228–234).

  The old G1/G2 entries are gone from `plan.json` `gaps`. ProfiniteCohomologyPartII should import
  these two results from here rather than plan them.

## Supplier gap declared

`source-side-fpqc-descent`, on SchemeAndStackFoundations, Layer 1 §1.1. It asks for EGA IV
17.7.5(iv) and 17.7.7: descent of finite presentation and of étaleness from the source of a
faithfully flat morphism. Main states only base-change descent (§0.11, and Mathlib's
`…_of_faithfullyFlat` lemmas). The README states the gap in that supplier's subsection with the
same text as `plan.json`. §2.1 (the étale criterion) needs it.

## Duplication sweep and other removals

The sweep was done by mathematical object against:
- main;
- all 354 open roadmap PRs, through `roadmaps grep`;
- the board packages index;
- the pinned libraries.

The searches were for: tame field, Abhyankar, henselization of a valued field, composite valuation,
Pank, `P`-closed, tame closure, purely wild, defect, Krasner, flat finite type over a valuation ring,
`cd_p` in characteristic `p`, coarsening, convex subgroup and rational rank.

**Removed or replaced from the design:**
- **SF.0 request (EGA 18.6.8 product formula).** Removed as a request. It follows from
  SchemeAndStackFoundations §0.13 on main: `henselization_integral_base_change`, Stacks 15.12.6 and
  15.12.8, and `henselization_at_prime`. The derivation is the proof route of §1.4.
- **SF.0 request (flat finite type over a valuation ring ⇒ finitely presented, Stacks 053E).** No
  roadmap on main or in an open PR owns it, so it is a target here (§1.5).
- **SF.4 flattening-by-blowup.** Deleted from the route. Main's `flattening_by_blowup` (§4.12) is
  stated only over Noetherian integral bases, so it could not apply over a non-Noetherian valuation
  ring. The design's route was not supportable as written. §5.4 now uses §1.5 instead.
- **"PerfectoidSpaces P3/henselisation-of-pairs", "SchemeAndStackFoundations key/henselization" and
  "SF.0".** These identifiers do not exist on main. Every henselization citation is now
  SchemeAndStackFoundations §§0.12–0.13 by declaration name.
- **ProfiniteProPGroups Layer 2 request (Sylow image under surjections).** Deleted. The design said
  the result was absent at the pin, but `TauCeti.IsProPSylow.map_of_surjective` is at the pin
  (`Sylow/Functoriality.lean:52`).
- **ProfiniteProPGroups Layer 6 (`cd_p G = cd_p S`).** Now cited as the pinned
  `TauCeti.IsProPSylow.cohomologicalDimensionAt_eq`.
- **ProfiniteProPGroups Layer 5 (embedding problems).** No longer cited, because §3.2 owns the full
  section theorem.
- **Coarsening and convex subgroups.** These now cite Tau Ceti's `TauCeti.ConvexSubgroup` and
  `Valuation.coarsenByUnits` next to Mathlib's `ofPrime`/`idealOfLE`. The design's composition
  section (§5.1) keeps only the composite of a valuation with a residue valuation, which neither
  library has.
- **Design API names.** All 39 names the citation scan found nowhere (`IsTame.baseChange`,
  `RamificationTower.fixedFields`, …) are now prose. The README's only backticked names of its own
  are the 14 declarations of `Suggested.lean`.
- **Dropped from the text.** The continuation briefs (Swan conductors, DVR modules), the alias
  `LocalFieldsPartIIGeneralValuedFields`, "atlas planet" lines and the packet ids E2–E12. The
  mathematical content of the source issues stays in "Notes on the sources".

**What exists elsewhere and is cited, not restated:**
- Henselization of pairs: SchemeAndStackFoundations §§0.12–0.13.
- Strict henselisation: ModularCurves 4D.
- Local-field classes: LocalFieldsRamification Layers 2–4. Used only in the comparison §2.10.
- Pinned Mathlib: decomposition and inertia subgroups, the Krasner property, linear disjointness,
  valuation extensions.

**Ownership against open pull requests.** The brief gives the open PRs at their heads through
`roadmaps grep` and the sibling checkouts. No open PR owns any object kept here.
`ClassicalAdicEtaleCohomology` (#875, same account, later order) and `ProfiniteCohomologyPartII`
(board, later order) overlap with §§1.2, 2.2, 3.1 and 3.2, which moved down as described above. No
declaration of `Suggested.lean` reuses a qualified name from a readable roadmap.

## What the README could not support

- **§2.2.** The structure theorem is stated in Temkin §2.2.6 and KPR Prop. 2.4, but both refer
  elsewhere for the proof (Gabber–Ramero; Endler's book), and neither is in the manifest. The README
  gives a proof route of its own. The finite-level clause (ii) is the README's formulation.
- **§§3.1–3.2.** These rest on Serre (uncertified, cited by locator only).
- **NSW.** I tried *Cohomology of Number Fields*, which the authors host for free. The service
  cached only the landing page, not the PDF, so NSW is not cited and its entry was removed from
  `sources.toml`.
- **Temkin 2010, Proposition 2.2.2.** Read at the author pages. It is used only for the converse
  direction of §5.4.

## Corrections to the design (beyond the moves above)

- **§1.4.** The decomposition counts distinct prolongations on the fixed field `L`. Temkin's Lemma
  2.3.2 says "nonisomorphic valued extensions", and for `ℚ(√2)/ℚ` at 7 that wording gives 1 factor
  instead of 2. Recorded in Notes on the sources.
- **§3.6 route.** It is now explicitly the pinned Sylow image and cd comparison plus §3.1 applied to
  `κ`, plus §3.2.
- **§5.3.** The height bound is stated in relative form, `ht W ≤ ht(W∩K) + trdeg`. This is stronger
  than "finite trdeg over the prime field ⇒ finite height" and implies it. Its proof (convex chain
  plus Abhyankar) is in the README.
- **Abhyankar inequality.** Stated in the elementwise algebraic-independence form, which implies the
  rank inequality. Its value hypothesis is ℤ-independence modulo `Γ_K`, which is equivalent to KKV's
  rational independence: if `Σ qᵢγᵢ ∈ Γ_K ⊗ ℚ`, clear denominators to get a torsion element, and
  multiplying by its order gives an integer relation.

## Adversarial pass

| Statement | Instances tried | Values computed | Result | Change |
| --- | --- | --- | --- | --- |
| `IsPNumber P n` | `P=∅,n=1`; `n=0`, `P`=all primes; `6` vs `{2,3}`, `{3}`; `P∋4` | `0<1`, no prime divisor → true; `0<0` false; `6=2·3`: true for `{2,3}`, `2∉{3}` false; the non-prime 4 is never tested | holds | none |
| `IsPClosed P K` | `P=∅`; `K=ℚ̄`; `𝔽_q`, `P={ℓ}` | ∅-numbers `={1}` → only `⊥`; no proper finite `E`; `[𝔽_{q^ℓ}:𝔽_q]=ℓ` → not closed | holds | none |
| `IsSeparablyPClosed` vs `IsPClosed` | `𝔽_p(t)^{sep}`, `P={p}` | separable degrees: only 1; `[K(t^{1/p}):K]=p` | separates the predicates | README Check |
| `IsTameGaloisExtension` | trivial `V`; `ℚ_p(ζ_p)`, `p` odd; `ℚ_2(i)`; `ℚ_p(ζ_{p²})`; unramified degree-`p` extension of `ℚ_p`; `p=1` | trivial `V`: `A=L`, residue field `L`, faithful action, `|I|=1`; `ℚ_p(ζ_p)`: `|I|=p−1`, coprime; `ℚ_2(i)`: `|I|=2`, not coprime to 2; `ℚ_p(ζ_{p²})`: `|I|=p(p−1)`; unramified: `|D|=p`, `|I|=1`, coprime; `p=1`: `Coprime n 1` | holds; rules out the "decomposition group" model | README Checks |
| `IsSeparablyTameField` / `IsTameField` | trivially valued `𝔽_p(t)`; `ℚ_p`; algebraically closed `K`; residue char 0 | `𝔽_p(t)`: all `|I|=1` → separably tame, not perfect → not tame; `ℚ_p`: `ℚ_p(ζ_{p²})` fails; algebraically closed: only `L=K`; residue char 0: `p=1` and `K` has char 0, so perfect | matches Temkin §2.3.9 | none |
| `galoisTamePart` | trivial `V`; `ℚ` at 2 with `N`=split(`X³−X−2`) | trivial `V`: every finite Galois `L` qualifies → `Kˢ`; `N`: `|I|=2` at `p=2` → excluded, so the cubic subfield `F⊆Kʰ` is not in it | `≠Kᵗ` for non-henselian `V` | justified the henselian hypothesis on KPR; README Check |
| KPR `sup_galoisTamePart_eq_top_of_henselian` | `p=1`, henselian, char 0; `K` separably closed, imperfect, henselian; `ℚ_p` | `p=1`: `galoisTamePart=Kᵃ` and `E` is linearly disjoint from `Kᵃ`, so `[E:K]=1` and `⊥⊔⊤=⊤`; separably closed: `galoisTamePart=⊥`, maximal `E=⊤`, `⊤⊔⊥=⊤`; `ℚ_p`: `ℚ_p(p^{1/p^∞})` is purely wild | holds; `hE` is needed (`hmax` alone is vacuous for non-disjoint `E`) | none |
| `cd_p(G_F) ≤ 1` | `𝔽_p`; separably closed `F`; `ℚ_p` (char 0) | `cd_p Ẑ = 1` (bound attained); `G_F=1` → 0; `ℚ_p` excluded by `CharP F p` (`cd_p=2` there) | holds; the characteristic hypothesis is necessary | README Checks |
| Section theorem | `G=ℤ_p`; `G=ℤ/p` with `ℤ/p²→ℤ/p`; trivial kernel | `cd_p ℤ_p=1` → splits; `cd_p(ℤ/p)=∞` and the extension is non-split; trivial kernel: `f⁻¹` | the `cd_p` hypothesis is necessary | README Checks |
| Abhyankar elementwise | empty `ι, κ`; `x_i` with `v(x_i)∈v(K)`; `x_i=0`; `𝔽_p(t)` `t`-adic; Gauss `v(t)=0` | empty family is algebraically independent; `n=e_i` → `v(x_i)^1∈range` → contradiction; `0^1=0=v(0)` → excluded; rr 1 + trdeg 0 = 1; rr 0 + trdeg 1 = 1 | holds; `hx0` redundant | removed `hx0` |
| Height bound | `L=K`, `n=0`; `ℚ(t)` with `t`-adic∘`p`-adic; trivial restriction | `ht W = ht W`; `2 ≤ 1+1`; a height-2 `W` on `ℚ(t)` with trivial restriction would give `2 ≤ 0+1`, false, and indeed no such `W` exists (convex-chain proof) | holds; `ht = ⊤` makes the right side `⊤` | none |
| Temkin `isTameField_of_isPClosed` | `p=1`; `ℚ_p`; `𝔽_p((t))`; trivial valuation on a `{p}`-closed field; algebraically closed | `p=1`: `P=∅`, hypothesis vacuous, conclusion true (char 0, coprime to 1); `ℚ_p`: `X^p−p` degree `p` → hypothesis fails; `𝔽_p((t))`: Artin–Schreier `X^p−X−t⁻¹` degree `p` → fails; trivial valuation: conclusion = perfect, and §0.4 gives perfection | consistent | none |
| Separable export | `𝔽_p(t)^{sep}`; `P=∅`; `1∈P`, `p=1`; `𝔽_q((t))` | `𝔽_p(t)^{sep}`: separably tame, not tame (`t^{1/p}`); `P=∅`: `p∈∅` never holds, nothing claimed (and `ℚ_p` is separably ∅-closed yet not separably tame); `p=1`: conclusion always true; `𝔽_q((t))`: AS extension → not separably `{p}`-closed | holds; "separable" cannot be dropped | README Checks |
| §1.4 decomposition | `ℚ(√2)/ℚ` at 7 vs at 3; `𝔽_p(t)(t^{1/p})` | `7=(3+√2)(3−√2)` → 2 factors; 2 is a non-square mod 3 → 1 factor; purely inseparable → 1 factor | counting up to isomorphism would give 1 at 7 | README text and Notes |
| §2.2 tame quotient | `ℂ((t))`; `𝔽_p^{sep}((t))`; `Γ` divisible | `Hom(ℚ/ℤ,μ_∞)=Ẑ(1)`, `W=1`; `∏_{ℓ≠p} ℤ_ℓ(1)`; `Γ⊗ℤ_(p′)/Γ=0` → `Kᵗ=K` | consistent | none |
| §3.5 non-normal wild inertia | `X³−X−2` over `ℚ` at 2 | no root in `{±1,±2}`; `disc = −4(−1)³−27·4 = −104`, a non-square → `S₃`; mod 2 the polynomial is `x(x+1)²`; quadratic factor discriminant class `−104`, `v_2 = 3` (odd) → ramified; `D=I=W=C₂`, not normal in `S₃` | the group form needs the henselian hypothesis | kept the design's correction |
| §4.1 root continuity | `f=g=(X−1)(X+1)` over `ℚ` at 2, `ε=1`; `f=X, g=X−2` over `ℚ_2` | `v(1−(−1))=v(2)=1=ε` → both roots within `ε`; `ε = v(2)/1 + 0 = 1` and `v(0−2)=1` (non-strict attained) | uniqueness needs a strict threshold | README Checks |
| §5.5 tame composition | `ℚ_p((t))`, `s^p=t` | coarse: residue char 0, `e=p` → tame; residual: `ℚ_p/ℚ_p` the identity; `Γ`-quotient `ℤ/p` has `p`-torsion → not tame; with the coarse prime 0 it would wrongly pass | final residue exponent required | README Check, Notes |
| §5.6 tame-field composition | `ℚ_p((t))`; `𝔽_p((t))((u))`, `i=1` | `ℤ` not `p`-divisible and `ℚ_p` not tame → not tame; `p_1=p`, coarse residue `𝔽_p((t))` imperfect → `K_1` not tame | consistent | replaced a muddled Check |
| §0.5 split towers | two cubic subfields of `ℚ(2^{1/3},ζ_3)` | `dim E⊗M = 9 ≠ 6 =` degree of the compositum | trivial intersection is not a splitting | none |
| §1.5 flat ⇒ f.p. | `A/𝔪`, `𝔪` not f.g.; `A[x]/(ax)` | `A/𝔪` is torsion, not flat, not f.p.; `a·x=0` with `x≠0` → not flat but f.p. | both directions tested | README Checks |

## Sources

`sources.toml` now holds 9 keys:
- certified, read: temkin17 (publisher open archive), kpr86 (author scan, OCR), temkin10, kkv16,
  cks23, aid25, stacks-more-algebra and ega4;
- uncertified: serre-cg.

Changes to the manifest:
- The two Stacks keys the service created for one chapter PDF were merged into one key,
  `stacks-more-algebra`.
- nsw08 was removed: only its landing page was fetched.

Locators were checked against the cached text. Examples: temkin17 lines 249–270 for §2.1.1,
lines 623–638 for Theorem 2.6.6, line 796 for Lemma 3.2.5; kkv16 line 238; cks23 lines 610–653;
aid25 lines 210–529; stacks-more-algebra lines 2906, 17762 and 17792; ega4 lines 2750, 2795 and
5517.

No text is missing, so there is no `needs-references.toml`.

## Untrusted text

Nothing in the design, the review record, the other roadmaps or the fetched sources asked for any
action outside the job.
