# Review of LimitsAndKanExtensions (pull request #2270 at 7e04598)
Folder: `TauCetiRoadmap/InfinityCategoryTheory/LimitsAndKanExtensions/`
**Verdict:** needs changes

## R01 (P1) — The acceptance test cannot build at the repository pin

**Location:** `TauCetiRoadmap/InfinityCategoryTheory/LimitsAndKanExtensions/Suggested.lean`:8, 10–14, 16; “against the pinned Mathlib and Tau Ceti” at line 22.
**Claim:** The proposed headline signatures elaborate against the pinned dependencies.
**Witness:** Gate `build=15`; direct elaboration fails at `CatInfty.olean`. Building `TauCeti.AlgebraicTopology.Quasicategory.CatInfty` fails because its source is absent at Tau Ceti `2fd255d`.
**Repair:** Restate the headlines using available native APIs and simple definitions; name genuinely unstatable headlines and their missing carriers in the module docstring. Alternatively, land the separately proposed pin update first and rerun the gate against that actual pin. A successful build against another commit does not repair this head.

## R02 (P1) — The supplier contract assigns unavailable prerequisites to the pinned library

**Location:** `TauCetiRoadmap/InfinityCategoryTheory/LimitsAndKanExtensions/README.md`:46, 116–125: “They are inputs here, not targets.”
**Claim:** Tau Ceti supplies the listed colimit, fibration, internal-hom and Cat∞ interfaces.
**Witness:** Pinned `TauCeti/AlgebraicTopology/SimplicialSet/Coslice.lean`:65–189 has `coslice`, `homEquiv` and `π`, but no `map` or `IsColimit`; the contracted `Quasicategory/Limit.lean` and `Quasicategory/CatInfty.lean` files do not exist.
**Repair:** Correct the library inventory and assign each absent prerequisite to its earliest owning roadmap, with an exact target or declared supplier gap. This includes `coslice.map`, the limit/colimit and initial/terminal predicates, left/right fibrations and anodyne maps, `ihomOver`, weak homotopy equivalences, `Edge.isEquivalence_iff_hornFilling_zero`, `nerve.opIso` and the Cat∞ interfaces. If the pin changes first, resolve every contracted name at that pin instead.

## R03 (P1) — The relative-initial-object proof uses a map that is not a left fibration

**Location:** `TauCetiRoadmap/InfinityCategoryTheory/LimitsAndKanExtensions/README.md`:841: “for the left fibration `C ×_D D_{d/} ⟶ D_{d/}`”.
**Claim:** This projection is a left fibration under §7.3.3's hypotheses.
**Witness:** Take `C=Δ[1]`, `D=E=∗`, `p=q` and `r=id`. The projection is `Δ[1]→∗`; its left-horn lifting problem with edges `0→1` and `0→0` requires the nonexistent edge `1→0`.
**Repair:** Replace the parenthesis by: “Put E₀ = C ×_D D_{d/}. Compare the left fibrations C_{c/} → E₀ and C_{c/} ×_{D_{d/}} D_{id_d/} → E₀. Their comparison is a pullback of the trivial fibration D_{id_d/} → D_{d/} (HTT, Lemma 4.3.1.13, p. 286).” These are the vertical maps in HTT lines 12685–12698; for the witness, both reduce to the identity of Δ[1].

## R04 (P1) — The category of elements has the opposite variance

**Location:** `TauCetiRoadmap/InfinityCategoryTheory/LimitsAndKanExtensions/README.md`:1085–1086: “Mathlib `CategoryTheory.Functor.Elements` gives the same category for the presheaf `K`.”
**Claim:** The category of simplices Δ_/K is Mathlib's `Functor.Elements K`.
**Witness:** For `K=Δ[0]`, Δ_/K is Δ, with two maps [0]→[1]. `Functor.Elements K` is Δᵒᵖ, with one such map: `Mathlib/CategoryTheory/Elements.lean`:74–87.
**Repair:** Write: “Δ_/K is equivalent to (CategoryTheory.Functor.Elements K)ᵒᵖ. Consequently U[K] is indexed by CategoryTheory.Functor.Elements K.” Add the two-versus-one computation as the variance Check; this also agrees with §6.4.1 and `Suggested.lean`:205–208.

## R05 (P1) — Nonmonicity of δ neither forces nonmonicity of c nor disqualifies a witness

**Location:** `TauCetiRoadmap/InfinityCategoryTheory/LimitsAndKanExtensions/README.md`:920: “c is not a monomorphism when δ is not one, so it is not itself a witness for HTT Def. 4.3.3.2.”
**Claim:** A nonmonic δ makes c nonmonic, and the cited definition requires a monic correspondence.
**Witness:** For the fold `δ:∂Δ[1]→∗`, both cylinders are the nerve of `a→t←b` and c is an isomorphism. HTT line 13576 requires a categorical equivalence, without monicity.
**Repair:** Replace the sentence by: “The comparison c need not be monic, so the extension argument of §7.6.1 cannot be applied directly to c. Step 2 supplies a monic categorical equivalence.” Retain the fold example as a Check: δ identifies two vertices, while c is an isomorphism.

## R06 (P2) — Existing owners on main are replaced by a second plan

**Location:** `TauCetiRoadmap/InfinityCategoryTheory/LimitsAndKanExtensions/README.md`:44, 195, 340, 356, 439, 509, 604, 620, 868, 880, 919; “This Part proves their theory.”
**Claim:** This folder owns the generic colimit comparisons, cofinality criterion, Theorem A and Kan-extension results already assigned on main.
**Witness:** Main `TauCetiRoadmap/EnhancedDerivedSheaves/README.md`:215, 1123, 1139 owns finality, relative Kan restriction and terminal-fibre finality; `TauCetiRoadmap/BordismFormalGroups/README.md`:2011, 2040, 2046, 2053, 2104 owns rectification, colimit comparisons, Cat∞ colimits and pointwise Kan formulas.
**Repair:** Cite EnhancedDerivedSheaves E0.4/E3.1 and BordismFormalGroups F6.5 in Scope and supplier contracts, and replace coinciding targets and Lean declarations by those citations. Retain only genuine extensions, explicitly distinguishing arbitrary simplicial-set bases from the supplied quasicategory cases. Moving ownership here requires the existing roadmaps to be revised first; the description's proposal that companion edits follow does not establish that ownership.

