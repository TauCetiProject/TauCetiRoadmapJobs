# Review of StableHomotopyKTheory (pull request #1227 at 2395e7a)

**Verdict:** needs changes

Three blocking findings: R01–R03. The worker's gate passes, as does direct Lean elaboration. The findings concern the mathematical constructions and supplier contract; elaboration of the acceptance statements does not exercise those constructions. R04–R06 are P3 form/citation findings. No PR file was changed.

## R01 (P1) — Integer multiplication is not a strict endomorphism of the raw symmetric sphere

Location: `TauCetiRoadmap/StableHomotopyKTheory/README.md:2286`, “E/m is the point-set cone C(m·id_E)”; also line 2343, “the point-set cone maps induced by the strictly commuting squares (identity,p) and (p,identity) on the two sphere terms”.

Claim: these point-set maps exist on arbitrary supplied symmetric spectra, including the unreplaced sphere; flatness then gives a literal smash/cone isomorphism and a strict tower.

Witness: For S=F₀S⁰, strict endomorphisms correspond to based simplicial maps S⁰→S⁰: only zero and identity, inducing 0 and 1 on π₀S=ℤ, never 2 (S line 2533, printed p. 51).

The point-set category is not additive. Additivity belongs to its stable localization; the sphere is already flat, so the stated flatness restriction does not resolve this.

Repair: define E/m as the **derived** multiplication cofiber, consuming GeneralizedCohomology G3.9's chosen degree-p representatives and coherent powers (`TauCetiRoadmap/GeneralizedCohomology/README.md:887`). For point-set cone and tower comparisons, explicitly construct a common replacement of the coherent diagram on which its maps are represented. State the derived smash equivalence and its compatibility with that diagram, rather than an isomorphism of cones of nonexistent raw maps. Keep the (p,id) reduction and (id,p) inclusion conventions. Test: the repaired cofiber at E=S,m=2 has π₀=ℤ/2; the only two raw cones instead have π₀=ℤ and 0. At p=2,r=1 the repaired maps give 1 mod2↦2 mod4 and 1 mod4↦1 mod2.

## R02 (P1) — The topological K-theory comparison is not the asserted strict isomorphism

Location: `TauCetiRoadmap/StableHomotopyKTheory/README.md:1851`, “Transpose g↦gᵀ is an identity-on-objects strict isomorphism of bipermutative categories from `basedFreeTop k` onto `generalLinearTop k`.”

Claim: transpose identifies the realized singular endomorphism spaces with GLᵣ(k) itself, preserving the same permutation matrices as symmetries and distributors.

Witness: At rank one, the interior point of the singular simplex t↦1+t(1−t) at 1/2 and the vertex 5/4 differ but evaluate equally. The (2,3)-shuffle [0,2,4,1,3,5] transposes to its different inverse [0,3,1,4,2,5].

By line 1847 the source endomorphism space is |Sing GLᵣ(k)| with opposite composition. Transpose acts on that realization; the subsequent counit is a weak equivalence, not an isomorphism. Moreover, transpose sends a permutation matrix to its inverse. Keeping literally the same structure matrices on both sides does not make transpose strict symmetric monoidal. Equal-rank examples conceal this problem.

Repair: insert the category with endomorphism spaces |Sing GLᵣ(k)| under ordinary multiplication. Use transpose for an isomorphism into this intermediate category, **transporting** the opposite category's symmetries and distributors, and use the realization counit for the weak equivalence to the topological category. Check the transported matrices against GeneralizedCohomology G5.4's lexicographic conventions (`TauCetiRoadmap/GeneralizedCohomology/README.md:1643`). Then apply the multiplicative machine to the resulting coherent comparisons. The rank-one counit may identify the two displayed points without contradiction; for ranks (2,3), transport sends the inverse source shuffle to the required target shuffle. Add both negative controls.

## R03 (P1) — E4.A supplies MU-synthetic spectra, not a parameterized construction at HF₂

Location: `TauCetiRoadmap/StableHomotopyKTheory/README.md:2662`, “Define `F2Synthetic` as EllipticCohomology E4.A's synthetic-spectra construction instantiated at E = HF₂”; the same supplier claim occurs at lines 17 and 102.

Claim: all site, sheaf, tensor, ν, τ and τ-inversion machinery at HF₂ is already supplied, and “None of these constructions is re-planned here.”

Witness: `TauCetiRoadmap/EllipticCohomology/README.md:1003` explicitly constructs the finite **MU**-projective site and proves **MU** Adams-type. S/2 is finite HF₂-projective, whereas MU_*(S/2)=MU_*/2 is not projective over MU_*.

Thus this is not an instantiation of an exported parameter E. E4.A's localization and tensor construction concerns a different site. Proving HF₂ Adams-type does not, by itself, supply the missing parameterized theorem. No matching declared gap exists. This also corrects the preceding review's overbroad description of E4.A; following that description did not make the missing contract exist.

Repair: state precisely the extension from E4.A's MU case that this roadmap owns, importing its reusable constructions by section and proving their HF₂-site versions, including localization existence, Day tensor, ν, τ, Cτ and τ-inversion with their hypotheses. Alternatively register a precise supplier gap for a general Adams-type construction, with matching plan/README entries. Do not continue to describe the general theorem as already supplied. Test the new contract on S/2: it must admit that object in the HF₂ site without asserting MU-projectivity. The extension retains the full p=2 Moore-algebra theorem, rather than dropping its difficult prime.

## R04 (P3) — Planned API and Check names are presented as declared Lean names

Location: `TauCetiRoadmap/StableHomotopyKTheory/README.md:1412`, “`core_pi0_isoClasses`”; line 1416, “`core_finset_pi0`”. The same format recurs throughout the layers.

Claim: the README assigns backticked identifiers to planned API bullets and to individual Checks, although the acceptance file intentionally contains only headline statements.

Witness: neither identifier occurs in `TauCetiRoadmap/StableHomotopyKTheory/Suggested.lean`; its complete inventory is eleven definitions and ten theorems. The first names a planned comparison, the second a finite-set Check.

Repair: retain these mathematical statements as prose and remove invented declaration labels from API bullets absent from the Lean file, and from every Check. Keep exact names for existing suppliers and the actual acceptance declarations. Do not expand Suggested.lean into an API catalogue. The finite-set Check still computes π₀=ℕ and still distinguishes the core from a noninvertible category.

## R05 (P3) — The acceptance file uses library namespaces instead of the roadmap namespace

Location: `TauCetiRoadmap/StableHomotopyKTheory/Suggested.lean:43`, “namespace CategoryTheory”; line 62, “namespace TauCeti”. The declarations are split across repeated blocks of these namespaces.

Claim: the file introduces proposed declarations directly into supplier namespaces and lacks the required roadmap namespace and layer section comments.

Witness: the elaborated names include CategoryTheory.classifyingSpace and TauCeti.IsAbelianSpace; there is no namespace TauCetiRoadmap.StableHomotopyKTheory. The module heading says “headline statements” rather than the prescribed “target signatures”.

Repair: put proposed definitions and theorem statements under `TauCetiRoadmap.StableHomotopyKTheory`, updating local references and README names; keep references to actual library declarations qualified as needed. Add the layer comments in README order and the prescribed module heading. Re-elaborate the file and all 21 signatures. This organizational change leaves, for example, the nontrivial S₃ conjugation test for IsAbelianSpace unchanged. No duplicate fully qualified declaration was found; this is a form finding, not a claimed collision.

## R06 (P3) — One repaired supplier citation still omits its section

Location: `TauCetiRoadmap/StableHomotopyKTheory/README.md:965`, “UniversalCovers' quotient-cover and deck-group comparisons”.

Claim: this prerequisite is identified only by a roadmap-wide description.

Witness: `Completed/UniversalCovers/README.md:90` assigns the universal deck comparison to Stage 1 item 5; lines 107–117 assign subgroup quotient covers and normalizer/deck comparisons to Stage 2 items 7–8.

Repair: cite those actual stages/items, including Stage 0 items 3–4 if their action/deck carriers are used, and include the Stage 1 consumption in the supplier contract. For the circle, the universal deck group is ℤ and the degree-two quotient cover has deck group ℤ/2; both now have named owners. This is the remaining portion of previous R06, not an upward dependency.

