# PKG-VectorBundlesAndIsocrystalsPartII

Deliverables: `packages/VectorBundlesAndIsocrystalsPartII/README.md`, `Suggested.lean`, `metadata.toml` (`topic = "math.NT"`), `sources.toml` (two entries added), and `design/plan.json`, where only the `gaps` list changed. The accepted design is written out with all 62 targets (§§0.1–6.7, the same numbering as the design), their Checks and their worked examples. Pins: Mathlib `6b7abb3`, Tau Ceti `a91d3aa`.

## Headline theorems

| Headline | Status |
| --- | --- |
| Fontaine full faithfulness, `C`-representations (Fontaine03 Théorème A; README §0.2) | **stated**: `semilinearRep_equivariant_map_smul` |
| Fundamental theorem for an extension of a `C`-line (Fontaine03 Théorème 4.1; README §1.8) | **stated**: `fundamental_extension_surjective` |
| Fontaine full faithfulness, finite-length `B_dR⁺`-representations (Théorème A′; §0.2) | not statable: `BDeRhamPlus` at the pin has no Galois action and no period topology |
| Structure theorem and Euler–Poincaré duality for almost `C`-representations (§§0.5, 1.5) | not statable: no category of Banach Galois representations, no `C(G_K)`, no `Ext` in it |
| `Ext¹_TVS(V₁, V₁) ≅ C` (§3.7) | not statable: no sympathetic algebras, no left heart of locally convex spaces, no TVS |
| Full faithfulness of reasonable qBC (§5.4) | not statable: no Pair or qBC carrier (and no TVS) |
| Height–rank formula (§6.7) | not statable: no sympathetic VS category, no BC spaces, no period functor `B_dR` on sympathetic algebras |

**Correction to the design.** The design's `suggestedFile` said that no headline is statable at the pins. That is wrong for two of them. Mathlib has `PadicAlgCl p`, `ℂ_[p] = UniformSpace.Completion (PadicAlgCl p)`, the Krull topology instance on `L ≃ₐ[K] L` (FieldTheory/KrullTopology.lean:133) and `spectralNorm_eq_of_equiv` (Analysis/Normed/Unbundled/SpectralNorm.lean:451). With these, Gal(ℚ̄_p/K) acts on ℂ_p by continuous extension, which makes Fontaine's Théorème A and Théorème 4.1 statable for finite `K/ℚ_p`. Fontaine's own standing hypothesis is exactly finite `K/ℚ_p` (Fontaine03 line 167). The file adds two definitions with real bodies, and nothing else:

- `galoisAct`, defined as `UniformSpace.Completion.map σ`;
- `SemilinearRep`, a structure bundling a monoid hom to `AddMonoid.End W` with a semilinearity law and joint continuity.

`plan.json` `suggestedFile` still carries the old claim, because the brief lets me change only `gaps`. The README Conventions and Scope describe the two definitions, with API and four Checks.

`AddAut W` was tried first and dropped: `Group (AddAut W)` does not synthesize at the pin. `AddMonoid.End W` is used instead; its image consists of invertible maps because `G_K` is a group.

## Elaboration

`lake env lean packages/VectorBundlesAndIsocrystalsPartII/Suggested.lean`, run from the content checkout. The final output is exactly two warnings and no other message:

    Suggested.lean:65:8: warning: declaration uses `sorry`
    Suggested.lean:88:8: warning: declaration uses `sorry`

**`#check @name` audit.** I put `#check @` for all five declarations (`galoisAct`, `SemilinearRep`, `SemilinearRep.act_smul`, `semilinearRep_equivariant_map_smul`, `fundamental_extension_surjective`) in one scratch file and elaborated it. Every binder is in the declaration's own signature, with no section variables:

- `[FiniteDimensional ℚ_[p] K]`, `[FiniteDimensional ℂ_[p] Wᵢ]` and `[IsModuleTopology ℂ_[p] Wᵢ]`;
- `[CompleteSpace E]` and `[FiniteDimensional ℚ_[p] V]`;
- `hW : finrank = 1`, and continuity, surjectivity, kernel and equivariance of `q`.

The same scratch file proves by `rfl` that the topology on `PadicAlgCl p ≃ₐ[K] PadicAlgCl p` is `krullTopology`. Nothing changed after the audit.

## Applied review notes (round 2, all P3)

- **F01.** §0.7 cites Fontaine04, Proposition 6.2, p. 107 (Fontaine04 line 4274; general `K`, line 72–74). §0.8 cites Colmez12, Théorème 3.1(ii), pp. 116–117 (Colmez12 line 294, OCR text). The CN25 locators are kept. Both works were fetched through the sources service from Numdam and added to `sources.toml` under the existing keys. The reviewer's manifest additions were not in this package's copy.
- **F02.** "Lemma 4.2" is now "Proposition 4.2, p. 333" (Fontaine03 line 1974).
- **F03.** The G-HOM wording is now uniform: the map factors through `t^(−N)B_dR⁺` for one `N` independent of `Λ`. This is applied in the README contract and in `plan.json`. `neededBy` is restricted to the two direct consumers, and `slug` is added next to `id` with the same value.
- **F04.** §4.7 *Needs* now lists LocallyAnalyticDistributions §0.2 (*Continuous functional extension in countable type*).

