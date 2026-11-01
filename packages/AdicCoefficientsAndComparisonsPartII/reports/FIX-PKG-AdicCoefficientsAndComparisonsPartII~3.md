# Repair report

## F01 (P1) — applied

Unrestricted immediate-degree-p criterion → criterion with p > 1. Both stability criteria now separate residue characteristic zero. Added C((t))/C((t)): immediate degree 1, instability false, repaired right side false. Evidence: temkin10 line 1750, line 1754 and line 1990. All occurrences in §5.2a were audited; no Lean declaration expresses this criterion.

## F02 (P1) — applied

Unrestricted component-degree preservation → §5.5a's generic-constants reduction and geometric-integrality theorem. Added cubic, S₅, inseparable and identity Checks. Carried the invariant through §5.6 and §6.1, audited §§6.3–6.8, and replaced §6.6's unsupported base-change argument by its explicit compositum-degree target. General relative graph closure replaces the inappropriate field-fibration citation. Evidence: stacks line 1718 (Fields), line 528 (Varieties); ilo14 line 7561.

## F03 (P1) — applied

Regular log smooth divisorial pair implies relative snc → relative normal crossings; strict conclusion additionally requires an snc boundary. Added node, axes and empty-boundary Checks in §4.5, consistent with §§0.8 and 4.8. Evidence: ilo14 line 6965 and line 6970. The node has dimension 1 and tangent dimension 2; the axes have regular components meeting in codimension 2.

## F04 (P1) — applied

Arbitrary-scheme closed-fixed-locus equivalence → noetherian equivalence, in both API and proof route. Action and inertia definitions retain arbitrary schemes. Added the glued product-ring counterexample and the two-point noetherian control. Constructibility plus specialization proves the restricted assertion; closed loci imply specialization without noetherianness. The applications in §§3.4, 4.4–4.6 and 5.6 already have noetherian sources.

## F05 (P2) — applied

§0.3's noetherian alteration prerequisite → SchemeAndStackFoundations §4.16's integral carrier in §§5.3–5.4, conventions and supplier contract. Added the nonnoetherian rank-two valuation-ring identity and matching noetherian and nonfinite controls. Evidence: supplier Suggested.lean lines 2158–2173 has no noetherian binder; temkin10 lines 136–155 retains arbitrary integral qcqs bases.

## F06 (P1) — applied

Torsion of degree-zero Picard groups of relative surfaces → the precise boundary Picard theorem under (T), including nonreduced boundaries. Added its subgroup API, dependencies and four computed Checks. The Rumely route applies torsion to the thickened boundary D₃. Evidence: moretbailly89 lines 175–189, 406–438. The elliptic surface is excluded; its generic-point class remains of infinite order.

## F07 (P3) — applied

One shared analytic API and five Checks → six readable definition groups, each with an API and at least three Checks. Computed all three field types, failing splitness, stability, both generator classes, split/critical/special distinctions and both branches of the uniformization hypothesis. All additions are README mathematics; no Lean padding. Evidence: temkin10 lines 1773–1788, 2011–2066 and 2339.

## F08 (P3) — applied

Scheme-theoretic image listed as missing → native image, image inclusion and factorization cited in the Mathlib contract and Lean docstring. The dual-number image has kernel (ε), not merely its one-point topological support. Verified Mathlib/AlgebraicGeometry/IdealSheaf/Subscheme.lean lines 659, 662 and 705 at the pin. Other missing geometric carriers still obstruct the full headlines.

## F09 (P3) — applied

Corrected every affected occurrence: cjs grouped pages 3–5 and Corollary 0.4 page 5, including manifest and References; Temkin §3.2.11 line 850, retaining line 936 for §3.3.5; ILO VI §3.1 line 3263, retaining line 7160 for X; Dittmann–Pop proof pages 8–9. Evidence: cjs line 131; temkin17 line 850; ilo14 line 3263; dp23 line 374.

## Checks and source verification

The required `lake env lean` invocation on `packages/AdicCoefficientsAndComparisonsPartII/Suggested.lean`, from the content checkout, exited 0 with no output. There are no TauCeti imports, so no targeted module build was needed. A separate scratch file with `import Mathlib` and explicit `#check @...` declarations also exited 0. It checked all 21 cited native image, normalization, characteristic-space and valuation declarations used in the audit.

The package namespace contains zero declarations, definitions, instances and section variables. Thus the requested check of every package declaration's elaborated signature has an empty domain: no binder changed or disappeared. The scratch check confirms that image has type `(X ⟶ Y) → Scheme`, its inclusion has source the image and target Y, and its factorization has source X and target the image. Normalization retains its quasi-compact and quasi-separated binders; constructible image retains local finite presentation and quasi-compactness; compact constructible topology retains compactness, quasi-sobriety, prespectrality and quasi-separatedness. No substitute headline or admitted data was added.

Dependency command: the required `gate --depcheck`, with this package's README, name, board order and `--movable`, exited 0. Exact output:

    depcheck: 51 roadmaps, 586 edges, 0 problem(s)

There is no UPWARD, CYCLE or moved line. `git diff --check` exited 0. The metadata and design plan are unchanged; the five existing supplier-gap slugs remain equal in the README and plan. No additional supplier gap is needed: the new generic-curve reduction and boundary torsion input are owned targets here, and the qcqs alteration carrier already has a supplier.

The supplied notation failure `tex=5` is repaired in place: the limiting disc norm in §5.2a, the normalization expression in §5.5a and the three fixed-field expressions in its S₅ Check now use ASCII code spans. The installed gate's notation scanners exit 0 with exact output:

    tex=0
    latex=0

Lean elaboration and the dependency command were rerun after this notation repair, with the exit codes and output recorded above. Only notation changed: the disc still has approximation infimum r and (E,F) = (0,0), normalization still has source-modification degree 1, and the fixed-field indices and orbit sizes remain 5 and (2,3). All nine finding sections and the prior mathematical repairs are retained.

