# PKG-MotivesAndAlgebraicCyclesPartII: package report

Deliverables: `packages/MotivesAndAlgebraicCyclesPartII/README.md`, `Suggested.lean`, `metadata.toml` (`topic = "math.AG"`), `sources.toml`, and the top-level `gaps` list of `design/plan.json`. No other key of `plan.json` changed (checked by loading the old and new JSON and comparing every key; the textual diff is the `gaps` hunk only).

Inputs: the design README and `plan.json` were read in full. The package has no `design/review.json` and an empty `reports/` folder, so the review that accepted the design was read from `plan.json` (`review`: nine nodes corrected, source findings E1–E6 confirmed). Its notes were applied: the six source corrections are kept, in §Corrections to the source of the README.

Pins: Mathlib `6b7abb3`, Tau Ceti `a91d3aa` (from `content/lake-manifest.json`). The design cites older pins (`082e2d3`, `f790474`). Every library claim was rechecked at the pins listed here.

## Headline theorems

None of them can be stated at the pins. All are statements about `Deff_mot`, `Dmot`, `Kmot` or `DM_et`. At the pins Mathlib and Tau Ceti have no Berkovich spectrum (grep for `Berkovich` in both trees: no match), no arc-site of Banach rings, no presentable stable ∞-category of sheaves, no formal tensor inversion and no algebraic K-theory spectrum. Mathlib has only `SSet.Quasicategory` and `GrothendieckTopology`.

| Headline theorem | README | Status | What is missing at the pins |
| --- | --- | --- | --- |
| Cancellation over every small arc-stack | §5.3 | not statable | arc-site, `Dfin`/`Deff_mot` as ∞-categories, Tate object |
| `Kmot` finitary; `Kmot ⊗ ℚ ≃ ⊕ ℚ(n)[2n]`, Adams-split | §§6.1, 6.3 | not statable | K-theory spectra, spectral arc-sheaves, ball localization |
| `Kmot(C) ≃ cofib(K(C_{<1}) → K(C))[1/p]` | §7.6 | not statable | nonunital K-theory spectra, `Kmot` |
| Torsion comparison, `p` invertible for `|p| < 1`, tilting | §§4.8, 4.9, 8.3 | not statable | `Deff_mot`, `Dmot`, étale derived ∞-category |
| Six operations, general proper base change | §§8.5, 9.4 | not statable | `Dmot`, six-functor formalisms |
| Rigidity at geometric points and over analytic bases | §§9.1, 9.6 | not statable | `Dmot`, rigid presentable categories |
| `DM_et(k, ℤ) ≃ Dmot(k)` for algebraically closed discrete `k` | §10.6 | not statable | both categories |
| Monodromy equivalence over the completed closure of `𝔽̄_p((T))` | §11.8 | not statable | `Dmot`, motivic Galois stacks |
| Overconvergent comparison of torsion motives | §12.3 | not statable | small v-stacks, `Det`, `Dmot` |

`Suggested.lean` therefore holds only the module docstring, which lists these theorems and what each one lacks, plus the namespace. The design's Lean prototype for one-units is dropped: an elementary predicate on `NormedField` with six API lemmas is padding and not a headline. The one-unit facts are kept as API bullets and Checks in README §3.1.

**Elaboration.** I ran `lake env lean <Suggested.lean>` from the content checkout. It exited 0 with no messages: 0 `sorry` warnings and no errors or other warnings. There are no declarations, so the `#check @name` binder comparison has nothing to compare; I confirmed the file declares nothing besides the namespace. Imports: `import Mathlib` only. The scratch gate run on a copy of the folder printed `OK`, with every count 0, including `readme-ids-missing=0`.

## Corrections made to the design

- **Supplier sections.** Every design node id was mapped to the supplier's real section, checked against main, the open-PR heads, or the board package for suppliers that exist only there. Examples:
  - `EnhancedDerivedSheaves:E5:presentability/compact-morphisms` → §E5:presentability.4.
  - `GeneralAlgebraicKTheory:K.5` → §§8.3, 8.10.
  - `SchemeKTheoryOperations:S.3/derived-closed-base-change-excision` → §§3.4, 3.8.
  - `RefinedTraceMethods:RT.5/almost-module-k` → §4.20.
  - `AnalyticStacks:AS.0/AS.1` → §§0.4–0.6, 0.9–0.10, 1.1–1.5; AnalyticStacks itself fixes these as its interfaces to this roadmap.
  - `DiamondEtaleCohomology:C9` → §C9.8.
