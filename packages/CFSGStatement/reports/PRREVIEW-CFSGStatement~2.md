# Review of CFSGStatement (pull request #1334 at b1973e1)
**Verdict:** accepted

## R01 (P3) — Record the two retained sources in the source manifest

**Location:** `TauCetiRoadmap/CFSGStatement/README.md:540`, “arXiv:2108.06291v2”; also line 547, “FiniteSimpleGroups”.

**Claim:** These references have stable, retrievable provenance. The README names `ree2021`, but the folder contains no `sources.toml` recording that key, the version, retrieval provenance or content hash.

**Witness:** The tracked folder has README, Suggested, metadata and generated status/progress files, but no source manifest. Both retained references were successfully fetched through the sources service; `ree2021 line 133` resolves to §2.2 on printed page 4.

**Repair:** Add `TauCetiRoadmap/CFSGStatement/sources.toml` in schema `tauceti-roadmap-sources/v1`, retaining keys `ree2021` and `finite-simple-groups-lean`, with the bibliographic/locator fields and the service's URL, retrieval, hash, licence and status fields. Record the Radu version as v2. Reopening that entry must locate §2.2, printed page 4, rather than silently selecting another version. Both source lookups succeeded in this review; no additional text is needed. This is the remaining part of previous R14, not a mathematical blocker.

## R02 (P3) — Point the exceptional datum map to its defining module

**Location:** `TauCetiRoadmap/CFSGStatement/README.md:120–121`, “`Datum/Steinberg.lean` supplies … `TauCeti.SuzukiReeIndex.datumSteinberg`.”

**Claim:** That module supplies both the graph-twisted and exceptional datum maps. It supplies only the graph-twisted map. The exceptional map exists at the pin in a different module.

**Witness:** `TauCeti/GroupTheory/SpecificGroups/CFSG/HalfFrobenius.lean:174` defines the exceptional map. A scratch import of `Datum.Steinberg` accepts the graph map's `#check` but reports `Unknown constant` for `TauCeti.SuzukiReeIndex.datumSteinberg`.

**Repair:** Keep `Datum/Steinberg.lean` as the graph-map locator and cite `TauCeti/GroupTheory/SpecificGroups/CFSG/HalfFrobenius.lean:174` for the exceptional map, with its square theorem at line 203. Adding that import to the same scratch probe makes both map checks and the square-theorem check elaborate with no warnings. For the B₂,m=1 instance its exponent is 3 and its square scaling is 8, unchanged by the locator correction. This is a wrong file locator with an existing pinned supplier, not an unowned prerequisite or a supplier gap.

## Verified sound

:robot: Independent AI-assisted review by Codex. This is a full review of the two specified files at `b1973e17a4aeff8726ea1b5214e6644d12c17177`. It is readiness for a human's final approval, not AI approval or a proof of CFSG. There are **0 P1, 0 P2 and 2 P3 findings**. No pull-request file was changed.

**Previous findings, checked first.** The following passages are from the repaired head. Removing an added, out-of-scope theorem programme is distinguished from proving it.

| Previous finding | Current passage / locator | Resolution |
| --- | --- | --- |
| R01: forbidden import and failed build | `Suggested.lean:1`: “import Mathlib”; lines 16–21 identify the unavailable canonical carrier | Repaired. There is no roadmap import. Direct elaboration exits 0 with no warnings. |
| R02: nonexistent ReductiveGroups subcontracts | README:164: “Consume Layer 9B's named items”; line 174: “Consume C4, ‘Points,’” | Repaired. The named 9B bullets and C4 Points exist on main and supply the specified contracts. |
| R03: missing inverse on signed J | README:73: “X ↦ −JXᵀJ⁻¹” | Repaired. At lines 83–87 the corrected bracket values are 2E and 2E over 𝔽₅; the rejected formula gives 3E and 2E. |
| R04: nine admitted data definitions | `Suggested.lean:25`: “There are no stand-in carriers or admitted data here.” | Repaired. Inspection finds zero data declarations and zero admissions. |
| R05: private copies of existing work | README:20: “consumed rather than replanned”; lines 107–153 enumerate the native APIs | Repaired. The remaining constructions specialize the distinct canonical carrier and compare it with native represented models. They do not recreate the native index, compiler, presentations or transport functors. |
| R06: missing statable root-datum headlines | README:42–44: “Classification of arbitrary Steinberg endomorphisms, Weyl correction, and completeness of diagram conjugacy representatives are outside this statement-construction roadmap” | Repaired by removing that added programme, not by declaring it unstatable. Every retained headline is named in the Lean docstring, and each depends on the unavailable canonical points. |
| R07: raw diagram maps incorrectly identified with chosen indices | README:309: “not literally the selected fork swap”; line 311: “do not assert a classification” | Repaired. The two D₄ conjugations compute correctly, and there is no raw-map completeness claim. |
| R08: new programme requires Part II | README:43–44: “an extension in that direction is CFSGStatement, Part II. No result here depends on such a classification.” | Repaired by excluding the extension. No claim that a Part II implementation or roadmap has been delivered is needed for this scope. |
| R09: Suzuki attributed to absent Mathlib API | README:142–148 names `TauCeti.suzukiGroup` and both native equivalences | Repaired. The named declarations and valid-index hypotheses are present at the Tau Ceti pin. |
| R10: acceptance-test padding | `Suggested.lean:23–25`: native APIs are “not additional headline targets” | Repaired. There are zero theorem declarations, zero examples and zero padding candidates. |
| R11: two nonexistent local identifier claims | README:118 and 124 give the fully qualified native membership and power theorem names | Repaired. Both resolve at the pin, rather than being added as duplicate local declarations. |
| R12: process history | README:322–332 states the root, torus and intertwining equations directly | Repaired. No retained PR-number/history passage, local machine path or process instruction was found. |
| R13: missing APIs, Checks and layers | README:195 onward has six layers, seven numbered target subsections, seven Needs blocks and eight Checks blocks including Conventions | Repaired. Every layer ends with Examples and Dependencies; each target subsection has three Check bullets and its API/construction laws. |
| R14: locators and manifest | README:276–278 gives Radu v2, §2.2, printed p.4; the other sampled inputs have named supplier sections/declarations | Partly repaired. All retained direct sources are readable and the named supplier contracts resolve. The manifest is still absent (R01), and the exceptional datum-map file locator needs correction (R02). The deleted broad bibliography does not create a new request for those texts. |
| R15: obsolete no-licence claim | README:547–550 describes an independent formalization without claiming absence of a licence | Repaired. The fetched author repository identifies Apache-2.0 at `finite-simple-groups-lean line 524`. |

