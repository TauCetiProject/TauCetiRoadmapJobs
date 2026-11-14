# Review of OcneanuRigidity (pull request #2316 at c198308)

**Verdict:** needs changes

## R01 (P2) — The trace factor is attached to the wrong direction

**Location:** TauCetiRoadmap/OcneanuRigidity/README.md:241–244: “`ᘁT ≅ Tᘁ`. `θ : coinduction F ≅ induction F` is `(doubleDualTrace a_T)⁻¹ •` the image of that mate”.
**Claim:** The left mate of `a_T` goes from `Tᘁ` to `ᘁT`. Applying the inverse trace to its inverse makes `θ.hom` depend on the choice and breaks 1.7.
**Witness:** In Vec over ℂ, `a = 3·can` has trace 3 and left mate 3. The stated forward map is `(1/3)(1/3)=1/9`; its inverse gives averaging 9, versus global dimension 1.
**Repair:** Specify `θ.inv = (doubleDualTrace a_T.hom)⁻¹ • F.map (ᘁa_T.hom)` on each summand, and define `θ.hom` by inversion. Change the Check to compute `θ.inv = 3/3 = 1`.

## R02 (P2) — Module reconstruction and classification admit the zero ring

**Location:** TauCetiRoadmap/OcneanuRigidity/README.md:438, 459–473: “extracting from `Model Q` returns `Q`”; “if and only if `Q' = h • Q.reindex τ`”.
**Claim:** These statements require a nontrivial coefficient ring; the later duality arguments also require the rigidity criterion for P.
**Witness:** For R=0 and unit fusion rules, the models with one and two module labels are equivalent trivial categories, but no label bijection exists. TauCetiRoadmap/PresentationsOfMonoidalCategories/README.md:293,343 (#2308) explicitly requires nontrivial R.
**Repair:** Add: “6.3 and 6.4 assume `[Nontrivial R]`; 6.5–6.8 assume that P satisfies PresentationsOfMonoidalCategories Layer 5's rigidity criterion.” Add the zero-ring models as a negative-control Check.

## R03 (P2) — A statable finiteness headline is absent

**Location:** TauCetiRoadmap/OcneanuRigidity/Suggested.lean:22–24: “`FSymbols`, `RSymbols`, `Model P` … about which formal rigidity and the finiteness of fusion and module categories are stated”.
**Claim:** Finiteness of fusion categories with fixed fusion rules, in characteristic zero, is statable without symbol carriers.
**Witness:** A fresh scratch statement elaborates using TauCeti/CategoryTheory/Semisimple/GrothendieckRing.lean:240 (`fusionCoeff`), with only sorry warnings: any family with common fusion coefficients has a finite set of representatives up to linear monoidal equivalence.
**Repair:** Import that module and state 8.1/9.1 for families `C : I → Type u`, each satisfying the fusion hypotheses, with identifications of simple classes preserving a fixed N: `∃ s : Finset I, ∀ i, ∃ j ∈ s`, a k-linear monoidal equivalence `C i ≌ C j`. Remove its missing-carrier claim; state 8.3 and 8.4 likewise or identify their actual missing carriers.

## R04 (P3) — The TeX gate still fails

**Location:** TauCetiRoadmap/OcneanuRigidity/README.md:88–89, 282–283: the multiline differential and “`Comonad.resolution G X : SimplicialObject.Augmented”.
**Claim:** Multiline code spans leave TeX syntax exposed to the gate.
**Witness:** The worker gate and fresh gate both report `tex=11`, with hits at lines 88, 89 and 283.
**Repair:** Put the differential in an indented code block. Put `Comonad.resolution G X : SimplicialObject.Augmented 𝒵` on one line inside one code span.

## R05 (P3) — Target headings and layer endings are still missing

**Location:** TauCetiRoadmap/OcneanuRigidity/README.md:3, 167–169: “## Summary”; “**0.1 Tensor powers of a functor.**”.
**Claim:** Targets lack the required subsection headings, and layers lack Examples and Dependencies sections.
**Witness:** The gate reports `target-ids=1`: “line 167: layered README states no targets”. Counts: zero `### k.n`, zero `### Examples`, zero `### Dependencies`.
**Repair:** Use `### k.n Title` headings and attach each definition's Checks to its subsection. End every layer with `### Examples` and `### Dependencies`. Open with a `**Summary.**` paragraph.

## R06 (P3) — An unused stand-in remains in the acceptance test

**Location:** TauCetiRoadmap/OcneanuRigidity/Suggested.lean:8–12, 43–52: “suggest Lean forms for particular milestones”; “compatibility with F's tensorator and unit … is omitted here”.
**Claim:** No headline uses RelHalfBraidingData, and it does not define a relative half-braiding. The docstring describes an API catalogue.
**Witness:** For F=id on Vec, twice the usual interchange is natural, so satisfies the structure, but its unit component is 2 instead of 1. Fresh elaboration also omits MonoidalCategory C from its type.
**Repair:** Delete the RelativeHalfBraiding section. Replace the opening docstring with: “The roadmap is README.md; this file is not the roadmap. It states the roadmap's headline theorems against the pinned Mathlib and Tau Ceti, each with sorry.”

## R07 (P3) — The cited locators do not cover the stated generality

**Location:** TauCetiRoadmap/OcneanuRigidity/README.md:13–14, 353–354, 404–411, 478–479, 572, 586–598: characteristic-independent results cite characteristic-zero statements; formal braiding rigidity cites Remark 2.33.
**Claim:** These citations omit the positive-characteristic extensions, misattribute the indecomposable count, and cite braiding finiteness for formal rigidity.
**Witness:** EGNO line 13848 imposes characteristic zero; ENO2005 line 1967 supplies the nondegenerate extension. ENO2005 line 423 states braiding finiteness; line 437 counts modules of fixed rank. EGNO line 13951 supplies the indecomposable count.
**Repair:** Cite ENO2005 §9.1, p.43, and GHS Remark 3.19, p.26, for the relevant positive-characteristic extensions. Cite EGNO 9.1.6(ii), p.277, for indecomposables. Attribute 5.6's formal conclusion to 4.2 and 8.6's extended conclusion to 7.5. Add the missing locators at 2.2 and 3.2, distinguishing GHS Lemma 2.5's projectivity and Corollary 3.12's coefficient functoriality from the stronger constructions proved here.

## R08 (P3) — Supplier names and argument types still mismatch

**Location:** TauCetiRoadmap/OcneanuRigidity/README.md:146–155, 249, 361, 380, 401, 461: `TauCeti.isConstructible_orbit`, `IsSplitSimpleBasis`, `Center.ofBraided Y`, `squaredNorm S`.
**Claim:** The orbit and constructibility namespaces are wrong; the split-family name is wrong; the centre functor and squared norm receive the wrong argument types.
**Witness:** TauCeti/AlgebraicGeometry/GroupAction/LocallyClosed.lean:55 uses SchemeAction; TauCeti/Topology/Constructible/Basic.lean:37 uses Topology.IsConstructible. Mathlib/CategoryTheory/Monoidal/Center.lean:382 defines a functor. TauCetiRoadmap/PivotalSpherical/README.md:216,275 (#2311) defines IsSplitSimpleFamily and squaredNorm on an isomorphism.
**Repair:** Use `TauCeti.SchemeAction.isConstructible_orbit`, `TauCeti.SchemeAction.isLocallyClosed_orbit`, `Topology.IsConstructible.dense_interior`, `IsSplitSimpleFamily R T`, `(Center.ofBraided C).obj Y`, and `squaredNorm a_S` with `a_S : S ≅ Sᘁᘁ`. The new convention abbreviates normGlobalDim only.

## R09 (P3) — The sign-character Checks still fail

**Location:** TauCetiRoadmap/OcneanuRigidity/README.md:109–111, 262–264: “the degree-0 differential detects that 1 is not an intertwiner”; “their tensor product has character `(−1)(−1) = +1`”.
**Claim:** In characteristic two the sign and trivial characters coincide. In characteristic zero their tensor product is sign, not trivial.
**Witness:** Over the algebraic closure of 𝔽₂, δ⁰(1)=1−1=0 and the intertwiner space has dimension 1. Over ℂ, trivial times sign is −1.
**Repair:** Begin both Checks “Over ℂ”. Say: “sign tensored with sign has character +1; trivial tensored with sign has character −1; the intertwiner space between trivial and sign is zero.”

## R10 (P3) — Definitions still lack discriminating Checks

**Location:** TauCetiRoadmap/OcneanuRigidity/README.md:202–203, 306, 309–310, 344, 500, 560–561: Checks for 0.4, 2.1, 2.4, 3.1, 6.2 and 7.2.
**Claim:** Each has only one Check; identity-comonad and trivial-group cases do not distinguish misplaced faces or opposite differential signs.
**Witness:** For the free–forgetful comonad k[C₂]⊗− on Rep C₂ and trivial k, d₀(g⊗g)=e while d₁(g⊗g)=g. Swapping these faces passes the existing identity-comonad Check.
**Repair:** Give each definition at least three discriminating Checks. For 2.1 use these distinct faces and dimensions 2,4,8. For 3.1 use C₃ with γ(1,2)=1: δγ(1,1,1)=1 and δγ(1,2,1)=−1; the opposite differential reverses them.

## R11 (P3) — A supplier is still listed as a downstream consumer

**Location:** TauCetiRoadmap/OcneanuRigidity/README.md:625–627: “PresentationsOfMonoidalCategories-based computations”; “CategoricalOperatorAlgebras CA6: the comparison 1.3”.
**Claim:** CA6 supplies 1.3; it does not consume it. The other item identifies no consuming roadmap.
**Witness:** This README:225 lists CA6 as a prerequisite. TauCetiRoadmap/CategoricalOperatorAlgebras/README.md:1266 on main constructs the unitary relative centre and contains zero citations of OcneanuRigidity.
**Repair:** Delete both bullets. List only actual consuming roadmaps with their cited sections.

## R12 (P3) — Needs lines omit required inputs

**Location:** TauCetiRoadmap/OcneanuRigidity/README.md:402, 580, 589: “*Needs:* 3.1, 4.2”; “*Needs:* 5.6, 7.4”; “*Needs:* 6.3, 6.4, 6.6, 6.7, 7.3”.
**Claim:** The finiteness applications omit their coordinate rings and gauge schemes; the braiding dictionary omits idEquiv and lists vanishing, which its stated dictionary does not use.
**Witness:** Target 7.1 defines the rings; 7.2 defines the gauge schemes. Target 5.4 explicitly uses idEquiv from 1.2, while its coboundaries vanish by naturality.
**Repair:** Set 8.2's Needs to 5.6,7.1,7.4; 8.4's to 6.3,6.4,6.6,6.7,7.1,7.2,7.3; and 5.4's to 1.2,3.1.

## R13 (P3) — The description still claims a Radford layer

**Location:** Pull-request description, recorded in scratch/pull-request.md:30: “I chose the scope and the inclusion of the Radford layer”.
**Claim:** There is no Radford layer in this roadmap. The route paragraph also omits the CA6 supplier.
**Witness:** TauCetiRoadmap/OcneanuRigidity/README.md:48–50 assigns Radford to PivotalSpherical; line 159 imports CA6. The ten layer headings contain no Radford layer.
**Repair:** Replace the quoted clause with “I chose the scope; the Radford isomorphism and pivotalization are supplied by PivotalSpherical §§6.7–6.8 (#2311).” Add: “The route also consumes PresentationsOfMonoidalCategories Layers 0–6 and CategoricalOperatorAlgebras CA6.”

## Previous findings

- R01 — not repaired: 1.6 still attaches the inverse trace to the forward comparison; 1.7 uses its inverse.
- R02 — not repaired: Layer 6 still has no nontrivial-ring or rigidity qualification.
- R03 — not repaired: the docstring still excludes fusion-category finiteness; only braiding finiteness is stated.
- R04 — not repaired: the differential and augmented-resolution type still have multiline code spans.
- R05 — not repaired: bold numbered paragraphs remain; Examples and Dependencies headings remain absent.
- R06 — not repaired: RelHalfBraidingData and the catalogue docstring remain.
- R07 — not repaired: the same characteristic-zero and mismatched locators remain.
- R08 — not repaired: the added convention fixes normGlobalDim's notation, but none of the cited namespace, split-family, centre-object or squaredNorm errors.
- R09 — not repaired: the Checks still leave the characteristic unrestricted and misidentify the tensor product.
- R10 — not repaired: the cited definitions retain only their previous single Checks.
- R11 — not repaired: both downstream bullets remain.
- R12 — not repaired: all three cited Needs lines remain.
- R13 — not repaired: the description still says “inclusion of the Radford layer” and omits CA6 from the route.

## Verified sound

| Statement | Instances tried | Computed left | Computed right | Result / change |
| --- | --- | --- | --- | --- |
| Changed separability convention, lines 71–75 | Vec/ℂ; a=1,3,−2 | Trace products 1·1, 3·⅓, (−2)·(−½), all 1 | normGlobalDim=1 for every choice | Agrees; no change |
| Same convention, general rescaling | Simple S, a′=c·a, c≠0 | (c·t)(c⁻¹·u)=tu | Original squared norm tu | Agrees |
| 1.6 comparison | Vec/ℂ, a=3·can | Stated θ.hom=1/9 | At a=can, θ.hom=1 | R01 |
| 1.7 averaging | Same Vec instance | Literal inverse comparison gives 9 | normGlobalDim=1 | R01 |
| 1.8 section | Vec(Q₈)/𝔽̄₃; Vec(C₂)/𝔽̄₂ | 8≡2, 2·2≡1; 2≡0 | Section normalization 2; no counit section in characteristic 2 | Convention agrees |
| 1.1 / RelHalfBraidingData | F=id Vec/ℂ, β=2·interchange | Naturality: 2f=2f | Unit law: 2≠1; tensor law: 2≠4 | R06 |
| Sign Checks | Vec(C₂)/𝔽̄₂ and ℂ | Characteristic 2: δ=0, dim Hom=1; ℂ: 1·(−1)=−1 | Claimed detection, Hom=0, tensor character +1 | R09 |
| 0.4 action functor | Vec(C₂) acting on Vec² by swap | g⊙(g⊙(k,0))=(k,0) | (g²)⊙(k,0)=(k,0) | One control; R10 |
| 2.1 resolution | Free–forgetful C₂ comonad on trivial k | d₀(g⊗g)=e; dimensions 2,4,8 | d₁(g⊗g)=g≠e | Distinguishes faces; R10 |
| 2.2 extra degeneracy | Identity comonad on k | Augmented differential 1,0,1; contracting composite 1 | Identity on k=1 | Missing locator; R07 |
| 2.4 cochains | Identity comonad, map 2·id | Cochain map 2 in each degree; 2δ=0,2,0 | δ2=0,2,0 | One control; R10 |
| 3.1 differential | C₃, γ(1,2)=1 | δγ(1,1,1)=1; δγ(1,2,1)=−1 | Opposite differential: −1,+1 | R10 |
| 3.2 coefficient functoriality | Identity comonad, coefficient map 2·id | H⁰=k maps by 2 | H¹=H²=0 map by 0 | Missing locator; R07 |
| 4.1 vanishing | Vec(C₃)/𝔽̄₂ | Global dimension 3=1; H¹=Hom(C₃,k)=0 | Claimed vanishing 0 | Correct value; R07 locator |
| 4.2 centre coefficient | Vec(C₂)/ℂ, simple central coefficient | H¹(C₂,k)=0 | Claimed H¹=0 | R08 object-map notation |
| 4.3 sharpness | Vec(C₂)/𝔽̄₂ | Global dimension 0; Hom(C₂,k)=k | H¹=k≠0 | Convention agrees |
| 5.1 global dimension | Fibonacci; Yang–Lee over ℂ | Norms φ², φ⁻² | Totals (5+√5)/2, (5−√5)/2 | Values agree; R08 argument |
| 5.4 braiding dictionary | C₂, F=1, R=1+bε over ℂ | R²=1+2bε, so b=0 | Degree-one cocycle=0 | R08, R12 |
| 5.5 formal rigidity | C₂, F=1+cε | Pentagon requires 2c=0 | ℂ: c=0; characteristic 2: arbitrary c, global dimension 0 | R07 locator |
| 5.6 formal braiding rigidity | C₂, R=±1+bε over ℂ | R²=1±2bε implies b=0 | Constant lift ±1 | R07 locator |
| 6.2 model action | Regular C₂ module | δg⊙δg=δ0 | Fusion multiplicity N(g,g;0)=1 | One control; R10 |
| 6.3 reconstruction | R=0, one module label | Extracted rank 0 | Prescribed unit multiplicity 1 | R02 |
| 6.4 classification | R=0, one versus two labels | Both categories trivial: equivalent | Label cardinalities 1≠2 | R02 |
| 6.6 module rigidity | Vec acting on Vec, h=1+bε | M′=h⁻¹=1−bε | Triangle requires M′=1, so b=0 | R07 locator |
| 7.2 separable locus | C₂ in characteristic 2 | s₁=1; sum of norms 1+1=0 | Fusion locus nonempty; separable locus empty | Convention agrees; R10 |
| 7.3 orbit input | Additive group translating affine line | Orbit of 0=all k; kernel of x↦t is 0 | One orbit; one component | R08 namespace |
| 8.1 finiteness | C₂/ℂ | F¹¹¹=±1: two classes | Finite family representatives: cardinality 2 | R03, R07 |
| 8.2 braiding finiteness | C₂/ℂ, F=1 | R¹¹=±1: two braidings | Finite carrier of cardinality 2 | R12; not one-tactic padding |
| 8.3 braided finiteness | C₂/ℂ | (1,±1),(−1,±i): four classes | 2 fusion choices × 2 braidings=4 | R03 headline coverage |
| 8.4 fixed-rank modules | Vec/ℂ, rank r | Model Vecʳ | One equivalence class for each r | R03, R07, R12 |
| Summary indecomposable count | Vec(C₂)/ℂ | Two subgroup cases, ranks 1 and 2 | Two indecomposable classes | R07 locator |
| 8.6 field of definition | Semion over ℂ | F=−1, R=i | Both lie in ℚ̄ | R07 locator |
| 9.1 characteristic zero | Vec(C₂)/ℂ | Global dimension 1+1=2≠0 | Hⁿ=0 for n>0 | Convention agrees |

The rows for untouched statements not implicated above stand as in the previous review of b188ea1.

- Source checks: 16 locators/context passages reopened across ENO2005, GHS and EGNO; the worker's seeded sample contains zero targets.
- Pinned declarations opened: 6, including TauCeti/CategoryTheory/Semisimple/Rigid.lean:89, TauCeti/CategoryTheory/Semisimple/GrothendieckRing.lean:240, TauCeti/AlgebraicGeometry/GroupAction/LocallyClosed.lean:55,177, TauCeti/Topology/Constructible/Basic.lean:37, and Mathlib/CategoryTheory/Monoidal/Center.lean:382.
- Supplier checks: all 4 named roadmaps resolved again; PivotalSpherical §§6.1–6.2 supply the new family parameter and independence.
- Worker gate: FAIL, tex=11 and target-ids=1; all other checks, including build, zero. Fresh gate reproduces both failures.
- Dependency output: `depcheck: 244 roadmaps, 2198 edges, 0 problem(s)`; no UPWARD or CYCLE. The full gate's additional `NOT IN ORDER: OcneanuRigidity (insert it after its last supplier)` is excluded as a defect by the brief's placement rule.
- Targeted build succeeds; direct Lean elaboration has only one sorry warning. The build additionally emits the package's module-system advisory.
- Fresh `#check @` for both declarations: the braiding theorem retains its hypotheses; RelHalfBraidingData drops MonoidalCategory C. The added family-finiteness probe elaborates; simp, rfl and infer_instance do not close the braiding headline.
- Scope: 7 changed lines, no outside-folder changes, no worktree edits.

Overlap check: read PresentationsOfMonoidalCategories (#2308), PivotalSpherical (main and #2311), CategoricalOperatorAlgebras (main), and TemperleyLieb (main). Symbol presentations belong to PresentationsOfMonoidalCategories; squared norms, global dimension and absolute induction to PivotalSpherical; the unitary relative centre to CA6. TemperleyLieb shares no owned target. The new convention imports its owner's definition.

Source independence: changed passages only; 1 passage compared with 1 source, ENO2005 lines 157–180, with no copied expression or reused material found. Largest share: GHS, 15 of 42 bracketed source citations including References. No layers changed; the previous contents comparison stands.

## Not verifiable

- BarrBeck §§1,4 remains settled as uncertified; no new request made.
- Published pagination was not compared with the cited arXiv versions of GHS and ENO2005.
- No seeded targets were supplied because the worker found none by heading.

## Source issues

- none

## For the human reviewers

- Every PivotalSpherical id this roadmap cites (3.3, 6.1, 6.2, 6.9, 11.1, 11.2) exists only at the head of #2311, the same author's revision. PivotalSpherical on main has no numbered targets and no pivot-free normGlobalDim.
- PresentationsOfMonoidalCategories (#2308, a new roadmap and a supplier here) is absent from the merge-order file. The prescribed movable dependency check reports no problem.