- **MotivicEtaleKTheory has no `M.5a`.** It also has no finite correspondences, no `DM_et` and no Cisinski–Déglise comparison (checked at its PR head). The design's supplier interface 28 named a section that does not exist.
  - Finite correspondences and Nisnevich motives come from MotivesAndAlgebraicCycles §§4.1–4.18.
  - Higher Chow versus Adams weights comes from MotivicEtaleKTheory §2.2.
  - The étale comparisons are now owned targets: README §10.2 (with/without transfers, rigidity, `p`-invertibility, rational agreement with Nisnevich motives).
- **Cisinski–Déglise Cor. 5.5.7 range.** It covers characteristic zero or 2 invertible in the coefficients. For `ℤ/2^a` in odd positive characteristic, §10.2 now names its own route: rigidity without transfers, which needs no orderings because every field of positive characteristic has `−1` a sum of squares. The design had left this as an unassigned part of the M.5a request.
- **AnalyticStacks assigns one identification to this roadmap.** Its downstream section says the identification of representations of `MG_k`, `MG_C` with monodromy operators "stays with that roadmap" (AnalyticStacks README line 1120). §11.6 owns it, instead of requesting it from AS.1 as the design did.
- **AnalyticStacks §1.5 hypotheses for `MG_k`.** §1.5 needs a flat affine group whose counit has finite Tor amplitude. A Check in §11.3 verifies this for `G_m^rat`: the ring is torsion-free over `ℤ[1/p]`, and its augmentation ideal is `R ⊗ ℚ`, flat over `R`, so the amplitude is `[−1, 0]`.
- **The extension theorem needs a subcanonical site** (AnalyticStacks §0.6). The Banach arc-site is not subcanonical, so §8.5 applies the theorem on small arc-stacks, as Scholze does: §9 starts from affine arc-sheaves.
- **Flag invariants (§6.2).** MotivesAndAlgebraicCycles Layer 2 has no flag varieties. The diagonal entries are now computed at the complex point:
  - the cohomology of `U(n)/T` is even, of total dimension `χ = n!`;
  - each `w ≠ 1` acts freely, so its Lefschetz number is 0;
  - so the cohomology is the regular representation of `Σ_n`, with invariants `H⁰`.

  Inputs: RepresentationTheory (LieGroups) Layer 8, CharacteristicClasses §C5, MorseNovikov. Constancy of the diagonal entries uses `End(ℚ(i)) = H⁰(Marc(ℤ), ℚ) = ℚ` from cancellation over the terminal arc-sheaf.
- **Adams splitting (§6.3).** It now comes from the squaring endomorphism of `BG_m` (Scholze Cor. 8.6). The design's request for E∞ Adams operations on all rings from SchemeKTheoryOperations is not needed. Compatibility `ψ²[L] = [L²]` is cited from SchemeKTheoryOperations §§6.4, 6.8.
- **The design's TB.0 request is split.**
  - Curve shrinking with disc complement (§4.2) is owned here, from van der Put Cor. 1.3 plus an analytic refinement.
  - Rational-section approximation on boundary discs is a step of §4.5.
  - Only the Tate-algebra PID / line-bundle descent fact stays a supplier gap.
- **Marked Jacobian (§4.3).** It no longer cites AnalyticStacks. It is built from JacobianChallenge Layers A, D, E. Layer E's `multiplication_isogeny` (finite locally free and surjective for `n ≠ 0`) gives surjectivity on points over algebraically closed fields, including `n = char`.
- **Small corrections.**
  - The design's "requested Mondal–Reinecke from E2" is now an explicit gap: EDS §E2.7 says verbatim that repleteness alone is not claimed to suffice.
  - The almost-structure-sheaf localization used in §7.3 is derived from PerfectoidSpaces §§P2.3, P2.7, not requested from DiamondsAndVStacks §D1, which lacks it.
  - The overconvergence criterion on strict bases (§12.3) is derived from DiamondEtaleCohomology §§C0.19, C0.24, which lack ECD 13.13/22.7.
  - The closed-disc dimension bound (§2.1) uses SchemeAndStackFoundations §2.16 (Tsen) and ProfiniteCohomology Layer 11 (`cd_p_le_of_isClosed`, `scd_p_le_cd_p_add_one`). DiamondEtaleCohomology §C8 has no closed-disc bound.

