# FIX-RT-SheafConvolutionOnAbelianVarieties~1

Two red-team passes (a: F01–F07; b: F01–F02). They do not overlap. Pass a's findings come first (F01–F07), then pass b's (F01–F02); each section's first line names its pass. Every finding was checked against the cited source lines, the pinned Tau Ceti files and the sibling roadmaps, and every one holds. No finding was disputed and none was marked not actionable.

## F01 (P1) — applied differently

Pass a.

Old: §0.4 was "proved" by citing KW Theorem 1.1 and Lemma 11.2. KW line 62–75 shows that proof goes through the André–Kahn quotient, super-Tannakian reconstruction and Proposition 10.1, and KW line 938 shows that Lemma 11.2(b) uses their Theorem 9.1. None of these had an owner. New: a route that needs no Tannakian quotient, split into three targets:
- §0.4 (rewritten): generic vanishing on a dense Zariski-open set, χ≥0 and the Euler-zero criterion, proved with the Fourier–Mellin transform and Artin vanishing on the Stein universal cover (BSS Theorem 1.1, Proposition 2.7, Corollary 2.10).
- §0.7 (new): Simpson's linearity theorems for rank-one local systems on abelian varieties (Sim Theorems 3.1, 3.3, 6.1; Sch Theorems 16.1, 17.4).
- §0.8 (new): the structure theorem. Exceptional loci are finite unions of translates ρ·T_B, with ρ torsion for geometric origin (Sch Theorem 7.3).

This is the reviewer's "alternatively" option. The André–Kahn route is not used, because no earlier roadmap owns super-Tannakian categories (searched MotivesAndAlgebraicCycles and all READMEs).

New supplier gap: `gap:stein-perverse-artin-vanishing` (ComplexComparisonPartII §C6.1). Also cited: SchemeAndStackFoundations §2.21 (dualizing complexes) and DiophantineApproximationAndTranscendence §3.5 (Schneider–Lang). §7.3 and the Layer 7 dependencies now list §0.8.

The reviewer's repair check holds:
- F[1] on E has untwisted dimensions (1,2,1), twisted dimensions (0,0,0), and exceptional locus {1}.
- L_α[1] has locus {α⁻¹}, which is linear but not arithmetic.

## F02 (P1) — applied

Pass a.

New target §4.3, "Microlocal fibre functor and the cycle–weight dictionary". It covers:
- the microlocal tensor functor (K2 Theorem 2.1.1, K1 Theorem 5.10);
- the very-general fibre functor, the T_u-grading, the Gauss-monodromy embedding into N(T_u)/Z(T_u) and the multiplicities (K1 Theorem 1.7);
- the λ-ring map cc and Adams operations Ψⁿ=[n]_* (K2 Proposition 1.3.3, Corollary 2.2.2);
- the component group and irreducibility on G° (K1 Theorem 1.5, Corollary 1.6);
- the weight dictionary (K2 Theorem 2.2.3, Corollary 2.2.4);
- isogeny lifting with effectiveness (K2 Theorem 2.3.1, Remark 2.3.2). Ψ^e U is virtual in general, but its character has nonnegative coefficients, so its cycle is effective.

Old §§4.3–4.7 are renumbered §§4.4–4.8 throughout the README. §4.4 and §4.5 now consume §4.3. New gap: `gap:microdifferential-localization` (SpringerResolutionAndCharacteristicCycles §D; its design has no microlocalization).

The reviewer's checks are now §4.3 Checks:
- δₓ has multiplicity 1, δₓ⊕δₓ multiplicity 2, and (2Λₓ)◦(3Λᵧ) multiplicity 6.
- λ²(Λₓ+Λᵧ)=Λ_(x+y).
- The SL₂→PGL₂ lift gives degree 3.

## F03 (P2) — applied

Pass a.

