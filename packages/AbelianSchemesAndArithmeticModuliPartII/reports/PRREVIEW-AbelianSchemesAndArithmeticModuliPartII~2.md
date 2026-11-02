# Review of AbelianSchemesAndArithmeticModuliPartII (pull request #1405 at 02939c9)

**Verdict:** needs changes

## R01 (P1) — Conjugation does not induce the asserted double-coset map

Location: `TauCetiRoadmap/AbelianSchemesAndArithmeticModuliPartII/README.md:2992`, “conjugation by a_M identifies Γ\\G_f/K_M with Γ\\G_f/K₀.”

Claim: if K_M=aK₀a⁻¹, conjugation identifies the quotients with the same left subgroup Γ. Conjugation also changes Γ; no normalization hypothesis is present. The numerical bound is correct, but this asserted map is not.

Witness: in S₃ take Γ=K₀=⟨(12)⟩ and a=(123), hence K_M=⟨(23)⟩. Take X=G/K_M and D_*=1. Source representatives 1 and (12) are equivalent; conjugation by a⁻¹ gives 1 and (13), which are inequivalent modulo Γ on both sides.

Repair: replace conjugation by right multiplication, `[x] ↦ [xa]`, with inverse `[y] ↦ [ya⁻¹]`. Indeed `(γxaka⁻¹)a=γ(xa)k`. In the witness both quotients have two classes; enumeration of all six representatives verifies this repaired bijection. Keep the bound D_*⁸h and add this noncommutative Check. Adding a normalization hypothesis would unnecessarily narrow the general counting result.

## R02 (P2) — Eight declared supplier contracts still conflict with local ownership

Location: `packages/AbelianSchemesAndArithmeticModuliPartII/design/plan.json`, all eight `gaps`, and `TauCetiRoadmap/AbelianSchemesAndArithmeticModuliPartII/README.md:105`: “The independent prerequisite extensions belong here”. The supplier-contract section has zero occurrences of `gap:`.

Claim: the intake is to request these results from named earlier suppliers, while this README constructs the same results itself. This is duplicate ownership, not a finding that an announced supplier has yet to implement its contract.

Witness: eight plan slugs, zero README gap contracts. The local-bound gap still requests exponents 2Δ and Δ; F4.4 now explicitly requests 4Δ and 4Δ. Thus even its numerical contract disagrees.

Repair: reconcile each slug with exactly one owner. The correspondences are fixed-part-theorem/B2.4; kuga-definable-inputs/B3.1 with B2.6; fine-curve-level-moduli/B4.1; local-semisimple-lattice-bounds/F4.4; cm-hermitian-mass-asymptotic/F5.7; algebraic-betti-ax-type/B2.15; uniform-manin-mumford/B2.3; lang-neron-modulo-trace/B2.3. If ownership remains here, record that choice for the maintainer/intake to withdraw the redundant gaps; the package author need not edit an unauthorized plan. If the gaps remain, restore the exact named supplier contracts and consume them, retaining only the new adapters here. For Lang–Néron first apply R03's earlier-owner correction. For the lattice contract use the repaired 4Δ bounds, or explicitly own and justify a sharpening. Verification is eight reconciled ownership decisions and matching numerical statements, not proof of the suppliers' future work.

This continues previous R01. The older repair report's non-actionable findings about obtaining the abelian Ax and arithmetic inputs from suppliers are not re-raised: their absence today is allowed. The defect here is that the supplied plan still declares them while this head assigns them elsewhere.

## R03 (P2) — Trace and Lang–Néron are already owned by an earlier roadmap

Location: `TauCetiRoadmap/AbelianSchemesAndArithmeticModuliPartII/README.md:1220` and `:1255`: “Prove Lang–Néron modulo trace: for every finitely generated regular extension K/k of fields, in any characteristic”. Lines 1257–1267 also rebuild its trace and proof inputs.

Claim: B2 owns the universal trace, its regular-extension theory and general Lang–Néron proof.

Witness: `TauCetiRoadmap/HeightsRationalPointsAndObstructions/README.md:661` constructs the primary-extension trace and its universal/base-change/tower API; `:719` states `fg_points_mod_trace` for every regular finitely generated K/k. That roadmap precedes this one in the merge order (125 versus 137).

Repair: import §§1.9–1.10, including §§1.9a–c where this proof route needs them. Delete the duplicate general constructions and finite-generation target; keep the geometric-trace comparison, uniform torsion closure, bounded-degree torsion and specialness applications to the extent they are new. Update Scope, supplier contracts, dependencies and the not-statable headline list accordingly. For constant E over ℂ(t), both formulations give trace E, τ=id and quotient 0; for trace-free A both give A(K). Importing the earlier theorem preserves these cases and all characteristics, without replacing it by a curve-only statement. Narrow or withdraw the redundant part of the lang-neron-modulo-trace gap.

## R04 (P2) — The general marked-lattice and rational-orbit classifications are also already planned

Location: `TauCetiRoadmap/AbelianSchemesAndArithmeticModuliPartII/README.md:2739` (F3.6) and `:2807` (F3.9), “Isomorphism classes of pairs (B,f:B→A₀ a rational quasi-isogeny over F_q) … correspond to X_p×X^p”.

Claim: these two general classifications are new targets here.

Witness: `TauCetiRoadmap/ArithmeticStatisticsPartI/README.md:2550`, “Finiteness of an isogeny class and of unpolarized classes”, already builds the marked all-prime lattice correspondence and then its G(ℚ)-orbit quotient, explicitly retaining the inverse contravariant p-action.

Repair: import those supporting constructions for the general F_q correspondence and the unmarked orbit quotient. Retain the new prime-field covariant linear-realization adapter in F3.5/F3.7/F3.10, order realization and quantitative bounds; describe precisely their difference. On f=p⁻¹id, both general constructions transport the contravariant lattice to pC(A₀), and the covariant dual adapter gives p⁻¹D^lin(A₀). Thus this repair keeps the sign/variance distinction rather than losing the p-component. It also preserves the zero-dimensional singleton.

This completes the earlier R02 ownership correction. The previous review's instruction to keep “the lattice classification” was too broad: the cited supplier's proof route already contains these two specific constructions. A construction inside a supplier's planned proof is still planned work.

## Verified sound

**Previous findings, checked first against this head.**

| Previous finding | Passage at this head | Result |
|---|---|---|
| R01, gap ownership | README:105, “The independent prerequisite extensions belong here”; no `gap:` entries | Not repaired in the supplied plan/README; current R02. No later repair report withdrawing these gaps was available. |
| R02, four earlier finite-field results | README:278, “Consume the supporting constructions”; F0.7, F1.8–F1.10, F3.3 and the former F6 finiteness targets are absent | The four named results are now imported, and the polynomial-count signature is deleted. The adjacent marked-lattice duplication remains: current R04. |
| R03, unsupported local exponents | README:2922, “Both exponents are Lipnowski–Tsimerman's”; 4Δ locally and D_*⁸ globally | Repaired in the mathematical targets; LT (13), (14), (19) support these weaker bounds. The stale gap contract is covered by current R02. |
| R04, ζ Check | README F3.1c now uses q=4, q₀=8, π=2, π₀=2√−2 | Repaired: ζ=−1, t=2, N=6, π⁶=π₀⁴=64. |
| R05, invented Jacobian names | README:351, “JacobianChallengePartII §2.6 … and §7.2” | Repaired: actual sections and section-free morphisms, with no nonexistent declaration names. |
| R06, nonexistent SF labels | README:362, “§2.6 … §4.1 … §4.8 … §4.9” | Repaired; these are the supplier's actual sections. |
| R07, Lang ownership | README:386 cites ReductiveGroupsPartII §RG2.3.7; F5.1 specializes it | Repaired; only the abelian étale-isogeny adapter remains. |
| R08, invariance-of-domain coordination | B2.9 retains the general Euclidean target | No new finding. The cited MorseTheory revision is not an eligible supplier; the earlier coordination note did not require a package edit. |