**Gate, elaboration and scope.** The requested head was confirmed, `git status --short` was empty, and the main-to-head diff outside `TauCetiRoadmap/CFSGStatement` was empty. The worker's gate reports every listed scanner, dependency, scope and build check at zero and ends `build=0 OK`. This includes imports, admitted data/examples, set_option, missing README identifiers, stray files and outside-folder changes. The generated STATUS/PROGRESS files are not new stray files.

I separately ran `lake env lean` on the original `TauCetiRoadmap/CFSGStatement/Suggested.lean` from the worktree: **exit 0, no output, no warnings**. Its single import is Mathlib. There are **0 named declarations**, so the requested per-declaration `#check @name` audit has zero entries and there are no section binders to lose. Likewise the one-tactic padding probe has zero sorried theorems to try. No Tau Ceti object-file build was needed. The separate R02 import probes failed and passed as described in that finding; they do not alter the passing original module result. The empty acceptance file is intentional under the stated rules, not evidence that the canonical comparisons have been proved.

The dependency command was run against the supplied order and content main. Its complete output was:

```text
depcheck: 204 roadmaps, 1481 edges, 0 problem(s)
```

There is no UPWARD, CYCLE or moved line. R02 is a module-locator error, not a missing mathematical input. All seven Needs blocks and the supplier prose were read. The construction order is canonical points → independent maps → model comparisons → fixed/quotient transport → Suzuki and classification comparisons. Layer 5 is correctly absent from Layer 6's prerequisites. CFSGBasicProperties is a consumer/scope exclusion, not an input. No declared supplier gaps are used.

**Source sample: all seven requested targets.** These are checks of the exact inputs actually cited by this head. A named roadmap target is an allowed supplier contract; it is not represented here as an already proved library theorem. No source is flagged unverified in the new README. Both direct external references were fetched through the sources service, without modifying a manifest or copying source text into the repository.

