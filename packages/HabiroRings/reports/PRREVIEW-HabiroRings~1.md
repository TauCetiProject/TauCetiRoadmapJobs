# Review of HabiroRings (pull request #1425 at bde6585)

**Verdict:** accepted

## R01 (P3) — Make the solid-theory dependency lists match their proof routes

**Location:** `TauCetiRoadmap/HabiroRings/README.md:619`, `:643`, `:697`. The last target begins, “Assume the preceding unit, profile tensor and resolution contracts.”

**Claim:** These targets use the product/tower comparison, spectral null-family formula and preceding countable tensor theorem, respectively, but their individual `Needs` lists omit those direct inputs. The global supplier contract does name them, so this is a documentation defect, not an unowned prerequisite.

**Witness:** §2.9 uses the split product tower; §2.10 uses the null-family comparison; §2.12 reduces free resolutions to countable block tensors. Their owners are SolidAnalyticRings §§3.1–3.4, §§5.1–5.4 and local §2.11.

**Repair:** Add SolidAnalyticRings §§3.1–3.4 to §2.9; §§5.1–5.4 to §2.10; and local §§2.9–2.11 to §2.12. Keep the separate size, balancing and uniform-bound restrictions. Tested against the singleton-block case: the countable tensor step invokes §2.11, while the finite quotient ranks in §2.9 are 1 and 3. These additions supply exactly the cited steps and introduce no later supplier.

## Verified sound

Read the complete 46-target README and the complete Lean file at the specified head. The assessment is of the proposed statements and proof routes, conditional on the named suppliers' stated contracts; it is not a claim that the future library has been implemented. No P1 or P2 defect was found. The one P3 note does not block human final approval.

**Gate and read-only checks.** The head is `bde6585ac94abe68a5fbe7264ba71f8f9d473403`. The diff outside `TauCetiRoadmap/HabiroRings` is empty, and the worktree remained unchanged. The worker's gate at this head passed every scanner, dependency, metadata, stray-file and targeted-build check:

```text
gate HabiroRings: set_option=0 blob=0 latex=0 tex=0 prnum=0 sorry-data=0 sorry-examples=0 residue=0 private-paths=0 imports=0 mathlib-subimports=0 no-import-mathlib=0 lean-lines=0 forbidden=0 dropped=0 readme-ids-missing=0 empty-sections=0 round-labels=0 long-fences=0 layer-ids=0 target-ids=0 depcheck=0 metadata=0 stray-files=0 dirty=0 outside-folder=0 source-material=0 build=0 OK
```

The independently rerun dependency command, with `--movable` and the supplied order/content inputs, returned:

```text
depcheck: 204 roadmaps, 1494 edges, 0 problem(s)
```

There was no UPWARD or CYCLE line. All `Needs` lines were read, including the second obstruction dependency line in §7.4. Downstream references to HabiroNahmSeries, HabiroCohomologyFoundationsPartII and RefinedTraceMethods are consumers, not suppliers.

**Lean and headline coverage.** Direct `lake env lean` elaboration passed with exactly seven `sorry` warnings. A separate signature probe checked all 15 named declarations and the local coefficient-algebra instance. No required binder disappeared: in particular finite generation and complete separatedness remain in `mapUnique`, positive m remains in `laurent_regular`, all three vertex memberships remain in `height_one`, discriminant support remains in the localization theorem, and invertibility plus the actual quotient equivalence remain in the completed-line theorem.

The seven statable milestones are present: arbitrary-ideal étale lifting (§0.2), unique maps out of completed étale lifts (§0.5), the localization free resolution (§2.2), Laurent-factor regularity on arbitrary coefficient modules (§2.4), height one of the reduced index (§3.3), discriminant-support étaleness (§5.8), and triviality of an invertible power-series module with trivial first fiber (§6.5). Each has `sorry`, native carriers and the same generality as the README. The seven one-tactic probes (`simp`, `rfl`, `infer_instance`, or an available hypothesis) all failed to close their goals. Inspection of the relevant pinned lemmas also found no single existing lemma proving these assembled statements. The eight supporting definitions have real bodies and are used by these milestones; the local instance fixes the constant-coefficient action.

The other headline families are explicitly withheld in the module docstring: regular-principal enhanced universality; Laurent/scalar restriction and ordinary/derived comparisons; finite enhanced monoidal descent; spherical and spectral completion; solid idempotence, null families and bounded-below tensor closure; the ordinary relative ring, Taylor equalizer, untwisting, classical/GSWZ comparisons and completed base change; completed scalar extension, actual indexed lines, Picard vanishing and supported field comparison. Their missing enhanced/spectral/relative-ring/indexed-line carriers are identified. The finite-stage example additionally needs the q-Witt carrier. No arbitrary predicate, sorry-defined carrier, or weakened scalar identity stands in for these constructions.

**Source sample: all 15 requested targets.** No README locator is marked unverified. The cached legal texts were read at the following locators; mathematical assembly beyond the cited result is distinguished from the source statement.