## Previous findings checked against this head

| Previous finding | Current passage and assessment |
| --- | --- |
| R01, duplicate synthetic construction | **Partly repaired.** Line 2662 now says “instantiated at E = HF₂” and line 2677 names E4.A. The duplicate-construction wording is gone, but the supposed general supplier contract is absent. See new R03; the preceding review's proposed generalization was too broad. |
| R02, eleven TeX constructs | **Repaired.** The affected formulas are in code spans, including line 2689's `2·id_(E/2)` expressions; the head's gate reports `tex=0 latex=0`. |
| R03, PR-number supplier URLs | **Repaired.** Lines 59 and 63 cite “AlgebraicKTheory A0–A1” and “TangentialBordism B4.1–B4.2” without PR links. |
| R04, invented G2.10 map names | **Repaired.** Line 71 now uses “their projection to the source, endpoint evaluation to the target, constant-path inclusion and fibre projection”, matching the supplier's prose. |
| R05, conflicting Part II title | **Repaired.** Line 1 is “Roadmap: homotopy foundations for algebraic K-theory”. The existing AlgebraicTopologyPartII title is no longer appropriated. |
| R06, bare supplier citations | **Partly repaired.** For example line 1007 now names “AlgebraicTopology 2.6, UniversalCovers Stage 2”. Line 965 retains the unlocated deck/quotient prerequisite; new R06 gives the repair. |
| R07, H-space recognition absent | **Repaired.** Suggested.lean lines 107 and 223 add IsAbelianSpace and IsPlusConstruction.hSpaceRecognition. Its docstring explicitly names the H-space recognition theorem. This satisfies the prior repair's option of stating §3.28. |

No supplied repair disposition marks any of these findings “not actionable in this package”.

## Verified sound

Read all 193 numbered targets, their API bullets, Checks, layer dependencies and downstream contracts, plus the complete 246-line Lean file. The mathematical tests below are finite probes of the stated laws, not proofs of the unsolved theorems. “Pass” means the listed computation respects the hypotheses and does not refute the claim. Source and ownership qualifications are recorded separately. No route-specific prime exclusion, computational algorithm, copied source passage, sorry'd data or set_option was found. This is a new folder relative to main; the repairable issues do not justify rejection of its scope.

**Gate and build.** Every worker-gate counter is zero: `set_option`, `blob`, `latex`, `tex`, `prnum`, `sorry-data`, `sorry-examples`, `residue`, `private-paths`, `imports`, `mathlib-subimports`, `no-import-mathlib`, `lean-lines`, `forbidden`, `dropped`, `readme-ids-missing`, `empty-sections`, `round-labels`, `long-fences`, `layer-ids`, `target-ids`, `depcheck`, `metadata`, `stray-files`, `dirty`, `outside-folder`, `source-material`, `build`; result **OK**. Direct `lake env lean` on the specified module also exits 0 with precisely ten “declaration uses sorry” warnings. The outside-folder diff is empty. This review's dependency check outputs:

```text
depcheck: 205 roadmaps, 1465 edges, 0 problem(s)
```

There is no UPWARD or CYCLE line. Every Needs line was read. A passing graph does not establish that the consumed statement exists: R03 is a contract-content defect. AlgebraicKTheory, TangentialBordism and EllipticCohomology precede this roadmap; the later Part II, chromatic and trace roadmaps are consumers.

**Seeded source checks: 15/15 texts readable.** No extra locator was marked unverified in the README. References below use the work abbreviations in its References section as source IDs and the line-numbered legal extractions. All passages were read directly, including the proofs where the roadmap takes an extension of the stated theorem.

| Target | Locator and extraction | Scope checked |
| --- | --- | --- |
| 1.8 | Q §1(4), p.92; Q line 288 | Finite-factor ordinary product and compactly generated product distinction. |
| 1.32 | W IV Application 3.4.2 and (3.5), p.IV.28; W IV line 1251 | Group nerve/bar chains; the pinned inverse-action convention is an explicit adapter, not assumed identical notation. |
| 2.36 | W IV Cor.3.8.1, p.IV.32; W IV line 1467 | Surjective group homomorphism, kernel fibre. |
| 3.5 | H AT Prop.3H.4, pp.331–332; H AT line 14499 | Universal-cover chain tensor proof; general principal cover follows by extension of the deck-group module, including disconnected total space. |
| 3.12 | H AT Prop.4.40 and following generalization, p.374; H AT line 16241 | Perfect subgroup/normal closure, two- and three-cell construction, identity relative differential and integral homology invariance. |
| 3.17 | H AT Lemma4.70 and proof, p.413; H AT line 17854 | Connected CW pair, Eilenberg–Mac Lane fibre and trivial action; the proof supplies the principal classifying map. |
| 3.19 | H AT Thm4.57 and remarks, pp.393–394; H AT line 17069 | CW source, positive degrees and abelian coefficients; the degree-zero based/reduced distinction is retained. |
| 3.30 | W IV Prop.1.7 proof and Cor.1.7.1, p.IV.6; W IV line 242 | Universal-central-extension identification, used naturally under subgroup-preserving homomorphisms. |
| 3.34 | H SS Lemma1.9 and proof, p.15; H SS line 852 | Trivial action; bounded form uses base degree N+1 in the fibre inference. |
| 3.36 | H SS Thms1.7–1.8, p.14; H SS line 813; HK III Remark2.3.20, pp.48–49, line 2265 | The three named classes and simple/abelian-space hypothesis; not arbitrary monodromy or arbitrary Serre class. |
| 4.28 | HK III Lemma3.2.11 proof, p.59, line 2754; Sch §10, p.90, line 4504 | Continuous-simplex rings and realization; the strict-functor/diagonal presentation is the roadmap's explicit refinement. |
| 5.19 | BS after Prop.12.15, p.59; BS line 2711 | Picard/1-truncated connective-spectrum equivalence and zero-space identification. The extra η/self-braiding identification is not proved in this passage; see Not verifiable. |
| 7.6 | W IV Prop.2.7, p.IV.21; W IV line 923 | Coprime decomposition; q₂ is restored in the roadmap rather than repeating the source's q₁ typo. |
| 7.11 | W IV §2.9, p.IV.22; W IV line 963 | Milnor lim¹ and Tate-module degree n−1. Source's following complex-field example has a degree typo. |
| 7.18 | S II Remark9.8/Thm9.9, pp.303–304; S line 16144; W IV line 963 | Completion/function-spectrum and tower inputs. E/pʳ completeness is derived using its p²ʳ bound, not incorrectly a pʳ annihilation claim. |

**Adversarial computations: one row per numbered target (193 rows).** Values for raw point-set objects and derived objects are kept distinct. In R01-affected rows, a correct derived computation does not validate the proposed raw construction.

