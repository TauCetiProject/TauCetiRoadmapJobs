# Review of AbelianSchemesAndArithmeticModuliPartII (pull request #1405 at ac897bd)

**Verdict:** needs changes

## R01 (P2) — Reconcile the declared gaps with the ownership and bounds in the README

Location: `TauCetiRoadmap/AbelianSchemesAndArithmeticModuliPartII/README.md:114`, “The independent prerequisite extensions belong here”; `packages/AbelianSchemesAndArithmeticModuliPartII/design/plan.json`, its eight gap entries.

Claim: the README assigns prerequisite constructions locally, while the declared contracts assign the same constructions to earlier suppliers. None of the eight slugs appears in the README's exact supplier contracts. Two requests also overlap the now explicitly imported Heights results.

Witness: eight plan slugs, zero matching README contracts; F4.4 supplies exponents 4Δ and 4Δ, while its gap requests 2Δ and Δ. Heights §§1.10 and 5.8 already supply Lang–Néron and uniform torsion closures.

This continues previous R01. Moving uniform Manin–Mumford to its existing owner repairs that local duplication, but leaves the corresponding gap request stale. The remaining assignments are:

| Declared slug | Declared supplier | README assignment |
|---|---|---|
| fixed-part-theorem | ShimuraVarieties §3.5b.1 | B2.4 |
| kuga-definable-inputs | ShimuraVarieties P.1/§§3.5a–d | B2.6 and B3.1 |
| fine-curve-level-moduli | PELModuli M6 | B4.1 |
| local-semisimple-lattice-bounds | GeometryOfNumbersAndQuadraticArithmetic §2.5 | F4.4, with different exponents |
| cm-hermitian-mass-asymptotic | GeometryOfNumbersAndQuadraticArithmetic §3.3 | F5.7 |
| algebraic-betti-ax-type | ShimuraVarieties P.1/§§3.5a–d | B2.15 |
| uniform-manin-mumford | AbelianSchemesAndArithmeticModuli A6 | Imported from HeightsRationalPointsAndObstructions §5.8 |
| lang-neron-modulo-trace | AbelianSchemesAndArithmeticModuli A6 | General theorem imported from Heights §§1.9–1.10; bounded-degree consequence in B2.3 |

Repair: reconcile these eight decisions with the intake. For contracts that remain assigned to suppliers, restore the matching `What <Supplier> must provide (gap:<slug>): ...` paragraphs and consume those results instead of planning them again. For work intended to remain local, record that ownership decision for the maintainer/intake to withdraw the redundant gap. Withdraw or repoint the requests already supplied by Heights, retaining only the genuinely missing bounded-degree consequence. Do not require an unauthorized edit to the frozen design. The lattice contract must agree with the supported 4Δ bounds, unless the stronger exponents are separately justified.

Verification of the repair: at ℓ=2, Δ=2, the local bounds are 256 and 256; the stale requests are 16 and 4. These are not interchangeable contracts. Importing Heights preserves the constant-curve test: for A=E over ℂ(t), the trace is E and the quotient by trace points is zero. Uniform torsion closures give one coset for V×A and zero for an empty fibre. The older repair reports' settled conclusion that implementing supplier gaps is not actionable in this package remains valid. This finding concerns conflicting assignments and redundant requests, not missing supplier implementation.

## R02 (P3) — Add discriminating checks for the torsion maps and smooth connection

Location: `TauCetiRoadmap/AbelianSchemesAndArithmeticModuliPartII/README.md:844` and `:934`, “Composing with the moment map gives” and “the connection d+ν”.

Claim: P2.5 defines the canonical splitting and its moment maps; P3.2 defines the smooth tensor connection. Neither gives the required API list and three discriminating Checks for these constructions. The layer examples test ranks or extension classes, not these maps' normalization.

Witness: P2.5 proceeds directly from its definition to its source and Needs; P3.2 does the same. KS line 740 normalizes the splitting by an inverse unit map; KS line 1364 fixes the plus sign.

Repair: add the API and Checks to the README, without adding Lean padding. For P2.5, test the identity isogeny at the unit, independence of using [2] or [4] to split the unit in characteristic zero, and failure of an inverse formal map when the dual isogeny is inseparable. On the degree-one coordinate the normalized composites are 1, (1/2)·2=1 and (1/4)·4=1; omitting the normalization gives 2 or 4. Relative Frobenius has cotangent map 0, which cannot have inverse 1. Record preservation of augmentation and compatibility of the moment components.

For P3.2, test level zero (ν acts by zero), the image of the constant section at level one, and degree-two shuffle multiplication. In a coordinate with ν=h⊗dt, the values are ∇1=h⊗dt at level one and ∇h=2h^[2]⊗dt at level two. The wrong sign gives −1 instead of 1; ordinary rather than shuffle multiplication gives 1 instead of 2. These calculations distinguish the proposed maps, while curvature alone would not distinguish d+ν from d−ν.

## Verified sound

**Previous findings, checked before the full review.**

| Previous finding | Passage at this head | Result |
|---|---|---|
| R01, eight gap assignments conflict with local ownership | README:114, “The independent prerequisite extensions belong here”; README:116 imports Heights | Partly repaired: the uniform-torsion theorem has moved to Heights, but all eight plan contracts remain unmatched. Current R01. |
| R02, duplicate Tate proof components | README:132, “Its supporting constructions also own fixed-degree polarized finiteness, split-prime Tate surjectivity and the commutant dimensions at every prime” | Repaired. The detailed contract at :332–347 imports these inputs, including saturation; duplicate F0.6/F1.2/F1.7 targets are absent. |

The repaired Tate contract agrees with ArithmeticStatisticsPartI's supporting constructions at `TauCetiRoadmap/ArithmeticStatisticsPartI/README.md:2541` and `:2543`. Split eigenvalues give commutant dimension 2; scalar Frobenius on an elliptic curve gives 4. Retaining Witt-linearity at p excludes the incorrect dimension 8. F0.1's compact limit statement and F0.4's isotropic-image statement retain their broader field hypotheses; the explicit cyclic algebra, invariant and linear-dual adapters have different conclusions from the imported integral Tate theorem.

**Scope, gate and build.** Read all 128 numbered subsections, including 16 construction-requirement subsections, every Needs line, the six Lean declarations, the previous findings and repair context. The diff outside the reviewed folder is empty. The worker's gate at the requested head passes every scanner and targeted build, including `depcheck=0`, `build=0`, `stray-files=0`, `outside-folder=0`, `sorry-data=0`, `set_option=0` and `dirty=0`. The independently run prescribed dependency check returned exactly:

```text
depcheck: 204 roadmaps, 1494 edges, 0 problem(s)
```

There is no UPWARD or CYCLE line. The target worktree was not edited. Direct `lake env lean` elaboration succeeds with exactly three `sorry` warnings. The passing structural checks do not detect R01.

