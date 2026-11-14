# FIX-DESIGN-VirtualFundamentalClassPartII~3

Repair round on the findings of `REV-DESIGN-VirtualFundamentalClassPartII~2` (seven findings, all P3).
I checked every finding against the sources and against the supplier texts. All seven are correct and
all are applied; two of them (F02, F03) are applied a little more broadly than asked, for the reasons
given in their sections. Files edited: `packages/VirtualFundamentalClassPartII/design/README.md`,
`packages/VirtualFundamentalClassPartII/design/plan.json` and `packages/VirtualFundamentalClassPartII/sources.toml`.

## F01 (P3) — applied

The finding is correct. 8.1 has four bullets: (1) `β` is defined; (2) smooth base change and smooth
factorisation; (3) relative invariance over `𝔅`; (4) invariance under `T_{Y′/𝔐}`. The route labelled
its argument for (4) "the third statement" and applied "the second statement", which is really (3).
In 8.3, the graph ambient `Y = Z′ ×_𝔜 Z ×_𝔜 W` with `Y′ = Z′ ×_𝔜 W` needs invariance under
`T_{Y′/𝔜} = T_{Z′/𝔜} ⊕ T_{W/𝔜}`. That is bullet (4): bullet (3) over `𝔅 = Z′ ×_𝔜 Z` gives only the `W`
directions.

Changes:
- 8.1 route: "For the third statement, generators … the second statement applies" → "For the fourth
  statement, generators … the third statement applies". The paragraph proving (3) now opens with
  "For the third statement, the two projections".
- 8.3: "8.1's third statement" → "8.1's fourth statement".

Other places searched: 8.2's appeal to 8.1 uses no ordinal, and it does use (3). `plan.json` has no
ordinals.

## F02 (P3) — applied

The finding is correct. `ρ` was never defined in the README. In behrend-fantechi1997 (lines 819–825)
`ρ : N → Y′` is the bundle projection. At line 1392, `φ` is BF's name for `𝔉 → u^*𝔈`, which clashes
with Convention 6's `φ : E → L_{X/𝔜}`.

**8.1.** `[ρ^*C_{X′/Y′}]` → `[j^*N ×_{X′} C_{X′/Y′}]`. The README now says three things:
- the ambient is `N ×_Y C = j^*N ×_{X′} u^*C`;
- `C_{X′/Y′} ⊆ u^*C`, because étale locally the ideal of `X′` in `Y′` is the image of the ideal of `X` in `Y`;
- this term is the normal cone of `j^*N` in `N`, since `N → Y′` is flat. This is kresch1999b's own
  term at line 304.

The third Check is changed to match.

**8.3.** `[φ^*C_{u^*𝔠/𝔠}]` → `[q^*C_{u^*𝔠_{X/𝔜}/(Z′ ×_𝔜 𝔠_{X/𝔜})}]`.
- `q : 𝔉 → u^*𝔈` is the second map of VirtualFundamentalClass §8.1's exact sequence.
- `u^*𝔠` sits in `Z′ ×_𝔜 𝔠` through the base change of the graph of `v`.

This goes slightly beyond the suggested repair. In the second case `u` need not be an immersion
(for example the projection `𝔸¹ × Z → Z`), so `C_{u^*𝔠/𝔠}` was ill-formed as written.

The same undefined-notation problem appeared elsewhere in 8.3, and I fixed those occurrences too:
- `𝔉`, `𝔑_{Z′/Z}` and `u` were used there without definition;
- the opening paragraph now defines them, and introduces `q`.

## F03 (P3) — applied

The finding is correct. For smooth `u`, behrend-fantechi1997 Proposition 3.14 (lines 1040–1044;
VirtualFundamentalClass §5.5) gives the short exact sequence `B T_{X′/X} → 𝔠_{X′} → u^*𝔠_X`.

- 8.3 route: "`C_{X′/𝔜}` is the `T_{X′/X}`-torsor over `u^*C_{X/𝔜}`" → "`𝔠_{X′/𝔜}` is a torsor over
  `u^*𝔠_{X/𝔜}` under `B T_{X′/X}`, the kernel of `q`, and `𝔠_{X′/𝔜} = 𝔉 ×_{u^*𝔈} u^*𝔠_{X/𝔜}`" (BF lines
  1456–1460). Over `𝔜` the sequence is formed on the charts of §9.1.
- The reviewer's witness is added to 8.3's second Check (`0 = 1 − 1` versus `2`), and the same text is
  in `plan.json`.
