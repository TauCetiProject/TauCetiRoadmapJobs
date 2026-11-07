# PKG-PerfectoidQuotientsPartII — package report

Deliverables: `packages/PerfectoidQuotientsPartII/README.md`, `Suggested.lean`, `metadata.toml`
(`topic = "math.AG"`, as PerfectoidSpaces on main) and `sources.toml` (new; 9 entries, all fetched
through the sources service from open repositories, status `certified`; `sources check`: 0
problems). `design/plan.json` is unchanged: the package needs nothing from a supplier that the
supplier does not already state, so no supplier gap was declared. The existing `gaps` entry (the
cover inside `(R⁺)^∧` for imperfect residue fields) is an internal note, not a supplier gap, and is
left as accepted; the README states Q10.5 with that cover as a hypothesis.

Inputs: the design README and `plan.json`. The brief's `design/review.json` and `reports/` did not
exist in the package folder, so there were no non-blocking review notes to apply; the corrections
recorded in the design's own source-check section (E1, E3, E5) were applied.

## Headline theorems

| Headline | Source | Status |
| --- | --- | --- |
| Fibre products of perfectoid rings along a surjection | ČS Prop. 2.1.4 | stated, `isIntegralPerfectoid_fibreProduct` (perfectoidness; the tilt identification is README Q5.2) |
| Relative tilting equivalence `A' ↦ A'♭`, `B ↦ W(B)/(ξ)` | ČS Prop. 2.1.9 (first assertion) | not statable: needs the tilt as a functor on integral perfectoid `A`-algebras and the two categories; Mathlib's `PreTilt` is not a functor at the pin |
| Adic completeness transfers along tilting | ČS Prop. 2.1.9 | stated, `isAdicComplete_preTilt_iff` |
| Valuation rings under tilting | ČS Prop. 2.1.9 | stated, `valuationRing_iff_preTilt` |
| Value groups agree via `♯` | ČS Prop. 2.1.9 | stated, `untilt_dvd_iff_and_exists_isUnit_mul_untilt` (divisibility reflection + unit-times-sharp, which together are the order isomorphism) |
| Algebraically closed fraction fields under tilting | ČS Prop. 2.1.9 | stated, `isAlgClosed_fractionRing_iff` |
| Torsion-free perfectoid presentations | ČS Prop. 2.1.12 | stated, `exists_surjective_of_isSMulRegular`, `exists_surjective_of_isSMulRegular_of_roots`, `exists_surjective_of_isSMulRegular_p` |
| Integral approximation lemma | ČS Lemma 2.3.1 | stated, `exists_approximation` |
| Valuative criterion for topological nilpotence | ČS Lemma 2.3.2 | stated (Tate-ring form, Tau Ceti carriers), `isTopologicallyNilpotent_iff_forall_lt_one` |
| Ind-syntomic André lemma | ČS Thm. 2.3.4 | stated, `exists_indSyntomic_andre` (definitions `IsSyntomic`, `IsIndSyntomic`) |
| Semiperfectoid covers of `p`-Zariski rings | ČS Cor. 2.3.7 | stated, `exists_semiperfectoid_cover` (definition `IsPZariski`) |
| Perfectoid faithfully flat covers of regular local rings | BS Rem. 3.11; Bhatt Prop. 5.2 | stated, `exists_faithfullyFlat_isIntegralPerfectoid` |
| Almost vanishing of `Tor` along finite subextensions of `R⁺`, given a cover inside `(R⁺)^∧` | BS Rem. 10.13 | stated, `tor_map_mul_root_eq_zero_of_cover` |
| Same, perfect residue field (unconditional) | BS Rem. 10.13; HM17 Thm. 1.3 | stated, `tor_map_mul_root_eq_zero` |

`IsIntegralPerfectoid` restates PerfectoidSpaces P1.24's predicate verbatim (namespace
`TauCetiRoadmap.PerfectoidQuotientsPartII`, so no fully qualified name collides with
`TauCetiRoadmap.PerfectoidSpaces…IsIntegralPerfectoid`); without it none of the headlines is
statable without importing another roadmap. `IsSyntomic` is Stacks' local description over Tau
Ceti's `TauCeti.Algebra.IsStandardSyntomicOfRelativeDimension`; `IsIndSyntomic` the factorization
form; `IsPZariski` the one-line predicate. No sorry'd data, no `set_option`, imports are `Mathlib`
and three Tau Ceti modules.