**Headlines and elaborated signatures.** README:519–530 names P0.5; P2.8; P3.3–P3.4; P4.2–P4.3; B1.4, B2.3–B2.4, B2.21–B2.23 and B3–B4; F3.2/F3.4–F3.5/F3.7–F3.8/F3.10; F4.8; F5.7–F5.9; F6.3–F6.6; and F2.2. These are respectively the shuffle comparison, completed cohomology, logarithm/smooth models, ordinary CM trivialization, Betti/specialness/degeneracy/fibre-power results, Honda–Tate and order/realization comparisons, adelic bound, polarization growth, counting/proportions, and resultant recognition.

The three directly statable endpoints are present: `resultantRecognition`, `isogenyClassAsymptotic`, `isomorphismClassCount`. The module docstring names the missing carriers for the other headlines; it distinguishes the ordinary finite-n lower bound from the all-class asymptotic. No missing carrier is represented by an arbitrary predicate or sorry'd data. The three additional declarations are the native dimension subtype and two quotients needed for the counts.

An independent scratch copy with `#check @name` for all six actual declarations elaborated. The dense-source-ring and nonfield-DVR hypotheses, fixed finite field, and prime-field restriction all survive in the signatures and agree with the README. No binder changed or was lost. The supplied scanner's seventh item, `and`, is prose, not a declaration. Nine scratch proof attempts—`simp`, `rfl`, and `infer_instance` on each of the three theorems—all failed to close the goals. Searches of the pinned objects found no single library theorem yielding an endpoint by `exact`. No padding finding is warranted.

**Pinned APIs inspected.** Mathlib pin `6b7abb3c7686292736be2955bd3eb9ebf63b456a`; Tau Ceti pin `a91d3aafa8cd3e6bc33dfde0d7677ed0f1625039`. The following are native declarations, rather than proposed roadmap names:

| File and line at the pin | Actual object or restriction checked |
|---|---|
| `TauCeti/AlgebraicGeometry/AbelianVariety/Basic.lean:95`, `:118` | Proper, geometrically integral group object over a field; dimension is topological Krull dimension. It is not a carrier for relative universal connections. |
| `TauCeti/AlgebraicGeometry/AbelianVariety/Isogeny.lean:56`, `:61` | Finite and surjective; inseparable isogenies are included. |
| `Mathlib/RingTheory/DiscreteValuationRing/Basic.lean:56`, `:402` | Nonfield local PID and its additive valuation. |
| `Mathlib/Algebra/Polynomial/Lifts.lean:72`, `:189`; `Mathlib/RingTheory/Polynomial/Resultant/Basic.lean:137` | Coefficient lifting, monic degree-preserving lifting, and resultant functoriality at fixed Sylvester sizes. |
| `Mathlib/NumberTheory/Padics/PadicIntegers.lean:343`; `Mathlib/NumberTheory/Padics/RingHoms.lean:405`; `Mathlib/NumberTheory/Padics/ProperSpace.lean:57` | Natural valuation's junk value at zero, approximation modulo pᴺ, and compactness. Nonzero resultants remain explicit. |
| `Mathlib/NumberTheory/NumberField/InfinitePlace/Embeddings.lean:138` | Kronecker theorem requires integrality and norm one at every embedding; its exponent is positive. |
| `Mathlib/LinearAlgebra/PiTensorProduct/Basic.lean:679`, `:687`, `:757` | Reindexing uses the inverse permutation, with tensor/map compatibility. |
| `Mathlib/Algebra/Module/Submodule/EqLocus.lean:45`; `Mathlib/Algebra/Module/Submodule/Lattice.lean:238` | Equalizer and intersection carriers, not a pre-existing shuffle multiplication. |
| `TauCeti/LinearAlgebra/TensorPower/Basic.lean:38`, `:59`; `TauCeti/LinearAlgebra/TensorProduct/Symmetric.lean:85` | Length-one tensor equivalence, split at k≤n, flip-fixed tensor square. |
| `TauCeti/RingTheory/Polynomial/Resultant/Discriminant.lean:123`, `:226`, `:421`, `:740` | Resultant sign, discriminant products and power-basis comparison; repeated-root discriminant is zero. |
| `Mathlib/LinearAlgebra/Dual/Defs.lean:225`; `Mathlib/LinearAlgebra/Dual/Lemmas.lean:255` | Evaluation and finite-free reflexivity; the adapter must still transport realization lattices. |
| `TauCeti/AlgebraicTopology/Singular/JordanBrouwer.lean:198`, `:212`; `TauCeti/AlgebraicTopology/Singular/CubeComplement.lean:286`; `TauCeti/AlgebraicTopology/Singular/Reduced.lean:216` | Embedded-sphere complement has two components, ball complement is acyclic under the stated ambient assumptions, and reduced H₀ counts components after choosing a basepoint. These do not already state arbitrary-dimensional invariance of domain. |

**Seeded sample and citations.** The 15 selections are eight occurrences of AbelianSchemesAndArithmeticModuli, two each of FiniteFlatGroupsAndIntegralPadicHodgeTheory and DeligneWeightsAndPurity, and one each of SchemeAndStackFoundations, ComplexComparisonPartII and JacobianChallengePartII. All citations to these six suppliers were checked, not just one occurrence per supplier. Roadmap sections have repository lines rather than printed page numbers.

| Supplier locator | Interface and hypotheses resolved |
|---|---|
| `TauCetiRoadmap/SchemeAndStackFoundations/README.md:2745`, `:2951`, `:3437`, `:5066`, `:5383`, `:5448`, `:5725` | §§1.18/1.21 stackification/quotients; §2.6 coherent direct images; §4.1 thickenings; §§4.8–4.9 completion/formal functions with Noetherian, coherent and proper hypotheses; §4.15 curve stack and finite unramified Isom schemes. |
| `TauCetiRoadmap/AbelianSchemesAndArithmeticModuli/README.md:1683`, `:1851`, `:1899`, `:2510`, `:2557`, `:2610` | A3.9 Rosati; A4.2–A4.3 universal extension and de Rham duality; A5.1–A5.3 period lattices, positive Riemann form and algebraization. A♮=E(A∨), homological H dual to H¹_dR, and E(Jv,v)>0 are retained. |
| Same supplier, `:2841`, `:2905`, `:2937`, `:2957`, `:2998`, `:3026`, `:3063`, `:3253`, `:3343` | A6.2/5/7/8/10/11/14/18/21 supply Hom injectivity, reducibility, finite free Hom, semisimple End⁰, integer characteristic polynomial, realizations, Rosati positivity, polarized automorphisms and Frobenius semisimplicity. |
| Same supplier, `:3729`, `:3741` | A6.32–A6.33: finite étale/separable Weil restriction, multiplied dimension and induced Tate module. |
| `TauCetiRoadmap/ComplexComparisonPartII/README.md:1259`, `:2335`, `:2563` | C0/C1.1/C5: analytic bundles, bundle-valued local Dolbeault, ordinary/relative de Rham–Betti comparisons. |
| `TauCetiRoadmap/FiniteFlatGroupsAndIntegralPadicHodgeTheory/README.md:669`, `:3389`, `:3664` | R07.1.2 étale groups/actions; R07.2.10 contravariant Witt-linear Dieudonné theory, FV=p; R07.2.19 polynomial descent by Frobenius conjugation. |
| `TauCetiRoadmap/JacobianChallengePartII/README.md:370`, `:830`, `:1084` | §§2.6/5.3/7.2: difference [y]−[x], target coordinate i from source i+1, and supplied curve families with full level and arbitrary base change. |
| `TauCetiRoadmap/DeligneWeightsAndPurity/README.md:560`, `:959`, `:969` | DWP.0 0.1–0.3 and DWP.1 1.4–1.5: purity, arithmetic Frobenius on Tate modules, inverse geometric Frobenius, det(1−πʳ) for r≥1. |

