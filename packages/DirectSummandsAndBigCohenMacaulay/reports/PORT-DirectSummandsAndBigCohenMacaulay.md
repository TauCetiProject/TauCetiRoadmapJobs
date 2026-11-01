# Port: DirectSummandsAndBigCohenMacaulay

Branch: `roadmap/direct-summands-and-big-cohen-macaulay`.
Head commit: `aa4beacaee425891642106d8cdcaa4211b2b1106`.
Base: `c994070`; the initial worktree was clean.

The repository change contains only `TauCetiRoadmap/DirectSummandsAndBigCohenMacaulay/README.md`, `TauCetiRoadmap/DirectSummandsAndBigCohenMacaulay/Suggested.lean` and `TauCetiRoadmap/DirectSummandsAndBigCohenMacaulay/metadata.toml`. The metadata is `topic = "math.AC"`. No push or GitHub write was performed.

## Validation

Exact final targeted-build outcome:

```text
Build completed successfully (8959 jobs).
```

Warning count: **10**, all warnings that a declaration uses `sorry`, one for each headline theorem. There are no other warnings, errors or admitted data. The final Lean file is byte-for-byte the accepted package file: ten headline theorems and nine definitions with actual bodies. Its `module` header and `public import Mathlib` / individual Tau Ceti import are retained: replacing them by private imports inside a public section fails at these pins, and using a legacy file adds an extra module-system warning. The gate accepts the original module-system import form. No Mathlib submodule or roadmap module is imported.

The only build command used was the requested targeted module build. A temporary inspection appended the nineteen `#check @...` commands from a scratch file, ran that same targeted build once, and then restored the accepted file and rebuilt it. Every elaborated signature was compared with its README statement. All locality, Noetherianity, regularity, finiteness, completeness, characteristic, local-map, injectivity, separability, universe and Gorenstein-cover assumptions survive. No binder repair or mathematical Lean change was needed. The temporary checks are absent from the committed module.

Exact final push-gate summary (run after the commit, because the gate requires a clean worktree):

```text
gate DirectSummandsAndBigCohenMacaulay: set_option=0 blob=0 latex=0 tex=0 prnum=0 sorry-data=0 sorry-examples=0 residue=0 private-paths=0 imports=0 mathlib-subimports=0 no-import-mathlib=0 lean-lines=0 forbidden=0 dropped=0 readme-ids-missing=0 empty-sections=0 round-labels=0 long-fences=0 layer-ids=0 target-ids=0 depcheck=0 metadata=0 stray-files=0 dirty=0 outside-folder=0 source-material=0 OK
```

Exact dependency-check output:

```text
depcheck: 190 roadmaps, 1166 edges, 0 problem(s)
```

There is no UPWARD or CYCLE line and no move is requested. The dependency edge count changes from 1167 to 1166 because the direct proper-coherence supplier is JacobianChallenge rather than StableReduction.

## Draft pull request body

Build the commutative algebra linking perfectoid ramification and Riemann extension to direct summands and balanced big Cohen–Macaulay algebras. The roadmap develops Hochster’s algebra modifications, André’s and Bhatt’s splitting arguments, faithfully flat domination, the monomial theorem, weak functoriality and Cohen–Macaulay descent for pure mixed-characteristic local maps, and the derived direct summand theorem. It retains arbitrary modules, ramified regular bases and explicit almost ideals throughout.

AI assistance: Codex (GPT-6) performed the port, source and supplier checks, signature inspection and mathematical self-review. The accepted package’s explicit supplier extension contracts remain the qualifications described below.

## Supplier status and ownership

The roadmap dependencies that are new folders in open pull requests are **DerivedDeRhamCohomology**, **DeformationAndDerivedPatchingAlgebra**, **DeformationAndDerivedPatchingAlgebraPartII**, **PerfectoidQuotients** and **ResolutionOfSingularitiesCharacteristicZero**. Their README files were read with `roadmaps show` at the indexed heads. The other direct roadmap suppliers are on main: **PerfectoidSpaces**, **DerivedModuleAlgebra**, **EnhancedDerivedSheaves**, **SchemeAndStackFoundations** and **JacobianChallenge**. Open changes to those existing roadmaps were not used as dependencies.

| Supplier | Contracts resolved |
| --- | --- |
| PerfectoidSpaces on main | P0.1–P0.17 and P0.25; P1.4, P1.24–P1.25; P2–P3. Almost algebra, chosen roots, integral models, rational localization, almost acyclicity and almost purity. |
| PerfectoidSpacesPartII, board design | RA.0–RA.1, RA.3–RA.5. Its design explicitly owns almost-pro-zero towers, quantitative Riemann extension, the Abhyankar lemma, tensor purity, Krull detection and normalized Kummer flatness. See the unresolved status below. |
| PerfectoidQuotients, open head | §§0.7, 1.3–1.4. Fixed-field saturation and root extension, retaining specified roots and almost faithful flatness. |
| DerivedDeRhamCohomology, open head | §1.10. Noetherian source, ordinary completeness and torsion-freeness in the ordinary flatness criterion. |
| DerivedModuleAlgebra on main | §§0.K.1, 1.T.1, 1.1.1, 1.E.0, 1.M.2. Koszul models, towers, derived Hom, finite models and arbitrary-residue-field Matlis duality. |
| DeformationAndDerivedPatchingAlgebra, open head | §§1.9–1.10, 1.13–1.15, 3.1–3.2, 3.4, 3.7, 3.9, 4.1, 7.3. Actual coefficient maps, individual residue extensions, flat completion, finite algebra decomposition, finite Hom pro-comparison, regular-surjection kernels, Gorenstein covers and finite models. |
| DeformationAndDerivedPatchingAlgebraPartII, open head | §§K0.1, K0.3. Arbitrary-module Čech comparison and filtered colimits; secant lists, dimension, permutations and positive powers. |
| EnhancedDerivedSheaves on main | §§E1.4, E1.6, E1.8. Enhanced operations, regular-local projective dimension and Kunz, affine comparison and transport of the triangle obstruction. |
| SchemeAndStackFoundations on main | §§0.9, 0.11, 0.15, 0.17, 2.6–2.7, 2.18–2.19, 2.21, 4.12–4.13. Limits, absolute integral closure, Popescu, depth, base change, duality/upper shriek, Noetherian modification domination and regular-scheme normality. All six named duality/upper-shriek declarations occur in §2.19. |
| JacobianChallenge on main | Layer C’s coherent higher direct images for proper morphisms over locally Noetherian bases, without flatness of the map or coefficients. |
| ResolutionOfSingularitiesCharacteristicZero, open head | §7.5 `qeResolution` for reduced Noetherian quasi-excellent ℚ-schemes; no finite-type-over-a-field restriction. |