## What the README could not support

- For a complete regular local ring with **imperfect** residue field, no source supplies a
  faithfully flat perfectoid cover `R → R_∞` together with an `R`-algebra map `R_∞ → (R⁺)^∧`
  (Bhatt–Scholze Remark 10.13 asserts it, citing Remark 3.11, whose cover is a prism perfection
  with no map to `(R⁺)^∧`; Bhatt's Proposition 5.2 first passes to a faithfully flat extension with
  algebraically closed residue field, which is not inside `R⁺`). Q10.5 therefore carries the cover
  and its map as hypotheses (`tor_map_mul_root_eq_zero_of_cover`), and Q10.6 is unconditional for
  perfect residue fields via the tower of PerfectoidSpaces P7.17 (Q10.4). I checked that the
  prismatic route does not produce the map: a δ-map `W⟦x⟧ → W((R⁺)^♭)` with `x_i ↦ [x_i♭]` does not
  extend because the `x_i` are not topologically nilpotent for the `p`-adic topology of `(R⁺)^∧`.
  (A construction adjoining roots of the `x_i` and of lifts of a finite `p`-basis inside `R⁺` looks
  feasible for `F`-finite residue fields, the generality of HM17, but I found no source for it and
  did not add an unsourced target.)

## Notions moved down

- Ind-fppf and ind-syntomic ring maps (README Q7.1–Q7.3): the board design of
  SchemeAndStackFoundationsPartII (merge order line 200, later than this roadmap at line 64)
  claims them in its §§0.1–0.2. This roadmap needs them for the André lemma, so they are stated
  here and SchemeAndStackFoundationsPartII is listed as a downstream consumer; its design should
  import Q7.1–Q7.3 rather than plan them. No `*Needs:*` line or supplier row cites a later roadmap.
- PerfectoidQuotients (at its open head) says the "ordinary ind-syntomic André theorem" and generic
  fibre-product/valuation methods belong to `IntegralPerfectoidPartII`; no roadmap of that name
  exists on main, at the open heads or on the board. This roadmap is that owner; PerfectoidQuotients'
  text names an outdated title.

## Duplication sweep: removals and re-citations

Removed from this roadmap and cited instead:

1. Design Q5.1 (1), the multiplicative isomorphism `lim_{x↦x^p} A ≅ A♭` with `♯` as zeroth
   coordinate: Mathlib `Perfection.quotientMulEquiv` and `Perfection.coeff_zero_symm_quotientMulEquiv`
   (`Mathlib/RingTheory/Teichmuller.lean`), `PreTilt.untilt` (`Mathlib/RingTheory/Perfectoid/Untilt.lean`).
2. Design Q5.3 (3), the generator normal form `p + [p♭]x` with `p♭ = ξ₀`: PerfectoidQuotients §0.2
   `theta_generator_normal_form` (moved to Conventions).
3. Design Q5.4 (3), `A[ϖ^{1/p^∞}] = A[ϖ] = A[ϖ^∞]`: PerfectoidQuotients §0.4
   `compatible_root_annihilator` / `compatible_root_power_torsion`.
4. Design Q10.1 (b), the `p`-power root tower with perfectoid completion, including its "uniform
   presentation": PerfectoidSpaces P7.17 `RegularTower.exists_perfectoidTower`. Q10.1 keeps only
   the unramified refinement of P7.16a, which P7.16a does not state.
5. The easy directions of Q8.1 and Q8.4: Tau Ceti
   `Valuation.IsContinuous.cofinalValue_of_isTopologicallyNilpotent` and
   `Valuation.IsContinuous.lt_one_of_isTopologicallyNilpotent`
   (`TauCeti/RingTheory/Valuation/Continuous/TopologicallyNilpotent.lean`).
6. The blowup-algebra carrier of Q7.5 and its universal property: Tau Ceti `Ideal.affineBlowup`,
   `Ideal.affineBlowupLift` (`TauCeti/RingTheory/Ideal/AffineBlowup.lean`); only the
   regular-sequence presentation remains a target.