Additional supplier sections resolved: DerivedModuleAlgebra §0.DP.2 (README:105, free comparison :227); ArithmeticStatisticsPartI §0.16 and supporting constructions (:2541–2550); HeightsRationalPointsAndObstructions §§1.9–1.10 and 5.8–5.8a (:632, :717, :2391); InverseGaloisAndArithmeticFundamentalGroups IG.3 (:2584); ShimuraVarieties §§3.5a–d, 5.2, 5.5–5.8 (:800, :820, :844, :854, :1362, :1430–1487); PELModuli M3.5–M3.6, M5 and M6.11 (:2965, :3055, :3493, :4065); GeometryOfNumbersAndQuadraticArithmetic §§2.5/2.7/3.3 (:631, :706, :1040); AlgebraicModuliForArithmeticGeometry §5.2 (:8804); LieGroupoidsPoisson G0.1 (:299); SmoothBundlesConnections B6.0 (:1306); GlobalNumberFields Layer 1 (:259); AlgebraicVectorBundles L0B/L2B (:228, :340); DifferentialGeometry Layers 0–1/12.1 (:915); AdelicAlgebraicGroups AA.1/AA.3/AA.4; ReductiveGroupsPartII RG2.3.7 (:5201); ClassFieldTheory Layers 5/10/13; RepresentationTheory/SemisimpleAlgebras Layers 4–5; Chebotarev Layer 14; ImaginaryQuadraticClassNumber H3.6 (:142); the completed EffectiveBounds, HodgeStructures and ConformalMapping interfaces; ComplexManifolds Milestone 1 (:172); and PlanarTopology Layer 2 (:344). The Hermitian supplier is conjugate-linear in the first variable; the analytic Riemann-form convention is separately identified, not silently substituted.

The resolver's twelve missing-name leads are planned declarations in those supplier sections, not assertions that the declarations exist at the library pins. No new missing supplier declaration was established. R01 concerns the separate declared-gap contracts. Main was used for existing roadmaps; available heads were used for new roadmaps. Open revisions of existing roadmaps were not made suppliers.

**Ownership audit by object.** Searched the pinned libraries, main, board packages and open-head roadmap index for completed Poincaré coefficients, shuffle/divided-power comparisons, Betti rank, fixed parts, semirational counting, local lattice bounds, unitary masses, Honda–Tate, resultant recognition and the three headline names. `TauCetiRoadmap/AutomorphicPadicLFunctionsPartII/README.md:13` and `:64` consume P0–P4; its additional equivariant limits do not own these coefficients. `TauCetiRoadmap/AbelianVarietiesOverFiniteFields/README.md:563` consumes F3.2; `TauCetiRoadmap/AbelianSurfacesModularity/README.md:63` consumes the ordinary specialization. Their downstream applications are not suppliers to this roadmap. The general trace, uniform torsion and marked-lattice owners are now cited. The native tensor-square, finite-free comparison and general integral Tate inputs are also imported. No collision of the six fully qualified Lean names was found. The remaining ownership inconsistency is R01.

**Computed adversarial pass.** The 145-row table below covers all 128 numbered targets, their construction routes and the sampled interfaces. Each row records actual values or explicitly computed objects, including negative controls. “Retain” means the tested instance does not refute the statement; it does not mean that finite examples prove the theorem. The source and dependency checks above address the proof inputs. Connectedness, properness, nonzero dimension and characteristic assumptions are kept where required; excluded objects are used as negative controls, not silently brought into scope.

