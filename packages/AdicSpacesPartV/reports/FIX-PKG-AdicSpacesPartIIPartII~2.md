# Repair findings and verification

## F01 (P1) — applied

The formal-localization gap names AdicSpacesPartII R1.7 → AdicSpacesPartIII R2.4–R2.5, in both README and plan. It now quantifies over an arbitrary affinoid open, with an explicit comparison of spectra. The separate supplier subsection and §§4.1, 4.3, 4.6 Needs lines name that owner. Added disc, nilpotent and non-quasi-compact Checks; corrected “above” to “below”.

## F02 (P2) — applied

Relative Proj §0.15 → §0.3; scheme blow-ups → StableReduction Layer 4, retaining SchemeAndStackFoundations §4.11 for modifications. Completion citations R1.3 → R1.5 throughout §§0.2–0.3, 0.5, 1.1–1.2, 2.1, 2.3, 5.3. Removed R1.8 from differential/Jacobian citations throughout §§0.5, 2.2, 2.5, 6.2–6.4. Added R1.6 to relative-properness dependencies in §§5.1 and 6.4.

## F03 (P2) — applied differently

Claims that DiamondsAndVStacks imports these constructions → a short potential-consumer note distinguishing its own D6.9 affinoid analytification. Scope explicitly assigns global functorial rigid resolution here. Removed the diamond Checks. Moved the double-point Check’s geometric proper-surjection assertion into §5.4; the diamond equality remains outside this package’s targets, consistently with Scope.

## F04 (P2) — applied

Compound quotient, Cartier and orbit-map gap → smoothness and surjectivity of the represented quotient morphism alone, in README and plan. ReductiveGroups Layer 3 defines the fppf quotient; its Cartier input is independently identified there. The orbit morphism remains §6.4’s target and is derived after faithfully flat extension, without assuming a rational lift.

## F05 (P2) — applied

Unqualified assertion about the affine Grassmannian → the G = G_a assertion with HK2 line 1458, Example 5.0.5, p. 32. Added the contrasting G_m lattices tⁿB_dR⁺, indexed by ℤ, as a README Check. The second erroneous occurrence disappears with F03’s downstream block; no analogous unrestricted assertion remains.

## F06 (P3) — applied differently

Normalization/flatness citations presented as a regularity theorem → an explicitly owned excellence-and-descent proof. The smooth-map route uses completed formal smoothness and localization, without a separable-residue-field assumption or coefficient-field section. Added the inseparable classical point Check. Corrected Lemma 1.1.5 to CONRAD99 line 274. André’s paper is recorded by its page locator as uncertified, not represented as read.

## F07 (P3) — applied

Proper-image citation → HK2 line 722, proof of Lemma 2.2.3; Abhyankar → POINEAU13 line 182, Notations, p. 271; connected components → CONRAD99 line 528; normalization stalks → CONRAD99 line 435. Rigid blow-ups now cite the legally fetched CONRAD06 line 1937, Definition 4.1.1 and following properties, pp. 1096–1097. TEMKIN12 remains a resolution-use citation only.

## F08 (P3) — applied

Added pinned evaluation injectivity, restricted Gauss-norm multiplicativity, the unit-weight Gauss equivalence, and Mathlib’s manifold submersion/immersion predicates to supplier contracts and relevant Needs lines. §3.3 consumes injectivity and proves the topology comparison. §3.4 consumes the multiplicative norm. §6.1 retains the rank-to-normal-form theorem: the native predicates define normal forms but do not supply that criterion.

## F09 (P3) — applied

Unconditional nonclosedness for positive-dimensional D(L) → nonclosedness when the residue field is infinite. The Check contrasts the closed subset ℤ_p in the ℚ_p disc, explains compactness-based rational separation, and computes separating neighbourhoods at η and T = √p. The computations include p = 2 and 3; §3.4’s finite-residue negative control agrees.

## F10 (P3) — applied

An unowned comparison atlas on X(F) → the atlas transported through X(F) ≅ (X^an)(F). Added potential consumers ReductiveGroupsPartII RG2.0.2 and AbelianSchemesAndArithmeticModuliPartII B2.10; named LieGroupoidsPoisson G0.1 as owner of real smooth constant rank. These are downstream uses, with no new supplier edge or imported prototype from either later roadmap.

## F11 (P3) — applied

“Finite-field point classes” → “finite-extension point classes” in Scope. F03’s replacement consumer note uses “finite-extension”. Removed the diamond-interpretation sentence from Suggested.lean’s module docstring: those comparisons are not this roadmap’s acceptance headlines. No declarations, binders or theorem names changed.

## F12 (P3) — not actionable in this package: maintainer naming decision

The finding explicitly leaves the title to the maintainer’s recorded naming decision. No decision is supplied. The title, folder and metadata remain unchanged; renaming a package or choosing its identity would exceed this mathematical repair. Its introduction already identifies the base as AdicSpacesPartII and describes this as its Part II extension.

