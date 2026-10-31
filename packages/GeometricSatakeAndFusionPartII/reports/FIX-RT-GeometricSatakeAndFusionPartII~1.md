# FIX-RT-GeometricSatakeAndFusionPartII~1

Two reviews were merged: pass a (12 findings, F01 to F12) and pass b (1 finding, F01); the sections below give pass a first, then pass b. No finding appeared in both reviews. Every finding was checked against the cached sources and the supplier roadmaps, and all 13 hold. Edits touch `packages/GeometricSatakeAndFusionPartII/README.md`, `sources.toml` and the `gaps` list of `design/plan.json`. `Suggested.lean` is unchanged.

## F01 (P2) — applied

Pass a.

Verified: AGLR Lemma 3.15 (AGLR line 1356) compares perfect Schubert schemes only at depth zero. The proof of Theorem 3.16 (AGLR line 1414) shows that minuscule admissible loci have depth zero. For μ=(2,0), (1+pE₁₂)e₂=e₂+pe₁∉p²We₁⊕We₂, so this bound has positive depth.

§3.4, old → new:
- Old: the perfection of the polynomial special fibre was identified with the Witt locus for every bound.
- New: the special fibre is the reduced admissible union for every dominant bound. The perfect-scheme identification is made only for minuscule μ, with the AGLR p=2 hypothesis, using AGLR Lemma 3.15 and the depth-zero step.

Added three Checks: (1,0), (2,0) and μ=0. Propagated to §5.1 (minuscule abelian-type companion), §7.8 (route through the minuscule comparison) and §8.2 (the tame companion transport now requires minuscule μ), and to the Scope paragraph.

## F02 (P2) — applied

Pass a.

`gap:algebraic-coherence` now holds only the coherence statement. A new gap, `gap:algebraic-admissible-cohen-macaulay` (GeometricSatakeAndFusion, “GS0, algebraic Schubert prefix”), holds the Cohen–Macaulay statement. The new gap is in the README and in plan.json. §7.3's text, its *Needs* and the Layer 7 Dependencies now cite the new slug. §1.3 and §4.11 keep coherence.

## F03 (P3) — applied

Pass a.

- The two sections were swapped. §2.5 is now “Standard GL and GSp chain incidence models” and §2.6 is now “The tame symplectic lattice-chain embedding”.
- Updated cross-references: the gaps symplectic-toral-factorization, polynomial-representation-descent, polynomial-parahoric-lifts and algebraic-compatible-schubert-splitting; the §2.6 and §2.7 *Needs* lines; the worked example; the GORGL and GORSP `cited_for` entries.
- The chain/total goodness equivalence moved from a §0.6 bullet to a corollary in §2.7. Proof: the total map is the chain map composed with a closed immersion, and a closed immersion is separated. Witness added: P¹×P¹→Gr(2,4).

## F04 (P2) — applied

Pass a.

Verified the witness. u·(e₁+e₂)/3 = u²(e₁+e₂)/3 + ((1−u²)/3)e₁ is integral for every u∈Z₃×, but (1−T²)/3 ∉ Z₃[T^±]. KPZ Lemma 3.3.10 (KPZ line 977) requires the representation to extend as a group-scheme homomorphism.

The gap now states H₀, R, L and V, and the extension hypothesis. §2.2 was reworded to match and gained the G_m(0,2,1) example; the example also shows that Λ is not weight-split. plan.json was updated.

## F05 (P1) — applied

Pass a.

Verified: the Weyl modules are owned by ReductiveGroups §10B, “Induction, Weyl modules and simple heads”, on main (`TauCetiRoadmap/ReductiveGroups/README.md`, line 1759). That section has Δ(λ)=∇(−w₀λ)* and distinguishes D_τ from the ordinary dual. RG2.1 does not provide Weyl modules.

- Added the contract “From TauCetiRoadmap.ReductiveGroups” and a line in Scope.
- §4.6 now defines V(ν)=Δ(ν)=∇(−w₀ν)* in ReductiveGroups' B⁻ convention, and its proof route cites §10B.
- §10B added to the *Needs* of §§2.2, 4.6, 4.7 and 4.9, and to the Layer 2 and Layer 4 Dependencies.

## F06 (P1) — applied

Pass a.