## Other corrections made while writing out

- **§1.4 Check.** For `W = C` the degree-one term is `0 ⊕ K`, not `K ⊕ K`. Also added the wrong-convention witness: with `χ⁽¹⁾` in place of its inverse, `d₁d₀ = (1 − χ⁽¹⁾(γ)²)t′γ`, which is nonzero on `B₂`.
- **§1.1.** The design's single Check is now three. One is the almost splitting of `B₂` with `Z = ℚ_p t` through `U₁ ↪ B₂`.
- **Sections that had fewer than three Checks now have three.** A Check was added to each of 0.2, 0.9, 1.2, 1.7, 2.4, 3.2, 3.5, 3.8, 4.5, 4.11–4.14, 4.16, 5.2–5.4 and 6.5. Each one is computed.
- **`B_0 = 0`** is now a stated convention (Fontaine03 line 235). §4.10's conditional "if `B_0` is separately defined" is gone.
- **Process vocabulary removed.** The stage/slug identifiers (`AC.0/...`, `TVS.1 normed-disc-descent`, and so on) are replaced by section numbers. "README Check" and "node" language is gone. The parent's API name `SympatheticVS.periodTargets`, which is found in no Lean file, is replaced by prose.
- **Downstream consumers.** CohomologyComparisons does not name this roadmap at its head (`a99732e`). The README now says that it works in the same setting and is the natural consumer, not that it consumes this roadmap.

## Duplication sweep and ownership

Searched with `roadmaps grep` across main and the 354 open heads:

- for almost `C`-representations, "presque", "Théorème A", Fontaine full faithfulness and equivariant-implies-`C`-linear;
- for TVS, period Pairs and qBC, and for the period height functor, repeating the reviewer's search.

No owner was found. The hits are the parent and its consumers, which use BC objects without building these categories, and Fontaine–Laffaille full faithfulness in FiniteFlatGroupsAndIntegralPadicHodgeTheory, which is a different statement. The board package CstConjectureForDaggerVarieties asks for qBC theory and owns none of it. So this roadmap is the owner.

No target was deleted. Everything that exists elsewhere was already an import in the design: the parent VB3, LocallyAnalyticDistributions §§0.0–0.3 and Layer 1, PadicPeriodRings, PadicHodgeTheory §4.4, ArithmeticGaloisDuality and the Perfectoid roadmaps. At the pins there is no Galois action on `ℂ_[p]` and no semilinear-representation carrier, so the two new definitions duplicate nothing. No notion moved down from a later roadmap. No declaration reuses a fully qualified name from another roadmap. Ownership against open pull requests was checked through the sibling heads the tool indexes.

## Citations resolved

These were checked at the current heads, several of which have moved since the review:

- VectorBundlesAndIsocrystals at #1205 `c380d7d`: all 18 VB3 headings named are present.
- LocallyAnalyticDistributions at `8d9cae6`: §§0.0–0.3, `naLeftHeart` (line 287), `naFunctionalExtension_countableType` (line 428) and `naProjectiveLimit_cohomology_finiteDimensionalML` (line 456).
- PadicPeriodRings at `8839b29`: §§1.5, 2 and 4.1–4.3; §2 states `H⁰(G_K, C(i)) = 0` for `i ≠ 0` over a general base.
- PadicHodgeTheory at `dfb3426`: §4.4, with `senModule` and `senOperator`.
- FiniteFlatGroupsAndIntegralPadicHodgeTheory at `1a17d7d`: §R07.P7.2.
- ArithmeticGaloisRepresentations at `3e99d0d`: §1.1.
- ArithmeticGaloisDuality at `1510b10`: §§R02.1.3, R02.2.1 and D7.4.
- PerfectoidTowers at `537fec2`: §P9.6, with both named targets.
- On main: PerfectoidSpaces P1/P3/P6 and AlgebraicVectorBundles L0–L2.

Every Mathlib row was opened at the pin, including the new rows for `PadicAlgCl`/`PadicComplex` (lines 54 and 137), `krullTopology`, `spectralNorm_eq_of_equiv`, `UniformSpace.Completion.map` (line 477) with `map_coe` (line 488), `IsModuleTopology` (line 133) and `AddMonoid.End` (Hom/Defs.lean:967).

`roadmaps resolve` on the final README:

    ## Cross-roadmap citations found nowhere
    None.
    ## Lean names found nowhere
    None.

