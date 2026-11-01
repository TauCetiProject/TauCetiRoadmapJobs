# Repair report: AdicCoefficientsAndComparisonsPartII

## RT-AdicCoefficientsAndComparisonsPartII~1a/F01 (P2) — applied

PA.0.11: generic isomorphism to Y → generic isomorphism to Y_red, with residue degree 1 over Y. Added the square-zero plane Check: the reduction map has kernel (ε), whereas its reduced-base comparison is the identity. Audited PA.0.3, PA.0.9, PA.0.12 and PA.6.4; they already distinguish reduction from modification.

## RT-AdicCoefficientsAndComparisonsPartII~1a/F02 (P2) — applied

PA.6.5's field example: smooth over k → smooth over each altered field component k′. Perfect k still permits the unchanged base by (iii). Added inseparable-constant, perfect-field and axes-boundary Checks. The first has degree 1 over X but geometric fibre ring containing a nonzero p-nilpotent over k (temkin17 line 149; PA.4.8).

## RT-AdicCoefficientsAndComparisonsPartII~1a/F03 (P2) — applied

Blanket analytic non-statability → two headline theorems, analytic_uniformization and analytic_uniformization_residue, with four simple native definitions. The induced subfield norm fixes the isometric inclusion; completeness and nontriviality are explicit. Finite unramifiedness uses field finiteness and the actual integer-ring inclusion's étaleness (temkin10 lines 432–436, 460–467). Added API and three Checks per definition; no boundary Lean declarations.

## RT-AdicCoefficientsAndComparisonsPartII~1a/F04 (P2) — applied

PA.5.2: the fibre is a connected curve → the reduced geometric fibre is proper, components are treated separately, and dimension-zero components require no positivity test. Only curve components use the induced markings and attaching points (temkin10 lines 119–129). Added identity, normalization-node and degrees −2+3=1 versus −2+2=0 Checks.

## RT-AdicCoefficientsAndComparisonsPartII~1a/F05 (P1) — applied

Unspecified characteristic-zero resolution → ResolutionOfSingularitiesCharacteristicZero §§7.5–7.6, qeResolution and qeResolution_regularFunctorial. Added ownership, exact contract, PA.4.3 Needs and layer dependencies. The fan/log comparisons remain here; the geometric resolution is supplied. Evidence: ilo14 lines 4071–4099 and 4849–4854; supplier §§7.5–7.6 explicitly give reduced qe Q-schemes and regular functoriality.

## RT-AdicCoefficientsAndComparisonsPartII~1a/F06 (P1) — applied

Claimed pinned normality/function-field exports → explicit gap:normalization-finite-field-identification, owned by SchemeAndStackFoundations §0.20, in both exact contracts and the top-level gaps list. Retained the native relative normalization; cited normalizationDesc and normalization.hom_ext, and derived the normal-base identity affinely. Mathlib Normalization.lean:344–355 gives reducedness/integrality; §0.20 supplies finiteness, not the missing marked identification. Existing normalization Checks remain discriminating.

## RT-AdicCoefficientsAndComparisonsPartII~1a/F07 (P2) — applied

PA.4.1: invoke the boundary supplier for arbitrary closed Z → first require nowhere density, then construct its log structure. Added (Spec F₂, Spec F₂), where the predicate is false before any supplier invocation. Axes, empty boundary and cusp Checks retain respectively rank 2, rank 0 and non-fineness (temkin17 lines 126–135; ilo14 lines 3050–3075).

## RT-AdicCoefficientsAndComparisonsPartII~1a/F08 (P3) — applied

PA.4.5: undefined N → exponent(G), with μ_N the complex N-th roots of unity. Checks give C₃: N=3 and Z[1/3,ζ₃]; trivial group: N=1 and Z; C₂×C₂: N=2 rather than order 4, and Z[1/2]. This also pins the G=1 specializations in PA.4.7–PA.4.8 (ilo14 line 6155).

## RT-AdicCoefficientsAndComparisonsPartII~1a/F09 (P2) — applied

PA.0.12: a purported union of closed subsets → the full reduced inverse image D is closed and avoids all maximal points, hence is nowhere dense with dimension at most 2. Added the cone-times-line example: Z intersected with the regular locus is not closed, while D includes its exceptional specializations. The PA.0.11 generic-point argument agrees.

## RT-AdicCoefficientsAndComparisonsPartII~1a/F10 (P3) — applied