## R07 (P2) — Several relative-colimit targets drop the source's quasicategory hypotheses

**Location:** `TauCetiRoadmap/InfinityCategoryTheory/LimitsAndKanExtensions/README.md`:823, 837, 841, 849: “Given a square with inner fibrations”.
**Claim:** The displayed fibration hypotheses suffice without requiring the ambient simplicial sets to be ∞-categories.
**Witness:** HTT lines 12378, 12537, 12700, 12791–12802 and 14138 require ∞-categories. The identity on Λ[2,1] is inner, Cartesian and left-fibrational, but its base is not a quasicategory.
**Repair:** State C, D, C′ and D′ to be ∞-categories in §7.2.2; X and S in §7.3.2; C, D, E and E′ in §7.3.3; and C and D in §7.3.5. Keep the diagram index K arbitrary. Add the identity on Λ[2,1] as a negative control showing that the fibration assumptions alone do not imply these hypotheses.

## R08 (P3) — Seven imports violate the pinned-module rule

**Location:** `TauCetiRoadmap/InfinityCategoryTheory/LimitsAndKanExtensions/Suggested.lean`:8, 10–14, 16.
**Claim:** Every imported Tau Ceti module exists at the pin.
**Witness:** Gate `imports=7`: absent modules `Quasicategory.CatInfty`, `Quasicategory.Limit`, `SimplicialNerve.Basic`, `SimplicialSet.AnodyneExtensions.LeftRight.Basic`, `SimplicialSet.Fiber`, `SimplicialSet.InternalHom` and `SimplicialSet.WeakHomotopyEquivalence`.
**Repair:** Remove unavailable imports when applying R01, retaining only the individual modules actually used and available at the repository pin.

## R09 (P3) — Renumbered targets leave the proof routes pointing elsewhere

**Location:** `TauCetiRoadmap/InfinityCategoryTheory/LimitsAndKanExtensions/README.md`:877–878: “steps 1 and 2 of this route”; lines 886, 892, 1017; `Suggested.lean`:257, 263, 275.
**Claim:** These references supply the lifting lemmas and the Kan-extension restriction theorem named beside them.
**Witness:** §7.4.5 has no numbered steps; §7.4.3 is prism filling, while restriction is §7.4.6. HTT 4.3.1.14 and 4.3.1.6 are now §7.3.3 and §7.2.2. Unstraightened functors are §4.1.2.
**Repair:** At lines 877–878 replace “steps 1 and 2 of this route” by “§7.4.3 and §7.4.4”, and the references for 4.3.1.14/4.3.1.6 by §7.3.3/§7.2.2. Change the restriction-theorem citations at README lines 886, 892 and Lean lines 257, 263, 275 to §7.4.6. At README line 1017 cite §4.1.2 for unstraightened functors. At line 398 qualify §4.3.1 as InfinityCategoryFoundations §4.3.1.

## R10 (P3) — The empty Layer 9 section fails the gate

**Location:** `TauCetiRoadmap/InfinityCategoryTheory/LimitsAndKanExtensions/Suggested.lean`:333: “Layer 9: simplicial objects”.
**Claim:** A layer header in the acceptance test contains declarations.
**Witness:** Gate `empty-sections=1`; the file ends immediately after this header.
**Repair:** Delete the empty header.

## R11 (P3) — Drafting notes are not a roadmap file

**Location:** `TauCetiRoadmap/InfinityCategoryTheory/LimitsAndKanExtensions/NOTES.md`:1.
**Claim:** The folder contains only the permitted roadmap files.
**Witness:** Gate `stray-files=1` identifies `NOTES.md`.
**Repair:** Delete it; sources are the README's references.

## R12 (P3) — Several definitions omit their API lists

**Location:** `TauCetiRoadmap/InfinityCategoryTheory/LimitsAndKanExtensions/README.md`:258, 756, 776, 787, 963, 1037, 1049, 1062.
**Claim:** Each definition has an API list as well as discriminating Checks.
**Witness:** §8.1.1 moves directly from the definition of P(K) to Checks; likewise §2.1.1, §7.1.2–§7.1.4 and §9.1.1–§9.1.3 have no API lists.
**Repair:** Add prose API bullets with hypotheses and conclusions. Link cofinality to §2.3; full-subcategory Kan extensions to §7.5; arbitrary extensions to §7.6; groupoid and Čech objects to §9.3/§9.4. For presheaves state restriction P(L) → P(K) along K → L, its identity/composition laws and pointwise (co)limits (§8.2.3); for simplicial objects state evaluation and augmentation restriction. Keep the existing Checks, including P(∅)=∗ and P(∂Δ[1])=S×S.

## R13 (P3) — The repaired pointwise notion is still missing from its supplier contract

**Location:** `TauCetiRoadmap/InfinityCategoryTheory/LimitsAndKanExtensions/README.md`:106, 772.
**Claim:** The Mathlib contract identifies the pointwise Kan-extension interface consumed by the comparison.
**Witness:** Line 772 now uses `CategoryTheory.Functor.LeftExtension.IsPointwiseLeftKanExtension`, but line 106 lists only `Functor.IsLeftKanExtension`; the pointwise declaration is at `Mathlib/CategoryTheory/Functor/KanExtension/Pointwise.lean`:326.
**Repair:** Add to the Mathlib contract: “CategoryTheory.Functor.LeftExtension.IsPointwiseLeftKanExtension (Mathlib/CategoryTheory/Functor/KanExtension/Pointwise.lean): the comma-category colimit condition used in §7.1.2; it implies Functor.IsLeftKanExtension.”

## R14 (P3) — The description misstates this file's not-statable list

