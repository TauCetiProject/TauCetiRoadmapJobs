# Repair report: red-team round 1 of GlobalShtukasAndFunctionFieldLanglandsPartII

Two reviews were merged. Review a (pass a) has findings F01–F07 and review b (pass b) has findings F01–F04; the identifiers repeat across the two reviews, so each finding is headed by its own identifier under the heading of its review. No two findings overlap in content, so each one is settled separately below. Every finding was checked against the cited source lines, the parent and supplier roadmaps, and the README itself.

# Review a

## F01 (P2) — applied differently

The witness holds. Take ξ=3^deg on G_m over 𝔽₄(t). Every admissible Ξ contains an element of degree d≠0, which acts by 3^d≠1. The parent's decomposition (GlobalShtukasAndFunctionFieldLanglands §§5.9–5.10) is a decomposition of the Ξ-invariant cusp space, and FunctionFieldArithmetic §6.2 requires χ to be trivial on Ξ. So no parameter belongs to ξ.

The suggested repair (a global degree-character twist with Weil-group parameters) is not needed. Its source works with a narrower class: ghs line 236 defines A₀(G) as the cuspidal representations with central character of finite order.

Changes:
- §2.1: occurrence is now defined for reductive G on the Ξ-invariant cusp module A₀(G,U,Ξ,E). A cuspidal representation enters it only when its central character is trivial on Ξ, and a central character of finite order is trivial on a finite-index sub-lattice. Added a Check for the witness.
- §§4.2 and 4.4: ξ and the central character of π must have finite order. In §4.4 this makes π discrete series, so §4.3 now applies. The infinite-order case goes through the existing local unramified twist (reductive-central-reduction contract, twist compatibility of §3.3), as §4.5 already does. Added Checks: ξ=3^deg, and St⊗χ with χ(ϖ)=3.

## F02 (P2) — applied

Verified: lh line 248 and lh line 1574 assume a parahoric group scheme. In §3.1, "G connected reductive with a smooth model" became "𝒢 a parahoric group scheme over C with connected reductive generic fibre … congruence subgroups enter as levels". Added a Check: the congruence model of G_m (special fibre G_a, points 1+zO_v) is smooth but not parahoric. No other place uses "smooth model".

## F03 (P3) — applied

Verified: ghs line 329 defines purity with one common weight, which is not the integer-weight geometricity of ch26 line 323. "ghs, §2.2, Definition 2.5, pp. 7–8" was removed from the locators of §0.1 and §0.2 (the only two places it appeared) and from the ghs locator in `sources.toml`.

## F04 (P3) — applied

Recomputed in the coordinates of ch26 line 1039. On ½ω₁ the half-spin pairings are ⅛(4−2k) with k even, giving ½, 0, −½ with multiplicities 1, 6, 1. On ½ω₂ the pairings are ±¼ (4 and 4); on ½ω₄ they are ±¼. The vector module gives ±¼ on ½ω₁ and ½ω₂, and 0, ±½ on ½ω₄. For D₆ the highest half-spin weight pairs to 3/4 on ½ω₁ and 1/2 on ½ω₂. The Check was replaced with these values and the n mod 4 switch.

## F05 (P3) — applied

Verified: for the unramified quadratic norm-one torus, ᴸT=G_m⋊C₂, and the trivial character gives the swap matrix, with eigenvalues 1 and −1, both of weight 0. The §3.4 Check "Frobenius q^(ρ̂), integral powers of q^(1/2)" became a split/nonsplit statement with this example. The §0.1 Check "trivial parameter … all weights 0" is still true and was kept.

## F06 (P3) — applied

Replaced four Checks:
- §0.1: GL₂ with diag(2,3) at q=4 has weights 1 and log₂3.
- §5.2: the lifts ±I have real part 0 but traces ±2.
- §6.4: the constant quadratic cover has eigenvalues 1 and −1, and its nonconstant constituent is realisable.
- §7.2: I and −I have equal weight patterns (n(0)=2) but traces ±2.