| Sampled target | Text opened at the locator | What it supports, with hypotheses and limits |
| --- | --- | --- |
| 1.1 Canonical points and pinning | Main `TauCetiRoadmap/ChevalleyGroups/README.md:274`, 279–309, 426–442 and 546–555; RootSystems Layer 6 at `TauCetiRoadmap/RepresentationTheory/RootSystems/README.md:356` | Simply connected points, root and torus immersions, conjugation and root generation; determination from both signs of simple roots. Here K is an algebraically closed field of prime characteristic, so the field and simply connected hypotheses are present. No claim of generation over arbitrary rings is introduced. |
| 2.1 Ordinary and graph-twisted maps | Main ChevalleyGroups C5 at README:479–515; pinned `CFSG/Datum/Steinberg.lean:123`, 147 and 197 | Character pullback composes contravariantly; graph action uses the inverse datum automorphism, commutes with field maps, and has the recorded positive/negative simple-root equations. General-root signs are retained. The twist-order power uses a prime power q, not arbitrary natural q. |
| 2.2 Half-Frobenius maps | `ree2021 line 104` and lines 133–139: arXiv:2108.06291v2, §2.2, **printed p.4**, not a numbered theorem; main ChevalleyGroups C5 README:516–545 | Radu works with a simple simply connected group over an algebraically closed field, and gives C₂/2, G₂/3, F₄/2, τ²=Frob and τ^(2s+1) for positive s. The README matches m≥1 and states the C₂/B₂ adapter. It correctly sources m=0 Tits to the native convention, not this positive-s passage. Root signs/exponents and the character normalization come from C5 and the native datum APIs, not from an invented extra assertion in Radu. |
| 3.1 Root, torus and Steinberg compatibility | Main ChevalleyGroups C4 README:426–431, C6:630–661, C7:666–673; ReductiveGroups 9B README:1617–1657 | C6 compares actual Chevalley data with equal full weight lattice and matches root maps, torus and endomorphisms. C4 supplies specialization equality; flatness alone is not used as a substitute. C7 compares the special scheme map with the point map over perfect fields, which includes K. The roadmap supplies the indexed instantiations rather than citing a nonexistent 9B.1/2/3. |
| 4.1 Indexed fixed-derived-central quotient | Pinned `TauCeti/GroupTheory/FixedSubgroup.lean:58`, 127; `TauCeti/GroupTheory/FixedPointCandidate.lean:60`, 74, 79 and 99 | Equalizer with identity, then derived subgroup modulo its own centre. Transport requires precisely an ambient multiplicative equivalence and the intertwining equation. No finiteness, simplicity or perfectness is smuggled into the general construction. |
| 5.1 Comparison with the generated group | Pinned `TauCeti/GroupTheory/SpecificGroups/CFSG/Suzuki/Candidate.lean:123`, 129 and 138; `Suzuki/Generation.lean:342` | The native equivalence runs from represented candidate to generated Suzuki group, with m and its validity proof. Hence Layer 4's inverse is the correct first factor. The value equations and inverse equation exist at the advertised names. Validity forces m≥1; the m=0 comparison is not claimed. |
| 6.1 Assembly and comparison of statements | Pinned `TauCeti/GroupTheory/SpecificGroups/CFSG/Classification.lean:41`, 54 and 67; `TauCeti/GroupTheory/SimpleGroupUniverse.lean:44` | Four-branch represented candidate family and proposition in arbitrary universe. Composition with the new indexed equivalences gives both implications. Generic universe transport needs no finiteness/simplicity of the candidates. This does not prove either classification proposition. |

The remaining direct reference, the author repository linked at README:547, was readable: its named-group material appears at `finite-simple-groups-lean line 306` and its licence at line 524. The README makes it provenance rather than a dependency. There are **zero unresolved direct-source requests**. Supplier books were not silently treated as read: the assertions above were checked against the supplier contracts and pinned definitions actually consumed.

**Pinned-library audit.** The local package revisions agree with the manifest: Mathlib `6b7abb3c7686292736be2955bd3eb9ebf63b456a`, Tau Ceti `a91d3aafa8cd3e6bc33dfde0d7677ed0f1625039`. The following 26 groups of declarations were opened at those pins, including bodies or hypotheses, not merely matched by name. Paths beginning Mathlib or TauCeti refer to the corresponding library repository.

