# Design report: DESIGN-VirtualFundamentalClasses

Deliverables: `packages/VirtualFundamentalClasses/design/README.md` (11 layers, 53 subsections),
`packages/VirtualFundamentalClasses/design/plan.json` (61 targets, no gaps),
`packages/VirtualFundamentalClasses/sources.toml` (20 entries; one added:
`deligne-mumford1969`, read from Numdam). No `needs-references.toml` was written: every text the
design relies on was read, except the two entries the manifest already settles as `uncertified`
(`fulton1998`, `gillet1984`), which are cited by locator only.

## What the design covers

The final targets of the triaged brief map to the layers as follows.

| Brief target | Layers | Notes |
|---|---|---|
| T1 Chow groups of DM stacks | 1.2–1.5, 2.1–2.4 | integral substacks, dimension, function field, `e(𝒱)`, degree, cycles, orders, `A_k`, comparison with SchemeAndStackFoundations §5.1 and stacks-chow-spaces |
| T2 operations | 3.1–3.5, 4.1–4.5, 5.1–5.3 | flat pullback, integral and rational pushforward, push–pull, localisation, exterior product, local embeddings, normal cones, Vistoli's Gysin maps and rational equivalence, bivariant classes, homotopy invariance, Chern classes, intersection product |
| T3 coarse moduli comparison | 6.1 | stated for any proper morphism to an algebraic space bijective on geometric points; Keel–Mori coarse spaces as the case of separated DM stacks |
| T4 Edidin–Graham comparison | 6.2 | proved by homotopy invariance and localisation; no quasi-projective coarse space is assumed |
| T5 degree of zero-cycles | 6.3 | indexed by integral zero-dimensional substacks, not residual gerbes |
| T6 `h¹/h⁰` | 7.1–7.5 | |
| T7 intrinsic normal cone | 8.1–8.5 | relative form over an algebraic stack of pure dimension |
| T8 obstruction theories | 9.1–9.4 | all four conditions of behrend-fantechi1997 Theorem 4.5 |
| T9 virtual class | 10.1–10.8 | plus deformation invariance of virtual counts |
| T10 Gromov–Witten obstruction theory | 11.1–11.6 | restated; see Corrections |

## Corrections to the triaged brief (verified)

1. **T10 as filed is false.** It asserted that `E = (Rπ_*f^*T_X)^∨` is a perfect obstruction theory
   for *any* DM stack `M → 𝔐` carrying a family of stable maps. With no hypothesis tying `M` to the
   moduli problem this fails. Example: `𝔐 = Spec k`, `C = ℙ¹`, `X = ℙ¹`, and `M = Spec k`
   carrying `id`. Then `h^0(E) = H⁰(ℙ¹, T_{ℙ¹})^∨ ≅ k³` while `h^0(τ^{≥−1}L_{M/k}) = 0`. Layer 11.1
   adds the hypothesis that `(M, F)` is a relative space of maps (formal étaleness over the
   relative morphism functor), which holds for open substacks of `Mor_𝔅(𝒞, X)` (behrend1997
   line 135, Proposition 4, line 139). The statement is made over an arbitrary base `𝔅` carrying a
   family of prestable curves, because no roadmap owns the stack of prestable curves.
2. **Wrong locator in the brief.** "behrend-fantechi1997 Proposition 6.1, line 1549" is the
   obstruction theory of families of projective Gorenstein varieties. The morphism-space
   obstruction theory used for Gromov–Witten theory is Proposition 6.2 (line 1602, proof lines
   1605–1614).
3. **T9 hypothesis.** "If `M` is smooth over `𝔐` and `h¹(E^∨)` is locally free" has a redundant
   second clause. For a perfect `E` with `h^0(E) = Ω_{M/𝔐}` locally free, `h^{−1}(E)` and
   `Ob = h¹(E^∨)` are locally free automatically, since kernels and cokernels split locally. 10.4
   states the local freeness as a conclusion (behrend-fantechi1997 Proposition 7.3 (2), line 1702).
4. **T4 hypotheses.** The brief required a quasi-projective coarse moduli scheme (Edidin–Graham's
   Proposition 10). The route of 6.2 needs none: the mixed space is an open substack of a vector
   bundle over `[X/G]`, so homotopy invariance (5.1) and localisation (3.4) suffice. This is the
   route Edidin–Graham describe at lines 765–768. The hypothesis is replaced by "`[X/G]` is a
   separated DM stack", under EquivariantIntersectionTheory's Convention 5.