7. The flat relative global complete intersection notion used in Q7.2/Q7.6: Tau Ceti
   `TauCeti.Algebra.IsStandardSyntomicOfRelativeDimension`; Q7.6 keeps the flatness theorem
   (Stacks 00SW), which Tau Ceti builds into its definition rather than proving.
8. δ-rings, prisms, prism perfection and the perfect-prism equivalence: cited to their owner
   PerfectoidSpaces P4.15.2 (PrismaticCohomology itself imports them there), with
   PrismaticCohomology §§0.61–0.63, 0.79 for distinguished-element and rigidity API and §§2.30–2.31
   for perfectoidization and almost purity.
9. The Tate-ring forms of Q5.1 (1) and Q5.3 (PerfectoidSpaces P1.4–P1.6): kept variants, each
   stated with the one-clause difference (arbitrary complete rings; integral perfectoid rings with
   torsion).
10. Q6.3's rank-one case: Mathlib `PreTilt.isDomain` (cited as the valued-field case).
11. The design's Lean API catalogue names (`IsIndFppf.*`, `IsIndSyntomic.*`,
    `AndreRootExtension.*`, `tiltValuation*`, `PZariskization.*`, `IsPZariski.*`,
    `Module.Flat.of_isSMulRegular_of_flat_localization_of_flat_quotient`, `ker_aeval_div_of_isRegular`,
    `flat_quotient_of_forall_map_ne_zero`, `tiltCoord_injective`, `valuationRing_preTilt`,
    `isAdicComplete_localization_of_valuationRing`): rewritten as prose API bullets; the design's
    `IsIndFppf` definition is not in `Suggested.lean` (no headline needs it).
12. The design's process sections ("Recorded gaps", "Source checks", "Ownership notes", "Paper items
    and where they are planned", "Inputs from other roadmaps", `*Planet:*` lines, atlas node ids)
    were folded into Scope and ownership, the supplier contracts and the statements.

Ownership against open work, checked by object with `roadmaps grep` (main + 358 open heads) and the
board packages: Remark 3.11 of BS22, Heitmann–Ma / Remark 10.13, `p`-Zariski rings, ČS
Prop. 2.1.4/2.1.9/2.1.12, Lemma 2.3.1, Thm. 2.3.4, Cor. 2.3.7, perfectoid valuation rings, fibre
products of perfectoid rings, approximation lemma, blowup algebras, glueing of flatness, ind-fppf /
ind-syntomic: no other owner except SchemeAndStackFoundationsPartII's design for ind-fppf/ind-syntomic
(above). Hits for "Proposition 2.1.4", "Lemma 2.3.1" etc. elsewhere are other papers' numbering.

## Corrections relative to the design

- Stacks tag for "syntomic iff locally standard syntomic": 00TA (which is about smooth maps) replaced
  by Lemmas 10.136.4 and 10.136.15 (00SO, 00SY), checked in the fetched Stacks text.
- Q10.2 generalized to every regular local ring with `p ∈ 𝔪` (not necessarily complete, either
  characteristic), the generality of Bhatt Proposition 5.2; equal characteristic via Kunz
  (EnhancedDerivedSheaves §E1.6), non-complete via `R → R^∧`. The design's mixed-characteristic
  complete statement is the special case described in Q10.2.
- Q10.5: "`c ∈ pR` nonzero" relaxed to `c ∈ pR` (BS Rem. 10.13 has no nonzero condition; `c = 0` is a
  vacuous case, added as a Check).
- Q10.5 now a stated headline with the cover hypothesis; Q10.6 split off as the unconditional case.
- Cross-roadmap citations converted from atlas node ids to sections that exist: PerfectoidQuotients
  "Q0:…" → §§0.2–0.6 (and its nonexistent "Q3/andre-flatness-lemma" → §§1.2, 1.4 with
  PerfectoidSpaces P4.15.4); PrismaticCohomology "PR.0/PR.2" → PerfectoidSpaces P4.15.2 and
  PrismaticCohomology §§0.61–0.63, 0.79, 2.30–2.31; DerivedDeRhamCohomology "DD.1" → §1.10;
  "Tau Ceti StableReduction Layer 1" → the StableReduction roadmap's Layer 1 (on main) plus Tau Ceti
  `TauCeti.Algebra.IsStandardSyntomicOfRelativeDimension`.