| Sample target | Locator and extracted evidence | Assessment |
|---|---|---|
| 0.1 | Stacks04D1 line 18048, Lemma 10.143.10, p.385; Q line 674, Theorem 2.9, pp.16–17 | Arbitrary quotient ideal, étale algebra, actual reduction equivalence. The marking and conjugated-map API are the roadmap's explicit packaging. No finite-module restriction is introduced. |
| 0.5 | Stacks0ALI line 1299, Lemma 15.11.2, pp.28–29; HA line 46752, Definition 7.1.3.17 and Proposition 7.1.3.18, p.1219; Q line 709 | Nilpotent rigidity and static mapping spaces support the stated assembly. Completion uses the pinned lifting and separatedness lemmas; Q alone is not asserted to prove arbitrary-target universality. |
| 0.6 | Stacks0ALI line 12293, Lemma 15.93.18/tag 0920, p.267; HA line 46752; Q line 709 | Principal Koszul tower, ordinary/static algebra maps and the coefficient specialization. The roadmap supplies the regular-principal argument for arbitrary B and unbounded complete C. |
| 2.1 | Q line 3545, B.1 and Lemma B.2, pp.77–78 | Reflection, factorial/divisibility towers and derived quotients. The Laurent convention is transported from HCF §0.1, with the sign of P_n recorded. |
| 2.7 | Q line 3545 and line 3607, B.1–B.4, pp.77–79; HA line 46530, Theorem 7.1.2.13, p.1212 | Spectral completion and homotopy detection retain the sphere; the Hℤ-linear comparison is relative tensor, not an absolute sphere/Hℤ identification. |
| 2.9 | Q line 3666, proof of B.8, pp.79–80; T line 3832, numbered 5.3 inside §5.1, printed p.86 (PDF p.90) | Source finite-sphere quotient computation and null generator agree. General split-tower and balancing machinery is explicitly supplied by SolidAnalyticRings, not inferred merely from the generator. |
| 2.10 | Q line 3690, proof of B.8, p.80; Bosco line 3488, Lemma A.4, p.93 | Proper profiles/null-family model agree. Bosco's ordinary complete-ring, abelian setting is retained as a model; the spectral statement consumes its stronger supplier contract. |
| 2.11 | Q line 3700, final proof of B.8, p.80; Bosco line 3459, Proposition A.3, pp.92–93 | Two-index comparison and boundedness convention agree. Polynomial factorial divisibility is separately imported from QSeries §3.1, including specializations at roots of unity. |
| 3.2 | Q line 583, proof of Corollary 2.4, pp.14–15 | Vertices are singleton divisors and maximal prime chains; nonmaximal overlaps remain in reconstruction, not as extra reduced vertices. |
| 3.4 | Q line 583, same proof, pp.14–15 | Consecutive p-edges determine each chain; p-free part and maximal exponent determine its unique containing chain. |
| 5.1 | Q line 674, Theorem 2.9 and proof, pp.16–17 | Standing étaleness is preserved, the reduction is derived before staticity, transitions are Frobenius, and the limit's ordinary presentation is distinct from rebuilding the supplied enhanced lift. |
| 5.6 | Q line 727, Remark 2.10, p.17; W line 1583, Lemma 2.46, pp.31–32 | Relative q-Witt base change supports the completed assembly. Neither source allows replacing completion by an ordinary tensor merely because the map is flat. |
| 6.6 | G line 415, Definition 1.4/Theorem 2, p.10; G line 465, Proposition 1.5(f), p.11; G line 2213, proof p.43; G line 2285, proof p.45 | G gives the arithmetic motivation, but the source defects below are not used as proofs of global invertibility. HNF's actual global lines, inverse pairings and integral evaluation are explicit inputs. Vanishing is then the local §§6.4–6.5 deduction. |
| 6.7 | G line 443, Theorem 2, p.10; G line 2213, proof p.43 | The cited theorem alone is not a field-base-change theorem. The additional scalar equivalence and coherences are explicitly owned by HNF §3.16 and transported along κ. |
| 7.3 | Q line 647, 2.7/Remark 2.8, pp.15–16; W line 1739, Corollary 2.52 and proof, pp.35–36 | Completed Frobenius, rather than a global Adams map on R, is the correct input. The cubic computation below independently verifies the obstruction. |

Also checked MW line 1748, numbered 4.1, pp.41–42 (5 February 2026 version), for the solid null-sequence description, and HA line 7363, Proposition 2.2.1.9, for tensor-compatible localization. Appendix B's extracted page separators are not reliable PDF page numbers; the appendix locator was checked against the cached PDF's printed pp.77–80. The statement/proof numbering above follows the versions recorded by the package.

**Pinned declarations and duplication.** The manifest pins are Mathlib `6b7abb3c7686292736be2955bd3eb9ebf63b456a` and Tau Ceti `a91d3aafa8cd3e6bc33dfde0d7677ed0f1625039`. The declaration-existence probe successfully elaborated 63 fully qualified Mathlib names used by the README. Source inspection included the following native definitions and decisive lemmas (paths are within the pinned library repositories):

| File and line | Declaration opened | Scope retained |
|---|---|---|
| `Mathlib/RingTheory/Etale/Basic.lean:205` | `Algebra.Etale` | Finite presentation and formal étaleness, not module finiteness. |
| `Mathlib/RingTheory/AdicCompletion/Basic.lean:56` | `IsAdicComplete` | Includes separatedness; no extra Hausdorff hypothesis silently lost. |
| `Mathlib/RingTheory/AdicCompletion/Basic.lean:171` | `AdicCompletion` | Compatible quotient families, not a new opaque completed carrier. |
| `Mathlib/RingTheory/AdicCompletion/Completeness.lean:151` | `pow_smul_top_eq_ker_eval` | Requires finite generation. |
| `Mathlib/RingTheory/AdicCompletion/Completeness.lean:181` | `isAdicComplete` | Same finite-generation restriction. |
| `Mathlib/RingTheory/AdicCompletion/Completeness.lean:195` | `ker_evalOneₐ_eq_map` | First quotient kernel, with finite generation. |
| `Mathlib/RingTheory/AdicCompletion/Algebra.lean:401` | `liftAlgHom` | Compatible maps to all finite quotients. |
| `Mathlib/RingTheory/Smooth/AdicCompletion.lean:94` | `exists_mkₐ_comp_eq_of_isAdicComplete` | Maps from E; not already the target's map from its completion. |
| `Mathlib/RingTheory/Unramified/Basic.lean:161` | `ext_of_iInf` | Formal unramifiedness and zero intersection of powers. |
| `Mathlib/LinearAlgebra/Finsupp/LinearCombination.lean:52` | `Finsupp.linearCombination` | Finite-support linear extension; no telescope exactness theorem. |
| `Mathlib/RingTheory/Localization/Defs.lean:245` | `IsLocalization.mk'` | Actual numerator/denominator fraction. |
| `Mathlib/RingTheory/PicardGroup.lean:77` | `Module.Invertible` | Invertibility through the evaluation/contraction map. |
| `Mathlib/RingTheory/PicardGroup.lean:236` | `free_iff_linearEquiv` | Converts freeness to an actual rank-one equivalence. |
| `Mathlib/RingTheory/PicardGroup.lean:276` | `bijective_of_surjective` | Both modules invertible; applies after Nakayama supplies surjectivity. |
| `Mathlib/RingTheory/Nakayama.lean:228` | `LinearMap.surjective_of_surjective_comp_mkQ` | Finite target and ideal contained in Jacobson radical. |
| `Mathlib/RingTheory/PowerSeries/Inverse.lean:109` | `isUnit_iff_constantCoeff` | Works for arbitrary coefficient rings; supplies X in the Jacobson radical. |
| `Mathlib/NumberTheory/NumberField/Discriminant/Different.lean:191` | `not_dvd_discr_iff_isUnramifiedIn` | Prime hypothesis and ring-of-integers/integral-closure setting. |
| `TauCeti/RingTheory/Cyclotomic/Lift.lean:225` | `conjugateResiduesRingHom` | All conjugates with prime/primitive-root hypotheses. |
| `TauCeti/RingTheory/Cyclotomic/Lift.lean:385` | `conjugateResidues_lift` | The same full tuple, not a selected finite-field factor. |

The ownership search used objects (completion, marked lifting, cyclotomic index, profile tensors and indexed lines), not just proposed names: `roadmaps grep`/`show`, the main checkout, the supplied open heads, the board packages, and pinned source searches. No other readable roadmap declares these fully qualified HabiroRings Lean names. The board's HabiroRings package is the same owner, not competing work. Main-branch shape comparisons included DerivedModuleAlgebra, EnhancedDerivedSheaves and GeneralizedCohomology.

