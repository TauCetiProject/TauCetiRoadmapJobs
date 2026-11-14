# Design report: DESIGN-VirtualFundamentalClassPartII

Deliverables: `packages/VirtualFundamentalClassPartII/design/README.md` (nine layers, 33 targets),
`packages/VirtualFundamentalClassPartII/design/plan.json` (the same 33 targets, with parent
`VirtualFundamentalClass`, pinned Mathlib `1b1ccf4b088b32fa3f23f2de1127433254a81e1e` and Tau Ceti
`2fd255d997f47c0b5d834ee416c7015d55444ce5`), and `packages/VirtualFundamentalClassPartII/sources.toml`
(13 entries, locators and `cited_for` rewritten to what the design cites; `sources check`: 0 problems).
No `needs-references.toml` is written: every text the design relies on is in the cache, and the two
paywalled texts are settled as `uncertified`.

A mechanical comparison of README and plan (per target: one README subsection, a `*Needs:*` line,
the same number of Checks as plan tests, an **API.** list for every `definition`, at least three tests
for every definition; every layer has Examples and Dependencies) reports no mismatch.

## What the design covers

The target's sixteen items map to the layers as follows.

| Target item | Design |
| --- | --- |
| T1 proper covers, integral cycles and Chow groups | 1.1, 2.1, 2.2 |
| T2 comparisons (separated rational groups, algebraic spaces, schemes) | 2.3 (groups), 4.4 (operations) |
| T3 generic stabiliser and degrees | 1.2, 1.3 |
| T4 integral operations | 3.1–3.5 |
| T5 stacks with a proper cover | 4.1–4.3 |
| T6 intersection ring, Poincaré duality | 5.1 |
| T7 moduli spaces | 5.2 |
| T8 Deligne–Mumford quotient stacks | 5.3 (ring statement only; see below) |
| T9 degree of a closed point | 5.4 |
| T10 no resolution property | 6.1, 6.2 |
| T11 relative lifting | 7.1, 7.2 |
| T12 relative formulas | 6.3 |
| T13 relative invariance of the rational equivalence | 8.1 |
| T14 reduced bases | 8.2 (regular pullback), 8.3 (functoriality) |
| T15 deformation invariance | 8.4 |
| T16 spaces of maps from curves | 9.1–9.5 |

The layers come from the dependency chains: Layer 1 (substack-level invariants) feeds the cycle
groups (Layer 2), the integral operations (Layer 3) and, with proper covers, the rational operations
(Layer 4); the comparisons (Layer 5) need Layers 2–4; the virtual class (Layer 6) needs Layer 4's
zero-section Gysin map on stacks with a proper cover; the relative deformation theory (Layer 7) needs
only the base's cotangent complex; base change (Layer 8) needs Layers 4 and 6 and the base's canonical
rational equivalence; spaces of maps (Layer 9) need Layer 7 for the obstruction-theory criterion and
Layer 6 for the class.

## Changes against the triaged target, with reasons

1. **T8 is narrowed to the ring statement.** StableReductionPartII (open pull request, a new folder,
   line 320 of the merge order and so an allowed supplier) states in its §5.15 the Edidin–Graham
   comparison of groups `A_{i−g}([X/G])_ℚ ≅ A^G_i(X) ⊗ ℚ` for a smooth affine `G` acting properly on a
   quasi-projective `X` with a linearised ample sheaf, `[X/G]` Deligne–Mumford, compatible with Chern
   classes and proper pushforward, from VirtualFundamentalClass §2.1's groups. That is the group part
   of T8, earlier in the merge order. 5.3 cites it and proves only the ring compatibility, which needs
   this roadmap's product (5.1). The triage listed StableReductionPartII as a consumer of T8; it is a
   supplier, and the consumer list no longer names it (it is earlier in the order).