**Gate, build and scope.** The worker's gate at 02939c9 passes every scanner and the targeted build: `depcheck=0`, `build=0`, `stray-files=0`, `outside-folder=0`, and all other reported checks are zero. The independent dependency command returned:

```text
depcheck: 204 roadmaps, 1492 edges, 0 problem(s)
```

There is no UPWARD or CYCLE line. The diff outside this roadmap folder is empty. Direct `lake env lean` elaboration of the original file succeeds with exactly three `sorry` warnings. The worktree was not edited. The source/ownership defects above are not detected by this gate.

**Headline and Lean audit.** README:410–420 lists P0.5; P2.8; P3.3–P3.4; P4.2–P4.3; B1.4; B2.3–B2.4; B2.21–B2.23; B3–B4; F3.2 and F3.4–F3.10; F4.8; F5.7–F5.9; F6.3–F6.6; and F2.2. The three native-carrier signatures are `resultantRecognition`, `isogenyClassAsymptotic`, and `isomorphismClassCount`. The module docstring identifies the absent shuffle algebra, relative coefficient sheaves/connections, Betti/Hodge/trace/Kuga/moduli carriers, all-prime realization functors, and integral Hermitian/polarization dictionaries needed by the other endpoints. The coarse count, not Lee's sharper constant, is the stated endpoint. F6.3 and F6.5 share the fixed-q asymptotic signature; the latter's finite-n ordinary bound needs the ordinary predicate.

All six declarations were checked with explicit `#check @name` on a scratch copy. The three carrier definitions retain k, its field instance and g; their universe is fixed. `resultantRecognition` retains both commutative rings, the domain/DVR assumptions, φ, π, irreducibility, density, monicity and the two nonzero-resultant guards. The asymptotic retains `[Field k] [Finite k]`; the prime-field bound retains `[Fact p.Prime]`. There is no dropped section hypothesis or change in generality. A scratch one-tactic probe tried closing each of the three admissions by `simp`, `rfl`, and `infer_instance`; none closed. The opened library declarations below do not already prove these growth or recognition assertions. No remaining padding was identified. The three auxiliary definitions have real bodies on native carriers; there is no sorry'd data, stand-in predicate, extra import, `set_option`, or admitted example.

**Pinned declarations opened.** Paths here are relative to the respective pinned library. These are interfaces actually inspected, not claims about newer library versions.

| Pinned file and line | Declaration and relevant content |
|---|---|
| `TauCeti/AlgebraicGeometry/AbelianVariety/Basic.lean:95`, `:118` | `AbelianVariety`: `toOver`, `grpObj`, `isProper`, `geometricallyIntegral`; `dim` is topological Krull dimension. This is a geometric field carrier, not a relative connection or polarization carrier. |
| `TauCeti/AlgebraicGeometry/AbelianVariety/Isogeny.lean:56`, `:61` | `isogenies`, `IsIsogeny`: finite and surjective scheme morphisms. No separability condition is included. |
| `Mathlib/RingTheory/DiscreteValuationRing/Basic.lean:56`, `:402` | DVR excludes a field; `addVal` is the additive valuation used in the recognition signature. |
| `Mathlib/RingTheory/Polynomial/Resultant/Basic.lean:131`, `:137` | `Polynomial.resultant`, `resultant_map_map`: fixed Sylvester sizes; optional sizes default to natural degrees. |
| `Mathlib/Algebra/Polynomial/Lifts.lean:72`, `:189` | `lifts_iff_coeff_lifts`, `lifts_and_natDegree_eq_and_monic`: coefficient lifts and monic lifts retaining natural degree, including the subsingleton case. |
| `Mathlib/NumberTheory/Padics/PadicIntegers.lean:343`; `Mathlib/NumberTheory/Padics/RingHoms.lean:405` | `PadicInt.valuation` takes `toNat`, hence valuation(0)=0; `appr_spec` gives the required p-power coefficient congruence. |
| `Mathlib/NumberTheory/NumberField/InfinitePlace/Embeddings.lean:138` | `pow_eq_one_of_norm_eq_one` requires integrality and norm one at every embedding; it yields a strictly positive exponent. |
| `Mathlib/LinearAlgebra/PiTensorProduct/Basic.lean:679`, `:687`, `:757` | `reindex`, `reindex_tprod`, `map_reindex`, with inverse-index convention retained. |
| `TauCeti/LinearAlgebra/TensorPower/Basic.lean:38`, `:59`; `TauCeti/LinearAlgebra/TensorProduct/Symmetric.lean:85` | `oneEquiv`, `splitAt` (k≤n), and flip-fixed `symmetricTensors`. The last is degree two, not an all-degree shuffle algebra. |
| `TauCeti/RingTheory/Polynomial/Resultant/Discriminant.lean:123`, `:226`, `:421`, `:740` | Monic resultant/derivative, product and root-discriminant identities, and power-basis discriminant. Repeated roots are not silently removed from the ordinary discriminant. |
| `TauCeti/AlgebraicTopology/Singular/JordanBrouwer.lean:198`, `:212`; `CubeComplement.lean:286`; `Reduced.lean:216` in that directory | Sphere-complement homology/two components, ball-complement acyclicity, and reduced H₀ indexed by components. These supply B2.9's proof route, not its open-image conclusion outright. |

Object searches included the pinned abelian-variety, tensor, divided-power, resultant, discriminant, p-adic and topology APIs; main roadmaps; board packages; and the open-roadmap index using `roadmaps grep` and `roadmaps show`. No collision with the six retained fully qualified Lean names was found. Generic free divided powers are correctly imported from DerivedModuleAlgebra §0.DP.2; the new arbitrary-module shuffle comparison differs. General Lang and smooth good covers are imported. Generic strong Torelli, mixed Kuga extensions, Betti rank, all-prime quantitative bounds and CM-unitary asymptotics remain local constructions except for the ownership conflicts reported above. Open revisions of existing main roadmaps were not used as suppliers. Main's DerivedModuleAlgebra and Completed/EffectiveBounds and Completed/HodgeStructures were also read for shape.

**Seeded source sample and supplier resolution.** The 15 sampled labels comprise SchemeAndStackFoundations once, FiniteFlatGroupsAndIntegralPadicHodgeTheory four times, ComplexComparisonPartII once, JacobianChallengePartII once, AbelianSchemesAndArithmeticModuli seven times, and DeligneWeightsAndPurity once. All occurrences of these suppliers were resolved, rather than selecting just one occurrence of a repeated label. Roadmap sources have section/target and line locators, not printed pages. Main copies were used for existing roadmaps; the named new-roadmap heads were used for new suppliers.

