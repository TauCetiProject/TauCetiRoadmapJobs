# PKG-GrossZagierAndArithmeticHeightsPartII — package report

Deliverables: `packages/GrossZagierAndArithmeticHeightsPartII/README.md` (15 layers, 103 targets), `Suggested.lean`, `metadata.toml` (`topic = "math.NT"`), `sources.toml` (9 entries), and the top-level `gaps` list of `design/plan.json` (nothing else in that file changed; verified by comparing every other key with the original).

Inputs: the design README and `plan.json` were read in full. There is no `design/review.json` and the `reports/` folder was empty; the accepting review is embedded in `plan.json` under `review` (status accepted, 2026-10-19). Its per-target corrections are already synchronized into the design README, and all of them are kept here.

## Headline theorems

| Headline | README | Status at the pins |
|---|---|---|
| Unramified Kudla–Rapoport identity Int(L) = ∂Den(L) (LZ Thm 3.4.1) | §3.5 | Not statable: needs unitary Rapoport–Zink formal schemes, special cycles and the derived Euler characteristic on formal schemes (no formal schemes in Mathlib or Tau Ceti), and hermitian local densities (absent). |
| Almost self-dual identity (q+1)Int_Y = ∂Den_Λ − Den (LZ Thm 10.5.1 + LRZ Thm 14.6.2) | §4.5 | Not statable: same carriers, plus the auxiliary isogeny space. |
| Exotic smooth KR identity (LL2 Thm 2.7) | §6.8 | Not statable: exotic RZ space; ramified densities. |
| Krämer KR identity (HLSY Thm 1.3) | §8.7 | Not statable: Krämer RZ space; ramified densities with Den′ and c_{2j} (the density polynomial's existence is a theorem, so Den′ cannot be defined without sorry'd data). |
| Unramified and modified arithmetic Siegel–Weil formulas (LZ Thm 15.5.1; HLSY Thms 10.1–10.2) | §§13.8, 13.10 | Not statable: integral models of unitary Shimura varieties, arithmetic degrees with Green currents, Siegel Eisenstein series on U(n,n) and their derivatives. |
| Modularity of the CM intersection series over ℚ (Z §9.1, Cor 10.4) | §12.7 | Not statable: arithmetic Chow groups of the integral models, derived CM cycles. |
| Strongly regular AFL over ℚ_p, p ≥ n (Z Thm 15.1) | §14.6 | Not statable: graph intersections on products of RZ spaces; Jacquet–Rallis orbital integrals with transfer factors. |

`Suggested.lean` therefore has its module docstring (title "Gross–Zagier formulas and arithmetic heights, Part II: target signatures", the README-is-the-roadmap statement, the list above with what each lacks), the namespace `TauCetiRoadmap.GrossZagierAndArithmeticHeightsPartII`, a single `import Mathlib`, and no declarations. The design's normalization witnesses (`rankOneDensity`, `densityDerivative`, `exoticRankTwoCount` and their lemmas) were not carried over: they are polynomial algebra on free variables, not headlines, and their content is kept as README Checks (§§0.9, 5.5).

Elaboration: `lake env lean <absolute path>/Suggested.lean` run from the content checkout exited 0 with no messages at all: 0 `sorry` warnings, no other output. The mechanical `#check @name` comparison was not needed because the file declares nothing; there are no section `variable`s.

## Corrections to the design (what was wrong and what replaced it)