| Object / declarations | Exact file and line opened | Relevant content / limitation |
| --- | --- | --- |
| `ZMod`, `Multiplicative` | `Mathlib/Data/ZMod/Defs.lean:138`; `Mathlib/Algebra/Group/TypeTags/Basic.lean:44` | ZMod 0 is ℤ, while ZMod (n+1) uses Fin (n+1); the native prime proof excludes the 0/1 junk cases here. Multiplicative is the additive-to-multiplicative type tag. |
| `GaloisField` | `Mathlib/FieldTheory/Finite/GaloisField.lean:64` and 69 | Splitting field of X^(p^n)−X, with prime-p instance. No use of n=0 as a field of one element. |
| `AlgebraicClosure` | `Mathlib/FieldTheory/IsAlgClosed/AlgebraicClosure.lean:127` | Polynomial quotient construction, not an opaque CFSG-specific field. |
| `alternatingGroup` | `Mathlib/GroupTheory/SpecificGroups/Alternating.lean:72` | Kernel of permutation sign. |
| `FreeGroup`, `PresentedGroup` | `Mathlib/GroupTheory/FreeGroup/Basic.lean:469`; `Mathlib/GroupTheory/PresentedGroup.lean:39` | Word quotient; quotient by normal closure of relators. Does not recognize a presentation as a named sporadic group. |
| `MonoidHom.eqLocus` | `Mathlib/Algebra/Group/Subgroup/Ker.lean:388` | Subgroup of equality points, with no finite-group assumption. |
| `commutator`, `Subgroup.center` | `Mathlib/GroupTheory/Commutator/Basic.lean:449`; `Mathlib/GroupTheory/Subgroup/Center.lean:30` | Derived subgroup and commuting-element subgroup; the centre's ambient type matters. |
| `IsSimpleGroup` | `Mathlib/GroupTheory/Subgroup/Simple.lean:38` | Explicitly extends Nontrivial; every normal subgroup is bottom or top. |
| `PrimePower`, `LieTypeIndex.Valid`, index subtypes | `TauCeti/GroupTheory/SpecificGroups/CFSG/Index.lean:71`, 128, 159, 181, 815–823 | Prime base, positive exponent, range restrictions and preferred representatives; no finiteness or simplicity conclusion. |
| `SporadicName`, `CFSGIndex` | Same Index file:1444 and 1463 | 26 names and four constructors; cyclic prime and alternating degree≥5 are proof fields. |
| `ValidLieTypeIndex.Closure` | `TauCeti/GroupTheory/SpecificGroups/CFSG/Closure.lean:38` | Exactly AlgebraicClosure (ZMod characteristic), with inherited field/closedness/characteristic instances. |
| `diagramPerm`, `twistOrder` | `TauCeti/GroupTheory/SpecificGroups/CFSG/GraphTwisted.lean:106` and 129 | Native dispatch to identity, chain reversal, fork swap, E₆ swaps and D₄ triality. |
| `lengthPerm`, `exponent` | `TauCeti/GroupTheory/SpecificGroups/CFSG/SuzukiRee.lean:81` and 182 | Swaps/reversal and source-root exponent 1 for long, p for short. |
| Diagram membership and `datumGraphAut` | `TauCeti/GroupTheory/SpecificGroups/CFSG/RootDatumAutomorphism.lean:62` and 71 | Membership in the pinned diagram-symmetry group and its native root-datum lift. |
| Graph `datumSteinberg` | `TauCeti/GroupTheory/SpecificGroups/CFSG/Datum/Steinberg.lean:123`, 147 and 197 | Inverse graph action on weights and its simple-root equation. |
| Exceptional `datumSteinberg`, square law | `TauCeti/GroupTheory/SpecificGroups/CFSG/HalfFrobenius.lean:174` and 203 | Odd power of the selected special isogeny; square is scaling by the field order. This corrects the README's file locator, R02. |
| Uniform `datumSteinberg`, positive power theorem | `TauCeti/GroupTheory/SpecificGroups/CFSG/Datum/Assembly.lean:117`, 170 and 184 | Branch dispatcher, exceptional square law, and witnesses n>0, k>0, c=p^k. |
| `simplyConnectedRootDatum`, `simplyConnectedBase` | `TauCeti/LinearAlgebra/RootSystem/SimplyConnectedRootDatum/Assembly.lean:79` and 94 | Native family dispatcher, actual rank-indexed integral lattices and base. |
| `IsLongSimpleRoot`, special weight matrices | `TauCeti/LinearAlgebra/RootSystem/RootLength.lean:241`; `SimplyConnectedRootDatum/B/SpecialMap.lean:79`, `G2/SpecialMap.lean:85`, `F4/SpecialMap.lean:93` in the same RootSystem directory | B₂ flags (long,short), G₂ (short,long), F₄ (long,long,short,short); the matrices square to 2I,3I,2I. |
| Represented `AmbientGroup`, root maps | `TauCeti/GroupTheory/SpecificGroups/CFSG/Assembly/AmbientGroup.lean:130`, 156; `Assembly/GraphTwisted.lean:155` | Genuine represented family dispatch, including type-B spin for ordinary B and the symplectic model for Suzuki. It is not the uniform canonical Chevalley carrier. |
| Represented `steinberg`, `FixedPoints`, `Group` | `TauCeti/GroupTheory/SpecificGroups/CFSG/Assembly/LieType.lean:62`, 129 and 133 | Every one of the 17 constructors dispatches to its family; quotient definition uses FixedPointCandidate. |
| `fixedSubgroup`, `fixedSubgroupCongr`, `FixedPointCandidate.congr` | `TauCeti/GroupTheory/FixedSubgroup.lean:58`, 127; `TauCeti/GroupTheory/FixedPointCandidate.lean:60`, 74–101 | Real definitions with intertwining, representative, identity, composition and inverse laws. |
| `Relator.toWord_toFreeGroup` | `TauCeti/GroupTheory/Presentation/Relator.lean:337` | Compiler theorem for the actual word semantics. |
| Sporadic dispatcher, metadata, group | `TauCeti/GroupTheory/SpecificGroups/CFSG/Sporadic/Presentation.lean:66`, 100 and 131 | All 26 concrete branches; metadata validates counts, not mathematical recognition. |
| Suzuki construction and equivalences | `TauCeti/GroupTheory/SpecificGroups/CFSG/Suzuki/Generated.lean:107`, 253; `Suzuki/Generation.lean:342`; `Suzuki/Candidate.lean:123`, 129 and 138 | Generated matrices over GaloisField 2 (2m+1), and the direction/value laws used by Layer 5. |
| Classification and universe transport | `TauCeti/GroupTheory/SpecificGroups/CFSG/Classification.lean:41`, 54, 67; `TauCeti/GroupTheory/SimpleGroupUniverse.lean:44` | Exact finite-simple-group quantifiers and transport through Shrink; does not prove CFSG. |