Corrected extraction anchors throughout PA.0.2, PA.0.4, PA.1.1, PA.1.3, PA.1.8 and PA.4.4: ilo14 lines 1158, 6782–6787, 7288 and 3705; temkin10 lines 679 and 742. Each replacement was read. The same repairs settle pass-b F01 and F03 below. No theorem statement changed for these locator repairs.

## RT-AdicCoefficientsAndComparisonsPartII~1a/F11 (P2) — applied

PA.6.11b: Grassmannian point with unframed quotient → an admissible full-rank matrix, specifying O^(N+1) → O^(d+1). The target is consequently P^d. Added determinant-class, identity-matrix and two-component Checks. The source route is dejong96 lines 1591–1603; the matrix parameter space repairs its unstated trivialization using the same Rumely theorem, without narrowing the base.

## RT-AdicCoefficientsAndComparisonsPartII~1b/F01 (P3) — applied

PA.4.4's VIII §1.2 anchor: ilo14 line 7194 → ilo14 line 3705. Lines 3705–3714 describe the sign action, blow-up and enlarged boundary; line 7194 instead starts the inertia-specializing extension. This is the VIII portion of pass-a F10.

## RT-AdicCoefficientsAndComparisonsPartII~1b/F02 (P3) — applied

All three temkin17 §1.2.7 references: line 117 → line 119 at the section references and line 126 at the cusp/boundary reference. Read lines 114–146: 117 belongs to Remark 1.2.6, 119 starts log smoothness, and 126–131 supplies the boundary construction and non-fine cusp example.

## RT-AdicCoefficientsAndComparisonsPartII~1b/F03 (P3) — applied

PA.1.1 and PA.1.8: temkin10 line 665 → line 679; PA.1.3: line 665 → line 742. Section 3.2 begins at 679, valuative points are defined at 742, and 665 belongs to the preceding limit argument. This is the Temkin portion of pass-a F10.

## RT-AdicCoefficientsAndComparisonsPartII~1b/F04 (P3) — applied

The log-blow-up universal-property sentence now explicitly operates through gap:log-blowup-universal-property. Its existing gap remains, rather than claiming a supplied theorem. Resolved the supplier's §0.10 again: its quotient/resolution targets are prose; replaced the obsolete veryTameQuotient/equivariantLogResolution name citations by those section targets in the README and the existing gap. Mathematics of that gap is unchanged.

## RT-AdicCoefficientsAndComparisonsPartII~1b/F05 (P3) — applied

PA.1.5 now states constructible continuity for every pointed qcqs morphism, by pullback to a tight model and qcqs constructible preimages. PA.1.7 invokes that exact target. Added the Z_(p) Check: the inverse image of the condition 1/p ∈ V is {Q}, clopen in the two-point patch topology (temkin17 lines 686–706, 717–720).

## RT-AdicCoefficientsAndComparisonsPartII~1b/F06 (P3) — applied differently

Strict-transform wording → contracted pullback of the tower (fs on fs schemes), including for strict maps (ilo14 lines 4004–4018, 4849–4891). The suggested assertion that strict pullback is already contracted is false: the strict torus open in the A₁ cone misses the vertex centre. Added this negative-control Check; its pulled-back step is empty and contracts to the identity.

## RT-AdicCoefficientsAndComparisonsPartII~1b/F07 (P3) — not actionable in this package: the consumer dependency and merge placement belong to MotivesAndAlgebraicCycles

Added the factual downstream interface to MotivesAndAlgebraicCycles §0.5c, pAlterationSupport. That section invokes the perfect-field theorem but also claims to construct this strengthening itself; it precedes this package in ORDER.txt. Repairing its ownership/dependency or deciding merge placement requires edits outside this package. No reverse supplier edge was introduced here; this unresolved external decision is for the maintainer.

## Validation and signature audit

Elaboration from the content checkout, using the required absolute-path invocation, exited 0. Output: exactly two warnings, “declaration uses `sorry`”, for analytic_uniformization and analytic_uniformization_residue. No TauCeti import is used, so no targeted object build was necessary. The final file has one import Mathlib, four definitions with real bodies, two admitted headline theorems, no instances, no stand-in data, no set_option and no padding theorems.

A separate scratch file containing all six `#check @name` commands elaborated once, exit 0. Compared every expanded signature with PA.5.2b: the two theorems retain NontriviallyNormedField K, IsUltrametricDist K, CompleteSpace K, IsAlgClosed k, CompleteSpace k, the explicit nontrivial-norm witness for k, and the finite-extension hypothesis. Definitions retain precisely NormedField K and, where needed, ultrametricity; they do not require completeness to be defined. The residue theorem retains the integral coordinate, transcendence and separability hypotheses. No binder correction was needed after that audit.