2. **Closed substacks and residual gerbes.** The triage named StackPointsAndResidualGerbes (a board
   design, not in the merge order and not an open pull request) as a supplier for closed substacks
   and residual gerbes. The brief allows only main, earlier roadmaps in the order and other authors'
   new-folder pull requests, so it is not cited. The target's fallback is used: integral closed
   substacks are those on which VirtualFundamentalClass §2.1 builds its cycles, and the theory this
   roadmap needs of them (presentation correspondence, reduced induced structure, support bijection,
   base change, images) is the gap `closed-substacks-of-stacks` addressed to VirtualFundamentalClass
   §2.1. That board design states the same material at algebraic-stack generality (its §§0.3–0.5); once
   it is in the merge order before VirtualFundamentalClass, the base's §2.1 can discharge the gap by
   citing it. No residual gerbe is used: 5.4 indexes zero-cycles by the integral closed substack
   `𝒢_x` supported at a closed point and defines `κ(x) := k(𝒢_x)`, so `∫[𝒢_x] = [κ(x) : k]/|Aut(x̄)|`
   follows from Vistoli's Proposition 1.17 with `e(𝒢_x) = |Aut(x̄)|`.
3. **The truncation convention of the target is false and is not used.** The target asserted that
   for `E` perfect of amplitude `[−1, 0]`, morphisms `E → L` and `E → τ^{≥−1}L` correspond bijectively
   "because Hom and Ext¹ from E into a complex concentrated in degrees ≤ −2 vanish". Globally they
   need not vanish: on an elliptic curve `C`, `Hom(O_C[1], O_C[2]) = H¹(C, O_C) ≅ k`. The design defines
   no truncation and builds every morphism into the full cotangent complex (Convention 6, 7.1, 9.3);
   the witness is recorded in Convention 6.
4. **T16's duality step.** The source (behrend-fantechi1997 lines 1592–1599) obtains
   `φ : (Rπ_*F^*T_X)^∨ → L_X` by the adjunction `Rπ_* ⊣ π^!` applied to `L_X`, which is bounded above and
   not below, while SchemeAndStackFoundations §2.19 states the upper shriek functor on bounded-below
   complexes. 9.3 builds `φ` from the projection formula and the trace `Rπ_*(ω_π[1]) → O_M` (which is
   the counit formula of that adjunction and needs no boundedness), and 9.2 uses the adjunction only
   against bounded complexes `J[1]`. Quasi-coherent cohomology on Deligne–Mumford stacks with wild
   stabilisers is unbounded (`H^i(B(ℤ/p), k) ≠ 0` for all `i` in characteristic `p`), so a reduction to
   bounded truncations of `L_{M/𝔅}` is not available in general.
5. **T7 needs a proper cover when the moduli space is an algebraic space.** Vistoli's (6.1) has `M` a
   scheme, where a proper cover of `ℳ` exists by deligne-mumford1969 Theorem 4.12 applied over `M`. For
   `M` an algebraic space that argument is not available, and the proof of (6.1) uses Lemma 3.8, which
   needs a proper cover; 5.2 assumes it. Keel–Mori coarse spaces of separated stacks satisfy it.
6. **T6's Poincaré duality is stated for separated stacks.** The bivariant groups are
   VirtualFundamentalClass §2.5's, whose test objects are separated. Vistoli's Proposition 5.6 uses
   bivariant groups with arbitrary scheme tests; introducing a second bivariant theory would duplicate
   §2.5. On non-separated stacks with a proper cover, Layer 4 provides the operations the roadmap uses
   (Gysin maps of regular local immersions, flat pullback, Chern classes) through proper coverings.
   This is stated in Scope.
7. **T14 separated into its new content.** Base §9.5 owns functoriality "under the smoothness
   hypotheses of Proposition 7.5" for separated stacks with the resolution property, and §9.3 the flat
   base change. 8.2 is new (regular pullback over a reduced, non-smooth base). 8.3 widens §9.5's stack
   hypotheses (proper cover, no resolution property) and states the case "`Z`, `Z′` smooth over `𝔜`"
   over a reduced base, the generality its route supports (see Source issues).
8. **T4's Gysin maps** are stated with algebraic-space sources and regular local immersions of
   algebraic stacks, as Kresch and Behrend–Fantechi use them; the base's "local immersion" is
   representable by algebraic spaces, so `ℱ ×_𝒢 Y` is an algebraic space in general.
9. **T13**: the hypothesis "`X → Y ×_𝔅 Y` is a local immersion" is automatic (the relative diagonal of
   `p` is unramified), and is stated as a consequence; the first bullet of 8.1 records that the base's
   canonical rational equivalence is used on a reduced pure-dimensional, not necessarily smooth,
   ambient, the generality of Vistoli's Lemma 3.16, while behrend-fantechi1997's diagram (7) assumes `Y`
   smooth (line 812).
