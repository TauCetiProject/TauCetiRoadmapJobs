# PKG-PadicFamiliesPartII

Deliverables: `packages/PadicFamiliesPartII/README.md` (1269 lines, 9 layers, 62 target subsections), `packages/PadicFamiliesPartII/Suggested.lean`, `packages/PadicFamiliesPartII/metadata.toml` (`topic = "math.NT"`), `packages/PadicFamiliesPartII/sources.toml` (5 sources, all certified), and the top-level `gaps` list of `packages/PadicFamiliesPartII/design/plan.json` (14 supplier gaps; nothing else in the file changed, which was checked mechanically).

No `review.json` and no prior report existed in the package; the accepted review is the `review` object inside `design/plan.json` (status accepted, 2026-10-19). Its notes were applied: the special-fibre amplitude domains (§3.3, §4.4), the interior Frobenius and trace domains (§§5.2–5.4), the BGG coefficient category (§7.1), the independent eigenspace balance (§§8.5–8.6), the path powers (§2.4) and the corrected locators.

## Headline theorems

None of them can be stated at the pins. The module docstring of `Suggested.lean` lists each one and what it lacks. The file declares nothing else.

| Headline theorem | README | Status | Missing carrier |
| --- | --- | --- | --- |
| PEL small-slope classicality (all dimensions) | §2.8, §2.9 | not statable | PEL Shimura varieties at Iwahori level, rigid generic fibres, `ω^κ`, overconvergent forms, `U_i` |
| Ordinary amplitude of the spherical T on `X₁^{≥1}` | §3.3 | not statable | Siegel threefolds over `ℤ_p`, toroidal compactifications, coherent cohomology |
| Vanishing localized Euler characteristic of the Klingen family | §3.5 | not statable | the Klingen family `M_Kli` over `ℤ_p⟦ℤ_pˣ⟧` (needs the above) |
| Hilbert derived ordinary control | §4.7 | not statable | Hilbert–Siegel moduli, partial Igusa towers, supported coherent cohomology |
| Weight-two doubling injection | §5.8 | not statable | the same, plus special-fibre partial Frobenius |
| One-place rational comparison | §6.7 | not statable | analytic coefficient complexes on Hilbert–Siegel varieties |
| Completed Eichler–Shimura spectral sequence; four-piece filtration | §§7.5–7.8 | not statable | completed cohomology of Shimura towers, derived locally analytic vectors, analytic localization |
| Sen–Cousin comparison; de Rham ordinary classicality | §§8.4–8.6 | not statable | arithmetic Sen operator on completed cohomology, supported higher Coleman cohomology |
| Four projective Hida modules (concentration, specializations, duality, tame projectivity, central character) | §§9.2–9.7 | not statable | universal supported Iwasawa complexes of Siegel threefolds |

The design's Lean file had three light definitions: a rational strict-slope predicate, the integer Klingen threshold `k+2r−3` and the companion operator. None of them is a headline theorem, so none was kept. The Klingen threshold also duplicates HigherHidaAndColemanTheory §9.7. The companion identities are algebra on arbitrary endomorphisms and stay a README target (§5.6).

## Elaboration

Ran `lake env lean <Suggested.lean>` from the content checkout at the pins in `lake-manifest.json`. It exited 0 with no output: **0 `sorry` warnings and no other messages**. No `TauCeti.*` module is imported. The brief asks for a `#check @name` scratch pass over every declaration. There are no declarations, so there was nothing to check, and no elaborated type differs from a README statement.

## Notions moved down from later roadmaps

- **The BGG coefficient category and its analytic realization.** This is `O(𝔤,𝔮)_{λ-alg}`, the completion `Û(𝔤)` with coadmissible modules, Schmidt's equivalence `O ≅ Ô`, and the functor `M ↦ M̂^∨`. It is now README §7.1 (BCGP25 Definitions 2.2.31 and 3.4.5, Theorem 2.2.39, Proposition 3.4.3). **Analytic localization** `Loc(M)` and its Bruhat-stratum description are now §7.2 (BCGP25 §3.5, Theorem 3.5.11). The only roadmap that plans this material is LocallyAnalyticDistributionsPartII, a board package at merge-order position 316, after this roadmap (245). It covers BCGP25 §2.2.27–2.2.36. LieHighestWeight Layer 3 on main and `TauCeti.VermaModule` give Verma modules only. That roadmap should import §§7.1–7.2 from here.
- **Genus-two boundary vanishing** for the completed tower (§7.7). CompletedCohomologyPartII §7.8 states only the generic implication and explicitly assigns the `GSp₄` vanishing to its arithmetic consumer, so this roadmap owns it.

