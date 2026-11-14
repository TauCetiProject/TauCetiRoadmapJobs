# FIX-DESIGN-VirtualFundamentalClassPartII~2

Repair of the design (`packages/VirtualFundamentalClassPartII/design/README.md`, `design/plan.json`,
`sources.toml`) against the 13 findings of REV-DESIGN-VirtualFundamentalClassPartII. Every finding was
checked against the sources and found correct; F09's suggested formula was corrected before it was
applied.

## REV-DESIGN-VirtualFundamentalClassPartII/F01 (P2) — applied

Changed: "for stacks with a proper cover" → no hypothesis. 1.1 gains the target "every stack has a
finite surjective `Z → ℳ` from a scheme, étale over a dense open" (rydh2015 Theorem B, lines 81–85). The fourth Check of 1.1 computes the degree-2 finite étale cover `L → B_{𝔸¹}G`.
Convention 3 makes proper covers a proof tool.

Other places: Summary; Scope (Layers 1, 4, 5, 6, 8 bullets); supplier gap text ("images under a proper
morphism with a proper cover of its source" → "under a proper or a flat morphism"); Convention 7; How
to read; Layer 1 Examples and Dependencies; 2.1, 2.2, 3.2, 3.3, 3.4 remarks; Layer 4 title; 4.1, 4.2, 4.3
statements, Checks and Examples; 5.1, 5.2; Layer 6 preamble; 6.2 title and statement; 6.3; Layer 6
Examples; 8.2 ("assume `X′` has a proper cover" deleted, with the reason `X′` is a Convention-1 stack);
8.3; 8.4 route; plan.json `summary`, gap `detail`, Layer 4 title, targets 1.1, 3.2–3.3, 4.1–4.3, 5.1,
5.2, 6.2, 6.3, 8.2, 8.3. Evidence: Convention 1 stacks satisfy rydh2015 Theorem B's hypotheses
(quasi-compact, Deligne–Mumford, quasi-compact separated diagonal). `L → B_{𝔸¹}G` is the classifying map
of `Q = 𝔸¹ ⊔ 𝔸¹ → L`, and `Q ×_L Q = Q ⊔ Q|_{t≠0} ≅ Q ×_{𝔸¹} G`. Its base change to the atlas is
`Q → 𝔸¹`, of degree `2`.

## REV-DESIGN-VirtualFundamentalClassPartII/F02 (P2) — applied

Changed: 5.1 Poincaré duality "representable `t : T → ℳ`" → "representable `t` with `T` separated
(equivalently `t` separated)", with a sentence saying why VirtualFundamentalClass §2.5 forces it. New
negative-control Check: `t : L → 𝔸¹` (pullback of `id_{𝔸¹}` is `L`, so `α[𝔸¹]` is undefined), against
separated `𝔸¹ ⊔ 𝔸¹ → 𝔸¹`. Scope and plan 5.1 updated.

Evidence: VirtualFundamentalClass §2.5 at its open head acts "after base change to separated
finite-type Deligne–Mumford test stacks whose pullbacks are separated". The supplier contract line for
§2.5 now says this too.

## REV-DESIGN-VirtualFundamentalClassPartII/F03 (P2) — applied

Changed: 6.3 "`s := dim X − d − r`, class `c_s(Ob) ∩ [X]`" → `s := rk Ob` (locally constant), class
`Σ_s c_s(Ob|_{X_s}) ∩ [X_s]` (behrend-fantechi1997 line 1710). 9.5: `rk E = δ + ℓ(1 − g)`, `ℓ` the rank
of `F^*T_X` (`dim X` for pure dimension). Both instances are new Checks.

Other places: Summary ("for a target of pure dimension"); the AlgebraicGromovWittenTheory formula in 9.5
is now stated for pure-dimensional `X`; the 9.5 Calabi–Yau Check now says "of pure dimension `3`"; 6.2
("pure of dimension `d + rk F_0`" now holds on each open and closed substack where `rk F_0` is
constant); plan 6.2, 6.3, 9.5.

## REV-DESIGN-VirtualFundamentalClassPartII/F04 (P2) — applied

Changed: 8.1 builds `β(Y′, X)` on any algebraic stack locally of finite type (kresch1999b Proposition
2.3, lines 259–304; Corollary 1.10; smooth pullback, Proposition 2.1, lines 202–207), with Vistoli
Lemmas 3.16/4.6 as the reduced case. "Reduced" is deleted from 8.1–8.4, the Layer 8 title, Summary,
Scope and How to read. 8.1 Check 3 and 8.2 Check 4 are now non-reduced instances.

Evidence that no step needs reducedness: Kresch's construction uses the double deformation space and
`P`-divisors, with no normalisation or blow-up. For smooth factorisations: the double deformation space
for `Ỹ` is the base change of that for `Y` along the smooth `M°_X Ỹ → M°_X Y` (étale locally
`M°_X Y × 𝔸^n`). So the compatibility follows from smooth pullback, and the relative invariance through
`Y ×_𝔅 Y` is unchanged. New 8.1 Check: `Y = 𝔸¹ × Spec k[ε]/(ε²)` gives `∂β = 2[ν=0] − 2[T=0]`. New 8.2
Check: both sides equal `2·[pt]`. Plan: 8.2/8.3 renamed `…_pureDimensionalBase`.

## REV-DESIGN-VirtualFundamentalClassPartII/F05 (P3) — applied

Changed: 4.2 "3.5's class on the scheme `ℱ ×_𝒢 Y`" → "on the algebraic space `ℱ ×_𝒢 Y` (… it need not
be a scheme)". New Check: the algebraic space `𝔸¹_ℂ/(z ∼ z̄, z ≠ 0)`, étale over `𝔸¹_ℝ`, is not a
scheme: functions near the origin take real values there, but the residue field is `ℂ`.