10. **T4's check on `Bμ₂ → Spec k`** is restated as the functoriality obstruction `|G| · c = 1` for a
    nontrivial `G`, with `G = 1` as positive control.

## Ownership and duplication

- **The base**, VirtualFundamentalClass, was read at the head of its open pull request (`cd5dcf5`, read
  with the roadmap tool); the triage read `676f128`. Every section
  cited (§§0.2–0.3, 1.4–1.6, 2.1–2.5, 3.1–3.5, 4.1–4.5, 5.1–5.5, 6.1–6.6, 7.1–7.7, 8.1–8.5, 9.1–9.6)
  exists there with the meaning used. Each item of this roadmap that touches a base section names
  the hypothesis it removes. Nothing is restated at the base's generality: Kresch's absolute
  invariance and the plane example are imported (8.1's Checks use the plane example as an imported
  negative control), flat base change is §9.3, and functoriality at the base's hypotheses is §9.5.
- **AlgebraicGromovWittenTheory** (head `9b70e32`): its §§4.1–4.3 are a special case of 9.3–9.5. The
  maintainer's decision accepts the overlap; this roadmap does not import that roadmap, which is a
  consumer.
- **StableReductionPartII** §5.15 owns the Edidin–Graham group comparison (above).
- **SchemeAndStackFoundations** is cited as on main; its two open revisions keep every section number cited here (§§1.3, 1.9–1.10, 1.18–1.23, 2.6, 2.10, 2.18–2.20, 3.3, 4.1,
  4.15, 5.1–5.6 were checked at both heads). `roadmaps overlaps SchemeAndStackFoundations` and
  `roadmaps overlaps VirtualFundamentalClass` list no dropped id.
- **Searches by object** (`roadmaps grep` over main and all open heads): integral Chow groups of stacks,
  proper covers, Vistoli, generic stabilisers, deformation invariance of virtual classes, relative
  obstruction classes, coarse-space Chow comparisons, `Rπ_* f^*T_X`, Chow rings of moduli stacks,
  virtual classes. Only the items above were found. MotivesAndAlgebraicCycles uses integral Chow groups
  of schemes; ImplicitAtlases, GromovWittenTheory, AnalyticStableMaps and FukayaTheory treat
  symplectic or topological virtual classes. EquivariantIntersectionTheory places Chow groups of
  algebraic spaces outside its scope; no roadmap owns them, and this roadmap's groups include them
  (2.3), compared with the Stacks Project. Duality along prestable families over Deligne–Mumford
  stacks is owned here (9.2), as the target required.