**Location:** Pull request #2270 description, “Not statable at the pins”: “Each `Suggested.lean` names these in its docstring with the missing carrier”.
**Claim:** The preceding examples, including spaces and presheaf ∞-categories, are documented as unavailable carriers in each relevant module.
**Witness:** `TauCetiRoadmap/InfinityCategoryTheory/LimitsAndKanExtensions/Suggested.lean`:27–35 calls these stated/defined; lines 40–46 list model-category comparisons and the marked model, omitting the unavailable APIs used by this file.
**Repair:** Replace the description's blanket assertion by: “The availability notes are per file. LimitsAndKanExtensions defines spaces and presheaves, but its present signatures use the newer Tau Ceti interfaces identified below and do not elaborate at the repository pin.” Update this sentence again when R01 is resolved.

## Verified sound

Previous review findings, checked against this head:

| Previous finding | Passage or removal at this head | Disposition |
|---|---|---|
| R01 | Suggested.lean:22 still says “against the pinned Mathlib and Tau Ceti”; the seven imports remain. | Not repaired: R01. |
| R02 | Suggested.lean:8 still imports “TauCeti.AlgebraicTopology.Quasicategory.CatInfty”. | Not repaired: R08. |
| R03 | README:46 still says “They are inputs here, not targets.” | Not repaired: R02. |
| R04 | README:44 still says “This Part proves their theory”; neither main owner is cited in Scope. | Not repaired: R06. |
| R05 | README:397 now says “π₀ of the fiber … is the set of H-morphisms”. | Repaired; compared with HTT line 14318. |
| R06 | `IsRelativeColimit`, `simplicialObjects` and `augmentedSimplicialObjects` are absent from the Lean file. | Repaired; empty header is separately R10. |
| R07 | `isCofinal_of_isCategoricalEquivalence` is absent; README:315 identifies it as a case of the cancellation theorem. | Repaired. |
| R08 | README:772 now names “LeftExtension.IsPointwiseLeftKanExtension” and says it “implies the weaker” universal property. | Partly repaired: contract omission R13. |

In the table, ∗ is a point, 2 is a discrete two-point space, J is the nerve of the free-living isomorphism, and source pages are the README's PDF pages. “Agrees” records the computed instance, not an elaboration result.