| Supplier, relative README locator | What was verified |
|---|---|
| `TauCetiRoadmap/SchemeAndStackFoundations/README.md:3437`, `:5066`, `:5383`, `:5448` | §§2.6,4.1,4.8,4.9: qcqs higher direct images, square-zero thickenings, formal completion and formal functions with proper/Noetherian/coherent hypotheses. §§1.18/1.21 at 2745/2951 give stackification and quotient stacks; §4.15 at 5725 gives stable-curve moduli and smooth open. |
| `TauCetiRoadmap/FiniteFlatGroupsAndIntegralPadicHodgeTheory/README.md:669`, `:3389`, `:3664` | R07.1.2 finite étale/Galois action; R07.2.10 contravariant exact Dieudonné functor with Witt scalars, FV=p and perfect-base assumptions; R07.2.19 Frobenius-conjugation descent of the integral characteristic polynomial. All four sampled uses preserve variance and base-field hypotheses. |
| `TauCetiRoadmap/ComplexComparisonPartII/README.md:1259`, `:2335` | C0 coherent/bundle dictionary, C1.1 `localDolbeault` including finite-rank bundle coefficients and frame/pullback comparison; C5 de Rham/Betti comparison. No unrestricted holomorphic-map algebraization is inferred. |
| `TauCetiRoadmap/JacobianChallengePartII/README.md:370`, `:830`, `:1084` | §§2.6,5.3,7.2: j(x,y)=[y]−[x], FZ coordinate i uses x₀ and x_(i+1), section-free families and arbitrary base change; supplying a fine moduli family is a separate input. |
| `TauCetiRoadmap/AbelianSchemesAndArithmeticModuli/README.md:1683`, `:1852`, `:1900` | A3.9 Rosati is λ⁻¹α∨λ and reverses products; A4.2 vector extension; A4.3 Hodge exact sequence/base change/duality. E(A∨), not E(A), is the connection parameter used here. |
| Same supplier, `:2510`, `:2557`, `:2610` | A5.1–A5.3: rank-2g lattice, Riemann form E(Jv,v)>0, H linear in its first variable, and c₁ evaluated on an ordered cycle equals −E. These signs were compared with the CM and Betti examples below. |
| Same supplier, `:2841`, `:2905`, `:2937`, `:2957`, `:2998`, `:3026`, `:3063`, `:3253`, `:3343` | A6.2,5,7,8,10,11,14,18,21: prime-to-characteristic Tate injectivity, reducibility, finite free Hom, semisimple End⁰, integral characteristic polynomials, Tate realization, Rosati positivity, polarized automorphism/level rigidity and Frobenius semisimplicity. Integral level uses group schemes, not merely geometric p-power torsion points. |
| Same supplier, `:3729`, `:3741` | A6.32–A6.33: finite étale/separable Weil restriction, dimension dg and induced prime-to-characteristic Tate module. Dual-number restriction is not proper and is excluded. |
| `TauCetiRoadmap/DeligneWeightsAndPurity/README.md:560`, `:959`, `:969` | DWP.0 0.1–0.3 and DWP.1 1.4–1.5: Weil weights/powers, arithmetic π on Tate modules, geometric π⁻¹ there, and point counts det(1−π^r), r≥1. |

The remaining named contracts were resolved at their actual sections: `TauCetiRoadmap/DerivedModuleAlgebra/README.md:105` (§0.DP.2, free symmetric-tensor comparison at 227); ArithmeticStatisticsPartI supporting constructions at 2540–2550; ShimuraVarieties §§3.5a–d (800–854), §5.2 (1362), §§5.5–5.8 (1430–1487); LieGroupoidsPoisson G0.1 (299); SmoothBundlesConnections B6.0 (1306); Completed/GlobalNumberFields Layer 1's mixed-place weak approximation; PELModuli M3.5–M3.6 (2965,3055), M5 (3493), M6.11 (4065, fixed polarization degree); GeometryOfNumbersAndQuadraticArithmetic §§2.5,2.7,3.3 (631,706,1040, orthogonal mass only); AlgebraicModuliForArithmeticGeometry Layer 2 and §5.2 (8804); AlgebraicVectorBundles L0B/L2B (228/340); DifferentialGeometry Layers 0–1 and 12.1 (915); AdelicAlgebraicGroups AA.1/AA.3/AA.4; ReductiveGroupsPartII RG2.3.7 (5201); ClassFieldTheory Layers 5/10/13; RepresentationTheory/SemisimpleAlgebras Layers 4–5; Completed/EffectiveBounds Layer 1; Completed/Chebotarev Layer 14 (612); ImaginaryQuadraticClassNumber H3.6 (142); Completed/ConformalMapping L3; Completed/HodgeStructures L0–L3. Broad layer citations were read with their hypotheses, not treated as exports of every nearby theorem. The resolver's 12 unresolved Lean-name leads are roadmap target names in these cited suppliers, not claims of existing pinned declarations; none is a missing-library finding.

Additional primary-source checks used the supplied legal cached texts: Roby Proposition III.1 (line 1526); KS Definition 2.7 and (2.1.2)–(2.1.4) (lines 661–682); GH Theorem 3.2 and the bounded-degree proof (lines 546,610), and the invariant-subvariety argument around 990–1060; ConradTrace Definition 6.1/Theorems 6.2,6.4,7.1 (lines 966,1007,1079); Gao-Ax Lemmas 4.3–4.5 (lines 667–677); Gao-Betti Theorem 10.1 (lines 1276–1282); DGH Theorem 6.2 (lines 1285–1288); LT (13),(14),(19),(39),(51),(56); DPH Theorem 1.3 (line 79); Lee Theorem 1.1 (line 44). Hatcher Theorem 2B.3, p.172 (line 3337), MilneJV Theorem 12.1, p.38 (line 1713), and TateHonda §3 Lemmas 1–3/§4 Lemmas 4–6, pp.100–105 (lines 152,172,194,221,241,291) were fetched through the sources service and read. The last includes the effectivity-of-a-power and restriction-of-scalars steps, not just the headline Honda–Tate classification. Tits remains uncertified as instructed.

**Adversarial mathematics.** The table has 148 rows. Each row records an actual value, dimension, cardinality, map or inequality, including negative controls. These are tests of the statements and their conventions, not substitutes for the general proofs. “Retain” means no defect was found by that test. Construction-requirements subsections assemble the indicated preceding statements; their extra normalization tests are included separately. Imported statements from the seeded sample are tested as well as the local endpoints.