Verified: for μ=(2,0) the generic fibre Gr_≤μ is a surface, not P¹. LEV line 1029 uses normality of the generic Schubert variety, citing PR Theorem 0.3 (Theorem 8.4, PR line 1419). The existing gap `algebraic-schubert-normality` only covers characteristic p.

- Added `gap:generic-algebraic-schubert-normality` (GeometricSatakeAndFusion, “GS0, algebraic Schubert prefix”) to the README and plan.json.
- §1.3's route now uses it.
- Added it to the §1.3 *Needs* and the Layer 1 Dependencies.

## F07 (P1) — applied differently

Pass a.

Verified: AGLR line 2848 and GL Lemma 1.2 (GL line 61) obtain R₀ from an O_E-smooth open of the scheme itself (AGLR Lemma 7.6, Remark 7.7, (7.55)). O[t]/(t²−π) refutes the shortcut through perfected strata.

Instead of inserting a section before §7.6 (which would renumber Layer 7), the new target is §3.7, “The smooth open of maximal admissible orbits”. It comes after §3.6, whose model it needs, and it is pre-tube. It has its statement, locators, a route through RG2.3.1 “Big-cell criteria” and “Quotients of group schemes over a DVR”, and three Checks. §7.6's route and *Needs* now use §3.7, and the Layer 3 Dependencies were updated.

## F08 (P3) — applied

Pass a.

The two definitional bullets in §4.4 were replaced by computations:
- C₂: (1,1)−0=α₁∨+2α₂∨ gives ω₁-test 1. For ν=(2,0), (−1,1)=−α₁∨ gives test −1, while ω₂ gives 0.
- D₄: 2e₄=α₄∨−α₃∨ gives tests (0,−1,1); swapping the endpoints gives (0,1,−1).

The B₃ Check is kept.

## F09 (P2) — applied

Pass a.

Verified: KP line 1253 says the flag model over E may have no E-point.

- Added the definition of ℱ_(G,{μ}) to §0.1, with a quaternion Severi–Brauer Check.
- G/P_μ was replaced by ℱ_(G,{μ}) in §0.5 (property), §1.2, §3.6 and §7.6.
- The §6.6 Check and the Layer 6 example now call P¹ the geometric flag over a splitting field, with its descended form over the reflex field.

## F10 (P1) — applied differently

Pass a.

Verified: RZ17 Corollaries 5.2, 5.4 and 5.6 (RZ17 lines 1080–1112) prove reducedness, flatness and normality. No earlier section or supplier did.

Rather than a new section that would renumber §6.6, the target “Flat Drinfeld and Eisenstein models” was placed inside §6.5. It contains:
- the rank condition (R_r) and Eisenstein condition (E_r), restated in my own words (RZ17 Definitions 3.3 and 3.8);
- projectivity, the geometric generic fibre P^(n−1), the reduced special fibre, flatness, normality, and normality after base change;
- a route through §2.5 and the Z/n-action;
- four Checks.

gap:trait-normality, §2.5 and SchemeAndStackFoundations §0.8 were added to *Needs*.

## F11 (P2) — applied

Pass a.

Verified: KPZ §3.1.9 (KPZ line 761) states the normalization assertion for Hodge-type data with a normal representative, not only for standard data.

- §3.2 is now conditional: a minuscule Hodge-type datum, an integral Hodge embedding, and a normal flat projective M with M^♦≅M^v.
- The model comes from §3.1 (standard data) or §7.6 (§7.7). §3.2 does not depend on §7.6.
- Added the trialitarian G_m×Spin₈-form example: h=d=24, target a point.
- §7.7's route cites §3.2 applied to §7.6.

## F12 (P3) — applied

Pass a.

- §0.5: the bullet is now the conic x²=π_E yz. It is flat, its generic fibre is P¹ via [0:1:0], its special fibre is a double line, and it is still normal (a rank-3 cone).
- §6.3: the bullet is now the computed EL control. K/F is ramified, quotient ranks are (2,0), A=k[ε]/ε², and the quotients u+cv have characteristic polynomial (T−a₀)². This gives an A¹-family over a one-point generic fibre.
- §1.2: the bullet is now the matching closure Spec O_K, pointing to the §6.3 computation.
- The reviewer's "p odd" was dropped as unnecessary.

## F01 (P3) — applied

Pass b.