Its earlier lead, "AnschutzLeBras25 §3.1", was a source citation that the tool read as a roadmap name. It was rephrased by theorem number.

## Supplier gap

The only gap is `G-HOM`. Its supplier is VectorBundlesAndIsocrystals, in the section *Layer VB3, VS Hom vanishing from torsion period modules*. It is stated in the README under that supplier as `What VectorBundlesAndIsocrystals must provide (gap:G-HOM): …`.

## Dependency check

    tauceti-roadmap … gate --depcheck packages/VectorBundlesAndIsocrystalsPartII/README.md --name VectorBundlesAndIsocrystalsPartII --order …/merge-order/ORDER.txt --movable
    depcheck: 56 roadmaps, 650 edges, 0 problem(s)

There is no UPWARD, CYCLE or `moved:` line. The roadmap sits at line 138 of the order, right after VectorBundlesAndIsocrystals.

I also ran the full gate on a scratch copy of the three folder files. Every counter is 0, including `readme-ids-missing`, `sorry-data`, `imports`, `layer-ids`, `target-ids` and `metadata`. The one exception is `git=1`, which fails only because the scratch copy is not a git repository.

## Sources

`sources check sources.toml` reports 0 problems. Colmez12 and Fontaine04 were added through `sources fetch` (both Numdam, certified), with authors, title, year, locator, version note and `cited_for`. No `needs-references.toml` remains: a first attempt by bibliographic citation failed with an arXiv rate limit, and the retry by Numdam URL succeeded. No text is missing.

## Adversarial pass

Values were computed by hand. Each row is a statement written or changed in this round.