1. **Pins.** The design cited Mathlib `082e2d3…` and Tau Ceti `f790474…`; the content repository pins Mathlib `6b7abb3c…` and Tau Ceti `a91d3aaf…` (lake-manifest.json). Corrected.
2. **"PELModuli M6 extension".** PELModuliPartII now exists (board package, review accepted 2026-10-26) and owns the four RZ spaces, canonical sources, special Hom spaces, product embedding, diagonal graph, the auxiliary isogeny space with its generic projections, the relative/absolute exotic comparison, the exotic Bruhat–Tits strata and components, integral CM moduli, RSZ/exotic/Krämer integral models, Hecke systems and basic-locus uniformization (U0–U9). These are imported by node. PELModuliPartII is later in the merge order (247); the dependency check reports a `moved:` line and 0 problems (below). The alternative — restating its RZ spaces here — would duplicate an accepted owner. Special cycles on these spaces are not in PELModuliPartII and stay here.
3. **CR.7 / R07.2 "delegation loop".** Grothendieck–Messing for Barsotti–Tate groups, with the homomorphism-lifting criterion, is AbelianSchemesAndArithmeticModuli §A4.CR.7.2 (and §A4.7 for abelian schemes). The design's CR.7 request is replaced by this citation; no gap remains.
4. **SF.5 request.** SchemeKTheoryOperations §6.12 (rational multiplicativity of the supported codimension filtration on separated regular noetherian schemes) and §7.7 (supported cycle classes, CH_Y^p ≅ Gr^p K₀^Y rationally, Gr₁G₀ ≅ CH₁ with Zhang §9.1 cited) supply what LL1 §8 and Z §7.6 need; SchemeAndStackFoundations §§5.1, 5.3–5.4, 5.7 supply Chern characters over a field. No gap.
5. **LT.7 lifting-length request.** GrossZagierAndArithmeticHeights §7.2 (the parent) owns the endomorphism-lifting lengths along level-s quasi-canonical lifts in the unramified and the ramified quadratic case; LT.6–LT.7 supply the lifts and degrees. No gap.
6. **"EndoscopicTransferAndUnitaryTraceComparison ET.0".** ET has no Layer 0 and no Jacquet–Rallis content (its layers are 1–6+, ordinary endoscopy). Local JR theory becomes `gap:jr-afl-local-inputs` on ET. Zhang's global relative trace series (Z §§11–12) is owned here as §14.1, built from those local inputs. EndoscopicTransferAndUnitaryTraceComparisonPartII and GanGrossPrasadUnitaryGroups request overlapping JR inputs from ET (gap:jr-local-comparison, gap:relative-fundamental-lemma, gap:relative-finite-transfer); ours is a separate slug because it needs the semi-Lie version, Zhang's transfer factors and the partial Fourier compatibility.
7. **"ArakelovGeometryAndAbelianHeights R35.1".** No such section; the content is §§1.8–1.10. Higher arithmetic Chow groups and star products are absent there and become `gap:arithmetic-chow-star-products`.
8. **MP.0/MP.2/MP.3, AS.1/AS.2, GN.2/GN.3, MC.2, FK slugs.** Resolved to MetaplecticAutomorphicForms §§2.1, 2.5, 2.7, 3.3, 3.3a, 3.3b, 4.5, 5.1, 5.8, 6.2, 6.4, 6.7; AutomorphicLFunctionsAndLocalFactors AL.0; AutomorphicSpectralTheory §§1.1, 1.2, 2.4; GeometryOfNumbersAndQuadraticArithmetic §2.7 (2.7.1–2.7.3), §2.9, §3.2 (3.2.2, 3.2.4–3.2.7); MotivesAndAlgebraicCycles §§2.4, 2.7 with ClassicalAdicEtaleCohomology Layer 8; SchemeKTheoryOperationsPartII node slugs (verified against its plan.json). Strong approximation: AdelicAlgebraicGroups §4.2.
9. **Coherent Siegel–Weil "Ichino leaf".** MetaplecticAutomorphicForms §6.4 (anisotropic Siegel–Weil, GQT Theorem 7.1) covers it; §13.4 is our normalization of c_K on top of it.
10. **Build order.** LZ Lemma 2.8.1 (Tor independence) and Lemma 2.10.1 (properness) use the Bruhat–Tits strata; the design put the strata in Layer 1 after those statements. Layer 0 now has the Deligne–Lusztig varieties (§0.3) and vertex strata (§0.4) before Cartierness/Tor (§0.5) and properness (§0.7). Similarly the Tate-lifting criterion (§1.2) now precedes the primitive horizontal cycles (§1.3) that use it.
11. **LL2 Lemma 2.57.** The source states a_{n−1} > 3 in the two-lattice case (LL2 line 1806); the design wrote a ≥ 3. §6.7 now states a > 3.
12. **Exotic line.** The design described L_X both as image(ι(u)−u) and as the kernel of LL2 Lemma 2.37; only the kernel description is in the source, so §5.2 states that.
13. **Krämer odd-top obligation.** Split out as its own target §8.6 with the exact statement to prove, so that §8.7 is definite; the counterexample to K Lemma 9.6 was recomputed (below).
14. **Zhang Prop. 4.12 at q = n.** Stated in §9.5(b) as an explicit target (the semi-Lie ⇒ group step at q = n); §14.6 keeps the published range p ≥ n and names this step in its route.
15. **§14.7.** The design's "record the conjecture" became a definite target: formulate the regular semisimple AFL, prove the version equivalence for q ≥ n+1, and identify §14.6 as its strongly regular case over ℚ_p.
16. **Downstream.** GanGrossPrasadUnitaryGroups does not consume this roadmap (checked at its PR head); the sentence was not kept. MotivesAndAlgebraicCycles §7.19 takes the almost self-dual identity as a premise; §§4.5–4.6 discharge it.
17. **Sources.** Zhang is cited by section/theorem/equation numbers from arXiv v3 (numbering checked against the published numbers the design used: Thm 15.1, Conj 3.2/3.8, Prop 3.9, Lemma 13.6, Thm 14.6, Cor 14.8, Prop 14.5, Thm 9.4, Prop 7.9, Lemma 4.4, Prop 4.6, Prop 4.12, Prop 5.2, Thm 5.5, Thms 8.1/8.4/8.6, Cor 10.3/10.4, Thm 10.1, Thm 12.14, Thm A.1 all present in v3). HLSY is cited from arXiv v2, whose page numbers agree with the design's author-copy locators (checked for 43 items). Mihatsch–Zhang was read as arXiv v4, whose section numbering differs from the JEMS pages the design used; locators were rewritten to v4 (§3.6 (3.15) fn 3; §3.8 Thm 3.13; §§7.1–7.3 fn 5).