| Statement | Instances tried | Values computed | Result / change |
| --- | --- | --- | --- |
| §1.1 Classifying space of | ∅, terminal category, [1] | BC=∅, point, interval; id maps give id in all three | pass |
| §1.2 The realised boundary | n=0,1,2 | boundaries ∅, two points, circle; disks point, interval, disk | pass |
| §1.3 The CW structure | nerve of terminal category and [1] | nondegenerate cell counts (1,0,…) and (2,1,0,…); degeneracies add no cells | pass |
| §1.4 Realisations are strongly | interval endpoint and interior | contracting neighbourhoods [0,ε), (t−ε,t+ε), both contract to chosen point | pass |
| §1.5 Realisations of monomorphisms | ∂Δ[1]⊂Δ[1] | realised image {0,1} closed; inclusion of interiors would not be a simplicial subcomplex | pass |
| §1.6 Compact sets in | infinite discrete simplicial set ℕ | compact subsets are finite, each lies in its finite 0-skeleton subset | pass |
| §1.7 B(C^op) is canonically | [1] and C₃ | interval reverses t↦1−t; twice gives t; oriented group edge is reversed | pass |
| §1.8 Classifying space of | [1]×[1], ∅×[1] | both product realisations square, respectively ∅; finite-factor hypothesis applies | pass; sampled |
| §1.9 Classifying space of | C=D=terminal; compactly generated product | point×point=point; ordinary and k-product coincide here | pass |
| §1.10 A natural transformation | 0⇒1 in [1] | vertex maps are endpoints 0,1; induced homotopy is t↦t | pass |
| §1.11 Adjoint functors and | [1]→terminal with right adjoint 1 | composite on [1] constant 1, homotopic to id by (1−t)x+t | pass |
| §1.12 Categories with an | terminal category and discrete two objects | BC=point versus two points; latter has neither initial nor terminal object | pass |
| §1.13 The nerve commutes | ascending finite discrete categories {0,…,n} | degree-k nerves have n+1 constant simplices; colimit in either order is ℕ | pass |
| §1.14 Homotopy groups commute | same diagram, fixed basepoint 0 | π₀ colimit=ℕ on both sides; π_j=0 for j>0 on both sides | pass |
| §1.15 Filtered colimits along | constant diagram [1], identity transitions | colimit B=[0,1]; comparison π₀ singleton, all positive π zero | pass |
| §1.16 Filtered categories are | ordered ℕ and discrete two objects | Bℕ contracts at initial 0; discrete two objects fail common-upper-bound condition | pass |
| §1.17 Homology of classifying | ascending finite discrete categories | H₀=ℤ^(n+1), colimit=⊕ℕℤ=H₀(ℕ); higher H=0 | pass |
| §1.18 Path components of | [1] and two discrete objects | zigzag quotient has 1 and 2 classes, exactly π₀ of interval and two points | pass |
| §1.19 Realisations of simplicial | trivial two-sheet cover of Δ[1] | realisation two disjoint intervals; each interior and endpoint has two local sheets | pass |
| §1.20 Coverings of BC | C=terminal, and BC₃ | covers are sets, respectively C₃-sets; a three-cycle gives connected three-sheet cover | pass |
| §1.21 π₁ of BC | C=SingleObj(S₃), C=[1] | automorphism groups after localization S₃, respectively 1; π₁ agrees | pass |
| §1.22 Presentation of π₁(BC) | one-object C₃, generator a | one vertex, relation a³=1; π₁=C₃, not free ℤ | pass |
| §1.23 Local coefficient systems | BC₂ and sign module ℤ | generator transports x↦−x, squared transport x↦x; zero transport is not invertible | pass |
| §1.24 Homology of a | terminal category with coefficient A | chain groups A in each degree; alternating differentials d₁=0,d₂=id,d₃=0; H₀=A,Hₙ>0=0 | pass |
| §1.25 Homology of a | same terminal diagram | colim=A is exact; L₀=A and Lₙ>0=0, agreeing with 1.24 | pass |
| §1.26 Twisted cellular chains | [1], coefficient map u:A→B | cellular boundary a↦(−a,u(a)); cokernel=B, kernel=0 | pass |
| §1.27 Homology of BC | BC₂, trivial integral coefficients | H₀=ℤ,H₁=C₂,H₂=0 by both bar and local singular models | pass |
| §1.28 Classifying spaces of | S₃ acting transitively on three points | one component, stabilizer S₂; translation-category B≃BC₂; free action gives contractible B | pass |
| §1.29 Asphericity of the | G=C₂, and G=1 | BG has π₁=C₂,πₙ≥2=0; B1=point | pass |
| §1.30 Comparing the group | G=C₃, identity homomorphism | both classifiers have π₁=C₃; labelled generator maps to same generator, not its inverse | pass |
| §1.31 Conjugate homomorphisms induce | S₃, h=(12), g=(123) | hgh⁻¹=(132); free homotopy permits conjugation although based maps differ | pass |
| §1.32 The nerve of | C₃ action T=[[0,−1],[1,−1]], v=(1,0) | (T−1)v=(−1,1), (T⁻¹−1)v=(−2,−1); entry inversion gives the pinned inverse-action differential | pass; sampled |
| §1.33 The nerve of | group C₃ versus monoid ℕ | missing inverse horn has filler a⁻¹=a² in C₃; equation 1+x=0 has no ℕ solution | pass |
| §1.34 Classifying spaces of | discrete two objects, and SingleObj(S₃) | components respectively two points and one BS₃; all πₙ≥2=0 | pass |
| §2.1 Weak homotopy equivalences | ∅→point, and id of disconnected two points | first π₀ map 0→1 not bijective; identity π₀=2→2 and πₙ=0→0 | pass |
| §2.2 Serre fibrations induce | product fibration F×I→I, F=S¹ | π₂(total,fibre)=0=π₂(I); degree-one relative set singleton | pass |
| §2.3 For a fibration | S¹×I→I over 0 | strict fibre S¹; homotopy fibre S¹×contractible path factor, π₁=ℤ on both | pass |
| §2.4 Connecting map of | point→S¹ | fibre ΩS¹ has π₀=ℤ; boundary winding +1 maps to +1, reverse path gives −1 | pass |
| §2.5 Long exact sequence | degree-two cover S¹→S¹ | π₁ map ℤ→ℤ is ×2; boundary ℤ→π₀(fibre)=C₂ is reduction | pass |
| §2.6 The π₁-action at | same cover | π₁ base ℤ acts transitively on two sheets by addition mod2; stabilizer 2ℤ | pass |
| §2.7 Transport of homotopy | same cover, one winding | transport swaps sheets 0↔1; two windings fix both | pass |
| §2.8 Homotopy pullbacks and | point→S¹←point | strict pullback point; homotopy pullback ΩS¹ has ℤ components, distinguishing the notions | pass |
| §2.9 Homotopy-cartesian squares over | A→point←B, A=S⁰,B=S¹ | homotopy pullback=A×B, two circle components; comparison π₀=2, each π₁=ℤ | pass |
| §2.10 Pasting homotopy-cartesian squares | two composable identity squares on S¹ | all three homotopy-pullback comparisons have π₁=idℤ, π₀=id singleton | pass |
| §2.11 From comma categories | F:{0}→[1], structured comma at 1 | 1↓F empty, homotopy fibre of point→interval contractible; unrestricted comparison not equivalence | pass |
| §2.12 Quasi-fibrations | product projection S¹×I→I | strict and homotopy fibres π₁=ℤ,πₙ>1=0; weak comparison holds | pass |
| §2.13 Relative π-groups of | interval covered by overlapping open intervals | relative groups for each contractible overlap inclusion are 0; excision map 0→0 | pass |
| §2.14 Dold–Lashof criterion for | trivial S¹-bundle over two overlapping intervals | local fibre π₁=ℤ and overlap maps id; global fibre comparison idℤ | pass |
| §2.15 Dold–Lashof criterion for | identity map ℝ→ℝ, exhaustion [−n,n] | each fibre point, all comparisons πₙ=0; union fibres remain points | pass |
| §2.16 Dold–Lashof criterion for | projection F×I→I, deformation t↦(1−u)t | lift (x,t)↦(x,(1−u)t); endpoint fibre map id_F, not a changed degree map | pass |
| §2.17 Realisation of simplicial | constant point, constant discrete two-point simplicial spaces | realisations point and two points; bisimplicial constants agree | pass |
| §2.18 Diagonal and iterated | Δ[1] external product Δ[1] | diagonal realisation and iterated realisation both square, with two triangular 2-cells | pass |
| §2.19 Proper simplicial spaces | constant CW space X=S¹ | degeneracies identity; latching inclusions identities in positive degree, hence cofibrations | pass |
| §2.20 Realisation of simplicial | constant spaces A=S⁰,B=S⁰ | product has four points before and after realization; equalizer of swap and id empty in both | pass |
| §2.21 The gluing lemma | ∂I→I, compared with identical pushout diagram | pushout I/∂I=S¹ on both sides, induced π₁=idℤ | pass |
| §2.22 Pushout products of | ∂I→I twice | pushout product is boundary square→square, S¹→D²; not an equivalence | pass |
| §2.23 Weak equivalences of | constant interval→constant point | level π₀ bijective, positive π=0; realisations interval→point have same values | pass |
| §2.24 Realising levelwise homotopy | constant product fibration S¹×S¹→S¹ | realised fibre S¹, strict and homotopy fibre π₁=ℤ | pass |
| §2.25 The π_*-Kan fibre-square | constant bisimplicial product of Kan models K(C₂,1)×K(C₃,1) | diagonal fibre K(C₂,1); kernel C₂ of C₂×C₃→C₃ | pass |
| §2.26 Bousfield–Kan homotopy colimit | constant point diagram on BC₂ | hocolim=BC₂, π₁=C₂; ordinary colimit=point, π₁=0 | pass |
| §2.27 Realisation of a | constant point simplicial space | hocolim over Δᵒᵖ is BΔᵒᵖ, contractible; realization point; π₀=1,πₙ>0=0 | pass |
| §2.28 Quasifibrations over a | constant two-point diagram on [1] | projection is two intervals→interval, both strict and homotopy fibres two points | pass |
| §2.29 Thomason’s homotopy-colimit comparison | constant terminal category over C₂ | Grothendieck construction SingleObj C₂; both classifying space and hocolim have π₁=C₂ | pass |
| §2.30 The homology spectral | C₂→terminal, constant ℤ coefficients | E²_(0,q)=H_q(C₂;ℤ), other columns0; abutment H_q(C₂), with H₁=C₂ | pass |
| §2.31 Quillen's Theorem A | {0}→[1]; discrete two objects→point | first costructured commas singletons and point→interval equivalence; second comma has two components and hypothesis fails | pass; Lean headline |
| §2.32 Quillen's prefibred functors | group surjection S₃→C₂ | all arrows Cartesian; lifts exist exactly by surjectivity; 1→C₂ fails nonidentity lift | pass |
| §2.33 Theorem A for | id:[1]→[1] | fibres singletons, hence BF=id on interval; nonempty contractible fibre condition holds | pass |
| §2.34 Quillen's Theorem B | S₃→C₂; {0}→[1] | group comma fibre BC₃; structured-comma base change ∅→point in second example fails hypothesis | pass; both Lean headlines |
| §2.35 Theorem B for | S₃→C₂ | strict fibre C₃ and homotopy fibre BC₃, π₁=C₃; conjugation transport is invertible | pass |
| §2.36 Classifying spaces of | S₃→C₂, versus 1→C₂ | first fibre BC₃ connected; second homotopy fibre has two components, so surjectivity is essential | pass; sampled |
| §3.1 Acyclic spaces | point, empty space, circle | positive reduced H=0,0, H₁=ℤ respectively; nonempty condition excludes empty despite zero reduced chains | pass |
| §3.2 An acyclic space | punctured Poincaré homology sphere | π₁ binary icosahedral group, abelianization0 and H₂=0; positive homology of puncture0 | pass |
| §3.3 Acyclic maps | point→punctured Poincaré sphere | constant homology isomorphism, but ΩY has 120 components; fibre not acyclic | pass |
| §3.4 Acyclic maps are | plus BA₅→BA₅⁺ | π₁ map A₅→1 surjective, kernel A₅ perfect; abelianization kernel0 | pass |
| §3.5 Homology with local | principal C₂-cover of a point; universal cover ℝ→S¹ | first H₀=ℤ[C₂]=ℤ²; second deck-chain tensor gives d=t−1 and H₀=ℤ | pass; sampled |
| §3.6 Serre comparison on | identity map of fibrations F×B→F×B | base and total homology maps id; fibre map id, for F=S¹ gives idℤ in H₁ | pass |
| §3.7 Acyclic maps are | id:S¹→S¹; point→punctured homology sphere | all local homology maps id for first; second constant coefficients suffice but group-ring coefficient H₀ detects 120 fibre components | pass; Lean headline |
| §3.8 Plus constructions as | id:S¹→S¹ with P=1 or P=ℤ | acyclic identity has kernel1; matches P=1 and rejects P=ℤ | pass |
| §3.9 Acyclic maps that | acyclic identity and BA₅→BA₅⁺ | first π₁ iso, all π iso; second A₅→1 not iso, so Whitehead conclusion not triggered | pass |
| §3.10 The plus construction | P=1; P=A₅ in BA₅ | first attach no cells; second π₁ quotient1 and new π₂=C₂ | pass; Lean headline |
| §3.11 π₁ of the | same two cases | π₁ remains original group for P=1; A₅/A₅=1 | pass |
| §3.12 The plus construction | BA₅ plus; relative 3-to-2 cellular differential | H₂=C₂ both before and after; relative differential identity has kernel and cokernel0 | pass; sampled |
| §3.13 Local-coefficient acyclicity of | P=1 and arbitrary sign local system on S¹ | plus=id; differential −2 on both twisted complexes, H₀=C₂,H₁=0 | pass |
| §3.14 Abelian spaces | S¹; BS₃; RP² | S¹ action trivial; conjugation (12)(123)(12)=(132)≠(123); RP² action −1 on π₂=ℤ | pass |
| §3.15 Connected H-spaces are | topological groups S¹ and point | π₁=ℤ or0, conjugation action trivial; πₙ>1=0 | pass |
| §3.16 Relative Hurewicz theorem | (D²,S¹), n=2 | boundary π₂(D²,S¹)=ℤ→π₁S¹=ℤ is iso; relative H₂=ℤ; nontrivial action examples excluded | pass |
| §3.17 Recognition of principal | product K(ℤ,2)×S¹; mapping torus of −1 | first monodromy+1 and class0; second monodromy−1 on ℤ, so not principal | pass; sampled |
| §3.18 The Postnikov tower | constant tower K(ℤ,1) and its Postnikov tower | positive stages constant K(ℤ,1); lim π₁=ℤ,lim¹π₂=0; holim π₁=ℤ | pass |
| §3.19 Cohomology is represented | S¹→K(C₂,1); degree0 on S⁰ | classes C₂=H¹(S¹;C₂); unbased degree0 A², reduced degree0 A | pass; sampled |
| §3.20 Postnikov towers of | K(ℤ,1)×K(C₂,2) | Postnikov extensions split with k-invariant0; π₁=ℤ,π₂=C₂ retained | pass |
| §3.21 Obstructions to extending | constant boundary map S¹→S¹ over D² versus degree1 | degree0 extends, obstruction0; degree1 obstruction1∈H²(D²,S¹;ℤ)=ℤ | pass |
| §3.22 Extending maps into | identity pair (X,X); plus BA₅→BA₅⁺, target K(ℤ,1) | first relative obstructions0; latter H¹ on both sides0, unique homotopy class extends | pass |
| §3.23 Homology Whitehead theorem | degree d:S¹→S¹ | H₁ map ×d, equivalence iff d=±1; d=2 has cokernelC₂ and is excluded | pass |
| §3.24 Homology isomorphisms between | degree −1:S¹→S¹ of H-spaces | H₁=×(−1), inverse also degree−1; composite degree+1 | pass |
| §3.25 Universal property of | plus at P=1, f=id:S¹→S¹ | factorization g=id, induced kernel1⊇P; degree2 map also factors as itself | pass; Lean headline |
| §3.26 Uniqueness of the | two identity plus maps on S¹ | comparison under S¹ has degree1; degree−1 does not commute under S¹ | pass |
| §3.27 Functoriality of the | BA₅→point and identity | induced plus maps kill π₂=C₂ or act id_C₂ respectively; composite agrees | pass |
| §3.28 Recognising plus constructions | degree d:S¹→S¹, target H-space S¹ | integral homology iso iff d=±1; kernelπ₁=0 and plus condition then holds; d=2 excluded | pass; Lean headline |
| §3.29 π₂ of a | A₅ and trivial perfect group | π₂(BA₅⁺)=H₂(A₅)=C₂; UCE SL₂(𝔽₅)→A₅ kernelC₂; for1 all groups0/1 | pass; two Lean headlines |
| §3.30 Naturality of π₂(BG⁺) | id:A₅→A₅ and A₅→1 | π₂ and H₂ maps respectively id_C₂ and zero; square commutes | pass; sampled |
| §3.31 BP⁺ is the | G=P=A₅; P=1 in G=C₂ | first universal cover BA₅⁺ itself; second universal cover BC₂ contractible=B1⁺ | pass |
| §3.32 Plus constructions of | product BA₅×BC₂→BC₂ | plus fibre BA₅⁺; total π₁=C₂, base π₁=C₂, kernel1 | pass |
| §3.33 The plus-construction fibration | UCE SL₂(𝔽₅)→A₅ | central kernelC₂; π₂(BSL₂(𝔽₅)⁺)=0, π₂(BA₅⁺)=C₂, boundary to π₁BC₂=C₂ iso | pass |
| §3.34 Serre classes in | S¹→PS²→S², Serre class torsion, N=1 | H₁(base)=0 but H₂(base)=ℤ; H₁(fibre)=ℤ; N+1 base condition prevents false bounded claim | pass; sampled |
| §3.35 Homology of Eilenberg–Mac | K(C_p,1), p=2,3 | H_(2j+1)=C_p,H_(2j>0)=0; all positive groups in finite p-primary class | pass |
| §3.36 Serre class theory | S¹ and RP² | S¹ has π₁=H₁=ℤ; RP² has finite positive H but π₂=ℤ and fails trivial-action assumption | pass; sampled |
| §3.37 Rational homotopy of | S¹ and K(ℤ,2) | rational primitive classes are ℚ in degree1 or2; H_*(K(ℤ,2);ℚ) has extra decomposables, so primitives are necessary | pass |
| §4.1 Symmetric tensor on | finite sets; ℤ⊕ℤ | component monoid ℕ; symmetry matrix [[0,1],[1,0]]≠identity | pass |
| §4.2 The classifying-space H-structure | finite-set core | π₀ multiplication r+s; 0 is unit and 1+2=3=2+1 | pass |
| §4.3 Quillen's S⁻¹S construction | discrete monoid ℕ | fraction objects (a,b) have invariant b−a; (0,1) and (1,2) represent1 | pass |
| §4.4 Actions of monoidal | ℕ acting on ℕ by addition | arrow from x to x+s shifts by s; s=0 identity, successive shifts1,2 equal3 | pass |
| §4.5 π₀ of S⁻¹S | finite sets and zero monoid | π₀ group completion ℤ and0 respectively; class of singleton1 | pass |
| §4.6 Group completions of | ℕ→ℤ and group C₂→C₂ | inverted component1 gives negative integers; already invertible C₂ unchanged | pass |
| §4.7 The projection S⁻¹X | discrete ℕ acting on a point | chosen pushforwards along1 and2 are identity on point; composite along3 identity | pass |
| §4.8 Invertible actions do | ℤ acting trivially on point | all action maps id, localized fibre point; positive π=0 | pass |
| §4.9 Quillen’s homological group | finite sets, rational degree0 | H₀ before ℤ[t], localization ℤ[t,t⁻¹]=H₀ of group completion | pass |
| §4.10 Group completions of | topological group S¹ | π₀=0 already a group; completion retains π₁=ℤ, not its discrete π₀ alone | pass |
| §4.11 Phantom maps and | constant exhaustion X_m=S¹, target K(ℤ,1) | lim mapping classes ℤ; tower of π₁ mapping spaces constant, lim¹0; phantom kernel0 | pass |
| §4.12 The fibration S⁻¹S | terminal S acting on a pointed discrete two-element X | S⁻¹S=point; S⁻¹X=X and ⟨S,X⟩=X; fibre of id_X at chosen point is point | pass |
| §4.13 A product of | identity plus on S¹ and BA₅ plus | product kernel1×A₅; π₁ quotientℤ, H₂ retains C₂ from BA₅ | pass |
| §4.14 Stable linear groups | R=M₂(ℤ), elementary matrix coefficients e₁₂,e₂₁ | e₁₂e₂₁=e₁₁, reverse e₂₂; opposite-transpose adapter reverses order correctly | pass |
| §4.15 Based free modules | zero ring and nonprincipal invertible ideal I | based ranks still ℕ; projectives over0 all zero; I⊕Q free need not permit Q free since det(I)≠R | pass |
| §4.16 B(S⁻¹S) ≃ ℤ | zero ring | stable GL=1, group completion of based ranks ℤ; RHS ℤ×point has same components | pass |
| §4.17 The telescope map | base component of finite-set stabilization telescope | BΣ∞ has π₁=Σ∞; target unit component has π₁=C₂ via sign; kernel A∞ perfect | pass |
| §4.18 Group completion with | cofinal ranks n and 2n | both localized rank monoids ℤ; even-step cofinal sequence still permits arbitrary starting ranks | pass |
| §4.19 Cofinality for actions: | S=2ℕ⊂T=ℕ acting by translation | 2ℕ cofinal since n+(n mod2) even; localizations have integer differences | pass |
| §4.20 Quillen's cofinality theorem | based free modules⊂finite projectives | for projective P choose Q with P⊕Q free; over field both rank components ℕ, completionsℤ | pass |
| §4.21 Cofinality: the group | field k and zero ring | K₀(k)=ℤ, K₀(0)=0; BGL(0)⁺=point, so all-projective completion of0 is point | pass |
| §4.22 Naturality of the | unital field inclusion k→K | rank1 maps to rank1; π₀ map ℤ→ℤ is identity, unit preserved | pass |
| §4.23 Independence of the | word strictification of one-object unit category | all words evaluate to unit; all π groups0, component monoid trivial on both | pass |
| §4.24 Segal’s summing-functor construction | unit category; finite sets at a two-element pointed set | first summing groupoid contractible; second evaluation gives two independent finite-set components (a,b)∈ℕ² | pass |
| §4.25 The Segal E∞-monoid | finite sets and discrete abelian group A | Segal components ℕⁿ or Aⁿ; map to n copies of one-value is identity on tuples | pass |
| §4.26 Picard groupoids are | ℕ versus ℤ discrete symmetric monoidal categories | −1 missing in ℕ, present in ℤ; π₀ is grouplike exactly in second | pass |
| §4.27 Classical Grothendieck–Witt plus | E₈, J=⟨1⟩⊥⟨−1⟩ | E₈⊥(−E₈)⊥J has signature(9,9), odd, hence J⁹; rank18 on both sides | pass |
| §4.28 Topological variants of | discrete ring A; units of ℝ | C(Δⁿ,A)=A; realised singular ℝ× has2 components versus uncountably many discrete units | pass; sampled |
| §4.29 Finite projective modules | n=0; idempotents e,e′ close in a Banach matrix algebra | finite projectives over k free; ee′+(1−e)(1−e′)=1+(2e−1)(e′−e), invertible if product norm<1 | pass; Lean headline |
| §4.30 Topological K-theory of | rank1 real singular loop; tensor ranks2,3 | evaluation identifies interior point with vertex5/4; shuffle [0,2,4,1,3,5] differs from inverse [0,3,1,4,2,5] | fail R02: realised comparison and transported symmetries |
| §5.1 Loop, suspension and | E=Hℤ, shift +1 | π₁ΣHℤ=ℤ=π₀Hℤ; π₀ΣHℤ=0, distinguishing shift direction | pass |
| §5.2 The naive homotopy | id and zero on Hℤ | cone(id)=0; cone(0)=Hℤ∨ΣHℤ with π₀=π₁=ℤ | pass |
| §5.3 The naive homotopy | id and zero on Hℤ | fibre(id)=0; fibre(0)=Hℤ×ΩHℤ with π₀=π₋₁=ℤ | pass |
| §5.4 Semistable symmetric spectra | F₁S¹→S | true π₀=ℤ on both; naive π₀ source⊕ℕℤ, targetℤ, distinguishing semistability | pass |
| §5.5 Stable equivalences of | same stable equivalence | true π₀ map iso; naive map not injective; level0 *=source versus S⁰ target | pass |
| §5.6 The smash pairing | sphere degrees1,1 | interchange sign(−1)¹=−1; degrees0,1 sign+1 | pass |
| §5.7 Mapping cones and | id:X→X and X→0 | cones0 andΣX; fibres0 andX; reflected interval reverses boundary orientation | pass |
| §5.8 Fibre and cofibre | X→0→ΣX | fibre(0→ΣX)=ΩΣX≃X; π_k bothπ_kX | pass |
| §5.9 Finite wedges and | Hℤ,H(C₂) | wedge and product have π₀=ℤ⊕C₂=ℤ×C₂; higherπ0 | pass |
| §5.10 The derived smash | unit sphere and zero | S∧ᴸE=E;0∧ᴸE=0; for E=Hℤ π₀=ℤ and0 | pass |
| §5.11 The smash pairing | suspensions of Hℤ, degree1×degree1 | interchange sends generator1 to−1; mod2 both are1 | pass |
| §5.12 Connectivity of smash | ΣᵃHℤ∧ᴸΣᵇS | first possible group degreea+b isℤ; every lower group0 | pass |
| §5.13 Operads and E∞-algebras | zero algebra; sphere unit; arity0 | zero operations unique; sphere unit π₀ sends1↦1; omitting arity0 would admit nonunital zero multiplication | pass |
| §5.14 HR as a | R=ℤ and zero ring | π₀HR=R, otherπ0; zero ring gives zero spectrum; unit ℤ→ℤ identity | pass |
| §5.15 The Eilenberg–Mac Lane | complex ℤ --2→ ℤ in degrees1,0 | H(C) hasπ₀=C₂,π₁=0, detecting differential rather than graded groups | pass |
| §5.16 Complex homology and | cochain ℤ in degree2, then shift[1] | π₋₂=ℤ initially; shifted complex in degree1 givesπ₋₁=ℤ | pass |
| §5.17 Cellular approximation in | localizing class generated by zero; class generated by S | first contains only0; second includes ΣⁿS and their cell cofibres, including S/2 withπ₀=C₂ | pass |
| §5.18 Connective spectra are | HZ and ΣHZ | zeroth infinite-loop spaces ℤ and K(ℤ,1); successive delooping shifts π₀ toπ₁ | pass |
| §5.19 Picard groupoids are | discrete Picard A; one-object automorphism A; graded real lines | (π₀,π₁)=(A,0),(0,A); odd-line self-braiding−1 detects η rather than trivial symmetry | pass; sampled |
| §6.1 The K-theory symmetric | flags (0⊂0⊂k)→(0⊂k⊂k) | latching map k⊕k→k fold has kernelk, so not a cofibration although individual pieces inject | pass |
| §6.2 The iterated S.-construction | cofibration k→k² with quotientk | K₀ relation [k²]=[k]+[k]=2; additivity map (subobject,quotient) sends flag to(1,1) | pass |
| §6.3 The Barratt–Priddy–Quillen–Segal theorem | finite pointed sets, q=2 split flag over 𝔽₂ | K₀ sphere=ℤ, singleton1; flag stabilizer has order2 versus split diagonal stabilizer1, so flag groupoids are not literally equivalent | pass; BPQS headline |
| §7.1 Moore spectra S/m | m=1,2,3,4 | π₀S/m=0,C₂,C₃,C₄; π₁S/m=0,C₂,0,C₂; m=2 lifting ambiguity C₂ | pass for derived Moore object |
| §7.2 Spectra with finite | raw symmetric sphere, m=2 | strict endomorphism π₀ effects only0 or1; derived multiplication2 should have cofiberπ₀=C₂, neitherℤ nor0 | fail R01: derived cofiber/coherent replacement |
| §7.3 The Bockstein long | E=ΣH(C₂),m=2 | π₂(E/2)=C₂ maps isomorphically by boundary toπ₁E=C₂; degree drops one | pass for derived coefficients |
| §7.4 The universal coefficient | E=S,m=2,k=2 | 0→C₂→C₄→C₂→0; no splitting at2 | pass |
| §7.5 Peterson’s coefficient splitting | E=HZ,m=3; m=2 negative control | π₀ quotientC₃, torsion previousdegree0; split; S/2 exampleC₄ extension does not split | pass |
| §7.6 Coprime decomposition of | q₁=2,q₂=3 | (1,0)↦3 mod6,(0,1)↦2 mod6, bijection; modulus1 summand0 | pass; sampled |
| §7.7 Transition maps between | p=2,r=1, on derived Bockstein terms | inclusion1 mod2↦2 mod4; reduction1 mod4↦1 mod2; torsion reductions×2, quotient reductions usual | derived values pass; strict sphere model fails R01 |
| §7.8 ℚ_p/ℤ_p coefficients and | E=HZ and E=ΣH(C₂) | π₀(HZ;p∞)=ℚ_p/ℤ_p; for latter tensor C₂⊗ℚ_p/ℤ_p=0 but shifted Tor at p=2 isC₂ | pass |
| §7.9 Countable abelian towers | constant identity tower A; zero-transition tower A | lim=A or0; lim¹=0 in both; corresponding holim homotopy agrees | pass |
| §7.10 A tower with | ℤ --3→ ℤ tower | lim0; lim¹=ℤ₃/ℤ; class1/2 nonzero but doubled to0 | pass |
| §7.11 The completion extension | HZ; H(ℚ_p/ℤ_p) | first completionπ₀=ℤ_p,Tate term0; second quotientlim0,Tate moduleℤ_p givesπ₁completion=ℤ_p | pass; sampled |
| §7.12 General Moore spectra | A=C₂,X=S/2 | mapping-sequence kernel Ext(C₂,π₁S/2)=C₂, quotient Hom(C₂,C₂)=C₂; kernel cannot be omitted | pass |
| §7.13 Completion for finitely | π_kE=ℤ⊕C_p⊕C_q, p≠q | completed groupℤ_p⊕C_p, tensor withℤ_p same; q-primary term0 | pass |
| §7.14 Criteria for p-completeness | HZ_p and HQ | F(S[1/p],HZ_p)=0; F(S[1/p],HQ)≃HQ≠0; completion unit iso only first | pass |
| §7.15 Closure properties of | product of copies HZ_p; shiftΣ⁻¹HZ_p | mapping spectra fromS[1/p] zero termwise, product0; shift remains0 | pass |
| §7.16 Mod-p equivalence detects | 0→HQ versus id:HZ_p→HZ_p | first modp equivalence0→0 but target incomplete; second complete and ordinary equivalence | pass |
| §7.17 Bounded p-power exponent | H(C_p²), p=2,3 | multiplicationp²=0; tower inversion yields zero mapping spectrum; completion remains H(C_p²) | pass |
| §7.18 Prime-power coefficient spectra | S/2 and HQ/p | π₂S/2=C₄ killed by4, not2; HQ/p=0; both complete | pass; sampled |
| §7.19 Rational spectra are | graded ℚ-vector space only in degree−2 | associated spectrumΣ⁻²HQ hasπ₋₂=ℚ and all otherπ0; degree0 alone would lose it | pass |
| §7.20 The arithmetic fracture | E=HZ, rational/completed difference | (a,b) maps a−b: (2,1)↦1,(1,2)↦−1; integral diagonal maps to0 | pass |
| §7.21 Filtered spectra, towers | Whitehead filtration of HZ∨Σ⁻¹HZ | graded pieces at s=0,1 are HZ,Σ⁻¹HZ; differential totaldegree−1 | pass |
| §7.22 Exact couples and | D=E=ℤ², i(x,y)=(x,0),j(x,y)=(y,0),k(x,y)=(0,y) | images=successive kernels; d=jk sends(x,y)↦(y,0),d²0 buti²=i≠0 | pass |
| §7.23 The spectral sequence | two-term filtered complex ℤ --2→ ℤ | E¹ hasℤ in adjacent totaldegrees1,0; d₁=×2; E² onlyC₂ in degree0 | pass |
| §7.24 Convergence for exhaustive | same finite two-step filtration | E∞ degree0=C₂, abutmentH₀=C₂, finite exhaustive separated filtration | pass |
| §7.25 Convergence for towers | constant tower E, and index(s,t)=(0,2) | fibres0 so increasing-connectivity condition holds; d₁ target(1,2) has totaldegree1 versus source2 | pass |
| §7.26 Conditional and strong | exact couple D=ℤ,i=id,E=0 | all pages0 but limD=colimD=ℤ; omitted completeness/exhaustiveness would falsely conclude zero | pass |
| §7.27 The Atiyah–Hirzebruch spectral | X=S¹, E=HZ | E²_(0,0)=ℤ,E²_(1,0)=ℤ, others0; abutmentH₀=H₁=ℤ | pass |
| §7.28 Products on mod-ℓ^ν | moduli2,3,4,5 | S/2 lacks unit product;3 admits product with associativity obstruction;5 supports associative commutative product; exclusions matter | pass |
| §7.29 Graded and filtered | n=1,k=2; n=2,k=2; r=p:S→S | first obstruction exponent −3+4=1; second configuration space S¹ has cells0,1; π₁S/p=0 for odd p versus C₂ at2 | pass |
| §7.30 The deformation Def(C;𝒬) | v=p odd, v=2, v=4; q=1 | odd and4 give right-unital Moore quotients;2 does not; τ⁻¹(ν1/ṽ)=S/p atq=1, withπ₀=C_p | pass on hypotheses and quotient normalization |
| §7.31 HF₂-synthetic spectra and | finite S/2; synthetic sphere classes 2̃ˢ | HF₂-homology finite free, MU-homology MU*/2 nonprojective; τˢ2̃ˢ=2ˢ≠0, so sphere has no slope½ vanishing line | fail R03 supplier; Moore vanishing-line scope consistent |
| §7.32 Burklund's towers of | odd p,v=p,n=1 | quotient exponent n+1=2 gives S/p²; n=2 exponent3 gives S/p³ | pass on stated range |
| §7.33 Browder’s mod-coefficient products | E=τ≤₁S and m=2 | positive evenπ vanish, yet2id_(E/2)=iηj≠0; η·1 hypothesis excludes it | pass; source correction required |
| §7.34 Burklund's E_n-algebra structures | n=1,2 at p=2; n=1 at p=3 | 2q≥6,9 givesq=3,5 henceS/8 E₁,S/32 E₂; odd q≥2 givesS/9 E₁ | pass on bounds; proof blocked by R03 |