The duplication search used the required `roadmaps grep` across main and all indexed open heads, with separate object patterns for splinters, big Cohen–Macaulay algebras, algebra modifications, tensor purity, Krull detection, normalized Kummer towers, quantitative Riemann extension, products of flat modules, Matlis duality, secant sequences and splitting obstructions. It also searched the board’s package READMEs/designs and the supplied sibling heads. The core splinter/big-CM/modification search has no competing owner on main or at any indexed open head. The additional explicitly supplied head scan has no hit for those core objects or the analytic Kummer/Riemann objects. Generic Matlis, secant and triangle results resolve to the suppliers above. Other board hits concern Matlis applications in PotentialAutomorphyInfrastructurePartII and AutomorphicBundlesPartII, not ownership of the present commutative algebra. No declaration uses another roadmap’s fully qualified namespace.

The pinned-library sweep searched by scalar injectivity, tensor-unit tests, parameter radicals, reducedness, regular sequences, finite flat products, injective hulls and sheaf-derived units. It found the existing native carriers and supplier declarations listed below; it found no competing splinter, balanced big-CM or algebra-modification construction. The larger arbitrary-product flatness theorem here is distinguished from the finite-index pinned theorem in Scope and ownership. The real-body purity and parameter predicates are the narrow views needed to state headlines; their general theory remains with the named suppliers. The geometric complex and unit are specializations of native single-complex, sheaf-unit and derived-functor constructions.

### Supplier replacements and duplication removals

- Changed the direct general proper-coherence citation from StableReduction Layer 2 to **JacobianChallenge Layer C**, the shared owner explicitly named by StableReduction and EnhancedDerivedSheaves on main. Updated Scope and ownership, the supplier contract, §7.2 and the Layer 7 dependencies.
- Updated the README’s library revisions to the worktree’s actual manifest: Mathlib `f6090c7095e1e56b3464c1daba5f24631f1290d2`, Tau Ceti `358314d4ab97483df4fc4cb8adcc02e74a8d9f5a`. Each referenced source module and library declaration was located at those pins.
- No accepted target or Lean declaration was deleted for duplication. The generic tower, Matlis, Koszul, secant, finite Hom, proper-coherence and triangle interfaces were already delegated by the accepted package and remain so. No ownership was moved from a later roadmap and no additional dependency on later work was introduced.

## Lean-to-README movement

**None.** `packages/DirectSummandsAndBigCohenMacaulay/Suggested.lean` already meets the acceptance-test separation: no API catalogue, value examples, admitted data, `set_option`, or theorem that merely mirrors a Check. Every accepted statement remains in `TauCetiRoadmap/DirectSummandsAndBigCohenMacaulay/Suggested.lean`; the README retains all eight layers, all target hypotheses, API lists, Checks, proof routes, examples and references. The module docstring records the perfectoid, algebra-modification and coherent positive-truncation comparisons that cannot yet be stated with the intended interfaces.

## Mathematical and editorial corrections

1. Applied the accepted non-blocking locator note after reading the legal cached texts: the completion discussion is **HEITMANNMA18 line 144**, rather than line 123; the beginning of André’s §3.1 is **ANDRE18B line 589**, rather than line 586. The latter correction applies in §§0.8, 2.2 and 2.3. The theorem numbers and pages are unchanged.
2. Corrected the cardinality statement in the Conventions and §4.3. The finite-equation modification stages have size at most κ; their countable inverse-limit completions have size at most κ^ℵ₀. The computed counterexample is card(ℤ_(2))=ℵ₀ but card(ℤ₂)=2^ℵ₀. The base-universe Lean existence statement is unchanged.
3. Completed the reduction step in §§7.1 and 7.6: a derived splinter is reduced, by applying the derived retraction to the finite surjective reduction cover and taking H⁰. Added the explicit dual-number negative control ε↦0. Previously the prose invoked only a law for reduced derived splinters without first establishing reducedness.
4. Described Mathlib `IsIntegrallyClosed` as integral closedness in the total fraction ring, with domain hypotheses explicit in applications. Its native definition does not itself package `IsDomain`.
5. Restated the completed-local detection API in §7.1 on its actual base-changed unit Â_m → RΓ(X ×_A Â_m, O), with f proper explicit; the previous sentence could be read as a claim about splitting A → Â_m itself.
6. Kept the accepted mathematical supplier extension contracts while replacing intake gap labels and “what must provide” wording by mathematical contract names. Source access status belongs in this report; the README retains the published locators. Replaced its dangling reference to an uncopied `sources.toml` by the versions already specified in References. No source manifest or source package content was edited.

The upstream reading retained the accepted distinctions: no surjectivity-free perfectoid proper-map theorem, no dimension-zero monomial iff, no arbitrary-DVR absolute-integral-closure splitting, no replacement of an algebra ideal quotient by a scalar-module quotient, no trace divided by a nonunit degree, and no use of unrelated perfect-complex morphisms in the annular unit argument.

## Pinned native definitions and limitations

The source lines below are at the manifest pins, not the package’s older revisions. The defining fragments specify why the retained hypotheses matter.