The content main was 86e155cac97365a2b24380c270383cd1d01628be; the pins are Mathlib 6b7abb3c7686292736be2955bd3eb9ebf63b456a and Tau Ceti a91d3aafa8cd3e6bc33dfde0d7677ed0f1625039. Read the main ClassicalArithmeticCompletion and AdicSpacesPartIV roadmaps for form, and the main SchemeAndStackFoundations alteration and Picard sections for the actual contracts.

| Work | Legal extraction opened and mathematical use |
|---|---|
| temkin17 | line 71: degrees; line 645: pointed models; line 850: wild primes; line 999: relative curves; line 1078: induction; line 1121: refinement. |
| ilo14 | line 3263: very tame actions; line 6965: strict boundary hypothesis; line 7160: doubled origins; line 7175: specialization; line 7561: relative graph and generic smoothening; line 7646: degree inference requiring repair. |
| temkin10 | line 136: qcqs convention; line 153: existence; line 1750: stability; line 1773: cosets; line 1990: minimum criterion; line 2011: analytic dimension; line 2031: uniformization hypotheses; line 2058: type-4 discs. |
| cjs | line 53: dimension-two resolution; line 131: embedded boundary, printed page 5. |
| cp19 | line 93: separated threefold proper resolution; line 101: projective over the prescribed affine cover. |
| dp23 | line 350: Proposition 3.4; line 374: continuation on printed page 9 and odd-degree alteration. |
| jannsen16 | line 1052: prime-to-ℓ variety alteration and function-field degree. |
| dejong96 | line 1447: equivariant theorem; line 1545: arithmetic conventions; line 1551: arithmetic theorem; line 1582: sections/projections. |
| moretbailly89 | line 62: (T); line 81: Rumely; line 175: boundary component hypotheses; line 188: torsion theorem; line 192: nilpotents; line 436: actual boundary application. |
| stacks | line 1718 (Fields): finite relative constants; line 528 (Varieties): geometric connectedness at the generic point; line 886 (Varieties): geometric integrality under all field extensions; the earlier chapter locators for 0815, 081R and 05K0 are retained. |

The additional Fields chapter was fetched through the sources service under the existing stacks key. Its URL, hash and fetch data are recorded; earlier chapter URLs and hashes are retained. No source was renamed, copied into the repository or marked missing. All ten manifest works remain certified; no missing-reference request is outstanding.

## Ownership, citations and consequences

Object searches used the roadmap service over main and its indexed open heads, plus the board packages and the pinned library sources: generic constants/geometric integrality, Picard torsion and boundary Picard groups, integral alterations, fixed loci and logarithmic actions. SchemeAndStackFoundations §4.16 owns the integral alteration carrier; §0.20 owns Nagata finiteness; §§4.11–4.12 own modifications and graph/strict-transform inputs. StableReduction Layers 2 and 4 own projectivity and blow-ups. AlgebraicCurves Layer 8 discusses constant-field extension and perfect-field variants, rather than the scheme-level relative normalization over arbitrary quasi-excellent bases required here. The latter is the prerequisite for this package's general P-degree induction and is owned in §5.5a. No second relative-algebraic-closure carrier was created.

The boundary Picard torsion theorem is an intermediate input to the Rumely theorem already owned by this package. It uses SchemeAndStackFoundations §§2.4, 2.6, 2.11, 3.3–3.4 and 3.6 for cohomology, degrees, Picard groups and the Jacobian, rather than reconstructing those theories. These citations were read at main. The logarithmic suppliers were read through the roadmap service: CrystallineCohomology CR.5:log-algebra.1–4 and LefschetzPencilsAndVanishingCycles §0.10, including the exact very-tame quotient and equivariant-resolution targets. The affine Riemann–Zariski comparison is ClassicalAdicEtaleCohomology §2.4. EtaleCohomologyFoundations §F.0.A1 supplies the advertised SchemeInertia specialization.

LocalFieldsRamificationPartII is a board design, not a roadmap on main or an indexed open head. Its `packages/LocalFieldsRamificationPartII/design/README.md` contains GF.0–GF.6 and the cited exact targets, including GF.5/abhyankar-and-rank and GF.5/unramified-composition. The existing maximal-separable-P-extension gap remains explicit. The outgoing LogicAndDefinabilityInNumberTheoryPartII and EtaleDualityAndPerverseSheavesPartII references were checked against their board design folders. The resolver's remaining missing-main-roadmap lead for the former is therefore an outgoing design citation, not an unresolved supplier. Its other two initial leads are real targets in LefschetzPencilsAndVanishingCycles §0.10 at the indexed head.

Ownership against the separately named sibling open pull requests was not independently checked from checkout files: the brief supplies names without checkout paths. The service's indexed main/open-head object search was used as authorised; no additional remote pull-request discovery was performed.

No Lean name changed, and no downstream declaration needs renaming. Consumers must use the noetherian hypothesis on the fixed-locus equivalence and the strict-boundary hypothesis for relative snc; the headline alteration conclusions retain their stated generality. The general P-degree proof now requires §5.5a's invariant at both curve-base changes. The §6.6 refinement explicitly owns its source-relative compositum-degree assertion; the source's outline is not treated as a componentwise base-change theorem. No merge-order or supplier file was edited.

## Adversarial mathematics pass

These are computed controls, not proofs of the deep existence theorems. The rows cover the section targets, their defining predicates and API identities, the changed routes, conventions, supplier interfaces and worked examples. “Retain” means the displayed values meet the stated hypotheses/conclusion or exclude the named negative control. Degenerate objects outside a field/domain/finite-extension hypothesis are excluded explicitly, rather than assigned a totalized degree.