**Acceptance definitions and hypotheses.** All eleven definitions have real bodies on native carriers. The table above tests the three classifying-space definitions (§1.1), MappingPathFiber (§§2.3–2.4), weak equivalence (§2.1), acyclic space/map (§§3.1,3.3), plus (§3.8), and abelian space (§3.14). Two additional defining-property tests are:

| Definition | Positive and negative controls | Computed values / excluded wrong model |
| --- | --- | --- |
| HasCWType | point; Cantor set | Point has one CW cell. Cantor paths are constant and its singleton components are not open. A homotopy equivalence to a CW complex would pull an open CW component back to each singleton, a contradiction. |
| IsUniversalCentralExtension | 1→1; C₂→1 | First has exactly one lift into each extension. For the second, the central extension C₂→1 admits two lifts C₂→C₂ (zero and identity), so uniqueness fails despite a central kernel. |

A nonempty indiscrete two-point space is contractible and also has CW type, though it is not Hausdorff: every map into it is continuous. Thus CW **type** does not impose separation on X itself; the definition imposes it on W. Nonemptiness of IsAcyclicSpace is genuine: PathConnectedSpace includes Nonempty; the empty space's vanishing positive chains alone cannot satisfy it. IsAbelianSpace includes degree one, so BS₃ is rejected by conjugation, not accidentally treated as simple. IsPlusConstruction uses the actual induced fundamental-group kernel, not an unrelated supplied subgroup.