| Native input | Located definition and retained limitation |
| --- | --- |
| Locality | `Mathlib/RingTheory/LocalRing/Defs.lean:30`, `IsLocalRing` extends `Nontrivial`; the zero ring is excluded only from local statements. |
| Regularity | `Mathlib/RingTheory/RegularLocalRing/Defs.lean:51` extends locality and Noetherianity and equates maximal-ideal generator number with dimension; line 92 defines global regularity by prime localizations and includes Noetherianity. |
| Weak/ordinary regular lists | `Mathlib/RingTheory/Regular/RegularSequence.lean:135` tests successive injectivity; line 146 additionally requires the final generated submodule to differ from top. Weak regularity alone admits the zero module. |
| Completion | `Mathlib/RingTheory/AdicCompletion/Basic.lean:56`, `IsAdicComplete` extends both Hausdorffness and precompleteness; its module completion is defined at line 171. |
| Faithful flatness | `Mathlib/RingTheory/Flat/FaithfullyFlat/Basic.lean:63` extends flatness and requires every maximal-ideal multiple of top to differ from top. Flatness alone is insufficient. |
| General separability | `Mathlib/FieldTheory/TranscendentalSeparable.lean:72` tests separably generated finitely generated intermediate extensions; line 35 specifies the separating transcendence basis. The induced residue algebra comes from `ResidueField.map`, rather than an unrelated algebra structure. |
| Integral closedness | `Mathlib/RingTheory/IntegralClosure/IntegrallyClosed.lean:74` abbreviates integral closedness in `FractionRing R`; it does not assert a domain. |
| Absolute integral closure expression | `Mathlib/RingTheory/IntegralClosure/Algebra/Basic.lean:216`, `Mathlib/FieldTheory/IsAlgClosed/AlgebraicClosure.lean:127`, `Mathlib/RingTheory/Localization/FractionRing.lean:729`. The two headline applications explicitly provide a domain or regular-local domain. |
| Proper versus surjective | `Mathlib/AlgebraicGeometry/Morphisms/Proper.lean:41` packages separatedness, universal closedness and local finite type; surjectivity is a separate class at `Mathlib/AlgebraicGeometry/Morphisms/UnderlyingMap.lean:58`. |
| Derived pushforward | `Mathlib/Algebra/Homology/DerivedCategory/RightDerivedFunctorPlus.lean:46`, additive functor with enough injectives; comparison unit at line 95. `Mathlib/AlgebraicGeometry/Modules/Sheaf.lean:165` supplies the actual module-sheaf pushforward. |
| Geometric unit | `Mathlib/Algebra/Category/ModuleCat/Sheaf/PullbackFree.lean:59`; `Mathlib/Algebra/Homology/Additive.lean:262` supplies the single-complex comparison. Neither is a free choice of a map. |
| Ordinary derived carriers | `Mathlib/Algebra/Homology/CochainComplexPlus.lean:42`; `Mathlib/Algebra/Homology/DerivedCategory/Plus.lean:227`; `Mathlib/Algebra/Homology/DerivedCategory/Basic.lean:81`. The last fixes the standard derived-category universe locally. |
| Local cohomology | `Mathlib/Algebra/Homology/LocalCohomology.lean:173`; the Ext-colimit definition does not itself assert arbitrary-module Čech comparison. |
| Gorenstein-cover hypothesis | `Mathlib/CategoryTheory/Abelian/Injective/Dimension.lean:52`; finite self-injective dimension is explicitly bound in the headline signature. |
| Regular local domain | `TauCeti/RingTheory/RegularLocalRing/Basic.lean:124`, `TauCeti.IsRegularLocalRing.isDomain`; this is the only individual Tau Ceti module imported by the acceptance test. |
| Injective envelopes | `TauCeti/Algebra/Module/Injective/Envelope/Basic.lean:101`, essential range at line 107 and uniqueness at line 172. General hull existence and the completion action are consumed from DerivedModuleAlgebra §1.M.2. |
| Products | `TauCeti/RingTheory/Flat/Pi.lean:62` has `[Finite ι]`; its faithful-flatness variant at line 76 retains a surviving factor for each maximal ideal. It is not the arbitrary-index theorem of §5.2. |
| Sheaf cohomology | `TauCeti/AlgebraicGeometry/Cohomology/Basic.lean:61` defines the abelian-group-valued cohomology; affine module and derived-unit comparisons remain the named suppliers’ work. |

## Unresolved accepted qualifications

The accepted review is explicitly conditional on five named contracts. They were not erased, weakened or silently claimed to have been proved by a successful `sorry` build:

- **ramified-multielement-kummer**: PerfectoidSpacesPartII’s design RA.5 covers the normalized unramified Kummer tower; the simultaneous ramified extension needed in §6.2 remains an explicit added contract.
- **common-cohen-extension**: DeformationAndDerivedPatchingAlgebra §1.10 gives individual coefficient choices and individual perfect-residue extensions. The compatible completed Cohen tensor preserving injectivity/purity in §6.1 is an explicit additional contract.
- **parameter-systems**: DeformationAndDerivedPatchingAlgebraPartII §K0.3 gives secant lists and their basic dimension/permutation/power API. The completion, maximal-dimensional quotient, finite-local and equal-maximal-ideal flat-local transports are retained explicitly in the supplier contract.
- **perfectoid-base-modification-domination**: SchemeAndStackFoundations §4.12 on main gives Noetherian integral modification domination. The stated qcqs-base version needed over the perfectoid integral model remains an explicit extension contract. STACKS line 4296 in the flattening text is the cited general scheme result; no perfectoid assumption is put on that supplier statement.
- **grauert-riemenschneider**: retained here as part of the acceptance record. The accepted README’s §7.7 uses its own degree-sensitive lci trace-extension target, supplied duality/upper shriek and `qeResolution`; that route does not invoke Grauert–Riemenschneider vanishing. STACKS line 3650 in the duality text was read with its factorization hypothesis, and the local-to-global Jacobian/trace extension is explicitly owned in §7.7.