| Statement | Instances | Values computed | Result | Change |
| --- | --- | --- | --- | --- |
| `galoisAct` (definition) | `σ = id`; `σ` with `χ(σ) = a`, `K = ℚ_p`; `K = ℚ_p(ζ_p)` | `Completion.map id = id` (id is uniformly continuous); `ζ_p ↦ ζ_p^a`, which is ≠ `ζ_p` for `a ≢ 1`; `ζ_p` fixed | determined: `σ` is isometric for the spectral norm (`spectralNorm_eq_of_equiv`), so `map_coe` applies and the junk branch of `Completion.map` is never used | none |
| `SemilinearRep` (definition) | `ℂ_p` with `galoisAct`; `ℂ_p` with trivial action; `W = 0` | law holds since `galoisAct` is multiplicative; trivial action fails at `c = ζ_p`, `w = 1`: `ζ_p ≠ σ(ζ_p)`; `W = 0` trivially | excludes the trivial structure on `ℂ_p` | Check added |
| Krull topology in scope | `rfl` test | instance = `krullTopology K (PadicAlgCl p)` | in scope | none |
| `semilinearRep_equivariant_map_smul` | `W₁ = 0`; `W₁ = W₂ = ℂ_p`, `f = a·` (`a ∈ K`); `W₂ = ℂ_p(1)`; `f` additive, not ℚ_p-linear | `0 = 0`; `f(cw) = acw = c f(w)`; equivariant `f` is 0 because `H⁰(ℂ_p(−1)) = 0`; continuity plus additivity give ℚ-linearity and then ℚ_p-linearity, so nothing is lost by using `→+` | holds (Fontaine03 Th. A, finite `K`, line 167, 213–217) | new statement |
| same, context | finite `K` | `[FiniteDimensional ℚ_[p] K]` is present; module topologies are present; continuity of `f` is present | complete | none |
| `fundamental_extension_surjective` | `E = V ⊕ ℂ_p`, `η = (a·, 1)`; `η = (g, 0)`; `V = 0`, `W = ℂ_p(1)`; `E = U₁`, `V = ℚ_p t`, `η = θ`; `V = 0`, `W = ℂ_p`, `η = id` | kernel `{(v, −av)}`, dim = dim V; `η(E) = η(V)` is excluded, and its kernel `ker g ⊕ ℂ_p` is infinite-dimensional, so the hypothesis is needed; `η = 0` fails the hypothesis; `θ` onto with kernel `ℚ_p t`, dim 1; surjective with kernel 0 = dim V | holds (Fontaine03 Th. 4.1, line 1816–1820) | new statement; U₁ Check added |
| same, strictness | `q` continuous onto finite-dim `W` | `W` is complete (≅ `ℂ_p`), `E` Banach, `V` closed, so open mapping gives `E/V ≅ W` topologically | no strictness hypothesis needed | none |
| §1.4 Check, `W = C` | complex | `W_(0) = K`, `W_(1) = 0`: `K → 0 ⊕ K → 0`, `d₀ = (t′z, (γ−1)z) = (0, 0)`, cohomology `(K, K, 0)` | design text "K→K" was ambiguous; fixed | Check corrected |
| §1.4 convention witness | `z = 1 ∈ B₂` | right convention: `t′γ − t′ − (t′γ − t′) = 0`; wrong convention: `(1 − χ⁽¹⁾(γ)²)t′ ≠ 0`, since `χ⁽¹⁾(γ) ∈ 1 + pℤ_p` is a topological generator, ≠ ±1 | pins the inverse | Check added |
| §1.1 almost split, `B₂` | `Z = ℚ_p t` | `U₁ ∩ t²B_dR⁺ = 0` (`Fil²` has no `φ = p` vectors), so `U₁ ↪ B₂`; `U₁ ∩ tB₂ = ℚ_p t`; `U₁ → C` onto | almost split although nonsplit | Check added |
| §1.2 Ext² Check | `(ℚ_p, ℚ_p(1))` | `H²(G_K, ℚ_p(1)) = ℚ_p` on both sides | degree 2 is needed | Check added |
| §0.9 Check `(N, k) = (1, 1)` | target `t⁻¹B⁺/tB⁺` | extension of `C(−1)` by `C`; Hom = `K` (item 2), not `K²` | consistent with item 2 | Check added |
| §1.7 Check `i = j = 1`, `N = 1` | inclusion `C = B⁺/tB⁺ ⊂ t⁻¹B⁺/tB⁺` | nonzero equivariant map | `i < j` is needed | Check added |
| §4.10 `d = 0` | `B_0 = 0` | `Hom(0, W) = 0 = W[t⁰]`; `W/t⁰W = 0` | consistent | convention stated |
| §4.12 Check | `[tB₂ → B₂]`, `d = 1` | `(B₂/tB₂)[t] = C` | holds | Check added |
| §4.13 Check | `d = 1`, `W = C` | `Hom(ℚ_p t, C) = C → Ext¹(B₁, C) = C` is the identity, so `Ext¹(U₁, C) = 0` | refutes the source's display `W` | Check added |
| §4.14 Check | `c = −1` | `ℓ_v(−x) = ℓ_(−v)(x) = −ℓ_v(x)` | consistent with additivity | Check added |
| §4.16 Check | `[0 → B₁]`, `[0 → B₂]` | `B₂[t] = tB₂ ≅ C` in all three | holds | Check added |
| §5.2 Checks | `Y = U₁/ℚ_p t_x`, `P = [0 → B_m]`; `C/ℚ_p` | `t_x` is a unit on `B_m` since `θ(t_x) ≠ 0`, so Hom = 0; `C/ℚ_p` has curvature < 0 and is outside the hypothesis | holds | Checks rewritten |
| §5.3 Check | `ℚ_p ⊕ B₁ ⊕ U₁/ℚ_p t_x` | pieces: positive `U₁/ℚ_p t_x`, zero `B₁`, negative `ℚ_p` | matches the canonical filtration | Check added |
| §5.4 Check | `p·` on `C/ℚ_p` | `p` maps `ℚ_p` onto `ℚ_p`, so it is an isomorphism; height −1 is preserved | holds | Check added |
| §6.5 Check | `k = 0` | `Hom(V₁, B⁺) = 0`, `Hom(V₁, t⁻¹V₁) = C` → `Ext¹(V₁, B⁺) ≅ C` | consistent with the review's row 6.5 | Check added |
| §6.6 Check | `0 → ℚ_p → ℚ_p ⊕ C → C → 0` | `0 → 0 → B_dR → B_dR → 0` | exact | Check added |
| §3.2 Checks | `p = 3`, `n = 0`; `p = 2` | `v₃(3^(k−1)/k!) > 0` for `k ≥ 2`; `v₂(4^(k−1)/k!) ≥ k − 1`; `v₂(2^(2^r − 1)/(2^r)!) = 0` | odd-`p` formula fails at 2, normalized one holds | Checks added |
| G-HOM wording | pointwise vs uniform | `B_dR(Λ) = ⋃_N t^(−N)B⁺(Λ)` makes the pointwise reading empty; CN25 line 837–841 gives one `N` from finitely many generators | uniform reading | rewritten |

Pass 2 (context) found no missing binders, as the `#check` audit shows.

Pass 3 (generality): the README's finite `K/ℚ_p` equals the Lean statements' finite intermediate field of `ℚ̄_p`, up to the embedding, which the README Conventions state. The general-base §0.7 is not stated in Lean and is not a headline.

Pass 6 (vacuity): both Lean statements have satisfiable hypotheses. The worked instances above show this.

## Not supported, and not checked

- Truth of §§4.8–4.9 beyond what CN25 claims (Propositions 4.18 and 4.22 are proved there only in the separable/nuclear cases). The design owns them as targets, as the review noted.
- TVS25 proofs and Colmez02 §10.5 were not re-read this round; their locators are as reviewed.
- Nothing in the inputs read as an instruction. No suspicious passages.
