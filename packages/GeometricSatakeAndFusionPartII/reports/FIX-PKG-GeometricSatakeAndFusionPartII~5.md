# FIX-PKG-GeometricSatakeAndFusionPartII~5

## F01 (P1) — applied differently

The finding is right. No supplier owned geometric unibranchness of Schubert varieties at primes dividing #π₁(G^der). gap:algebraic-schubert-normality only covers the prime-to-p range. §7.1 relied on an unnamed "upstream Grassmannian input". §7.4 (GL Lemma 5.4, GL line 459) and §7.3 (GL Proposition 3.4, GL line 281) need the same input.

Changed:
- **New gap.** Added `gap:schubert-geometric-unibranchness` in two places: under the GeometricSatakeAndFusion contracts in the README, and in plan.json `gaps`, with the same needs sentence. The supplier is GeometricSatakeAndFusion, section **GS0, Witt affine flags and components**.
- **Needs lines.** The new gap is cited in the Needs lines of §7.1, §7.3 and §7.4, and in the Layer 7 Dependencies. §7.5 reaches it through §§7.1, 7.3 and 7.4.
- **§7.1.** Its Needs listed `gap:algebraic-schubert-normality`, which is wrong for every p, so that entry was replaced. The prose now names the gap.
- **§7.4.** Added a boundary Check: PU₃ at p=3 is non-normal but unibranch (HLR Example 9.4, HLR line 1860).
- **Sources.** Updated the sources.toml locators and cited_for entries for AGLR and HLR, and the HLR reference entry in the README.

Why "differently":
- **Supplier section.** I named "Witt affine flags and components", not the reviewer's "Equal-characteristic Schubert models…". The objects are Witt partial affine flag varieties in mixed characteristic. GS0 "Witt affine flags and components" (GeometricSatakeAndFusion README at #1235, its line 825) owns them, and it states Demazure spaces but no normality or unibranchness.
- **Needs sentence.** The reviewer's sentence rests on HLR Theorem 1.1, which covers only tame groups over k((t)) (HLR line 64–69). §7.5 has no tameness hypothesis. The general input is AGLR Proposition 3.7 (AGLR line 1222, printed p. 21): every Schubert perfect variety is normal, for every G and every parahoric. This is the result GL line 281 cites. Since perfection is a universal homeomorphism, every deperfection is geometrically unibranch.
- The needs sentence therefore asks for AGLR Prop 3.7 plus its two consequences: unibranch deperfections and components, and constant lowest IC sheaf on the generic Schubert bound (via the split-form Witt Grassmannian, GL line 420). HLR Theorem 1.1 and Proposition 3.4 (HLR lines 69 and 526) are kept as the tame witness.

`gap:algebraic-schubert-normality` is left as it was.

## F02 (P3) — applied

Changes:
- **§0.1.** Old: §0.1 defined only the minuscule datum. New: it also defines a "local model datum with general bound", the same quadruple with {μ} any geometric dominant class. The minuscule datum is the special case, required exactly where a statement says minuscule. General bounds are used by §1.2, §0.4, §3.5, §7.5 and Layer 8.
- **§0.1 Check.** The (2,0) Check now computes 〈(2,0),α〉=2, reflex field F and dim Gr_≤(2,0)=2.
- **§1.2.** The prose now cites the general-bound datum, and its Needs is "§0.1 (general bound)".
- **Suggested.lean.** Fixed the spelling Mirkovic → Mirković in the docstring.

Pattern search: §0.4 (line 255) also uses arbitrary μ and cites §0.1, and it is now covered by the definition. No other occurrence was found.

## Checks

- **`lake env lean` on packages/GeometricSatakeAndFusionPartII/Suggested.lean** (run from the content checkout): exit 0, no output. The file imports `Mathlib` only, so no TauCeti module build was needed. It has zero declarations, so the `#check @name` audit has nothing to compare; no binders changed.
- **Depcheck:** `depcheck: 56 roadmaps, 645 edges, 0 problem(s)`. There is no UPWARD, CYCLE or moved line. The edge count is 645, up from 644, because of the new GeometricSatakeAndFusion gap.
- **plan.json and README contracts:** both have 42 slugs, and every README slug is in plan.json. A mechanical comparison found one pre-existing difference, which this round did not touch: the README text of `gap:algebraic-compatible-schubert-splitting` carries extra locator sentences that plan.json lacks.

## Adversarial pass (changed statements)

| Statement | Instances | Values | Result |
| --- | --- | --- | --- |
| gap:schubert-geometric-unibranchness (perfect normality ⇒ unibranch deperfection) | PGL₂ at p=2, quasi-minuscule | Non-normal singularity (HLR line 79). Its normalization k[[x,y,z]]/(z²+xy) is local, so there is 1 branch, and the perfection is normal (AGLR line 1222). | holds |
| same | PU₃(F′/F) at p=3, μ=(1,0,0) | #π₁=3, so the Schubert variety is non-normal (HLR line 1867) but unibranch (HLR line 72). The lowest stalk of ∇ is F_ℓ, so the bound is 1. | holds; added as §7.4 Check |
| same | split GL₂, any p | π₁(G^der)=1, so the Schubert varieties are normal (HLR line 529). This is consistent with gap:algebraic-schubert-normality. | holds |
| same, wild G | wildly ramified unitary at p=2 | HLR does not apply (tame only). AGLR Prop 3.7 has no tameness hypothesis, and the proof uses Demazure resolutions and Theorem 3.1. | the needs sentence rests on AGLR, not HLR |
| §0.1 general-bound datum | μ=0; μ=(1,0); μ=(2,0) | Generic bound is a point, P¹ (dim 1) and a 2-dimensional bound respectively. 〈(2,0),α〉=2, so (2,0) is not minuscule. | consistent with Checks of §0.1 and §1.2 |

## Maintainer notes

- **New request to GeometricSatakeAndFusion:** `gap:schubert-geometric-unibranchness` asks GS0 "Witt affine flags and components" for normality of Schubert perfect varieties (AGLR Proposition 3.7) and its unibranch and IC consequences.
- **Names:** no Lean names changed, and Suggested.lean declares nothing.
- **Ownership:** checked by object against GeometricSatakeAndFusion at #1235 through `roadmaps grep` and `roadmaps show`. Grepping for unibranch, Schubert perfect and normal found no owner. Other open pull requests were not re-searched this round, beyond that grep across all heads and main.
- **Sources:** none missing; no needs-references file was written.
