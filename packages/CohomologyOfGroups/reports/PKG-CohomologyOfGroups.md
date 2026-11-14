# PKG-CohomologyOfGroups: package report

Deliverables: `packages/CohomologyOfGroups/README.md`, `packages/CohomologyOfGroups/Suggested.lean`,
`packages/CohomologyOfGroups/metadata.toml` (`topic = "math.GR"`, as ProfiniteCohomology on main),
`packages/CohomologyOfGroups/sources.toml` (unchanged: no new work is cited, and every citation of
the Lean docstrings is a locator the manifest already records), and the `gaps` list of
`packages/CohomologyOfGroups/design/plan.json` (unchanged, see below).

The README is the accepted design written out: every target, Check and worked example of the
design is kept. The accepting review (REV-DESIGN~11) has no findings; its non-blocking items are
source-text issues and two questions for humans (licences of Brown82/CE56, settled as
uncertified; Löh's notes as an author-page source), which need no change to the package.

## Headline theorems

| Headline (README) | Status | Lean name / what is missing at the pins |
| --- | --- | --- |
| Free groups have vanishing (co)homology in degrees `≥ 2`, any coefficients (3.6) | stated | `freeGroup_isZero_of_two_le` |
| Free product formula `Hₙ(A ∗ B, M) ≅ Hₙ(A, M) ⊕ Hₙ(B, M)`, `n ≥ 2` (3.6) | stated | `coprod_groupHomology_bijective` |
| `H₂(A, ℤ) ≅ Λ²A` for every abelian group (5.4) | stated (existence of an additive isomorphism) | `nonempty_groupHomology_two_addEquiv_exteriorPower`; the map `ψ` needs the Pontryagin product, a construction of 5.4 |
| Hopf's formula (6.8) | stated (existence of an additive isomorphism) | `nonempty_groupHomology_two_addEquiv_hopf`; the map `h` is a connecting map of a short exact sequence of chain complexes whose exactness is a proof obligation, a construction of 6.8 |
| Double coset formula (7.1) | stated | `res_comp_corestriction_eq_finsum` (with the definitions `conjRes`, `doubleCosetTerm`) |
| Stable element theorem, cohomological clause (7.2) | stated | `bijOn_res_sylow_isStableClass` (with `IsStableClass`); the homological and Tate clauses are README targets |
| Tate duality (8.1) | stated | `tate_duality` |
| All-degree cup periodicity of finite cyclic groups (8.4) | stated | `cup_characterConnectingClass_bijective` |
| Periodicity theorem, (a)⇔(b)⇔(c)⇔(d) (8.5) | stated | `tfae_periodic_cohomology` |
| Hochschild–Serre spectral sequences with edge maps and products (6.2–6.5) | not statable | the representation of `G ⧸ N` on `H^q(N, M)`, `H_q(N, M)` for `q > 0` (Mathlib has degree `0` only, `Rep.quotientToInvariantsFunctor`); its definition carries the proof of inner triviality; and the extension filtration of normalized cochains (6.1) |
| Transgression and the low-degree exact sequences (6.6–6.7) | not statable | the transgression (normalized cochains), and the homological `d²` |
| Tree sequences, amalgam and HNN Mayer–Vietoris sequences (3.5–3.6) | not statable | groups acting on trees without inversion (FreeGroupsAndLimitGroups §4.6; Tau Ceti has `TauCeti.SerreGraph` but no action) and the connecting maps |
| Künneth theorem in homology and cohomology (5.1, 5.3), universal coefficient sequences (5.2) | not statable | the cross product (Eilenberg–Zilber shuffle map), the cup product of 4.1 for arbitrary groups and pairings, the evaluation pairing of 4.6 |
| Periodicity from an exact sequence of cohomologically trivial modules (8.3) | not statable | the class `e` obtained by iterated connecting maps of the sequence |

Each not-statable headline is named in the module docstring with what it lacks; nothing is stated
in its place. For Hopf's formula and `H₂(A, ℤ) ≅ Λ²A` the classical statement is the existence of
the isomorphism (Löh19 Thm. 1.5.1; Brown82 Ch. V), which is what the Lean file states; the README
says so at both targets and names the map each target constructs.

The Lean file contains three definitions, all with real bodies on native carriers and no `sorry`:
`conjRes` (a `groupCohomology.map` along `b ↦ g⁻¹β(b)g` with coefficient map `ρ(g)`, whose
equivariance is proved), `doubleCosetTerm` (`conjRes` followed by Tau Ceti's corestriction) and
`IsStableClass` (a predicate). Each is in the README (1.1, 7.1, 7.2) with API bullets and Checks.

## Corrections and additions to the design text

- 1.1: added `conjRes`, the compatible pair "conjugation followed by restriction" through which the
  double coset formula and stable elements are stated, with its composition law and two Checks
  (an `S₃` instance where the hypothesis holds for `(13)` and `(123)` and fails for `(132)`; a
  wrong coefficient convention `m ↦ g⁻¹m` excluded by an order-3 witness; the design's involution
  examples cannot separate the two conventions).
- 3.6: the free product is Mathlib's `Monoid.Coprod A B`, identified with the amalgam over the
  trivial group; the statement names the map `(x, y) ↦ inl_* x + inr_* y`.
- 7.1: the formula is stated for every choice of double-coset representatives, the summand named
  `doubleCosetTerm`, the sum a `finsum` (finite because `K\G/H` is a quotient of `G/H`); API
  bullets for the summand added.
- 7.2: the stability predicate is `IsStableClass`, defined through `conjRes`.
- 8.1: restated as a pairing `Ĥ^{−1−i}(G, M) × Ĥⁱ(G, M^∨) → Ĥ⁻¹(G, ℚ/ℤ)` with `M` first and the
  evaluation `m ⊗ f ↦ f(m)` of Mathlib's closed structure, perfect in its second variable; the
  identification `Ĥ⁻¹(G, ℚ/ℤ) = (ℚ/ℤ)[|G|]` is spelled out. The order of factors changes the
  pairing by a sign only, so bijectivity is the design's statement.
- 8.4: the cyclic hypothesis is "generated by `g`", `m = orderOf g`, as in Tau Ceti's character class.
- 8.5: (a) is `x ↦ x ∪ u` followed by the unitor; (d) is `QuaternionGroup (2^m)`, `m ≥ 1`.
- Conventions and contracts: the integral extension class is Tau Ceti's
  `TauCeti.FactorSet.cohomologyClass`, independent of the section by
  `TauCeti.GroupExtension.cohomologyClass_factorSet_eq` (its factor-set convention
  `σ(x)σ(y)σ(xy)⁻¹` was checked to be the README's); the Mathlib carriers the Lean statements use
  are listed.
- `gap:flat-kunneth` route: "tensoring with a bounded-below complex of flat modules" was replaced
  by the precise reason, that a complex of flat modules indexed by `ℕ` is bounded above in
  cohomological degrees and hence K-flat.
- Supplier gaps rewritten in the required form `What DerivedModuleAlgebra must provide
  (gap:<slug>): …`; the needs are those of `plan.json`.
- Scope: SpectralSequencesAndConvergencePartII (merge order line 63, board design) owns the general
  hyper(co)homology spectral sequences (its Layer 2), leaves first-quadrant edge maps and low-degree
  sequences to DerivedModuleAlgebra §S.1 and excludes group-extension spectral sequences; 2.3 is
  recorded as the instance for invariants and coinvariants, as SchemeKTheoryOperations §6.7 is.

Notions moved down from later roadmaps: none.

## Supplier gaps

`plan.json` gaps unchanged; both rechecked on main:

- `homological-low-degree` (DerivedModuleAlgebra §S.1): §S.1 (`TauCetiRoadmap/DerivedModuleAlgebra/README.md`, lines 955–1100 on main) gives
  the edge morphisms and the five-term sequence in cohomological indexing only; its homological
  form stops at the second page and convergence. SpectralSequencesAndConvergencePartII also leaves
  them to §S.1.
- `flat-kunneth` (DerivedModuleAlgebra §0.2): §0.2 has K-flat replacements and tensor laws, no
  Künneth sequence; Tau Ceti's sequence needs projective cycles.

## Duplication sweep

Checked by object against the pinned Mathlib and Tau Ceti (greps of `RepresentationTheory`,
`GroupTheory`, `Algebra/Homology`), the roadmaps on main, the open roadmap pull requests
(`roadmaps grep`) and the board packages:

- Free-group (co)homology, free products, Hopf's formula, `H₂(A) ≅ Λ²A`, Künneth for groups, the
  discrete double coset formula, stable elements, Tate duality for finite groups, the periodicity
  theorem, the `p`-group classification of 8.2: absent at the pins. Tau Ceti's
  `ContCohomology/Cup/Duality/*` is Poitou–Tate-type duality for profinite groups with a dualizing
  module, not 8.1; Tau Ceti's `AlgebraicTopology/EilenbergMacLane/OneDimensional.lean` (a wedge of
  circles is a `K(F, 1)`) is topological and not the algebraic 3.6; Tau Ceti's quaternion files have
  no classification.
- The integral extension class and its independence of the section: in Tau Ceti
  (`TauCeti.FactorSet.cohomologyClass`, `TauCeti.GroupExtension.cohomologyClass_factorSet_eq`);
  it was a convention remark, not a target, and is now cited there.
- Open pull requests: InductionRestrictionPartII mentions Hopf's formula only as an alternative
  route and does not state it; ArithmeticLocallySymmetricSpaces ALS.3.7 and
  ModularCharactersAndBlocks have Mackey formulas for other objects (Hecke traces, Brauer
  traces); K3BlochGroups §5.2 is the only other statement of stable elements (integral, compared in
  7.2). HomologicalStabilityOfGeneralLinearGroups (open, not in the merge order) owns the spectral
  sequence of van der Kallen's groups acting on frame complexes with coefficients, an instance of
  3.2 for a specific complex; it is not cited here (it is not earlier in the order) and no object is
  owned twice.
- Removals: none. No target of the design exists elsewhere at the pins or in an earlier roadmap
  beyond what the design already cites as a comparison.

Ownership against open pull requests was checked with the tool's index (466 open pull requests,
index of 2026-11-14), and the overlap report lists no pull request that changes this roadmap and no
dropped id.

## Adversarial pass

| Statement | Instances tried | Values computed | Result | Change |
| --- | --- | --- | --- | --- |
| `conjRes` (1.1) | `S₃`, `A = ⟨(12)⟩`, `β` = inclusion of `⟨(23)⟩`; `g = (13), (123), (132)`; `g = 1` with `B = 1`; coefficient `m ↦ g⁻¹m` | `(13)⁻¹(23)(13) = (12)`, `(123)⁻¹(23)(123) = (12)`, `(132)⁻¹(23)(132) = (13) ∉ A`; `(123) = (13)(12)` so the two maps agree by the composition law; for `g = (123)`, `x = (23)`: `gxg = (23)` fixes `1`, `xg⁻¹` sends `1 ↦ 2`, so `ρ(g⁻¹)` is not equivariant on `ℤ³`; for an involution the two conventions coincide | definition determines the convention | def added; two Checks added |
| `freeGroup_isZero_of_two_le` | `S = ∅`; `S = {a}`; `S = {a, b}`, `n = 1`; `k = 0` | `Hₙ(1, M) = 0` for `n ≥ 1`; `Hₙ(ℤ, M) = 0`, `H²(ℤ, M) = 0` for `n ≥ 2` (two-term resolution); `H₁(ℤ, ℤ) = ℤ`, `H₁(F₂, ℤ) = ℤ² ≠ 0`; zero ring: all modules zero | true; `2 ≤ n` necessary | none |
| `coprod_groupHomology_bijective` | `A = B = ℤ/2`, `M = ℤ`, `n = 2, 3`; `A = B = ℤ`, `M = ℤ` with both generators acting by `−1`, `n = 1`; `A = B = 1` | `H₂ = 0 ⊕ 0 → H₂(D∞) = 0`; `H₃ = ℤ/2 ⊕ ℤ/2 → (ℤ/2)²`; at `n = 1`: `0 ⊕ 0` versus `H₁(F₂, M) ≅ ℤ`; trivial groups `0 → 0`; `(x, y) ↦ x + y` bijective iff `(x, y) ↦ x − y` is | true; `n ≥ 2` necessary | carrier named in 3.6 |
| `nonempty_groupHomology_two_addEquiv_exteriorPower` | `A = 1, ℤ/n, ℤ/2 × ℤ/2, ℤ/2 × ℤ/4, ℤ², ℚ`; wrong models `⊗²`, `Sym²` | `0 = 0`; `0 = Λ²(ℤ/n)`; `ℤ/2 = ℤ/2`; `H₂ = ℤ/2 ⊗ ℤ/4 = ℤ/2 = Λ²`; `ℤ = ℤ`; `0 = 0` (`ℚ ⊗ ℚ ≅ ℚ` spanned by squares); `⊗²(ℤ/2) = Sym²(ℤ/2) = ℤ/2 ≠ H₂(ℤ/2) = 0` | true | none |
| `nonempty_groupHomology_two_addEquiv_hopf` | `S = {a}`, `R = nℤ`; `S = {a, b}`, `R = [F, F]`; `S = ∅`; `R = F` | `(R ∩ [F,F])/[F,R] = 0 = H₂(ℤ/n)`, wrong model `R/[F,R] = nℤ ≅ ℤ`; `[F,F]/[F,[F,F]] ≅ ℤ = H₂(ℤ²)`; `0 = 0`; `[F,F]/[F,F] = 0 = H₂(1)` | true | none |
| `doubleCosetTerm` | `g = 1`; `K = 1`, `n = 0`; `g ↦ gh`, `h ∈ H` | restriction `H → K ∩ H` then corestriction; `m ↦ g·m` for `m ∈ M^H`; `c_h = id` on `Hⁿ(H, M)` | well defined on double cosets | def added with API |
| `res_comp_corestriction_eq_finsum` | `K = 1`, `n = 0`; `G = S₃`, `H = K = ⟨(12)⟩`, `n = 0` and `n > 0`, `M = ℤ³`; `H = G`; wrong `c_{g⁻¹}` | `Σ_{gH} g·m` both sides; double cosets of sizes `2` and `4`; `n = 0`: `m + (13)m + (23)m` versus `m + (13)m + (132)m`, equal since `(132) = (23)(12)` and `m ∈ M^{(12)}`; `n > 0`: second term factors through `Hⁿ(1) = 0`, so `res ∘ cor = id`; `c_{g⁻¹}`: `(13)⁻¹e₃ = e₁` versus `((13)(12))⁻¹e₃ = (132)e₃ = e₂`, representative-dependent | true for every choice of representatives | statement over arbitrary `r` |
| `IsStableClass` | `S₃`, `P = A₃`, `M = ℤ`, `n = 2, 4`; `g ∈ P` | `c_{(12)} = −1` on `H²(A₃, ℤ) = ℤ/3`: stable classes `{0}`; `+1` on `H⁴`: all of `ℤ/3`; for `g ∈ P` both sides agree by inner triviality | determines stability | def added |
| `bijOn_res_sylow_isStableClass` | `S₃`, `p = 3`, `n = 2, 4`; `n = 0`, `M = ℤ`; `p ∤ |G|`; `G = P` | `H²(S₃, ℤ)(3) = 0 ↔ {0}`; `H⁴(S₃, ℤ)(3) = ℤ/3 ↔ ℤ/3`; `n = 0`: `H⁰(G, ℤ)(p) = 0` versus stable `ℤ`, not surjective; `P = 1`: `{0} ↔ {0}`; `G = P`: identity | true; `n ≠ 0` necessary | none |
| `tate_duality` (8.1) | `G = ℤ/2`, `M = ℤ`, `i = −1, 0, 1`; `G = 1`; first-variable variant with `M = ℤ^{(ℕ)}`, `i = −1` | `Ĥ⁻¹(ℚ/ℤ) = ℤ/2 ≅ Hom(Ĥ⁰(ℤ) = ℤ/2, ℤ/2)`; `Ĥ⁰(ℚ/ℤ) = 0 = Hom(0, ·)`; `Ĥ¹(ℚ/ℤ) = ℤ/2 ≅ Hom(H₁ = ℤ/2, ℤ/2)`; all zero for `G = 1`; target degree `(−1 − i) + i = −1`, while a target `Ĥ⁰(ℤ/2, ℚ/ℤ) = 0` would kill every pairing; first variable: `Ĥ⁰(M) = (ℤ/2)^{(ℕ)}` into `Hom(∏ ℤ/2, ℤ/2)` is not onto | true in the second variable only | README restated with `M` first; the direction is pinned |
| `cup_characterConnectingClass_bijective` (8.4) | `G = ℤ/2`, `M = ℤ`, `ℤ_sgn`, `n = −1, 0, 1`; `G = 1`; `χ(g) = 2/4` on `ℤ/4`; `χ = 0` on `ℤ/2` | `Ĥ⁰(ℤ) = ℤ/2 → Ĥ² = ℤ/2`; `Ĥ⁻¹ = 0 → Ĥ¹ = 0`; `Ĥ⁰(ℤ_sgn) = 0 → Ĥ² = 0`, `Ĥ¹(ℤ_sgn) = ℤ/2 → Ĥ³ = ℤ/2`; `1/1 = 0` in `ℚ/ℤ`, all groups zero; `×2` on `Ĥ⁰(ℤ/4, ℤ) = ℤ/4`, not bijective; zero map on `ℤ/2` | true; `hχ` necessary | README hypothesis "generated by `g`" |
| `tfae_periodic_cohomology` (8.5) | `G = 1`, `Q₈`, `S₃`, `V₄`, `D₄` | `G = 1`: `u = 0 ∈ Ĥ¹ = 0`, `Ĥ^d = 0` cyclic of order `1`; `Q₈`: (c), (d) with `m = 1`, (b) at `d = 4` (`ℤ/8`), not `d = 2` (`(ℤ/2)²`); `S₃`: `H⁴ = ℤ/6`, `H² = ℤ/2`; `V₄`: `Ĥ² = (ℤ/2)²`, `Ĥ³ = ℤ/2`, `Ĥ⁻² = (ℤ/2)²`, `Ĥ⁻³ = ℤ/2`, none `ℤ/4`, (c), (d) fail; `D₄ ⊃ V₄` fails (c), so (d) must exclude dihedral 2-groups | consistent | README (a), (d) aligned with Lean |
| 3.6 free product carrier | `Monoid.Coprod` versus `PushoutI` over `1` | universal properties agree; degree-one tail `M → M_A ⊕ M_B`, `m ↦ (−[m], [m])`, injective for trivial action | consistent | wording |
| `gap:flat-kunneth` route | `K = ℤ/2`, `L = ℤ[1/3]` in degree `0`; `K = L = ℤ/2` | `H₀ = ℤ/2 ⊗ ℤ[1/3] = ℤ/2`, no `Tor` term; non-flat `L`: `H₁(K ⊗ L) = 0` versus `Tor₁(ℤ/2, ℤ/2) = ℤ/2` | flatness of `L` necessary | route wording corrected |

Context: no section `variable`s are used; every declaration carries its binders. Checked
mechanically: a scratch copy of `Suggested.lean` with `#check @name` for all twelve declarations
was elaborated once; every elaborated type matches its README statement (`[Finite G]` and
`[Fact p.Prime]` present in `bijOn_res_sylow_isStableClass`, `[H.FiniteIndex]` in the double coset
statement and `doubleCosetTerm`, `[R.Normal]` in Hopf, `[Fintype G]` in Layer 8, `k`, `G`, `S`,
`A`, `B` in one universe as Mathlib's carriers require). Nothing changed as a result.

## Elaboration

`lake env lean packages/CohomologyOfGroups/Suggested.lean` from the content checkout (all imported
Tau Ceti modules were already built): **9** warnings `declaration uses 'sorry'` (lines 83, 91, 106,
115, 144, 168, 182, 199, 213), no other message. The file has the single `import Mathlib`, three
`TauCeti.*` imports (`RepresentationTheory.Homological.GroupCohomology.Corestriction`,
`…TateCohomology.Cup.Product`, `…TateCohomology.Character`), no `set_option`, no sorry'd data.

## Dependency check

```text
depcheck: 242 roadmaps, 2200 edges, 0 problem(s)
```

No UPWARD, CYCLE or `moved:` line.

## Citation resolution

`roadmaps resolve` on the README:

```text
## Cross-roadmap citations found nowhere

- 53: SpectralSequencesAndConvergencePartII, Layer 2: no roadmap SpectralSequencesAndConvergencePartII on main or in an open pull request

## Lean names found nowhere

None.
```

SpectralSequencesAndConvergencePartII is in the merge order (line 63, before this roadmap at
line 318) and exists as an accepted board design (`packages/SpectralSequencesAndConvergencePartII`);
the citation is a scope boundary (its Layer 2 and its own scope paragraph), not a supplier, and is
cited by layer only. The tool did not check names outside the roadmap repository on this host;
every backticked Lean name of the README was checked against the pinned Mathlib and Tau Ceti
sources by a declaration index (the only unmatched tokens are mathematical notation such as `c_g`,
`A_j`, `F_t`), and the names used in `Suggested.lean` elaborate.

## Sources

No new source; `needs-references.toml` not written. Brown82 and CE56 remain uncertified (cited by
chapter), SwanPPeriod60 waived. Source issues noted (from the accepting review, rechecked):
Loh19 Example 3.2.25 begins on printed p. 137 (line 5960) and its displayed dimension `n` should be
`n + 1`; the README's Check uses `n + 1`. MilneCFT Prop. 1.30 (line 3357) is `cor ∘ res = [G : H]`
and Cor. 1.33 (line 3382) the Sylow injectivity: they are cited in the route of 7.2, not for the
theorem, and the Lean docstring of 7.2 cites Brown82 only.

No text read during the job contained instructions.
