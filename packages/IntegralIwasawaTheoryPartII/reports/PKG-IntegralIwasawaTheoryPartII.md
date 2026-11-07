# PKG-IntegralIwasawaTheoryPartII — package report

Deliverables: `packages/IntegralIwasawaTheoryPartII/README.md`, `Suggested.lean`, `metadata.toml`, `sources.toml`, and the top-level `gaps` list of `design/plan.json` (nothing else in it changed). The README follows the accepted design: all 49 targets, all 54 Checks and all five worked examples are kept, rewritten as prose in TauCetiRoadmap form (Layers 0–5, sections k.n, API bullets in prose, `**Checks.**` lists, `### Examples` and `### Dependencies` per layer). No `review.json` and no earlier report existed in the package; the accepted review recorded in `plan.json` (`review.notes`) was applied as written there.

## Headline theorems

| Headline | Status | What it lacks at the pins |
| --- | --- | --- |
| Gross–Stark leading-term theorem for every prime `p` (Dasgupta–Kakde–Ventullo Theorem 1; README §5.6) | not statable | the Deligne–Ribet `p`-adic `L`-function `L_p(χω, s)` of a totally real field; the complex Hecke/Artin `L`-function `L(χ, s)` of a finite-order character of a number field other than `ℚ` (Mathlib has only Dirichlet `L`-functions); the Iwasawa logarithm on finite extensions of `ℚ_p` (needed for Gross's regulator) |
| Rank-zero case (§5.5) | not statable | same carriers as above |
| All-prime lower bound `ord_{s=0} L_p(χω, s) ≥ r` (Charollois–Dasgupta Theorem 3; §0.7) | not statable | `L_p(χω, s)`; the Sczech–Eisenstein cocycle and its measures |
| Exact-order criterion `ord = r ↔ R_p(χ) ≠ 0`, and the rank-one order theorem (§§5.7–5.8) | not statable | `L_p(χω, s)`; Iwasawa logarithm |
| Cohomological regulator formula `L_alg(χ) = R_p(χ)` (§1.9) | not statable | Iwasawa logarithm; decomposition/inertia subgroups of `G_F` at completions of a number field (Tau Ceti's `TauCeti.ContCohomology.H1` and `TauCeti.ClassFieldTheory.artinMap` exist but do not supply these) |
| Hecke-image identifications with `W_1, W_2, W_3` (DKV Theorems 3.3, 3.6, 3.8; §§3.8–3.10) | not statable | Λ-adic ordinary Hilbert modular forms and their Hecke algebras |

`Suggested.lean` therefore states nothing: it is the module docstring (listing exactly these headlines and their missing carriers) and an empty `namespace TauCetiRoadmap.IntegralIwasawaTheoryPartII`, following the precedent of other accepted packages. The design's earlier suggested file (`regulator`, `matrixRegulator`, `normalizedCoefficient` with determinant and factorial identities) is not carried over: those statements are algebra on free matrices and power series, not headline theorems on the roadmap's objects, and the brief excludes them. Their content stays in the README as targets and Checks (§§0.4, 0.5, 1.8, 1.9). Consequently the README presents no backticked Lean name of this roadmap's own; every backticked name is a Mathlib, Tau Ceti or supplier-roadmap declaration.

## What the README could not support, and supplier gaps

The README covers every prime, as the design requires. The `p = 2` case of Layers 2–4 and the arbitrary-degree family representations rest on statements the supplier roadmaps do not yet make; these are declared as gaps in `plan.json` and stated in the supplier subsections of `## Exact supplier contracts`:

- `gap:dyadic-hilbert-coefficient-families` (NoncommutativeAndEquivariantIwasawa §F.5): §F.5 constructs Hilbert coefficient families, ordinary projector, control, Hecke images and fractional ordinary Eisenstein families only for odd `p`.
- `gap:dyadic-hilbert-hida-localization` (PadicFamilies §§5.10–5.13): Fourier injectivity at weight one, reducedness at minimal tame level and the total quotient ring are stated only for odd `p`.
- `gap:hida-family-representations-all-degrees` (OrdinaryAutomorphicFormsAndModularityLifting §3.14): Hida's family representation is stated there for `[F : ℚ]` even and only as a semisimple representation over `L̄`; DKV Theorem 4.1 is needed for every degree and every `p`. The realization over `L_H` is proved in README §4.1 (complex conjugation has distinct eigenvalues `±1`).

Everything else in the README is either a target here or a named supplier section that states it.

## Supplier resolution and corrections to the design

The design named suppliers by catalogue labels. Each was resolved against the cited roadmap as it is now (main at the content checkout; open heads through `roadmaps show`/`grep`):

| Design label | Resolution |
| --- | --- |
| `ArithmeticGaloisDuality:R02.3`, `R02.4` | ArithmeticGaloisDuality §§R02.1.3, R02.2.3, R02.3.3, R02.4.2, R02.4.3, D7.6, D7.7 (finite-index descent and inflation–restriction for rational coefficients; `S`-unit Kummer sequence; local Tate pairing and its cup sign; Poitou–Tate; lattice/rational Poitou–Tate; dual local conditions) |
| `AutomorphicPadicLFunctions:L0`, `L3` | **no such roadmap exists** (only AutomorphicPadicLFunctionsPartII, later in the order). Rerouted: complex Hecke `L`-functions, functional equation and nonvanishing to LFunctions Layers 5 and 7; Siegel–Klingen values, Deligne–Ribet pseudomeasure and branch (all `p`, pole branch included) to IntegralIwasawaTheory §§6.0, 6.3; Hilbert forms, `q`-expansion principle, Hecke operators, coefficient families and fractional Eisenstein families to NoncommutativeAndEquivariantIwasawa §F.5 and PadicFamilies §§5.9a–5.13; classical Eisenstein complement and constant terms to OrdinaryAutomorphicFormsAndModularityLifting §2.12(a); level-one Hasse lifts and integral cusp geometry (all `p`) to IntegralIwasawaTheory §9.3. The Sczech–Eisenstein cocycle realization of the smoothed measure has no owner anywhere and is now a target here (README §0.6). |
| `DiophantineApproximationAndTranscendence:DT.3` | that roadmap (on main) states no Baker–Brumer theorem; it points to LinearFormsInLogarithms §8.10. Resolved to IntegralIwasawaTheory §4.2 (`algebraicLog_kernel`, `bakerBrumer_algebraicNumbers`), which states exactly the algebraic-number form needed. |
| `DirichletPadicLFunctions:L3` | DirichletPadicLFunctions §0.6 (`iwasawaLog`, `localIwasawaLog`, norm law). |
| `IntegralHeckeAndGaloisDeterminants:IHG.1`, `IHG.4` | §§1.3, 1.4 (henselian GMA, extension module and injection) and §4.1 (`Determinant.eq_of_charpoly_frobenius`). The two application adapters the design asked of that roadmap (finite generation/continuity of the actual entry modules; closedness of the finite coefficient orders) are verifications specific to this family and are now proved here (README §§4.1, 4.3) rather than requested. |
| `IntegralIwasawaTheory:I.1` | IntegralIwasawaTheory Conventions and §§0.1, 0.4. |
| `OrdinaryAutomorphicFormsAndModularityLifting:R21.3` | §3.14 is insufficient → gap (above). |
| `PadicFamilies:L5` | §§5.9a–5.13, odd `p` → gap (above); NoncommutativeAndEquivariantIwasawa §F.5, odd `p` → gap (above). |
| `Chebotarev#layer-10`, `ClassFieldTheory#layer-7/11/13` | main roadmaps, Layers 10 and 7, 11–13 (plus 12 for the character/ray-class correspondence). Tau Ceti already has the absolute local Artin map `TauCeti.ClassFieldTheory.artinMap` at the pin (`TauCeti/NumberTheory/ClassFieldTheory/Local/ArtinMap.lean`, arithmetic Frobenius), now cited in the Tau Ceti contract. |

Mathematical corrections relative to the design:

1. Reciprocity convention made exact with a witness: the DKV map is `rec(x) = Art(x⁻¹)` for Tau Ceti's `artinMap`; `ε_cyc(rec(x)) = N(x)·p^{−v_p(N x)}`, so `log_p ε_cyc(rec x) = ℓ(x)` for every `x` (the design stated the norm formula only on units). Witness Checks: over `ℚ_5`, `rec(2)ζ_5 = ζ_5^2` versus `Art(2)ζ_5 = ζ_5^3`; over `ℚ_2`, `Art(2)ζ_5 = ζ_5^2` (Tau Ceti `localArtinMap_Q2_zeta5`) versus `rec(2)ζ_5 = ζ_5^3`.
2. The smoothing factor of the order bound, `1 − χ(𝔠)N𝔠`, is never zero (root of unity times an integer `≥ 2`); the design imposed it as a condition. The smoothing prime must have prime norm prime to `𝔣p` (CD14 Theorem 2); this hypothesis was missing.
3. §4.1: the total quotient ring of the completion is a finite product of fields each receiving some `L_H` (completion can split a field), not one field per eigenfamily; reducedness of the completion is justified by excellence; the realization of `ρ_H` over `L_H` uses complex conjugation (`det = χε(c) = −1`, eigenvalues `±1`).
4. Negative-control Checks added: a nontrivial totally even `χ` has `L(χ, 0) = 0` (§0.1); the Case 1 relation for `r = 0` would make the ring zero (§3.1); `b̄` alone fails the left cocycle identity, `c̄χ⁻¹` satisfies only a right-action relation (§§4.3, 5.3).
5. The two Ventullo references (arXiv and published) are one source key `V15` with a version note; the design's provenance sentences about the review were removed (timeless README).

## Notions moved down from later roadmaps

None. No supplier later than this roadmap in the merge order is cited (AutomorphicPadicLFunctionsPartII, PadicFamiliesPartII and OrdinaryAutomorphicFormsAndModularityLiftingPartII are later and are not used). The integral Sczech–Eisenstein cocycle (README §0.6) is not moved from anywhere: no roadmap on main, in the merge order, among the board packages or in the open roadmap pull requests states the Sczech or Shintani cocycle (`roadmaps grep -i "Eisenstein cocycle|Shintani cocycle|Sczech"`: no match), and this roadmap is its only consumer; that is why it is owned here.

## Duplication sweep

Checked by object (Gross–Stark, Gross's regulator, Greenberg/ℒ-invariant, exceptional/trivial zeros, Eisenstein/Shintani/Sczech cocycles, Ventullo's family, Deligne–Ribet, Baker–Brumer, Hilbert Eisenstein families, Hida representations, GMA extension classes) against main, the 354 open roadmap pull requests (`roadmaps grep`), the board packages, and the pinned Mathlib and Tau Ceti (`grep -r` for `GrossStark`, `Sczech`, Iwasawa logarithm, Hecke/Artin `L`-functions, local Artin maps). Removed from this roadmap and cited instead:

- Generic Hilbert forms, `q`-expansion principle, Hecke/level operators, ordinary projector and control, Hecke duality, fractional Eisenstein families → NoncommutativeAndEquivariantIwasawa §F.5; Hida-family presentation, Fourier injectivity, reducedness, total quotient → PadicFamilies §§5.9a–5.13.
- Classical Hilbert Eisenstein complement and constant terms → OrdinaryAutomorphicFormsAndModularityLifting §2.12(a).
- Deligne–Ribet branch, its interpolation and analyticity at `0` → IntegralIwasawaTheory §§6.0, 6.3; Baker–Brumer → §4.2; Hasse lifts → §9.3; cyclotomic character → Conventions, §§0.1, 0.4.
- Iwasawa logarithm → DirichletPadicLFunctions §0.6.
- Local reciprocity → Tau Ceti `TauCeti.ClassFieldTheory.artinMap` and ClassFieldTheory Layer 7.
- Henselian GMA, extension module, determinant uniqueness → IntegralHeckeAndGaloisDeterminants §§1.3, 1.4, 4.1.
- Matrix determinants, unit rank, class-group finiteness, power-series order, total quotient ring → Mathlib (declarations listed in the README and checked below).

No other roadmap states the Gross–Stark theorem, Gross's regulator, the cyclotomic subspace, the three Artin algebras or Ventullo's family (NoncommutativeAndEquivariantIwasawa and PadicFamilies cite DKV only for the family conventions they own). Ownership against open pull requests was checked with the brief's tools over all open heads.

## Adversarial pass

| Statement | Instances tried | Values computed | Result | Change |
| --- | --- | --- | --- | --- |
| Partition `R`/`R′` (0.1) | `ℚ(i)`, `p = 2, 3, 5`; totally even `χ` | `χ(2)=0,R=∅`; `χ(3)=−1,R=∅`; `χ(5)=1,R={(5)}`; even `χ≠1`: `L(χ,0)=0` | holds | totally even negative control added |
| `X_χ` basis `x_i = ∑χ(g)g[𝔓_i]` (0.2–0.3) | `σx_i` | `σx_i = ∑χ(σ⁻¹h)h[𝔓_i] = χ⁻¹(σ)x_i`; `[g𝔓_i]`-coefficient `χ(g)` | holds | API bullet added |
| `dim U_χ = r` (0.3) | `𝔮 ∈ R′` unramified / ramified; `r = 0` | `χ|D_𝔮 ≠ 1` by faithfulness ⇒ χ⁻¹-part 0; `r=0`: both spaces 0 | holds | none |
| `R_p = det(−L)/det O` (0.4) | `O=(2),L=(3)`; `diag(2,3),diag(5,7)`; right mult `diag(4,1)`; equal rows; `0×0` | `−3/2`; `35/6`; `140/24=35/6` (only `L`: `140/6`); `0`; `1` | holds | none |
| Prime-lift change (0.4) | `ℚ(i)`, `𝔓=(2±i)` | both `ord` and `log` of `u` scale by `χ(c)=−1`; ratio `−log_5 u` fixed | holds | none |
| `L_an`, `L^*_an` (0.5) | `D`, `6Ds²` (r=2), `Ds³` (r=2) | `1`; `6` (not `12`); `L_an=0`, `L^*_an=1` | holds | none |
| `D_χ` (0.5) | `ℚ(i)`, `p=3`, `p=2` | `2·(1/2)=1`; `1/2` | holds; `f_χ(0)=D_χ` in both | none |
| Dyadic `⟨·⟩` (0.5, 2.1) | `−1` at `p=2` | `ω(−1)=−1`, `⟨−1⟩=1`, `log=0`, `ε(σ)=1` | holds | none |
| Pole branch `χ=ω⁻¹` (0.5, conventions) | `ℚ(i)`, `p=2` | `χω=1`; KL value `−B_{1,χ_{−4}} = 1/2 = f_χ(0)` | analytic at 0 | none |
| Smoothing comparison (0.6) | interpolation at `s=−k`; `ℚ(i)`, `𝔠=(3)` | `χω^{−k}(𝔠)N𝔠^{1+k} = χ(𝔠)N𝔠⟨N𝔠⟩^k`; factor at 0: `1+3=4` | holds; factor never 0 | condition dropped, prime-norm hypothesis added |
| Smoothed zeta (0.6 Check) | `F=ℚ`, `ℓ=3`, `k=0` | `(1−3)ζ(0)=1` | holds | none |
| Lower bound (0.7) | `r=0`; `r=1` | vacuous; first coefficient vanishes by Theorem 5.2 with `k=0<1` | holds | none |
| `ε_cyc(rec x)` (conventions) | `x=p`, `x=u` over `ℚ_p`; `ℚ_5`, `u=2`; `ℚ_2`, `ζ_5` | `1`; `u`; `rec(2)ζ_5=ζ_5^2`, `Art(2)ζ_5=ζ_5^3`; `Art(2)ζ_5=ζ_5^2`, `rec(2)ζ_5=ζ_5^3` | holds | formula extended to all `x`, witnesses added |
| Restricted `H¹` (1.1) | trivial `ℤ_p`-action on `E`, discrete vs `p`-adic | inclusion `ℤ_p→E` continuous only for `p`-adic topology | holds | none |
| `o_𝔮`, `ℓ_𝔮` independence (1.1) | `ϖ`; `1+p²` in `ℚ_p` | `o=1,ℓ=log ϖ`-part; `o=0`, `ℓ=log_p(1+p²)≠0` | holds | none |
| Orthogonality (1.3/1.4) | `r=0`; `r=1`, `ℚ(i)`, `p=5` | empty sum `0`; `x/y=−log_5 u = R_5` | holds | none |
| Inertia injectivity (1.5) | `R=∅` | `H¹_∅=0` (Hilbert class field finite) | holds | none |
| Coefficients (1.6) | `2o+3ℓ` | `(x,y)=(2,3)` | holds | none |
| `L_alg` (1.8) | `X=(2),Y=(3)`; `diag(2,5),diag(3,7)` × `diag(4,1)` | `2/3`; `40/84=10/21` (only `X`: `40/21`) | holds | none |
| `L_alg = R_p` (1.9) | `r=1` | `xo+yℓ=0 ⇒ x/y = −ℓ/o` | holds; no `(−1)^r` | none |
| Weight coordinate (2.1) | `d/dk` at 1; `f=as²+bs³` | `π↦1`, `T↦log_p u`; leading `π²` coeff `a`; `cs ↦ −cπ` | holds | none |
| Leading coefficient of `ℒ_χ` (2.1) | `f_χ(1−k)` | `(−1)^{s}D_χ L^*_an` | holds | none |
| Case division (2.4) | `ord_π W = s−t`; swap | swap inverts `W`; `w=−1` in Case 2 | holds | none |
| Semi-cusp specialization (2.5) | Cases 1, 2 (`w=−1`), 3 | `E_1(1,χ_S)`; `0`; `E_1(1,χ_S)` | holds | none |
| `W_1` (3.1, 3.4) | `r=s=1`; `r=1,s=2`; `r=2`; `r=0`; dim | `ε_1=aπ`, dim 2; `ε_1=−aπ²∈𝔪²`; `ε_1ε_2=(−1)^{s+1}aπ^s`; ring 0; `2^r+s−1` (`r=2,s=3`: 6) | holds | `r=0` negative control added |
| `W_2` (3.2, 3.5) | `r=s=1,w∉{0,−1}`; `w=−1`; `z^n`; dim `r=2,s=3` | `y=wπ/(1+w)`, `ε_1=aπ/(1+w)`; `π=0`, `ε_1=−ay`; `z²=π²−2y²+y²=π²−y²`, `yz=0`; `4+6−2=8` | holds | none |
| `W_3` (3.3, 3.6) | `r=t=1,s=2`; sign of `c`; top product | `y=cπ²`, `ε_1=−aπ²=by`, basis `1,π,π²`; `c=(−1)^{s−t}a/b`; `(−1)^{s+1}aπ^s=(−1)^{t+1}b y^t` | holds | none |
| `Y` denominator (3.7) | `χ(𝔮)=1`; `χ(𝔮)≠1`; `p=2` | non-unit; residue `−(χ(𝔮)−1)log_p⟨N𝔮⟩≠0`; `⟨N𝔮⟩=±N𝔮≠1` | holds | none |
| Hecke formulas (3.9) | trace vs `ψ_1+ψ_2`; `U_𝔩`, `r=1` | `1+χε(𝔩)+(χ(𝔩)−1)((1−ε(𝔩))/π)y`; `1+(w/(1+w))log_p⟨N𝔩⟩π` | agree with 4.4–4.5 | none |
| Independence Case 2 (3.9) | `w≠−1` linear system | `α(1+w)+βw=0`, `α+β=0` ⇒ `α=β=0` (det `1`) | holds | none |
| Case 3 orders (3.10) | `π^jF`, `j≥d+m`, after `Y^{t−m}` | order `j+d+(t−m) ≥ 2d+t = 2s−t ≥ s+1` (as `s ≥ t+1`) | holds | none |
| Family representation (4.1) | `ρ_H(c)` | `det=χ(c)ε(c)=−1·1`, trace 0, eigenvalues `±1` | realization over `L_H` holds | statement corrected (field factors, excellence) |
| Cocycle `bχ⁻¹` (4.3) | reduce `b(στ)` | `b̄(τ)+b̄(σ)χ(τ)` → `κ(στ)=κ(σ)+χ⁻¹(σ)κ(τ)` | holds | Check rewritten |
| Nonfree module (4.3) | `(x,y)⊂Frac E[[x,y]]` | `dim B/𝔪B = 2` | interface admits it | none |
| Infinitesimal characters (4.4) | `ε_yε_z`; `y′z′≠0` | `1+A(y+z)+A²yz = ε`; extra `A²y′z′` | holds | none |
| Diagonal refinement (4.5) | determinant of system | `ψ_2(τ)−ψ_1(τ) ≡ χ(τ)−1 ≠ 0` | holds | none |
| Lower entry (5.3) | reduce `c(στ)`; `c̄χ⁻¹` | `c̄(σ)+χ(σ)c̄(τ)`; right-action relation only | holds | Check rewritten |
| `φ_𝔪(ε−d)` on inertia (5.3) | `χ=η=1` | `ε − ε_z = ε_y ε_z − ε_z = ε_z(ε_y−1) = ε_y−1` (as `yz=0`) `∈ yW_3` | holds | none |
| Exact determinant local terms (5.1) | `η_i⁻¹(rec u)`, `ε(rec u)` | `U^{o_i(u)} ↦ 1+o_i(u)ε_i`; `1+ℓ_i(u)π` mod `𝔪_W²` | holds | none |
| Graded comparison (5.2) | `s=r`; `s>r` | `det L + (−1)^{r+1}L_an det O = 0 ⇒ L_an = det(−L)/det O`; `∏ε ∈ 𝔪^{r+1} ⇒ det L = 0` | holds | none |
| Inverse determinant (5.4) | `r=t=1,s=2` | `L⁻y + O⁻ b y = 0 ⇒ R_p(χ⁻¹) = b` | holds; agrees with worked example | none |
| Rank zero (5.5) | `ℚ(i)`, `p=2,3` | `f(0)/D = 1 = R_p` | holds | none |
| Gross–Stark (5.6) | `ℚ(i)`, `p=5` | `L_5'(χω,0) = (1/2)(−log_5 u)` | consistent with 0.4 and 1.9 | none |
| Exact order (5.7) | `R_p=0` | `s_χ > r` forced; `0=0` identity | holds | none |
| Rank one (5.8) | `r=1` | `R_p = −ℓ(u)/o(u)`, `o(u)≠0`; Baker–Brumer ⇒ `ℓ(u)≠0` | holds; no higher-rank claim | none |

Context check: `Suggested.lean` declares nothing, so there are no `variable` blocks or binders to audit. Generality: README and Lean agree trivially; README statements are for every totally real `F`, every `p` including `2`, every finite `E/ℚ_p` containing the values of `χ`.

## Elaboration

`lake env lean packages/IntegralIwasawaTheoryPartII/Suggested.lean`, run from the content checkout: exit 0, **0 `sorry` warnings, no other messages** (the file states no theorem).

Mechanical declaration check: since `Suggested.lean` has no declarations, the `#check @name` comparison applies to nothing there. The library declarations the README cites were checked in one scratch file (`#check @…` for `Matrix.det`, `Matrix.det_mul`, `Matrix.det_nonsing_inv`, `LinearMap.det`, `LinearMap.det_toMatrix`, `FreeAbelianGroup`, `TensorProduct`, `NumberField.RingOfIntegers.instFintypeClassGroup`, `NumberField.Units.finrank_eq`, `NumberField.IsTotallyReal`, `NumberField.IsCMField`, `PowerSeries.X`, `PowerSeries.coeff`, `PowerSeries.order`, `HenselianRing`, `IsAdicComplete.henselianRing`, `FractionRing`, `IsReduced`, `TauCeti.ContCohomology.H1`, `TauCeti.ContCohomology.H1EquivOfSmulEqSelf`, `TauCeti.ClassFieldTheory.artinMap`, `continuous_artinMap`, `denseRange_artinMap`, `artinMap_norm`): all resolved at the pins, no errors. `TauCeti.ClassFieldTheory.localArtinMap_Q2_zeta5` was read in the pinned source (`TauCeti/NumberTheory/ClassFieldTheory/Local/Cyclotomic.lean`, line 188); its object file is not built on this worker and the module is not an import of `Suggested.lean`, so it was not elaborated.

`roadmaps resolve` on the final README: no cross-roadmap citation and no Lean name found nowhere.

## Dependency check

```text
depcheck: 56 roadmaps, 648 edges, 0 problem(s)
```

No UPWARD, CYCLE or `moved:` line. LFunctions (an open new-roadmap pull request by another author, not in the merge order) is cited for the Hecke `L`-function and its nonvanishing; the check raised no problem for it.

## Sources

All five cited works were fetched through the sources service and are recorded in `sources.toml` (`sources check`: 0 problems): DKV18 and DDP11 (Annals open archive, `publisher-open`), DKV16 and V15 (arXiv v1), CD14 (author page, author copy of 4 November 2014). Page locators were verified against the extractions (DKV18 printed page = PDF page + 832; DDP11 = PDF page + 438; CD14 and V15 author/arXiv pagination). No text was missing; `needs-references.toml` was not created. No fetched or read text contained instructions; nothing suspicious to report.
