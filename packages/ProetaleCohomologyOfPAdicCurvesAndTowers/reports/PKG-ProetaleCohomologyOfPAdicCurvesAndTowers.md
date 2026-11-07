# PKG-ProetaleCohomologyOfPAdicCurvesAndTowers

Files written: `packages/ProetaleCohomologyOfPAdicCurvesAndTowers/README.md`, `Suggested.lean`, `metadata.toml` (`topic = "math.NT"`, as on main, e.g. `Completed/Multiquadratic/metadata.toml`), `sources.toml`. `design/plan.json` is unchanged: its `gaps` list already holds the three supplier gaps, and their `neededBy` fields agree with the README.

## Headline theorems

| Headline (README) | Status |
| --- | --- |
| Irreducibility of the generalized Steinberg representations `Sp_J(A)` of `GL_{d+1}(K)`, `K/ℚ_p` finite, `A` a field of characteristic `0` or `p` (§0.4(a); CDN-STEIN Proposition 5.1) | **stated**: `generalizedSteinberg_isIrreducible` |
| Fundamental diagram of an affinoid or proper curve over `C` (§3.5), the Kummer regulator `Symb_ℓ(Y) ≅ H¹_ét(Y, ℤ_ℓ(1))` for every `ℓ` (§2.4), the syntomic regulator (§3.3) | not statable: Mathlib has no rigid analytic curves, no étale or pro-étale cohomology of adic spaces, no `B_cris^+` or `B_st^+` (only `BDeRhamPlus`) |
| Overconvergent and Stein curve diagrams (§§4.1–4.2) | not statable: same carriers, plus dagger structures |
| ℓ-adic, de Rham and Hyodo–Kato filtrations; the Weil–Deligne similarity (§§2.5, 3.2, 4.3, 4.6) | not statable: Hyodo–Kato cohomology and rigid cohomology are missing |
| Proper curves and the Jacobian period isomorphism `Ĵ ≅ X^1_st(H¹_HK(X))` with its integration form (§§4.7–4.9) | not statable: Jacobians of curves and universal vector extensions are missing |
| `G_K`-equivariant fundamental diagram of a semistable Stein weak formal scheme (§5.5) | not statable: weak formal schemes, dagger spaces and syntomic cohomology are missing |
| Cohomology of `Ω^d` in every theory (§§6.2, 6.4, 6.5), integral `p`-adic étale cohomology (§6.9), Dat's complex (§6.10) | not statable: the rigid space `Ω^d` and its cohomology are missing |
| Drinfeld tower: connected components (§7.1), equivariant semistable models (§7.2), multiplicities (§7.4), multiplicity diagram (§7.5), finite copresentation (§7.7), non-admissibility (§7.8) | not statable: Lubin–Tate and Drinfeld spaces, their cohomology, and the JL and LL correspondences are missing |