## Duplication sweep (removals)

| Design target | Now owned by | Action |
|---|---|---|
| 3.5 Hermitian uncertainty principle (LZ Prop 8.1.6) | MetaplecticAutomorphicForms §3.3a `weil_hermitianUncertainty` | Deleted; cited in §3.5 and §6.8 Needs. |
| 5.4 Exotic trace-dual strata (dimension t/2−1 per component, vertex-sum incidence) | PELModuliPartII U3 *exotic-components* | Deleted; cited in §§5.1, 5.4, 5.6. |
| 13.3 Admissible RSZ global models (construction, regularity, semistability) | PELModuliPartII U6–U8 | Construction deleted; §13.3 keeps only the hypothesis bundle of K §10.2 that the ASW theorems quantify over. |
| PEL M6 RZ/RSZ/uniformization requests (design "proof inputs" in Layers 0, 1, 5, 7, 10, 13) | PELModuliPartII U0–U9 | Replaced by imports. |
| CR.7 Grothendieck–Messing request | AbelianSchemesAndArithmeticModuli §A4.CR.7.2 | Replaced by import. |
| SF.5 Chow/filtration/Gr₁G₀ requests | SchemeKTheoryOperations §§6.12, 7.7; SchemeAndStackFoundations §§5.1–5.7 | Replaced by imports. |
| LT.7 lifting-length request | GrossZagierAndArithmeticHeights §7.2 | Replaced by import. |
| Design's Lean witnesses (rank-one polynomial, derivative functional, rank-two count) | Mathlib `Polynomial` algebra | Not headlines; kept as README Checks only. |

Checked with no duplicate found: unitary Deligne–Lusztig varieties and their Coxeter cohomology (no owner on main or at the open heads; `roadmaps grep 'Deligne.Lusztig'` finds only affine DL varieties elsewhere), special cycles/Kudla–Rapoport cycles (`Kudla.Rapoport` finds only citations), local densities for ramified hermitian lattices (GN §3.2 is unramified only; GeometryOfNumbersAndQuadraticArithmeticPartII is dyadic quadratic arithmetic), star products and higher arithmetic Chow (no owner), Zhang's fat CM cycles (PELModuliPartII says it uses no target from Z §7), automorphic line bundle ω on the unitary canonical model (ShimuraVarieties has no automorphic vector bundles; AutomorphicBundles is not used), Siegel Eisenstein series on U(n,n) specialized to Weil sections (AutomorphicSpectralTheory and MetaplecticAutomorphicForms §6.2 supply the general objects; §13.1 is the unitary specialization). Ownership against open pull requests was checked with `roadmaps grep`/`show` over the 354 indexed heads and the sibling list in the brief; the board packages PELModuliPartII, SchemeKTheoryOperationsPartII, LubinTateFormalModulesAndQuasiCanonicalLifts, EndoscopicTransferAndUnitaryTraceComparisonPartII and GeometryOfNumbersAndQuadraticArithmeticPartII were read in the board checkout.

## Supplier gaps (plan.json `gaps`)