TauCeti/AlgebraicGeometry/AffineGroupScheme/Reductive/Basic.lean:111–119 confirms that `ReductiveAffineGroupSchemeCat` is geometrically connected.
- Conventions now define *linearly reductive* (the identity component is reductive; finite component groups such as μ₂ and Q₈ are allowed). "Reductive" without qualification means connected.
- §1.3 now says G(K,χ) is linearly reductive and may be disconnected; the route goes through ReductiveGroups Layers 3 and 6. A new Check: δₓ with x of order 2 gives μ₂.
- §7.5's B is now linearly reductive, and a new Check covers finite B such as Q₈.
- The Tau Ceti contract adds `TauCeti.FiniteTypeAffineGroupSchemeCat` and the connectedness lemma.

## F04 (P1) — applied

Pass a.

§6.5: "h(v+1)≥A₁/(2(n−1))≥4" became "h(v+1)≥⌈A₁/(2(n−1))⌉≥4", with ⌈13/4⌉=4 at n=5 and A₁/(2(n−1))≥9/2 for n≥6. A negative-control Check was added (n=5 unrounded value 13/4<4; n=6 gives ⌈57/10⌉=6). No other step used the unrounded bound.

## F05 (P3) — applied

Pass a.

- LS line 993 → 966 (Lemma 3.8, §4.5).
- K2 line 593 → 628 (Definition 2.2.1, in the ComplexComparisonPartII contract and in §4.2).
- W line 10 → 24 (§0.3).
- The W bibliography title is now "A remark on rigidity of BN-sheaves" (W line 6).

## F06 (P3) — applied

Pass a.

Scope reminders and duplicates were removed from §§0.3, 0.5, 0.6, 1.2, 1.3, 1.4, 3.2, 4.1, 4.2, 4.6, 4.7, 5.3, 6.4, 6.5, 6.6, 7.5, 8.3 and 9.1.

New Checks:
- §5.3: P₂=(20,76); binom(96,20)=216182590635135019896 ≡ 0 mod 6; D₂=36030431772522503316=binom(94,19).
- §1.4: the μ₂-torsor x²=−1 over ℝ has no real points and two complex points.
- To keep at least three discriminating Checks per section:
  - §6.4: k≥n forces v′=v.
  - §6.6: the surface row 10,10, and the complement k=20.
  - §8.3: unequal exponents are needed; ℓ=p=2 fails.

## F07 (P3) — applied

Pass a.

The rational étale–Betti and Euler-characteristic comparison now cites ComplexComparisonPartII §C6.6 `adicArtinComparison` (verified at its README, C6.6). The constructible/perverse comparison cites EtaleDualityAndPerverseSheaves §3.5. §§C5.1–C5.3 are kept for de Rham–Betti comparison and Hodge theory. Updated in: Scope, the EtaleCohomologyFoundations and ComplexComparisonPartII contracts, §3.1 Needs, §4.2 Needs and the Layer 4 dependencies.

## F01 (P3) — applied

Pass b.

In §1.3 Needs and the Layer 1 dependencies, "ReductiveGroups Layer 7" became "Layers 3 and 6". The char-0 equivalence of reductive and linearly reductive is in ReductiveGroups Layer 6. Applied together with pass a F03; §7.5 now cites Layers 3, 6 and 7, and the supplier paragraph names each layer's role.

## F02 (P3) — applied

Pass b.

`fourfold_exterior_impossible` was deleted from Suggested.lean: it follows in one step from `exterior_eulerian_classification` (n=4 makes `n = 2 ∨ n = 3` false). README §5.8 stays as a target and now says it is the n=4 case of §6.6.

## Checks run