**Ownership and supply.** Object searches used the roadmap service on main/open heads and read-only searches of the board packages, then opened the relevant hits. Main ChevalleyGroups and the nested main RootSystems roadmap were read as shape and ownership examples. All four cross-roadmap references were resolved: RootSystems Layer 6 (README:356), ReductiveGroups 9A/9B (README:1592 and 1610), ChevalleyGroups C2–C7 (README:274, 377, 455, 628, 664), and the consumer CFSGBasicProperties F0–F1/T1–T3/P1–P2 (README:116, 180, 225, 320). Existing-roadmap revisions were not substituted for main.

The resolver reports no unknown roadmap citations or local names. It explicitly does not check external library names in its own environment; the pinned-source reads above supply that check.

The nearest potentially overlapping open work was read at its supplied head: SpinRepresentations §8B's tripled **complex** points/CliffordSpin comparison, and RootSystemsPartII's folding and diagram-action programme. The former identifies a complex representation/Clifford model; the latter constructs folded root data. Neither owns the CFSG comparison on the specified prime-characteristic algebraic closures or the canonical classification assembly. ClassicalGroupsPartII and the relevant board-package object searches produced no competing canonical CFSG endpoint. The shared constructor and generic comparisons stay with ReductiveGroups/ChevalleyGroups. CFSGStatement retains only their indexed finite-group specializations and the existing statement endpoint. No new owner was invented and no upward prerequisite was moved here.

Ownership against the supplied open files was checked. Search output mentioning additional open revisions without a supplied checkout was not used as a new dependency or as a basis for claiming those entire PRs reviewed. There are no local declarations capable of colliding with a sibling's fully qualified Lean name.

**Headline completeness.** README:7–10, 253–257, 288–291, 322–332, 406–409, 443–449 and 494–499 promise: (1) ordinary/graph character compatibility, (2) exceptional and uniform character compatibility, (3) all represented root/torus/Steinberg comparisons, (4) their fixed-group/candidate transports, (5) the canonical Suzuki comparison, and (6) canonical-versus-represented classification equivalence. The final proposition is defined, not proved. Each is covered by `Suggested.lean:9–21`.

Object searches in the pinned libraries found represented groups, generic toral constructions and the simple-connectivity property, but no assembled uniform C2 simply connected point carrier with its canonical pinning and C5 maps. The represented dispatch body's 17 family cases are not a simple definition of that independently required carrier. A long replacement construction or putting that same dispatch on both sides would evade the intended comparison. Accordingly no retained headline is made statable by a few permissible simple definitions. The removed Weyl-correction/root-datum classification programme remains statable in part, but it is no longer this roadmap's target.

**Adversarial pass: 61 rows.** The rows below cover the seven sampled subsections, all retained headline groups, the definitions and API assertions, all 12 represented-model rows (17 constructors), and both findings' concrete instances. Finite group orders/commutators, SL₂ matrices, permutations, special-isogeny matrix squares and Cartan determinants were independently recomputed. The other rows give explicit algebraic evaluations. “Pass” means that the stated instance and negative control agree with the specification; it does not claim a proof of a general supplier target or a construction absent at the pin. Ambient canonical equalities below are requirements checked in their explicit small models, not evaluations of nonexistent Lean constants.