The design's 13 `gaps` entries were internal proof obligations without suppliers. They are replaced by four supplier gaps; the internal obligations are now targets or imports: RZ/RSZ models → PELModuliPartII; nonaffine filtration → gap below; quasi-canonical lengths → parent §7.2; Deligne–Lusztig cohomology → §§2.1, 5.4 (Lusztig76); ramified densities → gap below; Krämer type-zero criterion → §7.4; Krämer odd-top → §8.6; arithmetic Chow/Green → gap below plus §§12.3–12.5; Siegel–Weil/archimedean → MP §6.4 and §§13.4, 13.7; Jacquet–Rallis → gap below plus §14.1; maximal order/base case → §§9.7, 14.6; q = n boundary → §9.5(b); general AFL → §14.7.

| slug | supplier | section | needed by |
|---|---|---|---|
| ramified-hermitian-densities | GeometryOfNumbersAndQuadraticArithmetic | §3.2 | §§6.1, 6.3, 8.1, 8.2 |
| nonaffine-formal-filtration-product | SchemeKTheoryOperationsPartII | FK.2 | §§0.6, 1.1, 6.2, 7.6 |
| arithmetic-chow-star-products | ArakelovGeometryAndAbelianHeights | §§1.8–1.10 | §13.6 |
| jr-afl-local-inputs | EndoscopicTransferAndUnitaryTraceComparison | Layers 2 and 4 | §§9.3, 9.5, 9.7, 14.1 |

Each `needs` is the README's "What <Supplier> must provide (gap:<slug>): …" sentence verbatim.

## Notions moved down from later roadmaps

None. The only later roadmap cited is PELModuliPartII, accepted by the dependency check as a `moved:` supplier (this roadmap goes right after it; nothing between positions 234 and 247 consumes this roadmap). No other later roadmap is cited.

## What the README could not support

- Lusztig's Coxeter-variety computation (§2.1, §5.4) is cited by locator only (Lusztig76 is paywalled; recorded `uncertified`); its statement was checked as restated in LZ Lemma 5.3.1 (LZ lines 1002–1015) and LL2 Lemma 2.32.
- The archimedean local identity behind §13.7 (Liu; Garcia–Sankaran) and Mihatsch's maximal-order theorem behind §9.7 are cited through the statements of LZ Theorem 15.3.1 and Z Proposition 3.9 that invoke them; the original papers were not fetched.
- §8.6 and §9.5(b) are stated as targets whose published proofs have the recorded gaps; the README gives what must be proved, not a proof.

## Adversarial pass

Values computed by hand; "q" is #k_{F₀}. One row per target.

