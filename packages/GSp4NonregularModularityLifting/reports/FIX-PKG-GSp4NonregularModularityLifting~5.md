# GSp4NonregularModularityLifting repair report

## F01 (P1) — applied

Dyadic Check (contract "From TauCetiRoadmap.OrdinaryAutomorphicFormsAndModularityLiftingPartII"): "h³=0 and h² = dual H¹" → h⁰=0, hⁱ=0 (i≥4), h²=h¹ of the dual Selmer group, h³=h⁰(F(S)/F⁺, ad r̄(1))=1; the (B,b)j action fixes I₂; Euler count χ=−5 gives h¹=5=g, h³=0 would give 6. Kept the Tr(I₂)=0 and survival sentences; added the BCGP25 omission note and Tho17.

Evidence. Tho17 Lemma 2.15 (Tho17 line 433, p.10) states h³_{S,T}=h⁰(F(S)/F⁺, ad r̄(1)) for the complex whose degree ≥2 terms are H^i(F(S)/F⁺, ad r̄) and ⊕_v H^i(F⁺_v, ad r̄) (Tho17 lines 336–346); the µ_v only enter in degrees 0–1. Tho17's own Euler count (Tho17 line 614, proof of Proposition 2.21) uses h³=1: h¹=h¹_{S⊥}−2+|T|+|Q|−[F⁺:ℚ]n(n−1)/2. At p=2 the mod-2 cyclotomic character is trivial, so ad r̄(1)=ad r̄; (B,b)j acts by X↦−BXᵗB⁻¹, sending I₂ to −I₂=I₂; Schur leaves only scalars, so h⁰=1. BCGP25 line 5569 asserts vanishing outside degrees 1 and 2 without justification for h³. The supplier's accepted design (board main, `packages/OrdinaryAutomorphicFormsAndModularityLiftingPartII/design/README.md` §1.2 item 2 and its "Corrections to the sources") agrees. Tho17 was registered in `sources.toml` through the sources service (institutional repository copy, certified) and added to References.

Pattern search: `h³`, `h^3`, "degree three", "Euler" over README, Lean docstring and plan gaps: the only dyadic complex statement is this bullet. The CG fixed-multiplier presentation (§8.1, `gap:gsp4-cg-selmer-presentation`) is a different complex at odd p and is unaffected.

## F02 (P2) — applied

"OL.1–OL.3", "OL.4–OL.5" and the slash-named targets → supplier sections: §§2.1–2.2, 3.1–3.2, 4.7–4.8 (p=2) and §§5.4–5.6, 6.3–6.4 (p>2), with near adequacy §1.3 and reasonableness §5.2 (F03). Rewritten in Scope, both contract paragraphs, both gap sentences, §11.4 (three places), Layer 11 Dependencies, Conditional theorem contracts, `Suggested.lean` docstring and the two plan gaps.

Evidence. The accepted design on the board's main has Layers 1–6 with numbered subsections and no `OL.` label; its headings: 2.1 universal ordinary Hecke algebra at p=2, 2.2 Hida theory at p=2, 3.1 ordinary global problem and R^{T,ord}, 3.2 dimension bound, 4.7 finiteness, 4.8 reduced R=T, 5.4 seed data, 5.5 selected problems, 5.6 Galois representation over the Hida–Hecke algebra, 6.3 reduced R=T, 6.4 finiteness; its "Downstream consumers" names this roadmap for 4.7–4.8, 6.3–6.4, 1.3 and 5.2. I added §3.1 to the reviewer's list because the contract names the ordinary global ring R^{T,ord}, which §3.1 defines. The six hypotheses of its Layer 4 introduction match the README's dyadic list; its §5.4 (5) carries q_v≡1 modulo 9 at p=3. After the edit `grep -c 'OL\.'` is 0 in README, `Suggested.lean` and `design/plan.json`. Both gaps are kept (the supplier is a design without a package); their `section` fields are now "§§1.3, 2.1–2.2, 3.1–3.2, 4.7–4.8" and "§§5.2, 5.4–5.6, 6.3–6.4".

## F03 (P2) — applied

`gap:integral-enormity-and-oddness` narrowed to "BCGP25 integral enormousness (Definition 7.1.1) with its exact adjoint condition, coefficient field and restriction behavior", section "§§7.4, 7.9–7.12" → "§§7.10–7.11". Near adequacy → OrdinaryAutomorphicFormsAndModularityLiftingPartII §1.3; GSp₄-reasonableness → its §5.2; strong residual oddness → new contract PotentialAutomorphyInfrastructurePartII PL.4; tidiness → ArithmeticGaloisRepresentations §7.11.