The required dependency check exited 0, with the exact output:

```text
depcheck: 163 roadmaps, 1155 edges, 0 problem(s)
```

There was no UPWARD, CYCLE or moved line. This does not settle the consumer-side issue in pass-b F07.

The supplied citation leads were resolved against their owners: Excellence.IsQuasiExcellentRing.isNagata and Formal.IsAlteration with IsGenericallyEtale are SchemeAndStackFoundations §§0.20 and 4.16; LogCrystalline.IsLogRegular.trivial_iff is CrystallineCohomology CR.5:log-algebra.4; the two VanishingCycles names have been replaced as explained above. LogicAndDefinabilityInNumberTheoryPartII §2.1 is a board design and an outgoing consumer, not an input. The module-system import warning was repaired by adding `module` before `import Mathlib` in packages/AdicCoefficientsAndComparisonsPartII/Suggested.lean. Repeated pinned elaboration exited 0 with only the two expected `sorry` warnings; the import warning is absent. The repeated dependency check exited 0 with the same output above. No mathematical declaration changed.

The actual library pins read and elaborated are Mathlib f6090c7095e1e56b3464c1daba5f24631f1290d2 and Tau Ceti 358314d4ab97483df4fc4cb8adcc02e74a8d9f5a, as in the supplied content checkout's lake-manifest.json and both package HEADs. They differ from the older hashes quoted by the reviews. Native declarations used in the repair were inspected at these actual pins: NormedValued.lean:47, Topology/Algebra/Field.lean:60, Normalization.lean:215, 344–355, 372, 436 and 597–599; ValuationSubring.lean:854; Etale/Basic.lean:205. The remaining geometric headline families still require the missing log schemes, projective/alteration predicates, quasi-excellence, or pointed locally ringed limits; object searches at these pins found no replacement for those carriers.

All cited works remain under their existing manifest keys. Updated the ilo14 locator to include VIII §2.3 and the temkin10 locator to include Lemma 2.1.6 and Lemmas 6.3.2–6.3.3. All texts used are the supplied legal cached extractions; no new text or missing-reference request was needed. Manifest TOML and plan JSON parse. The plan comparison discarding the top-level gaps list is identical before and after. Only authorized package files and this report were edited; no commit or external write was made.

## Ownership and interfaces

Read the main-branch shapes of SchemeAndStackFoundations, StableReduction and EtaleCohomologyFoundations before editing. Re-resolved the cross-roadmap contracts by object and section against main, board designs, and the roadmap service's indexed heads: SchemeAndStackFoundations §§0.9, 0.16–0.22, 1.17, 2.4, 2.6, 2.11, 3.3–3.6 and 4.11–4.20; LocalFieldsRamificationPartII GF.0–GF.6; CrystallineCohomology CR.5:log-algebra.1–4; LefschetzPencilsAndVanishingCycles §0.10; ClassicalAdicEtaleCohomology §2.4; StableReduction Layers 2–4; EtaleCohomologyFoundations §F.0.A1; and AdicCoefficientsAndComparisons L5. The newly explicit characteristic-zero supplier is earlier in the order and owns exactly the required geometric resolution.

Object searches covered main and open-head roadmaps with the roadmap service, board packages, and the supplied sibling checkouts. No sibling supplies the full analytic uniformization statement or the general fan/log comparison here. Normal schemes in SchemeAndStackFoundations §0.30 give the normality carrier, not normality and the marked function field of this particular relative normalization, so the new gap is still required. The narrower normalization of P¹ over a Dedekind base in RelativeJacobiansAndIntegralCurveModels §0.3 does not replace it. Rumely resultant/capacity applications in ArithmeticDynamics are different objects from the general integral-point theorem. No new Lean name duplicates another roadmap's fully qualified name.

No existing name of this roadmap was removed or renamed: it previously had no declarations. Its six new names occur in the README. The geometric constructions stay on the supplier carriers; this package does not build a second normalization or geometric resolution theory. The exact-contract gaps agree with the plan's six gap slugs. Their implementation remains the named suppliers' work. The readonly design narrative and non-gap plan contents were outside the authorized repair scope; the README and Suggested.lean are the repaired deliverables.

## Computed adversarial mathematics pass

The following rows record actual substitutions and values, rather than treating elaboration as a truth test. Each PA target and each separate analytic definition has a row; rows with several formulas state their shared computation. Changes are confined to the findings and their occurrences. Field extensions have positive degree; the empty scheme and zero ring enter only where the scheme definitions admit them. Nontrivially normed fields exclude a zero ring and a trivial norm.