The module docstring lists the unstated headlines with what each lacks. The file defines only what the stated headline needs, each with a real body (no sorry'd data):

- `flagSubspace`;
- `parabolic`, the stabilizer of standard flag subspaces under the pointwise action of `LinearMap.GeneralLinearGroup`, pulled back along `Matrix.GeneralLinearGroup.toLin`;
- `translation`, left translation on `LocallyConstant (G ⧸ H) A`, with proved `map_one'` and `map_mul'`;
- `steinbergRelations`;
- `generalizedSteinberg`, which is `Representation.quotient`.

Two proved helper theorems make these definitions possible: `parabolic_mono` and `steinbergRelations_le_comap`. Every name appears in README §§0.3–0.4.

## What the README could not support

Nothing in the design was dropped. Three supplier gaps are kept, unchanged in content. Each is now written in its supplier's subsection of `## Exact supplier contracts` in the form `What <Supplier> must provide (gap:<slug>)`:

- `formal-syntomic-period-comparison` (CohomologyComparisonsPartII §§4.4–4.5);
- `period-rings-general-C` (PadicPeriodRings §§4.1, 4.3);
- `endomorphism-characteristic-polynomials` (PadicDifferentialEquationsAndRigidCohomology §RD.7.7).

The design's separate "Gaps against named suppliers" subsection is folded into those subsections.

## Notions moved down

- The infinite-level connected components of the Lubin–Tate tower (STR08 Theorems 4.3–4.4) are owned here in §7.1. Otherwise only the later ScholzeFunctorAndModpCohomologyOfTheLubinTateTower SZ.0 plans them. This was already so in the design; the README now states ownership without process wording.

## Duplication sweep

I searched by object with `roadmaps grep` across main and the 354 open roadmap pull requests, and grepped the board's packages. Objects searched:

- generalized Steinberg `Sp_J`;
- Schneider–Stuhler and Iovita–Spiess;
- graphs with legs;
- fundamental diagram;
- cohomologically profinite / finite copresentation;
- Strauch components;
- Drinfeld half-spaces;
- Hyodo–Kato cohomology;
- `X_st` and Banach–Colmez spaces.

Results:

- No new duplication. The only other "fundamental diagram" (AnabelianGeometryAndNonabelianChabauty, `tangentialAlbanese.square`) is an unrelated object.
- The smooth generalized Steinberg `Sp_J(A)` is owned nowhere else:
  - SmoothRepresentationsOfLocalGroups SR.3 has the complex `St_G` and segment representations, compared in a §0.3 Check;
  - LocallyAnalyticRepresentationsOfLocalGroups explicitly excludes locally analytic Steinberg representations.
- The pinned Mathlib (`6b7abb3`) and Tau Ceti (`a91d3aa`) have none of the roadmap's objects. Tau Ceti's `Algebra/Quaternion/Steinberg.lean` is about symbols.
- Removals in this package: none beyond the design's imports, which stay as they were and are listed in "Scope and ownership". Every Mathlib declaration used by `Suggested.lean` is now named, with its file and line, in "From Mathlib".

Ownership against open pull requests: `roadmaps grep` covers all open roadmap pull requests at their heads. Every supplier Lean name in the README resolves at the head of its roadmap:

- `ProEtaleSheaf.completedZp`, `FormalScheme.IsSemistable`, `SemistableFormalNearbyCycles`, `FormalNearbySymbol` (ClassicalAdicEtaleCohomology);
- `Semistable.aOmega` (AInfCohomology);
- the `LogCrystalline.*` names (LocallyAnalyticDistributions);
- `TowerDatum`, `LubinTate.level`, `Drinfeld.level`, `Drinfeld.period`, `TowerCohomology.atLevel`, `TowerSector.centralQuotient` (EndoscopicTransferAndUnitaryTraceComparison);
- `DrinfeldHalfPlane`, `DrinfeldExhaustion`, `DrinfeldFormalModel` (HilbertModularVarietiesAndShimuraCurves);
- `DivisionAlgebraTypes.jacquetLanglands`, `DrinfeldComparison.localJacquetLanglands` (PadicLocalLanglandsForGL2Qp).

The `roadmaps resolve` run on the final README reports "Lean names found nowhere: None". It reports one cross-roadmap lead, "PadicLocalLanglandsForGL2QpPartII §4.1". That is a false positive: the roadmap is a board design package, cited only as a consumer (Downstream consumers and the §7.5 Check), never as a supplier.

No declaration of `Suggested.lean` shares a fully qualified name with another roadmap: the namespace is `TauCetiRoadmap.ProetaleCohomologyOfPAdicCurvesAndTowers`.

## Review notes applied (accepted review, five P3)

1. Gap `endomorphism-characteristic-polynomials`: "Needed by §4.7" → "Needed by §4.6".
2. §2.2 first Check: the one-vertex disc was not a fine triangulation. It is replaced by the two Gauss points of `|T| ≤ 1` and `|T| ≤ |p|`. The Check states that the single Gauss point is not fine.
3. §0.1: `H¹_c(Γ, L)^*` is now defined as `ker ∂^*` for every abelian group `L`. A new API bullet identifies it with `Hom_L(H¹_c, L)` for a commutative ring `L`. A new Check gives `L = 𝔽₂²`: orders 4 and 16.
4. §5.3 locator: "CDN-STEIN lines 196–199 in the introduction, with §3.3.1, line 1360, for the definition".
5. §6.8 second Check: the target modulo `ξ̃` is `H⁰(𝔛, Ω¹)`, untwisted, in agreement with the route.

Other edits for house style (timeless wording):

- "target scope" → "This roadmap does not contain the following, by owner";
- "proposed" Part II wording removed (Scope, Downstream consumers, References, `sources.toml` `cited_for` of CGN23);
- "should import" → "imports";
- "removed hyperplanes" → "deleted hyperplanes".

Also added to §0.3: the parabolic subgroups as flag stabilizers, the translation representation, and the commutative-ring form of the definition used in Lean, with the Lean names.

## Adversarial pass (statements written or changed)

| Statement | Instances tried | Values computed | Result | Change |
| --- | --- | --- | --- | --- |
| `parabolic K d J` = `P_J = B W_J B` | `J = ∅`; `J` everything; `d = 1` | `J = ∅`: stabilizer of `⟨e₀⟩ ⊂ ⟨e₀, e₁⟩ ⊂ …`; `g v` for `v` supported on `j < m` has `(g v)_i = Σ_{j<m} g_ij v_j = 0` for `i ≥ m` iff `g_ij = 0` for `i > j`: upper triangular Borel ✓. `J` everything: empty infimum = `⊤ = G` ✓. `d = 1`, `J = ∅`: `G/B = ℙ¹(K)` | matches CDN-STEIN §5.2.1 (upper triangular `B`) | none |
| Direction of the action (`toLin g = mulVec g`, `g • W = W.map (toLin g)`) | lower triangular `g = [[1,0],[1,1]]`, `W = ⟨e₀⟩` | `g e₀ = e₀ + e₁ ∉ W`, so `g ∉ P_∅` | the inverse-transpose convention would give the lower Borel; it is excluded | none |
| `steinbergRelations`, `d = 1` | `J = ∅`; `J = {0}` | `J = ∅`: pullbacks from `G/P_{{0}} = G/G = pt` are the constants, so `Sp_∅ = LC(ℙ¹(K), A)/A` ✓. `J = {0}`: empty sum `⊥`, `Sp = LC(pt, A) = A` ✓ | agrees with the README §0.3 Checks | none |
| `steinbergRelations_le_comap` (equivariance) | `x = mk h`, `π: G/P_J → G/P_{J∪{i}}` | `π(g⁻¹ • mk h) = mk(g⁻¹h) = g⁻¹ • π(mk h)`, proved by `simp` | proved, not assumed | none |
| `translation` is a representation | `g = 1`; `g g′` | `f((gg′)⁻¹x) = f(g′⁻¹(g⁻¹x))`, with `mul_smul` | proved | none |
| `generalizedSteinberg_isIrreducible`, degenerate `d = 0` | `GL₁(K)`, `Fin 0` | `P_∅ = G`, `X = pt`, relations `⊥`, `Sp = A`, one-dimensional over the field `A`: irreducible ✓ | holds | none |
| same, coefficient characteristic | `A = 𝔽_ℓ`, `ℓ ≠ p`, `d = 1`, `ℓ ∣ q + 1` | multiplicity one and irreducibility fail (CDN-STEIN Remark 5.2) | hypothesis `CharZero A ∨ CharP A p` needed and present | none (README §0.4 Check already) |
| same, `K` hypotheses | `NormedAlgebra ℚ_[p] K`, `FiniteDimensional` | `‖c·1‖_K ≤ |c|_p`, and applied to `c⁻¹` this gives equality, so the norm of `K` extends `|·|_p` and the topology on `GL_{d+1}(K)` is the `p`-adic one | right group topology; char-`p` local fields excluded, as in the source | none |
| same, context | `#check @generalizedSteinberg_isIrreducible` | the binders `p`, `Fact p.Prime`, `K` with three instances, `A`, `Field A`, `hA`, `d`, `J` are all explicit; there are no section variables | nothing silently dropped | none |
| same, `IsIrreducible` meaning | `Representation.IsIrreducible` at the pin | `IsSimpleModule k[G] ρ.asModule`, so nonzero is required: `Sp_J(A) ≠ 0` since it is free of positive rank | statement is the source's "irreducible", with no admissibility | none |
| §0.1 dual (changed) | one loop, `L = 𝔽₂²` as a group; `L = 𝔽₂` as a ring | `ker ∂^* = L`: order 4. `Hom_ℤ(L, L) = M₂(𝔽₂)`: order 16. Ring `𝔽₂`: both have order 2 | the old identity is false for groups; it is now the definition plus a ring-coefficient fact | definition + Check |
| §2.2 disc Check (changed) | `S = {ζ_{0,1}, ζ_{0,|p|}}` | one compact edge `a₁ = (s₁ → s₂)` of length `v_p(p) = 1`, one leg `a₀` at `s₁`. `∂^*(s₂) = −φ(a₁) = 0`, `∂^*(s₁) = φ(a₁) + φ(a₀) = 0`, so `H¹_c^* = 0`. `L^S → L^{A_c}` is onto, so `H¹ = 0` | consistent with §3.1 (`H¹_dR^sep = 0`) and §3.2 (`H¹_HK^sep = 0`) | Check replaced |
| §6.8 Check twist (changed) | `i = 1` | `Ω¹{−1} ⊗ A_inf{1}/ξ̃ = Ω¹`; this matches the route's `r_HT` target `H⁰(𝔛, Ω^i)` (CDN-DUKE line 115) | holds | Check corrected |
| §5.3 locator (changed) | CDN-STEIN lines 194–199, line 1360 | introduction text and §3.3.1 give the same mapping-fibre definition | locator now correct | locator |
| Gap consumer (changed) | §4.6 vs §4.7 `*Needs:*` | only §4.6 cites the gap | consistent with `plan.json` `neededBy = ["4.6"]` | wording |

Every other statement is unchanged from the accepted design, whose final review recorded computed rows for all of them.

## Elaboration

`lake env lean packages/ProetaleCohomologyOfPAdicCurvesAndTowers/Suggested.lean`, run from the content checkout at the pins (Mathlib `6b7abb3`, Tau Ceti `a91d3aa`): **1 `sorry` warning** (`generalizedSteinberg_isIrreducible`), no other message. An earlier draft had a kernel deterministic timeout on an `rfl`, which was replaced by `simp`, and an unused-variable linter warning, which was fixed. The file has:

- only `import Mathlib`, with no `TauCeti.*` module needed;
- no `set_option`;
- no `lemma`;
- no sorry'd data.

`#check` comparison: one scratch file containing `#check @name` for all eight declarations, elaborated once. Each elaborated type matches its README statement in §§0.3–0.4: every hypothesis is in the declaration's own signature, there are no section variables, and nothing changed. The README's generality matches the Lean: §0.3 says the Lean definition is for a commutative coefficient ring, and the abelian-group definition is the same quotient of `ℤ`-modules.

## Dependency check

    depcheck: 56 roadmaps, 666 edges, 0 problem(s)

There is no UPWARD, CYCLE or `moved:` line.

## Sources

`sources.toml` changes:

- CDN-STEIN's locator gains Proposition 5.1, Corollaries 5.3–5.4 and Proposition 5.6, and its `cited_for` gains §§0.3–0.5 and the Lean headline;
- CGN23's `cited_for` loses the word "proposed".

No new source was needed and no `needs-references.toml` was written. SS91, IS01, DS01 and NAK84 stay `uncertified`, cited by locator.

Untrusted text: nothing suspicious was found in the review, the design or the fetched texts.