| Statement / locator | Instances tried | Values on the two sides / wrong-model value | Result | Change |
| --- | --- | --- | --- | --- |
| Prime-power and validity convention, 49–54 | p=1, exponent=0, rank=0; A₁(7) | Prime 1=false; 0<0=false; A₀ range=false; A₁(7) Valid=true and q=7 | Pass; junk excluded | None |
| Small-field and half-family conventions, 62–66 | Suzuki m=0,1,2; Tits | Suzuki validity false,true,true; q=2,8,32; Tits valid with p=2, q=2, type F₄ | Pass | None |
| Characteristic and closure, 50–51 | p=2,3; a²+a+1=0 over 𝔽₂ | Characteristic 2,3; a²=a+1≠a, while a⁴=a; closure is not the prime field | Pass | None |
| Bourbaki numbering/length, 56–60 | B₂, C₂, G₂, F₄ | Long flags (T,F), (F,T), (F,T), (T,T,F,F); B₂→C₂ swap preserves those flags | Pass | None |
| Contravariant composition, 68–70 | Torus A=diag(2,1), B=swap | Pullback of AB is BᵀAᵀ=[[0,1],[2,0]]; wrong order AᵀBᵀ=[[0,2],[1,0]] | Pass; order distinguished | None |
| Signed-antidiagonal differential, 72–87 | J,H,E over 𝔽₅ | J²=−I, J⁻¹=−J; gH=H, gE=E; g[H,E]=[gH,gE]=2E; final J instead gives 3E versus 2E | Pass; old defect repaired | None |
| Canonical points definition, 199–203 | A₁, p=7; twisted/untwisted D₄ at p=2 | A₁ model is SL₂(𝔽̄₇); both D₄ inputs specialize the same rank-4 datum and same field, versus rank 1 for A₁ | Pass; parameter determined | None |
| Root identity/addition/negation, 207–208 | x(t)=I+tE₁₂ in SL₂(𝔽₅), t=0,1,2,3 | x(0)=I; x(1)≠I; x(2)x(3)=I=x(0); x(2)⁻¹=x(3); multiplicative parameter predicts x(1)≠I | Pass | None |
| Root injectivity and negative root, 207–208 | Upper/lower SL₂ roots at 0,1 | Upper entries (1,2)=0,1; lower entries (2,1)=0,1; both maps injective on these values; zero map identifies the two | Pass | None |
| Torus homomorphism/injectivity, 209 | h(s)=diag(s,s⁻¹), s=2,3 over 𝔽₅ | h(2)h(3)=I=h(1); h(2)=diag(2,3)≠I | Pass | None |
| Root conjugation character, 209–210 | h(2), x(1) in SL₂(𝔽₅) | h(2)x(1)h(2)⁻¹=[[1,4],[0,1]]=x(2²); using weight 1 gives x(2) | Pass | None |
| Generation/determination, 211–224 | Upper/lower unit roots in SL₂(𝔽₅), then ×C₂ | Generated order 120=SL₂ order; in product generated order 120<240, excluding the inert factor | Pass | None |
| Need both root signs, 211–212 | Conjugation by I+E₁₃ in SL₃ | Commutes with E₁₂,E₂₃: brackets 0,0; bracket with E₃₂ is E₁₂≠0 | Pass; positive roots alone insufficient | None |
| Graph map definition/permutations, 241–244 | A₂, D₄, E₆ | Permutation arrays (1,0), (2,1,3,0), (5,1,4,3,2,0); orders 2,3,2 | Pass | None |
| Ordinary map and both root signs, 248–250 | Frobenius q=2 on x₊(a),x₋(a), a∈𝔽₄ | Parameter on both signs becomes a²=a+1; identity would leave a | Pass | None |
| General-root signs, 250 | SL₃ graph involution, J antidiagonal (1,−1,1) | E₁₂→E₂₃, E₂₃→E₁₂, E₁₃→−E₁₃; sign +1 on every root fails in odd characteristic | Pass | None |
| Graph/Frobenius commutation, 251 | A₂ swap with q=2, root 0 parameter a∈𝔽₄ | γFrob and Frobγ both give x₁(a+1) | Pass | None |
| Twist-order power, 251–252 | r=1,2,3 and q=2 | Iterate exponents 2,4,8 respectively; for A₂, a⁴=a while a²=a+1; wrong r=1 differs | Pass | None |
| Graph character compatibility, 253–257 | D₄ σ=(0 2 3), q=2 | Pullback α₀→2α₃→4α₂→8α₀; wrong orientation first gives 2α₂ | Pass | None |
| Diagram examples, 308–311 | Conjugate (0 2) by (0 3), and σ by (2 3) | Results (2 3) and (0 3 2); raw (0 2)(0)=2 but selected (2 3)(0)=0 | Pass; conjugacy not equality | None |
| Half-Frobenius definition, 274–278 | B₂,p=2,m=1; G₂,p=3,m=1; F₄,p=2,m=0 | Powers τ³,τ³,τ; squares Frob₈,Frob₂₇,Frob₂; agrees with positive-m source plus separate Tits convention | Pass | None |
| Exceptional simple-root law and its square, 282–285 | B₂; G₂; F₄ | Source exponent arrays (1,2),(3,1),(1,1,2,2); paired products (2,2),(3,3),(2,2,2,2) | Pass; normalization needed beyond square | None |
| Odd-power simple-root law, 286–287 | m=1 B₂/G₂; m=2 B₂ | Arrays (2,4),(9,3),(4,8); square exponents 8,27,32 on each root | Pass | None |
| Wrong odd-power construction, 298–299 | B₂,m=1, τ∘Frob₈ | Wrong source exponents (8,16), square 128; required (2,4), square 8 | Pass negative control | None |
| Exceptional character compatibility, 288–291 | Native weight matrices B₂/G₂/F₄ | [[0,1],[2,0]]²=2I; [[0,3],[1,0]]²=3I; anti-diagonal (1,1,2,2) matrix squared=2I; odd cubes squared=8I,27I,8I | Pass; character/source exponents distinguished | None |
| Exceptional torus normalization, 302–304 | s of order 7 in 𝔽₈ˣ | Correct torus exponents −2=−2; reversed assignment forces exponents −1≡6 and −4≡3 mod7, unequal | Pass | None |
| Model comparison root law/inverse/uniqueness, 322–332 | SL₂ identity comparison at u=0,1; compose with inverse | e(x(0))=I, e(x(1))=I+E, e⁻¹e(x(1))=I+E; trivial map gives I and fails at 1 | Pass; root generation determines e | None |
| Model torus law, 328–329 | SL₂ torus s=2 and inverse comparison | Both images diag(2,3); adjoint projection identifies diag(4,4) with I and is not an equivalence | Pass | None |
| Intertwining, 330–331 | e=id, F=Frob₂ on x(a) over 𝔽₄ | eF(x(a))=F e(x(a))=x(a+1); taking F′=id makes RHS x(a)≠x(a+1) | Pass; map cannot be arbitrary | None |
| A/²A model row, 342 | SL₂ and SL₃ signed graph comparison | SL₂ bracket values 2E/2E; SL₃ root 0→1→0, highest root coefficient 1→−1→1 | Pass on explicit models | None |
| B including rank two, 343 | B₂ weight versus root lattice | det Cartan=2; full weight quotient P/Q has 2 elements rather than 1; spin centre at odd characteristic retains ±1 | Pass on lattice control; general adapter is target | None |
| C model row, 344 | C₃ standard symplectic representation | Matrix dimension 6=2·3; Cartan determinant 2; swapping B/C orientation changes terminal root from short to long | Pass on lattice/numbering control | None |
| D/²D model row, 345 | D₄ spin versus vector model | det Cartan=4; P/Q has order4; one vector central character spans order2, two distinct half-spin characters span order4 | Pass; vector image alone insufficient | None |
| Triality model row, 346 | 8ᵥ⊕8ₛ⊕8꜀ and only 8ₛ⊕8꜀ | Dimensions 24 and16; cycle of all three returns after3; two-summand subset maps to a different subset | Pass | None |
| E₆ model row, 347 | Minuscule versus adjoint weights | dim=27; det Cartan=3; minuscule central class has order3 whereas roots give zero class | Pass on lattice control | None |
| ²E₆ model row, 348 | 27⊕27 dual pair | dim=54; graph exchanges the two central classes 1 and−1=2 mod3; after two actions returns to1 | Pass on symmetry/lattice control | None |
| E₇ model row, 349 | Minuscule versus adjoint weights | dim=56; det Cartan=2; minuscule central class 1 mod2≠0, roots class0 | Pass on lattice control | None |
| E₈/F₄/G₂ model row, 350 | Their Cartan matrices | Determinants 1,1,1, so P/Q has order1 in each case; adjoint weights span the full lattice | Pass on lattice control | None |
| Suzuki model row/adapter, 351, 367–369 | B₂→C₂ swap; a∈𝔽₄∖𝔽₂ | Node0→1→0; long flag T→T; exponent1 remains1; identity adapter gives exponent2 and a²=a+1≠a | Pass | None |
| Ree G₂ model row, 352 | Short-root seven-dimensional module | Six short weights plus one zero weight=7; characteristic3 and source exponents (3,1), product3 | Pass on dimension/normalization control | None |
| Ree F₄/Tits model row, 353, 359–360 | Short-root 26-dimensional module | 24 short weights plus zero-weight multiplicity2=26; reversal exponents (1,1,2,2), product2 | Pass on dimension/normalization control | None |
| Specialization is not flatness, 355–358 | Integral map 𝔾ₐ→𝔾ₐ, t↦2t, then mod2 | Integral schematic image 𝔾ₐ is flat; reduced generator image is0, while fibre remains 𝔾ₐ | Pass negative control; C4 equality required | None |
| Scheme versus points control, 373–377 | μ₂ over 𝔽₂ and over dual numbers | Field-valued set {1}; 1+ε≠1 and (1+ε)²=1, so nontrivial thickened point remains | Pass | None |
| Two B₂ comparisons, 381–385 | Compose symplectic→canonical and inverse spin→canonical | Root parameter0 maps1→1→1; parameter1 maps to the numbered nonidentity root at1; after adapter, node0 returns0 | Pass as required composite value law | None |
| Hᶜ definition and membership, 396–403 | F=id and trivial on S₃,Q₈,C₅,1 | Identity fixed orders6,8,5,1; trivial-map fixed orders1,1,1,1; Fg=g iff membership in each case | Pass in both directions | None |
| Candidate definition/kernel, 397–405 | Identity on S₃,Q₈,C₅,1,A₅ | (derived, its centre, quotient) orders (3,3,1),(2,2,1),(1,1,1),(1,1,1),(60,1,60); quotient-kernel orders3,2,1,1,1 | Pass; not an always-trivial recipe | None |
| Wrong centre/operation order, 416–425 | S₃ and Q₈ | S₃ using Z(S₃) instead gives order3 rather than1; Q₈/Z(Q₈) has order4 rather than1 | Pass negative controls | None |
| Fixed-point transport, 406–409 | e=id or inner transposition on S₃; contrast F=id,F′=trivial | For matched identity maps both fixed orders6 and element images e(g); mismatched maps give orders6 versus1, so intertwining fails | Pass; hypothesis discriminates | None |
| Candidate transport and inverse, 406–409, 429–431 | Conjugation by a transposition in S₃ | Derived generator (123) maps to(132); both quotient classes are the sole element; forward/reverse composites fix it | Pass | None |
| Tits recipe, 431–432 | F₄,m=0 | F=τ¹, F²=Frob₂; operation sequence remains fixed→derived→own-centre quotient, with no raw Suzuki input | Pass parameter check; no Tits order claimed | None |
| Suzuki comparison direction/value, 443–449 | m=1 and generated element1 | e_candidate⁻¹ then native equivalence sends1→1→1; inverse sends1→1→1; same construction has q=8 on each side | Pass; nonidentity law supplied at pin | None |
| Suzuki field/exponent checks, 458–461 | m=1,2 | Generated matrix coefficient fields have2³=8 and2⁵=32 elements; source exponents (2,4),(4,8), pair products8,32; 2⁷=128 and2⁶=64 differ | Pass | None |
| Suzuki boundary and zero generator, 462–470 | m=0; u(0,0) at m=1 | Suzuki validity=false at0, Tits type=F₄≠B₂; explicit unipotent matrix at(0,0) is I₄, embedding and quotient preserve1 | Pass | None |
| Canonical family branches/group instance, 482–495 | Cyclic2, alternating5, native sporadic names | Orders2 and60=120/2; sporadic dispatcher count26; Lie constructor count17; zero/one cyclic parameters and alternating degree4 lack the input proof | Pass; no dummy branch | None |
| Classification quantifiers/nontriviality, 485–487, 510–512 | G=1,C₂,S₃ | Nontrivial1=false; C₂ has cyclic witness order2; S₃ has normal subgroup order3, strictly between1 and6, so simplicity premise=false | Pass | None |
| Indexed comparison/inverse, 494–495, 520–523 | Cyclic2 and alternating5 | Identity comparisons preserve2 and60 elements; e⁻¹e and ee⁻¹ give each starting element; no uniqueness of index asserted | Pass | None |
| Equivalence of propositions, 496–498 | Family {C₂,C₃}, and its reordered copy | Witness orders before/after are{2,3}; forward composition and inverse return the same group element; replacing C₃ by C₂ gives{2} and loses C₃ witness | Pass in both directions; no CFSG proof | None |
| Universe transport, 499 | ULift C₂; arbitrary finite cardinal N | Shrunk C₂ has2 elements=original2; general Shrink cardinal N=N; e.symm.trans witness preserves multiplication and carrier size | Pass | None |
| Metadata/provenance limitation, 513–516 | One generator with relator a² versus a³ | Metadata counts both(1,1); presented orders2 versus3; counts cannot identify a named group | Pass | None |
| R01 source-key instance, 540–550 | `ree2021`, `finite-simple-groups-lean` | Two successful readable retrievals; zero manifest entries; Radu locator resolves to §2.2/p.4 in v2 | Provenance omission only | Add two stable-key manifest entries |
| R02 exceptional datum locator, 120–121 | Import only Datum.Steinberg, then add HalfFrobenius | First probe: graph map resolves, exceptional map gives 1 unknown-constant error; repaired probe: both maps and square theorem resolve, 0 errors; B₂,m=1 square remains8I | Locator failure, mathematics unchanged | Cite HalfFrobenius:174,203 |