- Second-hand citations without a manifest entry (Gabber–Ramero, Raynaud–Gruson, EGA IV,
  Ferrand–Raynaud) removed; the points are attributed to the ČS locators that carry them.
- Applied from the design's source checks: ČS Cor. 2.3.7's proof cites Prop. 2.1.11 (d) where (c)
  is meant (Q9.6); "monic" read as monic of positive degree (Q9.3, conventions); the ind-fppf product
  clause holds for nonempty finite products only (Q7.1, Q7.3). Also kept: in Cor. 2.3.7 the ring
  with roots of all monic polynomials is `B/J`, not the André extension `B` itself (Thm. 2.3.4 gives
  roots only modulo `J`).
- Many design "Acceptance" examples were wrong or loose and were recomputed as Checks (see table).
- Repair: the Q7.4 proof route's `Tor` identity no longer has a code span broken across a line
  (written `Tor_i^A(M, Q) = Tor_i^(A/f)(M/fM, Q) = 0` on one line), and the 37 HTML anchor lines
  before the Q5–Q10 subsections were deleted (nothing linked to them). No other change.

## Adversarial pass

| Statement | Instances tried | Values computed | Result | Change |
| --- | --- | --- | --- | --- |
| Q5.1 (1) tilt modulo `ϖ ∣ p` | `ℤ_p`; perfect `𝔽_p`-alg with `ϖ=0`; `𝒪_C`, `ϖ=p^{1/p}`; `ℤ_3`, `ϖ=9` | `ℤ_p♭=𝔽_p`, sequences `0`, constant `ζ` (`ζ^p=ζ`); at `p=2` only `1` (`−1` not a square in `ℤ_2`); `(1+1)^3=8≠2` in `ℤ/9` | holds; `ϖ∣p` needed for Frobenius to be additive | Check added for `ϖ=9` |
| Q5.1 (2) uniqueness of `θ` | `𝒪_C`, `ε=(1,ζ_p,…)` | `ε♯=1♯`, `ε≠1` | uniqueness is about `θ`, `♯` not injective | none |
| Q5.2 products / fibre products | `A'=0`; `B=A'`; `A'=ℤ/p²` | `C=A×B`; `C=A`; `ℤ/p²` has `1` killed by `p²` not `p` | holds; torsion hypothesis needed by route | Check rewritten |
| Q5.3 `A♭/(ϖ♭)^p ≅ A/ϖ^p` | perfect alg `ϖ=0`; `𝒪_C`; completed `ℤ_p[p^{1/p^∞}]` | `A/0=A`; `𝒪_{C♭}/p♭≅𝒪_C/p`; `𝔽_p[t^{1/p^∞}]/(t)` both sides | holds; only ideals canonical (`p♭` vs `u p♭`) | part (3) removed (dup) |
| Q5.4 torsion transfer | `𝒪_C`; perfect alg (`ξ=p`); `𝒪_C×𝔽̄_p`, `ϖ=(p^{1/p},0)` and `(p^{1/p},1)`; non-perfectoid `𝔽_p[t^{1/p^∞}]/(t)` | `0=0`; `A≅A`; `0×𝔽̄_p` both; `0` both; `A♭=𝔽_p` vs `A` infinite-dim | holds; perfectoid hypothesis needed | negative control added; part (3) removed (dup) |
| Q5.5 `A_inf` of surjection | identity; `𝒪_C→k̄`; `A'=0` | kernel `W(𝔪_{C♭})`, `ker θ ↦ (p)`; `ker f=A` | holds | none |
| Q5.6 fibre products | `A'=0`; `𝒪_C×_{k̄}𝒪_C`; `𝔽_p[t^{1/p^∞}]` doubled over `𝔽_p`; decomposition of PQ §0.4 | perfect fibre product = own tilt | holds | wrong design Check on surjectivity replaced |
| Q5.7 glueing with perfect `B` | `𝒪_C`, `𝔽_p→k̄`; `B=(A/ϖ)_red` | subring `{x : x̄∈𝔽_p}`; `A` | holds; map direction `B→(A/ϖ)_red` | none |
| Q6.1 relative tilting | char `p` base (`ξ=p`, `ξ₀=0`); `𝒪_C`; `B=C♭` | `0`-adic complete trivially; `W(C♭)/(ξ)=0` as `ξ₀=p♭` unit | completeness hypothesis needed | Check added |
| Q6.2 completeness transfer (`isAdicComplete_preTilt_iff`) | `𝒪_C`, `ϖ♭=(p♭)^{1/p}`; `ϖ♭=0` (forces `p=0`); `∏𝒪_C`; `ϖ♭=(p♭)²` (not dividing `ξ₀`) | both complete in each case; zero ideal trivially complete | holds; divisibility is a route hypothesis | Check rewritten; Lean `Fact`/completeness instances noted |
| Q6.3 tilt of complete valuation ring | `𝒪_C`; `ℤ_p`; `𝔽_p⟦t⟧` | `𝒪_{C♭}`; `𝔽_p` (value group map `{1}→ℤ` not onto); `⋂𝔽_p⟦t^{pⁿ}⟧=𝔽_p` | holds, value group can vanish | none |
| Q6.4 valuation rings (`valuationRing_iff_preTilt`, `untilt_dvd_iff_and_exists_isUnit_mul_untilt`) | `𝒪_C`; `𝒪_C×𝒪_C`; completed `ℤ_p[p^{1/p^∞}]`; perfect valuation ring; zero ring | value groups `|C^×|`; neither side a domain; `(t^{1/p})♯=p^{1/p}`, value group `ℤ[1/p]`; `♯=id`; zero ring excluded by `Fact ¬IsUnit p` | holds | design "unit multiple" example corrected to exact sharp |
| Q6.5 localization completeness | `𝒪_C`, `𝔮=𝔪`; `𝔮=0`, `a≠0`; `a=0` | `V`; `Frac V` not `a`-separated (`a` unit); trivial | holds | none |
| Q6.6 localizations of perfectoid valuation rings | `𝒪_C` (char 0) and `𝒪_{C♭}`; rank 2; `𝔮=0` mixed vs char `p` | only `𝔪` vs also `0` (gives `C♭`); rank-one coarsening; `Frac V` not complete when `p` unit | holds | Check corrected (design conflated characteristics) |
| Q6.7 alg. closed fraction fields (`isAlgClosed_fractionRing_iff`) | `𝒪_C`; completed `ℤ_p[p^{1/p^∞}]`, `p` odd; dim 0 | `X²−u`, `u` non-square: no root (residue field `𝔽_p`) | holds | design's Artin–Schreier remark replaced by computed case |
| Q6.8 presentations (three theorems) | `A=k̄`, `ϖ=0` (`0^p∣p` iff `p=0`); `A` torsion-free; `A=𝔽_p`; zero ring | `Ã=W(k̄)[p^{1/p^∞}]^∧`, `ϖ̃=p^{1/p}`, roots `p^{1/p^{n+1}}↦0`; `Ã=A`; `ℤ_p[p^{1/p^∞}]^∧→𝔽_p`; `Ã=0` | holds | none |
| Q7.1 ind-fppf | `A→A`; `A[X_i:i∈ℕ]`; `ℤ→ℚ` (`ℚ⊗𝔽_p=0`); `ℤ→𝔽_p`; `A→A×A`; empty product over `ℤ` | ind-fppf; not f.p.; not faithfully flat; not flat; ind-fppf; zero algebra not faithfully flat | holds with nonempty products | none |
| Q7.2 `IsSyntomic` / `IsIndSyntomic` | `S=0` (empty `Finset`, `span ∅=⊤`); `R→R`; `ℤ→𝔽_p`; `ℤ→ℤ[1/p]`; `𝔽_p[x,y]/(x²,xy,y²)` | syntomic; via `MvPolynomial (Fin 0)`; factoring `𝔽_p→T→𝔽_p` forces flat `T` with `p=0`, so `T=0`, impossible; syntomic not f.flat; flat, f.p., not lci | holds | tag corrected to 00SO/00SY |
| Q7.3 stability | composite of root algebras; base change `ℤ→ℤ[X]` to `𝔽_p`; empty product | ind-fppf; `𝔽_p→𝔽_p[X]`; ind-syntomic, not ind-fppf | holds | none |
| Q7.4 glueing flatness | `ℤ_p/ℤ`, `f=p`; `M=ℤ/p`; `A=𝔽_p[ε]/(ε²)`, `f=ε`, `M=A/ε` | flat; `M[1/p]=0`, `M/pM=𝔽_p` flat, `M` not flat; same pattern with `f` zero divisor on `A` | regularity on `M` needed (`ℤ/p`); the `𝔽_p[ε]` case fails both regularity hypotheses | `𝔽_p[ε]` non-example added |
| Q7.5 blowup presentation | `ℤ_p[T]`, `a=p`, `g=T`; `a=g=2` in `ℤ`; `g=0` | `ℤ_p[X]`; `X−1` is 2-torsion in `ℤ[X]/(2X−2)`; `R[X]/(aX)` has `a`-torsion `X` | regularity needed | Check added |
| Q7.6 fibrewise hypersurfaces | `ϖX−q`; `pX` over `ℤ`; `1+px` over `ℤ_p`; `n=0` | nonzero all fibres; `ℤ[X]/(pX)` not flat; `≅ℚ_p` flat, empty special fibre; unit `g`, zero ring | holds | design's `n=0` and `1+px` cases added |
| Q8.1 continuity criterion | `p`-adic on `ℤ_p`; trivial valuation; `v(ϖ)=0` | continuous; `v(p)ⁿ=1` never `<1`; continuous | holds | none |
| Q8.2 tilted valuation | `𝒪_C`; `v(ϖ)=0`; lift ambiguity at `p♭` | `v♭(p♭)=v(p)`; factors through `A/ϖ`; lifts `0`, `p` of different values | holds | API names → prose |
| Q8.3 approximation (`exists_approximation`) | `a=b♯`; `m=0`; `v(p)=0`; `𝒪_C`, `a=1+p` | difference `0`; bound `v(p)`; forces `a≡a'♯` mod supp, consistent with `a−a'♯∈pA`; `a'=1` gives equality `v(p)`, `a'=(1+p)♭` gives `0` | holds; `a'` not unique | design's "factor cannot be dropped" claim corrected |
| Q8.4 nilpotence criterion (`isTopologicallyNilpotent_iff_forall_lt_one`) | `ℚ_p`/`ℤ_p`, `a=p`, `a=1`, `a=1/p`; `ℚ_p⟨T⟩` Gauss; `B=ℚ_p` unbounded; zero ring | `v(p)<1`; `v(1)=1`; `v(1/p)=p>1`; `v(T)=1`; no continuous `v≤1` on `ℚ_p`, so RHS vacuous at `a=1` (false iff); zero ring: no valuations (0≠1 in `Γ₀`), both sides true | holds with a ring of definition | Lean uses Tau Ceti `PairOfDefinition` (bounded) |
| Q9.1 root extension | `𝒫=∅`; `{T−a}`; `{T}` over `𝒪_C`; `P=1` | `A'` = `p`-int. closure; roots of `a`; `T^{1/p}` nonzero nilpotent, divisible by all `ϖ^{m/p}`; `1/ϖ∈A_∞`, `A'/I'=0` | positive degree needed | none |
| Q9.2 one polynomial | `P=T`, `m=1`; `m=0` | `T^{1/p}/ϖ^{1/p}` `p`-integral, not in `A_0[T/ϖ]`; `A_0[P]=A_0` | union needed; `m>0` | none |
| Q9.3 André lemma (`exists_indSyntomic_andre`) | `𝒪_C`; completed `ℤ_p[p^{1/p^∞}]`, `T²−u`; `P=1`; `A=0` | `A'=A`, `I'=0`; root only in `A'/I'`; no root of `1` in nonzero ring; zero | holds | none |
| Q9.4 consequences | perfect alg; `1+p` over `ℤ_p^{cycl}` | unique roots; `1+p ∈ U_{p−1}∖U_p` in `ℚ_p(ζ_p)`, not a `p`-th power | holds | almost-flatness Check made concrete (`k̄` almost zero) |
| Q9.5 `IsPZariski` | `ℤ/pⁿ`; zero ring; `ℤ`; `ℚ`; `ℤ_(p)` | yes; yes; `1+p` nonunit; `1+p(−1/p)=0`; `n^{p−1}∈1+pℤ` | holds | none |
| Q9.6 semiperfectoid covers (`exists_semiperfectoid_cover`) | `ℤ_(p)`; `𝔽_p`; `0`; `ℤ` | `ℤ̄_p`; `ℤ̄_p/p`, red `𝔽̄_p`; `0`; excluded | holds; `Ã_∞=B/J` | E1 applied; garbled design Check replaced |
| Q10.1 unramified towers | `ℤ_p`; `ℤ_p[√p]`; `𝔽_p⟦x⟧` | `W(𝔽_{pⁿ})`; ramified stages; colimit not complete | needs `R` unramified | (b) removed (dup of P7.17) |
| Q10.2 covers of regular local rings (`exists_faithfullyFlat_isIntegralPerfectoid`) | `ℤ_p`; crystalline prism `(ℤ_p,(p))`; `𝔽_p⟦t⟧`; field of char `p`; `ℤ_(p)` (not complete) | `ℤ_p[p^{1/p^∞}]^∧`; reduction `𝔽_p`, not flat; `⋃𝔽_p⟦t^{1/pⁿ}⟧`; perfect closure; via `ℤ_p` | holds in Bhatt's generality | statement generalized |
| Q10.3 `(R⁺)^∧` perfectoid | `ℤ_p`; `𝔽_p⟦t⟧`; `ℚ` | `𝒪_{ℂ_p}`; not `p`-torsion-free; `0` | char 0 needed for first claim | Check corrected |
| Q10.4 cover inside `(R⁺)^∧` | `ℤ_p` | `p^{1/p}∉pR⁺` (val `1/p`), `p^{1+1/p}∈pR_∞` | holds | Check corrected |
| Q10.5 / Q10.6 almost `Tor` vanishing (`tor_map_mul_root_eq_zero_of_cover`, `tor_map_mul_root_eq_zero`) | `S=R`; `R→S` étale; `c=0`; `S=R[√p]`, `c=p`; dim 1; dim 2 normal `S` | `Tor_i(R/pⁿ,N)=0`; source `0`; roots `0` in domain `R⁺`, `Tor` of zero map `0`; `p^{1/p}∉S`; free `S` gives empty statement; normal ⇒ CM ⇒ free (Auslander–Buchsbaum) | holds; content needs non-CM `S`, `dim R≥3` | "nonzero `c`" dropped; Checks recomputed |
| Conventions: `p♭ = ξ₀` | `ξ=p+[π♭]^p x` (PQ §0.2) | `ξ₀=(π♭)^p x₀`, `(ξ₀)♯ = u·p` | consistent | moved from Q5.3 (3) |