| Statement | Instances tried | First side computed | Second side computed | Result / change |
|---|---|---|---|---|
| §1.1.1 fat join | X=∅; X=Y=∗ | ∅⋄Y=Y; ∗⋄∗=Δ[1] | Pushouts give Y; interval | Agrees |
| §1.1.2 comparison | X=Δ[1], Y=∗ | Fat join has two nondegenerate triangles | Join has one; both present [2] | Equivalence, not isomorphism |
| §1.2.1 fat slice | C=N[1], p=0 or 1 | Fat slices Δ[1], ∗ | Ordinary coslices Δ[1], ∗ | Agrees |
| §1.2.2 restriction | K₀=∅, K=∗, C=N[1], p=0, S=∗ | C^{0/}→C is id | Every left-horn lift exists | Agrees |
| §1.3.1 mapping spaces | C=N[1]; (x,y)=(0,1),(1,0) | Right mapping spaces ∗, ∅ | Left and path models ∗, ∅ | Agrees |
| §1.4.1 mapping criterion | K=∅; C=N[1] | Initiality of cone 0: true; cone 1: false | Map(0,−)→∗ equivalences; Map(1,0)=∅ | Agrees; ownership R06 |
| §1.4.2 nerves | Circle index; ℤ with endomorphism −1 | Colimit ℤ/2 | Coinvariants ℤ/(−2)ℤ | Agrees; vertex-only result ℤ fails |
| §1.5.1 relative join | X={0}, Y={1}, S=2 | X×_S Y=∅; relative join=2 | Absolute join=Δ[1] | Base matters |
| §1.5.2 relative slice | Base ∗; q=id_{N[1]}, K=∗ | Induced slice map is id | Every edge is Cartesian for both maps | Agrees under stated hypotheses |
| §1.6.1 fiberwise colimit | S=∗, K=∅, Y=N[1] | Colimit choices {0} | Sections through fiberwise initial objects {0} | Contractible |
| §2.1.1 cofinality | Endpoint inclusions; fold 2→∗ | {1}: true; {0}: false; fold: false | Sections: equivalence; ∅→∗; 2→4 | Variance distinguished |
| §2.2.1; HTT line 10793, p.246 | {1}→Δ[1]; {0}→Δ[1] | Right anodyne: true; false | Contravariant trivial cofibration: true; false | Agrees |
| §2.2.2; HTT lines 10831, 10856, pp.247–248 | Glue two intervals at their final vertices; constant filtered diagram | Final vertex→two-edge V is right anodyne | Pushout has final vertex; filtered colimit unchanged | Agrees |
| §2.3.1; HTT line 10551, p.241 | id; {1}→Δ[1]→∗ | Cofinality true for all three | Weak types ∗; monic endpoint right anodyne | Composition and cancellation agree |
| §2.4.1 cone spaces | K=K′=∗, C=N[1] | M(0,1)=∗; M(1,0)=∅ | N(0,1)=∗; N(1,0)=∅ | Agrees |
| §2.5.1; HTT line 10659, p.244 | v={1}→Δ[1], p=id | Cocones to 0: ∅; to 1: ∗ | Restricted cocones to 0: ∅; to 1: ∗ | Fiber maps equivalences |
| §2.5.2; HTT line 10673, p.244 | Same v and p; control v={0} | Colimit cone has vertex 1 | {1} restriction colimit; {0} restriction not colimit | Cofinality needed |
| §2.6.1 categorical equivalences | ∗→J; control {0}→Δ[1] | Categorical equivalence: true; false | Cofinality: true; false | Weak equivalence alone insufficient |
| §3.1.1 rectification | Empty enriched index | Nerve of diagram category=∗ | Fun(∅,N(U°))=∗ | Agrees; ownership R06 |
| §3.1.2 strictification | I=∅, S=∗ | Choose C=∗; P unique | j=id; equality on empty diagram | Agrees |
| §3.2.1; HTT line 12161, p.275 | Spaces diagram ∗←2→∗ | Homotopy pushout S¹ | ∞-categorical pushout S¹ | Strict pushout ∗ is wrong; R06 |
| §3.3.1 existence | Spaces, empty index | Initial space ∅ | Terminal space ∗ | Both exist |
| §3.4.1 enriched representability | One-object monoid ℕ; η=0,1 | f↦0+f bijective | f↦1+f misses 0 | Distinguished element matters |
| §3.4.2 representability | C=N[1], constant F=∗ | Represented by 1 | At candidate 0, Map(1,0)=∅≠F(1) | Wrong candidate excluded |
| §3.4.3 final object criterion | Identity right fibration on N[1] | (1,∗) represents; (0,∗) does not | 1 final; 0 not final | Both directions agree |
| §3.5.1 tensor | Constant X; K=∅,∗,S¹ in spaces | Colimits ∅, X, X×S¹ | Maps out: ∗, Map(X,Z), Map(S¹,Map(X,Z)) | Repaired wording; stale citation R09 |
| §3.5.2 contractible index | Constant X on Δ[1]; control 2 | Colimit X; control X⊔X | Cone edges equivalences; fold generally not | Contractibility needed |
| §3.6.1 slice comparison | Z=∗; control base Z=S¹ | Slice at ∗ is original category | Derived self-maps over S¹ include ΩS¹≃ℤ | Strict fibres alone insufficient |
| §3.7.1 Lemma L | ∗→S¹←∗ | Limit ΩS¹≃ℤ | Homotopy pullback, not strict point | Agrees |
| §3.8.1 Cat∞ | Empty diagram; target [1] | Colimit ∅; limit ∗ | Map_Cat∞(∗,[1])=core([1])=2 | Core enrichment essential; R06 |
| §4.1.1; HTT line 10107, p.231 | Universal right fibration at T=S¹ | Fiber has weak type S¹ | Represented fiber Map_S(∗,S¹)≃S¹ | π₀-only replacement fails |
| §4.1.2; Foundation §7.7 route | K=Δ[1], F(0)=∗, F(1)=∅ | Unstraightening fibers ∗, ∅ | Pullback classified by ∅→∗ has fibers ∗, ∅ | Right variance agrees |
| §4.2.1 small tests | Vertex→circle; ℤ-torsor monodromy +1 | Sections over circle ∅ | Sections over vertex ℤ | Colimit test detects failure |
| §4.3.1; HTT line 10673, p.244 | v={1},{0}→Δ[1], test C=N[1] | Cofinality true; false | Preserve identity diagram's colimit true; false | Both directions; R06 |
| §4.4.1 cancellation | q:J→∗; p=∗→J or ∅→J | p cofinal true; false | qp cofinal true; false | Agrees |
| §4.5.1 right fibrations | {0}→Δ[1]; J×Δ[1]→Δ[1] | Cofinality false; true | RLP against monos false; true | Agrees |
| §4.5.2 factorization | ∅→∗ | Not cofinal | Trivial-fibration middle nonempty; first map cannot be right anodyne | Both false |
| §4.6.1; HTT line 10864, p.248 | Δ[1]→∗ | Cofinal true | Contravariant equivalence true; mono false | No monicity hypothesis needed |
| §4.6.2 pushout | Push out {1}→Δ[1] along ∗→∗ | Same final-vertex inclusion | Cofinal true | Agrees |
| §5.1.1 smooth criterion | {0}→Δ[1], pull back {1}→Δ[1] | Base change ∅→∗ | Not cofinal and not weak equivalence | Not smooth |
| §5.1.2 smooth definition | {1}→Δ[1]; control {0}→Δ[1] | First coCartesian, hence smooth | Second fails previous pullback | Wrong variance excluded |
| §5.2.1; HTT lines 11041, 11056, pp.251–252 | Intervals over ∗, glued at a vertex | Pushout two-edge tree→∗ | Every projection to ∗ smooth; filtered unions likewise | Agrees |
| §5.2.2; HTT line 11060, p.252 | {1}→Δ[1] | CoCartesian fibration true | Smooth true | Right-fibration control {0} fails |
| §5.2.3; HTT line 11084, p.252 | Identity bifibration S×T→S×T, T=2 | Projection fibers 2 | Base changes are products with 2, preserving cofinality | Agrees |
| §5.3.1 fiber detection | Base ∗; fold 2→∗ | Covariant equivalence false | Fiber weak equivalence false: π₀ sizes 2,1 | Agrees |
| §5.4.1 contractible fibers | J×Δ[1]→Δ[1] | Each fiber J contractible | Cofinal projection; section spaces equivalent | Agrees |
| §5.4.2 Theorem A | {1},{0}→Δ[1]; BG→∗, G=S₃ | Cofinality true; false; false | Coslices ∗,∗; over 1 empty; π₁(BG)=S₃ | Connectedness insufficient; R06 |
| §5.4.3 terminal fiber | Identity Δ[1]→Δ[1], b=1 | Fiber {1} | Inclusion {1}→Δ[1] cofinal | Agrees; R06 |
| §5.5.1 semisimplicial indexing | Over [0] | Comma category Δ_sᵒᵖ | Nerve contractible by adjoining a vertex | Cofinal |
| §6.1.1 decomposition | K=∗, I=∗, K_I=∅; I=∅ | K_F=2; K_F=K | Omitting lift data gives Δ[1] in first case | Discriminates construction |
| §6.2.1; HTT lines 11896, 11912, p.269 | A₀=∅, A=B=∗; contractible B clause | Inclusion {1}→Δ[1] | Right horn Λ[1,1], right anodyne | Agrees |
| §6.2.2; HTT line 11829, p.267 | I=∗, K_I=K=∗, q=id_x | K_F=Δ[1]; restriction on cones id | Trivial fibration | Agrees |
| §6.3.1; HTT line 11935, p.270 | I=∗, K_I=K | I_σ=∗ | I⁰_σ=∗ for degenerate σ, ∅ otherwise | Degeneracies distinguished |
| §6.3.2; HTT line 11941, p.270 | Same decomposition; control I=∅, K=∗ | ∗→K^▷ right anodyne | Control ∅→∗ fails; I_σ=∅ not contractible | Hypothesis discriminates |
| §6.3.3; HTT line 11998, p.271 | τ=κ=ω | ω≪ω: finite powers stay finite | Finite-colimit condition; finite filtered posets have final objects | Agrees at boundary |
| §6.4.1 category replacement | K=∗; K=∅ | Index Δ; empty category | N(Δ) contractible; ∅→∅ identity | Opposite convention correct here |
| §6.4.2 poset replacement | K=∗; K=∅ | Choose one-point poset; empty poset | Identity cofinal maps | Agrees |
| §6.4.3 finite replacement | K=∂Δ[2] | Face poset: six objects, six incidences | Its nerve is a six-edge circle | Finite replacement retains π₁ |
| §6.5.1 pushout pasting | Poset [2], top row 0,1,2; bottom 0,1,2 | Left/right pushouts 1,2 | Outer pushout 2 | Both conditions true |
| §6.5.2 decomposition colimit | Spine x₀→x₁→x₂ | Colimit x₂ | x₁⊔_{x₁}x₂≃x₂ | Agrees |
| §6.5.3 finite colimits | Poset N[1] | Empty colimit 0; binary colimit max | Initial object 0 and pushouts max | Existence and preservation agree for id |
| §6.5.4 κ-small colimits | Spaces; κ=ω | Empty coproduct ∅; finite colimits exist | Pushouts and finite coproducts exist | Agrees |
| §6.5.5 identified subcomplexes | K=Δ[1], A=∗ endpoints; constant ∗ in spaces | Quotient index circle: colimit S¹ | Homotopy coequalizer of id_∗,id_∗ is S¹ | Ordinary coequalizer would be wrong |
| §6.5.6 coequalizers | Spaces span ∗←2→∗ | Pushout S¹ | Coequalizer 2⇉2 has two vertices, two edges: S¹ | Agrees |
| §7.1.1; HTT line 12320, p.279 | C=N[1]→∗, K=∅ | Cone 0 is relative colimit; 1 is not | Coslice restrictions id; {1}→Δ[1] | Agrees |
| §7.1.2; HTT line 12841, p.289 | C⁰={0}⊆N[1]; F=id | At 1, indexing category ∗ with value 0 | Required value 0; actual F(1)=1 | Not a left Kan extension |
| §7.1.3; HTT line 13555, p.303 | δ=id_∗, D=N[1], f=0 | Left extensions are edges from 0 | Two choices: id_0 and 0→1 | Extension alone insufficient |
| §7.1.4; HTT line 13562; Kerodon line 58006 | Same δ and f | Only id_0 is Kan extended | Pointwise colimit of 0 is 0 | Both forms reject 0→1 |
| §7.2.1 stability | f=id_C; base changes | Every comparison is id | Every diagram is an f-colimit | Agrees |
| §7.2–§7.3 domain control | K=Λ[2,1], p=id_K | Inner, Cartesian and left-fibration conditions all true | Quasicategory condition false: composite 0→2 missing | Source hypotheses not implied: R07 |
| §7.2.2 equivalence invariance | C=C′=J, D=D′=∗; swap objects | Both objects initial in J | Both empty-diagram relative colimits | Agrees with added hypotheses: R07 |
| §7.2.3 cofinal reindexing | {1}→Δ[1], diagram id in N[1] | Colimit vertex 1 | Restricted identity cone at 1 | Agrees |
| §7.3.1; HTT line 12474, p.282 | Constant parameter in N[1] over ∗ | Cone at 0 initial before transport | Same cone after identity transport | Agrees |
| §7.3.2; HTT lines 12537, 12586, pp.283–284 | Constant fibration N[1]×Δ[1]→Δ[1], K=∅ | Each fiber's colimit 0 | Identity transports preserve 0; section (0,−) | Agrees with added hypotheses: R07 |
| §7.3.3; HTT lines 12681, 12700, 12791 | C=Δ[1], D=E=∗, c=0 | c relatively initial; pullback projection Δ[1]→∗ | Projection lacks left-horn filler 1→0 | Route false: R03; hypotheses R07 |
| §7.3.4; HTT line 14118, p.315 | Left fibration 2→∗; K=∗, control K=∅ | Constant singleton-index cone is relative colimit | Empty-index vertex gives ∗→2, not trivial | Contractibility needed |
| §7.3.5; HTT line 14138, p.316 | Same fibration, K=∗ | Identity cone at either point is colimit | Image is identity cone of ∗; lift exists | Agrees with added hypotheses: R07 |
| §7.4.1; HTT line 12996, p.292 | C⁰={0}⊆Δ[1], F constant x | Cones over edge equivalent to cones over x | Restriction presents the same mapping spaces | Agrees |
| §7.4.2; HTT line 13379, p.300 | C⁰=∅, C=∗, D=N[1] or 2 | Extension exists for N[1], not 2 | Initial object exists for N[1], not 2 | Both directions agree; R06 |
| §7.4.3; HTT line 13160, p.296 | m=0,n=1, X=N[1]→∗ | Boundary 0,1 extends by 0→1 | Starting at 1 would require 1→0 | Initiality needed |
| §7.4.4; HTT line 13203, p.296 | K=∅ | Relative fat slices X,Y | Induced map is the original inner fibration p | Agrees |
| §7.4.5; HTT line 13239, p.297 | C⁰=∅, C=∗, D=N[1], n=1 | Initial first vertex 0, second vertex 1 | Filler is 0→1 | Mathematics agrees; citations R09 |
| §7.4.6; HTT line 13488, p.302 | C⁰=∅, C=∗, D=N[1] or 2 | Restriction {0}→∗; ∅→∅ | Both trivial fibrations | Agrees; R06 |
| §7.4.7 arbitrary index | K=∅, C=N[1] | Colimit diagrams {0} | Fun(∅,C)=∗; restriction isomorphism | Agrees; citation R09 |
| §7.5.1 invariance | C=J, C⁰={0}, D=J | Every image edge is invertible | Kan condition true at both equivalent vertices | Agrees |
| §7.5.2 transitivity | {0}⊆{0,1}⊆[2], constant x | Both successive extensions have value x | Composite extension has value x | Agrees |
| §7.5.3 parameters | C′=2, C⁰={0}⊆[1] | Two independently constant extensions | Two pointwise equivalence conditions | Agrees |
| §7.6.1 independence | δ=id_∗; witnessing correspondence Δ[1] | Kan extensions are equivalence edges | Replacing correspondence by itself changes nothing | Monicity used for extension |
| §7.6.2 full inclusions | {1}⊆[1], f′=id_[1] | Slice at 0 empty, at 1 singleton | Values 0 initial, 1 supplied | Both forms hold; R06 |
| §7.6.3 comparison | δ:2→∗ | δ not monic; M^op(δ) has three vertices, two edges | R is the same V; c is iso | Sentence false: R05 |
| §7.6.4 fully faithful unit | δ=id_∗, f=∗ in spaces | Pointwise Kan unit must be equivalence | Map(∗,∗)→Map(∗,∗) identity | Agrees |
| §7.6.5 fiberwise computation | Identity inclusion over Δ[1] | Every functor Kan extends itself | Same condition true in each fiber | Agrees |
| §7.7.1 homotopy Kan extension | f=id on terminal category | Derived unit equivalence | Pointwise Kan extension equivalence | Agrees |
| §7.7.2 coCartesian fibers | δ=id_[1]; control {0}⊆[1] | Identity fibers ∗; control fiber at 1 empty | Control left Kan value x, not initial in general | CoCartesian hypothesis necessary |
| §8.1.1 presheaves | K=∅,∗,2,[1] | P(K)=∗,S,S×S, arrows X₁→X₀ | Vertex-only model misses arrow; covariant model reverses it | Definition discriminates; API R12 |
| §8.2.1 initial sections | Constant fibration N[1]×2→2 | Initial section (0,0) | Section category [1]×[1], initial (0,0) | Agrees |
| §8.2.2 section colimits | Same fibration; binary diagram | Max computed in each coordinate | Max in [1]×[1] | Agrees |
| §8.2.3 pointwise colimits | T=∅; T=2, C=N[1] | Fun(∅,C)=∗; coordinatewise maxima | Vacuous condition; maxima at both vertices | Agrees |
| §8.3.1 classified total space | K=∅; K=∗ with edge T₀→T₁ | Colimit iff target empty; iff T₀≃T₁ | ∅→X weak equivalence iff empty; X₀→X≃T₁ equivalence | Agrees; citation R09 |
| §8.3.2 total homotopy type | Constant ∗ on circle | Colimit S¹ | Classified total space circle | π₁=ℤ on both sides |
| §9.1.1 simplicial objects | C=N[1], U_n=0, U_−1=1 | Augmentation arrows 0→1 exist | Opposite variance requires 1→0, impossible | Variance discriminates |
| §9.1.2 groupoid objects | N[1]; nerve of S₃ | Degree-two simplices 4; 36 | Common-source pairs 5; 36 | Rejects [1], accepts nonabelian group |
| §9.1.3 Čech nerve | Sets: 2→∗; ∅→∗ | U_n has 2^(n+1) elements; 0 | Fiber powers have same counts | Agrees |
| §9.2.1; HTT line 25090, p.556 | K=Δ[0]; U=nerve([1]), K=Δ[1] | Δ_/Δ[0]=Δ; limit U[Δ[1]] has 3 elements | Elements(Δ[0])=Δᵒᵖ; vertices-only model has 4 | Elements identification false: R04 |
| §9.3.1; HTT line 25103, pp.556–558 | Nerve [1], outer two-edge horn | U₂ has 4 elements | Pullback has 5 elements; slices cannot agree | Both criteria fail |
| §9.3.2 pointed/group objects | Pointing in N[1]; S₃ in sets | Pointed objects: only 1→1; U₀=∗ | Maps into 1 would give two objects; S₃ has 36 degree-two simplices | Source and group condition discriminate |
| §9.3.3; HTT line 33697, p.743 | C=N[1], final object 1 | C_{1/}=∗ | Pointed-object category=∗ | Agrees |
| §9.3.4; HTT line 33679, p.743 | S₃; two-object discrete groupoid | U₀=∗, U₂=36; control U₀=2 | S₃×S₃ has 36; control not group object | Final U₀ necessary |
| §9.4.1 Čech characterization | Spaces: 2→∗; ∅→∗ | Fiber powers 2^(n+1); ∅ | Right Kan extensions have same values | Agrees |
| §9.4.2 realization | Constant X; Čech nerve of 2→∗ | Realizations X; ∗ | Ordinary degree-one homotopy coequalizer would give X×S¹ | Higher simplices matter |
| §9.5.1 semisimplicial objects | [0],[1] | Δ_s: Hom(0,1)=2, Hom(1,0)=0 | Δ: Hom(0,1)=2, Hom(1,0)=1 | Degeneracy removed |
| §9.6.1; HA lines 2891, 2900, pp.74–75 | n=1,m=1; control m=2 | Comma nerve graph: 4 vertices, 3 edges | Control: 6 vertices, 6 edges, π₁=ℤ | Bound m≤n discriminates |
| §9.7.1; SAG line 65082, p.1785 | Constant ∗ | Simplicial realization ∗ | Semisimplicial realization ∗ | Cofinality variance agrees |
| §9.7.2; SAG line 65088, p.1786 | K=Δ[1], ∂Δ[2], quotient circle | Nondegenerate face posets: 3,6 objects; circle fails nonsingularity | Subdivisions: two edges, six-edge circle | Carrier and negative control agree |
| §9.7.3; SAG line 65116, p.1786 | Horn Λ[2,1]; empty index | X[horn]=X₁×_{X₀}X₁ | X[∅]=terminal object, unavailable from pullbacks alone | n>0 and limit assumptions matter |