## F07 (P1) — applied

Verified: ReductiveGroups on main, Layer 10 §§10A–10B, owns the rational representation category, the character lattice, Weyl/induced modules, the simple heads L(λ) and Weyl characters. LieHighestWeight Layers 0 and 6 are Lie-module theory. Changes:
- Added a supplier contract "From TauCetiRoadmap.ReductiveGroups".
- Updated Scope, the NilpotentOrbits contract, both §5.1 *Needs* lines, the §8.0 recognition route and *Needs*, and the Layer 5 and Layer 8 Dependencies.

# Review b

## F01 (P2) — applied

Split three compound gaps into six, with the reviewer's wording, in the README contracts and in the `gaps` list of `design/plan.json`:
- `function-field-simple-trace-formula` and `poincare-series-globalization` (FunctionFieldArithmetic §§6.4–6.6);
- `discrete-series-pseudo-coefficients` and `elliptic-orthogonality-open-subgroups` (SmoothRepresentationsOfLocalGroups §SR.3.3);
- `spherical-isogeny-transfer` and `tempered-spherical-generic` (SmoothRepresentationsOfLocalGroups §SR.4.2).

Repointed §§4.2, 4.3, 5.1, 5.4, 5.5 and the Layer 4 Dependencies. §4.3 previously cited no trace-formula contract; it now does.

## F02 (P3) — applied

Verified: ch26 line 372 states the standing hypothesis that G is semisimple and unramified quasi-split at v. Changes:
- §5.4 is now stated for connected semisimple G. The PSU(2n+1) exclusion applies to the simple factors of the adjoint group.
- §5.1 now defines T(G) for semisimple G through G^ad=∏Res G_j, and its local theorem now includes the product and Weil-restriction clauses (unitarity and genericity factorwise; q_F weights versus q_L weights).
- Two Checks added: PGL₂×PGL₃, and Res PGL₂ (weights ±½ relative to both q_F and q_L).

The route is simpler than the reviewer's: the reduction is only local at v, because §§5.2–5.3 already hold for semisimple G. §§5.5 and 6.5 inherit the hypotheses by reference.

## F03 (P3) — applied

Verified against ch26 lines 501, 510, 527, 711 and 729–735:
- §4.6: line 527 → line 501.
- §§6.1–6.3: "Remark 5.8, p. 16" → "pp. 15–16".
- §8.0: added "proof of Corollary 5.7, p. 15".

## F04 (P3) — applied differently

Verified: RG2.5.2 (*dual-isogenies-and-products*) contains only finite central isogenies, products and z-extensions, with no normal-image map.

The reviewer's composite cannot be used. The isogeny (ker Υ)⁰×G₁′→G₁ gives ᴸG₁→ᴸ((ker Υ)⁰×G₁′), which is the wrong direction for the last arrow ᴸG₁′→ᴸG₁. The case GL₂→G_m (det) needs the dual of a quotient by a connected normal subgroup, which no listed item supplies.

The general statement is also false without a hypothesis. The relative Frobenius SL₂→SL₂ has normal image, but it sends roots to p·roots, so it induces no map of dual root data.

Repair:
- Declared `gap:normal-image-l-homomorphisms` (ReductiveGroupsPartII §RG2.5.2), with the kernel hypothesis "kernel ⊇ smooth connected normal K₀ with ker/K₀ central".
- Added the same hypothesis to §3.3, with a Frobenius Check.
- Corrected the description of RG2.5.2 in the contract.

# Checks

- **Elaboration.** `lake env lean packages/GlobalShtukasAndFunctionFieldLanglandsPartII/Suggested.lean` exits 0 with no output. `Suggested.lean` is unchanged and declares nothing, so the `#check @name` comparison has nothing to compare (no declarations, no binders).
- **Dependency check** (exit 0), full output:
  ```
  depcheck: 56 roadmaps, 653 edges, 0 problem(s)
  ```
  There is no UPWARD, CYCLE or `moved:` line. The new suppliers are ReductiveGroups (on main) and the ReductiveGroupsPartII gap; ReductiveGroupsPartII is earlier in the merge order.