| § | Statement | Instances tried | Values | Result | Change |
|---|---|---|---|---|---|
| 0.1 | H(x,y)=h(y,x) preserves norms, duals, invariants | a ∈ O_F scalar; rank one Gram ϖ^a | H(ax,y)=āH(x,y), h(ax,y)=a h(x,y); dual ϖ^{−a}O_F x both | holds | Checks added |
| 0.2 | Z(L) closed, depends on span | x vs ax (a unit); x=0; val<0; h(u,u)=1 | Z(ax)=Z(x); Z(0)=N_n; ∅; Z(u)≅N_{n−1} | holds; x=0 excluded from Cartier | 4th Check (negative valuation) added |
| 0.3 | Y_Ω smooth projective dim d | d=0,1; q=3 | point; Fermat curve with q³+1=28 points | holds | point count Check added |
| 0.4 | Strata V(Λ)≅Y, dims (t−1)/2, incidence by sums | t=1,3; L⊄Λ | point; curve; not contained | holds | — |
| 0.5 | Cartier or empty, D(x) regular, Tor independence | val 0,1; x=0; y=ax | D(x)=Z(x); x=0 excluded; Tor₁(O_Z,O_Z)=O_Z(−Z)≠0 for dependent labels | holds; flatness not asserted (LZ line 435 says Cartier only) | ordered after §0.4 |
| 0.6 | Derived class, Int as alternating lengths | transverse points; self-product of Cartier D | ordinary length; [O_D]−[O_D(−D)] | holds | — |
| 0.7 | Basis independence; proper support | n=1, val 1; rank n−1; GL_n(O_F) change | Spec O_F̆/ϖ; not killed by ϖ^N; same Int | holds | — |
| 0.8 | Int_n(M⊥L₂)=Int_{n−r}(L₂) | r=0; n=2, ⟨u⟩⊥⟨x⟩ | identity; (a+1)/2 | holds; integrality of L₂ needed | — |
| 0.9 | Int=(a+1)/2=−D′(1) | a=1,3,−1 | 1=1; 2=−(0−1+2−3); Z=∅ gives 0 | holds | — |
| 1.1 | Horizontal + vertical decomposition | n=2 unit L♭; vertical component; curve C⊂D | vertical class 0; not in closure; χ(O_C)−χ(O_C(−D))=deg D|_C vs 1−g | holds | — |
| 1.2 | Hom = i_K⁻¹(L_z); W∩L type ≤ 1 | n=1; I₂ with F(1,ϖ^k) | unit norm 1+ϖ^{2k}, type 0 | holds | — |
| 1.3 | deg Z(L♭)_H = D_{L♭}(−q) | n=2, a=1; a=2 | q+1 = (1−X)|_{−q}; q²+q+1 = (1−X+X²)|_{−q} | holds | a=2 Check added |
| 1.4 | Multiplicities = interval counts | colength 1; L♭_Λ=L♭ | 2; 1 | holds | — |
| 2.1 | Coxeter eigenvalues (−q)^m in degree ⌊m/2⌋+d | d=0; d=1; wrong sign +q | 1; {1,−q} on H¹_c, q² on H²_c; #Y₁=1+q²+q(q²−q)=q³+1 vs 1+2q²−q³ | holds | first draft Check wrong (claimed eigenvalue 1 for q^m), replaced |
| 2.2 | Tate classes spanned by strata | i=0; d=1,i=1 | fundamental class; point class | holds | — |
| 2.3 | Numerical reduction to curves | n=3; point support | §1.4 multiplicities; pairing 0 | holds | — |
| 2.4 | f_Λ values and f̂=−f | x∈Λ; isotropic shell; anisotropic in Λ^∨ | 1−q² (−8 at q=3); f̂ on Λ = q²−1; on shell −(1+q)/q+1/q=−1; anisotropic −(1+q)/q+(q+1)/q=0 | eigenvalue −1 verified on all regions | computed Fourier Checks added |
| 2.5 | Vertical function Schwartz with f̂=−f | n=2 unit L♭ | 0=−0 | holds | — |
| 2.6 | ch(O_D)=1−exp(−c) | D=0; degree 1,2 terms | 0; +c, −c²/2 | holds; sign correction of LZ recorded | — |
| 2.7 | ℓ(K_{V(Λ)}) eigenfunction | point stratum | χ = 1−1 = 0 when P∈Z(x) | holds trivially | first draft Check vague, replaced |
| 3.1 | W′=∂Den·∏(1−(−q)^{−i})·log q² | n=1,a=1; log q; split a=2 | (1+q⁻¹)2 log q; half; D(1)=1 | holds | — |
| 3.2 | Overlattice expansion with m(0)=0 | m(0..3) | 0,1,1+q,(1+q)(1−q²) | holds (E23 recorded) | — |
| 3.3 | Int_H=∂Den_H | n=2 unit L♭, val a | (a+1)/2 both | holds | — |
| 3.4 | Vertical analytic Schwartz; normal-negative Fourier vanishing | vol(M)=q^{−val M}; n=2 unit | 1̂_M=q^{−val}1_{M^∨}; 0 | holds | — |
| 3.5 | Int(L)=∂Den(L) | n=1,a=3; n=2 cancellation | 2=2 | holds; uncertainty needs strict positivity | uncertainty imported (MP §3.3a) |
| 4.1 | Y and auxiliary cycles differ | split rank one a=0,2 | Int_Y=0,1; (q+1)Int_aux integer | holds | — |
| 4.2 | Ñ regular, π₁ finite flat deg q+1, Exc reduced ℙ^{n−1}, O(−1) | E self-int; n=2 fat ℙ¹ | (−1)^{n−1}, −1 at n=2; multiplicity q+1 (LRZ Ex. 14.6.3) | holds (LRZ Thm 14.6.2 read) | — |
| 4.3 | (q+1)Int_aux=∂Den_Λ | a=2; a=0 | D_Λ=(1−X)(1+qX)+X²(1−X), ∂Den_Λ=(1+q)+1=q+2; D_Λ=1−X, 1 | holds | overlattice enumeration Check added |
| 4.4 | π₁*Y=π₂*Z♭−Exc | x integral at no type-0 vertex | Exc=0 | holds | — |
| 4.5 | (q+1)Int_Y=∂Den_Λ−Den | a=0; a=2 | 0=1−1; q+1=(q+2)−1 | holds | — |
| 4.6 | Li–Liu normalization | r=1; log q_u vs log q_v | (q²−1)/(q+1)=q−1; factor 2 | holds | — |
| 5.1 | Exotic cycles; u⁻² form | odd n; no u⁻²; n=2 (1,1) | excluded; valuations shift by 2; total 2 | holds | — |
| 5.2 | ω=L_X⁻¹; C(0)=[ω→O] | K-class; type-4 curve | [O]−[ω]; χ=1−(q−1+1)=1−q | holds | "image(ι(u)−u)" description dropped (not in source) |
| 5.3 | Linear invariance | (x,x) vs (x,0) | [O_N(x)]−[O_N(x)(−N(x))] vs [O_N(x)] if C(0)=O | C(0) needed | Check rewritten |
| 5.4 | ²D Tate classes; deg_C ω = q−1 | type 2, type 4, q=3 | point; ℙ¹ with deg 2 | holds | strata imported (PELModuliPartII) |
| 5.5 | Rank-two formula | (0,0),(0,1),(1,1),(1,2); wrong bound b₁ | 2, 4, 2(q+3), 2(2q+4); wrong bound 2(2q+3) at (1,1) | holds; E5 rejected as in design | first draft claimed wrong bound agrees at (1,1); corrected |
| 5.6 | Cancellation; reflection | det of reflection; (1,1) | −1 vs (−1)^n=1 for full negation; 1+1 | holds | — |
| 6.1 | Exotic D_L and ∂Den = 2Σμ | type 2,4 | 2; 2(1−q²) | holds; type 0 absent in nonsplit V | — |
| 6.2 | Exotic split | coefficients | 2 per eligible M | holds | — |
| 6.3 | Extension count cancellation | t(A)=1; sign of μ(t±1) | not asserted; μ(2)=1, μ(4)=1−q²<0, μ(6)>0 | holds (sum, not termwise) | — |
| 6.4 | Fourier support in V_int | vol(M)=q^{−t/2} | q⁻¹, q⁻² (=vol Λ of §6.5) | consistent | Check made concrete |
| 6.5 | Type-4 curve function, eigenvalue −1 | Λ; isotropic shell; anisotropic | 1−q; f̂=q−1; −(1+q)/q+1/q=−1; 0 | holds | — |
| 6.6 | Exotic horizontal identity | (1,1) | 2=2 | holds | — |
| 6.7 | Two-lattice special case | a_{n−1}=a_{n−2}; a=3 | not applicable; excluded since a>3 | source says a>3 | design's a≥3 corrected |
| 6.8 | Exotic KR | (1,1); (1,3) | 2=2; 4 = 2·#{L, one overlattice}=2·2 | holds | — |
| 6.9 | Relative/absolute comparison | F₀=ℚ_p; scalar u²/ϖ | identity; unit | holds; unramified F₀ needed | — |
| 7.1 | Krämer cycles, Exc ≅ ℙ^{n−1} | n=2 filtration; Z(0) | rank 1 only at n=2; whole space | holds | — |
| 7.2 | Incidence varieties | m=1; m=2 rational U | S=ℙ¹ smooth; fibre ℙ¹ | holds (E9) | — |
| 7.3 | Strata with sharp dual | type-0 sum; type 2; nonintegral L | ∅; ℙ¹; ∅ | holds (E10) | — |
| 7.4 | Deformation; type-zero separate | type 2 tangent; m=0 | ≤1; coefficient both 0 and unit | obligation kept | — |
| 7.5 | Horizontal classification and degrees | s=0,1 nonsplit; split nonunit | 1; 2q; not horizontal | holds | — |
| 7.6 | α coefficient | n=3,2 unimodular; nonunimodular | 0; 1; 1 | holds | — |
| 7.7 | Parity cancellation | n=3,ℓ=1,r=2; Int(I₂), Int(I₃); δ_odd(ℓ) instead | 1; 0, 1; 0 (wrong) | holds | — |
| 7.8 | Fourier support ≥ −1 | x∈Λ^♯ | πx∈Λ ⇒ h(x,x)∈O_{F₀}; N(π⁻¹)=−π₀⁻¹ ⇒ val ≥ −1 | holds | Check made explicit |
| 8.1 | Modified derivative, t_max | n=2,χ=−1; Λ^♯ | t_max=0; ∂Den(Λ^♯)=0 | holds | — |
| 8.2 | Primitive formula | unimodular n odd/even; t=2,3 | 1/0; 1∓q; 1−q² | holds (K lines 1999–2017 read) | — |
| 8.3 | Analytic split, partial integral | Haar scaling by c | ×c | holds | — |
| 8.4 | Positive-cone constancy only | χ(V)=1, n=3, L♭=⟨1⟩⊥⟨π₀⟩, h(x,x)=−π₀⁻¹ | 2q unimodular lattices (det −1), each weight δ_odd(3)=1, partial integral 2q·vol(L♭)≠0; larger projections impossible (v_π(α)=−3 vs ≥−2) | negative-cone vanishing of K Thm 8.2 false | stated as Check; constancy kept |
| 8.5 | Krämer horizontal identity | n=2,3 unimodular | α=1, 0 | holds | — |
| 8.6 | Hyperbolic reduction step | H₁, L♭=⟨l₁+πl₂⟩, x=l₂ | h=±2π₀ (inv 2); coefficient 1/(2π); all lines in π₀O_{F₀}; val H₁=2 | K Lemma 9.6 fails; step needed | new target |
| 8.7 | Krämer KR | I_n; nonintegral L; H₁ | δ_odd(n)=δ_odd(n); 0=0; covered via §8.6 | holds given §8.6 | — |
| 9.1 | Group Int(g); strong regularity | regular unipotent, n≥3 | relatively regular, not semisimple | holds (Z Def 3.5–3.6 read) | — |
| 9.2 | Semi-Lie Int(g,u) | non-rs pair; unit multiple of u | undefined; unchanged | holds | — |
| 9.3 | ∂Orb normalization | Haar ×c; omit ω; log q vs log q² | ×c; sign changes; factor 2 | holds | — |
| 9.4 | Cayley comparison | d=1; c(0); g=−1 | undefined; −1; 0 | holds | — |
| 9.5 | Reductions; q=n step | q≥n+1; q=n | q+1≥n+2 > n+1 forbidden; n+1 vs n+1 | elementary count fails at q=n (Z Prop 4.12 proof lines 1307–1316 read) | stated as target (b) |
| 9.6 | Local constancy | m=1; q<m; nilpotent cyclic x | depends on val only; no scalar; F[T]/(T^m) non-étale, map still iso | holds for q≥m | Check reframed |
| 9.7 | Maximal-order AFL | dimension m bound | p>m+1 (Z Prop 3.9 reads p>n) | holds | — |
| 10.1 | Global special cycles | negative definite T; basis change; ϕ₀=id | empty; āᵗTa; postcomposition | holds | — |
| 10.2 | K-classes in F^r | r=1; distinct off-diagonal T | Cartier class; distinct summands | holds | supplier changed to SKO §§6.12, 7.7 |
| 10.3 | Formal uniformization | split place; weights | empty; stabilizer weights needed | holds | — |
| 10.4 | Local degree normalization | one rational point; degree f; [E:F] | log q_ν; f log q; different convention | holds | — |
| 11.1 | Fat CM with R_α | nonmaximal order; irreducible non-CM α | smaller problem if O_{F′}; CM is a hypothesis | holds | — |
| 11.2 | Finite unramified, proper | maximal good place; nonmaximal | finite étale; vertical component | holds | — |
| 11.3 | Characteristic decomposition | change ℓ; α′≠α | same α; disjoint | holds | — |
| 11.4 | Virtual one-cycle | 2-dim vertical support | class still in Gr₁ | holds | — |
| 11.5 | Formal Hecke uniformization | split place; α′ | vacuous; absent | holds | — |
| 12.1 | Divisor series, Z(0)=−φ(0)c₁(ω) | φ(0)=0; φ(0)≠0 | constant 0; needed | holds | — |
| 12.2 | Unique fixed negative line | n=1; reducible α; u⊥z_δ | no divisors; uniqueness fails; u not cyclic | holds | Check rephrased |
| 12.3 | G_K = −Ei(4πaR), u=0 value −log a | a=e; R<0; 2π vs 4π | −1; finite; mismatch | holds | — |
| 12.4 | Arithmetic series | principal divisor; −log|f| | 0; (V_p,0)=(0,2log p) fails | holds | — |
| 12.5 | Modularity (scope) | n=2; F₀≠ℚ | weight 2; arithmetic not asserted | holds | Check replaced |
| 12.6 | CM pairing normalization | [E:F] vs [E:F₀] | factor 2 | holds | — |
| 12.7 | Pairing modularity over ℚ | constant coefficient | retained | holds | — |
| 12.8 | Finite orbit formula, factor 2 | split good; inert residue q_v² | 0; 2 log q_v | holds | — |
| 12.9 | Archimedean orbit formula | ξ′<0 at v′ | −4πa|ξ′|<0, finite | holds | — |
| 13.1 | Siegel series, transformation law | pure tensor; singular T | product; excluded | holds | — |
| 13.2 | Diff set | |Diff|≥2; archimedean; unramified nonsplit | derivative 0; allowed; allowed | holds | — |
| 13.3 | Admissibility bundle | almost self-dual place; ramified base prime | not substituted; fails | holds | construction moved to PELModuliPartII |
| 13.4 | c_K=(−1)^n vol(K) | n=1,2 | −vol K; +vol K | holds | — |
| 13.5 | Semi-global identity | Diff={v₀}; log q vs log q² | only v₀ differentiated; factor 2 | holds | — |
| 13.6 | Star products, ½ factor | conjugate pair; a=2 almost self-dual | one full integral; (q+2)/(q+1)≠1 | holds | comparison to GS degree = gap |
| 13.7 | Archimedean ASW | drop ½ | doubles | holds | — |
| 13.8 | Unramified ASW | F₀=ℚ; |Diff| odd | excluded (Minkowski); |Diff|≥3 vanish both sides | holds | — |
| 13.9 | Modified derivative | c₀=−1/(q+1); log q vs log q² | negative; halves | holds | — |
| 13.10 | Modified ASW | self-dual inert v | reduces to §13.5 | holds | — |
| 14.1 | Relative trace series | Ei(−4πa|ξ|) vs Zhang's printed scale | MZ fn 5 correction | holds with MZ scale | ownership moved here; API added |
| 14.2 | E♭=2∂J+Int_K | double factor | 4∂J contradicts −2∂J_v=Int_v | holds (E15) | — |
| 14.3 | Fourier vanishing | B=∅; constant function | only constant term ⇒ invariant under N(𝔸) and SL₂(F₀) ⇒ constant | holds | — |
| 14.4 | Conditional comparison | Σc_p log p=0 | all c_p=0 | holds; B finite after adding p≤m+1 | — |
| 14.5 | Orbit isolation | nonnegative test positive at orbit | nonzero factor | holds | — |
| 14.6 | Strongly regular AFL, p≥n | n=1; p=n | trivial/§0.9; n prime, uses §9.5(b) | published range kept | — |
| 14.7 | Regular semisimple AFL statement | non-semisimple rs element; n=1 | outside §14.6; trivial | definite formulation | rewritten as target |
| Conv. | Signature, dual, interpolation table | unramified X=(−q)^{−k} at k=1, q=3 | −1/3; Krämer X=q^{−2}=1/9 | distinct conventions | — |