Other places: no other passage calls such a fibre product a scheme (`E_X := E ×_ℳ X` in 4.3 is a vector
bundle over a scheme).

## REV-DESIGN-VirtualFundamentalClassPartII/F06 (P3) — applied

Changed: 3.2 "through the norm on rational functions" → displayed formula
`f_* div(φ) = (e(f(𝒱))/e(𝒱))·div(N(φ))` if dimensions agree, else `0`. The factor is an integer for
representable `f`. New Check: `𝔸¹ → 𝔸¹ × BG` with `φ = t` gives `|G|·[0×BG]` against `div(N t) = [0×BG]`.
The rational form is an API bullet of 4.1. *Needs:* of 3.2 now includes 1.2.

Verification beyond the given instance: the atlas `𝔸¹ → [𝔸¹/μ₂]`, `φ = x`: `f_*[0] = 2[Bμ₂]`, and
`div(N(x)) = div(−y) = 2[Bμ₂]` with factor `1`. The non-representable `𝔸¹ × BG → 𝔸¹`: both sides are
`(1/|G|)[0]`.

## REV-DESIGN-VirtualFundamentalClassPartII/F07 (P3) — applied

Changed: 7.2 adds "Condition 3 for affine `T̄` alone already implies condition 1, so the three conditions
are equivalent to condition 3 restricted to affine `T̄`, the form 9.3 verifies". The route for (3) ⇒ (1)
now names the affine extensions it uses (behrend-fantechi1997 lines 1175–1201; Proposition 6.2, lines
1605–1614). 9.3's route now cites this. Plan 7.2 updated.

## REV-DESIGN-VirtualFundamentalClassPartII/F08 (P3) — applied

Changed: 9.1 "base change to every scheme is a prestable family" → "a prestable family étale locally
on the base": each scheme `T → 𝔅` has an étale covering with every `𝒞_{T_i}` a scheme and
`PrestableFamily`. One clause says why (9.2–9.4 work on étale charts). 9.2 chooses charts with `𝒞_U` a
scheme; 9.3 lifts on étale charts of `𝒞_{T̄}`.

## REV-DESIGN-VirtualFundamentalClassPartII/F09 (P3) — applied differently

Changed: 8.3 gets an **API.** bullet stating the comparison
`[u^*C/(T_{Z′/𝔜} ⊕ T_{W/𝔜})] ≅ 𝔉 ×_{u^*𝔈} u^*𝔠_{X/𝔜}`. It lies over `u^*𝔠_{X/𝔜}` and is equivariant for
`g^*𝔑_{Z′/Z} = [v^*T_Z/T_{Z′}]`. It carries `𝔠_{X′/𝔜}` into `𝔉`, glues over charts, and descends `β` to
`N × 𝔉`. The route explains why no datum over the graph is used. A Check computes two degenerate
cases.