| Statement | Instances and computed values on the two sides | Result / change |
|---|---|---|
| P0.1 invariant tensors | n=0 gives R; n=1 gives M. For M=R²,n=2, fixed coefficients satisfy a₁₂=a₂₁, giving 3 basis elements; e₁⊗e₂ alone is not fixed. For M=0,n>0 the module is 0. | Retain; no division by n!. |
| P0.2 completion | M=R: each degree has rank 1; the sequence (1,1,…) belongs to the product but not the direct sum. Modulo degrees ≥3 both give (1,1,1). | Retain degree completion. |
| P0.3 shuffle product | h^[1]·h^[1]=2h^[2]; h^[1]·h^[2]=3h^[3]. In F₂ the first is 0 while h^[2]≠0; in F₃ the second is 0. | Retain integral shuffle coefficients. |
| P0.4 degree two | Flip on R²⊗R² exchanges the two mixed basis vectors; both invariant definitions give their sum and the two diagonal tensors, rank 3. | Retain comparison with native square. |
| P0.5 arbitrary-module divided-power map | γ₂(h) maps to h⊗h; γ₁(h)² and its image are respectively 2γ₂(h) and 2h⊗h. Over F₂ both products are 0, but the degree-two generators remain nonzero for free rank one. | Retain multiplicativity; do not infer invertibility for arbitrary M. |
| P0.6 multigrading | (R⊕R) in degree 2 has pieces (2,0),(1,1),(0,2), ranks 1+1+1=3. At degree 0 only (0,0) survives, rank 1. | Retain. |
| P0.7 construction route | Symmetrization of x² and xy gives 2x⊗x and x⊗y+y⊗x; diagonal coefficient 2 versus mixed coefficient 1. | Retain orbit multiplicities. |
| P1.1 dual/connection notation | Elliptic A: rank ω_A∨=1, rank H=2; Lie(A♮) and Hom(H,k) both have dimension 2. A=0 gives 0 in both positive-rank terms. | Retain E(A∨) and duality direction. |
| P2.1 moments | For additive formal coordinate t, degree-n moment of tⁿ is n!h^[n]: coefficients 1,1,2,6 at n=0,1,2,3. Mod 2, coefficient 2 vanishes. | Retain rational isomorphism only. |
| P2.2 finite coefficients | Elliptic level 2: ordinary rank 1+1+1=3, connection rank 1+2+3=6; last kernels ranks 1 and 3. Level 0 gives rank 1 in each. | Retain distinct carriers. |
| P2.3 transform/completion | Elliptic d=1: twisted completed cohomology is k in degree 1 and 0 in degree 0. For d=0 it is k in degree 0. | Retain shift [−d], proper/Noetherian inputs. |
| P2.4 isogeny maps | Identity induces 1; [n] on the linear coefficient induces n. In characteristic p, Frobenius on a formal parameter has linear coefficient 0, not an invertible map. | Retain dual-étale condition. |
| P2.5 torsion splittings | At the unit, [2] gives (1/2)·2=1 and [4] gives (1/4)·4=1 after normalization; raw maps give 2 and 4. Frobenius cotangent 0 cannot invert to 1. | R02: add these checks and API. |
| P2.6 equivariance | For automorphisms γ,δ, pullback composition reverses the corresponding map order; inverse maps yield the action cocycle. For γ=−1 on degree one, inverse coefficient is −1 and its square is 1. | Retain inverse in equivariance map. |
| P2.7 comultiplication | Δ(t²)=t²⊗1+2t⊗t+1⊗t². The (1,1) component is 2, hence 0 in F₂ rather than an isomorphism. | Retain n! invertibility. |
| P2.8 cohomology | d=1: (H⁰,H¹)=(0,k); d=0: H⁰=k. Replacing the ordinary coefficient by the connection coefficient is not licensed by this computation. | Retain ordinary formulation. |
| P2.9 route | For conormal rank 1, degree-two symmetrization has coefficient 2; rank 2 mixed monomial has coefficient 1. Determinant line and its inverse tensor to O, leaving the shift −d. | Retain derived-limit comparison. |
| P3.1 square-zero class | Elliptic H=k² and M=k: Hom(H,M)=k². M=H sends id to the 2×2 identity, whereas the split extension maps to the zero matrix. | Retain identity-class normalization. |
| P3.2 smooth connection | In ν=h dt, level 0 gives ∇1=0; level 1 gives ∇1=h dt; level 2 gives ∇h=2h^[2]dt. Opposite sign gives −h dt. | R02. |
| P3.3 logarithm comparison | H=0 gives O with unique unit splitting; H=k² gives extension image I₂, split connection gives 0₂. | Retain characteristic-zero and splitting. |
| P3.4 tensor/Dolbeault model | Elliptic level 1 has ranks 3 for connection and 2 for ordinary truncation; level 2 has 6 and 3. In a holomorphic frame, ∂̄²=0; a holomorphic constant has ∂̄=0. | Retain bundle-valued comparison. |
| P3.5 route/sign | Two commuting coefficient shifts give ν∧ν=(S₁S₂−S₂S₁)dz₁∧dz₂=0. The first extension still has I₂, excluding the flat split class 0₂. | Retain both flatness and class check. |
| P4.1 ordinary completion | In characteristic-zero dual numbers, (1+ε)^(pⁿ)=1+pⁿε≠1; modulo pʳ, n≥r kills the linear term. | Retain reduction before the limit. |
| P4.2 trivialization/moments | Multiplicative formal logarithm starts T−T²/2. At p=2 its quadratic denominator is nonintegral; over C_p it is defined. Degree-two integral moment has coefficient 2, injective in O_Cp but not a unit at p=2. | Retain integral injection/generic isomorphism distinction. |
| P4.3 translation | In additive formal coordinates translation by u sends t to t+u; translation by 0 is identity and successive translations give t+u+v. | Retain translation diagram and torsion hypotheses. |
| P4.4 route | Mod pʳ, pⁿε=0 for n≥r; before reduction pⁿε≠0. Projecting the connection to the ordinary factor leaves d(t)=dt. | Retain completed-base-change order. |
| B0.1 periods | For lattice (2,i), w=2a+ib gives a=Re(w)/2,b=Im(w). At w=2, coordinates (1,0) become 0 in the torus; at w=i they are (0,1), also 0. | Retain real coordinates and integral transition matrices. |
| B0.2 birational rank | A birational change is an isomorphism on a dense open, so a rank-2 Jacobian there remains rank 2; exceptional points can have rank 0. | Retain generic, not everywhere, assertion. |
| B0.3 route | Lattice translation (a,b)↦(a+1,b) changes the lift by (1,0) and the torus point by 0; derivative is I₂. | Retain descent. |
| B1.1 Betti form | Polarization type (1,2) gives periods 2 and 4 for the normalization 2Σd_i da_i∧db_i; [n]* scales it by n², values 0,1,4 at n=0,1,2. | Retain normalization. |
| B1.2 kernel/rank | On constant E×S, fibre directions have Betti rank 2 and horizontal base directions rank 0; the pulled-back symplectic form has the same kernel. | Retain semipositive restriction hypotheses. |
| B1.3 nondegeneracy | A fibre E has complex dimension 1 and rank 2; a constant section over a curve has dimension 1 and rank 0; a point has dimension 0 and rank 0. | Retain dimension-zero convention. |
| B1.4 rank/form criterion | On a fibre with form 2da∧db, top power is nonzero and rank=2. On a constant section, form=0 and rank=0<2. | Retain both directions. |
| B1.5 top power | For type (1,2), (2da₁∧db₁+4da₂∧db₂)²=16 da₁∧db₁∧da₂∧db₂. On rank-2 tangent data in complex dimension 2 the square is 0. | Retain. |
| B1.6 route | Pullback by [−1] gives coefficient (−1)²=1, by [2] coefficient 4; rank is unchanged for nonzero scalar multiplication. | Retain scaling and rank compatibility. |
| B2.1 curve degeneracy | Zero section: total complex dimension 1, Betti rank 0, positive-dimensional constant-Betti fibre. A point: dimension 0, fibre dimension 0. | Retain positive-dimensional fibre condition. |
| B2.3 bounded-degree torsion | Constant E/ℂ(t): trace E, quotient 0, infinitely many torsion points of degree 1. Twist ty²=x³−x becomes constant over degree 2, giving infinitely many torsion points of degree ≤2 despite zero original-field trace. | Retain zero geometric trace; R01 ownership. |
| B2.4 fixed part | Constant elliptic family: invariant lattice rank 2, constant part dimension 1. Monodromy −I has invariant rank 0, changing to rank 2 on its double cover. | Retain finite-cover comparison; R01. |
| B2.5 integer characters | In R/Z: annihilators of the whole circle, {0}, and {0,1/2} are 0, Z, and 2Z. Double annihilators recover each closed subgroup. | Retain disconnected subgroup case. |
| B2.6 semirational counting | Arc (0,t) has rational first coordinate of height 1 for every t; the varying real second coordinate cannot be counted as a finite set of rational points. | Retain block alternative; R01. |
| B2.7 word growth | Two free positive generators give 2ᵏ distinct words of length k, while entry heights grow at most Cᵏ. Thus word count is H^(log 2/log C), not logarithmic in H. | Retain bounded-height growth input. |
| B2.8 Tits input | U=[[1,2],[0,1]], V=[[1,0],[2,1]] give UV=[[5,2],[2,1]], VU=[[1,2],[2,5]]. GL₁ is abelian and cannot contain this free pair. | Characteristic/virtual-solvability hypotheses retained; source uncertified. |
| B2.9 invariance of domain | x↦x³ maps (−1,1) onto (−1,1); x↦x² maps it to [0,1), not open, and is not injective. In dimension 0, empty and singleton images are open. | Retain equal dimensions and injectivity. |
| B2.10 constant rank | (x,y)↦x has rank 1 and fibres dimension 1=2−1. x↦x² has rank 0 at 0 and 1 elsewhere, so no constant-rank neighborhood at 0. | Retain local constant rank and regularity. |
| B2.11 good covers | Nonempty convex intersections contract to a point and have π₁=0. An annulus has π₁=Z, so arbitrary coordinate opens do not suffice. Empty intersections require no centre. | Retain good-cover construction. |
| B2.12 fixed Hom | Trivial monodromy on Z² yields Hom(Z²,Z²)=M₂(Z), rank 4 before the Hodge condition. −I invariants on Z² are 0; integral Hodge Hom remains a stricter condition than rational linear Hom. | Retain integral/Hodge conditions. |
| B2.13 generic specialness | A constant genus-2 curve in its constant Jacobian is a trace image despite not being a torsion coset; zero-trace case leaves torsion translates only. | Retain GH definition. |
| B2.14 Ax-type sets | The parabola (t,t²) has second derivative (0,2), so is not an affine line; a translated line has second derivative 0. Semialgebraic arcs alone do not force a coset without the Ax-type hypothesis. | Retain algebraic-origin hypothesis. |
| B2.15 abelian Ax adapter | A translated elliptic subtorus lifts locally to an affine complex line, real dimension 2. A point lifts to dimension 0. An arbitrary real arc need not produce either algebraic coset. | Retain independent Ax input; R01. |
| B2.16 transport | Parallel transport in a Betti chart preserves coordinate b; an N-torsion coordinate satisfies Nb=0 before and after transport. For b=1/2,N=2 the value is 0. | Retain transport domain. |
| B2.17 free monodromy | The hyperbolic matrix [[2,1],[1,1]] has eigenvalues (3±√5)/2 but cyclic Zariski closure a torus; hyperbolicity alone supplies no free subgroup. | Retain semisimple nontrivial algebraic-monodromy argument. |
| B2.18 invariant fibre subvarieties | Whole elliptic fibre has dimension 1; its invariant zero point has dimension 0; the orbit of a point of order 2 has at most 4 points. A finite orbit is not a positive-dimensional subtorus. | Retain irreducibility/components in the conclusion. |
| B2.19 homology/trace | Constant elliptic family: fixed homology rank 2 and trace dimension 1, with rank=2·dimension. With zero fixed homology the connected constant part has dimension 0. | Retain finite-cover/trace comparison. |
| B2.20 virtual invariance in kernels | Zero section over a curve lies in the kernel of the identity and has total dimension 1 but fibre dimension 0. | Retain fibrewise statement, not a false total-dimension bound. |
| B2.21 maximal special pieces | Whole constant E has one maximal special piece E; a torsion point has one point piece; the empty set has zero. Uniform closure counts are 1,1,0. | Retain Heights input; R01 redundant gap. |
| B2.22 degeneracy ⇒ specialness | A torsion section has rank 0 and is special; constant trace curves can have positive fibre dimension and remain generically special. | Retain trace part, not torsion-only conclusion. |
| B2.23 full-rank points | Non-special curve has generic real rank 2; a torsion section has rank 0 and is excluded. Rank-2 locus is open, unlike a claim at every point. | Retain generic/open conclusion. |
| B2.24 route | For a rank-2 fixed elliptic lattice, the constant part has dimension 1; after quotienting it the fixed rank is 0. Bounded-degree torsion of a constant factor would still be infinite. | Retain geometric trace quotient before torsion bound. |
| B3.1 mixed Kuga carriers | V=0 recovers the pure datum. For a fibre E, quotient by translations through E is a point; quotient by {±1} is P¹, not an abelian quotient. | Retain connected normal subgroup condition; R01. |
| B3.2 pure growth | Hyperbolic ball parameter T has area π(T+T⁻¹−2), zero at T=1. For integer translations the distance inequality is N²<T+T⁻¹−2; modular fundamental area π/3. | Retain normalizations and strict domain. |
| B3.3 Ax–Schanuel growth | For full elliptic uniformization graph: ambient algebraic product dimension 2, graph dimension 1, difference 1 equals the bi-algebraic image dimension 1. | Retain mixed graph, not pure-only count. |
| B3.4 stabilizer bigness | For a full elliptic fibre the translation stabilizer has dimension 1; for a point the connected translation stabilizer has dimension 0. | Retain actual stabilizer of the relevant analytic/algebraic locus. |
| B3.5 normal quotient induction | Quotient of an elliptic fibre by itself lowers dimension 1→0; quotient by 0 leaves 1. A nonnormal finite action can yield genus 0 instead. | Retain normal quotient and dimension decrease. |
| B3.6 weakly optimal data | A weakly special Y has defect 0. A proper weakly special subvariety also has defect 0, so equality of defects does not meet a strict optimality comparison. | Retain strictness. |
| B3.7 t-degeneracy | A point admits no positive-dimensional subvariety and its degeneracy union is empty; a torsion section over a positive-dimensional base can be entirely degenerate. | Retain positive-dimensional witnesses. |
| B3.8 closed degeneracy locus | Empty and whole-locus examples are Zariski closed. A single branch critical point can have derivative rank 0 without containing a positive-dimensional degeneracy witness. | Retain distinction from pointwise rank-drop locus. |
| B3.9 quotient criterion | For X=E over a point, generic rank 2: rank<2l is false at l=1 and true at l=2. Identity quotient has image dimension 1, so 1<l gives the same two truth values. | Retain strict inequality and all quotient data. |
| B3.10 route | Blow up a base point: exceptional P¹ can have constant modular image of dimension 0 despite base dimension 1. | Retain modular-image, not base-dimension, criterion. |
| B4.1 full-level curves | Hyperelliptic involution acts by −I on homology: mod 2 it is I, mod 3 it is not. Identity Torelli comparison has sign +1 and translation 0. | Retain level ≥3; R01 ownership. |
| B4.2 dominant product | Product of two elliptic fibre directions has rank 2+2=4 and dimension 2; a diagonal has rank 2 and dimension 1. | Retain dominance/dimension hypotheses. |
| B4.3 fibre-power induction | Constant B×S with dim B=dim S=1, m=2: rank 4=2m dim B, modular-image dimension 2, total dimension 3. A claim of rank 6 would fail. | Retain generically finite modular-image condition for total-dimension corollary. |
| B4.4 universal curve differences | g=2,M=4 over a fixed curve: C⁵ has dimension 5; generic difference image has dimension 5 and Betti rank 10 in J⁴ of dimension 8. | Retain M≥3g−2 and quasi-finite moduli hypothesis. |
| B4.5 fibre-power criterion | For constant full elliptic family and m=2, rank 4 equals twice image dimension 2, not twice total dimension 3. | Retain image dimension. |
| B4.6 differences | B³→B², (x₀,x₁,x₂)↦(x₁−x₀,x₂−x₀), has kernel diagonal B, image dimension 2 and rank 4 for elliptic B. For genus-2 C, C−C=J has dimension 2. | Retain sign and dimensions. |
| B4.7 route | Differences eliminate a common translation: (x₁+t)−(x₀+t)=x₁−x₀. Reversing the convention multiplies each coordinate by −1. | Retain supplier [y]−[x] convention. |
| F0.1 compact lattice limits | Maps ℓⁿ·id on Z_ℓ converge to 0; intersection of images ℓⁿZ_ℓ is 0. Constant identity sequence has image/intersection Z_ℓ. | Retain compactness and specified limit. |
| F0.2 Frobenius polynomial | For E/F₅ with P=X²+2X+5, product E² has P²=X⁴+4X³+14X²+20X+25; reciprocity pairs 4 with 20=5·4. | Retain product and reciprocal normalization. |
| F0.3 Weil numbers | π=1+i has conjugate norms √2 and is integral; 1 has norm 1≠√2. q=1 is excluded. | Retain integrality beyond pure-weight condition. |
| F0.4 isotropic image | Standard alternating plane: span(e₁) has dimension 1 and restricted pairing 0; whole plane has pairing(e₁,e₂)=1. | Retain isotropic condition and Tate finiteness hypothesis. |
| F0.5 point counts | q=2,t=1 gives #E(F₂)=2; trace of π² is 1−4=−3, giving #E(F₄)=5−(−3)=8. | Retain det(1−πʳ), r≥1. |
| F0.8 construction route | g=1: integer polynomial has degree 2, constant q, and reciprocal root pair α,q/α. g=0: polynomial 1, degree 0, point count 1. | Retain imported integer/semisimple inputs. |
| F2.1 shifted factors | P=X²(X−1), test X+πⁿ: resultant is π^(2n) times a unit, valuation 2n; multiplicity 2 is the slope. | Retain nonzero tests for sufficiently large n. |
| F2.2 resultant recognition | P=X,Q=X², test X+πⁿ yields valuations n and 2n. P=X,Q=X+π, test X+π² gives 2 and 1. P=Q gives identical values. | Retain both separating tests and dense image. |
| F2.2 density negative control | D=F₂⊂F₂[[t]], P=X+t,Q=X+t+t²: for every nonzero constant-coefficient test, both valuations equal its zero-root multiplicity; nevertheless P≠Q. | Density hypothesis excludes the example. |
| F2.3 integer tests | Z→Z₂ and Z→Z₃ surject modulo pᴺ; at N=0 the ideal is the unit ideal. P=1 gives all resultants 1 and valuation 0. | Retain arbitrary DVR statement separately from specialization. |
| F2.4 route | Over Z, P=2X+1,Q=2X+2 have size-(1,1) resultant 2. Mod 2 the fixed-size resultant is 0, but the default size-(0,0) resultant of 1 and 0 is 1. | Retain fixed Sylvester sizes and nonzero resultants. |
| F1.1 degree/length | [p] on dimension g has degree p^(2g); Dieudonné cokernel length is 2g. At g=0 both valuation and length are 0. | Retain all p, including 2. |
| F1.3 characteristic polynomial | On E², the unipotent map [[1,1],[0,1]] has polynomial (X−1)⁴ but is not semisimple. Frobenius semisimplicity is a separate imported assertion. | Retain polynomial comparison for arbitrary endomorphisms. |
| F1.4 block algebra | Degree a=1 gives the centre itself. At a=2 a splitting representation U=[[0,θ],[1,0]] satisfies U²=θI; algebra dimension is 4. | Retain cyclic relation, not U²=I. |
| F1.5 Frobenius adapter | F=σ,V=pσ⁻¹ gives FV=p and Fᵃ=1 over the degree-a unramified coefficient field. | Retain semilinearity and q-Frobenius power. |
| F1.6 central simplicity | The split degree-2 cyclic algebra is M₂(K): centre dimension 1, algebra dimension 4. Degree 1 gives K and invariant 0. | Retain central simplicity; not necessarily division. |
| F1.11 local invariant | a=2, local degree 1, ord(π)=1 gives invariant 1/2 modulo Z; a=1 with integral valuation gives 0. | Retain normalized slope and local degree. |
| F1.12 route | Contravariance sends uv to C(v)C(u); noncommuting 2×2 elementary matrices have distinct products. Polynomial determinant is unchanged by transpose. | Retain reversed composition without changing charpoly. |
| F3.1a prescribed slopes | Gaussian split prime gives slopes 0 and 1. Real π=√2 has slope 1/2; adjoining i gives local degree 4 and two selected embeddings, ratio 2/4. | Retain real and ramified cases. |
| F3.1b CM algebraization | For Q(i), ξ=i gives E(i,1)=2, E(1,i)=−2 and determinant 4. Replacing ξ by 2i gives determinant 16, so positivity alone does not fix a principal polarization. | Retain specified lattice/form and signs. |
| F3.1c power effectivity | π=2,q=4 and π₀=2√−2,q₀=8 give π³/π₀²=−1; squaring kills it: π⁶=π₀⁴=64, q⁶=q₀⁴=4096. | Retain integrality at every finite place before Kronecker. |
| F3.1d descent | Restriction from degree-2 field sends P_B(T)=(T−2)² to P_B(T²)=(T²−2)²; dimension doubles 1→2. | Retain induced module and separable extension. |
| F3.2 Honda–Tate | π=1+i: centre degree 2,index 1, dimension 1. π=√2: centre degree 2,index 2, dimension 2; T²−2 alone cannot be an elliptic Frobenius polynomial. | Retain division-algebra index. |
| F3.4 prime-field nonreal case | Nonreal ordinary elliptic π has slopes 0,1, hence invariants 0 modulo Z and commutative End⁰. Real √p gives a nonzero invariant and is excluded. | Retain nonreal hypothesis. |
| F3.5 linear-dual p-realization | For rank-one block (F,V)=(1,p), integral linear dual retains (1,p); Cartier dual has (p,1). Characteristic polynomial of F remains X−1. | Retain linear dual, not Cartier dual. |
| F3.7 lattice realization adapter | Marking p⁻¹id gives supplied contravariant lattice pC, whose integral dual is p⁻¹D. Identity gives C and D. | Retain inverse and dual directions. |
| F3.8 order realization | At p=5, π=√5ζ₅ in Q(ζ₅) has local valuation 2, whereas a maximal-order uniformizer has valuation 1; containing π need not mean maximal order. | Retain admissible-order hypothesis and characteristic-prime condition. |
| F3.10 marked/unmarked quotient | Marking p and then p⁻¹ returns the identity lattice. For arbitrary u, covariant action is dual of C(u), while the contravariant marked action is C(u⁻¹). | Retain both actions and orbit comparison. |
| F3.11 route | g=0 yields one marked tuple and one unmarked class; repeated Frobenius factors remain nonzero-dimensional blocks for g>0. | Retain native carriers and all-prime finite support. |
| F4.1 adelic class set | G=G_m over Q at maximal compact gives the ideal class set of Z, cardinal 1. Trivial group also gives one double coset. | Retain rational-left/compact-right convention. |
| F4.2 p-component | Ordinary rank-two block F=diag(1,p), V=diag(p,1) has FV=pI. F-stability alone does not replace the displayed V-stability condition. | Retain both integral operators. |
| F4.3 ordered unequal roots | P=(X²+p)² has ordinary discriminant 0, but eight ordered unequal-root differences give D_*=(4p)⁴. Scalar-root polynomial gives empty product 1. | Retain D_* distinct from discriminant. |
| F4.4 local bounds | diag(0,ℓ) has Δ=2 and two lattice-orbit types; bound ℓ⁸≥2. A glued lattice has compact stabilizer index ℓ−1≤ℓ⁸. At ℓ=2 bound 256, versus stale 16/4. | Mathematics retained; R01 contract mismatch. |
| F4.5 stabilizers/finite support | One bad prime with v_ℓ(D_*)=2 gives ℓ⁸; all other primes contribute 1. No bad primes gives product 1. | Retain almost-everywhere standard lattices. |
| F4.6 reduced norms | Q(i) has class number 1. Q(√3) has ordinary class number 1 but narrow class number 2, so discarding positivity changes the class-set bound. | Retain archimedean norm condition. |
| F4.7 double coset map | In S₃ with Γ=K=⟨(12)⟩ and a=(123), Γ\G/K and Γ\G/a⁻¹Ka have class sizes 2,4. Right multiplication by a respects both classes; conjugation fails. | Retain repaired right-multiplication bijection. |
| F4.8 coarse count | For two unequal roots, D_*≤(2√p)²; raising to exponent 8 gives (2√p)¹⁶. Scalar case contributes D_*=1. | Retain stated coarse exponent, not a sharp claim. |
| F4.9 route | Empty prime support gives stabilizer product 1, not 0. Repeated roots give disc(P)=0 but D_*>0 as in F4.3. | Retain finite-support and unequal-root arguments. |
| F5.1 Lang | On an abelian variety d(F−id)=−I, including p=2 where −1=1≠0. On a constant Z/2 group F−id=0 and is not onto. | Retain smooth connected group hypothesis. |
| F5.2 norm-unit quotient | Q(i)/Q: norms of units are {1}; units of Q that are norms are also {1}. Quotient cardinal 1. Norm(±i)=1. | Retain units-that-are-norms distinction. |
| F5.3 density | The nine quadratic square classes are independent: prime valuations and the negative sign force all nine exponents to vanish. There are 512 sign patterns; one has no split field, giving density 511/512. | Retain finite ramified exclusions. |
| F5.4 CM elliptic existence | π=2+i has norm 5, trace 4 and point count 5+1−4=2; full ring is Z[i]. Inert primes do not supply this ordinary split construction. | Retain splitting assumption for this target. |
| F5.5 point groups | q=2,t=±1 gives 2 or 4 points, both 2-powers; over F₄ the same curves have 8 points. This refutes an unrestricted odd-prime conclusion. | Retain odd characteristic and separate p=2 treatment. |
| F5.6 line bundles | On E, O(0) has degree 1 and positive polarization; O(−0) has degree −1 and the opposite homomorphism. A symmetric map need not be ample. | Retain positivity and finite-field descent. |
| F5.7 unitary mass | Gaussian rank 1: one class, automorphism order 4, mass 1/4. Rank 0 gives one class and mass 1. Factorial products at ranks 1,2,3 are 1,1,2; asymptotic log product has coefficient 1/2. | Retain corrected 1/2 and all local factors; R01 ownership. |
| F5.8 polarizations on CM powers | For E with End=Z[i], rank-one positive unimodular Hermitian form is [1], one polarization orbit; [2] has determinant 2 and is not principal. | Retain unimodular/positive conditions. |
| F5.9 squarefree bound | E has simple-factor multiplicity 1; E² has multiplicity 2 and is excluded. Dimension zero is an empty factor list, empty product 1. | Retain squarefree nonreal scope. |
| F5.10 route | Hermitian form H(i,i)=conj(i)i=1; replacing conjugate transpose by transpose gives −1. Weighted class count 1/4 differs from unweighted 1 already at rank 1. | Retain involution and mass-to-class comparison. |
| F6.0 dimension carrier | Zero abelian variety has dimension 0; E and E² have dimensions 1 and 2. The field carrier excludes zero rings. | Retain native finite-dimension subtype. |
| F6.0 isogeny quotient | [p] has degree p^(2g), including inseparable cases. Isomorphic curves are isogenous; polarizations do not change the underlying class. | Retain finite-surjective predicate and quotient closure. |
| F6.0 isomorphism quotient | Over F₅, y²=x³+x and y²=x³−x have 4 and 8 points, so cannot be F₅-isomorphic. Changing only a polarization does not create a new unpolarized class. | Retain native isomorphisms. |
| F6.3 upper count | log((4g+1)^g q^(g(g+1)/4))/g² = log(q)/4 + log(4g+1)/g + log(q)/(4g). The final two terms tend to 0. | Retain fixed q and g→∞. |
| F6.4 coarse isomorphism bound | Lee's bound gives log B(p,g)/g² ≤34log2+(69/4)(1+o(1))log p. For fixed p this is bounded. At g=0, count=1 and log=0. | Retain O_p(g²); no unsupported sharp exponent. |
| F6.5 finite-n lower bound | q=2 gives r(q)=1/2; factor r(q)q^(n/2)−n is √2/2−1<0 at n=1, 0 at n=8, and 6 at n=10. | Retain genuine lower bound even when vacuous at small n. |
| F6.5 asymptotic headline | Logarithm of the factorial/polynomial corrections is O(g log g), divided by g² tends to 0; upper and lower leading coefficients both log(q)/4. At g=0 Lean's 0/0=0 does not affect atTop. | Retain finiteness conjunct and full finite-field scope. |
| F6.6 excluded ppav proportion | Numerator log=O(g²), denominator log≥(1/2)g²log g+O(g²); log ratio tends to −∞ and ratio to 0. | Retain stated prime-density hypothesis. |
| F6.7 route | Combining bounds preserves the leading coefficient 1/4 for isogenies and 1/2 for the Hermitian denominator; g=0 contributes log1=0. | Retain independent class-finiteness inputs. |
| Seed: SchemeAndStackFoundations | Proper elliptic family with coherent coefficients: formal-functions comparison retains the completed module; square-zero tangent thickening has ε²=0 and one extra tangent direction, unlike the reduced point. | No omission of proper/coherent/Noetherian conditions established. |
| Seed: parent universal extension | Elliptic universal connection: Lie dimension 2 and vector kernel dimension 1; replacing A♮ by A gives dimension 1, the wrong object. | Resolved A4.2–A4.3. |
| Seed: parent Rosati/Riemann conventions | λ principal and [n]: Rosati([n])=[n]. In Q(i), conjugation sends i→−i and i·i†=1; E(i,1)=2 while E(1,i)=−2. | Resolved A3.9/A5/A6.14. |
| Seed: parent Hom and polynomial | Hom(0,E)=0; End(E) has positive rank. [n] on elliptic E has charpoly (X−n)² and degree n²; n=0 gives determinant 0. | Resolved A6.2/7/10/11. |
| Seed: parent reducibility/semisimplicity | E² decomposes into two elliptic factors; scalar Frobenius −3 has semisimple action and commutant M₂, dimension 4 despite repeated roots. | Resolved A6.5/8/21. |
| Seed: parent level and restriction | −I is identity mod 2 but not mod 3. Degree-2 separable restriction multiplies dimension 1→2; nonreduced restriction is not covered. | Resolved A6.18/32/33. |
| Seed: ComplexComparisonPartII | On a trivial rank-2 holomorphic bundle, ∂̄ acts componentwise, kernel is two holomorphic functions and ∂̄²=0. | Bundle-valued C1.1, not scalar-only. |
| Seed: FiniteFlat, étale and p-realization | In characteristic p, μ_p has rank p but only one geometric point; the constant Z/p has p points. Contravariant F,V satisfy FV=p; Cartier dual swaps them. | R07.1.2 not applied to nonétale μ_p; R07.2.10 retained. |
| Seed: FiniteFlat, commutant | For scalar −3 over F₉ and L=Q₃(i), F=[[0,−3],[1,0]]σ has L-linear commuting matrices [[a,−3σ(b)],[b,σ(a)]], a,b∈L: Q₃-dimension 4, not 8. | Retain Witt-linearity and polynomial descent. |
| Seed: Jacobian | (x,y)↦[y]−[x] gives 0 at x=y; exchanging x,y negates it. Three points give ([x₁]−[x₀],[x₂]−[x₀]), two target coordinates. | Resolved §2.6/§5.3/§7.2. |
| Seed: DWP purity and Frobenius | π=(1+√−7)/2 has norm √2 and trace 1; π⁻¹ has norm 1/√2. The determinants of 1−π and 1−π⁻¹ are 2 and 1 respectively. | Resolved both sampled DWP occurrences. |
| R01 contracts | Eight declared assignments versus zero README gap paragraphs; lattice instance (ℓ,Δ)=(2,2) gives (16,4) versus (256,256). | Ownership/contract mismatch, not a false numerical bound proved by this test. |
| R02 map checks | Normalized degree-one torsion map 1 versus raw 2/4; d+ν sends 1 to +h dt versus −h dt, and h to 2h^[2]dt versus h^[2]dt. | Add discriminating README checks. |