## F13 (P3) — applied

Deleted every listed second Check and the same duplicate pattern in §§4.4, 6.1, 6.3, 6.5. Replaced the §4.1 declaration name by a description of power-bounded and topologically nilpotent series. A distinct dimension-zero normal-form Check replaces the repeated Frobenius Check in §6.1. No Check or API lemma was added to Suggested.lean.

## F14 (P3) — applied

RigidAnalyticGeometry’s supplier contract no longer credits it with normalization comparison or §3.2’s description of X(L). It retains its actual closed-point, reducedness, normality and component comparisons. Global normalization compatibility stays in §1.1, and finite-extension points and their classical images stay in §§3.1–3.2.

## F15 (P3) — applied

Countability presented as supplied → countability explicitly requested by gap:generically-reduced-functorial-resolution. The README and plan now require the common countable invariant set for both reduced and generically reduced functors. Thus §5.3’s non-quasi-compact reduced case no longer silently assumes an undeclared supplier assertion. Scheme resolution itself retains its existing owner.

## Evidence, ownership and source checks

Read the main-branch roadmaps ComplexTori and LocalGaloisGroups for shape. Checked ownership by object with the roadmap search tool across main and indexed open heads, and with a separate search of board packages. Read the relevant heads returned by the roadmap tool, rather than treating review quotations as instructions. No helpers were used. The pin check used content’s manifest: Mathlib 6b7abb3c7686292736be2955bd3eb9ebf63b456a and Tau Ceti a91d3aafa8cd3e6bc33dfde0d7677ed0f1625039; main was b41e47bc34e30def0db01d84cc92062ed72c6e68.

| Finding | Evidence read at its actual owner or legal source |
|---|---|
| F01 | AdicSpacesPartII R1.7 is rigid–adic comparison. AdicSpacesPartIII R2.4 is specialization; R2.5 is admissible blow-ups and Raynaud localization. BH22 line 339 through line 344 uses the precise affinoid realization and comparison of special-fibre spectra. |
| F02 | SchemeAndStackFoundations §0.3 constructs relative Proj; §0.15 is Néron–Popescu; §4.11 consumes StableReduction Layer 4’s blow-ups. StableReduction Layer 4 explicitly states the Rees construction, universal property, properness and flat base change. AdicSpacesPartII R1.5 states completion comparison, R1.6 properness, R1.8 analytic groups; R0.15–R0.17 states the needed differential and local-structure results. |
| F03 | DiamondsAndVStacks D6.9 explicitly starts with ResolutionOfSingularitiesCharacteristicZero §7.8’s algebraic affinoid modification and proves the analytic properties there. It does not claim to import this package. TEMKIN12 line 1563 supports the global functorial hypersequence theorem owned here. |
| F04 | ReductiveGroups Layer 3 defines the fppf quotient; its standing conventions and Layer 3A refer to Cartier smoothness. A represented quotient of G by H is an H-torsor by its quotient property; when H is smooth its projection is smooth locally for the fppf topology. Orbit maps follow by translation after a field extension and descent. |
| F05 | HK2 line 1458 explicitly takes G_a; HK2 line 1462 states the unique rigid analytic point. For G_m, valuation of a lattice in the rank-one B_dR module gives the integer n, with tⁿB_dR⁺ as representatives. |
| F06 | CONRAD99 line 406 states normalization compatibility; line 409 through line 417 supplies flatness, not regularity. TEMKIN12 line 1513 uses regularity without proving it. TEMKIN12 line 734 through line 745 identifies André localization and the flat/geometrically-regular-closed-fibre criterion. ANDRE74, pp. 297–307, is uncertified. No numbered theorem was guessed. |
| F07 | HK2 line 722 through line 727 is the proper-image step; POINEAU13 line 182 through line 184 states the full residue-plus-value-group inequality on printed p. 271. CONRAD99 line 528 through line 548 treats connected components; line 435 is Lemma 2.1.1. CONRAD06 line 1946 defines the proper rigid blow-up, line 1948 through line 1955 gives invertible pullback and its universal property, line 1957 through line 1960 gives flat base change and analytification. |
| F08 | TauCeti/AlgebraicGeometry/AdicSpace/Spa/Polydisc/Basic.lean:182, classicalPoint_injective_of_isField, includes the actual field hypothesis. TauCeti/RingTheory/MvPowerSeries/TateAlgebra/Basic.lean:241, IsRestricted.gaussNorm_mul, assumes multiplicative coefficient norm and positive polyradii. TauCeti/RingTheory/Huber/Restricted/GaussNorm.lean:80 defines the actual ring equivalence. Mathlib/Geometry/Manifold/Submersion.lean:171 and Immersion.lean:190 define Manifold.IsSubmersionAt and Manifold.IsImmersionAt; Submersion.lean:63 lists the missing rank criterion. |
| F09 | Direct computations below; compactness of ℤ_p supplies a finite family of rational exclusions. HK2 line 2733 uses algebraically closed residue field; our polynomial-avoidance argument uses only infinite residue field, as stated. |
| F10 | Read ReductiveGroupsPartII RG2.0.2’s characteristic-zero smooth-group-analytic-charts; AbelianSchemesAndArithmeticModuliPartII B2.10’s finite-Cᵏ and real-analytic extension; LieGroupoidsPoisson G0.1’s smooth constant-rank and fibre theorem. |
| F11 | HK2 line 693 requires a finite extension of the complete base field, not a finite field. |
| F12 | The review itself records an outstanding maintainer naming question; no mathematical statement forces a title. |
| F13 | Counted the resulting distinct Checks: §§0.1, 0.2, 1.1, 1.3, 1.4, 2.1, 2.3, 4.1, 4.2, 4.4, 5.1, 6.1, 6.3, 6.5 have respectively 4, 5, 5, 5, 6, 5, 5, 5, 5, 4, 4, 3, 5, 3 Checks. No affected definition falls below three. |
| F14 | RigidAnalyticGeometry §8.1 states reducedness/normality and component comparisons. CONRAD99 Theorem 2.1.3 supports this package’s normalization comparison; HK2 line 699 supports the point-class comparison. |
| F15 | ResolutionOfSingularitiesCharacteristicZero §§7.5–7.6 is the reduced marked functor. TEMKIN12 line 99 states generically reduced resolution; line 1563 through line 1571 states countable hypersequences and synchronization. Both additional requirements are now explicitly gaps rather than attributed supplier targets. |