**Resolved supplier ownership.** The 11 citation-scanner leads are not missing dependencies: five are declarations of this Lean file, five are DerivedModuleAlgebra's planned completion declarations, and the remaining algebraization name is a non-consumed ownership deferral to DerivedDeRhamCohomology §1.12. Cross-roadmap citations resolve as follows:

| Owner and section | Readable witness | What this roadmap consumes or adds |
|---|---|---|
| DerivedModuleAlgebra §§1.1–1.5 | `TauCetiRoadmap/DerivedModuleAlgebra/README.md:1573`, `:1666`, `:1693`–`:1855` | Enhanced module limits, derived completeness, reflection/Nakayama and regular-principal quotient comparison. General marked algebra maps are the additional interface here. |
| DerivedDeRhamCohomology §1.12 | `TauCetiRoadmap/DerivedDeRhamCohomology/README.md:614` | Algebraization stays with this owner; §0.6 does not depend on it. |
| SchemeAndStackFoundations §0.23a | `TauCetiRoadmap/SchemeAndStackFoundations/README.md:1508` | Universal-homeomorphism étale equivalence; local §0.3 transports its affine marked form. |
| EnhancedDerivedSheaves | `TauCetiRoadmap/EnhancedDerivedSheaves/README.md:1294`, `:1456`, `:1494`, `:1842` | Coherent towers, algebra/module objects, monoidal localization and concrete-spectrum/derived-module comparisons, not just triangulated carriers. |
| BordismFormalGroups F6.5; GeneralizedCohomology G2.1–G2.7 | `TauCetiRoadmap/BordismFormalGroups/README.md:1526`; GeneralizedCohomology Layer G2 | Coherent categorical/monoidal models and concrete spectra. No geometry or trace target is imported. |
| HabiroCyclotomicCompletions §§1.1–1.5, 2.3, 3.1, 3.3, 4.1, 4.3, 5.1–5.3 | `TauCetiRoadmap/HabiroCyclotomicCompletions/README.md:204`, `:878`, `:935`, `:1061`, `:1161`, `:1310`, `:1955`, `:2083`, `:2177` | Ordinary polynomial completion, units, roots, intersections, modules and components remain there; the Laurent-derived and scalar-restriction adapters here are different statements. |
| ArithmeticStatisticsPartIV §3.2; QSeriesPartitionsAndMockModularForms §3.1 | `TauCetiRoadmap/ArithmeticStatisticsPartIV/README.md:128`; `TauCetiRoadmap/QSeriesPartitionsAndMockModularForms/README.md:400` | Gaussian polynomial versus denominator-cleared product are separate existing suppliers; neither is rebuilt here. |
| QWittVectors §§1–6, especially 3.2a and 6.1–6.3 | `TauCetiRoadmap/QWittVectors/README.md:516`, `:841` | Prime-generator formula has m>1; completed Frobenius naturality includes nonflat base maps and linearization. No global Frobenius on arbitrary R is assumed. |
| HabiroCohomologyFoundations §§0.1–0.3 | `TauCetiRoadmap/HabiroCohomologyFoundations/README.md:274`–`:416` | Exact reflection, detection, finite reconstruction, static marked stages, transitions and limit. These sections construct their specialization independently, so no return edge to general Layer 0 or §3.5 here is needed. |
| SolidAnalyticRings §§1.1–6.3 | `TauCetiRoadmap/SolidAnalyticRings/README.md:345`–`:659` | Product/split towers, balanced comparison, independent bounds, null families and uniform realizations. The Habiro factorial application and its idempotence are owned here. |
| VStackSheavesAndLisseCategories VS2.1 | `TauCetiRoadmap/VStackSheavesAndLisseCategories/README.md:587` | Ordinary solid abelian/derived comparison only; not a substitute for the spectral contract. |
| HabiroNumberFields §§2.1–2.4, 3.8–3.11, 3.14, 3.16 | `TauCetiRoadmap/HabiroNumberFields/README.md:598`–`:691`, `:1029`–`:1094`, `:1130`–`:1179` | Full coefficient factors, actual global invertible lines, pairings, integral constant evaluation and supported scalar equivalences. Local κ-transport and the first-fiber deduction are additional here. |

The ten announced gap slugs were checked against the package plan and these actual supplier sections. The displayed supplier contracts now provide the consumed statements: the prime-generator consequence has its precise earlier owner QWittVectors §3.2a, and the integral evaluation plus finite inverse-pairing sum supplies the section in local §6.4. The roadmap does not require a separate chosen global generator. No absence finding is raised merely because these suppliers are planned rather than implemented, and no settled absence-of-supplier finding is re-raised. No later roadmap or nonexistent target was substituted for a supplier.

**Adversarial calculations.** Each row records actual values or objects on the two sides, including negative controls. “Pass” means the stated hypotheses and convention survive that test, not that a finite test proves the general theorem. Source errors are recorded separately below. All 46 numbered targets, all seven Lean milestones, the sampled targets and the targets touched by R01 occur in the table.