| Statement | Instances tried | Values computed on the two sides | Result; change |
|---|---|---|---|
| P0.1 invariant tensors: degrees and membership | n=0,1,2; M=R² | TSym⁰=R, TSym¹=M; flip(e₁⊗e₂)=e₂⊗e₁≠e₁⊗e₂, while their sum is fixed | Distinguishes invariants from the whole tensor power; retain. |
| P0.1 diagonal and functoriality | M=0; scalar map v↦2v | Degree n>0 is 0 on M=0; diagonal transforms by 2ⁿ, versus 1 in degree 0 | Retain degree-zero unit. |
| P0.2 degree completion and truncation | Rank-one M, coefficient sequence (1,1,…) | Product contains every coefficient 1; direct sum excludes the sequence; truncation at N loses coefficient N+1=1 | Retain product, not direct sum. |
| P0.3 shuffle product/divided powers | Rank one over ℤ and 𝔽₂ | v*v=2v^[2]; over 𝔽₂ left side 0 but v^[2]≠0; unit in degree 0 acts by 1 | Ordinary symmetric multiplication gives the wrong answer; retain. |
| P0.4 flip-fixed square comparison | R² in degree 2 | Invariants have basis e₁², e₁⊗e₂+e₂⊗e₁, e₂², rank 3 on both carriers; the lone mixed tensor is excluded | Matches pinned `symmetricTensors`; retain. |
| P0.5 natural comparison | Free rank two, n=2; base change to 𝔽₂ | γ₂(x+y) maps to x²+x⊗y+y⊗x+y², mixed coefficient 1; γ₁(x)² maps to 2x² | Retain arbitrary-module map; free invertibility belongs to DerivedModuleAlgebra. |
| P0.6 multigrading | M=Rx⊕Ry, total degree 2 | Components (2,0),(1,1),(0,2) have ranks 1,1,1, total 3; no division by 2 | Retain. |
| P0.7 assembled coefficient laws | Scalar maps 2 then 3; n=2 | Composite acts by 6²=36, same as 2²·3²; zero ring has a singleton module in every degree | Naturality and zero-ring conventions agree. |
| P1.1 cotangent/connection carrier | g=0,1; square-zero ideal I | rank H=2g=0,2; rank kernel E(A∨)→A∨ is g=0,1; tangent maps are Hom(H,I), not H itself | Dual convention retained; square-zero thickening is not discarded. |
| P2.1 moment normalization | Additive formal coordinate x, n=2 | Second derivative of x² at 0 is 2; mixed derivative of xy is 1; characteristic p gives p!=0 | Retain factorials and divided powers. |
| P2.2 finite Poincaré levels | Elliptic family, n=0,2 | Ordinary ranks 1 and 1+1+1=3; connection ranks 1 and 1+2+3=6; final kernels rank 1 versus 3 | Both families are distinguished; retain. |
| P2.3 Fourier–Mukai shift | Relative dimension d=0,1 | Top direct image lies in degree 0,1 respectively; a point has H⁰=R; an elliptic case has the nonzero term in degree 1, not 0 | Retain shift and proper hypotheses. |
| P2.4 isogeny pullback | Identity; multiplication by 2 in characteristic 0 versus 2 | Tangent map 1 versus 2; 2 invertible in characteristic 0, 2=0 in characteristic 2 | Étale/invertibility guards exclude the false integral isomorphism. |
| P2.5 torsion splitting | Zero section; torsion order N prime to residue characteristic | Unit section maps to 1, positive moments at the identity to 0; derivative of [N] is N, invertible exactly in the allowed case | Retain canonical rigidification and order condition. |
| P2.6 automorphism equivariance | α=−1, α²=id | Degree-n action is (−1)ⁿ; applying twice gives 1 in every degree | Excludes treating all moments as invariant; retain. |
| P2.7 comultiplication | Degree-one x; degree-two divided power | Δx=x⊗1+1⊗x; Δγ₂(x)=γ₂(x)⊗1+x⊗x+1⊗γ₂(x) | Coassociative expansions have coefficients 1; retain. |
| P2.8 completed top cohomology | Zero-dimensional variety; elliptic case | Degree d=0 yields the base line; d=1 yields the top line in H¹ with all other degrees zero | Agrees with P2.3, not an unshifted H⁰ assertion. |
| P2.9 transition compatibility | Levels 2→1→0 | Ranks 3→2→1 ordinarily and 6→3→1 with connection; composite augmentation sends 1 to 1 | Consistent inverse-system convention. |
| P3.1 first-order logarithm extension | g=1, square-zero first neighbourhood | Extension class is id on rank-2 H, matrix I₂; the split class is 0₂ | Distinguishes logarithm from the trivial extension. |
| P3.2 smooth connection | Constant commuting one-form ν; ν=0 | Curvature dν+ν∧ν=0+0=0; ν=0 gives d | Integrability and normalization agree. |
| P3.3 logarithm comparison | First level of an elliptic family | Rank 1+2=3 and extension class I₂ on both sides; trivial rank-3 bundle with split extension has class 0 | The comparison identifies the extension, not just ranks. |
| P3.4 smooth tensor/Dolbeault model | Constant rank-one holomorphic coefficient on a disk | Degree-zero ∂̄ kernel is holomorphic functions; ∂̄(z)=0 and ∂̄(z̄)=d z̄≠0 | Correct coefficient resolution; arbitrary smooth sections are excluded from the kernel. |
| P3.5 compatibility | Pull back the constant model along identity; tensor two units | Connection remains d, unit remains 1, 1⊗1 maps to 1 | Retain compatibility rather than an arbitrary comparison. |
| P4.1 ordinary formal completion | Ordinary elliptic p-divisible group | Height 2, connected height 1 and étale height 1; supersingular elliptic group has connected height 2 and étale height 0 | Ordinary hypothesis excludes the wrong splitting, including p=2. |
| P4.2 projected connection/trivialization | Formal multiplicative coordinate T | Invariant form dT/(1+T) has value dT at T=0; logarithm begins T−T²/2 over characteristic 0 | Integral formal group and generic-fibre logarithm are not confused. |
| P4.3 torsion translations | Identity torsion point; successive torsion translations t,u | t=0 gives id; translations compose as x↦x+t+u, not x↦x+t−u | Retain transport and rigidification. |
| P4.4 completed compatibility | 1+ε over O_Cp[ε]/ε² and modulo pʳ | [pⁿ](1+ε)=1+pⁿε≠1 integrally for every n; modulo pʳ, [pʳ](1+ε)=1 | Cofinality holds modulo each pʳ, not as a torsion union over O_Cp. |
| B0.1 period chart | Elliptic type D=2, τ=i, w=2a+ib | Inverse has a=Re(w)/2, b=Im(w); lattice shifts (2,i) change (a,b) by (1,0),(0,1) | Correct lattice and real rank 2. |
| B0.2 birational generic rank | Isomorphism on dense opens; blow up an exceptional point | Generic differential unchanged, rank r=r; exceptional fibre dimension may rise by 1 | Only generic rank is invariant; retain. |
| B0.3 chart changes | Integral frame matrix [[0,−1],[1,0]] | determinant 1; real ranks before/after both 2; applying twice gives −I | Retain transitions, not chart-dependent rank. |
| B1.1 Betti-form normalization | g=1, w=a+τb; type (1,2) | i∂∂̄[2(Im w)²/Im τ]=2da∧db; periods on the two coordinate tori are 2,4; [N] multiplies by N² | Compatible with the stated factor 2 and polarization type. |
| B1.2 kernel/rank | Constant family E×S | On a fibre rank(db)=2=rank ω; on a constant section both ranks 0 and base tangent is in the kernel | Retain full tangent kernel. |
| B1.3 non-degeneracy definition | Fibre E; constant section over a curve | Fibre: rank 2=2dim E; section: 0<2dim S=2 | Excludes counting only fibre dimension for sections. |
| B1.4 maximal-rank criterion | One-dimensional subvariety, ranks 0 and 2 | ω restriction is 0 in rank 0 and nonzero in rank 2; top wedge nonzero iff rank=2 | Both directions tested; retain. |
| B1.5 top power | Constant family E×S with dim S=1 | Total dimension 2, Betti rank 2<4, ω²=0; on E itself ω≠0 | Non-degeneracy hypothesis prevents false top-power assertion. |
| B1.6 functorial compatibility | [0], [−1], [2] | Pullback factors 0,1,4 respectively | Retain even sign and square scaling. |
| B2.1 curve degeneracy | Constant E×S; constant section | Betti fibre on section is S of dimension 1; on a vertical fibre E it is a point of dimension 0 | Distinguishes degeneracy from merely being in a family. |
| B2.2 trace definition/universality | Constant E_K; zero variety; non-isotrivial elliptic curve | Tr(E_K)=E, τ=id; Tr(0)=0; non-isotrivial elliptic trace dimension 0 versus fibre dimension 1 | Mathematics passes; import earlier owner under R03. |
| B2.3 uniform torsion closure | Y=V×A, V×{torsion P}, V×{nontorsion P}, empty fibre | Closures A, {P}, ∅, ∅; coset counts 1,1,0,0 | Arbitrary translates would wrongly count the nontorsion singleton; retain. |
| B2.3 Lang–Néron and bounded degree | Constant E/ℂ(t); trace-free A, D=1 | Quotient E(ℂ(t))/E(ℂ)=0 for constant sections; trace-free quotient=A(K), with finite torsion; D=1 means rational torsion | General finite generation belongs to Heights, R03; bounded-degree consequence retains the cover input. |
| B2.4 fixed part and Hom | Constant g=1; monodromy −I; map 2I | Invariant ranks 2 and 0; double cover changes 0 to 2. Integral 2I is a homomorphism; (1/2)I is only rational | Retain finite-cover and integral/rational distinctions. |
| B2.4 group semisimplicity negative control | Matrix [[2,1],[1,1]] | Eigenvalues (3±√5)/2, semisimple representation; connected closure dimension 1 and toric | Geometric-origin hypothesis is needed for the group conclusion. |
| B2.5 torus characters | T=ℝ/ℤ; subgroups T,0,⟨1/2⟩ | Annihilators 0,ℤ,2ℤ; double annihilators recover T,0,⟨1/2⟩ | Nonconnected subgroup requires nonsaturated 2ℤ; retain. |
| B2.6 semirational blocks | Z={0}×[0,1] | Rational first coordinate has height 1; infinitely many second coordinates; arc t↦(0,t) has constant rational projection and nonconstant second projection | Retain unrestricted real coordinates and family-uniform quantifiers. |
| B2.7 free word growth | Two free generators, positive words of length k | Exactly 2ᵏ words, norm ≤cᵏ; at k=0 one word of height 1 | Exponential word count gives polynomial height count T^(log_c 2). |
| B2.8 Tits application | U=[[1,2],[0,1]], V=[[1,0],[2,1]]; GL₁ | UV=[[5,2],[2,1]], VU=[[1,2],[2,5]]; GL₁ commutator=1 | Non-virtually-solvable hypothesis excludes GL₁. Full source certification remains unavailable. |
| B2.9 invariance of domain | x³ on (−1,1); x²; [0,1) inclusion; dimension 0 | x³ image (−1,1) open; x² image [0,1) not open and map not injective; boundary-domain example not open; dimension 0 image is ∅ or one point | All hypothesis controls agree with Hatcher 2B.3. |
| B2.10 constant-rank theorem | (x,y)↦x; x↦x² near 0 | First rank 1, fibres dimension 2−1=1; second rank 0 at 0 and 1 nearby | Constant-rank assumption excludes rank-jumping quadratic; finite C^k/analytic cases share the normal form. |
| B2.11 good covers | Convex disks with nonempty convex intersection; empty intersection | Straight contraction ends at one centre; reduced H₀ and π₁ are 0; empty intersection has no centre | Empty intersections exempt, not supplied a nonexistent point. |
| B2.12 fixed homology/equivariant Hom | Constant E; twisted −I local system | Fixed homology ℤ² versus 0; equivariant maps from a trivial rank-one local system have ranks 2 versus 0 | Matches B2.4; retain. |
| B2.13 GH generic specialness | Constant genus-two curve C in its constant Jacobian; torsion point in trace-free family | Constant trace-image dimension 1, although C is not an abelian coset; torsion point contributes dimension 0 | Distinguishes GH specialness from torsion-coset-only specialness. |
| B2.14 Ax-type definable subsets | Linear arc (t,0); parabola (t,t²) | First lies in a one-dimensional affine subgroup; second has second derivative (0,2), so no affine line contains an interval | The arc implication excludes the plausible arbitrary-definable model. |
| B2.15 algebraic-to-Ax input | A itself; algebraic point | Coset dimensions g and 0; point has no nonconstant arc | Bridge handles both, with separate abelian Ax input; R02 concerns its ownership only. |
| B2.16 transport | Constant Betti vector b; torsion vector with Nb=0 | Transport returns b; N times the transported vector remains 0 | Preserves order condition, not an arbitrary analytic section. |
| B2.17 free curve monodromy | Finite monodromy {±I}; geometric nontrivial semisimple connected closure | Finite case G⁰=1, dimension 0, no free subgroup; positive-dimensional case is the theorem's branch | Hypothesis prevents the finite-group counterexample. |
| B2.18 invariant fibre subvariety | Z=A; Z={0} | In first case B=A, quotient dimension 0; in second case the torsion branch has dimension 0 | Neither branch forces all invariant subvarieties to be torsion points. |
| B2.19 invariant homology→trace | Constant E; trace-free non-isotrivial E | Fixed rational ranks 2 and 0 correspond to trace dimensions 1 and 0 | Factor of 2 and homological variance agree. |
| B2.20 virtual invariance in kernels | Zero section of an elliptic family; identity quotient | Zero kernel has relative dimension 0, zero-section total dimension dim S; identity quotient has kernel dimension 0 | Retain relative versus total dimensions and finite-cover qualification. |
| B2.21 maximal special subvarieties | Constant family with X=trace image; trace-free X=one torsion section | One maximal member X in each case, although X contains infinitely many points in the constant case | Finiteness is of maximal members, not of all special subsets. |
| B2.22 degeneracy→GH special | Constant section; vertical elliptic fibre | Section has base-curve Betti fibre dimension 1 and is generically special; vertical fibre has Betti fibre dimension 0 | Conclusion applies to first, hypothesis fails for second. |
| B2.23 full-rank algebraic points | Non-special curve section versus torsion section | Desired rank for the curve is 2; torsion section has rank 0 and lies in excluded special locus | Exclusion is substantive; retain. |
| B2.24 assembled alternatives | Constant elliptic family, trace-free family | Constant case fixed rank 2, trace dimension 1; trace-free case both 0 | No inference of finite generation of unquotiented constant points; R03 repoints input. |
| B3.1 Kuga datum, quotient and descent | V=0; elliptic fibre with inversion; normal vector W | Fibre dimensions 0 and 1 before quotient; E/{±1} has genus 0, not 1; dim(V/W)=dim V−dim W | Coarse isotropy cannot carry the asserted universal abelian scheme; README retains stack/refinement. |
| B3.2 pure height bound | γ_N:z↦z+N, basepoint i | d(i,γ_N i)<log T iff N²<T+T⁻¹−2; hence allowed integer N grow on the √T scale | Rules out a height bound independent of T. |
| B3.2 pure volume lower bound | Hyperbolic plane, curvature −1 | Area radius log T is π(T+T⁻¹−2); at T=1 it is 0, and as T→∞ it grows like πT | Lower bound is only for sufficiently large T. |
| B3.2 uniform fundamental volume | Modular fundamental domain and translates | Every translate has area π/3, independent of N | Uniform c₅ is supported; point projection excluded from growth branch. |
| B3.3 horizontal/vertical growth | Full modular graph; pure projection a point | Translation block has ≍√T points from preceding computation; pure-point case has dimension 0 and no horizontal lower bound | Vertical branch is separately required; retain. |
| B3.4 stabilizer alternative | Full one-dimensional uniformization graph closure | dim B=2, dim Z=1, dim biZar=1, so defect 1≥1 | Tests inequality direction and equality case. |
| B3.5 quotient induction/Ax–Schanuel | Same full graph; quotient by full stabilizing group | Quotient dimensions 0,0; original inequality 2−1≥1 | Compatible; normality is asserted only after the stated very-general reduction. |
| B3.6 weak optimality | Y=M of dimension d | δ_ws(Y)=d−d=0; a proper weakly special Z has defect 0, so larger Y violates strict >0 and Z is not weakly optimal | Finite data does not mean finitely many possible translating points. |
| B3.7 t-degeneracy definition | Point; constant torsion section over a curve, t=0 | Point contributes no positive-dimensional Y; section has weakly-special relative dimension 0<dim Y=1 | Strict inequality and positive-dimensional requirement both matter. |
| B3.8 closed degeneracy | Constant torsion section; full nondegenerate fibre | Degeneracy loci are whole section and empty fibre locus respectively, both closed | Retain Zariski closedness, not just analytic closedness. |
| B3.9 quotient Betti-rank criterion | Base point, X=A=elliptic, l=1,2 | rank db=2; 2<2l is false/true; identity quotient has dim image 1<l false/true | Both directions and strict threshold tested. |
| B3.10 compatibility | Identity normal quotient; quotient by whole vector part | Relative dimension stays g in first case, becomes 0 in second | No unexplained negative dimension; retain. |
| B4.1 fine levels and Torelli | g=2, levels 2 and 3; hyperelliptic involution | −I≡I mod 2 but −I≠I mod 3; β=id gives α=id, ε=1, c=0 in pointed comparison | ℓ≥3 removes stabilizer; MilneJV supplies sign/translation form. |
| B4.2 dominant fibre product | Base point, X elliptic, Y elliptic | Product dimension 2 and Betti rank 4=2·2 | Full rank gains the second fibre directions; retain. |
| B4.3 power estimate | Constant B×S, dim B=1, dim S=1, m=2,t=0 | Modular image dimension 2, Betti rank 4=2·2; total dimension 3 would demand false rank 6 | Statement correctly uses modular image dimension. |
| B4.3 difference estimate | Same family, m=2 | Differences B³→B² have image dimension 2 and Betti rank 4; RHS 2(2−0)=4 | Constant positive-dimensional stabilizer is allowed. |
| B4.4 universal-curve differences | g=2, S a point, M=4=3g−2 | C⁵ has dimension 5; target J⁴ dimension 8; generic difference-image rank 10=2·5 on its dimension-5 image | Threshold, target indexing and rank agree. |
| B4.5 fibre-power criterion | Constant genus-two curve in its Jacobian over a point | Relative dimension 1, finite stabilizer, m=1; modular map to fixed fibre is an embedding, rank 2=2dim C | Hypotheses include fibre generation and generic finiteness. |
| B4.6 difference/product preservation | Genus-two curve C in J, m=1,M=1 | C−C=J has dimension 2; C×(C−C) has dimension 3 and rank 6, inside J² of dimension 4 | Target has m(M+1)=2 factors; retain indexing. |
| B4.7 induction conventions | Identity level change; two composable refinements | Difference coordinate [x_i]−[x₀] is identical after either pullback route; diagonal gives 0 | Agrees with Jacobian supplier's sign and base change. |
| F0.1 compact lattice limit | u_n=ℓⁿ on ℤ_ℓ; u_n=1+ℓⁿ | Intersections of images are 0 and ℤ_ℓ respectively, equal to images of limits 0 and 1 | Retain compactness; zero rank gives singleton. |
| F0.2 Frobenius polynomial/reciprocity | Product of elliptic polynomials | Product X⁴−(a+b)X³+(ab+2q)X²−q(a+b)X+q²; coefficients satisfy a₄=q²a₀ and a₃=qa₁ | Sign and descending-index convention agree. |
| F0.3 Weil q-number definition | q=2, π=1+i; π=1; q=1 | Norm of 1+i is √2; norm of 1 is 1≠√2; q=1 is excluded by prime-power field assumption | Nonzero/unit boundary handled; retain. |
| F0.4 isotropic image | Symplectic rank 2 with stable line ⟨e⟩ | E(e,e)=0; isotropic dimension 1=g, while full space has E(e,f)=1 and is not isotropic | Retains isotropic/stability input, not arbitrary subspace. |
| F0.5 point counts | Elliptic trace 1 over 𝔽₂ and extension 𝔽₄; dimension 0 | #E(𝔽₂)=2; α²+β²=1−4=−3, #E(𝔽₄)=1+4+3=8; empty product gives 1 in dimension 0 | Matches DWP arithmetic-Frobenius convention. |
| F0.6 split commutant | Ordinary elliptic with split quadratic algebra; scalar supersingular Frobenius | Commutant dimensions 1²+1²=2 versus 2²=4 | Repeated eigenvalues cannot be counted as distinct blocks. |
| F0.8 proof-route normalization | E:y²=x³−x over 𝔽₅ | #E=8, trace −2, polynomial X²+2X+5; at X=1 value 8 | Same conventions in counting and Tate route. |
| F2.1 multiplicity slope | P=X²(X−1), ψ=X+πⁿ | Res(P,ψ)=π^(2n)(1+πⁿ), valuation 2n; slope recovers multiplicity 2 | n=0 not used for the asymptotic unit assertion; retain. |
| F2.2 recognition headline | P=X,Q=X², ψ=X+πⁿ; P=X,Q=X+π, ψ=X+π² | Valuations n versus 2n; second pair 2 versus 1 | Nonzero monic tests distinguish both; no vacuity. |
| F2.2 density necessity | O=𝔽₂[[t]], D=𝔽₂; P=X−t,Q=X−(t+t²) | Every constant-field polynomial test has equal evaluation valuation (its multiplicity at 0); P≠Q. Density fails already modulo t² | Negative control proves density cannot be omitted. |
| F2.2 coefficient boundaries | Zero ring D; field O; monic constant 1 | Unital D→nonzero O impossible; O field fails DVR class; Res(1,ψ)=1 and valuation 0 | Hypotheses exclude fake DVR/zero-map models. |
| F2.3 integer/p-adic specialization | ℤ→ℤ_p, p=2,3 | Truncation mod pᴺ has error in (pᴺ); at N=1, residues have 2 or 3 choices | Pinned `appr_spec` supplies density at every N. |
| F2.4 congruence route | Fixed 1×1 Sylvester degrees, f=X,g=X+πᴺ | Resultant πᴺ maps to 0 modulo πᴺ on both sides; dropping to actual reduced degrees is a separate operation | Fixed-size statement is essential; retain. |
| F1.1 Dieudonné cokernel degree | [p] on dimension g; g=0,1 | Length of C/pC is 2g=0,2; v_p(deg[p])=v_p(p^(2g))=0,2 | Covariance/length normalization agrees. |
| F1.2 saturated integral injection | Identity; submodule pℤ_p⊂ℤ_p | Identity image quotient 0 has no p-torsion; latter quotient 𝔽_p is not saturated | Excludes merely finite-index image as a saturation proof. |
| F1.3 characteristic polynomial | [n] on dimension g; unipotent matrix on E² | Polynomial (X−n)^(2g); [[1,1],[0,1]] on E² gives (X−1)⁴ though operator is not semisimple | Polynomial theorem is not an accidental semisimplicity theorem. |
| F1.4 cyclic block algebra | a=1; a=2 with U²=θ | Basis over K has sizes 1 and 4; matrix [[0,θ],[1,0]] squares to θI₂ | Relation and dimension a² fixed. |
| F1.5 Frobenius adapter | Étale rank-one module; q=pᵃ | F=σ,V=pσ⁻¹ gives FV=p; Fᵃ=1 on the étale unit-root block | Witt semilinearity retained before taking the a-th power. |
| F1.6 central simplicity | Split degree-2 cyclic algebra | Algebra M₂(K) has dimension 4, centre K dimension 1, no nontrivial two-sided ideals | Not asserted to be a division algebra in every case. |
| F1.7 commutant dimension | Supersingular elliptic over 𝔽_(p²), π=−p | End⁰ has dimension 4; K-linear F-commutant dimension 4, unrestricted ℚ_p-linear F,V-commutant can have dimension 8 | Scalar field restriction matters; retain. |
| F1.11 local invariant | a=2, residue degree 1, ord_v(π)=1; a=1 | f_v ord_v(π)/a=1/2 mod ℤ; for a=1 it is integral and hence 0 mod ℤ | Denominator uses a, not an unnormalized p-adic valuation. |
| F1.12 opposite action | Matrix units u=E₁₂,v=E₂₁ | D(uv)=E₁₁=D(v)D(u), whereas D(u)D(v)=E₂₂ | Retain opposite-algebra and inverse-unit actions. |
| F3.1 lattice spaces | Identity marking; p⁻¹id | Contravariant lattices C and pC; prime-field covariant lattices D^lin and p⁻¹D^lin | Rational ambient spaces are necessary. |
| F3.1a CM type with slopes | π=2+i,q=5; π=√2,q=2 | Split Gaussian slopes 0,1; real π has slope 1/2; degree-4 CM extension gives local type count 2 of 4 | Ramified and real cases are included. |
| F3.1b CM realization/sign | L=ℚ(i), ξ=i, basis (1,i) | E(i,1)=2, E(1,i)=−2; matrix [[0,−2],[2,0]], determinant 4; replacing ξ by −i reverses positivity | Matches parent's E(Jv,v)>0 and c₁=−E convention. |
| F3.1c power effectivity | q=4,q₀=8,π=2,π₀=2√−2 | ζ=π₀²/π³=−1; t=2,N=6; π⁶=π₀⁴=64; with q=q₀=4 and π₀=−2 instead ζ=1 | Previous erroneous Check repaired. |
| F3.1d descent via Weil restriction | Quadratic extension, P(T)=T²−tT+q² | Restricted polynomial P(T²)=T⁴−tT²+q²; (T−2)² becomes (T²−2)² | Dimension doubles; no prime-to-p-only restriction. |
| F3.2 Honda–Tate | π=1+i over 𝔽₂; π=√2 over 𝔽₂ | First degree 2, division index 1 gives 2g=2; second degree 2, index 2 gives 2g=4 | Real Weil numbers are not incorrectly assigned elliptic dimension. |
| F3.4 nonreal prime-field endomorphisms | a=1, K has no real place | Every p-local invariant is integer≡0; infinity also 0; index 1 and End⁰=K | Nonreal and prime-field hypotheses do work. |
| F3.5 linear p-realization | Ordinary elliptic, q=p | D^lin rank 2 and characteristic polynomial X²−aX+p; scalar [n] acts by n with polynomial (X−n)² | Dualization changes variance, not Frobenius characteristic polynomial. |
| F3.6 marked classification | A₀=0; f=p⁻¹id | One zero-dimensional tuple; contravariant transport pC instead of p⁻¹C | Sound convention, duplicate ownership: R04. |
| F3.7 prime-field realization | Reference tuple; p-component p⁻¹D^lin | Identity realizes reference; rational marking p⁻¹id realizes the second | Retain as adapter of imported general realization, R04. |
| F3.8 order realization | p=5,K=ℚ(ζ₅),π=√5ζ₅; p=2,K=ℚ(i),π=1+i | At 5, generator valuations 2 with v(5)=4, versus maximal-order uniformizer valuation 1; at 2 both π,2/π have valuation 1 and order is maximal | All-prime construction is necessary; dyadic case included. |
| F3.9 unmarked orbits | Two markings f and uf of the same B | Marked tuples differ by u; quotient has one underlying B-class | General quotient already in earlier supplier, R04. |
| F3.10 prime-field dictionary | f=p⁻¹id followed by u=−1 | Covariant tuple p⁻¹D^lin changes by −1, the same lattice; contravariant action is D(u⁻¹) | Adapter compatible with imported general classification. |
| F3.11 requirements | Multiplication of two scalar markings p⁻¹ and p | Product is 1; transported lattice returns to reference | Action uses inverse exactly once, not twice. |
| F4.1 adelic class set | G=G_m over ℚ, standard maximal compact | ℚ×\𝔸_f×/Ẑ× has cardinal 1; identity double coset maps to principal ideal class | Correct unweighted class-set object. |
| F4.2 prime-field p reduction | Ordinary elliptic, slopes 0 and 1 | F eigenvalue valuations 0,1; V=p/F valuations 1,0; on each rank-one factor integral lattices are stable under both | Reduction preserves actual F,V-stable locus, not just an arbitrary Witt module. |
| F4.3 ordered-root product | P=(X²+p)²; scalar polynomial | Unequal-root ordered pairs: 8, so D_*=(2√p)⁸=(4p)⁴; scalar case empty product D_*=1 | Repeated equal values omitted, multiplicities of unequal values retained. |
| F4.4 local orbit bound | Scalar rank n; diag(0,ℓ) | Scalar Δ=0, one orbit and index 1; diagonal Δ=2, exactly two lattice orbits≤ℓ⁸ | Repaired 4Δ bounds pass at ℓ=2,3. |
| F4.4 stabilizer bound/gluing | Glued lattice for diag(0,ℓ) | Eigenspace-intersection sum has index ℓ; torus compact stabilizer requires equal residues, index ℓ−1≤ℓ⁸ | Does not mistake a glued lattice for a direct sum. |
| F4.5 global multiplication | One bad prime with Δ=2, all others Δ=0 | Local product ℓ⁸=D_*⁴ for D_*=ℓ²; good-prime factors equal 1 | Finite support prevents an infinite product of nontrivial indices. |
| F4.6 reduced-norm class comparison | ℚ(i); real quadratic ℚ(√3) | Gaussian class number 1; ℚ(√3) has ordinary class number 1 but narrow class number 2 because no norm −1 unit | Retain infinite-place positivity in norm comparison. |
| F4.7 double-coset map | S₃, Γ=K₀=⟨(12)⟩, a=(123) | Source [1]=[(12)]; conjugate images [1]≠[(13)]; each quotient has 2 classes | False asserted map: R01; right multiplication gives a bijection. |
| F4.7 numerical count | One G-orbit, stabilizer index n, class count h | At most nh Γ-orbits; with ≤D_*⁴ G-orbits and n≤D_*⁴ total ≤D_*⁸h | Numerical conclusion remains valid after map repair. |
| F4.8 fixed-level bound | m=2, root distance≤2√p | D_*≤(2√p)²; D_*⁸h≤(2√p)¹⁶h, exponent 8m(m−1)=16 | Repaired exponent propagated. |
| F4.9 construction requirements | Repeated-root polynomial (X²+p)² | Ordinary discriminant 0 while D_*=(4p)⁴>0 | Positive ordered unequal-root product is essential for the bound. |
| F5.1 Lang adapter | Frobenius−1 in characteristic p, including p=2 | Derivative 0−1=−1, equal to 1 when p=2, always invertible | Étale isogeny adapter follows imported Lang, not a new Lang theorem. |
| F5.2 norms of units | ℚ(i)/ℚ | Units {±1,±i}, all norms 1; base units that are norms also {1}; quotient size 1 | Norms of elements and norms of units kept distinct in general. |
| F5.3 prime density | Nine independent imaginary quadratic characters | 2⁹=512 sign patterns; only all −1 avoids splitting, density 1/512; splitting union 511/512 | Finite ramified-prime exclusions do not alter density. |
| F5.4 CM elliptic factor | p=5, π=2+i in ℤ[i] | Norm π=5, trace 4, polynomial X²−4X+5, point count 2 | Nonreal ordinary CM class, no p=2 exclusion in the theory. |
| F5.5 odd-characteristic point groups | Trace a, q=p and p²; exceptional p=2,a=1 | N₁=p+1−a; N₂=(p+1−a)(p+1+a); at 2 these are 2 and 8 | For odd p both factors cannot be divisible by p since their sum is 2(p+1); dyadic exception retained. |
| F5.6 line-bundle realization | Elliptic λ and −λ | O(0) gives λ; O(−0) gives −λ and is not ample | Symmetric homomorphism realization is not positivity; finite-field descent is extra to geometric realization. |
| F5.7 mass/unweighted comparison | Gaussian rank 1; factorial contribution g=2,3 | One lattice, automorphism order 4, mass 1/4 versus class count 1; products 0!1!=1 and 0!1!2!=2 | Weighted and unweighted counts differ; logarithmic leading coefficient is 1/2. |
| F5.8 polarizations on CM powers | E with End E=ℤ[i], g=1 | Positive Hermitian units consist of 1; one principal polarization orbit; automorphism group size 4 | Counts orbits, not choices of isomorphisms. |
| F5.9 squarefree nonreal bound | Product of distinct simple nonreal factors; no polarization case | Multiplicities all 1; polarization count can be 0, whose inequality is still valid; repeated factor E² has multiplicity 2 and is excluded | No transfer of squarefree estimate to E^g. |
| F5.10 asymptotic normalization | Sum log((j−1)!), j≤g | Equals Σ_(k=1)^(g−1)(g−k)log k = (1/2)g²log g+O(g²) | Corrects source's missing 1/2, retained in README. |
| F6.0 dimension subtype | Zero variety, E, E×E | Dimensions 0,1,2; memberships in g=1 are false,true,false | Native dimension excludes factor-count stand-in. |
| F6.0 isogeny quotient | [p] in characteristic p; two curves over 𝔽₅ | [p] degree p^(2g), inseparable but admitted; y²=x³+x and y²=x³−x have 4 and 8 points, so distinct k-isogeny classes | Base field and inseparable isogenies retained. |
| F6.0 isomorphism quotient | Same curves; same A with two polarizations | Distinct 𝔽₅-isomorphism classes despite same geometric j=1728; changing only polarization gives one unpolarized class | Native group-scheme quotient is the right carrier. |
| F6.3 isogeny asymptotic | Fixed q, upper/lower growth; g=0 | Upper log/g² = log(q)/4 + log(4g+1)/g + log(q)/(4g); lower differs by O(log g/g); both tend to log(q)/4. At g=0 Lean's log(1)/0=0 | Total-function junk value irrelevant to atTop; headline sound. |
| F6.4 coarse isomorphism headline | Fixed prime p; Lee bound | log[2^(34g²)p^((69/4)g²(1+o(1)))]/g² =34log2+(69/4)(1+o(1))log p, bounded | Gives exactly O_p(g²), with separate finiteness conjunct. |
| F6.4 conditional assembly | Coefficients 17 and 1/4 | 17+1/4=69/4=17.25 | Coarse theorem is not asserted to prove the sharper conditional constant. |
| F6.5 finite-n ordinary lower bound | r(q)=φ(q)/q; q=2,3; n=1 and large n | r(2)=1/2, r(3)=2/3; c₄=e^(−3/2)>0, c₅=2+√2>0; factor r(q)q^(n/2)−n is √2/2−1<0 at (q,n)=(2,1), equals 0 at (2,8), and is 16−10=6 at (2,10) | A negative lower bound is harmless, not a claimed positive count there. |
| F6.6 squarefree ppav proportion | Numerator exp(O(g²)), denominator exp((1/2)g²log g+O(g²)) | Ratio≤exp(−(1/2)g²log g+O(g²))→0 | Density-prime/CM hypotheses retained; no universal-prime claim added. |
| F6.7 final assembly | g=0; positive g tending to infinity | Zero-dimensional counts 1, logarithms 0; all local empty products 1; asymptotic denominators g²>0 eventually | Agrees with actual carriers and all branches. |