CONRAD06 was fetched through the source service from Numdam and read at the recorded extraction. Initial author-URL and landing-page attempts failed; the subsequent legal PDF resolved that request. ANDRE74 resolved to an uncertified paywalled locator; SCHNEIDER11 retains its settled uncertified status. No source request remains outstanding, and no source text was copied into the package. Source manifests retain one key per work. All cross-roadmap citations were resolved again; ownership of global rigid gluing and functoriality stays here, while later group and Betti applications remain consumers.

## Adversarial mathematics pass

The rows cover definitions, target assertions, their API laws, conventions, changed contracts and worked examples. Equalities and equivalences were tested in both directions. The examples are mathematical computations, not Lean acceptance declarations. Unchanged APIs are grouped only when the displayed calculation tests the stated laws together; no row relies on a bare elaboration result.

| Statement | Instances tried | Values computed on the two sides | Result | Change |
|---|---|---|---|---|
| Standing field and nontrivial valuation | ℚ₂, ℚ₃; imperfect characteristic-p K | 0 < \|p\| = 1/p < 1; in characteristic p, a ∉ Kᵖ gives [K(a^(1/p)):K] = p | Mixed and equal characteristic distinguished | None |
| Residue conventions | Classical T=0; Gauss η on D | k(0)=H(0)=K, secondary residue K̃; H(η) has secondary residue K̃(T), transcendence degrees 0 and 1 | Completed field and its residue differ | None |
| Dimension and nonemptiness conventions | ∅; Spa K; D ⊔ Spa K | Dimensions −∞, 0, 1 globally; local dimensions 1 and 0 on the union; ∅ has 0 components | No phantom zero-dimensional empty component | None |
| Normal versus geometrically normal | Spa L/K finite purely inseparable | L is a regular normal field; L⊗_K L = L[ε]/(εᵖ) is nonreduced | Normality need not survive extension | None |
| Rational-domain denominator | η, numerator T, denominator T; denominator 0 | η satisfies 1 ≤ 1 with denominator 1 ≠ 0; a zero denominator gives 0 = 0 but is excluded | Junk denominator excluded | None |
| Gauss normalization | π+T and π at η and T=0 | At η: 1 and \|π\|; at 0: \|π\| and \|π\|; comparison 1 ≤ \|π\| is false | Inverse/rescaled wrong models separated | None |
| Tangent direction | T↦T², a=3; characteristic 2 | df₃(v)=6v, source-to-target; in characteristic 2 df=0 | Direction and characteristic fixed | None |
| Marked empty centre convention | Unit ideal; zero ideal; (T) on disc | Bl_1 X=X; Bl_0 X=∅; Bl_(T) D=D with nonempty centre | Equal composites need not have equal markings | None |
| Native analytic inverse contract | f(T)=T+T² | g(T)=T−T²+2T³; f(g(T))=T+0T²+0T³+O(T⁴), g(f(T)) likewise | Correct inverse branch and direction | None |
| Inverse degeneracies | Tᵖ at 0; dimension 0 | Derivative 0 versus required inverse 1; unique zero-space linear map is invertible | Zero dimension allowed, zero derivative excluded in positive dimension | None |
| Supplied classical-point interface | (T²−p), p=2,3; Spa L; ∅ | Residue degrees 2, [L:K], no points respectively; \|T\|=p^(−1/2) at (T²−p) | Finite extension, not rational-only | None |
| Formal localization, disc | Spf K°⟨T⟩ | Kernel of (K°/ϖ)[T]→K̃[T] is (K°°/ϖ)[T], its nilradical; both spectra have corresponding primes | Homeomorphism does not require discrete valuation | F01 |
| Formal localization, nilpotents | R=K[ε]/ε², R₀=K°[ε]/ε² | R̃=K̃; R₀/ϖ=(K°/ϖ)[ε]/ε²; spectra each one point, rings generally unequal | Reduction compatibility is topological | F01 |
| Formal localization, non-quasi-compact | Countable disjoint union of formal discs, W one disc | Generic fibre is ⊔D; inverse image of chosen formal component is exactly W=D | No finite-global-cover hypothesis | F01 |
| Scheme blow-up supplier and relative Proj | Spec A with A=K⟨x,y⟩, I=(x,y) | Rees degree n=Iⁿ; exceptional fibre Proj K[u,v]=ℙ¹; outside origin pullback ideal is unit | Affinoid A need not be finite type over K | F02 |
| Reduced scheme-resolution contract | Spec ℚ; cusp | Sequence lengths 0 and 1; cusp chart y=xu gives u²=x and y=u³ | Regular source and unchanged regular locus | None |
| Generically nonreduced scheme boundary | Spec K[ε]/ε² | One underlying point, nilpotent ε≠0; no nonempty regular open, whereas its reduction is Spec K | Not a reduced-input cover theorem | F15 clarification |
| Countable synchronization contract | Curves y²=x^(2n+1), n=0,1,2 | Resolution lengths 0,1,2; after a blow-up exponent 2n+1→2n−1 | No global bound on ⊔ over n, finite on each compact piece | F15 |
| Smooth homogeneous quotient | GL₂/B; G_m/μ₂ in characteristic zero | Dimensions 4→1 with fibre dimension 3; square map derivative at 1 is 2≠0 | Smooth quotient supplies the orbit route | F04 |
| Quotient rational-lift boundary | G_m/μ₂, F=ℚ_p, y=p | Fibre g²=p has 0 F-points; orbit g↦pg² has derivative 2p≠0 at 1, also for p=2 | Smooth orbit does not require rational lift | F04 route retained |
| §0.1 Zariski vanishing, radical and reduction | Disc; K⟨T⟩/(T²) | V(T)={0} and \|T\|η=1; on double point V(T)=V(0)=whole singleton, √0=(T) | Correct reduced structure and non-example | F13 deduplicates |
| §0.1 unions, intersections, preimages | V(T), V(T−1); f(S)=S² | Union=V(T(T−1)); intersection=V(1)=∅; f⁻¹V(T)=V(S²)=V(S) | Products/sums and contravariance fixed | None |
| §0.1 empty-family and unit laws | Empty closed-family intersection; zero and unit ideals | V(Σ∅)=V(0)=X; V(1)=∅; V(0)=X | No empty-index reversal | None |
| §0.1 topological versus Zariski closed | Subdisc radius \|ϖ\|<1 | Subdisc contains 0 and excludes η; Zariski closure of its interior is D | Positive-radius subdisc not a coherent Zariski subset | F13 deduplicates |
| §0.2 local dimension and open restriction | Dⁿ, n=0,1,2; D⊔Spa K | Every local dimension n; dimensions on two components 1,0; reduced double point dimension 0 | Local dimension is not tangent dimension or global maximum | F13 deduplicates |
| §0.2 tangent counterexample | Cusp at origin | Local dimension 1; m/m² basis X,Y has dimension 2 | Tangent-based wrong definition rejected | None |
| §0.3 nowhere-density equivalences | V(T)⊂D; axis V(Y)⊂V(XY) | (T) in no minimal prime of K⟨T⟩, dimensions 0<1; (Y) is minimal for node, axis dimensions 1=1 | Both directions separate properness from nowhere density | None |
| §0.3 empty and nilpotent cases | X=∅; Z=X≠∅; V(T) in double point | All five conditions true; all false; (T) minimal, dimensions 0=0, hence false | No nonreduced or empty exception missing | None |
| §0.4 proper images and supports | ∅→X; id_X; V(I)↪X | Image/support pairs ∅/∅, X/X, V(I)/Supp O/I=V(I) | No surjectivity assumption in the theorem | F07 |
| §0.4 projection | ℙ¹×D→D | Every fibre contains [1:0]; image D, direct-image algebra O_D, support D | Proper image has expected support | None |
| §0.5 domain inclusion versus evaluation | K⟨T⟩→K⟨T,T⁻¹⟩; T↦0 | First is flat with identical local completions; second kills T·1, contradicting flatness of the quotient | Theorem is for domains/smooth maps, not arbitrary maps | F06 |
| §0.5 completion descent | Disc at T=0 and a smaller disc about 0 | Both completed local rings K[[T]], comparison T↦T; completion fibres regular by excellence | Regularity is proved, not extracted from normalization | F06 |
| §0.5 smoothness with inseparable residue | char K=p, point (Tᵖ−a), a∉Kᵖ | Residue K(a^(1/p)) inseparable of degree p; after extension the whole disc ring is L⟨T⟩, regular of dimension 1 | No separable-residue clause used | F06 |
| §0.5 flat but nonregular field extension | K→L=K(a^(1/p)) | L⊗_K L=L[ε]/εᵖ, nilpotent ε≠0; identity field fibre is K, regular | Geometric regularity is an additional condition | None |
| §0.5 scalar extension in characteristic zero | A=K; A=K⟨T⟩, finite K′/K | Fibres K′ separable; local completion map K[[T]]→K′[[T]], same parameter T | Flatness and regularity distinguished | F06 locator |
| §1.1 normalization construction and comparison | Cusp; axes; normal disc; double point | Cusp normalization K⟨t⟩ with t²,t³; axes normalize to two discs; normal disc unchanged; double point normalizes to K | Normalization of the reduction, not integral closure inside a nonreduced ring | F13, F14 |
| §1.1 finite stalk and dominance API | Node origin; constant map to its singular point | Two normalization points give product of two branch stalks; constant map has full inverse image of a nowhere-dense point | Dominance excludes arbitrary lifts to normalization | None |
| §1.2 normalization characterization | Cusp; one axis; X⊔point→X | Cusp exceptional set {0} with nowhere-dense inverse image; missing axis has dimension 1; extra source component has open inverse image of Z | Both exceptional-set hypotheses needed | None |
| §1.3 native connected components | D; Spa(K×K); ∅; annulus | Component counts 1,2,0,1; idempotents in K×K include (1,0); finite union of components clopen | Nonempty connectedness and idempotent criteria agree | F07, F13 |
| §1.3 rational topology is insufficient | D(ℚ_p)=ℤ_p | Rational traces \|T\|<1 and \|T\|=1 partition ℤ_p; adic D still has 1 component | Totally disconnected rational trace does not disconnect D | F13 |
| §1.4 irreducible components and local branches | Axes; integral nodal cubic; two disjoint discs | Axes: 2 global components, 1 connected component; nodal cubic: 1 global component, 2 branches at origin; disjoint discs: 2 components | Local minimal primes are not global components | F13 |
| §1.4 nodal normalization witness | x=t²−1, y=t(t²−1) | y²=x²(x+1); x=y=0 gives t=1 or −1, distinct also over ℚ₂ | Normalization/component convention pinned | None |
| §1.5 irreducibility criterion | D; V(XY); empty space | Proper disc Zariski sets have dimension 0<1; axes each proper, union whole node; ∅ excluded by nonemptiness | Binary-union and identity-principle directions agree | None |
| §1.6 full local dimension | V(XY)⊂D²; Spa L; full-radius subdisc | Dimensions 1<2; nonempty Z⊂Spa L has dimension 0=0 and is whole; subdisc dimension 1 but not Zariski closed | Full-dimension hypothesis not enough without Zariski closedness | None |
| §1.7 bounded extension | Punctured disc; cusp parameter t; idempotent e | 1/T at πⁿ is \|π\|^(−n)→∞; cusp t bounded by 1 but t∉K⟨t²,t³⟩; e²=e and \|e\|≤1 | Boundedness and normality have distinct roles | None |
| §1.8 connected complement | Disc minus 0; node minus origin; Spa L minus ∅ | Component counts 1,2,1; the second ambient space is reducible | Irreducibility/normal connectedness cannot be dropped | None |
| §2.1 singular loci, restriction and comparison | Cusp; axes; polydisc; double point | Singular sets {0},{0},∅,whole singleton; reduced cusp generic local ring a field, double point generic local ring nonregular | Reducedness required for nowhere density | F13 |
| §2.2 regular versus smooth | Perfect K; imperfect K with L=K(a^(1/p)) | Spa K completion K, tangent rank 0; L regular of dimension 0 but Ω_(L/K) dimension 1 and L⊗_K L nonreduced | Perfectness matters for the equivalence, not §0.5 | F02, F06 consistency |
| §2.3 tangents, chain rule, scalar extension | Dⁿ at 0; double point; z² then z³ | Dimensions n and 1; d(z⁶)_a=6a⁵=(3a⁴)(2a); base extension gives Lⁿ | Cotangent direction and chain rule agree | F13 |
| §2.3 inseparable cotangent boundary | Spa L/K as above | Absolute m/m²=0 but Ω_(L/K)=L·dα has dimension 1 | Relative-cotangent comparison remains separability-qualified | None |
| §2.4 stratification | Cusp; plane and line meeting at 0; zero-dimensional reduced X; ∅ | Dimensions 1→0→−∞; 2→0→−∞; 0→−∞; ∅ has 0 nonempty strata | Reduced singular iteration terminates by d+1 | None |
| §2.5 rank loci and empty minors | z² char≠2; constant map; identity Dⁿ | Ranks 1 off0/0 at0; constant rank0; identity rank n; empty minor=1, oversized minors=0 | Open loci are D−{0}, whole V at r=0, ∅ above bounds | F02 |
| §3.1 finite-extension data and equivalence | Spa K; Spa L/K Galois of degree n; completed algebraic closure | One class; n embeddings but one common-extension class; infinite coefficient field excluded as representative | Representatives and classes not conflated | F11 |
| §3.2 classification and naturality | Disc integral algebraic a; nonclassical η | Class gives maximal ideal of a, finite residue degree; η has transcendental residue, so no finite-extension representative | Image bijection has correct range | F14 |
| §3.2 Grassmannian boundary | G_a; G_m | Rigid-point counts 1 at 0 versus one per n∈ℤ via tⁿB_dR⁺; n=0,1 already distinct for G_m | Group hypothesis is essential | F05 |
| §3.3 evaluation and topology | a=0,b=1; ball centred a of radius \|π\|ᵏ | T evaluates to 0 and 1; rational trace is exactly the metric ball; weak inequalities persist under smaller perturbations | Supplied injectivity plus genuine topology comparison | F08 |
| §3.3 completeness and Baire | O_Lⁿ, n=0,1,2 | Closed subsets of complete Lⁿ, dimensions 0,1,2; at n=0 the set has 1 point | No local compactness assumption | None |
| §3.3 nonclosed rational points, infinite residue | η in D, L̃ infinite | \|T−a\|η=1 while \|T−a\| at a is0; nonzero reduction denominator has some ā with ḡ(ā)≠0 | η is nonclassical but in closure | F09 |
| §3.3 finite residue, η separation | ℚ_p, p=2,3 | \|Tᵖ−T\|η=1; a∈ℤ_p has \|aᵖ−a\|≤1/p<1 | Displayed rational open misses every rational point | F09 |
| §3.3 finite residue, algebraic separation | x: T=√p, p=2,3 | \|T²−p\|x=0≤p⁻²; rational integral a has \|a²−p\| equal to1 or p⁻¹, both >p⁻² | Second separating neighbourhood also excludes ℤ_p | F09 |
| §3.3 finite residue, global closedness | x≠a for every a∈ℤ_p | Continuity gives k with \|T−a\|x≥p⁻ᵏ>p⁻(k+1); on ball a+p^(k+1)ℤ_p values ≤p⁻(k+1) | Finite intersection from compactness excludes all ℤ_p | F09 |
| §3.4 Gauss multiplicativity and point specification | f=T₁, g=T₂; f=0; π+T₁ | Norms 1·1=1 for product; 0·\|g\|=0; \|π+T₁\|=1 | Actual native multiplicative norm, not a free predicate | F08 |
| §3.4 closure over infinite residue | g=T(T−1); residue field F̄₂ or F̄₃ | Choose residue ζ∉{0,1}; \|ζ\|=\|ζ−1\|=1, hence \|g(ζ)\|=1=\|g\|η | Both inequalities of the neighbourhood hold | None |
| §3.4 finite residue and n=0 | F_q residue; dimension0 | \|T^q−T\|η=1 but all rational values <1; in dimension0 the unique point is both rational and Gauss | Finite residue fails only in positive dimension | None |
| §4.1 power-bounded and nilpotent rings | Disc; nilpotent thickening | Disc A° consists of coefficients ≤1; A°° means Gauss norm <1; nilpotent ε has powers0 eventually | Real norm description used, not a Check declaration | F13 |
| §4.1 specialization, continuity, naturality | T=a; η; map T↦S², S=b | sp(a)=(T−ā), sp(η)=(0); pulled-back residue satisfies T−b̄²; sp⁻¹D(T)=\|T\|=1 | Ring and spectrum arrows have opposite directions | F01 Needs |
| §4.1 noninjectivity and annulus | \|a\|<1; XY=c, 0<\|c\|<1 | All such a reduce to T=0; annulus boundary values (1,\|c\|),(\|c\|,1) reduce to (Y),(X) | Classical images closed, generic images distinct | F13 |
| §4.2 Shilov definition and norm maximum | Dⁿ; annulus; finite field L; zero algebra | Boundary sizes 1,2,1,0; for p+T², maximum1=\|p+T²\|η; zero algebra has supremum0 | Empty boundary and positive-dimensional nonclassical boundary distinguished | F13 |
| §4.3 equivalent Shilov criteria | η and T=0 on D; double point | Generic fibre sp⁻¹(0)={η}; closed residue fibre contains 0 and π; double-point completion kills ε and gives K°, not K̃ | Completion must precede reduction | F01 Needs |
| §4.4 weakly Shilov definition and open invariance | Rational-radius subdisc; classical disc point; isolated point | Gauss secondary trdeg1=local dim1; classical0<1; isolated0=0 | Local existence, not fixed-affinoid boundary membership | F13 |
| §4.5 residue transcendence bound | Unit Gauss; irrational-radius Gauss; Spa L | Pairs (s,dim)=(1,1),(0,1),(0,0); value-rank contribution1 in irrational-radius case | Residue-only bound weaker than full Abhyankar equality | F07 |
| §4.6 transcendence criterion and formal specialization | Type2; type3; isolated component | Equalities1=1 and0=0; strict inequality0<1 for type3; formal generic points correspond under the model homeomorphism | Global dimension does not replace local dimension | F01 |
| §4.7 avoidance and density | η; classical a; double point | At η, 1≤dim Z<1 would be impossible; at classical a, s=0 permits Z={a}; double point singular everywhere but not reduced | Avoidance and reduced regular-locus consequence agree | None |
| §4.7 union quantifier | Any union of proper disc Zariski subsets | Every term excludes every type2 point, so union still excludes all type2 points; no cardinality sum appears | Countable application does not narrow general avoidance | None |
| §5.1 blow-up and universal property | Unit ideal; zero ideal; Cartier (T); bidisc (X,Y) | Total spaces X,∅,D,blown-up bidisc; last exceptional fibre ℙ¹, Cartier case unchanged | Coherent invertible ideal, not an arbitrary projectivized centre | F07, F13 |
| §5.1 flat base change and analytification | Open away from origin; field extension K′/K | Pulled-back ideal1 gives identity; exceptional fibre becomes ℙ¹_(K′), equal to base change of ℙ¹_K | Source and target of comparison agree | F02, F07 |
| §5.2 sequence markings, contraction, pullback | Length0; unit step; nonempty Cartier step; translation | Composites id,id,id; contracted lengths0,0,1; translation by(1,0) sends centre(0,0) to(1,0) | Only empty centres contract | None |
| §5.2 hypersequence finiteness | ⊔ curves y²=x^(2n+1) | Each component takes n steps; finite subunion stabilizes after max n; supremum over all n=∞ | Local finite stabilization is stronger than countability | None |
| §5.3 functorial rigid resolution | Smooth disc; cusp; empty space | Sequence lengths0,1,0; final spaces D,D,∅; cusp centre disjoint from punctured smooth locus | Source smooth, proper and unchanged on regular locus | F03 ownership, F15 gap |
| §5.3 ground-field compatibility | Cusp over K then K′/K char0 | Charts x=u²,y=u³ before and after base change; final disc becomes K′ disc | Compatibility uses regular scalar extension, not flatness alone | F06 |
| §5.4 surjectivity and connectedness | Cusp; two axes; double point after reduction | Fibre over cusp0 has1 point; node0 has2; reduced double-point cover has1→1 underlying points | Reducible base can give disconnected resolution | F03 moved Check |
| §5.4 zero-ideal counterexample | Nonempty S | Bl_0 S=∅ has image∅≠S; resolving S_red does have imageS | Deleting generically nonreduced components cannot replace cover | F03 |
| §6.1 normal form and signs | f(x,y)=(x,x²), ψ(u,v)=(u,v−u²) | ψ(f(x,y))=(x,0), rank1; sign plus would give(x,2x²) in char0 | Target-coordinate subtraction and first-coordinate order fixed | None |
| §6.1 rank neighbourhood | x² char0 at a≠0 and0 | Derivative2a≠0 versus0, ranks1 and0; no constant-rank neighbourhood at0 | Pointwise rank alone insufficient | None |
| §6.1 characteristic and zero dimensions | Tᵖ in char p; m=n=k=0; constant map | Derivative0 but Tᵖ(πⁿ)=π^(np)≠0; empty coordinate tuples agree; centred constant target=0 | CharZero and k bounds retained in Lean | F13 |
| §6.2 rational polydisc charts | G_m at1; cusp0; Spa L with L≠F | \|T−1\|≤\|c\| gives disc; cusp tangent dim2>dim1; residue L≠F rules out pointed F-polydisc | Rationality and smoothness are genuine conditions | F02 locator |
| §6.3 atlas, tangent and topology | Disc; Spa F; ∅; G_m | V(F)=O_F,{point},∅,F× with dimensions1,0,empty,1; df of multiplication at(1,1) is(u,v)↦u+v | Transported atlas agrees with chart coordinates | F10 |
| §6.3 finite versus infinite scalar restriction | F′=ℚ_p(√p); F′=ℂ_p | Disc dimensions1 over F′,2 over ℚ_p in first case; ℂ_p has infinite ℚ_p-dimension | No finite dimension assigned to infinite scalar restriction | None |
| §6.3 algebraic point identification | X=affine line | X(F)=F=(X^an)(F), coordinate T maps a↦a on both sides | Atlas transported along actual bijection | F10 |
| §6.4 smooth projections and orbit maps | D²→D; GL₂/B near[1:0] | Derivative(u,v)↦u; quotient coordinate c/a has derivative δc at identity | Native submersion normal form has correct direction | F04, F08 |
| §6.4 non-smooth map | Square map at0 | Derivative0: F→F is not surjective; at1 derivative2≠0 in char0 | Smoothness cannot be dropped | None |
| §6.5 subfield identity | PolynomialΣc_αz^α restricted to Eᵐ | Mixed derivative at0 is α!c_α; vanishing forces0=α!c_α, α!≠0, hence c_α=0 | Coefficient recovery ties theorem to its germ | None |
| §6.5 isolated-zero and dimension0 boundaries | z(z−a), a∉E; m=0 | At0 value0 but derivative−a≠0, so no E-neighbourhood of zeros; for m=0 both sides exactly f(0)=0 | No isolated-point substitute for open vanishing | F13 |
| Worked cusp consistency | A=K⟨t²,t³⟩, B=K⟨t⟩ | B=A+At, t integral, t∉A; dim1, tangent2, one blow-up chart x=u²,y=u³ | Layers0,1,2,5 agree | None |
| Worked nodal consistency, including p=2 | y²=x²(x+1) near0 | Branches y=±x√(1+x), distinct in char0; normalization t=±1; shrinking makes binomial series converge also over ℚ₂ | Two local branches, one global component | None |
| Worked Shilov and rational-closure consistency | Unit Gauss, irrational radius, isolated classical component | (s,dim)=(1,1),(0,1),(0,0); for q=2,3, Gauss value of T^q−T=1 and all rational values<1 | Checks do not contradict closure hypothesis | F09 |