| Statement | Instances tried | Values computed on both sides | Result | Change |
| --- | --- | --- | --- | --- |
| Conventions: degree and prime support | identity; Frobenius in characteristics 2,3; empty scheme | degrees 1,2,3; supports ∅,{2},{3}; empty set of maximal degrees; 0 is not a positive degree | agrees | no change |
| Conventions: boundary and unit coordinates | xy=π; π=ut^p | ranks (base,source)=(1,2); cokernels Z and Z²/⟨(1,p)⟩=Z; no torsion | agrees | no change |
| Restriction–trace application | degree 3 or 2 on Z/2 and Z/4 | 3 is invertible modulo 2,4; 2 is zero modulo 2 and a nonunit modulo 4 | injectivity criterion agrees | no change |
| Relative normalization and marked field | Z in Q(i); cusp in k(t); F_p[t] in F_p(t^(1/p)) | closures Z[i], k[t], F_p[t^(1/p)]; fraction fields Q(i),k(t),F_p(t^(1/p)); degrees 2,1,p | marked fields required | gap and corrected pin claim |
| Normal-base identity | Z in Q; normal field k in k | integral closures Z,k; both maps identity, degree 1 | agrees affinely | derivation explicit |
| Scheme-theoretic image | Spec k→Spec k[ε]/ε² | kernel (ε), quotient k; topological support has 1 point in both cases | scheme structure matters | no change |
| Finite-type factorization gap | identity; already finitely presented X→S | X₀=X; restriction over U is identity | expected boundary | no change |
| Maximal separable P-extension gap | P=∅; separably closed imperfect F in char 2 | finite separable degrees=1; purely inseparable root degree=2 | distinguishes separable/full closedness | no change |
| Closed-subset log-structure gap | regular point, empty boundary; axes; cusp | characteristics 0, N²; cusp has infinitely many order-2 indecomposables over k^s | carrier need not be fine | no change to gap |
| Very-tame local quotient gap | trivial group; axes sign action; Z₂[i] | inertia orders 1,2,2; last order becomes 0 in residue field; axes quotient uw=v² with index 2 chart | hypotheses discriminate | section names corrected |
| Log blow-up universal-property gap | unit ideal; invertible ideal; empty ideal | identity,identity,empty Proj; generic degrees 1,1,none | empty case is not a modification | attribution explicit |
| Characteristic-zero resolution supplier | cone over Q; torus; empty scheme | vertex local dimension 2 versus embedding dimension 3; torus regular dimension 2; empty resolving tower on regular/empty inputs | supplied theorem fits | exact contract added |
| PA.0.1 residue characteristics | ∅; Q; Z_(2); Z[1/6]; F₃[t] | ∅,∅,{2},{p≥5},{3}; in zero global ring every integer is a unit; in Z_(2), 2 nonunit and 3 unit | both directions of unit criterion agree | no change |
| PA.0.2 maximal domination | G_m→A¹; point→0; A¹⊔point→A¹; empty source | generic→generic; maximal→closed; extra maximal→closed; no maximal source points | true,false,false,true | locator corrected |
| PA.0.3 alterations | cusp normalization; Frobenius; P¹→point; reduction | finite generic degrees 1,p; P¹ generic fibre dimension 1; reduction residue degree 1 but nilpotent kernel nonzero | discriminates generic finiteness/reduction | no change |
| PA.0.4 P-degrees and separability | Z[i]/Z; t↦t² over Q; Frobenius | degrees 2,2,p; supports {2},{2},{p}; char(A¹_Q)=∅; Frobenius inseparable in p=2,3 | prime support differs from separability | locator corrected |
| PA.0.5 pseudo-projectivity | identity; doubled plane; blow-up at one origin | identity factorization; 2 local charts; 2 distinct DVR extensions with same generic map after blow-up | identity and doubled plane admitted, blow-up excluded | no change |
| PA.0.6 flattening | identity; Bl₀A²→A² after its own blow-up | strict transforms identity; generic fibre degrees 1; special exceptional dimension drops from 1 to 0 in strict transform | consistent | no change |
| PA.0.7 non-separated Chow | separated identity; doubled-origin plane | identity modification degree 1; doubled-plane map is locally an open immersion on 2 charts | local isomorphism need not be globally injective | no change |
| PA.0.8 snc supports | axes; empty; origin in A²; nodal cubic; 3 concurrent lines | 2 regular branches, intersection codim 2; 0 branches; origin codim 2; singular component; 3 branches exceed dimension 2 | true,true,false,false,false | no change |
| PA.0.9 universal resolvability | field; empty base; non-Japanese DVR | finite scheme reduction has degree 1 and empty boundary; no nonempty alteration of ∅; normalization A′/A is nonfinite | field/empty positive, DVR negative | no change |
| PA.0.10 dimension ≤1 | excellent Dedekind domain; cusp curve | finite normalization regular; cusp→line degree 1; boundary closed points codimension 1 | agrees | no change |
| PA.0.11 surface resolution | square-zero plane; regular surface point; A₁ cone; plane⊔axis | reduction kernel (ε), degree 1; Bl₀ exceptional P¹; cone charts k[u,v/u], k[w,v/w]; mixed-dimensional components give Bl₀A²⊔A¹ | nonreduced generic isomorphism fails over Y, holds over Y_red | corrected reduction comparison |
| PA.0.12 threefold resolution | affine complete local threefold; cone×A¹ with Z=V(v,w); doubled zero section | affine cover size 1 permits projectivity; full D has dim≤2; Z∩Reg omits V(u,v,w), hence is not closed; doubled base has 2 origins and is not separated | generic-point argument replaces false closedness | proof and Check repaired |
| PA.1.1 pointed modifications | closed F_p point of Z; G_m→A¹; blow-up of A² | closed point proper and tight; open immersion not proper; blow-up generic degree 1 | true,false,true | locator corrected |
| PA.1.2 pointed limit | Spec K; DVR; affine line; rank-two valuation on k(x,y) | stalk K; stalks R,K; affine line excludes infinity since t∉O_∞; rank-two value group Z² lex | retains all ranks | no change |
| PA.1.3 valuative points | Z_(p); F_p; doubled-origin line | 2 valuations Q,Z_(p); 1 valuation F_p; k[t]_(t) has 2 centres | ring alone insufficient without separatedness | locator corrected |
| PA.1.4 compactness and stalks | non-dominant F_p point of Z; DVR | RZ is 1 point with stalk F_p; DVR limit has stalks R,K | non-dominant points retained | no change |
| PA.1.5 functoriality and patch continuity | ramified/split primes in Q(i); Z_(p)→Z | 2=−i(1+i)²; 5=(2+i)(2−i); both split valuations restrict to Z_(5); preimage of 1/p-integrality is {Q} | restriction and patch topology agree | continuity API added |
| PA.1.6 open restriction | identity; Q(i)/Q | identity preimages unchanged; valuation fibres over 2 and 5 have sizes 1 and 2; finite-type condition on model maps retained | consistent | no change |
| PA.1.7 absolute valuation loci | Q; F_q; Z[1/p]; Z_(p) | Val_Q={Q}∪{Z_(r)}; Val_Fq={F_q}; invert p removes Z_(p); on {Q,Z_(p)}, its integrality preimage is {Q} | clopen in patch topology | general continuity cited |
| PA.1.8 affine model comparison | A=K; A=Z,K=Q | 1 valuation/model point; centre space Spec Z with generic point Q and closed points Z_(p) | model-limit values agree | locator corrected |
| PA.2.1 tame/unramified loci | Q(i)/Q over 2,5; Artin–Schreier u^p−u=t⁻¹ | e=2 wild; e=1 unramified; v(u)=−1/p and e=p for p=2,3 | residue characteristic controls wildness | no change |
| PA.2.2 S/P-tameness | P=∅; Q(i)/Q; inseparable char-2 extension | no tested primes; wild set {2}; ∅-tame but no map Spec F₂(t^(1/2))→Spec Q | vacuity and characteristic proviso correct | no change |
| PA.2.3 tower/compositum loci | Q⊂Q(i)⊂Q(i,√3); identity tower | over 3 e=2 prime to 3, tame; over 2 e divisible by 2, wild; identity local degree 1 | intersection formula agrees | no change |
| PA.2.4 open loci | Q(i)/Q; identity | wild locus singleton over 2; its complement open; identity wild locus ∅ and tame locus all | openness agrees | no change |
| PA.2.5 field distillation | S already tame; Q(i)/Q with all valuations | P=∅,K′=K; P={2},K′=Q(i), L′/K′ degree 1 | both boundary outputs computed | no change |
| PA.2.6 separable distillation | characteristic zero; separably closed imperfect char-2 field | perfection changes no finite separable degree; adjoining an inseparable square root has degree 2 | separable and unrestricted outputs distinct | no change |
| PA.3.1 inertia/actions | sign action; conjugation at 2,5,3; S₃ free on 6 points; swapped βN copies | inertia 2 at origin; (D,I)=(2,2),(1,1),(2,1); free inertia 1 despite group order 6; all specializations identity but fixed open N not closed | noetherian proviso essential | no change |
| PA.3.2 Galois alterations | Frobenius; cubic Q(∛2); Z[1/2,i] | radicial degree p, group 1; cubic Aut=1 and extension not normal; removed wild fibre leaves inertia 1 or prime-to-residue order | geometric automorphisms required | no change |
| PA.3.3 wild primes bound | T³−T−2; Q(i); t↦t² over Q | cubic discriminant −104, mod 2=T(T+1)², local degrees 1,2; 2≤3 but 2∤3; Q(i) wild {2}; Q-variety wild ∅ | bound is inequality, not divisibility | no change |
| PA.3.4 tame cover after modification | invertible group degree; identity | degree n unit on X gives inertia orders dividing n, all units; identity inertia order 1 | no modification needed in examples | no change |
| PA.3.5 Galois closure | Q(∛2), exclude 2 and 3; identity | discriminant −108; no ramification at other primes; closure degree 6, same allowed residue primes | both directions agree on tested locus | no change |
| PA.3.6 alteration distillation | Q(i)/Q; tame identity alteration | K′=Q(i), final tame degree 1 and base degree 2; P=∅, base degree 1 | tower degrees correct | normalization contract explicit |
| PA.3.7 separable alteration distillation | Q(i)/Q; identity in char 3 | degrees 2 and 1 are separable; no radicial extension inserted | separable variant retains prime support | no change |
| PA.4.1 log pair | axes; empty boundary; whole F₂ point; cusp; A₁ cone | ranks 2,0; nowhere density false; cusp infinitely many indecomposables; cone 2=0+2 despite embedding dimension 3 | supplier domain is respected | nowhere-density guard |
| PA.4.2 monoidal blow-ups | axes ideal (x,y); unit; empty; empty on one of 2 components; A₁ ideal (u,w) | Bl₀; identity; empty Proj; 1 point survives; v²=u²s gains integral z=v/u with z²=s | normalization and stalk nonemptiness distinguish cases | no change |
| PA.4.3 functorial resolution | strict point→A¹; axes projection; square map in char 3; strict torus→cone | characteristic maps 0→0; N→N² first factor; N→N times 2 gives Z/2; vertex centre pulls back empty | strict pullback still needs contraction | supplier and pullback wording |
| PA.4.4 Gabber modification | scalar sign action with trivial log | origin inertia 2 acts nontrivially on 2-dimensional stratum; after blow-up exceptional stratum fixed, boundary rank 1 | tame→very tame; map itself not log smooth | correct VIII locator |
| PA.4.5 preparation | C₃; trivial group; C₂×C₂; nodal cubic/axes | N=3,1,2; coefficient rings Z[1/3,ζ₃],Z,Z[1/2]; nodal component singular, axes each regular | exponent and strictness distinguished | N defined |
| PA.4.6 relative modification | trivial group on smooth axes pair; sign action with axes | identity degree 1; quotient cone with rank 2 closed stratum and inertia order 2 | relative log-smooth quotient test agrees | no change |
| PA.4.7 intermediate boundary | A² with axes over point; identity boundary | deleting y gives chart 0→N and underlying smooth projection; retaining axes gives 0→N²; both torsion cokernel 0 | component deletion agrees | no change |
| PA.4.8 field/trait local forms | xy=π; π=ut^p; G=1 | total boundary V(xy), horizontal ∅; vector (1,p) primitive and cokernel Z; N=1 so Λ=Z | includes p-divisible branch exponent when unit exponent is 1 | coefficient convention propagated |
| PA.5.1 multipointed stability | A¹; uv=π; cusp; blow-up smooth point; elliptic curve plus rational tail | identity contracted components=0; node 2 branches; cusp double tangent; exceptional degree −2+1=−1; genus remains 1 with tail degree −1 | relative stability differs from pointed stability | no change |
| PA.5.2 projectivity | identity A¹; normalization of axes; 3- or 2-point rational component | fibre dimension 0; 2 point fibres dimension 0; dualizing degrees 1 and 0 | only curve components need positivity | dimension/connectedness cases added |
| PA.5.2a analytic field/type | Q_p; noncomplete Q; Gauss radii; empty-intersection discs; finite K/k | complete versus incomplete; (E,F)=(0,1),(1,0),(0,0); type-4 distance infimum r>0; finite field extension lies in algebraic closure | dimension definition excludes finite constants | no change |
| PA.5.2a splitness | algebraically closed k; unramified quadratic α/Q₃ | Gauss distances 1=1; constants 0=0; α distances 1 versus 0 | unramified constants give a non-example | no change |
| PA.5.2a stability | Q_p unramified quadratic; F₂((t)) and F₃((t)) root extensions; C((t)) | (e,f,n)=(1,2,2),(2,1,2),(3,1,3); defects 1; residue exponent 1 makes p>1 false | inseparability not confused with defect | no change |
| PA.5.2a generator types | Gauss T; Gauss with quadratic constants; T² over Q₃/Q₂ | (e,f,n)=(1,1,1),(1,2,2),(2,1,2); last tame over Q₃, wild over Q₂ | unramified/tame predicates differ | analytic specialization named precisely |
| PA.5.2a cosets | b=0; t⁻¹ with a=0,s=ρ⁻¹; F₂ a=b=s=1; a=t; s=1 | infima 0,ρ⁻¹,1,ρ⁻¹,ρ⁻¹; v(c^p)∈pZ cannot cancel −1; a=t case critical but not special; final infimum>s | p=2,3 and split/critical/special distinguished | no change |
| PA.5.2a uniformization hypothesis | algebraically closed Gauss types 2,3,4; deeply ramified cyclotomic-root field; maximal tame completion | all types admitted in first branch; residue F_p permits degree-2 unramified constants in second negative example; Z_(p) lacks 1/(pℓ) | deep ramification and tame closedness separate | no change |
| completedRationalSubfield | 0,1∈complete k; Gauss T; radius-r T² | H(0)=H(1)=k; H(T)=K with degree 1; H(T²) value-group index and degree 2 | native closure matches intended field | real definition added |
| analyticIntegerInclusion | H=K; unramified quadratic Q₃; F₂((t²))⊆F₂((t)) | 1↦1; residue degree 2; t²↦t² with ramification index 2 | actual inclusion excludes zero/unrelated map | real definition added |
| finiteUnramifiedOverCompleted | constant field; unramified quadratic Gauss; ramified T²; x=0 in Gauss | degrees 1,2,2,infinite; étale true,true,false; last finite-dimensionality false | both conjuncts needed | real predicate added |
| residueConstants | K=k; Gauss field; type-3 field | constants=K̃; constants=k̃ properly inside k̃(T̃); constants=K̃ again | transcendental residue exists only in middle case | real definition added |
| PA.5.2b(i) analytic generator existence | types 2,3,4 over algebraically closed k | H(T)=K, degree 1; type-4 infimum r>0 without a minimizing constant | all three types admitted | non-statability limited to remaining full statement |
| PA.5.2b(ii), analytic_uniformization | K=k; Gauss T; x′=0 in Gauss | choose x=0,ε=1 in constants, all degrees 1; for ‖T−x′‖<1 degrees 1; ‖T−0‖=1 and [K:k] infinite | strict perturbation ball excludes bad coordinate | headline added |
| PA.5.2b(ii), analytic_uniformization_residue | Gauss T; type 3; K=k | residue T transcendental, separating degree 1; other two have residue field equal to constants and no transcendental residue | full coordinate clause, with redundant inequality omitted | headline added |
| PA.5.2b(iii) valued uniformization | trivially valued k(t); t-adic k(t) | finite separable degree 1 for x=t; second local ring k[t]_(t), uniformizer t of value 1 | both centre cases agree | no change |
| PA.5.3 stable modification | rank-two base valuation; DVR; P¹→point generic fibre | base value group Z² lex, identity alteration degree 1; DVR degree 1; P¹ generic dimension 1 is not a finite alteration | no noetherian restriction on integral carrier | no change |
| PA.5.4 equivariance | identity automorphism; composition g,h | unique lifts of id and gh are id and lift(g)lift(h), respectively; both comparisons restrict to same generic map | uniqueness supplies cocycle | no change |
| PA.5.5 curve log smoothness | uv=π; nodal curve over trivially logged point | N→N², 1↦(1,1), cokernel Z; node over trivial log has no boundary parameter and is not smooth | base boundary is essential | no change |
| PA.5.5a constants and degree | A=Q(∛2); S₅ fields; F₂(u) root extension; identity | A⊗A=A×A(ω), degrees 1,2; other tensor degrees 2,3; F(T)⊗E=E(T) degree 2; identity degree 1 | geometric integrality needed; inseparable E allowed | no change |
| PA.5.6 relative curves | unused char-2 component plus Q component; smooth marked curve over field | char(S)={2},char(X)=∅,P=∅; identity degree 1 on active curve; smooth field case log chart 0→N at a marking | source-characteristic variant retained | no change |
| PA.6.1 morphism desingularization | Q-base; identity regular pair; origin in A² | prime support ∅ forces degree 1; identity boundaries equal Z; origin codimension 2 until blow-up gives exceptional codimension 1 | enlarged boundary alone insufficient | no change |
| PA.6.2 inheritance | regular local surface with Z closed point | identity inverse image dim 0, codim 2; after blow-up inverse image P¹, codim 1 | Cartier-support step necessary | no change |
| PA.6.3 perfect-field separability | F₂,F₃; Q | characteristic supports {2},{3},∅; identity separable degree 1 and a=id; general allowed degrees p^n | perfect-field base unchanged | no change |
| PA.6.4 absolute char-alteration | dual numbers over Q; finite type over Z; Z_p[[u,v]] base | reduction degree 1; base dimensions 1 and 3; source dimension unbounded in first case | projective/proper distinction retained | nonreduced wording consistent |
| PA.6.5 morphism char-alteration | inseparable constant F_p(t^(1/p)); perfect A¹; Q axes | relative degree 1, base extension p; geometric nilpotent has pth power 0; identities degrees 1 over perfect/Q bases | smooth over altered field, not original imperfect field | example and Checks repaired |
| PA.6.6 compositum degree | identity; source field equals FE | [L:FE]=1 and [L:F]=[E:F] may exceed 1 | source-relative degree differs from full source degree | no change |
| PA.6.7 prime-to-ℓ field theorem | k=F₃,ℓ=2; characteristic zero | permitted degrees 3^n odd; characteristic-zero refinement degrees 1 with unchanged k | correct prime support | no change |
| PA.6.8 trait theorem | xy=p over Z_p, ℓ≠p | Σ={closed point}; branch exponents 1,1; gcd(p,1,1)=1; horizontal boundary empty | total/horizontal boundaries distinct | no change |
| PA.6.9 variety form | smooth X with empty Y; closed point boundary on curve | identity degree 1; boundary point codim 1; trace scalar 1 | connected component still dominates integral X | no change |
| PA.6.10 odd model theorem | regular model; ramified quadratic base change | identity degree 1 odd; quadratic degree 2 even and scalar 0 modulo 2 | no separability conclusion inserted | no change |
| PA.6.11 equivariant alteration | G=1; S₃ on P¹_C generated by z↦ζ₃z and z↦1/z | choose identity alteration and G₁=G; group orders 1 and 6; invariant-field extension degree 1 in both; invariant boundary {0,∞} has 2 disjoint points | identity is a Galois alteration and boundary is G-strict | no change |
| PA.6.11a Rumely | A¹_R; Z[1/2]→Z; x²+y²=−1 | zero section over R; at 2 no fibre and 2 cannot become unit in integral R′; over Z[i] point (i,0) | surjectivity required | no change |
| PA.6.11a boundary Picard torsion | E/F₅; P¹; relative surface; square-zero vertical E | discriminant 4; point counts 2+0+2+2+2+1=9; Pic⁰(P¹)=0, deg O(1)=1; generic section infinite order; nilpotent kernel exponent 5 and reduced exponent divides 9, total divides 45 | degree and relative-dimension restrictions discriminate | no change |
| PA.6.11b sections/projection | R=Z[√−5],I; N=d; 2-component fibre | det(R⊕I)=[I]≠0 in C₂, det R²=0; identity matrix kernel 0 and degree 1; bad-locus image dimension≤d−1<d | framed quotient fixes target; finite map has nonempty étale target open | matrix parameter and Checks |
| PA.6.12 arithmetic alteration | smooth projective S-model with Z=∅; xy=π semistable chart | identity degrees 1 and completed equation xy=π; boundary exponents 1,1 | semistable/identity examples agree | no change |
| Worked blow-up example | A²,origin then blow-up | codimension 2→1; chart y=xv gives inverse support x=0 | exact-boundary argument agrees with PA.6.1–6.2 | no change |
| Worked A₁ normalization example | (u,w) blow-up | chart v²=u²s; integral z=v/u satisfies z²=s; normalized chart k[u,z] | ordinary and saturated maps differ | no change |
| Worked restriction–trace example | degree 2m+1 and 2 over residue characteristic 3 | scalars 1 and 0 modulo 2 | odd-degree cohomological test agrees | no change |

The table's examples test signs, map directions, nilpotents, degree support, strictness and defect; they do not substitute for the general proofs being planned. No new mathematical claim is supported solely by its admitted Lean declaration.