Headline signatures and their defining data, inspected at this head:

| Statement | Instances tried | First side computed | Second side computed | Result / change |
|---|---|---|---|---|
| `IsCategoricalEquivalence` | ∗→J; Δ[1]→∗ | Equivalence true; false | Functor homotopy categories agree; test [1] gives 3 arrows versus 2 objects | Native predicate; no vacuity |
| `Kan` | ∗, ∅, Δ[1] | First two included, third excluded | Third lacks inverse outer-horn filler | Real carrier |
| `spaces` | Kan complexes ∅,∗ | Two distinct vertices | Map(∗,∅)=∅, Map(∅,∗)=∗ | Not a discrete or π₀ carrier |
| `spacesPoint` | Δ[0] | Chosen vertex is ∗ | Endomorphism space contractible | Missing pin API: R01 |
| `universalLeftFibration` | Fibers at ∗,∅ | Map(∗,∗)=∗ | Map(∗,∅)=∅ | Variance correct |
| `IsPointwiseEquivalence` | J→∗ over ∗; 2→∗ | First true | Second false, π₀ sizes 2 and 1 | Not isomorphism of total sets |
| `ClassifiesLeft` | K=∗; classifying value ∗ or ∅ | Identity fibration classified by ∗ | Empty fibration classified by ∅ | Zigzags retain fiber weak type |
| `sectionsRestrict` | Fold 2→∗, fiber 2 | Domain sections=2 | Target sections=4; diagonal map | Correct direction |
| `IsCofinal` | Final and initial endpoints | {1} true | {0} false | Predicate uses right fibrations |
| `exists_isLimit_spaces` | Empty diagram; ∗→S¹←∗ | Limits ∗, ΩS¹ | ∗, discrete ℤ | Headline §3.7; R01 |
| `exists_isColimit_spaces` | Empty diagram; ∗←2→∗ | Colimits ∅, S¹ | ∅, homotopy pushout S¹ | Headline §3.3; R01 |
| `exists_isLimit_catInfty` | Empty diagram | Terminal ∞-category ∗ | Mapping spaces into ∗ contractible | Headline §3.8; R01 |
| `exists_isColimit_catInfty` | Empty diagram | Initial ∞-category ∅ | Mapping spaces out of ∅ contractible | Headline §3.8; R01/R06 |
| `isCofinal_iff_forall_isColimit` | {0},{1}→Δ[1] | False; true | Colimit preservation false; true in C=N[1] | Headline §4.3; R01/R06 |
| `isCofinal_comp_iff_of_isCategoricalEquivalence` | q:J→∗; p=∅ or ∗ | Composite false; true | p false; true | Headline §4.4; R01 |
| `isCofinal_iff_rlp_monomorphisms` | {0}→Δ[1]; J→∗ | False; true | RLP false; true | Headline §4.5; R01 |
| `isCofinal_iff_exists_rightAnodyne_trivialFibration` | ∅→∗ | Cofinality false | No factorization with first map weak equivalence and middle nonempty | Headline §4.5; R01 |
| `isCofinal_iff_isWeaklyContractible` | {1}→Δ[1]; BG→∗, G=S₃ | True; false | Comma fibers contractible; π₁=S₃ | Headline §5.4; R01/R06 |
| `isCofinal_nerveMap_toSimplexCategory_op` | Comma over [0] | Δ_sᵒᵖ | Contractible nerve | Headline §5.5; R01 |
| `exists_isCofinal_nerve_elements_op` | K=∗ | Elements(K)ᵒᵖ=Δ | N(Δ)→∗ cofinal | Headline §6.4; R04 concerns prose only |
| `exists_isCofinal_nerve_partialOrder` | K=∅; K=∗ | Empty and one-point posets | Identity cofinal maps | Headline §6.4; R01 |
| `subcomplexOver` | A={0}⊆[1], c=1; A=∅ | Pullback singleton | Empty pullback | Correct slice direction |
| `subcomplexOverCocone` | Same A,c | Domain singleton⋆∗=Δ[1] | Cocone edge 0→1 | Source and target determined |
| `IsLeftKanExtensionAt` | Same A,c, F=id_[1] | Cocone 0→1 | Not colimit of singleton 0 | Rejects wrong extension |
| `IsLeftKanExtension` | Constant 0 versus id_[1] | Constant functor satisfies every vertex | Identity fails at 1 | Global condition discriminates |
| `exists_isLeftKanExtension_iff` | P=False, C=∗, D=N[1] or 2 | Extension exists; does not exist | Initial object exists; does not exist | Headline §7.4; R01/R06 |
| `leftKanExtensions` | P=False, C=∗, D=N[1] | Full subcategory {0} | Excludes vertex 1 | Correct objects |
| `pointwiseColimitFunctors` | Same C,P; D=N[1] or 2 | Target subcategory ∗ | Target subcategory ∅ | Correct existence restriction |
| `exists_rlp_monomorphisms_leftKanExtensions_restrict` | Same two D | Restriction {0}→∗ | Restriction ∅→∅ | Both trivial fibrations; R01/R06 |
| `presheaf` | K=∅,∗,2 | ∗, S, S×S | Small objects lifted, morphisms remain correctly indexed | Native body; R01 dependencies |
| `exists_isColimit_ihom` | T=2, C=N[1], binary index | Coordinatewise max | Colimit in [1]×[1] | Headline §8.2; R01 |
| `isColimit_iff_forall_isColimit_evalAt` | Same; T=∅ | Max in each coordinate; unique empty functor | Global colimit; vacuous pointwise condition | Both directions agree; R01 |
| `exists_isColimit_presheaf` | K=∅ | Pointwise empty presheaf | Initial presheaf | Headline consequence §8.2; R01 |
| `exists_isLimit_presheaf` | K=∅ | Pointwise terminal presheaf | Terminal presheaf | Headline consequence §8.2; R01 |
| `isColimit_iff_isWeakHomotopyEquivalence` | K=∗; classified edge T₀→T₁ | Colimit iff edge equivalence | X₀→X≃T₁ weak equivalence iff same | Headline §8.3; R01 |
| Rectification; homotopy-colimit comparison; N(A°) completeness | Empty index; spaces span ∗←2→∗ | Terminal diagram category; homotopy pushout S¹ | Empty functor category; ∞-pushout S¹ | Named unstatable in docstring: model-category carriers missing |
| Cat∞ marked-model comparison | C=[1] | Core(Fun(∗,C)) has 2 points | Full Fun(∗,C)=Δ[1] is not the mapping Kan complex | Named unstatable: marked model missing |


