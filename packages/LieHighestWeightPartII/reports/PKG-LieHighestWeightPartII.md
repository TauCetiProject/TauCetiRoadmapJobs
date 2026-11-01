# PKG-LieHighestWeightPartII

Package written: `packages/LieHighestWeightPartII/README.md`, `Suggested.lean`, `metadata.toml` (`topic = "math.RT"`, as for the RepresentationTheory roadmaps and NilpotentOrbits on main) and `sources.toml`. The `gaps` list of `design/plan.json` is unchanged and empty: every supplier statement consumed is stated by its supplier (see "Supplier gaps" below).

## Headline theorems

| Headline | Status | Lean name |
| --- | --- | --- |
| The filtration determines the restricted `sl₂`-module (equal dimensions in every degree ⇔ an intertwining isomorphism), for zero-inclusive triples | stated | `finrank_weightFiltration_eq_iff_exists_intertwiner` |
| Type `A`: the standard module recognises triples in `sl(n, K)` | stated | `exists_innerAut_of_finrank_weightFiltration_sl` |
| Type `C`: the standard module recognises triples in `sp(2l, K)` | stated | `exists_innerAut_of_finrank_weightFiltration_sp` |
| Types `B`/`D` away from very even partitions: the standard module recognises triples in `so(n, K)` | stated | `exists_innerAut_of_finrank_weightFiltration_so` |
| Exceptional adjoint separation (`G₂, F₄, E₆, E₇, E₈`) | stated | `exists_innerAut_of_finrank_weightFiltration_adjoint_exceptional` |
| Filtration recognition over a semisimple Lie algebra (CH Lemma 2.4) | stated | `exists_innerAut_iff_finrank_weightFiltration` |
| Recognition of the positive real part from weight patterns (CH Prop. 10.2) | not statable | lacks a connected semisimple algebraic group with its category of finite-dimensional algebraic representations and the character lattice of a maximal torus at the pins |
| Half-spin separation of very even classes, and the finite test family of Layer 4 | not statable | Mathlib's `LieAlgebra.Orthogonal.so` has no half-spin Lie module at the pins; Tau Ceti's `typeDSpinPlusLieRep` lives on a Clifford-polarisation carrier with no Lie isomorphism to Mathlib's `so`; no decomposition of a semisimple algebra into typed simple ideals |