- *Needs:* and Dependencies now include VirtualFundamentalClass §5.5.

## F04 (P3) — applied

The finding is correct. Both sections exist on main: SchemeAndStackFoundations §2.6
(`serre_affineness_criterion`, whose converse direction gives vanishing on affines) and §2.10
(`quasiCoherent_topology_comparison`). `plan.json` already listed both in its supplier entry.

- I added a contract bullet naming both declarations and their use in 6.1: splitting the extension on
  each affine étale chart.
- I added the matching clause to the Scope sentence ("§§2.6, 2.10").

## F05 (P3) — applied

The finding is correct. At the supplier's head, VirtualFundamentalClass §2.5 has no Checks list. The
`O(1)` self-intersection is the third bullet of the Checks under Layer 2's "Examples". 4.4: "the
VirtualFundamentalClass §2.5 Check" → "the Check in the Examples of VirtualFundamentalClass Layer 2".

Other places searched:
- 4.4's first Check (§2.1, `B(ℤ/2)` of degree `1/2`) is placed correctly.
- The other supplier-Check citations also resolve: SchemeAndStackFoundations §1.9 (`𝔸¹/ℤ`), §5.5 (`z ↦ z²`)
  and §5.6 (`[0₁]·[L] = [0₁]`).

## F06 (P3) — applied

The finding is correct. kresch1999b Corollary 1.10 (line 182) is stated "on a variety", and the double
deformation space need not be integral.

Change in 8.1: "which makes no use of reducedness" → "Corollary 1.10, stated for a variety, is applied
to each irreducible component of the double deformation space that dominates `ℙ¹ × ℙ¹`, with its
reduced structure, and summed with the multiplicities of these components". The reason this suffices:
- `s × t` is flat away from `(0, 0)` (line 281), so every other component lies in `|D| ∩ |E|`;
- such components contribute nothing (Definition 1.5, lines 113–116).

Adversarial result on the new text: Kresch's `ω` has boundary `[C_{j^*N/N}] − [C_{u^*C/C}]` (line 304),
which is the opposite sign to the README's `β`. The README now says `β = −ω`. Its sign agrees with
behrend-fantechi1997 line 825 and with the plane Check `β = ν/η`. The `plan.json` statement and
locator of 8.1 are updated to match.

## F07 (P3) — applied

The finding is correct.
- vistoli1989: added "Lemma 3.20" to the `locator`, and "Lemma 3.20, lines 1206–1207" to its 3.1–3.5
  `cited_for` entry. The README cites it in 3.5's API; the item is (3.20) at line 1206.
- kresch1999b: added "Corollary 1.10; Propositions 2.1, 2.3; Remarks 2.5–2.6" to the `locator`.

Pattern sweep of every source's README locators against its manifest `locator`:
- vistoli1989's other lemmas fall inside its `(x.y)` ranges.
- For behrend-fantechi1997, the F03 repair cites Proposition 3.14 and lines 1389–1392 and 1456–1460.
  I added these to its `locator` and `cited_for`.
- All other entries are complete. No source was fetched, and no `needs-references.toml` was written.

## Adversarial table