These tests also rule out the plausible wrong models most relevant here: an inert group factor, zero root maps, the adjoint form substituted for a simply connected form, inverse triality, reversed exceptional exponents, a wrong odd power, a different non-intertwining endomorphism, and quotienting by the wrong centre. Zero rings, DVR coefficients and arbitrary nonreduced bases are not silently admitted by the indexed K-point signatures; the one nonreduced example is explicitly a negative control for scheme identification, not an extension of those signatures. Rank-zero and q=1 cases are excluded by the native input data. Every convention is kept consistent with the suppliers opened above.

## Not verifiable

- The canonical group and endomorphism interfaces are roadmap contracts, not implemented constants at these pins. Consequently I cannot execute the general canonical comparisons or elaborate their intended final signatures; the Lean docstring accurately records this. The finite-model computations above do not substitute for proving them.
- The supplier theorems' entire literature proofs, and the recognition of all 26 sporadic presentations, were not re-proved or independently literature-certified. This head imports named supplier work and expressly leaves finiteness, simplicity and recognition outside its scope. All directly cited external texts needed by this review were readable; there is no missing-text item to request.
- The independent FiniteSimpleGroups repository was inspected as provenance, not rebuilt or audited declaration by declaration. Ownership inspection used the supplied open checkouts and the service's main/head search results; unrelated open PRs without supplied files were not reviewed in full.

## Source issues

- none