**Source text checks.** The seeded roadmap locators above were resolved in their permitted copies. Additional primary-text checks included KS Corollary 2.9/Definition 2.10, Theorem 2.15, Theorem 2.36, Theorem 3.5 and Proposition 5.9 (KS lines 731, 741, 795, 1203, 1360, 2766); GH Theorem 3.2 and Proposition 3.1's bounded-cover argument (GH lines 546, 630–650), and Proposition 5.3's monodromy inputs; DGH Theorem 6.2 (DGH line 1285); Hatcher Theorem 2B.3, printed p.172 (Hatcher line 3337); MilneJV Theorem 12.1, p.38 (MilneJV line 1713); TateHonda §3 Lemmas 1–3 and §4 Lemmas 4–6, printed pp.100–105 (TateHonda lines 156, 172, 194, 221, 241, 291); LT's local estimates and mass factorial product (LT line 1067); DPH Theorem 1.3, p.2 (DPH line 79); and Lee Theorem 1.1, p.1 (Lee line 44). Linked-version pagination was used. Hatcher, MilneJV and TateHonda were obtained through the sources service from legal author/open-archive copies. No source text was added to the repository or report.

## Not verifiable

- Tits, *Free subgroups in linear groups*, Theorem 1, printed p.250, and Theorem 3, printed p.251: the manifest records the DOI citation as settled `uncertified`. The legal text is not among the supplied readable sources; it was not requested again. The calculations above test the use's hypotheses, not the contents of that inaccessible text.
- The source certification is a sample plus the proof steps and endpoints identified above, not a claim to have certified every sentence of every cited paper. No other required source request remains pending. In particular, the eight declared supplier gaps were not treated as missing texts or as a reason to wait for implementation.