| Statement | Instances tried | Values computed | Result | Change |
|---|---|---|---|---|
| 8.1 boundary `[C_{u^*C/C}] − [j^*N ×_{X′} C_{X′/Y′}]` | plane `Y = 𝔸²`, `X = 0`, `Y′ = {y=0}`; `Y = 𝔸¹ × Spec k[ε]/(ε²)`, `Y′ = {t=0}`; `𝔅′ = 𝔅` | `[ν=0] − [η=0] = div(ν/η)`; `{ν=0} × C` and `𝔸¹_ν × Spec k[E]/(E²)`, i.e. `2[ν=0] − 2[T=0] = div(2ν/T)`; `N = 0`, `[C] − [C] = 0` | holds; agrees with the three Checks | notation repaired (F02) |
| `C_{X′/Y′} ⊆ u^*C` | the two instances above | `{η=0} ⊂ 𝔸²_{ξ,η}`; `{T=0} = Spec k[E]/(E²) ⊂ Spec k[T,E]/(E²)` | holds | new clause |
| 8.1 sign against Kresch | kresch1999b line 304 | `∂ω = [C_{j^*N/N}] − [C_{u^*C/C}] = −∂β`; on the plane `ω = −ν/η` | sign opposite | `β = −ω` stated |
| 8.1 componentwise Corollary 1.10 | non-reduced `Y` above | one dominating component of multiplicity `2`, giving `β = 2·(ν/T)`; components over `(0,0)` lie in `|D| ∩ |E|` and contribute `0` | holds | clause added (F06) |
| 8.1 ordinals | bullets (1)–(4); 8.3's need | 8.3 needs `T_{Z′/𝔜} ⊕ T_{W/𝔜} = T_{Y′/𝔜}`; bullet (3) over `Z′ ×_𝔜 Z` gives only `T_{W/𝔜}` | bullet (4) is needed | F01 |
| 8.3 first case, torsor | `X = Z = 𝔜 = Spec k`, `Z′ = 𝔸¹`, `E = 0`, `F = Ω_{𝔸¹}` | `dim 𝔠_{𝔸¹} = dim B T_{𝔸¹} = 1 − 1 = 0`; `dim u^*𝔠_X = 1`; `B T`-torsor gives `1 − 1 = 0` ✓, `T`-torsor gives `2` ✗; `𝔉 ×_{u^*𝔈} u^*𝔠 = B T_{𝔸¹} ×_{pt} 𝔸¹ = B T_{𝔸¹}` | holds | F03; added to Check 2 |
| 8.3 second-case boundary | `v = id_Z`, `F = E`; `v : {0} → 𝔸¹`, `X = 𝔸¹`, `E = Ω`, `F = 0`; `v : 𝔸¹ × Z → Z` | normal cone of `𝔠` in `Z ×_𝔜 𝔠` (a section of a smooth map) is `N × 𝔠`, `q = id`, boundary `0`; `u^*𝔠 = B T_0`, normal cone `N × B T_0`, `q : pt → B T_0`, `q^* = N`, minus `N × pt`, giving `0`, and both classes are `[pt]`; `q^*(N × 𝔸¹ × 𝔠) = N × (𝔠 ⊞ B T_{𝔸¹}) = N × 𝔠_{X′}`, boundary `0`, both `[𝔸¹] × [X]^vir` | holds | F02 |
| 8.3 Gysin of first term | general second case | `0^!_{N×𝔉} q^* = 0^!_{N×u^*𝔈}`, and `0^!_N[C] = Γ^! pr^*[𝔠]`, so the result is `v^!0^!_𝔈[𝔠] = v^![X]^vir` | holds | none |
| 6.1 splitting on affines (F04) | `ℙ¹`, extension of `O(4)` by `O(2)`; affine chart | `Ext¹ = H¹(ℙ¹, O(−2)) = k`, nonsplit `= O(3)²`; on affine `U`, `H¹(U_ét, Hom) = H¹_Zar = 0` (§§2.10, 2.6) | holds | contract and Scope |
| 4.4 Checks (F05) | VirtualFundamentalClass head | §2.1 Checks: "`B(ℤ/2)` has degree `1/2`"; Layer 2 Examples: "`O(1)` self-intersection is a point class"; §2.5 has no Checks list | locator fixed | F05 |

## Checks run

- **Dependency check** (`gate --candidate … --only VirtualFundamentalClassPartII`), after the final edit:

      candidate: VirtualFundamentalClassPartII is not in the merge order yet; checked as if placed after StableReductionPartII (the intake inserts it when its design is accepted)
      depcheck: 206 roadmaps, 1897 edges, 0 problem(s)

  No UPWARD or CYCLE line.
- **Citations** (`roadmaps resolve`): no cross-roadmap citation or Lean name was found missing.
- `plan.json` parses as JSON and `sources.toml` parses as TOML (14 sources).
- **`Suggested.lean`:** this is the design stage and the package has none, so no `#check` scratch
  elaboration applies. No Lean name was added or removed.

## Notes for the maintainer

- **Gate failures:** none were listed for this round.
- **Ownership:** no new object or target was introduced. `𝔉`, `𝔑_{Z′/Z}` and `q` are notation for
  VirtualFundamentalClass §8.1's sequence.
- **Supplier usage:** the only new supplier section used is VirtualFundamentalClass §5.5. It was
  already in the contract and in the `plan.json` suppliers, and is now in 8.3's *Needs:* and in Layer 8's
  Dependencies.
- **Citations:** no ids that other roadmaps cite were renamed or dropped. VirtualFundamentalClass was
  read at its open head. Ownership against open pull requests was checked only through the roadmaps
  tool (`resolve`, `overlaps`), which reports no dropped ids and no conflicting heads.
- **Suspicious text:** none in the review.