## Duplication sweep: removals and replacements

Checked by object against main, the open roadmap pull requests through `roadmaps grep`/`show`, the board packages, and the pinned Mathlib and Tau Ceti.

- **Deleted, owned by HigherHidaAndColemanTheory:**
  - The Klingen extension threshold `b(k,r) = k+2r−3` (design K2/extension-bound) is §9.7.
  - The corrected Klingen BGG scaling with ranges `s<k−2`, `s<k+1` (K2/bgg-scaling) is §9.6 item 4.
  - Torsion continuation and tube comparison (K2/torsion-continuation) is §9.7.

  All three are cited in "Scope and ownership" and in the supplier contract.
- **Replaced by an existing owner:**
  - The design's request to SmoothRepresentationsOfLocalGroups for the spherical-to-Klingen comparison is HigherHidaAndColemanTheory §9.5.
  - AutomorphicGaloisRepresentationsPartII "AG2.1a" (the Nekovář multiplicity) is ArithmeticGaloisRepresentations §§5.11, 7.6 (BCGP25 Propositions 4.11.1–4.11.2).
  - AutomorphicSpectralTheory "AS.5" (coherent multiplicities and the large-weight Arthur input) is AutomorphicFormsOnReductiveGroups §§6.4–6.6 and EndoscopicTransferAndUnitaryTraceComparison §11.1. The two missing pieces are gaps (see below).
  - LocallyAnalyticDistributions "L0" (derived locally analytic vectors) is CompletedCohomologyPartII §F.4 and §6.7. The latter states the GSp₄ instance of BCGP25 Theorem 4.8.3.
  - IntegralHeckeAndGaloisDeterminants "IHG.3" is §3a.2 there, together with SmoothRepresentationsOfLocalGroups §SR.4.5.
  - DeformationAndDerivedPatchingAlgebra "P7" is §§7.1, 7.3 (residual detection) and §5.9 (Sylow projectivity, exactly BCGP25 Lemma 7.3.2).
  - The verbal design ids for PELModuli, HodgeTateAndCanonicalSubgroups, ShimuraCompactifications, AutomorphicBundles, AdicSpacesPartII ("R3", which is actually AdicSpacesPartIII §§R2.10, R3.4, R3.6, R3.7), SchemeAndStackFoundations ("SF.2", which is §§2.19–2.20), CompletedCohomologyPartII ("CC.2/6/7", which is §§2.2, 6.7, 7.1) and PerfectoidShimuraVarieties ("S3", which is §§3.6, 6.3) were all resolved to real sections.
- **Dropped requests:**
  - The AutomorphicBundles q-expansion and `p³U`-stability request served only the deleted K2/bgg-scaling.
  - Individual-operator integrality of `U_{v,1}`, `U_{v,2}` is a property of this roadmap's own operators, so it is now stated in §4.3.
- **Pinned libraries:** no Shimura, Klingen, Igusa, overconvergent or Sen object exists in Mathlib or Tau Ceti. `TauCeti.VermaModule` (TauCeti/Algebra/Lie/HighestWeight/Verma.lean:195) exists and is cited. Its Killing-nondegenerate hypothesis is noted.

## Ownership against open work

The roadmaps that also cite BCGP25 are all later in the merge order, so they are consumers: GSp4NonregularModularityLifting (276), AbelianSurfacesModularity (277), OrdinaryAutomorphicFormsAndModularityLiftingPartII (271), LocallyAnalyticDistributionsPartII (316) and LocallyAnalyticRepresentationsOfLocalGroups (318). GSp4NonregularModularityLifting's "Fourier doubling" is a different q-expansion doubling, not BCGP21 §5.8. This roadmap owns BPS continuation, the P20 §7–§8 and §15 results, BCGP21 §§4–6 and BCGP25 §§3.4–3.6, §4.7–§4.12 and §7.3, because no earlier roadmap or pinned library states them.

## Corrections to the design (beyond the removals)