**Elaborated signatures and padding.** A single scratch file with `#check @name` for every declaration elaborated successfully: 21/21 signatures, comprising eleven definitions and ten theorems. Category instances and universes survive; no hypothesis silently disappears. In particular the twisted-homology criterion quantifies over all local systems, plus_exists retains CW, T2, connectedness, normality and perfectness, the two aspherical-source statements retain IsAspherical, hSpaceRecognition retains its homology and H-space comparisons, and freeness retains RCLike, Module.Finite and Module.Projective. No mathematical signature change is requested.

A separate scratch copy tried each of the ten admitted theorem statements with `simp`, `rfl` and `infer_instance` (a solving simp branch, not partial simplification followed by sorry). All ten failed to close. Object/declaration searches at the pins found no one-library-lemma replacement for a headline. None is a small-value or boundary-case assertion; no padding finding is raised. The Lean imports are one `import Mathlib` and four existing individual Tau Ceti modules, with no roadmap imports, data holes, admitted examples or option overrides.

**Headlines.** The README's explicit acceptance list (line 106) is Quillen A; Quillen B in its two comma forms; the all-local-coefficients acyclicity criterion; plus existence; plus factorization; π₂ of plus for an aspherical source; its universal central extension; H-space recognition of plus; and freeness of finite projectives over real/complex simplex function rings. These are exactly the ten theorems at Suggested.lean lines 118,127,145,168,177,184,194,205,223,238. Their calculations occur in rows 2.31,2.34,3.7,3.10,3.25,3.28,3.29,4.29.