- Source checks: all 15 seeded sections against HTT's numbered statements and PDF pages; 4 Kerodon locators (lines 57037, 57604, 58006, 58362); HA 1.2.4.16–17; SAG A.5.1.1–9. No source remained inaccessible.
- Pinned interfaces inspected include 10 anchors: `Mathlib/CategoryTheory/Elements.lean`:76; `Mathlib/CategoryTheory/Functor/KanExtension/Basic.lean`:174 and `Pointwise.lean`:326; `Mathlib/AlgebraicTopology/Quasicategory/Basic.lean`:41; `Mathlib/AlgebraicTopology/SimplicialSet/Nonsingular.lean`:48 and `Subdivision.lean`:46; `TauCeti/AlgebraicTopology/SimplicialSet/Coslice.lean`:119 and `WeaklyContractible.lean`:99; `TauCeti/AlgebraicTopology/Quasicategory/FullSubcategory.lean`:53 and `RightMappingSpace.lean`:89.
- Supplier audit: 6 supplier Parts inspected—InfinityCategoryFoundations, CartesianFibrations, ModelCategories, KanQuillen, SimplicialCategories and EnrichedLocalization; ModelCategoryTheory's index also read. Missing pinned inputs are R02; misdirected citations are R09/R13.
- Dependency command output: `depcheck: 244 roadmaps, 2197 edges, 0 problem(s)`; no UPWARD or CYCLE line.
- Gate: FAIL, four failing rules: `imports=7`, `build=15`, `empty-sections=1`, `stray-files=1`; all remaining counters zero. No changes outside the permitted family; checkout remains unchanged.
- Lean: 35 declarations read, including 19 sorried theorems; direct elaboration and the 35-name `#check @name` copy fail before signatures print. No additional padding identified by reading; no executable one-tactic result claimed.
- Headline inventory: the seven README groups are covered in the tables—cofinality, Theorem A, nerve replacements, homotopy-colimit comparison/completeness, Kan-extension existence/restriction, pointwise colimits, and total spaces of left fibrations. Availability defects are R01/R02.
- Description checked against the base-to-head addition: 1 new roadmap folder, 35 added declarations, 0 declarations removed from main, README 33,846 words versus stated 33.8k; inaccurate availability prose is R14.