Why differently: the suggested quotient `[N × u^*C/(T_{Z′} ⊕ T_W)]` has `T_{Z′}` acting on
`N = v^*T_{Z/𝔜}`, giving `[N/T_{Z′}] = 𝔑_{Z′/Z}`. But the action in kresch1999b Theorem 3.1 (lines
331–333) and in 8.1 is trivial on the normal-bundle factor. `T_{Z′}` acts on `u^*C` through `dv`. So
`𝔑_{Z′/Z}` appears as the fibre of `[u^*C/(T_{Z′} ⊕ T_W)] → u^*𝔠_{X/𝔜}`, and `N` is a separate factor.
This matches behrend-fantechi1997 Lemma 5.9 (lines 1416–1421; checked for `v : {0} → 𝔸¹`). The
suggested model would quotient the wrong factor.

## REV-DESIGN-VirtualFundamentalClassPartII/F10 (P3) — applied

Changed: 1.2 API "`e(𝒱) = deg(I_𝒱/𝒱)` in the sense of 1.3" → "`e(𝒱)` is the sum of `deg(ℐ/𝒱)` over the
irreducible components `ℐ` of `(I_𝒱)_red` dominating `𝒱`". New Check: `ℤ/2` gives `1+1`; `S₃` gives
`1+3+2`. `Bμ₃` over `ℚ` gives `1+2 = 3` from two components. For `[𝔸¹/μ₂]` the non-dominating component
is excluded. Plan 1.2 updated.

## REV-DESIGN-VirtualFundamentalClassPartII/F11 (P3) — applied

Changed: 8.1 "(VirtualFundamentalClass §1.6)" → "(VirtualFundamentalClass §§1.6, 9.1)", and 8.1's
*Needs:* line gains §9.1. The supplier contract and the Scope list now say that §9.1 presents the
relative cone on charts by normal cones and the relative tangent action. 8.3's tangent actions also
cite §§1.6, 9.1; *Needs:* of 8.3 and plan 8.1/8.3 prerequisites updated.

## REV-DESIGN-VirtualFundamentalClassPartII/F12 (P3) — applied

Changed: 5.4 "Define *pointDegree* `∫_ℳ` as the pushforward of 4.1" → "`∫_ℳ` is VirtualFundamentalClass
§2.1's degree of proper zero-cycles (under 2.3 and 4.4 the pushforward of 4.1)". One clause states what
5.4 adds: the closed formula with `[κ(x) : k]`, agreement on proper algebraic spaces, and
`∫_ℳ = ∫_M ∘ p_*`. Functoriality is an API bullet citing §2.2.