| Statement | Instances tried | Computed values on the two sides / witness | Result | Change |
|---|---|---|---|---|
| Conventions: positive P-number | 1 and 0, P empty | primeFactors(1)=∅; positive(1)=true; positive(0)=false | Retain | None |
| Conventions: residue exponent | C((t)), F₂((t)), F₃((t)) | p=1,2,3 respectively; residue characteristic=0,2,3 | Retain | Guard positive-characteristic criteria |
| Conventions: characteristic support | Spec Q, Spec Z_(2), empty | ∅, {2}, ∅ respectively | Retain | None |
| Conventions: inverse valuation restriction | Z[i]_(1+i) over Q | intersection with Q=Z_(2); v(2)=2 upstairs and positive downstairs | Retain | None |
| Conventions: Artin–Schreier sign | u^p−u=t⁻¹, p=2,3 | v(u)=−1/2,−1/3; p v(u)=−1=v(t⁻¹) | Retain | None |
| Conventions: log diagonal | xy=π | 1↦(1,1); coker=Z; both boundary branches retained | Retain | None |
| Conventions: unit exponents | π=u t^p | gcd(p,p,1)=1; coker torsion=0 | Retain | None |
| Conventions: universes and finite degree | K/K versus K(T)/K | finrank(K/K)=1; infinite extension excluded before finrank's junk value 0 | Retain | None |
| Mathlib relative constants carrier | Q⊂Q(∛2)(T) | algebraicClosure=Q(∛2), degree 3; T excluded | Retain | Use native carrier |
| Mathlib scheme image | Spec k→Spec k[ε]/ε² | ker=(ε); image=Spec k; topological support has one point in both schemes | Retain | Correct missing-carrier claim |
| Mathlib normalization identity | normal A and cusp k[t²,t³] | Nor_k(A)(A)=A; cusp normalization=k[t], generic degree 1 | Retain | None |
| Normalization finite-extension witness | Q(i)/Q over Spec Z | normalization=Z[i], degree 2 | Retain | None |
| Normalization inseparable witness | F_p(t^(1/p))/F_p(t) | generic degree p; normalization ring F_p[t^(1/p)] | Retain | None |
| Normalization finiteness boundary | non-Japanese DVR | integral normalization may be nonfinite; normality alone gives no finite rank witness | Retain | Keep Nagata hypothesis |
| Noetherian native predicate | line with doubled origin | finite affine noetherian cover; two origins; separation fails | Retain | No separatedness inferred |
| Constructible compactness contract | one-point Spec k | underlying and patch spaces each have one point; finite cover has singleton subcover | Retain | Keep all native topology binders |
| Tau Ceti residue-degree tower | F₂⊂F₄⊂F₁₆ | 2·2=4=[F₁₆:F₂]; each degree positive | Retain | None |
| Tau Ceti restriction composition | M⊃L⊃K | ((O∩L)∩K)=O∩K elementwise; identity intersection O∩M=O | Retain | None |
| Affine invariant quotient | sign action on k[x,y], char≠2 | u=x²,v=xy,w=y²; uw=v²; generic quotient degree 2 | Retain | None |
| Finite quotient finiteness | sign action on k[x,y], char≠2 | A is generated over invariants by 1,x,y; x²,y² are invariant; projection finite of generic degree 2 | Retain | None |
| SchemeAndStackFoundations integral alteration | id Spec V, rank-two V | proper=true, dominant=true, finite on whole base=true, generic degree=1 | Retain | Use in §§5.3–5.4 |
| SchemeAndStackFoundations modification composition | two identities on Spec k | dense open=whole point; 1·1=1 | Retain | None |
| Finite-type factorization gap | id X and U=X | closed immersion=id; X_U→X₀_U=id; both fibres identical | Retain | Existing gap unchanged |
| Closed-subset log gap | A² with axes and cusp | axes characteristic=N²; cusp fails fine normal model; two cases retained | Retain | Existing gap unchanged |
| Log blow-up universal-property gap | unit ideal and principal log ideal | pullback already invertible; universal modification=id, degree 1 | Retain | Existing gap unchanged |
| Very-tame localization gap | sign action with axes | inertia=C₂; characteristic=N² fixed; closed stratum point fixed | Retain | Existing gap unchanged |
| Maximal separable P-extension gap | P empty | only finite degree allowed=1; top field K, separably P-closed | Retain | Existing gap unchanged |
| 0.1 residue characteristics | Q, Z_(2), Z[1/6], F₃[t] | ∅, {2}, primes≥5, {3} | Retain | None |
| 0.1 unit characterization | 2,3,5 in Z[1/6] | 2 and 3 units; 5 nonunit; membership false,false,true | Retain | None |
| 0.1 morphism monotonicity and surjectivity | Spec Q→Spec Z; id Spec F₂ | ∅⊆all primes; {2}={2} | Retain | None |
| 0.1 empty/Q-scheme equivalence | empty scheme | no residue points, empty characteristic set, unique structure map to Spec Q | Retain | None |
| 0.1 finite difference for dominant finite type | Spec Z[1/6]→Spec Z | missing primes={2,3}, cardinality 2 | Retain | None |
| 0.2 maximal domination | G_m→A¹, closed origin, extra point | generic image=generic,true; origin,false; extra maximal component→origin,false | Retain | None |
| 0.2 composition/open restriction | G_m→A¹→A¹ identity | generic point maps to itself twice; composite true | Retain | None |
| 0.2 empty source | empty→S | zero maximal source points; universal condition true; surjectivity false for S nonempty | Retain | None |
| 0.2 irreducible vs reducible dominance | one point→two disjoint points | maximally dominating=true; dominant=false; closure image has 1 of 2 points | Retain | None |
| 0.3 alteration predicate | cusp normalization; Frobenius F₂,F₃ | proper surjective, generic degrees 1,2,3; all satisfy max domination | Retain | None |
| 0.3 generic finiteness | P¹_k→Spec k | generic fibre dimension 1, extension infinite; alteration=false | Retain | None |
| 0.3 no vertical components | A¹⊔point→A¹ | generic degree 1 on A¹ but extra maximal point maps to closed origin; false | Retain | None |
| 0.3 reduction and composition | Spec k[ε]/ε² reduced; identities | reduction degree 1; (1)(1)=1; generic isomorphism fails on nilpotents | Retain | None |
| 0.4 P- and ℓ-prime degrees | Z[i]/Z, P={2}, ℓ=3 | degree 2; prime support {2}; gcd(2,3)=1 | Retain | None |
| 0.4 separability | Frobenius on F₂(t), F₃(t) | degree 2,3; derivative 0; separable=false | Retain | None |
| 0.4 monotonicity/product | P={2}⊂{2,3}; degrees 2 and 3 | 2 remains allowed; product 6 has support {2,3} | Retain | None |
| 0.4 empty prime set/modification | cusp normalization and Q(t²)⊂Q(t) | degree 1 accepted; degree 2 rejected for P=∅ | Retain | None |
| 0.5 pseudo-projectivity | identity; doubled plane | identity factor degrees 1; doubled origins map to one point, local isomorphism but not open immersion | Retain | None |
| 0.5 separated/proper specialization | two disjoint copies of an affine open | local isomorphism has two points in a fibre; finite-over-projective factor handles it | Retain | None |
| 0.5 composition failure | blow-up one doubled origin | two DVR maps agree generically, have distinct closed images; fails pseudo-projective criterion | Retain | None |
| 0.5 base-change stability | identity base change of open in Pⁿ | factor remains open immersion followed by projective morphism; identity degree 1 | Retain | None |
| 0.6 finite-type flattening | Bl₀ A²→A² | after same base blow-up, strict transform=id; fibre dimensions become 0 everywhere | Retain | None |
| 0.6 admissible boundary | U=S, already flat morphism | centre empty; blow-up=id; flatness true on all fibres | Retain | None |
| 0.7 non-separated Chow | doubled-origin plane | source has one generic point and two origins; pseudo-projective factor exists without separation | Retain | None |
| 0.8 snc support definition | axes, origin, empty | two codimension-1 branches meet in codimension 2; point codimension 2 rejected; empty accepted | Retain | None |
| 0.8 strict vs étale crossing | irreducible node y²=x²(x+1) | one irreducible component; local dimension 1; tangent dimension 2; strict=false | Retain | Mirror in §4.5 |
| 0.8 triple-crossing exclusion | xy(x−y)=0 in A² | three branches; triple intersection codimension 2<3; strict=false | Retain | None |
| 0.8 subfamily/Cartier subsupport | V(x)⊆V(xy), origin⊆V(xy) | V(x) Cartier and snc; point not Cartier support in dimension 2 | Retain | None |
| 0.8 smooth pullback/open restriction | axes×A¹, D(x) | branch intersections codimensions 1,2 unchanged; on D(x), only y=0 remains | Retain | None |
| 0.9 universal resolvability | Spec field, empty scheme | finite Artinian reduction is product of fields; nowhere-dense subset empty; empty case has no nonempty alteration | Retain | None |
| 0.9 monotonicity and alteration inheritance | degree 1 solution, P⊂P′ | support ∅⊆P⊆P′; composite input remains proper with finite generic fibre | Retain | None |
| 0.9 projective/proper senses | regular affine threefold and its identity | degree 1, regular source, empty boundary; identity projective=true and proper=true, so both notions accept this witness | Retain | None |
| 0.9 nonexcellent DVR boundary | non-Japanese DVR with inseparable extension | normalization not finite; proposed regular proper cover would force a finite module containing it | Retain | None |
| 0.10 dimension-one resolution | DVR and nodal curve normalization | DVR identity degree 1; node normalization has two regular branches; closed preimages codimension 1 | Retain | None |
| 0.11 surface boundary resolution | Bl₀ A² | exceptional P¹ has codimension 1; map degree 1; charts (x,v) with y=xv | Retain | Fix source pages |
| 0.12 threefold proper resolution | regular separated threefold; doubled A²_Z | identity degree 1 works for regular case; doubled example dim=3, separated=false | Retain | Fix cjs page |
| 1.1 pointed scheme/modification | Spec F₂→Spec Z | closed immersion proper; not surjective onto Z; marked image one point | Retain | None |
| 1.1 tight/cofinal models | generic point and extra components | schematic closure removes unmarked components; marked function field unchanged | Retain | None |
| 1.1 properness control | G_m→A¹ | generic field unchanged; missing origin makes map nonproper and excluded | Retain | None |
| 1.2 pointed limit and stalk | id Spec K; generic DVR | one point with stalk K; DVR model space has generic and closed points with stalks K,R | Retain | None |
| 1.2 constructible sets | DVR | two singleton patch-open points; each subset pulled from the identity model | Retain | None |
| 1.2 rank boundary | lexicographic valuation of k(x,y) | rank=2; valuation ring nonnoetherian; permitted limit stalk | Retain | None |
| 1.3 valuative centres | Q over Z_(p) | valuation rings Q and Z_(p), exactly 2 eligible rings | Retain | None |
| 1.3 separatedness control | doubled-origin line | same ring k[t]_(t) has 2 centres; forgetful map not injective | Retain | None |
| 1.3 finite-field case | K=F₂ | only valuation ring=F₂; marked centre one point | Retain | None |
| 1.4 compact valuative description | DVR; point | 2-point/1-point limits; finite patch covers have finite subcovers; stalks R,K | Retain | None |
| 1.5 restriction direction | Q(i)→Q valuations | at 2 one ring restricts to Z_(2); at 5 two rings restrict to Z_(5) | Retain | None |
| 1.5 identity/tower compatibility | O⊂M, M⊃L⊃K | intersection with M gives O; nested intersections equal O∩K | Retain | None |
| 1.6 restriction openness/continuity | identity and finite quadratic restriction | identity sends opens to themselves; clopen pair of valuations above 5 maps to singleton valuation at 5 | Retain | None |
| 1.7 absolute valuation space | Q, F_q | Q and one Z_(p) per prime; F_q has one valuation ring | Retain | None |
| 1.7 centred locus and compact image | Spec Z[1/2], K=Q | all valuations except Z_(2); invertibility 2 removes exactly one point | Retain | None |
| 1.7 surjectivity but not injectivity | Q(i)/Q | fibres at 2 and 5 have sizes 1 and 2; each nonempty | Retain | None |
| 1.8 affine comparison | A=Z_(p), K=Q; rank-two V | two points on both sides in DVR case; identity V-model permits rank-2 centre without noetherian assumption | Retain | None |
| 2.1 tame/unramified/wild loci | Q(i)/Q at 2,5 | e=2,p=2 wild; e=1 and residue degree 1 at 5 unramified | Retain | None |
| 2.1 identity and trivial valuation | K/K; F₂(t^(1/2))/F₂(t) | wild locus empty for identity; trivial inseparable extension has e=f=1, degree 2 and is not tame | Retain | None |
| 2.2 S/P-tameness | empty S, empty P, Q(i)/Q | both empty tests true; Q(i) 3-tame=true, 2-tame=false | Retain | None |
| 2.2 pointed comparison hypothesis | F₂(t^(1/2))/F₂(t), P empty | P-test true; no Spec L→Spec Q; comparison hypothesis false | Retain | None |
| 2.2 restriction/monotonicity | S⊂S′; identity extension | empty wild intersections on S′ give empty intersection on S; degree 1 at every point | Retain | None |
| 2.3 tower/compositum loci | Q⊂Q(i)⊂Q(i,√3) at 3 | e=1 then e=2, both prime to 3; product e=2 tame; at 2 wild already in quadratic part | Retain | None |
| 2.4 open tame locus | Q(i)/Q | complement is the single valuation above 2; derivative 2i is a unit away from 2 | Retain | None |
| 2.5 field distillation | Q(i)/Q, S all; S empty | P={2}, K′=Q(i), relative degree 1; empty S allows K′=Q | Retain | None |
| 2.5 wild sign control | F_p(t)(u), u^p−u=t⁻¹ | v(u)=−1/p; e=p; p=2,3 detected in wild set | Retain | None |
| 2.6 separable distillation | Q(i)/Q; imperfect char-2 separably closed K | quadratic case separable; no nontrivial separable extension of K, but purely inseparable degree 2 is excluded | Retain | None |
| 3.1 decomposition vs inertia | Spec F₉ with Gal(F₉/F₃) | D order 2; I order 1; point fixed but residue automorphism nontrivial | Retain | None |
| 3.1 residue tame test | Z[i] at 2,3,5 | D,I orders (2,2),(2,1),(1,1); 2=0 only in residue F₂ at ramified prime | Retain | None |
| 3.1 specialization equivalence | glued two Spec(∏F₃) | all specializations identity, true; fixed U dense proper nonclosed, false | Refutes unrestricted form | Add noetherianness |
| 3.1 noetherian equivalence control | C₂ swaps two F₃-points | inertia trivial at both; fixed locus empty and closed; both sides true | Retain repaired form | Add Check |
| 3.1 non-specializing action | doubled-origin plane reflection | generic fixed-axis inertia 2; either origin inertia 1; inclusion fails | Retain | None |
| 3.1 nonabelian control | S₃ acts freely on 6 copies of Spec F₂ | group order 6; each inertia order 1, a unit in F₂ | Retain | None |
| 3.1 identity/admissible quotient | trivial group on affine X | inertia order 1; one-point orbits; invariant ring A^1=A | Retain | None |
| 3.2 Galois alteration/covering | Frobenius F₃, Z[i], Q(∛2) | purely inseparable degree 3 and Aut=1 allowed as alteration; Z[i] Galois covering; cubic Aut=1 but separable degree 3 not Galois | Retain | None |
| 3.2 normal quotient condition | finite Galois normalization over normal X | invariant function field k(X); finite birational normal quotient identifies with X, degree 1 | Retain | None |
| 3.3 wild primes and degree bound | Z[i]/Z; cubic T³−T−2 | wild={2}; cubic degree 3, discriminant −104, local branch degree 2, so 2≤3 but 2∤3 | Retain | Correct §3.2.11 locator |
| 3.3 modification and Q-case | modification; t↦t² on A¹_Q | valued degree 1 gives wild set ∅; Q-scheme centred valuations all residue char 0, wild set ∅ | Retain | None |
| 3.4 tame Galois after modification | Z[i,1/2]/Z[1/2] | all inertia orders prime to residue characteristic; identity modification degree 1 suffices | Retain | Noetherian fixed-locus use retained |
| 3.5 Galois closure tameness | Q(∛2) and its closure away from 2,3 | discriminant primes 2,3 removed; all selected henselian extensions tame on both sides | Retain | None |
| 3.6 alteration distillation | Z[i]/Z | wild set {2}; choose X′=Y=Spec Z[i], Y′=Y; base degree 2, relative degree 1 | Retain | None |
| 3.7 separable alteration distillation | same Gaussian example | degrees 2 and 1 separable, characteristic 0; inseparable Frobenius excluded by hypothesis | Retain | None |
| 4.1 log-regular pair | axes, empty, toric cone, origin alone | dimensions 2=0+2, dim X=dim X+0, toric 2=0+2; codim-2 origin not divisor boundary | Retain | None |
| 4.1 recovery/triviality locus | A² with axes | trivial locus D(xy); complement V(xy) equals exact boundary | Retain | None |
| 4.1 normality/fineness control | cusp with origin boundary | normalization k[t]≠k[t²,t³]; infinitely many indecomposables over infinite k; not log regular | Retain | None |
| 4.1 strata | axes on A² | open rank 0 codim 0; axes minus origin rank 1 codim 1; origin rank 2 codim 2 | Retain | None |
| 4.2 fine vs saturated log blow-up | toric uw=v² and ideal (u,w) | chart v²=u²s; z=v/u satisfies z²=s but absent; normalization k[u,z] | Retain | None |
| 4.2 unit/principal blow-up | unit ideal; invertible ideal | universal blow-up=id in both cases, degree 1 | Retain | None |
| 4.2 strict pullback | identity log morphism | pulled-back ideal unchanged; comparison source and target charts identical | Retain | None |
| 4.3 functorial desingularization | regular axes; A₁ cone; cusp with trivial log | identity; vertex blow-up regular charts; cusp remains cusp since monoid 0 already free | Retain | None |
| 4.3 strict/monoidal smooth witnesses | identity and axes×A¹ with trivial extra log | r=0 in characteristic map; pullback tower agrees; underlying regularity preserved | Retain | None |
| 4.4 inertia-specializing modification | sign on A², empty boundary | blow-up origin; exceptional P¹; scalar action trivial on exceptional stratum but chart sends normal coordinate to its negative | Retain | None |
| 4.4 morphism log-smoothness distinction | same blow-up | exceptional log point chart N→k,1↦0; blow-up morphism not log smooth although resolved pair is log smooth over k | Retain | None |
| 4.5 preparation/general crossing conclusion | irreducible nodal D in A²_C | dimension 1, tangent dimension 2; NC=true, strict NC=false | Refutes strict form | Add strict boundary hypothesis |
| 4.5 strict conclusion controls | axes and empty boundary | N² at origin, intersection codim 2; monoid 0 for empty boundary | Retain | Add Checks |
| 4.6 relative Gabber modification | trivial G, smooth pair over field | identity map; inertia order 1; quotient pair unchanged; log smoothness true | Retain | None |
| 4.7 intermediate boundaries | A² axes over field, remove y-branch | N²→N localization; remaining x-axis smooth, chart rank drops from 2 to 1 | Retain | None |
| 4.7 required inverse boundary | xy=π over log trait | both vertical branches necessary; deleting either violates containment f⁻¹(Vπ)⊆Z′ | Retain | None |
| 4.8 field local form | smooth axes vs irreducible node | axes meet strict hypothesis and yield relative snc; node fails that hypothesis | Retain | Align §4.5 |
| 4.8 trait exponents | xy=π; π=u t^p | gcd(p,1,1)=1 and gcd(p,p,1)=1; torsion zero in both chart cokernels | Retain | None |
| 5.1 multipointed/semistable | A¹, uv=π, cusp | identity smooth; special fibre node with two branches; cusp tangent cone double line excludes it | Retain | None |
| 5.1 marking condition | marking through uv=0 node | point is outside smooth locus; semistable marking=false | Retain | None |
| 5.1 stable-modification distinction | identity unmarked P¹; exceptional P¹ of blow-up | no contracted components for identity; exceptional component has 1 attachment and degree −1 | Retain | None |
| 5.1 base-change stability | uv=π after π maps to 0 | fibre uv=0 still nodal; marking empty; semistability retained | Retain | None |
| 5.2 relative ampleness | identity P¹ and blow-up exceptional component | identity fibre dimension 0 imposes no degree positivity; exceptional dualizing degree −2+1=−1 not ample | Retain | None |
| 5.2a analytic field definition | Q_p,C((t)),p-adic Q,trivial field | first two complete height 1; Q incomplete; trivial valuation height 0 | Retain | Individual Checks |
| 5.2a analytic k-field | Gauss field, constant quadratic Gauss field | k embeds isometrically; constant valuations agree; quadratic field has finite relative degree 2 | Retain | Individual Checks |
| 5.2a topological generation | three Gauss/disc norm completions | closure of k(T)=K by construction for types 2,3,4; finite constants extension need not equal that closure | Retain | Individual Checks |
| 5.2a one-dimensionality | Gauss fields and finite K/k | T has positive distance 1 or r from algebraically closed k; finite K/k consists of algebraic elements and is excluded | Retain | Individual Checks |
| 5.2a E,F/type 2 | radius-1 Gauss over closed k | value quotient rational rank 0; residue trdeg 1; E+F=1 | Retain | Compute |
| 5.2a E,F/type 3 | radius r outside divisible hull | value quotient rank 1; residue trdeg 0; E+F=1 | Retain | Compute |
| 5.2a E,F/type 4 | empty nested discs radii r_n↓r>0 | inf distance r; value quotient rank 0; residue trdeg 0; E+F=0 | Retain | Compute |
| 5.2a finite-extension type invariance | unramified constant extension of Gauss field | finite residue degree adds transcendence 0; value quotient finite adds rational rank 0 | Retain | None |
| 5.2a k-split equality | closed k, T; c∈k; disc T | two infima (1,1), (0,0), (r,r) respectively | Retain | Add separate API/Checks |
| 5.2a k-split failure | Q₃ unramified constant α, unit with residue not F₃ | inf distance to Q₃=1; to algebraic closure=0 | Retain negative control | Add Check |
| 5.2a stability definition | Q_p unramified quadratic | e f=1·2=2=degree; defect=1 | Retain | Separate API |
| 5.2a inseparable stable controls | F₂((t^(1/2))), F₃((t^(1/3))) | e f=2·1=2 and 3·1=3; defect=1 | Retain | Add Checks |
| 5.2a instability iff | C((t)), p=1, identity | unstable=false; immediate degree-1 extension=true; guarded right side=false | Repaired | Add p>1 |
| 5.2a stability via coset minimum | F₂((t)), a=0,b=t⁻¹,s=ρ⁻¹ | special coset minimum=ρ⁻¹ is attained; stable=true | Retain positive-char criterion | Separate p=1 case |
| 5.2a unramified generator | Gauss T; quadratic unramified constants | degrees 1,2; (e,f)=(1,1),(1,2), residue separable | Retain | Individual Checks |
| 5.2a moderately ramified generator | Q₃ radius-r field,z=T² | e=2,f=1,degree=2; 2 prime to 3; unramified=false,tame=true | Retain | Add discriminator |
| 5.2a generator failure | Q₂ radius-r field,z=T²; z=0 | e=2 divisible by p=2; tame=false; z=0 lies in k and K/k infinite | Retain negative controls | Add Checks |
| 5.2a additive S subgroup | char p, a=0, c₁,c₂; c=d=0 | (c₁+c₂)^p=c₁^p+c₂^p; 0 belongs; mixed terms vanish in char p | Retain | Separate API |
| 5.2a split coset | b=0,s>0 | 0 in coset; infimum 0<s; critical=false,special=false | Retain | Add Check |
| 5.2a special a=0 class | b=t⁻¹,s=ρ⁻¹, p=2,3 | valuation −1 cannot cancel a p-divisible valuation; minimum ρ⁻¹ attained | Retain | Recompute |
| 5.2a special a=1 class | F₂((t)),b=1,s=1 | integral c²−c has residue 0; nonintegral c gives negative even valuation; minimum 1 | Retain | Add Check |
| 5.2a critical nonspecial | a=t,b=t⁻¹,s=ρ⁻¹ | integral c leaves valuation −1; nonintegral c has p v(c)<−1; minimum ρ⁻¹; a≠0,1 | Retain | Add Check |
| 5.2a nonsplit noncritical | a=0,b=t⁻¹,s=1 | minimum ρ⁻¹>1; nonsplit=true,critical=false | Retain | Add Check |
| 5.2a deep ramification definition | closed mixed-char k; completion Q_p(p-roots) | pth roots exist in k°; alternatively Frobenius onto k°/p; equality k°=p k°+(k°)^p | Retain | Separate API |
| 5.2a deep ramification failure | completed maximal tame Q_p-extension | value group Z_(p); 1/ℓ occurs, 1/(pℓ) absent; no pth root modulo p of p^(1/ℓ) | Retain negative control | Add Check |
| 5.2a uniformization hypothesis first branch | closed k with types 2,3,4 | E,F=(0,1),(1,0),(0,0); first branch true in all three | Retain | Add Checks |
| 5.2a uniformization hypothesis second branch | type-4 disc field over closed k | type=4, distance equality r=r; tame closure equals k; value group divisible | Retain | Add Check |
| 5.2a hypothesis failure despite deepness | completion Q_p(p-roots) | residue F_p has degree-2 unramified extension; tame closedness=false | Retain negative control | Add Check |
| 5.2a residue/value consequences | closed k | residue algebraically closed; each nonzero value has nth root for every n≥1 | Retain | Retain exact branches |
| 5.2b uniformization and stability | closed k, radius-1/radius-r Gauss, adjoining T^(1/m), m prime to p | x=T gives degree 1 unramified; the test extension has (e,f,degree)=(1,m,m) in type 2 and (m,1,m) in type 3; e f=degree | Retain | No new Lean substitute |
| 5.2b neighbourhood clause | Gauss field,x=T,x′=T+c, norm c<1 | k(T+c)=k(T); closures equal; degree 1 on both sides | Retain | None |
| 5.2b residue-separating clause | radius-1 Gauss,x=T | residue field k̃(T̃); degree over k̃(T̃)=1, separable | Retain | None |
| 5.2b valued-field clause | trivial k, k(t) with t-adic valuation | smooth centre t=0; x=t gives k(t)/k(t) degree 1 unramified | Retain | None |
| 5.3 existence at arbitrary qcqs base | rank-two V,C=A¹_V | identity base and curve maps; degree 1 separable; V nonnoetherian | Retain full generality | Use integral alteration |
| 5.3 uniqueness/minimality | already semistable A¹_V | stable modification=id; factorization through id unique | Retain | None |
| 5.3 nonfinite control | P¹_K→Spec K | proper and dominant=true; finite on nonempty open=false; rejected | Retain | Add Check |
| 5.4 equivariance | id semistable curve, trivial group; Galois base | identity lift unique; product action lifts group multiplication by uniqueness | Retain | Use same integral carrier |
| 5.5 semistable logarithmic chart | uv=π | N→N²,1↦(1,1); coker=Z; log smooth=true, underlying special fibre not smooth | Retain | None |
| 5.5 trivial-base negative control | nodal curve over trivially logged field | node not smooth; marking alone has no smoothing parameter; hypothesis of smoothness off W fails | Retain | None |
| 5.5a relative constants/factorization | P¹_A/Q,A=Q(∛2) | F_c=A, [A:Q]=3; new generic curve=P¹_A; source degree=1 | Retain | Own target |
| 5.5a geometric-integrality condition | A(T)/Q vs A(T)/A | first contains constant extension A/Q; second is rational and all constant extensions integral | Retain | Add condition |
| 5.5a degree preservation | A(T) with E/A finite | A(T)⊗_A E=E(T); [E(T):A(T)]=[E:A] | Retain | Prove by tensor dimension |
| 5.5a cubic base-change refutation | A⊗_Q A | factors A,B; [A:A]=1 and [B:A]=2, versus old degree 3 | Refutes unrestricted inference | Add reduction |
| 5.5a no component choice repair | S₅ with S₄ and S₂×S₃ | [S₅:S₄]=5; block orbits 2,3; neither degree supported on {5} | Retain negative control | Add Check |
| 5.5a inseparable preservation/control | F=F₂(u),L=F(T),E=F(√u) | tensor=E(T), degree 2; replacing L by E(T) over F creates square-zero tensor difference | Retain | Keep smooth generic hypothesis |
| 5.5a identity/projectivity | E=F; projective X/Y and finite Y_c/Y | tensor=L degree 1; graph to X×Y_c closed, projection projective | Retain | Add API |
| 5.6 relative-curve resolution | smooth curve over field with étale Z | a=b=id; W empty; Z′=Z; degrees 1 | Retain | None |
| 5.6 generic-integrality invariant | P¹_F and E/F finite | generic fibre after proper transform=P¹_E, integral; curve modification on that fibre=id | Retain | Carry through route |
| 5.6 characteristic-of-source variant | Spec Z_(2)⊔Spec Q, source A¹_Q | char base={2}, char source=∅; identity solution degree 1 on both components | Retain | None |
| 5.6 proper variant | proper universally resolvable base | a proper; b projective modification degree 1; composite c proper | Retain | Degree argument uses §5.5a |
| 6.1 diagram/boundary identity | id regular S,Z snc | a=b=id; Z′=Z∪Z=Z; f b=a f′=id | Retain | None |
| 6.1 graph reduction at d=1 | one-dimensional generic fibre | choose 0 functions; Y=S; relative trdeg=1; graph modification=id | Retain | Own general relative argument |
| 6.1 geometric degree induction | two successive finite base fields E/F and D/E | curve degrees [E:F], [D:E]; product=[D:F]; saturation degree 1 generically | Retain | Require geometric integrality twice |
| 6.1 zero relative dimension boundary | finite separable cover | trdeg=0; curve-fibration step not invoked; d−1 not interpreted as natural subtraction | Retain | None |
| 6.2 inheritance with Cartier support | Bl₀ A² | preimage origin=exceptional P¹, codimension 1; identity before blow-up gives codimension 2 and fails snc | Retain | None |
| 6.3 perfect-field separable variant | F₂ and F₃, relative curve | constants extensions separable; source modification degree 1; no inseparable smoothening needed | Retain | Carry constants invariant |
| 6.4 char(X) desingularization | dual numbers over Q; F₃-variety | reduction degree 1, support empty; allowed degrees 3^n all odd | Retain | None |
| 6.4 dimension/projectivity controls | X over Z; X over Z_p[[u,v]] | base dimensions 1 and 3; first projective clause, second only proper clause | Retain | None |
| 6.5 morphism theorem | id regular S; field base | boundary Z∪Z=Z; relative snc follows with actual snc hypothesis | Retain | Audit §5.5a use inside §6.1 |
| 6.6 source-relative degree | identity construction F=E=L | compositum F E=L; [L:F E]=1; allowed for every prime set | Retain target | Make field condition explicit |
| 6.6 base-change negative control | degree-3 A/Q, tensor with A | component degrees 1,2 rather than both {3}-numbers | Refutes former route shortcut | Remove unrestricted preservation inference |
| 6.7 field prime-to-ℓ theorem | F₃,ℓ=2; Q with P empty | degrees odd; in Q-case degree 1; char-base condition 2≠3 and 2≠0 | Retain | Audit constants use |
| 6.8 trait theorem | uv=π,ℓ invertible | horizontal boundary empty; total vertical boundary two branches; gcd(p,1,1)=1 | Retain | Audit constants use |
| 6.9 variety alteration | already smooth quasi-projective integral X, snc Y | identity proper surjective degree 1; π⁻¹(Y)_red=Y | Retain | None |
| 6.10 odd-degree model | regular projective flat model over DVR,residue char 3 | id degree 1; quadratic ramified base degree 2 excluded; 1 mod 2 vs 0 mod 2 | Retain | Fix pp.8–9 |
| 6.11 equivariant de Jong | G=1,X=P¹,Z point | identity, projective compactification=P¹; invariant field unchanged, purely inseparable degree 1 | Retain | None |
| 6.11a Rumely existence | A¹_R and Spec Z[1/2] over Z | zero section works over degree 1; inverted-2 scheme misses fibre 2 and cannot have integral section | Retain | Repair boundary input |
| 6.11a (T) and conic control | x²+y²=−1 over Z and Z[i] | no real integral solution over Z; point (i,0) after degree-2 extension | Retain | None |
| 6.11a Pic⁰ subgroup | P¹_F₅,O(d) | tensor degrees d+e; inverse degree −d; degree-zero subgroup=0 | Retain | Own exact definition |
| 6.11a vertical torsion | E/F₅:y²=x³+x+1 | Δ=4; RHS 1,3,1,1,4; affine counts 2,0,2,2,2; total 9 | Retain | Add Check |
| 6.11a nonzero degree exclusion | O(1) on P¹_F₅ | degree(O(n))=n; no n>0 makes degree 0 | Retain | Add Check |
| 6.11a horizontal surface refutation | E×Spec O(E−O),generic section P | relative degree 0; [n] has degree n²>0 for n>0, so nP≠O; horizontal relative dimension 1 | Refutes old Picard claim | Exclude surfaces |
| 6.11a nilpotent units/exact sequence | I=(ε),I²=0 | (1+aε)(1+bε)=1+(a+b)ε; additive kernel, no lost nilpotent condition | Retain | Own route input |
| 6.11a thickened vertical torsion | E×Spec F₅[ε]/ε² | H¹(E,O)=F₅ killed by 5; reduced Pic⁰ order 9; exponent divides 45 | Retain | Add Check |
| 6.11a correct boundary application | Cartier thickening D₃=F∪V | horizontal components finite over B, vertical components curves; each required degree 0; some power trivial on D₃ | Retain | Apply to boundary only |
| 6.11b sections/projection | X=P^d_S,N=d,d≥1 | centre dimension −1 means empty centre; projection=id; one section meets each irreducible fibre | Retain | None |
| 6.12 arithmetic alteration | smooth projective X/S,Z empty | S₁=S,degree 1; generic smoothness true; each smooth special fibre is semistable with 0 boundary branches | Retain | None |
| Worked example: exact inverse boundary | origin⊂A² | point codim 2 fails; blow-up chart y=xv has exceptional x=0 codim 1 | Retain | None |
| Worked example: normalization of blow-up | uw=v²,ideal(u,w) | z=v/u integral with z²=s; normalized chart k[u,z], v=uz,w=uz² | Retain | None |
| Worked example: trace parity | degree 2m+1 vs degree 2 on Z/2 | multiplication=1 vs 0; odd degree unit, even degree nonunit | Retain | None |
| Coefficient application/general ℓ | d prime to ℓ on Z/ℓ^r | gcd(d,ℓ^r)=1; e.g. d=3,ℓ^r=4,3·3=1 mod 4; restriction split by d⁻¹ trace | Retain conditional trace premise | None |
| Zero ring and empty scheme | Spec zero ring vs field-based statements | Spec(0)=empty; no field structure on zero ring; field degrees not evaluated there | Retain | None |
| Nonreduced generic alteration | Spec Q→Spec Q[ε]/ε² | residue degree 1; source regular; morphism not generically isomorphism onto the nonreduced scheme | Retain | None |
| Lean full-headline obstruction | all native field/scheme examples above | native image exists; log-scheme, relative stable-modification and excellence signatures still absent | Retain missing-carrier inventory | Remove only false image absence |

Each newly written API assertion was tested in the corresponding group above; all new sign, degree and inequality witnesses are also prose Checks in the README. No Lean boundary-case theorem or API catalogue was added.