5. **Suppliers that are not allowed.** StackPointsAndResidualGerbes is a board target with no
   design. It is not on main, not in the merge order and not an open pull request, so it cannot
   supply anything. T5 therefore uses the integral zero-dimensional closed substack `𝒱_x` and
   `κ(x) := k(𝒱_x)`, and 1.2–1.3 own closed substacks, reduced induced structures and dimension
   (see "Notions owned here").
6. **The brief's characteristic-zero clause** "`deg(𝒱/p(𝒱)) = 1/e(𝒱)`" holds whenever `k(p(𝒱))` is
   perfect (vistoli1989 (2.5), line 578). 6.1 has a computed counterexample in characteristic `p`
   with a non-perfect function field: `deg = 1` although `e = p`.

## Ownership and duplication

- **By object, at main and at the heads of all 466 open roadmap pull requests** (`roadmaps grep`,
  index 2026-11-07). "intrinsic normal cone", "cone stack", "h1/h0 | h¹/h⁰", "Chow group(s) of
  (DM|Deligne|stack)", "obstruction theory in the sense of Behrend" and "small étale site of a
  Deligne" match nothing. "virtual fundamental class" matches only ImplicitAtlases (#974; the
  topological class, a different object). "Gysin … stack/local embedding" matches only
  scheme-level Gysin maps. "Vistoli" matches Borne–Vistoli gerbes in
  AlgebraicModuliForArithmeticGeometry and EquivariantIntersectionTheory's citations; none defines
  Chow groups of DM stacks. "cotangent complex of a morphism / L_{X/S} / global cotangent complex"
  matches only ring-level cotangent complexes (DerivedModuleAlgebra §0.4 with its consumers) and
  LanglandsParameterStacks §1.11 (cotangent complexes of its own parameter stacks). No roadmap owns
  a sheaf-level cotangent complex of morphisms of schemes, spaces or stacks.