| Statement / API law | Instances tried | Left / constructed value | Right / required value or excluded model | Result / change |
|---|---|---|---|---|
| Conventions: factorial sign and P₀ | n=0,1,2 | 1; 1−q; (1−q)(1−q²) | 1; −f₁; f₁f₂ | Pass; none |
| Conventions: right twist | self-pair A=ℤ[t], ψ₂(t)=t² | a⊗b maps to ψ₂(a)b; t⊗1 maps to t² | 1⊗t² maps to t²; no inverse of ψ₂ needed | Pass; none |
| Conventions: derived zero quotient | M=ℤ, q=1 | cofib(0:M→M)=ℤ⊕Σℤ | ordinary quotient ℤ omits π₁=ℤ | Pass; retain derived quotient |
| Solid shift convention | finite-support e₁ | (1−σ*)e₁=e₁−e₀; inverse gives e₁+e₀ | (1−σ*)(e₁+e₀)=e₁ | Pass; none |
| Solid tensor product generator | index sizes 2,3; empty set | six spheres; zero | sphere ranks 2·3=6; 0·3=0 | Pass; none |
| Countable-limit size bound | F(n,k)=Hℤ for k<n | π₀ colim∏=⊕ℕℤ; all-one vector absent | π₀ ∏colim=∏ℕℤ; all-one vector present | Pass; ordinary filtered interchange excluded |
| Uniform realization bound | constant Σᵇ𝕊; Σ^(−n)𝕊 | lower bound b; second family π_(−n)=ℤ | common bound b exists only in first test | Pass; none |
| Prime-generator import | m=1,2,6 | 0; (1+q); ideal(a,b) | (Φ₁)≠0; (Φ₂); b−qa=q²−q+1 | Pass; m>1 retained |
| Absolute versus relative q-Witt | toric A, m=2, q=−1 | absolute image evaluates in ℤ[t²] | relative self-ring contains t | Pass; no identification |
| Completed Frobenius import | Gaussian integers, p=3,5 | i↦−i; i↦i | (−i)²=i²=−1; reductions i³ and i⁵ | Pass; none |
| Nonflat Frobenius naturality | ℤ[t]→ℤ, t↦0, p=2 | φ-path sends t+2 to 2 | other path 2; literal square would give 4 | Pass; none |
| Linearization naturality | same map, (t+2)⊗(t+3) | (0+2)(0+3)=6 | both squares 6; identity retains tensor | Pass; none |
| Completion import unit sign | second polynomial quotient | q(1+q−q²)−1=−1+q+q²−q³ | −P₂=−1+q+q²−q³ | Pass; none |
| Divisibility tower direction | m=2,n=4 versus n=3 | f₄=(q²+1)f₂ | f₃ mod f₂=q−1≠0 | Pass; divisibility, not numerical order |
| Cyclotomic detection import | nonzero localization R_r | all R_r/Φ_d=0; L_H(R_r)=0 | R_r≠0, hence completeness is necessary | Pass; none |
| Finite-cover import | m=4 overlap {1,4} | ideal (q−1,q²+1)=(q−1,2) | nonzero 2-adic overlap; {1,4} absent from vertices | Pass; none |
| Finite-cover zero overlap | m=6 overlap {1,6} | Φ₆(1)=1; ideal is (1) | completed category 0 | Pass; none |
| Arithmetic fracture completion | t=q²−1, invert 2 | Σtʳ/2ʳ in completed localization | denominators 2ʳ have no common bound in E[1/2] | Pass; none |
| 0.1 marked object | B=ℤ,I=0,E=ℤ[1/2] | reduced E equals D; rational rank 1 | no finite ℤ-module generating set clears all 2⁻ⁿ | Pass; étale not finite étale |
| 0.1 reduction map | E=B×B, target marking swap | id_E reduces to swap; (1,0)↦(0,1) | same markings give (1,0)↦(1,0) | Pass; marking essential |
| 0.1 identity law | both markings ε | ε id ε⁻¹(x)=x | id_D(x)=x | Pass; none |
| 0.1 composition law | two swaps | swap(swap(1,0))=(1,0) | reduced identity gives (1,0) | Pass; none |
| 0.1 remarking / étale transport | e=swap, split D | carrier still E; new marking sends x=(0,1) to (1,0) | transported split algebra remains étale | Pass; none |
| 0.1 unit deformation | E=B, I=0; B=0 | reduction B; zero algebra | structure map unique in each case | Pass; none |
| 0.1 split presentation | B[x]/(x²−x), B=𝔽₂ | x↦(0,1); inverse(a,b)=a+(b−a)x | (2x−1)²=1, also 1 in 𝔽₂ | Pass; none |
| 0.1 localization deformation | a=0; a=1; a=2 over ℤ | E=0; ℤ; ℤ[1/2] | reductions 0; ℤ/I; (ℤ/I)[1/2] | Pass; none |
| 0.2 arbitrary ideal lift | B=ℤ,I=(2),D=𝔽₄ | E=ℤ[x]/(x²+x+1)[1/3] | E/2=𝔽₂[x]/(x²+x+1), discriminant −3 unit | Pass; none |
| 0.2 boundary ideals | I=0; I=B | E=D permitted; E=B and E=0 both reduce to 0 | existence true; uniqueness before completion false | Pass; none |
| 0.2 Jacobian inversion | one equation g, add yΔ−1 | enlarged determinant Δ² | Δ invertible after imposing yΔ=1 | Pass; none |
| 0.2 nonunique object lifts | B=ℤ[t],I=(t) | B and B[1/(1−t)] both reduce to ℤ | 1−t nonunit in first, unit in second | Pass; none |
| 0.3 locally nilpotent rigidity | B=ℤ/4,I=(2) | unit marked self-map count 1; split swap nonidentity | reductions count 1; swap moves (1,0) | Pass; none |
| 0.3 no bounded nilpotence | B=𝔽₂[x_i]/(x_i²), I=(x_i) | each r-generator subideal has power r+1 zero | x₁⋯x_N≠0 for every N | Pass; local nilpotence retained |
| 0.3 excluded arbitrary ideal | B=ℤ[t],I=(t) | two inequivalent unit lifts | identical reduced algebra ℤ | Pass; rigidity hypothesis necessary |
| 0.4 completion carrier and action | E=ℤ[t,1/2],I=(t) | W=ℤ[1/2][[t]], t acts by t | Σtⁿ/2ⁿ present; bounded-denominator alternative lacks it | Pass; none |
| 0.4 completeness and quotients | E=ℤ,I=(2),n=1,2 | W=ℤ₂; W/2=𝔽₂; W/4=ℤ/4 | E/2 and E/4 same rings | Pass; none |
| 0.4 unit and reduction marking | E=ℤ,n=2, integer 7 | completion then quotient sends 7 to 3 mod 4 | direct quotient sends 7 to 3 mod 4 | Pass; none |
| 0.4 zero/nilpotent ideals | I=0; E=ℤ/4,I=(2); I=E | W=E; W=ℤ/4; W=0 | stationary quotient towers E; ℤ/4; 0 | Pass; none |
| 0.4 split completion | E=B×B | W=B̂×B̂; swap sends (1,0) to (0,1) | completed product and reduced swap agree | Pass; none |
| 0.4 lifted identities/composites | split swap twice | map(swap)²=id_W | map(id_D)=id_W | Pass; none |
| 0.4 independence of chosen lift | ℤ[t] and ℤ[t,1/(1−t)] | both complete to ℤ[[t]] | inverse of 1−t is Σtⁿ | Pass; none |
| 0.4 comparison cocycle | three such presentations of same marked ℤ[[t]] | comparison 1→2→3 sends t to t | direct 1→3 sends t to t | Pass; none |
| 0.5 mapUnique / arbitrary target | B=E=ℤ,I=(2),C=𝔽₂ | Hom(ℤ₂,𝔽₂) has one element | Hom(𝔽₂,𝔽₂) over 𝔽₂ has one element | Pass; target need not be flat |
| 0.5 non-isomorphism control | same C=𝔽₂ | reduced map is id; kernel of lift contains 2≠0 | lift ℤ₂→𝔽₂ is not an isomorphism | Pass; conclusion correctly limited |
| 0.5 completeness control | C=ℤ,I=(2) | reduced structure map exists | no ℤ₂→ℤ: 3 has inverse only on source side | Pass; completeness necessary |
| 0.5 naturality | C=ℤ₂→𝔽₂, E=ℤ | both maps send integer 5 to 1 | quotient of structure map sends 5 to 1 | Pass; none |
| 0.5 static mapping spaces | E=B,W=ℤ₂,C=𝔽₂ | π₀ has one map, higher π_i=0 | discrete singleton reduced hom-set | Pass; none |
| 0.6 derived marking | B=ℤ,f=2,D=𝔽₂ | ℤ₂⊗ᴸℤ𝔽₂ has π₀=𝔽₂,π₁=0 | 𝔽₂⊗ᴸℤ𝔽₂ has π₀=π₁=𝔽₂ | Pass; false model excluded |
| 0.6 arbitrary complete C | C=ℤ₂, n=1,2 | C/2ⁿ=ℤ/2ⁿ; π₋₁lim=0 | surjective tower gives same static ℤ₂ | Pass; none |
| 0.6 regularity on completion | ℤ₂, 2x=0 | all x mod 2ⁿ=0 | x=0 | Pass; none |
| 0.6 contractible marked space | split D, fixed identity or swap marking | each fiber contains one corresponding map | unmarked set has at least id and swap | Pass; no unmarked uniqueness |
| 0.6 unit/zero boundary | f=1; B=0,f=0; B=ℤ,f=0 | complete lift 0; 0; last regularity false | contractible zero fiber in first two; last excluded | Pass; none |
| 1.1 pair arrows | toric t↦t+1 | ψ₂(t+1)=t²+1 | map(ψ₂t)=(t+1)²=t²+2t+1 | Pass; not a Λ-map |
| 1.1 identity/composition | identity, conjugation on Gaussian R | id(i)=i; conjugation²(i)=i | corresponding pair identities equal | Pass; none |
| 1.1 étale scalar extension | ℤ→ℤ[1/2],R=ℤ×ℤ | R⊗ℤℤ[1/2]=ℤ[1/2]² | split étale algebra over new base | Pass; none |
| 2.1 Laurent reflection | R_r; ℤ with q=1 | L_H(R_r)=0; L_H(ℤ)=ℤ | localized object killed; complete object fixed | Pass; none |
| 2.1 scalar restriction | polynomial versus Laurent, q=1 | q acts by unit 1 on both | RHom from localization vanishes on both | Pass; none |
| 2.1 quotient distinction | classical H; ℤ[[q−1]], Φ₂ | H/Φ₂=ℤ | ℤ[[q−1]]/Φ₂=ℤ₂ | Pass; single-root completion not H |
| 2.1 complete limits | finite product ℤ×ℤ at q=1 | reflection gives ℤ×ℤ | product of reflections ℤ×ℤ | Pass; none |
| 2.1 nonpolynomial element | Σ_n P_n | compatible finite residues Σ_(n<N)P_n | cannot be a finite Laurent polynomial | Pass; native completion retained |
| 2.2 factor and denominators | i=0,1,2 at q=2 | −1,−3,−7 | every factor nonzero; m=0 would give 0 | Pass; zero factor excluded |
| 2.2 factorial recurrence | q=2,n=0,1,2,3 | 1,−1,3,−21 | successive multiplication by −1,−3,−7 | Pass; none |
| 2.2 augmentation | e₀,e₁,e₂ at q=2 | 1,−1,1/3 | 1/P₀,1/P₁,1/P₂ | Pass; none |
| 2.2 differential / complex | e₁ at q=2 | d(e₁)=e₁+3e₂; augmentation −1+1=0 | printed cumulative-factor version gives −1−1=−2 | Pass; corrected adjacent factor |
| 2.2 differential / injectivity | first nonzero coefficient a_j | coefficient j of d(a) is a_j≠0 | zero image has coefficient j equal 0 | Pass; none |
| 2.2 range equals kernel | z=(1−q)e₁−e₀ | augmentation 1−1=0 | z=−d(e₀) | Pass; none |
| 2.2 surjectivity / denominator cofinality | denominator (1−q)² | P₂=(1−q)²(1+q) | fraction 1/(1−q)² is augmentation((1+q)e₂) | Pass; repeated factors handled |
| 2.3 Hom/Ext criterion | M=ℤ,q=1 | localization Hom=Ext¹=0 | complete M, π_i=0 except π₀=ℤ | Pass; none |
| 2.3 noncomplete control | M=R_r | Hom(R_r,R_r) contains id≠0 | RHom≠0, completion is 0 | Pass; none |
| 2.3 shift and degree | ΣM with M complete | only homotopy group in degree 1 | Hom/Ext vanishing applies to that degree too | Pass; no boundedness shortcut |
| 2.4 Laurent regularity | R=M=𝔽₂,m=2,x=q⁻¹ | (q²−1)x=q+q⁻¹≠0 | leading coefficient remains 1 | Pass; torsion coefficients allowed |
| 2.4 excluded exponent/module | m=0; M=𝔽₂ with q=1 action instead of Laurent extension | multiplication 0 in both negative models | zero kernel fails there, unlike induced coefficient module | Pass; hypotheses essential |
| 2.4 quotient ranks | n=0,1,2 | ranks 0,1,3 for P_n quotients | n(n+1)/2=0,1,3 | Pass; none |
| 2.4 ordinary/derived comparison | M=ℤ/2, n=1 | quotient π₀=𝔽₂, higher π=0 | ordinary monic quotient equals derived quotient | Pass; none |
| 2.4 zero coefficient | M=0 | all stages and their limit 0 | ordinary completion 0 | Pass; none |
| 2.5 derived tensor control | B/(q²−1)⊗ᴸB B/(q³−1) | π₀=ℤ; π₁=ℤ generated by 1+q | ordinary tensor has only π₀=ℤ | Pass; Tor retained |
| 2.5 completed unit and associativity | complete M=ℤ,q=1 | H⊗̂M=M; repeated unit gives M | unit/associativity value ℤ | Pass; none |
| 2.5 flat extension is not enough | ℤ→ℤ[t], element ΣP_n tⁿ | completed tensor contains this decaying family | H[t] has bounded t-degree | Pass; completion retained |
| 2.5 ordinary multiplication control | x∈H outside ℚ(q) | x⊗1−1⊗x nonzero before completion | multiplication and completed comparison kill it | Pass; no ordinary idempotence claim |
| 2.6 spherical localization | all factors inverted | T⊗ℛT=T; T/f_m=0 | π_kT=(π_k𝕊)[q±][f_m⁻¹] | Pass; none |
| 2.6 fiber shift | localization cofiber C' | fib(ℛ→T)=Σ⁻¹C' | cofiber and fiber differ by one suspension | Pass; none |
| 2.7 spectral unit | n=1 quotient | S_H/P₁=𝕊, π₁=ℤ/2 | Hℤ quotient has π₁=0 | Pass; sphere not replaced |
| 2.7 tower/detection | M=H𝔽₂, q=1, n≥1 | M/P_n=M⊕ΣM, suspension transitions eventually zero | limit M, not M⊕ΣM | Pass; derived tower retained |
| 2.7 localized orthogonality | M=T | completion 0; Hom(T,T) contains id | complete-zero image, noncomplete input | Pass; none |
| 2.8 discrete embedding / adjunction | M killed by q−1 | completed discrete image is δM; point value M | adjunction unit id_M | Pass; none |
| 2.8 infinite sum control | singleton copies of S_H | completion includes (P_n)_n | discrete direct sum excludes infinitely many nonzero entries | Pass; none |
| 2.9 solid idempotence | P₁,P₂ quotients | sphere ranks 1,3 after q₁=q₂ | ranks 1,3 in S_H/P_n | Pass; R01 dependency note |
| 2.9 balancing convention | quotient stage P₂ in independent variables | independent sphere rank 3·3=9 | balancing identifies q₁=q₂; not an unbalanced rank-9 claim | Pass; none |
| 2.10 C_I definition | all empty blocks; one singleton block | C_I=0; S_H | colimit of marked profiles 0; S_H | Pass; R01 dependency note |
| 2.10 J_r and its marking | r=0,1 | J₀=S_H maps by 1; J₁ maps by P₁ | fib(S_H→0); fib(S_H→S_H/P₁) | Pass; maps not homotopy-group images |
| 2.10 decay formula | singleton blocks, all-one versus (P_n) | mod P₁: infinitely many 1 versus only finitely many nonzero terms | first excluded, second included | Pass; none |
| 2.10 completed block injection | only block 0 nonempty | block map S_H→C_I is identity | reflection of coproduct injection id | Pass; none |
| 2.10 maps into complete Q | one singleton block | Map(C_I,Q)=Map(S_H,Q) | one-factor product Map(S_H,Q) | Pass; none |
| 2.10 completeness / orthogonality | all blocks empty | RHom(T,0)=0; lim 0/P_r=0 | C_I=0 | Pass; none |
| 2.10 profile order | f(n)=n,g(n)=2n | arrow g→f; P_n divides P_2n | marked map J_2n→J_n, common target min(f,g)=f | Pass; none |
| 2.10 finite-output maps | one block map multiplication by 2 | C(u)(x)=2x | unit then u sends x to 2x | Pass; none |
| 2.10 functor identity | one nonempty block | C(id)(x)=x | id_C(x)=x | Pass; none |
| 2.10 functor composition | multiplication 2 followed by 3 | C(vu)(x)=6x | C(v)C(u)(x)=3(2x)=6x | Pass; none |
| 2.11 factorial divisibility | a=b=1,q=−1 | P₂=0; P₁²(1+q)=4·0=0 | reverse divisibility would require 0 dividing 4 | Pass; correct direction |
| 2.11 boundary coefficients | a=0; q=1 over ℤ and 𝔽₂ | Gaussian quotient 1; [2 choose 1]_q=2 or 0 | polynomial identity remains 0=0 after specialization | Pass; no 0/0 cancellation |
| 2.11 separable profiles | h(m,n)=max(m,n), (3,5) | floor(3/2)+floor(5/2)=3 | 3≤5, both profiles proper | Pass; none |
| 2.11 failed ω₁-filteredness | f_k(n)=max(n−k,0) | common lower g would satisfy g(n)≤f_n(n)=0 | g=0 is not proper | Pass; no countable interchange here |
| 2.11 tensor family | one singleton in each family | S_H⊗■_SH S_H=S_H | L_H(S_H)=S_H | Pass; none |
| 2.12 closure / embedding tensor | M=N=S_H, lower bound 0 | tensor S_H, still complete | completed tensor S_H | Pass; R01 dependency note |
| 2.12 arbitrary coproduct size | countable subsets Iₙ of I | union ⋃Iₙ is countable upper bound | ω₁-filtered countable-subset poset | Pass; distinct from profile poset |
| 2.12 realization bound | constant ΣᵇS_H; unbounded Σ^(−n)S_H | first lower bound b; second has nonzero π_(−n) | only first meets uniform-bound hypothesis | Pass; none |
| 3.1 intersection equality | Φ₁,Φ₂ | ideal (q−1,q+1)=(q−1,2) | quotient 𝔽₂ | Pass; none |
| 3.1 nonadjacent indices | Φ₁,Φ₆ | Φ₆(1)=1 | unit ideal, zero completion | Pass; none |
| 3.1 radicals over nonreduced A | A=𝔽₂[ε]/ε² | ε lies in radical of (Φ₁,Φ₂) | ε lies in radical of (2,Φ₁), not necessarily the ideal | Pass; radicals on both sides |
| 3.2 total chain definition | (m,d,p)=(0,1,2),(4,0,2),(4,3,0) | {1}; {0}; {3} | factorization junk values produce exactly these sets | Pass; semantic hypotheses retained |
| 3.2 total vertices | m=0,1,2 | ∅; {{1}}; {{1},{2},{1,2}} | counts 0,1,3 | Pass; none |
| 3.2 reduced vertices | m=4,6,12 | counts 4,8,11 | singleton counts 3,4,6 plus chain counts 1,4,5 | Pass; none |
| 3.2 subset order | m=4 | {1}⊊{1,2,4}; {1,4} absent | singleton divisors not ordered by divisibility | Pass; none |
| 3.3 height_one | m=1,2,4,6,12 | number of strict triples S⊊T⊊U=0 in each | every comparable triple has S=T or T=U | Pass; none |
| 3.4 unique maximal chain | m=12, p=2, edge 3→6 | p-free d=3, maximal chain {3,6,12} | edge 6→12 has same chain | Pass; none |
| 3.4 edge composition | m=4, 1→2→4 | composite compares 1 with 4 | overlap {1,4} adds no new independent map | Pass; none |
| 3.5 finite descent | one identity localization | limit D, reconstruction id | D | Pass; none |
| 3.5 overlap hypothesis | two opens, D₁=D₂=D≠0, D₁₂=0 | limit D×D; diagonal misses (x,0) for x≠0 | L₁L₂=id≠L₁₂=0 | Pass; counterexample excluded |
| 3.5 zero/empty cover | empty jointly conservative family | forces D=0 | empty limit is terminal zero category | Pass; none |
| 3.5 commutative algebras and maps | identity cover, unit algebra | same unit object and mapping space | CAlg(D) and identity restriction | Pass; none |
| 3.5 refinement coherence | duplicate identity cover | matching pair (x,x) reconstructs x | refinement then reconstruction x | Pass; none |
| 3.6 homotopy equalizer | m=1 | edge product terminal, equalizer is vertex Map | original singleton-stage Map | Pass; none |
| 3.6 prime-index diagram | m=p | two singleton vertices and one chain | Map fiber product V×ʰ_(W×W)W | Pass; paths retained |
| 3.6 height-one nerve | m=6 | four singleton vertices, four chain vertices, eight incidence edges | zero nondegenerate 2-simplices despite undirected cycle | Pass; none |
| 4.1 stage functor | self-pair A/A; m=1; R=0 | A[q]^∧f_m; R[[X]]; 0 | supplied marked stages same | Pass; none |
| 4.1 identity/composite maps | self-pair, identity twice | q↦q, a↦a | direct identity same | Pass; none |
| 4.1 base naturality | t↦0 at p=2 | both completed paths send t+2 to 2 | 2 | Pass; nonflat map retained |
| 4.1 full ghost factors | R=ℤ[i][1/2],d=4 | C₄≃R×R; idempotent (1,0) | one selected embedding would discard (0,1) | Pass; none |
| 5.1 ordinary relative ring | R=0; m=1 | H=0; H_1=R[[X]] | ordinary static limit and first completion | Pass; none |
| 5.1 quotient and projection | self-pair ℤ,m=2 | H_2/f₂=ℤ[q]/(q²−1) | qW₂(ℤ/ℤ) same quotient | Pass; none |
| 5.1 regularity distinction | R=𝔽₂ coefficient-module control | Laurent multiplication by f₂ injective | quotient algebra has f₂=0 and nonzero Tor when re-quotiented | Pass; lift not quotient |
| 5.1 transition convention | m=2 to 1, R=ℤ | q↦1, integer a↦a | relative F₂, not ordinary Witt restriction | Pass; none |
| 5.2 compatible roots | m=3,p=2 | compatible ζ₆=−ζ₃, difference 2ζ₃ | usual ζ₆=−ζ₃² differs from ζ₃ by 1, not 2-small | Pass; actual roots matter |
| 5.2 re-expansion | m=1,p=2, polynomial q+1 | source near −1 gives X; near +1 gives X+2 | shifted comparison gives X+2 | Pass; sign fixed |
| 5.2 Taylor normalization | 1−q³ at ζ₃ | −3ζ₃²X−3ζ₃X²−X³ | direct binomial expansion of 1−(ζ₃+X)³ | Pass; none |
| 5.2 small root difference | ζ₃ primitive | (1−ζ₃)²=−3ζ₃ | divisible by 3, hence 3-adically small | Pass; none |
| 5.2 full coefficient algebra | R=ℤ[i][1/2],m=4 | R⊗ℤℤ[i]≃R×R | full Taylor target R[[X]]×R[[X]] | Pass; no selected conjugate |
| 5.3 prime-adic comparison | m=5,ℓ=11 | Φ₅ splits at 3,4,5,9 | coefficient algebra 𝔽₁₁⁴, not one field | Pass; source error avoided |
| 5.3 non-étale root control | m=2,ℓ=2 | Φ₂=q+1 has order dividing characteristic | coprime hypothesis fails | Pass; no separability overclaim |
| 5.4 Taylor equalizer | self-pair ℤ, polynomial q+1 | both root/Frobenius paths give q+1 after shift | equalizer membership true | Pass; none |
| 5.4 nonmember constant | cubic R, p=5, constant α | local path α versus 2+4α | difference 2+3α≠0 | Pass; twisted gluing discriminates |
| 5.5 untwisting | self-pair toric A/A | A⊗_(A,ψ_m)A→A, a⊗b↦ψ_m(a)b | inverse b↦1⊗b | Pass; ψ_m need not be surjective |
| 5.5 incompatible coefficients | cubic α at p=5 | no global endomorphism with α↦2+4α on quadratic factor | untwisting hypothesis fails | Pass; none |
| 5.6 completed base change | identity; zero target | H; 0 | completed scalar extension H; 0 | Pass; none |
| 5.6 flat but noncomplete tensor | ℤ→ℤ[t] | ordinary H[t] has finite t-degree | completion includes ΣP_n tⁿ | Pass; completion cannot be dropped |
| 5.6 nonflat coefficient map | toric ℤ[t]→ℤ,t↦0, self-pairs | completed stage sends t+2 to 2 | target self-stage contains 2 | Pass; no flatness restriction |
| 5.7 classical comparison | q⁻¹ at root 1 | Taylor coefficients 1,−1,1,… | inverse of 1+X | Pass; same q and projections |
| 5.7 ordinary ring boundary | q=−1 quotient | classical H/Φ₂=ℤ | relative self-pair quotient ℤ | Pass; none |
| 5.8 discriminant support | F=ℚ(i),Δ=2 | disc=−4; support {2} inverted | étale ℤ[i,1/2], although −4 does not divide 2 | Pass; genuine wider variant |
| 5.8 ramified negative control | F=ℚ(i),Δ=1 | mod 2 gives 𝔽₂[x]/(x+1)² | non-étale; support hypothesis false | Pass; none |
| 5.8 degree-one/sign boundary | F=ℚ,Δ=1 or −1 | localization ℤ, étale over ℤ | discriminant 1 has empty support | Pass; Δ≠0 scope matches Lean |
| 5.9 GSWZ comparison | F=ℚ,Δ=1 | ring comparison admissible | line assumptions 6 divides Δ fail | Pass; separate ring/line restrictions |
| 5.9 κ and scalar convention | full Gaussian order-four coefficients | κ preserves q and both factors | ℤ[q]-algebra comparison; no supplied R-algebra action | Pass; none |
| 6.1 perfect scalar extension | free module Hⁿ, n=0,1,2 | H'ⁿ | ordinary tensor ranks 0,1,2 | Pass; no extra completion needed for perfects |
| 6.1 nonperfect control | infinite direct sum of H | ordinary sum lacks (P_n)_n | completed sum contains (P_n)_n | Pass; completion retained generally |
| 6.1 functor/Picard laws | identity and composable ring maps | free rank-one class maps to 0 then 0 | composite maps class to 0 | Pass; none |
| 6.2 actual indexed lines | ξ=0; ξ+(−ξ) | M₀=H; Mξ⊗M−ξ≃H | Picard values 0 and [Mξ]+[M−ξ]=0 | Pass; no arbitrary-line stand-in |
| 6.2 localization bound | F=ℚ(i),Δ=12 | 6 divides 12 and −4 divides 12 | 24 need not divide 12 | Pass; separate divisibility conditions |
| 6.3 completion kernel | R=ℤ[1/p], component idempotent e_a | c(e₀)=1, c(e_a)=0 for a>0 | root-one restriction retains exactly a=0 component | Pass; global injectivity not claimed |
| 6.3 integral case | R=ℤ | Taylor of q is 1+X, of q−1 is X≠0 | integral Taylor map injective | Pass; none |
| 6.4 integral evaluator | order one, unit root line | root torsor y=1; evaluator lands in R | not merely in Frac(R) | Pass; none |
| 6.4 finite inverse pairing | evaluated products 35 and −34 over ℤ[1/6] | sum 1; neither factor a unit | surjective evaluator without a pure-tensor inverse | Pass; none |
| 6.4 construction of section | inverse-pairing coefficients 3 and −2 | 3−2=1; lifted section evaluates to 1 | normalization 1, not just a nonzero value | Pass; none |
| 6.4 choice dependence | coefficients 3+X and −2 | resulting section 1+X | constant term 1; differs from section 1 | Pass; existence not canonical generator |
| 6.5 constant-coefficient instance | R=ℤ, scalar X,2,1+X on 3 | 0,6,3 | evaluation-at-zero action gives same values | Pass; correct quotient action |
| 6.5 Jacobson/Nakayama | P=R[[X]], lifts 1 and 1+X | both units, constant coefficient 1 | rank-one equivalences exist, generators differ | Pass; no canonical basis |
| 6.5 arbitrary coefficient ring | R=ℤ×ℤ; R=0 | free line S with fiber R; zero ring line 0 | same conclusion without local/Noetherian hypothesis | Pass; none |
| 6.5 negative-control map | multiplication by X on S | reduction is zero, not a fiber equivalence | fails required actual quotient isomorphism | Pass; hypothesis ties object to theorem |
| 6.6 completed Picard vanishing | ξ=0 and formal inverse pair ξ,−ξ | completed lines each trivial by §6.4–6.5 | completed classes 0; their sum 0 | Pass; conditional on actual supplier lines |
| 6.6 noncanonical trivialization | bases e,(1+X)e | both represent class 0 | equality of classes does not identify chosen bases | Pass; none |
| 6.7 supported field scalar map | ℚ→ℚ(i),Δ=12,p=5 | ℤ₅→ℤ₅×ℤ₅ diagonal | both factors retained under scalar comparison | Pass; tensor over H, not unsupported R-action |
| 6.7 identity/composition coherence | identity field map; two identities | actual line map id; composite id | restriction on K₃ id; evaluation unchanged | Pass; none |
| 7.1 all four factors | roots 3,4,5,9 mod 11 | Φ₅ values 121,341,781,7381, all 0 mod 11 | four distinct roots, not one irreducible quartic | Pass; none |
| 7.1 lifted conjugates | 2786,7825,1963,2066 mod 11⁴ | Φ₅ remainder 0 for each; residues 3,4,5,9 | 11⁴=14641; distinct conjugate lifts | Pass; no algorithm target added |
| 7.2 localized components | R=ℤ[1/p], root orders 1,p,p² | valuation classes 0,1,2 | distinct nonzero factors; e₁e₂=0 | Pass; coefficient domain need not imply H domain |
| 7.3 cubic étaleness | F=ℚ(∛2),R=ℤ[∛2][1/6] | discriminant −108=−2²3³ | all ramified prime support inverted | Pass; none |
| 7.3 cubic residue computation | mod 5, x³−2 | (x−3)(x²+3x+4); quadratic discriminant 3 | 3 is nonsquare mod 5 | Pass; split plus quadratic factor |
| 7.3 Frobenius mismatch | α²+3α+4=0 mod 5 | α⁵=2+4α | α⁵−α=2+3α≠0 | Pass; constant α not glued |
| 7.3 global endomorphism | real field ℚ(∛2) | only root of x³−2 in F is ∛2 | every field/ring endomorphism fixes it | Pass; cannot lift local Frobenius at 5 |
| 7.4 finite obstruction | R=ℤ,m=2,p=2 | completed φ₂(3)=3 | identity global map sends 3 to 3 | Pass; compatible trivial case |
| 7.4 index boundary | m=1 | no prime divisor p; qW₁(R)=R | obstruction has no instance | Pass; no false m=1 consequence |
| 7.4 cubic finite-stage corollary | 5 divides m | naive ℤ[q]-isomorphism would force α↦α globally | actual completed Frobenius moves α by 2+3α mod 5 | Pass; marked-variable nonisomorphism |