1. **P1/classicality narrowed the source.** The design restricted it to components of dimension greater than one. BPS Theorem 5.3.1 covers every datum. §2.8 is now general, and the dimension-one case is a new target §2.9 whose route is BPS Remark 5.3.2. A proper variety follows the §2.8 route; a non-compact one has modular-curve components and runs the continuation through the cusps. Kassaei's paper has no legal copy (Project Euclid offers no PDF), so it is not cited. I deleted my own one-entry `needs-references.toml`, because nothing in the package depends on that text.
2. **BPS edition.** The design cited Annals journal pages. The text read is the HAL deposit, so locators are now statement numbers (which agree with the journal) plus HAL page numbers, with a version note in `sources.toml`.
3. **The signed-weight issue.** BPS §4.1 (HAL p. 18) derives nonnegative slopes from the normalization. §2.1 keeps `s_i ≥ 0` explicit and cites this.
4. **Companion operator.** `C² − diag(T)∘C + diag(U) = 0` and the inverse formula hold without `TU = UT`, since `diag(T)` is applied after C. The design's commutation hypothesis was dropped.
5. **One-place comparison.** I checked whether the design's non-Eisenstein localization is needed. BCGP21 Prop. 6.6.2 and Thm. 6.6.4 do not localize, but their witness step uses Theorem 3.10.1, which does. The localization is therefore kept.
6. **HodgeTate's scope.** It explicitly excludes Hilbert–Siegel models, so the Hilbert partial Igusa tower and frame torsor are now gaps on HodgeTateAndCanonicalSubgroups §§5.1, 5.8 rather than citations.

## Supplier gaps declared (plan.json `gaps` and README contracts)

- `pel-iwahori-complements`: PELModuli §M4.5.
- `hilbert-siegel-models`: PELModuli §M5.4.
- `kodaira-spencer-isogeny`: PELModuli §M2.10.
- `hilbert-siegel-partial-igusa`: HodgeTateAndCanonicalSubgroups §5.1.
- `hilbert-siegel-frame-torsor`: HodgeTateAndCanonicalSubgroups §5.8.
- `bounded-section-gluing`: AdicSpacesPartIII §R2.10.
- `partial-hasse-regularity`: ShimuraCompactifications §C5.20.
- `mixed-cube-cover`: ShimuraCompactifications §C5.25.
- `tame-boundary-stabilizers`: ShimuraCompactifications §C3.3.
- `lci-fundamental-class`: SchemeAndStackFoundations §2.19.
- `gsp4-singular-balance`: AutomorphicFormsOnReductiveGroups §6.6.
- `gsp4-weight-two-stability`: AutomorphicFormsOnReductiveGroups §6.6.
- `solid-vb-sen`: PerfectoidShimuraVarieties §3.6.
- `gsp4-eichler-shimura`: AutomorphicGaloisRepresentations §1.1.

The design's 14 open-proof notes are no longer in the `gaps` list, because they were not supplier gaps. Their content now lives in the README as explicit hypotheses or proof-route obligations: `p ∤ |Δ|` in §4.2, the constrained fibre in §8.3, the balance hypothesis in §8.5, `|I| = 1` in §6.7, and the finite-block projection in §6.5. The underlying source errors are listed under "Source issues and conventions".

## Notes on suppliers (not edited)

- HigherHidaAndColemanTheory is a board package at the accepted-design stage (merge order 244, before this roadmap). It has no README in a pull request, so `roadmaps resolve` reports `HigherHidaAndColemanTheory §§9.6: no roadmap … on main or in an open pull request`. That is expected. Its citations were checked against `packages/HigherHidaAndColemanTheory/design/README.md`. Its section numbers could shift when it is packaged.
- HigherHidaAndColemanTheory §9.6 item 4 states the Klingen BGG scaling as "U on the middle term intertwined with `p^(−k−1)U` on the last". That is P20's printed diagram (Prop. 13.3.3.1, p. 90). The thresholds `k−2` and `k+1` require the opposite direction, which is forced by differentiating `f(pz)`. This roadmap uses the corrected direction in §6.4, with a Check.
- HigherHidaAndColemanTheory §9.8 asserts a hyperspecial torsion `H⁰` comparison for `k>p+1`. That route uses P20's spherical T, which this roadmap owns (§3.1). Its *Needs* line does not list T. Adding it would point upward, so the owner should state what it uses.

## Adversarial pass

Values are computed. "Values" give both sides of each instance tried.