Further deep/end results are category homology and derived colimits (§§1.25–1.27), Cartan–Serre (§3.37), categorical group completion and linear/orthogonal plus comparisons (§§4.9,4.16–4.22,4.27), topological K (§4.30), stable/chain/operad/delooping/Picard comparisons (§§5.13–5.19), Waldhausen additivity/delooping and Barratt–Priddy–Quillen–Segal (§§6.1–6.3), Moore coefficients/products, completion and fracture (§§7.1–7.20), filtered convergence/AHSS (§§7.21–7.27), and quotient/Moore Eₙ structures (§§7.29–7.34). The module docstring groups these under their missing category-chain, fraction-category, stable-spectrum, Waldhausen/S, spectral-operad, deformation and synthetic carriers. The library search did not find a native carrier making one of these spectral or categorical constructions directly statable without the prohibited heavy encoding. No replacement Prop-valued stand-in is used. The elementary finite-projective theorem was correctly stated rather than hidden behind the future K-theory spectrum.

**Pinned declarations opened.** File paths here are relative to the respective pinned library repository. These are definitions and theorem bodies, not API descriptions copied from a newer branch:

| Library file and line | Declaration / content actually used |
| --- | --- |
| `Mathlib/RepresentationTheory/Homological/GroupHomology/Basic.lean:132` | inhomogeneousChains.d_single uses the inverse action in its first face; row 1.32 distinguishes it numerically. |
| `Mathlib/Topology/Connected/PathConnected.lean:577` | PathConnectedSpace has both Nonempty and Joined fields; it is not merely “at most one component”. |
| `Mathlib/CategoryTheory/FiberedCategory/Fibered.lean:55` | Functor.IsPreFibered asks for Cartesian lifts; line 65 adds compositional closure for IsFibered. |
| `Mathlib/AlgebraicTopology/Quasicategory/Nerve.lean:32` | Nerve.quasicategory supplies inner-horn filling. It does not already state the groupoid outer-horn/Kan assertion of §1.33. |
| `Mathlib/CategoryTheory/Monoidal/Skeleton.lean:60` | Skeleton.instMonoid, with instCommMonoid at line 80; group completion of components uses these supplied monoids. |
| `Mathlib/Topology/ContinuousMap/Units.lean:37` | ContinuousMap.unitsLift relates continuous unit-valued functions to units of continuous functions, including continuous inverse. |
| `Mathlib/RingTheory/AdicCompletion/AsTensorProduct.lean:327` | ofTensorProductEquivOfFiniteNoetherian retains finite-module and Noetherian assumptions; it is not an unrestricted completion/tensor formula. |
| `TauCeti/AlgebraicTopology/EilenbergMacLane/Basic.lean:59` | IsAspherical means PathConnectedSpace and vanishing π_(n+2); no CW or Hausdorff condition is built in. The Lean headlines add CW type separately. |
| `TauCeti/AlgebraicTopology/LocalCoefficient.lean:43` | LocalCoefficientSystem is a functor FundamentalGroupoid X→ModuleCat R, not only a constant coefficient module. |
| `TauCeti/AlgebraicTopology/Singular/Twisted/Basic.lean:600` | twistedHomologyMap is the homology map of the actual pulled-back twisted chain map. |
| `TauCeti/Topology/Homotopy/HomotopyGroup/Map.lean:119` | HomotopyGroup.map is induced from continuous maps with the basepoint equation. |
| `TauCeti/Topology/Homotopy/HomotopyGroup/FundamentalGroupAction.lean:125` | Fundamental-group action from basepoint change; its degree-one action is conjugation. IsAbelianSpace uses it in all positive degrees. |
| `TauCeti/CategoryTheory/GrothendieckGroup/Split.lean:446` | SplitK0.grothendieckAddGroupEquiv identifies algebraic split K₀ with group completion; no second algebraic K₀ is needed here. |
| `TauCeti/Algebra/Module/Torsion/TateModule.lean:115` | TateModule is the subgroup of compatible p-power torsion families, with transition multiplication by p; not the quotient-reduction tower. |
| `TauCeti/LinearAlgebra/BilinearForm/Isometry.lean:153` | BilinForm.isometryGroup is the form-preserving subgroup of linear equivalences, for the actual bilinear form; positivity and invertibility of 2 are not required. |