## Duplication sweep and removals

Searches by object (`roadmaps grep` over main and the 356 open PR heads, plus the board packages): Berkovich motives, arc-sheaf/arc-stack, ball-invariant, Banach arc, RigDA, motivic nearby cycles, one-unit, generalized Jacobian, Scholze 2412.03382.

- **Generalized Jacobian.** AnabelianGeometryAndNonabelianChabauty, target "Generalized Jacobian of a reduced boundary", constructs `Pic⁰(C, D)` with `1 → T_D → J_D → J_C → 1` in characteristic zero. README §4.3 is kept as a variant: algebraically closed field of arbitrary characteristic, divisibility on points only. That one-clause difference is stated in Scope and ownership.
- **TropicalAndBerkovichArithmetic §§0.12, 0.16, 0.24–0.26** already plan Scholze's §2 material (seminormed rings, contractive colimits, Gelfand representation, idempotents, Gelfand–Mazur). The README cites them and does not restate them; the design already treated TB.0 as the owner.
- **EnhancedDerivedSheaves §E5:presentability.4** defines weakly compact maps and stable compact assembly. README §0.1 keeps only Scholze's nonstable definition (Def. 2.7) and the seminormed-ring theorem. It cites EDS for weakly compact maps and for the agreement of the compactness notions.
- **Removed design suppliers:**
  - MotivicEtaleKTheory "M.5a": the section does not exist.
  - MotivesAndAlgebraicCycles "MC.2" flag realization: absent there; replaced by the route above.
  - AnalyticStacks as a supplier of the marked Jacobian: not needed.
  - SchemeKTheoryOperations E∞ Adams extension: not needed.
  - DiamondsAndVStacks §D1 almost localization: replaced by PerfectoidSpaces.
  - DiamondEtaleCohomology overconvergence and closed-disc bound: replaced as above.
  - Requests the suppliers already state are cited directly, not requested: GeneralAlgebraicKTheoryPartII KII.1/KII.4 give the E∞ group-completion K-theory; GeneralAlgebraicKTheory §8.10 gives Tor-unital excision; KTheoryFiniteLocalFields §1.5 gives perfect-field K.
- **No duplicate found** for the arc-topology on Banach rings, `Dfin`, `Deff_mot`, `Dmot`, `Kmot`, the one-unit K-cofibre, motivic Galois stacks or the arc/v comparison. This roadmap is their owner: it extends MotivesAndAlgebraicCycles, which stops at Nisnevich motives over fields, and nothing on main, at the open heads or in the board packages plans Berkovich motives.

Ownership against open pull requests was checked through `roadmaps grep` (main plus all open PR heads) and the sibling checkouts given in the brief. No declaration of `Suggested.lean` takes another roadmap's name; there are none.

## Notions moved down

None. No notion was needed from a roadmap later than this one in the merge order. All suppliers are on main, earlier in the merge order, or both. Ownership moved *into* this roadmap: the §10.2 comparisons, the §11.6 operator identification (assigned by AnalyticStacks), and the §4.2/§4.5 curve refinements.

## What the README cannot support: supplier gaps

Each gap is declared in `plan.json` `gaps` and in the README supplier subsection as "What X must provide (gap:slug)":