- **Board packages.** The only neighbours are StackPointsAndResidualGerbes (target only; its brief
  names Chow groups of stacks as this roadmap's) and QuasicoherentSheavesOnPrestacks (target only).
  MotivicStructuresInModuliOfCurves (design) consumes this roadmap's objects; see the merge order
  below. The index of packages under review lists none in this area.
- **Libraries at the pins.** Mathlib has `AlgebraicCycle`, `AlgebraicGeometry.Scheme.ord`, the naive
  cotangent complex `Algebra.Extension.cotangentComplex`, `Algebra.H1Cotangent`,
  `Algebra.FormallySmooth` (defined at the pin as "Ω projective and `H¹(L)` = 0"), `SheafOfModules`
  (abelian), `DerivedCategory` and `AlgebraicGeometry.Scheme.smallEtaleTopology`. It has no stacks,
  Chow groups, normal cones or cotangent complexes of morphisms of schemes. Tau Ceti has divisors and
  line-bundle classes on schemes only. Every Mathlib and Tau Ceti name cited in the README was read
  at the pin.
- **Overlaps tool.** `roadmaps overlaps VirtualFundamentalClasses` reports "No roadmap
  VirtualFundamentalClasses on main or in an open roadmap pull request". There is no open pull
  request for this roadmap, so no dropped ids or conflicting heads exist. Ownership against the
  open pull requests was checked through `roadmaps grep` at their heads, as above.
- **Citation resolution.** `roadmaps resolve` on the README reports no cross-roadmap citation and no
  Lean name found nowhere.

## Notions owned here (moved down or ownerless)

- **Closed and integral substacks of DM stacks, the reduced induced closed substack, and the
  dimension of a DM stack through étale charts** (1.2–1.3). StackPointsAndResidualGerbes plans
  closed substacks "as far as residual gerbes need them" but is only a target and is not in the
  order. SchemeAndStackFoundations names no closed-substack API.
- **The small étale site of a DM stack, its `O`-modules and the derived category** (7.3). This
  extends SchemeAndStackFoundations §1.10 (algebraic spaces); no roadmap owns it.
- **The truncated relative cotangent complex `τ^{≥−1}L_{M/𝔐}`** of a morphism of Deligne–Mumford
  type (8.1–8.3). It is built rigorously as the Čech totalisation of the two-term complexes of
  relative local embeddings: the transition maps are strict, the Čech pieces are affine because `M`
  has affine diagonal, and pushforward along affine étale maps is exact on quasi-coherent sheaves.
  This sidesteps gluing objects of a non-enhanced derived category, which fails here because
  `Ext^{−1}` between two-term complexes need not vanish. Its comparison with the full cotangent
  complex (olsson2007 Theorem 8.1) is left to the owner of that complex, recorded as a downstream
  consumer.
- **Relative spaces of maps from families of prestable curves** (11.1) and derived pushforward and
  duality along such families over DM stacks (11.2). These are stated locally from StableReduction
  Layer 2 and SchemeAndStackFoundations §2.20, because no roadmap owns the stack of prestable curves
  or of stable maps.

## Proposed follow-on roadmaps (not planned here)

- **A roadmap on stacks of stable maps and algebraic Gromov–Witten invariants** (new, not a Part II):
  the Artin stack `𝔐_{g,n}` of prestable curves (behrend1997 Proposition 2), `M̄_{g,n}(X, β)` and its
  properness (behrend-manin1996 Theorem 3.14; fulton-pandharipande1997 Theorem 1), and the axioms
  (behrend1997 Theorem 6). It consumes Layers 10–11. StableReduction names this roadmap as its
  successor.
- **DerivedModuleAlgebra, Part II** (or an EnhancedDerivedSheaves Part II): the full cotangent
  complex of morphisms of ringed topoi, schemes, algebraic spaces and algebraic stacks
  (stacks-cotangent §§18–28; olsson2007 §8), with the comparison with 8.2 here. It is not needed
  by this roadmap.
- **A roadmap on Kresch's Chow groups of Artin stacks**: consumes Layers 2–5, proves kresch1999
  Theorem 2.1.12 (ii)–(iii), and removes the global-resolution hypothesis (Theorem 6.2.1).

## Gaps

None. Every prerequisite in the plan is a pinned declaration, a section of a roadmap on main
(SchemeAndStackFoundations, AlgebraicVectorBundles, DerivedModuleAlgebra, EnhancedDerivedSheaves,
StableReduction), a section of EquivariantIntersectionTheory, or an earlier target.
EquivariantIntersectionTheory is another author's open pull request (#1685, @mycaule) adding a new
roadmap folder, so it is an allowed supplier; it is cited at its head.

## Suppliers and the merge order

- Suppliers: SchemeAndStackFoundations, AlgebraicVectorBundles, DerivedModuleAlgebra,
  EnhancedDerivedSheaves, StableReduction (all on main), and EquivariantIntersectionTheory (open pull
  request #1685, not in the merge order). The roadmap must be inserted after
  EquivariantIntersectionTheory. The worker should name that pull request in the merge-order
  paragraph of the pull request it opens, since 6.2 cites its §§2.1–2.2 at that head.
- **MotivicStructuresInModuliOfCurves** is at line 328 of `merge-order/ORDER.txt`, earlier than this
  roadmap can be placed, and its design cites `SchemeAndStackFoundations:SF.5/stack-chow`,
  `SF.5/dm-gysin-ring` and `SF.5/dm-rational-degree`, keys that exist nowhere. The objects it needs
  are 2.3, 4.5, 5.3 and 6.3 here. It must be re-pointed to this roadmap and moved after it in the
  order. The README lists it under Downstream consumers only, with no supplier relation in the wrong
  direction.

## Sources

- Read from the cache, with locators quoted against the line-numbered texts: vistoli1989,
  behrend-fantechi1997, behrend1997, edidin-graham1998, keel-mori1997, kresch1999, li-tian1998,
  olsson2007, stacks-chow, stacks-chow-spaces, stacks-cotangent, stacks-properties,
  behrend-manin1996, fulton-pandharipande1997, graber-pandharipande1999, kiem-li2013,
  chang-guo-li2021.
- Fetched through the sources service: `deligne-mumford1969` (Numdam, open repository, certified),
  for Theorem 4.12 (line 1012), the proper cover of a separated DM stack. Bibliographic fields were
  added by hand.
- Not readable, settled `uncertified` in the manifest and cited by locator only: fulton1998
  (§1.10, Corollary 6.3, Proposition 8.1.1, Appendix B.6.6) and gillet1984 (§4, through Vistoli's
  restatement).
- Manifest locators and `cited_for` fields were updated to the subsections that use each source.
  `chang-guo-li2021` is now located at Remark 0.2 (lines 165–174), where `N_{g,d}` is defined.
- No fetched text contained instructions; nothing suspicious to report.

## Adversarial pass

One row per statement. The values are the computations recorded as Checks in the README; in the
table `#G` is the order of a finite group `G`.

| Statement | Instances tried | Values computed | Result | Change |
|---|---|---|---|---|
| Conv. 1, pure dimension of `𝔐` | `B𝔾_m`, `Spec k` | `dim B𝔾_m = 0 − 1 = −1`; `dim Spec k = 0` | negative `m` allowed | witness added |
| Conv. 4, integral vs rational | `[𝔸¹/μ₂]` | `A_0 = ℤ/2`, `A_0 ⊗ ℚ = 0`, `A_0(𝔸¹) = 0` | coarse comparison false integrally | stated rationally only |
| Conv. 5, degree | `BG → Spec k`, `Spec k → BG` | `1/#G`, `#G`, product `1` | multiplicative | witness |
| Conv. 6, cone dualisation | `C(O(1))` on `ℙ¹` | total space of `O(−1)`, `deg c₁ = −1` | matches SchemeAndStackFoundations §5.5 convention `N = (I/I²)^∨` | witness |
| Conv. 7, rank and `vd` | `ℙ¹`, `E = [O(1) → Ω]` | `rk = 1 − 1 = 0`, `Ob = O(−1)`, `deg = −1` | consistent with 10.2 and 10.4 | witness |
| 1.1 proper covers | `BG`; doubled-origin line; doubled-origin group `G` | degree-`#G` cover; identity; no cover (unit section of `G` not closed) | separatedness sufficient, not necessary | hypothesis kept explicit |
| 1.2 closed substacks | `Spec k → BG`; `V(x² − 1)`, `V(x − 1)` in `[𝔸¹/μ₂]` | `Spec k ×_BG Spec k = G ≠ Spec k`; invariant vs not | closed-image definition rejected | non-example Check |
| 1.2 integral ↔ irreducible | `[V(x²)/μ₂]` vs `Bμ₂` | same support, different structure; reduction unique | bijection uses reduced structure | — |
| 1.3 dimension | `Spec k` with atlas `𝔸¹`; `BG`; `[𝔸¹/μ₂]` | `1 − 1 = 0` vs uncorrected `1`; `0`; `1` | étale atlases need no correction | Check |
| 1.4 function field, `e` | `BG`; `[𝔸¹/μ₂]`, `Bμ₂`; `[Spec ℂ/(ℤ/4)]`/`ℝ` | `k, #G`; `k(x²), 1`, `2`; `ℝ, 2` (not `4`) | generic stabiliser is the kernel | Check |
| 1.5 degree formula | four instances incl. char `p` `ℤ/p` on `k[x,y]` | `1/#G`; `0` for `𝔸¹ → pt`; `1` and `1/2` for `μ₂`; `(1/p)·p = 1` | (1.17) holds; `1/e` fails off perfect fields | Check |
| 2.1 cycles, multiplicity | `[V(x²)/μ₂]` | `2[Bμ₂]` (length 2) vs reduced `1` | lengths at generic points | Check |
| 2.2 orders | `x²` on `[𝔸¹/μ₂]`; `y` on coarse line | `2[Bμ₂]`; `[0]`; `x` not invariant | junk value of `ord` never used (`f ≠ 0`, coheight 1) | Check |
| 2.3 Chow groups | `BG`; `[𝔸¹/μ₂]`; scheme | `ℤ`; `ℤ/2` (orders at `Bμ₂` even, other points `div(g(x²))`); SSF `ChowGroup` | torsion integrally | Check |
| 2.4 comparison | `Spec k`, `𝔸¹`, doubled-origin line | `ℤ`; `0`, `ℤ`; `A_0 = ℤ` | finite sums = locally finite on quasi-compact | — |
| 3.1 flat pullback | `π : Spec k → BG`; coarse map of `[𝔸¹/μ₂]` | `π^*[BG] = [Spec k]`; `p^*[0] = 2[Bμ₂]` | multiplicities from scheme-theoretic fibre | Check (degree-multiplying model rejected) |
| 3.2 representable pushforward | `π`, closed immersion, `ℙ¹ → pt` | `#G[BG]`, `[𝒱]`, `[κ(P):k]` | integral | — |
| 3.3 rational pushforward | `BG → pt`; coarse `μ₂` map | `1/#G`; `p_*(2[Bμ₂]) = [0] = div(y)` | no integral version (`#Gc = 1`) | Check |
| 3.4 push–pull, localisation | `G = Spec k ×_BG Spec k`; `Bμ₂ ⊂ [𝔸¹/μ₂]`; two points on `ℙ¹` | `#G[Spec k]` both sides; `ℤ → ℤ/2 → 0`; `ℤ² → ℤ` not injective | exact on the right only | Check |
| 3.5 exterior product | `K/k` separable / purely inseparable degree `p` | two points; `p[Spec K]`; degrees `4`, `p²` | cycle of the product, not reduced product | Check |
| 4.1 cones | `C(O)`, `C(0)`, `xy = 0`, `C(O(1))` | line bundle, `M`, non-abelian, `O(−1)` | dualisation pinned | Check |
| 4.2 local embeddings | diagonal of `BG`; `Bμ₂ ⊂ [𝔸¹/μ₂]`; fat point | codim 0, not an immersion; sign-character normal line; `dim C = 2`, fibre of `N` is `𝔸³` | closed-immersion definition would exclude diagonals | definition: representable by schemes + unramified |
| 4.2 Artin-stack local embeddings | `v` used in 10.6–10.7 | base change to DM stacks is a DM local embedding | needed by 10.6, 10.7 | added (BF lines 1617–1643) |
| 4.3 Gysin with scheme targets | `{0} → 𝔸¹` via `z²`; `Spec k → BG`; zero section | `2[pt]`; `[G]`, pushforward `#G`; `c_r(E) ∩ [𝓜]` | integral | Check |
| 4.4 Vistoli's `β` | `X = Y`; `v = id`; `v = i` regular; `xy = 0` | `[N] − [N]`; `[C] − [C]`; `s^!` of both sides `c_d(N) ∩ [X]`; both sides `0` in `A_1(𝔸²)` | identity in `A_*`, not on cycles | Check corrected; consequence ordered after 4.3/4.5 |
| 4.5 bivariant classes | `[id]`; `[π]` for `Spec k → BG`; zero section | identity; `[BG] ↦ [Spec k]`; `s^![E] = [𝓜]` | — | — |
| 5.1 homotopy invariance | trivial line over `BG`; cone in `E ⊕ F`; `O(−1)` on `ℙ¹` | `s^![𝔸¹ × BG] = [BG]`; `s'^![q^{−1}C] = s^![C]`; restriction model gives dimension `dim 𝓜` vs `−[pt]` | rational on stacks | Check |
| 5.2 Chern classes | `O(−1)` on `ℙ¹`; representations on `BG`; `L ⊕ L^∨` | `−1`; `0` in `A_{−i}`; `c₁ = 0`, `c₂ = −c₁(L)²` | — | — |
| 5.3 intersection product | `BG`, `[ℙ¹/μ₂]`, `ℙ¹` | `ℚ`; `[𝒫]·[𝓜] = [𝒫]`, `∫ = 1/2`; `[pt]² = 0` | separatedness assumed (diagonal representable by schemes) | — |
| 6.1 coarse comparison | `BG`; `[𝔸¹/μ₂]`; char-`p` `ℤ/p`; char 0 | `1/#G`; `ℤ/2 → 0` integrally, `0 ≅ 0` rationally; `deg = 1 ≠ 1/p`; perfect ⇒ `1/e` | perfectness hypothesis is used | Check; brief's char-0 clause becomes a Check |
| 6.2 Edidin–Graham | `G = 1`; `μ_n` on a point; `𝔾_m` on `𝔸² ∖ 0`; `𝔾_m` on `𝔸¹` | identity; `ℤ[t]/(nt) ⊗ ℚ = ℚ` in degree 0; `A_2^{𝔾_m} = A_1(ℙ¹) = ℤ` (shift `g = 1`); excluded (stabiliser `𝔾_m`) | complement dimension `n + l − c − g < i − g + l` iff `c > n − i` | quasi-projective coarse space dropped |
| 6.3 degree of zero-cycles | `BG`; `Spec K`; gerbe over `ℝ`; `[ℙ¹/μ₂]` | `1/#G`; `[K:k]`, `p`; `2/4 = 1/2` (not `1/4`); `div(x²/(x²−1)) = 2[𝒫] − [𝒪]`, `2·(1/2) = 1` | vanishes on `R_0` | Check |
| 7.1 abelian hull | `xy = 0`; `t^p` over `𝔽_p`; split sequence | `𝔸²`; group scheme not abelian cone; `𝔸¹ → 𝔸² → 𝔸¹` | "abelian" ≠ "group scheme" | Check |
| 7.2 cone stacks | `BE`; `[𝔸¹/𝔾_a]` translation / trivial; 2-automorphisms of `0 : 𝔸¹ → B𝔾_a` | `dim X − rk E`; point / `𝔸¹ × B𝔾_a`; `x ↦ ax` equivariant, `x ↦ x²` not | equivariance not vacuous | Check corrected (first version used a zero cone, giving only `k = 0`) |
| 7.3 Condition (⋆) | `O[1]`, `O[2]`, `O[−1]`, `k` on `k[ε]` | perfect, rank `−1`; (⋆) not perfect; violates; (⋆) not perfect | `h¹/h⁰` sees only `τ^{≥−1}` | Check |
| 7.4 `h¹/h⁰` | `[O → O]` id / 0; `O[1]`, `O[0]`; `Ω_X`; `[I/I² → Ω_W]` | point / `𝔸¹ × B𝔾_a`; `𝔸¹`, `B𝔾_a`; `BT_X`; `[N_{U/W}/T_W]` | — | — |
| 7.5 closed immersion criterion | inclusion and projection between `O[0]` and `[O --0--> O]`; `O[1] → 0`; `0 → O` | projection (not closed) / zero section (closed); representable / not | both directions tested | Check |
| 8.1 local complexes | `BG`; `k[x]/(x²) ⊆ 𝔸¹`; `f = id` | `K = 0` incl. product `(G, Spec k)`; `x² ↦ 2x dx`, `0` in char 2; `0` | products are unramified, not immersions | local embeddings, not closed immersions, in products |
| 8.2 truncated cotangent complex | étale, smooth; `k[x]/(x²)`; `k[x,y]/(x,y)²` | `0`, `Ω`; `h^{−1} = k·x³`, `h^0 = k·dx` (char ≠ 2), both `A` (char 2); lengths `3`, `4` | `h^{−2}` invisible | Check rewritten with full computation |
| 8.3 base change, products, transitivity | non-flat `k[x,y]/(xy) → 𝔸¹`; flat `t ↦ t²`; origin in `𝔸¹` | `h^{−1}` `k[y]` vs `0` (not iso); `[A --2t--> A]` both sides (iso); triangle `k → 0 → k[1] → k[1]` | flatness of `f` or of the base map is needed | statement corrected to "`f` or `𝔐' → 𝔐` flat"; first Check (which wrongly claimed failure for a flat map) replaced |
| 8.4 intrinsic normal sheaf | étale; smooth; fat point | zero cone; `BT_M`, dimension 0; fibre `[𝔸³/𝔸²]`, dimension 1 | — | — |
| 8.5 intrinsic normal cone | `k[x]/(x²)`; fat point; `Spec k → B𝔾_m` | `dim C_{U/W} = 1`, `dim C = 0 = dim N`; `0` vs `1`; `B𝔾_a`, dimension `−1 = m` | pure dimension `m` including `m < 0` | Check |
| 9.1 obstruction class | smooth; `k[x]/(x²)` points over `k[ε]/ε²` and `k[ε]/ε³`; étale | `0`; torsor `k`; `(ε + aε²)² = ε² ≠ 0`, obstructed in every characteristic | — | char hypothesis removed from the Check |
| 9.2 definition | hypersurface in `𝔸^n`; `E = 0`; `ℙ¹` | `vd = n − 1`; étale; `vd = 0`, `Ob = O(−1)` | — | — |
| 9.3 the four conditions | char 2 `k[x]/(x²)` with `φ = (0, id)`; smooth; `ℙ¹` | `h^{−1}(φ) = 0`, `φ^*ω(g) = 0`, no lift since `(x + ax²)² = x²`; identity; zero section, not iso | surjectivity of `h^{−1}` is needed | Check replaced (first version used a morphism `Ω[0] → τL` that does not exist in general) |
| 9.4 basic example | `s = x²`; `s = 0`; regular `s` on `𝔸¹` | `τL` itself, `vd 0`; `Ob = O`, class `0`; `E ≅ τL` | — | — |
| 10.1 resolutions | `E = 0`; `Ω` with `G` summand | `[O → O]`, `𝔸¹ × M → M`; quasi-isomorphic | — | — |
| 10.2 virtual class | smooth; `ℙ¹` with `O(1)`; `vd < 0` | `[M]`; degree `−1` (wrong dualisation `+1`); `0` | dualisation pinned | Check |
| 10.3 independence | two resolutions of `0`; split summand `[G → G]` | `[M]` both; unchanged | — | — |
| 10.4 no / locally free obstructions | `ℙ¹` with `O(a)`; `pt` with `O^s`; `k[x]/(x²)` | `−a`, `0` for `a = 0`; `A_{−s} = 0`; `Ob = A/(x)` not locally free, class `2[pt]` | smoothness needed | redundant hypothesis removed |
| 10.5 products | `M' = pt`; `ℙ¹ × ℙ¹` | identity; `(−1)(−1) = 1` | — | — |
| 10.6 pullback | open immersion; origin of `𝔸¹` with `𝔸¹ × Y` | restriction; `[Y]` | needs Artin-stack Gysin | 4.2/4.5 extended |
| 10.7 functoriality | `v = id`; `Z × 𝔸¹ → Z` | trivial; `[X]^vir × [𝔸¹]` | lci Gysin needed when `Z, Z'` smooth | `v^!` made explicit (graph + projection) |
| 10.8 virtual counts | `Z(x² + y²) ⊂ ℙ¹`; `BG` with `E = 0` | `2 = ∫ c₁(O(2))`; `1/#G` | deformation invariance via `A_1(B)_ℚ = ℚ[B]` | — |
| 11.1 spaces of maps | `X = pt`; fixed curve; single map `id_{ℙ¹}` | étale; BF Prop 6.2; `h^0(E) = k³ ≠ 0` | hypothesis necessary | new hypothesis (brief T10 vacuous) |
| 11.2 duality | `V = O`; smooth curve `L` of degree `d`; nodal fibre | `R¹π_*O` rank `g`; `χ = d + 1 − g`, `g − 1` for `ω`; degree on components | — | — |
| 11.3 Kodaira–Spencer | `X = pt`; `Mor(C, X)` | `0`; classical tangent iso | `X × 𝒞` not DM | built from graph-form local embeddings |
| 11.4 obstruction theory | `X = pt`; `ℙ¹ → ℙ^r`; elliptic `C → C` | étale; `Ob = 0`, `dim = (r+1)d + r`; `vd 0`, `dim M = 1`, class `c₁(O) = 0` | — | — |
| 11.5 global resolutions | smooth curve, `V = O`; non-reduced double line | `χ = 1 − g`; `H⁰(L^{−N})` need not vanish | reducedness used | Check |
| 11.6 virtual dimension | `ℙ²`, `g = 0`, `d = 1`, `n = 0`; Calabi–Yau 3-fold; `X = pt` | `b = −3`, `vd = 3 + 2 − 3 = 2`; `vd = n`; `vd = b` | agrees with li-tian1998 4.3 (1): `(3 − dim X)(g − 1) + n + α·c₁` | — |

Generality was checked in both directions. Every statement is over an arbitrary field `k`. The base
`𝔐` is any algebraic stack of pure dimension, including negative dimension. Layer 11 is stated for
any base carrying a family of prestable curves, not only for `𝔐_{g,n}`. Integral statements are
exactly those the sources prove integrally (Convention 4). No statement is narrowed below its
source: the characteristic-zero, quasi-projective-coarse-space and stable-map special cases became
Checks or examples.

## Dependency-check output

```
candidate: VirtualFundamentalClasses is not in the merge order yet; checked as if placed after GlaubermanZStar (the intake inserts it when its design is accepted)
depcheck: 240 roadmaps, 2351 edges, 0 problem(s)
```

No UPWARD or CYCLE line. The placement after the last roadmap of the order reflects
EquivariantIntersectionTheory, a supplier that is an open pull request outside the order.