- `lake env lean packages/SheafConvolutionOnAbelianVarieties/Suggested.lean`: elaborates. The only output is 5 `declaration uses sorry` warnings, one per theorem.
- `#check @name` sweep over all 9 declarations, in one scratch file. Each elaborated type matches its README statement. The file has no `variable` block, so no binder can be lost. The only change from before is that `fourfold_exterior_impossible` is gone.
- Dependency check, verbatim: `depcheck: 56 roadmaps, 657 edges, 0 problem(s)`. There is no UPWARD, CYCLE or moved line.
- `roadmaps resolve` gives 3 leads: SpringerResolutionAndCharacteristicCycles, LieHighestWeightPartII and StableReductionPartII. All three are board design packages earlier in the merge order, as in the previous round. No Lean name is unresolved.
- New citations checked at their current copies:
  - ComplexComparisonPartII §§C6.1, C6.6 (open head);
  - SchemeAndStackFoundations §2.21 and DiophantineApproximationAndTranscendence §3.5 (main);
  - ReductiveGroups Layers 3, 6 and 10 (main);
  - `TauCeti.FiniteTypeAffineGroupSchemeCat` (FiniteType.lean:97) and `TauCeti.geometricallyConnected_of_reductiveAffineGroupSchemeProperty` (Reductive/Basic.lean:110), at the pin.
- Sources: BSS (arXiv 1702.06395v1), Sch (arXiv 1307.1937v1) and Sim (Numdam, journal version) were fetched legally and added to sources.toml. K1 and K2 locators were extended. No needs-references file was written.

## Adversarial pass on new and changed statements

| Statement | Instances | Values | Result |
|---|---|---|---|
| §0.4 FM vanishing | E, F[1]; L_α[1]; δₓ; δ₀⊕δ₀[1] | dims (1,2,1) at χ=1 and 0 elsewhere, S^(±1)={1}, codim 2≥1; S^(±1)={α⁻¹}; FM(δₓ)=R in degree 0; non-perverse complex has degrees −1 and 0 at every χ | holds; perversity needed |
| §0.4 torsion good character | proper closed Z in G_m^(2g) | torsion points are Zariski dense, so they are not all in Z | holds |
| §0.7(a) | E, connections d+t·dz | holonomy (e^(−t),e^(−tτ)) is Zariski dense because τ∉ℝ | algebraicity on both sides needed |
| §0.7(b) | ρ=(2,1) | Q̄-point of infinite order; by Sim Theorem 3.3 not all conjugates are algebraic | the condition is needed for every σ |
| §0.8 | antidiagonal curve in E×E | S^(±1)=T_C={χ₁=χ₂}, codim 2 | not of coordinate form; B≠0 since codim≥1 |
| §4.3(c) | λ²(Λₓ+Λᵧ) | ½(Λ_(2x)+2Λ_(x+y)+Λ_(2y)−Λ_(2x)−Λ_(2y))=Λ_(x+y) | holds |
| §4.3(f) | SL₂→PGL₂, Sym² | Ψ²U=Sym²U−1 is virtual; weights ±2 with coefficient 1; degree 2→3 | effective; degrees match |
| §4.3(e) | K1 elliptic SL₃ example | T_u≅G_m with rank 1<2 | maximal-torus hypothesis needed |
| §1.3 linear reductivity | δₓ with x of order 2; Q₈ | μ₂ has 2 components and semisimple representations | outside the connected carrier, inside the new convention |
| §6.5 ceiling | n=5; n=6 | 13/4→4; 57/10→6 | holds |
| §5.3 D₂ | P₂=(20,76) | binom(96,20) mod 6=0; /6=binom(94,19) | holds |

## Notes for the maintainer

- Ownership: there is no other owner of generic vanishing via the Fourier–Mellin transform, of Simpson's theorems or of Krämer's microlocal fibre functor (searched: roadmaps grep, main, board packages, the 55 sibling heads). This roadmap owns them, and they are listed in Scope.
- New supplier asks, both declared in plan.json `gaps` and in the README contracts:
  - ComplexComparisonPartII §C6.1: `stein-perverse-artin-vanishing`;
  - SpringerResolutionAndCharacteristicCycles §D: `microdifferential-localization`.
- Layer 4 section numbers changed (old §§4.3–4.7 are now §§4.4–4.8), and the Lean name `fourfold_exterior_impossible` was deleted. No other roadmap cites either.
- No suspicious instructions were found in the reviews.