The table contains 181 rows. Arithmetic recomputation included the vertex sets for m=0,1,2,4,6,12, the four roots to precision 11⁴, the cubic Frobenius polynomial, and the telescope augmentation. The remaining rows are direct algebraic or categorical evaluations using the displayed definitions and hypotheses. Zero rings/modules, empty covers/index sets, characteristic two, nilpotents, nonflat base change, nonsplit residue factors, arbitrary coefficient rings, index junk values and identity maps were explicitly retained. Nonabelian group examples and inseparable field extensions are not inputs to these theorems; the relevant exclusions are commutative rings and étale algebras, rather than an untested assertion about all groups or all extensions.

## Not verifiable

- No sampled text was inaccessible; no new source request is needed. All 15 seeded targets have locator checks above.
- The absent enhanced, relative Habiro, solid spectral and K₃-indexed-line carriers prevent elaborating the corresponding full headline statements at these pins. This is the declared limitation of the roadmap acceptance file, not evidence of their implementation. The seven native milestone statements were elaborated and tested as described above.
- The suppliers' global descent and spectral comparison contracts are roadmap targets. This review checked their stated hypotheses, ownership, direction and use; it does not certify completed formal proofs of those supplier targets.

## Source issues

- **Misprint** in Q at Appendix B, proof of Lemma B.2, printed p.78, Q line 3599: the source says the telescope coordinate uses the cumulative factorial P_i; it should be the adjacent factor 1−q^i; affects the proof.
- **Error** in Q at Lemma 2.12 proof, printed p.18, Q line 781: the source says coprime cyclotomic polynomials are irreducible over finite fields; it should be separability, retaining the full finite étale product; affects the proof.
- **Error** in Q at Setup 2.1 and Lemma 2.2, printed pp.13–14, Q line 546: the source says nested tensor-compatible reflective categories and conservative covers suffice for descent; it should be required additionally that iterated restrictions agree coherently with intersection localizations; affects a stated result.
- **Misprint** in Q at proof of Theorem 2.9, printed p.17, Q line 724: the source says staticity follows from being static modulo p; it should be staticity of the derived reduction modulo q^m−1; affects the proof.
- **Error** in W at Lemma 2.2, printed pp.8–9, W line 320: the source says the prime-generated ideal equals (Φ_m) for every positive m; it should be restricted to m>1, with the empty ideal (0) at m=1; affects a stated result.
- **Error** in G at Definition 1.4 and Theorem 2, printed p.10, G line 415: the source says the nonlinear membership condition defines the full-order global module and recovers the ring at zero; it should be replaced by additive full-order linear gluing with effective descent; affects a stated result.
- **Gap** in G at proof of Theorem 2, printed p.43, G line 2217: the source says multiplicativity of the defining conditions yields the tensor isomorphism; it should be justified by effective global descent and bijectivity of the multiplication map; affects the proof.

For the G error, a checkable zero-class control over ℤ[1/6] is the constant family f₂=−1 and f_m=1 for m≠2. Its nonlinear products can satisfy the stated localized membership tests while the full-order additive Frobenius gluing fails between orders 2 and 2p for p≥5. Adding the unit family exposes the missing additive condition. This roadmap imports HNF's corrected linear equalizers and effective descent, and does not derive its actual invertible modules from that nonlinear condition alone.