| slug | supplier, section | consumer |
| --- | --- | --- |
| replete-postnikov | EnhancedDerivedSheaves §E2.7 | §0.7 (hence §1.7) |
| compact-hausdorff-dimension | EnhancedDerivedSheaves §E2.4 | §§1.5, 2.1, 7.3, 7.4 |
| animated-group-completion | EnhancedDerivedSheaves §E5:animation | §§3.3, 4.1, 4.7, 5.4, 6.1, 6.3 |
| einfty-fracture-square | EnhancedDerivedSheaves §E5:spectra-comparison | §7.7 |
| kh-excision-cdh-descent | SchemeKTheoryOperations Layer 5 | §§7.4, 7.5 |
| valuation-ring-k-regularity | SchemeKTheoryOperations Layer 5 | §§7.1, 7.3, 7.4, 7.5 |
| suslin-rigidity | KTheoryFiniteLocalFields §2.1 | §7.6 |
| padic-k-integers-oc | KTheoryFiniteLocalFields §6.5 | §7.7 |
| affinoid-line-bundles | TropicalAndBerkovichArithmetic §§0.17, 0.20 | §3.3 |

The design's ownerless proof leaves now have owners: BM-G1 (KH cdh descent) and BM-G2 (valuation-ring K) go to SchemeKTheoryOperations Layer 5. GeneralAlgebraicKTheoryPartII KII.9 already imports KH from "SchemeKTheoryOperations S.5", which does not define it. BM-G3 (Suslin rigidity) goes to KTheoryFiniteLocalFields §2.1. BM-G4 (RigDA) is not a supplier gap: the README says in one sentence that the comparison with Ayoub's motives is not a statement of this roadmap.

One gap rests on a statement I did not source-check: "K ≃ KH for smooth algebras over a valuation ring", the second half of valuation-ring-k-regularity. It is the design's BM-G2 contract, which Theorem 1.7(iv) needs. I believe it is in Kelly–Morrow but did not read that paper; the supplier must verify it.

## Sources

`sources.toml` records:
- **Scholze**: arXiv v3, fetched and certified. I re-read §§1–3, 5.2–5.3, 8, 9, 10.1, 11, 12 for this pass; page locators were rechecked against the text.
- **vanDerPut**: Numdam, certified.
- **CD**: arXiv v4, certified. Theorem 4.5.2, Corollary 4.5.3, Theorem 5.2.2, Theorem 5.5.3 and Corollaries 5.5.5, 5.5.7 were read at their pages.
- **BLR**: Springer, paywalled, recorded `uncertified` and cited by locator only.

There is no `needs-references.toml`: no text was missing. Mondal–Reinecke, Heyer–Mann, Aoki, Hesselholt–Nikolaus, Kratzer, Kelly–Morrow and Kerz–Strunk–Tamme are not cited in the README; their contents enter only through the supplier gaps, which name the mathematics and not those papers.

## Adversarial pass