## Source issues

- **Error** in LT at Lemma 2.1, arXiv v1 p.5 (LT line 165): the source says the full degree-2g family has bound (2g)^g q^(g(g+1)/4); it should be bounded using correct coefficient intervals and both constant signs; affects a stated result. At g=1,q=2 there are six such polynomials, exceeding 2√2; even the five positive-constant examples exceed that bound.
- **Misprint** in LT at equations (51) and (56), arXiv v1 pp.30,33 (LT lines 1243,1418): the source says the leading mass/class coefficient is [K:Q], respectively one; it should be [K:Q]/2, respectively one-half, as the factorial product in (39) shows; affects a stated result. The roadmap uses the corrected coefficient.
- **Misprint** in GH at Theorem 3.2, linked version p.13 (GH line 549): the source says the fibre is obtained by intersecting V with {v}×A; it should be obtained by intersecting Y with {v}×A; affects nothing.
- **Misprint** in GH at proof of Proposition 3.1, linked version p.14 (GH line 651): the source says the map evaluated at (v,t) uses the unrelated P; it should use the input t in its second component; affects nothing.
- **Misprint** in DGH at the explanation of Theorem 6.2, linked version p.27 (DGH line 1297): the source says the M-fold abelian family has Betti target dimension 2g; it should have dimension 2Mg; affects nothing. The roadmap uses the product dimension.
- **Misprint** in KS at proof of Lemma 5.11(1), linked version p.61 (KS line 2821): the source cites equation (5.2.1) twice for the two first-level splittings; it should cite (5.2.1) and (5.2.2); affects nothing.