**Shape and generality.** All 135 numbered target subsections occur in the 148-row table. Definition blocks have their prose APIs and discriminating Checks; every layer ends in Examples and Dependencies. The target keeps arbitrary-module tensor constructions, square-zero tests, integral and rational connections separately, characteristic-p isogenies, real Weil numbers, repeated factors and the dyadic cases. No executable algorithm, copied source passage, route-specific prime exclusion, or suspicious instruction was found. Finite-field and finite-type hypotheses remain attached to the corresponding count, moduli and monodromy statements. The source locators and dependency text were read in addition to the scanner output. The remaining ownership conflicts are substantive despite the passing syntactic checks.

## Not verifiable

- Tits, Theorems 1 and 3, printed pp.250–251, is settled as uncertified in the supplied source record. Its text was not available in the legal cached corpus; the settled citation was retained without another request. The matrix controls above test the application hypotheses but do not certify Tits's proof or locator against the text.
- Whether the intake has announced or withdrawn the eight plan gaps on supplier jobs was not established. The supplied plan still has all eight; no withdrawal report was present among the available repair reports. R02 is based on those inspectable artifacts, not an assertion about external board messages.
- TateHonda's extraction loses parts of several displayed formulas. The surrounding statements and arguments at the cited lines are readable, and the displayed power/CM computations in the table were checked independently. No assertion of character-for-character certification of the damaged displays is made.

## Source issues

- **Error** in LT at Lemma 2.1, printed p.5 (v1), LT line 165: the source says all degree-2g Weil-root polynomials number at most (2g)^g q^(g(g+1)/4); it should be bounded by 2(4g+1)^g q^(g(g+1)/4), or (4g+1)^g q^(g(g+1)/4) with positive constant coefficient; affects a stated result.
- **Error** in LT at (51), printed p.30, and (56)/Lemma 5.11, p.33 (v1), LT lines 1243 and 1418: the source says the leading logarithmic coefficients are [K:ℚ] for mass and 1 for CM elliptic-power polarizations; it should be [K:ℚ]/2 and 1/2, as follows from the factorial product in (39); affects a stated result.
- **Misprint** in GH at Theorem 3.2, printed/PDF p.13, GH line 549: the source says the fibre is obtained by intersecting the parameter variety V with {v}×A; it should be obtained by intersecting Y with {v}×A; affects nothing.