Overlap check: read KanQuillen, EnrichedLocalization, SimplicialCategories, ModelCategories and ModelCategoryTheory (open #2269), BordismFormalGroups, StableHomotopyKTheory and EnhancedDerivedSheaves (main). Weak-equivalence/model machinery belongs to KanQuillen/ModelCategories; enriched homotopy Kan extensions and homotopy colimits to SimplicialCategories; enriched localization to EnrichedLocalization; ordinary homotopy-theoretic nerve tools to StableHomotopyKTheory; generic colimit comparisons, Cat∞ colimits and pointwise Kan formulas to BordismFormalGroups F6.5; final maps, Theorem A and relative Kan restriction to EnhancedDerivedSheaves E0.4/E3.1 (R06). No dropped supplier ids, conflicting head or second copy was reported by the overlap data. Board-package matches consume these owners or concern specialized spectra/sheaves; they do not establish a new owner here.

Source independence: 26 prose selections compared with 4 sources, including the 15 sampled sections, five additional passages (§1.1, §3.4, §3.5, §4.4 and the §8.3 Lean docstring), Kerodon, HA and SAG; no additional copied expression or reused table/figure found. Largest share HTT: 823 of 852 explicitly numbered statement-reference occurrences (repetitions counted; section-only citations excluded). HTT contents compared: independent arrangement; Layers 1–6 interleave §§4.1, 4.2, 4.4 and 3.3, while Layers 8–9 draw from Chapters 3, 5, 6 and 7 plus HA/SAG. Layer 3 precedes Layer 4 to supply §4.2's limits in spaces without §6.4; §7.4 and §7.6 depend on §7.1–§7.3, forcing the shared Kan-extension order.

## Not verifiable

- Elaboration, elaborated binder comparison and executable one-tactic probes: missing pinned Tau Ceti modules stop both the original file and the 35-declaration signature copy before checking any declarations (R01).
- The description's assertion of successful elaboration at Tau Ceti `8b9f13d993` and Mathlib `e8ba86fa97`: those are not this repository's pins and were not built.

## Source issues

- **Misprint** in HTT at Proposition 7.2.2.4, condition (2), printed page 725: the source says both product factors are U(S); it should be U(S) and U(S′); affects nothing.
- **Gap** in HTT at Proposition 4.1.1.8, proof of (3) ⇒ (1), printed page 227: the source says use limits from 4.2.4.8, whose proof uses 4.2.3.14, whose proof invokes 4.1.1.8; it should be establish limits in spaces independently before this implication; affects the proof.
- **Misprint** in SAG at Notation A.5.1.1, printed page 1785: the source says the objects [n] have n>0; it should be n≥0; affects nothing.
- **Misprint** in SAG at Notation A.5.1.1, printed page 1785: the source says simplicial and semisimplicial objects of C are functors into S; it should be functors into C; affects nothing.

## For the human reviewers

- **Licence/publication status.** HA and SAG are author-hosted manuscripts, at the versions in README:1353–1359. Their cited pages were legally read; no tables, figures or public-formalization declarations were reused. Any permission for reproducing their expression remains a human decision.