These 15 file/line entries also correct stale line/path guesses in the previous review: e.g. the actual split-K₀ declaration is line 446, not its docstring's line 60, and TateModule is under Algebra/Module/Torsion.

**Resolved ownership and supplier citations.** Read main examples ClassifyingSpaces, GeneralizedCohomology and GrothendieckEulerForms for roadmap shape. Object searches used the roadmap grep/show tools, pinned libraries, main content and the board packages, followed by inspection of matching files. The following contracts were resolved against main, except the two explicitly identified supplied open heads:

| Owner and repository-relative locator | Consumed objects and boundary |
| --- | --- |
| `TauCetiRoadmap/AlgebraicTopology/README.md:817`, 1820, 1850, 1911 | 4.7 realization CW; 8.8 group nerve/classifier; 8.9 relative/local obstruction theory; 8.10 ordinary representability. Category-level nerve/chain adapters here differ from the already owned group classifier. Other Stage 1–6 citations concern the stated van Kampen, chains, excision, cellular, fibration and duality lanes. |
| `Completed/UniversalCovers/README.md:98`, 126,139 | Stages 2–4 covering classification, higher homotopy and aspherical recognition; Stage 1 deck comparison is the residual citation repair in R06. |
| `TauCetiRoadmap/ClassifyingSpaces/README.md:137`,177,222 | Stages 1,3,4 join classifier, model uniqueness and group-(co)homology resolution comparisons. These are imported; the category coefficient adapter is local. |
| `TauCetiRoadmap/DGFloer/README.md:442`,522,533 | Layer 1 items 1–4: Hurewicz degree one, CW approximation, arbitrary-base and arbitrary-CW Serre sequences, filtered complexes, Serre classes and K(A,n). No finite-dimensional base restriction was silently added to the arbitrary-base contract. |
| `TauCetiRoadmap/GeneralizedCohomology/README.md:533`,878,1643 | G2.1–G2.10 supply convenient spaces, symmetric spectra/models, monoidal localization, Γ-machine, HA and mapping paths; G3.4 and G3.7–G3.10 supply limits, covers, completion and mapping Milnor; G5.4–G5.6 supply Bott models and rational comparison. R01 and R02 distinguish this supplier's derived/coherent contracts from the stronger raw assertions. |
| `TauCetiRoadmap/DerivedModuleAlgebra/README.md:1403` | §1.T.1 owns tower shift, kernel/cokernel of 1−shift, six-term boundary and limOne_mul_p. §§4.11 and 7.9 here compare unstable/spectral constructions with that algebra; they do not reconstruct it. |
| `TauCetiRoadmap/GrothendieckEulerForms/README.md:238` | Layer 2 split K₀ and universal additive invariant, also available through the pinned equivalence above. |
| `TauCetiRoadmap/IntegralLattices/README.md:509`,552,785,1643 | 0A forms/sums, 0E signature, 2C indefinite as well as definite isometry groups, 6A indefinite unimodular classification. E₈/J probe in row 4.27 respects this scope. |
| `Completed/OrthogonalSpinGroups/README.md:368` | 0C bilinear/quadratic dictionary requires 2 invertible; its bilinear base-change map is over a ring. No division by 2 over ℤ is inferred. |
| `TauCetiRoadmap/BordismFormalGroups/README.md:735`,2068,2135 | F6.2 little-2-cubes; F6.5 Sp∞, coherent localization, operads and the Day/Ind/Kan-extension machinery. Local targets generalize arity/dimension and prove specified comparison/obstruction results. |
| `TauCetiRoadmap/EllipticCohomology/README.md:996` | E4.A exists, but its construction is MU-specific: R03. |
| `TauCetiRoadmap/AlgebraicKTheory/README.md:91`,125,493 (supplied open head) | A0 projective complements and right-module conventions; A1 stable matrix/elementary algebra; A5 Steinberg specialization. Generic universal central extensions here and the ring-specific Steinberg result have distinct ownership. |
| `TauCetiRoadmap/TangentialBordism/README.md:726` (supplied open head) | B4.1–B4.2 Steenrod squares and the bounded-below finite-type mod-2 Adams tower, not a new Steenrod construction in this folder. |