| Statement | Instances tried | Values computed | Result | Change |
| --- | --- | --- | --- | --- |
| Shift convention | `ℤ` in degree 0 | `H^{−1}(C[1]) = ℤ`, `H^0 = 0` | holds | witness added |
| Rescaling of slopes | `p=3`, eigenvalue 9, `a=3` | `9·3^{−3} = 1/3`, slope 2 → −1 | holds | witness added |
| Sen convention | `ℚ_p(1)`, `ℚ_p(−1)` | Sen values `+1`, `−1` (FiniteFlat… §R07.P7.2) | holds | witness added |
| §1.1 Morita degree | étale, multiplicative, supersingular `E[p]` line, matrix size m | 0; `d a`; `1/(p+1)`; range `[0,da]` not `[0,mda]` | holds | none |
| §1.2 normalized `U_i` | type C `d=a=1`; `d=1,a=2`; type A `d=a=b=1` | `n = 1, 3, 1` | holds | none |
| §1.3 monotonicity | `ℤ/p → μ_p` over `ℤ_p[ζ_p]`; degree `1/(p+1)` | `0 < 1`; non-integral, so strict | holds | none |
| §1.4 uniform progress | half-open strip; modular curve band `[1/2,3/4]`; `η=ν` | no uniform N on the strip; N exists on closed band; `N=0` | holds only on closed bands | kept closed-band hypothesis |
| §2.1 strict region | `(n,c,s) = (3,4,0), (3,3,0), (3,4,1/2)`; modular curve | `3<4` with `ε<1/4`; `3<3` false; `3.5<4` with `ε<1/8`; `s<k−1` | holds | none |
| §2.2 first extension | `α=0`; N vs N+1 | undefined; equal by the eigenrelation | holds | none |
| §2.3 bad filtration | no bad complement; one bad; `B_2→X²` on the curve | `V_1=∅`; point in `V_1∖V_2`; dims 1 vs 2, not finite étale | holds with coordinatewise use | Check corrected (dropped a stray `p=2`) |
| §2.4 path decomposition | `N=1`; `N=2` words GG, GB, BG, BB | `U = T_0 + R_1`; each word once; GB lost without left factor | holds | none |
| §2.5 contraction | `n=3, c=4, s=0, ε=1/8`; `c=3`; `c<0` | exponent `−1/2`; positive; inequality reverses | holds for `c>0` | none |
| §2.6 Kassaei sums | bad part 0; `N=1` | all `f_N = α^{−1}Uf`; `α^{−1}U^good f` | holds | none |
| §2.7 bounded continuation | overlapping closed boxes; étale tube | agree by contraction; reached after `d a` walls | holds | none |
| §2.8 classicality | modular curve `c=k`; Siegel `κ=(k₁,k₂)`, `c=k₂`, `n=3`; `κ=(6,6)` | `s<k−1`; `s<k₂−3` (`k₂=3` admits none); `s<3` | holds; consistent with BCGP21 Remark 6.5.10 (`l_v−3`) | narrowing to dim>1 removed |
| §2.9 dimension one | modular curve with cusps; compact Shimura curve | Koecher fails (poles at cusps); no boundary | new target | added |
| §3.1 spherical T | `r=3`; `p=2`; double-coset degree | scalar `p^0=1`; 30 cosets; `deg T = (1+p+p²+p³)(1+p)` agrees with `deg T_{p,1} + (1+p+p²+p³)` via `T(p)² = T_0(p²)+(p+1)T_1(p²)+(p+1)(p²+1)T_2(p²)` | holds | none |
| §3.2 rank-zero vanishing | `k=0`; `p=2,3` | not asserted; `r ≥ 6, 12` | holds as stated (P20 Prop. 7.4.2.2) | none |
| §3.3 amplitude | `r=2` vs `r=3`; `H⁰` by codimension two | only `H⁰` iso / `H¹` inj at `r=2` | holds (P20 Prop. 8.2.1 read) | none |
| §3.4 away-p Hecke | `ℓ=2`; spin polynomial at `(1,1,4,4)` | scalars `1/8`, `1/64`; `1−4X+6X²−4X³+X⁴ = (1−X)⁴` | holds (P20 Prop. 15.1.1 read) | none |
| §3.5 Euler characteristic | `Λ --0--> Λ`; `p−1` components; sign of `λ₁` | `χ=0` with non-torsion cohomology; witness per component; `λ₁=−k−1<0` | holds as zero virtual rank | none |
| §4.1 mixed locus | `I=S_p`; `I=∅`; `F=ℚ, I={p}` | `d` and `2d` coordinates; Klingen locus | holds | none |
| §4.2 universal coefficients | `(2,2)`; two places with `|I|=1`; `p | |Δ|` | trivial character; dim 3; regular rep of `ℤ/p` has non-summand invariants | holds with `p∤|Δ|` for descent | Check corrected (trivial-action example was wrong) |
| §4.3 U operators | `I=∅`, `I=S_p`; normalizations | `∏U_{v,1}U_{v,2}`, `∏U_{v,2}`; `p^{−2}p^{−1}=p^{−3}` | holds | integrality stated |
| §4.4 fixed amplitude | `I=∅`; `F=ℚ`; `l_v=2` | `[0,0]`; equals §3.3; endpoints only | holds (BCGP21 Thm. 4.2.1 read) | none |
| §4.5 family complex | `[Λ --T--> Λ]` at `T=0` | derived fibre `ℤ_p` in both degrees; `H⁰⊗Λ/T = 0` | derived fibre needed | none |
| §4.6 trace control | one place; `k[x,y]/(x^n,y^n)` | degree `p+1`, factor p; length `n²=4` vs recursion 2 at `n=2` | corrected route holds | none |
| §4.7 derived control | `I=∅`; `F=ℚ`; product vs factor divisibility | `[0,0]`; `[0,1]` = HHCT §9.8 | holds | none |
| §5.1 first operators | `l=1,2,3` | `pU_Iw+Z`; `U_Iw+Z`; `U_Iw+pZ`; scalar check `p^{−3}p^{l+1}=p^{l−2}` | holds | none |
| §5.2 partial Frobenius | divisor degree | `p²` vs ambient `p³` | holds (BCGP21 Prop. 5.6.3) | none |
| §5.3 Kodaira–Spencer | `Norm(x_w)³/p³` | valuation `3−3 = 0`, a unit | holds | none |
| §5.4 second operator | degree comparison | `p⁴ = (p²)²` | holds | none |
| §5.5 quadratic | `α=2, β=3` | `4−10+6 = 0` | holds | none |
| §5.6 companion | `T=5, U=6, (2,3)`; `T=U=0`; sign flip; no commutation | `(28,−2)`, roots 2, 3; `C²=0`; `X²−TX−U`; identity holds termwise without `TU=UT` | holds | commutation hypothesis dropped |
| §5.7 no global eigenvector | `β=0` | no contradiction, hypothesis `αβ≠0` used | holds (BCGP21 Thm. 5.8.4 read) | none |
| §5.8 doubling | equivariance computation | `U_Iw(f+Zg) = U_Kli f − Zf + U_{w,2}g = Δ(C(f,g))` | holds (Thm. 5.8.6 read) | none |
| §5.9 two refinements | `T=5,U=6` | `ι_2` image `(1−3U_Iw^{−1})f` | opposite root, as BCGP21 Remark 5.8.7 | none |
| §6.1 analytic complex | `(2,2)` | `κ_A` trivial | holds | none |
| §6.2 amplitude | `|I|=0,1`; Čech length | `[0,0]`, two-term; `2^{|I|}−1` vs `|I|` | holds (BCGP21 Thm. 6.2.6 read) | none |
| §6.3 compact action | trace factors | `p^{−6}` for `U_{v,1}U_{v,2}`, `p^{−3}` for `U_{v,2}` | holds | none |
| §6.4 relative BGG | derivative of `f(pz)`; gap 3; reversed direction | slope `s−(k−l+1)`; `0<1` excluded; no exclusion if reversed | corrected direction holds | witness added |
| §6.5 multi-continuation | `P=X²+2X+1, U=−1`; `F=ℚ`, `Ω(k,r)` | `R(−1)=1`, `UQ(U)=1`; threshold `k+2r−3` = HHCT §9.7 | holds (BCGP21 Thm. 6.5.8 read) | route no longer depends on deleted K2 target |
| §6.6 Euler in families | `[A --T--> A]` at `T=0` and `T≠0` | `χ=0` both, dims jump | only χ constant | none |
| §6.7 one-place comparison | Euler identity; `|I|=3` | `χ_s−χ_t = −a−b`; four degrees uncontrolled | holds for `|I|=1` | none |
| §7.1 BGG category | `GL₂` standard rep under `𝔫`; finite-dimensional M | `H⁰`, `H¹` each dim 1, total `|W|=2`; `M̂^∨ = W` | holds | moved down |
| §7.2 localization | integral λ | `⟨λ+ρ,α^∨⟩ ∈ ℤ`, non-Liouville | holds | moved down |
| §7.3 functor | zero module; split sequence | zero complex; zero connecting map | holds | none |
| §7.4 comparison | Sen of `ℚ_p(1)` | `+1` | holds (BCGP25 Thm. 4.7.1 read) | none |
| §7.5 spectral sequence | proper, antidominant | degenerate, degree d (BCGP25 Cor. 4.7.3) | holds (Thm. 4.7.2 read) | none |
| §7.6 ordinary degrees | `p=0,q=d` | contribution `H^{2·0+d−d} = H⁰` | holds (Thm. 4.7.5, Cor. 4.7.6 read) | none |
| §7.7 boundary vanishing | reducible ρ̄ | hypothesis fails | holds after localization (Thm. 4.9.4 read) | none |
| §7.8 four pieces | `λ=(1,1;2)`, `(1,1;−2)`; sum | `−2,−2,−3,−3`; `0,0,−1,−1`; sum `−6−2w` | holds (Thm. 4.9.9 read) | none |
| §8.1 Cousin complex | degrees; weights in dual | 2 and 3; `(2,2;−w)` in both dual degrees | holds; BCGP25 Remark 4.10.7 misprint confirmed | none |
| §8.2 Sen block | `w=2`; Jordan block | `a=−2`; `N_a ≠ 0` with the same scalars | holds | none |
| §8.3 localization comparison | `x∂_x+1` on series; `(x+1)∂_x+1` on `1/(1+x)` | `Σ(n+1)a_n x^n`; `−1/(1+x)+1/(1+x) = 0` | route obligation stated | none |
| §8.4 Sen–Cousin | Jordan vs semisimple | different `N_a`, same graded scalars | holds (Thm. 4.10.12 read) | none |
| §8.5 balance | `E[T]/(T−a)²`; graded dims `(2,0,1,1)` | m-torsion sequence `0→S→S→E` not exact; total 4 without balance | balance is an independent hypothesis | Check rewritten |
| §8.6 classicality | non-de Rham extension | `N_a≠0`, no conclusion | holds (Thm. 4.12.4 read, hypotheses (1)–(4)) | none |
| §9.1 four modules | χ of order 3 | `χ ≠ χ^{−1}` | ι matters | none |
| §9.2 projectivity | length one; `p=2` | amplitude `[0,1]` needs supported `H⁰=0`; no averaging | holds (Thm. 7.3.1(1) read) | none |
| §9.3 classical specialization | `ν=(0,−2)` | `(5,3),(5,1),(2,−2),(0,−2)` | holds | none |
| §9.4 Coleman specialization | M- but not G-dominant | Coleman fibre only | holds | none |
| §9.5 duality | lengths; `κ=(5,3)` | `0↔3`, `1↔2`; `κ^∨ = (0,−2)` | holds | none |
| §9.6 tame projectivity | `Δ=ℤ/p` regular rep | invariants not a summand | holds (Lemma 7.3.2 via DDPA §5.9) | none |
| §9.7 central character | `p=2, r=7`; `p=3, r=7, 11`; literal reading | `7≡3 mod 4`, order 3; `7≡1 mod 3` fails, 11 works, order 5; no solution at `p=2` | casewise reading holds | none |

The context check does not apply: `Suggested.lean` has no `variable` blocks and no declarations. On generality, the README now matches its sources: §2.8 was widened to all dimensions, and §5.6 dropped an unnecessary hypothesis.

## Sources

All five cited works were fetched through the sources service: BPS from the HAL deposit, P20 and BP26 from the author page, BCGP21 and BCGP25 from arXiv. Each is recorded in `sources.toml` with its hash, a statement-level locator list and `cited_for`. No text is missing and no `needs-references.toml` is outstanding. No source passage is quoted in any deliverable.

## Dependency check output

```
depcheck: 56 roadmaps, 661 edges, 0 problem(s)
```

There is no UPWARD, CYCLE or moved line. `roadmaps resolve` reports no Lean names found nowhere. Its one cross-roadmap line is the design-stage HigherHidaAndColemanTheory, as explained above.