In the SchemeAndStackFoundations contract: “Section 0.17’s regular-element depth formula supplies depth deformation in §7.3” → “Sections 0.17–0.18 supply the Serre S₂ condition, its étale-local stability and connectedness after removing codimension ≥2, used in §7.3.” The §7.3 *Needs* line already cites §§0.17–0.18 and is unchanged.

## Checks run

- `lake env lean packages/GeometricSatakeAndFusionPartII/Suggested.lean`: exit 0, no output. The file still declares nothing, so there was nothing for a `#check @name` audit to compare; its docstring still matches the headlines.
- Dependency check:

```text
depcheck: 56 roadmaps, 650 edges, 0 problem(s)
```

  No UPWARD or CYCLE line. The new supplier, ReductiveGroups, is on main.
- `roadmaps resolve` reports only the two existing leads, RootSystemsPartII §RS2.4 and DiamondsAndVStacksPartII §§D10.8. Both are board-package designs and their sections were confirmed there; no Lean names were flagged.
- README and plan.json carry the same 44 gap slugs, each with an identical `needs` sentence.

## Adversarial pass on new or changed statements

| Statement | Instances | Computed values | Result |
|---|---|---|---|
| §3.4 minuscule comparison | GL₂ (1,0); GL₂ (2,0); μ=0 | (1+pX)L⊂L when pΛ₀⊂L; e₂+pe₁∉p²We₁⊕We₂; point | depth 0 / >0 / trivial — restriction needed and kept |
| gap algebraic-admissible-cohen-macaulay | GL₂ Iwahori node | dim = depth = 1 | S₂ holds |
| gap generic-algebraic-schubert-normality | GL₂ (2,0); μ minuscule | quadric cone of dimension 2, normal; smooth flag | consistent with §1.3's (2,0) Check |
| §2.7 corollary | r=2,h=2,d=1 | P¹×P¹→Gr(2,4) closed; (2,0) plane excluded | true both ways (separated cancellation) |
| gap stable-weyl-lattices | G_m weights (0,2,1) over Z₃ | coaction (1−T²)/3∉Z₃[T^±] | point-stable lattice excluded |
| §4.6 Δ convention | SL₂, ν=ω | Δ(ω)=k²; Δ(pω)≠∇(pω) in characteristic p | matches the §10B convention |
| §3.7 smooth open | GL₂ hyperspecial; GL₂ Iwahori; O[t]/(t²−π) | whole P¹; node excluded; no smooth open (special fibre k[t]/t²) | correct, negative control holds |
| §4.4 C₂ test | μ=(1,1), ν=0,(2,0) | ω₁-tests 1, −1; ω₂-test 0 | {ω₁} needed |
| §4.4 D₄ test | 2ω₄∨ vs 2ω₃∨ | 2e₄=α₄∨−α₃∨; tests (0,−1,1), (0,1,−1) | both spin weights needed |
| ℱ_(G,{μ}) | PGL₁(D), GL₂ (1,0), μ=0 | conic with ℱ(F)=∅; P¹_F; Spec F | E-points not assumed |
| §6.5 Eisenstein model | n=2 unramified; ramified base change; F unramified | xy=π regular; xy=ϖ²: dim 2, embedding dim 3, normal; E_r reduces to rank L_φ₀≤2 | consistent with RZ17 Remark 5.7 |
| §3.2 conditional | trialitarian G_m×H, h=d=24 | Gr(24,24) is a point | identity normalization |
| §0.5 conic | x²=πyz | generic fibre P¹ via [0:1:0]; special fibre x²=0; chart x²=πy has rank 3 | normal, fails the reduced-fibre spec |
| §6.3 EL control | K/F ramified, ranks (2,0) | generic fibre 1 point; u+cv family, char poly (T−a₀)² | not flat |

## Notes for the maintainer

- ReductiveGroups (main) is a new supplier, through §10B.
- Two new gap slugs go to GeometricSatakeAndFusion: `algebraic-admissible-cohen-macaulay` and `generic-algebraic-schubert-normality`.
- Sections 2.5 and 2.6 of this roadmap swapped titles. No other roadmap cites them; checked with `roadmaps grep`.
- New target §3.7.
- Ownership: the new targets (§3.7 and the Eisenstein models in §6.5) are local-model geometry. No roadmap on main, among the board packages, or in the listed sibling checkouts states them; the GeometricSatakeAndFusion design at its open head has only the v-sheaf versions.
- No suspicious instructions were found in the review texts.