The resolver’s one cross-roadmap lead is real as a publication-status limitation: **PerfectoidSpacesPartII is not on content main and has no indexed open content pull request**. It does exist as `packages/PerfectoidSpacesPartII/design/README.md`, where the cited RA sections and targets were read, and it occurs before this roadmap in the supplied merge order. The accepted scope and that ownership boundary are preserved; this port does not duplicate the analytical roadmap inside the commutative-algebra roadmap. Its preparation/publication is therefore still necessary to discharge the accepted supplier contract. The merge-order tool reports no direction defect. This is not a claim that the missing content folder exists at a pin or on main.

HH95, HH92 and BH93 retain the accepted package’s published-locator-only source status; their full texts were not independently retrieved or certified during this port. The cached legal ANDRE18B, BHATT18, BHATT12, HEITMANNMA18, HUNEKELYUBEZNIK and relevant STACKS passages were read at the cited critical assertions. No new source text or fetched code was executed. No suspicious instruction passage requiring action outside this job was encountered.

## Adversarial mathematics pass

These are fresh computations for this port, not a copied review table. They cover the definitions, conventions, theorem targets, API identities and the four worked examples, including both directions of the stated equivalences. A consistent instance is evidence against a particular error, not a proof of a deep admitted theorem; the remaining conditional supplier generalities are identified above.

