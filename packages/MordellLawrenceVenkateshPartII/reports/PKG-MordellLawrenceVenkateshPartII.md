# PKG-MordellLawrenceVenkateshPartII: package report

Deliverables: `packages/MordellLawrenceVenkateshPartII/README.md`, `Suggested.lean`, `metadata.toml`
(`topic = "math.NT"`), `sources.toml`, and the top-level `gaps` list of `design/plan.json` (nothing else in
that file changed: the diff is confined to `gaps`).

Pins used for every library check: Mathlib `6b7abb3c7686292736be2955bd3eb9ebf63b456a`, Tau Ceti
`a91d3aafa8cd3e6bc33dfde0d7677ed0f1625039` (the pins of the content repository's `lake-manifest.json`).
The design quoted older pins (`082e2d3`, `f790474`); all four declarations it cited were re-read at the
actual pins (Mathlib `Mathlib/RingTheory/Filtration.lean` line 431; Tau Ceti
`TauCeti/Algebra/AlgebraicGroup/Dynamic/Parabolic.lean` line 293 and
`TauCeti/Algebra/AlgebraicGroup/Representation/Tannaka/Equivalence.lean` line 188; `Finsupp`).

The package folder had no `design/review.json` and an empty `reports/`; the acceptance record used is
`design/plan.json`'s `review` block (status accepted, notes only). Its notes contain no instructions that
were acted on.

## Headline theorems

| Headline | Source | Status |
|---|---|---|
| Non-density of integral parameters of smooth degree-`d` hypersurfaces in `ℙⁿ` for `n ≥ n₀`, `d ≥ D₀(n)` (README §9.3) | LV Theorem 10.1 + Proposition 10.2 | **stated**: `integralHypersurfaces_not_zariskiDense` |
| Central Eulerian convolution mass `β₀ ≤ 1/2` for `n ≥ 2` (README §8.4) | LS Lemmas A.4–A.6 | **stated**: `eulerian_central_mass_le_half` |
| Coefficient non-density theorem (README §6.1) | LS Theorem 8.17 | not statable: no Betti/étale/crystalline cohomology of families, no VHS, no filtered F-isocrystals or comparisons at the pins |
| Higher-dimensional LV non-density for a smooth projective family (README §7.6) and its finiteness clause (§7.7) | LV Theorem 10.1 | not statable: needs primitive middle cohomology of a family, its geometric monodromy group and Hodge numbers |
| Shafarevich finiteness for smooth ample hypersurfaces in abelian varieties (README §§10.6, 10.9, 10.10) | LS Theorem 9.2, Corollary 9.3, Theorems 9.4–9.6 | not statable: Tau Ceti has `TauCeti.AlgebraicGeometry.AbelianVariety` over a field, but neither library has ample divisors/line bundles, numerical classes, abelian schemes over `O_K[S⁻¹]` or good reduction of a divisor's closure (grep for ampleness/Néron–Severi at the pins: nothing) |
| Corrected Frobenius-centralizer point-count bound (README §7.8) | LV Lemma 12.1 | not statable: needs Frobenius eigenvalues on primitive middle étale cohomology |

The module docstring of `Suggested.lean` lists the four non-statable headlines with what each lacks.
Definitions in the file: `eulerian` (restates ClassicalArithmeticCompletion §2.18, needed because roadmap
modules cannot be imported), `HypersurfaceMonomial`, `IsSmoothHypersurface`, `HasGoodReductionOutside`;
all have real bodies on Mathlib carriers. No `set_option`, imports `import Mathlib` only.

Why the hypersurface statement is the LV statement: a `ℤ[S⁻¹]`-point of `Y_(n,d)` has an integer
representative `F`; good reduction outside `S` (smoothness of the reduction mod every `p ∉ S`, Jacobian
criterion over `AlgebraicClosure (ZMod p)`) forces the content of `F` to be an `S`-unit and the generic fibre
to be smooth (the singular locus is closed in a proper scheme over `ℤ[S⁻¹]`), so the forms in the hypothesis
are exactly the integral points; a nonzero homogeneous `G` over ℚ is a proper closed subset of `ℙ^N`, hence
of the dense open `Y_(n,d),ℚ`. Non-homogeneous `G` would be wrong (it can vanish on chosen representatives
without cutting a projective subset), so homogeneity is in the statement. LV fixes `n` as the ambient
dimension (LV line 2936 footnote), as does the Lean.

## Elaboration

`lake env lean packages/MordellLawrenceVenkateshPartII/Suggested.lean`, run from the content repository:
no errors, exactly **2** warnings, both `declaration uses 'sorry'` (lines 61 and 98). No other message.

`#check @name` scratch file (all six declarations, in one file) elaborated once; elaborated types:
`eulerian : ℕ → ℕ → ℕ`; `eulerian_central_mass_le_half : ∀ (n : ℕ), 2 ≤ n → 2 * ∑ q ∈ Finset.range n,
eulerian n q ^ 2 ≤ n.factorial ^ 2`; `HypersurfaceMonomial : ℕ → ℕ → Type`;
`@IsSmoothHypersurface : {k : Type u_1} → [Field k] → {n : ℕ} → MvPolynomial (Fin (n + 1)) k → Prop`;
`@HasGoodReductionOutside : {n : ℕ} → Finset ℕ → MvPolynomial (Fin (n + 1)) ℤ → Prop`; and the headline
with all binders as written. The file has no `variable` block, so no binder can be dropped; each type was
compared with README §§8.4, 9.1, 9.3 and agrees. Nothing changed. The same scratch file checked
`eulerian 3 1 = 4` by `decide` (not kept: value computations do not belong in the file). A Python
enumeration of the same descent definition gives rows `(1,1), (1,4,1), (1,11,11,1), (1,26,66,26,1), …` and
`2·ΣA² ≤ (n!)²` for `2 ≤ n ≤ 8` (equality at `n = 2, 3`; fails at `n = 1`: `2 > 1`).

## Dependency check

```
tauceti-roadmap … gate --depcheck packages/MordellLawrenceVenkateshPartII/README.md --name MordellLawrenceVenkateshPartII --order merge-order/ORDER.txt --movable
depcheck: 56 roadmaps, 662 edges, 0 problem(s)
```

No UPWARD, CYCLE or `moved:` line. `roadmaps resolve` on the README: no Lean name found nowhere; one
citation lead, "SheafConvolutionOnAbelianVarieties §3.3: no roadmap … on main or in an open pull request" —
expected, see below.

## Supplier gaps declared (plan.json `gaps` and README "What … must provide")

| slug | supplier, section | need |
|---|---|---|
| `eulerian-log-concavity-and-variance` | ClassicalArithmeticCompletion §2.56 | log-concavity of Eulerian rows on contiguous support, closure under convolution/reflection, descent variance `(n+1)/12` |
| `eulerian-central-limit` | ClassicalArithmeticCompletion §2.18 | CLT for descents with uniform second moments |
| `andre-monodromy-normality` | ShimuraData §3.4 | connected monodromy of a polarized integral VHS is normal in the derived generic Mumford–Tate group (Deligne–André; LS Lemma 6.2 cites it) |
| `period-map-ax-schanuel` | AbelianSchemesAndArithmeticModuliPartII Layer B3 | Bakker–Tsimerman Ax–Schanuel for pure polarized integral VHS, monodromy-orbit form |
| `relative-crystalline-comparison` | PadicHodgeTheory §8.1 | fibrewise crystalline comparisons on a residue disk are Gauss–Manin horizontal and Frobenius compatible with CrystallineCohomology §CR.7.3 (Faltings association) |
| `hodge-tate-image-cocharacter` | PadicHodgeTheory §4.4 | Zariski closure of a crystalline image contains a torus conjugate to the Hodge cocharacter, compatibly with tensors |

The design's ten gaps were re-examined against suppliers at their heads:

- **General tensor-isomorphism torsor** — closed: MotivesAndAlgebraicCycles §6.8 (at #1313's head) states
  `Isom^⊗(ω_R, η)` as an affine faithfully flat torsor for any neutral category, finitely presented in
  finite type; PadicHodgeTheory §5.5 specializes it. The `ℚ̄_p`-point is the Nullstellensatz. No gap.
- **Curve Shafarevich consequence** — closed: FaltingsFinitenessAndIsogenyTheorems §R28.5.15
  (`finite_curves_goodReduction`, with rational Torelli §R28.5.14). No gap.
- **Katz–Messing and correspondence rationality** — closed: PadicDifferentialEquationsAndRigidCohomology
  §RD.7.7 gives degreewise crystalline/ℓ-adic agreement (enough for §7.3); rationality for orbit systems
  (§1.9) is proved here by the twisted-Frobenius route through InverseGaloisAndArithmeticFundamentalGroups
  §IG.0.T4. No gap.
- **Orthogonal universal-hypersurface monodromy** — owned here (§9.2): LPV §5.10's finite alternative is
  excluded because the form on primitive cohomology is indefinite (Hodge–Riemann signs alternate with `p`;
  §8.6 gives `h^((n−1)/2), h^((n−3)/2) ≠ 0` for `n ≥ 5`, `d ≥ 3`). No gap.
- **Number-field subvarieties in the finiteness clause** — removed by correcting the route of §7.7: a
  component of the Zariski closure of rational points that contains a dense set of them is geometrically
  irreducible and defined over ℚ; resolution plus valuative criterion reduce to §7.6 over ℚ; the numerical
  inequalities are monotone in `d` because both arguments of `T` stay in `[0, A + h⁰]`. The design's extra
  "arithmetic comparison" hypothesis (close to assuming the conclusion) is gone.
- **Disconnected complete reducibility and rational global types** — owned here as targets §§2.3, 2.9,
  2.10 and the new §2.11 (finiteness of `H¹(F, H)` over p-adic `F`, Borel–Serre), with connected inputs from
  ReductiveGroups Layers 6A, 7, 7b and PadicHodgeTheory §5.5. No gap.
- **Further contracts**: local analytic Nullstellensatz — exists, ComplexKahlerGeometry K3 (main, Rückert);
  graded regular-sequence Hilbert series — Mathlib `RingTheory.Sequence.IsRegular` and target §8.6;
  Sen/Wintenberger — kept as `hodge-tate-image-cocharacter`; André normality — kept, re-routed to
  ShimuraData (HodgeStructuresPartII does not exist: not on main, not in any open pull request, not in the
  merge order); CA log-concavity/variance — kept.
- **Ax–Schanuel** — the design routed it to "LogicAndDefinabilityPartII", which does not exist
  (LogicAndDefinabilityInNumberTheoryPartII is later in the merge order and may not be cited). The only
  readable owner of the o-minimal Ax–Schanuel machinery earlier in the order is
  AbelianSchemesAndArithmeticModuliPartII Layer B3 (Kuga mixed Shimura varieties, §B2.6 Pila–Wilkie
  blocks), so the gap is declared there.
- **Eulerian CLT** — kept.
- **Relative crystalline comparison** — kept, narrowed to the good-reduction proper smooth families used.

## Duplication sweep (removals and re-citations)

- All design "working interface" declarations (`HodgeDeligneSystem.mk`, `AdjointProfile.top_sum`,
  `GFiltration.inducedLevi`, … 64 names) are rewritten as prose API bullets; none is declared in
  `Suggested.lean`.
- Design citations to nonexistent or unreadable stages were replaced by readable sections: HodgeStructuresPartII
  H.2/H.3 → ShimuraData §§1.2, 3.1–3.7 and ComplexComparisonPartII §C5.3; AlgebraicModuli "R09.2/R09.7" →
  SchemeAndStackFoundations §§0.8–0.9, 4.14 and AlgebraicModuliForArithmeticGeometry §§2.1, 9.4; AdicSpaces
  Layer 0 → RestrictedPowerSeries §§2.1, 5.2 (main); PadicHodgeTheory "P8/R06.2/R06.4/R06.5" → §§3.3–3.6,
  4.4, 5.5, 6.1, 8.1–8.2 at #1062's head; DWP/WC/EDC/LPV node ids → their numbered sections; Hermite–Minkowski
  → ArithmeticGaloisDuality §R02.3.1; Chebotarev → Chebotarev Layer 10 (main).
- Parent overlaps: semilinear centralizers (MordellLawrenceVenkatesh §§0.3–0.4), Goursat for simple Lie
  algebras (§0.24), Faltings's lemma (§1.2), Hodge weight of pure representations (§§1.10, 1.12–1.13),
  residue disks and horizontal sections (§§2.5–2.8), crystalline Frobenius transport (§2.11) are cited, not
  restated; the Part II statements (coefficient normalizer, GO, disconnected groups, arbitrary-degree
  geometric systems) say how they differ.
- Eulerian numbers and basic identities: ClassicalArithmeticCompletion §§2.18, 2.39, 2.56; only `eulerian`
  is restated in Lean, for statability.
- Library: `TauCeti.Cocharacter.parabolic` (dynamic parabolics), `TauCeti.Tannaka.fgPointTensorIsoEquiv`,
  `TauCeti.AlgebraicGeometry.AbelianVariety`, Mathlib `Finsupp`, `Ideal.iInf_pow_eq_bot_of_isLocalRing`,
  `RingTheory.Sequence.IsRegular` are cited with file paths; nothing duplicating them is planned.

## Notions moved down / owned here

No notion was moved down from a roadmap later in the merge order. Owned here because no readable earlier
roadmap states them: §2.11 (local nonabelian `H¹` finiteness), §1.9's twisted-Frobenius rationality route,
§9.2's exclusion of finite orthogonal monodromy, §8.6's residue/Jacobian-ring identification, §7.7's
corrected finiteness route.

## Corrections to the design

- §5.9: the design's sign statement is kept; the route now proves `|set| = ℓ(w)` (inversions of a minimal
  representative lie outside the Levi of `Q`). Checks recomputed on `SL₂` and `SL₃`.
- §5.3: the `GL₆` example now fixes the block order: `⟨γ_P, F_M⟩ = 4(a₀ − a₂)` with `a₀` the top block and `a₂`
  the bottom block `F¹ ∩ f₀`; with the opposite order the semibalance inequality reverses.
- §7.8: hypersurface dimension written `m` (LV Lemma 12.1 uses `n` for the hypersurface dimension, not the
  ambient one); the corrected cutoff `q^((m/2+1)·2M) < b/3` re-derived (the frequency sum needs `j ≤ 2M`;
  `(2M+1)²/‖g_M‖² = 3(2M+1)/(8M²+8M+3) ≤ 3/(4M)`).
- §8.4: the case split is `n ≥ 8` by contradiction (second moment `(n+1)/6 ≥ 3/2` vs `< 3/2`) and
  `2 ≤ n ≤ 7` by computation (LS uses `n ≥ 9`/`2 ≤ n ≤ 8`; both valid).
- SheafConvolutionOnAbelianVarieties §3.1 contract corrected: it supplies `χ(H, Ω^q)` and `e_top(H)`, not a
  twisted Euler characteristic directly; rank `N = n!·d` of a concentrated twist follows from `e_top`.
- LV source record merged into one manifest key `LV` (published article, DOI 10.1007/s00222-020-00966-7 read
  from the cached copy's line 6, with the arXiv v3 cross-collation in `version_note`); the second key the
  service created for arXiv v3 was dropped.

## Citations that could not be resolved against a readable copy

SheafConvolutionOnAbelianVarieties is in the merge order (immediately before this roadmap) but its
packaged README is neither on main nor in an open pull request, and the board holds only its design. Its
sections are cited with the numbering Layer `k` = SC.`k`, `§k.n` = the `n`-th node of SC.`k`; this
numbering agrees with every section number used in its two accepted review reports (§1.3, §4.4, §5.8,
§6.2, Layer 6). The statements cited (§§0.2, 2.4, 3.1, 3.3, 4.7, 5.2–5.3, 6.7, 8.2–8.3) were read in its
design text. ResolutionOfSingularitiesCharacteristicZero is cited only through
AlgebraicModuliForArithmeticGeometry §9.4.

## Ownership against open pull requests

Checked with `roadmaps grep` (main plus all 354 open heads) by object: Ax–Schanuel (found only for Kuga
varieties in AbelianSchemesAndArithmeticModuliPartII and exponential Ax–Schanuel in
DiophantineApproximationAndTranscendence §5.6), Rückert's Nullstellensatz (ComplexKahlerGeometry K3),
Katz–Messing (PadicDifferentialEquationsAndRigidCohomology §RD.7.7), relative crystalline comparison (none at
the needed generality), Borel–Serre finiteness (none), variations of Hodge structure / compact duals
(ShimuraData Layer 3), Eulerian numbers (ClassicalArithmeticCompletion), Hodge–Tate cocharacter in the image
(none), tensor-isomorphism torsors (MotivesAndAlgebraicCycles §6.8), curve Shafarevich (Faltings §R28.5.15).
No roadmap (main or open) cites MordellLawrenceVenkateshPartII. No declaration of `Suggested.lean` shares a
fully qualified name with a declaration of a readable roadmap.

## Sources

`sources.toml` records LS (arXiv v5, certified), LV (institutional publisher copy, certified; DOI and arXiv
v3 noted), Beauville (author page, certified), BC (arXiv, certified), Serre *Galois cohomology* (uncertified,
cited by locator). All texts read legally through the sources service; no `needs-references.toml` was
needed. Locators spot-checked against the cached texts: LS lines 1832 (Def. 5.2), 2261 (Lemma 5.29), 2366
(5.30), 2810 (5.49), 2902–2979 (Lemmas 6.1–6.3, Theorem 6.4; Lemma 6.2's normality input is André), 3082 (6.5),
3205 (7.2), 3259 (7.3), 3605–3722 (8.12–8.16), 3812 (8.17), 3877–4041 (Def. 9.1–Thm 9.6), 4076–4321 (A.1–A.6,
including the misprinted `>` in A.5 at LS line 4303 and "variance √n/12" at LS line 4230); LV page markers
(printed = marker + 892), Theorem 10.1 at LV line 2885 (printed p. 969), Proposition 10.2 at LV line 2916,
Lemma 10.3 at LV line 3004, Lemma 12.1 at LV line 3865 (printed p. 995).

## Adversarial pass

| Statement | Instances tried | Values computed | Result | Change |
|---|---|---|---|---|
| `integralHypersurfaces_not_zariskiDense` | `F = 0`; `F` with content divisible by `p ∉ S`; non-homogeneous `G`; `S` enlarged | `F = 0`: all partials 0, every `x ≠ 0` a common zero → not smooth; content `p`: reduction 0 → fails; `G = x₀² − 1` vanishes on reps with `x₀ = ±1` yet not projective → homogeneity needed; `S ⊂ S′` ⇒ set grows | holds; homogeneity required | `∃ e, G.IsHomogeneous e` kept |
| `IsSmoothHypersurface` (Jacobian criterion) | char `p | d`; `x₀^p+x₁^p+x₂^p` over `𝔽_p`; Euler relation | char `p | d`: if only `∂_jF(x) ≠ 0` with `x_j = 1`, Euler gives `∂_jF(x) = d·F(x) − Σ_(i≠j) x_i∂_iF(x) = 0`, contradiction → criterion chartwise correct; Fermat-`p` form: partials 0 → singular (it is `(x₀+x₁+x₂)^p`) | holds in all characteristics | Check added in §9.1 |
| `eulerian_central_mass_le_half` | `n = 0, 1, 2, 3, 4, 5, …, 8` | `n=1`: `2 ≤ 1` false; `n=2`: `4 ≤ 4`; `n=3`: `36 ≤ 36`; `n=4`: `488 ≤ 576`; `n=5`: `11420 ≤ 14400`; `n=8`: `1049776080 ≤ 1625702400` | true for `n ≥ 2` | hypothesis `2 ≤ n` |
| `eulerian` definition | descents vs ascents; `n = 3` | `A(3,·) = (1,4,1)` either way; `decide` gives `eulerian 3 1 = 4` | matches CA §2.18, LS, LV | — |
| §0.1 Hodge–Deligne system | unit; ℚ(1); non-transversal connection; rank mismatch | ℚ(1): Frobenius `p⁻¹` not integral, allowed; rank 2 vs 1: no comparison iso | definition determines object | 4th Check added |
| §0.2 integrality predicates | ℚ(−1) vs ℚ(1); monodromy 2 on `𝔾_m` | eigenvalues `q` vs `q⁻¹`; `2ℤ`-lattice: `2·L ≠ L` for every lattice | three predicates independent | — |
| §0.3 Tannakian category | disconnected base | map `(0, id)` nonzero with zero fibre at a point of the first component | connectedness needed | — |
| §0.5 projectors | double cover, `(1−τ)/2` on `ℤ²` with swap | image of `ℤ²` is `½ℤ(1,−1)`, not in `ℤ²`; intersection `ℤ(1,−1)` | lattice = intersection | — |
| §0.6 differential monodromy | constant system; `SL₂`-dense; finite monodromy | groups `1`, `SL₂` (not `GL₂`: det = 1 on a rank-2 system with trivial det), finite group kept | — | base-point Check |
| §0.7 Frobenius on a disk | constant family; Legendre family | period map constant; `(V,φ)` fixed, Hodge line varies | — | API added (definition needed API) |
| §1.1–1.2 H⁰-algebras | `ℚ[ε]/ε²`; `ℚ[C₃]` vs `ℚ³`; unramified quadratic swap | `ℚ[C₃] ≅ ℚ × ℚ(ζ₃)` (dims 1+2) ≠ `ℚ³`; `φ²` = swap, not id | — | — |
| §1.4 equidimensional | ranks `(1,3)`, `(2,2)`, zero module | total 4 both; only `(2,2)` equidimensional, `N = 2`, total `= N·[E:E₀] = 4` | — | — |
| §1.5 classical structures | odd rank alternating; `GSp₂`; `GO₄` | alternating perfect forms need even rank; `GSp₂ = GL₂`, multiplier det; `GO₄` has 2 components | — | — |
| §1.6 character systems | order 3 character | `[ℚ(μ₃):ℚ] = 2`, so ℚ-rank 2 | — | — |
| §1.7 orbit systems | `|I| = 2`, `N = 6` | ℚ-rank `12` | — | — |
| §1.8 parity | `n = 3, 4` | symmetry `(−1)^(n−1)`: `n=4` → `−1` alternating; `n=3` → `+1` symmetric | matches SC §4.7 | — |
| §1.9 rationality | single order-3 summand; trivial character | traces in `ℚ(μ₃)`; full orbit sums conjugates → ℚ; trivial character → `H^(n−1)` polynomial in `ℤ[t]` | needs full orbit | route rewritten (twisted Frobenius + IG.0.T4) |
| §2.1 normalizer | `E = E₀`; `E = E₀×E₀` swap; `GO₄` | `G = H`; swap ∈ `G∖B`; `B` disconnected | — | — |
| §2.2 centralizer bound | `σ = id` on `d` factors; `E₀×E₀`, `φ = (a,b)∘swap` | `dim Z = d·dim H` (fails bound); `Z_B(φ) ≅ Z(ab)` via `h = a⁻¹ga` | needs `E^σ = E₀` | Checks recomputed |
| §2.3 semisimplification | split extension in `GL₂`; unipotent; `GL₂²⋊C₂` | ss = sum of characters; trivial ss ≠ unipotent rep | — | — |
| §2.5 filtrations | `GL₂` weights `(1,0)` vs `(2,0)` | same Borel, `F¹` equal, `F²` differ (`0` vs line) | parabolic does not determine filtration | — |
| §2.7 `T` | weights `2,0,−2`; multiplicities mistake; symmetric `D` | `T(1/2)=1, T(1)=2, T(2)=2, T(3)=0`; wrong model gives `T(1)=1`; `D = 1 + 2·1 = 3 = h⁰+2A` | — | added API: `T` nondecreasing on `[0, A+h⁰]`, `T(A) = B` (used in §§7.6–7.7) |
| §2.8 uniformity | `E₀×E₀`, two `SL₂`; types `(1,0)`, `(2,0)` | restriction profile `(2,2,2)` from `(1,1,1)`; adjoint profiles `(1,1,1)` vs `(1,1,1)` at weights `±1` vs `±2` → differ | — | — |
| §2.9 global types | `G = GL_N`; `GO₂` | reduces to Faltings; `O₂`-conjugacy finer than `GL₂` | needs §2.11 | route adds §2.11, Hermite (AGD §R02.3.1) |
| §2.10 geometries | `H = 1`, `GL₂`; diagonal torus of `GL₃` | infinitely many Borels, one class; ordered set partitions of `{1,2,3}`: 13 | — | Check corrected (torus acts trivially) |
| §2.11 local `H¹` | `GL_n`; `μ₂`; `O_n` | `H¹(ℚ_p, GL_n) = 1`; `|ℚ_p^×/ℚ_p^(×2)| = 4` (`p` odd), `8` (`p = 2`); quadratic forms: finitely many | — | new target |
| §3.1 period orbit | constant system; Legendre | orbit a point; orbit `ℙ¹` = Lagrangian Grassmannian of rank 2 | — | — |
| §3.2 parabolic stabilizer | torus of `SL₂` on `ℙ¹` | orbits `{0}, {∞}, 𝔾_m`; open orbit not closed → normality needed | — | — |
| §3.3 radical | `(z²)`, `(1)`, `0` | `z ∉ (z²)`, `z² ∈`; all `g ∈ (1)`; only `g = 0` | — | — |
| §3.4 codimension | dimension count | `dim U ≤ (d + dim Z) + d − (d + dim D_mon) = d − codim Z ≤ 0` | positive-dim components degenerate | route made explicit |
| §3.5 transfer | `Z = D_mon`; countable union | `Φ_p⁻¹(Z) = Ω` dense; `ℚ = ⋃` points dense | finite unions only | — |
| §4.1 index classes | diagonal, product, `SO₄` | 1 class; 2 classes; `𝔰𝔬₄ = 𝔰𝔩₂ × 𝔰𝔩₂` not simple | — | — |
| §4.2 strong balance | 8 indices, `σ = (13)(24)(57)(68)` | 4 classes; orbits `{1,3}, {2,4}, {5,7}, {6,8}` each meet 2 classes | 4-balanced, strongly 2-balanced | — |
| §4.4 semisimple codimension | `GL₂` weights `(1,0)` | `A = 1`, `dim H = 4`: `1 ≥ 5/c` ⇔ `c ≥ 5` | — | Check corrected |
| §4.5 semisimple non-density | `d = 0`; `S` enlarged | point dense in itself; monotone in `S` | — | — |
| §5.1 central weights | `GL_r`; `GL₂` Borel | weight = average; `γ_P(diag(a,b)) = a⁻¹b`, `⟨γ_P, diag(t,1)⟩ = −1` | sign pinned | — |
| §5.2 induced filtration | `SL₂` torus fixed points | `0` and `∞` in different Borel orbits | needs one `Q`-orbit | — |
| §5.3 balance | `GL₆`, `2+2+2`, `dim F¹ = 3` | `⟨γ_P, F_M⟩ = −⟨det Ad|u, λ⟩ = −2Σ_(i<j)(s_i − s_j) = 4(a₀ − a₂)` (top `a₀`); generic `(2,1,0)` → `8 > 0` | block order matters | Check made explicit |
| §5.4 purity ⇒ balance | `V_pE` over ℚ; CM character | 1-dim subquotient needs weight `1/2 ∉ ℤ`; CM weights unequal | ℚ only | — |
| §5.5 types | reindex `f` vs `F` | type unchanged vs changed | — | — |
| §5.6 cocycles | `𝔾_a`, `ψ = −1`; char `p`, `ψ = id` | `v = −u/2`; `p·u = 0` but coboundaries 0 → `H¹ ≠ 0` | char 0 needed | — |
| §5.7 stable Levi | `diag(2,1)` on root group; regular `φ` in Borel | multiplier 2 infinite order; Levi = torus through `φ` | restrict to `Z_U(φ^r)` | — |
| §5.8 local types | irreducible `ρ^ss` | one type | — | — |
| §5.9 root pairing | `SL₂`, `w = s`; `w = 1`; `SL₃` 3-cycle | sets `{−α}`, size `1 = ℓ(s)`; empty; size 2 = `ℓ(w)` | sign needed | statement cleaned, route added |
| §5.10 fixed-graded bound | `GL₂`, `(1,0)`, `c = e = 1` | `h = (1,2,1)`, `A = B = 1`, right side `T(1) + T(0+1) = 2`; `B = 1 > 2` is false | hypothesis correctly excludes | wording |
| §5.11 graded pairs | regular `φ` in `GL_n` | `n!` Borels, dim 0 ≤ `n` | — | — |
| §5.12 fixed-type codim | `c → ∞` | hypotheses → `A > 0`, `B > T((h⁰−t)/2)` | feeds §8.5 | — |
| §6.1 coefficient theorem | `d = 0`; `A` small | false / vacuous | — | — |
| §7.1 fibre functors | `ℚ_p(1)`; nonsplit `PGL₂` form | trivial torsor (Hilbert 90); no rational point, `ℚ̄_p`-point exists | — | route via MC §6.8 |
| §7.2 Hodge torus | ordinary elliptic curve | HT weights `1, 0`; cocharacter `diag(1,0)` in image closure | — | gap declared |
| §7.3 bounded prime | `r = 2` multiplier; regular in `GSp_(2g)` | pairing `λ ↔ ℓ²/λ`; torus dim `g + 1` | multiplier `ℓ^r` | — |
| §7.4 bad filtrations | published vs arXiv inequality | `A ≥ z + e` (non-strict) | — | — |
| §7.6 LV Theorem 10.1 | elliptic family; domain of `T` | `Sp₂ = SL₂ ⊂ GSp₂ = GL₂`; `3h⁰/2 + d ≤ A + h⁰ ≤ D` from `A ≥ h⁰ + d` | domain automatic | Check added |
| §7.7 finiteness | component over a number field; monotonicity in `d` | dense ℚ-points ⇒ geometrically irreducible over ℚ; `T` nondecreasing on `[0, A+h⁰]` ⇒ inequalities for `d′ ≤ d` | no extra hypothesis needed | hypothesis corrected |
| §7.8 point-count bound | `M = 0, 1`; norm | `‖g₁‖² = 9 + 2·5 = 19`, `9/19 ≤ 3/4`; frequencies to `2M` | cutoff `2M` | `m` for hypersurface dim |
| §8.1 Lemma A.1 | `n=2,d=1` `GL₂`, `GSp₂`, `GO₂`; `n=3,d=1` `GO₆` | `4<6`, `4<6`, `4<4` false; `h⁰ = 8`, `16 < 20` | parity restriction needed | — |
| §8.2 difference law | `n = 2, 3` | `(1/4,1/2,1/4)`; `β = (1/36, 2/9, 1/2, 2/9, 1/36)`, sum 1 | — | — |
| §8.3 second moment | `n = 2, 3` | `1/2 = 3/6`; `2/3 = 4/6`; Bernoulli variance `1/4 = 3/12` | — | — |
| §8.5 large `c` | `GL₂` profile | `T(x) = x` on `[0,1]`: need `1 > 2x`, `x = (e+4)/c ≤ 1/5` for `c ≥ 5(e+4)` | — | — |
| §8.6 Hodge numbers | plane cubic; quartic surface; quadrics | `(1,1)`; `(1,4,10,16,19,…)` → `(1,19,1)`; `d = 2` only `p = (n−1)/2`, `n` odd | — | — |
| §8.7 parameter dimension | plane quartics, cubics; `n = 2` genus | `14` vs `19`; `9 = 9`; `(d−1)(d−2)/2 ∼ d²/2` | correction confirmed | — |
| §8.8 normal limit | `40/√n < 1/2` | `n > 6400` | not a substitute for §8.4 | — |
| §8.9 LV inequalities | uncorrected dimension | `d^(n+1)/d^(2n) → 0` for `n ≥ 2` | conclusion unchanged | — |
| §9.1 universal family | plane cubics; quartic surfaces | `binomial(5,3) − 1 = 9`; primitive rank `21 = 22 − 1` | — | — |
| §9.2 monodromy | cubic surfaces; `n = 5, d = 4` | `(0,6,0)` definite (finite `W(E₆)`); `(1+t+t²)⁶` coefficients at `t², t⁶, t^10` = `21, 141, 21` → indefinite | finite case excluded in range | route owned here |
| §9.3 headline | `S` vs `S′`; `Y` dense open | one `G` serves smaller `S`; nonzero `G` cuts a proper subset | — | — |
| §10.1 primitivity | zero translation; isogeny pullback | `0` fixes all `H`; kernel points stabilize | — | — |
| §10.3 Weil restriction | `K[ε]/ε²` | `Res(E) ≅ E × 𝔾_a`, not proper | finite étale only | — |
| §10.6–10.9 exceptional degrees | `(5,20)`; `d = 2·8855` | `binomial(25,5) = 53130`, `/6 = 8855`; allowed in §10.6, excluded in §10.9 | equality vs divisibility | — |
| §10.7 isogeny quotient | `[2]×id` on `E₁×E₂` | `|T| = 4`, `d(H) = 4d(H′)` | — | — |
| §10.8 descent | `T = E[2]`; `T = ⟨P⟩` | `E/E[2] ≅ E`, quotient `E(K)/2E(K)` finite; 2-isogeny cokernel finite | — | Check corrected (an earlier draft claimed `(E/E[2])(K) ≠ 0` with `E(K) = 0`, false since `E/E[2] ≅ E`) |
| §10.10 surfaces | principal `φ` | `g = 1 + 2/2 = 2`, theta divisor; `q(mf) = m²q(f)` | — | — |

## What the README could not support

Nothing in the design was dropped. Four headline theorems are not statable at the pins (above). Six
statements rest on declared supplier gaps (above), each stated at its supplier in the README's contracts.