Definitions added to make these statable (real bodies, native carriers): `IsSl2TripleOrZero` (three bracket relations, no `h ≠ 0`), `innerAutGroup` (`Subgroup.closure` of `(TauCeti.expAd x hx).toLinearEquiv` in `L ≃ₗ[K] L`; same subgroup as LieHighestWeight Layer 7's `Int(L)`, which is a subgroup of `GL(L)` and cannot be imported from a roadmap), `weightFiltration` (`⨆ j ≤ i` of `Module.End.eigenspace` of `toEnd h`). The highest-weight half-integrality test (CH Lemma 6.30) is not a headline (a coset argument on top of LieHighestWeight Layer 3) and stays in the README.

## Changes against the design, and why

- **Pins.** The design cited Mathlib `082e2d37` and Tau Ceti `f790474`; the pins of `lake-manifest.json` are Mathlib `6b7abb3c` and Tau Ceti `a91d3aaf`. Every library declaration cited in the README was re-checked at these pins with one `#check` file (all elaborate). `TauCeti/Algebra/Lie/Killing/AdNilpotent.lean` and `TauCeti/RepresentationTheory/Lie/AdNilpotent.lean` (`TauCeti.isNilpotent_toEnd_of_isNilpotent_ad`) are present at the pin and are now used.
- **Conjugacy relation.** The design used `Ad(G(K))` for a chosen connected semisimple `G`. The README and Lean use `Int(L)` (LieHighestWeight Layer 7), which is statable at the pins, and §0.2 owns the comparison `Ad(G(K)) = Int(L)` (with its proof route from ReductiveGroups Layers 2, 5P, 6, 7). Generality is unchanged: CH §2.1 works over any algebraically closed field of characteristic zero (CH line 273), and so does the README, except Layer 5 (weight patterns, over `ℂ`).
- **Half-spin coordinates.** The design used CH's ascending coordinates with corrected simple roots; the README uses SpinRepresentations Layer 5's convention (simple roots `ε_i − ε_(i+1)`, `ε_(r−1) + ε_r`), giving maxima `A` and `A − a_r` with `a_r` the smallest coordinate; the CH chain-orientation error is still recorded in §2.3.
- **Algorithms removed from the text.** The design's certificate/checker language (`CharacteristicCandidates.check`, SLA ingestion, Python scratch evidence, an enumeration procedure) is restated as mathematics: the finite set `C_T` and the injectivity theorem (§3.3), with the computed counts as Checks; the appendix-table target is the theorem identifying CH's rows with `D_T(a)` (§3.5). The SLA database is no longer cited.
- **Decreasing comparison.** The design's API item comparing with "PadicHodgeTheory:R06.2/filtered-vector-spaces" was dropped: no such section exists in PadicHodgeTheory (searched on main and at the open heads). Reindexing `Fil^n = W_(−n)` is stated in the Conventions.
- **Design `Check` errors fixed.** None of the design's numerical checks was wrong; all were recomputed (table below). The §0.2 `SL₂` check now gives the explicit factorisation `diag(c, c⁻¹) = w(c)w(1)⁻¹`.

## Duplication removals (by object)

| Design target | Owner it is cited to | Action |
| --- | --- | --- |
| N0/jordan-centralizer (internal Jordan decomposition; centralizer reduction) | NilpotentOrbits N0.2 (on main) | deleted; cited in Scope and supplier contracts |
| N0/jacobson-morozov | NilpotentOrbits N2.1 (its Suggested states it over any algebraically closed char-0 field) | deleted; cited |
| N0/kostant-conjugacy | NilpotentOrbits N2.1 | deleted; cited (not needed by any remaining route) |
| N0/triple-integration (algebraic `SL₂`-homomorphism of a triple) | NilpotentOrbits N2.1 | deleted; the inner-invariance half is kept as §0.2 (proved from `TauCeti.expAd_apply_eq_exp_mul_exp_neg` and `TauCeti.isNilpotent_toEnd_of_isNilpotent_ad`) |
| N0/nilpotent-orbit (orbit sets, `NilpotentOrbit.mk/eq_iff/nilpotentPart/centralIsogeny`) | NilpotentOrbits N0.3, N2.4 | deleted; conjugacy is the `Int(L)` relation |
| labels `{0,1,2}` in N3/dominant-characteristic | NilpotentOrbits N2.2 | deleted from the target; opposition and multiplicity inequalities kept (§3.1) |
| type `A` part of N2/classical-partitions | NilpotentOrbits N4 | deleted; orthogonal/symplectic part kept (§2.2) |
| N5/algebraic-highest-weight-existence | ReductiveGroups Layer 10B (`∇(λ)`, classification of rational simples) | deleted; cited |
| N5/character-separation | ReductiveGroupsPartIII Layer RG3.0 (highest-weight character basis; characters separate semisimple classes) — earlier in the merge order | deleted; cited |
| `Int(L)` itself | LieHighestWeight Layer 7 | cited; restated in Lean only as the carrier of the statements |

Kept variants: §0.3 (conjugacy from the neutral element) differs from NilpotentOrbits N2.2/N2.4 in working over every algebraically closed field of characteristic zero, for triples including zero, under `Int(L)`; §0.2 (`Ad(G(K)) = Int(L)`) differs from the analytic `Ad(G) = Int(𝔤)` of NoncompactQuantumSymmetry (open roadmap pull request, real Lie groups) by being the algebraic statement over `K`. Ownership of §2.1 (invariant forms on `V(n)`): LieHighestWeight Layer 0 does not state it and no roadmap on main, at the open heads or in the board packages does (searched by object); it is owned here as a small lemma used only by §2.2.

Ownership against open work was checked with `roadmaps grep` over main and all 354 open heads (patterns: Jacobson–Morozov, weighted diagram, very even, half-spin, Ciubotaru, weight pattern, positive part, hyperbolic/elliptic part, Kostant conjugacy, separation of Weyl orbits, elementary/inner automorphisms, `expAd`, Gerstenhaber/Hesselink) and over the board packages (RootSystemsPartII, ReductiveGroupsPartII/III read). FunctionFieldArithmetic cites CH only for unrelated statements. No declaration of `Suggested.lean` reuses a fully qualified name of another roadmap.

## Notions moved down

None. No later roadmap in the merge order is cited. ReductiveGroupsPartIII is earlier (line 239 of the order, this roadmap at 309); it is cited by layer and target name from its package design, since it is neither on main nor at an open head.

## Supplier gaps

None declared. The only supplier statement that is weaker than needed is NilpotentOrbits N2.2's open-orbit argument, which is over `ℂ`; the variant over `K` is a target here (§0.3), not a gap.

## What the README could not support

- CH's E6/E7 shortcut (Levi restriction from E8) does not prove the claim; §3.4 proves E6 and E7 in their own root systems and says why the shortcut fails.
- CH's table header (`dim Fil_i`) contradicts its entries (graded multiplicities); §3.5 states the corrected reading with the principal `F₄` row as witness.
- CH's `so(2n)` chamber is not dominant for its stated simple roots; recorded in §2.3.

## Adversarial pass

| Statement | Instances tried | Values computed | Result | Change |
| --- | --- | --- | --- | --- |
| `IsSl2TripleOrZero` ⇔ zero or `IsSl2Triple` (char 0) | `(0,0,0)`; standard sl₂; `(0,E,0)`; `(H,F,E)`; `(−H,F,E)`; ring with `2=0` | `[0,E]=0≠2E`; `[F,E]=−H≠H`; with `2=0`, `(0,e,f)` satisfies all three relations | holds in char 0; fails without it | char-0 hypothesis kept; `2=0` instance added as a Check |
| `innerAutGroup` = `Int(L)` | abelian `L`; `sl₂` | abelian: `exp(ad x)=id`, group trivial; `sl₂`: `diag(c,c⁻¹)=w(c)w(1)⁻¹`, `Ad` acts on `E` by `c²` | determines its object | Check rewritten with explicit factorisation |
| `weightFiltration`: increasing, bounded, exhaustive | zero triple; `V(1)`; adjoint `sl₂` | zero triple: `0` for `i<0`, `M` for `i≥0`; `V(1)`: `0,1,2`; adjoint: `1,1,2,2,3`, decreasing convention `3,2,2,1,1` | holds | wrong-model (decreasing) Check kept |
| Graded comparison headline | `V(2)⊕2V(0)`; `V(1)⊕V(0)`; `V(2)` vs `V(0)⊕V(1)`; zero triple vs trivial module; `M=0` vs `M'≠0` | `d_0=3,d_2=1,m_0=2,m_2=1,W_0=4`; cumulative misuse gives `m_0=2−3`; `(1,1,2,2,3)` vs `(0,1,2,3,3)`; `M=0,M'≠0`: dims differ at large `i`, no iso | holds both directions | none |
| Tensor/dual laws | `V(1)⊗V(1)`; dual of `V(1)`; unit | `1,2,1`; cumulative `1,1,3,3,4`; `W_(−1)(M*)` a line, `W_(−i)` misindex gives `0` at `i=−1`; unit fixed | holds | none |
| `sl` recognition | `n=0,1`; `sl₃` minimal/regular | `sl₀=sl₁=0`; spectra `(1,0,−1)` vs `(2,0,−2)` | holds (GL-intertwiner rescaled to `det 1`; `Ad(SL_n)=Int(sl_n)`) | none |
| `sp` recognition | `l=∅`; `sp(2)=sl₂`; `sp(4)` `(3,1)`,`(2,2)` | `sp(2)` jumps `2@0` vs `1,1@±1`; `(3,1)` excluded (odd parts mult. 1) | holds | none |
| `so` recognition with `ker h ≠ 0` | `so(2)` abelian; `so(3)`; `so(4)` `(3,1)`,`(2,2)`; `so(8)` `(4,4)`; `n` odd; `n=0` | `so(2)`: only zero triple; `so(4)`: `(2,2)` has `ker h=0` (two classes), `(3,1)` diagonal one class; `so(8)` `(4,4)`: `ker h=0`, eigenvalues `±3,±3,±1,±1`; odd `n`: odd part forces `0` eigenvalue; `n=0`: hypothesis false | holds; very even case excluded exactly | proviso stated in prose and docstring |
| Orthogonal/symplectic parity and splitting | `sp(4)`, `so(3)`, `so(8)` | det of reflection on `V(n)⊗U_n` is `(−1)^(n+1)`; `(2,1)` excluded in `so(3)`; `(3,3,1,1)` one class | holds | none |
| Half-spin separation | `so(8)` `(4,4)`, `(2,2,2,2)`; `so(4)` `(2,2)`; odd half-spin | `a=(3,3,1,1)`: maxima `4,3`; `a=(1,1,1,1)`: `2,1`; `so(4)`: `1,0`; `L(ω_(r−1))`: `A−a_r`, `A` | holds | convention switched to SpinRepresentations' |
| Characteristic conditions | `E₆` opposition; `G₂ (2,0)` | `81` of `729` vectors survive; `(2,0)` profile `4,0,2,0,1,0,2` fails `d_4≥d_6` | holds | none |
| Root profile `D_T` | `a=0`; principal `G₂,F₄,E₈`; `G₂ (0,1),(1,0)`; Cartan omitted | totals `14,52,78,133,248`; `G₂` `2,0,2,0,1,0,1,0,1,0,1`; `F₄` evens `4,4,3,3,3,3,2,2,1,1,1,1`, `F_0=28`; `E₈` row equals CH line 1737; `(0,1)`: `4,4,1`, `(1,0)`: `4,2,1,2`; no Cartan term: total `48` | holds | none |
| Candidate injectivity | all five types; `E₆` without opposition | roots `12,48,72,126,240`; `|C_T|` `7,28,34,274,245`, all profiles distinct; no opposition: `212` vectors, `123` profiles, `(1,0,0,0,0,0)` and `(0,0,0,0,0,1)` both `46,16` | holds (independent exact recomputation) | none |
| Exceptional separation | `G₂` five classes; zero triple; type `D` adjoint | `G₂` profiles `14`; `4,4,1`; `4,2,1,2`; `4,0,4,0,1`; principal — distinct; `so(8)` very even pair has equal adjoint filtrations | holds; specific to exceptional types | Check replacing an incorrect draft remark about type `D` |
| CH tables reading | `F₄` principal, `A1`, `~A1`; `E₈`, `G₂` principal; `G₂(a1)` | `4,0,4…` cannot be nested; `22,14,1 = D(1,0,0,0)`, `22,8,7 = D(0,0,0,1)`; `G₂` row `4,0,4,0,1` sums to `14` | holds | none |
| Semisimple recognition | `L=0`; `sl₂×sl₂` `(t,0)` vs `(0,t)`; `so(8)` with `SO(8)` | `L=0`: only zero triple; adjoint weights `2,0,−2,0,0,0` for both, factor pullback `1,1@±1` vs `2@0`; half-spin legitimate as an `L`-module | holds; module universe `max u v` needed (with `Type 0` modules a large `K` would make the right side vacuous) | universe fixed in Lean |
| Half-integrality coset lemma | `A₁`, `ν(α)=½`; `ν(α)=⅓`; `Q=0` | `ν(ω)=¼`; `ν(α)=⅓` breaks it at `μ=α` | holds | negative control added |
| Highest-weight test | `sl₂`, `λ=3ω`; `PGL₂` | `ν(3ω)=¾`, weight `ω` has `¼`; `PGL₂` weights `kα` give `k/2` | holds | Check rewritten |
| Weight pattern | zero space; trivial; `diag(q^½,q^−½)` and its tensor square; `diag(i,−i)` vs `1` | `0`; `δ_0`; `1@±1`, `1,2,1@2,0,−2`; equal patterns, non-conjugate | holds | none |
| Positive part | `SL₂` `diag(z,z⁻¹)`; `z=i`; `PGL₂` `diag(z,1)` vs `diag(−z,1)` | `diag(|z|,|z|⁻¹)`; `r=1`; same positive part | holds | none |
| Real-part recognition | `diag(i,−i)` vs `1`; `diag(q^½,q^−½)` vs its Weyl image; vs `1` | traces `Σ n(i)q^(i/2)` equal / equal / `q^½+q^−½` vs `2` | holds | none |

Context check: every declaration of `Suggested.lean` carries its binders in its own signature (no section `variable`s). Mechanical check: a scratch file with `#check @name` for all nine declarations was elaborated once; every elaborated type shows `[IsAlgClosed K] [CharZero K]`, the finiteness, Killing and isomorphism hypotheses as written, and the module universe `Type (max u_1 u_2)` in the recognition theorem. Nothing changed after the audit. Unused hypotheses (P3): in the exceptional theorem `[FiniteDimensional K L] [LieAlgebra.IsKilling K L]` follow from the isomorphism with the Serre algebra by Serre's theorem, which Mathlib does not have; they are kept so the statement does not depend on it.

## Elaboration

`lake env lean packages/LieHighestWeightPartII/Suggested.lean`, run from the content checkout after `lake build TauCeti.Algebra.Lie.InnerAutomorphism`: exactly 6 warnings, all `declaration uses 'sorry'` (lines 76, 93, 107, 123, 143, 163); no other message. Imports: `import Mathlib` and `import TauCeti.Algebra.Lie.InnerAutomorphism`. No `set_option`.

## Dependency check

```
tauceti-roadmap … gate --depcheck packages/LieHighestWeightPartII/README.md --name LieHighestWeightPartII --order merge-order/ORDER.txt --movable
depcheck: 56 roadmaps, 642 edges, 0 problem(s)
```

No UPWARD, CYCLE or `moved:` line. `roadmaps resolve` on the README reports no unresolved cross-roadmap citation and no unresolved Lean name; Lean names outside the roadmap repository were checked separately by `#check` at the pins.

## Sources

`sources.toml` records CH (arXiv:2311.15300v1), DG (arXiv:math/0702193v2) and SOM (author page), all fetched through the sources service and certified; locators were checked against their line-numbered texts (CH lines 273–300, 323–331, 1158–1171, 1550–1565, 1699–1837; DG lines 79–153, 262–302, 530; SOM lines 352–373). The design's BAL, MIL, JAN and SLA sources are no longer cited (the targets that used them are owned elsewhere), so no text is missing and no `needs-references.toml` was written.

## Suspicious text

None found in the inputs read.