Generic Quillen A/B, acyclic plus, category-fraction group completion and the Waldhausen/S comparison are owned here. Searches against the **provided** sibling heads find consumer contracts rather than competing definitions: `TauCetiRoadmap/StableHomotopyKTheoryPartII/README.md:7` and 43; `TauCetiRoadmap/ChromaticHomotopyTheory/README.md:99` and 573; `TauCetiRoadmap/RefinedTraceMethods/README.md:56`; `TauCetiRoadmap/GeneralAlgebraicKTheoryPartII/README.md:45`; `TauCetiRoadmap/AlgebraicTopologyPartII/README.md:386`. GeneralAlgebraicKTheory's main roadmap consumes plus/group completion and owns its Q/ring/localization comparisons. No fully qualified acceptance declaration collision was found in the provided heads or main. No additional unavailable open checkout is claimed to have been inspected. No ownership move to a later supplier is proposed. The board package object search found no additional owner.

**Shape.** Seven layers have numbered targets, Examples and Dependencies, plus conventions, supplier contracts, downstream consumers and references. Definition blocks carry APIs and multiple distinguishing Checks; the table re-evaluates their empty, zero, nonabelian, nontrivial-action, degree and small-prime controls. The pervasive API/Check identifier format and the namespace form still need the changes in R04–R05. Exact source passages were not copied into the worktree or this report.

## Not verifiable

- Adams 1966, Theorem 2.1 (§7.31): the sources service reached the Cambridge DOI landing page but obtained no readable legal text. The Adams vanishing line is also quoted in the legally readable BHS text; that is not certification of the original proof or numbering.
- Thomason 1979, Theorem 1.2 (§2.29): Cambridge DOI landing page, no readable legal text through the service. Kahn's restatement is available; the original proof is uncertified here.
- Waldhausen 1978, Lemma 5.2 (§6.3): JSTOR DOI landing page, no readable legal text through the service. The separate later Waldhausen K-theory-of-spaces text was available.
- May 1974, §4: Cambridge book/chapter landing page, no readable legal text through the service. This is distinct from the readable May paper used elsewhere.
- Randal-Williams, Theorem 1.1, Corollary 1.2 and Proposition 3.1 (§§4.17–4.18): the author-page request failed certificate validation. This is a network failure, not a claim that the text is illicit.
- Barratt–Eccles 1974: the service resolved only a paywalled DOI and records it as uncertified. No attempt was made to bypass access controls.
- The Hopf-action/self-braiding clause of §5.19: BS line 2711 states the Picard-spectrum equivalence and points to [Pat12, §3]; it does not establish this additional identification there. The graded-real-line value −1 was recomputed, but a proof at the cited locator was not verified.
- Browder's original argument behind W IV Scholium 2.8.1 was not read. The counterexample and the need for the README's η hypothesis were checked independently in row 7.33.

All cited works were attempted through the source service; unresolved requests are retained together in `needs-references.toml`. No source manifest was edited. These access limits do not park this review or erase the concrete blocking witnesses.

## Source issues

- **Misprint** in W IV at Proposition 2.7, printed p. IV.21: the source says both coprime factors use q₁; it should be q₁ in the first factor and q₂ in the second; affects nothing.
- **Misprint** in W IV at §2.9, printed p. IV.22: the source says the Tate module of K₁(ℂ) supplies K₁(ℂ;ℤ_ℓ); it should be a contribution to degree two, since the Tate term uses the preceding homotopy group; affects a stated result.
- **Error** in W IV at Scholium 2.8.1, printed p. IV.21: the source says vanishing positive even and negative homotopy suffices for associative commutative coefficient products at moduli 2,3,4,8; it should additionally impose the Hopf-action and low-modulus product obstructions; τ≤₁S already fails to admit a unital mod-2 product; affects a stated result.