Context check: there are no Lean statements, so no `variable`/`include` blocks to audit. Generality: README statements follow the sources' hypotheses (odd p throughout; F₀/ℚ_p unramified exactly where LL2 §2.8 and K §10.2 require; F₀ = ℚ for arithmetic modularity and the global AFL comparison; F₀ = ℚ_p for §14.6).

## Dependency check (verbatim)

```text
moved: GrossZagierAndArithmeticHeightsPartII moved in the merge order from #233 to #246, right after its last supplier PELModuliPartII; checked as moved (the worker moves it there when it submits)
depcheck: 56 roadmaps, 659 edges, 0 problem(s)
```

No UPWARD or CYCLE line. The `moved:` line is the expected consequence of item 2 above.

## Citations

`roadmaps resolve` on the new README (main 822b5aa and 354 open heads): no cross-roadmap citation and no Lean name found nowhere. The 15 leads of the design-stage resolver (`R35.1`, and generated API names such as `analyticSplit.latticeExt`) no longer occur: the README has no backticked names of its own, and every supplier citation names a section or node that exists. Mathlib names were checked at the pin by hand: `Polynomial` (Basic.lean:69), `Polynomial.eval` (Eval/Defs.lean:249), `Polynomial.derivative` (Derivative.lean:46), `IsNonarchimedeanLocalField` (NumberTheory/LocalField/Basic.lean:45).

## Sources

All seven design sources were fetched through the sources service: LZ (arXiv v3), Z (arXiv v3), LRZ (arXiv v2), K (arXiv v2), LL1 and LL2 (author copies), MZ (arXiv v4). Added: Howard19 (arXiv 1811.01482v2; an earlier fetch by arXiv id returned a different Howard paper, 1303.0545, and that entry was deleted before any use) and Lusztig76 (paywalled, `uncertified`, cited by locator). No text was missing; no `needs-references.toml` was written. No suspicious instructions were found in any fetched text, issue or roadmap.