## Exact validation outcomes

- Required elaboration, from the content checkout: `lake env lean <Suggested.lean>` exited 0. Diagnostics were exactly `packages/AdicSpacesPartV/Suggested.lean:45:8`, `:62:8`, and `:94:8`: `warning: declaration uses sorry`. No errors and no missing TauCeti object file; no module build was needed.
- Mechanical binder check: copied the final acceptance file to scratch and appended `#check @` for all four declarations, then elaborated once from content. Exit 0, the same three admitted-proof warnings, and all four complete types printed. `IsUnitGaussPoint` retains its field, ultrametric and nonarchimedean assumptions; the closure theorem additionally retains completeness and infinite residue field; constant rank retains completeness, characteristic zero, both rank bounds, both analytic manifold structures, local analyticity and the eventual rank condition; the subfield theorem retains both complete characteristic-zero fields and the normed-algebra embedding. These match README §§3.4, 6.1, 6.5. No binder or signature changed. An initial scratch invocation from board exited 1 with “no default toolchain configured”; rerunning from the required content checkout succeeded. No toolchain settings were changed.
- Dependency direction: the prescribed command, with README `packages/AdicSpacesPartV/README.md`, name `AdicSpacesPartV`, order `merge-order/ORDER.txt` and `--movable`, exited 0 and printed:

```text
moved: AdicSpacesPartV moved in the merge order from #9 to #10, right after its last supplier AdicSpacesPartIII; checked as moved (the worker moves it there when it submits)
depcheck: 48 roadmaps, 539 edges, 0 problem(s)
```

There is no UPWARD or CYCLE line. The formal supplier remains its actual owner, rather than being re-planned here. The authorized movable check handles the placement; merge-order files were not edited.

- Citation resolution exited 0 against main b41e47b and 352 indexed open heads: “Cross-roadmap citations found nowhere: None”; “Lean names found nowhere: None.” Its note that external Lean names were not checked by that tool was addressed by direct reads at the manifest pins, including the F08 declarations listed above.
- `git diff --check` exited 0. JSON comparison with the pre-edit design confirmed that only the top-level gaps list changed. All three gap needs sentences agree exactly with their README contracts. Suggested.lean has one Mathlib import, one used TauCeti import, four declarations, three theorem sorries, no admitted data, no options and no added Check declarations. No initial gate failures were supplied in the brief.

## Maintainer consequences

The three supplier gaps remain explicit requests, not declarations invented in other roadmaps. The worker’s dependency result calls for placement immediately after AdicSpacesPartIII. The title question remains for the maintainer. DiamondsAndVStacks D6.9, ReductiveGroupsPartII RG2.0.2 and AbelianSchemesAndArithmeticModuliPartII B2.10 may reuse the indicated general results; their files were not edited. No exported Lean declaration was renamed or deleted. Metadata was unchanged. No commit, push or external write was made. This report records repairs and checks; it does not replace the fresh independent review.