Context check (item 2): every `sorry`'d statement carries its standing hypotheses in its own signature;
`#check @name` for all 19 declarations (scratch file, one elaboration) shows the intended binders.
Changes from that pass: `[IsDomain R]` added to the `Tor` theorems (needed for `FractionRing R` to be
a field; a consequence of regularity), identifiers containing `∞` renamed (`A'`, `R'`), and the
Lean-only instance hypotheses (`Fact ¬IsUnit p`, `p`-adic completeness, `IsDomain (PreTilt A p)`)
are listed in the README Conventions as consequences of the README hypotheses.

## Elaboration

`lake env lean packages/PerfectoidQuotientsPartII/Suggested.lean` from the content checkout:
exit 0, **15** warnings `declaration uses 'sorry'` (one per theorem), no other message. Tau Ceti
modules built first with `lake build`: `TauCeti.RingTheory.Syntomic.StandardSyntomic` (imported), and
for the name check `TauCeti.RingTheory.Valuation.Continuous.TopologicallyNilpotent`,
`TauCeti.RingTheory.Ideal.AffineBlowup`, `TauCeti.AlgebraicGeometry.AdicSpace.Spa.Integral`,
`TauCeti.AlgebraicGeometry.AdicSpace.Cont.OfIdeal`. Every Mathlib and Tau Ceti name cited in the
README was confirmed with `#check` at the pins (`surjective_fontaineTheta` is in Mathlib's root
namespace).

## Dependency check

```
depcheck: 56 roadmaps, 644 edges, 0 problem(s)
```

`roadmaps resolve` on the README: no cross-roadmap citation and no Lean name found nowhere.

## Untrusted text

Nothing in the fetched sources, the supplier READMEs or the design read as an instruction.