| Statement | Instances tried | Values computed | Result | Change |
| --- | --- | --- | --- | --- |
| §0.1 seminormed rings compactly assembled | `ℤ[T]_r` in `colim_n ℤ[T]_{r+1/n}` | `|T| = r` in the colimit (inf), `r+1/n > r` at each stage, so `id` is not weakly compact; `ℤ[T]_{r′} → ℤ[T]_r` is | holds; nonstable only | Check rewritten (the design's zero-ring check was not discriminating) |
| §0.2 arc cover | zero ring, nonzero `A`, infinite family | `M(0)=∅` covered by ∅; `M(A)≠∅` for `A≠0` since `|1|=1` | holds | none |
| §0.4 strict | `ℂ`, `ℝ`, `βI` product, trivial-norm `k` | `ℝ`: residue field not closed; `k`: no element with `0<|x|<1`, not analytic | holds | added the trivial-norm non-example |
| §0.6 quasi-pro-étale | `Cont(S,C)`, `C⟨T⟩₁` | Berkovich disc connected, not profinite | holds | none |
| §1.2 finitary | constant `ℤ` versus all functions on `M(A)`, `A = Cont(S,C)` | `colim ℤ^{S_j}` = locally constant ≠ `ℤ^S` | holds | Check replaced by this computation |
| §1.2 strict vanishing | closed annulus, `ℤ/ℓ` | `H¹ = ℤ/ℓ` (Kummer class of `T`); disc: `H¹ = 0` by §2.4 | a first draft claimed the disc had `H¹ ≠ 0`, refuted by §2.4 | fixed to the annulus |
| §1.4 open `{|a|<r}` | `a=0`; `r >` spectral radius; `a=1, r≤1` | whole / whole / empty | holds | degenerate cases spelled out |
| §1.5 proper | `B(ℤ/2) → ∗` | not 0-truncated | holds | none |
| §1.6 excision on `[0,1]` | stalks of `j_!ℤ → ℤ → i_*ℤ` | `0→ℤ→ℤ` at 0, `ℤ→ℤ→0` at `t>0` | holds | none |
| §2.1 `d(C⟨T⟩₁) ≤ 3` | `ℂ`; nonarchimedean `C` | `2 + 0`; `1 + scd ≤ 1 + (cd ≤ 1 by Tsen) + 1` | holds | Tsen and the closed-subgroup inputs made explicit |
| §2.1 `G_m` not ball-invariant | `1 + aT`, `0<|a|<1` | Gauss distance to 1 is `|a| < 1`: a unit not in `C^×`, trivial in `Ḡ_m` | holds | the design's formula replaced by this computation |
| §3.1 one-units | `−1` in `ℚ₂`, `ℚ₃`; `‖u‖ ≠ 1` | `‖−2‖₂ = 1/2`, `‖−2‖₃ = 1`; `‖u−1‖ = max(‖u‖,1) ≥ 1` | holds | none |
| §3.4 Tate twist | `ℂ`, `ℝ`, nonarchimedean | `cofib(ℤ → ℤ⊕ℤ[1])[−1] = ℤ`; conjugation degree `−1` on `H₁(S¹)`; `Ḡ_m[−1]` | holds | none |
| §3.5 annulus criterion (E5) | `T²+T/2+4` over `ℂ₂`, `r₁ = 1/4`, `r₂ = 4` | Newton points `(0,2),(1,−1),(2,0)`; root norms `1/8, 2`; `min = 1 < 2` excludes, `max = 4 > 2` admits | min correct; iff checked both ways via the Newton polygon | stated as iff with min |
| §4.3 marked Jacobian | `r = 1`; `ℙ¹` with `{0,∞}`; `(t−x)/(t−y)` | `J_Z = Jac`; `J_Z = G_m`, coordinate `x/y` | holds | none |
| §4.4 line domains (E1) | outer `|T| ≥ r₂`, inner `|T−a_i| ≤ r₁` | `|T|ⁿ ≥ r₂ⁿ > |t|`; `≤ r₁^{k_i} < |t|` | corrected exponents | E1–E4 kept |
| §4.8 torsion / `|p| < 1` | `Marc(ℤ_p)`, `Marc(ℤ)` | `|p| ≤ 1/p` on all of `M(ℤ_p)`; `M(ℤ)` mixes archimedean, trivial and `|·|_q^s` points | holds; neither clause covers `Marc(ℤ)` | Check added |
| §5.3 cancellation inverse | multiplicities on the unit image | `N − (N−1) = 1`; base point gives 0; multiplicity `p` counted | holds | none |
| §5.4 cells | `ℙ⁰`, `ℙ¹`, `ℂℙ^∞` | `ℤ`, `ℤ⊕ℤ(1)[2]`, `⊕ ℚ[2n]` (a sum) | holds | none |
| §6.2 flag invariants | `n = 1, 2`; general `n` | `n=2`: antipodal map on `S²` has trace `+1` on `H⁰`, `−1` on `H²`; general `n`: trace 0 for `w≠1`, `n!` for `w=1`, regular rep | holds | new route |
| §6.3 projectors | eigenvalues `1, 2, 4` | denominators `3, −2, 6`; values `(1,0,0)`, `(0,1,0)`, `(0,0,1)` | holds | none |
| §7.1 root class | `ℚ_p` | `I/I² = 𝔽_p ≠ 0`, so not Tor-unital | holds | none |
| §7.5 cofibre versus fibre | `A = C` | cofibre `π₀ = ℤ`; fibre `π₀ = C^×/(1+C_{<1})` | direction pinned | Check made concrete |
| §7.6 strict K formula | residue char 0 | `p = 1`, nothing inverted | holds | none |
| §7.7 E∞ gluing | `π₀`, `p = 2` | `ℤ = ℤ[1/p] ×_{ℚ_p} ℤ_p` | holds | `p = 2` retained |
| §8.1 inverse twist | sequence model | `ℤ(−1) = (ℤ(n−1))_n`; `⊗ℤ(1)` gives `(ℤ(n))` | holds | the unproved "`ℤ(−1)` not effective" claim replaced |
| §8.2 `ℙ¹` duality | complex point | `(ℤ⊕ℤ[−2])⊗ℤ[2] = ℤ[2]⊕ℤ = ℤmot[ℙ¹]` | holds | none |
| §8.5 boundary | closed disc | proper, `f_*ℤ = ℤ`; smoothness would force `ℤ(1)[2] = ℤ`, but `(Ḡ_m⊗ℚ)[1] ≠ ℚ` | not smooth | Check added |
| §9.5 DMT not everything | elliptic `E/𝔽̄_p`, `Ψ` | `End(E)⊗ℚ` is a quadratic field or quaternion algebra, not a product of `M_n(ℚ)` | holds | Check made concrete |
| §9.6 rigidity | `ℂ×ℂ`; `Cont([0,1],ℂ)` | `[0,1]`: compact unit; `RΓ(j_!ℤ_{(0,1]}) = RΓ_c((0,1]) = 0`, so not compactly generated | a first draft said "only compact object 0", false since the unit is compact | fixed |
| §10.1 `p` invertible | Artin–Schreier; Nisnevich contrast | `k^×/p ≠ 0` for imperfect `k` in Nisnevich | holds | none |
| §10.2 rational / torsion | `Spec k`, `j=1`; `ℤ/ℓ` | `k^×⊗ℚ = 0` for `𝔽̄_p`, `≠ 0` for `ℂ`; `μ_ℓ ≅ ℤ/ℓ` | holds | new target |
| §10.4/10.5 shift (E6) | `ℙ¹`, `j=1`; `Spec k`, `j=0` | `π_{−2} = K₀^{(1)} = ℚ`, `π₀ = 0`; `π₀ = ℚ` | `[−2j]` required | kept |
| §10.6 comparison | `𝔽̄_p`, `Map(ℤ(−j),ℤ)_ℚ` | `ℚ[0]` iff `j=0`, from `K(𝔽̄_p)_ℚ = ℚ[0]` | holds | none |
| §11.3 `MG_k` fibres | `⊗𝔽_ℓ`, `⊗ℚ`, `⊗𝔽_p` | `𝔽_ℓ` (augmentation ideal divisible); `ℚ[t^{±}]`; empty | holds | Tor-amplitude Check added |
| §11.4 Tate orthogonality | `Hom(ℚ(i),ℚ(j)[m])` | `K_{2(j−i)−m}^{(j−i)}(𝔽̄_p)_ℚ = 0` unless `i=j, m=0` | holds | none |
| §11.8 example | `A = ℚ⊕ℚ(1)`, `N` | `N ≠ 0`, `N² = 0` | holds | none |
| §12.1 partially proper | open disc versus closed disc | open disc is a union of closed discs, so partially proper; closed disc is not | a first draft used the open disc as the non-example, which was wrong | fixed |
| §12.2 rank-one topology | `Spa(C,O_C) → Spa(C,C⁺)` | surjective on rank-one points, misses the closed point | a cover, not a v-cover | none |
| §12.3 overconvergence | `j_!ℤ/n` from the generic point; `n = 1` | stalks `0` and `ℤ/n`, specialization `0 → ℤ/n`; `n=1` empty | holds | none |

Context: `Suggested.lean` has no declarations, so it has no `variable`/`include` context to check. Every README statement carries its hypotheses in the sentence.

## Dependency check

```
depcheck: 56 roadmaps, 658 edges, 0 problem(s)
```

No UPWARD, CYCLE or moved line.

## Citation resolver

`roadmaps resolve` reported one lead: "AnalyticStacks §1.5: no roadmap AnalyticStacks on main or in an open pull request". This is a false positive for the resolver's scope. AnalyticStacks is a board package at merge-order position 225, before this roadmap (228). Its section numbers were read from `packages/AnalyticStacks/design/README.md`. No Lean names were reported missing.

## Untrusted text

No suspicious passages were found in the supplier READMEs, the design or the sources.