| Statement | Instances tried | Values computed on each side | Result | Change |
| --- | --- | --- | --- | --- |
| Conventions: nonzero local rings, global zero ring | k; zero ring | m_k=0≠k; the zero ring has 0=1 and no prime ideals | Local exclusion and global inclusion agree with native classes | None |
| Conventions: linear rather than ring retraction | ℝ⊂ℂ | Re(1)=1; Re(i²)=−1 whereas Re(i)²=0 | Multiplicativity must not be required | None |
| Conventions: cochain shift and obstruction direction | id_ℤ; multiplication by 2 on ℤ | cone(id)=0, α=0; cone(2)=ℤ/2 in degree 0, α=1 in Ext¹(ℤ/2,ℤ)=ℤ/2 | Q→A[1] has the stated degree | None |
| Conventions: almost splitting versus an almost-category section | V=O_(completion ℚ₂(2^(1/2^∞))); a=m_V | v(2^(1/2^n))=2^(−n); each ε is a finite root combination, but any putative section has composite multiplier in m_V, hence never 1 | Elementwise ε-retractions are the required notion | None |
| Conventions: countable completion and universes | ℤ_(2); its completion | card ℤ_(2)=ℵ₀; card ℤ₂=2^ℵ₀, greater than ℵ₀; both carriers lie in Type 0 | Completion need not preserve the smaller cardinal bound | Corrected κ to κ^ℵ₀ for completions |
| Conventions: rooted almost ideals and ramification | π=2, π′=4; B′=ℤ₂⟦T,V⟧/(TV−2) | v(π^(1/2))=1/2, v((π′)^(1/2))=1; 2=TV∈m² | Root divisibility and mixed characteristic do not mean unramified | None |
| §0.1 SplitAlgebra definition | ℤ⊂ℤ[i]; ℤ⊂ℚ; k→0 | ρ(a+bi)=a and ρ(1)=1; Hom_ℤ(ℚ,ℤ)=0; in the zero target ρ(1)=0≠1 | Correct unit retraction test | None |
| §0.1 evaluation ideal and unit normalization | ℤ[i], functional λ(a+bi)=3a; ℚ(i), same λ | ev(λ)=3, image for its span is 3ℤ; over ℚ, (λ/3)(1)=1 | Only an invertible value normalizes the chosen functional | None |
| §0.1 composition, restriction and arbitrary base change | ℤ→ℤ[i]→ℤ[i,j]; base change to 𝔽₂ | constant-coefficient composite sends 1 to 1; base-changed projection (a+bi)↦a still sends 1 to 1 | Laws retain their specified scalar structures | None |
| §0.1 splitting iff purity for finite presentation | ℤ[i]; ℤ→ℚ | M⊗ℤ[i]≅M⊕M, m↦(m,0); (ℤ/2)⊗ℚ=0 and 1↦0 | The negative control is not pure | None |
| §0.1 finite localization and faithfully flat descent | ℤ→ℤ[i]; ℤ→ℤ×ℤ | local evaluation ideal is ℤ_(p) at every p; base-change ideal (1)(ℤ×ℤ)=ℤ×ℤ contracts to (1) | Finiteness gives the needed Hom comparison | None |
| §0.2 Splinter definition and integral purity | k; dual numbers k[ε]/ε²; R=0 | k has basis projections; ε²=0 with ε≠0 violates reducedness; for R=0 every algebra is 0 and ρ(1)=1=0 | Reducedness and global zero case are correctly separated | None |
| §0.2 node contraction and finite-cover failure | R=k[x,y]/xy; S=k[x]×k[y] | (x,y)(1,0)=(x,0); a multiplier in R would need constant term 1 on one component and 0 on the other | x∈(x+y)S but x∉(x+y)R | None |
| §0.2 normality of a splinter domain | k[t²,t³]⊂k[t] | S/R=k·t≠0; tensoring with k(t) gives 0, while a nonzero torsion submodule cannot embed in the domain S | The cusp cannot split | None |
| §0.2 characteristic-zero normal-domain equivalence | k[t] with char k=0; cusp | divided trace has value 1 on 1 for the normal example; t is integral over the cusp and absent from it | Both directions have a separating example | None |
| §0.3 ParameterSystem definition | k with []; k⟦X⟧ with [X²], [1]; k⟦X,Y⟧ with [X,X], [X] | length/dimension 0=0, radical 0=m; rad(X²)=(X); rad(1)=R≠m; rad(X,X)=(X)≠m; length[X]=1≠2 | Length and radical exclude different wrong lists | None |
| §0.3 parameter permutations and positive powers | k⟦X,Y⟧, [X,Y], [Y,X], [X²,Y³] | all lengths 2; all radicals (X,Y); quotient dimensions 0 | Native secant comparison has the intended normalization | None |
| §0.3 BigCMFor and regular-sequence equivalence | M=0; M=ℚ over ℤ_(2); M=k⟦X,Y⟧ | 0/m0=0; ℚ/2ℚ=0 despite ker(2)=0; R/(X,Y)=k≠0 with both successive scalar kernels zero | Nonzero maximal-ideal quotient is necessary | None |
| §0.3 quotient by first parameter | R=M=k⟦X,Y⟧; x=[X,Y] | M/XM=k⟦Y⟧; ker(Y)=0; final quotient k; dimensions 2 then 1 | Big CM descends to the indicated quotient | None |
| §0.3 monomial law on a module | R=M=k⟦X,Y⟧; t=1,2 | R/(X,Y)=k; XY survives modulo (X²,Y²) with basis 1,X,Y,XY | Both exponents produce nonzero classes | None |
| §0.4 BalancedBigCM definition and finite-module comparison | k; R/(X) over R=k⟦X⟧; M=0 | for k, empty list and M/mM=M; X·1=0 in R/(X); 0/m0=0 | Includes every nonzero vector space and excludes torsion and zero modules | None |
| §0.4 restriction along a finite injective local map | A=k⟦X²⟧⊂B=k⟦X⟧; C=B | X² acts injectively on C; C/X²C has basis 1,X and is nonzero; dim A=dim B=1 | Parameter radical and nonzero quotient are preserved | None |
| §0.5 completion balances | R=k[X]_(X), M=R; M=0 | M̂=k⟦X⟧, ker X=0, M̂/XM̂=k; completion of 0 is 0 | Nonzero quotient survives in the positive example | HEITMANNMA18 locator corrected to line 144 |
| §0.6 balanced over regular implies faithfully flat | DVR V with uniformizer ϖ; C=V or Frac V | ker ϖ=0 in both; V/ϖV=k≠0 whereas Frac V/ϖ Frac V=0 | Flatness alone does not supply faithfulness | None |
| §0.6 descending Tor argument | A=k⟦X,Y⟧, P=(X), C=A | N=A/(X); Koszul H₁(X;C)=0; Tor_i(A/P,C)=0 for i>0; ht P=1 while i can be 2 | Height and induction degree are distinct indices | None |
| §0.7 obstruction definition and finite-algebra application | ℤ⊂ℤ[i]; multiplication by 2 on ℤ | B/A=ℤ·i has Ext¹=0; the second map has Ext¹-class 1∈ℤ/2 | Algebra splitting agrees with derived-unit splitting | None |
| §0.7 faithful flat detection and adic detection | α=1∈Ext¹_ℤ(ℤ/2,ℤ); ℤ→ℚ; ℤ₂ reductions | α⊗ℚ=0 although α≠0; over ℤ₂ its images remain nonzero in Hom(ℤ/2,ℤ₂/2ⁿ[1]) | Faithfulness is necessary; all adic reductions detect this class | None |
| §0.8 dominating components | S=A×A/I, I≠0 | projection to A has composite kernel 0; projection to A/I has composite kernel I | Choose a component over the generic point | ANDRE18B locator corrected to line 589 |
| §0.8 g outside minimal primes over p | A=ℤ₂⟦X⟧, B=A[Y]/(Y²−X−2) | discriminant=4(X+2); g=X+2 mod 2 is X≠0; after inverting 2g the discriminant is a unit | p-part and horizontal discriminant are separate | None |
| §0.9 trace splitting and degree invertibility | ℤ⊂ℤ[(1+√5)/2]; K⊂K(√a); a=1 | ½Tr((1+√5)/2)=½∉ℤ; quadratic Tr(1)=2, Tr(√a)=0; a=1 gives degree 1 and Tr(1)=1 | The degree-two formula requires a nonsquare and an invertible degree | None |
| §0.10 dimension at most two and reflexive hull | DVR A, S=A[√ϖ]; k→k[ε]/ε² | S is free on 1,√ϖ, so S**=S; dual-number projection a+bε↦a sends 1↦1 | Source regularity does not require a reduced target | None |
| §1.1 endomorphism criterion | R=𝔽₂⟦X⟧, σ(X)=X², r=0; σ=id | σʲ(m)R=(X^(2^j)) with intersection 0; identity has intersection (X)≠0 | The contraction condition distinguishes the two endomorphisms | None |
| §1.1 nonzero-r branch | R=ℤ₂⟦X⟧, σ(X)=X², r=2 | σʲ(m)R=(2,X^(2^j)); intersection (2); intersection (2ⁿ)=0; basis 1,X over σ(R) | The rR bound and division by regular r have the right form | None |
| §1.2 complete pure split and PureAlgebra | k→k[i]; ℤ→ℚ; diagonal R→R×R | basis projection gives ρ(1)=1; (ℤ/2)⊗ℚ=0; tensor diagonal m↦(m,m) retracts by projection | Zero module is an allowed test but does not suffice alone | None |
| §1.2 Matlis route | R=k; E=k; S=k×k | Hom_k(S,k)=k² and ev(a,b)=a+b; the functional (1,0) maps to 1; End_k(E)=k | Restriction and evaluation are the same map under adjunction | None |
| §1.3 Frobenius splitting | 𝔽₂⟦X⟧⊂𝔽₂⟦X^(1/2)⟧; p=3 | bases (1,X^(1/2)) and (1,X^(1/3),X^(2/3)); coefficient projections give 1↦1 and other basis elements↦0 | Includes p=2,3 with the correct ranks | None |
| §2.1 adic splitting criterion | A=ℤ,I=ℤ,S=ℤ/2; A=ℤ,M=ℤ/2 | all I-quotients are 0 while Hom(S,ℤ)=0; Hom(M,ℤ/2ⁿ)=ℤ/2 with transition 0 | Jacobson condition is necessary; pro-isomorphism is not levelwise | None |
| §2.2 splitting modulo pᵐ | A=ℤ₂,g=1,m=1,2 | pg=0 mod 2 but pg=2≠0 mod 4; A/pᵐ→A/pᵐ is id with retraction id | Detection begins at m≥2 and reduces to m=1 | ANDRE18B locator corrected to line 589 |
| §2.3 André unramified theorem | k=𝔽₂,n=0,B=ℤ₂[√2] | ρ(a+b√2)=a; Tr(a+b√2)=2a; half-trace is integral here although 2 is not a unit | Zero-variable case is included without dividing by a unit in the general argument | ANDRE18B locator corrected to line 589 |
| §3.1 coefficient-compatible presentations | ℤ₂⟦T,V⟧/(TV−2); generator p−p²−X² | 2=TV∈m²; (1−p)^(−1)(p−p²−X²)=p−X²/(1−p) | Constant term can be removed by a coefficient unit | None |
| §3.2 cover construction and Frobenius | A₀=ℤ₂,A=O_K; 2^(1/4) mod 2^(1/2) | F(2^(1/4))=2^(1/2) mod 2, nonzero since 1/2<1; root valuations 2^(−n)→0 | Frobenius is not the zero map; root ideal is not finitely generated | None |
| §3.3 almost faithful flatness | M=ℤ₂/2; A=O_K | 1≠0 in A/2; 2^(1/2)·1≠0 since valuation 1/2<1; Tor_i^ℤ₂(M,A)=0 for i>0 | Residue fibre is not almost zero | None |
| §3.4 obstruction detection | A₀=ℤ₂,g=1,m=2,3; α=0 | p²g=4=0 mod 4 and 4≠0 mod 8; Ann(0)=whole ring | m≥3 and nonzero obstruction are essential in the route | None |
| §3.5 annular splitting on the actual unit | B₀=A₀; unrelated Q₀=A₀[1], α=id, A₀=ℤ₂,m=3 | actual cone and α are 0; unrelated α maps to 1 in A∞/8 and 2^(1/2)·1≠0 | The class must belong to the specified algebra unit | None |
| §3.5 constant annulus | g=1,n=1,2 | U=2 and U=4 respectively; A∞⟨U⟩/(U−2ⁿ)=A∞ at both levels; transitions=id | The tower specializes to the identity comparison | None |
| §3.5 faithful finite étale trace without degree division | 𝔽₄=𝔽₂[ω],ω²+ω+1=0 | Tr(1)=0; Tr(ω)=ω+ω²=1; z↦Tr(ωz) sends 1↦1 | Faithfulness supplies a functional even when the degree vanishes | None |
| §3.6 finite-amplitude limit argument | constant tower V; zero perfect complex | lim V=V, lim¹ V=0; both Hom groups for Q=0 equal 0 | Compatible with the finite-filtration route | None |
| §3.7 Bhatt mixed-characteristic splitting | B=ℤ₃⟦X⟧[Y]/(Y²−X−3); p=2 version | basis 1,Y, projection a+bY↦a; discriminants 4(X+3) and 4(X+2) | Splitting survives both residue characteristics | None |
| §4.1 AlmostCMFor definition | B=ℤ₂,D=O_K,π=2; D=0; B=𝔽₂⟦X,Y⟧/(XY,Y²),π=1 | colon (0:2)=0, J=m_D⊄2D; zero D has J=0⊆mD; (0:X)=(Y)≠0 and J=D does not kill it | Both survival and colon clauses are needed | None |
| §4.1 unit roots and dimension zero | D=B=k,π=1,x=[] | J=D; mD=0; no colon conditions; D/mD=k≠0 | Unit-root almost CM agrees with ordinary big CM | None |
| §4.2 algebra modification, k=0 | R=k⟦X⟧, T=R[t]/Xt, relation X·t=0 | T/tT=R sends t,t²↦0; T/Rt retains t²≠0; constant 1↦1 | The ideal quotient differs from the scalar-module quotient | None |
| §4.2 universal extension law | R=T=k⟦x,y⟧, relation yx=xy | T′=R[Z]/(x−xZ); Z↦1 gives x−x=0 and fixes every constant | Source and target of the extension are correct | None |
| §4.2 zero relation and badness | R=T=k⟦x,y⟧, y·0=x·0; T=R/(x), relation x·1=0 | first modification R[Z]/xZ has Z≠0 and xZ=0, retracted by Z↦0; second modification is 0 with 1∈m0 | Modifications can be noninjective or bad | None |
| §4.3 no-bad-double-sequence criterion | R=S=k⟦X⟧,T=R; T=R/(X) | map to R keeps 1∉(X); for the quotient, one step gives 0 and 1∈m0 | Both directions distinguish a receiving balanced algebra | None |
| §4.3 cardinality in the completion step | countable R,T,S | modification algebra bound κ=ℵ₀; inverse-limit completion bound κ^ℵ₀=2^ℵ₀ | The previous bound did not cover completion | Corrected both §4.3 and Conventions |
| §4.4 controlled denominators | p=2,e=e′=0,m=1,δ=2; π unit; k=0 | variable exponent 1/2, degree-two exponent 1; next variable exponent 3/2; π unit makes every π^(−a)D=D; k=0 forces α(u₁)=0 when x₁ regular | Exponent and zero-variable laws agree | None |
| §4.5 almost CM to balanced existence | δ=2,ℓ=2,p=2,h=1; D=O_K | C=2(1+2)=6; 6/16=3/8≤1/2 but 6/8=3/4>1/2; root valuation 1/2<1 excludes membership in 2D | Finite-witness root choice is quantitative | None |
| §4.6 almost CM criteria | A=ℤ₂,x₁=4,π=2; finite A⊂B | 2∈(π)∩A but 2∉4A; m_A B has radical m_B, so equality with m_A D implies equality with m_B D and conversely by a positive power | Survival test and quotient scalar are compatible | None |
| §4.7 maximal-dimensional component reduction | B=ℤ₂⟦X,Y⟧/(2X,2Y), x=(2+X,Y) | dim B/(2)=2, dim B/(X,Y)=1; B/(2+X,Y)=ℤ₂/4; images (X,Y) versus (2,0) | The smaller component has wrong parameter length and zero second action | None |
| §4.7 completion and perfect-residue transport | k[X]_(X)→k⟦X⟧; k⟦X⟧→K⟦X⟧ | parameter X has radical (X) and quotient dimensions 0 on each side; extended maximal ideals equal (X) | Only the stated flat-local transport is used | None |
| §4.7 reduced p-torsion-free quotient | B=ℤ₂[ε]/ε²; B_red=ℤ₂ | if 2b nilpotent then 2ⁿbⁿ=0 implies bⁿ=0; B_red has ker(2)=0 | p-torsion-freeness survives reduction under the explicit hypothesis | None |
| §4.8 mixed-characteristic existence and characteristic-p branch | B=ℤ₂⟦X,Y⟧/(2X,2Y); B₁=ℤ₂⟦X,Y⟧/(2X) | maximal-dimensional component of B is 𝔽₂⟦X,Y⟧; B₁ also has quotient ℤ₂⟦Y⟧ of dimension 2 | Characteristic zero of B does not determine its chosen component | None |
| §4.8 parameter-subring finiteness and injectivity | B=ℤ₂⟦Y⟧, parameters (4,Y),A=ℤ₂⟦T⟧ | T↦Y is injective, residual fibre B/(2,Y)=𝔽₂ finite; dimensions both 2; pg=2 for g=1 is not in (4) | Coefficient map and surviving scalar are retained | None |
| §4.9 absoluteIntegralClosure_charP | R=A=𝔽₂,n=0; regular R=𝔽₃⟦X⟧ | R⁺=𝔽̄₂, empty list, quotient R⁺≠0; in the DVR example X acts injectively and lying over makes R⁺/XR⁺≠0 | Gorenstein cover, locality and prime characteristic remain explicit | None |
| §4.9 filtered local-cohomology vanishing | R=𝔽₂⟦X⟧; i=0 | H⁰_(X)(R′)=0 for every finite domain R′⊂R⁺ because X is regular; colim 0=0 | The finite-intermediate-ring quantifier has the required form | None |
| §4.10 equal-characteristic-zero existence | ℚ[ε]/ε²→ℚ; model ℤ[1/6][X] at X=0 | dim 0 and mℚ=0; for p>3 the local fibre has dim 1 and parameter X; fibres at 2,3 are empty | An existence algebra may kill nilpotents; specialization uses actual base points | None |
| §4.11 exists_balanced | 𝔽₂[ε]/ε²; regular R | C=𝔽₂ gives mC=0,C≠0,empty list; C=R works for a regular local ring | No domain or reducedness hypothesis may be inserted | None |
| §4.12 weak functoriality from almost squares | identity square; π=2,π′=4 in O_K | π^(1/2ⁿ) divides (π′)^(1/2ⁿ) with quotient 2^(1/2ⁿ); 2^(−1/2ⁿ)=2^(1/2ⁿ)4^(−1/2ⁿ); reverse quotient has negative valuation | Divisibility has the needed direction for denominator transport | None |
| §5.1 directSummand | R=0; ℤ₂→ℤ₂[√2] | unique map has ρ(1)=0=1; coefficient projection on the quadratic algebra sends 1↦1 | Global zero ring and mixed characteristic agree with Lean | None |
| §5.1 regularity versus normality | A=𝔽₂[a,b,c]/(a³+b³+c³), Frobenius cover | c²≠0 mod(a,b), but z⁴=z(x³+y³)∈(x²,y²)S; partial derivatives x²,y²,z² have only the vertex as common affine zero | A normal nonregular source can fail contraction | None |
| §5.2 arbitrary flat products | ℤ^I; empty product | ker(n:ℤ^I→ℤ^I)=0 for n≠0; empty product is 0 with m0=0 | Flatness permits empty product, faithfulness over nonzero base does not | None |
| §5.2 coherence negative control | R=k⊕V,V²=0; M=∏R | (x₁,x₂,…)∈ker(x₀) but not VM, whose finite sums use only a fixed finite-dimensional subspace of V | Tensor injectivity fails without coherence | None |
| §5.3 finiteCover_flatDomination | R=ℤ₂,S=R×R/2; R=k | projection to R gives T=R, T/2T=𝔽₂≠0; the other factor has 2T=0; over k a residue field L≠0 is faithfully flat | Dominating components are selected before taking products | None |
| §5.4 absoluteIntegralClosure_split | K a field; complete DVR V | K⁺=K̄ and basis projection gives 1↦1; finite domain V-subalgebras are torsion-free hence free, with coefficient projection value 1 | Completeness applies to the infinite union after purity | None |
| §5.5 contracted ideals | ℤ⊂ℤ[i],I=(2); node negative control | 2ℤ[i]∩ℤ=2ℤ; node has x∈(x+y)S∩R but x∉(x+y)R | Regular source is used for contraction | None |
| §5.5 monomial_noncontainment and its iff variant | k⟦X,Y⟧,m=0,1,2,n=2; d=0 | 1 and XY survive mod(X²,Y²); X²Y²=0 there; empty product=1 and power ideal=0 for every m,n | m<n works in all dimensions; iff requires positive dimension | None |
| §6.1 completion preserves purity | k[X]_(X)→k[X,Y]_(X,Y) | Y↦0 retracts both the original map and k⟦X,Y⟧→k⟦X⟧; Xⁿ maps to Xⁿ | The completed retraction has the correct base action | None |
| §6.1 common coefficient extension contract | k=k′=𝔽₂; k=𝔽₂,k′=𝔽₂(t) | k′⊗_k k^perf=k′ in both examples; completion of the coefficient tensor is the target strict Cohen ring in the identity example | Examples agree; general contract remains an accepted supplier condition | Recorded as unresolved supplier extension |
| §6.2 SeparableResidueMap | 𝔽₂→𝔽₄; 𝔽₂→𝔽₂(t); 𝔽₂(t)→𝔽₂(t^(1/2)); id | separable degrees 2 and 1 over basis t; inseparable degree 2 in the third; identity degree 1 | General separability includes transcendence and excludes the purely inseparable map | None |
| §6.2 weakFunctoriality_regularTarget | identity of ℤ₂⟦T,V⟧/(TV−2); original André target | C=C′=B′,γ=id gives both composites b↦b; substituting V=U−T yields T²−TU+2=2−TV | Ramified regular targets are included | None |
| §6.3 parameter-colon descent | B=B′=C=C′=k⟦X,Y⟧ | (0:X)=0 and ((X):Y)=(X); contractions through both identity algebras remain those ideals | Colon and nonzero quotient conditions match Cohen–Macaulayness | None |
| §6.4 pureSubring_cohenMacaulay | C₂ on ℤ₃⟦X⟧; trivial group; S₃ on ℤ₅⟦X₁,X₂,X₃⟧ | invariants ℤ₃⟦X²⟧, projection a+bX↦a; trivial average=id; S₃ average X₁↦(X₁+X₂+X₃)/3,1↦1; at p=2,1/2 is undefined as an inverse | Includes a nonabelian group and checks the Reynolds denominator | None |
| §7.1 structureComplex definition | Spec 𝔽₂; empty scheme; Spec k[ε]/ε² | terms in degrees −1,0,1 are 0,𝔽₂,0; empty scheme gives 0,0,0; dual-number degree zero retains ε≠0 | The actual structure sheaf is used | None |
| §7.1 derivedUnit definition and identity law | id; finite diagonal; Spec ℤ/2→Spec ℤ | unit=id; a↦(a,a) retracted by projection; 2↦0 in the quotient so no retraction can send it back to 2 | The specified scheme map fixes the unit | None |
| §7.1 DerivedSplinter definition and affine comparison | field k with a proper elliptic curve E; empty cover | RΓ(E,O)=k[0]⊕k[−1] and projection retracts the degree-zero unit; empty cover has RΓ=0 and k→0 does not split | Higher cohomology alone does not obstruct splitting; surjectivity matters | None |
| §7.1 reducedness of a derived splinter | A=k[ε]/ε² and Spec k→Spec A | H⁰-unit sends ε≠0 to 0; a left inverse would give ε=0 | Reduction cover rules out nilpotents before applying the finite-cover law | Added the proof and the negative-control Check |
| §7.1 characteristic-zero splinter versus derived splinter | elliptic cone ℂ[x,y,z]/(x³+y³+z³) | normal source gives finite-cover splittings; resolution has R¹φ_*O=ℂ at the vertex, violating rational-singularity vanishing | Finite and proper tests are different | None |
| §7.2 proper cohomology and perfectness | finite B over regular A; proper elliptic curve; affine line | RΓ(Spec B,O)=B[0]; H⁰(E)=H¹(E)=k,Hⁱ(E)=0 for i≥2; H⁰(𝔸¹)=k[T] infinite-dimensional | The last example excludes nonproper morphisms | Supplier changed to JacobianChallenge Layer C |
| §7.3 completed-local and multisection reductions | Spec(A×A)→Spec A; A=k | choosing either component gives Spec A; composite unit a↦(a,a)↦a equals id; completed local field is k | The chosen component dominates the base | None |
| §7.4 proper perfectoid almost splitting | Y=Spec(A/p), A=O_K; identity Y=Spec A | first unit kills p, so ε-retraction would force εp=0 although v(εp)>0 is finite; identity has r_ε=ε·id | Generic surjectivity excludes the false example | None |
| §7.4 qcqs domination contract | S=Spec k⟦X,Y⟧; X=Bl_(X,Y)S; U=S∖{m} | blow-up S′=X already dominates, restriction over U=id; centre is generated by 2 elements | Finite-type centre condition agrees with the scheme theorem | General qcqs extension remains a supplier condition |
| §7.4 arbitrary perfectoid-field almost ideal | K=completion ℚ₃(μ_(3^∞)) | v(ζ₃−1)=1/2>0; splitting field of Z³−3 has group S₃ of order 6, while finite cyclotomic subextensions are abelian | K°° exists without a chosen cube root of 3 | None |
| §7.5 cohomology-killing finite cover | elliptic curves in characteristics 2 and 3 | [2]* on H¹(O)=2=0; [3]*=3=0; identity acts by 1≠0 | Finite covers kill the stated positive truncation in this amplitude-one case | None |
| §7.6 splinter_iff_derivedSplinter_charP | k=𝔽₂; node over k; dual numbers | field passes both tests; node contraction fails both; reduction cover kills ε so dual numbers fail the derived test and reducedness | Both implications respect the same reducedness convention | Made the reducedness step explicit |
| §7.7 trace lemma and characteristic-zero theorem | K⟦x⟧⊂K⟦y⟧,y²=x; Spec L→Spec K | c(a+by)=b; (2y·c)(1)=2,(2y·c)(y)=0; divided functional sends 1↦1; field trace Tr(1)=[L:K]=e | Jacobian section agrees with trace, not the coefficient functional alone | None |
| §7.7 twist direction and degree normalization | blow-up of Spec K⟦x,y⟧; square map ℙ¹→ℙ¹ | generic degrees 1 and 2; blow-up relative line O(E) has Jacobian vanishing order 1; square-map canonical pushforward rank 2 versus target rank 1, trace composite=2 | Positive exceptional twist and generic degree are necessary | None |
| §7.8 derivedDirectSummand | blow-up at maximal ideal in dimensions 0,1,2 | for d=0, Rees=k⊕0⊕⋯ and Proj=∅,RΓ=0; for d=1 blow-up=id; for d=2 H⁰=A,Hⁱ=0 for i>0 | Surjectivity excludes exactly the dimension-zero blow-up | None |
| Worked examples: node, ramified map, modification, monomial | All four examples in the README | constants 1≠0 across the node; p=T(U−T); t²=0 in T/tT but t²≠0 in T/kt; XY≠0 and X²Y²=0 mod(X²,Y²) | Their computed values agree with their respective layer statements | None |


Pull request: #1735 (roadmap/direct-summands-and-big-cohen-macaulay at aa4beac)