- The board packages index lists three unrelated imported packages; the board's other packages were
  searched by name (StackPointsAndResidualGerbes, the stopped VirtualFundamentalClasses, whose text was
  reused for this roadmap's items only, as the maintainer allows).
- The list of 210 open pull requests given to this job does not include VirtualFundamentalClass or
  AlgebraicGromovWittenTheory; both were read through the roadmap tool at their heads.

## The adversarial mathematics pass

| Statement | Instances tried | Values computed | Result | Change |
| --- | --- | --- | --- | --- |
| C1 stacks | `B(S₃)`; `Bℤ`; `𝔸¹/ℤ` (char 0); line `L` with doubled origin; `B_{𝔸¹}G` (1.1) | `e(B S₃) = 6`; `Bℤ`: diagonal fibre `ℤ`, not quasi-compact; `𝔸¹/ℤ` not quasi-separated; `L` in scope, not separated; `B_{𝔸¹}G` diagonal fibres twisted forms of `G`, separated, quasi-compact | first, fourth, fifth in scope; second, third out | diagonal required representable by schemes (Vistoli (7.11), (7.14)) so Vistoli's proofs apply verbatim |
| C1 char 2 | `μ₂` in characteristic 2 | stabiliser `Spec k[u]/(u−1)²` not reduced; `[𝔸¹/μ₂]`, `Bμ₂` not DM | sign examples false in char 2 | every `μ₂` example carries `char k ≠ 2` |
| C2 words | base §§2.4, 5.1, 9.6; kresch1999b lines 232–234; vistoli1989 (1.19) | base "local immersion" = Kresch's = Vistoli's "local embedding"; base "local embedding" = chart pair (BF Def. 3.7) | consistent | stated once |
| C3 proper covers | `Spec k → BG`; `id_L`; `B_{𝔸¹}G` | degree `|G|` finite étale; `L` covers itself, no separated scheme covers `L`; `B_{𝔸¹}G`: torsor degree 2 vs 1 on a component meeting both fibres | hypothesis not automatic | non-example added (by separated schemes) |
| C4 integral vs rational | `[𝔸¹/μ₂] → 𝔸¹` | `A_0 = ℤ/2` vs `A_0(𝔸¹) = 0`; `p_*[Bμ₂] = ½[0]` | comparison false integrally | witness in Convention 4 |
| C5 degree convention | `Spec k → BG → Spec k` | `|G| · 1/|G| = 1`; wrong model `[k(ℱ):k(𝒢)]` gives `1` for `Spec k → BG` against representable `|G|` | stabiliser ratio needed | witness kept |
| C6 truncation claim (target) | `E = O_C[1]`, `K = O_C[2]` on an elliptic curve | `Hom(E, K) = H¹(C, O) = k ≠ 0` | claim false globally | no truncation; full complex; witness in Convention 6 |
| C6 dualisation | `ℙ¹`, `E = [O(1) →0 Ω]` | `Ob = O(−1)`, `deg = −1`; dual convention `+1` | sign pinned | witness |
| C7 negative dimension | `Spec k → B𝔾_m`, `E = Ω_{pt/B𝔾_m}` | `d = −1`, `r = 1`, class in `A_0` | consistent with base §9.2 Check | — |
| 1.1 proper covers | `BG`; `L`; base change along `BG → Spec k`; `B_{𝔸¹}G` | as C3; base change of `id_{Spec k}` is `id_{BG}`, source not a scheme for `|G| > 1` | stability only along morphisms representable by schemes | stated so |
| 1.2 function field, `e` | `BG`; `[𝔸¹/μ₂]`; `Bμ₂ ⊂ [𝔸¹/μ₂]`; `B_{𝔸¹}G`; `[Spec ℂ/(ℤ/4)]` over `ℝ` | `k(BG) = k`, `e = |G|`; `e = 1`, `k = k(x²)`; `e = 2`; generic `e = 2`, special stabiliser trivial; `k = ℂ^{ℤ/4} = ℝ`, `e = 2` (not 4) | generic, not maximal, stabiliser; kernel order for gerbes | `e = 1` iff dense open algebraic space (not "scheme", which needs a further theorem) |
| 1.3 degree | `BG ⇄ Spec k`; `𝔸¹ → Spec k`; coarse map of `[𝔸¹/μ₂]`; `ℤ/p` on `𝔸²` char `p`; Frobenius | `1/|G|`, `|G|`; `0`; `1`, `½`; `(1/p)·p = 1 = p/p`; `p` | formula (1.17) agrees with the definition in each | — |
| 2.1 cycles | `BG`; `∅`; `[V(x²)/μ₂]`; schemes | `ℤ[BG]`; `0`; `2[Bμ₂]` (reduced support would give 1); finite sums = Tau Ceti's | — | — |
| 2.2 Chow groups | `BG`; `[𝔸¹/μ₂]` over arbitrary `k`; over `ℚ`, `W = [V(x⁴+1)/μ₂]` | `A_0(BG) = ℤ`, `W_{−1} = k^×` with zero boundary; `div(y) = 2[Bμ₂]`, `div(P(y)) = [W]` for monic irreducible `P ≠ y` since `k[x]/P(x²)` is reduced (`x² − ȳ` separable, `ȳ ≠ 0`, char ≠ 2); `div(y²+1) = [W]` | `A_0 = ℤ/2`; linear polynomials alone insufficient | argument over all `P` |
| 2.3 comparisons | `Spec k`; `L`; `[𝔸¹/μ₂]` | `ℤ`; `A_0(L) = ℤ²/ℤ(1,1) ≅ ℤ` (div `t` = `[0₁]+[0₂]`), `A_0(𝔸¹) = 0`; `A_0 ⊗ ℚ = 0` = base group | — | — |
| 3.1 flat pullback | `Spec k → BG`; `𝔸¹ × ℳ → ℳ`; coarse map `[𝔸¹/μ₂] → 𝔸¹` | `π^*[BG] = [Spec k]`; dimension `+1`; pullback of `[0]` is `2[Bμ₂]` | multiplicity from nonreduced fibre | — |
| 3.2 representable pushforward | `π_*[Spec k]`; `BG → Spec k` with `G = 1` and `G ≠ 1`; `ℙ¹ → Spec k` | `|G|[BG]`; `|G|·c = 1` impossible for `|G| > 1`, identity for `G = 1`; `[κ(P):k]` | integral only for representable | positive control `G = 1` |
| 3.3 push–pull, localisation | `π` against itself; `Bμ₂ ⊂ [𝔸¹/μ₂]`; two points of `ℙ¹` | both sides `|G|[Spec k]` (via `|G|[BG]` and `Σ_z[κ(z):k] = |G|`); `ℤ → ℤ/2 → 0`; kernel `ℤ(1,−1)` | — | wording of the push–pull Check corrected to the two routes |
| 3.4 exterior product | `K = k(a^{1/p})`; separable quadratic `K`; `BG × BH`; `∅` | `p[Spec K]`, degree `p² = p·p`; two points, `4 = 2 + 2`; `[B(G×H)]`; `0` | — | — |
| 3.5 Gysin with algebraic-space sources | zero section on `ℙ¹` with `O(−1)`; `{0} → 𝔸¹` along `z ↦ z²`; `Spec k → BG` | `−[pt]`; `2[pt]`; `[G]`, pushforward `|G|` | — | sources widened to algebraic spaces (local immersions are representable by algebraic spaces) |
| 4.1 rational pushforward | `BG → Spec k`; coarse map; `L × B(ℤ/2) → L` | `1/|G|`; `p_*(2[Bμ₂]) = [0] = div(y)`; `[0₁ × B] ↦ ½[0₁]` | needs proper cover of source (Lemma 3.8) | non-separated Check added |
| 4.2 Gysin on stacks | `id`; `π : Spec k → BG` on `BG`; zero section | `id`; `|G|^{−1}·|G|·[Spec k] = [Spec k]`; `s^![E] = [ℳ]` | — | — |
| 4.3 homotopy, Chern | trivial line on `BG`; `O(−1)` on `ℙ¹`; `BG` Chern classes; `L ⊕ L^∨` | `s^![𝔸¹ × BG] = [BG]`; `s^!s_*[ℙ¹] = −[pt]` vs restriction `[ℙ¹]`; `c_i ∩ [BG] ∈ A_{−i} = 0`; `c_1 = 0`, `c_2 = −c_1(L)²` | — | — |
| 4.4 agreement | `B(ℤ/2)`; `O(1)` on `ℙ¹`; `Spec k` | `½`; point class; `1` | matches base Checks | — |
| 5.1 products | `BG`; `[ℙ¹/μ₂]`; `L`; `ℙ^n` | `ℚ`; `[𝒫]·[𝒫] = 0`, `[𝒫]·[ℳ] = [𝒫]`; `[0₁]·[L] = [0₁]`; `ℚ[h]/(h^{n+1})` | — | projection formula restated with `g^*x := [ℳ′] ·_g x` (the plain `g^*` is undefined for non-flat `g`) |
| 5.2 moduli spaces | `BG`; `[𝔸¹/μ₂]`; `ℤ/p` on `𝔸²` char `p`; char 0 | `1/|G|`; `½[0]` not integral; `deg = p/p = 1` while `1/e = 1/p`; `1/e` | `1/e` needs perfect `k(p(𝒱))` | proper cover hypothesis for algebraic-space `M` |
| 5.3 quotient rings | `G = 1`; `μ_n` on a point; `𝔾_m` on `𝔸²∖0` weights `(1,2)`; `𝔾_m` on `𝔸¹` | identity; `ℤ[t]/(nt) ⊗ ℚ = ℚ`; `ℤ[t]/(2t²)`, rationally `ℚ[t]/(t²)`, `t ↦ [Bμ₂]`, `∫t = ½`, `∫2t = 1`; stabiliser `𝔾_m`, excluded | codimension grading: `A^c_G = A^G_{n−c} ↔ A_{n−c−g} = A^c([X/G])` | group part cited from StableReductionPartII §5.15 |
| 5.4 point degrees | `BG`; `Spec K`, `K = k(a^{1/p})`; gerbe over `ℝ`; `[ℙ¹/μ₂]` | `1/|G|`; `p`; `[ℝ:ℝ]/2 = ½ = 2/4` (no real point: `ℤ/4 → ℤ/2` has no section), wrong model `¼`; `div(t²/(t²−1)) = 2[𝒫] − [𝒪]`, `2·½ = 1` | — | residual gerbe replaced by the point substack |
| 6.1 comparison bundle | `E = 0` with `[0→0]`, `[O→O]`; `ℙ¹`, `E = [O(−4) →0 Ω]` with `id`, `1 + ξ`; acyclic summand | `P = 𝔸¹_X`, ranks `1 = 0+1 = 1+0`; `Ext¹(Ω, O(−4)) = H¹(O(−2)) = k`, chain maps are pairs of scalars, homotopies in `H⁰(O(−2)) = 0`; `P` = nonsplit extension of `O(4)` by `O(2)` = `O(3)²` (rank 2, degree 6, `Hom(O(2), O(1)) = 0` excludes the other splittings); `P = F_1 ⊕ G_1 ⊕ F_0` | extension not globally split; no chain map needed | route via Picard-stack fibre product |
| 6.2 virtual class | smooth `X/𝔜`; `ℙ¹` with `O(1)`; `ℙ¹` with `O(−4)` two ways; `L` with `𝓛_n`; `d + r < 0` | `[X]`; `−1` (dual `+1`); `c_1(O(4)) = 4` through `F_1` and through `P` (`O(3)²/O(2) = O(4)`); `n[0₂]` (section `1` on chart 1 is `t^n` on chart 2); `0` | — | — |
| 6.3 relative formulas | `𝔜 = Spec k[ε]/(ε²)`, `X = 𝔜`, `E = 0`; node `𝔜`, `X = 𝔜 × ℙ¹`; `Spec k → B𝔾_m`; char `p`, `Spec k[x]/(x^p)` | `[𝔜] = 2[pt]`; `s = 2 − 1 − 0 = 1`, `−[𝔜 × pt] ↦ −([ℓ_a]+[ℓ_b])`; `[pt]`; `H⁰(E) = A dx`, `Ob = A` free, `rk Ob = 1 ≠ 0 = dim X − d − r`, class `[X] = p[pt]` vs `c_1(Ob) ∩ [X] = 0` | base smoothness unnecessary; smoothness of `X → 𝔜` necessary | a first draft's Check violated the standing hypothesis `H⁰(E)` locally free; replaced by the char-`p` example |
| 7.1 relative obstruction class | smooth; étale; `Spec k → B𝔾_m`; `Spec k[x]/(x²)`, `x ↦ ε` into `k[ε]/(ε³)` | `0`; unique lift; torsor `1 + J ≅ J = Hom(O, J)`, with `L_X` instead `0`; `(ε + aε²)² = ε² ≠ 0` | relative cotangent complex needed | — |
| 7.2 characterisations | char 2, `Spec k[x]/(x²)`, `φ = (0, id)`; smooth; `ℙ¹` with `O(1)`; `Spec k → B𝔾_m` | `L_X = [A →0 A dx]` (`d(x²) = 2x dx = 0`), `φ^*ω = 0`, `(x + ax²)² = x²` in `k[x]/(x³)`; `𝔑 = BT`; zero section; torsor | (1) ⇒ (3) uses `Hom(D^{≤−2}, D^{≥−1}) = 0`, valid globally | — |
| 8.1 relative invariance | plane, `p = y` and `p = x`; node base; `𝔸¹ × Spec k[ε]`; `p` étale; `𝔅′ = 𝔅` | `β = cν/η`: fixed by `ξ ↦ ξ + a`, moved by `η ↦ η + b`; `T_{W/𝔐} = O`, both projections give `𝔐′ × 𝔸²`; `[C_{X/Y}] = 2[𝔸¹]` vs normalised blow-up multiplicity `1`; empty; `β = 0` | invariance exactly along directions from which `Y′` is pulled back | redundant local-immersion hypothesis dropped |
| 8.2 regular pullback | open immersion; `{0} → 𝔸¹`, `X = 𝔸¹ × Z`; node `𝔜`, `𝔜′ = V(a+b)`; `Spec k[ε]/(ε²)` | restriction; `[Z]`; `v^!(−[𝔜 × pt]) = −[𝔜′ × pt] = −2[pt × pt]` (`[𝔜′] = 2[pt]`, `a+b` a nonzerodivisor) and `c_1(O(−1)) ∩ 2[ℙ¹] = −2[pt]`; no regular immersion of positive codimension (`ε` zero divisor) | — | `X′` proper cover hypothesis stated (inherited for `v` representable by schemes) |
| 8.3 functoriality | `id`; `𝔸¹ × Z → Z`; composite | equal; `[𝔸¹] × [X]^vir`; composite | — | case (b) over reduced `𝔜` |
| 8.4 deformation invariance | `x² − by²` on `ℙ¹ × 𝔸¹` (char ≠ 2) for `b` square, non-square, `0`; `{xb = 1}`; `ℙ¹ × B` | `2` in all three; `1` then `0` (not proper); `m + r = 1`, `[ℙ¹]` has no degree | properness and `m + r = 0` needed | char ≠ 2 on the example (in char 2 the "two simple zeros" fail) |
| 9.1 relative space of maps | `X = Spec k`; degree-`d` maps `ℙ¹ → ℙ^r`; point with `id_{ℙ¹}` | `M → 𝔅` étale; open in `ℙ^{(r+1)(d+1)−1}`; `H⁰(T_{ℙ¹}) = k³` vs none | hypothesis ties `M` to the moduli problem | — |
| 9.2 duality | smooth curve, `L` of degree `e`; nodal fibre; constant family | `χ = e + 1 − g`, `χ(ω) = g − 1`; `deg ω|_E = 2g(Ẽ) − 2 + #branches`; Serre duality on `C` | — | adjunction used only on bounded-below complexes; trace and projection formula for the construction |
| 9.3 obstruction theory | `X = Spec k`; `ℙ¹ → ℙ^r`; elliptic `C → C` | `E = 0` iff étale; Euler sequence: `H¹ = 0`, `χ = (r+1)(d+1) − 1 = (r+1)d + r`; `Ob = H¹(O) ⊗ O_M` trivial, `vd = 0`, `dim M = 1`, class `0` | — | Ext over `O_T` (source line 1609 writes `O_C`) |
| 9.4 global resolutions | `V = O` on a smooth curve; embedded point on `ℙ¹`; `L = O` on `C × M`, `g ≥ 1` | Euler char `1 − g`; `H⁰(O(−N) ⊕ k_p) = k`; `[0 → R¹π_*O]` misses `H⁰ = O_M` | ampleness and reduced fibres needed | a draft Check on non-quasi-compact `M` was vacuous (stacks are of finite type) and is replaced |
| 9.5 virtual dimension | `ℙ^r`, `g = 0`; `c_1 = 0`, `dim 3`; `X = Spec k` | `(r+1)d + r + n − 3`, `= 2` for lines in `ℙ²`; `n`; `b`; and `3g − 3 + n + c_1·β + dim X(1−g) = (1 − g)(dim X − 3) + n + c_1·β` | — | — |

Vacuity and context: every quantified statement names the objects it constrains (proper covers,
integral substacks, the obstruction theory, the relative space of maps). The relative-space hypothesis
of 9.1 is the one tying `M` to `F`; without it 9.3 fails (9.1, third Check). No statement contains its
conclusion as a hypothesis.

## Notions moved down from later roadmaps

None. No notion is taken from a roadmap later in the merge order.

## Proposed Part IIs

- **VirtualFundamentalClass, Part III (motivation only)**: Kresch's Chow groups of Artin stacks and the
  virtual class without a global resolution (kresch1999 Theorem 6.2.1), with which 6.2's global-resolution
  hypothesis and 5.1's restriction of Poincaré duality to separated stacks would be removed. Not filed.
- When StackPointsAndResidualGerbes enters the merge order, VirtualFundamentalClass §2.1 can discharge
  `gap:closed-substacks-of-stacks` by citing its §§0.3–0.5, and 5.4 can identify `κ(x)` with that
  design's residue field.

## Gaps

- `closed-substacks-of-stacks` (supplier VirtualFundamentalClass, §2.1): closed, reduced and integral
  closed substacks of a Deligne–Mumford stack, the presentation correspondence, the reduced induced
  structure and support bijection, base change and images, without separatedness. Needed by 1.1, 1.2,
  2.1, 3.2, 3.3, 5.2, 5.4. Listed in the README under VirtualFundamentalClass's contract.

## Sources

All texts were read from the cache at the cited lines: vistoli1989 (OCR; paragraph numbers reliable,
the formula of (1.15) and the end of (1.11) lost, line 543 lost from (2.1)), behrend-fantechi1997,
kresch1999b, behrend1997, li-tian1998, keel-mori1997, edidin-graham1998, kresch1999,
deligne-mumford1969, stacks-chow, stacks-chow-spaces. gillet1984 and fulton1998 are settled
`uncertified` and are cited by locator only (fulton1998 Propositions 1.8, 8.1.1, 10.2, §1.10, Chapter 3,
Corollary 6.3; gillet1984 §4). No new source was added and none is missing.

## Source issues

- **Error** in behrend-fantechi1997 at Proposition 3.5 (line 889): invariance under all of `T_Y` is
  false; only the directions of the regularly embedded smooth substack act (kresch1999b lines 41–47,
  340–343); affects 8.1 (recorded already by the base).
- **Gap** in behrend-fantechi1997 at the proof of Proposition 5.3 (lines 1303–1305): it assumes both
  resolutions map to `E` by morphisms of complexes; a derived isomorphism need not be one (6.1's
  `ℙ¹` Check); affects 6.1–6.2, repaired by the Picard-stack fibre product.
- **Misprint** in behrend-fantechi1997 at line 1609: the right-hand Ext is over `O_C` where it should be
  over `O_T`; affects nothing (9.3 states it over `O_T`).
- **Gap** in behrend-fantechi1997 at Proposition 7.5 (lines 1734–1739): stated over a pure-dimensional
  base, with "the proof is the same as Proposition 5.10", whose Lemma 5.9 uses Vistoli's rational
  equivalence on a reduced equidimensional ambient; for `Z`, `Z′` smooth over a non-reduced base the
  route is not available; affects 8.3, stated over a reduced base in that case.
- **Misprint** in kresch1999b at Theorem 3.1 (lines 330–336): the statement writes the acting bundle as
  `T_{Y′}` with `Y′` arbitrary, while the proof (lines 390–405) acts by the tangent bundle of the smooth
  regularly embedded `X`; affects nothing (8.1 states the action through the regularly embedded stack).

## Dependency check

The prescribed command, run on the final README:

```text
candidate: VirtualFundamentalClassPartII is not in the merge order yet; checked as if placed after StableReductionPartII (the intake inserts it when its design is accepted)
depcheck: 207 roadmaps, 1915 edges, 0 problem(s)
```

No UPWARD or CYCLE line. VirtualFundamentalClass, an open pull request of another author adding a new
roadmap folder and not in the merge order, is a supplier; the check does not place it, and the
intake must order this roadmap after it. `roadmaps resolve` on the README reports no cross-roadmap
citation and no backticked Lean name found nowhere; the pinned Mathlib and Tau Ceti names were
checked by hand in the pinned sources (`AlgebraicGeometry.Scheme.ord`,
`AlgebraicGeometry.AlgebraicCycle.map`, `TauCeti.AlgebraicGeometry.Chow.*`,
`TauCeti.AlgebraicGeometry.PrestableFamily`, `TauCeti.AlgebraicGeometry.SchPseudofunctor`,
`TauCeti.AlgebraicGeometry.Spaces.IsAlgebraicSpace`,
`TauCeti.AlgebraicGeometry.FiniteLocallyFreeSheaf.FixedRank.vectorBundleDegree`, and the morphism
classes of `Mathlib/AlgebraicGeometry/Morphisms/`).

## Lean status

`Suggested.lean` is not a deliverable of this stage and none was written; no Lean command was run. At
the pins there is no algebraic-stack carrier (Tau Ceti has `SchPseudofunctor` and `IsAlgebraicSpace`
only), so the headline theorems (2.2's `ℤ/2`, 5.2, 5.4, 6.2, 9.3) need SchemeAndStackFoundations Layer 1
carriers that are not at the pins; the package stage must say so in the module docstring rather than
state stand-ins.

## Suspicious text

None. No fetched source, pull-request text or package file asked for any action outside this job.
The maintainer notes and the triage were treated as claims and checked (Changes above).