- **Citation resolver.** Its only lead is KloostermanSheavesAndBesselIsocrystals §§KB.6. That is a downstream board design, named as a consumer and not used as a supplier.
- **Gap agreement.** All 16 gap slugs agree between the README and the plan (same supplier, same `needs` text).

# Adversarial pass on changed statements

| Statement | Instances | Values | Result |
|---|---|---|---|
| §2.1 reductive occurrence | G_m, ξ=3^deg, Ξ of degree d; ξ of finite order n | 3^d≠1 for d≠0; ξ^n=1, so ξ is trivial on nΞ | First case excluded, second admitted |
| §4.2 finite order | torus with ξ=1; derived group ≠1 | Π=1 with zero adjoint; infinitude unchanged | Consistent |
| §4.4 | St⊗χ, χ(ϖ)=3, q=4 | central value 9; pairs (2,½) → (6,3/2); adjoint ratio 4 = 4 | Twisting back keeps the adjoint |
| §3.1 parahoric | G_m congruence vs parahoric model | points 1+zO vs O^×; special fibres G_a vs G_m | Only the parahoric model is admitted |
| §3.3 kernel hypothesis | Frobenius on SL₂; SL₂→PGL₂ (μ₂); GL₂→G_m (det) | α↦pα (no dual); central kernel; K₀=SL₂ | Excluded / admitted / admitted |
| §5.1 D-type Check | D₄, D₆ | {½,0,−½} (1,6,1) vs ±¼ (4,4); 3/4 vs ½ | Switch modulo 4 |
| §5.1 products / Weil restriction | PGL₂×PGL₃; Res_{L/F}PGL₂ with f=2 | standard pairing ±¼; induced weights ±½ relative to q_F and to q_L | Consistent with §3.6 |
| §5.4 semisimple | product of two PGL₂ with one factor's ν nonzero | that factor's standard pairing ±¼ is excluded | Factorwise criterion holds |
| §3.4 trivial-rep Check | split vs norm-one torus | (1,1) vs (1,−1); weights 0,0 | Geometricity unaffected |
| Checks of §§0.1, 5.2, 6.4, 7.2 | diag(2,3); ±I; quadratic cover; I versus −I | log₂3; traces ±2; eigenvalues ±1; n(0)=2 for both | Each Check now separates the two cases |

# Notes for the maintainer

- **Renamed gap slugs.** `function-field-globalization`, `elliptic-pseudo-coefficients` and `spherical-adjoint-transfer` no longer exist; they were replaced by the six slugs above.
- **New gap.** `normal-image-l-homomorphisms` asks ReductiveGroupsPartII §RG2.5.2 for normal-image L-homomorphisms. No roadmap on main or at the indexed open heads owns them (searched for "normal image").
- **No Lean names changed.**
- **Ownership against open pull requests** was checked through `roadmaps grep` over the 355 open heads and main, for normal-image L-maps, Langlands for tori and global function-field class field theory.
- **No suspicious instructions** were found in the reviews.
- **Re-verification in this run.** The locators the repairs rely on were re-read: ghs line 236 (p. 5, the class A₀(G) with central character of finite order), lh line 248 (p. 5) and lh line 1574 (p. 33) (parahoric group schemes), ch26 line 372 (p. 8, semisimple standing hypothesis), ch26 line 501 (p. 11, Proposition 3.10(5)), and ReductiveGroups §§10A–10B on main. The D₄/D₆ half-spin and vector pairings of the §5.1 Check were recomputed by hand: on ½ω₁ the pairing is (4−2k)/8 for k even (values ½, 0, −½ with multiplicities 1, 6, 1); on ½ω₂ it is ±¼ (4 and 4); for D₆ the highest weight pairs to 3/4 and ½. The elaboration, dependency check and resolver above were re-run on the final files.