Evidence. Supplier design §1.3 (near adequacy, BCGP25 Definition 5.3.3, BCGP25 line 5426) and §5.2 (GSp₄-reasonable, which its scope says "is defined nowhere else and is owned here"); PotentialAutomorphyInfrastructurePartII design (board main), PL.4 "Strong residual oddness at a real place (p = 2)" = Tho17 Definition 3.3 (Tho17 line 708) = BCGP25 Definition 5.2.1 (BCGP25 line 5249). ArithmeticGaloisRepresentations at its open head: §7.4 has only total oddness, §7.9 adequacy, §7.10 residual (ACC+) enormity, §7.11 `ResidualImage.GSp4.IsTidy`; `roadmaps grep` for "nearly adequate", "residually odd", "integrally enormous": no match anywhere. Edits: Scope paragraph, AGR contract (tidiness §7.11 named), new `### From TauCetiRoadmap.PotentialAutomorphyInfrastructurePartII`, §11.2 closing sentence (A2, A4, B2, B3 each with one supplier) and *Needs*, Layer 11 Dependencies, and the integral-enormity gap now attached to the §10.1 *Needs* line and Layer 10 Dependencies (it was declared but cited by no *Needs* line). The slug is kept as the gap's stable identifier.

## F04 (P3) — applied

§8.3: "Neatness may be deduced from CG Assumption 4.1(H1) with its explicit scalar witness" → neatness follows for p≥5 when r̄ is surjective onto GSp₄(𝔽_p), from a scalar λ≠±1 (CG20 p.813, line 532); otherwise Assumption 4.2 stays a hypothesis, H1 only excluding ζ_p from ℚ(ad⁰r̄). Route sentence matched; one Check added.

Evidence. CG20 line 521: H1 is "ℚ(ad⁰r̄) does not contain ζ_p". CG20 lines 532–536: surjective r̄ with similitude a power of ε contains a scalar λ≠±1; if ε̄(σ)≡1 the similitude would be 1, but it is λ²≢1. New Check: p=7, λ=3, λ²=2≢1; at p=3 every scalar is ±1; for Ind_K^ℚ ϱ̄ of CG20 Example 4.11(1) the image over ℚ(ζ_{p^m}) is SL₂(𝔽_p)²⋊ℤ/2 (CG20 line 756), not surjective. Pattern search over "neat", "H1", "Assumption 4.2": §0.4 (lines 263–267) assumes 4.2 and is correct; no other misattribution.

## F05 (P3) — applied differently

§7.3 gains: "CG20 prints Theorem 7.11 with p−2>a; its proof uses only the standing bound p>a−2; for odd r̄, a is even, so p−1>a gives a≤p−3<p−2." §7.1 wording and locator name the integral duality bound (CG20 lines 1988, 1998). New Check at (7,4), (7,5).

Why differently. The discrepancy is real: CG20 line 2058 prints p−2>a, while §7.2's standing hypothesis (CG20 line 1988) and the duality (Sym^{a−2})^∨≅Sym^{a−2}⊗det^{2−a} (CG20 line 1998) need only p>a−2, and the proof (CG20 lines 2066–2175) uses Lemma 7.9, Lemma 7.10 and characteristic-zero classification, nothing more. The suggested rationale "which is what the a=p−2 case of §§8.2–8.3 needs" is false: oddness forces ν(c)=(−1)^{1−a}=−1, so a is even (README Conventions); with p odd, a=p−2 is odd and never occurs. At (p,a)=(7,5), ν(c)=ε̄(c)^{−4}=1, so CG20 Theorem 9.1 does not include a=5 at p=7, contrary to the review's repair test. Hence the final theorems lie inside the printed range; the README states the target at p>a−2, the generality the proof supports. Source issue below.

## F06 (P3) — applied

AutomorphicBundles contract: "B3.HT.1–3 … Use its rational Hodge–Tate tower and period torsor" → "B3.HT.4, B3.HT.7–B3.HT.8 … full-level Siegel minimal tower and period map (B3.HT.4), rational Hodge–Tate Levi torsor (B3.HT.7), finite-level cohomology of algebraic coefficients (B3.HT.8)".

Evidence. AutomorphicBundles at its open head: B3.HT.1–3 are small-Hasse canonical subgroups, anticanonical affinoids and bounded extension; B3.HT.4, .7, .8 are the objects named. The other B3.HT citations (HodgeTate contract, Layer 2 Dependencies) cite the layer as a whole and stay.

## F07 (P3) — applied

Layer 10 headings 10.6, 10.7, 10.8 → 10.5, 10.6, 10.7; "§10.8" → "§10.7" in Conditional theorem contracts and in the `Suggested.lean` docstring.