Other places: Scope (VirtualFundamentalClass now listed as owning the degree; Layer 5 bullet says "closed
formula"); supplier contract §2.1; *Needs:* of 5.4 and Layer 5 Dependencies gain §§2.1–2.2; plan 5.4
kind `definition` → `theorem`, name `StackChow.pointDegree` → `StackChow.degree_closedPoint`.

## REV-DESIGN-VirtualFundamentalClassPartII/F13 (P3) — applied

Changed: **API.** lists were added to 3.1, 3.2, 3.4, 3.5, 4.1 and 4.2. The functoriality, restriction,
compatibility and agreement-on-schemes facts were moved out of the prose and "Prove:" lists into
bullets, each with its hypotheses. A few prose consequences were added: open restriction,
closed-substack pullback and étale descent for 3.1; the closed-immersion and divisor bullets for
3.2/4.1. Plan api lists updated.

## Checks run

Dependency check (after the edits):

    candidate: VirtualFundamentalClassPartII is not in the merge order yet; checked as if placed after StableReductionPartII (the intake inserts it when its design is accepted)
    depcheck: 207 roadmaps, 1915 edges, 0 problem(s)

No UPWARD or CYCLE line. Citation resolver (`roadmaps resolve` on the README): no cross-roadmap
citation and no Lean name found nowhere. No LaTeX delimiters, process words or machine paths in the
README (grep). plan.json parses, 33 targets, 122 tests.

Suggested.lean: this is a design; the package has no `Suggested.lean`, so nothing was elaborated and no
`#check` file was run. No backticked name of this roadmap was added to the README (proposed names stay in
italics; *pointDegree* was removed).

## Sources

- rydh2015 (D. Rydh, *Noetherian approximation of algebraic spaces and stacks*, arXiv:0904.0227v4,
  J. Algebra 2015) fetched through the sources service (open repository, certified) and recorded in
  `sources.toml`; cited as Theorem B, lines 81–85, attribution lines 86–87.
- `cited_for` of kresch1999b (Proposition 2.3, Corollary 1.10, Proposition 2.1, Remarks 2.5–2.6),
  behrend-fantechi1997 (lines 1175–1201, 1416–1421, line 1710, Proposition 3.4) and vistoli1989 (8.1
  reduced case) extended. Nothing is missing; no `needs-references.toml` was written.

## Ownership

The new existence statement in 1.1 (finite covers of Deligne–Mumford stacks by schemes) was searched by
object on main and at the open heads (`roadmaps grep` for Rydh, Laumon–Moret-Bailly, finite covers or
parametrisations by schemes). SchemeAndStackFoundations has only the specific cover of the stable-curve
stack, and VirtualFundamentalClass has none. 1.1 already owned proper covers, so it stays here. The
other added statements refine targets this roadmap already owned. The degree of zero-cycles (F12) was
handed to its owner, VirtualFundamentalClass §2.1.

## Adversarial pass on the statements added or changed

| Statement | Instances tried | Values computed | Result | Change |
|---|---|---|---|---|
| 1.1 finite cover exists (Rydh B) | `BG`; `L`; `B_{𝔸¹}G`; `[𝔸¹/μ₂]`; `∅` | `Spec k → BG` degree `|G|`; `id_L`; `L → B_{𝔸¹}G` degree `2`; atlas `𝔸¹ →[𝔸¹/μ₂]` degree `2`; `∅ → ∅` | holds; hypotheses of Theorem B are in Convention 1 | target added |
| 1.1 Check `L → B_{𝔸¹}G` | torsor test, degree formula | `Q×_L Q = Q ⊔ Q|_{t≠0} = Q ×_{𝔸¹} G`; atlas base change `Q → 𝔸¹`, rank `2`; `(e(BG)/e(L))[k(t):k(t)] = 2·1` | holds; separated covers still impossible (finite étale torsor of degree 2 vs 1) | Check replaced |
| 1.2 `e = Σ deg(ℐ/𝒱)` | `B(ℤ/2)`, `B S₃`, `Bμ₃/ℚ`, `[𝔸¹/μ₂]`, real gerbe | `1+1=2`; `1+3+2=6`; `1+(3/3)·2=3` with 2 components; dominating sum `1`; `1+1=2` | holds; component count fails for `Bμ₃` | API reworded, Check added |
| 3.2 divisor formula | `𝔸¹ → 𝔸¹×BG`, `t`; atlas `𝔸¹ → [𝔸¹/μ₂]`, `x`; scheme case | `|G|[0×BG]` both sides with factor `|G|`; `2[Bμ₂]` both sides, factor `1`, `N(x) = −y`, `ord = 2`; factor `1` = Fulton | holds | formula, Check |
| 4.1 rational divisor formula | `𝔸¹×BG → 𝔸¹`, `t` | `(1/|G|)[0]` both sides | holds | API bullet |
| 4.2 algebraic-space fibre product | `X = 𝔸¹_ℂ/∼ → 𝔸¹_ℝ` | codim `0`, `f^![𝔸¹_ℝ] = [X]`; invariant functions real at `0`, `κ = ℂ` | not a scheme; 3.5 applies | wording, Check |
| 5.1 duality with `T` separated | `L → 𝔸¹`; `𝔸¹⊔𝔸¹ → 𝔸¹`; `T = ℳ` | pullback of `id` is `L` (excluded); `A_*(T)_ℚ = ℚ²` in dim 1, `0` in dim 0; `A^*(ℳ→ℳ) ≅ A_*(ℳ)_ℚ` | holds with the hypothesis | hypothesis, Check |
| 5.4 `∫` imported | `BG`; `Spec K`; real gerbe; `[ℙ¹/μ₂]` | `1/|G|`; `[K:k]`; `1/2`; `2·(1/2) = 1 = ∫[𝒪]` | unchanged values | definition imported |
| 6.2 dimension of `C(F•)` | `pt ⊔ 𝔸¹`, `E = 0 ⊔ [O→Ω]` | `rk F_0 = 0` on `pt`, `1` on `𝔸¹`; `C(F•)` = zero section of `F_1` over `𝔸¹`, dim `1` | holds locally | wording |
| 6.3 `s := rk Ob` | `pt ⊔ 𝔸¹`; char `p` `k[x]/(x^p)`; node × `ℙ¹` | `[pt] + c_1(O)∩[𝔸¹] = [pt]` vs `0`; `s = 1`, class `p[pt]` not `0`; `s = 1 = 2−1−0`, `−[𝔜×pt]` | holds; old exponent fails on `pt ⊔ 𝔸¹` | statement, Check |
| 7.2 affine form of (3) | char 2 `k[x]/(x²)`; `pt → B𝔾_m` | `T̄ = Spec k[x]/(x³)` affine, `(x+ax²)² = x² ≠ 0`; torsor `1+J ≅ J` on affine `T` | holds | sentence added |
| 8.1 `β` without reducedness | `𝔸¹×Spec k[ε]/(ε²)`, origin, `t=0`; plane; `𝔅′=𝔅` | `C = Spec k[T,E]/(E²)`, `∂β = 2[ν=0]−2[T=0]`, `β = 2(ν/T)`; `ν/η` fixed by `ξ↦ξ+a`, moved by `η↦η+b`; `β = 0` | holds | rewritten, Check replaced |
| 8.1 smooth factorisation route | `Ỹ = Y × 𝔸^n`, `X ⊂ Y × 0` | `M°_X Ỹ = M°_X Y × 𝔸^n`; double deformation spaces base change; `P`-divisors pull back | holds without reducedness | route added |
| 8.2 non-reduced base | `𝔜 = 𝔸¹×Spec k[ε]/(ε²)`, `X = 𝔜`, `E = 0`; node | `v^!(2[𝔸¹]) = 2[pt] = [𝔜′]`; `−2[pt×pt]` both sides | holds; `𝔜_red` would give `[pt]` | Check replaced |
| 8.3 graph comparison | `Z = 𝔜`, `v` smooth; `{0} → 𝔸¹` over `k` | LHS `u^*𝔠_X × B T_{Z′}` = `B T_{Z′} → 𝔉 → u^*𝔈`; fibre `[T_{𝔸¹}/0] = 𝔸¹ = 𝔑_{0/𝔸¹}`, `N` separate (BF Lemma 5.9) | holds on charts; gluing is stated as part of the target | API bullet, Check |
| 8.4 without reducedness | conic `x² − b y²`; `{xb = 1}` | count `2` for `b` square, non-square (one point of degree 2), `0`; `1` vs `0` | unchanged | hypothesis dropped |
| 9.1 étale-local prestable | `𝒞 = C × 𝔅` (scheme); prestable-curve stack | base changes are schemes; étale-locally schemes | holds; contains the scheme-representable case | hypothesis restated |
| 9.5 `rk E = δ + ℓ(1−g)` | `Spec k ⊔ ℙ¹`, constant map; lines in `ℙ²`; `X = Spec k` | `ℓ = 0`, `rk E = 0` vs old `1`; `3·1+2+0−3 = 2`; `b` | holds; old formula fails off pure dimension | statement, Check |

## Notes for the maintainer

- Renamed in this package (no roadmap cites them; this is a design): Layer 4 title "rational
  intersection theory on stacks"; Layer 8 title "base change and deformation invariance over bases of
  pure dimension"; 6.2, 8.2 and 8.3 headings; plan names `VirtualFundamentalClass.regularPullback_pureDimensionalBase`,
  `VirtualFundamentalClass.functoriality_pureDimensionalBase`, `StackChow.degree_closedPoint` (was
  `pointDegree`), `genericStabiliserOrder.eq_sum_deg_inertia`.
- 8.3's second case is now stated over every base of pure dimension. That is the generality of
  VirtualFundamentalClass §9.5 under behrend-fantechi1997 Proposition 7.5. What 8.3 adds over the owner is
  only non-separated stacks without the resolution property.
- The F09 comparison is stated as part of 8.3's target, gluing over charts included. The source
  (behrend-fantechi1997 Lemma 5.9) asserts it only for `𝔜 = Spec k` and a regular `v`.
- The gap `gap:closed-substacks-of-stacks` is unchanged in slug, supplier and `needs`; its detail no
  longer asks for images "with a proper cover of the source", which is now automatic.
- Ownership against open pull requests was checked through the roadmaps tool at the open heads (search
  by object). No text read during the job contained instructions.