Evidence. `grep -n '10\.[5-9]'` after the edit: headings 10.5–10.7 only, plus the two "§10.7" references; Layer 10 reads 10.1–10.7 without gaps. Internal cross-references are by title ("Layer 10 (deformation action on the higher-hida modules)") and need no change. No plan gap mentions a Layer 10 number.

## Checks

- `lake env lean packages/GSp4NonregularModularityLifting/Suggested.lean` from the content checkout: exit 0, no output (about 6 s). Single `import Mathlib`, no Tau Ceti import, no `set_option`, no declarations; only docstring text changed (§§4.7–4.8, §§6.3–6.4, §10.7).
- `#check` pass: `Suggested.lean` declares nothing, so the binder comparison has an empty domain. A scratch file with `#check @ZMod`, `@Module.End.genEigenspace`, `@Module.End.mem_genEigenspace_nat`, `@IsIdempotentElem`, `@TauCeti.ContCohomology.H1` (importing `TauCeti.RepresentationTheory.Homological.ContCohomology.LowDegree`, object file present) elaborated with exit 0; the types match the README's `From Mathlib`/`From Tau Ceti` descriptions (`ZMod : ℕ → Type`; generalized eigenspaces over a commutative ring; `IsIdempotentElem` needs only `[Mul M]`; `H1` carries the topological-group and continuous-action instances). Nothing changed.
- Depcheck (`gate --depcheck … --movable` with the branch's ORDER.txt), exit 0:

```text
depcheck: 56 roadmaps, 658 edges, 0 problem(s)
```

No UPWARD, CYCLE or moved line. The one new edge is PotentialAutomorphyInfrastructurePartII (ORDER.txt line 89, before this roadmap at line 260).
- `roadmaps resolve` on the README: no Lean name found nowhere; one lead, "13: OrdinaryAutomorphicFormsAndModularityLiftingPartII §§2.1: no roadmap … on main or in an open pull request". This is not a defect: the supplier exists as the accepted design on the board's main (`packages/OrdinaryAutomorphicFormsAndModularityLiftingPartII/design/README.md`, board main eefb0e9), every cited number is a heading there, and each citation carries one of its two gaps. The resolver only sees these citations now because they have become section numbers.
- `design/plan.json`: only the three gap entries changed (`needs` and `section`); a structural comparison with the pre-edit file shows no other key changed. All 20 gap `needs` sentences equal their README "What … must provide (gap:…)" lines (script: 0 mismatches).
- `git diff --check`: clean. Structure: 12 layers, 61 numbered targets, 65 Checks blocks.
- Gate failure `tex=8` (TeX-only `_{`/`^{` outside code spans in the README): the eight hits were in four lines of new text. The contract paragraphs for OrdinaryAutomorphicFormsAndModularityLiftingPartII (R^{T,ord} twice) and PotentialAutomorphyInfrastructurePartII (S_{1,π}, R_{S_{1,π}}) now put these symbols in code spans. In PL.4, G_{F⁺} became G_F⁺, as the README writes it elsewhere. In the F04 Check, G_{ℚ(ζ_{p^m})} now sits in a code span. The mathematics is unchanged. The gate's own `scan_tex_residue` now reports 0 hits. The 20 gap `needs` sentences still match the README contract lines (0 mismatches), and `git diff --check` is clean. No heading changed, so no internal link needed updating.

## Ownership and citations

- Ownership against open work, by object: near adequacy, strong residual oddness, GSp₄-reasonableness, integral enormousness: `roadmaps grep` over main and all 367 open heads finds none; the board designs above own the first three. Integral enormousness has no owner; its gap stays with ArithmeticGaloisRepresentations §§7.10–7.11, where residual enormity lives. This roadmap states none of these predicates and declares no Lean name.
- Citations checked at their current copies: OrdinaryAutomorphicFormsAndModularityLiftingPartII and PotentialAutomorphyInfrastructurePartII at board main; ArithmeticGaloisRepresentations and AutomorphicBundles at their open heads via `roadmaps show`. Ownership against open pull requests whose files the brief does not provide was checked only through `roadmaps grep`.
- Merge order: the branch's ORDER.txt does not yet list OrdinaryAutomorphicFormsAndModularityLiftingPartII; the board's main lists it at line 264, before this roadmap at 269. Its citations predate this round and depcheck reports no problem.

## Adversarial pass (statements added or changed)

| Statement | Instances tried | Values computed | Result | Change |
| --- | --- | --- | --- | --- |
| Dyadic h³ | p=2, n=2, r̄\|G_F absolutely irreducible | ad r̄(1)=ad r̄; (B,b)j·I₂=−BI₂B⁻¹=−I₂=I₂; h⁰(ad r̄(1))=1 ⇒ h³=1 versus printed 0 | h³=1 | F01 |
| Dyadic Euler count | d=2, #T=3, q=5, h²=1 | χ=1−3−5+2=−5; h¹=1−1+5=5; g=5+3−1−2=5; with h³=0, h¹=6=g+1 | Agrees with supplier presentation | F01 |
| Odd-p contrast | p odd, ζ_p∉F | c acts on scalars of ad r̄(1) by (−1)(−1)=+1, G_F by ε̄≠1 ⇒ h⁰=0 | h³=0 only there | Check text |
| Scalar pairing | n=2 and n=3 in char 2 | Tr(I₂)=1+1=0; Tr(I₃)=1 | Even n vanishes | Unchanged |
| Divisibility in the instance | n=2, d=2 | nd=4≡0 mod 4 | Admissible numerics | Added d=2 |
| Strong residual oddness | n=2, r̄(c_v)=(1₂,1)j and (Ψ₂,1)j | 1₂ symmetric non-alternating; Ψ₂ alternating | Two distinct classes | New contract |
| Near adequacy vs adequacy | A₅ on 𝔽₂⁴ (supplier Check) | H¹(A₅,ad/k)≅k≠0, H¹(A₅,ad)=0 | Nearly adequate, not adequate | Citation only |
| Tidiness scope | p=3 vs p≥3 | AGR §7.11 assumes p≥3; seed B has p>2 | Consistent | Citation only |
| Neatness witness | p=7, λ=3; p=5, λ=2; p=3 | 9≡2, 4≢1; 𝔽₃^×={±1}, λ²=1 | p≥5 needed | F04 |
| Neatness logic | ν=ε̄^{1−a}, a=4, ε̄(σ)=1 | ν(σ)=1 but λ²≠1: contradiction ⇒ q≢1; scalar ratios 1≠q | Witness valid | F04 |
| Non-surjective example | Ind_K^ℚ ϱ̄ | image over ℚ(ζ_{p^m}) SL₂(𝔽_p)²⋊ℤ/2 ⊊ Sp₄(𝔽_p) | 4.2 stays a hypothesis | F04 Check |
| Theorem 7.11 bound | (7,4), (7,5), (7,6), (5,2) | (7,4): 5>4, 7>2, 6>4; (7,5): 5>5 false, 7>3 true; (7,6): 6<6 false so outside p−1>a; (5,2): 3>2 | Printed bound stronger than proof | F05 |
| Oddness parity | a=4, a=5 | ν(c)=(−1)^{−3}=−1 odd; (−1)^{−4}=1 not odd | a even ⇒ a≤p−3 | F05 |
| Integral duality bound | p=5: a=6 (m=a−2=4) and a=7 (m=5) | (Sym^m)^∨=Γ^m(dual) agrees with Sym^m⊗det^{−m} iff m! is a unit: 4!=24≢0, 5!=120≡0 mod 5 | Holds iff p>a−2 | F05 wording |
| B3.HT numbering | B3.HT.1–3 vs .4, .7, .8 | Headings at the open head: canonical subgroups / tower and period map, Levi torsor, finite-level cohomology | Objects now at their numbers | F06 |
| Layer 10 numbering | 10.1–10.8 | 10.5 missing; after: 10.1–10.7 contiguous | Fixed | F07 |
| Gap sections | 20 gaps | README and plan needs equal; three section fields resolve to existing headings | Consistent | F02/F03 |


## Source issues

- **Error** in BCGP25 at §5.4, printed page 123 (BCGP25 line 5567–5571): the source says the cohomology of Thorne's complex vanishes outside degrees 1 and 2 for T nonempty; it should be h³=h⁰(F(S)/F⁺, ad r̄(1))=1 at p=2 (Tho17 Lemma 2.15); affects a stated result.
- **Misprint** in CG20 at Theorem 7.11, printed page 853 (CG20 line 2058): the source says p−2>a; the section's standing hypothesis and the proof use p>a−2 (CG20 lines 1988, 1998); for odd r̄ the two agree on every weight with p−1>a, so no stated result of §9 is affected.

## Notes for the maintainer

- `sources.toml`: new key Tho17 (Thorne 2017, institutional repository author manuscript, certified); BCGP25 locator now lists Definitions 5.2.1 and 5.3.3 and its duplicated tail was removed. The service rewrote the field order of existing entries; values are unchanged.
- The slug `integral-enormity-and-oddness` is kept although it now requests only integral enormousness; no other package references it.
- Names other roadmaps might cite: this roadmap's Layer 10 subsections 10.6–10.8 are now 10.5–10.7 ("Deformation action…", "Projective Satake…", "Characteristic-zero local freeness"). AbelianSurfacesModularity cites this roadmap by end theorem, not by these numbers (not rechecked here beyond its consumer line).
- No suspicious instructions were found in the review text.
